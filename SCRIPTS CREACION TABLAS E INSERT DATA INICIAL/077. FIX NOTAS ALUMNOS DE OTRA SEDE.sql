--actualizacion de funcion para traer notas
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