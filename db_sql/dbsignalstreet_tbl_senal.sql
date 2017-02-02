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
-- Table structure for table `tbl_senal`
--

DROP TABLE IF EXISTS `tbl_senal`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_senal` (
  `sen_idSenal` int(11) NOT NULL AUTO_INCREMENT,
  `sen_nombre` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_icono` varchar(200) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_codigo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  `sen_cat_idCategoria` int(11) DEFAULT NULL,
  PRIMARY KEY (`sen_idSenal`),
  KEY `sen_cat_idCategoria_idx` (`sen_cat_idCategoria`),
  CONSTRAINT `sen_cat_idCategoria` FOREIGN KEY (`sen_cat_idCategoria`) REFERENCES `tbl_categoria` (`cat_idCategoria`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=203 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_senal`
--

LOCK TABLES `tbl_senal` WRITE;
/*!40000 ALTER TABLE `tbl_senal` DISABLE KEYS */;
INSERT INTO `tbl_senal` VALUES (1,'Pare','sr-01.png','SR-01',1),(2,'Ceda el paso','sr-02.png','SR-02',1),(3,'Siga de Frente','sr-03.png','SR-03',1),(4,'No pase','sr-04.png','SR-04',1),(5,'Giro a la izquierda solamente','sr-05.png','SR-05',1),(6,'Prohibido girar a la izq.','sr-06.png','SR-06',1),(7,'Giro a la derecha solamente','sr-07.png','SR-07',1),(8,'Prohibido girar a la derecha','sr-08.PNG','SR-08',1),(9,'Giro en \"U\" solamente','sr-09.PNG','SR-09',1),(10,'Prohibido girar en \"U\"','sr-10.PNG','SR-10',1),(11,'Doble via','sr-11.PNG','SR-11',1),(12,'Tres carriles uno en contraflujo','sr-12.PNG','SR-12',1),(13,'Tres carriles dos en contraflujo','sr-13.PNG','SR-13',1),(14,'Prohibido el cambio de calzada izquierda derecha','sr-14.PNG','SR-14',1),(15,'Prohibido el cambio de calzada derecha izquierda','sr-14a.PNG','SR-14A',1),(16,'Circulacion prohibida de vehiculos automotores','sr-16.PNG','SR-16',1),(17,'Vehiculos pesados a la derecha','sr-17.PNG','SR-17',1),(18,'Circulacion prohibida de vehiculos de carga','sr-18.PNG','SR-18',1),(19,'Peatones a la izquierda','sr-19.PNG','SR-19',1),(20,'Circulacion prohibida de peatones','sr-20.PNG','SR-20',1),(21,'Circulacion prohibida de cabalgaduras','sr-21.PNG','SR-21',1),(22,'Circulacion prohibida de bicletas','sr-22.PNG','SR-22',1),(23,'Circulacion prohibida de motocicletas','sr-23.PNG','SR-23',1),(24,'Circulacion prohibida de maquinaria agricola','sr-24.PNG','SR-24',1),(25,'Circulacion prohibida de vehiculos de traccion animal','sr-25.PNG','SR-25',1),(26,'Prohibido adelantar','sr-26.PNG','SR-26',1),(28,'Prohibido parquear','sr-28.PNG','SR-28',1),(29,'No parquear ni detenerse','sr-28a.PNG','SR-28A',1),(30,'Prohibido pitar','sr-29.PNG','SR-29',1),(31,'Velocidad maxima permitida','sr-30.PNG','SR-30',1),(32,'Velocidad minima permitida','sr-30a.PNG','SR-30a',1),(33,'Velocidad maxima permitida salida','sr-30b.PNG','SR-30B',1),(34,'Peso maximo total permitido','sr-31.PNG','SR-31',1),(35,'Altura maxima permitida','sr-32.PNG','SR-32',1),(36,'Ancho maximo permitido','sr-33.PNG','SR-33',1),(37,'Zona de estacionamiento de taxi','sr-34.PNG','SR-34',1),(38,'Circulacion con luces bajas','sr-35.PNG','SR-35',1),(39,'Reten','sr-36.PNG','SR-36',1),(40,'Sentido unico de circulacion','sr-38.PNG','SR-38',1),(41,'Sentido de circulacion doble','sr-39.PNG','SR-39',1),(42,'Paradero','sr-40.PNG','SR-40',1),(43,'Prohibido dejar o recoger pasajeros','sr-41.PNG','SR-41',1),(44,'Zona de cargue y descargue','sr-42.PNG','SR-42',1),(45,'Prohibido el cargue y descargue','sr-43.PNG','SR-43',1),(46,'Conservar espaciamiento','sr-44.PNG','SR-44',1),(47,'Indicacion de separador de transito a la izquierda','sr-45.PNG','SR-45',1),(48,'Indicacion de separador de transito a la derecha','sr-46.PNG','SR-46',1),(49,'No bloquear cruce','sr-47.PNG','SR-47',1),(50,'Fin prohibicion de adelantamiento','sr-48.PNG','SR-48',1),(51,'Preferencia al sentido contrario','sr-49.PNG','SR-49',1),(52,'Prohibido girar a la derecha con luz roja','sr-50.PNG','SR-50',1),(53,'Circulacion prohibida de carros de mano','sr-51.PNG','SR-51',1),(54,'Circulacion prohibida de buses','sr-52.PNG','SR-52',1),(55,'Circulacion prohibida de motocarros','sr-53.PNG','SR-53',1),(56,'Circulacion prohibida de cuatrimotos','sr-54.PNG','SR-54',1),(57,'Curva cerrada a la izquierda','sp-01.png','SP-01',2),(58,'Curva cerrada a la derecha','sp-02.png','SP-02',2),(59,'Curva pronunciada a la izquierda','sp-03.png','SP-03',2),(60,'Curva pronunciada a la derecha','sp-04.png','SP-04',2),(61,'Curva y contracurva cerrada la primera izquierda','sp-05.png','SP-05',2),(62,'Curva y contracurva cerrada a la primera derecha','sp-06.png','SP-06',2),(63,'Zona de curvas sucesivas la primera a la izquierda','sp-07.png','SP-07',2),(64,'Zona de curvas sucesivas la primera a la derecha','sp-08.png','SP-08',2),(65,'Curva y contracurva pronunciada primera a la izquierda','sp-09.png','SP-09',2),(66,'Curva y contracurva pronunciada primera a la derecha','sp-10.png','SP-10',2),(67,'Interseccion de vias','sp-11.PNG','SP-11',2),(68,'Via lateral izquierda','sp-12.PNG','SP-12',2),(69,'Via lateral derecha','sp-13.PNG','SP-13',2),(70,'Interseccion en \"T\"','sp-14.PNG','SP-14',2),(71,'Interseccion en \"Y\"','sp-15.PNG','SP-15',2),(72,'Bifurcacion a la izquierda','sp-16.PNG','SP-16',2),(73,'Bifurcacion a la derecha','sp-17.PNG','SP-17',2),(74,'Interseccion escalonada primera a la izquierda','sp-18.PNG','SP-18',2),(75,'Interseccion escalonada primera a la derecha','sp-19.PNG','SP-19',2),(76,'Glorieta','sp-20.PNG','SP-20',2),(77,'Incorporacion de transito desde a la izquierda','sp-21.PNG','SP-21',2),(78,'Incorporacion de transito desde la derecha','sp-22.PNG','SP-22',2),(79,'Proximidad de semaforo','sp-23.PNG','SP-23',2),(80,'Superficie rizada','sp-24.PNG','SP-24',2),(81,'Proximidad de resalto','sp-25.PNG','SP-25',2),(82,'Ubicacion de resalto','sp-25a.PNG','SP-25A',2),(83,'Depresion','sp-26.PNG','SP-26',2),(84,'Pendiente fuerte de descenso','sp-27.PNG','SP-27',2),(85,'Pendiente fuerte de ascenso','sp-27a.PNG','SP-27A',2),(86,'Reduccion de calzada a ambos lados','sp-28.PNG','SP-28',2),(87,'Proximidad de señal \"PARE\"','sp-29.PNG','SP-29',2),(88,'Reduccion de la calzada a la izquierda','sp-30.PNG','SP-30',2),(89,'Reduccion de la calzada a la derecha','sp-31.PNG','SP-31',2),(90,'Ensanchamiento simetrico de la calzada','sp-32.PNG','SP-32',2),(91,'Proximidad de señal \"Ceda el paso\"','sp-33.PNG','SP-33',2),(92,'Ensanchamiento de la calzada a la izquierda','sp-34.PNG','SP-34',2),(93,'Ensanchamiento de la calzada a la derecha','sp-35.PNG','SP-35',2),(94,'Puente angosto','sp-36.PNG','SP-36',2),(95,'Tunel','sp-37.PNG','SP-37',2),(96,'Peso maximo bruto vehicular permitido','sp-38.PNG','SP-38',2),(97,'Dos sentidos de transito','sp-39.PNG','SP-39',2),(98,'Tres carriles de transito, uno en contraflujo','sp-41.PNG','SP-41',2),(99,'Zona de derrumbes','sp-42.PNG','SP-42',2),(100,'Tres carriles de transito, dos en contraflujo','sp-43.PNG','SP-43',2),(101,'Superficie deslizante','sp-44.PNG','SP-44',2),(102,'Maquinaria agricola en la via','sp-45.PNG','SP-45',2),(103,'Zona de peatones','sp-46.PNG','SP-46',2),(104,'Proximidad de cruce peatonal','sp-46a.PNG','SP-46A',2),(105,'Ubicacion de cruce peatonal','sp-46b.PNG','SP-46B',2),(106,'Zona escolar','sp-47.PNG','SP-47',2),(107,'Proximidad a cruce escolar','sp-47a.PNG','SP-47A',2),(108,'Ubicacion de cruce escolar','sp-47b.PNG','SP-47B',2),(109,'Niños jugando','sp-48.PNG','SP-48',2),(110,'Animales en la via','sp-49.PNG','SP-49',2),(111,'Altura libre','sp-50.PNG','SP-50',2),(112,'Ancho libre','sp-51.PNG','SP-51',2),(113,'Cruce a nivel','sp-52.PNG','SP-52',2),(114,'Cruce ferroviario a nivel con barreras','sp-52a.PNG','SP-52A',2),(115,'Barrera','sp-53.PNG','SP-53',2),(116,'Cruce de San Andres','sp-54.PNG','SP-54',2),(117,'Inicio de separador dos sentidos','sp-55.PNG','SP-55',2),(118,'Final de via con separadpr dos sentidos','sp-56.PNG','SP-56',2),(119,'Final de via con separador un sentido','sp-56a.PNG','SP-56A',2),(120,'Final de pavimento','sp-57.PNG','SP-57',2),(121,'Ciclistas en la via','sp-59.PNG','SP-59',2),(122,'Cruce de ciclistas','sp-59a.PNG','SP-59A',2),(123,'Ubicacion de cruce de ciclistas','sp-59b.PNG','SP-59B',2),(124,'Riesgo de accidente','sp-67.PNG','SP-67',2),(125,'Conservar espaciamiento','sp-68.PNG','SP-68',2),(126,'Curva muy cerrada a la izquierda','sp-69.PNG','SP-69',2),(127,'Curva muy cerrada a la derecha','sp-70.PNG','SP-70',2),(128,'Ruta nacional','si-01.png','SI-01',3),(129,'Ruta departamental','si-1a.png','SI-1A',3),(130,'Ruta panamericana','si-02.png','SI-02',3),(131,'Ruta marginal de selva','si-03.png','SI-03',3),(132,'Sitio de parqueo','si-04.png','SI-04',3),(133,'SP-47/SR-30','sd-01.png','SP-47/SR-30',4),(134,'SP-48/SR-30','sd-02.png','SP-48/SR-30',4),(135,'SP-67/SR-30','sd-03.png','SP-67/SR-30',4),(136,'SP-53/SR-30','sd-04.png','SP-53/SR-30',4),(137,'SP-54/SR-01','sd-05.png','SP-54/SR-01',4),(138,'SP-46/SR-30','sd-06.png','SP-46/SR-30',4),(139,'SP-67A/SR-30','sd-07.png','SP-67A/SR-30',4),(140,'SI-26/SR-38','sd-08.png','SI-26/SR-38',4),(141,'SI-26/SR-39','sd-09.png','SI-26/SR-39',4),(142,'SI-24/SR-30','sd-10.png','SI-24/SR-30',4),(143,'SP-27/SR-30','sd-11.png','SP-27/SR-30',4),(144,'SP-46/SR-16','sd-12.png','SP-46/SR-16',4),(145,'SP-17/SR-30','sd-13.png','SP-17/SR-30',4),(146,'SI-16/SR-30','sd-14.png','SI-16/SR-30',4),(147,'SP-36/SR-31','sd-15.png','SP-36/SR-31',4),(148,'SP-03/SR-30','sd-16.png','SP-03/SR-30',4),(149,'SP-28/SR-30','sd-17.png','SP-28/SR-30',4),(150,'SP-25/SR-30','sd-18.png','SP-25/SR-30',4),(151,'SP-31/SR-30','sd-19.png','SP-31/SR-30',4),(152,'SP-30/SR-30','sd-20.png','SP-30/SR-30',4),(153,'SP-39/SR-30','sd-21.png','SP-39/SR-30',4),(154,'SP-20/SR-30','sd-22.png','SP-20/SR-30',4),(155,'SP-47/SR-28','sd-23.png','SP-47/SR-28',4),(156,'SP-12/SR-30','sd-24.png','SP-12/SR-30',4),(157,'SP-59/SR-30','sd-25.png','SP-59/SR-30',4),(158,'SR-01/SR-08','sd-26.png','SR-01/SR-08',4),(159,'SR-28/SR-41','sd-27.png','SR-28/SR-41',4),(160,'SR-30/SP-25','sd-28.png','SR-30/SP-25',4),(161,'SP-13/SR-30','sd-29.png','SP-13/SR-30',4),(162,'SP-46/SR-01','sd-30.png','SP-46/SR-01',4),(163,'SP-24/SR-30','sd-31.png','SP-24/SR-30',4),(164,'SR-28/SR-18','sd-32.png','SR-28/SR-18',4),(165,'SP-36/SR-33','sd-33.png','SP-36/SR-33',4),(166,'SP-28/SRO-03','sd-34.png','SP-28/SRO-03',4),(167,'SP-10/SR-26','sd-35.png','SP-10/SR-26',4),(168,'SP-03/SR-26','sd-36.png','SP-03/SR-26',4),(169,'SP-04/SR-26','sd-37.png','SP-04/SR-26',4),(170,'SP-48/SR-01','sd-38.png','SP-48/SR-01',4),(171,'SR-18/SR-30','sd-39.png','SR-18/SR-30',4),(172,'SR-18/SR-31','sd-40.png','SR-18/SR-31',4),(173,'SP-27/SR-05','sd-41.png','SP-27/SR-05',4),(174,'SP-03/SR-30','sd-42.png','SP-03/SR-30',4),(175,'SP-36/SR-30','sd-43.png','SP-36/SR-30',4),(176,'SP-01/SR-30','sd-44.png','SP-01/SR-30',4),(177,'SI-16/SR-29','sd-45.png','SI-16/SR-29',4),(178,'SP-55A/SR-30','sd-46.png','SP-55A/SR-30',4),(179,'SI-25/SR-30','sd-47.png','SI-25/SR-30',4),(180,'SP-23/SR-30','sd-48.png','SP-23/SR-30',4),(181,'SP-02/SR-30','sd-49.png','SP-02/SR-30',4),(182,'SP-09/SR-30','sd-50.png','SP-09/SR-30',4),(183,'SP-26/SR-30','sd-51.png','SP-26/SR-30',4),(184,'SP-56/SR-30','sd-52.png','SP-56/SR-30',4),(185,'SP-38/SR-18','sd-53.png','SP-38/SR-18',4),(186,'SR-10/SR-01','sd-54.png','SR-10/SR-01',4),(187,'SP-55/SR-30','sd-55.png','SP-55/SR-30',4),(188,'SP-67/SR-28','sd-56.png','SP-67/SR-28',4),(189,'SP-52/SR-30','sd-57.png','SP-52/SR-30',4),(190,'SP-04/SR-30','sd-58.png','SP-04/SR-30',4),(191,'SP-08/SR-30','sd-59.png','SP-08/SR-30',4),(192,'SP-15/SR-30','sd-60.png','SP-15/SR-30',4),(193,'SP-35/SR-30','sd-61.png','SP-35/SR-30',4),(194,'SP-06/SR-30','sd-62.png','SP-06/SR-30',4),(195,'SP-47/SR-30','sd-63.png','SP-47/SR-30',4),(196,'SP-48/SR-30','sd-64.png','SP-48/SR-30',4),(197,'SP-46/SR-30','sd-65.png','SP-46/SR-30',4),(198,'SP-47A/SR-30','sd-66.png','SP-47A/SR-30',4),(199,'SP-46A/SR-30','sd-67.png','SP-46A/SR-30',4),(200,'SP-59A/SR-30','sd-68.png','SP-59A/SR-30',4),(201,'SP-46/SR-28','sd-69.png','SP-46/SR-28',4),(202,'SP-25/SR-05','sd-70.png','SP-25/SR-05',4);
/*!40000 ALTER TABLE `tbl_senal` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-02-02  8:24:43