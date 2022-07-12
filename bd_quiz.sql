-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 12-07-2022 a las 22:27:47
-- Versión del servidor: 10.4.17-MariaDB
-- Versión de PHP: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `bd_quiz`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `config`
--

CREATE TABLE `config` (
  `id` int(11) NOT NULL,
  `usuario` varchar(100) NOT NULL,
  `password` varchar(10) NOT NULL,
  `totalPreguntas` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `config`
--

INSERT INTO `config` (`id`, `usuario`, `password`, `totalPreguntas`) VALUES
(1, 'admin', 'admin', 10);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estadisticas`
--

CREATE TABLE `estadisticas` (
  `id` int(11) NOT NULL,
  `visitas` int(11) NOT NULL,
  `respondidas` int(11) NOT NULL,
  `completados` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `estadisticas`
--

INSERT INTO `estadisticas` (`id`, `visitas`, `respondidas`, `completados`) VALUES
(1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preguntas`
--

CREATE TABLE `preguntas` (
  `id` int(11) NOT NULL,
  `tema` int(11) NOT NULL,
  `pregunta` text NOT NULL,
  `opcion_a` text NOT NULL,
  `opcion_b` text NOT NULL,
  `opcion_c` text NOT NULL,
  `correcta` varchar(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `preguntas`
--

INSERT INTO `preguntas` (`id`, `tema`, `pregunta`, `opcion_a`, `opcion_b`, `opcion_c`, `correcta`) VALUES
(1, 1, 'La definición de algoritmo es...', 'Un tipo de código informático', 'Una secuencia de instrucciones que representan un modelo de solución para determinado tipo de problemas, incluyendo todos los pasos necesarios.', 'Un lenguaje de programación', 'B'),
(2, 1, '¿Qué es C++?', 'Un juego', 'Un programa', 'Un lenguaje de programación', 'C'),
(3, 1, '¿Qué es una variable?', 'Un valor o dato', 'Un espacio dentro del espacio de memoria ram', 'Un lenguaje', 'B'),
(4, 1, 'En javascript, la sentencia for sirve para', 'Repetir la ejecución de instrucciones', 'Cargar datos en un arreglo', 'Ninguna de las anteriores', 'A'),
(5, 1, 'En un lenguaje de programación las constantes son...', 'Datos que varían', 'Datos regulares', 'Datos que no cambian en el proceso', 'C'),
(6, 1, 'Un diagrama de flujo es ...', 'la forma de resolver un problema', 'La representación gráfica de un problema', 'El proceso de diseño de un algoritmo', 'B'),
(7, 1, '¿Qué tipo de dato es el ejemplo A=5?', 'char', 'integer', 'string', 'B'),
(8, 1, '¿Para qué sirve los lenguajes de programación de tipo general?', 'Crear y facilitar datos', 'Crear diferentes mecanismos', 'Crear distintos tipos de aplicaciones', 'C'),
(9, 1, 'El número en binario 1010 corresponde', '10 en decimal', '8 en decimal', '7 en decimal', 'A'),
(10, 1, 'Un &quot;array&quot; es...', 'Un tipo de dato estructurado que almacena datos, del mismo tipo y relacionados.', 'Una estructura que me permite repetir instrucciones la cantidad de veces que quiera', 'Ninguna de las anteriores', 'A'),
(11, 2, '¿Con qué nombre se conoce el escándalo que obligó al presidente estadounidense Richard Nixon a dimitir?', 'Vietnam', 'NixonPrecess', 'Watergate', 'C'),
(12, 2, '¿Qué emperador romano legalizó el cristianismo y puso fin a la persecución de los cristianos?', 'Nerón', 'Constanstino', 'Adriano', 'B'),
(13, 2, '¿Qué hito informático de 1969 cambiaría radicalmente el curso de la historia de la humanidad?', 'El primer router wi-fi', 'La primera computadora personal', 'Internet', 'C'),
(14, 2, '¿Quién fue el primer Presidente de Estados Unidos?', 'George Washington', 'Abraham Lincoln', 'Andrew Jackson', 'A'),
(15, 2, '¿Por qué es significativo el Poema de Gilgamesh?', 'Fue un libro de estrategia militar de 500 páginas que sirvió en la antigua Mesopotamia', 'Es la primera obra épica que hace referencia a la inmortalidad y la percepción humana del alma', 'El tratado más antiguo que existe sobre el Inframundo.', 'B'),
(16, 2, '¿Cuál es el nombre de la famosa batalla donde Napoleón Bonaparte fue derrotado?', 'La batalla de Hstings', 'La batalla de Álamo', 'La batalla de Waterloo', 'C'),
(17, 2, '¿A través de qué río africano se alzó el antiguo Egipto?', 'Amazonas', 'Tigris', 'Nilo', 'C'),
(18, 2, '¿A qué filósofo griego se atribuye la famosa obra “La República”?', 'Platón', 'Sócrates', 'Aristótleles', 'A'),
(19, 2, '¿En qué año se disolvió la Unión Soviética?', 'En 1987', 'En 1989', 'En 1991', 'C'),
(20, 2, '¿Qué científico es considerado el Padre de la Bomba Atómica?', 'Albert Einsein', 'Robert Openheimer', 'Leó Szilárd', 'B'),
(21, 3, '¿Qué contienen los cloroplastos de las células vegetales?', 'Clorofila', 'Agua', 'Sábila', 'A'),
(22, 3, '¿Qué es la malacología?', 'La ciencia que estudia los hongos', 'La ciencia que estudia los molusculos', 'La ciencia que estudia los ácaros', 'B'),
(23, 3, '¿Qué significan las siglas ADN?', ' Ácido deoxinucleico', 'Ácido desorribonucleico', 'Ácido desoxirribonucleico', 'C'),
(24, 3, 'Todos los organismos en el reino Animalia son:', 'Multicelulares y autótrofos', 'Multicelulares y autótrofos', 'Unicelulares y heterótrofos', 'B'),
(25, 3, '¿Qué es un cardumen?', 'Una especie de planta', 'Un banco de peces', 'Una parte del abdomen de los insectos', 'B'),
(26, 3, 'El sistema de clasificación taxonómica actual fue ideado por:', 'Darwin', 'Pateur', 'Linneo', 'B'),
(27, 3, '¿Cuál de los siguientes animales tiene incisivos que continúan creciendo toda su vida?', 'Morsa', 'Hámster', 'Elefante', 'B'),
(28, 3, '¿Cuánto vive un erizo?', 'Aproximadamente entre 4 y 5 años', 'Aproximadamente entre 7 y 8 años', 'Aproximadamente entre 9 y 12 años', 'A'),
(29, 3, '¿Dónde realizan las plantas la fotosíntesis?', 'En las hojas', 'En la raíz', 'En el aire', 'A'),
(30, 3, '¿Qué músculo impulsa la sangre por todo nuestro cuerpo?', 'El cerebro', 'Los pulmones', 'El corazón', 'C'),
(31, 4, '¿Cómo se llama en tenis un punto de saque directo?', 'Revés', 'Love', 'Ace', 'C'),
(32, 4, 'En natación, ¿cuánto mide de largo una piscina de competición para olimpiadas y mundiales?', '50 metros', '25 metros', '30 metros', 'A'),
(33, 4, '¿Con cuántos jugadores en pista juega un equipo de voleibol?', '5', '9', '6', 'C'),
(34, 4, '¿Cómo se llama en golf cuando completas un hoyo en un lanzamiento menos que el par del hoyo?', 'Albatros', 'Birdie', 'Eagle', 'B'),
(35, 4, 'Las tres modalidades de la esgrima son: sable, espada y ...', 'Estoque', 'Florete', 'Estilo lbre', 'B'),
(36, 4, '¿Cómo se llama en béisbol cuando un bateador golpea la bola y ésta sale del campo de juego, lo que le permite recorrer todas las bases con facilidad?', 'Strike', 'Hit', 'Home run', 'C'),
(37, 4, '¿A qué distancia está el punto de penalty de la portería en fútbol?', '7 metros', '11 metros', '12 metros', 'B'),
(38, 4, 'Completa esta frase de baloncesto: &quot;El arbitro pitó _____ segundos en la zona y el equipo local perdió el balón&quot;', 'Cinco', 'Venticuatro', 'Tres', 'C'),
(39, 4, 'Si hablamos del jugador boya, estamos hablando de...', 'Boleibol', 'Hockey sobre patines', 'Waterpolo', 'C'),
(40, 4, '¿Cómo se llama en rugby la lucha frente a frente de dos grupos de jugadores de los dos equipos que empujan para obtener el balón sin tocarlo con la mano?', 'Placaje', 'Melé', 'Ensayo', 'B'),
(41, 5, 'Un poco de historia. ¿Qué sabio griego creía que la única ley básica que gobernaba el universo era el principio del cambio y que nada permanecía en el mismo estado indefinidamente?', 'Tales de Mileto', 'Heráclito', 'Aristóteles', 'B'),
(42, 5, 'El método científico se usa en todas las ciencias, incluidas la física y la psicología.', 'Verdadero', 'Falso, en física no', 'Ninguna de las anteriores', 'A'),
(43, 5, '¿Cómo se llama el instrumento que mide y registra la humedad relativa del aire?', 'Barómetro', 'Hidrómetro', 'Higrómetro', 'C'),
(44, 5, 'Todo cuerpo que cae libremente en el vacío se caracteriza por tener...', 'Aceleración constante y velocidad variable', 'Fuerza variable y velocidad decreciente', 'Energía potencial constante y aceleración creciente', 'B'),
(45, 5, 'Hablando de fuerzas... ¿cuál es la que mantiene unidas las moléculas de un cuerpo?', 'La fuerza de gravedad', 'La fuerza de cohesión', 'La fuerza de adhesión', 'B'),
(46, 5, '¿Cuál es la distancia más pequeña posible en mecánica cuántica?', 'Tiempo de Wearden', 'Espuma cuántica', 'Longitud de Planck', 'C'),
(47, 5, '¿Qué dos partículas elementales se describen como &lt;sin masa&gt;?', 'Fotón y gluón', ' Muón y neutrino', 'Electrón y protón', 'A'),
(48, 5, '¿Cuál de estos fenómenos inspiró a Albert Einstein en su desarrollo de la relatividad general?', 'Ver a dos trenes moverse en direcciones opuestas', 'Ver a un hombre caerse de un tejado', 'La vibración de las cuerdas en un violín', 'B'),
(49, 5, '¿El tiempo va siempre hacia adelante?', 'Siempre', 'No', 'En teoría...sí', 'C'),
(50, 5, '¿Qué es la hidrostática?', 'Cantidad de masa encerrada en un volumen', 'Presión de los líquidos a todas las direcciones', 'Cuerpo de masa que crece de una forma', 'B'),
(51, 7, 'Originario del Oriente Medio, el falafel es una de las comidas callejeras favoritas de todo el mundo. ¿Cuál es el ingrediente principal del falafel?', 'Las semillas de sésamo', 'La harina', 'Los garbanzos', 'C'),
(52, 7, 'Las arepas son pasteles de maíz a menudo rellenos con ingredientes como queso, verduras y carne. ¿Qué 2 países dicen haber inventado este delicioso plato?', 'Colombia y Venezuela', 'Venezuela y Argentina', 'Chile y Colombia', 'A'),
(53, 7, 'La comida callejera más popular del Perú, y éxito de exportación culinaria, es sin duda el ceviche. En este plato, ¿el pescado crudo se cura agregándole qué ingrediente?', 'Vinagre', 'Zumos cítricos', 'Aceite caliente', 'B'),
(54, 7, '¿En qué país se considera de mala educación comer mientras se camina (con algunas excepciones)?', 'Italia', 'China', 'Japón', 'C'),
(55, 7, 'En Italia, ¿los arancini son unas albóndigas fritas de qué?', 'Espaguetis', 'Risotto', 'Aceitunas', 'B'),
(56, 7, '¿En qué país se considera de mala educación comer mientras se camina (con algunas excepciones)?', 'Italia', 'China', 'Japón', 'C'),
(57, 7, 'Un buen mate se prepara con el agua...', 'A 80 grados', 'Hirviendo', 'Tibia', 'A'),
(58, 7, '¿Qué otro país nos disputa la invención del argentinísimo dulce de leche?', 'Chile', 'Brasil', 'Uruguay', 'C'),
(59, 7, 'Una milanesa con jamón, queso y salsa de tomate se llama...', 'Milanesa siciliana', 'Milanesa napolitana', 'Milanesa maradoniana', 'B'),
(60, 7, '¿Cuáles son los ingredientes más comunes de toda empanada de carne?', 'Carne picada, huevos, cebollas y aceitunas', 'Carne picada, huevos, tomate y aceitunas', 'Carne picada, huevos, uva y choclo', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `temas`
--

CREATE TABLE `temas` (
  `id` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `temas`
--

INSERT INTO `temas` (`id`, `nombre`) VALUES
(1, 'Programación'),
(2, 'Historia'),
(3, 'Biología'),
(4, 'Deporte'),
(5, 'Física'),
(6, 'Ingles'),
(7, 'Comida');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `config`
--
ALTER TABLE `config`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `temas`
--
ALTER TABLE `temas`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `config`
--
ALTER TABLE `config`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de la tabla `estadisticas`
--
ALTER TABLE `estadisticas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `preguntas`
--
ALTER TABLE `preguntas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT de la tabla `temas`
--
ALTER TABLE `temas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
