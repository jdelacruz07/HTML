-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 09-04-2017 a las 23:18:40
-- Versión del servidor: 10.1.13-MariaDB
-- Versión de PHP: 7.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `mi_empresa`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `id_cliente` int(6) NOT NULL,
  `cif` varchar(15) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `empresa` varchar(100) DEFAULT NULL,
  `direccion` text,
  `cp` int(5) UNSIGNED ZEROFILL NOT NULL,
  `pedidos` int(11) NOT NULL DEFAULT '0',
  `logo` varchar(30) DEFAULT NULL,
  `fecha` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`id_cliente`, `cif`, `nombre`, `empresa`, `direccion`, `cp`, `pedidos`, `logo`, `fecha`) VALUES
(1, '3245444-B', 'Luis', 'luxStore', 'Av Diagonal 435, nº 6', 08036, 10, 'pepe.jpg', '2017-04-08'),
(2, '4564346-R', 'Marta', 'marStore', 'C/ Castillejos, nº 35 6-5', 08400, 12, 'mixa.jpg', '2017-04-09'),
(3, '2345363-R', 'Keyla', 'Bar Veleta', 'Av Meridiana nº 400', 08036, 3, NULL, '2017-04-07'),
(4, '34533678L', 'Carlos', 'Xerox', NULL, 08010, 0, 'xerox.jpg', '2017-04-08');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `productos`
--

CREATE TABLE `productos` (
  `id_producto` int(6) NOT NULL,
  `id_cliente` int(6) NOT NULL,
  `nombre` varchar(40) DEFAULT NULL,
  `precio_unidad` float(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `productos`
--

INSERT INTO `productos` (`id_producto`, `id_cliente`, `nombre`, `precio_unidad`) VALUES
(1, 1, 'Mesa', 170.90),
(2, 1, 'Sofá', 623.45),
(5, 2, 'Silla', 40.50);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`id_cliente`),
  ADD UNIQUE KEY `cif` (`cif`);

--
-- Indices de la tabla `productos`
--
ALTER TABLE `productos`
  ADD PRIMARY KEY (`id_producto`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `id_cliente` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT de la tabla `productos`
--
ALTER TABLE `productos`
  MODIFY `id_producto` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
