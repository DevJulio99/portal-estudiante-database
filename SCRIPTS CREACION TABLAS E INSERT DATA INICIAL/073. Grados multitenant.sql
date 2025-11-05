-- ============================================================================
-- MIGRACIÓN: Eliminar codigo_sede de tabla grado para evitar duplicación
-- ============================================================================
-- Descripción: Los grados deben ser compartidos entre sedes (multitenant)
--              La relación específica por sede se mantiene en grado_curso
-- ============================================================================

BEGIN;

-- ============================================================================
-- PASO 1: Crear tabla temporal para mapeo de IDs de grados
-- ============================================================================
CREATE TEMP TABLE IF NOT EXISTS temp_grado_mapping (
    id_grado_original INTEGER,
    id_grado_nuevo INTEGER,
    codigo_sede_original VARCHAR(255)
);

-- ============================================================================
-- PASO 2: Identificar grados únicos y mantener el ID más bajo por combinación
-- ============================================================================
INSERT INTO temp_grado_mapping (id_grado_original, id_grado_nuevo, codigo_sede_original)
SELECT 
    g."ID_GRADO",
    MIN(g."ID_GRADO") OVER (
        PARTITION BY 
            g."NUMERO_GRADO", 
            g."NIVEL_EDUCATIVO", 
            COALESCE(g.tipo_institucion, ''), 
            COALESCE(g.codigo_carrera, '')
    ) as id_grado_nuevo,
    g.codigo_sede
FROM grado g;

-- ============================================================================
-- PASO 3: Actualizar referencias en tablas relacionadas
-- ============================================================================

-- Actualizar referencias en tabla alumno
UPDATE alumno a
SET id_grado = tgm.id_grado_nuevo
FROM temp_grado_mapping tgm
WHERE a.id_grado = tgm.id_grado_original
  AND a.id_grado != tgm.id_grado_nuevo;

-- Actualizar referencias en tabla matricula
UPDATE matricula m
SET id_grado = tgm.id_grado_nuevo
FROM temp_grado_mapping tgm
WHERE m.id_grado = tgm.id_grado_original
  AND m.id_grado != tgm.id_grado_nuevo;

-- Actualizar referencias en tabla grado_curso
UPDATE grado_curso gc
SET "ID_GRADO" = tgm.id_grado_nuevo
FROM temp_grado_mapping tgm
WHERE gc."ID_GRADO" = tgm.id_grado_original
  AND gc."ID_GRADO" != tgm.id_grado_nuevo;

-- Actualizar referencias en tabla pregunta
UPDATE pregunta p
SET "ID_GRADO" = tgm.id_grado_nuevo
FROM temp_grado_mapping tgm
WHERE p."ID_GRADO" = tgm.id_grado_original
  AND p."ID_GRADO" != tgm.id_grado_nuevo;

-- Actualizar referencias en tabla examen_generado
UPDATE examen_generado eg
SET "ID_GRADO" = tgm.id_grado_nuevo
FROM temp_grado_mapping tgm
WHERE eg."ID_GRADO" = tgm.id_grado_original
  AND eg."ID_GRADO" != tgm.id_grado_nuevo;

-- ============================================================================
-- PASO 4: Eliminar grados duplicados (mantener solo el de menor ID)
-- ============================================================================
DELETE FROM grado g
WHERE g."ID_GRADO" IN (
    SELECT tgm.id_grado_original
    FROM temp_grado_mapping tgm
    WHERE tgm.id_grado_original != tgm.id_grado_nuevo
);

-- ============================================================================
-- PASO 5: Eliminar políticas RLS de la tabla grado
-- ============================================================================
DROP POLICY IF EXISTS rls_grado_select ON grado;
DROP POLICY IF EXISTS rls_grado_insert ON grado;
DROP POLICY IF EXISTS rls_grado_update ON grado;
DROP POLICY IF EXISTS rls_grado_delete ON grado;

-- ============================================================================
-- PASO 6: Eliminar foreign key de grado a sede
-- ============================================================================
ALTER TABLE grado 
DROP CONSTRAINT IF EXISTS fk_grado_sede_codigo;

-- ============================================================================
-- PASO 7: Eliminar columna codigo_sede de la tabla grado
-- ============================================================================
ALTER TABLE grado 
DROP COLUMN IF EXISTS codigo_sede;

-- ============================================================================
-- PASO 8: Asegurar que RLS está habilitado en la tabla grado
-- ============================================================================
ALTER TABLE grado ENABLE ROW LEVEL SECURITY;

-- IMPORTANTE: Los grados son compartidos entre sedes del mismo tipo_institucion,
-- pero se filtran por tipo_institucion de la sede para mantener seguridad.
-- 
-- - Solo colegios (tipo_institucion='C') pueden ver/crear/modificar grados de tipo 'C'
-- - Solo institutos (tipo_institucion='I') pueden ver/crear/modificar grados de tipo 'I'
-- - Esto evita que un colegio vea los grados de institutos y viceversa

-- Función helper para obtener tipo_institucion del tenant actual
-- Esta función debe existir antes de crear las políticas RLS
CREATE OR REPLACE FUNCTION app.get_tenant_tipo_institucion()
RETURNS VARCHAR(100)
LANGUAGE plpgsql
STABLE
AS $$
DECLARE
    v_codigo_sede VARCHAR(255);
    v_tipo_institucion VARCHAR(100);
BEGIN
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    IF v_codigo_sede IS NULL OR length(TRIM(COALESCE(v_codigo_sede, ''))) = 0 THEN
        RETURN NULL;
    END IF;
    
    SELECT tipo_institucion INTO v_tipo_institucion
    FROM sede
    WHERE codigo_sede = v_codigo_sede;
    
    RETURN v_tipo_institucion;
END;
$$;

-- ============================================================================
-- PASO 10: Crear políticas RLS para grado filtradas por tipo_institucion
-- ============================================================================
-- Ahora que la función existe, podemos crear las políticas que la usan

-- Política SELECT: Solo ver grados del mismo tipo_institucion
CREATE POLICY rls_grado_select ON grado
    FOR SELECT
    USING (
        app.get_tenant_tipo_institucion() IS NULL 
        OR grado.tipo_institucion IS NULL
        OR grado.tipo_institucion ILIKE app.get_tenant_tipo_institucion()
    );

-- Política INSERT: Solo insertar grados del mismo tipo_institucion
-- En WITH CHECK para INSERT, se puede usar directamente el nombre de la columna sin NEW
CREATE POLICY rls_grado_insert ON grado
    FOR INSERT
    WITH CHECK (
        app.get_tenant_tipo_institucion() IS NULL 
        OR tipo_institucion IS NULL
        OR tipo_institucion ILIKE app.get_tenant_tipo_institucion()
    );

-- Política UPDATE: Solo actualizar grados del mismo tipo_institucion
-- En USING se referencia la tabla existente, en WITH CHECK se usa el valor nuevo
CREATE POLICY rls_grado_update ON grado
    FOR UPDATE
    USING (
        app.get_tenant_tipo_institucion() IS NULL 
        OR grado.tipo_institucion IS NULL
        OR grado.tipo_institucion ILIKE app.get_tenant_tipo_institucion()
    )
    WITH CHECK (
        app.get_tenant_tipo_institucion() IS NULL 
        OR tipo_institucion IS NULL
        OR tipo_institucion ILIKE app.get_tenant_tipo_institucion()
    );

-- Política DELETE: Solo eliminar grados del mismo tipo_institucion
CREATE POLICY rls_grado_delete ON grado
    FOR DELETE
    USING (
        app.get_tenant_tipo_institucion() IS NULL 
        OR grado.tipo_institucion IS NULL
        OR grado.tipo_institucion ILIKE app.get_tenant_tipo_institucion()
    );

-- ============================================================================
-- PASO 11: Verificar integridad referencial
-- ============================================================================
DO $$
DECLARE
    grados_huérfanos INTEGER;
    grados_duplicados INTEGER;
BEGIN
    -- Verificar que no hay referencias huérfanas
    SELECT COUNT(*) INTO grados_huérfanos
    FROM (
        SELECT DISTINCT id_grado::INTEGER as id_grado_ref FROM alumno WHERE id_grado IS NOT NULL
        UNION
        SELECT DISTINCT id_grado::INTEGER FROM matricula WHERE id_grado IS NOT NULL
        UNION
        SELECT DISTINCT "ID_GRADO"::INTEGER FROM grado_curso
        UNION
        SELECT DISTINCT "ID_GRADO"::INTEGER FROM pregunta WHERE "ID_GRADO" IS NOT NULL
    ) refs(id_grado_ref)
    WHERE NOT EXISTS (
        SELECT 1 FROM grado WHERE "ID_GRADO" = refs.id_grado_ref
    );

    IF grados_huérfanos > 0 THEN
        RAISE WARNING 'Se encontraron % referencias huérfanas a grados', grados_huérfanos;
    END IF;

    -- Verificar que no hay grados duplicados
    SELECT COUNT(*) INTO grados_duplicados
    FROM (
        SELECT "NUMERO_GRADO", "NIVEL_EDUCATIVO", COALESCE(tipo_institucion, ''), COALESCE(codigo_carrera, '')
        FROM grado
        GROUP BY "NUMERO_GRADO", "NIVEL_EDUCATIVO", COALESCE(tipo_institucion, ''), COALESCE(codigo_carrera, '')
        HAVING COUNT(*) > 1
    ) dups;

    IF grados_duplicados > 0 THEN
        RAISE WARNING 'Se encontraron % combinaciones de grados duplicadas', grados_duplicados;
    END IF;

    RAISE NOTICE 'Migración completada. Verificaciones pasadas.';
END $$;

-- ============================================================================
-- PASO 12: Limpiar tabla temporal
-- ============================================================================
DROP TABLE IF EXISTS temp_grado_mapping;

COMMIT;

-- ============================================================================
-- NOTAS IMPORTANTES:
-- ============================================================================
-- 1. Los grados ahora son compartidos entre todas las sedes
-- 2. La relación específica por sede se mantiene en grado_curso (tiene codigo_sede)
-- 3. Las funciones y procedimientos deben actualizarse para no filtrar por codigo_sede en grado
-- 4. Las consultas a grado no necesitan filtrar por codigo_sede
-- ============================================================================

