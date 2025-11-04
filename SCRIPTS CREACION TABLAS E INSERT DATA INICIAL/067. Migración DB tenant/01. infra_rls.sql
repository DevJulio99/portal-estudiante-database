-- 01_infra_rls.sql
-- Infraestructura para RLS multi-tenant por codigo_sede
-- Idempotente y transaccional

BEGIN;

-- 1) Schema lógico para helpers
CREATE SCHEMA IF NOT EXISTS app;

-- 2) Función para establecer el tenant de la sesión con validación
--    Usa set_config para GUC app.current_tenant
CREATE OR REPLACE FUNCTION app.set_tenant(p_codigo_sede text)
RETURNS void
LANGUAGE plpgsql
SECURITY DEFINER
SET search_path = pg_catalog
AS $$
DECLARE
    v_exists boolean;
BEGIN
    IF p_codigo_sede IS NULL OR length(btrim(p_codigo_sede)) = 0 THEN
        RAISE EXCEPTION 'codigo_sede no puede ser nulo o vacío';
    END IF;

    SELECT EXISTS (
        SELECT 1 FROM public.sede s WHERE s.codigo_sede = p_codigo_sede
    ) INTO v_exists;

    IF NOT v_exists THEN
        RAISE EXCEPTION 'codigo_sede % no existe en sede', p_codigo_sede;
    END IF;

    PERFORM set_config('app.current_tenant', p_codigo_sede, true);
END;
$$;

COMMENT ON FUNCTION app.set_tenant(text) IS 'Establece el tenant actual (codigo_sede) validando contra public.sede';

-- 3) Vista informativa del tenant actual
CREATE OR REPLACE VIEW app.current_tenant_info AS
SELECT
    current_setting('app.current_tenant', true) AS codigo_sede,
    s.id_sede,
    s.descripcion_sede
FROM public.sede s
WHERE s.codigo_sede = current_setting('app.current_tenant', true);

COMMIT;


