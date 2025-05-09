--PREGUNTAS MATEMÁTICA 4° SECUNDARIA
-- Preguntas sobre Leyes de exponentes
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Simplificación de potencias', 'Las leyes de exponentes son fundamentales para simplificar expresiones algebraicas. Considera la siguiente expresión: (x³·x⁴)². Al aplicar correctamente las propiedades de los exponentes, podemos reducir esta expresión a una forma más simple.', NULL, NULL, NULL, '¿Cuál es la forma simplificada de (x³·x⁴)²?', 'x¹⁴', 'x²⁴', 'x⁷', 'x¹²', 'A', 5, 10, 'Leyes de exponentes'),
('MATEMÁTICA', NULL, 'División de potencias', 'Cuando dividimos potencias con la misma base, los exponentes se restan. Esta propiedad es muy útil para simplificar fracciones algebraicas. Analiza la expresión: (5⁸)/(5³).', NULL, NULL, NULL, '¿Cuál es el resultado de (5⁸)/(5³)?', '5⁵', '5¹¹', '5²⁴', '5⁰', 'A', 5, 10, 'Leyes de exponentes'),
('MATEMÁTICA', NULL, 'Potencia de una potencia', 'La propiedad de potencia de una potencia establece que (aⁿ)ᵐ = aⁿᵐ. Esta ley es esencial para resolver problemas más complejos de álgebra.', NULL, NULL, NULL, 'Simplifica la expresión (y²)⁵', 'y⁷', 'y¹⁰', 'y²⁵', 'y³', 'B', 5, 10, 'Leyes de exponentes'),
('MATEMÁTICA', NULL, 'Multiplicación con misma base', 'Al multiplicar potencias con la misma base, los exponentes se suman. Esta es una de las propiedades más básicas pero importantes de los exponentes.', NULL, NULL, NULL, '¿Cuál es el resultado de z⁴·z⁶?', 'z²⁴', 'z¹⁰', 'z²', 'z⁴⁶', 'B', 5, 10, 'Leyes de exponentes'),
('MATEMÁTICA', NULL, 'Exponente cero', 'Cualquier número elevado a la potencia cero es igual a 1, excepto cuando la base es cero. Esta propiedad es fundamental en álgebra.', NULL, NULL, NULL, '¿Cuál es el valor de 7⁰ + 3⁰?', '0', '1', '2', '10', 'C', 5, 10, 'Leyes de exponentes');

-- Preguntas sobre Exponentes racionales
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Raíces como exponentes', 'Los exponentes racionales representan raíces. Por ejemplo, x^(1/2) es equivalente a √x. Esta relación es fundamental para convertir entre notación radical y exponencial.', NULL, NULL, NULL, '¿Cómo se expresa ∛y en forma de exponente racional?', 'y^(1/2)', 'y^(1/3)', 'y^3', 'y^(-3)', 'B', 5, 10, 'Exponentes racionales'),
('MATEMÁTICA', NULL, 'Conversión a forma radical', 'Los exponentes fraccionarios pueden convertirse a notación radical y viceversa. Esta habilidad es necesaria para simplificar expresiones complejas.', NULL, NULL, NULL, '¿Cuál es la forma radical de 5^(3/4)?', '⁴√5³', '³√5⁴', '√(5/4)', '5√3', 'A', 5, 10, 'Exponentes racionales'),
('MATEMÁTICA', NULL, 'Simplificación con exponentes', 'Al simplificar expresiones con exponentes racionales, a menudo podemos aplicar las mismas leyes que con exponentes enteros.', NULL, NULL, NULL, 'Simplifica la expresión (a^(2/3))^(3/4)', 'a^(1/2)', 'a^(2/7)', 'a^(6/12)', 'a^(5/12)', 'A', 5, 10, 'Exponentes racionales'),
('MATEMÁTICA', NULL, 'Evaluación de expresiones', 'Evaluar expresiones con exponentes racionales requiere comprender tanto las propiedades de los exponentes como las operaciones con radicales.', NULL, NULL, NULL, '¿Cuál es el valor de 8^(2/3)?', '2', '4', '16', '64', 'B', 5, 10, 'Exponentes racionales'),
('MATEMÁTICA', NULL, 'Operaciones combinadas', 'Las operaciones con exponentes racionales pueden combinarse con otras operaciones algebraicas para formar expresiones más complejas.', NULL, NULL, NULL, 'Resuelve: (16^(1/4) + 27^(1/3))^2', '9', '16', '25', '36', 'C', 5, 10, 'Exponentes racionales');

-- Preguntas sobre Factorización y simplificación usando exponentes
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Factor común con exponentes', 'Factorizar expresiones algebraicas utilizando exponentes es una técnica fundamental en álgebra. El primer paso suele ser identificar el factor común con el menor exponente.', NULL, NULL, NULL, 'Factoriza completamente: 6x³y² - 9x²y⁴', '3x²y²(2x - 3y²)', '3xy(2x²y - 3xy³)', '6x²y²(x - 1.5y²)', 'x²y²(6x - 9y²)', 'A', 5, 10, 'Factorización y simplificación usando exponentes'),
('MATEMÁTICA', NULL, 'Diferencia de cuadrados', 'La diferencia de cuadrados es un caso especial de factorización que sigue el patrón a² - b² = (a + b)(a - b). Esta técnica es muy útil para simplificar expresiones.', NULL, NULL, NULL, 'Factoriza: 25x⁴ - 16y⁶', '(5x² + 4y³)(5x² - 4y³)', '(5x + 4y)(5x - 4y)', '(25x² + 16y³)(x² - y³)', '(5x² + 4y³)²', 'A', 5, 10, 'Factorización y simplificación usando exponentes'),
('MATEMÁTICA', NULL, 'Simplificación de fracciones', 'Simplificar fracciones algebraicas implica factorizar numerador y denominador, luego cancelar factores comunes. Los exponentes juegan un papel crucial en este proceso.', NULL, NULL, NULL, 'Simplifica: (x⁴ - y⁴)/(x² - y²)', 'x² + y²', 'x² - y²', '(x² + y²)(x² - y²)', 'x⁴ - y⁴', 'A', 5, 10, 'Factorización y simplificación usando exponentes'),
('MATEMÁTICA', NULL, 'Trinomio cuadrado perfecto', 'Reconocer trinomios cuadrados perfectos es esencial para factorizar eficientemente. Estos siguen el patrón a² ± 2ab + b² = (a ± b)².', NULL, NULL, NULL, 'Factoriza: 9x² + 12xy + 4y²', '(3x + 2y)²', '(9x + 4y)²', '(3x + 2y)(3x - 2y)', '3x(3x + 4y) + 4y²', 'A', 5, 10, 'Factorización y simplificación usando exponentes'),
('MATEMÁTICA', NULL, 'Suma de cubos', 'La suma de cubos sigue el patrón a³ + b³ = (a + b)(a² - ab + b²). Esta fórmula es útil para factorizar expresiones cúbicas.', NULL, NULL, NULL, 'Factoriza: 8x³ + 27y³', '(2x + 3y)(4x² - 6xy + 9y²)', '(2x + 3y)³', '(4x² + 9y²)(2x + 3y)', '2x(4x²) + 3y(9y²)', 'A', 5, 10, 'Factorización y simplificación usando exponentes');

-- Preguntas sobre Ecuaciones exponenciales
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Ecuación básica exponencial', 'Las ecuaciones exponenciales son aquellas donde la incógnita aparece en el exponente. Resolverlas requiere a menudo igualar las bases para poder comparar los exponentes.', NULL, NULL, NULL, 'Resuelve para x: 2^(x+1) = 16', '2', '3', '4', '5', 'B', 5, 10, 'Ecuaciones exponenciales'),
('MATEMÁTICA', NULL, 'Igualación de bases', 'Cuando las bases son diferentes pero pueden expresarse como potencias de una base común, podemos resolver la ecuación exponencial igualando los exponentes.', NULL, NULL, NULL, 'Resuelve para x: 9^x = 27^(x-1)', '1', '2', '3', '4', 'C', 5, 10, 'Ecuaciones exponenciales'),
('MATEMÁTICA', NULL, 'Ecuación con exponentes compuestos', 'Algunas ecuaciones exponenciales requieren manipulación algebraica antes de poder resolver el exponente. Esto puede incluir factorización o sustitución.', NULL, NULL, NULL, 'Resuelve para x: 4^(2x-1) = 64', '1', '1.25', '1.5', '2', 'B', 5, 10, 'Ecuaciones exponenciales'),
('MATEMÁTICA', NULL, 'Aplicación de logaritmos', 'Cuando no es posible igualar las bases, podemos aplicar logaritmos para resolver ecuaciones exponenciales. Esta técnica es poderosa pero requiere cuidado.', NULL, NULL, NULL, 'Resuelve para x (aproximado a 2 decimales): 5^x = 100', '2.86', '3.21', '4.00', '2.43', 'A', 5, 10, 'Ecuaciones exponenciales'),
('MATEMÁTICA', NULL, 'Ecuación exponencial con fracciones', 'Las ecuaciones exponenciales pueden involucrar fracciones, lo que añade complejidad al proceso de resolución. Es importante manejar cuidadosamente las propiedades de los exponentes.', NULL, NULL, NULL, 'Resuelve para x: (1/8)^x = 32^(x+1)', '-3/5', '-5/3', '3/5', '5/3', 'B', 5, 10, 'Ecuaciones exponenciales');

-- Preguntas sobre Funciones exponenciales
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Identificación de funciones', 'Las funciones exponenciales tienen la forma f(x) = a·b^x, donde b > 0 y b ≠ 1. Reconocer estas funciones es el primer paso para trabajar con ellas.', NULL, NULL, NULL, '¿Cuál de las siguientes es una función exponencial?', 'f(x) = x² + 3x - 2', 'f(x) = 2·3^x', 'f(x) = 5/x', 'f(x) = √x', 'B', 5, 10, 'Funciones exponenciales'),
('MATEMÁTICA', NULL, 'Crecimiento exponencial', 'Las funciones exponenciales modelan crecimiento cuando la base es mayor que 1. Estas funciones crecen cada vez más rápido a medida que x aumenta.', NULL, NULL, NULL, '¿Cuál función representa crecimiento exponencial?', 'f(x) = (0.5)^x', 'f(x) = 3·(1.2)^x', 'f(x) = (-2)^x', 'f(x) = x³', 'B', 5, 10, 'Funciones exponenciales'),
('MATEMÁTICA', NULL, 'Decaimiento exponencial', 'Las funciones exponenciales modelan decaimiento cuando la base está entre 0 y 1. Estas funciones disminuyen acercándose a cero pero nunca lo alcanzan.', NULL, NULL, NULL, '¿Cuál función representa decaimiento exponencial?', 'f(x) = (1.05)^x', 'f(x) = (2/3)^x', 'f(x) = x^(-2)', 'f(x) = 5 - x', 'B', 5, 10, 'Funciones exponenciales'),
('MATEMÁTICA', NULL, 'Evaluación de funciones', 'Evaluar funciones exponenciales en puntos específicos ayuda a comprender su comportamiento y a graficarlas correctamente.', NULL, NULL, NULL, 'Si f(x) = 2·4^x, ¿cuál es el valor de f(2)?', '16', '32', '64', '128', 'B', 5, 10, 'Funciones exponenciales'),
('MATEMÁTICA', NULL, 'Intersección con el eje y', 'Todas las funciones exponenciales de la forma f(x) = a·b^x intersecan el eje y en el punto (0, a), ya que b^0 = 1 para cualquier b ≠ 0.', NULL, NULL, NULL, '¿En qué punto interseca al eje y la función f(x) = 5·2^x?', '(0, 0)', '(0, 1)', '(0, 2)', '(0, 5)', 'D', 5, 10, 'Funciones exponenciales');

-- Preguntas sobre Crecimiento y decrecimiento de funciones exponenciales
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Tasa de crecimiento', 'La tasa de crecimiento de una función exponencial está determinada por su base. Una base mayor que 1 indica crecimiento, mientras que una base entre 0 y 1 indica decrecimiento.', NULL, NULL, NULL, '¿Cuál de las siguientes funciones tiene la mayor tasa de crecimiento?', 'f(x) = 1.5^x', 'f(x) = 2^x', 'f(x) = 3^x', 'f(x) = 1.8^x', 'C', 5, 10, 'Crecimiento y decrecimiento de funciones exponenciales'),
('MATEMÁTICA', NULL, 'Comparación de funciones', 'Comparar funciones exponenciales con diferentes bases nos permite entender cómo cambian sus tasas de crecimiento relativo.', NULL, NULL, NULL, '¿Qué función decrece más rápidamente?', 'f(x) = (0.9)^x', 'f(x) = (0.5)^x', 'f(x) = (0.7)^x', 'f(x) = (0.3)^x', 'D', 5, 10, 'Crecimiento y decrecimiento de funciones exponenciales'),
('MATEMÁTICA', NULL, 'Modelado de situaciones reales', 'Las funciones exponenciales modelan situaciones reales como crecimiento poblacional, desintegración radiactiva o interés compuesto.', NULL, NULL, NULL, 'Una población de bacterias se duplica cada hora. Si inicialmente hay 100 bacterias, ¿qué función modela este crecimiento?', 'P(t) = 100 + 2t', 'P(t) = 100·2^t', 'P(t) = 100·t²', 'P(t) = 100·(1/2)^t', 'B', 5, 10, 'Crecimiento y decrecimiento de funciones exponenciales'),
('MATEMÁTICA', NULL, 'Identificación de comportamiento', 'El comportamiento a largo plazo de una función exponencial depende críticamente de su base y de si es crecimiento o decrecimiento.', NULL, NULL, NULL, '¿Qué ocurre con f(x) = (0.6)^x cuando x tiende a infinito?', 'Tiende a infinito', 'Tiende a 0', 'Tiende a 1', 'Oscila indefinidamente', 'B', 5, 10, 'Crecimiento y decrecimiento de funciones exponenciales'),
('MATEMÁTICA', NULL, 'Tasa de decrecimiento', 'La rapidez con que una función exponencial decrece depende de qué tan cerca está su base de 0. Mientras más pequeña, más rápido decrece.', NULL, NULL, NULL, '¿Cuál función decrece más lentamente?', 'f(x) = (0.4)^x', 'f(x) = (0.8)^x', 'f(x) = (0.2)^x', 'f(x) = (0.1)^x', 'B', 5, 10, 'Crecimiento y decrecimiento de funciones exponenciales');

-- Preguntas sobre La función exponencial natural: y=e^x
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('MATEMÁTICA', NULL, 'Propiedades de e^x', 'La función exponencial natural f(x) = e^x tiene propiedades únicas, como que su derivada es igual a sí misma. Esta función aparece en muchos contextos de matemáticas y ciencias.', NULL, NULL, NULL, '¿Cuál es el valor de e^0?', '0', '1', 'e', 'Indefinido', 'B', 5, 10, 'La función exponencial natural: y=e^x'),
('MATEMÁTICA', NULL, 'Crecimiento de e^x', 'La función e^x crece más rápido que cualquier función polinómica cuando x tiende a infinito. Esta propiedad la hace útil para modelar crecimiento acelerado.', NULL, NULL, NULL, '¿Qué ocurre con e^x cuando x tiende a infinito?', 'Tiende a 0', 'Tiende a 1', 'Tiende a infinito', 'Oscila', 'C', 5, 10, 'La función exponencial natural: y=e^x'),
('MATEMÁTICA', NULL, 'Comparación con otras funciones', 'Comparar e^x con otras funciones exponenciales ayuda a entender su comportamiento relativo y sus tasas de crecimiento.', NULL, NULL, NULL, '¿Cuál función crece más rápido cuando x aumenta?', 'f(x) = 2^x', 'f(x) = e^x', 'f(x) = 3^x', 'f(x) = 10^x', 'D', 5, 10, 'La función exponencial natural: y=e^x'),
('MATEMÁTICA', NULL, 'Transformaciones de e^x', 'Como otras funciones, e^x puede transformarse mediante desplazamientos, reflexiones y escalamientos, cambiando su gráfica pero manteniendo su forma exponencial.', NULL, NULL, NULL, '¿Cuál es la gráfica de f(x) = -e^x?', 'Una reflexión sobre el eje x de e^x', 'Una reflexión sobre el eje y de e^x', 'Un desplazamiento hacia arriba de e^x', 'Un desplazamiento hacia la derecha de e^x', 'A', 5, 10, 'La función exponencial natural: y=e^x'),
('MATEMÁTICA', NULL, 'Aplicaciones de e^x', 'La función exponencial natural modela fenómenos como el crecimiento continuo, la desintegración radiactiva y los circuitos eléctricos.', NULL, NULL, NULL, 'Si una sustancia radiactiva decae según A(t) = A₀e^(-kt), ¿qué representa A₀?', 'La tasa de decaimiento', 'La cantidad inicial', 'El tiempo de vida media', 'La cantidad final', 'B', 5, 10, 'La función exponencial natural: y=e^x');

-- Preguntas sobre Logaritmos en base 10
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cálculo de logaritmo base 10', 
'El logaritmo en base 10 es una herramienta fundamental en matemáticas que nos permite resolver problemas de escalas y magnitudes. Por ejemplo, la escala Richter para medir terremotos utiliza logaritmos base 10. Calcula el valor del siguiente logaritmo:', 
NULL, NULL, NULL, '¿Cuál es el valor de log₁₀(1000)?', 
'2', '3', '4', '5', 'B', 5, 10, 'Logaritmos en base 10'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Aplicación de logaritmos', 
'Los logaritmos en base 10 son ampliamente utilizados en ciencia e ingeniería para manejar números muy grandes o muy pequeños. Resuelve el siguiente problema:', 
NULL, NULL, NULL, 'Si el pH de una solución se define como -log₁₀[H⁺], ¿cuál es el pH de una solución con [H⁺] = 0.0001?', 
'2', '3', '4', '5', 'C', 5, 10, 'Logaritmos en base 10'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Comparación de logaritmos', 
'Al trabajar con logaritmos en base 10, es importante comprender cómo varían sus valores según el argumento. Analiza las siguientes opciones:', 
NULL, NULL, NULL, '¿Cuál de los siguientes logaritmos es el mayor?', 
'log₁₀(50)', 'log₁₀(100)', 'log₁₀(200)', 'log₁₀(1000)', 'D', 5, 10, 'Logaritmos en base 10'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Propiedades de logaritmos', 
'Los logaritmos en base 10 tienen propiedades especiales que facilitan los cálculos. Considera la siguiente situación:', 
NULL, NULL, NULL, 'Si log₁₀(2) ≈ 0.3010, ¿cuál es el valor aproximado de log₁₀(20)?', 
'1.3010', '2.3010', '0.6020', '1.6980', 'A', 5, 10, 'Logaritmos en base 10'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Resolución con logaritmos', 
'Los logaritmos nos permiten resolver ecuaciones exponenciales de forma eficiente. Resuelve el siguiente problema:', 
NULL, NULL, NULL, '¿Para qué valor de x se cumple que 10ˣ = 10000?', 
'2', '3', '4', '5', 'C', 5, 10, 'Logaritmos en base 10'),

-- Preguntas sobre Logaritmos en base a
('MATEMÁTICA', NULL, 'Definición de logaritmo en base a', 
'Los logaritmos no solo existen en base 10, sino que pueden tener cualquier base positiva diferente de 1. Comprender esta generalización es fundamental para el álgebra avanzada.', 
NULL, NULL, NULL, 'Según la definición, si logₐ(b) = c, entonces:', 
'a = b^c', 'b = a^c', 'c = a^b', 'a = c^b', 'B', 5, 10, 'Logaritmos en base a'),

('MATEMÁTICA', NULL, 'Cálculo con base diferente', 
'El cálculo de logaritmos en bases diferentes a 10 requiere un entendimiento claro de la definición. Resuelve el siguiente problema:', 
NULL, NULL, NULL, '¿Cuál es el valor de log₃(81)?', 
'3', '4', '5', '6', 'B', 5, 10, 'Logaritmos en base a'),

('MATEMÁTICA', NULL, 'Comparación de logaritmos en base a', 
'Al cambiar la base de los logaritmos, sus propiedades y valores se modifican. Analiza cuidadosamente las siguientes opciones:', 
NULL, NULL, NULL, 'Si a > 1, ¿cuál de las siguientes afirmaciones es verdadera sobre logₐ(x)?', 
'Crece cuando x decrece', 'Es negativo para x > 1', 'Es positivo para x > 1', 'Es constante para todo x', 'C', 5, 10, 'Logaritmos en base a'),

('MATEMÁTICA', NULL, 'Cambio de base', 
'Los logaritmos en diferentes bases están relacionados entre sí. Esta propiedad es útil para calcular logaritmos en bases poco comunes.', 
NULL, NULL, NULL, 'Si log₅(2) ≈ 0.4307, ¿cuál es el valor aproximado de log₂(5) usando la regla de cambio de base?', 
'1.4307', '2.3219', '0.4307', '0.6989', 'B', 5, 10, 'Logaritmos en base a'),

('MATEMÁTICA', NULL, 'Ecuación logarítmica', 
'Las ecuaciones logarítmicas permiten resolver problemas donde la incógnita aparece en el exponente. Resuelve la siguiente ecuación:', 
NULL, NULL, NULL, '¿Cuál es el valor de x en la ecuación log₄(x) = 3?', 
'12', '64', '81', '256', 'B', 5, 10, 'Logaritmos en base a'),

-- Preguntas sobre Leyes de logaritmos
('MATEMÁTICA', NULL, 'Ley del producto', 
'Las leyes de los logaritmos simplifican expresiones complejas y permiten resolver ecuaciones difíciles. La primera ley trata sobre el logaritmo de un producto.', 
NULL, NULL, NULL, 'Según la ley del producto, logₐ(M·N) es igual a:', 
'logₐ(M) + logₐ(N)', 'logₐ(M) - logₐ(N)', 'logₐ(M) · logₐ(N)', 'logₐ(M) / logₐ(N)', 'A', 5, 10, 'Leyes de logaritmos'),

('MATEMÁTICA', NULL, 'Ley del cociente', 
'La segunda ley de los logaritmos se refiere al logaritmo de un cociente y es esencial para simplificar fracciones logarítmicas.', 
NULL, NULL, NULL, 'De acuerdo con la ley del cociente, logₐ(M/N) es igual a:', 
'logₐ(M) + logₐ(N)', 'logₐ(M) - logₐ(N)', 'logₐ(M) · logₐ(N)', 'logₐ(M) / logₐ(N)', 'B', 5, 10, 'Leyes de logaritmos'),

('MATEMÁTICA', NULL, 'Ley de la potencia', 
'La tercera ley de los logaritmos permite manejar exponentes dentro de los argumentos logarítmicos, facilitando muchos cálculos.', 
NULL, NULL, NULL, 'Según la ley de la potencia, logₐ(M^p) es igual a:', 
'p · logₐ(M)', 'logₐ(p) · logₐ(M)', 'p + logₐ(M)', 'p - logₐ(M)', 'A', 5, 10, 'Leyes de logaritmos'),

('MATEMÁTICA', NULL, 'Aplicación de múltiples leyes', 
'Al combinar las diferentes leyes de los logaritmos, podemos simplificar expresiones complejas. Intenta simplificar la siguiente expresión:', 
NULL, NULL, NULL, 'Simplifica logₐ(x²y³/z⁴):', 
'2logₐ(x) + 3logₐ(y) - 4logₐ(z)', 'logₐ(2x + 3y - 4z)', '6logₐ(xyz) - 4logₐ(z)', '2logₐ(x) · 3logₐ(y) / 4logₐ(z)', 'A', 5, 10, 'Leyes de logaritmos'),

('MATEMÁTICA', NULL, 'Identificación de leyes', 
'Reconocer qué ley logarítmica se está aplicando es fundamental para resolver problemas correctamente. Analiza la siguiente transformación:', 
NULL, NULL, NULL, '¿Qué ley se aplicó para pasar de logₐ(x⁵) a 5logₐ(x)?', 
'Ley del producto', 'Ley del cociente', 'Ley de la potencia', 'Ley de cambio de base', 'C', 5, 10, 'Leyes de logaritmos'),

-- Preguntas sobre Ecuaciones exponenciales usando logaritmos
('MATEMÁTICA', NULL, 'Resolución básica de ecuación exponencial', 
'Los logaritmos son la herramienta perfecta para resolver ecuaciones donde la incógnita está en el exponente. Resuelve la siguiente ecuación:', 
NULL, NULL, NULL, 'Resuelve para x: 3ˣ = 81', 
'2', '3', '4', '5', 'C', 5, 10, 'Ecuaciones exponenciales usando logaritmos'),

('MATEMÁTICA', NULL, 'Ecuación con base diferente', 
'Cuando las bases no son iguales, los logaritmos permiten igualar los exponentes. Resuelve el siguiente problema:', 
NULL, NULL, NULL, 'Resuelve para x: 5ˣ⁺¹ = 25²ˣ⁻³', 
'1', '2', '3', '4', 'B', 5, 10, 'Ecuaciones exponenciales usando logaritmos'),

('MATEMÁTICA', NULL, 'Ecuación con logaritmos naturales', 
'En algunos casos, es conveniente usar logaritmos naturales para resolver ecuaciones exponenciales. Considera la siguiente ecuación:', 
NULL, NULL, NULL, 'Resuelve para x: e²ˣ = 7 (redondea a dos decimales)', 
'0.97', '1.05', '1.25', '1.45', 'A', 5, 10, 'Ecuaciones exponenciales usando logaritmos'),

('MATEMÁTICA', NULL, 'Aplicación en problemas reales', 
'Las ecuaciones exponenciales modelan muchos fenómenos naturales. Resuelve este problema de crecimiento poblacional:', 
NULL, NULL, NULL, 'Una población crece según P(t) = P₀·2ᵗ. ¿En qué tiempo t se duplicará la población?', 
'0.5', '1', '1.5', '2', 'B', 5, 10, 'Ecuaciones exponenciales usando logaritmos'),

('MATEMÁTICA', NULL, 'Ecuación con coeficiente', 
'Cuando la ecuación exponencial tiene un coeficiente, los logaritmos siguen siendo útiles para encontrar la solución.', 
NULL, NULL, NULL, 'Resuelve para x: 4·3ˣ = 108', 
'2', '3', '4', '5', 'B', 5, 10, 'Ecuaciones exponenciales usando logaritmos'),

-- Preguntas sobre Logaritmos: Regla de cambio de base
('MATEMÁTICA', NULL, 'Fórmula de cambio de base', 
'La regla de cambio de base permite calcular logaritmos en cualquier base usando logaritmos en una base conocida. Es una herramienta muy útil en cálculo.', 
NULL, NULL, NULL, 'La fórmula de cambio de base establece que logₐ(b) es igual a:', 
'log(b)/log(a)', 'log(a)/log(b)', 'ln(a)/ln(b)', 'logₐ(10)/log_b(10)', 'A', 5, 10, 'Logaritmos: Regla de cambio de base'),

('MATEMÁTICA', NULL, 'Cálculo con cambio de base', 
'Aplicar correctamente la regla de cambio de base permite resolver problemas con calculadoras que solo tienen logaritmos en base 10 o e.', 
NULL, NULL, NULL, 'Usando cambio de base, calcula log₅(25) con logaritmos base 10 (log(5)≈0.6990, log(25)≈1.3979)', 
'1', '2', '3', '4', 'B', 5, 10, 'Logaritmos: Regla de cambio de base'),

('MATEMÁTICA', NULL, 'Comparación con cambio de base', 
'El cambio de base permite comparar logaritmos con diferentes bases, lo que es útil en análisis matemático.', 
NULL, NULL, NULL, 'Usando cambio de base, ¿cuál es mayor entre log₂(5) y log₅(2)?', 
'son iguales', 'log₂(5)', 'log₅(2)', 'no se puede determinar', 'B', 5, 10, 'Logaritmos: Regla de cambio de base'),

('MATEMÁTICA', NULL, 'Aplicación en derivadas', 
'El cambio de base es especialmente útil en cálculo diferencial cuando se trabaja con derivadas de funciones logarítmicas.', 
NULL, NULL, NULL, 'Al cambiar log₃(x) a base e usando cambio de base, obtenemos:', 
'ln(x)/ln(3)', 'ln(3)/ln(x)', 'logₑ(x)/logₑ(3)', '1/ln(3x)', 'A', 5, 10, 'Logaritmos: Regla de cambio de base'),

('MATEMÁTICA', NULL, 'Simplificación con cambio de base', 
'En algunos casos, el cambio de base puede simplificar expresiones complejas que involucran múltiples logaritmos.', 
NULL, NULL, NULL, 'Simplifica log₄(8) usando cambio de base a 2:', 
'2/3', '3/2', '1/2', '2', 'B', 5, 10, 'Logaritmos: Regla de cambio de base'),

-- Preguntas sobre Funciones logarítmicas
('MATEMÁTICA', NULL, 'Dominio de función logarítmica', 
'Las funciones logarítmicas tienen restricciones en su dominio que es importante comprender para trabajar con ellas correctamente.', 
NULL, NULL, NULL, '¿Cuál es el dominio de la función f(x) = log₃(x - 2)?', 
'Todos los reales', 'x > 0', 'x > 2', 'x ≥ 2', 'C', 5, 10, 'Funciones logarítmicas'),

('MATEMÁTICA', NULL, 'Gráfica de función logarítmica', 
'Las gráficas de funciones logarítmicas tienen características especiales que las diferencian de otras funciones.', 
NULL, NULL, NULL, '¿Cuál de las siguientes afirmaciones sobre f(x) = logₐ(x) es verdadera cuando a > 1?', 
'Pasa por (0,0)', 'Tiene una asíntota vertical en x=1', 'Es decreciente', 'Tiene una asíntota horizontal en y=0', 'D', 5, 10, 'Funciones logarítmicas'),

('MATEMÁTICA', NULL, 'Intersección con ejes', 
'Encontrar los puntos de intersección con los ejes es fundamental para graficar funciones logarítmicas.', 
NULL, NULL, NULL, '¿En qué punto la función f(x) = log₂(x + 4) interseca al eje x?', 
'(-3,0)', '(-4,0)', '(0,2)', '(1,0)', 'A', 5, 10, 'Funciones logarítmicas'),

('MATEMÁTICA', NULL, 'Transformación de funciones', 
'Las transformaciones (desplazamientos, estiramientos) aplican también a funciones logarítmicas.', 
NULL, NULL, NULL, 'Si g(x) = 3 + log₂(x - 1), ¿cuál es la asíntota vertical?', 
'x = 0', 'x = 1', 'x = 2', 'x = 3', 'B', 5, 10, 'Funciones logarítmicas'),

('MATEMÁTICA', NULL, 'Función inversa', 
'Las funciones logarítmicas son inversas de las funciones exponenciales, una relación fundamental en matemáticas.', 
NULL, NULL, NULL, '¿Cuál es la inversa de la función f(x) = 5ˣ?', 
'f⁻¹(x) = x⁵', 'f⁻¹(x) = log₅(x)', 'f⁻¹(x) = ln(x)/ln(5)', 'f⁻¹(x) = 1/5ˣ', 'B', 5, 10, 'Funciones logarítmicas'),

-- Preguntas sobre Funciones logarítmicas: Crecimiento y decrecimiento
('MATEMÁTICA', NULL, 'Identificación de crecimiento', 
'El comportamiento de crecimiento o decrecimiento de una función logarítmica depende crucialmente de su base.', 
NULL, NULL, NULL, '¿Para qué valores de a la función f(x) = logₐ(x) es creciente?', 
'0 < a < 1', 'a > 1', 'a < 0', 'para todo a ≠ 1', 'B', 5, 10, 'Funciones logarítmicas: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Comparación de tasas', 
'Diferentes bases producen diferentes tasas de crecimiento en las funciones logarítmicas.', 
NULL, NULL, NULL, '¿Cuál de las siguientes funciones crece más lentamente?', 
'	', 'f(x) = log₅(x)', 'f(x) = log₁₀(x)', 'f(x) = ln(x)', 'C', 5, 10, 'Funciones logarítmicas: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Comportamiento en el infinito', 
'Comprender el comportamiento de las funciones logarítmicas cuando x tiende a infinito es importante para análisis avanzado.', 
NULL, NULL, NULL, 'Cuando x → ∞, ¿cómo se comporta f(x) = log₃(x)?', 
'Tiende a 0', 'Tiende a 3', 'Tiende a ∞', 'Tiende a -∞', 'C', 5, 10, 'Funciones logarítmicas: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Función decreciente', 
'Las funciones logarítmicas pueden ser decrecientes bajo ciertas condiciones en su base.', 
NULL, NULL, NULL, '¿Cuál de las siguientes funciones es decreciente?', 
'f(x) = log₅(x)', 'f(x) = log₁/₂(x)', 'f(x) = ln(x)', 'f(x) = log₁₀(x)', 'B', 5, 10, 'Funciones logarítmicas: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Concavidad de la función', 
'La concavidad es otra propiedad importante de las funciones logarítmicas que afecta su gráfica y aplicaciones.', 
NULL, NULL, NULL, 'Para a > 1, la función f(x) = logₐ(x) es:', 
'Cóncava hacia arriba', 'Cóncava hacia abajo', 'Lineal', 'No tiene concavidad definida', 'B', 5, 10, 'Funciones logarítmicas: Crecimiento y decrecimiento');

-- Preguntas para el tema: Correlación lineal de variables dimensionales
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Relación entre estatura y peso', 
'En un estudio sobre el desarrollo físico de adolescentes, se midió la estatura (en cm) y el peso (en kg) de 20 estudiantes de 4to año. Se observó que a mayor estatura, generalmente mayor peso. ¿Qué tipo de correlación describe mejor esta relación?', 
NULL, NULL, NULL, 
'¿Qué tipo de correlación lineal existe entre estas variables dimensionales?', 
'Correlación positiva fuerte', 'Correlación negativa moderada', 
'No hay correlación significativa', 'Correlación positiva perfecta', 
'B', 5, 10, 'Correlación lineal de variables dimensionales'),

('MATEMÁTICA', NULL, 'Variables en investigación médica', 
'Un investigador está analizando la relación entre la dosis de un medicamento (en mg) y el tiempo de recuperación (en horas) de pacientes con cierta condición. Al graficar los datos, observa que a mayor dosis, menor tiempo de recuperación.', 
NULL, NULL, NULL, 
'¿Qué tipo de correlación se espera encontrar entre estas variables dimensionales?', 
'Correlación positiva', 'Correlación negativa', 
'Correlación nula', 'Correlación curvilínea', 
'D', 5, 10, 'Correlación lineal de variables dimensionales'),

('MATEMÁTICA', NULL, 'Análisis de datos económicos', 
'En economía, se estudia frecuentemente la relación entre el ingreso familiar (en dólares) y el gasto en alimentación (en dólares). Generalmente, se observa que familias con mayores ingresos gastan más en alimentación, pero no proporcionalmente.', 
NULL, NULL, NULL, 
'¿Qué característica tiene esta correlación entre variables dimensionales?', 
'Es una correlación positiva perfecta', 'Es una correlación negativa fuerte', 
'Es una correlación positiva pero no perfecta', 'No existe correlación alguna', 
'C', 5, 10, 'Correlación lineal de variables dimensionales'),

('MATEMÁTICA', NULL, 'Estudio ambiental', 
'Un científico ambiental está investigando la relación entre la temperatura ambiental (en °C) y el consumo de energía eléctrica (en kWh) en una ciudad durante el verano. Los datos muestran que a mayor temperatura, mayor consumo de energía.', 
NULL, NULL, NULL, 
'¿Qué tipo de correlación lineal describe mejor esta relación?', 
'Correlación inversa', 'Correlación directa', 
'Correlación nula', 'Correlación exponencial', 
'A', 5, 10, 'Correlación lineal de variables dimensionales'),

('MATEMÁTICA', NULL, 'Datos educativos', 
'En un colegio se analizó la relación entre las horas semanales de estudio (variable X) y el rendimiento académico (variable Y, en escala de 0 a 20) de los estudiantes de 4to año. Los resultados mostraron cierta tendencia positiva pero con muchos puntos dispersos.', 
NULL, NULL, NULL, 
'¿Cómo se clasificaría la correlación entre estas variables dimensionales?', 
'Correlación positiva fuerte', 'Correlación negativa débil', 
'Correlación positiva débil', 'Correlación perfecta', 
'B', 5, 10, 'Correlación lineal de variables dimensionales'),

-- Preguntas para el tema: Coeficiente de correlación r
('MATEMÁTICA', NULL, 'Interpretación del coeficiente r', 
'En un análisis estadístico se calculó el coeficiente de correlación r entre dos variables obteniendo un valor de 0.85. Este valor indica una relación lineal importante entre las variables estudiadas.', 
NULL, NULL, NULL, 
'¿Qué podemos concluir sobre la relación entre las variables con este valor de r?', 
'No hay relación lineal entre las variables', 'Existe una fuerte relación lineal positiva', 
'Existe una moderada relación lineal negativa', 'La relación es perfectamente inversa', 
'C', 5, 10, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Rango del coeficiente', 
'El coeficiente de correlación r de Pearson es una medida que cuantifica el grado de relación lineal entre dos variables cuantitativas. Sus valores pueden variar dentro de un rango específico.', 
NULL, NULL, NULL, 
'¿Entre qué valores puede variar el coeficiente de correlación r?', 
'Entre 0 y 1', 'Entre -1 y 1', 
'Entre -∞ y +∞', 'Entre 0 y 100', 
'A', 5, 10, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Correlación perfecta', 
'Si al calcular el coeficiente de correlación r entre dos variables X e Y se obtiene un valor de 1, esto indica que todos los puntos en el diagrama de dispersión caen exactamente sobre una línea recta con pendiente positiva.', 
NULL, NULL, NULL, 
'¿Qué significa un coeficiente de correlación r = -1?', 
'No hay relación entre las variables', 'Relación lineal perfecta positiva', 
'Relación lineal perfecta negativa', 'Relación no lineal perfecta', 
'B', 5, 10, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Correlación y causalidad', 
'En un estudio se encontró un coeficiente de correlación r = 0.92 entre el número de incendios forestales y el número de bomberos presentes en la zona. Un estudiante concluyó que enviar más bomberos causa más incendios.', 
NULL, NULL, NULL, 
'¿Es correcta esta interpretación del coeficiente de correlación?', 
'Sí, porque r es cercano a 1', 'No, correlación no implica causalidad', 
'Sólo si el valor de r es exactamente 1', 'Depende del tamaño de la muestra', 
'D', 5, 10, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Fuerza de la correlación', 
'Se han obtenido los siguientes coeficientes de correlación en diferentes estudios: r = 0.15, r = -0.78, r = 0.55, r = -0.32. Cada valor indica una diferente fuerza en la relación lineal entre las variables correspondientes.', 
NULL, NULL, NULL, 
'¿Cuál de estos coeficientes indica la relación lineal más fuerte?', 
'r = 0.15', 'r = -0.78', 
'r = 0.55', 'r = -0.32', 
'C', 5, 10, 'Coeficiente de correlación r'),

-- Preguntas para el tema: Diagrama de dispersión y recta de ajuste óptimo: método manual
('MATEMÁTICA', NULL, 'Identificación de patrones', 
'Al construir un diagrama de dispersión para dos variables X e Y, se observa que los puntos tienden a agruparse alrededor de una línea imaginaria que va desde la esquina inferior izquierda hasta la superior derecha del gráfico.', 
NULL, NULL, NULL, 
'¿Qué tipo de relación sugieren estos datos?', 
'Relación lineal negativa', 'Relación lineal positiva', 
'Relación cuadrática', 'Ninguna relación', 
'A', 5, 10, 'Diagrama de dispersión y recta de ajuste óptimo: método manual'),

('MATEMÁTICA', NULL, 'Método manual de ajuste', 
'Para encontrar la recta de ajuste óptimo manualmente en un diagrama de dispersión, se traza una línea que minimice las distancias verticales entre los puntos de datos y la línea misma.', 
NULL, NULL, NULL, 
'¿Qué nombre recibe este método de ajuste?', 
'Método de los mínimos cuadrados', 'Método de los máximos valores', 
'Método de interpolación lineal', 'Método de extrapolación', 
'B', 5, 10, 'Diagrama de dispersión y recta de ajuste óptimo: método manual'),

('MATEMÁTICA', NULL, 'Visualización de datos', 
'Un investigador ha recolectado datos sobre el número de horas de estudio y las calificaciones obtenidas por estudiantes en un examen. Antes de calcular cualquier medida estadística, decide graficar estos datos.', 
NULL, NULL, NULL, 
'¿Qué tipo de gráfico es el más adecuado para visualizar la relación entre estas dos variables?', 
'Diagrama de barras', 'Histograma', 
'Diagrama de dispersión', 'Gráfico circular', 
'C', 5, 10, 'Diagrama de dispersión y recta de ajuste óptimo: método manual'),

('MATEMÁTICA', NULL, 'Estimación visual', 
'Al trazar manualmente una recta de ajuste en un diagrama de dispersión, se busca que la línea pase lo más cerca posible de la mayoría de los puntos de datos, equilibrando los puntos que quedan por encima y por debajo de la línea.', 
NULL, NULL, NULL, 
'¿Qué característica debe tener una buena recta de ajuste manual?', 
'Debe pasar por el origen', 'Debe tener pendiente 1', 
'Debe minimizar las distancias verticales a los puntos', 'Debe tocar al menos el 50% de los puntos', 
'D', 5, 10, 'Diagrama de dispersión y recta de ajuste óptimo: método manual'),

('MATEMÁTICA', NULL, 'Limitaciones del método manual', 
'El método manual para trazar la recta de ajuste óptimo en un diagrama de dispersión es útil para una estimación rápida, pero tiene ciertas limitaciones en comparación con métodos numéricos más precisos.', 
NULL, NULL, NULL, 
'¿Cuál es la principal limitación del método manual para trazar la recta de ajuste?', 
'Requiere papel cuadriculado', 'Es subjetivo y depende de la percepción visual', 
'Solo funciona con más de 100 puntos de datos', 'No puede usarse con variables categóricas', 
'B', 5, 10, 'Diagrama de dispersión y recta de ajuste óptimo: método manual'),

-- Preguntas para el tema: Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones
('MATEMÁTICA', NULL, 'Forma general de la ecuación', 
'La ecuación de regresión lineal de Y sobre X tiene la forma ŷ = a + bx, donde ŷ es el valor predicho de Y, a es la intersección con el eje Y, b es la pendiente y x es el valor de la variable independiente.', 
NULL, NULL, NULL, 
'¿Qué representa el coeficiente b en esta ecuación?', 
'El valor de Y cuando X es cero', 'El cambio esperado en Y por cada unidad de cambio en X', 
'El coeficiente de correlación', 'El error estándar de la estimación', 
'C', 5, 10, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Predicción con regresión', 
'Se ha establecido la ecuación de regresión ŷ = 15 + 2.5x para predecir el rendimiento en matemáticas (Y) basado en las horas semanales de estudio (X). Un estudiante estudia 8 horas a la semana.', 
NULL, NULL, NULL, 
'¿Cuál sería la predicción para su rendimiento en matemáticas?', 
'20 puntos', '25 puntos', 
'35 puntos', '40 puntos', 
'D', 5, 10, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Interpretación de parámetros', 
'En la ecuación de regresión ŷ = 50 - 1.2x, que relaciona la temperatura (Y) con la altitud (X), los coeficientes tienen un significado específico en el contexto del problema.', 
NULL, NULL, NULL, 
'¿Cómo interpretarías la pendiente -1.2 en este contexto?', 
'Por cada grado que aumenta la temperatura, la altitud disminuye 1.2 metros', 
'Por cada metro que aumenta la altitud, la temperatura disminuye 1.2 grados', 
'Por cada metro que aumenta la altitud, la temperatura aumenta 1.2 grados', 
'La temperatura inicial es 1.2 grados a nivel del mar', 
'A', 5, 10, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Límites de predicción', 
'La ecuación de regresión lineal es útil para hacer predicciones dentro del rango de los datos observados, pero su uso fuera de este rango (extrapolación) puede ser problemático.', 
NULL, NULL, NULL, 
'¿Por qué puede ser riesgoso usar la ecuación de regresión para extrapolar?', 
'Porque los cálculos se vuelven más complejos', 
'Porque la relación lineal puede no mantenerse fuera del rango observado', 
'Porque el coeficiente de correlación cambia', 
'Porque requiere más memoria computacional', 
'B', 5, 10, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Aplicación práctica', 
'Una empresa ha desarrollado la ecuación de regresión ŷ = 5000 + 300x para predecir las ventas mensuales (Y) en función del gasto en publicidad (X). El rango observado de gasto en publicidad fue de $100 a $1000.', 
NULL, NULL, NULL, 
'¿Sería confiable usar esta ecuación para predecir ventas con un gasto en publicidad de $2000?', 
'Sí, porque la ecuación es matemáticamente válida', 
'No, porque estaríamos extrapolando fuera del rango observado', 
'Sólo si el coeficiente de correlación es mayor que 0.9', 
'Depende del mes del año', 
'C', 5, 10, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

-- Preguntas para el tema: Ecuación de la recta de regresión de x sobre y
('MATEMÁTICA', NULL, 'Diferencia entre regresiones', 
'En el análisis de regresión, podemos tener dos ecuaciones diferentes: la regresión de Y sobre X (para predecir Y) y la regresión de X sobre Y (para predecir X). Estas ecuaciones no son simétricas.', 
NULL, NULL, NULL, 
'¿En qué situación sería más apropiado usar la regresión de X sobre Y?', 
'Cuando X es la variable independiente y Y la dependiente', 
'Cuando queremos predecir X a partir de Y', 
'Cuando el coeficiente de correlación es negativo', 
'Cuando trabajamos con datos categóricos', 
'B', 5, 10, 'Ecuación de la recta de regresión de x sobre y'),

('MATEMÁTICA', NULL, 'Pendientes comparadas', 
'Para un mismo conjunto de datos, la pendiente de la recta de regresión de Y sobre X (b_yx) y la pendiente de la recta de regresión de X sobre Y (b_xy) están relacionadas con el coeficiente de correlación r.', 
NULL, NULL, NULL, 
'¿Qué relación existe entre estas pendientes?', 
'b_yx = b_xy', 
'b_yx × b_xy = r²', 
'b_yx + b_xy = 1', 
'b_yx - b_xy = r', 
'C', 5, 10, 'Ecuación de la recta de regresión de x sobre y'),

('MATEMÁTICA', NULL, 'Aplicación específica', 
'En un estudio médico, se quiere predecir la dosis de un medicamento (X) necesaria para alcanzar ciertos niveles en sangre (Y) en pacientes. Se dispone de datos históricos de dosis aplicadas y niveles alcanzados.', 
NULL, NULL, NULL, 
'¿Qué tipo de ecuación de regresión sería más apropiada en este caso?', 
'Regresión de Y sobre X', 
'Regresión de X sobre Y', 
'Regresión logística', 
'Regresión múltiple', 
'A', 5, 10, 'Ecuación de la recta de regresión de x sobre y'),

('MATEMÁTICA', NULL, 'Ángulo entre rectas', 
'Cuando el coeficiente de correlación r es 1 o -1, las dos rectas de regresión (Y sobre X y X sobre Y) coinciden, formando un ángulo de 0 grados entre ellas. Para valores de |r| menores a 1, este ángulo aumenta.', 
NULL, NULL, NULL, 
'¿Qué sucede con el ángulo entre las dos rectas de regresión cuando r se acerca a 0?', 
'Disminuye hasta desaparecer', 
'Aumenta hasta 90 grados', 
'Se mantiene constante', 
'Oscila entre 0 y 180 grados', 
'D', 5, 10, 'Ecuación de la recta de regresión de x sobre y'),

('MATEMÁTICA', NULL, 'Selección del modelo', 
'Al modelar la relación entre dos variables X e Y, debemos decidir cuál de las dos ecuaciones de regresión (Y sobre X o X sobre Y) es la más apropiada para nuestros objetivos de análisis.', 
NULL, NULL, NULL, 
'¿Qué criterio principal debemos considerar para esta selección?', 
'La variable que queremos predecir', 
'La variable con mayor varianza', 
'La variable medida con mayor precisión', 
'La variable que aparece primero en el conjunto de datos', 
'B', 5, 10, 'Ecuación de la recta de regresión de x sobre y'),

-- Preguntas para el tema: El coeficiente de determinación R²
('MATEMÁTICA', NULL, 'Interpretación de R²', 
'En un análisis de regresión lineal, se obtuvo un coeficiente de determinación R² = 0.64. Este valor proporciona información importante sobre el ajuste del modelo a los datos observados.', 
NULL, NULL, NULL, 
'¿Cómo interpretarías este valor de R²?', 
'El 64% de la variabilidad en Y es explicada por el modelo de regresión', 
'La correlación entre X e Y es 0.64', 
'El error estándar es 0.64 unidades', 
'El 36% de los datos son atípicos', 
'A', 5, 10, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Rango de valores', 
'El coeficiente de determinación R² es una medida que siempre toma valores dentro de un rango específico, independientemente de las variables analizadas.', 
NULL, NULL, NULL, 
'¿Entre qué valores puede variar R²?', 
'Entre -1 y 1', 'Entre 0 y 1', 
'Entre -∞ y +∞', 'Entre 0 y 100', 
'B', 5, 10, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Relación con r', 
'En regresión lineal simple (con una variable predictora), el coeficiente de determinación R² es igual al cuadrado del coeficiente de correlación r entre las dos variables.', 
NULL, NULL, NULL, 
'Si el coeficiente de correlación r = 0.8, ¿cuál sería el valor de R²?', 
'0.8', '0.64', 
'1.6', '0.08', 
'D', 5, 10, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Uso en evaluación de modelos', 
'El coeficiente de determinación R² es ampliamente utilizado para evaluar la calidad del ajuste de un modelo de regresión lineal, comparando la variabilidad explicada con la variabilidad total.', 
NULL, NULL, NULL, 
'¿Qué indica un valor de R² cercano a 1?', 
'El modelo explica poca variabilidad en los datos', 
'El modelo explica casi toda la variabilidad en los datos', 
'No hay relación lineal entre las variables', 
'La relación es perfectamente inversa', 
'C', 5, 10, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Limitaciones de R²', 
'Aunque R² es una medida útil, tiene limitaciones. Por ejemplo, siempre aumenta cuando añadimos más predictores al modelo, incluso si estos no son relevantes.', 
NULL, NULL, NULL, 
'¿Qué medida ajustada se utiliza para compensar esta limitación de R²?', 
'R² ajustado', 'Error estándar', 
'Coeficiente de correlación parcial', 'Media de los residuales', 
'A', 5, 10, 'El coeficiente de determinación R²'),

-- Preguntas para el tema: Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial
('MATEMÁTICA', NULL, 'Selección de modelo no lineal', 
'Al analizar un diagrama de dispersión, se observa que los puntos siguen un patrón curvilíneo en lugar de lineal. Esto sugiere que un modelo de regresión no lineal podría ser más apropiado.', 
NULL, NULL, NULL, 
'¿Qué tipo de modelo sería más adecuado si los datos muestran un crecimiento que se acelera continuamente?', 
'Modelo lineal', 'Modelo exponencial', 
'Modelo logarítmico', 'Modelo polinomial de grado 2', 
'B', 5, 10, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial'),

('MATEMÁTICA', NULL, 'Transformación de variables', 
'Para ajustar ciertos modelos no lineales como el exponencial (y = ae^{bx}), a menudo aplicamos transformaciones (como logaritmos) para linealizar la relación y poder usar métodos de regresión lineal.', 
NULL, NULL, NULL, 
'¿Qué transformación se aplicaría a ambos lados de la ecuación y = ae^{bx} para linealizarla?', 
'Raíz cuadrada', 'Logaritmo natural', 
'Recíproco', 'Exponencial', 
'D', 5, 10, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial'),

('MATEMÁTICA', NULL, 'Modelo polinomial', 
'La regresión polinomial es una extensión de la regresión lineal que permite modelar relaciones no lineales añadiendo términos de mayor grado (cuadrático, cúbico, etc.) a la ecuación.', 
NULL, NULL, NULL, 
'¿Cuál sería la forma general de un modelo de regresión polinomial de grado 2?', 
'ŷ = a + bx', 'ŷ = a + bx + cx²', 
'ŷ = ab^x', 'ŷ = a + b ln(x)', 
'C', 5, 10, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial'),

('MATEMÁTICA', NULL, 'Ajuste de modelos', 
'Al comparar diferentes modelos de regresión (lineal, exponencial, logarítmico, etc.) para un mismo conjunto de datos, es importante usar criterios objetivos para seleccionar el mejor ajuste.', 
NULL, NULL, NULL, 
'¿Qué medida NO sería útil para comparar la calidad de ajuste entre diferentes modelos?', 
'Coeficiente de determinación R²', 'Error cuadrático medio', 
'Coeficiente de correlación r', 'Media de los datos originales', 
'D', 5, 10, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial'),

('MATEMÁTICA', NULL, 'Modelo logarítmico', 
'El modelo de regresión logarítmica tiene la forma ŷ = a + b ln(x) y es adecuado cuando la tasa de cambio de Y disminuye a medida que X aumenta.', 
NULL, NULL, NULL, 
'¿En qué tipo de situaciones sería apropiado usar un modelo logarítmico?', 
'Cuando el crecimiento es constante', 
'Cuando el crecimiento es rápido al principio y luego se estabiliza', 
'Cuando hay una relación cíclica', 
'Cuando los datos son categóricos', 
'B', 5, 10, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, potencial, polinomial');

-- Preguntas para el tema: Patrones y secuencias
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Identificación de patrones numéricos', 
'Analiza cuidadosamente la siguiente secuencia numérica: 3, 7, 11, 15, 19, __. Para identificar el patrón, observa la diferencia entre cada término consecutivo y aplica este patrón para encontrar el siguiente número en la secuencia.', 
NULL, NULL, NULL, '¿Cuál es el siguiente número en la secuencia?', 
'21', '23', '22', '20', 'B', 5, 10, 'Patrones y secuencias'),

('MATEMÁTICA', NULL, 'Patrón en secuencia de figuras', 
'Observa la siguiente secuencia de figuras: cuadrado, pentágono, hexágono, heptágono, __. Cada figura en la secuencia tiene un lado más que la anterior. Identifica el patrón y determina qué figura sigue en la secuencia.', 
NULL, NULL, NULL, '¿Qué figura geométrica sigue en la secuencia?', 
'octágono', 'nonágono', 'decágono', 'triángulo', 'A', 5, 10, 'Patrones y secuencias'),

('MATEMÁTICA', NULL, 'Secuencia alternante', 
'Examina esta secuencia numérica: 2, 4, 8, 6, 12, 8, 16, __. El patrón alterna entre dos operaciones diferentes: una que suma y otra que multiplica. Identifica ambas operaciones para determinar el siguiente número.', 
NULL, NULL, NULL, '¿Cuál es el siguiente número en esta secuencia alternante?', 
'10', '12', '14', '18', 'A', 5, 10, 'Patrones y secuencias'),

('MATEMÁTICA', NULL, 'Patrón en secuencia de fracciones', 
'Estudia esta secuencia de fracciones: 1/2, 2/3, 3/4, 4/5, __. Observa cómo cambian el numerador y el denominador en cada término para identificar el patrón y predecir la siguiente fracción.', 
NULL, NULL, NULL, '¿Cuál es la siguiente fracción en la secuencia?', 
'4/6', '5/6', '5/5', '6/5', 'B', 5, 10, 'Patrones y secuencias'),

('MATEMÁTICA', NULL, 'Secuencia con operaciones combinadas', 
'Analiza esta secuencia numérica: 5, 11, 23, 47, 95, __. El patrón involucra una operación matemática que se aplica al término anterior para obtener el siguiente. Determina cuál es esta operación y calcula el próximo número.', 
NULL, NULL, NULL, '¿Cuál es el siguiente número en esta secuencia?', 
'191', '187', '189', '185', 'A', 5, 10, 'Patrones y secuencias'),

-- Preguntas para el tema: Secuencias aritméticas. Problemas
('MATEMÁTICA', NULL, 'Término general de sucesión aritmética', 
'Una sucesión aritmética tiene como primer término 7 y una diferencia común de 4. Para encontrar cualquier término de la sucesión, se puede usar la fórmula del término general: aₙ = a₁ + (n-1)d, donde a₁ es el primer término y d es la diferencia común.', 
NULL, NULL, NULL, '¿Cuál es el décimo término de esta sucesión?', 
'39', '43', '47', '51', 'B', 5, 10, 'Secuencias aritméticas. Problemas'),

('MATEMÁTICA', NULL, 'Problema de ahorros semanales', 
'Juan decide ahorrar dinero cada semana. La primera semana ahorra $15 y cada semana siguiente ahorra $5 más que la anterior. Este es un ejemplo de sucesión aritmética donde cada término representa el ahorro semanal.', 
NULL, NULL, NULL, '¿Cuánto ahorrará Juan en la octava semana?', 
'40', '45', '50', '55', 'C', 5, 10, 'Secuencias aritméticas. Problemas'),

('MATEMÁTICA', NULL, 'Número de términos en secuencia', 
'Dada la sucesión aritmética: 12, 17, 22, ..., 87. Para determinar cuántos términos tiene esta sucesión, primero identifica la diferencia común y luego usa la fórmula del término general para encontrar la posición del último término.', 
NULL, NULL, NULL, '¿Cuántos términos tiene esta sucesión aritmética?', 
'15', '16', '17', '18', 'B', 5, 10, 'Secuencias aritméticas. Problemas'),

('MATEMÁTICA', NULL, 'Interpolación de medios aritméticos', 
'Se desea interpolar 5 medios aritméticos entre 8 y 20. Esto significa crear una sucesión aritmética donde 8 es el primer término, 20 es el último término, y hay 5 términos entre ellos.', 
NULL, NULL, NULL, '¿Cuál es la diferencia común en esta sucesión?', 
'1.5', '2', '2.5', '3', 'B', 5, 10, 'Secuencias aritméticas. Problemas'),

('MATEMÁTICA', NULL, 'Problema de asientos en auditorio', 
'En un auditorio, la primera fila tiene 20 asientos, la segunda fila tiene 24 asientos, la tercera 28 asientos, y así sucesivamente. Este arreglo forma una sucesión aritmética donde cada fila tiene 4 asientos más que la anterior.', 
NULL, NULL, NULL, '¿Cuántos asientos habrá en la fila 12?', 
'60', '64', '68', '72', 'B', 5, 10, 'Secuencias aritméticas. Problemas'),

-- Preguntas para el tema: Secuencias geométricas. Problemas
('MATEMÁTICA', NULL, 'Término general de sucesión geométrica', 
'Una sucesión geométrica tiene como primer término 5 y una razón común de 3. La fórmula del término general es aₙ = a₁ × r^(n-1), donde a₁ es el primer término y r es la razón común.', 
NULL, NULL, NULL, '¿Cuál es el quinto término de esta sucesión?', 
'135', '405', '1215', '3645', 'B', 5, 10, 'Secuencias geométricas. Problemas'),

('MATEMÁTICA', NULL, 'Problema de crecimiento bacteriano', 
'Una colonia de bacterias se duplica cada hora. Si inicialmente hay 100 bacterias, este crecimiento sigue una sucesión geométrica donde cada término representa la cantidad de bacterias en una hora determinada.', 
NULL, NULL, NULL, '¿Cuántas bacterias habrá después de 6 horas?', 
'3200', '6400', '12800', '25600', 'B', 5, 10, 'Secuencias geométricas. Problemas'),

('MATEMÁTICA', NULL, 'Razón de una sucesión geométrica', 
'Dada la sucesión geométrica: 64, 32, 16, 8, ... Para encontrar la razón común de una sucesión geométrica, se divide cualquier término por el término anterior.', 
NULL, NULL, NULL, '¿Cuál es la razón común de esta sucesión?', 
'0.25', '0.5', '1.5', '2', 'B', 5, 10, 'Secuencias geométricas. Problemas'),

('MATEMÁTICA', NULL, 'Interpolación de medios geométricos', 
'Se desea interpolar 3 medios geométricos entre 2 y 162. Esto significa crear una sucesión geométrica donde 2 es el primer término, 162 es el último término, y hay 3 términos entre ellos.', 
NULL, NULL, NULL, '¿Cuál es la razón común de esta sucesión?', 
'2', '3', '4', '5', 'B', 5, 10, 'Secuencias geométricas. Problemas'),

('MATEMÁTICA', NULL, 'Problema de rebote de pelota', 
'Una pelota se deja caer desde una altura de 128 metros y en cada rebote alcanza 3/4 de la altura anterior. Este fenómeno puede modelarse con una sucesión geométrica donde cada término representa la altura de un rebote.', 
NULL, NULL, NULL, '¿Qué altura alcanzará en el cuarto rebote?', 
'40.5 metros', '48.6 metros', '54 metros', '60.75 metros', 'A', 5, 10, 'Secuencias geométricas. Problemas'),

-- Preguntas para el tema: Interés compuesto. Depreciación anual
('MATEMÁTICA', NULL, 'Cálculo de monto con interés compuesto', 
'Se invierten $1,000 a una tasa de interés anual del 5% compuesto anualmente. La fórmula del interés compuesto es A = P(1 + r)^n, donde P es el principal, r es la tasa de interés y n es el número de períodos.', 
NULL, NULL, NULL, '¿Cuál será el monto acumulado después de 3 años?', 
'$1,150.00', '$1,157.63', '$1,162.50', '$1,176.25', 'B', 5, 10, 'Interés compuesto. Depreciación anual'),

('MATEMÁTICA', NULL, 'Comparación interés simple vs compuesto', 
'Se depositan $2,000 en una cuenta de ahorros. Compara el rendimiento después de 4 años con interés simple del 6% anual versus interés compuesto del 6% anual capitalizado anualmente.', 
NULL, NULL, NULL, '¿Cuál es la diferencia entre ambos montos después de 4 años?', 
'$29.50', '$39.60', '$49.70', '$59.80', 'C', 5, 10, 'Interés compuesto. Depreciación anual'),

('MATEMÁTICA', NULL, 'Depreciación anual de un vehículo', 
'Un automóvil nuevo vale $25,000 y se deprecia un 15% anual. La depreciación sigue un modelo de decaimiento exponencial similar al interés compuesto, pero restando el porcentaje en lugar de sumarlo.', 
NULL, NULL, NULL, '¿Cuál será el valor del automóvil después de 5 años?', 
'$9,840.63', '$10,125.50', '$11,092.75', '$12,345.25', 'C', 5, 10, 'Interés compuesto. Depreciación anual'),

('MATEMÁTICA', NULL, 'Tiempo para duplicar inversión', 
'Usando la Regla del 72, que establece que el tiempo para duplicar una inversión es aproximadamente 72 dividido por la tasa de interés anual, estima cuánto tiempo tomará duplicar un capital al 8% de interés compuesto anual.', 
NULL, NULL, NULL, '¿Aproximadamente cuántos años tomará duplicar la inversión?', 
'7 años', '8 años', '9 años', '10 años', 'C', 5, 10, 'Interés compuesto. Depreciación anual'),

('MATEMÁTICA', NULL, 'Cálculo de tasa de interés', 
'Una inversión de $5,000 crece a $6,802.44 en 5 años con interés compuesto anual. Para encontrar la tasa de interés anual, se puede reorganizar la fórmula del interés compuesto y resolver para r.', 
NULL, NULL, NULL, '¿Cuál es la tasa de interés anual aproximada?', 
'5.5%', '6.0%', '6.5%', '7.0%', 'C', 5, 10, 'Interés compuesto. Depreciación anual'),

-- Preguntas para el tema: Series. Notación sumatoria y propiedades
('MATEMÁTICA', NULL, 'Evaluación de notación sumatoria', 
'La notación sumatoria (Σ) es una forma compacta de representar la suma de una secuencia de términos. Evalúa la siguiente suma expresada en notación sumatoria: Σ (2k + 3) desde k=1 hasta k=4.', 
NULL, NULL, NULL, '¿Cuál es el valor de esta suma?', 
'26', '28', '30', '32', 'D', 5, 10, 'Series. Notación sumatoria y propiedades'),

('MATEMÁTICA', NULL, 'Propiedad de descomposición de sumatorias', 
'Una propiedad importante de las sumatorias es que Σ(aₖ + bₖ) = Σaₖ + Σbₖ. Aplica esta propiedad para descomponer la siguiente suma: Σ (3k² + 4k) desde k=1 hasta k=3.', 
NULL, NULL, NULL, '¿Cuál es la expresión equivalente descompuesta?', 
'3Σk² + 4Σk', 'Σ3k² + Σ4k', 'Σ(3k)² + Σ(4k)', '3Σk + 4Σk²', 'A', 5, 10, 'Series. Notación sumatoria y propiedades'),

('MATEMÁTICA', NULL, 'Suma con índice cambiado', 
'Al cambiar el índice de una sumatoria, es importante ajustar correctamente la expresión del término general. Reescribe la suma Σ (2n-1) desde n=3 hasta n=5 con un nuevo índice k = n-2.', 
NULL, NULL, NULL, '¿Cuál es la expresión equivalente con el nuevo índice k?', 
'Σ (2k + 3) desde k=1 hasta k=3', 'Σ (2k - 1) desde k=1 hasta k=3', 'Σ (2k + 1) desde k=3 hasta k=5', 'Σ (2k - 3) desde k=1 hasta k=3', 'A', 5, 10, 'Series. Notación sumatoria y propiedades'),

('MATEMÁTICA', NULL, 'Suma de constantes', 
'Una propiedad fundamental de las sumatorias establece que Σ c = n·c, donde c es una constante y n es el número de términos. Aplica esta propiedad para calcular Σ 5 desde k=1 hasta k=7.', 
NULL, NULL, NULL, '¿Cuál es el valor de esta suma?', 
'5', '7', '12', '35', 'D', 5, 10, 'Series. Notación sumatoria y propiedades'),

('MATEMÁTICA', NULL, 'Sumatoria con cambio de límites', 
'Para evaluar sumatorias, a veces es útil cambiar los límites de la suma. Considera la suma Σ (i + 2) desde i=1 hasta i=5. Si hacemos j = i + 1, ¿cómo se reescribe la suma?', 
NULL, NULL, NULL, '¿Cuál es la expresión equivalente con el nuevo índice j?', 
'Σ (j + 1) desde j=2 hasta j=6', 'Σ (j - 1) desde j=2 hasta j=6', 'Σ (j + 2) desde j=1 hasta j=5', 'Σ (j + 3) desde j=0 hasta j=4', 'A', 5, 10, 'Series. Notación sumatoria y propiedades'),

-- Preguntas para el tema: Series aritméticas: fórmula 1 y fórmula 2
('MATEMÁTICA', NULL, 'Suma de primeros términos de serie aritmética', 
'La suma de los primeros n términos de una serie aritmética se puede calcular con la fórmula Sₙ = n/2 (a₁ + aₙ). Una serie aritmética tiene primer término 3 y décimo término 30.', 
NULL, NULL, NULL, '¿Cuál es la suma de los primeros 10 términos?', 
'150', '165', '180', '195', 'B', 5, 10, 'Series aritméticas: fórmula 1 y fórmula 2'),

('MATEMÁTICA', NULL, 'Alternativa para suma de serie aritmética', 
'La suma de una serie aritmética también puede calcularse con Sₙ = n/2 [2a₁ + (n-1)d]. Una serie aritmética comienza con 8 y tiene diferencia común 5.', 
NULL, NULL, NULL, '¿Cuál es la suma de los primeros 6 términos?', 
'93', '103', '113', '123', 'D', 5, 10, 'Series aritméticas: fórmula 1 y fórmula 2'),

('MATEMÁTICA', NULL, 'Problema de ahorros acumulados', 
'María ahorra $10 la primera semana y cada semana siguiente ahorra $3 más que la anterior. Después de 15 semanas, el total ahorrado forma una serie aritmética.', 
NULL, NULL, NULL, '¿Cuánto habrá ahorrado en total después de 15 semanas?', 
'$465', '$480', '$495', '$510', 'B', 5, 10, 'Series aritméticas: fórmula 1 y fórmula 2'),

('MATEMÁTICA', NULL, 'Número de términos para suma dada', 
'Una serie aritmética tiene primer término 12 y diferencia común 8. Se desea encontrar cuántos términos se necesitan para que la suma sea al menos 600.', 
NULL, NULL, NULL, '¿Cuál es el mínimo número de términos necesarios?', 
'10', '11', '12', '13', 'B', 5, 10, 'Series aritméticas: fórmula 1 y fórmula 2'),

('MATEMÁTICA', NULL, 'Comparación de fórmulas de suma', 
'Para una serie aritmética con a₁ = 5, d = 4 y n = 7, demuestra que ambas fórmulas de suma aritmética dan el mismo resultado.', 
NULL, NULL, NULL, '¿Cuál es la suma usando Sₙ = n/2 (a₁ + aₙ)?', 
'105', '112', '119', '126', 'C', 5, 10, 'Series aritméticas: fórmula 1 y fórmula 2'),

-- Preguntas para el tema: Series geométricas
('MATEMÁTICA', NULL, 'Suma de serie geométrica finita', 
'La suma de los primeros n términos de una serie geométrica se calcula con Sₙ = a₁(1 - rⁿ)/(1 - r) para r ≠ 1. Una serie geométrica tiene a₁ = 5, r = 2 y n = 5.', 
NULL, NULL, NULL, '¿Cuál es la suma de los primeros 5 términos?', 
'75', '125', '155', '175', 'C', 5, 10, 'Series geométricas'),

('MATEMÁTICA', NULL, 'Problema de división de terreno', 
'Un terreno se divide en partes que forman una serie geométrica: la primera parte es 16 m², la segunda 8 m², la tercera 4 m², y así sucesivamente hasta 10 partes.', 
NULL, NULL, NULL, '¿Cuál es el área total del terreno?', 
'31.96875 m²', '31.875 m²', '31.75 m²', '31.5 m²', 'A', 5, 10, 'Series geométricas'),

('MATEMÁTICA', NULL, 'Alternativa para suma geométrica', 
'Cuando r > 1, la fórmula para la suma de una serie geométrica finita es Sₙ = a₁(rⁿ - 1)/(r - 1). Una serie geométrica tiene a₁ = 3, r = 3 y n = 4.', 
NULL, NULL, NULL, '¿Cuál es la suma de los primeros 4 términos?', 
'108', '120', '132', '144', 'B', 5, 10, 'Series geométricas'),

('MATEMÁTICA', NULL, 'Suma con razón fraccionaria', 
'Para series geométricas con |r| < 1, los términos disminuyen en valor. Calcula la suma de los primeros 6 términos de una serie con a₁ = 81 y r = 1/3.', 
NULL, NULL, NULL, '¿Cuál es el valor de esta suma?', 
'120.5', '121.5', '122.5', '123.5', 'B', 5, 10, 'Series geométricas'),

('MATEMÁTICA', NULL, 'Número de términos para suma específica', 
'Una serie geométrica tiene a₁ = 2 y r = 2. Se desea encontrar el mínimo n tal que la suma supere 100.', 
NULL, NULL, NULL, '¿Cuál es el mínimo valor de n que cumple esta condición?', 
'6', '7', '8', '9', 'A', 5, 10, 'Series geométricas'),

-- Preguntas para el tema: Series infinitas
('MATEMÁTICA', NULL, 'Convergencia de serie geométrica infinita', 
'Una serie geométrica infinita converge si y solo si |r| < 1. En estos casos, la suma es S = a₁/(1 - r). Considera la serie 16 + 4 + 1 + 1/4 + ...', 
NULL, NULL, NULL, '¿Cuál es la suma de esta serie infinita?', 
'64/3', '21', '64', '21.333...', 'A', 5, 10, 'Series infinitas'),

('MATEMÁTICA', NULL, 'Serie telescópica infinita', 
'Algunas series infinitas pueden simplificarse mediante la técnica de telescopía. Considera la serie Σ [1/(k(k+1))] desde k=1 hasta infinito.', 
NULL, NULL, NULL, '¿Cuál es la suma de esta serie infinita?', 
'0.5', '1', '1.5', '2', 'B', 5, 10, 'Series infinitas'),

('MATEMÁTICA', NULL, 'Serie armónica alternante', 
'La serie armónica alternante Σ (-1)^(n+1)/n converge por el criterio de Leibniz. Esta es una serie condicionalmente convergente.', 
NULL, NULL, NULL, '¿A qué valor converge esta serie?', 
'ln(1)', 'ln(2)', 'π/4', '1', 'B', 5, 10, 'Series infinitas'),

('MATEMÁTICA', NULL, 'Divergencia de serie armónica', 
'La serie armónica Σ 1/n desde n=1 hasta infinito es un ejemplo clásico de serie divergente, aunque los términos individuales tienden a cero.', 
NULL, NULL, NULL, '¿Qué prueba se usa comúnmente para demostrar su divergencia?', 
'Prueba de la razón', 'Prueba de comparación', 'Prueba de la integral', 'Prueba de la raíz', 'C', 5, 10, 'Series infinitas'),

('MATEMÁTICA', NULL, 'Aplicación de serie infinita', 
'La fracción decimal periódica 0.666... puede expresarse como una serie geométrica infinita: 6/10 + 6/100 + 6/1000 + ...', 
NULL, NULL, NULL, '¿Cuál es la fracción común equivalente a esta serie?', 
'1/3', '2/3', '3/4', '4/5', 'B', 5, 10, 'Series infinitas'),

-- Preguntas para el tema: Aplicaciones al ámbito financiero
('MATEMÁTICA', NULL, 'Cálculo de anualidades', 
'Una anualidad es una serie de pagos iguales realizados a intervalos regulares. La fórmula para el valor futuro de una anualidad ordinaria es FV = PMT [( (1 + r)^n - 1 ) / r], donde PMT es el pago periódico.', 
NULL, NULL, NULL, 'Si depositas $500 semestrales al 4% anual capitalizable semestralmente por 5 años, ¿cuál es el valor futuro?', 
'$5,416.32', '$5,525.63', '$5,632.98', '$5,741.25', 'B', 5, 10, 'Aplicaciones al ámbito financiero'),

('MATEMÁTICA', NULL, 'Préstamo con pagos fijos', 
'El pago periódico de un préstamo se calcula con PMT = PV [ r(1 + r)^n / ((1 + r)^n - 1) ], donde PV es el valor presente del préstamo. Un préstamo de $10,000 al 6% anual durante 4 años.', 
NULL, NULL, NULL, '¿Cuál es el pago mensual aproximado?', 
'$234.85', '$243.75', '$253.63', '$263.42', 'A', 5, 10, 'Aplicaciones al ámbito financiero'),

('MATEMÁTICA', NULL, 'Fondo de amortización', 
'Un fondo de amortización es una cuenta que se establece para pagar una deuda futura. Se usan depósitos periódicos que ganan interés. Se necesita acumular $20,000 en 3 años con tasa del 5% anual.', 
NULL, NULL, NULL, '¿Cuál debe ser el depósito trimestral?', 
'$1,525.63', '$1,550.42', '$1,575.80', '$1,600.25', 'A', 5, 10, 'Aplicaciones al ámbito financiero'),

('MATEMÁTICA', NULL, 'Valor presente de anualidad', 
'El valor presente de una anualidad calcula cuánto vale hoy una serie de pagos futuros. La fórmula es PV = PMT [ (1 - (1 + r)^-n ) / r ]. Una anualidad paga $1,000 anuales por 5 años al 7% anual.', 
NULL, NULL, NULL, '¿Cuál es su valor presente?', 
'$4,100.20', '$4,200.10', '$4,300.00', '$4,500.25', 'A', 5, 10, 'Aplicaciones al ámbito financiero'),

('MATEMÁTICA', NULL, 'Comparación de planes de inversión', 
'Compara dos planes de inversión: Plan A deposita $200 mensuales por 10 años al 6% anual. Plan B deposita $2,500 anuales por 10 años al 6.5% anual. Ambos con interés compuesto.', 
NULL, NULL, NULL, '¿Qué plan tiene mayor valor futuro?', 
'Plan A', 'Plan B', 'Iguales', 'No se puede determinar', 'A', 5, 10, 'Aplicaciones al ámbito financiero');

-- Preguntas sobre Expansiones binomiales (a+b)^n: Triángulo de Pascal
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Desarrollo del binomio', 
'El triángulo de Pascal es una herramienta fundamental para desarrollar expresiones binomiales. Cada fila del triángulo representa los coeficientes de la expansión de (a+b)^n. Por ejemplo, la cuarta fila (1, 3, 3, 1) corresponde a los coeficientes de (a+b)^3.', 
NULL, NULL, NULL, 
'¿Cuál es el desarrollo correcto de (x + y)^4 usando el triángulo de Pascal?', 
'x^4 + 4x³y + 6x²y² + 4xy³ + y^4', 
'x^4 + 3x³y + 3x²y² + xy³ + y^4', 
'x^4 + 5x³y + 10x²y² + 5xy³ + y^4', 
'x^4 + x³y + x²y² + xy³ + y^4', 
'A', 5, 10, 'Expansiones binomiales (a+b)^n: Triángulo de Pascal'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Coeficientes binomiales', 
'El triángulo de Pascal tiene propiedades matemáticas fascinantes. Cada número en el triángulo es la suma de los dos números directamente arriba de él. Esta propiedad permite calcular rápidamente los coeficientes binomiales necesarios para expandir expresiones como (a+b)^n.', 
NULL, NULL, NULL, 
'¿Cuáles son los coeficientes correctos para expandir (a + b)^5 usando el triángulo de Pascal?', 
'1, 4, 6, 4, 1', 
'1, 5, 10, 10, 5, 1', 
'1, 6, 15, 20, 15, 6, 1', 
'1, 3, 3, 1', 
'B', 5, 10, 'Expansiones binomiales (a+b)^n: Triángulo de Pascal'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Aplicación del triángulo', 
'En matemáticas avanzadas, el triángulo de Pascal no solo se usa para expansiones binomiales, sino también en probabilidad, combinatoria y otras áreas. Comprender su estructura es esencial para resolver problemas algebraicos complejos.', 
NULL, NULL, NULL, 
'¿Cuál es la sexta fila del triángulo de Pascal?', 
'1, 5, 10, 10, 5, 1', 
'1, 6, 15, 20, 15, 6, 1', 
'1, 4, 6, 4, 1', 
'1, 7, 21, 35, 35, 21, 7, 1', 
'B', 5, 10, 'Expansiones binomiales (a+b)^n: Triángulo de Pascal'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Identificación de patrones', 
'Observa el siguiente patrón en el triángulo de Pascal: Cada fila comienza y termina con 1, y los números interiores siguen una secuencia específica basada en la suma de los números de la fila anterior.', 
NULL, NULL, NULL, 
'Si la quinta fila del triángulo de Pascal es 1, 5, 10, 10, 5, 1, ¿cuál sería el tercer coeficiente de la séptima fila?', 
'15', 
'21', 
'10', 
'35', 
'B', 5, 10, 'Expansiones binomiales (a+b)^n: Triángulo de Pascal'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Expansión con variables', 
'Al expandir expresiones binomiales usando el triángulo de Pascal, es importante considerar tanto los coeficientes como las potencias de las variables. El exponente de la primera variable disminuye mientras que el de la segunda aumenta en cada término.', 
NULL, NULL, NULL, 
'¿Cuál es el cuarto término en la expansión de (2x - 3y)^5?', 
'720x²y³', 
'-1080x²y³', 
'1080x²y³', 
'-720x²y³', 
'B', 5, 10, 'Expansiones binomiales (a+b)^n: Triángulo de Pascal'),

-- Preguntas sobre El coeficiente binomial (n r)
('MATEMÁTICA', NULL, 'Cálculo de combinaciones', 
'El coeficiente binomial (n r), también conocido como "combinación de n en r", representa el número de formas en que se pueden elegir r elementos de un conjunto de n elementos sin considerar el orden.', 
NULL, NULL, NULL, 
'¿Cuál es el valor del coeficiente binomial (5 2)?', 
'5', 
'10', 
'20', 
'15', 
'B', 5, 10, 'El coeficiente binomial (n r)'),

('MATEMÁTICA', NULL, 'Propiedades de coeficientes', 
'Los coeficientes binomiales tienen propiedades simétricas importantes. Por ejemplo, (n k) = (n (n-k)), lo que significa que elegir k elementos es equivalente a elegir los n-k elementos restantes.', 
NULL, NULL, NULL, 
'Si (8 3) = 56, ¿cuál es el valor de (8 5)?', 
'28', 
'56', 
'112', 
'168', 
'B', 5, 10, 'El coeficiente binomial (n r)'),

('MATEMÁTICA', NULL, 'Aplicación en probabilidad', 
'En probabilidad, los coeficientes binomiales son fundamentales para calcular distribuciones binomiales, que modelan situaciones con dos resultados posibles (éxito/fracaso) en múltiples ensayos independientes.', 
NULL, NULL, NULL, 
'¿Cuántos comités diferentes de 4 personas se pueden formar a partir de un grupo de 7 personas?', 
'35', 
'28', 
'21', 
'14', 
'A', 5, 10, 'El coeficiente binomial (n r)'),

('MATEMÁTICA', NULL, 'Relación con el triángulo', 
'Los coeficientes binomiales corresponden exactamente a los números en el triángulo de Pascal, donde (n r) es el (r+1)-ésimo número en la (n+1)-ésima fila del triángulo.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes igualdades es FALSA respecto a los coeficientes binomiales?', 
'(6 2) = (6 4)', 
'(7 0) = (7 7)', 
'(5 3) = (5 2)', 
'(9 1) = (9 8)', 
'C', 5, 10, 'El coeficiente binomial (n r)'),

('MATEMÁTICA', NULL, 'Cálculo directo', 
'El coeficiente binomial (n r) se puede calcular mediante la fórmula n! / (r!(n-r)!), donde "!" representa el factorial de un número.', 
NULL, NULL, NULL, 
'Calcula el valor de (6 3) usando la fórmula factorial.', 
'15', 
'20', 
'30', 
'120', 
'B', 5, 10, 'El coeficiente binomial (n r)'),

-- Preguntas sobre El teorema del binomio
('MATEMÁTICA', NULL, 'Aplicación del teorema', 
'El teorema del binomio establece una fórmula para expandir expresiones de la forma (a + b)^n como una suma de términos de la forma (n k)·a^(n-k)·b^k, donde k va desde 0 hasta n.', 
NULL, NULL, NULL, 
'¿Cuál es la expansión correcta de (x + 2)^3 según el teorema del binomio?', 
'x³ + 3x² + 3x + 1', 
'x³ + 6x² + 12x + 8', 
'x³ + 2x² + 4x + 8', 
'x³ + 3x² + 6x + 6', 
'B', 5, 10, 'El teorema del binomio'),

('MATEMÁTICA', NULL, 'Identificación de términos', 
'Cada término en la expansión de (a + b)^n tiene un coeficiente binomial específico y las potencias de a y b siguen un patrón predecible donde los exponentes suman siempre n.', 
NULL, NULL, NULL, 
'¿Cuál es el coeficiente del término x³y² en la expansión de (x + y)^5?', 
'5', 
'10', 
'15', 
'20', 
'B', 5, 10, 'El teorema del binomio'),

('MATEMÁTICA', NULL, 'Expansión con coeficientes', 
'Al aplicar el teorema del binomio a expresiones con coeficientes diferentes a 1, es importante recordar que ambos términos dentro del paréntesis deben elevarse a las potencias correspondientes.', 
NULL, NULL, NULL, 
'¿Cuál es el tercer término en la expansión de (3x - 2y)^4?', 
'216x²y²', 
'-216x²y²', 
'96x²y²', 
'144x²y²', 
'A', 5, 10, 'El teorema del binomio'),

('MATEMÁTICA', NULL, 'Suma de coeficientes', 
'Una propiedad interesante del teorema del binomio es que si sustituimos a = 1 y b = 1 en (a + b)^n, obtenemos la suma de todos los coeficientes binomiales de esa expansión, que es 2^n.', 
NULL, NULL, NULL, 
'¿Cuál es la suma de todos los coeficientes en la expansión de (2x - 3y)^5?', 
'1', 
'-1', 
'32', 
'243', 
'B', 5, 10, 'El teorema del binomio'),

('MATEMÁTICA', NULL, 'Expansión con exponente negativo', 
'El teorema del binomio puede extenderse a exponentes negativos y fraccionarios mediante series infinitas, aunque esto va más allá del alcance del álgebra básica.', 
NULL, NULL, NULL, 
'¿Cuál es el desarrollo correcto de (1 + x)^3 usando el teorema del binomio?', 
'1 + 3x + 3x² + x³', 
'1 + x + x² + x³', 
'1 + 2x + 3x² + 4x³', 
'1 + 3x + 6x² + 10x³', 
'A', 5, 10, 'El teorema del binomio'),

-- Preguntas sobre Término k-ésimo
('MATEMÁTICA', NULL, 'Identificación del término', 
'En una expansión binomial, el término k-ésimo puede encontrarse usando una fórmula específica que combina el coeficiente binomial con las potencias adecuadas de los términos del binomio.', 
NULL, NULL, NULL, 
'¿Cuál es el cuarto término en la expansión de (x + y)^6?', 
'15x³y³', 
'20x³y³', 
'20x^4y²', 
'15x²y^4', 
'B', 5, 10, 'Término k-ésimo'),

('MATEMÁTICA', NULL, 'Cálculo de término específico', 
'Para encontrar un término específico en una expansión binomial sin desarrollar todo el polinomio, podemos usar la fórmula del término general que involucra coeficientes binomiales.', 
NULL, NULL, NULL, 
'¿Cuál es el quinto término en la expansión de (2a - b)^7?', 
'560a³b^4', 
'-560a³b^4', 
'35a³b^4', 
'-35a³b^4', 
'B', 5, 10, 'Término k-ésimo'),

('MATEMÁTICA', NULL, 'Término central', 
'En expansiones con exponente par, existe un término central único, mientras que en exponentes impares hay dos términos centrales con el mismo coeficiente.', 
NULL, NULL, NULL, 
'¿Cuál es el término central en la expansión de (x + y)^4?', 
'4x²y²', 
'6x²y²', 
'4x³y', 
'6xy³', 
'B', 5, 10, 'Término k-ésimo'),

('MATEMÁTICA', NULL, 'Término independiente', 
'El término independiente (sin variable) en una expansión binomial ocurre cuando las potencias de los componentes del binomio se cancelan entre sí.', 
NULL, NULL, NULL, 
'¿Cuál es el término independiente de x en la expansión de (x² + 1/x)^6?', 
'15', 
'20', 
'6', 
'1', 
'A', 5, 10, 'Término k-ésimo'),

('MATEMÁTICA', NULL, 'Término con exponente específico', 
'Al buscar un término con un exponente específico para una variable, debemos resolver una ecuación que iguale el exponente deseado con la expresión del exponente en el término general.', 
NULL, NULL, NULL, 
'¿Cuál es el término que contiene a x^5 en la expansión de (x + 3)^8?', 
'1512x^5', 
'10206x^5', 
'20412x^5', 
'4536x^5', 
'D', 5, 10, 'Término k-ésimo');

-- Preguntas para el tema: Distancia entre dos puntos del espacio 3D
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', null, 'Cálculo de distancia en 3D', 
'En un sistema de coordenadas tridimensional, los puntos A y B representan las posiciones de dos aviones en el espacio. El punto A tiene coordenadas (3, -2, 5) y el punto B tiene coordenadas (-1, 4, 2). Para calcular la distancia entre estos dos aviones y asegurar que mantienen una separación segura, se debe aplicar la fórmula de distancia entre dos puntos en el espacio 3D.', 
null, null, null, 
'¿Cuál es la distancia entre los puntos A(3, -2, 5) y B(-1, 4, 2)?', 
'7.81 unidades', '8.37 unidades', '6.78 unidades', '7.28 unidades', 
'B', 5, 10, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 2
('MATEMÁTICA', null, 'Aplicación de distancia 3D', 
'Un arquitecto está diseñando un edificio y necesita calcular la longitud de una diagonal estructural que va desde la base en el punto C(1, 1, 0) hasta el techo en el punto D(4, 5, 3). Esta medida es crucial para determinar los materiales necesarios.', 
null, null, null, 
'Calcula la distancia entre los puntos C(1, 1, 0) y D(4, 5, 3).', 
'5.20 metros', '5.83 metros', '6.24 metros', '6.78 metros', 
'B', 5, 10, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 3
('MATEMÁTICA', null, 'Distancia entre planetas', 
'En un modelo simplificado del sistema solar, la Tierra está representada en las coordenadas (3, 2, -1) y Marte en (-2, 4, 3). Las unidades están en millones de kilómetros. Calcular la distancia entre estos planetas ayuda a planificar misiones espaciales.', 
null, null, null, 
'¿Cuál es la distancia entre la Tierra y Marte en este modelo?', 
'6.48 millones de km', '7.28 millones de km', '7.81 millones de km', '8.54 millones de km', 
'C', 5, 10, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 4
('MATEMÁTICA', null, 'Geometría molecular', 
'En química, para determinar la longitud de un enlace entre dos átomos en una molécula tridimensional, se usan sus posiciones atómicas. Un átomo de carbono está en (0, 0, 0) y un átomo de oxígeno en (1, 1, 1).', 
null, null, null, 
'Calcula la distancia entre los átomos de carbono y oxígeno.', 
'1.41 Ångstroms', '1.73 Ångstroms', '2.00 Ångstroms', '2.24 Ångstroms', 
'B', 5, 10, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 5
('MATEMÁTICA', null, 'Navegación submarina', 
'Un submarino se mueve desde el punto E(2, -3, -4) hasta el punto F(-1, 2, 1) en un sistema de coordenadas donde z representa la profundidad. Calcular la distancia total recorrida es esencial para el consumo de energía.', 
null, null, null, 
'¿Qué distancia recorrió el submarino entre los puntos E y F?', 
'7.55 km', '8.37 km', '8.66 km', '9.11 km', 
'C', 5, 10, 'Distancia entre dos puntos del espacio 3D'),

-- Preguntas para el tema: Punto medio en el espacio 3D
('MATEMÁTICA', null, 'Localización de estación espacial', 
'La Estación Espacial Internacional (ISS) se encuentra en un punto entre la Tierra y la Luna. En un sistema de coordenadas, la Tierra está en (2, 4, -1) y la Luna en (-4, 0, 3). La ISS está exactamente en el punto medio.', 
null, null, null, 
'¿Cuáles son las coordenadas de la ISS en este modelo?', 
'(-1, 2, 1)', '(-2, 4, 2)', '(1, -2, -1)', '(3, 2, 0)', 
'A', 5, 10, 'Punto medio en el espacio 3D'),

-- Pregunta 2
('MATEMÁTICA', null, 'Ubicación de tesoro', 
'Un mapa del tesoro indica que el botín está en el punto medio entre dos palmeras. En un sistema 3D, la palmera A está en (5, -3, 2) y la palmera B en (-1, 7, -4).', 
null, null, null, 
'¿En qué coordenadas se encuentra el tesoro?', 
'(2, 2, -1)', '(3, -5, 3)', '(4, 4, -2)', '(1, 1, 0)', 
'A', 5, 10, 'Punto medio en el espacio 3D'),

-- Pregunta 3
('MATEMÁTICA', null, 'Diseño de puente', 
'El punto de apoyo central de un puente colgante debe ubicarse exactamente en el punto medio entre las dos torres principales. Las torres están en T1(120, 80, 0) y T2(-40, 120, 0).', 
null, null, null, 
'¿Cuáles son las coordenadas del punto de apoyo central?', 
'(40, 100, 0)', '(80, 200, 0)', '(60, 80, 0)', '(30, 120, 0)', 
'A', 5, 10, 'Punto medio en el espacio 3D'),

-- Pregunta 4
('MATEMÁTICA', null, 'Geolocalización', 
'Un sistema de emergencia necesita ubicar el punto medio entre dos hospitales para colocar una ambulancia de respuesta rápida. El hospital A está en (15, -20, 5) y el hospital B en (-5, 30, -15).', 
null, null, null, 
'¿Dónde debe ubicarse la ambulancia?', 
'(5, 5, -5)', '(10, 10, -10)', '(2, 2, -2)', '(8, -8, 8)', 
'A', 5, 10, 'Punto medio en el espacio 3D'),

-- Pregunta 5
('MATEMÁTICA', null, 'Astronomía', 
'Para observar dos estrellas simultáneamente, un telescopio debe apuntar al punto medio entre ellas. La estrella Alpha está en (10, -5, 20) y la estrella Beta en (-6, 15, -10).', 
null, null, null, 
'¿A qué coordenadas debe apuntar el telescopio?', 
'(2, 5, 5)', '(4, 10, 10)', '(1, 2, 3)', '(8, -8, 8)', 
'A', 5, 10, 'Punto medio en el espacio 3D'),

-- Preguntas para el tema: Volumen y área de la superficie de sólidos
('MATEMÁTICA', null, 'Diseño de tanque esférico', 
'Una empresa necesita fabricar un tanque de almacenamiento esférico con un radio de 3.5 metros. El material para la superficie cuesta $50 por metro cuadrado y el volumen determina la capacidad de almacenamiento.', 
null, null, null, 
'¿Cuál es el volumen del tanque esférico? (Usa π ≈ 3.14)', 
'179.50 m³', '143.65 m³', '164.93 m³', '150.72 m³', 
'A', 5, 10, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Pregunta 2
('MATEMÁTICA', null, 'Construcción de cono', 
'Un cono recto tiene un radio de base de 4 cm y una altura de 9 cm. Se necesita calcular tanto su área lateral como su volumen para determinar la cantidad de material necesario.', 
null, null, null, 
'¿Cuál es el volumen de este cono? (Usa π ≈ 3.14)', 
'150.72 cm³', '113.04 cm³', '75.36 cm³', '37.68 cm³', 
'A', 5, 10, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Pregunta 3
('MATEMÁTICA', null, 'Pirámide egipcia', 
'Una pirámide cuadrangular recta tiene una base de 10 m de lado y una altura de 12 m. Los arqueólogos necesitan calcular su volumen para estimar el número de bloques utilizados en su construcción.', 
null, null, null, 
'¿Cuál es el volumen de esta pirámide?', 
'400 m³', '500 m³', '600 m³', '700 m³', 
'A', 5, 10, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Pregunta 4
('MATEMÁTICA', null, 'Semiesfera decorativa', 
'Una fuente decorativa tiene forma de semiesfera con un diámetro de 6 metros. Se necesita calcular su área superficial para presupuestar el trabajo de pintura.', 
null, null, null, 
'¿Cuál es el área superficial de esta semiesfera? (Usa π ≈ 3.14)', 
'56.52 m²', '84.78 m²', '113.04 m²', '141.30 m²', 
'C', 5, 10, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Pregunta 5
('MATEMÁTICA', null, 'Combinación de sólidos', 
'Un monumento consiste en un cilindro de radio 2 m y altura 5 m coronado por una semiesfera del mismo radio. Se requiere calcular el volumen total de la estructura.', 
null, null, null, 
'¿Cuál es el volumen total del monumento? (Usa π ≈ 3.14)', 
'75.36 m³', '83.73 m³', '92.10 m³', '100.48 m³', 
'B', 5, 10, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Preguntas para el tema: Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano
('MATEMÁTICA', null, 'Ángulo entre vigas', 
'En una estructura metálica, dos vigas se cruzan en el espacio. La primera viga tiene vector director (1, 2, -1) y la segunda viga tiene vector director (3, -1, 2). Es crucial calcular el ángulo entre ellas para garantizar la estabilidad.', 
null, null, null, 
'¿Cuál es el ángulo (aproximado) entre estas dos vigas?', 
'60°', '70°', '80°', '90°', 
'B', 5, 10, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

-- Pregunta 2
('MATEMÁTICA', null, 'Inclinación de escalera', 
'Una escalera está apoyada contra una pared. La recta de la escalera tiene vector director (2, 1, 0) y el plano de la pared tiene ecuación x + 2y - z = 0. Se necesita calcular el ángulo entre la escalera y la pared.', 
null, null, null, 
'¿Cuál es el ángulo entre la escalera y la pared?', 
'30°', '45°', '60°', '75°', 
'A', 5, 10, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

-- Pregunta 3
('MATEMÁTICA', null, 'Navegación aérea', 
'Dos aviones siguen trayectorias rectas con vectores directores u = (1, -1, 2) y v = (2, 1, -1). El control aéreo necesita calcular el ángulo entre sus trayectorias para evitar colisiones.', 
null, null, null, 
'¿Cuál es el ángulo entre las trayectorias de los aviones?', 
'60°', '75°', '90°', '105°', 
'C', 5, 10, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

-- Pregunta 4
('MATEMÁTICA', null, 'Geometría cristalina', 
'En un cristal, los planos atómicos tienen ecuación 2x - y + z = 0 y una línea de defecto tiene vector director (1, 1, -1). Los científicos necesitan medir el ángulo entre esta línea y el plano.', 
null, null, null, 
'¿Cuál es el ángulo entre la línea de defecto y el plano cristalino?', 
'30°', '45°', '60°', '90°', 
'A', 5, 10, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

-- Pregunta 5
('MATEMÁTICA', null, 'Diseño de rampa', 
'Una rampa para discapacitados tiene vector director (1, 0, 2) y el plano del suelo tiene ecuación z = 0. Las normas exigen que el ángulo entre la rampa y el suelo no exceda ciertos valores.', 
null, null, null, 
'¿Cuál es el ángulo entre la rampa y el suelo?', 
'63.43°', '45°', '30°', '26.56°', 
'A', 5, 10, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano');

-- Preguntas sobre Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Cálculo de área con lados y ángulo', 
'Para calcular el área de un triángulo cuando conocemos dos lados y el ángulo comprendido entre ellos, utilizamos la fórmula A = (ab * sin(C))/2. Considera un triángulo con lados a = 8 cm y b = 10 cm que forman un ángulo de 30 grados.', 
NULL, NULL, NULL, 
'¿Cuál es el área del triángulo descrito?', 
'20 cm²', '25 cm²', '30 cm²', '40 cm²', 
'A', 5, 10, 'Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2'),

('MATEMÁTICA', NULL, 'Área de un terreno triangular', 
'Un terreno tiene forma triangular con dos lados que miden 15 m y 20 m respectivamente, y el ángulo entre estos lados es de 45 grados. La fórmula para calcular el área es A = (ab * sin(C))/2.', 
NULL, NULL, NULL, 
'¿Cuál es el área aproximada del terreno?', 
'106.07 m²', '112.50 m²', '125.00 m²', '150.00 m²', 
'A', 5, 10, 'Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2'),

('MATEMÁTICA', NULL, 'Comparación de áreas triangulares', 
'Se tienen dos triángulos: el primero con lados 5 cm y 7 cm y ángulo comprendido 60°, el segundo con lados 6 cm y 8 cm y ángulo comprendido 30°. Usa la fórmula A = (ab * sin(C))/2 para calcular sus áreas.', 
NULL, NULL, NULL, 
'¿Cuál triángulo tiene mayor área?', 
'El primero', 'El segundo', 'Ambos tienen igual área', 'No se puede determinar', 
'A', 5, 10, 'Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2'),

('MATEMÁTICA', NULL, 'Área máxima posible', 
'Si tienes dos lados de un triángulo que miden 12 cm y 16 cm respectivamente, y puedes elegir el ángulo entre ellos, ¿para qué valor del ángulo se obtendría el área máxima posible usando la fórmula A = (ab * sin(C))/2?', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo que produce el área máxima?', 
'90 grados', '60 grados', '45 grados', '30 grados', 
'A', 5, 10, 'Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2'),

('MATEMÁTICA', NULL, 'Problema de construcción', 
'Un carpintero está construyendo un soporte triangular para una mesa. Tiene dos tablas de 1.5 m y 2 m de largo que formarán dos lados del triángulo, y desea que el ángulo entre ellas sea de 75° para un soporte óptimo.', 
NULL, NULL, NULL, 
'¿Cuál será el área del soporte triangular que está construyendo? (Usa A = (ab * sin(C))/2)', 
'1.45 m²', '1.60 m²', '1.75 m²', '2.00 m²', 
'A', 5, 10, 'Área de triángulos: Uso de la fórmula A=(ab*Sin(c))/2'),

-- Preguntas sobre Ley de cosenos
('MATEMÁTICA', NULL, 'Cálculo de lado con ley de cosenos', 
'En un triángulo ABC, se conocen los lados b = 7 cm, c = 10 cm y el ángulo A = 45°. Para encontrar el lado a, debemos aplicar la ley de cosenos: a² = b² + c² - 2bc cos(A).', 
NULL, NULL, NULL, 
'¿Cuál es la longitud aproximada del lado a?', 
'7.16 cm', '7.50 cm', '8.25 cm', '9.00 cm', 
'A', 5, 10, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Determinación de ángulo', 
'En un triángulo con lados a = 5, b = 6 y c = 7, queremos encontrar la medida del ángulo opuesto al lado c usando la ley de cosenos: cos(C) = (a² + b² - c²)/(2ab).', 
NULL, NULL, NULL, 
'¿Cuál es la medida aproximada del ángulo C?', 
'60 grados', '75 grados', '78.5 grados', '90 grados', 
'C', 5, 10, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Problema de navegación', 
'Dos barcos parten del mismo puerto al mismo tiempo. El primero navega a 20 nudos con rumbo N30°E, y el segundo a 25 nudos con rumbo S45°E. Después de una hora, ¿a qué distancia se encuentran uno del otro? Usa la ley de cosenos.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia entre los dos barcos después de una hora?', 
'36.4 nudos', '38.7 nudos', '40.2 nudos', '42.5 nudos', 
'B', 5, 10, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Triángulo obtusángulo', 
'En un triángulo con lados 8 cm, 10 cm y 13 cm, queremos determinar si es acutángulo, rectángulo u obtusángulo usando la ley de cosenos.', 
NULL, NULL, NULL, 
'¿Qué tipo de triángulo es según sus ángulos?', 
'Acutángulo', 'Rectángulo', 'Obtusángulo', 'No se puede determinar', 
'C', 5, 10, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Aplicación en topografía', 
'Un topógrafo mide tres lados de un terreno triangular obteniendo 150 m, 200 m y 280 m. Necesita calcular el ángulo más grande del terreno usando la ley de cosenos.', 
NULL, NULL, NULL, 
'¿Cuál es la medida aproximada del ángulo opuesto al lado de 280 m?', 
'100.8 grados', '105.3 grados', '110.5 grados', '115.2 grados', 
'A', 5, 10, 'Ley de cosenos'),

-- Preguntas sobre Ley de senos
('MATEMÁTICA', NULL, 'Cálculo de lado desconocido', 
'En un triángulo ABC, conocemos el ángulo A = 30°, el ángulo B = 45° y el lado a = 10 cm. Para encontrar el lado b, aplicamos la ley de senos: a/sen(A) = b/sen(B).', 
NULL, NULL, NULL, 
'¿Cuál es la longitud del lado b?', 
'10√2 cm', '12 cm', '14.14 cm', '15 cm', 
'C', 5, 10, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Resolución de triángulo AAS', 
'Dado un triángulo con ángulos A = 40°, B = 60° y lado a = 12 cm, queremos encontrar la longitud del lado c usando la ley de senos.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud aproximada del lado c?', 
'15.3 cm', '16.1 cm', '17.8 cm', '18.5 cm', 
'B', 5, 10, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Problema de altura de árbol', 
'Para medir la altura de un árbol, una persona se sitúa a 20 metros de su base y mide el ángulo de elevación a la copa, que resulta ser de 50°. Desde otro punto, a 30 metros del árbol, el ángulo es de 35°.', 
NULL, NULL, NULL, 
'¿Cuál es la altura aproximada del árbol usando la ley de senos?', 
'23.8 m', '25.4 m', '27.1 m', '28.6 m', 
'A', 5, 10, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Determinación de ángulo', 
'En un triángulo con lados a = 7 cm, b = 10 cm y ángulo A = 30°, queremos encontrar la medida del ángulo B usando la ley de senos: sen(B)/b = sen(A)/a.', 
NULL, NULL, NULL, 
'¿Cuál es la medida posible del ángulo B?', 
'45.6 grados', '134.4 grados', 'Ambas son posibles', 'No tiene solución', 
'C', 5, 10, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Aplicación en física', 
'Dos fuerzas actúan sobre un objeto formando un ángulo de 65°. La primera fuerza es de 40 N y la resultante es de 60 N. Usando la ley de senos, queremos encontrar la segunda fuerza.', 
NULL, NULL, NULL, 
'¿Cuál es la magnitud aproximada de la segunda fuerza?', 
'34.8 N', '36.5 N', '38.2 N', '40.0 N', 
'A', 5, 10, 'Ley de senos'),

-- Preguntas sobre Aplicación de las leyes de senos y cosenos: Resolución de triángulos
('MATEMÁTICA', NULL, 'Resolución de triángulo SAS', 
'Dado un triángulo con lados b = 8 cm, c = 10 cm y ángulo A = 60°, queremos resolver completamente el triángulo usando tanto la ley de cosenos como la ley de senos.', 
NULL, NULL, NULL, 
'¿Cuál es la medida aproximada del ángulo B?', 
'41.4 grados', '45.0 grados', '48.6 grados', '52.2 grados', 
'A', 5, 10, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Problema de navegación combinado', 
'Un barco navega 50 km al este, luego gira 120° y navega otros 70 km. Queremos determinar la distancia final del barco al punto de partida.', 
NULL, NULL, NULL, 
'¿A qué distancia se encuentra el barco de su punto de partida?', 
'63.5 km', '65.8 km', '68.2 km', '70.5 km', 
'A', 5, 10, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Triángulo ambiguo (caso SSA)', 
'Dado un triángulo con a = 10 cm, b = 16 cm y ángulo A = 30°, analizamos las posibles soluciones usando la ley de senos y cosenos.', 
NULL, NULL, NULL, 
'¿Cuántas soluciones posibles existen para este triángulo?', 
'0', '1', '2', 'Infinitas', 
'C', 5, 10, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Aplicación en arquitectura', 
'Un arquitecto diseña un techo triangular con lados de 9 m y 12 m que forman un ángulo de 50°. Necesita calcular los otros ángulos del techo para completar el diseño.', 
NULL, NULL, NULL, 
'¿Cuál es la medida del ángulo opuesto al lado de 9 m?', 
'35.7 grados', '40.2 grados', '45.8 grados', '50.0 grados', 
'A', 5, 10, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Problema de física vectorial', 
'Dos vectores de 15 N y 20 N actúan sobre un objeto formando un ángulo de 110°. Queremos encontrar la magnitud del vector resultante y el ángulo que forma con el vector de 15 N.', 
NULL, NULL, NULL, 
'¿Cuál es la magnitud aproximada del vector resultante?', 
'22.7 N', '24.3 N', '25.8 N', '27.2 N', 
'A', 5, 10, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos');

-- Script para insertar preguntas de Matemáticas para 4to año de secundaria

-- 1. Sistemas de medición angular: sexagesimal, radial
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Conversión de grados a radianes', 'El sistema sexagesimal divide la circunferencia en 360 grados, mientras que el sistema radial utiliza radianes, donde 2π radianes equivalen a 360 grados. Esta conversión es fundamental en trigonometría.', NULL, NULL, NULL, '¿A cuántos radianes equivalen 180 grados?', 'π/2 radianes', 'π radianes', '2π radianes', '3π/2 radianes', 'B', 5, 10, 'Sistemas de medición angular: sexagesimal, radial'),
('MATEMÁTICA', NULL, 'Equivalencia angular', 'Los sistemas de medición angular son esenciales para resolver problemas trigonométricos y de geometría. Comprender las relaciones entre grados y radianes permite trabajar con ambos sistemas indistintamente.', NULL, NULL, NULL, '¿Cuál de las siguientes afirmaciones es correcta?', '90° equivalen a π/4 radianes', '270° equivalen a 3π/2 radianes', '360° equivalen a π radianes', '180° equivalen a 2π radianes', 'B', 5, 10, 'Sistemas de medición angular: sexagesimal, radial'),
('MATEMÁTICA', NULL, 'Comparación de ángulos', 'Al trabajar con diferentes sistemas de medición angular, es importante poder comparar magnitudes expresadas en distintas unidades para resolver problemas geométricos.', NULL, NULL, NULL, '¿Qué ángulo es mayor: π/3 radianes o 60 grados?', 'π/3 radianes es mayor', '60 grados es mayor', 'Son iguales', 'No se pueden comparar', 'C', 5, 10, 'Sistemas de medición angular: sexagesimal, radial'),
('MATEMÁTICA', NULL, 'Suma de ángulos', 'Al sumar ángulos expresados en diferentes sistemas, primero debemos convertirlos a un sistema común para poder realizar la operación correctamente.', NULL, NULL, NULL, 'Si sumamos π/6 radianes + 30 grados, ¿cuál es el resultado en grados?', '45 grados', '60 grados', '90 grados', '120 grados', 'B', 5, 10, 'Sistemas de medición angular: sexagesimal, radial'),
('MATEMÁTICA', NULL, 'Aplicación práctica', 'En ingeniería y física, es común necesitar convertir entre sistemas angulares para resolver problemas prácticos que involucran movimiento circular o oscilaciones.', NULL, NULL, NULL, 'Un motor gira a 120 revoluciones por minuto. ¿Cuál es su velocidad angular en radianes por segundo?', '2π rad/s', '4π rad/s', '6π rad/s', '8π rad/s', 'B', 5, 10, 'Sistemas de medición angular: sexagesimal, radial'),

-- 2. Longitud de arco
('MATEMÁTICA', NULL, 'Cálculo básico de arco', 'La longitud de un arco de circunferencia depende del radio y del ángulo central que subtiende dicho arco. La fórmula general es L = rθ, donde θ debe estar en radianes.', NULL, NULL, NULL, 'Calcula la longitud de un arco de circunferencia con radio 5 cm y ángulo central de π/3 radianes.', '5π/3 cm', '10π/3 cm', '15π/3 cm', '20π/3 cm', 'A', 5, 10, 'Longitud de arco'),
('MATEMÁTICA', NULL, 'Problema con grados', 'Para calcular la longitud de arco cuando el ángulo está en grados, primero debemos convertirlo a radianes antes de aplicar la fórmula L = rθ.', NULL, NULL, NULL, '¿Cuál es la longitud de un arco de radio 12 cm y ángulo central de 30 grados?', 'π cm', '2π cm', '3π cm', '4π cm', 'B', 5, 10, 'Longitud de arco'),
('MATEMÁTICA', NULL, 'Comparación de arcos', 'Al comparar longitudes de arco para diferentes radios pero mismo ángulo central, podemos observar cómo la longitud varía proporcionalmente con el radio.', NULL, NULL, NULL, 'Si un arco de radio 4 cm tiene longitud 2π cm, ¿cuál sería la longitud de un arco con el mismo ángulo pero radio 10 cm?', '4π cm', '5π cm', '8π cm', '10π cm', 'B', 5, 10, 'Longitud de arco'),
('MATEMÁTICA', NULL, 'Aplicación en ruedas', 'El cálculo de longitud de arco tiene aplicaciones prácticas en el diseño de engranajes y sistemas de poleas, donde es necesario determinar distancias recorridas.', NULL, NULL, NULL, 'Una rueda de 30 cm de radio gira un ángulo de 120 grados. ¿Qué distancia recorre un punto en el borde de la rueda?', '10π cm', '20π cm', '30π cm', '40π cm', 'B', 5, 10, 'Longitud de arco'),
('MATEMÁTICA', NULL, 'Problema inverso', 'En algunos casos, conocemos la longitud del arco y necesitamos determinar el ángulo central o el radio de la circunferencia.', NULL, NULL, NULL, 'Un arco de 6π cm de longitud subtiende un ángulo central de π/2 radianes. ¿Cuál es el radio de la circunferencia?', '6 cm', '8 cm', '10 cm', '12 cm', 'D', 5, 10, 'Longitud de arco'),

-- 3. Área del sector circular
('MATEMÁTICA', NULL, 'Fórmula básica', 'El área de un sector circular se calcula como A = (θr²)/2, donde θ es el ángulo central en radianes y r es el radio de la circunferencia.', NULL, NULL, NULL, 'Calcula el área de un sector circular con radio 6 cm y ángulo central de π/3 radianes.', '6π cm²', '12π cm²', '18π cm²', '24π cm²', 'A', 5, 10, 'Área del sector circular'),
('MATEMÁTICA', NULL, 'Conversión de unidades', 'Cuando el ángulo central está en grados, debemos convertirlo a radianes antes de aplicar la fórmula del área del sector circular.', NULL, NULL, NULL, '¿Cuál es el área de un sector circular con radio 10 cm y ángulo central de 45 grados?', '12.5π cm²', '25π cm²', '50π cm²', '100π cm²', 'A', 5, 10, 'Área del sector circular'),
('MATEMÁTICA', NULL, 'Relación con área total', 'El área de un sector circular puede expresarse como una fracción del área total del círculo, según la fracción del ángulo central respecto a 2π radianes.', NULL, NULL, NULL, 'Si el área de un sector circular es 1/6 del área total del círculo, ¿cuál es su ángulo central?', 'π/3 radianes', 'π/2 radianes', '2π/3 radianes', '3π/4 radianes', 'A', 5, 10, 'Área del sector circular'),
('MATEMÁTICA', NULL, 'Problema de aplicación', 'El cálculo de áreas sectoriales es útil en diseño arquitectónico, pastelería (para cortar porciones de torta) y en muchos otros campos prácticos.', NULL, NULL, NULL, 'Una pizza de 20 cm de diámetro se corta en 8 porciones iguales. ¿Cuál es el área de cada porción?', '6.25π cm²', '12.5π cm²', '25π cm²', '50π cm²', 'B', 5, 10, 'Área del sector circular'),
('MATEMÁTICA', NULL, 'Comparación de sectores', 'Al comparar sectores circulares con diferentes radios pero misma área, podemos observar relaciones interesantes entre sus ángulos centrales.', NULL, NULL, NULL, 'Dos sectores circulares tienen la misma área. Uno tiene radio 4 cm y ángulo central π/2 radianes. Si el otro tiene radio 8 cm, ¿cuál es su ángulo central?', 'π/8 radianes', 'π/4 radianes', 'π/2 radianes', 'π radianes', 'A', 5, 10, 'Área del sector circular'),

-- 4. Círculo unitario: medición angular en el círculo
('MATEMÁTICA', NULL, 'Definición básica', 'El círculo unitario es una herramienta fundamental en trigonometría, definido como un círculo con radio 1 centrado en el origen del plano cartesiano.', NULL, NULL, NULL, 'En el círculo unitario, ¿qué coordenada tiene el punto correspondiente a un ángulo de 0 radianes?', '(0, 1)', '(1, 0)', '(0, -1)', '(-1, 0)', 'B', 5, 10, 'Círculo unitario: medición angular en el círculo'),
('MATEMÁTICA', NULL, 'Cuadrantes del círculo', 'El círculo unitario se divide en cuatro cuadrantes, cada uno correspondiente a un rango específico de ángulos medidos desde el eje x positivo.', NULL, NULL, NULL, '¿En qué cuadrante del círculo unitario se encuentra un ángulo de 5π/6 radianes?', 'Primer cuadrante', 'Segundo cuadrante', 'Tercer cuadrante', 'Cuarto cuadrante', 'B', 5, 10, 'Círculo unitario: medición angular en el círculo'),
('MATEMÁTICA', NULL, 'Ángulos mayores a 2π', 'Los ángulos en el círculo unitario pueden ser mayores a 2π radianes, lo que indica múltiples vueltas completas alrededor del círculo.', NULL, NULL, NULL, '¿Qué ángulo entre 0 y 2π es equivalente a 17π/4 radianes?', 'π/4', '3π/4', '5π/4', '7π/4', 'A', 5, 10, 'Círculo unitario: medición angular en el círculo'),
('MATEMÁTICA', NULL, 'Ángulos negativos', 'Los ángulos negativos en el círculo unitario representan rotaciones en sentido horario desde el eje x positivo.', NULL, NULL, NULL, '¿Qué ángulo positivo entre 0 y 2π es equivalente a -π/3 radianes?', 'π/3', '2π/3', '4π/3', '5π/3', 'D', 5, 10, 'Círculo unitario: medición angular en el círculo'),
('MATEMÁTICA', NULL, 'Puntos simétricos', 'El círculo unitario presenta simetrías que permiten relacionar las coordenadas de puntos correspondientes a ángulos complementarios o suplementarios.', NULL, NULL, NULL, 'Si un punto en el círculo unitario tiene coordenadas (a, b) para un ángulo θ, ¿cuáles son las coordenadas para el ángulo π - θ?', '(a, -b)', '(-a, b)', '(-a, -b)', '(b, a)', 'B', 5, 10, 'Círculo unitario: medición angular en el círculo'),

-- 5. Círculo unitario: Definición de la razón seno y coseno
('MATEMÁTICA', NULL, 'Definición de seno', 'En el círculo unitario, el seno de un ángulo θ se define como la coordenada y del punto correspondiente a ese ángulo en el círculo.', NULL, NULL, NULL, '¿Cuál es el valor de sen(π/2)?', '0', '0.5', '1', '-1', 'C', 5, 10, 'Círculo unitario: Definición de la razón seno y coseno'),
('MATEMÁTICA', NULL, 'Definición de coseno', 'El coseno de un ángulo θ en el círculo unitario corresponde a la coordenada x del punto asociado a ese ángulo.', NULL, NULL, NULL, '¿Cuál es el valor de cos(π)?', '1', '0', '-1', '0.5', 'C', 5, 10, 'Círculo unitario: Definición de la razón seno y coseno'),
('MATEMÁTICA', NULL, 'Relación entre seno y coseno', 'Las funciones seno y coseno están íntimamente relacionadas a través de desplazamientos y simetrías en el círculo unitario.', NULL, NULL, NULL, '¿Cuál de las siguientes igualdades es correcta?', 'sen(π/2 - θ) = cosθ', 'sen(π - θ) = cosθ', 'sen(θ + π/2) = -cosθ', 'sen(θ + π) = cosθ', 'A', 5, 10, 'Círculo unitario: Definición de la razón seno y coseno'),
('MATEMÁTICA', NULL, 'Signos por cuadrante', 'Los signos del seno y coseno varían según el cuadrante en el que se encuentre el ángulo en el círculo unitario.', NULL, NULL, NULL, 'Para un ángulo en el tercer cuadrante, ¿cuál es el signo del seno y del coseno?', 'sen +, cos +', 'sen +, cos -', 'sen -, cos +', 'sen -, cos -', 'D', 5, 10, 'Círculo unitario: Definición de la razón seno y coseno'),
('MATEMÁTICA', NULL, 'Valores extremos', 'Las funciones seno y coseno alcanzan sus valores máximo y mínimo en ángulos específicos del círculo unitario.', NULL, NULL, NULL, '¿Para qué valor de θ entre 0 y 2π el coseno alcanza su valor máximo?', '0', 'π/2', 'π', '3π/2', 'A', 5, 10, 'Círculo unitario: Definición de la razón seno y coseno'),

-- 6. Círculo unitario: Identidad fundamental cos²x + sen²x = 1
('MATEMÁTICA', NULL, 'Aplicación directa', 'La identidad fundamental cos²x + sen²x = 1 se deriva directamente del teorema de Pitágoras aplicado al círculo unitario.', NULL, NULL, NULL, 'Si senx = 0.6 y x está en el primer cuadrante, ¿cuál es el valor de cosx?', '0.4', '0.6', '0.8', '1.0', 'C', 5, 10, 'Círculo unitario: Identidad fundamental cos²x + sen²x = 1'),
('MATEMÁTICA', NULL, 'Identidad con valores conocidos', 'La identidad fundamental permite encontrar una función trigonométrica cuando se conoce la otra, considerando el cuadrante del ángulo.', NULL, NULL, NULL, 'Si cosx = -0.8 y x está en el segundo cuadrante, ¿cuál es el valor de senx?', '-0.4', '-0.6', '0.4', '0.6', 'D', 5, 10, 'Círculo unitario: Identidad fundamental cos²x + sen²x = 1'),
('MATEMÁTICA', NULL, 'Verificación de identidad', 'La identidad fundamental es válida para cualquier valor real de x, lo que puede usarse para verificar cálculos trigonométricos.', NULL, NULL, NULL, '¿Para cuál de los siguientes valores de x NO se cumple cos²x + sen²x = 1?', 'π/4', 'π/2', '3π/2', 'Todos cumplen la identidad', 'D', 5, 10, 'Círculo unitario: Identidad fundamental cos²x + sen²x = 1'),
('MATEMÁTICA', NULL, 'Formas equivalentes', 'La identidad fundamental puede reescribirse de diferentes formas útiles para simplificar expresiones trigonométricas.', NULL, NULL, NULL, '¿Cuál de las siguientes es una forma equivalente a cos²x + sen²x = 1?', '1 - sen²x = cos²x', '1 - cos²x = -sen²x', 'sen²x = 1 + cos²x', 'cos²x = 1 - 2sen²x', 'A', 5, 10, 'Círculo unitario: Identidad fundamental cos²x + sen²x = 1'),
('MATEMÁTICA', NULL, 'Aplicación en ecuaciones', 'La identidad fundamental es útil para resolver ecuaciones trigonométricas que involucran tanto seno como coseno.', NULL, NULL, NULL, 'Si 3cos²x + 3sen²x = k, ¿cuál es el valor de k?', '1', '2', '3', '6', 'C', 5, 10, 'Círculo unitario: Identidad fundamental cos²x + sen²x = 1'),

-- 7. Círculo unitario: Definición de tangente
('MATEMÁTICA', NULL, 'Definición básica', 'La tangente de un ángulo θ en el círculo unitario se define como el cociente entre el seno y el coseno de ese ángulo: tanθ = senθ/cosθ.', NULL, NULL, NULL, '¿Cuál es el valor de tan(π/4)?', '0', '1', '√2', 'No definido', 'B', 5, 10, 'Círculo unitario: Definición de tangente'),
('MATEMÁTICA', NULL, 'Tangente en cuadrantes', 'El signo de la tangente varía según el cuadrante del ángulo, dependiendo de los signos del seno y coseno en ese cuadrante.', NULL, NULL, NULL, '¿En qué cuadrante la tangente de un ángulo es negativa?', 'Primero', 'Segundo', 'Tercero', 'Cuarto', 'B', 5, 10, 'Círculo unitario: Definición de tangente'),
('MATEMÁTICA', NULL, 'Tangente de ángulos notables', 'Algunos ángulos tienen valores exactos de tangente que pueden determinarse geométricamente en el círculo unitario.', NULL, NULL, NULL, '¿Cuál es el valor exacto de tan(π/3)?', '1/2', '√2/2', '√3', '1', 'C', 5, 10, 'Círculo unitario: Definición de tangente'),
('MATEMÁTICA', NULL, 'Puntos donde no está definida', 'La tangente no está definida para ángulos donde el coseno es cero, ya que implicaría división por cero.', NULL, NULL, NULL, '¿Para cuál de los siguientes ángulos NO está definida la tangente?', '0', 'π/4', 'π/2', 'π', 'C', 5, 10, 'Círculo unitario: Definición de tangente'),
('MATEMÁTICA', NULL, 'Relación con pendiente', 'En el círculo unitario, la tangente de un ángulo también representa la pendiente de la recta que forma ese ángulo con el eje x positivo.', NULL, NULL, NULL, 'Si tanθ = 1, ¿qué ángulo θ entre 0 y π/2 satisface esta condición?', 'π/6', 'π/4', 'π/3', 'π/2', 'B', 5, 10, 'Círculo unitario: Definición de tangente'),

-- 8. Círculo unitario: Periodicidad de razones trigonométricas
('MATEMÁTICA', NULL, 'Periodicidad del seno y coseno', 'Las funciones seno y coseno son periódicas con periodo 2π, lo que significa que repiten sus valores cada 2π radianes.', NULL, NULL, NULL, '¿Cuál es el valor de sen(9π/2)?', '0', '0.5', '1', '-1', 'C', 5, 10, 'Círculo unitario: Periodicidad de razones trigonométricas'),
('MATEMÁTICA', NULL, 'Periodicidad de la tangente', 'La función tangente tiene un periodo de π radianes, más corto que el del seno y coseno.', NULL, NULL, NULL, '¿Cuál es el valor de tan(5π/4)?', '0', '1', '-1', 'No definido', 'B', 5, 10, 'Círculo unitario: Periodicidad de razones trigonométricas'),
('MATEMÁTICA', NULL, 'Ángulos coterminales', 'Dos ángulos son coterminales si difieren en un múltiplo entero de 2π radianes y por lo tanto tienen las mismas razones trigonométricas.', NULL, NULL, NULL, '¿Cuál de los siguientes ángulos es coterminal con π/3?', '4π/3', '7π/3', '10π/3', '13π/3', 'B', 5, 10, 'Círculo unitario: Periodicidad de razones trigonométricas'),
('MATEMÁTICA', NULL, 'Identificación de periodo', 'Reconocer el periodo de una función trigonométrica permite simplificar cálculos con ángulos grandes.', NULL, NULL, NULL, '¿Cuál es el periodo de la función f(x) = sen(2x)?', 'π', '2π', 'π/2', '4π', 'A', 5, 10, 'Círculo unitario: Periodicidad de razones trigonométricas'),
('MATEMÁTICA', NULL, 'Aplicación en gráficas', 'La periodicidad de las funciones trigonométricas se manifiesta en la repetición de sus gráficas a intervalos regulares.', NULL, NULL, NULL, 'Si cos(θ) = 0.5, ¿cuál es el siguiente valor de θ > 2π que también satisface esta ecuación?', '2π + π/3', '2π + π/2', '2π + 2π/3', '2π + 4π/3', 'A', 5, 10, 'Círculo unitario: Periodicidad de razones trigonométricas'),

-- 9. Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas
('MATEMÁTICA', NULL, 'Relación seno-coseno', 'El círculo unitario permite visualizar y demostrar diversas relaciones entre las diferentes razones trigonométricas.', NULL, NULL, NULL, 'Si θ es un ángulo agudo y senθ = 3/5, ¿cuál es el valor de tanθ?', '3/4', '4/3', '3/5', '5/3', 'A', 5, 10, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),
('MATEMÁTICA', NULL, 'Funciones recíprocas', 'Las funciones cosecante, secante y cotangente son recíprocas del seno, coseno y tangente respectivamente.', NULL, NULL, NULL, 'Si secθ = 2, ¿cuál es el valor de cosθ?', '1/2', '1', '2', 'No se puede determinar', 'A', 5, 10, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),
('MATEMÁTICA', NULL, 'Identidades pitagóricas', 'Además de la identidad fundamental, existen otras identidades que relacionan las funciones trigonométricas.', NULL, NULL, NULL, '¿Cuál de las siguientes es una identidad trigonométrica correcta?', '1 + tan²θ = sec²θ', '1 + cot²θ = tan²θ', '1 + sec²θ = tan²θ', '1 + cos²θ = sen²θ', 'A', 5, 10, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),
('MATEMÁTICA', NULL, 'Ángulos complementarios', 'Las funciones trigonométricas de ángulos complementarios están relacionadas mediante identidades específicas.', NULL, NULL, NULL, '¿Cuál de las siguientes igualdades es correcta para ángulos agudos?', 'sen(90° - θ) = cosθ', 'tan(90° - θ) = tanθ', 'sec(90° - θ) = cosecθ', 'cot(90° - θ) = secθ', 'A', 5, 10, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),
('MATEMÁTICA', NULL, 'Simplificación de expresiones', 'Las relaciones trigonométricas permiten simplificar expresiones complejas que involucran múltiples funciones.', NULL, NULL, NULL, 'Simplifica la expresión: (senθ + cosθ)² + (senθ - cosθ)²', '1', '2', '2sen²θ', '2cos²θ', 'B', 5, 10, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

-- 10. Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos
('MATEMÁTICA', NULL, 'Valores en π/6', 'Los ángulos notables como π/6, π/4 y π/3 tienen valores exactos de sus razones trigonométricas que pueden deducerse geométricamente.', NULL, NULL, NULL, '¿Cuál es el valor exacto de cos(π/6)?', '1/2', '√2/2', '√3/2', '1', 'C', 5, 10, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),
('MATEMÁTICA', NULL, 'Valores en π/4', 'El ángulo π/4 radianes (45 grados) tiene valores iguales para seno y coseno debido a la simetría del triángulo rectángulo isósceles.', NULL, NULL, NULL, '¿Cuál es el valor exacto de tan(π/4)?', '0', '1/2', '1', '√2', 'C', 5, 10, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),
('MATEMÁTICA', NULL, 'Valores en π/3', 'El ángulo π/3 radianes (60 grados) forma parte del triángulo equilátero dividido por la mitad, lo que permite calcular sus razones trigonométricas exactas.', NULL, NULL, NULL, '¿Cuál es el valor exacto de sen(π/3)?', '1/2', '√2/2', '√3/2', '1', 'C', 5, 10, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),
('MATEMÁTICA', NULL, 'Valores en 0 y π/2', 'Los ángulos extremos 0 y π/2 tienen valores particulares que pueden determinarse observando las coordenadas en el círculo unitario.', NULL, NULL, NULL, '¿Cuál es el valor exacto de cos(0)?', '0', '0.5', '1', 'No definido', 'C', 5, 10, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),
('MATEMÁTICA', NULL, 'Cálculo con ángulos notables', 'Conociendo los valores exactos de las razones trigonométricas para ángulos notables, podemos calcular expresiones más complejas sin calculadora.', NULL, NULL, NULL, 'Calcula el valor exacto de sen²(π/6) + cos²(π/3)', '1/4', '1/2', '3/4', '1', 'B', 5, 10, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

-- 11. La ecuación de una línea recta
('MATEMÁTICA', NULL, 'Forma pendiente-intercepto', 'La ecuación de una recta en forma pendiente-intercepto es y = mx + b, donde m es la pendiente y b es el intercepto con el eje y.', NULL, NULL, NULL, '¿Cuál es la pendiente de la recta y = 2x - 5?', '-5', '2', '5', '1/2', 'B', 5, 10, 'La ecuación de una línea recta'),
('MATEMÁTICA', NULL, 'Rectas paralelas', 'Dos rectas son paralelas si y solo si tienen la misma pendiente pero diferente intercepto.', NULL, NULL, NULL, '¿Cuál de las siguientes rectas es paralela a y = 3x + 2?', 'y = -3x + 1', 'y = (1/3)x + 4', 'y = 3x - 5', 'y = -x + 3', 'C', 5, 10, 'La ecuación de una línea recta'),
('MATEMÁTICA', NULL, 'Rectas perpendiculares', 'Dos rectas son perpendiculares si el producto de sus pendientes es -1.', NULL, NULL, NULL, '¿Cuál de las siguientes rectas es perpendicular a y = (1/2)x + 3?', 'y = 2x - 1', 'y = (-1/2)x + 4', 'y = -2x + 5', 'y = (1/2)x - 2', 'C', 5, 10, 'La ecuación de una línea recta'),
('MATEMÁTICA', NULL, 'Ecuación punto-pendiente', 'La ecuación de una recta puede determinarse conociendo un punto por el que pasa y su pendiente.', NULL, NULL, NULL, '¿Cuál es la ecuación de la recta que pasa por (2, -1) con pendiente 3?', 'y = 3x - 7', 'y = 3x + 7', 'y = -3x - 5', 'y = -3x + 5', 'A', 5, 10, 'La ecuación de una línea recta'),
('MATEMÁTICA', NULL, 'Intersección con ejes', 'Los puntos donde una recta intercepta los ejes coordenados pueden encontrarse haciendo x=0 o y=0 en su ecuación.', NULL, NULL, NULL, '¿Cuál es el intercepto con el eje x de la recta 2x + 3y = 6?', '(0, 2)', '(3, 0)', '(0, 3)', '(2, 0)', 'B', 5, 10, 'La ecuación de una línea recta');


-- PREGUNTAS INGLÉS 4° SECUNDARIA
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas sobre "Linguistic dominance - English as a Global Language"
('INGLÉS', NULL, 'English in International Communication', 
'English has become the dominant global language, used in various fields such as business, science, and diplomacy. Approximately 1.5 billion people speak English worldwide, either as a first, second, or foreign language. This linguistic dominance has both advantages and challenges for non-native speakers.', 
NULL, NULL, NULL, 
'What is the main reason English became a global language?', 
'Its simple grammar structure', 
'British colonial expansion and American economic power', 
'It has the largest vocabulary of any language', 
'It is the oldest living language', 
'B', 4, 10, 'Linguistic dominance - English as a Global Language'),

('INGLÉS', NULL, 'Challenges of English Dominance', 
'The widespread use of English can create challenges for non-native speakers and may impact local languages. Many countries debate whether to prioritize English education over preservation of indigenous languages.', 
NULL, NULL, NULL, 
'Which of these is a negative consequence of English linguistic dominance?', 
'Increased opportunities for international travel', 
'Loss of linguistic diversity and marginalization of local languages', 
'Easier access to global news and information', 
'More job opportunities in multinational companies', 
'B', 4, 10, 'Linguistic dominance - English as a Global Language'),

('INGLÉS', NULL, 'English Varieties Around the World', 
'English has developed many regional varieties, such as British English, American English, Indian English, and others. These varieties may differ in pronunciation, vocabulary, and even grammar.', 
NULL, NULL, NULL, 
'What term describes the different forms of English spoken around the world?', 
'English dialects', 
'English accents', 
'English variations', 
'English mutations', 
'A', 4, 10, 'Linguistic dominance - English as a Global Language'),

('INGLÉS', NULL, 'English in the Digital Age', 
'Approximately 60% of all websites are in English, making it the dominant language of the internet. This affects how people access information and communicate online.', 
NULL, NULL, NULL, 
'What percentage of internet content is estimated to be in English?', 
'About 25%', 
'About 40%', 
'About 60%', 
'About 80%', 
'C', 4, 10, 'Linguistic dominance - English as a Global Language'),

('INGLÉS', NULL, 'English as a Lingua Franca', 
'English often serves as a common language between speakers of different native languages, especially in international settings like conferences or business meetings.', 
NULL, NULL, NULL, 
'What is the term for a language used to communicate between people who don''t share a native language?', 
'Pidgin language', 
'Lingua franca', 
'Creole language', 
'Classical language', 
'B', 4, 10, 'Linguistic dominance - English as a Global Language'),

-- Preguntas sobre "Cultural Identity - Third Culture Kids"
('INGLÉS', NULL, 'Understanding Third Culture Kids', 
'Third Culture Kids (TCKs) are individuals who spend a significant part of their developmental years outside their parents'' culture. They often develop a sense of belonging to multiple cultures.', 
NULL, NULL, NULL, 
'Who are considered Third Culture Kids?', 
'Children who reject their parents'' culture', 
'Children who spend developmental years in cultures different from their parents''', 
'Children born to parents from two different cultures', 
'Children who create a completely new culture', 
'B', 4, 10, 'Cultural Identity - Third Culture Kids'),

('INGLÉS', NULL, 'Challenges Faced by TCKs', 
'Third Culture Kids often face unique challenges related to identity, belonging, and relationships due to their multicultural upbringing.', 
NULL, NULL, NULL, 
'Which of these is a common challenge for Third Culture Kids?', 
'Difficulty learning new languages', 
'Feeling like they don''t completely belong to any one culture', 
'Lack of interest in other cultures', 
'Inability to adapt to new environments', 
'B', 4, 10, 'Cultural Identity - Third Culture Kids'),

('INGLÉS', NULL, 'Advantages of Being a TCK', 
'While TCKs face challenges, they also gain valuable skills and perspectives from their multicultural experiences.', 
NULL, NULL, NULL, 
'What is a potential advantage of being a Third Culture Kid?', 
'Limited worldview', 
'Enhanced cultural adaptability and global perspective', 
'Difficulty making friends', 
'Strong attachment to a single cultural identity', 
'B', 4, 10, 'Cultural Identity - Third Culture Kids'),

('INGLÉS', NULL, 'TCKs and Language Skills', 
'Many Third Culture Kids become multilingual, picking up languages from the countries they live in while often maintaining their parents'' native language.', 
NULL, NULL, NULL, 
'How does being a TCK typically affect language acquisition?', 
'It usually prevents learning multiple languages', 
'It often leads to confusion and language mixing', 
'It frequently results in multilingualism', 
'It typically causes loss of the native language', 
'C', 4, 10, 'Cultural Identity - Third Culture Kids'),

('INGLÉS', NULL, 'Defining Home for TCKs', 
'For Third Culture Kids, the concept of "home" can be complex, as they may have connections to multiple places but not feel completely at home in any one location.', 
NULL, NULL, NULL, 
'How do many TCKs describe their sense of "home"?', 
'They always feel completely at home in their parents'' country', 
'They feel equally at home everywhere they go', 
'They often feel at home in multiple places but not completely in one', 
'They reject the concept of home entirely', 
'C', 4, 10, 'Cultural Identity - Third Culture Kids'),

-- Preguntas sobre "Language and Cultural Identity: Mad About English"
('INGLÉS', NULL, 'English Learning in China', 
'The documentary "Mad About English" explores the phenomenon of English learning in China, where millions of people study English with great enthusiasm, seeing it as key to personal and national success.', 
NULL, NULL, NULL, 
'What does "Mad About English" primarily document?', 
'The history of English language development', 
'The enthusiasm for learning English in China', 
'English literature in Asian countries', 
'Problems with English education worldwide', 
'B', 4, 10, 'Language and Cultural Identity: "Mad About English"'),

('INGLÉS', NULL, 'Motivations for Learning English', 
'In "Mad About English", various Chinese people explain their motivations for learning English, ranging from personal growth to national competitiveness.', 
NULL, NULL, NULL, 
'Which is NOT a common motivation for learning English shown in "Mad About English"?', 
'To get better job opportunities', 
'To help China compete globally', 
'To replace Chinese with English', 
'To communicate with foreigners', 
'C', 4, 10, 'Language and Cultural Identity: "Mad About English"'),

('INGLÉS', NULL, 'English and National Development', 
'The documentary shows how China views English proficiency as important for the country''s development and global standing.', 
NULL, NULL, NULL, 
'How does China view English proficiency in relation to national development?', 
'As a threat to Chinese culture', 
'As unimportant for China''s future', 
'As essential for national development and global competitiveness', 
'As only necessary for tourism industry workers', 
'C', 4, 10, 'Language and Cultural Identity: "Mad About English"'),

('INGLÉS', NULL, 'Challenges in English Education', 
'"Mad About English" highlights some challenges in English education in China, including teaching methods and access to quality instruction.', 
NULL, NULL, NULL, 
'What challenge in English education does "Mad About English" highlight?', 
'Lack of interest among Chinese students', 
'Difficulty in finding qualified English teachers', 
'Government restrictions on English learning', 
'Overemphasis on grammar rather than communication', 
'D', 4, 10, 'Language and Cultural Identity: "Mad About English"'),

('INGLÉS', NULL, 'English and Cultural Identity', 
'The documentary explores how Chinese people balance English learning with maintaining their cultural identity.', 
NULL, NULL, NULL, 
'How do Chinese learners in the documentary generally view English in relation to their cultural identity?', 
'As something that will replace Chinese identity', 
'As a tool that can be used without losing Chinese identity', 
'As irrelevant to their cultural identity', 
'As more important than Chinese cultural identity', 
'B', 4, 10, 'Language and Cultural Identity: "Mad About English"'),

-- Preguntas sobre "Global Warming and Science"
('INGLÉS', NULL, 'Understanding Global Warming', 
'Global warming refers to the long-term rise in Earth''s average temperature due to human activities, primarily the burning of fossil fuels which increases greenhouse gases in the atmosphere.', 
NULL, NULL, NULL, 
'What is the primary cause of current global warming trends?', 
'Natural climate cycles', 
'Human activities that increase greenhouse gases', 
'Changes in the sun''s intensity', 
'Volcanic activity', 
'B', 4, 10, 'Global Warming and Science'),

('INGLÉS', NULL, 'Effects of Climate Change', 
'Climate change is causing various impacts worldwide, including rising sea levels, more extreme weather events, and changes in ecosystems.', 
NULL, NULL, NULL, 
'Which of these is NOT a documented effect of climate change?', 
'Melting glaciers and polar ice', 
'More frequent and intense heat waves', 
'Decrease in ocean temperatures worldwide', 
'Changes in plant and animal habitats', 
'C', 4, 10, 'Global Warming and Science'),

('INGLÉS', NULL, 'The Greenhouse Effect', 
'The greenhouse effect is a natural process that warms the Earth''s surface, but human activities have enhanced this effect, leading to global warming.', 
NULL, NULL, NULL, 
'What is the greenhouse effect?', 
'The process by which plants grow in greenhouses', 
'The trapping of heat by gases in the atmosphere', 
'The reflection of sunlight by ice caps', 
'The cooling of oceans due to pollution', 
'B', 4, 10, 'Global Warming and Science'),

('INGLÉS', NULL, 'Carbon Footprint', 
'A carbon footprint measures the total greenhouse gas emissions caused directly and indirectly by an individual, organization, event or product.', 
NULL, NULL, NULL, 
'What does a carbon footprint measure?', 
'The size of a person''s feet in carbon units', 
'The amount of carbon in the atmosphere', 
'Greenhouse gas emissions associated with activities', 
'The carbon content of fossil fuels', 
'C', 4, 10, 'Global Warming and Science'),

('INGLÉS', NULL, 'Renewable Energy Solutions', 
'Transitioning to renewable energy sources like solar, wind, and hydropower is crucial for reducing greenhouse gas emissions and combating climate change.', 
NULL, NULL, NULL, 
'Which of these is NOT a renewable energy source?', 
'Solar power', 
'Wind power', 
'Coal power', 
'Hydroelectric power', 
'C', 4, 10, 'Global Warming and Science'),

-- Preguntas sobre "Energy Conservation"
('INGLÉS', NULL, 'Importance of Energy Conservation', 
'Energy conservation involves reducing energy consumption through efficient practices and technologies, which helps preserve resources and reduce environmental impact.', 
NULL, NULL, NULL, 
'Why is energy conservation important?', 
'It reduces costs and environmental impact', 
'It makes energy companies earn less money', 
'It prevents all forms of energy production', 
'It only benefits individual households', 
'A', 4, 10, 'Energy Conservation'),

('INGLÉS', NULL, 'Everyday Energy Saving Tips', 
'Simple actions like turning off lights, using energy-efficient appliances, and reducing water heating can significantly lower energy consumption.', 
NULL, NULL, NULL, 
'Which of these is an effective way to conserve energy at home?', 
'Leaving electronic devices on standby mode', 
'Using LED light bulbs instead of incandescent ones', 
'Taking longer hot showers', 
'Keeping the refrigerator door open frequently', 
'B', 4, 10, 'Energy Conservation'),

('INGLÉS', NULL, 'Transportation and Energy Use', 
'Transportation accounts for a significant portion of energy consumption, and choosing more efficient options can reduce energy use.', 
NULL, NULL, NULL, 
'Which transportation choice conserves the most energy?', 
'Driving alone in a large SUV', 
'Using public transportation', 
'Flying short distances', 
'Idling the car engine for long periods', 
'B', 4, 10, 'Energy Conservation'),

('INGLÉS', NULL, 'Energy Efficiency Labels', 
'Many countries require energy efficiency labels on appliances to help consumers make informed choices about energy consumption.', 
NULL, NULL, NULL, 
'What is the purpose of energy efficiency labels on appliances?', 
'To indicate the color of the appliance', 
'To show how much energy the appliance uses compared to similar models', 
'To list all the appliance''s technical specifications', 
'To guarantee the appliance will never break down', 
'B', 4, 10, 'Energy Conservation'),

('INGLÉS', NULL, 'Global Impact of Energy Conservation', 
'If all countries improved energy efficiency, it would significantly reduce global energy demand and greenhouse gas emissions.', 
NULL, NULL, NULL, 
'What would be a major global benefit of widespread energy conservation?', 
'Increased dependence on fossil fuels', 
'Reduced greenhouse gas emissions', 
'Higher energy prices worldwide', 
'More frequent power outages', 
'B', 4, 10, 'Energy Conservation');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", 
    "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Tema 1: Education & Minorities: Memories of a Chinese-American childhood
('INGLÉS', NULL, 'A Cultural Dinner', 'During a school cultural event, Lisa shared a meal her grandmother taught her to cook, which represented her Chinese-American heritage. The class enjoyed learning about its origins and how it’s been passed down.', NULL, NULL, NULL,
 'What did Lisa’s dish symbolize during the event?', 'Her family’s traditions', 'A modern recipe', 'A famous restaurant', 'A food experiment', 'A', 4, 10, 'Education & Minorities: Memories of a Chinese-American childhood'),

('INGLÉS', NULL, 'Bilingual Challenges', 'Growing up speaking both English and Chinese, Alan often felt unsure about which language to use at school. Over time, he learned that being bilingual gave him a valuable perspective.', NULL, NULL, NULL,
 'What was a challenge Alan faced?', 'Speaking too loudly', 'Choosing the right language', 'Learning math', 'Making friends', 'B', 4, 10, 'Education & Minorities: Memories of a Chinese-American childhood'),

('INGLÉS', NULL, 'Family Expectations', 'Michelle’s parents always emphasized academic success. She sometimes felt pressured but also proud to represent her heritage through hard work and discipline.', NULL, NULL, NULL,
 'How did Michelle feel about her parents’ expectations?', 'She ignored them', 'She found them boring', 'She was proud but pressured', 'She left school', 'C', 4, 10, 'Education & Minorities: Memories of a Chinese-American childhood'),

('INGLÉS', NULL, 'Celebrating Heritage', 'At the community center, children were invited to create presentations about their cultural heritage. Many chose to perform dances or share stories from home.', NULL, NULL, NULL,
 'What did the children do to show their heritage?', 'They drew maps', 'They performed or shared stories', 'They played sports', 'They built robots', 'B', 4, 10, 'Education & Minorities: Memories of a Chinese-American childhood'),

('INGLÉS', NULL, 'Learning from the Past', 'Reading about her grandmother’s immigration story helped Jenny understand the struggles and successes of her Chinese-American family and strengthened her identity.', NULL, NULL, NULL,
 'What did Jenny learn from the story?', 'How to bake', 'How to travel', 'About her family’s past', 'About farming', 'C', 4, 10, 'Education & Minorities: Memories of a Chinese-American childhood'),

-- Tema 2: Prejudice: Scrap the teen stereotypes
('INGLÉS', NULL, 'Stereotypes in Media', 'Teenagers are often shown in movies as lazy or rebellious. This generalization can influence how adults treat them, even when it''s not true.', NULL, NULL, NULL,
 'What is the problem with how teens are shown in media?', 'It’s always accurate', 'It encourages fairness', 'It creates false images', 'It’s very scientific', 'C', 4, 10, 'Prejudice: Scrap the teen stereotypes'),

('INGLÉS', NULL, 'Teens Speak Up', 'At a school forum, students expressed how stereotypes about their generation made them feel misunderstood. They suggested ways to change these perceptions.', NULL, NULL, NULL,
 'What did the teens want?', 'More homework', 'To be better understood', 'Longer vacations', 'Stricter rules', 'B', 4, 10, 'Prejudice: Scrap the teen stereotypes'),

('INGLÉS', NULL, 'Changing Views', 'Mr. Brown used to think teens didn’t care about society. But after mentoring a group of youth volunteers, he changed his mind completely.', NULL, NULL, NULL,
 'What caused Mr. Brown to change his opinion?', 'A newspaper article', 'Watching a movie', 'Meeting young volunteers', 'A phone call', 'C', 4, 10, 'Prejudice: Scrap the teen stereotypes'),

('INGLÉS', NULL, 'The Responsible Teen', 'Julia balances school, a part-time job, and helps her siblings with homework. Her story challenges common beliefs about teenagers being irresponsible.', NULL, NULL, NULL,
 'What makes Julia’s story special?', 'She skips school', 'She proves a stereotype wrong', 'She dislikes homework', 'She avoids responsibility', 'B', 4, 10, 'Prejudice: Scrap the teen stereotypes'),

('INGLÉS', NULL, 'Facing Prejudice', 'Tom was judged for his fashion style and music taste. Teachers assumed he wasn’t serious, but his high grades proved otherwise.', NULL, NULL, NULL,
 'Why did teachers misjudge Tom?', 'Because of his hobbies', 'Because he was late', 'Because he was loud', 'Because he didn’t speak', 'A', 4, 10, 'Prejudice: Scrap the teen stereotypes'),

-- Tema 3: Discrimination and Racism
('INGLÉS', NULL, 'A Lesson in Equality', 'In a classroom discussion, the teacher explained the impact of racism and encouraged students to treat each other with respect and kindness, regardless of their background.', NULL, NULL, NULL,
 'What did the teacher emphasize?', 'Good grades', 'Respect for all', 'Only one culture', 'Strict rules', 'B', 4, 10, 'Discrimination and Racism'),

('INGLÉS', NULL, 'Different But Equal', 'Maria and Amina come from different cultures but have become close friends. They use their differences as a way to learn and grow together.', NULL, NULL, NULL,
 'What is the main idea of Maria and Amina’s story?', 'They fight often', 'They avoid each other', 'They use differences to connect', 'They dislike traditions', 'C', 4, 10, 'Discrimination and Racism'),

('INGLÉS', NULL, 'Standing Against Hate', 'James saw a classmate being mocked for his accent. He reported the incident and gave a speech about inclusion and unity in their school assembly.', NULL, NULL, NULL,
 'How did James respond to the incident?', 'He joined the mockery', 'He stayed quiet', 'He reported it and took action', 'He left the school', 'C', 4, 10, 'Discrimination and Racism'),

('INGLÉS', NULL, 'No Room for Racism', 'A local soccer team created a campaign to eliminate racism in sports. Players shared stories and wore shirts that said "Respect Everyone".', NULL, NULL, NULL,
 'What was the goal of the campaign?', 'Sell more shirts', 'Improve scores', 'Fight racism', 'Train harder', 'C', 4, 10, 'Discrimination and Racism'),

('INGLÉS', NULL, 'Voices of Change', 'Teenagers gathered in a peaceful protest to raise awareness about racial equality. They carried signs, sang songs, and spoke about their hopes for a fair future.', NULL, NULL, NULL,
 'What was the purpose of the protest?', 'To cancel school', 'To discuss music', 'To promote racial equality', 'To change rules', 'C', 4, 10, 'Discrimination and Racism');

INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", 
  "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", 
  "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- The Coronavirus Pandemic
('INGLÉS', NULL, 'Understanding COVID-19 symptoms', 'During the initial outbreak of the coronavirus pandemic, people were advised to stay at home and observe any flu-like symptoms before contacting healthcare services.', NULL, NULL, NULL, 
 'Which of the following is NOT a common symptom of COVID-19?', 'Cough', 'Fever', 'Rash', 'Tiredness', 'C', 4, 10, 'The Coronavirus Pandemic'),

('INGLÉS', NULL, 'Government responses', 'Governments around the world implemented various measures such as lockdowns and social distancing to curb the spread of the virus.', NULL, NULL, NULL, 
 'What was one of the primary methods used to prevent COVID-19 transmission?', 'Wearing masks', 'Traveling frequently', 'Large gatherings', 'Ignoring symptoms', 'A', 4, 10, 'The Coronavirus Pandemic'),

('INGLÉS', NULL, 'Impact on education', 'The coronavirus pandemic forced many schools to shift to online learning platforms, affecting students and teachers alike.', NULL, NULL, NULL, 
 'How did education systems mainly respond to the pandemic?', 'Cancelled all exams', 'Moved to virtual classes', 'Hired new teachers', 'Closed permanently', 'B', 4, 10, 'The Coronavirus Pandemic'),

('INGLÉS', NULL, 'Personal hygiene importance', 'The pandemic emphasized the importance of hand hygiene, especially washing hands regularly with soap for at least 20 seconds.', NULL, NULL, NULL, 
 'What is the recommended duration for washing hands?', '10 seconds', '30 seconds', '20 seconds', '5 seconds', 'C', 4, 10, 'The Coronavirus Pandemic'),

('INGLÉS', NULL, 'Vaccination development', 'Pharmaceutical companies worked at record speed to develop and distribute vaccines to protect against COVID-19.', NULL, NULL, NULL, 
 'What is the main purpose of a COVID-19 vaccine?', 'Cure the virus', 'Prevent infection', 'Replace masks', 'Stop all travel', 'B', 4, 10, 'The Coronavirus Pandemic'),

-- Advertising: Microbanking
('INGLÉS', NULL, 'Introduction to microbanking', 'Microbanking provides financial services to individuals or small businesses who do not have access to traditional banking.', NULL, NULL, NULL, 
 'What is a key feature of microbanking?', 'Large loans', 'Global transfers', 'Small-scale credit', 'Stock trading', 'C', 4, 10, 'Advertising: Microbanking'),

('INGLÉS', NULL, 'Target audience', 'Microbanking often targets low-income individuals in rural or underserved communities, empowering them financially.', NULL, NULL, NULL, 
 'Who are the main clients of microbanking?', 'High-income investors', 'Government officials', 'Rural communities', 'Tech companies', 'C', 4, 10, 'Advertising: Microbanking'),

('INGLÉS', NULL, 'Media campaigns', 'Advertising for microbanking focuses on simplicity and accessibility, often using radio or posters in local languages.', NULL, NULL, NULL, 
 'What media is commonly used to promote microbanking?', 'Billboards in English', 'Radio in local languages', 'Cinema ads', 'International TV', 'B', 4, 10, 'Advertising: Microbanking'),

('INGLÉS', NULL, 'Loan conditions', 'Microloans generally come with flexible repayment terms and lower interest rates to support economic inclusion.', NULL, NULL, NULL, 
 'What is usually true about microloans?', 'Strict terms', 'High interest', 'Flexible repayment', 'Long waiting periods', 'C', 4, 10, 'Advertising: Microbanking'),

('INGLÉS', NULL, 'Success stories', 'Many microbanking advertisements include testimonials from people who successfully improved their lives through small loans.', NULL, NULL, NULL, 
 'Why are testimonials used in microbanking ads?', 'To criticize banks', 'To provide entertainment', 'To inspire trust', 'To discourage borrowing', 'C', 4, 10, 'Advertising: Microbanking'),

-- Radio and Television
('INGLÉS', NULL, 'Media evolution', 'Radio and television have played significant roles in shaping public opinion and providing entertainment over decades.', NULL, NULL, NULL, 
 'Which medium came first historically?', 'Radio', 'Internet', 'Television', 'Social media', 'A', 4, 10, 'Radio and Television'),

('INGLÉS', NULL, 'Influence on society', 'Television programs have been known to influence societal behavior, especially among children and teens.', NULL, NULL, NULL, 
 'What is one effect TV can have on youth?', 'Encourage reading', 'Increase social activity', 'Shape behavior', 'Limit imagination', 'C', 4, 10, 'Radio and Television'),

('INGLÉS', NULL, 'Educational content', 'Both radio and TV are used to broadcast educational programs to remote areas lacking access to schools.', NULL, NULL, NULL, 
 'Why is educational media important?', 'It replaces teachers', 'It entertains people', 'It promotes technology', 'It educates the public', 'D', 4, 10, 'Radio and Television'),

('INGLÉS', NULL, 'Advertising slots', 'TV and radio stations often depend on paid advertisements to fund their operations.', NULL, NULL, NULL, 
 'How do many radio stations generate income?', 'Government donations', 'User subscriptions', 'Advertising', 'Public speeches', 'C', 4, 10, 'Radio and Television'),

('INGLÉS', NULL, 'Live broadcasting', 'Live broadcasts allow audiences to receive information as it happens, such as news, sports, and events.', NULL, NULL, NULL, 
 'What is the benefit of live broadcasting?', 'More commercials', 'Recorded editing', 'Real-time updates', 'Shorter programs', 'C', 4, 10, 'Radio and Television'),

-- Advertising Effects
('INGLÉS', NULL, 'Purpose of ads', 'Advertising aims to persuade people to buy a product, believe in a message, or adopt a certain behavior.', NULL, NULL, NULL, 
 'What is the main goal of advertising?', 'To entertain', 'To sell or influence', 'To report news', 'To create confusion', 'B', 4, 10, 'Advertising Effects'),

('INGLÉS', NULL, 'Emotional appeal', 'Some advertisements use emotional techniques, such as fear or happiness, to connect with the audience.', NULL, NULL, NULL, 
 'How do ads use emotion?', 'By giving facts', 'By using logic', 'By using feelings', 'By ignoring the viewer', 'C', 4, 10, 'Advertising Effects'),

('INGLÉS', NULL, 'Repetition strategy', 'Repeating a brand name or slogan increases the chance that consumers will remember the product.', NULL, NULL, NULL, 
 'What is the purpose of repetition in ads?', 'To confuse', 'To annoy', 'To entertain', 'To improve recall', 'D', 4, 10, 'Advertising Effects'),

('INGLÉS', NULL, 'Impact on youth', 'Children are particularly susceptible to advertising and may influence their parents’ buying decisions.', NULL, NULL, NULL, 
 'Who is most influenced by ads?', 'Elderly', 'Teenagers', 'Children', 'Adults', 'C', 4, 10, 'Advertising Effects'),

('INGLÉS', NULL, 'Celebrity endorsements', 'Celebrities are often used in ads to create a connection between the product and the audience’s admiration for the celebrity.', NULL, NULL, NULL, 
 'Why are celebrities used in advertising?', 'They are cheap', 'They are unknown', 'They are trusted', 'They work in stores', 'C', 4, 10, 'Advertising Effects'),

-- Media vs Violence: Video games
('INGLÉS', NULL, 'Violence in games', 'Studies have debated whether exposure to violent video games leads to aggressive behavior in teenagers.', NULL, NULL, NULL, 
 'What concern exists about violent video games?', 'Better reflexes', 'Too expensive', 'Aggressive behavior', 'Improved memory', 'C', 4, 10, 'Media vs Violence: Video games'),

('INGLÉS', NULL, 'Parental control', 'Parents are advised to supervise the content of video games their children play to prevent exposure to harmful material.', NULL, NULL, NULL, 
 'What should parents do regarding video games?', 'Buy more games', 'Watch with children', 'Ignore content', 'Supervise usage', 'D', 4, 10, 'Media vs Violence: Video games'),

('INGLÉS', NULL, 'Rating systems', 'Games are labeled with age ratings to guide consumers about appropriate content for different age groups.', NULL, NULL, NULL, 
 'What is the purpose of game ratings?', 'To increase sales', 'To limit fun', 'To guide age-appropriate use', 'To scare buyers', 'C', 4, 10, 'Media vs Violence: Video games'),

('INGLÉS', NULL, 'Educational games', 'Not all video games are violent; some are designed to teach logic, math, and language skills.', NULL, NULL, NULL, 
 'What do educational games offer?', 'Violent content', 'Language skills', 'Shooting practice', 'Fear factor', 'B', 4, 10, 'Media vs Violence: Video games'),

('INGLÉS', NULL, 'Balanced gameplay', 'Experts suggest balancing screen time with physical and social activities to ensure healthy development.', NULL, NULL, NULL, 
 'What is recommended for healthy video game habits?', 'Play all day', 'Avoid friends', 'Balance with activities', 'Sleep less', 'C', 4, 10, 'Media vs Violence: Video games');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", 
    "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", 
    "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
)
VALUES
-- Tema: Censorship: Cartoon violence makes children more aggressive
('INGLÉS', NULL, 'Effects of cartoon violence', 'Many studies have analyzed the impact of violent content in cartoons and its influence on the behavior of children. It is argued that children imitate what they see and may develop aggressive tendencies.', NULL, NULL, NULL, 'What is one reason cartoon violence may increase aggression in children?', 'Because it teaches problem-solving', 'Because it encourages physical responses', 'Because it shows peaceful resolutions', 'Because it limits imagination', 'B', 4, 10, 'Censorship: Cartoon violence makes children more aggressive'),
('INGLÉS', NULL, 'Understanding cartoon content', 'In recent decades, psychologists have been paying attention to the way children interpret cartoon characters and their actions, especially when those involve violent acts without consequences.', NULL, NULL, NULL, 'What message might children receive when cartoon violence has no consequences?', 'That violence is fun and acceptable', 'That bad actions are always punished', 'That peace is the best solution', 'That cartoons are always realistic', 'A', 4, 10, 'Censorship: Cartoon violence makes children more aggressive'),
('INGLÉS', NULL, 'Parental control and cartoons', 'Parents often rely on age ratings to decide whether content is suitable. However, not all cartoons labeled for kids are free from violent scenes, which may affect young viewers.', NULL, NULL, NULL, 'Why might age ratings not be enough to prevent exposure to violence?', 'Because they are only suggestions', 'Because kids ignore them', 'Because all cartoons are safe', 'Because parents do not watch TV', 'A', 4, 10, 'Censorship: Cartoon violence makes children more aggressive'),
('INGLÉS', NULL, 'Impact of media censorship', 'Media censorship can reduce the amount of violent content shown to children, but it also raises concerns about limiting creative expression and freedom.', NULL, NULL, NULL, 'What is a possible downside of censorship in cartoons?', 'Improved child behavior', 'Restricted artistic freedom', 'Better education', 'Less screen time', 'B', 4, 10, 'Censorship: Cartoon violence makes children more aggressive'),
('INGLÉS', NULL, 'Cartoon influence studies', 'A well-known study in the UK found that children exposed to aggressive cartoon characters showed higher levels of aggressive play than those who watched neutral content.', NULL, NULL, NULL, 'What did the UK study suggest?', 'Cartoons have no influence', 'Only movies affect children', 'Aggressive cartoons can lead to aggressive behavior', 'Neutral cartoons are violent', 'C', 4, 10, 'Censorship: Cartoon violence makes children more aggressive'),

-- Tema: How the media can be used to promote environmental issues
('INGLÉS', NULL, 'Media and environmental change', 'Environmental campaigns often use social media, television, and newspapers to spread awareness and encourage people to adopt eco-friendly habits like recycling and reducing plastic use.', NULL, NULL, NULL, 'How can media help with environmental problems?', 'By selling more products', 'By encouraging pollution', 'By promoting environmental awareness', 'By ignoring environmental laws', 'C', 4, 10, 'How the media can be used to promote environmental issues'),
('INGLÉS', NULL, 'Documentaries on nature', 'Television and streaming platforms are full of documentaries that show the beauty of nature and the dangers it faces due to human activity. These programs are meant to inspire care for the planet.', NULL, NULL, NULL, 'What is the goal of nature documentaries?', 'To entertain only', 'To show vacation spots', 'To encourage environmental care', 'To compare countries', 'C', 4, 10, 'How the media can be used to promote environmental issues'),
('INGLÉS', NULL, 'Social media campaigns', 'Activists often use hashtags and viral content to reach a large audience quickly. Campaigns like #SaveTheOceans have made millions of people aware of the issue of plastic waste.', NULL, NULL, NULL, 'What makes social media effective for environmental messages?', 'It reaches few people', 'It is expensive to use', 'It spreads messages quickly', 'It doesn’t need internet', 'C', 4, 10, 'How the media can be used to promote environmental issues'),
('INGLÉS', NULL, 'Advertisements and sustainability', 'Some companies use media ads to show their efforts in sustainability, such as using recycled materials or reducing emissions, to build a positive public image.', NULL, NULL, NULL, 'Why do companies share eco-friendly practices in ads?', 'To hide other problems', 'To build a positive image', 'To sell unrelated products', 'To avoid taxes', 'B', 4, 10, 'How the media can be used to promote environmental issues'),
('INGLÉS', NULL, 'Media’s role in education', 'Educational programs aimed at children include segments on recycling, saving water, and protecting animals. These segments aim to form good habits from a young age.', NULL, NULL, NULL, 'What is the purpose of environmental content in kids’ programs?', 'To increase ratings', 'To make them laugh', 'To encourage bad habits', 'To teach eco-friendly behaviors', 'D', 4, 10, 'How the media can be used to promote environmental issues'),

-- Tema: Population Diversity
('INGLÉS', NULL, 'Diversity in cities', 'Big cities like New York or London are known for their population diversity. People from different cultures live and work together, contributing to a rich mix of traditions.', NULL, NULL, NULL, 'What is one benefit of population diversity in cities?', 'Less communication', 'More conflict', 'Cultural exchange', 'Economic problems', 'C', 4, 10, 'Population Diversity'),
('INGLÉS', NULL, 'Celebrating diversity', 'Many countries celebrate their diverse populations through festivals, food fairs, and cultural days, which help people appreciate each other’s traditions and languages.', NULL, NULL, NULL, 'What do festivals celebrating diversity help promote?', 'Fear of others', 'Cultural understanding', 'Segregation', 'Economic competition', 'B', 4, 10, 'Population Diversity'),
('INGLÉS', NULL, 'Challenges of diversity', 'Diverse communities may face challenges like language barriers or prejudice. However, these can be overcome through education and inclusion policies.', NULL, NULL, NULL, 'How can societies overcome diversity challenges?', 'By ignoring them', 'Through education and inclusion', 'By separating people', 'Through conflict', 'B', 4, 10, 'Population Diversity'),
('INGLÉS', NULL, 'Diversity in the workplace', 'Modern workplaces often have people from different cultural backgrounds. This diversity can lead to new ideas and better team performance when managed well.', NULL, NULL, NULL, 'What is one advantage of workplace diversity?', 'Fewer ideas', 'More tension', 'Lack of trust', 'Better team performance', 'D', 4, 10, 'Population Diversity'),
('INGLÉS', NULL, 'Schools and inclusion', 'Schools with diverse students promote tolerance and help young people learn how to work and live in a globalized world.', NULL, NULL, NULL, 'Why is diversity important in schools?', 'It increases homework', 'It teaches global citizenship', 'It causes more bullying', 'It lowers education', 'B', 4, 10, 'Population Diversity'),

-- Tema: Traditional cultures in Singapore
('INGLÉS', NULL, 'Singapore’s cultural heritage', 'Singapore is a multicultural country where Malay, Chinese, Indian, and Western influences are part of daily life. Each group brings unique customs, food, and festivals.', NULL, NULL, NULL, 'What makes Singapore culturally rich?', 'Its single ethnicity', 'Its modern buildings', 'Its many cultural influences', 'Its language rules', 'C', 4, 10, 'Traditional cultures in Singapore'),
('INGLÉS', NULL, 'Festivals in Singapore', 'Festivals like Chinese New Year, Deepavali, and Hari Raya are celebrated by different communities, allowing everyone to enjoy diverse traditions.', NULL, NULL, NULL, 'Why are Singapore’s festivals important?', 'They are expensive', 'They support diversity', 'They only attract tourists', 'They are mandatory', 'B', 4, 10, 'Traditional cultures in Singapore'),
('INGLÉS', NULL, 'Multilingual society', 'People in Singapore often speak English, Mandarin, Malay, or Tamil. This multilingualism reflects the cultural mix and is encouraged through education.', NULL, NULL, NULL, 'What does Singapore’s language diversity show?', 'Lack of identity', 'Cultural unity', 'Colonial past', 'Confusion in education', 'B', 4, 10, 'Traditional cultures in Singapore'),
('INGLÉS', NULL, 'Food and identity', 'Singaporean food like laksa, satay, and roti prata represents a fusion of its ethnic groups, making cuisine an essential part of national identity.', NULL, NULL, NULL, 'How does food represent culture in Singapore?', 'By copying others', 'By showing local fusion', 'By being simple', 'By ignoring heritage', 'B', 4, 10, 'Traditional cultures in Singapore'),
('INGLÉS', NULL, 'Cultural preservation', 'Despite modernization, Singapore puts effort into preserving its cultural sites and traditions, ensuring that young generations remain connected to their roots.', NULL, NULL, NULL, 'What is Singapore doing to preserve culture?', 'Destroying old sites', 'Ignoring traditions', 'Promoting cultural heritage', 'Focusing only on future', 'C', 4, 10, 'Traditional cultures in Singapore');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR",
    "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
    "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Mental Health
('INGLÉS', NULL, 'Importance of Emotional Well-being', 'Mental health affects how we think, feel, and act. It also determines how we handle stress, relate to others, and make choices.', NULL, NULL, NULL, 
 'Which of the following is a sign of good mental health?', 'Feeling sad all the time', 'Being able to cope with stress', 'Avoiding friends and family', 'Sleeping too much', 'B', 4, 10, 'Mental Health'),

('INGLÉS', NULL, 'Dealing with Anxiety', 'Everyone feels anxious sometimes. Understanding how to deal with it can help us live healthier lives.', NULL, NULL, NULL, 
 'What is a healthy way to cope with anxiety?', 'Isolating yourself', 'Ignoring it', 'Talking to someone you trust', 'Eating junk food', 'C', 4, 10, 'Mental Health'),

('INGLÉS', NULL, 'Understanding Depression', 'Depression is a serious mental health issue that needs attention and support from others.', NULL, NULL, NULL, 
 'What should you do if you think a friend is depressed?', 'Tell them to be happy', 'Avoid them', 'Encourage them to talk to a counselor', 'Laugh at their feelings', 'C', 4, 10, 'Mental Health'),

('INGLÉS', NULL, 'Good Sleep and Mental Health', 'Getting enough sleep is important for keeping your mind and body healthy.', NULL, NULL, NULL, 
 'How many hours of sleep should a teenager get each night?', '4-5 hours', '6-7 hours', '8-10 hours', '11-12 hours', 'C', 4, 10, 'Mental Health'),

('INGLÉS', NULL, 'Seeking Support', 'Talking about your feelings and asking for help when needed is a key part of maintaining mental health.', NULL, NULL, NULL, 
 'Who can you talk to if you feel overwhelmed?', 'No one', 'Only your friends', 'A trusted adult or counselor', 'A stranger online', 'C', 4, 10, 'Mental Health'),

-- Wear Sunscreen
('INGLÉS', NULL, 'Sun Protection Basics', 'Wearing sunscreen protects your skin from harmful UV rays that can cause sunburns and skin cancer.', NULL, NULL, NULL, 
 'What SPF is generally recommended for daily use?', 'SPF 5', 'SPF 15', 'SPF 30', 'SPF 100', 'C', 4, 10, 'Wear Sunscreen'),

('INGLÉS', NULL, 'Applying Sunscreen Correctly', 'Using the right amount of sunscreen and reapplying it often can help protect your skin effectively.', NULL, NULL, NULL, 
 'How often should you reapply sunscreen when outdoors?', 'Every 8 hours', 'Only once a day', 'Every 2 hours', 'Never', 'C', 4, 10, 'Wear Sunscreen'),

('INGLÉS', NULL, 'Benefits of Wearing Sunscreen', 'Sunscreen helps prevent premature aging, sunburns, and reduces the risk of skin cancer.', NULL, NULL, NULL, 
 'Which of the following is a benefit of wearing sunscreen?', 'Getting a tan faster', 'Preventing acne', 'Protecting from UV rays', 'Changing skin color', 'C', 4, 10, 'Wear Sunscreen'),

('INGLÉS', NULL, 'Types of Sunscreen', 'There are physical and chemical sunscreens. Both types provide protection but work in different ways.', NULL, NULL, NULL, 
 'What is a key ingredient in physical sunscreens?', 'Zinc oxide', 'Salicylic acid', 'Alcohol', 'Benzoyl peroxide', 'A', 4, 10, 'Wear Sunscreen'),

('INGLÉS', NULL, 'Sunscreen in Different Weather', 'Even on cloudy or cold days, UV rays can still damage your skin if it’s unprotected.', NULL, NULL, NULL, 
 'Should you wear sunscreen on a cloudy day?', 'No, it’s not needed', 'Only in summer', 'Yes, UV rays still reach the skin', 'Only at the beach', 'C', 4, 10, 'Wear Sunscreen'),

-- Eating Disorders
('INGLÉS', NULL, 'Understanding Eating Disorders', 'Eating disorders are serious conditions related to persistent eating behaviors that negatively affect health.', NULL, NULL, NULL, 
 'Which of the following is an eating disorder?', 'Diabetes', 'Bulimia', 'Anemia', 'Insomnia', 'B', 4, 10, 'Eating Disorders'),

('INGLÉS', NULL, 'Anorexia Awareness', 'Anorexia is an eating disorder where people fear gaining weight and may eat very little.', NULL, NULL, NULL, 
 'What is a common symptom of anorexia?', 'Eating too much', 'Sleeping too much', 'Extreme fear of gaining weight', 'Being very social', 'C', 4, 10, 'Eating Disorders'),

('INGLÉS', NULL, 'Bulimia and Behavior', 'People with bulimia may eat a lot and then force themselves to vomit to avoid weight gain.', NULL, NULL, NULL, 
 'Which behavior is linked to bulimia?', 'Skipping breakfast', 'Overeating followed by vomiting', 'Eating only vegetables', 'Avoiding exercise', 'B', 4, 10, 'Eating Disorders'),

('INGLÉS', NULL, 'Supporting Someone with an Eating Disorder', 'Support and empathy are essential for helping someone with an eating disorder.', NULL, NULL, NULL, 
 'How can you support a friend with an eating disorder?', 'Ignore them', 'Tell them to eat more', 'Listen and suggest seeing a professional', 'Mock their habits', 'C', 4, 10, 'Eating Disorders'),

('INGLÉS', NULL, 'The Role of Media', 'Media often shows unrealistic body images, which can contribute to the development of eating disorders.', NULL, NULL, NULL, 
 'What is a negative effect of media on body image?', 'Improved confidence', 'Unrealistic expectations', 'More sleep', 'Healthy diets', 'B', 4, 10, 'Eating Disorders'),

-- International Youth Festivals
('INGLÉS', NULL, 'What is a Youth Festival?', 'International Youth Festivals bring young people together from different cultures to share ideas, talents, and experiences.', NULL, NULL, NULL, 
 'What is one goal of youth festivals?', 'To teach history', 'To promote war', 'To encourage cultural exchange', 'To sell tickets', 'C', 4, 10, 'International Youth Festivals'),

('INGLÉS', NULL, 'Benefits of Participating', 'Youth festivals help young people build friendships, learn new skills, and understand other cultures.', NULL, NULL, NULL, 
 'Which is a benefit of joining a youth festival?', 'Learning to cook', 'Traveling to space', 'Cultural understanding', 'Learning to drive', 'C', 4, 10, 'International Youth Festivals'),

('INGLÉS', NULL, 'Festival Activities', 'Common activities include music, art, debates, and volunteering to promote global cooperation.', NULL, NULL, NULL, 
 'Which of these activities is typical at a youth festival?', 'Silent reading', 'Running for president', 'Group debates', 'Taking tests', 'C', 4, 10, 'International Youth Festivals'),

('INGLÉS', NULL, 'Cultural Representation', 'Youth festivals allow people to represent their country through music, dance, and clothing.', NULL, NULL, NULL, 
 'How do participants represent their cultures?', 'By staying silent', 'By avoiding contact', 'Through music and traditional dress', 'By copying others', 'C', 4, 10, 'International Youth Festivals'),

('INGLÉS', NULL, 'Organizing a Festival', 'Planning a youth festival involves teamwork, coordination, and clear communication between organizers and participants.', NULL, NULL, NULL, 
 'What is needed to organize a youth festival?', 'A lot of money', 'Good teamwork and planning', 'Famous people', 'Strict rules only', 'B', 4, 10, 'International Youth Festivals'),

-- Book Festivals
('INGLÉS', NULL, 'Introduction to Book Festivals', 'Book festivals celebrate literature and bring together readers, writers, and publishers to share ideas and stories.', NULL, NULL, NULL, 
 'What is the main purpose of a book festival?', 'To sell food', 'To read books silently', 'To celebrate literature and authors', 'To watch TV', 'C', 4, 10, 'Book Festivals'),

('INGLÉS', NULL, 'Activities at Book Festivals', 'Visitors to book festivals can attend author talks, book signings, and writing workshops.', NULL, NULL, NULL, 
 'Which activity is common at book festivals?', 'Cooking classes', 'Book signings', 'Movie screenings', 'Soccer games', 'B', 4, 10, 'Book Festivals'),

('INGLÉS', NULL, 'Authors and Readers', 'Book festivals give readers a chance to meet authors and ask questions about their work.', NULL, NULL, NULL, 
 'Why do readers enjoy book festivals?', 'To meet authors and learn about books', 'To play games', 'To take exams', 'To sleep in tents', 'A', 4, 10, 'Book Festivals'),

('INGLÉS', NULL, 'Children at Book Festivals', 'Many book festivals include activities for children to help them discover the joy of reading.', NULL, NULL, NULL, 
 'How do book festivals encourage children to read?', 'By giving them toys', 'By offering free candy', 'Through fun reading activities', 'By banning TV', 'C', 4, 10, 'Book Festivals'),

('INGLÉS', NULL, 'Global Book Events', 'Large book festivals are held all over the world, attracting international authors and readers.', NULL, NULL, NULL, 
 'Where are book festivals held?', 'Only in schools', 'In different countries around the world', 'Only in libraries', 'Only online', 'B', 4, 10, 'Book Festivals');

INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA")
VALUES
('INGLÉS', NULL, 'Safari en la fauna silvestre', 'A wildlife safari in India offers a unique opportunity to experience diverse animal species in their natural habitat. It’s essential to follow safety guidelines during such adventures.', NULL, NULL, NULL, 'What is the main benefit of a wildlife safari in India?', 'Seeing animals in their natural habitat', 'Learning how to care for animals', 'Capturing wildlife on camera', 'Tasting traditional Indian food', 'A', 4, 10, 'Wildlife safaris in India'),
('INGLÉS', NULL, 'Cultural experience in safaris', 'Indian safaris provide tourists with an exceptional cultural experience, showcasing the beauty of nature and wildlife. Travelers should respect local traditions and safety protocols.', NULL, NULL, NULL, 'What should tourists do when on a wildlife safari in India?', 'Respect local traditions and safety rules', 'Speak loudly to attract animals', 'Carry large amounts of food', 'Only observe the animals from a distance', 'A', 4, 10, 'Wildlife safaris in India'),
('INGLÉS', NULL, 'Types of animals in safaris', 'In India, safaris expose visitors to various animal species, including tigers, elephants, and rhinoceroses. Understanding these animals’ behavior is crucial to ensuring safety during a safari.', NULL, NULL, NULL, 'Which of the following animals can you see in an Indian safari?', 'Tigers, elephants, and rhinoceroses', 'Polar bears, penguins, and seals', 'Lions, zebras, and giraffes', 'Monkeys, pandas, and wolves', 'A', 4, 10, 'Wildlife safaris in India'),
('INGLÉS', NULL, 'Best times for Indian safaris', 'The best time to visit India for a wildlife safari is during the cooler months of October to March, when animals are more likely to be active and visible.', NULL, NULL, NULL, 'When is the best time to visit India for a safari?', 'October to March', 'April to June', 'July to September', 'December to February', 'A', 4, 10, 'Wildlife safaris in India'),
('INGLÉS', NULL, 'Safety in wildlife safaris', 'Safety measures are critical when going on a safari. Tourists should follow the guidance of experienced guides and stay in protected zones to ensure both their safety and the animals’ well-being.', NULL, NULL, NULL, 'What is essential for safety during an Indian safari?', 'Following the guide’s instructions', 'Running after the animals', 'Camping outside designated areas', 'Ignoring the guide’s advice', 'A', 4, 10, 'Wildlife safaris in India'),

('INGLÉS', NULL, 'Traditional healing methods', 'Traditional medicine in many parts of the world relies on natural remedies derived from plants, minerals, and animal products. These methods have been used for centuries and are still practiced today.', NULL, NULL, NULL, 'What is a common source of traditional medicine?', 'Plants and minerals', 'Synthetic chemicals', 'Medical machinery', 'Chemical reactions in labs', 'A', 4, 10, 'Traditional Medicine'),
('INGLÉS', NULL, 'Understanding herbal medicine', 'Herbal medicine involves the use of plants or plant extracts to treat various health conditions. Many cultures rely on herbal remedies for their natural healing properties.', NULL, NULL, NULL, 'What does herbal medicine primarily use?', 'Plants or plant extracts', 'Artificial substances', 'Vaccines', 'Surgical treatments', 'A', 4, 10, 'Traditional Medicine'),
('INGLÉS', NULL, 'Traditional medicine’s importance', 'Despite advancements in modern medicine, traditional medicine still plays a significant role in many societies. It often focuses on holistic approaches to healing, emphasizing balance in the body.', NULL, NULL, NULL, 'What is a key principle of traditional medicine?', 'Holistic approaches and balance', 'Focus on pharmaceutical drugs', 'Use of advanced medical equipment', 'Precision surgeries', 'A', 4, 10, 'Traditional Medicine'),
('INGLÉS', NULL, 'Medicinal plants in traditional treatments', 'Medicinal plants are a cornerstone of traditional medicine. They are used for a variety of treatments, from alleviating pain to enhancing digestion.', NULL, NULL, NULL, 'What are medicinal plants used for in traditional medicine?', 'Alleviating pain and enhancing digestion', 'Creating synthetic drugs', 'Increasing heart rate', 'Preventing diseases through vaccines', 'A', 4, 10, 'Traditional Medicine'),
('INGLÉS', NULL, 'Cultural significance of traditional healing', 'In many cultures, traditional healing practices are closely tied to spiritual beliefs. Healers often combine physical treatments with rituals to restore health and harmony.', NULL, NULL, NULL, 'What is often combined with physical treatments in traditional medicine?', 'Rituals and spiritual practices', 'Modern surgical procedures', 'Injections and vaccines', 'Prescription medications', 'A', 4, 10, 'Traditional Medicine'),

('INGLÉS', NULL, 'Types of alternative medicine', 'Alternative medicine includes therapies like acupuncture, chiropractic care, and naturopathy. These practices offer alternatives to conventional treatments and are increasingly popular.', NULL, NULL, NULL, 'What does alternative medicine include?', 'Acupuncture, chiropractic care, and naturopathy', 'Prescription medication and surgery', 'Antibiotic treatments', 'Vaccinations and insulin injections', 'A', 4, 10, 'Alternative Medicine'),
('INGLÉS', NULL, 'Acupuncture treatment', 'Acupuncture involves inserting thin needles into specific points of the body to alleviate pain and treat various conditions. It has been practiced for thousands of years in China and other Asian cultures.', NULL, NULL, NULL, 'What is the primary goal of acupuncture?', 'Alleviate pain and treat conditions', 'Promote sleep through medication', 'Improve diet through supplements', 'Stimulate hair growth', 'A', 4, 10, 'Alternative Medicine'),
('INGLÉS', NULL, 'Chiropractic care basics', 'Chiropractic care focuses on diagnosing and treating mechanical disorders of the musculoskeletal system, primarily the spine. It often involves spinal adjustments to improve function.', NULL, NULL, NULL, 'What does chiropractic care primarily treat?', 'Mechanical disorders of the spine', 'Skin diseases', 'Respiratory issues', 'Infections', 'A', 4, 10, 'Alternative Medicine'),
('INGLÉS', NULL, 'Naturopathy principles', 'Naturopathy is based on the belief that the body has an innate ability to heal itself. It uses natural remedies such as herbs, nutrition, and lifestyle changes to support healing processes.', NULL, NULL, NULL, 'What is a key principle of naturopathy?', 'The body’s ability to heal itself', 'Dependence on pharmaceutical drugs', 'Relying on advanced medical technology', 'Use of surgery for all ailments', 'A', 4, 10, 'Alternative Medicine'),
('INGLÉS', NULL, 'Popularity of alternative medicine', 'Alternative medicine has become more popular in recent years as many people seek natural or less invasive ways to treat health issues. Its popularity continues to grow worldwide.', NULL, NULL, NULL, 'Why has alternative medicine become more popular?', 'People seek natural and less invasive treatments', 'People are tired of modern medicine', 'People are avoiding health insurance', 'There is no effective alternative', 'A', 4, 10, 'Alternative Medicine'),

('INGLÉS', NULL, 'Dangers of recreational activities', 'Recreational activities, while fun, can pose risks if proper precautions are not taken. This includes activities such as extreme sports, hiking, and water-based recreation.', NULL, NULL, NULL, 'What is one of the dangers of recreational activities?', 'Not taking proper precautions', 'Being too careful', 'Over-preparing for the activity', 'Only choosing safe sports', 'A', 4, 10, 'Recreational Dangers'),
('INGLÉS', NULL, 'Swimming safety guidelines', 'Swimming in natural bodies of water can be hazardous due to strong currents, poor visibility, and waterborne diseases. Proper precautions and safety measures must be followed.', NULL, NULL, NULL, 'What is important for swimming safety?', 'Follow safety guidelines and avoid dangerous areas', 'Swim in the deepest areas of the lake', 'Swim without any flotation devices', 'Ignore lifeguards’ warnings', 'A', 4, 10, 'Recreational Dangers'),
('INGLÉS', NULL, 'Safety in extreme sports', 'Extreme sports, such as skydiving and bungee jumping, require participants to follow strict safety protocols. Failure to do so can lead to severe injuries or fatalities.', NULL, NULL, NULL, 'What should extreme sports participants do?', 'Follow strict safety protocols', 'Ignore instructions to enjoy the thrill', 'Avoid wearing safety gear', 'Choose the highest risk activities', 'A', 4, 10, 'Recreational Dangers'),
('INGLÉS', NULL, 'Risks of hiking in wilderness', 'Hiking in remote wilderness areas can present several dangers, including exposure to the elements, wild animals, and getting lost. It is crucial to be prepared and informed.', NULL, NULL, NULL, 'What is a common risk when hiking in wilderness areas?', 'Getting lost and exposure to the elements', 'Not carrying enough water', 'Lack of proper footwear', 'Over-packing equipment', 'A', 4, 10, 'Recreational Dangers'),
('INGLÉS', NULL, 'Cycling safety precautions', 'Cycling is a popular recreational activity, but safety should always be a priority. Wearing a helmet and following traffic laws are essential to prevent accidents.', NULL, NULL, NULL, 'What is crucial for cycling safety?', 'Wearing a helmet and following traffic laws', 'Riding without any protective gear', 'Riding in busy areas', 'Ignoring traffic signs', 'A', 4, 10, 'Recreational Dangers'),

('INGLÉS', NULL, 'Eco-friendly travel practices', 'Eco-friendly traveling involves making sustainable choices, such as using public transport, reducing waste, and supporting conservation efforts during vacations.', NULL, NULL, NULL, 'What is an example of eco-friendly travel?', 'Using public transport and reducing waste', 'Flying frequently and using plastic', 'Staying in luxurious hotels', 'Driving long distances in private cars', 'A', 4, 10, 'Responsible Travelling: Ecofriendly Vacationing'),
('INGLÉS', NULL, 'Conservation efforts while traveling', 'Travelers can contribute to environmental conservation by choosing destinations that prioritize sustainability and engaging in eco-friendly activities during their trips.', NULL, NULL, NULL, 'How can travelers contribute to conservation?', 'Choosing sustainable destinations and activities', 'Ignoring environmental concerns', 'Choosing destinations with the least regulations', 'Staying in large, energy-consuming resorts', 'A', 4, 10, 'Responsible Travelling: Ecofriendly Vacationing'),
('INGLÉS', NULL, 'Sustainable tourism practices', 'Sustainable tourism focuses on reducing the environmental impact of travel. It encourages tourists to respect local cultures, minimize waste, and choose eco-friendly accommodations.', NULL, NULL, NULL, 'What is a key practice in sustainable tourism?', 'Minimizing waste and respecting local cultures', 'Traveling with luxury in mind', 'Staying at large chain hotels', 'Ignoring local traditions', 'A', 4, 10, 'Responsible Travelling: Ecofriendly Vacationing'),
('INGLÉS', NULL, 'Reducing carbon footprint on vacation', 'When traveling, reducing your carbon footprint is important for protecting the environment. This can be achieved by using low-emission transportation and staying in eco-friendly accommodations.', NULL, NULL, NULL, 'How can you reduce your carbon footprint during vacation?', 'Using low-emission transportation and eco-friendly accommodations', 'Flying frequently and driving long distances', 'Choosing the most luxurious hotels', 'Ignoring environmental impact', 'A', 4, 10, 'Responsible Travelling: Ecofriendly Vacationing'),
('INGLÉS', NULL, 'Impact of waste on the environment', 'Excessive waste during travel can harm the environment. Responsible travelers should recycle, avoid single-use plastics, and dispose of waste properly.', NULL, NULL, NULL, 'What is an important aspect of responsible travel?', 'Recycling and avoiding single-use plastics', 'Leaving trash behind for others to clean', 'Using excessive packaging', 'Ignoring waste management', 'A', 4, 10, 'Responsible Travelling: Ecofriendly Vacationing');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Tema: Uniforms: Why schools should maintain the use of school uniforms
('INGLÉS', NULL, 'Benefits of School Uniforms', 
'School uniforms have been a topic of debate for many years. Proponents argue that uniforms promote equality among students, reduce distractions, and create a sense of belonging. Critics, however, claim they limit self-expression. Consider the following arguments in favor of school uniforms when answering the questions.', 
NULL, NULL, NULL, 
'What is one main advantage of school uniforms mentioned in the text?', 
'They allow complete freedom of expression', 
'They promote equality among students', 
'They are always more fashionable than regular clothes', 
'They eliminate the need for any dress code', 
'B', 4, 10, 'Uniforms: Why schools should maintain the use of school uniforms'),

('INGLÉS', NULL, 'Uniforms and Distractions', 
'Research has shown that school uniforms can significantly reduce visual distractions in the classroom environment. Without competition over fashion trends, students may focus better on their academic work.', 
NULL, NULL, NULL, 
'How do uniforms potentially help academic performance?', 
'By making all students wear the same brand', 
'By reducing fashion-related distractions', 
'By requiring expensive clothing', 
'By allowing unlimited accessories', 
'B', 4, 10, 'Uniforms: Why schools should maintain the use of school uniforms'),

('INGLÉS', NULL, 'Economic Aspects of Uniforms', 
'One often overlooked benefit of school uniforms is their economic impact on families. While there is an initial cost, uniforms can reduce the overall expense of school clothing throughout the year.', 
NULL, NULL, NULL, 
'What economic benefit do uniforms provide?', 
'They require buying new clothes every week', 
'They eliminate all clothing expenses', 
'They reduce overall spending on school clothes', 
'They are always cheaper than regular clothes', 
'C', 4, 10, 'Uniforms: Why schools should maintain the use of school uniforms'),

('INGLÉS', NULL, 'Safety and Identification', 
'School uniforms make it easier to identify students on campus and during field trips. This enhances security by making intruders more noticeable and helps maintain order during school activities.', 
NULL, NULL, NULL, 
'How do uniforms contribute to school safety?', 
'They make students invisible to strangers', 
'They help identify who belongs on campus', 
'They allow students to blend in with visitors', 
'They eliminate the need for security personnel', 
'B', 4, 10, 'Uniforms: Why schools should maintain the use of school uniforms'),

('INGLÉS', NULL, 'School Spirit and Unity', 
'Wearing uniforms can foster a sense of community and school spirit. When students dress alike, they may feel more connected to their school and classmates, creating a stronger learning environment.', 
NULL, NULL, NULL, 
'What aspect of school life do uniforms help strengthen?', 
'Individual fashion competitions', 
'Sense of community and school spirit', 
'Need for expensive designer clothes', 
'Desire to stand out from classmates', 
'B', 4, 10, 'Uniforms: Why schools should maintain the use of school uniforms'),

-- Tema: Tattoing: A tradition, The cultural significance of tattoos
('INGLÉS', NULL, 'Historical Tattoo Traditions', 
'Tattoos have held cultural significance for thousands of years across various civilizations. From Polynesian tribal markings to Japanese irezumi, tattoos often represent important aspects of cultural identity, status, or spiritual beliefs.', 
NULL, NULL, NULL, 
'What is one purpose of traditional tattoos mentioned?', 
'To show temporary fashion trends', 
'To represent cultural identity or status', 
'To hide skin imperfections', 
'To replace clothing in warm climates', 
'B', 4, 10, 'Tattoing: A tradition, The cultural significance of tattoos'),

('INGLÉS', NULL, 'Polynesian Tattoo Meanings', 
'In Polynesian culture, tattoos (tatau) tell stories about a person''s heritage, achievements, and position in society. These intricate designs are more than decoration; they are a visual language.', 
NULL, NULL, NULL, 
'What information might a traditional Polynesian tattoo convey?', 
'A person''s favorite color', 
'A person''s social media handles', 
'A person''s heritage and achievements', 
'A person''s dietary preferences', 
'C', 4, 10, 'Tattoing: A tradition, The cultural significance of tattoos'),

('INGLÉS', NULL, 'Japanese Irezumi Art', 
'Japanese irezumi (traditional tattooing) has a complex history, once associated with criminals but later adopted by firemen and workers as symbols of bravery. Today it''s recognized as a significant art form.', 
NULL, NULL, NULL, 
'What group later adopted Japanese tattoos as symbols of bravery?', 
'Government officials', 
'Firemen and workers', 
'School teachers', 
'Restaurant owners', 
'B', 4, 10, 'Tattoing: A tradition, The cultural significance of tattoos'),

('INGLÉS', NULL, 'Maori Facial Tattoos', 
'For the Maori people of New Zealand, facial tattoos (ta moko) are sacred traditions representing genealogy, knowledge, and social status. Each design is unique to the individual.', 
NULL, NULL, NULL, 
'What does a Maori ta moko traditionally represent?', 
'Modern fashion trends', 
'Genealogy and social status', 
'Favorite sports teams', 
'Recent travel experiences', 
'B', 4, 10, 'Tattoing: A tradition, The cultural significance of tattoos'),

('INGLÉS', NULL, 'Native American Tattoos', 
'Many Native American tribes used tattoos for spiritual protection, healing, or to mark important life events. These practices were nearly lost during colonization but are now being revived.', 
NULL, NULL, NULL, 
'Why did some Native American tribes use tattoos?', 
'To show they could afford expensive ink', 
'For spiritual protection and marking life events', 
'To copy European styles', 
'Because they didn''t have mirrors', 
'B', 4, 10, 'Tattoing: A tradition, The cultural significance of tattoos'),

-- Tema: Workplace dress codes and tattoing
('INGLÉS', NULL, 'Changing Workplace Attitudes', 
'Workplace attitudes toward visible tattoos are evolving. While some conservative industries still restrict them, many companies now accept or even celebrate employees'' body art as part of diversity and inclusion.', 
NULL, NULL, NULL, 
'How are workplace attitudes toward tattoos changing?', 
'All companies now require visible tattoos', 
'Many companies are becoming more accepting', 
'Tattoos are now banned in all workplaces', 
'Only hand tattoos are allowed', 
'B', 4, 10, 'Workplace dress codes and tattoing'),

('INGLÉS', NULL, 'Industry Differences', 
'Acceptance of visible tattoos in the workplace varies by industry. Creative fields often have the most lenient policies, while client-facing roles in conservative sectors may still have restrictions.', 
NULL, NULL, NULL, 
'Which industry is mentioned as typically more accepting of tattoos?', 
'Creative fields', 
'Banking and finance', 
'Government administration', 
'Corporate law firms', 
'A', 4, 10, 'Workplace dress codes and tattoing'),

('INGLÉS', NULL, 'Professional Appearance', 
'The debate continues about whether visible tattoos affect perceptions of professionalism. Some studies show customers may judge tattooed employees differently, while others find no significant impact.', 
NULL, NULL, NULL, 
'What concern exists about visible tattoos at work?', 
'They might glow in the dark', 
'They could affect perceptions of professionalism', 
'They always fade by lunchtime', 
'They make computers malfunction', 
'B', 4, 10, 'Workplace dress codes and tattoing'),

('INGLÉS', NULL, 'Tattoo Policies', 
'Some companies have specific tattoo policies that require body art to be covered or limit content (no offensive imagery). These policies attempt to balance individual expression with company image.', 
NULL, NULL, NULL, 
'What might a company''s tattoo policy include?', 
'Requiring all employees to get tattoos', 
'Banning all personal expression at work', 
'Limiting offensive imagery or requiring coverage', 
'Specifying tattoo colors for each department', 
'C', 4, 10, 'Workplace dress codes and tattoing'),

('INGLÉS', NULL, 'Cultural Considerations', 
'Workplace tattoo policies must also consider cultural and religious tattoos, which may be protected under anti-discrimination laws. Employers need to balance these rights with business needs.', 
NULL, NULL, NULL, 
'Why must companies consider cultural tattoos?', 
'Because they''re always more colorful', 
'Because they may be protected under anti-discrimination laws', 
'Because customers prefer them', 
'Because they fade faster', 
'B', 4, 10, 'Workplace dress codes and tattoing'),

-- Tema: Different traditions that exist in a country
('INGLÉS', NULL, 'Festival Diversity', 
'Countries often have diverse traditional festivals reflecting their multicultural heritage. For example, Peru celebrates both indigenous Inti Raymi and Catholic traditions like Señor de los Milagros.', 
NULL, NULL, NULL, 
'What does Peru''s festival diversity demonstrate?', 
'That everyone likes the same music', 
'Its multicultural heritage', 
'That traditions never change', 
'That only religious festivals matter', 
'B', 4, 10, 'Different traditions that exist in a country'),

('INGLÉS', NULL, 'Culinary Traditions', 
'Traditional foods often tell the history of a place. Peru''s cuisine combines indigenous ingredients like quinoa and potatoes with Spanish, African, Chinese, and Japanese influences.', 
NULL, NULL, NULL, 
'What does Peruvian cuisine reflect?', 
'Only recent food trends', 
'A blend of cultural influences throughout history', 
'Exclusively Spanish cooking methods', 
'Limited use of local ingredients', 
'B', 4, 10, 'Different traditions that exist in a country'),

('INGLÉS', NULL, 'Music and Dance', 
'Traditional music and dance forms preserve cultural identity while evolving over time. Peru has both indigenous dances like huayno and Afro-Peruvian forms like festejo.', 
NULL, NULL, NULL, 
'What is an example of Afro-Peruvian music mentioned?', 
'Reggaeton', 
'Festejo', 
'Classical symphony', 
'Rock and roll', 
'B', 4, 10, 'Different traditions that exist in a country'),

('INGLÉS', NULL, 'Clothing Traditions', 
'Traditional clothing varies by region and culture within countries. In Peru, you might see Andean polleras (skirts) alongside modern Western-style clothing in urban areas.', 
NULL, NULL, NULL, 
'What traditional Andean clothing is mentioned?', 
'Blue jeans', 
'Polleras (skirts)', 
'Business suits', 
'Sports jerseys', 
'B', 4, 10, 'Different traditions that exist in a country'),

('INGLÉS', NULL, 'Language Diversity', 
'Many countries have linguistic diversity beyond their official language. Peru recognizes Quechua, Aymara, and other indigenous languages alongside Spanish.', 
NULL, NULL, NULL, 
'What does Peru''s language policy demonstrate?', 
'That only Spanish is important', 
'Recognition of linguistic diversity', 
'That all Peruvians speak three languages', 
'That indigenous languages are disappearing', 
'B', 4, 10, 'Different traditions that exist in a country');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas sobre "Computers: Our lives on a chip"
('INGLÉS', NULL, 'The Digital Revolution', 'Computers have transformed every aspect of modern life, from communication to education and business. Understanding their impact is crucial for students in the 21st century. These questions will test your knowledge about how computers function as the "chip" of our daily lives.', NULL, NULL, NULL, 'What is the main component that allows computers to process information?', 'Central Processing Unit (CPU)', 'Hard Disk Drive (HDD)', 'Random Access Memory (RAM)', 'Power Supply Unit (PSU)', 'A', 4, 10, 'Computers: Our lives on a chip'),
('INGLÉS', NULL, 'Evolution of Storage', 'From floppy disks to cloud storage, computer data storage has evolved dramatically. This evolution has enabled the digital revolution we experience today.', NULL, NULL, NULL, 'Which of these storage devices has the largest capacity today?', 'USB Flash Drive (128GB)', 'External Hard Drive (2TB)', 'Blu-ray Disc (50GB)', 'Cloud Storage (10TB+)', 'D', 4, 10, 'Computers: Our lives on a chip'),
('INGLÉS', NULL, 'Computer Networks', 'The internet connects computers worldwide, creating a global network of information exchange. This connectivity has changed how we work, learn, and socialize.', NULL, NULL, NULL, 'What does "URL" stand for in internet terminology?', 'Uniform Resource Locator', 'Universal Reference Link', 'Unified Resource Language', 'User Request Location', 'A', 4, 10, 'Computers: Our lives on a chip'),
('INGLÉS', NULL, 'Software Types', 'Computer software can be divided into system software that runs the computer and application software that performs specific tasks for users.', NULL, NULL, NULL, 'Which of these is an example of system software?', 'Microsoft Word', 'Adobe Photoshop', 'Windows Operating System', 'Google Chrome', 'C', 4, 10, 'Computers: Our lives on a chip'),
('INGLÉS', NULL, 'Digital Security', 'With increased computer use comes the need for digital security to protect personal and financial information from cyber threats.', NULL, NULL, NULL, 'What is the best practice for creating strong passwords?', 'Using your birthdate', 'Combining letters, numbers and symbols', 'Writing your pet''s name', 'Using the same password for all accounts', 'B', 4, 10, 'Computers: Our lives on a chip'),

-- Preguntas sobre "Mobile phones: Quick access to poetry"
('INGLÉS', NULL, 'Poetry in Your Pocket', 'Mobile phones have made literature and poetry accessible anywhere, anytime. Many apps now allow users to read, write, and share poetry with global communities.', NULL, NULL, NULL, 'What advantage do mobile phones provide for poetry enthusiasts?', 'Instant access to thousands of poems', 'Ability to write and share poetry easily', 'Opportunity to join poetry communities', 'All of the above', 'D', 4, 10, 'Mobile phones: Quick access to poetry'),
('INGLÉS', NULL, 'Digital Haiku', 'The brevity of haiku poetry (5-7-5 syllable structure) makes it particularly suitable for mobile phone consumption and creation.', NULL, NULL, NULL, 'What is the traditional syllable structure of a haiku?', '7-5-7', '5-7-5', '7-7-7', '5-5-5', 'B', 4, 10, 'Mobile phones: Quick access to poetry'),
('INGLÉS', NULL, 'Poetry Apps', 'Numerous mobile applications have been developed specifically for poetry lovers, offering features like daily poems, writing tools, and performance platforms.', NULL, NULL, NULL, 'Which feature is commonly found in poetry apps?', 'Daily poem notifications', 'Rhyming dictionaries', 'Recording tools for spoken word', 'All of the above', 'D', 4, 10, 'Mobile phones: Quick access to poetry'),
('INGLÉS', NULL, 'Social Media Poetry', 'Platforms like Instagram have given rise to new forms of short, visual poetry that are perfectly adapted to mobile consumption.', NULL, NULL, NULL, 'What is "Instapoetry"?', 'Poetry written specifically for social media', 'Classic poems shared on Instagram', 'Poetry about technology', 'Automatic poetry generators', 'A', 4, 10, 'Mobile phones: Quick access to poetry'),
('INGLÉS', NULL, 'Accessibility Features', 'Mobile phones include features that make poetry accessible to people with visual or hearing impairments, democratizing literature access.', NULL, NULL, NULL, 'Which mobile feature helps visually impaired users enjoy poetry?', 'Screen readers', 'High contrast modes', 'Text-to-speech functions', 'All of the above', 'D', 4, 10, 'Mobile phones: Quick access to poetry'),

-- Preguntas sobre "Weapons: Superiority"
('INGLÉS', NULL, 'Historical Arms Race', 'Throughout history, nations have competed to develop superior weapons technology, often changing the balance of power in conflicts.', NULL, NULL, NULL, 'What was the most significant weapon development in World War II?', 'Longbows', 'Atomic bomb', 'Iron swords', 'Catapults', 'B', 4, 10, 'Weapons: Superiority'),
('INGLÉS', NULL, 'Modern Warfare', 'Contemporary military superiority depends more on technology and information than sheer numbers of weapons or soldiers.', NULL, NULL, NULL, 'What is a key component of modern military superiority?', 'Satellite surveillance', 'Larger infantry forces', 'More cavalry units', 'Bigger cannons', 'A', 4, 10, 'Weapons: Superiority'),
('INGLÉS', NULL, 'Cyber Weapons', 'In the digital age, cyber weapons that can disable infrastructure or steal information have become crucial tools of national security.', NULL, NULL, NULL, 'What can cyber weapons potentially target?', 'Power grids', 'Financial systems', 'Communication networks', 'All of the above', 'D', 4, 10, 'Weapons: Superiority'),
('INGLÉS', NULL, 'Arms Control', 'International treaties attempt to control the proliferation of certain weapons to maintain global stability and prevent conflicts.', NULL, NULL, NULL, 'What is the purpose of arms control treaties?', 'To limit development of certain weapons', 'To prevent arms races', 'To reduce conflict risks', 'All of the above', 'D', 4, 10, 'Weapons: Superiority'),
('INGLÉS', NULL, 'Ethical Considerations', 'The development and use of advanced weapons raises important ethical questions about warfare and civilian protection.', NULL, NULL, NULL, 'What principle should guide the ethical use of weapons?', 'Maximizing enemy casualties', 'Protecting civilian populations', 'Developing the most powerful arms', 'Winning at all costs', 'B', 4, 10, 'Weapons: Superiority'),

-- Preguntas sobre "Renewable Energy: The advantage of biofuels"
('INGLÉS', NULL, 'Biofuel Basics', 'Biofuels are renewable energy sources made from organic materials like plants and algae, offering a sustainable alternative to fossil fuels.', NULL, NULL, NULL, 'What are biofuels primarily made from?', 'Rocks and minerals', 'Organic plant material', 'Plastic waste', 'Radioactive elements', 'B', 4, 10, 'Renewable Energy: The advantage of biofuels'),
('INGLÉS', NULL, 'Carbon Neutrality', 'One major advantage of biofuels is that they can be carbon neutral, meaning they don''t contribute additional carbon dioxide to the atmosphere.', NULL, NULL, NULL, 'Why are biofuels considered carbon neutral?', 'They absorb CO2 when plants grow', 'They don''t release any gases', 'They convert CO2 to oxygen', 'They eliminate existing CO2', 'A', 4, 10, 'Renewable Energy: The advantage of biofuels'),
('INGLÉS', NULL, 'Biofuel Types', 'There are different generations of biofuels with varying sources and production methods, each with unique advantages.', NULL, NULL, NULL, 'Which is an example of first-generation biofuel?', 'Algae-based fuel', 'Ethanol from corn', 'Biofuel from agricultural waste', 'Synthetic biofuels', 'B', 4, 10, 'Renewable Energy: The advantage of biofuels'),
('INGLÉS', NULL, 'Global Impact', 'Biofuel production and use have significant implications for energy security, agriculture, and the environment worldwide.', NULL, NULL, NULL, 'How can biofuels improve energy security?', 'By reducing dependence on imported oil', 'By making energy free for everyone', 'By eliminating all energy needs', 'By replacing all other energy sources', 'A', 4, 10, 'Renewable Energy: The advantage of biofuels'),
('INGLÉS', NULL, 'Future Developments', 'Research continues to improve biofuel efficiency and sustainability, addressing current limitations and expanding potential applications.', NULL, NULL, NULL, 'What is a current challenge in biofuel technology?', 'Competition with food crops for land', 'Difficulty in production', 'Complete lack of interest', 'Impossibility of scaling up', 'A', 4, 10, 'Renewable Energy: The advantage of biofuels'),

-- Preguntas sobre "Natural Resources"
('INGLÉS', NULL, 'Resource Classification', 'Natural resources can be renewable like forests or non-renewable like minerals, requiring different management approaches for sustainability.', NULL, NULL, NULL, 'Which of these is a renewable natural resource?', 'Coal', 'Natural gas', 'Solar energy', 'Diamonds', 'C', 4, 10, 'Natural Resources'),
('INGLÉS', NULL, 'Water Resources', 'Freshwater is a vital natural resource that is unevenly distributed around the world, leading to conservation challenges.', NULL, NULL, NULL, 'What percentage of Earth''s water is freshwater available for human use?', 'About 97%', 'About 50%', 'Less than 1%', 'About 25%', 'C', 4, 10, 'Natural Resources'),
('INGLÉS', NULL, 'Deforestation Impact', 'Forests are crucial natural resources that provide oxygen, habitat, and materials, but face threats from deforestation.', NULL, NULL, NULL, 'What is a major cause of deforestation worldwide?', 'Agricultural expansion', 'Natural forest fires', 'Excessive rainfall', 'Animal overpopulation', 'A', 4, 10, 'Natural Resources'),
('INGLÉS', NULL, 'Sustainable Mining', 'Mineral resources are finite and require responsible extraction methods to minimize environmental impact.', NULL, NULL, NULL, 'What does sustainable mining practice aim to do?', 'Extract all minerals as quickly as possible', 'Balance economic needs with environmental protection', 'Stop all mining activities', 'Only mine in populated areas', 'B', 4, 10, 'Natural Resources'),
('INGLÉS', NULL, 'Resource Conservation', 'Conserving natural resources ensures their availability for future generations while maintaining ecological balance.', NULL, NULL, NULL, 'Which practice helps conserve natural resources?', 'Single-use plastics', 'Recycling programs', 'Clear-cutting forests', 'Overfishing oceans', 'B', 4, 10, 'Natural Resources');


--PREGUNTAS COMUNICACIÓN 4° SECUNDARIA
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas para el tema: Naturaleza de la literatura y su estudio
('COMUNICACIÓN', NULL, 'La esencia de la literatura', 
'La literatura es una manifestación artística que utiliza el lenguaje como medio de expresión. A lo largo de la historia, ha evolucionado adoptando diversas formas y estilos, reflejando las preocupaciones y valores de cada época. Su estudio nos permite comprender no solo las obras en sí mismas, sino también el contexto social y cultural que las produjo.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes es la mejor definición de literatura?', 
'Arte de combinar sonidos y silencios', 
'Manifestación artística que utiliza el lenguaje escrito u oral', 
'Ciencia que estudia los textos antiguos', 
'Técnica para redactar documentos formales', 
'B', 6, 10, 'Naturaleza de la literatura y su estudio'),

('COMUNICACIÓN', NULL, 'Géneros literarios', 
'Los géneros literarios son categorías que nos permiten clasificar las obras literarias según sus características formales y de contenido. Esta clasificación, aunque no es rígida, ayuda a los lectores a identificar patrones y expectativas sobre lo que van a leer.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es considerado un género literario tradicional?', 
'Lírico', 
'Narrativo', 
'Dramático', 
'Periodístico', 
'D', 6, 10, 'Naturaleza de la literatura y su estudio'),

('COMUNICACIÓN', NULL, 'Función de la literatura', 
'La literatura cumple diversas funciones en la sociedad, desde el entretenimiento hasta la transmisión de valores culturales. Su impacto va más allá de lo estético, influyendo en la forma en que percibimos el mundo y nos relacionamos con los demás.', 
NULL, NULL, NULL, 
'¿Cuál de estas afirmaciones sobre la función de la literatura es FALSA?', 
'Puede servir como documento histórico de una época', 
'Su único propósito es entretener al lector', 
'Transmite valores y visiones del mundo', 
'Estimula la imaginación y la creatividad', 
'B', 6, 10, 'Naturaleza de la literatura y su estudio'),

('COMUNICACIÓN', NULL, 'Elementos literarios', 
'Para analizar una obra literaria es fundamental comprender sus elementos constitutivos. Estos elementos varían según el género, pero en general incluyen aspectos como el tema, la estructura, los personajes y el lenguaje empleado.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes es un elemento común en la narrativa?', 
'La rima', 
'Los acotaciones escénicas', 
'El narrador', 
'Los diálogos en verso', 
'C', 6, 10, 'Naturaleza de la literatura y su estudio'),

('COMUNICACIÓN', NULL, 'Valor estético', 
'El valor estético de una obra literaria se relaciona con su capacidad de producir experiencias sensibles y emocionales en el lector. Este valor no depende únicamente del contenido, sino también de cómo está construido el texto y del uso creativo del lenguaje.', 
NULL, NULL, NULL, 
'¿Qué factor contribuye principalmente al valor estético de una obra literaria?', 
'La longitud del texto', 
'El uso creativo y artístico del lenguaje', 
'La popularidad del autor', 
'La cantidad de personajes', 
'B', 6, 10, 'Naturaleza de la literatura y su estudio'),

-- Preguntas para el tema: Detalles de textos de diversas formas literarias
('COMUNICACIÓN', NULL, 'Análisis de cuentos', 
'El cuento es una forma narrativa breve que se caracteriza por su unidad de efecto y economía de medios. A pesar de su extensión limitada, un buen cuento puede desarrollar personajes complejos y tramas significativas que dejan una impresión duradera en el lector.', 
NULL, NULL, NULL, 
'¿Qué elemento es característico del cuento como forma literaria?', 
'Extensa descripción de ambientes', 
'Desarrollo múltiple de tramas paralelas', 
'Unidad de efecto y brevedad', 
'Uso exclusivo de narrador omnisciente', 
'C', 6, 10, 'Detalles de textos de diversas formas literarias'),

('COMUNICACIÓN', NULL, 'La poesía lírica', 
'La poesía lírica es una expresión literaria que privilegia la subjetividad y la emoción. A través de recursos como la métrica, la rima y las figuras retóricas, el poeta transmite sus sentimientos y percepciones del mundo.', 
NULL, NULL, NULL, 
'¿Cuál de estos elementos es más característico de la poesía lírica?', 
'La presentación objetiva de hechos', 
'La expresión de sentimientos subjetivos', 
'El desarrollo de diálogos extensos', 
'La descripción detallada de ambientes', 
'B', 6, 10, 'Detalles de textos de diversas formas literarias'),

('COMUNICACIÓN', NULL, 'El teatro como literatura', 
'El texto dramático está diseñado para ser representado, pero también puede ser leído como obra literaria. Combina diálogos con acotaciones escénicas, creando una forma única de narración donde la acción se desarrolla directamente a través de los personajes.', 
NULL, NULL, NULL, 
'¿Qué elemento es exclusivo del texto dramático?', 
'Las acotaciones escénicas', 
'La presencia de un narrador', 
'El uso de figuras retóricas', 
'La división en capítulos', 
'A', 6, 10, 'Detalles de textos de diversas formas literarias'),

('COMUNICACIÓN', NULL, 'La novela realista', 
'La novela realista del siglo XIX buscaba representar la sociedad y la psicología humana con veracidad y detalle. Autores como Balzac, Flaubert y Tolstói crearon obras que reflejaban las complejidades de la vida cotidiana y las tensiones sociales de su tiempo.', 
NULL, NULL, NULL, 
'¿Qué caracteriza principalmente a la novela realista?', 
'La idealización de personajes y situaciones', 
'La representación detallada y verosímil de la realidad', 
'El uso exclusivo de temas fantásticos', 
'La ausencia de conflicto dramático', 
'B', 6, 10, 'Detalles de textos de diversas formas literarias'),

('COMUNICACIÓN', NULL, 'El ensayo literario', 
'El ensayo es una forma literaria que expone ideas y reflexiones sobre un tema determinado. Combina elementos objetivos y subjetivos, permitiendo al autor desarrollar su pensamiento con libertad pero con rigor argumentativo.', 
NULL, NULL, NULL, 
'¿Qué característica define mejor al ensayo literario?', 
'Presentación exhaustiva de datos estadísticos', 
'Exposición personal y reflexiva sobre un tema', 
'Narración de hechos ficticios con personajes', 
'Uso exclusivo de lenguaje técnico y especializado', 
'B', 6, 10, 'Detalles de textos de diversas formas literarias'),

-- Preguntas para el tema: Decisiones que toman los autores y de las maneras en que se crea el significado
('COMUNICACIÓN', NULL, 'El punto de vista narrativo', 
'La elección del punto de vista narrativo es una decisión fundamental que toma el autor, ya que determina cómo se contará la historia y qué información tendrá disponible el lector. Esta elección afecta profundamente la interpretación y el impacto emocional de la obra.', 
NULL, NULL, NULL, 
'¿Qué tipo de narrador conoce los pensamientos de todos los personajes?', 
'Narrador protagonista', 
'Narrador testigo', 
'Narrador omnisciente', 
'Narrador en segunda persona', 
'C', 6, 10, 'Decisiones que toman los autores y de las maneras en que se crea el significado'),

('COMUNICACIÓN', NULL, 'El lenguaje simbólico', 
'Los autores utilizan con frecuencia símbolos para añadir capas de significado a sus obras. Estos símbolos pueden ser objetos, acciones o personajes que representan ideas abstractas, enriqueciendo la interpretación del texto.', 
NULL, NULL, NULL, 
'¿Qué función cumple principalmente el simbolismo en una obra literaria?', 
'Simplificar el lenguaje para hacerlo más accesible', 
'Añadir capas de significado más allá del sentido literal', 
'Reducir la ambigüedad en la interpretación', 
'Limitar las posibles interpretaciones del texto', 
'B', 6, 10, 'Decisiones que toman los autores y de las maneras en que se crea el significado'),

('COMUNICACIÓN', NULL, 'La estructura temporal', 
'La manera en que un autor organiza el tiempo en la narración -mediante flashbacks, anticipaciones o narración lineal- afecta cómo el lector experimenta y comprende la historia. Estas decisiones estructurales son clave para crear suspense, revelar información o desarrollar personajes.', 
NULL, NULL, NULL, 
'¿Cómo se llama la técnica narrativa que presenta eventos anteriores al momento actual de la historia?', 
'Flashforward', 
'Flashback', 
'Racconto', 
'Elipsis', 
'B', 6, 10, 'Decisiones que toman los autores y de las maneras en que se crea el significado'),

('COMUNICACIÓN', NULL, 'La caracterización', 
'La creación de personajes es un proceso complejo que involucra decisiones sobre su apariencia, personalidad, motivaciones y evolución a lo largo de la historia. La manera en que se presentan los personajes influye en cómo el lector se relaciona emocionalmente con ellos.', 
NULL, NULL, NULL, 
'¿Qué técnica de caracterización consiste en describir al personaje a través de sus acciones?', 
'Caracterización directa', 
'Caracterización indirecta', 
'Caracterización autobiográfica', 
'Caracterización omnisciente', 
'B', 6, 10, 'Decisiones que toman los autores y de las maneras en que se crea el significado'),

('COMUNICACIÓN', NULL, 'El tono literario', 
'El tono en literatura se refiere a la actitud del autor hacia el tema o el lector, transmitida a través de la elección de palabras y el estilo. Este elemento sutil pero poderoso puede cambiar completamente la manera en que se interpreta un texto.', 
NULL, NULL, NULL, 
'¿Qué elemento determina principalmente el tono de un texto literario?', 
'La longitud de las oraciones', 
'La elección de palabras y el estilo del autor', 
'La cantidad de personajes', 
'El género literario al que pertenece', 
'B', 6, 10, 'Decisiones que toman los autores y de las maneras en que se crea el significado'),

-- Preguntas para el tema: Hamlet: William Shakespeare
('COMUNICACIÓN', NULL, 'El conflicto en Hamlet', 
'Hamlet, la tragedia escrita por William Shakespeare, explora temas universales como la venganza, la locura, la moralidad y la duda existencial. El príncipe Hamlet enfrenta un profundo conflicto interno al descubrir que su padre fue asesinado por su propio hermano.', 
NULL, NULL, NULL, 
'¿Cuál es el principal conflicto que enfrenta Hamlet en la obra?', 
'Una guerra entre Dinamarca y Noruega', 
'Su indecisión sobre vengar la muerte de su padre', 
'Un romance prohibido con Ofelia', 
'Una disputa por la corona con Laertes', 
'B', 6, 10, 'Hamlet: William Shakespeare'),

('COMUNICACIÓN', NULL, 'El monólogo de Hamlet', 
'El monólogo "Ser o no ser" es uno de los pasajes más famosos de la literatura universal. En este soliloquio, Hamlet reflexiona sobre la naturaleza de la existencia, la muerte y la acción, mostrando su profunda crisis existencial.', 
NULL, NULL, NULL, 
'¿Qué tema principal explora Hamlet en su monólogo "Ser o no ser"?', 
'El amor no correspondido', 
'La naturaleza de la existencia y la muerte', 
'La política y el gobierno', 
'La belleza del arte', 
'B', 6, 10, 'Hamlet: William Shakespeare'),

('COMUNICACIÓN', NULL, 'La locura en Hamlet', 
'En la obra, Hamlet finge locura como parte de su estrategia para investigar el asesinato de su padre. Sin embargo, la línea entre la locura fingida y la real se vuelve difusa, generando debate entre críticos y lectores.', 
NULL, NULL, NULL, 
'¿Por qué Hamlet decide fingir locura?', 
'Para evitar sus responsabilidades como príncipe', 
'Como estrategia para investigar la muerte de su padre', 
'Porque realmente enloquece al ver el fantasma', 
'Para impresionar a Ofelia', 
'B', 6, 10, 'Hamlet: William Shakespeare'),

('COMUNICACIÓN', NULL, 'Personajes clave', 
'Hamlet está poblado de personajes complejos que interactúan con el protagonista de diversas maneras. Desde el traicionero Claudio hasta la inocente Ofelia, cada personaje cumple un papel esencial en el desarrollo de la trama y los temas de la obra.', 
NULL, NULL, NULL, 
'¿Quién es el antagonista principal en Hamlet?', 
'Horacio', 
'Claudio', 
'Polonio', 
'Laertes', 
'B', 6, 10, 'Hamlet: William Shakespeare'),

('COMUNICACIÓN', NULL, 'El final trágico', 
'Como es característico en las tragedias de Shakespeare, Hamlet culmina con una serie de muertes que resuelven los conflictos planteados, pero a un alto costo. Este final trágico refuerza los temas centrales de la obra sobre la mortalidad y las consecuencias de la acción (o inacción).', 
NULL, NULL, NULL, 
'¿Cómo concluye la obra de Hamlet?', 
'Hamlet se convierte en rey y perdona a Claudio', 
'Hamlet muere en un duelo con Laertes', 
'Hamlet abandona Dinamarca para viajar por el mundo', 
'Hamlet se casa con Ofelia y viven felices', 
'B', 6, 10, 'Hamlet: William Shakespeare');

-- Preguntas para el tema: Funciones que desempeñan los lectores para generar significado
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Interpretación activa', 
'El proceso de lectura no es pasivo, sino que involucra una construcción activa de significado por parte del lector. Los lectores utilizan sus conocimientos previos, experiencias y contexto para dar sentido al texto. Esta interacción entre el texto y el lector es fundamental en la comprensión lectora.',
NULL, NULL, NULL, 
'¿Cuál de las siguientes NO es una función que desempeñan los lectores para generar significado?', 
'Decodificar únicamente las palabras sin interpretar', 
'Relacionar el contenido con conocimientos previos', 
'Hacer inferencias basadas en el contexto', 
'Cuestionar y reflexionar sobre lo leído', 
'A', 6, 10, 'Funciones que desempeñan los lectores para generar significado'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Conocimientos previos', 
'Los lectores expertos activan sus esquemas mentales y conocimientos previos al enfrentarse a un texto. Este proceso permite conectar la nueva información con lo ya conocido, facilitando la comprensión y el aprendizaje.',
NULL, NULL, NULL, 
'¿Cómo contribuyen los conocimientos previos en la generación de significado durante la lectura?', 
'Permiten memorizar el texto palabra por palabra', 
'Ayudan a hacer conexiones y comprender mejor el contenido', 
'Disminuyen la velocidad de lectura', 
'Eliminan la necesidad de releer pasajes difíciles', 
'B', 6, 10, 'Funciones que desempeñan los lectores para generar significado'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Estrategias de lectura', 
'Los buenos lectores emplean diversas estrategias antes, durante y después de la lectura para construir significado. Estas estrategias incluyen predecir, visualizar, cuestionar, resumir y sintetizar información.',
NULL, NULL, NULL, 
'¿Cuál de estas estrategias se realiza principalmente DURANTE la lectura?', 
'Establecer el propósito de la lectura', 
'Formular preguntas sobre el contenido', 
'Buscar información complementaria', 
'Escribir un resumen extenso', 
'B', 6, 10, 'Funciones que desempeñan los lectores para generar significado'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Inferencias en la lectura', 
'Las inferencias son conclusiones lógicas que los lectores sacan basándose en la información del texto y sus propios conocimientos. Son esenciales para comprender lo que no está explícitamente dicho.',
NULL, NULL, NULL, 
'¿Qué elemento NO es necesario para hacer una inferencia durante la lectura?', 
'Información explícita en el texto', 
'Conocimientos previos del lector', 
'Capacidad de razonamiento lógico', 
'Dominio de la gramática avanzada', 
'D', 6, 10, 'Funciones que desempeñan los lectores para generar significado'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Metacognición lectora', 
'La metacognición en la lectura se refiere a la capacidad del lector de monitorear y regular su propio proceso de comprensión, identificando cuando no entiende algo y aplicando estrategias para resolverlo.',
NULL, NULL, NULL, 
'¿Cuál es un ejemplo de estrategia metacognitiva durante la lectura?', 
'Leer rápidamente sin detenerse', 
'Subrayar todo el texto', 
'Darse cuenta de que no se comprendió un párrafo y releerlo', 
'Memorizar fechas y nombres', 
'C', 6, 10, 'Funciones que desempeñan los lectores para generar significado'),

-- Preguntas para el tema: Comentario personal sobre el significado
('COMUNICACIÓN', NULL, 'Interpretación subjetiva', 
'Cada lector construye un significado único al interactuar con un texto, influenciado por sus experiencias personales, valores y contexto cultural. Esta subjetividad enriquece la experiencia lectora y permite múltiples interpretaciones válidas.',
NULL, NULL, NULL, 
'¿Qué factor influye MÁS en la interpretación personal de un texto?', 
'La edición del libro', 
'Las experiencias y valores del lector', 
'El número de páginas', 
'El tipo de letra utilizado', 
'B', 6, 10, 'Comentario personal sobre el significado'),

('COMUNICACIÓN', NULL, 'Diálogo con el texto', 
'Un comentario personal sobre un texto literario implica establecer un diálogo entre las ideas del autor y las propias reflexiones del lector, creando así una comprensión más profunda y personalizada.',
NULL, NULL, NULL, 
'¿Cuál de estos elementos NO debería incluirse en un comentario personal bien fundamentado?', 
'Opiniones basadas en prejuicios sin sustento', 
'Reflexiones sobre cómo el texto conecta con experiencias propias', 
'Análisis de pasajes que generaron impacto emocional', 
'Cuestionamientos al texto desde la perspectiva personal', 
'A', 6, 10, 'Comentario personal sobre el significado'),

('COMUNICACIÓN', NULL, 'Validez de interpretaciones', 
'En literatura, no existe una única interpretación correcta de un texto. Las diferentes perspectivas de los lectores enriquecen la comprensión colectiva de la obra, siempre que estén bien fundamentadas en el texto.',
NULL, NULL, NULL, 
'¿Qué hace que una interpretación personal sea válida?', 
'Que coincida exactamente con lo que el autor pretendía', 
'Que esté apoyada en evidencias del texto y razonamiento lógico', 
'Que sea la más popular entre los lectores', 
'Que utilice términos académicos complejos', 
'B', 6, 10, 'Comentario personal sobre el significado'),

('COMUNICACIÓN', NULL, 'Emociones en la lectura', 
'Las respuestas emocionales que provoca un texto son parte fundamental del comentario personal, ya que revelan cómo la obra resuena en la subjetividad del lector y qué aspectos tocan fibras más profundas.',
NULL, NULL, NULL, 
'¿Cómo pueden enriquecer las emociones la interpretación de un texto?', 
'Limitando el análisis objetivo', 
'Provocando que se ignore el contenido', 
'Mostrando qué aspectos del texto generan mayor impacto personal', 
'Impidiendo la crítica literaria', 
'C', 6, 10, 'Comentario personal sobre el significado'),

('COMUNICACIÓN', NULL, 'Contexto del lector', 
'El contexto histórico, cultural y social del lector influye significativamente en cómo interpreta y valora un texto literario, creando puentes o distancias con las ideas del autor.',
NULL, NULL, NULL, 
'¿Por qué es importante considerar el contexto personal al hacer un comentario sobre un texto?', 
'Para demostrar superioridad cultural', 
'Para reconocer cómo nuestro trasfondo afecta nuestra lectura', 
'Para imponer nuestra visión sobre otros lectores', 
'Para memorizar mejor los detalles del texto', 
'B', 6, 10, 'Comentario personal sobre el significado'),

-- Preguntas para el tema: Perspectivas de los lectores experimentados ante el texto literario
('COMUNICACIÓN', NULL, 'Lectura crítica', 
'Los lectores experimentados abordan los textos literarios con una mirada analítica, identificando no solo lo que dice el texto, sino cómo lo dice, por qué lo dice de cierta manera y qué efectos produce en el lector.',
NULL, NULL, NULL, 
'¿Qué característica distingue a un lector experimentado?', 
'Lee más rápido que los demás', 
'Analiza los recursos literarios y la estructura del texto', 
'Memoriza citas textuales', 
'Solo lee autores famosos', 
'B', 6, 10, 'Perspectivas de los lectores experimentados ante el texto literario'),

('COMUNICACIÓN', NULL, 'Intertextualidad', 
'Los lectores avezados reconocen conexiones entre diferentes textos, autores y tradiciones literarias, lo que les permite una comprensión más rica y contextualizada de las obras.',
NULL, NULL, NULL, 
'¿Qué es la intertextualidad en la lectura experta?', 
'Copiar textos de otros autores', 
'Reconocer relaciones y diálogos entre diferentes obras', 
'Leer siempre el mismo género literario', 
'Citar muchos autores en un comentario', 
'B', 6, 10, 'Perspectivas de los lectores experimentados ante el texto literario'),

('COMUNICACIÓN', NULL, 'Estrategias de análisis', 
'Los lectores expertos utilizan diversas estrategias de análisis literario como el examen de figuras retóricas, la identificación de temas recurrentes y el estudio de la construcción de personajes.',
NULL, NULL, NULL, 
'¿Cuál NO es una estrategia típica de análisis literario?', 
'Identificar metáforas y símbolos', 
'Analizar la evolución de los personajes', 
'Contar el número de páginas del libro', 
'Examinar el punto de vista narrativo', 
'C', 6, 10, 'Perspectivas de los lectores experimentados ante el texto literario'),

('COMUNICACIÓN', NULL, 'Lectura en capas', 
'Los buenos lectores realizan múltiples lecturas de un texto, descubriendo nuevos significados en cada aproximación. Esta capacidad de leer en profundidad es característica de la experiencia lectora madura.',
NULL, NULL, NULL, 
'¿Qué significa "leer en capas"?', 
'Leer solo las primeras líneas de cada párrafo', 
'Descubrir diferentes niveles de significado en sucesivas lecturas', 
'Leer varios libros al mismo tiempo', 
'Dividir el texto en partes iguales', 
'B', 6, 10, 'Perspectivas de los lectores experimentados ante el texto literario'),

('COMUNICACIÓN', NULL, 'Contexto histórico-literario', 
'Los lectores experimentados consideran el contexto histórico y literario en que fue escrito un texto, comprendiendo cómo influyeron las circunstancias de la época en su producción y recepción.',
NULL, NULL, NULL, 
'¿Por qué es importante el contexto histórico al analizar un texto literario?', 
'Para juzgar si el autor actuó correctamente', 
'Para comprender mejor las ideas y valores de la época que influyeron en la obra', 
'Para determinar el precio original del libro', 
'Para memorizar fechas exactas', 
'B', 6, 10, 'Perspectivas de los lectores experimentados ante el texto literario'),

-- Preguntas para el tema: Leyendas: Gustavo Adolfo Bécquer
('COMUNICACIÓN', NULL, 'Características de las Leyendas', 
'Gustavo Adolfo Bécquer, escritor romántico español, es conocido por sus "Leyendas", narraciones breves que combinan elementos fantásticos con descripciones poéticas y una atmósfera misteriosa.',
NULL, NULL, NULL, 
'¿Cuál es una característica principal de las Leyendas de Bécquer?', 
'Uso de lenguaje técnico y científico', 
'Fusion de lo real y lo sobrenatural', 
'Tratamiento objetivo de la realidad', 
'Finales siempre felices y moralizantes', 
'B', 6, 10, 'Leyendas: Gustavo Adolfo Bécquer'),

('COMUNICACIÓN', NULL, 'Temas becquerianos', 
'Las Leyendas de Bécquer exploran temas como el amor imposible, la muerte, lo sobrenatural y el misterio, siempre con un estilo lírico y una sensibilidad romántica característica.',
NULL, NULL, NULL, 
'¿Qué tema NO es típico de las Leyendas de Bécquer?', 
'El amor trágico', 
'La tecnología moderna', 
'Lo sobrenatural', 
'La muerte y el más allá', 
'B', 6, 10, 'Leyendas: Gustavo Adolfo Bécquer'),

('COMUNICACIÓN', NULL, 'Estructura narrativa', 
'Bécquer emplea frecuentemente la técnica del manuscrito encontrado y narradores enmarcados, creando una sensación de verosimilitud y distancia temporal en sus Leyendas.',
NULL, NULL, NULL, 
'¿Qué técnica narrativa usa frecuentemente Bécquer en sus Leyendas?', 
'El manuscrito encontrado', 
'La narración en tiempo real', 
'El monólogo interior', 
'La perspectiva múltiple simultánea', 
'A', 6, 10, 'Leyendas: Gustavo Adolfo Bécquer'),

('COMUNICACIÓN', NULL, 'Estilo literario', 
'El estilo de Bécquer se caracteriza por su prosa poética, con descripciones sensoriales ricas y un lenguaje sugerente que apela más a las emociones que a la razón.',
NULL, NULL, NULL, 
'¿Cómo se puede describir el estilo literario de Bécquer?', 
'Directo y periodístico', 
'Poético y sugerente', 
'Científico y preciso', 
'Coloquial y humorístico', 
'B', 6, 10, 'Leyendas: Gustavo Adolfo Bécquer'),

('COMUNICACIÓN', NULL, 'Influencia romántica', 
'Las Leyendas de Bécquer muestran claramente la influencia del Romanticismo, con su exaltación de lo emocional, lo misterioso y lo sublime, así como su interés por el pasado y lo sobrenatural.',
NULL, NULL, NULL, 
'¿Qué movimiento literario influyó principalmente en las Leyendas de Bécquer?', 
'El Realismo', 
'El Romanticismo', 
'El Naturalismo', 
'La Ilustración', 
'B', 6, 10, 'Leyendas: Gustavo Adolfo Bécquer');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Preguntas para el tema: Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio
('COMUNICACIÓN', NULL, 'Influencia cultural en la literatura', 
'La literatura no existe en un vacío, sino que se produce y consume dentro de contextos culturales específicos que cambian con el tiempo y varían según la ubicación geográfica. Estos contextos influyen tanto en la creación como en la interpretación de las obras literarias.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes factores NO influye significativamente en el contexto cultural de una obra literaria?', 
'El sistema político vigente en la época', 
'Las tradiciones culinarias de la región', 
'Los avances tecnológicos del momento', 
'Las creencias religiosas predominantes', 
'B', 6, 10, 
'Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio'),

('COMUNICACIÓN', NULL, 'Literatura y contexto histórico', 
'Las obras literarias suelen reflejar las preocupaciones, valores y conflictos de su época. Un lector contemporáneo puede interpretar una obra de manera diferente a como lo haría un lector del período en que fue escrita, debido a los cambios en el contexto cultural.', 
NULL, NULL, NULL, 
'¿Por qué es importante considerar el contexto histórico al analizar una obra literaria antigua?', 
'Para entender mejor las referencias culturales específicas', 
'Para juzgar la moralidad de los personajes con estándares actuales', 
'Para determinar si el autor tenía educación formal', 
'Para calcular el valor económico original del libro', 
'A', 6, 10, 
'Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio'),

('COMUNICACIÓN', NULL, 'Migración literaria', 
'Cuando las obras literarias viajan a través de fronteras culturales, a menudo adquieren nuevos significados. Un texto puede ser interpretado de manera muy diferente en una cultura distinta a la de su origen.', 
NULL, NULL, NULL, 
'¿Qué fenómeno ocurre cuando una obra literaria es interpretada de manera significativamente diferente en otra cultura?', 
'Transculturación literaria', 
'Distorsión interpretativa', 
'Recepción intercultural', 
'Alienación textual', 
'C', 6, 10, 
'Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio'),

('COMUNICACIÓN', NULL, 'Canon literario', 
'El canon literario, es decir, el conjunto de obras consideradas como las más importantes o representativas, varía según las culturas y épocas, reflejando los valores y prioridades de quienes establecen dicho canon.', 
NULL, NULL, NULL, 
'¿Qué factor ha influido históricamente en la exclusión de ciertas obras del canon literario occidental?', 
'El género del autor', 
'El color de la portada del libro', 
'La extensión de la obra', 
'El precio original de venta', 
'A', 6, 10, 
'Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio'),

('COMUNICACIÓN', NULL, 'Literatura oral', 
'Antes de la invención de la escritura, las tradiciones literarias se transmitían oralmente. Esta forma de literatura estaba profundamente conectada con su contexto cultural inmediato.', 
NULL, NULL, NULL, 
'¿Qué característica es típica de la literatura oral en comparación con la escrita?', 
'Mayor variabilidad en cada representación', 
'Uso exclusivo de lenguaje formal', 
'Falta de elementos musicales', 
'Ausencia de figuras retóricas', 
'A', 6, 10, 
'Contextos culturales en los cuales los textos literarios se escriben y se leen a lo largo del tiempo y del espacio'),

-- Preguntas para el tema: Maneras en que la propia literatura refleja el mundo
('COMUNICACIÓN', NULL, 'Literatura como espejo', 
'La literatura funciona como un espejo que refleja la sociedad en la que se produce, pero también como un martillo que puede dar forma a esa sociedad. Los escritores responden a su entorno cultural mientras que, al mismo tiempo, influyen en cómo los lectores perciben ese entorno.', 
NULL, NULL, NULL, 
'¿Qué término describe mejor la capacidad de la literatura para representar y al mismo tiempo influir en la realidad social?', 
'Mímesis creativa', 
'Refracción cultural', 
'Dialéctica literaria', 
'Realismo crítico', 
'B', 6, 10, 
'Maneras en que la propia literatura refleja el mundo: cómo las condiciones culturales pueden moldear la producción de un texto literario y cómo un texto literario puede reflejar o refractar las condiciones culturales'),

('COMUNICACIÓN', NULL, 'Novela social', 
'Las novelas sociales del siglo XIX, como las de Charles Dickens, ofrecen un retrato vívido de las condiciones de vida durante la Revolución Industrial, mostrando tanto la miseria de las clases trabajadoras como la hipocresía de las clases altas.', 
NULL, NULL, NULL, 
'¿Qué técnica literaria utilizaban frecuentemente los novelistas sociales para destacar las injusticias?', 
'La exageración cómica', 
'El contraste entre personajes', 
'El uso de lenguas extranjeras', 
'La ausencia de diálogo', 
'B', 6, 10, 
'Maneras en que la propia literatura refleja el mundo: cómo las condiciones culturales pueden moldear la producción de un texto literario y cómo un texto literario puede reflejar o refractar las condiciones culturales'),

('COMUNICACIÓN', NULL, 'Literatura de protesta', 
'En diversos períodos históricos, la literatura ha servido como vehículo para criticar regímenes políticos opresivos, a menudo utilizando el simbolismo y la alegoría para eludir la censura.', 
NULL, NULL, NULL, 
'¿Qué obra es un ejemplo clásico de literatura de protesta contra los totalitarismos del siglo XX?', 
'1984 de George Orwell', 
'Orgullo y prejuicio de Jane Austen', 
'Moby Dick de Herman Melville', 
'Ulises de James Joyce', 
'A', 6, 10, 
'Maneras en que la propia literatura refleja el mundo: cómo las condiciones culturales pueden moldear la producción de un texto literario y cómo un texto literario puede reflejar o refractar las condiciones culturales'),

('COMUNICACIÓN', NULL, 'Literatura y cambio social', 
'Algunas obras literarias han contribuido directamente a cambios sociales importantes, como la abolición de la esclavitud o el avance de los derechos de la mujer, al exponer injusticias y generar empatía en los lectores.', 
NULL, NULL, NULL, 
'¿Qué novela estadounidense del siglo XIX se considera que influyó en el movimiento abolicionista?', 
'La cabaña del tío Tom', 
'Las aventuras de Tom Sawyer', 
'Walden', 
'El cuento de la criada', 
'A', 6, 10, 
'Maneras en que la propia literatura refleja el mundo: cómo las condiciones culturales pueden moldear la producción de un texto literario y cómo un texto literario puede reflejar o refractar las condiciones culturales'),

('COMUNICACIÓN', NULL, 'Realismo mágico', 
'El realismo mágico, género literario asociado principalmente con autores latinoamericanos, incorpora elementos fantásticos en narrativas que reflejan realidades sociales y políticas complejas.', 
NULL, NULL, NULL, 
'¿Qué característica define mejor al realismo mágico como forma de reflejar la realidad?', 
'Presenta lo extraordinario como parte cotidiana de la vida', 
'Describe exclusivamente eventos históricos documentados', 
'Evita cualquier elemento sobrenatural', 
'Se centra en futuros distópicos', 
'A', 6, 10, 
'Maneras en que la propia literatura refleja el mundo: cómo las condiciones culturales pueden moldear la producción de un texto literario y cómo un texto literario puede reflejar o refractar las condiciones culturales'),

-- Preguntas para el tema: Narraciones extraordinarias: Edgar Allan Poe
('COMUNICACIÓN', NULL, 'Poe y el gótico', 
'Edgar Allan Poe es considerado uno de los maestros del relato gótico y de terror, con una capacidad única para explorar los rincones más oscuros de la psique humana a través de sus narraciones extraordinarias.', 
NULL, NULL, NULL, 
'¿Qué elemento es característico de los cuentos de terror de Edgar Allan Poe?', 
'La exploración de la racionalidad extrema', 
'La presencia de un narrador poco confiable', 
'Finales felices y moralizantes', 
'Ambientación exclusivamente futurista', 
'B', 6, 10, 
'Narraciones extraordinarias: Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'El corazón delator', 
'En "El corazón delator", Poe explora temas de culpa y paranoia a través de un narrador que insiste en su cordura mientras describe un horrible crimen.', 
NULL, NULL, NULL, 
'¿Qué técnica narrativa utiliza Poe en "El corazón delator" para crear tensión psicológica?', 
'El monólogo interior caótico', 
'La descripción detallada del escenario', 
'El uso de diálogos extensos', 
'La alternancia de múltiples narradores', 
'A', 6, 10, 
'Narraciones extraordinarias: Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Influencia de Poe', 
'La obra de Edgar Allan Poe ha influido enormemente en la literatura de terror y misterio, así como en otros medios como el cine y la música, trascendiendo su época y contexto cultural original.', 
NULL, NULL, NULL, 
'¿Qué género literario moderno debe mucho a las innovaciones de Edgar Allan Poe?', 
'La novela policíaca', 
'La literatura de viajes', 
'La poesía pastoral', 
'El teatro del absurdo', 
'A', 6, 10, 
'Narraciones extraordinarias: Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'El cuervo', 
'"El cuervo" es uno de los poemas más famosos de Poe, que combina elementos góticos con una exploración profunda del dolor y la pérdida, utilizando un ritmo y una sonoridad distintivos.', 
NULL, NULL, NULL, 
'¿Qué recurso poético utiliza repetidamente Poe en "El cuervo" para crear su efecto memorable?', 
'El estribillo "Nunca más"', 
'La aliteración excesiva', 
'La ausencia de rima', 
'Los versos libres', 
'A', 6, 10, 
'Narraciones extraordinarias: Edgar Allan Poe'),

('COMUNICACIÓN', NULL, 'Legado de Poe', 
'A pesar de su vida turbulenta y muerte temprana, Edgar Allan Poe dejó un legado literario que continúa siendo relevante, con temas universales que resuenan en lectores de diversas culturas y épocas.', 
NULL, NULL, NULL, 
'¿Qué aspecto de la obra de Poe sigue siendo más influyente en la cultura actual?', 
'Sus teorías sobre la educación infantil', 
'Sus ideas políticas radicales', 
'Sus exploraciones de lo macabro y lo psicológico', 
'Sus tratados científicos', 
'C', 6, 10, 
'Narraciones extraordinarias: Edgar Allan Poe'),

-- Preguntas para el tema: Maneras en que la cultura y la identidad influyen en la recepción
('COMUNICACIÓN', NULL, 'Lectura e identidad', 
'La forma en que interpretamos un texto literario está profundamente influenciada por nuestra identidad cultural, que incluye factores como nuestra nacionalidad, género, clase social y experiencias personales.', 
NULL, NULL, NULL, 
'¿Qué concepto describe las lentes culturales a través de las cuales un lector interpreta un texto?', 
'Horizonte de expectativas', 
'Marco interpretativo', 
'Filtro cultural', 
'Prisma identitario', 
'A', 6, 10, 
'Maneras en que la cultura y la identidad influyen en la recepción'),

('COMUNICACIÓN', NULL, 'Literatura traducida', 
'Cuando una obra literaria es traducida a otro idioma, no solo se traducen las palabras, sino que también debe negociarse el traslado de referencias culturales que pueden no tener equivalencia directa en la cultura receptora.', 
NULL, NULL, NULL, 
'¿Qué desafío principal enfrenta la traducción de literatura entre culturas muy diferentes?', 
'Preservar los juegos de palabras intactos', 
'Mantener exactamente el mismo número de páginas', 
'Transmitir significados culturales específicos', 
'Conservar el mismo tipo de letra', 
'C', 6, 10, 
'Maneras en que la cultura y la identidad influyen en la recepción'),

('COMUNICACIÓN', NULL, 'Apropiación cultural', 
'En el ámbito literario, la apropiación cultural se refiere al uso de elementos de una cultura minoritaria por parte de miembros de una cultura dominante, lo que puede generar controversias sobre quién tiene derecho a contar ciertas historias.', 
NULL, NULL, NULL, 
'¿Qué factor es crucial para evaluar si el uso de elementos culturales ajenos en literatura es problemático?', 
'El éxito comercial de la obra', 
'La intención y el contexto del autor', 
'La longitud del texto', 
'El país de publicación', 
'B', 6, 10, 
'Maneras en que la cultura y la identidad influyen en la recepción'),

('COMUNICACIÓN', NULL, 'Canon occidental', 
'El predominio del canon literario occidental en la educación global ha sido criticado por marginalizar otras tradiciones literarias y por limitar la diversidad de perspectivas a las que están expuestos los estudiantes.', 
NULL, NULL, NULL, 
'¿Qué movimiento busca ampliar el canon literario tradicional para incluir más voces diversas?', 
'Decolonización curricular', 
'Modernización pedagógica', 
'Uniformización cultural', 
'Globalización editorial', 
'A', 6, 10, 
'Maneras en que la cultura y la identidad influyen en la recepción'),

('COMUNICACIÓN', NULL, 'Literatura y género', 
'Los estudios de género han demostrado que lectores de diferentes géneros pueden interpretar un mismo texto de manera distinta, y que la identidad de género del autor también influye en cómo se recibe su obra.', 
NULL, NULL, NULL, 
'¿Qué fenómeno ocurre cuando obras escritas por mujeres son inicialmente menospreciadas pero luego son revaloradas críticamente?', 
'Canonización tardía', 
'Rescate literario', 
'Recepción diferida', 
'Reconocimiento póstumo', 
'B', 6, 10, 
'Maneras en que la cultura y la identidad influyen en la recepción'),

-- Preguntas para el tema: Explorar textos y cuestiones de una variedad de lugares, culturas o épocas
('COMUNICACIÓN', NULL, 'Literatura mundial', 
'El estudio de literatura de diversas culturas y épocas permite desarrollar una comprensión más amplia de la experiencia humana y apreciar tanto las diferencias como las similitudes entre sociedades distantes en tiempo y espacio.', 
NULL, NULL, NULL, 
'¿Qué beneficio principal ofrece el estudio comparado de literaturas de diferentes culturas?', 
'Desarrollar una perspectiva cosmopolita', 
'Aprender idiomas más rápido', 
'Memorizar fechas históricas', 
'Enfocarse solo en la literatura nacional', 
'A', 6, 10, 
'Explorar textos y cuestiones de una variedad de lugares, culturas o épocas'),

('COMUNICACIÓN', NULL, 'Épica antigua', 
'Textos épicos como la Ilíada, el Mahabharata o el Popol Vuh, provenientes de culturas antiguas muy diferentes, comparten sin embargo ciertos temas universales como el heroísmo, el conflicto y la búsqueda de significado.', 
NULL, NULL, NULL, 
'¿Qué elemento es común en muchas epopeyas antiguas de diversas culturas?', 
'La presencia de un viaje heroico', 
'La ausencia de elementos sobrenaturales', 
'El enfoque en la vida cotidiana', 
'La falta de conflicto dramático', 
'A', 6, 10, 
'Explorar textos y cuestiones de una variedad de lugares, culturas o épocas'),

('COMUNICACIÓN', NULL, 'Literatura colonial', 
'Los textos producidos durante períodos coloniales ofrecen perspectivas complejas sobre el encuentro (y desencuentro) entre culturas, mostrando tanto las dinámicas de poder como los intercambios culturales.', 
NULL, NULL, NULL, 
'¿Qué característica suele tener la literatura producida por autores colonizados durante el período colonial?', 
'Ambivalencia hacia la cultura del colonizador', 
'Celebración incondicional de la colonización', 
'Rechazo total de las tradiciones locales', 
'Desinterés por cuestiones identitarias', 
'A', 6, 10, 
'Explorar textos y cuestiones de una variedad de lugares, culturas o épocas'),

('COMUNICACIÓN', NULL, 'Modernismo global', 
'El movimiento modernista en literatura surgió aproximadamente al mismo tiempo en diferentes partes del mundo, con características similares pero adaptadas a cada contexto cultural particular.', 
NULL, NULL, NULL, 
'¿Qué factor global ayudó a difundir las ideas modernistas entre diferentes culturas a principios del siglo XX?', 
'El desarrollo de las comunicaciones internacionales', 
'La uniformización de los sistemas educativos', 
'La desaparición de las lenguas locales', 
'El fin de todas las guerras', 
'A', 6, 10, 
'Explorar textos y cuestiones de una variedad de lugares, culturas o épocas'),

('COMUNICACIÓN', NULL, 'Literatura migrante', 
'La literatura producida por autores migrantes suele explorar temas de identidad cultural híbrida, nostalgia y adaptación, ofreciendo perspectivas valiosas sobre la experiencia transnacional contemporánea.', 
NULL, NULL, NULL, 
'¿Qué tema es central en mucha literatura producida por autores migrantes?', 
'La búsqueda de pertenencia en múltiples culturas', 
'El rechazo total a la cultura de origen', 
'La idealización exclusiva del país de adopción', 
'La falta de interés en cuestiones lingüísticas', 
'A', 6, 10, 
'Explorar textos y cuestiones de una variedad de lugares, culturas o épocas'),

-- Preguntas para el tema: El diario de Ana Frank: Ana Frank
('COMUNICACIÓN', NULL, 'Contexto histórico del Diario', 
'El Diario de Ana Frank es un testimonio personal de una joven judía escondida durante la ocupación nazi de Holanda, que cobra significado universal al reflejar la persecución sistemática durante el Holocausto.', 
NULL, NULL, NULL, 
'¿Qué aspecto del Diario de Ana Frank lo hace particularmente conmovedor para lectores de todo el mundo?', 
'La combinación de perspectiva adolescente con contexto histórico trágico', 
'Su estilo literario altamente sofisticado', 
'La ausencia de referencias al conflicto bélico', 
'Su enfoque exclusivamente político', 
'A', 6, 10, 
'El diario de Ana Frank: Ana Frank'),

('COMUNICACIÓN', NULL, 'Literatura del Holocausto', 
'El Diario de Ana Frank ocupa un lugar especial dentro de la literatura sobre el Holocausto, al ofrecer una voz individual y humana a una de las mayores tragedias del siglo XX.', 
NULL, NULL, NULL, 
'¿Por qué el Diario de Ana Frank sigue siendo relevante en la actualidad?', 
'Porque muestra las consecuencias del odio y la intolerancia', 
'Porque enseña historia militar detallada', 
'Porque promueve un sistema político específico', 
'Porque contiene profecías sobre el futuro', 
'A', 6, 10, 
'El diario de Ana Frank: Ana Frank'),

('COMUNICACIÓN', NULL, 'Ana Frank escritora', 
'A pesar de su corta edad y las circunstancias extremas en que escribió, Ana Frank demostró un talento literario notable y una capacidad de observación aguda sobre la naturaleza humana.', 
NULL, NULL, NULL, 
'¿Qué cualidad literaria se destaca en los escritos de Ana Frank?', 
'Su honestidad reflexiva y capacidad introspectiva', 
'Su uso de un lenguaje altamente técnico', 
'Su adherencia estricta a las formas poéticas', 
'Su enfoque en describir paisajes naturales', 
'A', 6, 10, 
'El diario de Ana Frank: Ana Frank'),

('COMUNICACIÓN', NULL, 'Recepción del Diario', 
'Desde su publicación, el Diario de Ana Frank ha sido leído e interpretado de diversas maneras: como documento histórico, como obra literaria, como herramienta educativa y como símbolo de esperanza.', 
NULL, NULL, NULL, 
'¿Qué uso educativo principal se ha dado al Diario de Ana Frank en muchas escuelas?', 
'Enseñar sobre los peligros del antisemitismo y la discriminación', 
'Instruir en técnicas avanzadas de escritura', 
'Entrenar en análisis político contemporáneo', 
'Demostrar teorías económicas complejas', 
'A', 6, 10, 
'El diario de Ana Frank: Ana Frank'),

('COMUNICACIÓN', NULL, 'Legado de Ana Frank', 
'La figura de Ana Frank ha trascendido su diario para convertirse en un símbolo universal de la esperanza y la resiliencia humana frente a la adversidad más oscura.', 
NULL, NULL, NULL, 
'¿Qué mensaje perdurable representa Ana Frank para muchas generaciones?', 
'La persistencia de la humanidad en condiciones inhumanas', 
'La importancia de mantener diarios personales', 
'La superioridad de una cultura sobre otras', 
'La inevitabilidad de la violencia histórica', 
'A', 6, 10, 
'El diario de Ana Frank: Ana Frank');
