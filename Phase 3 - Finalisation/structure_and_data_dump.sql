-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: iu_airbnb_project
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `address`
--

DROP TABLE IF EXISTS `address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `address` (
  `address_id` int NOT NULL AUTO_INCREMENT,
  `address_line` varchar(255) DEFAULT NULL,
  `city_id` int DEFAULT NULL,
  PRIMARY KEY (`address_id`),
  KEY `city_id` (`city_id`),
  CONSTRAINT `addresses_ibfk_1` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `address`
--

LOCK TABLES `address` WRITE;
/*!40000 ALTER TABLE `address` DISABLE KEYS */;
INSERT INTO `address` VALUES (1,'63 Fulton Way',7),(2,'067 School Way',15),(3,'7702 Dawn Center',8),(4,'410 Amoth Alley',10),(5,'7384 Talisman Parkway',14),(6,'23048 Union Parkway',14),(7,'8 Loftsgordon Circle',1),(8,'63800 Prairieview Alley',11),(9,'364 Atwood Hill',1),(10,'17 Longview Pass',4),(11,'01022 Dayton Park',7),(12,'62477 Spohn Park',2),(13,'86 Steensland Junction',5),(14,'4016 Heffernan Pass',7),(15,'0 Hallows Avenue',1),(16,'386 Lighthouse Bay Plaza',11),(17,'50201 6th Hill',9),(18,'64703 Washington Lane',14),(19,'6 Warrior Trail',14),(20,'70755 Monica Avenue',18);
/*!40000 ALTER TABLE `address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `amenities`
--

DROP TABLE IF EXISTS `amenities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `amenities` (
  `amenity_id` int NOT NULL AUTO_INCREMENT,
  `amenity_name` varchar(100) DEFAULT NULL,
  `amenity_description` text,
  PRIMARY KEY (`amenity_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `amenities`
--

LOCK TABLES `amenities` WRITE;
/*!40000 ALTER TABLE `amenities` DISABLE KEYS */;
INSERT INTO `amenities` VALUES (1,'Wi-Fi','High-speed wireless internet'),(2,'Air Conditioning','Central air conditioning'),(3,'Heating','Central heating system'),(4,'TV','Flat-screen TV with cable channels'),(5,'Kitchen','Fully equipped modern kitchen'),(6,'Pool','Outdoor swimming pool'),(7,'Gym','In-house fitness center'),(8,'Parking','Private parking available'),(9,'Balcony','Spacious private balcony'),(10,'Garden','Well-maintained garden area'),(11,'Washer','In-unit washer and dryer'),(12,'Dryer','In-unit clothes dryer'),(13,'Dishwasher','Dishwasher in kitchen'),(14,'BBQ Grill','Outdoor BBQ grill'),(15,'Fireplace','Indoor fireplace'),(16,'Hot Tub','Outdoor hot tub'),(17,'Game Room','Game room with entertainment options'),(18,'Playground','Outdoor playground for kids'),(19,'Sauna','Private sauna'),(20,'Library','Private library with books and magazines');
/*!40000 ALTER TABLE `amenities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int unsigned NOT NULL,
  `user_id` int unsigned NOT NULL,
  `property_id` int NOT NULL,
  `booking_date` timestamp NULL DEFAULT NULL,
  `number_of_guests` int DEFAULT NULL,
  `total_price` decimal(10,2) DEFAULT NULL,
  `status_id` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `booking_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `booking_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (1,3,2,'2023-10-12 08:22:15',3,1050.00,1),(2,15,8,'2023-09-21 09:18:27',3,900.00,2),(3,7,5,'2023-08-15 10:14:36',2,750.00,3),(4,10,7,'2023-12-05 12:07:12',3,900.00,1),(5,18,12,'2023-07-18 12:08:19',4,1000.00,1),(6,1,4,'2023-11-03 14:11:54',5,1200.00,2),(7,6,1,'2023-06-24 14:15:41',4,800.00,1),(8,13,13,'2023-11-10 16:12:48',2,700.00,3),(9,19,14,'2023-09-06 16:09:37',6,1400.00,2),(10,2,3,'2023-08-29 17:13:27',2,700.00,3),(11,5,6,'2023-10-07 18:08:15',6,1500.00,2),(12,9,9,'2023-12-22 20:17:04',4,1100.00,1),(13,20,15,'2023-07-27 20:19:47',3,850.00,1),(14,8,16,'2023-06-11 21:09:51',2,650.00,3),(15,11,10,'2023-08-20 06:14:29',4,1150.00,1),(16,12,11,'2023-11-01 08:18:32',5,1300.00,2),(17,14,17,'2023-10-18 08:06:44',5,1250.00,1),(18,4,19,'2023-09-09 09:03:55',6,1400.00,2),(19,17,18,'2023-07-14 10:15:49',4,1000.00,3),(20,16,20,'2023-10-25 11:08:22',3,850.00,1);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_guideline`
--

DROP TABLE IF EXISTS `booking_guideline`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_guideline` (
  `booking_guideline_id` int NOT NULL,
  `booking_id` int unsigned DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  `guideline_description` text,
  PRIMARY KEY (`booking_guideline_id`),
  KEY `booking_id` (`booking_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `booking_guideline_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `booking_guideline_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_guideline`
--

LOCK TABLES `booking_guideline` WRITE;
/*!40000 ALTER TABLE `booking_guideline` DISABLE KEYS */;
INSERT INTO `booking_guideline` VALUES (1,8,1,'No parties or events allowed.'),(2,18,18,'Check-out before 11 AM.'),(3,2,10,'Quiet hours from 10 PM to 7 AM.'),(4,11,13,'Please report damages immediately.'),(5,16,12,'Please follow local COVID-19 guidelines.'),(6,9,4,'Please dispose of garbage in designated bins.'),(7,17,17,'Complimentary toiletries provided.'),(8,1,7,'ID required at check-in.'),(9,6,5,'No pets allowed.'),(10,13,15,'Pets allowed with a fee of $50.'),(11,14,16,'Use of the gym is complimentary.'),(12,4,8,'No smoking in the property.'),(13,15,14,'Smoking allowed in designated areas only.'),(14,3,9,'Maximum of 4 guests per booking.'),(15,7,3,'Check-in after 3 PM.'),(16,10,2,'Parking space available upon request.'),(17,5,6,'Pool use allowed from 9 AM to 9 PM.'),(18,19,19,'Use of hot tub allowed until midnight.'),(19,20,20,'Breakfast is served from 7 AM to 10 AM.'),(20,12,11,'Early check-out available upon request.');
/*!40000 ALTER TABLE `booking_guideline` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_status_history`
--

DROP TABLE IF EXISTS `booking_status_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_status_history` (
  `history_id` int NOT NULL,
  `booking_id` int unsigned DEFAULT NULL,
  `booking_status` varchar(50) DEFAULT NULL,
  `changed_by` int unsigned DEFAULT NULL,
  `property_id` int DEFAULT NULL,
  PRIMARY KEY (`history_id`),
  KEY `changed_by` (`changed_by`),
  KEY `property_id` (`property_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `booking_status_history_ibfk_1` FOREIGN KEY (`changed_by`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `booking_status_history_ibfk_2` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`),
  CONSTRAINT `booking_status_history_ibfk_3` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_status_history`
--

LOCK TABLES `booking_status_history` WRITE;
/*!40000 ALTER TABLE `booking_status_history` DISABLE KEYS */;
INSERT INTO `booking_status_history` VALUES (1,14,'Cancelled',1,5),(2,2,'Cancelled',2,6),(3,9,'Cancelled',3,8),(4,7,'Pending',4,20),(5,10,'Cancelled',5,15),(6,11,'Cancelled',16,1),(7,3,'Pending',9,12),(8,15,'Confirmed',6,11),(9,4,'Confirmed',14,9),(10,5,'Pending',12,7),(11,6,'Pending',11,10),(12,20,'Confirmed',8,4),(13,19,'Cancelled',7,13),(14,17,'Confirmed',13,19),(15,12,'Confirmed',18,16),(16,8,'Pending',15,17),(17,18,'Confirmed',17,2),(18,16,'Pending',10,3),(19,1,'Pending',19,14),(20,13,'Cancelled',20,18);
/*!40000 ALTER TABLE `booking_status_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cancellation_policies`
--

DROP TABLE IF EXISTS `cancellation_policies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cancellation_policies` (
  `policy_id` int unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `cancellation_period` timestamp NULL DEFAULT NULL,
  `penalty_amount` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`policy_id`),
  UNIQUE KEY `policy_id` (`policy_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `cancellation_policies_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cancellation_policies`
--

LOCK TABLES `cancellation_policies` WRITE;
/*!40000 ALTER TABLE `cancellation_policies` DISABLE KEYS */;
INSERT INTO `cancellation_policies` VALUES (1,14,'2024-01-07 08:43:29',75,'2023-12-03 10:15:32','2023-12-03 10:17:48'),(2,3,'2024-01-15 07:22:19',125,'2023-12-05 09:08:14','2023-12-05 09:12:45'),(3,10,'2024-01-12 09:39:54',200,'2023-12-10 11:22:17','2023-12-10 11:27:03'),(4,5,'2024-01-01 13:03:12',50,'2023-12-01 08:15:24','2023-12-01 08:18:37'),(5,18,'2024-01-18 10:23:45',300,'2023-12-16 07:11:49','2023-12-16 07:13:58'),(6,8,'2024-01-05 15:17:22',175,'2023-12-04 14:03:41','2023-12-04 14:06:29'),(7,20,'2024-01-09 09:07:56',275,'2023-12-11 11:09:14','2023-12-11 11:13:22'),(8,7,'2024-01-04 07:19:33',150,'2023-12-06 06:17:52','2023-12-06 06:19:42'),(9,1,'2024-01-11 12:45:12',425,'2023-12-09 13:12:31','2023-12-09 13:14:17'),(10,13,'2024-01-20 09:18:47',500,'2023-12-19 08:07:53','2023-12-19 08:11:39'),(11,2,'2024-01-02 11:30:16',100,'2023-12-02 09:15:06','2023-12-02 09:18:45'),(12,9,'2024-01-03 09:17:31',125,'2023-12-07 10:04:29','2023-12-07 10:07:53'),(13,19,'2024-01-16 08:11:28',375,'2023-12-13 09:22:37','2023-12-13 09:24:12'),(14,12,'2024-01-14 06:29:58',275,'2023-12-12 07:06:21','2023-12-12 07:11:04'),(15,11,'2024-01-06 07:54:21',225,'2023-12-08 08:17:11','2023-12-08 08:20:18'),(16,15,'2024-01-13 09:15:12',325,'2023-12-14 09:04:36','2023-12-14 09:08:14'),(17,4,'2024-01-08 10:32:45',450,'2023-12-15 11:19:31','2023-12-15 11:22:47'),(18,6,'2024-01-10 14:41:56',200,'2023-12-17 12:14:22','2023-12-17 12:16:58'),(19,16,'2024-01-17 07:43:29',375,'2023-12-18 06:06:19','2023-12-18 06:09:47'),(20,17,'2024-01-19 09:12:14',450,'2023-12-20 10:05:14','2023-12-20 10:08:31');
/*!40000 ALTER TABLE `cancellation_policies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `city`
--

DROP TABLE IF EXISTS `city`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `city` (
  `city_id` int NOT NULL AUTO_INCREMENT,
  `city_name` varchar(100) DEFAULT NULL,
  `country_id` int DEFAULT NULL,
  PRIMARY KEY (`city_id`),
  KEY `country_id_idx` (`country_id`),
  CONSTRAINT `country_id` FOREIGN KEY (`country_id`) REFERENCES `country` (`country_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `city`
--

LOCK TABLES `city` WRITE;
/*!40000 ALTER TABLE `city` DISABLE KEYS */;
INSERT INTO `city` VALUES (1,'Tokyo',6),(2,'Beijing',5),(3,'Munich',3),(4,'Delhi',7),(5,'São Paulo',9),(6,'Sydney',11),(7,'New York',1),(8,'Abuja',8),(9,'Paris',4),(10,'Berlin',3),(11,'Vancouver',2),(12,'Mumbai',7),(13,'Osaka',6),(14,'Shanghai',5),(15,'Melbourne',11),(16,'Los Angeles',1),(17,'Rio de Janeiro',9),(18,'Toronto',2),(19,'Lagos',8),(20,'Lyon',4);
/*!40000 ALTER TABLE `city` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `country`
--

DROP TABLE IF EXISTS `country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `country` (
  `country_id` int NOT NULL AUTO_INCREMENT,
  `country_name` varchar(100) DEFAULT NULL,
  `country_code` varchar(10) DEFAULT NULL,
  `region_id` int DEFAULT NULL,
  PRIMARY KEY (`country_id`),
  KEY `region_id_idx` (`region_id`),
  CONSTRAINT `region_id` FOREIGN KEY (`region_id`) REFERENCES `region` (`region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `country`
--

LOCK TABLES `country` WRITE;
/*!40000 ALTER TABLE `country` DISABLE KEYS */;
INSERT INTO `country` VALUES (1,'United States','US',1),(2,'Canada','CA',1),(3,'Germany','DE',2),(4,'France','FR',12),(5,'China','CN',16),(6,'Japan','JP',16),(7,'India','IN',17),(8,'Nigeria','NG',20),(9,'Brazil','BR',5),(10,'Argentina','AR',5),(11,'Australia','AU',6),(12,'Russia','RU',13),(13,'United Kingdom','UK',11),(14,'Italy','IT',14),(15,'Spain','ES',14),(16,'Mexico','MX',9),(17,'Saudi Arabia','SA',8),(18,'South Africa','ZA',20),(19,'Egypt','EG',19),(20,'Thailand','TH',15);
/*!40000 ALTER TABLE `country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `host`
--

DROP TABLE IF EXISTS `host`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `host` (
  `user_account_id` int unsigned DEFAULT NULL,
  `host_info` text,
  `host_id` int unsigned NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`host_id`),
  KEY `user_account_id` (`user_account_id`),
  CONSTRAINT `host_ibfk_1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=1001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `host`
--

LOCK TABLES `host` WRITE;
/*!40000 ALTER TABLE `host` DISABLE KEYS */;
INSERT INTO `host` VALUES (1,'Experienced host with 5 years in the hospitality industry',1),(2,'New host specializing in unique vacation homes',2),(3,'Local expert offering city tours along with accommodations',3),(4,'Friendly host with multiple beachfront properties',4),(5,'Luxury host catering to high-end clients',5),(6,'Eco-friendly host with sustainable properties',6),(7,'Pet-friendly host with dedicated pet amenities',7),(8,'Host offering family-friendly accommodations',8),(9,'Experienced host managing properties in urban areas',9),(10,'Host specializing in long-term rental stays',10),(11,'Adventure host offering properties in remote areas',11),(12,'Artistic host with uniquely decorated homes',12),(13,'Host focused on wellness retreats and spa services',13),(14,'Corporate host offering business-ready accommodations',14),(15,'Student-focused host near educational institutions',15),(16,'Couples-focused host with romantic getaway options',16),(17,'Tech-savvy host with smart home properties',17),(18,'Senior-friendly host offering accessible accommodations',18),(19,'Gourmet host with properties near culinary hotspots',19),(20,'Seasoned host with expertise in cultural tourism',20);
/*!40000 ALTER TABLE `host` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `language` (
  `language_id` int unsigned NOT NULL AUTO_INCREMENT,
  `language_name` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`language_id`),
  UNIQUE KEY `language_id` (`language_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
INSERT INTO `language` VALUES (1,'English'),(2,'Spanish'),(3,'French'),(4,'German'),(5,'Chinese'),(6,'Japanese'),(7,'Russian'),(8,'Italian'),(9,'Portuguese'),(10,'Korean'),(11,'Hindi'),(12,'Arabic'),(13,'Dutch'),(14,'Swedish'),(15,'Norwegian'),(16,'Turkish'),(17,'Polish'),(18,'Danish'),(19,'Finnish'),(20,'Greek');
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `payment_id` int NOT NULL,
  `booking_id` int unsigned DEFAULT NULL,
  `payment_date` timestamp NULL DEFAULT NULL,
  `amount` varchar(20) DEFAULT NULL,
  `payment_method` varchar(50) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `booking_id` (`booking_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
INSERT INTO `payment` VALUES (1,6,'2023-11-04 10:13:21','1200','Credit Card','Completed'),(2,3,'2023-08-16 10:18:49','1050','Bank Transfer','Pending'),(3,9,'2023-09-07 11:05:15','1400','PayPal','Pending'),(4,5,'2023-07-19 12:14:37','1000','Credit Card','Completed'),(5,20,'2023-10-26 13:11:58','850','Credit Card','Completed'),(6,14,'2023-06-12 14:07:32','650','PayPal','Completed'),(7,18,'2023-09-10 15:19:44','1400','Credit Card','Completed'),(8,13,'2023-07-28 16:15:23','850','PayPal','Completed'),(9,19,'2023-07-15 17:17:41','1000','Bank Transfer','Failed'),(10,15,'2023-08-21 18:06:52','1150','Credit Card','Completed'),(11,7,'2023-06-25 19:10:11','800','Credit Card','Completed'),(12,8,'2023-11-11 21:08:25','750','PayPal','Completed'),(13,1,'2023-10-13 21:14:29','800','Bank Transfer','Failed'),(14,16,'2023-11-02 07:09:56','1300','Credit Card','Pending'),(15,2,'2023-09-22 07:03:41','700','PayPal','Completed'),(16,11,'2023-08-30 08:18:37','1500','Credit Card','Completed'),(17,12,'2023-12-23 10:05:23','1100','PayPal','Pending'),(18,17,'2023-10-19 10:19:45','1250','Bank Transfer','Pending'),(19,4,'2023-06-26 11:07:38','900','PayPal','Pending'),(20,10,'2023-09-11 12:11:15','800','Credit Card','Completed');
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_info`
--

DROP TABLE IF EXISTS `payment_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_info` (
  `payment_id` int NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `card_number` varchar(30) DEFAULT NULL,
  `card_expiry` timestamp NULL DEFAULT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `billing_address` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `method_type` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `payment_info_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_info`
--

LOCK TABLES `payment_info` WRITE;
/*!40000 ALTER TABLE `payment_info` DISABLE KEYS */;
INSERT INTO `payment_info` VALUES (1,12,'5602255230400716','2027-11-16 23:00:00','bankcard','72791 Claremont Road','2024-07-20 22:00:00','apple_pay'),(2,3,'3569815018863462','2025-01-09 23:00:00','jcb','5 Elka Circle','2023-11-29 23:00:00','venmo'),(3,11,'3568529170833269','2026-02-13 23:00:00','jcb','3 Onsgard Alley','2023-12-14 23:00:00','debit_card'),(4,8,'4026705996755944','2025-02-09 23:00:00','visa-electron','5920 Cascade Alley','2023-11-30 23:00:00','credit_card'),(5,14,'490505116813608483','2028-10-16 22:00:00','switch','40 Stone Corner Way','2024-06-12 22:00:00','venmo'),(6,7,'3532767912031866','2028-01-05 23:00:00','jcb','3 Lakewood Lane','2024-11-19 23:00:00','credit_card'),(7,5,'3557048955841655','2024-08-27 22:00:00','jcb','8 Dapin Place','2024-05-11 22:00:00','credit_card'),(8,18,'3549316920398619','2026-01-31 23:00:00','jcb','5243 Superior Place','2024-11-15 23:00:00','paypal'),(9,11,'201525200798513','2028-09-15 22:00:00','diners-club-enroute','67 Summerview Way','2024-11-26 23:00:00','paypal'),(10,19,'3560540743289671','2027-12-16 23:00:00','jcb','790 Fulton Avenue','2023-11-28 23:00:00','credit_card'),(11,16,'3551428148820061','2027-05-14 22:00:00','jcb','5449 Division Lane','2024-05-19 22:00:00','debit_card'),(12,10,'3564284526090263','2028-05-26 22:00:00','jcb','28873 Northridge Point','2023-12-23 23:00:00','apple_pay'),(13,9,'3574145023038287','2026-04-07 22:00:00','jcb','5 Spaight Way','2023-12-27 23:00:00','venmo'),(14,14,'5379544350333653','2027-03-28 22:00:00','mastercard','9604 Linden Junction','2024-01-25 23:00:00','paypal'),(15,15,'589302717678188497','2024-08-07 22:00:00','maestro','5 Jenifer Place','2024-06-26 22:00:00','debit_card'),(16,6,'3532576987969201','2028-08-17 22:00:00','jcb','02 Nevada Terrace','2024-02-01 23:00:00','credit_card'),(17,1,'560222159832685464','2024-11-28 23:00:00','china-unionpay','9824 Wayridge Terrace','2024-08-06 22:00:00','apple_pay'),(18,4,'67712839753382166','2028-09-09 22:00:00','laser','6773 Lakewood Gardens Terrace','2024-11-22 23:00:00','venmo'),(19,20,'3560152240238688','2026-05-22 22:00:00','jcb','41 Reinke Trail','2024-05-15 22:00:00','paypal'),(20,2,'3548359073752894','2026-08-21 22:00:00','jcb','1 Hovde Junction','2024-10-11 22:00:00','paypal');
/*!40000 ALTER TABLE `payment_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property`
--

DROP TABLE IF EXISTS `property`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property` (
  `property_id` int NOT NULL,
  `host_id` int unsigned DEFAULT NULL,
  `price_per_night` varchar(20) DEFAULT NULL,
  `max_guests` int DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  `address_id` int DEFAULT NULL,
  PRIMARY KEY (`property_id`),
  KEY `fk_property_address` (`address_id`),
  KEY `fk_property_host` (`host_id`),
  CONSTRAINT `fk_property_address` FOREIGN KEY (`address_id`) REFERENCES `address` (`address_id`),
  CONSTRAINT `fk_property_host` FOREIGN KEY (`host_id`) REFERENCES `host` (`host_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property`
--

LOCK TABLES `property` WRITE;
/*!40000 ALTER TABLE `property` DISABLE KEYS */;
INSERT INTO `property` VALUES (1,4,'400',6,'2023-11-06 15:13:27','2023-11-06 15:14:51',6),(2,12,'600',8,'2023-11-12 21:05:39','2023-11-12 21:06:42','SG',12),(3,7,'180',4,'2023-11-07 16:11:23','2023-11-07 16:12:56',7),(4,19,'500',9,'2023-11-19 12:08:45','2023-11-19 12:09:19',19),(5,5,'250',5,'2023-11-05 14:04:19','2023-11-05 14:05:53',5),(6,14,'380',5,'2023-11-14 23:07:32','2023-11-14 23:08:48',14),(7,3,'500',8,'2023-11-03 12:02:14','2023-11-03 12:03:59',3),(8,1,'200',4,'2023-11-01 10:15:42','2023-11-01 10:16:36',1),(9,8,'350',5,'2023-11-08 17:09:53','2023-11-08 17:10:47',8),(10,18,'350',7,'2023-11-18 11:06:34','2023-11-18 11:07:28',18),(11,2,'350',6,'2023-11-02 11:14:27','2023-11-02 11:15:43',2),(12,20,'450',8,'2023-11-20 13:10:45','2023-11-20 13:12:12',20),(13,13,'450',7,'2023-11-13 22:09:31','2023-11-13 22:11:04',13),(14,6,'600',6,'2023-11-06 15:04:18','2023-11-06 15:05:21',6),(15,10,'220',6,'2023-11-10 19:07:45','2023-11-10 19:09:15',10),(16,9,'300',4,'2023-11-09 18:03:12','2023-11-09 18:04:58',9),(17,15,'200',6,'2023-11-15 08:13:27','2023-11-15 08:14:41',15),(18,11,'280',5,'2023-11-11 20:05:39','2023-11-11 20:06:52',11),(19,17,'300',6,'2023-11-17 10:02:54','2023-11-17 10:04:23',17),(20,16,'250',8,'2023-11-16 09:08:12','2023-11-16 09:09:48',16);
/*!40000 ALTER TABLE `property` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_amenities_map`
--

DROP TABLE IF EXISTS `property_amenities_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_amenities_map` (
  `property_id` int NOT NULL,
  `amenity_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`amenity_id`),
  KEY `amenity_id` (`amenity_id`),
  CONSTRAINT `property_amenities_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `property_amenities_ibfk_2` FOREIGN KEY (`amenity_id`) REFERENCES `amenities` (`amenity_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_amenities_map`
--

LOCK TABLES `property_amenities_map` WRITE;
/*!40000 ALTER TABLE `property_amenities_map` DISABLE KEYS */;
INSERT INTO `property_amenities_map` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(4,8),(4,9),(5,10),(5,11),(6,12),(6,13),(7,14),(7,15),(8,16),(8,17),(9,18),(9,19),(10,20);
/*!40000 ALTER TABLE `property_amenities_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_images`
--

DROP TABLE IF EXISTS `property_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_images` (
  `image_id` int unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int NOT NULL,
  `image_url` varchar(255) DEFAULT NULL,
  `description` text,
  `uploaded_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  UNIQUE KEY `image_id` (`image_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `property_images_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_images`
--

LOCK TABLES `property_images` WRITE;
/*!40000 ALTER TABLE `property_images` DISABLE KEYS */;
INSERT INTO `property_images` VALUES (1,3,'https://example.com/images/property3_bedroom.jpg','Master bedroom','2023-12-02 10:18:43'),(2,1,'https://example.com/images/property1_interior.jpg','Living room','2023-12-01 09:12:25'),(3,7,'https://example.com/images/property7.jpg','Terrace','2023-12-07 15:09:36'),(4,10,'https://example.com/images/property10.jpg','Entrance','2023-12-10 18:05:57'),(5,5,'https://example.com/images/property5_living.jpg','Spacious living room','2023-12-05 13:11:34'),(6,2,'https://example.com/images/property2.jpg','Side view of the property','2023-12-02 10:07:12'),(7,4,'https://example.com/images/property4_balcony.jpg','Balcony with a view','2023-12-04 12:16:45'),(8,9,'https://example.com/images/property9_office.jpg','Home office','2023-12-09 17:09:27'),(9,6,'https://example.com/images/property6_dining.jpg','Dining area','2023-12-06 14:21:49'),(10,8,'https://example.com/images/property8.jpg','Patio','2023-12-08 16:12:38'),(11,1,'https://example.com/images/property1.jpg','Front view of the property','2023-12-01 09:03:17'),(12,5,'https://example.com/images/property5.jpg','Garden area','2023-12-05 13:02:58'),(13,8,'https://example.com/images/property8_bathroom.jpg','Luxury bathroom','2023-12-08 16:17:45'),(14,2,'https://example.com/images/property2_kitchen.jpg','Modern kitchen','2023-12-02 10:29:16'),(15,10,'https://example.com/images/property10_pool.jpg','Private pool','2023-12-10 18:11:02'),(16,7,'https://example.com/images/property7_gym.jpg','In-house gym','2023-12-07 15:24:10'),(17,4,'https://example.com/images/property4.jpg','Pool area','2023-12-04 12:13:41'),(18,6,'https://example.com/images/property6.jpg','Night view','2023-12-06 14:07:52'),(19,3,'https://example.com/images/property3.jpg','Backyard','2023-12-03 11:08:14'),(20,9,'https://example.com/images/property9.jpg','Driveway','2023-12-09 17:03:59');
/*!40000 ALTER TABLE `property_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_policy`
--

DROP TABLE IF EXISTS `property_policy`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_policy` (
  `policy_id` int unsigned NOT NULL AUTO_INCREMENT,
  `policy_type` varchar(100) DEFAULT NULL,
  `policy_description` text,
  PRIMARY KEY (`policy_id`),
  UNIQUE KEY `policy_id` (`policy_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_policy`
--

LOCK TABLES `property_policy` WRITE;
/*!40000 ALTER TABLE `property_policy` DISABLE KEYS */;
INSERT INTO `property_policy` VALUES (1,'Cancellation Policy','Full refund if canceled within 24 hours of booking'),(2,'Damage Policy','Damage to property incurs a $500 fine'),(3,'Check-in Policy','Check-in from 3 PM to 10 PM'),(4,'Check-out Policy','Check-out before 11 AM'),(5,'Pet Policy','Pets allowed with a $50 cleaning fee'),(6,'Smoking Policy','No smoking allowed in the property'),(7,'Guest Policy','Maximum of 4 guests allowed'),(8,'Noise Policy','Quiet hours from 10 PM to 7 AM'),(9,'Key Policy','Lost keys incur a $100 replacement fee'),(10,'Parking Policy','Free parking available on premises'),(11,'Cleaning Policy','Cleaning fee of $100 applies'),(12,'Cancellation Policy','50% refund if canceled 7 days before arrival'),(13,'Damage Policy','No refund for intentional damage'),(14,'Check-in Policy','Check-in from 12 PM to 8 PM'),(15,'Check-out Policy','Check-out before 10 AM'),(16,'Pet Policy','No pets allowed'),(17,'Smoking Policy','Smoking allowed in designated areas only'),(18,'Guest Policy','Maximum of 6 guests allowed'),(19,'Noise Policy','No loud music after 9 PM'),(20,'Parking Policy','No parking available on premises');
/*!40000 ALTER TABLE `property_policy` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_policy_map`
--

DROP TABLE IF EXISTS `property_policy_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_policy_map` (
  `property_id` int NOT NULL,
  `policy_id` int unsigned NOT NULL,
  PRIMARY KEY (`property_id`,`policy_id`),
  KEY `policy_id` (`policy_id`),
  CONSTRAINT `property_policy_map_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `property_policy_map_ibfk_2` FOREIGN KEY (`policy_id`) REFERENCES `property_policy` (`policy_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_policy_map`
--

LOCK TABLES `property_policy_map` WRITE;
/*!40000 ALTER TABLE `property_policy_map` DISABLE KEYS */;
INSERT INTO `property_policy_map` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(3,8),(4,9),(4,10),(5,11),(5,12),(6,13),(6,14),(7,15),(8,16),(8,17),(9,18),(10,19),(10,20);
/*!40000 ALTER TABLE `property_policy_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_service`
--

DROP TABLE IF EXISTS `property_service`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_service` (
  `service_id` int NOT NULL,
  `service_name` varchar(255) DEFAULT NULL,
  `service_description` text,
  PRIMARY KEY (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_service`
--

LOCK TABLES `property_service` WRITE;
/*!40000 ALTER TABLE `property_service` DISABLE KEYS */;
INSERT INTO `property_service` VALUES (1,'Daily Cleaning','Daily cleaning services provided'),(2,'Concierge','24/7 concierge service'),(3,'Room Service','In-room dining available'),(4,'Laundry','Laundry services provided'),(5,'Luggage Storage','Secure luggage storage facility'),(6,'Shuttle Service','Airport and local shuttle service'),(7,'Spa','On-site spa services'),(8,'Grocery Delivery','Grocery delivery service available'),(9,'Pet Sitting','Pet sitting services available'),(10,'Babysitting','Professional babysitting services'),(11,'Tour Assistance','Guided tours and assistance available'),(12,'Breakfast Included','Complimentary breakfast for guests'),(13,'Catering','Event catering services available'),(14,'Valet Parking','Valet parking services'),(15,'Fitness Classes','On-site fitness classes'),(16,'Yoga Sessions','Private yoga sessions available'),(17,'Car Rental','On-site car rental services'),(18,'Bike Rental','Bicycles available for rent'),(19,'Massage','In-room massage services available'),(20,'Event Planning','Event planning and coordination services');
/*!40000 ALTER TABLE `property_service` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_service_map`
--

DROP TABLE IF EXISTS `property_service_map`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_service_map` (
  `property_id` int NOT NULL,
  `service_id` int NOT NULL,
  PRIMARY KEY (`property_id`,`service_id`),
  KEY `service_id` (`service_id`),
  CONSTRAINT `property_service_map_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`),
  CONSTRAINT `property_service_map_ibfk_2` FOREIGN KEY (`service_id`) REFERENCES `property_service` (`service_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_service_map`
--

LOCK TABLES `property_service_map` WRITE;
/*!40000 ALTER TABLE `property_service_map` DISABLE KEYS */;
INSERT INTO `property_service_map` VALUES (1,1),(1,2),(1,3),(2,4),(2,5),(3,6),(3,7),(4,8),(4,9),(5,10),(5,11),(6,12),(6,13),(7,14),(7,15),(8,16),(8,17),(9,18),(9,19),(10,20);
/*!40000 ALTER TABLE `property_service_map` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `property_utility`
--

DROP TABLE IF EXISTS `property_utility`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `property_utility` (
  `utility_id` int unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int DEFAULT NULL,
  `utility_type` varchar(100) DEFAULT NULL,
  `cost` int DEFAULT NULL,
  `billing_period_start` date DEFAULT NULL,
  `billing_period_end` date DEFAULT NULL,
  PRIMARY KEY (`utility_id`),
  UNIQUE KEY `utility_id` (`utility_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `property_utility_ibfk_1` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `property_utility`
--

LOCK TABLES `property_utility` WRITE;
/*!40000 ALTER TABLE `property_utility` DISABLE KEYS */;
INSERT INTO `property_utility` VALUES (1,3,'Water',55,'2023-11-02','2023-11-29'),(2,5,'Gas',90,'2023-11-01','2023-11-30'),(3,1,'Electricity',110,'2023-11-03','2023-11-28'),(4,10,'Internet',48,'2023-11-01','2023-11-30'),(5,8,'Water',70,'2023-11-04','2023-11-29'),(6,4,'Gas',85,'2023-11-01','2023-11-30'),(7,16,'Electricity',105,'2023-11-02','2023-11-30'),(8,9,'Internet',50,'2023-11-01','2023-11-30'),(9,11,'Water',65,'2023-11-01','2023-11-29'),(10,6,'Gas',88,'2023-11-01','2023-11-30'),(11,20,'Electricity',95,'2023-11-01','2023-11-30'),(12,13,'Internet',55,'2023-11-02','2023-11-30'),(13,12,'Water',60,'2023-11-03','2023-11-30'),(14,14,'Gas',80,'2023-11-01','2023-11-29'),(15,7,'Electricity',100,'2023-11-01','2023-11-30'),(16,18,'Internet',45,'2023-11-02','2023-11-30'),(17,2,'Water',50,'2023-11-01','2023-11-28'),(18,15,'Gas',75,'2023-11-03','2023-11-30'),(19,17,'Electricity',120,'2023-11-01','2023-11-30'),(20,19,'Internet',40,'2023-11-04','2023-11-29');
/*!40000 ALTER TABLE `property_utility` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `region`
--

DROP TABLE IF EXISTS `region`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `region` (
  `region_id` int NOT NULL,
  `region_name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`region_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `region`
--

LOCK TABLES `region` WRITE;
/*!40000 ALTER TABLE `region` DISABLE KEYS */;
INSERT INTO `region` VALUES (1,'North America'),(2,'Europe'),(3,'Asia'),(4,'Africa'),(5,'South America'),(6,'Australia'),(7,'Antarctica'),(8,'Middle East'),(9,'Central America'),(10,'Caribbean'),(11,'Northern Europe'),(12,'Western Europe'),(13,'Eastern Europe'),(14,'Southern Europe'),(15,'Southeast Asia'),(16,'East Asia'),(17,'South Asia'),(18,'Central Asia'),(19,'North Africa'),(20,'Sub-Saharan Africa');
/*!40000 ALTER TABLE `region` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `review`
--

DROP TABLE IF EXISTS `review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `review` (
  `review_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `property_id` int NOT NULL,
  `review_text` text,
  `rating` decimal(2,1) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`review_id`),
  KEY `user_id` (`user_id`),
  KEY `property_id` (`property_id`),
  CONSTRAINT `review_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `review_ibfk_2` FOREIGN KEY (`property_id`) REFERENCES `property` (`property_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `review`
--

LOCK TABLES `review` WRITE;
/*!40000 ALTER TABLE `review` DISABLE KEYS */;
INSERT INTO `review` VALUES (1,5,1,'Had some issues with the Wi-Fi, but overall great.',4.0,'2023-12-01 09:12:34'),(2,18,2,'Check-in process was smooth and hassle-free.',4.9,'2023-12-02 10:18:47'),(3,11,3,'Decent stay, but could use some upgrades.',3.8,'2023-12-03 11:09:15'),(4,3,4,'Host was very helpful and responsive.',5.0,'2023-12-04 12:07:22'),(5,10,5,'Host went above and beyond to make us feel welcome.',5.0,'2023-12-05 13:11:56'),(6,9,6,'Great amenities but a bit noisy at night.',4.3,'2023-12-06 14:06:37'),(7,7,7,'Would definitely recommend to friends.',4.9,'2023-12-07 15:03:14'),(8,8,8,'The property exceeded our expectations.',5.0,'2023-12-08 16:02:48'),(9,19,9,'The area was very quiet and relaxing.',4.7,'2023-12-09 17:16:41'),(10,13,10,'Kitchen was well-equipped for cooking.',4.7,'2023-12-10 18:13:25'),(11,1,11,'Amazing property with stunning views!',5.0,'2023-12-11 19:14:59'),(12,15,12,'Bed was super comfortable!',5.0,'2023-12-12 20:09:36'),(13,6,13,'Beautiful interiors and comfortable stay.',4.7,'2023-12-13 21:05:47'),(14,4,14,'Perfect location for a family vacation.',4.8,'2023-12-14 22:08:16'),(15,2,15,'Very clean and well-maintained.',4.5,'2023-12-15 07:11:23'),(16,20,16,'Exceptional experience! Will book again.',5.0,'2023-12-16 08:17:41'),(17,14,17,'Convenient location near public transport.',4.5,'2023-12-17 09:13:29'),(18,17,18,'Amazing for a weekend getaway.',4.8,'2023-12-18 10:07:52'),(19,12,19,'Loved the pool and outdoor area.',4.6,'2023-12-19 11:09:18'),(20,16,20,'Great value for the price.',4.4,'2023-12-20 12:08:33');
/*!40000 ALTER TABLE `review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `role_id` int unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`role_id`),
  UNIQUE KEY `role_id` (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'Admin'),(2,'Guest'),(3,'Host');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `social_media`
--

DROP TABLE IF EXISTS `social_media`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `social_media` (
  `network_id` int NOT NULL,
  `user_account_id` int unsigned DEFAULT NULL,
  `account_url` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`network_id`),
  KEY `user_account_id` (`user_account_id`),
  CONSTRAINT `social_media_ibfk_1` FOREIGN KEY (`user_account_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `social_media`
--

LOCK TABLES `social_media` WRITE;
/*!40000 ALTER TABLE `social_media` DISABLE KEYS */;
INSERT INTO `social_media` VALUES (1,10,'https://twitter.com/user110'),(2,2,'https://facebook.com/user102'),(3,6,'https://instagram.com/user106'),(4,12,'https://linkedin.com/in/user112'),(5,8,'https://twitter.com/user108'),(6,20,'https://facebook.com/user120'),(7,18,'https://instagram.com/user118'),(8,15,'https://linkedin.com/in/user115'),(9,17,'https://twitter.com/user117'),(10,14,'https://facebook.com/user114'),(11,13,'https://instagram.com/user113'),(12,19,'https://linkedin.com/in/user119'),(13,4,'https://twitter.com/user104'),(14,1,'https://facebook.com/user101'),(15,5,'https://instagram.com/user105'),(16,11,'https://linkedin.com/in/user111'),(17,7,'https://twitter.com/user107'),(18,16,'https://facebook.com/user116'),(19,3,'https://instagram.com/user103'),(20,9,'https://linkedin.com/in/user109');
/*!40000 ALTER TABLE `social_media` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `support_tickets`
--

DROP TABLE IF EXISTS `support_tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `support_tickets` (
  `ticket_id` int NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `description` text,
  `status` varchar(50) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ticket_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `support_tickets_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `support_tickets`
--

LOCK TABLES `support_tickets` WRITE;
/*!40000 ALTER TABLE `support_tickets` DISABLE KEYS */;
INSERT INTO `support_tickets` VALUES (1,5,'Refund Request','Requesting refund for a cancelled booking','Open','2023-10-12 12:12:15','2023-10-12 12:33:48'),(2,12,'Slow Performance','Website loading very slowly','In Progress','2023-09-22 19:18:27','2023-09-22 19:39:54'),(3,18,'App Update Issue','Unable to update the app on my phone','In Progress','2023-07-05 09:14:36','2023-07-05 09:31:42'),(4,3,'Account Suspension','My account was suspended without reason','Pending','2023-12-01 11:07:12','2023-12-01 11:21:47'),(5,7,'Feature Request','Add a filter for pet-friendly properties','Closed','2023-08-19 14:15:49','2023-08-19 14:24:15'),(6,10,'Security Concern','Suspicious activity on my account','Resolved','2023-11-03 18:09:22','2023-11-03 18:39:12'),(7,16,'Booking Confirmation','Did not receive confirmation email','Resolved','2023-06-30 07:07:12','2023-06-30 07:47:41'),(8,19,'Broken Link','A link on the FAQ page is broken','Open','2023-09-10 10:13:56','2023-09-10 10:32:18'),(9,1,'Login Issue','Unable to log into my account','Open','2023-07-15 08:09:25','2023-07-15 08:12:43'),(10,14,'Double Charge','Charged twice for the same booking','Resolved','2023-12-13 22:05:37','2023-12-13 22:39:12'),(11,2,'Payment Problem','Payment failed while booking a property','Resolved','2023-08-21 09:18:21','2023-08-21 10:12:37'),(12,4,'Property Listing','Need help listing my property','In Progress','2023-11-15 12:14:32','2023-11-15 12:49:04'),(13,8,'Cancellation Issue','Unable to cancel my booking','Open','2023-09-25 15:17:48','2023-09-25 15:53:11'),(14,11,'Booking Problem','Could not complete booking process','Open','2023-10-17 18:06:44','2023-10-17 18:23:35'),(15,6,'Technical Issue','Website not loading on my device','Resolved','2023-06-29 13:13:55','2023-06-29 13:38:41'),(16,13,'Account Deletion','Want to delete my account permanently','Closed','2023-08-30 20:09:41','2023-08-30 20:36:25'),(17,17,'Payment Refund','Refund not received for a cancelled booking','Pending','2023-10-05 08:18:14','2023-10-05 08:41:22'),(18,20,'Discount Issue','Promo code is not being applied','Resolved','2023-11-09 12:15:49','2023-11-09 12:45:37'),(19,15,'Unresponsive Host','Host is not responding to my messages','Open','2023-12-02 07:17:42','2023-12-02 07:39:27'),(20,9,'Mobile App Bug','App crashes when viewing properties','Pending','2023-07-10 16:13:14','2023-07-10 16:31:49');
/*!40000 ALTER TABLE `support_tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_account`
--

DROP TABLE IF EXISTS `user_account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_account` (
  `user_id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) DEFAULT NULL,
  `last_name` varchar(100) DEFAULT NULL,
  `user_name` varchar(50) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `hashed_password` varchar(255) DEFAULT NULL,
  `mobile_number` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `user_id` (`user_id`),
  UNIQUE KEY `email_address` (`email_address`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_account`
--

LOCK TABLES `user_account` WRITE;
/*!40000 ALTER TABLE `user_account` DISABLE KEYS */;
INSERT INTO `user_account` VALUES (1,'Carilyn','Jezard','cjezard0','cjezard0@comcast.net','$2a$04$8/FmFT16UCtIFrL91ofqh.SxzzT1apdllLvepkHtzmvOmSOkYCeNW','267-393-5416','1994-09-10 01:43:02','2018-11-19 16:29:43'),(2,'Rani','Goodhay','rgoodhay1','rgoodhay1@state.tx.us','$2a$04$tQp7k.kotISGsN59.Sg4U.OowpFviAe9w1qNBwp.4KfzQQuGMuvJi','211-860-3729','1986-08-23 07:30:34','2022-05-16 19:39:20'),(3,'Julita','Elt','jelt2','jelt2@devhub.com','$2a$04$WhnEA6g4qLbMl4Vo0UrEL.enNBbwa//yMIHqPBTp.DYEe0yRUM2AW','207-383-5664','2013-02-24 14:54:05','2015-10-21 20:27:33'),(4,'Meir','Davids','mdavids3','mdavids3@e-recht24.de','$2a$04$2sYV6AhnkauYN/nlLZFdW.K77tXqJKDvexwn289f7NPa2pU1tLtM6','813-256-3109','2017-02-27 09:23:51','2015-09-24 07:41:13'),(5,'Sawyer','Cavill','scavill4','scavill4@constantcontact.com','$2a$04$gLjet8SAb0bjrKneWQt2aO9iFZSl5.ZLSsF/ZFPzQWLLTtBquKjMK','992-296-0550','1978-09-14 04:05:14','2015-04-17 00:00:54'),(6,'Dan','Ledgerton','dledgerton5','dledgerton5@aboutads.info','$2a$04$XUq1Lxrvk6LV/80iYtC4uO2K4/s.BcljQ0yBiXxoei.MQNuprGuBy','844-170-5843','2015-05-14 12:35:40','2017-08-22 23:54:09'),(7,'Darcy','Vivien','dvivien6','dvivien6@ask.com','$2a$04$NQh6suWXtaJDfF7HjLCE9u3i8R49fl5cEnAqyhT/t7VpAZZeazQLi','159-336-9091','1999-11-01 05:48:26','2016-05-02 10:16:19'),(8,'Lemuel','Jedraszczyk','ljedraszczyk7','ljedraszczyk7@themeforest.net','$2a$04$h7X33S44CULqJwKNAEOe2u3VD5177kjplvfToKWGD503WKMoHiJL.','648-151-9429','2023-04-10 03:52:06','2021-04-07 18:49:13'),(9,'Josias','Ohms','johms8','johms8@symantec.com','$2a$04$gkL8srek565qRyheimuBTuJAyTPFKFpMDOVCpFab5opvJCQRLHOZa','746-824-5262','1988-10-24 07:41:52','2013-09-21 16:57:11'),(10,'Viva','Houtby','vhoutby9','vhoutby9@apache.org','$2a$04$VeZtA3zERGDf..BzIzv2Z.FNYnjTzSQrDNaWMcNy4ijfoKZ7FV.2K','554-837-9848','1999-11-14 14:43:34','2017-12-02 13:46:46'),(11,'Cathleen','Laydon','claydona','claydona@google.ru','$2a$04$KPOARjBOH5D5j/QmHLGLEelVteYD0mnVrgwqbxUCk2UDdP0pR8DI6','525-625-3256','2006-11-08 09:28:37','2009-06-10 09:40:56'),(12,'Sayers','Batchellor','sbatchellorb','sbatchellorb@sbwire.com','$2a$04$yeKNdJa3fjHKNmYRs26ndOBw3ob7/KFohq5BiRcA/FJ0ycbzAu1Oe','129-452-5043','1998-09-24 07:50:14','2019-02-16 06:20:02'),(13,'Allan','Mackett','amackettc','amackettc@msn.com','$2a$04$IXdEy91aiynjkhv2lFbJaeL4isrURbhdWeHDt8RcK8YjBiuufjD7K','922-481-7859','1971-01-28 10:12:04','2023-09-24 20:53:36'),(14,'Naomi','Nussii','nnussiid','nnussiid@infoseek.co.jp','$2a$04$g91dG9fL3z3E/AOZ6y8B7.rRx7gdBHqppAiggu0Ra26DWyY1UFtEe','112-829-4282','1989-07-06 02:43:20','2017-03-25 21:09:57'),(15,'Vyky','Murrigans','vmurriganse','vmurriganse@prlog.org','$2a$04$aSVfOYhIvaDWptkaBpbJ1eP8R97K1LGbMGeon5pFM86ExtKz5MG6i','455-197-5281','2010-05-07 03:01:43','2014-08-14 06:11:17'),(16,'Harriette','Kienle','hkienlef','hkienlef@amazon.com','$2a$04$6YkUTHouPo5mEYx8nokKBustuh4bZCRRYGD7TKl.X3OI6yNchlCzy','568-429-2865','2002-09-06 20:22:17','2015-03-03 15:54:23'),(17,'Yul','Castle','ycastleg','ycastleg@dedecms.com','$2a$04$.0A9dccPhCfHAyWoGZI3NO.q0PXbY3ZUttJhAlUpFqhd2yeUP3Sl2','776-153-2326','2013-08-04 15:36:49','2018-03-05 10:13:50'),(18,'Eleanora','Portingale','eportingaleh','eportingaleh@simplemachines.org','$2a$04$3lvtwmP6ET.F5K5aDZJjm.t1hUKigZhgtc0kUL/8tiKKR5GBuIlEW','227-275-1312','2021-12-13 05:59:02','2022-07-14 19:25:48'),(19,'Sargent','Lucken','sluckeni','sluckeni@1und1.de','$2a$04$PLyJkyfLtjLBzU7WcKGXCuOcYCxBSnxu6o.hE3yyOLqARtyVYpaYu','604-537-3589','2017-03-16 23:09:40','2016-03-20 20:03:36'),(20,'Filia','Passmore','fpassmorej','fpassmorej@dmoz.org','$2a$04$5yV.nFTtutRZaiU1Y.VVLOZioPXRrOWIzDe8VIOsQZpF4OYZ0mk7y','100-328-0168','2012-04-21 22:36:34','2014-12-27 05:36:40');
/*!40000 ALTER TABLE `user_account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_activity_log`
--

DROP TABLE IF EXISTS `user_activity_log`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_activity_log` (
  `log_id` int NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `activity_type` varchar(50) DEFAULT NULL,
  `activity_timestamp` timestamp NULL DEFAULT NULL,
  `activity_description` text,
  PRIMARY KEY (`log_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_activity_log_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_activity_log`
--

LOCK TABLES `user_activity_log` WRITE;
/*!40000 ALTER TABLE `user_activity_log` DISABLE KEYS */;
INSERT INTO `user_activity_log` VALUES (1,5,'Logout','2023-09-03 10:15:42','User logged out of the system'),(2,12,'Message Received','2023-10-06 17:12:23','User received a message'),(3,19,'Login','2023-08-10 08:05:34','User logged into the system'),(4,2,'Profile Update','2023-09-12 07:18:56','User updated profile information'),(5,8,'Booking','2023-07-04 13:25:19','User made a booking'),(6,13,'Login','2023-12-02 19:14:07','User logged into the system'),(7,3,'Password Change','2023-11-02 09:07:29','User changed account password'),(8,6,'Message Sent','2023-09-01 11:03:41','User sent a message'),(9,17,'Logout','2023-08-09 06:11:16','User logged out of the system'),(10,7,'Login','2023-11-04 13:22:51','User logged into the system'),(11,20,'Booking','2023-10-10 09:27:45','User made a booking'),(12,9,'Profile Update','2023-06-05 14:09:34','User updated profile information'),(13,18,'Message Sent','2023-07-09 07:14:48','User sent a message'),(14,1,'Login','2023-08-01 06:23:37','User logged into the system'),(15,10,'Payment','2023-11-05 16:18:52','User made a payment'),(16,15,'Password Change','2023-07-08 20:10:42','User changed account password'),(17,16,'Payment','2023-10-08 21:11:25','User made a payment'),(18,14,'Profile Update','2023-09-07 19:15:58','User updated profile information'),(19,4,'Payment','2023-12-03 10:03:17','User made a payment'),(20,11,'Logout','2023-06-06 16:21:45','User logged out of the system');
/*!40000 ALTER TABLE `user_activity_log` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_language`
--

DROP TABLE IF EXISTS `user_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_language` (
  `user_id` int unsigned NOT NULL,
  `language_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`language_id`),
  KEY `language_id` (`language_id`),
  CONSTRAINT `user_language_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `user_language_ibfk_2` FOREIGN KEY (`language_id`) REFERENCES `language` (`language_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_language`
--

LOCK TABLES `user_language` WRITE;
/*!40000 ALTER TABLE `user_language` DISABLE KEYS */;
INSERT INTO `user_language` VALUES (1,1),(1,2),(2,3),(2,4),(3,5),(4,6),(5,7),(6,8),(7,9),(8,10),(9,11),(10,12),(11,13),(12,14),(13,15),(14,16),(15,17),(16,18),(17,19),(18,20);
/*!40000 ALTER TABLE `user_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_message`
--

DROP TABLE IF EXISTS `user_message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_message` (
  `id` int NOT NULL,
  `sender_id` int unsigned DEFAULT NULL,
  `receiver_id` int unsigned DEFAULT NULL,
  `message_content` text,
  `status` varchar(50) DEFAULT NULL,
  `sent_at_timestamp` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sender_id` (`sender_id`),
  KEY `receiver_id` (`receiver_id`),
  CONSTRAINT `user_message_ibfk_1` FOREIGN KEY (`sender_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `user_message_ibfk_2` FOREIGN KEY (`receiver_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_message`
--

LOCK TABLES `user_message` WRITE;
/*!40000 ALTER TABLE `user_message` DISABLE KEYS */;
INSERT INTO `user_message` VALUES (1,5,6,'Can we reschedule our meeting?','Sent','2023-09-03 10:14:23'),(2,6,5,'Sure, what time works for you?','Read','2023-09-03 10:19:41'),(3,7,8,'I loved your recent post!','Sent','2023-11-22 12:05:37'),(4,8,7,'Thank you so much!','Read','2023-11-22 12:15:29'),(5,17,18,'Please share the presentation.','Sent','2023-08-09 16:07:13'),(6,18,17,'I will send it by EOD.','Read','2023-08-09 16:29:48'),(7,1,2,'Hello, how are you?','Sent','2023-07-01 08:12:47'),(8,2,1,'I am good, thanks!','Read','2023-07-01 08:19:33'),(9,15,16,'Are you free this weekend?','Sent','2023-10-08 15:09:25'),(10,16,15,'Yes, let’s plan something.','Read','2023-10-08 15:23:54'),(11,13,14,'I have sent you the proposal.','Sent','2023-12-07 15:11:32'),(12,14,13,'Thanks, I will go through it.','Read','2023-12-07 15:28:49'),(13,19,20,'Can you assist with the report?','Sent','2023-09-10 17:06:15'),(14,20,19,'Sure, send me the details.','Read','2023-09-10 17:22:14'),(15,11,12,'Let’s catch up soon.','Sent','2023-06-06 13:08:53'),(16,12,11,'Sure, let me know when.','Read','2023-06-06 13:25:41'),(17,9,10,'Please check the document I sent.','Sent','2023-08-15 12:07:37'),(18,10,9,'Got it, will review and revert.','Read','2023-08-15 12:29:52'),(19,3,4,'Are you available for a call?','Sent','2023-11-02 10:13:27'),(20,4,3,'Yes, let me know when.','Read','2023-11-02 10:28:15');
/*!40000 ALTER TABLE `user_message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_notification`
--

DROP TABLE IF EXISTS `user_notification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_notification` (
  `notification_id` int NOT NULL,
  `user_id` int unsigned DEFAULT NULL,
  `notification_type` varchar(50) DEFAULT NULL,
  `notification_content` text,
  `sent_at` timestamp NULL DEFAULT NULL,
  `is_read` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `user_id` (`user_id`),
  CONSTRAINT `user_notification_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_notification`
--

LOCK TABLES `user_notification` WRITE;
/*!40000 ALTER TABLE `user_notification` DISABLE KEYS */;
INSERT INTO `user_notification` VALUES (1,5,'Refund Processed','Your refund has been processed.','2023-10-14 12:28:32',1),(2,10,'Promo Alert','A new promo code is available.','2023-11-03 18:33:15',0),(3,17,'Support Ticket','Your support ticket has been updated.','2023-12-01 09:47:28',0),(4,8,'Cancellation Confirmed','Your booking cancellation is confirmed.','2023-08-25 15:52:14',1),(5,15,'Feedback Request','Please rate your recent booking.','2023-09-18 06:49:37',0),(6,4,'Reminder','Your booking starts tomorrow.','2023-10-22 11:19:43',1),(7,6,'Security Alert','Unusual activity detected on your account.','2023-11-12 14:42:57',0),(8,14,'Booking Update','Your booking status has changed.','2023-12-15 22:12:36',1),(9,3,'Ticket Update','Your support ticket has been resolved.','2023-10-05 10:43:11',0),(10,19,'Discount Offer','Special discounts for holiday bookings.','2023-09-29 10:16:22',1),(11,1,'Booking Update','Your booking has been confirmed.','2023-08-11 08:13:49',1),(12,18,'App Update','A new version of the app is available.','2023-09-20 09:29:07',1),(13,11,'Payment Failure','Your payment could not be processed.','2023-07-07 18:49:25',1),(14,9,'Booking Reminder','Your booking starts in 2 days.','2023-10-03 16:17:39',1),(15,13,'Maintenance Notice','Our site will be down for maintenance.','2023-09-24 20:27:14',0),(16,7,'New Feature','Check out our new search filters.','2023-10-18 14:25:08',1),(17,16,'Password Change','Your password was changed successfully.','2023-11-09 08:14:29',1),(18,12,'Account Update','Your account details have been updated.','2023-12-02 20:18:43',1),(19,2,'Payment Received','We have received your payment.','2023-09-17 09:34:12',1),(20,20,'Booking Reminder','Your booking starts in 3 days.','2023-12-20 12:37:55',1);
/*!40000 ALTER TABLE `user_notification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_roles`
--

DROP TABLE IF EXISTS `user_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_roles` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_id` (`role_id`),
  CONSTRAINT `user_roles_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `user_account` (`user_id`),
  CONSTRAINT `user_roles_ibfk_2` FOREIGN KEY (`role_id`) REFERENCES `roles` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_roles`
--

LOCK TABLES `user_roles` WRITE;
/*!40000 ALTER TABLE `user_roles` DISABLE KEYS */;
INSERT INTO `user_roles` VALUES (1,1),(4,1),(9,1),(10,1),(14,1),(17,1),(18,1),(1,2),(2,2),(3,2),(5,2),(6,2),(7,2),(11,2),(13,2),(16,2),(2,3),(8,3),(12,3),(15,3),(19,3);
/*!40000 ALTER TABLE `user_roles` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-18 22:40:25
