-- PREGUNTAS MATEMÁTICA - 1° DE SECUNDARIA
--TEMA 1: Determinación de conjuntos
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Conjuntos de frutas', 
    'En un estudio sobre preferencias de frutas, se determinó que: 15 estudiantes prefieren manzanas, 10 prefieren plátanos, 8 prefieren ambas frutas y 5 no prefieren ninguna de estas dos frutas. Este problema nos permite analizar cómo se relacionan los conjuntos y sus elementos.',
    NULL, NULL, NULL,
    '¿Cuántos estudiantes fueron encuestados en total?',
    '22', '28', '30', '32',
    'A', 5, 7, 'Determinación de conjuntos'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Elementos comunes', 
    'En una clase de 30 estudiantes, 18 practican fútbol, 15 practican básquet y 10 practican ambos deportes. Este escenario es ideal para comprender la intersección entre conjuntos y cómo se relacionan sus elementos.',
    NULL, NULL, NULL,
    '¿Cuántos estudiantes no practican ninguno de estos dos deportes?',
    '5', '7', '10', '12',
    'B', 5, 7, 'Determinación de conjuntos'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Conjuntos numéricos', 
    'Considera los siguientes conjuntos: A = {2, 4, 6, 8, 10} y B = {3, 6, 9, 12}. Al analizar estos conjuntos, podemos explorar diferentes operaciones como unión, intersección y diferencia entre conjuntos numéricos.',
    NULL, NULL, NULL,
    '¿Cuál es la intersección entre los conjuntos A y B?',
    '{2, 3}', '{6}', '{6, 12}', '{}',
    'B', 5, 7, 'Determinación de conjuntos'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Representación gráfica', 
    'Un diagrama de Venn muestra tres conjuntos: P, Q y R. El conjunto P tiene 12 elementos exclusivos, Q tiene 8 elementos exclusivos, y R tiene 5 elementos exclusivos. La intersección de P y Q tiene 4 elementos, la de Q y R tiene 3 elementos, y la de P y R tiene 2 elementos. Además, hay 1 elemento común a los tres conjuntos.',
    NULL, NULL, NULL,
    '¿Cuántos elementos hay en total en este diagrama de Venn?',
    '30', '32', '35', '37',
    'C', 5, 7, 'Determinación de conjuntos'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Complemento de conjuntos', 
    'En un colegio con 120 estudiantes, 70 estudian inglés, 50 estudian francés y 20 estudian ambos idiomas. Este problema nos permite analizar cómo calcular el complemento de un conjunto y entender la relación entre conjuntos disjuntos y solapados.',
    NULL, NULL, NULL,
    '¿Cuántos estudiantes no estudian ninguno de estos dos idiomas?',
    '15', '20', '25', '30',
    'B', 5, 7, 'Determinación de conjuntos'
);

--TEMA 2: Clases y cardinal de un conjunto
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Identificación de conjuntos', 
    'En teoría de conjuntos, es fundamental reconocer las características que definen a un conjunto. Un conjunto es una colección bien definida de objetos distintos, llamados elementos. Considera el siguiente ejemplo para analizar sus propiedades fundamentales.', 
    NULL, NULL, NULL, 
    'Dado el conjunto A = {2, 4, 6, 8}, ¿cuál es el cardinal de A?', 
    '3 elementos', '4 elementos', '5 elementos', '6 elementos', 
    'B', 5, 7, 'Clases y cardinal de un conjunto'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Clasificación de elementos', 
    'Los conjuntos pueden clasificarse según diferentes criterios, siendo el cardinal uno de los más importantes. El cardinal de un conjunto finito es el número de elementos distintos que contiene. Analiza cuidadosamente la siguiente situación:', 
    NULL, NULL, NULL, 
    'Si B = {x | x es una vocal del alfabeto español}, ¿qué tipo de conjunto es B?', 
    'Conjunto vacío', 'Conjunto unitario', 'Conjunto finito', 'Conjunto infinito', 
    'C', 5, 7, 'Clases y cardinal de un conjunto'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Comparación de cardinales', 
    'El concepto de cardinalidad permite comparar conjuntos y establecer relaciones entre ellos. Dos conjuntos tienen el mismo cardinal si existe una correspondencia biunívoca entre sus elementos. Reflexiona sobre el siguiente caso:', 
    NULL, NULL, NULL, 
    'Si C = {a, e, i, o, u} y D = {1, 2, 3, 4, 5}, ¿cómo se relacionan sus cardinales?', 
    'Cardinal de C es mayor', 'Cardinal de D es mayor', 'Tienen igual cardinal', 'No se pueden comparar', 
    'C', 5, 7, 'Clases y cardinal de un conjunto'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Conjuntos especiales', 
    'Existen conjuntos con características particulares que son esenciales en matemáticas. El conjunto vacío y los conjuntos unitarios son casos especiales que cumplen propiedades únicas. Estudia el siguiente ejemplo:', 
    NULL, NULL, NULL, 
    '¿Cuál de los siguientes conjuntos tiene cardinal igual a 1?', 
    '{}', '{0}', '{1, 2}', '{∅, {∅}}', 
    'B', 5, 7, 'Clases y cardinal de un conjunto'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Aplicación del cardinal', 
    'El cardinal de un conjunto tiene aplicaciones prácticas en diversos contextos matemáticos. Comprender este concepto es fundamental para resolver problemas de conteo y clasificación. Analiza el siguiente problema:', 
    NULL, NULL, NULL, 
    'En una reunión hay 5 personas que hablan español, 3 que hablan inglés y 2 que hablan ambos idiomas. ¿Cuál es el cardinal del conjunto de personas que hablan al menos un idioma?', 
    '6 personas', '8 personas', '10 personas', '5 personas', 
    'A', 5, 7, 'Clases y cardinal de un conjunto'
);

--TEMA 3: Relaciones entre conjuntos
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Subconjuntos básicos', 
    'En teoría de conjuntos, un subconjunto es un conjunto formado por elementos que pertenecen a otro conjunto. Considera el conjunto A = {1, 2, 3} y analiza cuidadosamente las siguientes opciones para identificar cuál de ellas representa correctamente todos los posibles subconjuntos de A que contienen exactamente 2 elementos.', 
    NULL, NULL, NULL,
    '¿Cuál de las siguientes opciones muestra todos los subconjuntos de A que contienen exactamente 2 elementos?',
    '{{1,2}, {1,3}, {2,3}}', 
    '{{1}, {2}, {3}}', 
    '{{1,2}, {1,3}}', 
    '{{1,2,3}}', 
    'A', 5, 7, 'Relaciones entre conjuntos'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Unión de conjuntos', 
    'La unión de dos conjuntos A y B es el conjunto que contiene todos los elementos que pertenecen a A, a B o a ambos. Imagina que A = {a, b, c} y B = {c, d, e}. El proceso de unión combina los elementos de ambos conjuntos sin repetirlos.', 
    NULL, NULL, NULL,
    'Si A = {a, b, c} y B = {c, d, e}, ¿cuál es el resultado de A ∪ B?',
    '{a, b, c}', 
    '{a, b, c, c, d, e}', 
    '{a, b, c, d, e}', 
    '{c}', 
    'C', 5, 7, 'Relaciones entre conjuntos'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Intersección práctica', 
    'La intersección de conjuntos es una operación fundamental que identifica elementos comunes. En un aula, el conjunto M representa a estudiantes que juegan fútbol y el conjunto N a estudiantes que juegan básquet. Algunos estudiantes participan en ambos deportes, lo que nos permite comprender la relación entre los conjuntos.', 
    NULL, NULL, NULL,
    'Si M = {Luis, Ana, Pedro} y N = {Ana, Carlos, Pedro}, ¿cuál es M ∩ N?',
    '{Ana, Pedro}', 
    '{Luis, Ana}', 
    '{Ana, Carlos}', 
    '{Luis, Carlos}', 
    'A', 5, 7, 'Relaciones entre conjuntos'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Diferencia de conjuntos', 
    'La diferencia entre conjuntos A y B (A - B) consiste en los elementos que están en A pero no en B. Esta operación es útil en muchos contextos matemáticos. Considera los conjuntos P = {2, 4, 6, 8} y Q = {4, 5, 6, 7}, y analiza cuidadosamente qué elementos permanecen cuando eliminamos de P los elementos que también están en Q.', 
    NULL, NULL, NULL,
    'Dados P = {2, 4, 6, 8} y Q = {4, 5, 6, 7}, ¿qué es P - Q?',
    '{2, 8}', 
    '{4, 6}', 
    '{5, 7}', 
    '{2, 4, 6, 8}', 
    'A', 5, 7, 'Relaciones entre conjuntos'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Complemento teórico', 
    'El complemento de un conjunto A respecto a un conjunto universal U contiene todos los elementos de U que no están en A. Imagina que en un universo de números del 1 al 10, tenemos el conjunto R = {2, 4, 6, 8}. El complemento de R sería fundamental para entender qué números no cumplen con la condición de ser pares en este rango.', 
    NULL, NULL, NULL,
    'Si U = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10} y R = {2, 4, 6, 8}, ¿cuál es el complemento de R?',
    '{1, 3, 5, 7, 9, 10}', 
    '{2, 4, 6, 8}', 
    '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}', 
    '{1, 3, 5, 7, 9}', 
    'A', 5, 7, 'Relaciones entre conjuntos'
);

--TEMA 4: Operaciones entre conjuntos
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Unión de conjuntos numéricos',
    'Considera los conjuntos A = {1, 2, 3, 4} y B = {3, 4, 5, 6}. La unión de conjuntos es una operación fundamental que combina todos los elementos distintos de ambos conjuntos. Es importante recordar que en la unión no se repiten elementos, aunque aparezcan en ambos conjuntos.',
    NULL, NULL, NULL,
    '¿Cuál es el resultado de A ∪ B?',
    '{1, 2, 3, 4}', 
    '{3, 4, 5, 6}', 
    '{1, 2, 3, 4, 5, 6}', 
    '{3, 4}', 
    'C', 5, 7, 'Operaciones entre conjuntos'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Intersección de conjuntos',
    'Dados los conjuntos X = {a, b, c, d} e Y = {c, d, e, f}, la intersección nos permite encontrar elementos comunes. Esta operación es esencial para resolver problemas donde necesitamos identificar características compartidas entre diferentes grupos o categorías.',
    NULL, NULL, NULL,
    '¿Qué elementos forman parte de X ∩ Y?',
    '{a, b}', 
    '{c, d}', 
    '{e, f}', 
    '{a, b, c, d, e, f}', 
    'B', 5, 7, 'Operaciones entre conjuntos'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Diferencia de conjuntos',
    'Si tenemos los conjuntos P = {2, 4, 6, 8, 10} y Q = {4, 8, 12}, la diferencia P - Q contiene los elementos que están en P pero no en Q. Esta operación es particularmente útil en situaciones donde necesitamos excluir ciertos elementos de un conjunto.',
    NULL, NULL, NULL,
    '¿Cuál es el resultado de P - Q?',
    '{2, 6, 10}', 
    '{4, 8}', 
    '{12}', 
    '{2, 4, 6, 8, 10, 12}', 
    'A', 5, 7, 'Operaciones entre conjuntos'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Complemento de un conjunto',
    'En un universo U = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10}, consideremos el conjunto R = {2, 3, 5, 7}. El complemento de R incluye todos los elementos de U que no están en R. Esta operación es fundamental en probabilidad y lógica matemática.',
    NULL, NULL, NULL,
    '¿Cuál es el complemento de R?',
    '{1, 4, 6, 8, 9, 10}', 
    '{2, 3, 5, 7}', 
    '{1, 2, 3, 4, 5, 6, 7, 8, 9, 10}', 
    '{}', 
    'A', 5, 7, 'Operaciones entre conjuntos'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Propiedades de las operaciones',
    'Las operaciones entre conjuntos cumplen propiedades algebraicas importantes. Por ejemplo, la unión es conmutativa (A ∪ B = B ∪ A) y asociativa ((A ∪ B) ∪ C = A ∪ (B ∪ C)). Comprender estas propiedades ayuda a simplificar expresiones complejas con múltiples operaciones.',
    NULL, NULL, NULL,
    'Si A = {1, 2}, B = {2, 3} y C = {3, 4}, ¿cuál es el resultado de (A ∩ B) ∪ C?',
    '{1, 2, 3, 4}', 
    '{2, 3}', 
    '{3, 4}', 
    '{2, 3, 4}', 
    'D', 5, 7, 'Operaciones entre conjuntos'
);

--TEMA 5: Aplicaciones a la teoría de conjuntos
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1 (Respuesta correcta: B)
(
    'MATEMÁTICA', NULL, 'Unión de conjuntos deportivos', 
    'En una escuela, el conjunto A representa a los estudiantes que juegan fútbol (120 alumnos) y el conjunto B a los que juegan baloncesto (80 alumnos). Si 30 alumnos practican ambos deportes, es fundamental entender cómo se relacionan estos conjuntos para organizar los equipos deportivos.', 
    NULL, NULL, NULL, 
    '¿Cuántos alumnos practican al menos uno de estos dos deportes?', 
    '150 alumnos', '170 alumnos', '200 alumnos', '140 alumnos', 'B', 
    5, 7, 'Aplicaciones a la teoría de conjuntos'
),
-- Pregunta 2 (Respuesta correcta: D)
(
    'MATEMÁTICA', NULL, 'Intersección en una biblioteca', 
    'En la biblioteca escolar se realizó un estudio sobre los libros preferidos: 60 estudiantes leen novelas, 45 leen ciencia ficción y 15 leen ambos géneros. Este tipo de problemas ayuda a los bibliotecarios a planificar sus adquisiciones.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes leen solo ciencia ficción?', 
    '25 estudiantes', '40 estudiantes', '50 estudiantes', '30 estudiantes', 'D', 
    5, 7, 'Aplicaciones a la teoría de conjuntos'
),
-- Pregunta 3 (Respuesta correcta: A)
(
    'MATEMÁTICA', NULL, 'Diferencia de conjuntos musicales', 
    'En un taller de música, 50 estudiantes tocan guitarra, 35 tocan piano y 10 tocan ambos instrumentos. Comprender estas relaciones permite organizar mejor los grupos de ensayo y las presentaciones musicales.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes tocan solamente guitarra?', 
    '40 estudiantes', '25 estudiantes', '15 estudiantes', '30 estudiantes', 'A', 
    5, 7, 'Aplicaciones a la teoría de conjuntos'
),
-- Pregunta 4 (Respuesta correcta: C)
(
    'MATEMÁTICA', NULL, 'Complemento en preferencias de comida', 
    'En una encuesta a 200 estudiantes sobre sus preferencias alimentarias: 120 prefieren pizza, 80 prefieren hamburguesas y 50 no prefieren ninguna de las dos. Estos datos son valiosos para la cafetería escolar al planificar sus menús.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes prefieren tanto pizza como hamburguesas?', 
    '20 estudiantes', '30 estudiantes', '50 estudiantes', '40 estudiantes', 'C', 
    5, 7, 'Aplicaciones a la teoría de conjuntos'
),
-- Pregunta 5 (Respuesta correcta: B)
(
    'MATEMÁTICA', NULL, 'Conjuntos en un evento escolar', 
    'Para el día del deporte, 150 estudiantes participarán en atletismo, 100 en natación y 50 en ambos eventos. La comprensión de estos conjuntos es crucial para la logística del evento, asignación de espacios y horarios.', 
    NULL, NULL, NULL, 
    '¿Cuál es el número total de estudiantes participantes en el día del deporte?', 
    '180 estudiantes', '200 estudiantes', '220 estudiantes', '250 estudiantes', 'B', 
    5, 7, 'Aplicaciones a la teoría de conjuntos'
);

--TEMA 6: Problemas que se resuelven con diagramas de Carroll
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Animales en la granja', 
    'En una granja hay 48 animales entre vacas y gallinas. Si en total contamos 120 patas, podemos usar un diagrama de Carroll para organizar la información y resolver el problema. Recuerda que las vacas tienen 4 patas y las gallinas tienen 2 patas.', 
    NULL, NULL, NULL, 
    '¿Cuántas vacas hay en la granja?', 
    '12 vacas', '18 vacas', '24 vacas', '30 vacas', 
    'A', 5, 7, 'Problemas que se resuelven con diagramas de Carroll'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Preferencias de frutas', 
    'En una encuesta a 60 estudiantes sobre sus preferencias de frutas, se sabe que 25 prefieren manzanas, 30 prefieren naranjas y 10 prefieren ambas frutas. Un diagrama de Carroll ayuda a visualizar esta información de manera clara.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes no prefieren ninguna de estas dos frutas?', 
    '5 estudiantes', '10 estudiantes', '15 estudiantes', '20 estudiantes', 
    'C', 5, 7, 'Problemas que se resuelven con diagramas de Carroll'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Deportes escolares', 
    'En la escuela, 80 estudiantes practican fútbol o básquet. De estos, 45 practican fútbol y 50 practican básquet. Algunos estudiantes practican ambos deportes. El diagrama de Carroll es ideal para representar esta situación y encontrar la solución.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes practican ambos deportes?', 
    '10 estudiantes', '15 estudiantes', '20 estudiantes', '25 estudiantes', 
    'B', 5, 7, 'Problemas que se resuelven con diagramas de Carroll'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Transporte escolar', 
    'En un grupo de 100 estudiantes, 60 usan el bus escolar, 35 van caminando y algunos usan ambos medios de transporte. Al organizar esta información en un diagrama de Carroll, podemos determinar cuántos estudiantes utilizan exactamente un solo medio de transporte.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes usan exactamente un solo medio de transporte si 15 usan ambos?', 
    '55 estudiantes', '60 estudiantes', '65 estudiantes', '70 estudiantes', 
    'C', 5, 7, 'Problemas que se resuelven con diagramas de Carroll'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Preferencias musicales', 
    'En una clase de 50 estudiantes, 30 escuchan música pop, 25 escuchan música rock y 10 escuchan ambos géneros. Al representar estos datos en un diagrama de Carroll, podemos responder preguntas sobre las preferencias musicales de los estudiantes.', 
    NULL, NULL, NULL, 
    '¿Cuántos estudiantes no escuchan ninguno de estos dos géneros musicales?', 
    '3 estudiantes', '5 estudiantes', '7 estudiantes', '10 estudiantes', 
    'B', 5, 7, 'Problemas que se resuelven con diagramas de Carroll'
);

--TEMA 7: Relaciones binarias: Par ordenado
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Ubicación en el plano cartesiano',
    'El plano cartesiano está formado por dos ejes perpendiculares: el eje horizontal (x) y el eje vertical (y). Cada punto en este plano se representa mediante un par ordenado (x, y), donde x indica la posición horizontal e y la posición vertical. Es fundamental comprender esta representación para graficar funciones y resolver problemas geométricos.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes pares ordenados representa un punto que se encuentra exactamente en el segundo cuadrante del plano cartesiano?',
    '(-3, 4)', '(2, 5)', '(1, -1)', '(0, 3)',
    'A', 5, 7, 'Par ordenado'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Identificación de coordenadas',
    'En matemáticas, un par ordenado es una pareja de objetos matemáticos, en la que se distingue un primer elemento y un segundo elemento. El par ordenado cuyo primer elemento es a y cuyo segundo elemento es b se denota como (a, b). Los pares ordenados son fundamentales para representar relaciones y funciones.',
    NULL, NULL, NULL,
    'Si tenemos el punto (5, -2) en el plano cartesiano, ¿en qué cuadrante se encuentra ubicado?',
    'Primer cuadrante', 'Segundo cuadrante', 'Tercer cuadrante', 'Cuarto cuadrante',
    'D', 5, 7, 'Par ordenado'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Relación entre pares ordenados',
    'Los pares ordenados no solo representan puntos en el plano, sino que también pueden representar relaciones entre conjuntos. Por ejemplo, en el contexto de funciones, el primer elemento del par pertenece al dominio y el segundo a la imagen. Esta dualidad hace que los pares ordenados sean herramientas versátiles en matemáticas.',
    NULL, NULL, NULL,
    'Dados los pares ordenados (3, 5) y (5, 3), ¿cuál de las siguientes afirmaciones es correcta?',
    'Representan el mismo punto', 'El primero está en el primer cuadrante y el segundo en el tercero',
    'Son puntos diferentes en el plano', 'Ambos están sobre el eje x',
    'C', 5, 7, 'Par ordenado'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Aplicación práctica de coordenadas',
    'En la vida cotidiana utilizamos conceptos similares a los pares ordenados sin darnos cuenta. Por ejemplo, al leer un mapa, las coordenadas (calle, avenida) funcionan como un par ordenado que nos permite ubicar lugares específicos. Esta aplicación práctica demuestra la importancia de comprender bien este concepto matemático.',
    NULL, NULL, NULL,
    'Si un avión se encuentra en la posición (-2, -3) en un sistema de coordenadas donde el origen representa el aeropuerto, ¿qué dirección general debe tomar para regresar al origen?',
    'Noreste', 'Noroeste', 'Sureste', 'Suroeste',
    'A', 5, 7, 'Par ordenado'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Propiedades de los pares ordenados',
    'Una propiedad fundamental de los pares ordenados es que (a, b) = (c, d) si y solo si a = c y b = d. Esta propiedad los diferencia de los conjuntos, donde el orden no importa. Esta distinción es crucial en matemáticas avanzadas y en programación de computadoras.',
    NULL, NULL, NULL,
    '¿Cuál de las siguientes opciones muestra dos pares ordenados iguales?',
    '(4, 7) y (7, 4)', '(2, 2) y (2, 2)', '(0, 5) y (5, 0)', '(3, 1) y (1, 3)',
    'B', 5, 7, 'Par ordenado'
);

--TEMA 8: Producto cartesiano
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Pares ordenados básicos',
    'El producto cartesiano de dos conjuntos A y B, denotado por A × B, es el conjunto de todos los pares ordenados (a, b) donde a ∈ A y b ∈ B. Es fundamental en matemáticas para representar relaciones y funciones entre conjuntos. En este ejercicio trabajaremos con conjuntos numéricos simples.',
    NULL, NULL, NULL,
    'Si A = {1, 2} y B = {3, 4}, ¿cuál de los siguientes NO pertenece al producto cartesiano A × B?',
    '(1, 3)', '(2, 4)', '(3, 1)', '(4, 2)',
    'D', 5, 7, 'Producto cartesiano'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Cardinalidad del producto',
    'La cardinalidad de un conjunto finito es el número de elementos que contiene. Para el producto cartesiano de dos conjuntos finitos A y B, la cardinalidad de A × B es igual al producto de las cardinalidades de A y B. Este concepto es esencial para comprender espacios de posibilidades en probabilidad y combinatoria.',
    NULL, NULL, NULL,
    'Si un conjunto A tiene 3 elementos y un conjunto B tiene 5 elementos, ¿cuántos elementos tiene el producto cartesiano A × B?',
    '8', '15', '35', '53',
    'B', 5, 7, 'Producto cartesiano'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Representación gráfica',
    'El producto cartesiano puede representarse gráficamente mediante un sistema de coordenadas donde el primer conjunto corresponde al eje horizontal y el segundo al eje vertical. Cada par ordenado (x, y) se representa como un punto en este plano. Esta representación es la base de la geometría analítica.',
    NULL, NULL, NULL,
    'Dados los conjuntos X = {2, 4} e Y = {1, 3, 5}, ¿cuál de los siguientes puntos NO pertenece al producto cartesiano X × Y?',
    '(2, 3)', '(4, 1)', '(1, 2)', '(4, 5)',
    'C', 5, 7, 'Producto cartesiano'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Aplicación práctica',
    'En la vida real, el producto cartesiano se utiliza para modelar situaciones donde hay combinaciones de opciones. Por ejemplo, si un menú tiene 3 platos principales y 2 postres, el conjunto de todas las comidas posibles es el producto cartesiano de estos dos conjuntos. Esto tiene aplicaciones en programación, bases de datos y teoría de decisiones.',
    NULL, NULL, NULL,
    'En una tienda hay 4 modelos de camisetas y 3 modelos de pantalones. ¿Cuántas combinaciones diferentes de camiseta y pantalón se pueden hacer?',
    '7', '12', '24', '34',
    'B', 5, 7, 'Producto cartesiano'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Propiedades del producto',
    'El producto cartesiano no es conmutativo, lo que significa que A × B no es igual a B × A, a menos que A = B. Sin embargo, la cardinalidad sí es la misma. Esta propiedad es crucial para entender relaciones binarias y funciones en matemáticas avanzadas.',
    NULL, NULL, NULL,
    'Si A = {x, y} y B = {1, 2, 3}, ¿cuál de los siguientes pares ordenados pertenece a B × A?',
    '(x, 1)', '(2, y)', '(y, 3)', '(1, 2)',
    'B', 5, 7, 'Producto cartesiano'
);

--TEMA 9: Diagrama sagital o de flechas
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Relaciones en diagrama sagital', 
    'Observa cuidadosamente el siguiente escenario: En una clase de primer grado, tenemos tres estudiantes (Ana, Luis y Carla) y sus deportes favoritos (fútbol, básquet y vóley). El diagrama sagital muestra que Ana está relacionada con fútbol, Luis con básquet y Carla con vóley. Analiza esta correspondencia.', 
    NULL, NULL, NULL, 
    'Si queremos representar esta relación correctamente en un diagrama sagital, ¿cuál de las siguientes afirmaciones es verdadera?', 
    'Cada elemento del primer conjunto debe tener solo una flecha', 
    'Pueden haber múltiples flechas desde un mismo elemento', 
    'Los elementos del segundo conjunto no necesitan recibir flechas', 
    'El diagrama debe tener siempre flechas en ambos sentidos', 
    'A', 5, 7, 'Diagrama sagital o de flechas'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Identificando funciones', 
    'Los diagramas sagitales son herramientas poderosas para representar relaciones entre conjuntos. Particularmente en matemáticas, nos ayudan a visualizar cuando una relación cumple las condiciones para ser considerada una función. Observa atentamente las características de estos diagramas.', 
    NULL, NULL, NULL, 
    '¿Cuál de estos diagramas sagitales representa una función?', 
    'Cuando todos los elementos del conjunto de llegada reciben flechas', 
    'Cuando cada elemento del conjunto de partida tiene exactamente una flecha', 
    'Cuando hay al menos una flecha entre cada par de elementos', 
    'Cuando el número de flechas es igual en ambos conjuntos', 
    'B', 5, 7, 'Diagrama sagital o de flechas'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Construyendo diagramas', 
    'Imagina que estás organizando información sobre los países y sus capitales: Perú-Lima, Chile-Santiago, Argentina-Buenos Aires. Quieres representar esta información mediante un diagrama sagital para un proyecto escolar sobre geografía sudamericana.', 
    NULL, NULL, NULL, 
    '¿Qué elemento fundamental NO puede faltar en tu diagrama sagital?', 
    'Los nombres de los países escritos con letra mayúscula', 
    'Flechas que conecten cada país con su capital respectiva', 
    'Un título decorativo con colores llamativos', 
    'Líneas punteadas alrededor de cada conjunto', 
    'B', 5, 7, 'Diagrama sagital o de flechas'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Análisis de correspondencias', 
    'En un diagrama sagital que relaciona cuatro animales (perro, gato, pájaro, pez) con sus hábitats naturales (casa, jardín, jaula, pecera), observamos que perro-casa, gato-casa, pájaro-jaula y pez-pecera están correctamente relacionados.', 
    NULL, NULL, NULL, 
    'Según este diagrama, ¿qué tipo de relación se está representando?', 
    'Una relación donde varios elementos del primer conjunto se relacionan con uno solo del segundo', 
    'Una relación biunívoca donde cada elemento tiene una única correspondencia', 
    'Una relación donde faltan conexiones para ser completa', 
    'Una relación que no puede representarse con diagramas sagitales', 
    'A', 5, 7, 'Diagrama sagital o de flechas'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Interpretación avanzada', 
    'Los diagramas de flechas no solo representan relaciones simples. En matemáticas avanzadas pueden mostrar conexiones más complejas. Sin embargo, para alumnos de primer grado, nos enfocamos en los aspectos fundamentales de esta representación gráfica.', 
    NULL, NULL, NULL, 
    '¿Qué característica es ESENCIAL en todo diagrama sagital bien construido?', 
    'Que las flechas siempre apunten de izquierda a derecha', 
    'Que exista claridad en qué conjunto es el dominio y cuál el codominio', 
    'Que todos los elementos estén conectados entre sí', 
    'Que use colores diferentes para cada tipo de relación', 
    'B', 5, 7, 'Diagrama sagital o de flechas'
);

--TEMA 10: Diagrama cartesiano
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Ubicación en el plano cartesiano',
    'El plano cartesiano está dividido en cuatro cuadrantes definidos por los ejes X (horizontal) e Y (vertical). Cada punto en el plano se representa con un par ordenado (x, y). Es fundamental comprender cómo se distribuyen los valores positivos y negativos en cada cuadrante para ubicar correctamente los puntos.',
    NULL, NULL, NULL,
    '¿En qué cuadrante se encuentra el punto (-3, 5)?',
    'Primer cuadrante', 'Segundo cuadrante', 'Tercer cuadrante', 'Cuarto cuadrante',
    'B', 5, 7, 'Diagrama cartesiano'
),

-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Identificación de coordenadas',
    'Al trabajar con diagramas cartesianos, es esencial poder interpretar correctamente las coordenadas de puntos específicos. Observa atentamente la posición de un punto en relación con los ejes X e Y para determinar sus coordenadas exactas.',
    NULL, NULL, NULL,
    'Si un punto está 4 unidades a la derecha del origen y 2 unidades hacia abajo, ¿cuáles son sus coordenadas?',
    '(4, 2)', '(4, -2)', '(-4, 2)', '(-4, -2)',
    'B', 5, 7, 'Diagrama cartesiano'
),

-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Puntos sobre los ejes',
    'Los puntos pueden ubicarse sobre los ejes cartesianos, lo que representa casos especiales en el sistema de coordenadas. Un punto sobre el eje X tiene su coordenada Y igual a cero, mientras que un punto sobre el eje Y tiene su coordenada X igual a cero.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes puntos se encuentra exactamente sobre el eje Y?',
    '(0, 5)', '(3, 0)', '(2, 2)', '(-4, -4)',
    'A', 5, 7, 'Diagrama cartesiano'
),

-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Simetría en el plano',
    'El concepto de simetría en el plano cartesiano implica que los puntos pueden reflejarse a través de los ejes o del origen. Comprender estas transformaciones ayuda a visualizar relaciones geométricas entre diferentes puntos del plano.',
    NULL, NULL, NULL,
    '¿Cuál es el punto simétrico a (2, -3) respecto al eje X?',
    '(-2, 3)', '(2, 3)', '(-2, -3)', '(3, -2)',
    'B', 5, 7, 'Diagrama cartesiano'
),

-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Distancia al origen',
    'La distancia de un punto al origen en el plano cartesiano se puede calcular utilizando el teorema de Pitágoras. Esta distancia representa la longitud del segmento de recta que une el punto con el origen del sistema de coordenadas.',
    NULL, NULL, NULL,
    '¿Cuál de estos puntos está más cerca del origen (0,0)?',
    '(1, 1)', '(2, 0)', '(0, 3)', '(-1, -2)',
    'A', 5, 7, 'Diagrama cartesiano'
);

--TEMA 11: Dominio y rango de la relación
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Comprensión del dominio', 
    'En matemáticas, el dominio de una relación es el conjunto de todos los primeros elementos de los pares ordenados que forman la relación. Considera la relación R = {(2,5), (3,7), (4,9), (5,11)}. El dominio es fundamental para entender el comportamiento de la relación.',
    NULL, NULL, NULL,
    '¿Cuál es el dominio de la relación R = {(2,5), (3,7), (4,9), (5,11)}?',
    '{2, 3, 4, 5}', '{5, 7, 9, 11}', 'Todos los números reales', 'No se puede determinar',
    'A', 5, 7, 'Dominio y rango de la relación'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Identificación del rango', 
    'El rango de una relación matemática comprende todos los segundos elementos de los pares ordenados que la forman. Analiza cuidadosamente la siguiente relación: S = {(1,4), (2,5), (3,6), (4,7)}. El rango nos muestra los posibles valores de salida de la relación.',
    NULL, NULL, NULL,
    '¿Cuál es el rango de la relación S = {(1,4), (2,5), (3,6), (4,7)}?',
    '{1, 2, 3, 4}', '{4, 5, 6, 7}', 'Números del 1 al 7', 'No tiene rango definido',
    'B', 5, 7, 'Dominio y rango de la relación'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Relaciones y conjuntos', 
    'Al trabajar con relaciones matemáticas, es crucial diferenciar entre dominio y rango. Observa la siguiente relación: T = {(a,1), (b,2), (c,3), (d,4)} donde a, b, c, d son letras del alfabeto. Esta distinción es esencial para el análisis de funciones y relaciones.',
    NULL, NULL, NULL,
    'Si T = {(a,1), (b,2), (c,3), (d,4)}, ¿cuál afirmación es correcta?',
    'El dominio es {1,2,3,4}', 'El rango es {a,b,c,d}', 'El dominio es {a,b,c,d}', 'No se puede determinar el rango',
    'C', 5, 7, 'Dominio y rango de la relación'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Aplicación práctica del dominio', 
    'En situaciones reales, el dominio de una relación puede representar restricciones prácticas. Imagina una función que relaciona el tiempo (en horas) con la distancia recorrida por un automóvil (en km): {(1,60), (2,120), (3,180), (4,240)}. Comprender el dominio ayuda a modelar situaciones del mundo real.',
    NULL, NULL, NULL,
    'Para la relación tiempo-distancia {(1,60), (2,120), (3,180), (4,240)}, ¿qué representa el dominio?',
    'Las distancias recorridas', 'Las velocidades del automóvil', 'Los tiempos medidos', 'Los kilómetros por hora',
    'C', 5, 7, 'Dominio y rango de la relación'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Relaciones numéricas complejas', 
    'Algunas relaciones pueden tener patrones matemáticos interesantes. Examina la siguiente relación: V = {(1,1), (2,4), (3,9), (4,16)}. Observa cuidadosamente cómo se relacionan los elementos del dominio con los del rango para identificar patrones subyacentes.',
    NULL, NULL, NULL,
    'Dada V = {(1,1), (2,4), (3,9), (4,16)}, ¿cuál es la regla que relaciona el dominio con el rango?',
    'y = x + 2', 'y = 2x', 'y = x²', 'y = 3x - 2',
    'C', 5, 7, 'Dominio y rango de la relación'
);

--TEMA 12: Polinomios: Expresiones algebraicas
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Identificación de términos algebraicos',
    'En álgebra, un polinomio es una expresión que consiste en variables y coeficientes, que solo involucra las operaciones de suma, resta, multiplicación y exponentes enteros no negativos. Observa la siguiente expresión: 3x² + 5x - 2',
    NULL, NULL, NULL,
    '¿Cuántos términos tiene el polinomio 3x² + 5x - 2?',
    '1 término', '2 términos', '3 términos', '4 términos',
    'C', 5, 7, 'Polinomios: Expresiones algebraicas'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Grado de un polinomio',
    'El grado de un polinomio es el mayor exponente al que está elevada la variable en el polinomio. Por ejemplo, en el polinomio 4x³ - 2x² + 7x - 1, el término con mayor exponente es x³.',
    NULL, NULL, NULL,
    '¿Cuál es el grado del polinomio 2x⁴ - 3x² + x - 5?',
    'Grado 1', 'Grado 2', 'Grado 3', 'Grado 4',
    'D', 5, 7, 'Polinomios: Expresiones algebraicas'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Clasificación de polinomios',
    'Los polinomios pueden clasificarse según su número de términos. Un monomio tiene un término, un binomio tiene dos términos y un trinomio tiene tres términos. Analiza la expresión: 7y³ + 2y - 9',
    NULL, NULL, NULL,
    '¿Cómo se clasifica el polinomio 7y³ + 2y - 9?',
    'Monomio', 'Binomio', 'Trinomio', 'Polinomio de cuatro términos',
    'C', 5, 7, 'Polinomios: Expresiones algebraicas'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Términos semejantes',
    'Los términos semejantes en un polinomio son aquellos que tienen la misma parte literal (las mismas variables con los mismos exponentes). Solo los coeficientes pueden ser diferentes.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes términos es semejante a 5ab²?',
    '3a²b', '4ab²', '7a²b²', '2ab',
    'B', 5, 7, 'Polinomios: Expresiones algebraicas'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Evaluación de polinomios',
    'Para evaluar un polinomio en un valor específico de la variable, sustituimos la variable por ese valor y realizamos las operaciones indicadas. Considera el polinomio P(x) = 2x² - 3x + 1.',
    NULL, NULL, NULL,
    '¿Cuál es el valor de P(2) para el polinomio P(x) = 2x² - 3x + 1?',
    '3', '5', '7', '9',
    'A', 5, 7, 'Polinomios: Expresiones algebraicas'
);

--TEMA 13: Monomios y grados. Término algebraico
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Identificando monomios', 
    'Un monomio es una expresión algebraica que consta de un solo término donde las variables tienen exponentes enteros no negativos. Es fundamental en álgebra reconocer estas estructuras para avanzar en el estudio de polinomios.',
    NULL, NULL, NULL,
    '¿Cuál de las siguientes expresiones es un monomio?',
    '3x²y', '2x + y', '4/x', '√x',
    'A', 5, 7, 'Monomios y grados. Término algebraico'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Grado de un monomio', 
    'El grado de un monomio se determina sumando los exponentes de todas las variables que lo componen. Este concepto es esencial para clasificar y operar con expresiones algebraicas.',
    NULL, NULL, NULL,
    '¿Cuál es el grado del monomio 5x³y²z?',
    '3', '5', '6', '7',
    'C', 5, 7, 'Monomios y grados. Término algebraico'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Coeficiente y parte literal', 
    'Todo monomio está compuesto por un coeficiente (número) y una parte literal (variables con sus exponentes). Comprender esta estructura permite descomponer y analizar mejor las expresiones algebraicas.',
    NULL, NULL, NULL,
    'En el monomio -7a²b⁵, ¿cuál es el coeficiente?',
    '7', '-7', 'a²b⁵', '-7a²b⁵',
    'B', 5, 7, 'Monomios y grados. Término algebraico'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Monomios semejantes', 
    'Dos monomios son semejantes cuando tienen la misma parte literal. Esta propiedad es crucial para realizar operaciones de suma y resta entre monomios en álgebra.',
    NULL, NULL, NULL,
    '¿Cuál de estos monomios es semejante a 4xy³?',
    '4x³y', '-2xy³', '7x²y²', '5xy',
    'B', 5, 7, 'Monomios y grados. Término algebraico'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Expresiones no monomiales', 
    'No todas las expresiones algebraicas son monomios. Reconocer qué expresiones no cumplen con las características de un monomio ayuda a evitar errores en el trabajo con polinomios.',
    NULL, NULL, NULL,
    '¿Cuál de estas expresiones NO es un monomio?',
    '8', '3x', '2y⁻²', '5a²b³c',
    'C', 5, 7, 'Monomios y grados. Término algebraico'
);

--TEMA 14: Operaciones con términos semejantes. Adición y sustracción
INSERT INTO public.pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Reducción de expresiones algebraicas', 
    'En álgebra, la reducción de términos semejantes es fundamental para simplificar expresiones. Considera la siguiente expresión: 3x + 2y - 5x + 7y. El proceso de combinar términos semejantes permite simplificar la expresión a su forma más básica, lo que facilita su manipulación en ecuaciones posteriores.', 
    NULL, 
    NULL, 
    NULL, 
    'Al simplificar la expresión 3x + 2y - 5x + 7y, ¿cuál es el resultado correcto?', 
    '-2x + 9y', 
    '8x + 9y', 
    '-2x - 5y', 
    '8x - 5y', 
    'A', 
    5, 
    7, 
    'Operaciones con términos semejantes. Adición y sustracción'
),

-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Identificación de términos semejantes', 
    'Los términos semejantes son aquellos que tienen la misma parte literal (las mismas variables con los mismos exponentes). Esta característica es esencial para realizar operaciones algebraicas básicas. Por ejemplo, en la expresión 4a²b - 3ab + 2a²b + 7ab, podemos identificar pares de términos que pueden combinarse.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál de las siguientes opciones contiene únicamente términos semejantes?', 
    '3x²y y -5x²y', 
    '4ab y 2a²b', 
    '7m³n y 5mn³', 
    '2p²q y 3pq²', 
    'B', 
    5, 
    7, 
    'Operaciones con términos semejantes. Adición y sustracción'
),

-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Aplicación en problemas contextualizados', 
    'En situaciones prácticas, el álgebra nos permite modelar y resolver problemas. Imagina que en una tienda de materiales, las varillas de hierro se venden por longitud. Si compras varias varillas de diferentes longitudes expresadas algebraicamente, la capacidad de combinar términos semejantes te ayudará a calcular el total de material adquirido.', 
    NULL, 
    NULL, 
    NULL, 
    'Si tienes 5x metros de cable eléctrico y compras 3x metros más, luego usas 2x metros en una instalación, ¿cuántos metros de cable te quedan?', 
    '10x', 
    '6x', 
    '5x', 
    '4x', 
    'C', 
    5, 
    7, 
    'Operaciones con términos semejantes. Adición y sustracción'
),

-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Dificultad con coeficientes fraccionarios', 
    'Cuando trabajamos con términos semejantes que tienen coeficientes fraccionarios, es importante recordar las reglas de suma y resta de fracciones. Considera la expresión (1/2)a + (3/4)a - (1/8)a. Para combinar estos términos correctamente, debemos encontrar un denominador común y operar cuidadosamente los numeradores.', 
    NULL, 
    NULL, 
    NULL, 
    'Al simplificar (1/2)x + (3/4)x - (1/8)x, ¿cuál es el resultado correcto?', 
    '(9/8)x', 
    '(5/8)x', 
    '(7/8)x', 
    '(11/8)x', 
    'D', 
    5, 
    7, 
    'Operaciones con términos semejantes. Adición y sustracción'
),

-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Reto con múltiples variables', 
    'En expresiones algebraicas más complejas, podemos encontrar términos con múltiples variables que son semejantes. Por ejemplo, en la expresión 3xy² - 2x²y + 5xy² + 4x²y, debemos identificar cuidadosamente qué términos pueden combinarse, considerando tanto las variables como sus exponentes.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es la forma simplificada de 2ab + 3a²b - 5ab + 4a²b?', 
    '-3ab + 7a²b', 
    '7ab + 7a²b', 
    '-3ab - 7a²b', 
    '7ab - 7a²b', 
    'A', 
    5, 
    7, 
    'Operaciones con términos semejantes. Adición y sustracción'
);

--TEMA 15: Reducción de términos en un polinomio
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Simplificación básica de polinomios',
    'La reducción de términos en un polinomio es una habilidad fundamental en álgebra que consiste en combinar términos semejantes para simplificar la expresión. Los términos semejantes son aquellos que tienen las mismas variables elevadas a los mismos exponentes. Por ejemplo, en el polinomio 3x + 2y - 5x + 7, los términos 3x y -5x son semejantes.',
    NULL,
    NULL,
    NULL,
    'Al reducir el polinomio 4a + 3b - 2a + 5, ¿cuál es la expresión simplificada correcta?',
    '2a + 3b + 5',
    '6a + 3b + 5',
    '4a + 3b - 2a + 5',
    '2a + 8b',
    'A',
    5,
    7,
    'Reducción de términos en un polinomio'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Identificación de términos semejantes',
    'Para reducir correctamente un polinomio, primero debemos identificar cuáles términos son semejantes. Recuerda que los coeficientes (los números) pueden ser diferentes, pero las variables y sus exponentes deben ser idénticos para que los términos puedan combinarse.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes opciones muestra correctamente los términos semejantes en el polinomio 5x²y - 3xy + 2x²y + 7?',
    '5x²y y -3xy',
    '5x²y y 2x²y',
    '-3xy y 7',
    '2x²y y 7',
    'B',
    5,
    7,
    'Reducción de términos en un polinomio'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Reducción con coeficientes negativos',
    'Cuando trabajamos con polinomios que contienen coeficientes negativos, debemos tener especial cuidado al combinar los términos. La suma de un término positivo y uno negativo equivale a restar sus valores absolutos, conservando el signo del término con mayor valor absoluto.',
    NULL,
    NULL,
    NULL,
    'Al reducir el polinomio -2m + 5n - 7m - 3n, ¿cuál es el resultado correcto?',
    '-9m + 2n',
    '-5m + 8n',
    '5m - 10n',
    '-9m - 2n',
    'A',
    5,
    7,
    'Reducción de términos en un polinomio'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con múltiples variables',
    'En polinomios con más de una variable, los términos solo son semejantes si todas las variables y sus respectivos exponentes coinciden exactamente. Por ejemplo, 4xy² y -2xy² son semejantes, pero 3x²y y 5xy² no lo son, a pesar de contener las mismas variables.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la forma reducida del polinomio 3p²q + 2pq - 5p²q + 4pq + 7?',
    '-2p²q + 6pq + 7',
    '8p²q + 6pq + 7',
    '-2p²q - 2pq + 7',
    '8p²q - 2pq + 7',
    'A',
    5,
    7,
    'Reducción de términos en un polinomio'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Aplicación práctica de reducción de polinomios',
    'La reducción de polinomios no es solo un ejercicio académico; tiene aplicaciones prácticas en física, ingeniería y economía. Simplificar expresiones algebraicas nos permite resolver problemas complejos de manera más eficiente y comprender mejor las relaciones entre variables.',
    NULL,
    NULL,
    NULL,
    'Si tenemos la expresión (4x + 3y - 2z) + (2x - 5y + z), ¿cuál es el resultado de reducirla correctamente?',
    '6x - 2y - z',
    '2x + 8y - 3z',
    '6x - 8y - z',
    '6x - 2y - 3z',
    'A',
    5,
    7,
    'Reducción de términos en un polinomio'
);

--TEMA 16: Coeficientes racionales en Q para un polinomio
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Identificación de coeficientes racionales',
    'Los polinomios pueden tener coeficientes de diferentes tipos, incluyendo números racionales. Un polinomio con coeficientes en Q (números racionales) es aquel donde todos los coeficientes pueden expresarse como fracciones de números enteros. Por ejemplo, en el polinomio P(x) = (1/2)x² + (3/4)x - 5/7, todos los coeficientes son números racionales.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes polinomios tiene todos sus coeficientes en Q (números racionales)?',
    'P(x) = 2x³ - 0.5x + 1',
    'P(x) = (1/3)x² + (4/5)x - 2/7',
    'P(x) = √2x² + πx - 1',
    'P(x) = x⁴ + e',
    'B',
    5,
    7,
    'Coeficientes racionales en Q para un polinomio'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Reconocimiento de coeficientes no racionales',
    'Es importante diferenciar entre coeficientes racionales y no racionales en un polinomio. Los números racionales son aquellos que pueden expresarse como una fracción a/b donde a y b son enteros y b ≠ 0. Números como π, √2 o e no son racionales y su presencia como coeficientes hace que el polinomio no tenga todos sus coeficientes en Q.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes polinomios NO tiene todos sus coeficientes en Q?',
    'P(x) = (2/3)x + (5/8)',
    'P(x) = 0.75x² - 1.2',
    'P(x) = √3x³ + (1/2)x',
    'P(x) = x⁵ - (3/4)x² + 0.6',
    'C',
    5,
    7,
    'Coeficientes racionales en Q para un polinomio'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Conversión de decimales a fracciones',
    'Algunos números decimales son racionales porque pueden expresarse como fracciones. Por ejemplo, 0.5 = 1/2 y 0.333... = 1/3. Sin embargo, decimales no periódicos como π = 3.14159... no pueden expresarse como fracciones exactas y por lo tanto no son racionales.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes coeficientes NO representa un número racional?',
    '0.6 (que equivale a 3/5)',
    '0.125 (que equivale a 1/8)',
    '0.333... (que equivale a 1/3)',
    '0.123456789101112... (patrón no repetitivo)',
    'D',
    5,
    7,
    'Coeficientes racionales en Q para un polinomio'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con coeficientes mixtos',
    'Al trabajar con polinomios, es común encontrar expresiones que combinan diferentes tipos de coeficientes. Para determinar si un polinomio tiene todos sus coeficientes en Q, debemos examinar cada uno de ellos individualmente y verificar si pueden expresarse como fracciones de enteros.',
    NULL,
    NULL,
    NULL,
    'Dado el polinomio P(x) = (1/2)x³ + 0.6x² - √4, ¿todos sus coeficientes son racionales?',
    'Sí, porque √4 = 2 que es racional',
    'No, porque 0.6 no es racional',
    'No, porque (1/2) no es racional',
    'No se puede determinar',
    'A',
    5,
    7,
    'Coeficientes racionales en Q para un polinomio'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Identificación de términos racionales',
    'Un polinomio puede tener múltiples términos y es fundamental identificar correctamente cada coeficiente. Recordemos que números enteros como -3, 0 o 7 también son racionales porque pueden expresarse como fracciones (-3/1, 0/1, 7/1 respectivamente).',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes expresiones representa un coeficiente racional en un polinomio?',
    '√9/4',
    'π/2',
    'ln(2)',
    'e/3',
    'A',
    5,
    7,
    'Coeficientes racionales en Q para un polinomio'
);

--TEMA 17: Valor numérico de un polinomio
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Evaluación de polinomios básicos',
    'Para calcular el valor numérico de un polinomio, debemos sustituir las variables por los valores dados y realizar las operaciones correspondientes. Considera el polinomio P(x) = 2x + 3 para resolver la siguiente pregunta:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor de P(4) para el polinomio P(x) = 2x + 3?',
    '11',
    '10',
    '9',
    '8',
    'A',
    5,
    7,
    'Valor numérico de un polinomio'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con coeficientes diferentes',
    'Los polinomios pueden tener diferentes coeficientes y términos. Analiza cuidadosamente el siguiente polinomio Q(y) = 3y² - 2y + 5 antes de responder la pregunta:',
    NULL,
    NULL,
    NULL,
    'Si Q(y) = 3y² - 2y + 5, ¿cuál es el valor de Q(1)?',
    '6',
    '5',
    '4',
    '3',
    'A',
    5,
    7,
    'Valor numérico de un polinomio'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con múltiples variables',
    'Algunos polinomios pueden tener más de una variable. Para el polinomio R(a,b) = 4a + 2b - 3, sigue los pasos adecuados para encontrar su valor numérico:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor de R(2,3) para el polinomio R(a,b) = 4a + 2b - 3?',
    '11',
    '10',
    '9',
    '8',
    'A',
    5,
    7,
    'Valor numérico de un polinomio'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Aplicación práctica de polinomios',
    'Los polinomios tienen muchas aplicaciones en la vida real. Imagina que la altura de un proyectil está dada por el polinomio H(t) = -5t² + 20t, donde t es el tiempo en segundos:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la altura del proyectil cuando t = 2 segundos, según el polinomio H(t) = -5t² + 20t?',
    '20 metros',
    '25 metros',
    '30 metros',
    '35 metros',
    'A',
    5,
    7,
    'Valor numérico de un polinomio'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con exponentes mayores',
    'Los polinomios pueden incluir términos con exponentes mayores. Considera el polinomio S(z) = z³ - 2z² + z - 1 para resolver la siguiente pregunta:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor de S(2) para el polinomio S(z) = z³ - 2z² + z - 1?',
    '1',
    '2',
    '3',
    '4',
    'A',
    5,
    7,
    'Valor numérico de un polinomio'
);

--TEMA 18: Grado relativo de un polinomio
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Identificando el grado relativo',
    'El grado relativo de un polinomio respecto a una variable es el mayor exponente que tiene dicha variable en el polinomio. Por ejemplo, en el polinomio 3x²y + 5xy³ - 2y², el grado relativo respecto a x es 2 (por el término 3x²y) y respecto a y es 3 (por el término 5xy³). Analiza el siguiente polinomio: P(x,y) = 4x³y² - 2x²y⁴ + 7xy - 3y⁵',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado relativo del polinomio P(x,y) respecto a la variable y?',
    '2',
    '3',
    '4',
    '5',
    'D',
    5,
    7,
    'Grado relativo de un polinomio'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Comparando grados relativos',
    'En el estudio de polinomios con múltiples variables, es fundamental comprender cómo determinar el grado relativo para cada variable independientemente. Considera el polinomio Q(a,b) = 6a⁴b³ - 3a²b⁵ + ab⁶ + 2a³b² - b⁷',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la diferencia entre el grado relativo respecto a "a" y el grado relativo respecto a "b" en el polinomio Q(a,b)?',
    '1',
    '2',
    '3',
    '4',
    'C',
    5,
    7,
    'Grado relativo de un polinomio'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con múltiples términos',
    'El grado relativo no se determina por la suma de los exponentes, sino por el mayor exponente de la variable específica que se está considerando. Examina el siguiente polinomio: R(m,n) = 5m³n² - 2m⁴n + 8mn⁵ - 3m²n⁴ + m⁵',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado relativo del polinomio R(m,n) respecto a la variable m?',
    '3',
    '4',
    '5',
    '6',
    'C',
    5,
    7,
    'Grado relativo de un polinomio'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Identificación en expresiones complejas',
    'A veces los polinomios pueden tener términos con coeficientes fraccionarios o decimales, pero esto no afecta el cálculo del grado relativo. Observa el polinomio: S(p,q) = 0.5p²q⁴ - 1.2p³q + 3pq⁵ + (2/3)p⁴q³ - q⁶',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado relativo del polinomio S(p,q) respecto a la variable q?',
    '4',
    '5',
    '6',
    '7',
    'C',
    5,
    7,
    'Grado relativo de un polinomio'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Análisis de polinomios homogéneos',
    'En algunos polinomios, el grado relativo puede ser el mismo para todas las variables. Analiza el polinomio: T(x,y,z) = 2x³y²z - 5x²y³z + 4xy⁴z - 3y⁵z + x⁴yz²',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado relativo del polinomio T(x,y,z) respecto a la variable z?',
    '1',
    '2',
    '3',
    '4',
    'B',
    5,
    7,
    'Grado relativo de un polinomio'
);

--TEMA 19: Grado absoluto de un polinomio
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Identificando el grado absoluto',
    'El grado absoluto de un polinomio es la mayor suma de los exponentes de las variables en cada uno de sus términos. Considera el siguiente polinomio: P(x,y) = 3x²y³ + 5x⁴y - 2xy⁵. Para determinar su grado absoluto, debemos analizar cada término por separado y luego identificar el mayor valor obtenido.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado absoluto del polinomio P(x,y) = 3x²y³ + 5x⁴y - 2xy⁵?',
    '6',
    '5',
    '7',
    '4',
    'B',
    5,
    7,
    'Grado absoluto de un polinomio'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Cálculo en polinomios complejos',
    'Al trabajar con polinomios de varias variables, el cálculo del grado absoluto requiere atención a cada componente. Analiza el polinomio Q(a,b,c) = 4a³b²c - a²b⁴c³ + 6ab²c². Cada término tiene variables con diferentes exponentes que deben sumarse adecuadamente para encontrar el grado absoluto del polinomio completo.',
    NULL,
    NULL,
    NULL,
    'Determina el grado absoluto del polinomio Q(a,b,c) = 4a³b²c - a²b⁴c³ + 6ab²c²',
    '8',
    '9',
    '7',
    '6',
    'B',
    5,
    7,
    'Grado absoluto de un polinomio'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Comparación de términos polinómicos',
    'En el estudio de polinomios, es fundamental comprender cómo se determina el grado absoluto. Observa el siguiente polinomio: R(m,n) = m⁵n² - 3m³n⁴ + 8m²n³. Cada término presenta una combinación diferente de exponentes para las variables m y n, lo que afecta el grado absoluto del polinomio.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado absoluto del polinomio R(m,n) = m⁵n² - 3m³n⁴ + 8m²n³?',
    '7',
    '6',
    '5',
    '8',
    'A',
    5,
    7,
    'Grado absoluto de un polinomio'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Polinomios con múltiples variables',
    'El grado absoluto se calcula diferente al grado relativo. Para el polinomio S(x,y,z) = 2x⁴y³z² - x³y²z⁵ + 5x²yz⁴, es necesario sumar los exponentes de todas las variables en cada término antes de compararlos para hallar el mayor, que será el grado absoluto del polinomio.',
    NULL,
    NULL,
    NULL,
    'Calcula el grado absoluto del polinomio S(x,y,z) = 2x⁴y³z² - x³y²z⁵ + 5x²yz⁴',
    '10',
    '9',
    '11',
    '8',
    'B',
    5,
    7,
    'Grado absoluto de un polinomio'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Aplicación del grado absoluto',
    'Comprender el concepto de grado absoluto es esencial en álgebra. Examina el polinomio T(p,q) = 6p⁷q - 2p³q⁵ + 4pq⁶. Para encontrar su grado absoluto, debes sumar los exponentes de p y q en cada término y luego seleccionar el valor más alto entre los resultados obtenidos.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el grado absoluto del polinomio T(p,q) = 6p⁷q - 2p³q⁵ + 4pq⁶?',
    '8',
    '7',
    '6',
    '9',
    'A',
    5,
    7,
    'Grado absoluto de un polinomio'
);

--TEMA 20: División de polinomios: Horner y Ruffini
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Aplicación del método de Horner',
    'El método de Horner es una técnica eficiente para dividir polinomios, especialmente cuando el divisor es de la forma (x - a). Considera el polinomio P(x) = 2x³ - 5x² + 3x - 1 que deseas dividir entre (x - 2). Siguiendo los pasos del método de Horner, primero debes escribir los coeficientes del polinomio en orden descendente y luego realizar las operaciones correspondientes.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de dividir P(x) = 2x³ - 5x² + 3x - 1 entre (x - 2) usando el método de Horner?',
    '2x² - x + 1 con residuo 1',
    '2x² + x + 5 con residuo 9',
    '2x² - 3x + 9 con residuo 17',
    '2x² + 3x - 1 con residuo 0',
    'B',
    5,
    7,
    'División de polinomios: Horner y Ruffini'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Uso del método de Ruffini',
    'El método de Ruffini es una simplificación del método de Horner aplicable cuando el divisor es un binomio de la forma (x - a). Imagina que tienes el polinomio Q(x) = x⁴ - 3x³ + 2x² - x + 5 y necesitas dividirlo entre (x + 1). El proceso implica evaluar el polinomio en x = -1 y construir una tabla con los coeficientes.',
    NULL,
    NULL,
    NULL,
    'Al dividir Q(x) = x⁴ - 3x³ + 2x² - x + 5 entre (x + 1) usando Ruffini, ¿cuál es el residuo obtenido?',
    '12',
    '10',
    '8',
    '6',
    'A',
    5,
    7,
    'División de polinomios: Horner y Ruffini'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Comparación entre Horner y Ruffini',
    'Ambos métodos, Horner y Ruffini, son útiles para dividir polinomios, pero tienen diferencias clave. Mientras que el método de Horner puede usarse con divisores de cualquier grado, el método de Ruffini está limitado a divisores lineales de la forma (x - a). Sin embargo, Ruffini es más sencillo de aplicar en estos casos particulares.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes afirmaciones sobre los métodos de Horner y Ruffini es correcta?',
    'Ruffini puede usarse con divisores cuadráticos',
    'Horner solo funciona con divisores lineales',
    'Ruffini es un caso particular de Horner para divisores (x - a)',
    'Horner no puede calcular el residuo de la división',
    'C',
    5,
    7,
    'División de polinomios: Horner y Ruffini'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Identificación de coeficientes en Horner',
    'Para aplicar correctamente el método de Horner, es fundamental identificar y ordenar adecuadamente los coeficientes del polinomio. Considera el polinomio R(x) = 3x⁵ - 2x³ + 4x - 7. Antes de comenzar la división entre (x - 3), debes asegurarte de incluir los coeficientes de todas las potencias, incluso aquellos que son cero.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la secuencia correcta de coeficientes para R(x) = 3x⁵ - 2x³ + 4x - 7 al aplicar Horner?',
    '3, -2, 4, -7',
    '3, 0, -2, 0, 4, -7',
    '3, 1, -2, 1, 4, -7',
    '3, -2, 0, 4, 0, -7',
    'B',
    5,
    7,
    'División de polinomios: Horner y Ruffini'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Aplicación práctica de Ruffini',
    'El método de Ruffini no solo sirve para dividir polinomios, sino también para evaluarlos eficientemente. Si tienes el polinomio S(x) = 4x³ - 2x² + 5x - 3 y necesitas encontrar S(2), puedes usar Ruffini para obtener el resultado de manera más rápida que sustituyendo directamente.',
    NULL,
    NULL,
    NULL,
    'Usando Ruffini, ¿cuál es el valor de S(2) para el polinomio S(x) = 4x³ - 2x² + 5x - 3?',
    '23',
    '27',
    '31',
    '35',
    'C',
    5,
    7,
    'División de polinomios: Horner y Ruffini'
);

--TEMA 21: Potenciación: Potencia
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Concepto básico de potenciación', 
    'La potenciación es una operación matemática que consiste en multiplicar un número por sí mismo varias veces. Por ejemplo, 3 elevado a la potencia 4 (3⁴) significa 3 × 3 × 3 × 3. Es fundamental comprender esta operación para resolver problemas más complejos en álgebra y aritmética.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el resultado de 5 elevado a la potencia 3 (5³)?', 
    '125', 
    '15', 
    '25', 
    '50', 
    'A', 
    5, 
    7, 
    'Potenciación: Potencia'
),
-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Identificación de elementos', 
    'En una expresión de potenciación como 2⁵ = 32, el número 2 se llama base y representa el factor que se multiplica, el número 5 se llama exponente e indica cuántas veces se multiplica la base por sí misma, y el 32 es el resultado o potencia. Reconocer estos elementos es esencial para trabajar con potencias.', 
    NULL, 
    NULL, 
    NULL, 
    'En la expresión 7⁴ = 2401, ¿qué representa el número 4?', 
    'La base', 
    'El resultado', 
    'El exponente', 
    'La potencia', 
    'C', 
    5, 
    7, 
    'Potenciación: Potencia'
),
-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Cálculo de potencias', 
    'Para calcular potencias correctamente, es importante entender que el exponente indica la cantidad de veces que la base se multiplica por sí misma. Por ejemplo, 4³ significa 4 × 4 × 4, no 4 × 3. Este concepto es fundamental para evitar errores comunes en el cálculo de potencias.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el valor de 10 elevado a la potencia 5 (10⁵)?', 
    '10000', 
    '100000', 
    '1000', 
    '100', 
    'B', 
    5, 
    7, 
    'Potenciación: Potencia'
),
-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Aplicación práctica', 
    'Las potencias tienen muchas aplicaciones en la vida real, como en el cálculo de áreas y volúmenes, en el crecimiento exponencial de poblaciones o en el interés compuesto. Por ejemplo, si un cuadrado tiene lados de 6 metros, su área se calcula como 6² (6 × 6) metros cuadrados.', 
    NULL, 
    NULL, 
    NULL, 
    'Si un cubo tiene aristas de 3 cm, ¿cuál es su volumen expresado como potencia?', 
    '3¹ cm³', 
    '3² cm³', 
    '3³ cm³', 
    '3⁴ cm³', 
    'C', 
    5, 
    7, 
    'Potenciación: Potencia'
),
-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Potencia con base 1', 
    'Un caso especial en potenciación es cuando la base es 1. No importa cuál sea el exponente, el resultado siempre será 1 porque 1 multiplicado por sí mismo cualquier cantidad de veces sigue siendo 1. Este es un concepto importante para comprender las propiedades de las potencias.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el resultado de 1 elevado a la potencia 15 (1¹⁵)?', 
    '15', 
    '1', 
    '0', 
    '115', 
    'B', 
    5, 
    7, 
    'Potenciación: Potencia'
);

--TEMA 22: Potenciación con exponente natural
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Concepto básico de potenciación',
    'La potenciación es una operación matemática que consiste en multiplicar un número por sí mismo varias veces. El número que se multiplica se llama base, y el número que indica cuántas veces se multiplica la base por sí misma se llama exponente. Por ejemplo, en 5³, 5 es la base y 3 es el exponente.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes expresiones representa correctamente "siete elevado a la cuarta potencia"?',
    '7 × 4',
    '7 + 7 + 7 + 7',
    '7 × 7 × 7 × 7',
    '4 × 4 × 4 × 4 × 4 × 4 × 4',
    'C',
    5,
    7,
    'Potenciación con exponente natural'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Cálculo de potencias simples',
    'Para calcular el valor de una potencia, debemos multiplicar la base por sí misma tantas veces como indique el exponente. Es importante recordar que cualquier número elevado a la potencia 1 es igual al mismo número, y cualquier número elevado a la potencia 0 es igual a 1 (excepto cuando la base es 0).',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de 2 elevado a la quinta potencia (2⁵)?',
    '10',
    '16',
    '32',
    '64',
    'C',
    5,
    7,
    'Potenciación con exponente natural'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Identificación de elementos',
    'En una expresión de potenciación como 4³ = 64, podemos identificar tres elementos principales: la base (4), el exponente (3) y el resultado o potencia (64). Comprender estos elementos es fundamental para trabajar con potencias.',
    NULL,
    NULL,
    NULL,
    'En la expresión 9² = 81, ¿qué representa el número 2?',
    'La base',
    'El exponente',
    'El resultado',
    'El producto',
    'B',
    5,
    7,
    'Potenciación con exponente natural'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Aplicación en problemas',
    'Las potencias tienen muchas aplicaciones en la vida real, como en el cálculo de áreas y volúmenes, en el crecimiento exponencial de poblaciones o en el cálculo de intereses compuestos. Comprender su uso práctico ayuda a resolver problemas cotidianos.',
    NULL,
    NULL,
    NULL,
    'Si un cuadrado tiene lados de 5 cm de longitud, ¿cómo se puede expresar su área usando potencias?',
    '5 + 5 cm²',
    '5 × 2 cm²',
    '5² cm²',
    '2⁵ cm²',
    'C',
    5,
    7,
    'Potenciación con exponente natural'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Comparación de potencias',
    'Al comparar potencias, es importante evaluar tanto la base como el exponente. Dos potencias pueden tener el mismo valor incluso si sus bases y exponentes son diferentes, como 2⁴ = 16 y 4² = 16.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes igualdades es correcta?',
    '3³ = 9',
    '4² = 8',
    '5³ = 125',
    '2⁵ = 50',
    'C',
    5,
    7,
    'Potenciación con exponente natural'
);

--TEMA 23: Propiedades de la potenciación con exponente natural
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Producto de potencias', 
'La propiedad del producto de potencias de igual base establece que al multiplicar dos potencias con la misma base, se conserva la base y se suman los exponentes. Por ejemplo: 2³ × 2⁴ = 2⁷. Esta propiedad es fundamental para simplificar expresiones exponenciales complejas.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de aplicar la propiedad del producto de potencias a la expresión 5² × 5⁴?', 
'5⁶', '5⁸', '25⁶', '10⁶', 
'A', 5, 7, 'Propiedades de la potenciación con exponente natural'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Cociente de potencias', 
'La propiedad del cociente de potencias de igual base nos indica que al dividir dos potencias con la misma base, se mantiene la base y se restan los exponentes. Esta propiedad es muy útil para simplificar fracciones con términos exponenciales y resolver problemas algebraicos.', 
NULL, NULL, NULL, 
'Si tenemos la expresión 7⁵ ÷ 7², ¿cuál sería el resultado correcto aplicando la propiedad del cociente de potencias?', 
'7³', '7⁷', '7¹⁰', '49³', 
'A', 5, 7, 'Propiedades de la potenciación con exponente natural'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Potencia de una potencia', 
'Cuando tenemos una potencia elevada a otro exponente, como (3²)⁴, aplicamos la propiedad llamada "potencia de una potencia". En estos casos, se multiplican los exponentes manteniendo la base original. Esta propiedad es esencial para resolver ecuaciones exponenciales y expresiones algebraicas complejas.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de desarrollar la expresión (4³)² aplicando la propiedad correspondiente?', 
'4⁵', '4⁶', '4⁹', '16³', 
'B', 5, 7, 'Propiedades de la potenciación con exponente natural'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Potencia con exponente cero', 
'Una propiedad interesante de la potenciación es que cualquier número (excepto cero) elevado a la potencia cero es igual a 1. Esta propiedad puede parecer contraintuitiva al principio, pero es consistente con las otras propiedades de los exponentes y es fundamental en matemáticas avanzadas.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes expresiones es igual a 1 según las propiedades de la potenciación?', 
'0⁰', '5¹', '8⁰', '3⁻¹', 
'C', 5, 7, 'Propiedades de la potenciación con exponente natural'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Distribución en multiplicación', 
'La propiedad distributiva de la potenciación respecto a la multiplicación establece que (a × b)ⁿ = aⁿ × bⁿ. Esto significa que cuando tenemos un producto elevado a una potencia, podemos distribuir el exponente a cada factor. Esta propiedad es muy útil en álgebra y cálculo.', 
NULL, NULL, NULL, 
'Si aplicamos la propiedad distributiva a la expresión (2 × 3)⁴, ¿cuál sería el resultado correcto?', 
'2⁴ + 3⁴', '2⁴ × 3⁴', '6⁴', '6⁸', 
'B', 5, 7, 'Propiedades de la potenciación con exponente natural');

--TEMA 24: Potenciación con exponente racional
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Simplificación de potencias fraccionarias',
    'La potenciación con exponentes racionales es una herramienta fundamental en álgebra que nos permite expresar raíces como potencias. Comprender cómo simplificar estas expresiones es esencial para resolver problemas más complejos. Analiza cuidadosamente la siguiente expresión y determina su forma simplificada:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la forma simplificada de la expresión 8^(2/3)?',
    '2',
    '4',
    '8',
    '16',
    'B',
    5,
    7,
    'Potenciación con exponente racional'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Conversión entre radicales y exponentes',
    'En matemáticas, podemos expresar las raíces como potencias con exponentes fraccionarios. Esta conversión nos permite aplicar las propiedades de las potencias para simplificar expresiones radicales complejas. Considera la siguiente raíz y selecciona su equivalente en forma de potencia:',
    NULL,
    NULL,
    NULL,
    '¿Cómo se expresa √(x^5) en forma de potencia con exponente racional?',
    'x^(5/1)',
    'x^(1/5)',
    'x^(2/5)',
    'x^(5/2)',
    'D',
    5,
    7,
    'Potenciación con exponente racional'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Evaluación de potencias con exponentes negativos',
    'Los exponentes racionales pueden ser positivos o negativos. Cuando el exponente es negativo, aplicamos la propiedad de inverso multiplicativo. Resuelve el siguiente problema considerando esta propiedad fundamental:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor de 16^(-3/4)?',
    '1/2',
    '1/4',
    '1/8',
    '1/16',
    'C',
    5,
    7,
    'Potenciación con exponente racional'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Aplicación de propiedades de potencias',
    'Las propiedades de las potencias nos permiten simplificar expresiones algebraicas complejas. En este caso, aplicaremos la propiedad que relaciona la multiplicación de potencias de igual base. Resuelve el siguiente ejercicio:',
    NULL,
    NULL,
    NULL,
    'Al simplificar la expresión (a^(1/3) * a^(1/6)), ¿cuál es el resultado correcto?',
    'a^(1/9)',
    'a^(1/2)',
    'a^(2/9)',
    'a^(1/18)',
    'B',
    5,
    7,
    'Potenciación con exponente racional'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Resolución de problemas con potencias fraccionarias',
    'En situaciones reales, las potencias con exponentes racionales pueden modelar fenómenos de crecimiento o decrecimiento. Analiza el siguiente problema y selecciona la respuesta correcta:',
    NULL,
    NULL,
    NULL,
    'Si el área de un cuadrado es 64 metros cuadrados, ¿cuánto mide cada lado expresado como potencia de 2?',
    '2^(3) metros',
    '2^(4) metros',
    '2^(5) metros',
    '2^(6) metros',
    'A',
    5,
    7,
    'Potenciación con exponente racional'
);

--TEMA 25: Propiedades de la potenciación con exponente racional
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Simplificación de potencias', 
'La propiedad de potencia de una potencia establece que cuando tienes una potencia elevada a otro exponente, puedes multiplicar los exponentes. Por ejemplo, (a^m)^n = a^(m*n). Esta propiedad es fundamental para simplificar expresiones con exponentes racionales.',
NULL, NULL, NULL, 
'¿Cuál es la forma simplificada de (5^(2/3))^6?', 
'5^4', '5^(12/3)', '5^(2/18)', '5^(1/9)', 
'B', 5, 7, 'Propiedades de la potenciación con exponente racional'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Multiplicación de bases iguales', 
'Cuando multiplicamos potencias de la misma base, sumamos los exponentes. Esta propiedad se extiende a exponentes racionales, donde a^m * a^n = a^(m+n). Es importante recordar que esta propiedad solo aplica cuando las bases son idénticas.',
NULL, NULL, NULL, 
'¿Cuál es el resultado de 3^(1/2) * 3^(3/2)?', 
'3^(4/4)', '3^(4/2)', '3^(3/4)', '3^2', 
'D', 5, 7, 'Propiedades de la potenciación con exponente racional'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'División de potencias', 
'La propiedad de división de potencias de igual base nos indica que al dividir a^m entre a^n, el resultado es a^(m-n). Esta regla es válida incluso cuando los exponentes son fraccionarios. Comprender esta propiedad ayuda a simplificar expresiones algebraicas complejas.',
NULL, NULL, NULL, 
'Simplifica la expresión 8^(5/3) ÷ 8^(2/3)', 
'8^(7/3)', '8^(3/0)', '8^(1)', '8^(3/3)', 
'C', 5, 7, 'Propiedades de la potenciación con exponente racional'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Potencia de un producto', 
'La propiedad de potencia de un producto establece que (a*b)^n = a^n * b^n. Esta propiedad se aplica también cuando n es un exponente racional. Es una herramienta poderosa para descomponer y simplificar expresiones con múltiples factores.',
NULL, NULL, NULL, 
'¿Cuál es el desarrollo correcto de (16x)^(1/2)?', 
'16^(1/2) * x', '4 * x^(1/2)', '16 * x^(1/2)', '4x^(1/2)', 
'D', 5, 7, 'Propiedades de la potenciación con exponente racional'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Exponentes negativos', 
'Un exponente negativo indica el recíproco de la base elevada al valor absoluto del exponente. Para exponentes racionales, a^(-m/n) = 1/(a^(m/n)). Esta propiedad es esencial para transformar expresiones con exponentes negativos en formas más manejables.',
NULL, NULL, NULL, 
'¿Cómo se expresa 9^(-1/2) de forma positiva?', 
'1/3', '-3', '1/81', '-1/3', 
'A', 5, 7, 'Propiedades de la potenciación con exponente racional');

--TEMA 26: Operaciones de potenciación con paréntesis, llaves, corchetes
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Jerarquía de operaciones con potencias',
    'En matemáticas, es fundamental comprender el orden correcto para resolver operaciones combinadas con potencias. Cuando tenemos expresiones con paréntesis, corchetes y llaves, debemos resolver primero las operaciones dentro de los signos de agrupación más internos, luego las potencias, y finalmente las demás operaciones. Analiza cuidadosamente la siguiente expresión y selecciona la respuesta correcta:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado correcto de la siguiente operación: {[(2³)² + 5] × 2}?',
    '138',
    '142',
    '126',
    '154',
    'A',
    5,
    7,
    'Operaciones de potenciación con paréntesis, llaves, corchetes'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Resolución de potencias anidadas',
    'Las potencias anidadas requieren especial atención al orden de resolución. Recuerda que cuando tienes una potencia elevada a otra potencia, debes multiplicar los exponentes. También es importante resolver primero las operaciones dentro de los paréntesis más internos antes de aplicar las propiedades de las potencias. Considera la siguiente expresión:',
    NULL,
    NULL,
    NULL,
    'Calcula el valor de: [3^(2+1)] × {2^[4-(1+1)]}',
    '216',
    '192',
    '144',
    '288',
    'D',
    5,
    7,
    'Operaciones de potenciación con paréntesis, llaves, corchetes'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Operaciones combinadas con signos de agrupación',
    'Para resolver problemas con múltiples niveles de agrupación (paréntesis, corchetes y llaves), debemos comenzar desde el nivel más interno hacia el externo. Las potencias tienen prioridad sobre las multiplicaciones y divisiones en cada nivel. Presta atención a la siguiente expresión matemática:',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de: {5 + [2 × (3² - 1)]^2}?',
    '289',
    '261',
    '325',
    '341',
    'A',
    5,
    7,
    'Operaciones de potenciación con paréntesis, llaves, corchetes'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Aplicación de propiedades de potencias',
    'Al trabajar con expresiones que combinan diferentes operaciones y signos de agrupación, es esencial aplicar correctamente las propiedades de las potencias. Recuerda que (a^m)^n = a^(m×n) y que a^m × a^n = a^(m+n). Analiza detenidamente el siguiente problema:',
    NULL,
    NULL,
    NULL,
    'Resuelve: [(2² × 2³)^2] ÷ {[2^(3+2)] - 16}',
    '16',
    '8',
    '32',
    '4',
    'C',
    5,
    7,
    'Operaciones de potenciación con paréntesis, llaves, corchetes'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Desafío de potencias complejas',
    'Los problemas más complejos de potenciación requieren resolver paso a paso cada nivel de agrupación, aplicando las propiedades de los exponentes en el orden correcto. Es importante mantener la calma y resolver sistemáticamente cada parte de la expresión. Intenta resolver el siguiente ejercicio:',
    NULL,
    NULL,
    NULL,
    'Calcula el valor de: {[3^(2×2)] - [2^(1+3)]} × [(5+3)^(3-1)]',
    '1600',
    '1808',
    '1472',
    '1344',
    'B',
    5,
    7,
    'Operaciones de potenciación con paréntesis, llaves, corchetes'
);

--TEMA 27: Leyes de exponentes
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Multiplicación de potencias',
    'Las leyes de exponentes son fundamentales para simplificar expresiones algebraicas. Cuando multiplicamos potencias con la misma base, mantenemos la base y sumamos los exponentes. Por ejemplo, 2³ × 2⁴ = 2⁷. Esta propiedad nos permite trabajar con números grandes de manera más eficiente.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de 5² × 5³ aplicando las leyes de exponentes?',
    '5⁵',
    '5⁶',
    '25⁵',
    '10⁵',
    'A',
    5,
    7,
    'Leyes de exponentes'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'División de potencias',
    'Al dividir potencias con la misma base, mantenemos la base y restamos los exponentes. Esta regla es muy útil para simplificar fracciones con exponentes. Por ejemplo, 7⁸ ÷ 7² = 7⁶. Comprender esta propiedad es esencial para resolver problemas más complejos de álgebra.',
    NULL,
    NULL,
    NULL,
    'Si tenemos la expresión 4⁷ ÷ 4⁴, ¿cuál es el resultado correcto?',
    '4³',
    '4¹¹',
    '1³',
    '16³',
    'A',
    5,
    7,
    'Leyes de exponentes'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Potencia de una potencia',
    'Cuando elevamos una potencia a otra potencia, multiplicamos los exponentes. Por ejemplo, (3²)⁴ = 3⁸. Esta propiedad es particularmente importante cuando trabajamos con expresiones exponenciales complejas o en la resolución de ecuaciones.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor simplificado de (2³)²?',
    '2⁵',
    '2⁶',
    '2⁹',
    '4⁶',
    'B',
    5,
    7,
    'Leyes de exponentes'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Exponente cero',
    'Una de las propiedades más interesantes de los exponentes es que cualquier número (excepto cero) elevado a la potencia cero es igual a 1. Esto puede parecer contraintuitivo al principio, pero es consistente con las otras reglas de los exponentes y tiene aplicaciones importantes en matemáticas.',
    NULL,
    NULL,
    NULL,
    'Según las propiedades de los exponentes, ¿cuál es el valor de 9⁰?',
    '0',
    '1',
    '9',
    'No está definido',
    'B',
    5,
    7,
    'Leyes de exponentes'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Exponentes negativos',
    'Los exponentes negativos representan el inverso multiplicativo de la base elevada al valor absoluto del exponente. Por ejemplo, 5⁻² = 1/5² = 1/25. Esta propiedad amplía el concepto de exponentes y permite trabajar con fracciones de manera más eficiente.',
    NULL,
    NULL,
    NULL,
    '¿Cómo se expresa 3⁻⁴ como una fracción positiva?',
    '1/3⁴',
    '1/12',
    '-3⁴',
    '1/81',
    'A',
    5,
    7,
    'Leyes de exponentes'
);

--TEMA 28: Radicación
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Raíz cuadrada básica', 
    'La raíz cuadrada es una operación matemática que nos permite encontrar qué número, multiplicado por sí mismo, nos da como resultado el valor dentro del radical. Es fundamental comprender este concepto para resolver problemas más complejos.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el resultado de √36?', 
    '5', 
    '6', 
    '7', 
    '8', 
    'B', 
    5, 
    7, 
    'Radicación'
),
-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Identificando raíces exactas', 
    'Algunos números tienen raíces cuadradas exactas, lo que significa que son cuadrados perfectos. Reconocer estos números es importante para simplificar operaciones matemáticas.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál de los siguientes números tiene una raíz cuadrada exacta?', 
    '20', 
    '25', 
    '30', 
    '35', 
    'B', 
    5, 
    7, 
    'Radicación'
),
-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Cálculo de raíces', 
    'Para calcular raíces cuadradas de números que no son cuadrados perfectos, podemos aproximar el resultado encontrando los cuadrados perfectos más cercanos entre los que se encuentra el número.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Entre qué dos números enteros consecutivos se encuentra √50?', 
    '5 y 6', 
    '6 y 7', 
    '7 y 8', 
    '8 y 9', 
    'C', 
    5, 
    7, 
    'Radicación'
),
-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Propiedades de la radicación', 
    'La radicación tiene propiedades importantes que nos permiten simplificar expresiones matemáticas. Una de ellas es que la raíz cuadrada de un producto es igual al producto de las raíces cuadradas de los factores.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el resultado de √(9 × 16)?', 
    '12', 
    '15', 
    '18', 
    '21', 
    'A', 
    5, 
    7, 
    'Radicación'
),
-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Aplicación práctica de raíces', 
    'Las raíces cuadradas tienen muchas aplicaciones en la vida real, como en el cálculo de áreas, distancias o en problemas de física. Comprender su uso práctico ayuda a consolidar el aprendizaje.', 
    NULL, 
    NULL, 
    NULL, 
    'Si el área de un cuadrado es 64 cm², ¿cuánto mide cada lado?', 
    '6 cm', 
    '7 cm', 
    '8 cm', 
    '9 cm', 
    'C', 
    5, 
    7, 
    'Radicación'
);

--TEMA 29: Operaciones combinadas con potenciación y radicación
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Resolución de expresión con potencias', 
    'Las operaciones combinadas con potenciación y radicación requieren seguir un orden específico de operaciones. Primero se resuelven las potencias y raíces, luego las multiplicaciones y divisiones, y finalmente las sumas y restas. Resuelve la siguiente expresión:', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el resultado de 5² + √16 × 3?', 
    '37', 
    '43', 
    '31', 
    '29', 
    'C', 
    5, 
    7, 
    'Operaciones combinadas con potenciación y radicación'
),

-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Jerarquía de operaciones', 
    'Al resolver expresiones matemáticas complejas, es fundamental aplicar correctamente la jerarquía de operaciones. Recuerda que las potencias y raíces tienen prioridad sobre otras operaciones. Analiza cuidadosamente el siguiente problema:', 
    NULL, 
    NULL, 
    NULL, 
    'Calcula el valor de: (2³ - √9) × 4 + 5', 
    '25', 
    '29', 
    '33', 
    '37', 
    'B', 
    5, 
    7, 
    'Operaciones combinadas con potenciación y radicación'
),

-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Problema con raíces cuadradas', 
    'La radicación es la operación inversa a la potenciación. Cuando trabajamos con raíces cuadradas en operaciones combinadas, debemos resolverlas antes que las multiplicaciones, divisiones, sumas o restas. Resuelve el siguiente ejercicio:', 
    NULL, 
    NULL, 
    NULL, 
    '¿Qué resultado obtienes al calcular 10 + √25 × 2² - 3?', 
    '27', 
    '32', 
    '37', 
    '42', 
    'A', 
    5, 
    7, 
    'Operaciones combinadas con potenciación y radicación'
),

-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Expresión con múltiples operaciones', 
    'En matemáticas, las operaciones combinadas pueden incluir varios tipos de operaciones en una misma expresión. Para resolverlas correctamente, debemos seguir estrictamente el orden de prioridad de las operaciones. Intenta resolver esta expresión:', 
    NULL, 
    NULL, 
    NULL, 
    'Calcula: 4 × 3² + √64 ÷ 2 - 5', 
    '33', 
    '35', 
    '37', 
    '39', 
    'B', 
    5, 
    7, 
    'Operaciones combinadas con potenciación y radicación'
),

-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Desafío de potencias y raíces', 
    'Este ejercicio combina potenciación y radicación en un contexto más complejo, donde es esencial identificar correctamente el orden en que deben resolverse las operaciones para llegar al resultado correcto. Resuelve la siguiente expresión:', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es el valor de (√81 + 2³)² ÷ 5?', 
    '17', 
    '25', 
    '34', 
    '49', 
    'D', 
    5, 
    7, 
    'Operaciones combinadas con potenciación y radicación'
);

--TEMA 30: Números enteros: Adición y sustracción
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES
(
    'MATEMÁTICA',
    NULL,
    'Suma de temperaturas',
    'Durante un experimento científico, se midieron las temperaturas en dos momentos diferentes del día en una ciudad del altiplano. En la mañana, la temperatura fue de -3 grados Celsius y por la tarde aumentó en 5 grados Celsius. Este tipo de operaciones es fundamental para interpretar datos climáticos.',
    NULL,
    NULL,
    NULL,
    '¿Cuál fue la temperatura final por la tarde?',
    '2',
    '1',
    '0',
    '-2',
    'A',
    5,
    7,
    'Números enteros: Adición y sustracción'
),
(
    'MATEMÁTICA',
    NULL,
    'Descenso en un edificio',
    'Luis estaba en el piso 10 de un edificio y decidió bajar 7 pisos para llegar a la oficina de su amigo. Este tipo de problema ayuda a comprender cómo se representan los desplazamientos hacia abajo usando números enteros.',
    NULL,
    NULL,
    NULL,
    '¿A qué piso llegó Luis después de bajar los 7 pisos?',
    '2',
    '3',
    '4',
    '5',
    'B',
    5,
    7,
    'Números enteros: Adición y sustracción'
),
(
    'MATEMÁTICA',
    NULL,
    'Sumando deudas y ahorros',
    'Ana tenía una deuda de 12 soles y posteriormente ahorró 20 soles. Comprender cómo combinar cantidades negativas y positivas es clave en la vida diaria para gestionar finanzas personales.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el saldo total de Ana después de estas operaciones?',
    '8',
    '10',
    '12',
    '6',
    'C',
    5,
    7,
    'Números enteros: Adición y sustracción'
),
(
    'MATEMÁTICA',
    NULL,
    'Movimientos en el ascensor',
    'Un ascensor parte desde el piso 0. Sube 5 pisos, luego baja 8 pisos y finalmente sube 3 pisos más. Este ejercicio es útil para practicar cómo se combinan las sumas y restas de enteros en una situación real.',
    NULL,
    NULL,
    NULL,
    '¿En qué piso termina el ascensor?',
    '0',
    '-1',
    '2',
    '3',
    'D',
    5,
    7,
    'Números enteros: Adición y sustracción'
),
(
    'MATEMÁTICA',
    NULL,
    'Juego de puntos',
    'En un juego de mesa, Carlos perdió 15 puntos en la primera ronda y ganó 9 puntos en la segunda ronda. La comprensión de operaciones con enteros permite entender fácilmente estos resultados acumulativos.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la puntuación final de Carlos después de las dos rondas?',
    '-6',
    '-5',
    '-4',
    '-3',
    'A',
    5,
    7,
    'Números enteros: Adición y sustracción'
);


--TEMA 31: Números enteros: Multiplicación y división
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
)
VALUES
-- Pregunta 1
('MATEMÁTICA', 
 NULL,
 'Cálculo de productos negativos',
 'En una competencia, cada punto negativo resta 4 unidades a la puntuación total de un equipo. Si un equipo cometió 7 errores, necesita saber cuánto se le restará en total. Este cálculo es importante para entender cómo los errores afectan el resultado final.',
 NULL,
 NULL,
 NULL,
 '¿Cuál es el resultado de multiplicar -4 por 7?',
 '-28',
 '-21',
 '-24',
 '-32',
 'A',
 5,
 7,
 'Números enteros: Multiplicación y división'),

-- Pregunta 2
('MATEMÁTICA', 
 NULL,
 'División con números negativos',
 'Un número negativo se divide entre otro número negativo, lo cual genera un resultado positivo. En un ejercicio de matemáticas, se pide calcular el resultado de dividir -72 entre -8 para verificar la comprensión de los signos en la división.',
 NULL,
 NULL,
 NULL,
 '¿Cuál es el resultado de -72 ÷ -8?',
 '8',
 '-9',
 '9',
 '-8',
 'C',
 5,
 7,
 'Números enteros: Multiplicación y división'),

-- Pregunta 3
('MATEMÁTICA', 
 NULL,
 'Problema de ganancias y pérdidas',
 'Un comerciante experimenta una pérdida constante de 15 soles diarios durante 12 días consecutivos debido a bajas ventas. Para hacer un análisis financiero, calcula la pérdida total acumulada en ese período.',
 NULL,
 NULL,
 NULL,
 '¿Cuál es el resultado de la operación -15 × 12?',
 '-180',
 '180',
 '-160',
 '-190',
 'A',
 5,
 7,
 'Números enteros: Multiplicación y división'),

-- Pregunta 4
('MATEMÁTICA', 
 NULL,
 'Aplicación de la ley de signos',
 'En un laboratorio, un científico realiza un experimento en el que multiplica -9 por 5, y luego divide el resultado entre -3. Es necesario aplicar correctamente la ley de signos para obtener la respuesta final.',
 NULL,
 NULL,
 NULL,
 '¿Cuál es el resultado de (-9 × 5) ÷ -3?',
 '15',
 '-15',
 '12',
 '-12',
 'B',
 5,
 7,
 'Números enteros: Multiplicación y división'),

-- Pregunta 5
('MATEMÁTICA', 
 NULL,
 'Situación de saldo bancario',
 'Luis tiene una deuda de 240 soles y decide pagarla en 8 cuotas iguales. Para organizar su presupuesto mensual, necesita calcular el monto que debe pagar en cada cuota. Esta operación lo ayuda a planificar sus pagos.',
 NULL,
 NULL,
 NULL,
 '¿Cuánto debe pagar Luis en cada cuota?',
 '-30',
 '30',
 '-40',
 '40',
 'C',
 5,
 7,
 'Números enteros: Multiplicación y división');


--TEMA 32: Operaciones combinadas básicas en Z
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA",
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D",
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
)
VALUES
-- Pregunta 1
('MATEMÁTICA', NULL, 'Resolviendo una operación combinada simple',
 'En una operación matemática combinada, debemos seguir el orden correcto: primero paréntesis, luego multiplicación y división, y por último suma y resta. Considera la siguiente operación cuidadosamente antes de responder.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de: (5 + 3) × 2 - 4?',
 '12', '8', '10', '16', 'A', 5, 7, 'Operaciones combinadas básicas en Z'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Uso correcto de signos en operaciones combinadas',
 'Cuando trabajamos con números enteros, es crucial tener en cuenta las reglas de los signos para evitar errores. Observa la operación a continuación y aplica correctamente las reglas.',
 NULL, NULL, NULL,
 'Resuelve: -3 × (4 - 6) + 5',
 '-1', '11', '7', '-11', 'B', 5, 7, 'Operaciones combinadas básicas en Z'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Resolviendo operaciones con números negativos',
 'Para dominar las operaciones combinadas, es importante practicar con números negativos y asegurarse de respetar la jerarquía de operaciones. Presta atención a los paréntesis.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de: (-2 + 5) × (-3)?',
 '-9', '9', '-3', '3', 'C', 5, 7, 'Operaciones combinadas básicas en Z'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Priorizando operaciones dentro de paréntesis',
 'Recuerda siempre resolver las operaciones dentro de los paréntesis primero. En esta operación, tendrás que combinar todas las reglas aprendidas para obtener la respuesta correcta.',
 NULL, NULL, NULL,
 'Resuelve: (10 - (2 × 3)) + 4',
 '14', '10', '12', '8', 'D', 5, 7, 'Operaciones combinadas básicas en Z'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Aplicando la jerarquía de operaciones',
 'En matemáticas, la jerarquía de operaciones determina el orden en que debes resolver una expresión. Asegúrate de identificar correctamente qué operaciones hacer primero en el siguiente ejercicio.',
 NULL, NULL, NULL,
 'Calcula: 6 + 12 ÷ (2 × 2)',
 '9', '12', '6', '15', 'A', 5, 7, 'Operaciones combinadas básicas en Z');


--TEMA 33: Potenciación y radicación en Z
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Exponente negativo en la vida real',
    'En un experimento de laboratorio, se observó que una bacteria se reduce a la mitad de su tamaño cada hora. Si la bacteria inicialmente medía 2^3 micrómetros, ¿cuál será su tamaño después de 3 horas?',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de 2^3 * 2^(-3)?',
    '1',
    '2',
    '4',
    '8',
    'A',
    5,
    7,
    'Potenciación y radicación en Z'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Resolviendo raíces cuadradas',
    'Una escuela tiene un terreno cuadrado cuya área es de 144 metros cuadrados. Los estudiantes de primer año necesitan calcular la longitud de cada lado del terreno para poder instalar una cerca alrededor.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la longitud de cada lado del terreno?',
    '10 metros',
    '12 metros',
    '14 metros',
    '16 metros',
    'B',
    5,
    7,
    'Potenciación y radicación en Z'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Aplicación de potencias en problemas cotidianos',
    'Luis tiene una caja con 3 canicas y decide duplicarlas cada día durante 4 días consecutivos. Quiere saber cuántas canicas tendrá al final del cuarto día si no pierde ninguna.',
    NULL,
    NULL,
    NULL,
    '¿Cuántas canicas tendrá Luis después de 4 días?',
    '24',
    '32',
    '48',
    '64',
    'C',
    5,
    7,
    'Potenciación y radicación en Z'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Evaluación de raíces cúbicas',
    'En un proyecto escolar, los estudiantes hicieron un cubo de madera cuyo volumen es de 125 cm³. Deben calcular la longitud de cada arista del cubo para comprobar su trabajo.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la longitud de cada arista del cubo?',
    '4 cm',
    '5 cm',
    '6 cm',
    '7 cm',
    'B',
    5,
    7,
    'Potenciación y radicación en Z'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Uso combinado de potenciación y radicación',
    'Ana está resolviendo un ejercicio donde debe simplificar la expresión √(81) + 3². Quiere asegurarse de que el resultado sea correcto antes de entregarlo a su profesor.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado de la expresión?',
    '12',
    '15',
    '18',
    '20',
    'D',
    5,
    7,
    'Potenciación y radicación en Z'
);


--TEMA 34: Operaciones combinadas en Z con potenciación y radicación
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
(
    'MATEMÁTICA',
    NULL,
    'Resolviendo expresiones con potencias y raíces',
    'Un estudiante resuelve la siguiente expresión paso a paso: (3² + 4²) - √49. Primero calcula las potencias, luego suma los resultados y finalmente resta la raíz cuadrada. Este ejercicio le ayuda a reforzar el manejo de operaciones combinadas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado final de la operación (3² + 4²) - √49?',
    '9',
    '16',
    '18',
    '7',
    'A',
    5,
    7,
    'Operaciones combinadas en Z con potenciación y radicación'
),
(
    'MATEMÁTICA',
    NULL,
    'Evaluando una expresión compleja',
    'Pedro intenta resolver la expresión: 5 × (2³) - (√16 + 3). Comienza resolviendo la potencia y la raíz cuadrada, y luego sigue el orden correcto de las operaciones. Este tipo de problema le permite aplicar las reglas básicas de la aritmética combinada.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado final?',
    '37',
    '35',
    '40',
    '42',
    'B',
    5,
    7,
    'Operaciones combinadas en Z con potenciación y radicación'
),
(
    'MATEMÁTICA',
    NULL,
    'Suma y resta con potencias y raíces',
    'Un grupo de alumnos está resolviendo: (6² - 5²) + √81. Ellos aplican primero las potencias, después restan y finalmente suman la raíz cuadrada. Este ejercicio busca reforzar el correcto uso del orden de operaciones.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la respuesta correcta?',
    '12',
    '19',
    '17',
    '20',
    'C',
    5,
    7,
    'Operaciones combinadas en Z con potenciación y radicación'
),
(
    'MATEMÁTICA',
    NULL,
    'Desafío con raíces y potencias',
    'La profesora propone la siguiente operación a sus estudiantes: √64 + (4³ - 2²). Se debe comenzar resolviendo las potencias y la raíz cuadrada antes de sumar. La resolución correcta asegura un dominio sólido en operaciones mixtas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el valor total?',
    '70',
    '64',
    '66',
    '68',
    'D',
    5,
    7,
    'Operaciones combinadas en Z con potenciación y radicación'
),
(
    'MATEMÁTICA',
    NULL,
    'Aplicando las operaciones combinadas',
    'En clase se plantea el siguiente problema: (2² + 3²) × √25. Los estudiantes deben resolver primero las potencias, luego sumar y finalmente multiplicar por la raíz cuadrada. Este ejercicio les ayuda a practicar todas las operaciones básicas en conjunto.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el resultado?',
    '35',
    '25',
    '30',
    '40',
    'A',
    5,
    7,
    'Operaciones combinadas en Z con potenciación y radicación'
);


--TEMA 35: Teoría de números: Múltiplo y divisor
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES
-- Pregunta 1
('MATEMÁTICA', 
 NULL, 
 'Múltiplos en el recreo', 
 'Durante el recreo, un grupo de estudiantes decide organizarse en filas para realizar un juego. Se dan cuenta de que pueden organizarse en grupos de 4, 6 y 12 sin que nadie quede fuera. Este tipo de situaciones es un ejemplo clásico de cómo se aplican los múltiplos en la vida real.', 
 NULL, 
 NULL, 
 NULL, 
 '¿Cuál es el menor número de estudiantes que podría haber en el grupo?', 
 '12', 
 '24', 
 '36', 
 '48', 
 'A', 
 5, 
 7, 
 'Teoría de números: Múltiplo y divisor'),

-- Pregunta 2
('MATEMÁTICA', 
 NULL, 
 'Dividiendo caramelos', 
 'En un taller escolar, la profesora trae una bolsa con 48 caramelos. Ella quiere repartirlos de manera equitativa entre sus alumnos sin que sobre ninguno. La profesora menciona que el número de alumnos debe ser un divisor de 48 para que la repartición sea justa.', 
 NULL, 
 NULL, 
 NULL, 
 '¿Cuál de los siguientes números NO es un divisor de 48?', 
 '3', 
 '5', 
 '8', 
 '12', 
 'B', 
 5, 
 7, 
 'Teoría de números: Múltiplo y divisor'),

-- Pregunta 3
('MATEMÁTICA', 
 NULL, 
 'El reloj de la escuela', 
 'El reloj de la escuela emite un sonido especial cada vez que se cumple una hora exacta. Un estudiante nota que en la primera hora suena una vez, en la segunda hora suena dos veces, y así sucesivamente. Si considera solo las horas que son múltiplos de 5, puede predecir cuántas veces sonará.', 
 NULL, 
 NULL, 
 NULL, 
 '¿Cuántas veces sonará el reloj al llegar a la hora 15?', 
 '10', 
 '12', 
 '15', 
 '20', 
 'C', 
 5, 
 7, 
 'Teoría de números: Múltiplo y divisor'),

-- Pregunta 4
('MATEMÁTICA', 
 NULL, 
 'Problema de los lápices', 
 'Luis y Marta tienen dos cajas con lápices. Luis tiene 36 lápices y Marta tiene 60 lápices. Ellos quieren formar paquetes idénticos sin que sobre ningún lápiz. Para lograrlo, necesitan encontrar el mayor número posible de lápices por paquete, de modo que ambos tengan la misma cantidad de paquetes.', 
 NULL, 
 NULL, 
 NULL, 
 '¿Cuál es el mayor número de lápices que pueden tener cada paquete?', 
 '6', 
 '12', 
 '18', 
 '24', 
 'D', 
 5, 
 7, 
 'Teoría de números: Múltiplo y divisor'),

-- Pregunta 5
('MATEMÁTICA', 
 NULL, 
 'Luces intermitentes', 
 'En una calle, hay dos luces intermitentes. La primera luz se enciende cada 8 segundos, y la segunda cada 12 segundos. Si ambas se encienden al mismo tiempo a las 6:00 pm, un estudiante se pregunta en qué momento volverán a encenderse juntas nuevamente.', 
 NULL, 
 NULL, 
 NULL, 
 '¿Después de cuántos segundos se encenderán juntas de nuevo?', 
 '24', 
 '30', 
 '36', 
 '48', 
 'A', 
 5, 
 7, 
 'Teoría de números: Múltiplo y divisor');


--TEMA 36: Criterios de divisibilidad
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Divisibilidad entre 2',
    'En una competencia escolar, se entregaron camisetas numeradas a cada estudiante. Para identificar rápidamente qué camisetas tienen un número par, los organizadores deben conocer bien el criterio de divisibilidad por 2.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes números es divisible por 2?',
    '135',
    '246',
    '357',
    '579',
    'B',
    5,
    7,
    'Criterios de divisibilidad'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Divisibilidad entre 3',
    'Durante una actividad en clase, la profesora pide a sus alumnos identificar cuáles números son divisibles por 3. Les recuerda que un número es divisible por 3 si la suma de sus cifras es múltiplo de 3.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes números cumple con el criterio de divisibilidad por 3?',
    '124',
    '205',
    '333',
    '451',
    'C',
    5,
    7,
    'Criterios de divisibilidad'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Divisibilidad entre 5',
    'En un juego matemático, los estudiantes deben reconocer rápidamente los números divisibles por 5. La profesora les recuerda que estos números siempre terminan en 0 o en 5.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes números es divisible por 5?',
    '98',
    '102',
    '145',
    '233',
    'C',
    5,
    7,
    'Criterios de divisibilidad'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Divisibilidad entre 9',
    'Para un concurso de cálculo mental, los participantes deben determinar si un número es divisible por 9. La regla que siguen es que si la suma de las cifras del número es un múltiplo de 9, entonces es divisible por 9.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes números es divisible por 9?',
    '729',
    '144',
    '567',
    '812',
    'A',
    5,
    7,
    'Criterios de divisibilidad'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Divisibilidad entre 10',
    'En la última parte del examen, se pide a los alumnos identificar números que sean divisibles por 10. La profesora explica que cualquier número que termine en 0 es divisible por 10.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de los siguientes números es divisible por 10?',
    '350',
    '471',
    '555',
    '619',
    'A',
    5,
    7,
    'Criterios de divisibilidad'
);


--TEMA 37: Números primos y compuestos
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA",
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D",
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
)
VALUES
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Identificación de números primos',
    'En una competencia escolar, los estudiantes deben identificar números primos entre un conjunto dado. La maestra entrega la siguiente serie de números y pide a los alumnos reconocer cuál de ellos es un número primo, teniendo en cuenta las reglas básicas de divisibilidad vistas en clase.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes números es un número primo?',
    '15', '21', '17', '27', 'C', 5, 7, 'Números primos y compuestos'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Distinguir primos y compuestos',
    'En un taller de matemáticas, se entregó una lista de números para clasificar en primos y compuestos. Los alumnos deben recordar que un número compuesto tiene más de dos divisores mientras que los primos solo tienen dos: 1 y sí mismos.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes números es un número compuesto?',
    '11', '13', '14', '17', 'C', 5, 7, 'Números primos y compuestos'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Aplicación práctica de números primos',
    'Pedro está organizando sillas para un evento y quiere alinearlas en filas iguales, pero sobran siempre algunas sillas si intenta formar más de una fila. Esto le hace pensar que la cantidad total de sillas es un número primo. Ha contado un total y anota algunas opciones.',
    NULL, NULL, NULL,
    'Si el número total de sillas es 29, ¿esto significa que el número es?',
    'Un número compuesto', 'Un número primo', 'Un número par', 'Un número impar', 'B', 5, 7, 'Números primos y compuestos'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Factores y números compuestos',
    'Durante una actividad en clase, los estudiantes investigan cuántos divisores tiene cada número. Juan encuentra que uno de los números analizados tiene exactamente cuatro divisores distintos. Según la definición, ese número debe ser compuesto porque tiene más de dos divisores.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes números es un número compuesto?',
    '23', '31', '33', '19', 'C', 5, 7, 'Números primos y compuestos'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Razonamiento con listas de números',
    'Sofía escribe una lista de números en su cuaderno: 2, 3, 4, 5, 6. Su profesor le pide que rodee todos los números primos en la lista. Sofía recuerda que el número 2 es especial porque es el único número primo par.',
    NULL, NULL, NULL,
    'Según la lista de Sofía, ¿cuál de estos números es primo?',
    '4', '6', '5', '8', 'C', 5, 7, 'Números primos y compuestos'
);


--TEMA 38: Máximo común divisor
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Máximo Común Divisor de 24 y 36', 
    'El máximo común divisor (MCD) es el mayor número que divide a dos números sin dejar residuo. En este caso, necesitamos calcular el MCD de 24 y 36.', 
    NULL, NULL, NULL, 
    '¿Cuál es el máximo común divisor de 24 y 36?', '6', '8', '4', '12', 'A', 
    5, 7, 'Máximo común divisor'
),
(
    'MATEMÁTICA', NULL, 'MCD de 18 y 30', 
    'Encontrar el máximo común divisor de dos números es útil en muchas áreas de las matemáticas. En este caso, se te pide encontrar el MCD de 18 y 30.', 
    NULL, NULL, NULL, 
    '¿Cuál es el máximo común divisor de 18 y 30?', '6', '10', '3', '12', 'A', 
    5, 7, 'Máximo común divisor'
),
(
    'MATEMÁTICA', NULL, 'Divisores comunes de 14 y 49', 
    'Para encontrar el MCD de dos números, primero identificamos todos sus divisores. Luego, buscamos el mayor número que comparten. En este caso, encontramos el MCD de 14 y 49.', 
    NULL, NULL, NULL, 
    '¿Cuál es el máximo común divisor de 14 y 49?', '7', '14', '21', '49', 'A', 
    5, 7, 'Máximo común divisor'
),
(
    'MATEMÁTICA', NULL, 'MCD de 45 y 60', 
    'El máximo común divisor es una herramienta fundamental para simplificar fracciones y resolver problemas de divisibilidad. En este ejercicio, debes calcular el MCD de 45 y 60.', 
    NULL, NULL, NULL, 
    '¿Cuál es el máximo común divisor de 45 y 60?', '5', '15', '30', '45', 'B', 
    5, 7, 'Máximo común divisor'
),
(
    'MATEMÁTICA', NULL, 'MCD de 56 y 98', 
    'En este caso, tenemos que hallar el máximo común divisor de 56 y 98. Este tipo de ejercicio es fundamental para entender la relación entre los factores de los números.', 
    NULL, NULL, NULL, 
    '¿Cuál es el máximo común divisor de 56 y 98?', '7', '14', '28', '49', 'B', 
    5, 7, 'Máximo común divisor'
);


--TEMA 39: Mínimo común múltiplo
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) 
VALUES
-- Pregunta 1
('MATEMÁTICA', NULL, 'Mínimo común múltiplo', 'El mínimo común múltiplo (MCM) es el menor número que es múltiplo común de dos o más números. Para calcularlo, primero necesitamos descomponer ambos números en sus factores primos y luego tomar los factores comunes de manera adecuada.', NULL, NULL, NULL, '¿Cuál es el MCM de 12 y 18?', '24', '36', '48', '54', 'A', 5, 7, 'Mínimo común múltiplo'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Mínimo común múltiplo', 'El MCM de dos números se obtiene al multiplicar los factores primos más altos de cada número. Por ejemplo, si tienes los números 6 y 9, puedes calcular el MCM observando sus divisores primos.', NULL, NULL, NULL, '¿Cuál es el MCM de 6 y 9?', '18', '36', '54', '72', 'A', 5, 7, 'Mínimo común múltiplo'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Mínimo común múltiplo', 'Al resolver problemas de múltiplos comunes, es fundamental comprender que el MCM se usa para encontrar el menor valor que puede ser dividido por ambos números. Esto es útil en situaciones como la planificación de eventos o la sincronización de tareas.', NULL, NULL, NULL, '¿Cuál es el MCM de 8 y 14?', '56', '42', '48', '72', 'A', 5, 7, 'Mínimo común múltiplo'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Mínimo común múltiplo', 'Para calcular el MCM de dos o más números, puedes usar la descomposición en factores primos o aplicar el método de los múltiplos. Ambos métodos son válidos, pero la descomposición te permite encontrar el MCM de manera más directa.', NULL, NULL, NULL, '¿Cuál es el MCM de 5 y 10?', '20', '15', '25', '30', 'D', 5, 7, 'Mínimo común múltiplo'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Mínimo común múltiplo', 'El MCM de dos números puede calcularse usando la técnica de los múltiplos, en la que generas los múltiplos de ambos números hasta encontrar el primero que sea común. Este proceso es útil cuando necesitas encontrar el valor más pequeño que ambos números pueden compartir.', NULL, NULL, NULL, '¿Cuál es el MCM de 4 y 6?', '12', '24', '18', '30', 'A', 5, 7, 'Mínimo común múltiplo');


--TEMA 40: Sistemas de numeración: Representación literal de un número
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) 
VALUES 
    ('MATEMÁTICA', NULL, 'Conversión de sistemas de numeración', 
     'En los sistemas de numeración, la forma en que representamos los números varía según la base utilizada. En este caso, se requiere representar el número decimal 25 en base 2.',
     NULL, NULL, NULL, 
     '¿Cómo se representa el número decimal 25 en base 2?', 
     '11001', '10110', '10011', '11100', 'A', 
     5, 7, 'Sistemas de numeración: Representación literal de un número'),
     
    ('MATEMÁTICA', NULL, 'Equivalencia de números', 
     'El sistema decimal y el sistema binario tienen formas diferentes de representar los mismos números. Es importante poder convertir de uno a otro para comprender mejor cómo funcionan los sistemas de numeración.',
     NULL, NULL, NULL, 
     '¿Cuál es la representación binaria del número decimal 56?', 
     '110111', '111000', '101110', '100010', 'B', 
     5, 7, 'Sistemas de numeración: Representación literal de un número'),
     
    ('MATEMÁTICA', NULL, 'Sistema de numeración hexadecimal', 
     'El sistema hexadecimal es una extensión del sistema binario, utilizado para representar números de manera más compacta. En este sistema, se utilizan los dígitos del 0 al 9 y las letras A a F.',
     NULL, NULL, NULL, 
     '¿Cómo se representa el número decimal 255 en el sistema hexadecimal?', 
     'FF', 'F0', 'EF', 'EE', 'A', 
     5, 7, 'Sistemas de numeración: Representación literal de un número'),
     
    ('MATEMÁTICA', NULL, 'Conversión entre bases', 
     'La habilidad para convertir entre diferentes bases es fundamental en la comprensión de los sistemas de numeración. La conversión de un número entre base 10 y base 16 puede ser un desafío al principio.',
     NULL, NULL, NULL, 
     '¿Cuál es la representación en base 16 del número decimal 31?', 
     '1F', '2F', '3F', '4F', 'A', 
     5, 7, 'Sistemas de numeración: Representación literal de un número'),
     
    ('MATEMÁTICA', NULL, 'Sumas en sistemas binarios', 
     'El sistema binario solo tiene dos dígitos, 0 y 1, lo que lo hace diferente al sistema decimal. Para sumar números binarios, se siguen reglas específicas.',
     NULL, NULL, NULL, 
     '¿Cuál es el resultado de sumar los números binarios 1011 y 1101?', 
     '11000', '10101', '10010', '11110', 'C', 
     5, 7, 'Sistemas de numeración: Representación literal de un número');


--TEMA 41: Número capicúa
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Número capicúa 1', 
    'Los números capicúa son aquellos que tienen simetría cuando se leen de izquierda a derecha y de derecha a izquierda. ¿Consideras que el número 121 cumple con esta característica?', 
    NULL, 
    NULL, 
    NULL, 
    '¿Es 121 un número capicúa?', 
    'Sí', 
    'No', 
    'Depende de cómo se vea', 
    'No tiene simetría', 
    'A', 
    5, 
    7, 
    'Número capicúa'
),
-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Número capicúa 2', 
    'Los números de 4 cifras pueden ser capicúas si sus primeros dos dígitos son iguales a los dos últimos, pero en orden inverso. ¿El número 1221 cumple con esta propiedad?', 
    NULL, 
    NULL, 
    NULL, 
    '¿Es 1221 un número capicúa?', 
    'Sí', 
    'No', 
    'Sólo en un sistema numérico diferente', 
    'No, es otro tipo de número', 
    'A', 
    5, 
    7, 
    'Número capicúa'
),
-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Número capicúa 3', 
    'El número 2002 es de cuatro cifras. Reflexiona sobre su estructura: si se leyera de derecha a izquierda, ¿seguiría siendo el mismo número?', 
    NULL, 
    NULL, 
    NULL, 
    '¿Es 2002 un número capicúa?', 
    'Sí', 
    'No', 
    'Solo si se cambia el orden de los números', 
    'No es un número capicúa', 
    'A', 
    5, 
    7, 
    'Número capicúa'
),
-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Número capicúa 4', 
    'Existen números que, aunque tienen una estructura simétrica, no se consideran capicúas por ciertas reglas matemáticas. ¿El número 1331 encaja en esta categoría?', 
    NULL, 
    NULL, 
    NULL, 
    '¿Es 1331 un número capicúa?', 
    'Sí', 
    'No', 
    'No se puede determinar', 
    'Depende del contexto', 
    'A', 
    5, 
    7, 
    'Número capicúa'
),
-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Número capicúa 5', 
    'Considera el número 12321. ¿Puedes identificar alguna propiedad que lo haga un número capicúa?', 
    NULL, 
    NULL, 
    NULL, 
    '¿Es 12321 un número capicúa?', 
    'Sí', 
    'No', 
    'Solo en algunos casos', 
    'No tiene ninguna propiedad especial', 
    'A', 
    5, 
    7, 
    'Número capicúa'
);


--TEMA 42: Descomposición polinómica de un número
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) 
VALUES 
(
    'MATEMÁTICA', 
    NULL, 
    'Descomposición en potencias de 10', 
    'El número 4582 puede representarse de diferentes maneras. En este caso, te pedimos que lo descompongas usando potencias de 10. Recuerda que cada cifra en el número tiene un valor dependiendo de su posición, es decir, la primera cifra a la izquierda representa miles, la siguiente centenas, luego decenas, y por último unidades.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo descompones el número 4582 en sumas de potencias de 10?', 
    '4 x 10^3 + 5 x 10^2 + 8 x 10^1 + 2 x 10^0', 
    '4 x 10^2 + 5 x 10^1 + 8 x 10^0 + 2 x 10^-1', 
    '4 x 10^3 + 5 x 10^1 + 8 x 10^0 + 2 x 10^0', 
    '4 x 10^3 + 5 x 10^3 + 8 x 10^2 + 2 x 10^1', 
    'A', 
    5, 
    7, 
    'Descomposición polinómica de un número'
),
(
    'MATEMÁTICA', 
    NULL, 
    'Descomposición en potencias de 10', 
    'Considera el número 12073. Este número tiene varios dígitos que corresponden a diferentes órdenes de magnitud. Tu tarea es expresar este número como una suma de potencias de 10, destacando la importancia de la posición de cada cifra en el valor total del número.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo descompones el número 12073 en sumas de potencias de 10?', 
    '1 x 10^4 + 2 x 10^3 + 0 x 10^2 + 7 x 10^1 + 3 x 10^0', 
    '1 x 10^3 + 2 x 10^2 + 7 x 10^1 + 3 x 10^0', 
    '1 x 10^4 + 2 x 10^3 + 7 x 10^2 + 3 x 10^1', 
    '1 x 10^4 + 2 x 10^3 + 0 x 10^2 + 7 x 10^2 + 3 x 10^1', 
    'A', 
    5, 
    7, 
    'Descomposición polinómica de un número'
),
(
    'MATEMÁTICA', 
    NULL, 
    'Descomposición en potencias de 10', 
    'El número 58290 se puede escribir de distintas formas dependiendo de cómo consideremos el valor de cada una de sus cifras. Tu tarea es expresarlo como una suma de potencias de 10 para comprender cómo se representan los números grandes con diferentes potencias de 10.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo descompones el número 58290 en sumas de potencias de 10?', 
    '5 x 10^4 + 8 x 10^3 + 2 x 10^2 + 9 x 10^1 + 0 x 10^0', 
    '5 x 10^3 + 8 x 10^2 + 2 x 10^1 + 9 x 10^0', 
    '5 x 10^4 + 8 x 10^3 + 2 x 10^1 + 9 x 10^0', 
    '5 x 10^5 + 8 x 10^4 + 2 x 10^3 + 9 x 10^2', 
    'A', 
    5, 
    7, 
    'Descomposición polinómica de un número'
),
(
    'MATEMÁTICA', 
    NULL, 
    'Descomposición en potencias de 10', 
    'En el número 3005, cada cifra tiene un valor específico según su posición. Para descomponer este número, debes reconocer cómo cada posición representa una potencia de 10 y luego expresar el número de esa manera.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo descompones el número 3005 en sumas de potencias de 10?', 
    '3 x 10^3 + 0 x 10^2 + 0 x 10^1 + 5 x 10^0', 
    '3 x 10^3 + 5 x 10^2 + 0 x 10^1 + 0 x 10^0', 
    '3 x 10^3 + 5 x 10^0 + 0 x 10^2 + 0 x 10^1', 
    '3 x 10^3 + 0 x 10^2 + 5 x 10^1 + 0 x 10^0', 
    'A', 
    5, 
    7, 
    'Descomposición polinómica de un número'
),
(
    'MATEMÁTICA', 
    NULL, 
    'Descomposición en potencias de 10', 
    'El número 7819 tiene varias cifras que deben descomponerse para entender cómo se distribuyen en potencias de 10. Expresar este número de esa manera te permitirá ver cómo cada cifra contribuye a su valor total.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo descompones el número 7819 en sumas de potencias de 10?', 
    '7 x 10^3 + 8 x 10^2 + 1 x 10^1 + 9 x 10^0', 
    '7 x 10^3 + 8 x 10^1 + 1 x 10^2 + 9 x 10^0', 
    '7 x 10^2 + 8 x 10^1 + 1 x 10^3 + 9 x 10^0', 
    '7 x 10^3 + 8 x 10^2 + 9 x 10^1 + 1 x 10^0', 
    'A', 
    5, 
    7, 
    'Descomposición polinómica de un número'
);


--TEMA 43: Descomposición de un número por bloques
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
(
    'MATEMÁTICA',
    NULL,
    'Descomposición polinómica de números grandes',
    'Para facilitar ciertos cálculos matemáticos, los números grandes pueden descomponerse en bloques que representan sus diferentes órdenes de magnitud. Esta técnica permite entender mejor el valor posicional de cada dígito y trabajar con las cifras por separado antes de volver a unirlas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la descomposición polinómica correcta del número 4,205 en base 10?',
    '4×1000 + 2×100 + 0×10 + 5×1',
    '4×1000 + 20×10 + 5×1',
    '40×100 + 20×10 + 5×1',
    '4×100 + 2×10 + 5×1',
    'A',
    5,
    7,
    'Descomposición de un número por bloques'
),
(
    'MATEMÁTICA',
    NULL,
    'Analizando la estructura de un número',
    'Cuando se descompone un número como 3,018 en su forma polinómica, cada cifra se multiplica por una potencia de 10 dependiendo de su posición. Es fundamental identificar correctamente cada posición para no cometer errores al reescribir el número.',
    NULL,
    NULL,
    NULL,
    'Selecciona la opción que muestra correctamente la descomposición polinómica de 3,018.',
    '3×1000 + 0×100 + 1×10 + 8×1',
    '30×100 + 1×10 + 8×1',
    '3×100 + 1×10 + 8×1',
    '3×1000 + 18×1',
    'B',
    5,
    7,
    'Descomposición de un número por bloques'
),
(
    'MATEMÁTICA',
    NULL,
    'Entendiendo el valor posicional',
    'La descomposición polinómica es una herramienta útil que permite expresar un número como una suma de productos entre cada cifra y su correspondiente potencia de 10. Esta descomposición ayuda a ver claramente cómo se forma el número completo a partir de sus partes.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la descomposición correcta de 9407 usando potencias de 10?',
    '9×100 + 4×10 + 7×1',
    '90×100 + 4×10 + 7×1',
    '9×1000 + 4×100 + 0×10 + 7×1',
    '9000 + 400 + 0 + 7',
    'C',
    5,
    7,
    'Descomposición de un número por bloques'
),
(
    'MATEMÁTICA',
    NULL,
    'Aplicación práctica de la descomposición',
    'Imagina que tienes el número 6250. Para comprender mejor su estructura numérica, decides descomponerlo por bloques utilizando el sistema decimal. Esto te permite visualizar cómo cada cifra contribuye al número completo.',
    NULL,
    NULL,
    NULL,
    'Elige la descomposición polinómica correcta para 6250.',
    '6×1000 + 25×10 + 0×1',
    '6×1000 + 2×100 + 5×10 + 0×1',
    '60×100 + 2×10 + 5×1',
    '6×100 + 2×10 + 50×1',
    'D',
    5,
    7,
    'Descomposición de un número por bloques'
),
(
    'MATEMÁTICA',
    NULL,
    'Desafío de descomposición numérica',
    'Observa el número 5103. A través de la descomposición polinómica podemos identificar claramente cómo se reparte su valor entre las distintas posiciones, lo que facilita cálculos mentales y operaciones matemáticas más complejas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la descomposición correcta de 5103 en base 10?',
    '5×1000 + 1×100 + 0×10 + 3×1',
    '5×100 + 10×10 + 3×1',
    '50×100 + 10×10 + 3×1',
    '5×1000 + 10×10 + 3×1',
    'A',
    5,
    7,
    'Descomposición de un número por bloques'
);


--TEMA 44: Cambios de base
INSERT INTO pregunta 
("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
"PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA")
VALUES
('MATEMÁTICA', NULL, 'Conversión Binaria a Decimal', 'Convierte el número binario 1011 a su equivalente en base 10. Para hacer la conversión, multiplica cada dígito por las potencias de 2 comenzando desde la derecha.', NULL, NULL, NULL, 
'¿Cuál es el valor del número binario 1011 en base 10?', '11', '10', '9', '12', 'A', 5, 7, 'Cambios de base'),

('MATEMÁTICA', NULL, 'Conversión de Base 3 a Decimal', 'Convierte el número 1021 de base 3 a base 10. Para esto, multiplica cada dígito por las potencias de 3 según su posición, comenzando desde la derecha.', NULL, NULL, NULL, 
'¿A qué número en base 10 corresponde 1021 en base 3?', '28', '27', '24', '25', 'C', 5, 7, 'Cambios de base'),

('MATEMÁTICA', NULL, 'Conversión de Base 5 a Decimal', 'El número 124 está en base 5. Para convertirlo a base 10, debes multiplicar cada dígito por las potencias de 5 correspondientes a su posición.', NULL, NULL, NULL, 
'¿Cuál es el valor de 124 en base 5 en base 10?', '34', '39', '30', '29', 'B', 5, 7, 'Cambios de base'),

('MATEMÁTICA', NULL, 'Conversión de Base 6 a Decimal', 'Convierte el número 2102 de base 6 a base 10. Recuerda que en base 6, debes multiplicar cada dígito por las potencias de 6 correspondientes según su posición.', NULL, NULL, NULL, 
'¿A qué número en base 10 corresponde 2102 en base 6?', '512', '520', '498', '530', 'A', 5, 7, 'Cambios de base'),

('MATEMÁTICA', NULL, 'Conversión de Base 7 a Decimal', 'El número 351 está en base 7. Convierte este número a base 10 utilizando las potencias de 7 correspondientes a cada posición.', NULL, NULL, NULL, 
'¿Cuál es el valor de 351 en base 7 en base 10?', '156', '164', '155', '163', 'D', 5, 7, 'Cambios de base');


--TEMA 45: Fracciones: Adición y sustracción
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Fracciones en una receta de cocina',
    'María está preparando una receta que requiere 3/4 de taza de azúcar. Sin embargo, solo tiene una cuchara medidora de 1/8 de taza. María se pregunta cuántas veces necesitará llenar la cuchara para obtener exactamente la cantidad de azúcar requerida.',
    NULL, NULL, NULL,
    '¿Cuántas veces debe llenar la cuchara medidora?',
    '6 veces', '8 veces', '9 veces', '12 veces',
    'B', 5, 7, 'Fracciones: Adición y sustracción'
),
(
    'MATEMÁTICA', NULL, 'Suma de fracciones con diferente denominador',
    'Un grupo de amigos comparte una pizza. Juan se come 1/3 de la pizza y luego Ana se come 1/4. Ellos quieren saber cuánto han comido en total para decidir si piden otra pizza o no.',
    NULL, NULL, NULL,
    '¿Qué fracción de la pizza han comido entre los dos?',
    '5/12', '7/12', '2/3', '5/6',
    'C', 5, 7, 'Fracciones: Adición y sustracción'
),
(
    'MATEMÁTICA', NULL, 'Restando partes de un pastel',
    'Pedro tenía 5/6 de un pastel en la nevera. Por la tarde, su hermano se comió 1/2 de ese pastel. Pedro está tratando de calcular qué fracción del pastel le queda ahora para poder compartirlo después de la cena.',
    NULL, NULL, NULL,
    '¿Qué fracción del pastel le queda a Pedro?',
    '1/3', '1/2', '1/4', '1/6',
    'D', 5, 7, 'Fracciones: Adición y sustracción'
),
(
    'MATEMÁTICA', NULL, 'Problema con vasos de jugo',
    'En una reunión familiar, se sirven 2/5 de litro de jugo de naranja y 3/10 de litro de jugo de piña en una misma jarra. Los niños observan que la jarra casi está llena y se preguntan cuánta cantidad de jugo hay en total después de combinar ambos.',
    NULL, NULL, NULL,
    '¿Cuántos litros de jugo hay en la jarra después de mezclarlos?',
    '1/2 litro', '7/10 litro', '9/10 litro', '1 litro',
    'B', 5, 7, 'Fracciones: Adición y sustracción'
),
(
    'MATEMÁTICA', NULL, 'Sustracción de fracciones en una caminata',
    'Luis caminó 3/4 de un kilómetro por la mañana y luego recorrió 2/5 de kilómetro por la tarde. Quiere calcular cuánto más caminó en la mañana en comparación con la tarde para saber si repitió el mismo esfuerzo o si fue diferente.',
    NULL, NULL, NULL,
    '¿Cuánto más caminó Luis en la mañana?',
    '7/20 km', '1/5 km', '1/4 km', '11/20 km',
    'A', 5, 7, 'Fracciones: Adición y sustracción'
);


--TEMA 46: Fracciones: Multiplicación, división, potencias y radicación
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Multiplicación de fracciones en la vida diaria',
    'En una receta de cocina, se necesita usar 3/4 de taza de harina por cada pastel. Si decides preparar 2 pasteles, debes calcular cuánta harina en total se utilizará. Este tipo de cálculo es esencial cuando se sigue una receta para varias porciones.',
    NULL, NULL, NULL,
    '¿Cuánta harina se necesita en total para hacer los 2 pasteles?',
    '1 y 1/2 tazas', '1 y 1/4 tazas', '2 tazas', '2 y 1/4 tazas',
    'A', 5, 7, 'Fracciones: Multiplicación, división, potencias y radicación'
),
(
    'MATEMÁTICA', NULL, 'División de fracciones: problema práctico',
    'Juan tiene 5/6 de litro de jugo y quiere repartirlo en vasos que contienen cada uno 1/4 de litro. Comprender cómo dividir fracciones es importante para saber cuántos vasos completos puede llenar con la cantidad de jugo disponible.',
    NULL, NULL, NULL,
    '¿Cuántos vasos completos puede llenar Juan?',
    '2 vasos', '2 y 1/2 vasos', '3 vasos', '3 y 1/2 vasos',
    'C', 5, 7, 'Fracciones: Multiplicación, división, potencias y radicación'
),
(
    'MATEMÁTICA', NULL, 'Fracciones elevadas a una potencia',
    'En una competencia de matemáticas, se pide a los estudiantes calcular (2/3)². Esta operación implica elevar una fracción al cuadrado, un concepto clave para resolver problemas de áreas o situaciones similares.',
    NULL, NULL, NULL,
    '¿Cuál es el resultado de (2/3)²?',
    '4/6', '4/9', '2/9', '8/9',
    'B', 5, 7, 'Fracciones: Multiplicación, división, potencias y radicación'
),
(
    'MATEMÁTICA', NULL, 'Radicación de fracciones: problema aplicado',
    'En un taller de ciencias, los estudiantes necesitan encontrar la raíz cuadrada de la fracción 9/16 para completar un experimento. Entender la raíz cuadrada de una fracción les permite resolver problemas de escalas y proporciones con mayor facilidad.',
    NULL, NULL, NULL,
    '¿Cuál es la raíz cuadrada de 9/16?',
    '3/4', '9/8', '4/3', '16/9',
    'A', 5, 7, 'Fracciones: Multiplicación, división, potencias y radicación'
),
(
    'MATEMÁTICA', NULL, 'Aplicación combinada: multiplicación y división',
    'En una competencia, a cada participante se le entrega 3/5 de una barra de chocolate. Si la barra entera pesa 250 gramos, y luego se divide esta cantidad de chocolate en 2 partes iguales para compartirlas, los estudiantes deben aplicar tanto la multiplicación como la división de fracciones para determinar la cantidad final de cada parte.',
    NULL, NULL, NULL,
    '¿Cuánto pesa cada parte en gramos?',
    '75 gramos', '100 gramos', '150 gramos', '125 gramos',
    'D', 5, 7, 'Fracciones: Multiplicación, división, potencias y radicación'
);


--TEMA 47: Operaciones combinadas con fracciones
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
)
VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Fracciones en una receta de cocina',
    'Una receta para preparar una torta indica que se deben utilizar 2/3 de taza de azúcar y 3/4 de taza de harina. Si decides preparar media receta, es importante calcular correctamente las cantidades para mantener el sabor y la textura del postre.',
    NULL,
    NULL,
    NULL,
    '¿Cuántas tazas de azúcar necesitas para media receta?',
    '1/3',
    '2/3',
    '3/4',
    '1/4',
    'A',
    5,
    7,
    'Operaciones combinadas con fracciones'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'División de una cuerda',
    'Un carpintero tiene una cuerda de 5/6 metros de longitud. Necesita dividirla en piezas iguales de 1/4 de metro cada una para realizar un proyecto de decoración. La precisión en este cálculo es crucial para que las piezas encajen perfectamente.',
    NULL,
    NULL,
    NULL,
    '¿En cuántas piezas iguales se puede dividir la cuerda?',
    '2',
    '2 y 1/2',
    '3',
    '3 y 1/2',
    'C',
    5,
    7,
    'Operaciones combinadas con fracciones'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Tiempo dedicado a estudiar',
    'Lucía estudia matemáticas durante 3/5 de una hora cada día. Además, dedica 2/5 de hora a repasar ejercicios anteriores. Para planificar su tiempo de estudio, necesita saber cuántas horas en total invierte diariamente en matemáticas.',
    NULL,
    NULL,
    NULL,
    '¿Cuánto tiempo en total dedica Lucía diariamente a matemáticas?',
    '1 hora',
    '4/5 de hora',
    '1 y 1/5 horas',
    '3/5 de hora',
    'B',
    5,
    7,
    'Operaciones combinadas con fracciones'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Combinar pinturas',
    'Para crear un nuevo tono de color, un pintor mezcla 5/8 de litro de pintura azul con 3/4 de litro de pintura blanca. Este tipo de combinaciones requiere precisión para lograr el color deseado en la obra final.',
    NULL,
    NULL,
    NULL,
    '¿Cuántos litros de pintura tiene en total después de mezclar?',
    '1 y 1/2 litros',
    '1 y 3/8 litros',
    '1 y 1/4 litros',
    '1 y 5/8 litros',
    'B',
    5,
    7,
    'Operaciones combinadas con fracciones'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Distribución de una pizza',
    'En una reunión familiar, se pide una pizza que se divide en 12 partes iguales. Si Ana come 5/12 y su hermano come 1/3 de la pizza, la familia quiere saber cuánto han comido en total entre los dos para decidir si piden otra pizza.',
    NULL,
    NULL,
    NULL,
    '¿Qué fracción de la pizza comieron entre los dos?',
    '7/12',
    '2/3',
    '3/4',
    '5/6',
    'D',
    5,
    7,
    'Operaciones combinadas con fracciones'
);


--TEMA 48: Números decimales: Operaciones
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Compra de frutas',
    'En una tienda, Ana compra 3.5 kilogramos de manzanas y 2.75 kilogramos de peras. Al llegar a casa, quiere saber cuántos kilogramos de frutas ha comprado en total para anotar la cantidad en su libreta de gastos.',
    NULL,
    NULL,
    NULL,
    '¿Cuántos kilogramos de frutas compró Ana en total?',
    '6.25 kg',
    '5.75 kg',
    '6.5 kg',
    '7 kg',
    'A',
    5,
    7,
    'Números decimales: Operaciones'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Reparto de refresco',
    'Durante una excursión escolar, se distribuyen 9 litros de refresco en 4 botellas de igual capacidad. Los estudiantes quieren saber exactamente cuántos litros de refresco hay en cada botella para asegurarse de que todas tienen la misma cantidad.',
    NULL,
    NULL,
    NULL,
    '¿Cuántos litros contiene cada botella?',
    '2.15 L',
    '2.25 L',
    '2.3 L',
    '2.5 L',
    'B',
    5,
    7,
    'Números decimales: Operaciones'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Pago en la tienda',
    'Luis va a una tienda y compra un cuaderno que cuesta 4.75 soles y un lápiz que cuesta 1.85 soles. Al llegar a la caja, paga con un billete de 10 soles. Quiere saber cuánto debe recibir de cambio para comprobar si el cajero le entrega lo correcto.',
    NULL,
    NULL,
    NULL,
    '¿Cuánto dinero debe recibir Luis de cambio?',
    '3.4 soles',
    '3.35 soles',
    '3.45 soles',
    '3.5 soles',
    'C',
    5,
    7,
    'Números decimales: Operaciones'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Carrera de bicicletas',
    'En una competencia de ciclismo, María recorrió 12.6 kilómetros en la primera etapa y 15.75 kilómetros en la segunda etapa. Al terminar, necesita saber cuántos kilómetros recorrió en total para registrar su desempeño en la competencia.',
    NULL,
    NULL,
    NULL,
    '¿Cuántos kilómetros recorrió María en total?',
    '28.25 km',
    '28.15 km',
    '28.35 km',
    '28.4 km',
    'D',
    5,
    7,
    'Números decimales: Operaciones'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'División de un pastel',
    'Un pastelero tiene un pastel de 8.4 kilogramos y lo divide en 7 porciones iguales para venderlas. Necesita calcular con precisión el peso de cada porción para etiquetar adecuadamente cada una antes de ponerlas a la venta.',
    NULL,
    NULL,
    NULL,
    '¿Cuánto pesa cada porción?',
    '1.2 kg',
    '1.15 kg',
    '1.25 kg',
    '1.3 kg',
    'A',
    5,
    7,
    'Números decimales: Operaciones'
);


--TEMA 49: Fracción generatriz. Notación científica
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
)
VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Identificación de fracción generatriz',
    'En un análisis de números decimales periódicos, la profesora presenta el número 0.666... y pregunta a los estudiantes cómo convertirlo a una fracción exacta. Este tipo de conversión es fundamental para entender las relaciones entre decimales y fracciones.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la fracción generatriz correspondiente al número decimal 0.666...?',
    '2/3',
    '3/5',
    '5/6',
    '1/2',
    'A',
    5,
    7,
    'Fracción generatriz. Notación científica'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Notación científica aplicada',
    'El científico Javier mide la distancia entre dos estrellas y obtiene el número 0.000056. Para facilitar su escritura y análisis, debe expresar ese valor usando notación científica, una herramienta muy útil para trabajar con números muy pequeños o muy grandes.',
    NULL,
    NULL,
    NULL,
    '¿Cómo se representa 0.000056 en notación científica?',
    '5.6 × 10^-4',
    '5.6 × 10^-5',
    '5.6 × 10^-6',
    '5.6 × 10^-7',
    'C',
    5,
    7,
    'Fracción generatriz. Notación científica'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Conversión de decimal periódico mixto',
    'Durante una clase, se analiza el número decimal 0.58333..., donde solo el número 3 se repite infinitamente. La profesora solicita a los alumnos que encuentren su fracción generatriz, utilizando el método adecuado para decimales periódicos mixtos.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la fracción generatriz de 0.58333...?',
    '7/12',
    '35/60',
    '7/15',
    '35/60',
    'B',
    5,
    7,
    'Fracción generatriz. Notación científica'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Notación científica en contextos reales',
    'El manual de astronomía indica que la masa de un grano de polvo interestelar es de aproximadamente 0.00000000021 kilogramos. El profesor pide expresar esta cantidad en notación científica para simplificar su estudio en las fórmulas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la notación científica correcta para 0.00000000021?',
    '2.1 × 10^-8',
    '2.1 × 10^-9',
    '2.1 × 10^-10',
    '2.1 × 10^-7',
    'D',
    5,
    7,
    'Fracción generatriz. Notación científica'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Fracción generatriz de un decimal periódico puro',
    'En un ejercicio del libro, aparece el número 0.818181..., que corresponde a un decimal periódico puro. La profesora pide a los estudiantes escribir la fracción generatriz que lo representa y explicar el procedimiento.',
    NULL,
    NULL,
    NULL,
    '¿Qué fracción generatriz representa 0.818181...?',
    '9/11',
    '8/9',
    '81/100',
    '18/22',
    'A',
    5,
    7,
    'Fracción generatriz. Notación científica'
);


--TEMA 50: Ecuaciones de primer grado con una incógnita
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
)
VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Resolviendo el precio del cuaderno',
    'Luis compra 3 cuadernos idénticos y una regla por un total de 28 soles. Cada cuaderno cuesta lo mismo y la regla tiene un precio fijo de 4 soles. Luis quiere saber cuánto paga por cada cuaderno para poder comprar más en el futuro.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el precio de cada cuaderno?',
    '8',
    '6',
    '10',
    '12',
    'B',
    5,
    7,
    'Ecuaciones de primer grado con una incógnita'
),
-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Edad actual de Martina',
    'Martina y su hermana menor tienen una diferencia de edad de 5 años. Si la suma de sus edades es 21 años, Martina está tratando de recordar su edad exacta para completar un formulario escolar. Sabe que su hermana es más joven, pero no recuerda exactamente cuánto.',
    NULL,
    NULL,
    NULL,
    '¿Qué edad tiene Martina?',
    '8',
    '10',
    '13',
    '16',
    'C',
    5,
    7,
    'Ecuaciones de primer grado con una incógnita'
),
-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Número misterioso',
    'Piensa en un número. Si le sumas 7 y luego multiplicas el resultado por 2, obtienes 26. Este número misterioso está en un juego de adivinanzas matemáticas que Juan quiere resolver.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el número original?',
    '3',
    '5',
    '6',
    '7',
    'A',
    5,
    7,
    'Ecuaciones de primer grado con una incógnita'
),
-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Resolviendo un problema de entradas',
    'Para asistir a un concierto, Pedro compra varias entradas para él y sus amigos. Cada entrada cuesta el mismo precio. Si compra 5 entradas y paga 75 soles en total, Pedro quiere saber el precio de cada entrada para dividir el costo de manera justa entre sus amigos.',
    NULL,
    NULL,
    NULL,
    '¿Cuánto cuesta cada entrada?',
    '10',
    '12',
    '13',
    '15',
    'D',
    5,
    7,
    'Ecuaciones de primer grado con una incógnita'
),
-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'El problema del rectángulo',
    'La longitud de un rectángulo es el triple de su ancho. Si el perímetro del rectángulo es 48 metros, Claudia está resolviendo este problema para su tarea de geometría y necesita saber la longitud exacta.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la longitud del rectángulo?',
    '12',
    '18',
    '24',
    '30',
    'B',
    5,
    7,
    'Ecuaciones de primer grado con una incógnita'
);


--TEMA 51: Inecuaciones de primer grado
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
(
    'MATEMÁTICA',
    NULL,
    'Comparación de edades',
    'Lucía tiene una edad que, al sumarle 5 años, es menor que 18. Ella desea saber cuántos años como máximo podría tener para cumplir esta condición, considerando que la edad debe ser un número entero positivo.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la mayor edad que podría tener Lucía?',
    '12',
    '13',
    '11',
    '10',
    'A',
    5,
    7,
    'Inecuaciones de primer grado'
),
(
    'MATEMÁTICA',
    NULL,
    'Presupuesto para un paseo',
    'Un grupo de estudiantes está organizando un paseo escolar. Cada estudiante debe pagar una cuota de S/ x. La profesora les dice que si cada uno paga más de S/ 20, se podrá cubrir el costo total de S/ 300 con solo 14 estudiantes. Plantea y resuelve la inecuación para encontrar la mínima cantidad que debe pagar cada estudiante.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el monto mínimo que debe pagar cada estudiante para cumplir la condición?',
    '20',
    '21.5',
    '22',
    '19.5',
    'C',
    5,
    7,
    'Inecuaciones de primer grado'
),
(
    'MATEMÁTICA',
    NULL,
    'Ahorro mensual',
    'Carlos ahorra S/ 50 cada mes. Él quiere reunir más de S/ 600 para comprarse una bicicleta nueva. Quiere saber cuánto tiempo le tomará como mínimo alcanzar su objetivo de ahorro, considerando que empieza desde cero.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la mínima cantidad de meses que debe ahorrar Carlos para poder comprarse la bicicleta?',
    '10',
    '11',
    '12',
    '13',
    'B',
    5,
    7,
    'Inecuaciones de primer grado'
),
(
    'MATEMÁTICA',
    NULL,
    'Entradas para un espectáculo',
    'Para un espectáculo escolar, se venden entradas a S/ 15 cada una. La escuela necesita reunir más de S/ 900 para cubrir todos los gastos. Calcula cuántas entradas como mínimo se deben vender para cumplir con esta meta.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es el número mínimo de entradas que se deben vender?',
    '59',
    '60',
    '61',
    '62',
    'D',
    5,
    7,
    'Inecuaciones de primer grado'
),
(
    'MATEMÁTICA',
    NULL,
    'Viaje en grupo',
    'Un grupo de amigos planea alquilar una movilidad para ir de excursión. La empresa de transporte les ofrece un precio fijo de S/ 480. Ellos deciden que cada persona debe pagar menos de S/ 40 para que sea accesible para todos. Plantea la inecuación correspondiente y encuentra el número mínimo de personas necesarias para lograr este objetivo.',
    NULL,
    NULL,
    NULL,
    '¿Cuál es la cantidad mínima de personas para que cada uno pague menos de S/ 40?',
    '13',
    '11',
    '12',
    '10',
    'A',
    5,
    7,
    'Inecuaciones de primer grado'
);


--TEMA 52: Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Identificación de puntos y líneas',
    'En la geometría, los conceptos básicos como punto, recta y plano son fundamentales para comprender figuras más complejas. A continuación, se presenta una situación donde debes aplicar estos conceptos para reconocer elementos geométricos en un espacio determinado.',
    NULL, NULL, NULL,
    '¿Cuál de las siguientes opciones representa únicamente un conjunto de puntos?',
    'Una línea recta trazada en el papel', 
    'La intersección de dos planos',
    'La ubicación exacta de la esquina de una hoja', 
    'Un círculo con radio conocido',
    'C',
    5, 7, 'Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento'
),
(
    'MATEMÁTICA', NULL, 'Rectas y su clasificación',
    'Considera un escenario donde se observan varias líneas dibujadas en un pizarrón: algunas se cruzan en un solo punto, mientras que otras no se tocan sin importar cuánto se prolonguen. Este ejercicio requiere identificar la naturaleza de estas líneas y su relación en el plano.',
    NULL, NULL, NULL,
    '¿Qué nombre reciben dos rectas que nunca se cruzan aunque se prolonguen indefinidamente?',
    'Rectas convergentes',
    'Rectas divergentes',
    'Rectas paralelas',
    'Rectas secantes',
    'C',
    5, 7, 'Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento'
),
(
    'MATEMÁTICA', NULL, 'Concepto de semirrecta',
    'Una semirrecta es una figura geométrica importante que surge cuando una recta se divide en dos partes iguales en un punto determinado, quedando una de esas partes con un origen definido y extendiéndose sin límite en una dirección. Este concepto es clave para entender construcciones geométricas básicas.',
    NULL, NULL, NULL,
    '¿Cuál de las siguientes descripciones corresponde a una semirrecta?',
    'Un segmento de línea que tiene dos extremos',
    'Una línea infinita sin principio ni fin',
    'Una parte de una recta con un inicio pero sin fin',
    'Una línea curva que no tiene fin',
    'C',
    5, 7, 'Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento'
),
(
    'MATEMÁTICA', NULL, 'Identificación del plano',
    'El concepto de plano es fundamental en la geometría, ya que permite representar superficies planas ilimitadas. Los planos son utilizados para describir áreas bidimensionales y son esenciales en muchas construcciones y razonamientos geométricos.',
    NULL, NULL, NULL,
    '¿Cuál de los siguientes ejemplos se considera un plano en geometría?',
    'La hoja de un cuaderno',
    'El borde de una mesa',
    'El hilo de una cometa',
    'El punto donde se encuentran dos paredes',
    'A',
    5, 7, 'Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento'
),
(
    'MATEMÁTICA', NULL, 'Segmento de recta y sus características',
    'El segmento de recta es una figura esencial en la geometría, definida como la parte de una recta comprendida entre dos puntos distintos. Este tipo de figura es ampliamente utilizada para medir distancias y construir formas más complejas.',
    NULL, NULL, NULL,
    '¿Qué característica distingue a un segmento de recta?',
    'Tiene solo un extremo y se extiende al infinito',
    'Tiene dos extremos definidos y una longitud determinada',
    'No tiene extremos y es infinita en ambas direcciones',
    'Tiene forma curva y dos extremos',
    'B',
    5, 7, 'Introducción a la geometría: punto, recta, plano, semirrecta, rayo, segmento'
);


--TEMA 53: Segmentos: Operaciones con segmentos
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA",
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D",
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Medición de segmentos',
    'En una clase de geometría, los estudiantes deben medir un segmento de 18 cm utilizando una regla graduada en centímetros. El profesor les pide que dividan este segmento en 3 partes iguales para formar una figura simétrica.',
    NULL, NULL, NULL,
    '¿Cuál es la longitud de cada una de las partes iguales en que se divide el segmento?',
    '5 cm', '6 cm', '7 cm', '9 cm', 'B', 5, 7, 'Segmentos: Operaciones con segmentos'
),
(
    'MATEMÁTICA', NULL, 'Comparación de longitudes',
    'En un plano cartesiano, se tienen dos segmentos: el primero mide 12 cm y el segundo mide 8 cm. El profesor solicita que se determine la diferencia de longitud entre ambos segmentos para un ejercicio práctico.',
    NULL, NULL, NULL,
    '¿Cuál es la diferencia en centímetros entre los dos segmentos?',
    '2 cm', '3 cm', '4 cm', '5 cm', 'C', 5, 7, 'Segmentos: Operaciones con segmentos'
),
(
    'MATEMÁTICA', NULL, 'Suma de segmentos alineados',
    'Durante un experimento en el laboratorio, Ana coloca tres varillas en línea recta. Las longitudes de las varillas son 5 cm, 9 cm y 11 cm respectivamente. El objetivo es conocer la longitud total del segmento formado al unirlas.',
    NULL, NULL, NULL,
    '¿Qué longitud total tiene el segmento formado por las tres varillas?',
    '25 cm', '24 cm', '23 cm', '22 cm', 'A', 5, 7, 'Segmentos: Operaciones con segmentos'
),
(
    'MATEMÁTICA', NULL, 'División de un segmento',
    'Luis tiene un hilo de 30 cm de largo y necesita cortarlo en dos segmentos de manera que uno sea el doble de largo que el otro. Este tipo de ejercicio es común para reforzar la comprensión de la proporcionalidad.',
    NULL, NULL, NULL,
    '¿Cuál es la longitud del segmento más corto?',
    '10 cm', '12 cm', '15 cm', '20 cm', 'A', 5, 7, 'Segmentos: Operaciones con segmentos'
),
(
    'MATEMÁTICA', NULL, 'Segmentos consecutivos',
    'En una actividad grupal, se pide a los estudiantes construir un segmento uniendo consecutivamente dos segmentos más pequeños. El primer segmento mide 14 cm y el segundo 6 cm. Luego, se les pregunta sobre la relación entre la suma de estos segmentos y un tercer segmento de 25 cm.',
    NULL, NULL, NULL,
    '¿Cuántos centímetros le faltan a la suma de los dos primeros segmentos para igualar la longitud del tercer segmento?',
    '5 cm', '4 cm', '3 cm', '2 cm', 'D', 5, 7, 'Segmentos: Operaciones con segmentos'
);


--TEMA 54: Ángulos: Medición, construcción, congruencia, bisectriz
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
    "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
('MATEMÁTICA', NULL, 'Ángulos agudos', 
 'En geometría, un ángulo se clasifica según su medida. El ángulo agudo es aquel que tiene menos de 90 grados. Considera el ángulo formado por las dos líneas que se cruzan en la intersección de las paredes de una habitación. ¿Qué tipo de ángulo es ese?', 
 NULL, NULL, NULL, 
 '¿Qué tipo de ángulo se forma entre las paredes de una habitación en la intersección de sus paredes?', 
 'Recto', 'Obtuso', 'Agudo', 'Llano', 
 'C', 5, 7, 'Ángulos: Medición, construcción, congruencia, bisectriz'),

('MATEMÁTICA', NULL, 'Construcción de un ángulo recto', 
 'Para construir un ángulo recto de 90 grados, se utiliza el método de la bisectriz. Este proceso divide un ángulo dado en dos ángulos congruentes de 45 grados cada uno. ¿Cómo se debe trazar correctamente este ángulo?', 
 NULL, NULL, NULL, 
 '¿Qué herramienta es indispensable para construir un ángulo recto?', 
 'Compás', 'Transportador', 'Escuadra', 'Regla', 
 'C', 5, 7, 'Ángulos: Medición, construcción, congruencia, bisectriz'),

('MATEMÁTICA', NULL, 'Ángulos congruentes', 
 'Cuando dos ángulos tienen la misma medida, se dice que son congruentes. Si tenemos dos ángulos de 35 grados, ¿qué afirmación es correcta?', 
 NULL, NULL, NULL, 
 '¿Qué es cierto acerca de dos ángulos de 35 grados?', 
 'Son complementarios', 'Son congruentes', 'Son suplemetarios', 'Son iguales', 
 'B', 5, 7, 'Ángulos: Medición, construcción, congruencia, bisectriz'),

('MATEMÁTICA', NULL, 'Bisectriz de un ángulo', 
 'La bisectriz de un ángulo es una línea que divide un ángulo en dos ángulos congruentes. Si se tiene un ángulo de 120 grados, ¿cuál será la medida de cada uno de los ángulos resultantes cuando se divida por su bisectriz?', 
 NULL, NULL, NULL, 
 'Si divides un ángulo de 120 grados en dos partes iguales, ¿cuál será la medida de cada ángulo?', 
 '60 grados', '45 grados', '30 grados', '120 grados', 
 'A', 5, 7, 'Ángulos: Medición, construcción, congruencia, bisectriz'),

('MATEMÁTICA', NULL, 'Ángulo obtuso', 
 'Un ángulo obtuso es aquel cuya medida es mayor a 90 grados pero menor a 180 grados. Si se tiene un ángulo de 130 grados, ¿cuál de las siguientes afirmaciones es cierta?', 
 NULL, NULL, NULL, 
'¿Cuál es la afirmación correcta para un ángulo de 130 grados?', 
 'Es un ángulo agudo', 'Es un ángulo recto', 'Es un ángulo obtuso', 'Es un ángulo llano', 
 'C', 5, 7, 'Ángulos: Medición, construcción, congruencia, bisectriz');


--TEMA 55: Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", 
    "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
(
    'MATEMÁTICA', NULL, 'Clasificación de ángulos por medida', 
    'Un ángulo mide 45 grados. ¿Cómo se clasifica este ángulo de acuerdo a su medida?', 
    NULL, NULL, NULL, 
    '¿Cómo se clasifica un ángulo de 45 grados?', 
    'Agudo', 'Recto', 'Obtuso', 'Llano', 'A', 
    5, 7, 'Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios'
),
(
    'MATEMÁTICA', NULL, 'Clasificación de ángulos por medida',
    'Un ángulo mide 180 grados. ¿A qué tipo de ángulo corresponde?', 
    NULL, NULL, NULL, 
    '¿Cómo se clasifica un ángulo de 180 grados?', 
    'Recto', 'Obtuso', 'Llano', 'Agudo', 'C', 
    5, 7, 'Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios'
),
(
    'MATEMÁTICA', NULL, 'Ángulos complementarios', 
    'Si dos ángulos suman 90 grados, ¿cómo se llaman estos ángulos?', 
    NULL, NULL, NULL, 
    '¿Cómo se llaman los ángulos que suman 90 grados?', 
    'Complementarios', 'Suplementarios', 'Adyacentes', 'Opuestos por el vértice', 'A', 
    5, 7, 'Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios'
),
(
    'MATEMÁTICA', NULL, 'Ángulos suplementarios',
    'Si la suma de dos ángulos es 180 grados, ¿qué tipo de ángulos son?', 
    NULL, NULL, NULL, 
    '¿Cómo se llaman los ángulos que suman 180 grados?', 
    'Complementarios', 'Suplementarios', 'Obtusos', 'Agudos', 'B', 
    5, 7, 'Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios'
),
(
    'MATEMÁTICA', NULL, 'Clasificación de ángulos según la posición',
    '¿Cómo se clasifican los ángulos que comparten el mismo vértice y un lado?', 
    NULL, NULL, NULL, 
    '¿Cómo se llaman los ángulos que comparten el mismo vértice y un lado?', 
    'Adyacentes', 'Complementarios', 'Suplementarios', 'Opuestos por el vértice', 'A', 
    5, 7, 'Ángulos: Clasificación por medida y posición, ángulos complementarios y suplementarios'
);


--TEMA 56: Rectas paralelas
INSERT INTO pregunta (
    "TIPO_EVALUACION",
    "GRUPO",
    "TEXTO_TITULO",
    "TEXTO_SUPERIOR",
    "TEXTO_IMAGEN",
    "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA",
    "PREGUNTA",
    "OPCION_A",
    "OPCION_B",
    "OPCION_C",
    "OPCION_D",
    "RESPUESTA_CORRECTA",
    "ID_COMPETENCIA",
    "ID_GRADO",
    "TEMA"
) VALUES
-- Pregunta 1
(
    'MATEMÁTICA',
    NULL,
    'Identificación de rectas paralelas',
    'Las rectas paralelas son aquellas que mantienen siempre la misma distancia entre sí y nunca se intersectan, sin importar cuánto se prolonguen. En geometría, es fundamental reconocer estas propiedades para resolver problemas relacionados con ángulos y figuras geométricas.',
    NULL,
    NULL,
    NULL,
    '¿Cuál de las siguientes afirmaciones describe correctamente las rectas paralelas?',
    'Rectas que se cruzan en un punto',
    'Rectas que tienen la misma pendiente y nunca se intersectan',
    'Rectas que forman un ángulo de 90 grados entre sí',
    'Rectas que se acercan gradualmente hasta tocarse',
    'B',
    5,
    7,
    'Rectas paralelas'
),

-- Pregunta 2
(
    'MATEMÁTICA',
    NULL,
    'Propiedades de las rectas paralelas',
    'Cuando dos rectas son paralelas y una tercera recta (llamada recta secante) las corta, se forman ángulos con relaciones específicas. Estos ángulos pueden ser correspondientes, alternos internos o alternos externos, y tienen medidas iguales entre sí.',
    NULL,
    NULL,
    NULL,
    'Si una recta secante corta a dos rectas paralelas, ¿qué tipo de ángulos son iguales?',
    'Ángulos adyacentes',
    'Ángulos complementarios',
    'Ángulos correspondientes',
    'Ángulos suplementarios',
    'C',
    5,
    7,
    'Rectas paralelas'
),

-- Pregunta 3
(
    'MATEMÁTICA',
    NULL,
    'Aplicación en figuras geométricas',
    'En muchas figuras geométricas como rectángulos, cuadrados y paralelogramos, las rectas paralelas juegan un papel fundamental en la definición de sus propiedades. Reconocer estas características permite calcular perímetros, áreas y resolver problemas geométricos complejos.',
    NULL,
    NULL,
    NULL,
    '¿En cuál de las siguientes figuras NO existen pares de lados paralelos?',
    'Rectángulo',
    'Triángulo equilátero',
    'Cuadrado',
    'Rombo',
    'B',
    5,
    7,
    'Rectas paralelas'
),

-- Pregunta 4
(
    'MATEMÁTICA',
    NULL,
    'Ecuaciones de rectas paralelas',
    'En el plano cartesiano, dos rectas son paralelas cuando tienen la misma pendiente pero diferente término independiente. Esta propiedad es esencial para determinar si dos rectas son paralelas sin necesidad de graficarlas.',
    NULL,
    NULL,
    NULL,
    'Dadas las ecuaciones y = 2x + 3 y y = 2x - 5, ¿cuál es la relación entre estas rectas?',
    'Son perpendiculares',
    'Se intersectan en un punto',
    'Son paralelas',
    'Son coincidentes',
    'C',
    5,
    7,
    'Rectas paralelas'
),

-- Pregunta 5
(
    'MATEMÁTICA',
    NULL,
    'Identificación visual de paralelismo',
    'En problemas geométricos, a menudo se presentan diagramas con múltiples rectas donde es necesario identificar cuáles son paralelas. Esta habilidad visual es crucial para resolver problemas de geometría y trigonometría básica.',
    NULL,
    NULL,
    NULL,
    'Si en un diagrama dos rectas están marcadas con flechas dobles en la misma dirección, esto significa que:',
    'Las rectas son perpendiculares',
    'Las rectas son paralelas',
    'Las rectas son oblicuas',
    'Las rectas son coincidentes',
    'B',
    5,
    7,
    'Rectas paralelas'
);

--TEMA 57: Triángulos, congruencia de triángulos
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES 
-- Pregunta 1
(
    'MATEMÁTICA', 
    NULL, 
    'Identificación de triángulos', 
    'Los triángulos se pueden clasificar según la medida de sus lados y de sus ángulos. Es fundamental reconocer estas características para resolver problemas geométricos. Observa las siguientes afirmaciones sobre un triángulo con tres lados iguales:', 
    NULL, 
    NULL, 
    NULL, 
    '¿Qué tipo de triángulo tiene todos sus lados iguales?', 
    'Triángulo equilátero', 
    'Triángulo isósceles', 
    'Triángulo escaleno', 
    'Triángulo rectángulo', 
    'A', 
    5, 
    7, 
    'Triángulos, congruencia de triángulos'
),
-- Pregunta 2
(
    'MATEMÁTICA', 
    NULL, 
    'Congruencia de triángulos', 
    'Dos triángulos son congruentes cuando tienen la misma forma y tamaño, es decir, sus lados correspondientes son iguales y sus ángulos correspondientes también. Existen varios criterios para determinar la congruencia.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál de los siguientes NO es un criterio de congruencia de triángulos?', 
    'Lado-Lado-Lado (LLL)', 
    'Ángulo-Ángulo-Ángulo (AAA)', 
    'Lado-Ángulo-Lado (LAL)', 
    'Ángulo-Lado-Ángulo (ALA)', 
    'B', 
    5, 
    7, 
    'Triángulos, congruencia de triángulos'
),
-- Pregunta 3
(
    'MATEMÁTICA', 
    NULL, 
    'Propiedades de los triángulos', 
    'En todo triángulo, la suma de las medidas de sus ángulos internos es siempre constante. Esta propiedad es fundamental para resolver muchos problemas de geometría.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cuál es la suma de los ángulos internos de cualquier triángulo?', 
    '90 grados', 
    '180 grados', 
    '270 grados', 
    '360 grados', 
    'B', 
    5, 
    7, 
    'Triángulos, congruencia de triángulos'
),
-- Pregunta 4
(
    'MATEMÁTICA', 
    NULL, 
    'Aplicación de congruencia', 
    'Si dos triángulos son congruentes, entonces todos sus elementos correspondientes (lados y ángulos) son iguales. Esta propiedad permite resolver problemas prácticos de medición indirecta.', 
    NULL, 
    NULL, 
    NULL, 
    'Si el triángulo ABC es congruente con el triángulo DEF, ¿qué elemento NO necesariamente será igual?', 
    'La medida del lado AB con DE', 
    'La medida del ángulo en B con el ángulo en E', 
    'El perímetro de ambos triángulos', 
    'La posición en el plano de ambos triángulos', 
    'D', 
    5, 
    7, 
    'Triángulos, congruencia de triángulos'
),
-- Pregunta 5
(
    'MATEMÁTICA', 
    NULL, 
    'Clasificación por ángulos', 
    'Los triángulos pueden clasificarse según la medida de sus ángulos internos. Esta clasificación es importante porque determina muchas de sus propiedades geométricas.', 
    NULL, 
    NULL, 
    NULL, 
    '¿Cómo se llama el triángulo que tiene un ángulo mayor a 90 grados?', 
    'Triángulo agudo', 
    'Triángulo rectángulo', 
    'Triángulo obtusángulo', 
    'Triángulo oblicuo', 
    'C', 
    5, 
    7, 
    'Triángulos, congruencia de triángulos'
);

--TEMA 58: Teorema de Pitágoras
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
) VALUES
-- Pregunta 1
('MATEMÁTICA', NULL, 'Aplicación del Teorema de Pitágoras',
'El Teorema de Pitágoras establece que en un triángulo rectángulo, el cuadrado de la hipotenusa es igual a la suma de los cuadrados de los catetos. Esto se expresa como c² = a² + b², donde c es la hipotenusa y a, b son los catetos. Considera un triángulo rectángulo con catetos de 3 cm y 4 cm.',
NULL, NULL, NULL,
'¿Cuál es la longitud de la hipotenusa en este triángulo?',
'5 cm', '6 cm', '7 cm', '8 cm',
'C', 5, 7, 'Teorema de Pitágoras'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Identificación de la hipotenusa',
'En un triángulo rectángulo, la hipotenusa es el lado opuesto al ángulo recto y es siempre el lado más largo. Es importante identificar correctamente cuál es la hipotenusa antes de aplicar el Teorema de Pitágoras. Observa un triángulo rectángulo con lados de 5 cm, 12 cm y 13 cm.',
NULL, NULL, NULL,
'¿Cuál de los siguientes lados es la hipotenusa en este triángulo?',
'5 cm', '12 cm', '13 cm', 'No se puede determinar',
'B', 5, 7, 'Teorema de Pitágoras'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Cálculo de un cateto',
'El Teorema de Pitágoras también puede usarse para encontrar la longitud de un cateto cuando se conocen la hipotenusa y el otro cateto. En un triángulo rectángulo, la hipotenusa mide 10 cm y uno de los catetos mide 6 cm.',
NULL, NULL, NULL,
'¿Cuál es la longitud del otro cateto en este triángulo?',
'7 cm', '8 cm', '9 cm', '10 cm',
'B', 5, 7, 'Teorema de Pitágoras'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Verificación del Teorema',
'Para comprobar si un triángulo es rectángulo, podemos verificar si cumple con el Teorema de Pitágoras. Si la suma de los cuadrados de los dos lados más cortos es igual al cuadrado del lado más largo, entonces es un triángulo rectángulo.',
NULL, NULL, NULL,
'¿Cuál de las siguientes ternas de números representa las longitudes de los lados de un triángulo rectángulo?',
'3, 4, 5', '4, 5, 6', '6, 7, 8', '5, 7, 9',
'A', 5, 7, 'Teorema de Pitágoras'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Problema práctico con Pitágoras',
'El Teorema de Pitágoras tiene muchas aplicaciones prácticas. Por ejemplo, se puede usar para calcular distancias. Imagina que una escalera de 5 metros de largo está apoyada contra una pared, y la base de la escalera está a 3 metros de la pared.',
NULL, NULL, NULL,
'¿A qué altura del piso se encuentra el punto donde la escalera toca la pared?',
'3 metros', '4 metros', '5 metros', '6 metros',
'B', 5, 7, 'Teorema de Pitágoras');

--TEMA 59: Unidades de masa
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, 'Conversión de Unidades', 
    'Un estudiante debe convertir 3 kilogramos a gramos para un experimento. ¿Cuántos gramos son equivalentes a 3 kilogramos?', 
    NULL, NULL, NULL, 
    '¿Cuántos gramos son equivalentes a 3 kilogramos?', 
    '300', '3000', '300000', '30', 
    'B', 5, 7, 'Unidades de masa'
),
(
    'MATEMÁTICA', NULL, 'Suma de Masa', 
    'En una receta, se necesitan 500 gramos de azúcar, 200 gramos de harina y 300 gramos de mantequilla. ¿Cuál es el peso total de estos ingredientes?', 
    NULL, NULL, NULL, 
    '¿Cuál es el peso total de estos ingredientes?', 
    '800', '1000', '900', '1200', 
    'C', 5, 7, 'Unidades de masa'
),
(
    'MATEMÁTICA', NULL, 'Conversión de Litros a Kilogramos', 
    'Un litro de agua pesa aproximadamente 1 kilogramo. Si tienes 5 litros de agua, ¿cuánto pesarán en kilogramos?', 
    NULL, NULL, NULL, 
    '¿Cuánto pesarán 5 litros de agua en kilogramos?', 
    '5', '50', '500', '0.5', 
    'A', 5, 7, 'Unidades de masa'
),
(
    'MATEMÁTICA', NULL, 'Masa de una Manzana', 
    'Una manzana pesa aproximadamente 150 gramos. ¿Cuántos kilogramos pesa 10 manzanas?', 
    NULL, NULL, NULL, 
    '¿Cuántos kilogramos pesan 10 manzanas?', 
    '1.5', '0.15', '15', '0.015', 
    'A', 5, 7, 'Unidades de masa'
),
(
    'MATEMÁTICA', NULL, 'Peso de una Caja', 
    'Una caja de 5 kilogramos tiene un peso adicional de 2000 gramos debido al empaque. ¿Cuál es el peso total de la caja en gramos?', 
    NULL, NULL, NULL, 
    '¿Cuál es el peso total de la caja en gramos?', 
    '7000', '700', '70', '700000', 
    'A', 5, 7, 'Unidades de masa'
);

--TEMA 60: Unidades de tiempo
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", 
    "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
(
    'MATEMÁTICA', NULL, '¿Cuántos minutos hay en 2 horas?', 
    'Sabemos que 1 hora tiene 60 minutos. Utiliza esta información para calcular cuántos minutos hay en 2 horas.',
    NULL, NULL, NULL,
    '¿Cuántos minutos hay en 2 horas?',
    '100', '120', '130', '140', 'B', 5, 7, 'Unidades de tiempo'
),
(
    'MATEMÁTICA', NULL, 'Tiempo en días de una semana', 
    'Si un mes tiene 4 semanas completas, ¿cuántos días son en total las 4 semanas?',
    NULL, NULL, NULL,
    '¿Cuántos días son en total las 4 semanas?',
    '28', '30', '32', '35', 'A', 5, 7, 'Unidades de tiempo'
),
(
    'MATEMÁTICA', NULL, 'Conversión de horas a minutos', 
    'Un estudiante está trabajando en una tarea que requiere 3 horas. ¿Cuántos minutos son necesarios para completar la tarea?',
    NULL, NULL, NULL,
    '¿Cuántos minutos son necesarios para completar la tarea de 3 horas?',
    '150', '180', '200', '220', 'B', 5, 7, 'Unidades de tiempo'
),
(
    'MATEMÁTICA', NULL, 'Duración de un evento', 
    'Un evento comenzó a las 9:30 a.m. y terminó a las 1:15 p.m. ¿Cuánto duró el evento en horas y minutos?',
    NULL, NULL, NULL,
    '¿Cuánto duró el evento en horas y minutos?',
    '3 horas y 45 minutos', '4 horas', '4 horas y 15 minutos', '5 horas', 'A', 5, 7, 'Unidades de tiempo'
),
(
    'MATEMÁTICA', NULL, 'Convertir minutos a horas', 
    'Un trabajo requiere 240 minutos para completarse. ¿Cuántas horas es equivalente a 240 minutos?',
    NULL, NULL, NULL,
    '¿Cuántas horas es equivalente a 240 minutos?',
    '3', '4', '5', '6', 'A', 5, 7, 'Unidades de tiempo'
);


--TEMA 61: Unidades de longitud
INSERT INTO pregunta (
  "TIPO_EVALUACION", 
  "GRUPO", 
  "TEXTO_TITULO", 
  "TEXTO_SUPERIOR", 
  "TEXTO_IMAGEN", 
  "TEXTO_INFERIOR", 
  "ID_ARCHIVO_CARGA", 
  "PREGUNTA", 
  "OPCION_A", 
  "OPCION_B", 
  "OPCION_C", 
  "OPCION_D", 
  "RESPUESTA_CORRECTA", 
  "ID_COMPETENCIA", 
  "ID_GRADO", 
  "TEMA"
) 
VALUES 
-- Pregunta 1
(
  'MATEMÁTICA', 
  NULL, 
  'Conversión de unidades de longitud', 
  'La longitud de un campo de fútbol es de 100 metros. En un ejercicio, debes convertir esta medida a centímetros. Recuerda que 1 metro equivale a 100 centímetros.',
  NULL, 
  NULL, 
  NULL, 
  '¿Cuántos centímetros mide el campo de fútbol?', 
  '1000 cm', 
  '100000 cm', 
  '10000 cm', 
  '10 cm', 
  'C', 
  5, 
  7, 
  'Unidades de longitud'
),

-- Pregunta 2
(
  'MATEMÁTICA', 
  NULL, 
  'Longitud de una regla', 
  'Una regla tiene una longitud de 30 centímetros. ¿Cuántos milímetros son equivalentes a esa medida? Recuerda que 1 centímetro equivale a 10 milímetros.',
  NULL, 
  NULL, 
  NULL, 
  '¿Cuántos milímetros tiene la regla?', 
  '30 mm', 
  '3 mm', 
  '3000 mm', 
  '300 mm', 
  'D', 
  5, 
  7, 
  'Unidades de longitud'
),

-- Pregunta 3
(
  'MATEMÁTICA', 
  NULL, 
  'Distancia entre dos ciudades', 
  'La distancia entre dos ciudades es de 5 kilómetros. ¿Cuántos metros hay entre ambas ciudades? No olvides que 1 kilómetro son 1000 metros.',
  NULL, 
  NULL, 
  NULL, 
  '¿Cuántos metros hay entre las dos ciudades?', 
  '5000 m', 
  '500 m', 
  '50000 m', 
  '5 m', 
  'A', 
  5, 
  7, 
  'Unidades de longitud'
),

-- Pregunta 4
(
  'MATEMÁTICA', 
  NULL, 
  'Medición de un salón de clases', 
  'El largo de un salón de clases es de 8 metros. ¿Cuántos centímetros mide el salón? Recuerda que 1 metro equivale a 100 centímetros.',
  NULL, 
  NULL, 
  NULL, 
  '¿Cuántos centímetros mide el salón de clases?', 
  '8000 cm', 
  '800 cm', 
  '80 cm', 
  '8 cm', 
  'B', 
  5, 
  7, 
  'Unidades de longitud'
),

-- Pregunta 5
(
  'MATEMÁTICA', 
  NULL, 
  'Conversión entre unidades', 
  'Una distancia de 1200 milímetros se quiere expresar en metros. ¿Cuántos metros tiene esta distancia? Recuerda que 1 metro son 1000 milímetros.',
  NULL, 
  NULL, 
  NULL, 
  '¿Cuántos metros son 1200 milímetros?', 
  '1.2 m', 
  '120 m', 
  '12 m', 
  '0.12 m', 
  'A', 
  5, 
  7, 
  'Unidades de longitud'
);


--TEMA 62: Conversión de divisas
INSERT INTO pregunta (
    "TIPO_EVALUACION", 
    "GRUPO", 
    "TEXTO_TITULO", 
    "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", 
    "ID_ARCHIVO_CARGA", 
    "PREGUNTA", 
    "OPCION_A", 
    "OPCION_B", 
    "OPCION_C", 
    "OPCION_D", 
    "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", 
    "ID_GRADO", 
    "TEMA"
)
VALUES
-- Pregunta 1
('MATEMÁTICA', NULL, 'Conversión de soles a dólares', 
'Si el tipo de cambio es 1 dólar = 3.5 soles, ¿cuántos dólares obtienes al cambiar 70 soles?', 
NULL, NULL, NULL, 
'¿Cuántos dólares obtienes?', 
'18', 
'20', 
'22', 
'24', 
'B', 
5, 
7, 
'Conversión de divisas'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Cambio de soles a euros', 
'El tipo de cambio es 1 euro = 4.2 soles. Si deseas cambiar 120 soles, ¿cuántos euros recibirás?', 
NULL, NULL, NULL, 
'¿Cuántos euros recibirás por 120 soles?', 
'27', 
'28', 
'29', 
'30', 
'C', 
5, 
7, 
'Conversión de divisas'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'De dólares a soles', 
'Si el tipo de cambio es 1 dólar = 3.5 soles, ¿cuántos soles obtienes si cambias 40 dólares?', 
NULL, NULL, NULL, 
'¿Cuántos soles obtienes por 40 dólares?', 
'140', 
'150', 
'160', 
'170', 
'A', 
5, 
7, 
'Conversión de divisas'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Conversión de euros a soles', 
'El tipo de cambio es 1 euro = 4.5 soles. Si tienes 50 euros, ¿cuántos soles obtienes al cambiarlos?', 
NULL, NULL, NULL, 
'¿Cuántos soles recibirás por 50 euros?', 
'200', 
'210', 
'220', 
'230', 
'D', 
5, 
7, 
'Conversión de divisas'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'De euros a dólares', 
'Si el tipo de cambio es 1 euro = 1.15 dólares, ¿cuántos dólares obtienes al cambiar 80 euros?', 
NULL, NULL, NULL, 
'¿Cuántos dólares recibirás por 80 euros?', 
'90', 
'92', 
'93', 
'94', 
'B', 
5, 
7, 
'Conversión de divisas');

-- PREGUNTAS COMUNICACIÓN - 1° DE SECUNDARIA

-- Preguntas para el tema "La Literatura"
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Géneros literarios', 
'La literatura se divide en tres grandes géneros que han evolucionado a lo largo de la historia. Cada género tiene características específicas que lo diferencian de los demás y permite clasificar las obras literarias según su forma y contenido.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es considerado uno de los tres grandes géneros literarios?', 
'El género lírico', 'El género dramático', 'El género narrativo', 'El género periodístico', 
'D', 6, 7, 'La Literatura'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Figuras literarias', 
'Las figuras literarias son recursos que utilizan los escritores para embellecer el lenguaje y transmitir ideas de manera más expresiva. Estas herramientas son fundamentales en la creación literaria.', 
NULL, NULL, NULL, 
'¿Qué figura literaria consiste en la repetición de sonidos al principio de palabras consecutivas o cercanas?', 
'Metáfora', 'Hipérbole', 'Aliteración', 'Personificación', 
'C', 6, 7, 'La Literatura'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Subgéneros narrativos', 
'Dentro del género narrativo existen diversos subgéneros que se diferencian por su extensión, estructura y tipo de contenido. Estos subgéneros han ido variando a lo largo de las épocas literarias.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes obras pertenece al subgénero de la novela?', 
'La Ilíada', 'Don Quijote de la Mancha', 'Romeo y Julieta', 'Soneto XXIII de Garcilaso', 
'B', 6, 7, 'La Literatura'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Literatura universal', 
'La literatura universal abarca obras fundamentales de diferentes culturas y épocas que han trascendido fronteras y se consideran clásicos de la humanidad.', 
NULL, NULL, NULL, 
'¿Qué obra es considerada el primer gran poema épico de la literatura occidental?', 
'La Divina Comedia', 'La Odisea', 'El Cantar de los Nibelungos', 'El Popol Vuh', 
'B', 6, 7, 'La Literatura'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Autores representativos', 
'Cada período literario ha tenido autores que destacaron por su estilo y contribuciones al desarrollo de la literatura. Conocer estos autores ayuda a comprender la evolución de las corrientes literarias.', 
NULL, NULL, NULL, 
'¿Qué autor es considerado el máximo representante del Siglo de Oro español?', 
'Federico García Lorca', 'Miguel de Cervantes', 'Pablo Neruda', 'Gabriel García Márquez', 
'B', 6, 7, 'La Literatura'),

-- Preguntas para el tema "Comentario crítico a partir de las ideas principales"
('COMUNICACIÓN', NULL, 'Identificación de ideas', 
'Para realizar un comentario crítico efectivo, es fundamental identificar correctamente las ideas principales de un texto, que son aquellas que contienen la información más relevante y sobre las cuales se construye el mensaje central.', 
NULL, NULL, NULL, 
'¿Qué característica define mejor a una idea principal en un texto?', 
'Es una información accesoria que apoya el contenido', 'Expresa el mensaje más importante del texto', 'Siempre aparece al inicio del párrafo', 'Suele ser una cita textual de otro autor', 
'B', 6, 7, 'Comentario crítico a partir de las ideas principales'),

('COMUNICACIÓN', NULL, 'Estructura del comentario', 
'Un comentario crítico bien estructurado debe contener varios elementos clave que permitan analizar y valorar el texto de manera organizada y fundamentada.', 
NULL, NULL, NULL, 
'¿Cuál de estos elementos NO forma parte de la estructura básica de un comentario crítico?', 
'Resumen del contenido', 'Identificación de ideas principales', 'Opinión personal fundamentada', 'Biografía completa del autor', 
'D', 6, 7, 'Comentario crítico a partir de las ideas principales'),

('COMUNICACIÓN', NULL, 'Argumentación en el comentario', 
'La argumentación es una parte esencial del comentario crítico, ya que permite sustentar las opiniones y valoraciones que se hacen sobre el texto analizado.', 
NULL, NULL, NULL, 
'¿Qué tipo de argumento utiliza datos concretos y verificables para apoyar una opinión?', 
'Argumento de autoridad', 'Argumento estadístico', 'Argumento emotivo', 'Argumento basado en creencias', 
'B', 6, 7, 'Comentario crítico a partir de las ideas principales'),

('COMUNICACIÓN', NULL, 'Objetividad en el análisis', 
'Aunque el comentario crítico incluye valoraciones personales, es importante mantener cierto grado de objetividad basándose en el texto y evitando prejuicios.', 
NULL, NULL, NULL, 
'¿Cuál de estas acciones ayuda a mantener la objetividad en un comentario crítico?', 
'Ignorar partes del texto que no apoyen nuestra opinión', 'Basar todas las afirmaciones en citas textuales', 'Fundamentar las opiniones con ejemplos del texto', 'Expresar solo emociones sobre lo leído', 
'C', 6, 7, 'Comentario crítico a partir de las ideas principales'),

('COMUNICACIÓN', NULL, 'Relación texto-contexto', 
'Un buen comentario crítico no solo analiza el texto en sí mismo, sino que también considera el contexto en que fue escrito para comprender mejor su significado e importancia.', 
NULL, NULL, NULL, 
'¿Qué elemento del contexto es relevante para analizar un texto literario?', 
'La época histórica en que fue escrito', 'Las preferencias personales del lector', 'El precio actual del libro', 'El número de páginas de la obra', 
'A', 6, 7, 'Comentario crítico a partir de las ideas principales'),

-- Preguntas para el tema "Acentuación diacrítica"
('COMUNICACIÓN', NULL, 'Uso del tilde diacrítico', 
'La acentuación diacrítica utiliza el tilde para diferenciar palabras que se escriben igual pero tienen significados diferentes según su función gramatical.', 
NULL, NULL, NULL, 
'¿En cuál de estas palabras se usa correctamente el tilde diacrítico?', 
'El niño se fué temprano', 'Sólo vine a saludar', 'Déjame ése libro', 'Ésta es mi casa', 
'B', 6, 7, 'Acentuación diacrítica'),

('COMUNICACIÓN', NULL, 'Diferenciación de monosílabos', 
'Los monosílabos generalmente no llevan tilde, excepto en los casos de acentuación diacrítica donde se necesita distinguir su significado.', 
NULL, NULL, NULL, 
'¿Cuál de estos pares de palabras muestra correctamente el uso diacrítico del tilde?', 
'mi (adjetivo) - mí (pronombre)', 'tu (pronombre) - tú (adjetivo)', 'el (artículo) - él (pronombre)', 'se (verbo) - sé (pronombre)', 
'C', 6, 7, 'Acentuación diacrítica'),

('COMUNICACIÓN', NULL, 'Casos especiales', 
'Algunas palabras polisílabas también utilizan el tilde diacrítico para diferenciar sus diversos significados y usos gramaticales.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones está correctamente aplicado el tilde diacrítico?', 
'Qué bueno que hayas venido', 'Dime que quieres para comer', 'No se donde puse el libro', 'Cuando vengas avisame', 
'A', 6, 7, 'Acentuación diacrítica'),

('COMUNICACIÓN', NULL, 'Reglas actualizadas', 
'La RAE ha modificado algunas normas sobre acentuación diacrítica en los últimos años, eliminando tildes en ciertos casos donde antes eran obligatorios.', 
NULL, NULL, NULL, 
'Según las últimas normas de la RAE, ¿cuál de estas palabras ya NO lleva tilde diacrítico?', 
'éste (demostrativo)', 'sólo (adverbio)', 'aún (adverbio)', 'té (sustantivo)', 
'B', 6, 7, 'Acentuación diacrítica'),

('COMUNICACIÓN', NULL, 'Identificación de casos', 
'Reconocer cuándo aplicar el tilde diacrítico requiere comprender la función gramatical de las palabras y sus diferentes significados.', 
NULL, NULL, NULL, 
'¿Qué palabra de las siguientes siempre lleva tilde diacrítico independientemente de su función?', 
'que', 'como', 'quien', 'sí (afirmación)', 
'D', 6, 7, 'Acentuación diacrítica'),

-- Preguntas para el tema "La exposición: Elección del tema y la estructura del contenido"
('COMUNICACIÓN', NULL, 'Selección del tema', 
'Al preparar una exposición, la elección del tema es fundamental y debe considerar varios factores para asegurar que sea adecuado y de interés para el público objetivo.', 
NULL, NULL, NULL, 
'¿Cuál de estos NO es un criterio recomendable para seleccionar un tema de exposición?', 
'Que sea del interés personal del expositor', 'Que sea extremadamente amplio y general', 'Que haya suficiente información disponible', 'Que sea apropiado para el público', 
'B', 6, 7, 'La exposición: Elección del tema y la estructura del contenido'),

('COMUNICACIÓN', NULL, 'Estructura básica', 
'Toda exposición bien organizada sigue una estructura básica que facilita la comprensión del público y el desarrollo lógico del tema.', 
NULL, NULL, NULL, 
'¿Cuál es el orden correcto de las partes fundamentales de una exposición?', 
'Introducción, desarrollo, conclusión', 'Conclusión, desarrollo, introducción', 'Desarrollo, introducción, conclusión', 'Introducción, conclusión, desarrollo', 
'A', 6, 7, 'La exposición: Elección del tema y la estructura del contenido'),

('COMUNICACIÓN', NULL, 'Introducción efectiva', 
'La introducción de una exposición debe captar la atención del público y presentar claramente el tema que se va a desarrollar.', 
NULL, NULL, NULL, 
'¿Qué elemento NO es recomendable incluir en la introducción de una exposición?', 
'Una anécdota relacionada con el tema', 'Las conclusiones principales', 'Los objetivos de la exposición', 'Una breve presentación del tema', 
'B', 6, 7, 'La exposición: Elección del tema y la estructura del contenido'),

('COMUNICACIÓN', NULL, 'Desarrollo del contenido', 
'El desarrollo es la parte central de la exposición donde se presenta y explica la información de manera organizada y comprensible.', 
NULL, NULL, NULL, 
'¿Qué técnica ayuda a organizar mejor el contenido en el desarrollo de una exposición?', 
'Usar párrafos muy largos y detallados', 'Dividir la información en subtemas', 'Improvisar según las reacciones del público', 'Repetir varias veces los mismos conceptos', 
'B', 6, 7, 'La exposición: Elección del tema y la estructura del contenido'),

('COMUNICACIÓN', NULL, 'Conclusión apropiada', 
'La conclusión de una exposición debe sintetizar las ideas principales y dejar una impresión final positiva en el auditorio.', 
NULL, NULL, NULL, 
'¿Qué es recomendable incluir en la conclusión de una exposición?', 
'Nueva información no mencionada antes', 'Un resumen de los puntos principales', 'Críticas a otros puntos de vista', 'Un cambio abrupto de tema', 
'B', 6, 7, 'La exposición: Elección del tema y la estructura del contenido');

-- Preguntas para el tema: Comprensión lectora de textos de alternativa múltiple
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'El viaje inesperado', 
 'Lee el siguiente texto: "Marcos salió de su casa sin saber que ese día cambiaría su vida para siempre. Al doblar en la esquina de la panadería, encontró un perro callejero que lo miraba con ojos suplicantes. A pesar de tener prisa, no pudo evitar llevarlo a casa." Según el texto:', 
 NULL, NULL, NULL, 
 '¿Qué sentimiento experimentó Marcos al ver al perro?', 
 'Indiferencia, pues siguió su camino', 
 'Curiosidad por saber de dónde venía', 
 'Compasión, ya que decidió ayudarlo', 
 'Miedo a que el perro pudiera morderlo', 
 'C', 6, 7, 'Comprensión lectora de textos de alternativa múltiple'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'La excursión escolar', 
 'Texto: "El curso de primer año organizó una excursión al bosque cercano. La profesora advirtió que no se separaran del grupo, pero Jaime, curioso por naturaleza, se adentró entre los árboles siguiendo el rastro de un pájaro colorido. Cuando quiso volver, ya no reconocía el camino."', 
 NULL, NULL, NULL, 
 '¿Por qué Jaime se separó del grupo?', 
 'Porque se perdió accidentalmente', 
 'Porque estaba aburrido de la excursión', 
 'Porque siguió su curiosidad por el pájaro', 
 'Porque la profesora se lo permitió', 
 'C', 6, 7, 'Comprensión lectora de textos de alternativa múltiple'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'El concurso de poesía', 
 'Fragmento: "Ana nunca había participado en un concurso de poesía, pero su maestra insistió en que tenía talento. El día de la presentación, sus manos temblaban al subir al escenario. Sin embargo, cuando comenzó a recitar, su voz se tornó firme y clara, cautivando al público."', 
 NULL, NULL, NULL, 
 '¿Cómo superó Ana su nerviosismo inicial?', 
 'Abandonando el escenario', 
 'Pidiendo ayuda a su maestra', 
 'Concentrándose en su recitación', 
 'Saltándose partes del poema', 
 'C', 6, 7, 'Comprensión lectora de textos de alternativa múltiple'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'La llave misteriosa', 
 'Texto narrativo: "En el desván de su abuela, Lucía encontró una llave antigua dentro de una caja de madera tallada. La llave tenía un diseño peculiar, con hendiduras que formaban una estrella. Su abuela, al verla, sonrió misteriosamente pero no quiso decir para qué servía."', 
 NULL, NULL, NULL, 
 '¿Qué actitud mostró la abuela respecto a la llave?', 
 'De enojo por haberla encontrado', 
 'De indiferencia total', 
 'De misterio, sin revelar su propósito', 
 'De tristeza por recuerdos pasados', 
 'C', 6, 7, 'Comprensión lectora de textos de alternativa múltiple'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'El proyecto de ciencias', 
 'Texto expositivo: "Carlos y sus compañeros debían presentar un proyecto sobre energías renovables. Decidieron enfocarse en la energía eólica y construyeron un pequeño molino de viento funcional. Durante la presentación, explicaron con claridad cómo transforma el viento en energía útil."', 
 NULL, NULL, NULL, 
 '¿Qué tipo de energía investigó el grupo?', 
 'Energía solar', 
 'Energía hidráulica', 
 'Energía eólica', 
 'Energía geotérmica', 
 'C', 6, 7, 'Comprensión lectora de textos de alternativa múltiple'),

-- Preguntas para el tema: Acentuación enfática
('COMUNICACIÓN', NULL, 'Identifica el adverbio enfático', 
 'Los adverbios enfáticos son palabras que se utilizan para recalcar o intensificar el significado de otra palabra o expresión en la oración. Suelen llevar tilde diacrítica para diferenciarlos de otras palabras similares.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes palabras es un adverbio enfático?', 
 'mas (conjunción equivalente a "pero")', 
 'más (adverbio de cantidad)', 
 'mi (posesivo)', 
 'tu (posesivo)', 
 'B', 6, 7, 'Acentuación enfática'),

('COMUNICACIÓN', NULL, 'Tilde diacrítica en demostrativos', 
 'Los demostrativos (este, ese, aquel) pueden llevar tilde cuando funcionan como pronombres para evitar ambigüedades, aunque según las últimas normas de la RAE ya no es obligatorio, pero sigue siendo recomendable en casos de posible confusión.', 
 NULL, NULL, NULL, 
 '¿En qué caso sería más recomendable usar tilde en un demostrativo?', 
 'Cuando funciona como adjetivo: "Este libro"', 
 'Cuando funciona como pronombre: "Éste es el libro"', 
 'Nunca se debe usar tilde en demostrativos', 
 'Siempre debe llevar tilde', 
 'B', 6, 7, 'Acentuación enfática'),

('COMUNICACIÓN', NULL, 'Diferenciación de palabras', 
 'La tilde diacrítica sirve para diferenciar palabras que se escriben igual pero tienen significados diferentes. Por ejemplo: "sí" (afirmación) vs. "si" (condicional).', 
 NULL, NULL, NULL, 
 '¿Qué par de palabras muestra correctamente el uso de tilde diacrítica?', 
 'el (artículo) - él (pronombre)', 
 'aun (incluye) - aun (todavía)', 
 'de (preposición) - dé (verbo dar)', 
 'se (pronombre) - sé (verbo saber)', 
 'D', 6, 7, 'Acentuación enfática'),

('COMUNICACIÓN', NULL, 'Uso correcto de "sólo"', 
 'Según las normas actuales de la RAE, la palabra "solo" puede llevar tilde cuando hay riesgo de ambigüedad, aunque ya no es obligatorio. Sin embargo, en contextos formales o educativos se sigue recomendando su uso en estos casos.', 
 NULL, NULL, NULL, 
 '¿En qué caso sería más apropiado usar "sólo" con tilde?', 
 '"Vine solo a la fiesta" (sin compañía)', 
 '"Sólo quiero un helado" (solamente)', 
 'Nunca debe llevar tilde', 
 'Siempre debe llevar tilde', 
 'B', 6, 7, 'Acentuación enfática'),

('COMUNICACIÓN', NULL, 'Identifica el monosílabo con tilde diacrítica', 
 'Los monosílabos generalmente no llevan tilde, excepto en casos de tilde diacrítica para diferenciar significados.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos monosílabos lleva tilde diacrítica correctamente?', 
 'fui (verbo ir)', 
 'dio (verbo dar)', 
 'té (infusión)', 
 'fe (creencia religiosa)', 
 'C', 6, 7, 'Acentuación enfática'),

-- Preguntas para el tema: La exposición II
('COMUNICACIÓN', NULL, 'Estructura de una exposición', 
 'Una exposición oral bien organizada sigue una estructura clara que permite al público seguir el hilo argumental fácilmente.', 
 NULL, NULL, NULL, 
 '¿Cuál es el orden correcto de las partes básicas de una exposición?', 
 'Introducción, desarrollo, conclusión', 
 'Conclusión, desarrollo, introducción', 
 'Desarrollo, introducción, conclusión', 
 'Introducción, conclusión, desarrollo', 
 'A', 6, 7, 'La exposición II'),

('COMUNICACIÓN', NULL, 'Recursos para exponer', 
 'En una exposición oral, es importante utilizar recursos que apoyen el discurso y mantengan la atención del público.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos NO es un recurso adecuado para apoyar una exposición?', 
 'Presentación digital con imágenes clave', 
 'Mapas conceptuales o esquemas', 
 'Leer todo el texto sin levantar la vista', 
 'Ejemplos prácticos o anécdotas', 
 'C', 6, 7, 'La exposición II'),

('COMUNICACIÓN', NULL, 'Lenguaje no verbal', 
 'El lenguaje corporal y la expresión facial son fundamentales en una exposición oral, ya que refuerzan el mensaje y conectan con la audiencia.', 
 NULL, NULL, NULL, 
 '¿Qué aspecto del lenguaje no verbal es importante en una exposición?', 
 'Mantener contacto visual con el público', 
 'Mover constantemente las manos sin propósito', 
 'Mirar siempre al suelo', 
 'Cruzar los brazos durante toda la exposición', 
 'A', 6, 7, 'La exposición II'),

('COMUNICACIÓN', NULL, 'Adaptación al público', 
 'Un buen expositor adapta su lenguaje y contenido según las características de su audiencia.', 
 NULL, NULL, NULL, 
 '¿Qué debería considerar al adaptar una exposición para estudiantes de primer año?', 
 'Usar un lenguaje técnico y especializado', 
 'Incluir muchos datos estadísticos complejos', 
 'Emplear ejemplos cercanos a su realidad', 
 'Hablar muy rápido para cubrir más contenido', 
 'C', 6, 7, 'La exposición II'),

('COMUNICACIÓN', NULL, 'Manejo de preguntas', 
 'Al finalizar una exposición, es común que el público tenga preguntas o comentarios sobre el tema presentado.', 
 NULL, NULL, NULL, 
 '¿Cuál es la actitud más adecuada frente a preguntas del público?', 
 'Ignorarlas si no sabemos la respuesta', 
 'Responder con honestidad, admitiendo si no se sabe algo', 
 'Inventar respuestas para no quedar mal', 
 'Criticar las preguntas que consideremos simples', 
 'B', 6, 7, 'La exposición II'),

-- Preguntas para el tema: Géneros literarios: clásicos y modernos
('COMUNICACIÓN', NULL, 'Diferencias entre géneros', 
 'Los géneros literarios han evolucionado a lo largo de la historia, manteniendo algunas características básicas pero adaptándose a nuevos formatos y estilos.', 
 NULL, NULL, NULL, 
 '¿Qué caracteriza principalmente al género lírico?', 
 'Narración de hechos ficticios o reales', 
 'Expresión de sentimientos y emociones', 
 'Diálogos para ser representados', 
 'Descripción objetiva de la realidad', 
 'B', 6, 7, 'Géneros literarios: clásicos y modernos'),

('COMUNICACIÓN', NULL, 'Géneros dramáticos', 
 'El género dramático incluye obras escritas para ser representadas ante un público, con personajes que interactúan a través del diálogo.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas obras pertenece al género dramático?', 
 'La Ilíada de Homero', 
 'Romeo y Julieta de Shakespeare', 
 'Cien años de soledad de García Márquez', 
 'Veinte poemas de amor de Neruda', 
 'B', 6, 7, 'Géneros literarios: clásicos y modernos'),

('COMUNICACIÓN', NULL, 'Nuevos formatos literarios', 
 'En la actualidad han surgido nuevos formatos que mezclan características de los géneros tradicionales con medios digitales.', 
 NULL, NULL, NULL, 
 '¿Qué ejemplo representa un formato literario moderno?', 
 'Novela epistolar del siglo XVIII', 
 'Poema épico de la antigua Grecia', 
 'Blog narrativo con entradas semanales', 
 'Tragedia clásica romana', 
 'C', 6, 7, 'Géneros literarios: clásicos y modernos'),

('COMUNICACIÓN', NULL, 'Subgéneros narrativos', 
 'Dentro del género narrativo existen diversos subgéneros que se diferencian por su extensión, estructura y temática.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos es un subgénero narrativo?', 
 'Soneto', 
 'Tragedia', 
 'Novela policial', 
 'Oda', 
 'C', 6, 7, 'Géneros literarios: clásicos y modernos'),

('COMUNICACIÓN', NULL, 'Características de la épica', 
 'La épica es un género literario clásico que narra hazañas heroicas, a menudo con elementos mitológicos.', 
 NULL, NULL, NULL, 
 '¿Qué obra es un ejemplo clásico del género épico?', 
 'La metamorfosis de Kafka', 
 'La Odisea de Homero', 
 'El principito de Saint-Exupéry', 
 'La casa de Bernarda Alba de Lorca', 
 'B', 6, 7, 'Géneros literarios: clásicos y modernos'),

-- Preguntas para el tema: Mitos griegos contados otra vez - Nathaniel Hawthorne
('COMUNICACIÓN', NULL, 'El estilo de Hawthorne', 
 'Nathaniel Hawthorne adaptó los mitos griegos para hacerlos más accesibles a los jóvenes lectores, manteniendo su esencia pero con un lenguaje más sencillo.', 
 NULL, NULL, NULL, 
 '¿Qué caracteriza la versión de Hawthorne de los mitos griegos?', 
 'Los presenta exactamente igual que las versiones originales', 
 'Los simplifica demasiado, perdiendo su significado', 
 'Los adapta con un lenguaje más accesible sin perder su esencia', 
 'Los combina con historias modernas', 
 'C', 6, 7, 'Mitos griegos contados otra vez - Nathaniel Hawthorne'),

('COMUNICACIÓN', NULL, 'Personajes mitológicos', 
 'Los mitos griegos están poblados por dioses, héroes y criaturas fantásticas que representan fuerzas de la naturaleza o aspectos humanos.', 
 NULL, NULL, NULL, 
 '¿Qué personaje NO aparece en los mitos griegos adaptados por Hawthorne?', 
 'Zeus', 
 'Hércules', 
 'Perseo', 
 'Sherlock Holmes', 
 'D', 6, 7, 'Mitos griegos contados otra vez - Nathaniel Hawthorne'),

('COMUNICACIÓN', NULL, 'El mito de Perseo', 
 'En la versión de Hawthorne, Perseo es un héroe que debe enfrentar numerosos desafíos, incluyendo la decapitación de Medusa.', 
 NULL, NULL, NULL, 
 '¿Qué objeto mágico ayuda a Perseo en su misión?', 
 'El martillo de Thor', 
 'El espejo de bruja', 
 'El casco de invisibilidad', 
 'La lámpara de Aladino', 
 'C', 6, 7, 'Mitos griegos contados otra vez - Nathaniel Hawthorne'),

('COMUNICACIÓN', NULL, 'Temas mitológicos', 
 'Los mitos griegos suelen tratar temas universales como el coraje, la sabiduría, la hybris (desmesura) y las relaciones entre dioses y mortales.', 
 NULL, NULL, NULL, 
 '¿Qué enseñanza principal podemos extraer del mito de Ícaro?', 
 'La importancia de obedecer a los padres', 
 'Los peligros de la ambición desmedida', 
 'La necesidad de ayudar a los demás', 
 'El valor de la riqueza material', 
 'B', 6, 7, 'Mitos griegos contados otra vez - Nathaniel Hawthorne'),

('COMUNICACIÓN', NULL, 'Adaptaciones literarias', 
 'Las adaptaciones de mitos clásicos permiten que nuevas generaciones conozcan estas historias fundacionales de la cultura occidental.', 
 NULL, NULL, NULL, 
 '¿Por qué es importante leer versiones adaptadas de los mitos griegos?', 
 'Porque son más cortas que las originales', 
 'Porque eliminan todos los elementos violentos', 
 'Porque facilitan el acceso a estas historias culturalmente relevantes', 
 'Porque son más divertidas que las versiones serias', 
 'C', 6, 7, 'Mitos griegos contados otra vez - Nathaniel Hawthorne');

-- Preguntas para el tema: Comprensión de textos: Análisis por comparación
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Comparación de personajes', 
'En el cuento "Caperucita Roja" y "Los tres cerditos", ambos tienen personajes que enfrentan peligros. Analiza las siguientes afirmaciones sobre las similitudes entre estos cuentos clásicos.', 
NULL, NULL, NULL, 
'¿Qué elemento común encontramos en ambos cuentos?', 
'Los protagonistas son animales antropomórficos', 
'Ambos cuentos tienen un lobo como antagonista', 
'Las historias transcurren en castillos medievales', 
'Los personajes principales son adultos independientes', 
'B', 6, 7, 'Comprensión de textos: Análisis por comparación'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Análisis de textos informativos', 
'Lee los siguientes fragmentos sobre el mismo tema pero de diferentes fuentes: 
Texto 1: "El cambio climático es causado principalmente por actividades humanas como la quema de combustibles fósiles."
Texto 2: "Algunos científicos argumentan que las variaciones climáticas son parte de ciclos naturales del planeta."', 
NULL, NULL, NULL, 
'¿Qué técnica de comparación sería más útil para analizar estos textos?', 
'Identificar palabras clave repetidas', 
'Buscar diferencias en los puntos de vista presentados', 
'Contar el número de párrafos en cada texto', 
'Comparar el tamaño de la letra utilizada', 
'B', 6, 7, 'Comprensión de textos: Análisis por comparación'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Comparación de noticias', 
'Dos periódicos diferentes reportan el mismo evento deportivo. El periódico A destaca el excelente desempeño del equipo local, mientras que el periódico B se enfoca en los errores arbitrales que afectaron el resultado.', 
NULL, NULL, NULL, 
'¿Qué nos muestra esta comparación sobre los textos periodísticos?', 
'Que siempre deben ser objetivos e imparciales', 
'Que pueden presentar diferentes perspectivas del mismo hecho', 
'Que solo uno de ellos está diciendo la verdad', 
'Que el periódico B es de mejor calidad que el A', 
'B', 6, 7, 'Comprensión de textos: Análisis por comparación'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Estilos narrativos', 
'Al comparar un cuento de terror con uno de ciencia ficción, notamos diferencias en el vocabulario, ritmo de la narración y construcción de personajes.', 
NULL, NULL, NULL, 
'¿Qué elemento sería más útil comparar para identificar el género de cada texto?', 
'El número de páginas de cada obra', 
'La ambientación y los temas principales', 
'El año de publicación de los libros', 
'La nacionalidad de los autores', 
'B', 6, 7, 'Comprensión de textos: Análisis por comparación'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Versiones de un mismo mito', 
'El mito griego de Perséfone tiene versiones diferentes en diversas regiones de la antigua Grecia, con variaciones en detalles como el número de meses que pasa en el inframundo.', 
NULL, NULL, NULL, 
'¿Qué nos enseñan estas diferencias entre versiones?', 
'Que los mitos son historias falsas sin valor', 
'Que reflejan las creencias y necesidades de cada comunidad', 
'Que solo una versión puede ser la correcta', 
'Que los antiguos griegos no tenían buena memoria', 
'B', 6, 7, 'Comprensión de textos: Análisis por comparación'),

-- Preguntas para el tema: Uso de la coma, el punto y coma y los paréntesis
('COMUNICACIÓN', NULL, 'Uso correcto de signos', 
'Los signos de puntuación son esenciales para dar claridad y sentido a nuestros escritos. El uso adecuado de comas, puntos y comas y paréntesis puede cambiar completamente el significado de una oración.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes oraciones usa correctamente la coma?', 
'Fui al mercado, compré frutas, verduras y pan.', 
'Fui al mercado compré, frutas verduras y pan.', 
'Fui, al mercado compré frutas verduras y pan.', 
'Fui al mercado compré frutas, verduras, y pan.', 
'A', 6, 7, 'Uso de la coma, el punto y coma y los paréntesis'),

('COMUNICACIÓN', NULL, 'Signos en oraciones complejas', 
'El punto y coma se utiliza para separar elementos de una enumeración cuando estos ya contienen comas, o para unir oraciones relacionadas entre sí.', 
NULL, NULL, NULL, 
'¿Cuál es el uso correcto del punto y coma en esta oración?', 
'Compré manzanas, rojas; peras, verdes; y uvas, moradas.', 
'Compré manzanas rojas, peras verdes, y uvas moradas;', 
'Compré; manzanas rojas, peras verdes y uvas moradas.', 
'Compré manzanas rojas; peras verdes; uvas moradas.', 
'A', 6, 7, 'Uso de la coma, el punto y coma y los paréntesis'),

('COMUNICACIÓN', NULL, 'Paréntesis para aclaraciones', 
'Los paréntesis se utilizan para incluir información adicional o aclaratoria que no es esencial para la comprensión principal de la oración.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa correctamente los paréntesis?', 
'El autor (Gabriel García Márquez) escribió muchas novelas famosas.', 
'El autor Gabriel García Márquez (escribió muchas novelas famosas).', 
'El autor Gabriel (García Márquez escribió) muchas novelas famosas.', 
'El autor Gabriel García Márquez escribió muchas (novelas famosas).', 
'A', 6, 7, 'Uso de la coma, el punto y coma y los paréntesis'),

('COMUNICACIÓN', NULL, 'Comas en enumeraciones', 
'Las comas son fundamentales al hacer enumeraciones para separar claramente cada elemento de la lista.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de puntuar esta enumeración?', 
'Necesito lápices, cuadernos, regla y calculadora.', 
'Necesito lápices cuadernos, regla, y calculadora.', 
'Necesito, lápices, cuadernos, regla y calculadora.', 
'Necesito lápices cuadernos regla y calculadora.', 
'A', 6, 7, 'Uso de la coma, el punto y coma y los paréntesis'),

('COMUNICACIÓN', NULL, 'Puntuación en oraciones compuestas', 
'En oraciones compuestas, los signos de puntuación ayudan a organizar las ideas y mostrar las relaciones entre ellas.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones está correctamente puntuada?', 
'Aunque llovía mucho, salimos a caminar; pero llevamos paraguas.', 
'Aunque llovía mucho salimos a caminar, pero llevamos paraguas.', 
'Aunque, llovía mucho, salimos a caminar pero llevamos paraguas.', 
'Aunque llovía mucho; salimos a caminar, pero llevamos paraguas.', 
'A', 6, 7, 'Uso de la coma, el punto y coma y los paréntesis'),

-- Preguntas para el tema: La exposición espontánea: Recursos
('COMUNICACIÓN', NULL, 'Recursos para exponer', 
'En una exposición espontánea, el orador debe utilizar diversos recursos para mantener la atención del público y transmitir claramente sus ideas.', 
NULL, NULL, NULL, 
'¿Cuál de estos es un recurso útil para una exposición espontánea?', 
'Leer todo el texto directamente de unas notas', 
'Utilizar ejemplos concretos y anécdotas', 
'Hablar muy rápido para decir todo lo planeado', 
'Evitar el contacto visual con la audiencia', 
'B', 6, 7, 'La exposición espontánea: Recursos'),

('COMUNICACIÓN', NULL, 'Lenguaje corporal', 
'El lenguaje corporal es una herramienta fundamental al exponer, ya que refuerza el mensaje verbal y conecta con la audiencia.', 
NULL, NULL, NULL, 
'¿Qué aspecto del lenguaje corporal ayuda en una exposición?', 
'Movimientos exagerados y constantes', 
'Postura erguida y gestos naturales', 
'Brazos cruzados todo el tiempo', 
'Mirar exclusivamente al suelo', 
'B', 6, 7, 'La exposición espontánea: Recursos'),

('COMUNICACIÓN', NULL, 'Estructura de la exposición', 
'Toda buena exposición, aunque sea espontánea, debe tener una estructura clara que guíe al público a través del tema.', 
NULL, NULL, NULL, 
'¿Cuál es el orden más adecuado para estructurar una exposición?', 
'Conclusión, desarrollo, introducción', 
'Introducción, desarrollo, conclusión', 
'Desarrollo, introducción, conclusión', 
'Conclusión, introducción, desarrollo', 
'B', 6, 7, 'La exposición espontánea: Recursos'),

('COMUNICACIÓN', NULL, 'Adaptación al público', 
'Un buen expositor debe adaptar su discurso según las características de su audiencia para lograr una comunicación efectiva.', 
NULL, NULL, NULL, 
'¿Qué factor es más importante considerar sobre el público?', 
'El color favorito de los asistentes', 
'El nivel de conocimiento previo sobre el tema', 
'La estatura promedio de la audiencia', 
'La marca de ropa que usan', 
'B', 6, 7, 'La exposición espontánea: Recursos'),

('COMUNICACIÓN', NULL, 'Manejo de nervios', 
'Los nervios son normales al exponer, pero existen técnicas para manejarlos y no afecten la presentación.', 
NULL, NULL, NULL, 
'¿Cuál es una estrategia efectiva para manejar los nervios?', 
'Evitar prepararse para ser más espontáneo', 
'Respirar profundamente antes de comenzar', 
'Tomar varias bebidas azucaradas justo antes', 
'Pensar en todos los posibles errores', 
'B', 6, 7, 'La exposición espontánea: Recursos'),

-- Preguntas para el tema: Literatura: La prosa y el verso
('COMUNICACIÓN', NULL, 'Características del verso', 
'En literatura, el verso se caracteriza por su ritmo, métrica y frecuentemente por la rima, a diferencia de la prosa que sigue el flujo natural del lenguaje.', 
NULL, NULL, NULL, 
'¿Cuál de estas es una característica principal del verso?', 
'Sigue el ritmo natural del habla cotidiana', 
'Se escribe siempre en párrafos largos', 
'Tiene una estructura métrica medida', 
'Carece de cualquier tipo de ritmo', 
'C', 6, 7, 'Literatura: La prosa y el verso'),

('COMUNICACIÓN', NULL, 'Diferencias básicas', 
'La prosa y el verso son dos formas fundamentales de expresión literaria con características distintivas claras.', 
NULL, NULL, NULL, 
'¿Qué afirmación es correcta sobre prosa y verso?', 
'La prosa siempre es más artística que el verso', 
'El verso no puede contar historias como la prosa', 
'La prosa no tiene ritmo mientras el verso sí', 
'El verso tiene estructura métrica, la prosa no', 
'D', 6, 7, 'Literatura: La prosa y el verso'),

('COMUNICACIÓN', NULL, 'Ejemplos de prosa', 
'La prosa es la forma más común de escritura, utilizada en novelas, cuentos, ensayos y muchos otros géneros.', 
NULL, NULL, NULL, 
'¿Cuál de estos textos está escrito en prosa?', 
'Un soneto de amor del Siglo de Oro', 
'Una novela realista del siglo XIX', 
'Una copla popular tradicional', 
'Un haiku japonés', 
'B', 6, 7, 'Literatura: La prosa y el verso'),

('COMUNICACIÓN', NULL, 'Rima en el verso', 
'La rima es un elemento musical del verso que consiste en la repetición de sonidos al final de los versos.', 
NULL, NULL, NULL, 
'¿Qué tipo de rima se establece cuando coinciden solo los sonidos vocálicos?', 
'Rima consonante', 
'Rima asonante', 
'Rima libre', 
'Rima blanca', 
'B', 6, 7, 'Literatura: La prosa y el verso'),

('COMUNICACIÓN', NULL, 'Métrica poética', 
'La métrica se refiere a la medida de los versos, contando el número de sílabas de cada uno según reglas específicas.', 
NULL, NULL, NULL, 
'¿Cómo se llama el verso de catorce sílabas?', 
'Alejandrino', 
'Endecasílabo', 
'Octosílabo', 
'Hexasílabo', 
'A', 6, 7, 'Literatura: La prosa y el verso'),

-- Preguntas para el tema: Figuras literarias
('COMUNICACIÓN', NULL, 'Identificación de metáforas', 
'Las figuras literarias son recursos que utilizan los escritores para dar mayor expresividad a sus textos, siendo la metáfora una de las más conocidas.', 
NULL, NULL, NULL, 
'¿Cuál de estas opciones es un ejemplo de metáfora?', 
'El agua corría como un arroyo', 
'Tus ojos son dos luceros', 
'El viento silbaba fuertemente', 
'La casa era grande y espaciosa', 
'B', 6, 7, 'Figuras literarias'),

('COMUNICACIÓN', NULL, 'Comparación y símil', 
'El símil es una figura retórica que establece una comparación explícita entre dos elementos usando "como" u otro comparativo.', 
NULL, NULL, NULL, 
'¿Cuál es un ejemplo correcto de símil?', 
'Su cabello era oro puro', 
'Era fuerte como un roble', 
'La primavera bailaba en el jardín', 
'El tiempo es un ladrón', 
'B', 6, 7, 'Figuras literarias'),

('COMUNICACIÓN', NULL, 'Hipérbole exagerada', 
'La hipérbole es una figura que consiste en exagerar desmesuradamente una característica o situación.', 
NULL, NULL, NULL, 
'¿Qué frase contiene una hipérbole?', 
'Hace un día soleado', 
'Te lo he dicho un millón de veces', 
'El libro tiene 200 páginas', 
'Vivo en una casa pequeña', 
'B', 6, 7, 'Figuras literarias'),

('COMUNICACIÓN', NULL, 'Personificación animada', 
'La personificación atribuye cualidades humanas a animales, objetos o ideas abstractas.', 
NULL, NULL, NULL, 
'¿Qué ejemplo muestra personificación?', 
'El gato maulló fuerte', 
'El viento susurraba secretos', 
'La mesa es de madera oscura', 
'Compré un coche nuevo', 
'B', 6, 7, 'Figuras literarias'),

('COMUNICACIÓN', NULL, 'Onomatopeyas sonoras', 
'La onomatopeya es una figura que imita sonidos naturales con palabras.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras es una onomatopeya?', 
'Casa', 
'Boom', 
'Azul', 
'Correr', 
'B', 6, 7, 'Figuras literarias');

-- Preguntas para el tema: Análisis de textos por comparación por contraste
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('COMUNICACIÓN', NULL, 'Comparando textos narrativos', 
'Lee los siguientes fragmentos de dos cuentos diferentes. El primero describe un bosque en primavera con colores vibrantes y sonidos alegres de pájaros. El segundo presenta el mismo bosque en invierno, con árboles desnudos y un silencio inquietante. El contraste entre ambas descripciones es evidente.', 
NULL, NULL, NULL, 
'¿Qué recurso literario se utiliza principalmente al presentar estos dos fragmentos?', 
'Metáfora', 'Comparación por contraste', 'Hipérbole', 'Onomatopeya', 'B', 6, 7, 'Análisis de textos por comparación por contraste'),

('COMUNICACIÓN', NULL, 'Identificando diferencias', 
'En un texto se comparan dos personajes: Juan, quien es extrovertido y siempre está rodeado de amigos, y Pedro, quien es reservado y prefiere la soledad. El autor destaca estas características opuestas para enfatizar sus personalidades.', 
NULL, NULL, NULL, 
'¿Qué propósito tiene el autor al presentar estos personajes contrastantes?', 
'Mostrar que Juan es mejor que Pedro', 'Destacar las diferencias de personalidad', 'Demostrar que todos somos iguales', 'Criticar a las personas introvertidas', 'B', 6, 7, 'Análisis de textos por comparación por contraste'),

('COMUNICACIÓN', NULL, 'Contraste en descripciones', 
'Un poema describe el amanecer en la playa con colores cálidos y sonidos suaves, mientras que otro poema describe el atardecer con tonos oscuros y sonidos de tormenta. El autor utiliza esta técnica para transmitir emociones diferentes.', 
NULL, NULL, NULL, 
'¿Qué emoción es más probable que transmita la descripción del atardecer?', 
'Alegría y euforia', 'Tristeza o melancolía', 'Sorpresa y asombro', 'Aburrimiento', 'B', 6, 7, 'Análisis de textos por comparación por contraste'),

('COMUNICACIÓN', NULL, 'Comparación de estilos', 
'Dos autores describen el mismo mercado: uno se enfoca en los colores y sonidos alegres, mientras que el otro destaca el desorden y el ruido excesivo. Esta diferencia muestra cómo la perspectiva del autor influye en la descripción.', 
NULL, NULL, NULL, 
'¿Qué elemento literario permite notar la diferencia entre estas dos descripciones?', 
'La rima', 'El punto de vista', 'El diálogo', 'La longitud de las oraciones', 'B', 6, 7, 'Análisis de textos por comparación por contraste'),

('COMUNICACIÓN', NULL, 'Identificando similitudes', 
'Al comparar dos textos sobre viajes, encontramos que ambos mencionan la importancia de prepararse antes de partir, aunque uno es una guía práctica y el otro es un relato personal. A pesar de sus diferencias, comparten este mensaje.', 
NULL, NULL, NULL, 
'¿Qué técnica de análisis nos permite encontrar este elemento común?', 
'Comparación por contraste', 'Identificación de similitudes', 'Análisis gramatical', 'Traducción literal', 'B', 6, 7, 'Análisis de textos por comparación por contraste'),

-- Preguntas para el tema: La raya, los dos puntos y las comillas
('COMUNICACIÓN', NULL, 'Uso de la raya en diálogos', 
'En el siguiente fragmento: —¿Vendrás mañana? —preguntó Ana—. Necesito tu ayuda con el proyecto. —Sí, estaré allí —respondió Luis.', 
NULL, NULL, NULL, 
'¿Para qué se utiliza la raya en este texto?', 
'Para separar párrafos', 'Para introducir diálogos y acotaciones', 'Para enumerar elementos', 'Para destacar palabras extranjeras', 'B', 6, 7, 'La raya, los dos puntos y las comillas'),

('COMUNICACIÓN', NULL, 'Función de los dos puntos', 
'En la oración: "Trajo todo lo necesario: lápices, cuadernos, regla y calculadora.", los dos puntos cumplen una función específica.', 
NULL, NULL, NULL, 
'¿Cuál es la función principal de los dos puntos en este caso?', 
'Introducir una cita textual', 'Anunciar una enumeración', 'Separar oraciones compuestas', 'Indicar una pregunta', 'B', 6, 7, 'La raya, los dos puntos y las comillas'),

('COMUNICACIÓN', NULL, 'Uso correcto de comillas', 
'El profesor dijo: "Lean el capítulo 3 para mañana; será fundamental para el examen".', 
NULL, NULL, NULL, 
'¿Por qué se usan comillas en esta oración?', 
'Para destacar una palabra importante', 'Para indicar ironía', 'Para enmarcar una cita directa', 'Para señalar un título de libro', 'C', 6, 7, 'La raya, los dos puntos y las comillas'),

('COMUNICACIÓN', NULL, 'Identifica el error', 
'En el siguiente texto: El artículo titulado: "Nuevos descubrimientos científicos" presenta hallazgos interesantes.', 
NULL, NULL, NULL, 
'¿Qué error de puntuación hay en la oración?', 
'Falta una coma después de "titulado"', 'No deberían usarse dos puntos después de "titulado"', 'Las comillas están mal colocadas', 'Falta un punto al final', 'B', 6, 7, 'La raya, los dos puntos y las comillas'),

('COMUNICACIÓN', NULL, 'Combinación de signos', 
'El juez anunció: —El veredicto es "inocente"— y el público estalló en aplausos.', 
NULL, NULL, NULL, 
'¿Qué dos signos de puntuación se combinan correctamente en esta oración?', 
'Dos puntos y comillas', 'Raya y paréntesis', 'Comillas y punto y coma', 'Dos puntos y punto y coma', 'A', 6, 7, 'La raya, los dos puntos y las comillas'),

-- Preguntas para el tema: La exposición: Cerrar una presentación
('COMUNICACIÓN', NULL, 'Elementos de cierre', 
'Al finalizar una exposición sobre el cuidado del medio ambiente, el orador resume los puntos principales y termina con una reflexión sobre la importancia de actuar ahora.', 
NULL, NULL, NULL, 
'¿Qué elemento caracteriza un buen cierre de exposición?', 
'Introducir temas nuevos', 'Repetir toda la exposición', 'Resumir ideas clave y dejar mensaje final', 'Hacer muchas preguntas al público', 'C', 6, 7, 'La exposición: Cerrar una presentación'),

('COMUNICACIÓN', NULL, 'Técnicas de conclusión', 
'Una expositora termina su presentación diciendo: "En conclusión, como hemos visto, las energías renovables son el futuro, y cada uno de nosotros puede contribuir a este cambio".', 
NULL, NULL, NULL, 
'¿Qué técnica de cierre está utilizando?', 
'Suspender abruptamente', 'Sintetizar y llamar a la acción', 'Contar un chiste', 'Pedir disculpas por el tiempo', 'B', 6, 7, 'La exposición: Cerrar una presentación'),

('COMUNICACIÓN', NULL, 'Errores al cerrar', 
'Un estudiante termina su exposición diciendo: "Bueno, eso es todo lo que preparé. No sé qué más decir. ¿Alguna pregunta?"', 
NULL, NULL, NULL, 
'¿Qué error cometió al cerrar su exposición?', 
'Falta de preparación del cierre', 'Hablar demasiado tiempo', 'Usar imágenes inadecuadas', 'No saludar al público', 'A', 6, 7, 'La exposición: Cerrar una presentación'),

('COMUNICACIÓN', NULL, 'Mensajes finales', 
'La frase "Recuerden: pequeños cambios en nuestros hábitos pueden generar grandes diferencias para nuestro planeta" sería apropiada para:', 
NULL, NULL, NULL, 
'¿En qué parte de la exposición colocarías esta frase?', 
'En la introducción', 'En el desarrollo', 'En el cierre', 'En las diapositivas de apoyo', 'C', 6, 7, 'La exposición: Cerrar una presentación'),

('COMUNICACIÓN', NULL, 'Cierre efectivo', 
'Un buen cierre de exposición debe cumplir principalmente con:', 
NULL, NULL, NULL, 
'¿Cuál de estas funciones?', 
'Dejar claras las ideas principales y motivar al público', 'Presentar datos nuevos y complejos', 'Criticar a otros expositores', 'Hablar rápido para terminar pronto', 'A', 6, 7, 'La exposición: Cerrar una presentación'),

-- Preguntas para el tema: El cuento: exponentes y obras
('COMUNICACIÓN', NULL, 'Autores clásicos', 
'Edgar Allan Poe es reconocido como maestro del cuento de terror, con obras como "El corazón delator" y "El gato negro".', 
NULL, NULL, NULL, 
'¿Qué característica predomina en los cuentos de Poe?', 
'El humor absurdo', 'La atmósfera de misterio y terror', 'Las historias de ciencia ficción', 'Los finales felices predecibles', 'B', 6, 7, 'El cuento: exponentes y obras'),

('COMUNICACIÓN', NULL, 'Elementos del cuento', 
'En "La Cenicienta" de los hermanos Grimm, podemos identificar claramente introducción, nudo y desenlace.', 
NULL, NULL, NULL, 
'¿Qué elemento del cuento corresponde al momento en que la protagonista pierde su zapatilla?', 
'Introducción', 'Nudo', 'Clímax', 'Desenlace', 'B', 6, 7, 'El cuento: exponentes y obras'),

('COMUNICACIÓN', NULL, 'Autores latinoamericanos', 
'Julio Cortázar, autor argentino, escribió cuentos como "Casa tomada" y "Continuidad de los parques", donde mezcla lo cotidiano con lo fantástico.', 
NULL, NULL, NULL, 
'¿Qué caracteriza los cuentos de Cortázar?', 
'La combinación de realidad y fantasía', 'El lenguaje científico y técnico', 'Las historias policiales tradicionales', 'Los finales moralizantes', 'A', 6, 7, 'El cuento: exponentes y obras'),

('COMUNICACIÓN', NULL, 'Cuentos peruanos', 
'El escritor peruano Julio Ramón Ribeyro es famoso por sus "Cuentos de circunstancias", donde retrata la vida urbana con ironía y profundidad.', 
NULL, NULL, NULL, 
'¿Qué ambiente predomina en los cuentos de Ribeyro?', 
'La vida en el espacio', 'La sociedad limeña de mediados del siglo XX', 'Las aventuras en la selva', 'Los relatos mitológicos', 'B', 6, 7, 'El cuento: exponentes y obras'),

('COMUNICACIÓN', NULL, 'Estructura narrativa', 
'En el cuento "El almohadón de plumas" de Horacio Quiroga, la historia avanza hacia un final sorprendente y trágico.', 
NULL, NULL, NULL, 
'¿Qué elemento es característico de los cuentos de Quiroga?', 
'Los finales abiertos sin resolver', 'La presentación detallada de personajes', 'El desarrollo gradual hacia un clímax impactante', 'El uso exclusivo de diálogos', 'C', 6, 7, 'El cuento: exponentes y obras'),

-- Preguntas para el tema: Colmillo blanco - Jack London
('COMUNICACIÓN', NULL, 'Contexto de la obra', 
'"Colmillo Blanco" de Jack London transcurre durante la fiebre del oro en el Yukón, mostrando la dura vida en el norte canadiense.', 
NULL, NULL, NULL, 
'¿Qué ambiente predomina en la novela?', 
'El ambiente tropical húmedo', 'El clima frío y hostil del norte', 'La vida urbana moderna', 'El desierto árido', 'B', 6, 7, 'Colmillo blanco - Jack London'),

('COMUNICACIÓN', NULL, 'Personaje principal', 
'Colmillo Blanco es un lobo-híbrido que pasa por diferentes dueños, algunos crueles y otros bondadosos, lo que moldea su personalidad.', 
NULL, NULL, NULL, 
'¿Qué aspecto explora principalmente la novela a través de Colmillo Blanco?', 
'La vida de los pingüinos', 'La naturaleza versus la crianza', 'La tecnología del siglo XX', 'La agricultura moderna', 'B', 6, 7, 'Colmillo blanco - Jack London'),

('COMUNICACIÓN', NULL, 'Tema central', 
'Una de las ideas principales de "Colmillo Blanco" es la lucha por la supervivencia en un entorno hostil y cómo el amor puede transformar a un ser.', 
NULL, NULL, NULL, 
'¿Qué valores contrasta la novela?', 
'La crueldad y la compasión', 'La pereza y el trabajo', 'La riqueza y la pobreza', 'La tecnología y la naturaleza', 'A', 6, 7, 'Colmillo blanco - Jack London'),

('COMUNICACIÓN', NULL, 'Estilo narrativo', 
'Jack London describe detalladamente el paisaje y los instintos animales en "Colmillo Blanco", dando realismo a la historia.', 
NULL, NULL, NULL, 
'¿Qué caracteriza el estilo descriptivo de London?', 
'Las descripciones abstractas y confusas', 'Los detalles precisos del entorno natural', 'La falta de descripciones físicas', 'El enfoque exclusivo en diálogos', 'B', 6, 7, 'Colmillo blanco - Jack London'),

('COMUNICACIÓN', NULL, 'Relación con otras obras', 
'"Colmillo Blanco" muestra la perspectiva animal, similar a "La llamada de lo salvaje", otra obra de London donde un perro doméstico vuelve a la vida salvaje.', 
NULL, NULL, NULL, 
'¿Qué tema comparten estas dos novelas de London?', 
'La vida en el espacio', 'La adaptación de los animales a entornos extremos', 'La crítica a la tecnología', 'La vida en la ciudad', 'B', 6, 7, 'Colmillo blanco - Jack London');

-- Preguntas para el tema: La novela
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Elementos de la novela', 
'La novela es un género literario que se caracteriza por su extensión y por presentar una narración compleja con diversos personajes y situaciones. Entre sus elementos fundamentales se encuentran aquellos que le dan estructura y profundidad a la historia.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es un elemento esencial de una novela?', 
'La rima consonante', 'Los personajes', 'El narrador', 'La trama', 
'A', 6, 7, 'La novela'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Tipos de narrador', 
'En las novelas, el narrador es la voz que cuenta la historia y puede adoptar diferentes perspectivas. La elección del tipo de narrador influye en cómo el lector percibe los eventos y a los personajes.', 
NULL, NULL, NULL, 
'¿Qué tipo de narrador utiliza la primera persona ("yo") y solo conoce sus propios pensamientos?', 
'Narrador omnisciente', 'Narrador protagonista', 'Narrador testigo', 'Narrador objetivo', 
'B', 6, 7, 'La novela'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Géneros novelísticos', 
'Las novelas pueden clasificarse en diferentes géneros según su temática, estilo y contenido. Cada género tiene características particulares que lo distinguen de los demás.', 
NULL, NULL, NULL, 
'¿Cuál de estos es un género de novela?', 
'Novela lírica', 'Novela dramática', 'Novela épica', 'Novela policíaca', 
'D', 6, 7, 'La novela'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Estructura narrativa', 
'La mayoría de las novelas tradicionales siguen una estructura clásica que organiza los eventos de la historia en un orden específico para mantener el interés del lector.', 
NULL, NULL, NULL, 
'¿Cuál es el orden correcto de la estructura básica de una novela?', 
'Desenlace - nudo - introducción', 'Introducción - nudo - desenlace', 'Nudo - introducción - desenlace', 'Introducción - desenlace - nudo', 
'B', 6, 7, 'La novela'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Personajes principales', 
'En una novela, los personajes son fundamentales para desarrollar la trama. Los personajes principales suelen ser aquellos alrededor de los cuales gira la historia y que experimentan cambios significativos.', 
NULL, NULL, NULL, 
'¿Cómo se llama el personaje que se opone al protagonista en una novela?', 
'Co-protagonista', 'Antagonista', 'Personaje secundario', 'Narrador', 
'B', 6, 7, 'La novela'),

-- Preguntas para el tema: El ensayo argumentativo literario
('COMUNICACIÓN', NULL, 'Características del ensayo', 
'El ensayo argumentativo literario es un texto en el que el autor expresa su punto de vista sobre un tema específico, apoyándose en argumentos y evidencias. Su estructura y estilo lo diferencian de otros tipos de textos.', 
NULL, NULL, NULL, 
'¿Cuál de estas NO es una característica del ensayo argumentativo literario?', 
'Uso de lenguaje formal y culto', 'Estructura libre y flexible', 'Presentación de datos estadísticos detallados', 'Defensa de una tesis personal', 
'C', 6, 7, 'El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Partes del ensayo', 
'Un ensayo argumentativo bien estructurado contiene partes específicas que permiten organizar las ideas de manera coherente y persuasiva para el lector.', 
NULL, NULL, NULL, 
'¿Cuál es la primera parte fundamental de un ensayo argumentativo?', 
'Conclusión', 'Introducción', 'Desarrollo argumentativo', 'Bibliografía', 
'B', 6, 7, 'El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Tesis en el ensayo', 
'La tesis es la idea principal que el autor defiende en un ensayo argumentativo. Debe ser clara, concisa y debatible para generar interés en el lector.', 
NULL, NULL, NULL, 
'¿Qué característica debe tener una buena tesis en un ensayo argumentativo?', 
'Ser una afirmación obvia y aceptada por todos', 'Ser una pregunta retórica', 'Ser una opinión personal fundamentada', 'Ser un hecho histórico comprobado', 
'C', 6, 7, 'El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Argumentos válidos', 
'En un ensayo argumentativo, los argumentos son las razones que apoyan la tesis del autor. Deben ser sólidos, relevantes y estar bien fundamentados.', 
NULL, NULL, NULL, 
'¿Cuál de estos sería un argumento débil en un ensayo?', 
'Datos estadísticos de una fuente confiable', 'La opinión personal sin fundamentos', 'Citas de expertos en el tema', 'Resultados de investigaciones científicas', 
'B', 6, 7, 'El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Conclusión del ensayo', 
'La conclusión es la parte final del ensayo donde se recapitulan los puntos principales y se reafirma la tesis, dejando una impresión duradera en el lector.', 
NULL, NULL, NULL, 
'¿Qué NO debe incluir una buena conclusión de ensayo?', 
'Nuevos argumentos no mencionados antes', 'Resumen de los puntos principales', 'Reafirmación de la tesis', 'Reflexión final sobre el tema', 
'A', 6, 7, 'El ensayo argumentativo literario'),

-- Preguntas para el tema: El punto seguido, punto aparte y puntos suspensivos
('COMUNICACIÓN', NULL, 'Uso del punto seguido', 
'El punto seguido es un signo de puntuación que se utiliza para separar oraciones dentro de un mismo párrafo, indicando una pausa breve pero marcada en el discurso.', 
NULL, NULL, NULL, 
'¿En cuál de estas opciones se usa correctamente el punto seguido?', 
'Estudié toda la noche. Para el examen de hoy.', 'Estudié toda la noche, para el examen de hoy.', 'Estudié toda la noche; para el examen de hoy.', 'Estudié toda la noche: para el examen de hoy.', 
'A', 6, 7, 'El punto seguido, punto aparte y puntos suspensivos'),

('COMUNICACIÓN', NULL, 'Diferencia entre puntos', 
'El punto aparte y el punto seguido son signos de puntuación similares pero con funciones diferentes en la organización del texto escrito.', 
NULL, NULL, NULL, 
'¿Qué indica el punto aparte en un texto?', 
'Un cambio de tema dentro del mismo párrafo', 'El final de un párrafo y el inicio de otro nuevo', 'Una pausa breve dentro de una misma idea', 'Una enumeración de elementos', 
'B', 6, 7, 'El punto seguido, punto aparte y puntos suspensivos'),

('COMUNICACIÓN', NULL, 'Puntos suspensivos', 
'Los puntos suspensivos son un signo de puntuación formado por tres puntos consecutivos (...) que se utilizan para indicar una interrupción voluntaria del discurso o un final abierto.', 
NULL, NULL, NULL, 
'¿Cuál de estas NO es una función de los puntos suspensivos?', 
'Indicar duda o temor', 'Señalar una enumeración incompleta', 'Marcar el final definitivo de un texto', 'Crear suspense en la narración', 
'C', 6, 7, 'El punto seguido, punto aparte y puntos suspensivos'),

('COMUNICACIÓN', NULL, 'Errores comunes con puntos', 
'Es frecuente que los estudiantes confundan el uso de los diferentes tipos de puntos en la escritura, lo que puede afectar la claridad del texto.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error en el uso de los puntos?', 
'Llegué tarde. El bus no pasó a tiempo.', 'Llegué tarde... el bus no pasó a tiempo.', 'Llegué tarde. el bus no pasó a tiempo.', 'Llegué tarde; el bus no pasó a tiempo.', 
'C', 6, 7, 'El punto seguido, punto aparte y puntos suspensivos'),

('COMUNICACIÓN', NULL, 'Puntuación en diálogos', 
'En los textos narrativos, los signos de puntuación como el punto seguido, aparte y suspensivos cumplen funciones específicas en la construcción de diálogos.', 
NULL, NULL, NULL, 
'¿Cómo se usarían correctamente los puntos suspensivos en un diálogo?', 
'"No sé qué decir...", murmuró Juan.', '"No sé qué decir.", murmuró Juan...', '"No sé qué decir..." murmuró Juan.', '"No sé qué decir." ...murmuró Juan', 
'A', 6, 7, 'El punto seguido, punto aparte y puntos suspensivos'),

-- Preguntas para el tema: El párrafo
('COMUNICACIÓN', NULL, 'Estructura del párrafo', 
'Un párrafo es una unidad de texto formada por una o más oraciones que desarrollan una idea principal. Su estructura adecuada facilita la comprensión del lector.', 
NULL, NULL, NULL, 
'¿Cuál es el elemento que introduce la idea principal de un párrafo?', 
'Oración de apoyo', 'Oración conclusiva', 'Oración temática', 'Oración interrogativa', 
'C', 6, 7, 'El párrafo'),

('COMUNICACIÓN', NULL, 'Coherencia textual', 
'La coherencia es una cualidad esencial de los párrafos bien construidos, que permite que todas las oraciones giren en torno a una misma idea central.', 
NULL, NULL, NULL, 
'¿Qué caracteriza a un párrafo coherente?', 
'Contener oraciones sobre temas diversos', 'Tener una idea principal y oraciones relacionadas', 'Incluir muchas ideas en pocas palabras', 'Usar palabras complejas y técnicas', 
'B', 6, 7, 'El párrafo'),

('COMUNICACIÓN', NULL, 'Tipos de párrafos', 
'Existen diferentes tipos de párrafos según su función en el texto: introductorios, de desarrollo, conclusivos, entre otros.', 
NULL, NULL, NULL, 
'¿Qué tipo de párrafo suele ir al final de un texto?', 
'Párrafo narrativo', 'Párrafo descriptivo', 'Párrafo conclusivo', 'Párrafo argumentativo', 
'C', 6, 7, 'El párrafo'),

('COMUNICACIÓN', NULL, 'Longitud del párrafo', 
'La extensión de un párrafo puede variar según el tipo de texto y el contenido, pero generalmente se recomienda una longitud moderada para facilitar la lectura.', 
NULL, NULL, NULL, 
'¿Cuál es el problema principal de un párrafo demasiado largo?', 
'Que puede resultar monótono y difícil de seguir', 'Que ocupa mucho espacio en la página', 'Que requiere más signos de puntuación', 'Que necesita más ideas principales', 
'A', 6, 7, 'El párrafo'),

('COMUNICACIÓN', NULL, 'Conectores entre párrafos', 
'Los conectores son palabras o frases que ayudan a relacionar las ideas entre párrafos, dando fluidez al texto completo.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras NO funciona como conector entre párrafos?', 
'Sin embargo', 'Además', 'Por ejemplo', 'Azul', 
'D', 6, 7, 'El párrafo'),

-- Preguntas para el tema: Comprensión de textos: alternativa múltiple. Estrategias
('COMUNICACIÓN', NULL, 'Lectura comprensiva', 
'La comprensión de textos es una habilidad fundamental que requiere estrategias específicas para identificar ideas principales, detalles y relaciones entre conceptos.', 
NULL, NULL, NULL, 
'¿Cuál es el primer paso recomendado para comprender un texto?', 
'Responder las preguntas rápidamente', 'Leer el texto superficialmente', 'Leer con atención el título y subtítulos', 'Buscar palabras desconocidas', 
'C', 6, 7, 'Comprensión de textos: alternativa múltiple. Estrategias'),

('COMUNICACIÓN', NULL, 'Identificación de ideas', 
'Una estrategia efectiva para la comprensión lectora es distinguir entre ideas principales y secundarias en un texto.', 
NULL, NULL, NULL, 
'¿Cómo se reconoce generalmente la idea principal de un texto?', 
'Es una opinión personal del autor', 'Aparece repetida en diferentes palabras', 'Se encuentra solo en el primer párrafo', 'Nunca está explícita en el texto', 
'B', 6, 7, 'Comprensión de textos: alternativa múltiple. Estrategias'),

('COMUNICACIÓN', NULL, 'Inferencia en la lectura', 
'La inferencia es una habilidad de comprensión lectora que consiste en deducir información que no está explícita en el texto.', 
NULL, NULL, NULL, 
'¿Qué se necesita para hacer una inferencia correcta?', 
'Ignorar los detalles del texto', 'Relacionar pistas del texto con conocimientos previos', 'Memorizar frases literales', 'Cambiar el significado del texto', 
'B', 6, 7, 'Comprensión de textos: alternativa múltiple. Estrategias'),

('COMUNICACIÓN', NULL, 'Vocabulario en contexto', 
'Cuando encontramos palabras desconocidas en un texto, podemos deducir su significado por el contexto en que aparecen.', 
NULL, NULL, NULL, 
'¿Qué estrategia ayuda a entender palabras desconocidas?', 
'Saltar la palabra y seguir leyendo', 'Analizar las palabras alrededor de la desconocida', 'Asumir que no es importante', 'Inventar un significado cualquiera', 
'B', 6, 7, 'Comprensión de textos: alternativa múltiple. Estrategias'),

('COMUNICACIÓN', NULL, 'Resumen efectivo', 
'El resumen es una técnica que permite identificar y sintetizar las ideas más importantes de un texto, demostrando su comprensión.', 
NULL, NULL, NULL, 
'¿Qué caracteriza a un buen resumen?', 
'Incluir todos los detalles del texto original', 'Ser más largo que el texto original', 'Contener solo las ideas principales', 'Cambiar el sentido del texto', 
'C', 6, 7, 'Comprensión de textos: alternativa múltiple. Estrategias');

-- Preguntas para el tema: La poesía
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', null, 'Elementos de la poesía', 
'La poesía es un género literario que se caracteriza por la expresión de sentimientos y emociones a través de la palabra. Entre sus elementos fundamentales encontramos el verso, la estrofa y el ritmo, que le dan su forma característica.', 
null, null, null, 
'¿Cuál de los siguientes NO es un elemento fundamental de la poesía?', 
'La rima', 'El narrador', 'El verso', 'La estrofa', 'B', 6, 7, 'La poesía'),
-- Pregunta 2
('COMUNICACIÓN', null, 'Tipos de estrofas', 
'En poesía, las estrofas son conjuntos de versos que forman una unidad. Según el número de versos que contienen, reciben diferentes nombres, como pareado, terceto, cuarteto, entre otros.', 
null, null, null, 
'¿Cómo se llama la estrofa compuesta por cuatro versos?', 
'Terceto', 'Pareado', 'Cuarteto', 'Quinteto', 'C', 6, 7, 'La poesía'),
-- Pregunta 3
('COMUNICACIÓN', null, 'Figuras literarias', 
'Las figuras literarias son recursos que utilizan los poetas para embellecer sus obras y transmitir emociones de manera más impactante. Algunas de las más conocidas son la metáfora, el símil y la personificación.', 
null, null, null, 
'¿Cuál de las siguientes es una figura literaria que compara dos cosas usando "como" o "cual"?', 
'Metáfora', 'Hipérbole', 'Símil', 'Personificación', 'C', 6, 7, 'La poesía'),
-- Pregunta 4
('COMUNICACIÓN', null, 'Poesía lírica', 
'La poesía lírica es un subgénero poético que expresa los sentimientos más íntimos del autor. Surgió en la antigua Grecia, donde los poemas se recitaban acompañados de un instrumento llamado lira.', 
null, null, null, 
'¿De qué cultura proviene originariamente la poesía lírica?', 
'Romana', 'Egipcia', 'Griega', 'Mesopotámica', 'C', 6, 7, 'La poesía'),
-- Pregunta 5
('COMUNICACIÓN', null, 'Métrica poética', 
'La métrica en poesía se refiere a la medida de los versos, es decir, al número de sílabas que los componen. Este elemento es fundamental para crear el ritmo característico de los poemas.', 
null, null, null, 
'¿Cómo se llama el verso de catorce sílabas que es muy utilizado en la poesía castellana?', 
'Endecasílabo', 'Alejandrino', 'Hexasílabo', 'Octosílabo', 'B', 6, 7, 'La poesía'),

-- Preguntas para el tema: Eliminación de oraciones
('COMUNICACIÓN', null, 'Coherencia textual', 
'En un texto bien estructurado, todas las oraciones deben contribuir al desarrollo de la idea principal. A veces encontramos oraciones que, aunque correctas gramaticalmente, no aportan al tema central o rompen la coherencia del texto.', 
null, null, null, 
'En el siguiente texto, ¿cuál oración debería eliminarse por no relacionarse con el tema principal? "1) Los perros son animales domésticos muy comunes. 2) Existen muchas razas de perros con características diferentes. 3) El golden retriever es una raza muy amigable. 4) El cielo estaba despejado esa mañana. 5) Los perros pueden ser entrenados para diversas tareas."', 
'Oración 1', 'Oración 2', 'Oración 3', 'Oración 4', 'D', 6, 7, 'Eliminación de oraciones'),
('COMUNICACIÓN', null, 'Unidad temática', 
'La unidad temática es esencial en la redacción de textos. Cuando una oración no guarda relación con el tema principal, afecta la coherencia del conjunto y debe ser eliminada para mantener la claridad del mensaje.', 
null, null, null, 
'En este párrafo sobre el reciclaje, ¿cuál oración sobra? "1) El reciclaje ayuda a conservar los recursos naturales. 2) Separar los residuos es el primer paso para reciclar. 3) El papel y el cartón deben depositarse en contenedores azules. 4) Ayer fui al cine con mis amigos. 5) El vidrio puede reciclarse infinitamente."', 
'Oración 1', 'Oración 2', 'Oración 3', 'Oración 4', 'D', 6, 7, 'Eliminación de oraciones'),
('COMUNICACIÓN', null, 'Cohesión textual', 
'Un texto coherente mantiene una línea de pensamiento clara y todas sus partes están relacionadas lógicamente. Identificar oraciones que rompen esta cohesión es importante para mejorar la calidad de la redacción.', 
null, null, null, 
'En este texto sobre la fotosíntesis, ¿qué oración debería eliminarse? "1) La fotosíntesis es el proceso por el cual las plantas producen su alimento. 2) Este proceso requiere luz solar, agua y dióxido de carbono. 3) Las plantas verdes contienen clorofila en sus hojas. 4) Mi hermana mayor estudia medicina en la universidad. 5) Como resultado de la fotosíntesis, las plantas liberan oxígeno."', 
'Oración 1', 'Oración 2', 'Oración 3', 'Oración 4', 'D', 6, 7, 'Eliminación de oraciones'),
('COMUNICACIÓN', null, 'Estructura del párrafo', 
'Un buen párrafo debe desarrollar una idea principal con oraciones secundarias que la apoyen. Las oraciones que introducen información ajena al tema deben ser eliminadas para mantener la claridad del mensaje.', 
null, null, null, 
'En este párrafo sobre el sistema solar, ¿cuál oración no pertenece? "1) El sistema solar está formado por el Sol y los cuerpos celestes que giran a su alrededor. 2) Los planetas se dividen en interiores y exteriores. 3) La Tierra es el tercer planeta más cercano al Sol. 4) El próximo verano iremos de vacaciones a la playa. 5) Plutón fue reclasificado como planeta enano en 2006."', 
'Oración 1', 'Oración 2', 'Oración 3', 'Oración 4', 'D', 6, 7, 'Eliminación de oraciones'),
('COMUNICACIÓN', null, 'Selección de información', 
'Al redactar un texto, es importante seleccionar cuidadosamente la información que se incluye, asegurándose de que todas las oraciones contribuyan al desarrollo del tema principal.', 
null, null, null, 
'En este texto sobre la Revolución Francesa, ¿qué oración debería eliminarse? "1) La Revolución Francesa comenzó en 1789. 2) Este evento marcó el fin del absolutismo en Francia. 3) La Declaración de los Derechos del Hombre fue un documento clave. 4) Los gatos son animales independientes y curiosos. 5) La guillotina fue usada para ejecutar a Luis XVI."', 
'Oración 1', 'Oración 2', 'Oración 3', 'Oración 4', 'D', 6, 7, 'Eliminación de oraciones'),

-- Preguntas para el tema: Elaboración de un ensayo comparativo literario
('COMUNICACIÓN', null, 'Estructura del ensayo', 
'Un ensayo comparativo literario analiza las similitudes y diferencias entre dos obras literarias. Para su elaboración, es fundamental seguir una estructura clara que incluya introducción, desarrollo y conclusión.', 
null, null, null, 
'¿Cuál de los siguientes NO es un elemento esencial de un ensayo comparativo literario?', 
'Introducción que presente las obras a comparar', 
'Desarrollo que analice similitudes y diferencias', 
'Opiniones personales sin fundamento', 
'Conclusión que sintetice los hallazgos', 'C', 6, 7, 'Elaboración de un ensayo comparativo literario'),
('COMUNICACIÓN', null, 'Criterios de comparación', 
'Al elaborar un ensayo comparativo, es importante establecer criterios claros para la comparación, como los temas, personajes, estilos literarios o contextos históricos de las obras analizadas.', 
null, null, null, 
'¿Cuál de estos sería el criterio de comparación MENOS adecuado para un ensayo literario?', 
'Biografía detallada de los autores', 
'Temas principales tratados en las obras', 
'Estilo literario utilizado', 
'Caracterización de los personajes', 'A', 6, 7, 'Elaboración de un ensayo comparativo literario'),
('COMUNICACIÓN', null, 'Tesis en el ensayo', 
'Un buen ensayo comparativo debe presentar una tesis clara que guíe el análisis. Esta tesis es la idea central que el autor defenderá a lo largo del texto, basándose en la comparación de las obras.', 
null, null, null, 
'¿Dónde debería ubicarse principalmente la tesis en un ensayo comparativo?', 
'En el título del ensayo', 
'Al final de la conclusión', 
'En la introducción del ensayo', 
'En las notas al pie de página', 'C', 6, 7, 'Elaboración de un ensayo comparativo literario'),
('COMUNICACIÓN', null, 'Comparación literaria', 
'La comparación literaria requiere un análisis profundo de los elementos de las obras, evitando caer en simples descripciones o resúmenes. El enfoque debe estar en las relaciones entre las obras.', 
null, null, null, 
'¿Qué técnica es más útil al comparar dos obras literarias en un ensayo?', 
'Describir cada obra por separado sin establecer conexiones', 
'Alternar constantemente entre una obra y otra sin orden', 
'Analizar un aspecto de ambas obras antes de pasar al siguiente', 
'Copiar fragmentos extensos de ambas obras', 'C', 6, 7, 'Elaboración de un ensayo comparativo literario'),
('COMUNICACIÓN', null, 'Conclusión del ensayo', 
'La conclusión de un ensayo comparativo debe sintetizar los hallazgos principales, retomar la tesis inicial y mostrar cómo el análisis la ha desarrollado o confirmado, sin introducir información nueva.', 
null, null, null, 
'¿Qué NO debería incluirse en la conclusión de un ensayo comparativo?', 
'Síntesis de las principales similitudes y diferencias', 
'Nuevos argumentos no mencionados en el desarrollo', 
'Reafirmación de la tesis inicial', 
'Reflexiones finales sobre la comparación', 'B', 6, 7, 'Elaboración de un ensayo comparativo literario'),

-- Preguntas para el tema: Las mayúsculas
('COMUNICACIÓN', null, 'Uso de mayúsculas iniciales', 
'Las mayúsculas tienen usos específicos en la escritura. Uno de los más importantes es la mayúscula inicial, que se emplea en diversos contextos según las reglas ortográficas.', 
null, null, null, 
'¿En cuál de las siguientes opciones NO es obligatorio el uso de mayúscula inicial?', 
'Al comienzo de un texto después de punto', 
'En los nombres propios de personas', 
'En los nombres de los días de la semana', 
'En la primera palabra del título de un libro', 'C', 6, 7, 'Las mayúsculas'),
('COMUNICACIÓN', null, 'Mayúsculas en nombres propios', 
'Los nombres propios siempre se escriben con mayúscula inicial. Esto incluye nombres de personas, lugares, instituciones y otros elementos que designan entidades únicas.', 
null, null, null, 
'¿Cuál de estas palabras debe escribirse con mayúscula inicial?', 
'ciudad', 
'océano', 
'doctor', 
'Amazonas', 'D', 6, 7, 'Las mayúsculas'),
('COMUNICACIÓN', null, 'Mayúsculas después de puntos', 
'Después de punto y aparte o punto y seguido, siempre se debe usar mayúscula inicial. Esta regla ayuda a marcar el inicio de una nueva oración o párrafo.', 
null, null, null, 
'Selecciona la opción correctamente puntuada:', 
'El sol brillaba. los pájaros cantaban.', 
'El sol brillaba. Los pájaros cantaban.', 
'el sol brillaba. Los pájaros cantaban.', 
'El sol brillaba. los pájaros cantaban.', 'B', 6, 7, 'Las mayúsculas'),
('COMUNICACIÓN', null, 'Mayúsculas en títulos', 
'En los títulos de obras, artículos o documentos, se usa mayúscula inicial en la primera palabra y en los nombres propios, mientras que el resto de las palabras van en minúscula, salvo excepciones.', 
null, null, null, 
'¿Cuál de estos títulos está correctamente escrito según las normas de mayúsculas?', 
'La Historia Interminable', 
'La historia interminable', 
'LA HISTORIA INTERMINABLE', 
'la Historia Interminable', 'B', 6, 7, 'Las mayúsculas'),
('COMUNICACIÓN', null, 'Mayúsculas en siglas', 
'Las siglas se escriben enteramente en mayúsculas y sin puntos entre las letras. Representan abreviaciones de nombres de organizaciones, instituciones u otros conceptos.', 
null, null, null, 
'¿Cuál es la forma correcta de escribir la sigla de la Organización de las Naciones Unidas?', 
'O.N.U.', 
'onu', 
'ONU', 
'Onu', 'C', 6, 7, 'Las mayúsculas'),

-- Preguntas para el tema: La isla del tesoro - Robert Stevenson
('COMUNICACIÓN', null, 'Personajes principales', 
'"La isla del tesoro" de Robert Louis Stevenson es una novela de aventuras que narra la búsqueda de un tesoro pirata. Entre sus personajes destacan el joven Jim Hawkins, el pirata Long John Silver y el doctor Livesey.', 
null, null, null, 
'¿Quién es el protagonista juvenil de "La isla del tesoro"?', 
'Long John Silver', 
'Jim Hawkins', 
'Capitán Smollett', 
'Doctor Livesey', 'B', 6, 7, 'La isla del tesoro - Robert Stevenson'),
('COMUNICACIÓN', null, 'Trama de la novela', 
'La trama de "La isla del tesoro" gira en torno a un mapa del tesoro que cae en manos del joven Jim Hawkins, lo que desencadena un viaje lleno de peligros y aventuras en busca del botín del pirata Flint.', 
null, null, null, 
'¿Qué objeto desencadena la aventura en "La isla del tesoro"?', 
'Un diario secreto', 
'Un mapa del tesoro', 
'Una llave antigua', 
'Una espada pirata', 'B', 6, 7, 'La isla del tesoro - Robert Stevenson'),
('COMUNICACIÓN', null, 'Long John Silver', 
'Long John Silver es uno de los personajes más memorables de la novela, un pirata astuto y ambiguo que sirve como cocinero en el Hispaniola pero que en realidad busca el tesoro para sí mismo.', 
null, null, null, 
'¿Qué puesto ocupa Long John Silver a bordo del Hispaniola al inicio del viaje?', 
'Contramaestre', 
'Cocinero', 
'Timonel', 
'Capitán', 'B', 6, 7, 'La isla del tesoro - Robert Stevenson'),
('COMUNICACIÓN', null, 'Temas de la obra', 
'"La isla del tesoro" explora temas como la ambición, la lealtad, el crecimiento personal y la dualidad del ser humano, representada en personajes como Long John Silver, capaz de actos nobles y crueles.', 
null, null, null, 
'¿Qué tema principal explora "La isla del tesoro" a través del personaje de Jim Hawkins?', 
'El paso de la infancia a la madurez', 
'Los conflictos políticos', 
'El amor romántico', 
'La crítica social', 'A', 6, 7, 'La isla del tesoro - Robert Stevenson'),
('COMUNICACIÓN', null, 'Contexto histórico', 
'Aunque es una obra de ficción, "La isla del tesoro" refleja aspectos históricos de la piratería en el siglo XVIII, época en la que piratas como Barbanegra surcaban los mares del Caribe.', 
null, null, null, 
'¿En qué siglo se ambienta principalmente "La isla del tesoro"?', 
'Siglo XVI', 
'Siglo XVII', 
'Siglo XVIII', 
'Siglo XIX', 'C', 6, 7, 'La isla del tesoro - Robert Stevenson');

-- Preguntas para el tema: El teatro: exponentes y obras
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Dramaturgos clásicos', 
 'El teatro griego sentó las bases del arte dramático occidental. Entre sus principales exponentes encontramos autores cuyas obras siguen siendo representadas hasta hoy. Conocer estos autores es fundamental para entender la evolución del teatro.',
 NULL, NULL, NULL, 
 '¿Cuál de los siguientes dramaturgos es considerado el principal representante de la tragedia griega?', 
 'Aristófanes', 'Sófocles', 'Eurípides', 'Menandro', 
 'B', 6, 7, 'El teatro: exponentes y obras'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Obras de Shakespeare', 
 'William Shakespeare es considerado el escritor más importante en lengua inglesa y uno de los más célebres de la literatura universal. Sus obras han sido traducidas a numerosos idiomas y adaptadas en múltiples ocasiones.',
 NULL, NULL, NULL, 
 '¿Cuál de estas obras de Shakespeare pertenece al género de la tragedia?', 
 'El sueño de una noche de verano', 'La comedia de las equivocaciones', 'Romeo y Julieta', 'Las alegres comadres de Windsor', 
 'C', 6, 7, 'El teatro: exponentes y obras'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Teatro contemporáneo', 
 'En el siglo XX surgieron diversos movimientos teatrales que rompieron con las convenciones tradicionales. Estos nuevos estilos buscaban reflejar la complejidad de la sociedad moderna.',
 NULL, NULL, NULL, 
 '¿Qué autor es conocido por desarrollar el "teatro del absurdo"?', 
 'Bertolt Brecht', 'Samuel Beckett', 'Federico García Lorca', 'Tennessee Williams', 
 'B', 6, 7, 'El teatro: exponentes y obras'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Teatro peruano', 
 'El teatro peruano tiene una rica tradición que combina elementos indígenas, coloniales y contemporáneos. Varios dramaturgos peruanos han ganado reconocimiento internacional por sus obras.',
 NULL, NULL, NULL, 
 '¿Cuál de los siguientes es un destacado dramaturgo peruano del siglo XX?', 
 'Mario Vargas Llosa', 'Alonso Alegría', 'César Vallejo', 'José María Arguedas', 
 'B', 6, 7, 'El teatro: exponentes y obras'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Elementos teatrales', 
 'Una obra teatral se compone de diversos elementos que trabajan en conjunto para crear la experiencia dramática. Estos incluyen tanto componentes literarios como técnicos.',
 NULL, NULL, NULL, 
 '¿Cuál de estos NO es un elemento fundamental de una obra teatral?', 
 'Diálogo', 'Acotaciones', 'Escenografía', 'Rima consonante', 
 'D', 6, 7, 'El teatro: exponentes y obras'),

-- Preguntas para el tema: El ensayo de tema libre
('COMUNICACIÓN', NULL, 'Características del ensayo', 
 'El ensayo es un género literario que permite al autor expresar sus ideas y reflexiones sobre un tema de manera personal. A diferencia de otros textos académicos, el ensayo tiene una estructura más libre.',
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes es una característica principal del ensayo?', 
 'Presenta información objetiva sin opiniones personales', 'Sigue una estructura rígida con introducción, desarrollo y conclusión', 'Expresa el punto de vista personal del autor', 'Utiliza exclusivamente lenguaje técnico y especializado', 
 'C', 6, 7, 'El ensayo de tema libre'),

('COMUNICACIÓN', NULL, 'Tipos de ensayo', 
 'Existen diversos tipos de ensayos según su enfoque y propósito. Cada uno tiene características particulares que lo distinguen de los demás.',
 NULL, NULL, NULL, 
 '¿Qué tipo de ensayo se centra en analizar y evaluar obras artísticas o literarias?', 
 'Ensayo científico', 'Ensayo argumentativo', 'Ensayo crítico', 'Ensayo expositivo', 
 'C', 6, 7, 'El ensayo de tema libre'),

('COMUNICACIÓN', NULL, 'Estructura básica', 
 'Aunque el ensayo permite cierta libertad en su estructura, generalmente sigue un esquema básico que facilita la exposición de ideas.',
 NULL, NULL, NULL, 
 '¿Cuál de estos elementos NO forma parte de la estructura básica de un ensayo?', 
 'Introducción', 'Desarrollo', 'Bibliografía', 'Índice', 
 'D', 6, 7, 'El ensayo de tema libre'),

('COMUNICACIÓN', NULL, 'Lenguaje en el ensayo', 
 'El lenguaje utilizado en un ensayo puede variar según el tema y el público al que va dirigido. Sin embargo, existen ciertas características comunes en la mayoría de ensayos.',
 NULL, NULL, NULL, 
 '¿Cuál de estas afirmaciones sobre el lenguaje del ensayo es correcta?', 
 'Debe ser siempre formal y técnico', 'Puede ser coloquial dependiendo del tema', 'Debe evitar cualquier expresión personal', 'Debe ser poético y rimado', 
 'B', 6, 7, 'El ensayo de tema libre'),

('COMUNICACIÓN', NULL, 'Ensayo argumentativo', 
 'El ensayo argumentativo busca persuadir al lector sobre una postura particular mediante el uso de razones y evidencias. Es importante presentar argumentos sólidos y bien fundamentados.',
 NULL, NULL, NULL, 
 '¿Qué elemento es esencial en un ensayo argumentativo?', 
 'Datos estadísticos', 'Argumentos bien fundamentados', 'Descripciones detalladas', 'Diálogos entre personajes', 
 'B', 6, 7, 'El ensayo de tema libre'),

-- Preguntas para el tema: Queísmo y dequeísmo
('COMUNICACIÓN', NULL, 'Identificar el dequeísmo', 
 'El dequeísmo es un error gramatical que consiste en usar la preposición "de" junto con la conjunción "que" cuando no es necesario. Es importante reconocer este error para mejorar nuestra expresión escrita y oral.',
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones contiene dequeísmo?', 
 'Pienso que deberíamos ir al cine', 'Me dijo de que vendría más tarde', 'Estoy seguro de que lo hizo', 'Creo que es la mejor opción', 
 'B', 6, 7, 'Queísmo y dequeísmo'),

('COMUNICACIÓN', NULL, 'Identificar el queísmo', 
 'El queísmo es el error opuesto al dequeísmo, que consiste en omitir la preposición "de" cuando sí es necesaria. Reconocer este error ayuda a mejorar nuestra comunicación.',
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones contiene queísmo?', 
 'Me acordé que teníamos tarea', 'Estoy convencido de que es cierto', 'Dijo que llegaría temprano', 'Se olvidó de que tenía reunión', 
 'A', 6, 7, 'Queísmo y dequeísmo'),

('COMUNICACIÓN', NULL, 'Uso correcto de preposiciones', 
 'En español, el uso correcto de las preposiciones es fundamental para una comunicación precisa. Algunos verbos requieren preposición y otros no, lo que puede generar confusiones.',
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones está correctamente construida?', 
 'Insistió que fuera con él', 'Dudaba de que fuera verdad', 'Se quejó que hacía frío', 'Me enteré que era tarde', 
 'B', 6, 7, 'Queísmo y dequeísmo'),

('COMUNICACIÓN', NULL, 'Verbos con preposición', 
 'Algunos verbos en español siempre requieren el uso de una preposición específica cuando van seguidos de una oración subordinada. Conocer estos verbos ayuda a evitar errores comunes.',
 NULL, NULL, NULL, 
 '¿Con cuál de estos verbos es obligatorio usar la preposición "de" antes de "que"?', 
 'Decir', 'Pensar', 'Alegrarse', 'Creer', 
 'C', 6, 7, 'Queísmo y dequeísmo'),

('COMUNICACIÓN', NULL, 'Corregir errores', 
 'Identificar y corregir errores de queísmo y dequeísmo es una habilidad importante para mejorar nuestra expresión escrita. A veces, la forma correcta puede sonar extraña al oído acostumbrado al error.',
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta de esta oración: "Estoy seguro que vendrá"?', 
 'Estoy seguro de que vendrá', 'Estoy seguro que vendrá', 'Estoy seguro de vendrá', 'Estoy seguro que de vendrá', 
 'A', 6, 7, 'Queísmo y dequeísmo'),

-- Preguntas para el tema: Oraciones incompletas
('COMUNICACIÓN', NULL, 'Completar oraciones', 
 'Completar oraciones es un ejercicio que ayuda a desarrollar la comprensión del contexto y el uso adecuado de las palabras. Se debe elegir la opción que mejor complete el sentido de la oración.',
 NULL, NULL, NULL, 
 'Completa la oración: "Aunque tenía mucho sueño, ______ a terminar su tarea antes de acostarse."', 
 'decidió', 'decidir', 'decidido', 'decidiendo', 
 'A', 6, 7, 'Oraciones incompletas'),

('COMUNICACIÓN', NULL, 'Completar oraciones', 
 'Al completar oraciones, es importante considerar tanto el sentido lógico como la concordancia gramatical. La opción correcta debe encajar perfectamente en todos los aspectos.',
 NULL, NULL, NULL, 
 'Completa la oración: "Si estudias con dedicación, ______ aprobar el examen sin problemas."', 
 'puedes', 'podrás', 'poder', 'podrías', 
 'B', 6, 7, 'Oraciones incompletas'),

('COMUNICACIÓN', NULL, 'Completar oraciones', 
 'Este tipo de ejercicios evalúa la capacidad para entender la relación lógica entre las partes de una oración y seleccionar la palabra o frase que mejor complete el sentido.',
 NULL, NULL, NULL, 
 'Completa la oración: "El libro que me prestaste ______ tan interesante que lo leí en un solo día."', 
 'fue', 'era', 'es', 'será', 
 'A', 6, 7, 'Oraciones incompletas'),

('COMUNICACIÓN', NULL, 'Completar oraciones', 
 'Para resolver ejercicios de oraciones incompletas, es útil leer toda la oración e identificar qué tipo de palabra falta (verbo, sustantivo, adjetivo, etc.) y qué tiempo verbal requiere.',
 NULL, NULL, NULL, 
 'Completa la oración: "Cuando llegues a casa, ______ que apagar las luces que dejaste encendidas."', 
 'debes', 'debías', 'deberías', 'debiste', 
 'A', 6, 7, 'Oraciones incompletas'),

('COMUNICACIÓN', NULL, 'Completar oraciones', 
 'Las oraciones incompletas miden la habilidad para inferir información a partir del contexto y aplicar las reglas gramaticales correctamente.',
 NULL, NULL, NULL, 
 'Completa la oración: "Los estudiantes que ______ sus tareas a tiempo recibirán una bonificación."', 
 'entreguen', 'entregaron', 'entregar', 'entregarán', 
 'A', 6, 7, 'Oraciones incompletas');

-- Preguntas para el tema: Ensayo: algunos exponentes principales y sus obras
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('COMUNICACIÓN', NULL, 'Grandes ensayistas hispanoamericanos', 
'El ensayo es un género literario que permite al autor expresar sus ideas y reflexiones sobre diversos temas. En Hispanoamérica, varios escritores han destacado en este género, abordando temas sociales, políticos y culturales con profundidad y estilo propio.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes autores es reconocido como uno de los principales exponentes del ensayo en Hispanoamérica?', 
'Octavio Paz, autor de "El laberinto de la soledad"', 
'Gabriel García Márquez, autor de "Cien años de soledad"', 
'Pablo Neruda, autor de "Veinte poemas de amor y una canción desesperada"', 
'Isabel Allende, autor de "La casa de los espíritus"', 
'A', 6, 7, 'Ensayo: algunos exponentes principales y sus obras'),

('COMUNICACIÓN', NULL, 'El ensayo como reflexión personal', 
'El ensayo se caracteriza por ser un texto argumentativo donde el autor expresa su punto de vista personal sobre un tema específico. A diferencia de otros géneros literarios, el ensayo no busca contar una historia sino reflexionar y analizar.', 
NULL, NULL, NULL, 
'¿Qué característica principal distingue al ensayo de otros géneros literarios?', 
'Su estructura rígida y formal con introducción, desarrollo y conclusión', 
'La expresión subjetiva y personal del autor sobre un tema', 
'El uso exclusivo de lenguaje técnico y especializado', 
'La obligatoriedad de incluir datos estadísticos y gráficos', 
'B', 6, 7, 'Ensayo: algunos exponentes principales y sus obras'),

('COMUNICACIÓN', NULL, 'Obras fundamentales del ensayo', 
'A lo largo de la historia, muchas obras ensayísticas han marcado hitos importantes en el pensamiento humano, abordando temas filosóficos, políticos y sociales con profundidad y originalidad.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes obras es considerada un clásico del género ensayístico?', 
'"Don Quijote de la Mancha" de Miguel de Cervantes', 
'"Ensayo sobre la ceguera" de José Saramago', 
'"El contrato social" de Jean-Jacques Rousseau', 
'"Crimen y castigo" de Fiodor Dostoievski', 
'C', 6, 7, 'Ensayo: algunos exponentes principales y sus obras'),

('COMUNICACIÓN', NULL, 'Temas del ensayo contemporáneo', 
'Los ensayistas modernos abordan una gran variedad de temas, desde problemas sociales hasta reflexiones sobre la tecnología y la globalización, manteniendo siempre un estilo personal y reflexivo.', 
NULL, NULL, NULL, 
'¿Qué tema es más probable encontrar en un ensayo contemporáneo?', 
'La descripción detallada de batallas históricas medievales', 
'Un análisis crítico sobre el impacto de las redes sociales en la sociedad', 
'La narración de una leyenda ancestral', 
'Instrucciones para realizar un experimento científico', 
'B', 6, 7, 'Ensayo: algunos exponentes principales y sus obras'),

('COMUNICACIÓN', NULL, 'Estilo en el ensayo literario', 
'El estilo en el ensayo literario es fundamental, ya que combina elementos de rigor intelectual con cualidades estéticas, permitiendo al autor expresar sus ideas con claridad y belleza al mismo tiempo.', 
NULL, NULL, NULL, 
'¿Qué elemento es característico del estilo de un ensayo literario?', 
'El uso exclusivo de lenguaje técnico y especializado', 
'La combinación de rigor intelectual y cualidades estéticas', 
'La ausencia total de opiniones personales', 
'La estructura en actos y escenas como en el teatro', 
'B', 6, 7, 'Ensayo: algunos exponentes principales y sus obras'),

-- Preguntas para el tema: Analogías
('COMUNICACIÓN', NULL, 'Relaciones de significado', 
'Las analogías son relaciones de semejanza entre pares de palabras que comparten un vínculo similar en su significado. Reconocer estas relaciones ayuda a desarrollar el pensamiento lógico y el vocabulario.', 
NULL, NULL, NULL, 
'Completa la analogía: Libro es a leer como canción es a...', 
'escribir', 
'escuchar', 
'bailar', 
'componer', 
'B', 6, 7, 'Analogías'),

('COMUNICACIÓN', NULL, 'Analogías verbales', 
'Las analogías verbales establecen relaciones lógicas entre conceptos. Identificar estas relaciones es fundamental para comprender mejor el lenguaje y desarrollar habilidades de razonamiento.', 
NULL, NULL, NULL, 
'¿Cuál es la relación correcta en la analogía: Médico es a hospital como profesor es a...?', 
'libro', 
'escuela', 
'alumno', 
'pizarra', 
'B', 6, 7, 'Analogías'),

('COMUNICACIÓN', NULL, 'Analogías de parte-todo', 
'Algunas analogías establecen relaciones entre un elemento y el conjunto al que pertenece, lo que se conoce como relación parte-todo. Reconocer este tipo de relaciones es importante para el desarrollo del pensamiento analógico.', 
NULL, NULL, NULL, 
'Completa la analogía: Página es a libro como ladrillo es a...', 
'edificio', 
'constructor', 
'ventana', 
'pared', 
'A', 6, 7, 'Analogías'),

('COMUNICACIÓN', NULL, 'Analogías de función', 
'Las analogías de función relacionan elementos que cumplen propósitos similares en contextos diferentes. Este tipo de analogías ayudan a entender las funciones de objetos y conceptos en diversos ámbitos.', 
NULL, NULL, NULL, 
'Completa la analogía: Timón es a barco como volante es a...', 
'avion', 
'bicicleta', 
'auto', 
'tren', 
'C', 6, 7, 'Analogías'),

('COMUNICACIÓN', NULL, 'Analogías de causa-efecto', 
'Algunas analogías expresan relaciones de causa y efecto, donde un elemento produce o causa el otro. Identificar estas relaciones ayuda a comprender mejor los procesos y consecuencias en diversos contextos.', 
NULL, NULL, NULL, 
'Completa la analogía: Semilla es a planta como huevo es a...', 
'gallina', 
'nido', 
'pluma', 
'comida', 
'A', 6, 7, 'Analogías'),

-- Preguntas para el tema: Homonimia
('COMUNICACIÓN', NULL, 'Palabras que suenan igual', 
'La homonimia es un fenómeno lingüístico en el que dos o más palabras tienen la misma forma pero significados diferentes. Estas palabras pueden escribirse igual (homógrafas) o sonar igual (homófonas).', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes pares de palabras son homónimas?', 
'casa - vivienda', 
'vino (bebida) - vino (del verbo venir)', 
'perro - can', 
'feliz - contento', 
'B', 6, 7, 'Homonimia'),

('COMUNICACIÓN', NULL, 'Homonimia en contexto', 
'Las palabras homónimas pueden generar ambigüedad en la comunicación si no se usan en el contexto adecuado. Es importante reconocerlas para evitar confusiones en la interpretación de textos.', 
NULL, NULL, NULL, 
'En la oración "El banco estaba lleno", ¿qué tipo de homonimia se presenta?', 
'Entre "banco" (asiento) y "banco" (institución financiera)', 
'Entre "lleno" (ocupado) y "lleno" (satisfecho)', 
'Entre "el" (artículo) y "él" (pronombre)', 
'No hay homonimia en esta oración', 
'A', 6, 7, 'Homonimia'),

('COMUNICACIÓN', NULL, 'Diferenciar homónimos', 
'Para comprender correctamente un texto con palabras homónimas, es esencial analizar el contexto en que aparecen, ya que este determina cuál de los significados posibles es el adecuado.', 
NULL, NULL, NULL, 
'¿Cómo podemos determinar el significado correcto de una palabra homónima en un texto?', 
'Consultando siempre el diccionario', 
'Analizando el contexto en que aparece la palabra', 
'Preguntando a otra persona', 
'Recordando siempre el primer significado que aprendimos', 
'B', 6, 7, 'Homonimia'),

('COMUNICACIÓN', NULL, 'Ejemplos de homófonos', 
'Los homófonos son palabras que suenan igual pero tienen significados diferentes y, a menudo, diferente escritura. Reconocer estos pares ayuda a mejorar la ortografía y la comprensión lectora.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes pares de palabras son homófonas?', 
'haya (árbol) - halla (del verbo hallar)', 
'casa - hogar', 
'libro - volumen', 
'flor - planta', 
'A', 6, 7, 'Homonimia'),

('COMUNICACIÓN', NULL, 'Uso correcto de homónimos', 
'El uso adecuado de palabras homónimas es esencial para una comunicación clara y precisa. Los errores con estas palabras son comunes pero pueden evitarse con práctica y atención al contexto.', 
NULL, NULL, NULL, 
'¿Cuál es la oración que usa correctamente una palabra homónima?', 
'Voy a botar el dinero en el banco', 
'La caza del tesoro fue emocionante', 
'El sino de la vida es misterioso', 
'Traje un ramo de flores para mi madre', 
'B', 6, 7, 'Homonimia'),

-- Preguntas para el tema: El debate
('COMUNICACIÓN', NULL, 'Características del debate', 
'El debate es una discusión formal entre personas con puntos de vista diferentes sobre un tema, donde cada parte presenta argumentos para defender su postura. Es una herramienta valiosa para el desarrollo del pensamiento crítico.', 
NULL, NULL, NULL, 
'¿Cuál es la principal característica de un debate formal?', 
'Los participantes siempre terminan llegando a un acuerdo', 
'Cada participante defiende su postura con argumentos válidos', 
'Se evita cualquier tipo de confrontación de ideas', 
'Gana quien hable más tiempo y más fuerte', 
'B', 6, 7, 'El debate'),

('COMUNICACIÓN', NULL, 'Estructura del debate', 
'Un debate bien organizado sigue una estructura clara que permite el desarrollo ordenado de las ideas y argumentos. Esta estructura incluye momentos para la presentación, refutación y conclusiones.', 
NULL, NULL, NULL, 
'¿Qué elemento NO forma parte de la estructura básica de un debate?', 
'Presentación de argumentos', 
'Ataques personales entre los participantes', 
'Refutación de los argumentos contrarios', 
'Conclusiones finales', 
'B', 6, 7, 'El debate'),

('COMUNICACIÓN', NULL, 'Argumentación en el debate', 
'En un debate, la calidad de los argumentos es más importante que la cantidad. Un buen argumento debe ser claro, relevante y estar respaldado por evidencias o razonamientos sólidos.', 
NULL, NULL, NULL, 
'¿Qué hace que un argumento sea efectivo en un debate?', 
'Que sea repetitivo para que se grabe en la memoria', 
'Que sea claro, relevante y esté bien fundamentado', 
'Que sea muy técnico y difícil de entender', 
'Que sea emocional y apelativo', 
'B', 6, 7, 'El debate'),

('COMUNICACIÓN', NULL, 'Roles en el debate', 
'En un debate organizado, los participantes asumen roles específicos como moderador, ponentes o refutadores. Cada rol tiene funciones distintas que contribuyen al desarrollo adecuado de la discusión.', 
NULL, NULL, NULL, 
'¿Cuál es la función principal del moderador en un debate?', 
'Tomar partido por una de las posturas', 
'Garantizar que el debate se desarrolle con orden y respeto', 
'Presentar argumentos a favor de ambas posturas', 
'Decidir quién tiene la razón al final', 
'B', 6, 7, 'El debate'),

('COMUNICACIÓN', NULL, 'Normas de cortesía en el debate', 
'Un buen debate se caracteriza por el respeto mutuo entre los participantes, incluso cuando hay desacuerdos profundos. Las normas de cortesía son esenciales para mantener un ambiente de diálogo constructivo.', 
NULL, NULL, NULL, 
'¿Cuál de estas actitudes NO es apropiada en un debate?', 
'Escuchar atentamente los argumentos contrarios', 
'Interrumpir constantemente al oponente', 
'Refutar ideas sin atacar a las personas', 
'Usar un tono de voz adecuado', 
'B', 6, 7, 'El debate'),

-- Preguntas para el tema: Narraciones extraordinarias - Edgar Allan Poe
('COMUNICACIÓN', NULL, 'Estilo de Edgar Allan Poe', 
'Edgar Allan Poe es conocido por sus narraciones extraordinarias que combinan elementos de misterio, terror y lo macabro. Su estilo literario ha influenciado a generaciones de escritores y sigue siendo estudiado por su maestría técnica.', 
NULL, NULL, NULL, 
'¿Qué característica es típica de los cuentos de Edgar Allan Poe?', 
'Finales felices y moralizantes', 
'Ambientes oscuros y personajes atormentados', 
'Temas exclusivamente históricos', 
'Lenguaje sencillo y coloquial', 
'B', 6, 7, 'Narraciones extraordinarias - Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Obras representativas de Poe', 
'Entre las obras más famosas de Edgar Allan Poe se encuentran cuentos que exploran los límites de la razón y la locura, siempre con un estilo cuidadosamente elaborado y una atmósfera inquietante.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes obras NO fue escrita por Edgar Allan Poe?', 
'"El cuervo"', 
'"El gato negro"', 
'"La caída de la casa Usher"', 
'"Drácula"', 
'D', 6, 7, 'Narraciones extraordinarias - Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Temas recurrentes en Poe', 
'La obra de Edgar Allan Poe explora temas como la muerte, el amor perdido, la culpa y la locura. Estos temas se presentan a menudo a través de personajes complejos y situaciones límite.', 
NULL, NULL, NULL, 
'¿Qué tema es recurrente en las narraciones de Edgar Allan Poe?', 
'La alegría de vivir y la celebración de la naturaleza', 
'La exploración de los límites entre la razón y la locura', 
'Las aventuras de héroes en mundos fantásticos', 
'Las comedias románticas con finales felices', 
'B', 6, 7, 'Narraciones extraordinarias - Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Influencia de Poe', 
'Edgar Allan Poe es considerado uno de los maestros del relato corto y su influencia se extiende no solo a la literatura de terror, sino también al desarrollo del género policial y la ciencia ficción.', 
NULL, NULL, NULL, 
'¿Qué género literario ayudó a desarrollar Edgar Allan Poe con sus obras?', 
'La poesía épica', 
'El género policial', 
'La literatura infantil', 
'El teatro del absurdo', 
'B', 6, 7, 'Narraciones extraordinarias - Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Técnicas narrativas de Poe', 
'Poe utilizó diversas técnicas narrativas innovadoras para su época, como el narrador no confiable y la exploración psicológica de los personajes, que contribuían a crear atmósferas de tensión y misterio.', 
NULL, NULL, NULL, 
'¿Qué técnica narrativa es característica de los cuentos de Poe?', 
'El uso de narradores omniscientes que lo saben todo', 
'El empleo de narradores no confiables o perturbados', 
'La ausencia total de narrador', 
'La alternancia constante de puntos de vista', 
'B', 6, 7, 'Narraciones extraordinarias - Edgar Allan Poe'),

-- Preguntas para el tema: El príncipe feliz y otros cuentos - Oscar Wilde
('COMUNICACIÓN', NULL, 'Temas en "El príncipe feliz"', 
'"El príncipe feliz" de Oscar Wilde es un cuento que combina elementos fantásticos con una profunda reflexión sobre temas como la compasión, la desigualdad social y el verdadero valor de las cosas.', 
NULL, NULL, NULL, 
'¿Qué tema principal explora "El príncipe feliz" de Oscar Wilde?', 
'La importancia de acumular riquezas', 
'El valor de la compasión y la generosidad', 
'La superioridad de los gobernantes sobre el pueblo', 
'La necesidad de venganza ante las injusticias', 
'B', 6, 7, 'El príncipe feliz y otros cuentos - Oscar Wilde'),

('COMUNICACIÓN', NULL, 'Personajes en Wilde', 
'Los cuentos de Oscar Wilde, incluidos en "El príncipe feliz y otros cuentos", presentan personajes simbólicos que encarnan valores, defectos humanos o ideas abstractas, siempre con un estilo lleno de ironía y belleza.', 
NULL, NULL, NULL, 
'¿Qué personaje de "El príncipe feliz" representa la generosidad desinteresada?', 
'El alcalde de la ciudad', 
'La golondrina', 
'El consejero municipal', 
'La madre del niño enfermo', 
'B', 6, 7, 'El príncipe feliz y otros cuentos - Oscar Wilde'),

('COMUNICACIÓN', NULL, 'Estilo de Oscar Wilde', 
'Oscar Wilde es conocido por su estilo ingenioso, lleno de paradojas y observaciones agudas sobre la sociedad. Sus cuentos, aunque aparentemente simples, contienen profundas reflexiones morales.', 
NULL, NULL, NULL, 
'¿Qué característica del estilo de Oscar Wilde se aprecia en sus cuentos?', 
'El uso constante de lenguaje técnico y especializado', 
'La combinación de ingenio, ironía y profundidad moral', 
'La ausencia total de diálogos', 
'La descripción minuciosa de paisajes naturales', 
'B', 6, 7, 'El príncipe feliz y otros cuentos - Oscar Wilde'),

('COMUNICACIÓN', NULL, 'Mensaje en los cuentos de Wilde', 
'Los cuentos de Oscar Wilde, como "El príncipe feliz", suelen transmitir mensajes morales a través de historias aparentemente sencillas, utilizando elementos fantásticos y personajes simbólicos.', 
NULL, NULL, NULL, 
'¿Qué mensaje transmite principalmente "El príncipe feliz"?', 
'Que la belleza exterior es lo más importante', 
'Que el verdadero valor está en las acciones desinteresadas', 
'Que el poder y la riqueza garantizan la felicidad', 
'Que los pobres merecen su situación', 
'B', 6, 7, 'El príncipe feliz y otros cuentos - Oscar Wilde'),

('COMUNICACIÓN', NULL, 'Contexto de los cuentos de Wilde', 
'Oscar Wilde escribió "El príncipe feliz y otros cuentos" en la época victoriana, pero sus historias trascienden su tiempo y continúan siendo relevantes por su exploración de temas universales.', 
NULL, NULL, NULL, 
'¿Por qué los cuentos de Oscar Wilde siguen siendo relevantes hoy?', 
'Porque describen con exactitud eventos históricos', 
'Porque abordan temas universales como el amor y la compasión', 
'Porque promueven valores de la sociedad victoriana', 
'Porque usan lenguaje técnico actualizado', 
'B', 6, 7, 'El príncipe feliz y otros cuentos - Oscar Wilde');

--PREGUNTAS INGLÉS - 1° DE SECUNDARIA
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas para el tema "Event, Places and Food"
('INGLÉS', NULL, 'Eventos y lugares', 
'En inglés, es importante conocer el vocabulario relacionado con eventos, lugares y comida. Estas palabras son fundamentales para describir experiencias y situaciones cotidianas.', 
NULL, NULL, NULL, 
'¿Cuál de estas opciones es un lugar donde puedes ver obras de teatro?', 
'Library', 'Hospital', 'Theater', 'Supermarket', 
'C', 4, 7, 'Event, Places and Food'),

('INGLÉS', NULL, 'Comida en eventos', 
'Los diferentes tipos de comida suelen estar asociados a eventos específicos. Es útil conocer estos términos para participar en conversaciones sobre planes sociales.', 
NULL, NULL, NULL, 
'¿Qué comida se sirve comúnmente en un cumpleaños?', 
'Birthday cake', 'Roast turkey', 'Vegetable soup', 'Spaghetti bolognese', 
'A', 4, 7, 'Event, Places and Food'),

('INGLÉS', NULL, 'Ubicaciones de eventos', 
'Cada evento social suele realizarse en lugares específicos. Conocer estos lugares te ayudará a entender dónde ocurren las actividades.', 
NULL, NULL, NULL, 
'¿Dónde se celebra normalmente una boda?', 
'At the gym', 'At the church', 'At the school', 'At the office', 
'B', 4, 7, 'Event, Places and Food'),

('INGLÉS', NULL, 'Vocabulario de restaurante', 
'Cuando visitas un restaurante, es útil conocer el vocabulario básico para poder ordenar comida y entender el menú.', 
NULL, NULL, NULL, 
'¿Qué palabra NO es un tipo de restaurante?', 
'Italian', 'Fast food', 'Dessert', 'Mexican', 
'C', 4, 7, 'Event, Places and Food'),

('INGLÉS', NULL, 'Eventos deportivos', 
'Los eventos deportivos son ocasiones sociales importantes donde la gente se reúne para apoyar a sus equipos favoritos.', 
NULL, NULL, NULL, 
'¿Qué necesitas para entrar a un partido de fútbol?', 
'A book', 'A ticket', 'A passport', 'A shopping list', 
'B', 4, 7, 'Event, Places and Food'),

-- Preguntas para el tema "Adjectives"
('INGLÉS', NULL, 'Descripciones con adjetivos', 
'Los adjetivos son palabras que nos ayudan a describir personas, lugares y cosas. Son esenciales para dar detalles en inglés.', 
NULL, NULL, NULL, 
'¿Cuál de estos adjetivos describe algo muy grande?', 
'Tiny', 'Huge', 'Narrow', 'Short', 
'B', 4, 7, 'Adjectives'),

('INGLÉS', NULL, 'Adjetivos opuestos', 
'Muchos adjetivos tienen opuestos que expresan ideas contrarias. Conocer estos pares de palabras enriquece tu vocabulario.', 
NULL, NULL, NULL, 
'¿Cuál es el opuesto de "happy"?', 
'Angry', 'Sad', 'Excited', 'Tired', 
'B', 4, 7, 'Adjectives'),

('INGLÉS', NULL, 'Adjetivos de personalidad', 
'Los adjetivos de personalidad nos ayudan a describir cómo son las personas y sus características principales.', 
NULL, NULL, NULL, 
'¿Qué adjetivo describe a alguien que siempre dice la verdad?', 
'Funny', 'Honest', 'Shy', 'Creative', 
'B', 4, 7, 'Adjectives'),

('INGLÉS', NULL, 'Adjetivos comparativos', 
'Los adjetivos comparativos se usan para comparar dos cosas, personas o lugares entre sí.', 
NULL, NULL, NULL, 
'¿Cuál es la forma comparativa de "big"?', 
'Bigger', 'More big', 'Biger', 'Biggest', 
'A', 4, 7, 'Adjectives'),

('INGLÉS', NULL, 'Adjetivos para el clima', 
'Existen muchos adjetivos para describir el clima y las condiciones atmosféricas en diferentes momentos del año.', 
NULL, NULL, NULL, 
'¿Qué adjetivo describe un día con mucho sol?', 
'Rainy', 'Cloudy', 'Sunny', 'Windy', 
'C', 4, 7, 'Adjectives'),

-- Preguntas para el tema "Past Simple: regular and irregular verbs"
('INGLÉS', NULL, 'Verbos en pasado simple', 
'El pasado simple se usa para hablar de acciones completadas en el pasado. Los verbos regulares e irregulares tienen formas diferentes en este tiempo.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta en pasado simple del verbo "go"?', 
'Goed', 'Went', 'Gone', 'Going', 
'B', 4, 7, 'Past Simple: regular and irregular verbs'),

('INGLÉS', NULL, 'Verbos regulares', 
'Los verbos regulares en pasado simple siguen un patrón consistente, generalmente añadiendo "-ed" al final del verbo.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta en pasado simple del verbo "play"?', 
'Played', 'Plays', 'Playing', 'Playd', 
'A', 4, 7, 'Past Simple: regular and irregular verbs'),

('INGLÉS', NULL, 'Oraciones en pasado', 
'Para formar oraciones en pasado simple, es importante usar correctamente la forma pasada del verbo principal.', 
NULL, NULL, NULL, 
'Completa la oración: "Yesterday, I ___ my homework before dinner."', 
'Do', 'Did', 'Done', 'Does', 
'B', 4, 7, 'Past Simple: regular and irregular verbs'),

('INGLÉS', NULL, 'Verbos irregulares comunes', 
'Algunos verbos irregulares en inglés cambian completamente su forma en pasado simple y deben memorizarse.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta en pasado simple del verbo "see"?', 
'Seen', 'Saw', 'Seed', 'Seeed', 
'B', 4, 7, 'Past Simple: regular and irregular verbs'),

('INGLÉS', NULL, 'Negaciones en pasado', 
'Para formar negaciones en pasado simple, usamos "did not" (didn''t) seguido del verbo en su forma base.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de negar esta oración: "She ate the cake."?', 
'She didn''t ate the cake', 'She didn''t eat the cake', 'She not ate the cake', 'She no eat the cake', 
'B', 4, 7, 'Past Simple: regular and irregular verbs'),

-- Preguntas para el tema "Yes/No questions in past"
('INGLÉS', NULL, 'Preguntas simples en pasado', 
'Las preguntas de sí/no en pasado simple se forman con "did" seguido del sujeto y el verbo en su forma base.', 
NULL, NULL, NULL, 
'¿Cómo se forma correctamente esta pregunta: "___ you visit the museum yesterday?"', 
'Do', 'Did', 'Does', 'Done', 
'B', 4, 7, 'Yes/No questions in past'),

('INGLÉS', NULL, 'Respuestas cortas', 
'Las respuestas cortas a preguntas de sí/no en pasado simple usan "did" o "didn''t" según corresponda.', 
NULL, NULL, NULL, 
'¿Cuál es la respuesta corta correcta para: "Did they finish the project?" si la respuesta es afirmativa?', 
'Yes, they did', 'Yes, they do', 'Yes, they finished', 'Yes, they have', 
'A', 4, 7, 'Yes/No questions in past'),

('INGLÉS', NULL, 'Preguntas sobre actividades', 
'Las preguntas de sí/no en pasado son útiles para preguntar sobre actividades realizadas en el pasado.', 
NULL, NULL, NULL, 
'¿Cómo se pregunta correctamente si alguien vio una película el fin de semana pasado?', 
'Did you see a movie last weekend?', 'Do you saw a movie last weekend?', 'Did you saw a movie last weekend?', 'Have you seen a movie last weekend?', 
'A', 4, 7, 'Yes/No questions in past'),

('INGLÉS', NULL, 'Preguntas con verbos irregulares', 
'Incluso con verbos irregulares, las preguntas de sí/no en pasado simple usan "did" + verbo en forma base.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de preguntar: "¿Ella escribió la carta?"', 
'Did she wrote the letter?', 'Did she write the letter?', 'Wrote she the letter?', 'Does she write the letter?', 
'B', 4, 7, 'Yes/No questions in past'),

('INGLÉS', NULL, 'Contexto de preguntas', 
'Las preguntas de sí/no en pasado simple pueden referirse a acciones específicas en momentos determinados del pasado.', 
NULL, NULL, NULL, 
'¿Cuál es la pregunta correcta para saber si alguien estuvo en la escuela ayer?', 
'Did you be at school yesterday?', 'Were you at school yesterday?', 'Did you were at school yesterday?', 'Are you at school yesterday?', 
'B', 4, 7, 'Yes/No questions in past'),

-- Preguntas para el tema "Past Continuous"
('INGLÉS', NULL, 'Forma del pasado continuo', 
'El pasado continuo se forma con el verbo "to be" en pasado (was/were) + el verbo principal con terminación -ing.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta del pasado continuo para "I/read"?', 
'I was reading', 'I were reading', 'I reading', 'I readed', 
'A', 4, 7, 'Past Continuous'),

('INGLÉS', NULL, 'Uso del pasado continuo', 
'El pasado continuo se usa para acciones que estaban en progreso en un momento específico del pasado.', 
NULL, NULL, NULL, 
'Completa la oración: "At 8 PM yesterday, they ___ dinner."', 
'Was having', 'Were having', 'Had', 'Having', 
'B', 4, 7, 'Past Continuous'),

('INGLÉS', NULL, 'Pasado continuo vs simple', 
'El pasado continuo a menudo se usa con el pasado simple para mostrar una acción interrumpida.', 
NULL, NULL, NULL, 
'Completa la oración: "I ___ TV when the phone rang."', 
'Watched', 'Was watching', 'Were watching', 'Am watching', 
'B', 4, 7, 'Past Continuous'),

('INGLÉS', NULL, 'Preguntas en pasado continuo', 
'Las preguntas en pasado continuo se forman invirtiendo el sujeto y la forma apropiada de "to be" (was/were).', 
NULL, NULL, NULL, 
'¿Cómo se pregunta correctamente: "¿Estabas estudiando anoche?"', 
'Did you study last night?', 'Were you studying last night?', 'Did you studying last night?', 'Are you studying last night?', 
'B', 4, 7, 'Past Continuous'),

('INGLÉS', NULL, 'Negaciones en pasado continuo', 
'Las negaciones en pasado continuo se forman añadiendo "not" después de was/were.', 
NULL, NULL, NULL, 
'¿Cuál es la forma negativa correcta de: "She was sleeping at 10 PM."?', 
'She wasn''t sleeping at 10 PM', 'She didn''t sleeping at 10 PM', 'She not was sleeping at 10 PM', 'She weren''t sleeping at 10 PM', 
'A', 4, 7, 'Past Continuous'),

-- Preguntas para el tema "A Short Story"
('INGLÉS', NULL, 'Comprensión de historia', 
'Leer historias cortas ayuda a mejorar la comprensión del inglés y a aprender vocabulario en contexto.', 
NULL, NULL, NULL, 
'Si una historia dice: "Tom was very hungry, so he ate three sandwiches.", ¿por qué Tom comió tanto?', 
'Because he was thirsty', 'Because he was hungry', 'Because he was tired', 'Because he was bored', 
'B', 4, 7, 'A Short Story'),

('INGLÉS', NULL, 'Detalles de la historia', 
'Los buenos lectores prestan atención a los detalles específicos en las historias para comprender mejor.', 
NULL, NULL, NULL, 
'En la oración: "The little girl dropped her ice cream and started to cry.", ¿qué hizo la niña primero?', 
'Started to cry', 'Bought another ice cream', 'Dropped her ice cream', 'Laughed at the situation', 
'C', 4, 7, 'A Short Story'),

('INGLÉS', NULL, 'Secuencia de eventos', 
'Entender el orden de los eventos en una historia es clave para su comprensión completa.', 
NULL, NULL, NULL, 
'En la historia: "First, Mark woke up. Then, he brushed his teeth. Finally, he had breakfast.", ¿qué hizo Mark después de despertarse?', 
'He had breakfast', 'He went back to sleep', 'He brushed his teeth', 'He took a shower', 
'C', 4, 7, 'A Short Story'),

('INGLÉS', NULL, 'Inferencias de historias', 
'A veces debemos inferir información que no está explícitamente dicha en la historia.', 
NULL, NULL, NULL, 
'Si una historia dice: "Sarah opened her umbrella as she stepped outside.", ¿qué podemos inferir sobre el clima?', 
'It was sunny', 'It was raining', 'It was snowing', 'It was windy', 
'B', 4, 7, 'A Short Story'),

('INGLÉS', NULL, 'Personajes en historias', 
'Identificar las características de los personajes ayuda a comprender sus acciones en la historia.', 
NULL, NULL, NULL, 
'Si una historia dice: "Lucy always shares her toys with her friends.", ¿cómo describirías a Lucy?', 
'Selfish', 'Generous', 'Shy', 'Angry', 
'B', 4, 7, 'A Short Story');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Preguntas sobre Entertainment
('INGLÉS', NULL, 'Entretenimiento cinematográfico', 
 'El entretenimiento es una parte importante de nuestra vida cotidiana. El cine ofrece diversas formas de diversión, desde películas de acción hasta comedias románticas. Es esencial comprender el vocabulario relacionado con este tema para poder discutir sobre nuestras preferencias.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes opciones es un género cinematográfico?', 
 'Documental', 'Correr', 'Estudiar', 'Cocinar', 
 'A', 4, 7, 'Entertainment'),

('INGLÉS', NULL, 'Preferencias de ocio', 
 'Las personas tienen diferentes formas de entretenerse durante su tiempo libre. Algunos prefieren actividades al aire libre, mientras que otros disfrutan de opciones más tranquilas en casa. Conocer este vocabulario ayuda a expresar nuestras aficiones.', 
 NULL, NULL, NULL, 
 '¿Qué actividad NO es considerada generalmente como entretenimiento?', 
 'Ver una serie', 'Ir al cine', 'Hacer la tarea', 'Jugar videojuegos', 
 'C', 4, 7, 'Entertainment'),

('INGLÉS', NULL, 'Eventos culturales', 
 'Los eventos culturales son una forma valiosa de entretenimiento que también enriquece nuestro conocimiento. Incluyen conciertos, obras de teatro, exposiciones de arte y festivales. Es importante reconocer estos términos en inglés.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos es un evento cultural típico?', 
 'Supermarket', 'Music concert', 'Gas station', 'Homework', 
 'B', 4, 7, 'Entertainment'),

('INGLÉS', NULL, 'Medios digitales', 
 'En la era digital, el entretenimiento ha evolucionado significativamente. Plataformas como YouTube, Netflix y Spotify han cambiado la forma en que consumimos contenido. Este vocabulario es fundamental para los jóvenes de hoy.', 
 NULL, NULL, NULL, 
 '¿Qué plataforma es principalmente para ver películas y series?', 
 'Spotify', 'Netflix', 'Facebook', 'Twitter', 
 'B', 4, 7, 'Entertainment'),

('INGLÉS', NULL, 'Actividades recreativas', 
 'Las actividades recreativas varían según los intereses personales. Pueden ser individuales o en grupo, activas o pasivas. Dominar este vocabulario permite describir mejor nuestras actividades favoritas.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas es una actividad recreativa al aire libre?', 
 'Leer un libro', 'Navegar por internet', 'Hacer senderismo', 'Ver televisión', 
 'C', 4, 7, 'Entertainment'),

-- Preguntas sobre Showtimes
('INGLÉS', NULL, 'Horarios de películas', 
 'Cuando planeamos ir al cine, es crucial entender los horarios de las funciones. Los cines suelen tener múltiples proyecciones durante el día, y saber interpretar estos horarios evita confusiones.', 
 NULL, NULL, NULL, 
 'Si una película comienza a las "7:30 PM", ¿cómo se lee esta hora?', 
 'Siete y media de la mañana', 'Siete y media de la tarde', 'Treinta minutos pasadas las siete', 'Mediodía', 
 'B', 4, 7, 'Showtimes'),

('INGLÉS', NULL, 'Duración de funciones', 
 'La duración de las películas varía mucho, desde cortometrajes de 15 minutos hasta largometrajes de 3 horas. Comprender estos conceptos ayuda a planificar mejor nuestro tiempo.', 
 NULL, NULL, NULL, 
 '¿Qué término se usa para una película que dura entre 60 y 90 minutos?', 
 'Short film', 'Feature film', 'Documentary', 'TV series', 
 'B', 4, 7, 'Showtimes'),

('INGLÉS', NULL, 'Formatos de proyección', 
 'Los cines modernos ofrecen diferentes formatos de visualización como 3D, IMAX o versión estándar. Cada uno tiene características especiales y precios distintos.', 
 NULL, NULL, NULL, 
 '¿Qué formato de cine ofrece una experiencia visual más inmersiva?', 
 'Standard', '3D', 'Matinee', 'Digital', 
 'B', 4, 7, 'Showtimes'),

('INGLÉS', NULL, 'Tipos de funciones', 
 'Además de las funciones regulares, los cines pueden ofrecer estrenos, preestrenos, funciones matutinas o nocturnas. Conocer estos términos facilita la elección de la mejor opción.', 
 NULL, NULL, NULL, 
 '¿Cómo se llama la función de cine que ocurre durante la mañana?', 
 'Midnight showing', 'Matinee', 'Premiere', 'Final showing', 
 'B', 4, 7, 'Showtimes'),

('INGLÉS', NULL, 'Compra de entradas', 
 'Adquirir entradas para el cine puede hacerse en taquilla o en línea. Es importante entender términos como "asientos disponibles", "agotado" o "reservar" para una experiencia sin problemas.', 
 NULL, NULL, NULL, 
 '¿Qué significa "sold out" en relación a los boletos de cine?', 
 'Hay muchos asientos disponibles', 'Se están vendiendo rápido', 'Ya no hay boletos disponibles', 'Los precios han bajado', 
 'C', 4, 7, 'Showtimes'),

-- Preguntas sobre Places in town and city
('INGLÉS', NULL, 'Lugares urbanos', 
 'Las ciudades están llenas de lugares importantes que usamos en nuestra vida diaria. Desde centros comerciales hasta parques públicos, cada lugar tiene su función específica en la comunidad.', 
 NULL, NULL, NULL, 
 '¿Dónde irías normalmente para enviar una carta?', 
 'Library', 'Post office', 'School', 'Hospital', 
 'B', 4, 7, 'Places in town and city'),

('INGLÉS', NULL, 'Servicios públicos', 
 'Los servicios públicos son esenciales para el funcionamiento de cualquier ciudad. Incluyen hospitales, estaciones de policía, bomberos y otros que garantizan nuestra seguridad y bienestar.', 
 NULL, NULL, NULL, 
 '¿Qué lugar visitarías en caso de emergencia médica?', 
 'Movie theater', 'Hospital', 'Mall', 'Park', 
 'B', 4, 7, 'Places in town and city'),

('INGLÉS', NULL, 'Espacios recreativos', 
 'Además de los lugares de trabajo y servicios, las ciudades ofrecen espacios para el esparcimiento y la cultura. Estos lugares mejoran nuestra calidad de vida y oportunidades de socialización.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos es un lugar recreativo típico en una ciudad?', 
 'Factory', 'Public park', 'Office building', 'Parking lot', 
 'B', 4, 7, 'Places in town and city'),

('INGLÉS', NULL, 'Establecimientos comerciales', 
 'Los negocios y establecimientos comerciales son el corazón económico de cualquier ciudad. Van desde pequeñas tiendas hasta grandes centros comerciales que ofrecen diversos productos.', 
 NULL, NULL, NULL, 
 '¿Dónde comprarías normalmente ropa nueva?', 
 'Bakery', 'Clothing store', 'Hardware store', 'Bookstore', 
 'B', 4, 7, 'Places in town and city'),

('INGLÉS', NULL, 'Infraestructura urbana', 
 'La infraestructura de una ciudad incluye todos los edificios, calles y servicios que hacen posible la vida urbana. Reconocer estos lugares es fundamental para orientarse en cualquier ciudad.', 
 NULL, NULL, NULL, 
 '¿Qué lugar es esencial para el transporte público en una ciudad?', 
 'Bus station', 'Swimming pool', 'Library', 'Cinema', 
 'A', 4, 7, 'Places in town and city'),

-- Preguntas sobre Infinitives and Gerunds
('INGLÉS', NULL, 'Uso de infinitivos', 
 'Los infinitivos (to + verbo) y gerundios (verbo + ing) tienen usos específicos en inglés. Aunque algunos verbos pueden usar ambas formas, otros requieren una en particular, lo que puede causar confusión.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta del infinitivo del verbo "run"?', 
 'Running', 'To run', 'Ran', 'Runs', 
 'B', 4, 7, 'Infinitives and Gerunds'),

('INGLÉS', NULL, 'Verbos seguidos de gerundio', 
 'Algunos verbos en inglés siempre van seguidos de gerundio (-ing), como "enjoy", "avoid" o "consider". Es importante memorizar estos verbos para construir oraciones correctamente.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta después del verbo "enjoy"?', 
 'To swim', 'Swim', 'Swimming', 'Swam', 
 'C', 4, 7, 'Infinitives and Gerunds'),

('INGLÉS', NULL, 'Diferencia de significado', 
 'Algunos verbos cambian de significado dependiendo de si usan infinitivo o gerundio. Por ejemplo, "stop to smoke" y "stop smoking" tienen significados completamente diferentes.', 
 NULL, NULL, NULL, 
 '¿Qué significa "I remember to call her"?', 
 'Recuerdo que la llamé', 'No olvidé llamarla', 'Me acuerdo de llamarla', 'Recuerdo haberla llamado', 
 'C', 4, 7, 'Infinitives and Gerunds'),

('INGLÉS', NULL, 'Expresiones con gerundio', 
 'El gerundio se usa después de preposiciones y en muchas expresiones comunes. También funciona como sujeto de la oración en algunos casos, lo que es diferente al español.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta en la frase "I am interested in ___ English"?', 
 'Learn', 'To learn', 'Learning', 'Learnt', 
 'C', 4, 7, 'Infinitives and Gerunds'),

('INGLÉS', NULL, 'Verbos de percepción', 
 'Los verbos de percepción como "see", "hear" y "feel" pueden usar infinitivo sin "to" o gerundio, con ligeras diferencias de significado. Este es un aspecto avanzado pero importante del tema.', 
 NULL, NULL, NULL, 
 '¿Cuál es correcto después de "I heard him ___"?', 
 'To sing', 'Singing', 'Sang', 'Sings', 
 'B', 4, 7, 'Infinitives and Gerunds'),

-- Preguntas sobre Present Continuous as Future
('INGLÉS', NULL, 'Planificación de eventos', 
 'El presente continuo no solo expresa acciones en curso, sino también planes futuros ya establecidos. Este uso es común cuando hablamos de arreglos personales con un grado de certeza.', 
 NULL, NULL, NULL, 
 '¿Qué significa la frase "I am meeting friends tonight"?', 
 'Me encuentro con amigos ahora', 'Voy a encontrarme con amigos esta noche', 'Me gusta encontrarme con amigos', 'Me encontré con amigos', 
 'B', 4, 7, 'Present Continuous as Future'),

('INGLÉS', NULL, 'Diferencias temporales', 
 'Es importante distinguir entre el uso del presente continuo para el presente y para el futuro. El contexto y expresiones de tiempo como "tomorrow" o "next week" ayudan a identificar el significado.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas frases expresa un plan futuro?', 
 'She is eating lunch', 'They are traveling to Paris next month', 'We are watching TV', 'I am reading a book', 
 'B', 4, 7, 'Present Continuous as Future'),

('INGLÉS', NULL, 'Arreglos personales', 
 'Cuando usamos el presente continuo para futuro, generalmente implica que el plan ya está organizado, con hora, lugar u otros detalles concretos. No es solo una idea o posibilidad.', 
 NULL, NULL, NULL, 
 '¿Qué frase indica un arreglo futuro ya planeado?', 
 'I think I will go to the party', 'Maybe we will see a movie', 'She is flying to Madrid on Tuesday', 'They might visit us', 
 'C', 4, 7, 'Present Continuous as Future'),

('INGLÉS', NULL, 'Expresiones de tiempo', 
 'Las expresiones de tiempo futuro son clave para identificar cuándo el presente continuo se refiere al futuro. Sin ellas, la oración podría interpretarse como una acción en curso.', 
 NULL, NULL, NULL, 
 '¿Qué expresión de tiempo NO indica uso futuro del presente continuo?', 
 'Tomorrow morning', 'Next week', 'At the moment', 'This weekend', 
 'C', 4, 7, 'Present Continuous as Future'),

('INGLÉS', NULL, 'Contraste con will', 
 'A diferencia de "will" para decisiones espontáneas o predicciones, el presente continuo como futuro muestra planes ya decididos. Esta distinción es fundamental para usar correctamente ambos tiempos.', 
 NULL, NULL, NULL, 
 '¿Cuál es la diferencia entre "I will see the doctor" y "I am seeing the doctor"?', 
 'La primera es un plan, la segunda una decisión espontánea', 'La primera es una decisión espontánea, la segunda un plan', 'Ambas significan lo mismo', 'La primera es presente, la segunda futuro', 
 'B', 4, 7, 'Present Continuous as Future'),

-- Preguntas sobre Prepositions
('INGLÉS', NULL, 'Preposiciones de lugar', 
 'Las preposiciones de lugar como "in", "on", "at", "under" y "between" describen la posición de personas u objetos. Su uso correcto es esencial para dar direcciones o describir ubicaciones.', 
 NULL, NULL, NULL, 
 '¿Qué preposición usarías para decir que un libro está encima de la mesa?', 
 'In', 'On', 'Under', 'Between', 
 'B', 4, 7, 'Prepositions'),

('INGLÉS', NULL, 'Preposiciones de tiempo', 
 'Así como las preposiciones de lugar, las de tiempo ("at", "on", "in") tienen reglas específicas. "At" para horas, "on" para días y "in" para períodos más largos como meses o años.', 
 NULL, NULL, NULL, 
 '¿Qué preposición completa correctamente "___ Monday morning"?', 
 'In', 'On', 'At', 'By', 
 'B', 4, 7, 'Prepositions'),

('INGLÉS', NULL, 'Preposiciones de movimiento', 
 'Las preposiciones como "to", "into", "toward" y "through" describen movimiento o dirección. Su uso apropiado ayuda a dar instrucciones claras sobre desplazamiento.', 
 NULL, NULL, NULL, 
 '¿Qué preposición indica movimiento hacia el interior de un lugar?', 
 'On', 'Into', 'Over', 'Beside', 
 'B', 4, 7, 'Prepositions'),

('INGLÉS', NULL, 'Expresiones fijas', 
 'Muchas expresiones en inglés usan preposiciones específicas que no siempre siguen reglas lógicas. Por ejemplo, "good at", "interested in" o "afraid of" deben memorizarse.', 
 NULL, NULL, NULL, 
 '¿Qué preposición completa "She is afraid ___ spiders"?', 
 'Of', 'At', 'With', 'For', 
 'A', 4, 7, 'Prepositions'),

('INGLÉS', NULL, 'Uso de "by" y "with"', 
 'Las preposiciones "by" y "with" pueden causar confusión. "By" indica el agente en pasiva o método, mientras "with" se usa para instrumentos o compañía.', 
 NULL, NULL, NULL, 
 '¿Qué preposición completa "The letter was written ___ a pen"?', 
 'By', 'With', 'At', 'In', 
 'B', 4, 7, 'Prepositions'),

-- Preguntas sobre Suggestions
('INGLÉS', NULL, 'Expresar sugerencias', 
 'Hacer sugerencias es una parte importante de la comunicación social. En inglés hay varias formas de sugerir actividades o soluciones, desde las más directas hasta las más sutiles.', 
 NULL, NULL, NULL, 
 '¿Cuál es una forma común de hacer una sugerencia en inglés?', 
 'I must go now', 'Let''s go to the cinema', 'I never do that', 'She is coming later', 
 'B', 4, 7, 'Suggestions'),

('INGLÉS', NULL, 'Responder a sugerencias', 
 'Así como es importante saber hacer sugerencias, también lo es saber aceptarlas o rechazarlas educadamente. Hay expresiones específicas para cada caso en inglés.', 
 NULL, NULL, NULL, 
 '¿Cuál es una respuesta positiva a "Shall we eat out tonight?"', 
 'No way!', 'That sounds great!', 'I hate restaurants', 'You''re wrong', 
 'B', 4, 7, 'Suggestions'),

('INGLÉS', NULL, 'Formas de sugerir', 
 'Además de "Let''s", existen otras formas de hacer sugerencias como "Why don''t we...?", "How about...?" o "We could...". Cada una tiene una estructura gramatical particular.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas es una estructura correcta para sugerir?', 
 'Why we don''t go?', 'How about to go?', 'We could go', 'Let''s to go', 
 'C', 4, 7, 'Suggestions'),

('INGLÉS', NULL, 'Sugerencias indirectas', 
 'A veces hacemos sugerencias de forma indirecta, especialmente en situaciones formales o con personas que no conocemos bien. Estas frases suelen ser más largas y menos directas.', 
 NULL, NULL, NULL, 
 '¿Cuál es una sugerencia indirecta?', 
 'Go home now!', 'Let''s leave', 'Maybe we should consider leaving', 'You must go', 
 'C', 4, 7, 'Suggestions'),

('INGLÉS', NULL, 'Rechazo educado', 
 'Cuando no estamos de acuerdo con una sugerencia, es importante rechazarla de manera educada, especialmente en contextos formales o con superiores.', 
 NULL, NULL, NULL, 
 '¿Cuál es una forma educada de rechazar "Why don''t we play soccer?"?', 
 'Soccer is stupid', 'I''d rather not, but thanks for asking', 'No, I hate you', 'You have bad ideas', 
 'B', 4, 7, 'Suggestions'),

-- Preguntas sobre Demonstrative Pronouns
('INGLÉS', NULL, 'Pronombres demostrativos básicos', 
 'Los pronombres demostrativos (this, that, these, those) señalan objetos o personas en relación con la distancia del hablante. Su uso correcto es fundamental para la comunicación clara.', 
 NULL, NULL, NULL, 
 '¿Qué pronombre demostrativo usarías para un objeto singular cerca de ti?', 
 'This', 'That', 'These', 'Those', 
 'A', 4, 7, 'Demonstrative Pronouns'),

('INGLÉS', NULL, 'Singular y plural', 
 'Los pronombres demostrativos tienen formas singulares (this, that) y plurales (these, those). Es esencial concordarlos correctamente con los sustantivos a los que se refieren.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma plural de "that"?', 
 'This', 'These', 'Those', 'They', 
 'C', 4, 7, 'Demonstrative Pronouns'),

('INGLÉS', NULL, 'Distancia física', 
 'La elección entre "this/these" y "that/those" depende de la distancia física del objeto. Los primeros se usan para lo cercano, los segundos para lo lejano, ya sea en espacio o tiempo.', 
 NULL, NULL, NULL, 
 '¿Qué pronombre usarías para un libro que está al otro lado de la habitación?', 
 'This', 'That', 'These', 'Such', 
 'B', 4, 7, 'Demonstrative Pronouns'),

('INGLÉS', NULL, 'Referencia temporal', 
 'Los demostrativos también pueden indicar distancia temporal. "This" se refiere a tiempos cercanos (esta semana), mientras "that" a tiempos más lejanos (aquel año).', 
 NULL, NULL, NULL, 
 '¿Qué pronombre completa "___ summer was amazing"? refiriéndose al verano pasado?', 
 'This', 'That', 'These', 'Those', 
 'B', 4, 7, 'Demonstrative Pronouns'),

('INGLÉS', NULL, 'Diferenciación de objetos', 
 'Cuando hay varios objetos y queremos distinguir entre ellos, los pronombres demostrativos son muy útiles para señalar específicamente a cuál nos referimos.', 
 NULL, NULL, NULL, 
 'Si tienes dos camisas y señalas la más cercana, ¿qué dirías?', 
 'That shirt is nice', 'This shirt is nice', 'These shirts are nice', 'Those shirts are nice', 
 'B', 4, 7, 'Demonstrative Pronouns'),

-- Preguntas sobre A Daily Planner
('INGLÉS', NULL, 'Organización del tiempo', 
 'Un planificador diario ayuda a organizar nuestras actividades, citas y responsabilidades. El vocabulario relacionado incluye términos para diferentes partes del día y tipos de actividades.', 
 NULL, NULL, NULL, 
 '¿Qué término se refiere a una reunión programada?', 
 'Appointment', 'Breakfast', 'Exercise', 'Shopping', 
 'A', 4, 7, 'A Daily Planner'),

('INGLÉS', NULL, 'Partes del día', 
 'Al planificar nuestro día, es común dividirlo en mañana, tarde y noche. Cada período tiene actividades típicas y vocabulario asociado.', 
 NULL, NULL, NULL, 
 '¿Qué actividad es típicamente matutina?', 
 'Dinner', 'Breakfast', 'Night class', 'Evening walk', 
 'B', 4, 7, 'A Daily Planner'),

('INGLÉS', NULL, 'Priorización de tareas', 
 'Un buen planificador no solo lista actividades, sino que también ayuda a priorizarlas. Conceptos como "urgent", "important" o "flexible" son clave para una planificación efectiva.', 
 NULL, NULL, NULL, 
 '¿Qué término describe una tarea que debe hacerse inmediatamente?', 
 'Flexible', 'Optional', 'Urgent', 'Unimportant', 
 'C', 4, 7, 'A Daily Planner'),

('INGLÉS', NULL, 'Recordatorios', 
 'Los recordatorios son una parte esencial de la planificación diaria. Pueden ser escritos, alarmas o notificaciones digitales que nos ayudan a no olvidar compromisos importantes.', 
 NULL, NULL, NULL, 
 '¿Qué frase se usa comúnmente para recordar algo?', 
 'I forgot', 'Don''t forget to', 'I don''t care', 'Maybe later', 
 'B', 4, 7, 'A Daily Planner'),

('INGLÉS', NULL, 'Horarios escolares', 
 'Para estudiantes, un planificador diario suele incluir horarios de clases, tiempo de estudio y actividades extracurriculares. Saber este vocabulario ayuda a organizarse mejor académicamente.', 
 NULL, NULL, NULL, 
 '¿Qué término se refiere al tiempo entre clases?', 
 'Class time', 'Break', 'Exam', 'Homework', 
 'B', 4, 7, 'A Daily Planner');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Preguntas sobre Linking Verbs
('INGLÉS', NULL, 'Identificando linking verbs', 
'Los linking verbs (verbos copulativos) no expresan acción, sino que conectan el sujeto con información adicional sobre su estado o condición. Estos verbos incluyen formas de "to be" (ser/estar), "become" (convertirse), "seem" (parecer), "feel" (sentirse), entre otros. Identificar estos verbos es fundamental para comprender la estructura de las oraciones en inglés.',
NULL, NULL, NULL, 
'¿Cuál de las siguientes oraciones contiene un linking verb?', 
'She runs every morning before school.', 
'They became good friends after the project.', 
'He quickly solved the math problem.', 
'The cat chased the mouse around the house.', 
'B', 4, 7, 'Linking verbs'),

('INGLÉS', NULL, 'Uso correcto de linking verbs', 
'Los linking verbs tienen una función gramatical específica en la oración. A diferencia de los verbos de acción, no muestran movimiento o actividad, sino que sirven como puente entre el sujeto y su descripción o estado. Es importante no confundirlos con verbos de acción al analizar oraciones.',
NULL, NULL, NULL, 
'En la oración "The flowers smell wonderful", ¿qué palabra es el linking verb?', 
'flowers', 
'smell', 
'wonderful', 
'The', 
'B', 4, 7, 'Linking verbs'),

('INGLÉS', NULL, 'Linking verbs vs. action verbs', 
'Distinguir entre linking verbs y action verbs (verbos de acción) es una habilidad clave en el aprendizaje del inglés. Mientras los action verbs describen lo que el sujeto hace, los linking verbs describen lo que el sujeto es o cómo está.',
NULL, NULL, NULL, 
'¿Cuál de estos verbos NO es típicamente un linking verb?', 
'appear', 
'remain', 
'jump', 
'seem', 
'C', 4, 7, 'Linking verbs'),

('INGLÉS', NULL, 'Complementos de linking verbs', 
'Los linking verbs suelen ir seguidos de adjetivos o sustantivos que describen al sujeto, llamados complementos del sujeto. Estos complementos proporcionan información esencial sobre el sujeto y son diferentes de los objetos directos que siguen a los verbos de acción.',
NULL, NULL, NULL, 
'En la oración "Your idea sounds perfect", ¿qué tipo de palabra es "perfect"?', 
'Un adverbio que modifica al verbo', 
'Un adjetivo que describe al sujeto', 
'Un sustantivo que es objeto directo', 
'Una preposición', 
'B', 4, 7, 'Linking verbs'),

('INGLÉS', NULL, 'Formas del verbo "to be"', 
'El verbo "to be" (ser/estar) es el linking verb más común en inglés. Tiene formas diferentes según el tiempo verbal y la persona gramatical. Reconocer estas formas es esencial para construir oraciones correctamente.',
NULL, NULL, NULL, 
'¿Cuál de las siguientes es la forma correcta del linking verb "to be" en presente para "They"?', 
'am', 
'is', 
'are', 
'be', 
'C', 4, 7, 'Linking verbs'),

-- Preguntas sobre Would rather, would, would like
('INGLÉS', NULL, 'Expresando preferencias', 
'En inglés, existen varias formas de expresar preferencias, deseos o gustos. "Would rather", "would" y "would like" son estructuras comunes para este propósito, pero cada una tiene usos y matices diferentes que es importante comprender.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de completar esta oración? "I _____ go to the beach than stay home today."', 
'would like', 
'would rather', 
'would', 
'would prefer to', 
'B', 4, 7, 'Would rather, would, would like'),

('INGLÉS', NULL, 'Diferencia entre would like y would', 
'La expresión "would like" se usa para indicar deseos o preferencias de manera educada, especialmente al hacer ofrecimientos o pedidos. "Would" por sí solo tiene otros usos en inglés y no se emplea para expresar preferencias de la misma manera.',
NULL, NULL, NULL, 
'¿Cuál de estas oraciones es gramaticalmente correcta para pedir algo educadamente?', 
'I would a coffee, please.', 
'I would like a coffee, please.', 
'I would rather a coffee, please.', 
'I would prefer a coffee, please.', 
'B', 4, 7, 'Would rather, would, would like'),

('INGLÉS', NULL, 'Estructura con would rather', 
'La estructura "would rather" tiene reglas específicas sobre lo que puede seguirla. Cuando comparamos dos opciones, usamos "than" para introducir la segunda opción. Es importante recordar que después de "would rather" generalmente va un verbo en forma base (sin "to").',
NULL, NULL, NULL, 
'¿Cómo se completa correctamente esta oración? "She would rather _____ early than miss the train."', 
'to wake up', 
'waking up', 
'wake up', 
'wakes up', 
'C', 4, 7, 'Would rather, would, would like'),

('INGLÉS', NULL, 'Would para hábitos pasados', 
'Además de expresar preferencias, "would" puede usarse para hablar sobre hábitos o acciones repetidas en el pasado. Este uso es diferente de "would rather" y "would like", y es importante no confundirlos.',
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa "would" para describir un hábito pasado?', 
'I would like to visit Paris someday.', 
'When I was young, I would play soccer every afternoon.', 
'Would you rather tea or coffee?', 
'I would rather not say.', 
'B', 4, 7, 'Would rather, would, would like'),

('INGLÉS', NULL, 'Contracciones con would', 
'En inglés conversacional, "would" a menudo se contrae como "''d". Esta contracción puede usarse con "rather" y "like", pero es importante recordar que la forma completa es necesaria en contextos formales o cuando se quiere enfatizar.',
NULL, NULL, NULL, 
'¿Cuál es la forma contraída correcta de "I would like to go"?', 
'I''d like to go', 
'I''ll like to go', 
'I''ve like to go', 
'I''m like to go', 
'A', 4, 7, 'Would rather, would, would like'),

-- Preguntas sobre Defining and non defining clauses
('INGLÉS', NULL, 'Identificando relative clauses', 
'Las relative clauses (oraciones de relativo) añaden información sobre un sustantivo. Pueden ser defining (esenciales para el significado) o non-defining (que dan información adicional pero no esencial). Las non-defining clauses van entre comas y no pueden usar "that".',
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene una non-defining clause?', 
'The book that I borrowed from you is very interesting.', 
'My brother, who lives in Madrid, is visiting us next week.', 
'People who exercise regularly tend to be healthier.', 
'The movie which we saw yesterday was fantastic.', 
'B', 4, 7, 'Defining and non defining clauses'),

('INGLÉS', NULL, 'Uso correcto de pronombres relativos', 
'Los pronombres relativos ("who", "whom", "which", "that", "whose") introducen relative clauses. La elección del pronombre correcto depende de si se refiere a personas o cosas, y si la cláusula es defining o non-defining.',
NULL, NULL, NULL, 
'¿Cuál pronombre relativo NO puede usarse en una non-defining clause?', 
'who', 
'which', 
'that', 
'whose', 
'C', 4, 7, 'Defining and non defining clauses'),

('INGLÉS', NULL, 'Importancia de las comas', 
'En las non-defining clauses, las comas son esenciales porque indican que la información es adicional y no esencial para identificar al sustantivo. Su ausencia o presencia puede cambiar completamente el significado de la oración.',
NULL, NULL, NULL, 
'¿Qué diferencia de significado crea la coma en esta oración? "My sister who is a doctor lives in Boston." vs. "My sister, who is a doctor, lives in Boston."', 
'La primera implica que tengo varias hermanas, la segunda que solo tengo una', 
'La primera es incorrecta gramaticalmente', 
'La segunda implica que tengo varias hermanas', 
'No hay diferencia de significado', 
'A', 4, 7, 'Defining and non defining clauses'),

('INGLÉS', NULL, 'Omisión del pronombre relativo', 
'En defining clauses, a veces podemos omitir el pronombre relativo cuando no es el sujeto de la cláusula. Sin embargo, esto no es posible en non-defining clauses, donde el pronombre relativo siempre debe aparecer.',
NULL, NULL, NULL, 
'¿En cuál de estas oraciones se puede omitir el pronombre relativo?', 
'The woman who is standing over there is my aunt.', 
'This is the house which Jack built.', 
'Mr. Johnson, whom we met yesterday, is our new neighbor.', 
'My passport, which I renewed last month, was expensive.', 
'B', 4, 7, 'Defining and non defining clauses'),

('INGLÉS', NULL, 'Elección entre which y that', 
'En defining clauses, tanto "which" como "that" pueden usarse para referirse a cosas, aunque "that" es más común en inglés hablado. En non-defining clauses, solo se puede usar "which".',
NULL, NULL, NULL, 
'¿Cuál de estas oraciones es correcta?', 
'My car, that is parked outside, needs washing.', 
'My car which is parked outside needs washing.', 
'My car, which is parked outside, needs washing.', 
'My car, who is parked outside, needs washing.', 
'C', 4, 7, 'Defining and non defining clauses'),

-- Preguntas sobre Noun phrases
('INGLÉS', NULL, 'Componentes de las noun phrases', 
'Una noun phrase (sintagma nominal) es un grupo de palabras que funciona como un sustantivo en la oración. Puede incluir determinantes, adjetivos, y modificadores además del núcleo sustantivo. Reconocer estas estructuras ayuda a comprender la función de las palabras en la oración.',
NULL, NULL, NULL, 
'¿Cuál de las siguientes es una noun phrase completa?', 
'quickly ran', 
'the big red apple', 
'singing loudly', 
'very happy', 
'B', 4, 7, 'Noun phrases'),

('INGLÉS', NULL, 'Funciones de las noun phrases', 
'Las noun phrases pueden desempeñar varios roles en una oración: sujeto, objeto directo, objeto indirecto, complemento, entre otros. Identificar su función es clave para analizar la estructura de las oraciones.',
NULL, NULL, NULL, 
'En la oración "The teacher gave the students an interesting assignment", ¿cuál es la noun phrase que funciona como objeto indirecto?', 
'The teacher', 
'gave', 
'the students', 
'an interesting assignment', 
'C', 4, 7, 'Noun phrases'),

('INGLÉS', NULL, 'Modificadores en noun phrases', 
'Los modificadores en una noun phrase pueden ser adjetivos, frases preposicionales, o incluso otras cláusulas. Estos elementos describen o limitan el significado del sustantivo principal de diversas maneras.',
NULL, NULL, NULL, 
'¿Cuál de estas opciones contiene una noun phrase con un modificador en forma de frase preposicional?', 
'a beautiful sunset', 
'the book on the table', 
'three hungry dogs', 
'some delicious cookies', 
'B', 4, 7, 'Noun phrases'),

('INGLÉS', NULL, 'Núcleo de la noun phrase', 
'El núcleo de una noun phrase es el sustantivo principal al que se refieren todos los modificadores. Puede ser un sustantivo concreto, abstracto, contable o incontable. El núcleo determina el número (singular/plural) de toda la frase.',
NULL, NULL, NULL, 
'En la noun phrase "several boxes of old photographs", ¿cuál es el núcleo?', 
'several', 
'boxes', 
'old', 
'photographs', 
'B', 4, 7, 'Noun phrases'),

('INGLÉS', NULL, 'Noun phrases complejas', 
'Algunas noun phrases pueden ser bastante largas y complejas, incluyendo múltiples niveles de modificación. Analizarlas requiere identificar cada componente y su relación con el núcleo sustantivo.',
NULL, NULL, NULL, 
'¿Cuál de estas opciones contiene una noun phrase con dos niveles de modificación (adjetivo + frase preposicional)?', 
'a sunny day', 
'the tall building near the park', 
'my favorite book', 
'some fresh fruit', 
'B', 4, 7, 'Noun phrases'),

-- Preguntas sobre Present perfect
('INGLÉS', NULL, 'Formación del present perfect', 
'El present perfect se forma con el auxiliar "have/has" más el past participle del verbo principal. Este tiempo verbal conecta el pasado con el presente y se usa para hablar de experiencias, acciones recientes o situaciones que continúan hasta ahora.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta del present perfect para "She _____ (finish) her homework"?', 
'finish', 
'finishes', 
'has finished', 
'is finishing', 
'C', 4, 7, 'Present perfect'),

('INGLÉS', NULL, 'Uso con "for" y "since"', 
'El present perfect se usa frecuentemente con "for" (para indicar duración) y "since" (para indicar el punto de inicio). Estas expresiones temporales ayudan a precisar el período de tiempo de la acción o estado descrito.',
NULL, NULL, NULL, 
'¿Cómo se completa correctamente esta oración? "They _____ lived here _____ 2015."', 
'have, for', 
'has, since', 
'have, since', 
'has, for', 
'C', 4, 7, 'Present perfect'),

('INGLÉS', NULL, 'Experiencias de vida', 
'Uno de los usos principales del present perfect es hablar de experiencias de vida sin especificar cuándo ocurrieron. Para preguntar sobre experiencias, usamos "ever" en preguntas y "never" para negaciones.',
NULL, NULL, NULL, 
'¿Cuál es la pregunta correcta para preguntar sobre experiencias?', 
'Did you ever visit London?', 
'Have you ever visited London?', 
'Do you ever visit London?', 
'Are you ever visiting London?', 
'B', 4, 7, 'Present perfect'),

('INGLÉS', NULL, 'Acciones recientes', 
'El present perfect también se usa para acciones recientes que tienen relevancia en el presente. Con estas acciones, a menudo usamos "just", "already" o "yet" para indicar el momento o estado de la acción.',
NULL, NULL, NULL, 
'¿Cómo se completa correctamente esta oración? "I can''t go out because I _____ my homework yet."', 
'didn''t finish', 
'haven''t finished', 
'don''t finish', 
'am not finishing', 
'B', 4, 7, 'Present perfect'),

('INGLÉS', NULL, 'Present perfect vs. past simple', 
'Una distinción importante es entre el present perfect (que conecta pasado y presente) y el past simple (que habla de acciones completadas en un tiempo específico del pasado). La elección depende de si el tiempo es relevante o no.',
NULL, NULL, NULL, 
'¿Cuál de estas oraciones requiere present perfect?', 
'Shakespeare wrote many plays.', 
'I saw that movie last week.', 
'She has read all the Harry Potter books.', 
'They visited Paris in 2019.', 
'C', 4, 7, 'Present perfect'),

-- Preguntas sobre Arts and Media
('INGLÉS', NULL, 'Vocabulario sobre medios', 
'El mundo de las artes y los medios tiene un vocabulario específico en inglés. Conocer estos términos es esencial para hablar sobre películas, música, literatura y otras formas de arte y entretenimiento.',
NULL, NULL, NULL, 
'¿Qué palabra se refiere a la persona que dirige una película?', 
'producer', 
'director', 
'actor', 
'screenwriter', 
'B', 4, 7, 'Arts and Media'),

('INGLÉS', NULL, 'Géneros musicales', 
'Los diferentes géneros musicales tienen características distintivas y nombres específicos en inglés. Reconocer estos términos ayuda a describir preferencias musicales y entender conversaciones sobre música.',
NULL, NULL, NULL, 
'¿Cuál de estos NO es un género musical?', 
'reality show', 
'hip hop', 
'jazz', 
'classical', 
'A', 4, 7, 'Arts and Media'),

('INGLÉS', NULL, 'Formatos de medios', 
'Con los avances tecnológicos, han surgido diferentes formatos para consumir medios y arte. Algunos formatos tradicionales conviven ahora con versiones digitales modernas.',
NULL, NULL, NULL, 
'¿Qué formato permite ver programas de televisión a través de internet cuando quieras?', 
'live TV', 
'streaming', 
'radio', 
'newspaper', 
'B', 4, 7, 'Arts and Media'),

('INGLÉS', NULL, 'Expresiones sobre arte', 
'Existen muchas expresiones y frases hechas relacionadas con el arte y los medios en inglés. Algunas son metafóricas y otras describen procesos o características específicas.',
NULL, NULL, NULL, 
'Si alguien es "a rising star", significa que...', 
'está estudiando astronomía', 
'es un actor o artista que se está haciendo famoso', 
'trabaja en una estación espacial', 
'le gusta ver las estrellas por la noche', 
'B', 4, 7, 'Arts and Media'),

('INGLÉS', NULL, 'Crítica de arte', 
'Al hablar o escribir sobre arte y medios, es útil conocer adjetivos y expresiones para expresar opiniones y hacer críticas constructivas. Estos términos ayudan a describir lo que nos gusta o no de una obra artística.',
NULL, NULL, NULL, 
'¿Cuál de estos adjetivos describe mejor una película con una historia emocionante y llena de acción?', 
'boring', 
'gripping', 
'slow-paced', 
'predictable', 
'B', 4, 7, 'Arts and Media'),

-- Preguntas sobre A fictional short story
('INGLÉS', NULL, 'Elementos de un cuento', 
'Los cuentos cortos de ficción suelen contener ciertos elementos clave: personajes, escenario, conflicto, trama y resolución. Identificar estos elementos ayuda a analizar y comprender mejor las historias.',
NULL, NULL, NULL, 
'¿Cuál de estos NO es un elemento típico de un cuento corto?', 
'characters', 
'conflict', 
'advertisement', 
'setting', 
'C', 4, 7, 'A fictional short story'),

('INGLÉS', NULL, 'Tipos de narrador', 
'Los cuentos pueden ser narrados desde diferentes puntos de vista: primera persona (usando "I"), tercera persona limitada o tercera persona omnisciente. El tipo de narrador afecta cómo se cuenta la historia y qué información recibe el lector.',
NULL, NULL, NULL, 
'¿Cuál de estas frases indica que el cuento está narrado en primera persona?', 
'He walked slowly down the dark street.', 
'"I can''t believe this is happening," she thought.', 
'I remember the day everything changed.', 
'The children didn''t know what awaited them.', 
'C', 4, 7, 'A fictional short story'),

('INGLÉS', NULL, 'Géneros de ficción', 
'La ficción corta puede pertenecer a diversos géneros: realista, fantástico, de ciencia ficción, de terror, misterio, etc. Cada género tiene convenciones y elementos característicos que los diferencian.',
NULL, NULL, NULL, 
'Un cuento que incluye magia, criaturas míticas y mundos imaginarios probablemente pertenece al género...', 
'historical fiction', 
'fantasy', 
'realism', 
'biography', 
'B', 4, 7, 'A fictional short story'),

('INGLÉS', NULL, 'Desarrollo del conflicto', 
'El conflicto es un elemento esencial en los cuentos, lo que impulsa la trama y mantiene el interés del lector. Puede ser interno (dentro del personaje) o externo (entre personajes o contra fuerzas externas).',
NULL, NULL, NULL, 
'¿Cuál de estos es un ejemplo de conflicto interno en un cuento?', 
'Two friends arguing about where to go', 
'A family surviving a natural disaster', 
'A character struggling with a difficult decision', 
'A hero fighting a villain', 
'C', 4, 7, 'A fictional short story'),

('INGLÉS', NULL, 'Finales sorpresa', 
'Muchos cuentos cortos famosos tienen finales sorpresa que cambian la perspectiva del lector sobre toda la historia. Estos finales requieren una cuidadosa construcción de pistas a lo largo del relato.',
NULL, NULL, NULL, 
'¿Qué técnica usan los autores para preparar un final sorpresa?', 
'Introducir personajes nuevos en la última escena', 
'Dar todas las pistas necesarias pero de manera sutil', 
'Cambiar abruptamente de género al final', 
'Ignorar los eventos anteriores de la historia', 
'B', 4, 7, 'A fictional short story');

-- Preguntas para el tema: Modal Verbs: Should, Can, Will
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', NULL, 'Uso de "should" para consejos', 
'En inglés, usamos el verbo modal "should" para dar consejos o sugerencias. Por ejemplo: "You should drink more water" significa "Deberías beber más agua". Es importante recordar que después de "should" siempre viene el verbo en su forma base.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de completar esta oración? "If you have a headache, you ______ take a rest."', 
'should', 'can', 'will', 'must', 
'B', 4, 7, 'Modal Verbs: Should, Can, Will'),

-- Pregunta 2
('INGLÉS', NULL, 'Expresando habilidad con "can"', 
'El verbo modal "can" se utiliza para expresar habilidad o posibilidad. Por ejemplo: "She can swim very well" significa "Ella puede nadar muy bien". Observa que después de "can" el verbo principal no lleva "to".', 
NULL, NULL, NULL, 
'Selecciona la opción correcta: "My little brother ______ ride a bike yet, he''s only four years old."', 
'can', 'should', 'will', 'must not', 
'A', 4, 7, 'Modal Verbs: Should, Can, Will'),

-- Pregunta 3
('INGLÉS', NULL, 'Futuro con "will"', 
'El verbo modal "will" se usa para hablar del futuro y hacer promesas u ofrecimientos. Por ejemplo: "I will help you with your homework" significa "Te ayudaré con tu tarea". Después de "will" siempre usamos el verbo en su forma base.', 
NULL, NULL, NULL, 
'¿Cuál es la traducción correcta de: "Mañana visitaré a mi abuela"?', 
'I should visit my grandmother tomorrow', 
'I can visit my grandmother tomorrow', 
'I will visit my grandmother tomorrow', 
'I must visit my grandmother tomorrow', 
'C', 4, 7, 'Modal Verbs: Should, Can, Will'),

-- Pregunta 4
('INGLÉS', NULL, 'Diferenciando modales', 
'Cada verbo modal tiene un uso específico: "should" para consejos, "can" para habilidad o permiso, y "will" para decisiones futuras. Es importante no confundirlos al construir oraciones.', 
NULL, NULL, NULL, 
'Completa la oración correctamente: "______ you please pass me the salt?"', 
'Should', 'Can', 'Will', 'Must', 
'B', 4, 7, 'Modal Verbs: Should, Can, Will'),

-- Pregunta 5
('INGLÉS', NULL, 'Mezcla de verbos modales', 
'A veces necesitamos usar diferentes verbos modales en situaciones similares dependiendo del significado que queramos expresar. Por ejemplo: "You should study" (consejo) vs "You can study" (permiso/habilidad).', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones expresa una promesa?', 
'You should apologize to your friend', 
'I can speak three languages', 
'We will call you when we arrive', 
'You must finish your vegetables', 
'C', 4, 7, 'Modal Verbs: Should, Can, Will'),

-- Preguntas para el tema: Imperatives
('INGLÉS', NULL, 'Instrucciones con imperativos', 
'Los imperativos en inglés se usan para dar órdenes, instrucciones o hacer peticiones. Se forman con el verbo en su forma base sin "to". Por ejemplo: "Open the door" (Abre la puerta) o "Please sit down" (Por favor, siéntate).', 
NULL, NULL, NULL, 
'¿Cómo dirías en inglés: "Por favor, cierra la ventana"?', 
'Please closing the window', 
'Please close the window', 
'You should close the window', 
'Can you close the window?', 
'B', 4, 7, 'Imperatives'),

('INGLÉS', NULL, 'Forma negativa del imperativo', 
'Para hacer un imperativo negativo en inglés, usamos "don''t" antes del verbo. Por ejemplo: "Don''t run in the hallway" (No corras en el pasillo). Esta construcción es muy común en reglas y advertencias.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta del imperativo negativo para: "No comas en clase"?', 
'Not eat in class', 
'Don''t eat in class', 
'No eating in class', 
'You don''t eat in class', 
'B', 4, 7, 'Imperatives'),

('INGLÉS', NULL, 'Imperativos en instrucciones', 
'Los imperativos son muy útiles para dar instrucciones paso a paso, como en recetas de cocina o manuales. Por ejemplo: "Mix the ingredients" (Mezcla los ingredientes), "Add two eggs" (Añade dos huevos).', 
NULL, NULL, NULL, 
'Selecciona la secuencia correcta de imperativos para una receta:', 
'First, you should mix the flour. Then, add eggs', 
'First, mixing the flour. Then, adding eggs', 
'First, mix the flour. Then, add the eggs', 
'First, to mix the flour. Then, to add the eggs', 
'C', 4, 7, 'Imperatives'),

('INGLÉS', NULL, 'Imperativos para direcciones', 
'Cuando damos direcciones, usamos frecuentemente imperativos. Por ejemplo: "Turn left at the traffic light" (Gira a la izquierda en el semáforo), "Go straight for two blocks" (Sigue derecho dos cuadras).', 
NULL, NULL, NULL, 
'¿Cómo completarías estas direcciones? "______ right at the corner, then ______ straight until the park."', 
'Turning, going', 
'Turn, go', 
'To turn, to go', 
'You turn, you go', 
'B', 4, 7, 'Imperatives'),

('INGLÉS', NULL, 'Imperativos suaves', 
'Podemos hacer los imperativos más amables añadiendo "please" al principio o al final de la oración. Por ejemplo: "Please be quiet" o "Be quiet, please" ambas significan "Por favor, guarda silencio".', 
NULL, NULL, NULL, 
'¿Cuál de estas opciones es la forma más amable de pedir algo?', 
'Give me the book', 
'Please give me the book', 
'You should give me the book', 
'Can you give me the book?', 
'B', 4, 7, 'Imperatives'),

-- Preguntas para el tema: Adverbs of manner and degree
('INGLÉS', NULL, 'Adverbios de modo', 
'Los adverbios de modo describen cómo se realiza una acción y generalmente se forman añadiendo "-ly" al adjetivo. Por ejemplo: "quick" (rápido) → "quickly" (rápidamente). Algunos son irregulares como "good" → "well".', 
NULL, NULL, NULL, 
'¿Cuál es el adverbio de modo correcto para completar: "She sings ______"?', 
'beautiful', 'beautifully', 'beautifuly', 'beauty', 
'B', 4, 7, 'Adverbs of manner and degree'),

('INGLÉS', NULL, 'Adverbios irregulares', 
'Algunos adverbios no siguen la regla normal de añadir "-ly". Por ejemplo: "fast" (rápido) sigue siendo "fast" como adverbio, "hard" (duro) sigue siendo "hard", y "good" (bueno) se convierte en "well" (bien).', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de: "He works very ______"?', 
'hardly', 'hard', 'good', 'goodly', 
'B', 4, 7, 'Adverbs of manner and degree'),

('INGLÉS', NULL, 'Adverbios de grado', 
'Los adverbios de grado modifican adjetivos u otros adverbios para indicar intensidad. Algunos comunes son: "very" (muy), "quite" (bastante), "too" (demasiado), "enough" (suficientemente).', 
NULL, NULL, NULL, 
'Completa la oración: "This coffee is ______ hot to drink right now."', 
'very', 'quite', 'too', 'enough', 
'C', 4, 7, 'Adverbs of manner and degree'),

('INGLÉS', NULL, 'Posición de los adverbios', 
'Los adverbios de modo generalmente van después del verbo principal o del objeto. Por ejemplo: "He drives carefully" (Él conduce cuidadosamente). Los adverbios de grado van antes del adjetivo o adverbio que modifican.', 
NULL, NULL, NULL, 
'¿Cuál es el orden correcto en: "She is a ______ singer"?', 
'very good', 'good very', 'very well', 'well very', 
'A', 4, 7, 'Adverbs of manner and degree'),

('INGLÉS', NULL, 'Formación de adverbios', 
'Para formar adverbios regulares, normalmente añadimos "-ly" al adjetivo. Si el adjetivo termina en "-y", cambia a "-i" antes de añadir "-ly" (happy → happily). Si termina en "-le", se cambia a "-ly" (simple → simply).', 
NULL, NULL, NULL, 
'¿Cuál es el adverbio correcto de "angry"?', 
'angryly', 'angrily', 'angry', 'angredly', 
'B', 4, 7, 'Adverbs of manner and degree'),

-- Preguntas para el tema: Possessive and reflexive pronouns
('INGLÉS', NULL, 'Pronombres posesivos', 
'Los pronombres posesivos muestran pertenencia sin necesidad de un sustantivo. Los principales son: mine (mío), yours (tuyo), his (suyo de él), hers (suyo de ella), its (suyo de ello), ours (nuestro), yours (vuestro), theirs (suyo de ellos).', 
NULL, NULL, NULL, 
'Completa la oración: "This book isn''t yours, it''s ______".', 
'my', 'me', 'mine', 'I', 
'C', 4, 7, 'Possessive and reflexive pronouns'),

('INGLÉS', NULL, 'Pronombres reflexivos', 
'Los pronombres reflexivos se usan cuando el sujeto y el objeto son la misma persona. Se forman con "-self" (singular) o "-selves" (plural): myself, yourself, himself, herself, itself, ourselves, yourselves, themselves.', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta para: "She hurt ______ while playing soccer."?', 
'she', 'her', 'hers', 'herself', 
'D', 4, 7, 'Possessive and reflexive pronouns'),

('INGLÉS', NULL, 'Diferenciando posesivos', 
'Es importante no confundir los adjetivos posesivos (my, your, his, her, its, our, their) con los pronombres posesivos (mine, yours, his, hers, its, ours, theirs). Los primeros van antes de un sustantivo, los segundos reemplazan al sustantivo.', 
NULL, NULL, NULL, 
'Selecciona la opción correcta: "Is this ______ notebook or ______?"', 
'your, mine', 'yours, my', 'your, my', 'yours, mine', 
'A', 4, 7, 'Possessive and reflexive pronouns'),

('INGLÉS', NULL, 'Uso de reflexivos', 
'Los pronombres reflexivos también se usan para énfasis. Por ejemplo: "I made this cake myself" (Yo mismo hice este pastel). En este caso, el pronombre reflexivo enfatiza que fue la persona quien lo hizo, sin ayuda.', 
NULL, NULL, NULL, 
'¿Cuál es la traducción correcta de: "Ellos mismos construyeron su casa"?', 
'They built their house themselves', 
'Themselves built their house', 
'They built themselves their house', 
'Their house built themselves', 
'A', 4, 7, 'Possessive and reflexive pronouns'),

('INGLÉS', NULL, 'Casos especiales', 
'Algunos verbos en inglés suelen llevar pronombres reflexivos, como "enjoy oneself" (divertirse), "hurt oneself" (lastimarse), "teach oneself" (aprender por sí mismo). Por ejemplo: "We enjoyed ourselves at the party".', 
NULL, NULL, NULL, 
'Completa la oración: "The children ______ at the amusement park."', 
'enjoyed themselves', 'enjoyed them', 'enjoyed theirselves', 'enjoyed', 
'A', 4, 7, 'Possessive and reflexive pronouns'),

-- Preguntas para el tema: First conditional
('INGLÉS', NULL, 'Estructura del primer condicional', 
'El primer condicional se usa para situaciones reales o posibles en el futuro. Su estructura es: "If + presente simple, will + verbo base". Por ejemplo: "If it rains, we will stay home" (Si llueve, nos quedaremos en casa).', 
NULL, NULL, NULL, 
'Completa el primer condicional: "If you study hard, you ______ the exam."', 
'pass', 'will pass', 'would pass', 'passed', 
'B', 4, 7, 'First conditional'),

('INGLÉS', NULL, 'Variaciones del primer condicional', 
'En el primer condicional, podemos usar otros modales en lugar de "will", como "can", "may" o "must", dependiendo del significado. Por ejemplo: "If you finish your homework, you can go out".', 
NULL, NULL, NULL, 
'¿Cuál es la opción correcta? "If you feel sick, you ______ see a doctor."', 
'will', 'should', 'must', 'All are correct', 
'D', 4, 7, 'First conditional'),

('INGLÉS', NULL, 'Orden de las cláusulas', 
'En el primer condicional, podemos cambiar el orden de las cláusulas sin cambiar el significado. Cuando la cláusula "if" va primero, usamos coma. Cuando va después, no usamos coma. Ejemplo: "We''ll go to the beach if the weather is nice".', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones es correcta?', 
'If you will call me, I will answer', 
'I will answer if you will call me', 
'If you call me, I will answer', 
'I answer if you will call me', 
'C', 4, 7, 'First conditional'),

('INGLÉS', NULL, 'Primer condicional negativo', 
'Podemos hacer oraciones negativas en el primer condicional en cualquiera de las dos partes. Por ejemplo: "If you don''t hurry, you''ll miss the bus" o "If you eat too much, you won''t feel well".', 
NULL, NULL, NULL, 
'Completa la oración: "If she ______ her homework now, she ______ free time later."', 
'doesn''t do, won''t have', 
'won''t do, doesn''t have', 
'doesn''t do, don''t have', 
'not do, not have', 
'A', 4, 7, 'First conditional'),

('INGLÉS', NULL, 'Usos del primer condicional', 
'El primer condicional no solo se usa para situaciones futuras, sino también para ofrecimientos, advertencias y amenazas. Por ejemplo: "If you need help, I''ll be there" (oferta), "If you touch that, you''ll burn yourself" (advertencia).', 
NULL, NULL, NULL, 
'¿Qué tipo de primer condicional es: "If you don''t apologize, I won''t talk to you again"?', 
'Oferta', 'Advertencia', 'Amenaza', 'Posibilidad futura', 
'C', 4, 7, 'First conditional'),

-- Preguntas para el tema: Health and medicine
('INGLÉS', NULL, 'Vocabulario de salud', 
'En inglés hay muchas palabras relacionadas con la salud y la medicina que son importantes conocer: "headache" (dolor de cabeza), "fever" (fiebre), "cough" (tos), "sore throat" (dolor de garganta), "prescription" (receta médica).', 
NULL, NULL, NULL, 
'¿Cómo se dice "dolor de estómago" en inglés?', 
'stomachache', 'headache', 'toothache', 'backache', 
'A', 4, 7, 'Health and medicine'),

('INGLÉS', NULL, 'Consejos de salud', 
'Cuando damos consejos de salud en inglés, usamos expresiones como: "You should..." (Deberías...), "You ought to..." (Deberías...), "It''s a good idea to..." (Es buena idea...), "Make sure to..." (Asegúrate de...).', 
NULL, NULL, NULL, 
'¿Cuál es el consejo más apropiado para alguien con gripe?', 
'You should eat ice cream', 
'You should get plenty of rest', 
'You should play outside in the cold', 
'You should drink soda', 
'B', 4, 7, 'Health and medicine'),

('INGLÉS', NULL, 'Síntomas comunes', 
'Para describir síntomas de enfermedad en inglés, usamos estructuras como: "I have a..." (Tengo un...), "I feel..." (Me siento...), "My ... hurts" (Me duele...). Por ejemplo: "I have a cough" (Tengo tos).', 
NULL, NULL, NULL, 
'¿Cómo dirías "Me duele la garganta"?', 
'I have a sore throat', 
'My throat hurts', 
'I feel throat pain', 
'Both A and B are correct', 
'D', 4, 7, 'Health and medicine'),

('INGLÉS', NULL, 'Visita al médico', 
'Al ir al médico en un país de habla inglesa, es útil saber frases como: "What''s wrong with me?" (¿Qué tengo?), "How long will it take to recover?" (¿Cuánto tiempo tomará recuperarme?), "Should I take any medicine?" (¿Debo tomar algún medicamento?).', 
NULL, NULL, NULL, 
'¿Qué pregunta haría un médico?', 
'Where does it hurt?', 
'When is your birthday?', 
'What''s your favorite color?', 
'Where do you work?', 
'A', 4, 7, 'Health and medicine'),

('INGLÉS', NULL, 'Hábitos saludables', 
'Para hablar de hábitos saludables en inglés, usamos vocabulario como: "balanced diet" (dieta balanceada), "exercise regularly" (hacer ejercicio regularmente), "get enough sleep" (dormir suficiente), "stay hydrated" (mantenerse hidratado).', 
NULL, NULL, NULL, 
'¿Cuál NO es un hábito saludable?', 
'Eat junk food every day', 
'Drink plenty of water', 
'Exercise three times a week', 
'Sleep 8 hours a night', 
'A', 4, 7, 'Health and medicine'),

-- Preguntas para el tema: A poster
('INGLÉS', NULL, 'Elementos de un póster', 
'Un póster efectivo en inglés debe incluir: un título llamativo, información clara y concisa, imágenes relevantes, detalles de contacto si es necesario, y un llamado a la acción. El lenguaje debe ser directo y persuasivo.', 
NULL, NULL, NULL, 
'¿Cuál sería un buen título para un póster sobre reciclaje?', 
'Recycle Today for a Better Tomorrow', 
'The History of Recycling', 
'My Weekend Plans', 
'What I Did Last Summer', 
'A', 4, 7, 'A poster'),

('INGLÉS', NULL, 'Lenguaje en pósters', 
'Los pósters usan frecuentemente imperativos y frases cortas para comunicar su mensaje. Por ejemplo: "Save water!", "Join us this Saturday!", "Don''t litter!". También usan preguntas retóricas como "Want to help the environment?"', 
NULL, NULL, NULL, 
'¿Cuál de estas frases sería apropiada para un póster?', 
'Please turn off lights when not in use', 
'Yesterday I went to the park', 
'My dog has three puppies', 
'I like pizza with pineapple', 
'A', 4, 7, 'A poster'),

('INGLÉS', NULL, 'Pósters informativos', 
'Los pósters informativos deben presentar datos de manera clara y visual. Pueden incluir viñetas, números o iconos. Por ejemplo: "3 Simple Steps to Recycle: 1. Separate your waste 2. Clean containers 3. Use recycling bins".', 
NULL, NULL, NULL, 
'¿Qué elemento NO es esencial en un póster escolar sobre seguridad?', 
'Clear instructions', 
'Bright colors', 
'Your personal diary entry', 
'Relevant images', 
'C', 4, 7, 'A poster'),

('INGLÉS', NULL, 'Diseño de póster', 
'Al diseñar un póster, es importante considerar: tamaño de letra legible, contraste de colores, organización lógica de la información, espacio en blanco suficiente y relevancia de las imágenes al texto.', 
NULL, NULL, NULL, 
'¿Cuál es un error común en el diseño de pósters?', 
'Usar demasiado texto en letra pequeña', 
'Organizar la información claramente', 
'Usar imágenes relevantes', 
'Tener un título llamativo', 
'A', 4, 7, 'A poster'),

('INGLÉS', NULL, 'Propósito de un póster', 
'Los pósters pueden tener diferentes propósitos: informar, persuadir, anunciar un evento, educar o promover una causa. El lenguaje y diseño deben adaptarse al propósito específico del póster.', 
NULL, NULL, NULL, 
'¿Cuál sería el propósito principal de un póster que dice "School Play - Friday at 6pm - Auditorium"?', 
'Informar sobre un evento', 
'Enseñar gramática inglesa', 
'Dar consejos de salud', 
'Hablar sobre deportes', 
'A', 4, 7, 'A poster');

-- Preguntas para el tema: Wh-questions and Yes/No questions
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', NULL, 'Formando preguntas básicas', 
'Para comunicarnos efectivamente en inglés, es esencial saber formular preguntas correctamente. Las preguntas con palabras WH (what, where, when, etc.) y las preguntas de Sí/No son fundamentales en conversaciones diarias.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes es una pregunta WH correctamente formulada?', 
'What time is it?', 
'Is what time it?', 
'Time what is it?', 
'It is what time?', 
'A', 4, 7, 'Wh-questions and Yes/No questions'),

-- Pregunta 2
('INGLÉS', NULL, 'Identificando preguntas de Sí/No', 
'Las preguntas de Sí/No en inglés siempre comienzan con un verbo auxiliar (do, does, is, are, etc.) y esperan una respuesta afirmativa o negativa. Identifica cuál de las siguientes opciones cumple con esta estructura.', 
NULL, NULL, NULL, 
'¿Cuál de estas es una pregunta de Sí/No correcta?', 
'You like pizza?', 
'Do you like pizza?', 
'What you like pizza?', 
'Like you pizza?', 
'B', 4, 7, 'Wh-questions and Yes/No questions'),

-- Pregunta 3
('INGLÉS', NULL, 'Completando preguntas WH', 
'Las preguntas WH nos permiten obtener información específica. Cada palabra WH tiene un propósito diferente: who (personas), what (cosas), where (lugares), when (tiempo), why (razones), how (manera).', 
NULL, NULL, NULL, 
'Completa la pregunta: "______ is your birthday?"', 
'Who', 
'What', 
'When', 
'How', 
'C', 4, 7, 'Wh-questions and Yes/No questions'),

-- Pregunta 4
('INGLÉS', NULL, 'Diferenciando tipos de preguntas', 
'Es importante distinguir entre preguntas WH y preguntas de Sí/No, ya que su estructura gramatical y propósito son diferentes. Observa las siguientes opciones cuidadosamente.', 
NULL, NULL, NULL, 
'¿Cuál de estas preguntas NO es una pregunta WH?', 
'Where do you live?', 
'Are you coming to the party?', 
'Why did you leave early?', 
'How old are you?', 
'B', 4, 7, 'Wh-questions and Yes/No questions'),

-- Pregunta 5
('INGLÉS', NULL, 'Construyendo preguntas adecuadas', 
'Para formular preguntas correctamente en inglés, debemos seguir el orden adecuado de las palabras. El orden típico es: Palabra WH (si aplica) + verbo auxiliar + sujeto + verbo principal + complemento.', 
NULL, NULL, NULL, 
'Selecciona la pregunta que está gramaticalmente correcta:', 
'You are going where?', 
'Where you are going?', 
'Where are you going?', 
'Are you going where?', 
'C', 4, 7, 'Wh-questions and Yes/No questions'),

-- Preguntas para el tema: Comparative and Superlative adjectives
('INGLÉS', NULL, 'Comparando objetos', 
'Los adjetivos comparativos se usan para comparar dos cosas, mientras que los superlativos expresan el grado máximo de una cualidad entre tres o más elementos. Recuerda las reglas para formar comparativos y superlativos según la longitud del adjetivo.', 
NULL, NULL, NULL, 
'Completa la oración: "An elephant is ______ than a mouse."', 
'big', 
'bigger', 
'biggest', 
'more big', 
'B', 4, 7, 'Comparative and Superlative adjectives'),

('INGLÉS', NULL, 'Identificando superlativos', 
'Los adjetivos superlativos suelen ir precedidos por el artículo "the" y se usan para destacar un elemento entre un grupo de tres o más. Algunos adjetivos tienen formas irregulares que debemos memorizar.', 
NULL, NULL, NULL, 
'¿Cuál es la forma superlativa correcta del adjetivo "good"?', 
'gooder', 
'more good', 
'the best', 
'the goodest', 
'C', 4, 7, 'Comparative and Superlative adjectives'),

('INGLÉS', NULL, 'Formando comparativos', 
'Para adjetivos de una sílaba, generalmente agregamos -er para el comparativo y -est para el superlativo. Para adjetivos de tres o más sílabas, usamos "more" y "most". Los adjetivos de dos sílabas pueden seguir cualquiera de las dos reglas.', 
NULL, NULL, NULL, 
'Completa la oración: "This book is ______ than that one." (interesting)', 
'interester', 
'more interesting', 
'interestingest', 
'most interesting', 
'B', 4, 7, 'Comparative and Superlative adjectives'),

('INGLÉS', NULL, 'Comparaciones con adjetivos cortos', 
'Los adjetivos cortos (de una sílaba) que terminan en consonante-vocal-consonante duplican la última consonante antes de agregar -er o -est. Por ejemplo: big → bigger → biggest.', 
NULL, NULL, NULL, 
'¿Cuál es la forma comparativa correcta de "thin"?', 
'thiner', 
'thinner', 
'more thin', 
'thinest', 
'B', 4, 7, 'Comparative and Superlative adjectives'),

('INGLÉS', NULL, 'Usando superlativos en contexto', 
'Los superlativos se usan para describir el extremo de una cualidad dentro de un grupo. Siempre llevan el artículo "the" y el contexto debe implicar que hay tres o más elementos en comparación.', 
NULL, NULL, NULL, 
'Completa la oración: "Mount Everest is ______ mountain in the world."', 
'the higher', 
'the highest', 
'the most high', 
'the more high', 
'B', 4, 7, 'Comparative and Superlative adjectives'),

-- Preguntas para el tema: Adverbs of sequence and comparisons
('INGLÉS', NULL, 'Ordenando eventos', 
'Los adverbios de secuencia como first, then, next, after that, finally nos ayudan a describir el orden de los eventos en una narración o instrucción. Son esenciales para dar claridad a procesos y secuencias temporales.', 
NULL, NULL, NULL, 
'¿Cuál adverbio de secuencia usarías para comenzar una serie de instrucciones?', 
'Then', 
'Next', 
'First', 
'Finally', 
'C', 4, 7, 'Adverbs of sequence and comparisons'),

('INGLÉS', NULL, 'Comparando con adverbios', 
'Algunos adverbios pueden usarse para hacer comparaciones, como "more quickly" o "less often". Estos siguen reglas similares a los adjetivos comparativos, pero modifican verbos en lugar de sustantivos.', 
NULL, NULL, NULL, 
'Completa la oración: "She runs ______ than her brother."', 
'fastly', 
'more fast', 
'faster', 
'fastest', 
'C', 4, 7, 'Adverbs of sequence and comparisons'),

('INGLÉS', NULL, 'Secuencia lógica', 
'Al describir un proceso, es importante usar los adverbios de secuencia en el orden correcto para que las instrucciones sean claras y fáciles de seguir. Primero se menciona el paso inicial, luego los intermedios y finalmente el último paso.', 
NULL, NULL, NULL, 
'¿Qué adverbio de secuencia usarías justo antes del paso final?', 
'First', 
'Then', 
'Next', 
'Finally', 
'D', 4, 7, 'Adverbs of sequence and comparisons'),

('INGLÉS', NULL, 'Forma comparativa de adverbios', 
'Muchos adverbios forman su comparativo añadiendo "more" antes del adverbio (more slowly, more carefully). Sin embargo, algunos adverbios cortos (como fast, hard, early) añaden -er, igual que los adjetivos.', 
NULL, NULL, NULL, 
'¿Cuál es la forma comparativa correcta de "early"?', 
'earlier', 
'more early', 
'earlyer', 
'most early', 
'A', 4, 7, 'Adverbs of sequence and comparisons'),

('INGLÉS', NULL, 'Completando una secuencia', 
'Una secuencia bien estructurada ayuda al lector u oyente a comprender el orden lógico de los eventos. Los adverbios de secuencia actúan como señales que guían a través del proceso descrito.', 
NULL, NULL, NULL, 
'Completa la secuencia: "______, mix the ingredients. Then, pour the mixture into a pan."', 
'Finally', 
'Next', 
'First', 
'After that', 
'C', 4, 7, 'Adverbs of sequence and comparisons'),

-- Preguntas para el tema: Present continuous
('INGLÉS', NULL, 'Identificando el presente continuo', 
'El presente continuo se usa para acciones que están ocurriendo en el momento del habla. Se forma con el verbo to be (am, is, are) + el verbo principal con terminación -ing. Es importante reconocer su estructura correcta.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones está en presente continuo?', 
'I eat breakfast every day.', 
'I am eating breakfast now.', 
'I ate breakfast an hour ago.', 
'I will eat breakfast later.', 
'B', 4, 7, 'Present continuous'),

('INGLÉS', NULL, 'Formando el presente continuo', 
'Para conjugar correctamente el presente continuo, debemos usar la forma adecuada del verbo "to be" según el sujeto (am para I, is para he/she/it, are para you/we/they) y añadir -ing al verbo principal.', 
NULL, NULL, NULL, 
'Completa la oración: "They ______ TV at the moment."', 
'watch', 
'are watching', 
'watches', 
'is watching', 
'B', 4, 7, 'Present continuous'),

('INGLÉS', NULL, 'Usos del presente continuo', 
'Además de acciones en progreso, el presente continuo puede expresar planes futuros ya decididos (I''m meeting friends tonight) o situaciones temporales (He''s staying with us this week).', 
NULL, NULL, NULL, 
'¿Qué expresa la oración: "She''s studying hard this week"?', 
'Una acción habitual', 
'Una acción en progreso ahora mismo', 
'Una situación temporal', 
'Un hecho permanente', 
'C', 4, 7, 'Present continuous'),

('INGLÉS', NULL, 'Verbos no usados en continuo', 
'Algunos verbos como "know", "like", "want" generalmente no se usan en tiempos continuos porque describen estados más que acciones. Para estos verbos, usamos el presente simple incluso para situaciones actuales.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones es INCORRECTA?', 
'I am knowing the answer.', 
'I am reading a book.', 
'They are playing outside.', 
'She is cooking dinner.', 
'A', 4, 7, 'Present continuous'),

('INGLÉS', NULL, 'Negación en presente continuo', 
'Para formar negaciones en presente continuo, añadimos "not" después del verbo "to be". La forma contraída es común en el habla cotidiana (I''m not, he isn''t, they aren''t).', 
NULL, NULL, NULL, 
'¿Cuál es la forma negativa correcta de: "We are waiting for the bus."?', 
'We not are waiting for the bus.', 
'We are not waiting for the bus.', 
'We don''t waiting for the bus.', 
'We aren''t wait for the bus.', 
'B', 4, 7, 'Present continuous'),

-- Preguntas para el tema: Indefinite and generic pronouns
('INGLÉS', NULL, 'Identificando pronombres indefinidos', 
'Los pronombres indefinidos como someone, anyone, no one, something, anything, nothing se usan para referirse a personas o cosas de manera no específica. Su uso depende del tipo de oración (afirmativa, negativa o interrogativa).', 
NULL, NULL, NULL, 
'¿Cuál pronombre indefinido completaría correctamente esta oración: "There is ______ at the door."?', 
'anyone', 
'no one', 
'someone', 
'anything', 
'C', 4, 7, 'Indefinite and generic pronouns'),

('INGLÉS', NULL, 'Pronombres para cosas', 
'Los pronombres indefinidos something, anything, nothing se usan para cosas, mientras que someone, anyone, no one se usan para personas. Es importante elegir el apropiado según lo que queramos referir.', 
NULL, NULL, NULL, 
'Completa la oración: "I''m hungry, but there is ______ to eat in the fridge."', 
'nothing', 
'no one', 
'anyone', 
'something', 
'A', 4, 7, 'Indefinite and generic pronouns'),

('INGLÉS', NULL, 'Uso en preguntas', 
'En preguntas, generalmente usamos "any-" (anyone, anything), aunque podemos usar "some-" (someone, something) cuando ofrecemos algo o pedimos algo que esperamos sea afirmativo.', 
NULL, NULL, NULL, 
'¿Cuál pronombre usarías en esta pregunta: "Would you like ______ to drink?"', 
'anything', 
'nothing', 
'something', 
'anyone', 
'C', 4, 7, 'Indefinite and generic pronouns'),

('INGLÉS', NULL, 'Pronombres genéricos', 
'Los pronombres genéricos como "one", "you", "they" se usan para hablar de personas en general, no de alguien específico. Por ejemplo: "One should always be polite" o "They say it''s going to rain tomorrow".', 
NULL, NULL, NULL, 
'¿Cuál pronombre genérico completa mejor esta oración: "______ can learn to swim at any age."?', 
'It', 
'One', 
'She', 
'Anything', 
'B', 4, 7, 'Indefinite and generic pronouns'),

('INGLÉS', NULL, 'Pronombres en oraciones negativas', 
'En oraciones negativas, usamos los pronombres con "no-" (no one, nothing) o "any-" con la negación (not anyone, not anything). La elección puede depender del énfasis que queramos dar.', 
NULL, NULL, NULL, 
'¿Cuál es la versión correcta de: "There isn''t anyone in the room." usando "no one"?', 
'There is no one in the room.', 
'There no one is in the room.', 
'No one there is in the room.', 
'No one isn''t in the room.', 
'A', 4, 7, 'Indefinite and generic pronouns'),

-- Preguntas para el tema: Technology: Hardware, apps, online stores and services
('INGLÉS', NULL, 'Componentes de hardware', 
'El hardware se refiere a las partes físicas de una computadora o dispositivo electrónico. Incluye componentes como el monitor, teclado, mouse, CPU, impresora, etc. Conocer estos términos es esencial en el mundo digital actual.', 
NULL, NULL, NULL, 
'¿Cuál de estos es un dispositivo de entrada (input device)?', 
'Monitor', 
'Impresora', 
'Teclado', 
'Altavoces', 
'C', 4, 7, 'Technology: Hardware, apps, online stores and services'),

('INGLÉS', NULL, 'Aplicaciones móviles', 
'Las apps (aplicaciones) son programas diseñados para dispositivos móviles que nos permiten realizar diversas tareas: comunicarnos, jugar, aprender, etc. Algunas son gratuitas, otras requieren pago o suscripción.', 
NULL, NULL, NULL, 
'¿Qué tipo de app usarías principalmente para enviar mensajes cortos a tus amigos?', 
'Un navegador web', 
'Una app de mensajería', 
'Una app de edición de fotos', 
'Una app de mapas', 
'B', 4, 7, 'Technology: Hardware, apps, online stores and services'),

('INGLÉS', NULL, 'Tiendas en línea', 
'Las tiendas en línea como Amazon, eBay o Mercado Libre permiten comprar productos a través de internet. Estas plataformas ofrecen variedad de artículos, reseñas de usuarios y diferentes métodos de pago y envío.', 
NULL, NULL, NULL, 
'¿Qué es lo más importante al comprar en una tienda en línea desconocida?', 
'Comprar inmediatamente si el precio es bajo', 
'Verificar las reseñas y reputación del vendedor', 
'No leer los términos de envío', 
'Ignorar los métodos de pago disponibles', 
'B', 4, 7, 'Technology: Hardware, apps, online stores and services'),

('INGLÉS', NULL, 'Servicios en la nube', 
'Los servicios en la nube como Google Drive, Dropbox o iCloud permiten almacenar archivos en internet en lugar de en el disco duro de la computadora. Esto facilita el acceso desde cualquier dispositivo con conexión a internet.', 
NULL, NULL, NULL, 
'¿Cuál es la principal ventaja de usar servicios de almacenamiento en la nube?', 
'Acceder a tus archivos desde cualquier lugar', 
'No necesitar nunca conexión a internet', 
'Evitar que otros vean tus archivos', 
'No tener que recordar contraseñas', 
'A', 4, 7, 'Technology: Hardware, apps, online stores and services'),

('INGLÉS', NULL, 'Dispositivos portátiles', 
'Los dispositivos portátiles como smartphones, tablets y laptops nos permiten llevar tecnología a todas partes. Cada uno tiene características diferentes que los hacen más adecuados para ciertas tareas.', 
NULL, NULL, NULL, 
'¿Cuál dispositivo sería más adecuado para escribir un informe largo?', 
'Smartphone', 
'Tablet', 
'Laptop', 
'Smartwatch', 
'C', 4, 7, 'Technology: Hardware, apps, online stores and services'),

-- Preguntas para el tema: Technology: Shopping
('INGLÉS', NULL, 'Compras en línea seguras', 
'Al comprar en internet, es importante tomar precauciones como verificar que el sitio web es seguro (https://), no compartir información personal innecesaria y usar métodos de pago protegidos.', 
NULL, NULL, NULL, 
'¿Qué indica que una página web es segura para compras en línea?', 
'Que tenga muchos colores', 
'Que la URL comience con http://', 
'Que la URL comience con https://', 
'Que no pida contraseña', 
'C', 4, 7, 'Technology: Shopping'),

('INGLÉS', NULL, 'Términos de compras digitales', 
'Al comprar en línea encontramos términos como "shopping cart" (carrito de compras), "checkout" (pagar), "wishlist" (lista de deseos), "tracking" (seguimiento de envío). Conocer este vocabulario facilita la experiencia de compra.', 
NULL, NULL, NULL, 
'¿Qué haces cuando "proceed to checkout" en una tienda en línea?', 
'Agregas más productos al carrito', 
'Comienzas el proceso de pago', 
'Cancelas tu compra', 
'Ves sugerencias de productos', 
'B', 4, 7, 'Technology: Shopping'),

('INGLÉS', NULL, 'Ofertas y descuentos', 
'Las tiendas en línea frecuentemente ofrecen descuentos, cupones (coupons) y ofertas especiales. Es importante leer los términos para entender si hay gastos de envío, fechas límite o restricciones.', 
NULL, NULL, NULL, 
'¿Qué significa "free shipping" en una tienda en línea?', 
'Que el producto es gratuito', 
'Que no hay costo por el envío', 
'Que el producto llegará inmediatamente', 
'Que puedes devolverlo sin costo', 
'B', 4, 7, 'Technology: Shopping'),

('INGLÉS', NULL, 'Reseñas de productos', 
'Las reseñas (reviews) de otros compradores pueden ser muy útiles para evaluar la calidad de un producto antes de comprarlo. Sin embargo, es importante considerar varias opiniones y no basarse en una sola.', 
NULL, NULL, NULL, 
'¿Qué es lo más útil al leer reseñas de productos en línea?', 
'Solo leer las reseñas de 5 estrellas', 
'Leer varias reseñas positivas y negativas', 
'Ignorar las reseñas con detalles específicos', 
'No considerar la fecha de las reseñas', 
'B', 4, 7, 'Technology: Shopping'),

('INGLÉS', NULL, 'Devoluciones y reembolsos', 
'Las políticas de devolución (return policy) varían entre tiendas. Algunas permiten devoluciones gratuitas, otras cobran por ello o solo ofrecen crédito para futuras compras. Siempre es bueno conocer estas políticas antes de comprar.', 
NULL, NULL, NULL, 
'¿Qué significa "money-back guarantee"?', 
'Que puedes devolver el producto por cualquier razón y obtener reembolso', 
'Que el producto nunca se dañará', 
'Que recibirás dinero extra con tu compra', 
'Que la tienda te pagará por comprar allí', 
'A', 4, 7, 'Technology: Shopping'),

-- Preguntas para el tema: An Article
('INGLÉS', NULL, 'Uso de artículos definidos', 
'El artículo definido "the" se usa antes de sustantivos cuando nos referimos a algo específico que tanto el hablante como el oyente conocen. También se usa con cosas únicas (the sun, the moon) y con superlativos.', 
NULL, NULL, NULL, 
'Completa la oración: "I saw ______ movie last night. ______ movie was very exciting."', 
'a, A', 
'a, The', 
'the, A', 
'the, The', 
'B', 4, 7, 'An Article'),

('INGLÉS', NULL, 'Artículos indefinidos', 
'Los artículos indefinidos "a" y "an" se usan con sustantivos singulares contables cuando se mencionan por primera vez o no son específicos. Usamos "a" antes de sonidos consonantes y "an" antes de sonidos vocálicos.', 
NULL, NULL, NULL, 
'¿Cuál opción completa correctamente la oración: "She is ______ honest person."?', 
'a', 
'an', 
'the', 
'(sin artículo)', 
'B', 4, 7, 'An Article'),

('INGLÉS', NULL, 'Omisión de artículos', 
'No usamos artículos con sustantivos en plural o incontables cuando hablamos en general, con nombres propios (excepto algunos casos como "the United States"), o con comidas, lenguajes y materias académicas en general.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones NO se necesita artículo?', 
'I love ______ music.', 
'She plays ______ piano beautifully.', 
'We had ______ lunch at noon.', 
'He is ______ best student in class.', 
'C', 4, 7, 'An Article'),

('INGLÉS', NULL, 'Artículos con sustantivos únicos', 
'Usamos "the" con cosas que consideramos únicas en nuestro entorno, como "the sun", "the moon", "the internet", "the environment". Estos sustantivos generalmente no llevan artículo en otros idiomas, por lo que es un error común omitirlos en inglés.', 
NULL, NULL, NULL, 
'Completa la oración: "______ Earth revolves around ______ Sun."', 
'The, the', 
'An, a', 
'(sin artículo), (sin artículo)', 
'A, the', 
'A', 4, 7, 'An Article'),

('INGLÉS', NULL, 'Elección entre a/an', 
'La elección entre "a" y "an" depende del sonido que sigue al artículo, no necesariamente de la letra escrita. Por ejemplo, decimos "a university" (sonido /j/) pero "an hour" (la h es muda).', 
NULL, NULL, NULL, 
'¿Cuál opción completa correctamente la oración: "It was ______ unique experience."?', 
'a', 
'an', 
'the', 
'(sin artículo)', 
'A', 4, 7, 'An Article');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas sobre Adjectives with "too" and comparative clause "be like"
('INGLÉS', NULL, 'Adjetivos con "too"', 'En inglés, usamos "too" con adjetivos para expresar exceso o algo que es más de lo necesario. Por ejemplo: "This bag is too heavy" significa que la bolsa es más pesada de lo que debería ser. También podemos usar la estructura "be like" para hacer comparaciones.', NULL, NULL, NULL, '¿Cuál es la forma correcta de completar la oración: "This coffee is _____ hot to drink right now"?', 'too', 'very', 'much', 'so', 'A', 4, 7, 'Adjectives with "too" and comparative clause "be like"'),
('INGLÉS', NULL, 'Comparaciones con "be like"', 'Cuando queremos describir cómo es algo o alguien, podemos usar la estructura "be like". Por ejemplo: "What is your teacher like?" significa "¿Cómo es tu profesor?" y esperamos una descripción de su personalidad o apariencia.', NULL, NULL, NULL, '¿Cuál es la pregunta correcta para obtener esta respuesta: "She is very kind and patient"?', 'What does she like?', 'What is she like?', 'How does she?', 'What she likes?', 'B', 4, 7, 'Adjectives with "too" and comparative clause "be like"'),
('INGLÉS', NULL, 'Uso de "too" con adjetivos', 'El uso de "too" antes de un adjetivo indica que hay un problema porque algo es excesivo. Por ejemplo: "It''s too cold to swim" significa que la temperatura es tan baja que no es posible nadar.', NULL, NULL, NULL, 'Selecciona la oración correcta:', 'The music is too loud to study.', 'The music is very loud to study.', 'The music is much loud to study.', 'The music is so loud to study.', 'A', 4, 7, 'Adjectives with "too" and comparative clause "be like"'),
('INGLÉS', NULL, 'Descripciones con "be like"', 'La estructura "be like" es muy útil para pedir y dar descripciones sobre personas, lugares o cosas. Es diferente de "like" como verbo (gustar).', NULL, NULL, NULL, '¿Cómo se pregunta correctamente por la descripción de un lugar nuevo?', 'What does the new park like?', 'What is the new park like?', 'How is the new park?', 'What the new park is like?', 'B', 4, 7, 'Adjectives with "too" and comparative clause "be like"'),
('INGLÉS', NULL, 'Corrigiendo oraciones con "too"', 'A veces necesitamos identificar errores en el uso de "too" con adjetivos. Recuerda que "too" expresa un problema o exceso, mientras que "very" simplemente intensifica.', NULL, NULL, NULL, '¿Cuál de estas oraciones está incorrecta?', 'This box is too heavy to carry.', 'The water is too cold to swim.', 'The movie was too interesting.', 'The soup is too hot to eat.', 'C', 4, 7, 'Adjectives with "too" and comparative clause "be like"'),

-- Preguntas sobre Modal verbs
('INGLÉS', NULL, 'Verbos modales básicos', 'Los verbos modales como can, could, may, might, must, should, etc., expresan habilidad, posibilidad, permiso, obligación o consejo. Cambian el significado del verbo principal en la oración.', NULL, NULL, NULL, '¿Cuál verbo modal completa correctamente la oración: "You _____ wash your hands before eating"?', 'can', 'should', 'might', 'would', 'B', 4, 7, 'Modal verbs'),
('INGLÉS', NULL, 'Expresar habilidad', 'El verbo modal "can" se usa para expresar habilidad o capacidad de hacer algo en el presente. Su forma en pasado es "could".', NULL, NULL, NULL, '¿Cómo se dice correctamente "Puedo nadar muy bien" en inglés?', 'I might swim very well.', 'I can swim very well.', 'I must swim very well.', 'I should swim very well.', 'B', 4, 7, 'Modal verbs'),
('INGLÉS', NULL, 'Pedir permiso', 'Para pedir permiso de manera formal, podemos usar "may" o "could". "Can" también es posible pero menos formal.', NULL, NULL, NULL, '¿Cuál es la forma más educada de pedir permiso para salir?', 'Can I leave early?', 'May I leave early?', 'I must leave early.', 'Should I leave early?', 'B', 4, 7, 'Modal verbs'),
('INGLÉS', NULL, 'Consejos con "should"', 'El verbo modal "should" se usa para dar consejos o hacer recomendaciones sobre lo que es correcto o buena idea hacer.', NULL, NULL, NULL, '¿Cuál oración da un consejo correctamente?', 'You must eat more vegetables.', 'You can eat more vegetables.', 'You should eat more vegetables.', 'You might eat more vegetables.', 'C', 4, 7, 'Modal verbs'),
('INGLÉS', NULL, 'Obligación con "must"', 'El verbo modal "must" expresa una obligación fuerte o una necesidad. Es más fuerte que "should" que expresa consejo.', NULL, NULL, NULL, '¿Cuál oración expresa una obligación?', 'You could finish your homework.', 'You must finish your homework.', 'You may finish your homework.', 'You should finish your homework.', 'B', 4, 7, 'Modal verbs'),

-- Preguntas sobre Future "going to"
('INGLÉS', NULL, 'Planes con "going to"', 'Usamos "going to" + verbo para hablar de planes futuros o intenciones que ya hemos decidido antes del momento de hablar.', NULL, NULL, NULL, '¿Cómo se dice correctamente "Voy a visitar a mi abuela el fin de semana"?', 'I visit my grandmother this weekend.', 'I am going to visit my grandmother this weekend.', 'I will visit my grandmother this weekend.', 'I visiting my grandmother this weekend.', 'B', 4, 7, 'Future "going to"'),
('INGLÉS', NULL, 'Predicciones con "going to"', 'También usamos "going to" para hacer predicciones sobre el futuro cuando tenemos evidencia en el presente de que algo va a pasar.', NULL, NULL, NULL, 'Mira esas nubes oscuras. ¿Qué significa esto?', 'It will rain.', 'It is going to rain.', 'It rains.', 'It is raining.', 'B', 4, 7, 'Future "going to"'),
('INGLÉS', NULL, 'Estructura de "going to"', 'La estructura correcta de "going to" es: sujeto + verbo to be (am/is/are) + going to + verbo principal en infinitivo.', NULL, NULL, NULL, '¿Cuál es la forma correcta de esta oración?', 'She going to study medicine.', 'She is going to study medicine.', 'She is going study medicine.', 'She is go to study medicine.', 'B', 4, 7, 'Future "going to"'),
('INGLÉS', NULL, 'Planes vs decisiones espontáneas', 'Es importante diferenciar entre "going to" (planes) y "will" (decisiones en el momento).', NULL, NULL, NULL, '¿Cuál oración muestra un plan previo?', 'I''ll help you with your bags.', 'I''m going to help you with your bags.', 'I help you with your bags.', 'I helping you with your bags.', 'B', 4, 7, 'Future "going to"'),
('INGLÉS', NULL, 'Negación con "going to"', 'Para formar la negación con "going to", colocamos "not" después del verbo to be: am not/isn''t/aren''t going to + verbo.', NULL, NULL, NULL, '¿Cuál es la forma negativa correcta de: "We are going to travel tomorrow"?', 'We not going to travel tomorrow.', 'We aren''t going to travel tomorrow.', 'We don''t going to travel tomorrow.', 'We isn''t going to travel tomorrow.', 'B', 4, 7, 'Future "going to"'),

-- Preguntas sobre Future continuous
('INGLÉS', NULL, 'Estructura del futuro continuo', 'El futuro continuo se forma con will + be + verbo con -ing. Describe acciones que estarán en progreso en un momento específico en el futuro.', NULL, NULL, NULL, '¿Cuál es la forma correcta del futuro continuo para "She (work) at 8 pm tomorrow"?', 'She will working at 8 pm tomorrow.', 'She will be working at 8 pm tomorrow.', 'She will be work at 8 pm tomorrow.', 'She will is working at 8 pm tomorrow.', 'B', 4, 7, 'Future continuous'),
('INGLÉS', NULL, 'Uso del futuro continuo', 'Usamos el futuro continuo para hablar de acciones que estarán en progreso en un momento específico en el futuro, a menudo cuando preguntamos sobre los planes de alguien.', NULL, NULL, NULL, '¿Qué pregunta usa correctamente el futuro continuo?', 'What will you do tomorrow morning?', 'What will you be doing tomorrow morning?', 'What are you doing tomorrow morning?', 'What do you do tomorrow morning?', 'B', 4, 7, 'Future continuous'),
('INGLÉS', NULL, 'Futuro continuo vs simple', 'El futuro continuo enfatiza la acción en progreso, mientras que el futuro simple habla de acciones completadas o decisiones.', NULL, NULL, NULL, '¿Cuál oración describe una acción en progreso en el futuro?', 'I will finish my project tonight.', 'I will be working on my project all night.', 'I work on my project tonight.', 'I am working on my project tonight.', 'B', 4, 7, 'Future continuous'),
('INGLÉS', NULL, 'Preguntas con futuro continuo', 'En preguntas con futuro continuo, el orden es: will + sujeto + be + verbo con -ing.', NULL, NULL, NULL, '¿Cómo se pregunta correctamente "¿Estarás estudiando a las 7 pm?"', 'Will you study at 7 pm?', 'Will you be studying at 7 pm?', 'Are you studying at 7 pm?', 'Do you study at 7 pm?', 'B', 4, 7, 'Future continuous'),
('INGLÉS', NULL, 'Negación en futuro continuo', 'Para formar la negación en futuro continuo, usamos will not (won''t) + be + verbo con -ing.', NULL, NULL, NULL, '¿Cuál es la forma negativa correcta de "They will be waiting for us"?', 'They won''t be waiting for us.', 'They will not waiting for us.', 'They won''t waiting for us.', 'They not will be waiting for us.', 'A', 4, 7, 'Future continuous'),

-- Preguntas sobre Used to
('INGLÉS', NULL, 'Hábitos pasados con "used to"', 'Usamos "used to" + verbo infinitivo para hablar de hábitos o estados en el pasado que ya no ocurren en el presente.', NULL, NULL, NULL, '¿Cómo se dice correctamente "Solía jugar fútbol cuando era niño"?', 'I use to play soccer when I was a child.', 'I used to play soccer when I was a child.', 'I was used to play soccer when I was a child.', 'I using to play soccer when I was a child.', 'B', 4, 7, 'Used to'),
('INGLÉS', NULL, 'Forma negativa de "used to"', 'La forma negativa de "used to" es "didn''t use to" (sin -d en "use").', NULL, NULL, NULL, '¿Cuál es la forma negativa correcta de "She used to live in Madrid"?', 'She didn''t used to live in Madrid.', 'She didn''t use to live in Madrid.', 'She not used to live in Madrid.', 'She used not to live in Madrid.', 'B', 4, 7, 'Used to'),
('INGLÉS', NULL, 'Preguntas con "used to"', 'Para formar preguntas con "used to", usamos "Did" + sujeto + "use to" + verbo infinitivo.', NULL, NULL, NULL, '¿Cómo se pregunta correctamente "¿Solías comer muchos dulces?"', 'Did you used to eat a lot of candy?', 'Did you use to eat a lot of candy?', 'Used you to eat a lot of candy?', 'Do you used to eat a lot of candy?', 'B', 4, 7, 'Used to'),
('INGLÉS', NULL, 'Diferenciar "used to" y "use"', 'Es importante no confundir "used to" (hábitos pasados) con el verbo "use" (utilizar).', NULL, NULL, NULL, '¿Cuál oración usa correctamente "used to"?', 'I use to go to the park every Sunday.', 'I used to go to the park every Sunday.', 'I using to go to the park every Sunday.', 'I am used to go to the park every Sunday.', 'B', 4, 7, 'Used to'),
('INGLÉS', NULL, 'Estados pasados con "used to"', '"Used to" puede describir tanto acciones como estados en el pasado que ya no son ciertos.', NULL, NULL, NULL, '¿Cuál oración es correcta?', 'She used to has long hair.', 'She used to have long hair.', 'She used to having long hair.', 'She use to had long hair.', 'B', 4, 7, 'Used to'),

-- Preguntas sobre Sports and weather
('INGLÉS', NULL, 'Vocabulario de deportes', 'En inglés hay muchos términos específicos para diferentes deportes y actividades físicas. Es importante conocerlos para hablar sobre este tema.', NULL, NULL, NULL, '¿Cómo se dice "baloncesto" en inglés?', 'Soccer', 'Basketball', 'Tennis', 'Volleyball', 'B', 4, 7, 'Sports and weather'),
('INGLÉS', NULL, 'Equipo deportivo', 'Cada deporte requiere de equipo específico. Por ejemplo, en fútbol se usa un balón, en tenis una raqueta, etc.', NULL, NULL, NULL, '¿Qué necesitas para jugar al tenis?', 'A bat', 'A racket', 'A stick', 'A club', 'B', 4, 7, 'Sports and weather'),
('INGLÉS', NULL, 'Términos meteorológicos', 'El clima es un tema común en conversaciones cotidianas. Conocer términos como sunny, rainy, windy es esencial.', NULL, NULL, NULL, '¿Cómo se dice "hace viento" en inglés?', 'It''s sunny.', 'It''s rainy.', 'It''s windy.', 'It''s cloudy.', 'C', 4, 7, 'Sports and weather'),
('INGLÉS', NULL, 'Deportes de invierno', 'Algunos deportes se practican solo en ciertas estaciones o condiciones climáticas, como los deportes de invierno.', NULL, NULL, NULL, '¿Cuál de estos es un deporte de invierno?', 'Swimming', 'Skiing', 'Surfing', 'Cycling', 'B', 4, 7, 'Sports and weather'),
('INGLÉS', NULL, 'Condiciones para deportes', 'Algunos deportes requieren condiciones climáticas específicas. Por ejemplo, no se puede esquiar sin nieve.', NULL, NULL, NULL, '¿Qué condición se necesita para practicar surf?', 'Snow', 'Waves', 'Mountains', 'Forest', 'B', 4, 7, 'Sports and weather'),

-- Preguntas sobre A Sports Report
('INGLÉS', NULL, 'Partes de un reporte deportivo', 'Un reporte deportivo típico incluye información sobre los equipos, el marcador, los jugadores destacados y los momentos clave del partido.', NULL, NULL, NULL, '¿Qué información es esencial en un reporte deportivo?', 'The final score', 'The color of the uniforms', 'The weather', 'The price of the tickets', 'A', 4, 7, 'A Sports Report'),
('INGLÉS', NULL, 'Términos en reportes', 'Los reportes deportivos usan vocabulario específico como "goal", "match", "championship", "defeat", "victory".', NULL, NULL, NULL, '¿Cómo se llama el punto anotado en fútbol?', 'Home run', 'Basket', 'Goal', 'Touchdown', 'C', 4, 7, 'A Sports Report'),
('INGLÉS', NULL, 'Verbos en reportes', 'Los verbos comunes en reportes deportivos incluyen "win", "lose", "tie", "score", "play", "compete".', NULL, NULL, NULL, '¿Qué verbo completa correctamente: "The team _____ the championship last year"?', 'lose', 'lost', 'win', 'winned', 'B', 4, 7, 'A Sports Report'),
('INGLÉS', NULL, 'Estadísticas deportivas', 'Los reportes deportivos a menudo incluyen estadísticas como goles anotados, asistencias, tarjetas amarillas, etc.', NULL, NULL, NULL, '¿Qué estadística es común en un reporte de fútbol?', 'Number of goals', 'Number of aces', 'Number of home runs', 'Number of three-pointers', 'A', 4, 7, 'A Sports Report'),
('INGLÉS', NULL, 'Entrevistas deportivas', 'Después de los partidos, los reporteros suelen entrevistar a los jugadores sobre su desempeño y el resultado.', NULL, NULL, NULL, '¿Qué pregunta sería típica en una entrevista post-partido?', 'How do you feel about today''s game?', 'What did you eat for breakfast?', 'Where do you live?', 'How old are you?', 'A', 4, 7, 'A Sports Report');

-- Preguntas para Quantity pronouns: some, any
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('INGLÉS', NULL, 'Uso de some en afirmativas', 'En inglés, usamos "some" en oraciones afirmativas para hablar de cantidades indefinidas cuando nos referimos a sustantivos contables en plural o incontables. Por ejemplo: "There are some apples on the table".', NULL, NULL, NULL, 'Selecciona la oración correcta que use "some" apropiadamente:', 'I need some water for the recipe.', 'She doesn''t have some books.', 'Would you like some coffee?', 'There isn''t some sugar left.', 'A', 4, 7, 'Quantity pronouns: some, any'),
('INGLÉS', NULL, 'Any en preguntas', 'La palabra "any" se utiliza en preguntas y negaciones con sustantivos contables e incontables. Es importante distinguir cuándo usar "some" (generalmente en afirmaciones) y "any" (en preguntas y negaciones).', NULL, NULL, NULL, '¿Cuál de estas preguntas usa "any" correctamente?', 'Do you have some pencils I can borrow?', 'Are there any students in the classroom?', 'I don''t want some help, thank you.', 'She has any idea about the project.', 'B', 4, 7, 'Quantity pronouns: some, any'),
('INGLÉS', NULL, 'Some vs. any', 'Aunque "some" y "any" ambos se refieren a cantidades indefinidas, sus usos son diferentes según el tipo de oración. "Some" también puede usarse en preguntas cuando ofrecemos algo o pedimos algo de manera cortés.', NULL, NULL, NULL, 'Elige la opción correcta para completar la oración: "Can I have ___ orange juice, please?"', 'any', 'some', 'a', 'an', 'B', 4, 7, 'Quantity pronouns: some, any'),
('INGLÉS', NULL, 'Excepciones con some', 'Normalmente usamos "any" en preguntas, pero hay excepciones cuando la pregunta es realmente una oferta o petición, donde usamos "some". Por ejemplo: "Would you like some tea?"', NULL, NULL, NULL, '¿En cuál de estas situaciones usaríamos "some" en lugar de "any"?', 'Preguntando si hay problemas', 'Ofreciendo ayuda a alguien', 'Negando la existencia de algo', 'Preguntando sobre cantidades en general', 'B', 4, 7, 'Quantity pronouns: some, any'),
('INGLÉS', NULL, 'Uso en negaciones', 'En las oraciones negativas, "any" es la forma correcta para indicar ausencia o falta de algo, tanto con sustantivos contables como incontables.', NULL, NULL, NULL, 'Selecciona la oración negativa correcta:', 'I don''t have some time today.', 'She doesn''t want any advice.', 'They haven''t some friends here.', 'We don''t need some help.', 'B', 4, 7, 'Quantity pronouns: some, any'),

-- Preguntas para Determiners: much, all, both, a few, each
('INGLÉS', NULL, 'Uso de "much"', 'El determinante "much" se utiliza con sustantivos incontables para hablar de grandes cantidades, generalmente en preguntas y negaciones. Por ejemplo: "I don''t have much time".', NULL, NULL, NULL, '¿Cuál de estas oraciones usa "much" correctamente?', 'How much books do you have?', 'She doesn''t have much patience.', 'There are much students here.', 'I have much friends at school.', 'B', 4, 7, 'Determiners: much, all, both, a few, each'),
('INGLÉS', NULL, 'All vs. both', '"All" se refiere al total de un grupo de tres o más, mientras que "both" se usa específicamente para dos elementos. Es importante no confundir estos determinantes.', NULL, NULL, NULL, 'Completa la oración correctamente: "___ my parents are doctors."', 'All', 'Much', 'Both', 'A few', 'C', 4, 7, 'Determiners: much, all, both, a few, each'),
('INGLÉS', NULL, 'A few para cantidades pequeñas', 'El determinante "a few" indica una pequeña cantidad de algo contable, con connotación positiva (algunos). Su contraparte sin el artículo "a" (few) tiene connotación negativa (pocos).', NULL, NULL, NULL, 'Selecciona la oración que usa "a few" correctamente:', 'I have a few water in my bottle.', 'There are a few students in the library.', 'She needs a few advice for her problem.', 'We have a few time before the movie starts.', 'B', 4, 7, 'Determiners: much, all, both, a few, each'),
('INGLÉS', NULL, 'Each para individualidad', 'El determinante "each" enfatiza los miembros individuales de un grupo, a diferencia de "all" que los considera como un todo. "Each" puede usarse con sustantivos singulares.', NULL, NULL, NULL, '¿Cuál es el uso correcto de "each"?', 'Each children received a gift.', 'Each of the students have their own locker.', 'Each student has a notebook.', 'The each book on the shelf is interesting.', 'C', 4, 7, 'Determiners: much, all, both, a few, each'),
('INGLÉS', NULL, 'Determinantes en contexto', 'Los determinantes en inglés ayudan a especificar o cuantificar los sustantivos. Es esencial elegir el determinante correcto según el tipo de sustantivo (contable/incontable) y el significado que queremos expresar.', NULL, NULL, NULL, 'Completa la oración: "There isn''t ___ milk left in the fridge."', 'all', 'both', 'much', 'a few', 'C', 4, 7, 'Determiners: much, all, both, a few, each'),

-- Preguntas para Passive voice in simple past
('INGLÉS', NULL, 'Forma pasada pasiva', 'La voz pasiva en pasado simple se forma con "was/were" + participio pasado. Se usa cuando queremos enfatizar la acción o el objeto en lugar de quien la realizó.', NULL, NULL, NULL, '¿Cuál es la forma pasiva correcta de: "They built this house in 1990"?', 'This house was built in 1990 by them.', 'This house is built in 1990 by them.', 'This house were built in 1990 by them.', 'This house built in 1990 by them.', 'A', 4, 7, 'Passive voice in simple past'),
('INGLÉS', NULL, 'Identificar voz pasiva', 'En las oraciones pasivas, el sujeto recibe la acción en lugar de realizarla. El agente (quien realiza la acción) a menudo se omite si no es relevante.', NULL, NULL, NULL, '¿Cuál de estas oraciones está en voz pasiva?', 'The teacher gave us homework.', 'The homework was given by the teacher.', 'Students completed the assignment.', 'They are reading the book.', 'B', 4, 7, 'Passive voice in simple past'),
('INGLÉS', NULL, 'Transformar a pasiva', 'Para transformar una oración activa a pasiva en pasado: 1) el objeto pasa a ser sujeto, 2) se usa el verbo "to be" en pasado según el sujeto, 3) se añade el participio pasado del verbo principal.', NULL, NULL, NULL, 'Transforma a pasiva: "The chef prepared a delicious meal."', 'A delicious meal was prepared by the chef.', 'A delicious meal is prepared by the chef.', 'A delicious meal prepared the chef.', 'The chef was prepared a delicious meal.', 'A', 4, 7, 'Passive voice in simple past'),
('INGLÉS', NULL, 'Uso del agente', 'En la voz pasiva, el agente (introducido por "by") puede omitirse si no es importante o es obvio. Por ejemplo: "The letter was sent yesterday" (sin mencionar quién lo envió).', NULL, NULL, NULL, '¿Cuál es la versión pasiva correcta sin agente de: "Someone stole my bicycle last night"?', 'My bicycle was stolen last night.', 'My bicycle is stolen last night.', 'My bicycle stole last night.', 'My bicycle were stolen last night.', 'A', 4, 7, 'Passive voice in simple past'),
('INGLÉS', NULL, 'Verbos irregulares en pasiva', 'En la voz pasiva es esencial conocer los participios pasados de los verbos, especialmente los irregulares como "write-written", "take-taken", "give-given", etc.', NULL, NULL, NULL, 'Completa la oración pasiva: "The novel ___ by the author last year."', 'is written', 'was wrote', 'was written', 'wrote', 'C', 4, 7, 'Passive voice in simple past'),

-- Preguntas para Transitive and intransitive verbs
('INGLÉS', NULL, 'Identificar verbos transitivos', 'Los verbos transitivos requieren un objeto directo para completar su significado, mientras que los intransitivos no. Por ejemplo: "She reads (transitive) a book" vs. "He sleeps (intransitive)".', NULL, NULL, NULL, '¿Cuál de estos verbos es transitivo en esta oración?', 'The birds fly south in winter.', 'She opened the window.', 'They arrived late.', 'The baby slept peacefully.', 'B', 4, 7, 'Transitive and intransitive verbs'),
('INGLÉS', NULL, 'Verbos intransitivos', 'Los verbos intransitivos expresan una acción completa sin necesidad de un objeto directo. Muchos verbos de movimiento como "go", "come", "fall" son intransitivos.', NULL, NULL, NULL, 'Selecciona la oración con verbo intransitivo:', 'I bought a new computer.', 'The sun rises in the east.', 'She sent an email.', 'They built a treehouse.', 'B', 4, 7, 'Transitive and intransitive verbs'),
('INGLÉS', NULL, 'Verbos con doble uso', 'Algunos verbos pueden ser transitivos o intransitivos según el contexto. Por ejemplo: "She runs (intransitive) every morning" vs. "She runs (transitive) a business".', NULL, NULL, NULL, 'En esta oración, ¿el verbo es transitivo o intransitivo? "He stopped the car."', 'Transitivo', 'Intransitivo', 'Ambos', 'Ninguno', 'A', 4, 7, 'Transitive and intransitive verbs'),
('INGLÉS', NULL, 'Reconocer objetos directos', 'Para identificar si un verbo es transitivo, busca el objeto directo (respuesta a "qué" o "quién" después del verbo). Si no hay objeto, probablemente es intransitivo.', NULL, NULL, NULL, '¿Cuál oración contiene un verbo transitivo?', 'The concert lasted two hours.', 'She laughed loudly.', 'He studies every night.', 'They watched a movie.', 'D', 4, 7, 'Transitive and intransitive verbs'),
('INGLÉS', NULL, 'Uso correcto de verbos', 'Es importante usar los verbos correctamente según sean transitivos o intransitivos. Un error común es usar un verbo intransitivo con un objeto directo.', NULL, NULL, NULL, 'Corrige la oración: "The baby fell the toy."', 'The baby fell with the toy.', 'The baby dropped the toy.', 'The baby fell the toy down.', 'The toy fell by the baby.', 'B', 4, 7, 'Transitive and intransitive verbs'),

-- Preguntas para Passive voice in simple present
('INGLÉS', NULL, 'Forma presente pasiva', 'La voz pasiva en presente simple se forma con "am/is/are" + participio pasado. Se usa para describir acciones habituales o generales donde el énfasis está en la acción, no en quien la realiza.', NULL, NULL, NULL, '¿Cuál es la forma pasiva correcta de: "People speak English worldwide"?', 'English is spoken worldwide.', 'English was spoken worldwide.', 'English are spoken worldwide.', 'English speaks worldwide.', 'A', 4, 7, 'Passive voice in simple present'),
('INGLÉS', NULL, 'Identificar presente pasivo', 'Las oraciones en presente pasivo a menudo describen procesos, hechos generales o situaciones donde el agente no es relevante o es desconocido.', NULL, NULL, NULL, '¿Cuál de estas oraciones está en presente pasivo?', 'The workers clean the streets daily.', 'The streets are cleaned daily.', 'Someone cleans the streets every morning.', 'They have cleaned the streets.', 'B', 4, 7, 'Passive voice in simple present'),
('INGLÉS', NULL, 'Transformar a presente pasivo', 'Para transformar una oración activa a pasiva en presente: 1) el objeto pasa a ser sujeto, 2) se conjuga "to be" en presente según el nuevo sujeto, 3) se añade el participio pasado del verbo principal.', NULL, NULL, NULL, 'Transforma a pasiva: "The company produces electric cars."', 'Electric cars are produced by the company.', 'Electric cars is produced by the company.', 'Electric cars were produced by the company.', 'Electric cars produce by the company.', 'A', 4, 7, 'Passive voice in simple present'),
('INGLÉS', NULL, 'Uso del presente pasivo', 'El presente pasivo se usa frecuentemente para describir procesos de fabricación, instrucciones, o hechos científicos donde lo importante es el resultado, no quien lo hace.', NULL, NULL, NULL, 'Completa la oración pasiva: "Coffee ___ in tropical countries."', 'grows', 'is grown', 'are grown', 'grown', 'B', 4, 7, 'Passive voice in simple present'),
('INGLÉS', NULL, 'Concordancia en pasivo', 'En la voz pasiva, el verbo "to be" debe concordar en número con el nuevo sujeto de la oración. Por ejemplo: "Letters are written" (plural) vs. "A letter is written" (singular).', NULL, NULL, NULL, '¿Cuál es la versión pasiva correcta de: "The teacher corrects the exams"?', 'The exams is corrected by the teacher.', 'The exams are corrected by the teacher.', 'The exams corrected by the teacher.', 'The exams being corrected by the teacher.', 'B', 4, 7, 'Passive voice in simple present'),

-- Preguntas para Materials, daily life objects
('INGLÉS', NULL, 'Vocabulario de materiales', 'En inglés, los nombres de los materiales suelen ser sustantivos incontables (no llevan "a/an" y no tienen forma plural). Por ejemplo: wood, glass, metal, plastic, etc.', NULL, NULL, NULL, '¿Cuál de estas palabras se refiere a un material?', 'Chair', 'Wood', 'Computer', 'Book', 'B', 4, 7, 'Materials, daily life objects'),
('INGLÉS', NULL, 'Objetos cotidianos', 'Los objetos de la vida diaria tienen nombres específicos en inglés. Es importante aprender este vocabulario para describir nuestro entorno y actividades rutinarias.', NULL, NULL, NULL, '¿Cómo se llama en inglés el objeto que usamos para abrir puertas?', 'Broom', 'Key', 'Fork', 'Towel', 'B', 4, 7, 'Materials, daily life objects'),
('INGLÉS', NULL, 'Materiales y objetos', 'Muchos objetos se nombran combinando el material con el objeto, como "glass bottle" (botella de vidrio) o "wooden chair" (silla de madera).', NULL, NULL, NULL, 'Selecciona la combinación correcta de material y objeto:', 'Metal window', 'Paper car', 'Glass cup', 'Wooden water', 'C', 4, 7, 'Materials, daily life objects'),
('INGLÉS', NULL, 'Descripciones de objetos', 'Para describir objetos en inglés, podemos mencionar su material, función, forma o ubicación. Esto enriquece nuestro vocabulario y capacidad descriptiva.', NULL, NULL, NULL, '¿Qué objeto se describe como "something we use to cut paper"?', 'Spoon', 'Scissors', 'Plate', 'Blanket', 'B', 4, 7, 'Materials, daily life objects'),
('INGLÉS', NULL, 'Clasificación de objetos', 'Clasificar objetos por material o función ayuda a organizar el vocabulario y recordarlo más fácilmente. Por ejemplo: kitchen objects, school supplies, electronic devices, etc.', NULL, NULL, NULL, '¿Cuál de estos objetos es diferente a los demás por su material?', 'Iron pan', 'Silver spoon', 'Plastic bag', 'Cotton shirt', 'D', 4, 7, 'Materials, daily life objects'),

-- Preguntas para The natural world
('INGLÉS', NULL, 'Vocabulario de naturaleza', 'El mundo natural incluye elementos como plantas, animales, paisajes y fenómenos naturales. Aprender este vocabulario es esencial para describir el medio ambiente.', NULL, NULL, NULL, '¿Cómo se llama en inglés el fenómeno cuando cae agua del cielo?', 'Earthquake', 'Rain', 'Volcano', 'Drought', 'B', 4, 7, 'The natural world'),
('INGLÉS', NULL, 'Hábitats naturales', 'Los diferentes ecosistemas tienen nombres específicos en inglés, como "forest", "desert", "ocean", "mountain", etc. Cada uno alberga distintas formas de vida.', NULL, NULL, NULL, '¿Cuál de estos es un hábitat acuático?', 'Desert', 'Jungle', 'Lake', 'Mountain', 'C', 4, 7, 'The natural world'),
('INGLÉS', NULL, 'Fenómenos atmosféricos', 'Los fenómenos atmosféricos incluyen eventos como lluvia, nieve, viento, tormentas, arcoíris, etc. Estos términos son útiles para hablar del clima y el tiempo.', NULL, NULL, NULL, '¿Qué fenómeno natural se describe como "a violent rotating column of air"?', 'Tornado', 'Tsunami', 'Avalanche', 'Blizzard', 'A', 4, 7, 'The natural world'),
('INGLÉS', NULL, 'Partes de plantas', 'Las plantas tienen partes específicas como roots (raíces), stem (tallo), leaves (hojas), flowers (flores), etc. Conocer estos términos ayuda a describir la vegetación.', NULL, NULL, NULL, '¿Cuál es la parte de la planta que absorbe agua y nutrientes del suelo?', 'Branch', 'Root', 'Flower', 'Leaf', 'B', 4, 7, 'The natural world'),
('INGLÉS', NULL, 'Cadenas alimenticias', 'En la naturaleza, los seres vivos se relacionan a través de cadenas alimenticias, donde algunos organismos se alimentan de otros. Esto incluye productores, consumidores y descomponedores.', NULL, NULL, NULL, '¿Qué organismo sería un "producer" en una cadena alimenticia?', 'Lion', 'Tree', 'Fox', 'Eagle', 'B', 4, 7, 'The natural world'),

-- Preguntas para A Scientific report
('INGLÉS', NULL, 'Partes de un informe', 'Un informe científico típicamente incluye secciones como Introduction, Methods, Results, y Conclusion. Cada parte tiene un propósito específico en la presentación de la investigación.', NULL, NULL, NULL, '¿En qué sección de un informe científico se describiría cómo se realizó un experimento?', 'Introduction', 'Methods', 'Results', 'Conclusion', 'B', 4, 7, 'A Scientific report'),
('INGLÉS', NULL, 'Lenguaje científico', 'Los informes científicos usan un lenguaje formal, objetivo y preciso. Evitan opiniones personales y se enfocan en hechos, datos y evidencia.', NULL, NULL, NULL, '¿Cuál de estas frases sería más apropiada en un informe científico?', 'I think the results are amazing!', 'The experiment was conducted three times.', 'This proves my theory is the best.', 'Everyone knows this is true.', 'B', 4, 7, 'A Scientific report'),
('INGLÉS', NULL, 'Presentación de datos', 'En la sección de Results, los datos suelen presentarse en tablas, gráficos o descripciones textuales. Es importante ser claro y preciso al reportar hallazgos.', NULL, NULL, NULL, '¿Qué elemento NO es típico de la sección Results?', 'Tables with numerical data', 'Graphs showing trends', 'Personal opinions', 'Descriptions of findings', 'C', 4, 7, 'A Scientific report'),
('INGLÉS', NULL, 'Conclusión científica', 'La conclusión de un informe científico resume los hallazgos principales y su significado, sin introducir información nueva. Debe basarse en la evidencia presentada.', NULL, NULL, NULL, '¿Qué debería incluir una buena conclusión científica?', 'Nuevos datos no mencionados antes', 'Especulaciones sin fundamento', 'Resumen de los hallazgos clave', 'Opiniones personales del investigador', 'C', 4, 7, 'A Scientific report'),
('INGLÉS', NULL, 'Objetividad científica', 'Un informe científico debe ser objetivo e imparcial, presentando los hechos tal como son, incluso si contradicen las hipótesis iniciales del investigador.', NULL, NULL, NULL, '¿Cuál es la actitud correcta al escribir un informe científico?', 'Seleccionar solo datos que apoyen la hipótesis', 'Reportar todos los resultados honestamente', 'Exagerar los hallazgos para impresionar', 'Ignorar datos contradictorios', 'B', 4, 7, 'A Scientific report');

-- Preguntas para el tema: Demonstrative pronouns: This, that, these, those
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', NULL, 'Identificando objetos cercanos', 
'En inglés, usamos diferentes pronombres demostrativos para referirnos a objetos dependiendo de su distancia y cantidad. Observa la siguiente situación: Estás en tu habitación y tienes un libro en la mano, otro libro en la mesa cerca de ti, varios lápices en un estuche a tu lado y unos cuadernos en el otro extremo de la habitación.',
NULL, NULL, NULL, 
'¿Qué pronombre demostrativo usarías para referirte al libro que tienes en la mano?', 
'This', 'That', 'These', 'Those', 'A', 4, 7, 'Demonstrative pronouns: This, that, these, those'),

-- Pregunta 2
('INGLÉS', NULL, 'Señalando objetos lejanos', 
'Los pronombres demostrativos nos ayudan a indicar objetos específicos. Imagina que estás en un parque con un amigo. Hay un perro jugando cerca de ustedes, varios pájaros en un árbol a cierta distancia, y unas flores al otro lado del parque.',
NULL, NULL, NULL, 
'¿Cuál sería el pronombre correcto para señalar los pájaros en el árbol que están a cierta distancia?', 
'This', 'That', 'These', 'Those', 'D', 4, 7, 'Demonstrative pronouns: This, that, these, those'),

-- Pregunta 3
('INGLÉS', NULL, 'Diferenciando singular y plural', 
'Es importante distinguir entre objetos en singular y plural al usar pronombres demostrativos. Piensa en estas situaciones: una manzana en tu mochila, un teléfono en la mesa del frente, varios dulces en tu bolsillo y unos zapatos bajo la cama.',
NULL, NULL, NULL, 
'¿Cómo te referirías correctamente a los dulces en tu bolsillo?', 
'This', 'That', 'These', 'Those', 'C', 4, 7, 'Demonstrative pronouns: This, that, these, those'),

-- Pregunta 4
('INGLÉS', NULL, 'Comparando distancias', 
'La distancia relativa afecta la elección del pronombre demostrativo. Considera este escenario: tienes un bolígrafo en tu escritorio, un reloj en la pared opuesta del aula, unos marcadores en la pizarra cercana y unos libros en la biblioteca al fondo del salón.',
NULL, NULL, NULL, 
'¿Qué pronombre usarías para el reloj en la pared opuesta?', 
'This', 'That', 'These', 'Those', 'B', 4, 7, 'Demonstrative pronouns: This, that, these, those'),

-- Pregunta 5
('INGLÉS', NULL, 'Usando demostrativos en contexto', 
'Los pronombres demostrativos son esenciales para la comunicación diaria. Imagina que estás ayudando a alguien a encontrar cosas en una tienda: hay una camiseta en el mostrador frente a ti, unos jeans colgados en un perchero cercano, un sombrero en una vitrina al otro lado y unos zapatos en un estante lejano.',
NULL, NULL, NULL, 
'¿Cómo indicarías los jeans que están en el perchero cercano?', 
'This', 'That', 'These', 'Those', 'C', 4, 7, 'Demonstrative pronouns: This, that, these, those'),

-- Preguntas para el tema: Reported speech in simple present
('INGLÉS', NULL, 'Transformando declaraciones', 
'El reported speech (estilo indirecto) nos permite contar lo que alguien más ha dicho. Observa la siguiente situación directa: María dice: "I love to read science fiction books". Quieres contarle a un amigo lo que María dijo, pero usando reported speech.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de reportar la declaración de María?', 
'María says that she loved to read science fiction books', 
'María says that she loves to read science fiction books', 
'María said that she loves to read science fiction books', 
'María said that she loved to read science fiction books', 'B', 4, 7, 'Reported speech in simple present'),

('INGLÉS', NULL, 'Reportando hábitos diarios', 
'Cuando reportamos declaraciones en presente simple sobre hábitos o verdades generales, el tiempo verbal generalmente no cambia. Juan dice: "My brother works at a hospital". Necesitas contarle esto a tu hermana usando reported speech.',
NULL, NULL, NULL, 
'¿Cómo reportarías correctamente la declaración de Juan?', 
'Juan says that his brother worked at a hospital', 
'Juan says that his brother works at a hospital', 
'Juan said that his brother works at a hospital', 
'Juan said that his brother worked at a hospital', 'B', 4, 7, 'Reported speech in simple present'),

('INGLÉS', NULL, 'Manteniendo el tiempo verbal', 
'En reported speech con el verbo introductorio en presente, el tiempo de la declaración original generalmente se mantiene. Escuchas a tu profesor decir: "The Earth revolves around the Sun". Más tarde, le explicas esto a un compañero usando reported speech.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de reportar esta declaración científica?', 
'The teacher says that the Earth revolved around the Sun', 
'The teacher says that the Earth revolves around the Sun', 
'The teacher said that the Earth revolves around the Sun', 
'The teacher said that the Earth revolved around the Sun', 'B', 4, 7, 'Reported speech in simple present'),

('INGLÉS', NULL, 'Reportando preferencias', 
'Ana te dice: "I prefer tea to coffee". Más tarde, hablas con Carlos sobre las preferencias de Ana usando reported speech, manteniendo el verbo introductorio en presente.',
NULL, NULL, NULL, 
'¿Cómo expresarías correctamente esta información?', 
'Ana says that she preferred tea to coffee', 
'Ana says that she prefers tea to coffee', 
'Ana said that she prefers tea to coffee', 
'Ana said that she preferred tea to coffee', 'B', 4, 7, 'Reported speech in simple present'),

('INGLÉS', NULL, 'Comunicando rutinas', 
'Tu compañero de clase menciona: "We have English classes every Monday and Wednesday". Al día siguiente, le explicas el horario a tu madre usando reported speech con el verbo introductorio en presente.',
NULL, NULL, NULL, 
'¿Cuál es la forma adecuada de reportar esta información?', 
'My classmate says that they had English classes every Monday and Wednesday', 
'My classmate says that they have English classes every Monday and Wednesday', 
'My classmate said that they have English classes every Monday and Wednesday', 
'My classmate said that they had English classes every Monday and Wednesday', 'B', 4, 7, 'Reported speech in simple present'),

-- Preguntas para el tema: Comparative and superlative adjectives
('INGLÉS', NULL, 'Comparando alturas', 
'Los adjetivos comparativos y superlativos nos permiten hacer comparaciones entre personas, objetos o situaciones. Observa esta información: Juan mide 1.70m, Pedro mide 1.80m y Luis mide 1.85m.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de comparar a Juan y Pedro usando un adjetivo comparativo?', 
'Juan is taller than Pedro', 
'Pedro is taller than Juan', 
'Juan is the tallest', 
'Pedro is the tallest', 'B', 4, 7, 'Comparative and superlative adjectives'),

('INGLÉS', NULL, 'Identificando el más alto', 
'Entre tres edificios, el A mide 100 metros, el B mide 120 metros y el C mide 150 metros. Necesitas usar la forma superlativa para describir el edificio C.',
NULL, NULL, NULL, 
'¿Cómo describirías correctamente el edificio C?', 
'The building C is taller than the others', 
'The building C is more tall than the others', 
'The building C is the most tall', 
'The building C is the tallest', 'D', 4, 7, 'Comparative and superlative adjectives'),

('INGLÉS', NULL, 'Comparando dificultad', 
'Estás hablando sobre tres asignaturas: Matemáticas es la más difícil para ti, Ciencias es menos difícil que Matemáticas pero más que Historia, que es la más fácil.',
NULL, NULL, NULL, 
'¿Cuál es la comparación correcta entre Ciencias y Historia?', 
'Science is more difficult than History', 
'Science is difficulter than History', 
'Science is the most difficult', 
'History is more difficult than Science', 'A', 4, 7, 'Comparative and superlative adjectives'),

('INGLÉS', NULL, 'Superlativo irregular', 
'Algunos adjetivos tienen formas comparativas y superlativas irregulares. "Good" es uno de ellos, con las formas "better" (comparativo) y "best" (superlativo).',
NULL, NULL, NULL, 
'¿Cuál es la forma superlativa correcta del adjetivo "good"?', 
'Goodest', 
'Better', 
'Best', 
'Most good', 'C', 4, 7, 'Comparative and superlative adjectives'),

('INGLÉS', NULL, 'Comparando ciudades', 
'Cuando comparamos ciudades en términos de población: Ciudad A tiene 500,000 habitantes, Ciudad B tiene 750,000 y Ciudad C tiene 1,000,000.',
NULL, NULL, NULL, 
'¿Cómo expresarías que la Ciudad B es más poblada que la A pero menos que la C?', 
'City B is more populated than City A and City C', 
'City B is more populated than City A but less populated than City C', 
'City B is the most populated', 
'City B is less populated than City A and City C', 'B', 4, 7, 'Comparative and superlative adjectives'),

-- Preguntas para el tema: Possessive and quantifiers determiners
('INGLÉS', NULL, 'Identificando posesión', 
'Los determinantes posesivos muestran a quién pertenece algo. Observa esta situación: Tienes un libro, tu hermana tiene una mochila y tus padres tienen un auto.',
NULL, NULL, NULL, 
'¿Cómo dirías correctamente "La mochila de mi hermana"?', 
'My backpack', 
'Her backpack', 
'His backpack', 
'Their backpack', 'B', 4, 7, 'Possessive and quantifiers determiners'),

('INGLÉS', NULL, 'Usando cuantificadores', 
'Los cuantificadores nos ayudan a expresar cantidad. Tienes que describir que hay una cantidad pequeña de leche en el refrigerador, pero no está vacío.',
NULL, NULL, NULL, 
'¿Qué cuantificador usarías correctamente en esta situación?', 
'There are a few milk in the fridge', 
'There is a little milk in the fridge', 
'There is many milk in the fridge', 
'There is few milk in the fridge', 'B', 4, 7, 'Possessive and quantifiers determiners'),

('INGLÉS', NULL, 'Expresando pertenencia grupal', 
'Estás describiendo las bicicletas que pertenecen a tu familia (padres y hermanos). Quieres usar un determinante posesivo para indicar que las bicicletas son de todos ustedes.',
NULL, NULL, NULL, 
'¿Cómo dirías "Nuestras bicicletas" en inglés?', 
'My bicycles', 
'Your bicycles', 
'Our bicycles', 
'Their bicycles', 'C', 4, 7, 'Possessive and quantifiers determiners'),

('INGLÉS', NULL, 'Diferenciando some y any', 
'Los cuantificadores "some" y "any" tienen usos diferentes. "Some" se usa generalmente en oraciones afirmativas, mientras que "any" en negativas e interrogativas.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta para completar esta pregunta: "Do you have ___ brothers or sisters?"', 
'Some', 
'Any', 
'Many', 
'Few', 'B', 4, 7, 'Possessive and quantifiers determiners'),

('INGLÉS', NULL, 'Combinando posesivos y cuantificadores', 
'Necesitas describir que varios de tus amigos tienen coches nuevos. Quieres usar un determinante posesivo combinado con un cuantificador.',
NULL, NULL, NULL, 
'¿Cómo dirías "Algunos de sus coches son nuevos"?', 
'Some of my cars are new', 
'Some of your cars are new', 
'Some of our cars are new', 
'Some of their cars are new', 'D', 4, 7, 'Possessive and quantifiers determiners'),

-- Preguntas para el tema: Modals: may, might, could
('INGLÉS', NULL, 'Expresando posibilidad', 
'Los verbos modales como may, might y could expresan posibilidad. Quieres decir que es posible que llueva mañana, pero no estás seguro.',
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de expresar esta posibilidad?', 
'It will rain tomorrow', 
'It may rain tomorrow', 
'It must rain tomorrow', 
'It should rain tomorrow', 'B', 4, 7, 'Modals: may, might, could'),

('INGLÉS', NULL, 'Pidiendo permiso educadamente', 
'Los modales pueden usarse para pedir permiso de manera educada. Quieres preguntar si puedes ir al baño durante la clase.',
NULL, NULL, NULL, 
'¿Cuál es la forma más educada de preguntar esto?', 
'I go to the bathroom?', 
'Can I go to the bathroom?', 
'Could I go to the bathroom?', 
'I must go to the bathroom?', 'C', 4, 7, 'Modals: may, might, could'),

('INGLÉS', NULL, 'Posibilidad futura', 
'Estás hablando sobre planes para el fin de semana. Quieres decir que hay una posibilidad de que vayas al cine, pero no es seguro.',
NULL, NULL, NULL, 
'¿Cómo expresarías esta idea correctamente?', 
'I might go to the cinema this weekend', 
'I will go to the cinema this weekend', 
'I must go to the cinema this weekend', 
'I should go to the cinema this weekend', 'A', 4, 7, 'Modals: may, might, could'),

('INGLÉS', NULL, 'Haciendo sugerencias', 
'Los modales pueden usarse para hacer sugerencias. Quieres sugerir que tu amigo pruebe el nuevo restaurante italiano porque es muy bueno.',
NULL, NULL, NULL, 
'¿Cuál es la forma más apropiada para hacer esta sugerencia?', 
'You must try the new Italian restaurant', 
'You might try the new Italian restaurant', 
'You could try the new Italian restaurant', 
'You will try the new Italian restaurant', 'C', 4, 7, 'Modals: may, might, could'),

('INGLÉS', NULL, 'Posibilidad incierta', 
'No estás seguro si tu hermana vendrá a la fiesta porque tiene mucho trabajo. Quieres expresar esta posibilidad incierta.',
NULL, NULL, NULL, 
'¿Cómo dirías que es posible que ella no venga?', 
'She must not come to the party', 
'She may not come to the party', 
'She will not come to the party', 
'She should not come to the party', 'B', 4, 7, 'Modals: may, might, could'),

-- Preguntas para el tema: School subjects and activities
('INGLÉS', NULL, 'Identificando asignaturas', 
'En la escuela estudiamos diferentes asignaturas que nos enseñan sobre diversos temas. Cada una tiene su propio enfoque y contenido.',
NULL, NULL, NULL, 
'¿Qué asignatura se enfoca principalmente en el estudio de números, cálculos y formas geométricas?', 
'History', 
'Mathematics', 
'Literature', 
'Biology', 'B', 4, 7, 'School subjects and activities'),

('INGLÉS', NULL, 'Actividades escolares', 
'Además de las clases regulares, las escuelas ofrecen diversas actividades extracurriculares para los estudiantes.',
NULL, NULL, NULL, 
'¿Cuál de estas actividades es más probable que se realice en un club de ciencia escolar?', 
'Playing soccer matches', 
'Performing in a play', 
'Conducting experiments', 
'Painting landscapes', 'C', 4, 7, 'School subjects and activities'),

('INGLÉS', NULL, 'Herramientas de aprendizaje', 
'Cada asignatura escolar suele utilizar herramientas o materiales específicos para facilitar el aprendizaje.',
NULL, NULL, NULL, 
'¿Qué herramienta es más probable que se use en una clase de geografía?', 
'A calculator', 
'A microscope', 
'A globe', 
'A test tube', 'C', 4, 7, 'School subjects and activities'),

('INGLÉS', NULL, 'Horario escolar', 
'Los estudiantes tienen diferentes asignaturas en distintos días de la semana, cada una con su propia frecuencia.',
NULL, NULL, NULL, 
'Si tienes educación física los lunes, miércoles y viernes, ¿cómo describirías la frecuencia de esta clase?', 
'Once a week', 
'Twice a week', 
'Three times a week', 
'Every day', 'C', 4, 7, 'School subjects and activities'),

('INGLÉS', NULL, 'Eventos escolares', 
'Durante el año escolar se realizan diversos eventos especiales que complementan la educación en el aula.',
NULL, NULL, NULL, 
'¿Qué evento escolar típicamente incluye presentaciones musicales, bailes y actuaciones teatrales?', 
'Science fair', 
'Math olympiad', 
'School play', 
'Talent show', 'D', 4, 7, 'School subjects and activities'),

-- Preguntas para el tema: Education
('INGLÉS', NULL, 'Niveles educativos', 
'En el sistema educativo, los estudiantes progresan por niveles según su edad y logros académicos. Es importante conocer cuál es el orden habitual de estos niveles para entender mejor el proceso educativo.',
NULL, NULL, NULL, 
'¿Qué nivel educativo sigue típicamente después de la escuela primaria?', 
'Preschool', 
'High school', 
'Middle school', 
'University', 'C', 4, 7, 'Education'),

('INGLÉS', NULL, 'Importancia de la educación', 
'La educación cumple un rol fundamental en la formación de las personas, no solo en conocimientos, sino también en habilidades y valores para convivir en sociedad.',
NULL, NULL, NULL, 
'¿Cuál de estos es un beneficio principal de la educación según la mayoría de los expertos?', 
'Avoids studying', 
'Improves job opportunities', 
'Reduces social interaction', 
'Increases free time', 'B', 4, 7, 'Education'),

('INGLÉS', NULL, 'Evaluaciones académicas', 
'Para medir cuánto han aprendido los estudiantes, los colegios aplican diferentes tipos de evaluaciones durante el año escolar.',
NULL, NULL, NULL, 
'¿Qué tipo de evaluación se realiza normalmente al finalizar un curso?', 
'Homework assignment', 
'Class participation', 
'Final exam', 
'Group project', 'C', 4, 7, 'Education'),

('INGLÉS', NULL, 'Tecnología educativa', 
'Con el avance de la tecnología, los estudiantes ahora pueden utilizar diversas herramientas digitales para aprender más eficientemente dentro y fuera del aula.',
NULL, NULL, NULL, 
'¿Qué dispositivo tecnológico es más útil para investigar rápidamente en clase?', 
'Calculator', 
'Smartphone or tablet', 
'Digital watch', 
'Television', 'B', 4, 7, 'Education'),

('INGLÉS', NULL, 'Hábitos de estudio', 
'Contar con buenos hábitos de estudio es clave para mejorar el rendimiento académico y aprovechar mejor el tiempo de aprendizaje.',
NULL, NULL, NULL, 
'¿Cuál de estas es una estrategia efectiva para estudiar mejor?', 
'Study all night before a test', 
'Take regular breaks while studying', 
'Never ask questions', 
'Study only on the school bus', 'B', 4, 7, 'Education'),

-- Tema: A persuasive text
('INGLÉS', NULL, 'Características de textos persuasivos', 
'Los textos persuasivos tienen el propósito de convencer al lector de pensar o actuar de cierta manera, utilizando diferentes estrategias para influir.',
NULL, NULL, NULL, 
'¿Qué elemento es común en un texto persuasivo?', 
'Objective facts only', 
'Arguments for a position', 
'Step-by-step instructions', 
'Neutral descriptions', 'B', 4, 7, 'A persuasive text'),

('INGLÉS', NULL, 'Lenguaje persuasivo', 
'El lenguaje persuasivo usa frases llamativas o emotivas para captar la atención del lector y generar un impacto.',
NULL, NULL, NULL, 
'¿Cuál de estas frases es típica en un texto persuasivo?', 
'The sky is blue', 
'You should try this amazing product!', 
'It starts at 8 a.m.', 
'Add the sugar and stir', 'B', 4, 7, 'A persuasive text'),

('INGLÉS', NULL, 'Estructura de textos persuasivos', 
'Los textos persuasivos suelen comenzar con una frase que capte la atención del lector y presenten argumentos sólidos en su desarrollo.',
NULL, NULL, NULL, 
'¿Qué aparece usualmente al inicio de un texto persuasivo?', 
'A summarized conclusion', 
'A rhetorical question or strong statement', 
'A list of references', 
'A table of contents', 'B', 4, 7, 'A persuasive text'),

('INGLÉS', NULL, 'Propósito de los textos persuasivos', 
'Los textos persuasivos, como los anuncios, buscan influenciar decisiones del lector, como comprar un producto o cambiar de opinión.',
NULL, NULL, NULL, 
'¿Cuál es el objetivo principal de un anuncio publicitario persuasivo?', 
'To teach history', 
'To explain a process', 
'To convince someone to buy something', 
'To describe a person', 'C', 4, 7, 'A persuasive text'),

('INGLÉS', NULL, 'Técnicas de persuasión', 
'Los autores de textos persuasivos usan estrategias como el uso de celebridades, emociones o datos para convencer al lector.',
NULL, NULL, NULL, 
'¿Cuál es una técnica común en textos persuasivos?', 
'Show only one side', 
'Use celebrity endorsements', 
'Avoid emotions', 
'Give incomplete information', 'B', 4, 7, 'A persuasive text');
