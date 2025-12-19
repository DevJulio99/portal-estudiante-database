CREATE TABLE silabo (
    id_silabo SERIAL PRIMARY KEY,
    id_curso INT NOT NULL REFERENCES curso(id_curso),
    id_periodo INT NOT NULL REFERENCES periodoacademico(id_periodo),
    nombre VARCHAR(150) NOT NULL,
    descripcion TEXT,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE silabo_unidad (
    id_unidad SERIAL PRIMARY KEY,
    id_silabo INT NOT NULL REFERENCES silabo(id_silabo),
    numero_unidad INT NOT NULL,
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    orden INT,
    fecha_inicio TIMESTAMP,
    fecha_fin TIMESTAMP,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE sesion_clase (
    id_sesion SERIAL PRIMARY KEY,
    id_unidad INT NOT NULL REFERENCES silabo_unidad(id_unidad),
    numero INT NOT NULL,                 
    titulo VARCHAR(150),                 
    fecha DATE NOT NULL,                 
    descripcion TEXT,
    estado VARCHAR(20) DEFAULT 'Programada',
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE contenido_sesion (
    id_contenido SERIAL PRIMARY KEY,
    id_sesion INT NOT NULL REFERENCES sesion_clase(id_sesion),
    tipo_contenido VARCHAR(30) NOT NULL,
    -- Recurso, Carpeta, Página, Tarea, Archivo
    titulo VARCHAR(150) NOT NULL,
    descripcion TEXT,
    id_padre INT REFERENCES contenido_sesion(id_contenido),
    orden INT,
    visible BOOLEAN DEFAULT TRUE,
    fecha_creacion TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE archivo_contenido (
    id_archivo SERIAL PRIMARY KEY,
    id_contenido INT NOT NULL REFERENCES contenido_sesion(id_contenido),
    nombre VARCHAR(150),
    url TEXT NOT NULL,
    extension VARCHAR(10),     
    peso_mb DECIMAL(6,2)
);

CREATE TABLE tarea_detalle (
    id_contenido INT PRIMARY KEY REFERENCES contenido_sesion(id_contenido),
    fecha_apertura TIMESTAMP,
    fecha_cierre TIMESTAMP,
    puntaje_max DECIMAL(5,2)
);

-- Sílabos
INSERT INTO silabo (id_curso, id_periodo, nombre, descripcion)
VALUES (1, 25, 'Matemáticas Básicas', 'Sílabo de Matemáticas Básicas');


-- Unidad
INSERT INTO silabo_unidad (id_silabo, numero_unidad, titulo, descripcion, orden, fecha_inicio, fecha_fin)
VALUES (1, 1, 'Introduccion', '', 1, '2025-12-16 17:16:32.069024', '2026-02-01 17:16:32.069024'),
(1, 1, 'Desarrollo de temas', '', 2, '2025-12-16 17:16:32.069024', '2026-02-01 17:16:32.069024'),
(1, 1, 'Aplicaciones practicas', '', 3, '2025-12-16 17:16:32.069024', '2026-02-01 17:16:32.069024'),
(1, 1, 'Evaluación final', '', 4, '2025-12-16 17:16:32.069024', '2026-02-01 17:16:32.069024');

-- Sesiones
INSERT INTO sesion_clase (id_unidad, numero, fecha, titulo)
VALUES (1, 1, '2026-01-01', 'Sesión 1'),
(1, 2, '2026-01-02', 'Sesión 2');

-- Contenedores
INSERT INTO contenido_sesion (id_sesion, tipo_contenido, titulo, orden)
VALUES 
(1, 'Recurso', 'Recurso', 1),
(1, 'Carpeta', 'Carpeta', 2),
(1, 'Página', 'Página', 3),
(1, 'Tarea', 'Tarea', 4),
(2, 'Recurso', 'Recurso', 1),
(2, 'Carpeta', 'Carpeta', 2),
(2, 'Página', 'Página', 3),
(2, 'Tarea', 'Tarea', 4);

-- Archivos dentro de contenedores
INSERT INTO contenido_sesion (id_sesion, tipo_contenido, titulo, id_padre)
VALUES 
(1, 'Archivo', 'Diapositiva', 1),
(1, 'Archivo', 'Material complementario', 2),
(1, 'Archivo', 'Grabación de sesión', 3),
(1, 'Archivo', 'Infografía N° 1', 4),
(2, 'Archivo', 'Diapositiva', 5),
(2, 'Archivo', 'Grabación de sesión', 7);

-- Archivos tarea
INSERT INTO tarea_detalle (id_contenido, fecha_apertura, fecha_cierre, puntaje_max)
VALUES (12, '2026-01-01 08:00', '2026-01-20 23:59', 10);

--Archivos de material complementario
INSERT INTO archivo_contenido (id_contenido, nombre, url, extension, peso_mb)
VALUES 
(10, 'Lectura Complementaria - Semana 1.pdf', 'https://morth.nic.in/sites/default/files/dd12-13_0.pdf', 'pdf', 2.0),
(10, 'Ejercicios Prácticos - Unidad 1.pdf', 'https://morth.nic.in/sites/default/files/dd12-13_0.pdf', 'pdf', 2.0),
(10, 'Glosario de Términos.pdf', 'https://morth.nic.in/sites/default/files/dd12-13_0.pdf', 'pdf', 2.0);


--funcion para listar silabo de un curso
CREATE OR REPLACE FUNCTION obtener_silabo_con_sesiones(p_cod_curso VARCHAR)
RETURNS JSON
AS $$
DECLARE
    v_tenant_id VARCHAR;
    v_id_curso INT;
    v_existe BOOLEAN;
    v_resultado JSON;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    SELECT c.id_curso
    INTO v_id_curso
    FROM curso c
    WHERE c.codigo_curso = p_cod_curso;

    IF v_id_curso IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El curso no existe'
        );
    END IF;

    SELECT EXISTS (
        SELECT 1
        FROM silabo s
        INNER JOIN periodoacademico p 
            ON s.id_periodo = p.id_periodo
        WHERE s.id_curso = v_id_curso
          AND p.codigo_sede = v_tenant_id
    )
    INTO v_existe;

    IF NOT v_existe THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No se encontró sílabo'
        );
    END IF;

    SELECT json_build_object(
        'success', true,
        'data', json_agg(
            json_build_object(
			    'id_silabo', s.id_silabo,
                'id_unidad', su.id_unidad,
                'unidad_titulo', su.titulo,
                'fecha_inicio', su.fecha_inicio,
                'fecha_fin', su.fecha_fin,
                'sesiones', (
                    SELECT json_agg(
                        json_build_object(
						    'id_sesion', sc.id_sesion,
                            'numero', sc.numero,
                            'titulo', sc.titulo,
                            'fecha', sc.fecha,
                            'descripcion', sc.descripcion,
                            'contenido_sesion', (
                                SELECT json_agg(
                                    json_build_object(
                                        'tipo', cs.tipo_contenido,
                                        'titulo', cs.titulo,
                                        'contenido_hijo', (
                                            SELECT json_agg(
                                                json_build_object(
													 'id_contenido_hijo', hijo.id_contenido,
                                                    'tipo', hijo.tipo_contenido,
                                                    'titulo', hijo.titulo,
                                                    'fecha_apertura', hijo_td.fecha_apertura,
                                                    'fecha_cierre', hijo_td.fecha_cierre,
													 'tiene_material', EXISTS (
                                                      SELECT 1
                                                      FROM archivo_contenido ac
                                                      WHERE ac.id_contenido = hijo.id_contenido
                                                    )
                                                )
                                            )
                                            FROM contenido_sesion hijo
                                            LEFT JOIN tarea_detalle hijo_td 
                                                ON hijo.id_contenido = hijo_td.id_contenido
                                            WHERE hijo.id_padre = cs.id_contenido
                                        )
                                    ) ORDER BY cs.orden
                                )
                                FROM contenido_sesion cs
                                WHERE cs.id_sesion = sc.id_sesion
                                  AND cs.id_padre IS NULL
                            )
                        ) ORDER BY sc.numero
                    )
                    FROM sesion_clase sc
                    WHERE sc.id_unidad = su.id_unidad
                )
            ) ORDER BY su.orden
        )
    )
    INTO v_resultado
    FROM silabo_unidad su
    INNER JOIN silabo s ON su.id_silabo = s.id_silabo
    WHERE s.id_curso = v_id_curso;

    RETURN v_resultado;

END;
$$ LANGUAGE plpgsql;

