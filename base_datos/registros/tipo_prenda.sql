-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 17:16:04
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
-- Estructura de tabla para la tabla `tipo_prenda`
--

CREATE TABLE `tipo_prenda` (
  `id_tipo_prenda` int(11) NOT NULL,
  `nombre_tipo_prenda` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion_tipo_prenda` varchar(300) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_registro` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_prenda`
--

INSERT INTO `tipo_prenda` (`id_tipo_prenda`, `nombre_tipo_prenda`, `descripcion_tipo_prenda`, `fecha_registro`) VALUES
(1, 'Polo Básico', NULL, NULL),
(2, 'Polo Manga Rangla', NULL, NULL),
(3, 'Polo Canesu', NULL, NULL),
(4, 'Polo Covertura', NULL, NULL),
(5, 'Polo Manga cero', NULL, NULL),
(6, 'Polo Manga larga', NULL, NULL),
(7, 'Body', NULL, NULL),
(8, 'Enteriso', NULL, NULL),
(9, 'Vestido', NULL, NULL),
(10, 'Moda', NULL, NULL),
(11, 'Leggings', NULL, NULL),
(12, 'Leggings corta', NULL, NULL),
(13, 'Chavo', NULL, NULL),
(14, 'Short', NULL, NULL),
(15, 'Babero', NULL, NULL),
(16, 'Casaca', NULL, NULL),
(17, 'Polera', NULL, NULL),
(18, 'Polerón', NULL, NULL),
(19, 'Pantalón', NULL, NULL),
(20, 'Conjunto Polo short', NULL, NULL),
(21, 'Conjunto Polo Pantalón', NULL, NULL),
(22, 'Conjunto Casaca Pantalón', NULL, NULL),
(23, 'Conjunto Polera Pantalón', NULL, NULL);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  ADD PRIMARY KEY (`id_tipo_prenda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `tipo_prenda`
--
ALTER TABLE `tipo_prenda`
  MODIFY `id_tipo_prenda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
