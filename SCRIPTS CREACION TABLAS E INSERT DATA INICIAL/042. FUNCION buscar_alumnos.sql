-- FUNCIÓN buscar_alumnos SIMPLIFICADA
-- Busca solo por: Nombre completo (nombre + apellidos), DNI y role = 'user'

CREATE OR REPLACE FUNCTION public.buscar_alumnos(
    cod_sede character varying,
    filtro character varying)
    RETURNS TABLE(
        idalumno integer, 
        codigoalumno character varying, 
        nombre_alumno character varying, 
        apellido_paterno_alumno character varying, 
        apellido_materno_alumno character varying, 
        dni_alumno character varying, 
        correo_alumno character varying, 
        telefono_alumno character varying, 
        direccion_alumno character varying, 
        foto_perfil_alumno character varying, 
        genero_alumno character varying, 
        tipoalumno character varying, 
        observaciones_alumno character varying, 
        apoderado_alumno character varying, 
        fecha_nacimiento_alumno date, 
        id_grado_alumno integer, 
        habilitado_prueba_alumno boolean
    ) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000
AS $BODY$
BEGIN
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
        a.habilitado_prueba
    FROM alumno a
    INNER JOIN users u ON a.dni = u.dni_usuario
    WHERE 
        a.activo = true
        AND u.activo = true
        AND u.role = 'user'
        AND (cod_sede IS NULL OR a.codigo_sede = cod_sede)
        AND (
            filtro IS NULL 
            OR filtro = '' 
            OR (
                -- Buscar en nombre completo (nombre + apellidos)
                LOWER(CONCAT(a.nombre, ' ', a.apellido_paterno, ' ', a.apellido_materno)) LIKE LOWER('%' || filtro || '%') OR
                -- Buscar en DNI
                LOWER(a.dni) LIKE LOWER('%' || filtro || '%')
            )
        )
    ORDER BY a.id_alumno;
END;
$BODY$;
