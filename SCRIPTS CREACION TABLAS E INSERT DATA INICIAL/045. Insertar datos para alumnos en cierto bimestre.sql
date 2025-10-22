--INSERT PARA detalleseccionasignada 
-- detalleseccion para bimestre Bimestre 4 - 2025 (id 8)
-- curso C001 matematicas
INSERT INTO public.detalleseccionasignada (
    turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) 
    VALUES ('Mañana', 1, 1, 1, 1, 8, 1, 1, 'Principal');

-- curso C002 lenguaje
INSERT INTO public.detalleseccionasignada (
    turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) 
    VALUES ('Mañana', 9, 1, 1, 2, 8, 1, 1, 'Principal');

-- curso C004 geografia
INSERT INTO public.detalleseccionasignada (
    turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) 
    VALUES ('Mañana', 2, 1, 1, 4, 8, 1, 1, 'Principal');

-- curso C006 ingles
INSERT INTO public.detalleseccionasignada (
    turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) 
    VALUES ('Mañana', 5, 1, 1, 6, 8, 1, 1, 'Principal');

-- curso C008 civica
INSERT INTO public.detalleseccionasignada (
    turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) 
    VALUES ('Mañana', 6, 1, 1, 8, 8, 1, 1, 'Principal');
-- INSERT INTO public.detalleseccionasignada (turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) VALUES ('Mañana', 2, 2, 2, 2, 2, 2, 1, 'Principal');
-- INSERT INTO public.detalleseccionasignada (turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) VALUES ('Tarde', 6, 6, 6, 6, 6, 6, 1, 'Principal');
-- INSERT INTO public.detalleseccionasignada (turno, id_horario, id_seccion, id_docente, id_curso, id_periodo, id_aula, id_sede, rol_docente) VALUES ('Noche', 4, 5, 4, 6, 5, 3, 1, 'Titular');


-- se inserta datos para asistencias del alumno 2 curso C001 (matematicas)
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-06', 'Presente', 2, 1);
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-13', 'Ausente', 2, 1);

-- se inserta datos para asistencias del alumno 2 curso C002 (lenguaje)
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-08', 'Ausente', 2, 2);
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-15', 'Ausente', 2, 2);

-- se inserta datos para asistencias del alumno 2 curso C004 (geografia)
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-06', 'Ausente', 2, 4);
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-13', 'Presente', 2, 4);

-- se inserta datos para asistencias del alumno 2 curso C006 (ingles)
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-07', 'Presente', 2, 6);
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-14', 'Presente', 2, 6);

-- se inserta datos para asistencias del alumno 2 curso C008 (civica)
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-07', 'Presente', 2, 8);
INSERT INTO public.asistencias (dia, estado_asistencia, id_alumno, id_curso) VALUES ('2025-10-14', 'Presente', 2, 8);

/*modificacion de funcion para traer notas (se agrego campo codigo_curso)*/

/*se elimina antes para evitar errores*/
DROP FUNCTION IF EXISTS obtener_notas_por_bimestre(integer,character varying,integer);

CREATE OR REPLACE FUNCTION public.obtener_notas_por_bimestre(
	p_id_alumno integer,
	p_tipo_periodo character varying,
	p_anio integer)
    RETURNS TABLE(alumno character varying, apellido_paterno character varying, apellido_materno character varying, codigo_curso character varying, descripcion_curso character varying, codigo_periodo character varying, descripcion_periodo character varying, nota real, peso real, tipo_nota character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$

BEGIN
    RETURN QUERY
    SELECT 
        a.NOMBRE AS alumno,
        a.APELLIDO_PATERNO,
        a.APELLIDO_MATERNO,
		c.CODIGO_CURSO,
        c.DESCRIPCION_CURSO,
        pa.CODIGO_PERIODO,
        pa.DESCRIPCION_PERIODO,
        n.NOTA,
        n.PESO,
        n.TIPO_NOTA
    FROM 
        Alumno a
    JOIN 
        Matricula m ON a.ID_ALUMNO = m.ID_ALUMNO
    JOIN 
        Seccion s ON m.ID_SECCION = s.ID_SECCION
    JOIN 
        DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    JOIN 
        Curso c ON dsa.ID_CURSO = c.ID_CURSO
    JOIN 
        Notas n ON n.ID_ALUMNO = a.ID_ALUMNO AND n.ID_CURSO = c.ID_CURSO
    JOIN 
        PeriodoAcademico pa ON n.ID_PERIODO = pa.ID_PERIODO
    WHERE 
        a.ID_ALUMNO = p_id_alumno
        AND pa.TIPO_PERIODO = p_tipo_periodo
        AND pa.ANIO = p_anio
    ORDER BY 
        pa.ANIO, pa.CODIGO_PERIODO;
END;
$BODY$;

ALTER FUNCTION public.obtener_notas_por_bimestre(integer, character varying, integer)
    OWNER TO postgres;

--insertar notas para id 2 y periodo 8 (Bimestre 4 - 2025)
--matematicas
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (15, 0.4, 'Tarea', 2, 1, 8);
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (17, 0.4, 'Tarea', 2, 1, 8);

--lenguaje
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (15, 0.4, 'Tarea', 2, 2, 8);
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (17, 0.4, 'Tarea', 2, 2, 8);

--geografia
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (15, 0.4, 'Tarea', 2, 4, 8);
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (17, 0.4, 'Tarea', 2, 4, 8);

--civica
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (15, 0.4, 'Tarea', 2, 8, 8);
INSERT INTO public.notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo) VALUES (17, 0.4, 'Tarea', 2, 8, 8);

/*modificando reporte de matriculas para que devuelva codigo periodo*/
-- se elimina
DROP FUNCTION IF EXISTS public.obtener_reporte_matricula_colegio(integer, integer);
-- se vuelve a crear
CREATE OR REPLACE FUNCTION public.obtener_reporte_matricula_colegio(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(alumno_nombre character varying, alumno_apellido_paterno character varying, alumno_apellido_materno character varying, codigo_alumno character varying, tipo_matricula character varying, estado_matricula character varying, seccion character varying, grado character varying, nivel character varying, codigo_periodo character varying, periodo_academico character varying, fecha_inicio date, fecha_fin date, cod_cursos_matriculados character varying, cursos_matriculados character varying, docente_nombre character varying, docente_email character varying) 
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
		d.correo AS docente_email
    FROM 
        Matricula m
    INNER JOIN Alumno a ON m.ID_ALUMNO = a.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN PeriodoAcademico p ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    WHERE 
        a.ID_ALUMNO = p_id_alumno
        AND p.ANIO = p_anio
        AND a.TIPO_INSTITUCION = 'C'
		AND p.DESCRIPCION_PERIODO LIKE 'Bimestre%'
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
		d.CORREO;
END;
$BODY$;


/*se agrega nueva funcion para traer notas de curso por bimestre*/

-- se elimina la antigua funcion
DROP FUNCTION IF EXISTS public.obtener_notas_por_bimestre(integer, character varying, integer);

-- nueva funcion para traer notas por curso

CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_periodo(
	p_id_alumno integer,
	p_tipo_periodo character varying,
	p_anio integer,
	p_cod_curso character varying,
	p_cod_periodo character varying)
RETURNS TABLE(
    alumno character varying, 
    apellido_paterno character varying, 
    apellido_materno character varying, 
    cod_curso character varying, 
    descripcion_curso character varying, 
    cod_periodo character varying, 
    descripcion_periodo character varying, 
    nota real, 
    peso real, 
    tipo_nota character varying) 
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT 
        a.NOMBRE AS alumno,
        a.APELLIDO_PATERNO,
        a.APELLIDO_MATERNO,
        c.CODIGO_CURSO,
        c.DESCRIPCION_CURSO,
        pa.CODIGO_PERIODO,
        pa.DESCRIPCION_PERIODO,
        n.NOTA,
        n.PESO,
        n.TIPO_NOTA
    FROM 
        Notas n
    JOIN 
        Alumno a ON n.ID_ALUMNO = a.ID_ALUMNO
    JOIN 
        Curso c ON n.ID_CURSO = c.ID_CURSO
    JOIN 
        PeriodoAcademico pa ON n.ID_PERIODO = pa.ID_PERIODO
    WHERE 
        n.ID_ALUMNO = p_id_alumno
        AND pa.TIPO_PERIODO = p_tipo_periodo
        AND pa.ANIO = p_anio
		AND codigo_curso = p_cod_curso
		AND codigo_periodo = p_cod_periodo
    ORDER BY 
        pa.ANIO, pa.CODIGO_PERIODO;
END;
$$;

-- se agrega nueva funciona para traer cursos por año y periodo

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
    INNER JOIN PeriodoAcademico p ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
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
		AND p.DESCRIPCION_PERIODO LIKE 'Bimestre%'
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