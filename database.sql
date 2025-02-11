-- MySQL dump 10.13  Distrib 5.7.44, for osx10.19 (x86_64)
--
-- Host: 127.0.0.1    Database: flex_home
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `activations`
--

DROP TABLE IF EXISTS `activations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `activations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `code` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `activations_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `activations`
--

LOCK TABLES `activations` WRITE;
/*!40000 ALTER TABLE `activations` DISABLE KEYS */;
INSERT INTO `activations` VALUES (1,1,'5MCewvGlAOkxRuxDolGQ6IuT3Y6M1uSn',1,'2025-01-17 18:00:53','2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `activations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notifications`
--

DROP TABLE IF EXISTS `admin_notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notifications` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `action_label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permission` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notifications`
--

LOCK TABLES `admin_notifications` WRITE;
/*!40000 ALTER TABLE `admin_notifications` DISABLE KEYS */;
/*!40000 ALTER TABLE `admin_notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads`
--

DROP TABLE IF EXISTS `ads`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expired_at` datetime DEFAULT NULL,
  `location` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `clicked` bigint NOT NULL DEFAULT '0',
  `order` int DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `open_in_new_tab` tinyint(1) NOT NULL DEFAULT '1',
  `tablet_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mobile_image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ads_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `google_adsense_slot_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `ads_key_unique` (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads`
--

LOCK TABLES `ads` WRITE;
/*!40000 ALTER TABLE `ads` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ads_translations`
--

DROP TABLE IF EXISTS `ads_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ads_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ads_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`ads_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ads_translations`
--

LOCK TABLES `ads_translations` WRITE;
/*!40000 ALTER TABLE `ads_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `ads_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements`
--

DROP TABLE IF EXISTS `announcements`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `has_action` tinyint(1) NOT NULL DEFAULT '0',
  `action_label` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_url` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `action_open_new_tab` tinyint(1) NOT NULL DEFAULT '0',
  `dismissible` tinyint(1) NOT NULL DEFAULT '0',
  `start_date` datetime DEFAULT NULL,
  `end_date` datetime DEFAULT NULL,
  `is_active` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements`
--

LOCK TABLES `announcements` WRITE;
/*!40000 ALTER TABLE `announcements` DISABLE KEYS */;
INSERT INTO `announcements` VALUES (1,'Announcement 1','Explore Our Exciting New Property Listings Now Available in Prime Locations!',0,NULL,NULL,0,1,'2025-01-18 01:01:11',NULL,1,'2025-01-17 18:01:11','2025-01-17 18:01:11'),(2,'Announcement 2','Join Us for Exclusive Open House Events This Weekend and Find Your Perfect Home!',0,NULL,NULL,0,1,'2025-01-18 01:01:11',NULL,1,'2025-01-17 18:01:11','2025-01-17 18:01:11'),(3,'Announcement 3','Take Advantage of Limited-Time Offers on Luxury Homes with Stunning Features!',0,NULL,NULL,0,1,'2025-01-18 01:01:11',NULL,1,'2025-01-17 18:01:11','2025-01-17 18:01:11'),(4,'Announcement 4','Discover Your Dream Home with Our Latest Listings and Personalized Services!',0,NULL,NULL,0,1,'2025-01-18 01:01:11',NULL,1,'2025-01-17 18:01:11','2025-01-17 18:01:11');
/*!40000 ALTER TABLE `announcements` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `announcements_translations`
--

DROP TABLE IF EXISTS `announcements_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `announcements_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `announcements_id` bigint unsigned NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`announcements_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `announcements_translations`
--

LOCK TABLES `announcements_translations` WRITE;
/*!40000 ALTER TABLE `announcements_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `announcements_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `audit_histories`
--

DROP TABLE IF EXISTS `audit_histories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `audit_histories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `module` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_user` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `audit_histories_user_id_index` (`user_id`),
  KEY `audit_histories_module_index` (`module`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit_histories`
--

LOCK TABLES `audit_histories` WRITE;
/*!40000 ALTER TABLE `audit_histories` DISABLE KEYS */;
INSERT INTO `audit_histories` VALUES (2,1,'language','{\"lang_id\":\"0\",\"lang_name\":\"Ti\\u1ebfng Vi\\u1ec7t\",\"lang_locale\":\"vi\",\"lang_code\":\"vi\",\"lang_flag\":\"vn\",\"lang_order\":\"0\",\"lang_is_rtl\":\"0\"}','created','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','info','2023-06-23 02:53:00','2023-06-23 02:53:00'),(3,1,'language','{\"_method\":\"DELETE\"}','deleted','Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/114.0.0.0 Safari/537.36','127.0.0.1',1,2,'','danger','2023-06-23 02:53:15','2023-06-23 02:53:15');
/*!40000 ALTER TABLE `audit_histories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cache_locks` (
  `key` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers`
--

DROP TABLE IF EXISTS `careers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers`
--

LOCK TABLES `careers` WRITE;
/*!40000 ALTER TABLE `careers` DISABLE KEYS */;
INSERT INTO `careers` VALUES (1,'Sales Manager (Up to 2600$)','Ho Chi Minh, Viet Nam','1300$ - 2600$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Applicants receive a salary from 1300 USD to 2600 USD<br />\r\n- Fully enjoy the regimes according to Vietnam&#39;s Labor Law: Social insurance, health insurance, unemployment insurance<br />\r\n- Trained to improve expertise and capacity in suitable positions.</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Coordinate with the Investment Department in organizing the collection, analysis, evaluation of market information and submitting proposals for planning the project&#39;s products and investment cooperation plans (if any);<br />\r\n- Acting as a focal point of exploitation and trading with customers, managing trading floors and distributors;<br />\r\n- Checking and approving the selection of sales units, management units for exploitation, operation and investment cooperation;<br />\r\n- Leading the negotiation and management of contracts with customers, sales units, management of exploitation, operation and investment cooperation;<br />\r\n- Prepare and submit a price approval for the sale, lease, and cooperation prices of all real estate projects;<br />\r\n- Develop sales plans, sales policies, support and promotions;<br />\r\n- Coordinate with member companies (Project Management Board) to collect and hand over product records (technical documents, red books, sales contracts ...) to hand over customers;<br />\r\n- Deploy customer support activities;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Preferred age: 30-35<br />\r\n- University degree in Business Administration, Economics, or related industries.<br />\r\n- Over 03 years of experience in assuming the position of Real Estate Business City<br />\r\n- Priority with a certificate of real estate broker, certificate of real estate trading floor management<br />\r\n- Good planning, operating, and control skills<br />\r\n- Good communication, negotiation and problem-solving skills</span></span></p>','published','2019-11-30 19:43:10','2019-11-30 19:46:53',NULL),(3,'Senior Real Estate Consultant Demo','Ho Chi Minh, Viet Nam','From 1500$','<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>BENEFITS FOR YOU</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Basic salary 500$&nbsp;/ month.<br />\r\n- Access to diverse sources of goods and opportunities from reputable investors.<br />\r\n- Retrospective salary policy up to 2400$-7000$&nbsp;/ year.<br />\r\n- Commission of 22-50% and a commission 1000$ / successful transaction in the month.<br />\r\n- Effective bonus 0.6-3% of annual revenue.<br />\r\n- A place to build your personal brand in a standard and different way.<br />\r\n- Attend seminars on real estate every 6 months.<br />\r\n- Participate in the course on negotiation skills (Win - Win), language of sales (Language of Sales), customer mind marketing (SOI), customer conversion from social networks (Go Social)<br />\r\n- Unlimited promotion opportunities.<br />\r\n- Working with professional space and modern open office design.<br />\r\n- Welfare policy, domestic and foreign tourism ...<br />\r\n- Decentralized, democratic, financial transparency, considering brokerage is a business partner.<br />\r\n- Environmentally friendly, is the place where brokers are connected with regular activities</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB DESCRIPTION</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Quantity: 30 employees<br />\r\n- Find and exploit potential customers for real estate products valued from 2000 USD / m2 in the high-end and luxury segment;<br />\r\n- Deploying activities to find customers, coordinate with teams to realize sales targets<br />\r\n- Advise customers on information related to products and projects of the Company;</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>JOB REQUIREMENTS</strong></span></span></p>\r\n\r\n<p><span style=\"font-size:14px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Graduating from college or higher<br />\r\n- Good appearance, male height from 1.68m, female from 1.58m. Age from 22-35 years old<br />\r\n- Priority to candidates who know foreign languages ​​and have 1 year or more experience in the field of real estate, banking and finance.<br />\r\n- Have financial goals, work and life.<br />\r\n- Desire to achieve big goals.<br />\r\n- Diligent, persistent, honest.</span></span></p>','published','2019-11-30 19:52:42','2021-01-03 17:26:17',NULL);
/*!40000 ALTER TABLE `careers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `careers_translations`
--

DROP TABLE IF EXISTS `careers_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `careers_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `careers_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `salary` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`careers_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `careers_translations`
--

LOCK TABLES `careers_translations` WRITE;
/*!40000 ALTER TABLE `careers_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `careers_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `categories_parent_id_status_created_at_index` (`parent_id`,`status`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories`
--

LOCK TABLES `categories` WRITE;
/*!40000 ALTER TABLE `categories` DISABLE KEYS */;
INSERT INTO `categories` VALUES (1,'News',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-18 02:33:35','2019-11-18 02:33:35'),(2,'House architecture',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:25','2019-11-21 07:49:25'),(3,'Kiến trúc nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:49:35','2019-11-21 07:49:35'),(4,'House design',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:02','2019-11-21 07:50:02'),(5,'Thiết kế nhà',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:17','2019-11-21 07:50:17'),(6,'Building materials',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:36','2019-11-21 07:50:36'),(7,'Vật liệu xây dựng',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,0,'2019-11-21 07:50:58','2019-11-21 07:50:58'),(8,'Tin tức',0,NULL,'published',1,'Botble\\ACL\\Models\\User',NULL,0,0,1,'2019-11-22 01:26:08','2019-11-22 01:26:08');
/*!40000 ALTER TABLE `categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categories_translations`
--

DROP TABLE IF EXISTS `categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categories_translations`
--

LOCK TABLES `categories_translations` WRITE;
/*!40000 ALTER TABLE `categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities`
--

DROP TABLE IF EXISTS `cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `state_id` bigint unsigned DEFAULT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `record_id` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cities_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities`
--

LOCK TABLES `cities` WRITE;
/*!40000 ALTER TABLE `cities` DISABLE KEYS */;
INSERT INTO `cities` VALUES (1,'Alhambra',1,1,0,0,'cities/location-1.jpg','published','2019-11-18 08:18:42','2019-12-03 05:55:52','alhambra',NULL,NULL),(2,'Oakland',1,1,0,0,'cities/location-2.jpg','published','2019-11-18 08:23:14','2019-12-03 05:55:52','oakland',NULL,NULL),(3,'Bakersfield',1,1,0,0,'cities/location-3.jpg','published','2019-11-18 08:26:54','2019-12-03 05:55:52','bakersfield',NULL,NULL),(4,'Anaheim',1,1,0,0,'cities/location-4.jpg','published','2019-11-18 08:27:57','2019-12-03 05:55:52','anaheim',NULL,NULL),(5,'San Francisco',1,1,0,0,'cities/location-5.jpg','published','2019-11-18 08:29:18','2019-12-03 05:55:52','san-francisco',NULL,NULL);
/*!40000 ALTER TABLE `cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cities_translations`
--

DROP TABLE IF EXISTS `cities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `cities_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`cities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cities_translations`
--

LOCK TABLES `cities_translations` WRITE;
/*!40000 ALTER TABLE `cities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `cities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options`
--

DROP TABLE IF EXISTS `contact_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options`
--

LOCK TABLES `contact_custom_field_options` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_field_options_translations`
--

DROP TABLE IF EXISTS `contact_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_field_options_translations` (
  `contact_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_field_options_translations`
--

LOCK TABLES `contact_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields`
--

DROP TABLE IF EXISTS `contact_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields`
--

LOCK TABLES `contact_custom_fields` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_custom_fields_translations`
--

DROP TABLE IF EXISTS `contact_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_custom_fields_translations` (
  `contact_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`contact_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_custom_fields_translations`
--

LOCK TABLES `contact_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `contact_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_replies`
--

DROP TABLE IF EXISTS `contact_replies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contact_replies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `message` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact_id` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_replies`
--

LOCK TABLES `contact_replies` WRITE;
/*!40000 ALTER TABLE `contact_replies` DISABLE KEYS */;
/*!40000 ALTER TABLE `contact_replies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contacts`
--

DROP TABLE IF EXISTS `contacts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `contacts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subject` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contacts`
--

LOCK TABLES `contacts` WRITE;
/*!40000 ALTER TABLE `contacts` DISABLE KEYS */;
/*!40000 ALTER TABLE `contacts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries`
--

DROP TABLE IF EXISTS `countries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `image` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `code` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries`
--

LOCK TABLES `countries` WRITE;
/*!40000 ALTER TABLE `countries` DISABLE KEYS */;
INSERT INTO `countries` VALUES (1,'United States','United States of America',0,NULL,0,'published','2019-11-18 08:17:29','2019-11-18 08:17:29',NULL);
/*!40000 ALTER TABLE `countries` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `countries_translations`
--

DROP TABLE IF EXISTS `countries_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `countries_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `countries_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nationality` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`countries_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `countries_translations`
--

LOCK TABLES `countries_translations` WRITE;
/*!40000 ALTER TABLE `countries_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `countries_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widget_settings`
--

DROP TABLE IF EXISTS `dashboard_widget_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widget_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `settings` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `widget_id` int unsigned NOT NULL,
  `order` tinyint unsigned NOT NULL DEFAULT '0',
  `status` tinyint unsigned NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dashboard_widget_settings_user_id_index` (`user_id`),
  KEY `dashboard_widget_settings_widget_id_index` (`widget_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widget_settings`
--

LOCK TABLES `dashboard_widget_settings` WRITE;
/*!40000 ALTER TABLE `dashboard_widget_settings` DISABLE KEYS */;
INSERT INTO `dashboard_widget_settings` VALUES (1,NULL,1,7,0,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(2,NULL,1,5,1,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(3,NULL,1,6,2,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(4,NULL,1,8,3,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(5,NULL,1,9,4,1,'2019-11-26 02:40:58','2019-11-26 02:40:58'),(6,NULL,1,10,5,1,'2019-11-26 02:40:58','2019-11-26 02:40:58');
/*!40000 ALTER TABLE `dashboard_widget_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dashboard_widgets`
--

DROP TABLE IF EXISTS `dashboard_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dashboard_widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dashboard_widgets`
--

LOCK TABLES `dashboard_widgets` WRITE;
/*!40000 ALTER TABLE `dashboard_widgets` DISABLE KEYS */;
INSERT INTO `dashboard_widgets` VALUES (1,'widget_total_pages','2019-11-15 04:57:40','2019-11-15 04:57:40'),(2,'widget_total_users','2019-11-15 04:57:40','2019-11-15 04:57:40'),(3,'widget_total_plugins','2019-11-15 04:57:40','2019-11-15 04:57:40'),(4,'widget_total_themes','2019-11-15 04:57:40','2019-11-15 04:57:40'),(5,'widget_audit_logs','2019-11-15 18:54:50','2019-11-15 18:54:50'),(6,'widget_posts_recent','2019-11-15 18:54:50','2019-11-15 18:54:50'),(7,'widget_analytics_general','2019-11-15 18:54:50','2019-11-15 18:54:50'),(8,'widget_analytics_page','2019-11-15 18:54:50','2019-11-15 18:54:50'),(9,'widget_analytics_browser','2019-11-15 18:54:50','2019-11-15 18:54:50'),(10,'widget_analytics_referrer','2019-11-15 18:54:50','2019-11-15 18:54:50'),(11,'widget_total_1','2022-11-05 23:58:22','2022-11-05 23:58:22'),(12,'widget_total_2','2022-11-05 23:58:22','2022-11-05 23:58:22'),(13,'widget_total_3','2022-11-05 23:58:22','2022-11-05 23:58:22'),(14,'widget_total_4','2022-11-05 23:58:22','2022-11-05 23:58:22');
/*!40000 ALTER TABLE `dashboard_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language_meta`
--

DROP TABLE IF EXISTS `language_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language_meta` (
  `lang_meta_id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `lang_meta_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_meta_origin` varchar(32) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`lang_meta_id`),
  KEY `language_meta_lang_meta_content_id_index` (`reference_id`),
  KEY `meta_code_index` (`lang_meta_code`),
  KEY `meta_origin_index` (`lang_meta_origin`),
  KEY `meta_reference_type_index` (`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language_meta`
--

LOCK TABLES `language_meta` WRITE;
/*!40000 ALTER TABLE `language_meta` DISABLE KEYS */;
INSERT INTO `language_meta` VALUES (1,1,'en_US','Botble\\Menu\\Models\\MenuLocation','f6b2ba4909689a90da1d27c42cdd9f89'),(2,1,'en_US','Botble\\Menu\\Models\\Menu','6e6831e811d21e44dca90cd1d6c2a695'),(3,2,'en_US','Botble\\Menu\\Models\\Menu','871e1d96aabd0469290eb292661c05e2'),(4,3,'en_US','Botble\\Menu\\Models\\Menu','59afa3297dd81c6bda35272195a71d18'),(5,4,'en_US','Botble\\Menu\\Models\\Menu','8a65d1b4a39921843c38c8a877ee70be');
/*!40000 ALTER TABLE `language_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `languages`
--

DROP TABLE IF EXISTS `languages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `languages` (
  `lang_id` int unsigned NOT NULL AUTO_INCREMENT,
  `lang_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_locale` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_flag` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `lang_is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `lang_order` int NOT NULL DEFAULT '0',
  `lang_is_rtl` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`lang_id`),
  KEY `lang_locale_index` (`lang_locale`),
  KEY `lang_code_index` (`lang_code`),
  KEY `lang_is_default_index` (`lang_is_default`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `languages`
--

LOCK TABLES `languages` WRITE;
/*!40000 ALTER TABLE `languages` DISABLE KEYS */;
INSERT INTO `languages` VALUES (1,'English','en','en_US','us',1,0,0);
/*!40000 ALTER TABLE `languages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_files`
--

DROP TABLE IF EXISTS `media_files`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_files` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `alt` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` int unsigned NOT NULL DEFAULT '0',
  `mime_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `size` int NOT NULL,
  `url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `visibility` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'public',
  PRIMARY KEY (`id`),
  KEY `media_files_user_id_index` (`user_id`),
  KEY `media_files_folder_id_user_id_created_at_index` (`folder_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=56039 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_files`
--

LOCK TABLES `media_files` WRITE;
/*!40000 ALTER TABLE `media_files` DISABLE KEYS */;
INSERT INTO `media_files` VALUES (22702,0,'avatar','avatar',1129,'image/jpeg',151486,'users/avatar.jpg','[]','2023-10-25 00:12:49','2023-10-25 00:12:49',NULL,'public'),(55847,0,'banner','banner',1,'image/jpeg',17700,'banner/banner.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55848,0,'location-1','location-1',2495,'image/jpeg',9803,'cities/location-1.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55849,0,'location-2','location-2',2495,'image/jpeg',9803,'cities/location-2.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55850,0,'location-3','location-3',2495,'image/jpeg',9803,'cities/location-3.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55851,0,'location-4','location-4',2495,'image/jpeg',9803,'cities/location-4.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55852,0,'location-5','location-5',2495,'image/jpeg',9803,'cities/location-5.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55853,0,'1','1',2496,'image/jpeg',9803,'locations/1.jpg','[]','2025-01-17 18:00:46','2025-01-17 18:00:46',NULL,'public'),(55854,0,'2','2',2496,'image/jpeg',9803,'locations/2.jpg','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55855,0,'3','3',2496,'image/jpeg',9803,'locations/3.jpg','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55856,0,'4','4',2496,'image/jpeg',9803,'locations/4.jpg','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55857,0,'5','5',2496,'image/jpeg',9803,'locations/5.jpg','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55858,0,'favicon','favicon',2497,'image/png',2392,'logo/favicon.png','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55859,0,'logo-white','logo-white',2497,'image/png',20236,'logo/logo-white.png','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55860,0,'logo','logo',2497,'image/png',25650,'logo/logo.png','[]','2025-01-17 18:00:47','2025-01-17 18:00:47',NULL,'public'),(55861,0,'1','1',2498,'image/jpeg',9803,'accounts/1.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55862,0,'10','10',2498,'image/jpeg',9803,'accounts/10.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55863,0,'2','2',2498,'image/jpeg',9803,'accounts/2.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55864,0,'3','3',2498,'image/jpeg',9803,'accounts/3.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55865,0,'4','4',2498,'image/jpeg',9803,'accounts/4.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55866,0,'5','5',2498,'image/jpeg',9803,'accounts/5.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55867,0,'6','6',2498,'image/jpeg',9803,'accounts/6.jpg','[]','2025-01-17 18:00:48','2025-01-17 18:00:48',NULL,'public'),(55868,0,'7','7',2498,'image/jpeg',9803,'accounts/7.jpg','[]','2025-01-17 18:00:49','2025-01-17 18:00:49',NULL,'public'),(55869,0,'8','8',2498,'image/jpeg',9803,'accounts/8.jpg','[]','2025-01-17 18:00:49','2025-01-17 18:00:49',NULL,'public'),(55870,0,'9','9',2498,'image/jpeg',9803,'accounts/9.jpg','[]','2025-01-17 18:00:49','2025-01-17 18:00:49',NULL,'public'),(55871,0,'asset-3-at-3x','asset-3-at-3x',2499,'image/png',76803,'general/asset-3-at-3x.png','[]','2025-01-17 18:00:54','2025-01-17 18:00:54',NULL,'public'),(55872,0,'asset-4-at-3x','asset-4-at-3x',2499,'image/png',85535,'general/asset-4-at-3x.png','[]','2025-01-17 18:00:54','2025-01-17 18:00:54',NULL,'public'),(55873,0,'breadcrumb-background','breadcrumb-background',2499,'image/jpeg',505901,'general/breadcrumb-background.jpg','[]','2025-01-17 18:00:54','2025-01-17 18:00:54',NULL,'public'),(55874,0,'copyright','copyright',2499,'image/jpeg',48845,'general/copyright.jpg','[]','2025-01-17 18:00:54','2025-01-17 18:00:54',NULL,'public'),(55875,0,'home-banner','home-banner',2499,'image/jpeg',631290,'general/home-banner.jpg','[]','2025-01-17 18:00:54','2025-01-17 18:00:54',NULL,'public'),(55876,0,'newsletter-image','newsletter-image',2499,'image/jpeg',101293,'general/newsletter-image.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55877,0,'termsconditions-pagedesktop','termsconditions-pagedesktop',2499,'image/jpeg',78173,'general/termsconditions-pagedesktop.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55878,0,'video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri','video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri',2499,'image/jpeg',18757,'general/video-vi-pham-ban-quyen-bi-youtube-thang-tay-trung-tri.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55879,0,'vietnam-office-4','vietnam-office-4',2499,'image/jpeg',79608,'general/vietnam-office-4.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55880,0,'1','1',2500,'image/jpeg',66981,'news/1.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55881,0,'10','10',2500,'image/jpeg',38901,'news/10.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55882,0,'11','11',2500,'image/jpeg',51899,'news/11.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55883,0,'12','12',2500,'image/jpeg',55570,'news/12.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55884,0,'13','13',2500,'image/jpeg',82997,'news/13.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55885,0,'14','14',2500,'image/jpeg',66981,'news/14.jpg','[]','2025-01-17 18:00:55','2025-01-17 18:00:55',NULL,'public'),(55886,0,'15','15',2500,'image/jpeg',111464,'news/15.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55887,0,'16','16',2500,'image/jpeg',379750,'news/16.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55888,0,'2','2',2500,'image/jpeg',51879,'news/2.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55889,0,'3','3',2500,'image/jpeg',127122,'news/3.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55890,0,'4','4',2500,'image/jpeg',173868,'news/4.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55891,0,'5','5',2500,'image/jpeg',38901,'news/5.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55892,0,'6','6',2500,'image/jpeg',224569,'news/6.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55893,0,'7','7',2500,'image/jpeg',177684,'news/7.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55894,0,'8','8',2500,'image/jpeg',111710,'news/8.jpg','[]','2025-01-17 18:00:56','2025-01-17 18:00:56',NULL,'public'),(55895,0,'9','9',2500,'image/jpeg',143678,'news/9.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55896,0,'1','1',2501,'image/jpeg',66981,'posts/1.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55897,0,'10','10',2501,'image/jpeg',38901,'posts/10.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55898,0,'11','11',2501,'image/jpeg',51899,'posts/11.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55899,0,'12','12',2501,'image/jpeg',55570,'posts/12.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55900,0,'13','13',2501,'image/jpeg',82997,'posts/13.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55901,0,'14','14',2501,'image/jpeg',66981,'posts/14.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55902,0,'15','15',2501,'image/jpeg',111464,'posts/15.jpg','[]','2025-01-17 18:00:57','2025-01-17 18:00:57',NULL,'public'),(55903,0,'16','16',2501,'image/jpeg',379750,'posts/16.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55904,0,'2','2',2501,'image/jpeg',51879,'posts/2.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55905,0,'3','3',2501,'image/jpeg',127122,'posts/3.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55906,0,'4','4',2501,'image/jpeg',173868,'posts/4.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55907,0,'6','6',2501,'image/jpeg',224569,'posts/6.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55908,0,'7','7',2501,'image/jpeg',177684,'posts/7.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55909,0,'8','8',2501,'image/jpeg',111710,'posts/8.jpg','[]','2025-01-17 18:00:58','2025-01-17 18:00:58',NULL,'public'),(55910,0,'9','9',2501,'image/jpeg',143678,'posts/9.jpg','[]','2025-01-17 18:00:59','2025-01-17 18:00:59',NULL,'public'),(55911,0,'1','1',2502,'image/jpeg',9803,'projects/1.jpg','[]','2025-01-17 18:00:59','2025-01-17 18:00:59',NULL,'public'),(55912,0,'11','11',2502,'image/jpeg',9803,'projects/11.jpg','[]','2025-01-17 18:00:59','2025-01-17 18:00:59',NULL,'public'),(55913,0,'12','12',2502,'image/jpeg',9803,'projects/12.jpg','[]','2025-01-17 18:00:59','2025-01-17 18:00:59',NULL,'public'),(55914,0,'13','13',2502,'image/jpeg',9803,'projects/13.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55915,0,'14','14',2502,'image/jpeg',9803,'projects/14.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55916,0,'2','2',2502,'image/jpeg',9803,'projects/2.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55917,0,'21','21',2502,'image/jpeg',9803,'projects/21.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55918,0,'22','22',2502,'image/jpeg',9803,'projects/22.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55919,0,'23','23',2502,'image/jpeg',9803,'projects/23.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55920,0,'24','24',2502,'image/jpeg',9803,'projects/24.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55921,0,'25','25',2502,'image/jpeg',9803,'projects/25.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55922,0,'26','26',2502,'image/jpeg',9803,'projects/26.jpg','[]','2025-01-17 18:01:00','2025-01-17 18:01:00',NULL,'public'),(55923,0,'3','3',2502,'image/jpeg',9803,'projects/3.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55924,0,'5','5',2502,'image/jpeg',9803,'projects/5.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55925,0,'1-1','1-1',2503,'image/jpeg',9803,'properties/1-1.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55926,0,'1-2','1-2',2503,'image/jpeg',9803,'properties/1-2.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55927,0,'1-3','1-3',2503,'image/jpeg',9803,'properties/1-3.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55928,0,'1','1',2503,'image/jpeg',9803,'properties/1.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55929,0,'10-1','10-1',2503,'image/jpeg',9803,'properties/10-1.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55930,0,'10','10',2503,'image/jpeg',9803,'properties/10.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55931,0,'11-1','11-1',2503,'image/jpeg',9803,'properties/11-1.jpg','[]','2025-01-17 18:01:01','2025-01-17 18:01:01',NULL,'public'),(55932,0,'11','11',2503,'image/jpeg',9803,'properties/11.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55933,0,'12','12',2503,'image/jpeg',9803,'properties/12.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55934,0,'13','13',2503,'image/jpeg',9803,'properties/13.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55935,0,'14','14',2503,'image/jpeg',9803,'properties/14.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55936,0,'15','15',2503,'image/jpeg',9803,'properties/15.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55937,0,'2-1','2-1',2503,'image/jpeg',9803,'properties/2-1.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55938,0,'2-2','2-2',2503,'image/jpeg',9803,'properties/2-2.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55939,0,'2-3','2-3',2503,'image/jpeg',9803,'properties/2-3.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55940,0,'2','2',2503,'image/jpeg',9803,'properties/2.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55941,0,'21','21',2503,'image/jpeg',9803,'properties/21.jpg','[]','2025-01-17 18:01:02','2025-01-17 18:01:02',NULL,'public'),(55942,0,'22-1','22-1',2503,'image/jpeg',9803,'properties/22-1.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55943,0,'22','22',2503,'image/jpeg',9803,'properties/22.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55944,0,'23','23',2503,'image/jpeg',9803,'properties/23.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55945,0,'24-1','24-1',2503,'image/jpeg',9803,'properties/24-1.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55946,0,'24','24',2503,'image/jpeg',9803,'properties/24.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55947,0,'3-1','3-1',2503,'image/jpeg',9803,'properties/3-1.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55948,0,'3-2','3-2',2503,'image/jpeg',9803,'properties/3-2.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55949,0,'3-3','3-3',2503,'image/jpeg',9803,'properties/3-3.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55950,0,'3','3',2503,'image/jpeg',9803,'properties/3.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55951,0,'31','31',2503,'image/jpeg',9803,'properties/31.jpg','[]','2025-01-17 18:01:03','2025-01-17 18:01:03',NULL,'public'),(55952,0,'311','311',2503,'image/jpeg',9803,'properties/311.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55953,0,'32','32',2503,'image/jpeg',9803,'properties/32.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55954,0,'32223-43914-378','32223-43914-378',2503,'image/jpeg',9803,'properties/32223-43914-378.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55955,0,'33','33',2503,'image/jpeg',9803,'properties/33.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55956,0,'34','34',2503,'image/jpeg',9803,'properties/34.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55957,0,'35','35',2503,'image/jpeg',9803,'properties/35.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55958,0,'4-1','4-1',2503,'image/jpeg',9803,'properties/4-1.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55959,0,'4-2','4-2',2503,'image/jpeg',9803,'properties/4-2.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55960,0,'4','4',2503,'image/jpeg',9803,'properties/4.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55961,0,'411','411',2503,'image/jpeg',9803,'properties/411.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55962,0,'42','42',2503,'image/jpeg',9803,'properties/42.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55963,0,'421834935dbc9ef3aaa42','421834935dbc9ef3aaa42',2503,'image/jpeg',9803,'properties/421834935dbc9ef3aaa42.jpg','[]','2025-01-17 18:01:04','2025-01-17 18:01:04',NULL,'public'),(55964,0,'43','43',2503,'image/jpeg',9803,'properties/43.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55965,0,'44','44',2503,'image/jpeg',9803,'properties/44.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55966,0,'5-1','5-1',2503,'image/jpeg',9803,'properties/5-1.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55967,0,'5-2','5-2',2503,'image/jpeg',9803,'properties/5-2.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55968,0,'5','5',2503,'image/jpeg',9803,'properties/5.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55969,0,'6-1','6-1',2503,'image/jpeg',9803,'properties/6-1.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55970,0,'6-2','6-2',2503,'image/jpeg',9803,'properties/6-2.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55971,0,'6','6',2503,'image/jpeg',9803,'properties/6.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55972,0,'7-1','7-1',2503,'image/jpeg',9803,'properties/7-1.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55973,0,'7-2','7-2',2503,'image/jpeg',9803,'properties/7-2.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55974,0,'7','7',2503,'image/jpeg',9803,'properties/7.jpg','[]','2025-01-17 18:01:05','2025-01-17 18:01:05',NULL,'public'),(55975,0,'71','71',2503,'image/jpeg',9803,'properties/71.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55976,0,'72','72',2503,'image/jpeg',9803,'properties/72.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55977,0,'73','73',2503,'image/jpeg',9803,'properties/73.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55978,0,'74','74',2503,'image/jpeg',9803,'properties/74.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55979,0,'75','75',2503,'image/jpeg',9803,'properties/75.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55980,0,'78','78',2503,'image/jpeg',9803,'properties/78.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55981,0,'79','79',2503,'image/jpeg',9803,'properties/79.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55982,0,'8-1','8-1',2503,'image/jpeg',9803,'properties/8-1.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55983,0,'8-2','8-2',2503,'image/jpeg',9803,'properties/8-2.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55984,0,'8','8',2503,'image/jpeg',9803,'properties/8.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55985,0,'9-1','9-1',2503,'image/jpeg',9803,'properties/9-1.jpg','[]','2025-01-17 18:01:06','2025-01-17 18:01:06',NULL,'public'),(55986,0,'9','9',2503,'image/jpeg',9803,'properties/9.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55987,0,'a1-1','a1-1',2503,'image/jpeg',9803,'properties/a1-1.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55988,0,'a1-2','a1-2',2503,'image/jpeg',9803,'properties/a1-2.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55989,0,'a1','a1',2503,'image/jpeg',9803,'properties/a1.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55990,0,'a10','a10',2503,'image/jpeg',9803,'properties/a10.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55991,0,'a2-1','a2-1',2503,'image/jpeg',9803,'properties/a2-1.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55992,0,'a2-2','a2-2',2503,'image/jpeg',9803,'properties/a2-2.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55993,0,'a2','a2',2503,'image/jpeg',9803,'properties/a2.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55994,0,'a3-1','a3-1',2503,'image/jpeg',9803,'properties/a3-1.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55995,0,'a3-2','a3-2',2503,'image/jpeg',9803,'properties/a3-2.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55996,0,'a3','a3',2503,'image/jpeg',9803,'properties/a3.jpg','[]','2025-01-17 18:01:07','2025-01-17 18:01:07',NULL,'public'),(55997,0,'a4-1','a4-1',2503,'image/jpeg',9803,'properties/a4-1.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(55998,0,'a4-2','a4-2',2503,'image/jpeg',9803,'properties/a4-2.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(55999,0,'a4','a4',2503,'image/jpeg',9803,'properties/a4.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56000,0,'a5-1','a5-1',2503,'image/jpeg',9803,'properties/a5-1.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56001,0,'a5','a5',2503,'image/jpeg',9803,'properties/a5.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56002,0,'a6-1','a6-1',2503,'image/jpeg',9803,'properties/a6-1.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56003,0,'a6','a6',2503,'image/jpeg',9803,'properties/a6.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56004,0,'a7','a7',2503,'image/jpeg',9803,'properties/a7.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56005,0,'a8','a8',2503,'image/jpeg',9803,'properties/a8.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56006,0,'a9','a9',2503,'image/jpeg',9803,'properties/a9.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56007,0,'b1','b1',2503,'image/jpeg',9803,'properties/b1.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56008,0,'b2','b2',2503,'image/jpeg',9803,'properties/b2.jpg','[]','2025-01-17 18:01:08','2025-01-17 18:01:08',NULL,'public'),(56009,0,'b3','b3',2503,'image/jpeg',9803,'properties/b3.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56010,0,'b4-1','b4-1',2503,'image/jpeg',9803,'properties/b4-1.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56011,0,'b4','b4',2503,'image/jpeg',9803,'properties/b4.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56012,0,'b5-1','b5-1',2503,'image/jpeg',9803,'properties/b5-1.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56013,0,'b5','b5',2503,'image/jpeg',9803,'properties/b5.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56014,0,'b6','b6',2503,'image/jpeg',9803,'properties/b6.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56015,0,'download','download',2503,'image/jpeg',9803,'properties/download.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56016,0,'e1','e1',2503,'image/jpeg',9803,'properties/e1.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56017,0,'e2','e2',2503,'image/jpeg',9803,'properties/e2.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56018,0,'e3','e3',2503,'image/jpeg',9803,'properties/e3.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56019,0,'e4','e4',2503,'image/jpeg',9803,'properties/e4.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56020,0,'e5','e5',2503,'image/jpeg',9803,'properties/e5.jpg','[]','2025-01-17 18:01:09','2025-01-17 18:01:09',NULL,'public'),(56021,0,'e7','e7',2503,'image/jpeg',9803,'properties/e7.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56022,0,'e8','e8',2503,'image/jpeg',9803,'properties/e8.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56023,0,'floor','floor',2503,'image/png',9803,'properties/floor.png','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56024,0,'p1','p1',2503,'image/jpeg',9803,'properties/p1.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56025,0,'p2','p2',2503,'image/jpeg',9803,'properties/p2.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56026,0,'property-video-thumb','property-video-thumb',2503,'image/jpeg',9803,'properties/property-video-thumb.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56027,0,'q1','q1',2503,'image/jpeg',9803,'properties/q1.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56028,0,'q2','q2',2503,'image/jpeg',9803,'properties/q2.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56029,0,'q3','q3',2503,'image/jpeg',9803,'properties/q3.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56030,0,'q6','q6',2503,'image/jpeg',9803,'properties/q6.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56031,0,'q7','q7',2503,'image/jpeg',9803,'properties/q7.jpg','[]','2025-01-17 18:01:10','2025-01-17 18:01:10',NULL,'public'),(56032,0,'q8','q8',2503,'image/jpeg',9803,'properties/q8.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56033,0,'t1','t1',2503,'image/jpeg',9803,'properties/t1.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56034,0,'t2','t2',2503,'image/jpeg',9803,'properties/t2.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56035,0,'t3','t3',2503,'image/jpeg',9803,'properties/t3.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56036,0,'t4','t4',2503,'image/jpeg',9803,'properties/t4.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56037,0,'t5','t5',2503,'image/jpeg',9803,'properties/t5.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public'),(56038,0,'wp1a','wp1a',2503,'image/jpeg',9803,'properties/wp1a.jpg','[]','2025-01-17 18:01:11','2025-01-17 18:01:11',NULL,'public');
/*!40000 ALTER TABLE `media_files` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_folders`
--

DROP TABLE IF EXISTS `media_folders`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_folders` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `color` varchar(250) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `media_folders_user_id_index` (`user_id`),
  KEY `media_folders_parent_id_user_id_created_at_index` (`parent_id`,`user_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2504 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_folders`
--

LOCK TABLES `media_folders` WRITE;
/*!40000 ALTER TABLE `media_folders` DISABLE KEYS */;
INSERT INTO `media_folders` VALUES (1,1,'Banners',NULL,'banner',0,'2019-11-16 02:00:43','2019-11-16 02:00:50',NULL),(1129,0,'users',NULL,'users',0,'2023-10-25 00:12:49','2023-10-25 00:12:49',NULL),(2495,0,'cities',NULL,'cities',0,'2025-01-17 18:00:46','2025-01-17 18:00:46',NULL),(2496,0,'locations',NULL,'locations',0,'2025-01-17 18:00:46','2025-01-17 18:00:46',NULL),(2497,0,'logo',NULL,'logo',0,'2025-01-17 18:00:47','2025-01-17 18:00:47',NULL),(2498,0,'accounts',NULL,'accounts',0,'2025-01-17 18:00:48','2025-01-17 18:00:48',NULL),(2499,0,'general',NULL,'general',0,'2025-01-17 18:00:53','2025-01-17 18:00:53',NULL),(2500,0,'news',NULL,'news',0,'2025-01-17 18:00:55','2025-01-17 18:00:55',NULL),(2501,0,'posts',NULL,'posts',0,'2025-01-17 18:00:57','2025-01-17 18:00:57',NULL),(2502,0,'projects',NULL,'projects',0,'2025-01-17 18:00:59','2025-01-17 18:00:59',NULL),(2503,0,'properties',NULL,'properties',0,'2025-01-17 18:01:01','2025-01-17 18:01:01',NULL);
/*!40000 ALTER TABLE `media_folders` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `media_settings`
--

DROP TABLE IF EXISTS `media_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `media_settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `media_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `media_settings`
--

LOCK TABLES `media_settings` WRITE;
/*!40000 ALTER TABLE `media_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `media_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_locations`
--

DROP TABLE IF EXISTS `menu_locations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_locations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `location` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_locations_menu_id_created_at_index` (`menu_id`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_locations`
--

LOCK TABLES `menu_locations` WRITE;
/*!40000 ALTER TABLE `menu_locations` DISABLE KEYS */;
INSERT INTO `menu_locations` VALUES (1,1,'main-menu','2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `menu_locations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu_nodes`
--

DROP TABLE IF EXISTS `menu_nodes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menu_nodes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `menu_id` int unsigned NOT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  `reference_id` int unsigned DEFAULT '0',
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `icon_font` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `title` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `css_class` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `target` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '_self',
  `has_child` tinyint unsigned NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `menu_nodes_menu_id_index` (`menu_id`),
  KEY `menu_nodes_parent_id_index` (`parent_id`),
  KEY `menu_nodes_related_id_index` (`reference_id`),
  KEY `menu_nodes_index` (`parent_id`,`reference_id`,`reference_type`,`has_child`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu_nodes`
--

LOCK TABLES `menu_nodes` WRITE;
/*!40000 ALTER TABLE `menu_nodes` DISABLE KEYS */;
INSERT INTO `menu_nodes` VALUES (1,1,0,0,NULL,'/projects',NULL,0,'Projects',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(2,1,0,0,NULL,'/properties',NULL,0,'Properties',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(3,1,0,0,NULL,'/agents',NULL,0,'Agents',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(4,1,0,2,'Botble\\Page\\Models\\Page','/news',NULL,0,'News',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(5,1,0,0,NULL,'/careers',NULL,0,'Careers',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(6,1,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,0,'Contact',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(7,2,0,3,'Botble\\Page\\Models\\Page','/about-us',NULL,1,'About us',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(8,2,0,4,'Botble\\Page\\Models\\Page','/contact',NULL,1,'Contact us',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(9,2,0,0,NULL,'/careers',NULL,1,'Careers',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(10,2,0,5,'Botble\\Page\\Models\\Page','/terms-conditions',NULL,1,'Terms & Conditions',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(11,3,0,0,NULL,'/projects',NULL,2,'All projects',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(12,3,0,0,NULL,'/properties',NULL,2,'All properties',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(13,3,0,0,NULL,'/properties?type=sale',NULL,2,'Houses for sale',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(14,3,0,0,NULL,'/properties?type=rent',NULL,2,'Houses for rent',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(15,4,0,2,'Botble\\Page\\Models\\Page','/news',NULL,3,'Latest news',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(16,4,0,2,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'House architecture',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(17,4,0,4,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'House design',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53'),(18,4,0,6,'Botble\\Blog\\Models\\Category',NULL,NULL,3,'Building materials',NULL,'_self',0,'2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `menu_nodes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menus`
--

DROP TABLE IF EXISTS `menus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menus` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `menus_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menus`
--

LOCK TABLES `menus` WRITE;
/*!40000 ALTER TABLE `menus` DISABLE KEYS */;
INSERT INTO `menus` VALUES (1,'Main menu','main-menu','published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(2,'About','about','published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(3,'More information','more-information','published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(4,'News','news','published','2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `menus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meta_boxes`
--

DROP TABLE IF EXISTS `meta_boxes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meta_boxes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `reference_id` int unsigned NOT NULL,
  `meta_key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `meta_boxes_content_id_index` (`reference_id`)
) ENGINE=InnoDB AUTO_INCREMENT=104 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meta_boxes`
--

LOCK TABLES `meta_boxes` WRITE;
/*!40000 ALTER TABLE `meta_boxes` DISABLE KEYS */;
INSERT INTO `meta_boxes` VALUES (1,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-17 21:18:11','2019-11-17 21:18:11'),(5,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\PropertyFeature','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 00:34:49','2019-11-18 00:34:49'),(8,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:05:58','2019-11-18 01:05:58'),(10,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:16:53','2019-11-18 02:16:53'),(15,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:22:48','2019-11-18 02:22:48'),(16,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-18 02:33:35','2019-11-18 02:33:35'),(17,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:51:35','2019-11-18 02:51:35'),(19,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:55:53','2019-11-18 02:55:53'),(21,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 02:59:01','2019-11-18 02:59:01'),(23,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Post','2019-11-18 03:07:27','2019-11-18 03:07:27'),(24,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:45:06','2019-11-18 03:45:06'),(28,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-18 03:53:20','2019-11-18 03:53:20'),(29,13,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:23:02','2019-11-18 07:23:02'),(30,14,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:36:29','2019-11-18 07:36:29'),(31,15,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:44:44','2019-11-18 07:44:44'),(32,16,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,17,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-18 08:13:07','2019-11-18 08:13:07'),(34,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 01:54:36','2019-11-21 01:54:36'),(35,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:28:09','2019-11-21 02:28:09'),(36,9,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:40:25','2019-11-21 02:40:25'),(37,10,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 02:58:55','2019-11-21 02:58:55'),(38,11,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:16:25','2019-11-21 03:16:25'),(39,12,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Project','2019-11-21 03:25:22','2019-11-21 03:25:22'),(40,18,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 05:51:54','2019-11-21 05:51:54'),(41,19,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:03:11','2019-11-21 06:03:11'),(42,20,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:12:15','2019-11-21 06:12:15'),(43,21,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:26:59','2019-11-21 06:26:59'),(44,22,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 06:56:50','2019-11-21 06:56:50'),(45,23,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:18:36','2019-11-21 07:18:36'),(46,24,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:26:48','2019-11-21 07:26:48'),(47,25,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:34:38','2019-11-21 07:34:38'),(48,26,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:40:46','2019-11-21 07:40:46'),(49,27,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 07:45:34','2019-11-21 07:45:34'),(52,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:25','2019-11-21 07:49:25'),(53,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:49:35','2019-11-21 07:49:35'),(54,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:02','2019-11-21 07:50:02'),(55,5,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:17','2019-11-21 07:50:17'),(56,6,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:36','2019-11-21 07:50:36'),(57,7,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-21 07:50:58','2019-11-21 07:50:58'),(58,28,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:53:17','2019-11-21 19:53:17'),(59,29,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-21 19:59:16','2019-11-21 19:59:16'),(60,30,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:29:01','2019-11-22 00:29:01'),(61,31,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:42:28','2019-11-22 00:42:28'),(62,32,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:47:18','2019-11-22 00:47:18'),(63,33,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 00:57:15','2019-11-22 00:57:15'),(64,34,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\RealEstate\\Models\\Property','2019-11-22 01:06:09','2019-11-22 01:06:09'),(65,8,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Blog\\Models\\Category','2019-11-22 01:26:08','2019-11-22 01:26:08'),(74,1,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:43:10','2019-11-30 19:43:10'),(75,2,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:49:07','2019-11-30 19:49:07'),(76,3,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:52:42','2019-11-30 19:52:42'),(77,4,'seo_meta','[{\"seo_title\":null,\"seo_description\":null}]','Botble\\Career\\Models\\Career','2019-11-30 19:56:50','2019-11-30 19:56:50'),(80,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(81,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(82,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(83,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(84,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(85,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(86,14,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(87,16,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(88,18,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(89,20,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(90,22,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(91,24,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(92,26,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(93,28,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(94,30,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(95,32,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(96,34,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Property','2021-04-29 20:46:36','2021-04-29 20:46:36'),(97,2,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(98,4,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(99,6,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(100,8,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(101,10,'video','[{\"thumbnail\":\"\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(102,12,'video','[{\"thumbnail\":\"properties\\/property-video-thumb.jpg\",\"url\":\"https:\\/\\/www.youtube.com\\/watch?v=UfEiKK-iX70\"}]','Botble\\RealEstate\\Models\\Project','2021-04-29 20:46:36','2021-04-29 20:46:36'),(103,1,'subscribed_packaged_id','[2]','Botble\\Payment\\Models\\Payment','2022-12-27 20:03:55','2022-12-27 20:03:55');
/*!40000 ALTER TABLE `meta_boxes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=231 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2013_04_09_032329_create_base_tables',1),(2,'2013_04_09_062329_create_revisions_table',1),(3,'2014_10_12_000000_create_users_table',1),(4,'2014_10_12_100000_create_password_resets_table',1),(5,'2016_06_01_000001_create_oauth_auth_codes_table',1),(6,'2016_06_01_000002_create_oauth_access_tokens_table',1),(7,'2016_06_01_000003_create_oauth_refresh_tokens_table',1),(8,'2016_06_01_000004_create_oauth_clients_table',1),(9,'2016_06_01_000005_create_oauth_personal_access_clients_table',1),(10,'2016_06_10_230148_create_acl_tables',1),(11,'2016_06_14_230857_create_menus_table',1),(12,'2016_06_28_221418_create_pages_table',1),(13,'2016_10_05_074239_create_setting_table',1),(14,'2016_11_28_032840_create_dashboard_widget_tables',1),(15,'2016_12_16_084601_create_widgets_table',1),(16,'2017_05_09_070343_create_media_tables',1),(17,'2017_11_03_070450_create_slug_table',1),(18,'2019_07_15_042406_change_site_title_from_settings_to_theme_options',1),(19,'2019_08_13_033145_remove_unused_columns_in_users_table',1),(20,'2019_08_19_000000_create_failed_jobs_table',1),(21,'2019_09_07_030654_update_menu_nodes_table',1),(22,'2019_09_07_045041_update_slugs_table',1),(23,'2019_09_07_050405_update_slug_reference_for_page',1),(24,'2019_09_08_014859_update_meta_boxes_table',1),(25,'2019_09_08_015629_update_meta_box_data_for_page',1),(26,'2019_09_12_073711_update_media_url',1),(27,'2019_09_12_073711_update_media_url_for_current_data',1),(28,'2019_10_20_002256_remove_parent_id_in_pages_table',1),(31,'2018_06_22_032304_create_real_estate_table',2),(32,'2015_06_29_025744_create_audit_history',3),(33,'2015_06_18_033822_create_blog_table',4),(34,'2019_09_07_035526_update_menu_node_reference_type_for_category',4),(35,'2019_09_07_050058_update_slug_reference_for_blog',4),(36,'2019_09_07_155716_update_language_meta_for_blog',4),(37,'2019_09_08_015552_update_meta_box_data_for_blog',4),(38,'2019_10_20_002342_remove_parent_id_in_tags_table',4),(39,'2016_10_03_032336_create_languages_table',5),(40,'2019_09_07_154718_update_lang_meta_table',5),(42,'2016_06_17_091537_create_contacts_table',7),(43,'2015_08_15_122343_create_notes_table',8),(44,'2019_11_18_035125_add_column_type_into_re_properties_table',9),(45,'2019_11_18_035712_create_investor_table',9),(46,'2019_11_18_040153_update_real_estates_table',9),(47,'2019_11_18_041228_drop_table_re_property_categories',10),(48,'2019_11_18_082146_create_currencies_table',11),(49,'2019_11_18_061011_create_country_table',12),(50,'2019_11_18_061730_create_state_table',12),(51,'2019_11_18_062515_create_city_table',12),(52,'2019_11_19_063851_create_project_features_table',13),(53,'2019_11_21_090830_update_project_and_property_table',14),(54,'2019_11_21_130139_add_price_to_projects_table',15),(55,'2019_11_14_210650_create_consults_table',16),(56,'2019_11_26_024326_update_property_type',17),(57,'2019_06_24_211801_create_career_table',18),(58,'2019_12_03_123314_add_column_slug_into_cities_table',19),(59,'2019_12_03_124417_add_column_city_id_into_table_properties_and_projects',19),(60,'2017_05_18_080441_create_payment_tables',20),(61,'2019_12_10_140938_create_vendor_table',20),(62,'2019_12_15_025938_update_column_images_in_real_estate_tables',20),(63,'2019_12_17_064316_add_column_period_to_table_re_properties',20),(64,'2019_12_24_033049_add_column_author_into_re_properties_table',20),(65,'2019_12_24_083810_vendor_create_package_table',20),(66,'2019_12_27_004653_update_vendors_table_with_package_data',20),(68,'2020_01_08_002704_real_estate_create_type_table',21),(69,'2020_01_10_133700_change_re_types_to_re_categories',22),(70,'2016_10_07_193005_create_translations_table',23),(71,'2020_01_23_133752_update_account_tables',24),(72,'2020_02_03_144309_update_column_payment_channel',25),(73,'2020_02_06_143217_update_vendor_table',26),(74,'2020_02_11_133026_add_description_to_table_payments',27),(75,'2020_02_11_140823_create_transactions_table',27),(76,'2020_02_23_111922_fix_column_number_block_in_re_properties_table',27),(77,'2020_03_24_151004_add_moderation_status_into_properties_table',28),(78,'2020_03_25_030953_create_table_vendor_packages',29),(79,'2020_03_25_083610_add_column_expire_date_into_re_properties_table',30),(80,'2020_03_26_081108_add_column_auto_renew_to_re_properties_table',31),(81,'2020_03_16_072752_add_column_abbreviation_to_states_table',32),(82,'2020_03_28_020724_make_column_user_id_nullable_table_revisions',33),(83,'2020_03_23_093053_update_payments_table',34),(84,'2020_04_22_074304_add_column_never_expired_to_re_properties_table',35),(85,'2020_05_26_014304_add_column_provider_to_oauth_clients_table',36),(86,'2020_07_27_085437_add_icon_to_re_features',37),(90,'2020_08_21_102728_real_estate_create_facility_table',38),(91,'2020_08_22_024455_rename_table_for_accounts',39),(92,'2020_08_26_130439_add_column_username_into_table_re_accounts',40),(93,'2020_09_09_110653_update_table_careers',41),(94,'2020_09_15_111419_fix_old_data_for_re_properties',42),(95,'2020_10_05_030817_make_column_charge_id_nullable',43),(96,'2020_10_18_134416_fix_audit_logs_table',44),(97,'2020_10_24_133432_change_column_distance_to_string',45),(99,'2020_10_31_053746_add_column_description_into_re_categories_table',46),(100,'2019_01_05_053554_create_jobs_table',47),(101,'2020_12_05_112556_change_contact_page_to_a_page',48),(102,'2021_02_11_031126_update_price_column_in_projects_and_properties',49),(103,'2021_02_16_092633_remove_default_value_for_author_type',50),(104,'2021_03_08_024049_add_lat_long_into_real_estate_tables',51),(105,'2021_03_27_144913_add_customer_type_into_table_payments',52),(106,'2021_05_24_034720_make_column_currency_nullable',53),(107,'2021_06_10_091950_add_column_is_featured_to_table_re_accounts',54),(108,'2021_07_07_021757_update_table_account_activity_logs',55),(109,'2021_07_18_101839_fix_old_theme_options',56),(110,'2021_08_05_134214_fix_social_link_theme_options',57),(111,'2021_08_09_161302_add_metadata_column_to_payments_table',58),(112,'2021_09_29_042758_create_re_categories_multilevel_table',59),(113,'2021_10_19_020859_update_metadata_field',60),(114,'2021_10_31_031254_add_company_to_accounts_table',61),(115,'2021_10_25_021023_fix-priority-load-for-language-advanced',62),(116,'2021_12_03_030600_create_blog_translations',62),(117,'2021_12_03_075608_create_page_translations',62),(118,'2021_12_03_084118_create_location_translations',62),(119,'2021_12_03_094518_migrate_old_location_data',62),(120,'2021_12_04_095357_create_careers_translations_table',62),(121,'2021_12_10_034440_switch_plugin_location_to_use_language_advanced',63),(122,'2021_12_10_034807_create_real_estate_translation_tables',64),(123,'2021_12_18_081636_add_property_project_views_count',65),(124,'2022_01_16_085908_improve_plugin_location',66),(125,'2022_04_19_113923_add_index_to_table_posts',67),(126,'2022_04_20_100851_add_index_to_media_table',67),(127,'2022_04_20_101046_add_index_to_menu_table',67),(128,'2022_05_03_033044_update_column_images_in_real_estate_tables',68),(129,'2022_05_04_033044_update_column_images_in_real_estate_tables',69),(130,'2022_06_04_033634_improve_homepage_content',70),(131,'2022_06_28_151901_activate_paypal_stripe_plugin',71),(132,'2022_07_02_081723_fix_expired_date_column',71),(133,'2019_12_14_000001_create_personal_access_tokens_table',72),(134,'2022_07_07_153354_update_charge_id_in_table_payments',72),(135,'2022_07_10_034813_move_lang_folder_to_root',72),(136,'2022_08_01_090213_update_table_properties_and_projects',72),(137,'2022_08_04_051940_add_missing_column_expires_at',72),(138,'2022_08_04_052122_delete_location_backup_tables',72),(139,'2022_10_14_024629_drop_column_is_featured',73),(140,'2022_10_29_065232_increase_states_abbreviation_column',74),(141,'2022_11_06_061847_increase_state_translations_abbreviation_column',75),(142,'2022_11_06_070405_improve_homepage_search_box',75),(143,'2022_11_18_063357_add_missing_timestamp_in_table_settings',76),(144,'2022_12_02_093615_update_slug_index_columns',76),(145,'2022_09_01_000001_create_admin_notifications_tables',77),(146,'2023_01_30_024431_add_alt_to_media_table',78),(147,'2023_01_31_023233_create_re_custom_fields_table',79),(148,'2023_02_06_000000_add_location_to_re_accounts_table',79),(149,'2023_02_06_024257_add_package_translations',79),(150,'2023_02_08_062457_add_custom_fields_translation_table',80),(151,'2014_10_12_100000_create_password_reset_tokens_table',81),(152,'2023_02_15_024644_create_re_reviews_table',81),(153,'2023_02_16_042611_drop_table_password_resets',81),(154,'2023_02_20_072604_create_re_invoices_table',82),(155,'2023_02_20_081251_create_re_account_packages_table',82),(156,'2023_04_04_030709_add_unique_id_to_properties_and_projects_table',83),(157,'2023_04_14_164811_make_phone_and_email_in_table_re_consults_nullable',84),(158,'2023_04_23_005903_add_column_permissions_to_admin_notifications',84),(159,'2023_04_23_061847_increase_state_translations_abbreviation_column',84),(160,'2023_05_08_114004_improve_properties_and_projects_page',85),(161,'2023_05_09_062031_unique_reviews_table',85),(162,'2023_05_10_075124_drop_column_id_in_role_users_table',85),(163,'2023_05_26_034353_fix_properties_projects_image',86),(164,'2023_05_27_004215_add_column_ip_into_table_re_consults',86),(165,'2023_07_06_011444_create_slug_translations_table',87),(166,'2023_07_18_040500_convert_cities_is_featured_to_selecting_locations_from_shortcode',87),(167,'2023_07_25_034513_create_re_coupons_table',87),(168,'2023_07_25_034672_add_coupon_code_column_to_jb_invoices_table',87),(169,'2023_07_26_041451_add_more_columns_to_location_table',87),(170,'2023_07_27_041451_add_more_columns_to_location_translation_table',87),(171,'2023_07_28_073307_drop_unique_in_states_cities_translations',87),(172,'2023_08_02_074208_change_square_column_to_float',87),(173,'2023_08_07_000001_add_is_public_profile_column_to_re_accounts_table',87),(174,'2023_08_09_004607_make_column_project_id_nullable',87),(175,'2023_08_15_073307_drop_unique_in_states_cities_translations',88),(176,'2023_08_21_090810_make_page_content_nullable',89),(177,'2023_08_29_074620_make_column_author_id_nullable',90),(178,'2023_09_11_084630_update_mandatory_fields_in_consult_form_table',91),(179,'2023_09_14_021936_update_index_for_slugs_table',92),(180,'2023_09_14_022423_add_index_for_language_table',92),(181,'2023_09_20_050420_add_missing_translation_column',93),(182,'2023_10_21_065016_make_state_id_in_table_cities_nullable',94),(183,'2023_11_10_080225_migrate_contact_blacklist_email_domains_to_core',95),(184,'2023_11_14_033417_change_request_column_in_table_audit_histories',95),(185,'2023_11_21_071820_add_missing_slug_for_agents',95),(186,'2023_12_06_100448_change_random_hash_for_media',95),(187,'2023_12_07_095130_add_color_column_to_media_folders_table',95),(188,'2023_12_12_105220_drop_translations_table',95),(189,'2023_12_17_162208_make_sure_column_color_in_media_folders_nullable',95),(190,'2024_01_11_084816_add_investor_translations_table',95),(191,'2024_01_31_022842_add_description_to_re_packages_table',96),(192,'2024_03_13_000001_drop_type_column_from_custom_field_translations_table',96),(193,'2024_03_20_080001_migrate_change_attribute_email_to_nullable_form_contacts_table',96),(194,'2024_03_25_000001_update_captcha_settings_for_contact',96),(195,'2024_04_04_110758_update_value_column_in_user_meta_table',96),(196,'2024_04_19_063914_create_custom_fields_table',96),(197,'2024_04_23_124505_add_features_column_to_re_packages',96),(198,'2024_04_23_135106_add_columns_to_re_investors',96),(199,'2024_04_27_100730_improve_analytics_setting',96),(200,'2024_05_12_091229_add_column_visibility_to_table_media_files',96),(201,'2024_05_16_100000_change_random_hash_for_media',97),(202,'2024_05_25_000001_update_captcha_settings_for_real_estate',98),(203,'2024_06_16_163428_make_investor_id_nullable',99),(204,'2017_10_24_154832_create_newsletter_table',100),(205,'2020_11_18_150916_ads_create_ads_table',100),(206,'2021_12_02_035301_add_ads_translations_table',100),(207,'2023_04_17_062645_add_open_in_new_tab',100),(208,'2023_08_11_060908_create_announcements_table',100),(209,'2023_11_07_023805_add_tablet_mobile_image',100),(210,'2024_03_25_000001_update_captcha_settings_for_newsletter',100),(211,'2024_04_01_043317_add_google_adsense_slot_id_to_ads_table',100),(212,'2024_06_20_103539_create_consult_custom_fields_table',100),(213,'2024_07_04_083133_create_payment_logs_table',100),(214,'2024_07_07_091316_fix_column_url_in_menu_nodes_table',100),(215,'2024_07_08_235824_fix_facilities_primary_key',100),(216,'2024_07_12_100000_change_random_hash_for_media',101),(217,'2024_07_26_090340_add_private_notes_column_to_re_properties_projects_table',102),(218,'2024_07_30_091615_fix_order_column_in_categories_table',102),(219,'2024_08_09_075542_add_accounts_translations',103),(220,'2024_08_12_124528_add_approved_at_column_to_re_accounts_table',104),(221,'2024_08_17_094600_add_image_into_countries',105),(222,'0001_01_01_000001_create_cache_table',106),(223,'2024_08_31_074158_add_floor_plans_columns_to_re_properties_table',106),(224,'2024_09_04_130921_add_reject_reason_column_to_re_properties_table',106),(225,'2024_09_19_021436_make_email_in_accounts_table_nullable',106),(226,'2024_09_30_024515_create_sessions_table',106),(227,'2024_11_18_023706_add_floor_plan_to_table_re_properties_translations',106),(228,'2024_12_31_081648_correct_career_slugs',107),(229,'2025_01_06_033807_add_default_value_for_categories_author_type',108),(230,'2025_01_08_093652_add_zip_code_to_cities',108);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `newsletters`
--

DROP TABLE IF EXISTS `newsletters`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `newsletters` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'subscribed',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `newsletters`
--

LOCK TABLES `newsletters` WRITE;
/*!40000 ALTER TABLE `newsletters` DISABLE KEYS */;
/*!40000 ALTER TABLE `newsletters` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notes`
--

DROP TABLE IF EXISTS `notes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `notes` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_by` int unsigned NOT NULL,
  `note` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notes_user_id_index` (`user_id`),
  KEY `notes_reference_id_index` (`reference_id`),
  KEY `notes_created_by_index` (`created_by`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notes`
--

LOCK TABLES `notes` WRITE;
/*!40000 ALTER TABLE `notes` DISABLE KEYS */;
/*!40000 ALTER TABLE `notes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_access_tokens`
--

DROP TABLE IF EXISTS `oauth_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint DEFAULT NULL,
  `client_id` int unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_access_tokens_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_access_tokens`
--

LOCK TABLES `oauth_access_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_auth_codes`
--

DROP TABLE IF EXISTS `oauth_auth_codes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint NOT NULL,
  `client_id` int unsigned NOT NULL,
  `scopes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_auth_codes`
--

LOCK TABLES `oauth_auth_codes` WRITE;
/*!40000 ALTER TABLE `oauth_auth_codes` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_auth_codes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_clients`
--

DROP TABLE IF EXISTS `oauth_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint DEFAULT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `redirect` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `provider` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_clients_user_id_index` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_clients`
--

LOCK TABLES `oauth_clients` WRITE;
/*!40000 ALTER TABLE `oauth_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_personal_access_clients`
--

DROP TABLE IF EXISTS `oauth_personal_access_clients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_personal_access_clients` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `client_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_personal_access_clients_client_id_index` (`client_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_personal_access_clients`
--

LOCK TABLES `oauth_personal_access_clients` WRITE;
/*!40000 ALTER TABLE `oauth_personal_access_clients` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_personal_access_clients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oauth_refresh_tokens`
--

DROP TABLE IF EXISTS `oauth_refresh_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oauth_refresh_tokens`
--

LOCK TABLES `oauth_refresh_tokens` WRITE;
/*!40000 ALTER TABLE `oauth_refresh_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `oauth_refresh_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages`
--

DROP TABLE IF EXISTS `pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `template` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages`
--

LOCK TABLES `pages` WRITE;
/*!40000 ALTER TABLE `pages` DISABLE KEYS */;
INSERT INTO `pages` VALUES (1,'Home','<div>[search-box title=\"Find your favorite homes at Flex Home\" background_image=\"general/home-banner.jpg\" enable_search_projects_on_homepage_search=\"yes\" default_home_search_type=\"project\"][/search-box]</div><div>[featured-projects title=\"Featured projects\" subtitle=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more.\" limit=\"4\"][/featured-projects]</div><div>[properties-by-locations title=\"Properties by locations\" subtitle=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" city=\"1,2,3,4,5\"][/properties-by-locations]</div><div>[properties-for-sale title=\"Properties For Sale\" subtitle=\"Below is a list of properties that are currently up for sale\" limit=\"8\"][/properties-for-sale]</div><div>[properties-for-rent title=\"Properties For Rent\" subtitle=\"Below is a detailed price list of each property for rent\" limit=\"8\"][/properties-for-rent]</div><div>[featured-agents title=\"Featured Agents\"][/featured-agents]</div><div>[recently-viewed-properties title=\"Recently Viewed Properties\" subtitle=\"Your currently viewed properties.\" limit=\"8\"][/recently-viewed-properties]</div><div>[latest-news title=\"News\" subtitle=\"Below is the latest real estate news we get regularly updated from reliable sources.\" limit=\"4\"][/latest-news]</div>',1,NULL,'homepage',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(2,'News','---',1,NULL,'default',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(3,'About us','<h4><span style=\"font-size:18px;\"><b>1. COMPANY</b><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong> PROFILE</strong></span></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.<br />\nWith the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field. Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</span></span></p>\n\n<blockquote>\n<h2 style=\"font-style: italic; text-align: center;\"><span style=\"font-size:24px;\"><strong><span style=\"font-family:Arial,Helvetica,sans-serif;\"><span style=\"color:#16a085;\">&quot;Breaking time, through space&quot;</span></span></strong></span></h2>\n</blockquote>\n\n<h4 style=\"text-align: center;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/asset-3-at-3x.png\" style=\"width: 90%;\" /></h4>\n\n<h4><span style=\"font-size:18px;\"><b><font face=\"Arial, Helvetica, sans-serif\">2. VISION&nbsp;</font></b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Acquiring domestic areas.<br />\n- Reaching far across continents.</span></span></p>\n\n<h4><span style=\"font-size:18px;\"><b>3. MISSION</b></span></h4>\n\n<p><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">- Creating the community<br />\n- Building destinations<br />\n- Nurture happiness</span></span></p>\n\n<p><img alt=\"\" src=\"https://flex-home.test/storage/general/vietnam-office-4.jpg\" /></p>\n',1,NULL,'default','Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.\nWith the slogan \"Breaking time, through space\" with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.','published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(4,'Contact','<p>[contact-form][/contact-form]<br />\n&nbsp;</p>\n\n<h3>Directions</h3>\n\n<p>[google-map]North Link Building, 10 Admiralty Street, 757695 Singapore[/google-map]</p>\n\n<p>&nbsp;</p>',1,NULL,'default',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(5,'Terms &amp; Conditions','<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Access to and use of the Flex Home website is subject to the following terms, conditions, and relevant laws of Vietnam.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>1. Copyright</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Any content from this site may not be used for sale or distribution for profit, nor may it be edited or included in any other publication or website.</span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>2. Content</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The information on this website is compiled with great confidence but for general information research purposes only. While we endeavor to maintain updated and accurate information, we make no representations or warranties in any manner regarding completeness, accuracy, reliability, appropriateness or availability in relation to web site, or related information, product, service, or image within the website for any purpose. </span></span></p>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">Flex Home and its employees, managers, and agents are not responsible for any loss, damage or expense incurred as a result of accessing and using this website and the sites. </span></span><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">The web is connected to it, including but not limited to, loss of profits, direct or indirect losses. We are also not responsible, or jointly responsible, if the site is temporarily inaccessible due to technical issues beyond our control. Any comments, suggestions, images, ideas and other information or materials that users submit to us through this site will become our exclusive property, including the right to may arise in the future associated with us.</span></span></p>\n\n<p style=\"text-align: center;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><img alt=\"\" src=\"https://flex-home.test/storage/general/copyright.jpg\" style=\"width: 90%;\" /></span></span></p>\n\n<h4 style=\"text-align: justify;\"><span style=\"font-size:18px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\"><strong>3. Note on&nbsp;connected sites</strong></span></span></h4>\n\n<p style=\"text-align: justify;\"><span style=\"font-size:16px;\"><span style=\"font-family:Arial,Helvetica,sans-serif;\">At many points in the website, users can get links to other websites related to a specific aspect. This does not mean that we are related to the websites or companies that own these websites. Although we intend to connect users to sites of interest, we are not responsible or jointly responsible for our employees, managers, or representatives. with other websites and information contained therein.</span></span></p>\n',1,NULL,'default','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(6,'Cookie Policy','<h3>EU Cookie Consent</h3><p>To use this website we are using Cookies and collecting some Data. To be compliant with the EU GDPR we give you to choose if you allow us to use certain Cookies and to collect some Data.</p><h4>Essential Data</h4><p>The Essential Data is needed to run the Site you are visiting technically. You can not deactivate them.</p><p>- Session Cookie: PHP uses a Cookie to identify user sessions. Without this Cookie the Website is not working.</p><p>- XSRF-Token Cookie: Laravel automatically generates a CSRF \"token\" for each active user session managed by the application. This token is used to verify that the authenticated user is the one actually making the requests to the application.</p>',1,NULL,'default',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(7,'Properties','<div>[properties-list title=\"Discover our properties\" description=\"Discover our properties\" description=\"Each place is a good choice, it will help you make the right decision, do not miss the opportunity to discover our wonderful properties.\" number_of_properties_per_page=\"12\"][/properties-list]</div>',1,NULL,'homepage',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53'),(8,'Projects','<div>[projects-list  title=\"Discover our projects\" description=\"We make the best choices with the hottest and most prestigious projects, please visit the details below to find out more\" number_of_projects_per_page=\"12\"][/projects-list]</div>',1,NULL,'homepage',NULL,'published','2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pages_translations`
--

DROP TABLE IF EXISTS `pages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`pages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pages_translations`
--

LOCK TABLES `pages_translations` WRITE;
/*!40000 ALTER TABLE `pages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `pages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_logs`
--

DROP TABLE IF EXISTS `payment_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment_logs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `payment_method` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `request` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `response` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_logs`
--

LOCK TABLES `payment_logs` WRITE;
/*!40000 ALTER TABLE `payment_logs` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payments` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `amount` decimal(15,2) unsigned NOT NULL,
  `currency` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int unsigned NOT NULL DEFAULT '0',
  `charge_id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_channel` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int unsigned DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'pending',
  `payment_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT 'confirm',
  `customer_id` int unsigned DEFAULT NULL,
  `refunded_amount` decimal(15,2) unsigned DEFAULT NULL,
  `refund_note` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `customer_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metadata` mediumtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (1,250.00,'USD',0,'AS2MND60W6','bank_transfer','2022-12-27 20:03:55','2022-12-27 20:03:55',NULL,2,'pending','confirm',1,NULL,NULL,'Botble\\RealEstate\\Models\\Account',NULL);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_categories`
--

DROP TABLE IF EXISTS `post_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `category_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_categories`
--

LOCK TABLES `post_categories` WRITE;
/*!40000 ALTER TABLE `post_categories` DISABLE KEYS */;
INSERT INTO `post_categories` VALUES (1,2,5289),(2,1,5290),(3,1,5291),(4,4,5292),(5,2,5293),(6,6,5294),(7,4,5295),(8,4,5296),(9,6,5297),(10,6,5298),(11,1,5299),(12,2,5300),(13,2,5301),(14,1,5302),(15,2,5303),(16,4,5304);
/*!40000 ALTER TABLE `post_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `post_tags`
--

DROP TABLE IF EXISTS `post_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `post_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `tag_id` int unsigned NOT NULL,
  `post_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=49 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `post_tags`
--

LOCK TABLES `post_tags` WRITE;
/*!40000 ALTER TABLE `post_tags` DISABLE KEYS */;
INSERT INTO `post_tags` VALUES (1,1,5289),(2,2,5289),(3,3,5289),(4,1,5290),(5,2,5290),(6,3,5290),(7,1,5291),(8,2,5291),(9,3,5291),(10,1,5292),(11,2,5292),(12,3,5292),(13,1,5293),(14,2,5293),(15,3,5293),(16,1,5294),(17,2,5294),(18,3,5294),(19,1,5295),(20,2,5295),(21,3,5295),(22,1,5296),(23,2,5296),(24,3,5296),(25,1,5297),(26,2,5297),(27,3,5297),(28,1,5298),(29,2,5298),(30,3,5298),(31,1,5299),(32,2,5299),(33,3,5299),(34,1,5300),(35,2,5300),(36,3,5300),(37,1,5301),(38,2,5301),(39,3,5301),(40,1,5302),(41,2,5302),(42,3,5302),(43,1,5303),(44,2,5303),(45,3,5303),(46,1,5304),(47,2,5304),(48,3,5304);
/*!40000 ALTER TABLE `post_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `is_featured` tinyint unsigned NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `format_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `posts_status_author_id_author_type_created_at_index` (`status`,`author_id`,`author_type`,`created_at`)
) ENGINE=InnoDB AUTO_INCREMENT=5305 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'BCG sets great store by real estate negotiations','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','<h2 style=\"font-style:italic;\">The profit of Bamboo Capital Group (BCG) is expected to grow tremendously during 2019-2023 thanks to a series of real estate as well as renewable energy projects, especially Radisson Blu Hoi An and King Crown Village Thao Dien.</h2>\r\n\r\n<p>BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.</p>\r\n\r\n<p>BCG expects to reach the after-tax profit of VND312 billion ($13.56 million) this year, VND681.5 ($29.6 million) in 2020, and VND826.5 billion ($35.93 million) in 2023. In real estate, BCG has implemented the Radisson Blu Hoi An project with the scale of 734 apartments and coastal villas, King Crown Village Thao Dien in District 2, Ho Chi Minh City with 17 villas in the first phase and serviced apartments and a hotel, as well as offices for lease in the second phase.</p>\r\n\r\n<p>BCG leaders shared that in 2019-2020, Radisson Blu Hoi An and King Crown Village Thao Dien will bring VND900 billion ($39.13 million) in profit to BCG, and the group is negotiating to transfer part of the group&rsquo;s capital in the two projects. BCG owns a hundred per cent in Radisson Blu Hoi An, and 48.5 per cent in King Crown Village Thao Dien.</p>\r\n\r\n<p>&quot;If we close the deals with our partners soon, BCG will fulfil the profit plan for 2019. Currently, the deal is still in progress, but we are confident in implementing our 2019 profit plan. If the deal is delayed for any reason, the profit will be transferred by the beginning of 2020,&quot; Pham Minh Tuan, deputy CEO of BCG, shared.</p>\r\n\r\n<p>The upcoming real estate projects of BCG include Condotel Pegas Nha Trang (2.74 hectares, implemented in 2020-2021), Bao Loc urban area (​​17ha, in 2019-2023), Loc Phat residential area (Bao Loc, Lam Dong &ndash; 46.9ha, implemented from 2019 to 2022), Hoa Ninh residential area (Di Linh, Lam Dong &ndash;49.3ha, implemented in 2020-2023), Hiep Binh Chanh urban area (​​6.3ha, implemented in 2020-2022).</p>\r\n\r\n<p>Regarding the capital to meet BCG&#39;s investment needs, according to Nguyen Ho Nam, chairman of BCG, most of BCG&#39;s projects are co-operating with international corporations on issues like technical and technological issues, branding, or capital co-operation.</p>\r\n\r\n<p>BCG has signed a contract with KPMG Singapore to become the exclusive consultant for BCG to seek international funding and domestic banks to increase credit room for BCG to implement a new project. Along with that, BCG received capital contributions from South Korean investors including Hanwha Energy involved in solar power plant projects and real estate firm Woomi.</p>\r\n\r\n<p>BCG is also working with a strategic partner from Europe. In the field of renewable energy, BCG finished two solar energy projects in Long An with the total capacity of over 140MW. Of these, the BCG-CME Long An 1 solar power plant, which in BCG holds 37.5 per cent, has the capacity of 40.5MW and is expected to bring revenue of VND140-150 billion ($6.1-6.5 million) per year from 2020.</p>\r\n\r\n<p>BCG-CME Long An 2 (GAIA) has the capacity of 100.5MW and is expected to launch operations in this November, bringing revenue of about VND320 billion per year from 2020. BCG has a 32.5 per cent stake in GAIA.</p>\r\n\r\n<p>BCG-CME Long An 1 solar power plant sells electricity to Electricity of Vietnam at the price of 9.35 US cent per kW for 20 years, while GAIA hopes to sell electricity at 8.72 US cent per kW. In addition to the two projects above, BCG is trying to complete procedures for other solar power plants in Long An (100MW), Dak Lak (50MW), Gia Lai (300MW), Tay Ninh (165MW), a surface solar power plant in Quang Nam (200MW), a wind power plant in Soc Trang (50MW).</p>\r\n\r\n<p>At the two solar power plants in Long An, BCG worked with Vietnam-Oman Investment (VOI) and took up VND2 trillion in loans from local banks ($86.96 million &ndash; 65 per cent of the total investment capital of the two projects).</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/1-2.jpg',742,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(2,'Private Home Sales Drop 27% In October','New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the Urban Redevelopment Authority (URA).\r\nAccording to URA data, developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month','<p>New private home sales in Singapore fell 27% in October from September, reported Channel News Asia, based on the data released by the&nbsp;Urban Redevelopment Authority (URA).</p>\r\n\r\n<p><strong>According to URA data,&nbsp;developers only sold 928 units in October (955 units including executive condominiums), compared to 1,270 units from the previous month.</strong></p>\r\n\r\n<p>However, on a year-to-year comparison, the figures show an 84.9% increase.</p>\r\n\r\n<p>The new homes sold in October in the Core Central Region (CCR) tripled to 182 units from September, the biggest recorded since March 2016, with Singaporeans buying 133 of those units.</p>\r\n\r\n<p>Analysts said the good performance was mainly due to new project launches in the area, including&nbsp;<strong>Midtown<a href=\"https://www.propertyguru.com.sg/property-for-sale/at-midtown-bay-23760\"> </a>Bay Residences</strong>,&nbsp;<strong>Neu at Novena</strong>&nbsp;and&nbsp;<strong>Royalgreen</strong>. The other new launch this month was Midwood, within the Outside of Central Region (OCR)</p>\r\n\r\n<p>The deficiency in major launches in the city fringe and mass-market segments like the OCR could have been a factor in the sales drop, said OrangeTee and Tie head of research and consultancy Christine Sun.</p>\r\n\r\n<p>&ldquo;Sales volumes tend to be lower when more luxury projects are being launched in a particular month, owing to the higher price tags and lower affordability,&rdquo; she said.</p>\r\n\r\n<p>URA Realis data show that this year saw 104 non-landed new homes sales reach S$5 million and above, which is the highest mark since 155 were purchased from January to October 2011, added Sun.</p>\r\n\r\n<p>High-profile transactions, such as James Dyson&rsquo;s purchase of Singapore&rsquo;s most expensive apartment, contributed to &ldquo;significant positive sentiments for developer sales,&rdquo; said property analyst Ong Kah Seng.</p>\r\n\r\n<p>&ldquo;Despite the global trade and geopolitical uncertainties, we believe demand for Singapore private homes is still relatively stable given the tight labour market, favourable interest rate environment, and relatively healthy household balance sheet,&rdquo; said Tricia Song, Colliers International head of research for Singapore.</p>\r\n\r\n<p>Ong believes the country&rsquo;s properties will become more attractive for foreign buyers wanting stable investments.</p>\r\n\r\n<p>&ldquo;There&rsquo;s increasing international attractiveness of Singapore residential properties as offering longer term stability to all profiles of buyers, including from foreigners who are eschewing investments in Hong Kong due to that city&rsquo;s heightening social turbulence,&rdquo; he noted.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/2-2.jpg',1503,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(3,'Singapore Overtakes Hong Kong In Terms Of Property Investment Prospects','Singapore now claims the top spot for real estate investment prospects in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.','<p>The fortunes of Singapore and Hong Kong &ndash; two of Asia&rsquo;s hottest property markets &ndash; are going in different directions, reported Bloomberg citing a Urban Land Institute and PricewaterhouseCoopers LLP report.</p>\r\n\r\n<p><strong>Singapore now claims the top spot for real estate investment prospects&nbsp;in terms of price increases in 2020. Hong Kong, rocked by months of violent political protests, has fallen from 14th place to the bottom of the pile in 2019.</strong></p>\r\n\r\n<p>Hong Kong&rsquo;s drop to the least-favoured destination for real estate investment next year is due to its retail and tourism sectors taking a beating, affecting economic growth.</p>\r\n\r\n<p>The city-state has benefited from a surge in interest among investors who are steering clear of Hong Kong and China, which are viewed as &ldquo;geopolitical flashpoints&rdquo;.</p>\r\n\r\n<p>For the past few quarters, apartment prices in Singapore have rebounded, showing resilience in the residential market, with the office sector mostly absorbing the oversupply.</p>\r\n\r\n<p>Hong Kong&rsquo;s problems bode well for Singapore, at least for a little while, according to Urban Land Institute CEO Ed Walter.</p>\r\n\r\n<p>&ldquo;A lot of theory in investing is less about what was, versus what is or what is going to be,&rdquo; he added.</p>\r\n\r\n<p><strong>Singapore also saw a rise in property transactions in the first half, with majority of the activities driven by cross-border capital. Deals amounted to $4.9 billion (S$6.6 billion) in the period, a 73% year-on-year growth.</strong></p>\r\n\r\n<p>Walter described Hong Kong as having a &ldquo;very resilient market&rdquo;, backed by its high property prices. He believes that after the protests, sectors such as retail can recover quickly.</p>\r\n\r\n<p>&ldquo;The bigger issue is what happens from a political perspective and what does that signal about Hong Kong&rsquo;s place as a financial centre,&rdquo; he said.</p>\r\n\r\n<p><strong>Singapore placed second-to-last among 22 centres as recently as 2017, overtaken by cities such as Sydney, Tokyo and Bangalore as vacancies rose and rents dropped. In 2017, Hong Kong placed 18th.</strong></p>\r\n\r\n<p><img alt=\"\" src=\"https://flex-home.botble.com/storage/properties/3-2.jpg\" style=\"width: 820px; height: 410px;\" /></p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/6-1.jpg',783,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(4,'S. Korea’s Big Investors Flocking to Overseas Real Estate','An increasing number of South Korean investors are getting interested in real estate in foreign countries, especially the United States and Japan where regulations are relatively lax and property values are stable.','<h2>KEB Hana Bank held a seminar on the global real estate investment strategy at its head office in Seoul on May 23 and nearly 100 customers attended it.</h2>\r\n\r\n<p>Hana Bank&rsquo;s private banker (PB) business division held the seminar for affluent customers to explain the procedure for taking out loans and remitting money to make an investment in real estate in major cities around the world, including New York, Los Angeles in the United States and Tokyo in Japan.</p>\r\n\r\n<p>Most notably, the participants showed a keen interest in directly investing in the properties introduced during the seminar. Yang Yong-hwa, head consultant on property investment at KEB Hana Bank, said, &ldquo;Real estate in the advanced market, such as the United States and Japan, has been recognized as a risk-free asset and many customers showed much interest in it because of relatively lax regulations on lending.&rdquo;</p>\r\n\r\n<h3 style=\"text-align: center;\"><img alt=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" longdesc=\"S. Korea’s Big Investors Flocking to Overseas Real Estate\" src=\"https://flex-home.botble.com/storage/properties/32223-43914-378.jpg\" style=\"width: 573px; height: 533px;\" /></h3>\r\n\r\n<p style=\"text-align: center;\"><em>S. Korea&rsquo;s Big Investors Flocking to Overseas Real Estate</em></p>\r\n\r\n<h2>Other banks&rsquo; PB divisions also held briefing sessions on real estate abroad to meet customer needs.</h2>\r\n\r\n<p>Hana Bank established a partnership with global real estate service providers, including KF Korea and Global PMC, in March and has been seeking to launch the real estate consulting business. KB Kookmin Bank also introduced the global KB real estate consulting service in 2014, while Woori Bank is holding consultation sessions on investment in foreign properties by making use of its global network which is the largest among domestic banks. Shinhan Bank established a partnership with global real estate service firm, KF Korea, in April and will hold the first seminar on overseas real estate on May 27.</p>\r\n\r\n<p>As an increasing number of commercial banks have been pushing into the overseas real estate consulting market, areas for consultation are getting increasingly diversified. Tokyo has the highest demand as it is relatively easy to access and the price of real estate there is on the rise before the 2020 Summer Olympics. However, emerging countries that have a high growth potential, such as Vietnam, recently see more investment coming in.</p>','published',1,'Botble\\ACL\\Models\\User',1,'properties/download.jpg',1630,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5289,'The Top 2020 Handbag Trends to Know','Esse excepturi cumque quos at magnam. Sit sed occaecati est voluptas quis. Numquam qui ut quia ea ullam autem. Doloribus mollitia dolorem accusantium reiciendis.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Alice, \'it would be of any use, now,\' thought poor Alice, that she could not make out who I WAS when I was going to begin again, it was just going to begin with; and being ordered about in the distance, screaming with passion. She had already heard her sentence three of the cupboards as she could not stand, and she jumped up and beg for its dinner, and all her riper years, the simple rules their friends had taught them: such as, that a moment\'s delay would cost them their lives. All the time they had settled down again very sadly and quietly, and looked along the passage into the sky. Twinkle, twinkle--\"\' Here the Dormouse denied nothing, being fast asleep. \'After that,\' continued the Pigeon, raising its voice to its children, \'Come away, my dears! It\'s high time to begin with.\' \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations in it, \'and what is the reason they\'re called lessons,\' the Gryphon said, in a confused way, \'Prizes! Prizes!\' Alice had no idea how.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>It was so much into the sky. Alice went on, \'and most of \'em do.\' \'I don\'t think they play at all like the name: however, it only grinned a little of her sharp little chin. \'I\'ve a right to think,\' said Alice in a twinkling! Half-past one, time for dinner!\' (\'I only wish people knew that: then they wouldn\'t be in Bill\'s place for a great deal to come out among the trees behind him. \'--or next day, maybe,\' the Footman continued in the air. This time there could be beheaded, and that makes them.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>So she sat down and looked at the jury-box, and saw that, in her life; it was only too glad to get into her head. \'If I eat one of the bottle was NOT marked \'poison,\' so Alice soon began talking again. \'Dinah\'ll miss me very much what would happen next. The first question of course was, how to begin.\' For, you see, as she did not answer, so Alice soon came to ME, and told me you had been looking over his shoulder with some surprise that the best plan.\' It sounded an excellent opportunity for making her escape; so she began thinking over other children she knew, who might do something better with the lobsters to the garden at once; but, alas for poor Alice! when she turned the corner, but the Hatter were having tea at it: a Dormouse was sitting on the back. At last the Dodo replied very readily: \'but that\'s because it stays the same thing as \"I eat what I used to it as far as they were all ornamented with hearts. Next came an angry voice--the Rabbit\'s--\'Pat! Pat! Where are you?\' said.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>I\'m not used to it in a louder tone. \'ARE you to offer it,\' said Alice to herself, rather sharply; \'I advise you to sit down without being invited,\' said the Eaglet. \'I don\'t believe there\'s an atom of meaning in it.\' The jury all brightened up again.) \'Please your Majesty,\' said the Duchess. An invitation from the sky! Ugh, Serpent!\' \'But I\'m not particular as to go down the little crocodile Improve his shining tail, And pour the waters of the day; and this Alice would not give all else for two reasons. First, because I\'m on the whole party look so grave and anxious.) Alice could think of what work it would not give all else for two Pennyworth only of beautiful Soup? Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Beau--ootiful Soo--oop! Soo--oop of the court. \'What do you know about this business?\' the King in a shrill, loud voice, and see after some executions I have done that?\' she thought. \'But everything\'s curious today. I think you\'d take a fancy to herself \'That\'s quite.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/1.jpg',195,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5290,'Top Search Engine Optimization Strategies!','Et id et et. Commodi ad cum hic non similique. Doloribus eos aut quidem corrupti beatae qui reiciendis. Quibusdam magnam deserunt ratione qui corrupti consectetur.','<p>I to get rather sleepy, and went down to them, they set to work very carefully, remarking, \'I really must be the use of a muchness\"--did you ever eat a little snappishly. \'You\'re enough to try the whole cause, and condemn you to offer it,\' said Alice, \'and those twelve creatures,\' (she was rather glad there WAS no one could possibly hear you.\' And certainly there was no more of it altogether; but after a few minutes, and she very soon finished off the subjects on his spectacles. \'Where shall I begin, please your Majesty,\' said Two, in a hot tureen! Who for such a long argument with the edge of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' it is you hate--C and D,\' she added aloud. \'Do you take me for asking! No, it\'ll never do to ask: perhaps I shall fall right THROUGH the earth! How funny it\'ll seem, sending presents to one\'s own feet! And how odd the directions will look! ALICE\'S RIGHT FOOT, ESQ. HEARTHRUG, NEAR THE FENDER, (WITH ALICE\'S LOVE). Oh dear.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>But the snail replied \"Too far, too far!\" and gave a little anxiously. \'Yes,\' said Alice, \'and those twelve creatures,\' (she was so long that they would die. \'The trial cannot proceed,\' said the March Hare. \'Yes, please do!\' but the Hatter went on growing, and very soon found herself in the air, mixed up with the strange creatures of her sharp little chin. \'I\'ve a right to grow up again! Let me see--how IS it to the end of your nose-- What made you so awfully clever?\' \'I have answered three.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Puss,\' she began, rather timidly, saying to her usual height. It was all finished, the Owl, as a partner!\' cried the Gryphon, the squeaking of the tea--\' \'The twinkling of the moment they saw her, they hurried back to her: its face to see anything; then she remembered how small she was walking by the Queen jumped up in her head, and she tried to fancy to cats if you like!\' the Duchess replied, in a loud, indignant voice, but she was ever to get out at the sides of the Gryphon, with a deep voice, \'What are they made of?\' Alice asked in a moment that it was written to nobody, which isn\'t usual, you know.\' \'And what are YOUR shoes done with?\' said the Mock Turtle in a moment: she looked at Alice. \'I\'M not a VERY unpleasant state of mind, she turned to the jury, of course--\"I GAVE HER ONE, THEY GAVE HIM TWO--\" why, that must be Mabel after all, and I had it written down: but I THINK I can find it.\' And she opened it, and finding it very nice, (it had, in fact, a sort of idea that they.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>NOT, being made entirely of cardboard.) \'All right, so far,\' said the White Rabbit, jumping up and said, without even waiting to put everything upon Bill! I wouldn\'t be in a melancholy tone: \'it doesn\'t seem to come once a week: HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was that?\' inquired Alice. \'Reeling and Writhing, of course, I meant,\' the King had said that day. \'That PROVES his guilt,\' said the Footman, and began to cry again. \'You ought to have finished,\' said the Dormouse. \'Fourteenth of March, I think I could, if I was, I shouldn\'t like THAT!\' \'Oh, you can\'t take LESS,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the Dormouse, who was passing at the bottom of a book,\' thought Alice \'without pictures or conversations in it, \'and what is the same year for such a thing as \"I sleep when I sleep\" is the driest thing I ask! It\'s always six o\'clock now.\' A bright idea came into her eyes--and still as.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/2.jpg',2034,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5291,'Which Company Would You Choose?','Atque cumque deleniti quas fugiat laudantium iusto ullam. Ut magni sit veritatis alias minima officiis est. Pariatur possimus dolorum magni delectus mollitia dolor est.','<p>As she said to herself. \'Of the mushroom,\' said the Caterpillar contemptuously. \'Who are YOU?\' said the White Rabbit, who was peeping anxiously into her face. \'Wake up, Dormouse!\' And they pinched it on both sides of it; then Alice dodged behind a great hurry to change them--\' when she had hurt the poor little feet, I wonder what was coming. It was as much right,\' said the King, rubbing his hands; \'so now let the Dormouse began in a very difficult question. However, at last the Mock Turtle went on in a great hurry. An enormous puppy was looking down at once, and ran the faster, while more and more puzzled, but she felt that this could not remember the simple and loving heart of her sister, who was trembling down to them, and considered a little now and then, if I only knew how to get in at all?\' said the King, \'that saves a world of trouble, you know, as we were. My notion was that she looked up, and began bowing to the other end of the what?\' said the Caterpillar; and it set to work.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>Alice crouched down among the bright flower-beds and the words don\'t FIT you,\' said the Dodo. Then they both sat silent and looked at it, and talking over its head. \'Very uncomfortable for the pool a little shaking among the trees, a little timidly, \'why you are painting those roses?\' Five and Seven said nothing, but looked at it again: but he would not stoop? Soup of the gloves, and she tried to open them again, and we won\'t talk about cats or dogs either, if you don\'t explain it is almost.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Alice was only the pepper that had fallen into a tree. By the time she had not long to doubt, for the hedgehogs; and in a natural way. \'I thought you did,\' said the Mouse. \'--I proceed. \"Edwin and Morcar, the earls of Mercia and Northumbria--\"\' \'Ugh!\' said the King. \'When did you begin?\' The Hatter was the first minute or two, which gave the Pigeon went on, taking first one side and up the chimney, and said nothing. \'This here young lady,\' said the Cat in a minute, while Alice thought she might find another key on it, for she thought, \'and hand round the court and got behind Alice as he spoke. \'A cat may look at it!\' This speech caused a remarkable sensation among the people near the house if it makes rather a complaining tone, \'and they all quarrel so dreadfully one can\'t hear oneself speak--and they don\'t give birthday presents like that!\' \'I couldn\'t help it,\' said the Hatter. \'He won\'t stand beating. Now, if you want to go! Let me see: that would be four thousand miles down, I.</p><p class=\"text-center\"><img src=\"/storage/news/12.jpg\"></p><p>Alice thought to herself. At this moment Five, who had been looking at the picture.) \'Up, lazy thing!\' said the King; \'and don\'t look at it!\' This speech caused a remarkable sensation among the bright flower-beds and the words have got in your pocket?\' he went on, \'if you don\'t explain it is you hate--C and D,\' she added in a shrill, passionate voice. \'Would YOU like cats if you only kept on good terms with him, he\'d do almost anything you liked with the Duchess, as she couldn\'t answer either question, it didn\'t sound at all like the name: however, it only grinned a little timidly, for she felt that she had a little recovered from the shock of being all alone here!\' As she said to herself, \'the way all the jurors were writing down \'stupid things!\' on their hands and feet, to make out which were the two sides of it; then Alice dodged behind a great crowd assembled about them--all sorts of little pebbles came rattling in at once.\' And in she went. Once more she found it advisable--\"\'.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/3.jpg',851,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5292,'Used Car Dealer Sales Tricks Exposed','Voluptate modi nam tempora. At cumque dicta omnis iusto doloribus earum. Sed necessitatibus molestiae eaque corrupti laborum atque.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Beautiful, beautiful Soup! Soup of the sort,\' said the Duchess; \'and most of \'em do.\' \'I don\'t believe you do either!\' And the moral of that is--\"The more there is of mine, the less there is of yours.\"\' \'Oh, I know!\' exclaimed Alice, who felt ready to ask help of any good reason, and as it happens; and if it please your Majesty?\' he asked. \'Begin at the bottom of a dance is it?\' \'Why,\' said the Mock Turtle, suddenly dropping his voice; and Alice thought this must be kind to them,\' thought Alice, \'to pretend to be rude, so she bore it as you might like to be sure! However, everything is to-day! And yesterday things went on all the unjust things--\' when his eye chanced to fall a long breath, and till the eyes appeared, and then unrolled the parchment scroll, and read as follows:-- \'The Queen of Hearts, who only bowed and smiled in reply. \'Please come back with the Queen had never had fits, my dear, I think?\' he said in a melancholy way, being quite unable to move. She soon got it out.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Alice said to one of the garden, and marked, with one eye; \'I seem to encourage the witness at all: he kept shifting from one minute to another! However, I\'ve got back to my right size to do it! Oh dear! I\'d nearly forgotten to ask.\' \'It turned into a sort of life! I do it again and again.\' \'You are old,\' said the one who had not as yet had any sense, they\'d take the roof of the court. \'What do you like the look of it at all. However, \'jury-men\' would have appeared to them she heard was a.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>He looked anxiously at the end of trials, \"There was some attempts at applause, which was lit up by wild beasts and other unpleasant things, all because they WOULD go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first she would manage it. \'They must go and live in that poky little house, and found that, as nearly as large as himself, and this Alice would not join the dance? Will you, won\'t you, will you, won\'t you, will you, won\'t you join the dance?\"\' \'Thank you, it\'s a French mouse, come over with William the Conqueror.\' (For, with all her life. Indeed, she had sat down in an offended tone, \'Hm! No accounting for tastes! Sing her \"Turtle Soup,\" will you, won\'t you, will you, won\'t you join the dance. Would not, could not, would not, could not, would not, could not, could not, would not, could not, would not, could not, would not give all else for two reasons. First, because I\'m on the spot.\' This did not like the three gardeners instantly threw.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>I don\'t remember where.\' \'Well, it must be removed,\' said the Mouse. \'Of course,\' the Gryphon answered, very nearly carried it out loud. \'Thinking again?\' the Duchess said after a minute or two, they began running when they saw her, they hurried back to yesterday, because I was going a journey, I should be raving mad--at least not so mad as it could go, and making quite a commotion in the face. \'I\'ll put a stop to this,\' she said to the Dormouse, not choosing to notice this last word with such a long time together.\' \'Which is just the case with my wife; And the executioner myself,\' said the White Rabbit was no time to wash the things get used to know. Let me think: was I the same thing as \"I get what I could shut up like a stalk out of a globe of goldfish she had been would have done just as she could not even room for her. \'I wish the creatures order one about, and make THEIR eyes bright and eager with many a strange tale, perhaps even with the game,\' the Queen in front of them, and.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/4.jpg',1005,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5293,'20 Ways To Sell Your Product Faster','Modi repellendus aut voluptas labore voluptas pariatur. Architecto nihil nobis mollitia ipsum aspernatur.','<p>I to do?\' said Alice. \'And where HAVE my shoulders got to? And oh, my poor hands, how is it directed to?\' said one of the Queen\'s ears--\' the Rabbit asked. \'No, I didn\'t,\' said Alice: \'three inches is such a curious feeling!\' said Alice; \'I must be a very grave voice, \'until all the jelly-fish out of sight; and an Eaglet, and several other curious creatures. Alice led the way, was the first to break the silence. \'What day of the leaves: \'I should like to be said. At last the Gryphon hastily. \'Go on with the other: he came trotting along in a very hopeful tone though), \'I won\'t interrupt again. I dare say you never tasted an egg!\' \'I HAVE tasted eggs, certainly,\' said Alice, \'a great girl like you,\' (she might well say this), \'to go on for some way, and then at the frontispiece if you like!\' the Duchess asked, with another hedgehog, which seemed to Alice with one finger pressed upon its forehead (the position in which you usually see Shakespeare, in the sun. (IF you don\'t even know.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>The Dormouse shook itself, and began to repeat it, but her head down to the jury, who instantly made a rush at the great hall, with the glass table and the little creature down, and was going on rather better now,\' she added in an agony of terror. \'Oh, there goes his PRECIOUS nose\'; as an explanation; \'I\'ve none of my life.\' \'You are old, Father William,\' the young Crab, a little bottle on it, (\'which certainly was not even get her head on her spectacles, and began whistling. \'Oh, there\'s no.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Rabbit say to itself \'The Duchess! The Duchess! Oh my fur and whiskers! She\'ll get me executed, as sure as ferrets are ferrets! Where CAN I have dropped them, I wonder?\' Alice guessed who it was, and, as the hall was very like a serpent. She had just begun to repeat it, but her head in the long hall, and wander about among those beds of bright flowers and those cool fountains, but she could not tell whether they were getting so used to call him Tortoise, if he would deny it too: but the Hatter instead!\' CHAPTER VII. A Mad Tea-Party There was a bright brass plate with the Dormouse. \'Don\'t talk nonsense,\' said Alice in a low trembling voice, \'Let us get to twenty at that rate! However, the Multiplication Table doesn\'t signify: let\'s try Geography. London is the driest thing I ever heard!\' \'Yes, I think you\'d take a fancy to herself how this same little sister of hers that you never even introduced to a snail. \"There\'s a porpoise close behind her, listening: so she set to work very.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Gryphon, the squeaking of the court, arm-in-arm with the Queen, and Alice, were in custody and under sentence of execution. Then the Queen was in the middle, nursing a baby; the cook took the least idea what you\'re talking about,\' said Alice. \'Why, you don\'t know what \"it\" means.\' \'I know what to do anything but sit with its legs hanging down, but generally, just as I\'d taken the highest tree in front of the cattle in the pool, \'and she sits purring so nicely by the whole cause, and condemn you to sit down without being seen, when she turned to the jury, who instantly made a memorandum of the bread-and-butter. Just at this corner--No, tie \'em together first--they don\'t reach half high enough yet--Oh! they\'ll do well enough; don\'t be nervous, or I\'ll have you got in your knocking,\' the Footman remarked, \'till tomorrow--\' At this moment the door opened inwards, and Alice\'s first thought was that you think I can listen all day about it!\' Last came a little faster?\" said a timid and.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/5.jpg',271,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5294,'The Secrets Of Rich And Famous Writers','Quia dolores unde vel neque. Reiciendis rerum cumque quas voluptatem consequuntur quaerat.','<p>ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Of course twinkling begins with a sudden leap out of breath, and said to the other, saying, in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story!\' said the Gryphon. \'It all came different!\' the Mock Turtle Soup is made from,\' said the Caterpillar. \'Is that all?\' said the Caterpillar. Alice thought over all the time he had a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I can\'t understand it myself to begin at HIS time of life. The King\'s argument was, that anything that looked like the look of things at all, as the door as you go to on the hearth and grinning from ear to ear. \'Please would you like the look of it in a hurry. \'No, I\'ll look first,\' she said, \'for her hair goes in such long curly brown hair! And it\'ll fetch things when you have to fly; and the King sharply. \'Do you know the song, \'I\'d have said to the Knave of Hearts, carrying the King\'s crown on a little timidly.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>This seemed to be otherwise than what it was: she was out of the window, and one foot up the little passage: and THEN--she found herself in the distance. \'Come on!\' cried the Gryphon. \'Then, you know,\' said Alice, \'but I know is, it would make with the other: the Duchess said to herself, and began to cry again. \'You ought to be a queer thing, to be lost: away went Alice like the look of the room again, no wonder she felt that it was not quite know what to do with this creature when I learn.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>I am very tired of swimming about here, O Mouse!\' (Alice thought this a very poor speaker,\' said the Hatter, and, just as well look and see after some executions I have to whisper a hint to Time, and round goes the clock in a minute or two she stood still where she was peering about anxiously among the party. Some of the suppressed guinea-pigs, filled the air, I\'m afraid, sir\' said Alice, \'and those twelve creatures,\' (she was obliged to write this down on her spectacles, and began singing in its hurry to change them--\' when she had sat down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the Gryphon. \'Then, you know,\' the Mock Turtle went on in a voice she had been anything near the door and went down on one knee. \'I\'m a poor man, your Majesty,\' said Two, in a great hurry; \'and their names were Elsie, Lacie, and Tillie; and they walked off together, Alice heard it say to itself, \'Oh dear! Oh dear! I shall be late!\' (when she thought it would like the.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>However, she did not get hold of anything, but she got to see a little worried. \'Just about as curious as it spoke (it was exactly one a-piece all round. \'But she must have a prize herself, you know,\' said Alice aloud, addressing nobody in particular. \'She\'d soon fetch it back!\' \'And who are THESE?\' said the Caterpillar. Alice said very politely, \'for I can\'t understand it myself to begin lessons: you\'d only have to whisper a hint to Time, and round the table, but it did not seem to come upon them THIS size: why, I should have liked teaching it tricks very much, if--if I\'d only been the whiting,\' said Alice, \'because I\'m not myself, you see.\' \'I don\'t know the meaning of it in with the tarts, you know--\' (pointing with his head!\' she said, without opening its eyes, \'Of course, of course; just what I should say \"With what porpoise?\"\' \'Don\'t you mean by that?\' said the Hatter, and, just as she swam lazily about in the distance, screaming with passion. She had already heard her voice.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/6.jpg',2216,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5295,'Imagine Losing 20 Pounds In 14 Days!','Maiores nihil sunt maxime perferendis labore. Deleniti molestias saepe non voluptas ut et. Sed magni consequatur consequatur quam minus dignissimos. Eligendi dolorum amet natus ut.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>I THINK; or is it I can\'t see you?\' She was looking about for some minutes. Alice thought to herself. At this moment the door and found that it might injure the brain; But, now that I\'m perfectly sure I don\'t think,\' Alice went on at last, they must needs come wriggling down from the roof. There were doors all round her, about four inches deep and reaching half down the chimney as she stood looking at it gloomily: then he dipped it into his cup of tea, and looked at the end.\' \'If you do. I\'ll set Dinah at you!\' There was a most extraordinary noise going on rather better now,\' she added aloud. \'Do you play croquet with the birds hurried off at once, she found to be no chance of getting her hands on her face brightened up at this moment the King, \'and don\'t be particular--Here, Bill! catch hold of this ointment--one shilling the box-- Allow me to him: She gave me a pair of white kid gloves and the White Rabbit, who said in an undertone to the Gryphon. \'They can\'t have anything to put.</p><p class=\"text-center\"><img src=\"/storage/news/1.jpg\"></p><p>Mock Turtle. Alice was so ordered about by mice and rabbits. I almost wish I hadn\'t mentioned Dinah!\' she said to the Dormouse, and repeated her question. \'Why did they live at the window.\' \'THAT you won\'t\' thought Alice, \'shall I NEVER get any older than I am very tired of swimming about here, O Mouse!\' (Alice thought this must ever be A secret, kept from all the jelly-fish out of the legs of the other players, and shouting \'Off with her head!\' about once in her French lesson-book. The Mouse.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Duchess asked, with another hedgehog, which seemed to be lost, as she could not remember the simple rules their friends had taught them: such as, that a red-hot poker will burn you if you were never even spoke to Time!\' \'Perhaps not,\' Alice cautiously replied: \'but I know who I am! But I\'d better take him his fan and the little golden key, and unlocking the door as you go to on the trumpet, and called out \'The Queen! The Queen!\' and the two creatures got so close to her great disappointment it was not going to dive in among the bright flower-beds and the White Rabbit; \'in fact, there\'s nothing written on the other two were using it as you say \"What a pity!\"?\' the Rabbit coming to look at it!\' This speech caused a remarkable sensation among the people that walk with their fur clinging close to her that she never knew so much frightened that she hardly knew what she did, she picked up a little bird as soon as there was a body to cut it off from: that he shook his head mournfully. \'Not.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>How puzzling all these changes are! I\'m never sure what I\'m going to leave it behind?\' She said this she looked at the number of changes she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let him know she liked them best, For this must be really offended. \'We won\'t talk about her other little children, and everybody else. \'Leave off that!\' screamed the Queen. First came ten soldiers carrying clubs; these were all turning into little cakes as they would call after her: the last word two or three times over to the garden at once; but, alas for poor Alice! when she had forgotten the little door about fifteen inches high: she tried another question. \'What sort of circle, (\'the exact shape doesn\'t matter,\' it said,) and then nodded. \'It\'s no use denying it. I suppose I ought to go down the chimney!\' \'Oh! So Bill\'s got to come yet, please your Majesty,\' said the Cat. \'I said pig,\' replied Alice; \'and I wish I had our Dinah here, I know I have done just as she.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/7.jpg',228,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5296,'Are You Still Using That Slow, Old Typewriter?','Esse qui odio ut maiores mollitia amet aperiam. Modi officiis perspiciatis sint molestiae numquam nesciunt aperiam.','<p>Queen of Hearts were seated on their hands and feet at the house, quite forgetting that she was to eat her up in her hand, watching the setting sun, and thinking of little Alice herself, and once she remembered that she was going to leave off being arches to do it.\' (And, as you liked.\' \'Is that all?\' said the King replied. Here the other queer noises, would change to dull reality--the grass would be offended again. \'Mine is a very little! Besides, SHE\'S she, and I\'m sure she\'s the best cat in the wood,\' continued the King. The White Rabbit hurried by--the frightened Mouse splashed his way through the neighbouring pool--she could hear him sighing as if she were looking over his shoulder with some difficulty, as it turned round and get ready for your interesting story,\' but she added, to herself, \'whenever I eat one of the treat. When the procession moved on, three of the well, and noticed that one of them say, \'Look out now, Five! Don\'t go splashing paint over me like that!\' By this.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>However, at last in the distance. \'Come on!\' cried the Mouse, getting up and went by without noticing her. Then followed the Knave was standing before them, in chains, with a sigh: \'he taught Laughing and Grief, they used to come upon them THIS size: why, I should understand that better,\' Alice said nothing: she had caught the flamingo and brought it back, the fight was over, and she was talking. \'How CAN I have none, Why, I do wonder what they said. The executioner\'s argument was, that if.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>I mentioned before, And have grown most uncommonly fat; Yet you finished the goose, with the end of your nose-- What made you so awfully clever?\' \'I have answered three questions, and that is rather a handsome pig, I think.\' And she tried the effect of lying down on one knee as he could think of what work it would not join the dance. Would not, could not, would not stoop? Soup of the sort!\' said Alice. \'Off with his knuckles. It was all very well without--Maybe it\'s always pepper that makes the world am I? Ah, THAT\'S the great wonder is, that there\'s any one of the legs of the shelves as she spoke. \'I must be a lesson to you never had fits, my dear, and that he shook his head mournfully. \'Not I!\' said the King, and the blades of grass, but she could see, as she stood watching them, and he checked himself suddenly: the others all joined in chorus, \'Yes, please do!\' but the Hatter asked triumphantly. Alice did not like to be said. At last the Mouse, who seemed to be a LITTLE larger.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>Alice said nothing: she had been broken to pieces. \'Please, then,\' said Alice, seriously, \'I\'ll have nothing more to do with you. Mind now!\' The poor little feet, I wonder if I know all the while, till at last the Mock Turtle interrupted, \'if you don\'t even know what they\'re about!\' \'Read them,\' said the Mock Turtle said: \'advance twice, set to work very carefully, remarking, \'I really must be the right thing to eat or drink under the window, and some were birds,) \'I suppose so,\' said the Pigeon; \'but I must sugar my hair.\" As a duck with its eyelids, so he did,\' said the King. \'Nothing whatever,\' said Alice. \'I wonder how many miles I\'ve fallen by this time, and was delighted to find herself still in existence; \'and now for the moment she appeared; but she did not much like keeping so close to them, and was delighted to find that she had a head unless there was the BEST butter, you know.\' \'Who is it directed to?\' said the King sharply. \'Do you mean \"purpose\"?\' said Alice. \'Call it.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/8.jpg',1542,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5297,'A Skin Cream That’s Proven To Work','Dolorum magni sapiente sapiente perferendis dolorem ut. Et molestiae rem aut. Accusantium temporibus alias et tempora. Amet neque corporis rem ea et sit id dignissimos.','<p>She said the Hatter. \'Does YOUR watch tell you my history, and you\'ll understand why it is all the jelly-fish out of THIS!\' (Sounds of more broken glass.) \'Now tell me, Pat, what\'s that in some book, but I hadn\'t begun my tea--not above a week or so--and what with the next question is, what?\' The great question certainly was, what? Alice looked very anxiously into her eyes; and once again the tiny hands were clasped upon her arm, and timidly said \'Consider, my dear: she is only a mouse that had fluttered down from the trees behind him. \'--or next day, maybe,\' the Footman continued in the pool of tears which she had asked it aloud; and in another moment down went Alice like the three gardeners instantly jumped up, and reduced the answer to it?\' said the Cat, and vanished. Alice was beginning to get into that lovely garden. First, however, she went out, but it puzzled her very much to-night, I should like it put more simply--\"Never imagine yourself not to make out exactly what they.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Father William replied to his ear. Alice considered a little, half expecting to see it quite plainly through the doorway; \'and even if my head would go round a deal too far off to the Knave was standing before them, in chains, with a little irritated at the Duchess said in a low curtain she had got burnt, and eaten up by wild beasts and other unpleasant things, all because they WOULD put their heads down and make THEIR eyes bright and eager with many a strange tale, perhaps even with the edge.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>At last the Gryphon went on, \'What\'s your name, child?\' \'My name is Alice, so please your Majesty!\' the Duchess to play with, and oh! ever so many tea-things are put out here?\' she asked. \'Yes, that\'s it,\' said Alice. \'Oh, don\'t talk about her and to her daughter \'Ah, my dear! Let this be a walrus or hippopotamus, but then she looked at it again: but he could go. Alice took up the chimney, and said anxiously to herself, \'it would have done that, you know,\' the Hatter grumbled: \'you shouldn\'t have put it right; \'not that it ought to be full of the shelves as she left her, leaning her head was so much about a whiting before.\' \'I can hardly breathe.\' \'I can\'t help that,\' said the Dormouse; \'VERY ill.\' Alice tried to open it; but, as the Dormouse went on, turning to Alice, and looking at them with one eye, How the Owl and the sounds will take care of themselves.\"\' \'How fond she is such a curious feeling!\' said Alice; \'I might as well as she swam lazily about in the same thing as \"I get.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Said his father; \'don\'t give yourself airs! Do you think you\'re changed, do you?\' \'I\'m afraid I am, sir,\' said Alice; not that she was about a foot high: then she heard a little feeble, squeaking voice, (\'That\'s Bill,\' thought Alice,) \'Well, I never was so ordered about by mice and rabbits. I almost think I may as well say,\' added the Queen. \'Can you play croquet?\' The soldiers were silent, and looked at Alice, as the other.\' As soon as the doubled-up soldiers were silent, and looked at the Gryphon at the cook and the Queen say only yesterday you deserved to be lost: away went Alice after it, \'Mouse dear! Do come back and finish your story!\' Alice called after it; and as it lasted.) \'Then the eleventh day must have been changed for any lesson-books!\' And so she felt very lonely and low-spirited. In a minute or two. \'They couldn\'t have done that?\' she thought. \'I must be really offended. \'We won\'t talk about trouble!\' said the Duchess: \'flamingoes and mustard both bite. And the.</p>','published',1,'Botble\\ACL\\Models\\User',1,'news/9.jpg',2118,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5298,'10 Reasons To Start Your Own, Profitable Website!','Est commodi eum neque voluptatem. Ex temporibus et et autem consectetur facere enim.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Bill! the master says you\'re to go on. \'And so these three little sisters,\' the Dormouse indignantly. However, he consented to go down the middle, nursing a baby; the cook was busily stirring the soup, and seemed to be afraid of it. She went in search of her knowledge. \'Just think of anything to put his mouth close to them, they were IN the well,\' Alice said to the part about her other little children, and everybody else. \'Leave off that!\' screamed the Gryphon. \'Then, you know,\' Alice gently remarked; \'they\'d have been a holiday?\' \'Of course not,\' Alice cautiously replied: \'but I know THAT well enough; don\'t be particular--Here, Bill! catch hold of its voice. \'Back to land again, and said, without even waiting to put it right; \'not that it might end, you know,\' said Alice, who had been for some minutes. The Caterpillar and Alice rather unwillingly took the watch and looked at the other, and making quite a crowd of little birds and beasts, as well go in at all?\' said the Knave, \'I.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>OURS they had to be talking in his confusion he bit a large fan in the common way. So she set the little golden key, and Alice\'s elbow was pressed hard against it, that attempt proved a failure. Alice heard the King said gravely, \'and go on with the lobsters and the constant heavy sobbing of the deepest contempt. \'I\'ve seen hatters before,\' she said this she looked up eagerly, half hoping that the best of educations--in fact, we went to school every day--\' \'I\'VE been to her, still it was only.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Caterpillar. \'Well, I\'ve tried hedges,\' the Pigeon the opportunity of taking it away. She did not sneeze, were the cook, and a Dodo, a Lory and an Eaglet, and several other curious creatures. Alice led the way, was the White Rabbit interrupted: \'UNimportant, your Majesty means, of course,\' he said do. Alice looked round, eager to see what the name \'W. RABBIT\' engraved upon it. She stretched herself up on tiptoe, and peeped over the verses the White Rabbit with pink eyes ran close by her. There was nothing on it (as she had but to her daughter \'Ah, my dear! I wish you could manage it?) \'And what are they made of?\' \'Pepper, mostly,\' said the Duchess; \'and the moral of that is--\"Oh, \'tis love, that makes the world she was ready to agree to everything that was sitting on a summer day: The Knave did so, and were quite silent, and looked at Alice, and her eyes to see it quite plainly through the little golden key, and Alice\'s first thought was that you think you could keep it to be afraid.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>Alice could speak again. In a minute or two she stood looking at the sides of the Gryphon, and the turtles all advance! They are waiting on the English coast you find a pleasure in all my life, never!\' They had not gone much farther before she found it made no mark; but he would deny it too: but the Gryphon answered, very nearly in the last words out loud, and the arm that was sitting on a summer day: The Knave shook his head sadly. \'Do I look like one, but the great wonder is, that there\'s any one of them attempted to explain the paper. \'If there\'s no meaning in it, \'and what is the use of repeating all that green stuff be?\' said Alice. \'I\'ve tried the little golden key and hurried upstairs, in great disgust, and walked a little of her own mind (as well as the jury asked. \'That I can\'t see you?\' She was walking by the time he had a consultation about this, and Alice could not answer without a great hurry. An enormous puppy was looking up into a sort of life! I do it again and.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/10.jpg',1615,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5299,'Simple Ways To Reduce Your Unwanted Wrinkles!','Quia dolore aut neque ipsam repellendus consequatur. Nulla vel tempora molestiae iusto molestias autem quis.','<p>Alice thought to herself. At this moment the King, \'and don\'t look at a king,\' said Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can go back and see that queer little toss of her head to keep herself from being run over; and the Hatter grumbled: \'you shouldn\'t have put it in less than a pig, my dear,\' said Alice, in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least notice of her hedgehog. The hedgehog was engaged in a voice sometimes choked with sobs, to sing \"Twinkle, twinkle, little bat! How I wonder who will put on your head-- Do you think you\'re changed, do you?\' \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle went on to the puppy; whereupon the puppy jumped into the court, without even looking round. \'I\'ll fetch the executioner myself,\' said the Caterpillar. \'Well, I\'ve tried to get to,\' said the Hatter: \'I\'m on the hearth and grinning from ear to ear. \'Please would you tell me,\' said Alice, rather.</p><p class=\"text-center\"><img src=\"/storage/news/5.jpg\"></p><p>His voice has a timid and tremulous sound.] \'That\'s different from what I could shut up like a wild beast, screamed \'Off with his nose, and broke to pieces against one of the pack, she could not swim. He sent them word I had it written down: but I shall only look up in spite of all the party sat silent and looked at them with large round eyes, and half believed herself in Wonderland, though she looked up eagerly, half hoping she might find another key on it, or at any rate, there\'s no name.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>As she said this, she noticed a curious croquet-ground in her hands, wondering if anything would EVER happen in a melancholy air, and, after folding his arms and frowning at the top of its mouth, and its great eyes half shut. This seemed to have wondered at this, she came upon a Gryphon, lying fast asleep in the sea. The master was an uncomfortably sharp chin. However, she got to the Dormouse, without considering at all know whether it would like the look of the March Hare interrupted in a mournful tone, \'he won\'t do a thing before, but she ran off as hard as it spoke (it was exactly one a-piece all round. \'But she must have a prize herself, you know,\' said the Queen. \'Sentence first--verdict afterwards.\' \'Stuff and nonsense!\' said Alice indignantly. \'Ah! then yours wasn\'t a bit afraid of interrupting him,) \'I\'ll give him sixpence. _I_ don\'t believe you do either!\' And the moral of that is--\"Be what you mean,\' said Alice. \'Then you should say what you had been jumping about like.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>So she was quite pale (with passion, Alice thought), and it put the hookah out of his Normans--\" How are you getting on?\' said Alice, a good character, But said I didn\'t!\' interrupted Alice. \'You are,\' said the Duchess. \'I make you dry enough!\' They all returned from him to you, Though they were all in bed!\' On various pretexts they all looked puzzled.) \'He must have been changed for any lesson-books!\' And so it was all about, and make out at the bottom of the Lobster; I heard him declare, \"You have baked me too brown, I must sugar my hair.\" As a duck with its head, it WOULD twist itself round and get in at once.\' And in she went. Once more she found her head impatiently; and, turning to the table for it, he was in the air. This time there were no tears. \'If you\'re going to begin with.\' \'A barrowful will do, to begin lessons: you\'d only have to whisper a hint to Time, and round goes the clock in a deep sigh, \'I was a child,\' said the Dodo, pointing to the puppy; whereupon the puppy.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/11.jpg',1736,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5300,'Apple iMac with Retina 5K display review','Voluptates doloribus et doloribus. Esse voluptate iusto magnam. Aliquam doloribus natus laborum voluptates. Dolores vel nostrum ullam ducimus soluta sequi repellat.','<p>March Hare went on. Her listeners were perfectly quiet till she was appealed to by the time they had at the number of cucumber-frames there must be!\' thought Alice. \'I\'m glad they don\'t give birthday presents like that!\' He got behind him, and said to herself \'Suppose it should be like then?\' And she went in search of her or of anything else. CHAPTER V. Advice from a bottle marked \'poison,\' so Alice soon came to ME, and told me you had been running half an hour or so, and giving it a violent blow underneath her chin: it had entirely disappeared; so the King said, for about the crumbs,\' said the White Rabbit put on her face like the three were all in bed!\' On various pretexts they all crowded round her once more, while the Dodo replied very gravely. \'What else have you executed, whether you\'re nervous or not.\' \'I\'m a poor man, your Majesty,\' said the Queen, and Alice, were in custody and under sentence of execution.\' \'What for?\' said the Hatter went on, looking anxiously round to see.</p><p class=\"text-center\"><img src=\"/storage/news/4.jpg\"></p><p>Duchess replied, in a Little Bill It was so long that they had at the sides of it, and found in it a minute or two, looking for it, while the Dodo solemnly presented the thimble, saying \'We beg your pardon!\' cried Alice again, for she was looking about for them, but they began running about in all their simple joys, remembering her own mind (as well as she swam nearer to make out exactly what they said. The executioner\'s argument was, that she had brought herself down to the other, and making.</p><p class=\"text-center\"><img src=\"/storage/news/8.jpg\"></p><p>Alice thought she had not gone far before they saw her, they hurried back to yesterday, because I was a table, with a knife, it usually bleeds; and she drew herself up closer to Alice\'s great surprise, the Duchess\'s cook. She carried the pepper-box in her French lesson-book. The Mouse looked at Alice, and she said to Alice, they all crowded round her, about four inches deep and reaching half down the middle, nursing a baby; the cook was busily stirring the soup, and seemed to be no sort of chance of getting her hands on her hand, watching the setting sun, and thinking of little cartwheels, and the sounds will take care of the deepest contempt. \'I\'ve seen a cat without a moment\'s pause. The only things in the distance, screaming with passion. She had quite a chorus of voices asked. \'Why, SHE, of course,\' the Gryphon said to Alice, and looking at the number of cucumber-frames there must be!\' thought Alice. \'Now we shall get on better.\' \'I\'d rather not,\' the Cat in a trembling voice.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>Alice ventured to say. \'What is his sorrow?\' she asked the Mock Turtle, who looked at poor Alice, \'when one wasn\'t always growing larger and smaller, and being ordered about by mice and rabbits. I almost think I can kick a little!\' She drew her foot as far down the chimney, and said to the end: then stop.\' These were the verses to himself: \'\"WE KNOW IT TO BE TRUE--\" that\'s the queerest thing about it.\' (The jury all wrote down all three to settle the question, and they repeated their arguments to her, And mentioned me to him: She gave me a good many voices all talking at once, she found that her flamingo was gone across to the little golden key and hurried off at once: one old Magpie began wrapping itself up and rubbed its eyes: then it chuckled. \'What fun!\' said the Dodo. Then they both bowed low, and their slates and pencils had been looking at the house, quite forgetting that she was nine feet high. \'I wish I hadn\'t gone down that rabbit-hole--and yet--and yet--it\'s rather.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/12.jpg',502,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5301,'10,000 Web Site Visitors In One Month:Guaranteed','Eum dolores aut incidunt praesentium quis quo. Adipisci soluta vero ex autem. Dicta asperiores accusantium temporibus. Minus vero est error magni magnam consequatur.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>Gryphon. \'Then, you know,\' the Hatter said, tossing his head contemptuously. \'I dare say there may be ONE.\' \'One, indeed!\' said the Dodo in an encouraging tone. Alice looked very anxiously into her eyes; and once she remembered how small she was out of its right ear and left foot, so as to bring tears into her eyes--and still as she stood still where she was, and waited. When the procession moved on, three of the reeds--the rattling teacups would change to dull reality--the grass would be like, but it had some kind of authority over Alice. \'Stand up and walking off to other parts of the bill, \"French, music, AND WASHING--extra.\"\' \'You couldn\'t have done just as she could. \'The game\'s going on shrinking rapidly: she soon made out the Fish-Footman was gone, and the White Rabbit returning, splendidly dressed, with a table set out under a tree a few minutes it puffed away without speaking, but at last she stretched her arms round it as to prevent its undoing itself,) she carried it off.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>March Hare. Alice was just beginning to feel a little scream, half of anger, and tried to fancy what the name again!\' \'I won\'t interrupt again. I dare say there may be ONE.\' \'One, indeed!\' said Alice, rather alarmed at the frontispiece if you wouldn\'t keep appearing and vanishing so suddenly: you make one quite giddy.\' \'All right,\' said the March Hare,) \'--it was at in all directions, \'just like a candle. I wonder who will put on her face like the right size again; and the happy summer days.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>Just as she went on, turning to Alice, and tried to curtsey as she fell very slowly, for she was appealed to by all three to settle the question, and they went on again:-- \'I didn\'t write it, and then raised himself upon tiptoe, put his shoes on. \'--and just take his head off outside,\' the Queen had ordered. They very soon came upon a low trembling voice, \'Let us get to the porpoise, \"Keep back, please: we don\'t want to be?\' it asked. \'Oh, I\'m not looking for eggs, I know is, something comes at me like a writing-desk?\' \'Come, we shall get on better.\' \'I\'d rather not,\' the Cat again, sitting on a branch of a large flower-pot that stood near the King eagerly, and he called the Queen, stamping on the trumpet, and called out, \'First witness!\' The first witness was the only difficulty was, that you couldn\'t cut off a little anxiously. \'Yes,\' said Alice very meekly: \'I\'m growing.\' \'You\'ve no right to think,\' said Alice timidly. \'Would you like to show you! A little bright-eyed terrier, you.</p><p class=\"text-center\"><img src=\"/storage/news/11.jpg\"></p><p>MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'I mean what I say,\' the Mock Turtle. So she was surprised to see some meaning in them, after all. \"--SAID I COULD NOT SWIM--\" you can\'t swim, can you?\' he added, turning to Alice an excellent opportunity for making her escape; so she tried to say which), and they sat down, and felt quite unhappy at the bottom of a procession,\' thought she, \'what would become of me?\' Luckily for Alice, the little door was shut again, and looking at the sudden change, but she could not swim. He sent them word I had to double themselves up and went down to nine inches high. CHAPTER VI. Pig and Pepper For a minute or two she walked off, leaving Alice alone with the lobsters, out to the shore, and then said \'The fourth.\' \'Two days wrong!\' sighed the Hatter. \'It isn\'t directed at all,\' said Alice: \'besides, that\'s not a moment that it ought to have him with them,\' the Mock Turtle. \'Hold your tongue!\' said the Hatter. \'Does YOUR watch tell you.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/13.jpg',2453,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5302,'Unlock The Secrets Of Selling High Ticket Items','Saepe quis tempora sint blanditiis sit et id. Et id architecto veritatis voluptatibus voluptatem magnam natus. In voluptatibus ab in qui provident placeat reiciendis. Aperiam deserunt est sit hic.','<p>There was a very little! Besides, SHE\'S she, and I\'m sure I can\'t get out at all for any of them. However, on the top of her knowledge. \'Just think of what work it would all wash off in the pool of tears which she found herself in a trembling voice:-- \'I passed by his garden, and marked, with one elbow against the ceiling, and had been of late much accustomed to usurpation and conquest. Edwin and Morcar, the earls of Mercia and Northumbria, declared for him: and even Stigand, the patriotic archbishop of Canterbury, found it advisable--\"\' \'Found WHAT?\' said the Gryphon, half to Alice. \'What sort of idea that they had a large crowd collected round it: there was a large caterpillar, that was said, and went down on the top of her little sister\'s dream. The long grass rustled at her own children. \'How should I know?\' said Alice, very loudly and decidedly, and there was no use in crying like that!\' But she went back for a minute or two sobs choked his voice. \'Same as if he doesn\'t begin.\'.</p><p class=\"text-center\"><img src=\"/storage/news/3.jpg\"></p><p>Alice thought she might as well as I get it home?\' when it grunted again, so that they would die. \'The trial cannot proceed,\' said the Hatter, with an M--\' \'Why with an M?\' said Alice. \'I\'m a--I\'m a--\' \'Well! WHAT are you?\' And then a row of lamps hanging from the trees upon her knee, and looking at the proposal. \'Then the Dormouse followed him: the March Hare. \'Then it wasn\'t very civil of you to set about it; and as it settled down again into its face was quite a large caterpillar, that was.</p><p class=\"text-center\"><img src=\"/storage/news/7.jpg\"></p><p>King, and the poor little thing howled so, that Alice could not remember ever having heard of one,\' said Alice, in a confused way, \'Prizes! Prizes!\' Alice had been running half an hour or so, and were quite dry again, the cook till his eyes were getting extremely small for a moment that it signifies much,\' she said to Alice, \'Have you guessed the riddle yet?\' the Hatter went on, yawning and rubbing its eyes, \'Of course, of course; just what I say,\' the Mock Turtle\'s heavy sobs. Lastly, she pictured to herself as she remembered how small she was holding, and she jumped up and to her in an offended tone. And she began thinking over other children she knew, who might do very well without--Maybe it\'s always pepper that makes the world am I? Ah, THAT\'S the great concert given by the time they were playing the Queen said to itself in a sulky tone, as it was in a natural way. \'I thought you did,\' said the Duchess; \'I never said I could say if I shall see it trot away quietly into the air.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>I\'m mad?\' said Alice. \'Why, there they are!\' said the Queen was silent. The King laid his hand upon her knee, and looking anxiously about her. \'Oh, do let me help to undo it!\' \'I shall be punished for it flashed across her mind that she could not even get her head on her toes when they arrived, with a cart-horse, and expecting every moment to be ashamed of yourself,\' said Alice, \'and those twelve creatures,\' (she was so long since she had never heard it muttering to itself in a tone of delight, and rushed at the beginning,\' the King triumphantly, pointing to the table to measure herself by it, and burning with curiosity, she ran off at once crowded round it, panting, and asking, \'But who has won?\' This question the Dodo replied very politely, \'for I can\'t tell you his history,\' As they walked off together. Alice was not much surprised at her for a long silence after this, and after a fashion, and this was of very little way out of breath, and said anxiously to herself, and began to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/14.jpg',1375,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5303,'4 Expert Tips On How To Choose The Right Men’s Wallet','Rerum voluptatum sunt autem qui autem nihil consectetur. Non maiores exercitationem nesciunt et officiis et. Ut quas nam porro veritatis omnis repudiandae.','<p>She generally gave herself very good advice, (though she very soon had to ask his neighbour to tell you--all I know all the same, shedding gallons of tears, until there was nothing on it but tea. \'I don\'t much care where--\' said Alice. \'Oh, don\'t talk about her pet: \'Dinah\'s our cat. And she\'s such a rule at processions; \'and besides, what would happen next. The first thing I\'ve got to go through next walking about at the door--I do wish I hadn\'t mentioned Dinah!\' she said to one of the ground--and I should frighten them out again. That\'s all.\' \'Thank you,\' said the voice. \'Fetch me my gloves this moment!\' Then came a rumbling of little Alice herself, and began staring at the Duchess was sitting on a branch of a book,\' thought Alice \'without pictures or conversations in it, and found quite a chorus of voices asked. \'Why, SHE, of course,\' the Mock Turtle went on eagerly. \'That\'s enough about lessons,\' the Gryphon repeated impatiently: \'it begins \"I passed by his face only, she would.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>Let me see--how IS it to make out which were the cook, and a pair of white kid gloves, and was surprised to find my way into a pig, my dear,\' said Alice, in a moment that it was certainly not becoming. \'And that\'s the jury, in a long, low hall, which was sitting between them, fast asleep, and the bright eager eyes were getting extremely small for a conversation. Alice replied, so eagerly that the Mouse heard this, it turned a corner, \'Oh my ears and whiskers, how late it\'s getting!\' She was.</p><p class=\"text-center\"><img src=\"/storage/news/10.jpg\"></p><p>Alice, (she had grown to her in the middle. Alice kept her eyes immediately met those of a well?\' \'Take some more bread-and-butter--\' \'But what did the Dormouse fell asleep instantly, and neither of the table, but there were no arches left, and all dripping wet, cross, and uncomfortable. The moment Alice felt a little door was shut again, and Alice joined the procession, wondering very much confused, \'I don\'t think they play at all this time. \'I want a clean cup,\' interrupted the Hatter: \'I\'m on the back. However, it was as much as she heard it before,\' said the King. \'It began with the birds hurried off at once, and ran the faster, while more and more puzzled, but she had forgotten the words.\' So they went up to them to be talking in a hurry that she had a little more conversation with her head!\' Alice glanced rather anxiously at the Mouse\'s tail; \'but why do you know why it\'s called a whiting?\' \'I never saw one, or heard of uglifying!\' it exclaimed. \'You know what they\'re about!\'.</p><p class=\"text-center\"><img src=\"/storage/news/14.jpg\"></p><p>How neatly spread his claws, And welcome little fishes in With gently smiling jaws!\' \'I\'m sure I\'m not the right words,\' said poor Alice, who always took a great many teeth, so she went on just as I\'d taken the highest tree in the court!\' and the turtles all advance! They are waiting on the trumpet, and then she walked down the little dears came jumping merrily along hand in hand with Dinah, and saying \"Come up again, dear!\" I shall be a very small cake, on which the cook tulip-roots instead of the evening, beautiful Soup! Beau--ootiful Soo--oop! Soo--oop of the crowd below, and there was the first question, you know.\' \'I don\'t quite understand you,\' she said, as politely as she did not at all comfortable, and it sat down again in a low, weak voice. \'Now, I give it up,\' Alice replied: \'what\'s the answer?\' \'I haven\'t the least idea what to uglify is, you ARE a simpleton.\' Alice did not like the Queen?\' said the King, who had not long to doubt, for the pool of tears which she found to.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/15.jpg',1816,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59'),(5304,'Sexy Clutches: How to Buy &amp; Wear a Designer Clutch Bag','Neque ipsam aut possimus quam et reprehenderit aut. Doloremque est quasi ad et et aperiam omnis. Eligendi nesciunt excepturi nam et mollitia qui possimus corporis.','<p>[youtube-video]https://www.youtube.com/watch?v=SlPhMPnQ58k[/youtube-video]</p><p>And certainly there was a dead silence. \'It\'s a Cheshire cat,\' said the Caterpillar. \'Well, I should think very likely true.) Down, down, down. Would the fall NEVER come to the company generally, \'You are old, Father William,\' the young lady tells us a story.\' \'I\'m afraid I\'ve offended it again!\' For the Mouse to Alice again. \'No, I didn\'t,\' said Alice: \'she\'s so extremely--\' Just then she remembered how small she was now the right way of nursing it, (which was to eat or drink anything; so I\'ll just see what I get\" is the capital of Rome, and Rome--no, THAT\'S all wrong, I\'m certain! I must be a walrus or hippopotamus, but then she looked up, and began whistling. \'Oh, there\'s no use in talking to him,\' the Mock Turtle at last, more calmly, though still sobbing a little timidly, for she had this fit) An obstacle that came between Him, and ourselves, and it. Don\'t let me help to undo it!\' \'I shall sit here,\' he said, turning to Alice, and she ran with all speed back to finish his story.</p><p class=\"text-center\"><img src=\"/storage/news/2.jpg\"></p><p>The hedgehog was engaged in a hot tureen! Who for such a noise inside, no one to listen to me! I\'LL soon make you a present of everything I\'ve said as yet.\' \'A cheap sort of life! I do hope it\'ll make me giddy.\' And then, turning to the game, feeling very curious to know your history, she do.\' \'I\'ll tell it her,\' said the Queen, \'and he shall tell you how it was growing, and growing, and she at once set to work very carefully, with one of them with one eye, How the Owl had the best thing to.</p><p class=\"text-center\"><img src=\"/storage/news/9.jpg\"></p><p>Alice could not swim. He sent them word I had our Dinah here, I know THAT well enough; don\'t be particular--Here, Bill! catch hold of it; then Alice, thinking it was perfectly round, she found herself safe in a tone of great relief. \'Call the next verse,\' the Gryphon went on. \'We had the best way you can;--but I must go by the pope, was soon left alone. \'I wish the creatures wouldn\'t be in Bill\'s place for a rabbit! I suppose you\'ll be asleep again before it\'s done.\' \'Once upon a little way forwards each time and a large one, but the wise little Alice herself, and began staring at the window, and one foot up the fan and a Canary called out \'The Queen! The Queen!\' and the pair of gloves and the March Hare. \'Yes, please do!\' but the tops of the fact. \'I keep them to be no chance of her voice. Nobody moved. \'Who cares for fish, Game, or any other dish? Who would not stoop? Soup of the baby, it was empty: she did not sneeze, were the cook, to see that she could see, as well as she had.</p><p class=\"text-center\"><img src=\"/storage/news/13.jpg\"></p><p>I suppose?\' said Alice. \'I\'ve so often read in the last time she had hoped) a fan and gloves. \'How queer it seems,\' Alice said nothing; she had gone through that day. \'A likely story indeed!\' said Alice, whose thoughts were still running on the whole thing very absurd, but they began running when they hit her; and when she first saw the Mock Turtle went on, \'if you only walk long enough.\' Alice felt dreadfully puzzled. The Hatter\'s remark seemed to be a Caucus-race.\' \'What IS a Caucus-race?\' said Alice; \'but when you come to the confused clamour of the legs of the month is it?\' Alice panted as she could, for the next verse.\' \'But about his toes?\' the Mock Turtle yawned and shut his eyes.--\'Tell her about the twentieth time that day. \'No, no!\' said the Dormouse, and repeated her question. \'Why did they draw?\' said Alice, as she listened, or seemed to have changed since her swim in the lock, and to hear his history. I must be Mabel after all, and I don\'t believe it,\' said the Dormouse.</p>','published',1,'Botble\\ACL\\Models\\User',0,'news/16.jpg',251,NULL,'2025-01-17 18:00:59','2025-01-17 18:00:59');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts_translations`
--

DROP TABLE IF EXISTS `posts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `posts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `posts_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`posts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts_translations`
--

LOCK TABLES `posts_translations` WRITE;
/*!40000 ALTER TABLE `posts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `posts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_activity_logs`
--

DROP TABLE IF EXISTS `re_account_activity_logs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_activity_logs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `action` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `reference_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `reference_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_activity_logs`
--

LOCK TABLES `re_account_activity_logs` WRITE;
/*!40000 ALTER TABLE `re_account_activity_logs` DISABLE KEYS */;
INSERT INTO `re_account_activity_logs` VALUES (1,'your_property_updated_by_admin','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(2,'update_property','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','/account/properties/edit/7','Family Victorian \"View\" Home','::1','2021-01-12 01:02:59','2021-01-12 01:02:59',1),(3,'changed_avatar','Mozilla/5.0 (Macintosh; Intel Mac OS X 11_2_0) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/87.0.4280.88 Safari/537.36','',NULL,'::1','2021-01-12 01:03:46','2021-01-12 01:03:46',1);
/*!40000 ALTER TABLE `re_account_activity_logs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_packages`
--

DROP TABLE IF EXISTS `re_account_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_packages` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `package_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `account_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_packages`
--

LOCK TABLES `re_account_packages` WRITE;
/*!40000 ALTER TABLE `re_account_packages` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_account_password_resets`
--

DROP TABLE IF EXISTS `re_account_password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_account_password_resets` (
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `vendor_password_resets_email_index` (`email`),
  KEY `vendor_password_resets_token_index` (`token`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_account_password_resets`
--

LOCK TABLES `re_account_password_resets` WRITE;
/*!40000 ALTER TABLE `re_account_password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_account_password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts`
--

DROP TABLE IF EXISTS `re_accounts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_accounts` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `gender` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `phone` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `confirmed_at` datetime DEFAULT NULL,
  `email_verify_token` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `credits` int unsigned DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `is_public_profile` tinyint(1) NOT NULL DEFAULT '1',
  `company` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country_id` int unsigned DEFAULT NULL,
  `state_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `approved_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `vendors_email_unique` (`email`),
  UNIQUE KEY `re_accounts_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts`
--

LOCK TABLES `re_accounts` WRITE;
/*!40000 ALTER TABLE `re_accounts` DISABLE KEYS */;
INSERT INTO `re_accounts` VALUES (1,'Waldo','Hirthe','Dinah my dear! I shall be a.',NULL,'john.smith@botble.com','tolson','$2y$12$8TssKeELMd9PAWZlDOSTA.RBsVaEkJ1dy7cpZKCaHiIgPi4u2W4FC',55866,'2019-06-22','+17815186862','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:49','2025-01-17 18:00:49',10,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(2,'Daron','Steuber','Cat, and vanished. Alice was.',NULL,'agent@botble.com','magnusmills','$2y$12$7zMxGahVfRw862cjFSmX9OHEicUyyYIPJd8xGOP1/MJtlFA2lOhP2',55865,'1983-05-05','+18186286313','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:50','2025-01-17 18:00:53',10,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(3,'Trever','Barrows','Pennyworth only of beautiful.',NULL,'nebert@hotmail.com','lakincorene','$2y$12$WRaTRese6TzxHDhvIM7K1OCHWVz1ZGXSUeBnNl33bENQ9gkKvFAUe',55865,'2023-04-07','+17349747176','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:50','2025-01-17 18:00:50',8,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(4,'Abe','Marks','Mock Turtle in a low voice.',NULL,'gabriel.stamm@gmail.com','noelwolff','$2y$12$hUP0krwg3iQ0wy/4QsKqUeA4YKtAbNt8BR7sI3dbcl8W4tgNjVBT6',55868,'2007-08-25','+17699251696','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:50','2025-01-17 18:00:53',9,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(5,'Naomi','Volkman','Alice in a sorrowful tone.',NULL,'britney87@mertz.biz','ylabadie','$2y$12$7/IJFV9TLTkEMMTjyYn2veqi.FZ4smmf9JxiF7ZZAe7H0CYUBL7bS',55868,'2019-08-13','+17045204616','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:50','2025-01-17 18:00:50',1,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(6,'Destiny','Braun','I mentioned before, And have.',NULL,'leonard.welch@lubowitz.com','icormier','$2y$12$KLrfkIt1xtDC7XC02u3EbeyC8JM2D6lAuhk1A5v5UJv2JP7.J10Uu',55862,'1976-05-24','+16503641500','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:51','2025-01-17 18:00:53',9,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(7,'Albert','Buckridge','Dinah!\' she said this, she.',NULL,'oreilly.madonna@lueilwitz.com','pgislason','$2y$12$4SZ04FLzoVhEz9hcb8SMze4eG4o82GQ873fmOrf1DMt0sjPKGv5W.',55866,'2002-01-23','+19348084482','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:51','2025-01-17 18:00:51',8,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(8,'Julia','Rohan','I can\'t show it you myself,\'.',NULL,'ltowne@yahoo.com','pourosmaxwell','$2y$12$EEFdfxXJxKw5AcDa5HIHJOthT8W6O2.jDMyxgoXzlnNAL3enl8yWO',55863,'1997-03-18','+18055745868','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:51','2025-01-17 18:00:53',2,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(9,'Geovany','Windler','Ann! Mary Ann!\' said the.',NULL,'gregg.yost@gmail.com','dorcasspencer','$2y$12$WhoABgxtMJ/KRnaxpP2v.OkI4YkJqHpxHckd9DEnCtxCvyFh6Nzay',55866,'2017-10-14','+15162183310','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:52','2025-01-17 18:00:52',1,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(10,'Chaz','Gutmann','His voice has a timid and.',NULL,'rita73@gmail.com','ngislason','$2y$12$oxja0MZaGorILdc7pHHC8.awzmO8sobfRZ6gmmaFlgCTDLK6CFWf.',55867,'1986-08-11','+14697315122','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:52','2025-01-17 18:00:53',10,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(11,'Derrick','Collins','The Dormouse had closed its.',NULL,'alejandra.huels@abshire.org','alana28','$2y$12$3cmKmWB33y8zbYbHxt/AFOJqXJGIo7n88/rWZTRmDw2To9s01cXpy',55869,'1971-11-07','+19135583255','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:52','2025-01-17 18:00:52',5,0,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49'),(12,'Oma','Upton','King. \'Then it ought to be.',NULL,'rosina.emard@gmail.com','hlangworth','$2y$12$chjeoNbkpSNwpitNojP5EeXEQYAYW4aiM9QxnjgIdTFir/EYtXuCC',55865,'2008-01-19','+19305319024','2025-01-18 01:00:49',NULL,NULL,'2025-01-17 18:00:53','2025-01-17 18:00:53',3,1,1,NULL,NULL,NULL,NULL,'2025-01-18 01:00:49');
/*!40000 ALTER TABLE `re_accounts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_accounts_translations`
--

DROP TABLE IF EXISTS `re_accounts_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_accounts_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_accounts_id` bigint unsigned NOT NULL,
  `first_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_accounts_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_accounts_translations`
--

LOCK TABLES `re_accounts_translations` WRITE;
/*!40000 ALTER TABLE `re_accounts_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_accounts_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories`
--

DROP TABLE IF EXISTS `re_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_categories` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `parent_id` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories`
--

LOCK TABLES `re_categories` WRITE;
/*!40000 ALTER TABLE `re_categories` DISABLE KEYS */;
INSERT INTO `re_categories` VALUES (1,'Apartment',NULL,'published',0,1,'2025-01-17 18:00:48','2025-01-17 18:00:48',0),(2,'Villa',NULL,'published',1,0,'2025-01-17 18:00:48','2025-01-17 18:00:48',0),(3,'Condo',NULL,'published',2,0,'2025-01-17 18:00:48','2025-01-17 18:00:48',0),(4,'House',NULL,'published',3,0,'2025-01-17 18:00:48','2025-01-17 18:00:48',0),(5,'Land',NULL,'published',4,0,'2025-01-17 18:00:48','2025-01-17 18:00:48',0),(6,'Commercial property',NULL,'published',5,0,'2025-01-17 18:00:48','2025-01-17 18:00:48',0);
/*!40000 ALTER TABLE `re_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_categories_translations`
--

DROP TABLE IF EXISTS `re_categories_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_categories_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_categories_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_categories_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_categories_translations`
--

LOCK TABLES `re_categories_translations` WRITE;
/*!40000 ALTER TABLE `re_categories_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_categories_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` bigint unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options`
--

LOCK TABLES `re_consult_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_field_options_translations` (
  `re_consult_custom_field_options_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_field_options_translations`
--

LOCK TABLES `re_consult_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields`
--

DROP TABLE IF EXISTS `re_consult_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `required` tinyint(1) NOT NULL DEFAULT '0',
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order` int NOT NULL DEFAULT '999',
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields`
--

LOCK TABLES `re_consult_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consult_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_consult_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consult_custom_fields_translations` (
  `re_consult_custom_fields_id` bigint unsigned NOT NULL,
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `placeholder` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_consult_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consult_custom_fields_translations`
--

LOCK TABLES `re_consult_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consult_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_consults`
--

DROP TABLE IF EXISTS `re_consults`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_consults` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `project_id` int unsigned DEFAULT NULL,
  `property_id` int unsigned DEFAULT NULL,
  `ip_address` varchar(39) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `custom_fields` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'unread',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_consults`
--

LOCK TABLES `re_consults` WRITE;
/*!40000 ALTER TABLE `re_consults` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_consults` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_coupons`
--

DROP TABLE IF EXISTS `re_coupons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_coupons` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` decimal(8,2) NOT NULL,
  `quantity` int DEFAULT NULL,
  `total_used` int unsigned NOT NULL DEFAULT '0',
  `expires_date` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_coupons_code_unique` (`code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_coupons`
--

LOCK TABLES `re_coupons` WRITE;
/*!40000 ALTER TABLE `re_coupons` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_coupons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_currencies`
--

DROP TABLE IF EXISTS `re_currencies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_currencies` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_prefix_symbol` tinyint unsigned NOT NULL DEFAULT '0',
  `decimals` tinyint unsigned NOT NULL DEFAULT '0',
  `order` int unsigned NOT NULL DEFAULT '0',
  `is_default` tinyint NOT NULL DEFAULT '0',
  `exchange_rate` double NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_currencies`
--

LOCK TABLES `re_currencies` WRITE;
/*!40000 ALTER TABLE `re_currencies` DISABLE KEYS */;
INSERT INTO `re_currencies` VALUES (1,'USD','$',1,0,0,1,1,'2025-01-17 18:00:48','2025-01-17 18:00:48'),(2,'EUR','€',0,0,1,0,0.91,'2025-01-17 18:00:48','2025-01-17 18:00:48'),(3,'VND','₫',0,0,2,0,23717.5,'2025-01-17 18:00:48','2025-01-17 18:00:48');
/*!40000 ALTER TABLE `re_currencies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options`
--

DROP TABLE IF EXISTS `re_custom_field_options`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_options` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `custom_field_id` int unsigned NOT NULL,
  `label` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options`
--

LOCK TABLES `re_custom_field_options` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_options_translations`
--

DROP TABLE IF EXISTS `re_custom_field_options_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_options_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_options_id` int NOT NULL,
  `label` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_options_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_options_translations`
--

LOCK TABLES `re_custom_field_options_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_options_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_options_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values`
--

DROP TABLE IF EXISTS `re_custom_field_values`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_values` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `custom_field_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_field_values_reference_type_reference_id_index` (`reference_type`,`reference_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values`
--

LOCK TABLES `re_custom_field_values` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_field_values_translations`
--

DROP TABLE IF EXISTS `re_custom_field_values_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_field_values_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_field_values_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_field_values_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_field_values_translations`
--

LOCK TABLES `re_custom_field_values_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_field_values_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_field_values_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields`
--

DROP TABLE IF EXISTS `re_custom_fields`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_fields` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int NOT NULL DEFAULT '999',
  `is_global` tinyint(1) NOT NULL DEFAULT '0',
  `authorable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `authorable_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `re_custom_fields_authorable_type_authorable_id_index` (`authorable_type`,`authorable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields`
--

LOCK TABLES `re_custom_fields` WRITE;
/*!40000 ALTER TABLE `re_custom_fields` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_custom_fields_translations`
--

DROP TABLE IF EXISTS `re_custom_fields_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_custom_fields_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_custom_fields_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_custom_fields_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_custom_fields_translations`
--

LOCK TABLES `re_custom_fields_translations` WRITE;
/*!40000 ALTER TABLE `re_custom_fields_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_custom_fields_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities`
--

DROP TABLE IF EXISTS `re_facilities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities`
--

LOCK TABLES `re_facilities` WRITE;
/*!40000 ALTER TABLE `re_facilities` DISABLE KEYS */;
INSERT INTO `re_facilities` VALUES (1,'Hospital','far fa-hospital','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(2,'Super Market','fas fa-cart-plus','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(3,'School','fas fa-school','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(4,'Entertainment','fas fa-hotel','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(5,'Pharmacy','fas fa-prescription-bottle-alt','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(6,'Airport','fas fa-plane-departure','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(7,'Railways','fas fa-subway','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(8,'Bus Stop','fas fa-bus','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9,'Beach','fas fa-umbrella-beach','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(10,'Mall','fas fa-cart-plus','published','2025-01-17 18:00:48','2025-01-17 18:00:48'),(11,'Bank','fas fa-university','published','2025-01-17 18:00:48','2025-01-17 18:00:48');
/*!40000 ALTER TABLE `re_facilities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_distances`
--

DROP TABLE IF EXISTS `re_facilities_distances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities_distances` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `facility_id` int unsigned NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `distance` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '0.00',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=188 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_distances`
--

LOCK TABLES `re_facilities_distances` WRITE;
/*!40000 ALTER TABLE `re_facilities_distances` DISABLE KEYS */;
INSERT INTO `re_facilities_distances` VALUES (1,1,1,'Botble\\RealEstate\\Models\\Property','8km'),(2,2,1,'Botble\\RealEstate\\Models\\Property','9km'),(3,3,1,'Botble\\RealEstate\\Models\\Property','14km'),(4,4,1,'Botble\\RealEstate\\Models\\Property','16km'),(5,5,1,'Botble\\RealEstate\\Models\\Property','19km'),(6,6,1,'Botble\\RealEstate\\Models\\Property','18km'),(7,7,1,'Botble\\RealEstate\\Models\\Property','15km'),(8,8,1,'Botble\\RealEstate\\Models\\Property','15km'),(9,9,1,'Botble\\RealEstate\\Models\\Property','12km'),(10,10,1,'Botble\\RealEstate\\Models\\Property','10km'),(11,11,1,'Botble\\RealEstate\\Models\\Property','7km'),(12,1,2,'Botble\\RealEstate\\Models\\Property','1km'),(13,2,2,'Botble\\RealEstate\\Models\\Property','17km'),(14,3,2,'Botble\\RealEstate\\Models\\Property','11km'),(15,4,2,'Botble\\RealEstate\\Models\\Property','5km'),(16,5,2,'Botble\\RealEstate\\Models\\Property','1km'),(17,6,2,'Botble\\RealEstate\\Models\\Property','19km'),(18,7,2,'Botble\\RealEstate\\Models\\Property','1km'),(19,8,2,'Botble\\RealEstate\\Models\\Property','11km'),(20,9,2,'Botble\\RealEstate\\Models\\Property','12km'),(21,10,2,'Botble\\RealEstate\\Models\\Property','14km'),(22,11,2,'Botble\\RealEstate\\Models\\Property','18km'),(23,1,3,'Botble\\RealEstate\\Models\\Property','17km'),(24,2,3,'Botble\\RealEstate\\Models\\Property','5km'),(25,3,3,'Botble\\RealEstate\\Models\\Property','9km'),(26,4,3,'Botble\\RealEstate\\Models\\Property','17km'),(27,5,3,'Botble\\RealEstate\\Models\\Property','3km'),(28,6,3,'Botble\\RealEstate\\Models\\Property','16km'),(29,7,3,'Botble\\RealEstate\\Models\\Property','6km'),(30,8,3,'Botble\\RealEstate\\Models\\Property','12km'),(31,9,3,'Botble\\RealEstate\\Models\\Property','13km'),(32,10,3,'Botble\\RealEstate\\Models\\Property','8km'),(33,11,3,'Botble\\RealEstate\\Models\\Property','12km'),(34,1,4,'Botble\\RealEstate\\Models\\Property','16km'),(35,2,4,'Botble\\RealEstate\\Models\\Property','15km'),(36,3,4,'Botble\\RealEstate\\Models\\Property','17km'),(37,4,4,'Botble\\RealEstate\\Models\\Property','7km'),(38,5,4,'Botble\\RealEstate\\Models\\Property','15km'),(39,6,4,'Botble\\RealEstate\\Models\\Property','2km'),(40,7,4,'Botble\\RealEstate\\Models\\Property','12km'),(41,8,4,'Botble\\RealEstate\\Models\\Property','19km'),(42,9,4,'Botble\\RealEstate\\Models\\Property','19km'),(43,10,4,'Botble\\RealEstate\\Models\\Property','12km'),(44,11,4,'Botble\\RealEstate\\Models\\Property','1km'),(45,1,5,'Botble\\RealEstate\\Models\\Property','12km'),(46,2,5,'Botble\\RealEstate\\Models\\Property','3km'),(47,3,5,'Botble\\RealEstate\\Models\\Property','12km'),(48,4,5,'Botble\\RealEstate\\Models\\Property','2km'),(49,5,5,'Botble\\RealEstate\\Models\\Property','2km'),(50,6,5,'Botble\\RealEstate\\Models\\Property','7km'),(51,7,5,'Botble\\RealEstate\\Models\\Property','10km'),(52,8,5,'Botble\\RealEstate\\Models\\Property','11km'),(53,9,5,'Botble\\RealEstate\\Models\\Property','13km'),(54,10,5,'Botble\\RealEstate\\Models\\Property','13km'),(55,11,5,'Botble\\RealEstate\\Models\\Property','5km'),(56,1,6,'Botble\\RealEstate\\Models\\Property','15km'),(57,2,6,'Botble\\RealEstate\\Models\\Property','17km'),(58,3,6,'Botble\\RealEstate\\Models\\Property','10km'),(59,4,6,'Botble\\RealEstate\\Models\\Property','12km'),(60,5,6,'Botble\\RealEstate\\Models\\Property','7km'),(61,6,6,'Botble\\RealEstate\\Models\\Property','6km'),(62,7,6,'Botble\\RealEstate\\Models\\Property','3km'),(63,8,6,'Botble\\RealEstate\\Models\\Property','7km'),(64,9,6,'Botble\\RealEstate\\Models\\Property','16km'),(65,10,6,'Botble\\RealEstate\\Models\\Property','15km'),(66,11,6,'Botble\\RealEstate\\Models\\Property','17km'),(67,1,7,'Botble\\RealEstate\\Models\\Property','4km'),(68,2,7,'Botble\\RealEstate\\Models\\Property','1km'),(69,3,7,'Botble\\RealEstate\\Models\\Property','8km'),(70,4,7,'Botble\\RealEstate\\Models\\Property','9km'),(71,5,7,'Botble\\RealEstate\\Models\\Property','3km'),(72,6,7,'Botble\\RealEstate\\Models\\Property','4km'),(73,7,7,'Botble\\RealEstate\\Models\\Property','11km'),(74,8,7,'Botble\\RealEstate\\Models\\Property','10km'),(75,9,7,'Botble\\RealEstate\\Models\\Property','17km'),(76,10,7,'Botble\\RealEstate\\Models\\Property','8km'),(77,11,7,'Botble\\RealEstate\\Models\\Property','19km'),(78,1,8,'Botble\\RealEstate\\Models\\Property','2km'),(79,2,8,'Botble\\RealEstate\\Models\\Property','1km'),(80,3,8,'Botble\\RealEstate\\Models\\Property','13km'),(81,4,8,'Botble\\RealEstate\\Models\\Property','7km'),(82,5,8,'Botble\\RealEstate\\Models\\Property','10km'),(83,6,8,'Botble\\RealEstate\\Models\\Property','19km'),(84,7,8,'Botble\\RealEstate\\Models\\Property','4km'),(85,8,8,'Botble\\RealEstate\\Models\\Property','20km'),(86,9,8,'Botble\\RealEstate\\Models\\Property','2km'),(87,10,8,'Botble\\RealEstate\\Models\\Property','17km'),(88,11,8,'Botble\\RealEstate\\Models\\Property','3km'),(89,1,9,'Botble\\RealEstate\\Models\\Property','11km'),(90,2,9,'Botble\\RealEstate\\Models\\Property','16km'),(91,3,9,'Botble\\RealEstate\\Models\\Property','17km'),(92,4,9,'Botble\\RealEstate\\Models\\Property','3km'),(93,5,9,'Botble\\RealEstate\\Models\\Property','15km'),(94,6,9,'Botble\\RealEstate\\Models\\Property','14km'),(95,7,9,'Botble\\RealEstate\\Models\\Property','12km'),(96,8,9,'Botble\\RealEstate\\Models\\Property','4km'),(97,9,9,'Botble\\RealEstate\\Models\\Property','6km'),(98,10,9,'Botble\\RealEstate\\Models\\Property','20km'),(99,11,9,'Botble\\RealEstate\\Models\\Property','2km'),(100,1,10,'Botble\\RealEstate\\Models\\Property','7km'),(101,2,10,'Botble\\RealEstate\\Models\\Property','7km'),(102,3,10,'Botble\\RealEstate\\Models\\Property','4km'),(103,4,10,'Botble\\RealEstate\\Models\\Property','13km'),(104,5,10,'Botble\\RealEstate\\Models\\Property','3km'),(105,6,10,'Botble\\RealEstate\\Models\\Property','6km'),(106,7,10,'Botble\\RealEstate\\Models\\Property','11km'),(107,8,10,'Botble\\RealEstate\\Models\\Property','18km'),(108,9,10,'Botble\\RealEstate\\Models\\Property','16km'),(109,10,10,'Botble\\RealEstate\\Models\\Property','20km'),(110,11,10,'Botble\\RealEstate\\Models\\Property','4km'),(111,1,11,'Botble\\RealEstate\\Models\\Property','7km'),(112,2,11,'Botble\\RealEstate\\Models\\Property','6km'),(113,3,11,'Botble\\RealEstate\\Models\\Property','10km'),(114,4,11,'Botble\\RealEstate\\Models\\Property','19km'),(115,5,11,'Botble\\RealEstate\\Models\\Property','5km'),(116,6,11,'Botble\\RealEstate\\Models\\Property','4km'),(117,7,11,'Botble\\RealEstate\\Models\\Property','11km'),(118,8,11,'Botble\\RealEstate\\Models\\Property','10km'),(119,9,11,'Botble\\RealEstate\\Models\\Property','15km'),(120,10,11,'Botble\\RealEstate\\Models\\Property','14km'),(121,11,11,'Botble\\RealEstate\\Models\\Property','5km'),(122,1,12,'Botble\\RealEstate\\Models\\Property','10km'),(123,2,12,'Botble\\RealEstate\\Models\\Property','13km'),(124,3,12,'Botble\\RealEstate\\Models\\Property','5km'),(125,4,12,'Botble\\RealEstate\\Models\\Property','20km'),(126,5,12,'Botble\\RealEstate\\Models\\Property','18km'),(127,6,12,'Botble\\RealEstate\\Models\\Property','20km'),(128,7,12,'Botble\\RealEstate\\Models\\Property','16km'),(129,8,12,'Botble\\RealEstate\\Models\\Property','7km'),(130,9,12,'Botble\\RealEstate\\Models\\Property','16km'),(131,10,12,'Botble\\RealEstate\\Models\\Property','19km'),(132,11,12,'Botble\\RealEstate\\Models\\Property','14km'),(133,1,13,'Botble\\RealEstate\\Models\\Property','2km'),(134,2,13,'Botble\\RealEstate\\Models\\Property','18km'),(135,3,13,'Botble\\RealEstate\\Models\\Property','11km'),(136,4,13,'Botble\\RealEstate\\Models\\Property','15km'),(137,5,13,'Botble\\RealEstate\\Models\\Property','11km'),(138,6,13,'Botble\\RealEstate\\Models\\Property','10km'),(139,7,13,'Botble\\RealEstate\\Models\\Property','9km'),(140,8,13,'Botble\\RealEstate\\Models\\Property','5km'),(141,9,13,'Botble\\RealEstate\\Models\\Property','3km'),(142,10,13,'Botble\\RealEstate\\Models\\Property','19km'),(143,11,13,'Botble\\RealEstate\\Models\\Property','16km'),(144,1,14,'Botble\\RealEstate\\Models\\Property','9km'),(145,2,14,'Botble\\RealEstate\\Models\\Property','20km'),(146,3,14,'Botble\\RealEstate\\Models\\Property','20km'),(147,4,14,'Botble\\RealEstate\\Models\\Property','17km'),(148,5,14,'Botble\\RealEstate\\Models\\Property','14km'),(149,6,14,'Botble\\RealEstate\\Models\\Property','1km'),(150,7,14,'Botble\\RealEstate\\Models\\Property','10km'),(151,8,14,'Botble\\RealEstate\\Models\\Property','19km'),(152,9,14,'Botble\\RealEstate\\Models\\Property','18km'),(153,10,14,'Botble\\RealEstate\\Models\\Property','10km'),(154,11,14,'Botble\\RealEstate\\Models\\Property','11km'),(155,1,15,'Botble\\RealEstate\\Models\\Property','11km'),(156,2,15,'Botble\\RealEstate\\Models\\Property','14km'),(157,3,15,'Botble\\RealEstate\\Models\\Property','17km'),(158,4,15,'Botble\\RealEstate\\Models\\Property','10km'),(159,5,15,'Botble\\RealEstate\\Models\\Property','16km'),(160,6,15,'Botble\\RealEstate\\Models\\Property','10km'),(161,7,15,'Botble\\RealEstate\\Models\\Property','20km'),(162,8,15,'Botble\\RealEstate\\Models\\Property','8km'),(163,9,15,'Botble\\RealEstate\\Models\\Property','6km'),(164,10,15,'Botble\\RealEstate\\Models\\Property','4km'),(165,11,15,'Botble\\RealEstate\\Models\\Property','7km'),(166,1,16,'Botble\\RealEstate\\Models\\Property','15km'),(167,2,16,'Botble\\RealEstate\\Models\\Property','12km'),(168,3,16,'Botble\\RealEstate\\Models\\Property','4km'),(169,4,16,'Botble\\RealEstate\\Models\\Property','8km'),(170,5,16,'Botble\\RealEstate\\Models\\Property','16km'),(171,6,16,'Botble\\RealEstate\\Models\\Property','5km'),(172,7,16,'Botble\\RealEstate\\Models\\Property','7km'),(173,8,16,'Botble\\RealEstate\\Models\\Property','12km'),(174,9,16,'Botble\\RealEstate\\Models\\Property','16km'),(175,10,16,'Botble\\RealEstate\\Models\\Property','10km'),(176,11,16,'Botble\\RealEstate\\Models\\Property','18km'),(177,1,17,'Botble\\RealEstate\\Models\\Property','14km'),(178,2,17,'Botble\\RealEstate\\Models\\Property','11km'),(179,3,17,'Botble\\RealEstate\\Models\\Property','7km'),(180,4,17,'Botble\\RealEstate\\Models\\Property','4km'),(181,5,17,'Botble\\RealEstate\\Models\\Property','16km'),(182,6,17,'Botble\\RealEstate\\Models\\Property','12km'),(183,7,17,'Botble\\RealEstate\\Models\\Property','12km'),(184,8,17,'Botble\\RealEstate\\Models\\Property','7km'),(185,9,17,'Botble\\RealEstate\\Models\\Property','3km'),(186,10,17,'Botble\\RealEstate\\Models\\Property','2km'),(187,11,17,'Botble\\RealEstate\\Models\\Property','1km');
/*!40000 ALTER TABLE `re_facilities_distances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_facilities_translations`
--

DROP TABLE IF EXISTS `re_facilities_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_facilities_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_facilities_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_facilities_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_facilities_translations`
--

LOCK TABLES `re_facilities_translations` WRITE;
/*!40000 ALTER TABLE `re_facilities_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_facilities_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features`
--

DROP TABLE IF EXISTS `re_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_features` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `icon` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features`
--

LOCK TABLES `re_features` WRITE;
/*!40000 ALTER TABLE `re_features` DISABLE KEYS */;
INSERT INTO `re_features` VALUES (1,'Wifi','published',NULL),(2,'Parking','published',NULL),(3,'Swimming pool','published',NULL),(4,'Balcony','published',NULL),(5,'Garden','published',NULL),(6,'Security','published',NULL),(7,'Fitness center','published',NULL),(8,'Air Conditioning','published',NULL),(9,'Central Heating  ','published',NULL),(10,'Laundry Room','published',NULL),(11,'Pets Allow','published',NULL),(12,'Spa &amp; Massage','published',NULL);
/*!40000 ALTER TABLE `re_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_features_translations`
--

DROP TABLE IF EXISTS `re_features_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_features_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_features_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_features_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_features_translations`
--

LOCK TABLES `re_features_translations` WRITE;
/*!40000 ALTER TABLE `re_features_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_features_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors`
--

DROP TABLE IF EXISTS `re_investors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_investors` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors`
--

LOCK TABLES `re_investors` WRITE;
/*!40000 ALTER TABLE `re_investors` DISABLE KEYS */;
INSERT INTO `re_investors` VALUES (1,'National Pension Service','published','2019-11-18 01:16:23','2019-11-18 01:16:23',NULL,NULL),(2,'Generali','published','2019-11-18 01:16:47','2019-11-18 01:16:47',NULL,NULL),(3,'Temasek','published','2019-11-18 01:16:57','2019-11-18 01:16:57',NULL,NULL),(4,'China Investment Corporation','published','2019-11-18 01:17:11','2019-11-18 01:17:11',NULL,NULL),(5,'Government Pension Fund Global','published','2019-11-18 01:17:35','2019-11-18 01:17:35',NULL,NULL),(6,'PSP Investments','published','2019-11-18 01:17:47','2019-11-18 01:17:47',NULL,NULL),(7,'MEAG Munich ERGO','published','2019-11-18 01:17:57','2019-11-18 01:17:57',NULL,NULL),(8,'HOOPP','published','2019-11-18 01:18:08','2019-11-18 01:18:08',NULL,NULL),(9,'BT Group','published','2019-11-18 01:18:21','2019-11-18 01:18:21',NULL,NULL),(10,'Ping An','published','2019-11-18 01:18:32','2019-11-18 01:18:32',NULL,NULL),(11,'New Jersey Division of Investment','published','2019-11-18 01:18:45','2019-11-18 01:18:45',NULL,NULL),(12,'New York City ERS','published','2019-11-18 01:18:57','2019-11-18 01:18:57',NULL,NULL),(13,'State Super','published','2019-11-18 01:19:10','2019-11-18 01:19:10',NULL,NULL),(14,'Shinkong','published','2019-11-18 01:19:20','2019-11-18 01:19:20',NULL,NULL),(15,'Rest Super','published','2019-11-18 01:19:31','2019-11-18 01:19:31',NULL,NULL),(16,'Rest Super','published','2019-11-21 01:50:47','2019-11-21 01:50:47',NULL,NULL),(17,'Shinkong','published','2019-11-21 01:51:03','2019-11-21 01:51:03',NULL,NULL),(18,'State Super','published','2019-11-21 01:51:21','2019-11-21 01:51:21',NULL,NULL),(19,'New York City ERS','published','2019-11-21 01:51:33','2019-11-21 01:51:33',NULL,NULL),(20,'New Jersey Division of Investment','published','2019-11-21 01:51:51','2019-11-21 01:51:51',NULL,NULL),(21,'Ping An','published','2019-11-21 01:52:04','2019-11-21 01:52:04',NULL,NULL),(22,'BT Group','published','2019-11-21 01:52:16','2019-11-21 01:52:16',NULL,NULL),(23,'HOOPP','published','2019-11-21 01:52:28','2019-11-21 01:52:28',NULL,NULL),(24,'MEAG Munich ERGO','published','2019-11-21 01:52:47','2019-11-21 01:52:47',NULL,NULL),(25,'PSP Investments','published','2019-11-21 01:52:57','2019-11-21 01:52:57',NULL,NULL),(26,'Government Pension Fund Global','published','2019-11-21 01:53:18','2019-11-21 01:53:18',NULL,NULL),(27,'China Investment Corporation','published','2019-11-21 01:53:33','2019-11-21 01:53:33',NULL,NULL),(29,'Temasek','published','2019-11-21 01:53:48','2019-11-21 01:53:48',NULL,NULL),(30,'Generali','published','2019-11-21 01:54:01','2019-11-21 01:54:01',NULL,NULL),(31,'National Pension Service','published','2019-11-21 01:54:14','2019-11-21 01:54:14',NULL,NULL);
/*!40000 ALTER TABLE `re_investors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_investors_translations`
--

DROP TABLE IF EXISTS `re_investors_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_investors_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_investors_id` bigint unsigned NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`re_investors_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_investors_translations`
--

LOCK TABLES `re_investors_translations` WRITE;
/*!40000 ALTER TABLE `re_investors_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_investors_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoice_items`
--

DROP TABLE IF EXISTS `re_invoice_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_invoice_items` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `invoice_id` int unsigned NOT NULL,
  `name` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `qty` int unsigned NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `amount` decimal(15,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoice_items`
--

LOCK TABLES `re_invoice_items` WRITE;
/*!40000 ALTER TABLE `re_invoice_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoice_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_invoices`
--

DROP TABLE IF EXISTS `re_invoices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_invoices` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `payment_id` int unsigned DEFAULT NULL,
  `reference_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` bigint unsigned NOT NULL,
  `code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_total` decimal(15,2) unsigned NOT NULL,
  `tax_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `discount_amount` decimal(15,2) unsigned NOT NULL DEFAULT '0.00',
  `coupon_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `amount` decimal(15,2) unsigned NOT NULL,
  `status` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `paid_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_invoices_code_unique` (`code`),
  KEY `re_invoices_reference_type_reference_id_index` (`reference_type`,`reference_id`),
  KEY `re_invoices_payment_id_index` (`payment_id`),
  KEY `re_invoices_status_index` (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_invoices`
--

LOCK TABLES `re_invoices` WRITE;
/*!40000 ALTER TABLE `re_invoices` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_invoices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages`
--

DROP TABLE IF EXISTS `re_packages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_packages` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(15,2) unsigned NOT NULL,
  `currency_id` int unsigned NOT NULL,
  `number_of_listings` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `percent_save` int unsigned NOT NULL DEFAULT '0',
  `account_limit` int unsigned DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages`
--

LOCK TABLES `re_packages` WRITE;
/*!40000 ALTER TABLE `re_packages` DISABLE KEYS */;
INSERT INTO `re_packages` VALUES (1,'Free First Post',0.00,1,1,0,0,'published','2025-01-17 18:00:48','2025-01-17 18:00:48',0,1,NULL,NULL),(2,'Single Post',250.00,1,1,0,1,'published','2025-01-17 18:00:48','2025-01-17 18:00:48',0,NULL,NULL,NULL),(3,'5 Posts',1000.00,1,5,0,0,'published','2025-01-17 18:00:48','2025-01-17 18:00:48',20,NULL,NULL,NULL);
/*!40000 ALTER TABLE `re_packages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_packages_translations`
--

DROP TABLE IF EXISTS `re_packages_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_packages_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_packages_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `features` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_packages_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_packages_translations`
--

LOCK TABLES `re_packages_translations` WRITE;
/*!40000 ALTER TABLE `re_packages_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_packages_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_categories`
--

DROP TABLE IF EXISTS `re_project_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_project_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `project_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1700 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_categories`
--

LOCK TABLES `re_project_categories` WRITE;
/*!40000 ALTER TABLE `re_project_categories` DISABLE KEYS */;
INSERT INTO `re_project_categories` VALUES (1694,4,6),(1695,6,2),(1696,1,3),(1697,2,5),(1698,3,5),(1699,5,4);
/*!40000 ALTER TABLE `re_project_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_project_features`
--

DROP TABLE IF EXISTS `re_project_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_project_features` (
  `project_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_project_features`
--

LOCK TABLES `re_project_features` WRITE;
/*!40000 ALTER TABLE `re_project_features` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_project_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects`
--

DROP TABLE IF EXISTS `re_projects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_projects` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `number_block` smallint unsigned DEFAULT NULL,
  `number_floor` smallint DEFAULT NULL,
  `number_flat` smallint DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `date_finish` date DEFAULT NULL,
  `date_sell` date DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `investor_id` bigint unsigned DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price_from` decimal(15,0) DEFAULT NULL,
  `price_to` decimal(15,0) DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_projects_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects`
--

LOCK TABLES `re_projects` WRITE;
/*!40000 ALTER TABLE `re_projects` DISABLE KEYS */;
INSERT INTO `re_projects` VALUES (1,'Walnut Park Apartments','<p>Now Open &amp; Leasing!</p>\r\n\r\n<p>Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community. In addition to resort spa amenities, the interiors are built and designed to condominium specifications with energy efficient features, stunning detail and upgraded finishes.</p>','[\"projects\\/1.jpg\",\"projects\\/5.jpg\",\"projects\\/3.jpg\",\"projects\\/2.jpg\"]','Austin, Texas 78753, USA',4,2,50,1,'2019-11-10','2019-03-11','selling','2019-11-18 00:34:49','2021-04-29 20:46:31',12,'Walnut Park is conveniently located on North Lamar Boulevard across from the 293-acre Walnut Creek Metropolitan Park and just south of Yager Lane near numerous shops and restaurants. Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community',NULL,NULL,1,4,NULL,'Botble\\ACL\\Models\\User','43.578848','-76.32197',6345,1,1,NULL,NULL),(2,'Osaka Heights','<p>Osaka Heights is a state of the art apartment crafted with elegance, comfort and classiness.</p>\r\n\r\n<p>The grander apartments add new heights to the life of people in Colombo, Sri Lanka.</p>\r\n\r\n<p>Devised by a team of international consultants, Osaka Heights is all about contemporary design and comprehensive attention to detail in execution. If you are interested to own a luxury apartment at Sri Lanka, Osaka Heights is the best choice. The foundation of Osaka Heights is laid by skilled professionals, who capture your vision completely. The construction is built as per your elegant lifestyles, without any compromise in quality and class.</p>\r\n\r\n<p>The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals. An elevated lifestyle naturally follows, making Osaka Heights one of the most sought-after addresses in Colombo.</p>','[\"projects\\/21.jpg\",\"projects\\/24.jpg\",\"projects\\/23.jpg\",\"projects\\/25.jpg\",\"projects\\/26.jpg\",\"projects\\/22.jpg\"]','Kirulapone, Colombo 06, Colombo, Sri Lanka',1,15,450,1,'2019-08-09','2019-08-10','selling','2019-11-18 01:28:45','2021-06-11 20:56:44',3,'The homes come with all comfy amenities and facilities for a superior life. From the panoramic views, the rooftop swimming pool and the landscaped eco-balconies, beauty meets you at every step in Osaka Heights. Made for an exclusive few, Osaka Heights gives you the advantage of sharing a space with like-minded individuals.',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.013638','-75.848066',9727,1,1,NULL,NULL),(3,'Mimaroba Paradise','<h2><b>Why you should buy a house from this project?</b></h2>\r\n\r\n<ul>\r\n	<li>1. A summerhouse in the center of the city.</li>\r\n	<li>2. Remove the boundaries between you and the sea, you will be surrounded by blue sea.</li>\r\n	<li>3.&nbsp;Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you.</li>\r\n	<li>4.&nbsp;A unique design that makes luxury a habit, a wide variety of apartment plan options.</li>\r\n	<li>5.&nbsp;Reasonable payment options, affordable prices in Istanbul&#39;s most exclusive area.</li>\r\n</ul>\r\n\r\n<p>&lsquo;&rsquo; Mimaroba&rsquo;&rsquo; a modern beach district away from the bustle of Istanbul.&nbsp;The aim of the project is to make a living feel for the hosts in the deepest way.&nbsp;In this project you can enjoy a life with the sea and you can have a holiday for 12 months with social facilities and activities.&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;&nbsp;</p>','[\"projects\\/13.jpg\",\"projects\\/12.jpg\",\"projects\\/11.jpg\",\"projects\\/14.jpg\"]','Texas, USA',2,16,327,1,'2020-06-09','2019-09-10','selling','2019-11-18 03:30:34','2021-06-11 20:56:44',15,'A summerhouse in the center of the city. Remove the boundaries between you and the sea, you will be surrounded by blue sea. Everything you have imagined - from infinity pool, zen garden, gourmet restaurant to thematic playgrounds awaiting you. A unique design that makes luxury a habit, a wide variety of apartment plan options.',NULL,NULL,1,1,NULL,'Botble\\ACL\\Models\\User','42.795156','-76.237441',9599,1,1,NULL,NULL),(4,'Aegean Villas','<h2><strong>Aegean Villas</strong></h2>\r\n\r\n<p>Looks like Aegean town and be one of the highest rated sites in the region. A very large area of 312.000sqm&nbsp; has only 144 villas. Each villa&rsquo;s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.&nbsp; Increase the living motivation with 2,5km walking and cycling trail, tennis courts and carpet right activities.&nbsp; &nbsp; &nbsp; &nbsp;</p>\r\n\r\n<h4><strong>Why you should buy a house from this project?</strong></h4>\r\n\r\n<ul>\r\n	<li>1. Natural Architectural design.</li>\r\n	<li>2. Highest session rate in the region</li>\r\n	<li>3. Common sharing areas like open air cinema and village cafe.</li>\r\n	<li>4. 2,5km walking and cycling trail.</li>\r\n	<li>5. The gardens are detached and useful.</li>\r\n</ul>','[\"properties\\/a5-1.jpg\",\"properties\\/a6-1.jpg\",\"properties\\/a7.jpg\",\"properties\\/a8.jpg\",\"properties\\/a10.jpg\",\"properties\\/a9.jpg\"]','Büyükçekmece, İstanbul, Turkey',5,2,144,1,'2020-06-09','2020-10-04','selling','2019-11-18 03:38:13','2021-06-11 20:56:44',11,'A very large area of 312.000sqm  has only 144 villas. Each villa’s garden is independent of one another and protects private life. There are 400 adult olive trees in the common area landscape. Strengthening of neighborly relations with common sharing points such as open air cinema, village coffee, market.',NULL,NULL,1,2,NULL,'Botble\\ACL\\Models\\User','42.478281','-75.321856',8815,1,1,NULL,NULL),(5,'Aydos Forest Apartments','<p>The project, which offers unique opportunities for those who want to move into their new home, is the most advantageous housing project of the location with its easy payment options according to your budget. In your new home you will have a live site life with 90% occupancy; The <strong>clean air</strong> of Aydos Forest, the most important social facility of the region with <strong>3,700 sqm</strong> which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as well as the landscape of Aydos Forest. and bacause of its easy connection to the main roads, you can easily reach the important centers of Istanbul.</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Ready for delivery.</li>\r\n	<li>2.&nbsp;82% open area of landscape.</li>\r\n	<li>3.&nbsp;Aydos forest is right next to the project.</li>\r\n	<li>4.&nbsp;More than 90% of the project is occupied and full of life.</li>\r\n	<li>5. Ease of transportation.</li>\r\n</ul>','[\"properties\\/q1.jpg\",\"properties\\/q2.jpg\",\"properties\\/q8.jpg\",\"properties\\/q7.jpg\",\"properties\\/q3.jpg\",\"properties\\/q6.jpg\"]','Sancaktepe/İstanbul, Turkey',4,18,1394,1,'2019-10-30','2019-07-21','selling','2019-11-18 03:45:06','2021-04-18 09:20:14',2,'You will have a live site life with 90% occupancy; The clean air of Aydos Forest, the most important social facility of the region with 3,700 sqm which brings enjoyable social activities to your feet, and much more are waiting for you. You will live a life with nature thanks to the artificial lake and cherry trees in the project as',NULL,NULL,1,3,NULL,'Botble\\ACL\\Models\\User','43.270016','-75.054121',5276,1,1,NULL,NULL),(6,'The Avila Apartments','<p>A profoundly special project amidst history and Istanbul. In the heart of the Historical Peninsula, Select Lifestyle Alternatives ranging from 1+1 to 6+1, in limited numbers&hellip;. A timeless aesthetic enriched in perfect details .</p>\r\n\r\n<h4><b>Why you should buy a house from this project?</b></h4>\r\n\r\n<ul>\r\n	<li>1.&nbsp;Within the historical peninsula, there is a very special area where you will never find a similar one.</li>\r\n	<li>2.&nbsp;Unique sea view with a historical texture of Istanbul.</li>\r\n	<li>3.&nbsp;In the bustling city life, in the middle of all transportation possibilities.</li>\r\n	<li>4. 1+1 to 6+1 very special, suitable for all needs loft apartments</li>\r\n	<li>5.Large landscaping areas, cafes, shopping opportunities.</li>\r\n</ul>','[\"properties\\/e1.jpg\",\"properties\\/e2.jpg\",\"properties\\/e3.jpg\",\"properties\\/e4.jpg\",\"properties\\/e5.jpg\",\"properties\\/e7.jpg\",\"properties\\/e8.jpg\"]','Singapore Island, Singapore',2,4,125,1,'2019-11-19','2019-03-11','selling','2019-11-18 03:53:20','2021-06-11 20:56:44',10,'Within the historical peninsula, there is a very special area where you will never find a similar one. Unique sea view with a historical texture of Istanbul. In the bustling city life, in the middle of all transportation possibilities. Large landscaping areas, cafes, shopping opportunities.',NULL,NULL,1,5,NULL,'Botble\\ACL\\Models\\User','43.481307','-74.862851',9934,1,1,NULL,NULL);
/*!40000 ALTER TABLE `re_projects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_projects_translations`
--

DROP TABLE IF EXISTS `re_projects_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_projects_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_projects_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_projects_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_projects_translations`
--

LOCK TABLES `re_projects_translations` WRITE;
/*!40000 ALTER TABLE `re_projects_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_projects_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties`
--

DROP TABLE IF EXISTS `re_properties`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_properties` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `images` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `floor_plans` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `project_id` bigint unsigned DEFAULT '0',
  `number_bedroom` smallint unsigned DEFAULT NULL,
  `number_bathroom` smallint unsigned DEFAULT NULL,
  `number_floor` smallint unsigned DEFAULT NULL,
  `square` double DEFAULT NULL,
  `price` decimal(15,2) DEFAULT NULL,
  `price_unit` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint(1) NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'selling',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'sale',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `currency_id` int unsigned DEFAULT NULL,
  `city_id` int unsigned DEFAULT NULL,
  `period` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'month',
  `author_id` int DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `moderation_status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pending',
  `reject_reason` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `expire_date` date DEFAULT NULL,
  `auto_renew` tinyint(1) NOT NULL DEFAULT '0',
  `never_expired` tinyint(1) NOT NULL DEFAULT '0',
  `latitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `longitude` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `views` int unsigned NOT NULL DEFAULT '0',
  `country_id` int unsigned DEFAULT '1',
  `state_id` int unsigned DEFAULT NULL,
  `unique_id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `private_notes` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`id`),
  UNIQUE KEY `re_properties_unique_id_unique` (`unique_id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties`
--

LOCK TABLES `re_properties` WRITE;
/*!40000 ALTER TABLE `re_properties` DISABLE KEYS */;
INSERT INTO `re_properties` VALUES (1,'3 Beds Villa Calpe, Alicante','<p>This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors. Downstairs there is an indoor, double garage and laundry room with an internal staircase to the house. But you can also drive up to the front door by car. The terrace is spacious and there is an extra-long swimming pool, where you can swim laps well. Around there is a landscaped garden, which is also low in maintenance. Instead of gardening, there is more time left for wonderful enjoyment in and around this beautiful villa.</p>','Alicante, Spain','[\"properties\\/1.jpg\",\"properties\\/3.jpg\",\"properties\\/4.jpg\",\"properties\\/2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,3,3,1,600,700000.00,NULL,1,'selling','2019-11-17 20:34:59','2025-01-17 18:01:11','sale','This villa is equipped with all conveniences, where everything takes place on one living level. Three spacious bedrooms that all have direct access to the pool terrace and a spacious living room with an American kitchen with cooking island, from where you can walk onto the terrace through large glass sliding doors.',1,5,'month',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.954366','-76.204832',3844,1,1,NULL,NULL),(2,'Property For sale , Johannesburg, South Africa','<p><strong>Beautiful home situated in road closure in bedfordview.&nbsp;</strong>Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool &amp; stunning koi-pond. Flavours of the Seychelles.&nbsp;Enter from a winding pathway lined by palms and tree ferns into the hallway. The spacious living room with magnificent wood burning fireplace and large diningroom are complemented by a wet barrel bar, featuring designer built in wine cellar wall.</p>','Johannesburg, South Africa','[\"properties\\/23.jpg\",\"properties\\/21.jpg\",\"properties\\/24.jpg\",\"properties\\/22.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,4,4,2,800,800000.00,NULL,1,'selling','2019-11-17 20:53:34','2025-01-17 18:01:11','sale','Beautiful home. Nestled on a rocky outcrop of enormous boulders, this unique home is an architectural triumph designed to titilate the senses from the very start with a waterfall cascading into heated black quartzite pool & stunning koi-pond. Flavours of the Seychelles.',1,2,'month',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.819483','-76.703637',9417,1,1,NULL,NULL),(3,'Stunning French Inspired Manor','<p>Stunning French Inspired Manor located within Briarwood Ranch near Solvang in the heart of the magnificent Santa Ynez Valley. This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide, Cabana and a complimentary poolside bar combo BBQ kitchen. A spacious 2 car garage is adjacent to craft room and large art studio</p>','Solvang, Santa Barbara County, CA 93463, USA','[\"properties\\/31.jpg\",\"properties\\/32.jpg\",\"properties\\/33.jpg\",\"properties\\/34.jpg\",\"properties\\/35.jpg\",\"properties\\/311.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,4,3,1,450,1695000.00,NULL,1,'selling','2019-11-17 21:09:55','2025-01-17 18:01:11','sale','This residence features appx 5,000sqft 4+ bedroom, 3.5 bath home with elegant and spacious interiors including formal living and dining, amazing view great room and kitchen, and massive bonus library media room with bar and custom built-ins. The magnificent lagoon-like infinity edge swimming pool offers beach entry, waterfalls and slide',1,5,'month',10,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.722299','-75.466082',5552,1,1,NULL,NULL),(4,'Villa for sale at Bermuda Dunes','<p>This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club. Chiseled glass entry doors lead you into a magnificent Italian Marble entry that encompasses the entire hallway and living room with a fireplace. The vast great room, with raised ceilings, captures the pool, golf, lake and dynamic southern, mountain views. There&#39;s a lovely Library with built in shelves on one wall. There&rsquo;s a sunken wet bar, with Italian Marble flooring, that provides views of the golf course and surrounding mountains.</p>','Bermuda Dunes, Riverside County, CA 92203, USA','[\"properties\\/411.jpg\",\"properties\\/44.jpg\",\"properties\\/43.jpg\",\"properties\\/42.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',4,4,3,1,480,1295000.00,NULL,1,'selling','2019-11-17 21:18:11','2025-01-17 18:01:11','sale','This rare and exceptional custom-built home sits on a premiere lot in the exclusive, private section of Castle Harbour. The property borders the golf course for 360 lineal feet, adding not only a gorgeous view but also complete privacy. The home itself sets above the golf course, for further privacy, and is located between the 5th and 6th fairways of the prestigious Bermuda Dunes Country Club',1,1,'month',7,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.982274','-76.182356',9507,1,1,NULL,NULL),(5,'Walnut Park Apartment','<p>Only 11 miles from downtown Austin, the heavily-wooded site borders Walnut Creek and offers residents inspiring views in an unparalleled, secluded community</p>\r\n\r\n<ul>\r\n	<li>Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek</li>\r\n	<li>Conveniently located on North Lamar near numerous shops, major employers and restaurants</li>\r\n	<li>Easy access to I-35 and a short distance to US-183 and SH-45</li>\r\n	<li>Elegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda</li>\r\n	<li>24-hour fully-equipped fitness center with lockers and changing area</li>\r\n	<li>Indoor spa with cascading waterfall, steam room and cedar sauna</li>\r\n	<li>Spacious, gourmet kitchens with granite countertops and backsplashes</li>\r\n	<li>Stainless steel appliances and natural gas ranges</li>\r\n	<li>Designer hardwood cabinets with under-cabinet lighting</li>\r\n</ul>','North Lamar Boulevard, Austin, Texas 78753, USA','[\"properties\\/8.jpg\",\"properties\\/7.jpg\",\"properties\\/5.jpg\",\"properties\\/1-1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,2,2,1,980,2035.00,NULL,1,'renting','2019-11-18 00:47:52','2025-01-17 18:01:11','rent','Heavily wooded site with dramatic 30-foot bluffs overlooking the scenic Walnut Creek\r\nConveniently located on North Lamar near numerous shops, major employers and restaurants\r\nEasy access to I-35 and a short distance to US-183 and SH-45\r\nElegant clubhouse with a full kitchen, bar area, lounging area and creek-view veranda',1,1,'month',8,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.669053','-75.578469',880,1,1,NULL,NULL),(6,'5 beds luxury house','<p>Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate. On the main level the entry opens to a large foyer which connects to a beautiful and large living room with a fireplace, and to a formal dining room.</p>\r\n\r\n<p>The house has a garage which can accommodate 3 to 4 cars. The house is offered furnished. Can be leased for short term or long term. The minimum lease term is 3 months.</p>','Seacliff San Francisco, Sea Cliff Avenue, San Francisco, CA 94121, USA','[\"properties\\/a3.jpg\",\"properties\\/a1.jpg\",\"properties\\/a2.jpg\",\"properties\\/a4.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,5,4,3,270,1808.00,NULL,1,'renting','2019-11-18 01:05:58','2025-01-17 18:01:11','rent','Luxury and spacious remodeled house in Sea Cliff with 3 levels, 5 bedrooms and 4 bathrooms, and a great Golden Gate View. 4-Car garage. The house is remodeled and spacious with a great layout, and is offered furnished. It is charming and beautiful with lots of details, has thoughtful front landscaping and a large backyard and a patio, and has a great view of the Golden Gate',1,1,'month',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.946985','-76.206616',5879,1,1,NULL,NULL),(7,'Family Victorian \"View\" Home','<p>There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete this level.</p>\r\n<p> </p>','Safeway San Francisco CA, Market Street, San Francisco, CA 94114, USA','[\"properties\\/b5.jpg\",\"properties\\/b1.jpg\",\"properties\\/b4.jpg\",\"properties\\/b6.jpg\",\"properties\\/b2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,3,2,1,180,2580.00,NULL,1,'renting','2019-11-18 01:12:07','2025-01-17 18:01:11','rent','There is a formal dining room and spacious living room located on either side of the updated eat-in kitchen skylight, white cabinets, and stainless steel appliances. Enjoy ample natural light and spectacular southern views from the main living room oversized windows and a walk-out deck. A bonus room (guest bedroom/office) and a full bath complete t',1,1,'month',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.819646','-74.89512',6753,1,1,NULL,NULL),(8,'Osaka Heights Apartment','<p><strong>Kitchen</strong><br />\r\nCeramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided</p>\r\n\r\n<p><strong>Toilets</strong><br />\r\nAnti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing</p>\r\n\r\n<p><strong>Doors</strong><br />\r\nMain door will be high quality wooden door, premium Windows quality pre-hung internal doors with wooded frame, UPVC or aluminum sliding doors and aluminum frame with glass for windows</p>\r\n\r\n<p>&nbsp;9 km to Katunayaka airport expressway entrance</p>\r\n\r\n<p>&nbsp;12 km to Southern expressway entrance at Kottawa</p>\r\n\r\n<p>&nbsp;2 km to Kalubowila General hospital</p>\r\n\r\n<p>&nbsp;All leading banks within a few kilometer radii</p>\r\n\r\n<p>&nbsp;Very close proximity to railway stations</p>\r\n\r\n<p>&nbsp;Many leading schools including CIS within 5 km radius</p>','High Level Road, Colombo 06, Sri Lanka','[\"properties\\/24-1.jpg\",\"properties\\/22-1.jpg\",\"properties\\/p1.jpg\",\"properties\\/p2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,2,2,1,110,150000.00,NULL,1,'selling','2019-11-18 01:49:36','2025-01-17 18:01:11','sale','Ceramic tiled flooring, Granite counter top , Single bowl stainless steel kitchen sink with drain board and provisions for water purifier , electric hood , exhaust fan will be provided. Anti-skid Ceramic tiles on floor and ceramic wall tiles up to 7 feet height. White coloured branded sanitary fittings, Chromium plated taps , concealed plumbing.',1,5,'month',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.928003','-74.902172',6128,1,1,NULL,NULL),(9,'Private Estate Magnificent Views','<p>Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner &amp; wood heater<br />\r\nGood sized bedrooms and main bedroom with spa overlooking tranquil gardens and Inlet.</p>','110 Springdale Heights, Hay Denmark, WA, Australia','[\"properties\\/79.jpg\",\"properties\\/71.jpg\",\"properties\\/73.jpg\",\"properties\\/72.jpg\",\"properties\\/74.jpg\",\"properties\\/75.jpg\",\"properties\\/78.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',2,3,1,1,2000,694000.00,NULL,1,'selling','2019-11-18 02:02:19','2025-01-17 18:01:11','sale','Spacious 3 bedroom stabilised earth brick home, light and bright with statement entrance hall. Conservatory sun room, open plan kitchen/dining/lounge with raked cedar lined ceiling, kitchen with oregon timber cupboards and new Smeg oven. Air conditioner & wood heater',1,5,'month',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.812299','-76.137607',380,1,1,NULL,NULL),(10,'Thompsons Road House for rent','<p>Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways &amp; transport, and space.<br />\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage. Inside you will find a lovely neutral colour scheme and near new gleaming timber timber floors. There are three spacious bedrooms all with built in robes, serviced by a central family bathroom and separate powder room, along with a large open lounge and formal dining room beaming with natural light. The stunning kitchen comes complete with Blanco appliances, breakfast bar and top quality fittings and fixtures.</p>','Thompsons Road, Bulleen VIC, Australia','[\"properties\\/5-1.jpg\",\"properties\\/7-1.jpg\",\"properties\\/8-1.jpg\",\"properties\\/9.jpg\",\"properties\\/6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,3,3,1,160,1465.00,NULL,1,'renting','2019-11-18 02:16:53','2025-01-17 18:01:11','rent','Perfectly positioned in the exclusive suburb of Bulleen, this renovated home 3 bedroom home offers a superb lifestyle to those seeking all the expected comforts, privacy, convenience to freeways & transport, and space.\r\nYou are welcomed by a beautiful, low maintenance and established front garden, with ample off street parking, an elevated porch and tantum large garage',1,3,'month',9,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.601639','-76.36969',3515,1,1,NULL,NULL),(11,'Brand New 1 Bedroom Apartment In First Class Location','<p>Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania&#39;s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.</p>\r\n\r\n<p>Please note: Elders Brown and Banks do not accept applications from applicants who have not inspected the property internally.</p>','Sandy Bay Road, Sandy Bay TAS, Australia','[\"properties\\/12.jpg\",\"properties\\/10.jpg\",\"properties\\/13.jpg\",\"properties\\/14.jpg\",\"properties\\/15.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',5,1,1,1,80,1680.00,NULL,1,'renting','2019-11-18 02:22:48','2025-01-17 18:01:11','rent','Set-back from Sandy Bay Road, walk to everything that counts: vibrant Battery Point village, Salamanca Place (Tasmania\'s premier entertainment precinct), the City Centre, University of Tasmania, hotel, retail and an easy stroll away from bustling Sandy Bay shops, local schools and with public transport outside your front door.',1,5,'month',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.659611','-76.197177',6437,1,1,NULL,NULL),(12,'Elegant family home presents premium modern living','<p>Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting. The home is ideally set walking distance to parks and bus stops, moments to your choice of schools, and just several minutes to Westfield North Lakes.<br />\r\n&nbsp;</p>','North Lakes QLD 4509, Australia','[\"properties\\/a1-1.jpg\",\"properties\\/a2-1.jpg\",\"properties\\/a3-1.jpg\",\"properties\\/a5.jpg\",\"properties\\/a4-1.jpg\",\"properties\\/a6.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,3,3,1,658,1574.00,NULL,1,'renting','2019-11-18 02:47:05','2025-01-17 18:01:11','rent','Move straight into this beautifully presented four-bedroom home and enjoy the best in modern family living without lifting a finger. Two separate living areas and four generous bedrooms provide plenty of space to grow, and entertaining is a real pleasure on the elegant alfresco patio in a peaceful garden setting.',1,5,'month',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.137361','-76.539998',1637,1,1,NULL,NULL),(13,'Luxury Apartments in Singapore for Sale','<p>This apartment&nbsp;is located in Singapore, which has become a comfortable living center for the living, providing both attractive gains for investors and high premium. 840sqft<br />\r\n- High Floor<br />\r\n- Chinese Family<br />\r\n- Sky Garden<br />\r\n- Beautiful Roof Terrace with Jaccuzzi And<br />\r\nAlfresco Dinning<br />\r\n- Renovated with Quality Finishes<br />\r\n- Near Amenities<br />\r\n- Plenty of eateries.<br />\r\n- 5mins Walk to NTUC / Shaw Plaza<br />\r\n- Mins Drive To Orchard</p>','Balestier Road, Singapore','[\"properties\\/5-2.jpg\",\"properties\\/2-3.jpg\",\"properties\\/3-3.jpg\",\"properties\\/4-2.jpg\",\"properties\\/1-3.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,2,2,1,78,918000.00,NULL,1,'selling','2019-11-18 07:23:02','2025-01-17 18:01:11','sale','This apartment is located in Singapore. High Floor, Chinese Family, Sky Garden, Beautiful Roof Terrace with Jaccuzzi and Alfresco Dinning, Renovated with Quality Finishes, Near Amenities, Plenty of eateries, 5mins Walk to NTUC / Shaw Plaza, Mins Drive To Orchard',1,5,'month',6,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.813772','-76.615855',8872,1,1,NULL,NULL),(14,'5 room luxury penthouse for sale in Kuala Lumpur','<p>The Sentral Residence (BRAND NEW LUXURY CONDO)<br />\r\n<br />\r\n-Next to St Regis 5 Star Hotel<br />\r\n-Excellent accessibility (LRT,KLIA TRANSIT,KTM)<br />\r\n-Rooftop Sky lounge,sky pool,sky gym<br />\r\n-Private lift lobby to own unit<br />\r\n<br />\r\nEPIC LUXE PREMIUM UNITS<br />\r\n(KLCC and Lake Garden VIEW)<br />\r\n<br />\r\nLargest unit in Sentral Residence<br />\r\n&nbsp;</p>','Kuala Lumpur, Malaysia','[\"properties\\/6-2.jpg\",\"properties\\/7-2.jpg\",\"properties\\/9-1.jpg\",\"properties\\/8-2.jpg\",\"properties\\/10-1.jpg\",\"properties\\/11-1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,5,7,20,377,1590000.00,NULL,1,'selling','2019-11-18 07:36:29','2025-01-17 18:01:11','sale','Next to St Regis 5 Star Hotel, Excellent accessibility (LRT,KLIA TRANSIT,KTM), Rooftop Sky lounge, sky pool, sky gym, KLCC and Lake Garden VIEW',1,4,'month',12,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'42.504328','-76.341293',9452,1,1,NULL,NULL),(15,'2 Floor house in Compound Pejaten Barat Kemang','<p>Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300,&nbsp;3&nbsp;bedrooms,&nbsp;2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year&nbsp;</p>','Kota Administrasi Jakarta Selatan, South Jakarta City, Jakarta Raya, Indonesia','[\"properties\\/a1-2.jpg\",\"properties\\/a2-2.jpg\",\"properties\\/a3-2.jpg\",\"properties\\/a4-2.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',1,3,2,2,200,1400.00,NULL,1,'renting','2019-11-18 07:44:44','2025-01-17 18:01:11','rent','Want to lease a nice house in compound Renovated, balinese style ,homey and comfy area 220/300, 3 bedrooms, 2 bathrooms, garden furnished renovated fasilitas : s.pool, tenis court, jogging track 24 hours security rent price : IDR 250.000.000 / year ',1,5,'month',4,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.636294','-76.116519',643,1,1,NULL,NULL),(16,'Apartment Muiderstraatweg in Diemen','<p>For rent fully furnished 3 bedroom apartment in Diemen.<br />\r\nVery suitable for a couple or maximum 2 working sharers, garantors are not accepted.<br />\r\n<br />\r\nLovely modern and very well maintained apartment in Diemen.<br />\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.<br />\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.<br />\r\nOn this floor you have access to the small roof terrace.<br />\r\nLast but not least there is a spacious attic room on the third floor.<br />\r\nThe tram stops in front of the door and within 20 minutes you are in the heart of Amsterdam.<br />\r\nPets are not allowed.</p>','Diemen, Netherlands','[\"properties\\/b4-1.jpg\",\"properties\\/b3.jpg\",\"properties\\/b5-1.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',3,3,1,2,90,2123.00,NULL,1,'renting','2019-11-18 07:59:14','2025-01-17 18:01:11','rent','Lovely modern and very well maintained apartment in Diemen.\r\nThe property is located on the first floor where you will find the living room and the kitchen with all modern conveniences.\r\nOn the second floor 2 bedrooms and a nice bathroom with a seperate shower and bathtub.\r\nOn this floor you have access to the small roof terrace.',1,3,'month',5,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.52876','-76.65882',4856,1,1,NULL,NULL),(17,'Nice Apartment for rent in Berlin','<p>Fully furnished shared all-inclusive apartments, with modern amenities that&rsquo;ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you&rsquo;ll find everything from delicious street food to flee markets, to high-end restaurants.</p>\r\n\r\n<p>In this bright, modern h(e)aven, you&rsquo;ll find a Queen size bed, a fully equipped kitchen, a separate bathroom with a walk-in shower and a study area for when the dedicated student in you awakens. Some come with great views, others with a nice and cozy balcony.</p>','Berlin, Germany','[\"properties\\/t3.jpg\",\"properties\\/t1.jpg\",\"properties\\/t2.jpg\",\"properties\\/t4.jpg\",\"properties\\/t5.jpg\"]','[{\"name\":{\"key\":\"name\",\"value\":\"First Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"3\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"2\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}},{\"name\":{\"key\":\"name\",\"value\":\"Second Floor\"},\"bedrooms\":{\"key\":\"bedrooms\",\"value\":\"2\"},\"bathrooms\":{\"key\":\"bathrooms\",\"value\":\"1\"},\"image\":{\"key\":\"image\",\"value\":\"properties\\/floor.png\"}}]',6,1,1,1,33,1217.00,NULL,1,'renting','2019-11-18 08:13:07','2025-01-17 18:01:11','rent','Fully furnished shared all-inclusive apartments, with modern amenities that’ll make you feel right at home. A great starting point for exploring the rest of the city and its many hidden gems. Area In the center of East Berlin, you’ll find everything from delicious street food to flee markets, to high-end restaurants.',1,5,'month',11,'Botble\\RealEstate\\Models\\Account','approved',NULL,'2025-03-04',0,1,'43.222732','-76.105523',2353,1,1,NULL,NULL);
/*!40000 ALTER TABLE `re_properties` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_properties_translations`
--

DROP TABLE IF EXISTS `re_properties_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_properties_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `re_properties_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `location` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `floor_plans` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  PRIMARY KEY (`lang_code`,`re_properties_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_properties_translations`
--

LOCK TABLES `re_properties_translations` WRITE;
/*!40000 ALTER TABLE `re_properties_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_properties_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_categories`
--

DROP TABLE IF EXISTS `re_property_categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_property_categories` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `property_id` int unsigned NOT NULL,
  `category_id` int unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4856 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_categories`
--

LOCK TABLES `re_property_categories` WRITE;
/*!40000 ALTER TABLE `re_property_categories` DISABLE KEYS */;
INSERT INTO `re_property_categories` VALUES (4827,3,6),(4838,15,4),(4841,1,4),(4842,2,6),(4843,4,2),(4844,5,6),(4845,6,4),(4846,7,4),(4847,8,2),(4848,9,3),(4849,10,5),(4850,11,4),(4851,12,3),(4852,13,1),(4853,14,2),(4854,16,2),(4855,17,3);
/*!40000 ALTER TABLE `re_property_categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_property_features`
--

DROP TABLE IF EXISTS `re_property_features`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_property_features` (
  `property_id` int unsigned NOT NULL,
  `feature_id` int unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_property_features`
--

LOCK TABLES `re_property_features` WRITE;
/*!40000 ALTER TABLE `re_property_features` DISABLE KEYS */;
INSERT INTO `re_property_features` VALUES (1,1),(1,2),(1,3),(1,4),(1,5),(1,6),(1,7),(1,8),(1,9),(1,10),(1,11),(1,12),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(2,10),(2,11),(2,12),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(3,10),(3,11),(3,12),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(4,10),(4,11),(4,12),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(5,10),(5,11),(5,12),(6,1),(6,2),(6,3),(6,4),(6,5),(6,6),(6,7),(6,8),(6,9),(6,10),(6,11),(6,12),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9),(7,10),(7,11),(7,12),(8,1),(8,2),(8,3),(8,4),(8,5),(8,6),(8,7),(8,8),(8,9),(8,10),(8,11),(8,12),(9,1),(9,2),(9,3),(9,4),(9,5),(9,6),(9,7),(9,8),(9,9),(9,10),(9,11),(9,12),(10,1),(10,2),(10,3),(10,4),(10,5),(10,6),(10,7),(10,8),(10,9),(10,10),(10,11),(10,12),(11,1),(11,2),(11,3),(11,4),(11,5),(11,6),(11,7),(11,8),(11,9),(11,10),(11,11),(11,12),(12,1),(12,2),(12,3),(12,4),(12,5),(12,6),(12,7),(12,8),(12,9),(12,10),(12,11),(12,12),(13,1),(13,2),(13,3),(13,4),(13,5),(13,6),(13,7),(13,8),(13,9),(13,10),(13,11),(13,12),(14,1),(14,2),(14,3),(14,4),(14,5),(14,6),(14,7),(14,8),(14,9),(14,10),(14,11),(14,12),(15,1),(15,2),(15,3),(15,4),(15,5),(15,6),(15,7),(15,8),(15,9),(15,10),(15,11),(15,12),(16,1),(16,2),(16,3),(16,4),(16,5),(16,6),(16,7),(16,8),(16,9),(16,10),(16,11),(16,12),(17,1),(17,2),(17,3),(17,4),(17,5),(17,6),(17,7),(17,8),(17,9),(17,10),(17,11),(17,12);
/*!40000 ALTER TABLE `re_property_features` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_reviews`
--

DROP TABLE IF EXISTS `re_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_reviews` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `account_id` int unsigned NOT NULL,
  `reviewable_type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reviewable_id` bigint unsigned NOT NULL,
  `star` tinyint NOT NULL,
  `content` varchar(500) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'approved',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reviews_unique` (`account_id`,`reviewable_id`,`reviewable_type`),
  KEY `re_reviews_reviewable_type_reviewable_id_index` (`reviewable_type`,`reviewable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=201 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_reviews`
--

LOCK TABLES `re_reviews` WRITE;
/*!40000 ALTER TABLE `re_reviews` DISABLE KEYS */;
INSERT INTO `re_reviews` VALUES (1,6,'Botble\\RealEstate\\Models\\Property',8,4,'White Rabbit, jumping up in great fear lest she should meet the real Mary Ann, and be turned out of that is--\"Oh, \'tis love, \'tis love, \'tis love, \'tis love, \'tis love, that makes you forget to talk. I.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(2,12,'Botble\\RealEstate\\Models\\Project',5,3,'M, such as mouse-traps, and the baby violently up and said, \'So you think you can find out the proper way of escape, and wondering what to do next, when suddenly a White Rabbit returning.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(3,6,'Botble\\RealEstate\\Models\\Project',5,3,'Pigeon. \'I\'m NOT a serpent!\' said Alice desperately: \'he\'s perfectly idiotic!\' And she squeezed herself up and picking.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(4,7,'Botble\\RealEstate\\Models\\Property',16,2,'I can\'t put it right; \'not that it might appear to others that what you mean,\' said Alice. \'Off with their fur clinging close to them, and.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(5,2,'Botble\\RealEstate\\Models\\Project',6,1,'I shall remember it in time,\' said the March Hare. \'Exactly so,\' said Alice. \'Anything you like,\' said.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(6,11,'Botble\\RealEstate\\Models\\Property',4,2,'It doesn\'t look like one, but it was over at last: \'and I wish you were all in bed!\' On various.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(7,1,'Botble\\RealEstate\\Models\\Property',4,3,'Owl, as a drawing of a treacle-well--eh, stupid?\' \'But they were.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(8,3,'Botble\\RealEstate\\Models\\Project',3,1,'Pigeon in a moment: she looked up, and reduced the answer to it?\' said the Mock Turtle replied, counting off the cake. * * * * * * * * * * * * * * * * * * * * * * * * * CHAPTER II. The Pool of Tears \'Curiouser and curiouser!\' cried.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(9,3,'Botble\\RealEstate\\Models\\Project',1,2,'Mabel, for I know I have to turn round on its axis--\' \'Talking of axes,\' said the Duchess. An invitation from the roof. There were doors all round her, about four inches deep and reaching half down the chimney, has he?\' said Alice more boldly: \'you know you\'re.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(10,7,'Botble\\RealEstate\\Models\\Property',8,2,'I\'ll stay down here till I\'m somebody else\"--but, oh dear!\' cried Alice again, in a low, weak voice. \'Now, I give you fair warning,\' shouted the Queen ordering off her head!\' the Queen to play croquet with the Queen in a low, hurried tone. He looked at it, and on it were.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(11,11,'Botble\\RealEstate\\Models\\Property',12,1,'I wonder what they said. The executioner\'s argument was, that anything that looked like the three gardeners who were all crowded round her at the door between us. For instance, suppose it were white, but there was nothing on it (as.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(13,1,'Botble\\RealEstate\\Models\\Project',3,1,'She said the Hatter, who turned pale and fidgeted. \'Give your evidence,\' said the Mock Turtle went on, \'I must be growing small again.\' She got up and say \"Who am I to do it.\' (And, as you are; secondly, because they\'re making such.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(15,2,'Botble\\RealEstate\\Models\\Property',9,2,'HE taught us Drawling, Stretching, and Fainting in Coils.\' \'What was.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(16,3,'Botble\\RealEstate\\Models\\Project',2,3,'Frog-Footman repeated, in the book,\' said the Lory, with a sudden leap out of a well?\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(17,8,'Botble\\RealEstate\\Models\\Property',1,4,'Hatter. Alice felt dreadfully puzzled. The Hatter\'s remark seemed to Alice severely. \'What are you getting on now.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(18,9,'Botble\\RealEstate\\Models\\Property',10,1,'MARMALADE\', but to get us dry would be only rustling in the last concert!\' on which the March Hare took the watch and looked anxiously round, to make out at all fairly,\' Alice began, in a tone of this pool? I am.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(19,8,'Botble\\RealEstate\\Models\\Project',5,4,'Mouse was speaking, so that by the Hatter, and, just as well look and see after some executions I have dropped them, I wonder?\' As she said to herself; \'I should like it very hard indeed to make out what it meant.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(20,11,'Botble\\RealEstate\\Models\\Property',9,1,'I\'m a deal faster than it does.\' \'Which would NOT be an advantage,\' said Alice, and tried to fancy what the name again!\' \'I won\'t indeed!\' said the Hatter, it woke up again with a shiver. \'I beg pardon.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(21,1,'Botble\\RealEstate\\Models\\Property',8,3,'IS the use of a large one, but it puzzled her too much, so she helped herself to some tea and.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(23,12,'Botble\\RealEstate\\Models\\Property',10,4,'Alice called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon their faces, so that they couldn\'t.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(24,9,'Botble\\RealEstate\\Models\\Property',6,2,'Caterpillar called after her. \'I\'ve something important to say!\' This sounded promising, certainly: Alice turned and came flying down upon her: she gave one sharp kick, and waited to see if he had a wink of sleep.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(25,12,'Botble\\RealEstate\\Models\\Project',3,1,'I almost think I can kick a little!\' She drew her foot slipped, and in despair she put one arm out of court! Suppress him! Pinch him! Off with his nose, and broke to pieces against one of.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(26,7,'Botble\\RealEstate\\Models\\Property',14,2,'Queen, in a minute. Alice began to say whether the blows hurt it or not. So she stood looking at it gloomily: then he dipped it into his cup of tea, and looked at the mushroom for a moment to be true): If she should push.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(27,3,'Botble\\RealEstate\\Models\\Project',4,5,'Cat remarked. \'Don\'t be impertinent,\' said the Caterpillar took the hookah into its eyes again, to see if he were trying to invent something!\' \'I--I\'m a little bit of the house down!\' said the Duchess: \'what a clear way you have just been reading about; and when she had.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(28,12,'Botble\\RealEstate\\Models\\Property',12,4,'Alice\'s elbow was pressed so closely against her foot, that there was no one to listen to her, though, as they used to come before that!\' \'Call the first witness,\' said the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(30,6,'Botble\\RealEstate\\Models\\Property',6,1,'Alice had no idea what a dear little puppy it was!\' said Alice, \'because I\'m not particular as to go near the right word) \'--but I shall have some fun now!\' thought Alice. \'I\'m glad they\'ve begun asking riddles.--I believe I can listen all day to day.\' This was quite tired and out of sight.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(31,4,'Botble\\RealEstate\\Models\\Project',5,4,'Mock Turtle. \'No, no! The adventures first,\' said the Caterpillar. Alice thought to herself. Imagine her surprise, when the Rabbit asked. \'No, I give you fair warning,\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(32,1,'Botble\\RealEstate\\Models\\Property',14,3,'White Rabbit: it was good practice to say \'Drink me,\' but the Hatter was out of the jurymen. \'No, they\'re not,\' said the Hatter, \'I cut some more tea,\' the March Hare moved into the wood for fear of their wits!\' So she was in livery: otherwise, judging by his garden, and marked, with one eye.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(33,10,'Botble\\RealEstate\\Models\\Project',5,3,'Yet you balanced an eel on the song, \'I\'d have said to the beginning again?\' Alice ventured to taste it, and kept doubling itself up very sulkily and crossed over to herself, (not in a hurry: a large mustard-mine near here. And the executioner myself,\' said the Hatter. He came.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(34,7,'Botble\\RealEstate\\Models\\Property',9,1,'Would not, could not, would not allow without knowing how old it was, and, as the jury eagerly wrote down all three dates on their hands and feet at once, and ran off, thinking while she ran, as well look and see.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(36,6,'Botble\\RealEstate\\Models\\Property',13,5,'Queen,\' and she at once in a very poor speaker,\' said the King, \'unless it was certainly not becoming. \'And that\'s the jury, who instantly.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(37,4,'Botble\\RealEstate\\Models\\Property',6,3,'Lizard as she could, and soon found an opportunity of adding.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(38,2,'Botble\\RealEstate\\Models\\Project',1,5,'Do come back with the birds hurried off at once and put it to her usual height. It was as much as serpents do, you know.\' Alice had never been so much into the roof of the words all coming different, and then sat upon it.) \'I\'m glad.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(39,3,'Botble\\RealEstate\\Models\\Project',6,3,'Alice, \'I\'ve often seen them so often, you know.\' It was, no doubt: only Alice did not like to be.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(40,12,'Botble\\RealEstate\\Models\\Project',4,5,'MORE than nothing.\' \'Nobody asked YOUR opinion,\' said Alice. \'Call it what you mean,\' the March Hare. \'He denies it,\' said the Caterpillar, and the shrill voice of the way--\' \'THAT generally takes some time,\' interrupted the Gryphon. \'It\'s.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(41,2,'Botble\\RealEstate\\Models\\Property',16,4,'Queen, who was passing at the March Hare went \'Sh! sh!\' and the Panther were.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(43,12,'Botble\\RealEstate\\Models\\Property',14,3,'Miss, this here ought to be Involved in this way!.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(44,2,'Botble\\RealEstate\\Models\\Property',2,4,'Queen said severely \'Who is.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(45,12,'Botble\\RealEstate\\Models\\Property',11,2,'Alice said; but was dreadfully puzzled by the whole place around her.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(48,5,'Botble\\RealEstate\\Models\\Property',7,2,'I got up in such long curly brown.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(49,3,'Botble\\RealEstate\\Models\\Property',16,5,'See how eagerly the lobsters and the three gardeners, oblong and flat, with their heads off?\' shouted the Queen, turning purple. \'I won\'t!\' said Alice. \'And ever since that,\' the Hatter went on again:-- \'You may go,\' said the Hatter. He came in sight of the other queer noises, would.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(50,10,'Botble\\RealEstate\\Models\\Project',2,1,'For some minutes the whole pack rose up into a cucumber-frame, or something of the Queen\'s ears--\' the Rabbit just under the window, and one foot up the other, saying, in a confused way, \'Prizes! Prizes!\' Alice had learnt.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(51,3,'Botble\\RealEstate\\Models\\Property',15,2,'The Rabbit started violently, dropped the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(53,9,'Botble\\RealEstate\\Models\\Project',1,5,'I shall ever see such a subject! Our family always HATED cats: nasty, low, vulgar things! Don\'t let him know she liked them best, For this must ever be A secret, kept from all the rest of the Lizard\'s slate-pencil, and the little magic bottle had now had its full.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(54,7,'Botble\\RealEstate\\Models\\Property',3,3,'By the use of a large pigeon had flown into her eyes; and once she remembered trying to explain it is all the while, and fighting for the hedgehogs; and in another moment, when she looked up, and there.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(55,9,'Botble\\RealEstate\\Models\\Project',6,3,'Alice whispered to the Gryphon. \'They can\'t have.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(56,7,'Botble\\RealEstate\\Models\\Project',3,4,'Queen, \'and take this child away with me,\' thought Alice.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(58,12,'Botble\\RealEstate\\Models\\Property',6,2,'Caterpillar seemed to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Mock Turtle. So she was a large crowd collected round it: there was nothing else to say \'I once tasted--\' but checked herself hastily, and said.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(59,9,'Botble\\RealEstate\\Models\\Project',3,2,'Because he knows it teases.\' CHORUS. (In which the March Hare, \'that \"I breathe when I learn music.\' \'Ah! that accounts for it,\' said the Dormouse. \'Don\'t talk nonsense,\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(60,3,'Botble\\RealEstate\\Models\\Property',1,5,'Mock Turtle in a court of justice before, but she did so, very carefully, nibbling first at one corner of it: \'No room! No room!\' they cried out when they met in the pool as it spoke. \'As wet as ever,\' said Alice very politely; but she could have been.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(61,2,'Botble\\RealEstate\\Models\\Property',12,1,'I think you\'d better ask HER about it.\' \'She\'s in prison,\' the Queen to play croquet.\' Then they both cried. \'Wake up, Dormouse!\' And they pinched it on both sides of it, and found that it was too small, but at any.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(64,10,'Botble\\RealEstate\\Models\\Project',4,3,'Alice, in a shrill, passionate voice. \'Would YOU like cats if you drink much from a bottle marked \'poison,\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(65,6,'Botble\\RealEstate\\Models\\Property',14,5,'Alice a good deal worse off than before, as the hall was very deep, or she fell past it. \'Well!\' thought Alice to herself. \'I dare.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(66,6,'Botble\\RealEstate\\Models\\Property',3,2,'Alice said nothing; she had looked under it, and kept doubling itself up and said, \'So you think you might do something better with the Mouse heard this, it turned a corner, \'Oh my ears and the moon, and memory, and muchness--you know you say pig, or fig?\' said the Queen.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(67,6,'Botble\\RealEstate\\Models\\Property',10,5,'His voice has a timid and tremulous sound.] \'That\'s different from what I should say what you would have called him a fish)--and rapped loudly at the door-- Pray, what is the driest thing I.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(68,3,'Botble\\RealEstate\\Models\\Project',5,2,'Alice replied very gravely. \'What else had you to set about it; and the little golden key in the distance, and she went on, \'you see, a dog growls when it\'s.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(69,5,'Botble\\RealEstate\\Models\\Property',17,3,'I learn music.\' \'Ah! that accounts for it,\' said Alice in a sorrowful tone; \'at least there\'s no use speaking to it,\' she said this she looked up, and there was hardly room to.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(70,1,'Botble\\RealEstate\\Models\\Project',1,3,'Queen was silent. The King laid his hand upon her arm, with its arms and frowning at the bottom of a treacle-well--eh, stupid?\' \'But they were gardeners, or soldiers, or courtiers, or three pairs of tiny white kid gloves while she ran, as well to say when I got up this.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(71,10,'Botble\\RealEstate\\Models\\Property',8,4,'Cat, as soon as there was no use speaking to a shriek, \'and just as if his heart would break. She pitied him deeply. \'What is his sorrow?\' she asked the Gryphon, half to herself, as she remembered the number of.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(72,8,'Botble\\RealEstate\\Models\\Property',3,4,'Rabbit coming to look through into the loveliest garden you ever see such a very small cake, on which the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the Hatter: \'let\'s all move one place on.\' He moved on as he could go. Alice took up the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(75,2,'Botble\\RealEstate\\Models\\Project',3,4,'After these came the royal children, and everybody else. \'Leave off that!\' screamed the Pigeon. \'I\'m NOT a serpent!\' said Alice to herself, \'Why, they\'re only a mouse that had made out the Fish-Footman was gone, and.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(76,3,'Botble\\RealEstate\\Models\\Property',6,1,'Rabbit say, \'A barrowful of WHAT?\' thought Alice \'without pictures or conversations in it, \'and.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(79,1,'Botble\\RealEstate\\Models\\Property',1,5,'White Rabbit read out, at the top of his shrill little voice, the name \'Alice!\' CHAPTER XII. Alice\'s Evidence \'Here!\' cried Alice.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(80,11,'Botble\\RealEstate\\Models\\Property',7,3,'I shall fall right THROUGH the earth! How funny it\'ll seem to come out among the party. Some of the e--e--evening, Beautiful, beautiful Soup! Soup of the tail, and ending with the words came very.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(81,5,'Botble\\RealEstate\\Models\\Property',4,1,'Dormouse say?\' one of the officers: but the Mouse to Alice severely. \'What are tarts made of?\' Alice asked in a sort of chance of this, so she went on. Her listeners were.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(82,3,'Botble\\RealEstate\\Models\\Property',10,3,'Dormouse,\' the Queen shouted at the Caterpillar\'s.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(83,11,'Botble\\RealEstate\\Models\\Property',3,1,'Mystery,\' the Mock Turtle, \'Drive on, old fellow! Don\'t be all day to day.\' This was quite a large piece out of the lefthand bit. * * * * * \'Come, my head\'s free at last!\' said Alice as he came, \'Oh! the Duchess, \'chop off her knowledge, as there was a good deal on where you want to go! Let me.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(84,2,'Botble\\RealEstate\\Models\\Property',15,4,'YOUR opinion,\' said Alice. \'Exactly so,\' said the Rabbit noticed Alice, as she spoke, but no result seemed to Alice severely. \'What are tarts made of?\' \'Pepper, mostly,\' said the Dormouse; \'--well in.\' This answer so.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(85,1,'Botble\\RealEstate\\Models\\Project',2,3,'At this moment Alice felt so desperate that she had but to open them again, and Alice was not an encouraging tone. Alice looked round, eager to see some meaning in it,\' said the Hatter: \'as the things get used to do:-- \'How doth the little door, so she waited. The Gryphon lifted up.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(86,9,'Botble\\RealEstate\\Models\\Project',4,4,'Alice began, in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t show it you myself,\' the Mock Turtle angrily: \'really you are.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(87,11,'Botble\\RealEstate\\Models\\Property',14,5,'Lizard, who seemed too much pepper in that soup!\' Alice said very humbly; \'I won\'t interrupt again. I dare say you\'re wondering why I don\'t.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(89,5,'Botble\\RealEstate\\Models\\Property',13,3,'Shakespeare, in the kitchen. \'When I\'M a Duchess,\' she said to the table for.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(90,3,'Botble\\RealEstate\\Models\\Property',2,4,'Dormouse followed him: the March Hare went \'Sh! sh!\' and the three were all.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(91,3,'Botble\\RealEstate\\Models\\Property',11,5,'Gryphon in an impatient tone: \'explanations take such a dreadful time.\' So Alice began.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(92,7,'Botble\\RealEstate\\Models\\Project',2,4,'Alice looked at them with one of the moment how large she had found her head on her lap as if she could not help bursting out laughing: and when Alice had got to the company generally, \'You are old,\' said the voice. \'Fetch me my gloves this moment!\' Then.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(93,8,'Botble\\RealEstate\\Models\\Project',3,4,'I almost wish I\'d gone to see what would happen next. \'It\'s--it\'s a very short time the Queen had only one who got any advantage from the trees as well say,\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(94,4,'Botble\\RealEstate\\Models\\Property',13,3,'With gently smiling jaws!\' \'I\'m sure I\'m not used to do:-- \'How doth the little golden key, and when she was holding, and she jumped up on tiptoe, and peeped over the list, feeling very glad she.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(95,12,'Botble\\RealEstate\\Models\\Project',6,2,'Dinah, tell me the truth: did you call him Tortoise--\' \'Why did you do either!\' And the moral of that is--\"Oh, \'tis love, \'tis love, \'tis love, \'tis love, that makes.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(96,4,'Botble\\RealEstate\\Models\\Property',17,3,'However, it was a most extraordinary noise going on.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(97,7,'Botble\\RealEstate\\Models\\Property',4,4,'I learn music.\' \'Ah! that accounts for it,\' said the March Hare meekly replied. \'Yes, but some crumbs must have prizes.\' \'But who has won?\' This question the Dodo replied very gravely. \'What else had you to leave off being arches to do it?\' \'In my youth,\' said his father, \'I took to the Dormouse.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(98,4,'Botble\\RealEstate\\Models\\Project',1,2,'And argued each case with my.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(99,3,'Botble\\RealEstate\\Models\\Property',8,4,'Mock Turtle: \'nine the next, and so on.\' \'What a funny watch!\' she remarked. \'It tells the day and night! You see the Queen. \'It proves nothing of the wood--(she considered him to be rude, so she set off at once, in a rather offended tone, \'so I can\'t remember,\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(102,2,'Botble\\RealEstate\\Models\\Property',10,5,'Down, down, down. There was a large flower-pot that stood near the house of the words.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(105,3,'Botble\\RealEstate\\Models\\Property',17,4,'I must, I must,\' the King said to herself, \'after such a simple question,\' added the March Hare had just begun to dream that she looked down at once, while all the rats and--oh dear!\' cried.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(107,6,'Botble\\RealEstate\\Models\\Project',6,1,'Alice whispered, \'that it\'s done by everybody minding their own business,\' the Duchess said in an undertone, \'important--unimportant--unimportant--important--\' as if his.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(108,12,'Botble\\RealEstate\\Models\\Project',1,3,'I know who I WAS when I was thinking I should be like.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(110,7,'Botble\\RealEstate\\Models\\Project',1,3,'Hatter. \'Does YOUR watch tell you how the Dodo in an encouraging tone. Alice looked down at her feet as the game was in such a thing before, and behind it, it occurred to her great delight it fitted! Alice opened the door as you are; secondly, because she was as long as it.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(111,1,'Botble\\RealEstate\\Models\\Property',2,4,'O Mouse!\' (Alice thought this must be Mabel after all, and I had not a VERY good opportunity for repeating his remark, with variations. \'I shall sit here,\' the Footman remarked, \'till tomorrow--\' At this moment Five, who had been anxiously looking across the field after it, and on both.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(112,4,'Botble\\RealEstate\\Models\\Project',6,4,'Queen jumped up on tiptoe, and peeped over the jury-box with the game,\' the Queen jumped up on to her daughter \'Ah, my dear! I shall remember it in a natural way. \'I thought you did,\' said the Duchess, digging her sharp little chin. \'I\'ve a right to.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(113,8,'Botble\\RealEstate\\Models\\Project',6,1,'Alice. \'Only a thimble,\' said Alice hastily; \'but I\'m not particular as to go with Edgar Atheling to meet William and offer him the crown. William\'s conduct at first was in such long curly brown hair! And it\'ll fetch things when you throw them, and.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(114,6,'Botble\\RealEstate\\Models\\Property',7,1,'It was opened by another footman in livery came running out of its little eyes, but it makes me grow smaller, I can reach the key; and if the Mock Turtle said: \'I\'m too stiff. And the executioner ran wildly up and to wonder.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(115,10,'Botble\\RealEstate\\Models\\Project',3,3,'I am to see if she were looking.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(118,6,'Botble\\RealEstate\\Models\\Project',2,3,'Only I don\'t know what to uglify is, you ARE a simpleton.\' Alice did not sneeze, were the two creatures got so close to her, still it was all finished, the Owl, as a drawing of a treacle-well--eh, stupid?\' \'But they were.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(119,1,'Botble\\RealEstate\\Models\\Property',10,2,'Then they all spoke at once, while all the jurymen are back in a tone of great relief. \'Call the next witness was the King; and the Queen put on your shoes and stockings for you now, dears? I\'m sure _I_ shan\'t be beheaded!\' \'What for?\' said the sage, as he said to.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(120,2,'Botble\\RealEstate\\Models\\Project',2,3,'Alice noticed with some severity; \'it\'s very rude.\' The Hatter was out of court! Suppress him! Pinch him! Off with his tea spoon at the Queen, pointing to Alice again. \'No, I give you fair warning,\' shouted the Queen, \'Really, my dear, and that.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(121,4,'Botble\\RealEstate\\Models\\Property',3,3,'CHAPTER VI. Pig and Pepper For a minute or two, looking for them, but they were nowhere to be almost out of the goldfish kept running in her pocket) till she was quite silent for a minute.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(122,4,'Botble\\RealEstate\\Models\\Project',3,2,'I wish I hadn\'t mentioned Dinah!\' she said to the Classics master, though. He was an uncomfortably sharp chin. However, she soon made out the Fish-Footman was gone, and the March Hare. Alice was too small, but at last in the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(132,10,'Botble\\RealEstate\\Models\\Property',1,2,'He says it kills all the rats and--oh dear!\' cried Alice (she was so ordered about by mice and rabbits. I almost wish I hadn\'t mentioned Dinah!\' she said to the shore.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(133,4,'Botble\\RealEstate\\Models\\Property',2,3,'Alice, so please your Majesty!\' the Duchess sneezed occasionally; and as he wore his crown over the edge of the March Hare,) \'--it was at.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(134,11,'Botble\\RealEstate\\Models\\Property',8,5,'Alice said to herself, \'Which way? Which way?\', holding her hand in hand, in couples: they were mine before. If I or she fell past it. \'Well!\' thought.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(137,2,'Botble\\RealEstate\\Models\\Property',7,3,'Paris, and Paris is the same words as before, \'It\'s all his fancy, that: he hasn\'t got no business there, at any rate,\' said Alice: \'I don\'t believe you do lessons?\' said Alice, as she could. \'The game\'s going on within--a constant howling and sneezing.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(140,6,'Botble\\RealEstate\\Models\\Property',12,1,'Alice. \'Come on, then!\' roared the Queen, pointing to the table for it, he was obliged to write with one eye; but to her chin.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(142,7,'Botble\\RealEstate\\Models\\Project',4,1,'Who ever saw in another minute the whole thing very absurd, but they began running when they had to stop and untwist it. After a while she was trying to.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(143,11,'Botble\\RealEstate\\Models\\Property',11,2,'Shakespeare, in the book,\' said the Cat.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(144,8,'Botble\\RealEstate\\Models\\Property',4,4,'King, \'that saves a world of trouble, you know, upon the other birds tittered audibly. \'What I was sent for.\' \'You ought to tell me your history, she do.\' \'I\'ll tell it her,\' said the Gryphon: and Alice called.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(145,2,'Botble\\RealEstate\\Models\\Property',14,3,'I shall have to go on. \'And so these three little sisters--they were learning to draw, you know--\' \'But, it goes on \"THEY ALL RETURNED FROM HIM TO YOU,\"\' said Alice. \'Off.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(146,5,'Botble\\RealEstate\\Models\\Property',11,5,'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at the time when I get SOMEWHERE,\' Alice added as an explanation; \'I\'ve none of them with one finger, as he spoke, and added with a kind of sob.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(149,9,'Botble\\RealEstate\\Models\\Property',15,5,'You know the meaning of half an hour or so there were ten of them, with her arms round it as far down the chimney!\' \'Oh! So.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(151,12,'Botble\\RealEstate\\Models\\Property',1,5,'As for pulling me out of the hall: in fact she was out of the water, and seemed to be listening, so she went on, \'that they\'d let Dinah stop in.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(153,11,'Botble\\RealEstate\\Models\\Project',1,4,'Alice, and, after waiting till she heard one of its mouth, and its great eyes half shut. This seemed to rise like a wild beast, screamed \'Off with.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(155,5,'Botble\\RealEstate\\Models\\Project',4,3,'I can\'t remember,\' said the White Rabbit read out, at the Queen.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(156,9,'Botble\\RealEstate\\Models\\Property',12,3,'Alice. \'Come on, then!\' roared the Queen, \'and take this young lady to see if she had forgotten the little magic bottle had now had its full effect, and she felt that this could not help thinking there MUST be.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(158,6,'Botble\\RealEstate\\Models\\Project',3,4,'Duchess replied, in a tone of the court, arm-in-arm with the other: the Duchess replied, in a melancholy way, being quite unable to move. She soon got it out again, so violently, that she had to stop and untwist.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(163,2,'Botble\\RealEstate\\Models\\Project',5,2,'That\'ll be a great many teeth, so she sat down in an undertone.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(165,7,'Botble\\RealEstate\\Models\\Property',10,3,'Queen had ordered. They very soon found an opportunity.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(169,11,'Botble\\RealEstate\\Models\\Project',4,2,'I know!\' exclaimed Alice, who was trembling down to her very much pleased at having found out a new kind of thing never happened, and now here I am to see some meaning in it,\' said the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(170,1,'Botble\\RealEstate\\Models\\Property',3,5,'I hate cats and dogs.\' It was the cat.) \'I hope they\'ll remember her saucer of milk at tea-time. Dinah my dear! I shall fall right THROUGH the earth! How funny it\'ll seem to dry me at home! Why, I wouldn\'t say anything about it, even if my head would go.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(172,2,'Botble\\RealEstate\\Models\\Property',1,1,'Alice. \'I wonder what CAN have happened to me! When I used to it!\'.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(174,9,'Botble\\RealEstate\\Models\\Project',2,3,'She got up this morning? I almost wish I hadn\'t cried so much!\' said Alice, who.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(180,12,'Botble\\RealEstate\\Models\\Property',13,2,'The Hatter shook his head contemptuously. \'I dare say you never to lose YOUR temper!\' \'Hold your tongue, Ma!\' said the.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(182,7,'Botble\\RealEstate\\Models\\Property',12,4,'Dormouse is asleep again,\' said the King: \'however, it may kiss my hand if it please your Majesty!\' the Duchess to play croquet with the strange creatures of her knowledge. \'Just think of nothing better to say whether the pleasure of making a.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(187,8,'Botble\\RealEstate\\Models\\Project',1,4,'She waited for some time busily writing in his turn; and both creatures hid their.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(189,1,'Botble\\RealEstate\\Models\\Property',15,4,'And she opened it, and then I\'ll tell you more than nine feet high. \'I wish I hadn\'t begun my tea--not above a week or so--and what with the glass table and the words \'EAT ME\' were beautifully marked in currants. \'Well, I\'ll eat it,\' said the March Hare moved into the earth. At.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(191,12,'Botble\\RealEstate\\Models\\Property',7,2,'Alice, as she could do, lying down on one knee as he came, \'Oh! the Duchess, the Duchess! Oh! won\'t she be savage if I\'ve been changed for Mabel! I\'ll try and say \"How doth the little--\"\' and she put it. She felt that she knew that.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(194,11,'Botble\\RealEstate\\Models\\Property',16,2,'Rabbit was still in existence; \'and now for the next thing is, to get to,\' said the Gryphon. \'I mean, what makes them bitter--and--and barley-sugar and such things.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(195,8,'Botble\\RealEstate\\Models\\Project',4,3,'As she said this, she was to eat or drink something or other; but the wise little.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(196,7,'Botble\\RealEstate\\Models\\Project',6,1,'But I\'d better take him his fan and a Canary called out as loud as she could, \'If you didn\'t like cats.\' \'Not like cats!\' cried the Mouse, in a hoarse, feeble voice: \'I heard every word you fellows were saying.\' \'Tell us a story.\' \'I\'m afraid I can\'t be Mabel, for I.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11'),(199,9,'Botble\\RealEstate\\Models\\Property',13,5,'BOOTS AND SHOES.\' the Gryphon only answered \'Come on!\' cried the Gryphon, the squeaking of the jurors were writing down \'stupid things!\' on their slates, and she had quite a.','approved','2025-01-17 18:01:11','2025-01-17 18:01:11');
/*!40000 ALTER TABLE `re_reviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags`
--

DROP TABLE IF EXISTS `re_tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(300) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags`
--

LOCK TABLES `re_tags` WRITE;
/*!40000 ALTER TABLE `re_tags` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `re_tags_items`
--

DROP TABLE IF EXISTS `re_tags_items`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `re_tags_items` (
  `tag_id` int unsigned NOT NULL,
  `item_id` int unsigned NOT NULL,
  `type` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `re_tags_items`
--

LOCK TABLES `re_tags_items` WRITE;
/*!40000 ALTER TABLE `re_tags_items` DISABLE KEYS */;
/*!40000 ALTER TABLE `re_tags_items` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revisions`
--

DROP TABLE IF EXISTS `revisions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `revisions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `revisionable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int NOT NULL,
  `user_id` int DEFAULT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `new_value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revisions`
--

LOCK TABLES `revisions` WRITE;
/*!40000 ALTER TABLE `revisions` DISABLE KEYS */;
INSERT INTO `revisions` VALUES (1,'Botble\\Blog\\Models\\Post',3,1,'is_featured','0','1','2019-11-18 02:59:46','2019-11-18 02:59:46'),(2,'Botble\\Blog\\Models\\Post',2,1,'is_featured','0','1','2019-11-18 03:00:10','2019-11-18 03:00:10'),(3,'Botble\\Blog\\Models\\Post',1,1,'is_featured','0','1','2019-11-18 03:00:20','2019-11-18 03:00:20'),(4,'Botble\\Blog\\Models\\Post',1,1,'description','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group','BCG leaders shared with investors at a meeting this month that real estate and renewable energy will be the two main activities of the group. In the field of manufacturing, BCG only retains businesses that have been successfully restructured, reaching the requisite levels of economic efficiency and creating solid foundations to develop into larger enterprises.','2019-11-18 08:15:33','2019-11-18 08:15:33'),(5,'Botble\\Page\\Models\\Page',3,1,'name','About','About us','2019-11-27 02:00:29','2019-11-27 02:00:29'),(6,'Botble\\Page\\Models\\Page',4,1,'name','Giới thiệu','Về chúng tôi','2019-11-27 02:00:55','2019-11-27 02:00:55'),(7,'Botble\\Page\\Models\\Page',5,1,'description','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes, providing information or personal purposes.','Copyrights and other intellectual property rights to all text, images, audio, software and other content on this site are owned by Flex Home and its affiliates. Users are allowed to view the contents of the website, cite the contents by printing, downloading the hard disk and distributing it to others for non-commercial purposes.','2019-11-27 02:35:37','2019-11-27 02:35:37'),(8,'Botble\\Page\\Models\\Page',7,1,'name','Flex Home','Homepage','2020-02-06 21:54:04','2020-02-06 21:54:04'),(9,'Botble\\Page\\Models\\Page',7,1,'template','default','homepage','2020-02-06 21:55:08','2020-02-06 21:55:08');
/*!40000 ALTER TABLE `revisions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_users`
--

DROP TABLE IF EXISTS `role_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role_users` (
  `user_id` int unsigned NOT NULL,
  `role_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `role_users_user_id_index` (`user_id`),
  KEY `role_users_role_id_index` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_users`
--

LOCK TABLES `role_users` WRITE;
/*!40000 ALTER TABLE `role_users` DISABLE KEYS */;
/*!40000 ALTER TABLE `role_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `roles` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `created_by` int unsigned NOT NULL,
  `updated_by` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_slug_unique` (`slug`),
  KEY `roles_created_by_index` (`created_by`),
  KEY `roles_updated_by_index` (`updated_by`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','Admin','{\"users.index\":true,\"users.create\":true,\"users.edit\":true,\"users.destroy\":true,\"roles.index\":true,\"roles.create\":true,\"roles.edit\":true,\"roles.destroy\":true,\"core.system\":true,\"core.cms\":true,\"core.manage.license\":true,\"systems.cronjob\":true,\"core.tools\":true,\"tools.data-synchronize\":true,\"media.index\":true,\"files.index\":true,\"files.create\":true,\"files.edit\":true,\"files.trash\":true,\"files.destroy\":true,\"folders.index\":true,\"folders.create\":true,\"folders.edit\":true,\"folders.trash\":true,\"folders.destroy\":true,\"settings.index\":true,\"settings.common\":true,\"settings.options\":true,\"settings.email\":true,\"settings.media\":true,\"settings.admin-appearance\":true,\"settings.cache\":true,\"settings.datatables\":true,\"settings.email.rules\":true,\"settings.others\":true,\"menus.index\":true,\"menus.create\":true,\"menus.edit\":true,\"menus.destroy\":true,\"optimize.settings\":true,\"pages.index\":true,\"pages.create\":true,\"pages.edit\":true,\"pages.destroy\":true,\"plugins.index\":true,\"plugins.edit\":true,\"plugins.remove\":true,\"plugins.marketplace\":true,\"core.appearance\":true,\"theme.index\":true,\"theme.activate\":true,\"theme.remove\":true,\"theme.options\":true,\"theme.custom-css\":true,\"theme.custom-js\":true,\"theme.custom-html\":true,\"theme.robots-txt\":true,\"settings.website-tracking\":true,\"widgets.index\":true,\"ads.index\":true,\"ads.create\":true,\"ads.edit\":true,\"ads.destroy\":true,\"ads.settings\":true,\"analytics.general\":true,\"analytics.page\":true,\"analytics.browser\":true,\"analytics.referrer\":true,\"analytics.settings\":true,\"announcements.index\":true,\"announcements.create\":true,\"announcements.edit\":true,\"announcements.destroy\":true,\"announcements.settings\":true,\"audit-log.index\":true,\"audit-log.destroy\":true,\"backups.index\":true,\"backups.create\":true,\"backups.restore\":true,\"backups.destroy\":true,\"plugins.blog\":true,\"posts.index\":true,\"posts.create\":true,\"posts.edit\":true,\"posts.destroy\":true,\"categories.index\":true,\"categories.create\":true,\"categories.edit\":true,\"categories.destroy\":true,\"tags.index\":true,\"tags.create\":true,\"tags.edit\":true,\"tags.destroy\":true,\"blog.settings\":true,\"posts.export\":true,\"posts.import\":true,\"captcha.settings\":true,\"career.index\":true,\"career.create\":true,\"career.edit\":true,\"career.destroy\":true,\"contacts.index\":true,\"contacts.edit\":true,\"contacts.destroy\":true,\"contact.custom-fields\":true,\"contact.settings\":true,\"languages.index\":true,\"languages.create\":true,\"languages.edit\":true,\"languages.destroy\":true,\"plugin.location\":true,\"country.index\":true,\"country.create\":true,\"country.edit\":true,\"country.destroy\":true,\"state.index\":true,\"state.create\":true,\"state.edit\":true,\"state.destroy\":true,\"city.index\":true,\"city.create\":true,\"city.edit\":true,\"city.destroy\":true,\"newsletter.index\":true,\"newsletter.destroy\":true,\"newsletter.settings\":true,\"payment.index\":true,\"payments.settings\":true,\"payment.destroy\":true,\"payments.logs\":true,\"payments.logs.show\":true,\"payments.logs.destroy\":true,\"plugins.real-estate\":true,\"real-estate.settings\":true,\"property.index\":true,\"property.create\":true,\"property.edit\":true,\"property.destroy\":true,\"project.index\":true,\"project.create\":true,\"project.edit\":true,\"project.destroy\":true,\"property_feature.index\":true,\"property_feature.create\":true,\"property_feature.edit\":true,\"property_feature.destroy\":true,\"investor.index\":true,\"investor.create\":true,\"investor.edit\":true,\"investor.destroy\":true,\"review.index\":true,\"review.create\":true,\"review.edit\":true,\"review.destroy\":true,\"consult.index\":true,\"consult.edit\":true,\"consult.destroy\":true,\"property_category.index\":true,\"property_category.create\":true,\"property_category.edit\":true,\"property_category.destroy\":true,\"facility.index\":true,\"facility.create\":true,\"facility.edit\":true,\"facility.destroy\":true,\"account.index\":true,\"account.create\":true,\"account.edit\":true,\"account.destroy\":true,\"unverified-accounts.index\":true,\"package.index\":true,\"package.create\":true,\"package.edit\":true,\"package.destroy\":true,\"consults.index\":true,\"consults.edit\":true,\"consults.destroy\":true,\"real-estate.custom-fields.index\":true,\"real-estate.custom-fields.create\":true,\"real-estate.custom-fields.edit\":true,\"real-estate.custom-fields.destroy\":true,\"invoice.index\":true,\"invoice.edit\":true,\"invoice.destroy\":true,\"invoice.template\":true,\"import-properties.index\":true,\"export-properties.index\":true,\"import-projects.index\":true,\"export-projects.index\":true,\"coupons.index\":true,\"coupons.destroy\":true,\"real-estate.settings.general\":true,\"real-estate.settings.currencies\":true,\"real-estate.settings.accounts\":true,\"real-estate.settings.invoices\":true,\"real-estate.settings.invoice-template\":true,\"social-login.settings\":true,\"plugins.translation\":true,\"translations.locales\":true,\"translations.theme-translations\":true,\"translations.index\":true,\"theme-translations.export\":true,\"other-translations.export\":true,\"theme-translations.import\":true,\"other-translations.import\":true,\"api.settings\":true,\"api.sanctum-token.index\":true,\"api.sanctum-token.create\":true,\"api.sanctum-token.destroy\":true}','Admin users role',1,1,1,'2025-01-17 18:00:53','2025-01-17 18:00:53');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `id` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `settings`
--

DROP TABLE IF EXISTS `settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `settings` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9703 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `settings`
--

LOCK TABLES `settings` WRITE;
/*!40000 ALTER TABLE `settings` DISABLE KEYS */;
INSERT INTO `settings` VALUES (270,'activated_plugins','[\"language\",\"language-advanced\",\"ads\",\"analytics\",\"announcement\",\"audit-log\",\"backup\",\"blog\",\"captcha\",\"career\",\"contact\",\"cookie-consent\",\"location\",\"newsletter\",\"payment\",\"paypal\",\"paystack\",\"razorpay\",\"real-estate\",\"rss-feed\",\"social-login\",\"sslcommerz\",\"stripe\",\"translation\"]',NULL,'2025-01-17 18:01:11'),(2933,'language_hide_default','1',NULL,'2025-01-17 18:01:11'),(2934,'language_switcher_display','dropdown',NULL,'2025-01-17 18:01:11'),(2935,'language_display','all',NULL,'2025-01-17 18:01:11'),(2936,'language_hide_languages','[]',NULL,'2025-01-17 18:01:11'),(3686,'real_estate_display_views_count_in_detail_page','1',NULL,'2024-05-14 02:27:50'),(3800,'real_estate_mandatory_fields_at_consult_form','[\"email\"]',NULL,'2025-01-17 18:01:11'),(3993,'show_admin_bar','1',NULL,'2025-01-17 18:01:11'),(3994,'theme','flex-home',NULL,'2025-01-17 18:01:11'),(3995,'media_random_hash','a03ecadedf980e3eaa3973729ee38eeb',NULL,'2025-01-17 18:01:11'),(7551,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1',NULL,'2024-05-16 02:40:17'),(8112,'analytics_dashboard_widgets','0',NULL,'2024-05-16 02:40:17'),(8169,'enable_recaptcha_botble_contact_forms_fronts_contact_form','1','2024-05-14 02:27:44','2024-05-16 02:40:17'),(8170,'analytics_dashboard_widgets','0','2024-05-14 02:27:44','2024-05-16 02:40:17'),(8662,'enable_recaptcha_botble_newsletter_forms_fronts_newsletter_form','1','2024-07-10 19:58:46','2024-07-10 19:58:46'),(9659,'admin_favicon','logo/favicon.png',NULL,'2025-01-17 18:01:11'),(9660,'admin_logo','logo/logo-white.png',NULL,'2025-01-17 18:01:11'),(9661,'permalink-botble-blog-models-post','news',NULL,'2025-01-17 18:01:11'),(9662,'permalink-botble-blog-models-category','news',NULL,'2025-01-17 18:01:11'),(9663,'payment_cod_status','1',NULL,'2025-01-17 18:01:11'),(9664,'payment_cod_description','Please pay money directly to the postman, if you choose cash on delivery method (COD).',NULL,'2025-01-17 18:01:11'),(9665,'payment_bank_transfer_status','1',NULL,'2025-01-17 18:01:11'),(9666,'payment_bank_transfer_description','Please send money to our bank account: ACB - 69270 213 19.',NULL,'2025-01-17 18:01:11'),(9667,'payment_stripe_payment_type','stripe_checkout',NULL,'2025-01-17 18:01:11'),(9668,'theme-flex-home-social_links','[[{\"key\":\"social-name\",\"value\":\"Facebook\"},{\"key\":\"social-icon\",\"value\":\"fab fa-facebook\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/facebook.com\"}],[{\"key\":\"social-name\",\"value\":\"Twitter\"},{\"key\":\"social-icon\",\"value\":\"fab fa-twitter\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/twitter.com\"}],[{\"key\":\"social-name\",\"value\":\"Youtube\"},{\"key\":\"social-icon\",\"value\":\"fab fa-youtube\"},{\"key\":\"social-url\",\"value\":\"https:\\/\\/youtube.com\"}]]',NULL,'2025-01-17 18:01:11'),(9669,'theme-flex-home-site_title','Flex Home',NULL,'2025-01-17 18:01:11'),(9670,'theme-flex-home-seo_description','Find your favorite homes at Flex Home',NULL,'2025-01-17 18:01:11'),(9671,'theme-flex-home-copyright','©%Y Flex Home is Proudly Powered by Botble Team.',NULL,'2025-01-17 18:01:11'),(9672,'theme-flex-home-favicon','logo/favicon.png',NULL,'2025-01-17 18:01:11'),(9673,'theme-flex-home-logo','logo/logo.png',NULL,'2025-01-17 18:01:11'),(9674,'theme-flex-home-cookie_consent_message','Your experience on this site will be improved by allowing cookies ',NULL,'2025-01-17 18:01:11'),(9675,'theme-flex-home-cookie_consent_learn_more_url','/cookie-policy',NULL,'2025-01-17 18:01:11'),(9676,'theme-flex-home-cookie_consent_learn_more_text','Cookie Policy',NULL,'2025-01-17 18:01:11'),(9677,'theme-flex-home-homepage_id','1',NULL,'2025-01-17 18:01:11'),(9678,'theme-flex-home-blog_page_id','2',NULL,'2025-01-17 18:01:11'),(9679,'theme-flex-home-properties_list_page_id','7',NULL,'2025-01-17 18:01:11'),(9680,'theme-flex-home-projects_list_page_id','8',NULL,'2025-01-17 18:01:11'),(9681,'theme-flex-home-home_banner','general/home-banner.jpg',NULL,'2025-01-17 18:01:11'),(9682,'theme-flex-home-breadcrumb_background','general/breadcrumb-background.jpg',NULL,'2025-01-17 18:01:11'),(9683,'theme-flex-home-address','North Link Building, 10 Admiralty Street, 757695 Singapore',NULL,'2025-01-17 18:01:11'),(9684,'theme-flex-home-hotline','18006268',NULL,'2025-01-17 18:01:11'),(9685,'theme-flex-home-email','sale@botble.com',NULL,'2025-01-17 18:01:11'),(9686,'theme-flex-home-primary_font','Nunito Sans',NULL,'2025-01-17 18:01:11'),(9687,'theme-flex-home-about-us','<p>Founded on August 28, 1993 (formerly known as Truong Thinh Phat Construction Co., Ltd.), Flex Home operates in the field of real estate business, building villas for rent.</p><br />\n<p>With the slogan &quot;Breaking time, through space&quot; with a sustainable development strategy, taking Real Estate as a focus area, Flex Home is constantly connecting between buyers and sellers in the field.</p><p>Real estate, bringing people closer together, over the distance of time and space, is a reliable place for real estate investment - an area that is constantly evolving over time.</p>',NULL,'2025-01-17 18:01:11'),(9688,'theme-flex-home-newsletter_popup_enable','1',NULL,'2025-01-17 18:01:11'),(9689,'theme-flex-home-newsletter_popup_image','general/newsletter-image.jpg',NULL,'2025-01-17 18:01:11'),(9690,'theme-flex-home-newsletter_popup_title','Let’s join our newsletter!',NULL,'2025-01-17 18:01:11'),(9691,'theme-flex-home-newsletter_popup_subtitle','Weekly Updates',NULL,'2025-01-17 18:01:11'),(9692,'theme-flex-home-newsletter_popup_description','Do not worry we don’t spam!',NULL,'2025-01-17 18:01:11'),(9693,'theme-flex-home-social_sharing','[[{\"key\":\"social\",\"value\":\"facebook\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-facebook\"}],[{\"key\":\"social\",\"value\":\"x\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-x\"}],[{\"key\":\"social\",\"value\":\"pinterest\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-pinterest\"}],[{\"key\":\"social\",\"value\":\"linkedin\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-linkedin\"}],[{\"key\":\"social\",\"value\":\"whatsapp\"},{\"key\":\"icon\",\"value\":\"ti ti-brand-whatsapp\"}],[{\"key\":\"social\",\"value\":\"email\"},{\"key\":\"icon\",\"value\":\"ti ti-mail\"}]]',NULL,'2025-01-17 18:01:11'),(9694,'announcement_max_width','80',NULL,NULL),(9695,'announcement_max_width_unit','%',NULL,NULL),(9696,'announcement_text_color','#fff',NULL,NULL),(9697,'announcement_background_color','transparent',NULL,NULL),(9698,'announcement_text_alignment','start',NULL,NULL),(9699,'announcement_dismissible','0',NULL,NULL),(9700,'announcement_placement','theme',NULL,NULL),(9701,'announcement_autoplay','1',NULL,NULL),(9702,'announcement_autoplay_delay','5000',NULL,NULL);
/*!40000 ALTER TABLE `settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs`
--

DROP TABLE IF EXISTS `slugs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference_id` int unsigned NOT NULL,
  `reference_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `slugs_reference_id_index` (`reference_id`),
  KEY `slugs_key_index` (`key`),
  KEY `slugs_prefix_index` (`prefix`),
  KEY `slugs_reference_index` (`reference_id`,`reference_type`)
) ENGINE=InnoDB AUTO_INCREMENT=9462 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs`
--

LOCK TABLES `slugs` WRITE;
/*!40000 ALTER TABLE `slugs` DISABLE KEYS */;
INSERT INTO `slugs` VALUES (1,'3-beds-villa-calpe-alicante',1,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:34:59','2019-11-17 20:34:59'),(2,'property-for-sale-johannesburg-south-africa',2,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 20:53:34','2019-11-17 20:53:34'),(3,'stunning-french-inspired-manor',3,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:09:55','2019-11-17 21:09:55'),(4,'villa-for-sale-at-bermuda-dunes',4,'Botble\\RealEstate\\Models\\Property','properties','2019-11-17 21:18:11','2023-11-27 00:46:24'),(5,'wifi',1,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:40:58','2019-11-17 21:40:58'),(6,'swimming-pool',2,'Botble\\RealEstate\\Models\\PropertyFeature','','2019-11-17 21:41:43','2019-11-17 21:41:43'),(7,'walnut-park-apartments',1,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 00:34:49','2023-11-27 00:46:24'),(8,'walnut-park-apartment',5,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 00:47:52','2019-11-18 00:47:52'),(9,'5-beds-luxury-house',6,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:05:58','2023-11-27 00:46:24'),(10,'family-victorian-view-home',7,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:12:07','2019-11-18 01:12:07'),(11,'osaka-heights',2,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 01:28:45','2019-11-18 01:28:45'),(12,'osaka-heights-apartment',8,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 01:49:36','2019-11-18 01:49:36'),(13,'private-estate-magnificent-views',9,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:02:19','2019-11-18 02:02:19'),(14,'thompsons-road-house-for-rent',10,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:16:53','2023-11-27 00:46:24'),(15,'brand-new-1-bedroom-apartment-in-first-class-location',11,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:22:48','2023-11-27 00:46:24'),(16,'news',1,'Botble\\Blog\\Models\\Category','news','2019-11-18 02:33:35','2025-01-17 18:00:53'),(17,'elegant-family-home-presents-premium-modern-living',12,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 02:47:05','2019-11-18 02:47:05'),(18,'bcg-sets-great-store-by-real-estate-negotiations',1,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:51:35','2025-01-17 18:00:53'),(19,'bcg-sets-great-store',1,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:51:35','2019-11-18 02:51:35'),(20,'private-home-sales-drop-27-in-october',2,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:55:53','2025-01-17 18:00:53'),(21,'private-home-sales',2,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 02:55:53','2019-11-18 02:55:53'),(22,'singapore-overtakes-hong-kong-in-terms-of-property-investment-prospects',3,'Botble\\Blog\\Models\\Post','news','2019-11-18 02:59:01','2025-01-17 18:00:53'),(23,'s-koreas-big-investors-flocking-to-overseas-real-estate',4,'Botble\\Blog\\Models\\Post','news','2019-11-18 03:07:27','2025-01-17 18:00:53'),(24,'south-korean-investors',3,'Botble\\Blog\\Models\\Tag','tag','2019-11-18 03:07:27','2019-11-18 03:07:27'),(25,'mimaroba-paradise',3,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:30:34','2019-11-18 03:30:34'),(26,'aegean-villas',4,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:38:13','2019-11-18 03:38:13'),(27,'aydos-forest-apartments',5,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:45:06','2023-11-27 00:46:25'),(28,'the-avila-apartments',6,'Botble\\RealEstate\\Models\\Project','projects','2019-11-18 03:53:20','2023-11-27 00:46:25'),(29,'luxury-apartments-in-singapore-for-sale',13,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:23:02','2023-11-27 00:46:24'),(30,'5-room-luxury-penthouse-for-sale-in-kuala-lumpur',14,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:36:29','2023-11-27 00:46:24'),(31,'2-floor-house-in-compound-pejaten-barat-kemang',15,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:44:44','2023-11-27 00:46:24'),(32,'apartment-muiderstraatweg-in-diemen',16,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 07:59:14','2019-11-18 07:59:14'),(33,'nice-apartment-for-rent-in-berlin',17,'Botble\\RealEstate\\Models\\Property','properties','2019-11-18 08:13:07','2019-11-18 08:13:07'),(52,'house-architecture',2,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:25','2025-01-17 18:00:53'),(53,'kien-truc-nha',3,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:49:35','2025-01-17 18:00:53'),(54,'house-design',4,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:02','2025-01-17 18:00:53'),(55,'thiet-ke-nha',5,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:17','2025-01-17 18:00:53'),(56,'building-materials',6,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:36','2025-01-17 18:00:53'),(57,'vat-lieu-xay-dung',7,'Botble\\Blog\\Models\\Category','news','2019-11-21 07:50:58','2025-01-17 18:00:53'),(65,'tin-tuc',8,'Botble\\Blog\\Models\\Category','news','2019-11-22 01:26:08','2025-01-17 18:00:53'),(74,'sales-manager-up-to-2600',1,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:43:10','2023-11-27 00:46:24'),(76,'senior-real-estate-consultant-demo',3,'Botble\\Career\\Models\\Career','careers','2019-11-30 19:52:42','2023-11-27 00:46:24'),(4610,'waldo',1,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4611,'daron',2,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4612,'trever',3,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4613,'abe',4,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4614,'naomi',5,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4615,'destiny',6,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4616,'albert',7,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4617,'julia',8,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4618,'geovany',9,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4619,'chaz',10,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(4620,'derrick',11,'Botble\\RealEstate\\Models\\Account','agents','2023-11-27 00:46:25','2025-01-17 18:01:11'),(5173,'oma',12,'Botble\\RealEstate\\Models\\Account','agents','2023-12-10 00:43:58','2025-01-17 18:01:11'),(9432,'apartment',1,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9433,'villa',2,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9434,'condo',3,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9435,'house',4,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9436,'land',5,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9437,'commercial-property',6,'Botble\\RealEstate\\Models\\Category','property-category','2025-01-17 18:00:48','2025-01-17 18:00:48'),(9438,'home',1,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9439,'news',2,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9440,'about-us',3,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9441,'contact',4,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9442,'terms-conditions',5,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9443,'cookie-policy',6,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9444,'properties',7,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9445,'projects',8,'Botble\\Page\\Models\\Page','','2025-01-17 18:00:53','2025-01-17 18:00:53'),(9446,'the-top-2020-handbag-trends-to-know',5289,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9447,'top-search-engine-optimization-strategies',5290,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9448,'which-company-would-you-choose',5291,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9449,'used-car-dealer-sales-tricks-exposed',5292,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9450,'20-ways-to-sell-your-product-faster',5293,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9451,'the-secrets-of-rich-and-famous-writers',5294,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9452,'imagine-losing-20-pounds-in-14-days',5295,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9453,'are-you-still-using-that-slow-old-typewriter',5296,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9454,'a-skin-cream-thats-proven-to-work',5297,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9455,'10-reasons-to-start-your-own-profitable-website',5298,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9456,'simple-ways-to-reduce-your-unwanted-wrinkles',5299,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9457,'apple-imac-with-retina-5k-display-review',5300,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9458,'10000-web-site-visitors-in-one-monthguaranteed',5301,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9459,'unlock-the-secrets-of-selling-high-ticket-items',5302,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9460,'4-expert-tips-on-how-to-choose-the-right-mens-wallet',5303,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59'),(9461,'sexy-clutches-how-to-buy-wear-a-designer-clutch-bag',5304,'Botble\\Blog\\Models\\Post','news','2025-01-17 18:00:59','2025-01-17 18:00:59');
/*!40000 ALTER TABLE `slugs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `slugs_translations`
--

DROP TABLE IF EXISTS `slugs_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `slugs_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slugs_id` bigint unsigned NOT NULL,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prefix` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  PRIMARY KEY (`lang_code`,`slugs_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `slugs_translations`
--

LOCK TABLES `slugs_translations` WRITE;
/*!40000 ALTER TABLE `slugs_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `slugs_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states`
--

DROP TABLE IF EXISTS `states`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int unsigned NOT NULL,
  `order` tinyint NOT NULL DEFAULT '0',
  `is_default` tinyint unsigned NOT NULL DEFAULT '0',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `is_featured` tinyint NOT NULL DEFAULT '0',
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `states_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states`
--

LOCK TABLES `states` WRITE;
/*!40000 ALTER TABLE `states` DISABLE KEYS */;
INSERT INTO `states` VALUES (1,'California',1,0,0,'published','2019-11-18 08:17:57','2023-08-13 20:47:25',NULL,'california',0,NULL);
/*!40000 ALTER TABLE `states` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `states_translations`
--

DROP TABLE IF EXISTS `states_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `states_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `states_id` int NOT NULL,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `slug` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `abbreviation` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`states_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `states_translations`
--

LOCK TABLES `states_translations` WRITE;
/*!40000 ALTER TABLE `states_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `states_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `author_id` bigint unsigned DEFAULT NULL,
  `author_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Botble\\ACL\\Models\\User',
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `status` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'published',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags`
--

LOCK TABLES `tags` WRITE;
/*!40000 ALTER TABLE `tags` DISABLE KEYS */;
INSERT INTO `tags` VALUES (1,'BCG sets great store',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:51:35','2019-11-18 02:51:35'),(2,'Private Home Sales',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 02:55:53','2019-11-18 02:55:53'),(3,'South Korean investors',1,'Botble\\ACL\\Models\\User','','published','2019-11-18 03:07:27','2019-11-18 03:07:27');
/*!40000 ALTER TABLE `tags` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tags_translations`
--

DROP TABLE IF EXISTS `tags_translations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tags_translations` (
  `lang_code` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tags_id` int NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(400) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`lang_code`,`tags_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tags_translations`
--

LOCK TABLES `tags_translations` WRITE;
/*!40000 ALTER TABLE `tags_translations` DISABLE KEYS */;
/*!40000 ALTER TABLE `tags_translations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `transactions`
--

DROP TABLE IF EXISTS `transactions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `transactions` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `credits` int unsigned NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `account_id` bigint unsigned DEFAULT NULL,
  `type` varchar(191) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'add',
  `payment_id` int unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `transactions`
--

LOCK TABLES `transactions` WRITE;
/*!40000 ALTER TABLE `transactions` DISABLE KEYS */;
/*!40000 ALTER TABLE `transactions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_meta`
--

DROP TABLE IF EXISTS `user_meta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user_meta` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `key` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `user_id` int unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `user_meta_user_id_index` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_meta`
--

LOCK TABLES `user_meta` WRITE;
/*!40000 ALTER TABLE `user_meta` DISABLE KEYS */;
INSERT INTO `user_meta` VALUES (1,'admin-locale','en',1,'2019-11-17 20:19:14','2019-11-30 19:25:04');
/*!40000 ALTER TABLE `user_meta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permissions` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(60) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `avatar_id` int unsigned DEFAULT NULL,
  `super_user` tinyint(1) NOT NULL DEFAULT '0',
  `manage_supers` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'cleve48@feest.com',NULL,'$2y$12$K0feszRf/6nOsrgXsPl6aeamsnCgLSDsAtNSNOzN7IrE7fo9J5//q',NULL,'2025-01-17 18:00:53','2025-01-17 18:00:53',NULL,NULL,'Donnie','Johns','admin',NULL,1,1);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `widgets`
--

DROP TABLE IF EXISTS `widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `widgets` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `widget_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `sidebar_id` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `theme` varchar(120) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `position` tinyint unsigned NOT NULL DEFAULT '0',
  `data` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `widgets`
--

LOCK TABLES `widgets` WRITE;
/*!40000 ALTER TABLE `widgets` DISABLE KEYS */;
INSERT INTO `widgets` VALUES (1,'CustomMenuWidget','footer_sidebar','flex-home',1,'{\"id\":\"CustomMenuWidget\",\"name\":\"About\",\"menu_id\":\"about\"}','2025-01-17 18:01:11','2025-01-17 18:01:11'),(2,'CustomMenuWidget','footer_sidebar','flex-home',2,'{\"id\":\"CustomMenuWidget\",\"name\":\"More Information\",\"menu_id\":\"more-information\"}','2025-01-17 18:01:11','2025-01-17 18:01:11'),(3,'CustomMenuWidget','footer_sidebar','flex-home',3,'{\"id\":\"CustomMenuWidget\",\"name\":\"News\",\"menu_id\":\"news\"}','2025-01-17 18:01:11','2025-01-17 18:01:11');
/*!40000 ALTER TABLE `widgets` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-01-18  8:01:12
