-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 07:53:15
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
-- Estructura de tabla para la tabla `colores_pantone`
--

CREATE TABLE `colores_pantone` (
  `id_color_pantone` int(11) NOT NULL,
  `nombre_pantone` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `valor_exadecimal` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fk_id_categoria_pantone_1` int(11) DEFAULT NULL,
  `fk_id_color_3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `colores_pantone`
--

INSERT INTO `colores_pantone` (`id_color_pantone`, `nombre_pantone`, `valor_exadecimal`, `fk_id_categoria_pantone_1`, `fk_id_color_3`) VALUES
(1, 'Pantone 100 ', '#f4ed7c', 1, 7),
(2, 'Pantone 101 ', '#f4ed47', 1, 7),
(3, 'Pantone 109 ', '#f9d616', 1, 7),
(4, 'Pantone 115 ', '#f9e04c', 1, 7),
(5, 'Pantone 116 ', '#fcd116', 1, 7),
(6, 'Pantone 119 ', '#897719', 1, 17),
(7, 'Pantone 120 ', '#f9e27f', 1, 9),
(8, 'Pantone 1205 ', '#f7e8aa', 1, 8),
(9, 'Pantone 121 ', '#f9e070', 1, 8),
(10, 'Pantone 123 ', '#ffc61e', 1, 7),
(11, 'Pantone 134 ', '#ffd87f', 1, 9),
(12, 'Pantone 136 ', '#fcbf49', 1, 7),
(13, 'Pantone 137 ', '#fca311', 1, 25),
(14, 'Pantone 139 ', '#af7505', 1, 22),
(15, 'Pantone 141 ', '#f2ce68', 1, 9),
(16, 'Pantone 148 ', '#ffd69b', 1, 9),
(17, 'Pantone 151 ', '#f77f00', 1, 25),
(18, 'Pantone 154 ', '#995905', 1, 22),
(19, 'Pantone 155 ', '#f4dbaa', 1, 9),
(20, 'Pantone 157 ', '#eda04f', 1, 25),
(21, 'Pantone 162 ', '#fac6aa', 1, 30),
(22, 'Pantone 1625 ', '#f9a58c', 1, 31),
(23, 'Pantone 163 ', '#fc9e70', 1, 25),
(24, 'Pantone 165 ', '#f96302', 1, 25),
(25, 'Pantone 168 ', '#6d3011', 1, 22),
(26, 'Pantone 169 ', '#f9baaa', 1, 29),
(27, 'Pantone 170 ', '#f98972', 1, 14),
(28, 'Pantone 172 ', '#f74902', 1, 25),
(29, 'Pantone 174 ', '#933311', 1, 22),
(30, 'Pantone 176 ', '#f9afad', 1, 29),
(31, 'Pantone 177 ', '#f9827f', 1, 31),
(32, 'Pantone 178 ', '#f95e59', 1, 14),
(33, 'Pantone 1797 ', '#cc2d30', 1, 32),
(34, 'Pantone 180 ', '#c13828', 1, 22),
(35, 'Pantone 182 ', '#5b2d28', 1, 22),
(36, 'Pantone 183 ', '#fc8c99', 1, 31),
(37, 'Pantone 184 ', '#fc5e72', 1, 33),
(38, 'Pantone 185 ', '#e8112d', 1, 32),
(39, 'Pantone 191 ', '#f4476b', 1, 33),
(40, 'Pantone 192 ', '#e5053a', 1, 32),
(41, 'Pantone 1925 ', '#e00747', 1, 32),
(42, 'Pantone 195 ', '#772d35', 1, 22),
(43, 'Pantone 199 ', '#d81c3f', 1, 32),
(44, 'Pantone 200 ', '#c41e3a', 1, 32),
(45, 'Pantone 202 ', '#8c2633', 1, 22),
(46, 'Pantone 206 ', '#d30547', 1, 32),
(47, 'Pantone 207 ', '#af003d', 1, 32),
(48, 'Pantone 208 ', '#8e2344', 1, 23),
(49, 'Pantone 211 ', '#ff77a8', 1, 15),
(50, 'Pantone 212 ', '#f94f8e', 1, 15),
(51, 'Pantone 213 ', '#ea0f6b', 1, 39),
(52, 'Pantone 214 ', '#cc0256', 1, 39),
(53, 'Pantone 217 ', '#f4bfd1', 1, 20),
(54, 'Pantone 220 ', '#aa004f', 1, 39),
(55, 'Pantone 221 ', '#930042', 1, 39),
(56, 'Pantone 228 ', '#8c004c', 1, 39),
(57, 'Pantone 231 ', '#fc70ba', 1, 31),
(58, 'Pantone 2375 ', '#ea6bbf', 1, 31),
(59, 'Pantone 244 ', '#eda0d3', 1, 29),
(60, 'Pantone 246 ', '#cc00a0', 1, 39),
(61, 'Pantone 250 ', '#edc4dd', 1, 20),
(62, 'Pantone 2582 ', '#aa47ba', 1, 36),
(63, 'Pantone 259 ', '#72166b', 1, 23),
(64, 'Pantone 2607 ', '#5b027a', 1, 36),
(65, 'Pantone 263 ', '#e0cee0', 1, 20),
(66, 'Pantone 264 ', '#c6aadb', 1, 40),
(67, 'Pantone 265 ', '#9663c4', 1, 40),
(68, 'Pantone 266 ', '#6d28aa', 1, 36),
(69, 'Pantone 2665 ', '#894fbf', 1, 40),
(70, 'Pantone 2706 ', '#d1cedd', 1, 20),
(71, 'Pantone 2707 ', '#2b265b', 1, 2),
(72, 'Pantone 2716 ', '#a5a0d6', 1, 40),
(73, 'Pantone 2717 ', '#a5bae0', 1, 11),
(74, 'Pantone 2718 ', '#5b77cc', 1, 3),
(75, 'Pantone 2726 ', '#6656bc', 1, 40),
(76, 'Pantone 2727 ', '#5e68c4', 1, 3),
(77, 'Pantone 277 ', '#b5d1e8', 1, 11),
(78, 'Pantone 279 ', '#6689cc', 1, 3),
(79, 'Pantone 283 ', '#9bc4e2', 1, 11),
(80, 'Pantone 284 ', '#78aadb', 1, 11),
(81, 'Pantone 285 ', '#3a75c4', 1, 3),
(82, 'Pantone 286 ', '#0038a8', 1, 3),
(83, 'Pantone 290 ', '#c4d8e2', 1, 11),
(84, 'Pantone 292 ', '#75b2dd', 1, 11),
(85, 'Pantone 293 ', '#0051ba', 1, 3),
(86, 'Pantone 294 ', '#003f87', 1, 41),
(87, 'Pantone 297 ', '#82c6e2', 1, 11),
(88, 'Pantone 298 ', '#51b5e0', 1, 11),
(89, 'Pantone 2985 ', '#51bfe2', 1, 11),
(90, 'Pantone 299 ', '#00a3dd', 1, 11),
(91, 'Pantone 300 ', '#0072c6', 1, 3),
(92, 'Pantone 301 ', '#005b99', 1, 3),
(93, 'Pantone 304 ', '#a5dde2', 1, 41),
(94, 'Pantone 306 ', '#00bce2', 1, 11),
(95, 'Pantone 310 ', '#72d1dd', 1, 11),
(96, 'Pantone 3105 ', '#7fd6db', 1, 11),
(97, 'Pantone 312 ', '#00adc6', 1, 11),
(98, 'Pantone 3125 ', '#00b7c6', 1, 11),
(99, 'Pantone 313 ', '#0099b5', 1, 11),
(100, 'Pantone 3145 ', '#00848e', 1, 43),
(101, 'Pantone 3165 ', '#00565b', 1, 10),
(102, 'Pantone 317 ', '#c9e8dd', 1, 42),
(103, 'Pantone 319 ', '#4cced1', 1, 42),
(104, 'Pantone 320 ', '#009ea0', 1, 43),
(105, 'Pantone 324 ', '#aaddd6', 1, 42),
(106, 'Pantone 327 ', '#008c82', 1, 43),
(107, 'Pantone 3285', '#009987', 1, 43),
(108, 'PANTONE 3292 ', '#006056', 1, 10),
(109, 'PANTONE 331 ', '#baead6', 1, 44),
(110, 'PANTONE 333 ', '#5eddc1', 1, 42),
(111, 'PANTONE 335 ', '#007c66', 1, 35),
(112, 'PANTONE 337 ', '#9bdbc1', 1, 44),
(113, 'PANTONE 339 ', '#00b28c', 1, 45),
(114, 'PANTONE 340 ', '#009977', 1, 45),
(115, 'PANTONE 3405 ', '#00b27a', 1, 45),
(116, 'PANTONE 3415 ', '#007c59', 1, 35),
(117, 'PANTONE 346 ', '#96d8af', 1, 44),
(118, 'PANTONE 347 ', '#009e60', 1, 35),
(119, 'PANTONE 348 ', '#009e60', 1, 35),
(120, 'PANTONE 351 ', '#b5e8bf', 1, 44),
(121, 'PANTONE 353 ', '#84e2a8', 1, 44),
(122, 'PANTONE 354 ', '#00b760', 1, 46),
(123, 'PANTONE 358 ', '#aadd96', 1, 44),
(124, 'PANTONE 360 ', '#60c659', 1, 46),
(125, 'PANTONE 361 ', '#1eb53a', 1, 46),
(126, 'PANTONE 365 ', '#d3e8a3', 1, 44),
(127, 'PANTONE 367 ', '#aadd6d', 1, 44),
(128, 'PANTONE 368 ', '#5bbf21', 1, 46),
(129, 'PANTONE 370 ', '#568e14', 1, 35),
(130, 'PANTONE 374 ', '#bae860', 1, 44),
(131, 'PANTONE 375 ', '#8cd600', 1, 46),
(132, 'PANTONE 376 ', '#7fba00', 1, 35),
(133, 'PANTONE 382 ', '#bad80a', 1, 47),
(134, 'PANTONE 386 ', '#e8ed60', 1, 8),
(135, 'PANTONE 386 ', '#f2ed6d', 1, 8),
(136, 'PANTONE 399 ', '#998e07', 1, 35),
(137, 'PANTONE 400 ', '#d1c6b5', 1, 21),
(138, 'PANTONE 401 ', '#c1b5a5', 1, 21),
(139, 'PANTONE 402 ', '#afa593', 1, 21),
(140, 'PANTONE 406 ', '#cec1b5', 1, 21),
(141, 'PANTONE 408 ', '#a8998c', 1, 21),
(142, 'PANTONE 409 ', '#99897c', 1, 21),
(143, 'PANTONE 420 ', '#d1ccbf', 1, 20),
(144, 'PANTONE 421 ', '#bfbaaf', 1, 20),
(145, 'PANTONE 422 ', '#afaaa3', 1, 21),
(146, 'PANTONE 424 ', '#827f77', 1, 20),
(147, 'PANTONE 427 ', '#dddbd1', 1, 20),
(148, 'PANTONE 428 ', '#d1cec6', 1, 20),
(149, 'PANTONE 429 ', '#adafaa', 1, 20),
(150, 'PANTONE 430 ', '#919693', 1, 20),
(151, 'PANTONE 431 ', '#666d70', 1, 20),
(152, 'PANTONE 432 ', '#444f51', 1, 16),
(153, 'PANTONE 434 ', '#e0d1c6', 1, 12),
(154, 'PANTONE 435 ', '#d3bfb7', 1, 22),
(155, 'PANTONE 436 ', '#bca59e', 1, 22),
(156, 'PANTONE 437 ', '#8c706b', 1, 22),
(157, 'PANTONE 440 ', '#3f302b', 1, 22),
(158, 'PANTONE 4505 ', '#a09151', 1, 13),
(159, 'PANTONE 451 ', '#ada07a', 1, 47),
(160, 'PANTONE 452 ', '#c4b796', 1, 1),
(161, 'PANTONE 4525 ', '#ccbf8e', 1, 1),
(162, 'PANTONE 4535 ', '#dbcea5', 1, 1),
(163, 'PANTONE 454 ', '#e2d8bf', 1, 1),
(164, 'PANTONE 458 ', '#ddcc6b', 1, 8),
(165, 'PANTONE 459 ', '#e2d67c', 1, 8),
(166, 'PANTONE 464 ', '#876028', 1, 22),
(167, 'PANTONE 465 ', '#c1a875', 1, 17),
(168, 'PANTONE 4655 ', '#c49977', 1, 22),
(169, 'PANTONE 466 ', '#d1bf91', 1, 17),
(170, 'PANTONE 468 ', '#e2d6b5', 1, 1),
(171, 'PANTONE 469 ', '#603311', 1, 22),
(172, 'PANTONE 470 ', '#9b4f19', 1, 22),
(173, 'PANTONE 471 ', '#bc5e1e', 1, 22),
(174, 'PANTONE 472 ', '#eaaa7d', 1, 49),
(175, 'PANTONE 473 ', '#f4c4a0', 1, 49),
(176, 'PANTONE 475 ', '#f7d3b5', 1, 49),
(177, 'PANTONE 479 ', '#af8970', 1, 22),
(178, 'PANTONE 480 ', '#d3b7a3', 1, 22),
(179, 'PANTONE 481 ', '#e0ccba', 1, 21),
(180, 'PANTONE 482 ', '#e5d3c1', 1, 21),
(181, 'PANTONE 484 ', '#9b301c', 1, 22),
(182, 'PANTONE 485 ', '#d81e05', 1, 32),
(183, 'PANTONE 486 ', '#ed9e84', 1, 50),
(184, 'PANTONE 488 ', '#f2c4af', 1, 49),
(185, 'PANTONE 489 ', '#f2d1bf', 1, 49),
(186, 'PANTONE 490 ', '#5b2626', 1, 22),
(187, 'PANTONE 492 ', '#913338', 1, 22),
(188, 'PANTONE 493 ', '#db828c', 1, 33),
(189, 'PANTONE 500 ', '#cd898c', 1, 33),
(190, 'PANTONE 521 ', '#b58cb2', 1, 40),
(191, 'PANTONE 523 ', '#d3b7cc', 1, 40),
(192, 'PANTONE 524 ', '#e2ccd3', 1, 20),
(193, 'PANTONE 527 ', '#7a1e99', 1, 36),
(194, 'PANTONE 528 ', '#af72c1', 1, 40),
(195, 'PANTONE 535 ', '#9ba3b7', 1, 20),
(196, 'PANTONE 536 ', '#adb2c1', 1, 20),
(197, 'PANTONE 537 ', '#c4c6ce', 1, 20),
(198, 'PANTONE 541 ', '#003f77', 1, 3),
(199, 'PANTONE 542 ', '#6693bc', 1, 11),
(200, 'PANTONE 5425 ', '#8499a5', 1, 20),
(201, 'PANTONE 5435 ', '#afbcbf', 1, 20),
(202, 'PANTONE 544 ', '#b7ccdb', 1, 11),
(203, 'PANTONE 5445 ', '#c4cccc', 1, 20),
(204, 'PANTONE 548 ', '#004459', 1, 41),
(205, 'PANTONE 5483 ', '#609191', 1, 44),
(206, 'PANTONE 549 ', '#5e99aa', 1, 11),
(207, 'PANTONE 5493 ', '#8cafad', 1, 44),
(208, 'PANTONE 5497 ', '#91a399', 1, 20),
(209, 'PANTONE 550 ', '#77afbf', 1, 11),
(210, 'PANTONE 5503 ', '#aac4bf', 1, 44),
(211, 'PANTONE 5507 ', '#afbab2', 1, 20),
(212, 'PANTONE 552 ', '#c4d6d6', 1, 11),
(213, 'PANTONE 5527 ', '#ced1c6', 1, 20),
(214, 'PANTONE 562 ', '#1e7a6d', 1, 45),
(215, 'PANTONE 563 ', '#7fbcaa', 1, 44),
(216, 'PANTONE 5767 ', '#8c914f', 1, 37),
(217, 'PANTONE 583 ', '#aaba0a', 1, 38),
(218, 'PANTONE 617 ', '#ccc47c', 1, 9),
(219, 'PANTONE 630 ', '#8cccd3', 1, 11),
(220, 'PANTONE 631 ', '#54b7c6', 1, 11),
(221, 'PANTONE 632 ', '#00a0ba', 1, 11),
(222, 'PANTONE 649 ', '#d6d6d8', 1, 20),
(223, 'PANTONE 650 ', '#bfc6d1', 1, 20),
(224, 'PANTONE 652 ', '#6d87a8', 1, 41),
(225, 'PANTONE 678 ', '#eaccce', 1, 29),
(226, 'PANTONE 679 ', '#e5bfc6', 1, 29),
(227, 'PANTONE 680 ', '#d39eaf', 1, 31),
(228, 'PANTONE 692 ', '#e8bfba', 1, 30),
(229, 'PANTONE 693 ', '#dba8a5', 1, 30),
(230, 'PANTONE 694 ', '#c98c8c', 1, 33),
(231, 'PANTONE 698 ', '#f7d1cc', 1, 30),
(232, 'PANTONE 701 ', '#e8878e', 1, 30),
(233, 'PANTONE 702 ', '#d6606d', 1, 14),
(234, 'PANTONE 801 ', '#00aacc', 1, 11),
(235, 'PANTONE 802 ', '#60dd49', 1, 51),
(236, 'PANTONE 803 ', '#ffed38', 1, 7),
(237, 'PANTONE 804 ', '#ff9338', 1, 25),
(238, 'PANTONE 805 ', '#f95951', 1, 25),
(239, 'PANTONE 806 ', '#ff0093', 1, 52),
(240, 'PANTONE Black ', '#3d332b', 1, 24),
(241, 'PANTONE Black 4 ', '#3d3023', 1, 24),
(242, 'PANTONE Black 6 ', '#1c2630', 1, 24),
(243, 'PANTONE Blue 072 ', '#380096', 1, 36),
(244, 'PANTONE Cool Gray 1 ', '#e8e2d6', 1, 20),
(245, 'PANTONE Cool Gray 10 ', '#777772', 1, 20),
(246, 'PANTONE Cool Gray 11 ', '#686663', 1, 20),
(247, 'PANTONE Cool Gray 2 ', '#ddd8ce', 1, 20),
(248, 'PANTONE Cool Gray 3 ', '#d3cec4', 1, 20),
(249, 'PANTONE Cool Gray 4 ', '#c4c1ba', 1, 20),
(250, 'PANTONE Cool Gray 5 ', '#bab7af', 1, 20),
(251, 'PANTONE Cool Gray 6 ', '#b5b2aa', 1, 20),
(252, 'PANTONE Cool Gray 7 ', '#a5a39e', 1, 20),
(253, 'PANTONE Cool Gray 8 ', '#9b9993', 1, 20),
(254, 'PANTONE Cool Gray 9 ', '#8c8984', 1, 20),
(255, 'PANTONE Green ', '#00af93', 1, 45),
(256, 'PANTONE Orange 021 ', '#ef6b00', 1, 25),
(257, 'PANTONE Process Black ', '#211e1c', 1, 24),
(258, 'PANTONE Process Blue ', '#0091c9', 1, 11),
(259, 'PANTONE Process Cyan ', '#00a5d1', 1, 11),
(260, 'PANTONE Process Magenta ', '#d6026b', 1, 39),
(261, 'PANTONE Process Yellow ', '#f7e214', 1, 7),
(262, 'PANTONE Purple ', '#b730b5', 1, 36),
(263, 'PANTONE Red 032 ', '#ef2b2d', 1, 32),
(264, 'PANTONE Reflex Blue ', '#0c1c8c', 1, 4),
(265, 'PANTONE Rhodamine Red ', '#ed0091', 1, 39),
(266, 'PANTONE Rubine Red ', '#d10056', 1, 39),
(267, 'PANTONE Warm Grey 1 ', '#e5dbcc', 1, 20),
(268, 'PANTONE Warm Grey 10 ', '#827263', 1, 20),
(269, 'PANTONE Warm Grey 11 ', '#6d5e51', 1, 20),
(270, 'PANTONE Warm Grey 2 ', '#ddd1c1', 1, 20),
(271, 'PANTONE Warm Grey 3 ', '#ccc1b2', 1, 20),
(272, 'PANTONE Warm Grey 4 ', '#c1b5a5', 1, 20),
(273, 'PANTONE Warm Grey 5 ', '#b5a899', 1, 20),
(274, 'PANTONE Warm Grey 6 ', '#afa393', 1, 20),
(275, 'PANTONE Warm Grey 7 ', '#a39687', 1, 20),
(276, 'PANTONE Warm Grey 8 ', '#96897a', 1, 20),
(277, 'PANTONE Warm Grey 9 ', '#8c7f70', 1, 20),
(278, 'PANTONE Warm Red ', '#f93f26', 1, 25),
(279, 'PANTONE Warm Red 2X ', '#e03a00', 1, 25),
(280, 'PANTONE Yellow ', '#fce016', 1, 7);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `colores_pantone`
--
ALTER TABLE `colores_pantone`
  ADD PRIMARY KEY (`id_color_pantone`),
  ADD KEY `fk_categoriaPantone_1_idx` (`fk_id_categoria_pantone_1`),
  ADD KEY `fk_colores_3_idx` (`fk_id_color_3`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `colores_pantone`
--
ALTER TABLE `colores_pantone`
  MODIFY `id_color_pantone` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `colores_pantone`
--
ALTER TABLE `colores_pantone`
  ADD CONSTRAINT `fk_categoriaPantone_1` FOREIGN KEY (`fk_id_categoria_pantone_1`) REFERENCES `categorias_pantone` (`id_categoria_pantone`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_colores_3` FOREIGN KEY (`fk_id_color_3`) REFERENCES `color` (`id_color`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
