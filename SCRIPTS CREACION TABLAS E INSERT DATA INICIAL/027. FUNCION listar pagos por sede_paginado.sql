CREATE OR REPLACE FUNCTION public.listar_pagos_por_sede_paginado(
	cod_sede character varying,
	pagina integer,
	"tamaño_pagina" integer)
    RETURNS TABLE(idpago integer, documentopago character varying, fechav date, ciclopago character varying, saldopago numeric, morapago numeric, totalpago numeric, detallepago text, imagepago character varying, aniopago integer, total_resultados bigint) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
	WITH total AS (
        SELECT COUNT(*) AS total_filas
        FROM pagos
		WHERE codigo_sede = cod_sede
    )
    SELECT id_pago, documento_pago, f_vencimiento,
            ciclo, saldo, mora, total_a_pagar, detalle, imagen, anio,
	        t.total_filas
    FROM pagos p, total t
	WHERE codigo_sede = cod_sede
    ORDER BY id_pago
    LIMIT tamaño_pagina
    OFFSET pagina;
END;
$BODY$;