UPDATE public.users
SET codigo_sede = 'SEDE001'
WHERE id BETWEEN 1 AND 3;

UPDATE public.alumno
SET 
    codigo_sede = 'SEDE001',
    tipo_institucion = 'C',
    habilitado_prueba = true
WHERE id_alumno BETWEEN 1 AND 3;


UPDATE public.pagos
SET codigo_sede = 'SEDE001'
WHERE id_pago BETWEEN 1 AND 3;

UPDATE public.curso
SET id_sede = 1
WHERE id_curso BETWEEN 1 AND 10;

UPDATE public.users
SET role = 'user'
WHERE id IN (1, 2, 3);

INSERT INTO public.alumno (
    codigo_alumno, nombre, apellido_paterno, apellido_materno, dni,
    correo, fecha_nacimiento, telefono, direccion, foto_perfil,
    genero, tipo_alumno, observaciones, apoderado, tipo_institucion,
    id_grado, habilitado_prueba, codigo_sede, activo
)
VALUES (
    'A004', 'Admin', 'Principal', 'Sistema', '99999999',
    'admin@mail.com', '1990-01-01', '999999999', 'Oficina Central', '',
    'M', 'Regular', '', 'Administrador', 'C',
    1, true, 'SEDE001', true
);

INSERT INTO public.users (
    email, password, name, phone, role, dni_usuario, codigo_sede, activo
)
VALUES (
    'admin@mail.com', 'admin123', 'Administrador', '999999999', 'admin', '99999999', 'SEDE001', true
);

