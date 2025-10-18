-- GENERAR CODIGO_CURSO
-- Esta es la mejor solución: simple, confiable y sin duplicados

-- PASO 1: Eliminar el trigger anterior y la secuencia
DROP TRIGGER IF EXISTS before_insert_codigo_curso ON curso;
DROP SEQUENCE IF EXISTS codigo_curso_seq;

-- PASO 2: Crear nueva función usando el ID del curso
CREATE OR REPLACE FUNCTION public.generar_codigo_curso()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    tipo_institucion_sede CHAR(1);
BEGIN
    -- Obtener el tipo de institución de la sede
    SELECT tipo_institucion INTO tipo_institucion_sede
    FROM sede
    WHERE id_sede = NEW.id_sede;
    
    -- Validar que se encontró la sede
    IF tipo_institucion_sede IS NULL THEN
        RAISE EXCEPTION 'No se encontró la sede con id_sede: %', NEW.id_sede;
    END IF;
    
    -- Generar código usando el ID del curso (igual que alumno)
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

-- PASO 3: Crear el nuevo trigger
CREATE TRIGGER trigger_generar_codigo_curso
    BEFORE INSERT ON curso
    FOR EACH ROW
    EXECUTE FUNCTION public.generar_codigo_curso();
