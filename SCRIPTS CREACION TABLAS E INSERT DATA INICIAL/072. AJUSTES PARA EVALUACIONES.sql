-- Identificar a qué sede pertenecen las preguntas (por el grado que referencian)
UPDATE pregunta p
SET codigo_sede = g.codigo_sede
FROM grado g
WHERE p."ID_GRADO" = g."ID_GRADO"
  AND p.codigo_sede IS NULL;

-- Asignar sede a competencias
UPDATE competencia e
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- Asignar sede a criterios de evaluación (basado en su competencia)
UPDATE criterio_evaluacion ce
SET codigo_sede = c.codigo_sede
FROM competencia c
WHERE ce."ID_COMPETENCIA" = c."ID_COMPETENCIA"
  AND ce.codigo_sede IS NULL;

-- Verificar que no queden registros sin sede
SELECT 
    'pregunta' as tabla,
    COUNT(CASE WHEN codigo_sede IS NULL THEN 1 END) as sin_sede
FROM pregunta
UNION ALL
SELECT 'competencia', COUNT(CASE WHEN codigo_sede IS NULL THEN 1 END)
FROM competencia
UNION ALL
SELECT 'criterio_evaluacion', COUNT(CASE WHEN codigo_sede IS NULL THEN 1 END)
FROM criterio_evaluacion;

-- Modificar el procedimiento para generar examen aleatorio
CREATE OR REPLACE PROCEDURE public.generar_examen_aleatorio_competencia_grado(
    IN p_id_postulante integer, 
    IN p_numero_preguntas integer, 
    IN p_id_competencia integer, 
    IN p_id_grado integer
)
LANGUAGE plpgsql
AS $procedure$
DECLARE
    grupos RECORD;
    tiene_grupos BOOLEAN;
    existe_preguntas_competencia BOOLEAN;
    v_codigo_sede VARCHAR(255);  -- Variable para guardar el código de sede
BEGIN
    -- Obtener el código de sede del tenant actual
    v_codigo_sede := current_setting('app.current_tenant', true);
    
    -- Verificar si existen preguntas con grupo
    SELECT EXISTS (
        SELECT 1 FROM pregunta
        WHERE "ID_COMPETENCIA" = p_id_competencia
          AND "GRUPO" IS NOT NULL
          AND "ID_GRADO" = p_id_grado
    ) INTO tiene_grupos;

    SELECT EXISTS (
        SELECT 1 FROM pregunta
        WHERE "ID_COMPETENCIA" = p_id_competencia
          AND "ID_GRADO" = p_id_grado
    ) INTO existe_preguntas_competencia;

    IF existe_preguntas_competencia = false THEN
        RAISE EXCEPTION 'No se encontró preguntas para la competencia: %', p_id_competencia;
    END IF;

    IF tiene_grupos THEN
        FOR grupos IN 
            SELECT "GRUPO" 
            FROM pregunta 
            WHERE "ID_COMPETENCIA" = p_id_competencia 
              AND "GRUPO" IS NOT NULL
              AND "ID_GRADO" = p_id_grado 
            GROUP BY "GRUPO" 
            ORDER BY RANDOM() 
            LIMIT p_numero_preguntas / 5  
        LOOP
            -- ← MODIFICADO: Agregar codigo_sede
            INSERT INTO EXAMEN_GENERADO (
                "ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", 
                "ID_COMPETENCIA", "ID_GRADO", codigo_sede
            )
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, 
                   p_id_competencia, p_id_grado, v_codigo_sede
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NOT NULL
              AND "ID_GRADO" = p_id_grado
            LIMIT 1;

            -- ← MODIFICADO: Agregar codigo_sede
            INSERT INTO EXAMEN_GENERADO (
                "ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", 
                "ID_COMPETENCIA", "ID_GRADO", codigo_sede
            )
            SELECT p_id_postulante, "ID_PREGUNTA", NULL, 
                   p_id_competencia, p_id_grado, v_codigo_sede
            FROM pregunta
            WHERE "GRUPO" = grupos."GRUPO"
              AND "TEXTO_SUPERIOR" IS NULL
              AND "ID_GRADO" = p_id_grado
            ORDER BY RANDOM()
            LIMIT 4;
        END LOOP;
    ELSE
        -- ← MODIFICADO: Agregar codigo_sede
        INSERT INTO EXAMEN_GENERADO (
            "ID_POSTULANTE", "ID_PREGUNTA", "ORDEN_PREGUNTA", 
            "ID_COMPETENCIA", "ID_GRADO", codigo_sede
        )
        SELECT p_id_postulante, q."ID_PREGUNTA", NULL, 
               p_id_competencia, p_id_grado, v_codigo_sede
        FROM (
            SELECT "ID_PREGUNTA"
            FROM pregunta
            WHERE "ID_COMPETENCIA" = p_id_competencia
              AND "GRUPO" IS NULL  
              AND "ID_GRADO" = p_id_grado
            ORDER BY RANDOM()
            LIMIT p_numero_preguntas  
        ) q;
    END IF;

    -- Actualizar el orden (esto se mantiene igual)
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
$procedure$;
