-- 03_uniques_por_tenant.sql
-- Rehacer constraints únicas para que sean por tenant usando codigo_sede
-- Idempotente donde es posible; algunas operaciones requieren verificar existencia

BEGIN;

-- alumno: (codigo_alumno) y (dni) deben ser únicos por sede
DO $$
DECLARE
  r record;
  v_count integer;
BEGIN
  -- Eliminar codigo_alumno_key si existe
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'alumno_codigo_alumno_key') THEN
    ALTER TABLE public.alumno DROP CONSTRAINT alumno_codigo_alumno_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'alumno_codigo_alumno_sede_key') THEN
    ALTER TABLE public.alumno ADD CONSTRAINT alumno_codigo_alumno_sede_key UNIQUE (codigo_sede, codigo_alumno);
  END IF;

  -- Para dni_unique: primero eliminar FK que depende de ella, luego la constraint, luego recrear todo
  -- IMPORTANTE: La FK debe eliminarse ANTES de la constraint unique
  -- Eliminar FK explícitamente (si existe)
  IF EXISTS (
    SELECT 1 FROM pg_constraint 
    WHERE conname = 'fk_dni_usuario'
  ) THEN
    ALTER TABLE public."users" DROP CONSTRAINT IF EXISTS fk_dni_usuario;
    RAISE NOTICE 'FK fk_dni_usuario eliminada';
  END IF;

  -- Ahora sí podemos eliminar la constraint unique
  -- Usar CASCADE directamente para eliminar todas las dependencias (índices, FKs, etc.)
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'alumno_dni_unique') THEN
    ALTER TABLE public.alumno DROP CONSTRAINT alumno_dni_unique CASCADE;
    RAISE NOTICE 'Constraint alumno_dni_unique eliminada (con CASCADE para dependencias)';
  END IF;
  
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'alumno_dni_sede_unique') THEN
    ALTER TABLE public.alumno ADD CONSTRAINT alumno_dni_sede_unique UNIQUE (codigo_sede, dni);
  END IF;

  -- Antes de recrear la FK: corregir codigo_sede en users para que coincida con el del alumno
  -- Si un usuario tiene dni_usuario que existe en alumno pero con codigo_sede diferente, corregirlo
  UPDATE public."users" u
  SET codigo_sede = a.codigo_sede
  FROM public.alumno a
  WHERE u.dni_usuario = a.dni
    AND u.dni_usuario IS NOT NULL
    AND a.dni IS NOT NULL
    AND (u.codigo_sede IS NULL OR u.codigo_sede != a.codigo_sede);

  -- Verificar si quedan filas en users que no tienen match en alumno
  SELECT COUNT(*) INTO v_count
  FROM public."users" u
  WHERE u.dni_usuario IS NOT NULL
    AND NOT EXISTS (
      SELECT 1 FROM public.alumno a
      WHERE a.dni = u.dni_usuario
        AND a.codigo_sede = u.codigo_sede
    );
  
  IF v_count > 0 THEN
    RAISE WARNING 'Hay % filas en users.dni_usuario que no coinciden con alumno(codigo_sede, dni). La FK no se creará. Revisar datos.', v_count;
    RAISE NOTICE 'Filas problemáticas en users (mostrar hasta 10):';
    FOR r IN (
      SELECT u.id, u.email, u.dni_usuario, u.codigo_sede AS codigo_sede_user
      FROM public."users" u
      WHERE u.dni_usuario IS NOT NULL
        AND NOT EXISTS (
          SELECT 1 FROM public.alumno a
          WHERE a.dni = u.dni_usuario AND a.codigo_sede = u.codigo_sede
        )
      LIMIT 10
    ) LOOP
      RAISE NOTICE '  users.id=%, dni_usuario=%, codigo_sede=%, email=%', r.id, r.dni_usuario, r.codigo_sede_user, r.email;
    END LOOP;
  ELSE
    -- Recrear la FK como compuesta: (codigo_sede, dni_usuario) -> (codigo_sede, dni)
    IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'fk_dni_usuario') THEN
      ALTER TABLE public."users"
        ADD CONSTRAINT fk_dni_usuario FOREIGN KEY (codigo_sede, dni_usuario)
        REFERENCES public.alumno (codigo_sede, dni) MATCH SIMPLE
        ON UPDATE NO ACTION
        ON DELETE CASCADE;
      RAISE NOTICE 'FK fk_dni_usuario recreada exitosamente';
    END IF;
  END IF;
END $$;

-- curso: codigo_curso único por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'curso_codigo_curso_key') THEN
    ALTER TABLE public.curso DROP CONSTRAINT curso_codigo_curso_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'curso_codigo_curso_sede_key') THEN
    ALTER TABLE public.curso ADD CONSTRAINT curso_codigo_curso_sede_key UNIQUE (codigo_sede, codigo_curso);
  END IF;
END $$;

-- seccion: codigo_seccion único por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'seccion_codigo_seccion_key') THEN
    ALTER TABLE public.seccion DROP CONSTRAINT seccion_codigo_seccion_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'seccion_codigo_seccion_sede_key') THEN
    ALTER TABLE public.seccion ADD CONSTRAINT seccion_codigo_seccion_sede_key UNIQUE (codigo_sede, codigo_seccion);
  END IF;
END $$;

-- periodoacademico: codigo_periodo único por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'periodoacademico_codigo_periodo_key') THEN
    ALTER TABLE public.periodoacademico DROP CONSTRAINT periodoacademico_codigo_periodo_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'periodoacademico_codigo_periodo_sede_key') THEN
    ALTER TABLE public.periodoacademico ADD CONSTRAINT periodoacademico_codigo_periodo_sede_key UNIQUE (codigo_sede, codigo_periodo);
  END IF;
END $$;

-- subperiodos: codigo_subperiodo único por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'subperiodos_codigo_subperiodo_key') THEN
    ALTER TABLE public.subperiodos DROP CONSTRAINT subperiodos_codigo_subperiodo_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'subperiodos_codigo_subperiodo_sede_key') THEN
    ALTER TABLE public.subperiodos ADD CONSTRAINT subperiodos_codigo_subperiodo_sede_key UNIQUE (codigo_sede, codigo_subperiodo);
  END IF;
END $$;

-- grado_curso: combinar por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'unique_grado_curso') THEN
    ALTER TABLE public.grado_curso DROP CONSTRAINT unique_grado_curso;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'unique_grado_curso_sede') THEN
    ALTER TABLE public.grado_curso ADD CONSTRAINT unique_grado_curso_sede UNIQUE (codigo_sede, "ID_GRADO", id_curso);
  END IF;
END $$;

-- detalleseccionasignada: incluir sede en combinación única
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'unique_student_course_section') THEN
    ALTER TABLE public.detalleseccionasignada DROP CONSTRAINT unique_student_course_section;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'unique_student_course_section_sede') THEN
    ALTER TABLE public.detalleseccionasignada ADD CONSTRAINT unique_student_course_section_sede UNIQUE (codigo_sede, id_curso, id_seccion, id_periodo);
  END IF;
END $$;

-- users: email único por sede
DO $$
BEGIN
  IF EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'users_email_key') THEN
    ALTER TABLE public."users" DROP CONSTRAINT users_email_key;
  END IF;
  IF NOT EXISTS (SELECT 1 FROM pg_constraint WHERE conname = 'users_email_sede_key') THEN
    ALTER TABLE public."users" ADD CONSTRAINT users_email_sede_key UNIQUE (codigo_sede, email);
  END IF;
END $$;

COMMIT;


