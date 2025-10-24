-- FUNCTION: public.obtener_reporte_matricula_colegio_periodo(integer, integer, character varying)

-- DROP FUNCTION IF EXISTS public.obtener_reporte_matricula_colegio_periodo(integer, integer, character varying);

CREATE OR REPLACE FUNCTION public.obtener_reporte_matricula_colegio_periodo(
	p_id_alumno integer,
	p_anio integer,
	p_cod_periodo character varying)
    RETURNS TABLE(alumno_nombre character varying, alumno_apellido_paterno character varying, alumno_apellido_materno character varying, codigo_alumno character varying, tipo_matricula character varying, estado_matricula character varying, seccion character varying, grado character varying, nivel character varying, codigo_periodo character varying, periodo_academico character varying, fecha_inicio date, fecha_fin date, cod_cursos_matriculados character varying, cursos_matriculados character varying, docente_nombre character varying, docente_email character varying, nota_promedio_final real) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$

BEGIN
    RETURN QUERY
    SELECT 
        a.NOMBRE AS alumno_nombre,
        a.APELLIDO_PATERNO AS alumno_apellido_paterno,
        a.APELLIDO_MATERNO AS alumno_apellido_materno,
        a.CODIGO_ALUMNO,
        m.TIPO_MATRICULA,
        m.ESTADO_MATRICULA,
        s.DESCRIPCION AS seccion,
        s.GRADO,
        s.NIVEL,
		p.CODIGO_PERIODO as codigo_periodo,
        p.DESCRIPCION_PERIODO AS periodo_academico,
        p.FECHA_INICIO,
        p.FECHA_FIN,
		c.CODIGO_CURSO as cod_cursos_matriculados,
        string_agg(c.DESCRIPCION_CURSO, ', ')::VARCHAR AS cursos_matriculados,
        (d.NOMBRE || ' ' || d.APELLIDO_PATERNO || ' ' || d.APELLIDO_MATERNO)::VARCHAR AS docente_nombre,
		d.correo AS docente_email,
		nf.NOTA AS nota_promedio_final
    FROM 
        Matricula m
    INNER JOIN Alumno a ON m.ID_ALUMNO = a.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN PeriodoAcademico p ON m.ID_PERIODO = p.ID_PERIODO
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION 
        AND dsa.ID_PERIODO = p.ID_PERIODO
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
     LEFT JOIN LATERAL (
    SELECT n.NOTA
    FROM Notas n
    WHERE n.ID_ALUMNO = a.ID_ALUMNO
      AND n.ID_CURSO = c.ID_CURSO
      AND n.TIPO_NOTA = 'Promedio Final'
	  AND n.ID_PERIODO = (
          SELECT pa.ID_PERIODO
          FROM PeriodoAcademico pa
          WHERE pa.CODIGO_PERIODO = p_cod_periodo
          LIMIT 1
      )
    ORDER BY n.ID_NOTA ASC
    LIMIT 1
) nf ON true
	WHERE 
        a.ID_ALUMNO = p_id_alumno
        AND p.ANIO = p_anio
        AND a.TIPO_INSTITUCION = 'C'
		AND p.DESCRIPCION_PERIODO LIKE 'Año%'
		AND p.CODIGO_PERIODO = p_cod_periodo
    GROUP BY 
        a.NOMBRE,
        a.APELLIDO_PATERNO,
        a.APELLIDO_MATERNO,
        a.CODIGO_ALUMNO,
        m.TIPO_MATRICULA,
        m.ESTADO_MATRICULA,
        s.DESCRIPCION,
        s.GRADO,
        s.NIVEL,
		p.CODIGO_PERIODO,
        p.DESCRIPCION_PERIODO,
        p.FECHA_INICIO,
        p.FECHA_FIN,
		c.CODIGO_CURSO,
        d.NOMBRE,
        d.APELLIDO_PATERNO,
        d.APELLIDO_MATERNO,
		d.CORREO,
		nf.NOTA;
END;
$BODY$;

ALTER FUNCTION public.obtener_reporte_matricula_colegio_periodo(integer, integer, character varying)
    OWNER TO postgres;
