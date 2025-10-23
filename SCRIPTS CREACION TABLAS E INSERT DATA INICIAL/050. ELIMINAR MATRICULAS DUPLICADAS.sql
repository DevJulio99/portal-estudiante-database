-- Eliminar físicamente los duplicados
DELETE FROM matricula WHERE id_matricula IN (1,4,6,7,8,9);

-- Agregar restricción única
ALTER TABLE matricula 
ADD CONSTRAINT unique_alumno_periodo_colegio 
UNIQUE (id_alumno, id_periodo, codigo_sede);