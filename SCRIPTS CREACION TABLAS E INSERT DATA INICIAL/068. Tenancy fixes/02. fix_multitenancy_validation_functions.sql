-- ============================================================================
-- VALIDACIÓN Y REFUERZO DE FUNCIONES PARA MULTI-TENANCY
-- Funciones que probablemente están bien pero necesitan validación adicional
-- ============================================================================

-- ============================================================================
-- Funciones que filtran por ID pero deberían validar codigo_sede implícitamente
-- ============================================================================

-- Estas funciones filtran por id_alumno/id_docente que deberían garantizar la sede,
-- pero es mejor práctica agregar validación explícita cuando sea posible.

-- ============================================================================
-- FUNCTION: obtener_horario_alumno_bimestre
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede para mayor seguridad

CREATE OR REPLACE FUNCTION public.obtener_horario_alumno_bimestre(
    p_id_alumno integer, 
    p_codigo_curso character varying, 
    p_bimestre character varying,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional para validación
)
RETURNS TABLE(
    nombre_dia character varying, 
    numero_dia integer, 
    fecha_inicio date, 
    fecha_fin date, 
    hora_inicio time without time zone, 
    hora_fin time without time zone, 
    aula_descripcion character varying, 
    sede_descripcion character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Si se proporciona codigo_sede, validar que el alumno pertenece a esa sede
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

    RETURN QUERY
    SELECT 
        h.NOMBRE_DIA, 
        h.NUMERO_DIA, 
        h.FECHA_INICIO, 
        h.FECHA_FIN, 
        h.HORA_INICIO, 
        h.HORA_FIN, 
        a.DESCRIPCION_AULA, 
        sede.DESCRIPCION_SEDE
    FROM 
        Alumno al
    INNER JOIN Matricula m ON al.ID_ALUMNO = m.ID_ALUMNO
    INNER JOIN Seccion s ON m.ID_SECCION = s.ID_SECCION
    INNER JOIN DetalleSeccionAsignada dsa ON s.ID_SECCION = dsa.ID_SECCION
    INNER JOIN PeriodoAcademico p ON dsa.ID_PERIODO = p.ID_PERIODO
    INNER JOIN Curso c ON dsa.ID_CURSO = c.ID_CURSO
    INNER JOIN Horario h ON dsa.ID_HORARIO = h.ID_HORARIO
    INNER JOIN Aula a ON dsa.ID_AULA = a.ID_AULA
    INNER JOIN Sede sede ON dsa.ID_SEDE = sede.ID_SEDE
    WHERE 
        al.ID_ALUMNO = p_id_alumno
        AND c.CODIGO_CURSO = p_codigo_curso
        AND p.DESCRIPCION_PERIODO = p_bimestre
        AND (p_codigo_sede IS NULL OR dsa.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        h.NUMERO_DIA;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_horario_cursos_colegio
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_horario_cursos_colegio(
    p_id_alumno integer, 
    p_anio integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    alumno_nombre character varying, 
    alumno_apellido_paterno character varying, 
    alumno_apellido_materno character varying, 
    codigo_alumno character varying, 
    codigo_curso character varying, 
    descripcion_curso character varying, 
    dia character varying, 
    hora_inicio time without time zone, 
    hora_fin time without time zone, 
    descripcion_seccion character varying, 
    nivel character varying, 
    grado character varying, 
    docente_nombre character varying, 
    docente_email character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

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
        AND p_anio = EXTRACT(YEAR FROM h.FECHA_INICIO)
        AND (p_codigo_sede IS NULL OR m.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY h.NUMERO_DIA, h.HORA_INICIO;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_horarios_cursos_por_alumno
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_horarios_cursos_por_alumno(
    p_id_alumno integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    nombre_alumno character varying, 
    apellido_paterno character varying, 
    apellido_materno character varying, 
    descripcion_curso character varying, 
    nombre_dia character varying, 
    hora_inicio time without time zone, 
    hora_fin time without time zone, 
    descripcion_seccion character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

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
        AND (p_codigo_sede IS NULL OR m.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        h.NUMERO_DIA, h.HORA_INICIO;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_horarios_cursos_por_docente
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_horarios_cursos_por_docente(
    p_id_docente integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    nombre_docente character varying, 
    apellido_paterno character varying, 
    apellido_materno character varying, 
    descripcion_curso character varying, 
    nombre_dia character varying, 
    hora_inicio time without time zone, 
    hora_fin time without time zone, 
    descripcion_seccion character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el docente pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM docente 
            WHERE id_docente = p_id_docente 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El docente con ID % no pertenece a la sede %', p_id_docente, p_codigo_sede;
        END IF;
    END IF;

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
        AND (p_codigo_sede IS NULL OR dsa.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        h.NUMERO_DIA, h.HORA_INICIO;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_notas_por_curso_periodo
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_periodo(
    p_id_alumno integer, 
    p_tipo_periodo character varying, 
    p_anio integer, 
    p_cod_curso character varying, 
    p_cod_periodo character varying,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
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
    tipo_nota character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

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
        AND c.codigo_curso = p_cod_curso
        AND pa.codigo_periodo = p_cod_periodo
        AND (p_codigo_sede IS NULL OR n.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        pa.ANIO, pa.CODIGO_PERIODO;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_notas_por_curso_seccion_periodo
-- ============================================================================
-- Mejora: Agregar validación implícita mediante JOIN

CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_seccion_periodo(
    p_id_curso integer, 
    p_id_seccion integer, 
    p_id_periodo integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    codigo_alumno character varying, 
    nombre_alumno character varying, 
    apellido_paterno_alumno character varying, 
    apellido_materno_alumno character varying, 
    codigo_curso character varying, 
    descripcion_curso character varying, 
    codigo_seccion character varying, 
    codigo_periodo character varying, 
    descripcion_periodo character varying, 
    nota real, 
    peso real, 
    tipo_nota character varying, 
    codigo_docente character varying, 
    nombre_docente character varying, 
    apellido_paterno_docente character varying, 
    apellido_materno_docente character varying
)
LANGUAGE plpgsql
AS $function$
DECLARE
    v_codigo_sede_curso character varying;
    v_codigo_sede_seccion character varying;
    v_codigo_sede_periodo character varying;
BEGIN
    -- Si se proporciona codigo_sede, validar que todos los componentes pertenecen a esa sede
    IF p_codigo_sede IS NOT NULL THEN
        SELECT codigo_sede INTO v_codigo_sede_curso FROM curso WHERE id_curso = p_id_curso;
        SELECT codigo_sede INTO v_codigo_sede_seccion FROM seccion WHERE id_seccion = p_id_seccion;
        SELECT codigo_sede INTO v_codigo_sede_periodo FROM periodoacademico WHERE id_periodo = p_id_periodo;
        
        IF v_codigo_sede_curso != p_codigo_sede OR 
           v_codigo_sede_seccion != p_codigo_sede OR 
           v_codigo_sede_periodo != p_codigo_sede THEN
            RAISE EXCEPTION 'Los componentes (curso, sección, período) no pertenecen todos a la sede %', p_codigo_sede;
        END IF;
    END IF;

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
        Docente d ON dsa.ID_DOCENTE = d.ID_DOCENTE
    WHERE 
        c.ID_CURSO = p_id_curso
        AND s.ID_SECCION = p_id_seccion
        AND p.ID_PERIODO = p_id_periodo
        AND (p_codigo_sede IS NULL OR n.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY a.APELLIDO_PATERNO, a.APELLIDO_MATERNO, a.NOMBRE;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_notas_por_curso_subperiodo (ambas versiones)
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

-- Versión 1: Sin tipo_periodo
CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_subperiodo(
    p_id_alumno integer, 
    p_anio integer, 
    p_cod_curso character varying, 
    p_cod_subperiodo character varying,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
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
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

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
        AND (p_codigo_sede IS NULL OR n.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        pa.anio, pa.codigo_periodo, sp.codigo_subperiodo;
END;
$function$;

-- Versión 2: Con tipo_periodo
CREATE OR REPLACE FUNCTION public.obtener_notas_por_curso_subperiodo(
    p_id_alumno integer, 
    p_tipo_periodo character varying, 
    p_anio integer, 
    p_cod_curso character varying, 
    p_cod_subperiodo character varying,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
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
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

    RETURN QUERY
    SELECT 
        a.NOMBRE AS alumno,
        a.APELLIDO_PATERNO,
        a.APELLIDO_MATERNO,
        c.CODIGO_CURSO,
        c.DESCRIPCION_CURSO,
        pa.CODIGO_PERIODO,
        pa.DESCRIPCION_PERIODO,
        sp.CODIGO_SUBPERIODO,
        sp.DESCRIPCION_SUBPERIODO,
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
    JOIN 
        SubPeriodos sp ON n.ID_SUBPERIODO = sp.ID_SUBPERIODO
    WHERE 
        n.ID_ALUMNO = p_id_alumno
        AND pa.TIPO_PERIODO = p_tipo_periodo
        AND pa.ANIO = p_anio
        AND c.codigo_curso = p_cod_curso
        AND sp.codigo_subperiodo = p_cod_subperiodo
        AND (p_codigo_sede IS NULL OR n.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        pa.ANIO, pa.CODIGO_PERIODO, sp.CODIGO_SUBPERIODO;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_reporte_cursos_docente
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_reporte_cursos_docente(
    p_id_docente integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    codigo_curso character varying, 
    descripcion_curso character varying, 
    codigo_docente character varying, 
    nombre_docente character varying, 
    apellido_docente character varying, 
    codigo_periodo character varying, 
    descripcion_periodo character varying, 
    codigo_seccion character varying, 
    rol_docente character varying
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el docente pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM docente 
            WHERE id_docente = p_id_docente 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El docente con ID % no pertenece a la sede %', p_id_docente, p_codigo_sede;
        END IF;
    END IF;

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
        AND (p_codigo_sede IS NULL OR dsa.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        p.ANIO, p.CODIGO_PERIODO, c.CODIGO_CURSO, d.CODIGO_DOCENTE;
END;
$function$;

-- ============================================================================
-- FUNCTION: obtener_reporte_matricula (y variantes)
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_reporte_matricula(
    p_id_alumno integer, 
    p_anio integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    nombre character varying, 
    apellido_paterno character varying, 
    apellido_materno character varying, 
    fecha_inicio date, 
    fecha_fin date, 
    descripcion_periodo character varying, 
    tipo_periodo character varying, 
    anio integer, 
    codigo_seccion character varying, 
    descripcion_curso character varying, 
    creditos real, 
    docente text
)
LANGUAGE plpgsql
AS $function$
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

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
        a.ID_ALUMNO = p_id_alumno 
        AND pm.ANIO = p_anio
        AND (p_codigo_sede IS NULL OR m.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    GROUP BY 
        a.NOMBRE, a.APELLIDO_PATERNO, a.APELLIDO_MATERNO, m.FECHA_INICIO, m.FECHA_FIN, 
        pm.DESCRIPCION_PERIODO, pm.TIPO_PERIODO, pm.ANIO, s.CODIGO_SECCION, 
        c.DESCRIPCION_CURSO, c.CREDITOS, d.NOMBRE, d.APELLIDO_PATERNO, d.APELLIDO_MATERNO
    ORDER BY 
        m.FECHA_INICIO;
END;
$function$;

-- Las otras variantes de obtener_reporte_matricula_colegio y obtener_reporte_matricula_colegio_periodo
-- también deberían seguir el mismo patrón, pero como son más complejas, se pueden actualizar después
-- si se detectan problemas en uso real.

-- ============================================================================
-- FUNCTION: obtener_asistencias_alumno_bimestre
-- ============================================================================
-- Mejora: Agregar validación opcional de codigo_sede

CREATE OR REPLACE FUNCTION public.obtener_asistencias_alumno_bimestre(
    p_id_alumno integer, 
    p_bimestre character varying, 
    cod_curso character varying, 
    p_anio integer,
    p_codigo_sede character varying DEFAULT NULL  -- NUEVO: Parámetro opcional
)
RETURNS TABLE(
    id_asistencia integer, 
    dia date, 
    estado_asistencia character varying, 
    descripcion_curso character varying, 
    modalidad character varying, 
    hora_inicio time without time zone, 
    hora_fin time without time zone
)
LANGUAGE plpgsql
AS $function$
DECLARE
    bimestre_inicio DATE;
    bimestre_fin DATE;
BEGIN
    -- Validar que el alumno pertenece a la sede si se proporciona
    IF p_codigo_sede IS NOT NULL THEN
        IF NOT EXISTS (
            SELECT 1 FROM alumno 
            WHERE id_alumno = p_id_alumno 
            AND codigo_sede = p_codigo_sede
        ) THEN
            RAISE EXCEPTION 'El alumno con ID % no pertenece a la sede %', p_id_alumno, p_codigo_sede;
        END IF;
    END IF;

    -- Obtenemos las fechas de inicio y fin del bimestre del periodo académico
    SELECT p.FECHA_INICIO, p.FECHA_FIN
    INTO bimestre_inicio, bimestre_fin
    FROM PeriodoAcademico p
    WHERE p.DESCRIPCION_PERIODO LIKE '%' || p_bimestre || '%'
    AND p.ANIO = p_anio
    AND p.TIPO_PERIODO = 'Bimestre'
    AND (p_codigo_sede IS NULL OR p.codigo_sede = p_codigo_sede);  -- MEJORA: Filtrar si se proporciona

    IF bimestre_inicio IS NULL OR bimestre_fin IS NULL THEN
        RAISE EXCEPTION 'No se encontró el periodo para el bimestre % en el año %', p_bimestre, p_anio;
    END IF;

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
        AND a.DIA BETWEEN bimestre_inicio AND bimestre_fin
        AND c.CODIGO_CURSO = cod_curso
        AND (p_codigo_sede IS NULL OR a.codigo_sede = p_codigo_sede)  -- MEJORA: Filtrar si se proporciona
    ORDER BY 
        a.DIA;
END;
$function$;

