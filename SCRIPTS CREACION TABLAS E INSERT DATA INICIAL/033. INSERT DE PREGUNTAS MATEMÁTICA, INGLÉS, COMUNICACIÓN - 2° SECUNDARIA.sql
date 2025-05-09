--PREGUNTAS MATEMÁTICA - 2° SECUNDARIA
-- Preguntas sobre Tipos de fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('MATEMÁTICA', NULL, 'Identificando fracciones propias', 
'Las fracciones propias son aquellas donde el numerador es menor que el denominador, representando una cantidad menor que la unidad. Este concepto es fundamental para comprender las relaciones entre partes y todo en matemáticas.', 
NULL, NULL, NULL, '¿Cuál de las siguientes fracciones es propia?', 
'3/4', '5/3', '7/7', '9/8', 'A', 5, 8, 'Tipos fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles'),

('MATEMÁTICA', NULL, 'Fracciones equivalentes en la vida real', 
'Dos fracciones son equivalentes cuando representan la misma cantidad, aunque estén expresadas de forma diferente. Esto es útil cuando necesitamos comparar o simplificar cantidades en situaciones cotidianas.', 
NULL, NULL, NULL, '¿Cuál de estas fracciones es equivalente a 2/3?', 
'4/9', '6/9', '5/10', '8/12', 'B', 5, 8, 'Tipos fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles'),

('MATEMÁTICA', NULL, 'Fracciones homogéneas en problemas', 
'Las fracciones homogéneas tienen el mismo denominador, lo que facilita su comparación y operación. Este conocimiento es esencial para resolver problemas que involucran partes iguales de diferentes conjuntos.', 
NULL, NULL, NULL, '¿Qué par de fracciones son homogéneas?', 
'1/2 y 3/4', '2/5 y 3/5', '4/7 y 5/8', '3/9 y 4/11', 'B', 5, 8, 'Tipos fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles'),

('MATEMÁTICA', NULL, 'Simplificando fracciones irreductibles', 
'Una fracción irreductible es aquella que no puede simplificarse más, es decir, su numerador y denominador no tienen divisores comunes excepto el 1. Dominar este concepto ayuda a trabajar con fracciones en su forma más simple.', 
NULL, NULL, NULL, '¿Cuál de estas fracciones es irreductible?', 
'4/6', '5/7', '8/10', '9/12', 'B', 5, 8, 'Tipos fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles'),

('MATEMÁTICA', NULL, 'Reconociendo fracciones impropias', 
'Las fracciones impropias tienen el numerador mayor o igual que el denominador, representando cantidades iguales o mayores que la unidad. Identificarlas correctamente es importante para realizar conversiones a números mixtos.', 
NULL, NULL, NULL, '¿Cuál de las siguientes es una fracción impropia?', 
'2/3', '7/8', '9/4', '5/6', 'C', 5, 8, 'Tipos fracciones: Propia, impropia, homogéneas, heterogéneas, equivalentes, irreductibles'),

-- Preguntas sobre Problemas sobre fracciones
('MATEMÁTICA', NULL, 'Reparto de una pizza', 
'María y sus tres amigos compraron una pizza grande para compartir. Si la dividen en partes iguales, cada uno recibirá una porción que puede expresarse como fracción del total.', 
NULL, NULL, NULL, '¿Qué fracción de la pizza completa recibirá cada persona?', 
'1/3', '1/4', '1/5', '1/6', 'B', 5, 8, 'Problemas sobre fracciones'),

('MATEMÁTICA', NULL, 'Ahorro semanal', 
'Juan ahorra 1/5 de su asignación semanal de S/50. Este tipo de problemas ayuda a entender cómo las fracciones representan partes de cantidades en contextos financieros cotidianos.', 
NULL, NULL, NULL, '¿Cuánto dinero ahorra Juan cada semana?', 
'S/5', 'S/10', 'S/15', 'S/20', 'B', 5, 8, 'Problemas sobre fracciones'),

('MATEMÁTICA', NULL, 'Distancia recorrida', 
'Un ciclista debe recorrer 60 km. Si ya ha completado 3/4 del trayecto, podemos calcular la distancia restante usando operaciones con fracciones.', 
NULL, NULL, NULL, '¿Cuántos kilómetros le faltan por recorrer?', 
'10 km', '15 km', '20 km', '25 km', 'B', 5, 8, 'Problemas sobre fracciones'),

('MATEMÁTICA', NULL, 'Libros en la biblioteca', 
'En una biblioteca escolar, 2/7 de los libros son de matemáticas y 3/7 son de literatura. El resto cubre otras materias. Este problema muestra cómo las fracciones ayudan a analizar distribuciones.', 
NULL, NULL, NULL, '¿Qué fracción de los libros no son de matemáticas ni literatura?', 
'1/7', '2/7', '3/7', '4/7', 'B', 5, 8, 'Problemas sobre fracciones'),

('MATEMÁTICA', NULL, 'Tiempo de estudio', 
'Ana dedica 1/6 de su día a estudiar, 1/8 a hacer deporte y el resto a otras actividades. Comprender cómo sumar fracciones es clave para resolver problemas de distribución del tiempo.', 
NULL, NULL, NULL, '¿Qué fracción del día dedica Ana a estudiar y hacer deporte combinados?', 
'7/24', '5/24', '1/7', '2/15', 'A', 5, 8, 'Problemas sobre fracciones'),

-- Preguntas sobre Operaciones con números decimales
('MATEMÁTICA', NULL, 'Suma de gastos diarios', 
'Luis anotó sus gastos del lunes: S/15.50 en transporte, S/22.75 en almuerzo y S/8.25 en fotocopias. La suma de decimales es esencial para llevar un control financiero personal.', 
NULL, NULL, NULL, '¿Cuánto gastó Luis en total ese día?', 
'S/45.50', 'S/46.50', 'S/47.50', 'S/48.50', 'B', 5, 8, 'Operaciones con números decimales'),

('MATEMÁTICA', NULL, 'Cálculo de descuento', 
'Una tienda ofrece un 15% de descuento en un artículo que cuesta S/120.00. Los porcentajes son una aplicación práctica de las operaciones con decimales en situaciones comerciales.', 
NULL, NULL, NULL, '¿Cuánto se ahorraría al comprar el artículo con descuento?', 
'S/15.00', 'S/18.00', 'S/20.00', 'S/22.00', 'B', 5, 8, 'Operaciones con números decimales'),

('MATEMÁTICA', NULL, 'División de terrenos', 
'Un terreno rectangular de 25.75 metros de largo se divide en 5 partes iguales para construir jardines. La división de decimales es común en problemas de medición y distribución de espacios.', 
NULL, NULL, NULL, '¿Cuánto medirá cada parte a lo largo?', 
'5.10 m', '5.15 m', '5.20 m', '5.25 m', 'B', 5, 8, 'Operaciones con números decimales'),

('MATEMÁTICA', NULL, 'Multiplicación de medidas', 
'Para hacer un marco, se necesita multiplicar las medidas de sus lados. Si un lado mide 0.75 metros y el otro 1.25 metros, el área se calcula multiplicando estos decimales.', 
NULL, NULL, NULL, '¿Cuál es el área del marco en metros cuadrados?', 
'0.8250 m²', '0.9375 m²', '1.0000 m²', '1.1250 m²', 'B', 5, 8, 'Operaciones con números decimales'),

('MATEMÁTICA', NULL, 'Resta de temperaturas', 
'La temperatura máxima del día fue 28.6°C y la mínima 19.8°C. Calcular la diferencia entre valores decimales es importante en ciencias y análisis de datos meteorológicos.', 
NULL, NULL, NULL, '¿Cuál fue la variación de temperatura ese día?', 
'8.8°C', '9.2°C', '9.6°C', '8.4°C', 'A', 5, 8, 'Operaciones con números decimales'),

-- Preguntas sobre Fracciones decimales
('MATEMÁTICA', NULL, 'Conversión a fracción decimal', 
'Las fracciones decimales tienen como denominador una potencia de 10 (10, 100, 1000, etc.) y son especialmente útiles para realizar conversiones entre fracciones y números decimales.', 
NULL, NULL, NULL, '¿Cuál de las siguientes fracciones es decimal?', 
'1/3', '3/4', '7/10', '2/5', 'C', 5, 8, 'Fracciones decimales'),

('MATEMÁTICA', NULL, 'Equivalencia decimal', 
'Las fracciones decimales pueden expresarse fácilmente como números decimales, lo que facilita operaciones y comparaciones en diversos contextos matemáticos.', 
NULL, NULL, NULL, '¿Qué número decimal equivale a la fracción 23/100?', 
'0.023', '0.23', '2.3', '23.0', 'B', 5, 8, 'Fracciones decimales'),

('MATEMÁTICA', NULL, 'Identificación de fracciones no decimales', 
'No todas las fracciones pueden expresarse exactamente como fracciones decimales. Reconocer estas diferencias es importante para elegir el método adecuado de conversión.', 
NULL, NULL, NULL, '¿Cuál de estas fracciones NO puede expresarse exactamente como fracción decimal?', 
'1/2', '1/4', '1/5', '1/3', 'D', 5, 8, 'Fracciones decimales'),

('MATEMÁTICA', NULL, 'Suma de fracciones decimales', 
'Sumar fracciones decimales es más sencillo que sumar fracciones comunes, ya que solo requiere alinear los denominadores iguales, similar a sumar números decimales.', 
NULL, NULL, NULL, '¿Cuál es el resultado de 3/10 + 45/100?', 
'48/100', '75/100', '48/110', '75/110', 'B', 5, 8, 'Fracciones decimales'),

('MATEMÁTICA', NULL, 'Comparación de fracciones decimales', 
'Al comparar fracciones decimales, es útil convertirlas al mismo denominador o a su forma decimal para determinar cuál es mayor o menor.', 
NULL, NULL, NULL, '¿Cuál es mayor: 7/20 o 3/10?', 
'7/20', '3/10', 'Son iguales', 'No se puede determinar', 'A', 5, 8, 'Fracciones decimales'),

-- Preguntas sobre Conversión de números decimales, aproximaciones y cifras significativas
('MATEMÁTICA', NULL, 'Redondeo a décimas', 
'El redondeo de números decimales es una habilidad importante para presentar resultados con la precisión adecuada en diferentes contextos científicos y cotidianos.', 
NULL, NULL, NULL, '¿Cómo se redondea 3.467 a la décima más cercana?', 
'3.4', '3.5', '3.46', '3.47', 'B', 5, 8, 'Conversión de números decimales, aproximaciones y cifras significativas'),

('MATEMÁTICA', NULL, 'Cifras significativas en medidas', 
'Las cifras significativas indican la precisión de una medición. Identificarlas correctamente es esencial en ciencias e ingeniería para reportar datos con la exactitud adecuada.', 
NULL, NULL, NULL, '¿Cuántas cifras significativas tiene el número 0.00450?', 
'2', '3', '4', '5', 'B', 5, 8, 'Conversión de números decimales, aproximaciones y cifras significativas'),

('MATEMÁTICA', NULL, 'Conversión a fracción', 
'Convertir números decimales exactos a fracciones es un proceso sistemático que refuerza la comprensión de la relación entre ambas representaciones numéricas.', 
NULL, NULL, NULL, '¿Qué fracción representa 0.125 en su forma más simple?', 
'1/8', '1/4', '1/6', '1/5', 'A', 5, 8, 'Conversión de números decimales, aproximaciones y cifras significativas'),

('MATEMÁTICA', NULL, 'Aproximación por truncamiento', 
'El truncamiento es un método de aproximación que simplemente corta los dígitos más allá de cierta posición decimal, sin redondear.', 
NULL, NULL, NULL, '¿Cuál es el resultado de truncar π (3.141592...) a tres decimales?', 
'3.141', '3.142', '3.140', '3.1415', 'A', 5, 8, 'Conversión de números decimales, aproximaciones y cifras significativas'),

('MATEMÁTICA', NULL, 'Notación científica básica', 
'La notación científica expresa números muy grandes o pequeños de forma compacta, usando potencias de 10. Es fundamental en ciencias para manejar escalas extremas.', 
NULL, NULL, NULL, '¿Cómo se expresa 450,000 en notación científica?', 
'4.5 × 10^4', '4.5 × 10^5', '45 × 10^4', '0.45 × 10^6', 'B', 5, 8, 'Conversión de números decimales, aproximaciones y cifras significativas');

-- Insertar preguntas para el tema: Razón aritmética y geométrica
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Comparando edades', 
'En una familia, la edad del padre es 45 años y la del hijo es 15 años. La razón aritmética entre sus edades nos permite determinar la diferencia de años entre ellos, mientras que la razón geométrica nos muestra la relación proporcional entre ambas edades.', 
NULL, NULL, NULL, 
'¿Cuál es la razón geométrica entre la edad del padre y la del hijo?', 
'1:3', '3:1', '2:1', '1:2', 
'B', 5, 8, 'Razón aritmética y geométrica'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Razón en el aula', 
'En un salón de clases hay 12 niñas y 18 niños. Las razones aritméticas y geométricas son herramientas fundamentales para analizar la composición del grupo y entender las relaciones cuantitativas entre sus componentes.', 
NULL, NULL, NULL, 
'¿Cuál es la razón aritmética entre el número de niñas y niños?', 
'6', '8', '10', '12', 
'A', 5, 8, 'Razón aritmética y geométrica'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Proporción de ingredientes', 
'Para preparar una receta de pastel se necesitan 2 tazas de harina por cada 3 tazas de azúcar. Este tipo de relación se puede expresar mediante razones geométricas que son esenciales en la cocina y muchas otras actividades cotidianas.', 
NULL, NULL, NULL, 
'Si usamos 6 tazas de harina, ¿cuántas tazas de azúcar necesitamos según la razón dada?', 
'4', '6', '8', '9', 
'D', 5, 8, 'Razón aritmética y geométrica'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Velocidad y tiempo', 
'Un automóvil viaja a una velocidad constante de 60 km/h, mientras que otro viaja a 90 km/h. La comparación de estas velocidades puede analizarse mediante razones aritméticas y geométricas, conceptos fundamentales en física y matemáticas.', 
NULL, NULL, NULL, 
'¿Cuál es la razón geométrica entre las velocidades de los dos automóviles?', 
'2:3', '3:2', '1:2', '2:1', 
'A', 5, 8, 'Razón aritmética y geométrica'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Distribución de áreas', 
'Un terreno rectangular tiene un largo de 40 metros y un ancho de 25 metros. Las razones nos permiten comparar estas dimensiones y entender mejor la forma y proporciones del terreno.', 
NULL, NULL, NULL, 
'¿Cuál es la razón aritmética entre el largo y el ancho del terreno?', 
'10', '15', '20', '25', 
'B', 5, 8, 'Razón aritmética y geométrica'),

-- Insertar preguntas para el tema: Clases de proporciones. Problemas
('MATEMÁTICA', NULL, 'Proporción directa en reparto', 
'Un premio de $1200 debe repartirse entre tres personas en proporción directa a sus puntajes en un concurso, que fueron 5, 7 y 8 puntos respectivamente. Las proporciones son herramientas matemáticas esenciales para distribuir cantidades de manera justa y equitativa.', 
NULL, NULL, NULL, 
'¿Cuánto dinero recibe la persona con menor puntaje?', 
'$300', '$350', '$400', '$450', 
'A', 5, 8, 'Clases de proporciones. Problemas'),

('MATEMÁTICA', NULL, 'Proporción inversa en trabajo', 
'Seis trabajadores pueden construir un muro en 8 horas. La proporción inversa nos ayuda a determinar cómo cambia el tiempo requerido cuando varía la cantidad de trabajadores, un concepto importante en la planificación de proyectos.', 
NULL, NULL, NULL, 
'¿Cuánto tiempo tomaría construir el mismo muro con 12 trabajadores?', 
'2 horas', '4 horas', '6 horas', '8 horas', 
'B', 5, 8, 'Clases de proporciones. Problemas'),

('MATEMÁTICA', NULL, 'Mezcla proporcional', 
'Para preparar una solución desinfectante se mezclan dos líquidos en proporción 3:5. Las proporciones son fundamentales en química y en muchas preparaciones industriales donde se requieren mezclas exactas de componentes.', 
NULL, NULL, NULL, 
'Si se usan 9 litros del primer líquido, ¿cuántos litros del segundo líquido se necesitan?', 
'12', '15', '18', '21', 
'B', 5, 8, 'Clases de proporciones. Problemas'),

('MATEMÁTICA', NULL, 'Escalas y proporciones', 
'En un mapa, 1 cm representa 25 km en la realidad. Las escalas son un tipo especial de proporción que nos permite representar objetos grandes en dimensiones manejables, esencial en cartografía y diseño.', 
NULL, NULL, NULL, 
'¿Qué distancia real representa una medida de 6 cm en el mapa?', 
'125 km', '150 km', '175 km', '200 km', 
'B', 5, 8, 'Clases de proporciones. Problemas'),

('MATEMÁTICA', NULL, 'Reparto proporcional compuesto', 
'Una herencia de $15,000 se reparte entre tres hermanos en proporción directa a sus edades (5, 7 y 8 años) e inversa a los años de estudio (2, 3 y 4 años respectivamente). Las proporciones compuestas permiten considerar múltiples factores en distribuciones complejas.', 
NULL, NULL, NULL, 
'¿Qué parte de la herencia recibe el hermano de 7 años que ha estudiado 3 años?', 
'$4,200', '$4,500', '$4,800', '$5,000', 
'C', 5, 8, 'Clases de proporciones. Problemas'),

-- Insertar preguntas para el tema: Número racional
('MATEMÁTICA', NULL, 'Identificación de racionales', 
'Los números racionales son aquellos que pueden expresarse como fracción de dos números enteros, donde el denominador es diferente de cero. Este conjunto numérico incluye a los enteros, decimales exactos y periódicos.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes números NO es racional?', 
'0.75', '√4', 'π', '1/3', 
'C', 5, 8, 'Número racional'),

('MATEMÁTICA', NULL, 'Fracciones equivalentes', 
'Dos fracciones son equivalentes cuando representan la misma cantidad, aunque estén expresadas con diferentes numeradores y denominadores. Este concepto es fundamental para simplificar fracciones y realizar operaciones con ellas.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes fracciones es equivalente a 3/5?', 
'6/15', '9/20', '12/20', '15/30', 
'C', 5, 8, 'Número racional'),

('MATEMÁTICA', NULL, 'Ordenación de racionales', 
'Para comparar números racionales expresados como fracciones, es útil convertirlos a un común denominador o expresarlos en forma decimal, lo que permite establecer relaciones de orden entre ellos.', 
NULL, NULL, NULL, 
'¿Cuál es el orden correcto de menor a mayor para las fracciones 2/3, 3/4, 5/6 y 7/12?', 
'7/12, 2/3, 3/4, 5/6', '5/6, 3/4, 2/3, 7/12', '7/12, 3/4, 2/3, 5/6', '2/3, 5/6, 3/4, 7/12', 
'A', 5, 8, 'Número racional'),

('MATEMÁTICA', NULL, 'Expresión decimal de racionales', 
'Todo número racional puede expresarse como un decimal exacto o periódico, y viceversa, cualquier decimal exacto o periódico puede convertirse en una fracción. Esta dualidad es una propiedad fundamental de los números racionales.', 
NULL, NULL, NULL, 
'¿Cuál es la expresión fraccionaria del decimal periódico 0.666...?', 
'2/3', '3/5', '6/9', '1/6', 
'A', 5, 8, 'Número racional'),

('MATEMÁTICA', NULL, 'Ubicación en la recta numérica', 
'Los números racionales pueden representarse como puntos en la recta numérica, llenando densamente el espacio entre los enteros. Esta representación ayuda a visualizar su magnitud y relación con otros números.', 
NULL, NULL, NULL, 
'¿Entre qué dos enteros consecutivos se encuentra el número racional 7/2?', 
'1 y 2', '2 y 3', '3 y 4', '4 e 5', 
'C', 5, 8, 'Número racional'),

-- Insertar preguntas para el tema: Operaciones en R
('MATEMÁTICA', NULL, 'Suma de números reales', 
'Las operaciones con números reales siguen propiedades como la conmutativa, asociativa y distributiva, que facilitan su cálculo y simplificación. Dominar estas operaciones es esencial para el álgebra y la resolución de problemas.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de (-3.5) + 2.8 + (-1.2)?', 
'-2.9', '-1.9', '1.9', '2.9', 
'B', 5, 8, 'Operaciones en R'),

('MATEMÁTICA', NULL, 'Multiplicación de reales', 
'La multiplicación de números reales, incluyendo positivos y negativos, sigue reglas específicas sobre los signos que determinan el resultado final. Comprender estas reglas es crucial para operaciones más complejas.', 
NULL, NULL, NULL, 
'¿Cuál es el producto de (-2.5) × 4 × (-0.5)?', 
'-5', '-2.5', '2.5', '5', 
'D', 5, 8, 'Operaciones en R'),

('MATEMÁTICA', NULL, 'Jerarquía de operaciones', 
'Al resolver expresiones combinadas, es fundamental seguir el orden correcto de operaciones: paréntesis, potencias, multiplicaciones y divisiones, sumas y restas. Este orden evita ambigüedades y errores en los cálculos.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de 3 + 5 × 2 - 8 ÷ 4?', 
'8', '10', '11', '12', 
'C', 5, 8, 'Operaciones en R'),

('MATEMÁTICA', NULL, 'Propiedad distributiva', 
'La propiedad distributiva relaciona la suma y la multiplicación, permitiendo expandir o factorizar expresiones algebraicas. Esta propiedad es una herramienta poderosa en la simplificación de ecuaciones.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de aplicar la propiedad distributiva en 3×(4 + 5 - 2)?', 
'3×4 + 3×5 - 3×2', '3×4 + 5 - 2', '4 + 5 - 2×3', '3 + 4×5 - 2', 
'A', 5, 8, 'Operaciones en R'),

('MATEMÁTICA', NULL, 'Operaciones combinadas', 
'Resolver expresiones con múltiples operaciones requiere atención al orden de prioridad y al manejo correcto de signos. La práctica de estos ejercicios desarrolla habilidades fundamentales para el álgebra.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de [15 - (6 + 3)] × 2?', 
'6', '12', '18', '24', 
'B', 5, 8, 'Operaciones en R'),

-- Insertar preguntas para el tema: Radicales
('MATEMÁTICA', NULL, 'Simplificación de radicales', 
'Simplificar radicales consiste en expresarlos en su forma más reducida, extrayendo factores cuando sea posible. Esta técnica facilita operaciones posteriores y la comparación entre radicales.', 
NULL, NULL, NULL, 
'¿Cuál es la forma simplificada de √50?', 
'2√5', '5√2', '10√5', '25√2', 
'B', 5, 8, 'Radicales'),

('MATEMÁTICA', NULL, 'Suma de radicales', 
'Solo radicales con el mismo índice y radicando pueden sumarse directamente. Este concepto es similar a la suma de términos semejantes en álgebra y requiere previa simplificación.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de √18 + √8?', 
'5√2', '7√2', '√26', '26', 
'A', 5, 8, 'Radicales'),

('MATEMÁTICA', NULL, 'Multiplicación de radicales', 
'Para multiplicar radicales con el mismo índice, se multiplican los radicandos manteniendo el índice. Esta propiedad permite combinar radicales en una sola expresión más simple.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de √3 × √12?', 
'√15', '6', '√36', '15', 
'B', 5, 8, 'Radicales'),

('MATEMÁTICA', NULL, 'División de radicales', 
'La división de radicales con el mismo índice sigue reglas similares a la multiplicación, dividiendo los radicandos. Este proceso a menudo conduce a simplificaciones adicionales.', 
NULL, NULL, NULL, 
'¿Cuál es el resultado de √75 ÷ √3?', 
'√25', '5', '√72', '25', 
'B', 5, 8, 'Radicales'),

('MATEMÁTICA', NULL, 'Radicales equivalentes', 
'Los radicales pueden expresarse con diferentes índices mediante exponentes fraccionarios, manteniendo su valor original. Esta transformación es útil en operaciones con radicales de distintos índices.', 
NULL, NULL, NULL, 
'¿Cuál es la expresión con exponente fraccionario de ∛(5²)?', 
'5^(2/3)', '5^(3/2)', '2^(5/3)', '3^(5/2)', 
'A', 5, 8, 'Radicales'),

-- Insertar preguntas para el tema: Racionalización
('MATEMÁTICA', NULL, 'Racionalización simple', 
'Racionalizar consiste en eliminar radicales del denominador multiplicando numerador y denominador por una expresión adecuada. Este proceso simplifica la expresión y facilita cálculos posteriores.', 
NULL, NULL, NULL, 
'¿Cuál es la forma racionalizada de 1/√5?', 
'√5/5', '5/√5', '√5/25', '1/5', 
'A', 5, 8, 'Racionalización'),

('MATEMÁTICA', NULL, 'Racionalización con binomio', 
'Cuando el denominador es un binomio con radicales, se racionaliza multiplicando por su conjugado, lo que elimina los radicales mediante diferencia de cuadrados.', 
NULL, NULL, NULL, 
'¿Cuál es el conjugado de (√3 + √2)?', 
'√3 - √2', '-√3 - √2', '√3 + √2', '√6', 
'A', 5, 8, 'Racionalización'),

('MATEMÁTICA', NULL, 'Racionalización paso a paso', 
'El proceso de racionalización puede requerir varios pasos cuando hay radicales en el numerador y denominador. Cada paso debe simplificar la expresión hasta eliminar todos los radicales del denominador.', 
NULL, NULL, NULL, 
'¿Cuál es la forma racionalizada de (√2)/(√3 - √2)?', 
'(√6 + 2)/1', '(√6 + 2)/5', '√6 + 2', '(√6 - 2)/1', 
'C', 5, 8, 'Racionalización'),

('MATEMÁTICA', NULL, 'Racionalización con variables', 
'La racionalización también aplica a expresiones algebraicas con variables bajo radicales, siguiendo los mismos principios que con números, pero requiriendo mayor cuidado en la manipulación algebraica.', 
NULL, NULL, NULL, 
'¿Cuál es la forma racionalizada de 1/√x?', 
'√x/x', 'x/√x', '√x', '1/x', 
'A', 5, 8, 'Racionalización'),

('MATEMÁTICA', NULL, 'Aplicación de racionalización', 
'La racionalización no solo es un ejercicio algebraico, sino que tiene aplicaciones prácticas en física e ingeniería, donde se prefieren denominadores sin radicales para facilitar cálculos numéricos.', 
NULL, NULL, NULL, 
'Después de racionalizar 3/(2 - √5), ¿cuál es el resultado?', 
'6 + 3√5', '-6 - 3√5', '6 - 3√5', '-6 + 3√5', 
'B', 5, 8, 'Racionalización');

-- Preguntas sobre Potenciación: Exponente natural
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cálculo de áreas cuadradas', 
'En geometría, el área de un cuadrado se calcula elevando al cuadrado la longitud de su lado. Si tenemos un cuadrado cuyo lado mide 5 unidades, podemos determinar su área mediante potenciación.', 
NULL, NULL, NULL, '¿Cuál es el área de un cuadrado con lado de 5 unidades?', 
'25 unidades cuadradas', '10 unidades cuadradas', '20 unidades cuadradas', '15 unidades cuadradas', 'A', 5, 8, 'Potenciación: Exponente natural'),
-- Pregunta 2
('MATEMÁTICA', NULL, 'Crecimiento exponencial de bacterias', 
'En un experimento científico, se observa que una colonia de bacterias se duplica cada hora. Si inicialmente hay 2 bacterias, después de 3 horas la cantidad de bacterias puede calcularse mediante potenciación.', 
NULL, NULL, NULL, '¿Cuántas bacterias habrá después de 3 horas si inicialmente hay 2 y se duplican cada hora?', 
'16', '8', '32', '64', 'A', 5, 8, 'Potenciación: Exponente natural'),
-- Pregunta 3
('MATEMÁTICA', NULL, 'Volumen de cubos', 
'El volumen de un cubo se calcula elevando al cubo la longitud de su arista. Esta es una aplicación práctica de la potenciación con exponente natural en geometría.', 
NULL, NULL, NULL, 'Si un cubo tiene aristas de 3 cm, ¿cuál es su volumen?', 
'27 cm³', '9 cm³', '6 cm³', '18 cm³', 'A', 5, 8, 'Potenciación: Exponente natural'),
-- Pregunta 4
('MATEMÁTICA', NULL, 'Potencias en notación científica', 
'La notación científica utiliza potencias de 10 para expresar números muy grandes o muy pequeños. Comprender las potencias con exponente natural es esencial para trabajar con esta notación.', 
NULL, NULL, NULL, '¿Cómo se expresa 10^4 en notación decimal?', 
'10000', '1000', '100', '100000', 'A', 5, 8, 'Potenciación: Exponente natural'),
-- Pregunta 5
('MATEMÁTICA', NULL, 'Patrones numéricos', 
'En matemáticas, los patrones numéricos a menudo involucran potencias. Identificar estos patrones ayuda a predecir números futuros en la secuencia.', 
NULL, NULL, NULL, '¿Cuál es el siguiente número en la secuencia: 2, 4, 8, 16, ___?', 
'32', '24', '20', '18', 'A', 5, 8, 'Potenciación: Exponente natural'),

-- Preguntas sobre Potenciación: Producto y cociente de bases iguales
('MATEMÁTICA', NULL, 'Multiplicación de potencias', 
'Al multiplicar potencias con la misma base, se mantiene la base y se suman los exponentes. Esta propiedad simplifica cálculos con expresiones exponenciales.', 
NULL, NULL, NULL, '¿Cuál es el resultado de 5³ × 5²?', 
'5^5', '5^6', '25^5', '10^5', 'A', 5, 8, 'Potenciación: Producto y cociente de bases iguales'),
('MATEMÁTICA', NULL, 'División de potencias', 
'Al dividir potencias con la misma base, se mantiene la base y se restan los exponentes. Esta propiedad es fundamental para simplificar fracciones con potencias.', 
NULL, NULL, NULL, '¿Cuál es el resultado de 7^8 ÷ 7^5?', 
'7^3', '7^13', '1^3', '49^3', 'A', 5, 8, 'Potenciación: Producto y cociente de bases iguales'),
('MATEMÁTICA', NULL, 'Simplificación de expresiones', 
'Simplificar expresiones con potencias de la misma base es una habilidad importante en álgebra. Conociendo las propiedades de los exponentes podemos resolver problemas complejos.', 
NULL, NULL, NULL, 'Simplifica la expresión: (3^4 × 3^2) ÷ 3^3', 
'3^3', '3^2', '3^5', '3^9', 'A', 5, 8, 'Potenciación: Producto y cociente de bases iguales'),
('MATEMÁTICA', NULL, 'Aplicación en problemas', 
'Las propiedades de multiplicación y división de potencias con igual base tienen aplicaciones prácticas en física, química y otras ciencias.', 
NULL, NULL, NULL, 'Si un terreno se divide en parcelas cuadradas de lado x, y hay x^3 parcelas, ¿cuál es el área total?', 
'x^5', 'x^6', 'x^2', 'x^3', 'A', 5, 8, 'Potenciación: Producto y cociente de bases iguales'),
('MATEMÁTICA', NULL, 'Comparación de magnitudes', 
'Al trabajar con potencias de la misma base, podemos comparar magnitudes y determinar relaciones entre ellas usando las propiedades de los exponentes.', 
NULL, NULL, NULL, '¿Cuántas veces mayor es 2^6 que 2^3?', 
'8', '2', '4', '16', 'A', 5, 8, 'Potenciación: Producto y cociente de bases iguales'),

-- Preguntas sobre Potencia de potencia
('MATEMÁTICA', NULL, 'Propiedad de potencia de potencia', 
'Cuando tenemos una potencia elevada a otra potencia, multiplicamos los exponentes. Esta propiedad es útil para simplificar expresiones complejas.', 
NULL, NULL, NULL, '¿Cuál es el resultado de (4^2)^3?', 
'4^6', '4^5', '4^8', '16^3', 'A', 5, 8, 'Potencia de potencia'),
('MATEMÁTICA', NULL, 'Simplificación de expresiones anidadas', 
'Las expresiones con múltiples exponentes pueden simplificarse aplicando la propiedad de potencia de potencia de manera consecutiva.', 
NULL, NULL, NULL, 'Simplifica la expresión: [(2^3)^2]^1', 
'2^6', '2^5', '2^12', '8^2', 'A', 5, 8, 'Potencia de potencia'),
('MATEMÁTICA', NULL, 'Aplicación en fórmulas científicas', 
'En física, muchas fórmulas involucran potencias de potencias, especialmente en cálculos de energía y movimiento.', 
NULL, NULL, NULL, 'Si E = (v^2)^3, ¿cómo se puede reescribir E?', 
'v^6', 'v^5', 'v^8', 'v^9', 'A', 5, 8, 'Potencia de potencia'),
('MATEMÁTICA', NULL, 'Comparación de expresiones', 
'Al simplificar expresiones con potencia de potencia, podemos comparar magnitudes y determinar equivalencias.', 
NULL, NULL, NULL, '¿Cuál expresión es equivalente a (5^3)^2?', 
'5^6', '5^5', '25^3', '125^2', 'A', 5, 8, 'Potencia de potencia'),
('MATEMÁTICA', NULL, 'Resolución de problemas', 
'La propiedad de potencia de potencia permite resolver problemas complejos descomponiéndolos en pasos más simples.', 
NULL, NULL, NULL, 'Calcula el valor de (3^2)^(1+1)', 
'3^4', '9^2', '6^2', '3^3', 'A', 5, 8, 'Potencia de potencia'),

-- Preguntas sobre Potenciación: Exponente negativo
('MATEMÁTICA', NULL, 'Significado de exponente negativo', 
'Un exponente negativo indica el recíproco de la base elevada al valor absoluto del exponente. Esta propiedad amplía el concepto de potenciación.', 
NULL, NULL, NULL, '¿Cuál es el valor de 2^-3?', 
'1/8', '-8', '1/6', '-6', 'A', 5, 8, 'Potenciación: Exponente negativo'),
('MATEMÁTICA', NULL, 'Conversión a fracciones', 
'Las potencias con exponente negativo pueden convertirse en fracciones, lo que es útil para operaciones algebraicas y cálculo.', 
NULL, NULL, NULL, 'Convierte 5^-2 a forma fraccionaria:', 
'1/25', '1/10', '-25', '-10', 'A', 5, 8, 'Potenciación: Exponente negativo'),
('MATEMÁTICA', NULL, 'Aplicación en notación científica', 
'En notación científica, los exponentes negativos representan números muy pequeños, como medidas microscópicas o atómicas.', 
NULL, NULL, NULL, '¿Cómo se escribe 10^-5 en forma decimal?', 
'0.00001', '0.0001', '-100000', '-10000', 'A', 5, 8, 'Potenciación: Exponente negativo'),
('MATEMÁTICA', NULL, 'Operaciones con exponentes negativos', 
'Al realizar operaciones con exponentes negativos, es importante aplicar correctamente las propiedades para no cometer errores.', 
NULL, NULL, NULL, 'Calcula: (1/3)^-2', 
'9', '1/9', '-9', '-1/9', 'A', 5, 8, 'Potenciación: Exponente negativo'),
('MATEMÁTICA', NULL, 'Simplificación de expresiones', 
'Simplificar expresiones con exponentes negativos requiere dominio de las propiedades de los exponentes y atención al detalle.', 
NULL, NULL, NULL, 'Simplifica la expresión: x^-4 / x^-2', 
'1/x^2', 'x^2', '1/x^6', 'x^6', 'A', 5, 8, 'Potenciación: Exponente negativo'),

-- Preguntas sobre Potenciación: Exponentes consecutivos
('MATEMÁTICA', NULL, 'Jerarquía de exponentes consecutivos', 
'Cuando hay exponentes consecutivos, se resuelven de arriba hacia abajo. Este orden es fundamental para obtener resultados correctos.', 
NULL, NULL, NULL, 'Calcula el valor de 2^(3^2)', 
'512', '64', '256', '128', 'A', 5, 8, 'Potenciación: Exponentes consecutivos'),
('MATEMÁTICA', NULL, 'Diferencia con potencia de potencia', 
'Es importante distinguir entre (a^b)^c y a^(b^c), ya que producen resultados diferentes debido a la jerarquía de operaciones.', 
NULL, NULL, NULL, '¿Cuál es la diferencia entre (2^3)^2 y 2^(3^2)?', 
'64 vs 512', '64 vs 256', '8 vs 512', '8 vs 64', 'A', 5, 8, 'Potenciación: Exponentes consecutivos'),
('MATEMÁTICA', NULL, 'Aplicación en crecimiento exponencial', 
'En modelos de crecimiento poblacional complejos, pueden aparecer exponentes consecutivos que requieren atención especial.', 
NULL, NULL, NULL, 'Si una población crece según P = 2^(t^(t-1)), ¿cuál es P cuando t=3?', 
'512', '64', '256', '128', 'A', 5, 8, 'Potenciación: Exponentes consecutivos'),
('MATEMÁTICA', NULL, 'Comparación de magnitudes', 
'Al evaluar expresiones con exponentes consecutivos, es posible comparar magnitudes y determinar cuál es mayor.', 
NULL, NULL, NULL, '¿Cuál es mayor: 3^(2^2) o (3^2)^2?', 
'3^(2^2)', '(3^2)^2', 'Son iguales', 'No se puede determinar', 'A', 5, 8, 'Potenciación: Exponentes consecutivos'),
('MATEMÁTICA', NULL, 'Resolución paso a paso', 
'Resolver expresiones con exponentes consecutivos requiere seguir cuidadosamente el orden correcto de operaciones.', 
NULL, NULL, NULL, 'Calcula paso a paso: 4^(2^(1+1))', 
'256', '64', '16', '4096', 'A', 5, 8, 'Potenciación: Exponentes consecutivos'),

-- Preguntas sobre Potenciación: Exponente nulo
('MATEMÁTICA', NULL, 'Propiedad del exponente cero', 
'Cualquier número (excepto cero) elevado a la potencia cero es igual a 1. Esta propiedad es fundamental en álgebra y cálculo.', 
NULL, NULL, NULL, '¿Cuál es el valor de 15^0?', 
'1', '0', '15', 'Indefinido', 'A', 5, 8, 'Potenciación: Exponente nulo'),
('MATEMÁTICA', NULL, 'Aplicación en expresiones', 
'Las expresiones algebraicas a menudo incluyen términos con exponente cero, que pueden simplificarse usando esta propiedad.', 
NULL, NULL, NULL, 'Simplifica: (3x^2 y^5)^0', 
'1', '0', '3x^2 y^5', '3', 'A', 5, 8, 'Potenciación: Exponente nulo'),
('MATEMÁTICA', NULL, 'Casos especiales', 
'El caso de 0^0 es una indeterminación en matemáticas, mientras que para cualquier otro número a, a^0 = 1.', 
NULL, NULL, NULL, '¿Cuál de las siguientes expresiones es igual a 1?', 
'(-5)^0', '0^0', '0^5', '5^1', 'A', 5, 8, 'Potenciación: Exponente nulo'),
('MATEMÁTICA', NULL, 'Demostración de la propiedad', 
'La propiedad del exponente cero puede demostrarse usando las reglas de división de potencias con la misma base.', 
NULL, NULL, NULL, 'Usando la propiedad a^m / a^n = a^(m-n), demuestra que a^0 = 1 para a ≠ 0', 
'a^m / a^m = a^0 = 1', 'a^0 = 0', 'a^0 = a', 'No se puede demostrar', 'A', 5, 8, 'Potenciación: Exponente nulo'),
('MATEMÁTICA', NULL, 'Aplicación en fórmulas', 
'En física y otras ciencias, muchas fórmulas incluyen términos elevados a la potencia cero que se simplifican a 1.', 
NULL, NULL, NULL, 'En la fórmula E = mc^2(x^0), ¿a qué se simplifica E si x ≠ 0?', 
'mc^2', '0', '1', 'mc^2 x', 'A', 5, 8, 'Potenciación: Exponente nulo');

INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR",
  "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA",
  "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D",
  "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Tema: Radicación: Exponente fraccionario
('MATEMÁTICA', NULL, 'Potencias con exponentes fraccionarios',
 'En la clase de matemáticas, el profesor explicó cómo los exponentes fraccionarios pueden relacionarse con raíces. Entender esto es clave para resolver ejercicios complejos de radicación.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de 16^(1/2)?', '2', '4', '8', '16', 'B', 5, 8, 'Radicación: Exponente fraccionario'),

('MATEMÁTICA', NULL, 'Comprensión de exponentes fraccionarios',
 'Al trabajar con raíces cuadradas y cúbicas, es común ver exponentes como 1/2 o 1/3. Interpretarlos correctamente es fundamental en problemas de radicación.',
 NULL, NULL, NULL,
 '¿A qué equivale 27^(1/3)?', '2', '3', '9', '6', 'B', 5, 8, 'Radicación: Exponente fraccionario'),

('MATEMÁTICA', NULL, 'Evaluación de expresiones con exponentes fraccionarios',
 'Los exponentes fraccionarios representan raíces, como la raíz cuadrada o cúbica. Saber transformarlos en valores numéricos permite avanzar en temas más complejos.',
 NULL, NULL, NULL,
 '¿Qué valor tiene 81^(1/4)?', '3', '4', '2', '9', 'A', 5, 8, 'Radicación: Exponente fraccionario'),

('MATEMÁTICA', NULL, 'Raíces como potencias fraccionarias',
 'Muchas veces las raíces pueden ser expresadas como potencias. Reconocer esta equivalencia facilita el cálculo en diversos ejercicios matemáticos.',
 NULL, NULL, NULL,
 '¿A cuánto equivale 64^(1/3)?', '2', '4', '6', '8', 'D', 5, 8, 'Radicación: Exponente fraccionario'),

('MATEMÁTICA', NULL, 'Resolución de expresiones con exponentes racionales',
 'Los exponentes racionales son una forma compacta de representar raíces. Esta habilidad es útil en álgebra y ciencias.',
 NULL, NULL, NULL,
 '¿Qué resultado tiene 32^(1/5)?', '2', '4', '5', '8', 'A', 5, 8, 'Radicación: Exponente fraccionario'),

-- Tema: Radicación: Raíz de raíz
('MATEMÁTICA', NULL, 'Cálculo de raíz de raíz',
 'Resolver raíces anidadas implica entender cómo se combinan potencias y raíces. Este tipo de problema es común en evaluaciones matemáticas.',
 NULL, NULL, NULL,
 '¿Cuál es el valor de √(√81)?', '3', '4', '5', '9', 'A', 5, 8, 'Radicación: Raíz de raíz'),

('MATEMÁTICA', NULL, 'Descomposición de raíces anidadas',
 'En problemas complejos, puede ser necesario calcular la raíz de una raíz. Este proceso requiere aplicar la propiedad de las potencias de forma sucesiva.',
 NULL, NULL, NULL,
 '¿A cuánto equivale √(√256)?', '2', '4', '8', '16', 'C', 5, 8, 'Radicación: Raíz de raíz'),

('MATEMÁTICA', NULL, 'Aplicación de raíces dobles',
 'Para resolver raíces dobles, se debe encontrar primero la raíz interior y luego la exterior. Es una técnica útil para simplificar expresiones.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de √(√16)?', '2', '4', '8', '16', 'A', 5, 8, 'Radicación: Raíz de raíz'),

('MATEMÁTICA', NULL, 'Raíz de raíz con números grandes',
 'Algunos ejercicios pueden implicar raíces dobles de números grandes. Estos se pueden resolver aplicando la propiedad de las potencias de forma ordenada.',
 NULL, NULL, NULL,
 '¿Qué valor tiene √(√625)?', '3', '4', '5', '25', 'C', 5, 8, 'Radicación: Raíz de raíz'),

('MATEMÁTICA', NULL, 'Resolución de raíces compuestas',
 'Las raíces compuestas se resuelven conociendo cómo aplicar correctamente las propiedades de los radicales.',
 NULL, NULL, NULL,
 '¿A qué equivale √(√49)?', '2', '3', '7', '4', 'B', 5, 8, 'Radicación: Raíz de raíz'),

-- Tema: Radicación: Operaciones combinadas
('MATEMÁTICA', NULL, 'Operaciones con raíces combinadas',
 'En evaluaciones, se presentan ejercicios que combinan sumas, restas y multiplicaciones con raíces. Resolverlas requiere seguir el orden correcto de operaciones.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de √9 + √16?', '5', '7', '4', '6', 'B', 5, 8, 'Radicación: Operaciones combinadas'),

('MATEMÁTICA', NULL, 'Suma y multiplicación con radicales',
 'Las operaciones combinadas con raíces pueden incluir tanto sumas como multiplicaciones. Es clave resolver cada raíz primero antes de operar.',
 NULL, NULL, NULL,
 '¿Cuánto es √25 + √36 * √4?', '49', '25', '17', '29', 'C', 5, 8, 'Radicación: Operaciones combinadas'),

('MATEMÁTICA', NULL, 'Raíces y operaciones jerárquicas',
 'Resolver expresiones combinadas con raíces implica seguir la jerarquía de operaciones: primero las raíces, luego multiplicación o suma.',
 NULL, NULL, NULL,
 '¿Cuál es el resultado de √49 - √9 + √16?', '2', '4', '6', '7', 'B', 5, 8, 'Radicación: Operaciones combinadas'),

('MATEMÁTICA', NULL, 'Resolución de expresiones mixtas con raíces',
 'Las expresiones con operaciones combinadas requieren cuidado en el orden de resolución, especialmente cuando involucran radicales.',
 NULL, NULL, NULL,
 '¿A cuánto equivale √64 / √4 + √9?', '8', '6', '7', '5', 'C', 5, 8, 'Radicación: Operaciones combinadas'),

('MATEMÁTICA', NULL, 'Evaluación de combinaciones de raíces',
 'Este tipo de problemas ayuda a mejorar la agilidad mental y comprensión de las raíces cuadradas aplicadas en operaciones.',
 NULL, NULL, NULL,
 '¿Cuánto da √100 - √36 + √49?', '10', '13', '11', '9', 'B', 5, 8, 'Radicación: Operaciones combinadas');

INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN",
  "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B",
  "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Reducción de términos semejantes
('MATEMÁTICA', NULL, 'Identificando términos semejantes', 'En una expresión algebraica, los términos semejantes son aquellos que tienen la misma parte literal y el mismo exponente. Saber reconocerlos permite simplificar correctamente.', NULL, NULL, NULL, '¿Cuál de los siguientes pares son términos semejantes?', '3x^2 y 5x^2', '2xy y 3x^2', 'x^2y y xy^2', '4x y 4y', 'A', 5, 8, 'Reducción de términos semejantes'),
('MATEMÁTICA', NULL, 'Simplificación de expresiones', 'La simplificación de expresiones algebraicas permite resolver problemas de manera más eficiente. Es importante agrupar y reducir correctamente los términos semejantes.', NULL, NULL, NULL, 'Simplifica: 4a + 3a - 2a', '5a', '6a', '7a', '4a', 'A', 5, 8, 'Reducción de términos semejantes'),
('MATEMÁTICA', NULL, 'Agrupación algebraica', 'Agrupar términos semejantes es una técnica clave en álgebra que facilita la resolución de ecuaciones y la simplificación de expresiones complejas.', NULL, NULL, NULL, '¿Cuál es el resultado de reducir: 5m - 2m + 3m?', '10m', '6m', '8m', '5m', 'C', 5, 8, 'Reducción de términos semejantes'),
('MATEMÁTICA', NULL, 'Expresiones algebraicas con varios términos', 'Resolver expresiones con múltiples términos requiere atención para identificar correctamente los semejantes.', NULL, NULL, NULL, 'Reduce: 2x + 3y - x + 5y', 'x + 8y', 'x + y', '3x + 2y', 'x + 5y', 'A', 5, 8, 'Reducción de términos semejantes'),
('MATEMÁTICA', NULL, 'Combinando términos semejantes', 'Es importante combinar correctamente términos semejantes para simplificar ecuaciones y facilitar el análisis de expresiones.', NULL, NULL, NULL, '¿Cuál es la forma reducida de: 6p + 4p - 3p?', '7p', '6p', '5p', '8p', 'D', 5, 8, 'Reducción de términos semejantes'),

-- Grados y valor numérico
('MATEMÁTICA', NULL, 'Valor numérico de una expresión', 'El valor numérico de una expresión algebraica se obtiene al sustituir las variables por números y realizar las operaciones indicadas.', NULL, NULL, NULL, 'Halla el valor numérico de 3x + 2 cuando x = 4', '12', '14', '10', '15', 'B', 5, 8, 'Grados y valor numérico'),
('MATEMÁTICA', NULL, 'Determinando el grado de un polinomio', 'El grado de un polinomio es el exponente más alto entre sus términos. Es fundamental para entender su comportamiento.', NULL, NULL, NULL, '¿Cuál es el grado del polinomio 3x^4 + 2x^3 - 7?', '4', '3', '0', '1', 'A', 5, 8, 'Grados y valor numérico'),
('MATEMÁTICA', NULL, 'Evaluación de expresiones algebraicas', 'Para evaluar una expresión algebraica se debe sustituir las variables y resolver paso a paso.', NULL, NULL, NULL, 'Evalúa: 2a^2 - a cuando a = 2', '6', '4', '2', '10', 'D', 5, 8, 'Grados y valor numérico'),
('MATEMÁTICA', NULL, 'Grado de un término algebraico', 'El grado de un término es la suma de los exponentes de sus variables.', NULL, NULL, NULL, '¿Cuál es el grado del término 5x^2y^3?', '5', '2', '3', '6', 'D', 5, 8, 'Grados y valor numérico'),
('MATEMÁTICA', NULL, 'Análisis de expresiones polinómicas', 'Entender cómo se calcula el grado y valor numérico ayuda a comprender los polinomios y resolver problemas.', NULL, NULL, NULL, '¿Qué grado tiene el polinomio x^3 + 2x^2 + 5?', '3', '2', '1', '0', 'A', 5, 8, 'Grados y valor numérico'),

-- Polinomios: Adición, sustracción y multiplicación
('MATEMÁTICA', NULL, 'Suma de polinomios', 'Para sumar polinomios se deben sumar los términos semejantes. Es una operación básica para el manejo de expresiones algebraicas.', NULL, NULL, NULL, 'Suma: (3x + 2) + (2x + 5)', '5x + 7', '6x + 10', '5x + 5', '4x + 3', 'A', 5, 8, 'Polinomios: Adicion, sustracción y multiplicación'),
('MATEMÁTICA', NULL, 'Resta de polinomios', 'Restar polinomios consiste en cambiar el signo del segundo y luego sumar término a término.', NULL, NULL, NULL, 'Resta: (5x^2 - 3x + 4) - (2x^2 + x - 1)', '3x^2 - 4x + 5', '3x^2 - 2x + 3', '7x^2 - 4x + 5', '3x^2 + 4x + 5', 'A', 5, 8, 'Polinomios: Adicion, sustracción y multiplicación'),
('MATEMÁTICA', NULL, 'Multiplicación de monomios', 'Multiplicar monomios implica multiplicar coeficientes y sumar los exponentes de las variables iguales.', NULL, NULL, NULL, 'Multiplica: (3x)(4x^2)', '12x^2', '7x^3', '12x^3', '6x^2', 'C', 5, 8, 'Polinomios: Adicion, sustracción y multiplicación'),
('MATEMÁTICA', NULL, 'Multiplicación de polinomios', 'Al multiplicar polinomios se aplica la propiedad distributiva y se combinan los términos semejantes.', NULL, NULL, NULL, 'Multiplica: (x + 2)(x - 3)', 'x^2 - 6', 'x^2 - x - 6', 'x^2 - x + 6', 'x^2 - 1', 'B', 5, 8, 'Polinomios: Adicion, sustracción y multiplicación'),
('MATEMÁTICA', NULL, 'Aplicando distributiva en productos', 'El producto de un monomio por un polinomio se realiza aplicando la propiedad distributiva término a término.', NULL, NULL, NULL, 'Multiplica: 2x(3x^2 - x + 1)', '6x^2 - 2x + 2', '6x^2 - x + 1', '6x^3 - 2x^2 + 2x', '6x^3 - 2x^2 + 2x', 'D', 5, 8, 'Polinomios: Adicion, sustracción y multiplicación');

-- División de polinomios: Método de Horner
INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN",
  "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B",
  "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
('MATEMÁTICA', NULL, 'Uso del método de Horner', 'El método de Horner simplifica la división de un polinomio por un binomio lineal de la forma (x - r). Se utiliza para hallar cocientes y residuos de forma ordenada.', NULL, NULL, NULL, '¿Qué valor se debe usar como divisor en Horner para (x - 3)?', 'x = -3', 'x = 3', 'x = 0', 'x = 1', 'B', 5, 8, 'División de polinomios: Método de Horner'),
('MATEMÁTICA', NULL, 'Evaluando con Horner', 'Al aplicar Horner se sustituyen los coeficientes del polinomio y se opera con el valor de r.', NULL, NULL, NULL, 'Aplica Horner para dividir: x^2 + 4x + 3 entre x - 1. ¿Cuál es el residuo?', '2', '1', '0', '3', 'C', 5, 8, 'División de polinomios: Método de Horner'),
('MATEMÁTICA', NULL, 'Aplicación práctica de Horner', 'Horner permite encontrar el valor del polinomio en un punto y verificar si un binomio es factor.', NULL, NULL, NULL, 'Si al aplicar Horner a P(x) con x = 2 el residuo es 0, entonces:', '2 es raíz de P(x)', 'P(2) no es cero', 'El divisor no es válido', 'No se puede usar Horner', 'A', 5, 8, 'División de polinomios: Método de Horner'),
('MATEMÁTICA', NULL, 'Eficiencia del método de Horner', 'Comparado con otros métodos, Horner es más eficiente para divisiones de polinomios entre binomios de grado 1.', NULL, NULL, NULL, '¿Cuál de estos métodos es más directo que el tradicional para dividir entre binomios?', 'Ruffini', 'Factorización', 'Horner', 'Completar cuadrados', 'C', 5, 8, 'División de polinomios: Método de Horner'),
('MATEMÁTICA', NULL, 'Identificación de coeficientes', 'Para usar Horner correctamente se deben escribir todos los coeficientes del polinomio, incluso si son cero.', NULL, NULL, NULL, '¿Qué coeficientes usarías en Horner para x^3 + 0x^2 + 2?', '1, 0, 2', '1, 0, 0, 2', '1, 0, 2, 0', '1, 2, 0', 'B', 5, 8, 'División de polinomios: Método de Horner');

-- División de polinomios: Método de Ruffini
INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN",
  "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B",
  "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
('MATEMÁTICA', NULL, 'Aplicando Ruffini', 'El método de Ruffini se usa para dividir polinomios entre binomios de la forma (x - r) de manera rápida, especialmente cuando los coeficientes son enteros.', NULL, NULL, NULL, '¿Qué condición debe cumplir el divisor en Ruffini?', 'Ser binomio de grado 2', 'Ser de la forma (x - r)', 'Tener coeficientes fraccionarios', 'Tener más de un término', 'B', 5, 8, 'División de polinomios: Método de Ruffini'),
('MATEMÁTICA', NULL, 'Resultado de una división por Ruffini', 'El resultado de Ruffini se obtiene colocando los coeficientes y operando con el número opuesto al que aparece en el divisor.', NULL, NULL, NULL, 'Divide: x^2 + 3x + 2 entre x + 1 usando Ruffini. ¿Cuál es el residuo?', '1', '0', '2', '-1', 'B', 5, 8, 'División de polinomios: Método de Ruffini'),
('MATEMÁTICA', NULL, 'Comparando métodos', 'Ruffini es más rápido que el método largo de división, siempre que el divisor sea adecuado.', NULL, NULL, NULL, '¿Cuál es una ventaja del método de Ruffini?', 'Permite dividir entre cualquier polinomio', 'Solo usa números', 'Ahorra tiempo en divisiones sencillas', 'No requiere conocer coeficientes', 'C', 5, 8, 'División de polinomios: Método de Ruffini'),
('MATEMÁTICA', NULL, 'Error común en Ruffini', 'Olvidar un coeficiente cero puede llevar a errores al usar Ruffini. Es importante considerar todos los términos.', NULL, NULL, NULL, 'Para x^3 + 0x^2 - x + 1, ¿cuáles son los coeficientes correctos para Ruffini?', '1, -1, 1', '1, 0, -1, 1', '1, 1, -1, 0', '1, 0, 1, -1', 'B', 5, 8, 'División de polinomios: Método de Ruffini'),
('MATEMÁTICA', NULL, 'Verificación de resultados', 'Después de aplicar Ruffini se puede comprobar el cociente y residuo multiplicando el divisor por el cociente y sumando el residuo.', NULL, NULL, NULL, 'Si el cociente es x + 2 y el residuo es 1, ¿qué polinomio resulta al multiplicar por (x - 1)?', 'x^2 + 2x + 1', 'x^2 + x + 1', 'x^2 + x - 1', 'x^2 + 3x + 1', 'A', 5, 8, 'División de polinomios: Método de Ruffini');

-- Teorema del resto
INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN",
  "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B",
  "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
('MATEMÁTICA', NULL, 'Aplicando el teorema del resto', 'El teorema del resto indica que el residuo de dividir un polinomio P(x) entre (x - r) es igual a P(r).', NULL, NULL, NULL, '¿Cuál es el residuo al dividir P(x) = x^2 - 3x + 2 entre (x - 1)?', '0', '1', '2', '-2', 'A', 5, 8, 'Teorema del resto'),
('MATEMÁTICA', NULL, 'Cálculo de restos sin dividir', 'Gracias al teorema del resto se puede hallar el residuo sin necesidad de hacer la división completa.', NULL, NULL, NULL, 'Evalúa P(2) si P(x) = 2x^2 + x - 3', '7', '5', '3', '6', 'A', 5, 8, 'Teorema del resto'),
('MATEMÁTICA', NULL, 'Uso del teorema del resto en problemas', 'El teorema permite comprobar si un número es raíz al ver si el residuo es cero.', NULL, NULL, NULL, 'Si P(3) = 0, entonces:', '3 es un factor', '3 es raíz de P(x)', 'El residuo es 1', 'P(x) no tiene raíz', 'B', 5, 8, 'Teorema del resto'),
('MATEMÁTICA', NULL, 'Verificando raíces', 'Cuando el resultado de evaluar un polinomio es 0, se puede decir que el número evaluado es raíz del polinomio.', NULL, NULL, NULL, '¿Cuál es el residuo de dividir x^2 - 4 entre x - 2?', '4', '0', '-4', '2', 'B', 5, 8, 'Teorema del resto'),
('MATEMÁTICA', NULL, 'Propiedad importante del teorema del resto', 'El teorema también sirve para comprobar si un binomio es divisor de un polinomio.', NULL, NULL, NULL, '¿Qué se concluye si el resto es 0 al dividir P(x) entre (x - a)?', 'x = a no es raíz', '(x - a) divide exactamente a P(x)', 'P(a) ≠ 0', 'No se puede usar el teorema', 'B', 5, 8, 'Teorema del resto');

-- Cocientes notables. Caso general: cálculo del término enésimo
INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
  "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", 
  "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", 
  "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA"
)
VALUES
-- Pregunta 1
('MATEMÁTICA', NULL, 'Cocientes notables: diferencia de cuadrados', 
 'Los cocientes notables permiten simplificar expresiones algebraicas aplicando identidades reconocidas. Un caso común es la diferencia de cuadrados, que se puede expresar como el producto de una suma por una resta.',
 NULL, NULL, NULL, 
 '¿Cuál es el cociente de (x² - 9) ÷ (x - 3)?', 
 'x + 3', 'x - 3', 'x² + 3', 'x + 9', 
 'A', 5, 8, 'Cocientes notables. Caso general: cálculo del término enésimo'),

-- Pregunta 2
('MATEMÁTICA', NULL, 'Cocientes notables: binomio al cuadrado', 
 'Los cocientes notables también aplican cuando el numerador es un trinomio cuadrado perfecto. Este puede simplificarse cuando el denominador es el binomio base de ese producto.',
 NULL, NULL, NULL, 
 '¿Cuál es el cociente de (a² + 2a + 1) ÷ (a + 1)?', 
 'a + 1', 'a - 1', 'a² + 1', '2a + 1', 
 'A', 5, 8, 'Cocientes notables. Caso general: cálculo del término enésimo'),

-- Pregunta 3
('MATEMÁTICA', NULL, 'Cocientes notables: trinomio cuadrado perfecto negativo', 
 'Al simplificar un trinomio cuadrado perfecto que representa un cuadrado de una diferencia, es posible reconocer un cociente notable cuando el divisor corresponde al binomio base.',
 NULL, NULL, NULL, 
 '¿Cuál es el cociente de (x² - 6x + 9) ÷ (x - 3)?', 
 'x - 3', 'x + 3', 'x - 9', 'x + 9', 
 'A', 5, 8, 'Cocientes notables. Caso general: cálculo del término enésimo'),

-- Pregunta 4
('MATEMÁTICA', NULL, 'Cocientes notables con coeficientes', 
 'En algunos cocientes notables, los coeficientes de los términos requieren especial atención. Estos casos demandan identificar correctamente la identidad y simplificar.',
 NULL, NULL, NULL, 
 '¿Cuál es el cociente de (4x² - 9) ÷ (2x - 3)?', 
 '2x + 3', '2x - 3', '4x - 3', 'x + 3', 
 'A', 5, 8, 'Cocientes notables. Caso general: cálculo del término enésimo'),

-- Pregunta 5
('MATEMÁTICA', NULL, 'Cocientes notables: generalización de identidades', 
 'Reconocer una estructura algebraica conocida en un cociente permite aplicar identidades notables y resolver rápidamente sin necesidad de una división larga.',
 NULL, NULL, NULL, 
 '¿Cuál es el resultado de (x² + 10x + 25) ÷ (x + 5)?', 
 'x + 5', 'x - 5', 'x + 10', 'x² + 5', 
 'A', 5, 8, 'Cocientes notables. Caso general: cálculo del término enésimo');

-- Preguntas para el tema: Factorización: Productos notables
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', null, 'Desarrollo de binomio al cuadrado', 
'El desarrollo del binomio al cuadrado (a + b)² es un producto notable fundamental en álgebra. Este desarrollo sigue la fórmula: (a + b)² = a² + 2ab + b². Aplicando esta fórmula, podemos expandir expresiones algebraicas de manera eficiente.', 
null, null, null, 
'¿Cuál es el desarrollo correcto de (2x + 3)²?', 
'4x² + 12x + 9', '4x² + 6x + 9', '2x² + 12x + 3', '4x + 12x + 9', 
'B', 5, 8, 'Factorización: Productos notables'),

-- Pregunta 2
('MATEMÁTICA', null, 'Diferencia de cuadrados', 
'La diferencia de cuadrados es otro producto notable importante que sigue la fórmula a² - b² = (a + b)(a - b). Esta identidad permite factorizar expresiones que representan la diferencia entre dos términos cuadrados perfectos.', 
null, null, null, 
'¿Cuál es la factorización correcta de 16x² - 25?', 
'(4x + 5)(4x - 5)', '(8x + 5)(2x - 5)', '(16x + 1)(x - 25)', '(4x - 5)²', 
'A', 5, 8, 'Factorización: Productos notables'),

-- Pregunta 3
('MATEMÁTICA', null, 'Binomio al cubo', 
'El desarrollo del binomio al cubo (a + b)³ sigue la fórmula: (a + b)³ = a³ + 3a²b + 3ab² + b³. Este producto notable es útil para expandir expresiones cúbicas sin necesidad de multiplicaciones repetitivas.', 
null, null, null, 
'¿Cuál es el desarrollo correcto de (x + 2)³?', 
'x³ + 6x² + 12x + 8', 'x³ + 6x + 8', 'x³ + 3x² + 6x + 8', 'x³ + 6x² + 6x + 8', 
'C', 5, 8, 'Factorización: Productos notables'),

-- Pregunta 4
('MATEMÁTICA', null, 'Suma por diferencia', 
'El producto de la suma por la diferencia de dos términos es un producto notable que sigue la forma (a + b)(a - b) = a² - b². Esta identidad es muy útil para simplificar multiplicaciones de binomios conjugados.', 
null, null, null, 
'¿Cuál es el resultado de (5m + 3n)(5m - 3n)?', 
'25m² - 9n²', '25m² + 9n²', '5m² - 3n²', '25m² - 15mn + 9n²', 
'D', 5, 8, 'Factorización: Productos notables'),

-- Pregunta 5
('MATEMÁTICA', null, 'Trinomio cuadrado perfecto', 
'Un trinomio cuadrado perfecto es el resultado de desarrollar un binomio al cuadrado. Tiene la forma a² ± 2ab + b² y puede factorizarse nuevamente como (a ± b)². Identificar estos trinomios es esencial para simplificar expresiones algebraicas.', 
null, null, null, 
'¿Cuál de los siguientes es un trinomio cuadrado perfecto?', 
'x² + 5x + 25', 'x² + 10x + 25', 'x² + 15x + 25', 'x² + 20x + 25', 
'B', 5, 8, 'Factorización: Productos notables'),

-- Preguntas para el tema: Factorización: Factor común
('MATEMÁTICA', null, 'Identificación del factor común', 
'El factor común es el término que está presente en todos los sumandos de una expresión algebraica. Factorizar por factor común consiste en extraer este término y escribir la expresión como un producto.', 
null, null, null, 
'¿Cuál es el factor común en la expresión 6x³y² + 9x²y⁴ - 3x²y²?', 
'3x²y²', '6x³y⁴', '3xy', 'x²y²', 
'A', 5, 8, 'Factorización: Factor común'),

('MATEMÁTICA', null, 'Factorización básica', 
'Factorizar una expresión algebraica significa escribirla como un producto de factores más simples. El primer paso siempre es buscar si existe un factor común en todos los términos.', 
null, null, null, 
'¿Cuál es la factorización correcta de 12a⁴b - 18a³b² + 24a²b³?', 
'6a²b(2a² - 3ab + 4b²)', '3ab(4a³ - 6a²b + 8ab²)', '6ab(2a³ - 3a²b + 4ab²)', '12a²b(a² - 1.5ab + 2b²)', 
'C', 5, 8, 'Factorización: Factor común'),

('MATEMÁTICA', null, 'Factor común en polinomios', 
'Cuando se factoriza por factor común, es importante asegurarse de que el término extraído efectivamente divide a todos los términos de la expresión original.', 
null, null, null, 
'Factoriza completamente: 15x⁵ - 25x⁴ + 10x³', 
'5x³(3x² - 5x + 2)', '5x⁴(3x - 5 + 2x⁻¹)', '5(3x⁵ - 5x⁴ + 2x³)', 'x³(15x² - 25x + 10)', 
'D', 5, 8, 'Factorización: Factor común'),

('MATEMÁTICA', null, 'Factor común con coeficientes fraccionarios', 
'En algunos casos, los coeficientes pueden ser fraccionarios, pero el proceso de factorización sigue siendo el mismo: identificar el máximo factor común.', 
null, null, null, 
'Factoriza: ½x²y + ¾xy² - ¼xy', 
'¼xy(2x + 3y - 1)', '½xy(x + 1.5y - 0.5)', 'xy(0.5x + 0.75y - 0.25)', '¼(2x²y + 3xy² - xy)', 
'A', 5, 8, 'Factorización: Factor común'),

('MATEMÁTICA', null, 'Factor común con variables', 
'Al buscar el factor común en expresiones con variables, debemos considerar tanto los coeficientes numéricos como las partes literales, tomando el menor exponente común.', 
null, null, null, 
'¿Cuál es la factorización correcta de 8m⁴n³ - 12m³n⁵ + 20m²n⁴?', 
'4m²n³(2m² - 3mn² + 5n)', '2m²n³(4m² - 6mn² + 10n)', '4mn(2m³n² - 3m²n⁴ + 5mn³)', 'm²n³(8m² - 12mn² + 20n)', 
'B', 5, 8, 'Factorización: Factor común'),

-- Preguntas para el tema: Factorización: Identidades
('MATEMÁTICA', null, 'Reconocimiento de identidades', 
'Las identidades algebraicas son igualdades que se cumplen para cualquier valor de las variables. Reconocer estas identidades permite factorizar expresiones de manera rápida y eficiente.', 
null, null, null, 
'¿Qué identidad algebraica representa la expresión x² + 6x + 9?', 
'(x + 3)²', '(x + 2)(x + 4)', '(x + 1)(x + 9)', 'No se puede factorizar', 
'C', 5, 8, 'Factorización: Identidades'),

('MATEMÁTICA', null, 'Aplicación de identidades', 
'Las identidades notables más comunes son: el cuadrado de un binomio, la diferencia de cuadrados y el producto de binomios conjugados. Su correcta aplicación simplifica el trabajo algebraico.', 
null, null, null, 
'Factoriza usando identidades: 25 - 4y²', 
'(5 + 2y)(5 - 2y)', '(25 + y)(1 - 4y)', '(5 - 2y)²', '(5 + y)(5 - 4y)', 
'A', 5, 8, 'Factorización: Identidades'),

('MATEMÁTICA', null, 'Identidad del trinomio', 
'Un trinomio cuadrado perfecto puede identificarse porque el primer y tercer término son cuadrados perfectos, y el término central es el doble producto de las raíces de esos cuadrados.', 
null, null, null, 
'¿Cuál de las siguientes expresiones puede factorizarse como (2x - 5)²?', 
'4x² - 20x + 25', '4x² - 10x + 25', '4x² - 25x + 25', '2x² - 20x + 5', 
'D', 5, 8, 'Factorización: Identidades'),

('MATEMÁTICA', null, 'Diferencia de cubos', 
'La diferencia de cubos sigue la identidad a³ - b³ = (a - b)(a² + ab + b²). Esta identidad es menos conocida pero igualmente útil para factorizar expresiones cúbicas.', 
null, null, null, 
'Factoriza: 8x³ - 27', 
'(2x - 3)(4x² + 6x + 9)', '(2x - 3)(4x² - 6x + 9)', '(2x - 3)(2x² + 6x + 3)', '(2x - 9)(4x² + 18x + 9)', 
'B', 5, 8, 'Factorización: Identidades'),

('MATEMÁTICA', null, 'Suma de cubos', 
'Similar a la diferencia de cubos, la suma de cubos sigue la identidad a³ + b³ = (a + b)(a² - ab + b²). Reconocer esta forma permite factorizar expresiones cúbicas de suma.', 
null, null, null, 
'Factoriza: y³ + 64', 
'(y + 4)(y² - 4y + 16)', '(y + 4)(y² + 4y + 16)', '(y + 8)(y² - 8y + 8)', '(y + 2)(y² - 2y + 32)', 
'C', 5, 8, 'Factorización: Identidades'),

-- Preguntas para el tema: Factorización: Aspa simple
('MATEMÁTICA', null, 'Método del aspa simple', 
'El método del aspa simple es una técnica para factorizar trinomios de la forma ax² + bx + c, donde a ≠ 1. Consiste en descomponer el término central en dos términos cuyo producto sea igual a ac.', 
null, null, null, 
'Factoriza usando aspa simple: 3x² + 10x + 8', 
'(3x + 4)(x + 2)', '(3x + 2)(x + 4)', '(x + 4)(3x + 2)', '(x + 2)(3x + 4)', 
'B', 5, 8, 'Factorización: Aspa simple'),

('MATEMÁTICA', null, 'Aplicación del aspa', 
'Para aplicar correctamente el aspa simple, es necesario encontrar dos números que multiplicados den ac y sumados den b. Luego, se descompone el término central y se factoriza por agrupación.', 
null, null, null, 
'Factoriza: 6x² - 7x - 3', 
'(3x + 1)(2x - 3)', '(6x - 1)(x + 3)', '(2x - 3)(3x + 1)', '(6x + 3)(x - 1)', 
'A', 5, 8, 'Factorización: Aspa simple'),

('MATEMÁTICA', null, 'Trinomios con coeficiente principal', 
'Cuando el coeficiente principal (a) es mayor que 1, el método del aspa simple es especialmente útil, ya que otros métodos como el de inspección pueden resultar más complicados.', 
null, null, null, 
'Factoriza: 4x² - 12x + 5', 
'(2x - 5)(2x - 1)', '(4x - 5)(x - 1)', '(2x - 1)(2x - 5)', '(4x - 1)(x - 5)', 
'C', 5, 8, 'Factorización: Aspa simple'),

('MATEMÁTICA', null, 'Verificación de factores', 
'Después de factorizar usando el aspa simple, es importante verificar multiplicando los factores para asegurarse de que se obtiene la expresión original.', 
null, null, null, 
'Factoriza y verifica: 5x² + 11x + 2', 
'(5x + 1)(x + 2)', '(x + 1)(5x + 2)', '(5x + 2)(x + 1)', '(x + 2)(5x + 1)', 
'D', 5, 8, 'Factorización: Aspa simple'),

('MATEMÁTICA', null, 'Factorización completa', 
'El método del aspa simple puede combinarse con la extracción de factor común cuando todos los términos de la expresión tienen un factor común.', 
null, null, null, 
'Factoriza completamente: 8x³ - 2x² - 15x', 
'x(4x - 5)(2x + 3)', 'x(8x² - 2x - 15)', '(2x - 3)(4x² + 5x)', 'x(2x + 3)(4x - 5)', 
'A', 5, 8, 'Factorización: Aspa simple');

-- Preguntas para el tema: Geometría: Segmentos
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('MATEMÁTICA', NULL, 'Longitud de segmentos', 
 'En una recta, los puntos A, B y C son colineales. El segmento AB mide 12 cm y el segmento BC mide 8 cm. Considerando esta información, responde la siguiente pregunta:', 
 NULL, NULL, NULL, 
 '¿Cuál es la longitud del segmento AC?', 
 '20 cm', '4 cm', '18 cm', '10 cm', 
 'A', 5, 8, 'Geometría: Segmentos'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Punto medio', 
 'El segmento PQ tiene una longitud total de 24 cm. El punto M es el punto medio de PQ. Analiza esta situación cuidadosamente.', 
 NULL, NULL, NULL, 
 '¿Cuál es la longitud del segmento PM?', 
 '10 cm', '12 cm', '14 cm', '16 cm', 
 'B', 5, 8, 'Geometría: Segmentos'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Segmentos consecutivos', 
 'Tres segmentos consecutivos están sobre una misma recta. El primer segmento mide 5 cm, el segundo 7 cm y el tercero 9 cm.', 
 NULL, NULL, NULL, 
 '¿Cuál es la longitud total de los tres segmentos juntos?', 
 '15 cm', '18 cm', '21 cm', '24 cm', 
 'C', 5, 8, 'Geometría: Segmentos'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'División de segmentos', 
 'Un segmento de 36 cm se divide en tres partes iguales. Cada parte resultante tiene una longitud específica.', 
 NULL, NULL, NULL, 
 '¿Cuánto mide cada una de las partes resultantes?', 
 '9 cm', '12 cm', '15 cm', '18 cm', 
 'B', 5, 8, 'Geometría: Segmentos'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Comparación de segmentos', 
 'El segmento XY mide 15 cm y el segmento YZ mide el doble que XY. Ambos segmentos son colineales.', 
 NULL, NULL, NULL, 
 '¿Cuál es la longitud del segmento YZ?', 
 '20 cm', '25 cm', '30 cm', '35 cm', 
 'C', 5, 8, 'Geometría: Segmentos'),

-- Preguntas para el tema: Ángulos: Clasificación, propiedades
-- Pregunta 1
('MATEMÁTICA', NULL, 'Clasificación de ángulos', 
 'Los ángulos se pueden clasificar según su medida. Un ángulo que mide exactamente 90 grados tiene un nombre específico.', 
 NULL, NULL, NULL, 
 '¿Cómo se llama un ángulo que mide exactamente 90 grados?', 
 'Agudo', 'Obtuso', 'Recto', 'Llano', 
 'C', 5, 8, 'Ángulos: Clasificación, propiedades'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Ángulos complementarios', 
 'Dos ángulos son complementarios cuando la suma de sus medidas es igual a 90 grados.', 
 NULL, NULL, NULL, 
 'Si un ángulo mide 35 grados, ¿cuánto debe medir su ángulo complementario?', 
 '45 grados', '55 grados', '65 grados', '75 grados', 
 'B', 5, 8, 'Ángulos: Clasificación, propiedades'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Ángulos suplementarios', 
 'Los ángulos suplementarios son aquellos cuya suma de medidas es igual a 180 grados.', 
 NULL, NULL, NULL, 
 'Si un ángulo mide 120 grados, ¿cuánto mide su ángulo suplementario?', 
 '40 grados', '50 grados', '60 grados', '70 grados', 
 'C', 5, 8, 'Ángulos: Clasificación, propiedades'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Ángulos adyacentes', 
 'Los ángulos adyacentes comparten un vértice y un lado común, y sus otros lados son semirrectas opuestas.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes afirmaciones sobre ángulos adyacentes es correcta?', 
 'Suman 360 grados', 'Suman 180 grados', 'Son siempre iguales', 'Nunca comparten un lado', 
 'B', 5, 8, 'Ángulos: Clasificación, propiedades'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Ángulo llano', 
 'Un ángulo llano es un tipo especial de ángulo que tiene características particulares.', 
 NULL, NULL, NULL, 
 '¿Cuánto mide un ángulo llano?', 
 '90 grados', '120 grados', '180 grados', '270 grados', 
 'C', 5, 8, 'Ángulos: Clasificación, propiedades'),

-- Preguntas para el tema: Triángulos: Propiedades adicionales
-- Pregunta 1
('MATEMÁTICA', NULL, 'Suma de ángulos internos', 
 'En cualquier triángulo, la suma de las medidas de sus ángulos internos sigue una regla específica.', 
 NULL, NULL, NULL, 
 '¿Cuál es la suma de los ángulos internos de cualquier triángulo?', 
 '90 grados', '120 grados', '180 grados', '360 grados', 
 'C', 5, 8, 'Triángulos: Propiedades adicionales'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Triángulo equilátero', 
 'Un triángulo equilátero tiene tres lados iguales y tres ángulos iguales.', 
 NULL, NULL, NULL, 
 '¿Cuánto mide cada ángulo en un triángulo equilátero?', 
 '30 grados', '45 grados', '60 grados', '90 grados', 
 'C', 5, 8, 'Triángulos: Propiedades adicionales'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Triángulo isósceles', 
 'Un triángulo isósceles tiene dos lados iguales y dos ángulos iguales.', 
 NULL, NULL, NULL, 
 'Si en un triángulo isósceles uno de los ángulos iguales mide 50 grados, ¿cuánto mide el ángulo desigual?', 
 '50 grados', '60 grados', '80 grados', '100 grados', 
 'C', 5, 8, 'Triángulos: Propiedades adicionales'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Desigualdad triangular', 
 'La desigualdad triangular establece una relación entre las longitudes de los lados de un triángulo.', 
 NULL, NULL, NULL, 
 'Según la desigualdad triangular, para tres segmentos de longitudes 5 cm, 7 cm y 13 cm:', 
 'Pueden formar un triángulo', 'No pueden formar un triángulo', 'Solo pueden formar un triángulo rectángulo', 'Solo pueden formar un triángulo isósceles', 
 'B', 5, 8, 'Triángulos: Propiedades adicionales'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Ángulo exterior', 
 'En un triángulo, un ángulo exterior es igual a la suma de los dos ángulos interiores no adyacentes a él.', 
 NULL, NULL, NULL, 
 'Si en un triángulo dos ángulos interiores miden 40° y 60°, ¿cuánto mide el ángulo exterior adyacente al tercer ángulo?', 
 '80 grados', '100 grados', '120 grados', '140 grados', 
 'B', 5, 8, 'Triángulos: Propiedades adicionales'),

-- Preguntas para el tema: Triángulos. Líneas y puntos notables
-- Pregunta 1
('MATEMÁTICA', NULL, 'Altura de un triángulo', 
 'La altura de un triángulo es un segmento perpendicular que va desde un vértice al lado opuesto o a su prolongación.', 
 NULL, NULL, NULL, 
 '¿Cuántas alturas tiene un triángulo?', 
 '1', '2', '3', '4', 
 'C', 5, 8, 'Triángulos. Líneas y puntos notables: Altura, ortocentro, mediana, mediatriz, bisectriz, ceviana'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Ortocentro', 
 'El ortocentro es el punto de intersección de las tres alturas de un triángulo.', 
 NULL, NULL, NULL, 
 'En un triángulo rectángulo, ¿dónde se encuentra el ortocentro?', 
 'En el centro del triángulo', 'En el vértice del ángulo recto', 'Fuera del triángulo', 'En el punto medio de la hipotenusa', 
 'B', 5, 8, 'Triángulos. Líneas y puntos notables: Altura, ortocentro, mediana, mediatriz, bisectriz, ceviana'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Medianas', 
 'La mediana de un triángulo es el segmento que une un vértice con el punto medio del lado opuesto.', 
 NULL, NULL, NULL, 
 '¿Cómo se llama el punto donde se intersectan las tres medianas de un triángulo?', 
 'Ortocentro', 'Baricentro', 'Incentro', 'Circuncentro', 
 'B', 5, 8, 'Triángulos. Líneas y puntos notables: Altura, ortocentro, mediana, mediatriz, bisectriz, ceviana'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Bisectriz', 
 'La bisectriz de un ángulo es la recta que lo divide en dos ángulos iguales.', 
 NULL, NULL, NULL, 
 '¿Cómo se llama el punto donde se intersectan las tres bisectrices de un triángulo?', 
 'Ortocentro', 'Baricentro', 'Incentro', 'Circuncentro', 
 'C', 5, 8, 'Triángulos. Líneas y puntos notables: Altura, ortocentro, mediana, mediatriz, bisectriz, ceviana'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Mediatriz', 
 'La mediatriz de un segmento es la recta perpendicular al segmento en su punto medio.', 
 NULL, NULL, NULL, 
 '¿Cómo se llama el punto donde se intersectan las tres mediatrices de un triángulo?', 
 'Ortocentro', 'Baricentro', 'Incentro', 'Circuncentro', 
 'D', 5, 8, 'Triángulos. Líneas y puntos notables: Altura, ortocentro, mediana, mediatriz, bisectriz, ceviana'),

-- Preguntas para el tema: Congruencia de triángulos
-- Pregunta 1
('MATEMÁTICA', NULL, 'Criterio LAL', 
 'Dos triángulos son congruentes si tienen dos lados iguales y el ángulo comprendido entre ellos igual.', 
 NULL, NULL, NULL, 
 '¿Qué criterio de congruencia se cumple si dos triángulos tienen dos lados iguales y el ángulo entre ellos igual?', 
 'ALA', 'LAL', 'LLL', 'LAA', 
 'B', 5, 8, 'Congruencia de triángulos'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Criterio ALA', 
 'Dos triángulos son congruentes si tienen un lado igual y los ángulos adyacentes a ese lado iguales.', 
 NULL, NULL, NULL, 
 '¿Qué criterio de congruencia se aplica cuando dos triángulos tienen un lado igual y los dos ángulos adyacentes a ese lado iguales?', 
 'ALA', 'LAL', 'LLL', 'LAA', 
 'A', 5, 8, 'Congruencia de triángulos'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Triángulos congruentes', 
 'Los triángulos congruentes tienen todos sus lados y ángulos correspondientes iguales.', 
 NULL, NULL, NULL, 
 'Si dos triángulos son congruentes, ¿cuál de las siguientes afirmaciones es verdadera?', 
 'Tienen el mismo perímetro', 'Tienen la misma área', 'Tienen los mismos ángulos', 'Todas las anteriores', 
 'D', 5, 8, 'Congruencia de triángulos'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Criterio LLL', 
 'Dos triángulos son congruentes si tienen sus tres lados respectivamente iguales.', 
 NULL, NULL, NULL, 
 '¿Qué criterio de congruencia se cumple cuando dos triángulos tienen sus tres lados iguales?', 
 'ALA', 'LAL', 'LLL', 'LAA', 
 'C', 5, 8, 'Congruencia de triángulos'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Aplicación de congruencia', 
 'La congruencia de triángulos se puede usar para demostrar que ciertos segmentos o ángulos son iguales.', 
 NULL, NULL, NULL, 
 'Si dos triángulos son congruentes por el criterio LAL, ¿qué elementos son necesariamente iguales?', 
 'Solo los lados', 'Solo los ángulos', 'Todos los lados y ángulos', 'Solo los elementos usados en el criterio', 
 'C', 5, 8, 'Congruencia de triángulos'),

-- Preguntas para el tema: Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares
-- Pregunta 1
('MATEMÁTICA', NULL, 'Ángulos opuestos por el vértice', 
 'Los ángulos opuestos por el vértice se forman cuando dos rectas se intersectan y son iguales entre sí.', 
 NULL, NULL, NULL, 
 'Si un ángulo opuesto por el vértice mide 45 grados, ¿cuánto mide el otro ángulo opuesto?', 
 '30 grados', '45 grados', '60 grados', '90 grados', 
 'B', 5, 8, 'Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Ángulos entre paralelas', 
 'Cuando una recta transversal corta a dos rectas paralelas, se forman ángulos correspondientes iguales.', 
 NULL, NULL, NULL, 
 'Si dos rectas paralelas son cortadas por una transversal y un ángulo correspondiente mide 70 grados, ¿cuánto mide su ángulo alterno interno?', 
 '70 grados', '110 grados', '20 grados', '160 grados', 
 'A', 5, 8, 'Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Rectas perpendiculares', 
 'Dos rectas son perpendiculares cuando al cortarse forman cuatro ángulos rectos.', 
 NULL, NULL, NULL, 
 '¿Cuánto mide cada ángulo formado por dos rectas perpendiculares?', 
 '45 grados', '60 grados', '90 grados', '180 grados', 
 'C', 5, 8, 'Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Suma de ángulos consecutivos', 
 'Los ángulos consecutivos formados en una recta suman 180 grados.', 
 NULL, NULL, NULL, 
 'Si dos ángulos consecutivos en una recta están en relación 2:3, ¿cuánto mide el ángulo mayor?', 
 '72 grados', '90 grados', '108 grados', '120 grados', 
 'C', 5, 8, 'Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Ángulos alternos externos', 
 'Cuando una transversal corta dos rectas paralelas, los ángulos alternos externos son iguales.', 
 NULL, NULL, NULL, 
 'Si un ángulo alterno externo mide 115 grados, ¿cuánto mide su ángulo conjugado interno?', 
 '65 grados', '75 grados', '115 grados', '245 grados', 
 'A', 5, 8, 'Rectas paralelas y perpendiculares. Ángulos opuestos por el vértice. Operaciones con medidas angulares'),

-- Preguntas para el tema: Triángulos rectángulos notables. Pitágoras. Teoremas básicos
-- Pregunta 1
('MATEMÁTICA', NULL, 'Teorema de Pitágoras', 
 'En un triángulo rectángulo, el cuadrado de la hipotenusa es igual a la suma de los cuadrados de los catetos.', 
 NULL, NULL, NULL, 
 'En un triángulo rectángulo, si los catetos miden 3 cm y 4 cm, ¿cuánto mide la hipotenusa?', 
 '5 cm', '6 cm', '7 cm', '8 cm', 
 'A', 5, 8, 'Triángulos rectángulos notables. Pitágoras. Teoremas básicos'),
 
-- Pregunta 2
('MATEMÁTICA', NULL, 'Triángulo 45-45-90', 
 'En un triángulo rectángulo isósceles (45-45-90), los catetos son iguales y la hipotenusa es igual a un cateto por √2.', 
 NULL, NULL, NULL, 
 'Si un cateto de un triángulo 45-45-90 mide 5 cm, ¿cuánto mide la hipotenusa?', 
 '5 cm', '5√2 cm', '10 cm', '15 cm', 
 'B', 5, 8, 'Triángulos rectángulos notables. Pitágoras. Teoremas básicos'),
 
-- Pregunta 3
('MATEMÁTICA', NULL, 'Triángulo 30-60-90', 
 'En un triángulo 30-60-90, el lado opuesto a 30° es la mitad de la hipotenusa, y el lado opuesto a 60° es (√3/2) veces la hipotenusa.', 
 NULL, NULL, NULL, 
 'En un triángulo 30-60-90, si el lado más corto mide 4 cm, ¿cuánto mide el lado opuesto a 60°?', 
 '4 cm', '4√3 cm', '8 cm', '8√3 cm', 
 'B', 5, 8, 'Triángulos rectángulos notables. Pitágoras. Teoremas básicos'),
 
-- Pregunta 4
('MATEMÁTICA', NULL, 'Aplicación del teorema de Pitágoras', 
 'El teorema de Pitágoras se puede usar para encontrar lados desconocidos en triángulos rectángulos.', 
 NULL, NULL, NULL, 
 'En un triángulo rectángulo, si un cateto mide 6 cm y la hipotenusa 10 cm, ¿cuánto mide el otro cateto?', 
 '6 cm', '7 cm', '8 cm', '9 cm', 
 'C', 5, 8, 'Triángulos rectángulos notables. Pitágoras. Teoremas básicos'),
 
-- Pregunta 5
('MATEMÁTICA', NULL, 'Recíproco del teorema de Pitágoras', 
 'Si en un triángulo el cuadrado del lado mayor es igual a la suma de los cuadrados de los otros dos lados, entonces es rectángulo.', 
 NULL, NULL, NULL, 
 'Un triángulo tiene lados de 5 cm, 12 cm y 13 cm. ¿Qué tipo de triángulo es?', 
 'Acutángulo', 'Obtusángulo', 'Rectángulo', 'Equilátero', 
 'C', 5, 8, 'Triángulos rectángulos notables. Pitágoras. Teoremas básicos');

-- Ecuaciones lineales y problemas
INSERT INTO pregunta 
("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA")
VALUES
('MATEMÁTICA', NULL, 'Resolución de ecuaciones lineales', 'Una tienda vende manzanas a $3 cada una. Si un cliente compra 5 manzanas y paga con un billete de $20, ¿cuánto recibirá de vuelto?', NULL, NULL, NULL, '¿Cuánto es el vuelto que recibe el cliente?', '5', '7', '10', '15', 'B', 5, 8, 'Ecuaciones lineales y problemas'),
('MATEMÁTICA', NULL, 'Problema de ecuación lineal', 'Un autobús se llena de pasajeros. Cada asiento tiene capacidad para 4 personas y el autobús está lleno con 120 personas. ¿Cuántos asientos tiene el autobús?', NULL, NULL, NULL, '¿Cuántos asientos tiene el autobús?', '20', '25', '30', '35', 'C', 5, 8, 'Ecuaciones lineales y problemas'),
('MATEMÁTICA', NULL, 'Ecuaciones lineales', 'Carlos tiene $50 y compra 3 camisetas que cuestan $12 cada una. ¿Cuánto dinero le queda después de la compra?', NULL, NULL, NULL, '¿Cuánto dinero le queda a Carlos?', '4', '6', '8', '10', 'B', 5, 8, 'Ecuaciones lineales y problemas'),
('MATEMÁTICA', NULL, 'Problema con ecuación', 'En una tienda de comestibles se venden 5 kilos de arroz por $25. ¿Cuánto costarán 7 kilos de arroz?', NULL, NULL, NULL, '¿Cuánto costarán 7 kilos de arroz?', '35', '37', '40', '42', 'A', 5, 8, 'Ecuaciones lineales y problemas'),
('MATEMÁTICA', NULL, 'Ecuaciones lineales con variables', 'Si 3x + 4 = 16, ¿cuál es el valor de x?', NULL, NULL, NULL, '¿Cuál es el valor de x?', '2', '3', '4', '5', 'A', 5, 8, 'Ecuaciones lineales y problemas'),

-- Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución
('MATEMÁTICA', NULL, 'Sistema de ecuaciones por sustitución', 'Resuelve el siguiente sistema de ecuaciones por sustitución: x + y = 10 y 2x - y = 4', NULL, NULL, NULL, '¿Cuál es el valor de x?', '4', '5', '6', '7', 'B', 5, 8, 'Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución'),
('MATEMÁTICA', NULL, 'Sistema de ecuaciones por igualación', 'Resuelve el siguiente sistema por igualación: 3x + 2y = 18 y x - y = 2', NULL, NULL, NULL, '¿Cuál es el valor de y?', '2', '3', '4', '5', 'C', 5, 8, 'Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución'),
('MATEMÁTICA', NULL, 'Sistema de ecuaciones por reducción', 'Resuelve el sistema por el método de reducción: x + 2y = 12 y 3x - 4y = 0', NULL, NULL, NULL, '¿Cuál es el valor de x?', '3', '4', '5', '6', 'A', 5, 8, 'Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución'),
('MATEMÁTICA', NULL, 'Sistema de ecuaciones por sustitución', 'Resuelve el sistema por sustitución: 4x - y = 7 y x + y = 9', NULL, NULL, NULL, '¿Cuál es el valor de y?', '2', '3', '4', '5', 'D', 5, 8, 'Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución'),
('MATEMÁTICA', NULL, 'Sistema de ecuaciones por igualación', 'Resuelve el sistema por igualación: 5x + 3y = 15 y 2x + y = 7', NULL, NULL, NULL, '¿Cuál es el valor de x?', '2', '3', '4', '5', 'C', 5, 8, 'Sistema de ecuaciones con dos incógnitas. Método de reducción, igualación y sustitución'),

-- Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados
('MATEMÁTICA', NULL, 'Resolución por factorización', 'Resuelve la ecuación x² - 5x + 6 = 0 por factorización', NULL, NULL, NULL, '¿Cuál es la solución de la ecuación?', 'x = 1, x = 6', 'x = -1, x = 6', 'x = 2, x = 3', 'x = -2, x = -3', 'C', 5, 8, 'Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados'),
('MATEMÁTICA', NULL, 'Ecuación cuadrática por fórmula general', 'Resuelve la ecuación 2x² - 4x - 6 = 0 usando la fórmula general', NULL, NULL, NULL, '¿Cuál es el valor de x?', '1, -3', '2, 3', '3, -2', '1, 2', 'A', 5, 8, 'Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados'),
('MATEMÁTICA', NULL, 'Ecuación cuadrática completando cuadrados', 'Resuelve la ecuación x² - 6x + 9 = 0 completando el cuadrado', NULL, NULL, NULL, '¿Cuál es la solución de la ecuación?', 'x = 3', 'x = -3', 'x = 6', 'x = -6', 'A', 5, 8, 'Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados'),
('MATEMÁTICA', NULL, 'Factorización de cuadrática', 'Resuelve la ecuación x² + 7x + 12 = 0 por factorización', NULL, NULL, NULL, '¿Cuál es la solución de la ecuación?', 'x = -3, -4', 'x = 3, -4', 'x = -2, -6', 'x = 2, 6', 'A', 5, 8, 'Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados'),
('MATEMÁTICA', NULL, 'Ecuación cuadrática usando fórmula general', 'Resuelve la ecuación x² - 2x - 15 = 0 usando la fórmula general', NULL, NULL, NULL, '¿Cuál es el valor de x?', '5, -3', '3, -5', '2, -8', '8, -2', 'A', 5, 8, 'Métodos de resolución de ecuaciones: Factorización, Fórmula general, Completar cuadrados'),

-- Inecuaciones. Desigualdades
('MATEMÁTICA', NULL, 'Inecuaciones simples', 'Resuelve la inecuación 2x - 4 > 6', NULL, NULL, NULL, '¿Cuál es la solución de la inecuación?', 'x > 5', 'x < 5', 'x > 3', 'x < 3', 'A', 5, 8, 'Inecuaciones. Desigualdades'),
('MATEMÁTICA', NULL, 'Inecuación lineal', 'Resuelve la inecuación 3x + 4 ≤ 10', NULL, NULL, NULL, '¿Cuál es la solución de la inecuación?', 'x ≤ 2', 'x ≥ 2', 'x ≤ 1', 'x ≥ 1', 'A', 5, 8, 'Inecuaciones. Desigualdades'),
('MATEMÁTICA', NULL, 'Desigualdad simple', 'Resuelve la inecuación x - 7 > 3', NULL, NULL, NULL, '¿Cuál es la solución de la inecuación?', 'x > 10', 'x < 10', 'x > 5', 'x < 5', 'A', 5, 8, 'Inecuaciones. Desigualdades'),
('MATEMÁTICA', NULL, 'Inecuaciones con fracciones', 'Resuelve la inecuación (x/3) + 2 ≥ 5', NULL, NULL, NULL, '¿Cuál es la solución de la inecuación?', 'x ≥ 9', 'x ≤ 9', 'x ≥ 12', 'x ≤ 12', 'A', 5, 8, 'Inecuaciones. Desigualdades'),
('MATEMÁTICA', NULL, 'Desigualdad con valor absoluto', 'Resuelve la inecuación |x - 3| ≤ 5', NULL, NULL, NULL, '¿Cuál es la solución de la inecuación?', '-2 ≤ x ≤ 8', '-3 ≤ x ≤ 7', '-1 ≤ x ≤ 9', '-4 ≤ x ≤ 6', 'A', 5, 8, 'Inecuaciones. Desigualdades'),

-- Propiedades de las desigualdades
('MATEMÁTICA', NULL, 'Propiedades de desigualdad', 'Si a > b y c > 0, ¿qué se puede concluir sobre la desigualdad?', NULL, NULL, NULL, '¿Cuál es la conclusión?', 'a + c > b + c', 'a - c > b - c', 'a + c < b + c', 'a - c < b - c', 'A', 5, 8, 'Propiedades de las desigualdades'),
('MATEMÁTICA', NULL, 'Propiedad de multiplicación', 'Si a > b y c < 0, ¿cómo cambia la desigualdad al multiplicar ambos lados por c?', NULL, NULL, NULL, '¿Qué pasa con la desigualdad?', 'a * c < b * c', 'a * c > b * c', 'a * c = b * c', 'a * c ≥ b * c', 'A', 5, 8, 'Propiedades de las desigualdades'),
('MATEMÁTICA', NULL, 'Desigualdades', 'Si a < b y c > 0, ¿qué se puede concluir?', NULL, NULL, NULL, '¿Cuál es la conclusión?', 'a + c < b + c', 'a - c > b - c', 'a * c > b * c', 'a * c < b * c', 'A', 5, 8, 'Propiedades de las desigualdades'),
('MATEMÁTICA', NULL, 'Propiedades de desigualdad', 'Si a > b y c > 0, ¿qué se concluye sobre a + c y b + c?', NULL, NULL, NULL, '¿Cuál es la conclusión?', 'a + c > b + c', 'a + c < b + c', 'a + c = b + c', 'a + c ≥ b + c', 'A', 5, 8, 'Propiedades de las desigualdades'),
('MATEMÁTICA', NULL, 'Desigualdad multiplicada por -1', 'Si a > b y multiplicamos ambos lados por -1, ¿qué sucede con la desigualdad?', NULL, NULL, NULL, '¿Cómo cambia la desigualdad?', 'a < b', 'a > b', 'a = b', 'a ≥ b', 'A', 5, 8, 'Propiedades de las desigualdades'),

-- Funciones especiales: constante, lineales, identidad y valor absoluto
('MATEMÁTICA', NULL, 'Funciones constantes', 'Una función constante tiene el valor de 5 para todos los valores de x. ¿Cuál es la ecuación de la función?', NULL, NULL, NULL, '¿Cuál es la ecuación?', 'f(x) = 5', 'f(x) = x', 'f(x) = x + 5', 'f(x) = -x', 'A', 5, 8, 'Funciones especiales: constante, lineales, identidad y valor absoluto'),
('MATEMÁTICA', NULL, 'Funciones lineales', 'La ecuación de una línea es y = 2x + 3. ¿Cuál es el valor de y cuando x = 4?', NULL, NULL, NULL, '¿Cuál es el valor de y?', '11', '10', '9', '8', 'A', 5, 8, 'Funciones especiales: constante, lineales, identidad y valor absoluto'),
('MATEMÁTICA', NULL, 'Función identidad', 'La función identidad es f(x) = x. ¿Qué valor tiene f(7)?', NULL, NULL, NULL, '¿Cuál es el valor de f(7)?', '7', '6', '8', '9', 'A', 5, 8, 'Funciones especiales: constante, lineales, identidad y valor absoluto'),
('MATEMÁTICA', NULL, 'Valor absoluto', '¿Cuál es el valor absoluto de -4?', NULL, NULL, NULL, '¿Cuál es el valor absoluto de -4?', '4', '3', '5', '2', 'A', 5, 8, 'Funciones especiales: constante, lineales, identidad y valor absoluto'),
('MATEMÁTICA', NULL, 'Funciones absolutas', 'La ecuación es f(x) = |x + 3|. ¿Cuál es el valor de f(-5)?', NULL, NULL, NULL, '¿Cuál es el valor de f(-5)?', '8', '7', '9', '10', 'A', 5, 8, 'Funciones especiales: constante, lineales, identidad y valor absoluto'),

-- Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot
('MATEMÁTICA', NULL, 'Ecuación cuadrática por factorización', 'Resuelve x² - 5x + 6 = 0 por factorización', NULL, NULL, NULL, '¿Cuáles son las raíces de la ecuación?', '1 y 6', '2 y 3', '4 y 5', '5 y 6', 'B', 5, 8, 'Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot'),
('MATEMÁTICA', NULL, 'Fórmula general', 'Resuelve la ecuación 2x² - 4x - 6 = 0 usando la fórmula general', NULL, NULL, NULL, '¿Cuál es el valor de x?', '1, -3', '3, -5', '2, 3', '4, -3', 'A', 5, 8, 'Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot'),
('MATEMÁTICA', NULL, 'Fórmula general de Carnot', 'Resuelve la ecuación 3x² - 6x - 9 = 0 utilizando la fórmula general', NULL, NULL, NULL, '¿Cuáles son las soluciones?', 'x = 3, -1', 'x = 1, -3', 'x = 2, -3', 'x = 4, -1', 'A', 5, 8, 'Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot'),
('MATEMÁTICA', NULL, 'Ecuación cuadrática por factorización', 'Resuelve la ecuación x² - 7x + 10 = 0', NULL, NULL, NULL, '¿Cuáles son las soluciones?', 'x = 2, 5', 'x = 3, 4', 'x = 1, 6', 'x = 2, 6', 'A', 5, 8, 'Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot'),
('MATEMÁTICA', NULL, 'Ecuación cuadrática utilizando fórmula general', 'Resuelve la ecuación 4x² - 4x + 1 = 0 usando la fórmula general', NULL, NULL, NULL, '¿Cuál es la solución?', 'x = 1/2', 'x = -1/2', 'x = 2', 'x = -2', 'A', 5, 8, 'Funciones cuadráticas: Por factorización. Uso de la fórmula general o de Carnot');


--PREGUNTAS INGLÉS 2° SECUNDARIA
INSERT INTO pregunta (
  "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
  "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
  "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
  "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Tema: Grammar: Articles, Adjectives and Verbs
('INGLÉS', NULL, 'Uso correcto de artículos definidos e indefinidos', 
 'En inglés, los artículos "a", "an" y "the" se utilizan para referirse a sustantivos de manera específica o general. Es importante saber cuándo usar cada uno.', 
 NULL, NULL, NULL, 'Selecciona la opción que completa correctamente la oración: "I saw ___ elephant at the zoo."', 
 'a', 'an', 'the', 'some', 'B', 4, 8, 'Grammar: Articles, Adjectives and Verbs'),

('INGLÉS', NULL, 'Orden de adjetivos en una oración', 
 'Cuando se utilizan múltiples adjetivos en inglés, deben seguir un orden específico antes del sustantivo.', 
 NULL, NULL, NULL, '¿Cuál es la forma correcta de ordenar los adjetivos en la siguiente oración: "She has a ___ bag"?', 
 'red small leather', 'leather small red', 'small red leather', 'red leather small', 'C', 4, 8, 'Grammar: Articles, Adjectives and Verbs'),

('INGLÉS', NULL, 'Conjugación del verbo "to be" en presente', 
 'El verbo "to be" se conjuga de diferentes maneras en presente dependiendo del sujeto de la oración.', 
 NULL, NULL, NULL, 'Completa la oración correctamente: "They ___ happy."', 
 'is', 'are', 'am', 'be', 'B', 4, 8, 'Grammar: Articles, Adjectives and Verbs'),

('INGLÉS', NULL, 'Uso de adjetivos posesivos', 
 'Los adjetivos posesivos indican a quién pertenece algo y deben concordar con el sujeto.', 
 NULL, NULL, NULL, 'Selecciona la opción correcta: "This is ___ book."', 
 'me', 'mine', 'my', 'I', 'C', 4, 8, 'Grammar: Articles, Adjectives and Verbs'),

('INGLÉS', NULL, 'Identificación de verbos en una oración', 
 'Reconocer los verbos en una oración es esencial para comprender su estructura y significado.', 
 NULL, NULL, NULL, '¿Cuál es el verbo en la siguiente oración: "She runs every morning"?', 
 'She', 'runs', 'every', 'morning', 'B', 4, 8, 'Grammar: Articles, Adjectives and Verbs'),

-- Tema: Past Simple: Questions, Negative sentences
('INGLÉS', NULL, 'Formación de preguntas en pasado simple', 
 'Para formar preguntas en pasado simple, se utiliza el auxiliar "did" seguido del sujeto y el verbo en su forma base.', 
 NULL, NULL, NULL, '¿Cuál es la forma correcta de la pregunta: "___ you go to the party last night?"', 
 'Did', 'Do', 'Does', 'Was', 'A', 4, 8, 'Past Simple: Questions, Negative sentences'),

('INGLÉS', NULL, 'Negaciones en pasado simple', 
 'Las oraciones negativas en pasado simple se forman con "did not" o "didn''t" seguido del verbo en su forma base.', 
 NULL, NULL, NULL, 'Completa la oración: "They ___ watch the movie."', 
 'didn''t', 'don''t', 'doesn''t', 'weren''t', 'A', 4, 8, 'Past Simple: Questions, Negative sentences'),

('INGLÉS', NULL, 'Uso de "did" en preguntas', 
 'El auxiliar "did" se utiliza para formar preguntas en pasado simple con verbos regulares e irregulares.', 
 NULL, NULL, NULL, 'Selecciona la opción correcta: "___ he finish his homework?"', 
 'Did', 'Does', 'Do', 'Was', 'A', 4, 8, 'Past Simple: Questions, Negative sentences'),

('INGLÉS', NULL, 'Identificación de errores en negaciones', 
 'Es importante identificar y corregir errores comunes en la formación de oraciones negativas en pasado simple.', 
 NULL, NULL, NULL, '¿Cuál de las siguientes oraciones es incorrecta?', 
 'She didn''t go to school.', 'They didn''t played soccer.', 'I didn''t see him.', 'We didn''t eat breakfast.', 'B', 4, 8, 'Past Simple: Questions, Negative sentences'),

('INGLÉS', NULL, 'Transformación de afirmaciones a negaciones', 
 'Convertir oraciones afirmativas en negativas ayuda a comprender la estructura del pasado simple.', 
 NULL, NULL, NULL, 'Transforma la oración a negativa: "He visited the museum."', 
 'He didn''t visited the museum.', 'He did not visit the museum.', 'He doesn''t visit the museum.', 'He not visited the museum.', 'B', 4, 8, 'Past Simple: Questions, Negative sentences'),

-- Tema: Linkers of cause and effects
('INGLÉS', NULL, 'Uso de conectores de causa y efecto: "because"', 
 'El conector "because" se utiliza para indicar la razón o causa de una acción.', 
 NULL, NULL, NULL, 'Completa la oración: "She was late ___ she missed the bus."', 
 'so', 'because', 'although', 'but', 'B', 4, 8, 'Linkers of cause and effects'),

('INGLÉS', NULL, 'Uso de conectores de efecto: "so"', 
 'El conector "so" se utiliza para indicar el resultado o efecto de una acción.', 
 NULL, NULL, NULL, 'Completa la oración: "He studied hard, ___ he passed the exam."', 
 'because', 'so', 'but', 'although', 'B', 4, 8, 'Linkers of cause and effects'),

('INGLÉS', NULL, 'Diferencia entre "because" y "so"', 
 'Es importante distinguir entre "because" (causa) y "so" (efecto) para construir oraciones coherentes.', 
 NULL, NULL, NULL, '¿Cuál es la opción correcta?: "I was tired ___ I went to bed early."', 
 'so', 'because', 'but', 'although', 'A', 4, 8, 'Linkers of cause and effects'),

('INGLÉS', NULL, 'Uso de "therefore" en contextos formales', 
 'El conector "therefore" se utiliza en contextos formales para indicar una conclusión basada en información previa.', 
 NULL, NULL, NULL, 'Completa la oración: "It rained all night; ___, the match was canceled."', 
 'because', 'so', 'therefore', 'but', 'C', 4, 8, 'Linkers of cause and effects'),

('INGLÉS', NULL, 'Identificación de conectores en un texto', 
 'Reconocer conectores de causa y efecto en un texto ayuda a comprender la relación entre las ideas.', 
 NULL, NULL, NULL, '¿Cuál es el conector de causa en la siguiente oración?: "She didn''t eat breakfast because she was in a hurry."', 
 'because', 'so', 'but', 'although', 'A', 4, 8, 'Linkers of cause and effects'),

-- Tema: Vocabulary travel: The natural world and places
('INGLÉS', NULL, 'Vocabulario relacionado con viajes: medios de transporte', 
 'Conocer el vocabulario relacionado con los medios de transporte es esencial al hablar de viajes.', 
 NULL, NULL, NULL, '¿Cuál de las siguientes opciones es un medio de transporte?', 
 'Mountain', 'River', 'Train', 'Forest', 'C', 4, 8, 'Vocabulary travel: The natural world and places'),

('INGLÉS', NULL, 'Vocabulario de la naturaleza: paisajes', 
 'Identificar diferentes tipos de paisajes naturales enriquece el vocabulario y la comprensión del entorno.', 
 NULL, NULL, NULL, '¿Cuál de las siguientes opciones es un paisaje natural?', 
 'Desert', 'City', 'Road', 'Building', 'A', 4, 8, 'Vocabulary travel: The natural world and places'),

('INGLÉS', NULL, 'Lugares turísticos comunes', 
 'Conocer lugares turísticos comunes ayuda a planificar viajes y comprender conversaciones sobre turismo.', 
 NULL, NULL, NULL, '¿Cuál de los siguientes es un lugar turístico común?', 
 'Museum', 'Factory', 'Office', 'School', 'A', 4, 8, 'Vocabulary travel: The natural world and places'),

('INGLÉS', NULL, 'Vocabulario de actividades al aire libre', 
 'Las actividades al aire libre son comunes en los viajes y es útil conocer el vocabulario asociado.', 
 NULL, NULL, NULL, '¿Cuál de las siguientes es una actividad al aire libre?', 
 'Hiking', 'Reading', 'Cooking', 'Shopping', 'A', 4, 8, 'Vocabulary travel: The natural world and places'),

('INGLÉS', NULL, 'Identificación de elementos naturales', 
 'Reconocer elementos naturales es fundamental para describir entornos y experiencias en la naturaleza.', 
 NULL, NULL, NULL, '¿Cuál de los siguientes es un elemento natural?', 
 'Tree', 'Car', 'House', 'Bridge', 'A', 4, 8, 'Vocabulary travel: The natural world and places'),

-- Tema: Writing a short story
('INGLÉS', NULL, 'Identificación de partes de una historia corta',
 'Una historia corta tiene una estructura básica: inicio, desarrollo y final. Es importante conocer cada una para poder escribir correctamente.',
 NULL, NULL, NULL, '¿Cuál es el inicio de esta historia?: "One day, Lucy found a mysterious key in her backyard..."',
 'A conflict appears', 'The resolution happens', 'The setting and characters are introduced', 'The story ends', 'C', 4, 8, 'Writing a short story'),

('INGLÉS', NULL, 'Uso de conectores temporales en la narración',
 'Palabras como "first", "then", "after that" ayudan a organizar eventos en una narración escrita.',
 NULL, NULL, NULL, '¿Cuál de las siguientes opciones es un conector temporal adecuado?',
 'because', 'after that', 'however', 'therefore', 'B', 4, 8, 'Writing a short story'),

('INGLÉS', NULL, 'Identificación del conflicto en una historia',
 'El conflicto es el problema principal que enfrentan los personajes en una historia.',
 NULL, NULL, NULL, '¿Cuál de las siguientes oraciones presenta un conflicto?',
 'Tom went to the store.', 'Maria met her best friend.', 'The dog ran around the park.', 'A dragon attacked the village.', 'D', 4, 8, 'Writing a short story'),

('INGLÉS', NULL, 'Elección de un título adecuado para una historia',
 'Un buen título debe captar la atención del lector y reflejar el contenido de la historia.',
 NULL, NULL, NULL, '¿Cuál sería el mejor título para una historia sobre una aventura en una isla desierta?',
 'The Office Life', 'The Lonely Island', 'Shopping Day', 'My Pet Dog', 'B', 4, 8, 'Writing a short story'),

('INGLÉS', NULL, 'Reconocimiento del desenlace de una historia',
 'El desenlace o final de una historia resuelve el conflicto y concluye los eventos.',
 NULL, NULL, NULL, '¿Cuál de las siguientes oraciones podría ser un buen final para una historia?',
 'Then he heard a strange noise.', 'He was still thinking about what to do.', 'Finally, she returned home safe and sound.', 'The sun was shining and the birds were singing.', 'C', 4, 8, 'Writing a short story');

INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES
-- Sequential linkers in the past
('INGLÉS', NULL, 'Secuencia de eventos pasados', 'Los conectores secuenciales en el pasado nos ayudan a ordenar eventos históricos o narraciones. Es importante entender cómo se usan palabras como "first", "then", "after that", "finally" para describir una secuencia lógica de acciones.', NULL, NULL, NULL, '¿Cuál es el conector más adecuado para completar esta secuencia? "___ we went to the park, then we had ice cream, and finally we returned home."', 'First', 'Before', 'During', 'Suddenly', 'A', 4, 8, 'Sequential linkers in the past'),
('INGLÉS', NULL, 'Ordenando una historia', 'Cuando narramos eventos pasados, es fundamental usar los conectores adecuados para que la historia tenga coherencia temporal. Observa la siguiente secuencia de eventos y selecciona la opción correcta.', NULL, NULL, NULL, '¿Qué conector falta en esta narración? "We woke up early. ____, we brushed our teeth and got dressed for school."', 'After', 'Then', 'While', 'Because', 'B', 4, 8, 'Sequential linkers in the past'),
('INGLÉS', NULL, 'Conectores temporales', 'Los conectores temporales son esenciales para dar fluidez a nuestras narraciones en inglés. A continuación, selecciona la opción que mejor complete la secuencia lógica de eventos.', NULL, NULL, NULL, 'Selecciona la opción correcta: "She finished her homework. ____, she watched TV for a while before dinner."', 'First', 'Next', 'After that', 'At the beginning', 'C', 4, 8, 'Sequential linkers in the past'),
('INGLÉS', NULL, 'Narración coherente', 'Una buena narración requiere el uso apropiado de conectores secuenciales. Estos ayudan al lector a seguir el orden de los eventos sin confusión.', NULL, NULL, NULL, '¿Cuál es el orden correcto de estos conectores en una narración? 1) Finally 2) Then 3) First', '3-2-1', '1-2-3', '2-3-1', '3-1-2', 'A', 4, 8, 'Sequential linkers in the past'),
('INGLÉS', NULL, 'Completando la secuencia', 'Observa cuidadosamente la siguiente secuencia de eventos y selecciona el conector que mejor complete el espacio en blanco para mantener la coherencia temporal.', NULL, NULL, NULL, '"____ arriving at the party, we greeted the host. Later, we danced and had fun."', 'First', 'After', 'While', 'Before', 'B', 4, 8, 'Sequential linkers in the past'),

-- Superlative in noun phrases
('INGLÉS', NULL, 'Los superlativos', 'Los superlativos se usan para destacar el grado máximo de una cualidad entre un grupo de elementos. Es importante saber formar correctamente estas estructuras gramaticales.', NULL, NULL, NULL, '¿Cuál es la forma superlativa correcta para completar esta frase? "Mount Everest is _____ mountain in the world."', 'the most high', 'the highest', 'the taller', 'the most tall', 'B', 4, 8, 'Superlative in noun phrases'),
('INGLÉS', NULL, 'Comparando cualidades', 'Cuando queremos expresar que algo o alguien tiene la cualidad en el grado más alto dentro de un grupo, usamos la forma superlativa. Selecciona la opción correcta.', NULL, NULL, NULL, 'Completa correctamente: "This is _____ book I have ever read!"', 'the more interesting', 'the interestingest', 'the most interesting', 'the very interesting', 'C', 4, 8, 'Superlative in noun phrases'),
('INGLÉS', NULL, 'Identificando superlativos', 'Reconoce las estructuras superlativas correctas entre las siguientes opciones. Recuerda que los superlativos llevan artículo definido "the".', NULL, NULL, NULL, '¿Cuál de estas frases contiene un superlativo correctamente formado?', 'She is the beautifullest girl in class.', 'This is the most difficult test of the year.', 'He runs the faster in the team.', 'That was the goodest movie ever.', 'B', 4, 8, 'Superlative in noun phrases'),
('INGLÉS', NULL, 'Uso de superlativos', 'Los superlativos pueden formarse de diferentes maneras dependiendo de la longitud del adjetivo. Selecciona la opción que muestra el uso correcto del superlativo.', NULL, NULL, NULL, 'Completa la frase: "July is usually _____ month of the year in this city."', 'the hotest', 'the most hot', 'the hottest', 'the more hot', 'C', 4, 8, 'Superlative in noun phrases'),
('INGLÉS', NULL, 'Formando superlativos', 'Algunos adjetivos tienen formas irregulares en su grado superlativo. Es importante memorizar estas excepciones para usarlas correctamente.', NULL, NULL, NULL, '¿Cuál es la forma superlativa correcta del adjetivo "bad"?', 'the baddest', 'the worst', 'the most bad', 'the worse', 'B', 4, 8, 'Superlative in noun phrases'),

-- Combining adjectives
('INGLÉS', NULL, 'Orden de los adjetivos', 'Cuando usamos varios adjetivos juntos, hay un orden específico que debemos seguir en inglés. Este orden hace que la frase suene natural y correcta.', NULL, NULL, NULL, '¿Cuál es el orden correcto de los adjetivos en esta frase? "She has a _____ _____ _____ bag." (leather / big / black)', 'big black leather', 'black big leather', 'leather big black', 'big leather black', 'A', 4, 8, 'Combining adjectives'),
('INGLÉS', NULL, 'Combinación adecuada', 'Al combinar adjetivos, es importante considerar su tipo (opinión, tamaño, edad, forma, color, etc.) para colocarlos en el orden apropiado.', NULL, NULL, NULL, 'Selecciona la opción con el orden correcto: "They live in a _____ _____ house." (modern / beautiful)', 'beautiful modern', 'modern beautiful', 'beautifuly modern', 'modernly beautiful', 'A', 4, 8, 'Combining adjectives'),
('INGLÉS', NULL, 'Adjetivos múltiples', 'Cuando describimos algo con varios adjetivos, debemos seguir un orden lógico. Selecciona la opción que muestra el orden más natural en inglés.', NULL, NULL, NULL, '¿Cuál es el orden correcto? "He bought a _____ _____ _____ table." (wooden / round / small)', 'small round wooden', 'round small wooden', 'wooden small round', 'small wooden round', 'A', 4, 8, 'Combining adjectives'),
('INGLÉS', NULL, 'Tipos de adjetivos', 'Los adjetivos de opinión generalmente preceden a los adjetivos descriptivos. Selecciona la combinación que siga esta regla correctamente.', NULL, NULL, NULL, 'Completa la frase: "We saw a _____ _____ performance yesterday." (amazing / musical)', 'musical amazing', 'amazingly musical', 'amazing musical', 'musically amazing', 'C', 4, 8, 'Combining adjectives'),
('INGLÉS', NULL, 'Secuencia adjetival', 'El orden típico de los adjetivos en inglés es: opinión, tamaño, edad, forma, color, origen, material, propósito. Selecciona la opción correcta.', NULL, NULL, NULL, '¿Cuál es el orden adecuado? "She wore a _____ _____ dress." (silk / red / long)', 'long red silk', 'red long silk', 'silk long red', 'long silk red', 'A', 4, 8, 'Combining adjectives'),

-- Comparative clauses
('INGLÉS', NULL, 'Estructuras comparativas', 'Las cláusulas comparativas nos permiten establecer relaciones entre dos elementos. Es importante usar la estructura gramatical correcta al formar estas comparaciones.', NULL, NULL, NULL, 'Completa correctamente: "My brother is _____ than me."', 'taller', 'more tall', 'tallest', 'the taller', 'A', 4, 8, 'Comparative clauses'),
('INGLÉS', NULL, 'Comparando habilidades', 'Cuando comparamos habilidades o cualidades, debemos usar la forma comparativa adecuada del adjetivo. Selecciona la opción gramaticalmente correcta.', NULL, NULL, NULL, '¿Cuál es la forma correcta? "She dances _____ than her sister."', 'more beautifully', 'beautifullier', 'more beautiful', 'beautifullyer', 'A', 4, 8, 'Comparative clauses'),
('INGLÉS', NULL, 'Patrones comparativos', 'Algunos adjetivos tienen formas comparativas irregulares que debemos memorizar. Identifica la opción correcta en el siguiente ejercicio.', NULL, NULL, NULL, 'Completa la comparación: "This exercise is _____ than the previous one."', 'more difficult', 'difficulter', 'more difficulter', 'difficultier', 'A', 4, 8, 'Comparative clauses'),
('INGLÉS', NULL, 'Comparaciones correctas', 'Las comparaciones deben ser gramaticalmente precisas y lógicas. Selecciona la opción que complete correctamente la siguiente oración comparativa.', NULL, NULL, NULL, '¿Cuál es la forma correcta? "A laptop is usually _____ than a desktop computer."', 'more portable', 'portabler', 'most portable', 'portable', 'A', 4, 8, 'Comparative clauses'),
('INGLÉS', NULL, 'Uso de "than"', 'La palabra "than" es esencial en las estructuras comparativas. Selecciona la opción que use correctamente esta partícula gramatical.', NULL, NULL, NULL, 'Completa la frase: "Winter is colder _____ spring in this region."', 'that', 'than', 'then', 'to', 'B', 4, 8, 'Comparative clauses'),

-- Ability in the past
('INGLÉS', NULL, 'Habilidades pasadas', 'Para hablar de habilidades en el pasado que ya no se tienen, o que eran posibles en un momento específico, usamos "could" y otras estructuras. Selecciona la opción correcta.', NULL, NULL, NULL, '¿Cuál es la forma correcta? "When I was five, I _____ swim very well."', 'can', 'could', 'am able to', 'have been able to', 'B', 4, 8, 'Ability in the past'),
('INGLÉS', NULL, 'Could vs. Was able to', 'Aunque "could" y "was able to" pueden parecer similares, tienen usos ligeramente diferentes. Selecciona la opción más adecuada para el contexto.', NULL, NULL, NULL, 'Completa la frase: "After much practice, she _____ solve the math problem."', 'could', 'can', 'was able to', 'is able to', 'C', 4, 8, 'Ability in the past'),
('INGLÉS', NULL, 'Expresar capacidad pasada', 'Para hablar de capacidades específicas en el pasado, a menudo usamos "was/were able to" en lugar de "could". Elige la opción correcta.', NULL, NULL, NULL, '¿Cuál es la forma adecuada? "They _____ finish the project on time despite the difficulties."', 'could', 'were able to', 'can', 'are able to', 'B', 4, 8, 'Ability in the past'),
('INGLÉS', NULL, 'Habilidades temporales', 'Cuando hablamos de habilidades que teníamos por un tiempo limitado en el pasado, usamos estructuras específicas. Selecciona la correcta.', NULL, NULL, NULL, 'Completa la frase: "I _____ play the piano when I was younger, but I forgot how."', 'can', 'could', 'am able to', 'will be able to', 'B', 4, 8, 'Ability in the past'),
('INGLÉS', NULL, 'Capacidades específicas', 'Para hablar de logros específicos en el pasado (no habilidades generales), usamos "was able to". Elige la opción adecuada.', NULL, NULL, NULL, '¿Cuál es la forma correcta? "After hours of trying, he _____ fix the computer."', 'could', 'was able to', 'can', 'has been able to', 'B', 4, 8, 'Ability in the past'),

-- Vocabulary Personal qualities: Adjectives
('INGLÉS', NULL, 'Cualidades personales', 'Los adjetivos que describen cualidades personales son esenciales para hablar sobre el carácter de las personas. Selecciona el adjetivo que mejor complete cada descripción.', NULL, NULL, NULL, '¿Qué adjetivo describe a alguien que siempre dice la verdad?', 'honest', 'funny', 'creative', 'shy', 'A', 4, 8, 'Vocabulary Personal qualities: Adjectives'),
('INGLÉS', NULL, 'Describiendo personalidades', 'Conocer adjetivos para describir personalidades nos ayuda a comunicarnos mejor sobre las personas que nos rodean. Elige la opción más adecuada.', NULL, NULL, NULL, '¿Qué adjetivo describe a alguien que se preocupa por los demás?', 'kind', 'lazy', 'bossy', 'messy', 'A', 4, 8, 'Vocabulary Personal qualities: Adjectives'),
('INGLÉS', NULL, 'Rasgos de carácter', 'Los rasgos de carácter pueden ser positivos o negativos. Selecciona el adjetivo que mejor complete la siguiente descripción de personalidad.', NULL, NULL, NULL, '¿Qué adjetivo describe a alguien que siempre llega a tiempo?', 'punctual', 'generous', 'stubborn', 'clumsy', 'A', 4, 8, 'Vocabulary Personal qualities: Adjectives'),
('INGLÉS', NULL, 'Adjetivos positivos', 'Al describir personas, es útil conocer adjetivos que resalten cualidades positivas. Elige la opción que mejor complete la frase.', NULL, NULL, NULL, '¿Qué adjetivo describe a alguien que comparte fácilmente con otros?', 'selfish', 'generous', 'rude', 'impatient', 'B', 4, 8, 'Vocabulary Personal qualities: Adjectives'),
('INGLÉS', NULL, 'Cualidades negativas', 'También es importante reconocer adjetivos que describen aspectos negativos del carácter. Selecciona el más adecuado para la descripción.', NULL, NULL, NULL, '¿Qué adjetivo describe a alguien que no quiere trabajar o hacer esfuerzos?', 'hard-working', 'lazy', 'polite', 'brave', 'B', 4, 8, 'Vocabulary Personal qualities: Adjectives'),

-- Words related to daily activities, sports
('INGLÉS', NULL, 'Actividades cotidianas', 'El vocabulario relacionado con actividades diarias es fundamental para describir nuestras rutinas. Selecciona la opción que mejor complete la oración.', NULL, NULL, NULL, '¿Qué verbo completa correctamente esta actividad diaria? "I _____ my teeth every morning and night."', 'wash', 'brush', 'clean', 'scrub', 'B', 4, 8, 'Words related to daily activities, sports'),
('INGLÉS', NULL, 'Rutinas matutinas', 'Las rutinas matutinas incluyen varias acciones específicas. Elige el verbo que mejor describa la actividad mencionada.', NULL, NULL, NULL, '¿Qué haces normalmente con la alarma por la mañana?', 'I make the alarm.', 'I set the alarm.', 'I turn off the alarm.', 'I hear the alarm.', 'C', 4, 8, 'Words related to daily activities, sports'),
('INGLÉS', NULL, 'Deportes y actividades', 'El vocabulario deportivo es importante para hablar de hobbies y actividades físicas. Selecciona la opción correcta.', NULL, NULL, NULL, '¿Qué verbo se usa específicamente para el fútbol?', 'to throw', 'to kick', 'to hit', 'to catch', 'B', 4, 8, 'Words related to daily activities, sports'),
('INGLÉS', NULL, 'Actividades de ocio', 'Las actividades de tiempo libre tienen vocabulario específico. Elige la palabra que mejor complete la siguiente oración.', NULL, NULL, NULL, 'On weekends, I like to _____ TV series with my friends.', 'see', 'watch', 'look', 'view', 'B', 4, 8, 'Words related to daily activities, sports'),
('INGLÉS', NULL, 'Verbos de rutina', 'Algunos verbos son especialmente útiles para describir lo que hacemos a diario. Selecciona el que mejor complete la oración.', NULL, NULL, NULL, 'Before going to bed, I usually _____ a book for a while.', 'see', 'watch', 'read', 'look', 'C', 4, 8, 'Words related to daily activities, sports');

-- Preguntas para el tema: Demonstrative pronouns
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('INGLÉS', NULL, 'Pronombres demostrativos 1', 'Los pronombres demostrativos en inglés (this, that, these, those) se utilizan para señalar personas, animales o cosas en relación con la distancia. "This" y "these" se refieren a objetos cercanos, mientras que "that" y "those" se refieren a objetos lejanos.', NULL, NULL, NULL, '¿Cuál pronombre demostrativo completaría correctamente la siguiente oración? "______ book on my desk is very interesting."', 'This', 'These', 'Those', 'That', 'D', 4, 8, 'Demonstrative pronouns'),
('INGLÉS', NULL, 'Pronombres demostrativos 2', 'Es importante distinguir entre los pronombres demostrativos en singular (this, that) y plural (these, those). El uso correcto ayuda a comunicar claramente a qué objetos nos referimos.', NULL, NULL, NULL, 'Selecciona la opción correcta para completar: "______ shoes over there are mine."', 'This', 'That', 'These', 'Those', 'D', 4, 8, 'Demonstrative pronouns'),
('INGLÉS', NULL, 'Uso de this/that', 'En conversaciones cotidianas, frecuentemente usamos pronombres demostrativos para referirnos a objetos sin necesidad de repetir sus nombres constantemente.', NULL, NULL, NULL, '¿Cuál es la forma correcta para señalar un solo objeto que está cerca de ti?', 'These', 'Those', 'This', 'They', 'C', 4, 8, 'Demonstrative pronouns'),
('INGLÉS', NULL, 'Elección de pronombres', 'Observa cuidadosamente la distancia y número de objetos antes de seleccionar el pronombre demostrativo apropiado en inglés.', NULL, NULL, NULL, 'Completa la oración: "______ apples here are fresh, but ______ ones on the counter are not."', 'These / those', 'This / that', 'Those / these', 'That / this', 'A', 4, 8, 'Demonstrative pronouns'),
('INGLÉS', NULL, 'Identificación de pronombres', 'Los pronombres demostrativos pueden aparecer al inicio o en medio de oraciones, reemplazando sustantivos mencionados previamente.', NULL, NULL, NULL, 'Identifica el pronombre demostrativo en la siguiente oración: "I prefer these cookies to those we had yesterday."', 'I', 'Prefer', 'These', 'Had', 'C', 4, 8, 'Demonstrative pronouns'),

-- Preguntas para el tema: Pronouns: one, ones
('INGLÉS', NULL, 'Uso de one/ones 1', 'Los pronombres "one" y "ones" se utilizan para evitar la repetición de sustantivos que ya han sido mencionados. "One" reemplaza sustantivos singulares y "ones" sustantivos plurales.', NULL, NULL, NULL, 'Completa la oración: "This dress is too small. Do you have a larger ______?"', 'One', 'Ones', 'It', 'Them', 'A', 4, 8, 'Pronouns: one, ones'),
('INGLÉS', NULL, 'Selección de pronombres', 'Al usar "one" o "ones", debemos asegurarnos de que coincidan en número con el sustantivo al que reemplazan.', NULL, NULL, NULL, '¿Cuál opción completa correctamente la oración? "I don''t like these shoes. I prefer those ______ over there."', 'One', 'Ones', 'Shoe', 'It', 'B', 4, 8, 'Pronouns: one, ones'),
('INGLÉS', NULL, 'Reemplazo con pronombres', 'El uso adecuado de "one" y "ones" hace que el lenguaje sea más fluido y evita repeticiones innecesarias.', NULL, NULL, NULL, 'Elige la opción correcta: "Which cake should I buy? The chocolate ______ looks delicious."', 'Ones', 'One', 'Them', 'Those', 'B', 4, 8, 'Pronouns: one, ones'),
('INGLÉS', NULL, 'Identificación de uso', 'En algunas oraciones, "one" puede referirse a una persona en general, no solo a objetos.', NULL, NULL, NULL, 'Señala la oración que usa correctamente "one" o "ones":', '"I need new glasses. These ones are broken."', '"She is the one who helped me yesterday."', '"Can I have that one on the top shelf?"', 'Todas las anteriores', 'D', 4, 8, 'Pronouns: one, ones'),
('INGLÉS', NULL, 'Corrección gramatical', 'A veces es necesario usar artículos o adjetivos demostrativos antes de "one" o "ones" para mayor claridad.', NULL, NULL, NULL, 'Completa la oración: "These pencils don''t work. Do you have ______ that work?"', 'One', 'Ones', 'Any ones', 'Some ones', 'C', 4, 8, 'Pronouns: one, ones'),

-- Preguntas para el tema: Tag question
('INGLÉS', NULL, 'Preguntas coletilla 1', 'Las "tag questions" son preguntas cortas que se añaden al final de una oración para confirmar información o buscar acuerdo. Siguen reglas específicas basadas en el verbo y tiempo de la oración principal.', NULL, NULL, NULL, 'Completa la tag question: "You''re coming to the party, ______?"', 'aren''t you', 'are you', 'isn''t you', 'don''t you', 'A', 4, 8, 'Tag question'),
('INGLÉS', NULL, 'Formación de tags', 'Si la oración principal es afirmativa, la tag question es negativa, y viceversa. Además, la tag question usa el mismo verbo auxiliar que la oración principal.', NULL, NULL, NULL, 'Selecciona la tag question correcta para: "She doesn''t like pizza,"', 'does she?', 'doesn''t she?', 'isn''t she?', 'do she?', 'A', 4, 8, 'Tag question'),
('INGLÉS', NULL, 'Uso de auxiliares', 'Con verbos en presente simple sin auxiliar, usamos "do/does" en la tag question. Para pasado simple sin auxiliar, usamos "did".', NULL, NULL, NULL, '¿Cuál es la tag question apropiada para: "They went to the museum yesterday,"', 'did they?', 'didn''t they?', 'went they?', 'had they?', 'B', 4, 8, 'Tag question'),
('INGLÉS', NULL, 'Tag con verbos modales', 'Cuando la oración principal contiene un verbo modal (can, could, should, etc.), este se repite en la tag question.', NULL, NULL, NULL, 'Completa: "You can swim, ______?"', 'can you', 'can''t you', 'do you', 'aren''t you', 'B', 4, 8, 'Tag question'),
('INGLÉS', NULL, 'Excepciones en tags', 'Algunas oraciones con "I am" tienen una tag question especial: "aren''t I?". Otras expresiones como "Let''s" usan "shall we?"', NULL, NULL, NULL, 'Elige la tag question correcta para: "I''m late again,"', 'am I not?', 'isn''t I?', 'aren''t I?', 'don''t I?', 'C', 4, 8, 'Tag question'),

-- Preguntas para el tema: Quantifying determiners
('INGLÉS', NULL, 'Determinantes cuantitativos 1', 'Los determinantes cuantitativos (some, any, much, many, few, little, etc.) nos ayudan a expresar cantidades de sustantivos contables e incontables.', NULL, NULL, NULL, 'Selecciona el determinante correcto: "There isn''t ______ milk left in the fridge."', 'some', 'any', 'many', 'few', 'B', 4, 8, 'Quantifying determiners'),
('INGLÉS', NULL, 'Uso de much/many', '"Much" se usa con sustantivos incontables, mientras que "many" se usa con sustantivos contables en plural.', NULL, NULL, NULL, 'Completa la oración: "How ______ students are in your class?"', 'much', 'many', 'some', 'any', 'B', 4, 8, 'Quantifying determiners'),
('INGLÉS', NULL, 'Few/little diferencia', '"Few" se usa con sustantivos contables y "little" con incontables, ambos indicando pequeñas cantidades.', NULL, NULL, NULL, 'Elige la opción correcta: "She has ______ friends, but she''s happy with them."', 'little', 'a little', 'few', 'a few', 'D', 4, 8, 'Quantifying determiners'),
('INGLÉS', NULL, 'Some/any reglas', '"Some" se usa generalmente en oraciones afirmativas, mientras que "any" en negativas e interrogativas, aunque hay excepciones.', NULL, NULL, NULL, '¿Cuál determinante completa correctamente la pregunta? "Would you like ______ tea?"', 'some', 'any', 'many', 'few', 'A', 4, 8, 'Quantifying determiners'),
('INGLÉS', NULL, 'Determinantes compuestos', 'Algunos determinantes como "a lot of", "plenty of", "a great deal of" pueden usarse en diferentes contextos con distintos tipos de sustantivos.', NULL, NULL, NULL, 'Identifica el determinante cuantitativo en: "We have plenty of time to finish the project."', 'We', 'Have', 'Plenty of', 'Time', 'C', 4, 8, 'Quantifying determiners'),

-- Preguntas para el tema: Affirmative and negative commands
('INGLÉS', NULL, 'Comandos afirmativos 1', 'Los comandos en inglés (imperativos) se forman con el verbo en infinitivo sin "to". Los comandos afirmativos son directos, mientras los negativos usan "don''t" antes del verbo.', NULL, NULL, NULL, '¿Cuál es la forma correcta de un comando afirmativo?', 'You sit down.', 'To sit down.', 'Sit down.', 'Sitting down.', 'C', 4, 8, 'Affirmative and negative commands'),
('INGLÉS', NULL, 'Comandos negativos', 'Los comandos negativos se usan para indicar que alguien no debe hacer algo, y siempre incluyen "don''t" antes del verbo principal.', NULL, NULL, NULL, 'Transforma a comando negativo: "Eat in the classroom."', 'Don''t eat in the classroom.', 'No eat in the classroom.', 'Not eat in the classroom.', 'Doesn''t eat in the classroom.', 'A', 4, 8, 'Affirmative and negative commands'),
('INGLÉS', NULL, 'Comandos con objetos', 'Los comandos pueden incluir objetos directos para especificar sobre qué o quién recae la acción.', NULL, NULL, NULL, 'Selecciona el comando correcto para pedir que alguien abra un libro específico:', 'Open it.', 'You open the book.', 'Open the book.', 'Opening the book.', 'C', 4, 8, 'Affirmative and negative commands'),
('INGLÉS', NULL, 'Comandos con please', 'Podemos hacer los comandos más educados añadiendo "please" al inicio o al final de la oración.', NULL, NULL, NULL, '¿Cuál es la forma más educada de pedir que alguien espere?', 'Wait!', 'Please wait.', 'You wait please.', 'Waiting please.', 'B', 4, 8, 'Affirmative and negative commands'),
('INGLÉS', NULL, 'Identificación de comandos', 'No todos los verbos al inicio de una oración son comandos; deben estar en forma imperativa.', NULL, NULL, NULL, 'Identifica cuál de las siguientes es un comando negativo:', 'She doesn''t like noise.', 'Don''t make noise.', 'Not to make noise.', 'No noise making.', 'B', 4, 8, 'Affirmative and negative commands'),

-- Preguntas para el tema: Vocabulary: Investigation
('INGLÉS', NULL, 'Vocabulario investigación 1', 'El vocabulario relacionado con investigaciones incluye términos como evidence, clue, suspect, detective, mystery, proof, entre otros, que son esenciales para hablar sobre este tema.', NULL, NULL, NULL, '¿Cuál palabra se refiere a una persona que resuelve crímenes?', 'Suspect', 'Detective', 'Witness', 'Judge', 'B', 4, 8, 'Vocabulary: Investigation'),
('INGLÉS', NULL, 'Términos legales', 'En contextos de investigación, es importante distinguir entre términos como "proof" (prueba concluyente) y "evidence" (evidencia en general).', NULL, NULL, NULL, 'Selecciona la palabra que significa "información que ayuda a resolver un misterio o crimen":', 'Crime', 'Clue', 'Law', 'Case', 'B', 4, 8, 'Vocabulary: Investigation'),
('INGLÉS', NULL, 'Sustantivos investigación', 'Muchos términos de investigación son sustantivos que describen personas, objetos o conceptos relacionados con resolver misterios.', NULL, NULL, NULL, '¿Qué palabra completa correctamente la oración? "The police found ______ at the scene of the crime that helped identify the thief."', 'a detective', 'a witness', 'evidence', 'a mystery', 'C', 4, 8, 'Vocabulary: Investigation'),
('INGLÉS', NULL, 'Verbos investigación', 'Los verbos como investigate, examine, interrogate, analyze son comunes cuando se habla de procesos de investigación.', NULL, NULL, NULL, 'Elige el verbo que significa "hacer preguntas formalmente a alguien, especialmente a un sospechoso":', 'Investigate', 'Examine', 'Interrogate', 'Analyze', 'C', 4, 8, 'Vocabulary: Investigation'),
('INGLÉS', NULL, 'Expresiones comunes', 'Algunas expresiones como "break the case", "follow leads", "gather evidence" son típicas en contextos de investigación.', NULL, NULL, NULL, '¿Qué significa la expresión "break the case" en una investigación?', 'Destruir evidencia', 'Resolver el caso', 'Empezar la investigación', 'Entrevistar testigos', 'B', 4, 8, 'Vocabulary: Investigation');

-- Preguntas para el tema: Present simple and present continuous
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('INGLÉS', NULL, 'Present Simple vs Continuous', 
'El presente simple se usa para hábitos y verdades generales, mientras que el presente continuo se usa para acciones en progreso ahora. Observa las siguientes oraciones y selecciona la opción correcta.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones está en presente continuo y es gramaticalmente correcta?', 
'She is reading a book right now.', 
'She reads a book every day.', 
'She read a book yesterday.', 
'She has read a book.', 
'A', 4, 8, 'Present simple and present continuous'),

('INGLÉS', NULL, 'Present Simple vs Continuous', 
'Es importante diferenciar entre acciones habituales y acciones que están ocurriendo en este momento. Elige la opción que mejor completa la siguiente situación.', 
NULL, NULL, NULL, 
'Right now, John _____ TV while his sister _____ her homework.', 
'watches / does', 
'is watching / is doing', 
'watched / did', 
'has watched / has done', 
'B', 4, 8, 'Present simple and present continuous'),

('INGLÉS', NULL, 'Present Simple vs Continuous', 
'El uso correcto de los tiempos verbales es esencial para comunicarse claramente en inglés. Selecciona la opción gramaticalmente correcta.', 
NULL, NULL, NULL, 
'Which sentence describes a temporary situation?', 
'I work at a bank.', 
'I am working on a special project this week.', 
'I worked at a bank last year.', 
'I have worked here for two years.', 
'B', 4, 8, 'Present simple and present continuous'),

('INGLÉS', NULL, 'Present Simple vs Continuous', 
'Las expresiones de tiempo pueden ayudarte a identificar qué tiempo verbal usar. Observa las siguientes oraciones cuidadosamente.', 
NULL, NULL, NULL, 
'What is the correct form of the verb in this sentence: "Look! It _____ (rain) heavily outside."', 
'rains', 
'is raining', 
'rained', 
'has rained', 
'B', 4, 8, 'Present simple and present continuous'),

('INGLÉS', NULL, 'Present Simple vs Continuous', 
'Los adverbios de frecuencia suelen indicar el uso del presente simple. Identifica la oración correcta.', 
NULL, NULL, NULL, 
'Which sentence is grammatically incorrect?', 
'She usually goes to the gym on Mondays.', 
'He is usually going to the gym now.', 
'They often visit their grandparents.', 
'We sometimes eat out on weekends.', 
'B', 4, 8, 'Present simple and present continuous'),

-- Preguntas para el tema: Past simple and past continuous
('INGLÉS', NULL, 'Past Simple vs Continuous', 
'El pasado simple describe acciones completadas, mientras que el pasado continuo describe acciones en progreso en el pasado. Elige la opción correcta.', 
NULL, NULL, NULL, 
'When the phone _____, I _____ dinner.', 
'rang / was cooking', 
'was ringing / cooked', 
'rings / am cooking', 
'has rung / have cooked', 
'A', 4, 8, 'Past simple and past continuous'),

('INGLÉS', NULL, 'Past Simple vs Continuous', 
'La combinación de pasado simple y continuo es común para describir acciones interrumpidas. Selecciona la respuesta correcta.', 
NULL, NULL, NULL, 
'While I _____ to work, I _____ an old friend.', 
'drove / was seeing', 
'was driving / saw', 
'am driving / see', 
'drive / saw', 
'B', 4, 8, 'Past simple and past continuous'),

('INGLÉS', NULL, 'Past Simple vs Continuous', 
'Identifica la oración que usa correctamente los tiempos verbales en pasado.', 
NULL, NULL, NULL, 
'Which sentence correctly describes a completed action interrupting an ongoing action?', 
'I was reading when the lights went out.', 
'I read when the lights were going out.', 
'I have read when the lights go out.', 
'I read when the lights went out.', 
'A', 4, 8, 'Past simple and past continuous'),

('INGLÉS', NULL, 'Past Simple vs Continuous', 
'Las expresiones de tiempo pueden ayudarte a identificar qué tiempo verbal usar en pasado. Observa cuidadosamente.', 
NULL, NULL, NULL, 
'What is the correct form: "At 8 PM yesterday, we _____ (watch) a movie."', 
'watched', 
'were watching', 
'have watched', 
'are watching', 
'B', 4, 8, 'Past simple and past continuous'),

('INGLÉS', NULL, 'Past Simple vs Continuous', 
'El uso correcto de los tiempos pasados es esencial para narrar eventos. Selecciona la opción gramaticalmente correcta.', 
NULL, NULL, NULL, 
'Which sentence is incorrect?', 
'She was singing when I arrived.', 
'They played tennis while it was raining.', 
'He was cooking dinner when the guests were arriving.', 
'We were studying all evening yesterday.', 
'C', 4, 8, 'Past simple and past continuous'),

-- Preguntas para el tema: Auxiliary Do for emphasis and declarative sentences
('INGLÉS', NULL, 'Auxiliary Do', 
'El auxiliar "do" puede usarse para énfasis en oraciones afirmativas. Identifica el uso correcto.', 
NULL, NULL, NULL, 
'Which sentence uses "do" correctly for emphasis?', 
'I do like ice cream! It''s my favorite dessert.', 
'I like ice cream does! It''s my favorite dessert.', 
'I liking ice cream! It''s my favorite dessert.', 
'I did like ice cream! It''s my favorite dessert.', 
'A', 4, 8, 'Auxililary Do for emphasis and declarative sentences'),

('INGLÉS', NULL, 'Auxiliary Do', 
'El auxiliar "do" puede añadir fuerza a una declaración. Selecciona la oración correcta.', 
NULL, NULL, NULL, 
'Choose the correct emphatic sentence:', 
'She does speaks French fluently.', 
'She does speak French fluently.', 
'She speak French fluently does.', 
'She speaking French fluently.', 
'B', 4, 8, 'Auxililary Do for emphasis and declarative sentences'),

('INGLÉS', NULL, 'Auxiliary Do', 
'Identifica la oración que usa correctamente el auxiliar "do" para contradecir una idea previa.', 
NULL, NULL, NULL, 
'Which sentence properly contradicts the statement "You don''t understand the problem"?', 
'I do understand the problem perfectly!', 
'I understand the problem perfectly does!', 
'I am understanding the problem perfectly!', 
'I understood the problem perfectly!', 
'A', 4, 8, 'Auxililary Do for emphasis and declarative sentences'),

('INGLÉS', NULL, 'Auxiliary Do', 
'El uso enfático de "do" es común en respuestas emocionales. Elige la opción correcta.', 
NULL, NULL, NULL, 
'Complete the dialogue: A: "You never listen to me!" B: "That''s not true! I _____ listen to you!"', 
'do', 
'am', 
'have', 
'did', 
'A', 4, 8, 'Auxililary Do for emphasis and declarative sentences'),

('INGLÉS', NULL, 'Auxiliary Do', 
'Identifica la oración incorrecta en el uso del auxiliar "do" para énfasis.', 
NULL, NULL, NULL, 
'Which sentence is grammatically incorrect?', 
'We do want to go to the party!', 
'He does knows the answer.', 
'They do appreciate your help.', 
'I do enjoy playing soccer.', 
'B', 4, 8, 'Auxililary Do for emphasis and declarative sentences'),

-- Preguntas para el tema: Reported speech with WH-questions
('INGLÉS', NULL, 'Reported Speech WH', 
'El estilo indirecto con preguntas WH requiere cambios en los tiempos verbales y la estructura. Selecciona la opción correcta.', 
NULL, NULL, NULL, 
'Choose the correct reported speech: "Where do you live?" she asked.', 
'She asked where I lived.', 
'She asked where do I live.', 
'She asked where did I live.', 
'She asked where I live.', 
'A', 4, 8, 'Reported speech with WH-questions'),

('INGLÉS', NULL, 'Reported Speech WH', 
'Cuando convertimos preguntas WH al estilo indirecto, el orden de las palabras cambia. Elige la transformación correcta.', 
NULL, NULL, NULL, 
'Which is the correct reported speech for: "What time does the movie start?" he asked.', 
'He asked what time the movie started.', 
'He asked what time does the movie start.', 
'He asked what time did the movie start.', 
'He asked what time the movie starts.', 
'A', 4, 8, 'Reported speech with WH-questions'),

('INGLÉS', NULL, 'Reported Speech WH', 
'Identifica la oración que convierte correctamente la pregunta WH al estilo indirecto.', 
NULL, NULL, NULL, 
'Transform this WH-question to reported speech: "Why are you crying?" the teacher asked.', 
'The teacher asked why I was crying.', 
'The teacher asked why was I crying.', 
'The teacher asked why I am crying.', 
'The teacher asked why are you crying.', 
'A', 4, 8, 'Reported speech with WH-questions'),

('INGLÉS', NULL, 'Reported Speech WH', 
'Observa los cambios necesarios al convertir preguntas WH al estilo indirecto. Selecciona la opción correcta.', 
NULL, NULL, NULL, 
'Choose the correct reported speech: "How old is your sister?" they asked.', 
'They asked how old my sister was.', 
'They asked how old was my sister.', 
'They asked how old is your sister.', 
'They asked how old your sister is.', 
'A', 4, 8, 'Reported speech with WH-questions'),

('INGLÉS', NULL, 'Reported Speech WH', 
'Identifica la oración incorrecta en el uso del estilo indirecto con preguntas WH.', 
NULL, NULL, NULL, 
'Which reported speech transformation is incorrect?', 
'"Where did you go?" → She asked where I had gone.', 
'"When will they arrive?" → He asked when they would arrive.', 
'"What are you doing?" → They asked what I was doing.', 
'"Who is she?" → I asked who is she.', 
'D', 4, 8, 'Reported speech with WH-questions'),

-- Preguntas para el tema: Vocabulary: Relationships, family
('INGLÉS', NULL, 'Family Vocabulary', 
'El vocabulario sobre relaciones familiares es esencial para describir a las personas cercanas a nosotros. Selecciona la opción correcta.', 
NULL, NULL, NULL, 
'What do you call your mother''s brother?', 
'Uncle', 
'Aunt', 
'Cousin', 
'Nephew', 
'A', 4, 8, 'Vocabulary: Relationships, family'),

('INGLÉS', NULL, 'Family Vocabulary', 
'Las relaciones familiares pueden ser complejas. Elige la palabra que mejor completa la oración.', 
NULL, NULL, NULL, 
'My father''s new wife is my _____.', 
'aunt', 
'stepmother', 
'mother-in-law', 
'sister-in-law', 
'B', 4, 8, 'Vocabulary: Relationships, family'),

('INGLÉS', NULL, 'Family Vocabulary', 
'Identifica el término correcto para la relación descrita.', 
NULL, NULL, NULL, 
'What do you call the son of your sister?', 
'Nephew', 
'Cousin', 
'Uncle', 
'Brother', 
'A', 4, 8, 'Vocabulary: Relationships, family'),

('INGLÉS', NULL, 'Family Vocabulary', 
'Completa correctamente la oración con el término de parentesco apropiado.', 
NULL, NULL, NULL, 
'My mother''s sister''s daughter is my _____.', 
'aunt', 
'niece', 
'cousin', 
'sister', 
'C', 4, 8, 'Vocabulary: Relationships, family'),

('INGLÉS', NULL, 'Family Vocabulary', 
'Selecciona la opción que describe correctamente la relación familiar.', 
NULL, NULL, NULL, 
'If your brother has a baby girl, she is your _____.', 
'daughter', 
'niece', 
'cousin', 
'sister', 
'B', 4, 8, 'Vocabulary: Relationships, family'),

-- Preguntas para el tema: Writing an informal e-mail
('INGLÉS', NULL, 'Informal Email', 
'Al escribir correos informales en inglés, es importante usar el tono adecuado. Selecciona la opción más apropiada.', 
NULL, NULL, NULL, 
'What is the most appropriate way to start an informal email to a friend?', 
'Dear Sir/Madam,', 
'Hi [Friend''s Name],', 
'To whom it may concern,', 
'Good morning Mr. Smith,', 
'B', 4, 8, 'Writing an informal e-mail'),

('INGLÉS', NULL, 'Informal Email', 
'Identifica la frase más adecuada para el cuerpo de un correo informal.', 
NULL, NULL, NULL, 
'Which phrase would be most appropriate in an informal email?', 
'I am writing to formally inform you...', 
'Just wanted to let you know...', 
'Pursuant to our previous conversation...', 
'Please be advised that...', 
'B', 4, 8, 'Writing an informal e-mail'),

('INGLÉS', NULL, 'Informal Email', 
'Las despedidas en correos informales suelen ser más relajadas. Elige la opción más adecuada.', 
NULL, NULL, NULL, 
'What would be an appropriate closing for an informal email?', 
'Sincerely yours,', 
'Best regards,', 
'Cheers,', 
'Respectfully,', 
'C', 4, 8, 'Writing an informal e-mail'),

('INGLÉS', NULL, 'Informal Email', 
'El lenguaje en correos informales es más coloquial. Selecciona la oración más apropiada.', 
NULL, NULL, NULL, 
'Which sentence would be most appropriate in an informal email?', 
'Please find attached the requested documents.', 
'Hey, check out these photos from our trip!', 
'I hereby confirm receipt of your message.', 
'We regret to inform you that...', 
'B', 4, 8, 'Writing an informal e-mail'),

('INGLÉS', NULL, 'Informal Email', 
'Identifica la opción que NO sería apropiada en un correo informal.', 
NULL, NULL, NULL, 
'Which of these would be inappropriate in an informal email to a friend?', 
'Can''t wait to see you next weekend!', 
'What''s up? Long time no see!', 
'Dear Mr. Johnson, I am writing to apply...', 
'Guess what happened yesterday?', 
'C', 4, 8, 'Writing an informal e-mail');

-- Preguntas para el tema: Prediction with "will" and "going to"
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
('INGLÉS', NULL, 'Predicciones con will', 'En inglés, usamos "will" para hacer predicciones espontáneas o decisiones tomadas en el momento, mientras que "going to" se usa para planes o intenciones ya decididas. Observa las siguientes situaciones y elige la opción correcta.', NULL, NULL, NULL, 'Completa la oración: Look at those dark clouds! It _____ rain soon.', 'is going to', 'will', 'shall', 'might', 'A', 4, 8, 'Prediction with "will" and "going to"'),
('INGLÉS', NULL, 'Uso de going to', 'Cuando tenemos evidencia clara de que algo va a suceder, normalmente usamos "going to" en lugar de "will". Analiza el contexto de cada pregunta para seleccionar la respuesta adecuada.', NULL, NULL, NULL, 'Martha has saved money all year. She _____ buy a new laptop next month.', 'will', 'is going to', 'might', 'should', 'B', 4, 8, 'Prediction with "will" and "going to"'),
('INGLÉS', NULL, 'Diferencia will/going to', 'Es importante distinguir entre predicciones basadas en opinión (will) y aquellas basadas en evidencia presente (going to). Esta diferencia es fundamental para comunicarse correctamente en inglés.', NULL, NULL, NULL, 'I think robots _____ do all household chores in the future.', 'are going to', 'will', 'shall', 'can', 'B', 4, 8, 'Prediction with "will" and "going to"'),
('INGLÉS', NULL, 'Predicciones personales', 'Las predicciones personales sobre el futuro pueden expresarse de diferentes maneras en inglés. Selecciona la forma gramaticalmente correcta para cada contexto.', NULL, NULL, NULL, 'My parents _____ visit Europe next summer. They already bought the tickets.', 'will', 'are going to', 'might', 'would', 'B', 4, 8, 'Prediction with "will" and "going to"'),
('INGLÉS', NULL, 'Decisiones espontáneas', 'Cuando tomamos una decisión en el momento de hablar, normalmente usamos "will" en lugar de "going to". Identifica cuándo se aplica esta regla.', NULL, NULL, NULL, 'The phone is ringing! I _____ answer it.', 'am going to', 'will', 'should', 'might', 'B', 4, 8, 'Prediction with "will" and "going to"'),

-- Preguntas para el tema: First conditionals with "will" and modal verbs
('INGLÉS', NULL, 'Primer condicional básico', 'El primer condicional se usa para hablar de situaciones reales o posibles en el futuro. Tiene la estructura: If + presente simple, + will + verbo base. Completa correctamente las siguientes oraciones.', NULL, NULL, NULL, 'If it rains tomorrow, we _____ the picnic.', 'cancel', 'will cancel', 'would cancel', 'are canceling', 'B', 4, 8, 'First conditionals with "will" and modal verbs'),
('INGLÉS', NULL, 'Condicional con modal verbs', 'En el primer condicional podemos usar verbos modales como can, may o must en lugar de will, dependiendo del significado que queramos expresar.', NULL, NULL, NULL, 'If you finish your homework early, you _____ watch TV for an hour.', 'will', 'can', 'must', 'should', 'B', 4, 8, 'First conditionals with "will" and modal verbs'),
('INGLÉS', NULL, 'Estructura condicional', 'El orden de las cláusulas en el primer condicional puede variar, pero la coma solo se usa cuando la cláusula "if" va primero. Ten esto en cuenta al responder.', NULL, NULL, NULL, '_____ you don''t hurry, you will miss the bus.', 'When', 'Unless', 'If', 'While', 'C', 4, 8, 'First conditionals with "will" and modal verbs'),
('INGLÉS', NULL, 'Condicional con may', 'El verbo modal "may" expresa posibilidad en el primer condicional, similar a "might" pero con mayor probabilidad de que ocurra la acción.', NULL, NULL, NULL, 'If the weather is nice this weekend, we _____ go camping.', 'will', 'may', 'must', 'should', 'B', 4, 8, 'First conditionals with "will" and modal verbs'),
('INGLÉS', NULL, 'Condicional negativo', 'En el primer condicional, podemos usar formas negativas tanto en la cláusula "if" como en la cláusula principal. Observa cómo cambia el significado.', NULL, NULL, NULL, 'If you _____ study, you won''t pass the exam.', 'don''t', 'didn''t', 'won''t', 'aren''t', 'A', 4, 8, 'First conditionals with "will" and modal verbs'),

-- Preguntas para el tema: Present perfect simple
('INGLÉS', NULL, 'Experiencias de vida', 'El presente perfecto simple se usa para hablar de experiencias de vida sin especificar cuándo ocurrieron. La estructura es: sujeto + have/has + participio pasado.', NULL, NULL, NULL, 'My brother _____ to Japan three times.', 'has been', 'went', 'was going', 'goes', 'A', 4, 8, 'Present perfect simple'),
('INGLÉS', NULL, 'Presente perfecto con ever', 'La palabra "ever" se usa en preguntas con presente perfecto para preguntar sobre experiencias en la vida de una persona hasta el momento presente.', NULL, NULL, NULL, '_____ you ever eaten sushi?', 'Did', 'Do', 'Have', 'Has', 'C', 4, 8, 'Present perfect simple'),
('INGLÉS', NULL, 'Acciones recientes', 'Usamos el presente perfecto para hablar de acciones recientes que tienen relevancia en el presente, a menudo con "just", "already" o "yet".', NULL, NULL, NULL, 'I can''t go out. I _____ my homework yet.', 'didn''t finish', 'haven''t finished', 'don''t finish', 'am not finishing', 'B', 4, 8, 'Present perfect simple'),
('INGLÉS', NULL, 'Presente perfecto continuo', 'Aunque esta pregunta se enfoca en el presente perfecto simple, es importante distinguirlo del continuo. El simple enfatiza el resultado, el continuo la duración.', NULL, NULL, NULL, 'She _____ her keys. Can you help her look for them?', 'has lost', 'loses', 'is losing', 'lost', 'A', 4, 8, 'Present perfect simple'),
('INGLÉS', NULL, 'For y since', 'Con el presente perfecto, usamos "for" para hablar de períodos de tiempo y "since" para hablar de puntos específicos en el tiempo cuando comenzó la acción.', NULL, NULL, NULL, 'They have lived in this city _____ 2015.', 'for', 'since', 'from', 'during', 'B', 4, 8, 'Present perfect simple'),

-- Preguntas para el tema: Coordinating conjunctions
('INGLÉS', NULL, 'Conjunciones básicas', 'Las conjunciones coordinantes (and, but, or, so, for, yet, nor) conectan palabras, frases o cláusulas de igual importancia gramatical. Elige la conjunción que mejor complete cada oración.', NULL, NULL, NULL, 'I wanted to go to the beach, _____ it started raining.', 'and', 'but', 'or', 'so', 'B', 4, 8, 'Coordinating conjunctions'),
('INGLÉS', NULL, 'Uso de "so"', 'La conjunción "so" indica consecuencia o resultado. Conecta una situación con lo que sucedió como resultado de esa situación.', NULL, NULL, NULL, 'It was very hot, _____ we decided to go swimming.', 'but', 'so', 'for', 'yet', 'B', 4, 8, 'Coordinating conjunctions'),
('INGLÉS', NULL, 'Conjunciones negativas', 'La conjunción "nor" se usa para conectar dos ideas negativas. Requiere inversión del sujeto y verbo auxiliar en la segunda cláusula.', NULL, NULL, NULL, 'She doesn''t like coffee, _____ does she drink tea.', 'and', 'but', 'nor', 'or', 'C', 4, 8, 'Coordinating conjunctions'),
('INGLÉS', NULL, 'Conjunciones alternativas', 'La conjunción "or" presenta alternativas o opciones. Puede indicar elección o consecuencia negativa si no se hace algo.', NULL, NULL, NULL, 'You can study now _____ you can fail the exam.', 'and', 'but', 'or', 'so', 'C', 4, 8, 'Coordinating conjunctions'),
('INGLÉS', NULL, 'Conjunciones de razón', 'La conjunción "for" introduce una razón o explicación, similar a "because" pero menos común en inglés moderno.', NULL, NULL, NULL, 'He must be tired, _____ he worked all day.', 'for', 'so', 'but', 'and', 'A', 4, 8, 'Coordinating conjunctions'),

-- Preguntas para el tema: Passive voice
('INGLÉS', NULL, 'Voz pasiva simple', 'En la voz pasiva, el sujeto recibe la acción en lugar de realizarla. La estructura básica es: sujeto + be + participio pasado + (by agente).', NULL, NULL, NULL, 'The new library _____ next month.', 'is opened', 'opens', 'will be opened', 'will open', 'C', 4, 8, 'Passive voice'),
('INGLÉS', NULL, 'Pasado pasivo', 'El pasado pasivo sigue la misma estructura pero con el verbo "be" en pasado. Se usa para hablar de acciones realizadas sobre el sujeto en el pasado.', NULL, NULL, NULL, 'The famous painting _____ in 1990.', 'stole', 'was stolen', 'was stealing', 'has stolen', 'B', 4, 8, 'Passive voice'),
('INGLÉS', NULL, 'Presente continuo pasivo', 'El presente continuo pasivo describe acciones que están siendo realizadas sobre el sujeto en el momento presente. Estructura: am/is/are + being + participio pasado.', NULL, NULL, NULL, 'A new bridge _____ across the river right now.', 'is built', 'is being built', 'builds', 'has been built', 'B', 4, 8, 'Passive voice'),
('INGLÉS', NULL, 'Pasivo con verbos modales', 'Los verbos modales pueden usarse en voz pasiva con la estructura: modal + be + participio pasado.', NULL, NULL, NULL, 'The work _____ by Friday.', 'must finish', 'must be finish', 'must be finished', 'must to be finished', 'C', 4, 8, 'Passive voice'),
('INGLÉS', NULL, 'Presente perfecto pasivo', 'El presente perfecto pasivo describe acciones realizadas sobre el sujeto en un tiempo no especificado antes del presente. Estructura: have/has + been + participio pasado.', NULL, NULL, NULL, 'The decision _____ yet.', 'hasn''t been made', 'hasn''t made', 'wasn''t made', 'isn''t made', 'A', 4, 8, 'Passive voice'),

-- Preguntas para el tema: Vocabulary: Natural world and weather
('INGLÉS', NULL, 'Fenómenos meteorológicos', 'El vocabulario relacionado con el clima y el mundo natural es esencial para describir nuestro entorno. Selecciona la palabra que mejor complete cada descripción.', NULL, NULL, NULL, 'A violent tropical storm with very strong winds is called a _____.', 'earthquake', 'hurricane', 'tornado', 'tsunami', 'B', 4, 8, 'Vocabulary: Natural world and weather'),
('INGLÉS', NULL, 'Paisajes naturales', 'El mundo natural contiene diversos paisajes y formaciones geográficas. Identifica cada uno según su definición.', NULL, NULL, NULL, 'A large area covered chiefly with trees and undergrowth is a _____.', 'desert', 'forest', 'mountain', 'valley', 'B', 4, 8, 'Vocabulary: Natural world and weather'),
('INGLÉS', NULL, 'Condiciones climáticas', 'Para describir el clima con precisión, necesitamos conocer términos específicos sobre diferentes condiciones atmosféricas.', NULL, NULL, NULL, 'When there is a lot of water in the air and small drops form on cool surfaces, we say it''s _____.', 'windy', 'foggy', 'humid', 'frosty', 'C', 4, 8, 'Vocabulary: Natural world and weather'),
('INGLÉS', NULL, 'Desastres naturales', 'Algunos fenómenos naturales pueden ser peligrosos y causar daños. Relaciona cada término con su definición correcta.', NULL, NULL, NULL, 'A long period with no rain is called a _____.', 'flood', 'drought', 'blizzard', 'avalanche', 'B', 4, 8, 'Vocabulary: Natural world and weather'),
('INGLÉS', NULL, 'Elementos naturales', 'La naturaleza está compuesta por diversos elementos que interactúan entre sí. Identifica cada uno según su descripción.', NULL, NULL, NULL, 'The solid mineral material forming part of the surface of the earth is _____.', 'water', 'air', 'rock', 'soil', 'C', 4, 8, 'Vocabulary: Natural world and weather'),

-- Preguntas para el tema: Vocabulary: Environmental protections
('INGLÉS', NULL, 'Protección ambiental', 'El vocabulario sobre protección ambiental es crucial para discutir temas ecológicos. Selecciona el término que mejor complete cada oración.', NULL, NULL, NULL, 'Using things like plastic bags only once before throwing them away is called _____ use.', 'recyclable', 'reusable', 'single-use', 'biodegradable', 'C', 4, 8, 'Vocabulary: Environmental protections'),
('INGLÉS', NULL, 'Energías renovables', 'Las energías renovables son fundamentales para proteger el medio ambiente. Identifica cada tipo según su descripción.', NULL, NULL, NULL, 'Energy from the sun is called _____ energy.', 'wind', 'solar', 'hydroelectric', 'geothermal', 'B', 4, 8, 'Vocabulary: Environmental protections'),
('INGLÉS', NULL, 'Contaminación', 'Diferentes tipos de contaminación afectan nuestro planeta. Relaciona cada término con su definición correcta.', NULL, NULL, NULL, 'The presence of harmful substances in the air is called air _____.', 'erosion', 'pollution', 'contamination', 'poisoning', 'B', 4, 8, 'Vocabulary: Environmental protections'),
('INGLÉS', NULL, 'Conservación', 'La conservación de recursos naturales es esencial para el futuro del planeta. Completa las oraciones con el término adecuado.', NULL, NULL, NULL, 'Turning off lights when not in use helps to _____ energy.', 'consume', 'waste', 'conserve', 'generate', 'C', 4, 8, 'Vocabulary: Environmental protections'),
('INGLÉS', NULL, 'Biodiversidad', 'Proteger la diversidad de vida en la Tierra es una prioridad ambiental. Elige la palabra que mejor complete cada definición.', NULL, NULL, NULL, 'A species that is at risk of extinction is called an _____ species.', 'abundant', 'endangered', 'invasive', 'domestic', 'B', 4, 8, 'Vocabulary: Environmental protections');

-- Preguntas para Modal verbs: Obligation, Prohibition
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', null, 'Obligaciones escolares', 
 'En muchas escuelas, hay reglas que los estudiantes deben seguir. Estas reglas usan verbos modales como "must" para obligación y "must not" para prohibición. Es importante entender estas estructuras para comunicar correctamente lo que es obligatorio y lo que está prohibido.', 
 null, null, null, 
 '¿Cuál de estas oraciones expresa una obligación usando el verbo modal correcto?', 
 'You must arrive on time to class.', 
 'You must to bring your books every day.', 
 'You must not paying attention in class.', 
 'You must not to use your phone during exams.', 
 'A', 4, 8, 'Modal verbs: Obligation, Prohibition'),
 
-- Pregunta 2
('INGLÉS', null, 'Reglas del laboratorio', 
 'En el laboratorio de ciencias, hay muchas reglas de seguridad que protegen a los estudiantes. Los verbos modales ayudan a expresar claramente qué acciones son obligatorias y cuáles están estrictamente prohibidas para prevenir accidentes.', 
 null, null, null, 
 '¿Qué oración expresa correctamente una prohibición en el laboratorio?', 
 'You must wear protective goggles.', 
 'You must not eat or drink during experiments.', 
 'You must to follow teacher instructions.', 
 'You must not being careful with chemicals.', 
 'B', 4, 8, 'Modal verbs: Obligation, Prohibition'),
 
-- Pregunta 3
('INGLÉS', null, 'Normas de la biblioteca', 
 'Las bibliotecas son lugares donde se necesita silencio y orden. Los verbos modales de obligación y prohibición son esenciales para mantener este ambiente adecuado para el estudio y la lectura.', 
 null, null, null, 
 'Selecciona la opción que completa correctamente la norma de biblioteca: "Readers _____ talk loudly"', 
 'must', 
 'must not', 
 'must to', 
 'must not to', 
 'B', 4, 8, 'Modal verbs: Obligation, Prohibition'),
 
-- Pregunta 4
('INGLÉS', null, 'Deberes en casa', 
 'Los padres a menudo establecen reglas en casa usando verbos modales para indicar a los niños qué es obligatorio hacer y qué acciones están prohibidas. Entender estas estructuras ayuda a una mejor comunicación familiar.', 
 null, null, null, 
 '¿Cuál de estas oraciones expresa una obligación doméstica correctamente?', 
 'You must not clean your room.', 
 'You must doing your homework before playing.', 
 'You must help with household chores.', 
 'You must not to be responsible.', 
 'C', 4, 8, 'Modal verbs: Obligation, Prohibition'),
 
-- Pregunta 5
('INGLÉS', null, 'Normas de tránsito', 
 'Las señales de tránsito usan verbos modales para indicar a los conductores y peatones qué acciones son obligatorias y cuáles están prohibidas, lo cual es esencial para la seguridad vial.', 
 null, null, null, 
 '¿Qué oración expresa correctamente una norma de tránsito usando verbos modales?', 
 'Pedestrians must not to cross on red light.', 
 'Drivers must stopping at stop signs.', 
 'Cyclists must wear helmets.', 
 'Passengers must not fasten seat belts.', 
 'C', 4, 8, 'Modal verbs: Obligation, Prohibition'),

-- Preguntas para Second conditionals
('INGLÉS', null, 'Situaciones imaginarias', 
 'Los segundos condicionales se usan para hablar de situaciones hipotéticas o imaginarias en el presente o futuro, y sus posibles resultados. Estas estructuras son muy útiles para expresar sueños, posibilidades y consejos.', 
 null, null, null, 
 '¿Cuál de estas oraciones es un segundo condicional correctamente formado?', 
 'If I am you, I will study more.', 
 'If I were you, I would study more.', 
 'If I was you, I studied more.', 
 'If I would be you, I will study more.', 
 'B', 4, 8, 'Second conditionals'),
 
('INGLÉS', null, 'Consejos hipotéticos', 
 'Los segundos condicionales son excelentes para dar consejos sobre situaciones que no son reales, pero que podrían ser consideradas. Esta estructura gramatical ayuda a expresar lo que haríamos en circunstancias diferentes.', 
 null, null, null, 
 'Completa correctamente la oración: "If I _____ more time, I _____ travel the world"', 
 'have / will', 
 'had / would', 
 'would have / will', 
 'had / will', 
 'B', 4, 8, 'Second conditionals'),
 
('INGLÉS', null, 'Sueños y posibilidades', 
 'Muchas veces usamos los segundos condicionales para hablar de nuestros sueños y lo que haríamos si las circunstancias fueran diferentes. Esta estructura gramatical nos permite explorar posibilidades imaginarias.', 
 null, null, null, 
 '¿Qué oración expresa correctamente un sueño usando el segundo condicional?', 
 'If I win the lottery, I buy a big house.', 
 'If I won the lottery, I would buy a big house.', 
 'If I would win the lottery, I buy a big house.', 
 'If I had won the lottery, I would buy a big house.', 
 'B', 4, 8, 'Second conditionals'),
 
('INGLÉS', null, 'Resultados hipotéticos', 
 'Los segundos condicionales nos permiten especular sobre los resultados de situaciones que probablemente no ocurrirán, pero que son interesantes de considerar. Esta estructura es fundamental para expresar pensamientos abstractos.', 
 null, null, null, 
 'Selecciona la opción correcta: "If she _____ English better, she _____ for that international job"', 
 'speaks / will apply', 
 'spoke / would apply', 
 'would speak / applied', 
 'speak / would apply', 
 'B', 4, 8, 'Second conditionals'),
 
('INGLÉS', null, 'Condiciones irreales', 
 'Cuando queremos hablar de situaciones que sabemos que no son reales o son muy improbables, usamos el segundo condicional. Esta estructura gramatical es muy común en conversaciones cotidianas.', 
 null, null, null, 
 '¿Cuál de estas oraciones expresa una condición irreal correctamente?', 
 'If animals could talk, they will tell us many things.', 
 'If animals can talk, they would tell us many things.', 
 'If animals could talk, they would tell us many things.', 
 'If animals would talk, they could tell us many things.', 
 'C', 4, 8, 'Second conditionals'),

-- Preguntas para Compound adjectives
('INGLÉS', null, 'Descripciones precisas', 
 'Los adjetivos compuestos son una herramienta poderosa en inglés que nos permite describir personas, lugares y cosas de manera más precisa y específica. Estos adjetivos se forman combinando dos o más palabras.', 
 null, null, null, 
 '¿Cuál de estas opciones es un adjetivo compuesto correctamente formado?', 
 'A ten-years-old boy', 
 'A ten-year-old boy', 
 'A ten year old boy', 
 'A ten-years old boy', 
 'B', 4, 8, 'Compound adjectives'),
 
('INGLÉS', null, 'Características físicas', 
 'Los adjetivos compuestos son especialmente útiles para describir características físicas de personas y objetos, permitiendo crear descripciones más vívidas y detalladas en inglés.', 
 null, null, null, 
 'Selecciona la opción correcta: "She has _____ hair"', 
 'shoulder-length', 
 'shoulder length', 
 'length-shoulder', 
 'shoulders-length', 
 'A', 4, 8, 'Compound adjectives'),
 
('INGLÉS', null, 'Personalidad y comportamiento', 
 'Los adjetivos compuestos no solo describen apariencia física, sino también características de personalidad y comportamiento, lo que los hace muy versátiles en el idioma inglés.', 
 null, null, null, 
 '¿Qué opción contiene un adjetivo compuesto que describe personalidad?', 
 'A well-known actor', 
 'A hard-working student', 
 'A red-colored car', 
 'A five-star hotel', 
 'B', 4, 8, 'Compound adjectives'),
 
('INGLÉS', null, 'Objetos y lugares', 
 'Al describir objetos y lugares, los adjetivos compuestos nos permiten transmitir información compleja de manera concisa, lo cual es esencial para una comunicación efectiva en inglés.', 
 null, null, null, 
 'Completa correctamente: "They live in a _____ house"', 
 'three bedrooms', 
 'three-bedroom', 
 'three-bedrooms', 
 'three-bedroomed', 
 'B', 4, 8, 'Compound adjectives'),
 
('INGLÉS', null, 'Tiempo y distancia', 
 'Los adjetivos compuestos son frecuentemente usados para indicar medidas de tiempo y distancia, lo que ayuda a dar información específica de manera eficiente en conversaciones y escritos.', 
 null, null, null, 
 '¿Cuál es la forma correcta del adjetivo compuesto?', 
 'A four-hours journey', 
 'A four-hour journey', 
 'A four hour-journey', 
 'A four hour journey', 
 'B', 4, 8, 'Compound adjectives'),

-- Preguntas para Noun phrases with: "such a" + adjective
('INGLÉS', null, 'Expresando cualidades', 
 'La estructura "such a" + adjetivo + sustantivo es muy útil en inglés para enfatizar cualidades o características de personas, objetos o situaciones. Esta construcción ayuda a hacer descripciones más impactantes.', 
 null, null, null, 
 '¿Cuál de estas oraciones usa correctamente la estructura "such a" + adjetivo?', 
 'It was such beautiful day.', 
 'It was such a beautiful day.', 
 'It was a such beautiful day.', 
 'It was such an beautiful day.', 
 'B', 4, 8, 'Noun phrases with: "such a" + adjective'),
 
('INGLÉS', null, 'Experiencias memorables', 
 'Cuando queremos describir experiencias que nos impactaron por ser extremadamente buenas o malas, la estructura "such a" + adjetivo es perfecta para transmitir esa intensidad en nuestras descripciones.', 
 null, null, null, 
 'Completa correctamente: "That was _____ interesting movie!"', 
 'such', 
 'such a', 
 'such an', 
 'a such', 
 'B', 4, 8, 'Noun phrases with: "such a" + adjective'),
 
('INGLÉS', null, 'Reacciones emocionales', 
 'La estructura "such a" seguida de un adjetivo es frecuentemente usada para expresar reacciones emocionales fuertes ante personas, eventos u objetos que nos causan una impresión significativa.', 
 null, null, null, 
 '¿Qué oración está correctamente estructurada?', 
 'She is such intelligent girl.', 
 'She is such a intelligent girl.', 
 'She is such an intelligent girl.', 
 'She is a such intelligent girl.', 
 'C', 4, 8, 'Noun phrases with: "such a" + adjective'),
 
('INGLÉS', null, 'Descripciones impactantes', 
 'Para hacer descripciones que realmente capten la atención del oyente o lector, la construcción "such a" + adjetivo + sustantivo es una herramienta lingüística muy efectiva en inglés.', 
 null, null, null, 
 'Selecciona la opción correcta: "He told us _____ funny story"', 
 'such', 
 'such a', 
 'a such', 
 'such an', 
 'B', 4, 8, 'Noun phrases with: "such a" + adjective'),
 
('INGLÉS', null, 'Comentarios entusiastas', 
 'Cuando queremos hacer comentarios entusiastas sobre algo que nos gustó mucho, la estructura gramatical con "such a" seguida de un adjetivo positivo es ideal para expresar nuestro entusiasmo.', 
 null, null, null, 
 '¿Cuál es la forma correcta de esta exclamación?', 
 'This is such wonderful news!', 
 'This is such a wonderful news!', 
 'This is a such wonderful news!', 
 'This is such an wonderful news!', 
 'A', 4, 8, 'Noun phrases with: "such a" + adjective'),

-- Preguntas para Simple prepositions
('INGLÉS', null, 'Ubicación en el espacio', 
 'Las preposiciones simples son palabras cortas pero esenciales que nos ayudan a describir la ubicación de personas y objetos en el espacio. Dominarlas es fundamental para dar direcciones y hacer descripciones precisas.', 
 null, null, null, 
 'Completa correctamente: "The book is _____ the table"', 
 'at', 
 'in', 
 'on', 
 'by', 
 'C', 4, 8, 'Simple prepositions'),
 
('INGLÉS', null, 'Tiempo y fechas', 
 'Las preposiciones de tiempo son cruciales para hablar sobre cuándo ocurren los eventos. Usar la preposición correcta con días, meses, horas y períodos es esencial para una comunicación clara.', 
 null, null, null, 
 '¿Qué preposición completa correctamente esta oración? "I have class _____ 9:00 AM"', 
 'in', 
 'on', 
 'at', 
 'by', 
 'C', 4, 8, 'Simple prepositions'),
 
('INGLÉS', null, 'Movimiento y dirección', 
 'Las preposiciones que indican movimiento nos ayudan a describir hacia dónde se dirigen las personas o cosas. Estas pequeñas palabras son clave para dar instrucciones de movimiento.', 
 null, null, null, 
 'Selecciona la opción correcta: "She walked _____ the park"', 
 'at', 
 'in', 
 'through', 
 'on', 
 'C', 4, 8, 'Simple prepositions'),
 
('INGLÉS', null, 'Relaciones espaciales', 
 'Entender las relaciones espaciales entre objetos es más fácil cuando usamos correctamente las preposiciones de lugar. Estas palabras nos permiten describir posiciones relativas con precisión.', 
 null, null, null, 
 '¿Cuál preposición completa correctamente la oración? "The cat is hiding _____ the bed"', 
 'at', 
 'under', 
 'in', 
 'on', 
 'B', 4, 8, 'Simple prepositions'),
 
('INGLÉS', null, 'Ubicación relativa', 
 'Las preposiciones nos permiten describir dónde está algo en relación con otra cosa. Este conocimiento es fundamental para dar y entender descripciones de ubicaciones en inglés.', 
 null, null, null, 
 'Completa correctamente: "The bank is _____ the supermarket and the pharmacy"', 
 'at', 
 'in', 
 'between', 
 'on', 
 'C', 4, 8, 'Simple prepositions'),

-- Preguntas para Vocabulary: Work and Jobs
('INGLÉS', null, 'Profesiones comunes', 
 'El vocabulario relacionado con trabajos y profesiones es esencial para hablar sobre las carreras que las personas eligen y las funciones que desempeñan en la sociedad. Conocer estos términos ayuda a discutir aspiraciones laborales.', 
 null, null, null, 
 '¿Qué persona trabaja en un hospital y ayuda a los doctores?', 
 'Teacher', 
 'Nurse', 
 'Engineer', 
 'Chef', 
 'B', 4, 8, 'Vocabulary: Work and Jobs'),
 
('INGLÉS', null, 'Lugares de trabajo', 
 'Diferentes profesiones se asocian con distintos entornos laborales. Conocer este vocabulario nos permite describir dónde trabajan las personas y qué hacen en esos lugares.', 
 null, null, null, 
 '¿Qué profesional trabaja principalmente en una cocina?', 
 'Architect', 
 'Waiter', 
 'Chef', 
 'Driver', 
 'C', 4, 8, 'Vocabulary: Work and Jobs'),
 
('INGLÉS', null, 'Herramientas del trabajo', 
 'Cada profesión tiene herramientas y equipos característicos que los profesionales usan para realizar su trabajo. Este vocabulario es importante para describir actividades laborales específicas.', 
 null, null, null, 
 '¿Qué herramienta usaría principalmente un carpintero?', 
 'Stethoscope', 
 'Hammer', 
 'Computer', 
 'Paintbrush', 
 'B', 4, 8, 'Vocabulary: Work and Jobs'),
 
('INGLÉS', null, 'Responsabilidades laborales', 
 'Cada trabajo viene con responsabilidades y tareas específicas. Conocer este vocabulario nos permite hablar sobre lo que las personas hacen en sus trabajos cotidianamente.', 
 null, null, null, 
 '¿Qué hace principalmente un bombero?', 
 'Teaches students', 
 'Fights fires', 
 'Designs buildings', 
 'Prepares food', 
 'B', 4, 8, 'Vocabulary: Work and Jobs'),
 
('INGLÉS', null, 'Aspiraciones profesionales', 
 'Hablar sobre trabajos futuros y aspiraciones profesionales requiere conocer el vocabulario adecuado. Estos términos nos ayudan a expresar nuestros sueños y metas laborales.', 
 null, null, null, 
 '¿Qué profesional diseña y construye máquinas y estructuras?', 
 'Artist', 
 'Engineer', 
 'Farmer', 
 'Pilot', 
 'B', 4, 8, 'Vocabulary: Work and Jobs'),

-- Preguntas para Vocabulary: People qualities
('INGLÉS', null, 'Rasgos de personalidad', 
 'Describir las cualidades de las personas es fundamental para hablar sobre relaciones interpersonales. Este vocabulario nos permite caracterizar a las personas según su forma de ser y comportarse.', 
 null, null, null, 
 '¿Qué palabra describe a alguien que siempre dice la verdad?', 
 'Generous', 
 'Honest', 
 'Shy', 
 'Creative', 
 'B', 4, 8, 'Vocabulary: People qualities'),
 
('INGLÉS', null, 'Actitudes positivas', 
 'Las cualidades positivas son aquellas que valoramos en las personas y que contribuyen a relaciones saludables y ambientes positivos. Conocer este vocabulario ayuda a expresar aprecio por los demás.', 
 null, null, null, 
 '¿Qué cualidad describe a alguien que piensa primero en los demás?', 
 'Selfish', 
 'Kind', 
 'Lazy', 
 'Stubborn', 
 'B', 4, 8, 'Vocabulary: People qualities'),
 
('INGLÉS', null, 'Fortalezas personales', 
 'Las fortalezas personales son cualidades que nos ayudan a enfrentar desafíos y lograr nuestros objetivos. Este vocabulario es útil para hablar sobre desarrollo personal y superación.', 
 null, null, null, 
 '¿Qué palabra describe a alguien que no se rinde fácilmente?', 
 'Patient', 
 'Determined', 
 'Talkative', 
 'Sensitive', 
 'B', 4, 8, 'Vocabulary: People qualities'),
 
('INGLÉS', null, 'Habilidades sociales', 
 'Algunas cualidades están relacionadas con cómo interactuamos con los demás. Conocer este vocabulario nos permite describir cómo las personas se comportan en situaciones sociales.', 
 null, null, null, 
 '¿Qué cualidad describe a alguien que se lleva bien con muchas personas?', 
 'Sociable', 
 'Quiet', 
 'Impatient', 
 'Careless', 
 'A', 4, 8, 'Vocabulary: People qualities'),
 
('INGLÉS', null, 'Características admirables', 
 'Hay cualidades que especialmente admiramos en las personas porque representan valores importantes. Este vocabulario nos ayuda a expresar lo que valoramos en los demás.', 
 null, null, null, 
 '¿Qué palabra describe a alguien que cumple sus promesas?', 
 'Reliable', 
 'Funny', 
 'Messy', 
 'Nervous', 
 'A', 4, 8, 'Vocabulary: People qualities'),

-- Preguntas para Writing an article
('INGLÉS', null, 'Estructura de un artículo en inglés', 
 'Al escribir un artículo en inglés, es fundamental seguir una estructura adecuada con introducción, desarrollo y conclusión. Cada parte tiene características específicas que ayudan a organizar las ideas de manera clara en este idioma.', 
 null, null, null, 
 '¿Cuál es la mejor manera de comenzar un artículo en inglés?', 
 'With a question or interesting fact', 
 'With a long personal story', 
 'With complex technical terms', 
 'With no introduction at all', 
 'A', 4, 8, 'Writing an article'),
 
('INGLÉS', null, 'Titulares efectivos en inglés', 
 'Un buen titular en inglés debe llamar la atención y dar una idea clara del contenido del artículo. Debe ser conciso pero informativo para atraer a los lectores angloparlantes.', 
 null, null, null, 
 '¿Cuál sería el titular más efectivo para un artículo sobre la vida escolar?', 
 'School', 
 'The Amazing Experience of Being a Second Grade Student', 
 'Things and Stuff About Places', 
 'A Very Long Title That Never Ends Because It Keeps Going', 
 'B', 4, 8, 'Writing an article'),
 
('INGLÉS', null, 'Párrafos de desarrollo en inglés', 
 'Los párrafos principales de un artículo en inglés deben desarrollar las ideas principales con detalles, ejemplos y explicaciones usando un inglés claro y correcto.', 
 null, null, null, 
 '¿Con qué debería comenzar cada párrafo de desarrollo en un artículo en inglés?', 
 'A topic sentence in English', 
 'A random quotation', 
 'A greeting to the reader', 
 'A conclusion', 
 'A', 4, 8, 'Writing an article'),
 
('INGLÉS', null, 'Conectores en artículos ingleses', 
 'Usar palabras de enlace adecuadas ("however", "furthermore", "in addition") es esencial para conectar ideas fluidamente al escribir artículos en inglés.', 
 null, null, null, 
 '¿Qué conector en inglés uniría mejor estas dos ideas: "School is important. _____, it helps you make friends."?', 
 'However', 
 'Because', 
 'Moreover', 
 'Although', 
 'C', 4, 8, 'Writing an article'),
 
('INGLÉS', null, 'Conclusión de artículos en inglés', 
 'Una buena conclusión en un artículo inglés debe resumir los puntos principales o dar reflexiones finales sin introducir información nueva, usando expresiones apropiadas en inglés.', 
 null, null, null, 
 '¿Qué frase en inglés sería apropiada para comenzar una conclusión?', 
 'In conclusion,...', 
 'Suddenly,...', 
 'Once upon a time,...', 
 'Hello again,...', 
 'A', 4, 8, 'Writing an article');

--Complex noun phrases
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('INGLÉS', NULL, 'Identificando frases nominales complejas', 
'Las frases nominales complejas son grupos de palabras que funcionan como sustantivos pero contienen más información, como adjetivos, frases preposicionales o cláusulas relativas. Estas estructuras son esenciales para expresar ideas más detalladas en inglés.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes opciones es un ejemplo de frase nominal compleja?', 
'The big house', 'The house that Jack built', 'Running fast', 'She sings beautifully', 
'B', 4, 8, 'Complex noun phrases'),

-- Pregunta 2
('INGLÉS', NULL, 'Componentes de frases nominales', 
'Una frase nominal compleja puede incluir varios elementos como determinantes, adjetivos, sustantivos principales y modificadores. Identificar estos componentes ayuda a comprender mejor la estructura de las oraciones en inglés.', 
NULL, NULL, NULL, 
'En la frase nominal "The beautiful painting in the museum", ¿cuál es el sustantivo principal?', 
'The', 'beautiful', 'painting', 'museum', 
'C', 4, 8, 'Complex noun phrases'),

-- Pregunta 3
('INGLÉS', NULL, 'Uso de frases nominales', 
'Las frases nominales complejas permiten agregar detalles importantes a nuestras oraciones sin necesidad de usar varias oraciones simples. Esto hace que nuestro lenguaje sea más eficiente y sofisticado.', 
NULL, NULL, NULL, 
'¿Cuál de estas frases nominales contiene una cláusula relativa?', 
'A red apple', 'The book on the table', 'The girl who won the prize', 'My favorite song', 
'C', 4, 8, 'Complex noun phrases'),

-- Pregunta 4
('INGLÉS', NULL, 'Construyendo frases complejas', 
'Para formar frases nominales complejas, a menudo combinamos varios elementos gramaticales. Esta habilidad es fundamental para escribir y hablar inglés con fluidez y precisión.', 
NULL, NULL, NULL, 
'¿Cómo podrías expandir la frase nominal "the car" para hacerla más compleja?', 
'The fast car', 'The car that my father bought last year', 'Car quickly', 'They car', 
'B', 4, 8, 'Complex noun phrases'),

-- Pregunta 5
('INGLÉS', NULL, 'Reconociendo modificadores', 
'Los modificadores en frases nominales complejas proporcionan información adicional sobre el sustantivo principal. Pueden ser palabras individuales o grupos de palabras que describen o limitan el significado del sustantivo.', 
NULL, NULL, NULL, 
'En la frase "The students studying for the exam are tired", ¿qué parte funciona como modificador del sustantivo "students"?', 
'The', 'studying for the exam', 'are', 'tired', 
'B', 4, 8, 'Complex noun phrases'),

--Present perfect with "since"
-- Pregunta 1
('INGLÉS', NULL, 'Uso de "since" en present perfect', 
'El present perfect con "since" se utiliza para hablar sobre acciones que comenzaron en un momento específico en el pasado y continúan hasta el presente. "Since" indica el punto de inicio de la acción o estado.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes oraciones usa correctamente "since" con el present perfect?', 
'I have lived here since five years', 'I have lived here since 2018', 'I live here since 2018', 'I lived here since 2018', 
'B', 4, 8, 'Present perfect with "since"'),

-- Pregunta 2
('INGLÉS', NULL, 'Diferenciando "since" y "for"', 
'Es importante distinguir entre "since" y "for" cuando usamos el present perfect. "Since" se refiere a un punto específico en el tiempo (since Monday, since June), mientras que "for" se refiere a un período de tiempo (for two days, for months).', 
NULL, NULL, NULL, 
'¿Cuál es la forma correcta de completar esta oración? "She has worked here _____ last summer."', 
'since', 'for', 'during', 'while', 
'A', 4, 8, 'Present perfect with "since"'),

-- Pregunta 3
('INGLÉS', NULL, 'Construyendo oraciones con "since"', 
'Cuando formamos oraciones en present perfect con "since", el verbo principal debe estar en participio pasado y debemos incluir "have" o "has" según el sujeto. El tiempo que sigue a "since" puede ser un año, un mes, un día o incluso un evento pasado.', 
NULL, NULL, NULL, 
'¿Cómo se diría correctamente "Ellos han sido amigos desde la escuela primaria"?', 
'They have been friends since elementary school', 'They are friends since elementary school', 'They were friends since elementary school', 'They has been friends since elementary school', 
'A', 4, 8, 'Present perfect with "since"'),

-- Pregunta 4
('INGLÉS', NULL, 'Identificando errores comunes', 
'Un error frecuente al usar "since" con el present perfect es mezclar los tiempos verbales. Recuerda que la acción comenzó en el pasado pero tiene conexión con el presente, por lo que necesitamos la forma "have/has + past participle".', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error en el uso de "since"?', 
'We have known each other since childhood', 'I have had this bike since my birthday', 'She works here since January', 'They have been married since 2010', 
'C', 4, 8, 'Present perfect with "since"'),

-- Pregunta 5
('INGLÉS', NULL, 'Preguntas con "since"', 
'Al hacer preguntas en present perfect con "since", la estructura sigue siendo la misma: auxiliar (have/has) + sujeto + past participle + since + punto en el tiempo. Esta forma es útil para preguntar sobre la duración de acciones o estados.', 
NULL, NULL, NULL, 
'¿Cómo se formularía correctamente esta pregunta? "¿Cuánto tiempo has estudiado inglés (desde 2020)?"', 
'How long have you studied English since 2020?', 'How long do you study English since 2020?', 'How long did you study English since 2020?', 'How long you have studied English since 2020?', 
'A', 4, 8, 'Present perfect with "since"'),

--Verbs + infinitive
-- Pregunta 1
('INGLÉS', NULL, 'Verbos seguidos de infinitivo', 
'Algunos verbos en inglés van seguidos directamente por el infinitivo (to + verbo). Estos incluyen verbos como "want", "need", "plan", "decide", "hope" y muchos otros. Es importante memorizar qué verbos requieren esta estructura.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa correctamente un verbo seguido de infinitivo?', 
'She wants go to the park', 'She wants to go to the park', 'She wants going to the park', 'She wants goes to the park', 
'B', 4, 8, 'Verbs + infinitive'),

-- Pregunta 2
('INGLÉS', NULL, 'Estructuras con infinitivo', 
'Cuando usamos verbos que requieren infinitivo, es crucial recordar incluir "to" antes del verbo principal. Sin embargo, hay excepciones con verbos modales como "can", "must", "should", que van seguidos del verbo base sin "to".', 
NULL, NULL, NULL, 
'¿Cómo completarías correctamente esta oración? "They decided _____ a new car."', 
'buying', 'to buy', 'buy', 'bought', 
'B', 4, 8, 'Verbs + infinitive'),

-- Pregunta 3
('INGLÉS', NULL, 'Diferencias entre estructuras', 
'Algunos verbos pueden ir seguidos tanto de infinitivo como de gerundio, pero con cambios de significado. Por ejemplo, "remember to do" (recordar hacer algo) vs "remember doing" (recordar haber hecho algo).', 
NULL, NULL, NULL, 
'¿Cuál de estos verbos normalmente va seguido de infinitivo?', 
'enjoy', 'finish', 'hope', 'avoid', 
'C', 4, 8, 'Verbs + infinitive'),

-- Pregunta 4
('INGLÉS', NULL, 'Construyendo oraciones', 
'Para formar oraciones con verbos seguidos de infinitivo, sigue esta estructura: sujeto + verbo conjugado + to + verbo base + complemento. Esta construcción es común en inglés y aparece en muchas situaciones cotidianas.', 
NULL, NULL, NULL, 
'¿Cómo se diría correctamente "Él necesita comprar un libro nuevo"?', 
'He needs buying a new book', 'He needs to buy a new book', 'He needs buy a new book', 'He needs bought a new book', 
'B', 4, 8, 'Verbs + infinitive'),

-- Pregunta 5
('INGLÉS', NULL, 'Identificando errores', 
'Un error común con los verbos seguidos de infinitivo es omitir el "to" o usar formas incorrectas del verbo (como -ing o la forma conjugada). Presta atención a la estructura correcta cuando uses estos verbos.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error con el uso del infinitivo?', 
'I would like to visit Paris', 'We plan to travel next summer', 'She promised to help me', 'They agreed going to the party', 
'D', 4, 8, 'Verbs + infinitive'),

--Verbs + -ing
-- Pregunta 1
('INGLÉS', NULL, 'Verbos seguidos de gerundio', 
'Muchos verbos en inglés requieren que el verbo que les sigue esté en forma de gerundio (-ing). Estos incluyen verbos como "enjoy", "avoid", "consider", "finish", "practice" y otros. Reconocer estos verbos es esencial para construir oraciones correctamente.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa correctamente un verbo seguido de gerundio?', 
'She enjoys to swim', 'She enjoys swimming', 'She enjoys swim', 'She enjoys swam', 
'B', 4, 8, 'Verbs + -ing'),

-- Pregunta 2
('INGLÉS', NULL, 'Estructuras con -ing', 
'Cuando un verbo funciona como objeto de otro verbo, a menudo toma la forma de gerundio (-ing). Esta estructura es diferente a los verbos que requieren infinitivo, por lo que es importante aprender qué verbos pertenecen a cada categoría.', 
NULL, NULL, NULL, 
'¿Cómo completarías correctamente esta oración? "He avoided _____ his homework until the last minute."', 
'to do', 'do', 'doing', 'did', 
'C', 4, 8, 'Verbs + -ing'),

-- Pregunta 3
('INGLÉS', NULL, 'Verbos con doble posibilidad', 
'Algunos verbos pueden ir seguidos tanto de infinitivo como de gerundio, a veces con cambios de significado. Por ejemplo, "stop smoking" (dejar de fumar) vs "stop to smoke" (parar para fumar).', 
NULL, NULL, NULL, 
'¿Cuál de estos verbos normalmente va seguido de gerundio (-ing)?', 
'want', 'need', 'finish', 'plan', 
'C', 4, 8, 'Verbs + -ing'),

-- Pregunta 4
('INGLÉS', NULL, 'Construcción de oraciones', 
'Para formar oraciones con verbos seguidos de gerundio, sigue esta estructura: sujeto + verbo conjugado + verbo-ing + complemento. Esta construcción aparece frecuentemente en conversaciones y textos en inglés.', 
NULL, NULL, NULL, 
'¿Cómo se diría correctamente "Ella está considerando cambiar de trabajo"?', 
'She is considering to change jobs', 'She is considering changing jobs', 'She is consider changing jobs', 'She considers to change jobs', 
'B', 4, 8, 'Verbs + -ing'),

-- Pregunta 5
('INGLÉS', NULL, 'Identificando usos correctos', 
'Un error común con los verbos seguidos de gerundio es usar el infinitivo en su lugar. Presta atención a los verbos que requieren -ing y practica su uso en diferentes contextos para dominar esta estructura gramatical.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error con el uso del gerundio?', 
'I miss playing soccer with my friends', 'They discussed moving to a new city', 'We finished to clean the house', 'She suggested going to the beach', 
'C', 4, 8, 'Verbs + -ing'),

--Reported speech 
-- Pregunta 1
('INGLÉS', NULL, 'Introducción al estilo indirecto', 
'El reported speech o estilo indirecto se usa para contar lo que alguien ha dicho sin citar sus palabras exactas. Al convertir el discurso directo en indirecto, generalmente cambiamos los tiempos verbales, los pronombres y las expresiones de tiempo.', 
NULL, NULL, NULL, 
'¿Cómo se convertiría correctamente esta frase al estilo indirecto? Direct speech: "I am happy," said Mary.', 
'Mary said that she is happy', 'Mary said that she was happy', 'Mary said that I am happy', 'Mary said that I was happy', 
'B', 4, 8, 'Reported speech'),

-- Pregunta 2
('INGLÉS', NULL, 'Cambios en los tiempos verbales', 
'En el reported speech, los tiempos verbales generalmente retroceden un tiempo hacia el pasado (present simple → past simple, present continuous → past continuous, etc.). Sin embargo, esta regla no aplica cuando hablamos de verdades universales o situaciones que siguen siendo ciertas.', 
NULL, NULL, NULL, 
'¿Cómo se reportaría correctamente esta frase? Direct speech: "The Earth revolves around the Sun," the teacher said.', 
'The teacher said that the Earth revolved around the Sun', 'The teacher said that the Earth revolves around the Sun', 'The teacher said that the Earth is revolving around the Sun', 'The teacher said that the Earth was revolving around the Sun', 
'B', 4, 8, 'Reported speech'),

-- Pregunta 3
('INGLÉS', NULL, 'Modificación de pronombres y expresiones', 
'Al convertir el discurso directo en indirecto, no solo cambiamos los tiempos verbales, sino también los pronombres (I → he/she, we → they, etc.) y las expresiones de tiempo (today → that day, tomorrow → the next day, etc.).', 
NULL, NULL, NULL, 
'¿Cómo se reportaría correctamente esta frase? Direct speech: "I will call you tomorrow," John told me.', 
'John told me that he would call me the next day', 'John told me that I would call him tomorrow', 'John told me that he will call me tomorrow', 'John told me that he would call me tomorrow', 
'A', 4, 8, 'Reported speech'),

-- Pregunta 4
('INGLÉS', NULL, 'Reportando preguntas', 
'Cuando reportamos preguntas, la estructura cambia a la de una oración afirmativa (sujeto + verbo) y usamos "asked" en lugar de "said". Para preguntas sí/no, agregamos "if" o "whether". Para preguntas con palabras interrogativas, mantenemos la palabra interrogativa pero sin inversión del sujeto y verbo.', 
NULL, NULL, NULL, 
'¿Cómo se reportaría correctamente esta pregunta? Direct speech: "Where do you live?" she asked me.', 
'She asked me where I lived', 'She asked me where did I live', 'She asked me where do I live', 'She asked me where I live', 
'A', 4, 8, 'Reported speech'),

-- Pregunta 5
('INGLÉS', NULL, 'Reportando órdenes y peticiones', 
'Para reportar órdenes o peticiones, usamos la estructura "told/asked + objeto + (not) + to + infinitivo". Esta construcción es diferente a cómo reportamos declaraciones o preguntas, y es importante recordar incluir "to" antes del verbo principal.', 
NULL, NULL, NULL, 
'¿Cómo se reportaría correctamente esta orden? Direct speech: "Close the door," the teacher said to the students.', 
'The teacher told the students close the door', 'The teacher told the students to close the door', 'The teacher told the students closing the door', 'The teacher told the students that they closed the door', 
'B', 4, 8, 'Reported speech'),

--Past perfect
-- Pregunta 1
('INGLÉS', NULL, 'Introducción al past perfect', 
'El past perfect (had + past participle) se usa para hablar de una acción que ocurrió antes que otra acción en el pasado. Este tiempo verbal ayuda a establecer una secuencia clara de eventos cuando hablamos del pasado.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa correctamente el past perfect?', 
'When I arrived, they already left', 'When I arrived, they had already left', 'When I arrived, they have already left', 'When I arrived, they was already leaving', 
'B', 4, 8, 'Past perfect'),

-- Pregunta 2
('INGLÉS', NULL, 'Secuencia de eventos pasados', 
'El past perfect es particularmente útil cuando queremos enfatizar que una acción ocurrió antes que otra en el pasado. La acción más reciente generalmente va en past simple, mientras que la más antigua va en past perfect.', 
NULL, NULL, NULL, 
'¿Cómo completarías correctamente esta oración? "She _____ (finish) her homework before her friends _____ (arrive)."', 
'finished / had arrived', 'had finished / arrived', 'has finished / arrived', 'finished / arrived', 
'B', 4, 8, 'Past perfect'),

-- Pregunta 3
('INGLÉS', NULL, 'Diferenciando tiempos pasados', 
'A veces es difícil distinguir cuándo usar past simple y cuándo usar past perfect. Recuerda: el past perfect siempre se refiere a una acción que ocurrió antes que otra acción pasada, mientras que el past simple se usa para la acción más reciente o para acciones aisladas en el pasado.', 
NULL, NULL, NULL, 
'¿En cuál de estas situaciones sería necesario usar el past perfect?', 
'Para describir una acción única en el pasado', 'Para hablar de una acción que ocurrió antes que otra acción pasada', 'Para describir una acción habitual en el pasado', 'Para hablar de una acción que acaba de terminar', 
'B', 4, 8, 'Past perfect'),

-- Pregunta 4
('INGLÉS', NULL, 'Construyendo oraciones', 
'Para formar oraciones en past perfect, sigue esta estructura: sujeto + had + past participle + complemento. Cuando combinamos dos acciones, la más antigua va en past perfect y la más reciente en past simple.', 
NULL, NULL, NULL, 
'¿Cómo se diría correctamente "Ellos ya habían comido cuando llegamos"?', 
'They already ate when we arrived', 'They have already eaten when we arrived', 'They had already eaten when we arrived', 'They were already eating when we arrived', 
'C', 4, 8, 'Past perfect'),

-- Pregunta 5
('INGLÉS', NULL, 'Identificando errores', 
'Un error común con el past perfect es usarlo indistintamente con el past simple o no usarlo cuando es necesario para clarificar la secuencia de eventos. Presta atención a la relación temporal entre las acciones pasadas.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error en el uso del past perfect?', 
'After I had finished my work, I went to bed', 'I had never seen such a beautiful sunset before that day', 'She told me she has visited Paris twice', 'By the time we got there, the movie had already started', 
'C', 4, 8, 'Past perfect'),

--Adjectives: Feelings, opinions and experiences
-- Pregunta 1
('INGLÉS', NULL, 'Adjetivos de sentimientos', 
'Los adjetivos que describen sentimientos y emociones son esenciales para expresarnos en inglés. Algunos de estos adjetivos terminan en -ed (como "bored", "excited") cuando describen cómo se siente una persona, y en -ing (como "boring", "exciting") cuando describen lo que causa el sentimiento.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones usa correctamente los adjetivos de sentimiento?', 
'I was very boring during the lecture', 'The movie was very excited', 'She felt surprised by the news', 'We were interesting in the presentation', 
'C', 4, 8, 'Adjectives: Feelings, opinions and experiences'),

-- Pregunta 2
('INGLÉS', NULL, 'Diferenciando -ed e -ing', 
'Es común confundir los adjetivos que terminan en -ed con los que terminan en -ing. Recuerda: -ed describe cómo alguien se siente ("I''m interested"), mientras que -ing describe la cosa o situación que causa el sentimiento ("The book is interesting").', 
NULL, NULL, NULL, 
'¿Cómo completarías correctamente esta oración? "The students were _____ because the lesson was _____."', 
'bored / boring', 'boring / bored', 'bored / bored', 'boring / boring', 
'A', 4, 8, 'Adjectives: Feelings, opinions and experiences'),

-- Pregunta 3
('INGLÉS', NULL, 'Adjetivos de opinión', 
'Los adjetivos de opinión (como "beautiful", "awful", "fantastic") expresan lo que pensamos sobre algo o alguien. Estos adjetivos generalmente preceden a los adjetivos de hecho (como "big", "old", "red") cuando aparecen juntos antes de un sustantivo.', 
NULL, NULL, NULL, 
'¿Cuál de estas frases sigue el orden correcto de los adjetivos?', 
'an old beautiful house', 'a beautiful old house', 'a house old beautiful', 'a house beautiful old', 
'B', 4, 8, 'Adjectives: Feelings, opinions and experiences'),

-- Pregunta 4
('INGLÉS', NULL, 'Describiendo experiencias', 
'Cuando describimos experiencias personales, a menudo usamos adjetivos como "amazing", "terrible", "unforgettable" o "disappointing". Estos adjetivos nos ayudan a transmitir cómo valoramos o recordamos ciertos eventos en nuestras vidas.', 
NULL, NULL, NULL, 
'¿Cómo se diría correctamente "Fue una experiencia emocionante"?', 
'It was an excited experience', 'It was an exciting experience', 'It was an excite experience', 'It was an excitement experience', 
'B', 4, 8, 'Adjectives: Feelings, opinions and experiences'),

-- Pregunta 5
('INGLÉS', NULL, 'Identificando usos correctos', 
'Al usar adjetivos para describir sentimientos, opiniones y experiencias, es importante elegir la palabra adecuada para transmitir exactamente lo que queremos decir. Algunos adjetivos tienen significados similares pero matices diferentes.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones contiene un error en el uso de adjetivos?', 
'We were thrilled with the surprise party', 'The test results were disappointed', 'Her speech was inspiring', 'I found the story fascinating', 
'B', 4, 8, 'Adjectives: Feelings, opinions and experiences'),

--Vocabulary: Relationships friends 
-- Pregunta 1
('INGLÉS', NULL, 'Tipos de relaciones', 
'En inglés existen muchas palabras para describir diferentes tipos de relaciones entre amigos y conocidos. Algunos términos como "acquaintance", "close friend", "best friend", "childhood friend" y "workmate" nos ayudan a especificar el tipo de relación que tenemos con alguien.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras describe a alguien que conoces pero no es un amigo cercano?', 
'Best friend', 'Acquaintance', 'Soulmate', 'Partner', 
'B', 4, 8, 'Vocabulary: Relationships friends'),

-- Pregunta 2
('INGLÉS', NULL, 'Expresiones sobre amistad', 
'Hay muchas expresiones y frases hechas en inglés relacionadas con la amistad. Por ejemplo, "get along with", "lose touch", "have a lot in common", "keep in touch" y "fall out with" son útiles para hablar sobre nuestras relaciones.', 
NULL, NULL, NULL, 
'¿Qué significa la expresión "to have a falling out with someone"?', 
'To meet someone for the first time', 'To have an argument that damages a friendship', 'To help someone in need', 'To spend a lot of time with someone', 
'B', 4, 8, 'Vocabulary: Relationships friends'),

-- Pregunta 3
('INGLÉS', NULL, 'Verbos sobre relaciones', 
'Los verbos que describen interacciones sociales son importantes para hablar sobre relaciones. Verbos como "introduce", "trust", "support", "forgive" y "apologize" aparecen frecuentemente cuando hablamos de nuestras interacciones con amigos y conocidos.', 
NULL, NULL, NULL, 
'¿Qué verbo completa mejor esta oración? "I want to _____ you to my best friend."', 
'meet', 'know', 'introduce', 'present', 
'C', 4, 8, 'Vocabulary: Relationships friends'),

-- Pregunta 4
('INGLÉS', NULL, 'Cualidades de un buen amigo', 
'Cuando describimos las cualidades que valoramos en un amigo, usamos adjetivos como "loyal", "trustworthy", "supportive", "honest" y "reliable". Estas palabras nos ayudan a expresar qué hace que una amistad sea especial.', 
NULL, NULL, NULL, 
'¿Cuál de estas cualidades es la más importante en una amistad, según la mayoría de las personas?', 
'Wealthy', 'Famous', 'Trustworthy', 'Humorous', 
'C', 4, 8, 'Vocabulary: Relationships friends'),

-- Pregunta 5
('INGLÉS', NULL, 'Expresando problemas en amistades', 
'A veces las amistades enfrentan problemas, y es útil conocer vocabulario para describir estas situaciones. Términos como "misunderstanding", "jealousy", "betrayal", "distance" y "reconciliation" aparecen cuando hablamos de dificultades en las relaciones.', 
NULL, NULL, NULL, 
'¿Qué palabra describe mejor cuando un amigo revela un secreto que le confiaste?', 
'Misunderstanding', 'Betrayal', 'Distance', 'Argument', 
'B', 4, 8, 'Vocabulary: Relationships friends');

-- Preguntas para Grammar: Tag questions
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('INGLÉS', NULL, 'Identificando preguntas coletillas', 'Las tag questions son estructuras gramaticales que se añaden al final de una oración para confirmar información o buscar acuerdo. Analiza cuidadosamente cada opción.', NULL, NULL, NULL, '¿Cuál es la tag question correcta para la oración: "She is your sister, ______?"', 'is she', 'isn''t she', 'does she', 'doesn''t she', 'B', 4, 8, 'Grammar: Tag questions'),
('INGLÉS', NULL, 'Tag questions en negativo', 'Cuando la oración principal es negativa, la tag question debe ser afirmativa. Presta atención a los verbos auxiliares.', NULL, NULL, NULL, 'Selecciona la tag question adecuada para: "They didn''t go to the party, ______?"', 'did they', 'didn''t they', 'went they', 'go they', 'A', 4, 8, 'Grammar: Tag questions'),
('INGLÉS', NULL, 'Excepción con el verbo to be', 'Existen casos especiales con el verbo "to be" donde las tag questions no siguen las reglas convencionales.', NULL, NULL, NULL, 'Completa correctamente: "I am late, ______?"', 'am I', 'amn''t I', 'aren''t I', 'isn''t I', 'C', 4, 8, 'Grammar: Tag questions'),
('INGLÉS', NULL, 'Tag questions con have', 'El verbo "have" puede comportarse como verbo principal o auxiliar, afectando la formación de tag questions.', NULL, NULL, NULL, 'Elige la opción correcta para: "You have a new car, ______?"', 'have you', 'haven''t you', 'do you', 'don''t you', 'B', 4, 8, 'Grammar: Tag questions'),
('INGLÉS', NULL, 'Estructura con Let''s', 'Las sugerencias con "Let''s" tienen una estructura fija para las tag questions que difiere de las reglas generales.', NULL, NULL, NULL, '¿Cómo se completa correctamente: "Let''s go to the beach, ______?"', 'do we', 'don''t we', 'shall we', 'shan''t we', 'C', 4, 8, 'Grammar: Tag questions'),

-- Preguntas para Passive voice: Simple past and infinitive
('INGLÉS', NULL, 'Transformación a voz pasiva', 'La voz pasiva en pasado simple requiere el uso correcto del verbo to be en pasado y el participio del verbo principal.', NULL, NULL, NULL, 'Convierte a voz pasiva: "The teacher corrected the exams."', 'The exams were corrected by the teacher.', 'The exams was corrected by the teacher.', 'The exams corrected the teacher.', 'The teacher was corrected by the exams.', 'A', 4, 8, 'Passive voice: Simple past and infinitive'),
('INGLÉS', NULL, 'Infinitivo pasivo', 'La estructura pasiva con infinitivo se utiliza después de ciertos verbos para expresar acciones necesarias o requeridas.', NULL, NULL, NULL, 'Selecciona la versión pasiva correcta de: "I want someone to clean my room."', 'I want my room to be cleaned.', 'I want to be cleaned my room.', 'I want my room to clean.', 'I want to clean my room.', 'A', 4, 8, 'Passive voice: Simple past and infinitive'),
('INGLÉS', NULL, 'Objetos en voz pasiva', 'Al transformar oraciones con dos objetos a pasiva, es importante elegir correctamente qué objeto se convierte en sujeto.', NULL, NULL, NULL, 'Transforma a pasiva: "They gave me a present."', 'I was given a present.', 'A present was given me.', 'I was gave a present.', 'A present was gave to me.', 'A', 4, 8, 'Passive voice: Simple past and infinitive'),
('INGLÉS', NULL, 'Omisión del agente', 'En la voz pasiva, el agente puede omitirse cuando no es relevante o es desconocido.', NULL, NULL, NULL, '¿Cuál es la forma pasiva correcta de: "Someone stole my bicycle yesterday."?', 'My bicycle was stolen yesterday.', 'My bicycle is stolen yesterday.', 'My bicycle stolen yesterday by someone.', 'My bicycle was stole yesterday.', 'A', 4, 8, 'Passive voice: Simple past and infinitive'),
('INGLÉS', NULL, 'Necesidad en pasiva', 'La estructura "need + to be + past participle" expresa que algo requiere ser hecho.', NULL, NULL, NULL, 'Completa la oración: "The windows need ______."', 'to clean', 'to be clean', 'to be cleaning', 'to be cleaned', 'D', 4, 8, 'Passive voice: Simple past and infinitive'),

-- Preguntas para Possibility and impossibility: Can, could
('INGLÉS', NULL, 'Expresando posibilidad', 'Los verbos modales "can" y "could" expresan diferentes grados de posibilidad en el presente.', NULL, NULL, NULL, 'Elige la opción correcta: "If you study hard, you ______ pass the exam."', 'can', 'could', 'will can', 'can to', 'A', 4, 8, 'Possibility and impossibility: Can, could'),
('INGLÉS', NULL, 'Posibilidad en presente', '"Could" puede expresar posibilidades menos seguras que "can" en el contexto presente.', NULL, NULL, NULL, '¿Cuál oración expresa una posibilidad actual?', 'I can swim when I was five.', 'I could swim when I was five.', 'It could rain later.', 'She can speaks French.', 'C', 4, 8, 'Possibility and impossibility: Can, could'),
('INGLÉS', NULL, 'Deducción negativa', 'Para expresar imposibilidad en el presente, se utiliza "can''t" con un significado de certeza negativa.', NULL, NULL, NULL, 'Completa correctamente: "That ______ be Sarah. She''s on vacation in Europe."', 'can''t', 'couldn''t', 'can', 'could', 'A', 4, 8, 'Possibility and impossibility: Can, could'),
('INGLÉS', NULL, 'Peticiones educadas', 'En preguntas, "could" suena más educado que "can" al hacer peticiones o preguntas.', NULL, NULL, NULL, 'Selecciona la forma más cortés:', 'Can you help me?', 'Could you help me?', 'You can help me?', 'You could help me?', 'B', 4, 8, 'Possibility and impossibility: Can, could'),
('INGLÉS', NULL, 'Posibilidades generales', 'Para hablar de posibilidades teóricas o situaciones hipotéticas, se puede usar "could".', NULL, NULL, NULL, 'Completa la oración: "It ______ be very cold in winter, so take warm clothes."', 'can', 'could', 'can to', 'could to', 'B', 4, 8, 'Possibility and impossibility: Can, could'),

-- Preguntas para Permission and offers: Can, could
('INGLÉS', NULL, 'Pidiendo permiso', 'Existen diferentes niveles de formalidad al pedir permiso en inglés.', NULL, NULL, NULL, '¿Cuál es la forma más formal para pedir permiso?', 'Can I use your phone?', 'Could I use your phone?', 'May I use your phone?', 'Do I use your phone?', 'C', 4, 8, 'Permission and offers: Can, could'),
('INGLÉS', NULL, 'Ofreciendo ayuda', 'Al ofrecer ayuda, la elección del verbo modal afecta el nivel de cortesía.', NULL, NULL, NULL, 'Selecciona la oferta más educada:', 'Can I help you?', 'Could I help you?', 'I can help you?', 'I could help you?', 'B', 4, 8, 'Permission and offers: Can, could'),
('INGLÉS', NULL, 'Respondiendo a peticiones', 'Las respuestas a peticiones con "could" deben usar "can" o "may", no "could".', NULL, NULL, NULL, '¿Cuál es la respuesta correcta a "Could I borrow your pen?"', 'Yes, you could.', 'Yes, you can.', 'No, you couldn''t.', 'No, you can''t.', 'B', 4, 8, 'Permission and offers: Can, could'),
('INGLÉS', NULL, 'Estructuras gramaticales', 'Es importante usar la estructura correcta al pedir permiso en inglés.', NULL, NULL, NULL, '¿Cuál oración es gramaticalmente correcta?', 'Can I to go to the bathroom?', 'Could I go to the bathroom?', 'I can go to the bathroom?', 'I could go to the bathroom?', 'B', 4, 8, 'Permission and offers: Can, could'),
('INGLÉS', NULL, 'Ofreciendo algo', 'Existen varias formas de ofrecer algo a alguien en inglés, con distintos niveles de formalidad.', NULL, NULL, NULL, '¿Cuál es la manera más apropiada de ofrecer una bebida?', 'Can I get you a drink?', 'Could I get you a drink?', 'Would you like a drink?', 'Do you want a drink?', 'C', 4, 8, 'Permission and offers: Can, could'),

-- Preguntas para Third conditional
('INGLÉS', NULL, 'Estructura del tercer condicional', 'El tercer condicional se usa para situaciones hipotéticas pasadas que ya no pueden cambiarse.', NULL, NULL, NULL, 'Completa correctamente: "If I ______ about the test, I would have studied."', 'knew', 'had known', 'have known', 'would know', 'B', 4, 8, 'Third conditional'),
('INGLÉS', NULL, 'Resultados hipotéticos', 'El tercer condicional imagina resultados diferentes para situaciones pasadas.', NULL, NULL, NULL, 'Elige la opción correcta: "She ______ late if she had taken an earlier train."', 'wouldn''t be', 'wouldn''t have been', 'hadn''t been', 'weren''t', 'B', 4, 8, 'Third conditional'),
('INGLÉS', NULL, 'Transformando oraciones', 'Para formar el tercer condicional, ambos verbos deben estar en los tiempos correctos.', NULL, NULL, NULL, 'Transforma a tercer condicional: "I didn''t save money, so I couldn''t buy a car."', 'If I saved money, I could buy a car.', 'If I had saved money, I could have bought a car.', 'If I save money, I can buy a car.', 'If I have saved money, I could buy a car.', 'B', 4, 8, 'Third conditional'),
('INGLÉS', NULL, 'Variaciones del resultado', 'En el tercer condicional, podemos usar "might have" o "could have" para expresar diferentes matices.', NULL, NULL, NULL, 'Completa: "If you had asked me, I ______ helped you."', 'would have', 'had', 'would', 'will have', 'A', 4, 8, 'Third conditional'),
('INGLÉS', NULL, 'Orden de las cláusulas', 'El orden de las cláusulas en el tercer condicional puede variar sin cambiar el significado.', NULL, NULL, NULL, '¿Cuál oración es correcta?', 'I would have called you if I had known you were home.', 'I would have called you, if I had known you were home.', 'I would called you if I had known you were home.', 'I would have call you if I had known you were home.', 'A', 4, 8, 'Third conditional'),

-- Preguntas para Vocabulary: Advertising and media
('INGLÉS', NULL, 'Términos publicitarios', 'El vocabulario de publicidad incluye términos específicos que es importante conocer.', NULL, NULL, NULL, '¿Qué significa "slogan" en publicidad?', 'The budget for an ad', 'A short, memorable phrase promoting a product', 'The group of people an ad targets', 'A studio where commercials are recorded', 'B', 4, 8, 'Vocabulary: Advertising and media'),
('INGLÉS', NULL, 'Tipos de medios', 'Los diferentes medios de comunicación tienen características particulares.', NULL, NULL, NULL, '¿Cuál es un ejemplo de "broadcast media"?', 'A newspaper', 'A magazine', 'A TV show', 'A website', 'C', 4, 8, 'Vocabulary: Advertising and media'),
('INGLÉS', NULL, 'Conceptos de marketing', 'En publicidad existen conceptos clave como "target audience" y "brand awareness".', NULL, NULL, NULL, '¿Qué significa "target audience"?', 'Where an ad is displayed', 'The group of people an ad is aimed at', 'The cost of producing an ad', 'How long an ad campaign lasts', 'B', 4, 8, 'Vocabulary: Advertising and media'),
('INGLÉS', NULL, 'Formatos publicitarios', 'Los comerciales pueden adoptar diferentes formatos y técnicas.', NULL, NULL, NULL, '¿Qué es un "commercial"?', 'A newspaper article', 'A paid advertisement on TV or radio', 'A social media post', 'A news report', 'B', 4, 8, 'Vocabulary: Advertising and media'),
('INGLÉS', NULL, 'Estrategias de marketing', 'Las empresas utilizan diversas estrategias para promocionar sus productos.', NULL, NULL, NULL, '¿Qué significa "endorsement" en publicidad?', 'When a famous person recommends a product', 'The end of an ad campaign', 'The cost of making an ad', 'Evaluating an ad''s effectiveness', 'A', 4, 8, 'Vocabulary: Advertising and media'),

-- Preguntas para Writing an opinion piece for an online magazine
('INGLÉS', NULL, 'Propósito del artículo de opinión', 'Los artículos de opinión tienen características distintivas que los diferencian de otros tipos de texto.', NULL, NULL, NULL, '¿Cuál es el objetivo principal de un artículo de opinión?', 'Present objective facts without interpretation', 'Express the author''s viewpoint on a topic', 'Tell a fictional story', 'Give step-by-step instructions', 'B', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Elementos del artículo de opinión', 'Un buen artículo de opinión debe contener ciertos elementos clave.', NULL, NULL, NULL, '¿Qué elemento NO es típico de un artículo de opinión?', 'A catchy title', 'Arguments supporting the author''s view', 'Raw statistical facts without analysis', 'Examples illustrating points', 'C', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Inicio efectivo', 'La introducción de un artículo de opinión debe captar la atención del lector inmediatamente.', NULL, NULL, NULL, '¿Cuál sería un buen comienzo para un artículo sobre redes sociales?', 'Social media has 3.6 billion users.', '"Do you spend more than two hours daily on social media? Maybe it''s time to rethink your habits."', 'Facebook was founded in 2004.', 'Instagram is a popular app.', 'B', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Conclusión impactante', 'El final de un artículo de opinión debe dejar una impresión duradera en el lector.', NULL, NULL, NULL, '¿Qué técnica funciona bien en una conclusión?', 'Introduce a completely new argument', 'Repeat exactly what was in the introduction', 'Ask a thought-provoking question', 'List all sources used', 'C', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Lenguaje apropiado', 'El tono y estilo de un artículo de opinión pueden variar según el contexto.', NULL, NULL, NULL, '¿Cuál es un argumento adecuado para un artículo de opinión?', 'In my experience, school uniforms reduce classroom distractions.', 'School uniforms are blue or gray.', 'The school implemented uniforms in 2010.', '60% of schools use uniforms.', 'A', 4, 8, 'Writing an opinion piece for an online magazine'),

-- Preguntas para Writing an opinion piece for an online magazine
('INGLÉS', NULL, 'Opinion Writing', 'Un artículo de opinión para una revista en línea debe presentar un punto de vista claro sobre un tema, apoyado con argumentos y ejemplos. Suele incluir una introducción, desarrollo y conclusión.', NULL, NULL, NULL, '¿Cuál es el propósito principal de un artículo de opinión?', 'Presentar hechos objetivos sin interpretación', 'Expresar el punto de vista del autor sobre un tema', 'Contar una historia ficticia', 'Dar instrucciones paso a paso', 'B', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Opinion Writing', 'En un artículo de opinión, es importante usar conectores como "however", "moreover", "on the other hand" para enlazar ideas y argumentos de manera coherente.', NULL, NULL, NULL, '¿Qué elemento NO es típico de un artículo de opinión?', 'Un título llamativo', 'Argumentos que apoyan la postura del autor', 'Hechos estadísticos sin interpretación', 'Ejemplos que ilustran los puntos', 'C', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Opinion Writing', 'La introducción de un artículo de opinión debe captar la atención del lector y presentar claramente el tema y la postura del autor. Puede incluir una pregunta retórica o un dato interesante.', NULL, NULL, NULL, '¿Cuál sería un buen comienzo para un artículo de opinión sobre redes sociales?', 'Las redes sociales tienen 3.6 billones de usuarios.', '"¿Pasas más de dos horas al día en redes sociales? Tal vez sea hora de reconsiderar tus hábitos."', 'Facebook fue fundado en 2004.', 'Instagram es una aplicación popular.', 'B', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Opinion Writing', 'En la conclusión de un artículo de opinión, el autor puede resumir sus puntos principales, reforzar su postura o hacer un llamado a la acción. Debe dejar una impresión duradera en el lector.', NULL, NULL, NULL, '¿Qué técnica se puede usar en la conclusión de un artículo de opinión?', 'Introducir un argumento completamente nuevo', 'Repetir exactamente lo dicho en la introducción', 'Hacer una pregunta que invite a la reflexión', 'Listar todas las fuentes utilizadas', 'C', 4, 8, 'Writing an opinion piece for an online magazine'),
('INGLÉS', NULL, 'Opinion Writing', 'El lenguaje en un artículo de opinión puede ser más personal e informal que en un artículo informativo, pero aún debe ser respetuoso y bien argumentado. Se pueden usar pronombres como "I" y "you".', NULL, NULL, NULL, '¿Cuál de estos es un argumento adecuado para un artículo de opinión?', 'En mi experiencia, los uniformes escolares reducen las distracciones en clase.', 'Los uniformes escolares son azules o grises.', 'La escuela implementó uniformes en 2010.', 'El 60% de las escuelas usan uniformes.', 'A', 4, 8, 'Writing an opinion piece for an online magazine');

--PREGUNTAS COMUNICACIÓN 2° SECUNDARIA
-- Preguntas para el tema: Literatura peruana prehispánica y durante la conquista
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Literatura oral prehispánica', 
'La literatura prehispánica en el Perú se transmitía principalmente de forma oral y estaba estrechamente relacionada con las ceremonias religiosas y las actividades cotidianas. Estas expresiones literarias nos permiten entender la cosmovisión de las antiguas culturas peruanas.', 
NULL, NULL, NULL, 
'¿Cuál era la principal característica de la literatura peruana prehispánica?', 
'Se transmitía principalmente de forma escrita', 
'Se centraba en temas científicos y matemáticos', 
'Se transmitía oralmente y estaba ligada a lo religioso', 
'Era exclusiva de la nobleza y no llegaba al pueblo', 
'C', 6, 8, 'Literatura: Literatura peruana prehispánica y durante la conquista'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Obras representativas', 
'Durante la época de la conquista, surgieron obras que narraban el encuentro entre dos mundos. Estas obras son importantes porque muestran la perspectiva tanto de los conquistadores como de los pueblos originarios.', 
NULL, NULL, NULL, 
'¿Cuál de estas obras es representativa del período de la conquista en el Perú?', 
'Los Comentarios Reales de los Incas', 
'La ciudad y los perros', 
'Tradiciones peruanas', 
'Un mundo para Julius', 
'A', 6, 8, 'Literatura: Literatura peruana prehispánica y durante la conquista'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Función de la literatura', 
'En las culturas prehispánicas peruanas, la literatura cumplía diversas funciones que iban más allá del entretenimiento. Formaba parte integral de la vida social y espiritual de estas sociedades.', 
NULL, NULL, NULL, 
'¿Qué función NO cumplía la literatura en las sociedades prehispánicas peruanas?', 
'Transmitir conocimientos ancestrales', 
'Registrar datos estadísticos económicos', 
'Preservar mitos y leyendas', 
'Fortalecer la identidad cultural', 
'B', 6, 8, 'Literatura: Literatura peruana prehispánica y durante la conquista'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Garcilaso de la Vega', 
'El Inca Garcilaso de la Vega es una figura clave en la literatura peruana de transición entre la conquista y la colonia. Su obra combina elementos de ambas culturas a las que pertenecía.', 
NULL, NULL, NULL, 
'¿Qué caracteriza principalmente la obra del Inca Garcilaso de la Vega?', 
'Una visión totalmente europea de la conquista', 
'Una perspectiva que combina lo indígena y lo español', 
'Un rechazo completo a las tradiciones incaicas', 
'Un enfoque exclusivamente religioso', 
'B', 6, 8, 'Literatura: Literatura peruana prehispánica y durante la conquista'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Temas recurrentes', 
'La literatura durante el período de la conquista abordaba temas relacionados con el choque cultural, la descripción de nuevas tierras y la justificación de la conquista.', 
NULL, NULL, NULL, 
'¿Cuál de estos temas NO era común en la literatura peruana durante la conquista?', 
'La descripción de la geografía americana', 
'El choque entre culturas', 
'La vida en las grandes ciudades modernas', 
'La evangelización de los indígenas', 
'C', 6, 8, 'Literatura: Literatura peruana prehispánica y durante la conquista'),

-- Preguntas para el tema: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos
('COMUNICACIÓN', NULL, 'Monosílabos con tilde', 
'La acentuación diacrítica es aquella que se usa para diferenciar palabras que se escriben igual pero tienen significados diferentes. En el caso de los monosílabos, normalmente no llevan tilde, pero existen excepciones importantes.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras monosílabas lleva tilde diacrítica?', 
'Pan (alimento)', 
'Mas (conjunción equivalente a "pero")', 
'Sal (condimento)', 
'Mar (cuerpo de agua)', 
'B', 6, 8, 'Ortografía: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos'),

('COMUNICACIÓN', NULL, 'Uso de qué', 
'Las palabras interrogativas y exclamativas siempre llevan tilde, tanto en preguntas directas como indirectas, para diferenciarlas de sus homónimas que no cumplen esta función.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones debe llevar tilde la palabra "que"?', 
'No sabía que habías llegado', 
'¿Que hora es?', 
'Dime que quieres hacer', 
'El libro que me prestaste', 
'B', 6, 8, 'Ortografía: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos'),

('COMUNICACIÓN', NULL, 'Diferencia entre "el" y "él"', 
'El uso de la tilde diacrítica es esencial para distinguir entre el artículo "el" y el pronombre personal "él". Esta diferencia puede cambiar completamente el significado de una oración.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones está correctamente usada la tilde en "él"?', 
'El libro está sobre la mesa', 
'Él perro ladró toda la noche', 
'Voy con él al cine', 
'El dijo que vendría temprano', 
'C', 6, 8, 'Ortografía: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos'),

('COMUNICACIÓN', NULL, 'Palabras interrogativas', 
'Las palabras interrogativas y exclamativas como qué, quién, cuál, cómo, cuánto, dónde y cuándo siempre llevan tilde cuando introducen preguntas o exclamaciones, ya sean directas o indirectas.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones tiene un error en la acentuación?', 
'¿Cuándo llegará el avión?', 
'No sé dónde dejé las llaves', 
'Me pregunto como lo habrá hecho', 
'¡Qué sorpresa tan agradable!', 
'C', 6, 8, 'Ortografía: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos'),

('COMUNICACIÓN', NULL, 'Uso de "sí" y "si"', 
'La tilde diacrítica también se usa para diferenciar entre el pronombre reflexivo "sí" y la conjunción condicional "si". Es importante conocer esta diferencia para escribir correctamente.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones está correctamente usada la tilde en "sí"?', 
'Si estudias, aprobarás el examen', 
'Lo dijo para si mismo', 
'Sí quiero ir al paseo', 
'Se lo guardó para sí mismo', 
'D', 6, 8, 'Ortografía: Acentuación diacrítica en monosílabos. Acentuación en interrogativos y exclamativos'),

-- Preguntas para el tema: El sustantivo y el adjetivo
('COMUNICACIÓN', NULL, 'Identificar sustantivos', 
'El sustantivo es una categoría gramatical que sirve para nombrar personas, animales, cosas, lugares, sentimientos o ideas. Es una de las partes fundamentales de la oración.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes palabras es un sustantivo?', 
'Correr', 
'Feliz', 
'Montaña', 
'Rápidamente', 
'C', 6, 8, 'Gramática: El sustantivo y el adjetivo'),

('COMUNICACIÓN', NULL, 'Concordancia sustantivo-adjetivo', 
'En español, el adjetivo debe concordar en género y número con el sustantivo al que modifica. Esta concordancia es esencial para la correcta construcción de oraciones.', 
NULL, NULL, NULL, 
'¿Cuál de estas oraciones muestra la correcta concordancia entre sustantivo y adjetivo?', 
'Las casas blancos', 
'El perro grandes', 
'Los libros interesantes', 
'La niña altos', 
'C', 6, 8, 'Gramática: El sustantivo y el adjetivo'),

('COMUNICACIÓN', NULL, 'Función del adjetivo', 
'El adjetivo es una palabra que complementa al sustantivo, expresando cualidades, características o propiedades del ser u objeto nombrado. Puede aparecer antes o después del sustantivo.', 
NULL, NULL, NULL, 
'¿Cuál es la función principal del adjetivo en una oración?', 
'Expresar acciones', 
'Modificar o complementar al sustantivo', 
'Indicar relaciones temporales', 
'Servir como núcleo del predicado', 
'B', 6, 8, 'Gramática: El sustantivo y el adjetivo'),

('COMUNICACIÓN', NULL, 'Sustantivos abstractos', 
'Los sustantivos abstractos son aquellos que nombran conceptos, ideas, sentimientos o cualidades que no podemos percibir con los sentidos pero que existen en nuestra mente.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras es un sustantivo abstracto?', 
'Libro', 
'Justicia', 
'Computadora', 
'Perro', 
'B', 6, 8, 'Gramática: El sustantivo y el adjetivo'),

('COMUNICACIÓN', NULL, 'Adjetivos calificativos', 
'Los adjetivos calificativos son los más comunes y expresan cualidades concretas o abstractas del sustantivo. Pueden indicar tamaño, color, forma, carácter, etc.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras es un adjetivo calificativo?', 
'Azul', 
'Correr', 
'Rápidamente', 
'Biblioteca', 
'A', 6, 8, 'Gramática: El sustantivo y el adjetivo'),

-- Preguntas para el tema: Estrategias para estructurar ideas
('COMUNICACIÓN', NULL, 'Orden lógico', 
'Al redactar un texto, es fundamental organizar las ideas de manera coherente y lógica para que el mensaje sea claro y comprensible para el lector.', 
NULL, NULL, NULL, 
'¿Cuál de estas NO es una estrategia adecuada para estructurar ideas al escribir?', 
'Jerarquizar las ideas de más a menos importante', 
'Presentar las ideas en orden cronológico', 
'Mezclar temas diferentes en cada párrafo', 
'Usar conectores entre párrafos', 
'C', 6, 8, 'Comunicación escrita: Estrategias para estructurar ideas'),

('COMUNICACIÓN', NULL, 'Párrafos bien estructurados', 
'Un párrafo bien estructurado contiene una idea principal y varias ideas secundarias que la desarrollan o complementan. La cohesión entre oraciones es esencial.', 
NULL, NULL, NULL, 
'¿Qué elemento debe contener todo párrafo bien estructurado?', 
'Una idea principal y oraciones que la desarrollen', 
'Múltiples ideas principales sin relación entre sí', 
'Solo datos estadísticos', 
'Preguntas sin respuestas', 
'A', 6, 8, 'Comunicación escrita: Estrategias para estructurar ideas'),

('COMUNICACIÓN', NULL, 'Conectores textuales', 
'Los conectores son palabras o frases que establecen relaciones lógicas entre las ideas y permiten que el texto fluya de manera coherente.', 
NULL, NULL, NULL, 
'¿Cuál de estas palabras NO funciona como conector textual?', 
'Sin embargo', 
'Por ejemplo', 
'Manzana', 
'En conclusión', 
'C', 6, 8, 'Comunicación escrita: Estrategias para estructurar ideas'),

('COMUNICACIÓN', NULL, 'Planificación del texto', 
'Antes de escribir, es recomendable hacer un esquema o plan que organice las ideas principales y secundarias. Esto ayuda a mantener el foco y la coherencia del texto.', 
NULL, NULL, NULL, 
'¿Cuál de estas es una técnica útil para planificar un texto?', 
'Empezar a escribir sin pensar en la estructura', 
'Hacer un esquema con ideas principales y secundarias', 
'Evitar cualquier tipo de organización previa', 
'Cambiar constantemente de tema', 
'B', 6, 8, 'Comunicación escrita: Estrategias para estructurar ideas'),

('COMUNICACIÓN', NULL, 'Coherencia textual', 
'La coherencia es una cualidad esencial de todo texto bien escrito. Se refiere a la relación lógica y significativa entre las partes del texto.', 
NULL, NULL, NULL, 
'¿Qué elemento contribuye a la coherencia de un texto?', 
'Que todas las ideas giren en torno a un tema central', 
'Incluir información contradictoria', 
'Presentar ideas inconexas', 
'Cambiar constantemente de tema', 
'A', 6, 8, 'Comunicación escrita: Estrategias para estructurar ideas');

--Literatura peruana de la emancipación
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Mariano Melgar y sus yaravíes', 
'Mariano Melgar, poeta peruano de la época de la emancipación, es conocido principalmente por sus yaravíes, composiciones poéticas que combinaban elementos indígenas y españoles. Sus obras reflejan el dolor del amor no correspondido y el sentimiento patriótico.', 
NULL, NULL, NULL, 
'¿Qué característica principal tienen los yaravíes de Mariano Melgar?', 
'Combinan elementos indígenas y españoles', 
'Son exclusivamente de temática política', 
'Siguen estrictamente las normas clásicas españolas', 
'Fueron escritos en quechua únicamente', 
'A', 6, 8, 'Literatura: Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Felipe Pardo y Aliaga', 
'Felipe Pardo y Aliaga fue un escritor satírico que criticó la situación política y social del Perú post-independencia. Sus obras, como "El Espejo de mi Tierra", reflejan su visión pesimista sobre la realidad peruana de su época.', 
NULL, NULL, NULL, 
'¿Qué género literario cultivó principalmente Felipe Pardo y Aliaga?', 
'La poesía lírica', 
'El teatro romántico', 
'La sátira y crítica social', 
'La novela histórica', 
'C', 6, 8, 'Literatura: Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Manuel Ascencio Segura', 
'Manuel Ascencio Segura es considerado el padre del teatro costumbrista peruano. Sus obras, como "Ña Catita", retratan con humor las costumbres y vicios de la sociedad limeña de mediados del siglo XIX.', 
NULL, NULL, NULL, 
'¿Qué obra de Manuel Ascencio Segura es considerada fundamental en el teatro costumbrista peruano?', 
'"El Espejo de mi Tierra"', 
'"A mi Hijo"', 
'"Ña Catita"', 
'"Los Funerales de Atahualpa"', 
'C', 6, 8, 'Literatura: Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Temas recurrentes', 
'Los escritores peruanos de la época de la emancipación abordaron diversos temas en sus obras, desde el amor y el desengaño hasta la crítica social y política.', 
NULL, NULL, NULL, 
'¿Qué tema NO fue característico de la literatura peruana de la emancipación?', 
'El amor no correspondido', 
'La crítica a la sociedad post-independencia', 
'La ciencia ficción y futurismo', 
'Las costumbres limeñas', 
'C', 6, 8, 'Literatura: Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Contexto histórico', 
'La literatura peruana de la emancipación se desarrolló en un periodo de transición entre el virreinato y la república, lo que influyó en sus temas y estilos.', 
NULL, NULL, NULL, 
'¿Qué periodo histórico enmarca la literatura peruana de la emancipación?', 
'Siglo XVII, pleno virreinato', 
'Siglo XVIII, reformas borbónicas', 
'Transición del virreinato a la república (finales del XVIII-principios del XIX)', 
'Siglo XX, vanguardias literarias', 
'C', 6, 8, 'Literatura: Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

--Uso de la coma y el punto y coma
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Uso correcto de la coma', 
'La coma es un signo de puntuación que sirve para hacer pausas breves dentro de un enunciado. Se utiliza para separar elementos en una enumeración, aclaraciones, vocativos, y en otros casos específicos.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes oraciones usa correctamente la coma?', 
'Fui al mercado, y compré frutas, verduras, y pan.', 
'Fui al mercado y compré frutas, verduras y pan.', 
'Fui, al mercado y compré frutas verduras y pan.', 
'Fui al mercado y compré frutas verduras, y pan.', 
'B', 6, 8, 'Ortografía: Uso de la coma y el punto y coma'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'La coma en aposiciones', 
'Las aposiciones son construcciones que explican o amplían el significado de un sustantivo, y generalmente van entre comas cuando interrumpen el flujo de la oración.', 
NULL, NULL, NULL, 
'¿Cuál oración usa correctamente las comas en la aposición?', 
'Lima la capital del Perú, fue fundada en 1535.', 
'Lima, la capital del Perú fue fundada en 1535.', 
'Lima, la capital del Perú, fue fundada en 1535.', 
'Lima la capital del Perú fue fundada, en 1535.', 
'C', 6, 8, 'Ortografía: Uso de la coma y el punto y coma'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Punto y coma en enumeraciones', 
'El punto y coma se utiliza para separar elementos de una enumeración cuando estos son complejos o ya contienen comas en su interior.', 
NULL, NULL, NULL, 
'¿Cuál oración utiliza correctamente el punto y coma?', 
'Viajaremos a Arequipa, la ciudad blanca; Cusco, la capital imperial; y Trujillo, la ciudad de la eterna primavera.', 
'Viajaremos a Arequipa, la ciudad blanca, Cusco, la capital imperial, y Trujillo, la ciudad de la eterna primavera.', 
'Viajaremos a Arequipa; la ciudad blanca, Cusco; la capital imperial, y Trujillo; la ciudad de la eterna primavera.', 
'Viajaremos a Arequipa la ciudad blanca; Cusco la capital imperial; y Trujillo la ciudad de la eterna primavera.', 
'A', 6, 8, 'Ortografía: Uso de la coma y el punto y coma'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Coma en oraciones compuestas', 
'En las oraciones compuestas, la coma puede usarse para separar proposiciones, especialmente cuando la primera es muy larga o cuando se quiere enfatizar una pausa.', 
NULL, NULL, NULL, 
'¿Cuál oración usa correctamente la coma en una oración compuesta?', 
'Aunque estaba cansado decidió terminar su tarea.', 
'Aunque estaba cansado, decidió terminar su tarea.', 
'Aunque, estaba cansado decidió terminar su tarea.', 
'Aunque estaba cansado decidió, terminar su tarea.', 
'B', 6, 8, 'Ortografía: Uso de la coma y el punto y coma'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Punto y coma vs coma', 
'El punto y coma tiene un valor intermedio entre la coma y el punto, y se usa para relacionar oraciones que tienen cierta conexión semántica.', 
NULL, NULL, NULL, 
'¿En cuál caso es más apropiado usar punto y coma que coma?', 
'Para separar elementos simples en una lista', 
'Para separar oraciones muy relacionadas entre sí', 
'Después de un vocativo', 
'Antes de una conjunción copulativa', 
'B', 6, 8, 'Ortografía: Uso de la coma y el punto y coma'),

--El pronombre y el determinante
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Identificando pronombres', 
'Los pronombres son palabras que sustituyen al sustantivo y pueden desempeñar las mismas funciones que este en la oración.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes palabras es un pronombre?', 
'Rápido', 
'Él', 
'Libro', 
'Corriendo', 
'B', 6, 8, 'Gramática: El pronombre y el determinante'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Tipos de determinantes', 
'Los determinantes son palabras que acompañan al sustantivo para concretar su significado, indicando cantidad, posesión, proximidad, etc.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es un tipo de determinante?', 
'Artículo', 
'Demostrativo', 
'Posesivo', 
'Adverbio', 
'D', 6, 8, 'Gramática: El pronombre y el determinante'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Pronombres personales', 
'Los pronombres personales son aquellos que se refieren a las personas gramaticales: quien habla, con quien se habla o de quien se habla.', 
NULL, NULL, NULL, 
'¿Cuál de estos conjuntos contiene solo pronombres personales?', 
'Yo, tú, él, nosotros', 
'Mío, tuyo, suyo, nuestro', 
'Este, ese, aquel', 
'Quien, cual, que', 
'A', 6, 8, 'Gramática: El pronombre y el determinante'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Determinantes posesivos', 
'Los determinantes posesivos indican pertenencia o posesión y siempre acompañan a un sustantivo.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes oraciones contiene un determinante posesivo?', 
'Ese libro es interesante.', 
'Mi libro es interesante.', 
'El libro es interesante.', 
'Algún libro es interesante.', 
'B', 6, 8, 'Gramática: El pronombre y el determinante'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Diferencias clave', 
'Aunque pronombres y determinantes pueden parecerse, su función en la oración es diferente: los determinantes acompañan al sustantivo, los pronombres lo sustituyen.', 
NULL, NULL, NULL, 
'¿Cuál es la principal diferencia entre un pronombre y un determinante?', 
'Los pronombres siempre van antes del verbo', 
'Los determinantes sustituyen al sustantivo', 
'Los pronombres sustituyen al sustantivo, los determinantes lo acompañan', 
'Los determinantes solo pueden ser personales', 
'C', 6, 8, 'Gramática: El pronombre y el determinante'),

--Uso de conectores discursivos
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Conectores de adición', 
'Los conectores discursivos son palabras o expresiones que relacionan las partes de un texto, dando cohesión y claridad. Los conectores de adición suman ideas.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes es un conector de adición?', 
'Pero', 
'Además', 
'Aunque', 
'Porque', 
'B', 6, 8, 'Comunicación escrita: Uso de conectores discursivos'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Conectores de contraste', 
'Los conectores de contraste u oposición establecen una relación de diferencia o contradicción entre las ideas que unen.', 
NULL, NULL, NULL, 
'¿Cuál oración usa correctamente un conector de contraste?', 
'Estudié mucho, por tanto saqué buena nota.', 
'Estudié mucho, sin embargo no aprobé el examen.', 
'Estudié mucho, es decir comprendí el tema.', 
'Estudié mucho, además repasé los apuntes.', 
'B', 6, 8, 'Comunicación escrita: Uso de conectores discursivos'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Conectores de causa', 
'Los conectores causales expresan la razón o motivo de lo expresado en la oración principal.', 
NULL, NULL, NULL, 
'¿Cuál de estos conectores indica causa?', 
'En consecuencia', 
'Por lo tanto', 
'Debido a', 
'No obstante', 
'C', 6, 8, 'Comunicación escrita: Uso de conectores discursivos'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Conectores de orden', 
'Los conectores de orden ayudan a estructurar el discurso, indicando secuencia temporal o enumeración de ideas.', 
NULL, NULL, NULL, 
'¿Cuál de estos NO es un conector de orden?', 
'En primer lugar', 
'Finalmente', 
'Por un lado', 
'Es decir', 
'D', 6, 8, 'Comunicación escrita: Uso de conectores discursivos'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Selección adecuada', 
'Elegir el conector adecuado es esencial para que el texto sea coherente y transmita claramente las relaciones entre las ideas.', 
NULL, NULL, NULL, 
'¿Qué conector completaría mejor esta oración? "Quería salir a jugar, ______ empezó a llover."', 
'además', 
'porque', 
'pero', 
'es decir', 
'C', 6, 8, 'Comunicación escrita: Uso de conectores discursivos'),

--Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Autoría de los Comentarios', 
'Los "Comentarios Reales de los Incas" es una obra escrita por el Inca Garcilaso de la Vega, mestizo peruano que combinó en su escritura la tradición indígena y la cultura europea.', 
NULL, NULL, NULL, 
'¿Quién fue el autor de los "Comentarios Reales de los Incas"?', 
'Felipe Guamán Poma de Ayala', 
'El Inca Garcilaso de la Vega', 
'Bartolomé de las Casas', 
'Francisco de Quevedo', 
'B', 6, 8, 'Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Estructura de la obra', 
'Los "Comentarios Reales" están divididos en dos partes: la primera trata sobre la historia del Imperio Inca y la segunda sobre la conquista española.', 
NULL, NULL, NULL, 
'¿Qué tema aborda la primera parte de los "Comentarios Reales"?', 
'La conquista española del Perú', 
'La historia del Imperio Inca', 
'La vida en la España del siglo XVI', 
'Las guerras civiles entre los conquistadores', 
'B', 6, 8, 'Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Perspectiva del autor', 
'Garcilaso de la Vega, al ser hijo de un conquistador español y una princesa inca, tenía una visión única que combinaba ambas culturas.', 
NULL, NULL, NULL, 
'¿Qué característica especial tenía la perspectiva de Garcilaso de la Vega?', 
'Era completamente indígena', 
'Era completamente española', 
'Combinaba las visiones indígena y española', 
'Criticaba ambas culturas por igual', 
'C', 6, 8, 'Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Valor histórico', 
'Los "Comentarios Reales" son considerados una fuente importante para el estudio del Imperio Inca, aunque deben leerse considerando el contexto del autor.', 
NULL, NULL, NULL, 
'¿Por qué los "Comentarios Reales" son una fuente valiosa?', 
'Porque es la única obra que habla de los incas', 
'Porque ofrece una visión idealizada sin crítica', 
'Porque combina tradición oral inca con crónicas españolas', 
'Porque fue escrita completamente en quechua', 
'C', 6, 8, 'Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Legado cultural', 
'La obra de Garcilaso de la Vega es fundamental en la literatura peruana y representa el mestizaje cultural característico de América.', 
NULL, NULL, NULL, 
'¿Qué representa Garcilaso de la Vega en la literatura hispanoamericana?', 
'La pureza de la cultura española', 
'El rechazo a la cultura indígena', 
'El mestizaje cultural', 
'La superioridad europea', 
'C', 6, 8, 'Plan lector: Los comentarios reales de los incas - Garcilaso de la Vega');

-- Preguntas sobre Literatura peruana de la emancipación
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', null, 'Mariano Melgar y sus yaravíes', 
'Mariano Melgar, destacado poeta peruano del periodo de la emancipación, es conocido por adaptar una forma poética tradicional a sus creaciones literarias. Sus obras reflejan el sentimiento romántico y el amor no correspondido, siendo influenciado por su trágica historia personal.',
null, null, null, 
'¿Qué forma poética adaptó Mariano Melgar en sus creaciones literarias?',
'Soneto', 'Yaraví', 'Oda', 'Elegía', 'B', 6, 8, 'Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 2
('COMUNICACIÓN', null, 'Felipe Pardo y Aliaga', 
'Felipe Pardo y Aliaga fue un escritor peruano conocido por su crítica social y política a través de la sátira. Sus obras reflejan las costumbres y problemas de la sociedad limeña de su época, utilizando un estilo mordaz y agudo.',
null, null, null, 
'¿Qué género literario cultivó principalmente Felipe Pardo y Aliaga para sus críticas sociales?',
'Novela histórica', 'Sátira', 'Poesía lírica', 'Drama romántico', 'B', 6, 8, 'Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 3
('COMUNICACIÓN', null, 'Manuel Ascencio Segura', 
'Manuel Ascencio Segura es considerado el fundador del teatro nacional peruano. Sus obras, escritas en pleno siglo XIX, retratan con humor y agudeza las costumbres y vicios de la sociedad limeña de su tiempo.',
null, null, null, 
'¿Cuál de estas obras es la más conocida de Manuel Ascencio Segura?',
'El Caballero Carmelo', 'Ña Catita', 'Los ríos profundos', 'Tradiciones peruanas', 'B', 6, 8, 'Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 4
('COMUNICACIÓN', null, 'Contexto histórico de la literatura de emancipación', 
'La literatura peruana del periodo de la emancipación se desarrolló en un contexto de cambios políticos y sociales, donde los escritores reflejaban tanto los ideales independentistas como las costumbres de la sociedad colonial que estaba desapareciendo.',
null, null, null, 
'¿Qué periodo histórico marcó la literatura de Mariano Melgar, Felipe Pardo y Aliaga y Manuel Ascencio Segura?',
'La conquista española', 'La emancipación y primeros años de la república', 'El virreinato consolidado', 'El siglo XX', 'B', 6, 8, 'Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Pregunta 5
('COMUNICACIÓN', null, 'Temas recurrentes en la literatura de emancipación', 
'Los escritores peruanos del periodo de la emancipación abordaron diversos temas en sus obras, desde el amor y el desengaño hasta la crítica social y política, siempre con un estilo característico de su época.',
null, null, null, 
'¿Qué tema fue recurrente en la poesía de Mariano Melgar?',
'El amor no correspondido', 'La vida campestre', 'Las batallas independentistas', 'La tecnología moderna', 'A', 6, 8, 'Literatura peruana de la emancipación: Mariano Melgar, Felipe Pardo y Aliaga, Manuel Ascencio Segura'),

-- Preguntas sobre Literatura peruana del Romanticismo
('COMUNICACIÓN', null, 'Carlos Augusto Salaverry', 
'Carlos Augusto Salaverry fue uno de los principales poetas del Romanticismo peruano, conocido por sus versos cargados de emotividad y melancolía. Su obra poética refleja los ideales románticos de libertad, individualismo y exaltación de los sentimientos.',
null, null, null, 
'¿Qué característica principal define la poesía de Carlos Augusto Salaverry?',
'El humor satírico', 'La emotividad y melancolía', 'La descripción objetiva de la realidad', 'El estilo barroco complejo', 'B', 6, 8, 'Literatura peruana del Romanticismo: Carlos Augusto Salaverry y Ricardo Palma'),

('COMUNICACIÓN', null, 'Ricardo Palma y las Tradiciones', 
'Ricardo Palma es el escritor peruano más conocido del Romanticismo, creador del género literario llamado "tradiciones". Estas obras combinan historia, leyenda y ficción, escritas con un estilo ameno y humorístico que retrata la vida colonial.',
null, null, null, 
'¿Qué género literario creó Ricardo Palma?',
'La novela realista', 'Las tradiciones', 'El ensayo filosófico', 'El teatro costumbrista', 'B', 6, 8, 'Literatura peruana del Romanticismo: Carlos Augusto Salaverry y Ricardo Palma'),

('COMUNICACIÓN', null, 'Características del Romanticismo peruano', 
'El Romanticismo peruano se caracterizó por la exaltación de los sentimientos, la libertad creativa y el interés por lo nacional y popular. Los escritores de este movimiento buscaban expresar su subjetividad y emociones más íntimas.',
null, null, null, 
'¿Cuál de estas NO es una característica del Romanticismo peruano?',
'Exaltación de los sentimientos', 'Interés por lo nacional y popular', 'Rigor científico y objetividad', 'Libertad creativa e individualismo', 'C', 6, 8, 'Literatura peruana del Romanticismo: Carlos Augusto Salaverry y Ricardo Palma'),

('COMUNICACIÓN', null, 'Obra de Ricardo Palma', 
'Ricardo Palma escribió numerosas "tradiciones" que recrean episodios históricos o legendarios del Perú, especialmente del periodo virreinal, con un estilo lleno de gracejo y picardía característico del escritor.',
null, null, null, 
'¿Cuál es la obra más famosa de Ricardo Palma?',
'Los Heraldos Negros', 'Tradiciones Peruanas', 'El Caballero Carmelo', 'Paco Yunque', 'B', 6, 8, 'Literatura peruana del Romanticismo: Carlos Augusto Salaverry y Ricardo Palma'),

('COMUNICACIÓN', null, 'Contexto histórico del Romanticismo peruano', 
'El Romanticismo en el Perú se desarrolló durante el siglo XIX, en un periodo de formación de la identidad nacional, luego de la independencia y durante las primeras décadas de la república.',
null, null, null, 
'¿En qué siglo se desarrolló principalmente el Romanticismo peruano?',
'Siglo XVI', 'Siglo XVII', 'Siglo XVIII', 'Siglo XIX', 'D', 6, 8, 'Literatura peruana del Romanticismo: Carlos Augusto Salaverry y Ricardo Palma'),

-- Preguntas sobre Ortografía: Uso del punto
('COMUNICACIÓN', null, 'Uso del punto seguido', 
'El punto seguido se utiliza para separar oraciones dentro de un mismo párrafo. Indica una pausa menor que el punto aparte y mayor que la coma. Es fundamental para organizar las ideas en un texto escrito.',
null, null, null, 
'¿Cuál de estas oraciones usa correctamente el punto seguido?',
'Fui al mercado. Compré frutas y verduras.', 'Fui al mercado, compré frutas y verduras', 'Fui al mercado; compré frutas y verduras.', 'Fui al mercado compré frutas y verduras.', 'A', 6, 8, 'Ortografía: Uso del punto seguido, punto aparte, puntos suspensivos y dos puntos'),

('COMUNICACIÓN', null, 'Punto aparte', 
'El punto aparte se utiliza para separar párrafos diferentes, cada uno con ideas distintas pero relacionadas con el tema general del texto. Marca un cambio de idea más significativo que el punto seguido.',
null, null, null, 
'¿En qué situación se debe usar punto aparte?',
'Al cambiar de idea dentro del mismo párrafo', 'Al terminar una oración y continuar con otra relacionada', 'Al comenzar un nuevo párrafo con idea diferente', 'Al hacer una enumeración de elementos', 'C', 6, 8, 'Ortografía: Uso del punto seguido, punto aparte, puntos suspensivos y dos puntos'),

('COMUNICACIÓN', null, 'Puntos suspensivos', 
'Los puntos suspensivos (...) se usan para indicar una interrupción voluntaria del discurso, dejar algo incompleto o en suspenso, o para sugerir matices de duda, temor o ironía en lo que se está escribiendo.',
null, null, null, 
'¿Cuál es el uso correcto de los puntos suspensivos?',
'Para terminar definitivamente una idea', 'Para indicar que algo queda incompleto o en suspenso', 'Para separar oraciones completas', 'Para reemplazar siempre a la coma', 'B', 6, 8, 'Ortografía: Uso del punto seguido, punto aparte, puntos suspensivos y dos puntos'),

('COMUNICACIÓN', null, 'Uso de los dos puntos', 
'Los dos puntos (:) se utilizan para introducir una cita, una enumeración, una explicación o una consecuencia lógica de lo que se ha expresado anteriormente. También se usan después del encabezado de una carta.',
null, null, null, 
'¿En cuál de estas oraciones se usan correctamente los dos puntos?',
'Las capitales son: Lima, Santiago, Bogotá y Buenos Aires.', 'Las capitales son. Lima, Santiago, Bogotá y Buenos Aires', 'Las capitales son; Lima, Santiago, Bogotá y Buenos Aires.', 'Las capitales son, Lima, Santiago, Bogotá y Buenos Aires.', 'A', 6, 8, 'Ortografía: Uso del punto seguido, punto aparte, puntos suspensivos y dos puntos'),

('COMUNICACIÓN', null, 'Diferencia entre signos de puntuación', 
'Cada signo de puntuación tiene una función específica en el texto escrito. El punto seguido, punto aparte, puntos suspensivos y dos puntos cumplen roles distintos que ayudan a dar claridad y coherencia al discurso.',
null, null, null, 
'¿Qué signo de puntuación se usa para introducir una enumeración?',
'Punto y coma', 'Puntos suspensivos', 'Dos puntos', 'Coma', 'C', 6, 8, 'Ortografía: Uso del punto seguido, punto aparte, puntos suspensivos y dos puntos'),

-- Preguntas sobre Gramática: El verbo
('COMUNICACIÓN', null, 'El verbo: definición', 
'El verbo es la parte de la oración que expresa acción, proceso, estado o existencia. Es el núcleo del predicado y concuerda en persona y número con el sujeto de la oración. Los verbos se conjugan en distintos tiempos, modos y aspectos.',
null, null, null, 
'¿Qué expresa principalmente un verbo en una oración?',
'Características del sujeto', 'Acción, proceso, estado o existencia', 'Lugar donde ocurre la acción', 'Cantidad o número', 'B', 6, 8, 'Gramática: El verbo'),

('COMUNICACIÓN', null, 'Tiempos verbales', 
'Los tiempos verbales indican el momento en que ocurre la acción: presente (ahora), pasado (antes) o futuro (después). Cada tiempo tiene formas simples y compuestas que expresan diferentes matices temporales.',
null, null, null, 
'¿Cuál de estos NO es un tiempo verbal?',
'Presente', 'Copretérito', 'Adjetivo', 'Futuro imperfecto', 'C', 6, 8, 'Gramática: El verbo'),

('COMUNICACIÓN', null, 'Modos verbales', 
'Los modos verbales expresan la actitud del hablante hacia lo que dice. Los principales modos son: indicativo (hechos reales), subjuntivo (deseos, posibilidades) e imperativo (órdenes o ruegos).',
null, null, null, 
'¿Qué modo verbal se usa para expresar órdenes o ruegos?',
'Indicativo', 'Subjuntivo', 'Imperativo', 'Condicional', 'C', 6, 8, 'Gramática: El verbo'),

('COMUNICACIÓN', null, 'Verbos regulares e irregulares', 
'Los verbos regulares son aquellos que mantienen su raíz y siguen las conjugaciones modelo (amar, temer, partir). Los irregulares cambian su raíz o desinencias en alguna de sus formas conjugadas (tener → tengo, poder → puedo).',
null, null, null, 
'¿Cuál de estos verbos es irregular?',
'Amar', 'Temer', 'Partir', 'Tener', 'D', 6, 8, 'Gramática: El verbo'),

('COMUNICACIÓN', null, 'Conjugación verbal', 
'Conjugar un verbo es enunciar ordenadamente todas sus formas según los accidentes gramaticales: persona, número, tiempo, modo y voz. En español hay tres conjugaciones según la terminación del infinitivo: -ar, -er, -ir.',
null, null, null, 
'¿A qué conjugación pertenece el verbo "vivir"?',
'Primera conjugación (-ar)', 'Segunda conjugación (-er)', 'Tercera conjugación (-ir)', 'No pertenece a ninguna conjugación regular', 'C', 6, 8, 'Gramática: El verbo'),

-- Preguntas sobre Comunicación escrita: El artículo de opinión
('COMUNICACIÓN', null, 'Definición de artículo de opinión', 
'El artículo de opinión es un texto periodístico que expresa el pensamiento o punto de vista particular de su autor sobre un tema de actualidad o interés general. No pretende ser objetivo, sino mostrar una perspectiva personal argumentada.',
null, null, null, 
'¿Qué caracteriza principalmente a un artículo de opinión?',
'Presenta información objetiva y neutral', 'Expresa el punto de vista personal del autor', 'Relata hechos noticiosos sin análisis', 'Contiene únicamente datos estadísticos', 'B', 6, 8, 'Comunicación escrita: El artículo de opinión. Concepto y estructura'),

('COMUNICACIÓN', null, 'Estructura del artículo de opinión', 
'Un artículo de opinión suele tener una estructura clara: introducción (presenta el tema), desarrollo (argumentos a favor de la postura) y conclusión (síntesis y cierre). El autor debe persuadir al lector con sus ideas.',
null, null, null, 
'¿Qué elemento NO forma parte de la estructura básica de un artículo de opinión?',
'Introducción', 'Desarrollo argumentativo', 'Conclusión', 'Listado de fuentes bibliográficas', 'D', 6, 8, 'Comunicación escrita: El artículo de opinión. Concepto y estructura'),

('COMUNICACIÓN', null, 'Lenguaje en el artículo de opinión', 
'El lenguaje en un artículo de opinión es subjetivo pero culto, con argumentos sólidos y estilo persuasivo. El autor puede usar recursos retóricos como metáforas, ironía o preguntas retóricas para reforzar su postura.',
null, null, null, 
'¿Qué tipo de lenguaje predomina en un artículo de opinión?',
'Objetivo y técnico', 'Subjetivo y persuasivo', 'Coloquial y familiar', 'Poético y rimado', 'B', 6, 8, 'Comunicación escrita: El artículo de opinión. Concepto y estructura'),

('COMUNICACIÓN', null, 'Diferencias con otros géneros periodísticos', 
'A diferencia de la noticia (objetiva) o el reportaje (profundiza en hechos), el artículo de opinión busca convencer al lector de una postura particular. El autor firma el texto y asume responsabilidad por sus ideas.',
null, null, null, 
'¿En qué se diferencia principalmente un artículo de opinión de una noticia?',
'La noticia es objetiva, el artículo de opinión es subjetivo', 'La noticia es más larga que un artículo', 'El artículo de opinión no lleva firma del autor', 'La noticia intenta persuadir al lector', 'A', 6, 8, 'Comunicación escrita: El artículo de opinión. Concepto y estructura'),

('COMUNICACIÓN', null, 'Finalidad del artículo de opinión', 
'El artículo de opinión no solo informa, sino que busca influir en la manera de pensar del lector sobre un tema. Su éxito depende de la capacidad del autor para argumentar coherentemente y con solidez su postura personal.',
null, null, null, 
'¿Cuál es la principal finalidad de un artículo de opinión?',
'Informar objetivamente sobre un hecho', 'Persuadir al lector sobre un punto de vista', 'Entretener con historias ficticias', 'Instruir sobre cómo hacer algo paso a paso', 'B', 6, 8, 'Comunicación escrita: El artículo de opinión. Concepto y estructura');

-- Preguntas para Literatura: Literatura peruana del Realismo
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Figura clave del Realismo', 
 'El Realismo peruano del siglo XIX fue un movimiento literario que buscó retratar la realidad social del país. Entre sus principales exponentes destacan tres autores fundamentales que criticaron las injusticias de su época a través de sus obras.', 
 NULL, NULL, NULL, 
 '¿Cuál de los siguientes autores NO pertenece al Realismo peruano?', 
 'Ricardo Palma', 'Clorinda Matto de Turner', 'Mercedes Cabello de Carbonera', 'Manuel González Prada', 
 'A', 6, 8, 'Literatura: Literatura peruana del Realismo: Manuel González Prada, Clorinda Matto de Turner y Mercedes Cabello de Carbonera'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Obra representativa de Clorinda Matto', 
 'Clorinda Matto de Turner es considerada una de las pioneras de la novela indigenista en el Perú. Su obra más conocida, publicada en 1889, denuncia los abusos contra la población indígena y el clero corrupto.', 
 NULL, NULL, NULL, 
 '¿Cuál es la novela más famosa de Clorinda Matto de Turner?', 
 'Aves sin nido', 'Blanca Sol', 'Herencia', 'Tradiciones peruanas', 
 'A', 6, 8, 'Literatura: Literatura peruana del Realismo: Manuel González Prada, Clorinda Matto de Turner y Mercedes Cabello de Carbonera'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Temas de Mercedes Cabello', 
 'Mercedes Cabello de Carbonera fue una escritora peruana que abordó en sus obras temas como la situación de la mujer en la sociedad y la corrupción moral. Sus novelas son consideradas precursoras del feminismo en el Perú.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas novelas fue escrita por Mercedes Cabello de Carbonera?', 
 'El conspirador', 'Los marañones', 'La quena', 'Ollantay', 
 'A', 6, 8, 'Literatura: Literatura peruana del Realismo: Manuel González Prada, Clorinda Matto de Turner y Mercedes Cabello de Carbonera'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Pensamiento de González Prada', 
 'Manuel González Prada fue un intelectual polifacético: poeta, ensayista y pensador radical. Su discurso "El banquete de los heraldos" marcó un hito en el pensamiento crítico peruano.', 
 NULL, NULL, NULL, 
 '¿Qué caracterizó principalmente el pensamiento de Manuel González Prada?', 
 'Su defensa del conservadurismo', 'Su crítica radical a la oligarquía y al clericalismo', 'Su apoyo incondicional al gobierno de turno', 'Su apego a las tradiciones coloniales', 
 'B', 6, 8, 'Literatura: Literatura peruana del Realismo: Manuel González Prada, Clorinda Matto de Turner y Mercedes Cabello de Carbonera'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Contexto histórico del Realismo', 
 'El Realismo peruano se desarrolló en un contexto de posguerra, después del conflicto con Chile, cuando el país necesitaba reconstruirse no solo materialmente sino también moral e intelectualmente.', 
 NULL, NULL, NULL, 
 '¿En qué período histórico se desarrolló principalmente el Realismo peruano?', 
 'Durante la conquista española', 'En la época del virreinato', 'En la segunda mitad del siglo XIX', 'A principios del siglo XX', 
 'C', 6, 8, 'Literatura: Literatura peruana del Realismo: Manuel González Prada, Clorinda Matto de Turner y Mercedes Cabello de Carbonera'),

-- Preguntas para Ortografía: Normativa para el uso de mayúsculas
('COMUNICACIÓN', NULL, 'Uso de mayúsculas en nombres propios', 
 'El uso correcto de las mayúsculas es fundamental en la escritura formal. Según las normas ortográficas, los nombres propios de personas, lugares e instituciones siempre deben escribirse con mayúscula inicial.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes opciones muestra el uso correcto de mayúsculas en un nombre propio?', 
 'maría fernández', 'María Fernández', 'María fernández', 'MARÍA FERNÁNDEZ', 
 'B', 6, 8, 'Ortografía: Normativa para el uso de mayúsculas'),

('COMUNICACIÓN', NULL, 'Mayúsculas en títulos de obras', 
 'Los títulos de libros, películas, canciones y otras obras creativas siguen reglas específicas para el uso de mayúsculas. Normalmente solo la primera palabra y los nombres propios llevan mayúscula.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta de escribir el título de un libro según las normas ortográficas?', 
 'Cien Años De Soledad', 'Cien años de soledad', 'CIEN AÑOS DE SOLEDAD', 'Cien Años de Soledad', 
 'B', 6, 8, 'Ortografía: Normativa para el uso de mayúsculas'),

('COMUNICACIÓN', NULL, 'Mayúsculas después de punto', 
 'Una de las reglas básicas de la ortografía establece que después de un punto (seguido o aparte) siempre debe usarse mayúscula inicial, ya que marca el inicio de una nueva oración o párrafo.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones cumple correctamente con la norma de mayúsculas después de punto?', 
 'el perro ladra. el gato maúlla.', 'El perro ladra. El gato maúlla.', 'El perro ladra. el gato maúlla.', 'el perro ladra. El gato maúlla.', 
 'B', 6, 8, 'Ortografía: Normativa para el uso de mayúsculas'),

('COMUNICACIÓN', NULL, 'Mayúsculas en nombres geográficos', 
 'Los nombres geográficos como ríos, montañas, ciudades y países siempre deben escribirse con mayúscula inicial. Sin embargo, los sustantivos comunes que los acompañan (río, mar, sierra) solo llevan mayúscula si forman parte del nombre oficial.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta de escribir este nombre geográfico?', 
 'Río amazonas', 'Río Amazonas', 'río Amazonas', 'río amazonas', 
 'B', 6, 8, 'Ortografía: Normativa para el uso de mayúsculas'),

('COMUNICACIÓN', NULL, 'Mayúsculas en festividades', 
 'Los nombres de festividades, ya sean religiosas, civiles o culturales, se escriben con mayúscula inicial en todas sus palabras significativas, excepto en los artículos y preposiciones.', 
 NULL, NULL, NULL, 
 '¿Cuál es la forma correcta de escribir el nombre de esta festividad?', 
 'Día de la independencia', 'Día de la Independencia', 'Día De La Independencia', 'día de la independencia', 
 'B', 6, 8, 'Ortografía: Normativa para el uso de mayúsculas'),

-- Preguntas para Gramática: El adverbio y la conjunción
('COMUNICACIÓN', NULL, 'Identificación de adverbios', 
 'Los adverbios son palabras invariables que modifican verbos, adjetivos u otros adverbios, expresando circunstancias de lugar, tiempo, modo, cantidad, afirmación, negación o duda.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes palabras es un adverbio?', 
 'rápido', 'felicidad', 'ayer', 'correr', 
 'C', 6, 8, 'Gramática: El adverbio y la conjunción'),

('COMUNICACIÓN', NULL, 'Función de las conjunciones', 
 'Las conjunciones son palabras que sirven para relacionar términos u oraciones, estableciendo entre ellos relaciones de coordinación o subordinación.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes palabras es una conjunción?', 
 'casa', 'pero', 'azul', 'corriendo', 
 'B', 6, 8, 'Gramática: El adverbio y la conjunción'),

('COMUNICACIÓN', NULL, 'Adverbios de tiempo', 
 'Los adverbios de tiempo indican cuándo ocurre la acción del verbo y responden a la pregunta "¿cuándo?". Entre ellos encontramos palabras como antes, después, pronto, tarde, siempre, nunca, etc.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones contiene un adverbio de tiempo?', 
 'Ella canta hermosamente', 'Vivo cerca del parque', 'Mañana iremos al cine', 'El libro es muy interesante', 
 'C', 6, 8, 'Gramática: El adverbio y la conjunción'),

('COMUNICACIÓN', NULL, 'Conjunciones coordinantes', 
 'Las conjunciones coordinantes unen elementos del mismo nivel sintáctico. Algunas de las más comunes son "y", "o", "pero", "ni", "mas", "sino".', 
 NULL, NULL, NULL, 
 '¿Cuál de estas oraciones usa correctamente una conjunción coordinante?', 
 'Quiero helado porque hace calor', 'Estudié mucho pero no aprobé', 'Si llueve nos mojaremos', 'Aunque es tarde, iremos', 
 'B', 6, 8, 'Gramática: El adverbio y la conjunción'),

('COMUNICACIÓN', NULL, 'Adverbios de modo', 
 'Los adverbios de modo expresan la manera en que se realiza la acción del verbo y suelen responder a la pregunta "¿cómo?". Muchos de ellos se forman añadiendo el sufijo "-mente" al femenino del adjetivo.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas palabras es un adverbio de modo?', 
 'felizmente', 'casa', 'correr', 'libro', 
 'A', 6, 8, 'Gramática: El adverbio y la conjunción'),

-- Preguntas para Comunicación escrita: El artículo de divulgación. Concepto y estructura
('COMUNICACIÓN', NULL, 'Definición de artículo de divulgación', 
 'El artículo de divulgación es un texto periodístico-expositivo cuyo objetivo es informar sobre temas científicos, tecnológicos o culturales de manera accesible para el público general.', 
 NULL, NULL, NULL, 
 '¿Cuál es la principal característica de un artículo de divulgación?', 
 'Presentar información técnica de manera compleja', 'Exponer temas especializados de forma accesible', 'Promover productos comerciales', 'Expresar opiniones personales', 
 'B', 6, 8, 'Comunicación escrita: El artículo de divulgación. Concepto y estructura'),

('COMUNICACIÓN', NULL, 'Estructura del artículo', 
 'Un artículo de divulgación típicamente sigue una estructura que incluye título, introducción, desarrollo y conclusión, adaptando el lenguaje técnico a un nivel comprensible para el lector promedio.', 
 NULL, NULL, NULL, 
 '¿Qué elemento NO forma parte de la estructura básica de un artículo de divulgación?', 
 'Introducción', 'Desarrollo', 'Bibliografía académica extensa', 'Conclusión', 
 'C', 6, 8, 'Comunicación escrita: El artículo de divulgación. Concepto y estructura'),

('COMUNICACIÓN', NULL, 'Lenguaje en la divulgación', 
 'El lenguaje utilizado en los artículos de divulgación debe ser claro y preciso, evitando tecnicismos innecesarios o explicándolos cuando sea imprescindible usarlos.', 
 NULL, NULL, NULL, 
 '¿Cuál es la característica principal del lenguaje en un artículo de divulgación?', 
 'Uso exclusivo de términos técnicos', 'Lenguaje claro y accesible', 'Redundancia y repetición', 'Frases largas y complejas', 
 'B', 6, 8, 'Comunicación escrita: El artículo de divulgación. Concepto y estructura'),

('COMUNICACIÓN', NULL, 'Función del título', 
 'En un artículo de divulgación, el título cumple la función de captar la atención del lector y dar una idea clara del contenido del texto, sin ser demasiado técnico ni engañoso.', 
 NULL, NULL, NULL, 
 '¿Qué característica debe tener un buen título en un artículo de divulgación?', 
 'Ser extremadamente técnico', 'Ser vago y misterioso', 'Reflejar el contenido y ser atractivo', 'Ser muy largo y detallado', 
 'C', 6, 8, 'Comunicación escrita: El artículo de divulgación. Concepto y estructura'),

('COMUNICACIÓN', NULL, 'Finalidad de la divulgación', 
 'La divulgación científica y cultural busca acercar el conocimiento especializado al público general, promoviendo así la democratización del saber y el pensamiento crítico.', 
 NULL, NULL, NULL, 
 '¿Cuál es la principal finalidad de un artículo de divulgación?', 
 'Demostrar el conocimiento del autor', 'Hacer accesible información especializada', 'Promover una ideología política', 'Vender productos relacionados', 
 'B', 6, 8, 'Comunicación escrita: El artículo de divulgación. Concepto y estructura'),

-- Preguntas para Plan lector: Tradiciones peruanas - Ricardo Palma
('COMUNICACIÓN', NULL, 'Género de las Tradiciones Peruanas', 
 'Ricardo Palma creó un género literario único llamado "tradiciones", que combinan elementos históricos con ficción, escritas con un estilo ameno y lleno de ironía y gracia criolla.', 
 NULL, NULL, NULL, 
 '¿Qué género literario creó Ricardo Palma con sus Tradiciones Peruanas?', 
 'Novela histórica', 'Cuento fantástico', 'Tradición', 'Ensayo filosófico', 
 'C', 6, 8, 'Plan lector: Tradiciones peruanas - Ricardo Palma'),

('COMUNICACIÓN', NULL, 'Característica del estilo de Palma', 
 'Las Tradiciones Peruanas de Ricardo Palma se caracterizan por su lenguaje colorido, su humor, ironía y la mezcla de datos históricos con elementos ficticios y legendarios.', 
 NULL, NULL, NULL, 
 '¿Cuál es una característica distintiva del estilo de Ricardo Palma?', 
 'Lenguaje técnico y formal', 'Uso constante de metáforas complejas', 'Mezcla de historia y ficción con humor', 'Abundancia de descripciones naturales', 
 'C', 6, 8, 'Plan lector: Tradiciones peruanas - Ricardo Palma'),

('COMUNICACIÓN', NULL, 'Época retratada', 
 'Las Tradiciones Peruanas retratan principalmente la vida durante el virreinato del Perú, aunque también abordan algunos episodios de la época prehispánica y de los primeros años de la república.', 
 NULL, NULL, NULL, 
 '¿Qué período histórico retratan principalmente las Tradiciones Peruanas?', 
 'Época preincaica', 'Virreinato del Perú', 'Guerra con Chile', 'Siglo XX', 
 'B', 6, 8, 'Plan lector: Tradiciones peruanas - Ricardo Palma'),

('COMUNICACIÓN', NULL, 'Personajes típicos', 
 'En las Tradiciones Peruanas aparecen diversos personajes característicos de la sociedad colonial: virreyes, monjas, frailes, comerciantes, esclavos y otros que reflejan la diversidad de la época.', 
 NULL, NULL, NULL, 
 '¿Qué tipo de personajes son comunes en las Tradiciones Peruanas?', 
 'Astronautas y científicos', 'Personajes de la sociedad colonial', 'Animales antropomórficos', 'Seres mitológicos griegos', 
 'B', 6, 8, 'Plan lector: Tradiciones peruanas - Ricardo Palma'),

('COMUNICACIÓN', NULL, 'Valor de las Tradiciones', 
 'Además de su valor literario, las Tradiciones Peruanas tienen importancia histórica y cultural, pues preservan costumbres, leyendas y formas de hablar que de otro modo se habrían perdido.', 
 NULL, NULL, NULL, 
 '¿Qué valor adicional tienen las Tradiciones Peruanas además del literario?', 
 'Promover el turismo moderno', 'Preservar costumbres y lenguaje históricos', 'Enseñar matemáticas avanzadas', 'Criticar gobiernos contemporáneos', 
 'B', 6, 8, 'Plan lector: Tradiciones peruanas - Ricardo Palma');

-- Preguntas sobre Literatura peruana del Modernismo y Posmodernismo
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Características del Modernismo', 
 'El Modernismo fue un movimiento literario que surgió a finales del siglo XIX en Hispanoamérica. Este movimiento se caracterizó por su esteticismo, el uso de imágenes exóticas y la musicalidad del lenguaje. José Santos Chocano fue uno de sus principales exponentes en Perú.', 
 NULL, NULL, NULL, 
 '¿Cuál de las siguientes es una característica principal del Modernismo peruano representado por José Santos Chocano?', 
 'Uso de lenguaje coloquial y temas cotidianos', 
 'Preferencia por temas históricos y nacionalistas con lenguaje grandilocuente', 
 'Enfoque en la crítica social directa', 
 'Abundante uso de tecnicismos científicos', 
 'B', 6, 8, 'Literatura: Literatura peruana del Modernismo y Posmodernismo: José Santos Chocano, Abraham Valdelomar y José María Eguren'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Abraham Valdelomar y el cuento', 
 'Abraham Valdelomar, conocido como "el Conde de Lemos", fue un escritor peruano que destacó en el cuento y la narrativa breve. Su obra "El Caballero Carmelo" es considerada un clásico de la literatura peruana y muestra características del posmodernismo.', 
 NULL, NULL, NULL, 
 '¿Qué elemento caracteriza principalmente el estilo de Valdelomar en "El Caballero Carmelo"?', 
 'La descripción detallada de paisajes urbanos', 
 'La combinación de nostalgia, ternura y realismo en ambientes rurales', 
 'El uso de un lenguaje altamente técnico', 
 'La presentación de personajes totalmente ficticios', 
 'B', 6, 8, 'Literatura: Literatura peruana del Modernismo y Posmodernismo: José Santos Chocano, Abraham Valdelomar y José María Eguren'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'José María Eguren y la poesía', 
 'José María Eguren es considerado uno de los poetas más originales del posmodernismo peruano. Su obra se caracteriza por un lenguaje simbólico, onírico y muy personal, alejado de los cánones tradicionales.', 
 NULL, NULL, NULL, 
 '¿Qué tema predomina en la poesía de José María Eguren?', 
 'La política y los problemas sociales', 
 'El mundo infantil, lo misterioso y lo fantástico', 
 'La vida cotidiana en la ciudad', 
 'Los avances tecnológicos de su época', 
 'B', 6, 8, 'Literatura: Literatura peruana del Modernismo y Posmodernismo: José Santos Chocano, Abraham Valdelomar y José María Eguren'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Diferencias entre Modernismo y Posmodernismo', 
 'Aunque el Modernismo y Posmodernismo son movimientos cercanos en el tiempo, presentan diferencias significativas en sus planteamientos estéticos y temáticos.', 
 NULL, NULL, NULL, 
 '¿Cuál es una diferencia clave entre el Modernismo y el Posmodernismo en la literatura peruana?', 
 'El Modernismo rechazaba la musicalidad del verso', 
 'El Posmodernismo mostró mayor interés por lo cotidiano y lo íntimo', 
 'El Modernismo se centró exclusivamente en temas políticos', 
 'El Posmodernismo evitó cualquier referencia a la naturaleza', 
 'B', 6, 8, 'Literatura: Literatura peruana del Modernismo y Posmodernismo: José Santos Chocano, Abraham Valdelomar y José María Eguren'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Obra representativa de Chocano', 
 'José Santos Chocano, conocido como "el Cantor de América", fue un poeta peruano cuya obra se enmarca dentro del Modernismo pero con fuertes rasgos personales y nacionalistas.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas obras es la más representativa de José Santos Chocano?', 
 'Trilce', 
 'Alma América', 
 'Los Heraldos Negros', 
 'La casa de cartón', 
 'B', 6, 8, 'Literatura: Literatura peruana del Modernismo y Posmodernismo: José Santos Chocano, Abraham Valdelomar y José María Eguren'),

-- Preguntas sobre Gramática: La estructura del sujeto
('COMUNICACIÓN', NULL, 'Identificación del núcleo del sujeto', 
 'En el análisis sintáctico, identificar correctamente el núcleo del sujeto es fundamental para comprender la estructura de la oración. El núcleo es la palabra más importante del sujeto, generalmente un sustantivo o pronombre.', 
 NULL, NULL, NULL, 
 'En la oración "Los estudiantes aplicados recibieron sus diplomas", ¿cuál es el núcleo del sujeto?', 
 'Los', 
 'estudiantes', 
 'aplicados', 
 'recibieron', 
 'B', 6, 8, 'Gramática: La estructura del sujeto'),

('COMUNICACIÓN', NULL, 'Tipos de sujeto', 
 'En gramática, el sujeto puede ser de diferentes tipos según su estructura y composición. Reconocer estos tipos ayuda a un mejor análisis sintáctico.', 
 NULL, NULL, NULL, 
 '¿Cómo se clasifica el sujeto en la oración "Correr por las mañanas es saludable"?', 
 'Sujeto expreso simple', 
 'Sujeto tácito', 
 'Sujeto expreso compuesto', 
 'Sujeto impersonal', 
 'A', 6, 8, 'Gramática: La estructura del sujeto'),

('COMUNICACIÓN', NULL, 'Concordancia sujeto-predicado', 
 'La concordancia entre sujeto y predicado es una regla fundamental en la construcción de oraciones gramaticalmente correctas.', 
 NULL, NULL, NULL, 
 'En la oración "El libro y el cuaderno ___ en la mesa", ¿qué forma verbal completa correctamente la oración?', 
 'está', 
 'están', 
 'estamos', 
 'estás', 
 'B', 6, 8, 'Gramática: La estructura del sujeto'),

('COMUNICACIÓN', NULL, 'Sujeto tácito', 
 'El sujeto tácito o elíptico es aquel que no aparece expresamente en la oración pero que se puede deducir del contexto o de la terminación verbal.', 
 NULL, NULL, NULL, 
 'En la oración "Estudiamos para el examen de comunicación", ¿cuál es el sujeto tácito?', 
 'Los profesores', 
 'Nosotros', 
 'Ellos', 
 'Tú', 
 'B', 6, 8, 'Gramática: La estructura del sujeto'),

('COMUNICACIÓN', NULL, 'Modificadores del sujeto', 
 'El sujeto puede estar acompañado por diferentes modificadores que aportan información adicional sobre el núcleo.', 
 NULL, NULL, NULL, 
 'En la oración "La hermosa casa de campo fue vendida", ¿cuál es el modificador directo del sujeto?', 
 'La', 
 'hermosa', 
 'casa', 
 'de campo', 
 'B', 6, 8, 'Gramática: La estructura del sujeto'),

-- Preguntas sobre Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple
('COMUNICACIÓN', NULL, 'Comprensión de texto', 
 'Lee el siguiente texto: "La lectura es una herramienta fundamental para el desarrollo intelectual. A través de ella, no solo adquirimos conocimientos, sino que también desarrollamos nuestra capacidad crítica y nuestra imaginación. En la era digital, aunque han surgido nuevas formas de comunicación, la lectura sigue siendo insustituible."', 
 NULL, NULL, NULL, 
 'Según el texto, ¿cuál es la importancia principal de la lectura?', 
 'Es la única forma de aprender cosas nuevas', 
 'Permite el desarrollo intelectual, la capacidad crítica y la imaginación', 
 'Es más importante que cualquier otra forma de comunicación', 
 'Debe reemplazarse por las nuevas tecnologías', 
 'B', 6, 8, 'Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple'),

('COMUNICACIÓN', NULL, 'Comprensión de texto', 
 'Lee el siguiente texto: "El cambio climático es uno de los mayores desafíos de nuestro tiempo. Sus efectos se observan en el aumento de temperaturas, el derretimiento de glaciares y la mayor frecuencia de fenómenos meteorológicos extremos. Combatirlo requiere la participación de todos los países y sectores de la sociedad."', 
 NULL, NULL, NULL, 
 '¿Qué se infiere del texto sobre el cambio climático?', 
 'Es un problema que solo afecta a ciertas regiones', 
 'Sus consecuencias son diversas y preocupantes', 
 'Ya no hay nada que hacer para detenerlo', 
 'Solo los gobiernos pueden solucionarlo', 
 'B', 6, 8, 'Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple'),

('COMUNICACIÓN', NULL, 'Comprensión de texto', 
 'Lee el siguiente texto: "Las redes sociales han revolucionado la forma en que nos comunicamos. Permiten conectar personas de diferentes partes del mundo en tiempo real, pero también plantean desafíos como la privacidad de datos y la difusión de información falsa. Su uso responsable es fundamental."', 
 NULL, NULL, NULL, 
 '¿Qué idea principal expresa el texto?', 
 'Las redes sociales solo tienen aspectos positivos', 
 'Las redes sociales tienen ventajas pero también riesgos que requieren uso responsable', 
 'Debemos evitar completamente el uso de redes sociales', 
 'Las redes sociales son la mejor forma de comunicación', 
 'B', 6, 8, 'Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple'),

('COMUNICACIÓN', NULL, 'Comprensión de texto', 
 'Lee el siguiente texto: "El deporte no solo es beneficioso para la salud física, sino también para la mental. Practicarlo regularmente reduce el estrés, mejora el estado de ánimo y fomenta valores como la disciplina y el trabajo en equipo. Por ello, debería ser parte fundamental de la educación."', 
 NULL, NULL, NULL, 
 'Según el texto, ¿por qué es importante incluir el deporte en la educación?', 
 'Porque garantiza que todos serán atletas profesionales', 
 'Por sus múltiples beneficios físicos, mentales y en la formación de valores', 
 'Porque es más importante que las asignaturas académicas', 
 'Porque evita que los jóvenes usen tecnología', 
 'B', 6, 8, 'Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple'),

('COMUNICACIÓN', NULL, 'Comprensión de texto', 
 'Lee el siguiente texto: "La música es un lenguaje universal que trasciende fronteras. A lo largo de la historia, ha sido vehículo de expresión cultural, emocional y hasta política. En la actualidad, con la globalización, los géneros musicales se mezclan creando nuevas formas artísticas."', 
 NULL, NULL, NULL, 
 '¿Qué característica de la música destaca principalmente el texto?', 
 'Su capacidad para unir a las personas más allá de diferencias culturales', 
 'Que solo es importante para los profesionales', 
 'Que debe mantenerse pura sin mezclarse con otros géneros', 
 'Que es menos importante que otras artes', 
 'A', 6, 8, 'Razonamiento verbal: Ejercicios de comprensión de textos, alternativa múltiple'),

-- Preguntas sobre Comunicación escrita: El ensayo argumentativo literario
('COMUNICACIÓN', NULL, 'Características del ensayo', 
 'El ensayo argumentativo literario es un género que combina elementos literarios con la exposición de ideas y argumentos. Permite al autor expresar su punto de vista de manera personal pero fundamentada.', 
 NULL, NULL, NULL, 
 '¿Cuál de estas es una característica esencial del ensayo argumentativo literario?', 
 'Presentar información de manera totalmente objetiva y neutral', 
 'Expresar opiniones personales sustentadas con argumentos', 
 'Seguir una estructura rígida y formal sin variaciones', 
 'Evitar cualquier referencia a obras literarias', 
 'B', 6, 8, 'Comunicación escrita: El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Estructura del ensayo', 
 'Un buen ensayo argumentativo literario suele seguir una estructura básica que facilita la exposición coherente de las ideas.', 
 NULL, NULL, NULL, 
 '¿Cuál es el orden correcto de las partes fundamentales de un ensayo argumentativo?', 
 'Conclusión, desarrollo, introducción', 
 'Introducción, desarrollo, conclusión', 
 'Desarrollo, introducción, conclusión', 
 'Conclusión, introducción, desarrollo', 
 'B', 6, 8, 'Comunicación escrita: El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Tesis en el ensayo', 
 'La tesis es un elemento fundamental en el ensayo argumentativo, pues presenta la postura central que el autor defenderá a lo largo del texto.', 
 NULL, NULL, NULL, 
 '¿Dónde se suele ubicar la tesis en un ensayo argumentativo bien estructurado?', 
 'Al final del desarrollo', 
 'En la conclusión', 
 'En la introducción', 
 'En notas al pie de página', 
 'C', 6, 8, 'Comunicación escrita: El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Argumentos en el ensayo', 
 'Los argumentos son el sustento de cualquier ensayo argumentativo. Deben ser sólidos, pertinentes y estar bien fundamentados.', 
 NULL, NULL, NULL, 
 '¿Cuál de estos sería un buen argumento para un ensayo sobre la importancia de la lectura?', 
 'A mí me gusta mucho leer', 
 'Estudios demuestran que la lectura mejora el vocabulario y la capacidad de análisis', 
 'Todos mis amigos leen', 
 'Leer es aburrido', 
 'B', 6, 8, 'Comunicación escrita: El ensayo argumentativo literario'),

('COMUNICACIÓN', NULL, 'Estilo del ensayo literario', 
 'El ensayo argumentativo literario se distingue por un estilo particular que combina rigor argumentativo con cualidades estéticas.', 
 NULL, NULL, NULL, 
 '¿Qué caracteriza el estilo de un buen ensayo argumentativo literario?', 
 'Uso exclusivo de lenguaje técnico y especializado', 
 'Combinación de precisión conceptual y cualidades expresivas', 
 'Ausencia total de recursos literarios', 
 'Estructura rígida sin posibilidad de creatividad', 
 'B', 6, 8, 'Comunicación escrita: El ensayo argumentativo literario');

-- Preguntas para Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'Análisis de "Los heraldos negros"', 'César Vallejo, en su poemario "Los heraldos negros", explora temas profundos como el dolor humano, la muerte y la injusticia social. Este trabajo marca el inicio de la vanguardia en la literatura peruana y muestra la evolución del poeta hacia un estilo más personal y experimental.', NULL, NULL, NULL, '¿Qué movimiento literario influyó principalmente en "Los heraldos negros"?', 'Modernismo', 'Vanguardia', 'Romanticismo', 'Realismo', 'B', 6, 8, 'Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo'),
('COMUNICACIÓN', NULL, 'Temática vallejiana', 'En "Los heraldos negros", Vallejo aborda el sufrimiento humano desde una perspectiva íntima y universal a la vez. Los poemas reflejan su preocupación por la condición humana y su propio dolor personal.', NULL, NULL, NULL, '¿Cuál de estos temas NO es central en "Los heraldos negros"?', 'El amor romántico', 'La muerte', 'La injusticia social', 'El dolor existencial', 'A', 6, 8, 'Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo'),
('COMUNICACIÓN', NULL, 'Estructura poética', 'Vallejo rompe con las estructuras tradicionales del modernismo en "Los heraldos negros", introduciendo innovaciones formales que anuncian su estilo posterior más vanguardista.', NULL, NULL, NULL, '¿Qué característica formal distingue a "Los heraldos negros" del modernismo tradicional?', 'Uso exclusivo del soneto', 'Rima perfecta en todos los poemas', 'Versificación irregular y lenguaje coloquial', 'Temas exclusivamente amorosos', 'C', 6, 8, 'Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo'),
('COMUNICACIÓN', NULL, 'Contexto histórico', 'Publicado en 1918, "Los heraldos negros" refleja tanto las inquietudes personales de Vallejo como el contexto social y político del Perú de la época.', NULL, NULL, NULL, '¿En qué año fue publicado "Los heraldos negros"?', '1915', '1918', '1922', '1925', 'B', 6, 8, 'Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo'),
('COMUNICACIÓN', NULL, 'Significado del título', 'El título "Los heraldos negros" sugiere la llegada de noticias dolorosas o presagios de sufrimiento, estableciendo el tono del poemario.', NULL, NULL, NULL, '¿Qué simbolizan los "heraldos negros" en el poemario?', 'Mensajeros de buenas noticias', 'Presagios de dolor y sufrimiento', 'Símbolos de esperanza', 'Representaciones de la noche', 'B', 6, 8, 'Literatura: Literatura peruana de la Vanguardia: Los heraldos negros, de César Vallejo');

-- Preguntas para Ortografía: Casos de homonimia (I)
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'Diferenciando homónimos', 'Las palabras homónimas son aquellas que se escriben o pronuncian igual pero tienen significados diferentes. Es fundamental distinguirlas para una comunicación precisa y evitar ambigüedades en nuestros textos.', NULL, NULL, NULL, '¿Cuál de estas parejas de palabras son homónimas?', 'Vaca - vacación', 'Hola - ola', 'Casa - casar', 'Lima - limón', 'B', 6, 8, 'Ortografía: Casos de homonimia (I)'),
('COMUNICACIÓN', NULL, 'Homonimia en contexto', 'En el siguiente enunciado identifica la palabra homónima correcta: "El ____ del barco se perdió en el mar durante la tormenta"', NULL, NULL, NULL, '¿Qué palabra completa correctamente la oración considerando que puede tener un homónimo?', 'Vela', 'Remo', 'Ancla', 'Timón', 'A', 6, 8, 'Ortografía: Casos de homonimia (I)'),
('COMUNICACIÓN', NULL, 'Identificando homónimos', 'Algunas palabras homónimas pueden escribirse igual (homógrafas) o solo sonarse igual (homófonas), pero siempre tienen significados distintos.', NULL, NULL, NULL, '¿Cuál de estos grupos contiene tres palabras homónimas?', 'Bello - vello - sello', 'Haya - halla - aya', 'Cien - sien - bien', 'Tasa - taza - casa', 'B', 6, 8, 'Ortografía: Casos de homonimia (I)'),
('COMUNICACIÓN', NULL, 'Uso correcto de homónimos', 'Selecciona la opción que use correctamente palabras homónimas en un mismo contexto.', NULL, NULL, NULL, '¿Cuál oración usa correctamente palabras homónimas?', 'El vino blanco y el vino tinto son deliciosos.', 'El tubo de ensayo y el tuvo cuidado son importantes.', 'La haya del bosque y la halla perdida son casos distintos.', 'El siervo leal y el ciervo del bosque son diferentes.', 'D', 6, 8, 'Ortografía: Casos de homonimia (I)'),
('COMUNICACIÓN', NULL, 'Homonimos y significado', 'Las palabras homónimas pueden llevar a confusiones si no se consideran en su contexto adecuado.', NULL, NULL, NULL, 'En la oración "El banco está cerrado", ¿cuál es el significado correcto de "banco"?', 'Asiento para varias personas', 'Institución financiera', 'Conjunto de peces', 'No se puede determinar sin más contexto', 'D', 6, 8, 'Ortografía: Casos de homonimia (I)');

-- Preguntas para Gramática: La estructura del predicado
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'Identificando el predicado', 'El predicado es la parte de la oración que contiene la información sobre lo que hace o lo que se dice del sujeto. Siempre incluye al verbo principal y puede tener complementos que amplían su significado.', NULL, NULL, NULL, 'En la oración "Los estudiantes leyeron el libro con atención", ¿cuál es el predicado?', 'Los estudiantes', 'leyeron el libro con atención', 'el libro con atención', 'con atención', 'B', 6, 8, 'Gramática: La estructura del predicado'),
('COMUNICACIÓN', NULL, 'Núcleo del predicado', 'El núcleo del predicado es siempre el verbo conjugado que expresa la acción o estado del sujeto.', NULL, NULL, NULL, '¿Cuál es el núcleo del predicado en "María y Juan cocinaron una deliciosa cena para sus amigos"?', 'María y Juan', 'cocinaron', 'una deliciosa cena', 'para sus amigos', 'B', 6, 8, 'Gramática: La estructura del predicado'),
('COMUNICACIÓN', NULL, 'Complementos del predicado', 'Los complementos del predicado proporcionan información adicional sobre la acción verbal, como el objeto directo, indirecto o circunstancial.', NULL, NULL, NULL, 'En la oración "El profesor entregó los exámenes a los alumnos", ¿qué función tiene "a los alumnos"?', 'Objeto directo', 'Objeto indirecto', 'Complemento circunstancial', 'Atributo', 'B', 6, 8, 'Gramática: La estructura del predicado'),
('COMUNICACIÓN', NULL, 'Predicado verbal y nominal', 'Existen dos tipos principales de predicado: verbal (con verbos de acción) y nominal (con verbos copulativos como ser, estar o parecer).', NULL, NULL, NULL, '¿Cuál de estas oraciones tiene predicado nominal?', 'Los niños juegan en el parque.', 'La película fue muy emocionante.', 'Ellos viajarán mañana.', 'Nosotros comimos pizza.', 'B', 6, 8, 'Gramática: La estructura del predicado'),
('COMUNICACIÓN', NULL, 'Estructura completa del predicado', 'Un predicado puede contener varios complementos que enriquecen el significado de la acción verbal.', NULL, NULL, NULL, 'En la oración "Ayer, mi hermano compró un regalo para su novia en el centro comercial", ¿cuántos complementos tiene el predicado?', '1', '2', '3', '4', 'C', 6, 8, 'Gramática: La estructura del predicado');

-- Preguntas para Razonamiento verbal: Ejercicios de oraciones eliminadas
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'Coherencia textual', 'Lee el siguiente texto y selecciona la oración que no guarda relación con el tema principal: "1) La contaminación ambiental es un problema grave en las ciudades. 2) Los automóviles emiten gases tóxicos. 3) Mucha gente prefiere vivir en el campo. 4) Las fábricas también contribuyen a la polución."', NULL, NULL, NULL, '¿Cuál oración debería eliminarse por no guardar relación con las demás?', '1', '2', '3', '4', 'C', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones eliminadas'),
('COMUNICACIÓN', NULL, 'Unidad temática', 'Identifica la oración que rompe la unidad temática en este párrafo: "1) El fútbol es el deporte más popular del mundo. 2) Se juega en casi todos los países. 3) El baloncesto fue inventado en 1891. 4) El fútbol requiere gran habilidad y resistencia."', NULL, NULL, NULL, '¿Cuál oración no pertenece al párrafo?', '1', '2', '3', '4', 'C', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones eliminadas'),
('COMUNICACIÓN', NULL, 'Cohesión textual', 'En el siguiente conjunto de oraciones, identifica la que interrumpe la secuencia lógica: "1) Primero, lavarse bien las manos. 2) Luego, cortar las verduras en trozos pequeños. 3) Las verduras son ricas en vitaminas. 4) Después, calentar el aceite en una sartén."', NULL, NULL, NULL, '¿Cuál oración rompe la secuencia de instrucciones?', '1', '2', '3', '4', 'C', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones eliminadas'),
('COMUNICACIÓN', NULL, 'Relación lógica', 'Selecciona la oración que no guarda relación con el tema central: "1) La lectura desarrolla la imaginación. 2) Los libros son fuente de conocimiento. 3) Algunos libros tienen tapas duras. 4) Leer mejora el vocabulario."', NULL, NULL, NULL, '¿Cuál oración es menos relevante para el tema principal?', '1', '2', '3', '4', 'C', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones eliminadas'),
('COMUNICACIÓN', NULL, 'Consistencia temática', 'Identifica la oración que no pertenece a este grupo: "1) El sol es una estrella mediana. 2) La Tierra gira alrededor del sol. 3) Las plantas realizan la fotosíntesis. 4) El sistema solar tiene ocho planetas."', NULL, NULL, NULL, '¿Cuál oración está fuera de contexto?', '1', '2', '3', '4', 'C', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones eliminadas');

-- Preguntas para Plan lector: Cuentos - Abraham Valdelomar
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'El caballero Carmelo', 'Abraham Valdelomar, en su cuento "El caballero Carmelo", narra la historia de un gallo de pelea que simboliza valores como el honor y la nobleza, ambientado en la costa peruana.', NULL, NULL, NULL, '¿Qué valores representa principalmente el gallo Carmelo en el cuento?', 'Astucia y malicia', 'Honor y nobleza', 'Cobardía y miedo', 'Avara y egoísmo', 'B', 6, 8, 'Plan lector: Cuentos - Abraham Valdelomar'),
('COMUNICACIÓN', NULL, 'Estilo de Valdelomar', 'Valdelomar es considerado uno de los principales exponentes del cuento criollo peruano, con un estilo que combina lo costumbrista con lo lírico.', NULL, NULL, NULL, '¿Qué característica define mejor el estilo literario de Valdelomar?', 'Uso exclusivo de lenguaje técnico', 'Combina costumbrismo con lírica', 'Narraciones futuristas', 'Temas exclusivamente políticos', 'B', 6, 8, 'Plan lector: Cuentos - Abraham Valdelomar'),
('COMUNICACIÓN', NULL, 'Contexto histórico', 'Los cuentos de Valdelomar reflejan la vida provinciana del Perú a principios del siglo XX, mostrando las tradiciones y conflictos de la época.', NULL, NULL, NULL, '¿En qué período histórico se desarrollan principalmente los cuentos de Valdelomar?', 'Colonia', 'Independencia', 'Principios del siglo XX', 'Década de 1950', 'C', 6, 8, 'Plan lector: Cuentos - Abraham Valdelomar'),
('COMUNICACIÓN', NULL, 'Temas recurrentes', 'En su obra, Valdelomar explora temas como la nostalgia, la infancia, la muerte y las tradiciones locales, con un profundo sentido poético.', NULL, NULL, NULL, '¿Cuál de estos temas NO es recurrente en los cuentos de Valdelomar?', 'Nostalgia', 'Tecnología avanzada', 'Infancia', 'Tradiciones locales', 'B', 6, 8, 'Plan lector: Cuentos - Abraham Valdelomar'),
('COMUNICACIÓN', NULL, 'Importancia literaria', 'Abraham Valdelomar es una figura clave en la literatura peruana, considerado precursor de la narrativa moderna en el Perú.', NULL, NULL, NULL, '¿Qué movimiento literario peruano influyó en Valdelomar y del cual fue precursor?', 'Modernismo', 'Indigenismo', 'Vanguardia', 'Realismo mágico', 'A', 6, 8, 'Plan lector: Cuentos - Abraham Valdelomar');

-- Preguntas para Plan lector: Poemas humanos - César Vallejo
INSERT INTO pregunta ("TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", "ID_COMPETENCIA", "ID_GRADO", "TEMA") VALUES
('COMUNICACIÓN', NULL, 'Estilo de Poemas humanos', '"Poemas humanos" de César Vallejo representa su etapa de madurez literaria, con un estilo más experimental y contenido socialmente comprometido.', NULL, NULL, NULL, '¿Qué caracteriza principalmente el estilo de "Poemas humanos"?', 'Lenguaje sencillo y temas amorosos', 'Experimentación formal y contenido social', 'Estructuras clásicas y rima perfecta', 'Temas mitológicos y fantásticos', 'B', 6, 8, 'Plan lector: Poemas humanos - César Vallejo'),
('COMUNICACIÓN', NULL, 'Temática vallejiana', 'En "Poemas humanos", Vallejo profundiza en el sufrimiento humano, la injusticia social y la solidaridad, con un lenguaje innovador y profundamente personal.', NULL, NULL, NULL, '¿Cuál de estos poemas pertenece a "Poemas humanos"?', 'Los heraldos negros', 'Trilce', 'Piedra negra sobre piedra blanca', 'España, aparta de mí este cáliz', 'C', 6, 8, 'Plan lector: Poemas humanos - César Vallejo'),
('COMUNICACIÓN', NULL, 'Contexto histórico', 'Publicado póstumamente, "Poemas humanos" refleja las preocupaciones de Vallejo durante su estancia en Europa, marcada por la Guerra Civil Española y su compromiso político.', NULL, NULL, NULL, '¿En qué contexto histórico fue escrito "Poemas humanos"?', 'Guerra del Pacífico', 'Primera Guerra Mundial', 'Guerra Civil Española', 'Revolución Mexicana', 'C', 6, 8, 'Plan lector: Poemas humanos - César Vallejo'),
('COMUNICACIÓN', NULL, 'Innovaciones formales', 'Vallejo rompe con todas las convenciones poéticas en "Poemas humanos", creando un lenguaje único que refleja su visión del mundo y del ser humano.', NULL, NULL, NULL, '¿Qué innovación formal es característica de "Poemas humanos"?', 'Uso de sintaxis tradicional', 'Lenguaje convencional y claro', 'Ruptura sintáctica y neologismos', 'Métrica clásica y rima consonante', 'C', 6, 8, 'Plan lector: Poemas humanos - César Vallejo'),
('COMUNICACIÓN', NULL, 'Legado literario', 'César Vallejo es considerado uno de los poetas más innovadores e importantes de la literatura en español, y "Poemas humanos" representa la cumbre de su obra.', NULL, NULL, NULL, '¿Qué valoración crítica ha recibido "Poemas humanos"?', 'Obra menor en la producción de Vallejo', 'Ejemplo de poesía tradicional', 'Cumbre de la poesía vanguardista hispanoamericana', 'Texto político sin valor literario', 'C', 6, 8, 'Plan lector: Poemas humanos - César Vallejo');

-- Preguntas para Literatura: Literatura peruana del indigenismo
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Análisis de "La serpiente de oro"', 
'En la novela "La serpiente de oro" de Ciro Alegría, se describe la vida de los pobladores de la selva peruana y su relación con el río Marañón. El autor utiliza un lenguaje descriptivo para plasmar la realidad social y cultural de la época. Esta obra es considerada una de las más importantes del indigenismo peruano.', 
NULL, NULL, NULL, 
'¿Qué elemento natural es central en la trama de "La serpiente de oro"?', 
'El río Marañón', 'La cordillera de los Andes', 'El desierto costeño', 'La selva amazónica', 
'B', 6, 8, 'Literatura: Literatura peruana del indigenismo'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Personajes en "Los ríos profundos"', 
'José María Arguedas en "Los ríos profundos" presenta a Ernesto, un niño que enfrenta el conflicto entre dos culturas: la andina y la occidental. La novela explora temas como la identidad, la injusticia social y la búsqueda de pertenencia.', 
NULL, NULL, NULL, 
'¿Cuál es el principal conflicto que enfrenta Ernesto en "Los ríos profundos"?', 
'El choque entre la cultura andina y la occidental', 'La pobreza extrema de su familia', 'La falta de educación en su comunidad', 'La discriminación racial en la ciudad', 
'A', 6, 8, 'Literatura: Literatura peruana del indigenismo'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Temas del indigenismo', 
'El indigenismo en la literatura peruana buscó retratar la realidad del indígena y denunciar las injusticias sociales. Autores como Ciro Alegría y José María Arguedas utilizaron sus obras para dar voz a los marginados y mostrar su cosmovisión.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es un tema característico de la literatura indigenista?', 
'La denuncia social', 'La vida urbana moderna', 'La relación con la naturaleza', 'La identidad cultural', 
'D', 6, 8, 'Literatura: Literatura peruana del indigenismo'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Estilo de Ciro Alegría', 
'Ciro Alegría, en sus obras, combinó el realismo con elementos míticos y una profunda comprensión de la psicología de sus personajes. Su narrativa destaca por la riqueza descriptiva y la humanización de los protagonistas indígenas.', 
NULL, NULL, NULL, 
'¿Qué característica define mejor el estilo narrativo de Ciro Alegría?', 
'Uso de un lenguaje técnico y científico', 'Combinación de realismo y elementos míticos', 'Narración fragmentada y experimental', 'Enfoque exclusivo en la vida urbana', 
'C', 6, 8, 'Literatura: Literatura peruana del indigenismo'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Simbolismo en Arguedas', 
'En "Los ríos profundos", José María Arguedas utiliza diversos símbolos para representar los conflictos culturales. El zumbayllu (trompo) es uno de los más importantes, representando la conexión entre lo ancestral y lo moderno.', 
NULL, NULL, NULL, 
'¿Qué representa el zumbayllu en "Los ríos profundos" de Arguedas?', 
'La tecnología moderna', 'La conexión entre lo ancestral y lo moderno', 'La violencia en la sociedad', 'La educación formal', 
'B', 6, 8, 'Literatura: Literatura peruana del indigenismo'),

-- Preguntas para Gramática: Análisis de oraciones
('COMUNICACIÓN', NULL, 'Identificación del sujeto', 
'En el análisis sintáctico, identificar correctamente el sujeto y el predicado es fundamental para comprender la estructura de las oraciones. El sujeto es la parte de la oración de la cual se dice algo y concuerda en número y persona con el verbo.', 
NULL, NULL, NULL, 
'En la oración "Los estudiantes diligentes completaron sus tareas a tiempo", ¿cuál es el sujeto?', 
'completaron sus tareas', 'Los estudiantes diligentes', 'a tiempo', 'sus tareas', 
'C', 6, 8, 'Gramática: Análisis de oraciones'),

('COMUNICACIÓN', NULL, 'Tipos de predicado', 
'El predicado puede ser verbal (cuando el núcleo es un verbo conjugado) o nominal (cuando el núcleo es un verbo copulativo seguido de un atributo). Reconocer estos tipos ayuda a comprender mejor la función de las palabras en la oración.', 
NULL, NULL, NULL, 
'En la oración "El cielo está despejado hoy", ¿qué tipo de predicado encontramos?', 
'Predicado verbal simple', 'Predicado nominal', 'Predicado verbal compuesto', 'Predicado adverbial', 
'A', 6, 8, 'Gramática: Análisis de oraciones'),

('COMUNICACIÓN', NULL, 'Complementos verbales', 
'Los complementos verbales completan el significado del verbo. El complemento directo (CD) indica sobre quién o qué recae directamente la acción, mientras que el complemento indirecto (CI) indica el destinatario o beneficiario de la acción.', 
NULL, NULL, NULL, 
'En la oración "Juan entregó un regalo a su madre", ¿cuál es el complemento indirecto?', 
'Juan', 'entregó', 'un regalo', 'a su madre', 
'D', 6, 8, 'Gramática: Análisis de oraciones'),

('COMUNICACIÓN', NULL, 'Oraciones compuestas', 
'Las oraciones compuestas están formadas por dos o más verbos conjugados y pueden ser coordinadas (cuando las proposiciones tienen igual jerarquía) o subordinadas (cuando una depende de la otra).', 
NULL, NULL, NULL, 
'En la oración "Estudié mucho pero no aprobé el examen", ¿qué tipo de oración compuesta es?', 
'Subordinada sustantiva', 'Coordinada adversativa', 'Subordinada adjetiva', 'Yuxtapuesta', 
'B', 6, 8, 'Gramática: Análisis de oraciones'),

('COMUNICACIÓN', NULL, 'Análisis morfológico', 
'El análisis morfológico consiste en identificar la categoría gramatical de cada palabra (sustantivo, verbo, adjetivo, etc.) y sus características (género, número, persona, tiempo, etc.).', 
NULL, NULL, NULL, 
'En la frase "aquellos libros antiguos", ¿qué categoría gramatical es "antiguos"?', 
'Sustantivo', 'Verbo', 'Adjetivo', 'Adverbio', 
'C', 6, 8, 'Gramática: Análisis de oraciones'),

-- Preguntas para Razonamiento verbal: Ejercicios de plan de redacción
('COMUNICACIÓN', NULL, 'Ordenar párrafos', 
'Un plan de redacción consiste en organizar coherentemente las ideas para desarrollar un tema. El orden lógico suele ser: introducción, desarrollo y conclusión.', 
NULL, NULL, NULL, 
'¿Cuál es el orden correcto para estos temas sobre "Cómo plantar un árbol"? 1. Regar abundantemente 2. Elegir el lugar adecuado 3. Cavar un hoyo 4. Colocar el árbol y cubrir con tierra', 
'2-3-4-1', '1-2-3-4', '3-2-1-4', '4-3-2-1', 
'A', 6, 8, 'Razonamiento verbal: Ejercicios de plan de redacción'),

('COMUNICACIÓN', NULL, 'Coherencia textual', 
'La coherencia en un texto se logra cuando las ideas están relacionadas lógicamente y se desarrollan progresivamente. Identificar el hilo conductor es esencial para organizar adecuadamente un plan de redacción.', 
NULL, NULL, NULL, 
'¿Cuál sería el mejor orden para desarrollar el tema "La importancia del reciclaje"? 1. Consecuencias de no reciclar 2. Beneficios del reciclaje 3. Definición de reciclaje 4. Cómo reciclar en casa', 
'3-2-1-4', '1-2-3-4', '4-3-2-1', '2-1-4-3', 
'D', 6, 8, 'Razonamiento verbal: Ejercicios de plan de redacción'),

('COMUNICACIÓN', NULL, 'Secuencia temporal', 
'Algunos textos requieren un orden cronológico para presentar adecuadamente la información, especialmente cuando se narran eventos históricos o procesos.', 
NULL, NULL, NULL, 
'Ordena cronológicamente estos eventos sobre la Independencia del Perú: 1. Proclamación de la Independencia 2. Llegada de San Martín 3. Rebeliones indígenas 4. Batalla de Ayacucho', 
'3-2-1-4', '1-2-3-4', '2-3-4-1', '4-3-2-1', 
'C', 6, 8, 'Razonamiento verbal: Ejercicios de plan de redacción'),

('COMUNICACIÓN', NULL, 'Estructura argumentativa', 
'Un texto argumentativo debe presentar primero la tesis, luego los argumentos y finalmente la conclusión. Este orden ayuda a persuadir al lector efectivamente.', 
NULL, NULL, NULL, 
'¿Cuál es el orden adecuado para un texto que argumenta sobre "La necesidad de reducir el uso de plásticos"? 1. Datos sobre contaminación por plásticos 2. Propuestas para reducir su uso 3. Afirmación sobre el problema', 
'3-1-2', '1-2-3', '2-3-1', '1-3-2', 
'A', 6, 8, 'Razonamiento verbal: Ejercicios de plan de redacción'),

('COMUNICACIÓN', NULL, 'Plan de investigación', 
'Al redactar un plan de investigación, el orden lógico es: planteamiento del problema, objetivos, metodología, desarrollo y conclusiones.', 
NULL, NULL, NULL, 
'Ordena estos pasos de una investigación: 1. Recolectar datos 2. Plantear hipótesis 3. Analizar resultados 4. Definir el tema', 
'4-2-1-3', '2-4-1-3', '1-2-3-4', '3-2-4-1', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de plan de redacción'),

-- Preguntas para Comunicación escrita: El ensayo comparativo literario
('COMUNICACIÓN', NULL, 'Características del ensayo', 
'Un ensayo comparativo literario analiza las similitudes y diferencias entre dos o más obras literarias. Requiere una estructura clara: introducción, desarrollo comparativo y conclusión.', 
NULL, NULL, NULL, 
'¿Cuál es el propósito principal de un ensayo comparativo literario?', 
'Resumir las obras literarias', 'Analizar similitudes y diferencias entre obras', 'Criticar negativamente los textos', 'Presentar la biografía de los autores', 
'B', 6, 8, 'Comunicación escrita: El ensayo comparativo literario'),

('COMUNICACIÓN', NULL, 'Elementos comparables', 
'Al comparar obras literarias, se pueden analizar elementos como los temas, personajes, estilos narrativos, contextos históricos y recursos literarios empleados por los autores.', 
NULL, NULL, NULL, 
'¿Cuál de estos elementos NO es usualmente comparado en un ensayo literario?', 
'Los temas principales', 'El estilo narrativo', 'El número de páginas', 'Los personajes', 
'C', 6, 8, 'Comunicación escrita: El ensayo comparativo literario'),

('COMUNICACIÓN', NULL, 'Estructura del ensayo', 
'Un buen ensayo comparativo debe presentar primero las obras a comparar, luego desarrollar los puntos de comparación organizadamente y finalmente ofrecer una conclusión que sintetice los hallazgos.', 
NULL, NULL, NULL, 
'¿Qué debe incluir la introducción de un ensayo comparativo?', 
'La presentación de las obras a comparar', 'El análisis detallado de los personajes', 'Las citas textuales extensas', 'La bibliografía completa', 
'A', 6, 8, 'Comunicación escrita: El ensayo comparativo literario'),

('COMUNICACIÓN', NULL, 'Tesis comparativa', 
'La tesis en un ensayo comparativo establece el enfoque de la comparación y guía el desarrollo del análisis. Debe ser clara y específica sobre qué aspectos se compararán y con qué propósito.', 
NULL, NULL, NULL, 
'¿Cuál sería una buena tesis para comparar "La serpiente de oro" y "Los ríos profundos"?', 
'Analizar cómo ambas novelas representan el conflicto cultural en el Perú indígena', 'Describir la vida de los autores', 'Contar las historias de ambas novelas', 'Mencionar dónde se publicaron las obras', 
'D', 6, 8, 'Comunicación escrita: El ensayo comparativo literario'),

('COMUNICACIÓN', NULL, 'Conclusión efectiva', 
'La conclusión de un ensayo comparativo debe sintetizar los hallazgos principales, destacar la importancia de la comparación y, opcionalmente, sugerir líneas para futuros análisis.', 
NULL, NULL, NULL, 
'¿Qué NO debe incluir una conclusión de ensayo comparativo?', 
'Síntesis de los hallazgos', 'Nuevos datos no analizados previamente', 'Importancia de la comparación', 'Reflexiones finales', 
'B', 6, 8, 'Comunicación escrita: El ensayo comparativo literario');

-- Preguntas para Expresión oral: El debate
INSERT INTO pregunta (
    "TIPO_EVALUACION", "GRUPO", "TEXTO_TITULO", "TEXTO_SUPERIOR", 
    "TEXTO_IMAGEN", "TEXTO_INFERIOR", "ID_ARCHIVO_CARGA", "PREGUNTA", 
    "OPCION_A", "OPCION_B", "OPCION_C", "OPCION_D", "RESPUESTA_CORRECTA", 
    "ID_COMPETENCIA", "ID_GRADO", "TEMA"
) VALUES 
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Elementos esenciales del debate', 
'En un debate formal, existen componentes fundamentales que permiten su desarrollo adecuado. Estos elementos garantizan que los participantes puedan intercambiar ideas de manera ordenada y respetuosa, facilitando la discusión de temas controvertidos.', 
NULL, NULL, NULL, 
'¿Cuál de los siguientes NO es un elemento esencial en un debate formal?', 
'Un moderador que regule los tiempos', 
'Un público que solo aplaude a su favorito', 
'Reglas claras establecidas previamente', 
'Temas controvertidos para discutir', 
'B', 6, 8, 'Expresión oral: El debate'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Función del moderador', 
'El moderador juega un papel crucial en el desarrollo de un debate, asegurando que se mantenga el orden y que todos los participantes tengan igualdad de oportunidades para expresar sus puntos de vista.', 
NULL, NULL, NULL, 
'¿Cuál es la principal función del moderador en un debate?', 
'Tomar partido por uno de los debatientes', 
'Garantizar el cumplimiento de las reglas y tiempos', 
'Interrumpir a los participantes cuando no esté de acuerdo', 
'Resumir su propia opinión al final', 
'B', 6, 8, 'Expresión oral: El debate'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Argumentación en debates', 
'La capacidad de argumentar efectivamente es fundamental en un debate. Un buen argumento debe estar respaldado por evidencias y razonamientos lógicos que sustenten la postura del participante.', 
NULL, NULL, NULL, 
'¿Qué caracteriza a un buen argumento en un debate?', 
'Está basado en emociones y preferencias personales', 
'Presenta datos verificables y razonamiento lógico', 
'Repite constantemente la misma idea', 
'Ataca directamente al oponente en lugar de sus ideas', 
'B', 6, 8, 'Expresión oral: El debate'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Tipos de debates', 
'Existen diferentes formatos de debate, cada uno con características particulares que los hacen adecuados para distintos contextos y objetivos educativos o competitivos.', 
NULL, NULL, NULL, 
'¿Cuál de estos es un tipo de debate formal?', 
'Debate libre sin reglas', 
'Debate parlamentario', 
'Discusión casual entre amigos', 
'Conversación improvisada', 
'B', 6, 8, 'Expresión oral: El debate'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Conducta en debates', 
'La ética y el respeto son fundamentales en cualquier debate. Los participantes deben demostrar educación y consideración hacia los demás, incluso cuando no compartan sus puntos de vista.', 
NULL, NULL, NULL, 
'¿Cuál de estas actitudes NO es apropiada en un debate?', 
'Escuchar atentamente al oponente', 
'Refutar ideas sin atacar a la persona', 
'Interrumpir constantemente al otro participante', 
'Presentar evidencias para sustentar argumentos', 
'C', 6, 8, 'Expresión oral: El debate'),

-- Preguntas para Ortografía: Casos de homonimia (II)
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Uso correcto de "haya"', 
'Las palabras homófonas suelen generar confusiones en la escritura, especialmente cuando tienen significados diferentes pero suenan igual. Es fundamental comprender sus distintos usos para evitar errores ortográficos.', 
NULL, NULL, NULL, 
'¿En cuál de estas oraciones se usa correctamente la palabra "haya"?', 
'El árbol de haya es muy frondoso.', 
'Espero que hayas terminado tu tarea.', 
'Voy a ver si alla está mi libro.', 
'No creo que halla problema con eso.', 
'A', 6, 8, 'Ortografía: Casos de homonimia (II)'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Diferencia entre "valla" y "baya"', 
'Los casos de homonimia requieren especial atención, ya que palabras con sonidos similares pueden tener significados completamente distintos y pertenecer a diferentes categorías gramaticales.', 
NULL, NULL, NULL, 
'¿Cuál es la opción correcta para completar la oración: "La ___ publicitaria estaba junto a un arbusto con ___ rojas"?', 
'vaya - vallas', 
'valla - bayas', 
'baya - vallas', 
'vaya - bayas', 
'B', 6, 8, 'Ortografía: Casos de homonimia (II)'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Uso de "echo" y "hecho"', 
'La correcta distinción entre palabras homófonas es esencial para una escritura precisa. Estas palabras, aunque suenen igual, tienen significados diferentes y deben usarse en contextos apropiados.', 
NULL, NULL, NULL, 
'Selecciona la oración con el uso correcto:', 
'He echo un descubrimiento importante.', 
'El hecho de no estudiar afectó su nota.', 
'Voy a hecho la leche en el cereal.', 
'¿Qué has hecho con mi echo?', 
'B', 6, 8, 'Ortografía: Casos de homonimia (II)'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Diferencia entre "hierba" y "hierva"', 
'El contexto determina cuál es la forma correcta de escribir palabras que suenan igual pero tienen significados distintos. Esta distinción es fundamental para la comunicación escrita efectiva.', 
NULL, NULL, NULL, 
'¿En qué oración se usa correctamente "hierva"?', 
'El caballo comía hierba fresca.', 
'Espero que el agua hierva pronto.', 
'La hierba medicinal tiene propiedades curativas.', 
'Voy a cortar la hierva del jardín.', 
'B', 6, 8, 'Ortografía: Casos de homonimia (II)'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Uso de "callo" y "cayo"', 
'Las palabras homófonas plantean desafíos ortográficos que solo pueden resolverse comprendiendo sus significados y usos específicos en el lenguaje.', 
NULL, NULL, NULL, 
'¿Cuál es la opción correcta para completar: "Tengo un ___ en el pie y voy a ___ en el Caribe"?', 
'callo - callo', 
'cayo - cayo', 
'callo - cayo', 
'cayo - callo', 
'C', 6, 8, 'Ortografía: Casos de homonimia (II)'),

-- Preguntas para Literatura: Literatura peruana desde 1950
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Obras de Vargas Llosa', 
'Mario Vargas Llosa es uno de los escritores peruanos más reconocidos a nivel internacional, ganador del Premio Nobel de Literatura en 2010. Sus obras exploran temas complejos de la sociedad peruana con un estilo narrativo innovador.', 
NULL, NULL, NULL, 
'¿Cuál de las siguientes NO es una obra de Mario Vargas Llosa?', 
'La ciudad y los perros', 
'Conversación en La Catedral', 
'Los cachorros', 
'Los ríos profundos', 
'D', 6, 8, 'Literatura: Literatura peruana desde 1950: Julio Ramón Ribeyro, Mario Vargas Llosa y Alfredo Bryce Echenique'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Estilo de Ribeyro', 
'Julio Ramón Ribeyro es considerado uno de los mejores cuentistas de la literatura peruana. Su obra se caracteriza por retratar con ironía y precisión la vida urbana, especialmente de Lima.', 
NULL, NULL, NULL, 
'¿Qué caracteriza principalmente el estilo literario de Julio Ramón Ribeyro?', 
'Uso de lenguaje barroco y complejo', 
'Descripciones detalladas de la selva peruana', 
'Narración irónica de la vida urbana limeña', 
'Temas fantásticos y de ciencia ficción', 
'C', 6, 8, 'Literatura: Literatura peruana desde 1950: Julio Ramón Ribeyro, Mario Vargas Llosa y Alfredo Bryce Echenique'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Personajes de Bryce', 
'Alfredo Bryce Echenique es conocido por su estilo humorístico y melancólico al mismo tiempo, retratando a la clase alta limeña con ironía y profundidad psicológica.', 
NULL, NULL, NULL, 
'¿En qué novela de Bryce Echenique aparece el personaje de "Manuel" que viaja a París?', 
'Un mundo para Julius', 
'La vida exagerada de Martín Romaña', 
'El huerto de mi amada', 
'No me esperen en abril', 
'B', 6, 8, 'Literatura: Literatura peruana desde 1950: Julio Ramón Ribeyro, Mario Vargas Llosa y Alfredo Bryce Echenique'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Temas recurrentes', 
'Los escritores peruanos de la segunda mitad del siglo XX abordaron en sus obras temas que reflejaban las complejidades de la sociedad peruana, con sus contradicciones y transformaciones.', 
NULL, NULL, NULL, 
'¿Qué tema es recurrente en la obra de estos tres autores peruanos?', 
'La exploración espacial', 
'Las tensiones sociales en el Perú', 
'La vida en la época incaica', 
'Las guerras mundiales', 
'B', 6, 8, 'Literatura: Literatura peruana desde 1950: Julio Ramón Ribeyro, Mario Vargas Llosa y Alfredo Bryce Echenique'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Reconocimientos literarios', 
'Los autores peruanos de esta generación han recibido numerosos premios y reconocimientos internacionales, situando a la literatura peruana en un lugar destacado en el panorama mundial.', 
NULL, NULL, NULL, 
'¿Qué autor peruano ganó el Premio Nobel de Literatura en 2010?', 
'Julio Ramón Ribeyro', 
'Alfredo Bryce Echenique', 
'Mario Vargas Llosa', 
'César Vallejo', 
'C', 6, 8, 'Literatura: Literatura peruana desde 1950: Julio Ramón Ribeyro, Mario Vargas Llosa y Alfredo Bryce Echenique'),

-- Preguntas para Razonamiento verbal: Ejercicios de oraciones incompletas
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Oraciones incompletas', 
'Las oraciones incompletas requieren identificar la palabra o frase que mejor complete el sentido lógico del enunciado, manteniendo la coherencia semántica y gramatical.', 
NULL, NULL, NULL, 
'Completa la oración: "Aunque estudió mucho para el examen, no pudo aprobar porque ___".', 
'se preparó con anticipación', 
'olvidó todo lo aprendido', 
'el contenido era muy fácil', 
'los profesores eran excelentes', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones incompletas'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Oraciones incompletas', 
'Para resolver ejercicios de oraciones incompletas es necesario comprender el contexto general del enunciado y seleccionar la opción que mantenga la coherencia lógica del mismo.', 
NULL, NULL, NULL, 
'Completa la oración: "El equipo trabajó arduamente en el proyecto, sin embargo, ___".', 
'lograron terminar antes de lo previsto', 
'el resultado no cumplió con las expectativas', 
'todos estaban muy motivados', 
'el jefe los felicitó inmediatamente', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones incompletas'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Oraciones incompletas', 
'La selección de la palabra o frase adecuada para completar una oración depende de la comprensión del mensaje global y de las relaciones lógicas entre sus partes.', 
NULL, NULL, NULL, 
'Completa la oración: "Debido a la fuerte lluvia, ___".', 
'el sol brilló con intensidad', 
'las calles se inundaron rápidamente', 
'la sequía empeoró', 
'todos salieron a pasear', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones incompletas'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Oraciones incompletas', 
'Las oraciones incompletas evalúan la capacidad de inferir información y establecer relaciones lógicas entre las partes de un enunciado.', 
NULL, NULL, NULL, 
'Completa la oración: "Si hubiera sabido que ibas a venir, ___".', 
'no te habría esperado', 
'te habría preparado tu comida favorita', 
'habría salido más temprano', 
'ya lo sabía desde ayer', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones incompletas'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Oraciones incompletas', 
'Resolver oraciones incompletas requiere atención al sentido global del mensaje y a las pistas contextuales que indican la relación entre las partes del enunciado.', 
NULL, NULL, NULL, 
'Completa la oración: "A pesar de sus limitaciones económicas, ___".', 
'no pudo comprar lo que necesitaba', 
'logró graduarse con honores', 
'perdió todas sus pertenencias', 
'nunca intentó superarse', 
'B', 6, 8, 'Razonamiento verbal: Ejercicios de oraciones incompletas'),

-- Preguntas para Plan lector: El mundo es ancho y ajeno - Ciro Alegría
-- Pregunta 1
('COMUNICACIÓN', NULL, 'Tema principal', 
'"El mundo es ancho y ajeno" es una novela fundamental de la literatura peruana escrita por Ciro Alegría, publicada en 1941. La obra retrata la lucha de una comunidad indígena por conservar sus tierras y su forma de vida.', 
NULL, NULL, NULL, 
'¿Cuál es el tema principal de "El mundo es ancho y ajeno"?', 
'La vida en la ciudad de Lima', 
'La lucha de una comunidad indígena por sus tierras', 
'La historia del Imperio Inca', 
'Las aventuras de un viajero europeo', 
'B', 6, 8, 'Plan lector: El mundo es ancho y ajeno - Ciro Alegría'),

-- Pregunta 2
('COMUNICACIÓN', NULL, 'Personaje principal', 
'Los personajes de la novela representan los valores y conflictos de las comunidades andinas frente a la opresión y la injusticia social.', 
NULL, NULL, NULL, 
'¿Quién es el personaje principal de "El mundo es ancho y ajeno"?', 
'Rosendo Maqui', 
'Don Álvaro Amenábar', 
'Fiero Vásquez', 
'Benito Castro', 
'A', 6, 8, 'Plan lector: El mundo es ancho y ajeno - Ciro Alegría'),

-- Pregunta 3
('COMUNICACIÓN', NULL, 'Conflicto central', 
'La novela presenta un conflicto entre dos visiones del mundo: la de los indígenas que buscan vivir en armonía con la tierra y la de los terratenientes que buscan explotarla para su beneficio.', 
NULL, NULL, NULL, 
'¿Qué representa el personaje de Don Álvaro Amenábar en la novela?', 
'La sabiduría ancestral indígena', 
'El poder opresor de los terratenientes', 
'Un líder revolucionario', 
'Un sacerdote comprometido', 
'B', 6, 8, 'Plan lector: El mundo es ancho y ajeno - Ciro Alegría'),

-- Pregunta 4
('COMUNICACIÓN', NULL, 'Escenario geográfico', 
'El escenario donde transcurre la novela no es solo un fondo decorativo, sino un elemento fundamental que influye en la vida y destino de los personajes.', 
NULL, NULL, NULL, 
'¿En qué región del Perú se desarrolla principalmente la novela?', 
'La costa central', 
'La selva amazónica', 
'La sierra andina', 
'La zona desértica del sur', 
'C', 6, 8, 'Plan lector: El mundo es ancho y ajeno - Ciro Alegría'),

-- Pregunta 5
('COMUNICACIÓN', NULL, 'Valores representados', 
'A través de sus personajes, la novela presenta valores y antivalores que entran en conflicto, reflejando las tensiones sociales de la época.', 
NULL, NULL, NULL, 
'¿Qué valor representa principalmente la comunidad de Rumi?', 
'La ambición desmedida', 
'La solidaridad y el trabajo colectivo', 
'El individualismo', 
'El desprecio por la tierra', 
'B', 6, 8, 'Plan lector: El mundo es ancho y ajeno - Ciro Alegría');

