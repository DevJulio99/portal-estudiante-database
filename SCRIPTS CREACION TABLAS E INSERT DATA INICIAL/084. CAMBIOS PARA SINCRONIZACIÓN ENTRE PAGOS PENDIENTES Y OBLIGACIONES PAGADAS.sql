-- Agregar campo de ESTADO en tabla pagos
ALTER TABLE pagos 
ADD COLUMN estado VARCHAR(20) DEFAULT 'Pendiente' 
CHECK (estado IN ('Pendiente', 'En Revisión', 'Aprobado', 'Rechazado'));

--Agregar campos de auditoría en tabla pagos
ALTER TABLE pagos
ADD COLUMN fecha_subida_comprobante TIMESTAMP,
ADD COLUMN fecha_aprobacion TIMESTAMP,
ADD COLUMN id_usuario_aprobador INTEGER REFERENCES users(id),
ADD COLUMN observaciones TEXT;

--Crear relación entre pagos y obligacion_pagada
ALTER TABLE obligacion_pagada
ADD COLUMN id_pago_origen INTEGER REFERENCES pagos(id_pago);

--Agregar índices para optimizar consultas
CREATE INDEX idx_pagos_estado ON pagos(estado);
CREATE INDEX idx_pagos_id_alumno_estado ON pagos(id_alumno, estado);
CREATE INDEX idx_obligacion_pagada_id_pago ON obligacion_pagada(id_pago_origen);

--limpiar datos inconsistentes en obligacion_pagada
DELETE FROM public.obligacion_pagada
WHERE id_pago_origen IS NULL;

-- =====================================================
-- SCRIPT PARA SINCRONIZACIÓN DE PAGOS
-- Portal del Estudiante - Sincronización Pagos Pendientes y Obligaciones Pagadas
-- =====================================================
-- 
-- Este script asegura que:
-- 1. Cuando un alumno sube una imagen de pago, el estado cambia a 'En Revisión'
-- 2. Cuando el administrador aprueba un pago, se crea automáticamente un registro en obligacion_pagada
-- 3. Los pagos aprobados NO aparecen en la vista de pagos pendientes
-- 4. Los pagos aprobados SÍ aparecen en la vista de obligaciones pagadas
-- 5. Se mantiene la relación entre pagos y obligaciones pagadas mediante id_pago_origen
-- =====================================================

-- 1. ACTUALIZAR función get_pagos_por_alumno para filtrar solo pagos NO aprobados
-- Esta función se usa en el endpoint GET /api/v1/alumno/pagos-pendientes/{id}/{anio}
DROP FUNCTION IF EXISTS public.get_pagos_por_alumno(integer, integer);
CREATE OR REPLACE FUNCTION get_pagos_por_alumno(
    p_id_alumno INT,
    p_anio INT
)
RETURNS TABLE (
    id_pago INT,
    documento_pago VARCHAR,
    f_vencimiento DATE,
    ciclo VARCHAR,
    saldo NUMERIC,
    mora NUMERIC,
    total_a_pagar NUMERIC,
    detalle TEXT,
    imagen VARCHAR,
    anio INT,
    estado VARCHAR,
    fecha_subida_comprobante TIMESTAMP,
    fecha_aprobacion TIMESTAMP,
    id_usuario_aprobador INT,
    observaciones TEXT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_pago::INT AS id_pago,
        p.documento_pago::VARCHAR AS documento_pago,
        p.f_vencimiento::DATE AS f_vencimiento,
        p.ciclo::VARCHAR AS ciclo,
        p.saldo::NUMERIC AS saldo,
        p.mora::NUMERIC AS mora,
        p.total_a_pagar::NUMERIC AS total_a_pagar,
        p.detalle::TEXT AS detalle,
        COALESCE(p.imagen, '')::VARCHAR AS imagen,
        p.anio::INT AS anio,
        COALESCE(p.estado, 'Pendiente')::VARCHAR AS estado,
        p.fecha_subida_comprobante::TIMESTAMP AS fecha_subida_comprobante,
        p.fecha_aprobacion::TIMESTAMP AS fecha_aprobacion,
        p.id_usuario_aprobador::INT AS id_usuario_aprobador,
        p.observaciones::TEXT AS observaciones
    FROM pagos p
    WHERE p.id_alumno = p_id_alumno
      AND p.anio = p_anio
      AND p.estado IN ('Pendiente', 'En Revisión', 'Rechazado')
    ORDER BY p.f_vencimiento ASC;
END;
$$ LANGUAGE plpgsql;

-- 2. ACTUALIZAR función obtener_obligaciones_pagadas_por_alumno para incluir id_pago_origen
-- Esta función se usa en el endpoint GET /api/v1/ObtenerObligacionesPagadas/{idAlumno}
-- IMPORTANTE: Usa descripcion_periodo (no codigo_periodo) para mostrar el periodo completo
DROP FUNCTION IF EXISTS public.obtener_obligaciones_pagadas_por_alumno(integer);
CREATE OR REPLACE FUNCTION obtener_obligaciones_pagadas_por_alumno(
    p_id_alumno INT
)
RETURNS TABLE (
    periodo TEXT,
    fecha_pago DATE,
    concepto VARCHAR,
    numero_documento_pago VARCHAR,
    numero_cuota INT,
    importe NUMERIC,
    monto_pagado NUMERIC,
    id_pago_origen INT
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        COALESCE(pa.descripcion_periodo, pa.codigo_periodo)::TEXT AS periodo,
        op."FECHA_PAGO"::DATE AS fecha_pago,
        op."CONCEPTO"::VARCHAR AS concepto,
        op."NUMERO_DOCUMENTO_PAGO"::VARCHAR AS numero_documento_pago,
        op."NUMERO_CUOTA"::INT AS numero_cuota,
        op."IMPORTE"::NUMERIC AS importe,
        op."MONTO_PAGADO"::NUMERIC AS monto_pagado,
        op.id_pago_origen::INT AS id_pago_origen
    FROM obligacion_pagada op
    INNER JOIN periodoacademico pa ON op."ID_PERIODO" = pa.id_periodo
    WHERE op."ID_ALUMNO" = p_id_alumno
    ORDER BY op."FECHA_PAGO" DESC;
END;
$$ LANGUAGE plpgsql;

-- 3. ACTUALIZAR función actualizar_imagen_pago
-- Esta función se usa cuando el alumno sube una imagen de comprobante
-- Cambia automáticamente el estado a 'En Revisión'
DROP FUNCTION IF EXISTS public.actualizar_imagen_pago(integer, text);
CREATE OR REPLACE FUNCTION actualizar_imagen_pago(
    p_id_pago INT,
    p_imagen TEXT
)
RETURNS JSON AS $$
DECLARE
    v_result JSON;
BEGIN
    UPDATE pagos 
    SET 
        imagen = p_imagen,
        estado = 'En Revisión',
        fecha_subida_comprobante = NOW()
    WHERE id_pago = p_id_pago;
    
    IF NOT FOUND THEN
        v_result := json_build_object(
            'success', false,
            'message', 'Pago no encontrado o no pertenece a esta sede'
        );
    ELSE
        v_result := json_build_object(
            'success', true,
            'message', 'Imagen actualizada y pago en revisión'
        );
    END IF;
    
    RETURN v_result;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 4. ACTUALIZAR función aprobar_rechazar_pago
-- Esta función se usa cuando el administrador aprueba o rechaza un pago
-- Si se aprueba, crea automáticamente el registro en obligacion_pagada
DROP FUNCTION IF EXISTS public.aprobar_rechazar_pago(integer, integer, character varying, text);
CREATE OR REPLACE FUNCTION aprobar_rechazar_pago(
    p_id_pago INT,
    p_id_usuario_aprobador INT,
    p_estado VARCHAR,
    p_observaciones TEXT DEFAULT NULL
)
RETURNS JSON AS $$
DECLARE
    v_result JSON;
    v_pago RECORD;
    v_id_obligacion INTEGER;
BEGIN
    -- Validar estado
    IF p_estado NOT IN ('Aprobado', 'Rechazado') THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Estado inválido. Debe ser Aprobado o Rechazado'
        );
    END IF;
    
    -- Obtener datos del pago
    SELECT * INTO v_pago
    FROM pagos
    WHERE id_pago = p_id_pago;
    
    IF NOT FOUND THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Pago no encontrado'
        );
    END IF;
    
    -- Actualizar estado del pago
    UPDATE pagos 
    SET 
        estado = p_estado,
        fecha_aprobacion = CASE WHEN p_estado = 'Aprobado' THEN NOW() ELSE NULL END,
        id_usuario_aprobador = p_id_usuario_aprobador,
        observaciones = p_observaciones
    WHERE id_pago = p_id_pago;
    
    -- Si se aprueba, crear obligación pagada automáticamente
    IF p_estado = 'Aprobado' THEN
        INSERT INTO obligacion_pagada (
            "ID_ALUMNO",
            "ID_PERIODO",
            "FECHA_PAGO",
            "CONCEPTO",
            "NUMERO_DOCUMENTO_PAGO",
            "NUMERO_CUOTA",
            "IMPORTE",
            "MONTO_PAGADO",
            codigo_sede,
            id_pago_origen
        )
        SELECT 
            v_pago.id_alumno,
            (SELECT id_periodo FROM matricula WHERE id_alumno = v_pago.id_alumno AND activo = true LIMIT 1),
            NOW(),
            COALESCE(v_pago.detalle, 'Pago de obligación'),
            COALESCE(v_pago.documento_pago, ''),
            1,
            COALESCE(v_pago.total_a_pagar, 0),
            COALESCE(v_pago.total_a_pagar, 0),
            v_pago.codigo_sede,
            v_pago.id_pago
        RETURNING "ID_OBLIG_PAGADA" INTO v_id_obligacion;
        
        IF v_id_obligacion IS NULL THEN
            RETURN json_build_object(
                'success', false,
                'message', 'Error al crear la obligación pagada. Verifique que el alumno tenga una matrícula activa.'
            );
        END IF;
        
        v_result := json_build_object(
            'success', true,
            'message', 'Pago aprobado y registrado en obligaciones pagadas',
            'id_obligacion', v_id_obligacion
        );
    ELSE
        v_result := json_build_object(
            'success', true,
            'message', 'Pago rechazado correctamente'
        );
    END IF;
    
    RETURN v_result;
END;
$$ LANGUAGE plpgsql SECURITY DEFINER;

-- 5. Crear función para obtener pagos en revisión (para administradores)
-- Obtiene el codigo_sede del contexto del tenant (multi-tenancy)
DROP FUNCTION IF EXISTS public.obtener_pagos_en_revision();
CREATE OR REPLACE FUNCTION obtener_pagos_en_revision()
RETURNS TABLE (
    id_pago INT,
    id_alumno INT,
    documento_pago VARCHAR,
    f_vencimiento DATE,
    ciclo VARCHAR,
    saldo NUMERIC,
    mora NUMERIC,
    total_a_pagar NUMERIC,
    detalle TEXT,
    imagen VARCHAR,
    anio INT,
    estado VARCHAR,
    fecha_subida_comprobante TIMESTAMP,
    fecha_aprobacion TIMESTAMP,
    id_usuario_aprobador INT,
    observaciones TEXT,
    nombre_alumno TEXT
) AS $$

BEGIN
    RETURN QUERY
    SELECT 
        p.id_pago,
        p.id_alumno,
        p.documento_pago,
        p.f_vencimiento,
        p.ciclo,
        p.saldo,
        p.mora,
        p.total_a_pagar,
        p.detalle,
        p.imagen,
        p.anio,
        p.estado,
        p.fecha_subida_comprobante,
        p.fecha_aprobacion,
        p.id_usuario_aprobador,
        p.observaciones,
        a.nombre || ' ' || COALESCE(a.apellido_paterno, '') || ' ' || COALESCE(a.apellido_materno, '') AS nombre_alumno
    FROM pagos p
    INNER JOIN alumno a ON p.id_alumno = a.id_alumno
    WHERE p.estado = 'En Revisión'
    ORDER BY p.fecha_subida_comprobante DESC;
END;
$$ LANGUAGE plpgsql;

-- 6. Crear índice para mejorar performance en búsquedas por alumno y estado
CREATE INDEX IF NOT EXISTS idx_pagos_alumno_anio_estado 
ON pagos(id_alumno, anio, estado);

-- Crear índice para mejorar búsquedas en obligacion_pagada por id_pago_origen
CREATE INDEX IF NOT EXISTS idx_obligacion_pagada_id_pago_origen 
ON obligacion_pagada(id_pago_origen);

-- 7. Crear trigger para validar transiciones de estado
-- Este trigger asegura que las transiciones de estado sean válidas
CREATE OR REPLACE FUNCTION validar_transicion_estado_pago()
RETURNS TRIGGER AS $$
BEGIN
    -- No se puede cambiar de 'Aprobado' a otro estado
    IF OLD.estado = 'Aprobado' AND NEW.estado != 'Aprobado' THEN
        RAISE EXCEPTION 'No se puede cambiar el estado de un pago ya aprobado';
    END IF;
    
    -- Solo se puede pasar a 'En Revisión' si hay imagen
    IF NEW.estado = 'En Revisión' AND (NEW.imagen IS NULL OR NEW.imagen = '') THEN
        RAISE EXCEPTION 'No se puede poner en revisión un pago sin comprobante de pago';
    END IF;
    
    -- Solo se puede aprobar si está en revisión
    IF NEW.estado = 'Aprobado' AND OLD.estado != 'En Revisión' THEN
        RAISE EXCEPTION 'Solo se pueden aprobar pagos que están en revisión';
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

-- Eliminar trigger si existe y recrearlo
DROP TRIGGER IF EXISTS trg_validar_estado_pago ON pagos;
CREATE TRIGGER trg_validar_estado_pago
    BEFORE UPDATE ON pagos
    FOR EACH ROW
    WHEN (OLD.estado IS DISTINCT FROM NEW.estado)
    EXECUTE FUNCTION validar_transicion_estado_pago();

-- 8. Actualizar datos existentes que puedan estar inconsistentes
-- Pagos con imagen pero estado 'Pendiente' -> cambiar a 'En Revisión'
UPDATE pagos 
SET estado = 'En Revisión',
    fecha_subida_comprobante = COALESCE(fecha_subida_comprobante, NOW())
WHERE imagen IS NOT NULL 
  AND imagen != '' 
  AND estado = 'Pendiente';

-- 9. ACTUALIZAR función listar_pagos_por_sede_paginado para incluir nuevos campos
-- Verificar si la función existe y eliminarla si es necesario
DROP FUNCTION IF EXISTS public.listar_pagos_por_sede_paginado(character varying, integer, integer);

-- Crear/actualizar la función con los campos correctos
CREATE OR REPLACE FUNCTION listar_pagos_por_sede_paginado(
    p_pagina INT,
    p_items_por_pagina INT
)
RETURNS TABLE (
    idpago INT,
    documentopago VARCHAR,
    fechav DATE,
    ciclopago VARCHAR,
    saldopago NUMERIC,
    morapago NUMERIC,
    totalpago NUMERIC,
    detallepago TEXT,
    imagepago VARCHAR,
    aniopago INT,
    total_resultados BIGINT,
    estado VARCHAR,
    fecha_subida_comprobante TIMESTAMP,
    fecha_aprobacion TIMESTAMP,
    id_usuario_aprobador INT,
    observaciones TEXT,
    nombre_alumno TEXT
) AS $$
DECLARE
    v_codigo_sede VARCHAR;
BEGIN
    -- Obtener el codigo_sede del contexto del tenant (establecido automáticamente por el middleware)
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    -- Si no hay tenant establecido, lanzar error
    IF v_codigo_sede IS NULL OR v_codigo_sede = '' THEN
        RAISE EXCEPTION 'No se ha establecido el tenant (codigo_sede) en el contexto de la sesión';
    END IF;
        
    RETURN QUERY
    WITH pagos_filtrados AS (
        SELECT 
            p.id_pago,
            p.documento_pago,
            p.f_vencimiento,
            p.ciclo,
            p.saldo,
            p.mora,
            p.total_a_pagar,
            p.detalle,
            p.imagen,
            p.anio,
            p.estado,
            p.fecha_subida_comprobante,
            p.fecha_aprobacion,
            p.id_usuario_aprobador,
            p.observaciones,
            a.nombre || ' ' || COALESCE(a.apellido_paterno, '') || ' ' || COALESCE(a.apellido_materno, '') AS nombre_alumno,
            COUNT(*) OVER() AS total
        FROM pagos p
        INNER JOIN alumno a ON p.id_alumno = a.id_alumno
        WHERE p.codigo_sede = v_codigo_sede
    )
    SELECT 
        pf.id_pago::INT AS idpago,
        pf.documento_pago::VARCHAR AS documentopago,
        pf.f_vencimiento::DATE AS fechav,
        pf.ciclo::VARCHAR AS ciclopago,
        pf.saldo::NUMERIC AS saldopago,
        pf.mora::NUMERIC AS morapago,
        pf.total_a_pagar::NUMERIC AS totalpago,
        pf.detalle::TEXT AS detallepago,
        COALESCE(pf.imagen, '')::VARCHAR AS imagepago,
        pf.anio::INT AS aniopago,
        pf.total::BIGINT AS total_resultados,
        COALESCE(pf.estado, 'Pendiente')::VARCHAR AS estado,
        pf.fecha_subida_comprobante::TIMESTAMP AS fecha_subida_comprobante,
        pf.fecha_aprobacion::TIMESTAMP AS fecha_aprobacion,
        pf.id_usuario_aprobador::INT AS id_usuario_aprobador,
        pf.observaciones::TEXT AS observaciones,
        pf.nombre_alumno::TEXT AS nombre_alumno
    FROM pagos_filtrados pf
    ORDER BY pf.f_vencimiento ASC
    LIMIT p_items_por_pagina OFFSET p_pagina;
END;
$$ LANGUAGE plpgsql;
