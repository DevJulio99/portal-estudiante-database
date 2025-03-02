--Updates de grado para alumnos
UPDATE alumno
SET id_grado = 1 WHERE id_alumno = 1;

UPDATE alumno
SET id_grado = 2 WHERE id_alumno = 2;

UPDATE alumno
SET id_grado = 3 WHERE id_alumno = 3;



--Updates de dni_usuario en users
UPDATE users
SET dni_usuario = '12345678'
WHERE id = 1;

UPDATE users
SET dni_usuario = '87654321'
WHERE id = 2;

UPDATE users
SET dni_usuario = '23456789'
WHERE id = 3;