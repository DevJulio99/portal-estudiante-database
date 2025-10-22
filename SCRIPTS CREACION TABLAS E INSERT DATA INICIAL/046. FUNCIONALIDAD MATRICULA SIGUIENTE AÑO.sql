-- =====================================================
-- SCRIPT PARA AGREGAR FUNCIONALIDAD BÁSICA DE MATRÍCULA
-- =====================================================

-- MEJORAR TABLA MATRICULA EXISTENTE
-- =====================================================

-- Agregar campos faltantes a la tabla matricula
ALTER TABLE public.matricula 
ADD COLUMN IF NOT EXISTS id_periodo integer,
ADD COLUMN IF NOT EXISTS id_grado integer,
ADD COLUMN IF NOT EXISTS codigo_sede character varying(255),
ADD COLUMN IF NOT EXISTS fecha_matricula timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
ADD COLUMN IF NOT EXISTS usuario_registro character varying(255),
ADD COLUMN IF NOT EXISTS activo boolean DEFAULT true;

-- Agregar foreign keys (ejecutar solo si no existen)
ALTER TABLE public.matricula 
ADD CONSTRAINT fk_matricula_periodo FOREIGN KEY (id_periodo) 
    REFERENCES public.periodoacademico (id_periodo) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE public.matricula 
ADD CONSTRAINT fk_matricula_grado FOREIGN KEY (id_grado) 
    REFERENCES public.grado ("ID_GRADO") MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;

ALTER TABLE public.matricula 
ADD CONSTRAINT fk_matricula_sede FOREIGN KEY (codigo_sede) 
    REFERENCES public.sede (codigo_sede) MATCH SIMPLE
    ON UPDATE NO ACTION ON DELETE NO ACTION;

-- FUNCIONES BÁSICAS PARA MATRÍCULA
-- =====================================================


-- Función para verificar si un alumno puede matricularse
CREATE OR REPLACE FUNCTION verificar_matricula_alumno(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER
)
RETURNS BOOLEAN AS $$
DECLARE
    puede_matricularse BOOLEAN := TRUE;
    matricula_existente INTEGER;
BEGIN
    -- Verificar si ya tiene matrícula activa para el período
    SELECT COUNT(*)
    INTO matricula_existente
    FROM matricula 
    WHERE id_alumno = p_id_alumno 
    AND id_periodo = p_id_periodo 
    AND activo = TRUE;
    
    IF matricula_existente > 0 THEN
        puede_matricularse := FALSE;
    END IF;
    
    RETURN puede_matricularse;
END;
$$ LANGUAGE plpgsql;

-- Función para listar matrículas por período
CREATE OR REPLACE FUNCTION listar_matriculas_periodo(
    p_id_periodo INTEGER,
    p_codigo_sede VARCHAR DEFAULT NULL
)
RETURNS TABLE (
    id_matricula INTEGER,
    nombre_alumno VARCHAR,
    apellido_paterno VARCHAR,
    apellido_materno VARCHAR,
    dni VARCHAR,
    descripcion_grado VARCHAR,
    estado_matricula VARCHAR,
    fecha_matricula TIMESTAMP
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        m.id_matricula,
        a.nombre,
        a.apellido_paterno,
        a.apellido_materno,
        a.dni,
        g."DESCRIPCION_GRADO",
        m.estado_matricula,
        m.fecha_matricula
    FROM matricula m
    INNER JOIN alumno a ON m.id_alumno = a.id_alumno
    LEFT JOIN grado g ON m.id_grado = g."ID_GRADO"
    WHERE m.id_periodo = p_id_periodo
    AND m.activo = TRUE
    AND (p_codigo_sede IS NULL OR m.codigo_sede = p_codigo_sede)
    ORDER BY m.fecha_matricula DESC;
END;
$$ LANGUAGE plpgsql;

-- PROCEDIMIENTO PARA REALIZAR MATRÍCULA
-- =====================================================

CREATE OR REPLACE FUNCTION realizar_matricula(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR,
    p_tipo_matricula VARCHAR DEFAULT 'Regular',
    p_estado_matricula VARCHAR DEFAULT 'Activa',
    p_observaciones TEXT DEFAULT NULL,
    p_usuario_registro VARCHAR DEFAULT 'SISTEMA'
)
RETURNS JSON AS $$
DECLARE
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
BEGIN
    -- Verificar si el alumno puede matricularse
    SELECT verificar_matricula_alumno(p_id_alumno, p_id_periodo) INTO puede_matricularse;
    
    IF NOT puede_matricularse THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno ya tiene una matrícula activa para este período académico',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el alumno existe
    IF NOT EXISTS (SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = true) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe o está inactivo',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el período existe
    IF NOT EXISTS (SELECT 1 FROM periodoacademico WHERE id_periodo = p_id_periodo) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El período académico no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el grado existe
    IF NOT EXISTS (SELECT 1 FROM grado WHERE "ID_GRADO" = p_id_grado) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El grado no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que la sede existe
    IF NOT EXISTS (SELECT 1 FROM sede WHERE codigo_sede = p_codigo_sede) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'La sede no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Insertar la matrícula
    INSERT INTO matricula (
        id_alumno,
        id_periodo,
        id_grado,
        codigo_sede,
        tipo_matricula,
        estado_matricula,
        observaciones,
        usuario_registro,
        fecha_inicio,
        fecha_fin,
        activo
    ) VALUES (
        p_id_alumno,
        p_id_periodo,
        p_id_grado,
        p_codigo_sede,
        p_tipo_matricula,
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro,
        CURRENT_DATE,
        CURRENT_DATE + INTERVAL '1 year',
        true
    ) RETURNING id_matricula INTO nuevo_id_matricula;
    
    -- Retornar resultado exitoso
    RETURN json_build_object(
        'success', true,
        'message', 'Matrícula realizada exitosamente',
        'id_matricula', nuevo_id_matricula,
        'fecha_matricula', CURRENT_TIMESTAMP
    );
    
EXCEPTION
    WHEN OTHERS THEN
        -- En caso de error, retornar mensaje de error
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrícula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$$ LANGUAGE plpgsql;
