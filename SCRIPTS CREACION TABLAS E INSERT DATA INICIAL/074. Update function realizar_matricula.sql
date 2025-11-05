BEGIN;

-- ============================================================================
-- PASO 0: Eliminar funciones existentes de realizar_matricula
-- ============================================================================
-- Necesitamos eliminar las funciones existentes antes de recrearlas
-- para evitar conflictos con valores por defecto
-- Las funciones existentes tienen valores por defecto, así que debemos eliminarlas
-- usando CASCADE para eliminar dependencias

-- Eliminar todas las variantes de realizar_matricula
DO $$
DECLARE
    func_record RECORD;
BEGIN
    FOR func_record IN 
        SELECT p.oid, pg_get_function_identity_arguments(p.oid) as args
        FROM pg_proc p
        JOIN pg_namespace n ON p.pronamespace = n.oid
        WHERE n.nspname = 'public' 
          AND p.proname = 'realizar_matricula'
    LOOP
        EXECUTE 'DROP FUNCTION IF EXISTS public.realizar_matricula(' || func_record.args || ') CASCADE';
    END LOOP;
END $$;

-- ============================================================================
-- ACTUALIZACIÓN 1: Función realizar_matricula (versión sin tipo_institucion)
-- ============================================================================
-- Eliminar validación de codigo_sede en grado

CREATE FUNCTION realizar_matricula(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR(255),
    p_tipo_matricula VARCHAR(50),
    p_estado_matricula VARCHAR(50),
    p_observaciones TEXT,
    p_usuario_registro VARCHAR(255)
)
RETURNS JSON
LANGUAGE plpgsql
AS $$
DECLARE
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
BEGIN
    -- Verificar si el alumno puede matricularse
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
    
    -- ACTUALIZADO: Verificar que grado existe (sin validar codigo_sede)
    IF NOT EXISTS (
        SELECT 1 FROM grado 
        WHERE "ID_GRADO" = p_id_grado
    ) THEN
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
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrícula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$$;

-- ============================================================================
-- ACTUALIZACIÓN 2: Función realizar_matricula (versión con tipo_institucion)
-- ============================================================================
CREATE FUNCTION realizar_matricula(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR(255),
    p_tipo_matricula VARCHAR(50),
    p_estado_matricula VARCHAR(50),
    p_observaciones TEXT,
    p_usuario_registro VARCHAR(255),
    p_tipo_institucion VARCHAR(20)
)
RETURNS JSON
LANGUAGE plpgsql
AS $$
DECLARE
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
    v_id_seccion INTEGER;
BEGIN
    -- Verificar si el alumno puede matricularse
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
    
    -- ACTUALIZADO: Verificar que grado existe (sin validar codigo_sede)
    IF NOT EXISTS (
        SELECT 1 FROM grado 
        WHERE "ID_GRADO" = p_id_grado
    ) THEN
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

    -- Buscar primera sección si tipo_institucion = 'c'
    IF p_tipo_institucion ILIKE 'c' THEN
        SELECT s.id_seccion
        INTO v_id_seccion
        FROM seccion s
        WHERE s.grado = p_id_grado::varchar
          AND s.codigo_sede = p_codigo_sede
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
$$;

COMMIT;
