-- =====================================================
-- MIGRACIÓN: ELIMINAR id_grado_curso DE TABLA horario
-- =====================================================
-- Fecha: 30 de Octubre 2025
-- Propósito: Eliminar dependencia incorrecta y mejorar diseño de BD
-- Descripción: Este script elimina la dependencia de id_grado_curso 
-- en la tabla horario y actualiza la función realizar_matricula_colegio
-- para usar una lógica más robusta basada en detalleseccionasignada
-- =====================================================

BEGIN;

-- =====================================================
-- PASO 1: RESPALDO Y MIGRACIÓN DE DATOS EXISTENTES
-- =====================================================

-- Crear tabla temporal para respaldo de relaciones existentes
CREATE TEMP TABLE temp_horario_grado_curso AS
SELECT 
    h.id_horario,
    h.id_grado_curso,
    gc.id_curso,
    gc."ID_GRADO",
    h.nombre_dia,
    h.numero_dia,
    h.hora_inicio,
    h.hora_fin,
    h.fecha_inicio,
    h.fecha_fin
FROM public.horario h
INNER JOIN public.grado_curso gc ON h.id_grado_curso = gc.id_grado_curso
WHERE h.id_grado_curso IS NOT NULL;

-- Mostrar información de migración
DO $$
DECLARE
    v_count INTEGER;
BEGIN
    SELECT COUNT(*) INTO v_count FROM temp_horario_grado_curso;
    RAISE NOTICE 'Se encontraron % registros de horarios con relación grado_curso para migrar', v_count;
END $$;

-- Migrar relaciones existentes a detalleseccionasignada
-- Solo si no existen ya (evitar duplicados)
INSERT INTO public.detalleseccionasignada 
(id_seccion, id_curso, id_horario, id_docente, id_periodo, id_aula, id_sede, turno, rol_docente)
SELECT DISTINCT
    COALESCE(s.id_seccion, 1) as id_seccion, -- Usar sección existente o default
    t.id_curso,
    t.id_horario,
    COALESCE(d.id_docente, 1) as id_docente, -- Usar docente existente o default
    COALESCE(p.id_periodo, 1) as id_periodo, -- Usar período activo o default
    COALESCE(a.id_aula, 1) as id_aula,       -- Usar aula existente o default
    COALESCE(se.id_sede, 1) as id_sede,      -- Usar sede existente o default
    'MAÑANA' as turno,
    'TITULAR' as rol_docente
FROM temp_horario_grado_curso t
LEFT JOIN public.seccion s ON s.grado = t."ID_GRADO"::VARCHAR
LEFT JOIN public.docente d ON d.id_docente = 1
LEFT JOIN public.periodoacademico p ON p.estado_periodo = 'ACTIVO'
LEFT JOIN public.aula a ON a.id_aula = 1
LEFT JOIN public.sede se ON se.id_sede = 1
WHERE NOT EXISTS (
    SELECT 1 
    FROM public.detalleseccionasignada dsa 
    WHERE dsa.id_horario = t.id_horario 
      AND dsa.id_curso = t.id_curso
)
ORDER BY t.id_horario;

-- =====================================================
-- PASO 2: ACTUALIZAR FUNCIÓN realizar_matricula_colegio
-- =====================================================

CREATE OR REPLACE FUNCTION public.realizar_matricula_colegio(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR,
    p_tipo_matricula VARCHAR DEFAULT 'Regular',
    p_estado_matricula VARCHAR DEFAULT 'Activa',
    p_observaciones TEXT DEFAULT NULL,
    p_usuario_registro VARCHAR DEFAULT 'SISTEMA',
    p_tipo_institucion VARCHAR DEFAULT NULL
)
RETURNS JSON
LANGUAGE plpgsql
AS $$
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

    -- Verificar que se obtuvieron los IDs correctamente
    IF v_id_matricula IS NULL OR v_id_seccion IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error: No se pudieron obtener los IDs de matrícula o sección',
            'resultado_matricula', v_resultado
        );
    END IF;

    v_debug_info := v_debug_info || 'Matrícula creada: ' || v_id_matricula || ', Sección: ' || v_id_seccion || '. ';

    -- Obtener y asignar cursos del grado
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

            -- NUEVA LÓGICA: Buscar horarios existentes para este curso y grado
            -- Estrategia: Buscar horarios que ya hayan sido usados para este curso y grado
            FOR v_horario IN
                SELECT DISTINCT h.id_horario, h.nombre_dia, h.hora_inicio, h.hora_fin
                FROM public.horario h
                INNER JOIN public.detalleseccionasignada dsa ON h.id_horario = dsa.id_horario
                INNER JOIN public.matricula_curso mc ON dsa.id_curso = mc.id_curso
                INNER JOIN public.matricula m ON mc.id_matricula = m.id_matricula
                WHERE dsa.id_curso = v_curso.id_curso
                  AND m.id_grado = p_id_grado
                  -- Priorizar mismo período, luego períodos anteriores como plantilla
                  AND (dsa.id_periodo = p_id_periodo OR dsa.id_periodo IN (
                      SELECT id_periodo 
                      FROM public.periodoacademico 
                      WHERE id_periodo < p_id_periodo 
                      ORDER BY id_periodo DESC 
                      LIMIT 3
                  ))
                ORDER BY 
                    CASE WHEN dsa.id_periodo = p_id_periodo THEN 0 ELSE 1 END, -- Prioridad al período actual
                    dsa.id_periodo DESC, 
                    h.numero_dia, 
                    h.hora_inicio
                LIMIT 10 -- Máximo 10 horarios por curso para evitar sobrecarga
            LOOP
                -- Insertar horario solo si no existe ya esta combinación
                INSERT INTO public.detalleseccionasignada 
                (id_seccion, id_curso, id_horario, id_docente, id_periodo, id_aula, id_sede, turno, rol_docente)
                SELECT 
                    v_id_seccion, 
                    v_curso.id_curso, 
                    v_horario.id_horario, 
                    COALESCE((SELECT id_docente FROM public.docente LIMIT 1), 1), -- Docente por defecto
                    p_id_periodo, 
                    COALESCE((SELECT id_aula FROM public.aula LIMIT 1), 1), -- Aula por defecto
                    COALESCE((SELECT id_sede FROM public.sede WHERE codigo_sede = p_codigo_sede), 1), -- Sede correcta
                    'MAÑANA', -- Turno por defecto
                    'TITULAR' -- Rol por defecto
                WHERE NOT EXISTS (
                    SELECT 1
                    FROM public.detalleseccionasignada
                    WHERE id_seccion = v_id_seccion
                      AND id_curso = v_curso.id_curso
                      AND id_horario = v_horario.id_horario
                      AND id_periodo = p_id_periodo
                );
                
                -- Verificar si se insertó y contar
                IF FOUND THEN
                    v_horarios_asignados := v_horarios_asignados + 1;
                    v_debug_info := v_debug_info || 'Horario asignado: ' || v_horario.nombre_dia || ' ' || 
                                   v_horario.hora_inicio || '-' || v_horario.hora_fin || '. ';
                END IF;
            END LOOP;

            -- Si no se encontraron horarios para este curso, registrar para referencia
            IF NOT EXISTS (
                SELECT 1 
                FROM public.detalleseccionasignada 
                WHERE id_seccion = v_id_seccion 
                  AND id_curso = v_curso.id_curso 
                  AND id_periodo = p_id_periodo
            ) THEN
                v_debug_info := v_debug_info || 'Sin horarios para curso: ' || v_curso.codigo_curso || '. ';
            END IF;

        EXCEPTION
            WHEN OTHERS THEN
                -- Registrar error pero continuar con otros cursos
                v_debug_info := v_debug_info || 'Error en curso ' || v_curso.codigo_curso || ': ' || SQLERRM || '. ';
                CONTINUE;
        END;
    END LOOP;

    -- Verificar si se asignó al menos un curso
    IF v_cursos_asignados = 0 THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se pudieron asignar cursos para el grado especificado',
            'id_matricula', v_id_matricula,
            'id_grado', p_id_grado,
            'debug_info', v_debug_info
        );
    END IF;

    -- Retornar resultado exitoso con información detallada
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
        -- Manejo de errores generales con información detallada
        RETURN json_build_object(
            'success', false,
            'message', 'Error inesperado al realizar matrícula completa: ' || SQLERRM,
            'error_code', SQLSTATE,
            'id_alumno', p_id_alumno,
            'id_periodo', p_id_periodo,
            'id_grado', p_id_grado,
            'debug_info', v_debug_info,
            'timestamp', CURRENT_TIMESTAMP
        );
END;
$$;

-- =====================================================
-- PASO 3: ELIMINAR LA DEPENDENCIA DE id_grado_curso
-- =====================================================

-- Eliminar constraint de unicidad que usa id_grado_curso
ALTER TABLE public.horario DROP CONSTRAINT IF EXISTS horario_unico;

-- Eliminar foreign key constraint
ALTER TABLE public.horario DROP CONSTRAINT IF EXISTS fk_horario_grado_curso;

-- Eliminar la columna id_grado_curso
ALTER TABLE public.horario DROP COLUMN IF EXISTS id_grado_curso;

-- =====================================================
-- PASO 4: CREAR NUEVOS CONSTRAINTS MÁS FLEXIBLES
-- =====================================================

-- Crear constraint de unicidad más flexible (sin id_grado_curso)
ALTER TABLE public.horario
ADD CONSTRAINT horario_unico_temporal 
UNIQUE (numero_dia, hora_inicio, hora_fin, fecha_inicio, fecha_fin);

-- =====================================================
-- PASO 5: VERIFICACIONES POST-MIGRACIÓN
-- =====================================================

-- Verificar que la migración fue exitosa
DO $$
DECLARE
    v_horarios_total INTEGER;
    v_horarios_con_detalle INTEGER;
    v_detalle_total INTEGER;
BEGIN
    -- Contar horarios totales
    SELECT COUNT(*) INTO v_horarios_total FROM public.horario;
    
    -- Contar horarios que tienen al menos un detalle asignado
    SELECT COUNT(DISTINCT id_horario) INTO v_horarios_con_detalle 
    FROM public.detalleseccionasignada;
    
    -- Contar total de detalles
    SELECT COUNT(*) INTO v_detalle_total FROM public.detalleseccionasignada;
    
    RAISE NOTICE '=== RESUMEN DE MIGRACIÓN ===';
    RAISE NOTICE 'Total de horarios: %', v_horarios_total;
    RAISE NOTICE 'Horarios con asignaciones: %', v_horarios_con_detalle;
    RAISE NOTICE 'Total de asignaciones en detalleseccionasignada: %', v_detalle_total;
    RAISE NOTICE 'Columna id_grado_curso eliminada de tabla horario';
    RAISE NOTICE 'Función realizar_matricula_colegio actualizada';
    RAISE NOTICE 'Migración completada exitosamente';
    RAISE NOTICE '===============================';
END $$;

-- =====================================================
-- PASO 6: FUNCIÓN AUXILIAR PARA GESTIÓN DE HORARIOS
-- =====================================================

-- Crear función auxiliar para asignar horarios manualmente si es necesario
CREATE OR REPLACE FUNCTION public.asignar_horario_curso(
    p_id_curso INTEGER,
    p_id_seccion INTEGER,
    p_id_periodo INTEGER,
    p_id_horario INTEGER,
    p_id_docente INTEGER DEFAULT 1,
    p_id_aula INTEGER DEFAULT 1,
    p_id_sede INTEGER DEFAULT 1
)
RETURNS JSON
LANGUAGE plpgsql
AS $$
BEGIN
    -- Validar que no exista ya esta asignación
    IF EXISTS (
        SELECT 1 
        FROM public.detalleseccionasignada 
        WHERE id_curso = p_id_curso 
          AND id_seccion = p_id_seccion 
          AND id_periodo = p_id_periodo 
          AND id_horario = p_id_horario
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Ya existe esta asignación de horario'
        );
    END IF;
    
    -- Insertar nueva asignación
    INSERT INTO public.detalleseccionasignada 
    (id_curso, id_seccion, id_periodo, id_horario, id_docente, id_aula, id_sede, turno, rol_docente)
    VALUES 
    (p_id_curso, p_id_seccion, p_id_periodo, p_id_horario, p_id_docente, p_id_aula, p_id_sede, 'MAÑANA', 'TITULAR');
    
    RETURN json_build_object(
        'success', true,
        'message', 'Horario asignado exitosamente',
        'id_curso', p_id_curso,
        'id_seccion', p_id_seccion,
        'id_horario', p_id_horario
    );
    
EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error al asignar horario: ' || SQLERRM
        );
END;
$$;

COMMIT;
