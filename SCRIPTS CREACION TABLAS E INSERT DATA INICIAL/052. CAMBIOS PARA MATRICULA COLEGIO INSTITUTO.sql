--INSERT PARA users
INSERT INTO public.alumno (codigo_alumno, nombre, apellido_paterno, apellido_materno, dni, correo, fecha_nacimiento, telefono,
 direccion, foto_perfil, genero, tipo_alumno, observaciones, apoderado, tipo_institucion) 
 VALUES ('A013', 'admin', 'instituto', '', '89595965', 'admininsti@gmail.com', '1999-09-24',
  '966214487', 'Calle Falsa 500', '/imagenes/maria.png', 'M', 'Regular', 'Ninguna', NULL, 'I');

INSERT INTO public.users (email, password, name, phone, 
	role, dni_usuario,codigo_sede) VALUES ('admininsti@gmail.com', 'admin123', 'administrador Instituto', '123456789', 'Admin', '89595965', 'SEDE002');

--INSERT PARA sede
INSERT INTO public.sede (codigo_sede, descripcion_sede, direccion, telefono, estado_sede, tipo_institucion) VALUES ('SEDE002', 'Sede Central', 'Av. Principal 500, Ciudad', '123-456-800', 'Activo', 'I');

--se modifico metodo en caso de que se quiera registrar matricula para alumno de instituto

CREATE OR REPLACE FUNCTION public.realizar_matricula(
	p_id_alumno integer,
	p_id_periodo integer,
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
    resultado JSON;
    nuevo_id_matricula INTEGER;
    puede_matricularse BOOLEAN;
    mensaje_error TEXT;
	p_tipo_institucion CHARACTER VARYING;
BEGIN

    -- Obtener tipo de institución
    SELECT tipo_institucion
    INTO p_tipo_institucion
    FROM sede
    WHERE codigo_sede = p_codigo_sede;

    IF p_tipo_institucion IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'La sede no existe o no tiene tipo de institución registrado',
            'id_matricula', NULL
        );
    END IF;
    -- Verificar si el alumno puede matricularse
    SELECT verificar_matricula_alumno(p_id_alumno, p_id_periodo) INTO puede_matricularse;
    
    IF NOT puede_matricularse THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno ya tiene una matrÃ­cula activa para este perÃ­odo acadÃ©mico',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el alumno existe
    IF NOT EXISTS (SELECT 1 FROM alumno WHERE id_alumno = p_id_alumno AND activo = true) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe o estÃ¡ inactivo',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar que el perÃ­odo existe
    IF NOT EXISTS (SELECT 1 FROM periodoacademico WHERE id_periodo = p_id_periodo) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El perÃ­odo acadÃ©mico no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Verificar grado solo si p_tipo_institucion ≠ 'I'
    IF p_tipo_institucion <> 'I' THEN
        IF NOT EXISTS (SELECT 1 FROM grado WHERE "ID_GRADO" = p_id_grado) THEN
            RETURN json_build_object(
                'success', false,
                'message', 'El grado no existe',
                'id_matricula', NULL
            );
        END IF;
    END IF;
    
    -- Verificar que la sede existe
    IF NOT EXISTS (SELECT 1 FROM sede WHERE codigo_sede = p_codigo_sede) THEN
        RETURN json_build_object(
            'success', false,
            'message', 'La sede no existe',
            'id_matricula', NULL
        );
    END IF;
    
    -- Insertar la matrÃ­cula
    INSERT INTO matricula (
        id_alumno,
        id_periodo,
        id_grado,
        codigo_sede,
        tipo_matricula,
        estado_matricula,
        observaciones,
        usuario_registro,
        fecha_inicio,
        fecha_fin,
        activo
    ) VALUES (
        p_id_alumno,
        p_id_periodo,
        p_id_grado,
        p_codigo_sede,
        p_tipo_matricula,
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro,
        CURRENT_DATE,
        CURRENT_DATE + INTERVAL '1 year',
        true
    ) RETURNING id_matricula INTO nuevo_id_matricula;
    
    -- Retornar resultado exitoso
    RETURN json_build_object(
        'success', true,
        'message', 'MatrÃ­cula realizada exitosamente',
        'id_matricula', nuevo_id_matricula,
        'fecha_matricula', CURRENT_TIMESTAMP
    );
    
EXCEPTION
    WHEN OTHERS THEN
        -- En caso de error, retornar mensaje de error
        GET STACKED DIAGNOSTICS mensaje_error = MESSAGE_TEXT;
        RETURN json_build_object(
            'success', false,
            'message', 'Error al realizar la matrÃ­cula: ' || mensaje_error,
            'id_matricula', NULL
        );
END;
$BODY$;