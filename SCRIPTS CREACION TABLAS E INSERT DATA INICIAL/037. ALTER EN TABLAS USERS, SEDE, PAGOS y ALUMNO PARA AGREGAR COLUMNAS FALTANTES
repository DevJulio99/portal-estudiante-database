-- Agregar TODAS las columnas faltantes
ALTER TABLE users ADD COLUMN codigo_sede character varying(255);
ALTER TABLE users ADD COLUMN activo boolean DEFAULT true;
ALTER TABLE sede ADD COLUMN tipo_institucion character varying(100);

-- Actualizar con los valores correctos
UPDATE users SET 
    codigo_sede = 'SEDE001',
    activo = true;

UPDATE sede SET 
    tipo_institucion = 'C'
WHERE codigo_sede = 'SEDE001';

-- Agregar la columna codigo_sede a la tabla pagos
ALTER TABLE public.pagos 
ADD COLUMN codigo_sede VARCHAR(255);

-- Agregar foreign key si es necesario
ALTER TABLE public.pagos 
ADD CONSTRAINT fk_pagos_sede 
FOREIGN KEY (codigo_sede) REFERENCES sede(codigo_sede);

-- Agregar las columnas que faltan en la tabla alumno
ALTER TABLE public.alumno 
ADD COLUMN codigo_sede VARCHAR(255),
ADD COLUMN activo BOOLEAN DEFAULT true;

-- Agregar foreign key para codigo_sede si es necesario
ALTER TABLE public.alumno 
ADD CONSTRAINT fk_alumno_sede 
FOREIGN KEY (codigo_sede) REFERENCES sede(codigo_sede);