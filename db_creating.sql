-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 28-10-2018 a las 03:00:22
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_creating`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cw_mensajes`
--

CREATE TABLE `cw_mensajes` (
  `id` int(11) UNSIGNED NOT NULL,
  `user` varchar(16) NOT NULL,
  `msg` longtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cw_online`
--

CREATE TABLE `cw_online` (
  `id` int(10) UNSIGNED NOT NULL,
  `user` varchar(16) CHARACTER SET latin1 NOT NULL,
  `stt` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cw_users`
--

CREATE TABLE `cw_users` (
  `id` int(11) NOT NULL,
  `user` varchar(20) CHARACTER SET latin1 NOT NULL,
  `pass` varchar(50) CHARACTER SET latin1 NOT NULL,
  `email` varchar(50) CHARACTER SET latin1 NOT NULL,
  `age` varchar(2) CHARACTER SET latin1 NOT NULL,
  `sex` varchar(1) CHARACTER SET latin1 NOT NULL,
  `priv` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `cw_users`
--

INSERT INTO `cw_users` (`id`, `user`, `pass`, `email`, `age`, `sex`, `priv`) VALUES
(1, 'AlleN_WalkeR', 'e67feb1139e2f0a2dac415891858a222', 'neftaligv92@gmail.com', '25', 'm', 0),
(2, 'admin', '0b4e7a0e5fe84ad35fb5f95b9ceeac79', 'neftali.garcia@eprfm.ma.rimed.cu', '21', 'f', 0),
(3, 'root', '47bce5c74f589f4867dbd57e9ca9f808', 'root@eprfm.ma.rimed.cu', '34', 'm', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `cw_mensajes`
--
ALTER TABLE `cw_mensajes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cw_online`
--
ALTER TABLE `cw_online`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `cw_users`
--
ALTER TABLE `cw_users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `cw_mensajes`
--
ALTER TABLE `cw_mensajes`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cw_online`
--
ALTER TABLE `cw_online`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `cw_users`
--
ALTER TABLE `cw_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
