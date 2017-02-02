-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbsignalstreet
-- ------------------------------------------------------
-- Server version	5.7.11

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `tbl_reporte`
--

DROP TABLE IF EXISTS `tbl_reporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_reporte` (
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
  KEY `accionTomar_idx` (`rep_accionTomar`),
  CONSTRAINT `accionTomar` FOREIGN KEY (`rep_accionTomar`) REFERENCES `tbl_accion` (`acc_idAccion`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `anclaje` FOREIGN KEY (`rep_anclaje`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `pedestal` FOREIGN KEY (`rep_pedestal`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `senal` FOREIGN KEY (`rep_senal`) REFERENCES `tbl_senal` (`sen_idSenal`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `tablero` FOREIGN KEY (`rep_tablero`) REFERENCES `tbl_estado` (`est_idEstado`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `visibilidad` FOREIGN KEY (`rep_visibilidad`) REFERENCES `tbl_visibilidad` (`vis_idVisibilidad`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_reporte`
--

LOCK TABLES `tbl_reporte` WRITE;
/*!40000 ALTER TABLE `tbl_reporte` DISABLE KEYS */;
INSERT INTO `tbl_reporte` VALUES (1,6.2782926,-75.5983361,'2016-12-27 15:17:11','hola.jpg','hola',6,2,1,1,1,5),(2,6.28237722290298,-75.59818507301634,'2016-12-27 15:33:47','null','No hay nada que decir',62,1,1,1,2,3),(3,6.282413932250935,-75.5981072889549,'2016-12-27 16:44:09','null','Esta bueno el parlante',64,2,2,2,2,5),(4,6.2825659,-75.59812069999998,'2016-12-27 16:48:26','1482875259757.jpg','Nada',9,2,2,2,2,3),(5,6.2825659,-75.59812069999998,'2016-12-27 16:51:45','img/reportes/1482875259757.jpg','Nada',9,2,2,2,2,3),(6,6.349350987714398,-75.70375560734021,'2016-12-29 00:05:02','img/reportes/1482987863580.jpg','Hola',59,1,1,1,3,4),(7,3.981658575811829,-73.76618140881413,'2016-12-29 17:58:32','img/reportes/1483052293792.jpg','Probando Acacías',132,2,3,3,1,4),(8,3.981658575811829,-73.76618140881413,'2016-12-29 17:58:40','img/reportes/1483052293792.jpg','Probando Acacías',132,2,3,3,1,4);
/*!40000 ALTER TABLE `tbl_reporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02  8:24:41
