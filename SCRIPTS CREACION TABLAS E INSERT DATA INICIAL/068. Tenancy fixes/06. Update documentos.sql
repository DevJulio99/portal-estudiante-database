UPDATE eventos SET codigo_sede = 'SEDE001' WHERE codigo_sede IS NULL;
UPDATE ubicaciones_evento SET codigo_sede = 'SEDE001' WHERE codigo_sede IS NULL;
UPDATE categoria_documento SET codigo_sede = 'SEDE001' WHERE codigo_sede IS NULL;
UPDATE documentos SET codigo_sede = 'SEDE001' WHERE codigo_sede IS NULL;

INSERT INTO categoria_documento ("STATUS", "NOMBRE", "DESCRIPCION", "IMAGEN", "SECUENCIA", "DATE_CREATED", "codigo_sede")
VALUES ('published', 'Tutoriales', NULL, NULL, 1, '2025/11/03 00:00:00', 'SEDE002');

INSERT INTO documentos ("ID_CATEGORIA_DOCUMENTO", "STATUS", "TITULO", "DESCRIPCION", "ENLACE", "SECUENCIA", "DATE_CREATED", "TIPO_DOCUMENTO", "MAS_BUSCADOS", "SECUENCIA_MAS_BUSCADA", "DOCUMENTO_VER", "INTERNO", "FECHA_ACTUALIZACION", "FECHA_INICIO", "FECHA_FIN", "DOCUMENTO_DESCARGA", "NOMBRE_DOCUMENTO", "TYPE", "codigo_sede") 
VALUES (4, 'published', 'prueba documento 2', 'test doc 2', '', 0, '2025-11-03 17:37:09.903764', 'pdf', false, 0, 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1762209428/Documentos/b4elzqqhoxy4ulhucnwx.pdf', true, '2025-11-03 17:37:09.903827', '2025-11-03 17:37:09.903829', '2025-11-03 17:37:09.903838', 'https://res.cloudinary.com/djp7gmsgk/image/upload/fl_attachment/v1762209428/Documentos/b4elzqqhoxy4ulhucnwx.pdf', 'prueba documento 2', 'application/pdf', 'SEDE002');