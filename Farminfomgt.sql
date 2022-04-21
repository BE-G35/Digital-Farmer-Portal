CREATE DATABASE  IF NOT EXISTS `farmdb` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `farmdb`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: farmdb
-- ------------------------------------------------------
-- Server version	5.6.25-log

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
-- Table structure for table `contract`
--

DROP TABLE IF EXISTS `contract`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contract` (
  `ContractNo` int(11) NOT NULL,
  `Customer_id` float DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `Haulier_id` int(11) DEFAULT NULL,
  `Delivery_Date` varchar(10) DEFAULT NULL,
  `Delivery_Day` varchar(20) DEFAULT NULL,
  `Quantity` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ContractNo`),
  KEY `customerId_fk1` (`Customer_id`),
  KEY `productId_fk1` (`Product_id`),
  KEY `haulierId_fk1` (`Haulier_id`),
  CONSTRAINT `customerId_fk1` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  CONSTRAINT `haulierId_fk1` FOREIGN KEY (`Haulier_id`) REFERENCES `haulier` (`Haulier_id`),
  CONSTRAINT `productId_fk1` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contract`
--

LOCK TABLES `contract` WRITE;
/*!40000 ALTER TABLE `contract` DISABLE KEYS */;
/*!40000 ALTER TABLE `contract` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customer` (
  `Customer_id` float NOT NULL,
  `Customer_Name` varchar(120) DEFAULT NULL,
  `StreetAddress1` varchar(120) DEFAULT NULL,
  `StreetAddress2` varchar(20) DEFAULT NULL,
  `Town_City` varchar(20) DEFAULT NULL,
  `Postcode` varchar(20) DEFAULT NULL,
  `TelephoneNo` bigint(20) DEFAULT NULL,
  `Email` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Customer_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (101,'Kishor Kadam','Wakad','Pune','Pune','411033',255200,'kadamk33@gmail.com');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_crops`
--

DROP TABLE IF EXISTS `f_crops`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_crops` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `cname` varchar(45) DEFAULT NULL,
  `cimage` varchar(225) DEFAULT NULL,
  `cdesc` varchar(1000) DEFAULT NULL,
  `smonth` varchar(45) DEFAULT NULL,
  `emonth` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_crops`
--

LOCK TABLES `f_crops` WRITE;
/*!40000 ALTER TABLE `f_crops` DISABLE KEYS */;
INSERT INTO `f_crops` VALUES (17,'Zaid Crops','Turf booking project in java.png','Grown between march and harvested in June. It is between Kharif and rabi crop. Usually, we eat this in the summer season.','March','June'),(19,'Rabi','wheeat.jpg',' Rabi means when the crop is harvested. Crops that are grown in the winter season, from November to April are called Rabi Crops. Some of the important rabi crops are wheat, barley, peas, gram, and mustard.','April','June'),(24,'Soyabean','soyabean.jpg','Soybean is the major oilseed crop cultivated during Kharif season. Sowing starts in June and the crop gets harvested in September. It has been observed that prices start to fall during the sowing and planting stage, and continue to decline further during the crop development stages in July, August and September.','June','September'),(31,'New Crop','photo-1560493676-04071c5f467b.jpeg','sdvsdvsdv','January','February'),(32,'Testingh','d93318af-2725-4d4c-a5f5-82bb8f6ab0de.jpg','cbdfgfd','February','March'),(33,'dfdsfs','804ffcf7-a13c-4dd2-b46b-30045228525d.jpg','dfs','January','January'),(34,'testing crop','0c5eec08-84da-45ac-a54b-796119a72398.jpg','fdfdsfsd','February','May');
/*!40000 ALTER TABLE `f_crops` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_equipment`
--

DROP TABLE IF EXISTS `f_equipment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_equipment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(45) DEFAULT NULL,
  `erange` varchar(45) DEFAULT NULL,
  `edesc` varchar(1245) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_equipment`
--

LOCK TABLES `f_equipment` WRITE;
/*!40000 ALTER TABLE `f_equipment` DISABLE KEYS */;
INSERT INTO `f_equipment` VALUES (1,'Plough','5000-6050','A Plough is used for the initial cultivation of soil in preparation for sowing seeds. The main function of the Plough is to turn the upper layer of the soil.','download (1).jpg'),(4,'Sprayers','200-300','Sprayers are used to apply compost tea, herbicides, and pesticides. Different varieties of sprayers are available.','sprayer.jpg');
/*!40000 ALTER TABLE `f_equipment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_insecticide`
--

DROP TABLE IF EXISTS `f_insecticide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_insecticide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `iname` varchar(45) DEFAULT NULL,
  `irange` varchar(45) DEFAULT NULL,
  `idesc` varchar(1225) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_insecticide`
--

LOCK TABLES `f_insecticide` WRITE;
/*!40000 ALTER TABLE `f_insecticide` DISABLE KEYS */;
INSERT INTO `f_insecticide` VALUES (1,'DDT','5020-6700','Dichlorodiphenyltrichloroethane, commonly known as DDT, is a colorless, tasteless, and almost odorless crystalline chemical compound, an organochlorine. Originally developed as an insecticide, it became infamous for its environmental impacts. DDT was first synthesized in 1874 by the Austrian chemist Othmar Zeidler.','Turf booking project in java.png'),(7,'Aldrin','2000-4000','Aldrin is a pesticide used to control soil insects such as termites, corn rootworm, wireworms, rice water weevil, and grasshoppers. It has been widely used to protect crops such as corn and potatoes, and has been effective to protect wooden structures from termites.','insec.png');
/*!40000 ALTER TABLE `f_insecticide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_pesticide`
--

DROP TABLE IF EXISTS `f_pesticide`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_pesticide` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pname` varchar(45) DEFAULT NULL,
  `prange` varchar(45) DEFAULT NULL,
  `image` varchar(45) DEFAULT NULL,
  `pdesc` varchar(1245) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_pesticide`
--

LOCK TABLES `f_pesticide` WRITE;
/*!40000 ALTER TABLE `f_pesticide` DISABLE KEYS */;
INSERT INTO `f_pesticide` VALUES (3,'Chlorpyrifos','2000-4000','chlo.jpg','Chlorpyrifos is an organophosphate pesticide used on crops, animals, and buildings, and in other settings, to kill a number of pests, including insects and worms. It acts on the nervous systems of insects by inhibiting the acetylcholinesterase enzyme.');
/*!40000 ALTER TABLE `f_pesticide` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `f_user`
--

DROP TABLE IF EXISTS `f_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `f_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `username` varchar(45) DEFAULT NULL,
  `mobile` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `email` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  `state` varchar(45) DEFAULT NULL,
  `address` varchar(145) DEFAULT NULL,
  `roleid` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username_UNIQUE` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `f_user`
--

LOCK TABLES `f_user` WRITE;
/*!40000 ALTER TABLE `f_user` DISABLE KEYS */;
INSERT INTO `f_user` VALUES (1,'admin','admin','8806793322','admin123','admin@yahoo.com','Bhusawal','Maharashtra','A B Street',1),(2,'huma','Humak','8806793322','khan','huma@yahoo.com','Bhusawal','Maharashtra','shivaji nagar',2),(11,'Sheeba','Sheebak','9999999999','sheeba','s@yahoo.com','Pune','Maharashtra','A B Street',2),(24,'tuwori','Hari','9685456585','321','bopytizaha@mailinator.com','xotyga','Andhra Pradesh','Ex aut quis veniam ',2),(25,'bhupii','bhupii','8585858585','Demo@123','bhupii@gmail.com','indore','Andhra Pradesh','fdfndsdfsdsdsssds',2),(26,'gywihiq','sifolo','8585858585','Demo@123','vewevavok@mailinator.com','zyfivuguw','Lakshadweep','Error voluptatem non',2);
/*!40000 ALTER TABLE `f_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `haulier`
--

DROP TABLE IF EXISTS `haulier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `haulier` (
  `Haulier_id` int(11) NOT NULL,
  `Haulier_Name` varchar(50) DEFAULT NULL,
  `StreetAddress1` varchar(50) DEFAULT NULL,
  `StreetAddress2` varchar(50) DEFAULT NULL,
  `Town_City` varchar(50) DEFAULT NULL,
  `Postcode` varchar(50) DEFAULT NULL,
  `TelephoneNo` bigint(20) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Haulier_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `haulier`
--

LOCK TABLES `haulier` WRITE;
/*!40000 ALTER TABLE `haulier` DISABLE KEYS */;
/*!40000 ALTER TABLE `haulier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orders`
--

DROP TABLE IF EXISTS `orders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orders` (
  `OrderNo` int(11) NOT NULL,
  `Customer_id` float DEFAULT NULL,
  `Product_id` int(11) DEFAULT NULL,
  `Haulier_id` int(11) DEFAULT NULL,
  `Delivery_Date` varchar(10) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`OrderNo`),
  KEY `customerId_fk` (`Customer_id`),
  KEY `productId_fk` (`Product_id`),
  KEY `haulierId_fk` (`Haulier_id`),
  CONSTRAINT `customerId_fk` FOREIGN KEY (`Customer_id`) REFERENCES `customer` (`Customer_id`),
  CONSTRAINT `haulierId_fk` FOREIGN KEY (`Haulier_id`) REFERENCES `haulier` (`Haulier_id`),
  CONSTRAINT `productId_fk` FOREIGN KEY (`Product_id`) REFERENCES `product` (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orders`
--

LOCK TABLES `orders` WRITE;
/*!40000 ALTER TABLE `orders` DISABLE KEYS */;
/*!40000 ALTER TABLE `orders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `Product_id` int(11) NOT NULL,
  `Product_Name` varchar(40) DEFAULT NULL,
  `Product_Description` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`Product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (201,'HP Laptop','1 TB Hardisk, 8 GB RAM');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-02-05 21:43:31
