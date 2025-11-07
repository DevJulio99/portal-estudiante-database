-- nuevo servicio para listar categorias
CREATE OR REPLACE FUNCTION listar_categorias()
RETURNS JSON
AS $$
DECLARE
    v_tenant_id VARCHAR;
    v_result JSON;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    IF v_tenant_id IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se encuentra sede.'
        );
    END IF;

    SELECT json_agg(row_to_json(cd))
    INTO v_result
    FROM (
        SELECT 
            "ID_CATEGORIA_DOCUMENTO" as id,
            "STATUS",
            "NOMBRE",
            "SECUENCIA"
        FROM categoria_documento
		WHERE codigo_sede = v_tenant_id
    ) cd;

    RETURN json_build_object(
        'success', true,
        'message', 'Consulta exitosa',
        'data', COALESCE(v_result, '[]'::json)
    );

EXCEPTION
    WHEN OTHERS THEN
        RETURN json_build_object(
            'success', false,
            'message', SQLERRM
        );
END;
$$ LANGUAGE plpgsql;