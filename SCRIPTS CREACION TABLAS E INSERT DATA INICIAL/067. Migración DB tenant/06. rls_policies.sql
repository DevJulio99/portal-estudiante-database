-- 04_rls_policies.sql
-- Habilitar RLS y crear políticas por tenant basadas en app.current_tenant

BEGIN;

-- Helper: crea políticas CRUD estándar por tenant
-- Nota: usar nombre de política estable para idempotencia

-- Lista de tablas multi-tenant (todas tienen columna codigo_sede)
-- alumno, curso, grado_curso, horario, seccion, seccion_cupo, detalleseccionasignada,
-- periodoacademico, subperiodos, asistencias, notas, matricula, matricula_curso, pagos,
-- obligacion_pagada, users, categoria_documento, documentos, eventos, ubicaciones_evento,
-- postulante, competencia, criterio_evaluacion, estado_competencia, examen_generado, pregunta

-- Función auxiliar para construir la condición
-- condición base usada en todas las políticas
-- codigo_sede = current_setting('app.current_tenant', true)

-- Habilitar RLS + FORZAR en cada tabla y crear políticas

-- 1) Tablas núcleo académicas
DO $$
DECLARE 
  r text;
  v_policy_name text;
  v_exists boolean;
BEGIN
  FOR r IN SELECT unnest(ARRAY[
    'alumno', 'curso', 'grado_curso', 'horario', 'seccion', 'seccion_cupo',
    'detalleseccionasignada', 'periodoacademico', 'subperiodos', 'asistencias',
    'notas', 'matricula', 'matricula_curso', 'pagos', 'obligacion_pagada', 'users',
    'docente', 'aula', 'calendario_academico', 'grado', 'categoria_documento', 'documentos', 'eventos', 'ubicaciones_evento', 'postulante',
    'competencia', 'criterio_evaluacion', 'estado_competencia', 'examen_generado', 'pregunta'
  ]) LOOP
    EXECUTE format('ALTER TABLE public.%I ENABLE ROW LEVEL SECURITY', r);
    EXECUTE format('ALTER TABLE public.%I FORCE ROW LEVEL SECURITY', r);

    -- SELECT
    v_policy_name := 'rls_' || r || '_select';
    SELECT EXISTS (
      SELECT 1 FROM pg_policies
      WHERE schemaname = 'public' AND tablename = r AND policyname = v_policy_name
    ) INTO v_exists;
    
    IF NOT v_exists THEN
      EXECUTE format(
        'CREATE POLICY rls_%I_select ON public.%I FOR SELECT USING (codigo_sede = current_setting(''app.current_tenant'', true))',
        r, r
      );
    END IF;

    -- INSERT
    v_policy_name := 'rls_' || r || '_insert';
    SELECT EXISTS (
      SELECT 1 FROM pg_policies
      WHERE schemaname = 'public' AND tablename = r AND policyname = v_policy_name
    ) INTO v_exists;
    
    IF NOT v_exists THEN
      EXECUTE format(
        'CREATE POLICY rls_%I_insert ON public.%I FOR INSERT WITH CHECK (codigo_sede = current_setting(''app.current_tenant'', true))',
        r, r
      );
    END IF;

    -- UPDATE
    v_policy_name := 'rls_' || r || '_update';
    SELECT EXISTS (
      SELECT 1 FROM pg_policies
      WHERE schemaname = 'public' AND tablename = r AND policyname = v_policy_name
    ) INTO v_exists;
    
    IF NOT v_exists THEN
      EXECUTE format(
        'CREATE POLICY rls_%I_update ON public.%I FOR UPDATE USING (codigo_sede = current_setting(''app.current_tenant'', true)) WITH CHECK (codigo_sede = current_setting(''app.current_tenant'', true))',
        r, r
      );
    END IF;

    -- DELETE
    v_policy_name := 'rls_' || r || '_delete';
    SELECT EXISTS (
      SELECT 1 FROM pg_policies
      WHERE schemaname = 'public' AND tablename = r AND policyname = v_policy_name
    ) INTO v_exists;
    
    IF NOT v_exists THEN
      EXECUTE format(
        'CREATE POLICY rls_%I_delete ON public.%I FOR DELETE USING (codigo_sede = current_setting(''app.current_tenant'', true))',
        r, r
      );
    END IF;
  END LOOP;
END $$;

-- 2) Tabla sede: permitir solo ver/usar su propia sede
ALTER TABLE public.sede ENABLE ROW LEVEL SECURITY;
ALTER TABLE public.sede FORCE ROW LEVEL SECURITY;

DO $$
BEGIN
  IF NOT EXISTS (
    SELECT 1 FROM pg_policies WHERE schemaname='public' AND tablename='sede' AND policyname='rls_sede_select'
  ) THEN
    CREATE POLICY rls_sede_select ON public.sede FOR SELECT
      USING (codigo_sede = current_setting('app.current_tenant', true));
  END IF;
END $$;

COMMIT;


