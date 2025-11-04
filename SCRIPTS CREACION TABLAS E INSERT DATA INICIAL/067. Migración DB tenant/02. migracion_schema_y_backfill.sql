-- 02_migracion_schema_y_backfill.sql
-- Agregar columna codigo_sede a tablas faltantes, FK y backfill
-- Idempotente y transaccional

BEGIN;

-- Helper: crea FK a sede(codigo_sede) si no existe
DO $$
DECLARE r record; BEGIN
  FOR r IN (
    SELECT t.relname AS table_name, c.conname
    FROM pg_class t
    JOIN pg_namespace n ON n.oid = t.relnamespace AND n.nspname = 'public'
    LEFT JOIN pg_constraint c ON c.conrelid = t.oid AND c.conname = 'fk_codigo_sede_ref_sede'
    WHERE t.relkind = 'r'
  ) LOOP
    IF r.conname IS NULL THEN
      -- se maneja por tabla más abajo
      NULL;
    END IF;
  END LOOP;
END $$;

-- 1) Añadir columna codigo_sede a tablas que no la tienen
--    NOT NULL se aplicará después del backfill

-- curso: tiene id_sede, derivaremos codigo_sede desde sede
ALTER TABLE IF EXISTS public.curso
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- grado_curso: se deriva por el curso
ALTER TABLE IF EXISTS public.grado_curso
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- horario: se deriva desde detalleseccionasignada (no desde grado_curso)
ALTER TABLE IF EXISTS public.horario
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- seccion
ALTER TABLE IF EXISTS public.seccion
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- seccion_cupo
ALTER TABLE IF EXISTS public.seccion_cupo
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- detalleseccionasignada: ya tiene id_sede
ALTER TABLE IF EXISTS public.detalleseccionasignada
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- periodoacademico
ALTER TABLE IF EXISTS public.periodoacademico
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- subperiodos
ALTER TABLE IF EXISTS public.subperiodos
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- asistencias
ALTER TABLE IF EXISTS public.asistencias
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- notas
ALTER TABLE IF EXISTS public.notas
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- matricula_curso
ALTER TABLE IF EXISTS public.matricula_curso
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- obligacion_pagada
ALTER TABLE IF EXISTS public.obligacion_pagada
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- users
ALTER TABLE IF EXISTS public."users"
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- calendario_academico: ahora multi-tenant (sin backfill automático)
ALTER TABLE IF EXISTS public.calendario_academico
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- grado: ahora multi-tenant (catálogo por sede si aplica)
ALTER TABLE IF EXISTS public.grado
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- docente: se deriva desde detalleseccionasignada
ALTER TABLE IF EXISTS public.docente
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- aula: se deriva desde detalleseccionasignada
ALTER TABLE IF EXISTS public.aula
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- docs/eventos (opcional multi-tenant)
ALTER TABLE IF EXISTS public.categoria_documento
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.documentos
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.eventos
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.ubicaciones_evento
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

-- admisión (opcional multi-tenant)
ALTER TABLE IF EXISTS public.postulante
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.competencia
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.criterio_evaluacion
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.estado_competencia
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.examen_generado
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);

ALTER TABLE IF EXISTS public.pregunta
  ADD COLUMN IF NOT EXISTS codigo_sede varchar(255);


-- 2) Backfill de codigo_sede

-- curso: desde id_sede -> sede.codigo_sede
UPDATE public.curso c
SET codigo_sede = s.codigo_sede
FROM public.sede s
WHERE c.id_sede = s.id_sede
  AND (c.codigo_sede IS DISTINCT FROM s.codigo_sede);

-- grado_curso: por curso
UPDATE public.grado_curso gc
SET codigo_sede = c.codigo_sede
FROM public.curso c
WHERE gc.id_curso = c.id_curso
  AND (gc.codigo_sede IS DISTINCT FROM c.codigo_sede);

-- seccion: si existen asignaciones, usar detalleseccionasignada por periodo más reciente
UPDATE public.seccion s
SET codigo_sede = d.codigo_sede
FROM (
  SELECT ds.id_seccion, MAX(ds.id_detalle) AS any_det, MAX(ds.id_sede) AS any_id_sede
  , MAX(se.codigo_sede) FILTER (WHERE se.codigo_sede IS NOT NULL) AS codigo_sede
  FROM public.detalleseccionasignada ds
  LEFT JOIN public.sede se ON se.id_sede = ds.id_sede
  GROUP BY ds.id_seccion
) d
WHERE s.id_seccion = d.id_seccion
  AND (s.codigo_sede IS DISTINCT FROM d.codigo_sede);

-- seccion_cupo: hereda de seccion
UPDATE public.seccion_cupo sc
SET codigo_sede = s.codigo_sede
FROM public.seccion s
WHERE sc.id_seccion = s.id_seccion
  AND (sc.codigo_sede IS DISTINCT FROM s.codigo_sede);

-- detalleseccionasignada: desde id_sede
UPDATE public.detalleseccionasignada d
SET codigo_sede = se.codigo_sede
FROM public.sede se
WHERE d.id_sede = se.id_sede
  AND (d.codigo_sede IS DISTINCT FROM se.codigo_sede);

-- docente: desde detalleseccionasignada (que tiene id_docente)
UPDATE public.docente doc
SET codigo_sede = d.codigo_sede
FROM public.detalleseccionasignada d
WHERE doc.id_docente = d.id_docente
  AND d.codigo_sede IS NOT NULL
  AND (doc.codigo_sede IS DISTINCT FROM d.codigo_sede);

-- aula: desde detalleseccionasignada (que tiene id_aula)
UPDATE public.aula a
SET codigo_sede = d.codigo_sede
FROM public.detalleseccionasignada d
WHERE a.id_aula = d.id_aula
  AND d.codigo_sede IS NOT NULL
  AND (a.codigo_sede IS DISTINCT FROM d.codigo_sede);

-- horario: desde detalleseccionasignada (que tiene id_horario)
-- Nota: debe ejecutarse DESPUÉS del backfill de detalleseccionasignada
UPDATE public.horario h
SET codigo_sede = d.codigo_sede
FROM public.detalleseccionasignada d
WHERE h.id_horario = d.id_horario
  AND (h.codigo_sede IS DISTINCT FROM d.codigo_sede);

-- periodoacademico/subperiodos: si no existe relación directa, se puede usar datos de matricula
UPDATE public.periodoacademico p
SET codigo_sede = m.codigo_sede
FROM (
  SELECT id_periodo, MIN(codigo_sede) AS codigo_sede
  FROM public.matricula
  GROUP BY id_periodo
) m
WHERE p.id_periodo = m.id_periodo
  AND (p.codigo_sede IS DISTINCT FROM m.codigo_sede);

UPDATE public.subperiodos sp
SET codigo_sede = p.codigo_sede
FROM public.periodoacademico p
WHERE sp.id_periodo = p.id_periodo
  AND (sp.codigo_sede IS DISTINCT FROM p.codigo_sede);

-- asistencias: preferir cadena por matricula_curso
UPDATE public.asistencias a
SET codigo_sede = mc.codigo_sede
FROM public.matricula_curso mc
WHERE a.id_matricula_curso = mc.id_matricula_curso
  AND (a.codigo_sede IS DISTINCT FROM mc.codigo_sede);

-- notas: por alumno
UPDATE public.notas n
SET codigo_sede = al.codigo_sede
FROM public.alumno al
WHERE n.id_alumno = al.id_alumno
  AND (n.codigo_sede IS DISTINCT FROM al.codigo_sede);

-- matricula_curso: por matricula
UPDATE public.matricula_curso mc
SET codigo_sede = m.codigo_sede
FROM public.matricula m
WHERE mc.id_matricula = m.id_matricula
  AND (mc.codigo_sede IS DISTINCT FROM m.codigo_sede);

-- obligacion_pagada: por alumno
UPDATE public.obligacion_pagada o
SET codigo_sede = a.codigo_sede
FROM public.alumno a
WHERE o."ID_ALUMNO" = a.id_alumno
  AND (o.codigo_sede IS DISTINCT FROM a.codigo_sede);

-- users: por codigo_sede ya existente o por alumno (dni)
UPDATE public."users" u
SET codigo_sede = COALESCE(u.codigo_sede, a.codigo_sede)
FROM public.alumno a
WHERE a.dni = u.dni_usuario
  AND (u.codigo_sede IS DISTINCT FROM COALESCE(u.codigo_sede, a.codigo_sede));

-- Documentos/Eventos/Postulante/etc.: si se desea multi-tenant, dejar NULL si no hay referencia para asignar manualmente


-- 3) Crear FKs a sede(codigo_sede)
DO $$
BEGIN
  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_curso_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.curso
      ADD CONSTRAINT fk_curso_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_grado_curso_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.grado_curso
      ADD CONSTRAINT fk_grado_curso_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_horario_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.horario
      ADD CONSTRAINT fk_horario_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_seccion_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.seccion
      ADD CONSTRAINT fk_seccion_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_seccion_cupo_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.seccion_cupo
      ADD CONSTRAINT fk_seccion_cupo_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_detalle_asignada_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.detalleseccionasignada
      ADD CONSTRAINT fk_detalle_asignada_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_calendario_academico_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.calendario_academico
      ADD CONSTRAINT fk_calendario_academico_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_grado_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.grado
      ADD CONSTRAINT fk_grado_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_docente_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.docente
      ADD CONSTRAINT fk_docente_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_aula_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.aula
      ADD CONSTRAINT fk_aula_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_periodo_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.periodoacademico
      ADD CONSTRAINT fk_periodo_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_subperiodo_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.subperiodos
      ADD CONSTRAINT fk_subperiodo_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_asistencias_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.asistencias
      ADD CONSTRAINT fk_asistencias_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_notas_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.notas
      ADD CONSTRAINT fk_notas_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_matricula_curso_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.matricula_curso
      ADD CONSTRAINT fk_matricula_curso_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_obligacion_pagada_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.obligacion_pagada
      ADD CONSTRAINT fk_obligacion_pagada_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_users_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public."users"
      ADD CONSTRAINT fk_users_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  -- opcionales
  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_categoria_documento_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.categoria_documento
      ADD CONSTRAINT fk_categoria_documento_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_documentos_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.documentos
      ADD CONSTRAINT fk_documentos_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_eventos_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.eventos
      ADD CONSTRAINT fk_eventos_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_ubic_evento_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.ubicaciones_evento
      ADD CONSTRAINT fk_ubic_evento_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_postulante_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.postulante
      ADD CONSTRAINT fk_postulante_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_competencia_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.competencia
      ADD CONSTRAINT fk_competencia_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_criterio_eval_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.criterio_evaluacion
      ADD CONSTRAINT fk_criterio_eval_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_estado_competencia_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.estado_competencia
      ADD CONSTRAINT fk_estado_competencia_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_examen_generado_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.examen_generado
      ADD CONSTRAINT fk_examen_generado_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;

  PERFORM 1 FROM pg_constraint WHERE conname = 'fk_pregunta_sede_codigo';
  IF NOT FOUND THEN
    ALTER TABLE public.pregunta
      ADD CONSTRAINT fk_pregunta_sede_codigo FOREIGN KEY (codigo_sede) REFERENCES public.sede(codigo_sede);
  END IF;
END $$;


-- 4) Diagnóstico: mostrar tablas con valores NULL antes de aplicar NOT NULL
DO $$
DECLARE
  v_count integer;
  v_tabla text;
BEGIN
  RAISE NOTICE '=== Diagnóstico: Filas con codigo_sede NULL ===';
  FOR v_tabla IN SELECT unnest(ARRAY[
    'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula_curso', 'obligacion_pagada', 'users', 'docente', 'aula',
    'calendario_academico', 'grado'
  ]) LOOP
    EXECUTE format('SELECT COUNT(*) FROM public.%I WHERE codigo_sede IS NULL', v_tabla) INTO v_count;
    IF v_count > 0 THEN
      RAISE NOTICE 'Tabla %: % filas con codigo_sede NULL', v_tabla, v_count;
    END IF;
  END LOOP;
  RAISE NOTICE '=== Fin diagnóstico ===';
END $$;

-- 5) NOT NULL donde sea coherente (tras backfill). Solo se aplica si NO hay valores NULL.
-- Si hay filas sin sede, se dejan NULL para corrección manual y se reporta un NOTICE.

DO $$
DECLARE
  v_count integer;
  v_tabla text;
BEGIN
  -- Lista de tablas a verificar
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
      RAISE NOTICE 'Tabla %: % filas con codigo_sede NULL. Se omite SET NOT NULL. Revisar datos.', v_tabla, v_count;
    END IF;
  END LOOP;
END $$;

COMMIT;


