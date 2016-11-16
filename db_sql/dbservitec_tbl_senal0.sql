-- MySQL dump 10.13  Distrib 5.7.12, for Win64 (x86_64)
--
-- Host: localhost    Database: dbservitec
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
  `id_senal` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `icono` varchar(500) COLLATE utf8_spanish_ci DEFAULT NULL,
  `id_categoria` int(11) NOT NULL,
  `codigo` varchar(100) COLLATE utf8_spanish_ci DEFAULT NULL,
  PRIMARY KEY (`id_senal`),
  KEY `id_categoria_idx` (`id_categoria`)
) ENGINE=MyISAM AUTO_INCREMENT=133 DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_senal`
--

LOCK TABLES `tbl_senal` WRITE;
/*!40000 ALTER TABLE `tbl_senal` DISABLE KEYS */;
INSERT INTO `tbl_senal` VALUES (1,'Pare','sr-01.png',1,'SR-01'),(2,'Ceda el paso','sr-02.png',1,'SR-02'),(3,'Siga de Frente','sr-03.png',1,'SR-03'),(4,'No pase','sr-04.png',1,'SR-04'),(5,'Giro a la izquierda solamente','sr-05.png',1,'SR-05'),(6,'Prohibido girar a la izq.','sr-06.png',1,'SR-06'),(7,'Giro a la derecha solamente','sr-07.png',1,'SR-07'),(8,'Prohibido girar a la derecha','sr-08.png',1,'SR-08'),(9,'Giro en \"U\" solamente','sr-09.png',1,'SR-09'),(10,'Prohibido girar en \"U\"','sr-10.png',1,'SR-10'),(11,'Doble via','sr-11.png',1,'SR-11'),(12,'Tres carriles uno en contraflujo','sr-12.png',1,'SR-12'),(13,'Tres carriles dos en contraflujo','sr-13.png',1,'SR-13'),(14,'Prohibido el cambio de calzada izquierda derecha','sr-14.png',1,'SR-14'),(15,'Prohibido el cambio de calzada derecha izquierda','sr-14a.png',1,'SR-14A'),(16,'Circulacion prohibida de vehiculos automotores','sr-16.png',1,'SR-16'),(17,'Vehiculos pesados a la derecha','sr-17.png',1,'SR-17'),(18,'Circulacion prohibida de vehiculos de carga','sr-18.png',1,'SR-18'),(19,'Peatones a la izquierda','sr-19.png',1,'SR-19'),(20,'Circulacion prohibida de peatones','sr-20.png',1,'SR-20'),(21,'Circulacion prohibida de cabalgaduras','sr-21.png',1,'SR-21'),(22,'Circulacion prohibida de bicletas','sr-22.png',1,'SR-22'),(23,'Circulacion prohibida de motocicletas','sr-23.png',1,'SR-23'),(24,'Circulacion prohibida de maquinaria agricola','sr-24.png',1,'SR-24'),(25,'Circulacion prohibida de vehiculos de traccion animal','sr-25.png',1,'SR-25'),(26,'Prohibido adelantar','sr-26.png',1,'SR-26'),(28,'Prohibido parquear','sr-28.png',1,'SR-28'),(29,'No parquear ni detenerse','sr-28a.png',1,'SR-28A'),(30,'Prohibido pitar','sr-29.png',1,'SR-29'),(31,'Velocidad maxima permitida','sr-30.png',1,'SR-30'),(32,'Velocidad minima permitida','sr-30a.png',1,'SR-30a'),(33,'Velocidad maxima permitida salida','sr-30b.png',1,'SR-30B'),(34,'Peso maximo total permitido','sr-31.png',1,'SR-31'),(35,'Altura maxima permitida','sr-32.png',1,'SR-32'),(36,'Ancho maximo permitido','sr-33.png',1,'SR-33'),(37,'Zona de estacionamiento de taxi','sr-34.png',1,'SR-34'),(38,'Circulacion con luces bajas','sr-35.png',1,'SR-35'),(39,'Reten','sr-36.png',1,'SR-36'),(40,'Sentido unico de circulacion','sr-38.png',1,'SR-38'),(41,'Sentido de circulacion doble','sr-39.png',1,'SR-39'),(42,'Paradero','sr-40.png',1,'SR-40'),(43,'Prohibido dejar o recoger pasajeros','sr-41.png',1,'SR-41'),(44,'Zona de cargue y descargue','sr-42.png',1,'SR-42'),(45,'Prohibido el cargue y descargue','sr-43.png',1,'SR-43'),(46,'Conservar espaciamiento','sr-44.png',1,'SR-44'),(47,'Indicacion de separador de transito a la izquierda','sr-45.png',1,'SR-45'),(48,'Indicacion de separador de transito a la derecha','sr-46.png',1,'SR-46'),(49,'No bloquear cruce','sr-47.png',1,'SR-47'),(50,'Fin prohibicion de adelantamiento','sr-48.png',1,'SR-48'),(51,'Preferencia al sentido contrario','sr-49.png',1,'SR-49'),(52,'Prohibido girar a la derecha con luz roja','sr-50.png',1,'SR-50'),(53,'Circulacion prohibida de carros de mano','sr-51.png',1,'SR-51'),(54,'Circulacion prohibida de buses','sr-52.png',1,'SR-52'),(55,'Circulacion prohibida de motocarros','sr-53.png',1,'SR-53'),(56,'Circulacion prohibida de cuatrimotos','sr-54.png',1,'SR-54'),(57,'Curva cerrada a la izquierda','sp-01.png',2,'SP-01'),(58,'Curva cerrada a la derecha','sp-02.png',2,'SP-02'),(59,'Curva pronunciada a la izquierda','sp-03.png',2,'SP-03'),(60,'Curva pronunciada a la derecha','sp-04.png',2,'SP-04'),(61,'Curva y contracurva cerrada la primera izquierda','sp-05.png',2,'SP-05'),(62,'Curva y contracurva cerrada a la primera derecha','sp-06.png',2,'SP-06'),(63,'Zona de curvas sucesivas la primera a la izquierda','sp-07.png',2,'SP-07'),(64,'Zona de curvas sucesivas la primera a la derecha','sp-08.png',2,'SP-08'),(65,'Curva y contracurva pronunciada primera a la izquierda','sp-09.png',2,'SP-09'),(66,'Curva y contracurva pronunciada primera a la derecha','sp-10.png',2,'SP-10'),(67,'Interseccion de vias','sp-11.png',2,'SP-11'),(68,'Via lateral izquierda','sp-12.png',2,'SP-12'),(69,'Via lateral derecha','sp-13.png',2,'SP-13'),(70,'Interseccion en \"T\"','sp-14.png',2,'SP-14'),(71,'Interseccion en \"Y\"','sp-15.png',2,'SP-15'),(72,'Bifurcacion a la izquierda','sp-16.png',2,'SP-16'),(73,'Bifurcacion a la derecha','sp-17.png',2,'SP-17'),(74,'Interseccion escalonada primera a la izquierda','sp-18.png',2,'SP-18'),(75,'Interseccion escalonada primera a la derecha','sp-19.png',2,'SP-19'),(76,'Glorieta','sp-20.png',2,'SP-20'),(77,'Incorporacion de transito desde a la izquierda','sp-21.png',2,'SP-21'),(78,'Incorporacion de transito desde la derecha','sp-22.png',2,'SP-22'),(79,'Proximidad de semaforo','sp-23.png',2,'SP-23'),(80,'Superficie rizada','sp-24.png',2,'SP-24'),(81,'Proximidad de resalto','sp-25.png',2,'SP-25'),(82,'Ubicacion de resalto','sp-25a.png',2,'SP-25A'),(83,'Depresion','sp-26.png',2,'SP-26'),(84,'Pendiente fuerte de descenso','sp-27.png',2,'SP-27'),(85,'Pendiente fuerte de ascenso','sp-27a.png',2,'SP-27A'),(86,'Reduccion de calzada a ambos lados','sp-28.png',2,'SP-28'),(87,'Proximidad de señal \"PARE\"','sp-29.png',2,'SP-29'),(88,'Reduccion de la calzada a la izquierda','sp-30.png',2,'SP-30'),(89,'Reduccion de la calzada a la derecha','sp-31.png',2,'SP-31'),(90,'Ensanchamiento simetrico de la calzada','sp-32.png',2,'SP-32'),(91,'Proximidad de señal \"Ceda el paso\"','sp-33.png',2,'SP-33'),(92,'Ensanchamiento de la calzada a la izquierda','sp-34.png',2,'SP-34'),(93,'Ensanchamiento de la calzada a la derecha','sp-35.png',2,'SP-35'),(94,'Puente angosto','sp-36.png',2,'SP-36'),(95,'Tunel','sp-37.png',2,'SP-37'),(96,'Peso maximo bruto vehicular permitido','sp-38.png',2,'SP-38'),(97,'Dos sentidos de transito','sp-39.png',2,'SP-39'),(98,'Tres carriles de transito, uno en contraflujo','sp-41.png',2,'SP-41'),(99,'Zona de derrumbes','sp-42.png',2,'SP-42'),(100,'Tres carriles de transito, dos en contraflujo','sp-43.png',2,'SP-43'),(101,'Superficie deslizante','sp-44.png',2,'SP-44'),(102,'Maquinaria agricola en la via','sp-45.png',2,'SP-45'),(103,'Zona de peatones','sp-46.png',2,'SP-46'),(104,'Proximidad de cruce peatonal','sp-46a.png',2,'SP-46A'),(105,'Ubicacion de cruce peatonal','sp-46b.png',2,'SP-46B'),(106,'Zona escolar','sp-47.png',2,'SP-47'),(107,'Proximidad a cruce escolar','sp-47a.png',2,'SP-47A'),(108,'Ubicacion de cruce escolar','sp-47b.png',2,'SP-47B'),(109,'Niños jugando','sp-48.png',2,'SP-48'),(110,'Animales en la via','sp-49.png',2,'SP-49'),(111,'Altura libre','sp-50.png',2,'SP-50'),(112,'Ancho libre','sp-51.png',2,'SP-51'),(113,'Cruce a nivel','sp-52.png',2,'SP-52'),(114,'Cruce ferroviario a nivel con barreras','sp-52a.png',2,'SP-52A'),(115,'Barrera','sp-53.png',2,'SP-53'),(116,'Cruce de San Andres','sp-54.png',2,'SP-54'),(117,'Inicio de separador dos sentidos','sp-55.png',2,'SP-55'),(118,'Final de via con separadpr dos sentidos','sp-56.png',2,'SP-56'),(119,'Final de via con separador un sentido','sp-56a.png',2,'SP-56A'),(120,'Final de pavimento','sp-57.png',2,'SP-57'),(121,'Ciclistas en la via','sp-59.png',2,'SP-59'),(122,'Cruce de ciclistas','sp-59a.png',2,'SP-59A'),(123,'Ubicacion de cruce de ciclistas','sp-59b.png',2,'SP-59B'),(124,'Riesgo de accidente','sp-67.png',2,'SP-67'),(125,'Conservar espaciamiento','sp-68.png',2,'SP-68'),(126,'Curva muy cerrada a la izquierda','sp-69.png',2,'SP-69'),(127,'Curva muy cerrada a la derecha','sp-70.png',2,'SP-70'),(128,'Ruta nacional','si-01.png',3,'SI-01'),(129,'Ruta departamental','si-1a.png',3,'SI-1A'),(130,'Ruta panamericana','si-02.png',3,'SI-02'),(131,'Ruta marginal de selva','si-03.png',3,'SI-03'),(132,'Sitio de parqueo','si-04.png',3,'SI-04');
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

-- Dump completed on 2016-11-14 11:01:53
