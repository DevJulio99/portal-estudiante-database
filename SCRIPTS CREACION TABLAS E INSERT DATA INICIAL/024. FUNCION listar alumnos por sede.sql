CREATE OR REPLACE FUNCTION public.listar_alumnos_sede(
	codigo_sedee character varying)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT id_alumno, codigo_alumno, nombre, apellido_paterno, apellido_materno,
	dni, correo, telefono, direccion, foto_perfil, genero,
	tipo_alumno, observaciones, apoderado, fecha_nacimiento, id_grado, habilitado_prueba
    FROM alumno WHERE codigo_sede = codigo_sedee AND activo = true
	ORDER BY id_alumno;
END;
$BODY$;