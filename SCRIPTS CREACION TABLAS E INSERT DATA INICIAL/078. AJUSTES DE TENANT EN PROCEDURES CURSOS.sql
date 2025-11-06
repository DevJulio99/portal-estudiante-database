BEGIN;

-- =====================================================
-- 1. ACTUALIZAR PROCEDURE insertar_curso
-- =====================================================

CREATE OR REPLACE PROCEDURE public.insertar_curso(
	IN desc_curso character varying,
	IN creditos_curso real,
	IN modalidad_curso character varying,
	IN nivel_curso character varying
)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    v_codigo_sede VARCHAR(255);
BEGIN
    -- Obtener el codigo_sede del contexto actual (tenant)
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    IF v_codigo_sede IS NULL OR v_codigo_sede = '' THEN
        RAISE EXCEPTION 'No se ha establecido el tenant actual (app.current_tenant)';
    END IF;

    -- Validar si ya existe un curso con la misma información en el tenant actual
    -- RLS se encargará de filtrar automáticamente por codigo_sede
    IF EXISTS (
        SELECT 1
        FROM curso
        WHERE descripcion_curso = desc_curso
          AND creditos = creditos_curso
          AND modalidad = modalidad_curso
          AND nivel = nivel_curso
    ) THEN
        RAISE EXCEPTION 'Ya existe un curso con la misma información en esta sede: %', desc_curso;
    END IF;	

    -- Insertar el curso
    -- El trigger generar_codigo_curso se encargará de:
    --   1. Establecer el codigo_sede automáticamente desde el tenant
    --   2. Generar el codigo_curso basado en el tipo de institución
    -- Las políticas RLS validarán que el codigo_sede sea correcto
    INSERT INTO curso (descripcion_curso, creditos, modalidad, nivel, codigo_sede)
    VALUES (desc_curso, creditos_curso, modalidad_curso, nivel_curso, v_codigo_sede);
END;
$BODY$;

COMMENT ON PROCEDURE public.insertar_curso(character varying, real, character varying, character varying) 
IS 'Inserta un nuevo curso. El codigo_sede se obtiene automáticamente del contexto del tenant (app.current_tenant) y RLS valida las operaciones.';

-- =====================================================
-- 2. ACTUALIZAR PROCEDURE actualizar_curso
-- =====================================================

CREATE OR REPLACE PROCEDURE public.actualizar_curso(
	IN idcurso integer,
	IN desc_curso character varying,
	IN creditos_curso real,
	IN modalidad_curso character varying,
	IN nivel_curso character varying
)
LANGUAGE 'plpgsql'
AS $BODY$
BEGIN
    -- Validar si ya existe otro curso con la misma información
    -- RLS filtrará automáticamente por codigo_sede del tenant actual
    IF EXISTS (
        SELECT 1
        FROM curso
        WHERE descripcion_curso = desc_curso
          AND creditos = creditos_curso
          AND modalidad = modalidad_curso
          AND nivel = nivel_curso
          AND id_curso != idcurso  -- Excluir el curso que se está actualizando
    ) THEN
        RAISE EXCEPTION 'Ya existe otro curso con la misma información en esta sede: %', desc_curso;
    END IF;	

    -- Actualizar el curso
    -- RLS validará automáticamente que:
    --   1. El curso pertenece al tenant actual (UPDATE USING policy)
    --   2. El codigo_sede permanece igual (UPDATE WITH CHECK policy)
    UPDATE curso
    SET descripcion_curso = desc_curso, 
        creditos = creditos_curso,
        modalidad = modalidad_curso, 
        nivel = nivel_curso
    WHERE id_curso = idcurso;
    
    -- Verificar si se actualizó algún registro
    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se encontró el curso con id: % o no pertenece al tenant actual', idcurso;
    END IF;
END;
$BODY$;

COMMENT ON PROCEDURE public.actualizar_curso(integer, character varying, real, character varying, character varying) 
IS 'Actualiza un curso existente. RLS valida automáticamente que el curso pertenezca al tenant actual y que no se modifique el codigo_sede.';

-- =====================================================
-- 3. ACTUALIZAR TRIGGER generar_codigo_curso
-- =====================================================
-- Asegurar que el trigger también establezca codigo_sede desde el tenant

CREATE OR REPLACE FUNCTION public.generar_codigo_curso()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    tipo_institucion_sede CHAR(1);
    v_codigo_sede VARCHAR(255);
    v_id_sede INTEGER;
BEGIN
    -- Si codigo_sede no está establecido, obtenerlo del contexto del tenant
    IF NEW.codigo_sede IS NULL OR NEW.codigo_sede = '' THEN
        v_codigo_sede := current_setting('app.current_tenant', true);
        
        IF v_codigo_sede IS NULL OR v_codigo_sede = '' THEN
            RAISE EXCEPTION 'No se ha establecido el tenant actual (app.current_tenant)';
        END IF;
        
        NEW.codigo_sede := v_codigo_sede;
    END IF;
    
    -- Obtener id_sede y tipo de institución
    SELECT s.id_sede, s.tipo_institucion 
    INTO v_id_sede, tipo_institucion_sede
    FROM sede s
    WHERE s.codigo_sede = NEW.codigo_sede;
    
    -- Validar que se encontró la sede
    IF v_id_sede IS NULL THEN
        RAISE EXCEPTION 'No se encontró la sede con codigo_sede: %', NEW.codigo_sede;
    END IF;
    
    -- Establecer id_sede si no está establecido
    IF NEW.id_sede IS NULL THEN
        NEW.id_sede := v_id_sede;
    END IF;
    
    -- Generar código usando el ID del curso
    IF tipo_institucion_sede = 'C' THEN
        NEW.codigo_curso := 'C' || LPAD(NEW.id_curso::text, 3, '0');
    ELSIF tipo_institucion_sede = 'U' THEN
        NEW.codigo_curso := 'U' || LPAD(NEW.id_curso::text, 3, '0');
    ELSE
        RAISE EXCEPTION 'Tipo de institución no reconocido: %', tipo_institucion_sede;
    END IF;

    RETURN NEW;
END;
$BODY$;

COMMENT ON FUNCTION public.generar_codigo_curso() 
IS 'Trigger function que establece automáticamente el codigo_sede desde el tenant y genera el codigo_curso basado en el tipo de institución.';

COMMIT;
