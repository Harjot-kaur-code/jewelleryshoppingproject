-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: jewelleryshopping
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `orders` (
  `oid` int NOT NULL AUTO_INCREMENT,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `datetime` varchar(45) DEFAULT NULL,
  `totalprice` int DEFAULT NULL,
  `totalofferprice` int DEFAULT NULL,
  PRIMARY KEY (`oid`),
  KEY `fk2_idx` (`username`),
  CONSTRAINT `fk2` FOREIGN KEY (`username`) REFERENCES `users` (`username`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
INSERT INTO `orders` VALUES (1,NULL,NULL,'abc','Thu Dec 24 21:07:19 IST 2020',3400,3400),(2,NULL,NULL,'abc','Thu Dec 24 21:19:32 IST 2020',0,0),(3,NULL,NULL,'abc','Fri Dec 25 10:40:06 IST 2020',700,700),(4,NULL,NULL,'abc','Fri Dec 25 10:40:18 IST 2020',0,0),(5,NULL,NULL,'abc','Fri Dec 25 10:41:54 IST 2020',0,0),(6,'jhbn','Chandigarh','abc','Fri Dec 25 10:41:54 IST 2020',0,0),(7,'','Delhi','abc','Sat Dec 26 12:57:18 IST 2020',2600,2600),(8,NULL,NULL,'abc','Sat Dec 26 12:57:18 IST 2020',2600,2600),(9,NULL,NULL,'abc','Mon Dec 28 11:01:46 IST 2020',7400,7400),(10,NULL,NULL,'abc','Mon Dec 28 11:02:03 IST 2020',0,0),(11,NULL,NULL,'abc','Mon Dec 28 11:02:14 IST 2020',0,0),(12,NULL,NULL,'abc','Mon Dec 28 11:08:39 IST 2020',0,0),(13,NULL,NULL,'abc','Mon Dec 28 11:09:14 IST 2020',0,0),(14,NULL,NULL,'abc','Mon Dec 28 11:10:07 IST 2020',0,0),(15,NULL,NULL,'abc','Mon Dec 28 11:10:12 IST 2020',0,0),(16,NULL,NULL,'abc','Mon Dec 28 11:11:24 IST 2020',0,0),(17,NULL,NULL,'abc','Mon Dec 28 11:12:06 IST 2020',0,0),(18,NULL,NULL,'abc','Mon Dec 28 11:12:11 IST 2020',0,0),(19,NULL,NULL,'abc','Mon Dec 28 11:12:50 IST 2020',0,0),(20,NULL,NULL,'abc','Mon Dec 28 11:12:54 IST 2020',0,0),(21,NULL,NULL,'abc','Mon Dec 28 11:13:09 IST 2020',0,0),(22,'hg','Delhi','abc','Mon Dec 28 11:13:09 IST 2020',0,0),(23,NULL,NULL,'abc','Mon Dec 28 11:13:57 IST 2020',0,0),(24,NULL,NULL,'abc','Mon Dec 28 11:20:06 IST 2020',0,0),(25,'nb','Delhi','abc','Mon Dec 28 11:50:26 IST 2020',700,700),(26,'vg','vv','abc','Mon Jan 04 12:03:58 IST 2021',1850,1850),(27,'vg','vv','abc','Mon Jan 04 12:04:01 IST 2021',0,0),(28,'vg','vv','abc','Mon Jan 04 12:04:29 IST 2021',0,0),(29,'vg','vv','abc','Mon Jan 04 12:04:38 IST 2021',0,0),(30,'vg','vv','abc','Mon Jan 04 12:04:53 IST 2021',0,0),(31,'vg','cc','abc','Mon Jan 04 12:11:51 IST 2021',700,700),(32,'abcdef','Amritsar','harjot','Mon Jan 04 13:18:31 IST 2021',2770,2770),(33,'abcdef','Amritsar','harjot','Mon Jan 04 13:18:57 IST 2021',0,0),(34,'abcdef','Amritsar','harjot','Mon Jan 04 13:21:02 IST 2021',0,0),(35,'abcdef','Amritsar','harjot','Mon Jan 04 13:23:41 IST 2021',0,0),(36,'abcdef','Amritsar','harjot','Mon Jan 04 13:24:08 IST 2021',0,0),(37,'0','0','abc','Mon Jan 04 15:10:47 IST 2021',5350,5350),(38,'0','0','abc','Mon Jan 04 15:10:49 IST 2021',0,0),(39,'gh','ghh','abc','Mon Jan 04 15:23:20 IST 2021',250,250),(40,'tyu','ft','abc','Mon Jan 04 15:43:41 IST 2021',300,300),(41,'abc','amritsar','abc','Mon Jan 04 15:46:35 IST 2021',2200,2200),(42,'verka','Amritsar','abc','Tue Jan 05 11:51:15 IST 2021',1200,1200),(43,'someone\r\n','Delhi','harjot','Wed Jan 06 12:00:08 IST 2021',750,750);
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 13:36:08
