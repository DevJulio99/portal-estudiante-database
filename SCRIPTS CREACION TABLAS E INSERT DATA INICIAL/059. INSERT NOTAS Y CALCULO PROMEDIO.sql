INSERT INTO notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo) VALUES
(16.5, 0.25, 'Examen', 1, 1, 24, 6),
(17.8, 0.25, 'Tarea', 1, 1, 24, 6),
(15.2, 0.25, 'Proyecto', 1, 1, 24, 6),
(18.1, 0.25, 'Práctica', 1, 1, 24, 6),

(14.7, 0.3, 'Examen Parcial', 1, 2, 24, 6),
(16.3, 0.3, 'Examen Final', 1, 2, 24, 6),
(15.8, 0.2, 'Tarea', 1, 2, 24, 6),
(17.2, 0.2, 'Proyecto', 1, 2, 24, 6),

(13.5, 0.4, 'Examen', 1, 3, 24, 6),
(16.9, 0.3, 'Tarea', 1, 3, 24, 6),
(14.2, 0.2, 'Práctica', 1, 3, 24, 6),
(15.7, 0.1, 'Trabajo', 1, 3, 24, 6),

(18.4, 0.35, 'Examen Parcial', 1, 4, 24, 6),
(17.1, 0.25, 'Examen Final', 1, 4, 24, 6),
(16.5, 0.25, 'Tarea', 1, 4, 24, 6),
(19.2, 0.15, 'Proyecto', 1, 4, 24, 6);

CREATE OR REPLACE FUNCTION public.calcular_promedio_final()
    RETURNS trigger
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE NOT LEAKPROOF
AS $BODY$
DECLARE
    nuevo_promedio DECIMAL(5,2);
    total_pesos DECIMAL(5,2);
BEGIN
    -- Verificar si la nota no es de tipo 'Promedio Final'
    IF NEW.tipo_nota != 'Promedio Final' THEN
        -- Calcular el promedio ponderado
        SELECT SUM(nota * peso), SUM(peso) 
        INTO nuevo_promedio, total_pesos
        FROM Notas
        WHERE id_alumno = NEW.id_alumno
          AND id_curso = NEW.id_curso
          AND id_periodo = NEW.id_periodo
          AND id_subperiodo = NEW.id_subperiodo  -- ¡IMPORTANTE!
          AND tipo_nota != 'Promedio Final';

        -- Evitar división por cero
        IF total_pesos > 0 THEN
            nuevo_promedio := nuevo_promedio / total_pesos;
        ELSE
            nuevo_promedio := 0;
        END IF;

        -- Verificar si ya existe un registro para el Promedio Final
        IF EXISTS (SELECT 1 FROM Notas 
                   WHERE id_alumno = NEW.id_alumno 
                     AND id_curso = NEW.id_curso 
                     AND id_periodo = NEW.id_periodo
                     AND id_subperiodo = NEW.id_subperiodo  -- ¡IMPORTANTE!
                     AND tipo_nota = 'Promedio Final') THEN
            -- Actualizar
            UPDATE Notas
            SET nota = nuevo_promedio
            WHERE id_alumno = NEW.id_alumno 
              AND id_curso = NEW.id_curso 
              AND id_periodo = NEW.id_periodo
              AND id_subperiodo = NEW.id_subperiodo
              AND tipo_nota = 'Promedio Final';
        ELSE
            -- Insertar
            INSERT INTO Notas (nota, peso, tipo_nota, id_alumno, id_curso, id_periodo, id_subperiodo)
            VALUES (nuevo_promedio, 1, 'Promedio Final', NEW.id_alumno, NEW.id_curso, NEW.id_periodo, NEW.id_subperiodo);
        END IF;
    END IF;

    RETURN NEW;
END;
$BODY$;

-- Crear el trigger que ejecute la función después de INSERT o UPDATE
DO $$ 
BEGIN
    IF NOT EXISTS (
        SELECT 1 FROM pg_trigger 
        WHERE tgname = 'trig_calcular_promedio' 
        AND tgrelid = 'notas'::regclass
    ) THEN
        CREATE TRIGGER trig_calcular_promedio
            AFTER INSERT OR UPDATE ON notas
            FOR EACH ROW
            EXECUTE FUNCTION calcular_promedio_final();
    END IF;
END $$;

-- Disparar el trigger para los registros existentes
UPDATE notas SET nota = nota WHERE tipo_nota != 'Promedio Final';