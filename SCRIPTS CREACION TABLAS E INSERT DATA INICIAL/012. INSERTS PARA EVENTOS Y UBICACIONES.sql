--INSERTS PARA eventos

INSERT INTO eventos (
    "TITULO", "IMAGEN_DESKTOP", "IMAGEN_MOBILE", "ALT_IMAGEN_DESKTOP", "ALT_IMAGEN_MOBILE",
    "URL", "PRIORIDAD", "ABRIR_NUEVA_PAGINA", "TIPO_DE_EVENTO", "CATEGORIA_EVENTO",
    "FECHA_DE_INICIO", "HORA_DE_INICIO", "FECHA_DE_FIN", "HORA_DE_FIN",
    "FECHA_INICIO_EVENTO", "HORA_INICIO_EVENTO", "FECHA_FIN_EVENTO",
    "NOMBRE_BOTON", "CAPACIDAD", "DESCRIPCION"
) VALUES
(
    'Selecciones Deportivas',
    'https://www.aulica.com.ar/wp-content/uploads/2019/06/Organizar-eventos-escolares-1.jpg',
    'https://www.aulica.com.ar/wp-content/uploads/2019/06/Organizar-eventos-escolares-1.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Actividades Extracurriculares',
    NULL, NULL, NULL, NULL,
    '2025-03-10', '10:00:00', '2025-08-14',
    'Participa ahora', 100,
    '¡Demuestra tu talento en las Selecciones Deportivas! La convocatoria ya está abierta.'
),
(
    'Bienvenida a los Nuevos Estudiantes',
    'https://www.aulica.com.ar/wp-content/uploads/2019/06/Organizar-eventos-escolares-d.jpg',
    'https://www.aulica.com.ar/wp-content/uploads/2019/06/Organizar-eventos-escolares-d.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Bienvenida Escolar',
    NULL, NULL, NULL, NULL,
    '2025-03-03', '08:00:00', '2025-03-03',
    'Inscríbete aquí', 600,
    'Bienvenida a todos los nuevos estudiantes. ¡Vengan a conocer sus compañeros, disfrutar de actividades y obtener premios!'
),
(
    'Reunión Virtual para Padres',
    'https://img.freepik.com/vector-gratis/gente-diminuta-ninos-comiendo-comida-rapida-bailando-disfrutando-festival-al-aire-libre-fiesta-calle-fiesta-ciudad-pizza-concepto-festival-comida-costilla_335657-1.jpg',
    'https://img.freepik.com/vector-gratis/gente-diminuta-ninos-comiendo-comida-rapida-bailando-disfrutando-festival-al-aire-libre-fiesta-calle-fiesta-ciudad-pizza-concepto-festival-comida-costilla_335657-1.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'virtual', 'Reuniones',
    NULL, NULL, NULL, NULL,
    '2025-02-12', '18:00:00', '2025-02-20',
    'Confirma tu participación', 300,
    'Recuerda que la reunión será virtual. Confirma tu asistencia para recibir el enlace.'
),
(
    'Exposición de Ciencia',
    'https://img.freepik.com/foto-gratis/ninos-curiosos-haciendo-experimento-quimico-escuela_23-2148990234.jpg',
    'https://img.freepik.com/foto-gratis/ninos-curiosos-haciendo-experimento-quimico-escuela_23-2148990234.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Proyectos Escolares',
    NULL, NULL, NULL, NULL,
    '2025-09-21', '09:00:00', '2025-09-24',
    'Participa ahora', 350,
    'Ven a conocer los proyectos científicos de nuestros estudiantes. ¡No te lo pierdas!'
),
(
    'Fiesta de Fin de Año Escolar',
    'https://img.freepik.com/foto-gratis/pizarra-blanco-rodeada-elementos-cumpleanos_23-2147626991.jpg',
    'https://img.freepik.com/foto-gratis/pizarra-blanco-rodeada-elementos-cumpleanos_23-2147626991.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Fiestas Escolares',
    NULL, NULL, NULL, NULL,
    '2025-12-20', '19:00:00', '2025-12-21',
    'Compra tus entradas aquí', 500,
    '¡Celebra con nosotros el fin de año escolar! Música, juegos y diversión para todos.'
),
(
    'Concurso de Lectura',
    'https://img.freepik.com/foto-gratis/adolescentes-leyendo-biblioteca_23-2147864016.jpg',
    'https://img.freepik.com/foto-gratis/adolescentes-leyendo-biblioteca_23-2147864016.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Competencias',
    NULL, NULL, NULL, NULL,
    '2025-10-13', '11:00:00', '2025-10-14',
    'Regístrate aquí', 450,
    'Demuestra tus habilidades de lectura en nuestro concurso anual.'
),
(
    'Competencia de Matemáticas',
    'https://img.freepik.com/foto-gratis/calculadora-plana-matematicas-ciencias-cuaderno_23-2148416097.jpg',
    'https://img.freepik.com/foto-gratis/calculadora-plana-matematicas-ciencias-cuaderno_23-2148416097.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Competencias',
    NULL, NULL, NULL, NULL,
    '2025-04-15', '12:00:00', '2025-04-18',
    'Inscríbete aquí', 500,
    '¡Pon a prueba tus conocimientos en matemáticas y gana premios!'
),
(
    'Torneo de Fútbol',
    'https://img.freepik.com/foto-gratis/ninos-felices-tiro-medio-trofeo_23-2149271060.jpg',
    'https://img.freepik.com/foto-gratis/ninos-felices-tiro-medio-trofeo_23-2149271060.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Deportes Escolares',
    NULL, NULL, NULL, NULL,
    '2025-05-05', '14:00:00', '2025-05-06',
    'Regístrate ahora', 600,
    'Participa en el torneo de fútbol. ¡Forma tu equipo y demuestra tu habilidad!'
),
(
    'Festival de Arte',
    'https://img.freepik.com/fotos-premium/muchacha-feliz-que-sostiene-paleta-mano-que-mira-su-amigo-que-pinta-base-cepillo-pintura_23-2148088608.jpg',
    'https://img.freepik.com/fotos-premium/muchacha-feliz-que-sostiene-paleta-mano-que-mira-su-amigo-que-pinta-base-cepillo-pintura_23-2148088608.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Cultura Escolar',
    NULL, NULL, NULL, NULL,
    '2025-06-01', '11:30:00', '2025-06-02',
    'Participa en el festival', 700,
    'Celebra el arte con nosotros. Música, danza, pintura y más.'
),
(
    'Recreo Deportivo',
    'https://img.freepik.com/foto-gratis/ninos-sonrientes-tiro-medio-posando-juntos_23-2149351802.jpg',
    'https://img.freepik.com/foto-gratis/ninos-sonrientes-tiro-medio-posando-juntos_23-2149351802.jpg',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'presencial', 'Actividades Extraescolares',
    NULL, NULL, NULL, NULL,
    '2025-07-21', '10:45:00', '2025-07-25',
    'Inscríbete aquí', 450,
    'Participa en nuestra jornada recreativa deportiva con tus amigos.'
),
(
    'Taller de Robótica',
    'https://img.freepik.com/vector-premium/robotica-plana-dibujada-mano-ninos-fondo_98292-32130.jpg?w=740',
    'https://img.freepik.com/vector-premium/robotica-plana-dibujada-mano-ninos-fondo_98292-32130.jpg?w=740',
    NULL, NULL,
    'https://www.google.com/',
    1, TRUE, 'virtual', 'Talleres',
    NULL, NULL, NULL, NULL,
    '2025-08-15', '14:00:00', '2025-08-16',
    'Inscríbete aquí', 800,
    'Descubre el fascinante mundo de la robótica en nuestro taller virtual.'
);


--INSERTS PARA ubicaciones_evento

INSERT INTO ubicaciones_evento (
    "EVENTO_ID", "LATITUD", "LONGITUD", "DIRECCION", "NOMBRE", "URL", "URL_MOBILE"
) VALUES
(
    1, NULL, NULL, 'Calle 123, Ciudad Escolar', 'Campo Deportivo Principal',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    1, NULL, NULL, 'Avenida Secundaria 45, Ciudad Escolar', 'Gimnasio Escolar',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    2, NULL, NULL, 'Calle Principal 78, Ciudad Escolar', 'Auditorio Central',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    2, NULL, NULL, 'Calle 65, Ciudad Escolar', 'Aula Magna',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    4, NULL, NULL, 'Calle 101, Ciudad Escolar', 'Estadio de Fútbol',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    4, NULL, NULL, 'Avenida del Parque 22, Ciudad Escolar', 'Cancha de Fútbol 2',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    5, NULL, NULL, 'Calle 54, Ciudad Escolar', 'Teatro Escolar',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    5, NULL, NULL, 'Calle de la Cultura 34, Ciudad Escolar', 'Sala de Eventos',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    6, NULL, NULL, 'Calle 32, Ciudad Escolar', 'Pabellón de Deportes',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    6, NULL, NULL, 'Avenida 22, Ciudad Escolar', 'Zona Recreativa',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    7, NULL, NULL, 'Calle 15, Ciudad Escolar', 'Laboratorio de Ciencia',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    7, NULL, NULL, 'Avenida Principal 12, Ciudad Escolar', 'Salón de Robótica',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    8, NULL, NULL, 'Calle 99, Ciudad Escolar', 'Cancha de Fútbol Principal',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    8, NULL, NULL, 'Calle 98, Ciudad Escolar', 'Estadio de Deportes',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    9, NULL, NULL, 'Calle 45, Ciudad Escolar', 'Pabellón de Arte',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    9, NULL, NULL, 'Avenida Central 17, Ciudad Escolar', 'Auditorio Cultural',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    10, NULL, NULL, 'Calle 44, Ciudad Escolar', 'Cancha de Basketball',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
),
(
    10, NULL, NULL, 'Calle 43, Ciudad Escolar', 'Zona Deportiva Principal',
    'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d15609.384277677698!2d-76.89472411601707!3d-12.019679324030603!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x9105c3ced843c813%3A0x63b0e675ec40dfc4!2sSanta%20Clara%2C%20Ate%2015487!5e0!3m2!1ses!2spe!4v1739771811313!5m2!1ses!2spe', 'https://maps.app.goo.gl/ZMmYc2sxKSYmhjDK9'
);