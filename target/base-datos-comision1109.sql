-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-12-2021 a las 17:14:08
-- Versión del servidor: 10.4.21-MariaDB
-- Versión de PHP: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `comision1109`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `oradores`
--

CREATE TABLE `oradores` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `exposicion` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `oradores`
--

INSERT INTO `oradores` (`id`, `nombres`, `apellidos`, `exposicion`) VALUES
(1, 'Bill ', 'Gates', 'Javascript y Negocios'),
(2, 'Steve', 'Jobs', 'React'),
(3, 'Ada', 'Lovelace', 'Matematica y Negocios'),
(4, 'Ken ', 'Schwaber  ', 'Scrum y Planificacion de proyectos'),
(5, 'Macarena', 'Velasquez', 'Liderazgo y Equipos de Trabajo'),
(6, 'Susana', ' Cipriota', 'Diversidad e Inclusion'),
(7, 'Pilar', 'Lacassette', 'IT Recruitment'),
(8, 'Javier', 'Tortonesse', 'Conseguir el primer empleo en Testing '),
(9, 'Samuel', 'Torosibia', 'Seguridad Informatica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `participantes`
--

CREATE TABLE `participantes` (
  `id` int(11) NOT NULL,
  `nombres` varchar(100) DEFAULT NULL,
  `apellidos` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `telefono` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `participantes`
--

INSERT INTO `participantes` (`id`, `nombres`, `apellidos`, `email`, `telefono`) VALUES
(1, 'Ramiro', 'Piza', 'rami@gmail.com', '1144443322'),
(3, 'Uriel', 'Morfulis', 'crm@gmail.com', '48975641'),
(6, 'Joaquin', 'Alvares', 'joaquin@gmail.com', '56478931'),
(25, 'Carlos', 'Ramiris', 'esteban@hotmail.com', '1155556699'),
(27, 'Carolina', 'Cambrol', 'caro@gmail.com', '1123349874'),
(30, 'Javier', 'Mendez', 'javi@gmail.com', '1136987412'),
(41, 'Camilo', 'Bello', 'camilo@gmail.com', '2147483647'),
(42, 'Raul', 'Diverio', 'rauld@gmail.com', '1155556699'),
(43, 'Carlos', 'RA', 'racl@gmail.com', '15161549'),
(45, 'Denis', 'Quaid', 'denisq@gmail.com', '1565478912'),
(46, 'Ava', 'Gardner', 'avag@gmail.com', '12345678934');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `password`) VALUES
(1, 'ramip@gmail.com', '123456');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `oradores`
--
ALTER TABLE `oradores`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `participantes`
--
ALTER TABLE `participantes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `oradores`
--
ALTER TABLE `oradores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `participantes`
--
ALTER TABLE `participantes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
