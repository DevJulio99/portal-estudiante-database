-- =====================================================
-- SCRIPT PARA CORREGIR DATA DE MATRÍCULA
-- =====================================================

-- 1. CORREGIR FECHAS Y ACTUALIZAR A MATRÍCULAS 2025
-- =====================================================

-- Actualizar todas las matrículas activas como correspondientes al año 2025
UPDATE matricula 
SET fecha_inicio = '2025-01-01',
    fecha_fin = '2025-12-31',
    fecha_matricula = CURRENT_TIMESTAMP,
    usuario_registro = 'SISTEMA'
WHERE activo = true;

-- Verificar corrección de fechas
SELECT 
    id_matricula,
    fecha_inicio,
    fecha_fin,
    fecha_matricula,
    usuario_registro,
    CASE 
        WHEN fecha_fin < fecha_inicio THEN 'INCORRECTO'
        WHEN fecha_inicio = '2025-01-01' AND fecha_fin = '2025-12-31' THEN 'ACTUALIZADO 2025'
        ELSE 'OTRO'
    END as estado_fechas
FROM matricula
WHERE activo = true
ORDER BY id_matricula;

-- 2. ASIGNAR PERÍODO ACADÉMICO ANUAL 2025
-- =====================================================

-- Asignar el período académico anual 2025 a todas las matrículas activas
UPDATE matricula 
SET id_periodo = (
    SELECT id_periodo 
    FROM periodoacademico 
    WHERE tipo_periodo = 'Año' 
    AND anio = 2025
    LIMIT 1
)
WHERE activo = true;

-- Verificar asignación de períodos
SELECT 
    m.id_matricula,
    m.fecha_inicio,
    p.codigo_periodo,
    p.descripcion_periodo,
    p.anio,
    CASE 
        WHEN m.id_periodo IS NULL THEN 'SIN PERÍODO'
        WHEN p.anio = 2025 THEN 'PERÍODO 2025 ASIGNADO'
        ELSE 'OTRO PERÍODO'
    END as estado_periodo
FROM matricula m
LEFT JOIN periodoacademico p ON m.id_periodo = p.id_periodo
WHERE m.activo = true
ORDER BY m.id_matricula;

-- 3. ASIGNAR GRADOS BASADOS EN ALUMNOS
-- =====================================================

-- Si los alumnos ya tienen grado asignado, copiarlo a matrícula
UPDATE matricula 
SET id_grado = a.id_grado
FROM alumno a
WHERE matricula.id_alumno = a.id_alumno
AND matricula.id_grado IS NULL
AND a.id_grado IS NOT NULL;

-- Verificar asignación de grados
SELECT 
    m.id_matricula,
    a.nombre || ' ' || a.apellido_paterno as nombre_alumno,
    m.id_grado,
    g."DESCRIPCION_GRADO",
    CASE 
        WHEN m.id_grado IS NULL THEN 'SIN GRADO'
        ELSE 'CON GRADO'
    END as estado_grado
FROM matricula m
INNER JOIN alumno a ON m.id_alumno = a.id_alumno
LEFT JOIN grado g ON m.id_grado = g."ID_GRADO"
ORDER BY m.id_matricula;

-- 4. ASIGNAR SEDES BASADAS EN ALUMNOS
-- =====================================================

-- Si los alumnos ya tienen sede asignada, copiarla a matrícula
UPDATE matricula 
SET codigo_sede = a.codigo_sede
FROM alumno a
WHERE matricula.id_alumno = a.id_alumno
AND matricula.codigo_sede IS NULL
AND a.codigo_sede IS NOT NULL;

-- Verificar asignación de sedes
SELECT 
    m.id_matricula,
    a.nombre || ' ' || a.apellido_paterno as nombre_alumno,
    m.codigo_sede,
    s.descripcion_sede,
    CASE 
        WHEN m.codigo_sede IS NULL THEN 'SIN SEDE'
        ELSE 'CON SEDE'
    END as estado_sede
FROM matricula m
INNER JOIN alumno a ON m.id_alumno = a.id_alumno
LEFT JOIN sede s ON m.codigo_sede = s.codigo_sede
ORDER BY m.id_matricula;

-- 5. REPORTE FINAL DE CORRECCIONES
-- =====================================================

SELECT 
    'RESUMEN DE CORRECCIONES' as titulo,
    COUNT(*) as total_matriculas,
    COUNT(CASE WHEN id_periodo IS NOT NULL THEN 1 END) as con_periodo,
    COUNT(CASE WHEN id_grado IS NOT NULL THEN 1 END) as con_grado,
    COUNT(CASE WHEN codigo_sede IS NOT NULL THEN 1 END) as con_sede,
    COUNT(CASE WHEN fecha_fin >= fecha_inicio THEN 1 END) as fechas_correctas
FROM matricula;

-- 6. FUNCIÓN PARA VALIDAR MATRÍCULAS
-- =====================================================

CREATE OR REPLACE FUNCTION validar_matriculas()
RETURNS TABLE (
    id_matricula INTEGER,
    nombre_alumno VARCHAR,
    problemas TEXT[]
) AS $$
DECLARE
    problemas TEXT[];
BEGIN
    RETURN QUERY
    SELECT 
        m.id_matricula,
        a.nombre || ' ' || a.apellido_paterno as nombre_alumno,
        ARRAY_AGG(
            CASE 
                WHEN m.id_periodo IS NULL THEN 'Sin período académico'
                WHEN m.id_grado IS NULL THEN 'Sin grado asignado'
                WHEN m.codigo_sede IS NULL THEN 'Sin sede asignada'
                WHEN m.fecha_fin < m.fecha_inicio THEN 'Fechas incorrectas'
                WHEN m.fecha_matricula IS NULL THEN 'Sin fecha de matrícula'
                ELSE NULL
            END
        ) FILTER (WHERE CASE 
            WHEN m.id_periodo IS NULL THEN 'Sin período académico'
            WHEN m.id_grado IS NULL THEN 'Sin grado asignado'
            WHEN m.codigo_sede IS NULL THEN 'Sin sede asignada'
            WHEN m.fecha_fin < m.fecha_inicio THEN 'Fechas incorrectas'
            WHEN m.fecha_matricula IS NULL THEN 'Sin fecha de matrícula'
            ELSE NULL
        END IS NOT NULL) as problemas
    FROM matricula m
    INNER JOIN alumno a ON m.id_alumno = a.id_alumno
    WHERE m.activo = true
    GROUP BY m.id_matricula, a.nombre, a.apellido_paterno
    HAVING ARRAY_AGG(
        CASE 
            WHEN m.id_periodo IS NULL THEN 'Sin período académico'
            WHEN m.id_grado IS NULL THEN 'Sin grado asignado'
            WHEN m.codigo_sede IS NULL THEN 'Sin sede asignada'
            WHEN m.fecha_fin < m.fecha_inicio THEN 'Fechas incorrectas'
            WHEN m.fecha_matricula IS NULL THEN 'Sin fecha de matrícula'
            ELSE NULL
        END
    ) FILTER (WHERE CASE 
        WHEN m.id_periodo IS NULL THEN 'Sin período académico'
        WHEN m.id_grado IS NULL THEN 'Sin grado asignado'
        WHEN m.codigo_sede IS NULL THEN 'Sin sede asignada'
        WHEN m.fecha_fin < m.fecha_inicio THEN 'Fechas incorrectas'
        WHEN m.fecha_matricula IS NULL THEN 'Sin fecha de matrícula'
        ELSE NULL
    END IS NOT NULL) IS NOT NULL
    ORDER BY m.id_matricula;
END;
$$ LANGUAGE plpgsql;

-- 7. CONSULTAS DE VERIFICACIÓN
-- =====================================================

-- Ver matrículas con problemas
-- SELECT * FROM validar_matriculas();

-- Ver matrículas corregidas
-- SELECT 
--     m.id_matricula,
--     a.nombre || ' ' || a.apellido_paterno as nombre_alumno,
--     p.descripcion_periodo,
--     g."DESCRIPCION_GRADO",
--     s.descripcion_sede,
--     m.fecha_inicio,
--     m.fecha_fin,
--     m.estado_matricula
-- FROM matricula m
-- INNER JOIN alumno a ON m.id_alumno = a.id_alumno
-- LEFT JOIN periodoacademico p ON m.id_periodo = p.id_periodo
-- LEFT JOIN grado g ON m.id_grado = g."ID_GRADO"
-- LEFT JOIN sede s ON m.codigo_sede = s.codigo_sede
-- WHERE m.activo = true
-- ORDER BY m.id_matricula;

-- =====================================================
-- FIN DEL SCRIPT
-- =====================================================
