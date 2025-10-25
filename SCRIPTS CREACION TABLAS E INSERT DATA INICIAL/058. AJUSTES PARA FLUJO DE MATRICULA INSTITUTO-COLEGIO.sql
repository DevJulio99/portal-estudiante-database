--se elimino validacion por tipo de tipo_institucion
CREATE OR REPLACE FUNCTION public.realizar_matricula(
	p_id_alumno integer,
	p_id_periodo integer,
	p_id_grado integer,
	p_codigo_sede character varying,
	p_tipo_matricula character varying DEFAULT 'Regular'::character varying,
	p_estado_matricula character varying DEFAULT 'Activa'::character varying,
	p_observaciones text DEFAULT NULL::text,
	p_usuario_registro character varying DEFAULT 'SISTEMA'::character varying)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$


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
            'message', 'El alumno ya tiene una matrÃƒÂ­cula activa para este perÃƒÂ­odo acadÃƒÂ©mico',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el alumno existe
    IF NOT EXISTS (SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = true) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe o estÃƒÂ¡ inactivo',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el perÃƒÂ­odo existe
    IF NOT EXISTS (SELECT 1 FROM periodoacademico WHERE id_periodo = p_id_periodo) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El perÃƒÂ­odo acadÃƒÂ©mico no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que grado exista
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
    
    -- Insertar la matrÃƒÂ­cula
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
        'message', 'MatrÃƒÂ­cula realizada exitosamente',
        'id_matricula', nuevo_id_matricula,
        'fecha_matricula', CURRENT_TIMESTAMP
    );
    
EXCEPTION
    WHEN OTHERS THEN
        -- En caso de error, retornar mensaje de error
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrÃƒÂ­cula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$BODY$;

--nueva funcion para matricular colegios

CREATE OR REPLACE FUNCTION public.realizar_matricula_colegio(
    p_id_alumno INTEGER,
    p_id_periodo INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR,
    p_tipo_matricula VARCHAR DEFAULT 'Regular',
    p_estado_matricula VARCHAR DEFAULT 'Activa',
    p_observaciones TEXT DEFAULT NULL,
    p_usuario_registro VARCHAR DEFAULT 'SISTEMA'
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
BEGIN
    --Llamar a la función existente
    SELECT public.realizar_matricula(
        p_id_alumno,
        p_id_periodo,
        p_id_grado,
        p_codigo_sede,
        p_tipo_matricula,
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro
    )
    INTO v_resultado;

    --Evaluar el resultado
    v_success := (v_resultado ->> 'success')::BOOLEAN;
    v_message := v_resultado ->> 'message';

    IF NOT v_success THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error en la matrícula: ' || v_message,
            'detalles', v_resultado
        );
    END IF;

    v_id_matricula := (v_resultado ->> 'id_matricula')::INTEGER;

    --Obtener cursos del grado directamente de grado_curso
    FOR v_curso IN
        SELECT id_curso
        FROM public.grado_curso
        WHERE "ID_GRADO" = p_id_grado
    LOOP
        --Buscar una sección asociada al curso
        SELECT dsa.id_seccion
        INTO v_id_seccion
        FROM detalleseccionasignada dsa
        WHERE dsa.id_curso = v_curso.id_curso
        LIMIT 1;

        -- Si no hay sección, continuar con el siguiente curso
        IF v_id_seccion IS NULL THEN
            RAISE NOTICE 'No se encontró sección para el curso %', v_curso.id_curso;
            CONTINUE;
        END IF;

        --Insertar en matricula_curso
        INSERT INTO matricula_curso (
            id_matricula,
            id_curso,
            id_seccion,
            tipo_asignacion
        ) VALUES (
            v_id_matricula,
            v_curso.id_curso,
            v_id_seccion,
            'AUTOMATICA'
        );

        v_cursos_asignados := v_cursos_asignados + 1;
    END LOOP;

    --Retornar resultado exitoso con ID y conteo
    RETURN json_build_object(
        'success', true,
        'message', 'Matrícula completa realizada exitosamente',
        'id_matricula', v_id_matricula,
        'cursos_asignados', v_cursos_asignados,
        'fecha_matricula', CURRENT_TIMESTAMP
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar matrícula completa: ' || SQLERRM
        );
END;
$$;