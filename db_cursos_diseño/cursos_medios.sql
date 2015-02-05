-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 05-02-2015 a las 13:56:49
-- Versión del servidor: 5.6.17
-- Versión de PHP: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cursos_medios`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiantes`
--

CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_estudiante`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Felipe', 'Gacía López', 'pipegarcial@hotmail.com'),
(2, 'Maria Camila', 'Daza Lozano', 'makaka@hotmail.com'),
(3, 'Men', 'Garla Mendez', 'mendez@gmail.com'),
(4, 'Rubio', 'Benito York', 'york@gmail.com'),
(5, 'Mancia', 'Garla Mendez', 'as@gmail.com'),
(6, 'caballero', 'Benito York', 'yoadrk@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE IF NOT EXISTS `estudiante_materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id_estudiante` (`id_estudiante`,`id_materia`),
  KEY `id_estudiante_idx` (`id_estudiante`),
  KEY `id_materia_idx` (`id_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id`, `id_estudiante`, `id_materia`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 1),
(4, 4, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materia`
--

CREATE TABLE IF NOT EXISTS `materia` (
  `id_materia` int(11) NOT NULL AUTO_INCREMENT,
  `codigo_materia` int(11) NOT NULL,
  `nombre_materia` varchar(45) NOT NULL,
  `id_profesor` int(11) NOT NULL,
  PRIMARY KEY (`id_materia`),
  KEY `id_profesor_idx` (`id_profesor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 5432, 'Programación web', 1),
(2, 12345, 'Programación en redes', 2);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `id_notas` int(11) NOT NULL AUTO_INCREMENT,
  `nombre_nota` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id_notas`),
  KEY `id_materia_idx` (`id_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `nota`
--

INSERT INTO `nota` (`id_notas`, `nombre_nota`, `porcentaje`, `id_materia`) VALUES
(1, 'Quiz Uno', 0.2, 1),
(2, 'Final', 0.8, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `notas_estudiante`
--

CREATE TABLE IF NOT EXISTS `notas_estudiante` (
  `id_nota_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  `id_notas` int(11) NOT NULL,
  `float` float DEFAULT NULL,
  PRIMARY KEY (`id_nota_estudiante`),
  KEY `id_estudiante_idx` (`id_estudiante`),
  KEY `id_materia_idx` (`id_materia`),
  KEY `id_nota_idx` (`id_notas`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `notas_estudiante`
--

INSERT INTO `notas_estudiante` (`id_nota_estudiante`, `id_estudiante`, `id_materia`, `id_notas`, `float`) VALUES
(1, 1, 1, 1, 5),
(2, 1, 1, 2, 5),
(3, 3, 1, 1, 2),
(4, 3, 1, 2, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `profesor`
--

CREATE TABLE IF NOT EXISTS `profesor` (
  `id_profesor` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `apellidos` varchar(45) NOT NULL,
  `correo` varchar(45) NOT NULL,
  PRIMARY KEY (`id_profesor`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Hector Jaime ', 'Mejía Pineda', 'hecotrla@hotmail.com'),
(2, 'Jose Andrés ', 'Moncada Albarado', 'monk@hotmail.com');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `estudiante_materia`
--
ALTER TABLE `estudiante_materia`
  ADD CONSTRAINT `id_estudiante` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_materia` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `materia`
--
ALTER TABLE `materia`
  ADD CONSTRAINT `id_profesor` FOREIGN KEY (`id_profesor`) REFERENCES `profesor` (`id_profesor`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `nota`
--
ALTER TABLE `nota`
  ADD CONSTRAINT `id_materia_nota` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `notas_estudiante`
--
ALTER TABLE `notas_estudiante`
  ADD CONSTRAINT `id_estudiante_notas` FOREIGN KEY (`id_estudiante`) REFERENCES `estudiantes` (`id_estudiante`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_materia_notas` FOREIGN KEY (`id_materia`) REFERENCES `materia` (`id_materia`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `id_notas_notas` FOREIGN KEY (`id_notas`) REFERENCES `nota` (`id_notas`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
