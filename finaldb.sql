-- MySQL dump 10.13  Distrib 8.0.16, for macos10.14 (x86_64)
--
-- Host: 127.0.0.1    Database: fs_bnb
-- ------------------------------------------------------
-- Server version	8.0.16

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Address`
--

DROP TABLE IF EXISTS `Address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Address` (
  `addressID` int(11) NOT NULL AUTO_INCREMENT,
  `street` varchar(255) NOT NULL,
  `city` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `zipCode` int(11) NOT NULL,
  PRIMARY KEY (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=42 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Address`
--

LOCK TABLES `Address` WRITE;
/*!40000 ALTER TABLE `Address` DISABLE KEYS */;
INSERT INTO `Address` VALUES (1,'Main Street','Charlottesville','VA',22903),(2,'Park Avenue','Charlottesville','VA',22903),(3,'Newbury Street','Charlottesville','VA',22903),(4,'Maple Drive','Charlottesville','VA',22903),(5,'Oak Lane','Charlottesville','VA',22903),(6,'Elm Street','Charlottesville','VA',22903),(7,'Rodeo Drive','Harrisonburg','VA',22807),(8,'Turner Boulevard','Harrisonburg','VA',22807),(9,'Boardwalk Avenue','Harrisonburg','VA',22807),(10,'Pinewood Lane','Fairfax','VA',22030),(11,'1 Hollow Road','Fairfax','VA',22030),(12,'2 Plymouth Ave','Blacksburg','VA',24061),(13,'3 Cushing Street','Blacksburg','VA',24061),(14,'4 1023 James St.','Norfolk','VA',23508),(15,'5 Back Bay St.','Norfolk','VA',23508),(16,'6 Bulldog Rd.','Norfolk','VA',23508),(17,'Fifth Avenue','Newport News','VA',23606),(18,'Daffodil Avenue','Newport News','VA',23606),(19,'7 University St.','College Park','MD’',20742),(20,'1890 Armory Square','College Park','MD’',20742),(21,'10 Scars St.','College Park','MD’',20742),(22,'11 Rose Ln.','New York','NY',10003),(23,'12 Harbor View Rd.','New York','NY',10003),(24,'13 Panther Ave','New York','NY',10003),(25,'14 Haverford Rd.','St. Louis','MO',63130),(26,'Iris Street','Charlottesville','VA',22903),(27,'Parkway Avenue','Charlottesville','VA',22903),(28,'Newport Street','Charlottesville','VA',22903),(29,'Maple Drive','Charlottesville','VA',22903),(30,'Romeo Drive','Harrisonburg','VA',22807),(31,'Turing Boulevard','Harrisonburg','VA',22807),(32,'Board Avenue','Harrisonburg','VA',22807),(33,'Pine Lane','Fairfax','VA',22030),(34,'Hollowy Road','Fairfax','VA',22030),(35,'2 Plymouth Ave','Blacksburg','VA',24061),(36,'4 1023 Jane St.','Norfolk','VA',23508),(37,'University Avenue','College Park','MD’',20742),(38,'Times Square Ln.','New York','NY',10003),(39,'Harbor View Street','New York','NY',10003),(40,'Pary Street','New York','NY',10003),(41,'College Drive.','St. Louis','MO',63130);
/*!40000 ALTER TABLE `Address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Apartment`
--

DROP TABLE IF EXISTS `Apartment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Apartment` (
  `propertyID` int(11) NOT NULL AUTO_INCREMENT,
  `description` varchar(255) NOT NULL,
  `rent` decimal(6,2) NOT NULL,
  `numBed` int(11) NOT NULL,
  `numBath` decimal(3,1) NOT NULL,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`propertyID`),
  KEY `addressID` (`addressID`),
  CONSTRAINT `apartment_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Apartment`
--

LOCK TABLES `Apartment` WRITE;
/*!40000 ALTER TABLE `Apartment` DISABLE KEYS */;
INSERT INTO `Apartment` VALUES (1,'Cozy 4 bedroom apartment on the Corner',900.50,4,2.5,1),(2,'3 bedroom apartment near UVA grounds',2100.50,3,1.5,2),(3,'1 bedroom apartment and 1 bath',800.00,1,1.0,3),(4,'2 bedroom apartment near UVA grounds',1550.00,2,2.0,4),(5,'5 bedroom apartment',2250.00,5,3.5,7),(6,'2 bedroom apartment on JMU campus',1550.00,2,1.5,8),(7,'3 bedroom apartment',2100.50,3,2.5,10),(8,'2 bedroom apartment on campus',1600.00,2,1.0,12),(9,'6 bedroom apartment near campus',2500.50,6,4.5,14),(10,'5 bedroom apartment outside of campus',2100.75,5,3.5,15),(11,'Furnished 2 bedroom apartment ',2000.50,2,2.0,17),(12,'2 bedroom apartment',1700.50,2,2.0,18),(13,'1 bedroom apartment on campus',850.00,1,1.0,19),(14,'4 bedroom apartment on campus',3000.00,4,4.0,20),(15,'7 bedroom apartment near campus',3400.50,7,4.5,22),(16,'2 bedroom apartment outside of campus',1500.00,2,1.5,23);
/*!40000 ALTER TABLE `Apartment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attends`
--

DROP TABLE IF EXISTS `Attends`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Attends` (
  `userID` int(11) NOT NULL,
  `universityID` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `universityID` (`universityID`),
  CONSTRAINT `attends_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`),
  CONSTRAINT `attends_ibfk_2` FOREIGN KEY (`universityID`) REFERENCES `university` (`universityID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attends`
--

LOCK TABLES `Attends` WRITE;
/*!40000 ALTER TABLE `Attends` DISABLE KEYS */;
INSERT INTO `Attends` VALUES (10,1),(11,1),(12,1),(13,1),(14,2),(15,2),(16,2),(17,3),(18,3),(19,4),(20,5),(21,7),(22,8),(23,8),(24,8),(25,9);
/*!40000 ALTER TABLE `Attends` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `booking` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `dateTo` varchar(45) NOT NULL,
  `userId` int(6) unsigned NOT NULL,
  `dateFrom` varchar(45) NOT NULL,
  `propertyId` int(6) unsigned NOT NULL,
  `status` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `userId_idx` (`userId`),
  KEY `propertyId_idx` (`propertyId`),
  CONSTRAINT `propertyId` FOREIGN KEY (`propertyId`) REFERENCES `property` (`id`) ON DELETE RESTRICT,
  CONSTRAINT `userId` FOREIGN KEY (`userId`) REFERENCES `user` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=224 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (183,'2019-07-29T14:40:12.981Z',5,'2019-07-29T14:40:12.981Z',2,'NEW'),(184,'2019-07-29T14:40:12.981Z',5,'2019-07-29T14:40:12.981Z',2,'NEW'),(185,'2019-07-29T14:40:12.981Z',5,'2019-07-29T14:40:12.981Z',2,'NEW'),(186,'2019-07-29T14:40:12.981Z',5,'2019-07-29T14:40:12.981Z',2,'NEW'),(200,'2019-07-29T14:40:12.981Z',5,'2019-07-29T14:40:12.981Z',2,'NEW'),(221,'2019-07-29T21:44:08.550Z',5,'2019-07-29T21:44:08.550Z',2,'NEW'),(222,'2019-07-29T21:44:14.525Z',5,'2019-07-29T21:44:14.525Z',11,'NEW'),(223,'2019-07-29T21:44:21.453Z',5,'2019-07-29T21:44:21.453Z',14,'NEW');
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Customer`
--

DROP TABLE IF EXISTS `Customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Customer` (
  `userID` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `firstName` varchar(255) NOT NULL,
  `lastName` varchar(255) NOT NULL,
  `addressID` int(11) NOT NULL,
  PRIMARY KEY (`userID`),
  KEY `addressID` (`addressID`),
  CONSTRAINT `customer_ibfk_1` FOREIGN KEY (`addressID`) REFERENCES `address` (`addressID`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Customer`
--

LOCK TABLES `Customer` WRITE;
/*!40000 ALTER TABLE `Customer` DISABLE KEYS */;
INSERT INTO `Customer` VALUES (1,'jack@gmail.com','jack123','Jack','Black',5),(2,'chun@gmail.com','chun123','Chun','Lu',6),(3,'mike@gmail.com','mike123','Mike','Masner',9),(4,'rachel@gmail.com','rachel123','Rachel','Lew',11),(5,'joel@gmail.com','joel123','Joel','Taverez',13),(6,'qasim@gmail.com','qasim123','Qasim','Qasim',16),(7,'jason@gmail.com','jason123','Jason','Newberry',21),(8,'jacob@gmail.com','jacob123','Jacob','Ray',24),(9,'audi@gmail.com','audi123','Audi','Orr',25),(10,'mason@gmail.com','mason123','Mason','Mill',26),(11,'bob@gmail.com','bob123','Bob','Lee',27),(12,'larry@gmail.com','larry123','Larry','Lob',28),(13,'justin@gmail.com','justin123','Justin','Chez',29),(14,'cris@gmail.com','cris123','Cris','Small',30),(15,'turner@gmail.com','turner123','Turner','Ture',31),(16,'sherry@gmail.com','sherry123','Sherry','Law',32),(17,'upsorn@gmail.com','upsorn123','Upsorn','Pra',33),(18,'zach@gmail.com','zach123','Zach','Orr',34),(19,'carson@gmail.com','carson123','Carson','Nau',35),(20,'mary@gmail.com','mary123','Mary','Labm',36),(21,'ash@gmail.com','ash123','Ash','Ketchum',37),(22,'brock@gmail.com','brock123','Brock','Stone',38),(23,'misty@gmail.com','misty123','Misty','Water',39),(24,'gary@gmail.com','gary123','Gary','Oak',40),(25,'oak@gmail.com','oak123','Oak','Proc',41);
/*!40000 ALTER TABLE `Customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Image`
--

DROP TABLE IF EXISTS `Image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Image` (
  `imageID` int(11) NOT NULL AUTO_INCREMENT,
  `imageURL` varchar(750) NOT NULL,
  `propertyID` int(11) NOT NULL,
  PRIMARY KEY (`imageID`),
  KEY `propertyID` (`propertyID`),
  CONSTRAINT `image_ibfk_1` FOREIGN KEY (`propertyID`) REFERENCES `apartment` (`propertyID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Image`
--

LOCK TABLES `Image` WRITE;
/*!40000 ALTER TABLE `Image` DISABLE KEYS */;
/*!40000 ALTER TABLE `Image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Lists`
--

DROP TABLE IF EXISTS `Lists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Lists` (
  `propertyID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  `rentalStart` date NOT NULL,
  `rentalEnd` date NOT NULL,
  `status` varchar(255) NOT NULL,
  PRIMARY KEY (`propertyID`,`userID`),
  KEY `userID` (`userID`),
  CONSTRAINT `lists_ibfk_1` FOREIGN KEY (`propertyID`) REFERENCES `apartment` (`propertyID`),
  CONSTRAINT `lists_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Lists`
--

LOCK TABLES `Lists` WRITE;
/*!40000 ALTER TABLE `Lists` DISABLE KEYS */;
INSERT INTO `Lists` VALUES (1,1,'2021-07-01','2022-07-01','available'),(2,1,'2020-07-05','2021-07-05','taken'),(3,2,'2021-07-15','2022-07-15','available'),(4,2,'2020-07-15','2021-07-15','taken'),(5,3,'2020-08-01','2021-08-01','taken'),(6,3,'2020-07-30','2021-07-30','taken'),(7,4,'2020-07-05','2021-07-05','taken'),(8,5,'2020-08-05','2021-08-05','taken'),(9,6,'2020-08-01','2021-08-01','taken'),(10,6,'2020-08-04','2021-08-04','available'),(11,6,'2020-06-04','2021-06-04','available'),(12,6,'2021-06-04','2022-06-04','available'),(13,7,'2020-06-20','2021-06-20','available'),(14,7,'2021-06-30','2022-06-30','available'),(15,7,'2020-06-25','2021-06-25','available'),(16,8,'2021-07-30','2022-07-30','available');
/*!40000 ALTER TABLE `Lists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `migrations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `run_on` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (6,'/20190719080020-provider','2019-07-19 10:31:02');
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Phone`
--

DROP TABLE IF EXISTS `Phone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Phone` (
  `cellPhone` bigint(20) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`cellPhone`),
  KEY `userID` (`userID`),
  CONSTRAINT `phone_ibfk_1` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Phone`
--

LOCK TABLES `Phone` WRITE;
/*!40000 ALTER TABLE `Phone` DISABLE KEYS */;
INSERT INTO `Phone` VALUES (7031239877,1),(7031239878,1),(8031231874,2),(7570312318,3),(7571231874,3),(8041920581,4),(8043211814,4),(1928749102,5),(9040217591,6),(9049182010,6),(2910281011,7),(2010291929,8),(2015102916,8),(2018201028,8),(7100211022,9),(1239190310,10),(1239750192,10),(9019470182,11),(4758018201,12),(8012910191,13),(8041928401,14),(7571928018,15),(7572981021,16),(1840184910,17),(1910198491,17),(1919571048,17),(1958104840,18),(1101029040,19),(1104857193,19),(1108584919,19),(5858104934,20),(5802957192,21),(5910485010,22),(5571920190,23),(1491058501,24),(1494910490,24),(1491958519,25);
/*!40000 ALTER TABLE `Phone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `property` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  `providerId` int(6) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `providerId_idx` (`providerId`),
  CONSTRAINT `providerId` FOREIGN KEY (`providerId`) REFERENCES `provider` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,'Exclusive Apartment Overlooking Lion\'s Head Mountain','595 ','Cape Town, Western Cape, South Africa','https://rnr.co.za/wp-content/uploads/myhh_images/beautiful-house-hd-wallpapers-6.jpg',1),(2,'Super Stylish Kloof Street Apartment','292 ','Cape Town, Western Cape, South Africa','https://a0.muscache.com/im/pictures/fd1de76b-8e65-4d8a-a1af-e6012388665a.jpg?aki_policy=xx_large',2),(3,'Superbly Stylish Sanctuary with Stunning Views','490 ','Cape Town, Western Cape, South Africa','https://a0.muscache.com/im/pictures/2b89e7e1-40fc-43bb-9b85-de7438e12923.jpg?aki_policy=xx_large',3),(11,'Beautiful House by Bavaro Beach','12900','Punta Cana, Dominican Republic','https://s3-us-west-2.amazonaws.com/locations-images/image_60463.jpeg',4),(12,'Spacious City Centre Studio','320','Western Cape, Cape Town, South Africa','https://a0.muscache.com/im/pictures/b094e5ef-e633-46c4-84de-585bd271fc74.jpg?aki_policy=xx_large',4),(14,'Charm Of Old Montmartre','1312','Montmartre, Paris','https://a0.muscache.com/im/pictures/88221400/518d4559_original.jpg?aki_policy=xx_large',4);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `propertyOG`
--

DROP TABLE IF EXISTS `propertyOG`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `propertyOG` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `price` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL,
  `imageUrl` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `propertyOG`
--

LOCK TABLES `propertyOG` WRITE;
/*!40000 ALTER TABLE `propertyOG` DISABLE KEYS */;
INSERT INTO `propertyOG` VALUES (1,'Exclusive Apartment Overlooking Lion\'s Head Mountain','595 ZAR/night','Cape Town, Western Cape, South Africa','https://rnr.co.za/wp-content/uploads/myhh_images/beautiful-house-hd-wallpapers-6.jpg'),(2,'Super Stylish Kloof Street Apartment','292 ZAR/night','Cape Town, Western Cape, South Africa','https://a0.muscache.com/im/pictures/fd1de76b-8e65-4d8a-a1af-e6012388665a.jpg?aki_policy=xx_large'),(3,'Superbly Stylish Sanctuary with Stunning Views','490 ZAR/night','Cape Town, Western Cape, South Africa','https://a0.muscache.com/im/pictures/2b89e7e1-40fc-43bb-9b85-de7438e12923.jpg?aki_policy=xx_large'),(4,'Sea views, fast WIFI, noise free, netflix','420 ZAR/night','Cape Town, Western Cape, South Africa','https://a0.muscache.com/im/pictures/8f76e824-f0b4-4ed4-86da-bce5c109d47a.jpg?aki_policy=xx_large');
/*!40000 ALTER TABLE `propertyOG` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `provider`
--

DROP TABLE IF EXISTS `provider`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `provider` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `lastName` varchar(45) NOT NULL,
  `cellPhone` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(45) NOT NULL,
  `role` varchar(45) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `provider`
--

LOCK TABLES `provider` WRITE;
/*!40000 ALTER TABLE `provider` DISABLE KEYS */;
INSERT INTO `provider` VALUES (1,'Rompe','Toto','3478299231','b@c.com','b','provider'),(2,'Kyle','Jenkins','555','j','a','provider'),(3,'John','Eshirow','555','eshirow@gmail.com','a','provider'),(4,'John','Eshirow','555','joel','a','provider'),(5,'John','Eshirow','555','chino@gmail.com','a','provider'),(6,'ff','ff','ff','ff','ff','provider'),(7,'kyle','guy','555','guy@gmail.com','g','provider'),(8,'a','b','911','a@b.com','a','provider');
/*!40000 ALTER TABLE `provider` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rents`
--

DROP TABLE IF EXISTS `Rents`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `Rents` (
  `propertyID` int(11) NOT NULL,
  `userID` int(11) NOT NULL,
  PRIMARY KEY (`propertyID`),
  KEY `userID` (`userID`),
  CONSTRAINT `rents_ibfk_1` FOREIGN KEY (`propertyID`) REFERENCES `apartment` (`propertyID`),
  CONSTRAINT `rents_ibfk_2` FOREIGN KEY (`userID`) REFERENCES `customer` (`userID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rents`
--

LOCK TABLES `Rents` WRITE;
/*!40000 ALTER TABLE `Rents` DISABLE KEYS */;
INSERT INTO `Rents` VALUES (2,10),(4,11),(5,14),(6,15),(7,17),(8,19),(9,20);
/*!40000 ALTER TABLE `Rents` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `University`
--

DROP TABLE IF EXISTS `University`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `University` (
  `universityID` int(11) NOT NULL AUTO_INCREMENT,
  `schoolName` varchar(255) NOT NULL,
  PRIMARY KEY (`universityID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `University`
--

LOCK TABLES `University` WRITE;
/*!40000 ALTER TABLE `University` DISABLE KEYS */;
INSERT INTO `University` VALUES (1,'University of Virginia'),(2,'James Madison University'),(3,'George Mason University'),(4,'Virginia Tech'),(5,'Old Dominion University'),(6,'Christopher Newport University'),(7,'University of Maryland'),(8,'New York University'),(9,'Washington University');
/*!40000 ALTER TABLE `University` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `id` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `surName` varchar(255) NOT NULL,
  `cellPhone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(30) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'Brett','Villiers','0928123463','byron@appstrax.tech','password','provider'),(2,'Alice','Ville','0928123222','alice@appstrax.tech','passwords','admin'),(3,'Alex','Rivera','0928123222','rivera@mail.com','p@ssword','admin'),(4,'Rompe','Toto','3478299231','cornholio@gmail.com','password','admin'),(5,'Joel','Tavarez','3478676237','jt3bk@virginia.edu','password','user'),(6,'Moja','Panty','3478299231','majar@gmail.com','password','user'),(7,'Michael','Jordan','3478129233','jordan@gmail.com','password','user'),(8,'Joel','Tavarez','3478293331','mm6md@gmauk.com','password','user'),(9,'Michael','Masner','3478195430','mm6md@virginia.edu','password','user'),(10,'a','b','911','a@b.com','a','user'),(19,'John','Eshirow','3478195430','eshirow@gmail.com','password','provider');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-15 23:15:58
