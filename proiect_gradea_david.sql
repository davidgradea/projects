-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: proiect
-- ------------------------------------------------------
-- Server version	8.3.0

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `formatii`
--

DROP TABLE IF EXISTS `formatii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `formatii` (
  `id_formatii` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_formatie` varchar(45) DEFAULT NULL,
  `muzica` varchar(45) DEFAULT NULL,
  `an_aparitie` varchar(45) DEFAULT NULL,
  `salarii` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_formatii`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `formatii`
--

LOCK TABLES `formatii` WRITE;
/*!40000 ALTER TABLE `formatii` DISABLE KEYS */;
INSERT INTO `formatii` VALUES (4,'Hard ','clasic','1980','1700'),(7,'Tramband','clasica','1980','2000');
/*!40000 ALTER TABLE `formatii` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `impresar`
--

DROP TABLE IF EXISTS `impresar`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `impresar` (
  `id_impresar` bigint unsigned NOT NULL AUTO_INCREMENT,
  `id_formatii` bigint unsigned DEFAULT NULL,
  `id_membrii` bigint unsigned DEFAULT NULL,
  `nume_impresar` varchar(45) DEFAULT NULL,
  `prenume_impresar` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_impresar`),
  KEY `fk_impresar_1_idx` (`id_formatii`),
  KEY `fk_impresar_2_idx` (`id_membrii`),
  CONSTRAINT `fk_impresar_1` FOREIGN KEY (`id_formatii`) REFERENCES `formatii` (`id_formatii`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk_impresar_2` FOREIGN KEY (`id_membrii`) REFERENCES `membrii` (`id_membrii`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `impresar`
--

LOCK TABLES `impresar` WRITE;
/*!40000 ALTER TABLE `impresar` DISABLE KEYS */;
INSERT INTO `impresar` VALUES (20,4,1,'David','Gradea'),(21,4,1,'David','sa');
/*!40000 ALTER TABLE `impresar` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `membrii`
--

DROP TABLE IF EXISTS `membrii`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `membrii` (
  `id_membrii` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nume_membru` varchar(45) DEFAULT NULL,
  `prenume` varchar(45) DEFAULT NULL,
  `instrument` varchar(45) DEFAULT NULL,
  `varsta` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_membrii`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `membrii`
--

LOCK TABLES `membrii` WRITE;
/*!40000 ALTER TABLE `membrii` DISABLE KEYS */;
INSERT INTO `membrii` VALUES (1,'ichim','cosmin','trombon','21'),(9,'marius','marin','orga','45'),(10,'Vlad','Iulian','vioara','45');
/*!40000 ALTER TABLE `membrii` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-01-29 15:50:33
