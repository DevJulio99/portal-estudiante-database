DO $$ 
BEGIN
    -- 1. Eliminar el constraint actual si existe
    IF EXISTS (
        SELECT 1 
        FROM pg_constraint 
        WHERE conname = 'chk_periodo_o_subperiodo_notas'
    ) THEN
        ALTER TABLE public.notas
        DROP CONSTRAINT chk_periodo_o_subperiodo_notas;
    END IF;

    -- 2. Actualizar data de notas
    UPDATE public.notas
    SET id_periodo = 24
    WHERE id_periodo IS NULL AND id_subperiodo IS NOT NULL;

    -- 3. Aplicar el nuevo constraint
    ALTER TABLE public.notas
    ADD CONSTRAINT chk_periodo_o_subperiodo_notas
    CHECK (
        (id_periodo IS NOT NULL AND id_subperiodo IS NOT NULL)
        OR (id_periodo IS NOT NULL AND id_subperiodo IS NULL)
    );
END $$;
