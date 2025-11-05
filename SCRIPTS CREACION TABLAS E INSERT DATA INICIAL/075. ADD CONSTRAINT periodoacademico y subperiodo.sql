DROP FUNCTION IF EXISTS public.get_resumen_pagos_por_alumno(integer, integer, character varying);

-- =====================================================================
-- VALIDACIONES CON TRIGGERS
-- =====================================================================

-- ---------------------------------------------------------------------
-- 1. CONSTRAINTS SIMPLES
-- ---------------------------------------------------------------------
ALTER TABLE periodoacademico
ADD CONSTRAINT chk_periodo_fechas_validas 
CHECK (fecha_inicio < fecha_fin);

ALTER TABLE subperiodos
ADD CONSTRAINT chk_subperiodo_fechas_validas 
CHECK (fecha_inicio < fecha_fin);

-- ---------------------------------------------------------------------
-- 2. TRIGGER: Validar consistencia de codigo_sede entre subperiodo y periodo
-- ---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION validate_subperiodo_sede()
RETURNS TRIGGER AS $$
DECLARE
    v_periodo_sede VARCHAR;
BEGIN
    -- Obtener el codigo_sede del periodo padre
    SELECT codigo_sede INTO v_periodo_sede
    FROM periodoacademico
    WHERE id_periodo = NEW.id_periodo;
    
    -- Validar que coincidan
    IF NEW.codigo_sede != v_periodo_sede THEN
        RAISE EXCEPTION 'El codigo_sede del subperiodo (%) debe coincidir con el codigo_sede del periodo (%). Periodo ID: %',
            NEW.codigo_sede, v_periodo_sede, NEW.id_periodo;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validate_subperiodo_sede
    BEFORE INSERT OR UPDATE ON subperiodos
    FOR EACH ROW
    EXECUTE FUNCTION validate_subperiodo_sede();

-- ---------------------------------------------------------------------
-- 3. TRIGGER: Validar que subperiodo esté dentro de las fechas del periodo
-- ---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION validate_subperiodo_fechas_dentro_periodo()
RETURNS TRIGGER AS $$
DECLARE
    v_periodo_inicio DATE;
    v_periodo_fin DATE;
BEGIN
    -- Si las fechas del subperiodo son NULL, permitir (validación opcional)
    IF NEW.fecha_inicio IS NULL OR NEW.fecha_fin IS NULL THEN
        RETURN NEW;
    END IF;
    
    -- Obtener las fechas del periodo padre
    SELECT fecha_inicio, fecha_fin 
    INTO v_periodo_inicio, v_periodo_fin
    FROM periodoacademico
    WHERE id_periodo = NEW.id_periodo;
    
    -- Si el periodo no tiene fechas definidas, permitir
    IF v_periodo_inicio IS NULL OR v_periodo_fin IS NULL THEN
        RETURN NEW;
    END IF;
    
    -- Validar que el subperiodo esté dentro del periodo
    IF NEW.fecha_inicio < v_periodo_inicio THEN
        RAISE EXCEPTION 'La fecha de inicio del subperiodo (%) no puede ser anterior a la fecha de inicio del periodo (%). Periodo ID: %',
            NEW.fecha_inicio, v_periodo_inicio, NEW.id_periodo;
    END IF;
    
    IF NEW.fecha_fin > v_periodo_fin THEN
        RAISE EXCEPTION 'La fecha de fin del subperiodo (%) no puede ser posterior a la fecha de fin del periodo (%). Periodo ID: %',
            NEW.fecha_fin, v_periodo_fin, NEW.id_periodo;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validate_subperiodo_fechas_dentro_periodo
    BEFORE INSERT OR UPDATE ON subperiodos
    FOR EACH ROW
    EXECUTE FUNCTION validate_subperiodo_fechas_dentro_periodo();

-- ---------------------------------------------------------------------
-- 4. TRIGGER: Validar consistencia periodo-subperiodo en tabla notas
-- ---------------------------------------------------------------------
CREATE OR REPLACE FUNCTION validate_nota_periodo_subperiodo()
RETURNS TRIGGER AS $$
DECLARE
    v_subperiodo_periodo_id INTEGER;
BEGIN
    -- Si no hay subperiodo, no validar
    IF NEW.id_subperiodo IS NULL THEN
        RETURN NEW;
    END IF;
    
    -- Si no hay periodo, no validar
    IF NEW.id_periodo IS NULL THEN
        RETURN NEW;
    END IF;
    
    -- Obtener el id_periodo del subperiodo
    SELECT id_periodo INTO v_subperiodo_periodo_id
    FROM subperiodos
    WHERE id_subperiodo = NEW.id_subperiodo;
    
    -- Si no se encuentra el subperiodo, la FK lo manejará
    IF v_subperiodo_periodo_id IS NULL THEN
        RETURN NEW;
    END IF;
    
    -- Validar que coincidan
    IF NEW.id_periodo != v_subperiodo_periodo_id THEN
        RAISE EXCEPTION 'Inconsistencia: El subperiodo % pertenece al periodo %, pero se intentó asignar al periodo %',
            NEW.id_subperiodo, v_subperiodo_periodo_id, NEW.id_periodo;
    END IF;
    
    RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER trg_validate_nota_periodo_subperiodo
    BEFORE INSERT OR UPDATE ON notas
    FOR EACH ROW
    EXECUTE FUNCTION validate_nota_periodo_subperiodo();

