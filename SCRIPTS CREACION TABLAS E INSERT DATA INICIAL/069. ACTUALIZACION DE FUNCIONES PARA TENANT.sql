CREATE OR REPLACE FUNCTION public.listar_alumnos_sede_paginado(
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_paginas integer;
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede listar alumnos de esta Sede.';
    END IF;
	
    SELECT COUNT(*) INTO total_paginas
    FROM alumno a
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = v_tenant_id 
      AND a.activo = true
      AND u.role = 'user';
	
    RETURN QUERY
    SELECT 
        a.id_alumno, 
        a.codigo_alumno, 
        a.nombre, 
        a.apellido_paterno, 
        a.apellido_materno,
        a.dni, 
        a.correo, 
        a.telefono, 
        a.direccion, 
        a.foto_perfil, 
        a.genero,
        a.tipo_alumno, 
        a.observaciones, 
        a.apoderado, 
        a.fecha_nacimiento, 
        a.id_grado, 
        a.habilitado_prueba,
        total_paginas AS total_resultados
    FROM alumno a
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = v_tenant_id 
      AND a.activo = true
      AND u.role = 'user'
    ORDER BY a.id_alumno
    LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;


CREATE OR REPLACE FUNCTION public.buscar_alumnos_paginado(
	filtro character varying,
	pagina integer,
	cantidad_por_pagina integer)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean, total_resultados integer) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
    total_registros integer;
	v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se puede listar alumnos de esta Sede.';
    END IF;
	
    -- Validar página mínima
    IF pagina < 1 THEN
        pagina := 1;
    END IF;
    -- Contar total de registros que coinciden
    SELECT COUNT(*) INTO total_registros
    FROM buscar_alumnos(v_tenant_id, filtro);

    -- Retornar datos paginados con total incluido
    RETURN QUERY
    SELECT 
        a.*,
        total_registros AS total_resultados
    FROM buscar_alumnos(v_tenant_id, filtro) a
    LIMIT cantidad_por_pagina 
    OFFSET (pagina - 1) * cantidad_por_pagina;
END;
$BODY$;