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
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `products` (
  `pid` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `description` varchar(45) DEFAULT NULL,
  `photo` varchar(150) DEFAULT NULL,
  `price` int DEFAULT NULL,
  `offerprice` int DEFAULT NULL,
  `brand` varchar(45) DEFAULT NULL,
  `categoryname` varchar(45) DEFAULT NULL,
  `skid` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `fk1_idx` (`categoryname`),
  KEY `fk8_idx` (`skid`),
  CONSTRAINT `fk1` FOREIGN KEY (`categoryname`) REFERENCES `categories` (`categoryname`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `fk8` FOREIGN KEY (`skid`) REFERENCES `shopkeeper` (`skid`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `products`
--

LOCK TABLES `products` WRITE;
/*!40000 ALTER TABLE `products` DISABLE KEYS */;
INSERT INTO `products` VALUES (14,'Necklace','xyz','myuploads/diamond necklace2.jpg',700,700,'def','Necklace',1),(15,'Gold Necklace','xyz','myuploads/gold.jpg',1000,1000,'xyz','Necklace',2),(16,'Silver Necklace','xyz','myuploads/silver.jpg',1200,1200,'ghi','Necklace',3),(17,'Platinum Necklace','xyz','myuploads/platinum.jpg',1500,1500,'abc','Necklace',3),(18,'Diamond Anklet','xyz','myuploads/diamondanklet.jpg',250,250,'abc','Anklets',2),(19,'Silver Anklet','xyz','myuploads/Anklet6.jpg',300,300,'abc','Anklets',4),(20,'Gold Anklet','xyz','myuploads/goldanklet.jpg',400,400,'abc','Anklets',2),(21,'Platinum Anklet','xyz','myuploads/platinumanklet.jpg',500,500,'abc','Anklets',3),(23,'Platinum Bracelets','xyz','myuploads/platinumbracelet.jpg',250,250,'abc','Bracelets',1),(24,'Gold Bracelets','xyz','myuploads/goldbracelet.jpg',350,350,'abc','Bracelets',1),(25,'Silver Bracelets','xyz','myuploads/silverbracelet.jpg',450,450,'abc','Bracelets',1),(26,'Diamond Bracelets','xyz','myuploads/diamondbracelet.jpg',550,550,'abc','Bracelets',2),(27,'Silver Nose Pin','xyz','myuploads/nosepin1.jpg',650,650,'abc','Nose Pin',2),(28,'Gold Nose Pin','xyz','myuploads/goldnosepin.jpg',900,900,'abc','Nose Pin',3),(29,'Platinum Nose Pin','xyz','myuploads/platinumnosepin.jpg',1400,1400,'abc','Nose Pin',4),(30,'Diamond Nose Pin','xyz','myuploads/diamondnosepin.jpg',1700,1700,'abc','Nose Pin',4),(31,'Gold Chain','xyz','myuploads/chain1.jpg',500,500,'abc','Chains',4),(32,'Diamond Chain','xyz','myuploads/diamondchain.jpg',700,700,'abc','Chains',4),(33,'Silver Chain','xyz','myuploads/silverchain.jpg',900,900,'abc','Chains',2),(34,'Platinum Chain','xyz','myuploads/platinumchain.jpg',1100,1100,'abc','Chains',2),(35,'Gold Ring','xyz','myuploads/ring4.jpg',1200,1200,'abc','Rings',2),(36,'Silver Ring','xyz','myuploads/silverring.jpg',1700,1700,'abc','Rings',1),(37,'Platinum Ring','xyz','myuploads/platinumring.jpg',2300,2300,'abc','Rings',1),(38,'Diamond Ring','xyz','myuploads/ring1.jpg',2800,2800,'abc','Rings',1),(39,'Gold Earring','xyz','myuploads/earring.jpg',170,170,'abc','Earrings',1),(40,'Diamond Earring','xyz','myuploads/earring3.jpg',240,240,'abc','Earrings',3),(41,'Silver Earring','xyz','myuploads/earring2.jpg',540,540,'abc','Earrings',2),(42,'Platinum Earring','xyz','myuploads/platinumearring.jpg',720,720,'abc','Earrings',3),(43,'Gold Pendant Set','xyz','myuploads/goldpendantset.jpg',900,900,'abc','Pendant Set',3),(44,'Silver Pendant Set','xyz','myuploads/silverpendantset.jpg',1400,1400,'abc','Pendant Set',4),(45,'Platinum Pendant Set','xyz','myuploads/platinumpandentset.jpg',1900,1900,'abc','Pendant Set',2),(46,'Diamond Pendant Set','xyz','myuploads/diamondpendantset.jpg',2600,2600,'abc','Pendant Set',3);
/*!40000 ALTER TABLE `products` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-07 13:36:06
