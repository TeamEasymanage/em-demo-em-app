-- MySQL dump 10.14  Distrib 5.5.68-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mysqldb02
-- ------------------------------------------------------
-- Server version	5.5.68-MariaDB

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
-- Table structure for table `communication_sessions_view`
--

DROP TABLE IF EXISTS `communication_sessions_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `communication_sessions_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Study` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Person_Interviewed` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `GoToMeeting_URL` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Overall_Feedback_Score` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Session_Type` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `communication_sessions_view`
--

LOCK TABLES `communication_sessions_view` WRITE;
/*!40000 ALTER TABLE `communication_sessions_view` DISABLE KEYS */;
INSERT INTO `communication_sessions_view` VALUES (1,'Andrea Colon, Initial Interview','Pokémon Go workflow','2017-07-29','Andrea Colon','www.gotomeeting.com/totallyrealmeeting','Complete ','5','Initial Interview'),(2,'Sixto Rodriguez, Initial Interview','Tweet time capsule workflow','2017-01-08','Sixto Rodriguez','www.gotomeeting.com/totallyrealmeeting','Canceled ','4','Initial Interview'),(3,'Andrea Colon, Followup Session','Pokémon Go workflow','2017-02-08','Andrea Colon','www.gotomeeting.com/totallyrealmeeting','Planned','5','Followup Session'),(4,'Ashley Ng, Initial Interview','Tweet time capsule workflow','2017-04-08','Ashley Ng','www.gotomeeting.com/totallyrealmeeting','Complete ','5','Initial Interview'),(5,'Barzin Rodriguez, Followup Session','Zapier recursion workflow','2017-08-08','Barzin Rodriguez','www.gotomeeting.com/totallyrealmeeting','Canceled ','3','Followup Session'),(6,'Benjamin Brady, Followup Session','Facebook deescalation workflow','2017-10-08','Benjamin Brady','www.gotomeeting.com/totallyrealmeeting','No-Show','5','Followup Session');
/*!40000 ALTER TABLE `communication_sessions_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `content_production_pipeline`
--

DROP TABLE IF EXISTS `content_production_pipeline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `content_production_pipeline` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Headline` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Creator` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `Channels` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `content_production_pipeline`
--

LOCK TABLES `content_production_pipeline` WRITE;
/*!40000 ALTER TABLE `content_production_pipeline` DISABLE KEYS */;
INSERT INTO `content_production_pipeline` VALUES (1,'UK villages','Live','7 off-the-beaten-path places to visit in Britain','Rin O\'Shea','2021-03-21','Blog,Email,Instagram,Facebook,Twitter'),(2,'Museums','Live','The 5 most affordable safaris','Ash Quintana','2021-03-24','Blog,Instagram,Twitter,Facebook'),(3,'Poolside views','In progress','Why you should pay more for a poolside view','Rin O\'Shea','2021-03-29','Blog,Instagram,Twitter,Facebook'),(4,'Best restaurants','On hold','Don\'t forget these 11 beach essentials','Ash Quintana','2021-04-29','Blog,Email,Instagram,Facebook'),(5,'Carlos interview','Reviews','Interview: Carlos Richardson\'s Mt. Kilimanjaro adventure','Lee Szabo','2021-04-12','Twitter,AdWords,Blog'),(6,'Safaris','Planning','The best restaurants to visit while travelling','Lee Szabo','2021-04-14','Twitter,AdWords,Blog'),(7,'Beach essentials','Planning','Don\'t miss these 10 museums','Rin O\'Shea','2021-04-21','Blog,Email,Instagram,Facebook,Twitter');
/*!40000 ALTER TABLE `content_production_pipeline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `creative_talent_role`
--

DROP TABLE IF EXISTS `creative_talent_role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `creative_talent_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Role` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Category` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Skills` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Availability_Date` date DEFAULT NULL,
  `Region` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Manager` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Portfolio` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `creative_talent_role`
--

LOCK TABLES `creative_talent_role` WRITE;
/*!40000 ALTER TABLE `creative_talent_role` DISABLE KEYS */;
INSERT INTO `creative_talent_role` VALUES (1,'Edra Cutter','Chief Executive Officer','Acount Management','People Management,Campaign Strategy,Copywriting','2019-02-03','India','Jenniffer Janey','www.portfolioexample.com','edra@fauxagency.com','(482) 555-5571'),(2,'Jenniffer Janey','Creative Director','Creative','Campaign Strategy,Copywriting,Typography','2020-07-14',' Europe','Edra Cutter','www.portfolioexample.com','jenniffer@fauxagency.com','(493) 555-4793'),(3,'Rasheeda Gaccione','Art Director','Creative','Typography,Visual Design','2020-04-30','Canada','Jenniffer Janey','www.portfolioexample.com','rasheeda@fauxagency.com','(660) 555-6752'),(4,'Ekto Guidi','Designer','Creative','Visual Design,Studio Lighting','2019-02-03','Japan','Rasheeda Gaccione','www.portfolioexample.com','ekto@fauxagency.com','(385) 555-9615'),(5,'Bennet Song',' Designer','Creative','Studio Lighting,Typography','2019-04-15','India','Rasheeda Gaccione','www.portfolioexample.com','bennet@fauxagency.com','(716) 555-4185');
/*!40000 ALTER TABLE `creative_talent_role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `employee` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `mobile` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES ('Jane','20, Fair Oaks','11111111'),('John','10, Fair Oaks','11111111');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_TblAllFldTypes`
--

DROP TABLE IF EXISTS `erp_TblAllFldTypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_TblAllFldTypes` (
  `Person_Id` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `Name` varchar(300) COLLATE utf8_bin DEFAULT NULL,
  `Phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Mobile_Phone` varchar(20) COLLATE utf8_bin DEFAULT NULL,
  `Pict` mediumblob,
  `Email` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `WebSite` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `Address` text COLLATE utf8_bin,
  `DateOfInquiry` date DEFAULT NULL,
  `RequestedQty` int(11) DEFAULT NULL,
  `ReqQuoteAmt` decimal(20,4) DEFAULT NULL,
  `MeetingPrefTime` time DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`Person_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_TblAllFldTypes`
--

LOCK TABLES `erp_TblAllFldTypes` WRITE;
/*!40000 ALTER TABLE `erp_TblAllFldTypes` DISABLE KEYS */;
INSERT INTO `erp_TblAllFldTypes` VALUES ('1','John Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('10','10 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('11','11 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('2','Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('3','3 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('4','4 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('5','5 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('6','6 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('7','7 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('8','8 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('9','9 Jane Doe','+1 408 555 5555','+91 99999 99999',NULL,'info@yourdomain.com','https://www.yourdomain.com','Street 1 \n Landmark Name','2022-05-01',5450,10050.4444,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58');
/*!40000 ALTER TABLE `erp_TblAllFldTypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_TblKeyDate`
--

DROP TABLE IF EXISTS `erp_TblKeyDate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_TblKeyDate` (
  `DateOfInquiry` date NOT NULL DEFAULT '0000-00-00',
  `RequestedQty` int(11) DEFAULT NULL,
  `ReqQuoteAmt` decimal(20,4) DEFAULT NULL,
  `MeetingPrefTime` time DEFAULT NULL,
  `Created` datetime DEFAULT NULL,
  `Updated` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`DateOfInquiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_TblKeyDate`
--

LOCK TABLES `erp_TblKeyDate` WRITE;
/*!40000 ALTER TABLE `erp_TblKeyDate` DISABLE KEYS */;
INSERT INTO `erp_TblKeyDate` VALUES ('2022-05-01',550,400.5500,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('2022-05-02',550,400.5500,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58'),('2022-05-03',550,400.5500,'22:00:58','2022-05-01 22:00:58','2022-05-01 16:30:58');
/*!40000 ALTER TABLE `erp_TblKeyDate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_inventory`
--

DROP TABLE IF EXISTS `erp_inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_inventory` (
  `inventory_id` int(11) NOT NULL,
  `inv_location` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `inv_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `inv_qty` int(11) DEFAULT NULL,
  `inv_min_qty` int(11) DEFAULT NULL,
  `inv_cost` decimal(19,4) DEFAULT NULL,
  PRIMARY KEY (`inventory_id`),
  UNIQUE KEY `inventory_id` (`inventory_id`,`inv_location`,`inv_date`),
  CONSTRAINT `erp_product_id` FOREIGN KEY (`inventory_id`) REFERENCES `erp_product` (`product_id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_inventory`
--

LOCK TABLES `erp_inventory` WRITE;
/*!40000 ALTER TABLE `erp_inventory` DISABLE KEYS */;
INSERT INTO `erp_inventory` VALUES (1,'USA','2022-05-01 16:30:58',77,102,508.0000),(2,'USA','2022-03-01 16:30:58',11,15,140.0000),(3,'USA','2022-02-01 16:30:58',3000,3990,4009.5000),(4,'USA','2022-01-01 16:30:58',300,399,5269.0000),(5,'USA','2021-12-01 16:30:58',200,266,755.5000),(6,'USA','2021-11-01 16:30:58',1111,1478,1806.0000),(7,'USA','2021-10-01 16:30:58',5639,7500,9306.5000),(8,'USA','2021-09-01 16:30:58',8787,11687,20841.0000),(9,'USA','2021-08-01 16:30:58',55,73,14335.5000),(10,'USA','2021-07-01 16:30:58',95944,127606,127700.0000),(11,'USA','2021-06-01 16:30:58',0,0,155684.5000),(12,'USA','2021-05-01 16:30:58',54545,72545,72551.0000),(13,'USA','2021-04-01 16:30:58',5545,7375,95886.5000),(14,'USA','2021-03-01 16:30:58',8889,11822,20827.0000),(15,'USA','2021-02-01 16:30:58',336,447,14877.5000),(16,'USA','2021-01-01 16:30:58',4887,6500,7053.0000),(17,'USA','2020-12-01 16:30:58',9555,12708,20646.5000),(18,'USA','2020-11-01 16:30:58',65656,87322,102835.0000),(19,'USA','2020-10-01 16:30:58',336,447,106989.5000),(20,'USA','2020-09-01 16:30:58',444,591,1146.0000),(21,'USA','2020-08-01 16:30:58',4444,5911,6642.5000),(22,'USA','2020-07-01 16:30:58',54654,72690,79912.0000),(23,'USA','2020-06-01 16:30:58',644,857,89550.5000),(24,'USA','2020-05-01 16:30:58',826,1099,2157.0000),(25,'USA','2020-04-01 16:30:58',555,738,2091.5000),(26,'USA','2020-03-01 16:30:58',100,133,1046.0000);
/*!40000 ALTER TABLE `erp_inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `erp_inventory_sum`
--

DROP TABLE IF EXISTS `erp_inventory_sum`;
/*!50001 DROP VIEW IF EXISTS `erp_inventory_sum`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `erp_inventory_sum` (
  `year` tinyint NOT NULL,
  `month` tinyint NOT NULL,
  `total_qty` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `erp_product`
--

DROP TABLE IF EXISTS `erp_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_product` (
  `product_id` int(11) NOT NULL,
  `product_desc` text COLLATE utf8_bin,
  `product_category` text COLLATE utf8_bin,
  `primary_supplier` text COLLATE utf8_bin,
  `product_picture` mediumblob,
  PRIMARY KEY (`product_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_product`
--

LOCK TABLES `erp_product` WRITE;
/*!40000 ALTER TABLE `erp_product` DISABLE KEYS */;
INSERT INTO `erp_product` VALUES (1,'Amoxicillin','Antibiotics','Lupin',NULL),(2,'Azithromycin','Antibiotics','Abbot',NULL),(3,'Erythromycin Stearate','Antibiotics','Cipla',NULL),(4,'Ceftriaxone','Antibiotics','Lupin',NULL),(5,'Cefoperazone','Antibiotics','Abbot',NULL),(6,'Cefixime','Antibiotics','Cipla',NULL),(7,'Cephalexin','Antibiotics','Lupin',NULL),(8,'Piperacillin Tazobactam','Antibiotics','Abbot',NULL),(9,'Sulbactam','Antibiotics','Cipla',NULL),(10,'Dexamethasone','Steroid','Lupin',NULL),(11,'Prednisolone','Steroid','Abbot',NULL),(12,'Metformin','Antibiotics','Cipla',NULL),(13,'Gabapentin','Antibiotics','Lupin',NULL),(14,'Rifampicin','Antibiotics','Abbot',NULL),(15,'Vitamin B1','Vitamin','Cipla',NULL),(16,'Vitamin B6','Vitamin','Lupin',NULL),(17,'Clindamycin Phosphate','Antibiotics','Abbot',NULL),(18,'Clindamycin HCL','Antibiotics','Cipla',NULL),(19,'Streptomycin','Antibiotics','Lupin',NULL),(20,'Neomycin','Antibiotics','Abbot',NULL),(21,'Gentamycin','Antibiotics','Cipla',NULL),(22,'Doxycycline','Antibiotics','Lupin',NULL),(23,'Potassium Clavulanate','Antibiotics','Abbot',NULL),(24,'Oxytetracycline','Antibiotics','Cipla',NULL),(25,'Tetracycline','Antibiotics','Lupin',NULL),(26,'Clarithromycin','Antibiotics','Abbot',NULL);
/*!40000 ALTER TABLE `erp_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_tblallfldtypes`
--

DROP TABLE IF EXISTS `erp_tblallfldtypes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_tblallfldtypes` (
  `person_id` varchar(255) COLLATE utf8_bin NOT NULL,
  `address` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `dateofinquiry` datetime DEFAULT NULL,
  `email` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `meetingpreftime` datetime DEFAULT NULL,
  `mobile_phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `phone` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `reqquoteamt` float DEFAULT NULL,
  `requestedqty` bigint(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  `website` varchar(255) COLLATE utf8_bin DEFAULT NULL,
  `pict` tinyblob,
  PRIMARY KEY (`person_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_tblallfldtypes`
--

LOCK TABLES `erp_tblallfldtypes` WRITE;
/*!40000 ALTER TABLE `erp_tblallfldtypes` DISABLE KEYS */;
INSERT INTO `erp_tblallfldtypes` VALUES ('11','10, Fair Oaks',NULL,'2022-06-01 00:00:00','john@email.com','1970-01-01 15:20:00','11111 11111','John Doe','111-1111-1111',4000,550,NULL,'www.john.com',NULL),('12','20, Fair Oaks',NULL,'2022-06-01 00:00:00','jane@email.com','1970-01-01 15:20:00','11111 11111','Jane Doe','111-1111-1111',5000,650,NULL,'www.jane.com',NULL);
/*!40000 ALTER TABLE `erp_tblallfldtypes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erp_tblkeydate`
--

DROP TABLE IF EXISTS `erp_tblkeydate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erp_tblkeydate` (
  `dateofinquiry` datetime NOT NULL,
  `created` datetime DEFAULT NULL,
  `meetingpreftime` datetime DEFAULT NULL,
  `reqquoteamt` float DEFAULT NULL,
  `requestedqty` bigint(20) DEFAULT NULL,
  `updated` datetime DEFAULT NULL,
  PRIMARY KEY (`dateofinquiry`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erp_tblkeydate`
--

LOCK TABLES `erp_tblkeydate` WRITE;
/*!40000 ALTER TABLE `erp_tblkeydate` DISABLE KEYS */;
INSERT INTO `erp_tblkeydate` VALUES ('2022-05-01 00:00:00','2022-05-01 09:45:00','1970-01-01 09:45:00',4000,550,'2022-05-02 09:45:00'),('2022-06-01 00:00:00','2022-06-01 09:45:00','1970-01-01 09:45:00',4000,550,'2022-06-02 09:45:00');
/*!40000 ALTER TABLE `erp_tblkeydate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event_invitation_view`
--

DROP TABLE IF EXISTS `event_invitation_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `event_invitation_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Guest` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Address` varchar(140) COLLATE utf8_bin DEFAULT NULL,
  `Phone_Number` varchar(15) COLLATE utf8_bin DEFAULT NULL,
  `Plus_One` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Guest_Count` int(11) DEFAULT NULL,
  `Related_Event` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event_invitation_view`
--

LOCK TABLES `event_invitation_view` WRITE;
/*!40000 ALTER TABLE `event_invitation_view` DISABLE KEYS */;
INSERT INTO `event_invitation_view` VALUES (1,'Michael T. Corey','4137 Wakefield Street,  PA 19111','(215) 379-2499','checked',2,'John & Jane Wedding,Company Retreat'),(2,'Tabitha R. Muncie','3633 Park Avenue, Sacramento, CA 95814','(916) 425-1930','checked',1,'John & Jane Wedding,Company Retreat'),(3,'Zachary R. Bishop','4309 Quarry Drive, Auburn, AL 36830','(334) 821-7547','checked',2,'John & Jane Wedding,Company Retreat'),(4,'Curtis B. Mueller','221 Woodstock Drive, Irvine, CA 92614','(626) 532-5054','checked',1,'John & Jane Wedding,Company Retreat');
/*!40000 ALTER TABLE `event_invitation_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `featured_event_schedule`
--

DROP TABLE IF EXISTS `featured_event_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `featured_event_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Activity` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Type` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Start` date DEFAULT NULL,
  `End` date DEFAULT NULL,
  `Location` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `featured_event_schedule`
--

LOCK TABLES `featured_event_schedule` WRITE;
/*!40000 ALTER TABLE `featured_event_schedule` DISABLE KEYS */;
INSERT INTO `featured_event_schedule` VALUES (1,'Welcome breakfast','Meal','2021-11-18','2021-11-18','President\'s dining hall'),(2,'Opening remarks','Keynote','2021-11-18','2021-11-18','Grand ballroom'),(3,'Building an alert system that works for everyone','Panel','2021-11-18','2021-11-18','Sapphire room'),(4,'Lunch','Meal','2021-11-18','2021-11-18','President\'s dining hall'),(5,'Workshop for security novices','Workshop','2021-11-18','2021-11-18','Emerald room'),(6,'Which security solution is best for you?','Panel','2021-11-18','2021-11-18','Emerald room');
/*!40000 ALTER TABLE `featured_event_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `hobbies_art_view`
--

DROP TABLE IF EXISTS `hobbies_art_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hobbies_art_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `My_Price_Paid` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Insured` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Artist` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `My_Notes` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobbies_art_view`
--

LOCK TABLES `hobbies_art_view` WRITE;
/*!40000 ALTER TABLE `hobbies_art_view` DISABLE KEYS */;
INSERT INTO `hobbies_art_view` VALUES (1,'Fountain (Replica)','$1,100,000','checked','Marcel Duchamp','One of 17 replicas commissioned by Duchamp in the \'60s.'),(2,'I Saw Three Cities','$502,243','checked','Kay Sage','A steal, considering her \"Le Passage\"\" just sold for $7 million last year!\"'),(3,'Katy in front of a Rothko','$20,000','checked','Reginald Gray','Well, I couldn\'t afford a Rothko after buying \"Fountain.\"');
/*!40000 ALTER TABLE `hobbies_art_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `legal_intake_view`
--

DROP TABLE IF EXISTS `legal_intake_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `legal_intake_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Full_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Date_Submitted` date DEFAULT NULL,
  `Review_Status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Date_of_Birth` date DEFAULT NULL,
  `Gender` varchar(6) COLLATE utf8_bin DEFAULT NULL,
  `Place_of_Birth_City` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Drivers_License_Number` int(11) DEFAULT NULL,
  `Current_Address` varchar(140) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Employment_Address_ZIP` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `legal_intake_view`
--

LOCK TABLES `legal_intake_view` WRITE;
/*!40000 ALTER TABLE `legal_intake_view` DISABLE KEYS */;
INSERT INTO `legal_intake_view` VALUES (1,'Rachel Chapman','2017-06-16','Scheduled Initial Consultation','1953-01-15','Female','Mclean',670010619,'92 Bayport Road ','chapman.rachel@example.com',43420),(2,'Joseph Carr','2017-06-16','Keep In Touch','1981-05-24','Male','Boalsburg',458552031,'9657 Hickory St. ','carr.joseph@example.com',32746),(3,'Louis Rodriguez','2017-06-16','Not Now','1975-01-30','Male','Northville',137337961,'46 South Beach Ave. ','rodriguez.louis@example.com',27012),(4,'Nicole Montgomery','2017-06-16','Move Forward','1982-11-15','Female','Basin',42170466,'110 East Andover Drive ','montgomery.nicole@example.com',32708),(5,'Johnny Freeman','2017-06-16','Scheduled Initial Consultation','1965-06-11','Male','State University',449946675,'436 Third St. ','freeman.johnny@example.com',49464);
/*!40000 ALTER TABLE `legal_intake_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_business_client`
--

DROP TABLE IF EXISTS `local_business_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `local_business_client` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Category` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Complete` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Project_images` mediumblob,
  `Client` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Project_lead` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Project_team` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Kick_of_date` date DEFAULT NULL,
  `Due_date` date DEFAULT NULL,
  `Notes` varchar(1000) COLLATE utf8_bin DEFAULT NULL,
  `Tasks` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_business_client`
--

LOCK TABLES `local_business_client` WRITE;
/*!40000 ALTER TABLE `local_business_client` DISABLE KEYS */;
INSERT INTO `local_business_client` VALUES (1,'Coffee packaging','Brand identity','checked','pexels-photo-1251175.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/0e97912b0f6dd01e248b0f6d5edeb945/a2685498/pexels-photo-1251175.jpegautocompresscstinysrgbdpr1w500),pexels-photo.jpg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/9e83083970f69404691da2cddb80204e/3e9de30e/pexels-photo.jpgautocompresscstinysrgbdpr1w500),pexels-photo-585750.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/95d970855a00bc0c7c9f5c950dae4547/3b8b602a/pexels-photo-585750.jpegautocompresscstinysrgbdpr1w500)','Hart\'s Coffee','Paris Fotiou','Leslie Walker,Jordan Peretz,Sam Epps,Paris Fotiou','2020-10-16','2020-10-30','EngineerU\'s popularity is only growing. In the first week following its launch in 2015, the website attracted an incredible 300,000 users, which has grown to encompass over 20 million programmers and coders today. EngineerU\'s user base represents an expansive demographic, with strong gender parity and users from all generationsâ€”a remarkable feat in the typically young, male tech industry.','Research other coffee packaging'),(2,'EngineerU brand identity','Brand identity','checked','','EngineerU','Cameron Toth','Ash Quintana,Paris Fotiou,Cameron Toth','2020-06-10','2020-10-20','EngineerU\'s popularity is only growing. In the first week following its launch in 2015, the website attracted an incredible 300,000 users, which has grown to encompass over 20 million programmers and coders today. EngineerU\'s user base represents an expansive demographic, with strong gender parity and users from all generationsâ€”a remarkable feat in the typically young, male tech industry.\n\n\nEngineerU\'s new brand identity is inspired by the website\'s impressively diverse user base, with a simplified visual package that can take on many colors, designs, and forms, but with the website\'s core design principles and logo remaining consistent. This represents not only the website\'s wide demographic, but also its many uses, from training to collaboration. ','Research other coffee packaging'),(3,'Gotham City Parks brand identity','Brand identity','checked','','Gotham City Parks','Cameron Toth','Leslie Walker,Sam Epps,Cameron Toth','2020-09-15','2020-09-29','EngineerU\'s popularity is only growing. In the first week following its launch in 2015, the website attracted an incredible 300,000 users, which has grown to encompass over 20 million programmers and coders today. EngineerU\'s user base represents an expansive demographic, with strong gender parity and users from all generationsâ€”a remarkable feat in the typically young, male tech industry.','Research other coffee packaging'),(4,'CMCA brand identity','Brand identity','checked','pexels-photo-137038.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/8cf450eb8b46c2b7e2107b29aa6a2c82/21363d9c/pexels-photo-137038.jpegautocompresscstinysrgbdpr1w500),pexels-photo-2261165.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/633b1fa6dcf9dcb241212f0f4e3f6cbd/864ac88b/pexels-photo-2261165.jpegautocompresscstinysrgbdpr1w500),pexels-photo-220694.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500 (https://dl.airtable.com/.attachments/1e9e22ed12a713305fccf0da8c6e5633/fd2007b0/pexels-photo-220694.jpegautocompresscstinysrgbdpr1w500)','Center for Modern and Contemporary Art (CMCA)','Gal Samari','Sam Epps,Skyler Xu,Paris Fotiou,Gal Samari','2020-10-24','2020-07-11','EngineerU\'s popularity is only growing. In the first week following its launch in 2015, the website attracted an incredible 300,000 users, which has grown to encompass over 20 million programmers and coders today. EngineerU\'s user base represents an expansive demographic, with strong gender parity and users from all generationsâ€”a remarkable feat in the typically young, male tech industry.','Research other coffee packaging'),(5,'Flapper brand identity','Brand identity','checked','','Flapper Paper Co.','Leslie Walker','Paris Fotiou,Cameron Toth,Leslie Walker','2020-10-12','2020-10-26','EngineerU\'s popularity is only growing. In the first week following its launch in 2015, the website attracted an incredible 300,000 users, which has grown to encompass over 20 million programmers and coders today. EngineerU\'s user base represents an expansive demographic, with strong gender parity and users from all generationsâ€”a remarkable feat in the typically young, male tech industry.','Research other coffee packaging');
/*!40000 ALTER TABLE `local_business_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `non_profit_donations`
--

DROP TABLE IF EXISTS `non_profit_donations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `non_profit_donations` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Gift_ID` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Designated_program` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Amount` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Donor` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `First_contacted` date DEFAULT NULL,
  `Date_of_donation` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `non_profit_donations`
--

LOCK TABLES `non_profit_donations` WRITE;
/*!40000 ALTER TABLE `non_profit_donations` DISABLE KEYS */;
INSERT INTO `non_profit_donations` VALUES (1,'2019-04-05—Andrés Diallo','Homework Help','$575','Andrés Diallo','2019-04-28','2019-04-05'),(2,'2019-02-05—Shiori Okuda','Homework Help','$50,000','Shiori Okuda','2019-01-05','2019-02-05'),(3,'2019-04-07—Maple Mahnke','Homework Help','$50','Maple Mahnke','2019-03-07','2019-04-07'),(4,'2018-06-12—Laury Knox','Homework Help','$17,500','Laury Knox','2018-01-06','2018-06-12'),(5,'2019-09-05—Andrés Diallo','Kids Rec','$4,954','Andrés Diallo','2019-03-05','2019-09-05');
/*!40000 ALTER TABLE `non_profit_donations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_all_courses`
--

DROP TABLE IF EXISTS `personal_all_courses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_all_courses` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Course` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Year` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Semester` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Requirement` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Completed` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Grade` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_all_courses`
--

LOCK TABLES `personal_all_courses` WRITE;
/*!40000 ALTER TABLE `personal_all_courses` DISABLE KEYS */;
INSERT INTO `personal_all_courses` VALUES (1,'100: Intro to Physics','2021','First','Core Courses','checked','B'),(2,'500: Intro to Writing','2021','First','Writing Courses ','checked','A'),(3,'200: Numerical Computation','2021','First','Core Courses','checked','C'),(4,'501: Creative Writing','2021','First','Writing Courses ','checked','B'),(5,'201: Electronics and Circuits','2021','First','Core Courses','checked','D');
/*!40000 ALTER TABLE `personal_all_courses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product_design`
--

DROP TABLE IF EXISTS `product_design`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product_design` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Key_Result` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Objective` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `DRI_or_Stakeholder` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Progress` int(11) DEFAULT NULL,
  `Goal` int(11) DEFAULT NULL,
  `Projects` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product_design`
--

LOCK TABLES `product_design` WRITE;
/*!40000 ALTER TABLE `product_design` DISABLE KEYS */;
INSERT INTO `product_design` VALUES (1,'Launch 4 features to GA to positive qualitative feedback.','Build connectivity to key external systems to enable flexible workflows.','Ari Ramírez-Medina',1,3,'Feature Hotel,Feature Foxtrot,Feature Juliett,Feature Charlie,Feature Delta'),(2,'KR: Launch Feature Echo to GA','Build connectivity to key external systems to enable flexible workflows.','Robby Pritchett',1,1,'Feature Echo'),(3,'KR: Beta multiple new integration sources for X use case.','Build connectivity to key external systems to enable flexible workflows.','Jules Harris',1,2,'Feature Foxtrot,Feature Golf,Feature Hotel,Feature India,Feature Juliett'),(4,'Implement new account pricing with Feature Delta.','Build connectivity to key external systems to enable flexible workflows.','Harley Holbrook',1,1,'Feature Delta,Feature Bravo'),(5,'Ship at least one experiment to increase the % of users and accelerate aha moments.','Revamp growth experiences to get users to aha moments faster.','Robby Pritchett',1,1,'Feature Alpha');
/*!40000 ALTER TABLE `product_design` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_management_task`
--

DROP TABLE IF EXISTS `project_management_task`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `project_management_task` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Task` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Docs` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  `Team` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Owner` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `DueDate` date DEFAULT NULL,
  `Complete` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Notes` varchar(500) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_management_task`
--

LOCK TABLES `project_management_task` WRITE;
/*!40000 ALTER TABLE `project_management_task` DISABLE KEYS */;
INSERT INTO `project_management_task` VALUES (1,'Confirm portal branding','Event Comms.docx (https://cdn.filestackcontent.com/SYYw3VGSui6RLTffMTZb)','Marketing','Ari RamÃ­rez-Medina','2019-01-29','checked','See style guide table\n'),(2,'Create course thumbnails ','photo-1513171920216-2640b288471b?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80 (https://dl.airtable.com/JW5peAW7TsqjcjA1zWYA_photo-1513171920216-2640b288471b%3Fixlib%3Drb-1.2.1%26ixid%3DeyJhcHBfaWQiOjEyMDd9%26w%3D1000%26q%3D80)','Program Managers','Leslie Walker','2019-05-01','checked','See style guide table'),(3,'Draft course descriptions','Event Comms.docx (https://cdn.filestackcontent.com/SYYw3VGSui6RLTffMTZb)','Program Managers','Harley Holbrook','2019-06-01','checked','See style guide table'),(4,'Assign course owners for ILT','Event Comms.docx (https://cdn.filestackcontent.com/SYYw3VGSui6RLTffMTZb)','Program Managers','Leslie Walker','2018-08-11','checked','See style guide table'),(5,'Configure portal ','Event Comms.docx (https://cdn.filestackcontent.com/SYYw3VGSui6RLTffMTZb)','LMS Admin','Kendall Mahdavi','2018-10-30','checked','See style guide table'),(6,'Batch upload courses','Event Comms.docx (https://cdn.filestackcontent.com/SYYw3VGSui6RLTffMTZb)','LMS Admin','Kendall Mahdavi','2018-10-15','checked','See style guide table');
/*!40000 ALTER TABLE `project_management_task` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiting_all_employees`
--

DROP TABLE IF EXISTS `recruiting_all_employees`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recruiting_all_employees` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Location` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Title` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Start_date` date DEFAULT NULL,
  `Department` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Reports_to` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Email_address` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `DOB` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiting_all_employees`
--

LOCK TABLES `recruiting_all_employees` WRITE;
/*!40000 ALTER TABLE `recruiting_all_employees` DISABLE KEYS */;
INSERT INTO `recruiting_all_employees` VALUES (1,'Brooke Khan','New York City','VP of sales','On leave','2015-01-13','Sales','Pat Everett','bkhan@example.com','1970-07-23'),(2,'Sandy Hagen','New York City','Product designer','Employee','2018-01-02','Design','Jamie Ziya','shagen@example.com','1978-08-04'),(3,'Jamie Ziya','New York City','VP of product','Employee','2013-05-30','Product management','Pat Everett','jziya@example.com','1981-01-13'),(4,'Pat Everett','New York City','CEO','Employee','2014-08-24','Executive','','peverett@example.com','1968-06-08'),(5,'Kai Siyavong','New York City','PMM','Employee','2017-02-15','Product marketing','Jamie Ziya','ksiyavong@example.com','1983-09-02');
/*!40000 ALTER TABLE `recruiting_all_employees` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sales_customer_response`
--

DROP TABLE IF EXISTS `sales_customer_response`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sales_customer_response` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Customer_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Submission_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Company_Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Product_Satisfaction` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Service_Satisfaction` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Product_Comparison` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Service_Comparison` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Reasons` varchar(200) COLLATE utf8_bin DEFAULT NULL,
  `Rating` int(11) DEFAULT NULL,
  `Highlight` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Promoter` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Insights` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sales_customer_response`
--

LOCK TABLES `sales_customer_response` WRITE;
/*!40000 ALTER TABLE `sales_customer_response` DISABLE KEYS */;
INSERT INTO `sales_customer_response` VALUES (1,'Benjamin Cole','2022-05-12 10:22:34','benjamincole@example.com','Meow Amalgamate','***','***','Similar','Similar','The product just doesn\'t do what I need it to do, unfortunately. Not enough customization options for my use case.',5,'checked','Detractor','Poor fit for use case'),(2,'Madison Rice','2022-05-12 10:23:05','madisonrice@example.com','Triaria Group','***','***','Significantly Worse','Slightly Worse','AccessFile is way, way more flexible and looks better! Sorry. I just don\'t think your product is right for me.',2,'checked','Detractor','Poor fit for use case'),(3,'Alan Ellis','2022-05-12 10:23:06','madisonrice@example.com','Tantamount Studios','***','***','Slightly Worse','Slightly Worse','Customer support takes too long for me to respond! I can\'t wait a whole day between each response.',3,'checked','Detractor','Slow response times'),(4,'Rachel Pierce','2022-05-12 10:23:07','rachelpierce@example.com','Liberty Pictures','***','***','Similar','Slightly Worse','Is it that hard to get someone on the phone for me? Why?',5,'checked','Detractor','No phone support'),(5,'Dennis Schultz','2022-05-12 10:23:07','dennisschultz@example.com','Wolf Searchlight','***','***','Slightly Worse','Similar','Breaks for me every few hours. I\'ve written into support about this but no response!',4,'checked','Detractor','Performance issues'),(6,'Jordan Smith','2022-05-12 10:23:08','jordansmith@example.com','Cony','***','***','Slightly Worse','Slightly Better','I appreciated all the help that I got from James and Maya, but it just isn\'t enough to make up for the fact that your product doesn\'t do nearly as much as you claim...',6,'checked','Detractor','Poor fit for use case');
/*!40000 ALTER TABLE `sales_customer_response` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `software_development_features`
--

DROP TABLE IF EXISTS `software_development_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `software_development_features` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Feature` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Status` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Product_owner` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Launch_OKRs` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  `Feature_complete_date` date DEFAULT NULL,
  `Feature_launch_date` date DEFAULT NULL,
  `Marketing_launch_date` date DEFAULT NULL,
  `Complexity` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Value` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `software_development_features`
--

LOCK TABLES `software_development_features` WRITE;
/*!40000 ALTER TABLE `software_development_features` DISABLE KEYS */;
INSERT INTO `software_development_features` VALUES (1,'Ephemeral content1','Live','Jules Harriss','Increase activity on mobile apps,Drive traffic to mobile content','2021-02-04','2021-04-15','2021-04-20','High complexity','High value'),(2,'Mobile alerts','Live','Alexis Pham','Reduce abandonment of apps,Re-activate abandoned mobile users','2021-03-19','2021-03-29','2021-04-19','High complexity','High value'),(3,'Easy reporting1','Complete','Alexis Pham','Leverage users for downtime reporting','2021-06-04','2021-04-21','2021-04-28','Low complexity','High value'),(4,'Mobile settings','In progress','Jules Harris','Reduce abandonment of apps','2021-03-30','2021-04-12','2021-04-21','High complexity','High value'),(5,'Better video quality','Planning','Alexis Pham','Increase activity on mobile apps,Drive traffic to mobile content','2021-04-14','2021-05-05','2021-05-13','High complexity','High value'),(6,'New security updates','In reviews','Alexis Pham','','2021-03-31','2021-04-15','2021-04-28','Low complexity','Low value');
/*!40000 ALTER TABLE `software_development_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `startup_customers_view`
--

DROP TABLE IF EXISTS `startup_customers_view`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `startup_customers_view` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Email` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Person` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Usage_type` varchar(40) COLLATE utf8_bin DEFAULT NULL,
  `Interview_Session` varchar(80) COLLATE utf8_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `startup_customers_view`
--

LOCK TABLES `startup_customers_view` WRITE;
/*!40000 ALTER TABLE `startup_customers_view` DISABLE KEYS */;
INSERT INTO `startup_customers_view` VALUES (1,'Jenniffer Montag','jenniffer@email.com','Founder','Champion','Jenniffer Montag'),(2,'Jerrod Landi','jerrod@email.com','Business Development','Champion','Jerrod Landi'),(3,'Mattie Mirelez','mattie@email.com','Manager','Churn risk','Mattie Mirelez'),(4,'Billye Bellini','billye@email.com','Manager','Champion','Billye Bellini'),(5,'Berna Scheurer','berna@email.com','Customer Success','Churn risk','Berna Scheurer');
/*!40000 ALTER TABLE `startup_customers_view` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `name` varchar(255) COLLATE utf8_bin NOT NULL,
  `marks` bigint(20) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  `roll` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('Jane Doe',78,1111111111,56),('John Doe',75,1111111111,55);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `erp_inventory_sum`
--

/*!50001 DROP TABLE IF EXISTS `erp_inventory_sum`*/;
/*!50001 DROP VIEW IF EXISTS `erp_inventory_sum`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`mysqldb02`@`%` SQL SECURITY DEFINER */
/*!50001 VIEW `erp_inventory_sum` AS select year(`erp_inventory`.`inv_date`) AS `year`,month(`erp_inventory`.`inv_date`) AS `month`,sum(`erp_inventory`.`inv_qty`) AS `total_qty` from `erp_inventory` group by month(`erp_inventory`.`inv_date`),year(`erp_inventory`.`inv_date`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-06-03 10:01:02
