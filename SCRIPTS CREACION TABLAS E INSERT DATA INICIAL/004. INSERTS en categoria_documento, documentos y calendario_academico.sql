-- Inserción de Categorías
INSERT INTO categoria_documento ("ID_CATEGORIA_DOCUMENTO", "STATUS", "NOMBRE", "DESCRIPCION", "IMAGEN", "SECUENCIA", "DATE_CREATED") VALUES
(1, 'published', 'Reglamentos', NULL, NULL, 1, '2024-03-21T15:19:28.000Z'),
(2, 'published', 'Manuales', NULL, NULL, 2, '2024-03-21T15:19:28.000Z'),
(3, 'published', 'Estatutos', NULL, NULL, 3, '2024-03-21T15:19:38.000Z');


-- Insertar documentos
INSERT INTO documentos (
    "ID_DOCUMENTO", "ID_CATEGORIA_DOCUMENTO", "STATUS", "TITULO", "DESCRIPCION", "ENLACE", "SECUENCIA", "DATE_CREATED", 
    "TIPO_DOCUMENTO", "MAS_BUSCADOS", "SECUENCIA_MAS_BUSCADA", "DOCUMENTO_VER", "INTERNO", "FECHA_ACTUALIZACION", 
    "FECHA_INICIO", "FECHA_FIN", "DOCUMENTO_DESCARGA", "NOMBRE_DOCUMENTO", "TYPE"
) VALUES
(30, 1, 'published', 'Reglamento Administrativo', 'Descarga el documento', NULL, 1, '2024-06-25 13:23:49', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/14vrL-srgWetbEU5lt5WPkFbKlsL5amUV/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=14vrL-srgWetbEU5lt5WPkFbKlsL5amUV', 'Reglamento Administrativo', 'application/pdf'),
(29, 1, 'published', 'Reglamento de Admisión', 'Descarga el documento', NULL, 3, '2024-06-25 13:23:49', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/133HtM30KSg3_iINvGwCGuHgyqe5BFVHs/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=133HtM30KSg3_iINvGwCGuHgyqe5BFVHs', 'Reglamento De Admision', 'application/pdf'),
(31, 1, 'published', 'Reglamento de Becas', 'Descarga el documento', NULL, 5, '2024-06-25 13:25:59', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/10f0kjok65i8WygsPvq-wBiVbQE5s2ef7/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=10f0kjok65i8WygsPvq-wBiVbQE5s2ef7', 'Reglamento De Becas', 'application/pdf'),
(33, 1, 'published', 'Reglamento de Defensoría Estudiantil', 'Descarga el documento', NULL, 7, '2024-06-25 13:28:04', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/13g6i9hG21hn_PKBaut3ugBuEm1M-iOcX/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=13g6i9hG21hn_PKBaut3ugBuEm1M-iOcX', 'Reglamento De Defensoria Estudiantil', 'application/pdf'),
(34, 1, 'published', 'Reglamento de Deportes', 'Descarga el documento', NULL, 8, '2024-06-25 13:30:48', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1kHgvB854-NorUh7Hh8FIb7SHnG6z47mQ/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=1kHgvB854-NorUh7Hh8FIb7SHnG6z47mQ', 'Reglamento De Deportes', 'application/pdf'),
(28, 1, 'published', 'Reglamento de Disciplina del Personal Académico', 'Descarga el documento', NULL, 9, '2024-06-25 13:20:28', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1MErJ2WHkrxb3llhWaAXds9eAkBZ-GsnC/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=1MErJ2WHkrxb3llhWaAXds9eAkBZ-GsnC', 'Reglamento De Disciplina Del Personal Académico V04', 'application/pdf'),
(35, 1, 'published', 'Reglamento de Disciplina del Estudiante', 'Descarga el documento', NULL, 10, '2024-06-25 13:30:48', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1SaerUhdtE_kSe6OXHHaYo4HAzclpqvd2/preview', TRUE, NULL, '2024-06-01 12:00:00', '2025-06-30 12:00:00', 'https://drive.google.com/uc?export=download&id=1SaerUhdtE_kSe6OXHHaYo4HAzclpqvd2', 'Reglamento De Disciplina Del Estudiante', 'application/pdf'),
(36, 1, 'published', 'Reglamento de Estudios', 'Descarga el documento', NULL, 11, '2024-06-25T13:30:48.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/10STSsID2hnf6nSG-yhHfKwBJWFa5ynL7/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=10STSsID2hnf6nSG-yhHfKwBJWFa5ynL7', 'Reglamento De Estudios', 'application/pdf'),
(40, 1, 'published', 'Reglamento de la Propiedad Intelectual', 'Descarga el documento', NULL, 15, '2024-06-25T13:52:00.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1c-t3xEqVNNxcdbpUvxRFMKpVK7Ucwpf1/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1c-t3xEqVNNxcdbpUvxRFMKpVK7Ucwpf1', 'Reglamento De Propiedad Intelectual', 'application/pdf'),
(41, 1, 'published', 'Reglamento de Seguridad y Salud en el Trabajo', 'Descarga el documento', NULL, 16, '2024-06-25T13:52:00.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1k1HF07y7EKY45sJ5lCy0Vga477Drg4B3/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1k1HF07y7EKY45sJ5lCy0Vga477Drg4B3', 'Reglamento Interno De Seguridad Y Salud En El Trabajo', 'application/pdf'),
(43, 1, 'published', 'Reglamento Docente', 'Descarga el documento', NULL, 18, '2024-06-25T13:55:22.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1TOQiUKdsx0FSHNgJSsWlS2ApXJkBvD9B/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1TOQiUKdsx0FSHNgJSsWlS2ApXJkBvD9B', 'Reglamento Docente', 'application/pdf'),
(44, 1, 'published', 'Reglamento General del Colegio', 'Descarga el documento', NULL, 19, '2024-06-25T13:55:22.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1BSIXoicy37m75vx8XEibvvU6c_J4dwS9/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1BSIXoicy37m75vx8XEibvvU6c_J4dwS9', 'Reglamento General Del Colegio', 'application/pdf'),
(25, 2, 'published', 'Manual de Usuario del Portal - Manual de Estudiante', 'Descarga el documento', NULL, 2, '2024-06-25T13:03:11.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1PPuHSOJsSGWRNX8rwWCsQN0o9F7vfzLG/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1PPuHSOJsSGWRNX8rwWCsQN0o9F7vfzLG', 'Portal Manual De Estudiante.pdf', 'application/pdf'),
(24, 3, 'published', 'Estatuto Colegio CODESTI', 'Descarga el documento', NULL, 1, '2024-06-25T12:57:55.000Z', 'pdf_img', FALSE, NULL, 'https://drive.google.com/file/d/1DbiayORL400d-j1-df-uWlOblVjxE28h/preview', TRUE, NULL, '2024-06-01T12:00:00', '2025-06-30T12:00:00', 'https://drive.google.com/uc?export=download&id=1DbiayORL400d-j1-df-uWlOblVjxE28h', 'Estatuto Colegio CODESTI', 'application/pdf');



--INSERTS PARA CALENDARIO ACADEMICO 2025
INSERT INTO calendario_academico (actividad, fecha_inicio, fecha_fin, modalidad_estudios, tipo_actividad) 
VALUES
('Apertura bimestral de Venta de Carpetas de Grado y Título', '2025-01-02', '2025-01-02', '', 'ES'),
('Inicio de cursos de verano 2025', '2025-01-08', '2025-01-08', '', 'PR'),
('Reserva de matrícula regulares 2025-1', '2025-01-11', '2025-01-18', '', 'ES'),
('Inicio del trámite de retiro de cursos de verano 2025', '2025-01-13', '2025-01-13', '', 'ES'),
('Día de la Independencia (Feriado)', '2025-07-28', '2025-07-28', '', 'FE'),
('Semana de exámenes finales', '2025-09-23', '2025-09-27', '', 'PR'),
('Traslado de carrera y sede para el 2025-1', '2025-01-11', '2025-01-17', '', 'ES'),
('Graduación de estudiantes 2025', '2025-12-15', '2025-12-15', '', 'CE'),
('Inicio de clases regulares 2025-1', '2025-02-05', '2025-02-05', '', 'PR'),
('Fin del trámite de retiro de cursos de verano 2025', '2025-02-10', '2025-02-10', '', 'ES'),
('Exámenes finales de cursos de verano 2025', '2025-02-19', '2025-02-23', '', 'PR'),
('Cierre de notas de cursos de verano 2025', '2025-02-28', '2025-02-28', '', 'ES'),
('Semana de ajustes de matrícula 2025-1', '2025-03-01', '2025-03-07', '', 'ES'),
('Inicio de retiro de asignaturas 2025-1', '2025-03-10', '2025-03-10', '', 'ES'),
('Feriado: Día Internacional de la Mujer', '2025-03-08', '2025-03-08', '', 'FE'),
('Término de inscripciones a actividades extracurriculares', '2025-03-20', '2025-03-20', '', 'CE'),
('Feriado: Semana Santa', '2025-04-01', '2025-04-02', '', 'FE'),
('Evaluación parcial de asignaturas 2025-1', '2025-04-10', '2025-04-14', '', 'PR'),
('Inicio de retiro total de asignaturas 2025-1', '2025-04-20', '2025-04-20', '', 'ES'),
('Cierre de inscripciones para Traslados 2025-2', '2025-04-30', '2025-04-30', '', 'ES'),
('Feriado: Día del Trabajo', '2025-05-01', '2025-05-01', '', 'FE'),
('Jornada de formación docente', '2025-05-12', '2025-05-12', '', 'CE'),
('Revisión de notas de evaluación parcial 2025-1', '2025-05-15', '2025-05-17', '', 'ES'),
('Actividades de integración estudiantil', '2025-05-22', '2025-05-24', '', 'CE'),
('Semana de exámenes finales 2025-1', '2025-06-17', '2025-06-21', '', 'PR'),
('Finalización de clases regulares 2025-1', '2025-06-24', '2025-06-24', '', 'PR'),
('Cierre de actas de notas 2025-1', '2025-06-30', '2025-06-30', '', 'ES'),
('Apertura de matrícula para 2025-2', '2025-06-25', '2025-06-30', '', 'ES'),
('Feriado: Día de la Independencia', '2025-07-28', '2025-07-28', '', 'FE'),
('Receso académico de medio año', '2025-07-01', '2025-07-14', '', 'PR'),
('Evaluación final de asignaturas 2025-2', '2025-12-10', '2025-12-14', '', 'PR'),
('Cierre de actas 2025-2', '2025-12-20', '2025-12-20', '', 'ES'),
('Inicio de matrícula regular 2025-2', '2025-08-01', '2025-08-05', '', 'ES'),
('Semana de orientación para estudiantes 2025-2', '2025-08-10', '2025-08-14', '', 'CE'),
('Receso académico de medio semestre 2025-2', '2025-09-01', '2025-09-05', '', 'PR'),
('Evaluación parcial de asignaturas 2025-2', '2025-09-15', '2025-09-19', '', 'PR'),
('Feriado: Día de la Raza', '2025-10-12', '2025-10-12', '', 'FE'),
('Semana de exámenes finales 2025-2', '2025-10-20', '2025-10-24', '', 'PR'),
('Feriado: Día de Todos los Santos', '2025-11-01', '2025-11-01', '', 'FE'),
('Evaluación final de asignaturas 2025-2', '2025-11-10', '2025-11-14', '', 'PR'),
('Revisión de notas de evaluación final 2025-2', '2025-11-15', '2025-11-17', '', 'ES'),
('Graduación de estudiantes 2025', '2025-12-10', '2025-12-10', '', 'CE'),
('Receso académico de fin de año', '2025-12-22', '2025-12-31', '', 'PR');

