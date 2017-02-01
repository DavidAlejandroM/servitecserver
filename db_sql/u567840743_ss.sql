
-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 01-02-2017 a las 19:39:19
-- Versión del servidor: 10.0.28-MariaDB
-- Versión de PHP: 5.2.17

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `u567840743_ss`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_accion`
--

CREATE TABLE IF NOT EXISTS `tbl_accion` (
  `acc_idAccion` int(11) NOT NULL AUTO_INCREMENT,
  `acc_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`acc_idAccion`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=6 ;

--
-- Volcado de datos para la tabla `tbl_accion`
--

INSERT INTO `tbl_accion` (`acc_idAccion`, `acc_nombre`) VALUES
(1, 'Retiro'),
(2, 'Reemplazo'),
(3, 'Mantenimiento'),
(4, 'Inventario'),
(5, 'Reubicacion');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_categoria`
--

CREATE TABLE IF NOT EXISTS `tbl_categoria` (
  `cat_idCategoria` int(11) NOT NULL AUTO_INCREMENT,
  `cat_nombre` varchar(100) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`cat_idCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=5 ;

--
-- Volcado de datos para la tabla `tbl_categoria`
--

INSERT INTO `tbl_categoria` (`cat_idCategoria`, `cat_nombre`) VALUES
(1, 'Señal Reglamentaria'),
(2, 'Señal Preventiva'),
(3, 'Señal Informativa'),
(4, 'Señal Duplex');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_estado`
--

CREATE TABLE IF NOT EXISTS `tbl_estado` (
  `est_idEstado` int(11) NOT NULL AUTO_INCREMENT,
  `est_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`est_idEstado`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tbl_estado`
--

INSERT INTO `tbl_estado` (`est_idEstado`, `est_nombre`) VALUES
(1, 'Bueno'),
(2, 'Regular'),
(3, 'Malo');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_reporte`
--

CREATE TABLE IF NOT EXISTS `tbl_reporte` (
  `rep_idReporte` int(11) NOT NULL AUTO_INCREMENT,
  `rep_latitud` double DEFAULT NULL,
  `rep_longitud` double DEFAULT NULL,
  `rep_fecha` datetime DEFAULT NULL,
  `rep_foto` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rep_observaciones` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `rep_senal` int(11) DEFAULT NULL,
  `rep_tablero` int(11) DEFAULT NULL,
  `rep_pedestal` int(11) DEFAULT NULL,
  `rep_anclaje` int(11) DEFAULT NULL,
  `rep_visibilidad` int(11) DEFAULT NULL,
  `rep_accionTomar` int(11) DEFAULT NULL,
  PRIMARY KEY (`rep_idReporte`),
  KEY `senal_idx` (`rep_senal`),
  KEY `tablero_idx` (`rep_tablero`),
  KEY `pedestal_idx` (`rep_pedestal`),
  KEY `anclaje_idx` (`rep_anclaje`),
  KEY `visibilidad_idx` (`rep_visibilidad`),
  KEY `accionTomar_idx` (`rep_accionTomar`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=9 ;

--
-- Volcado de datos para la tabla `tbl_reporte`
--

INSERT INTO `tbl_reporte` (`rep_idReporte`, `rep_latitud`, `rep_longitud`, `rep_fecha`, `rep_foto`, `rep_observaciones`, `rep_senal`, `rep_tablero`, `rep_pedestal`, `rep_anclaje`, `rep_visibilidad`, `rep_accionTomar`) VALUES
(1, 6.2782926, -75.5983361, '2016-12-27 15:17:11', 'hola.jpg', 'hola', 6, 2, 1, 1, 1, 5),
(2, 6.28237722290298, -75.59818507301634, '2016-12-27 15:33:47', 'null', 'No hay nada que decir', 62, 1, 1, 1, 2, 3),
(3, 6.282413932250935, -75.5981072889549, '2016-12-27 16:44:09', 'null', 'Esta bueno el parlante', 64, 2, 2, 2, 2, 5),
(4, 6.2825659, -75.59812069999998, '2016-12-27 16:48:26', '1482875259757.jpg', 'Nada', 9, 2, 2, 2, 2, 3),
(5, 6.2825659, -75.59812069999998, '2016-12-27 16:51:45', 'img/reportes/1482875259757.jpg', 'Nada', 9, 2, 2, 2, 2, 3),
(6, 6.349350987714398, -75.70375560734021, '2016-12-29 00:05:02', 'img/reportes/1482987863580.jpg', 'Hola', 59, 1, 1, 1, 3, 4),
(7, 3.981658575811829, -73.76618140881413, '2016-12-29 17:58:32', 'img/reportes/1483052293792.jpg', 'Probando Acacías', 132, 2, 3, 3, 1, 4),
(8, 3.981658575811829, -73.76618140881413, '2016-12-29 17:58:40', 'img/reportes/1483052293792.jpg', 'Probando Acacías', 132, 2, 3, 3, 1, 4);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_senal`
--

CREATE TABLE IF NOT EXISTS `tbl_senal` (
  `sen_idSenal` int(11) NOT NULL AUTO_INCREMENT,
  `sen_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_codigo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_cat_idCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`sen_idSenal`),
  KEY `sen_cat_idCategoria_idx` (`sen_cat_idCategoria`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=133 ;

--
-- Volcado de datos para la tabla `tbl_senal`
--

INSERT INTO `tbl_senal` (`sen_idSenal`, `sen_nombre`, `sen_icono`, `sen_codigo`, `sen_cat_idCategoria`) VALUES
(1, 'Pare', 'sr-01.png', 'SR-01', 1),
(2, 'Ceda el paso', 'sr-02.png', 'SR-02', 1),
(3, 'Siga de Frente', 'sr-03.png', 'SR-03', 1),
(4, 'No pase', 'sr-04.png', 'SR-04', 1),
(5, 'Giro a la izquierda solamente', 'sr-05.png', 'SR-05', 1),
(6, 'Prohibido girar a la izq.', 'sr-06.png', 'SR-06', 1),
(7, 'Giro a la derecha solamente', 'sr-07.png', 'SR-07', 1),
(8, 'Prohibido girar a la derecha', 'sr-08.PNG', 'SR-08', 1),
(9, 'Giro en "U" solamente', 'sr-09.PNG', 'SR-09', 1),
(10, 'Prohibido girar en "U"', 'sr-10.PNG', 'SR-10', 1),
(11, 'Doble via', 'sr-11.PNG', 'SR-11', 1),
(12, 'Tres carriles uno en contraflujo', 'sr-12.PNG', 'SR-12', 1),
(13, 'Tres carriles dos en contraflujo', 'sr-13.PNG', 'SR-13', 1),
(14, 'Prohibido el cambio de calzada izquierda derecha', 'sr-14.PNG', 'SR-14', 1),
(15, 'Prohibido el cambio de calzada derecha izquierda', 'sr-14a.PNG', 'SR-14A', 1),
(16, 'Circulacion prohibida de vehiculos automotores', 'sr-16.PNG', 'SR-16', 1),
(17, 'Vehiculos pesados a la derecha', 'sr-17.PNG', 'SR-17', 1),
(18, 'Circulacion prohibida de vehiculos de carga', 'sr-18.PNG', 'SR-18', 1),
(19, 'Peatones a la izquierda', 'sr-19.PNG', 'SR-19', 1),
(20, 'Circulacion prohibida de peatones', 'sr-20.PNG', 'SR-20', 1),
(21, 'Circulacion prohibida de cabalgaduras', 'sr-21.PNG', 'SR-21', 1),
(22, 'Circulacion prohibida de bicletas', 'sr-22.PNG', 'SR-22', 1),
(23, 'Circulacion prohibida de motocicletas', 'sr-23.PNG', 'SR-23', 1),
(24, 'Circulacion prohibida de maquinaria agricola', 'sr-24.PNG', 'SR-24', 1),
(25, 'Circulacion prohibida de vehiculos de traccion animal', 'sr-25.PNG', 'SR-25', 1),
(26, 'Prohibido adelantar', 'sr-26.PNG', 'SR-26', 1),
(28, 'Prohibido parquear', 'sr-28.PNG', 'SR-28', 1),
(29, 'No parquear ni detenerse', 'sr-28a.PNG', 'SR-28A', 1),
(30, 'Prohibido pitar', 'sr-29.PNG', 'SR-29', 1),
(31, 'Velocidad maxima permitida', 'sr-30.PNG', 'SR-30', 1),
(32, 'Velocidad minima permitida', 'sr-30a.PNG', 'SR-30a', 1),
(33, 'Velocidad maxima permitida salida', 'sr-30b.PNG', 'SR-30B', 1),
(34, 'Peso maximo total permitido', 'sr-31.PNG', 'SR-31', 1),
(35, 'Altura maxima permitida', 'sr-32.PNG', 'SR-32', 1),
(36, 'Ancho maximo permitido', 'sr-33.PNG', 'SR-33', 1),
(37, 'Zona de estacionamiento de taxi', 'sr-34.PNG', 'SR-34', 1),
(38, 'Circulacion con luces bajas', 'sr-35.PNG', 'SR-35', 1),
(39, 'Reten', 'sr-36.PNG', 'SR-36', 1),
(40, 'Sentido unico de circulacion', 'sr-38.PNG', 'SR-38', 1),
(41, 'Sentido de circulacion doble', 'sr-39.PNG', 'SR-39', 1),
(42, 'Paradero', 'sr-40.PNG', 'SR-40', 1),
(43, 'Prohibido dejar o recoger pasajeros', 'sr-41.PNG', 'SR-41', 1),
(44, 'Zona de cargue y descargue', 'sr-42.PNG', 'SR-42', 1),
(45, 'Prohibido el cargue y descargue', 'sr-43.PNG', 'SR-43', 1),
(46, 'Conservar espaciamiento', 'sr-44.PNG', 'SR-44', 1),
(47, 'Indicacion de separador de transito a la izquierda', 'sr-45.PNG', 'SR-45', 1),
(48, 'Indicacion de separador de transito a la derecha', 'sr-46.PNG', 'SR-46', 1),
(49, 'No bloquear cruce', 'sr-47.PNG', 'SR-47', 1),
(50, 'Fin prohibicion de adelantamiento', 'sr-48.PNG', 'SR-48', 1),
(51, 'Preferencia al sentido contrario', 'sr-49.PNG', 'SR-49', 1),
(52, 'Prohibido girar a la derecha con luz roja', 'sr-50.PNG', 'SR-50', 1),
(53, 'Circulacion prohibida de carros de mano', 'sr-51.PNG', 'SR-51', 1),
(54, 'Circulacion prohibida de buses', 'sr-52.PNG', 'SR-52', 1),
(55, 'Circulacion prohibida de motocarros', 'sr-53.PNG', 'SR-53', 1),
(56, 'Circulacion prohibida de cuatrimotos', 'sr-54.PNG', 'SR-54', 1),
(57, 'Curva cerrada a la izquierda', 'sp-01.png', 'SP-01', 2),
(58, 'Curva cerrada a la derecha', 'sp-02.png', 'SP-02', 2),
(59, 'Curva pronunciada a la izquierda', 'sp-03.png', 'SP-03', 2),
(60, 'Curva pronunciada a la derecha', 'sp-04.png', 'SP-04', 2),
(61, 'Curva y contracurva cerrada la primera izquierda', 'sp-05.png', 'SP-05', 2),
(62, 'Curva y contracurva cerrada a la primera derecha', 'sp-06.png', 'SP-06', 2),
(63, 'Zona de curvas sucesivas la primera a la izquierda', 'sp-07.png', 'SP-07', 2),
(64, 'Zona de curvas sucesivas la primera a la derecha', 'sp-08.png', 'SP-08', 2),
(65, 'Curva y contracurva pronunciada primera a la izquierda', 'sp-09.png', 'SP-09', 2),
(66, 'Curva y contracurva pronunciada primera a la derecha', 'sp-10.png', 'SP-10', 2),
(67, 'Interseccion de vias', 'sp-11.PNG', 'SP-11', 2),
(68, 'Via lateral izquierda', 'sp-12.PNG', 'SP-12', 2),
(69, 'Via lateral derecha', 'sp-13.PNG', 'SP-13', 2),
(70, 'Interseccion en "T"', 'sp-14.PNG', 'SP-14', 2),
(71, 'Interseccion en "Y"', 'sp-15.PNG', 'SP-15', 2),
(72, 'Bifurcacion a la izquierda', 'sp-16.PNG', 'SP-16', 2),
(73, 'Bifurcacion a la derecha', 'sp-17.PNG', 'SP-17', 2),
(74, 'Interseccion escalonada primera a la izquierda', 'sp-18.PNG', 'SP-18', 2),
(75, 'Interseccion escalonada primera a la derecha', 'sp-19.PNG', 'SP-19', 2),
(76, 'Glorieta', 'sp-20.PNG', 'SP-20', 2),
(77, 'Incorporacion de transito desde a la izquierda', 'sp-21.PNG', 'SP-21', 2),
(78, 'Incorporacion de transito desde la derecha', 'sp-22.PNG', 'SP-22', 2),
(79, 'Proximidad de semaforo', 'sp-23.PNG', 'SP-23', 2),
(80, 'Superficie rizada', 'sp-24.PNG', 'SP-24', 2),
(81, 'Proximidad de resalto', 'sp-25.PNG', 'SP-25', 2),
(82, 'Ubicacion de resalto', 'sp-25a.PNG', 'SP-25A', 2),
(83, 'Depresion', 'sp-26.PNG', 'SP-26', 2),
(84, 'Pendiente fuerte de descenso', 'sp-27.PNG', 'SP-27', 2),
(85, 'Pendiente fuerte de ascenso', 'sp-27a.PNG', 'SP-27A', 2),
(86, 'Reduccion de calzada a ambos lados', 'sp-28.PNG', 'SP-28', 2),
(87, 'Proximidad de señal "PARE"', 'sp-29.PNG', 'SP-29', 2),
(88, 'Reduccion de la calzada a la izquierda', 'sp-30.PNG', 'SP-30', 2),
(89, 'Reduccion de la calzada a la derecha', 'sp-31.PNG', 'SP-31', 2),
(90, 'Ensanchamiento simetrico de la calzada', 'sp-32.PNG', 'SP-32', 2),
(91, 'Proximidad de señal "Ceda el paso"', 'sp-33.PNG', 'SP-33', 2),
(92, 'Ensanchamiento de la calzada a la izquierda', 'sp-34.PNG', 'SP-34', 2),
(93, 'Ensanchamiento de la calzada a la derecha', 'sp-35.PNG', 'SP-35', 2),
(94, 'Puente angosto', 'sp-36.PNG', 'SP-36', 2),
(95, 'Tunel', 'sp-37.PNG', 'SP-37', 2),
(96, 'Peso maximo bruto vehicular permitido', 'sp-38.PNG', 'SP-38', 2),
(97, 'Dos sentidos de transito', 'sp-39.PNG', 'SP-39', 2),
(98, 'Tres carriles de transito, uno en contraflujo', 'sp-41.PNG', 'SP-41', 2),
(99, 'Zona de derrumbes', 'sp-42.PNG', 'SP-42', 2),
(100, 'Tres carriles de transito, dos en contraflujo', 'sp-43.PNG', 'SP-43', 2),
(101, 'Superficie deslizante', 'sp-44.PNG', 'SP-44', 2),
(102, 'Maquinaria agricola en la via', 'sp-45.PNG', 'SP-45', 2),
(103, 'Zona de peatones', 'sp-46.PNG', 'SP-46', 2),
(104, 'Proximidad de cruce peatonal', 'sp-46a.PNG', 'SP-46A', 2),
(105, 'Ubicacion de cruce peatonal', 'sp-46b.PNG', 'SP-46B', 2),
(106, 'Zona escolar', 'sp-47.PNG', 'SP-47', 2),
(107, 'Proximidad a cruce escolar', 'sp-47a.PNG', 'SP-47A', 2),
(108, 'Ubicacion de cruce escolar', 'sp-47b.PNG', 'SP-47B', 2),
(109, 'Niños jugando', 'sp-48.PNG', 'SP-48', 2),
(110, 'Animales en la via', 'sp-49.PNG', 'SP-49', 2),
(111, 'Altura libre', 'sp-50.PNG', 'SP-50', 2),
(112, 'Ancho libre', 'sp-51.PNG', 'SP-51', 2),
(113, 'Cruce a nivel', 'sp-52.PNG', 'SP-52', 2),
(114, 'Cruce ferroviario a nivel con barreras', 'sp-52a.PNG', 'SP-52A', 2),
(115, 'Barrera', 'sp-53.PNG', 'SP-53', 2),
(116, 'Cruce de San Andres', 'sp-54.PNG', 'SP-54', 2),
(117, 'Inicio de separador dos sentidos', 'sp-55.PNG', 'SP-55', 2),
(118, 'Final de via con separadpr dos sentidos', 'sp-56.PNG', 'SP-56', 2),
(119, 'Final de via con separador un sentido', 'sp-56a.PNG', 'SP-56A', 2),
(120, 'Final de pavimento', 'sp-57.PNG', 'SP-57', 2),
(121, 'Ciclistas en la via', 'sp-59.PNG', 'SP-59', 2),
(122, 'Cruce de ciclistas', 'sp-59a.PNG', 'SP-59A', 2),
(123, 'Ubicacion de cruce de ciclistas', 'sp-59b.PNG', 'SP-59B', 2),
(124, 'Riesgo de accidente', 'sp-67.PNG', 'SP-67', 2),
(125, 'Conservar espaciamiento', 'sp-68.PNG', 'SP-68', 2),
(126, 'Curva muy cerrada a la izquierda', 'sp-69.PNG', 'SP-69', 2),
(127, 'Curva muy cerrada a la derecha', 'sp-70.PNG', 'SP-70', 2),
(128, 'Ruta nacional', 'si-01.png', 'SI-01', 3),
(129, 'Ruta departamental', 'si-1a.png', 'SI-1A', 3),
(130, 'Ruta panamericana', 'si-02.png', 'SI-02', 3),
(131, 'Ruta marginal de selva', 'si-03.png', 'SI-03', 3),
(132, 'Sitio de parqueo', 'si-04.png', 'SI-04', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbl_visibilidad`
--

CREATE TABLE IF NOT EXISTS `tbl_visibilidad` (
  `vis_idVisibilidad` int(11) NOT NULL AUTO_INCREMENT,
  `vis_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`vis_idVisibilidad`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci AUTO_INCREMENT=4 ;

--
-- Volcado de datos para la tabla `tbl_visibilidad`
--

INSERT INTO `tbl_visibilidad` (`vis_idVisibilidad`, `vis_nombre`) VALUES
(1, 'No Visible'),
(2, 'Poco Visible'),
(3, 'Visible');

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `tbl_reporte`
--
ALTER TABLE `tbl_reporte`
  ADD CONSTRAINT `accionTomar` FOREIGN KEY (`rep_accionTomar`) REFERENCES `tbl_accion` (`acc_idAccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `anclaje` FOREIGN KEY (`rep_anclaje`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `pedestal` FOREIGN KEY (`rep_pedestal`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `senal` FOREIGN KEY (`rep_senal`) REFERENCES `tbl_senal` (`sen_idSenal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `tablero` FOREIGN KEY (`rep_tablero`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `visibilidad` FOREIGN KEY (`rep_visibilidad`) REFERENCES `tbl_visibilidad` (`vis_idVisibilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Filtros para la tabla `tbl_senal`
--
ALTER TABLE `tbl_senal`
  ADD CONSTRAINT `sen_cat_idCategoria` FOREIGN KEY (`sen_cat_idCategoria`) REFERENCES `tbl_categoria` (`cat_idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
