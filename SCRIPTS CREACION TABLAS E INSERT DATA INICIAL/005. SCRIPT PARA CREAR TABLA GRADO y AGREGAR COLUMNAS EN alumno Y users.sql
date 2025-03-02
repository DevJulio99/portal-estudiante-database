--CREAR TABLA grado
CREATE TABLE grado (
    "ID_GRADO" SERIAL PRIMARY KEY,
    "NUMERO_GRADO" INTEGER NOT NULL,
    "DESCRIPCION_GRADO" VARCHAR(50) NOT NULL,
    "NIVEL_EDUCATIVO" VARCHAR(20) NOT NULL
);



--Agregando ID_GRADO en tabla pregunta y relacionando con grado
ALTER TABLE pregunta
ADD COLUMN "ID_GRADO" INTEGER,
ADD CONSTRAINT "FK_PREGUNTA_GRADO" FOREIGN KEY ("ID_GRADO") REFERENCES grado("ID_GRADO");



--RELACIONANDO TABLA alumno CON TABLA users

--Alumno con DNI único
ALTER TABLE alumno
ADD CONSTRAINT alumno_dni_unique UNIQUE (dni);

--Agregando dni_usuario en tabla users
ALTER TABLE users
ADD COLUMN dni_usuario character varying(20);

--Clave foránea para dni en tabla users
ALTER TABLE users
ADD CONSTRAINT fk_dni_usuario
FOREIGN KEY (dni_usuario)
REFERENCES alumno (dni)
ON DELETE CASCADE;


--Agregando campos grado y habilitar alumno para prueba
ALTER TABLE alumno
ADD COLUMN id_grado integer,
ADD COLUMN habilitado_prueba boolean DEFAULT FALSE;

--Clave foránea para grado en tabla alumno
ALTER TABLE alumno
ADD CONSTRAINT fk_id_grado
FOREIGN KEY (id_grado)
REFERENCES grado ("ID_GRADO")
ON DELETE SET NULL;


