-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Servidor: custsql-ipg118.eigbox.net
-- Tiempo de generación: 05-01-2020 a las 17:22:14
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
-- Estructura de tabla para la tabla `estados_actividad`
--

CREATE TABLE `estados_actividad` (
  `id_estados_actividad` int(11) NOT NULL,
  `nombre_estado` varchar(45) COLLATE utf8_spanish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `estados_actividad`
--

INSERT INTO `estados_actividad` (`id_estados_actividad`, `nombre_estado`) VALUES
(1, 'Pendiente'),
(2, 'En Proceso'),
(3, 'En Espera'),
(4, 'Finalizado'),
(5, 'Atrazado'),
(6, 'Activo'),
(7, 'Transitivo'),
(8, 'Inactivo'),
(9, 'Confirmado'),
(10, 'Sin Confirmar'),
(11, 'Cancelado'),
(12, 'Habilitado'),
(13, 'Suspendido'),
(14, 'Dado de baja'),
(15, 'Verificado'),
(16, 'Actualizado'),
(17, 'Aprobado'),
(18, 'Desaprobado'),
(19, 'Operativo'),
(20, 'En reparación'),
(21, 'No Operativo'),
(22, 'Programado'),
(23, 'Reprogramado'),
(24, 'Prioridad Alta'),
(25, 'Prioridad Baja'),
(26, 'Urgente'),
(27, 'Muy Urgente'),
(28, 'Enviado'),
(29, 'Recibido'),
(30, 'Optimo'),
(31, 'Defectuoso'),
(32, 'Incompleto'),
(33, 'Completo'),
(34, 'Manchado'),
(35, 'Quemado'),
(36, 'Otro Problemaa'),
(37, 'Ningun Problema');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `estados_actividad`
--
ALTER TABLE `estados_actividad`
  ADD PRIMARY KEY (`id_estados_actividad`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `estados_actividad`
--
ALTER TABLE `estados_actividad`
  MODIFY `id_estados_actividad` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
