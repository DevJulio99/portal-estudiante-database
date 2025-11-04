-- FUNCTION: app.set_tenant(text)

-- DROP FUNCTION IF EXISTS app.set_tenant(text);

CREATE OR REPLACE FUNCTION app.set_tenant(
	p_codigo_sede text)
    RETURNS void
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE SECURITY DEFINER PARALLEL UNSAFE
    SET search_path=pg_catalog
AS $BODY$
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

    -- Cambiar LOCAL=true por LOCAL=false para que persista en la sesión
    PERFORM set_config('app.current_tenant', p_codigo_sede, false);
END;
$BODY$;

ALTER FUNCTION app.set_tenant(text)
    OWNER TO postgres;

COMMENT ON FUNCTION app.set_tenant(text)
    IS 'Establece el tenant actual (codigo_sede) validando contra public.sede';
