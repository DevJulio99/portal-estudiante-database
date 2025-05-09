-- PREGUNTAS MATEMÁTICA 5° SECUNDARIA
-- Preguntas sobre Leyes de exponentes
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Simplificación de potencias', 
'Las leyes de exponentes son fundamentales para simplificar expresiones algebraicas. Considera la siguiente expresión: (2³ × 2⁴) ÷ 2². Para resolverla correctamente, debes aplicar las propiedades de los exponentes de manera adecuada.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de simplificar la expresión (2³ × 2⁴) ÷ 2²?', 
'2⁵', '2⁶', '2⁷', '2⁸', 'A', 5, 11, 'Leyes de exponentes'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Multiplicación de bases iguales', 
'Cuando multiplicamos potencias de la misma base, los exponentes se suman. Esta propiedad es muy útil para simplificar cálculos complejos. Analiza la siguiente expresión: x⁵ × x⁻³ × x².', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de simplificar x⁵ × x⁻³ × x²?', 
'x⁴', 'x⁻³⁰', 'x¹⁰', 'x⁰', 'A', 5, 11, 'Leyes de exponentes'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'División de potencias', 
'La división de potencias de la misma base sigue reglas específicas que permiten simplificar expresiones. Observa la siguiente expresión: (5⁷ × 5⁻²) ÷ (5³ × 5⁻⁴).', 
NULL, NULL, NULL, 
'¿Cuál es el resultado simplificado de (5⁷ × 5⁻²) ÷ (5³ × 5⁻⁴)?', 
'5⁶', '5⁻²', '5¹⁰', '5⁴', 'A', 5, 11, 'Leyes de exponentes'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Potencia de una potencia', 
'Cuando tenemos una potencia elevada a otra potencia, como en (3²)⁴, se aplica una propiedad específica de los exponentes que simplifica el cálculo.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de (3²)⁴?', 
'3⁶', '3⁸', '3¹⁶', '9⁸', 'B', 5, 11, 'Leyes de exponentes'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Producto de potencias diferentes', 
'Al multiplicar potencias con bases diferentes pero exponentes iguales, como en (2 × 3)⁴, podemos aplicar una propiedad distributiva de los exponentes.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de (2 × 3)⁴ expresado como producto de potencias?', 
'2⁴ × 3⁴', '2⁴ + 3⁴', '6⁴', 'Ambas A y C son correctas', 'D', 5, 11, 'Leyes de exponentes'),

-- Preguntas sobre Exponentes racionales
('MATEMÁTICA', NULL, 'Conversión a radicales', 
'Los exponentes racionales pueden expresarse como radicales y viceversa. Esta relación es fundamental para resolver problemas algebraicos.', 
NULL, NULL, NULL, 
'¿Cómo se expresa 8^(2/3) en forma de radical?', 
'∛8²', '√8³', '√(8^(1/3))', '∛(8×2)', 'A', 5, 11, 'Exponentes racionales'),

('MATEMÁTICA', NULL, 'Simplificación con exponentes fraccionarios', 
'Simplificar expresiones con exponentes racionales requiere el dominio de varias propiedades de los exponentes. Considera la expresión (16^(1/4))^(3/2).', 
NULL, NULL, NULL, 
'¿Cuál es el resultado simplificado de (16^(1/4))^(3/2)?', 
'16^(3/8)', '8^(1/2)', '2^(3/2)', '4^(3/4)', 'A', 5, 11, 'Exponentes racionales'),

('MATEMÁTICA', NULL, 'Ecuación con exponente racional', 
'Resolver ecuaciones con exponentes racionales implica convertirlas a forma radical o aplicar propiedades de los exponentes. Analiza la ecuación x^(3/2) = 27.', 
NULL, NULL, NULL, 
'¿Cuál es el valor de x en la ecuación x^(3/2) = 27?', 
'9', '6', '3', '81', 'A', 5, 11, 'Exponentes racionales'),

('MATEMÁTICA', NULL, 'Comparación de expresiones', 
'Al comparar expresiones con exponentes racionales, es útil convertirlas a forma radical para mejor comprensión. Considera las expresiones 25^(1/2) y 8^(1/3).', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes afirmaciones es correcta?', 
'25^(1/2) = 5', '8^(1/3) = 2', 'Ambas A y B son correctas', 'Ninguna es correcta', 'C', 5, 11, 'Exponentes racionales'),

('MATEMÁTICA', NULL, 'Aplicación en geometría', 
'Los exponentes racionales tienen aplicaciones en geometría, especialmente al calcular áreas y volúmenes. Imagina un cubo cuyo volumen es 64 cm³.', 
NULL, NULL, NULL, 
'Si el volumen de un cubo es 64 cm³, ¿cuánto mide su arista expresado como potencia con exponente racional?', 
'64^(1/3) cm', '4 cm', '∛64 cm', 'Todas las anteriores', 'D', 5, 11, 'Exponentes racionales'),

-- Preguntas sobre Factorización y simplificación usando exponentes
('MATEMÁTICA', NULL, 'Factor común con exponentes', 
'Factorizar expresiones algebraicas usando exponentes es una habilidad esencial. Considera la expresión 6x³y² - 9x²y⁴ + 12x⁴y³.', 
NULL, NULL, NULL, 
'¿Cuál es el factor común de 6x³y² - 9x²y⁴ + 12x⁴y³?', 
'3x²y²', '6x³y⁴', '3xy', '12x⁴y³', 'A', 5, 11, 'Factorización y simplificación usando exponentes'),

('MATEMÁTICA', NULL, 'Simplificación de fracción algebraica', 
'Simplificar fracciones algebraicas con exponentes requiere factorización y cancelación de términos. Observa la expresión (4x⁴y³ - 8x³y⁵) / (2x²y²).', 
NULL, NULL, NULL, 
'¿Cuál es la forma simplificada de (4x⁴y³ - 8x³y⁵) / (2x²y²)?', 
'2x²y - 4xy³', '4x²y - 8xy³', '2x³y² - 4x²y⁴', '4x³y² - 8x²y⁴', 'A', 5, 11, 'Factorización y simplificación usando exponentes'),

('MATEMÁTICA', NULL, 'Diferencia de cuadrados', 
'La diferencia de cuadrados es un caso especial de factorización. Considera la expresión 16x⁴ - 81y⁸.', 
NULL, NULL, NULL, 
'¿Cuál es la factorización correcta de 16x⁴ - 81y⁸?', 
'(4x² + 9y⁴)(4x² - 9y⁴)', '(4x² - 9y⁴)²', '(16x² + 81y⁴)(x² - y⁴)', '(4x² + 9y⁴)(2x + 3y⁴)(2x - 3y⁴)', 'A', 5, 11, 'Factorización y simplificación usando exponentes'),

('MATEMÁTICA', NULL, 'Factorización por agrupación', 
'La factorización por agrupación es útil para expresiones con cuatro términos. Analiza la expresión x³ + 2x² + 4x + 8.', 
NULL, NULL, NULL, 
'¿Cuál es la factorización correcta de x³ + 2x² + 4x + 8?', 
'(x² + 4)(x + 2)', '(x³ + 4)(x + 2)', '(x² + 2)(x + 4)', '(x + 2)³', 'A', 5, 11, 'Factorización y simplificación usando exponentes'),

('MATEMÁTICA', NULL, 'Simplificación compleja', 
'Simplificar expresiones complejas con exponentes múltiples requiere varios pasos. Considera la expresión (x⁴y⁻²)³ ÷ (x⁻²y³)².', 
NULL, NULL, NULL, 
'¿Cuál es la forma simplificada de (x⁴y⁻²)³ ÷ (x⁻²y³)²?', 
'x¹⁶y⁻¹²', 'x¹⁴y⁻¹²', 'x⁸y⁻¹⁰', 'x¹⁶y⁻⁶', 'A', 5, 11, 'Factorización y simplificación usando exponentes'),

-- Preguntas sobre Ecuaciones exponenciales
('MATEMÁTICA', NULL, 'Ecuación exponencial básica', 
'Resolver ecuaciones exponenciales requiere igualar las bases o usar logaritmos. Considera la ecuación 3^(x+2) = 81.', 
NULL, NULL, NULL, 
'¿Cuál es el valor de x en la ecuación 3^(x+2) = 81?', 
'2', '1', '0', '-1', 'A', 5, 11, 'Ecuaciones exponenciales'),

('MATEMÁTICA', NULL, 'Ecuación con bases diferentes', 
'Cuando las bases son diferentes pero los exponentes pueden igualarse, se puede resolver la ecuación. Analiza 4^(x-1) = 8^(x+2).', 
NULL, NULL, NULL, 
'¿Cuál es el valor de x en la ecuación 4^(x-1) = 8^(x+2)?', 
'-8', '-7', '-6', '-5', 'A', 5, 11, 'Ecuaciones exponenciales'),

('MATEMÁTICA', NULL, 'Ecuación exponencial compuesta', 
'Algunas ecuaciones exponenciales requieren sustitución para simplificar. Considera la ecuación e^(2x) - 5e^x + 6 = 0.', 
NULL, NULL, NULL, 
'¿Cuáles son las soluciones de e^(2x) - 5e^x + 6 = 0?', 
'ln(2) y ln(3)', '2 y 3', 'e² y e³', 'No tiene solución', 'A', 5, 11, 'Ecuaciones exponenciales'),

('MATEMÁTICA', NULL, 'Aplicación en crecimiento poblacional', 
'Las ecuaciones exponenciales modelan crecimiento poblacional. Una población crece según P(t) = 1000 × 2^(t/10), donde t es tiempo en años.', 
NULL, NULL, NULL, 
'¿En cuántos años la población será de 8000?', 
'30', '20', '40', '10', 'A', 5, 11, 'Ecuaciones exponenciales'),

('MATEMÁTICA', NULL, 'Ecuación con exponentes en ambos lados', 
'Resolver ecuaciones con exponentes en ambos lados requiere manipulación algebraica. Considera 5^(x+1) = 25^(x-2).', 
NULL, NULL, NULL, 
'¿Cuál es el valor de x en 5^(x+1) = 25^(x-2)?', 
'5', '4', '3', '2', 'A', 5, 11, 'Ecuaciones exponenciales'),

-- Preguntas sobre Funciones exponenciales
('MATEMÁTICA', NULL, 'Identificación de funciones', 
'Reconocer funciones exponenciales entre diferentes tipos de funciones es fundamental. Analiza las siguientes opciones.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes es una función exponencial?', 
'f(x) = 2^x', 'f(x) = x²', 'f(x) = 2x + 1', 'f(x) = log₂x', 'A', 5, 11, 'Funciones exponenciales'),

('MATEMÁTICA', NULL, 'Cálculo de valores funcionales', 
'Evaluar funciones exponenciales en puntos específicos es una operación básica. Considera f(x) = 3 × 2^x.', 
NULL, NULL, NULL, 
'¿Cuál es el valor de f(3) para f(x) = 3 × 2^x?', 
'24', '12', '6', '9', 'A', 5, 11, 'Funciones exponenciales'),

('MATEMÁTICA', NULL, 'Gráfica de funciones', 
'Las gráficas de funciones exponenciales tienen características distintivas. Analiza la función f(x) = (1/2)^x.', 
NULL, NULL, NULL, 
'¿Qué característica tiene la gráfica de f(x) = (1/2)^x?', 
'Decreciente', 'Creciente', 'Lineal', 'Constante', 'A', 5, 11, 'Funciones exponenciales'),

('MATEMÁTICA', NULL, 'Comparación de tasas', 
'Comparar tasas de crecimiento de funciones exponenciales es importante en aplicaciones. Considera f(x) = 2^x y g(x) = 3^x.', 
NULL, NULL, NULL, 
'¿Qué afirmación es correcta sobre f(x) = 2^x y g(x) = 3^x?', 
'g(x) crece más rápido que f(x)', 'f(x) crece más rápido que g(x)', 'Ambas crecen igual', 'Ambas decrecen', 'A', 5, 11, 'Funciones exponenciales'),

('MATEMÁTICA', NULL, 'Transformación de funciones', 
'Las transformaciones afectan las gráficas de funciones exponenciales. Analiza f(x) = 2^(x-3) + 1.', 
NULL, NULL, NULL, 
'¿Cómo se transformó la función básica 2^x para obtener f(x) = 2^(x-3) + 1?', 
'Desplazada 3 unidades derecha y 1 arriba', 'Desplazada 3 unidades izquierda y 1 abajo', 'Estirada verticalmente', 'Reflejada en el eje x', 'A', 5, 11, 'Funciones exponenciales'),

-- Preguntas sobre Funciones exponenciales: Crecimiento y decrecimiento
('MATEMÁTICA', NULL, 'Identificación de crecimiento', 
'Determinar si una función exponencial es creciente o decreciente es esencial. Analiza f(x) = (5/2)^x.', 
NULL, NULL, NULL, 
'¿La función f(x) = (5/2)^x es creciente o decreciente?', 
'Creciente', 'Decreciente', 'Constante', 'Ninguna de las anteriores', 'A', 5, 11, 'Funciones exponenciales: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Tasa de decrecimiento', 
'Las funciones exponenciales decrecientes modelan decaimiento. Considera f(x) = 100 × (0.85)^x.', 
NULL, NULL, NULL, 
'¿Cuál es la tasa de decrecimiento de f(x) = 100 × (0.85)^x?', 
'15%', '85%', '0.15%', '8.5%', 'A', 5, 11, 'Funciones exponenciales: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Modelado de situaciones reales', 
'Las funciones exponenciales modelan situaciones reales de crecimiento. Una población de bacterias se duplica cada hora.', 
NULL, NULL, NULL, 
'Si inicialmente hay 50 bacterias, ¿qué función modela su crecimiento?', 
'P(t) = 50 × 2^t', 'P(t) = 50 + 2t', 'P(t) = 50 × t²', 'P(t) = 50 × e^t', 'A', 5, 11, 'Funciones exponenciales: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Comparación de modelos', 
'Comparar modelos de crecimiento exponencial y lineal es importante. Considera f(x) = 2^x y g(x) = 100x + 1.', 
NULL, NULL, NULL, 
'¿Qué afirmación es correcta sobre f(x) = 2^x y g(x) = 100x + 1?', 
'A largo plazo, f(x) supera a g(x)', 'g(x) siempre es mayor que f(x)', 'Ambas crecen igual', 'f(x) es lineal', 'A', 5, 11, 'Funciones exponenciales: Crecimiento y decrecimiento'),

('MATEMÁTICA', NULL, 'Punto de intersección', 
'Encontrar puntos de intersección entre funciones exponenciales y lineales es útil. Considera f(x) = 3^x y g(x) = 2x + 5.', 
NULL, NULL, NULL, 
'¿En qué punto se intersectan f(x) = 3^x y g(x) = 2x + 5?', 
'(1, 7)', '(0, 1)', '(2, 9)', 'No se intersectan', 'A', 5, 11, 'Funciones exponenciales: Crecimiento y decrecimiento'),

-- Preguntas sobre La función exponencial natural: y=e^x
('MATEMÁTICA', NULL, 'Propiedades de e^x', 
'La función exponencial natural tiene propiedades únicas. Analiza f(x) = e^x.', 
NULL, NULL, NULL, 
'¿Cuál es la derivada de f(x) = e^x?', 
'e^x', 'ln(x)', '0', '1/x', 'A', 5, 11, 'La función exponencial natural: y=e^x'),

('MATEMÁTICA', NULL, 'Cálculo de valores', 
'Evaluar la función exponencial natural en puntos específicos es importante. Considera f(x) = e^x.', 
NULL, NULL, NULL, 
'¿Cuál es el valor aproximado de e²?', 
'7.389', '2.718', '1.414', '3.142', 'A', 5, 11, 'La función exponencial natural: y=e^x'),

('MATEMÁTICA', NULL, 'Ecuación con e^x', 
'Resolver ecuaciones con la función exponencial natural requiere manipulación algebraica. Considera e^(2x) = 7.', 
NULL, NULL, NULL, 
'¿Cuál es la solución de e^(2x) = 7?', 
'(ln7)/2', 'ln(7/2)', 'e^(7/2)', '2ln7', 'A', 5, 11, 'La función exponencial natural: y=e^x'),

('MATEMÁTICA', NULL, 'Transformación de e^x', 
'Las transformaciones afectan la gráfica de e^x. Analiza f(x) = -e^(x-1) + 2.', 
NULL, NULL, NULL, 
'¿Cómo se transformó e^x para obtener f(x) = -e^(x-1) + 2?', 
'Reflejada en x, desplazada 1 derecha y 2 arriba', 'Reflejada en y, desplazada 1 izquierda y 2 abajo', 'Estirada horizontalmente', 'Comprimida verticalmente', 'A', 5, 11, 'La función exponencial natural: y=e^x'),

('MATEMÁTICA', NULL, 'Límite de e^x', 
'Comprender el comportamiento límite de e^x es fundamental. Analiza los límites cuando x→+∞ y x→-∞.', 
NULL, NULL, NULL, 
'¿Cuáles son los límites de e^x cuando x→+∞ y x→-∞ respectivamente?', 
'+∞ y 0', '0 y +∞', '1 en ambos casos', 'No existen', 'A', 5, 11, 'La función exponencial natural: y=e^x');

-- Preguntas para el tema: Logaritmos en base 10
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cálculo de logaritmo base 10', 
'El logaritmo en base 10 es una herramienta fundamental en matemáticas y ciencias, especialmente para trabajar con números muy grandes o muy pequeños. Su comprensión es esencial para resolver problemas de diversas áreas.', 
NULL, NULL, NULL, '¿Cuál es el valor de log₁₀(1000)?', 
'1', '2', '3', '4', 'C', 5, 11, 'Logaritmos en base 10'),
-- Pregunta 2
('MATEMÁTICA', NULL, 'Aplicación de logaritmos decimales', 
'En acústica, la intensidad del sonido se mide en decibelios, que utilizan logaritmos en base 10. Esto permite manejar el amplio rango de intensidades que puede percibir el oído humano.', 
NULL, NULL, NULL, 'Si log₁₀(x) = -2, ¿cuál es el valor de x?', 
'0.01', '0.1', '1', '10', 'A', 5, 11, 'Logaritmos en base 10'),
-- Pregunta 3
('MATEMÁTICA', NULL, 'Comparación de magnitudes logarítmicas', 
'Los logaritmos en base 10 son particularmente útiles para comparar magnitudes que varían en órdenes de grandeza, como la escala Richter para terremotos o la escala de pH en química.', 
NULL, NULL, NULL, '¿Cuál de las siguientes afirmaciones sobre log₁₀(100) es correcta?', 
'Es igual a 1', 'Es igual a 2', 'Es igual a 10', 'No existe', 'B', 5, 11, 'Logaritmos en base 10'),
-- Pregunta 4
('MATEMÁTICA', NULL, 'Propiedades de los logaritmos decimales', 
'El logaritmo en base 10 de un producto es igual a la suma de los logaritmos de los factores. Esta propiedad simplifica cálculos complejos y es fundamental en muchas aplicaciones científicas.', 
NULL, NULL, NULL, 'Si log₁₀(2) ≈ 0.3010, ¿cuál es el valor aproximado de log₁₀(20)?', 
'1.3010', '2.3010', '0.6020', '10.3010', 'A', 5, 11, 'Logaritmos en base 10'),
-- Pregunta 5
('MATEMÁTICA', NULL, 'Ecuaciones logarítmicas base 10', 
'Resolver ecuaciones logarítmicas requiere comprender la relación entre exponentes y logaritmos, así como las propiedades fundamentales de estas funciones matemáticas.', 
NULL, NULL, NULL, '¿Para qué valor de x se cumple que 10^(log₁₀(x)) = 25?', 
'5', '10', '25', '100', 'C', 5, 11, 'Logaritmos en base 10'),

-- Preguntas para el tema: Logaritmos en base e
('MATEMÁTICA', NULL, 'Introducción al logaritmo natural', 
'El logaritmo natural, con base en el número irracional e (aproximadamente 2.71828), tiene aplicaciones fundamentales en cálculo, crecimiento poblacional y modelos financieros.', 
NULL, NULL, NULL, '¿Cuál es el valor de ln(e³)?', 
'1', 'e', '3', '3e', 'C', 5, 11, 'Logaritmos en base e'),
('MATEMÁTICA', NULL, 'Propiedades del logaritmo natural', 
'El logaritmo natural tiene propiedades únicas que lo hacen especialmente útil en cálculo diferencial e integral, así como en la resolución de ecuaciones diferenciales.', 
NULL, NULL, NULL, 'Si ln(x) = 2, ¿cuál es el valor aproximado de x?', 
'2.718', '5.436', '7.389', '10', 'C', 5, 11, 'Logaritmos en base e'),
('MATEMÁTICA', NULL, 'Derivada del logaritmo natural', 
'En cálculo, la derivada del logaritmo natural tiene una forma particularmente simple, lo que hace que esta función sea fundamental en muchos desarrollos matemáticos.', 
NULL, NULL, NULL, '¿Cuál es la derivada de ln(3x)?', 
'1/x', '1/(3x)', '3/x', 'ln(3)', 'A', 5, 11, 'Logaritmos en base e'),
('MATEMÁTICA', NULL, 'Ecuaciones con logaritmos naturales', 
'Las ecuaciones que involucran logaritmos naturales requieren el uso de propiedades algebraicas y logarítmicas para su resolución, siendo esenciales en modelos exponenciales.', 
NULL, NULL, NULL, 'Resuelve para x: e^(ln(x)) = 7', 
'1', 'e', '7', 'ln(7)', 'C', 5, 11, 'Logaritmos en base e'),
('MATEMÁTICA', NULL, 'Aplicación del logaritmo natural', 
'El logaritmo natural es fundamental en el cálculo del tiempo de duplicación en crecimiento exponencial, como en poblaciones o inversiones financieras.', 
NULL, NULL, NULL, 'Si una población crece según P(t) = P₀e^(kt), ¿qué representa ln(2)/k?', 
'Tiempo de duplicación', 'Tasa de crecimiento', 'Población inicial', 'Límite de capacidad', 'A', 5, 11, 'Logaritmos en base e'),

-- Preguntas para el tema: Leyes de logaritmos
('MATEMÁTICA', NULL, 'Ley del producto de logaritmos', 
'Las leyes de los logaritmos permiten simplificar expresiones complejas y resolver ecuaciones que involucran funciones exponenciales y logarítmicas.', 
NULL, NULL, NULL, 'Según las leyes de logaritmos, ¿a qué es igual logₐ(M) + logₐ(N)?', 
'logₐ(M+N)', 'logₐ(M×N)', 'logₐ(M^N)', 'logₐ(M/N)', 'B', 5, 11, 'Leyes de logaritmos'),
('MATEMÁTICA', NULL, 'Ley del cociente de logaritmos', 
'La comprensión de las leyes de logaritmos es esencial para manipular expresiones algebraicas que contengan funciones logarítmicas.', 
NULL, NULL, NULL, '¿Cuál es la expresión equivalente a logₐ(M) - logₐ(N)?', 
'logₐ(M-N)', 'logₐ(M×N)', 'logₐ(M÷N)', 'logₐ(N-M)', 'C', 5, 11, 'Leyes de logaritmos'),
('MATEMÁTICA', NULL, 'Ley de la potencia de logaritmos', 
'Las propiedades de los logaritmos transforman multiplicaciones en sumas, divisiones en restas y potencias en productos, simplificando muchos cálculos.', 
NULL, NULL, NULL, '¿Cómo se expresa n·logₐ(M) según las leyes de logaritmos?', 
'logₐ(nM)', 'logₐ(M+n)', 'logₐ(M^n)', 'logₐ(n^M)', 'C', 5, 11, 'Leyes de logaritmos'),
('MATEMÁTICA', NULL, 'Aplicación de múltiples leyes', 
'La combinación de diferentes leyes logarítmicas permite resolver problemas complejos que involucran productos, cocientes y potencias.', 
NULL, NULL, NULL, 'Simplifica: log(x²y³) - log(xy)', 
'log(xy²)', 'log(x)+log(y²)', 'log(x³y²)', 'log(x)+2log(y)', 'A', 5, 11, 'Leyes de logaritmos'),
('MATEMÁTICA', NULL, 'Identificación de leyes logarítmicas', 
'Reconocer qué ley logarítmica aplicar en cada situación es una habilidad fundamental para trabajar con estas funciones.', 
NULL, NULL, NULL, '¿Qué ley se aplica en la expresión: log(10/x) = log(10) - log(x)?', 
'Ley del producto', 'Ley del cociente', 'Ley de la potencia', 'Cambio de base', 'B', 5, 11, 'Leyes de logaritmos'),

-- Preguntas para el tema: Ecuaciones exponenciales usando logaritmos
('MATEMÁTICA', NULL, 'Resolución de ecuación exponencial básica', 
'Las ecuaciones exponenciales pueden resolverse aplicando logaritmos a ambos lados de la ecuación, lo que permite "bajar" el exponente para despejar la variable.', 
NULL, NULL, NULL, 'Resuelve para x: 2^x = 16', 
'2', '4', '8', '16', 'B', 5, 11, 'Ecuaciones exponenciales usando logaritmos'),
('MATEMÁTICA', NULL, 'Ecuación exponencial con base diferente', 
'Cuando las bases no son iguales, los logaritmos proporcionan un método sistemático para resolver ecuaciones exponenciales de cualquier tipo.', 
NULL, NULL, NULL, 'Resuelve para x: 3^(x+1) = 27', 
'1', '2', '3', '4', 'B', 5, 11, 'Ecuaciones exponenciales usando logaritmos'),
('MATEMÁTICA', NULL, 'Ecuación con exponente variable', 
'En ecuaciones donde la variable aparece en el exponente, los logaritmos son la herramienta más efectiva para aislar y resolver para la variable.', 
NULL, NULL, NULL, 'Resuelve para x: 5^(2x) = 125', 
'1', '1.5', '2', '2.5', 'B', 5, 11, 'Ecuaciones exponenciales usando logaritmos'),
('MATEMÁTICA', NULL, 'Aplicación de logaritmos naturales', 
'El uso de logaritmos naturales es particularmente útil cuando la base de la ecuación exponencial es el número e.', 
NULL, NULL, NULL, 'Resuelve para x: e^(3x) = 20 (expresa tu respuesta en términos de ln)', 
'ln(20)/3', '3/ln(20)', 'ln(60)', 'e^20/3', 'A', 5, 11, 'Ecuaciones exponenciales usando logaritmos'),
('MATEMÁTICA', NULL, 'Ecuación exponencial compuesta', 
'Las ecuaciones exponenciales más complejas pueden requerir el uso de propiedades algebraicas y logarítmicas combinadas para su solución.', 
NULL, NULL, NULL, 'Resuelve para x: 2^(x-1) = 8^(x+2)', 
'-7/2', '-5/2', '5/2', '7/2', 'A', 5, 11, 'Ecuaciones exponenciales usando logaritmos'),

-- Preguntas para el tema: Logaritmos: La regla de cambio de base
('MATEMÁTICA', NULL, 'Fórmula de cambio de base', 
'La regla de cambio de base permite calcular logaritmos en cualquier base utilizando logaritmos en una base conocida, como 10 o e.', 
NULL, NULL, NULL, 'Según la fórmula de cambio de base, logₐ(b) es igual a:', 
'logₙ(a)/logₙ(b)', 'logₙ(b)/logₙ(a)', 'logₙ(a·b)', 'logₙ(a)^logₙ(b)', 'B', 5, 11, 'Logaritmos: La regla de cambio de base'),
('MATEMÁTICA', NULL, 'Aplicación de cambio de base', 
'El cambio de base es especialmente útil cuando necesitamos calcular logaritmos en bases para las que nuestras calculadoras no tienen funciones específicas.', 
NULL, NULL, NULL, 'Usando cambio de base, ¿cómo expresarías log₅(25) en términos de logaritmos naturales?', 
'ln(5)/ln(25)', 'ln(25)/ln(5)', 'ln(125)', 'ln(5^25)', 'B', 5, 11, 'Logaritmos: La regla de cambio de base'),
('MATEMÁTICA', NULL, 'Cálculo con cambio de base', 
'La regla de cambio de base facilita el cálculo de logaritmos en bases arbitrarias utilizando calculadoras científicas estándar.', 
NULL, NULL, NULL, 'Calcula log₃(7) usando logaritmos base 10 (usa 3 decimales)', 
'0.845', '1.771', '2.129', '3.771', 'B', 5, 11, 'Logaritmos: La regla de cambio de base'),
('MATEMÁTICA', NULL, 'Simplificación con cambio de base', 
'El cambio de base puede simplificar expresiones logarítmicas complejas, permitiendo su evaluación numérica o comparación.', 
NULL, NULL, NULL, 'Si logₐ(b) = 3 y logₐ(c) = 2, ¿cuál es el valor de log_b(c)?', 
'1/3', '2/3', '3/2', '6', 'B', 5, 11, 'Logaritmos: La regla de cambio de base'),
('MATEMÁTICA', NULL, 'Identificación de cambio de base', 
'Reconocer cuándo aplicar la regla de cambio de base es esencial para resolver problemas que involucran múltiples bases logarítmicas.', 
NULL, NULL, NULL, '¿Cuál de las siguientes expresiones es equivalente a log₇(49) usando cambio de base?', 
'log(49)/log(7)', 'log(7)/log(49)', 'ln(7)/ln(49)', 'log(343)/log(7)', 'A', 5, 11, 'Logaritmos: La regla de cambio de base'),

-- Preguntas para el tema: Funciones logarítmicas
('MATEMÁTICA', NULL, 'Dominio de funciones logarítmicas', 
'Las funciones logarítmicas tienen restricciones en su dominio que deben considerarse al trabajar con ellas en problemas matemáticos.', 
NULL, NULL, NULL, '¿Cuál es el dominio de la función f(x) = log₂(x - 3)?', 
'Todos los reales', 'x > 0', 'x > 3', 'x ≥ 3', 'C', 5, 11, 'Funciones logarítmicas'),
('MATEMÁTICA', NULL, 'Gráfica de funciones logarítmicas', 
'Las gráficas de funciones logarítmicas tienen características distintivas que las diferencian de otros tipos de funciones.', 
NULL, NULL, NULL, '¿Cuál de las siguientes afirmaciones sobre la gráfica de f(x) = ln(x) es correcta?', 
'Pasa por (0,0)', 'Tiene una asíntota vertical en x=1', 'Es decreciente en todo su dominio', 'Tiene una asíntota vertical en x=0', 'D', 5, 11, 'Funciones logarítmicas'),
('MATEMÁTICA', NULL, 'Transformación de funciones logarítmicas', 
'Las transformaciones (desplazamientos, reflexiones, estiramientos) aplican también a funciones logarítmicas, modificando su gráfica y propiedades.', 
NULL, NULL, NULL, '¿Cómo se transforma la gráfica de f(x) = log(x) para obtener g(x) = log(x) + 2?', 
'Desplazamiento horizontal izquierda', 'Desplazamiento vertical arriba', 'Reflexión sobre el eje x', 'Estiramiento vertical', 'B', 5, 11, 'Funciones logarítmicas'),
('MATEMÁTICA', NULL, 'Intersección con ejes', 
'Encontrar las intersecciones con los ejes es un paso fundamental para graficar funciones y entender su comportamiento.', 
NULL, NULL, NULL, '¿En qué punto la función f(x) = log₅(x + 1) intersecta al eje x?', 
'(0,0)', '(1,0)', '(4,0)', 'No intersecta el eje x', 'C', 5, 11, 'Funciones logarítmicas'),
('MATEMÁTICA', NULL, 'Composición de funciones logarítmicas', 
'La composición de funciones logarítmicas con otras funciones puede generar comportamientos interesantes y aplicaciones prácticas.', 
NULL, NULL, NULL, 'Si f(x) = log₂(x) y g(x) = 8^x, ¿cuál es el valor de f(g(1))?', 
'0', '1', '2', '3', 'D', 5, 11, 'Funciones logarítmicas'),

-- Preguntas para el tema: Funciones logarítmicas: Crecimiento y decrecimiento
('MATEMÁTICA', NULL, 'Identificación de crecimiento logarítmico', 
'Las funciones logarítmicas exhiben patrones de crecimiento característicos que las diferencian de otros modelos de crecimiento.', 
NULL, NULL, NULL, '¿Cómo se describe el crecimiento de una función logarítmica f(x) = logₐ(x) cuando a > 1?', 
'Crece rápidamente al principio y luego se estabiliza', 'Crece lentamente al principio y luego más rápido', 'Decrece en todo su dominio', 'Es constante', 'A', 5, 11, 'Funciones logarítmicas: Crecimiento y decrecimiento'),
('MATEMÁTICA', NULL, 'Comparación de tasas de crecimiento', 
'Comparar las tasas de crecimiento de diferentes funciones es esencial para entender su comportamiento a largo plazo.', 
NULL, NULL, NULL, '¿Cómo crece una función logarítmica en comparación con una lineal cuando x tiende a infinito?', 
'Más rápido', 'A la misma velocidad', 'Más lentamente', 'Depende de la base', 'C', 5, 11, 'Funciones logarítmicas: Crecimiento y decrecimiento'),
('MATEMÁTICA', NULL, 'Comportamiento en el límite', 
'El comportamiento de las funciones logarítmicas en los extremos de su dominio revela características importantes sobre su crecimiento.', 
NULL, NULL, NULL, '¿Qué ocurre con f(x) = log₁/₂(x) cuando x aumenta?', 
'La función aumenta', 'La función disminuye', 'La función se mantiene constante', 'La función oscila', 'B', 5, 11, 'Funciones logarítmicas: Crecimiento y decrecimiento'),
('MATEMÁTICA', NULL, 'Aplicación de crecimiento logarítmico', 
'El crecimiento logarítmico aparece en diversos contextos científicos, como la percepción sensorial y la escala de intensidad de terremotos.', 
NULL, NULL, NULL, 'En el modelo de percepción de Weber-Fechner, la intensidad percibida crece logarítmicamente con respecto a:', 
'El tiempo de exposición', 'La intensidad real del estímulo', 'La frecuencia del estímulo', 'La temperatura ambiente', 'B', 5, 11, 'Funciones logarítmicas: Crecimiento y decrecimiento'),
('MATEMÁTICA', NULL, 'Inversa de función exponencial', 
'Las funciones logarítmicas son las inversas de las exponenciales, lo que determina muchas de sus propiedades de crecimiento.', 
NULL, NULL, NULL, 'Si una función exponencial crece rápidamente, su inversa logarítmica:', 
'Crece igual de rápido', 'Crece más rápido', 'Crece más lentamente', 'Decrece', 'C', 5, 11, 'Funciones logarítmicas: Crecimiento y decrecimiento');

-- Preguntas para el tema: Concepto de relaciones y funciones
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Identificando relaciones', 
'En matemáticas, una relación es una correspondencia entre los elementos de dos conjuntos. Observa los siguientes pares ordenados: {(1,2), (2,4), (3,6), (4,8)}. ¿Cuál de las siguientes afirmaciones es correcta sobre esta relación?', 
NULL, NULL, NULL, 
'¿Qué característica principal tiene esta relación?', 
'Es una relación pero no una función', 
'Cada elemento del primer conjunto se relaciona con exactamente un elemento del segundo conjunto', 
'No cumple con la definición de relación matemática', 
'Es una relación donde algunos elementos del primer conjunto tienen múltiples correspondencias', 
'B', 5, 11, 'Concepto de relaciones y funciones'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Diferencia entre relación y función', 
'En el estudio de las relaciones matemáticas, es fundamental entender la diferencia entre una relación cualquiera y una función específica. Considera los siguientes conjuntos de pares ordenados:', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes conjuntos de pares ordenados representa una función?', 
'{(1,2), (1,3), (2,4), (3,5)}', 
'{(1,1), (2,1), (3,1), (4,1)}', 
'{(1,2), (2,3), (2,4), (3,5)}', 
'{(1,1), (2,2), (2,3), (3,3)}', 
'B', 5, 11, 'Concepto de relaciones y funciones'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Aplicación práctica de funciones', 
'En la vida cotidiana encontramos muchas situaciones que pueden modelarse mediante funciones. Por ejemplo, el costo de enviar un paquete puede depender de su peso. Imagina que una compañía de mensajería cobra $5 por el primer kilo y $2 por cada kilo adicional.', 
NULL, NULL, NULL, 
'¿Qué concepto matemático representa mejor esta situación?', 
'Una relación arbitraria', 
'Una función constante', 
'Una función definida por partes', 
'Una relación que no es función', 
'C', 5, 11, 'Concepto de relaciones y funciones'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Análisis de correspondencias', 
'Se tienen dos conjuntos: A = {1, 2, 3} y B = {a, b, c}. Se establece la siguiente correspondencia: 1→a, 2→b, 3→c, 1→b.', 
NULL, NULL, NULL, 
'¿Esta correspondencia puede considerarse una función?', 
'Sí, porque todos los elementos de A tienen imagen en B', 
'No, porque un elemento de A tiene dos imágenes en B', 
'Sí, porque hay al menos una correspondencia para cada elemento', 
'No, porque no todos los elementos de B son imagen de algún elemento de A', 
'B', 5, 11, 'Concepto de relaciones y funciones'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Características de las funciones', 
'Las funciones matemáticas tienen propiedades específicas que las distinguen de las relaciones generales. Una de estas propiedades es fundamental para su definición.', 
NULL, NULL, NULL, 
'¿Cuál es la propiedad esencial que debe cumplir una relación para ser considerada función?', 
'Todos los elementos del conjunto de llegada deben estar relacionados', 
'Cada elemento del conjunto de partida debe relacionarse con al menos un elemento del conjunto de llegada', 
'Cada elemento del conjunto de partida debe relacionarse con exactamente un elemento del conjunto de llegada', 
'Debe haber una correspondencia biunívoca entre los conjuntos', 
'C', 5, 11, 'Concepto de relaciones y funciones'),

-- Preguntas para el tema: Notación de una función: f(x), v(t), C(n)
('MATEMÁTICA', NULL, 'Interpretación de notación funcional', 
'La notación f(x) = 2x + 3 es fundamental en el estudio de funciones. Esta notación nos permite trabajar con funciones de manera algebraica y realizar cálculos precisos.', 
NULL, NULL, NULL, 
'Si f(x) = 2x + 3, ¿cuál es el valor de f(5)?', 
'10', 
'13', 
'15', 
'17', 
'B', 5, 11, 'Notación de una función: f(x), v(t), C(n)'),

('MATEMÁTICA', NULL, 'Notación alternativa', 
'Las funciones pueden representarse con diferentes variables según el contexto. Por ejemplo, en física es común usar v(t) para representar la velocidad en función del tiempo.', 
NULL, NULL, NULL, 
'Si v(t) = 9.8t representa la velocidad de un objeto en caída libre, ¿qué significa v(3)?', 
'La velocidad inicial del objeto', 
'La velocidad del objeto a los 3 segundos', 
'La aceleración del objeto a los 3 segundos', 
'La distancia recorrida en 3 segundos', 
'B', 5, 11, 'Notación de una función: f(x), v(t), C(n)'),

('MATEMÁTICA', NULL, 'Función de costo', 
'En economía, C(n) puede representar el costo de producir n unidades de un producto. Por ejemplo, C(n) = 500 + 10n, donde 500 son costos fijos y 10n son costos variables.', 
NULL, NULL, NULL, 
'Si C(n) = 500 + 10n, ¿cuál es el costo de producir 25 unidades?', 
'525', 
'650', 
'750', 
'850', 
'C', 5, 11, 'Notación de una función: f(x), v(t), C(n)'),

('MATEMÁTICA', NULL, 'Evaluación de funciones', 
'La notación funcional permite evaluar fácilmente la función para diferentes valores de la variable independiente. Considera la función g(y) = y² - 4y + 4.', 
NULL, NULL, NULL, 
'¿Cuál es el valor de g(3) para la función g(y) = y² - 4y + 4?', 
'1', 
'2', 
'3', 
'4', 
'A', 5, 11, 'Notación de una función: f(x), v(t), C(n)'),

('MATEMÁTICA', NULL, 'Comparación de notaciones', 
'Diferentes disciplinas utilizan distintas notaciones para funciones, pero todas comparten la misma estructura fundamental de dependencia entre variables.', 
NULL, NULL, NULL, 
'Si en química tenemos la concentración en función del tiempo como [C](t) = [C]₀e⁻ᵏᵗ, ¿qué representa [C](2)?', 
'La concentración inicial', 
'La concentración al cabo de 2 unidades de tiempo', 
'La constante de velocidad de reacción', 
'El logaritmo de la concentración', 
'B', 5, 11, 'Notación de una función: f(x), v(t), C(n)'),

-- Preguntas para el tema: Representación de funciones: fórmula, tabla de valores y gráfica
('MATEMÁTICA', NULL, 'De tabla a fórmula', 
'Una función puede representarse mediante una tabla de valores. Analiza la siguiente tabla:
x | f(x)
1 | 3
2 | 5
3 | 7
4 | 9', 
NULL, NULL, NULL, 
'¿Cuál es la fórmula que mejor representa esta función?', 
'f(x) = x + 2', 
'f(x) = 2x + 1', 
'f(x) = 3x', 
'f(x) = x² + 2', 
'B', 5, 11, 'Representación de funciones: fórmula, tabla de valores y gráfica'),

('MATEMÁTICA', NULL, 'Gráfica de función', 
'La gráfica de una función es una representación visual que muestra la relación entre las variables independiente y dependiente.', 
NULL, NULL, NULL, 
'¿Qué característica debe tener una gráfica para representar una función?', 
'Debe ser una línea recta', 
'Debe pasar por el origen', 
'Debe cumplir el criterio de la recta vertical', 
'Debe ser simétrica respecto al eje y', 
'C', 5, 11, 'Representación de funciones: fórmula, tabla de valores y gráfica'),

('MATEMÁTICA', NULL, 'Tabla de valores incompleta', 
'Dada la función f(x) = x² - 3, completa la siguiente tabla:
x | f(x)
1 | ?
2 | ?
3 | ?', 
NULL, NULL, NULL, 
'¿Cuáles son los valores correctos para f(1), f(2) y f(3) respectivamente?', 
'-2, 1, 6', 
'-2, -1, 6', 
'2, 1, 6', 
'-2, 1, 9', 
'A', 5, 11, 'Representación de funciones: fórmula, tabla de valores y gráfica'),

('MATEMÁTICA', NULL, 'Identificación gráfica', 
'Se presenta una gráfica donde cada valor de x tiene exactamente un valor de y asociado, y la gráfica pasa por los puntos (0,1), (1,2), (2,3).', 
NULL, NULL, NULL, 
'¿Qué fórmula representa esta gráfica?', 
'f(x) = x', 
'f(x) = x + 1', 
'f(x) = 2x', 
'f(x) = x² + 1', 
'B', 5, 11, 'Representación de funciones: fórmula, tabla de valores y gráfica'),

('MATEMÁTICA', NULL, 'Representación múltiple', 
'Una misma función puede representarse de diferentes maneras: mediante una fórmula, una tabla de valores o una gráfica.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes NO es una forma válida de representar una función?', 
'Diagrama de Venn', 
'Tabla de valores', 
'Fórmula algebraica', 
'Gráfica cartesiana', 
'A', 5, 11, 'Representación de funciones: fórmula, tabla de valores y gráfica'),

-- Preguntas para el tema: Dominio y rango
('MATEMÁTICA', NULL, 'Dominio de función racional', 
'El dominio de una función son todos los valores de x para los cuales la función está definida. Considera la función f(x) = 1/(x-2).', 
NULL, NULL, NULL, 
'¿Cuál es el dominio de esta función?', 
'Todos los reales', 
'Todos los reales excepto x = 2', 
'Todos los reales positivos', 
'Todos los reales mayores que 2', 
'B', 5, 11, 'Dominio y rango'),

('MATEMÁTICA', NULL, 'Rango de función cuadrática', 
'El rango de una función son todos los valores posibles que puede tomar la variable dependiente. Analiza la función f(x) = x² + 4.', 
NULL, NULL, NULL, 
'¿Cuál es el rango de esta función?', 
'Todos los reales', 
'Todos los reales mayores o iguales a 4', 
'Todos los reales positivos', 
'Todos los reales entre -4 y 4', 
'B', 5, 11, 'Dominio y rango'),

('MATEMÁTICA', NULL, 'Dominio en contexto real', 
'En aplicaciones prácticas, el dominio puede estar restringido por el contexto del problema. Imagina una función que representa el área de un cuadrado en función de la longitud de su lado.', 
NULL, NULL, NULL, 
'¿Cuál sería el dominio más apropiado para esta función en un contexto real?', 
'Todos los números reales', 
'Todos los números enteros', 
'Todos los números reales positivos', 
'Todos los números racionales', 
'C', 5, 11, 'Dominio y rango'),

('MATEMÁTICA', NULL, 'Dominio y rango combinados', 
'Para la función f(x) = √(x - 1), debemos determinar tanto su dominio como su rango.', 
NULL, NULL, NULL, 
'¿Cuál es el dominio y rango correctos para esta función?', 
'Dominio: x ≥ 1, Rango: y ≥ 0', 
'Dominio: todos reales, Rango: y ≥ 0', 
'Dominio: x ≥ 0, Rango: y ≥ 1', 
'Dominio: x > 1, Rango: y > 0', 
'A', 5, 11, 'Dominio y rango'),

('MATEMÁTICA', NULL, 'Función con restricción', 
'La función f(x) = √(4 - x²) tiene un dominio restringido por la expresión dentro de la raíz cuadrada.', 
NULL, NULL, NULL, 
'¿Cuál es el dominio de esta función?', 
'-2 ≤ x ≤ 2', 
'x ≤ -2 o x ≥ 2', 
'x ≥ 0', 
'Todos los reales excepto x = -2 y x = 2', 
'A', 5, 11, 'Dominio y rango'),

-- Preguntas para el tema: Función constante
('MATEMÁTICA', NULL, 'Identificación de función constante', 
'Una función constante es aquella que siempre devuelve el mismo valor independientemente de la entrada. Observa las siguientes funciones:', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes es una función constante?', 
'f(x) = x', 
'f(x) = 2x + 3', 
'f(x) = 5', 
'f(x) = x²', 
'C', 5, 11, 'Función constante'),

('MATEMÁTICA', NULL, 'Gráfica de función constante', 
'Las funciones constantes tienen gráficas características en el plano cartesiano.', 
NULL, NULL, NULL, 
'¿Cómo es la gráfica de una función constante f(x) = k?', 
'Una recta vertical', 
'Una recta horizontal', 
'Una parábola', 
'Una línea con pendiente positiva', 
'B', 5, 11, 'Función constante'),

('MATEMÁTICA', NULL, 'Aplicación de función constante', 
'En situaciones reales, las funciones constantes modelan fenómenos donde una magnitud no cambia.', 
NULL, NULL, NULL, 
'¿Cuál de estos escenarios podría modelarse mejor con una función constante?', 
'La temperatura de un horno que se mantiene a 180°C', 
'La velocidad de un auto que acelera uniformemente', 
'El crecimiento de una planta con el tiempo', 
'El costo de producción que aumenta con cada unidad adicional', 
'A', 5, 11, 'Función constante'),

('MATEMÁTICA', NULL, 'Propiedades de función constante', 
'Las funciones constantes tienen propiedades algebraicas específicas que las distinguen.', 
NULL, NULL, NULL, 
'Para la función constante f(x) = 3, ¿cuál es el valor de f(10) - f(2)?', 
'0', 
'1', 
'3', 
'8', 
'A', 5, 11, 'Función constante'),

('MATEMÁTICA', NULL, 'Variación de función constante', 
'Aunque las funciones constantes no varían, pueden presentarse en diferentes contextos.', 
NULL, NULL, NULL, 
'Si g(x) = c es una función constante y c = -2, ¿cuál es el valor de g(100)?', 
'100', 
'-2', 
'0', 
'No se puede determinar', 
'B', 5, 11, 'Función constante'),

-- Preguntas para el tema: Función lineal
('MATEMÁTICA', NULL, 'Identificación de función lineal', 
'Las funciones lineales son de la forma f(x) = mx + b, donde m y b son constantes.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes es una función lineal?', 
'f(x) = x² + 3', 
'f(x) = 2x - 5', 
'f(x) = |x|', 
'f(x) = 3/x', 
'B', 5, 11, 'Función lineal'),

('MATEMÁTICA', NULL, 'Pendiente de función lineal', 
'La pendiente de una función lineal determina su inclinación y tasa de cambio.', 
NULL, NULL, NULL, 
'Para la función f(x) = -3x + 4, ¿cuál es su pendiente?', 
'3', 
'-3', 
'4', 
'-4', 
'B', 5, 11, 'Función lineal'),

('MATEMÁTICA', NULL, 'Aplicación de función lineal', 
'Las funciones lineales modelan situaciones con tasa de cambio constante.', 
NULL, NULL, NULL, 
'Un taxi cobra $3 por bajada de bandera y $2 por cada kilómetro. ¿Qué función representa el costo C en función de los kilómetros x?', 
'C(x) = 2x', 
'C(x) = 3x', 
'C(x) = 2x + 3', 
'C(x) = 3x + 2', 
'C', 5, 11, 'Función lineal'),

('MATEMÁTICA', NULL, 'Intersección con ejes', 
'La gráfica de una función lineal corta los ejes en puntos específicos.', 
NULL, NULL, NULL, 
'Para la función f(x) = 2x - 6, ¿en qué punto corta al eje y?', 
'(0, 6)', 
'(0, -6)', 
'(3, 0)', 
'(-6, 0)', 
'B', 5, 11, 'Función lineal'),

('MATEMÁTICA', NULL, 'Comparación de funciones lineales', 
'Dos funciones lineales pueden compararse mediante sus pendientes y ordenadas al origen.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes funciones lineales tiene mayor pendiente?', 
'f(x) = 2x + 1', 
'f(x) = -3x + 4', 
'f(x) = 0.5x - 2', 
'f(x) = 4x - 3', 
'D', 5, 11, 'Función lineal');

-- Preguntas sobre Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Identificación de parámetros', 'Dada la función cuadrática f(x) = 2x² - 4x + 1, es fundamental comprender cómo cada coeficiente afecta la forma y posición de la parábola. Analiza cuidadosamente cada término para responder correctamente.', NULL, NULL, NULL, '¿Cuál es el coeficiente cuadrático (a) en la función f(x) = 2x² - 4x + 1?', '2', '-4', '1', '0', 'A', 5, 11, 'Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología'),
('MATEMÁTICA', NULL, 'Tabla de valores', 'Para graficar una función cuadrática, primero se construye una tabla de valores asignando diferentes valores a x y calculando los correspondientes valores de y. Este método es fundamental para visualizar el comportamiento de la función.', NULL, NULL, NULL, 'Si tenemos la función f(x) = x² - 3, ¿cuál sería el valor de f(2) según la tabla de valores?', '1', '-1', '4', '5', 'A', 5, 11, 'Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología'),
('MATEMÁTICA', NULL, 'Término independiente', 'El término independiente en una función cuadrática es de gran importancia pues indica el punto donde la parábola corta el eje y. Este conocimiento es esencial para graficar correctamente la función.', NULL, NULL, NULL, 'En la función f(x) = 3x² + 5x - 7, ¿cuál es el término independiente?', '3', '5', '-7', '0', 'C', 5, 11, 'Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología'),
('MATEMÁTICA', NULL, 'Forma general', 'La forma general de una función cuadrática es f(x) = ax² + bx + c, donde a, b y c son coeficientes reales y a ≠ 0. Esta expresión algebraica describe una parábola en el plano cartesiano.', NULL, NULL, NULL, '¿Cuál de las siguientes opciones NO representa una función cuadrática?', 'f(x) = x² + 3x - 2', 'f(x) = -2x² + 5', 'f(x) = 4x + 7', 'f(x) = 0.5x² - x + 1', 'C', 5, 11, 'Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología'),
('MATEMÁTICA', NULL, 'Completar la tabla', 'Al completar una tabla de valores para una función cuadrática, es importante evaluar la función en puntos estratégicos que permitan visualizar claramente la forma de la parábola.', NULL, NULL, NULL, 'Para la función f(x) = -x² + 4, ¿cuál sería el valor de f(-1)?', '3', '5', '-3', '0', 'A', 5, 11, 'Funciones cuadráticas: Gráficas a partir de tablas de valores, Terminología');

-- Preguntas sobre Características de la función cuadrática
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Intercepto con el eje y', 'Los interceptos de una función cuadrática con los ejes coordenados proporcionan información valiosa sobre su gráfica. El intercepto con el eje y se obtiene evaluando la función en x = 0.', NULL, NULL, NULL, '¿Cuál es el intercepto con el eje y de la función f(x) = 2x² - 3x + 5?', '(0, 5)', '(0, -3)', '(0, 2)', '(0, 0)', 'A', 5, 11, 'Características de la función cuadrática: Interceptos con los ejes, Gráficos de la forma y= ax², Eje de simetría, Vértice'),
('MATEMÁTICA', NULL, 'Gráfica básica', 'Las funciones cuadráticas de la forma y = ax² tienen características particulares según el valor y signo del coeficiente a. Esta forma simple ayuda a comprender las transformaciones más complejas.', NULL, NULL, NULL, 'Para la función f(x) = -2x², ¿qué se puede afirmar sobre su gráfica?', 'Es una parábola que abre hacia arriba', 'Es una parábola que abre hacia abajo', 'Es una línea recta', 'No tiene vértice', 'B', 5, 11, 'Características de la función cuadrática: Interceptos con los ejes, Gráficos de la forma y= ax², Eje de simetría, Vértice'),
('MATEMÁTICA', NULL, 'Eje de simetría', 'El eje de simetría de una parábola es una línea vertical que pasa por su vértice, dividiendo la gráfica en dos partes iguales. Su cálculo es fundamental para analizar la función.', NULL, NULL, NULL, '¿Cuál es la ecuación del eje de simetría para la función f(x) = x² - 6x + 8?', 'x = 3', 'x = -3', 'x = 6', 'x = 0', 'A', 5, 11, 'Características de la función cuadrática: Interceptos con los ejes, Gráficos de la forma y= ax², Eje de simetría, Vértice'),
('MATEMÁTICA', NULL, 'Coordenadas del vértice', 'El vértice de una parábola representa su punto máximo o mínimo, dependiendo de la concavidad. Determinar sus coordenadas es esencial para graficar y analizar la función.', NULL, NULL, NULL, '¿Cuáles son las coordenadas del vértice de la función f(x) = x² - 4x + 3?', '(2, -1)', '(-2, 15)', '(1, 0)', '(0, 3)', 'A', 5, 11, 'Características de la función cuadrática: Interceptos con los ejes, Gráficos de la forma y= ax², Eje de simetría, Vértice'),
('MATEMÁTICA', NULL, 'Interceptos con el eje x', 'Los interceptos con el eje x (raíces) se encuentran resolviendo la ecuación cuadrática igualada a cero. Estos puntos son donde la gráfica cruza el eje horizontal.', NULL, NULL, NULL, '¿Cuáles son los interceptos con el eje x de la función f(x) = x² - 9?', '(3, 0) y (-3, 0)', '(0, 3) y (0, -3)', '(9, 0) y (-9, 0)', '(0, 9)', 'A', 5, 11, 'Características de la función cuadrática: Interceptos con los ejes, Gráficos de la forma y= ax², Eje de simetría, Vértice');

-- Preguntas sobre Las diferentes formas de la función cuadrática
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Forma estándar', 'La forma estándar de una función cuadrática es f(x) = ax² + bx + c, que muestra claramente los coeficientes y el término independiente. Esta forma es útil para identificar rápidamente ciertas características.', NULL, NULL, NULL, '¿Cuál de las siguientes funciones está en forma estándar?', 'f(x) = (x - 2)² + 3', 'f(x) = x(x + 4)', 'f(x) = 2x² - 5x + 1', 'f(x) = -3(x + 1)(x - 2)', 'C', 5, 11, 'Las diferentes formas de la función cuadrática'),
('MATEMÁTICA', NULL, 'Forma factorizada', 'La forma factorizada f(x) = a(x - r₁)(x - r₂) muestra directamente las raíces de la función cuadrática. Esta representación es particularmente útil para encontrar los interceptos con el eje x.', NULL, NULL, NULL, 'Si una función cuadrática tiene raíces en x = -1 y x = 3, ¿cuál podría ser su forma factorizada?', 'f(x) = (x + 1)(x + 3)', 'f(x) = (x - 1)(x - 3)', 'f(x) = (x + 1)(x - 3)', 'f(x) = (x - 1)(x + 3)', 'C', 5, 11, 'Las diferentes formas de la función cuadrática'),
('MATEMÁTICA', NULL, 'Forma vértice', 'La forma vértice f(x) = a(x - h)² + k permite identificar directamente las coordenadas del vértice (h, k). Esta forma es ideal para analizar transformaciones y graficar rápidamente.', NULL, NULL, NULL, '¿Cuál es el vértice de la función f(x) = 2(x - 3)² + 4?', '(3, 4)', '(-3, 4)', '(3, -4)', '(-3, -4)', 'A', 5, 11, 'Las diferentes formas de la función cuadrática'),
('MATEMÁTICA', NULL, 'Conversión entre formas', 'Convertir entre las diferentes formas de una función cuadrática es una habilidad importante que permite aprovechar las ventajas de cada representación según el contexto.', NULL, NULL, NULL, 'Al expandir la forma f(x) = (x + 2)² - 1, ¿cuál es el término independiente en la forma estándar?', '1', '3', '-4', '4', 'B', 5, 11, 'Las diferentes formas de la función cuadrática'),
('MATEMÁTICA', NULL, 'Identificación de formas', 'Reconocer las diferentes formas de una función cuadrática permite elegir la más adecuada para resolver un problema particular o extraer información específica.', NULL, NULL, NULL, '¿Qué forma tiene la expresión f(x) = -3(x - 1)(x + 5)?', 'Forma estándar', 'Forma factorizada', 'Forma vértice', 'Forma canónica', 'B', 5, 11, 'Las diferentes formas de la función cuadrática');

-- Preguntas sobre Gráfico de funciones cuadráticas
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Método de completar cuadrados', 'Completar cuadrados es una técnica algebraica que permite reescribir una función cuadrática en su forma vértice, facilitando el análisis de sus propiedades gráficas.', NULL, NULL, NULL, 'Al completar cuadrados en f(x) = x² + 6x + 5, ¿cuál sería la expresión equivalente?', '(x + 3)² - 4', '(x + 6)² + 5', '(x + 3)² + 14', '(x + 6)² - 31', 'A', 5, 11, 'Gráfico de funciones cuadráticas: Método de completar cuadrados, El discriminante y la gráfica cuadrática, Partes positivas y negativas de una cuadrática'),
('MATEMÁTICA', NULL, 'Discriminante', 'El discriminante de una ecuación cuadrática, dado por b² - 4ac, determina la naturaleza de sus raíces y, por tanto, características importantes de su gráfica.', NULL, NULL, NULL, 'Para la función f(x) = 2x² - 3x + 1, ¿qué indica el valor del discriminante sobre sus raíces?', 'Tiene dos raíces reales distintas', 'Tiene una raíz real doble', 'No tiene raíces reales', 'No se puede determinar', 'A', 5, 11, 'Gráfico de funciones cuadráticas: Método de completar cuadrados, El discriminante y la gráfica cuadrática, Partes positivas y negativas de una cuadrática'),
('MATEMÁTICA', NULL, 'Concavidad', 'La concavidad de una parábola indica si esta abre hacia arriba o hacia abajo, lo cual está determinado por el signo del coeficiente cuadrático.', NULL, NULL, NULL, 'Si una función cuadrática tiene a = -0.5, ¿qué se puede afirmar sobre su gráfica?', 'Abre hacia arriba', 'Abre hacia abajo', 'Es una línea recta', 'No tiene concavidad', 'B', 5, 11, 'Gráfico de funciones cuadráticas: Método de completar cuadrados, El discriminante y la gráfica cuadrática, Partes positivas y negativas de una cuadrática'),
('MATEMÁTICA', NULL, 'Partes positivas y negativas', 'Las partes positivas y negativas de una función cuadrática corresponden a los intervalos donde la gráfica está por encima o por debajo del eje x, respectivamente.', NULL, NULL, NULL, 'Para la función f(x) = x² - 4, ¿en qué intervalo es negativa?', 'x < -2', '-2 < x < 2', 'x > 2', 'Nunca es negativa', 'B', 5, 11, 'Gráfico de funciones cuadráticas: Método de completar cuadrados, El discriminante y la gráfica cuadrática, Partes positivas y negativas de una cuadrática'),
('MATEMÁTICA', NULL, 'Análisis gráfico completo', 'Un análisis completo de la gráfica de una función cuadrática incluye determinar su vértice, eje de simetría, interceptos, concavidad y partes positivas/negativas.', NULL, NULL, NULL, 'Para f(x) = -x² + 4x - 3, ¿cuál es su valor máximo?', '1', '-1', '3', 'No tiene valor máximo', 'A', 5, 11, 'Gráfico de funciones cuadráticas: Método de completar cuadrados, El discriminante y la gráfica cuadrática, Partes positivas y negativas de una cuadrática');

-- Preguntas sobre Identificación de una fórmula cuadrática a partir de su gráfica
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Identificación por vértice', 'Al identificar una función cuadrática a partir de su gráfica, el vértice proporciona información clave para determinar los parámetros h y k en la forma vértice.', NULL, NULL, NULL, 'Si una parábola tiene vértice en (2, -1) y pasa por (0, 3), ¿cuál podría ser su ecuación?', 'f(x) = (x - 2)² - 1', 'f(x) = (x + 2)² - 1', 'f(x) = (x - 2)² + 1', 'f(x) = (x + 2)² + 1', 'A', 5, 11, 'Identificación de una fórmula cuadrática a partir de su gráfica'),
('MATEMÁTICA', NULL, 'Identificación por raíces', 'Cuando se conocen las raíces de una parábola y otro punto por el que pasa, es posible determinar su ecuación utilizando la forma factorizada.', NULL, NULL, NULL, 'Una parábola tiene raíces en x = -1 y x = 2, y pasa por (0, -4). ¿Cuál es su ecuación?', 'f(x) = 2(x + 1)(x - 2)', 'f(x) = -2(x + 1)(x - 2)', 'f(x) = (x + 1)(x - 2)', 'f(x) = -(x + 1)(x - 2)', 'A', 5, 11, 'Identificación de una fórmula cuadrática a partir de su gráfica'),
('MATEMÁTICA', NULL, 'Identificación por intercepto y', 'El intercepto con el eje y corresponde al término independiente en la forma estándar de la función cuadrática, lo cual puede ser útil para determinar la ecuación.', NULL, NULL, NULL, 'Si una parábola tiene intercepto y en (0, 6) y vértice en (1, 4), ¿cuál podría ser su ecuación?', 'f(x) = 2(x - 1)² + 4', 'f(x) = -2(x - 1)² + 4', 'f(x) = (x - 1)² + 4', 'f(x) = -(x - 1)² + 4', 'A', 5, 11, 'Identificación de una fórmula cuadrática a partir de su gráfica'),
('MATEMÁTICA', NULL, 'Concavidad y coeficiente', 'El coeficiente a en una función cuadrática determina no solo la concavidad sino también la "apertura" de la parábola, lo cual es visible en su gráfica.', NULL, NULL, NULL, 'Si una parábola abre hacia arriba y es más "estrecha" que y = x², ¿qué se puede decir del coeficiente a?', 'a > 1', '0 < a < 1', 'a < -1', '-1 < a < 0', 'A', 5, 11, 'Identificación de una fórmula cuadrática a partir de su gráfica'),
('MATEMÁTICA', NULL, 'Análisis completo de gráfica', 'Para determinar completamente la ecuación de una función cuadrática a partir de su gráfica, se deben identificar al menos tres puntos característicos o combinaciones de vértice y otro punto.', NULL, NULL, NULL, 'Una parábola tiene vértice en (-2, 3) y pasa por (0, -1). ¿Cuál es su ecuación?', 'f(x) = -(x + 2)² + 3', 'f(x) = (x + 2)² + 3', 'f(x) = -2(x + 2)² + 3', 'f(x) = 2(x + 2)² + 3', 'A', 5, 11, 'Identificación de una fórmula cuadrática a partir de su gráfica');

-- Preguntas sobre Intersección de funciones
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Intersección con función lineal', 'La intersección entre una función cuadrática y una lineal se encuentra resolviendo el sistema de ecuaciones formado por ambas funciones. Estos puntos representan soluciones comunes.', NULL, NULL, NULL, '¿Cuáles son los puntos de intersección entre f(x) = x² y g(x) = x + 2?', '(2, 4) y (-1, 1)', '(-2, 4) y (1, 1)', '(1, 1) y (-2, 4)', '(4, 2) y (1, -1)', 'C', 5, 11, 'Intersección de funciones'),
('MATEMÁTICA', NULL, 'Intersección con otra cuadrática', 'Cuando dos funciones cuadráticas se intersecan, pueden tener hasta dos puntos en común. Resolver este sistema requiere igualar las funciones y resolver la ecuación resultante.', NULL, NULL, NULL, '¿Cuántos puntos de intersección pueden tener dos parábolas distintas?', '0, 1 o 2', 'Siempre 2', 'Siempre 1', 'Nunca se intersecan', 'A', 5, 11, 'Intersección de funciones'),
('MATEMÁTICA', NULL, 'Sistema de ecuaciones', 'Resolver sistemas que involucran una ecuación cuadrática y una lineal puede realizarse por sustitución, igualación u otros métodos algebraicos.', NULL, NULL, NULL, 'Para encontrar la intersección de y = x² - 3x y y = x - 3, ¿qué ecuación debemos resolver?', 'x² - 3x = x - 3', 'x² - 3x + x - 3 = 0', 'x² - 4x - 3 = 0', 'x² - 2x - 3 = 0', 'A', 5, 11, 'Intersección de funciones'),
('MATEMÁTICA', NULL, 'Interpretación gráfica', 'Los puntos de intersección entre funciones representan valores de x donde ambas funciones tienen el mismo valor de y, lo cual es visible en sus gráficas.', NULL, NULL, NULL, 'Si dos funciones no se intersecan en el plano real, ¿qué se puede decir sobre las soluciones del sistema?', 'No tienen soluciones reales', 'Tienen una solución real', 'Tienen dos soluciones reales', 'Tienen infinitas soluciones', 'A', 5, 11, 'Intersección de funciones'),
('MATEMÁTICA', NULL, 'Aplicación práctica', 'Las intersecciones entre funciones tienen aplicaciones prácticas en física, economía y otras áreas donde se modelan situaciones con diferentes ecuaciones.', NULL, NULL, NULL, 'Una pelota sigue la trayectoria f(x) = -x² + 4x y un pájaro vuela en línea recta g(x) = x + 2. ¿En qué punto(s) coinciden?', '(1, 3) y (2, 4)', '(3, 1) y (4, 2)', '(-1, 1) y (2, 4)', '(1, 3) y (4, 6)', 'A', 5, 11, 'Intersección de funciones');

-- Dominio y rango de una función real de variable real
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Dominio de función cuadrática', 'Dada la función f(x) = x² - 4x + 3, determinar su dominio. Recuerda que el dominio de una función son todos los valores reales de x para los cuales la función está definida.', null, null, null, '¿Cuál es el dominio de la función f(x) = x² - 4x + 3?', 'Todos los números reales', 'x ≥ 2', 'x ≤ -3 o x ≥ 3', 'Solo valores positivos', 'A', 5, 11, 'Dominio y rango de una función real de variable real'),
('MATEMÁTICA', null, 'Rango de función lineal', 'Considera la función lineal g(x) = 2x - 5 definida para todos los números reales. El rango de una función representa todos los posibles valores de salida (y) que la función puede producir.', null, null, null, '¿Cuál es el rango de la función g(x) = 2x - 5?', 'y ≥ -5', 'Todos los números reales', 'y ≤ 5', 'Solo valores enteros', 'B', 5, 11, 'Dominio y rango de una función real de variable real'),
('MATEMÁTICA', null, 'Dominio con restricción', 'La función h(x) = √(x - 2) tiene una restricción en su dominio debido a la presencia de la raíz cuadrada. El argumento de una raíz cuadrada debe ser mayor o igual a cero para que la función esté definida en los números reales.', null, null, null, '¿Cuál es el dominio de h(x) = √(x - 2)?', 'x > 2', 'x ≥ 2', 'x ≤ 2', 'Todos los números reales', 'B', 5, 11, 'Dominio y rango de una función real de variable real'),
('MATEMÁTICA', null, 'Rango de función cuadrática', 'Analiza la función cuadrática f(x) = -x² + 4x - 3. Las funciones cuadráticas tienen rangos que dependen de la dirección de su parábola (hacia arriba o hacia abajo) y del vértice de la misma.', null, null, null, '¿Cuál es el rango de la función f(x) = -x² + 4x - 3?', 'y ≤ 1', 'y ≥ -3', 'Todos los números reales', 'y ≥ 1', 'A', 5, 11, 'Dominio y rango de una función real de variable real'),
('MATEMÁTICA', null, 'Dominio de función racional', 'La función r(x) = 1/(x - 3) tiene una restricción importante en su dominio debido al denominador que no puede ser cero, ya que la división por cero no está definida en matemáticas.', null, null, null, '¿Cuál es el dominio de r(x) = 1/(x - 3)?', 'x > 3', 'x < 3', 'Todos los números reales excepto x = 3', 'Solo x = 3', 'C', 5, 11, 'Dominio y rango de una función real de variable real');

-- Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Raíces de función cuadrática', 'Para la función f(x) = x² - 5x + 6, las raíces (o ceros) son los valores de x donde la función intersecta al eje x, es decir, donde f(x) = 0. Estas raíces pueden encontrarse factorizando la ecuación o usando la fórmula general.', null, null, null, '¿Cuáles son las raíces de la función f(x) = x² - 5x + 6?', 'x = 1 y x = 6', 'x = 2 y x = 3', 'x = -2 y x = -3', 'x = 5 y x = 6', 'B', 5, 11, 'Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas'),
('MATEMÁTICA', null, 'Vértice de parábola', 'El vértice de una parábola representa el punto máximo o mínimo de la función cuadrática. Para la función g(x) = 2x² - 8x + 5, el vértice puede encontrarse usando la fórmula x = -b/(2a).', null, null, null, '¿Cuál es el vértice de la función g(x) = 2x² - 8x + 5?', '(2, -3)', '(4, 5)', '(-2, 29)', '(1, -1)', 'A', 5, 11, 'Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas'),
('MATEMÁTICA', null, 'Intersección con eje Y', 'Toda función polinómica intersecta al eje Y cuando x = 0. Este punto de intersección es importante para graficar la función y entender su comportamiento.', null, null, null, '¿Cuál es la intersección con el eje Y de la función h(x) = 3x³ - 2x² + x - 4?', '(0, -4)', '(0, 3)', '(0, 0)', '(0, 1)', 'A', 5, 11, 'Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas'),
('MATEMÁTICA', null, 'Simetría de funciones', 'Las funciones pueden ser simétricas respecto al eje Y (funciones pares) o respecto al origen (funciones impares). Esta propiedad ayuda a simplificar el análisis y graficación de funciones.', null, null, null, '¿Qué tipo de simetría presenta la función f(x) = x³ - x?', 'Simetría respecto al eje Y', 'Simetría respecto al origen', 'Simetría respecto a la recta y = x', 'No tiene simetría', 'B', 5, 11, 'Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas'),
('MATEMÁTICA', null, 'Asíntotas verticales', 'Las asíntotas verticales ocurren en funciones racionales donde el denominador se hace cero y el numerador no. Estas representan valores de x a los que la función se acerca infinitamente pero nunca toca.', null, null, null, '¿Dónde tiene asíntotas verticales la función r(x) = (x² - 9)/(x² - 4x + 3)?', 'x = 3 y x = 1', 'x = -3 y x = 3', 'x = 2 y x = -2', 'x = 0', 'A', 5, 11, 'Análisis de funciones: máximos, mínimos, intersecciones, simetría, vértice, raíces, asíntotas');

-- Composición de funciones
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Composición básica', 'Dadas las funciones f(x) = 2x + 1 y g(x) = x² - 3, la composición (f ∘ g)(x) significa aplicar primero g(x) y luego aplicar f al resultado de g(x).', null, null, null, '¿Cuál es el resultado de (f ∘ g)(x) si f(x) = 2x + 1 y g(x) = x² - 3?', '2x² - 5', '4x² + 4x - 2', 'x² + 2x - 2', '(2x + 1)(x² - 3)', 'A', 5, 11, 'Composición de funciones'),
('MATEMÁTICA', null, 'Evaluación de composición', 'Para evaluar una composición de funciones en un punto específico, primero se evalúa la función interior y luego se usa ese resultado en la función exterior.', null, null, null, 'Si f(x) = √x y g(x) = x + 4, ¿cuál es el valor de (f ∘ g)(5)?', '3', '√5 + 4', '√5 + √4', '9', 'A', 5, 11, 'Composición de funciones'),
('MATEMÁTICA', null, 'Doble composición', 'La composición de funciones puede realizarse en cualquier orden, pero generalmente (f ∘ g)(x) es diferente de (g ∘ f)(x). Esto muestra que la composición no es conmutativa.', null, null, null, 'Dadas f(x) = x - 2 y g(x) = 3x, ¿cuál es (g ∘ f)(4)?', '6', '10', '2', '12', 'A', 5, 11, 'Composición de funciones'),
('MATEMÁTICA', null, 'Composición con función lineal', 'Al componer funciones lineales, el resultado es otra función lineal. Esta propiedad es útil en transformaciones geométricas y modelado matemático.', null, null, null, 'Si f(x) = 2x - 1 y g(x) = -x + 3, ¿cuál es (f ∘ g)(x)?', '-2x + 5', '2x + 2', '-2x - 3', 'x + 2', 'A', 5, 11, 'Composición de funciones'),
('MATEMÁTICA', null, 'Identificación de composición', 'Reconocer la composición de funciones es esencial para el cálculo de derivadas y la solución de ecuaciones funcionales complejas.', null, null, null, '¿Cuál de las siguientes opciones representa una composición de funciones?', 'f(x) + g(x)', 'f(x) · g(x)', 'f(g(x))', 'f(x)/g(x)', 'C', 5, 11, 'Composición de funciones');

-- Partes positivas y negativas de una función. Diagrama de signos
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Intervalos positivos', 'Determinar los intervalos donde una función es positiva o negativa es fundamental para entender su comportamiento. Esto se relaciona con las raíces de la función y su gráfico.', null, null, null, '¿En qué intervalos es positiva la función f(x) = (x - 2)(x + 3)?', 'x < -3 y x > 2', '-3 < x < 2', 'x > 0', 'Solo x > 2', 'A', 5, 11, 'Partes positivas y negativas de una función. Diagrama de signos'),
('MATEMÁTICA', null, 'Diagrama de signos', 'El diagrama de signos es una herramienta visual para determinar cuándo una función es positiva o negativa, usando sus raíces y la multiplicidad de estas.', null, null, null, 'Para la función g(x) = -x² + 4, ¿en qué intervalo es negativa?', 'x < -2 y x > 2', '-2 < x < 2', 'x < 0', 'Solo x > 2', 'A', 5, 11, 'Partes positivas y negativas de una función. Diagrama de signos'),
('MATEMÁTICA', null, 'Cambios de signo', 'Las funciones polinómicas cambian de signo en sus raíces de multiplicidad impar, pero no en las de multiplicidad par. Este conocimiento es útil para graficar funciones.', null, null, null, '¿En cuántos puntos cambia de signo la función h(x) = (x - 1)³(x + 2)²?', '1', '2', '3', 'No cambia de signo', 'A', 5, 11, 'Partes positivas y negativas de una función. Diagrama de signos'),
('MATEMÁTICA', null, 'Función racional positiva', 'Para funciones racionales, además de considerar las raíces del numerador, debemos excluir las raíces del denominador (asíntotas verticales) en el análisis de signos.', null, null, null, '¿En qué intervalo es positiva la función r(x) = (x + 1)/(x - 2)?', 'x < -1 y x > 2', '-1 < x < 2', 'x > 0', 'Solo x > 2', 'A', 5, 11, 'Partes positivas y negativas de una función. Diagrama de signos'),
('MATEMÁTICA', null, 'Análisis completo de signos', 'Un análisis completo del signo de una función considera todos los factores que pueden afectar su comportamiento, incluyendo coeficientes principales y multiplicidad de raíces.', null, null, null, 'Para la función f(x) = -2(x - 3)(x + 1)², ¿en qué intervalo es negativa?', 'x < -1 y x > 3', '-1 < x < 3', 'x < 3', 'Todos los reales excepto x = -1 y x = 3', 'A', 5, 11, 'Partes positivas y negativas de una función. Diagrama de signos');

-- Funciones racionales: Gráfico, asíntotas horizontales y verticales
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Asíntota vertical', 'Las asíntotas verticales ocurren donde el denominador de una función racional es cero (siempre que el numerador no sea cero en ese mismo punto).', null, null, null, '¿Dónde tiene asíntota vertical la función f(x) = (x + 2)/(x² - 9)?', 'x = -3 y x = 3', 'x = -2', 'x = 0', 'x = 9', 'A', 5, 11, 'Funciones racionales: Gráfico, asíntotas horizontales y verticales'),
('MATEMÁTICA', null, 'Asíntota horizontal', 'Las asíntotas horizontales describen el comportamiento de la función cuando x tiende a infinito o menos infinito. Dependen de los grados del numerador y denominador.', null, null, null, '¿Cuál es la asíntota horizontal de g(x) = (3x² - 2x + 1)/(x² + 5)?', 'y = 3', 'y = 0', 'y = 1', 'No tiene asíntota horizontal', 'A', 5, 11, 'Funciones racionales: Gráfico, asíntotas horizontales y verticales'),
('MATEMÁTICA', null, 'Agujero en el gráfico', 'Un agujero en el gráfico de una función racional ocurre cuando un factor se cancela en el numerador y denominador, indicando una discontinuidad removible.', null, null, null, '¿En qué valor de x hay un agujero en el gráfico de h(x) = (x² - 4)/(x - 2)?', 'x = 2', 'x = -2', 'x = 0', 'x = 4', 'A', 5, 11, 'Funciones racionales: Gráfico, asíntotas horizontales y verticales'),
('MATEMÁTICA', null, 'Comportamiento en asíntotas', 'Al acercarse a una asíntota vertical, los valores de la función tienden a infinito o menos infinito, dependiendo de la dirección de aproximación y los signos de los términos.', null, null, null, '¿Qué ocurre con f(x) = 1/(x - 1) cuando x se acerca a 1 por la derecha?', 'f(x) → +∞', 'f(x) → -∞', 'f(x) → 0', 'f(x) → 1', 'A', 5, 11, 'Funciones racionales: Gráfico, asíntotas horizontales y verticales'),
('MATEMÁTICA', null, 'Comparación de asíntotas', 'Las funciones racionales pueden tener diferentes tipos de asíntotas según la relación entre los grados del numerador y denominador.', null, null, null, '¿Qué tipo de asíntota tiene r(x) = (2x³ - 1)/(x² + 3x)?', 'Asíntota oblicua', 'Asíntota horizontal y = 0', 'Asíntota horizontal y = 2', 'No tiene asíntotas', 'A', 5, 11, 'Funciones racionales: Gráfico, asíntotas horizontales y verticales');

-- Función inyectiva. Función identidad
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Identificación de función inyectiva', 'Una función es inyectiva (uno a uno) si cada elemento del rango corresponde a exactamente un elemento del dominio. Esto significa que no hay dos valores diferentes de x que produzcan el mismo f(x).', null, null, null, '¿Cuál de las siguientes funciones es inyectiva?', 'f(x) = x³', 'f(x) = x²', 'f(x) = |x|', 'f(x) = sen(x)', 'A', 5, 11, 'Función inyectiva. Función identidad'),
('MATEMÁTICA', null, 'Prueba de la recta horizontal', 'La prueba de la recta horizontal es un método gráfico para determinar si una función es inyectiva: si cualquier recta horizontal corta al gráfico más de una vez, la función no es inyectiva.', null, null, null, 'Según la prueba de la recta horizontal, ¿cuál función NO es inyectiva en su dominio natural?', 'f(x) = 2x + 3', 'f(x) = e^x', 'f(x) = x⁴ - 2x²', 'f(x) = ln(x)', 'C', 5, 11, 'Función inyectiva. Función identidad'),
('MATEMÁTICA', null, 'Función identidad', 'La función identidad I(x) = x es el elemento neutro para la composición de funciones y es a la vez inyectiva y sobreyectiva.', null, null, null, '¿Cuál es el resultado de componer cualquier función f con la función identidad?', 'La misma función f', 'La función nula', 'La función constante', 'Una función diferente', 'A', 5, 11, 'Función inyectiva. Función identidad'),
('MATEMÁTICA', null, 'Restricción para inyectividad', 'A veces una función no es inyectiva en todo su dominio, pero puede serlo en un subconjunto restringido del dominio.', null, null, null, '¿En qué intervalo la función f(x) = x² es inyectiva?', 'x ≥ 0', 'Todos los reales', '-1 ≤ x ≤ 1', 'x ≤ 0', 'A', 5, 11, 'Función inyectiva. Función identidad'),
('MATEMÁTICA', null, 'Composición de inyectivas', 'La composición de funciones inyectivas resulta en otra función inyectiva, lo que es una propiedad importante en álgebra y análisis matemático.', null, null, null, 'Si f y g son funciones inyectivas, ¿qué podemos decir sobre (f ∘ g)?', 'También es inyectiva', 'No es inyectiva', 'Es la función identidad', 'No se puede determinar', 'A', 5, 11, 'Función inyectiva. Función identidad');

-- Función inversa f^−1
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Cálculo de función inversa', 'La función inversa f⁻¹ de una función biyectiva f cumple que f⁻¹(f(x)) = x para todo x en el dominio de f. Para encontrar la inversa, se intercambian x e y y se despeja y.', null, null, null, '¿Cuál es la inversa de la función f(x) = 3x - 2?', 'f⁻¹(x) = (x + 2)/3', 'f⁻¹(x) = 3/(x + 2)', 'f⁻¹(x) = -3x + 2', 'f⁻¹(x) = (x - 2)/3', 'A', 5, 11, 'Función inversa f^−1'),
('MATEMÁTICA', null, 'Dominio de la inversa', 'El dominio de la función inversa f⁻¹ es igual al rango de la función original f, y viceversa. Esta relación es fundamental para trabajar con funciones inversas.', null, null, null, 'Si f tiene dominio [0, ∞) y rango [-1, ∞), ¿cuál es el dominio de f⁻¹?', '[-1, ∞)', '[0, ∞)', '(-∞, ∞)', '[-1, 0]', 'A', 5, 11, 'Función inversa f^−1'),
('MATEMÁTICA', null, 'Existencia de inversa', 'No todas las funciones tienen inversa. Solo las funciones biyectivas (inyectivas y sobreyectivas) tienen inversa definida en todo su rango.', null, null, null, '¿Por qué la función f(x) = x² no tiene inversa en todos los reales?', 'Porque no es inyectiva', 'Porque no es sobreyectiva', 'Porque no es continua', 'Porque no es derivable', 'A', 5, 11, 'Función inversa f^−1'),
('MATEMÁTICA', null, 'Evaluación de la inversa', 'Evaluar la función inversa en un punto específico equivale a encontrar el valor original que produjo ese resultado en la función directa.', null, null, null, 'Si f(5) = 12 y f es invertible, ¿qué valor tiene f⁻¹(12)?', '5', '12', '1/12', '1/5', 'A', 5, 11, 'Función inversa f^−1'),
('MATEMÁTICA', null, 'Propiedad de inversas', 'Las funciones inversas tienen propiedades especiales respecto a la composición, siendo cada una la inversa de la otra bajo composición.', null, null, null, '¿Qué relación existe entre (f ∘ f⁻¹)(x) y (f⁻¹ ∘ f)(x)?', 'Ambas son iguales a x', 'Son funciones diferentes', 'Una es x y la otra es 1/x', 'Depende de la función f', 'A', 5, 11, 'Función inversa f^−1');

-- Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', null, 'Simetría de gráficos inversos', 'Los gráficos de una función f y su inversa f⁻¹ son simétricos respecto a la recta y = x. Esta propiedad permite visualizar la relación entre una función y su inversa.', null, null, null, 'Si el punto (2, 5) está en el gráfico de f, ¿qué punto estará en el gráfico de f⁻¹?', '(5, 2)', '(2, 5)', '(-2, -5)', '(1/2, 1/5)', 'A', 5, 11, 'Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)'),
('MATEMÁTICA', null, 'Reflexión sobre y=x', 'Obtener el gráfico de la inversa reflejando sobre y = x es un método geométrico para visualizar la relación entre función e inversa.', null, null, null, '¿Qué transformación geométrica convierte el gráfico de f en el de f⁻¹?', 'Reflexión sobre y = x', 'Rotación de 90°', 'Traslación horizontal', 'Dilatación vertical', 'A', 5, 11, 'Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)'),
('MATEMÁTICA', null, 'Identificación de pares inversos', 'Reconocer pares de funciones inversas a partir de sus gráficos es una habilidad importante en el análisis matemático.', null, null, null, 'Dados dos gráficos simétricos respecto a y = x, ¿qué podemos afirmar?', 'Son funciones inversas', 'Son la misma función', 'Una es traslación de la otra', 'No tienen relación', 'A', 5, 11, 'Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)'),
('MATEMÁTICA', null, 'Gráfico de función lineal inversa', 'Para funciones lineales, la inversa es otra función lineal y sus gráficos mantienen la simetría respecto a y = x.', null, null, null, 'Si f es una recta con pendiente 2 que pasa por (0, -1), ¿cuál es la pendiente de f⁻¹?', '1/2', '2', '-2', '-1/2', 'A', 5, 11, 'Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)'),
('MATEMÁTICA', null, 'Inversa de función exponencial', 'Las funciones exponenciales y logarítmicas son inversas entre sí, lo que se refleja en la simetría de sus gráficos.', null, null, null, '¿Cuál es la relación entre los gráficos de f(x) = e^x y g(x) = ln(x)?', 'Simétricos respecto a y = x', 'Simétricos respecto al eje x', 'Simétricos respecto al eje y', 'Uno es traslación vertical del otro', 'A', 5, 11, 'Gráfico de y=f^−1(x) como simétrico respecto de la recta y=x del gráfico de y=f(x)');

-- Preguntas para el tema: Graficar funciones de todo tipo
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Identificación de función cuadrática', 
'Una función cuadrática tiene la forma general f(x) = ax² + bx + c, donde a, b y c son constantes y a ≠ 0. Su gráfica es una parábola que puede abrir hacia arriba o hacia abajo dependiendo del signo de a.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes opciones representa correctamente una función cuadrática?', 
'f(x) = 3x + 2', 'f(x) = 2x³ - x² + 5', 'f(x) = 4x² - 3x + 1', 'f(x) = 5/x + 2', 
'C', 5, 11, 'Graficar funciones de todo tipo'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Características de funciones exponenciales', 
'Las funciones exponenciales tienen la forma f(x) = aˣ, donde a es una constante positiva diferente de 1. Estas funciones crecen (o decrecen) muy rápidamente y tienen aplicaciones en diversos campos como la biología, economía y física.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes afirmaciones sobre funciones exponenciales es correcta?', 
'Siempre pasan por el punto (0,0)', 'Su dominio son todos los números reales', 'Si a > 1, la función es decreciente', 'Si 0 < a < 1, la función es decreciente', 
'D', 5, 11, 'Graficar funciones de todo tipo'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Reconocimiento de funciones logarítmicas', 
'Las funciones logarítmicas son las inversas de las funciones exponenciales y tienen la forma f(x) = logₐ(x), donde a es la base del logaritmo. Estas funciones solo están definidas para valores positivos de x.', 
NULL, NULL, NULL, 
'¿Cuál es el dominio de la función f(x) = ln(x - 3)?', 
'Todos los números reales', 'x > 0', 'x ≥ 3', 'x > 3', 
'D', 5, 11, 'Graficar funciones de todo tipo'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Análisis de funciones racionales', 
'Las funciones racionales son cocientes de polinomios, es decir, tienen la forma f(x) = P(x)/Q(x), donde P(x) y Q(x) son polinomios y Q(x) ≠ 0. Estas funciones pueden presentar asíntotas verticales en los valores que anulan el denominador.', 
NULL, NULL, NULL, 
'Para la función f(x) = (x² - 4)/(x - 2), ¿qué ocurre cuando x se aproxima a 2?', 
'La función tiende a infinito', 'La función tiende a 4', 'La función tiende a 0', 'La función no está definida en x=2 pero tiene límite finito', 
'B', 5, 11, 'Graficar funciones de todo tipo'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Identificación de funciones periódicas', 
'Las funciones periódicas son aquellas que repiten sus valores en intervalos regulares. Las funciones trigonométricas como seno y coseno son ejemplos clásicos de funciones periódicas, con aplicaciones en física e ingeniería.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes funciones tiene un período de π?', 
'f(x) = sen(x)', 'f(x) = sen(2x)', 'f(x) = cos(x/2)', 'f(x) = tan(x)', 
'B', 5, 11, 'Graficar funciones de todo tipo'),

-- Preguntas para el tema: Transformación de funciones. Familia de funciones
('MATEMÁTICA', NULL, 'Identificación de transformaciones básicas', 
'Las transformaciones de funciones permiten modificar su gráfica mediante operaciones como desplazamientos, estiramientos o reflexiones. Comprender estas transformaciones es fundamental para analizar el comportamiento de diversas funciones.', 
NULL, NULL, NULL, 
'Si tenemos la función f(x) = x² y la transformamos en g(x) = (x+3)² - 2, ¿qué transformaciones se aplicaron?', 
'Desplazamiento 3 unidades a la izquierda y 2 hacia abajo', 'Desplazamiento 3 unidades a la derecha y 2 hacia arriba', 'Estiramiento vertical por factor 3 y desplazamiento 2 unidades hacia abajo', 'Reflexión sobre el eje x y desplazamiento horizontal', 
'A', 5, 11, 'Transformación de funciones. Familia de funciones'),

('MATEMÁTICA', NULL, 'Comparación de funciones transformadas', 
'Al aplicar transformaciones a una función básica, podemos generar toda una familia de funciones relacionadas. Estas transformaciones siguen reglas específicas que modifican la posición y forma de la gráfica original.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes transformaciones convierte f(x) en una función simétrica respecto al eje y?', 
'f(-x)', '-f(x)', 'f(x) + 3', 'f(2x)', 
'A', 5, 11, 'Transformación de funciones. Familia de funciones'),

('MATEMÁTICA', NULL, 'Aplicación de múltiples transformaciones', 
'Cuando se aplican varias transformaciones a una función, el orden en que se realizan puede afectar el resultado final. Es importante comprender cómo interactúan estas transformaciones entre sí.', 
NULL, NULL, NULL, 
'Si aplicamos primero un desplazamiento horizontal de 2 unidades a la derecha y luego un estiramiento vertical de factor 3 a f(x), ¿cuál es la función resultante?', 
'3f(x) + 2', '3f(x - 2)', 'f(3x) - 2', 'f(x/3) + 2', 
'B', 5, 11, 'Transformación de funciones. Familia de funciones'),

('MATEMÁTICA', NULL, 'Identificación de funciones transformadas', 
'Reconocer las transformaciones aplicadas a una función permite reconstruir su gráfica a partir de la función original. Esta habilidad es esencial para el análisis rápido de funciones complejas.', 
NULL, NULL, NULL, 
'Si la gráfica de f(x) se ha desplazado 4 unidades hacia arriba y reflejado sobre el eje x, ¿cuál es la expresión de la función transformada?', 
'-f(x) + 4', 'f(-x) + 4', '-f(x + 4)', 'f(x - 4)', 
'A', 5, 11, 'Transformación de funciones. Familia de funciones'),

('MATEMÁTICA', NULL, 'Efecto de transformaciones en puntos específicos', 
'Las transformaciones afectan de manera predecible puntos clave de una función, como vértices, intersecciones o puntos máximos y mínimos. Analizar estos cambios ayuda a graficar funciones transformadas.', 
NULL, NULL, NULL, 
'Si el punto (2,5) pertenece a f(x), ¿a qué punto corresponderá en la función g(x) = -f(x - 1) + 3?', 
'(1, -2)', '(3, -2)', '(1, 8)', '(3, 8)', 
'B', 5, 11, 'Transformación de funciones. Familia de funciones'),

-- Preguntas para el tema: Traslaciones: y = f (x) + b; y = f (x – a)
('MATEMÁTICA', NULL, 'Traslación vertical básica', 
'La traslación vertical de una función se representa mediante y = f(x) + b, donde b es el número de unidades que la gráfica se desplaza hacia arriba (si b > 0) o hacia abajo (si b < 0).', 
NULL, NULL, NULL, 
'Si tenemos la función f(x) = x³ y la transformamos en g(x) = x³ - 4, ¿cómo se ha desplazado la gráfica?', 
'4 unidades hacia arriba', '4 unidades hacia abajo', '4 unidades a la izquierda', '4 unidades a la derecha', 
'B', 5, 11, 'Traslaciones: y = f (x) + b; y = f (x – a)'),

('MATEMÁTICA', NULL, 'Traslación horizontal básica', 
'La traslación horizontal de una función se representa mediante y = f(x - a), donde a es el número de unidades que la gráfica se desplaza a la derecha (si a > 0) o a la izquierda (si a < 0).', 
NULL, NULL, NULL, 
'¿Cuál es la ecuación de la función f(x) = √x trasladada 5 unidades a la izquierda?', 
'√(x) + 5', '√(x + 5)', '√(x) - 5', '√(x - 5)', 
'B', 5, 11, 'Traslaciones: y = f (x) + b; y = f (x – a)'),

('MATEMÁTICA', NULL, 'Combinación de traslaciones', 
'Es posible combinar traslaciones verticales y horizontales en una misma función, obteniendo expresiones como y = f(x - a) + b. El orden de aplicación de estas transformaciones es importante para obtener el resultado correcto.', 
NULL, NULL, NULL, 
'Si aplicamos a f(x) = |x| una traslación de 3 unidades a la derecha y 2 unidades hacia abajo, ¿cuál es la función resultante?', 
'|x - 3| - 2', '|x + 3| - 2', '|x - 2| + 3', '|x + 2| - 3', 
'A', 5, 11, 'Traslaciones: y = f (x) + b; y = f (x – a)'),

('MATEMÁTICA', NULL, 'Identificación de traslaciones', 
'Reconocer las traslaciones aplicadas a una función permite reconstruir su gráfica a partir de la función original sin necesidad de tabular valores.', 
NULL, NULL, NULL, 
'La función g(x) = (x + 4)² + 1 se obtuvo trasladando f(x) = x². ¿Qué traslaciones se aplicaron?', 
'4 unidades a la izquierda y 1 unidad arriba', '4 unidades a la derecha y 1 unidad arriba', '4 unidades a la izquierda y 1 unidad abajo', '4 unidades a la derecha y 1 unidad abajo', 
'A', 5, 11, 'Traslaciones: y = f (x) + b; y = f (x – a)'),

('MATEMÁTICA', NULL, 'Aplicación práctica de traslaciones', 
'Las traslaciones de funciones tienen aplicaciones prácticas en diversos campos, como la física para describir movimientos o en economía para ajustar modelos.', 
NULL, NULL, NULL, 
'Si la función f(t) representa la temperatura a lo largo del día en una ciudad, y g(t) = f(t - 2) representa la temperatura en otra ciudad cercana, ¿qué podemos afirmar?', 
'La segunda ciudad tiene la misma temperatura pero 2 horas antes', 'La segunda ciudad tiene la misma temperatura pero 2 horas después', 'La segunda ciudad tiene 2 grados más de temperatura', 'La segunda ciudad tiene 2 grados menos de temperatura', 
'B', 5, 11, 'Traslaciones: y = f (x) + b; y = f (x – a)'),

-- Preguntas para el tema: Estiramiento vertical de razón p: y = p.f(x)
('MATEMÁTICA', NULL, 'Concepto de estiramiento vertical', 
'El estiramiento vertical de una función se representa mediante y = p·f(x), donde p es el factor de escala. Si p > 1, la gráfica se estira verticalmente; si 0 < p < 1, se comprime.', 
NULL, NULL, NULL, 
'Si aplicamos un estiramiento vertical de factor 3 a la función f(x) = x², ¿cuál es la función resultante?', 
'f(x) = (3x)²', 'f(x) = 3x²', 'f(x) = (x/3)²', 'f(x) = x² + 3', 
'B', 5, 11, 'Estiramiento vertical de razón p: y = p.f(x)'),

('MATEMÁTICA', NULL, 'Compresión vertical', 
'Una compresión vertical es un caso particular de estiramiento donde el factor p está entre 0 y 1, lo que hace que la gráfica se "aplane" verticalmente.', 
NULL, NULL, NULL, 
'¿Qué transformación se aplicó a f(x) = sen(x) para obtener g(x) = 0.5 sen(x)?', 
'Compresión vertical de factor 0.5', 'Estiramiento vertical de factor 2', 'Compresión horizontal de factor 2', 'Desplazamiento vertical de 0.5 unidades', 
'A', 5, 11, 'Estiramiento vertical de razón p: y = p.f(x)'),

('MATEMÁTICA', NULL, 'Combinación con traslaciones', 
'Los estiramientos verticales pueden combinarse con otras transformaciones como traslaciones, lo que permite mayor flexibilidad en el modelado de funciones.', 
NULL, NULL, NULL, 
'Si a f(x) = √x le aplicamos un estiramiento vertical de factor 2 y luego un desplazamiento vertical de 3 unidades hacia arriba, ¿cuál es la función resultante?', 
'2√x + 3', '2(√x + 3)', '√(2x) + 3', '√(x + 3) + 2', 
'A', 5, 11, 'Estiramiento vertical de razón p: y = p.f(x)'),

('MATEMÁTICA', NULL, 'Efecto en puntos específicos', 
'El estiramiento vertical afecta las coordenadas y de los puntos de la función, mientras que las coordenadas x permanecen iguales.', 
NULL, NULL, NULL, 
'Si el punto (4,6) pertenece a f(x), ¿a qué punto corresponderá en g(x) = 1.5 f(x)?', 
'(4,9)', '(6,6)', '(4,4)', '(6,9)', 
'A', 5, 11, 'Estiramiento vertical de razón p: y = p.f(x)'),

('MATEMÁTICA', NULL, 'Identificación del factor de estiramiento', 
'Reconocer el factor de estiramiento vertical a partir de la ecuación de una función transformada es una habilidad importante en el análisis gráfico.', 
NULL, NULL, NULL, 
'Dada la función g(x) = 4 cos(x), ¿cuál es el factor de estiramiento vertical aplicado a la función coseno básica?', 
'1/4', '2', '4', '16', 
'C', 5, 11, 'Estiramiento vertical de razón p: y = p.f(x)'),

-- Preguntas para el tema: Estiramiento horizontal de razón 1/q: y= f(q.x)
('MATEMÁTICA', NULL, 'Concepto de estiramiento horizontal', 
'El estiramiento horizontal de una función se representa mediante y = f(q·x), donde 1/q es el factor de escala. Si q > 1, la gráfica se comprime horizontalmente; si 0 < q < 1, se estira.', 
NULL, NULL, NULL, 
'Si aplicamos un estiramiento horizontal de factor 1/2 a f(x) = x³ (es decir, q=2), ¿cuál es la función resultante?', 
'f(x) = (2x)³', 'f(x) = (x/2)³', 'f(x) = 2x³', 'f(x) = (1/2)x³', 
'A', 5, 11, 'Estiramiento horizontal de razón 1/q: y= f(q.x)'),

('MATEMÁTICA', NULL, 'Compresión horizontal', 
'Una compresión horizontal ocurre cuando q > 1 en y = f(q·x), lo que hace que la gráfica se "estreche" horizontalmente.', 
NULL, NULL, NULL, 
'¿Qué transformación se aplicó a f(x) = e^x para obtener g(x) = e^(3x)?', 
'Estiramiento horizontal de factor 3', 'Compresión horizontal de factor 3', 'Estiramiento vertical de factor 3', 'Compresión vertical de factor 3', 
'B', 5, 11, 'Estiramiento horizontal de razón 1/q: y= f(q.x)'),

('MATEMÁTICA', NULL, 'Comparación con estiramiento vertical', 
'Es importante distinguir entre estiramientos verticales y horizontales, ya que afectan la gráfica de maneras diferentes.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes transformaciones cambia el período de una función periódica como seno o coseno?', 
'Estiramiento vertical', 'Estiramiento horizontal', 'Traslación vertical', 'Traslación horizontal', 
'B', 5, 11, 'Estiramiento horizontal de razón 1/q: y= f(q.x)'),

('MATEMÁTICA', NULL, 'Efecto en puntos específicos', 
'El estiramiento horizontal afecta las coordenadas x de los puntos de la función, mientras que las coordenadas y permanecen iguales.', 
NULL, NULL, NULL, 
'Si el punto (6,8) pertenece a f(x), ¿a qué punto corresponderá en g(x) = f(0.5x)?', 
'(3,8)', '(12,8)', '(6,4)', '(6,16)', 
'B', 5, 11, 'Estiramiento horizontal de razón 1/q: y= f(q.x)'),

('MATEMÁTICA', NULL, 'Identificación del factor de estiramiento', 
'Determinar el factor de estiramiento horizontal a partir de la ecuación transformada requiere comprender cómo afecta q a la variable independiente.', 
NULL, NULL, NULL, 
'Dada la función g(x) = sen(4x), ¿cuál es el factor de compresión horizontal aplicado a la función seno básica?', 
'1/4', '4', '2', '1/2', 
'B', 5, 11, 'Estiramiento horizontal de razón 1/q: y= f(q.x)'),

-- Preguntas para el tema: Transformaciones compuestas: y = a*f(x + b) + c
('MATEMÁTICA', NULL, 'Orden de transformaciones compuestas', 
'Cuando se aplican múltiples transformaciones a una función, el orden en que se realizan afecta el resultado final. El orden recomendado es: horizontales (dentro del paréntesis), estiramientos/reflexiones (multiplicación), y finalmente verticales (suma/resta).', 
NULL, NULL, NULL, 
'Para transformar f(x) en 2f(3x - 6) + 4, ¿cuál es el orden correcto de aplicacion de transformaciones?', 
'Desplazamiento, estiramiento, desplazamiento', 'Estiramiento, desplazamiento, desplazamiento', 'Desplazamiento, desplazamiento, estiramiento', 'Estiramiento, estiramiento, desplazamiento', 
'A', 5, 11, 'Transformaciones compuestas: y = a*f(x + b) + c'),

('MATEMÁTICA', NULL, 'Análisis de transformación compuesta', 
'Las transformaciones compuestas combinan desplazamientos, estiramientos y reflexiones en una sola operación, lo que permite manipular complejamente la gráfica de una función.', 
NULL, NULL, NULL, 
'Dada g(x) = -3f(x + 2) - 1, ¿qué transformaciones se aplicaron a f(x)?', 
'Reflexión vertical, estiramiento vertical x3, desplazamiento 2 izquierda, desplazamiento 1 abajo', 'Reflexión horizontal, compresión vertical x3, desplazamiento 2 derecha, desplazamiento 1 abajo', 'Reflexión vertical, estiramiento horizontal x3, desplazamiento 2 derecha, desplazamiento 1 arriba', 'Reflexión horizontal, compresión horizontal x3, desplazamiento 2 izquierda, desplazamiento 1 arriba', 
'A', 5, 11, 'Transformaciones compuestas: y = a*f(x + b) + c'),

('MATEMÁTICA', NULL, 'Construcción de transformación compuesta', 
'Para construir una función con transformaciones compuestas específicas, es necesario aplicar cada transformación en el orden correcto y con los parámetros adecuados.', 
NULL, NULL, NULL, 
'¿Cuál es la expresión de f(x) = √x después de: reflexión vertical, estiramiento vertical x2, desplazamiento 3 derecha y 1 arriba?', 
'-2√(x - 3) + 1', '2√(-x + 3) + 1', '-√(2x - 3) + 1', '2√(x + 3) - 1', 
'A', 5, 11, 'Transformaciones compuestas: y = a*f(x + b) + c'),

('MATEMÁTICA', NULL, 'Identificación de parámetros', 
'Cada parámetro en una transformación compuesta tiene un efecto específico y reconocible en la gráfica de la función.', 
NULL, NULL, NULL, 
'En la función g(x) = 0.5f(-x + 4) - 2, ¿cuántas unidades y en qué dirección se ha desplazado horizontalmente la gráfica de f(x)?', 
'4 unidades a la derecha', '4 unidades a la izquierda', '2 unidades a la derecha', '2 unidades a la izquierda', 
'B', 5, 11, 'Transformaciones compuestas: y = a*f(x + b) + c'),

('MATEMÁTICA', NULL, 'Aplicación práctica de transformaciones', 
'Las transformaciones compuestas permiten modelar situaciones reales donde múltiples cambios afectan simultáneamente a una relación funcional.', 
NULL, NULL, NULL, 
'Si f(t) modela la temperatura en un día normal y g(t) = -2f(0.5(t - 6)) + 5 modela la temperatura durante una ola de calor, ¿qué podemos decir?', 
'La temperatura oscila el doble, el día dura el doble, comienza 6 horas antes y está 5° más alta', 'La temperatura oscila la mitad, el día dura la mitad, comienza 6 horas después y está 5° más baja', 'La temperatura se invierte y oscila el doble, el día dura el doble, comienza 6 horas después y está 5° más alta', 'La temperatura se invierte y oscila la mitad, el día dura la mitad, comienza 6 horas antes y está 5° más baja', 
'C', 5, 11, 'Transformaciones compuestas: y = a*f(x + b) + c'),

-- Preguntas para el tema: Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)
('MATEMÁTICA', NULL, 'Reflexión sobre el eje x', 
'La reflexión vertical sobre el eje x se representa mediante y = -f(x), lo que invierte todas las coordenadas y de la gráfica original.', 
NULL, NULL, NULL, 
'Si el punto (2,5) pertenece a f(x), ¿a qué punto corresponderá en g(x) = -f(x)?', 
'(2,-5)', '(-2,5)', '(-2,-5)', '(5,2)', 
'A', 5, 11, 'Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)'),

('MATEMÁTICA', NULL, 'Reflexión sobre el eje y', 
'La reflexión horizontal sobre el eje y se representa mediante y = f(-x), lo que invierte todas las coordenadas x de la gráfica original.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de reflejar f(x) = x³ - 2x sobre el eje y?', 
'-x³ + 2x', 'x³ - 2x', '-x³ - 2x', '-x³ + 2(-x)', 
'B', 5, 11, 'Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)'),

('MATEMÁTICA', NULL, 'Combinación de reflexiones', 
'Es posible combinar reflexiones verticales y horizontales en una misma transformación, obteniendo y = -f(-x).', 
NULL, NULL, NULL, 
'Si aplicamos a f(x) una reflexión sobre el eje x seguida de una reflexión sobre el eje y, ¿cuál es la función resultante?', 
'f(-x)', '-f(x)', '-f(-x)', 'f(x)', 
'C', 5, 11, 'Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)'),

('MATEMÁTICA', NULL, 'Identificación de simetrías', 
'Las reflexiones están relacionadas con las simetrías de las funciones. Una función par cumple f(-x) = f(x) y una función impar cumple f(-x) = -f(x).', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes funciones es impar?', 
'f(x) = x²', 'f(x) = x³', 'f(x) = cos(x)', 'f(x) = |x|', 
'B', 5, 11, 'Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)'),

('MATEMÁTICA', NULL, 'Reflexión de función exponencial', 
'Las reflexiones de funciones exponenciales pueden producir comportamientos interesantes, como convertir una función creciente en decreciente.', 
NULL, NULL, NULL, 
'¿Qué transformación convierte f(x) = e^x en una función decreciente?', 
'f(-x)', '-f(x)', '-f(-x)', 'f(x - 1)', 
'B', 5, 11, 'Reflexiones respecto a los dos ejes: y=−f(x); y=f(−x)');

-- Preguntas para el tema: Área de triángulos. Uso de la fórmula A= (ab*SinC)/2
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Cálculo de área con ángulo conocido', 
'Un triángulo tiene dos lados adyacentes de 8 cm y 10 cm, con un ángulo comprendido entre ellos de 30°. Para calcular su área, debemos aplicar la fórmula A = (ab*sinC)/2, donde a y b son los lados conocidos y C es el ángulo entre ellos.', 
NULL, NULL, NULL, 
'¿Cuál es el área del triángulo descrito?', 
'20 cm²', '25 cm²', '15 cm²', '30 cm²', 
'A', 5, 11, 'Área de triángulos. Uso de la fórmula A= (ab*SinC)/2'),

('MATEMÁTICA', NULL, 'Área de un terreno triangular', 
'Un terreno tiene forma triangular con dos lados de 15 m y 20 m que forman un ángulo de 45° entre sí. El dueño necesita conocer el área exacta para fines de construcción. La fórmula adecuada para este cálculo es A = (ab*sinC)/2.', 
NULL, NULL, NULL, 
'¿Cuál es el área del terreno en metros cuadrados?', 
'106.07 m²', '98.25 m²', '112.50 m²', '150.00 m²', 
'A', 5, 11, 'Área de triángulos. Uso de la fórmula A= (ab*SinC)/2'),

('MATEMÁTICA', NULL, 'Problema de diseño arquitectónico', 
'Un arquitecto está diseñando un vitral triangular para una ventana. Los lados del vitral miden 1.2 m y 1.5 m, formando un ángulo de 60°. Para calcular la cantidad de vidrio necesario, debe determinar el área del triángulo.', 
NULL, NULL, NULL, 
'¿Cuál es el área del vitral triangular?', 
'0.78 m²', '0.90 m²', '0.45 m²', '1.20 m²', 
'A', 5, 11, 'Área de triángulos. Uso de la fórmula A= (ab*SinC)/2'),

('MATEMÁTICA', NULL, 'Triángulo en navegación', 
'Un navegante observa dos faros desde su posición. La distancia al primer faro es de 5 km, al segundo faro es de 7 km, y el ángulo entre las líneas de visión a los faros es de 50°. Para trazar su ruta, necesita calcular el área del triángulo formado por su posición y los dos faros.', 
NULL, NULL, NULL, 
'¿Cuál es el área de este triángulo de navegación?', 
'13.41 km²', '15.25 km²', '11.30 km²', '17.50 km²', 
'A', 5, 11, 'Área de triángulos. Uso de la fórmula A= (ab*SinC)/2'),

('MATEMÁTICA', NULL, 'Construcción de cometas', 
'Para construir una cometa, Juan necesita calcular el área de la tela necesaria para la parte triangular. Dos de los lados miden 80 cm y 100 cm, y el ángulo entre ellos es de 75°. La fórmula del área con seno es ideal para este cálculo.', 
NULL, NULL, NULL, 
'¿Cuál es el área de tela necesaria para la cometa?', 
'3863.70 cm²', '4000.00 cm²', '3500.50 cm²', '4250.25 cm²', 
'A', 5, 11, 'Área de triángulos. Uso de la fórmula A= (ab*SinC)/2'),

-- Preguntas para el tema: Ley de cosenos
('MATEMÁTICA', NULL, 'Distancia entre dos ciudades', 
'Dos ciudades A y B están separadas por 50 km. Una tercera ciudad C está a 70 km de A y forma un ángulo de 60° con respecto a la línea AB. Para determinar la distancia entre B y C, se puede aplicar la ley de cosenos.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia aproximada entre las ciudades B y C?', 
'62.45 km', '65.20 km', '70.00 km', '75.50 km', 
'A', 5, 11, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Medición de un terreno irregular', 
'Un topógrafo necesita medir un terreno triangular donde conoce dos lados (120 m y 150 m) y el ángulo entre ellos (40°). La ley de cosenos permite calcular el tercer lado del terreno.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud del tercer lado del terreno?', 
'96.78 m', '102.45 m', '110.25 m', '115.50 m', 
'A', 5, 11, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Navegación marítima', 
'Dos barcos parten del mismo puerto. El primero navega 30 km en dirección N30°E y el segundo navega 40 km en dirección N60°E. Para determinar la distancia entre los dos barcos al final de sus trayectos, se aplica la ley de cosenos.', 
NULL, NULL, NULL, 
'¿A qué distancia se encuentran los barcos entre sí?', 
'36.06 km', '40.25 km', '45.00 km', '50.75 km', 
'A', 5, 11, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Construcción de puentes', 
'En la construcción de un puente, los ingenieros necesitan calcular la longitud de un soporte diagonal. Los otros dos lados del triángulo miden 25 m y 35 m, formando un ángulo de 45°. La ley de cosenos es esencial para este cálculo.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud del soporte diagonal?', 
'24.82 m', '28.45 m', '30.25 m', '32.50 m', 
'A', 5, 11, 'Ley de cosenos'),

('MATEMÁTICA', NULL, 'Triángulo en astronomía', 
'Un astrónomo observa dos estrellas desde la Tierra. La distancia a la primera estrella es de 8 años luz, a la segunda es de 10 años luz, y el ángulo entre ellas es de 35°. Para determinar la distancia entre las dos estrellas, se usa la ley de cosenos.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia entre las dos estrellas?', 
'5.85 años luz', '6.20 años luz', '7.00 años luz', '8.25 años luz', 
'A', 5, 11, 'Ley de cosenos'),

-- Preguntas para el tema: Ley de senos
('MATEMÁTICA', NULL, 'Resolución de triángulos oblicuángulos', 
'En un triángulo ABC, se conocen los ángulos A = 40° y B = 60°, y el lado opuesto al ángulo A mide 12 cm. Para encontrar la medida del lado opuesto al ángulo B, se puede aplicar la ley de senos.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud del lado b en este triángulo?', 
'16.08 cm', '15.25 cm', '14.00 cm', '18.50 cm', 
'A', 5, 11, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Problema de topografía', 
'Un topógrafo mide un triángulo donde conoce un ángulo de 55°, el lado opuesto a este ángulo mide 200 m y otro ángulo mide 45°. La ley de senos permite calcular el lado opuesto al ángulo de 45°.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud del lado opuesto al ángulo de 45°?', 
'168.45 m', '172.25 m', '175.00 m', '180.50 m', 
'A', 5, 11, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Navegación aérea', 
'Un avión vuela en línea recta durante 100 km, luego gira 30° y continúa volando. Desde el punto de partida, se observa que la nueva dirección forma un ángulo de 45° con la línea al avión. La ley de senos ayuda a determinar la distancia actual del avión al punto de partida.', 
NULL, NULL, NULL, 
'¿A qué distancia se encuentra ahora el avión del punto de partida?', 
'141.42 km', '145.25 km', '150.00 km', '155.75 km', 
'A', 5, 11, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Construcción de techos', 
'Para construir un techo triangular, se conoce que un ángulo mide 50°, el lado opuesto mide 6 m y otro ángulo mide 70°. La ley de senos permite calcular la longitud del lado opuesto al ángulo de 70°.', 
NULL, NULL, NULL, 
'¿Cuál es la longitud de este lado del techo?', 
'7.33 m', '7.50 m', '8.00 m', '8.25 m', 
'A', 5, 11, 'Ley de senos'),

('MATEMÁTICA', NULL, 'Triángulo en física', 
'En un experimento de física, se forma un triángulo con fuerzas donde un ángulo es de 25°, la fuerza opuesta es de 50 N y otro ángulo es de 40°. La ley de senos ayuda a determinar la magnitud de la otra fuerza.', 
NULL, NULL, NULL, 
'¿Cuál es la magnitud de la segunda fuerza?', 
'75.81 N', '78.25 N', '80.00 N', '82.50 N', 
'A', 5, 11, 'Ley de senos'),

-- Preguntas para el tema: Aplicación de las leyes de senos y cosenos: Resolución de triángulos
('MATEMÁTICA', NULL, 'Problema de navegación combinado', 
'Un barco navega 20 km hacia el norte, luego gira y navega 30 km en una dirección N30°E. Para determinar su posición final respecto al punto de partida, se deben combinar las leyes de senos y cosenos.', 
NULL, NULL, NULL, 
'¿A qué distancia se encuentra el barco de su punto de partida?', 
'46.10 km', '48.25 km', '50.00 km', '52.75 km', 
'A', 5, 11, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Topografía de un terreno', 
'Un terreno tiene forma triangular con lados de 150 m y 200 m, y un ángulo de 65° opuesto al lado desconocido. Para resolver completamente el triángulo, se deben aplicar ambas leyes (senos y cosenos).', 
NULL, NULL, NULL, 
'¿Cuál es la medida del tercer lado del terreno?', 
'198.45 m', '200.25 m', '205.00 m', '210.50 m', 
'A', 5, 11, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Diseño de estructuras', 
'Un ingeniero diseña una estructura triangular con un lado de 12 m, otro de 15 m y un ángulo de 40° opuesto al lado de 12 m. Para determinar las medidas restantes de la estructura, debe usar ambas leyes trigonométricas.', 
NULL, NULL, NULL, 
'¿Cuál es la medida del ángulo opuesto al lado de 15 m?', 
'53.46°', '55.25°', '60.00°', '65.75°', 
'A', 5, 11, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Astronomía aplicada', 
'Para calcular la distancia entre dos planetas, un astrónomo conoce la distancia de la Tierra a cada planeta (80 y 100 millones de km) y el ángulo entre ellos visto desde la Tierra (25°). La resolución completa requiere ambas leyes trigonométricas.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia entre los dos planetas?', 
'43.39 millones de km', '45.25 millones de km', '50.00 millones de km', '55.75 millones de km', 
'A', 5, 11, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos'),

('MATEMÁTICA', NULL, 'Problema de física avanzada', 
'En un sistema de fuerzas, se conocen dos fuerzas (80 N y 100 N) y el ángulo entre ellas (30°). Para determinar la magnitud y dirección de la fuerza resultante, se deben aplicar las leyes de senos y cosenos.', 
NULL, NULL, NULL, 
'¿Cuál es la magnitud de la fuerza resultante?', 
'165.30 N', '170.25 N', '175.00 N', '180.50 N', 
'A', 5, 11, 'Aplicación de las leyes de senos y cosenos: Resolución de triángulos');

-- Preguntas para el tema: Sistemas de medición: sexagesimal, radial
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Conversión de grados a radianes', 
 'El sistema sexagesimal divide la circunferencia en 360 grados, mientras que el sistema radial utiliza radianes como unidad de medida. Sabiendo que π radianes equivalen a 180 grados, es fundamental comprender cómo convertir entre estos sistemas para resolver problemas trigonométricos.', 
 NULL, NULL, NULL, 
 '¿A cuántos radianes equivalen 270 grados?', 
 '3π/2 radianes', '2π/3 radianes', '4π/3 radianes', '5π/4 radianes', 'A', 
 5, 11, 'Sistemas de medición: sexagesimal, radial'),

('MATEMÁTICA', NULL, 'Comparación de ángulos', 
 'En trigonometría, es común encontrar ángulos expresados en diferentes sistemas de medición. Un ángulo puede medir 1.5 radianes o 85.94 grados. Para compararlos adecuadamente, necesitamos convertirlos al mismo sistema.', 
 NULL, NULL, NULL, 
 '¿Cuál de los siguientes ángulos es mayor?', 
 'π/2 radianes', '100 grados', '2 radianes', '5π/6 radianes', 'D', 
 5, 11, 'Sistemas de medición: sexagesimal, radial'),

('MATEMÁTICA', NULL, 'Equivalencia en sistemas', 
 'La relación entre grados y radianes es fundamental en trigonometría. Un radián es aproximadamente 57.2958 grados, y esta conversión permite trabajar con funciones trigonométricas en diferentes contextos matemáticos y físicos.', 
 NULL, NULL, NULL, 
 '¿Cuántos grados equivalen a 5π/4 radianes?', 
 '210°', '225°', '240°', '270°', 'B', 
 5, 11, 'Sistemas de medición: sexagesimal, radial'),

('MATEMÁTICA', NULL, 'Suma de ángulos', 
 'Al trabajar con ángulos en diferentes sistemas, es importante poder sumarlos correctamente. Por ejemplo, al combinar un ángulo de 45 grados con uno de π/4 radianes, debemos asegurarnos de que estén en el mismo sistema para realizar la operación.', 
 NULL, NULL, NULL, 
 '¿Cuál es el resultado de sumar 60 grados más π/3 radianes, expresado en grados?', 
 '90°', '100°', '120°', '150°', 'C', 
 5, 11, 'Sistemas de medición: sexagesimal, radial'),

('MATEMÁTICA', NULL, 'Aplicación práctica', 
 'En ingeniería, a menudo se requiere convertir entre sistemas de medición angular. Un satélite gira a una velocidad de π/12 radianes por minuto. Para comunicar esta información a técnicos acostumbrados al sistema sexagesimal, necesitamos realizar conversiones precisas.', 
 NULL, NULL, NULL, 
 '¿A cuántos grados por minuto equivale una velocidad de rotación de π/6 radianes por minuto?', 
 '15° por minuto', '30° por minuto', '45° por minuto', '60° por minuto', 'B', 
 5, 11, 'Sistemas de medición: sexagesimal, radial'),

-- Preguntas para el tema: Longitud de arco
('MATEMÁTICA', NULL, 'Cálculo básico de arco', 
 'La longitud de un arco de circunferencia depende del radio y del ángulo central que subtiende dicho arco. La fórmula L = rθ (donde θ está en radianes) es fundamental para resolver problemas geométricos y de movimiento circular.', 
 NULL, NULL, NULL, 
 'Calcula la longitud de un arco de circunferencia con radio 10 cm y ángulo central de π/5 radianes.', 
 '2π cm', '5π cm', '10π cm', '20π cm', 'A', 
 5, 11, 'Longitud de arco'),

('MATEMÁTICA', NULL, 'Problema con rueda giratoria', 
 'Cuando una rueda gira, un punto en su borde recorre una distancia que corresponde a la longitud de arco. Este principio se aplica en el diseño de engranajes, sistemas de transporte y muchas aplicaciones de ingeniería.', 
 NULL, NULL, NULL, 
 'Una rueda de 35 cm de radio gira un ángulo de 120°. ¿Qué distancia recorre un punto en el borde de la rueda?', 
 '70π/3 cm', '35π cm', '140π/3 cm', '70π cm', 'A', 
 5, 11, 'Longitud de arco'),

('MATEMÁTICA', NULL, 'Comparación de arcos', 
 'Al comparar longitudes de arco en circunferencias de diferente radio, es importante considerar tanto el radio como el ángulo central. Dos circunferencias pueden tener arcos de igual longitud aunque sus radios sean diferentes.', 
 NULL, NULL, NULL, 
 '¿Qué ángulo central produciría un arco de 4π cm en una circunferencia de radio 8 cm?', 
 'π/2 radianes', 'π radianes', '3π/2 radianes', '2π radianes', 'A', 
 5, 11, 'Longitud de arco'),

('MATEMÁTICA', NULL, 'Aplicación en relojes', 
 'Los relojes analógicos son un excelente ejemplo de aplicación de longitud de arco. Las manecillas describen arcos cuya longitud depende de la hora y del tamaño del reloj.', 
 NULL, NULL, NULL, 
 'En un reloj de 15 cm de radio, ¿qué longitud recorre la punta del minutero en 20 minutos?', 
 '5π cm', '10π cm', '15π cm', '20π cm', 'B', 
 5, 11, 'Longitud de arco'),

('MATEMÁTICA', NULL, 'Problema de engranajes', 
 'En sistemas mecánicos, los engranajes transmiten movimiento mediante contacto entre sus dientes. Calcular la longitud de arco es esencial para determinar la velocidad y sincronización de estos sistemas.', 
 NULL, NULL, NULL, 
 'Un engranaje de 12 cm de radio gira 2.5 radianes. ¿Qué longitud de arco describe un punto en el borde del engranaje?', 
 '15 cm', '20 cm', '25 cm', '30 cm', 'D', 
 5, 11, 'Longitud de arco'),

-- Preguntas para el tema: Área del sector circular
('MATEMÁTICA', NULL, 'Cálculo básico de sector', 
 'El área de un sector circular es una fracción del área total del círculo, proporcional al ángulo central que lo define. La fórmula A = (θ/2)r² (con θ en radianes) permite calcular esta área de manera precisa.', 
 NULL, NULL, NULL, 
 'Calcula el área de un sector circular con radio 6 cm y ángulo central de π/3 radianes.', 
 '6π cm²', '9π cm²', '12π cm²', '18π cm²', 'A', 
 5, 11, 'Área del sector circular'),

('MATEMÁTICA', NULL, 'Comparación de áreas', 
 'Al comparar áreas de sectores en diferentes círculos, debemos considerar tanto el radio como el ángulo central. Un sector pequeño en un círculo grande puede tener mayor área que un sector grande en un círculo pequeño.', 
 NULL, NULL, NULL, 
 '¿Qué sector tiene mayor área: uno con radio 10 cm y ángulo 60°, u otro con radio 5 cm y ángulo 2 radianes?', 
 'El primero', 'El segundo', 'Ambos tienen igual área', 'No se puede determinar', 'B', 
 5, 11, 'Área del sector circular'),

('MATEMÁTICA', NULL, 'Problema de diseño', 
 'En diseño gráfico y arquitectura, los sectores circulares se usan frecuentemente. Calcular su área es esencial para determinar cantidades de material o espacios cubiertos.', 
 NULL, NULL, NULL, 
 'Un abanico tiene forma de sector circular con radio 25 cm y ángulo central de 144°. ¿Cuál es su área?', 
 '125π cm²', '250π cm²', '375π cm²', '500π cm²', 'B', 
 5, 11, 'Área del sector circular'),

('MATEMÁTICA', NULL, 'Relación área-longitud', 
 'Existe una relación directa entre el área de un sector y la longitud de su arco, ya que ambas dependen del ángulo central y del radio. Esta relación es útil en problemas donde se conocen algunas medidas y se deben calcular otras.', 
 NULL, NULL, NULL, 
 'Un sector circular tiene área 27π cm² y radio 6 cm. ¿Cuál es la longitud de su arco?', 
 '3π cm', '6π cm', '9π cm', '12π cm', 'C', 
 5, 11, 'Área del sector circular'),

('MATEMÁTICA', NULL, 'Aplicación en agricultura', 
 'En agricultura, los sistemas de riego por aspersión a menudo cubren áreas sectoriales. Calcular estas áreas ayuda a determinar el alcance del riego y la superposición entre aspersores.', 
 NULL, NULL, NULL, 
 'Un aspersor riega un sector circular de 10 m de radio y π/4 radianes de ángulo. ¿Qué área puede regar?', 
 '12.5π m²', '25π m²', '50π m²', '100π m²', 'B', 
 5, 11, 'Área del sector circular'),

-- Preguntas para el tema: Círculo unitario: medición angular en el círculo
('MATEMÁTICA', NULL, 'Ubicación de ángulos', 
 'El círculo unitario es una herramienta fundamental en trigonometría que permite representar ángulos y sus razones trigonométricas. Un ángulo en posición estándar tiene su vértice en el origen y su lado inicial coincide con el eje x positivo.', 
 NULL, NULL, NULL, 
 '¿En qué cuadrante se encuentra el ángulo de 5π/4 radianes?', 
 'I', 'II', 'III', 'IV', 'C', 
 5, 11, 'Círculo unitario: medición angular en el círculo'),

('MATEMÁTICA', NULL, 'Ángulos coterminales', 
 'Los ángulos coterminales comparten la misma posición terminal en el círculo unitario aunque difieran en múltiplos completos de 2π radianes o 360 grados. Identificar ángulos coterminales es esencial para simplificar problemas trigonométricos.', 
 NULL, NULL, NULL, 
 '¿Cuál de los siguientes ángulos NO es coterminal con π/6 radianes?', 
 '13π/6', '25π/6', '-11π/6', '19π/6', 'D', 
 5, 11, 'Círculo unitario: medición angular en el círculo'),

('MATEMÁTICA', NULL, 'Conversión en círculo unitario', 
 'El círculo unitario permite visualizar cómo los ángulos mayores a 2π o menores a 0 pueden reducirse a un ángulo equivalente entre 0 y 2π mediante sumas o restas de múltiplos completos de 2π.', 
 NULL, NULL, NULL, 
 '¿Cuál es el ángulo equivalente entre 0 y 2π para 17π/3 radianes?', 
 'π/3', '2π/3', '4π/3', '5π/3', 'D', 
 5, 11, 'Círculo unitario: medición angular en el círculo'),

('MATEMÁTICA', NULL, 'Identificación de cuadrantes', 
 'Cada cuadrante en el círculo unitario corresponde a un rango específico de ángulos. El primer cuadrante va de 0 a π/2, el segundo de π/2 a π, y así sucesivamente, lo que ayuda a determinar los signos de las funciones trigonométricas.', 
 NULL, NULL, NULL, 
 '¿Para cuál de los siguientes ángulos el seno y el coseno tienen el mismo signo?', 
 '3π/4', '5π/6', '7π/6', '5π/4', 'A', 
 5, 11, 'Círculo unitario: medición angular en el círculo'),

('MATEMÁTICA', NULL, 'Aplicación en física', 
 'En física, el movimiento circular se describe frecuentemente usando el círculo unitario. La posición angular de un objeto en movimiento circular uniforme puede determinarse mediante relaciones trigonométricas.', 
 NULL, NULL, NULL, 
 'Un objeto en movimiento circular uniforme ha recorrido un ángulo de 25π/2 radianes. ¿Qué ángulo equivalente entre 0 y 2π describe su posición?', 
 'π/2', 'π', '3π/2', '5π/2', 'A', 
 5, 11, 'Círculo unitario: medición angular en el círculo'),

-- Preguntas para el tema: Círculo unitario: Definición de la razón seno y coseno
('MATEMÁTICA', NULL, 'Cálculo de seno', 
 'En el círculo unitario, el seno de un ángulo corresponde a la coordenada y del punto donde el lado terminal del ángulo intersecta la circunferencia. Esta definición extiende las razones trigonométricas a todos los ángulos posibles, no solo los agudos.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de sen(3π/2)?', 
 '1', '0', '-1', '1/2', 'C', 
 5, 11, 'Círculo unitario: Definición de la razón seno y coseno'),

('MATEMÁTICA', NULL, 'Cálculo de coseno', 
 'El coseno de un ángulo en el círculo unitario corresponde a la coordenada x del punto de intersección del lado terminal del ángulo con la circunferencia. Esta representación geométrica es fundamental para entender las propiedades de las funciones trigonométricas.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de cos(5π/3)?', 
 '-√3/2', '-1/2', '1/2', '√3/2', 'C', 
 5, 11, 'Círculo unitario: Definición de la razón seno y coseno'),

('MATEMÁTICA', NULL, 'Signos en cuadrantes', 
 'Los signos del seno y coseno varían según el cuadrante en que se encuentre el ángulo. En el primer cuadrante ambos son positivos, en el segundo solo el seno es positivo, y así sucesivamente, siguiendo el acrónimo "All Students Take Calculus".', 
 NULL, NULL, NULL, 
 'Para un ángulo θ en el tercer cuadrante, ¿cuál es el signo de sen(θ) y cos(θ)?', 
 'Ambos positivos', 'Sen positivo, cos negativo', 'Ambos negativos', 'Sen negativo, cos positivo', 'C', 
 5, 11, 'Círculo unitario: Definición de la razón seno y coseno'),

('MATEMÁTICA', NULL, 'Relación entre seno y coseno', 
 'Para cualquier ángulo θ en el círculo unitario, las coordenadas (cosθ, senθ) satisfacen la ecuación x² + y² = 1. Esta relación fundamental conecta las dos funciones trigonométricas primarias y es la base de muchas identidades.', 
 NULL, NULL, NULL, 
 'Si cos(θ) = 0.6 y θ está en el cuarto cuadrante, ¿cuál es el valor de sen(θ)?', 
 '0.8', '-0.8', '0.64', '-0.64', 'B', 
 5, 11, 'Círculo unitario: Definición de la razón seno y coseno'),

('MATEMÁTICA', NULL, 'Aplicación en ondas', 
 'Las funciones seno y coseno modelan fenómenos periódicos como ondas sonoras y electromagnéticas. El círculo unitario proporciona una representación visual de cómo estas funciones varían con el ángulo.', 
 NULL, NULL, NULL, 
 '¿Para qué ángulo θ entre 0 y 2π se cumple que sen(θ) = cos(θ)?', 
 'π/4', 'π/2', '3π/4', 'π', 'A', 
 5, 11, 'Círculo unitario: Definición de la razón seno y coseno'),

-- Preguntas para el tema: Círculo unitario: Identidad fundamental cos²θ+sen²θ=1
('MATEMÁTICA', NULL, 'Verificación de identidad', 
 'La identidad fundamental cos²θ + sen²θ = 1 es verdadera para cualquier ángulo θ y se deriva directamente del teorema de Pitágoras aplicado al círculo unitario. Esta identidad es la base de muchas otras identidades trigonométricas.', 
 NULL, NULL, NULL, 
 'Si senθ = 0.8 y θ está en el segundo cuadrante, ¿cuál es el valor de cosθ?', 
 '0.6', '-0.6', '0.36', '-0.36', 'B', 
 5, 11, 'Círculo unitario: Identidad fundamental cos²θ+sen²θ=1'),

('MATEMÁTICA', NULL, 'Aplicación de identidad', 
 'La identidad fundamental permite encontrar una función trigonométrica cuando se conoce la otra, considerando el cuadrante del ángulo. Esta propiedad es útil para simplificar expresiones y resolver ecuaciones trigonométricas.', 
 NULL, NULL, NULL, 
 'Si cosθ = -√5/3 y θ está en el tercer cuadrante, ¿cuál es el valor de senθ?', 
 '2/3', '-2/3', '√5/3', '-√5/3', 'B', 
 5, 11, 'Círculo unitario: Identidad fundamental cos²θ+sen²θ=1'),

('MATEMÁTICA', NULL, 'Simplificación de expresiones', 
 'La identidad fundamental puede usarse para simplificar expresiones trigonométricas complejas, transformándolas en formas más manejables que facilitan su análisis y resolución.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma simplificada de la expresión: sen²θ + cos²θ + tan²θ?', 
 '1 + tan²θ', 'sec²θ', 'Ambas anteriores', 'Ninguna de las anteriores', 'C', 
 5, 11, 'Círculo unitario: Identidad fundamental cos²θ+sen²θ=1'),

('MATEMÁTICA', NULL, 'Demostración geométrica', 
 'La identidad fundamental puede demostrarse geométricamente usando el círculo unitario, donde la hipotenusa es 1 y los catetos son senθ y cosθ, aplicando directamente el teorema de Pitágoras.', 
 NULL, NULL, NULL, 
 'Si x = cosθ y y = senθ, ¿qué ecuación representa el círculo unitario?', 
 'x + y = 1', 'x² + y² = 1', 'xy = 1', 'x² - y² = 1', 'B', 
 5, 11, 'Círculo unitario: Identidad fundamental cos²θ+sen²θ=1'),

('MATEMÁTICA', NULL, 'Problema de aplicación', 
 'En física, la identidad fundamental se aplica en el análisis de movimientos oscilatorios y ondas, donde las componentes horizontal y vertical del movimiento pueden representarse mediante coseno y seno respectivamente.', 
 NULL, NULL, NULL, 
 'Un objeto se mueve en una trayectoria circular con radio 1. Si su componente horizontal es 0.28, ¿cuál es su componente vertical máxima posible?', 
 '0.96', '0.92', '0.86', '0.82', 'A', 
 5, 11, 'Círculo unitario: Identidad fundamental cos²θ+sen²θ=1'),

-- Preguntas para el tema: Círculo unitario: Definición de tangente
('MATEMÁTICA', NULL, 'Definición básica', 
 'La tangente de un ángulo en el círculo unitario puede definirse como la relación entre seno y coseno (tanθ = senθ/cosθ) o geométricamente como la longitud de un segmento tangente a la circunferencia.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de tan(π/4)?', 
 '0', '1', '√2', '√3', 'B', 
 5, 11, 'Círculo unitario: Definición de tangente'),

('MATEMÁTICA', NULL, 'Cálculo de tangente', 
 'La función tangente tiene asíntotas verticales donde el coseno es cero (π/2, 3π/2, etc.) y repite su patrón cada π radianes, a diferencia del seno y coseno que tienen período 2π.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de tan(5π/6)?', 
 '-√3/3', '√3/3', '-√3', '√3', 'A', 
 5, 11, 'Círculo unitario: Definición de tangente'),

('MATEMÁTICA', NULL, 'Signos de la tangente', 
 'La tangente es positiva cuando seno y coseno tienen el mismo signo (cuadrantes I y III) y negativa cuando tienen signos opuestos (cuadrantes II y IV). Este patrón es importante para determinar ángulos conocidos.', 
 NULL, NULL, NULL, 
 '¿En qué cuadrantes es positiva la función tangente?', 
 'I y II', 'I y III', 'II y III', 'III y IV', 'B', 
 5, 11, 'Círculo unitario: Definición de tangente'),

('MATEMÁTICA', NULL, 'Relación con otras funciones', 
 'La tangente puede expresarse en términos de secante (tan²θ + 1 = sec²θ) y cotangente (tanθ = 1/cotθ). Estas relaciones son útiles para integrar funciones trigonométricas o resolver ecuaciones.', 
 NULL, NULL, NULL, 
 'Si tanθ = 3/4 y θ está en el tercer cuadrante, ¿cuál es el valor de cosθ?', 
 '4/5', '-4/5', '3/5', '-3/5', 'B', 
 5, 11, 'Círculo unitario: Definición de tangente'),

('MATEMÁTICA', NULL, 'Aplicación en pendientes', 
 'En geometría analítica, la tangente de un ángulo que forma una recta con el eje x coincide con su pendiente. Esta propiedad conecta la trigonometría con el álgebra lineal y el cálculo.', 
 NULL, NULL, NULL, 
 '¿Cuál es la pendiente de una recta que forma un ángulo de π/3 radianes con el eje x positivo?', 
 '1/2', '√3/3', '√3', '2', 'C', 
 5, 11, 'Círculo unitario: Definición de tangente'),

-- Preguntas para el tema: Círculo unitario: Periodicidad de razones trigonométricas
('MATEMÁTICA', NULL, 'Periodicidad del seno', 
 'Las funciones seno y coseno son periódicas con período 2π, lo que significa que sus valores se repiten cada 2π radianes. Esta propiedad es fundamental para modelar fenómenos oscilatorios.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de sen(17π/6)?', 
 '1/2', '√2/2', '√3/2', '-1/2', 'D', 
 5, 11, 'Círculo unitario: Periodicidad de razones trigonométricas'),

('MATEMÁTICA', NULL, 'Periodicidad del coseno', 
 'La función coseno alcanza sus valores máximos en múltiplos de 2π y sus valores mínimos en π + 2πn, donde n es un entero. Esta periodicidad permite predecir su comportamiento en cualquier ángulo.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de cos(-π/3)?', 
 '-1/2', '1/2', '-√3/2', '√3/2', 'B', 
 5, 11, 'Círculo unitario: Periodicidad de razones trigonométricas'),

('MATEMÁTICA', NULL, 'Periodo de la tangente', 
 'A diferencia del seno y coseno, la función tangente tiene un período más corto de π radianes, debido a que tan(θ + π) = tanθ para cualquier ángulo θ donde la tangente esté definida.', 
 NULL, NULL, NULL, 
 '¿Cuál es el período fundamental de la función f(x) = tan(3x)?', 
 'π/3', 'π', '2π/3', '3π', 'A', 
 5, 11, 'Círculo unitario: Periodicidad de razones trigonométricas'),

('MATEMÁTICA', NULL, 'Identificación de periodicidad', 
 'Reconocer la periodicidad de las funciones trigonométricas permite simplificar expresiones con ángulos grandes reduciéndolos a ángulos equivalentes entre 0 y 2π.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de sen(25π/4)?', 
 '0', '√2/2', '1', '-√2/2', 'D', 
 5, 11, 'Círculo unitario: Periodicidad de razones trigonométricas'),

('MATEMÁTICA', NULL, 'Aplicación en señales', 
 'En ingeniería eléctrica, la periodicidad de las funciones trigonométricas se aprovecha para analizar señales alternas, donde voltajes y corrientes varían sinusoidalmente con el tiempo.', 
 NULL, NULL, NULL, 
 'Si una señal tiene frecuencia de 60 Hz, ¿cuál es su período en segundos?', 
 '1/60', '60', '2π/60', '60/2π', 'A', 
 5, 11, 'Círculo unitario: Periodicidad de razones trigonométricas'),

-- Preguntas para el tema: Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas
('MATEMÁTICA', NULL, 'Relación seno-cosecante', 
 'Las funciones trigonométricas tienen relaciones recíprocas: seno y cosecante (cscθ = 1/senθ), coseno y secante (secθ = 1/cosθ), tangente y cotangente (cotθ = 1/tanθ).', 
 NULL, NULL, NULL, 
 'Si senθ = 1/3, ¿cuál es el valor de cscθ?', 
 '1/3', '3', '2√2/3', '3√2/4', 'B', 
 5, 11, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

('MATEMÁTICA', NULL, 'Uso de identidades', 
 'Las identidades trigonométricas permiten transformar expresiones complejas en formas más simples, facilitando su integración, derivación o resolución.', 
 NULL, NULL, NULL, 
 '¿Cuál es la expresión equivalente a (1 - cos²θ)(1 + tan²θ)?', 
 'sen²θ', 'tan²θ', 'sen²θ sec²θ', '1', 'B', 
 5, 11, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

('MATEMÁTICA', NULL, 'Co-funciones', 
 'Las co-funciones relacionan funciones trigonométricas de ángulos complementarios, como sen(π/2 - θ) = cosθ y tan(π/2 - θ) = cotθ.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de cos(π/2 - π/6)?', 
 '1/2', '√3/2', '√2/2', '0', 'A', 
 5, 11, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

('MATEMÁTICA', NULL, 'Fórmulas de ángulo doble', 
 'Las fórmulas de ángulo doble como sen(2θ) = 2senθcosθ y cos(2θ) = cos²θ - sen²θ son herramientas poderosas para simplificar expresiones con múltiplos de ángulos.', 
 NULL, NULL, NULL, 
 'Si senθ = 0.6 y θ está en el primer cuadrante, ¿cuál es sen(2θ)?', 
 '0.48', '0.6', '0.8', '0.96', 'D', 
 5, 11, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

('MATEMÁTICA', NULL, 'Aplicación en física', 
 'En física, las relaciones trigonométricas se usan para descomponer fuerzas, analizar movimientos parabólicos y estudiar fenómenos ondulatorios donde las componentes vertical y horizontal son importantes.', 
 NULL, NULL, NULL, 
 'Una fuerza de 10 N se aplica con un ángulo de 30° sobre la horizontal. ¿Cuál es su componente vertical?', 
 '5 N', '5√3 N', '10 N', '10√3 N', 'A', 
 5, 11, 'Aplicaciones del círculo unitario: relaciones entre las razones trigonométricas'),

-- Preguntas para el tema: Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos
('MATEMÁTICA', NULL, 'Valores en π/6', 
 'Los ángulos notables π/6 (30°), π/4 (45°) y π/3 (60°) tienen valores trigonométricos exactos que pueden derivarse de triángulos especiales y deben memorizarse para agilizar cálculos.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor exacto de cos(π/3)?', 
 '1/2', '√2/2', '√3/2', '1', 'A', 
 5, 11, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

('MATEMÁTICA', NULL, 'Valores en π/4', 
 'El ángulo π/4 (45°) produce valores iguales para seno y coseno, específicamente √2/2, ya que los catetos del triángulo rectángulo isósceles correspondiente son iguales.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor exacto de tan(π/4)?', 
 '0', '1', '√2', '√3', 'B', 
 5, 11, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

('MATEMÁTICA', NULL, 'Valores en π/3', 
 'El ángulo π/3 (60°) tiene sen√3/2 y cos1/2, valores que provienen del triángulo equilátero dividido por su altura, formando dos triángulos 30-60-90.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor exacto de csc(π/6)?', 
 '1/2', '1', '2', '√3', 'C', 
 5, 11, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

('MATEMÁTICA', NULL, 'Ángulos mayores', 
 'Usando simetrías del círculo unitario y propiedades periódicas, los valores trigonométricos de ángulos mayores pueden reducirse a equivalentes de ángulos notables en el primer cuadrante.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor exacto de sen(5π/4)?', 
 '1/2', '-1/2', '√2/2', '-√2/2', 'D', 
 5, 11, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

('MATEMÁTICA', NULL, 'Cálculo combinado', 
 'Combinando los valores exactos de ángulos notables con identidades trigonométricas, podemos evaluar expresiones más complejas sin necesidad de calculadora.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor exacto de sen²(π/6) + cos²(π/3)?', 
 '1/2', '3/4', '1', '5/4', 'A', 
 5, 11, 'Valores exactos de las razones trigonométricas de 0, π/6, π/4 y sus múltiplos'),

-- Preguntas para el tema: La ecuación de una línea recta
-- Pregunta 1
(
    'MATEMÁTICA', NULL, 'Identificación de pendiente', 
    'En geometría analítica, la pendiente de una recta es un concepto fundamental que describe su inclinación respecto al eje horizontal. Dada la ecuación de la recta y = 2x + 5, es importante comprender cómo identificar sus componentes principales.',
    NULL, NULL, NULL, 
    '¿Cuál es el valor de la pendiente (m) en la ecuación y = 2x + 5?',
    '5', '2', '1', '0', 'B', 5, 11, 'La ecuación de una línea recta'
),
-- Pregunta 2
(
    'MATEMÁTICA', NULL, 'Intersección con el eje Y', 
    'El término independiente en la ecuación de una recta en su forma pendiente-ordenada al origen (y = mx + b) representa un punto particular en el plano cartesiano. Este valor es crucial para graficar la recta correctamente.',
    NULL, NULL, NULL, 
    'En la ecuación y = -3x + 7, ¿cuál es el valor del intercepto con el eje Y?',
    '-3', '7', '0', '3.5', 'B', 5, 11, 'La ecuación de una línea recta'
),
-- Pregunta 3
(
    'MATEMÁTICA', NULL, 'Forma punto-pendiente', 
    'Cuando se conoce un punto por el que pasa una recta y su pendiente, es posible determinar su ecuación utilizando la forma punto-pendiente. Este método es especialmente útil en problemas de aplicación.',
    NULL, NULL, NULL, 
    '¿Cuál es la ecuación de la recta que pasa por el punto (4, -1) y tiene pendiente 1/2?',
    'y = 1/2x - 3', 'y = 1/2x + 1', 'y = -1/2x + 1', 'y = 2x - 9', 'A', 5, 11, 'La ecuación de una línea recta'
),
-- Pregunta 4
(
    'MATEMÁTICA', NULL, 'Rectas paralelas', 
    'Dos rectas son paralelas cuando comparten una característica específica en sus ecuaciones. Este conocimiento es esencial para resolver problemas de geometría analítica y determinar relaciones entre líneas.',
    NULL, NULL, NULL, 
    '¿Cuál de las siguientes rectas es paralela a y = 4x - 2?',
    'y = -4x + 3', 'y = 1/4x + 5', 'y = 4x + 10', 'y = -1/4x - 2', 'C', 5, 11, 'La ecuación de una línea recta'
),
-- Pregunta 5
(
    'MATEMÁTICA', NULL, 'Ecuación general de la recta', 
    'La forma general de la ecuación de una recta (Ax + By + C = 0) es ampliamente utilizada en matemáticas avanzadas. Convertir entre esta forma y la forma pendiente-ordenada es una habilidad importante.',
    NULL, NULL, NULL, 
    '¿Cuál es la pendiente de la recta representada por la ecuación 3x - 6y + 4 = 0?',
    '3', '0.5', '-0.5', '2', 'B', 5, 11, 'La ecuación de una línea recta'
);

-- Preguntas para el tema: Distancia entre dos puntos del espacio 3D
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cálculo de distancia en el espacio', 
'En un sistema de coordenadas tridimensional, los puntos A y B representan las posiciones de dos estrellas en el espacio. El punto A tiene coordenadas (3, -2, 5) y el punto B tiene coordenadas (-1, 4, 0). Para calcular la distancia entre estas dos estrellas, necesitamos aplicar la fórmula de distancia entre dos puntos en el espacio 3D.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia entre los puntos A(3, -2, 5) y B(-1, 4, 0)?', 
'7.81 unidades', '8.37 unidades', '9.43 unidades', '10.25 unidades', 
'B', 5, 11, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Aplicación de la fórmula de distancia', 
'La fórmula para calcular la distancia entre dos puntos P(x₁, y₁, z₁) y Q(x₂, y₂, z₂) en el espacio tridimensional es √[(x₂-x₁)² + (y₂-y₁)² + (z₂-z₁)²]. Esta fórmula es una extensión del teorema de Pitágoras al espacio tridimensional y es fundamental en geometría analítica.', 
NULL, NULL, NULL, 
'Si los puntos C(1, 0, -2) y D(4, 3, 5) representan dos vértices opuestos de un cubo, ¿cuál es la longitud de la diagonal espacial del cubo?', 
'√58 unidades', '√67 unidades', '√83 unidades', '√94 unidades', 
'C', 5, 11, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Distancia entre puntos en física', 
'En física, el cálculo de distancias entre puntos en el espacio 3D es esencial para determinar desplazamientos, campos eléctricos y muchas otras magnitudes. Considera dos partículas cargadas ubicadas en los puntos E(2, -3, 1) y F(-2, 5, 4) en un sistema de coordenadas cartesianas.', 
NULL, NULL, NULL, 
'¿Cuál es la distancia entre las partículas E y F?', 
'8.60 unidades', '9.27 unidades', '10.05 unidades', '10.82 unidades', 
'D', 5, 11, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Problema de geometría espacial', 
'En arquitectura, el cálculo preciso de distancias es crucial para el diseño estructural. Imagina que estás diseñando un puente donde los soportes principales están ubicados en los puntos G(5, -1, 3) y H(0, 4, -2).', 
NULL, NULL, NULL, 
'¿Qué longitud debe tener la viga principal que conecta los puntos G y H?', 
'√75 unidades', '√83 unidades', '√91 unidades', '√99 unidades', 
'B', 5, 11, 'Distancia entre dos puntos del espacio 3D'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Aplicación en navegación espacial', 
'Para planificar la trayectoria de una nave espacial, los ingenieros deben calcular distancias entre puntos en el espacio. Una nave parte del punto I(1, 2, 3) y debe llegar al punto J(-3, 5, -1) para realizar una maniobra de corrección.', 
NULL, NULL, NULL, 
'¿Qué distancia recorrerá la nave entre los puntos I y J?', 
'6 unidades', '7 unidades', '√57 unidades', '√65 unidades', 
'C', 5, 11, 'Distancia entre dos puntos del espacio 3D'),

-- Preguntas para el tema: Punto medio en el espacio 3D
('MATEMÁTICA', NULL, 'Cálculo del punto medio', 
'El punto medio entre dos puntos en el espacio 3D se calcula como el promedio de sus coordenadas correspondientes. Si tenemos los puntos K(x₁, y₁, z₁) y L(x₂, y₂, z₂), el punto medio M tiene coordenadas ((x₁+x₂)/2, (y₁+y₂)/2, (z₁+z₂)/2).', 
NULL, NULL, NULL, 
'Dados los puntos A(2, -3, 5) y B(4, 1, -3), ¿cuáles son las coordenadas del punto medio?', 
'(3, -1, 1)', '(3, -2, 2)', '(3, -1, 2)', '(3, -2, 1)', 
'A', 5, 11, 'Punto medio en el espacio 3D'),

('MATEMÁTICA', NULL, 'Aplicación en física', 
'En física, el concepto de punto medio es útil para encontrar centros de masa o puntos de equilibrio. Dos partículas de igual masa están ubicadas en los puntos C(1, 0, -2) y D(5, 6, 4).', 
NULL, NULL, NULL, 
'¿Dónde se ubicaría el centro de masa del sistema formado por estas dos partículas?', 
'(3, 3, 1)', '(2, 3, 1)', '(3, 3, 2)', '(3, 2, 1)', 
'A', 5, 11, 'Punto medio en el espacio 3D'),

('MATEMÁTICA', NULL, 'Geometría molecular', 
'En química, para determinar la geometría de moléculas complejas, a menudo necesitamos encontrar puntos medios entre átomos. Considera una molécula con átomos en E(2, -1, 3) y F(-2, 5, 1).', 
NULL, NULL, NULL, 
'¿Cuál sería el punto medio entre los átomos E y F?', 
'(0, 2, 2)', '(0, 3, 2)', '(0, 2, 3)', '(0, 3, 3)', 
'A', 5, 11, 'Punto medio en el espacio 3D'),

('MATEMÁTICA', NULL, 'Problema de arquitectura', 
'Al diseñar un edificio, los arquitectos necesitan determinar puntos centrales para colocar elementos estructurales. Imagina dos columnas ubicadas en G(4, -2, 6) y H(-2, 4, 0).', 
NULL, NULL, NULL, 
'Si queremos colocar un refuerzo en el punto medio entre las columnas, ¿qué coordenadas tendría?', 
'(1, 1, 3)', '(1, 2, 3)', '(1, 1, 4)', '(1, 2, 4)', 
'A', 5, 11, 'Punto medio en el espacio 3D'),

('MATEMÁTICA', NULL, 'Navegación aérea', 
'Para planificar rutas de vuelo, los controladores aéreos calculan puntos medios entre ubicaciones. Un avión está en I(10, -5, 8) y debe llegar a J(-6, 7, 2).', 
NULL, NULL, NULL, 
'¿Cuál sería el punto medio de esta ruta?', 
'(2, 1, 5)', '(2, 2, 5)', '(2, 1, 6)', '(2, 2, 6)', 
'A', 5, 11, 'Punto medio en el espacio 3D'),

-- Preguntas para el tema: Volumen y área de la superficie de sólidos
('MATEMÁTICA', NULL, 'Volumen de una pirámide recta', 
'Una pirámide recta tiene como base un cuadrado de 6 cm de lado y una altura de 8 cm. El volumen de una pirámide se calcula con la fórmula V = (1/3) * Área_base * altura.', 
NULL, NULL, NULL, 
'¿Cuál es el volumen de esta pirámide?', 
'96 cm³', '100 cm³', '104 cm³', '108 cm³', 
'A', 5, 11, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

('MATEMÁTICA', NULL, 'Área de superficie de un cono', 
'Un cono recto tiene un radio de base de 5 cm y una altura de 12 cm. Para calcular su área lateral necesitamos primero encontrar la generatriz (g) usando el teorema de Pitágoras: g = √(r² + h²).', 
NULL, NULL, NULL, 
'¿Cuál es el área lateral de este cono? (Usa π ≈ 3.14)', 
'188.4 cm²', '204.1 cm²', '216.3 cm²', '235.6 cm²', 
'B', 5, 11, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

('MATEMÁTICA', NULL, 'Volumen de una esfera', 
'La fórmula para calcular el volumen de una esfera es V = (4/3)πr³, donde r es el radio. Una esfera tiene un diámetro de 10 cm.', 
NULL, NULL, NULL, 
'¿Cuál es el volumen de esta esfera? (Usa π ≈ 3.14)', 
'523.3 cm³', '418.9 cm³', '314.2 cm³', '261.8 cm³', 
'A', 5, 11, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

('MATEMÁTICA', NULL, 'Área de una semiesfera', 
'Una semiesfera es la mitad de una esfera más el área del círculo base. Si una esfera tiene radio de 7 cm, su semiesfera correspondiente tendrá un área superficial que incluye la mitad del área de la esfera más el área del círculo base.', 
NULL, NULL, NULL, 
'¿Cuál es el área total de la semiesfera? (Usa π ≈ 3.14)', 
'461.58 cm²', '492.98 cm²', '527.52 cm²', '554.18 cm²', 
'A', 5, 11, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

('MATEMÁTICA', NULL, 'Combinación de sólidos', 
'Un sólido está formado por un cilindro de radio 4 cm y altura 10 cm, coronado por una semiesfera del mismo radio. El volumen total es la suma del volumen del cilindro y la semiesfera.', 
NULL, NULL, NULL, 
'¿Cuál es el volumen total del sólido? (Usa π ≈ 3.14)', 
'602.88 cm³', '653.12 cm³', '703.36 cm³', '753.60 cm³', 
'C', 5, 11, 'Volumen y área de la superficie de sólidos: pirámide recta, cono recto, esfera, semiesfera y combinaciones entre estos sólidos'),

-- Preguntas para el tema: Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano
('MATEMÁTICA', NULL, 'Ángulo entre dos rectas', 
'Dadas dos rectas en el espacio con vectores directores u = (1, 2, -1) y v = (3, -1, 2), el ángulo θ entre ellas se puede calcular usando el producto punto: cosθ = (u·v)/(||u|| ||v||).', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo (aproximado) entre estas dos rectas?', 
'60°', '70°', '80°', '90°', 
'C', 5, 11, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

('MATEMÁTICA', NULL, 'Ángulo entre recta y plano', 
'Para encontrar el ángulo entre una recta y un plano, primero calculamos el ángulo entre el vector director de la recta y el vector normal al plano, luego restamos este ángulo de 90°. Considera una recta con vector director (2, -1, 3) y un plano con vector normal (1, 1, -1).', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo entre la recta y el plano?', 
'35.26°', '45.23°', '54.74°', '63.43°', 
'C', 5, 11, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

('MATEMÁTICA', NULL, 'Aplicación en ingeniería', 
'En ingeniería civil, calcular ángulos entre elementos estructurales es esencial. Dos vigas se cruzan con vectores directores a = (1, 0, 1) y b = (0, 1, 1).', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo entre estas dos vigas?', 
'45°', '50°', '60°', '75°', 
'C', 5, 11, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

('MATEMÁTICA', NULL, 'Geometría descriptiva', 
'Una recta tiene vector director (3, 2, -1) y un plano tiene ecuación 2x - y + 3z = 5 (su vector normal es (2, -1, 3)).', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo entre la recta y el plano?', 
'48.19°', '56.32°', '63.25°', '70.53°', 
'A', 5, 11, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

('MATEMÁTICA', NULL, 'Problema de física', 
'En óptica, para calcular ángulos de incidencia y reflexión necesitamos determinar ángulos entre rayos de luz. Dos rayos tienen vectores directores r = (1, 1, 0) y s = (1, -1, 0).', 
NULL, NULL, NULL, 
'¿Cuál es el ángulo entre estos dos rayos de luz?', 
'60°', '75°', '90°', '120°', 
'C', 5, 11, 'Medida del ángulo entre dos rectas que se cortan o del ángulo entre una recta y un plano'),

-- Preguntas para el tema: Correlación lineal de variables bidimensionales
('MATEMÁTICA', NULL, 'Interpretación de correlación', 
'La correlación lineal mide la relación lineal entre dos variables cuantitativas. Su valor oscila entre -1 y 1, donde 1 indica correlación positiva perfecta, -1 correlación negativa perfecta y 0 ausencia de correlación lineal.', 
NULL, NULL, NULL, 
'Si al analizar dos variables se obtiene un coeficiente de correlación de -0.85, ¿cómo se interpreta esto?', 
'Fuerte correlación negativa', 'Débil correlación negativa', 'Fuerte correlación positiva', 'No hay correlación', 
'A', 5, 11, 'Correlación lineal de variables bidimensionales'),

('MATEMÁTICA', NULL, 'Diagrama de dispersión', 
'Al observar un diagrama de dispersión de dos variables, se nota que los puntos forman una línea recta descendente bastante definida.', 
NULL, NULL, NULL, 
'¿Qué valor aproximado de correlación lineal esperarías encontrar?', 
'r ≈ 0.9', 'r ≈ -0.9', 'r ≈ 0.5', 'r ≈ -0.3', 
'B', 5, 11, 'Correlación lineal de variables bidimensionales'),

('MATEMÁTICA', NULL, 'Relación entre variables', 
'Se estudia la relación entre horas de estudio y calificaciones en un grupo de estudiantes. Los datos muestran que a mayor tiempo de estudio, mejores calificaciones, pero no de forma perfectamente lineal.', 
NULL, NULL, NULL, 
'¿Qué rango de valores de correlación es más probable encontrar?', 
'Entre 0.1 y 0.3', 'Entre 0.4 y 0.7', 'Entre 0.8 y 1.0', 'Entre -0.5 y 0', 
'B', 5, 11, 'Correlación lineal de variables bidimensionales'),

('MATEMÁTICA', NULL, 'Correlación no implica causalidad', 
'Se encuentra una correlación de 0.65 entre el número de libros en casa y el rendimiento académico de los estudiantes. Sin embargo, esto no necesariamente significa que tener más libros cause mejor rendimiento.', 
NULL, NULL, NULL, 
'¿Qué otro factor podría explicar esta correlación?', 
'El color de los libros', 'El nivel socioeconómico de las familias', 'El tamaño de las estanterías', 'La ubicación geográfica de las librerías', 
'B', 5, 11, 'Correlación lineal de variables bidimensionales'),

('MATEMÁTICA', NULL, 'Selección de casos atípicos', 
'En un análisis de correlación, se observa que dos puntos están muy alejados del patrón general mostrado por los demás datos.', 
NULL, NULL, NULL, 
'¿Cómo afectan estos puntos atípicos al coeficiente de correlación?', 
'No lo afectan', 'Pueden aumentarlo o disminuirlo significativamente', 'Siempre lo aumentan', 'Siempre lo disminuyen', 
'B', 5, 11, 'Correlación lineal de variables bidimensionales'),

-- Preguntas para el tema: Coeficiente de correlación r
('MATEMÁTICA', NULL, 'Cálculo del coeficiente r', 
'El coeficiente de correlación r de Pearson se calcula como la covarianza de las variables dividida por el producto de sus desviaciones estándar. Sus valores van de -1 a 1.', 
NULL, NULL, NULL, 
'Si al calcular r para dos variables se obtiene 0.92, ¿qué podemos concluir?', 
'No hay relación entre las variables', 'Existe una fuerte relación lineal positiva', 'Existe una fuerte relación lineal negativa', 'Las variables son independientes', 
'B', 5, 11, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Interpretación de valores de r', 
'Diferentes valores del coeficiente de correlación tienen distintas interpretaciones sobre la fuerza de la relación lineal entre variables.', 
NULL, NULL, NULL, 
'¿Cómo se interpreta un valor de r = -0.45?', 
'Correlación negativa moderada', 'Correlación negativa fuerte', 'Correlación positiva moderada', 'No hay correlación', 
'A', 5, 11, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Propiedades del coeficiente r', 
'El coeficiente de correlación r tiene propiedades importantes: es adimensional, simétrico (no importa qué variable es X o Y) y no se afecta por cambios de escala.', 
NULL, NULL, NULL, 
'Si multiplicamos todos los valores de X por 10, ¿qué pasa con r?', 
'Aumenta 10 veces', 'Disminuye 10 veces', 'Permanece igual', 'Cambia de signo', 
'C', 5, 11, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Límites de r', 
'El coeficiente de correlación solo mide relaciones lineales. Dos variables pueden tener una relación no lineal perfecta y aun así tener r = 0.', 
NULL, NULL, NULL, 
'Si X es el cuadrado de Y perfectamente, ¿cuál sería el valor de r?', 
'1', '-1', '0', 'Depende de los valores específicos', 
'C', 5, 11, 'Coeficiente de correlación r'),

('MATEMÁTICA', NULL, 'Comparación de correlaciones', 
'Se han calculado coeficientes de correlación para tres pares de variables: A (r=0.85), B (r=-0.78) y C (r=0.62).', 
NULL, NULL, NULL, 
'¿Qué par de variables tiene la relación lineal más fuerte?', 
'A', 'B', 'C', 'A y B tienen igual fuerza', 
'A', 5, 11, 'Coeficiente de correlación r'),

-- Preguntas para el tema: Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones
('MATEMÁTICA', NULL, 'Cálculo de la recta de regresión', 
'La recta de regresión de y sobre x tiene la forma y = a + bx, donde b es la pendiente (cov(X,Y)/var(X)) y a es el intercepto (ȳ - bẋ).', 
NULL, NULL, NULL, 
'Dados los siguientes datos: ẋ=5, ȳ=10, var(X)=4, cov(X,Y)=6, ¿cuál es la ecuación de la recta de regresión?', 
'y = 2.5 + 1.5x', 'y = 10 + 1.5x', 'y = 2.5 + 6x', 'y = 5 + 1.5x', 
'A', 5, 11, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Predicción con regresión lineal', 
'Con la ecuación de regresión y = 50 + 2x, donde x son horas de estudio e y es puntaje en un examen, podemos predecir resultados.', 
NULL, NULL, NULL, 
'¿Qué puntaje predecirías para un estudiante que dedica 15 horas?', 
'65', '75', '80', '85', 
'C', 5, 11, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Interpretación de pendiente', 
'En la ecuación de regresión y = 200 - 5x, y representa el precio de una casa (en miles) y x su antigüedad (en años).', 
NULL, NULL, NULL, 
'¿Cómo interpretas el coeficiente -5?', 
'Por cada año más vieja, el precio aumenta $5,000', 'Por cada año más vieja, el precio disminuye $5,000', 'El precio inicial es $5,000', 'No hay relación entre antigüedad y precio', 
'B', 5, 11, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Límites de predicción', 
'La recta de regresión calculada para estaturas (x) y pesos (y) de adultos tiene validez para estaturas entre 150-200 cm.', 
NULL, NULL, NULL, 
'¿Sería confiable predecir el peso para una estatura de 220 cm usando esta recta?', 
'Sí, siempre es confiable', 'No, estaríamos extrapolando fuera del rango de datos', 'Solo si el coeficiente r es alto', 'Depende del intercepto', 
'B', 5, 11, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

('MATEMÁTICA', NULL, 'Error de predicción', 
'La recta de regresión predice y, pero cada punto real tiene un error residual (diferencia entre valor real y predicho).', 
NULL, NULL, NULL, 
'Si para x=8, y real es 20 y y predicho es 18, ¿cuál es el residual?', 
'-2', '2', '0.9', '-0.9', 
'B', 5, 11, 'Ecuación de la recta de regresión de y sobre x. Uso de la ecuación para realizar predicciones'),

-- Preguntas para el tema: El coeficiente de correlación de rango de Spearman para modelos no lineales
('MATEMÁTICA', NULL, 'Uso del coeficiente de Spearman', 
'El coeficiente de correlación de rangos de Spearman (ρ) mide relaciones monótonas (no necesariamente lineales) entre variables, usando los rangos de los datos en lugar de los valores originales.', 
NULL, NULL, NULL, 
'¿En qué caso sería preferible usar Spearman en lugar de Pearson?', 
'Cuando la relación es lineal', 'Cuando la relación es monótona pero no lineal', 'Cuando los datos son normales', 'Cuando hay pocos datos', 
'B', 5, 11, 'El coeficiente de correlación de rango de Spearman para modelos no lineales'),

('MATEMÁTICA', NULL, 'Cálculo de Spearman', 
'Para calcular ρ, primero se asignan rangos a cada valor en X e Y por separado, luego se calcula la correlación de Pearson sobre estos rangos.', 
NULL, NULL, NULL, 
'Si dos variables tienen una relación perfectamente creciente pero no lineal, ¿qué valor de ρ esperarías?', 
'0', '0.5', '1', '-1', 
'C', 5, 11, 'El coeficiente de correlación de rango de Spearman para modelos no lineales'),

('MATEMÁTICA', NULL, 'Datos ordinales', 
'El coeficiente de Spearman es especialmente útil cuando trabajamos con datos ordinales o cuando no se cumplen los supuestos de Pearson.', 
NULL, NULL, NULL, 
'¿Para qué tipo de datos es más apropiado Spearman que Pearson?', 
'Datos nominales', 'Datos ordinales', 'Datos de intervalo con distribución normal', 'Datos continuos con outliers', 
'B', 5, 11, 'El coeficiente de correlación de rango de Spearman para modelos no lineales'),

('MATEMÁTICA', NULL, 'Resistencia a outliers', 
'Una ventaja del coeficiente de Spearman es que es más resistente a valores atípicos que el coeficiente de Pearson.', 
NULL, NULL, NULL, 
'¿Por qué Spearman es menos sensible a outliers?', 
'Porque usa rangos en lugar de valores originales', 'Porque ignora los valores extremos', 'Porque aplica una transformación logarítmica', 'Porque solo considera valores positivos', 
'A', 5, 11, 'El coeficiente de correlación de rango de Spearman para modelos no lineales'),

('MATEMÁTICA', NULL, 'Interpretación de valores', 
'Al igual que Pearson, el coeficiente de Spearman varía entre -1 y 1, donde 1 indica una relación monótona creciente perfecta.', 
NULL, NULL, NULL, 
'¿Cómo interpretarías un ρ de -0.8?', 
'Fuerte relación monótona decreciente', 'Débil relación monótona creciente', 'No hay relación', 'Fuerte relación lineal negativa', 
'A', 5, 11, 'El coeficiente de correlación de rango de Spearman para modelos no lineales'),

-- Preguntas para el tema: El coeficiente de determinación R²
('MATEMÁTICA', NULL, 'Interpretación de R²', 
'El coeficiente de determinación R² representa la proporción de la varianza en la variable dependiente que es explicada por el modelo de regresión.', 
NULL, NULL, NULL, 
'Si un modelo tiene R² = 0.75, ¿cómo se interpreta?', 
'El 25% de la variación en Y es explicada por X', 'El 75% de la variación en Y es explicada por X', 'El modelo es correcto el 75% del tiempo', 'X e Y están correlacionadas en 0.75', 
'B', 5, 11, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Relación entre R² y r', 
'En regresión lineal simple, R² es igual al cuadrado del coeficiente de correlación r entre X e Y.', 
NULL, NULL, NULL, 
'Si la correlación entre dos variables es 0.9, ¿cuál es el R²?', 
'0.9', '0.81', '0.95', '1.8', 
'B', 5, 11, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Límites de R²', 
'R² siempre está entre 0 y 1 en regresión lineal, donde 1 indica que el modelo explica toda la variabilidad de los datos.', 
NULL, NULL, NULL, 
'¿Es posible tener un R² negativo?', 
'Sí, en cualquier modelo', 'Sólo en regresión lineal simple', 'Sólo en modelos no lineales', 'No, en regresión lineal nunca', 
'D', 5, 11, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'R² ajustado', 
'El R² ajustado penaliza la adición de variables predictoras no significativas al modelo, evitando el sobreajuste.', 
NULL, NULL, NULL, 
'¿Cuándo es útil usar R² ajustado en lugar de R² normal?', 
'En modelos con una sola variable predictora', 'En modelos con múltiples variables predictoras', 'Cuando los datos son normales', 'Cuando hay outliers', 
'B', 5, 11, 'El coeficiente de determinación R²'),

('MATEMÁTICA', NULL, 'Comparación de modelos', 
'R² permite comparar qué tan bien diferentes modelos explican la variabilidad de los datos.', 
NULL, NULL, NULL, 
'Si Modelo A tiene R²=0.6 y Modelo B tiene R²=0.8, ¿cuál explica mejor los datos?', 
'Modelo A', 'Modelo B', 'Son iguales', 'No se puede determinar', 
'B', 5, 11, 'El coeficiente de determinación R²'),

-- Preguntas para el tema: Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial
('MATEMÁTICA', NULL, 'Regresión exponencial', 
'La regresión exponencial modela relaciones donde Y = a*e^(bX), y se puede linealizar aplicando logaritmo natural: ln(Y) = ln(a) + bX.', 
NULL, NULL, NULL, 
'¿Qué transformación se necesita para convertir una regresión exponencial en lineal?', 
'Logaritmo natural de Y', 'Logaritmo natural de X', 'Raíz cuadrada de Y', 'Cuadrado de X', 
'A', 5, 11, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial'),

('MATEMÁTICA', NULL, 'Regresión logarítmica', 
'La regresión logarítmica tiene la forma Y = a + b*ln(X) y es útil cuando la tasa de cambio de Y disminuye a medida que X aumenta.', 
NULL, NULL, NULL, 
'¿En qué situación sería apropiado usar regresión logarítmica?', 
'Cuando Y crece exponencialmente con X', 'Cuando Y aumenta a tasa decreciente con X', 'Cuando la relación es cuadrática', 'Cuando no hay relación entre X e Y', 
'B', 5, 11, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial'),

('MATEMÁTICA', NULL, 'Regresión potencial', 
'La regresión potencial (Y = aX^b) se lineariza aplicando logaritmo a ambos lados: log(Y) = log(a) + b*log(X).', 
NULL, NULL, NULL, 
'¿Qué tipo de relación modela la regresión potencial?', 
'Relaciones de proporcionalidad directa', 'Relaciones de escala (leyes de potencia)', 'Relaciones periódicas', 'Relaciones logísticas', 
'B', 5, 11, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial'),

('MATEMÁTICA', NULL, 'Regresión polinomial', 
'La regresión polinomial de grado n ajusta una ecuación de la forma Y = a + bX + cX² + ... + kX^n, permitiendo modelar relaciones no lineales.', 
NULL, NULL, NULL, 
'¿Qué grado de polinomio sería mínimo para modelar una relación con un punto de inflexión?', 
'1 (lineal)', '2 (cuadrático)', '3 (cúbico)', '4 (cuártico)', 
'B', 5, 11, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial'),

('MATEMÁTICA', NULL, 'Selección de modelo', 
'Para elegir entre modelos no lineales, se pueden comparar sus R² ajustados o usar criterios como AIC o BIC que penalizan la complejidad.', 
NULL, NULL, NULL, 
'¿Qué principio guía la selección del mejor modelo?', 
'El que tenga más parámetros', 'El que tenga mayor R² sin importar complejidad', 'El que equilibre bondad de ajuste y parsimonia', 'Siempre el modelo lineal', 
'C', 5, 11, 'Métodos numéricos para regresiones no lineales: exponencial, logarítmica, regresión potencial, regresión polinomial');

-- Preguntas para el tema: Patrones y secuencias
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Identificación de patrones numéricos', 
 'Analiza cuidadosamente la siguiente secuencia numérica: 3, 7, 11, 15, 19, __. Para identificar el patrón, observa la diferencia entre cada término consecutivo y aplica este patrón para determinar el siguiente número en la secuencia.', 
 NULL, NULL, NULL, 
 '¿Cuál es el siguiente número en la secuencia?', 
 '21', '23', '22', '20', 'B', 5, 11, 'Patrones y secuencias'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Patrones en figuras geométricas', 
 'Examine la siguiente secuencia de figuras: un triángulo, un cuadrado, un pentágono, un hexágono. Cada figura tiene un lado más que la anterior. Este patrón continúa aumentando un lado en cada paso de la secuencia.', 
 NULL, NULL, NULL, 
 '¿Qué figura seguiría en esta secuencia?', 
 'Heptágono (7 lados)', 'Octágono (8 lados)', 'Nonágono (9 lados)', 'Decágono (10 lados)', 'A', 5, 11, 'Patrones y secuencias'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Secuencia de números cuadrados', 
 'Considere la secuencia de números cuadrados perfectos: 1, 4, 9, 16, 25, __. Cada término se obtiene elevando al cuadrado números enteros consecutivos comenzando desde 1.', 
 NULL, NULL, NULL, 
 '¿Cuál es el siguiente número en esta secuencia?', 
 '30', '36', '49', '64', 'B', 5, 11, 'Patrones y secuencias'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Patrones alternantes', 
 'Observe la siguiente secuencia alternante: 2, 4, 8, 16, 32, __. En este caso, cada término se obtiene multiplicando el anterior por 2, lo que representa un patrón de crecimiento exponencial.', 
 NULL, NULL, NULL, 
 '¿Cuál es el siguiente número en esta secuencia?', 
 '48', '64', '96', '128', 'B', 5, 11, 'Patrones y secuencias'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Secuencia de Fibonacci', 
 'La secuencia de Fibonacci es una famosa sucesión numérica donde cada número es la suma de los dos anteriores, comenzando con 0 y 1. La secuencia comienza así: 0, 1, 1, 2, 3, 5, 8, 13, __.', 
 NULL, NULL, NULL, 
 '¿Cuál es el siguiente número en la secuencia de Fibonacci?', 
 '18', '21', '24', '34', 'B', 5, 11, 'Patrones y secuencias'),

-- Preguntas para el tema: Secuencias aritméticas: Problemas
-- Pregunta 1
('MATEMÁTICA', NULL, 'Término general de una secuencia aritmética', 
 'Una secuencia aritmética tiene como primer término 5 y una diferencia común de 3. El término general de una secuencia aritmética está dado por la fórmula: aₙ = a₁ + (n-1)d, donde a₁ es el primer término y d es la diferencia común.', 
 NULL, NULL, NULL, 
 '¿Cuál es el décimo término de esta secuencia?', 
 '32', '35', '38', '41', 'A', 5, 11, 'Secuencias aritméticas: Problemas'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Aplicación de secuencias aritméticas', 
 'Juan ahorra dinero cada semana. La primera semana ahorró $15 y cada semana siguiente ahorra $5 más que la semana anterior. Este patrón de ahorro forma una secuencia aritmética donde la diferencia común es $5.', 
 NULL, NULL, NULL, 
 '¿Cuánto habrá ahorrado Juan en total después de 10 semanas?', 
 '$375', '$425', '$475', '$525', 'B', 5, 11, 'Secuencias aritméticas: Problemas'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Diferencia común en secuencias', 
 'En una secuencia aritmética, el cuarto término es 20 y el décimo término es 50. La diferencia común (d) puede encontrarse usando la fórmula: aₙ = a₁ + (n-1)d, donde aₙ es el término en la posición n.', 
 NULL, NULL, NULL, 
 '¿Cuál es la diferencia común de esta secuencia?', 
 '4', '5', '6', '7', 'B', 5, 11, 'Secuencias aritméticas: Problemas'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Problema de aplicación con secuencias', 
 'Un teatro tiene 20 filas de asientos. La primera fila tiene 15 asientos, y cada fila sucesiva tiene 2 asientos más que la fila anterior. Este arreglo forma una secuencia aritmética donde la diferencia común es 2.', 
 NULL, NULL, NULL, 
 '¿Cuántos asientos hay en la última fila del teatro?', 
 '51', '53', '55', '57', 'B', 5, 11, 'Secuencias aritméticas: Problemas'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Suma de términos en secuencia aritmética', 
 'La suma de los primeros n términos de una secuencia aritmética está dada por la fórmula: Sₙ = n/2 (2a₁ + (n-1)d). Una secuencia particular tiene a₁ = 8 y d = 3.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma de los primeros 12 términos de esta secuencia?', 
 '294', '312', '330', '348', 'A', 5, 11, 'Secuencias aritméticas: Problemas'),

-- Preguntas para el tema: Secuencias geométricas: Problemas
-- Pregunta 1
('MATEMÁTICA', NULL, 'Término general de secuencia geométrica', 
 'Una secuencia geométrica tiene como primer término 3 y una razón común de 2. El término general de una secuencia geométrica está dado por: aₙ = a₁ × r^(n-1), donde a₁ es el primer término y r es la razón común.', 
 NULL, NULL, NULL, 
 '¿Cuál es el sexto término de esta secuencia?', 
 '48', '96', '192', '384', 'B', 5, 11, 'Secuencias geométricas: Problemas'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Crecimiento poblacional geométrico', 
 'Una población de bacterias se duplica cada hora. Si inicialmente hay 100 bacterias, el crecimiento sigue una secuencia geométrica con razón común 2.', 
 NULL, NULL, NULL, 
 '¿Cuántas bacterias habrá después de 6 horas?', 
 '3200', '6400', '12800', '25600', 'B', 5, 11, 'Secuencias geométricas: Problemas'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Razón común en secuencia geométrica', 
 'En una secuencia geométrica, el tercer término es 18 y el sexto término es 486. La razón común (r) puede encontrarse usando la fórmula: aₙ = a₁ × r^(n-1).', 
 NULL, NULL, NULL, 
 '¿Cuál es la razón común de esta secuencia?', 
 '2', '3', '4', '5', 'B', 5, 11, 'Secuencias geométricas: Problemas'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Aplicación de secuencias geométricas', 
 'Un automóvil se deprecia un 20% cada año. Si su valor inicial es de $25,000, su valor cada año forma una secuencia geométrica con razón común 0.8 (100% - 20% = 80% = 0.8).', 
 NULL, NULL, NULL, 
 '¿Cuál será el valor del automóvil después de 4 años?', 
 '$10,240', '$12,800', '$15,360', '$20,000', 'A', 5, 11, 'Secuencias geométricas: Problemas'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Suma de términos en secuencia geométrica', 
 'La suma de los primeros n términos de una secuencia geométrica está dada por: Sₙ = a₁(1 - rⁿ)/(1 - r) para r ≠ 1. Una secuencia particular tiene a₁ = 5 y r = 3.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma de los primeros 5 términos de esta secuencia?', 
 '365', '605', '1215', '3645', 'B', 5, 11, 'Secuencias geométricas: Problemas'),

-- Preguntas para el tema: Interés compuesto. Depreciación anual
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cálculo de interés compuesto', 
 'El interés compuesto se calcula con la fórmula: A = P(1 + r/n)^(nt), donde P es el principal, r la tasa anual, n el número de veces que se capitaliza por año, y t el tiempo en años. Un capital de $10,000 se invierte al 5% anual capitalizable trimestralmente.', 
 NULL, NULL, NULL, 
 '¿Cuál será el monto acumulado después de 2 años?', 
 '$11,025.16', '$11,038.13', '$11,050.00', '$11,102.50', 'B', 5, 11, 'Interés compuesto. Depreciación anual'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Comparación interés simple vs compuesto', 
 'El interés simple se calcula como I = P×r×t, mientras que el compuesto como A = P(1 + r)^t. Se invierten $5,000 al 8% anual durante 3 años.', 
 NULL, NULL, NULL, 
 '¿Cuál es la diferencia entre el interés compuesto y el simple para esta inversión?', 
 '$97.28', '$102.40', '$124.86', '$147.20', 'A', 5, 11, 'Interés compuesto. Depreciación anual'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Tasa efectiva anual', 
 'La tasa efectiva anual (TEA) considera la capitalización y se calcula como: TEA = (1 + r/n)^n - 1, donde r es la tasa nominal y n el número de capitalizaciones por año. Una inversión ofrece 12% anual capitalizable mensualmente.', 
 NULL, NULL, NULL, 
 '¿Cuál es la tasa efectiva anual?', 
 '12.00%', '12.68%', '12.86%', '13.00%', 'B', 5, 11, 'Interés compuesto. Depreciación anual'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Depreciación anual de equipos', 
 'Un equipo industrial de $80,000 se deprecia un 15% anual. Su valor después de t años se calcula como V = P(1 - d)^t, donde P es el valor inicial y d la tasa de depreciación.', 
 NULL, NULL, NULL, 
 '¿Cuál será el valor del equipo después de 5 años?', 
 '$35,469.25', '$39,930.50', '$44,367.22', '$48,000.00', 'A', 5, 11, 'Interés compuesto. Depreciación anual'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Tiempo para duplicar inversión', 
 'La Regla del 72 estima el tiempo para duplicar una inversión como 72/r, donde r es la tasa de interés en porcentaje. Para cálculos exactos se usa la fórmula del interés compuesto.', 
 NULL, NULL, NULL, 
 '¿Aproximadamente cuántos años tardará en duplicarse una inversión al 6% anual compuesto?', 
 '10 años', '12 años', '14 años', '16 años', 'B', 5, 11, 'Interés compuesto. Depreciación anual'),

-- Preguntas para el tema: Series. Notación sumatoria y propiedades
-- Pregunta 1
('MATEMÁTICA', NULL, 'Notación sumatoria básica', 
 'La notación sumatoria (Σ) es una forma compacta de representar la suma de una secuencia de términos. Por ejemplo, Σ(k=1 a 5) de k representa 1 + 2 + 3 + 4 + 5.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de Σ(n=1 a 4) de (2n + 1)?', 
 '15', '20', '24', '30', 'B', 5, 11, 'Series. Notación sumatoria y propiedades'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Propiedades de las sumatorias', 
 'Las sumatorias tienen propiedades como: Σ(caₙ) = cΣaₙ, Σ(aₙ + bₙ) = Σaₙ + Σbₙ, y Σ(k=1 a n) c = nc. Considere Σ(k=1 a 10) 5 = 50 como ejemplo de la última propiedad.', 
 NULL, NULL, NULL, 
 'Si Σ(k=1 a 5) aₖ = 12 y Σ(k=1 a 5) bₖ = 8, ¿cuánto es Σ(k=1 a 5) (3aₖ - 2bₖ)?', 
 '12', '20', '28', '36', 'B', 5, 11, 'Series. Notación sumatoria y propiedades'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Suma de constantes', 
 'La suma de una constante c desde k=1 hasta n es simplemente n×c, ya que se está sumando la misma cantidad n veces.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de Σ(i=1 a 7) 4?', 
 '7', '14', '21', '28', 'D', 5, 11, 'Series. Notación sumatoria y propiedades'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Cambio de índice en sumatoria', 
 'El índice de una sumatoria puede cambiarse mediante una sustitución adecuada. Por ejemplo, Σ(k=3 a 6) k² es igual a Σ(j=1 a 4) (j+2)² al hacer j = k - 2.', 
 NULL, NULL, NULL, 
 'Si Σ(m=2 to 5) (3m - 1) = 38, ¿cuál es el valor de Σ(p=0 to 3) (3p + 5)?', 
 '26', '38', '42', '50', 'B', 5, 11, 'Series. Notación sumatoria y propiedades'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Suma de cuadrados', 
 'Existen fórmulas para sumas especiales como: Σ(k=1 a n) k = n(n+1)/2 y Σ(k=1 a n) k² = n(n+1)(2n+1)/6.', 
 NULL, NULL, NULL, 
 '¿Cuál es el valor de Σ(k=1 a 4) k²?', 
 '10', '20', '30', '40', 'C', 5, 11, 'Series. Notación sumatoria y propiedades'),

-- Preguntas para el tema: Series aritméticas: fórmula 1 y fórmula 2
-- Pregunta 1
('MATEMÁTICA', NULL, 'Suma de serie aritmética (fórmula 1)', 
 'La suma de los primeros n términos de una serie aritmética puede calcularse con Sₙ = n/2 (a₁ + aₙ), donde a₁ es el primer término y aₙ el último término.', 
 NULL, NULL, NULL, 
 'Para la serie 3 + 7 + 11 + ... + 39, ¿cuál es la suma total?', 
 '210', '220', '230', '240', 'A', 5, 11, 'Series aritméticas: fórmula 1 y fórmula 2'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Suma de serie aritmética (fórmula 2)', 
 'Alternativamente, la suma puede calcularse con Sₙ = n/2 [2a₁ + (n-1)d], donde d es la diferencia común. Una serie tiene a₁ = 5, d = 4 y n = 10.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma de los primeros 10 términos?', 
 '210', '230', '250', '270', 'B', 5, 11, 'Series aritméticas: fórmula 1 y fórmula 2'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Aplicación de series aritméticas', 
 'Un atleta entrena aumentando 2 km cada semana. La primera semana corre 10 km. El entrenamiento forma una serie aritmética con a₁ = 10 y d = 2.', 
 NULL, NULL, NULL, 
 '¿Cuántos kilómetros habrá corrido en total después de 8 semanas?', 
 '136', '144', '152', '160', 'A', 5, 11, 'Series aritméticas: fórmula 1 y fórmula 2'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Número de términos en serie', 
 'Para encontrar el número de términos n en una serie aritmética, se puede usar aₙ = a₁ + (n-1)d. Una serie comienza en 12, termina en 60 y tiene d = 4.', 
 NULL, NULL, NULL, 
 '¿Cuántos términos tiene esta serie?', 
 '12', '13', '14', '15', 'B', 5, 11, 'Series aritméticas: fórmula 1 y fórmula 2'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Promedio en serie aritmética', 
 'En una serie aritmética, el promedio de todos los términos es igual al promedio del primer y último término: (a₁ + aₙ)/2.', 
 NULL, NULL, NULL, 
 'Para la serie 5, 9, 13, ..., 41, ¿cuál es el promedio de todos sus términos?', 
 '21', '23', '25', '27', 'B', 5, 11, 'Series aritméticas: fórmula 1 y fórmula 2'),

-- Preguntas para el tema: Series geométricas. Series infinitas
-- Pregunta 1
('MATEMÁTICA', NULL, 'Suma de serie geométrica finita', 
 'La suma de los primeros n términos de una serie geométrica es Sₙ = a₁(1 - rⁿ)/(1 - r) para r ≠ 1. Una serie tiene a₁ = 3, r = 2 y n = 5.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma de los primeros 5 términos?', 
 '93', '96', '99', '102', 'A', 5, 11, 'Series geométricas. Series infinitas'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Suma de serie geométrica infinita', 
 'Para |r| < 1, la suma infinita converge a S = a₁/(1 - r). Una serie infinita tiene a₁ = 8 y r = 1/4.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma infinita de esta serie?', 
 '10', '10.5', '10.666...', '11', 'C', 5, 11, 'Series geométricas. Series infinitas'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Aplicación de series geométricas', 
 'Una pelota rebota a 2/3 de su altura anterior después de cada caída. Si se deja caer desde 27 metros, la distancia total recorrida forma una serie geométrica infinita.', 
 NULL, NULL, NULL, 
 '¿Cuál es la distancia total recorrida hasta que la pelota se detiene?', 
 '81 metros', '108 metros', '135 metros', '162 metros', 'C', 5, 11, 'Series geométricas. Series infinitas'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Razón en serie geométrica', 
 'En una serie geométrica, si se conocen dos términos consecutivos, la razón r es el cociente entre ellos: r = aₙ₊₁/aₙ.', 
 NULL, NULL, NULL, 
 'En una serie donde a₃ = 12 y a₄ = 6, ¿cuál es la razón común?', 
 '0.25', '0.5', '1.5', '2.0', 'B', 5, 11, 'Series geométricas. Series infinitas'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Serie geométrica alternante', 
 'Las series geométricas alternantes tienen razón negativa. La serie 4 - 2 + 1 - 0.5 + ... tiene a₁ = 4 y r = -0.5.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma infinita de esta serie?', 
 '2', '2.5', '2.666...', '3', 'C', 5, 11, 'Series geométricas. Series infinitas');

-- 1. Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Lanzamiento de moneda', 'En probabilidad, un experimento es cualquier proceso que produce un resultado o una observación. Considera el experimento de lanzar una moneda al aire dos veces consecutivas.', NULL, NULL, NULL, '¿Cuál de las siguientes opciones describe correctamente el espacio muestral de este experimento?', 'Cara, Sello', 'Cara-Cara, Cara-Sello, Sello-Sello', 'Cara-Cara, Cara-Sello, Sello-Cara, Sello-Sello', '0, 1, 2 caras', 'C', 5, 11, 'Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso'),
('MATEMÁTICA', NULL, 'Eventos en un dado', 'Se lanza un dado de seis caras numeradas del 1 al 6. Un suceso es cualquier subconjunto del espacio muestral.', NULL, NULL, NULL, 'Si definimos el suceso A como "obtener un número par", ¿cuál de los siguientes sería el suceso A?', '{1, 3, 5}', '{2, 4, 6}', '{1, 2, 3, 4, 5, 6}', '{0}', 'B', 5, 11, 'Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso'),
('MATEMÁTICA', NULL, 'Resultados equiprobables', 'En probabilidad, los resultados son equiprobables cuando tienen la misma posibilidad de ocurrir.', NULL, NULL, NULL, '¿Cuál de los siguientes experimentos NO tiene resultados equiprobables?', 'Lanzar una moneda justa', 'Lanzar un dado no cargado de 6 caras', 'Seleccionar una carta al azar de un mazo estándar', 'Girar una ruleta con sectores de tamaños desiguales', 'D', 5, 11, 'Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso'),
('MATEMÁTICA', NULL, 'Definición de espacio muestral', 'El espacio muestral (U) es el conjunto de todos los posibles resultados de un experimento aleatorio.', NULL, NULL, NULL, 'Al extraer una bola de una urna que contiene 3 bolas rojas, 2 azules y 1 verde, ¿cuál es el espacio muestral?', '{Rojo, Azul, Verde}', '{1, 2, 3}', '{Rojo, Rojo, Rojo, Azul, Azul, Verde}', '{R, A, V}', 'A', 5, 11, 'Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso'),
('MATEMÁTICA', NULL, 'Identificación de sucesos', 'Un suceso es cualquier subconjunto del espacio muestral que puede ocurrir al realizar un experimento aleatorio.', NULL, NULL, NULL, 'En el experimento de lanzar un dado, ¿cuál de los siguientes NO representa un suceso válido?', 'Obtener un número mayor que 4', 'Obtener un número primo', 'Obtener un número negativo', 'Obtener un número par o impar', 'C', 5, 11, 'Conceptos de experimento, resultado, resultados equiprobables, espacio muestral (U) y suceso'),

-- 2. Definición clásica de probabilidad
('MATEMÁTICA', NULL, 'Cálculo básico de probabilidad', 'La definición clásica de probabilidad establece que P(A) = número de casos favorables / número de casos posibles, cuando todos los resultados son equiprobables.', NULL, NULL, NULL, '¿Cuál es la probabilidad de obtener un 5 al lanzar un dado de 6 caras?', '1/6', '5/6', '1/5', '1/2', 'A', 5, 11, 'Definición clásica de probabilidad'),
('MATEMÁTICA', NULL, 'Probabilidad de eventos simples', 'Según la definición clásica, la probabilidad de un evento es la razón entre los casos favorables y los casos posibles.', NULL, NULL, NULL, 'En una bolsa hay 4 bolas rojas, 3 azules y 3 verdes. ¿Cuál es la probabilidad de sacar una bola azul?', '3/4', '3/10', '1/3', '3/7', 'B', 5, 11, 'Definición clásica de probabilidad'),
('MATEMÁTICA', NULL, 'Aplicación de la definición clásica', 'La probabilidad clásica requiere que todos los resultados posibles sean igualmente probables.', NULL, NULL, NULL, 'Si una ruleta está dividida en 8 sectores iguales numerados del 1 al 8, ¿cuál es la probabilidad de que al girarla se detenga en un número par?', '1/2', '1/8', '3/8', '5/8', 'A', 5, 11, 'Definición clásica de probabilidad'),
('MATEMÁTICA', NULL, 'Comparación de probabilidades', 'La probabilidad clásica es útil para calcular chances en situaciones ideales con resultados equiprobables.', NULL, NULL, NULL, 'En un mazo estándar de 52 cartas, ¿qué es más probable?', 'Sacar un corazón', 'Sacar una figura (J, Q o K)', 'Sacar un as', 'Sacar una carta roja', 'D', 5, 11, 'Definición clásica de probabilidad'),
('MATEMÁTICA', NULL, 'Límites de la probabilidad clásica', 'La probabilidad según la definición clásica siempre está entre 0 y 1, donde 0 es imposible y 1 es seguro.', NULL, NULL, NULL, '¿Cuál de las siguientes probabilidades NO es posible según la definición clásica?', '0.5', '1', '1.2', '0', 'C', 5, 11, 'Definición clásica de probabilidad'),

-- 3. Probabilidad experimental
('MATEMÁTICA', NULL, 'Frecuencia relativa', 'La probabilidad experimental se basa en la frecuencia relativa de un evento después de repetir muchas veces un experimento.', NULL, NULL, NULL, 'Si al lanzar una moneda 100 veces obtenemos 45 caras, ¿cuál es la probabilidad experimental de obtener cara?', '0.45', '0.5', '0.55', '0.4', 'A', 5, 11, 'Probabilidad experimental'),
('MATEMÁTICA', NULL, 'Comparación teórica vs experimental', 'La probabilidad experimental puede diferir de la teórica, especialmente con pocos ensayos.', NULL, NULL, NULL, 'Juan lanzó un dado 60 veces y obtuvo 8 veces el número 6. ¿Cómo se compara la probabilidad experimental con la teórica?', 'Experimental menor', 'Experimental mayor', 'Iguales', 'No se puede comparar', 'A', 5, 11, 'Probabilidad experimental'),
('MATEMÁTICA', NULL, 'Ley de los grandes números', 'La probabilidad experimental se acerca a la teórica conforme aumenta el número de ensayos.', NULL, NULL, NULL, '¿Qué fenómeno explica que al repetir un experimento muchas veces, la frecuencia relativa se estabiliza?', 'Ley de los promedios', 'Ley de los grandes números', 'Teorema del límite central', 'Principio de incertidumbre', 'B', 5, 11, 'Probabilidad experimental'),
('MATEMÁTICA', NULL, 'Aplicación práctica', 'La probabilidad experimental es útil cuando no se conocen las probabilidades teóricas.', NULL, NULL, NULL, 'Un fabricante prueba 1000 bombillas y encuentra 15 defectuosas. ¿Cuál es la probabilidad experimental de que una bombilla sea defectuosa?', '0.15', '0.015', '0.0015', '1.5', 'B', 5, 11, 'Probabilidad experimental'),
('MATEMÁTICA', NULL, 'Limitaciones del enfoque experimental', 'La probabilidad experimental depende del número de ensayos realizados.', NULL, NULL, NULL, '¿Por qué la probabilidad experimental puede no ser confiable con pocos ensayos?', 'Porque es demasiado precisa', 'Porque puede variar mucho debido al azar', 'Porque siempre iguala a la teórica', 'Porque requiere cálculos complejos', 'B', 5, 11, 'Probabilidad experimental'),

-- Continuaría con los demás temas de la misma manera...
-- (El script completo incluiría los 13 temas con 5 preguntas cada uno)

-- 4. Espacio muestral
('MATEMÁTICA', NULL, 'Espacio muestral compuesto', 'El espacio muestral puede representar todos los posibles resultados de experimentos compuestos.', NULL, NULL, NULL, 'Si lanzamos una moneda y luego un dado, ¿cuántos elementos tiene el espacio muestral?', '8', '12', '6', '2', 'B', 5, 11, 'Espacio muestral'),
('MATEMÁTICA', NULL, 'Representación del espacio muestral', 'El espacio muestral puede representarse de diferentes formas según la naturaleza del experimento.', NULL, NULL, NULL, '¿Cuál de las siguientes NO es una forma común de representar un espacio muestral?', 'Diagrama de árbol', 'Tabla de contingencia', 'Lista de elementos', 'Ecuación cuadrática', 'D', 5, 11, 'Espacio muestral'),
('MATEMÁTICA', NULL, 'Cardinalidad del espacio muestral', 'La cardinalidad se refiere al número de elementos en un conjunto.', NULL, NULL, NULL, 'Al extraer con reposición 2 cartas de una baraja de 4 cartas (A, B, C, D), ¿cuál es la cardinalidad del espacio muestral?', '8', '12', '16', '4', 'C', 5, 11, 'Espacio muestral'),
('MATEMÁTICA', NULL, 'Identificación de espacios muestrales', 'Diferentes experimentos tienen diferentes espacios muestrales.', NULL, NULL, NULL, '¿Cuál de los siguientes experimentos tiene un espacio muestral infinito?', 'Lanzar un dado hasta obtener un 6', 'Medir la altura de estudiantes', 'Contar autos rojos que pasan en una hora', 'Extraer una bola de una urna con 10 bolas', 'B', 5, 11, 'Espacio muestral'),
('MATEMÁTICA', NULL, 'Espacios muestrales continuos', 'Algunos experimentos tienen espacios muestrales continuos en lugar de discretos.', NULL, NULL, NULL, '¿Qué ejemplo representa un espacio muestral continuo?', 'Resultado de lanzar un dado', 'Número de hijos en una familia', 'Tiempo de vida de una bombilla', 'Número de caras en 10 lanzamientos', 'C', 5, 11, 'Espacio muestral'),

-- 5. Probabilidad teórica
('MATEMÁTICA', NULL, 'Cálculo de probabilidad teórica', 'La probabilidad teórica se calcula analizando la estructura del experimento.', NULL, NULL, NULL, '¿Cuál es la probabilidad teórica de obtener al menos una cara al lanzar dos monedas?', '1/4', '1/2', '3/4', '1', 'C', 5, 11, 'Probabilidad teórica'),
('MATEMÁTICA', NULL, 'Eventos igualmente probables', 'La probabilidad teórica asume resultados igualmente probables en situaciones ideales.', NULL, NULL, NULL, 'En una urna con 3 bolas rojas y 7 azules, ¿cuál es la probabilidad teórica de sacar roja?', '0.3', '0.7', '0.5', '0.03', 'A', 5, 11, 'Probabilidad teórica'),
('MATEMÁTICA', NULL, 'Comparación con resultados reales', 'La probabilidad teórica puede diferir de los resultados observados en la práctica.', NULL, NULL, NULL, '¿Por qué la probabilidad teórica de obtener cara es 0.5 aunque en 10 lanzamientos se obtengan 7 caras?', 'Por error en los cálculos', 'Porque la teoría es incorrecta', 'Por variabilidad aleatoria en muestras pequeñas', 'Porque la moneda está cargada', 'C', 5, 11, 'Probabilidad teórica'),
('MATEMÁTICA', NULL, 'Aplicación en juegos de azar', 'La probabilidad teórica es fundamental en el análisis de juegos de azar.', NULL, NULL, NULL, 'En la ruleta europea (37 números), ¿cuál es la probabilidad teórica de ganar apostando a un número específico?', '1/37', '1/36', '1/2', '1/18', 'A', 5, 11, 'Probabilidad teórica'),
('MATEMÁTICA', NULL, 'Limitaciones de la probabilidad teórica', 'La probabilidad teórica tiene limitaciones en situaciones complejas o desconocidas.', NULL, NULL, NULL, '¿En qué caso NO es adecuado usar probabilidad teórica?', 'Lanzamiento de dados equilibrados', 'Selección aleatoria de cartas de un mazo', 'Predecir el resultado de un partido de fútbol', 'Giro de una ruleta equilibrada', 'C', 5, 11, 'Probabilidad teórica'),

-- 6. Eventos complementarios A y A' (no A)
('MATEMÁTICA', NULL, 'Identificación de eventos complementarios', 'Dos eventos son complementarios cuando uno es la negación del otro y juntos cubren todo el espacio muestral.', NULL, NULL, NULL, 'Si A es "lloverá mañana", ¿cuál es su evento complementario A?', 'No lloverá hoy', 'No lloverá mañana', 'Lloverá hoy', 'Hará sol mañana', 'B', 5, 11, 'Eventos complementarios A y A'' (no A)'),
('MATEMÁTICA', NULL, 'Probabilidad de eventos complementarios', 'La suma de probabilidades de eventos complementarios siempre es 1.', NULL, NULL, NULL, 'Si P(A) = 0.35, ¿cuál es P(A'')?', '0.35', '0.65', '0.75', '0.55', 'B', 5, 11, 'Eventos complementarios A y A'' (no A)'),
('MATEMÁTICA', NULL, 'Aplicación de complementariedad', 'Los eventos complementarios son útiles para calcular probabilidades indirectamente.', NULL, NULL, NULL, 'La probabilidad de que un estudiante apruebe es 0.8. ¿Cuál es la probabilidad de que NO apruebe?', '0.1', '0.2', '0.8', '0.5', 'B', 5, 11, 'Eventos complementarios A y A'' (no A)'),
('MATEMÁTICA', NULL, 'Relación entre eventos', 'Eventos complementarios son mutuamente excluyentes y colectivamente exhaustivos.', NULL, NULL, NULL, '¿Qué característica NO comparten los eventos complementarios?', 'P(A) + P(A'') = 1', 'A ∩ A'' = ∅', 'A ∪ A'' = U', 'P(A) = P(A'')', 'D', 5, 11, 'Eventos complementarios A y A'' (no A)'),
('MATEMÁTICA', NULL, 'Ejemplo práctico', 'En la vida real encontramos muchos ejemplos de eventos complementarios.', NULL, NULL, NULL, 'En un examen de opción múltiple con 4 opciones, ¿cuál es el evento complementario de "responder correctamente"?', 'No responder', 'Responder incorrectamente', 'Dejar en blanco', 'Marcar dos opciones', 'B', 5, 11, 'Eventos complementarios A y A'' (no A)'),

-- 7. Probabilidades: Tablas de resultados
('MATEMÁTICA', NULL, 'Construcción de tablas de resultados', 'Las tablas de resultados son útiles para visualizar todos los posibles resultados de un experimento compuesto.', NULL, NULL, NULL, 'Al lanzar dos dados, ¿cuántos resultados posibles muestra la tabla de resultados completa?', '12', '24', '36', '6', 'C', 5, 11, 'Probabilidades: Tablas de resultados'),
('MATEMÁTICA', NULL, 'Interpretación de tablas', 'Las tablas de resultados permiten calcular probabilidades de eventos compuestos.', NULL, NULL, NULL, 'En una tabla de resultados para lanzar dos monedas, ¿cuántas celdas muestran resultados con al menos una cara?', '1', '2', '3', '4', 'C', 5, 11, 'Probabilidades: Tablas de resultados'),
('MATEMÁTICA', NULL, 'Probabilidad usando tablas', 'Las tablas de resultados organizan sistemáticamente los eventos posibles.', NULL, NULL, NULL, 'Usando una tabla de resultados para lanzar un dado y una moneda, ¿cuál es la probabilidad de obtener número par y cara?', '1/4', '1/2', '1/6', '1/12', 'A', 5, 11, 'Probabilidades: Tablas de resultados'),
('MATEMÁTICA', NULL, 'Eventos en tablas', 'Las tablas muestran claramente la relación entre eventos simples y compuestos.', NULL, NULL, NULL, 'En una tabla de lanzar dos dados, ¿cuántos resultados suman exactamente 7?', '4', '5', '6', '7', 'C', 5, 11, 'Probabilidades: Tablas de resultados'),
('MATEMÁTICA', NULL, 'Ventajas de las tablas', 'Las tablas de resultados son especialmente útiles para experimentos con dos etapas.', NULL, NULL, NULL, '¿Para cuál de estos experimentos sería MENOS práctico usar una tabla de resultados?', 'Lanzar dos monedas', 'Extraer dos cartas sin reposición', 'Lanzar un dado 10 veces', 'Girar una ruleta y lanzar una moneda', 'C', 5, 11, 'Probabilidades: Tablas de resultados'),

-- 8. Probabilidades: Eventos compuestos
('MATEMÁTICA', NULL, 'Definición de eventos compuestos', 'Un evento compuesto combina dos o más eventos simples usando "y" o "o".', NULL, NULL, NULL, 'Al lanzar un dado, ¿cuál es un ejemplo de evento compuesto?', 'Obtener un 3', 'Obtener un número menor que 3 o par', 'Obtener un número', 'Obtener un resultado', 'B', 5, 11, 'Probabilidades: Eventos compuestos'),
('MATEMÁTICA', NULL, 'Probabilidad de "y"', 'La probabilidad de que ocurran dos eventos A y B depende de si son independientes.', NULL, NULL, NULL, 'Si P(A)=0.5 y P(B)=0.4, y son independientes, ¿cuál es P(A y B)?', '0.2', '0.9', '0.1', '0.02', 'A', 5, 11, 'Probabilidades: Eventos compuestos'),
('MATEMÁTICA', NULL, 'Probabilidad de "o"', 'Para eventos no mutuamente excluyentes, P(A o B) = P(A) + P(B) - P(A y B).', NULL, NULL, NULL, 'En una clase, 30% estudia francés, 40% estudia alemán y 10% estudia ambos. ¿Qué porcentaje estudia francés o alemán?', '70%', '60%', '80%', '50%', 'B', 5, 11, 'Probabilidades: Eventos compuestos'),
('MATEMÁTICA', NULL, 'Eventos dependientes', 'En eventos dependientes, la ocurrencia de uno afecta la probabilidad del otro.', NULL, NULL, NULL, 'En una urna con 3 rojas y 2 azules, al sacar dos sin reposición, ¿cómo se calcula P(1° roja y 2° azul)?', '3/5 × 2/4', '3/5 + 2/4', '3/5 × 2/5', '3/5 - 2/4', 'A', 5, 11, 'Probabilidades: Eventos compuestos'),
('MATEMÁTICA', NULL, 'Aplicación en situaciones reales', 'Los eventos compuestos modelan muchas situaciones de la vida cotidiana.', NULL, NULL, NULL, 'Si la probabilidad de lluvia el sábado es 0.3 y el domingo 0.4, ¿cuál es la probabilidad de que llueva al menos un día?', '0.12', '0.7', '0.58', '0.82', 'C', 5, 11, 'Probabilidades: Eventos compuestos'),

-- 9. Probabilidades: Eventos independientes y dependientes
('MATEMÁTICA', NULL, 'Identificación de independencia', 'Dos eventos son independientes si la ocurrencia de uno no afecta al otro.', NULL, NULL, NULL, '¿Cuál par de eventos es independiente?', 'Sacar un as y luego otro as sin reposición', 'Lanzar una moneda dos veces', 'Ser hombre y tener cabello largo', 'Hacer trampa en un examen y ser castigado', 'B', 5, 11, 'Probabilidades: Eventos independientes y dependientes'),
('MATEMÁTICA', NULL, 'Probabilidad condicional', 'Para eventos dependientes, P(A y B) = P(A) × P(B|A).', NULL, NULL, NULL, 'En una baraja de 52 cartas, al sacar dos sin reposición, ¿cuál es P(1° as y 2° as)?', '4/52 × 3/51', '4/52 + 3/51', '4/52 × 4/52', '1/13 × 1/13', 'A', 5, 11, 'Probabilidades: Eventos independientes y dependientes'),
('MATEMÁTICA', NULL, 'Prueba de independencia', 'Eventos independientes cumplen P(A|B) = P(A).', NULL, NULL, NULL, 'Si P(A)=0.5, P(B)=0.4 y P(A|B)=0.5, ¿son A y B independientes?', 'Sí', 'No', 'Depende', 'No se puede determinar', 'A', 5, 11, 'Probabilidades: Eventos independientes y dependientes'),
('MATEMÁTICA', NULL, 'Ejemplo de dependencia', 'Muchos eventos en la vida real muestran dependencia estadística.', NULL, NULL, NULL, '¿Cuál es un ejemplo claro de eventos dependientes?', 'Lanzar un dado y una moneda', 'Sacar dos cartas con reposición', 'El color de ojos y cabello de una persona', 'La lotería de dos semanas distintas', 'C', 5, 11, 'Probabilidades: Eventos independientes y dependientes'),
('MATEMÁTICA', NULL, 'Cálculo con independencia', 'Para eventos independientes, P(A y B) = P(A) × P(B).', NULL, NULL, NULL, 'Si P(A)=0.6, P(B)=0.3 y son independientes, ¿cuál es P(A y B)?', '0.18', '0.9', '0.3', '0.6', 'A', 5, 11, 'Probabilidades: Eventos independientes y dependientes'),

-- 10. Probabilidades: Diagrama de árbol
('MATEMÁTICA', NULL, 'Construcción de diagramas', 'Los diagramas de árbol representan visualmente experimentos secuenciales.', NULL, NULL, NULL, 'Al lanzar una moneda y luego un dado, ¿cuántas ramas terminales tiene el diagrama de árbol?', '2', '6', '8', '12', 'D', 5, 11, 'Probabilidades: Diagrama de árbol'),
('MATEMÁTICA', NULL, 'Cálculo con diagramas', 'Las probabilidades en las ramas se multiplican para obtener probabilidades compuestas.', NULL, NULL, NULL, 'En un diagrama de árbol con P(A)=0.4 en la 1° rama y P(B|A)=0.3 en la 2°, ¿cuál es P(A y B)?', '0.12', '0.7', '0.3', '1.2', 'A', 5, 11, 'Probabilidades: Diagrama de árbol'),
('MATEMÁTICA', NULL, 'Ventajas de los diagramas', 'Los diagramas de árbol son especialmente útiles para experimentos con etapas.', NULL, NULL, NULL, '¿Para cuál situación sería más útil un diagrama de árbol?', 'Calcular la media de un conjunto de datos', 'Analizar un experimento de tres etapas', 'Determinar la moda de una distribución', 'Calcular el rango intercuartílico', 'B', 5, 11, 'Probabilidades: Diagrama de árbol'),
('MATEMÁTICA', NULL, 'Probabilidades condicionales', 'Los diagramas de árbol muestran claramente las probabilidades condicionales.', NULL, NULL, NULL, 'En una urna con 3R/2A, al sacar dos sin reposición, ¿qué probabilidad va en la rama "2°A" dado que "1°R" ocurrió?', '2/5', '1/2', '2/4', '3/5', 'C', 5, 11, 'Probabilidades: Diagrama de árbol'),
('MATEMÁTICA', NULL, 'Aplicación práctica', 'Los diagramas de árbol ayudan a resolver problemas complejos de probabilidad.', NULL, NULL, NULL, 'Una fábrica tiene dos máquinas: M1 produce 60% con 2% defectos, M2 40% con 3% defectos. ¿Qué muestra correctamente el diagrama?', 'Primera rama: M1 0.6 y M2 0.4', 'Primera rama: Defectuoso 0.02 y Bueno 0.98', 'Todas las ramas tienen igual probabilidad', 'No se puede representar con árbol', 'A', 5, 11, 'Probabilidades: Diagrama de árbol'),

-- 11. Muestreo con reposición y sin reposición
('MATEMÁTICA', NULL, 'Definición de muestreo con reposición', 'En el muestreo con reposición, las probabilidades no cambian entre extracciones.', NULL, NULL, NULL, '¿Cuál característica describe el muestreo con reposición?', 'El espacio muestral disminuye', 'Los eventos son dependientes', 'Las probabilidades se mantienen constantes', 'Es imposible repetir resultados', 'C', 5, 11, 'Muestreo con reposición y sin reposición'),
('MATEMÁTICA', NULL, 'Muestreo sin reposición', 'En el muestreo sin reposición, cada extracción afecta las siguientes.', NULL, NULL, NULL, 'En una urna con 5 bolas (3R,2A), al sacar dos sin reposición, ¿cuál es P(1°R y 2°A)?', '3/5 × 2/4', '3/5 × 2/5', '3/5 + 2/4', '3/5 - 2/4', 'A', 5, 11, 'Muestreo con reposición y sin reposición'),
('MATEMÁTICA', NULL, 'Comparación de métodos', 'La elección entre reposición o no afecta los cálculos de probabilidad.', NULL, NULL, NULL, '¿En qué caso las probabilidades son iguales con o sin reposición?', 'Población muy pequeña', 'Población infinita', 'Muestras grandes', 'Eventos mutuamente excluyentes', 'B', 5, 11, 'Muestreo con reposición y sin reposición'),
('MATEMÁTICA', NULL, 'Aplicación en encuestas', 'El muestreo sin reposición es común en estudios de poblaciones finitas.', NULL, NULL, NULL, 'Al encuestar 50 personas de un pueblo de 1000, ¿qué tipo de muestreo es más realista?', 'Con reposición', 'Sin reposición', 'Aleatorio simple', 'Estratificado', 'B', 5, 11, 'Muestreo con reposición y sin reposición'),
('MATEMÁTICA', NULL, 'Impacto en la independencia', 'El muestreo sin reposición crea dependencia entre extracciones.', NULL, NULL, NULL, '¿Por qué en el muestreo sin reposición los eventos son dependientes?', 'Porque el espacio muestral cambia', 'Porque se usan diferentes urnas', 'Porque las probabilidades son iguales', 'Porque se repiten los elementos', 'A', 5, 11, 'Muestreo con reposición y sin reposición'),

-- 12. Diagramas de Venn
('MATEMÁTICA', NULL, 'Interpretación de Venn', 'Los diagramas de Venn representan relaciones entre conjuntos y sus probabilidades.', NULL, NULL, NULL, 'En un diagrama de Venn para eventos A y B, ¿qué representa la intersección?', 'Solo A', 'Solo B', 'A o B', 'A y B simultáneamente', 'D', 5, 11, 'Diagramas de Venn'),
('MATEMÁTICA', NULL, 'Cálculo con Venn', 'Los diagramas de Venn ayudan a visualizar P(A ∪ B) = P(A) + P(B) - P(A ∩ B).', NULL, NULL, NULL, 'Si en un Venn P(A)=0.4, P(B)=0.5 y P(A∩B)=0.2, ¿cuál es P(A∪B)?', '0.7', '0.9', '0.2', '0.1', 'A', 5, 11, 'Diagramas de Venn'),
('MATEMÁTICA', NULL, 'Eventos mutuamente excluyentes', 'En los diagramas de Venn, eventos mutuamente excluyentes no se superponen.', NULL, NULL, NULL, '¿Cómo se ven dos eventos mutuamente excluyentes en un diagrama de Venn?', 'Círculos superpuestos', 'Círculos separados', 'Un círculo dentro de otro', 'Círculos que se tocan en un punto', 'B', 5, 11, 'Diagramas de Venn'),
('MATEMÁTICA', NULL, 'Complemento en Venn', 'El complemento de un evento A es todo lo que está fuera de su círculo en el diagrama.', NULL, NULL, NULL, 'En un diagrama de Venn con P(A)=0.3, ¿qué área representa P(A'')?', '0.3', '0.7', '1.3', '0', 'B', 5, 11, 'Diagramas de Venn'),
('MATEMÁTICA', NULL, 'Aplicación en problemas complejos', 'Los diagramas de Venn son útiles para resolver problemas con múltiples eventos.', NULL, NULL, NULL, 'En una escuela, 60% estudia matemáticas, 40% física y 30% ambas. ¿Qué porcentaje estudia solo matemáticas?', '30%', '10%', '60%', '70%', 'A', 5, 11, 'Diagramas de Venn'),

-- 13. Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada
('MATEMÁTICA', NULL, 'Ley de la adición', 'La ley de la adición establece que P(A ∪ B) = P(A) + P(B) - P(A ∩ B).', NULL, NULL, NULL, 'Si P(A) = 0.4, P(B) = 0.3 y P(A ∩ B) = 0.1, ¿cuál es P(A ∪ B)?', '0.6', '0.7', '0.8', '0.5', 'A', 5, 11, 'Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada'),
('MATEMÁTICA', NULL, 'Eventos mutuamente excluyentes', 'Eventos mutuamente excluyentes no pueden ocurrir simultáneamente.', NULL, NULL, NULL, '¿Cuál es la probabilidad de la unión de dos eventos mutuamente excluyentes con P(A)=0.3 y P(B)=0.5?', '0.8', '0.15', '0.2', '0.65', 'A', 5, 11, 'Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada'),
('MATEMÁTICA', NULL, 'Probabilidad condicional', 'La probabilidad condicional P(A|B) es la probabilidad de A dado que B ha ocurrido.', NULL, NULL, NULL, 'Si P(A ∩ B) = 0.2 y P(B) = 0.5, ¿cuál es P(A|B)?', '0.4', '0.25', '0.1', '0.7', 'A', 5, 11, 'Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada'),
('MATEMÁTICA', NULL, 'Eventos exhaustivos', 'Un conjunto de eventos es exhaustivo si al menos uno debe ocurrir.', NULL, NULL, NULL, '¿Cuál de los siguientes conjuntos de eventos es exhaustivo para el lanzamiento de un dado?', '{1, 2, 3}', '{par, impar}', '{mayor que 3, menor que 3}', '{1, 2, 3, 4, 5}', 'B', 5, 11, 'Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada'),
('MATEMÁTICA', NULL, 'Aplicación combinada', 'Las leyes de probabilidad permiten resolver problemas complejos combinando diferentes conceptos.', NULL, NULL, NULL, 'Si A y B son independientes con P(A)=0.6 y P(B)=0.4, ¿cuál es P(A ∩ B)?', '0.24', '1.0', '0.10', '0.20', 'A', 5, 11, 'Leyes de la probabilidad: Ley de la adición P(A U B), Eventos mutuamente excluyentes, Eventos exhaustivos, Probabilidad condicionada');


-- PREGUNTAS INGLÉS 5° SECUNDARIA
-- Preguntas para el tema: Stereotypes and Gender roles
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', NULL, 'Gender Stereotypes in Careers', 
'Gender stereotypes often influence career choices from an early age. Research shows that certain professions are traditionally associated with specific genders, which can limit opportunities for individuals. Understanding these stereotypes is crucial for promoting equality in the workplace.', 
NULL, NULL, NULL, 
'Which of the following professions is most commonly stereotyped as a "female" career?', 
'Nurse', 'Engineer', 'Pilot', 'Construction worker', 
'A', 4, 11, 'Stereotypes and Gender roles'),

-- Pregunta 2
('INGLÉS', NULL, 'Breaking Gender Norms', 
'Traditional gender roles have been challenged in recent decades, with more people pursuing interests and careers regardless of gender expectations. This shift has led to greater diversity in many fields previously dominated by one gender.', 
NULL, NULL, NULL, 
'What is the main consequence of breaking traditional gender roles in society?', 
'Increased gender equality in various professions', 
'Complete elimination of all gender differences', 
'Decreased productivity in workplaces', 
'More rigid gender expectations', 
'B', 4, 11, 'Stereotypes and Gender roles'),

-- Pregunta 3
('INGLÉS', NULL, 'Media Representation', 
'The media plays a significant role in reinforcing or challenging gender stereotypes. Television shows, movies, and advertisements often portray men and women in traditional roles, but there has been progress in more diverse representations in recent years.', 
NULL, NULL, NULL, 
'How does media representation affect gender stereotypes?', 
'It has no impact on societal perceptions', 
'It can reinforce or challenge existing stereotypes', 
'It only affects children under 10 years old', 
'It eliminates all stereotypes immediately', 
'C', 4, 11, 'Stereotypes and Gender roles'),

-- Pregunta 4
('INGLÉS', NULL, 'Toys and Gender Socialization', 
'From an early age, children are often given different toys based on their gender, which contributes to the development of gender roles. Boys might receive action figures and building sets, while girls are given dolls and domestic play sets.', 
NULL, NULL, NULL, 
'What is a potential long-term effect of gender-specific toy marketing?', 
'No effect on career choices later in life', 
'Limited development of certain skills based on gender', 
'Complete elimination of gender differences', 
'Increased interest in all careers equally', 
'D', 4, 11, 'Stereotypes and Gender roles'),

-- Pregunta 5
('INGLÉS', NULL, 'Language and Gender Bias', 
'Language can reflect and perpetuate gender biases. Many languages, including English, have masculine terms as defaults or use different descriptors for the same behavior based on gender (e.g., "bossy" for women vs. "assertive" for men).', 
NULL, NULL, NULL, 
'Which of the following is an example of gender-biased language?', 
'Using "firefighter" instead of "fireman"', 
'Saying "chairperson" instead of "chairman"', 
'Referring to all doctors as "he" by default', 
'Using gender-neutral terms in job titles', 
'A', 4, 11, 'Stereotypes and Gender roles'),

-- Preguntas para el tema: Homeschooling and social relationships: Myths and Facts
('INGLÉS', NULL, 'Socialization Concerns', 
'Homeschooling is often criticized for potentially limiting children''s social interactions. However, many homeschooling families actively participate in community groups, sports teams, and other social activities to ensure their children develop strong interpersonal skills.', 
NULL, NULL, NULL, 
'Which of the following is a common myth about homeschooling?', 
'Homeschooled children have no social interactions', 
'Homeschooling allows for personalized learning', 
'Parents can choose their own curriculum', 
'Some homeschooled children excel academically', 
'B', 4, 11, 'Homeschooling and social relationships: Myths and Facts'),

-- Pregunta 2
('INGLÉS', NULL, 'Academic Performance', 
'Studies comparing homeschooled students to traditionally schooled students have shown mixed results, with some indicating superior performance by homeschooled students in certain subjects, while others show little difference in academic outcomes.', 
NULL, NULL, NULL, 
'What does research generally show about homeschooled students'' academic performance?', 
'They consistently perform worse than traditionally schooled students', 
'They perform about the same or better in many subjects', 
'They excel only in mathematics but not in other subjects', 
'Their performance cannot be measured accurately', 
'C', 4, 11, 'Homeschooling and social relationships: Myths and Facts'),

-- Pregunta 3
('INGLÉS', NULL, 'Extracurricular Activities', 
'Contrary to popular belief, many homeschooled students participate in a variety of extracurricular activities, including sports teams, music lessons, and community service, often through local homeschooling networks or community programs.', 
NULL, NULL, NULL, 
'How do most homeschooled students participate in extracurricular activities?', 
'They don''t participate in any activities', 
'Through public school programs in some states', 
'Through homeschooling networks and community programs', 
'They only participate in academic competitions', 
'A', 4, 11, 'Homeschooling and social relationships: Myths and Facts'),

-- Pregunta 4
('INGLÉS', NULL, 'College Admissions', 
'Many colleges and universities have established admission policies specifically for homeschooled applicants, recognizing that their educational backgrounds may differ from traditional school graduates.', 
NULL, NULL, NULL, 
'How do most colleges view homeschooled applicants?', 
'They are automatically rejected', 
'They are evaluated using the same criteria as other applicants', 
'Many have specific policies for homeschooled applicants', 
'They can only attend community colleges', 
'D', 4, 11, 'Homeschooling and social relationships: Myths and Facts'),

-- Pregunta 5
('INGLÉS', NULL, 'Parental Qualifications', 
'Requirements for parents who homeschool their children vary by state and country, with some requiring teaching credentials or regular testing, while others have minimal regulations.', 
NULL, NULL, NULL, 
'What is generally required for parents to homeschool their children?', 
'A teaching degree is always mandatory', 
'Requirements vary significantly by location', 
'Parents must pass a competency test yearly', 
'Only certified teachers can homeschool', 
'B', 4, 11, 'Homeschooling and social relationships: Myths and Facts'),

-- Preguntas para el tema: Education: Mitigate Crime, Poverty and Drug use through education
('INGLÉS', NULL, 'Education as Prevention', 
'Numerous studies have shown a strong correlation between education levels and reduced likelihood of engaging in criminal activity. Education provides individuals with more opportunities and alternative paths to success.', 
NULL, NULL, NULL, 
'How does education help mitigate crime rates?', 
'By keeping youth occupied during daytime hours', 
'By providing alternative opportunities and life skills', 
'By enforcing strict discipline in schools', 
'By eliminating poverty completely', 
'C', 4, 11, 'Education: Mitigate Crime, Poverty and Drug use through education'),

-- Pregunta 2
('INGLÉS', NULL, 'Poverty Reduction', 
'Education is widely recognized as one of the most effective tools for breaking the cycle of poverty. Each additional year of schooling can significantly increase an individual''s earning potential and economic mobility.', 
NULL, NULL, NULL, 
'What is the primary way education helps reduce poverty?', 
'By providing free meals to all students', 
'By increasing earning potential and economic mobility', 
'By eliminating the need for social services', 
'By guaranteeing government jobs to graduates', 
'B', 4, 11, 'Education: Mitigate Crime, Poverty and Drug use through education'),

-- Pregunta 3
('INGLÉS', NULL, 'Drug Use Prevention', 
'School-based drug prevention programs have shown varying degrees of effectiveness, with the most successful ones focusing on building life skills and resistance strategies rather than just providing information about drugs.', 
NULL, NULL, NULL, 
'What makes drug education programs most effective?', 
'Scare tactics showing extreme consequences', 
'Focusing only on the chemical effects of drugs', 
'Building life skills and resistance strategies', 
'Avoiding any discussion of drugs altogether', 
'A', 4, 11, 'Education: Mitigate Crime, Poverty and Drug use through education'),

-- Pregunta 4
('INGLÉS', NULL, 'Early Childhood Education', 
'Investment in early childhood education has demonstrated significant long-term benefits, including reduced rates of incarceration and increased lifetime earnings, particularly for children from disadvantaged backgrounds.', 
NULL, NULL, NULL, 
'Why is early childhood education particularly impactful?', 
'It''s cheaper than educating older students', 
'It provides the strongest foundation for future learning', 
'Children learn faster before age 5', 
'It eliminates the need for further education', 
'D', 4, 11, 'Education: Mitigate Crime, Poverty and Drug use through education'),

-- Pregunta 5
('INGLÉS', NULL, 'Vocational Training', 
'Vocational education programs that provide marketable skills have been successful in reducing unemployment rates among at-risk youth and providing alternative paths to economic stability.', 
NULL, NULL, NULL, 
'How does vocational education contribute to crime reduction?', 
'By keeping students in school longer hours', 
'By providing immediate job skills and employment prospects', 
'By focusing only on academic subjects', 
'By replacing traditional high school education', 
'B', 4, 11, 'Education: Mitigate Crime, Poverty and Drug use through education'),

-- Preguntas para el tema: Effects of alcoholism on social relationships: Alcoholic Memoirs
('INGLÉS', NULL, 'Family Dynamics', 
'Alcoholism often strains family relationships, leading to broken trust, financial difficulties, and emotional distress. Many memoirs detail the devastating impact alcoholism can have on family units.', 
NULL, NULL, NULL, 
'Which of the following is a common effect of alcoholism on family relationships?', 
'Improved communication among family members', 
'Increased trust and bonding', 
'Financial stability and security', 
'Broken trust and emotional distress', 
'D', 4, 11, 'Effects of alcoholism on social relationships: Alcoholic Memoirs'),

-- Pregunta 2
('INGLÉS', NULL, 'Workplace Consequences', 
'Alcoholism can significantly impact professional life, leading to decreased productivity, absenteeism, and eventually job loss, which further exacerbates personal and financial problems.', 
NULL, NULL, NULL, 
'How does alcoholism typically affect a person''s professional life?', 
'It improves focus and productivity', 
'It leads to promotions and raises', 
'It causes decreased productivity and absenteeism', 
'It has no noticeable effect on work performance', 
'A', 4, 11, 'Effects of alcoholism on social relationships: Alcoholic Memoirs'),

-- Pregunta 3
('INGLÉS', NULL, 'Social Isolation', 
'As alcoholism progresses, individuals often withdraw from social circles, either by choice or because friends distance themselves from the destructive behavior, leading to increased isolation.', 
NULL, NULL, NULL, 
'Why do alcoholics often experience social isolation?', 
'Because they prefer to be alone', 
'Friends may distance themselves from destructive behavior', 
'They become more popular and busy', 
'They develop better social skills when drinking', 
'C', 4, 11, 'Effects of alcoholism on social relationships: Alcoholic Memoirs'),

-- Pregunta 4
('INGLÉS', NULL, 'Financial Impact', 
'The financial consequences of alcoholism extend beyond the cost of alcohol itself, including lost wages, legal fees, and medical expenses, which can devastate families economically.', 
NULL, NULL, NULL, 
'Which financial burden is NOT typically associated with alcoholism?', 
'Cost of alcohol purchases', 
'Lost wages due to unemployment', 
'Increased savings and investments', 
'Legal fees from alcohol-related incidents', 
'B', 4, 11, 'Effects of alcoholism on social relationships: Alcoholic Memoirs'),

-- Pregunta 5
('INGLÉS', NULL, 'Recovery and Reconciliation', 
'Many alcoholic memoirs highlight the difficult but rewarding journey of recovery, including efforts to repair damaged relationships and rebuild trust with family and friends.', 
NULL, NULL, NULL, 
'What is a common theme in memoirs about alcoholism recovery?', 
'The impossibility of repairing damaged relationships', 
'The quick and easy process of becoming sober', 
'The ongoing effort to rebuild trust and relationships', 
'The lack of need for support from others', 
'A', 4, 11, 'Effects of alcoholism on social relationships: Alcoholic Memoirs');

-- Preguntas para el tema: The First Hello
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', null, 'First Encounters', 
'When meeting someone for the first time in an English-speaking country, there are certain phrases and customs that are considered polite and appropriate. Understanding these cultural norms is essential for effective communication.', 
null, null, null, 
'Which of the following is the most appropriate greeting when meeting someone for the first time in a formal setting?', 
'Hey, what''s up?', 'Hi, my name is [Your Name]. Nice to meet you.', 
'Yo, how you doing?', 'No words, just a handshake', 
'B', 4, 11, 'The First Hello'),

-- Pregunta 2
('INGLÉS', null, 'Cultural Greetings', 
'Different cultures have different norms for greetings. In English-speaking countries, certain behaviors are expected during first meetings.', 
null, null, null, 
'What is typically expected after someone says "Nice to meet you" in a formal introduction?', 
'Ignore the person and walk away', 'Respond with "Nice to meet you too"', 
'Laugh loudly', 'Ask personal questions immediately', 
'B', 4, 11, 'The First Hello'),

-- Pregunta 3
('INGLÉS', null, 'Body Language', 
'Non-verbal communication plays a significant role in first encounters. The way you present yourself can affect how others perceive you.', 
null, null, null, 
'Which of these non-verbal behaviors is considered appropriate during a first meeting?', 
'Avoiding eye contact completely', 'Maintaining appropriate eye contact', 
'Standing very close to the person', 'Crossing your arms tightly', 
'B', 4, 11, 'The First Hello'),

-- Pregunta 4
('INGLÉS', null, 'Follow-up Questions', 
'After the initial greeting, it''s common to engage in small talk to establish rapport. Certain topics are considered safe while others might be too personal.', 
null, null, null, 
'Which of these would be an appropriate follow-up question after the initial greeting?', 
'How much money do you make?', 'What do you do for a living?', 
'Are you married?', 'How old are you?', 
'B', 4, 11, 'The First Hello'),

-- Pregunta 5
('INGLÉS', null, 'Closing the Conversation', 
'Ending a first conversation politely is as important as starting it well. There are culturally accepted ways to conclude an initial meeting.', 
null, null, null, 
'What would be an appropriate way to end a first conversation in a professional setting?', 
'Just walk away without saying anything', 'It was nice meeting you. Have a good day!', 
'I''m bored, let''s stop talking', 'Can I have your phone number?', 
'B', 4, 11, 'The First Hello'),

-- Preguntas para el tema: From dark
('INGLÉS', null, 'Darkness in Literature', 
'Many literary works use the concept of darkness both literally and metaphorically to convey deeper meanings and themes.', 
null, null, null, 
'In literature, darkness is often used as a metaphor for:', 
'Joy and happiness', 'Ignorance or the unknown', 
'Financial wealth', 'Physical strength', 
'B', 4, 11, 'From dark'),

('INGLÉS', null, 'Overcoming Challenges', 
'Stories about emerging from darkness often symbolize personal growth and overcoming difficulties.', 
null, null, null, 
'When a character in a story "comes from the dark," it typically means they:', 
'Have perfect vision at night', 'Have overcome a difficult period in their life', 
'Prefer to sleep during the day', 'Are afraid of the light', 
'B', 4, 11, 'From dark'),

('INGLÉS', null, 'Symbolic Meanings', 
'Darkness can represent various concepts depending on the context in which it''s used in a story or poem.', 
null, null, null, 
'Which of these is NOT a common symbolic meaning of darkness in literature?', 
'Mystery', 'Evil', 
'Clarity and understanding', 'Fear', 
'C', 4, 11, 'From dark'),

('INGLÉS', null, 'Light vs Dark', 
'The contrast between light and dark is a common theme in literature and art, often representing opposing forces or ideas.', 
null, null, null, 
'In the context of "from dark," what might light typically represent?', 
'More darkness', 'Hope or knowledge', 
'Confusion', 'Danger', 
'B', 4, 11, 'From dark'),

('INGLÉS', null, 'Personal Transformation', 
'Journeys from darkness to light often symbolize personal transformation and enlightenment in stories.', 
null, null, null, 
'What does a character''s emergence from darkness usually symbolize in literature?', 
'A preference for nighttime activities', 'Personal growth or enlightenment', 
'A fear of bright lights', 'A need for sunglasses', 
'B', 4, 11, 'From dark'),

-- Preguntas para el tema: On the metro
('INGLÉS', null, 'Public Transportation Etiquette', 
'Using public transportation like the metro in English-speaking countries requires knowledge of both language and cultural norms.', 
null, null, null, 
'What is considered polite behavior when riding the metro?', 
'Playing loud music without headphones', 'Offering your seat to elderly or pregnant passengers', 
'Eating messy foods', 'Putting your feet on the seats', 
'B', 4, 11, 'On the metro'),

('INGLÉS', null, 'Navigating the Metro', 
'Understanding how to ask for directions and read metro maps is essential for using public transportation in English-speaking cities.', 
null, null, null, 
'If you need to ask for directions on the metro, what''s the most appropriate way to begin your question?', 
'Hey you, tell me how to get to...', 'Excuse me, could you tell me how to get to...', 
'I demand to know how to get to...', 'Just point silently at the map', 
'B', 4, 11, 'On the metro'),

('INGLÉS', null, 'Metro Announcements', 
'Understanding metro announcements is crucial for navigating the system successfully in an English-speaking country.', 
null, null, null, 
'What does it typically mean when you hear "This is a downtown-bound train"?', 
'The train is going to the city center', 'The train is going to the suburbs', 
'The train is out of service', 'The train is going backwards', 
'A', 4, 11, 'On the metro'),

('INGLÉS', null, 'Metro Safety', 
'Knowing safety procedures and etiquette is important when using metro systems in foreign countries.', 
null, null, null, 
'What should you do if you see an unattended bag on the metro?', 
'Open it to see what''s inside', 'Ignore it completely', 
'Report it to metro staff or authorities', 'Take it with you', 
'C', 4, 11, 'On the metro'),

('INGLÉS', null, 'Purchasing Tickets', 
'Buying metro tickets requires understanding specific vocabulary and procedures in English.', 
null, null, null, 
'If you want to buy a metro ticket that allows unlimited rides for one day, you should ask for a:', 
'Single ticket', 'Round-trip ticket', 
'Day pass', 'Monthly card', 
'C', 4, 11, 'On the metro');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Impact of man on nature
('INGLÉS', NULL, 'Human Activities and Ecosystems', 
'Human activities have significantly altered natural ecosystems worldwide. Deforestation, pollution, and urbanization are some of the ways humans impact nature. Understanding these effects is crucial for developing sustainable practices that can help preserve biodiversity and maintain ecological balance for future generations.', 
NULL, NULL, NULL, 
'Which of the following is the most significant cause of deforestation worldwide?', 
'Natural forest fires', 'Agricultural expansion', 
'Climate change effects', 'Indigenous hunting practices', 
'B', 4, 11, 'Impact of man on nature'),

('INGLÉS', NULL, 'Industrialization Consequences', 
'The rapid industrialization of the past two centuries has brought both economic growth and environmental challenges. While industries provide jobs and products, they also contribute to pollution and resource depletion. Recognizing these impacts helps societies make informed decisions about industrial development and environmental protection.', 
NULL, NULL, NULL, 
'What is the primary environmental concern associated with industrial activities?', 
'Noise pollution in cities', 'Depletion of non-renewable resources', 
'Increased greenhouse gas emissions', 'Changes in local wildlife migration', 
'C', 4, 11, 'Impact of man on nature'),

('INGLÉS', NULL, 'Urban Expansion Effects', 
'As urban areas expand, they transform natural landscapes into built environments. This process affects local ecosystems, water cycles, and air quality. Urban planning that considers environmental impacts can help create more sustainable cities that coexist harmoniously with nature.', 
NULL, NULL, NULL, 
'How does urban sprawl primarily affect wildlife habitats?', 
'By increasing biodiversity in city centers', 
'By fragmenting and reducing natural habitats', 
'By creating new ecosystems in suburbs', 
'By forcing animals to adapt to nocturnal lifestyles', 
'B', 4, 11, 'Impact of man on nature'),

('INGLÉS', NULL, 'Agricultural Impacts', 
'Modern agriculture feeds billions but also alters landscapes and ecosystems. The use of fertilizers, pesticides, and large-scale irrigation systems has consequences for soil health, water quality, and biodiversity. Sustainable farming practices aim to reduce these negative impacts while maintaining food production.', 
NULL, NULL, NULL, 
'What is a major environmental problem caused by intensive farming?', 
'Reduction in atmospheric oxygen levels', 
'Soil degradation and loss of fertility', 
'Increase in earth''s rotational speed', 
'Changes in the moon''s gravitational pull', 
'B', 4, 11, 'Impact of man on nature'),

('INGLÉS', NULL, 'Technological Solutions', 
'Technology plays a dual role in humanity''s relationship with nature. While some technologies have caused environmental harm, others offer solutions for conservation and sustainability. Renewable energy, waste management systems, and environmental monitoring technologies demonstrate how innovation can support ecological preservation.', 
NULL, NULL, NULL, 
'Which technological advancement helps mitigate human impact on nature?', 
'Faster internet connections', 
'Satellite monitoring of deforestation', 
'Virtual reality gaming systems', 
'Automated stock trading algorithms', 
'B', 4, 11, 'Impact of man on nature'),

-- Drug abuse
('INGLÉS', NULL, 'Understanding Addiction', 
'Drug abuse is a serious global issue affecting individuals, families, and communities. It involves the harmful or hazardous use of psychoactive substances, including alcohol and illicit drugs. Education about the risks and consequences of drug abuse is essential for prevention, especially among adolescents.', 
NULL, NULL, NULL, 
'What is the primary factor that leads to drug addiction?', 
'Genetic predisposition only', 
'Peer pressure only', 
'Complex interaction of biological, psychological, and social factors', 
'Lack of willpower alone', 
'C', 4, 11, 'Drug abuse'),

('INGLÉS', NULL, 'Health Consequences', 
'The health effects of drug abuse extend beyond the individual user to society at large. Chronic drug use can lead to mental health disorders, physical illnesses, and increased risk of accidents. Understanding these consequences helps young people make informed decisions about substance use.', 
NULL, NULL, NULL, 
'Which organ is most directly affected by long-term alcohol abuse?', 
'Liver', 'Heart', 'Lungs', 'Skin', 
'A', 4, 11, 'Drug abuse'),

('INGLÉS', NULL, 'Social Impacts', 
'Drug abuse creates significant social problems including crime, violence, and family breakdown. It also places a heavy burden on healthcare systems and reduces productivity in workplaces. Addressing drug abuse requires a comprehensive approach involving education, treatment, and community support.', 
NULL, NULL, NULL, 
'How does drug abuse primarily affect families?', 
'By increasing family income', 
'By creating emotional and financial stress', 
'By improving communication among members', 
'By reducing household chores', 
'B', 4, 11, 'Drug abuse'),

('INGLÉS', NULL, 'Prevention Strategies', 
'Effective drug abuse prevention programs focus on building life skills, increasing awareness of risks, and promoting healthy alternatives. Schools play a crucial role in providing evidence-based drug education that empowers students to resist peer pressure and make positive choices.', 
NULL, NULL, NULL, 
'What is the most effective school-based approach to prevent drug abuse?', 
'Occasional lectures from former addicts', 
'Comprehensive education programs that build resilience', 
'Random drug testing of all students', 
'Banning discussions about drugs', 
'B', 4, 11, 'Drug abuse'),

('INGLÉS', NULL, 'Legal Consequences', 
'Drug abuse carries serious legal consequences that can affect a person''s future opportunities. Possession, use, or distribution of illegal substances may result in criminal charges, fines, or imprisonment. Understanding these legal implications is an important aspect of drug education.', 
NULL, NULL, NULL, 
'Which of the following is a legal consequence of drug possession in many countries?', 
'Receiving academic awards', 
'Criminal record affecting future employment', 
'Automatic college scholarships', 
'Priority for government housing', 
'B', 4, 11, 'Drug abuse'),

-- Environmental impact
('INGLÉS', NULL, 'Climate Change Drivers', 
'Human activities are significantly altering Earth''s climate through the release of greenhouse gases. The environmental impact of these changes includes rising global temperatures, melting ice caps, and more extreme weather events. Understanding these impacts is crucial for developing mitigation and adaptation strategies.', 
NULL, NULL, NULL, 
'Which human activity contributes most to climate change?', 
'Burning of fossil fuels', 
'Recycling programs', 
'Urban gardening', 
'Using bicycles for transportation', 
'A', 4, 11, 'Environmental impact'),

('INGLÉS', NULL, 'Plastic Pollution', 
'Plastic waste has become one of the most pressing environmental issues, with millions of tons entering oceans each year. This pollution harms marine life, enters the food chain, and persists in ecosystems for centuries. Reducing plastic use and improving waste management are critical solutions.', 
NULL, NULL, NULL, 
'What is the main environmental problem caused by plastic waste?', 
'It makes the ocean look less attractive', 
'It decomposes quickly and releases nutrients', 
'It persists for centuries and harms wildlife', 
'It increases ocean salinity', 
'C', 4, 11, 'Environmental impact'),

('INGLÉS', NULL, 'Water Resource Management', 
'Human activities are affecting freshwater resources through pollution, over-extraction, and climate change. Clean water is essential for all life, and protecting water sources ensures sustainable supplies for future generations. Responsible water use and conservation are everyone''s responsibility.', 
NULL, NULL, NULL, 
'What is the primary cause of freshwater scarcity in many regions?', 
'Excessive rainfall', 
'Overuse and mismanagement of water resources', 
'Too many water treatment plants', 
'Increased cloud formation', 
'B', 4, 11, 'Environmental impact'),

('INGLÉS', NULL, 'Biodiversity Loss', 
'The current rate of species extinction is much higher than natural background rates, primarily due to human activities. Habitat destruction, pollution, climate change, and overexploitation are driving this biodiversity crisis. Protecting ecosystems maintains essential services that support human life.', 
NULL, NULL, NULL, 
'What is the main cause of current biodiversity loss?', 
'Natural selection processes', 
'Human alteration of habitats', 
'Increased solar radiation', 
'Evolutionary changes in species', 
'B', 4, 11, 'Environmental impact'),

('INGLÉS', NULL, 'Air Quality Issues', 
'Air pollution from industrial emissions, vehicle exhaust, and other sources affects human health and ecosystems. Poor air quality contributes to respiratory diseases, acid rain, and climate change. Implementing cleaner technologies and reducing emissions can improve air quality worldwide.', 
NULL, NULL, NULL, 
'Which component of air pollution is most harmful to human health?', 
'Oxygen', 
'Particulate matter (PM2.5)', 
'Nitrogen (N2)', 
'Water vapor', 
'B', 4, 11, 'Environmental impact'),

-- Environmental awareness
('INGLÉS', NULL, 'Sustainable Living', 
'Environmental awareness involves understanding how human actions affect the natural world and making choices that minimize negative impacts. Sustainable living practices, such as reducing waste and conserving energy, help protect ecosystems and ensure resources for future generations.', 
NULL, NULL, NULL, 
'Which everyday action best demonstrates environmental awareness?', 
'Leaving lights on when not in use', 
'Using reusable shopping bags', 
'Driving short distances alone', 
'Disposing of electronics in regular trash', 
'B', 4, 11, 'Environmental awareness'),

('INGLÉS', NULL, 'Education''s Role', 
'Environmental education empowers individuals to make informed decisions about ecological issues. By teaching about sustainability, conservation, and responsible consumption, schools can foster a generation that values and protects natural resources.', 
NULL, NULL, NULL, 
'Why is environmental education important in schools?', 
'It reduces the need for science teachers', 
'It prepares students to address ecological challenges', 
'It increases school utility bills', 
'It focuses only on theoretical knowledge', 
'B', 4, 11, 'Environmental awareness'),

('INGLÉS', NULL, 'Community Initiatives', 
'Local communities play a vital role in environmental protection through initiatives like tree planting, clean-up campaigns, and recycling programs. These collective actions raise awareness while directly improving local environments and fostering community spirit.', 
NULL, NULL, NULL, 
'What is the main benefit of community environmental projects?', 
'They replace the need for government action', 
'They provide immediate local improvements while raising awareness', 
'They eliminate all environmental problems', 
'They are only effective in rural areas', 
'B', 4, 11, 'Environmental awareness'),

('INGLÉS', NULL, 'Media Influence', 
'The media significantly shapes public understanding of environmental issues through news coverage, documentaries, and social media. Accurate and engaging environmental reporting can inspire action, while misinformation can hinder progress toward sustainability.', 
NULL, NULL, NULL, 
'How can media best contribute to environmental awareness?', 
'By avoiding coverage of environmental issues', 
'By providing sensationalized disaster stories', 
'By offering accurate, solutions-oriented reporting', 
'By focusing only on positive news', 
'C', 4, 11, 'Environmental awareness'),

('INGLÉS', NULL, 'Individual Responsibility', 
'While large-scale environmental problems require systemic solutions, individual actions collectively make a significant difference. Conscious consumption, waste reduction, and advocacy demonstrate how personal choices contribute to broader environmental protection efforts.', 
NULL, NULL, NULL, 
'Which personal habit most effectively reduces environmental impact?', 
'Buying single-use plastic bottles daily', 
'Using public transportation instead of private cars', 
'Leaving appliances on standby mode', 
'Disposing of hazardous waste improperly', 
'B', 4, 11, 'Environmental awareness');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Preguntas sobre Social Networking
('INGLÉS', NULL, 'Social Media Impact', 
'Social networking has revolutionized how people interact globally. Platforms like Facebook, Instagram, and Twitter allow instant communication across continents. However, excessive use can lead to issues like decreased face-to-face interaction and privacy concerns. Understanding proper social media etiquette is crucial for teenagers.',
NULL, NULL, NULL, 
'What is one major advantage of social networking mentioned in the text?', 
'Instant global communication', 'Reduced need for internet access', 
'Complete privacy protection', 'Elimination of all social problems', 
'A', 4, 11, 'Social networking'),

('INGLÉS', NULL, 'Online Behavior', 
'Appropriate behavior on social media is essential for maintaining positive relationships and professional reputation. Cyberbullying and oversharing personal information are common issues that teenagers should be aware of when using these platforms.',
NULL, NULL, NULL, 
'Which of the following is considered inappropriate behavior on social media?', 
'Posting respectful comments', 'Sharing personal passwords publicly', 
'Following official news accounts', 'Liking friends'' posts occasionally', 
'B', 4, 11, 'Social networking'),

('INGLÉS', NULL, 'Privacy Settings', 
'Most social media platforms offer various privacy settings to control who can see your posts and personal information. Understanding these settings helps protect your digital footprint and prevents unwanted sharing of your content.',
NULL, NULL, NULL, 
'Why is it important to review privacy settings on social media?', 
'To increase the number of ads you see', 'To protect your personal information', 
'To make your account less secure', 'To automatically share all posts publicly', 
'B', 4, 11, 'Social networking'),

('INGLÉS', NULL, 'Digital Footprint', 
'Everything you post online contributes to your digital footprint, which can be viewed by potential employers and colleges years later. Teenagers should be mindful that their online activity can have long-term consequences on their future opportunities.',
NULL, NULL, NULL, 
'What does the term "digital footprint" refer to?', 
'The size of your social media photos', 'The trail of data you leave online', 
'The number of devices you own', 'Your internet connection speed', 
'B', 4, 11, 'Social networking'),

('INGLÉS', NULL, 'Social Media Balance', 
'While social media offers many benefits, maintaining a healthy balance between online and offline activities is important for mental health and personal development. Experts recommend setting time limits for social media use.',
NULL, NULL, NULL, 
'What is a recommended practice for healthy social media use?', 
'Using it continuously throughout the day', 'Setting time limits for daily use', 
'Checking notifications immediately upon waking', 'Posting every hour to stay active', 
'B', 4, 11, 'Social networking'),

-- Preguntas sobre A few poems about Facebook
('INGLÉS', NULL, 'Poetic Perspectives', 
'Modern poets have written about Facebook as both a connector and divider of people. Some poems highlight how it brings distant friends together, while others critique its superficial nature. Analyzing these poems helps understand complex views on social media.',
NULL, NULL, NULL, 
'What contrasting views about Facebook do some poems present?', 
'Only positive aspects', 'Only negative aspects', 
'Both connecting and dividing people', 'Exclusively technical details', 
'C', 4, 11, 'A few poems about facebook'),

('INGLÉS', NULL, 'Metaphors in Digital Poetry', 
'Contemporary poets often use metaphors comparing Facebook to things like "a digital scrapbook" or "a virtual town square." These literary devices help readers visualize abstract concepts about social media interactions.',
NULL, NULL, NULL, 
'Why do poets use metaphors when writing about Facebook?', 
'To make technical manuals', 'To visualize abstract concepts', 
'To provide login instructions', 'To list user statistics', 
'B', 4, 11, 'A few poems about facebook'),

('INGLÉS', NULL, 'Emotional Tone', 
'Poems about Facebook vary in emotional tone - some are nostalgic about reconnecting with old friends, while others express frustration with constant notifications and comparisons. Recognizing tone helps interpret the poet''s message.',
NULL, NULL, NULL, 
'Which emotional tones are found in Facebook poems according to the text?', 
'Only happiness', 'Only anger', 
'Nostalgia and frustration', 'Complete indifference', 
'C', 4, 11, 'A few poems about facebook'),

('INGLÉS', NULL, 'Poetic Structure', 
'Some poems about Facebook use unconventional structures, mimicking the layout of a Facebook page or the fragmented nature of online communication. This creative formatting enhances the thematic connection to digital media.',
NULL, NULL, NULL, 
'How do some poems mimic Facebook characteristics?', 
'By using login forms as stanzas', 'Through conventional sonnet forms', 
'By copying the site''s color scheme exactly', 'Through fragmented structures resembling online communication', 
'D', 4, 11, 'A few poems about facebook'),

('INGLÉS', NULL, 'Cultural Reflection', 
'Poems about Facebook often reflect broader cultural changes in communication, examining how digital interactions differ from traditional face-to-face conversations and what this means for human relationships.',
NULL, NULL, NULL, 
'What broader cultural aspect do Facebook poems frequently address?', 
'Changes in weather patterns', 'Evolution of communication methods', 
'Historical political events', 'Advances in medical technology', 
'B', 4, 11, 'A few poems about facebook'),

-- Preguntas sobre Internet: Cellphones and sustainable development
('INGLÉS', NULL, 'Mobile Technology Impact', 
'Smartphones have become essential tools for sustainable development, providing access to education, healthcare information, and financial services in remote areas. However, their production and disposal raise environmental concerns that need addressing.',
NULL, NULL, NULL, 
'How can smartphones contribute to sustainable development?', 
'By increasing electronic waste', 'By providing access to education in remote areas', 
'By using more energy than computers', 'By preventing all communication', 
'B', 4, 11, 'Internet: Cellphones and sustainable development'),

('INGLÉS', NULL, 'E-Waste Challenge', 
'The rapid replacement cycle of cellphones generates significant electronic waste containing hazardous materials. Proper recycling programs and longer device usage can mitigate this environmental impact.',
NULL, NULL, NULL, 
'What is a major environmental concern related to cellphones?', 
'Generation of electronic waste', 'Production of clean water', 
'Reduction in carbon emissions', 'Increase in renewable energy', 
'A', 4, 11, 'Internet: Cellphones and sustainable development'),

('INGLÉS', NULL, 'Digital Inclusion', 
'Mobile internet access helps bridge the digital divide, enabling participation in the digital economy. Sustainable development goals emphasize affordable connectivity as key to reducing inequalities.',
NULL, NULL, NULL, 
'How does mobile internet support sustainable development goals?', 
'By creating more expensive devices', 'By widening the digital divide', 
'By enabling participation in the digital economy', 'By reducing internet access overall', 
'C', 4, 11, 'Internet: Cellphones and sustainable development'),

('INGLÉS', NULL, 'Energy Efficiency', 
'Newer smartphone models are designed with better energy efficiency and use recycled materials. Consumers can contribute to sustainability by choosing environmentally friendly devices and recycling old ones.',
NULL, NULL, NULL, 
'What feature makes newer smartphones more sustainable?', 
'Larger physical size', 'Better energy efficiency', 
'Shorter battery life', 'More non-recyclable materials', 
'B', 4, 11, 'Internet: Cellphones and sustainable development'),

('INGLÉS', NULL, 'Health Applications', 
'Mobile health applications provide remote diagnostics and medical advice, particularly valuable in developing regions with limited healthcare infrastructure. This technology supports sustainable health development goals.',
NULL, NULL, NULL, 
'How can mobile phones improve healthcare in developing regions?', 
'By replacing all doctors', 'Through remote diagnostics and medical advice', 
'By eliminating hospitals', 'Through increasing medication costs', 
'B', 4, 11, 'Internet: Cellphones and sustainable development'),

-- Questions for topic: Global Communication: Top 5 mobile innovations
-- Question 1
(
    'INGLÉS', NULL, 'Mobile Payment Revolution', 
    'The introduction of mobile payment systems has transformed how people conduct transactions worldwide. These innovations allow users to make purchases, transfer money, and manage finances directly from their smartphones, reducing the need for physical wallets and credit cards.',
    NULL, NULL, NULL, 'Which of the following is NOT typically a feature of modern mobile payment systems?',
    'Requires physical signature for every transaction', 'Uses encryption for security', 'Can be linked to bank accounts', 'Allows contactless payments',
    'A', 4, 11, 'Global Communication: Top 5 mobile innovations'
),
-- Question 2
(
    'INGLÉS', NULL, 'Biometric Authentication', 
    'Modern smartphones now incorporate advanced biometric security features that go beyond traditional passwords. These innovations provide more secure and convenient ways to unlock devices and authorize transactions.',
    NULL, NULL, NULL, 'What is the primary advantage of biometric authentication over traditional passwords?',
    'It is always faster than typing', 'It cannot be forgotten like a password', 'It works without internet connection', 'It is cheaper to implement',
    'B', 4, 11, 'Global Communication: Top 5 mobile innovations'
),
-- Question 3
(
    'INGLÉS', NULL, 'Augmented Reality Apps', 
    'Augmented reality (AR) technology in mobile devices overlays digital information onto the real world through the phone camera. This innovation has applications in gaming, education, navigation, and retail.',
    NULL, NULL, NULL, 'Which of these is a practical application of augmented reality in mobile devices?',
    'Virtual keyboard projection', 'Real-time language translation of street signs', 'Automatic phone restart when overheated', 'Increasing battery life by 50%',
    'B', 4, 11, 'Global Communication: Top 5 mobile innovations'
),
-- Question 4
(
    'INGLÉS', NULL, '5G Network Impact', 
    'The rollout of 5G networks represents a significant leap in mobile communication technology, offering faster speeds, lower latency, and greater capacity compared to previous generations of mobile networks.',
    NULL, NULL, NULL, 'How does 5G technology primarily benefit mobile users compared to 4G?',
    'Larger phone screens', 'More durable phone materials', 'Faster download and upload speeds', 'Longer battery lifespan',
    'C', 4, 11, 'Global Communication: Top 5 mobile innovations'
),
-- Question 5
(
    'INGLÉS', NULL, 'Foldable Screen Technology', 
    'Recent innovations in mobile devices include foldable screens that allow smartphones to transform into tablets. This technology combines portability with larger display areas when needed.',
    NULL, NULL, NULL, 'What is the main challenge manufacturers face with foldable screen technology?',
    'Creating screens that can fold without damage', 'Making the phones heavier', 'Reducing screen brightness', 'Limiting color options',
    'A', 4, 11, 'Global Communication: Top 5 mobile innovations'
),

-- Questions for topic: Advertising : Micro Banking
(
    'INGLÉS', NULL, 'Targeting the Unbanked', 
    'Micro banking advertising campaigns often focus on reaching populations without access to traditional banking services. These campaigns highlight the convenience and accessibility of mobile-based financial services.',
    NULL, NULL, NULL, 'Why is mobile banking particularly effective for reaching unbanked populations?',
    'It requires extensive paperwork', 'It relies on physical bank branches', 'It can be accessed via basic smartphones', 'It offers higher interest rates than traditional banks',
    'C', 4, 11, 'Advertising : Micro Banking'
),
-- Question 2
(
    'INGLÉS', NULL, 'Financial Inclusion Messaging', 
    'Advertising for micro banking services often emphasizes financial inclusion, showing how small loans or savings accounts can help individuals start businesses or manage emergencies.',
    NULL, NULL, NULL, 'Which advertising approach would best communicate the benefits of micro banking to low-income individuals?',
    'Showing luxury purchases made possible by loans', 'Highlighting complex financial instruments', 'Featuring small business success stories', 'Focusing on international currency exchange',
    'C', 4, 11, 'Advertising : Micro Banking'
),
-- Question 3
(
    'INGLÉS', NULL, 'Trust Building in Ads', 
    'Many potential micro banking customers hesitate to use these services due to lack of trust in financial institutions. Effective advertising must address these concerns directly.',
    NULL, NULL, NULL, 'Which element is most important for building trust in micro banking advertisements?',
    'Celebrity endorsements', 'Technical jargon about security protocols', 'Testimonials from real customers', 'Animated characters',
    'C', 4, 11, 'Advertising : Micro Banking'
),
-- Question 4
(
    'INGLÉS', NULL, 'Mobile App Promotion', 
    'Micro banking services primarily operate through mobile apps, making app download and usage a key focus of advertising campaigns in this sector.',
    NULL, NULL, NULL, 'What feature should be emphasized when advertising a micro banking app to first-time users?',
    'The number of coding languages used to build it', 'The simplicity of the user interface', 'The corporate history of the bank', 'The physical locations of ATMs',
    'B', 4, 11, 'Advertising : Micro Banking'
),
-- Question 5
(
    'INGLÉS', NULL, 'Cultural Sensitivity in Ads', 
    'Effective micro banking advertisements must consider cultural norms and values, especially when targeting diverse or rural populations with limited financial experience.',
    NULL, NULL, NULL, 'Why is cultural sensitivity particularly important in micro banking advertising?',
    'To ensure ads work equally well in all countries', 'To connect with audiences who may distrust formal finance systems', 'To comply with international banking regulations', 'To make the ads more entertaining',
    'B', 4, 11, 'Advertising : Micro Banking'
);

-- Preguntas para el tema: Traditional cultures in Singapore
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', null, 'The Peranakan Heritage', 
 'The Peranakan culture, also known as Straits Chinese, is a unique blend of Chinese and Malay traditions that developed in Singapore. This vibrant culture is evident in their colorful kebayas, intricate beaded slippers, and distinctive cuisine that combines flavors from both cultures.', 
 null, null, null, 
 'What is the primary cultural influence in Peranakan cuisine?', 
 'A mix of Chinese and Malay flavors', 
 'Mainly Indian spices with Thai influences', 
 'Pure traditional Chinese cooking', 
 'Exclusively Malay culinary traditions', 
 'A', 4, 11, 'Traditional cultures in Singapore'),

-- Pregunta 2
('INGLÉS', null, 'Thaipusam Festival', 
 'The Thaipusam festival is one of the most visually striking Hindu celebrations in Singapore. Devotees carry kavadis (ornate frames) attached to their bodies with piercings, demonstrating their faith and endurance. This festival attracts thousands of participants and spectators annually.', 
 null, null, null, 
 'What is the significance of the kavadis carried during Thaipusam?', 
 'They represent the burdens and sacrifices of devotees', 
 'They are merely decorative elements for the parade', 
 'They symbolize wealth and prosperity', 
 'They are used to ward off evil spirits', 
 'A', 4, 11, 'Traditional cultures in Singapore'),

-- Pregunta 3
('INGLÉS', null, 'Malay Wedding Traditions', 
 'Traditional Malay weddings in Singapore are colorful affairs that typically last several days. One important ceremony is the bersanding, where the bride and groom sit on a raised dais to receive blessings from guests. The events are accompanied by traditional music and often feature a kompang ensemble.', 
 null, null, null, 
 'What is the bersanding ceremony in a traditional Malay wedding?', 
 'The sitting-in-state ceremony for the bridal couple', 
 'The formal signing of marriage documents', 
 'The exchange of wedding rings', 
 'The first meeting between the bride and groom', 
 'B', 4, 11, 'Traditional cultures in Singapore'),

-- Pregunta 4
('INGLÉS', null, 'Chinese Puppet Theater', 
 'Wayang kulit, or Chinese puppet theater, is an ancient art form preserved in Singapore. These intricate shadow puppets are made from buffalo hide and manipulated behind a backlit screen. Performances often depict stories from Chinese epics or local folklore.', 
 null, null, null, 
 'What material are traditional wayang kulit puppets made from?', 
 'Buffalo hide', 
 'Bamboo strips', 
 'Silk fabric', 
 'Carved wood', 
 'C', 4, 11, 'Traditional cultures in Singapore'),

-- Pregunta 5
('INGLÉS', null, 'Eurasian Community', 
 'The Eurasian community in Singapore represents one of the smallest but most culturally distinct ethnic groups. Descended from European and Asian unions, they have developed unique traditions including the branyo dance and distinctive cuisine that blends Eastern and Western flavors.', 
 null, null, null, 
 'Which of these is a traditional Eurasian dance form?', 
 'Branyo', 
 'Lion dance', 
 'Bharatanatyam', 
 'Zapin', 
 'D', 4, 11, 'Traditional cultures in Singapore'),

-- Preguntas para el tema: Interlinguistic influence
('INGLÉS', null, 'Loanwords in English', 
 'English has borrowed numerous words from other languages throughout its history. For example, "kindergarten" comes from German, "ballet" from French, and "tycoon" from Japanese. This linguistic borrowing reflects cultural exchanges between nations.', 
 null, null, null, 
 'Which English word was borrowed from Japanese?', 
 'Tycoon', 
 'Kindergarten', 
 'Ballet', 
 'Algebra', 
 'A', 4, 11, 'Interlinguistic influence'),

('INGLÉS', null, 'False Friends', 
 'False friends are words that look similar in two languages but have different meanings. For example, the Spanish "embarazada" means "pregnant," not "embarrassed," and the German "Gift" means "poison," not "gift."', 
 null, null, null, 
 'What is the meaning of the German word "Gift"?', 
 'Poison', 
 'Present', 
 'Marriage', 
 'Giraffe', 
 'B', 4, 11, 'Interlinguistic influence'),

('INGLÉS', null, 'Code Switching', 
 'Code switching occurs when bilingual speakers alternate between two languages within a conversation. This phenomenon is common in multilingual societies like Singapore, where speakers might mix English with Mandarin, Malay, or Tamil.', 
 null, null, null, 
 'What is code switching in linguistics?', 
 'Alternating between languages in conversation', 
 'Changing the topic abruptly', 
 'Speaking in a secret code', 
 'Using formal language in informal settings', 
 'C', 4, 11, 'Interlinguistic influence'),

('INGLÉS', null, 'Calques', 
 'A calque is a word or phrase borrowed from another language through literal translation. For example, the English "skyscraper" was calqued into French as "gratte-ciel" and Spanish as "rascacielos."', 
 null, null, null, 
 'Which of these is an example of a calque?', 
 'Gratte-ciel (French for skyscraper)', 
 'Pizza (used in English)', 
 'Kindergarten (used in English)', 
 'Sushi (used worldwide)', 
 'A', 4, 11, 'Interlinguistic influence'),

('INGLÉS', null, 'Phonetic Adaptation', 
 'When words are borrowed from one language to another, their pronunciation often changes to fit the sound system of the borrowing language. For example, the French "restaurant" is pronounced differently in English.', 
 null, null, null, 
 'What is phonetic adaptation in linguistics?', 
 'Changing pronunciation of loanwords', 
 'Learning proper articulation', 
 'Developing a new accent', 
 'Creating phonetic alphabets', 
 'D', 4, 11, 'Interlinguistic influence'),

-- Preguntas para el tema: Singlish: broken English or badge of identity?
('INGLÉS', null, 'Singlish Characteristics', 
 'Singlish, the colloquial English spoken in Singapore, incorporates elements from Malay, Chinese dialects, and Tamil. It features unique sentence structures like the frequent use of "lah" and "meh" as sentence-final particles.', 
 null, null, null, 
 'Which of these is a characteristic feature of Singlish?', 
 'Use of particles like "lah"', 
 'Perfect British pronunciation', 
 'Avoidance of all loanwords', 
 'Strict adherence to standard grammar', 
 'A', 4, 11, 'Singlish: broken English or badge of identity?'),

('INGLÉS', null, 'Singlish Vocabulary', 
 'Singlish includes many words borrowed from other languages spoken in Singapore. For example, "kiasu" (from Hokkien) means "afraid to lose out," and "makan" (from Malay) means "to eat."', 
 null, null, null, 
 'What does the Singlish word "kiasu" mean?', 
 'Afraid to lose out', 
 'Delicious food', 
 'Beautiful scenery', 
 'Hardworking person', 
 'B', 4, 11, 'Singlish: broken English or badge of identity?'),

('INGLÉS', null, 'Attitudes Toward Singlish', 
 'While some view Singlish as "broken English," others consider it an important marker of Singaporean identity. The government has promoted Standard English through the "Speak Good English Movement," but Singlish remains popular in informal settings.', 
 null, null, null, 
 'What is the Singapore government''s official stance on Singlish?', 
 'Promotes Standard English but tolerates Singlish', 
 'Bans Singlish completely', 
 'Declares Singlish the national language', 
 'Uses Singlish in official documents', 
 'C', 4, 11, 'Singlish: broken English or badge of identity?'),

('INGLÉS', null, 'Singlish Grammar', 
 'Singlish grammar differs from Standard English in several ways. For example, Singlish often omits articles ("I go school") and uses topic-comment structure ("This book, I like").', 
 null, null, null, 
 'Which of these is a grammatical feature of Singlish?', 
 'Omission of articles', 
 'Strict SVO word order', 
 'Use of subjunctive mood', 
 'Consistent verb conjugation', 
 'D', 4, 11, 'Singlish: broken English or badge of identity?'),

('INGLÉS', null, 'Singlish in Media', 
 'Singlish appears frequently in Singaporean media, including television shows and advertisements, often to create a sense of local identity. However, it is rarely used in formal writing or international communication.', 
 null, null, null, 
 'Where is Singlish most commonly used?', 
 'In informal local contexts', 
 'In international business', 
 'In academic writing', 
 'In legal documents', 
 'A', 4, 11, 'Singlish: broken English or badge of identity?'),

-- Preguntas para el tema: Multilingual identity
('INGLÉS', null, 'Language Policy in Singapore', 
 'Singapore has four official languages: English, Mandarin, Malay, and Tamil. English serves as the lingua franca, while the other three represent the major ethnic groups. This policy aims to maintain ethnic identity while promoting national unity.', 
 null, null, null, 
 'How many official languages does Singapore have?', 
 '4', 
 '1', 
 '2', 
 '7', 
 'B', 4, 11, 'Multilingual identity'),

('INGLÉS', null, 'Bilingual Education', 
 'Singapore''s education system requires students to learn English and their "mother tongue" (Mandarin, Malay, or Tamil). This bilingual policy helps students maintain their cultural heritage while gaining proficiency in the global lingua franca.', 
 null, null, null, 
 'What is the purpose of Singapore''s bilingual education policy?', 
 'Maintain heritage while learning global language', 
 'Replace mother tongues with English', 
 'Prepare students for translation careers', 
 'Discourage code switching', 
 'C', 4, 11, 'Multilingual identity'),

('INGLÉS', null, 'Language and Identity', 
 'For many Singaporeans, language use is closely tied to ethnic identity. Chinese Singaporeans might speak Mandarin at home, Malays might speak Malay, and Indians might speak Tamil - while all using English in public spaces.', 
 null, null, null, 
 'How is language use connected to identity in Singapore?', 
 'Home languages often reflect ethnic heritage', 
 'Everyone uses only English at home', 
 'All ethnic groups speak Mandarin', 
 'Language use is completely random', 
 'D', 4, 11, 'Multilingual identity'),

('INGLÉS', null, 'Language Shift', 
 'Younger generations in Singapore are increasingly English-dominant, with some showing declining proficiency in their mother tongues. This has led to concerns about language loss and cultural erosion.', 
 null, null, null, 
 'What language trend is observed among younger Singaporeans?', 
 'Increasing dominance of English', 
 'Rejection of all languages except Mandarin', 
 'Refusal to learn any language but mother tongue', 
 'Equal proficiency in all four official languages', 
 'A', 4, 11, 'Multilingual identity'),

('INGLÉS', null, 'Multilingual Advantages', 
 'Research shows that multilingual individuals often have cognitive advantages, such as better problem-solving skills and mental flexibility. Singapore''s multilingual environment may contribute to these benefits for its citizens.', 
 null, null, null, 
 'What cognitive advantage is associated with multilingualism?', 
 'Better problem-solving skills', 
 'Higher mathematical ability', 
 'Improved eyesight', 
 'Faster running speed', 
 'B', 4, 11, 'Multilingual identity');


--PREGUNTAS COMUNICACIÓN 5° SECUNDARIA

-- Preguntas para el tema: Intertextualidad: conexiones formales o temáticas entre obras
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Conexiones entre Romeo y Julieta y West Side Story', 
'La intertextualidad se manifiesta cuando una obra establece diálogo con otra. Un ejemplo clásico es la relación entre "Romeo y Julieta" de Shakespeare y el musical "West Side Story". Ambas obras comparten elementos temáticos y estructurales a pesar de pertenecer a épocas y contextos diferentes.', 
NULL, NULL, NULL, 
'¿Qué elemento temático comparten "Romeo y Julieta" y "West Side Story"?', 
'El conflicto entre dos grupos antagónicos', 
'La búsqueda de un tesoro escondido', 
'Un viaje de autodescubrimiento', 
'La vida en una gran ciudad', 
'B', 6, 11, 'Intertextualidad: conexiones formales o temáticas entre obras'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Influencias literarias en Borges', 
'Jorge Luis Borges es conocido por su uso de la intertextualidad, haciendo referencia constante a obras filosóficas, literarias y mitológicas de diversas culturas. Su cuento "La biblioteca de Babel" establece conexiones con conceptos matemáticos y teológicos.', 
NULL, NULL, NULL, 
'¿Qué tipo de intertextualidad predomina en la obra de Borges según el texto?', 
'Referencias a obras contemporáneas exclusivamente', 
'Conexiones con obras de un solo género literario', 
'Vinculaciones con textos de diversas culturas y disciplinas', 
'Citas directas de autores argentinos', 
'C', 6, 11, 'Intertextualidad: conexiones formales o temáticas entre obras'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Reescritura de mitos clásicos', 
'Muchos autores contemporáneos reescriben mitos clásicos dándoles una nueva perspectiva. Margaret Atwood en "Penélope y las doce criadas" ofrece una versión feminista del mito de Odiseo, mostrando el punto de vista de Penélope.', 
NULL, NULL, NULL, 
'¿Qué tipo de intertextualidad ejemplifica la obra de Margaret Atwood mencionada?', 
'Una parodia de mitos griegos', 
'Una reescritura con perspectiva de género', 
'Una traducción literal del original', 
'Una crítica a la mitología nórdica', 
'D', 6, 11, 'Intertextualidad: conexiones formales o temáticas entre obras'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Conexiones entre arte y literatura', 
'La pintura "Las meninas" de Velázquez ha inspirado numerosos textos literarios que establecen conexiones intertextuales con la obra pictórica. Autores como Buero Vallejo y Foucault han analizado y reinterpretado esta pintura desde perspectivas literarias y filosóficas.', 
NULL, NULL, NULL, 
'¿Qué demuestra el ejemplo de "Las meninas" en relación con la intertextualidad?', 
'Que solo las obras literarias pueden ser intertextuales', 
'Que la intertextualidad solo ocurre entre obras del mismo período', 
'Que el diálogo entre obras puede darse entre diferentes artes', 
'Que las pinturas no pueden inspirar textos literarios', 
'A', 6, 11, 'Intertextualidad: conexiones formales o temáticas entre obras'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'El Quijote y sus reescrituras', 
'La novela "Don Quijote de la Mancha" ha generado numerosas obras intertextuales a lo largo de los siglos. Desde continuaciones apócrifas hasta reinterpretaciones modernas como "El Quijote de los niños" de Pérez-Reverte, que adapta la obra para jóvenes lectores.', 
NULL, NULL, NULL, 
'¿Qué aspecto de la intertextualidad muestra el ejemplo del Quijote?', 
'La temporalidad limitada de las conexiones entre obras', 
'La capacidad de una obra clásica de generar nuevas creaciones', 
'Que solo los autores contemporáneos pueden ser intertextuales', 
'Que las adaptaciones deben ser fieles al original', 
'B', 6, 11, 'Intertextualidad: conexiones formales o temáticas entre obras'),

-- Preguntas para el tema: Estudio de un grupo de obras de la misma forma literaria
('COMUNICACIÓN', NULL, 'Características de la lírica romántica', 
'El estudio de un grupo de poemas del Romanticismo permite identificar características comunes como la exaltación de los sentimientos, la conexión con la naturaleza y la rebeldía frente a las convenciones sociales. Autores como Espronceda, Bécquer y Rosalía de Castro comparten estos rasgos en sus obras líricas.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes NO es una característica común de la lírica romántica?', 
'Uso de un lenguaje sencillo y directo', 
'Exaltación de la razón sobre los sentimientos', 
'Presencia de temas nocturnos y melancólicos', 
'Rebeldía frente a las normas establecidas', 
'C', 6, 11, 'Estudio de un grupo de obras de la misma forma literaria'),

('COMUNICACIÓN', NULL, 'El cuento modernista hispanoamericano', 
'Al estudiar un conjunto de cuentos del Modernismo hispanoamericano, se observan rasgos como el preciosismo lingüístico, la ambientación exótica y la búsqueda de belleza. Autores como Rubén Darío, Leopoldo Lugones y Manuel Díaz Rodríguez ejemplifican estas características en sus relatos breves.', 
NULL, NULL, NULL, 
'¿Qué elemento es típico del cuento modernista según el texto?', 
'Lenguaje coloquial y directo', 
'Temas exclusivamente políticos', 
'Ambientación en lugares comunes', 
'Preciosismo en el uso del lenguaje', 
'D', 6, 11, 'Estudio de un grupo de obras de la misma forma literaria'),

('COMUNICACIÓN', NULL, 'El teatro del absurdo', 
'El estudio comparado de obras como "Esperando a Godot" de Beckett, "La cantante calva" de Ionesco y "Los enredos de la scarpetta" de Pirandello permite identificar características del teatro del absurdo: diálogos circulares, pérdida de sentido lógico y situaciones repetitivas.', 
NULL, NULL, NULL, 
'¿Qué técnica es característica del teatro del absurdo?', 
'Diálogos lógicos y progresivos', 
'Resolución clara de los conflictos', 
'Situaciones repetitivas sin aparente sentido', 
'Personajes con motivaciones claras', 
'A', 6, 11, 'Estudio de un grupo de obras de la misma forma literaria'),

('COMUNICACIÓN', NULL, 'La novela policial clásica', 
'Al analizar novelas como las de Agatha Christie, Arthur Conan Doyle y Raymond Chandler, se identifican elementos comunes de la novela policial clásica: un detective hábil, pistas dispersas para el lector y una resolución sorpresiva que explica todos los eventos.', 
NULL, NULL, NULL, 
'¿Qué elemento es esencial en la novela policial clásica?', 
'Un detective que resuelve el crimen', 
'Finales abiertos sin resolución', 
'Ausencia total de pistas', 
'Crimenes sin víctimas', 
'B', 6, 11, 'Estudio de un grupo de obras de la misma forma literaria'),

('COMUNICACIÓN', NULL, 'El ensayo filosófico contemporáneo', 
'El estudio de ensayos de autores como Savater, Marina y Onfray revela características comunes del ensayo filosófico contemporáneo: lenguaje accesible, temas de actualidad y diálogo con otras disciplinas como la psicología y la ciencia.', 
NULL, NULL, NULL, 
'¿Qué caracteriza al ensayo filosófico contemporáneo según el texto?', 
'Lenguaje técnico inaccesible', 
'Temas exclusivamente históricos', 
'Diálogo con otras disciplinas', 
'Ausencia de argumentación', 
'C', 6, 11, 'Estudio de un grupo de obras de la misma forma literaria'),

-- Preguntas para el tema: Estudio de subcategorías dentro de una forma literaria
('COMUNICACIÓN', NULL, 'Subgéneros de la lírica', 
'Dentro de la poesía lírica existen múltiples subgéneros como el soneto, la oda, la elegía y el haiku. Cada uno tiene características formales y temáticas específicas que los diferencian, aunque todos pertenecen a la misma forma literaria.', 
NULL, NULL, NULL, 
'¿Qué subgénero lírico se caracteriza por su estructura de 5-7-5 sílabas?', 
'Soneto', 
'Oda', 
'Elegía', 
'Haiku', 
'D', 6, 11, 'Estudio de subcategorías dentro de una forma literaria'),

('COMUNICACIÓN', NULL, 'Variantes del cuento', 
'El cuento como forma literaria incluye subcategorías como el cuento fantástico, el cuento realista, el microcuento y el cuento policial. Cada una mantiene la brevedad narrativa pero difiere en temática, estructura y técnicas empleadas.', 
NULL, NULL, NULL, 
'¿Qué caracteriza principalmente al microcuento?', 
'Extensa descripción de personajes', 
'Extrema brevedad y condensación narrativa', 
'Multiplicidad de tramas paralelas', 
'Ausencia total de conflicto', 
'B', 6, 11, 'Estudio de subcategorías dentro de una forma literaria'),

('COMUNICACIÓN', NULL, 'Tipos de novela', 
'La novela como género incluye subcategorías como la novela histórica, la novela psicológica, la novela epistolar y la novela gráfica. Cada tipo prioriza diferentes elementos narrativos aunque comparten la extensión y desarrollo de personajes.', 
NULL, NULL, NULL, 
'¿Qué subcategoría novelística usa cartas como estructura narrativa principal?', 
'Novela histórica', 
'Novela psicológica', 
'Novela epistolar', 
'Novela gráfica', 
'A', 6, 11, 'Estudio de subcategorías dentro de una forma literaria'),

('COMUNICACIÓN', NULL, 'Modalidades del ensayo', 
'El ensayo como forma literaria presenta subcategorías como el ensayo argumentativo, el ensayo expositivo, el ensayo lírico y el ensayo científico. Cada modalidad enfatiza diferentes aspectos aunque todas comparten la reflexión personal.', 
NULL, NULL, NULL, 
'¿Qué tipo de ensayo busca principalmente persuadir al lector?', 
'Ensayo expositivo', 
'Ensayo argumentativo', 
'Ensayo lírico', 
'Ensayo científico', 
'C', 6, 11, 'Estudio de subcategorías dentro de una forma literaria'),

('COMUNICACIÓN', NULL, 'Formas dramáticas', 
'El teatro incluye subcategorías como la tragedia, la comedia, el drama y el teatro experimental. Cada una varía en tono, tratamiento de conflictos y desenlace, aunque todas comparten la representación escénica.', 
NULL, NULL, NULL, 
'¿Qué forma dramática se caracteriza por un desenlace funesto?', 
'Comedia', 
'Tragedia', 
'Drama', 
'Teatro del absurdo', 
'D', 6, 11, 'Estudio de subcategorías dentro de una forma literaria'),

-- Preguntas para el tema: Exploración de un tema representado en varios textos literarios
('COMUNICACIÓN', NULL, 'El amor en la literatura universal', 
'El tema del amor ha sido tratado de múltiples formas en la literatura: desde el amor cortés en "El libro de buen amor" hasta el amor romántico en "Romeo y Julieta", pasando por el amor destructivo en "Madame Bovary" y el amor filial en "Cien años de soledad".', 
NULL, NULL, NULL, 
'¿Qué obra representa principalmente el amor filial?', 
'Romeo y Julieta', 
'Madame Bovary', 
'Cien años de soledad', 
'El libro de buen amor', 
'C', 6, 11, 'Exploración de un tema representado en varios textos literarios'),

('COMUNICACIÓN', NULL, 'La guerra en diferentes épocas', 
'El tema de la guerra ha sido abordado desde perspectivas diversas: la épica en "La Ilíada", el absurdo en "Sin novedad en el frente", la denuncia en "El cuaderno gris" y la memoria histórica en "Soldados de Salamina".', 
NULL, NULL, NULL, 
'¿Qué obra presenta la guerra desde una perspectiva absurda?', 
'La Ilíada', 
'Sin novedad en el frente', 
'El cuaderno gris', 
'Soldados de Salamina', 
'B', 6, 11, 'Exploración de un tema representado en varios textos literarios'),

('COMUNICACIÓN', NULL, 'La identidad en la narrativa contemporánea', 
'El tema de la identidad aparece en obras como "El retrato de Dorian Gray" (identidad y apariencia), "Niebla" de Unamuno (identidad existencial), "La casa de los espíritus" (identidad familiar) y "El túnel" de Sábato (identidad obsesiva).', 
NULL, NULL, NULL, 
'¿En qué obra el tema de la identidad se vincula con la apariencia física?', 
'Niebla', 
'La casa de los espíritus', 
'El túnel', 
'El retrato de Dorian Gray', 
'D', 6, 11, 'Exploración de un tema representado en varios textos literarios'),

('COMUNICACIÓN', NULL, 'La soledad en la poesía', 
'La soledad ha sido tratada de forma diversa en la poesía: como angustia existencial en Bécquer, como elección en Machado, como condición humana en Vallejo y como aislamiento social en Neruda.', 
NULL, NULL, NULL, 
'¿Qué poeta presenta la soledad como elección personal?', 
'Bécquer', 
'Machado', 
'Vallejo', 
'Neruda', 
'A', 6, 11, 'Exploración de un tema representado en varios textos literarios'),

('COMUNICACIÓN', NULL, 'El viaje como metáfora', 
'El viaje como tema literario aparece como búsqueda en "El Quijote", como huida en "On the Road", como aprendizaje en "La Odisea" y como exploración interior en "El guardián entre el centeno".', 
NULL, NULL, NULL, 
'¿Qué obra representa el viaje principalmente como aprendizaje?', 
'El Quijote', 
'On the Road', 
'La Odisea', 
'El guardián entre el centeno', 
'C', 6, 11, 'Exploración de un tema representado en varios textos literarios'),

-- Preguntas para el tema: El señor de las moscas: William Golding
('COMUNICACIÓN', NULL, 'Tema central de la novela', 
'"El señor de las moscas" de William Golding explora la naturaleza humana a través de un grupo de niños varados en una isla desierta. La novela muestra cómo la civilización es frágil y cómo emergen los instintos más primitivos en ausencia de normas sociales.', 
NULL, NULL, NULL, 
'¿Qué tema principal explora "El señor de las moscas"?', 
'La amistad infantil', 
'La fragilidad de la civilización', 
'Las técnicas de supervivencia', 
'La belleza de la naturaleza', 
'B', 6, 11, 'El señor de las moscas: William Golding'),

('COMUNICACIÓN', NULL, 'Símbolos en la obra', 
'En "El señor de las moscas", Golding utiliza símbolos poderosos: la caracola representa la democracia y el orden, las gafas de Piggy simbolizan la razón y la ciencia, mientras que la cabeza del cerdo (el señor de las moscas) encarna el mal inherente al ser humano.', 
NULL, NULL, NULL, 
'¿Qué simbolizan las gafas de Piggy en la novela?', 
'La debilidad física', 
'La razón y la ciencia', 
'La ceguera moral', 
'La vanidad', 
'C', 6, 11, 'El señor de las moscas: William Golding'),

('COMUNICACIÓN', NULL, 'Personajes contrastantes', 
'Los personajes principales de "El señor de las moscas" representan fuerzas opuestas: Ralph simboliza el liderazgo democrático, Jack encarna el autoritarismo y la violencia, mientras que Piggy representa la razón y el intelecto.', 
NULL, NULL, NULL, 
'¿Qué personaje simboliza principalmente el autoritarismo en la novela?', 
'Ralph', 
'Jack', 
'Piggy', 
'Simon', 
'D', 6, 11, 'El señor de las moscas: William Golding'),

('COMUNICACIÓN', NULL, 'Contexto histórico de la obra', 
'Publicada en 1954, "El señor de las moscas" refleja las preocupaciones de la posguerra y la Guerra Fría. Golding, que participó en la Segunda Guerra Mundial, cuestiona el mito del progreso y muestra su escepticismo sobre la naturaleza humana.', 
NULL, NULL, NULL, 
'¿Qué evento histórico influyó directamente en la visión pesimista de Golding?', 
'La Primera Guerra Mundial', 
'La Revolución Industrial', 
'La Segunda Guerra Mundial', 
'La Guerra de Vietnam', 
'A', 6, 11, 'El señor de las moscas: William Golding'),

('COMUNICACIÓN', NULL, 'El final de la novela', 
'El desenlace de "El señor de las moscas" es profundamente irónico: cuando los niños están al borde de la destrucción total, aparece un oficial naval que los rescata, sin darse cuenta de que él mismo participa en una guerra que refleja la misma barbarie que los niños han experimentado.', 
NULL, NULL, NULL, 
'¿Qué ironía presenta el final de la novela?', 
'Que los niños no querían ser rescatados', 
'Que el rescatador participa en una guerra igualmente bárbara', 
'Que la isla en realidad estaba habitada', 
'Que todo había sido un sueño', 
'B', 6, 11, 'El señor de las moscas: William Golding');

-- Preguntas para el tema: Estudio de la manera en que distintos textos abordan un mismo concepto
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('COMUNICACIÓN', null, 'Enfoques sobre la libertad', 
'Analiza los siguientes fragmentos de textos que abordan el concepto de libertad. El primero es de un ensayo filosófico: "La libertad consiste en hacer lo que la razón dicta como bueno". El segundo proviene de un poema: "Libertad es volar sin ataduras, como el viento".', 
null, null, null, 
'¿Qué diferencia principal se observa en el tratamiento del concepto de libertad entre ambos textos?', 
'El texto filosófico la define racionalmente, mientras el poético la asocia a sensaciones', 
'Ambos textos coinciden en definirla como ausencia de restricciones', 
'El poema la conceptualiza de manera lógica, el ensayo de manera emocional', 
'Ninguno de los textos logra definir claramente el concepto', 
'B', 6, 11, 'Estudio de la manera en que distintos textos abordan un mismo concepto'),

('COMUNICACIÓN', null, 'Visiones del amor', 
'Compara estas dos definiciones de amor. De un diccionario: "Sentimiento intenso de afecto hacia una persona". De una novela: "El amor era ese fuego que le consumía las entrañas cada vez que ella entraba en la habitación".', 
null, null, null, 
'¿Qué característica distingue el abordaje del concepto en cada caso?', 
'El diccionario usa lenguaje técnico, la novela lenguaje coloquial', 
'El diccionario ofrece una definición objetiva, la novela una experiencia subjetiva', 
'Ambos textos presentan definiciones equivalentes', 
'La novela proporciona una definición más precisa que el diccionario', 
'C', 6, 11, 'Estudio de la manera en que distintos textos abordan un mismo concepto'),

('COMUNICACIÓN', null, 'Perspectivas sobre la justicia', 
'Observa estas dos aproximaciones al concepto de justicia. Texto jurídico: "Principio moral que inclina a obrar dando a cada uno lo que le corresponde". Texto literario: "La justicia era una dama ciega que balanceaba su espada caprichosamente".', 
null, null, null, 
'¿Qué contraste fundamental existe entre ambas aproximaciones?', 
'El texto jurídico la idealiza, el literario la denigra', 
'El jurídico la define normativamente, el literario la personifica metafóricamente', 
'Ambos textos coinciden en presentarla como un valor absoluto', 
'El literario ofrece una definición más exacta que el jurídico', 
'D', 6, 11, 'Estudio de la manera en que distintos textos abordan un mismo concepto'),

('COMUNICACIÓN', null, 'Concepto de tiempo', 
'Compara estas representaciones del tiempo. Texto científico: "Magnitud física que permite ordenar la secuencia de eventos". Poema: "El tiempo es un río que me arrastra, pero yo soy el río".', 
null, null, null, 
'¿Qué diferencia esencial muestran estos abordajes?', 
'El científico lo cuantifica, el poético lo espiritualiza', 
'El poema lo define matemáticamente, el texto científico filosóficamente', 
'Ambos coinciden en su concepción lineal del tiempo', 
'El texto científico es metafórico mientras el poema es literal', 
'A', 6, 11, 'Estudio de la manera en que distintos textos abordan un mismo concepto'),

('COMUNICACIÓN', null, 'Definiciones de belleza', 
'Analiza estas aproximaciones al concepto de belleza. Enciclopedia: "Cualidad que provoca placer estético". Poesía: "Era tan bella que al mirarla todos los relojes dejaban de marcar las horas".', 
null, null, null, 
'¿Qué distingue fundamentalmente estos abordajes?', 
'La enciclopedia busca precisión conceptual, la poesía crea una imagen impactante', 
'Ambos textos evitan definir el concepto claramente', 
'La poesía ofrece una definición más útil que la enciclopedia', 
'La enciclopedia usa más figuras retóricas que la poesía', 
'A', 6, 11, 'Estudio de la manera en que distintos textos abordan un mismo concepto'),

-- Preguntas para el tema: Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos
('COMUNICACIÓN', null, 'El Quijote revisitado', 
'En la novela moderna "Niebla" de Unamuno, el protagonista discute con el autor sobre su destino, aludiendo directamente al episodio donde Don Quijote discute con su autor Cervantes.', 
null, null, null, 
'¿Qué efecto tiene esta alusión intertextual?', 
'Profundiza el tema de la autonomía de los personajes literarios', 
'Demuestra que Unamuno copiaba a Cervantes', 
'Reduce la originalidad de la obra de Unamuno', 
'No tiene ningún efecto significativo en la interpretación', 
'B', 6, 11, 'Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos'),

('COMUNICACIÓN', null, 'Mitos clásicos en poesía contemporánea', 
'El poema "Leda y el cisne" de W.B. Yeats recrea el mito griego donde Zeus seduce a Leda transformado en cisne, pero añade elementos proféticos sobre la guerra de Troya.', 
null, null, null, 
'¿Cómo enriquece esta reelaboración la comprensión del mito original?', 
'Demuestra que los mitos griegos eran inexactos', 
'Conecta el episodio mitológico con sus consecuencias históricas legendarias', 
'Prueba que Yeats no entendía bien la mitología', 
'Simplifica el mito original para hacerlo más accesible', 
'C', 6, 11, 'Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos'),

('COMUNICACIÓN', null, 'Shakespeare en Borges', 
'En el cuento "Tema del traidor y del héroe" de Borges, se alude constantemente a Macbeth de Shakespeare para construir una historia sobre conspiración y destino.', 
null, null, null, 
'¿Qué aporta esta intertextualidad a la interpretación del cuento?', 
'Permite leer la historia local como parte de una tradición universal de tragedia', 
'Demuestra que Borges era menos original que Shakespeare', 
'Hace el cuento más difícil de entender sin conocer a Shakespeare', 
'No tiene una función relevante en el relato', 
'A', 6, 11, 'Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos'),

('COMUNICACIÓN', null, 'La Biblia en García Márquez', 
'En "Cien años de soledad", el diluvio que destruye Macondo alude claramente al diluvio universal bíblico, pero con características propias del realismo mágico.', 
null, null, null, 
'¿Qué efecto produce esta referencia bíblica en la novela?', 
'Universaliza el destino de Macondo conectándolo con mitos fundacionales', 
'Demuestra que la novela es un texto religioso', 
'Reduce la originalidad de la obra de García Márquez', 
'No agrega significado especial al episodio', 
'D', 6, 11, 'Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos'),

('COMUNICACIÓN', null, 'Homero en Joyce', 
'La novela "Ulises" de James Joyce está estructurada como una parodia moderna de la Odisea homérica, trasladando el viaje épico a un día común en Dublín.', 
null, null, null, 
'¿Qué logra Joyce con este paralelismo intertextual?', 
'Eleva lo cotidiano a la categoría de épica moderna', 
'Demuestra que el mundo moderno es tan heroico como el antiguo', 
'Critica la inutilidad de los clásicos en la actualidad', 
'Simplifica la Odisea para hacerla más comprensible', 
'A', 6, 11, 'Análisis de cómo las alusiones que un texto literario hace a otro afectan al significado de ambos'),

-- Preguntas para el tema: Investigación literaria teórica
('COMUNICACIÓN', null, 'Corrientes literarias', 
'El formalismo ruso fue una escuela teórica que surgió en los años 1910-1930, centrada en el análisis de los procedimientos técnicos de la obra literaria más que en su contenido o contexto.', 
null, null, null, 
'¿Qué aspecto de la literatura era prioritario para los formalistas?', 
'La biografía del autor', 
'Las figuras retóricas y estructuras narrativas', 
'El contexto histórico-social', 
'La recepción por parte del público', 
'B', 6, 11, 'Investigación literaria teórica'),

('COMUNICACIÓN', null, 'Teoría de la recepción', 
'La escuela de Constanza, con teóricos como Jauss e Iser, desarrolló en los años 70 la teoría de la recepción, que estudia cómo los lectores actualizan el significado de los textos.', 
null, null, null, 
'¿Qué concepto clave introduce esta teoría?', 
'El horizonte de expectativas del lector', 
'La estructura profunda del texto', 
'El inconsciente del autor', 
'La perfección formal de la obra', 
'A', 6, 11, 'Investigación literaria teórica'),

('COMUNICACIÓN', null, 'Estructuralismo literario', 
'El estructuralismo, influido por Saussure, analiza la literatura como un sistema de signos con relaciones internas que generan significado.', 
null, null, null, 
'¿Qué metodología caracteriza al análisis estructuralista?', 
'Estudio de las intenciones psicológicas del autor', 
'Búsqueda de estructuras binarias y oposiciones significativas', 
'Análisis del contexto histórico de producción', 
'Enfoque en la experiencia subjetiva del lector', 
'C', 6, 11, 'Investigación literaria teórica'),

('COMUNICACIÓN', null, 'Postestructuralismo', 
'El postestructuralismo cuestionó la idea de que los textos tienen significados estables, enfatizando la deconstrucción y la multiplicidad de interpretaciones.', 
null, null, null, 
'¿Qué teórico es clave para esta corriente?', 
'Northrop Frye', 
'Jacques Derrida', 
'Georg Lukács', 
'Mikhail Bakhtin', 
'B', 6, 11, 'Investigación literaria teórica'),

('COMUNICACIÓN', null, 'Narratología', 
'La narratología, desarrollada por teóricos como Genette, estudia sistemáticamente los componentes y estructuras de los relatos.', 
null, null, null, 
'¿Qué concepto narratológico se refiere al "quién cuenta la historia"?', 
'Focalización', 
'Orden narrativo', 
'Voz narrativa', 
'Duración', 
'C', 6, 11, 'Investigación literaria teórica'),

-- Preguntas para el tema: La palabra del mudo: Julio Ramón Ribeyro
('COMUNICACIÓN', null, 'Los gallinazos sin plumas', 
'En el cuento "Los gallinazos sin plumas" de Ribeyro, se narra la vida de dos niños pobres en Lima que buscan comida en la basura para alimentar a su abuelo.', 
null, null, null, 
'¿Qué tema principal explora este cuento?', 
'La crueldad infantil', 
'La desigualdad social y la explotación', 
'La importancia de la educación', 
'Los conflictos generacionales', 
'B', 6, 11, 'La palabra del mudo: Julio Ramón Ribeyro'),

('COMUNICACIÓN', null, 'Estilo de Ribeyro', 
'La prosa de Ribeyro se caracteriza por su aparente sencillez y precisión, con un profundo contenido social bajo una superficie cotidiana.', 
null, null, null, 
'¿Qué técnica narrativa es característica de Ribeyro?', 
'El uso de monólogos interiores complejos', 
'La acumulación de detalles aparentemente triviales que revelan profundidad', 
'La experimentación lingüística radical', 
'La escritura automática surrealista', 
'C', 6, 11, 'La palabra del mudo: Julio Ramón Ribeyro'),

('COMUNICACIÓN', null, 'Silvio en El Profesor', 
'En "El profesor", cuento de La palabra del mudo, el protagonista Silvio sufre una transformación al enfrentarse a la mediocridad de su vida.', 
null, null, null, 
'¿Qué simboliza el episodio final donde rompe su reloj?', 
'Su rechazo a la disciplina laboral', 
'Su liberación de las convenciones sociales', 
'Su ingreso a la locura', 
'Su incapacidad para administrar el tiempo', 
'A', 6, 11, 'La palabra del mudo: Julio Ramón Ribeyro'),

('COMUNICACIÓN', null, 'La ciudad en Ribeyro', 
'La Lima urbana de mediados del siglo XX es un escenario recurrente en los cuentos de Ribeyro, mostrando sus transformaciones y contradicciones.', 
null, null, null, 
'¿Cómo representa Ribeyro a la ciudad en sus relatos?', 
'Como un espacio de oportunidades ilimitadas', 
'Como un organismo que devora a los más débiles', 
'Como escenario neutral sin influencia en los personajes', 
'Como un paraíso perdido', 
'D', 6, 11, 'La palabra del mudo: Julio Ramón Ribeyro'),

('COMUNICACIÓN', null, 'El tema del fracaso', 
'Muchos personajes de Ribeyro son antihéroes que enfrentan el fracaso en sus aspiraciones personales y sociales.', 
null, null, null, 
'¿Qué actitud suelen mostrar estos personajes ante su fracaso?', 
'Rebelión violenta contra el sistema', 
'Aceptación resignada con toques de ironía', 
'Negación completa de su situación', 
'Conversión religiosa como escape', 
'B', 6, 11, 'La palabra del mudo: Julio Ramón Ribeyro'),

-- Preguntas para el tema: Producción de un ensayo literario
('COMUNICACIÓN', null, 'Estructura del ensayo', 
'Un ensayo literario bien estructurado debe presentar una introducción, desarrollo y conclusión, con argumentos coherentes y sustentados.', 
null, null, null, 
'¿Qué característica debe tener la introducción de un ensayo?', 
'Plantear claramente el tema y la tesis central', 
'Resumir todos los argumentos que se desarrollarán', 
'Incluir citas extensas de otros autores', 
'Presentar datos estadísticos sobre el tema', 
'A', 6, 11, 'Producción de un ensayo literario'),

('COMUNICACIÓN', null, 'Argumentación en el ensayo', 
'La solidez de un ensayo depende de la calidad de sus argumentos y del soporte que se les dé.', 
null, null, null, 
'¿Qué elemento NO es apropiado para sustentar argumentos en un ensayo literario?', 
'Citas textuales de las obras analizadas', 
'Interpretaciones personales fundamentadas', 
'Datos biográficos irrelevantes del autor', 
'Teorías críticas reconocidas', 
'C', 6, 11, 'Producción de un ensayo literario'),

('COMUNICACIÓN', null, 'Estilo ensayístico', 
'El estilo de un ensayo literario combina rigor analítico con cualidades estéticas de la escritura.', 
null, null, null, 
'¿Qué caracteriza el tono adecuado para un ensayo literario?', 
'Lenguaje técnico exclusivo para especialistas', 
'Uso constante de primera persona y experiencias personales', 
'Equilibrio entre formalidad académica y elegancia expresiva', 
'Lenguaje coloquial y directo sin matices', 
'C', 6, 11, 'Producción de un ensayo literario'),

('COMUNICACIÓN', null, 'Uso de fuentes', 
'Un buen ensayo literario utiliza y cita adecuadamente diversas fuentes para enriquecer su análisis.', 
null, null, null, 
'¿Qué práctica debe evitarse en el uso de fuentes?', 
'Parafrasear ideas citando al autor original', 
'Incluir citas extensas sin análisis propio', 
'Comparar diferentes interpretaciones críticas', 
'Seleccionar fuentes relevantes y confiables', 
'B', 6, 11, 'Producción de un ensayo literario'),

('COMUNICACIÓN', null, 'Conclusión efectiva', 
'La conclusión de un ensayo debe sintetizar los hallazgos sin introducir información nueva.', 
null, null, null, 
'¿Qué elemento NO corresponde a una buena conclusión?', 
'Reafirmación de la tesis a la luz de lo demostrado', 
'Apertura a nuevas preguntas derivadas de la investigación', 
'Introducción de un argumento completamente nuevo', 
'Síntesis de los puntos principales desarrollados', 
'C', 6, 11, 'Producción de un ensayo literario');

