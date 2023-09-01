-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 16:58:45
-- Versión del servidor: 5.6.41-84.1-log
-- Versión de PHP: 7.0.33-0ubuntu0.16.04.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_monely`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `id_pais` int(11) NOT NULL,
  `nombre_pais` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `nacionalidad` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `idioma` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`id_pais`, `nombre_pais`, `nacionalidad`, `idioma`) VALUES
(1, 'Afganistán ', 'afgano(a) ', 'afgano'),
(2, 'Alemania ', 'alemán(a)', 'alemán'),
(3, 'Arabia Saudita ', 'árabe ', 'árabe '),
(4, 'Argentina ', 'argentino(a)', 'español'),
(5, 'Australia ', 'australiano(a)', 'inglés'),
(6, 'Bélgica ', 'belga', 'francés / flamenco'),
(7, 'Bolivia ', 'boliviano(a)', 'español'),
(8, 'Brasil ', 'brasileño(a)', 'portugués'),
(9, 'Camboya ', 'camboyano(a)', 'camboyano'),
(10, 'Canadá ', 'canadiense', 'inglés / francés'),
(11, 'Chile ', 'chileno(a)', 'español'),
(12, 'China ', 'chino(a)', 'chino'),
(13, 'Colombia ', 'colombiano(a)', 'español'),
(14, 'Corea ', 'coreano(a)', 'coreano'),
(15, 'Costa Rica ', 'costarricense', 'español'),
(16, 'Cuba ', 'cubano(a)', 'español'),
(17, 'Dinamarca ', 'danés(a)', 'danés'),
(18, 'Ecuador ', 'ecuatoriano(a)', 'español'),
(19, 'Egipto ', 'egipcio(a)', 'árabe'),
(20, 'El Salvador ', 'salvadoreño(a)', 'español'),
(21, 'Escocia ', 'escocés(a)', 'inglés'),
(22, 'España ', 'español(a)', 'español'),
(23, 'Estados Unidos ', 'estadounidense', 'inglés'),
(24, 'Estonia ', 'estonio(a)', 'estonio'),
(25, 'Etiopia ', 'etiope ', 'amárico'),
(26, 'Filipinas ', 'filipino(a)', 'tagalo'),
(27, 'Finlandia ', 'finlandés(a)', 'finlandés'),
(28, 'Francia ', 'francés(a)', 'francés'),
(29, 'Gales ', 'galés(a)', 'galés / inglés'),
(30, 'Grecia ', 'griego(a)', 'griego'),
(31, 'Guatemala ', 'guatemalteco(a)', 'español'),
(32, 'Haití ', 'haitiano(a)', 'francés / creoles'),
(33, 'Holanda ', 'holandés(a)', 'holandés'),
(34, 'Honduras ', 'hondureño(a)', 'español'),
(35, 'Indonesia ', 'indonés(a)', 'indonesio'),
(36, 'Inglaterra ', 'inglés(a)', 'inglés'),
(37, 'Irak ', 'iraquí', 'árabe'),
(38, 'Irán ', 'iraní', 'persa'),
(39, 'Irlanda ', 'irlandés(a)', 'irlandés / inglés'),
(40, 'Israel ', 'israelí', 'hebreo'),
(41, 'Italia ', 'italiano(a)', 'italiano'),
(42, 'Japón ', 'japonés(a)', 'japonés'),
(43, 'Jordania ', 'jordano(a)', 'árabe'),
(44, 'Laos ', 'laosiano(a)', 'laosiano'),
(45, 'Letonia ', 'letón(a)', 'letón'),
(46, 'Lituania ', 'letonés(a)', 'lituano'),
(47, 'Malasia ', 'malayo(a)', 'malayo'),
(48, 'Marruecos ', 'marroquí', 'árabe / francés'),
(49, 'México ', 'mexicano(a)', 'español'),
(50, 'Nicaragua ', 'nicaragüense', 'español'),
(51, 'Noruega ', 'noruego(a)', 'noruego'),
(52, 'Nueva Zelanda / Nueva Zelandia', 'neozelandés(a)', 'inglés / maori'),
(53, 'Panamá ', 'panameño(a)', 'español'),
(54, 'Paraguay ', 'paraguayo(a)', 'español'),
(55, 'Perú ', 'peruano(a)', 'español'),
(56, 'Polonia ', 'polaco(a)', 'polaco'),
(57, 'Portugal ', 'portugués(a)', 'portugués'),
(58, 'Puerto Rico ', 'puertorriqueño(a)', 'español'),
(59, 'Republica Dominicana ', 'dominicano(a)', 'español'),
(60, 'Rumania ', 'rumano(a)', 'rumano'),
(61, 'Rusia ', 'ruso(a)', 'ruso'),
(62, 'Suecia ', 'sueco(a)', 'sueco'),
(63, 'Suiza ', 'suizo(a)', 'suizo'),
(64, 'Tailandia ', 'tailandés(a)', 'tailandés'),
(65, 'Taiwán ', 'taiwanes(a)', 'chino'),
(66, 'Turquía ', 'turco(a)', 'turco'),
(67, 'Ucrania ', 'ucraniano(a)', 'ucraniano'),
(68, 'Uruguay ', 'uruguayo(a)', 'español'),
(69, 'Venezuela ', 'venezolano(a)', 'español'),
(70, 'Vietnam ', 'vietnamita', 'vietnamita ');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`id_pais`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `id_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=71;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
