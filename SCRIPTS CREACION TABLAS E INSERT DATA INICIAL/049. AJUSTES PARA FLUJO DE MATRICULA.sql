-- se añadio a la funcion realizar_matricula_anual una validacion para comprobar si existe alumno
CREATE OR REPLACE FUNCTION public.realizar_matricula_anual(
	p_id_alumno integer,
	p_anio integer,
	p_id_grado integer,
	p_codigo_sede character varying,
	p_tipo_matricula character varying DEFAULT 'Regular'::character varying,
	p_estado_matricula character varying DEFAULT 'Activa'::character varying,
	p_observaciones text DEFAULT NULL::text,
	p_usuario_registro character varying DEFAULT 'SISTEMA'::character varying)
    RETURNS json
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
AS $BODY$

DECLARE
    id_periodo_anual INTEGER;
    resultado JSON;
	existe_alumno BOOLEAN;
BEGIN
    -- Verificar si existe el alumno
    SELECT EXISTS (
        SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno
    ) INTO existe_alumno;
    
    IF NOT existe_alumno THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno con ID ' || p_id_alumno || ' no existe.',
            'id_matricula', NULL
        );
    END IF;
	
    -- Buscar el perÃ­odo anual
    SELECT id_periodo INTO id_periodo_anual
    FROM periodoacademico 
    WHERE tipo_periodo = 'AÃ±o' 
    AND anio = p_anio
    AND estado_periodo = 'Activo';
    
    IF id_periodo_anual IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No existe perÃ­odo acadÃ©mico anual para el aÃ±o ' || p_anio,
            'id_matricula', NULL
        );
    END IF;
    
    -- Realizar la matrÃ­cula usando la funciÃ³n existente
    SELECT realizar_matricula(
        p_id_alumno, 
        id_periodo_anual, 
        p_id_grado, 
        p_codigo_sede, 
        p_tipo_matricula, 
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro
    ) INTO resultado;
    
    RETURN resultado;
END;
$BODY$;

/*modificacion de metodo buscar_alumnos_paginado*/

CREATE OR REPLACE FUNCTION public.buscar_alumnos_paginado(
    cod_sede character varying,
    filtro character varying,
    pagina integer,
    cantidad_por_pagina integer
)
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
    habilitado_prueba_alumno boolean,
    total_resultados integer
)
LANGUAGE plpgsql
AS $BODY$
DECLARE
    total_registros integer;
BEGIN
    -- Validar página mínima
    IF pagina < 1 THEN
        pagina := 1;
    END IF;
    -- Contar total de registros que coinciden
    SELECT COUNT(*) INTO total_registros
    FROM buscar_alumnos(cod_sede, filtro);

    -- Retornar datos paginados con total incluido
    RETURN QUERY
    SELECT 
        a.*,
        total_registros AS total_resultados
    FROM buscar_alumnos(cod_sede, filtro) a
    LIMIT cantidad_por_pagina 
    OFFSET (pagina - 1) * cantidad_por_pagina;
END;
$BODY$;

/*buscar_alumnos se cambio validacion para acentos en nombres*/

CREATE OR REPLACE FUNCTION public.buscar_alumnos(
	cod_sede character varying,
	filtro character varying)
    RETURNS TABLE(idalumno integer, codigoalumno character varying, nombre_alumno character varying, apellido_paterno_alumno character varying, apellido_materno_alumno character varying, dni_alumno character varying, correo_alumno character varying, telefono_alumno character varying, direccion_alumno character varying, foto_perfil_alumno character varying, genero_alumno character varying, tipoalumno character varying, observaciones_alumno character varying, apoderado_alumno character varying, fecha_nacimiento_alumno date, id_grado_alumno integer, habilitado_prueba_alumno boolean) 
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
        -- Buscar en nombre completo (sin acentos, sin mayúsculas)
        unaccent(LOWER(CONCAT(a.nombre, ' ', a.apellido_paterno, ' ', a.apellido_materno))) 
            LIKE unaccent(LOWER('%' || filtro || '%'))
        OR
        -- Buscar en DNI
        LOWER(a.dni) LIKE LOWER('%' || filtro || '%')
    )
        )
    ORDER BY a.id_alumno;
END;
$BODY$;