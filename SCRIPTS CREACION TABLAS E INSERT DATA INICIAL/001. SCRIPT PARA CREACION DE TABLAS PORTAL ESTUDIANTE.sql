--CREAR TABLA alumno
CREATE TABLE IF NOT EXISTS public.alumno
(
    id_alumno serial PRIMARY KEY,
    codigo_alumno character varying(255) NOT NULL,
    nombre character varying(255),
    apellido_paterno character varying(255),
    apellido_materno character varying(255),
    dni character varying(20),
    correo character varying(255),
    fecha_nacimiento date,
    telefono character varying(20),
    direccion character varying(255),
    foto_perfil character varying(255),
    genero character varying(50),
    tipo_alumno character varying(50),
    observaciones character varying(255),
    apoderado character varying,
    tipo_institucion character varying,
    CONSTRAINT alumno_codigo_alumno_key UNIQUE (codigo_alumno)
);

--CREAR TABLA curso
CREATE TABLE IF NOT EXISTS public.curso
(
    id_curso serial PRIMARY KEY,
    codigo_curso character varying(255) NOT NULL,
    descripcion_curso character varying(255),
    creditos real,
    modalidad character varying(50),
    nivel character varying,
    CONSTRAINT curso_codigo_curso_key UNIQUE (codigo_curso)
);

--CREAR TABLA docente
CREATE TABLE IF NOT EXISTS public.docente
(
    id_docente serial PRIMARY KEY,
    codigo_docente character varying(255) NOT NULL,
    nombre character varying(255),
    apellido_paterno character varying(255),
    apellido_materno character varying(255),
    dni character varying(20),
    correo character varying(255),
    telefono character varying(20),
    tipo_docente character varying(50),
    CONSTRAINT docente_codigo_docente_key UNIQUE (codigo_docente)
);

--CREAR TABLA periodoacademico
CREATE TABLE IF NOT EXISTS public.periodoacademico
(
    id_periodo serial PRIMARY KEY,
    codigo_periodo character varying(255) NOT NULL,
    descripcion_periodo character varying(255),
    tipo_periodo character varying(50),
    estado_periodo character varying(50),
    fecha_inicio date,
    fecha_fin date,
    anio integer,
    CONSTRAINT periodoacademico_codigo_periodo_key UNIQUE (codigo_periodo)
);

--CREAR TABLA seccion
CREATE TABLE IF NOT EXISTS public.seccion
(
    id_seccion serial PRIMARY KEY,
    codigo_seccion character varying(255) NOT NULL,
    descripcion character varying(255),
    nivel character varying,
    grado character varying,
    ciclo character varying,
    CONSTRAINT seccion_codigo_seccion_key UNIQUE (codigo_seccion)
);

--CREAR TABLA aula
CREATE TABLE IF NOT EXISTS public.aula
(
    id_aula serial PRIMARY KEY,
    codigo_aula character varying(255) NOT NULL,
    descripcion_aula character varying(255),
    tipo_aula character varying(50),
    estado_aula character varying(50),
    CONSTRAINT aula_codigo_aula_key UNIQUE (codigo_aula)
);

--CREAR TABLA sede
CREATE TABLE IF NOT EXISTS public.sede
(
    id_sede serial PRIMARY KEY,
    codigo_sede character varying(255) NOT NULL,
    descripcion_sede character varying(255),
    direccion character varying(255),
    telefono character varying(20),
    estado_sede character varying(50),
    CONSTRAINT sede_codigo_sede_key UNIQUE (codigo_sede)
);

--CREAR TABLA matricula
CREATE TABLE IF NOT EXISTS public.matricula
(
    id_matricula serial PRIMARY KEY,
    id_alumno integer,
    fecha_inicio date,
    fecha_fin date,
    tipo_matricula character varying(50),
    estado_matricula character varying(50),
    id_seccion integer,
    observaciones character varying,
    veces integer,
    CONSTRAINT matricula_id_alumno_fkey FOREIGN KEY (id_alumno)
        REFERENCES public.alumno (id_alumno) ON UPDATE NO ACTION ON DELETE NO ACTION
);

--CREAR TABLA horario
CREATE TABLE IF NOT EXISTS public.horario
(
    id_horario serial PRIMARY KEY,
    nombre_dia character varying(50),
    numero_dia integer,
    fecha_inicio date,
    fecha_fin date,
    hora_inicio time without time zone,
    hora_fin time without time zone
);

--CREAR TABLA detalleseccionasignada
CREATE TABLE IF NOT EXISTS public.detalleseccionasignada
(
    id_detalle serial PRIMARY KEY,
    turno character varying(50),
    id_horario integer,
    id_seccion integer,
    id_docente integer,
    id_curso integer,
    id_periodo integer,
    id_aula integer,
    id_sede integer,
    rol_docente character varying(50),
    CONSTRAINT unique_student_course_section UNIQUE (id_curso, id_seccion, id_periodo),
    CONSTRAINT detalleseccionasignada_id_aula_fkey FOREIGN KEY (id_aula)
        REFERENCES public.aula (id_aula) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_curso_fkey FOREIGN KEY (id_curso)
        REFERENCES public.curso (id_curso) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_docente_fkey FOREIGN KEY (id_docente)
        REFERENCES public.docente (id_docente) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_horario_fkey FOREIGN KEY (id_horario)
        REFERENCES public.horario (id_horario) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_periodo_fkey FOREIGN KEY (id_periodo)
        REFERENCES public.periodoacademico (id_periodo) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_seccion_fkey FOREIGN KEY (id_seccion)
        REFERENCES public.seccion (id_seccion) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT detalleseccionasignada_id_sede_fkey FOREIGN KEY (id_sede)
        REFERENCES public.sede (id_sede) ON UPDATE NO ACTION ON DELETE NO ACTION
);

--CREAR TABLA asistencias
CREATE TABLE IF NOT EXISTS public.asistencias
(
    id_asistencia serial PRIMARY KEY,
    dia date,
    estado_asistencia character varying(50),
    id_alumno integer,
    id_curso integer,
    CONSTRAINT asistencias_id_alumno_fkey FOREIGN KEY (id_alumno)
        REFERENCES public.alumno (id_alumno) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT asistencias_id_curso_fkey FOREIGN KEY (id_curso)
        REFERENCES public.curso (id_curso) ON UPDATE NO ACTION ON DELETE NO ACTION
);

--CREAR TABLA notas
CREATE TABLE IF NOT EXISTS public.notas
(
    id_nota serial PRIMARY KEY,
    nota real,
    peso real,
    tipo_nota character varying(50),
    id_alumno integer,
    id_curso integer,
    id_periodo integer,
    CONSTRAINT notas_id_alumno_fkey FOREIGN KEY (id_alumno)
        REFERENCES public.alumno (id_alumno) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT notas_id_curso_fkey FOREIGN KEY (id_curso)
        REFERENCES public.curso (id_curso) ON UPDATE NO ACTION ON DELETE NO ACTION,
    CONSTRAINT notas_id_periodo_fkey FOREIGN KEY (id_periodo)
        REFERENCES public.periodoacademico (id_periodo) ON UPDATE NO ACTION ON DELETE NO ACTION
);

--CREAR TABLA calendario_academico
CREATE TABLE IF NOT EXISTS public.calendario_academico
(
    id_calendario serial PRIMARY KEY,
    actividad text NOT NULL,
    fecha_inicio date NOT NULL,
    fecha_fin date NOT NULL,
    modalidad_estudios character varying(2) NOT NULL,
    tipo_actividad character(2) NOT NULL,
    CONSTRAINT calendario_academico_tipo_actividad_check CHECK (tipo_actividad = ANY (ARRAY['ES'::bpchar, 'FE'::bpchar, 'CE'::bpchar, 'PR'::bpchar])),
    CONSTRAINT check_dates CHECK (fecha_fin >= fecha_inicio)
);

--CREAR TABLA users
CREATE TABLE IF NOT EXISTS public.users
(
    id serial PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    name VARCHAR(255) NOT NULL,
    phone VARCHAR(50),
    role VARCHAR(50) NOT NULL
);

--CREAR TABLA pagos
CREATE TABLE IF NOT EXISTS public.pagos
(
    id_pago serial PRIMARY KEY,
    id_alumno INT,
    documento_pago VARCHAR(50),
    f_vencimiento DATE,
    ciclo VARCHAR(50),
    saldo NUMERIC(10,2),
    mora NUMERIC(10,2),
    total_a_pagar NUMERIC(10,2),
    detalle TEXT,
    imagen VARCHAR,
    anio INT,
    CONSTRAINT pagos_id_alumno_fkey FOREIGN KEY (id_alumno)
        REFERENCES public.alumno (id_alumno) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

-- CREAR FUNCION get_pagos_por_alumno
CREATE OR REPLACE FUNCTION public.get_pagos_por_alumno(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(id_pago integer, documento_pago character varying, f_vencimiento date, ciclo character varying, saldo numeric, mora numeric, total_a_pagar numeric, detalle text, imagen character varying, anio integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_pago,
        p.documento_pago,
        p.f_vencimiento,
        p.ciclo,
        p.saldo,
        p.mora,
        p.total_a_pagar,
        p.detalle,
        p.imagen,
        p.anio  -- Incluir 'anio' en la consulta
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio;  -- Filtrar por 'anio'
END;
$BODY$;


-- CREAR FUNCION obtener_asistencias_alumno_bimestre
CREATE OR REPLACE FUNCTION public.obtener_asistencias_alumno_bimestre(
	p_id_alumno integer,
	p_bimestre character varying,
	cod_curso character varying,
	p_anio integer)
    RETURNS TABLE(id_asistencia integer, dia date, estado_asistencia character varying, descripcion_curso character varying, modalidad character varying, hora_inicio time without time zone, hora_fin time without time zone) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    -- Declaramos variables para almacenar las fechas de inicio y fin del bimestre
    DECLARE
        bimestre_inicio DATE;
        bimestre_fin DATE;
    BEGIN
        -- Obtenemos las fechas de inicio y fin del bimestre del periodo académico
        SELECT p.FECHA_INICIO, p.FECHA_FIN
        INTO bimestre_inicio, bimestre_fin
        FROM PeriodoAcademico p
        WHERE p.DESCRIPCION_PERIODO LIKE '%' || p_bimestre || '%'  -- Filtramos por el nombre del bimestre
        AND p.ANIO = p_anio  -- Filtramos por el año
        AND p.TIPO_PERIODO = 'Bimestre';  -- Aseguramos que sea un bimestre

        -- Verificamos si se encontró el periodo, si no lanzamos una excepción
        IF bimestre_inicio IS NULL OR bimestre_fin IS NULL THEN
            RAISE EXCEPTION 'No se encontró el periodo para el bimestre % en el año %', p_bimestre, p_anio;
        END IF;

        -- Ahora, obtenemos las asistencias del alumno dentro del rango de fechas del bimestre
        RETURN QUERY
        SELECT 
            a.ID_ASISTENCIA,
            a.DIA,
            a.ESTADO_ASISTENCIA,
            c.DESCRIPCION_CURSO,
            c.MODALIDAD,
			h.HORA_INICIO,
			h.HORA_FIN
        FROM 
            Asistencias a
        JOIN 
            Curso c ON a.ID_CURSO = c.ID_CURSO
        JOIN 
            DetalleSeccionAsignada dsa ON dsa.ID_CURSO = c.ID_CURSO
		JOIN
		    Horario h ON h.ID_HORARIO = dsa.ID_HORARIO
        JOIN 
            PeriodoAcademico p ON p.ID_PERIODO = dsa.ID_PERIODO
        WHERE 
            a.ID_ALUMNO = p_id_alumno
            AND p.DESCRIPCION_PERIODO LIKE '%' || p_bimestre || '%'
            AND a.DIA BETWEEN bimestre_inicio AND bimestre_fin  -- Filtramos por el rango de fechas del bimestre
			AND c.CODIGO_CURSO = cod_curso
        ORDER BY 
            a.DIA;  -- Ordenamos por fecha
    END;
END;
$BODY$;


-- CREAR FUNCION obtener_horario_alumno_bimestre
CREATE OR REPLACE FUNCTION public.obtener_horario_alumno_bimestre(
	p_id_alumno integer,
	p_codigo_curso character varying,
	p_bimestre character varying)
    RETURNS TABLE(nombre_dia character varying, numero_dia integer, fecha_inicio date, fecha_fin date, hora_inicio time without time zone, hora_fin time without time zone, aula_descripcion character varying, sede_descripcion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        h.NOMBRE_DIA, 
        h.NUMERO_DIA, 
        h.FECHA_INICIO, 
        h.FECHA_FIN, 
        h.HORA_INICIO, 
        h.HORA_FIN, 
        a.DESCRIPCION_AULA, 
        sede.DESCRIPCION_SEDE -- Cambié el alias a 'sede'
    FROM 
        Alumno al
    INNER JOIN Matricula m ON al.ID_ALUMNO = m.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    INNER JOIN PeriodoAcademico p ON dsa.ID_PERIODO = p.ID_PERIODO
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    INNER JOIN Aula a ON dsa.ID_AULA = a.ID_AULA
    INNER JOIN Sede sede ON dsa.ID_SEDE = sede.ID_SEDE  -- Cambié el alias a 'sede'
    WHERE 
        al.ID_ALUMNO = p_id_alumno
        AND c.CODIGO_CURSO = p_codigo_curso
        AND p.DESCRIPCION_PERIODO = p_bimestre
        --AND p.ESTADO_PERIODO = 'Iniciado'
    ORDER BY 
        h.NUMERO_DIA;
END;
$BODY$;


-- CREAR FUNCION obtener_horario_cursos_colegio
CREATE OR REPLACE FUNCTION public.obtener_horario_cursos_colegio(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(alumno_nombre character varying, alumno_apellido_paterno character varying, alumno_apellido_materno character varying, codigo_alumno character varying, codigo_curso character varying, descripcion_curso character varying, dia character varying, hora_inicio time without time zone, hora_fin time without time zone, descripcion_seccion character varying, nivel character varying, grado character varying, docente_nombre character varying, docente_email character varying) 
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
        c.CODIGO_CURSO AS codigo_curso,
        c.DESCRIPCION_CURSO AS descripcion_curso,
        h.NOMBRE_DIA AS dia,
        h.HORA_INICIO AS hora_inicio,
        h.HORA_FIN AS hora_fin,
        s.DESCRIPCION AS descripcion_seccion,
        s.NIVEL,
        s.GRADO,
        (d.NOMBRE || ' ' || d.APELLIDO_PATERNO || ' ' || d.APELLIDO_MATERNO)::character varying AS docente_nombre,
        d.CORREO AS docente_email
    FROM 
        Matricula m
    INNER JOIN Alumno a ON m.ID_ALUMNO = a.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    INNER JOIN Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    WHERE 
        a.ID_ALUMNO = p_id_alumno
        AND m.TIPO_MATRICULA = 'Anual'
        AND m.ESTADO_MATRICULA = 'Activa'
        AND h.FECHA_INICIO <= CURRENT_DATE
        AND h.FECHA_FIN >= CURRENT_DATE
        AND p_anio = EXTRACT(YEAR FROM h.FECHA_INICIO);
END;
$BODY$;


-- CREAR FUNCION obtener_horarios_aula
CREATE OR REPLACE FUNCTION public.obtener_horarios_aula(
	p_id_aula integer)
    RETURNS TABLE(descripcion_aula character varying, descripcion_curso character varying, nombre_dia character varying, hora_inicio time without time zone, hora_fin time without time zone, seccion character varying, nombre_docente character varying, apellido_paterno_docente character varying, apellido_materno_docente character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        a.DESCRIPCION_AULA,
        c.DESCRIPCION_CURSO,
        h.NOMBRE_DIA,
        h.HORA_INICIO,
        h.HORA_FIN,
        s.DESCRIPCION AS Seccion,
        d.NOMBRE AS NOMBRE_DOCENTE,
        d.APELLIDO_PATERNO AS APELLIDO_PATERNO_DOCENTE,
        d.APELLIDO_MATERNO AS APELLIDO_MATERNO_DOCENTE
    FROM 
        Aula a
    JOIN 
        DetalleSeccionAsignada dsa ON a.ID_AULA = dsa.ID_AULA
    JOIN 
        Curso c ON dsa.ID_CURSO = c.ID_CURSO
    JOIN 
        Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    JOIN 
        Seccion s ON dsa.ID_SECCION = s.ID_SECCION
    JOIN 
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    WHERE
        a.ID_AULA = p_id_aula  -- Filtrar por la ID del Aula que pasas como parámetro
    ORDER BY 
        a.DESCRIPCION_AULA, h.NUMERO_DIA, h.HORA_INICIO;
END;
$BODY$;


-- CREAR FUNCION obtener_horarios_cursos_por_alumno
CREATE OR REPLACE FUNCTION public.obtener_horarios_cursos_por_alumno(
	p_id_alumno integer)
    RETURNS TABLE(nombre_alumno character varying, apellido_paterno character varying, apellido_materno character varying, descripcion_curso character varying, nombre_dia character varying, hora_inicio time without time zone, hora_fin time without time zone, descripcion_seccion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        a.NOMBRE AS nombre_alumno,
        a.APELLIDO_PATERNO AS apellido_paterno,
        a.APELLIDO_MATERNO AS apellido_materno,
        c.DESCRIPCION_CURSO AS descripcion_curso,
        h.NOMBRE_DIA AS nombre_dia,
        h.HORA_INICIO AS hora_inicio,
        h.HORA_FIN AS hora_fin,
        s.DESCRIPCION AS descripcion_seccion
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
        Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    WHERE 
        a.ID_ALUMNO = p_id_alumno
    ORDER BY 
        h.NUMERO_DIA, h.HORA_INICIO;
END;
$BODY$;


-- CREAR FUNCION obtener_horarios_cursos_por_docente
CREATE OR REPLACE FUNCTION public.obtener_horarios_cursos_por_docente(
	p_id_docente integer)
    RETURNS TABLE(nombre_docente character varying, apellido_paterno character varying, apellido_materno character varying, descripcion_curso character varying, nombre_dia character varying, hora_inicio time without time zone, hora_fin time without time zone, descripcion_seccion character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        d.NOMBRE AS nombre_docente,
        d.APELLIDO_PATERNO AS apellido_paterno,
        d.APELLIDO_MATERNO AS apellido_materno,
        c.DESCRIPCION_CURSO AS descripcion_curso,
        h.NOMBRE_DIA AS nombre_dia,
        h.HORA_INICIO AS hora_inicio,
        h.HORA_FIN AS hora_fin,
        s.DESCRIPCION AS descripcion_seccion
    FROM 
        Docente d
    JOIN 
        DetalleSeccionAsignada dsa ON d.ID_DOCENTE = dsa.ID_DOCENTE
    JOIN 
        Curso c ON dsa.ID_CURSO = c.ID_CURSO
    JOIN 
        Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    JOIN 
        Seccion s ON dsa.ID_SECCION = s.ID_SECCION
    WHERE 
        d.ID_DOCENTE = p_id_docente
    ORDER BY 
        h.NUMERO_DIA, h.HORA_INICIO;
END;
$BODY$;


-- CREAR FUNCION obtener_notas_por_bimestre
CREATE OR REPLACE FUNCTION public.obtener_notas_por_bimestre(
	p_id_alumno integer,
	p_tipo_periodo character varying,
	p_anio integer)
    RETURNS TABLE(alumno character varying, apellido_paterno character varying, apellido_materno character varying, descripcion_curso character varying, codigo_periodo character varying, descripcion_periodo character varying, nota real, peso real, tipo_nota character varying) 
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


-- CREAR FUNCION obtener_notas_por_curso_seccion_periodo
CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_seccion_periodo(
	p_id_curso integer,
	p_id_seccion integer,
	p_id_periodo integer)
    RETURNS TABLE(codigo_alumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, codigo_curso character varying, descripcion_curso character varying, codigo_seccion character varying, codigo_periodo character varying, descripcion_periodo character varying, nota real, peso real, tipo_nota character varying, codigo_docente character varying, nombre_docente character varying, apellido_paterno_docente character varying, apellido_materno_docente character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        a.CODIGO_ALUMNO,
        a.NOMBRE AS NOMBRE_ALUMNO,
        a.APELLIDO_PATERNO AS APELLIDO_PATERNO_ALUMNO,
        a.APELLIDO_MATERNO AS APELLIDO_MATERNO_ALUMNO,
        c.CODIGO_CURSO,
        c.DESCRIPCION_CURSO,
        s.CODIGO_SECCION,
        p.CODIGO_PERIODO,
        p.DESCRIPCION_PERIODO,
        n.NOTA,
        n.PESO,
        n.TIPO_NOTA,
        d.CODIGO_DOCENTE,
        d.NOMBRE AS NOMBRE_DOCENTE,
        d.APELLIDO_PATERNO AS APELLIDO_PATERNO_DOCENTE,
        d.APELLIDO_MATERNO AS APELLIDO_MATERNO_DOCENTE
    FROM 
        Notas n
    JOIN 
        Alumno a ON n.ID_ALUMNO = a.ID_ALUMNO
    JOIN 
        Curso c ON n.ID_CURSO = c.ID_CURSO
    JOIN 
        PeriodoAcademico p ON n.ID_PERIODO = p.ID_PERIODO
    JOIN 
        DetalleSeccionAsignada dsa ON n.ID_CURSO = dsa.ID_CURSO AND n.ID_PERIODO = dsa.ID_PERIODO
    JOIN 
        Seccion s ON dsa.ID_SECCION = s.ID_SECCION
    JOIN 
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE  -- Relación con la tabla Docente
    WHERE 
        c.ID_CURSO = p_id_curso  -- Filtrar por el ID del curso deseado
        AND s.ID_SECCION = p_id_seccion  -- Filtrar por el ID de la sección deseada
        AND p.ID_PERIODO = p_id_periodo;  -- Filtrar por el ID del periodo deseado
END;
$BODY$;


-- CREAR FUNCION obtener_reporte_cursos_docente
CREATE OR REPLACE FUNCTION public.obtener_reporte_cursos_docente(
	p_id_docente integer)
    RETURNS TABLE(codigo_curso character varying, descripcion_curso character varying, codigo_docente character varying, nombre_docente character varying, apellido_docente character varying, codigo_periodo character varying, descripcion_periodo character varying, codigo_seccion character varying, rol_docente character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        c.CODIGO_CURSO,
        c.DESCRIPCION_CURSO,
        d.CODIGO_DOCENTE,
        d.NOMBRE AS nombre_docente,
        d.APELLIDO_PATERNO AS apellido_docente,
        p.CODIGO_PERIODO,
        p.DESCRIPCION_PERIODO,
        s.CODIGO_SECCION,
        dsa.ROL_DOCENTE
    FROM 
        Curso c
    JOIN 
        DetalleSeccionAsignada dsa ON c.ID_CURSO = dsa.ID_CURSO
    JOIN 
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    JOIN 
        PeriodoAcademico p ON dsa.ID_PERIODO = p.ID_PERIODO
    JOIN 
        Seccion s ON dsa.ID_SECCION = s.ID_SECCION
	WHERE
		d.ID_DOCENTE = p_id_docente
    ORDER BY 
        p.ANIO, p.CODIGO_PERIODO, c.CODIGO_CURSO, d.CODIGO_DOCENTE;
END;
$BODY$;


-- CREAR FUNCION obtener_reporte_matricula
CREATE OR REPLACE FUNCTION public.obtener_reporte_matricula(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(nombre character varying, apellido_paterno character varying, apellido_materno character varying, fecha_inicio date, fecha_fin date, descripcion_periodo character varying, tipo_periodo character varying, anio integer, codigo_seccion character varying, descripcion_curso character varying, creditos real, docente text) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT 
        a.NOMBRE,
        a.APELLIDO_PATERNO,
        a.APELLIDO_MATERNO,
        m.FECHA_INICIO,
        m.FECHA_FIN,
        pm.DESCRIPCION_PERIODO,
        pm.TIPO_PERIODO,
        pm.ANIO,
        s.CODIGO_SECCION,
        c.DESCRIPCION_CURSO,
        c.CREDITOS,
        CONCAT(d.NOMBRE, ' ', d.APELLIDO_PATERNO, ' ', d.APELLIDO_MATERNO) AS DOCENTE
    FROM 
        Matricula m
    JOIN 
        Alumno a ON m.ID_ALUMNO = a.ID_ALUMNO
    JOIN 
        Seccion s ON m.ID_SECCION = s.ID_SECCION
    JOIN 
        DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    JOIN 
        Curso c ON dsa.ID_CURSO = c.ID_CURSO
    JOIN 
        PeriodoAcademico pm ON dsa.ID_PERIODO = pm.ID_PERIODO
    JOIN 
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    WHERE 
        a.ID_ALUMNO = p_id_alumno AND
        pm.ANIO = p_anio
    GROUP BY 
        a.NOMBRE, a.APELLIDO_PATERNO, a.APELLIDO_MATERNO, m.FECHA_INICIO, m.FECHA_FIN, 
        pm.DESCRIPCION_PERIODO, pm.TIPO_PERIODO, pm.ANIO, s.CODIGO_SECCION, 
        c.DESCRIPCION_CURSO, c.CREDITOS, d.NOMBRE, d.APELLIDO_PATERNO, d.APELLIDO_MATERNO
    ORDER BY 
        m.FECHA_INICIO;
END;
$BODY$;


-- CREAR FUNCION obtener_reporte_matricula_colegio
CREATE OR REPLACE FUNCTION public.obtener_reporte_matricula_colegio(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(alumno_nombre character varying, alumno_apellido_paterno character varying, alumno_apellido_materno character varying, codigo_alumno character varying, tipo_matricula character varying, estado_matricula character varying, seccion character varying, grado character varying, nivel character varying, periodo_academico character varying, fecha_inicio date, fecha_fin date, cod_cursos_matriculados character varying, cursos_matriculados character varying, docente_nombre character varying, docente_email character varying) 
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
        p.DESCRIPCION_PERIODO AS periodo_academico,
        p.FECHA_INICIO,
        p.FECHA_FIN,
		c.CODIGO_CURSO as cod_cursos_matriculados,
        string_agg(c.DESCRIPCION_CURSO, ', ')::VARCHAR AS cursos_matriculados, -- Cast a VARCHAR
        (d.NOMBRE || ' ' || d.APELLIDO_PATERNO || ' ' || d.APELLIDO_MATERNO)::VARCHAR AS docente_nombre, -- Cast a VARCHAR
		d.correo AS docente_email
    FROM 
        Matricula m
    INNER JOIN Alumno a ON m.ID_ALUMNO = a.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN PeriodoAcademico p ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE -- Relación con la tabla Docente
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


-- CREAR TRIGGER FUNCTION calcular_promedio_final
CREATE OR REPLACE FUNCTION public.calcular_promedio_final()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    nuevo_promedio DECIMAL(5,2);
BEGIN
    -- Verificar si la nota no es de tipo 'Promedio Final'
    IF NEW.tipo_nota != 'Promedio Final' THEN
        -- Calcular el promedio ponderado de todas las notas (Examen, Tarea, Proyecto, etc.) del alumno en ese curso y periodo
        SELECT SUM(nota * peso) / SUM(peso) INTO nuevo_promedio
        FROM Notas
        WHERE id_alumno = NEW.id_alumno
          AND id_curso = NEW.id_curso
          AND id_periodo = NEW.id_periodo
          AND tipo_nota != 'Promedio Final';  -- Excluir la fila del Promedio Final si ya existe

        -- Verificar si ya existe un registro para el Promedio Final
        IF EXISTS (SELECT 1 FROM Notas 
                   WHERE id_alumno = NEW.id_alumno 
                     AND id_curso = NEW.id_curso 
                     AND id_periodo = NEW.id_periodo
                     AND tipo_nota = 'Promedio Final') THEN
            -- Si existe, actualizar el Promedio Final
            UPDATE Notas
            SET nota = nuevo_promedio
            WHERE id_alumno = NEW.id_alumno 
              AND id_curso = NEW.id_curso 
              AND id_periodo = NEW.id_periodo
              AND tipo_nota = 'Promedio Final';
        ELSE
            -- Si no existe, insertar el Promedio Final
            INSERT INTO Notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo)
            VALUES (nuevo_promedio, 1, 'Promedio Final', NEW.id_alumno, NEW.id_curso, NEW.id_periodo);
        END IF;
    END IF;

    RETURN NEW;
END;
$BODY$;


-- CREACION DE TABLAS PARA EVALUACION

--CREACION TABLA POSTULANTE
CREATE TABLE postulante (
    "ID_POSTULANTE" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "DNI" VARCHAR(20) NOT NULL,
    "NOMBRE" VARCHAR(100) NOT NULL,
    "APELLIDO" VARCHAR(100) NOT NULL,
    "CORREO" VARCHAR(150) NOT NULL,
    "CELULAR" VARCHAR(20),
    "CODIGO_POSTULANTE" INTEGER,
    "ESTADO" BOOLEAN NOT NULL,
    "POSTULA_ACTIVO" BOOLEAN DEFAULT true,
    "POSTULA_FECHA_CREACION" TIMESTAMP DEFAULT now(),
    "POSTULA_USUARIO_CREACION" VARCHAR(45),
    "POSTULA_HOST_CREACION" VARCHAR(45),
    "POSTULA_FECHA_ACTUALIZA" TIMESTAMP,
    "POSTULA_USUARIO_ACTUALIZA" VARCHAR(45),
    "POSTULA_HOST_ACTUALIZA" VARCHAR(45),
    CONSTRAINT postulante_correo_key UNIQUE ("CORREO"),
    CONSTRAINT postulante_dni_key UNIQUE ("DNI")
);

--CREACION TABLA COMPETENCIA
CREATE TABLE competencia (
    "ID_COMPETENCIA" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "NOMBRE_COMPETENCIA" VARCHAR(100) NOT NULL,
    "PESO_COMPETENCIA" NUMERIC(6,2) NOT NULL,
    "DESCRIPCION" TEXT NOT NULL,
    "FECHA_DISPONIBILIDAD" DATE,
    "FECHA_INICIO" DATE,
    "FECHA_FIN" DATE,
    "HORA_INICIO" TIME WITHOUT TIME ZONE,
    "ORDEN_COMPETENCIA" INTEGER NOT NULL,
    "ESTADO_COMPETENCIA" VARCHAR(20) DEFAULT 'Pendiente',
    "DEPENDENCIA_COMPETENCIA" INTEGER,
    "ID_ETAPA" INTEGER,
    "ID_PROCESO" INTEGER,
    "POSTULA_ACTIVO" BOOLEAN NOT NULL DEFAULT true,
    "POSTULA_FECHA_CREACION" TIMESTAMP NOT NULL DEFAULT now(),
    "POSTULA_USUARIO_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_HOST_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_FECHA_ACTUALIZA" TIMESTAMP,
    "POSTULA_USUARIO_ACTUALIZA" VARCHAR(45),
    "POSTULA_HOST_ACTUALIZA" VARCHAR(45)
);

--CREACION TABLA PREGUNTA
CREATE TABLE pregunta (
    "ID_PREGUNTA" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "TIPO_EVALUACION" VARCHAR(50),
    "GRUPO" VARCHAR(50),
    "TEXTO_TITULO" TEXT,
    "TEXTO_SUPERIOR" TEXT,
    "TEXTO_IMAGEN" TEXT,
    "TEXTO_INFERIOR" TEXT,
    "ID_ARCHIVO_CARGA" INTEGER,
    "PREGUNTA" TEXT NOT NULL,
    "OPCION_A" TEXT NOT NULL,
    "OPCION_B" TEXT NOT NULL,
    "OPCION_C" TEXT NOT NULL,
    "OPCION_D" TEXT NOT NULL,
    "RESPUESTA_CORRECTA" CHARACTER(1) NOT NULL,
    "ID_COMPETENCIA" INTEGER NOT NULL,
    "POSTULA_ACTIVO" BOOLEAN NOT NULL DEFAULT true,
    "POSTULA_FECHA_CREACION" TIMESTAMP NOT NULL DEFAULT now(),
    "POSTULA_USUARIO_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_HOST_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_FECHA_ACTUALIZA" TIMESTAMP,
    "POSTULA_USUARIO_ACTUALIZA" VARCHAR(45),
    "POSTULA_HOST_ACTUALIZA" VARCHAR(45),
    CONSTRAINT fk_competencia_pregunta FOREIGN KEY ("ID_COMPETENCIA")
        REFERENCES competencia ("ID_COMPETENCIA") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

--CREACION TABLA CRITERIO_EVALUACION
CREATE TABLE criterio_evaluacion (
    "ID_CRITERIO" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "ID_COMPETENCIA" INTEGER NOT NULL,
    "PUNTUACION_MAXIMA" NUMERIC(6,2) NOT NULL,
    "PESO" NUMERIC(6,2) NOT NULL,
    "NUMERO_PREGUNTAS" INTEGER NOT NULL,
    "PUNTAJE_POR_PREGUNTA" NUMERIC(6,2) NOT NULL,
    "PUNTAJE_MAXIMO" NUMERIC(6,2) NOT NULL,
    "PUNTAJE_MINIMO_APROBATORIO" NUMERIC(6,2) NOT NULL,
    "TIEMPO_POR_PREGUNTA" NUMERIC(5,2) NOT NULL,
    "TIEMPO_LIMITE" TIME WITHOUT TIME ZONE,
    "POSTULA_ACTIVO" BOOLEAN NOT NULL DEFAULT true,
    "POSTULA_FECHA_CREACION" TIMESTAMP NOT NULL DEFAULT now(),
    "POSTULA_USUARIO_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_HOST_CREACION" VARCHAR(45) NOT NULL,
    "POSTULA_FECHA_ACTUALIZA" TIMESTAMP,
    "POSTULA_USUARIO_ACTUALIZA" VARCHAR(45),
    "POSTULA_HOST_ACTUALIZA" VARCHAR(45),
    CONSTRAINT fk_competencia FOREIGN KEY ("ID_COMPETENCIA")
        REFERENCES competencia ("ID_COMPETENCIA") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

--CREACION TABLA ESTADO_COMPETENCIA
CREATE TABLE estado_competencia (
    "ID" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "ID_COMPETENCIA" INTEGER NOT NULL,
    "ID_POSTULANTE" INTEGER NOT NULL,
    "ESTADO" VARCHAR(1) NOT NULL,
    "TIEMPO_INICIADO" TIMESTAMP WITHOUT TIME ZONE,
    "TIEMPO_FINALIZADO" TIMESTAMP WITHOUT TIME ZONE,
    CONSTRAINT fk_competencia FOREIGN KEY ("ID_COMPETENCIA")
        REFERENCES competencia ("ID_COMPETENCIA") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
    CONSTRAINT fk_id_postulante FOREIGN KEY ("ID_POSTULANTE")
        REFERENCES postulante ("ID_POSTULANTE") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


--CREACION TABLA EXAMEN_GENERADO
CREATE TABLE examen_generado (
    "ID_EXAMEN_GENERADO" INTEGER GENERATED BY DEFAULT AS IDENTITY PRIMARY KEY,
    "ID_POSTULANTE" INTEGER,
    "ID_PREGUNTA" INTEGER,
    "ORDEN_PREGUNTA" INTEGER,
    "RESPUESTA_SELECCIONADA" CHARACTER(1),
    "TIEMPO_RESPUESTA" TIMESTAMP WITHOUT TIME ZONE,
    "COMPLETADO" BOOLEAN DEFAULT false,
    "ID_COMPETENCIA" INTEGER,
    "POSTULA_ACTIVO" BOOLEAN DEFAULT true,
    "POSTULA_FECHA_CREACION" TIMESTAMP DEFAULT now(),
    "POSTULA_USUARIO_CREACION" VARCHAR(45),
    "POSTULA_HOST_CREACION" VARCHAR(45),
    "POSTULA_FECHA_ACTUALIZA" TIMESTAMP,
    "POSTULA_USUARIO_ACTUALIZA" VARCHAR(45),
    "POSTULA_HOST_ACTUALIZA" VARCHAR(45),
    CONSTRAINT fk_id_postulante FOREIGN KEY ("ID_POSTULANTE")
        REFERENCES postulante ("ID_POSTULANTE") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
    CONSTRAINT fk_id_pregunta FOREIGN KEY ("ID_PREGUNTA")
        REFERENCES pregunta ("ID_PREGUNTA") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);


-- PROCEDURE: actualizar_respuesta
CREATE OR REPLACE PROCEDURE actualizar_respuesta(
	IN p_respuesta_seleccionada character,
	IN p_id_postulante integer,
	IN p_id_pregunta integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE EXAMEN_GENERADO
    SET 
        "RESPUESTA_SELECCIONADA" = p_respuesta_seleccionada,
        "COMPLETADO" = TRUE,
        "TIEMPO_RESPUESTA" = CURRENT_TIMESTAMP AT TIME ZONE 'America/Lima'
    WHERE 
        "ID_POSTULANTE" = p_id_postulante 
        AND "ID_PREGUNTA" = p_id_pregunta;
    COMMIT;
END;
$BODY$;


-- PROCEDURE: generar_examen_aleatorio_competencia
CREATE OR REPLACE PROCEDURE generar_examen_aleatorio_competencia(
    IN p_id_postulante integer,
    IN p_numero_preguntas integer,
    IN p_id_competencia integer)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    grupos RECORD;
BEGIN
    IF p_id_competencia = 1 THEN
        -- Seleccionar grupos de preguntas (5 preguntas por grupo)
        FOR grupos IN 
            SELECT "GRUPO" 
            FROM pregunta 
            WHERE "ID_COMPETENCIA" = p_id_competencia 
              AND "GRUPO" IS NOT NULL
            GROUP BY "GRUPO" 
            ORDER BY RANDOM() 
            LIMIT p_numero_preguntas / 5
        LOOP
            -- Insertar la pregunta con TEXTO_SUPERIOR
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "POSTULA_ACTIVO", "POSTULA_FECHA_CREACION", "POSTULA_USUARIO_CREACION", "POSTULA_HOST_CREACION")
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, true, CURRENT_TIMESTAMP, 'admin', 'localhost'
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NOT NULL
            LIMIT 1;  -- Solo la primera pregunta (con TEXTO_SUPERIOR)

            -- Insertar las otras 4 preguntas de forma aleatoria
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "POSTULA_ACTIVO", "POSTULA_FECHA_CREACION", "POSTULA_USUARIO_CREACION", "POSTULA_HOST_CREACION")
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, true, CURRENT_TIMESTAMP, 'admin', 'localhost'
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NULL  -- Solo las preguntas restantes
            ORDER BY RANDOM()
            LIMIT 4;  -- Solo las 4 preguntas restantes
        END LOOP;
    ELSE
        -- Para otras competencias, excluir las preguntas que tienen un valor en el campo 'GRUPO'
        INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "POSTULA_ACTIVO", "POSTULA_FECHA_CREACION", "POSTULA_USUARIO_CREACION", "POSTULA_HOST_CREACION")
        SELECT p_id_postulante, q."ID_PREGUNTA", NULL, p_id_competencia, true, CURRENT_TIMESTAMP, 'admin', 'localhost'
        FROM (
            SELECT "ID_PREGUNTA"
            FROM PREGUNTA
            WHERE "ID_COMPETENCIA" = p_id_competencia
              AND "GRUPO" IS NULL  -- Excluir preguntas agrupadas
            ORDER BY RANDOM()
            LIMIT p_numero_preguntas
        ) q;
    END IF;

    -- Actualizar el orden de las preguntas generadas
    WITH preguntas_ordenadas AS (
        SELECT
            "ID_EXAMEN_GENERADO",
            "ID_POSTULANTE",
            "ID_PREGUNTA",
            ROW_NUMBER() OVER (PARTITION BY "ID_POSTULANTE" ORDER BY "ID_EXAMEN_GENERADO") AS nuevo_orden
        FROM EXAMEN_GENERADO
        WHERE "ID_POSTULANTE" = p_id_postulante
    )
    UPDATE EXAMEN_GENERADO eg
    SET "ORDEN_PREGUNTA" = po.nuevo_orden
    FROM preguntas_ordenadas po
    WHERE eg."ID_EXAMEN_GENERADO" = po."ID_EXAMEN_GENERADO";

END;
$BODY$;