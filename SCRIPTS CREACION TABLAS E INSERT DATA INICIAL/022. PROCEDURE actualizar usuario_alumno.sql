CREATE OR REPLACE PROCEDURE public.actualizar_usuario_alumno(
	IN correo_usuario character varying,
	IN "contraseña_usuario" character varying,
	IN nombre_usuario character varying,
	IN apellido_p_usuario character varying,
	IN apellido_m_usuario character varying,
	IN telefono_usuario character varying,
	IN dni_usuario_alumno character varying,
	IN fn_usuario timestamp without time zone,
	IN direccion_usuario character varying,
	IN foto_perfil_usuario character varying,
	IN genero_usuario character varying,
	IN t_a_usuario character varying,
	IN observacion_alumno character varying,
	IN apoderado_alumno character varying,
	IN t_i_alumno character varying,
	IN grado_alumno integer,
	IN habilitado_prueba_alumno boolean)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    IF contraseña_usuario IS NOT NULL AND contraseña_usuario <> '' THEN
    UPDATE users
    SET email = correo_usuario, password = contraseña_usuario,
	name = nombre_usuario, phone = telefono_usuario,
    dni_usuario = dni_usuario_alumno
    WHERE dni_usuario = dni_usuario_alumno;
	END IF;

    UPDATE alumno
    SET nombre = nombre_usuario, apellido_paterno = apellido_p_usuario,
	apellido_materno = apellido_m_usuario, dni = dni_usuario_alumno,
	correo = correo_usuario, fecha_nacimiento = fn_usuario,
	telefono = telefono_usuario, direccion = direccion_usuario,
	foto_perfil = foto_perfil_usuario, genero = genero_usuario,
	tipo_alumno = t_a_usuario, observaciones = observacion_alumno,
	apoderado = apoderado_alumno, tipo_institucion = t_i_alumno,
	id_grado = grado_alumno, habilitado_prueba = habilitado_prueba_alumno
    WHERE dni = dni_usuario_alumno;
END;
$BODY$;