--se elimina anterior funcion
DROP FUNCTION IF EXISTS insertar_nota(INT, INT, INT, JSON, INT);

--funcion para registrar notas del alumno
CREATE OR REPLACE FUNCTION insertar_notas(
    p_id_alumno INT,
    p_id_curso INT,
    p_id_periodo INT,
    p_notas JSON,
    p_id_subperiodo INT DEFAULT NULL
)
RETURNS JSON AS
$$
DECLARE
    v_tipo_institucion CHAR(1);
    v_matricula_curso_id INT;
    v_peso_existente NUMERIC(4,2);
    v_peso_total NUMERIC(4,2);
    v_peso_nuevo NUMERIC(4,2);
    v_nota JSON;
    v_tipo_nota TEXT;
    v_nota_valor NUMERIC(4,2);
    v_peso NUMERIC(4,2);
    v_duplicada INT;
BEGIN
    --Validar alumno activo
    IF NOT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = TRUE
    ) THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no existe o no está activo.');
    END IF;

    --Validar matrícula activa
    SELECT mc.id_matricula_curso
    INTO v_matricula_curso_id
    FROM matricula_curso mc
    JOIN matricula m ON mc.id_matricula = m.id_matricula
    WHERE mc.id_curso = p_id_curso
      AND m.id_alumno = p_id_alumno
      AND mc.estado_matricula_curso = 'ACTIVO'
      AND m.activo = TRUE
    LIMIT 1;

    IF v_matricula_curso_id IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no está matriculado en este curso.');
    END IF;

    --Validar tipo institución vs subperiodo
    SELECT tipo_institucion INTO v_tipo_institucion
    FROM alumno WHERE id_alumno = p_id_alumno;

    IF v_tipo_institucion = 'I' AND p_id_subperiodo IS NOT NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los institutos no deben registrar subperiodos.');
    END IF;

    IF v_tipo_institucion = 'C' AND p_id_subperiodo IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los colegios deben registrar un subperiodo.');
    END IF;

    --Calcular peso actual existente
    SELECT COALESCE(SUM(peso), 0)
    INTO v_peso_existente
    FROM notas
    WHERE id_alumno = p_id_alumno
      AND id_curso = p_id_curso
      AND id_periodo = p_id_periodo
      AND tipo_nota <> 'Promedio Final'
      AND COALESCE(id_subperiodo, 0) = COALESCE(p_id_subperiodo, 0);

    v_peso_nuevo := 0;

    --Recorrer arreglo JSON de notas
    FOR v_nota IN SELECT * FROM json_array_elements(p_notas)
    LOOP
        v_tipo_nota := TRIM(LOWER(v_nota->>'tipo_nota'));
        v_nota_valor := (v_nota->>'nota')::NUMERIC(4,2);
        v_peso := (v_nota->>'peso')::NUMERIC(4,2);

        -- Validar datos básicos
        IF v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en la nota: %', v_nota;
        END IF;

		 IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
         END IF;

        -- Validar duplicado
        SELECT COUNT(*) INTO v_duplicada
        FROM notas
        WHERE id_alumno = p_id_alumno
          AND id_curso = p_id_curso
          AND id_periodo = p_id_periodo
          AND COALESCE(id_subperiodo, 0) = COALESCE(p_id_subperiodo, 0)
          AND LOWER(tipo_nota) = v_tipo_nota;

        IF v_duplicada > 0 THEN
            RAISE EXCEPTION 'Ya existe una nota "%s" para este alumno.', v_tipo_nota;
        END IF;

        -- Calcular peso acumulado
        v_peso_nuevo := v_peso_nuevo + v_peso;
        v_peso_total := v_peso_existente + v_peso_nuevo;

        IF v_peso_total > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%s) excede el máximo permitido (1.00).', to_char(v_peso_total,'FM9.00');
        END IF;

        -- Insertar nota válida
        INSERT INTO notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo)
        VALUES (v_nota_valor, v_peso, INITCAP(v_tipo_nota), p_id_alumno, p_id_curso, p_id_periodo, p_id_subperiodo);
    END LOOP;

    RETURN json_build_object(
        'success', true,
        'message', 'Todas las notas fueron insertadas correctamente.'
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', SQLERRM
        );
END;
$$
LANGUAGE plpgsql;


CREATE OR REPLACE FUNCTION actualizar_notas(
    p_id_alumno INT,
    p_id_curso INT,
    p_id_periodo INT,
    p_notas JSON,
    p_id_subperiodo INT DEFAULT NULL
)
RETURNS JSON AS
$$
DECLARE
    v_tipo_institucion CHAR(1);
    v_matricula_curso_id INT;
    v_peso_existente NUMERIC(4,2);
    v_peso_total NUMERIC(4,2);
    v_peso_nuevo NUMERIC(4,2) := 0;
    v_nota JSON;
    v_tipo_nota TEXT;
    v_nota_valor NUMERIC(4,2);
    v_peso NUMERIC(4,2);
    v_id_nota INT;
    v_peso_actual_nota NUMERIC(4,2);
BEGIN
    -- Validar alumno activo
    IF NOT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = TRUE
    ) THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no existe o no está activo.');
    END IF;

    -- Validar matrícula activa
    SELECT mc.id_matricula_curso
    INTO v_matricula_curso_id
    FROM matricula_curso mc
    JOIN matricula m ON mc.id_matricula = m.id_matricula
    WHERE mc.id_curso = p_id_curso
      AND m.id_alumno = p_id_alumno
      AND mc.estado_matricula_curso = 'ACTIVO'
      AND m.activo = TRUE
    LIMIT 1;

    IF v_matricula_curso_id IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no está matriculado en este curso.');
    END IF;

    -- Validar tipo institución vs subperiodo
    SELECT tipo_institucion INTO v_tipo_institucion
    FROM alumno WHERE id_alumno = p_id_alumno;

    IF v_tipo_institucion = 'I' AND p_id_subperiodo IS NOT NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los institutos no deben registrar subperiodos.');
    END IF;

    IF v_tipo_institucion = 'C' AND p_id_subperiodo IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los colegios deben registrar un subperiodo.');
    END IF;

    -- Calcular peso existente de notas que **no se van a actualizar**
    SELECT COALESCE(SUM(peso),0)
    INTO v_peso_existente
    FROM notas
    WHERE id_alumno = p_id_alumno
      AND id_curso = p_id_curso
      AND id_periodo = p_id_periodo
      AND tipo_nota <> 'Promedio Final'
      AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
      AND id_nota NOT IN (
          SELECT (n->>'id_nota')::INT FROM json_array_elements(p_notas) AS n
      );

    -- Recorrer arreglo JSON de notas
    FOR v_nota IN SELECT * FROM json_array_elements(p_notas)
    LOOP
        v_id_nota := (v_nota->>'id_nota')::INT;
        v_tipo_nota := TRIM(v_nota->>'tipo_nota');
        v_nota_valor := (v_nota->>'nota')::NUMERIC(4,2);
        v_peso := (v_nota->>'peso')::NUMERIC(4,2);

        -- Validar datos
        IF v_id_nota IS NULL OR v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en la nota: %', v_nota;
        END IF;

        IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
        END IF;

        -- Verificar existencia de la nota
        SELECT peso INTO v_peso_actual_nota
        FROM notas
        WHERE id_nota = v_id_nota
          AND id_alumno = p_id_alumno
          AND id_curso = p_id_curso
          AND id_periodo = p_id_periodo
          AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
        LIMIT 1;

        IF v_peso_actual_nota IS NULL THEN
            RAISE EXCEPTION 'No existe la nota que se intenta actualizar para este alumno: %', v_id_nota;
        END IF;

        -- Calcular peso total incluyendo esta actualización
        v_peso_total := v_peso_existente + v_peso_nuevo + v_peso;

        IF v_peso_total > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%s) excede el máximo permitido (1.00).', to_char(v_peso_total,'FM9.00');
        END IF;

        -- Acumular peso ajustando por el peso anterior de esta nota
        v_peso_nuevo := v_peso_nuevo + v_peso - v_peso_actual_nota;

        -- Actualizar nota
        UPDATE notas
        SET tipo_nota = v_tipo_nota,
            nota = v_nota_valor,
            peso = v_peso
        WHERE id_nota = v_id_nota;
    END LOOP;

    RETURN json_build_object(
        'success', true,
        'message', 'Las notas fueron actualizadas correctamente.'
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', SQLERRM
        );
END;
$$
LANGUAGE plpgsql;