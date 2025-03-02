--eliminando examenes generados
DELETE FROM examen_generado WHERE "ID_COMPETENCIA" IN (1, 2, 3);

--manteniendo solo preguntas de competencias 2 y 3
DELETE FROM pregunta WHERE "ID_COMPETENCIA" NOT IN (2, 3);

UPDATE pregunta SET "ID_GRADO" = 1 WHERE "ID_COMPETENCIA" IN (2, 3);

--eliminar procedures anteriores de generar_examen
DROP PROCEDURE IF EXISTS generar_examen_aleatorio_competencia;
DROP PROCEDURE IF EXISTS generar_examen_aleatorio_competencia_grado;