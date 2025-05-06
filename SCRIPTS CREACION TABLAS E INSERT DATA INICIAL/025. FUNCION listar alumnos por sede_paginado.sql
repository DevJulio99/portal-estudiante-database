CREATE OR REPLACE FUNCTION public.listar_alumnos_sede_paginado(
	codigo_sedee character varying,
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
BEGIN
    SELECT COUNT(*) INTO total_paginas
	from listar_alumnos_sede(codigo_sedee);
	
    RETURN QUERY
    SELECT *, total_paginas as total  from listar_alumnos_sede(codigo_sedee)
	LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;