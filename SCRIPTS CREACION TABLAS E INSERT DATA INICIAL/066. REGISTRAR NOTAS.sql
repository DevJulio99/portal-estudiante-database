--funcion para registrar notas del alumno
CREATE OR REPLACE FUNCTION insertar_nota(
    p_id_alumno INT,
    p_id_curso INT,
    p_id_periodo INT,
    p_tipo_nota VARCHAR(50),
    p_nota NUMERIC(4,2),
    p_peso NUMERIC(4,2),
	p_id_subperiodo INT DEFAULT NULL
)
RETURNS JSON AS
$$
DECLARE
    v_tipo_institucion CHAR(1);
    v_matricula_curso_id INT;
    v_peso_acumulado NUMERIC(4,2);
    v_peso_total NUMERIC(4,2);
    v_duplicada INT;
BEGIN
    --Validar alumno activo
    IF NOT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = TRUE
    ) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe o no está activo.'
        );
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
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no está matriculado en este curso.'
        );
    END IF;

    --Obtener tipo de institución
    SELECT tipo_institucion INTO v_tipo_institucion
    FROM alumno WHERE id_alumno = p_id_alumno;

    --Validar uso de subperiodo
    IF v_tipo_institucion = 'I' AND p_id_subperiodo IS NOT NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Los institutos no deben registrar subperiodos.'
        );
    END IF;

    IF v_tipo_institucion = 'C' AND p_id_subperiodo IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Los colegios deben registrar un subperiodo.'
        );
    END IF;

    --Validar duplicado de tipo de nota
    SELECT COUNT(*) INTO v_duplicada
    FROM notas
    WHERE id_alumno = p_id_alumno
      AND id_curso = p_id_curso
      AND id_periodo = p_id_periodo
      AND COALESCE(id_subperiodo, 0) = COALESCE(p_id_subperiodo, 0)
      AND LOWER(tipo_nota) = LOWER(p_tipo_nota);

    IF v_duplicada > 0 THEN
        RETURN json_build_object(
            'success', false,
            'message', format('Ya existe una nota "%s" para este alumno en este curso y periodo.', p_tipo_nota)
        );
    END IF;

    -- Validar peso total acumulado (máximo 1.0)
    SELECT COALESCE(SUM(peso), 0) INTO v_peso_acumulado
    FROM notas
    WHERE id_alumno = p_id_alumno
      AND id_curso = p_id_curso
      AND id_periodo = p_id_periodo
	  AND tipo_nota <> 'Promedio Final'
      AND COALESCE(id_subperiodo, 0) = COALESCE(p_id_subperiodo, 0);

    v_peso_total := v_peso_acumulado + p_peso;

    IF v_peso_total > 1.0 THEN
        RETURN json_build_object(
            'success', false,
            'message', format('El peso total (%s) supera el máximo permitido (1.00).', to_char(v_peso_total,'FM9.00'))
        );
    END IF;

    --Insertar la nota
    INSERT INTO notas (
        nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo
    )
    VALUES (
        p_nota, p_peso, p_tipo_nota, p_id_alumno, p_id_curso, p_id_periodo, p_id_subperiodo 
    );

    -- Respuesta exitosa
    RETURN json_build_object(
        'success', true,
        'message', format('Nota registrada correctamente.', p_tipo_nota),
        'peso_acumulado', ROUND(v_peso_total, 2)
    );
END;
$$
LANGUAGE plpgsql;
