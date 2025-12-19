ALTER TABLE archivo_contenido
ADD COLUMN id_alumno INTEGER;

UPDATE archivo_contenido
SET id_alumno = 1;

ALTER TABLE archivo_contenido
ADD CONSTRAINT fk_archivo_alumno
FOREIGN KEY (id_alumno)
REFERENCES alumno(id_alumno);

ALTER TABLE archivo_contenido
ALTER COLUMN id_alumno SET NOT NULL;

--insertando video para contenido de sesion
INSERT INTO archivo_contenido (id_contenido, nombre, url, extension, peso_mb, id_alumno)
VALUES 
(11, 'grabacion', 'https://www.youtube.com/embed/Qr98YD4bvXE', 'video', 2.0, 1)

--cambiando fecha de apertura para que permita registrar material
UPDATE tarea_detalle
SET fecha_apertura = '2025-12-18 08:00:00';

--actualizacion de funcion para buscar por alumno

CREATE OR REPLACE FUNCTION obtener_silabo_con_sesiones(
    p_cod_curso VARCHAR,
    p_id_alumno INT
)
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
                                                          AND ac.id_alumno = p_id_alumno
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


--nueva funcion para listar cursos
CREATE OR REPLACE FUNCTION obtener_cursos_por_alumno(p_id_alumno INT)
RETURNS TABLE (
    CodCurso VARCHAR,
    DescCurso VARCHAR,
    modalidad VARCHAR,
    idPeriodo INT,
    CodigoPeriodoAcademico VARCHAR,
    Periodo VARCHAR,
    FechaInicio DATE,
    FechaFin DATE,
    grado VARCHAR,
    nivel VARCHAR,
    salon VARCHAR,
    codigo_seccion VARCHAR,
    seccion VARCHAR,
    ciclo VARCHAR,
    nombreDocente TEXT,
    correoDocente VARCHAR,
    porcentaje_avance NUMERIC
)
LANGUAGE plpgsql
AS $$
BEGIN
    RETURN QUERY
    SELECT DISTINCT ON (mc.id_curso)
        c.codigo_curso,
        c.descripcion_curso,
        c.modalidad,
        m.id_periodo,
        COALESCE(sp.codigo_subperiodo, pa.codigo_periodo),
        COALESCE(sp.descripcion_subperiodo, pa.descripcion_periodo),
        COALESCE(sp.fecha_inicio, pa.fecha_inicio),
        COALESCE(sp.fecha_fin, pa.fecha_fin),
        g."DESCRIPCION_GRADO",
        g."NIVEL_EDUCATIVO",
        au.descripcion_aula,
        sec.codigo_seccion,
        sec.descripcion,
        sec.ciclo,
        doc.nombre || ' ' || doc.apellido_paterno || ' ' || doc.apellido_materno,
        doc.correo,
        COALESCE(
        (
            SELECT ROUND(
                (COUNT(DISTINCT ac.id_contenido)::numeric /
                 NULLIF(COUNT(DISTINCT hijos.id_contenido), 0)) * 100,
                2
            )
            FROM silabo s
            JOIN silabo_unidad su ON su.id_silabo = s.id_silabo
            JOIN sesion_clase sc ON sc.id_unidad = su.id_unidad
            JOIN contenido_sesion cs 
                   ON cs.id_sesion = sc.id_sesion
                  AND cs.tipo_contenido ILIKE 'tarea'
                  AND cs.id_padre IS NULL
            JOIN contenido_sesion hijos 
                   ON hijos.id_padre = cs.id_contenido
            LEFT JOIN archivo_contenido ac 
                   ON ac.id_contenido = hijos.id_contenido
                  AND ac.id_alumno = p_id_alumno
            WHERE s.id_curso = mc.id_curso
        ), 0)
    FROM matricula_curso mc
    INNER JOIN matricula m ON mc.id_matricula = m.id_matricula
    INNER JOIN grado g ON m.id_grado = g."ID_GRADO"
    INNER JOIN alumno a ON a.id_alumno = m.id_alumno
    INNER JOIN curso c ON mc.id_curso = c.id_curso
    LEFT JOIN detalleseccionasignada dsa ON dsa.id_seccion = mc.id_seccion
    LEFT JOIN docente doc ON dsa.id_docente = doc.id_docente
    LEFT JOIN seccion sec ON COALESCE(dsa.id_seccion, mc.id_seccion) = sec.id_seccion
    LEFT JOIN aula au ON dsa.id_aula = au.id_aula
    LEFT JOIN LATERAL (
        SELECT *
        FROM subperiodos sp
        WHERE a.tipo_institucion ILIKE 'c'
          AND sp.id_periodo = m.id_periodo
          AND (
              CURRENT_DATE BETWEEN sp.fecha_inicio AND sp.fecha_fin
              OR sp.fecha_inicio > CURRENT_DATE
          )
        ORDER BY sp.fecha_inicio
        LIMIT 1
    ) sp ON TRUE
    LEFT JOIN LATERAL (
        SELECT *
        FROM periodoacademico pa
        WHERE a.tipo_institucion ILIKE 'i'
          AND pa.id_periodo = m.id_periodo
          AND (
              CURRENT_DATE BETWEEN pa.fecha_inicio AND pa.fecha_fin
              OR pa.fecha_inicio > CURRENT_DATE
          )
        ORDER BY pa.fecha_inicio
        LIMIT 1
    ) pa ON TRUE
    WHERE m.id_alumno = p_id_alumno
      AND m.activo = true
    ORDER BY mc.id_curso, dsa.id_detalle;
END;
$$;

--funcion para registrar material
CREATE OR REPLACE FUNCTION insertar_archivo_contenido(
    p_id_contenido INT,
    p_nombre VARCHAR,
    p_url TEXT,
    p_extension VARCHAR,
    p_peso_mb NUMERIC(6,2),
    p_id_alumno INT
)
RETURNS JSON
LANGUAGE plpgsql
AS $$
DECLARE
    v_tenant_id VARCHAR;
    v_existe_alumno BOOLEAN;
    v_existe_tarea BOOLEAN;
    v_fecha_valida BOOLEAN;
    v_existe_entrega BOOLEAN;
    v_id_archivo INT;
BEGIN
    v_tenant_id := current_setting('app.current_tenant', true);

    SELECT EXISTS (
        SELECT 1
        FROM alumno a
        WHERE a.id_alumno = p_id_alumno
          AND a.codigo_sede = v_tenant_id
    )
    INTO v_existe_alumno;

    IF NOT v_existe_alumno THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El alumno no existe o no pertenece a la sede actual',
            'data', NULL
        );
    END IF;

    SELECT EXISTS (
        SELECT 1
        FROM tarea_detalle td
        WHERE td.id_contenido = p_id_contenido
    )
    INTO v_existe_tarea;

    IF NOT v_existe_tarea THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El material no existe o no tiene detalle',
            'data', NULL
        );
    END IF;

    SELECT EXISTS (
        SELECT 1
        FROM tarea_detalle td
        WHERE td.id_contenido = p_id_contenido
          AND CURRENT_TIMESTAMP BETWEEN td.fecha_apertura AND td.fecha_cierre
    )
    INTO v_fecha_valida;

    IF NOT v_fecha_valida THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Vencio el plazo de entrega',
            'data', NULL
        );
    END IF;

    SELECT EXISTS (
        SELECT 1
        FROM archivo_contenido ac
        WHERE ac.id_contenido = p_id_contenido
          AND ac.id_alumno = p_id_alumno
    )
    INTO v_existe_entrega;

    IF v_existe_entrega THEN
        RETURN json_build_object(
            'success', false,
            'message', 'El material ya fue enviado anteriormente',
            'data', NULL
        );
    END IF;

    INSERT INTO archivo_contenido (
        id_contenido,
        nombre,
        url,
        extension,
        peso_mb,
        id_alumno
    )
    VALUES (
        p_id_contenido,
        p_nombre,
        p_url,
        p_extension,
        p_peso_mb,
        p_id_alumno
    )
    RETURNING id_archivo INTO v_id_archivo;


    RETURN json_build_object(
        'success', true,
        'message', 'Material registrado correctamente',
        'data', json_build_object(
            'id_archivo', v_id_archivo,
            'id_contenido', p_id_contenido,
            'id_alumno', p_id_alumno
        )
    );

EXCEPTION
    WHEN others THEN
        RETURN json_build_object(
            'success', false,
            'message', 'Error al registrar material',
            'data', SQLERRM
        );
END;
$$;