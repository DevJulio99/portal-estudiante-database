DROP FUNCTION IF EXISTS public.listar_cursos_sede(character varying);

CREATE OR REPLACE FUNCTION public.listar_cursos_sede()
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
  v_tenant_id VARCHAR;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se pudo listar cursos.';
    END IF;
	
    RETURN QUERY
    SELECT c.id_curso, c.codigo_curso, c.descripcion_curso, c.creditos, c.modalidad,
	c.nivel
    FROM curso c
	JOIN sede s ON c.id_sede = s.id_sede
	WHERE s.codigo_sede = v_tenant_id
	ORDER BY c.id_curso;
END;
$BODY$;

DROP FUNCTION IF EXISTS public.listar_cursos_sede_paginado(character varying, integer, integer);

CREATE OR REPLACE FUNCTION public.listar_cursos_sede_paginado(
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
	from listar_cursos_sede();
	
    RETURN QUERY
    SELECT *, total_paginas as total from listar_cursos_sede()
	LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;


DROP FUNCTION IF EXISTS public.buscar_cursos(character varying, character varying);

CREATE OR REPLACE FUNCTION public.buscar_cursos(
	filtro character varying)
    RETURNS TABLE(idcurso integer, codigocurso character varying, descripcioncurso character varying, creditoscurso real, modalidadcurso character varying, nivelcurso character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
  v_tenant_id VARCHAR;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se pudo listar cursos.';
    END IF;
	
    RETURN QUERY
    SELECT c.id_curso, c.codigo_curso, c.descripcion_curso, c.creditos, c.modalidad, c.nivel
    FROM curso c
	JOIN sede s ON c.id_sede = s.id_sede
	WHERE s.codigo_sede = v_tenant_id AND
	(unaccent(codigo_curso) ILIKE unaccent('%' || filtro || '%')
     or unaccent(descripcion_curso) ILIKE unaccent('%' || filtro || '%')
     or unaccent(modalidad) ILIKE unaccent('%' || filtro || '%')
     or unaccent(nivel) ILIKE unaccent('%' || filtro || '%'))
	 ORDER BY c.id_curso;
END;
$BODY$;

DROP FUNCTION IF EXISTS public.buscar_cursos_paginado(character varying, character varying, integer, integer);

CREATE OR REPLACE FUNCTION public.buscar_cursos_paginado(
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
	from buscar_cursos(filtro);
	
    RETURN QUERY
    SELECT *, total_paginas as total  FROM buscar_cursos(filtro)
	LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;