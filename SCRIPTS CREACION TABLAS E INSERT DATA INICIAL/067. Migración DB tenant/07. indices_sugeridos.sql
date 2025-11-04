-- 05_indices_sugeridos.sql
-- Índices recomendados para desempeño en filtros por tenant y búsquedas comunes
-- Nota: Los índices se crean solo si no existen y si las columnas existen

BEGIN;

-- Limpiar índices huérfanos que referencien columnas que ya no existen
-- (por ejemplo, si había un índice sobre horario.id_grado_curso que ya no existe)
DO $$
DECLARE
  idx_record record;
  idx_def text;
BEGIN
  -- Buscar índices que puedan tener problemas con columnas inexistentes
  -- Específicamente buscar índices en horario que mencionen grado_curso
  FOR idx_record IN 
    SELECT indexname, indexdef
    FROM pg_indexes 
    WHERE schemaname = 'public' 
      AND (
        (tablename = 'horario' AND (indexname LIKE '%grado_curso%' OR indexdef LIKE '%id_grado_curso%'))
        OR (indexdef LIKE '%id_grado_curso%' AND tablename = 'horario')
      )
  LOOP
    BEGIN
      EXECUTE format('DROP INDEX IF EXISTS public.%I CASCADE', idx_record.indexname);
      RAISE NOTICE 'Índice huérfano eliminado: % (definición: %)', idx_record.indexname, idx_record.indexdef;
    EXCEPTION WHEN OTHERS THEN
      RAISE NOTICE 'No se pudo eliminar índice %: %', idx_record.indexname, SQLERRM;
    END;
  END LOOP;
END $$;

-- Índices compuestos (codigo_sede, clave_natural) y sólo codigo_sede cuando aplique

-- alumno
CREATE INDEX IF NOT EXISTS ix_alumno_sede ON public.alumno (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_alumno_sede_dni ON public.alumno (codigo_sede, dni);
CREATE INDEX IF NOT EXISTS ix_alumno_sede_codigo ON public.alumno (codigo_sede, codigo_alumno);

-- curso
CREATE INDEX IF NOT EXISTS ix_curso_sede ON public.curso (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_curso_sede_codigo ON public.curso (codigo_sede, codigo_curso);

-- grado_curso
CREATE INDEX IF NOT EXISTS ix_grado_curso_sede ON public.grado_curso (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_grado_curso_sede_grado_curso ON public.grado_curso (codigo_sede, "ID_GRADO", id_curso);

-- horario
CREATE INDEX IF NOT EXISTS ix_horario_sede ON public.horario (codigo_sede);
-- Nota: índice sobre id_grado_curso removido porque esa columna ya no existe en horario

-- seccion
CREATE INDEX IF NOT EXISTS ix_seccion_sede ON public.seccion (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_seccion_sede_codigo ON public.seccion (codigo_sede, codigo_seccion);

-- seccion_cupo
CREATE INDEX IF NOT EXISTS ix_seccion_cupo_sede ON public.seccion_cupo (codigo_sede);

-- detalleseccionasignada
CREATE INDEX IF NOT EXISTS ix_detalle_asignada_sede ON public.detalleseccionasignada (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_detalle_asignada_keys ON public.detalleseccionasignada (codigo_sede, id_curso, id_seccion, id_periodo);

-- periodoacademico / subperiodos
CREATE INDEX IF NOT EXISTS ix_periodo_sede ON public.periodoacademico (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_periodo_sede_codigo ON public.periodoacademico (codigo_sede, codigo_periodo);
CREATE INDEX IF NOT EXISTS ix_subperiodo_sede ON public.subperiodos (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_subperiodo_sede_codigo ON public.subperiodos (codigo_sede, codigo_subperiodo);

-- asistencias
CREATE INDEX IF NOT EXISTS ix_asistencias_sede ON public.asistencias (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_asistencias_keys ON public.asistencias (codigo_sede, id_matricula_curso);

-- notas
CREATE INDEX IF NOT EXISTS ix_notas_sede ON public.notas (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_notas_keys ON public.notas (codigo_sede, id_alumno, id_curso, id_periodo, id_subperiodo);

-- matricula / matricula_curso
CREATE INDEX IF NOT EXISTS ix_matricula_sede ON public.matricula (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_matricula_curso_sede ON public.matricula_curso (codigo_sede);

-- pagos / obligacion_pagada
CREATE INDEX IF NOT EXISTS ix_pagos_sede ON public.pagos (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_obligacion_pagada_sede ON public.obligacion_pagada (codigo_sede);

-- users
CREATE INDEX IF NOT EXISTS ix_users_sede ON public."users" (codigo_sede);

-- calendario_academico
CREATE INDEX IF NOT EXISTS ix_calendario_academico_sede ON public.calendario_academico (codigo_sede);

-- grado
CREATE INDEX IF NOT EXISTS ix_grado_sede ON public.grado (codigo_sede);

-- docente
CREATE INDEX IF NOT EXISTS ix_docente_sede ON public.docente (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_docente_sede_codigo ON public.docente (codigo_sede, codigo_docente);

-- aula
CREATE INDEX IF NOT EXISTS ix_aula_sede ON public.aula (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_aula_sede_codigo ON public.aula (codigo_sede, codigo_aula);

-- contenidos y admisión (si multi-tenant)
CREATE INDEX IF NOT EXISTS ix_categoria_documento_sede ON public.categoria_documento (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_documentos_sede ON public.documentos (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_eventos_sede ON public.eventos (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_ubicaciones_evento_sede ON public.ubicaciones_evento (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_postulante_sede ON public.postulante (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_competencia_sede ON public.competencia (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_criterio_evaluacion_sede ON public.criterio_evaluacion (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_estado_competencia_sede ON public.estado_competencia (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_examen_generado_sede ON public.examen_generado (codigo_sede);
CREATE INDEX IF NOT EXISTS ix_pregunta_sede ON public.pregunta (codigo_sede);

COMMIT;


