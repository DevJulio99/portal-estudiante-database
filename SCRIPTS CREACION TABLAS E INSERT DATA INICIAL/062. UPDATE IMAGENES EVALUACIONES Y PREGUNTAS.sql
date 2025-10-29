UPDATE public.competencia
SET "URL_IMAGEN" = CASE "ORDEN_COMPETENCIA"
    WHEN 1 THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1761679565/evaluacion_1_oiulrn.png'
    WHEN 2 THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1761679565/evaluacion_2_qcmpbi.png'
    WHEN 3 THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1761679565/evaluacion_3_cypqak.png'
    ELSE "URL_IMAGEN"
END
WHERE "ORDEN_COMPETENCIA" IN (1, 2, 3);

UPDATE public.competencia
SET "FECHA_INICIO" = '2025-01-01',
    "FECHA_FIN" = '2025-12-31'
WHERE "ORDEN_COMPETENCIA" IN (1, 2, 3);


--Actualizacion de imagenes de preguntas
UPDATE public.pregunta
SET "TEXTO_IMAGEN" = CASE "GRUPO"
    WHEN '102' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876629/conejo-tortuga_wqxdiw.jpg'
    WHEN '103' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876632/el-raton-y-el-leon-j23_lxc9tq.jpg'
    WHEN '104' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876631/cigarra-e-formiga_qnu8cm.jpg'
    WHEN '105' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876631/patito-feo-cuento-ilustrado_fmu4bo.jpg'
    WHEN '106' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876630/caperucita-roja_bjhtsl.jpg'
    WHEN '107' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876629/la-zorra-y-las-uvas_eujbx8.jpg'
    WHEN '108' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876628/pedro-y-el-lobo_c9nzvi.jpg'
    WHEN '109' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876628/gigante-egoista_nflalh.jpg'
    WHEN '110' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876628/el-traje-nuevo-del-emperador_qtr7k8.jpg'
    WHEN '111' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876628/alumnos-maestra_b9sj16.webp'
    WHEN '112' THEN 'https://res.cloudinary.com/djp7gmsgk/image/upload/v1740876628/paseo-familia_zomfw0.webp'
    ELSE "TEXTO_IMAGEN"
END
WHERE "GRUPO" IN ('102', '103', '104', '105', '106', '107', '108', '109', '110', '111', '112');
