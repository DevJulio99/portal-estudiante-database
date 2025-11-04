-- 07_asignacion_manual_codigo_sede.sql
-- Asignación manual de codigo_sede a filas que quedaron NULL
-- EJECUTAR DESPUÉS del script 02 y ANTES de re-ejecutar SET NOT NULL

BEGIN;

-- horario
UPDATE public.horario
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- seccion (CORREGIDO: agregado filtro WHERE codigo_sede IS NULL)
UPDATE public.seccion
SET codigo_sede = CASE
    WHEN ciclo IS NULL THEN 'SEDE001'
    ELSE 'SEDE002'
END
WHERE codigo_sede IS NULL;

-- periodoacademico
UPDATE public.periodoacademico
SET codigo_sede = CASE
	WHEN tipo_periodo = 'Año' THEN 'SEDE001'
	WHEN tipo_periodo = 'Ciclo' THEN 'SEDE002'
	ELSE 'SEDE001' -- Por si hay otros tipos
END
WHERE codigo_sede IS NULL;

-- subperiodos
UPDATE public.subperiodos
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- asistencias
UPDATE public.asistencias
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- docente
UPDATE public.docente
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- aula
UPDATE public.aula
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- calendario_academico
UPDATE public.calendario_academico
SET codigo_sede = 'SEDE001'
WHERE codigo_sede IS NULL;

-- grado
UPDATE public.grado
SET codigo_sede = CASE
    WHEN tipo_institucion = 'C' THEN 'SEDE001'
    WHEN tipo_institucion = 'I' THEN 'SEDE002'
    ELSE 'SEDE001' -- Por si hay otros tipos
END
WHERE codigo_sede IS NULL;

--alumno
UPDATE public.alumno
SET codigo_sede = 'SEDE002'
WHERE tipo_institucion = 'I' AND codigo_sede IS NULL;

COMMIT;

