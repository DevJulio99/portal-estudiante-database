DROP FUNCTION IF EXISTS public.obtener_notas_por_curso_subperiodo(integer, integer, character varying, character varying, character varying);
DROP FUNCTION IF EXISTS public.obtener_notas_por_curso_subperiodo(integer, character varying, integer, character varying, character varying);
DROP FUNCTION IF EXISTS public.obtener_notas_por_curso_subperiodo(integer, character varying, integer, character varying, character varying, character varying);
DROP FUNCTION IF EXISTS public.get_pagos_por_alumno(integer, integer, character varying);
DROP FUNCTION IF EXISTS public.obtener_obligaciones_pagadas_por_alumno(integer, character varying);
DROP PROCEDURE IF EXISTS public.generar_examen_aleatorio_competencia_grado(integer, integer, integer, integer, character varying);
DROP PROCEDURE IF EXISTS public.actualizar_respuesta(character, integer, integer, character varying);

--insert obligaciones pagadas
INSERT INTO public.obligacion_pagada ("ID_ALUMNO", "ID_PERIODO", "FECHA_PAGO", "CONCEPTO", "NUMERO_DOCUMENTO_PAGO", "NUMERO_CUOTA", "IMPORTE", "MONTO_PAGADO", codigo_sede) VALUES
(1, 24, '2025-01-02', 'Matrícula 2025', 'INV20250001', 1, 400.00, 400.00, 'SEDE001'),
(1, 24, '2025-01-10', 'Cuota mensual', 'INV20250002', 2, 350.00, 350.00, 'SEDE001'),
(1, 24, '2025-02-15', 'Cuota 2', 'INV20250003', 3, 350.00, 350.00, 'SEDE001'),
(1, 24, '2025-06-01', 'Seguro estudiantil', 'INV20250004', 1, 400.00, 400.00, 'SEDE001'),
(1, 24, '2025-06-10', 'Cuota mensual', 'INV20250005', 2, 450.00, 450.00, 'SEDE001'),
(1, 24, '2025-07-15', 'Cuota extraordinaria', 'INV20250006', 3, 450.00, 450.00, 'SEDE001'),
(2, 24, '2025-01-02', 'Inscripción Talleres', 'INV20250007', 1, 300.00, 300.00, 'SEDE001'),
(2, 24, '2025-01-15', 'Cuota actividad deportiva', 'INV20250008', 2, 250.00, 250.00, 'SEDE001'),
(2, 24, '2025-02-10', 'Material de estudio', 'INV20250009', 3, 150.00, 150.00, 'SEDE001'),
(2, 24, '2025-06-01', 'Seguro médico anual', 'INV20250010', 1, 450.00, 450.00, 'SEDE001'),
(2, 24, '2025-06-10', 'Cuota biblioteca', 'INV20250011', 2, 200.00, 200.00, 'SEDE001'),
(2, 24, '2025-07-05', 'Excursión educativa', 'INV20250012', 3, 300.00, 300.00, 'SEDE001');


DELETE FROM public.postulante
WHERE "DNI" LIKE '6%' OR "DNI" LIKE '9%';

UPDATE public.postulante
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;