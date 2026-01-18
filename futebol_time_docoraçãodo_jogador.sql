CREATE DATABASE  IF NOT EXISTS `futebol` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `futebol`;
-- MySQL dump 10.13  Distrib 8.0.43, for Win64 (x86_64)
--
-- Host: localhost    Database: futebol
-- ------------------------------------------------------
-- Server version	8.0.43

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
-- Table structure for table `time_docoraçãodo_jogador`
--

DROP TABLE IF EXISTS `time_docoraçãodo_jogador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `time_docoraçãodo_jogador` (
  `pi` int NOT NULL AUTO_INCREMENT,
  `data` date DEFAULT NULL,
  `sptime` int DEFAULT NULL,
  `idjogador` int DEFAULT NULL,
  PRIMARY KEY (`pi`),
  KEY `sptime` (`sptime`),
  KEY `idjogador` (`idjogador`),
  CONSTRAINT `time_docoraçãodo_jogador_ibfk_1` FOREIGN KEY (`sptime`) REFERENCES `time` (`sp`),
  CONSTRAINT `time_docoraçãodo_jogador_ibfk_2` FOREIGN KEY (`idjogador`) REFERENCES `jogador` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `time_docoraçãodo_jogador`
--

LOCK TABLES `time_docoraçãodo_jogador` WRITE;
/*!40000 ALTER TABLE `time_docoraçãodo_jogador` DISABLE KEYS */;
INSERT INTO `time_docoraçãodo_jogador` VALUES (1,'2026-01-18',1,2),(2,'2026-01-18',2,3),(3,'2026-01-18',3,1);
/*!40000 ALTER TABLE `time_docoraçãodo_jogador` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-01-18 10:52:47
