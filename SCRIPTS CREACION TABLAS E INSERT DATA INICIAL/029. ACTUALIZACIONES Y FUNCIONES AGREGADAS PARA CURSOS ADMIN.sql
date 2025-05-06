--agregando campo id_sede en tabla curso
ALTER TABLE curso ADD COLUMN id_sede INT NULL;

--actualizando sede para cursos
UPDATE public.curso
SET id_sede = 2
WHERE id_curso between 1 and 10;

--FUNCIONES AGREGADAS

--para listar cursos
--listar_cursos_sede
CREATE OR REPLACE FUNCTION public.listar_cursos_sede(
	codigo_sedee character varying)
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT c.id_curso, c.codigo_curso, c.descripcion_curso, c.creditos, c.modalidad,
	c.nivel
    FROM curso c
	JOIN sede s ON c.id_sede = s.id_sede
	WHERE s.codigo_sede = codigo_sedee
	ORDER BY c.id_curso;
END;
$BODY$;

--listar_cursos_sede_paginado
CREATE OR REPLACE FUNCTION public.listar_cursos_sede_paginado(
	codigo_sedee character varying,
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_paginas integer;
BEGIN
    SELECT COUNT(*) INTO total_paginas
	from listar_cursos_sede(codigo_sedee);
	
    RETURN QUERY
    SELECT *, total_paginas as total from listar_cursos_sede(codigo_sedee)
	LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;

--para filtrar cursos
--buscar_cursos
CREATE OR REPLACE FUNCTION public.buscar_cursos(
	cod_sede character varying,
	filtro character varying)
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT c.id_curso, c.codigo_curso, c.descripcion_curso, c.creditos, c.modalidad, c.nivel
    FROM curso c
	JOIN sede s ON c.id_sede = s.id_sede
	WHERE s.codigo_sede = cod_sede AND
	(unaccent(codigo_curso) ILIKE unaccent('%' || filtro || '%')
     or unaccent(descripcion_curso) ILIKE unaccent('%' || filtro || '%')
     or unaccent(modalidad) ILIKE unaccent('%' || filtro || '%')
     or unaccent(nivel) ILIKE unaccent('%' || filtro || '%'))
	 ORDER BY c.id_curso;
END;
$BODY$;

--buscar_cursos_paginado
CREATE OR REPLACE FUNCTION public.buscar_cursos_paginado(
	cod_sede character varying,
	filtro character varying,
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_paginas integer;
BEGIN
    SELECT COUNT(*) INTO total_paginas
	from buscar_cursos(cod_sede, filtro);
	
    RETURN QUERY
    SELECT *, total_paginas as total  FROM buscar_cursos(cod_sede, filtro)
	LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;

--insertar_curso
CREATE OR REPLACE PROCEDURE public.insertar_curso(
	IN desc_curso character varying,
	IN creditos_curso real,
	IN modalidad_curso character varying,
	IN nivel_curso character varying,
	IN codigo_sede_usuario character varying)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
v_id_sede INTEGER;

BEGIN
	SELECT id_sede INTO v_id_sede
	FROM sede
	WHERE codigo_sede = codigo_sede_usuario;

	IF NOT FOUND THEN
		RAISE EXCEPTION 'No se encontró ninguna sede con el código: %', codigo_sede_usuario;
	END IF;

    IF EXISTS (
        SELECT 1
        FROM curso
        WHERE descripcion_curso = desc_curso
          AND creditos = creditos_curso
          AND modalidad = modalidad_curso
          AND nivel = nivel_curso
          AND id_sede = v_id_sede
    ) THEN
        RAISE EXCEPTION 'Ya existe un curso con la misma información en esta sede: %', desc_curso;
    END IF;	

    INSERT INTO curso (descripcion_curso, creditos,
	modalidad, nivel, id_sede)
    VALUES (desc_curso, creditos_curso, modalidad_curso,
	nivel_curso, v_id_sede);
END;
$BODY$;

--funcion para generar codigo curso automaticamente
CREATE OR REPLACE FUNCTION public.generar_codigo_curso()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    tipo_institucion_sede CHAR(1);
BEGIN
    SELECT tipo_institucion INTO tipo_institucion_sede
    FROM sede
    WHERE id_sede = NEW.id_sede;

    IF tipo_institucion_sede = 'C' THEN
        NEW.codigo_curso := 'C' || LPAD(nextval('codigoalumno_seq')::TEXT, 3, '0');
    ELSIF tipo_institucion_sede = 'U' THEN
        NEW.codigo_curso := 'U' || LPAD(nextval('codigoalumno_seq')::TEXT, 3, '0');
    ELSE
        RAISE EXCEPTION 'Tipo de institución no reconocido para la sede con id_sede: %', NEW.id_sede;
    END IF;

    RETURN NEW;
END;
$BODY$;

-- Crear el trigger para generar el código del curso antes de la inserción
CREATE TRIGGER before_insert_codigo_curso
BEFORE INSERT ON curso
FOR EACH ROW
EXECUTE FUNCTION public.generar_codigo_curso();


--actualizar_curso
CREATE OR REPLACE PROCEDURE public.actualizar_curso(
	IN idcurso integer,
	IN desc_curso character varying,
	IN creditos_curso real,
	IN modalidad_curso character varying,
	IN nivel_curso character varying,
	IN codigo_sede_usuario character varying)
LANGUAGE 'plpgsql'
AS $BODY$

DECLARE
v_id_sede INTEGER;

BEGIN
	SELECT id_sede INTO v_id_sede
	FROM sede
	WHERE codigo_sede = codigo_sede_usuario;

	IF NOT FOUND THEN
		RAISE EXCEPTION 'No se encontró ninguna sede con el código: %', codigo_sede_usuario;
	END IF;

    IF EXISTS (
        SELECT 1
        FROM curso
        WHERE descripcion_curso = desc_curso
          AND creditos = creditos_curso
          AND modalidad = modalidad_curso
          AND nivel = nivel_curso
          AND id_sede = v_id_sede
    ) THEN
        RAISE EXCEPTION 'Ya existe un curso con la misma información en esta sede: %', desc_curso;
    END IF;	

	UPDATE curso
	SET descripcion_curso = desc_curso, creditos = creditos_curso,
	modalidad = modalidad_curso, nivel = nivel_curso
	WHERE id_curso = idcurso;
END;
$BODY$;


--eliminar_curso
CREATE OR REPLACE PROCEDURE public.eliminar_curso(
	IN idcurso integer)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    IF EXISTS (SELECT 1 FROM asistencias WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene asistencias asociadas. Id del curso: %', idcurso;
    END IF;

    IF EXISTS (SELECT 1 FROM detalleseccionasignada WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene secciones asignadas asociadas. Id del curso: %', idcurso;
    END IF;

    IF EXISTS (SELECT 1 FROM notas WHERE id_curso = idcurso) THEN
        RAISE EXCEPTION 'No se puede eliminar el curso porque tiene notas asociadas. Id del curso: %', idcurso;
    END IF;
	
    DELETE FROM curso
	WHERE id_curso = idcurso;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Curso no encontrado con id: %', idcurso;
    END IF;
END;
$BODY$;


--obtener resumen pagos pendientes por alumno
CREATE OR REPLACE FUNCTION public.get_resumen_pagos_por_alumno(
    p_id_alumno integer,
    p_anio integer
)
RETURNS TABLE(
    id_alumno integer,
    cantidad_vencidos integer,
    cantidad_por_vencer integer,
    cantidad_a_tiempo integer,
    monto_total_pendiente numeric
)
LANGUAGE 'plpgsql'
COST 100
VOLATILE PARALLEL UNSAFE
AS $BODY$
BEGIN
    RETURN QUERY
    SELECT
        p_id_alumno AS id_alumno,
        COUNT(*) FILTER (WHERE p.f_vencimiento < CURRENT_DATE)::integer AS cantidad_vencidos,
        COUNT(*) FILTER (WHERE p.f_vencimiento BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_por_vencer,
        COUNT(*) FILTER (WHERE p.f_vencimiento > CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_a_tiempo,
        COALESCE(SUM(p.total_a_pagar), 0) AS monto_total_pendiente
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio;
END;
$BODY$;

