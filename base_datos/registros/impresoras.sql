-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 16:55:39
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
-- Estructura de tabla para la tabla `impresoras`
--

CREATE TABLE `impresoras` (
  `id_impresora` int(11) NOT NULL,
  `tipo_impresora` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `marca_impresora` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `serie_impresora` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `formato_impresion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `ancho_bandeja` int(11) DEFAULT NULL,
  `material_impresion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `tipo_impresion` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL,
  `descripcion` varchar(230) COLLATE utf8_spanish_ci DEFAULT NULL,
  `fecha_compra` datetime DEFAULT NULL,
  `fk_id_estado_actividad_25` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `impresoras`
--

INSERT INTO `impresoras` (`id_impresora`, `tipo_impresora`, `marca_impresora`, `serie_impresora`, `formato_impresion`, `ancho_bandeja`, `material_impresion`, `tipo_impresion`, `descripcion`, `fecha_compra`, `fk_id_estado_actividad_25`) VALUES
(1, 'Ploter', 'Epson', '7880', 'Rollo', 61, 'Mica / bond', 'Tinta', 'Impresora de segundo uso y con muchas fallas', NULL, 19),
(2, 'Ploter', 'Epson', '7840', 'Rollo', 61, 'Mica / bond', 'Tinta', 'Impresora de segundo uso y con muchas fallas', NULL, 19);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `impresoras`
--
ALTER TABLE `impresoras`
  ADD PRIMARY KEY (`id_impresora`),
  ADD KEY `fk_estadoActividad_25_idx` (`fk_id_estado_actividad_25`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `impresoras`
--
ALTER TABLE `impresoras`
  MODIFY `id_impresora` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `impresoras`
--
ALTER TABLE `impresoras`
  ADD CONSTRAINT `fk_estadoActividad_25` FOREIGN KEY (`fk_id_estado_actividad_25`) REFERENCES `estados_actividad` (`id_estados_actividad`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
