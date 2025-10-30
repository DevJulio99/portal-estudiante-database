--actualizando solo años de horarios existente
UPDATE public.horario
SET 
    fecha_inicio = MAKE_DATE(EXTRACT(YEAR FROM CURRENT_DATE)::int,
                             EXTRACT(MONTH FROM fecha_inicio)::int,
                             EXTRACT(DAY FROM fecha_inicio)::int),
    fecha_fin    = MAKE_DATE(EXTRACT(YEAR FROM CURRENT_DATE)::int,
                             EXTRACT(MONTH FROM fecha_fin)::int,
                             EXTRACT(DAY FROM fecha_fin)::int);

--agregando columna para relacionar grado curso con horario
ALTER TABLE horario
ADD COLUMN id_grado_curso INT;

ALTER TABLE horario
ADD CONSTRAINT fk_horario_grado_curso
FOREIGN KEY (id_grado_curso)
REFERENCES grado_curso (id_grado_curso);

--agregando restriccion para que no se repitan horarios
ALTER TABLE horario
ADD CONSTRAINT horario_unico 
UNIQUE (id_grado_curso, numero_dia, fecha_inicio, fecha_fin, hora_inicio, hora_fin);

-- INSTITUTO
INSERT INTO public.grado_curso ("ID_GRADO", id_curso, es_obligatorio, tipo_institucion, orden_curso, creditos_minimos) VALUES
(12, 17, true, 'I', 1, 4), 
(12, 18, true, 'I', 2, 3),
(12, 19, false, 'I', 3, 2),
(12, 20, true, 'I', 4, 4);

--modificacion para funcion de matricula colegio

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
        p_usuario_registro,
        p_tipo_institucion
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
    v_id_seccion   := (v_resultado ->> 'id_seccion')::INTEGER;

    --Obtener cursos del grado directamente de grado_curso
    FOR v_curso IN
        SELECT id_curso, id_grado_curso
        FROM public.grado_curso
        WHERE "ID_GRADO" = p_id_grado
    LOOP
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

		-- Vincular los horarios de este curso a la sección (evitando duplicados)
        FOR v_horario IN
            SELECT id_horario
            FROM public.horario
            WHERE id_grado_curso = v_curso.id_grado_curso
        LOOP
            -- Solo insertar si no existe ya
            INSERT INTO public.detalleseccionasignada 
			(id_seccion, id_curso, id_horario, id_docente, id_periodo, id_aula, id_sede)
            SELECT v_id_seccion, v_curso.id_curso, v_horario.id_horario, 1, p_id_periodo, 1, 1
            WHERE NOT EXISTS (
                SELECT 1
                FROM public.detalleseccionasignada
                WHERE id_seccion = v_id_seccion
                  AND id_curso = v_curso.id_curso
                  AND id_horario = v_horario.id_horario
				  AND id_periodo = p_id_periodo
            );
        END LOOP;

        v_cursos_asignados := v_cursos_asignados + 1;
    END LOOP;

    --Retornar resultado exitoso con ID y conteo
    RETURN json_build_object(
        'success', true,
        'message', 'Matrícula completa realizada exitosamente',
        'id_matricula', v_id_matricula,
        'id_seccion', v_id_seccion,
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

--reseteando asistencias
delete from asistencias;

ALTER TABLE public.asistencias
ADD COLUMN id_matricula_curso INT NOT NULL;

ALTER TABLE public.asistencias
ADD CONSTRAINT fk_asistencia_matricula_curso
FOREIGN KEY (id_matricula_curso)
REFERENCES public.matricula_curso (id_matricula_curso)
ON UPDATE CASCADE
ON DELETE CASCADE;


--insertar asistencias alumno 12

-- INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso, id_matricula_curso) 
-- VALUES ('2025-10-20', 'Presente', 12, 1, 98);
-- INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso, id_matricula_curso) 
-- VALUES ('2025-10-20', 'Ausente', 12, 2, 99);
-- INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso, id_matricula_curso) 
-- VALUES ('2025-10-21', 'Presente', 12, 3, 100);