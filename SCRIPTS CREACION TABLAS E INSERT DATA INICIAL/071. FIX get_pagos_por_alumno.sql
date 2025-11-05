-- Script: fix get_pagos_por_alumno mapping

-- Eliminar la función existente
DROP FUNCTION IF EXISTS public.get_pagos_por_alumno(integer, integer);

-- Recrear la función con los nombres de columna corregidos
CREATE OR REPLACE FUNCTION public.get_pagos_por_alumno(
    p_id_alumno integer, 
    p_anio integer
)
RETURNS TABLE(
    IdPago integer,
    DocumentoPago character varying,
    FechaVencimiento date,
    Ciclo character varying,
    Saldo numeric,
    Mora numeric,
    TotalAPagar numeric,
    Detalle text,
    Imagen character varying,
    Anio integer
)
LANGUAGE plpgsql
AS $function$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_pago,
        p.documento_pago,
        p.f_vencimiento,
        p.ciclo,
        p.saldo,
        p.mora,
        p.total_a_pagar,
        p.detalle,
        p.imagen,
        p.anio
    FROM 
        public.pagos p
    WHERE 
        p.id_alumno = p_id_alumno
        AND p.anio = p_anio;
END;
$function$;

