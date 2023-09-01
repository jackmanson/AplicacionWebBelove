-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 17:01:36
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
-- Estructura de tabla para la tabla `provincia`
--

CREATE TABLE `provincia` (
  `id_provincia` int(11) NOT NULL,
  `nombre_provincia` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_departamento_1` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `provincia`
--

INSERT INTO `provincia` (`id_provincia`, `nombre_provincia`, `fk_id_departamento_1`) VALUES
(1, 'Chachapoyas ', 1),
(2, 'Bagua ', 1),
(3, 'Bongará ', 1),
(4, 'Condorcanqui ', 1),
(5, 'Luya ', 1),
(6, 'Rodríguez de Mendoza ', 1),
(7, 'Utcubamba ', 1),
(8, 'Aija', 2),
(9, 'Antonio Raymondi ', 2),
(10, 'Asunción', 2),
(11, 'Bolognesi', 2),
(12, 'Carhuaz', 2),
(13, 'Carlos F. Fitzcarrald', 2),
(14, 'Casma', 2),
(15, 'Corongo', 2),
(16, 'Huaraz', 2),
(17, 'Huari', 2),
(18, 'Huarmey', 2),
(19, 'Huaylas', 2),
(20, 'Mariscal Luzuriaga', 2),
(21, 'Ocros', 2),
(22, 'Pallasca', 2),
(23, 'Pomabamba', 2),
(24, 'Recuay', 2),
(25, 'Santa', 2),
(26, 'Sihuas', 2),
(27, 'Yungay', 2),
(28, 'Abancay', 3),
(29, 'Andahuaylas', 3),
(30, 'Antabamba', 3),
(31, 'Aymaraes', 3),
(32, 'Cotabambas', 3),
(33, 'Chincheros', 3),
(34, 'Grau', 3),
(35, 'Arequipa', 4),
(36, 'Camaná', 4),
(37, 'Caravelí', 4),
(38, 'Castilla', 4),
(39, 'Caylloma', 4),
(40, 'Condesuyos', 4),
(41, 'Islay', 4),
(42, 'La Unión', 4),
(43, 'Huamanga', 5),
(44, 'Cangallo', 5),
(45, 'Huanca Sancos', 5),
(46, 'Huanta', 5),
(47, 'La Mar', 5),
(48, 'Lucanas', 5),
(49, 'Parinacochas', 5),
(50, 'Páucar del Sara Sara', 5),
(51, 'Sucre', 5),
(52, 'Víctor Fajardo', 5),
(53, 'Vilcashuamán', 5),
(54, 'Cajamarca ', 6),
(55, 'Cajabamba ', 6),
(56, 'Celendín ', 6),
(57, 'Chota ', 6),
(58, 'Contumazá ', 6),
(59, 'Cutervo ', 6),
(60, 'Hualgayoc ', 6),
(61, 'Jaén ', 6),
(62, 'San Ignacio ', 6),
(63, 'San Marcos ', 6),
(64, 'San Miguel ', 6),
(65, 'San Pablo ', 6),
(66, 'Santa Cruz ', 6),
(67, 'Cuzco ', 7),
(68, 'Acomayo ', 7),
(69, 'Anta ', 7),
(70, 'Calca ', 7),
(71, 'Canas ', 7),
(72, 'Canchis ', 7),
(73, 'Chumbivilcas ', 7),
(74, 'Espinar ', 7),
(75, 'La Convención ', 7),
(76, 'Paruro ', 7),
(77, 'Paucartambo ', 7),
(78, 'Quispicanchi ', 7),
(79, 'Urubamba ', 7),
(80, 'Huancavelica ', 8),
(81, 'Acobamba ', 8),
(82, 'Angaraes ', 8),
(83, 'Castrovirreyna ', 8),
(84, 'Churcampa ', 8),
(85, 'Huaytará ', 8),
(86, 'Tayacaja ', 8),
(87, 'Huánuco ', 9),
(88, 'Ambo ', 9),
(89, 'Dos de Mayo ', 9),
(90, 'Huacaybamba ', 9),
(91, 'Huamalíes ', 9),
(92, 'Leoncio Prado ', 9),
(93, 'Marañón ', 9),
(94, 'Pachitea ', 9),
(95, 'Puerto Inca ', 9),
(96, 'Lauricocha ', 9),
(97, 'Yarowilca ', 9),
(98, 'Ica ', 10),
(99, 'Chincha ', 10),
(100, 'Nazca ', 10),
(101, 'Palpa ', 10),
(102, 'Pisco ', 10),
(103, 'Huancayo', 11),
(104, 'Concepción', 11),
(105, 'Jauja', 11),
(106, 'Junín', 11),
(107, 'Tarma', 11),
(108, 'Yauli', 11),
(109, 'Satipo', 11),
(110, 'Chanchamayo', 11),
(111, 'Chupaca', 11),
(112, 'Trujillo ', 12),
(113, 'Ascope ', 12),
(114, 'Bolívar ', 12),
(115, 'Chepén ', 12),
(116, 'Julcán ', 12),
(117, 'Otuzco ', 12),
(118, 'Pacasmayo ', 12),
(119, 'Pataz ', 12),
(120, 'Sánchez Carrión ', 12),
(121, 'Santiago de Chuco ', 12),
(122, 'Gran Chimú ', 12),
(123, 'Virú ', 12),
(124, 'Chiclayo', 13),
(125, 'Ferreñafe', 13),
(126, 'Lambayeque', 13),
(127, 'Lima ', 14),
(128, 'Barranca ', 14),
(129, 'Cajatambo ', 14),
(130, 'Canta ', 14),
(131, 'Cañete ', 14),
(132, 'Huaral ', 14),
(133, 'Huarochirí ', 14),
(134, 'Huaura ', 14),
(135, 'Oyón ', 14),
(136, 'Yauyos ', 14),
(137, 'Maynas ', 15),
(138, 'Alto Amazonas ', 15),
(139, 'Loreto ', 15),
(140, 'Mariscal Ramón Castilla ', 15),
(141, 'Requena ', 15),
(142, 'Ucayali ', 15),
(143, 'Datem del Marañón ', 15),
(144, 'Putumayo ', 15),
(145, 'Tambopata', 16),
(146, 'Manu', 16),
(147, 'Tahuamanu', 16),
(148, 'Mariscal Nieto', 17),
(149, 'General Sánchez Cerro', 17),
(150, 'Ilo', 17),
(151, 'Pasco', 18),
(152, 'Daniel A. Carrión', 18),
(153, 'Oxapampa', 18),
(154, 'Piura ', 19),
(155, 'Ayabaca ', 19),
(156, 'Huancabamba ', 19),
(157, 'Morropón ', 19),
(158, 'Paita ', 19),
(159, 'Sullana ', 19),
(160, 'Talara ', 19),
(161, 'Sechura ', 19),
(162, 'Puno', 20),
(163, 'San Román', 20),
(164, 'Azángaro', 20),
(165, 'Chucuito', 20),
(166, 'El Collao', 20),
(167, 'Melgar', 20),
(168, 'Carabaya', 20),
(169, 'Huancané', 20),
(170, 'Sandia', 20),
(171, 'San Antonio de Putina', 20),
(172, 'Lampa', 20),
(173, 'Yunguyo', 20),
(174, 'Moho', 20),
(175, 'Moyobamba ', 21),
(176, 'Bellavista ', 21),
(177, 'El Dorado ', 21),
(178, 'Huallaga ', 21),
(179, 'Lamas ', 21),
(180, 'Mariscal Cáceres ', 21),
(181, 'Picota ', 21),
(182, 'Rioja ', 21),
(183, 'San Martín ', 21),
(184, 'Tocache ', 21),
(185, 'Candarave', 22),
(186, 'Jorge Basadre', 22),
(187, 'Tacna', 22),
(188, 'Tarata', 22),
(189, 'Tumbes', 23),
(190, 'Zarumilla', 23),
(191, 'Contralmirante Villar', 23),
(192, 'Coronel Portillo ', 24),
(193, 'Atalaya ', 24),
(194, 'Padre Abad ', 24),
(195, 'Purús ', 24),
(196, 'Provincia Constitucional del Callao', 25);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD PRIMARY KEY (`id_provincia`),
  ADD KEY `fk_departamento_1_idx` (`fk_id_departamento_1`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `provincia`
--
ALTER TABLE `provincia`
  MODIFY `id_provincia` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `provincia`
--
ALTER TABLE `provincia`
  ADD CONSTRAINT `fk_departamento_1` FOREIGN KEY (`fk_id_departamento_1`) REFERENCES `departamento` (`id_departamento`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
