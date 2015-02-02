-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 02-02-2015 a las 07:19:31
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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Volcado de datos para la tabla `estudiantes`
--

INSERT INTO `estudiantes` (`id_estudiante`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Camilo Arcel', 'Cantral Ads', 'ads@gmail.com'),
(2, 'Grilo', 'Jai Gamel', 'gamel@gmail.com'),
(3, 'Felipe ', 'García López', 'pipegarcial@hotmail.com'),
(4, 'Pepita', 'Perez Cachonda', 'pepis@gmail.com'),
(5, 'Oscar', 'Vergara García', 'oscar@gmail.com'),
(6, 'Sofía', 'García Vergara', 'sofia@gmail.com'),
(7, 'Ronaldinho', 'Todo Poderoso', 'ronal@gmail.com'),
(8, 'Carmen', 'Valencia Daza', 'daza@gmail.com'),
(9, 'Ana María', 'Valencia Daza', 'daza@gmail.com'),
(10, 'Reinaldo', 'Garlo Valancha', 'garlo@gmail.com'),
(11, 'Terro', 'Analdo Garza', 'analda@gmail.com');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `estudiante_materia`
--

CREATE TABLE IF NOT EXISTS `estudiante_materia` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_estudiante` int(11) NOT NULL,
  `id_materia` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_estudiante_idx` (`id_estudiante`),
  KEY `id_materia_idx` (`id_materia`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `estudiante_materia`
--

INSERT INTO `estudiante_materia` (`id`, `id_estudiante`, `id_materia`) VALUES
(1, 3, 2),
(2, 4, 1),
(3, 3, 4),
(4, 4, 3);

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcado de datos para la tabla `materia`
--

INSERT INTO `materia` (`id_materia`, `codigo_materia`, `nombre_materia`, `id_profesor`) VALUES
(1, 1234, 'Programación Web', 1),
(2, 4321, 'Interacción Hombre Computador - I', 2),
(3, 5642, 'Programación en Red', 3),
(4, 5214, 'Diagramación y Tipografía', 4),
(5, 5642, 'Diseño 4D', 3),
(6, 5214, 'Proyecto de Grado - I', 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota`
--

CREATE TABLE IF NOT EXISTS `nota` (
  `id_nota` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(45) NOT NULL,
  `porcentaje` float NOT NULL,
  PRIMARY KEY (`id_nota`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `nota_estudiante`
--

CREATE TABLE IF NOT EXISTS `nota_estudiante` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

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
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `profesor`
--

INSERT INTO `profesor` (`id_profesor`, `nombre`, `apellidos`, `correo`) VALUES
(1, 'Hector Jaime ', 'Mejía Pineda', 'hector@gmail.com'),
(2, 'Juan Manuel', 'Salamanca Alborado', 'sala@gmail.com'),
(3, 'Jose Andrés ', 'Moncada Cardona', 'moncada@gmail.com'),
(4, 'Mauricio', 'García Cordoba', 'moncada@gmail.com');

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
