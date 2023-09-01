-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 07:51:20
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
-- Estructura de tabla para la tabla `color`
--

CREATE TABLE `color` (
  `id_color` int(11) NOT NULL,
  `color` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `codigo_hex` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `color`
--

INSERT INTO `color` (`id_color`, `color`, `codigo_hex`) VALUES
(1, 'Arena', NULL),
(2, 'Azul Marino', NULL),
(3, 'Azul', NULL),
(4, 'Azul royal', NULL),
(5, 'Azul Acero', NULL),
(6, 'Azul Cobalto', NULL),
(7, 'Amarillo', NULL),
(8, 'Amarillo Claro', NULL),
(9, 'Amarillo Pastel', NULL),
(10, 'Ceramic', NULL),
(11, 'Celeste', NULL),
(12, 'Crudo', NULL),
(13, 'Caqui', NULL),
(14, 'Coral', NULL),
(15, 'Chicle', NULL),
(16, 'Charcol', NULL),
(17, 'Dorado', NULL),
(18, 'Ecru', NULL),
(19, 'Fresa', NULL),
(20, 'Gris', NULL),
(21, 'Grafito', NULL),
(22, 'Marrón', NULL),
(23, 'Morado', NULL),
(24, 'Negro', NULL),
(25, 'Naranja', NULL),
(26, 'Navy', NULL),
(27, 'Plateado', NULL),
(28, 'Royal', NULL),
(29, 'Rosado Claro', NULL),
(30, 'Rosado Bebé', NULL),
(31, 'Rosado', NULL),
(32, 'Rojo', NULL),
(33, 'Rosa', NULL),
(34, 'Sky', NULL),
(35, 'Verde', NULL),
(36, 'Violeta', NULL),
(37, 'Verde Militar', NULL),
(38, 'Verde Limon', NULL),
(39, 'Fucsia', NULL),
(40, 'Lila', NULL),
(41, 'Acero', NULL),
(42, 'Aqua', NULL),
(43, 'Turqueza', NULL),
(44, 'Verde Pastel', NULL),
(45, 'Verde Hade', NULL),
(46, 'Verde manzana', NULL),
(47, 'Verde Limón', NULL),
(48, 'Moztaza', NULL),
(49, 'Piel', NULL),
(50, 'Melón', NULL),
(51, 'Verde Neón', NULL),
(52, 'Fucsia Neón', NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id_color`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `color`
--
ALTER TABLE `color`
  MODIFY `id_color` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
