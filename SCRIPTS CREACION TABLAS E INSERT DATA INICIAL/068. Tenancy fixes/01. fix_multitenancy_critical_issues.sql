-- ============================================================================
-- SCRIPTS DE CORRECCIÓN PARA MULTI-TENANCY
-- Actualización de funciones, procedures y triggers para manejar codigo_sede
-- ============================================================================

-- ============================================================================
-- 1. TRIGGER: calcular_promedio_final
-- ============================================================================
-- Problema: No filtra por codigo_sede al calcular promedios
-- Solución: Agregar filtro por codigo_sede en todas las consultas

CREATE OR REPLACE FUNCTION public.calcular_promedio_final()
RETURNS trigger
LANGUAGE plpgsql
AS $function$
DECLARE
    nuevo_promedio DECIMAL(5,2);
    total_pesos DECIMAL(5,2);
BEGIN
    -- Verificar si la nota no es de tipo 'Promedio Final'
    IF NEW.tipo_nota != 'Promedio Final' THEN
        -- Calcular el promedio ponderado (AGREGADO filtro por codigo_sede)
        SELECT SUM(nota * peso), SUM(peso) 
        INTO nuevo_promedio, total_pesos
        FROM Notas
        WHERE id_alumno = NEW.id_alumno
          AND id_curso = NEW.id_curso
          AND id_periodo = NEW.id_periodo
          AND id_subperiodo = NEW.id_subperiodo
          AND codigo_sede = NEW.codigo_sede  -- CORRECCIÓN: Filtrar por sede
          AND tipo_nota != 'Promedio Final';

        -- Evitar división por cero
        IF total_pesos > 0 THEN
            nuevo_promedio := nuevo_promedio / total_pesos;
        ELSE
            nuevo_promedio := 0;
        END IF;

        -- Verificar si ya existe un registro para el Promedio Final (AGREGADO filtro por codigo_sede)
        IF EXISTS (SELECT 1 FROM Notas 
                   WHERE id_alumno = NEW.id_alumno 
                     AND id_curso = NEW.id_curso 
                     AND id_periodo = NEW.id_periodo
                     AND id_subperiodo = NEW.id_subperiodo
                     AND codigo_sede = NEW.codigo_sede  -- CORRECCIÓN: Filtrar por sede
                     AND tipo_nota = 'Promedio Final') THEN
            -- Actualizar (AGREGADO filtro por codigo_sede)
            UPDATE Notas
            SET nota = nuevo_promedio
            WHERE id_alumno = NEW.id_alumno 
              AND id_curso = NEW.id_curso 
              AND id_periodo = NEW.id_periodo
              AND id_subperiodo = NEW.id_subperiodo
              AND codigo_sede = NEW.codigo_sede  -- CORRECCIÓN: Filtrar por sede
              AND tipo_nota = 'Promedio Final';
        ELSE
            -- Insertar (el codigo_sede ya está en NEW)
            INSERT INTO Notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo, codigo_sede)
            VALUES (nuevo_promedio, 1, 'Promedio Final', NEW.id_alumno, NEW.id_curso, NEW.id_periodo, NEW.id_subperiodo, NEW.codigo_sede);
        END IF;
    END IF;

    RETURN NEW;
END;
$function$;

-- ============================================================================
-- 2. PROCEDURE: actualizar_usuario_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede, podría actualizar alumnos de otras sedes
-- Solución: Agregar parámetro codigo_sede y filtrar por él

CREATE OR REPLACE PROCEDURE public.actualizar_usuario_alumno(
    IN correo_usuario character varying, 
    IN "contraseña_usuario" character varying, 
    IN nombre_usuario character varying, 
    IN apellido_p_usuario character varying, 
    IN apellido_m_usuario character varying, 
    IN telefono_usuario character varying, 
    IN dni_usuario_alumno character varying, 
    IN fn_usuario timestamp without time zone, 
    IN direccion_usuario character varying, 
    IN foto_perfil_usuario character varying, 
    IN genero_usuario character varying, 
    IN t_a_usuario character varying, 
    IN observacion_alumno character varying, 
    IN apoderado_alumno character varying, 
    IN t_i_alumno character varying, 
    IN grado_alumno integer, 
    IN habilitado_prueba_alumno boolean,
    IN codigo_sede_usuario character varying  -- CORRECCIÓN: Nuevo parámetro
)
LANGUAGE plpgsql
AS $procedure$
BEGIN
    -- Validar que el alumno pertenece a la sede especificada
    IF NOT EXISTS (
        SELECT 1 FROM alumno 
        WHERE dni = dni_usuario_alumno 
        AND codigo_sede = codigo_sede_usuario
        AND activo = true
    ) THEN
        RAISE EXCEPTION 'Alumno con DNI % no encontrado en la sede %', dni_usuario_alumno, codigo_sede_usuario;
    END IF;

    IF contraseña_usuario IS NOT NULL AND contraseña_usuario <> '' THEN
        UPDATE users
        SET email = correo_usuario, 
            password = contraseña_usuario,
            name = nombre_usuario, 
            phone = telefono_usuario,
            dni_usuario = dni_usuario_alumno
        WHERE dni_usuario = dni_usuario_alumno
          AND codigo_sede = codigo_sede_usuario;  -- CORRECCIÓN: Filtrar por sede
    END IF;

    UPDATE alumno
    SET nombre = nombre_usuario, 
        apellido_paterno = apellido_p_usuario,
        apellido_materno = apellido_m_usuario, 
        dni = dni_usuario_alumno,
        correo = correo_usuario, 
        fecha_nacimiento = fn_usuario,
        telefono = telefono_usuario, 
        direccion = direccion_usuario,
        foto_perfil = foto_perfil_usuario, 
        genero = genero_usuario,
        tipo_alumno = t_a_usuario, 
        observaciones = observacion_alumno,
        apoderado = apoderado_alumno, 
        tipo_institucion = t_i_alumno,
        id_grado = grado_alumno, 
        habilitado_prueba = habilitado_prueba_alumno
    WHERE dni = dni_usuario_alumno
      AND codigo_sede = codigo_sede_usuario;  -- CORRECCIÓN: Filtrar por sede

    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se pudo actualizar el alumno con DNI % en la sede %', dni_usuario_alumno, codigo_sede_usuario;
    END IF;
END;
$procedure$;

-- ============================================================================
-- 3. PROCEDURE: eliminar_usuario_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar parámetro codigo_sede

CREATE OR REPLACE PROCEDURE public.eliminar_usuario_alumno(
    IN dni_usuario_alumno character varying,
    IN codigo_sede_usuario character varying  -- CORRECCIÓN: Nuevo parámetro
)
LANGUAGE plpgsql
AS $procedure$
BEGIN
    -- Validar que el usuario pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM alumno 
        WHERE dni = dni_usuario_alumno 
        AND codigo_sede = codigo_sede_usuario
    ) THEN
        RAISE EXCEPTION 'Usuario con DNI % no encontrado en la sede %', dni_usuario_alumno, codigo_sede_usuario;
    END IF;

    UPDATE alumno
    SET activo = false
    WHERE dni = dni_usuario_alumno
      AND codigo_sede = codigo_sede_usuario;  -- CORRECCIÓN: Filtrar por sede

    UPDATE users
    SET activo = false
    WHERE dni_usuario = dni_usuario_alumno
      AND codigo_sede = codigo_sede_usuario;  -- CORRECCIÓN: Filtrar por sede

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Usuario no encontrado con numero de documento % en la sede %', dni_usuario_alumno, codigo_sede_usuario;
    END IF;
END;
$procedure$;

-- ============================================================================
-- 4. PROCEDURE: eliminar_curso
-- ============================================================================
-- Problema: No verifica codigo_sede antes de eliminar
-- Solución: Agregar parámetro y validación

CREATE OR REPLACE PROCEDURE public.eliminar_curso(
    IN idcurso integer,
    IN codigo_sede_usuario character varying  -- CORRECCIÓN: Nuevo parámetro
)
LANGUAGE plpgsql
AS $procedure$
DECLARE
    v_codigo_sede_curso character varying;
BEGIN
    -- Verificar que el curso pertenece a la sede especificada
    SELECT codigo_sede INTO v_codigo_sede_curso
    FROM curso
    WHERE id_curso = idcurso;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Curso con ID % no encontrado', idcurso;
    END IF;

    IF v_codigo_sede_curso != codigo_sede_usuario THEN
        RAISE EXCEPTION 'El curso con ID % no pertenece a la sede %. Pertenece a la sede %', 
            idcurso, codigo_sede_usuario, v_codigo_sede_curso;
    END IF;

    IF EXISTS (SELECT 1 FROM asistencias WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene asistencias asociadas. Id del curso: %', idcurso;
    END IF;

    IF EXISTS (SELECT 1 FROM detalleseccionasignada WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene secciones asignadas asociadas. Id del curso: %', idcurso;
    END IF;

    IF EXISTS (SELECT 1 FROM notas WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene notas asociadas. Id del curso: %', idcurso;
    END IF;
    
    DELETE FROM curso
    WHERE id_curso = idcurso
      AND codigo_sede = codigo_sede_usuario;  -- CORRECCIÓN: Filtrar por sede

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Curso no encontrado con id: %', idcurso;
    END IF;
END;
$procedure$;

-- ============================================================================
-- 5. PROCEDURE: generar_examen_aleatorio_competencia_grado
-- ============================================================================
-- Problema: Inserta en EXAMEN_GENERADO sin establecer codigo_sede
-- Solución: Obtener codigo_sede del postulante y establecerlo

CREATE OR REPLACE PROCEDURE public.generar_examen_aleatorio_competencia_grado(
    IN p_id_postulante integer, 
    IN p_numero_preguntas integer, 
    IN p_id_competencia integer, 
    IN p_id_grado integer,
    IN p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro opcional
)
LANGUAGE plpgsql
AS $procedure$
DECLARE
    grupos RECORD;
    tiene_grupos BOOLEAN;
    existe_preguntas_competencia BOOLEAN;
    v_codigo_sede character varying;
BEGIN
    -- Obtener codigo_sede del postulante si no se proporciona
    IF p_codigo_sede IS NULL THEN
        SELECT codigo_sede INTO v_codigo_sede
        FROM postulante
        WHERE "ID_POSTULANTE" = p_id_postulante;
        
        IF v_codigo_sede IS NULL THEN
            -- Si el postulante no tiene codigo_sede, obtenerlo de la pregunta/competencia
            SELECT DISTINCT codigo_sede INTO v_codigo_sede
            FROM pregunta
            WHERE "ID_COMPETENCIA" = p_id_competencia
              AND "ID_GRADO" = p_id_grado
              AND codigo_sede IS NOT NULL
            LIMIT 1;
        END IF;
        
        IF v_codigo_sede IS NULL THEN
            RAISE EXCEPTION 'No se pudo determinar el codigo_sede para el examen. Proporcione el parámetro p_codigo_sede.';
        END IF;
    ELSE
        v_codigo_sede := p_codigo_sede;
    END IF;

    -- Verificar si existen preguntas con grupo para la competencia y grado indicados
    SELECT EXISTS (
        SELECT 1 FROM pregunta
        WHERE "ID_COMPETENCIA" = p_id_competencia
          AND "GRUPO" IS NOT NULL
          AND "ID_GRADO" = p_id_grado
          AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
    ) INTO tiene_grupos;

    SELECT EXISTS (
        SELECT 1 FROM pregunta
        WHERE "ID_COMPETENCIA" = p_id_competencia
          AND "ID_GRADO" = p_id_grado
          AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
    ) INTO existe_preguntas_competencia;

    IF existe_preguntas_competencia = false THEN
        RAISE EXCEPTION 'No se encontró preguntas para la competencia % en el grado % para la sede %', 
            p_id_competencia, p_id_grado, v_codigo_sede;
    END IF;

    IF tiene_grupos THEN
        FOR grupos IN 
            SELECT "GRUPO" 
            FROM pregunta 
            WHERE "ID_COMPETENCIA" = p_id_competencia 
              AND "GRUPO" IS NOT NULL
              AND "ID_GRADO" = p_id_grado
              AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
            GROUP BY "GRUPO" 
            ORDER BY RANDOM() 
            LIMIT p_numero_preguntas / 5  
        LOOP
            -- Insertar la pregunta con TEXTO_SUPERIOR (CORRECCIÓN: agregar codigo_sede)
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO", codigo_sede)
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, p_id_grado, v_codigo_sede
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NOT NULL
              AND "ID_GRADO" = p_id_grado
              AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
            LIMIT 1;

            -- Insertar las otras 4 preguntas (CORRECCIÓN: agregar codigo_sede)
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO", codigo_sede)
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, p_id_grado, v_codigo_sede
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NULL
              AND "ID_GRADO" = p_id_grado
              AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
            ORDER BY RANDOM()
            LIMIT 4;
        END LOOP;
    ELSE
        -- Si no hay grupos, seleccionar preguntas individuales (CORRECCIÓN: agregar codigo_sede)
        INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO", codigo_sede)
        SELECT p_id_postulante, q."ID_PREGUNTA", NULL, p_id_competencia, p_id_grado, v_codigo_sede
        FROM (
            SELECT "ID_PREGUNTA"
            FROM pregunta
            WHERE "ID_COMPETENCIA" = p_id_competencia
              AND "GRUPO" IS NULL  
              AND "ID_GRADO" = p_id_grado
              AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Filtrar por sede
            ORDER BY RANDOM()
            LIMIT p_numero_preguntas  
        ) q;
    END IF;

    -- Actualizar el orden de las preguntas generadas (sin cambios necesarios)
    WITH preguntas_ordenadas AS (
        SELECT
            "ID_EXAMEN_GENERADO",
            "ID_POSTULANTE",
            "ID_PREGUNTA",
            ROW_NUMBER() OVER (PARTITION BY "ID_POSTULANTE" ORDER BY "ID_EXAMEN_GENERADO") AS nuevo_orden
        FROM EXAMEN_GENERADO
        WHERE "ID_POSTULANTE" = p_id_postulante
    )
    UPDATE EXAMEN_GENERADO eg
    SET "ORDEN_PREGUNTA" = po.nuevo_orden
    FROM preguntas_ordenadas po
    WHERE eg."ID_EXAMEN_GENERADO" = po."ID_EXAMEN_GENERADO";

END;
$procedure$;

-- ============================================================================
-- 6. FUNCTION: asignar_horario_curso
-- ============================================================================
-- Problema: No incluye codigo_sede en INSERT (requerido NOT NULL)
-- Solución: Obtener codigo_sede del curso/sección/período

CREATE OR REPLACE FUNCTION public.asignar_horario_curso(
    p_id_curso integer, 
    p_id_seccion integer, 
    p_id_periodo integer, 
    p_id_horario integer, 
    p_id_docente integer DEFAULT 1, 
    p_id_aula integer DEFAULT 1, 
    p_id_sede integer DEFAULT 1
)
RETURNS json
LANGUAGE plpgsql
AS $function$
DECLARE
    v_codigo_sede character varying;
BEGIN
    -- Obtener codigo_sede del curso (prioridad) o de la sección/período
    SELECT COALESCE(c.codigo_sede, s.codigo_sede, p.codigo_sede)
    INTO v_codigo_sede
    FROM curso c
    LEFT JOIN seccion s ON s.id_seccion = p_id_seccion
    LEFT JOIN periodoacademico p ON p.id_periodo = p_id_periodo
    WHERE c.id_curso = p_id_curso
    LIMIT 1;

    IF v_codigo_sede IS NULL THEN
        -- Fallback: obtener de la sede por id_sede
        SELECT codigo_sede INTO v_codigo_sede
        FROM sede
        WHERE id_sede = p_id_sede;
        
        IF v_codigo_sede IS NULL THEN
            RETURN json_build_object(
                'success', false,
                'message', 'No se pudo determinar el codigo_sede para la asignación'
            );
        END IF;
    END IF;

    -- Validar que no exista ya esta asignación
    IF EXISTS (
        SELECT 1 
        FROM public.detalleseccionasignada 
        WHERE id_curso = p_id_curso 
          AND id_seccion = p_id_seccion 
          AND id_periodo = p_id_periodo 
          AND id_horario = p_id_horario
          AND codigo_sede = v_codigo_sede  -- CORRECCIÓN: Validar también por sede
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Ya existe esta asignación de horario'
        );
    END IF;
    
    -- Insertar nueva asignación (CORRECCIÓN: incluir codigo_sede)
    INSERT INTO public.detalleseccionasignada 
    (id_curso, id_seccion, id_periodo, id_horario, id_docente, id_aula, id_sede, turno, rol_docente, codigo_sede)
    VALUES 
    (p_id_curso, p_id_seccion, p_id_periodo, p_id_horario, p_id_docente, p_id_aula, p_id_sede, 'MAÑANA', 'TITULAR', v_codigo_sede);
    
    RETURN json_build_object(
        'success', true,
        'message', 'Horario asignado exitosamente',
        'id_curso', p_id_curso,
        'id_seccion', p_id_seccion,
        'id_horario', p_id_horario,
        'codigo_sede', v_codigo_sede
    );
    
EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error al asignar horario: ' || SQLERRM
        );
END;
$function$;

-- ============================================================================
-- 7. FUNCTION: verificar_matricula_alumno
-- ============================================================================
-- Problema: No verifica codigo_sede
-- Solución: Agregar parámetro y validar por sede

CREATE OR REPLACE FUNCTION public.verificar_matricula_alumno(
    p_id_alumno integer, 
    p_id_periodo integer,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS boolean
LANGUAGE plpgsql
AS $function$
DECLARE
    puede_matricularse BOOLEAN := TRUE;
    matricula_existente INTEGER;
BEGIN
    -- Verificar si ya tiene matrícula activa para el período (CORRECCIÓN: agregar filtro por sede)
    SELECT COUNT(*)
    INTO matricula_existente
    FROM matricula 
    WHERE id_alumno = p_id_alumno 
    AND id_periodo = p_id_periodo 
    AND activo = TRUE
    AND (p_codigo_sede IS NULL OR codigo_sede = p_codigo_sede);  -- CORRECCIÓN: Filtrar por sede si se proporciona
    
    IF matricula_existente > 0 THEN
        puede_matricularse := FALSE;
    END IF;
    
    RETURN puede_matricularse;
END;
$function$;

-- ============================================================================
-- 8. PROCEDURE: actualizar_respuesta
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar parámetro y filtrar

CREATE OR REPLACE PROCEDURE public.actualizar_respuesta(
    IN p_respuesta_seleccionada character, 
    IN p_id_postulante integer, 
    IN p_id_pregunta integer,
    IN p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
LANGUAGE plpgsql
AS $procedure$
DECLARE
    v_codigo_sede character varying;
BEGIN
    -- Si no se proporciona codigo_sede, obtenerlo del postulante o pregunta
    IF p_codigo_sede IS NULL THEN
        SELECT COALESCE(post.codigo_sede, preg.codigo_sede)
        INTO v_codigo_sede
        FROM postulante post
        LEFT JOIN pregunta preg ON preg."ID_PREGUNTA" = p_id_pregunta
        WHERE post."ID_POSTULANTE" = p_id_postulante
        LIMIT 1;
        
        IF v_codigo_sede IS NULL THEN
            RAISE EXCEPTION 'No se pudo determinar el codigo_sede. Proporcione el parámetro p_codigo_sede.';
        END IF;
    ELSE
        v_codigo_sede := p_codigo_sede;
    END IF;

    UPDATE EXAMEN_GENERADO
    SET 
        "RESPUESTA_SELECCIONADA" = p_respuesta_seleccionada,
        "COMPLETADO" = TRUE,
        "TIEMPO_RESPUESTA" = CURRENT_TIMESTAMP AT TIME ZONE 'America/Lima'
    WHERE 
        "ID_POSTULANTE" = p_id_postulante 
        AND "ID_PREGUNTA" = p_id_pregunta
        AND (codigo_sede = v_codigo_sede OR codigo_sede IS NULL);  -- CORRECCIÓN: Filtrar por sede
    
    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se encontró el examen para actualizar. Postulante: %, Pregunta: %, Sede: %', 
            p_id_postulante, p_id_pregunta, v_codigo_sede;
    END IF;
    
    COMMIT;
END;
$procedure$;

-- ============================================================================
-- 9. FUNCTION: get_pagos_por_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar parámetro y filtrar

CREATE OR REPLACE FUNCTION public.get_pagos_por_alumno(
    p_id_alumno integer, 
    p_anio integer,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(
    id_pago integer, 
    documento_pago character varying, 
    f_vencimiento date, 
    ciclo character varying, 
    saldo numeric, 
    mora numeric, 
    total_a_pagar numeric, 
    detalle text, 
    imagen character varying, 
    anio integer
)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
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
        p.anio
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio
        AND (p_codigo_sede IS NULL OR p.codigo_sede = p_codigo_sede);  -- CORRECCIÓN: Filtrar por sede
END;
$function$;

-- ============================================================================
-- 10. FUNCTION: get_resumen_pagos_por_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar parámetro y filtrar

CREATE OR REPLACE FUNCTION public.get_resumen_pagos_por_alumno(
    p_id_alumno integer, 
    p_anio integer,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(
    id_alumno integer, 
    cantidad_vencidos integer, 
    cantidad_por_vencer integer, 
    cantidad_a_tiempo integer, 
    monto_total_pendiente numeric
)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT
        p_id_alumno AS id_alumno,
        COUNT(*) FILTER (WHERE p.f_vencimiento < CURRENT_DATE)::integer AS cantidad_vencidos,
        COUNT(*) FILTER (WHERE p.f_vencimiento BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_por_vencer,
        COUNT(*) FILTER (WHERE p.f_vencimiento > CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_a_tiempo,
        COALESCE(SUM(p.total_a_pagar), 0) AS monto_total_pendiente
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio
        AND (p_codigo_sede IS NULL OR p.codigo_sede = p_codigo_sede);  -- CORRECCIÓN: Filtrar por sede
END;
$function$;

-- ============================================================================
-- 11. FUNCTION: obtener_obligaciones_pagadas_por_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar parámetro y filtrar

CREATE OR REPLACE FUNCTION public.obtener_obligaciones_pagadas_por_alumno(
    id_alumno_param integer,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(
    periodo character varying, 
    fecha_pago date, 
    concepto character varying, 
    numero_documento_pago character varying, 
    numero_cuota integer, 
    importe numeric, 
    monto_pagado numeric
)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY 
    SELECT 
        pa.descripcion_periodo AS periodo,
        op."FECHA_PAGO",
        op."CONCEPTO",
        op."NUMERO_DOCUMENTO_PAGO",
        op."NUMERO_CUOTA",
        op."IMPORTE",
        op."MONTO_PAGADO"
    FROM obligacion_pagada op
    JOIN periodoacademico pa ON op."ID_PERIODO" = pa.id_periodo
    WHERE op."ID_ALUMNO" = id_alumno_param
      AND (p_codigo_sede IS NULL OR op.codigo_sede = p_codigo_sede)  -- CORRECCIÓN: Filtrar por sede
    ORDER BY pa.fecha_inicio DESC, op."FECHA_PAGO" DESC;
END;
$function$;

-- ============================================================================
-- 12. FUNCTION: asistencias_por_curso_alumno
-- ============================================================================
-- Problema: No filtra por codigo_sede
-- Solución: Agregar filtro por codigo_sede del curso

CREATE OR REPLACE FUNCTION public.asistencias_por_curso_alumno(
    idalumno integer, 
    anio integer, 
    inicioperiodo timestamp without time zone, 
    finalperiodo timestamp without time zone, 
    codigocurso character varying, 
    estadoasistencia character varying,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(cantidad bigint)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT count(*) 
    FROM asistencias a
    INNER JOIN curso c USING(id_curso)
    WHERE a.id_alumno = idAlumno 
      AND EXTRACT(YEAR FROM a.dia) = anio 
      AND (a.dia >= inicioPeriodo AND a.dia <= finalPeriodo) 
      AND c.codigo_curso = codigoCurso 
      AND a.estado_asistencia = estadoAsistencia
      AND (p_codigo_sede IS NULL OR c.codigo_sede = p_codigo_sede);  -- CORRECCIÓN: Filtrar por sede
END;
$function$;

-- ============================================================================
-- 13. FUNCTION: listar_periodos_por_tipo
-- ============================================================================
-- Problema: Lista períodos sin filtrar por codigo_sede
-- Solución: Agregar parámetro opcional

CREATE OR REPLACE FUNCTION public.listar_periodos_por_tipo(
    p_tipo_periodo character varying, 
    p_anio integer DEFAULT NULL,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(
    id_periodo integer, 
    codigo_periodo character varying, 
    descripcion_periodo character varying, 
    tipo_periodo character varying, 
    estado_periodo character varying, 
    fecha_inicio date, 
    fecha_fin date, 
    anio integer
)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_periodo,
        p.codigo_periodo,
        p.descripcion_periodo,
        p.tipo_periodo,
        p.estado_periodo,
        p.fecha_inicio,
        p.fecha_fin,
        p.anio
    FROM periodoacademico p
    WHERE p.tipo_periodo = p_tipo_periodo
    AND p.estado_periodo = 'Activo'
    AND (p_anio IS NULL OR p.anio = p_anio)
    AND (p_codigo_sede IS NULL OR p.codigo_sede = p_codigo_sede)  -- CORRECCIÓN: Filtrar por sede
    ORDER BY p.anio, p.fecha_inicio;
END;
$function$;

-- ============================================================================
-- 14. FUNCTION: obtener_horarios_aula
-- ============================================================================
-- Problema: Consulta horarios sin verificar codigo_sede
-- Solución: Agregar parámetro y validar

CREATE OR REPLACE FUNCTION public.obtener_horarios_aula(
    p_id_aula integer,
    p_codigo_sede character varying DEFAULT NULL  -- CORRECCIÓN: Nuevo parámetro
)
RETURNS TABLE(
    descripcion_aula character varying, 
    descripcion_curso character varying, 
    nombre_dia character varying, 
    hora_inicio time without time zone, 
    hora_fin time without time zone, 
    seccion character varying, 
    nombre_docente character varying, 
    apellido_paterno_docente character varying, 
    apellido_materno_docente character varying
)
LANGUAGE plpgsql
AS $function$
DECLARE
    v_codigo_sede_aula character varying;
BEGIN
    -- Si se proporciona codigo_sede, validar que el aula pertenece a esa sede
    IF p_codigo_sede IS NOT NULL THEN
        SELECT codigo_sede INTO v_codigo_sede_aula
        FROM aula
        WHERE id_aula = p_id_aula;
        
        IF v_codigo_sede_aula != p_codigo_sede THEN
            RAISE EXCEPTION 'El aula con ID % no pertenece a la sede %. Pertenece a la sede %', 
                p_id_aula, p_codigo_sede, v_codigo_sede_aula;
        END IF;
    END IF;

    RETURN QUERY
    SELECT 
        a.DESCRIPCION_AULA,
        c.DESCRIPCION_CURSO,
        h.NOMBRE_DIA,
        h.HORA_INICIO,
        h.HORA_FIN,
        s.DESCRIPCION AS Seccion,
        d.NOMBRE AS NOMBRE_DOCENTE,
        d.APELLIDO_PATERNO AS APELLIDO_PATERNO_DOCENTE,
        d.APELLIDO_MATERNO AS APELLIDO_MATERNO_DOCENTE
    FROM 
        Aula a
    JOIN 
        DetalleSeccionAsignada dsa ON a.ID_AULA = dsa.ID_AULA
    JOIN 
        Curso c ON dsa.ID_CURSO = c.ID_CURSO
    JOIN 
        Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    JOIN 
        Seccion s ON dsa.ID_SECCION = s.ID_SECCION
    JOIN 
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    WHERE
        a.ID_AULA = p_id_aula
        AND (p_codigo_sede IS NULL OR dsa.codigo_sede = p_codigo_sede)  -- CORRECCIÓN: Filtrar por sede
    ORDER BY 
        a.DESCRIPCION_AULA, h.NUMERO_DIA, h.HORA_INICIO;
END;
$function$;

