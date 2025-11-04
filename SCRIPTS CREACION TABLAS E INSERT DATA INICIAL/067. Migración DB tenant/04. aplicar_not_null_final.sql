-- 08_aplicar_not_null_final.sql
-- Re-ejecutar SET NOT NULL después de la asignación manual de codigo_sede
-- EJECUTAR DESPUÉS del script 07_asignacion_manual_codigo_sede.sql

BEGIN;

-- Aplicar NOT NULL condicionalmente (solo si no hay NULLs)
DO $$
DECLARE
  v_count integer;
  v_tabla text;
BEGIN
  FOR v_tabla IN SELECT unnest(ARRAY[
    'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula_curso', 'obligacion_pagada', 'users', 'docente', 'aula',
    'calendario_academico', 'grado'
  ]) LOOP
    EXECUTE format('SELECT COUNT(*) FROM public.%I WHERE codigo_sede IS NULL', v_tabla) INTO v_count;
    
    IF v_count = 0 THEN
      EXECUTE format('ALTER TABLE public.%I ALTER COLUMN codigo_sede SET NOT NULL', v_tabla);
      RAISE NOTICE 'Tabla %: NOT NULL aplicado correctamente', v_tabla;
    ELSE
      RAISE WARNING 'Tabla %: % filas con codigo_sede NULL. Se omite SET NOT NULL. Revisar datos.', v_tabla, v_count;
    END IF;
  END LOOP;
END $$;

COMMIT;

