-- ============================================================================
-- ACTUALIZACIÓN DE DEPENDENCIAS ENTRE FUNCIONES
-- Funciones que llaman a otras funciones actualizadas
-- ============================================================================

-- ============================================================================
-- FUNCTION: realizar_matricula
-- ============================================================================
-- Actualizar para usar la nueva versión de verificar_matricula_alumno con codigo_sede

-- Versión 1 (sin tipo_institucion)
CREATE OR REPLACE FUNCTION public.realizar_matricula(
    p_id_alumno integer, 
    p_id_periodo integer, 
    p_id_grado integer, 
    p_codigo_sede character varying, 
    p_tipo_matricula character varying DEFAULT 'Regular', 
    p_estado_matricula character varying DEFAULT 'Activa', 
    p_observaciones text DEFAULT NULL, 
    p_usuario_registro character varying DEFAULT 'SISTEMA'
)
RETURNS json
LANGUAGE plpgsql
AS $function$
DECLARE
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
BEGIN
    -- Verificar si el alumno puede matricularse (CORREGIDO: pasar codigo_sede)
    SELECT verificar_matricula_alumno(p_id_alumno, p_id_periodo, p_codigo_sede) 
    INTO puede_matricularse;
    
    IF NOT puede_matricularse THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno ya tiene una matrícula activa para este período académico en esta sede',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el alumno existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM alumno 
        WHERE id_alumno = p_id_alumno 
        AND activo = true 
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe, está inactivo o no pertenece a la sede especificada',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el período existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM periodoacademico 
        WHERE id_periodo = p_id_periodo
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El período académico no existe o no pertenece a la sede especificada',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que grado existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM grado 
        WHERE "ID_GRADO" = p_id_grado
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
             'success', false,
             'message', 'El grado no existe o no pertenece a la sede especificada',
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
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrícula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$function$;

-- Versión 2 (con tipo_institucion)
CREATE OR REPLACE FUNCTION public.realizar_matricula(
    p_id_alumno integer, 
    p_id_periodo integer, 
    p_id_grado integer, 
    p_codigo_sede character varying, 
    p_tipo_matricula character varying DEFAULT 'Regular', 
    p_estado_matricula character varying DEFAULT 'Activa', 
    p_observaciones text DEFAULT NULL, 
    p_usuario_registro character varying DEFAULT 'SISTEMA',
    p_tipo_institucion character varying DEFAULT NULL
)
RETURNS json
LANGUAGE plpgsql
AS $function$
DECLARE
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
    v_id_seccion INTEGER;
BEGIN
    -- Verificar si el alumno puede matricularse (CORREGIDO: pasar codigo_sede)
    SELECT verificar_matricula_alumno(p_id_alumno, p_id_periodo, p_codigo_sede) 
    INTO puede_matricularse;
    
    IF NOT puede_matricularse THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno ya tiene una matrícula activa para este período académico en esta sede',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el alumno existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM alumno 
        WHERE id_alumno = p_id_alumno 
        AND activo = true
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe, está inactivo o no pertenece a la sede especificada',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el período existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM periodoacademico 
        WHERE id_periodo = p_id_periodo
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El período académico no existe o no pertenece a la sede especificada',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que grado existe y pertenece a la sede
    IF NOT EXISTS (
        SELECT 1 FROM grado 
        WHERE "ID_GRADO" = p_id_grado
        AND codigo_sede = p_codigo_sede
    ) THEN
        RETURN json_build_object(
             'success', false,
             'message', 'El grado no existe o no pertenece a la sede especificada',
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

    -- Buscar primera sección si tipo_institucion = 'c'
    IF p_tipo_institucion ILIKE 'c' THEN
        SELECT s.id_seccion
        INTO v_id_seccion
        FROM seccion s
        WHERE s.grado = p_id_grado::varchar
          AND s.codigo_sede = p_codigo_sede  -- CORRECCIÓN: Filtrar por sede
        ORDER BY s.id_seccion
        LIMIT 1;

        IF v_id_seccion IS NULL THEN
            RETURN json_build_object(
                'success', false,
                'message', 'No se encontró ninguna sección válida para este grado en esta sede',
                'id_matricula', NULL
            );
        END IF;
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
        activo,
        id_seccion
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
        true,
        v_id_seccion
    ) RETURNING id_matricula INTO nuevo_id_matricula;
    
    -- Retornar resultado exitoso
    RETURN json_build_object(
        'success', true,
        'message', 'Matrícula realizada exitosamente',
        'id_seccion', v_id_seccion,
        'id_matricula', nuevo_id_matricula,
        'fecha_matricula', CURRENT_TIMESTAMP
    );
    
EXCEPTION
    WHEN OTHERS THEN
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrícula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$function$;

-- ============================================================================
-- Actualizar realizar_matricula_colegio para usar codigo_sede correctamente
-- ============================================================================
-- La función realizar_matricula_colegio ya llama a realizar_matricula,
-- que ahora valida codigo_sede. Pero debemos asegurarnos de que filtre
-- por codigo_sede al buscar cursos y horarios.

-- Esta función ya está bastante completa, solo necesitamos asegurar que
-- filtre por codigo_sede cuando busca cursos en grado_curso

CREATE OR REPLACE FUNCTION public.realizar_matricula_colegio(
    p_id_alumno integer, 
    p_id_periodo integer, 
    p_id_grado integer, 
    p_codigo_sede character varying, 
    p_tipo_matricula character varying DEFAULT 'Regular', 
    p_estado_matricula character varying DEFAULT 'Activa', 
    p_observaciones text DEFAULT NULL, 
    p_usuario_registro character varying DEFAULT 'SISTEMA', 
    p_tipo_institucion character varying DEFAULT NULL
)
RETURNS json
LANGUAGE plpgsql
AS $function$
DECLARE
    v_resultado JSON;
    v_id_matricula INTEGER;
    v_success BOOLEAN;
    v_message TEXT;
    v_curso RECORD;
    v_id_seccion INTEGER;
    v_cursos_asignados INTEGER := 0;
    v_horario RECORD;
    v_horarios_asignados INTEGER := 0;
    v_debug_info TEXT := '';
BEGIN
    -- Validaciones iniciales
    IF p_id_alumno IS NULL OR p_id_periodo IS NULL OR p_id_grado IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Parámetros obligatorios faltantes: id_alumno, id_periodo, id_grado son requeridos'
        );
    END IF;

    -- Llamar a la función existente para crear la matrícula base
    SELECT public.realizar_matricula(
        p_id_alumno,
        p_id_periodo,
        p_id_grado,
        p_codigo_sede,
        p_tipo_matricula,
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro,
        p_tipo_institucion
    )
    INTO v_resultado;

    -- Evaluar el resultado de la matrícula base
    v_success := (v_resultado ->> 'success')::BOOLEAN;
    v_message := v_resultado ->> 'message';

    IF NOT v_success THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error en la matrícula base: ' || v_message,
            'detalles', v_resultado
        );
    END IF;

    -- Extraer datos de la matrícula exitosa
    v_id_matricula := (v_resultado ->> 'id_matricula')::INTEGER;
    v_id_seccion   := (v_resultado ->> 'id_seccion')::INTEGER;

    IF v_id_matricula IS NULL OR v_id_seccion IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error: No se pudieron obtener los IDs de matrícula o sección',
            'resultado_matricula', v_resultado
        );
    END IF;

    v_debug_info := v_debug_info || 'Matrícula creada: ' || v_id_matricula || ', Sección: ' || v_id_seccion || '. ';

    -- Obtener y asignar cursos del grado (CORRECCIÓN: filtrar por codigo_sede)
    FOR v_curso IN
        SELECT 
            gc.id_curso, 
            gc.id_grado_curso,
            gc.es_obligatorio,
            gc.orden_curso,
            c.codigo_curso,
            c.descripcion_curso
        FROM public.grado_curso gc
        INNER JOIN public.curso c ON gc.id_curso = c.id_curso
        WHERE gc."ID_GRADO" = p_id_grado
          AND gc.activo = true
          AND c.codigo_sede = p_codigo_sede  -- CORRECCIÓN: Filtrar cursos por sede
          AND (p_tipo_institucion IS NULL OR gc.tipo_institucion = p_tipo_institucion)
        ORDER BY gc.orden_curso NULLS LAST, gc.id_curso
    LOOP
        BEGIN
            -- Insertar en matricula_curso
            INSERT INTO matricula_curso (
                id_matricula,
                id_curso,
                id_seccion,
                tipo_asignacion,
                estado_matricula_curso,
                fecha_asignacion,
                observaciones,
                activo
            ) VALUES (
                v_id_matricula,
                v_curso.id_curso,
                v_id_seccion,
                'AUTOMATICA',
                'ACTIVO',
                CURRENT_TIMESTAMP,
                CASE 
                    WHEN v_curso.es_obligatorio THEN 'Curso obligatorio - Grado ' || p_id_grado
                    ELSE 'Curso electivo - Grado ' || p_id_grado
                END,
                true
            );

            v_cursos_asignados := v_cursos_asignados + 1;
            v_debug_info := v_debug_info || 'Curso asignado: ' || v_curso.codigo_curso || '. ';

            -- Buscar horarios existentes (CORRECCIÓN: filtrar por codigo_sede)
            FOR v_horario IN
                SELECT DISTINCT h.id_horario, h.nombre_dia, h.hora_inicio, h.hora_fin
                FROM public.horario h
                INNER JOIN public.detalleseccionasignada dsa ON h.id_horario = dsa.id_horario
                INNER JOIN public.matricula_curso mc ON dsa.id_curso = mc.id_curso
                INNER JOIN public.matricula m ON mc.id_matricula = m.id_matricula
                WHERE dsa.id_curso = v_curso.id_curso
                  AND m.id_grado = p_id_grado
                  AND dsa.codigo_sede = p_codigo_sede  -- CORRECCIÓN: Filtrar por sede
                  AND (dsa.id_periodo = p_id_periodo OR dsa.id_periodo IN (
                      SELECT id_periodo 
                      FROM public.periodoacademico 
                      WHERE id_periodo < p_id_periodo 
                        AND codigo_sede = p_codigo_sede  -- CORRECCIÓN: Filtrar por sede
                      ORDER BY id_periodo DESC 
                      LIMIT 3
                  ))
                ORDER BY 
                    CASE WHEN dsa.id_periodo = p_id_periodo THEN 0 ELSE 1 END,
                    dsa.id_periodo DESC, 
                    h.numero_dia, 
                    h.hora_inicio
                LIMIT 10
            LOOP
                -- Insertar horario (CORRECCIÓN: establecer codigo_sede)
                INSERT INTO public.detalleseccionasignada 
                (id_seccion, id_curso, id_horario, id_docente, id_periodo, id_aula, id_sede, turno, rol_docente, codigo_sede)
                SELECT 
                    v_id_seccion, 
                    v_curso.id_curso, 
                    v_horario.id_horario, 
                    COALESCE((SELECT id_docente FROM public.docente WHERE codigo_sede = p_codigo_sede LIMIT 1), 1),
                    p_id_periodo, 
                    COALESCE((SELECT id_aula FROM public.aula WHERE codigo_sede = p_codigo_sede LIMIT 1), 1),
                    COALESCE((SELECT id_sede FROM public.sede WHERE codigo_sede = p_codigo_sede), 1),
                    'MAÑANA',
                    'TITULAR',
                    p_codigo_sede  -- CORRECCIÓN: Establecer codigo_sede
                WHERE NOT EXISTS (
                    SELECT 1
                    FROM public.detalleseccionasignada
                    WHERE id_seccion = v_id_seccion
                      AND id_curso = v_curso.id_curso
                      AND id_horario = v_horario.id_horario
                      AND id_periodo = p_id_periodo
                      AND codigo_sede = p_codigo_sede  -- CORRECCIÓN: Validar también por sede
                );
                
                IF FOUND THEN
                    v_horarios_asignados := v_horarios_asignados + 1;
                    v_debug_info := v_debug_info || 'Horario asignado: ' || v_horario.nombre_dia || ' ' || 
                                   v_horario.hora_inicio || '-' || v_horario.hora_fin || '. ';
                END IF;
            END LOOP;

            IF NOT EXISTS (
                SELECT 1 
                FROM public.detalleseccionasignada 
                WHERE id_seccion = v_id_seccion 
                  AND id_curso = v_curso.id_curso 
                  AND id_periodo = p_id_periodo
                  AND codigo_sede = p_codigo_sede  -- CORRECCIÓN: Validar por sede
            ) THEN
                v_debug_info := v_debug_info || 'Sin horarios para curso: ' || v_curso.codigo_curso || '. ';
            END IF;

        EXCEPTION
            WHEN OTHERS THEN
                v_debug_info := v_debug_info || 'Error en curso ' || v_curso.codigo_curso || ': ' || SQLERRM || '. ';
                CONTINUE;
        END;
    END LOOP;

    IF v_cursos_asignados = 0 THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se pudieron asignar cursos para el grado especificado en esta sede',
            'id_matricula', v_id_matricula,
            'id_grado', p_id_grado,
            'codigo_sede', p_codigo_sede,
            'debug_info', v_debug_info
        );
    END IF;

    RETURN json_build_object(
        'success', true,
        'message', 'Matrícula completa realizada exitosamente',
        'id_matricula', v_id_matricula,
        'id_seccion', v_id_seccion,
        'id_grado', p_id_grado,
        'cursos_asignados', v_cursos_asignados,
        'horarios_asignados', v_horarios_asignados,
        'fecha_matricula', CURRENT_TIMESTAMP,
        'nota', CASE 
            WHEN v_horarios_asignados = 0 THEN 'Matrícula exitosa. Horarios deben asignarse manualmente.'
            WHEN v_horarios_asignados < v_cursos_asignados THEN 'Matrícula exitosa. Algunos horarios requieren asignación manual.'
            ELSE 'Matrícula y horarios asignados exitosamente.'
        END,
        'debug_info', v_debug_info
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error inesperado al realizar matrícula completa: ' || SQLERRM,
            'error_code', SQLSTATE,
            'id_alumno', p_id_alumno,
            'id_periodo', p_id_periodo,
            'id_grado', p_id_grado,
            'codigo_sede', p_codigo_sede,
            'debug_info', v_debug_info,
            'timestamp', CURRENT_TIMESTAMP
        );
END;
$function$;

