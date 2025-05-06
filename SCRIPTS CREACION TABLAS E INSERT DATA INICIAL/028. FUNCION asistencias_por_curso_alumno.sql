CREATE OR REPLACE FUNCTION public.asistencias_por_curso_alumno(
	idalumno integer,
	anio integer,
	inicioperiodo timestamp without time zone,
	finalperiodo timestamp without time zone,
	codigocurso character varying,
	estadoasistencia character varying)
    RETURNS TABLE(cantidad bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    select count(*) from asistencias a
    inner join curso c using(id_curso)
    where id_alumno = idAlumno and EXTRACT(YEAR FROM dia) = anio 
    and (dia >= inicioPeriodo and dia <= finalPeriodo) 
    and c.codigo_curso = codigoCurso and estado_asistencia = estadoAsistencia;
END;
$BODY$;