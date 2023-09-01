-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 17:17:16
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
-- Estructura de tabla para la tabla `tipo_telas`
--

CREATE TABLE `tipo_telas` (
  `id_tipo_tela` int(11) NOT NULL,
  `tipo_tela` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `tipo_telas`
--

INSERT INTO `tipo_telas` (`id_tipo_tela`, `tipo_tela`) VALUES
(1, 'Biscoza'),
(2, 'Gamuza'),
(3, 'Jaspeado'),
(4, 'Jersey'),
(5, 'Melange'),
(6, 'Lycrado'),
(7, 'Peinado'),
(8, 'Poliester'),
(9, 'Pyma');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `tipo_telas`
--
ALTER TABLE `tipo_telas`
  ADD PRIMARY KEY (`id_tipo_tela`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
