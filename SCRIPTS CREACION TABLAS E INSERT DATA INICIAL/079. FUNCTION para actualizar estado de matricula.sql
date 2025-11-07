-- =====================================================
-- FUNCIÓN: actualizar_estado_matricula
-- =====================================================

-- Eliminar versión anterior si existe
DROP FUNCTION IF EXISTS public.actualizar_estado_matricula(INTEGER, VARCHAR);

-- Crear función
CREATE OR REPLACE FUNCTION public.actualizar_estado_matricula(
    p_id_matricula INTEGER,
    p_nuevo_estado VARCHAR
)
RETURNS BOOLEAN
LANGUAGE plpgsql
AS $$
DECLARE
    v_estado_actual VARCHAR;
    v_activo_actual BOOLEAN;
BEGIN
    -- Obtener el estado actual de la matrícula
    SELECT estado_matricula, activo 
    INTO v_estado_actual, v_activo_actual
    FROM matricula
    WHERE id_matricula = p_id_matricula;
    
    -- Verificar si la matrícula existe
    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se encontró la matrícula con ID %', p_id_matricula;
    END IF;
    
    -- Validar que la matrícula esté activa
    IF NOT v_activo_actual THEN
        RAISE EXCEPTION 'No se puede actualizar una matrícula que ya está desactivada';
    END IF;
    
    -- Validar estados permitidos: solo Activa e Inactiva
    IF p_nuevo_estado NOT IN ('Activa', 'Inactiva') THEN
        RAISE EXCEPTION 'Estado no válido: %. Estados permitidos: Activa, Inactiva', p_nuevo_estado;
    END IF;
    
    -- Si el nuevo estado es 'Inactiva', desactivar la matrícula
    IF p_nuevo_estado = 'Inactiva' THEN
        UPDATE matricula
        SET estado_matricula = p_nuevo_estado,
            activo = false
        WHERE id_matricula = p_id_matricula;
        
        RAISE NOTICE 'Matrícula % desactivada', p_id_matricula;
    ELSE
        -- Para 'Activa', solo actualizar el estado
        UPDATE matricula
        SET estado_matricula = p_nuevo_estado
        WHERE id_matricula = p_id_matricula
          AND activo = true;
    END IF;
    
    -- Verificar si se actualizó
    IF FOUND THEN
        RETURN TRUE;
    ELSE
        RETURN FALSE;
    END IF;
    
EXCEPTION
    WHEN OTHERS THEN
        RAISE;
END;
$$;


--ajuste para listar solo matriculas de alumnos activos
DROP FUNCTION IF EXISTS public.listar_matriculas();

CREATE OR REPLACE FUNCTION public.listar_matriculas(
	)
    RETURNS TABLE("IdMatricula" integer, "IdAlumno" integer, "FechaInicio" date, "FechaFin" date, "TipoMatricula" character varying, "EstadoMatricula" character varying, "IdSeccion" integer, "Observaciones" character varying, "Veces" integer, "IdPeriodo" integer, "IdGrado" integer, "CodigoSede" character varying, "FechaMatricula" timestamp without time zone, "UsuarioRegistro" character varying, "Activo" boolean, "NombreAlumno" character varying, "ApellidoPaterno" character varying, "ApellidoMaterno" character varying, "DniAlumno" character varying, "DescripcionGrado" character varying, "NivelEducativo" character varying, "DescripcionPeriodo" character varying, "CodigoPeriodo" character varying, "DescripcionSede" character varying) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
DECLARE
  v_tenant_id VARCHAR;
BEGIN
    -- Obtiene el tenant de la configuración de la sesión actual.
    v_tenant_id := current_setting('app.current_tenant', true);

	-- Si no hay tenant, no devuelve nada o lanza un error.
    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se pudo listar matriculas.';
    END IF;
	
    RETURN QUERY
    SELECT 
        m.id_matricula as "IdMatricula",
        m.id_alumno as "IdAlumno",
        m.fecha_inicio as "FechaInicio",
        m.fecha_fin as "FechaFin",
        m.tipo_matricula as "TipoMatricula",
        m.estado_matricula as "EstadoMatricula",
        m.id_seccion as "IdSeccion",
        m.observaciones as "Observaciones",
        m.veces as "Veces",
        m.id_periodo as "IdPeriodo",
        m.id_grado as "IdGrado",
        m.codigo_sede as "CodigoSede",
        m.fecha_matricula as "FechaMatricula",
        m.usuario_registro as "UsuarioRegistro",
        m.activo as "Activo",
        a.nombre AS "NombreAlumno",
        a.apellido_paterno as "ApellidoPaterno",
        a.apellido_materno as "ApellidoMaterno",
        a.dni AS "DniAlumno",
        g."DESCRIPCION_GRADO" AS "DescripcionGrado",
        g."NIVEL_EDUCATIVO" AS "NivelEducativo",
        p.descripcion_periodo as "DescripcionPeriodo",
        p.codigo_periodo as "CodigoPeriodo",
        s.descripcion_sede as "DescripcionSede"
    FROM matricula m
    INNER JOIN alumno a ON m.id_alumno = a.id_alumno
    LEFT JOIN grado g ON m.id_grado = g."ID_GRADO"
    LEFT JOIN periodoacademico p ON m.id_periodo = p.id_periodo
    LEFT JOIN sede s ON m.codigo_sede = s.codigo_sede
    WHERE m.codigo_sede = v_tenant_id
      AND m.activo = TRUE
	  AND a.activo = TRUE
    ORDER BY m.fecha_matricula DESC;
END;
$BODY$;

-- =====================================================
-- TRIGGER: Desactivar matrículas al eliminar alumno
-- =====================================================

-- 1. Crear la función del trigger
CREATE OR REPLACE FUNCTION desactivar_matriculas_alumno()
RETURNS TRIGGER
LANGUAGE plpgsql
AS $$
BEGIN
    -- Solo ejecutar si el alumno cambió de activo=true a activo=false
    IF OLD.activo = TRUE AND NEW.activo = FALSE THEN
        
        -- Desactivar todas las matrículas activas del alumno
        UPDATE matricula
        SET activo = false,
            estado_matricula = 'Inactiva'
        WHERE id_alumno = NEW.id_alumno
          AND activo = true;
        
        -- Log para auditoría (opcional)
        RAISE NOTICE 'Alumno % desactivado. Se desactivaron sus matrículas activas.', NEW.id_alumno;
        
    END IF;
    
    RETURN NEW;
END;
$$;

-- 2. Crear el trigger
DROP TRIGGER IF EXISTS trigger_desactivar_matriculas_alumno ON alumno;

CREATE TRIGGER trigger_desactivar_matriculas_alumno
    AFTER UPDATE OF activo ON alumno
    FOR EACH ROW
    WHEN (OLD.activo IS DISTINCT FROM NEW.activo)
    EXECUTE FUNCTION desactivar_matriculas_alumno();
