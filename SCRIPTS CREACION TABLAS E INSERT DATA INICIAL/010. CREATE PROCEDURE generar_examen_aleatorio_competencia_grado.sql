CREATE OR REPLACE PROCEDURE public.generar_examen_aleatorio_competencia_grado(
	IN p_id_postulante integer,
	IN p_numero_preguntas integer,
	IN p_id_competencia integer,
	IN p_id_grado integer,
	IN p_es_grupal boolean)
LANGUAGE 'plpgsql'
AS $BODY$
DECLARE
    grupos RECORD;
BEGIN
    IF p_es_grupal THEN  -- Si es grupal, trabajar con los grupos
        -- Seleccionar grupos de preguntas (5 preguntas por grupo), filtrando por grado
        FOR grupos IN 
            SELECT "GRUPO" 
            FROM pregunta 
            WHERE "ID_COMPETENCIA" = p_id_competencia 
              AND "GRUPO" IS NOT NULL
              AND "ID_GRADO" IS NOT NULL
              AND "ID_GRADO" = p_id_grado 
            GROUP BY "GRUPO" 
            ORDER BY RANDOM() 
            LIMIT p_numero_preguntas / 5  -- Control de la cantidad de preguntas por grupo
        LOOP
            -- Insertar la pregunta con TEXTO_SUPERIOR (de cada grupo)
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO")
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, p_id_grado
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NOT NULL
              AND "ID_GRADO" = p_id_grado
            LIMIT 1;  -- Una pregunta con TEXTO_SUPERIOR

            -- Insertar las otras 4 preguntas de forma aleatoria del mismo grupo
            INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO")
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, p_id_competencia, p_id_grado
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NULL
              AND "ID_GRADO" = p_id_grado
            ORDER BY RANDOM()
            LIMIT 4;  -- Otras 4 preguntas aleatorias sin TEXTO_SUPERIOR
        END LOOP;

    ELSE  -- Si es individual, no se usan los grupos
        -- Para cualquier otra competencia, seleccionar preguntas individuales (no agrupadas)
        INSERT INTO EXAMEN_GENERADO ("ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", "ID_COMPETENCIA", "ID_GRADO")
        SELECT p_id_postulante, q."ID_PREGUNTA", NULL, p_id_competencia, p_id_grado
        FROM (
            SELECT "ID_PREGUNTA"
            FROM pregunta
            WHERE "ID_COMPETENCIA" = p_id_competencia
              AND "GRUPO" IS NULL  -- No agrupar preguntas
              AND "ID_GRADO" = p_id_grado
            ORDER BY RANDOM()
            LIMIT p_numero_preguntas  -- Control de la cantidad de preguntas
        ) q;
    END IF;

    -- Actualizar el orden de las preguntas generadas
    WITH preguntas_ordenadas AS (
        SELECT
            "ID_EXAMEN_GENERADO",
            "ID_POSTULANTE",
            "ID_PREGUNTA",
            ROW_NUMBER() OVER (PARTITION BY "ID_POSTULANTE" ORDER BY "ID_EXAMEN_GENERADO") AS nuevo_orden
        FROM EXAMEN_GENERADO
        WHERE "ID_POSTULANTE" = p_id_postulante
    )
    UPDATE EXAMEN_GENERADO eg
    SET "ORDEN_PREGUNTA" = po.nuevo_orden
    FROM preguntas_ordenadas po
    WHERE eg."ID_EXAMEN_GENERADO" = po."ID_EXAMEN_GENERADO";

END;
$BODY$;