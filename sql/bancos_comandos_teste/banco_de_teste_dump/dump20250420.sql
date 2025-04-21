CREATE DATABASE  IF NOT EXISTS `cadastro_cidades` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `cadastro_cidades`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: cadastro_cidades
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) COLLATE utf8mb4_general_ci NOT NULL,
  `sigla` varchar(2) COLLATE utf8mb4_general_ci NOT NULL,
  `regiao` enum('NORTE','NORDESTE','SUDESTE','CENTRO_OESTE','SUL') COLLATE utf8mb4_general_ci NOT NULL,
  `populacao` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `nome` (`nome`,`sigla`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Acre','AC','NORTE',0.87),(2,'Alagoas','AL','NORDESTE',3.35),(3,'Amapá','AP','NORTE',0.86),(4,'Amazonas','AM','NORTE',4.14),(5,'Bahia','BA','NORDESTE',14.87),(6,'Ceará','CE','NORDESTE',9.24),(7,'Distrito Federal','DF','CENTRO_OESTE',3.06),(8,'Espírito Santo','ES','SUDESTE',4.06),(9,'Goiás','GO','CENTRO_OESTE',7.20),(10,'Maranhão','MA','NORDESTE',7.07),(11,'Mato Grosso do Sul','MS','CENTRO_OESTE',2.80),(12,'Mato Grosso','MT','CENTRO_OESTE',3.48),(13,'Minas Gerais','MG','SUDESTE',21.04),(14,'Pará','PA','NORTE',8.69),(15,'Paraíba','PB','NORDESTE',4.01),(16,'Paraná','PR','SUL',11.32),(17,'Pernambuco','PE','NORDESTE',9.62),(18,'Piauí','PI','NORDESTE',3.29),(19,'Rio de Janeiro','RJ','SUDESTE',12.28),(20,'Rio Grande do Norte','RN','NORDESTE',3.51),(21,'Rio Grande do Sul','RS','SUL',11.70),(22,'Rondônia','RO','NORTE',1.77),(23,'Roraima','RR','NORTE',0.60),(49,'São Paulo','SP','SUDESTE',45.09),(50,'Nova York','NY','NORTE',1.00);
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-04-20 20:59:30
