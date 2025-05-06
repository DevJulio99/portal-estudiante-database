CREATE OR REPLACE PROCEDURE public.insertar_usuario_alumno(
	IN correo_usuario character varying,
	IN nombre_usuario character varying,
	IN apellido_p_usuario character varying,
	IN apellido_m_usuario character varying,
	IN telefono_usuario character varying,
	IN dni_usuario character varying,
	IN codigo_sede_usuario character varying,
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
    INSERT INTO users (email, password, name, phone, 
	role, dni_usuario,codigo_sede)
    VALUES (correo_usuario, dni_usuario, nombre_usuario, 
	telefono_usuario, 'user', dni_usuario, codigo_sede_usuario);

    INSERT INTO alumno (nombre, apellido_paterno, apellido_materno,
	dni, correo, fecha_nacimiento, telefono, direccion, foto_perfil,
	genero, tipo_alumno, observaciones, apoderado, tipo_institucion,
	codigo_sede, id_grado, habilitado_prueba)
    VALUES (nombre_usuario, apellido_p_usuario, apellido_m_usuario,
	dni_usuario, correo_usuario, fn_usuario, telefono_usuario,
	direccion_usuario, foto_perfil_usuario, genero_usuario,
	t_a_usuario, observacion_alumno, apoderado_alumno,
	t_i_alumno, codigo_sede_usuario, grado_alumno, habilitado_prueba_alumno);
END;
$BODY$;