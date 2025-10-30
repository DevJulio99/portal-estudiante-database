--correccion de textos para realizar_matricula_anual
-- se añadio a la funcion realizar_matricula_anual una validacion para comprobar si existe alumno
CREATE OR REPLACE FUNCTION public.realizar_matricula_anual(
	p_id_alumno integer,
	p_anio integer,
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
    id_periodo_anual INTEGER;
    resultado JSON;
	existe_alumno BOOLEAN;
BEGIN
    -- Verificar si existe el alumno
    SELECT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno
    ) INTO existe_alumno;
    
    IF NOT existe_alumno THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno con ID ' || p_id_alumno || ' no existe.',
            'id_matricula', NULL
        );
    END IF;
	
    -- Buscar el período anual
    SELECT id_periodo INTO id_periodo_anual
    FROM periodoacademico 
    WHERE tipo_periodo = 'Año' 
    AND anio = p_anio
    AND estado_periodo = 'Activo';
    
    IF id_periodo_anual IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No existe período académico anual para el año ' || p_anio,
            'id_matricula', NULL
        );
    END IF;
    
    -- Realizar la matrícula usando la función existente
    SELECT realizar_matricula(
        p_id_alumno, 
        id_periodo_anual, 
        p_id_grado, 
        p_codigo_sede, 
        p_tipo_matricula, 
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro
    ) INTO resultado;
    
    RETURN resultado;
END;
$BODY$;

--se modifica metodo para realizar matricula para que busque seccion de acuerdo al grado
CREATE OR REPLACE FUNCTION public.realizar_matricula(
	p_id_alumno integer,
	p_id_periodo integer,
	p_id_grado integer,
	p_codigo_sede character varying,
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
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
    v_id_seccion INTEGER;
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

     -- Buscar primera sección si tipo_institucion = 'c'
    IF p_tipo_institucion ILIKE 'c' THEN
        SELECT s.id_seccion
        INTO v_id_seccion
        FROM seccion s
        WHERE s.grado = p_id_grado::varchar
        ORDER BY s.id_seccion
        LIMIT 1;

        IF v_id_seccion IS NULL THEN
            RETURN json_build_object(
                'success', false,
                'message', 'No se encontró ninguna sección válida para este grado',
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
        -- En caso de error, retornar mensaje de error
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrícula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$BODY$;

--correccion de caracteres


DO $$
DECLARE
  r RECORD;
  v_sql text;
BEGIN
  FOR r IN
    SELECT table_name, column_name
    FROM information_schema.columns
    WHERE table_schema = 'public'
      AND table_name IN ('calendario_academico', 'competencia', 'documentos', 'eventos', 'grado', 'periodoacademico', 'pregunta', 'ubicaciones_evento')
      AND data_type IN ('text', 'character varying')
  LOOP
    BEGIN
      v_sql := format(
        'UPDATE public.%I
         SET %I = convert_from(convert_to(%I, ''LATIN1''), ''UTF8'')
         WHERE %I ILIKE ''%%Ã%%'';',
        r.table_name, r.column_name, r.column_name, r.column_name
      );

      RAISE NOTICE 'Corrigiendo: %.%', r.table_name, r.column_name;

      EXECUTE v_sql;

    EXCEPTION
      WHEN others THEN
        RAISE NOTICE 'Saltando columna %.% (caracteres no convertibles)', r.table_name, r.column_name;
        CONTINUE;
    END;
  END LOOP;
END $$;

-- NOTICE:  Corrigiendo: calendario_academico.actividad
-- NOTICE:  Corrigiendo: calendario_academico.modalidad_estudios
-- NOTICE:  Corrigiendo: periodoacademico.codigo_periodo
-- NOTICE:  Corrigiendo: periodoacademico.descripcion_periodo
-- NOTICE:  Corrigiendo: periodoacademico.tipo_periodo
-- NOTICE:  Corrigiendo: periodoacademico.estado_periodo
-- NOTICE:  Corrigiendo: documentos.STATUS
-- NOTICE:  Corrigiendo: documentos.TITULO
-- NOTICE:  Corrigiendo: documentos.DESCRIPCION
-- NOTICE:  Corrigiendo: documentos.ENLACE
-- NOTICE:  Corrigiendo: documentos.TIPO_DOCUMENTO
-- NOTICE:  Corrigiendo: documentos.DOCUMENTO_VER
-- NOTICE:  Corrigiendo: documentos.DOCUMENTO_DESCARGA
-- NOTICE:  Corrigiendo: documentos.NOMBRE_DOCUMENTO
-- NOTICE:  Corrigiendo: documentos.TYPE
-- NOTICE:  Corrigiendo: grado.DESCRIPCION_GRADO
-- NOTICE:  Corrigiendo: grado.NIVEL_EDUCATIVO
-- NOTICE:  Corrigiendo: grado.tipo_institucion
-- NOTICE:  Corrigiendo: grado.carrera
-- NOTICE:  Corrigiendo: grado.codigo_carrera
-- NOTICE:  Corrigiendo: competencia.NOMBRE_COMPETENCIA
-- NOTICE:  Saltando columna competencia.NOMBRE_COMPETENCIA (caracteres no convertibles)
-- NOTICE:  Corrigiendo: competencia.DESCRIPCION
-- NOTICE:  Corrigiendo: competencia.ESTADO_COMPETENCIA
-- NOTICE:  Corrigiendo: competencia.URL_IMAGEN
-- NOTICE:  Corrigiendo: pregunta.TIPO_EVALUACION
-- NOTICE:  Saltando columna pregunta.TIPO_EVALUACION (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.GRUPO
-- NOTICE:  Corrigiendo: pregunta.TEXTO_TITULO
-- NOTICE:  Saltando columna pregunta.TEXTO_TITULO (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.TEXTO_SUPERIOR
-- NOTICE:  Saltando columna pregunta.TEXTO_SUPERIOR (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.TEXTO_IMAGEN
-- NOTICE:  Corrigiendo: pregunta.TEXTO_INFERIOR
-- NOTICE:  Corrigiendo: pregunta.PREGUNTA
-- NOTICE:  Saltando columna pregunta.PREGUNTA (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.OPCION_A
-- NOTICE:  Corrigiendo: pregunta.OPCION_B
-- NOTICE:  Saltando columna pregunta.OPCION_B (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.OPCION_C
-- NOTICE:  Saltando columna pregunta.OPCION_C (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.OPCION_D
-- NOTICE:  Saltando columna pregunta.OPCION_D (caracteres no convertibles)
-- NOTICE:  Corrigiendo: pregunta.TEMA
-- NOTICE:  Corrigiendo: eventos.TITULO
-- NOTICE:  Corrigiendo: eventos.IMAGEN_DESKTOP
-- NOTICE:  Corrigiendo: eventos.IMAGEN_MOBILE
-- NOTICE:  Corrigiendo: eventos.ALT_IMAGEN_DESKTOP
-- NOTICE:  Corrigiendo: eventos.ALT_IMAGEN_MOBILE
-- NOTICE:  Corrigiendo: eventos.URL
-- NOTICE:  Corrigiendo: eventos.TIPO_DE_EVENTO
-- NOTICE:  Corrigiendo: eventos.CATEGORIA_EVENTO
-- NOTICE:  Corrigiendo: eventos.NOMBRE_BOTON
-- NOTICE:  Corrigiendo: eventos.DESCRIPCION
-- NOTICE:  Corrigiendo: ubicaciones_evento.DIRECCION
-- NOTICE:  Corrigiendo: ubicaciones_evento.NOMBRE
-- NOTICE:  Corrigiendo: ubicaciones_evento.URL
-- NOTICE:  Corrigiendo: ubicaciones_evento.URL_MOBILE
-- DO