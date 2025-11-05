CREATE OR REPLACE FUNCTION public.listar_alumnos_sede_paginado(
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_paginas integer;
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede listar alumnos de esta Sede.';
    END IF;
	
    SELECT COUNT(*) INTO total_paginas
    FROM alumno a
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = v_tenant_id 
      AND a.activo = true
      AND u.role = 'user';
	
    RETURN QUERY
    SELECT 
        a.id_alumno, 
        a.codigo_alumno, 
        a.nombre, 
        a.apellido_paterno, 
        a.apellido_materno,
        a.dni, 
        a.correo, 
        a.telefono, 
        a.direccion, 
        a.foto_perfil, 
        a.genero,
        a.tipo_alumno, 
        a.observaciones, 
        a.apoderado, 
        a.fecha_nacimiento, 
        a.id_grado, 
        a.habilitado_prueba,
        total_paginas AS total_resultados
    FROM alumno a
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = v_tenant_id 
      AND a.activo = true
      AND u.role = 'user'
    ORDER BY a.id_alumno
    LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;


CREATE OR REPLACE FUNCTION public.buscar_alumnos_paginado(
	filtro character varying,
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_registros integer;
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede listar alumnos de esta Sede.';
    END IF;
	
    -- Validar página mínima
    IF pagina < 1 THEN
        pagina := 1;
    END IF;
    -- Contar total de registros que coinciden
    SELECT COUNT(*) INTO total_registros
    FROM buscar_alumnos(v_tenant_id, filtro);

    -- Retornar datos paginados con total incluido
    RETURN QUERY
    SELECT 
        a.*,
        total_registros AS total_resultados
    FROM buscar_alumnos(v_tenant_id, filtro) a
    LIMIT cantidad_por_pagina 
    OFFSET (pagina - 1) * cantidad_por_pagina;
END;
$BODY$;

--nueva funcion para listar matriculas
CREATE OR REPLACE FUNCTION public.listar_matriculas()
RETURNS TABLE (
    "IdMatricula" INT,
    "IdAlumno" INT,
    "FechaInicio" DATE,
    "FechaFin" DATE,
    "TipoMatricula" VARCHAR,
    "EstadoMatricula" VARCHAR,
    "IdSeccion" INT,
    "Observaciones" VARCHAR,
    "Veces" INT,
    "IdPeriodo" INT,
    "IdGrado" INT,
    "CodigoSede" VARCHAR,
    "FechaMatricula" TIMESTAMP,
    "UsuarioRegistro" VARCHAR,
    "Activo" BOOLEAN,
    "NombreAlumno" VARCHAR,
    "ApellidoPaterno" VARCHAR,
    "ApellidoMaterno" VARCHAR,
    "DniAlumno" VARCHAR,
    "DescripcionGrado" VARCHAR,
    "NivelEducativo" VARCHAR,
    "DescripcionPeriodo" VARCHAR,
    "CodigoPeriodo" VARCHAR,
    "DescripcionSede" VARCHAR
)
AS $$
DECLARE
  v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se pudo listar matriculas.';
    END IF;
	
    RETURN QUERY
    SELECT 
        m.id_matricula as "IdMatricula",
        m.id_alumno as "IdAlumno",
        m.fecha_inicio as "FechaInicio",
        m.fecha_fin as "FechaFin",
        m.tipo_matricula as "TipoMatricula",
        m.estado_matricula as "EstadoMatricula",
        m.id_seccion as "IdSeccion",
        m.observaciones as "Observaciones",
        m.veces as "Veces",
        m.id_periodo as "IdPeriodo",
        m.id_grado as "IdGrado",
        m.codigo_sede as "CodigoSede",
        m.fecha_matricula as "FechaMatricula",
        m.usuario_registro as "UsuarioRegistro",
        m.activo as "Activo",
        a.nombre AS "NombreAlumno",
        a.apellido_paterno as "ApellidoPaterno",
        a.apellido_materno as "ApellidoMaterno",
        a.dni AS "DniAlumno",
        g."DESCRIPCION_GRADO" AS "DescripcionGrado",
        g."NIVEL_EDUCATIVO" AS "NivelEducativo",
        p.descripcion_periodo as "DescripcionPeriodo",
        p.codigo_periodo as "CodigoPeriodo",
        s.descripcion_sede as "DescripcionSede"
    FROM matricula m
    INNER JOIN alumno a ON m.id_alumno = a.id_alumno
    LEFT JOIN grado g ON m.id_grado = g."ID_GRADO"
    LEFT JOIN periodoacademico p ON m.id_periodo = p.id_periodo
    LEFT JOIN sede s ON m.codigo_sede = s.codigo_sede
    WHERE m.codigo_sede = v_tenant_id
      AND m.activo = TRUE
    ORDER BY m.fecha_matricula DESC;
END;
$$ LANGUAGE plpgsql;

DROP FUNCTION IF EXISTS public.verificar_matricula_alumno(integer, integer, character varying);
CREATE OR REPLACE FUNCTION public.verificar_matricula_alumno(
	p_id_alumno integer,
	p_id_periodo integer)
    RETURNS boolean
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$
DECLARE
    puede_matricularse BOOLEAN := TRUE;
    matricula_existente INTEGER;
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede realizar la verificacion del alumno de esta sede.';
    END IF;
	
    -- Verificar si ya tiene matrícula activa para el período (CORRECCIÓN: agregar filtro por sede)
    SELECT COUNT(*)
    INTO matricula_existente
    FROM matricula 
    WHERE id_alumno = p_id_alumno 
    AND id_periodo = p_id_periodo 
    AND activo = TRUE
    AND (v_tenant_id IS NULL OR codigo_sede = v_tenant_id);  -- CORRECCIÓN: Filtrar por sede si se proporciona
    
    IF matricula_existente > 0 THEN
        puede_matricularse := FALSE;
    END IF;
    
    RETURN puede_matricularse;
END;
$BODY$;

DROP FUNCTION IF EXISTS public.realizar_matricula(integer, integer, integer, character varying, character varying, character varying, text, character varying, character varying);
CREATE OR REPLACE FUNCTION public.realizar_matricula(
	p_id_alumno integer,
	p_id_periodo integer,
	p_id_grado integer,
	p_tipo_matricula character varying,
	p_estado_matricula character varying,
	p_observaciones text,
	p_usuario_registro character varying,
	p_tipo_institucion character varying)
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
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede realizar matricula para esta sede.';
    END IF;
	
    -- Verificar si el alumno puede matricularse
    SELECT verificar_matricula_alumno(p_id_alumno, p_id_periodo) 
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
        AND codigo_sede = v_tenant_id
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
        AND codigo_sede = v_tenant_id
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
    IF NOT EXISTS (SELECT 1 FROM sede WHERE codigo_sede = v_tenant_id) THEN
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
          AND s.codigo_sede = v_tenant_id
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
        v_tenant_id,
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
$BODY$;

DROP FUNCTION IF EXISTS public.realizar_matricula_colegio(integer, integer, integer, character varying, character varying, character varying, text, character varying, character varying);

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
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede realizar matricula para esta sede.';
    END IF;
	
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
          AND c.codigo_sede = v_tenant_id  -- CORRECCIÓN: Filtrar cursos por sede
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
                activo,
				codigo_sede
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
                true,
				v_tenant_id
            );

            v_cursos_asignados := v_cursos_asignados + 1;
            v_debug_info := v_debug_info || 'Curso asignado: ' || v_curso.codigo_curso || '. ';

            -- Buscar horarios existentes (CORRECCIÓN: filtrar por codigo_sede)
            FOR v_horario IN
                SELECT DISTINCT h.id_horario, h.nombre_dia, h.hora_inicio, h.hora_fin, 
				dsa.id_periodo, h.numero_dia, CASE WHEN dsa.id_periodo = p_id_periodo THEN 0 ELSE 1 END AS prioridad
                FROM public.horario h
                INNER JOIN public.detalleseccionasignada dsa ON h.id_horario = dsa.id_horario
                INNER JOIN public.matricula_curso mc ON dsa.id_curso = mc.id_curso
                INNER JOIN public.matricula m ON mc.id_matricula = m.id_matricula
                WHERE dsa.id_curso = v_curso.id_curso
                  AND m.id_grado = p_id_grado
                  AND dsa.codigo_sede = v_tenant_id  -- CORRECCIÓN: Filtrar por sede
                  AND (dsa.id_periodo = p_id_periodo OR dsa.id_periodo IN (
                      SELECT id_periodo 
                      FROM public.periodoacademico 
                      WHERE id_periodo < p_id_periodo 
                        AND codigo_sede = v_tenant_id  -- CORRECCIÓN: Filtrar por sede
                      ORDER BY id_periodo DESC 
                      LIMIT 3
                  ))
                ORDER BY 
                    prioridad,
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
                    COALESCE((SELECT id_docente FROM public.docente WHERE codigo_sede = v_tenant_id LIMIT 1), 1),
                    p_id_periodo, 
                    COALESCE((SELECT id_aula FROM public.aula WHERE codigo_sede = v_tenant_id LIMIT 1), 1),
                    COALESCE((SELECT id_sede FROM public.sede WHERE codigo_sede = v_tenant_id), 1),
                    'MAÑANA',
                    'TITULAR',
                    v_tenant_id  -- CORRECCIÓN: Establecer codigo_sede
                WHERE NOT EXISTS (
                    SELECT 1
                    FROM public.detalleseccionasignada
                    WHERE id_seccion = v_id_seccion
                      AND id_curso = v_curso.id_curso
                      AND id_horario = v_horario.id_horario
                      AND id_periodo = p_id_periodo
                      AND codigo_sede = v_tenant_id  -- CORRECCIÓN: Validar también por sede
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
                  AND codigo_sede = v_tenant_id  -- CORRECCIÓN: Validar por sede
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
            'codigo_sede', v_tenant_id,
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
            'codigo_sede', v_tenant_id,
            'debug_info', v_debug_info,
            'timestamp', CURRENT_TIMESTAMP
        );
END;
$BODY$;

CREATE OR REPLACE FUNCTION insertar_documento(
    p_id_categoria_documento INT,
    p_titulo VARCHAR,
    p_descripcion TEXT,
    p_documento TEXT,
    p_interno BOOLEAN,
    p_documento_descarga TEXT
)
RETURNS JSON
AS $$
DECLARE
    v_tenant_id VARCHAR;
BEGIN
    --Obtener el tenant de la sesión actual
    v_tenant_id := current_setting('app.current_tenant', true);

    --Validar que exista tenant
    IF v_tenant_id IS NULL THEN
        RETURN json_build_object(
            'success', FALSE,
            'message', 'No se puede realizar la operación: la sede no es válida.'
        );
    END IF;

    BEGIN
        INSERT INTO documentos (
            "ID_CATEGORIA_DOCUMENTO",
            "STATUS",
            "TITULO",
            "DESCRIPCION",
            "ENLACE",
            "SECUENCIA",
            "DATE_CREATED",
            "TIPO_DOCUMENTO",
            "MAS_BUSCADOS",
            "SECUENCIA_MAS_BUSCADA",
            "DOCUMENTO_VER",
            "INTERNO",
            "FECHA_ACTUALIZACION",
            "FECHA_INICIO",
            "FECHA_FIN",
            "DOCUMENTO_DESCARGA",
            "NOMBRE_DOCUMENTO",
            "TYPE",
            "codigo_sede"
        )
        VALUES (
            p_id_categoria_documento,
            'published',
            p_titulo,
            p_descripcion,
            NULL,                    -- enlace
            0,                       -- secuencia
            NOW(),
            'pdf',                   -- tipo_documento
            FALSE,
            0,
            p_documento,              -- documento_ver
            p_interno,
            NOW(),
            NOW(),
            NOW(),
            p_documento_descarga,
            p_titulo,                -- nombre_documento
            'application/pdf',
            v_tenant_id
        );

        RETURN json_build_object(
            'success', TRUE,
            'message', 'Documento insertado correctamente.'
        );

    EXCEPTION
        WHEN OTHERS THEN
            RAISE NOTICE 'Error: %', SQLERRM;
            RETURN json_build_object(
                'success', FALSE,
                'message', CONCAT('Error al insertar documento: ', SQLERRM)
            );
    END;
END;
$$ LANGUAGE plpgsql;