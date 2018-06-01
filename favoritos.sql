-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2018 a las 05:48:02
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 5.6.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `favoritos`
--
CREATE DATABASE `favoritos`;
-- --------------------------------------------------------
USE `favoritos`;
--
-- Estructura de tabla para la tabla `favoritos`
--

CREATE TABLE `favoritos` (
  `usuario` varchar(40) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `titulo` varchar(40) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `categoria` varchar(40) DEFAULT NULL,
  `comentario` varchar(200) DEFAULT NULL,
  `valoracion` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `favoritos`
--

INSERT INTO `favoritos` (`usuario`, `contrasena`, `titulo`, `direccion`, `categoria`, `comentario`, `valoracion`) VALUES
('admin', 'admin', 'google a', 'http://google.com', 'Personal', 'un buen buscador', 20),
('', '', 'pe', 'pe', 'Ocio', 'oe', 1),
('admin', 'admin', 'oe', 'oe', 'Tecnologia', 'oe', 11),
('admin', 'admin', 'oe', 'oe', 'Salud', 'oe', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario` varchar(40) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `nombre` varchar(40) NOT NULL,
  `apellido` varchar(40) NOT NULL,
  `edad` int(2) DEFAULT NULL,
  `permisos` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`usuario`, `contrasena`, `nombre`, `apellido`, `edad`, `permisos`) VALUES
('admin', 'admin', 'Xiomara', 'Romani', 22, 1),
('xvromani', 'xvromani', 'Xiomy', 'Romani', 25, 2),
('oe', 'oe', 'Xiomy', 'Romani', 27, 2),
('oe11', 'oe1', 'Xiomy', 'Romani', 25, 2),
('nicolas', 'nicolas', 'Nicolas', 'Toquica', 1, 2);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
