--se elimina funciones anteriores
DROP FUNCTION IF EXISTS insertar_nota(INT, INT, INT, JSON, INT);
DROP FUNCTION IF EXISTS insertar_notas(INT, INT, INT, JSON, INT);
DROP FUNCTION IF EXISTS actualizar_notas(INT, INT, INT, JSON, INT);

--nueva funcion que inifica registrar y actualizar
CREATE OR REPLACE FUNCTION gestionar_notas(
    p_id_alumno INT,
    p_id_curso INT,
    p_id_periodo INT,
    p_json_actualizar_notas JSON DEFAULT '[]',
    p_json_insertar_notas JSON DEFAULT '[]',
    p_id_subperiodo INT DEFAULT NULL
)
RETURNS JSON AS
$$
DECLARE
    -- Variables generales
    v_tipo_institucion CHAR(1);
    v_matricula_curso_id INT;
    v_peso_existente NUMERIC(4,2);
    v_peso_total NUMERIC(4,2);
    v_peso_actual_nota NUMERIC(4,2);
    v_nota JSON;

    -- Variables por nota
    v_id_nota INT;
    v_tipo_nota TEXT;
    v_nota_valor NUMERIC(4,2);
    v_peso NUMERIC(4,2);

    -- Contadores
    v_insertadas INT := 0;
    v_actualizadas INT := 0;
BEGIN
    --------------------------------------------------------------------
    --Validar alumno activo
    --------------------------------------------------------------------
    IF NOT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = TRUE
    ) THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no existe o no está activo.');
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
    LIMIT 1;

    IF v_matricula_curso_id IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'El alumno no está matriculado en este curso.');
    END IF;

    --------------------------------------------------------------------
    --Validar tipo de institución vs subperiodo
    --------------------------------------------------------------------
    SELECT tipo_institucion INTO v_tipo_institucion
    FROM alumno WHERE id_alumno = p_id_alumno;

    IF v_tipo_institucion = 'I' AND p_id_subperiodo IS NOT NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los institutos no deben registrar subperiodos.');
    END IF;

    IF v_tipo_institucion = 'C' AND p_id_subperiodo IS NULL THEN
        RETURN json_build_object('success', false, 'message', 'Los colegios deben registrar un subperiodo.');
    END IF;

    --------------------------------------------------------------------
    --Si no hay datos a procesar, salir sin hacer nada
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

        -- Validaciones
        IF v_id_nota IS NULL OR v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en nota a actualizar: %', v_nota;
        END IF;

        IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
        END IF;

        -- Verificar existencia
        SELECT peso INTO v_peso_actual_nota
        FROM notas
        WHERE id_nota = v_id_nota
          AND id_alumno = p_id_alumno
          AND id_curso = p_id_curso
          AND id_periodo = p_id_periodo
          AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
        LIMIT 1;

        IF v_peso_actual_nota IS NULL THEN
            RAISE EXCEPTION 'No existe la nota con id % para este alumno.', v_id_nota;
        END IF;

        -- Ajustar peso total
        v_peso_existente := v_peso_existente - v_peso_actual_nota + v_peso;

        IF v_peso_existente > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%.2f) excede el máximo permitido (1.00).', v_peso_existente;
        END IF;

        -- Actualizar nota
        UPDATE notas
        SET tipo_nota = INITCAP(v_tipo_nota),
            nota = v_nota_valor,
            peso = v_peso
        WHERE id_nota = v_id_nota;

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

        -- Validaciones
        IF v_tipo_nota IS NULL OR v_nota_valor IS NULL OR v_peso IS NULL THEN
            RAISE EXCEPTION 'Datos incompletos en la nota a insertar: %', v_nota;
        END IF;

        IF v_peso <= 0 THEN
            RAISE EXCEPTION 'El peso de la nota "%" no puede ser menor o igual a 0.', v_tipo_nota;
        END IF;

        -- Validar duplicado
        IF EXISTS (
            SELECT 1 FROM notas
            WHERE id_alumno = p_id_alumno
              AND id_curso = p_id_curso
              AND id_periodo = p_id_periodo
              AND LOWER(tipo_nota) = v_tipo_nota
              AND COALESCE(id_subperiodo,0) = COALESCE(p_id_subperiodo,0)
        ) THEN
            RAISE EXCEPTION 'Ya existe una nota "%" para este alumno.', v_tipo_nota;
        END IF;

        -- Validar peso total
        v_peso_total := v_peso_existente + v_peso;
        IF v_peso_total > 1.0 THEN
            RAISE EXCEPTION 'El peso total (%.2f) excede el máximo permitido (1.00).', v_peso_total;
        END IF;

        -- Insertar nota
        INSERT INTO notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo)
        VALUES (v_nota_valor, v_peso, INITCAP(v_tipo_nota), p_id_alumno, p_id_curso, p_id_periodo, p_id_subperiodo);

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
        -- Rollback automático: si ocurre cualquier error, no se guarda nada.
        RETURN json_build_object(
            'success', false,
            'message', SQLERRM
        );
END;
$$
LANGUAGE plpgsql;