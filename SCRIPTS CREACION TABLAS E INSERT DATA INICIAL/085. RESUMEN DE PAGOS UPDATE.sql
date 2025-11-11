-- se añadio condicion para tomar en cuanta solo los que no tengan el estado en aprobado
CREATE OR REPLACE FUNCTION public.get_resumen_pagos_por_alumno(
	p_id_alumno integer,
	p_anio integer)
    RETURNS TABLE(id_alumno integer, cantidad_vencidos integer, cantidad_por_vencer integer, cantidad_a_tiempo integer, monto_total_pendiente numeric) 
    LANGUAGE 'plpgsql'
    COST 100
    VOLATILE PARALLEL UNSAFE
    ROWS 1000

AS $BODY$
BEGIN
    RETURN QUERY
    SELECT
        p_id_alumno AS id_alumno,
        COUNT(*) FILTER (WHERE p.f_vencimiento < CURRENT_DATE)::integer AS cantidad_vencidos,
        COUNT(*) FILTER (WHERE p.f_vencimiento BETWEEN CURRENT_DATE AND CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_por_vencer,
        COUNT(*) FILTER (WHERE p.f_vencimiento > CURRENT_DATE + INTERVAL '7 days')::integer AS cantidad_a_tiempo,
        COALESCE(SUM(p.total_a_pagar), 0) AS monto_total_pendiente
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio AND P.estado <> 'Aprobado';
END;
$BODY$;