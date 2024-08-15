-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-08-2024 a las 00:53:29
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `control_monedas`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_monedas`
--

CREATE TABLE `t_monedas` (
  `ID_moneda` int(11) NOT NULL,
  `Nombre_moneda` varchar(50) NOT NULL,
  `Simbolo_moneda` varchar(5) NOT NULL,
  `Equiv_dolar` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_monedas`
--

INSERT INTO `t_monedas` (`ID_moneda`, `Nombre_moneda`, `Simbolo_moneda`, `Equiv_dolar`) VALUES
(1, 'Dólar estadounidense', '$', 1),
(2, 'Euro', '€', 0.92),
(3, 'Libra esterlina', '£', 0.78),
(4, 'Yen japonés', '¥', 153.75),
(5, 'Won surcoreano', '₩', 1382.04),
(6, 'Yuan chino', '¥', 7.26),
(7, 'Rupia india', '₹', 83.73),
(8, 'Real brasileño', 'R$', 5.65),
(9, 'Peso mexicano', '$', 18.44),
(10, 'Peso argentino', '$', 928.86),
(11, 'Franco suizo', 'CHF', 0.88),
(12, 'Dólar canadiense', 'CA$', 1.38),
(13, 'Dólar australiano', 'AU$', 1.52),
(14, 'Rublo ruso', '₽', 85.83),
(15, 'Lira turca', '₺', 33.01),
(16, 'Corona sueca', 'kr', 10.81),
(17, 'Forinto húngaro', 'Ft', 359.55),
(18, 'Zloty polaco', 'zł', 3.93),
(19, 'Corona checa', 'Kč', 23.32),
(20, 'Leu rumano', 'lei', 4.58),
(21, 'Rand sudafricano', 'R', 18.27),
(22, 'Dinar argelino', 'د.ج', 134.3),
(23, 'Dírham de los Emiratos Árabes Unidos', 'د.إ', 3.67),
(24, 'Riyal saudí', 'ريال', 3.75),
(25, 'Rupia indonesia', 'Rp', 16283.2),
(26, 'Bolivar', 'Bs', 40);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_monedas_paises`
--

CREATE TABLE `t_monedas_paises` (
  `t_monedas_paises` int(11) NOT NULL,
  `ID_moneda` int(11) NOT NULL,
  `ID_pais` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_monedas_paises`
--

INSERT INTO `t_monedas_paises` (`t_monedas_paises`, `ID_moneda`, `ID_pais`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 3),
(4, 4, 4),
(5, 5, 5),
(6, 6, 6),
(7, 7, 7),
(8, 8, 8),
(9, 9, 9),
(10, 10, 10),
(11, 11, 11),
(12, 12, 12),
(13, 13, 13),
(14, 14, 14),
(15, 15, 15),
(16, 16, 16),
(17, 17, 17),
(18, 18, 18),
(19, 19, 19),
(20, 20, 20),
(21, 21, 21),
(22, 22, 22),
(23, 23, 23),
(24, 24, 24),
(25, 25, 25),
(26, 26, 26);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_nivel_acceso`
--

CREATE TABLE `t_nivel_acceso` (
  `ID_nivel_acceso` int(11) NOT NULL,
  `Nombre_acceso` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_nivel_acceso`
--

INSERT INTO `t_nivel_acceso` (`ID_nivel_acceso`, `Nombre_acceso`) VALUES
(1, 'Administrador'),
(2, 'Mantenimiento'),
(3, 'Consultas'),
(4, 'Usuario');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_paises`
--

CREATE TABLE `t_paises` (
  `ID_pais` int(11) NOT NULL,
  `Nombre_pais` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_paises`
--

INSERT INTO `t_paises` (`ID_pais`, `Nombre_pais`) VALUES
(1, 'Estados Unidos'),
(2, 'Unión Europea'),
(3, 'Reino Unido'),
(4, 'Japón'),
(5, 'Corea del Sur'),
(6, 'China'),
(7, 'India'),
(8, 'Brasil'),
(9, 'México'),
(10, 'Argentina'),
(11, 'Suiza'),
(12, 'Canadá'),
(13, 'Australia'),
(14, 'Rusia'),
(15, 'Turquía'),
(16, 'Suecia'),
(17, 'Hungría'),
(18, 'Polonia'),
(19, 'República Checa'),
(20, 'Rumania'),
(21, 'Sudáfrica'),
(22, 'Argelia'),
(23, 'Emiratos Árabes Unidos'),
(24, 'Arabia Saudita'),
(25, 'Indonesia'),
(26, 'Venezuela');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_soporte`
--

CREATE TABLE `t_soporte` (
  `ID_soporte` int(11) NOT NULL,
  `ID_usuario` int(11) DEFAULT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Asunto` varchar(100) NOT NULL,
  `Correo` varchar(100) NOT NULL,
  `Mensaje` varchar(200) NOT NULL,
  `Creado_el` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_soporte`
--

INSERT INTO `t_soporte` (`ID_soporte`, `ID_usuario`, `Nombre`, `Asunto`, `Correo`, `Mensaje`, `Creado_el`) VALUES
(1, NULL, 'Pedro', 'Error en conversion', 'pedrito@gmail.com', 'Como dice el mensaje, al tratar de convertir una moneda me aparece un error. que sucede?', '2024-07-30 00:31:23'),
(2, NULL, 'Juan', 'moneda desactualizada', 'juanito@gmail.com', 'el precio de dolar a bolivar no está actualizado y evita que se hagan correctamente las conversiones', '2024-07-30 00:39:05');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuarios`
--

CREATE TABLE `t_usuarios` (
  `ID_usuario` int(11) NOT NULL,
  `ID_nivel_acceso` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contraseña` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_usuarios`
--

INSERT INTO `t_usuarios` (`ID_usuario`, `ID_nivel_acceso`, `Nombre`, `Email`, `Contraseña`) VALUES
(1, 1, 'Antonio Jose Arias', 'tonihiguera16.11@gmail.com', '$2y$10$ze9SKm9qkuAf9kiHsK5dM.labPDn31HuhDenqzG6KSzvZz7cuKkTS'),
(7, 4, 'adhakj', 'jsha@gmai.com', '$2y$10$UADX94Kzmb/4rp8runnAxu8lfQ8199KuQtxeOD58njfq1ceUicwrG'),
(8, 4, 'Abril', 'abrilita@gmail.com', '$2y$10$pQ4KHOgDYnSTD1sRim.upugYGtQeqLzpLEeWidg06eZXCdVFHzxjG'),
(9, 2, 'Misel', 'Misel@gmail.com', '$2y$10$MGd/zaCRlki.8T2PvMQcxucYL5gT/A5CgrTYGT.o/n.b7SPR8tTmG'),
(10, 3, 'Daniel', 'Daniel@gmail.com', '$2y$10$LLKM3zGpAtwRIq09H1Yec.Pb8MpksDwSX48hIriu.NwVfBtKSznxC'),
(11, 4, 'Carlos', 'dukelie@gmail.com', '$2y$10$KLBRMDS4iHgi.fgxNbyCEefq50JGtViGZIm4q58FR190GHw9olNUW');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `t_usuario_monedas_favoritas`
--

CREATE TABLE `t_usuario_monedas_favoritas` (
  `ID_moneda_favorita` int(11) NOT NULL,
  `ID_usuario` int(11) NOT NULL,
  `ID_moneda` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish2_ci;

--
-- Volcado de datos para la tabla `t_usuario_monedas_favoritas`
--

INSERT INTO `t_usuario_monedas_favoritas` (`ID_moneda_favorita`, `ID_usuario`, `ID_moneda`) VALUES
(1, 8, 26),
(2, 8, 10),
(3, 11, 13),
(4, 10, 8),
(5, 9, 19),
(6, 9, 25),
(7, 1, 22),
(8, 10, 9);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `t_monedas`
--
ALTER TABLE `t_monedas`
  ADD PRIMARY KEY (`ID_moneda`);

--
-- Indices de la tabla `t_monedas_paises`
--
ALTER TABLE `t_monedas_paises`
  ADD PRIMARY KEY (`t_monedas_paises`),
  ADD KEY `ID_moneda` (`ID_moneda`),
  ADD KEY `ID_pais` (`ID_pais`);

--
-- Indices de la tabla `t_nivel_acceso`
--
ALTER TABLE `t_nivel_acceso`
  ADD PRIMARY KEY (`ID_nivel_acceso`);

--
-- Indices de la tabla `t_paises`
--
ALTER TABLE `t_paises`
  ADD PRIMARY KEY (`ID_pais`);

--
-- Indices de la tabla `t_soporte`
--
ALTER TABLE `t_soporte`
  ADD PRIMARY KEY (`ID_soporte`),
  ADD KEY `ID_usuario` (`ID_usuario`);

--
-- Indices de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD PRIMARY KEY (`ID_usuario`),
  ADD KEY `ID_nivel_acceso` (`ID_nivel_acceso`);

--
-- Indices de la tabla `t_usuario_monedas_favoritas`
--
ALTER TABLE `t_usuario_monedas_favoritas`
  ADD PRIMARY KEY (`ID_moneda_favorita`),
  ADD KEY `ID_usuario` (`ID_usuario`),
  ADD KEY `ID_moneda` (`ID_moneda`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `t_monedas`
--
ALTER TABLE `t_monedas`
  MODIFY `ID_moneda` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `t_monedas_paises`
--
ALTER TABLE `t_monedas_paises`
  MODIFY `t_monedas_paises` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `t_nivel_acceso`
--
ALTER TABLE `t_nivel_acceso`
  MODIFY `ID_nivel_acceso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `t_paises`
--
ALTER TABLE `t_paises`
  MODIFY `ID_pais` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT de la tabla `t_soporte`
--
ALTER TABLE `t_soporte`
  MODIFY `ID_soporte` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  MODIFY `ID_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `t_usuario_monedas_favoritas`
--
ALTER TABLE `t_usuario_monedas_favoritas`
  MODIFY `ID_moneda_favorita` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `t_monedas_paises`
--
ALTER TABLE `t_monedas_paises`
  ADD CONSTRAINT `t_monedas_paises_ibfk_1` FOREIGN KEY (`ID_pais`) REFERENCES `t_paises` (`ID_pais`),
  ADD CONSTRAINT `t_monedas_paises_ibfk_2` FOREIGN KEY (`ID_moneda`) REFERENCES `t_monedas` (`ID_moneda`);

--
-- Filtros para la tabla `t_soporte`
--
ALTER TABLE `t_soporte`
  ADD CONSTRAINT `t_soporte_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `t_usuarios` (`ID_usuario`);

--
-- Filtros para la tabla `t_usuarios`
--
ALTER TABLE `t_usuarios`
  ADD CONSTRAINT `t_usuarios_ibfk_1` FOREIGN KEY (`ID_nivel_acceso`) REFERENCES `t_nivel_acceso` (`ID_nivel_acceso`);

--
-- Filtros para la tabla `t_usuario_monedas_favoritas`
--
ALTER TABLE `t_usuario_monedas_favoritas`
  ADD CONSTRAINT `t_usuario_monedas_favoritas_ibfk_1` FOREIGN KEY (`ID_usuario`) REFERENCES `t_usuarios` (`ID_usuario`),
  ADD CONSTRAINT `t_usuario_monedas_favoritas_ibfk_2` FOREIGN KEY (`ID_moneda`) REFERENCES `t_monedas` (`ID_moneda`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
