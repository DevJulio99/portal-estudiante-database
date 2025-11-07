-- =====================================================
-- SOLUCIÓN COMPLETA: Asignación Inteligente de Horarios
-- =====================================================
-- Incluye:
-- 1. Constraints para prevenir conflictos
-- 2. Función mejorada con distribución de horarios
-- =====================================================

-- =====================================================
-- PASO 1: AGREGAR CONSTRAINTS
-- =====================================================

-- Constraint 1: Evitar que un ALUMNO (sección) tenga dos cursos al mismo tiempo
-- Esto previene que un estudiante tenga dos clases simultáneas
DO $$ 
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint 
        WHERE conname = 'no_horario_duplicado_seccion'
    ) THEN
        ALTER TABLE detalleseccionasignada
        ADD CONSTRAINT no_horario_duplicado_seccion 
        UNIQUE (id_seccion, id_horario, id_periodo, codigo_sede);
        
        RAISE NOTICE 'Constraint no_horario_duplicado_seccion creado exitosamente';
    ELSE
        RAISE NOTICE 'Constraint no_horario_duplicado_seccion ya existe';
    END IF;
END $$;

-- Constraint 2: Evitar que un DOCENTE tenga dos clases al mismo tiempo
DO $$ 
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint 
        WHERE conname = 'no_horario_duplicado_docente'
    ) THEN
        ALTER TABLE detalleseccionasignada
        ADD CONSTRAINT no_horario_duplicado_docente 
        UNIQUE (id_docente, id_horario, id_periodo, codigo_sede);
        
        RAISE NOTICE 'Constraint no_horario_duplicado_docente creado exitosamente';
    ELSE
        RAISE NOTICE 'Constraint no_horario_duplicado_docente ya existe';
    END IF;
END $$;

-- Constraint 3: Evitar que un AULA tenga dos clases al mismo tiempo
DO $$ 
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_constraint 
        WHERE conname = 'no_horario_duplicado_aula'
    ) THEN
        ALTER TABLE detalleseccionasignada
        ADD CONSTRAINT no_horario_duplicado_aula 
        UNIQUE (id_aula, id_horario, id_periodo, codigo_sede);
        
        RAISE NOTICE 'Constraint no_horario_duplicado_aula creado exitosamente';
    ELSE
        RAISE NOTICE 'Constraint no_horario_duplicado_aula ya existe';
    END IF;
END $$;

-- =====================================================
-- PASO 2: FUNCIÓN MEJORADA CON DISTRIBUCIÓN INTELIGENTE
-- =====================================================
CREATE OR REPLACE FUNCTION public.realizar_matricula_colegio(
	p_id_alumno integer,
	p_id_periodo integer,
	p_id_grado integer,
	p_tipo_matricula character varying DEFAULT 'Regular'::character varying,
	p_estado_matricula character varying DEFAULT 'Activa'::character varying,
	p_observaciones text DEFAULT NULL::text,
	p_usuario_registro character varying DEFAULT 'SISTEMA'::character varying,
	p_tipo_institucion character varying DEFAULT NULL::character varying)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
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
	v_tenant_id VARCHAR;
    v_horarios_por_curso INTEGER := 0;
    v_offset_horario INTEGER := 0;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede realizar matricula para esta sede.';
    END IF;
	
    IF p_id_alumno IS NULL OR p_id_periodo IS NULL OR p_id_grado IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Parámetros obligatorios faltantes'
        );
    END IF;

    -- Llamar a función base para crear matrícula
    SELECT public.realizar_matricula(
        p_id_alumno => p_id_alumno,
        p_id_periodo => p_id_periodo,
        p_id_grado => p_id_grado,
        p_tipo_matricula => p_tipo_matricula,
        p_estado_matricula => p_estado_matricula,
        p_observaciones => p_observaciones,
        p_usuario_registro => p_usuario_registro,
        p_tipo_institucion => p_tipo_institucion
    )
    INTO v_resultado;

    v_success := (v_resultado ->> 'success')::BOOLEAN;
    v_message := v_resultado ->> 'message';

    IF NOT v_success THEN
        RETURN json_build_object('success', false, 'message', 'Error en matrícula base: ' || v_message);
    END IF;

    v_id_matricula := (v_resultado ->> 'id_matricula')::INTEGER;
    v_id_seccion   := (v_resultado ->> 'id_seccion')::INTEGER;

    IF v_id_matricula IS NULL OR v_id_seccion IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'Error: No se obtuvieron IDs');
    END IF;

    v_debug_info := 'M:' || v_id_matricula || ',S:' || v_id_seccion || '. ';

    -- Asignar cursos y horarios
    FOR v_curso IN
        SELECT gc.id_curso, gc.es_obligatorio, c.codigo_curso, c.descripcion_curso
        FROM public.grado_curso gc
        INNER JOIN public.curso c ON gc.id_curso = c.id_curso
        WHERE gc."ID_GRADO" = p_id_grado AND gc.activo = true AND c.codigo_sede = v_tenant_id
          AND (p_tipo_institucion IS NULL OR gc.tipo_institucion = p_tipo_institucion)
        ORDER BY gc.orden_curso NULLS LAST, gc.id_curso
    LOOP
        BEGIN
            -- Insertar curso
            INSERT INTO matricula_curso (id_matricula, id_curso, id_seccion, tipo_asignacion, 
                estado_matricula_curso, fecha_asignacion, observaciones, activo, codigo_sede)
            VALUES (v_id_matricula, v_curso.id_curso, v_id_seccion, 'AUTOMATICA', 'ACTIVO', 
                CURRENT_TIMESTAMP, 
                CASE WHEN v_curso.es_obligatorio THEN 'Curso obligatorio - Grado ' || p_id_grado
                     ELSE 'Curso electivo - Grado ' || p_id_grado END,
                true, v_tenant_id);

            v_cursos_asignados := v_cursos_asignados + 1;
            v_debug_info := v_debug_info || v_curso.codigo_curso || ':';
            v_horarios_por_curso := 0;
            
            -- Asignar 1 horario por curso con distribución inteligente
            FOR v_horario IN
                SELECT DISTINCT h.id_horario, h.nombre_dia, h.hora_inicio, h.hora_fin, h.numero_dia
                FROM public.horario h
                WHERE h.codigo_sede = v_tenant_id
                  AND (h.fecha_inicio IS NULL OR h.fecha_inicio <= (SELECT fecha_fin FROM periodoacademico WHERE id_periodo = p_id_periodo))
                  AND (h.fecha_fin IS NULL OR h.fecha_fin >= (SELECT fecha_inicio FROM periodoacademico WHERE id_periodo = p_id_periodo))
                  -- Evitar horarios ya ocupados por esta sección
                  AND NOT EXISTS (
                    SELECT 1 FROM public.detalleseccionasignada dsa_check
                    WHERE dsa_check.id_seccion = v_id_seccion AND dsa_check.id_horario = h.id_horario
                      AND dsa_check.id_periodo = p_id_periodo AND dsa_check.codigo_sede = v_tenant_id
                  )
                ORDER BY h.numero_dia, h.hora_inicio
                OFFSET v_offset_horario 
                LIMIT 1  -- Solo 1 horario por curso
            LOOP
                BEGIN
                    INSERT INTO public.detalleseccionasignada 
                    (id_seccion, id_curso, id_horario, id_docente, id_periodo, id_aula, id_sede, turno, rol_docente, codigo_sede)
                    VALUES (
                        v_id_seccion, v_curso.id_curso, v_horario.id_horario,
                        -- Buscar docente disponible en este horario
                        COALESCE((SELECT d.id_docente FROM public.docente d
                                  WHERE d.codigo_sede = v_tenant_id
                                    AND NOT EXISTS (SELECT 1 FROM detalleseccionasignada dsa_doc
                                                    WHERE dsa_doc.id_docente = d.id_docente
                                                      AND dsa_doc.id_horario = v_horario.id_horario
                                                      AND dsa_doc.id_periodo = p_id_periodo
                                                      AND dsa_doc.codigo_sede = v_tenant_id)
                                  LIMIT 1), 1),
                        p_id_periodo,
                        -- Buscar aula disponible en este horario
                        COALESCE((SELECT a.id_aula FROM public.aula a
                                  WHERE a.codigo_sede = v_tenant_id
                                    AND NOT EXISTS (SELECT 1 FROM detalleseccionasignada dsa_aula
                                                    WHERE dsa_aula.id_aula = a.id_aula
                                                      AND dsa_aula.id_horario = v_horario.id_horario
                                                      AND dsa_aula.id_periodo = p_id_periodo
                                                      AND dsa_aula.codigo_sede = v_tenant_id)
                                  LIMIT 1), 1),
                        COALESCE((SELECT id_sede FROM public.sede WHERE codigo_sede = v_tenant_id), 1),
                        'MAÑANA', 'TITULAR', v_tenant_id
                    );
                    
                    v_horarios_asignados := v_horarios_asignados + 1;
                    v_horarios_por_curso := v_horarios_por_curso + 1;
                    v_debug_info := v_debug_info || v_horario.nombre_dia || '_' || v_horario.hora_inicio || ',';
                    
                EXCEPTION
                    WHEN unique_violation THEN
                        v_debug_info := v_debug_info || 'conflicto_' || v_horario.id_horario || ',';
                        CONTINUE;
                    WHEN OTHERS THEN
                        v_debug_info := v_debug_info || 'error_' || v_horario.id_horario || ',';
                        CONTINUE;
                END;
            END LOOP;

            -- Incrementar offset para el siguiente curso (1 posición)
            v_offset_horario := v_offset_horario + 1;
            v_debug_info := v_debug_info || v_horarios_por_curso || 'h. ';

        EXCEPTION
            WHEN OTHERS THEN
                v_debug_info := v_debug_info || 'ERR:' || SQLERRM || '. ';
                CONTINUE;
        END;
    END LOOP;

    IF v_cursos_asignados = 0 THEN
        RETURN json_build_object('success', false, 'message', 'No se pudieron asignar cursos', 'debug_info', v_debug_info);
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
            WHEN v_horarios_asignados = 0 THEN 'Sin horarios asignados'
            WHEN v_horarios_asignados < v_cursos_asignados THEN 'Matrícula exitosa. ' || v_horarios_asignados || ' de ' || v_cursos_asignados || ' cursos con horario.'
            ELSE 'Matrícula y horarios asignados exitosamente'
        END,
        'debug_info', v_debug_info
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object('success', false, 'message', 'Error: ' || SQLERRM, 'debug_info', v_debug_info);
END;
$BODY$;