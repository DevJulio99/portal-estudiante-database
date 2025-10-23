-- ==========================================
-- 1. CREAR TABLA SUBPERIODOS
-- ==========================================

CREATE TABLE IF NOT EXISTS public.subperiodos (
    id_subperiodo SERIAL PRIMARY KEY,
    id_periodo INT NOT NULL REFERENCES public.periodoacademico(id_periodo) ON DELETE CASCADE,
    codigo_subperiodo VARCHAR(50) UNIQUE NOT NULL,
    descripcion_subperiodo VARCHAR(100),
    tipo_subperiodo VARCHAR(20),
    estado_subperiodo VARCHAR(20),
    fecha_inicio DATE,
    fecha_fin DATE,
    numero INT
);

-- ==========================================
-- 2. MIGRAR BIMESTRES HACIA SUBPERIODOS
-- ==========================================

INSERT INTO public.subperiodos (
    id_periodo,
    codigo_subperiodo,
    descripcion_subperiodo,
    tipo_subperiodo,
    estado_subperiodo,
    fecha_inicio,
    fecha_fin,
    numero
)
SELECT 
    pa_anio.id_periodo AS id_periodo_padre,
    pa_bim.codigo_periodo AS codigo_subperiodo,
    pa_bim.descripcion_periodo AS descripcion_subperiodo,
    pa_bim.tipo_periodo AS tipo_subperiodo,
    pa_bim.estado_periodo AS estado_subperiodo,
    pa_bim.fecha_inicio,
    pa_bim.fecha_fin,
    CAST(
        COALESCE(NULLIF(regexp_replace(pa_bim.codigo_periodo, '\D','','g'),''), '0') AS INT
    ) AS numero
FROM public.periodoacademico pa_bim
JOIN public.periodoacademico pa_anio 
  ON pa_anio.anio = pa_bim.anio
  AND pa_anio.tipo_periodo = 'Año'
WHERE pa_bim.tipo_periodo = 'Bimestre';

-- ==========================================================
-- 3. AJUSTAR TABLA NOTAS PARA COLEGIOS (SUBPERIODOS)
-- ==========================================================

-- 3.1 Agregar columna y FK
ALTER TABLE public.notas
ADD COLUMN IF NOT EXISTS id_subperiodo INT REFERENCES public.subperiodos(id_subperiodo) ON DELETE CASCADE;

-- 3.2 Migrar notas asociadas a bimestres hacia subperiodos
UPDATE public.notas n
SET id_subperiodo = s.id_subperiodo
FROM public.periodoacademico pa
JOIN public.subperiodos s 
  ON s.codigo_subperiodo = pa.codigo_periodo
WHERE n.id_periodo = pa.id_periodo
  AND pa.tipo_periodo = 'Bimestre';

-- 3.3 Limpiar id_periodo en notas ya migradas
UPDATE public.notas
SET id_periodo = NULL
WHERE id_subperiodo IS NOT NULL;

-- 3.4 Restringir uso de solo uno de los dos campos (seguridad lógica)
DO $$
BEGIN
    IF EXISTS (
        SELECT 1
        FROM pg_constraint
        WHERE conname = 'chk_periodo_o_subperiodo_notas'
    ) THEN
        ALTER TABLE public.notas
        DROP CONSTRAINT chk_periodo_o_subperiodo_notas;
    END IF;

    ALTER TABLE public.notas
    ADD CONSTRAINT chk_periodo_o_subperiodo_notas
    CHECK (
        (id_periodo IS NOT NULL AND id_subperiodo IS NULL)
        OR (id_periodo IS NULL AND id_subperiodo IS NOT NULL)
    );
END $$;


-- ==========================================
-- 4. LIMPIAR REFERENCIAS EN DETALLESECCIONASIGNADA
-- ==========================================

UPDATE public.detalleseccionasignada dsa
SET id_periodo = NULL
WHERE id_periodo IN (
    SELECT id_periodo 
    FROM public.periodoacademico 
    WHERE tipo_periodo = 'Bimestre'
);


-- ==========================================
-- 5. ELIMINAR BIMESTRES DE PERIODOACADEMICO
-- ==========================================

DELETE FROM public.periodoacademico
WHERE tipo_periodo = 'Bimestre';
