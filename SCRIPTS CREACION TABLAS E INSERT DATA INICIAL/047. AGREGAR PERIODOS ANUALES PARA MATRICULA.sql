-- =====================================================
-- SCRIPT PARA AGREGAR PERÍODOS ANUALES A PERIODOACADEMICO
-- =====================================================

-- Agregar períodos anuales para matrícula
INSERT INTO periodoacademico (
    codigo_periodo, 
    descripcion_periodo, 
    tipo_periodo, 
    estado_periodo, 
    fecha_inicio, 
    fecha_fin, 
    anio
) VALUES 
('AÑO-2024', 'Año Académico 2024', 'Año', 'Activo', '2024-01-01', '2024-12-31', 2024),
('AÑO-2025', 'Año Académico 2025', 'Año', 'Activo', '2025-01-01', '2025-12-31', 2025),
('AÑO-2026', 'Año Académico 2026', 'Año', 'Activo', '2026-01-01', '2026-12-31', 2026),
('AÑO-2027', 'Año Académico 2027', 'Año', 'Activo', '2027-01-01', '2027-12-31', 2027),
('AÑO-2028', 'Año Académico 2028', 'Año', 'Activo', '2028-01-01', '2028-12-31', 2028)
ON CONFLICT (codigo_periodo) DO NOTHING;

-- Verificar que se insertaron correctamente
SELECT 
    id_periodo,
    codigo_periodo,
    descripcion_periodo,
    tipo_periodo,
    anio,
    fecha_inicio,
    fecha_fin
FROM periodoacademico 
WHERE tipo_periodo = 'Año'
ORDER BY anio;

-- Función para realizar matrícula anual
CREATE OR REPLACE FUNCTION realizar_matricula_anual(
    p_id_alumno INTEGER,
    p_anio INTEGER,
    p_id_grado INTEGER,
    p_codigo_sede VARCHAR,
    p_tipo_matricula VARCHAR DEFAULT 'Regular',
    p_estado_matricula VARCHAR DEFAULT 'Activa',
    p_observaciones TEXT DEFAULT NULL,
    p_usuario_registro VARCHAR DEFAULT 'SISTEMA'
)
RETURNS JSON AS $$
DECLARE
    id_periodo_anual INTEGER;
    resultado JSON;
BEGIN
    -- Buscar el período anual
    SELECT id_periodo INTO id_periodo_anual
    FROM periodoacademico 
    WHERE tipo_periodo = 'Año' 
    AND anio = p_anio
    AND estado_periodo = 'Activo';
    
    IF id_periodo_anual IS NULL THEN
        RETURN json_build_object(
            'success', false,
            'message', 'No existe período académico anual para el año ' || p_anio,
            'id_matricula', NULL
        );
    END IF;
    
    -- Realizar la matrícula usando la función existente
    SELECT realizar_matricula(
        p_id_alumno, 
        id_periodo_anual, 
        p_id_grado, 
        p_codigo_sede, 
        p_tipo_matricula, 
        p_estado_matricula,
        p_observaciones,
        p_usuario_registro
    ) INTO resultado;
    
    RETURN resultado;
END;
$$ LANGUAGE plpgsql;

-- Función para listar períodos por tipo
CREATE OR REPLACE FUNCTION listar_periodos_por_tipo(
    p_tipo_periodo VARCHAR,
    p_anio INTEGER DEFAULT NULL
)
RETURNS TABLE (
    id_periodo INTEGER,
    codigo_periodo VARCHAR,
    descripcion_periodo VARCHAR,
    tipo_periodo VARCHAR,
    estado_periodo VARCHAR,
    fecha_inicio DATE,
    fecha_fin DATE,
    anio INTEGER
) AS $$
BEGIN
    RETURN QUERY
    SELECT 
        p.id_periodo,
        p.codigo_periodo,
        p.descripcion_periodo,
        p.tipo_periodo,
        p.estado_periodo,
        p.fecha_inicio,
        p.fecha_fin,
        p.anio
    FROM periodoacademico p
    WHERE p.tipo_periodo = p_tipo_periodo
    AND p.estado_periodo = 'Activo'
    AND (p_anio IS NULL OR p.anio = p_anio)
    ORDER BY p.anio, p.fecha_inicio;
END;
$$ LANGUAGE plpgsql;

-- Ejemplos de uso:
-- =====================================================

-- 1. Listar períodos anuales disponibles
-- SELECT * FROM listar_periodos_por_tipo('Año');

-- 2. Listar períodos bimestrales de 2025
-- SELECT * FROM listar_periodos_por_tipo('Bimestre', 2025);

-- 3. Realizar matrícula anual para 2025
-- SELECT realizar_matricula_anual(1, 2025, 3, 'SEDE001', 'Regular', 'Activa');

-- 4. Verificar matrículas por año
-- SELECT 
--     m.id_matricula,
--     a.nombre || ' ' || a.apellido_paterno as nombre_completo,
--     p.descripcion_periodo,
--     m.fecha_matricula,
--     m.estado_matricula
-- FROM matricula m
-- INNER JOIN alumno a ON m.id_alumno = a.id_alumno
-- INNER JOIN periodoacademico p ON m.id_periodo = p.id_periodo
-- WHERE p.tipo_periodo = 'Año'
-- AND p.anio = 2025;

-- =====================================================
-- FIN DEL SCRIPT
-- =====================================================
