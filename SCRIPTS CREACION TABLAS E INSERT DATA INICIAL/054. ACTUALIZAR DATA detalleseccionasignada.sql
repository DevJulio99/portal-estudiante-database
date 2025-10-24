UPDATE public.detalleseccionasignada
SET 
    id_periodo = 24,
    id_seccion = CASE
        WHEN id_detalle IN (9, 10, 11, 12) THEN 1
        WHEN id_detalle IN (13, 14, 15) THEN 5
        WHEN id_detalle IN (16, 17, 18) THEN 9
        ELSE id_seccion
    END,
    id_curso = CASE
        WHEN id_detalle = 9 THEN 1
        WHEN id_detalle = 10 THEN 2
        WHEN id_detalle = 11 THEN 3
        WHEN id_detalle = 12 THEN 4
        WHEN id_detalle = 13 THEN 5
        WHEN id_detalle = 14 THEN 6
        WHEN id_detalle = 15 THEN 7
        WHEN id_detalle = 16 THEN 8
        WHEN id_detalle = 17 THEN 9
        WHEN id_detalle = 18 THEN 10
        ELSE id_curso
    END
WHERE id_periodo IS NOT NULL;
