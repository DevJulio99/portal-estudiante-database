--actualizacion de funcion para traer notas
DROP FUNCTION IF EXISTS public.obtener_notas_por_curso_subperiodo(integer, integer, character varying, character varying);

CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_subperiodo(
    p_id_alumno integer,
    p_anio integer,
    p_cod_curso character varying,
    p_cod_subperiodo character varying
)
RETURNS json
LANGUAGE plpgsql
AS $BODY$
DECLARE
    v_codigo_sede VARCHAR(20);
    v_resultado JSON;
BEGIN
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    -- Validar sede
    IF v_codigo_sede IS NULL OR v_codigo_sede = '' THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se ha establecido el codigo_sede del tenant.'
        );
    END IF;

    -- Obtener los datos como un arreglo JSON
    SELECT json_agg(fila ORDER BY fila->>'cod_periodo', fila->>'cod_subperiodo')
    INTO v_resultado
    FROM (
        SELECT json_build_object(
            'alumno', a.nombre,
            'ApellidoPaterno', a.apellido_paterno,
            'ApellidoMaterno', a.apellido_materno,
            'CodigoCurso', c.codigo_curso,
            'DescripcionCurso', c.descripcion_curso,
            'CodigoPeriodo', pa.codigo_periodo,
            'DescripcionPeriodo', pa.descripcion_periodo,
            'CodigoSubperiodo', sp.codigo_subperiodo,
            'descripcion_subperiodo', sp.descripcion_subperiodo,
            'nota', n.nota,
            'peso', n.peso,
            'tipoNota', n.tipo_nota
        ) AS fila
        FROM 
            notas n
        INNER JOIN alumno a ON n.id_alumno = a.id_alumno
        INNER JOIN curso c ON n.id_curso = c.id_curso
        INNER JOIN periodoacademico pa ON n.id_periodo = pa.id_periodo
        INNER JOIN subperiodos sp ON n.id_subperiodo = sp.id_subperiodo
        WHERE 
            n.id_alumno = p_id_alumno
            --AND pa.anio = p_anio
            AND c.codigo_curso = p_cod_curso
            AND sp.codigo_subperiodo = p_cod_subperiodo
            AND n.codigo_sede = v_codigo_sede
    ) AS sub;

    IF v_resultado IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se encontraron registros para los parámetros indicados.'
        );
    END IF;

    RETURN json_build_object(
        'success', true,
        'data', v_resultado
    );

END;
$BODY$;

CREATE OR REPLACE FUNCTION public.gestionar_notas(
	p_id_alumno integer,
	p_id_curso integer,
	p_id_periodo integer,
	p_json_actualizar_notas json DEFAULT '[]'::json,
	p_json_insertar_notas json DEFAULT '[]'::json,
	p_id_subperiodo integer DEFAULT NULL::integer)
    RETURNS json
    LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_tipo_institucion CHAR(1);
    v_matricula_curso_id INT;
    v_peso_existente NUMERIC(4,2);
    v_peso_total NUMERIC(4,2);
    v_peso_actual_nota NUMERIC(4,2);
    v_nota JSON;
    v_codigo_sede VARCHAR(20);

    v_id_nota INT;
    v_tipo_nota TEXT;
    v_nota_valor NUMERIC(4,2);
    v_peso NUMERIC(4,2);

    v_insertadas INT := 0;
    v_actualizadas INT := 0;
BEGIN
    --------------------------------------------------------------------
    -- Obtener codigo_sede del tenant actual
    --------------------------------------------------------------------
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    IF v_codigo_sede IS NULL OR v_codigo_sede = '' THEN
        RETURN json_build_object('success', false, 'message', 'No se ha establecido el codigo_sede del tenant.');
    END IF;

    --------------------------------------------------------------------
    --Validar alumno activo
    --------------------------------------------------------------------
    SELECT tipo_institucion
    INTO v_tipo_institucion
    FROM alumno 
    WHERE id_alumno = p_id_alumno 
      AND activo = TRUE
      AND codigo_sede = v_codigo_sede;

    IF v_tipo_institucion IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no existe, no está activo o no pertenece a esta sede.');
    END IF;

    --------------------------------------------------------------------
    --Validar matrícula activa
    --------------------------------------------------------------------
    SELECT mc.id_matricula_curso
    INTO v_matricula_curso_id
    FROM matricula_curso mc
    JOIN matricula m ON mc.id_matricula = m.id_matricula
    WHERE mc.id_curso = p_id_curso
      AND m.id_alumno = p_id_alumno
      AND mc.estado_matricula_curso = 'ACTIVO'
      AND m.activo = TRUE
      AND m.codigo_sede = v_codigo_sede
    LIMIT 1;

    IF v_matricula_curso_id IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no está matriculado en este curso.');
    END IF;

    --------------------------------------------------------------------
    --Validar tipo de institución vs subperiodo
    --------------------------------------------------------------------
    IF v_tipo_institucion = 'I' AND p_id_subperiodo IS NOT NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los institutos no deben registrar subperiodos.');
    END IF;

    IF v_tipo_institucion = 'C' AND p_id_subperiodo IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los colegios deben registrar un subperiodo.');
    END IF;

    --------------------------------------------------------------------
    --Si no hay datos a procesar
    --------------------------------------------------------------------
    IF (p_json_actualizar_notas IS NULL OR json_array_length(p_json_actualizar_notas) = 0)
       AND (p_json_insertar_notas IS NULL OR json_array_length(p_json_insertar_notas) = 0) THEN
        RETURN json_build_object(
            'success', true,
            'message', 'No se recibieron notas para actualizar o insertar.'
        );
    END IF;

    --------------------------------------------------------------------
    --Calcular peso actual existente
    --------------------------------------------------------------------
    SELECT COALESCE(SUM(peso),0)
    INTO v_peso_existente
    FROM notas
    WHERE id_alumno = p_id_alumno
      AND id_curso = p_id_curso
      AND id_periodo = p_id_periodo
      AND codigo_sede = v_codigo_sede
      AND tipo_nota <> 'Promedio Final'
      AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0);

    --------------------------------------------------------------------
    --Paso 1: Actualizar notas existentes
    --------------------------------------------------------------------
    FOR v_nota IN SELECT * FROM json_array_elements(p_json_actualizar_notas)
    LOOP
        v_id_nota := (v_nota->>'id_nota')::INT;
        v_tipo_nota := TRIM(v_nota->>'tipo_nota');
        v_nota_valor := (v_nota->>'nota')::NUMERIC(4,2);
        v_peso := (v_nota->>'peso')::NUMERIC(4,2);

        --Validaciones
        IF v_id_nota IS NULL OR v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en nota a actualizar: %', v_nota;
        END IF;

        --Validar que tipo_nota no sea cadena vacía
        IF TRIM(v_tipo_nota) = '' THEN
            RAISE EXCEPTION 'El campo Tipo de nota no puede estar vacío en nota';
        END IF;

        IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
        END IF;

        SELECT peso INTO v_peso_actual_nota
        FROM notas
        WHERE id_nota = v_id_nota
          AND id_alumno = p_id_alumno
          AND id_curso = p_id_curso
          AND id_periodo = p_id_periodo
          AND codigo_sede = v_codigo_sede
          AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
        LIMIT 1;

        IF v_peso_actual_nota IS NULL THEN
            RAISE EXCEPTION 'No existe la nota con id % para este alumno en esta sede.', v_id_nota;
        END IF;

        v_peso_existente := v_peso_existente - v_peso_actual_nota + v_peso;

        IF v_peso_existente > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%.2f) excede el máximo permitido (1.00).', v_peso_existente;
        END IF;

        UPDATE notas
        SET tipo_nota = INITCAP(v_tipo_nota),
            nota = v_nota_valor,
            peso = v_peso
        WHERE id_nota = v_id_nota
          AND codigo_sede = v_codigo_sede;

        v_actualizadas := v_actualizadas + 1;
    END LOOP;

    --------------------------------------------------------------------
    --Paso 2: Insertar nuevas notas
    --------------------------------------------------------------------
    FOR v_nota IN SELECT * FROM json_array_elements(p_json_insertar_notas)
    LOOP
        v_tipo_nota := TRIM(LOWER(v_nota->>'tipo_nota'));
        v_nota_valor := (v_nota->>'nota')::NUMERIC(4,2);
        v_peso := (v_nota->>'peso')::NUMERIC(4,2);

        --Validaciones
        IF v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en la nota a insertar: %', v_nota;
        END IF;

        --Validar que tipo_nota no sea cadena vacía
        IF TRIM(v_tipo_nota) = '' THEN
            RAISE EXCEPTION 'El campo Tipo de nota no puede estar vacío en nota';
        END IF;

        IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
        END IF;

        IF EXISTS (
            SELECT 1 FROM notas
            WHERE id_alumno = p_id_alumno
              AND id_curso = p_id_curso
              AND id_periodo = p_id_periodo
              AND codigo_sede = v_codigo_sede
              AND LOWER(tipo_nota) = v_tipo_nota
              AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
        ) THEN
            RAISE EXCEPTION 'Ya existe una nota "%" para este alumno en esta sede.', v_tipo_nota;
        END IF;

        v_peso_total := v_peso_existente + v_peso;
        IF v_peso_total > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%.2f) excede el máximo permitido (1.00).', v_peso_total;
        END IF;

        INSERT INTO notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo, codigo_sede)
        VALUES (v_nota_valor, v_peso, INITCAP(v_tipo_nota), p_id_alumno, p_id_curso, p_id_periodo, p_id_subperiodo, v_codigo_sede);

        v_insertadas := v_insertadas + 1;
        v_peso_existente := v_peso_total;
    END LOOP;

    --------------------------------------------------------------------
    --Retorno final
    --------------------------------------------------------------------
    RETURN json_build_object(
        'success', true,
        'message', format('Notas actualizadas: %s, insertadas: %s', v_actualizadas, v_insertadas),
        'actualizadas', v_actualizadas,
        'insertadas', v_insertadas
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', SQLERRM
        );
END;
$BODY$;

