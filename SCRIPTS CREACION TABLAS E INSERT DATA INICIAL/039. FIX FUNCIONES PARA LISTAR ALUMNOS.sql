-- ============================================================================
-- SOLUCIÓN AL PROBLEMA: FUNCIONES CORREGIDAS PARA LISTAR ALUMNOS
-- ============================================================================

-- PROBLEMA IDENTIFICADO:
-- Las funciones listar_alumnos_sede y listar_alumnos_sede_paginado 
-- NO filtran por rol de usuario, por eso muestran todos los alumnos

-- ============================================================================
-- 1. FUNCIÓN CORREGIDA: listar_alumnos_sede 
-- ============================================================================

CREATE OR REPLACE FUNCTION public.listar_alumnos_sede(
	codigo_sedee character varying)
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
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = codigo_sedee 
      AND a.activo = true
      AND u.role = 'user'
    ORDER BY a.id_alumno;
END;
$BODY$;


-- ============================================================================
-- 2. FUNCIÓN CORREGIDA: listar_alumnos_sede_paginado
-- ============================================================================

CREATE OR REPLACE FUNCTION public.listar_alumnos_sede_paginado(
	codigo_sedee character varying,
	pagina integer,
	cantidad_por_pagina integer)
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
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000
AS $BODY$
DECLARE
    total_paginas integer;
BEGIN
    SELECT COUNT(*) INTO total_paginas
    FROM alumno a
    JOIN users u ON a.dni = u.dni_usuario
    WHERE a.codigo_sede = codigo_sedee 
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
    WHERE a.codigo_sede = codigo_sedee 
      AND a.activo = true
      AND u.role = 'user'
    ORDER BY a.id_alumno
    LIMIT cantidad_por_pagina OFFSET pagina;
END;
$BODY$;
