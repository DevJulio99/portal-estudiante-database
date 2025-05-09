INSERT INTO public.competencia(
	"NOMBRE_COMPETENCIA", "PESO_COMPETENCIA", "DESCRIPCION", "FECHA_DISPONIBILIDAD", "FECHA_INICIO", "FECHA_FIN", "HORA_INICIO", "ORDEN_COMPETENCIA", "ESTADO_COMPETENCIA", "DEPENDENCIA_COMPETENCIA", "ID_ETAPA", "ID_PROCESO", "URL_IMAGEN")
	VALUES 
	('MATEMÁTICA', 33.33, 'Evaluación de Matemática', '2025-01-01', '2025-01-01', '2025-12-31', '06:00:00', 5, 'Pendiente', null, 2, 1, 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1746490466/examen_matematica_k7dkza.jpg'),
	('COMUNICACIÓN', 33.33, 'Evaluación de Comunicación', '2025-01-01', '2025-01-01', '2025-12-31', '06:00:00', 6, 'Pendiente', null, 2, 1, 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1746544878/examen-comunicacion_s0tvpl.jpg');

ALTER TABLE public.pregunta
ADD COLUMN "TEMA" VARCHAR DEFAULT NULL;

INSERT INTO public.criterio_evaluacion(
	"ID_COMPETENCIA", "PUNTUACION_MAXIMA", "PESO", "NUMERO_PREGUNTAS", "PUNTAJE_POR_PREGUNTA", "PUNTAJE_MAXIMO", "PUNTAJE_MINIMO_APROBATORIO", "TIEMPO_POR_PREGUNTA", "TIEMPO_LIMITE")
	VALUES 
	(5, 100.00, 33.33, 5, 5.00, 100.00, 60.00, 2.00, '00:30:00'), 
	(6, 100.00, 33.33, 5, 5.00, 100.00, 60.00, 2.00, '00:15:00');