CREATE OR REPLACE PROCEDURE public.eliminar_usuario_alumno(
	IN dni_usuario_alumno character varying)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    UPDATE alumno
    SET activo = false
	WHERE dni = dni_usuario_alumno;

	UPDATE users
    SET activo = false
	WHERE dni_usuario = dni_usuario_alumno;

    IF NOT FOUND THEN
        RAISE EXCEPTION 'Usuario no encontrado con numero de documento % no encontrado', dni_usuario;
    END IF;
END;
$BODY$;