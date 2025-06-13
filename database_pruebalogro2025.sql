-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 13-06-2025 a las 23:45:22
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `database_pruebalogro2025`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `denuncias`
--

CREATE TABLE `denuncias` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(255) NOT NULL,
  `ubicacion` varchar(150) NOT NULL,
  `estado` varchar(20) DEFAULT 'pendiente',
  `ciudadano` varchar(100) NOT NULL,
  `telefono_ciudadano` varchar(15) NOT NULL,
  `fecha_registro` datetime DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `denuncias`
--

INSERT INTO `denuncias` (`id`, `titulo`, `descripcion`, `ubicacion`, `estado`, `ciudadano`, `telefono_ciudadano`, `fecha_registro`) VALUES
(1, 'Contenedor roto', 'Un contenedor de basura está roto y desperdicia residuos', 'Calle Robles 12', 'pendiente', 'Carlos Rivera', '911111111', '2025-06-13 16:30:01'),
(2, 'Alarma vecinal defectuosa', 'La alarma no suena en emergencias', 'Plaza Libertad', 'en proceso', 'Laura Torres', '9222222', '2025-06-13 16:30:01'),
(3, 'Farola parpadeando', 'Farola parpadea durante la noche', 'Av. Las Palmas', 'pendiente', 'Diego Méndez', '933333333', '2025-06-13 16:30:01'),
(4, 'Arbusto obstruye calle', 'Un arbusto creció y bloquea el paso vehicular', 'Jr. Los Cedros', 'resuelta', 'Elena Duarte', '944444444', '2025-06-13 16:30:01'),
(5, 'Señal de tránsito caída', 'Una señal de pare está en el suelo', 'Esquina Perú y Bolívar', 'pendiente', 'Fernando Bravo', '955555555', '2025-06-13 16:30:01');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `denuncias`
--
ALTER TABLE `denuncias`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `denuncias`
--
ALTER TABLE `denuncias`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
