ALTER TABLE estado_competencia
ADD COLUMN ultima_pregunta INT;
ADD COLUMN tiempo_ultima_pregunta INT;

--actualizacion a procedure actualizar_respuesta
CREATE OR REPLACE PROCEDURE public.actualizar_respuesta(
    IN p_respuesta_seleccionada CHARACTER,
    IN p_id_postulante INTEGER,
    IN p_id_pregunta INTEGER,
    IN p_id_competencia INTEGER,
    IN p_num_pregunta_param INTEGER,
    IN p_tiempo_ultima_pregunta_param INTEGER
)
LANGUAGE plpgsql
AS $$
BEGIN
    -- Verificar si existe la competencia
    IF NOT EXISTS (
        SELECT 1 FROM competencia c WHERE c."ID_COMPETENCIA" = p_id_competencia
    ) THEN
        RAISE EXCEPTION 'La competencia no existe.';
    END IF;

    -- Verificar si existe el estado_competencia
    IF NOT EXISTS (
        SELECT 1 FROM estado_competencia ec 
        WHERE ec."ID_COMPETENCIA" = p_id_competencia 
          AND ec."ID_POSTULANTE" = p_id_postulante
    ) THEN
        RAISE EXCEPTION 'No existe un registro en estado_competencia para el postulante y competencia';
    END IF;

    -- Actualizar EXAMEN_GENERADO
    UPDATE examen_generado eg
    SET 
        "RESPUESTA_SELECCIONADA" = p_respuesta_seleccionada,
        "COMPLETADO" = TRUE,
        "TIEMPO_RESPUESTA" = CURRENT_TIMESTAMP AT TIME ZONE 'America/Lima'
    WHERE 
        eg."ID_POSTULANTE" = p_id_postulante 
        AND eg."ID_PREGUNTA" = p_id_pregunta;

    -- Validar que realmente se haya actualizado alguna fila
    IF NOT FOUND THEN
        RAISE EXCEPTION 'No se encontró un examen generado para el postulante y pregunta';
    END IF;

    -- Actualizar estado_competencia
    UPDATE estado_competencia
    SET 
        ultima_pregunta = p_num_pregunta_param,
        tiempo_ultima_pregunta = p_tiempo_ultima_pregunta_param
    WHERE 
        "ID_COMPETENCIA" = p_id_competencia 
        AND "ID_POSTULANTE" = p_id_postulante;

EXCEPTION
    WHEN OTHERS THEN
        -- No se usa ROLLBACK aquí. Se lanza el error y el cliente hará rollback.
        RAISE NOTICE 'Error en actualizar_respuesta: %', SQLERRM;
        RAISE;
END;
$$;

--nueva funcion para listar estados de competencias
CREATE OR REPLACE FUNCTION public.listar_estado_competencia(
    p_id_postulante INTEGER,
    p_id_competencia INTEGER
)
RETURNS TABLE (
    idPostulante INTEGER,
    idCompetencia INTEGER,
	estado VARCHAR,
	tiempoIniciado TIMESTAMP,
	tiempoFinalizado TIMESTAMP,
    ultimaPregunta INTEGER,
    tiempoUltimaPregunta INTEGER
)
LANGUAGE plpgsql
AS $$
DECLARE 
  v_tenant_id VARCHAR;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    IF v_tenant_id IS NULL THEN
        RAISE EXCEPTION 'No se pudo listar estados para esta sede.';
    END IF;
	
    RETURN QUERY
    SELECT "ID_POSTULANTE" as idPostulante,
	"ID_COMPETENCIA" as idCompetencia,
	"ESTADO" as estado,
	"TIEMPO_INICIADO" as tiempoIniciado,
	"TIEMPO_FINALIZADO" as tiempoFinalizado,
	ultima_pregunta as ultimaPregunta,
	tiempo_ultima_pregunta as tiempoUltimaPregunta
    FROM estado_competencia
    WHERE 
        "ID_POSTULANTE" = p_id_postulante
        AND "ID_COMPETENCIA" = p_id_competencia;
END;
$$;