CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_subperiodo(
    p_id_alumno integer,
    p_anio integer,
    p_cod_curso character varying,
    p_cod_subperiodo character varying)
RETURNS TABLE(
    alumno character varying, 
    apellido_paterno character varying, 
    apellido_materno character varying, 
    cod_curso character varying, 
    descripcion_curso character varying, 
    cod_periodo character varying, 
    descripcion_periodo character varying,
    cod_subperiodo character varying,
    descripcion_subperiodo character varying,
    nota real, 
    peso real, 
    tipo_nota character varying
) 
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        a.nombre::character varying AS alumno,
        a.apellido_paterno::character varying,
        a.apellido_materno::character varying,
        c.codigo_curso::character varying,
        c.descripcion_curso::character varying,
        pa.codigo_periodo::character varying,
        pa.descripcion_periodo::character varying,
        sp.codigo_subperiodo::character varying,
        sp.descripcion_subperiodo::character varying,
        n.nota,
        n.peso,
        n.tipo_nota::character varying
    FROM 
        notas n
    INNER JOIN alumno a ON n.id_alumno = a.id_alumno
    INNER JOIN curso c ON n.id_curso = c.id_curso
    INNER JOIN periodoacademico pa ON n.id_periodo = pa.id_periodo
    INNER JOIN subperiodos sp ON n.id_subperiodo = sp.id_subperiodo
    WHERE 
        n.id_alumno = p_id_alumno
        AND pa.anio = p_anio
        AND c.codigo_curso = p_cod_curso
        AND sp.codigo_subperiodo = p_cod_subperiodo
    ORDER BY 
        pa.anio, pa.codigo_periodo, sp.codigo_subperiodo;
END;
$BODY$;