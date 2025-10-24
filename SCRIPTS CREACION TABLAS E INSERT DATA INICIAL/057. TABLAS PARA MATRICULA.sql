CREATE TABLE IF NOT EXISTS public.grado_curso
(
    id_grado_curso serial NOT NULL,
    "ID_GRADO" integer NOT NULL,
    id_curso integer NOT NULL,
    es_obligatorio boolean DEFAULT true,
    tipo_institucion character varying(20) COLLATE pg_catalog."default",
    orden_curso integer,
    creditos_minimos real,
    activo boolean DEFAULT true,
    
    CONSTRAINT grado_curso_pkey PRIMARY KEY (id_grado_curso),
    CONSTRAINT unique_grado_curso UNIQUE ("ID_GRADO", id_curso),
    
    CONSTRAINT fk_grado_curso_grado FOREIGN KEY ("ID_GRADO")
        REFERENCES public.grado ("ID_GRADO") MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
        
    CONSTRAINT fk_grado_curso_curso FOREIGN KEY (id_curso)
        REFERENCES public.curso (id_curso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS public.matricula_curso
(
    id_matricula_curso serial NOT NULL,
    id_matricula integer NOT NULL,
    id_curso integer NOT NULL,
    id_seccion integer NOT NULL,
    tipo_asignacion character varying(20) COLLATE pg_catalog."default" DEFAULT 'AUTOMATICA',
    estado_matricula_curso character varying(20) COLLATE pg_catalog."default" DEFAULT 'ACTIVO',
    fecha_asignacion timestamp without time zone DEFAULT CURRENT_TIMESTAMP,
    observaciones character varying(255) COLLATE pg_catalog."default",
    activo boolean DEFAULT true,
    
    CONSTRAINT matricula_curso_pkey PRIMARY KEY (id_matricula_curso),
    CONSTRAINT unique_matricula_curso UNIQUE (id_matricula, id_curso),
    
    CONSTRAINT fk_matricula_curso_matricula FOREIGN KEY (id_matricula)
        REFERENCES public.matricula (id_matricula) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE,
        
    CONSTRAINT fk_matricula_curso_curso FOREIGN KEY (id_curso)
        REFERENCES public.curso (id_curso) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION,
        
    CONSTRAINT fk_matricula_curso_seccion FOREIGN KEY (id_seccion)
        REFERENCES public.seccion (id_seccion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE NO ACTION
);

CREATE TABLE IF NOT EXISTS public.seccion_cupo
(
    id_seccion integer NOT NULL,
    cupo_maximo integer DEFAULT 30,
    cupo_actual integer DEFAULT 0,
    cupo_disponible integer GENERATED ALWAYS AS (cupo_maximo - cupo_actual) STORED,
    activo boolean DEFAULT true,
    
    CONSTRAINT seccion_cupo_pkey PRIMARY KEY (id_seccion),
    
    CONSTRAINT fk_seccion_cupo_seccion FOREIGN KEY (id_seccion)
        REFERENCES public.seccion (id_seccion) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE
);

-- Para distinguir mejor entre colegio e instituto
ALTER TABLE public.grado 
ADD COLUMN IF NOT EXISTS tipo_institucion character varying(20) COLLATE pg_catalog."default" DEFAULT 'C';

-- Para manejar carreras en instituto
ALTER TABLE public.grado 
ADD COLUMN IF NOT EXISTS carrera character varying(50) COLLATE pg_catalog."default";

ALTER TABLE public.grado 
ADD COLUMN IF NOT EXISTS codigo_carrera character varying(10) COLLATE pg_catalog."default";

-- Actualizar datos existentes
UPDATE public.grado SET tipo_institucion = 'C' 
WHERE "NIVEL_EDUCATIVO" IN ('Primaria', 'Secundaria');



-- COLEGIO (mantener existentes)

-- INSTITUTO
INSERT INTO public.grado ("NUMERO_GRADO", "DESCRIPCION_GRADO", "NIVEL_EDUCATIVO", tipo_institucion, carrera, codigo_carrera) VALUES
(12, '1er Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP'),
(13, '2do Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP'),
(14, '3er Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP'),
(15, '4to Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP'),
(16, '5to Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP'),
(17, '6to Ciclo', 'INSTITUTO', 'I', 'Computación e Informática', 'COMP');


-- Poblar grado_curso
-- =====================================================
-- COLEGIO
INSERT INTO public.grado_curso ("ID_GRADO", id_curso, es_obligatorio, tipo_institucion, orden_curso) VALUES
(1, 1, true, 'C', 1),
(1, 2, true, 'C', 2),
(1, 3, true, 'C', 3),
(1, 4, true, 'C', 4),
(2, 1, true, 'C', 1),
(2, 2, true, 'C', 2),
(2, 3, true, 'C', 3),
(2, 4, true, 'C', 4),
(2, 5, true, 'C', 5);

-- INSTITUTO
INSERT INTO public.grado_curso ("ID_GRADO", id_curso, es_obligatorio, tipo_institucion, orden_curso, creditos_minimos) VALUES
(12, 11, true, 'I', 1, 4), 
(12, 12, true, 'I', 2, 3),
(12, 13, false, 'I', 3, 2),
(12, 14, true, 'I', 4, 4),
(12, 15, true, 'I', 5, 3),
(12, 16, false, 'I',6, 2);