-- 06_checks_post_migracion.sql
-- Verificaciones de integridad y conteos por tenant tras la migración
-- Script completo para validar toda la implementación multi-tenant

-- Sin transacción: son consultas de verificación

-- ============================================================================
-- 1) Verificar filas con codigo_sede NULL en TODAS las tablas multi-tenant
-- ============================================================================
-- Tablas críticas (deben tener 0 NULLs en productivo)
SELECT 'curso' AS tabla, COUNT(*) AS filas_null FROM public.curso WHERE codigo_sede IS NULL
UNION ALL SELECT 'grado_curso', COUNT(*) FROM public.grado_curso WHERE codigo_sede IS NULL
UNION ALL SELECT 'horario', COUNT(*) FROM public.horario WHERE codigo_sede IS NULL
UNION ALL SELECT 'seccion', COUNT(*) FROM public.seccion WHERE codigo_sede IS NULL
UNION ALL SELECT 'seccion_cupo', COUNT(*) FROM public.seccion_cupo WHERE codigo_sede IS NULL
UNION ALL SELECT 'detalleseccionasignada', COUNT(*) FROM public.detalleseccionasignada WHERE codigo_sede IS NULL
UNION ALL SELECT 'periodoacademico', COUNT(*) FROM public.periodoacademico WHERE codigo_sede IS NULL
UNION ALL SELECT 'subperiodos', COUNT(*) FROM public.subperiodos WHERE codigo_sede IS NULL
UNION ALL SELECT 'asistencias', COUNT(*) FROM public.asistencias WHERE codigo_sede IS NULL
UNION ALL SELECT 'notas', COUNT(*) FROM public.notas WHERE codigo_sede IS NULL
UNION ALL SELECT 'matricula', COUNT(*) FROM public.matricula WHERE codigo_sede IS NULL
UNION ALL SELECT 'matricula_curso', COUNT(*) FROM public.matricula_curso WHERE codigo_sede IS NULL
UNION ALL SELECT 'pagos', COUNT(*) FROM public.pagos WHERE codigo_sede IS NULL
UNION ALL SELECT 'obligacion_pagada', COUNT(*) FROM public.obligacion_pagada WHERE codigo_sede IS NULL
UNION ALL SELECT 'users', COUNT(*) FROM public."users" WHERE codigo_sede IS NULL
UNION ALL SELECT 'docente', COUNT(*) FROM public.docente WHERE codigo_sede IS NULL
UNION ALL SELECT 'aula', COUNT(*) FROM public.aula WHERE codigo_sede IS NULL
UNION ALL SELECT 'calendario_academico', COUNT(*) FROM public.calendario_academico WHERE codigo_sede IS NULL
UNION ALL SELECT 'grado', COUNT(*) FROM public.grado WHERE codigo_sede IS NULL
-- Tablas opcionales (contenidos/admisión)
UNION ALL SELECT 'categoria_documento', COUNT(*) FROM public.categoria_documento WHERE codigo_sede IS NULL
UNION ALL SELECT 'documentos', COUNT(*) FROM public.documentos WHERE codigo_sede IS NULL
UNION ALL SELECT 'eventos', COUNT(*) FROM public.eventos WHERE codigo_sede IS NULL
UNION ALL SELECT 'ubicaciones_evento', COUNT(*) FROM public.ubicaciones_evento WHERE codigo_sede IS NULL
UNION ALL SELECT 'postulante', COUNT(*) FROM public.postulante WHERE codigo_sede IS NULL
UNION ALL SELECT 'competencia', COUNT(*) FROM public.competencia WHERE codigo_sede IS NULL
UNION ALL SELECT 'criterio_evaluacion', COUNT(*) FROM public.criterio_evaluacion WHERE codigo_sede IS NULL
UNION ALL SELECT 'estado_competencia', COUNT(*) FROM public.estado_competencia WHERE codigo_sede IS NULL
UNION ALL SELECT 'examen_generado', COUNT(*) FROM public.examen_generado WHERE codigo_sede IS NULL
UNION ALL SELECT 'pregunta', COUNT(*) FROM public.pregunta WHERE codigo_sede IS NULL
ORDER BY 1;

-- ============================================================================
-- 2) Verificar integridad referencial: codigo_sede debe existir en tabla sede
-- ============================================================================
SELECT 'curso' AS tabla, COUNT(*) AS filas_invalidas
FROM public.curso c
LEFT JOIN public.sede s ON s.codigo_sede = c.codigo_sede
WHERE c.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'grado_curso', COUNT(*) FROM public.grado_curso gc
LEFT JOIN public.sede s ON s.codigo_sede = gc.codigo_sede
WHERE gc.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'horario', COUNT(*) FROM public.horario h
LEFT JOIN public.sede s ON s.codigo_sede = h.codigo_sede
WHERE h.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'seccion', COUNT(*) FROM public.seccion sc
LEFT JOIN public.sede s ON s.codigo_sede = sc.codigo_sede
WHERE sc.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'detalleseccionasignada', COUNT(*) FROM public.detalleseccionasignada d
LEFT JOIN public.sede s ON s.codigo_sede = d.codigo_sede
WHERE d.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'periodoacademico', COUNT(*) FROM public.periodoacademico p
LEFT JOIN public.sede s ON s.codigo_sede = p.codigo_sede
WHERE p.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'subperiodos', COUNT(*) FROM public.subperiodos sp
LEFT JOIN public.sede s ON s.codigo_sede = sp.codigo_sede
WHERE sp.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'asistencias', COUNT(*) FROM public.asistencias a
LEFT JOIN public.sede s ON s.codigo_sede = a.codigo_sede
WHERE a.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'notas', COUNT(*) FROM public.notas n
LEFT JOIN public.sede s ON s.codigo_sede = n.codigo_sede
WHERE n.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'matricula', COUNT(*) FROM public.matricula m
LEFT JOIN public.sede s ON s.codigo_sede = m.codigo_sede
WHERE m.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'matricula_curso', COUNT(*) FROM public.matricula_curso mc
LEFT JOIN public.sede s ON s.codigo_sede = mc.codigo_sede
WHERE mc.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'obligacion_pagada', COUNT(*) FROM public.obligacion_pagada o
LEFT JOIN public.sede s ON s.codigo_sede = o.codigo_sede
WHERE o.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'users', COUNT(*) FROM public."users" u
LEFT JOIN public.sede s ON s.codigo_sede = u.codigo_sede
WHERE u.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'docente', COUNT(*) FROM public.docente doc
LEFT JOIN public.sede s ON s.codigo_sede = doc.codigo_sede
WHERE doc.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'aula', COUNT(*) FROM public.aula a
LEFT JOIN public.sede s ON s.codigo_sede = a.codigo_sede
WHERE a.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'calendario_academico', COUNT(*) FROM public.calendario_academico ca
LEFT JOIN public.sede s ON s.codigo_sede = ca.codigo_sede
WHERE ca.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
UNION ALL
SELECT 'grado', COUNT(*) FROM public.grado g
LEFT JOIN public.sede s ON s.codigo_sede = g.codigo_sede
WHERE g.codigo_sede IS NOT NULL AND s.codigo_sede IS NULL
ORDER BY 1;

-- ============================================================================
-- 3) Conteo de filas por sede para todas las tablas principales
-- ============================================================================
SELECT 'alumno' AS tabla, a.codigo_sede, COUNT(*) AS total_filas FROM public.alumno a GROUP BY 1,2
UNION ALL SELECT 'curso', c.codigo_sede, COUNT(*) FROM public.curso c GROUP BY 1,2
UNION ALL SELECT 'grado_curso', gc.codigo_sede, COUNT(*) FROM public.grado_curso gc GROUP BY 1,2
UNION ALL SELECT 'horario', h.codigo_sede, COUNT(*) FROM public.horario h GROUP BY 1,2
UNION ALL SELECT 'seccion', sc.codigo_sede, COUNT(*) FROM public.seccion sc GROUP BY 1,2
UNION ALL SELECT 'detalleseccionasignada', d.codigo_sede, COUNT(*) FROM public.detalleseccionasignada d GROUP BY 1,2
UNION ALL SELECT 'periodoacademico', p.codigo_sede, COUNT(*) FROM public.periodoacademico p GROUP BY 1,2
UNION ALL SELECT 'subperiodos', sp.codigo_sede, COUNT(*) FROM public.subperiodos sp GROUP BY 1,2
UNION ALL SELECT 'matricula', m.codigo_sede, COUNT(*) FROM public.matricula m GROUP BY 1,2
UNION ALL SELECT 'matricula_curso', mc.codigo_sede, COUNT(*) FROM public.matricula_curso mc GROUP BY 1,2
UNION ALL SELECT 'asistencias', a.codigo_sede, COUNT(*) FROM public.asistencias a GROUP BY 1,2
UNION ALL SELECT 'notas', n.codigo_sede, COUNT(*) FROM public.notas n GROUP BY 1,2
UNION ALL SELECT 'pagos', p2.codigo_sede, COUNT(*) FROM public.pagos p2 GROUP BY 1,2
UNION ALL SELECT 'obligacion_pagada', o.codigo_sede, COUNT(*) FROM public.obligacion_pagada o GROUP BY 1,2
UNION ALL SELECT 'users', u.codigo_sede, COUNT(*) FROM public."users" u GROUP BY 1,2
UNION ALL SELECT 'docente', doc.codigo_sede, COUNT(*) FROM public.docente doc GROUP BY 1,2
UNION ALL SELECT 'aula', a.codigo_sede, COUNT(*) FROM public.aula a GROUP BY 1,2
UNION ALL SELECT 'calendario_academico', ca.codigo_sede, COUNT(*) FROM public.calendario_academico ca GROUP BY 1,2
UNION ALL SELECT 'grado', g.codigo_sede, COUNT(*) FROM public.grado g GROUP BY 1,2
ORDER BY 1, 2;

-- ============================================================================
-- 4) Verificar que las constraints únicas por tenant estén creadas
-- ============================================================================
SELECT 
  conname AS constraint_name,
  conrelid::regclass AS tabla,
  CASE 
    WHEN conname LIKE '%_sede_key' OR conname LIKE '%_sede_unique' THEN 'OK'
    ELSE 'REVISAR'
  END AS estado
FROM pg_constraint
WHERE contype = 'u'
  AND conrelid::regclass::text IN (
    'alumno', 'curso', 'seccion', 'periodoacademico', 'subperiodos',
    'grado_curso', 'detalleseccionasignada', 'users'
  )
ORDER BY 2, 1;

-- ============================================================================
-- 5) Verificar que las FKs a sede(codigo_sede) estén creadas
-- ============================================================================
SELECT 
  conname AS fk_name,
  conrelid::regclass AS tabla_origen,
  confrelid::regclass AS tabla_destino,
  CASE WHEN conname LIKE '%sede_codigo%' THEN 'OK' ELSE 'REVISAR' END AS estado
FROM pg_constraint
WHERE contype = 'f'
  AND confrelid = 'public.sede'::regclass
ORDER BY 2;

-- ============================================================================
-- 6) Verificar que RLS esté habilitado en todas las tablas multi-tenant
-- ============================================================================
SELECT 
  schemaname,
  tablename,
  rowsecurity AS rls_habilitado,
  CASE WHEN rowsecurity THEN 'OK' ELSE 'FALTA' END AS estado
FROM pg_tables
WHERE schemaname = 'public'
  AND tablename IN (
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada',
    'users', 'docente', 'aula', 'calendario_academico', 'grado', 'categoria_documento', 'documentos', 'eventos', 'ubicaciones_evento',
    'postulante', 'competencia', 'criterio_evaluacion', 'estado_competencia',
    'examen_generado', 'pregunta', 'sede'
  )
ORDER BY tablename;

-- ============================================================================
-- 7) Verificar que las políticas RLS estén creadas (SELECT, INSERT, UPDATE, DELETE)
-- ============================================================================
SELECT 
  schemaname,
  tablename,
  policyname,
  cmd AS operacion,
  CASE 
    WHEN policyname LIKE 'rls_%' THEN 'OK'
    ELSE 'REVISAR'
  END AS estado
FROM pg_policies
WHERE schemaname = 'public'
  AND tablename IN (
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada',
    'users', 'sede'
  )
ORDER BY tablename, cmd;

-- ============================================================================
-- 8) Conteo de políticas RLS por tabla (debe tener al menos 4: SELECT, INSERT, UPDATE, DELETE)
-- ============================================================================
SELECT 
  tablename,
  COUNT(*) AS total_politicas,
  COUNT(*) FILTER (WHERE cmd = 'SELECT') AS select_policy,
  COUNT(*) FILTER (WHERE cmd = 'INSERT') AS insert_policy,
  COUNT(*) FILTER (WHERE cmd = 'UPDATE') AS update_policy,
  COUNT(*) FILTER (WHERE cmd = 'DELETE') AS delete_policy,
  CASE 
    WHEN COUNT(*) >= 4 THEN 'OK'
    ELSE 'FALTAN POLITICAS'
  END AS estado
FROM pg_policies
WHERE schemaname = 'public'
  AND tablename IN (
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada',
    'users', 'docente', 'aula', 'calendario_academico', 'grado'
  )
GROUP BY tablename
ORDER BY tablename;

-- ============================================================================
-- 9) Verificar función app.set_tenant
-- ============================================================================
SELECT 
  routine_name,
  routine_type,
  CASE WHEN routine_name = 'set_tenant' THEN 'OK' ELSE 'FALTA' END AS estado
FROM information_schema.routines
WHERE routine_schema = 'app'
  AND routine_name = 'set_tenant';

-- ============================================================================
-- 10) Resumen: Estado de codigo_sede en TODAS las tablas
-- Separado entre: obligatorias (multi-tenant), opcionales, y compartidas
-- ============================================================================

-- 10a) Tablas que DEBEN tener codigo_sede (multi-tenant obligatorio)
SELECT 
  t.table_name,
  CASE 
    WHEN c.column_name IS NOT NULL THEN 'TIENE codigo_sede ✓'
    ELSE 'FALTA codigo_sede ✗'
  END AS estado,
  'OBLIGATORIO (multi-tenant)' AS tipo
FROM information_schema.tables t
LEFT JOIN information_schema.columns c 
  ON c.table_schema = t.table_schema 
  AND c.table_name = t.table_name 
  AND c.column_name = 'codigo_sede'
WHERE t.table_schema = 'public'
  AND t.table_type = 'BASE TABLE'
  AND t.table_name IN (
    -- Tablas núcleo académicas (deben ser multi-tenant)
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada',
    'users', 'docente', 'aula', 'sede'
  )
ORDER BY t.table_name;

-- 10b) Tablas con codigo_sede OPCIONAL (pueden ser multi-tenant o compartidas)
SELECT 
  t.table_name,
  CASE 
    WHEN c.column_name IS NOT NULL THEN 'TIENE codigo_sede (multi-tenant)'
    ELSE 'NO TIENE codigo_sede (compartida/global)'
  END AS estado,
  'OPCIONAL' AS tipo
FROM information_schema.tables t
LEFT JOIN information_schema.columns c 
  ON c.table_schema = t.table_schema 
  AND c.table_name = t.table_name 
  AND c.column_name = 'codigo_sede'
WHERE t.table_schema = 'public'
  AND t.table_type = 'BASE TABLE'
  AND t.table_name IN (
    -- Tablas que pueden ser multi-tenant o compartidas según diseño
    'categoria_documento', 'documentos', 'eventos', 'ubicaciones_evento',
    'postulante', 'competencia', 'criterio_evaluacion', 'estado_competencia',
    'examen_generado', 'pregunta'
  )
ORDER BY t.table_name;

-- 10c) Tablas que NO tienen codigo_sede (probablemente compartidas o maestros)
SELECT 
  t.table_name,
  'NO TIENE codigo_sede (compartida/maestro)' AS estado,
  'COMPARTIDA' AS tipo
FROM information_schema.tables t
LEFT JOIN information_schema.columns c 
  ON c.table_schema = t.table_schema 
  AND c.table_name = t.table_name 
  AND c.column_name = 'codigo_sede'
WHERE t.table_schema = 'public'
  AND t.table_type = 'BASE TABLE'
  AND c.column_name IS NULL
  AND t.table_name NOT IN ('schema_migrations') -- Excluir tablas de sistema
  AND t.table_name NOT IN (
    -- Excluir las que ya están en las listas anteriores
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada',
    'users', 'docente', 'aula', 'sede',
    'categoria_documento', 'documentos', 'eventos', 'ubicaciones_evento',
    'postulante', 'competencia', 'criterio_evaluacion', 'estado_competencia',
    'examen_generado', 'pregunta'
  )
ORDER BY t.table_name;

-- ============================================================================
-- 11) PRUEBA MANUAL DE RLS (ejecutar después de los scripts, descomentar para probar)
-- ============================================================================
-- Paso 1: Establecer tenant
-- SELECT app.set_tenant('SEDE001');
--
-- Paso 2: Verificar que solo se ven datos de ese tenant
-- SELECT codigo_sede, COUNT(*) FROM public.alumno GROUP BY codigo_sede;
-- SELECT codigo_sede, COUNT(*) FROM public.curso GROUP BY codigo_sede;
--
-- Paso 3: Intentar insertar con codigo_sede diferente (debe fallar o ajustarse automáticamente)
-- INSERT INTO public.curso (codigo_curso, descripcion_curso, codigo_sede) 
-- VALUES ('TEST001', 'Curso Test', 'SEDE_DIFERENTE');


