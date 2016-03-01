-- MySQL dump 10.13  Distrib 5.5.41, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: lexus_golmart
-- ------------------------------------------------------
-- Server version	5.5.41-0ubuntu0.14.04.1

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
-- Table structure for table `oc_address`
--

DROP TABLE IF EXISTS `oc_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_address` (
  `address_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `company` varchar(40) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL DEFAULT '0',
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  PRIMARY KEY (`address_id`),
  KEY `customer_id` (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_address`
--

LOCK TABLES `oc_address` WRITE;
/*!40000 ALTER TABLE `oc_address` DISABLE KEYS */;
INSERT INTO `oc_address` VALUES (1,1,'Ngoc','Dang','Brainos','Phu Tho','Ha Noi','Ha Noi','1001',230,3776,''),(2,2,'abc','abc','','abc','abc','abc','abc',222,3528,''),(3,3,'test','test','test','test','test','test','1001',222,3524,''),(4,4,'ngoc','ngoc','','asdfads','dasfasdf','dasfasdf','sdafdasfsd',207,3161,''),(5,5,'Test','Test','test','test','test','test','admin',219,3468,''),(6,6,'demo','demo','','ghgh gh','','gfgfg fg','0000',208,3177,''),(7,7,'admin','admin','address1','address1','address1','address1','012343',206,3154,''),(8,8,'demo','demo','address','address','address','address','012444',219,3442,'');
/*!40000 ALTER TABLE `oc_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate`
--

DROP TABLE IF EXISTS `oc_affiliate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate` (
  `affiliate_id` int(11) NOT NULL AUTO_INCREMENT,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `company` varchar(40) NOT NULL,
  `website` varchar(255) NOT NULL,
  `address_1` varchar(128) NOT NULL,
  `address_2` varchar(128) NOT NULL,
  `city` varchar(128) NOT NULL,
  `postcode` varchar(10) NOT NULL,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `commission` decimal(4,2) NOT NULL DEFAULT '0.00',
  `tax` varchar(64) NOT NULL,
  `payment` varchar(6) NOT NULL,
  `cheque` varchar(100) NOT NULL,
  `paypal` varchar(64) NOT NULL,
  `bank_name` varchar(64) NOT NULL,
  `bank_branch_number` varchar(64) NOT NULL,
  `bank_swift_code` varchar(64) NOT NULL,
  `bank_account_name` varchar(64) NOT NULL,
  `bank_account_number` varchar(64) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate`
--

LOCK TABLES `oc_affiliate` WRITE;
/*!40000 ALTER TABLE `oc_affiliate` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_activity`
--

DROP TABLE IF EXISTS `oc_affiliate_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_activity`
--

LOCK TABLES `oc_affiliate_activity` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_activity` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_login`
--

DROP TABLE IF EXISTS `oc_affiliate_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_login` (
  `affiliate_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`affiliate_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_login`
--

LOCK TABLES `oc_affiliate_login` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_login` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_affiliate_transaction`
--

DROP TABLE IF EXISTS `oc_affiliate_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_affiliate_transaction` (
  `affiliate_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `affiliate_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`affiliate_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_affiliate_transaction`
--

LOCK TABLES `oc_affiliate_transaction` WRITE;
/*!40000 ALTER TABLE `oc_affiliate_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_affiliate_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_api`
--

DROP TABLE IF EXISTS `oc_api`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_api` (
  `api_id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(64) NOT NULL,
  `firstname` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`api_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_api`
--

LOCK TABLES `oc_api` WRITE;
/*!40000 ALTER TABLE `oc_api` DISABLE KEYS */;
INSERT INTO `oc_api` VALUES (1,'orK0Y3RXcnNAPAsd9L6nCSZlkpELiu4MbEDz8VNb8acObKsaVpEY8dAiJEuryo4Q','','','t8GrTTJStlhLvQmH5qg3JgcSlMAa04qj3wRMGbfzCCBySn6OTcHd9kwkwwBmrrMledxk4Ta7VbwoFs3ZLB3KlpvXcwAKeMv8pjjk29hObU3hCw6Ox0ZYfKw87wIb83aocAOVAwjcGd9JP6YDwxcS7OQ5AYX9Sxnvy2GypqQwJQ6ZMUc9H4SFJiAJ7XJPLxB9pIyVzEH9UDYhX1hfwzk5YkFV8OlKCnJrv7CkCKkXN85l0cGnSqiqRoCQ3oa5RkmC',1,'2014-12-17 10:03:34','2014-12-17 10:03:34'),(2,'09vx57rDCIk5xmCfNiPcv5wlEIFZSk8Jjt6eroiuxIpkvrF9QVbBQNnUWstpTry2','','','bvXJZ53MEix0Q2zgNRiefLy14ihNQVGsGe1gautfTgVjZKGmcpH716zvfW9vrGeykVUAGEfak1A9CHmewubnqQZLmY7UebIFxdF4hlUIcVIecv9Ofa2LqRXTqUnKwvPjPVew7z5aKE5mz41VVthBB4VrP82BuIl9eFwb4s2Fwxrmsj8DSfFUaaBpZ3rJCTJgY67To0YbnGEVpCZ8ieS84UoUNWeQpnwEkuXPkwrO3vjiy9hWdzUYJ9sXVMnA0aEa',1,'2015-05-04 10:39:11','2015-05-04 10:39:11'),(3,'fOK9MK5TNh4V62VNQKY3UXIKG8eCrB2MQDMcOHvcpqxmiIzyTOsol0zryUugVmtl','','','q5D4CzWsfKUDTJ2mYkR9bGrQacwvEfWvbapdPCMvMgzfqrIESZDtfvA5NwqSSDDtetNuvZf75UdlClpUAtEgfEbs1IBJMF3qyGajf6hbQADTmsomcsI8xkqpssz5xslmzCLU8twPuziWiN9A5I9tsqYbYNWM68yvAAG9t2Odsx0QAzR68Qqq6EIVSehPcVBdVHcFArjteZ9fPRcNiI4eNC0ghXvAtwdE46K5ntoIJooZ5GndPh8cky9IMvI5hm9c',1,'2015-06-04 10:46:12','2015-06-04 10:46:12'),(4,'56esLVqDrbuq7HVGlrm5DU2PH1DTkCAg8fPJ15NjX7PVElbqTEmWYelgWo06q0dp','','','WsyOoCxBADWEoyv72XUR16yNkoKRfo71WwGAy3Cy6Z3lNojGB3Y30MHb0SsW6pNScUTQNVFKu8w8nVFoPdiFqpgg8P245GNXagno1tzmrllU6q9LKiR0OxXMDQG8WTVx09cssRUa25vzmuBwTSmhG9tJP0HmKdaAc2sLKDlD8W2lH3XaMA8TArcQik2sDTtgMbrWeSZdpSEwMcNYcLrc3KsbulKy43UHVCdzV3TALXxX0BwSMdvGoeiYFsNAmiH7',1,'2015-06-27 01:41:56','2015-06-27 01:41:56'),(5,'nln2IVTMDYebnRO5BL8IfCPyHH68KtFxUspdE9pHXJjAby6d94lf70UE8RCIAI6V','','','1ly5kdD8nm8Eb5hb0J6xAR18j4HjDD54ptzQN2O1fN56IdY8nVwnmnmLitvmxrgcaVsoO6ftKbqS5ERiZDMCryOQiA2VrYxHugw9dRsnsZ6odNM3RY68NKPwKHH1g59RcwQ5D9iwYea2snv9Cs8P2NBDVJ41F4IhqZcuYBhwg7oPlaOnIN2Ba4EvE9nJ3vqkLJVjL2WszB7abLDkY6mz1qk5pOEj9vKL5fuGXGyNHvoj7sKWowLgdwbJAftAR3LM',1,'2015-07-06 09:24:53','2015-07-06 09:24:53');
/*!40000 ALTER TABLE `oc_api` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute`
--

DROP TABLE IF EXISTS `oc_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute` (
  `attribute_id` int(11) NOT NULL AUTO_INCREMENT,
  `attribute_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute`
--

LOCK TABLES `oc_attribute` WRITE;
/*!40000 ALTER TABLE `oc_attribute` DISABLE KEYS */;
INSERT INTO `oc_attribute` VALUES (1,6,1),(2,6,5),(3,6,3),(4,3,1),(5,3,2),(6,3,3),(7,3,4),(8,3,5),(9,3,6),(10,3,7),(11,3,8);
/*!40000 ALTER TABLE `oc_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_description`
--

DROP TABLE IF EXISTS `oc_attribute_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_description` (
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_description`
--

LOCK TABLES `oc_attribute_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_description` VALUES (1,1,'Description'),(2,1,'No. of Cores'),(4,1,'test 1'),(5,1,'test 2'),(6,1,'test 3'),(7,1,'test 4'),(8,1,'test 5'),(9,1,'test 6'),(10,1,'test 7'),(11,1,'test 8'),(3,1,'Clockspeed'),(1,2,'Description'),(2,2,'No. of Cores'),(4,2,'test 1'),(5,2,'test 2'),(6,2,'test 3'),(7,2,'test 4'),(8,2,'test 5'),(9,2,'test 6'),(10,2,'test 7'),(11,2,'test 8'),(3,2,'Clockspeed');
/*!40000 ALTER TABLE `oc_attribute_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group`
--

DROP TABLE IF EXISTS `oc_attribute_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group` (
  `attribute_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`attribute_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group`
--

LOCK TABLES `oc_attribute_group` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group` DISABLE KEYS */;
INSERT INTO `oc_attribute_group` VALUES (3,2),(4,1),(5,3),(6,4);
/*!40000 ALTER TABLE `oc_attribute_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_attribute_group_description`
--

DROP TABLE IF EXISTS `oc_attribute_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_attribute_group_description` (
  `attribute_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`attribute_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_attribute_group_description`
--

LOCK TABLES `oc_attribute_group_description` WRITE;
/*!40000 ALTER TABLE `oc_attribute_group_description` DISABLE KEYS */;
INSERT INTO `oc_attribute_group_description` VALUES (3,1,'Memory'),(4,1,'Technical'),(5,1,'Motherboard'),(6,1,'Processor'),(3,2,'Memory'),(4,2,'Technical'),(5,2,'Motherboard'),(6,2,'Processor');
/*!40000 ALTER TABLE `oc_attribute_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner`
--

DROP TABLE IF EXISTS `oc_banner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner` (
  `banner_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`banner_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner`
--

LOCK TABLES `oc_banner` WRITE;
/*!40000 ALTER TABLE `oc_banner` DISABLE KEYS */;
INSERT INTO `oc_banner` VALUES (6,'HP Products',1),(7,'Home Page Slideshow',1),(8,'Manufacturers',1);
/*!40000 ALTER TABLE `oc_banner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image`
--

DROP TABLE IF EXISTS `oc_banner_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image` (
  `banner_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `banner_id` int(11) NOT NULL,
  `link` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`banner_image_id`)
) ENGINE=MyISAM AUTO_INCREMENT=147 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image`
--

LOCK TABLES `oc_banner_image` WRITE;
/*!40000 ALTER TABLE `oc_banner_image` DISABLE KEYS */;
INSERT INTO `oc_banner_image` VALUES (79,7,'index.php?route=product/product&amp;path=57&amp;product_id=49','catalog/demo/banners/iPhone6.jpg',0),(87,6,'index.php?route=product/manufacturer/info&amp;manufacturer_id=7','catalog/demo/compaq_presario.jpg',0),(80,7,'','catalog/demo/banners/MacBookAir.jpg',0),(145,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/6.png',5),(144,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/5.png',4),(143,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/4.png',3),(142,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/3.png',2),(141,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/2.png',1),(140,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/1.png',0),(146,8,'index.php?route=product/manufacturer/info&amp;manufacturer_id=8','catalog/demo/manufacturer/3.png',6);
/*!40000 ALTER TABLE `oc_banner_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_banner_image_description`
--

DROP TABLE IF EXISTS `oc_banner_image_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_banner_image_description` (
  `banner_image_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `banner_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  PRIMARY KEY (`banner_image_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_banner_image_description`
--

LOCK TABLES `oc_banner_image_description` WRITE;
/*!40000 ALTER TABLE `oc_banner_image_description` DISABLE KEYS */;
INSERT INTO `oc_banner_image_description` VALUES (79,1,7,'iPhone 6'),(87,1,6,'HP Banner'),(80,1,7,'MacBookAir'),(146,1,8,'logo'),(79,2,7,'iPhone 6'),(87,2,6,'HP Banner'),(145,2,8,'logo'),(145,1,8,'logo'),(80,2,7,'MacBookAir'),(144,2,8,'logo'),(144,1,8,'logo'),(143,2,8,'logo'),(143,1,8,'logo'),(142,2,8,'logo'),(142,1,8,'logo'),(141,2,8,'logo'),(141,1,8,'logo'),(140,2,8,'logo'),(140,1,8,'logo'),(146,2,8,'logo');
/*!40000 ALTER TABLE `oc_banner_image_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category`
--

DROP TABLE IF EXISTS `oc_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) DEFAULT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `top` tinyint(1) NOT NULL,
  `column` int(3) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`category_id`),
  KEY `parent_id` (`parent_id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category`
--

LOCK TABLES `oc_category` WRITE;
/*!40000 ALTER TABLE `oc_category` DISABLE KEYS */;
INSERT INTO `oc_category` VALUES (25,'catalog/demo/product/category.jpg',0,1,1,3,1,'2009-01-31 01:04:25','2015-04-06 11:02:37'),(27,'catalog/demo/product/category.jpg',20,0,0,2,1,'2009-01-31 01:55:34','2015-05-25 01:58:13'),(20,'catalog/demo/product/category.jpg',0,1,1,1,1,'2009-01-05 21:49:43','2015-06-25 11:28:20'),(24,'catalog/demo/product/category.jpg',0,1,1,5,1,'2009-01-20 02:36:26','2015-04-06 11:03:46'),(18,'catalog/demo/product/category.jpg',0,1,0,2,1,'2009-01-05 21:49:15','2015-06-25 11:27:57'),(17,'catalog/demo/product/category.jpg',0,1,1,4,1,'2009-01-03 21:08:57','2015-05-25 01:55:25'),(28,'catalog/demo/product/category.jpg',25,0,0,1,1,'2009-02-02 13:11:12','2015-05-25 01:56:46'),(26,'catalog/demo/product/category.jpg',20,0,0,1,1,'2009-01-31 01:55:14','2015-05-25 01:56:04'),(33,'catalog/demo/product/category.jpg',0,1,1,6,1,'2009-02-03 14:17:55','2015-06-25 11:46:01'),(34,'catalog/demo/product/category.jpg',0,1,4,7,1,'2009-02-03 14:18:11','2015-04-06 11:05:24'),(36,'catalog/demo/product/category.jpg',25,0,0,0,1,'2010-09-17 10:07:13','2015-05-25 01:54:39'),(39,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-09-18 14:04:17','2011-04-22 01:55:20'),(40,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-09-18 14:05:36','2010-09-18 14:05:36'),(41,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-09-18 14:05:49','2011-04-22 01:55:30'),(42,'catalog/demo/product/category.jpg',27,0,0,0,1,'2010-09-18 14:06:34','2014-12-30 11:50:55'),(43,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-09-18 14:06:49','2011-04-22 01:55:40'),(44,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-09-21 15:39:21','2010-11-07 20:30:55'),(45,'catalog/demo/product/category.jpg',18,0,0,0,1,'2010-09-24 18:29:16','2015-05-25 01:53:58'),(46,'catalog/demo/product/category.jpg',18,0,0,0,1,'2010-09-24 18:29:31','2015-05-25 01:53:36'),(47,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:13:16','2010-11-07 11:13:16'),(48,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:13:33','2010-11-07 11:13:33'),(49,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:14:04','2010-11-07 11:14:04'),(50,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:14:23','2011-04-22 01:16:01'),(51,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:14:38','2011-04-22 01:16:13'),(52,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:16:09','2011-04-22 01:54:57'),(53,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:28:53','2011-04-22 01:14:36'),(54,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-07 11:29:16','2011-04-22 01:16:50'),(55,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-08 10:31:32','2010-11-08 10:31:32'),(56,'catalog/demo/product/category.jpg',34,0,0,0,1,'2010-11-08 10:31:50','2011-04-22 01:16:37'),(57,'catalog/demo/product/category.jpg',0,1,1,3,1,'2011-04-26 08:53:16','2015-05-25 01:55:44'),(58,'catalog/demo/product/category.jpg',52,0,0,0,1,'2011-05-08 13:44:16','2011-05-08 13:44:16'),(59,'',20,0,1,0,1,'2014-12-26 09:32:47','2015-05-25 01:56:21'),(60,'',25,0,1,0,1,'2015-01-07 10:30:17','2015-05-25 01:57:04'),(61,'',25,0,1,0,1,'2015-01-07 10:31:40','2015-05-25 01:57:54'),(62,'',25,0,1,0,1,'2015-01-07 10:35:54','2015-01-07 10:35:54'),(63,'',25,0,1,0,1,'2015-01-07 10:57:54','2015-05-25 01:54:18'),(64,'',33,0,1,0,1,'2015-06-25 11:29:27','2015-06-25 11:29:27'),(65,'',33,0,1,0,1,'2015-06-25 11:29:50','2015-06-25 11:46:59'),(66,'',33,0,1,0,1,'2015-06-25 11:30:19','2015-06-25 11:30:35'),(67,'',33,0,1,0,1,'2015-06-25 11:31:07','2015-06-25 11:31:07'),(68,'',33,0,1,0,1,'2015-06-25 11:31:35','2015-06-25 11:31:35'),(69,'',18,0,1,0,1,'2015-06-25 11:32:39','2015-06-25 11:33:19'),(70,'',18,0,1,0,1,'2015-06-25 11:34:13','2015-06-25 11:34:13'),(71,'',18,0,1,0,1,'2015-06-25 11:34:58','2015-06-25 11:34:58'),(72,'',20,0,1,0,1,'2015-06-25 11:35:34','2015-06-25 11:35:34'),(73,'',20,0,1,0,1,'2015-06-25 11:36:09','2015-06-25 11:36:09'),(74,'',20,0,1,0,1,'2015-06-25 11:36:36','2015-06-25 11:36:36');
/*!40000 ALTER TABLE `oc_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_description`
--

DROP TABLE IF EXISTS `oc_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_description`
--

LOCK TABLES `oc_category_description` WRITE;
/*!40000 ALTER TABLE `oc_category_description` DISABLE KEYS */;
INSERT INTO `oc_category_description` VALUES (20,2,'furniture','&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n','furniture','Example of category description',''),(57,2,'Skorts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Skorts','',''),(34,2,'Knitware','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','Knitware','',''),(33,2,'clothing','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','clothing','',''),(24,2,'T-shirts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','T-shirts','',''),(33,1,'clothing','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','clothing','',''),(27,2,'Petites','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Petites','',''),(27,1,'Petites','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Petites','',''),(26,1,'Lingerie','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie','',''),(17,1,'Skirts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Skirts','',''),(25,2,'Electronics','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Kids &amp; Baby','',''),(24,1,'T-shirts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','T-shirts','',''),(20,1,'furniture','&lt;p&gt;\r\n	Example of category description text&lt;/p&gt;\r\n','furniture','Example of category description',''),(36,1,'Trousers','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Trousers','',''),(17,2,'Skirts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Skirts','',''),(34,1,'Knitware','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','Knitware','',''),(18,2,'electronics','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','electronics','',''),(18,1,'electronics','&lt;p&gt;\r\n	Shop Laptop feature only the best laptop deals on the market. By comparing laptop deals from the likes of PC World, Comet, Dixons, The Link and Carphone Warehouse, Shop Laptop has the most comprehensive selection of laptops on the internet. At Shop Laptop, we pride ourselves on offering customers the very best laptop deals. From refurbished laptops to netbooks, Shop Laptop ensures that every laptop - in every colour, style, size and technical spec - is featured on the site at the lowest possible price.&lt;/p&gt;\r\n','electronics','',''),(45,1,' Knitwear','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',' Knitwear','',''),(46,1,'Dresses','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dresses','',''),(57,1,'Skorts','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Skorts','',''),(59,1,'Swimwear','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Swimwear','',''),(59,2,'Swimwear','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Swimwear','',''),(25,1,'Kids &amp; Baby','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Kids &amp; Baby','',''),(28,2,'Jumpsuits','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Jumpsuits','',''),(36,2,'Trousers','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Trousers','',''),(60,2,'Playsuits ','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Playsuits ','',''),(61,1,'Accessories','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Accessories','',''),(60,1,'Playsuits ','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Playsuits ','',''),(28,1,'Jumpsuits','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Jumpsuits','',''),(61,2,'Accessories','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Accessories','',''),(62,1,'Wireless Routers','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Meta Tag Title','',''),(62,2,'Wireless Routers','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Meta Tag Title','',''),(63,2,'Leggings','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Leggings','',''),(63,1,'Leggings','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Leggings','',''),(46,2,'Dresses','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Dresses','',''),(45,2,' Knitwear','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',' Knitwear','',''),(26,2,'Lingerie','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Lingerie','',''),(64,1,'Women','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Women','',''),(64,2,'Women','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Women','',''),(65,2,'Men','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Men','',''),(66,2,'Jewelry','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Jewelry','',''),(66,1,'Jewelry','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Jewelry','',''),(67,1,'Watches','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Watches','',''),(67,2,'Watches','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Watches','',''),(68,1,'Accessories','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Accessories','',''),(68,2,'Accessories','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Accessories','',''),(69,2,'Smart Phone','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Smart Phone','',''),(69,1,'Smart Phone','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Smart Phone','',''),(70,1,'Cameras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cameras','',''),(70,2,'Cameras','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Cameras','',''),(71,1,'Tablets','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Tablets','',''),(71,2,'Tablets','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Tablets','',''),(72,1,'Living','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Living','',''),(72,2,'Living','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Living','',''),(73,1,'Bathroom','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Bathroom','',''),(73,2,'Bathroom','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Bathroom','',''),(74,1,'Bedroom','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Bedroom','',''),(74,2,'Bedroom','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Bedroom','',''),(65,1,'Men','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','Men','','');
/*!40000 ALTER TABLE `oc_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_filter`
--

DROP TABLE IF EXISTS `oc_category_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_filter` (
  `category_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_filter`
--

LOCK TABLES `oc_category_filter` WRITE;
/*!40000 ALTER TABLE `oc_category_filter` DISABLE KEYS */;
INSERT INTO `oc_category_filter` VALUES (17,1),(17,2),(17,3),(17,4),(17,5),(18,1),(18,2),(18,3),(18,4),(20,1),(20,2),(20,3),(20,4),(20,5),(24,1),(24,2),(24,3),(24,4),(24,5),(25,1),(25,2),(25,3),(25,4),(25,5),(33,1),(33,2),(33,3),(33,4),(33,5),(34,1),(34,2),(34,3),(34,4),(34,5),(57,1),(57,2),(57,3),(57,4),(57,5);
/*!40000 ALTER TABLE `oc_category_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_path`
--

DROP TABLE IF EXISTS `oc_category_path`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_path` (
  `category_id` int(11) NOT NULL,
  `path_id` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`path_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_path`
--

LOCK TABLES `oc_category_path` WRITE;
/*!40000 ALTER TABLE `oc_category_path` DISABLE KEYS */;
INSERT INTO `oc_category_path` VALUES (25,25,0),(28,28,1),(28,25,0),(60,60,1),(60,25,0),(36,36,1),(36,25,0),(20,20,0),(27,27,1),(27,20,0),(26,26,1),(26,20,0),(24,24,0),(18,18,0),(45,45,1),(45,18,0),(46,46,1),(46,18,0),(17,17,0),(33,33,0),(34,34,0),(39,39,1),(39,34,0),(40,40,1),(40,34,0),(41,41,1),(41,34,0),(42,42,2),(42,20,0),(43,43,1),(43,34,0),(44,44,1),(44,34,0),(47,47,1),(47,34,0),(48,48,1),(48,34,0),(49,49,1),(49,34,0),(50,50,1),(50,34,0),(51,51,1),(51,34,0),(52,52,1),(52,34,0),(58,58,2),(58,52,1),(58,34,0),(53,53,1),(53,34,0),(54,54,1),(54,34,0),(55,55,1),(55,34,0),(56,56,1),(56,34,0),(57,57,0),(59,20,0),(59,59,1),(42,27,1),(61,25,0),(61,61,1),(62,25,0),(62,62,1),(63,25,0),(63,63,1),(64,33,0),(64,64,1),(65,65,1),(66,66,1),(66,33,0),(65,33,0),(67,33,0),(67,67,1),(68,33,0),(68,68,1),(69,69,1),(69,18,0),(70,18,0),(70,70,1),(71,18,0),(71,71,1),(72,20,0),(72,72,1),(73,20,0),(73,73,1),(74,20,0),(74,74,1);
/*!40000 ALTER TABLE `oc_category_path` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_layout`
--

DROP TABLE IF EXISTS `oc_category_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_layout` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_layout`
--

LOCK TABLES `oc_category_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_category_to_layout` DISABLE KEYS */;
INSERT INTO `oc_category_to_layout` VALUES (20,0,0),(59,0,0),(42,0,0),(25,0,0),(36,0,0),(60,0,0),(61,0,0),(27,0,0),(28,0,0),(62,0,0),(63,0,0),(18,0,0),(24,0,0),(33,0,0),(34,0,0),(46,0,0),(45,0,0),(17,0,0),(57,0,0),(26,0,0),(64,0,0),(65,0,0),(66,0,0),(67,0,0),(68,0,0),(69,0,0),(70,0,0),(71,0,0),(72,0,0),(73,0,0),(74,0,0);
/*!40000 ALTER TABLE `oc_category_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_category_to_store`
--

DROP TABLE IF EXISTS `oc_category_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_category_to_store` (
  `category_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`category_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_category_to_store`
--

LOCK TABLES `oc_category_to_store` WRITE;
/*!40000 ALTER TABLE `oc_category_to_store` DISABLE KEYS */;
INSERT INTO `oc_category_to_store` VALUES (17,0),(18,0),(20,0),(24,0),(25,0),(26,0),(27,0),(28,0),(33,0),(34,0),(36,0),(39,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0),(51,0),(52,0),(53,0),(54,0),(55,0),(56,0),(57,0),(58,0),(59,0),(60,0),(61,0),(62,0),(63,0),(64,0),(65,0),(66,0),(67,0),(68,0),(69,0),(70,0),(71,0),(72,0),(73,0),(74,0);
/*!40000 ALTER TABLE `oc_category_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_country`
--

DROP TABLE IF EXISTS `oc_country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_country` (
  `country_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `iso_code_2` varchar(2) NOT NULL,
  `iso_code_3` varchar(3) NOT NULL,
  `address_format` text NOT NULL,
  `postcode_required` tinyint(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`country_id`)
) ENGINE=MyISAM AUTO_INCREMENT=258 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_country`
--

LOCK TABLES `oc_country` WRITE;
/*!40000 ALTER TABLE `oc_country` DISABLE KEYS */;
INSERT INTO `oc_country` VALUES (1,'Afghanistan','AF','AFG','',0,1),(2,'Albania','AL','ALB','',0,1),(3,'Algeria','DZ','DZA','',0,1),(4,'American Samoa','AS','ASM','',0,1),(5,'Andorra','AD','AND','',0,1),(6,'Angola','AO','AGO','',0,1),(7,'Anguilla','AI','AIA','',0,1),(8,'Antarctica','AQ','ATA','',0,1),(9,'Antigua and Barbuda','AG','ATG','',0,1),(10,'Argentina','AR','ARG','',0,1),(11,'Armenia','AM','ARM','',0,1),(12,'Aruba','AW','ABW','',0,1),(13,'Australia','AU','AUS','',0,1),(14,'Austria','AT','AUT','',0,1),(15,'Azerbaijan','AZ','AZE','',0,1),(16,'Bahamas','BS','BHS','',0,1),(17,'Bahrain','BH','BHR','',0,1),(18,'Bangladesh','BD','BGD','',0,1),(19,'Barbados','BB','BRB','',0,1),(20,'Belarus','BY','BLR','',0,1),(21,'Belgium','BE','BEL','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',0,1),(22,'Belize','BZ','BLZ','',0,1),(23,'Benin','BJ','BEN','',0,1),(24,'Bermuda','BM','BMU','',0,1),(25,'Bhutan','BT','BTN','',0,1),(26,'Bolivia','BO','BOL','',0,1),(27,'Bosnia and Herzegovina','BA','BIH','',0,1),(28,'Botswana','BW','BWA','',0,1),(29,'Bouvet Island','BV','BVT','',0,1),(30,'Brazil','BR','BRA','',0,1),(31,'British Indian Ocean Territory','IO','IOT','',0,1),(32,'Brunei Darussalam','BN','BRN','',0,1),(33,'Bulgaria','BG','BGR','',0,1),(34,'Burkina Faso','BF','BFA','',0,1),(35,'Burundi','BI','BDI','',0,1),(36,'Cambodia','KH','KHM','',0,1),(37,'Cameroon','CM','CMR','',0,1),(38,'Canada','CA','CAN','',0,1),(39,'Cape Verde','CV','CPV','',0,1),(40,'Cayman Islands','KY','CYM','',0,1),(41,'Central African Republic','CF','CAF','',0,1),(42,'Chad','TD','TCD','',0,1),(43,'Chile','CL','CHL','',0,1),(44,'China','CN','CHN','',0,1),(45,'Christmas Island','CX','CXR','',0,1),(46,'Cocos (Keeling) Islands','CC','CCK','',0,1),(47,'Colombia','CO','COL','',0,1),(48,'Comoros','KM','COM','',0,1),(49,'Congo','CG','COG','',0,1),(50,'Cook Islands','CK','COK','',0,1),(51,'Costa Rica','CR','CRI','',0,1),(52,'Cote D\'Ivoire','CI','CIV','',0,1),(53,'Croatia','HR','HRV','',0,1),(54,'Cuba','CU','CUB','',0,1),(55,'Cyprus','CY','CYP','',0,1),(56,'Czech Republic','CZ','CZE','',0,1),(57,'Denmark','DK','DNK','',0,1),(58,'Djibouti','DJ','DJI','',0,1),(59,'Dominica','DM','DMA','',0,1),(60,'Dominican Republic','DO','DOM','',0,1),(61,'East Timor','TL','TLS','',0,1),(62,'Ecuador','EC','ECU','',0,1),(63,'Egypt','EG','EGY','',0,1),(64,'El Salvador','SV','SLV','',0,1),(65,'Equatorial Guinea','GQ','GNQ','',0,1),(66,'Eritrea','ER','ERI','',0,1),(67,'Estonia','EE','EST','',0,1),(68,'Ethiopia','ET','ETH','',0,1),(69,'Falkland Islands (Malvinas)','FK','FLK','',0,1),(70,'Faroe Islands','FO','FRO','',0,1),(71,'Fiji','FJ','FJI','',0,1),(72,'Finland','FI','FIN','',0,1),(74,'France, Metropolitan','FR','FRA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(75,'French Guiana','GF','GUF','',0,1),(76,'French Polynesia','PF','PYF','',0,1),(77,'French Southern Territories','TF','ATF','',0,1),(78,'Gabon','GA','GAB','',0,1),(79,'Gambia','GM','GMB','',0,1),(80,'Georgia','GE','GEO','',0,1),(81,'Germany','DE','DEU','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(82,'Ghana','GH','GHA','',0,1),(83,'Gibraltar','GI','GIB','',0,1),(84,'Greece','GR','GRC','',0,1),(85,'Greenland','GL','GRL','',0,1),(86,'Grenada','GD','GRD','',0,1),(87,'Guadeloupe','GP','GLP','',0,1),(88,'Guam','GU','GUM','',0,1),(89,'Guatemala','GT','GTM','',0,1),(90,'Guinea','GN','GIN','',0,1),(91,'Guinea-Bissau','GW','GNB','',0,1),(92,'Guyana','GY','GUY','',0,1),(93,'Haiti','HT','HTI','',0,1),(94,'Heard and Mc Donald Islands','HM','HMD','',0,1),(95,'Honduras','HN','HND','',0,1),(96,'Hong Kong','HK','HKG','',0,1),(97,'Hungary','HU','HUN','',0,1),(98,'Iceland','IS','ISL','',0,1),(99,'India','IN','IND','',0,1),(100,'Indonesia','ID','IDN','',0,1),(101,'Iran (Islamic Republic of)','IR','IRN','',0,1),(102,'Iraq','IQ','IRQ','',0,1),(103,'Ireland','IE','IRL','',0,1),(104,'Israel','IL','ISR','',0,1),(105,'Italy','IT','ITA','',0,1),(106,'Jamaica','JM','JAM','',0,1),(107,'Japan','JP','JPN','',0,1),(108,'Jordan','JO','JOR','',0,1),(109,'Kazakhstan','KZ','KAZ','',0,1),(110,'Kenya','KE','KEN','',0,1),(111,'Kiribati','KI','KIR','',0,1),(112,'North Korea','KP','PRK','',0,1),(113,'Korea, Republic of','KR','KOR','',0,1),(114,'Kuwait','KW','KWT','',0,1),(115,'Kyrgyzstan','KG','KGZ','',0,1),(116,'Lao People\'s Democratic Republic','LA','LAO','',0,1),(117,'Latvia','LV','LVA','',0,1),(118,'Lebanon','LB','LBN','',0,1),(119,'Lesotho','LS','LSO','',0,1),(120,'Liberia','LR','LBR','',0,1),(121,'Libyan Arab Jamahiriya','LY','LBY','',0,1),(122,'Liechtenstein','LI','LIE','',0,1),(123,'Lithuania','LT','LTU','',0,1),(124,'Luxembourg','LU','LUX','',0,1),(125,'Macau','MO','MAC','',0,1),(126,'FYROM','MK','MKD','',0,1),(127,'Madagascar','MG','MDG','',0,1),(128,'Malawi','MW','MWI','',0,1),(129,'Malaysia','MY','MYS','',0,1),(130,'Maldives','MV','MDV','',0,1),(131,'Mali','ML','MLI','',0,1),(132,'Malta','MT','MLT','',0,1),(133,'Marshall Islands','MH','MHL','',0,1),(134,'Martinique','MQ','MTQ','',0,1),(135,'Mauritania','MR','MRT','',0,1),(136,'Mauritius','MU','MUS','',0,1),(137,'Mayotte','YT','MYT','',0,1),(138,'Mexico','MX','MEX','',0,1),(139,'Micronesia, Federated States of','FM','FSM','',0,1),(140,'Moldova, Republic of','MD','MDA','',0,1),(141,'Monaco','MC','MCO','',0,1),(142,'Mongolia','MN','MNG','',0,1),(143,'Montserrat','MS','MSR','',0,1),(144,'Morocco','MA','MAR','',0,1),(145,'Mozambique','MZ','MOZ','',0,1),(146,'Myanmar','MM','MMR','',0,1),(147,'Namibia','NA','NAM','',0,1),(148,'Nauru','NR','NRU','',0,1),(149,'Nepal','NP','NPL','',0,1),(150,'Netherlands','NL','NLD','',0,1),(151,'Netherlands Antilles','AN','ANT','',0,1),(152,'New Caledonia','NC','NCL','',0,1),(153,'New Zealand','NZ','NZL','',0,1),(154,'Nicaragua','NI','NIC','',0,1),(155,'Niger','NE','NER','',0,1),(156,'Nigeria','NG','NGA','',0,1),(157,'Niue','NU','NIU','',0,1),(158,'Norfolk Island','NF','NFK','',0,1),(159,'Northern Mariana Islands','MP','MNP','',0,1),(160,'Norway','NO','NOR','',0,1),(161,'Oman','OM','OMN','',0,1),(162,'Pakistan','PK','PAK','',0,1),(163,'Palau','PW','PLW','',0,1),(164,'Panama','PA','PAN','',0,1),(165,'Papua New Guinea','PG','PNG','',0,1),(166,'Paraguay','PY','PRY','',0,1),(167,'Peru','PE','PER','',0,1),(168,'Philippines','PH','PHL','',0,1),(169,'Pitcairn','PN','PCN','',0,1),(170,'Poland','PL','POL','',0,1),(171,'Portugal','PT','PRT','',0,1),(172,'Puerto Rico','PR','PRI','',0,1),(173,'Qatar','QA','QAT','',0,1),(174,'Reunion','RE','REU','',0,1),(175,'Romania','RO','ROM','',0,1),(176,'Russian Federation','RU','RUS','',0,1),(177,'Rwanda','RW','RWA','',0,1),(178,'Saint Kitts and Nevis','KN','KNA','',0,1),(179,'Saint Lucia','LC','LCA','',0,1),(180,'Saint Vincent and the Grenadines','VC','VCT','',0,1),(181,'Samoa','WS','WSM','',0,1),(182,'San Marino','SM','SMR','',0,1),(183,'Sao Tome and Principe','ST','STP','',0,1),(184,'Saudi Arabia','SA','SAU','',0,1),(185,'Senegal','SN','SEN','',0,1),(186,'Seychelles','SC','SYC','',0,1),(187,'Sierra Leone','SL','SLE','',0,1),(188,'Singapore','SG','SGP','',0,1),(189,'Slovak Republic','SK','SVK','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city} {postcode}\r\n{zone}\r\n{country}',0,1),(190,'Slovenia','SI','SVN','',0,1),(191,'Solomon Islands','SB','SLB','',0,1),(192,'Somalia','SO','SOM','',0,1),(193,'South Africa','ZA','ZAF','',0,1),(194,'South Georgia &amp; South Sandwich Islands','GS','SGS','',0,1),(195,'Spain','ES','ESP','',0,1),(196,'Sri Lanka','LK','LKA','',0,1),(197,'St. Helena','SH','SHN','',0,1),(198,'St. Pierre and Miquelon','PM','SPM','',0,1),(199,'Sudan','SD','SDN','',0,1),(200,'Suriname','SR','SUR','',0,1),(201,'Svalbard and Jan Mayen Islands','SJ','SJM','',0,1),(202,'Swaziland','SZ','SWZ','',0,1),(203,'Sweden','SE','SWE','{company}\r\n{firstname} {lastname}\r\n{address_1}\r\n{address_2}\r\n{postcode} {city}\r\n{country}',1,1),(204,'Switzerland','CH','CHE','',0,1),(205,'Syrian Arab Republic','SY','SYR','',0,1),(206,'Taiwan','TW','TWN','',0,1),(207,'Tajikistan','TJ','TJK','',0,1),(208,'Tanzania, United Republic of','TZ','TZA','',0,1),(209,'Thailand','TH','THA','',0,1),(210,'Togo','TG','TGO','',0,1),(211,'Tokelau','TK','TKL','',0,1),(212,'Tonga','TO','TON','',0,1),(213,'Trinidad and Tobago','TT','TTO','',0,1),(214,'Tunisia','TN','TUN','',0,1),(215,'Turkey','TR','TUR','',0,1),(216,'Turkmenistan','TM','TKM','',0,1),(217,'Turks and Caicos Islands','TC','TCA','',0,1),(218,'Tuvalu','TV','TUV','',0,1),(219,'Uganda','UG','UGA','',0,1),(220,'Ukraine','UA','UKR','',0,1),(221,'United Arab Emirates','AE','ARE','',0,1),(222,'United Kingdom','GB','GBR','',1,1),(223,'United States','US','USA','{firstname} {lastname}\r\n{company}\r\n{address_1}\r\n{address_2}\r\n{city}, {zone} {postcode}\r\n{country}',0,1),(224,'United States Minor Outlying Islands','UM','UMI','',0,1),(225,'Uruguay','UY','URY','',0,1),(226,'Uzbekistan','UZ','UZB','',0,1),(227,'Vanuatu','VU','VUT','',0,1),(228,'Vatican City State (Holy See)','VA','VAT','',0,1),(229,'Venezuela','VE','VEN','',0,1),(230,'Viet Nam','VN','VNM','',0,1),(231,'Virgin Islands (British)','VG','VGB','',0,1),(232,'Virgin Islands (U.S.)','VI','VIR','',0,1),(233,'Wallis and Futuna Islands','WF','WLF','',0,1),(234,'Western Sahara','EH','ESH','',0,1),(235,'Yemen','YE','YEM','',0,1),(237,'Democratic Republic of Congo','CD','COD','',0,1),(238,'Zambia','ZM','ZMB','',0,1),(239,'Zimbabwe','ZW','ZWE','',0,1),(242,'Montenegro','ME','MNE','',0,1),(243,'Serbia','RS','SRB','',0,1),(244,'Aaland Islands','AX','ALA','',0,1),(245,'Bonaire, Sint Eustatius and Saba','BQ','BES','',0,1),(246,'Curacao','CW','CUW','',0,1),(247,'Palestinian Territory, Occupied','PS','PSE','',0,1),(248,'South Sudan','SS','SSD','',0,1),(249,'St. Barthelemy','BL','BLM','',0,1),(250,'St. Martin (French part)','MF','MAF','',0,1),(251,'Canary Islands','IC','ICA','',0,1),(252,'Ascension Island (British)','AC','ASC','',0,1),(253,'Kosovo, Republic of','XK','UNK','',0,1),(254,'Isle of Man','IM','IMN','',0,1),(255,'Tristan da Cunha','TA','SHN','',0,1),(256,'Guernsey','GG','GGY','',0,1),(257,'Jersey','JE','JEY','',0,1);
/*!40000 ALTER TABLE `oc_country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon`
--

DROP TABLE IF EXISTS `oc_coupon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon` (
  `coupon_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) NOT NULL,
  `code` varchar(10) NOT NULL,
  `type` char(1) NOT NULL,
  `discount` decimal(15,4) NOT NULL,
  `logged` tinyint(1) NOT NULL,
  `shipping` tinyint(1) NOT NULL,
  `total` decimal(15,4) NOT NULL,
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  `uses_total` int(11) NOT NULL,
  `uses_customer` varchar(11) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon`
--

LOCK TABLES `oc_coupon` WRITE;
/*!40000 ALTER TABLE `oc_coupon` DISABLE KEYS */;
INSERT INTO `oc_coupon` VALUES (4,'-10% Discount','2222','P',10.0000,0,0,0.0000,'2014-01-01','2020-01-01',10,'10',0,'2009-01-27 13:55:03'),(5,'Free Shipping','3333','P',0.0000,0,1,100.0000,'2014-01-01','2014-02-01',10,'10',0,'2009-03-14 21:13:53'),(6,'-10.00 Discount','1111','F',10.0000,0,0,10.0000,'2014-01-01','2020-01-01',100000,'10000',0,'2009-03-14 21:15:18');
/*!40000 ALTER TABLE `oc_coupon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_category`
--

DROP TABLE IF EXISTS `oc_coupon_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_category` (
  `coupon_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_id`,`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_category`
--

LOCK TABLES `oc_coupon_category` WRITE;
/*!40000 ALTER TABLE `oc_coupon_category` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_history`
--

DROP TABLE IF EXISTS `oc_coupon_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_history` (
  `coupon_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`coupon_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_history`
--

LOCK TABLES `oc_coupon_history` WRITE;
/*!40000 ALTER TABLE `oc_coupon_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_coupon_product`
--

DROP TABLE IF EXISTS `oc_coupon_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_coupon_product` (
  `coupon_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `coupon_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  PRIMARY KEY (`coupon_product_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_coupon_product`
--

LOCK TABLES `oc_coupon_product` WRITE;
/*!40000 ALTER TABLE `oc_coupon_product` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_coupon_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_currency`
--

DROP TABLE IF EXISTS `oc_currency`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_currency` (
  `currency_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `code` varchar(3) NOT NULL,
  `symbol_left` varchar(12) NOT NULL,
  `symbol_right` varchar(12) NOT NULL,
  `decimal_place` char(1) NOT NULL,
  `value` float(15,8) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`currency_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_currency`
--

LOCK TABLES `oc_currency` WRITE;
/*!40000 ALTER TABLE `oc_currency` DISABLE KEYS */;
INSERT INTO `oc_currency` VALUES (1,'Pound Sterling','GBP','£','','2',0.64099997,1,'2015-08-04 07:21:02'),(2,'US Dollar','USD','$','','2',1.00000000,1,'2015-08-04 09:39:24'),(3,'Euro','EUR','','€','2',0.91189998,1,'2015-08-04 07:21:02');
/*!40000 ALTER TABLE `oc_currency` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field`
--

DROP TABLE IF EXISTS `oc_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field` (
  `custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `value` text NOT NULL,
  `location` varchar(7) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field`
--

LOCK TABLES `oc_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_customer_group`
--

DROP TABLE IF EXISTS `oc_custom_field_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_customer_group` (
  `custom_field_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_customer_group`
--

LOCK TABLES `oc_custom_field_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_description`
--

DROP TABLE IF EXISTS `oc_custom_field_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_description` (
  `custom_field_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_description`
--

LOCK TABLES `oc_custom_field_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value`
--

DROP TABLE IF EXISTS `oc_custom_field_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value` (
  `custom_field_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `custom_field_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value`
--

LOCK TABLES `oc_custom_field_value` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_custom_field_value_description`
--

DROP TABLE IF EXISTS `oc_custom_field_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_custom_field_value_description` (
  `custom_field_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`custom_field_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_custom_field_value_description`
--

LOCK TABLES `oc_custom_field_value_description` WRITE;
/*!40000 ALTER TABLE `oc_custom_field_value_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_custom_field_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer`
--

DROP TABLE IF EXISTS `oc_customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer` (
  `customer_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_group_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `cart` text,
  `wishlist` text,
  `newsletter` tinyint(1) NOT NULL DEFAULT '0',
  `address_id` int(11) NOT NULL DEFAULT '0',
  `custom_field` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `approved` tinyint(1) NOT NULL,
  `safe` tinyint(1) NOT NULL,
  `token` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer`
--

LOCK TABLES `oc_customer` WRITE;
/*!40000 ALTER TABLE `oc_customer` DISABLE KEYS */;
INSERT INTO `oc_customer` VALUES (1,1,0,'Ngoc','Dang','testsg@gmail.com','01667251099','.panel-body','29b1b8a5494fd16273eda961113149fdf49a3edd','694779e06','a:0:{}','',0,1,'','127.0.0.1',1,1,0,'','2014-12-25 10:58:41'),(2,1,0,'abc','abc','abc@gmail.com','abc','','97b439a34df68bd291dbc2a364b20ba00da22c06','802d0c7ee','a:1:{s:352:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQyO3M6Njoib3B0aW9uIjthOjk6e2k6MjE4O3M6MToiNiI7aToyMjM7YToxOntpOjA7czoxOiI5Ijt9aToyMDg7czo0OiJ0ZXN0IjtpOjIxNztzOjE6IjMiO2k6MjA5O3M6NjoiYWdlZ2FnIjtpOjIyMjtzOjQwOiI3YzRjM2JlYzI3ZDY3MGViODFjZjUyMWI5NzEyNDIwMjc5Nzk4MGUxIjtpOjIxOTtzOjEwOiIyMDExLTAyLTIwIjtpOjIyMTtzOjU6IjIyOjI1IjtpOjIyMDtzOjE2OiIyMDExLTAyLTIwIDIyOjI1Ijt9fQ==\";i:2;}','a:3:{i:0;i:47;i:1;i:30;i:2;i:32;}',0,2,'','192.168.1.26',1,1,0,'','2015-01-12 14:21:05'),(3,1,0,'test','test','test@test.com','11111111111111','1111111111','dbdf6b248bb61eee4fda8fd55ca6bd53a77d9c12','2fd590772','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ4O30=\";i:1;}','a:2:{i:0;i:48;i:1;i:46;}',0,3,'','127.0.0.1',1,1,0,'','2015-01-14 09:20:31'),(4,1,0,'ngoc','ngoc','admin@gmail.com','11111111111111','1111111111','77db0a5cf3bc1284ee64f5dfe7fac0404b1ffa1d','ea6694a36','a:0:{}','',0,4,'','127.0.0.1',1,1,0,'','2015-01-20 09:39:56'),(5,1,0,'Test','Test','test@gmail.com','11111111111111','1111111111','631b1b7e6a7ec440744980cfb923623300fae949','7c5e02ffe','a:1:{s:96:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjQ3O3M6Njoib3B0aW9uIjthOjE6e2k6MjI1O3M6MTA6IjIwMTEtMDQtMjIiO319\";i:1;}','a:2:{i:0;i:51;i:1;i:50;}',0,5,'','127.0.0.1',1,1,0,'','2015-01-23 16:22:34'),(6,1,0,'demo','demo','demo@gmail.com','123333333322','','50ff6010a8c969e9e320d4b87078e76c610b2349','f7926c7e6','a:1:{s:40:\"YToxOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMxO30=\";i:1;}','a:1:{i:0;i:42;}',0,6,'','127.0.0.1',1,1,0,'','2015-04-23 16:02:11'),(7,1,0,'admin','admin','admin1@gmail.com','0123456789','0123466','7bbb6b8e15dfe7473b8a7cf72df2be3568a60d42','2fc1b83dc','a:0:{}','a:1:{i:0;i:28;}',0,7,'','127.0.0.1',1,1,0,'','2015-05-25 02:10:55'),(8,1,0,'demo','demo','demodemo@gmail.com','345545465','56576767','428e5f9b72bbd91af16ea9b42de6a65587ba022b','7cac751bd','a:1:{s:84:\"YToyOntzOjEwOiJwcm9kdWN0X2lkIjtpOjMwO3M6Njoib3B0aW9uIjthOjE6e2k6MjI2O3M6MjoiMTUiO319\";i:1;}','',1,8,'','127.0.0.1',1,1,0,'','2015-06-25 15:01:55');
/*!40000 ALTER TABLE `oc_customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_activity`
--

DROP TABLE IF EXISTS `oc_customer_activity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_activity` (
  `activity_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `key` varchar(64) NOT NULL,
  `data` text NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`activity_id`)
) ENGINE=MyISAM AUTO_INCREMENT=35 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_activity`
--

LOCK TABLES `oc_customer_activity` WRITE;
/*!40000 ALTER TABLE `oc_customer_activity` DISABLE KEYS */;
INSERT INTO `oc_customer_activity` VALUES (1,1,'register','a:2:{s:11:\"customer_id\";i:1;s:4:\"name\";s:9:\"Ngoc Dang\";}','127.0.0.1','2014-12-25 10:58:41'),(2,1,'order_account','a:3:{s:11:\"customer_id\";s:1:\"1\";s:4:\"name\";s:9:\"Ngoc Dang\";s:8:\"order_id\";i:1;}','127.0.0.1','2014-12-25 10:58:50'),(3,2,'register','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:7:\"abc abc\";}','192.168.1.26','2015-01-12 14:21:05'),(4,2,'order_account','a:3:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:7:\"abc abc\";s:8:\"order_id\";i:2;}','192.168.1.26','2015-01-12 14:24:22'),(5,3,'register','a:2:{s:11:\"customer_id\";s:1:\"3\";s:4:\"name\";s:9:\"test test\";}','127.0.0.1','2015-01-14 09:20:31'),(6,2,'login','a:2:{s:11:\"customer_id\";s:1:\"2\";s:4:\"name\";s:7:\"abc abc\";}','192.168.1.26','2015-01-14 11:11:50'),(7,4,'register','a:2:{s:11:\"customer_id\";i:4;s:4:\"name\";s:9:\"ngoc ngoc\";}','127.0.0.1','2015-01-20 09:39:56'),(8,4,'order_account','a:3:{s:11:\"customer_id\";s:1:\"4\";s:4:\"name\";s:9:\"ngoc ngoc\";s:8:\"order_id\";i:3;}','127.0.0.1','2015-01-20 09:40:04'),(9,4,'order_account','a:3:{s:11:\"customer_id\";s:1:\"4\";s:4:\"name\";s:9:\"ngoc ngoc\";s:8:\"order_id\";i:4;}','127.0.0.1','2015-01-20 09:41:18'),(10,5,'register','a:2:{s:11:\"customer_id\";s:1:\"5\";s:4:\"name\";s:9:\"Test Test\";}','127.0.0.1','2015-01-23 16:22:34'),(11,6,'register','a:2:{s:11:\"customer_id\";i:6;s:4:\"name\";s:9:\"demo demo\";}','127.0.0.1','2015-04-23 16:02:11'),(12,7,'register','a:2:{s:11:\"customer_id\";i:7;s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-05-25 02:10:56'),(13,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-25 14:10:37'),(14,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-25 14:29:17'),(15,8,'register','a:2:{s:11:\"customer_id\";i:8;s:4:\"name\";s:9:\"demo demo\";}','127.0.0.1','2015-06-25 15:01:55'),(16,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-25 15:10:04'),(17,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','192.168.1.12','2015-06-25 15:33:18'),(18,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-25 16:45:50'),(19,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-25 17:13:06'),(20,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:5;}','127.0.0.1','2015-06-25 17:20:08'),(21,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:6;}','127.0.0.1','2015-06-25 17:21:42'),(22,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-26 10:14:06'),(23,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:7;}','127.0.0.1','2015-06-26 10:14:34'),(24,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:9;}','127.0.0.1','2015-06-26 10:22:52'),(25,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-29 10:53:00'),(26,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-06-29 14:46:42'),(27,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-07-31 10:06:58'),(28,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-08-03 11:51:34'),(29,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-08-03 11:56:38'),(30,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-08-03 13:48:17'),(31,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-08-03 15:14:38'),(32,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:10;}','127.0.0.1','2015-08-03 15:17:34'),(33,7,'login','a:2:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";}','127.0.0.1','2015-08-04 09:42:15'),(34,7,'order_account','a:3:{s:11:\"customer_id\";s:1:\"7\";s:4:\"name\";s:11:\"admin admin\";s:8:\"order_id\";i:11;}','127.0.0.1','2015-08-04 09:44:51');
/*!40000 ALTER TABLE `oc_customer_activity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ban_ip`
--

DROP TABLE IF EXISTS `oc_customer_ban_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ban_ip` (
  `customer_ban_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(40) NOT NULL,
  PRIMARY KEY (`customer_ban_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ban_ip`
--

LOCK TABLES `oc_customer_ban_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ban_ip` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_ban_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group`
--

DROP TABLE IF EXISTS `oc_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group` (
  `customer_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `approval` int(1) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`customer_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group`
--

LOCK TABLES `oc_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_customer_group` DISABLE KEYS */;
INSERT INTO `oc_customer_group` VALUES (1,0,1);
/*!40000 ALTER TABLE `oc_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_group_description`
--

DROP TABLE IF EXISTS `oc_customer_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_group_description` (
  `customer_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`customer_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_group_description`
--

LOCK TABLES `oc_customer_group_description` WRITE;
/*!40000 ALTER TABLE `oc_customer_group_description` DISABLE KEYS */;
INSERT INTO `oc_customer_group_description` VALUES (1,1,'Default','test'),(1,2,'Default','test');
/*!40000 ALTER TABLE `oc_customer_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_history`
--

DROP TABLE IF EXISTS `oc_customer_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_history` (
  `customer_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_history`
--

LOCK TABLES `oc_customer_history` WRITE;
/*!40000 ALTER TABLE `oc_customer_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_ip`
--

DROP TABLE IF EXISTS `oc_customer_ip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_ip` (
  `customer_ip_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_ip_id`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_ip`
--

LOCK TABLES `oc_customer_ip` WRITE;
/*!40000 ALTER TABLE `oc_customer_ip` DISABLE KEYS */;
INSERT INTO `oc_customer_ip` VALUES (1,1,'127.0.0.1','2014-12-25 10:58:41'),(2,2,'192.168.1.26','2015-01-12 14:21:05'),(3,3,'127.0.0.1','2015-01-14 09:20:31'),(4,4,'127.0.0.1','2015-01-20 09:39:56'),(5,5,'127.0.0.1','2015-01-23 16:22:34'),(6,6,'127.0.0.1','2015-04-23 16:02:11'),(7,7,'127.0.0.1','2015-05-25 02:10:56'),(8,8,'127.0.0.1','2015-06-25 15:01:55'),(9,7,'192.168.1.12','2015-06-25 15:33:18');
/*!40000 ALTER TABLE `oc_customer_ip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_login`
--

DROP TABLE IF EXISTS `oc_customer_login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_login` (
  `customer_login_id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(96) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `total` int(4) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`customer_login_id`),
  KEY `email` (`email`),
  KEY `ip` (`ip`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_login`
--

LOCK TABLES `oc_customer_login` WRITE;
/*!40000 ALTER TABLE `oc_customer_login` DISABLE KEYS */;
INSERT INTO `oc_customer_login` VALUES (1,'','192.168.1.26',1,'2015-01-12 07:19:13','2015-01-12 07:19:13'),(3,'admin','127.0.0.1',2,'2015-04-23 08:28:51','2015-05-23 08:38:10'),(4,'anh@gmail.com','127.0.0.1',3,'2015-04-23 08:28:55','2015-04-23 08:31:50'),(5,'admin@gmail.com','127.0.0.1',8,'2015-05-23 08:39:08','2015-07-31 03:06:45');
/*!40000 ALTER TABLE `oc_customer_login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_online`
--

DROP TABLE IF EXISTS `oc_customer_online`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_online` (
  `ip` varchar(40) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `url` text NOT NULL,
  `referer` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`ip`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_online`
--

LOCK TABLES `oc_customer_online` WRITE;
/*!40000 ALTER TABLE `oc_customer_online` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_online` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_reward`
--

DROP TABLE IF EXISTS `oc_customer_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_reward` (
  `customer_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `order_id` int(11) NOT NULL DEFAULT '0',
  `description` text NOT NULL,
  `points` int(8) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_reward_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_reward`
--

LOCK TABLES `oc_customer_reward` WRITE;
/*!40000 ALTER TABLE `oc_customer_reward` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_customer_transaction`
--

DROP TABLE IF EXISTS `oc_customer_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_customer_transaction` (
  `customer_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `description` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`customer_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_customer_transaction`
--

LOCK TABLES `oc_customer_transaction` WRITE;
/*!40000 ALTER TABLE `oc_customer_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_customer_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download`
--

DROP TABLE IF EXISTS `oc_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download` (
  `download_id` int(11) NOT NULL AUTO_INCREMENT,
  `filename` varchar(128) NOT NULL,
  `mask` varchar(128) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download`
--

LOCK TABLES `oc_download` WRITE;
/*!40000 ALTER TABLE `oc_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_download_description`
--

DROP TABLE IF EXISTS `oc_download_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_download_description` (
  `download_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`download_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_download_description`
--

LOCK TABLES `oc_download_description` WRITE;
/*!40000 ALTER TABLE `oc_download_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_download_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_event`
--

DROP TABLE IF EXISTS `oc_event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_event` (
  `event_id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(32) NOT NULL,
  `trigger` text NOT NULL,
  `action` text NOT NULL,
  PRIMARY KEY (`event_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_event`
--

LOCK TABLES `oc_event` WRITE;
/*!40000 ALTER TABLE `oc_event` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_extension`
--

DROP TABLE IF EXISTS `oc_extension`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_extension` (
  `extension_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `code` varchar(32) NOT NULL,
  PRIMARY KEY (`extension_id`)
) ENGINE=MyISAM AUTO_INCREMENT=477 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_extension`
--

LOCK TABLES `oc_extension` WRITE;
/*!40000 ALTER TABLE `oc_extension` DISABLE KEYS */;
INSERT INTO `oc_extension` VALUES (23,'payment','cod'),(22,'total','shipping'),(57,'total','sub_total'),(58,'total','tax'),(59,'total','total'),(390,'total','credit'),(387,'shipping','flat'),(349,'total','handling'),(350,'total','low_order_fee'),(389,'total','coupon'),(413,'module','category'),(408,'module','account'),(393,'total','reward'),(398,'total','voucher'),(407,'payment','free_checkout'),(432,'module','themecontrol'),(452,'module','pavmegamenu'),(466,'module','pavnewsletter'),(433,'module','pavcarousel'),(435,'module','pavbloglatest'),(436,'module','pavblogcomment'),(437,'module','pavblogcategory'),(438,'module','pavblog'),(473,'module','pavsliderlayer'),(440,'module','filter'),(441,'module','bestseller'),(442,'module','pavdeals'),(454,'module','pavhomebuilder'),(461,'module','pavverticalmenu'),(462,'module','pavautosearch'),(463,'module','pavreassurance'),(471,'module','pavtwitter'),(468,'module','pavbannerbuilder'),(469,'module','pavproductcarousel'),(474,'module','pavtestimonial'),(476,'module','pavsocial');
/*!40000 ALTER TABLE `oc_extension` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter`
--

DROP TABLE IF EXISTS `oc_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter` (
  `filter_id` int(11) NOT NULL AUTO_INCREMENT,
  `filter_group_id` int(11) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter`
--

LOCK TABLES `oc_filter` WRITE;
/*!40000 ALTER TABLE `oc_filter` DISABLE KEYS */;
INSERT INTO `oc_filter` VALUES (1,1,1),(2,1,0),(3,1,0),(4,2,0),(5,2,0);
/*!40000 ALTER TABLE `oc_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_description`
--

DROP TABLE IF EXISTS `oc_filter_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_description` (
  `filter_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `filter_group_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_description`
--

LOCK TABLES `oc_filter_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_description` DISABLE KEYS */;
INSERT INTO `oc_filter_description` VALUES (1,1,1,'$0.00 - $99.99'),(1,2,1,'$0.00 - $99.99'),(2,1,1,'$100.00 - $199.00'),(2,2,1,'$100.00 - $199.00'),(3,1,1,'$200.00 and above'),(3,2,1,'$200.00 and above'),(4,1,2,'Black'),(4,2,2,'أسود'),(5,1,2,'White'),(5,2,2,'أبيض');
/*!40000 ALTER TABLE `oc_filter_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group`
--

DROP TABLE IF EXISTS `oc_filter_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group` (
  `filter_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`filter_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group`
--

LOCK TABLES `oc_filter_group` WRITE;
/*!40000 ALTER TABLE `oc_filter_group` DISABLE KEYS */;
INSERT INTO `oc_filter_group` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `oc_filter_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_filter_group_description`
--

DROP TABLE IF EXISTS `oc_filter_group_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_filter_group_description` (
  `filter_group_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`filter_group_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_filter_group_description`
--

LOCK TABLES `oc_filter_group_description` WRITE;
/*!40000 ALTER TABLE `oc_filter_group_description` DISABLE KEYS */;
INSERT INTO `oc_filter_group_description` VALUES (1,1,'Price'),(1,2,'السعر'),(2,1,'Color'),(2,2,'اللون');
/*!40000 ALTER TABLE `oc_filter_group_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_geo_zone`
--

DROP TABLE IF EXISTS `oc_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_geo_zone` (
  `geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_modified` datetime NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_geo_zone`
--

LOCK TABLES `oc_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_geo_zone` VALUES (3,'UK VAT Zone','UK VAT','2010-02-26 22:33:24','2009-01-06 23:26:25'),(4,'UK Shipping','UK Shipping Zones','2010-12-15 15:18:13','2009-06-23 01:14:53');
/*!40000 ALTER TABLE `oc_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information`
--

DROP TABLE IF EXISTS `oc_information`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information` (
  `information_id` int(11) NOT NULL AUTO_INCREMENT,
  `bottom` int(1) NOT NULL DEFAULT '0',
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`information_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information`
--

LOCK TABLES `oc_information` WRITE;
/*!40000 ALTER TABLE `oc_information` DISABLE KEYS */;
INSERT INTO `oc_information` VALUES (3,1,3,1),(4,1,1,1),(5,1,4,1),(6,1,2,1);
/*!40000 ALTER TABLE `oc_information` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_description`
--

DROP TABLE IF EXISTS `oc_information_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_description` (
  `information_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(64) NOT NULL,
  `description` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`information_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_description`
--

LOCK TABLES `oc_information_description` WRITE;
/*!40000 ALTER TABLE `oc_information_description` DISABLE KEYS */;
INSERT INTO `oc_information_description` VALUES (4,1,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','','',''),(5,1,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','','',''),(3,1,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','','',''),(6,1,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','','',''),(4,2,'About Us','&lt;p&gt;\r\n	About Us&lt;/p&gt;\r\n','','',''),(5,2,'Terms &amp; Conditions','&lt;p&gt;\r\n	Terms &amp;amp; Conditions&lt;/p&gt;\r\n','','',''),(3,2,'Privacy Policy','&lt;p&gt;\r\n	Privacy Policy&lt;/p&gt;\r\n','','',''),(6,2,'Delivery Information','&lt;p&gt;\r\n	Delivery Information&lt;/p&gt;\r\n','','','');
/*!40000 ALTER TABLE `oc_information_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_layout`
--

DROP TABLE IF EXISTS `oc_information_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_layout` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_layout`
--

LOCK TABLES `oc_information_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_information_to_layout` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_information_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_information_to_store`
--

DROP TABLE IF EXISTS `oc_information_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_information_to_store` (
  `information_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`information_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_information_to_store`
--

LOCK TABLES `oc_information_to_store` WRITE;
/*!40000 ALTER TABLE `oc_information_to_store` DISABLE KEYS */;
INSERT INTO `oc_information_to_store` VALUES (3,0),(4,0),(5,0),(6,0);
/*!40000 ALTER TABLE `oc_information_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_language`
--

DROP TABLE IF EXISTS `oc_language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_language` (
  `language_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `code` varchar(5) NOT NULL,
  `locale` varchar(255) NOT NULL,
  `image` varchar(64) NOT NULL,
  `directory` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL,
  PRIMARY KEY (`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_language`
--

LOCK TABLES `oc_language` WRITE;
/*!40000 ALTER TABLE `oc_language` DISABLE KEYS */;
INSERT INTO `oc_language` VALUES 
(1, 'Việt Nam', 'vi', 'vi_VN.UTF-8,vi_VN,vi-vn,vietnamese', 'vn.png', 'vietnamese', 1, 1),
(2, 'English', 'en', 'en_US.UTF-8,en_US,en-gb,english', 'gb.png', 'english', 1, 2);
/*!40000 ALTER TABLE `oc_language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout`
--

DROP TABLE IF EXISTS `oc_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout` (
  `layout_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`layout_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout`
--

LOCK TABLES `oc_layout` WRITE;
/*!40000 ALTER TABLE `oc_layout` DISABLE KEYS */;
INSERT INTO `oc_layout` VALUES (1,'Home'),(2,'Product'),(3,'Category'),(4,'Default'),(5,'Manufacturer'),(6,'Account'),(7,'Checkout'),(8,'Contact'),(9,'Sitemap'),(10,'Affiliate'),(11,'Information'),(12,'Compare'),(13,'Search'),(14,'Pav Blog'),(15,'Specials modul');
/*!40000 ALTER TABLE `oc_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_module`
--

DROP TABLE IF EXISTS `oc_layout_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_module` (
  `layout_module_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `code` varchar(64) NOT NULL,
  `position` varchar(14) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`layout_module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=923 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_module`
--

LOCK TABLES `oc_layout_module` WRITE;
/*!40000 ALTER TABLE `oc_layout_module` DISABLE KEYS */;
INSERT INTO `oc_layout_module` VALUES (68,6,'account','column_right',1),(254,10,'account','column_right',1),(261,5,'bestseller.40','column_left',3),(260,5,'category','column_left',1),(259,5,'filter','column_left',2),(800,3,'category','column_left',1),(801,3,'bestseller.40','column_left',3),(477,14,'bestseller.40','column_right',3),(476,14,'pavblogcomment.39','column_right',2),(475,14,'pavblogcategory.36','column_right',1),(534,13,'category','column_left',1),(535,13,'bestseller.40','column_left',2),(592,15,'category','column_left',1),(593,15,'bestseller.40','column_left',2),(802,3,'filter','column_left',2),(922,1,'pavreassurance.75','footer_bottom',0),(921,1,'pavnewsletter.93','footer_top',0),(920,1,'pavtwitter.94','mass_bottom',1),(837,2,'bestseller.40','column_right',2),(919,1,'pavbloglatest.77','mass_bottom',0),(918,1,'pavhomebuilder.59','content_top',0),(836,2,'pavsocial.105','outsite_right',1);
/*!40000 ALTER TABLE `oc_layout_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_layout_route`
--

DROP TABLE IF EXISTS `oc_layout_route`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_layout_route` (
  `layout_route_id` int(11) NOT NULL AUTO_INCREMENT,
  `layout_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `route` varchar(255) NOT NULL,
  PRIMARY KEY (`layout_route_id`)
) ENGINE=MyISAM AUTO_INCREMENT=371 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_layout_route`
--

LOCK TABLES `oc_layout_route` WRITE;
/*!40000 ALTER TABLE `oc_layout_route` DISABLE KEYS */;
INSERT INTO `oc_layout_route` VALUES (38,6,0,'account/%'),(126,10,0,'affiliate/%'),(344,3,0,'product/category'),(370,1,0,'common/home'),(353,2,0,'product/product'),(24,11,0,'information/information'),(23,7,0,'checkout/%'),(324,8,0,'information/contact'),(32,9,0,'information/sitemap'),(330,4,0,''),(129,5,0,'product/manufacturer/%'),(52,12,0,'product/compare'),(257,13,0,'product/search'),(228,14,0,'pavblog/%'),(286,15,0,'product/special');
/*!40000 ALTER TABLE `oc_layout_route` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class`
--

DROP TABLE IF EXISTS `oc_length_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL,
  PRIMARY KEY (`length_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class`
--

LOCK TABLES `oc_length_class` WRITE;
/*!40000 ALTER TABLE `oc_length_class` DISABLE KEYS */;
INSERT INTO `oc_length_class` VALUES (1,1.00000000),(2,10.00000000),(3,0.39370000);
/*!40000 ALTER TABLE `oc_length_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_length_class_description`
--

DROP TABLE IF EXISTS `oc_length_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_length_class_description` (
  `length_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`length_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_length_class_description`
--

LOCK TABLES `oc_length_class_description` WRITE;
/*!40000 ALTER TABLE `oc_length_class_description` DISABLE KEYS */;
INSERT INTO `oc_length_class_description` VALUES (1,1,'Centimeter','cm'),(2,1,'Millimeter','mm'),(3,1,'Inch','in'),(1,2,'Centimeter','cm'),(2,2,'Millimeter','mm'),(3,2,'Inch','in');
/*!40000 ALTER TABLE `oc_length_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_location`
--

DROP TABLE IF EXISTS `oc_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_location` (
  `location_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `address` text NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `geocode` varchar(32) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `open` text NOT NULL,
  `comment` text NOT NULL,
  PRIMARY KEY (`location_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_location`
--

LOCK TABLES `oc_location` WRITE;
/*!40000 ALTER TABLE `oc_location` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer`
--

DROP TABLE IF EXISTS `oc_manufacturer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer` (
  `manufacturer_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`manufacturer_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer`
--

LOCK TABLES `oc_manufacturer` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer` DISABLE KEYS */;
INSERT INTO `oc_manufacturer` VALUES (5,'HTC','catalog/demo/htc_logo.jpg',0),(6,'Palm','catalog/demo/palm_logo.jpg',0),(7,'Hewlett-Packard','catalog/demo/hp_logo.jpg',0),(8,'Apple','catalog/demo/apple_logo.jpg',0),(9,'Canon','catalog/demo/canon_logo.jpg',0),(10,'Sony','catalog/demo/sony_logo.jpg',0);
/*!40000 ALTER TABLE `oc_manufacturer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_manufacturer_to_store`
--

DROP TABLE IF EXISTS `oc_manufacturer_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_manufacturer_to_store` (
  `manufacturer_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`manufacturer_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_manufacturer_to_store`
--

LOCK TABLES `oc_manufacturer_to_store` WRITE;
/*!40000 ALTER TABLE `oc_manufacturer_to_store` DISABLE KEYS */;
INSERT INTO `oc_manufacturer_to_store` VALUES (5,0),(6,0),(7,0),(8,0),(9,0),(10,0);
/*!40000 ALTER TABLE `oc_manufacturer_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_marketing`
--

DROP TABLE IF EXISTS `oc_marketing`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_marketing` (
  `marketing_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `code` varchar(64) NOT NULL,
  `clicks` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`marketing_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_marketing`
--

LOCK TABLES `oc_marketing` WRITE;
/*!40000 ALTER TABLE `oc_marketing` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_marketing` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu`
--

DROP TABLE IF EXISTS `oc_megamenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu` (
  `megamenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `badges` text,
  PRIMARY KEY (`megamenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu`
--

LOCK TABLES `oc_megamenu` WRITE;
/*!40000 ALTER TABLE `oc_megamenu` DISABLE KEYS */;
INSERT INTO `oc_megamenu` VALUES (1,'',0,2,'','','','','','1','',2,1,'1',0,1,0,0,0,'','',0,'top','','','','',-5,34,47,0,NULL),(2,'',1,0,'','','','col1=3, col2=3, col3=6','20','3','category',0,1,'menu',0,1,0,4,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(19,'',1,0,'','','','','33','1','category',0,1,'menu',0,1,0,5,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(21,'',19,0,'','','','','33','1','category',0,1,'menu',0,1,0,2,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(22,'',19,0,'','','','','33','1','category',0,1,'menu',0,1,0,1,0,'','',0,'top','pav-menu-child','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(23,'',19,0,'','','','','34','1','category',0,1,'menu',0,1,0,3,0,'','',0,'top','pav-menu-child','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(25,'',19,0,'','','','','33','1','category',0,1,'menu',0,1,0,5,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(26,'',29,0,'','','','','33','1','category',0,1,'menu',0,1,0,1,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(28,'',19,0,'','','','','33','1','category',0,1,'menu',0,1,0,4,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(29,'',23,0,'','','','','17','1','category',0,1,'menu',0,1,0,1,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(31,'',29,0,'','','','','34','1','category',0,1,'menu',0,1,0,2,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(33,'',23,0,'','','','','20','1','category',0,1,'menu',0,1,0,2,0,'','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(35,'',1,0,'','','','','45','1','url',0,1,'menu',0,1,0,6,0,'index.php?route=pavdeals/deals','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(36,'',1,0,'','','','','45','1','url',0,1,'menu',0,1,0,7,0,'?route=pavblog/blogs','',0,'top','','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(43,'',1,0,'','','','','','1','url',0,1,'menu',0,1,0,1,0,'?route=common/home','',0,'top','home','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,NULL),(51,'',1,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,8,0,'?route=information/contact',NULL,0,'top','',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(52,'',43,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,2,0,'?route=common/home&amp;home_id=83',NULL,0,'top','',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(53,'',43,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,1,0,'?route=common/home&amp;home_id=89',NULL,0,'top','',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(55,'',1,0,NULL,NULL,NULL,'','64','1','category',0,1,'menu',0,1,0,2,0,'',NULL,0,'top','',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,'new'),(56,'',1,0,NULL,NULL,NULL,'','17','1','category',0,1,'menu',0,1,0,9,0,'',NULL,0,'top','red',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,'hot'),(57,'',1,0,NULL,NULL,NULL,'','65','1','category',0,1,'menu',0,1,0,3,0,'',NULL,0,'top','bg1',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,''),(58,'',43,0,NULL,NULL,NULL,'','','1','url',0,1,'menu',0,1,0,99,0,'?route=common/home&amp;home_id=99',NULL,0,'top','',NULL,'','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,1,'');
/*!40000 ALTER TABLE `oc_megamenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_description`
--

DROP TABLE IF EXISTS `oc_megamenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_description` (
  `megamenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`megamenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_description`
--

LOCK TABLES `oc_megamenu_description` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_description` DISABLE KEYS */;
INSERT INTO `oc_megamenu_description` VALUES (35,1,'Deals',''),(36,2,'Blog',''),(22,1,'Mauris amattis',''),(21,2,'Nunc imperdiet',''),(43,2,'Home',''),(2,1,'Dresses',''),(23,2,'Lacus sed iaculis',''),(25,2,'Aliquam',''),(26,2,'Claritas',''),(28,2,'Hendrerit',''),(29,2,'Litterarum',''),(19,2,'Accessories',''),(31,2,'Sollemnes',''),(33,2,'Vulputate',''),(43,1,'Home',''),(2,2,'Dresses',''),(19,1,'Accessories',''),(22,2,'Mauris amattis',''),(21,1,'Nunc imperdiet',''),(23,1,'Lacus sed iaculis',''),(29,1,'Litterarum',''),(26,1,'Claritas',''),(31,1,'Sollemnes',''),(33,1,'Vulputate',''),(28,1,'Hendrerit',''),(25,1,'Aliquam',''),(35,2,'Deals',''),(36,1,'Blog',''),(51,1,'Contact',''),(51,2,'Contact',''),(52,1,'Home3',''),(53,1,'Home2',''),(57,1,'Men',''),(55,1,'Women',''),(55,2,'Women',''),(56,1,'sale',''),(56,2,'sale',''),(57,2,'Men',''),(53,2,'Home2',''),(52,2,'Home3',''),(58,1,'Home4',''),(58,2,'Home4','');
/*!40000 ALTER TABLE `oc_megamenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_megamenu_widgets`
--

DROP TABLE IF EXISTS `oc_megamenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_megamenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=72 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_megamenu_widgets`
--

LOCK TABLES `oc_megamenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_megamenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_megamenu_widgets` VALUES (1,'Video Opencart Installation','video_code','a:1:{s:10:\"video_code\";s:168:\"&lt;iframe width=&quot;300&quot; height=&quot;315&quot; src=&quot;//www.youtube.com/embed/cUhPA5qIxDQ&quot; frameborder=&quot;0&quot; allowfullscreen&gt;&lt;/iframe&gt;\";}',0),(2,'Demo HTML Sample','html','a:1:{s:4:\"html\";a:1:{i:1;s:275:\"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.\";}}',0),(3,'Products Latest','product_list','a:4:{s:9:\"list_type\";s:6:\"newest\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:5:\"limit\";s:2:\"12\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0),(8,'','html','a:7:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:61:\"&lt;p&gt;gfdsgfdsg dfsg dfsg dfsgdf sgdfs&lt;br&gt;&lt;/p&gt;\";}',0),(13,'','html','a:7:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:10:\"categories\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:626:\"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;\";}',0),(43,'','html','a:9:{s:4:\"wkey\";s:2:\"43\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:11:\"Text wedget\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Text wedget\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:346:\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam omnis sequi expedita nobis debitis&lt;/p&gt;\";s:13:\"htmlcontent_2\";s:350:\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident at optio reiciendis culpa reprehenderit&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates,\r\n consectetur soluta laborum maiores alias autem velit deserunt quas quis\r\n repellendus beatae veniam omnis sequi expedita nobis debitis&lt;/p&gt;\";}',0),(41,'','product_list','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:7:\"asfdsaf\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:7:\"fdafdsf\";s:12:\"addition_cls\";s:0:\"\";s:5:\"limit\";s:1:\"6\";s:9:\"list_type\";s:10:\"bestseller\";}',0),(51,'','video','a:12:{s:4:\"wkey\";s:2:\"51\";s:5:\"wtype\";s:5:\"video\";s:11:\"widget_name\";s:12:\"Widget Video\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:12:\"Widget Video\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:10:\"video_link\";s:43:\"https://www.youtube.com/watch?v=oJOnoKZiJQA\";s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:3:\"250\";s:9:\"subinfo_1\";s:3:\"300\";s:9:\"subinfo_2\";s:3:\"300\";}',0),(55,'','html','a:9:{s:4:\"wkey\";s:2:\"55\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:9:\"Demo Html\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:9:\"Demo Html\";s:14:\"widget_title_2\";s:9:\"Demo Html\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:271:\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;\";s:13:\"htmlcontent_2\";s:271:\"&lt;p&gt;Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eveniet laboriosam provident&lt;/p&gt; &lt;p&gt;MAKES UP PHOTOSHOP&lt;/p&gt;&lt;p&gt;Voluptates, consectetur soluta laborum maiores alias autem velit deserunt quas quis repellendus beatae veniam&lt;/p&gt;\";}',0),(50,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"50\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:8:\"Category\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:8:\"Category\";s:14:\"widget_title_4\";s:8:\"Category\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:20:\"18,20,25,33,34,45,46\";}',0),(57,'','video','a:12:{s:4:\"wkey\";s:2:\"57\";s:5:\"wtype\";s:5:\"video\";s:11:\"widget_name\";s:10:\"Demo Video\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:10:\"Demo Video\";s:14:\"widget_title_2\";s:10:\"Demo Video\";s:12:\"addition_cls\";s:0:\"\";s:10:\"video_link\";s:28:\"https://youtu.be/owmmCfKYZL4\";s:5:\"width\";s:4:\"100%\";s:6:\"height\";s:3:\"250\";s:9:\"subinfo_1\";s:3:\"300\";s:9:\"subinfo_2\";s:3:\"300\";}',0),(59,'','facebook','a:15:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:8:\"facebook\";s:11:\"widget_name\";s:6:\"dfgdfg\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:6:\"dfgdfg\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:6:\"dfgdfg\";s:8:\"page_url\";s:35:\"https://www.facebook.com/Pavothemes\";s:6:\"border\";s:1:\"1\";s:6:\"target\";s:4:\"dark\";s:5:\"width\";s:3:\"400\";s:6:\"height\";s:3:\"600\";s:11:\"show_stream\";s:1:\"1\";s:10:\"show_faces\";s:1:\"1\";s:11:\"show_header\";s:1:\"1\";}',0),(60,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"60\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:3:\"Top\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:3:\"Top\";s:14:\"widget_title_2\";s:3:\"Top\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"18,20,25\";}',0),(61,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"61\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:5:\"Dress\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:5:\"Dress\";s:14:\"widget_title_2\";s:5:\"Dress\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"25,17,57\";}',0),(62,'','product_list','a:15:{s:4:\"wkey\";s:2:\"62\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:10:\"Bestseller\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:10:\"Bestseller\";s:14:\"widget_title_2\";s:10:\"Bestseller\";s:12:\"addition_cls\";s:7:\"sidebar\";s:9:\"imagefile\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"limit\";s:1:\"3\";s:6:\"column\";s:1:\"1\";s:12:\"itemsperpage\";s:1:\"4\";s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"88\";s:9:\"list_type\";s:10:\"bestseller\";}',0),(63,'','image','a:13:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:5:\"image\";s:11:\"widget_name\";s:10:\"image-menu\";s:10:\"show_title\";s:1:\"0\";s:14:\"widget_title_1\";s:10:\"image-menu\";s:14:\"widget_title_2\";s:10:\"image-menu\";s:12:\"addition_cls\";s:0:\"\";s:9:\"imagefile\";s:37:\"catalog/demo/module/banner_menu_2.jpg\";s:4:\"size\";s:0:\"\";s:9:\"animation\";s:1:\"1\";s:9:\"alignment\";s:5:\"right\";s:7:\"ispopup\";s:1:\"1\";s:4:\"link\";s:1:\"#\";}',0),(64,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:6:\"Bottom\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:6:\"Bottom\";s:14:\"widget_title_2\";s:6:\"Bottom\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"24,57,33\";}',0),(65,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:15:\"Bag &amp; Shoes\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:15:\"Bag &amp; Shoes\";s:14:\"widget_title_2\";s:15:\"Bag &amp; Shoes\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"20,33,34\";}',0),(66,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:6:\"Bottom\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:6:\"Bottom\";s:14:\"widget_title_2\";s:6:\"Bottom\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"17,18,24\";}',0),(67,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:15:\"Bag &amp; Shoes\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:15:\"Bag &amp; Shoes\";s:14:\"widget_title_2\";s:15:\"Bag &amp; Shoes\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:8:\"25,20,57\";}',0),(68,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:7:\"Fashion\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:7:\"Fashion\";s:14:\"widget_title_2\";s:7:\"Fashion\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:11:\"20,25,33,34\";}',0),(69,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:7:\"Jewelry\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:7:\"Jewelry\";s:14:\"widget_title_2\";s:7:\"Jewelry\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:11:\"57,20,25,34\";}',0),(70,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"70\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:7:\"Watches\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:7:\"Watches\";s:14:\"widget_title_2\";s:7:\"Watches\";s:12:\"addition_cls\";s:7:\"Watches\";s:6:\"catids\";s:11:\"17,18,20,57\";}',0),(71,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:9:\"Cosmetics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:9:\"Cosmetics\";s:14:\"widget_title_2\";s:9:\"Cosmetics\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:11:\"24,20,33,18\";}',0);
/*!40000 ALTER TABLE `oc_megamenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_modification`
--

DROP TABLE IF EXISTS `oc_modification`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_modification` (
  `modification_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(64) NOT NULL,
  `author` varchar(64) NOT NULL,
  `version` varchar(32) NOT NULL,
  `link` varchar(255) NOT NULL,
  `xml` text NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`modification_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_modification`
--

LOCK TABLES `oc_modification` WRITE;
/*!40000 ALTER TABLE `oc_modification` DISABLE KEYS */;
INSERT INTO `oc_modification` VALUES (2,'<font color=\"#0000\"><b>Pavo Framework 3.0</font>','PAVOFRAMEWORK4FIX','PavoThemes','<b>1.0</b>','http://www.pavothemes.com','<modification>\r\n   <name><![CDATA[<font color=\"#0000\"><b>Pavo Framework 3.0</font>]]></name>\r\n    <version><![CDATA[<b>1.0</b>]]></version>\r\n    <author><![CDATA[PavoThemes]]></author>\r\n    <link><![CDATA[http://www.pavothemes.com]]></link>\r\n    <code>PAVOFRAMEWORK4FIX</code>    	             \r\n	<file path=\"admin/view/template/design/layout_form.tpl\">\r\n			<operation>\r\n				<search position=\"replace\"><![CDATA[\r\n				<select name=\"layout_module[<?php echo $module_row; ?>][position]\" class=\"form-control\">\r\n				]]></search>\r\n				<add><![CDATA[\r\n					<select name=\"layout_module[<?php echo $module_row; ?>][position]\" class=\"form-control\">\r\n					<option value=\"slideshow\"   <?php if ($layout_module[\'position\'] == \'slideshow\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'slideshow\'); ?>\r\n			 		 </option>\r\n			 		 \r\n\r\n			 		\r\n		\r\n			 		 <option value=\"promotion\"   <?php if ($layout_module[\'position\'] == \'promotion\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'promotion\'); ?>\r\n			 		 </option>\r\n			 \r\n			 		 <option value=\"showcase\"   <?php if ($layout_module[\'position\'] == \'showcase\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'showcase\'); ?>\r\n			 		 </option>\r\n			\r\n			 		 <option value=\"mass_bottom\"   <?php if ($layout_module[\'position\'] == \'mass_bottom\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Mass Bottom\'); ?>\r\n			 		 </option>\r\n			 	\r\n			 		 <option value=\"footer_top\"   <?php if ($layout_module[\'position\'] == \'footer_top\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Top\'); ?>\r\n			 		 </option>\r\n			 		  <option value=\"footer_center\"   <?php if ($layout_module[\'position\'] == \'footer_center\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Center\'); ?>\r\n			 		 </option>\r\n			 		  <option value=\"footer_bottom\"   <?php if ($layout_module[\'position\'] == \'footer_bottom\') { ?>selected=\"selected\"<?php } ?>>\r\n			 		 	<?php echo ucfirst(\'Footer Bottom\'); ?>\r\n			 		 </option>\r\n				]]></add>\r\n			</operation>\r\n	</file>\r\n\r\n	<file path=\"admin/controller/common/menu.php\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				 <![CDATA[ $this->load->language(\'common/menu\');  ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  $this->load->language(\'common/menu\');\r\n			 	 $data[\'pavo_link\'] = $this->url->link(\'module/themecontrol\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n			 	  $data[\'megamenu_link\'] = $this->url->link(\'module/pavmegamenu\', \'token=\' . $this->session->data[\'token\'], \'SSL\');\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>		\r\n	<file path=\"admin/view/template/common/menu.tpl\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				 <![CDATA[ <li id=\"sale\"> ]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[\r\n			 	  <li><a class=\"parent\">\r\n			 	  	\r\n			 	  		<i class=\"fa fa-rocket fa-fw\"></i> <span><?php echo \'Pavo Theme Control\'; ?></span></a>\r\n			 	  		<ul>\r\n			 	  			<li><a href=\"<?php echo $pavo_link; ?>\">Theme Control</a></li>\r\n			 	  			<li><a href=\"<?php echo $megamenu_link; ?>\">MegaMenu</a></li>\r\n			 	  		</ul>	\r\n			 	  </li>	\r\n				  <li id=\"sale\">\r\n			  ]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n\r\n	<file path=\"catalog/language/english/common/cart.php\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				 <![CDATA[$_[\'text_items\']    = \'%s item(s) - %s\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'text_items\']    = \'%s\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>	\r\n\r\n	<file path=\"catalog/language/english/checkout/cart.php\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				 <![CDATA[$_[\'text_items\']               = \'%s item(s) - %s\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'text_items\']               = \'%s\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	<file path=\"catalog/language/english/default.php\">\r\n		<operation>\r\n			<search position=\"replace\">\r\n				 <![CDATA[$_[\'error_upload_999\']      = \'Warning: No error code available!\';]]>\r\n			</search>\r\n			<add>\r\n			 <![CDATA[$_[\'error_upload_999\']      = \'Warning: No error code available!\';\r\n$_[\'text_sale\']      = \'Sale\';]]>\r\n			</add>	\r\n		</operation>		\r\n	</file>\r\n	\r\n	\r\n</modification>					   \r\n					   ',1,'2014-12-17 14:52:00');
/*!40000 ALTER TABLE `oc_modification` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_module`
--

DROP TABLE IF EXISTS `oc_module`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_module` (
  `module_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  PRIMARY KEY (`module_id`)
) ENGINE=MyISAM AUTO_INCREMENT=106 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_module`
--

LOCK TABLES `oc_module` WRITE;
/*!40000 ALTER TABLE `oc_module` DISABLE KEYS */;
INSERT INTO `oc_module` VALUES (40,'Category','bestseller','a:5:{s:4:\"name\";s:8:\"Category\";s:5:\"limit\";s:1:\"5\";s:5:\"width\";s:2:\"89\";s:6:\"height\";s:2:\"89\";s:6:\"status\";s:1:\"1\";}'),(36,'Blog page','pavblogcategory','a:4:{s:4:\"name\";s:9:\"Blog page\";s:11:\"category_id\";s:1:\"1\";s:6:\"status\";s:1:\"1\";s:4:\"type\";s:7:\"default\";}'),(39,'Blog page','pavblogcomment','a:3:{s:4:\"name\";s:9:\"Blog page\";s:5:\"limit\";s:1:\"5\";s:6:\"status\";s:1:\"1\";}'),(31,'Home page','pavcarousel','a:10:{s:4:\"name\";s:9:\"Home page\";s:6:\"status\";s:1:\"1\";s:9:\"banner_id\";s:1:\"8\";s:12:\"itemsperpage\";s:1:\"6\";s:5:\"limit\";s:2:\"10\";s:7:\"columns\";s:1:\"6\";s:9:\"auto_play\";s:1:\"1\";s:8:\"interval\";s:4:\"3000\";s:5:\"width\";s:3:\"150\";s:6:\"height\";s:2:\"58\";}'),(85,'Banner1 Home4','pavbannerbuilder','a:5:{s:4:\"name\";s:13:\"Banner1 Home4\";s:12:\"module_title\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:6:\"status\";s:1:\"1\";s:5:\"class\";s:19:\"effect-v7 hidden-xs\";s:6:\"layout\";s:472:\"[{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"inrow\":0,\"lgcol\":6,\"mdcol\":6,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"image\":\"catalog/demo/banners/banner7.jpg\",\"link\":\"#\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"inrow\":0,\"lgcol\":6,\"mdcol\":6,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"image\":\"catalog/demo/banners/banner8.jpg\",\"link\":\"#\"}],\"rows\":[]}]}]\";}'),(83,'Home3','pavhomebuilder','a:5:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:5:\"Home3\";s:5:\"class\";s:5:\"home3\";s:6:\"layout\";s:6195:\"[{\"cls\":\"col-nopadding\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":3,\"xscol\":12,\"widgets\":[],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":9,\"mdcol\":9,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Layers Sliders > slide3\",\"module\":\"pavsliderlayer.98\",\"type\":\"module\"}],\"rows\":[]}]},{\"cls\":\"col-nopadding\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":4,\"mdcol\":4,\"smcol\":4,\"xscol\":12,\"widgets\":[{\"name\":\"img1\",\"module\":\"image.UCcBGK\",\"type\":\"image\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":4,\"mdcol\":4,\"smcol\":4,\"xscol\":12,\"widgets\":[{\"name\":\"img2\",\"module\":\"image.yudkIl\",\"type\":\"image\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":4,\"mdcol\":4,\"smcol\":4,\"xscol\":12,\"widgets\":[{\"name\":\"img3\",\"module\":\"image.cGxzJN\",\"type\":\"image\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":5,\"xscol\":12,\"widgets\":[{\"name\":\"Latest deal\",\"module\":\"product_deal.QzwWbG\",\"type\":\"product_deal\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":9,\"mdcol\":9,\"smcol\":7,\"xscol\":12,\"widgets\":[{\"name\":\"producttabs2\",\"module\":\"product_tabs.h7bbAK\",\"type\":\"product_tabs\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Fashion & Clothing\",\"module\":\"product_scroll.SLVz6e\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Electronics  & Computers\",\"module\":\"product_scroll.FSJqBo\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Toys, Kids  & Baby\",\"module\":\"product_scroll.AYvFqY\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Home, Garden & Tools\",\"module\":\"product_scroll.qyUdNJ\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Decor & furniture\",\"module\":\"product_scroll.VLuzGw\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Sports  & Outdoors\",\"module\":\"product_scroll.YqQdBT\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"gifts, parties  & holiday\",\"module\":\"product_scroll.hEpl7i\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"beauty  & health\",\"module\":\"product_scroll.FpK9qr\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":4,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Social Fly Tab > social fly\",\"module\":\"pavsocial.105\",\"type\":\"module\"}],\"rows\":[]}]}]\";s:9:\"module_id\";s:2:\"83\";}'),(98,'slide3','pavsliderlayer','a:4:{s:4:\"name\";s:6:\"slide3\";s:6:\"status\";s:1:\"1\";s:8:\"group_id\";s:2:\"23\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(96,'slide1','pavsliderlayer','a:4:{s:4:\"name\";s:6:\"slide1\";s:6:\"status\";s:1:\"1\";s:8:\"group_id\";s:2:\"21\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(59,'Default','pavhomebuilder','a:5:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:7:\"Default\";s:5:\"class\";s:0:\"\";s:6:\"layout\";s:4858:\"[{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"1\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Layers Sliders > slide1\",\"module\":\"pavsliderlayer.96\",\"type\":\"module\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Deal Of The Week\",\"module\":\"countdownproduct.3KGUOf\",\"type\":\"countdownproduct\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Fashion & Clothing\",\"module\":\"product_scroll.jeLWzy\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Electronics  & Computers\",\"module\":\"product_scroll.6lJjN2\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Toys, Kids  & Baby\",\"module\":\"product_scroll.avrPe0\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Home, Garden & Tools\",\"module\":\"product_scroll.fw43E6\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Decor & furniture\",\"module\":\"product_scroll.N3ySyv\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Sports  & Outdoors\",\"module\":\"product_scroll.mVwx7B\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"gifts, parties  & holiday\",\"module\":\"product_scroll.LTT2ag\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"beauty  & health\",\"module\":\"product_scroll.VijkxZ\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":4,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Social Fly Tab > social fly\",\"module\":\"pavsocial.105\",\"type\":\"module\"}],\"rows\":[]}]}]\";s:9:\"module_id\";s:2:\"59\";}'),(81,'Deals Product 1','pavdeals','a:14:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:15:\"Deals Product 1\";s:10:\"date_start\";s:10:\"2014-12-31\";s:7:\"date_to\";s:10:\"2018-07-03\";s:12:\"category_ids\";a:20:{i:0;s:1:\"0\";i:1;s:2:\"36\";i:2;s:2:\"45\";i:3;s:2:\"46\";i:4;s:2:\"59\";i:5;s:2:\"60\";i:6;s:2:\"61\";i:7;s:2:\"62\";i:8;s:2:\"63\";i:9;s:2:\"20\";i:10;s:2:\"26\";i:11;s:2:\"28\";i:12;s:2:\"18\";i:13;s:2:\"27\";i:14;s:2:\"25\";i:15;s:2:\"57\";i:16;s:2:\"17\";i:17;s:2:\"24\";i:18;s:2:\"33\";i:19;s:2:\"34\";}s:10:\"sort_deals\";s:18:\"p.sort_order__desc\";s:5:\"limit\";s:1:\"5\";s:4:\"cols\";s:1:\"5\";s:12:\"itemsperpage\";s:1:\"5\";s:6:\"prefix\";s:0:\"\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:9:\"auto_play\";s:1:\"0\";s:8:\"interval\";s:4:\"1000\";}'),(75,'reassurance 1','pavreassurance','a:4:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:13:\"reassurance 1\";s:6:\"prefix\";s:0:\"\";s:15:\"pavreassurances\";a:3:{i:1;a:5:{s:11:\"select_icon\";s:21:\"fa-credit-card  fa-3x\";s:23:\"reassurance_prefixclass\";s:0:\"\";s:5:\"title\";a:2:{i:1;s:12:\"Safe Payment\";i:2;s:12:\"Safe Payment\";}s:7:\"caption\";a:2:{i:1;s:79:\"&lt;p&gt;Pay with the world\'s most popular and secure payment methods&lt;/p&gt;\";i:2;s:79:\"&lt;p&gt;Pay with the world\'s most popular and secure payment methods&lt;/p&gt;\";}s:6:\"detail\";a:2:{i:1;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";i:2;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";}}i:2;a:5:{s:11:\"select_icon\";s:15:\"fa-truck  fa-3x\";s:23:\"reassurance_prefixclass\";s:0:\"\";s:5:\"title\";a:2:{i:1;s:18:\"Worldwide Delivery\";i:2;s:18:\"Worldwide Delivery\";}s:7:\"caption\";a:2:{i:1;s:94:\"&lt;p&gt;With sites in 5 languages, we ship to over 200 countries &amp;amp; regions.&lt;/p&gt;\";i:2;s:94:\"&lt;p&gt;With sites in 5 languages, we ship to over 200 countries &amp;amp; regions.&lt;/p&gt;\";}s:6:\"detail\";a:2:{i:1;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";i:2;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";}}i:3;a:5:{s:11:\"select_icon\";s:19:\"fa-life-ring  fa-3x\";s:23:\"reassurance_prefixclass\";s:0:\"\";s:5:\"title\";a:2:{i:1;s:16:\"24/7 Help Center\";i:2;s:16:\"24/7 Help Center\";}s:7:\"caption\";a:2:{i:1;s:79:\"&lt;p&gt;Round-the-clock assistance for a smooth shopping experience.&lt;/p&gt;\";i:2;s:79:\"&lt;p&gt;Round-the-clock assistance for a smooth shopping experience.&lt;/p&gt;\";}s:6:\"detail\";a:2:{i:1;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";i:2;s:165:\"&lt;p&gt;lorem quis bibendum auctor, nisi elit consequat ipsum, nec sagittis sem nibh id elit. Duis sed odio sit amet nibhultate cursus a sit amet mauris. &lt;/p&gt;\";}}}}'),(93,'Newsletter 1','pavnewsletter','a:5:{s:11:\"displaymode\";s:7:\"default\";s:4:\"name\";s:12:\"Newsletter 1\";s:6:\"status\";s:1:\"1\";s:11:\"description\";a:2:{i:1;s:232:\"																																																																																																																																																																																																																																								\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:6:\"social\";a:2:{i:1;s:926:\"&lt;div class=&quot;panel clearfix&quot;&gt;                    	&lt;div class=&quot;panel-heading pull-left&quot;&gt;    	&lt;h6 class=&quot;panel-title&quot;&gt;stay connect&lt;/h6&gt;	&lt;/div&gt;	&lt;div class=&quot;panel-body pull-left&quot;&gt;       	 &lt;ul class=&quot;list-inline&quot;&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-twitter&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-facebook&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-google-plus&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-youtube&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;                      	&lt;/div&gt;&lt;/div&gt;\";i:2;s:926:\"&lt;div class=&quot;panel clearfix&quot;&gt;                    	&lt;div class=&quot;panel-heading pull-left&quot;&gt;    	&lt;h6 class=&quot;panel-title&quot;&gt;stay connect&lt;/h6&gt;	&lt;/div&gt;	&lt;div class=&quot;panel-body pull-left&quot;&gt;       	 &lt;ul class=&quot;list-inline&quot;&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-twitter&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-facebook&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-google-plus&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;  &lt;li&gt;&lt;a href=&quot;#&quot;&gt;&lt;i class=&quot;icons icons-outline icons-sm fa fa-youtube&quot;&gt;&lt;/i&gt;&lt;/a&gt;&lt;/li&gt;&lt;/ul&gt;                      	&lt;/div&gt;&lt;/div&gt;\";}}'),(82,'Bestsellers1','bestseller','a:5:{s:4:\"name\";s:12:\"Bestsellers1\";s:5:\"limit\";s:1:\"6\";s:5:\"width\";s:3:\"153\";s:6:\"height\";s:3:\"153\";s:6:\"status\";s:1:\"1\";}'),(89,'Home 2','pavhomebuilder','a:5:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:6:\"Home 2\";s:5:\"class\";s:5:\"home2\";s:6:\"layout\";s:5041:\"[{\"cls\":\"col-nopadding\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":3,\"xscol\":12,\"widgets\":[],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":9,\"mdcol\":9,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Layers Sliders > slide2\",\"module\":\"pavsliderlayer.97\",\"type\":\"module\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Featured products\",\"module\":\"product_tabs.cWYeOa\",\"type\":\"product_tabs\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Fashion & Clothing\",\"module\":\"product_scroll.aTeGNs\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Electronics  & Computers\",\"module\":\"product_scroll.MCm9B9\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Toys, Kids  & Baby\",\"module\":\"product_scroll.n19q7t\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Home, Garden & Tools\",\"module\":\"product_scroll.9QxjQS\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Decor & furniture\",\"module\":\"product_scroll.QBldNd\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Sports  & Outdoors\",\"module\":\"product_scroll.CVg9FW\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"gifts, parties  & holiday\",\"module\":\"product_scroll.u53c4e\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"beauty  & health\",\"module\":\"product_scroll.nTgLHh\",\"type\":\"product_scroll\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":4,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Social Fly Tab > social fly\",\"module\":\"pavsocial.105\",\"type\":\"module\"}],\"rows\":[]}]}]\";s:9:\"module_id\";s:2:\"89\";}'),(97,'slide2','pavsliderlayer','a:4:{s:4:\"name\";s:6:\"slide2\";s:6:\"status\";s:1:\"1\";s:8:\"group_id\";s:2:\"22\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(77,'Latest Blog1','pavbloglatest','a:9:{s:4:\"name\";s:12:\"Latest Blog1\";s:6:\"status\";s:1:\"1\";s:11:\"description\";a:2:{i:1;s:105:\"																																																																																																									\";i:2;s:105:\"																																																																																																									\";}s:11:\"prefixclass\";s:12:\"prefix class\";s:4:\"tabs\";s:6:\"latest\";s:5:\"width\";s:3:\"300\";s:6:\"height\";s:3:\"300\";s:4:\"cols\";s:1:\"1\";s:5:\"limit\";s:1:\"1\";}'),(90,'Bestsellers','pavproductcarousel','a:12:{s:11:\"description\";a:2:{i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:4:\"name\";s:11:\"Bestsellers\";s:6:\"status\";s:1:\"1\";s:6:\"prefix\";s:20:\"sidebar panel-orange\";s:11:\"fontawesome\";s:11:\"fontawesome\";s:4:\"tabs\";a:1:{i:0;s:10:\"bestseller\";}s:7:\"product\";a:2:{i:0;s:2:\"28\";i:1;s:2:\"30\";}s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"86\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"1\";s:5:\"limit\";s:1:\"8\";}'),(91,'new arrivals','pavproductcarousel','a:12:{s:11:\"description\";a:2:{i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:4:\"name\";s:12:\"new arrivals\";s:6:\"status\";s:1:\"1\";s:6:\"prefix\";s:20:\"sidebar panel-orange\";s:11:\"fontawesome\";s:11:\"fontawesome\";s:4:\"tabs\";a:1:{i:0;s:6:\"latest\";}s:7:\"product\";a:2:{i:0;s:2:\"31\";i:1;s:2:\"30\";}s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"86\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"1\";s:5:\"limit\";s:1:\"8\";}'),(92,'Top rating','pavproductcarousel','a:12:{s:11:\"description\";a:2:{i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:4:\"name\";s:10:\"Top rating\";s:6:\"status\";s:1:\"1\";s:6:\"prefix\";s:20:\"sidebar panel-orange\";s:11:\"fontawesome\";s:11:\"fontawesome\";s:4:\"tabs\";a:1:{i:0;s:9:\"toprating\";}s:7:\"product\";a:2:{i:0;s:2:\"28\";i:1;s:2:\"45\";}s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"86\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"1\";s:5:\"limit\";s:1:\"8\";}'),(94,'Twitter','pavtwitter','a:15:{s:4:\"name\";s:7:\"Twitter\";s:6:\"status\";s:1:\"1\";s:9:\"widget_id\";s:18:\"366766896986591232\";s:5:\"count\";s:1:\"1\";s:8:\"username\";s:10:\"pavothemes\";s:5:\"theme\";s:5:\"light\";s:14:\"nickname_color\";s:6:\"666666\";s:10:\"name_color\";s:6:\"666666\";s:11:\"title_color\";s:6:\"666666\";s:10:\"link_color\";s:6:\"F44336\";s:12:\"border_color\";s:6:\"FFFFFF\";s:5:\"width\";s:0:\"\";s:6:\"height\";s:0:\"\";s:12:\"show_replies\";s:1:\"1\";s:6:\"chrome\";a:5:{i:0;s:8:\"noheader\";i:1;s:8:\"nofooter\";i:2;s:9:\"noborders\";i:3;s:11:\"noscrollbar\";i:4;s:11:\"transparent\";}}'),(99,'Home4','pavhomebuilder','a:5:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:5:\"Home4\";s:5:\"class\";s:5:\"home4\";s:6:\"layout\";s:3860:\"[{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"30px auto\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":9,\"mdcol\":9,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Layers Sliders > Slide4\",\"module\":\"pavsliderlayer.101\",\"type\":\"module\"}],\"rows\":[]},{\"index\":0,\"cls\":\"hidden-sm hidden-xs\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":3,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Vertical MegaMenu > vertical1\",\"module\":\"pavverticalmenu.100\",\"type\":\"module\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"over-hidden\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":9,\"mdcol\":9,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Featured Products \",\"module\":\"featuredproduct.bTUwvf\",\"type\":\"featuredproduct\"},{\"name\":\"Pav Banners Builder > Banner1 Home4\",\"module\":\"pavbannerbuilder.85\",\"type\":\"module\"}],\"rows\":[]},{\"index\":0,\"cls\":\"hidden-sm hidden-xs\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":3,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Testimonial Manager > user reviews\",\"module\":\"pavtestimonial.102\",\"type\":\"module\"},{\"name\":\"img-h4\",\"module\":\"image.ikGmQU\",\"type\":\"image\"},{\"name\":\"Information\",\"module\":\"html.NFbhhE\",\"type\":\"html\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Product Carousel > Bestsellers\",\"module\":\"pavproductcarousel.90\",\"type\":\"module\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Product Carousel > Top rating\",\"module\":\"pavproductcarousel.92\",\"type\":\"module\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Product Carousel > new arrivals\",\"module\":\"pavproductcarousel.91\",\"type\":\"module\"}],\"rows\":[]},{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":3,\"mdcol\":3,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Product Carousel > popular\",\"module\":\"pavproductcarousel.103\",\"type\":\"module\"}],\"rows\":[]}]},{\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":\"0\",\"parallax\":\"0\",\"sfxcls\":null,\"padding\":\"\",\"margin\":\"0 auto 30px\",\"iposition\":null,\"iattachment\":null,\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":12,\"smcol\":12,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Carousel > Home page\",\"module\":\"pavcarousel.31\",\"type\":\"module\"}],\"rows\":[]}]},{\"index\":0,\"cls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"fullwidth\":0,\"parallax\":0,\"sfxcls\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"cols\":[{\"index\":0,\"cls\":\"\",\"sfxcls\":\"\",\"bgcolor\":\"\",\"bgimage\":\"\",\"padding\":\"\",\"margin\":\"\",\"iposition\":\"\",\"iattachment\":\"\",\"inrow\":0,\"lgcol\":12,\"mdcol\":4,\"smcol\":6,\"xscol\":12,\"widgets\":[{\"name\":\"Pav Social Fly Tab > social fly\",\"module\":\"pavsocial.105\",\"type\":\"module\"}],\"rows\":[]}]}]\";s:9:\"module_id\";s:2:\"99\";}'),(100,'vertical1','pavverticalmenu','a:2:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:9:\"vertical1\";}'),(101,'Slide4','pavsliderlayer','a:4:{s:4:\"name\";s:6:\"Slide4\";s:6:\"status\";s:1:\"1\";s:8:\"group_id\";s:2:\"24\";s:21:\"pavsliderlayer_module\";a:0:{}}'),(102,'user reviews','pavtestimonial','a:10:{s:4:\"name\";s:12:\"user reviews\";s:6:\"status\";s:1:\"1\";s:9:\"auto_play\";s:1:\"1\";s:13:\"text_interval\";s:4:\"8000\";s:5:\"width\";s:3:\"940\";s:6:\"height\";s:3:\"350\";s:11:\"column_item\";s:1:\"1\";s:10:\"page_items\";s:1:\"2\";s:5:\"class\";s:46:\"testimonials-v6 panel-orange panel-v3 space-30\";s:16:\"testimonial_item\";a:2:{i:1;a:4:{s:5:\"image\";s:0:\"\";s:10:\"video_link\";s:0:\"\";s:7:\"profile\";a:2:{i:1;s:149:\"&lt;span class=&quot;name text-uppercase&quot;&gt;John doe&lt;/span&gt;&lt;span class=&quot;job text-uppercase&quot;&gt;creative manager&lt;/span&gt;\";i:2;s:149:\"&lt;span class=&quot;name text-uppercase&quot;&gt;John doe&lt;/span&gt;&lt;span class=&quot;job text-uppercase&quot;&gt;creative manager&lt;/span&gt;\";}s:11:\"description\";a:2:{i:1;s:240:\"&lt;p&gt;Aenean sollicitudin, lorem quis bibendum auctor, nisi elisequat ipsum, necittis sem nibh id elit. Duis sed odio sit amet nibhtate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam ec tellus a odio tincidunt auctor&lt;/p&gt;\";i:2;s:240:\"&lt;p&gt;Aenean sollicitudin, lorem quis bibendum auctor, nisi elisequat ipsum, necittis sem nibh id elit. Duis sed odio sit amet nibhtate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam ec tellus a odio tincidunt auctor&lt;/p&gt;\";}}i:2;a:4:{s:5:\"image\";s:0:\"\";s:10:\"video_link\";s:0:\"\";s:7:\"profile\";a:2:{i:1;s:149:\"&lt;span class=&quot;name text-uppercase&quot;&gt;Lisa Luu&lt;/span&gt;&lt;span class=&quot;job text-uppercase&quot;&gt;creative manager&lt;/span&gt;\";i:2;s:149:\"&lt;span class=&quot;name text-uppercase&quot;&gt;Lisa Luu&lt;/span&gt;&lt;span class=&quot;job text-uppercase&quot;&gt;creative manager&lt;/span&gt;\";}s:11:\"description\";a:2:{i:1;s:213:\"&lt;p&gt;Nemo enim ipsam voluptatem quia voluptas. Lorem dolor sit amet sagittis velit mollis eros adipiscing massa nulla ut augue. Duis aute irure dolor in reprehen derit in voluptate velit esse cillum.&lt;/p&gt;\";i:2;s:213:\"&lt;p&gt;Nemo enim ipsam voluptatem quia voluptas. Lorem dolor sit amet sagittis velit mollis eros adipiscing massa nulla ut augue. Duis aute irure dolor in reprehen derit in voluptate velit esse cillum.&lt;/p&gt;\";}}}}'),(105,'social fly','pavsocial','a:28:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:10:\"social fly\";s:8:\"facebook\";s:35:\"https://www.facebook.com/PavoThemes\";s:14:\"application_id\";s:0:\"\";s:12:\"border_color\";s:7:\"#000000\";s:11:\"colorscheme\";s:5:\"light\";s:10:\"face_width\";s:3:\"220\";s:11:\"face_height\";s:3:\"220\";s:5:\"tream\";s:1:\"0\";s:10:\"show_faces\";s:1:\"0\";s:6:\"header\";s:1:\"0\";s:9:\"widget_id\";s:18:\"366766896986591232\";s:5:\"count\";s:1:\"5\";s:8:\"username\";s:10:\"PavoThemes\";s:5:\"theme\";s:5:\"light\";s:14:\"nickname_color\";s:7:\"#000000\";s:10:\"name_color\";s:7:\"#000000\";s:11:\"title_color\";s:7:\"#000000\";s:10:\"link_color\";s:7:\"#000000\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"220\";s:12:\"show_replies\";s:1:\"0\";s:17:\"youtube_video_ids\";s:11:\"oJOnoKZiJQA\";s:11:\"video_width\";s:3:\"766\";s:12:\"video_height\";s:3:\"220\";s:6:\"google\";s:45:\"https://plus.google.com/108949096200367463694\";s:13:\"google_height\";s:3:\"220\";s:3:\"url\";s:26:\"http://www.pavothemes.com/\";}'),(103,'popular','pavproductcarousel','a:12:{s:11:\"description\";a:2:{i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:4:\"name\";s:7:\"popular\";s:6:\"status\";s:1:\"1\";s:6:\"prefix\";s:20:\"panel-orange sidebar\";s:11:\"fontawesome\";s:11:\"fontawesome\";s:4:\"tabs\";a:1:{i:0;s:8:\"featured\";}s:7:\"product\";a:5:{i:0;s:2:\"31\";i:1;s:2:\"28\";i:2;s:2:\"30\";i:3;s:2:\"46\";i:4;s:2:\"45\";}s:5:\"width\";s:2:\"80\";s:6:\"height\";s:2:\"86\";s:12:\"itemsperpage\";s:1:\"4\";s:4:\"cols\";s:1:\"1\";s:5:\"limit\";s:1:\"8\";}');
/*!40000 ALTER TABLE `oc_module` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option`
--

DROP TABLE IF EXISTS `oc_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option` (
  `option_id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(32) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option`
--

LOCK TABLES `oc_option` WRITE;
/*!40000 ALTER TABLE `oc_option` DISABLE KEYS */;
INSERT INTO `oc_option` VALUES (1,'radio',1),(2,'checkbox',2),(4,'text',3),(5,'select',4),(6,'textarea',5),(7,'file',6),(8,'date',7),(9,'time',8),(10,'datetime',9),(11,'select',10),(12,'date',11);
/*!40000 ALTER TABLE `oc_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_description`
--

DROP TABLE IF EXISTS `oc_option_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_description` (
  `option_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_description`
--

LOCK TABLES `oc_option_description` WRITE;
/*!40000 ALTER TABLE `oc_option_description` DISABLE KEYS */;
INSERT INTO `oc_option_description` VALUES (1,1,'Radio'),(2,1,'Checkbox'),(4,1,'Text'),(6,1,'Textarea'),(8,1,'Date'),(7,1,'File'),(5,1,'Select'),(9,1,'Time'),(10,1,'Date &amp; Time'),(12,1,'Delivery Date'),(11,1,'Size'),(1,2,'Radio'),(2,2,'Checkbox'),(4,2,'Text'),(6,2,'Textarea'),(8,2,'Date'),(7,2,'File'),(5,2,'Select'),(9,2,'Time'),(10,2,'Date &amp; Time'),(12,2,'Delivery Date'),(11,2,'Size');
/*!40000 ALTER TABLE `oc_option_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value`
--

DROP TABLE IF EXISTS `oc_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value` (
  `option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `option_id` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=49 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value`
--

LOCK TABLES `oc_option_value` WRITE;
/*!40000 ALTER TABLE `oc_option_value` DISABLE KEYS */;
INSERT INTO `oc_option_value` VALUES (43,1,'',3),(32,1,'',1),(45,2,'',4),(44,2,'',3),(42,5,'',4),(41,5,'',3),(39,5,'',1),(40,5,'',2),(31,1,'',2),(23,2,'',1),(24,2,'',2),(46,11,'',1),(47,11,'',2),(48,11,'',3);
/*!40000 ALTER TABLE `oc_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_option_value_description`
--

DROP TABLE IF EXISTS `oc_option_value_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_option_value_description` (
  `option_value_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`option_value_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_option_value_description`
--

LOCK TABLES `oc_option_value_description` WRITE;
/*!40000 ALTER TABLE `oc_option_value_description` DISABLE KEYS */;
INSERT INTO `oc_option_value_description` VALUES (43,1,1,'Large'),(32,1,1,'Small'),(45,1,2,'Checkbox 4'),(44,1,2,'Checkbox 3'),(31,1,1,'Medium'),(42,1,5,'Yellow'),(41,1,5,'Green'),(39,1,5,'Red'),(40,1,5,'Blue'),(23,1,2,'Checkbox 1'),(24,1,2,'Checkbox 2'),(48,1,11,'Large'),(47,1,11,'Medium'),(46,1,11,'Small'),(43,2,1,'Large'),(32,2,1,'Small'),(45,2,2,'Checkbox 4'),(44,2,2,'Checkbox 3'),(31,2,1,'Medium'),(42,2,5,'Yellow'),(41,2,5,'Green'),(39,2,5,'Red'),(40,2,5,'Blue'),(23,2,2,'Checkbox 1'),(24,2,2,'Checkbox 2'),(48,2,11,'Large'),(47,2,11,'Medium'),(46,2,11,'Small');
/*!40000 ALTER TABLE `oc_option_value_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order`
--

DROP TABLE IF EXISTS `oc_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order` (
  `order_id` int(11) NOT NULL AUTO_INCREMENT,
  `invoice_no` int(11) NOT NULL DEFAULT '0',
  `invoice_prefix` varchar(26) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `store_name` varchar(64) NOT NULL,
  `store_url` varchar(255) NOT NULL,
  `customer_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `fax` varchar(32) NOT NULL,
  `custom_field` text NOT NULL,
  `payment_firstname` varchar(32) NOT NULL,
  `payment_lastname` varchar(32) NOT NULL,
  `payment_company` varchar(40) NOT NULL,
  `payment_address_1` varchar(128) NOT NULL,
  `payment_address_2` varchar(128) NOT NULL,
  `payment_city` varchar(128) NOT NULL,
  `payment_postcode` varchar(10) NOT NULL,
  `payment_country` varchar(128) NOT NULL,
  `payment_country_id` int(11) NOT NULL,
  `payment_zone` varchar(128) NOT NULL,
  `payment_zone_id` int(11) NOT NULL,
  `payment_address_format` text NOT NULL,
  `payment_custom_field` text NOT NULL,
  `payment_method` varchar(128) NOT NULL,
  `payment_code` varchar(128) NOT NULL,
  `shipping_firstname` varchar(32) NOT NULL,
  `shipping_lastname` varchar(32) NOT NULL,
  `shipping_company` varchar(40) NOT NULL,
  `shipping_address_1` varchar(128) NOT NULL,
  `shipping_address_2` varchar(128) NOT NULL,
  `shipping_city` varchar(128) NOT NULL,
  `shipping_postcode` varchar(10) NOT NULL,
  `shipping_country` varchar(128) NOT NULL,
  `shipping_country_id` int(11) NOT NULL,
  `shipping_zone` varchar(128) NOT NULL,
  `shipping_zone_id` int(11) NOT NULL,
  `shipping_address_format` text NOT NULL,
  `shipping_custom_field` text NOT NULL,
  `shipping_method` varchar(128) NOT NULL,
  `shipping_code` varchar(128) NOT NULL,
  `comment` text NOT NULL,
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `order_status_id` int(11) NOT NULL DEFAULT '0',
  `affiliate_id` int(11) NOT NULL,
  `commission` decimal(15,4) NOT NULL,
  `marketing_id` int(11) NOT NULL,
  `tracking` varchar(64) NOT NULL,
  `language_id` int(11) NOT NULL,
  `currency_id` int(11) NOT NULL,
  `currency_code` varchar(3) NOT NULL,
  `currency_value` decimal(15,8) NOT NULL DEFAULT '1.00000000',
  `ip` varchar(40) NOT NULL,
  `forwarded_ip` varchar(40) NOT NULL,
  `user_agent` varchar(255) NOT NULL,
  `accept_language` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order`
--

LOCK TABLES `oc_order` WRITE;
/*!40000 ALTER TABLE `oc_order` DISABLE KEYS */;
INSERT INTO `oc_order` VALUES (3,0,'INV-2013-00',0,'Extroic','http://localhost/opencart/pav_extroic/',4,1,'ngoc','ngoc','admin@gmail.com','11111111111111','1111111111','b:0;','ngoc','ngoc','','asdfads','dasfasdf','dasfasdf','sdafdasfsd','Tajikistan',207,'Khatlon',3161,'','b:0;','Cash On Delivery','cod','ngoc','ngoc','','asdfads','dasfasdf','dasfasdf','sdafdasfsd','Tajikistan',207,'Khatlon',3161,'','b:0;','Flat Shipping Rate','flat.flat','',1615.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-US,en;q=0.5','2015-01-20 09:40:03','2015-01-20 09:40:04'),(4,0,'INV-2013-00',0,'Extroic','http://localhost/opencart/pav_extroic/',4,1,'ngoc','ngoc','admin@gmail.com','11111111111111','1111111111','b:0;','ngoc','ngoc','','asdfads','dasfasdf','dasfasdf','sdafdasfsd','Tajikistan',207,'Khatlon',3161,'','b:0;','Cash On Delivery','cod','ngoc','ngoc','','asdfads','dasfasdf','dasfasdf','sdafdasfsd','Tajikistan',207,'Khatlon',3161,'','b:0;','Flat Shipping Rate','flat.flat','',1105.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:35.0) Gecko/20100101 Firefox/35.0','en-US,en;q=0.5','2015-01-20 09:41:17','2015-01-20 09:41:18'),(5,0,'INV-2013-00',0,'Pav Shopping New- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/pav_shopping_new/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',1065.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-06-25 17:20:06','2015-06-25 17:20:08'),(6,0,'INV-2013-00',0,'Pav Shopping New- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/pav_shopping_new/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',414.9900,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-06-25 17:21:41','2015-06-25 17:21:42'),(7,0,'INV-2013-00',0,'Pav Shopping New- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/pav_shopping_new/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',105.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-06-26 10:14:29','2015-06-26 10:14:34'),(8,0,'INV-2013-00',0,'Pav Shopping New- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/pav_shopping_new/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',1005.0000,0,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-06-26 10:17:47','2015-06-26 10:17:47'),(9,0,'INV-2013-00',0,'Pav Shopping New- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/pav_shopping_new/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',1005.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-06-26 10:22:47','2015-06-26 10:22:52'),(10,0,'INV-2013-00',0,'Lexus Gol Mart- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/lexus_golmart/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',2285.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-08-03 15:17:32','2015-08-03 15:17:34'),(11,0,'INV-2013-00',0,'Lexus Gol Mart- Responsive Opencart Theme','http://localhost/opencart/opencart2.2/lexus_golmart/',7,1,'admin','admin','admin1@gmail.com','0123456789','0123466','b:0;','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Cash On Delivery','cod','admin','admin','address1','address1','address1','address1','012343','Taiwan',206,'Chi-lung',3154,'','b:0;','Flat Shipping Rate','flat.flat','',205.0000,1,0,0.0000,0,'',1,2,'USD',1.00000000,'127.0.0.1','','Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:36.0) Gecko/20100101 Firefox/36.0','en-US,en;q=0.5','2015-08-04 09:44:49','2015-08-04 09:44:50');
/*!40000 ALTER TABLE `oc_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_custom_field`
--

DROP TABLE IF EXISTS `oc_order_custom_field`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_custom_field` (
  `order_custom_field_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `custom_field_id` int(11) NOT NULL,
  `custom_field_value_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  `location` varchar(16) NOT NULL,
  PRIMARY KEY (`order_custom_field_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_custom_field`
--

LOCK TABLES `oc_order_custom_field` WRITE;
/*!40000 ALTER TABLE `oc_order_custom_field` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_custom_field` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_fraud`
--

DROP TABLE IF EXISTS `oc_order_fraud`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_fraud` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `country_match` varchar(3) NOT NULL,
  `country_code` varchar(2) NOT NULL,
  `high_risk_country` varchar(3) NOT NULL,
  `distance` int(11) NOT NULL,
  `ip_region` varchar(255) NOT NULL,
  `ip_city` varchar(255) NOT NULL,
  `ip_latitude` decimal(10,6) NOT NULL,
  `ip_longitude` decimal(10,6) NOT NULL,
  `ip_isp` varchar(255) NOT NULL,
  `ip_org` varchar(255) NOT NULL,
  `ip_asnum` int(11) NOT NULL,
  `ip_user_type` varchar(255) NOT NULL,
  `ip_country_confidence` varchar(3) NOT NULL,
  `ip_region_confidence` varchar(3) NOT NULL,
  `ip_city_confidence` varchar(3) NOT NULL,
  `ip_postal_confidence` varchar(3) NOT NULL,
  `ip_postal_code` varchar(10) NOT NULL,
  `ip_accuracy_radius` int(11) NOT NULL,
  `ip_net_speed_cell` varchar(255) NOT NULL,
  `ip_metro_code` int(3) NOT NULL,
  `ip_area_code` int(3) NOT NULL,
  `ip_time_zone` varchar(255) NOT NULL,
  `ip_region_name` varchar(255) NOT NULL,
  `ip_domain` varchar(255) NOT NULL,
  `ip_country_name` varchar(255) NOT NULL,
  `ip_continent_code` varchar(2) NOT NULL,
  `ip_corporate_proxy` varchar(3) NOT NULL,
  `anonymous_proxy` varchar(3) NOT NULL,
  `proxy_score` int(3) NOT NULL,
  `is_trans_proxy` varchar(3) NOT NULL,
  `free_mail` varchar(3) NOT NULL,
  `carder_email` varchar(3) NOT NULL,
  `high_risk_username` varchar(3) NOT NULL,
  `high_risk_password` varchar(3) NOT NULL,
  `bin_match` varchar(10) NOT NULL,
  `bin_country` varchar(2) NOT NULL,
  `bin_name_match` varchar(3) NOT NULL,
  `bin_name` varchar(255) NOT NULL,
  `bin_phone_match` varchar(3) NOT NULL,
  `bin_phone` varchar(32) NOT NULL,
  `customer_phone_in_billing_location` varchar(8) NOT NULL,
  `ship_forward` varchar(3) NOT NULL,
  `city_postal_match` varchar(3) NOT NULL,
  `ship_city_postal_match` varchar(3) NOT NULL,
  `score` decimal(10,5) NOT NULL,
  `explanation` text NOT NULL,
  `risk_score` decimal(10,5) NOT NULL,
  `queries_remaining` int(11) NOT NULL,
  `maxmind_id` varchar(8) NOT NULL,
  `error` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_fraud`
--

LOCK TABLES `oc_order_fraud` WRITE;
/*!40000 ALTER TABLE `oc_order_fraud` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_fraud` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_history`
--

DROP TABLE IF EXISTS `oc_order_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_history` (
  `order_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_status_id` int(5) NOT NULL,
  `notify` tinyint(1) NOT NULL DEFAULT '0',
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_history_id`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_history`
--

LOCK TABLES `oc_order_history` WRITE;
/*!40000 ALTER TABLE `oc_order_history` DISABLE KEYS */;
INSERT INTO `oc_order_history` VALUES (5,3,1,0,'','2015-01-20 09:40:04'),(6,4,1,0,'','2015-01-20 09:41:18'),(7,5,1,0,'','2015-06-25 17:20:08'),(8,6,1,0,'','2015-06-25 17:21:42'),(9,7,1,0,'','2015-06-26 10:14:34'),(10,9,1,0,'','2015-06-26 10:22:52'),(11,10,1,0,'','2015-08-03 15:17:34'),(12,11,1,0,'','2015-08-04 09:44:50');
/*!40000 ALTER TABLE `oc_order_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_option`
--

DROP TABLE IF EXISTS `oc_order_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_option` (
  `order_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `order_product_id` int(11) NOT NULL,
  `product_option_id` int(11) NOT NULL,
  `product_option_value_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(255) NOT NULL,
  `value` text NOT NULL,
  `type` varchar(32) NOT NULL,
  PRIMARY KEY (`order_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_option`
--

LOCK TABLES `oc_order_option` WRITE;
/*!40000 ALTER TABLE `oc_order_option` DISABLE KEYS */;
INSERT INTO `oc_order_option` VALUES (3,3,9,225,0,'Delivery Date','2011-04-22','date'),(4,5,14,225,0,'Delivery Date','2011-04-22','date'),(5,11,24,226,15,'Select','Red','select');
/*!40000 ALTER TABLE `oc_order_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_product`
--

DROP TABLE IF EXISTS `oc_order_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_product` (
  `order_product_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `total` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `tax` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `reward` int(8) NOT NULL,
  PRIMARY KEY (`order_product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_product`
--

LOCK TABLES `oc_order_product` WRITE;
/*!40000 ALTER TABLE `oc_order_product` DISABLE KEYS */;
INSERT INTO `oc_order_product` VALUES (10,3,43,'MacBook','Product 16',1,500.0000,500.0000,0.0000,600),(9,3,47,'HP LP3065','Product 21',1,80.0000,80.0000,0.0000,300),(8,3,50,'Apple iPhone 6 128GB','product 11',1,30.0000,30.0000,0.0000,0),(7,3,51,'Samsung UN55HU7250 Curved 55-Inch 4K Ultra HD 120Hz Smart LED TV','Product 19',1,1000.0000,1000.0000,0.0000,0),(11,4,48,'iPod Classic','product 20',1,100.0000,100.0000,0.0000,0),(12,4,51,'Samsung UN55HU7250 Curved 55-Inch 4K Ultra HD 120Hz Smart LED TV','Product 19',1,1000.0000,1000.0000,0.0000,0),(13,5,44,'Lorem ipsum with Metal 14','Product 17',1,1000.0000,1000.0000,0.0000,700),(14,5,47,'Lorem ipsum with Metal 17','Product 21',3,20.0000,60.0000,0.0000,900),(15,6,28,'Lorem ipsum with Metal 1','Product 1',1,100.0000,100.0000,0.0000,400),(16,6,40,'Lorem ipsum with Metal 11','product 11',1,30.0000,30.0000,0.0000,0),(17,6,29,'Lorem ipsum with Metal 2','Product 2',1,279.9900,279.9900,0.0000,0),(18,7,28,'Lorem ipsum with Metal 1','Product 1',1,100.0000,100.0000,0.0000,400),(19,8,44,'Lorem ipsum with Metal 14','Product 17',1,1000.0000,1000.0000,0.0000,700),(20,9,44,'Lorem ipsum with Metal 14','Product 17',1,1000.0000,1000.0000,0.0000,700),(21,10,28,'Hot 2015 Original New Ultra-thin Women','Product 1',2,100.0000,200.0000,0.0000,800),(22,10,31,'iPhone 6 Plus Space Gray','Product 4',1,80.0000,80.0000,0.0000,0),(23,10,45,'Laugh &amp; Learn Crawl Around Car','Product 18',1,2000.0000,2000.0000,0.0000,800),(24,11,30,'ASOS Leather iPhone Sleeve In Black','Product 3',2,100.0000,200.0000,0.0000,400);
/*!40000 ALTER TABLE `oc_order_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring`
--

DROP TABLE IF EXISTS `oc_order_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring` (
  `order_recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `recurring_name` varchar(255) NOT NULL,
  `recurring_description` varchar(255) NOT NULL,
  `recurring_frequency` varchar(25) NOT NULL,
  `recurring_cycle` smallint(6) NOT NULL,
  `recurring_duration` smallint(6) NOT NULL,
  `recurring_price` decimal(10,4) NOT NULL,
  `trial` tinyint(1) NOT NULL,
  `trial_frequency` varchar(25) NOT NULL,
  `trial_cycle` smallint(6) NOT NULL,
  `trial_duration` smallint(6) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `status` tinyint(4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring`
--

LOCK TABLES `oc_order_recurring` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_recurring_transaction`
--

DROP TABLE IF EXISTS `oc_order_recurring_transaction`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_recurring_transaction` (
  `order_recurring_transaction_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_recurring_id` int(11) NOT NULL,
  `reference` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `amount` decimal(10,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`order_recurring_transaction_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_recurring_transaction`
--

LOCK TABLES `oc_order_recurring_transaction` WRITE;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_recurring_transaction` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_status`
--

DROP TABLE IF EXISTS `oc_order_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_status` (
  `order_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`order_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_status`
--

LOCK TABLES `oc_order_status` WRITE;
/*!40000 ALTER TABLE `oc_order_status` DISABLE KEYS */;
INSERT INTO `oc_order_status` VALUES (2,1,'Processing'),(3,1,'Shipped'),(7,1,'Canceled'),(5,1,'Complete'),(8,1,'Denied'),(9,1,'Canceled Reversal'),(10,1,'Failed'),(11,1,'Refunded'),(12,1,'Reversed'),(13,1,'Chargeback'),(1,1,'Pending'),(16,1,'Voided'),(15,1,'Processed'),(14,1,'Expired'),(2,2,'Processing'),(3,2,'Shipped'),(7,2,'Canceled'),(5,2,'Complete'),(8,2,'Denied'),(9,2,'Canceled Reversal'),(10,2,'Failed'),(11,2,'Refunded'),(12,2,'Reversed'),(13,2,'Chargeback'),(1,2,'Pending'),(16,2,'Voided'),(15,2,'Processed'),(14,2,'Expired');
/*!40000 ALTER TABLE `oc_order_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_total`
--

DROP TABLE IF EXISTS `oc_order_total`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_total` (
  `order_total_id` int(10) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(32) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `sort_order` int(3) NOT NULL,
  PRIMARY KEY (`order_total_id`),
  KEY `order_id` (`order_id`)
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_total`
--

LOCK TABLES `oc_order_total` WRITE;
/*!40000 ALTER TABLE `oc_order_total` DISABLE KEYS */;
INSERT INTO `oc_order_total` VALUES (11,3,'total','Total',1615.0000,9),(10,3,'shipping','Flat Shipping Rate',5.0000,3),(9,3,'sub_total','Sub-Total',1610.0000,1),(13,4,'shipping','Flat Shipping Rate',5.0000,3),(12,4,'sub_total','Sub-Total',1100.0000,1),(14,4,'total','Total',1105.0000,9),(15,5,'sub_total','Sub-Total',1060.0000,1),(16,5,'shipping','Flat Shipping Rate',5.0000,3),(17,5,'total','Total',1065.0000,9),(18,6,'sub_total','Sub-Total',409.9900,1),(19,6,'shipping','Flat Shipping Rate',5.0000,3),(20,6,'total','Total',414.9900,9),(21,7,'sub_total','Sub-Total',100.0000,1),(22,7,'shipping','Flat Shipping Rate',5.0000,3),(23,7,'total','Total',105.0000,9),(24,8,'sub_total','Sub-Total',1000.0000,1),(25,8,'shipping','Flat Shipping Rate',5.0000,3),(26,8,'total','Total',1005.0000,9),(27,9,'sub_total','Sub-Total',1000.0000,1),(28,9,'shipping','Flat Shipping Rate',5.0000,3),(29,9,'total','Total',1005.0000,9),(30,10,'sub_total','Sub-Total',2280.0000,1),(31,10,'shipping','Flat Shipping Rate',5.0000,3),(32,10,'total','Total',2285.0000,9),(33,11,'sub_total','Sub-Total',200.0000,1),(34,11,'shipping','Flat Shipping Rate',5.0000,3),(35,11,'total','Total',205.0000,9);
/*!40000 ALTER TABLE `oc_order_total` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_order_voucher`
--

DROP TABLE IF EXISTS `oc_order_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_order_voucher` (
  `order_voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `voucher_id` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  PRIMARY KEY (`order_voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_order_voucher`
--

LOCK TABLES `oc_order_voucher` WRITE;
/*!40000 ALTER TABLE `oc_order_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_order_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog`
--

DROP TABLE IF EXISTS `oc_pavblog_blog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog` (
  `blog_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `position` int(11) NOT NULL,
  `created` date NOT NULL,
  `status` tinyint(1) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hits` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `date_modified` date NOT NULL,
  `video_code` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `tags` varchar(255) NOT NULL,
  `featured` tinyint(1) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog`
--

LOCK TABLES `oc_pavblog_blog` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog` VALUES (7,21,1,'2013-03-09',1,1,198,'catalog/demo/blogs/img1-blog-v1.jpg','','','','2015-03-20','','','joomla, prestashop, magento',1,''),(9,21,2,'2013-03-09',1,1,167,'catalog/demo/blogs/img2-blog-v1.jpg','','','','2015-03-20','','','prestashop, magento',0,''),(10,21,3,'2013-03-09',1,1,243,'catalog/demo/blogs/img3-blog-v1.jpg','test test','','Custom SEO Titlte','2015-03-20','','','prestashop',0,''),(11,21,4,'2013-03-11',1,1,348,'catalog/demo/blogs/img4-blog-v1.jpg','','','','2015-06-08','','','opencart',0,'');
/*!40000 ALTER TABLE `oc_pavblog_blog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_blog_description`
--

DROP TABLE IF EXISTS `oc_pavblog_blog_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_blog_description` (
  `blog_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_blog_description`
--

LOCK TABLES `oc_pavblog_blog_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_blog_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_blog_description` VALUES (7,1,'Donec tellus Nulla','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),(7,2,'Donec tellus Nulla','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis. Sed quisque cum velit&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),(9,1,'Donec tellus ','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),(9,2,'Donec tellus ','&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),(10,1,'Donec tellus Nulla lorem','&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;','&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),(10,2,'Donec tellus Nulla lorem','&lt;p&gt;&quot;Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.&lt;/p&gt;','&lt;p&gt;Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur? Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?&lt;/p&gt;'),(11,1,'Urna pretium elit mauris cursus Curabitur at elit Vestibulum','&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;'),(11,2,'Urna pretium elit mauris cursus Curabitur at elit Vestibulum','&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;','&lt;div class=&quot;itemFullText&quot;&gt;&lt;p&gt;Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur magna. Euismod euismod Suspendisse tortor ante adipiscing risus Aenean Lorem vitae id. Odio ut pretium ligula quam Vestibulum consequat convallis fringilla Vestibulum nulla. Accumsan morbi tristique auctor Aenean nulla lacinia Nullam elit vel vel. At risus pretium urna tortor metus fringilla interdum mauris tempor congue.&lt;/p&gt;&lt;p&gt;Donec tellus Nulla lorem Nullam elit id ut elit feugiat lacus. Congue eget dapibus congue tincidunt senectus nibh risus Phasellus tristique justo. Justo Pellentesque Donec lobortis faucibus Vestibulum Praesent mauris volutpat vitae metus. Ipsum cursus vestibulum at interdum Vivamus nunc fringilla Curabitur ac quis. Nam lacinia wisi tortor orci quis vitae.&lt;/p&gt;&lt;p&gt;Sed mauris Pellentesque elit Aliquam at lacus interdum nascetur elit ipsum. Enim ipsum hendrerit Suspendisse turpis laoreet fames tempus ligula pede ac. Et Lorem penatibus orci eu ultrices egestas Nam quam Vivamus nibh. Morbi condimentum molestie Nam enim odio sodales pretium eros sem pellentesque. Sit tellus Integer elit egestas lacus turpis id auctor nascetur ut. Ac elit vitae.&lt;/p&gt;&lt;p&gt;Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.&lt;/p&gt;&lt;/div&gt;');
/*!40000 ALTER TABLE `oc_pavblog_blog_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category`
--

DROP TABLE IF EXISTS `oc_pavblog_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category` (
  `category_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `meta_keyword` varchar(255) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `meta_description` text,
  `meta_title` varchar(255) DEFAULT NULL,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category`
--

LOCK TABLES `oc_pavblog_category` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category` VALUES (1,'',0,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,0,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,-5,34,47,''),(20,'data/pavblog/pav-c3.jpg',22,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,2,0,NULL,NULL,0,'top','test test',NULL,'','',0,0,0,''),(21,'catalog/demo/banners/iPhone6.jpg',22,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(22,'catalog/demo/banners/iPhone6.jpg',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(23,'data/pavblog/pav-c2.jpg',24,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(24,'data/logo.png',1,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,2,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,''),(25,'',21,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'',0,1,0,1,0,NULL,NULL,0,'top','',NULL,'','',0,0,0,'');
/*!40000 ALTER TABLE `oc_pavblog_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_category_description`
--

DROP TABLE IF EXISTS `oc_pavblog_category_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_category_description` (
  `category_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`category_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_category_description`
--

LOCK TABLES `oc_pavblog_category_description` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_category_description` DISABLE KEYS */;
INSERT INTO `oc_pavblog_category_description` VALUES (1,1,'ROOT','Menu Root'),(22,1,'Demo Category 1','&lt;p&gt;Enter your Category 1 Description Here&lt;/p&gt;\r\n'),(24,1,'Demo Category 2','&lt;p&gt;Description Here&lt;/p&gt;\r\n'),(21,1,'Demo Category 1 2-1','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),(23,1,'Demo Category 1-2-2','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n'),(20,1,'Demo Category 1-2','&lt;p&gt;Ac tincidunt Suspendisse malesuada velit in Nullam elit magnis netus Vestibulum. Praesent Nam adipiscing Aliquam elit accumsan wisi sit semper scelerisque convallis&lt;/p&gt;\r\n\r\n&lt;p&gt;&amp;nbsp;&lt;/p&gt;\r\n'),(25,1,'Demo Category 1-2-3-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(22,2,'Demo Category 1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(21,2,'Demo Category 1 2-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(25,2,'Demo Category 1 2-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(20,2,'Demo Category 1 2-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(24,2,'Demo Category 1 2-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;'),(23,2,'Demo Category 1 2-1','&lt;p&gt;&lt;br&gt;&lt;/p&gt;');
/*!40000 ALTER TABLE `oc_pavblog_category_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavblog_comment`
--

DROP TABLE IF EXISTS `oc_pavblog_comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavblog_comment` (
  `comment_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `blog_id` int(11) unsigned NOT NULL,
  `comment` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `user` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`comment_id`),
  KEY `FK_blog_comment` (`blog_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavblog_comment`
--

LOCK TABLES `oc_pavblog_comment` WRITE;
/*!40000 ALTER TABLE `oc_pavblog_comment` DISABLE KEYS */;
INSERT INTO `oc_pavblog_comment` VALUES (6,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:23:09','ha cong tien','hatuhn@gmail.com'),(7,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:25:19','ha cong tien','hatuhn@gmail.com'),(8,10,'Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag Commodo laoreet semper tincidunt lorem Vestibulum nunc at In Curabitur mag',1,'2013-03-12 14:30:17','Test Test ','ngoisao@aa.com'),(9,7,'Mi vitae magnis Fusce laoreet nibh felis porttitor laoreet Vestibulum faucibus. At Nulla id tincidunt ut sed semper vel Lorem condimentum ornare. Laoreet Vestibulum lacinia massa a commodo habitasse velit Vestibulum tincidunt In. Turpis at eleifend leo mi elit Aenean porta ac sed faucibus. Nunc urna Morbi fringilla vitae orci convallis condimentum auctor sit dui. Urna pretium elit mauris cursus Curabitur at elit Vestibulum.',1,'2014-12-24 10:08:45','Ngoc','dangtienngoc@hotmail.com'),(10,11,'jhfdjgh dghjdgh',0,'2015-04-21 16:40:52','DEMO','DEMO@gmail.com');
/*!40000 ALTER TABLE `oc_pavblog_comment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_email`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_email` (
  `email_id` int(11) NOT NULL AUTO_INCREMENT,
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `attach` varchar(200) DEFAULT NULL,
  `message` text,
  `customer_group_id` int(11) DEFAULT NULL,
  `affiliate` varchar(255) DEFAULT NULL,
  `customer` varchar(255) DEFAULT NULL,
  `product` varchar(255) DEFAULT NULL,
  `defined` varchar(255) DEFAULT NULL,
  `special` varchar(255) DEFAULT NULL,
  `latest` varchar(255) DEFAULT NULL,
  `popular` varchar(255) DEFAULT NULL,
  `defined_categories` varchar(255) DEFAULT NULL,
  `categories` varchar(255) DEFAULT NULL,
  `defined_products` varchar(255) DEFAULT NULL,
  `defined_products_more` varchar(255) DEFAULT NULL,
  `only_selected_language` int(11) DEFAULT NULL,
  `store_id` int(11) DEFAULT NULL,
  `to` varchar(200) DEFAULT NULL,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`email_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_email`
--

LOCK TABLES `oc_pavnewsletter_email` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_email` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_history`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_history` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `template_id` int(11) NOT NULL,
  `public_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `to` varchar(255) NOT NULL,
  `subject` text,
  `message` text,
  `date_added` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_history`
--

LOCK TABLES `oc_pavnewsletter_history` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_subscribe`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_subscribe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_subscribe` (
  `subscribe_id` int(11) NOT NULL AUTO_INCREMENT,
  `customer_id` int(11) DEFAULT '0',
  `store_id` int(11) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `action` tinyint(4) DEFAULT '1',
  PRIMARY KEY (`subscribe_id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_subscribe`
--

LOCK TABLES `oc_pavnewsletter_subscribe` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_subscribe` DISABLE KEYS */;
INSERT INTO `oc_pavnewsletter_subscribe` VALUES (1,0,0,'dssd@gmail.com',1),(2,0,0,'nmc2010@gmail.com',1),(3,2,0,'abc@gmail.com',1),(4,4,0,'admin@gmail.com',1),(5,0,0,'admidn@gmail.com',1),(6,0,0,'admfin@gmail.com',1),(7,0,0,'admdin@gmail.com',1),(8,0,0,'admdddin@gmail.com',1),(9,0,0,'',1),(10,0,0,'',1),(11,0,0,'',1),(12,0,0,'',1),(13,0,0,'',1),(14,0,0,'',1),(15,0,0,'',1),(16,0,0,'',1),(17,0,0,'',1),(18,0,0,'',1),(19,0,0,'',1),(20,0,0,'',1),(21,0,0,'',1),(22,0,0,'',1),(23,0,0,'',1),(24,0,0,'',1),(25,0,0,'',1),(26,0,0,'',1),(27,0,0,'',1),(28,0,0,'',1),(29,0,0,'',1),(30,0,0,'',1),(31,0,0,'',1),(32,0,0,'',1),(33,0,0,'bbb ggg',1),(34,0,0,'adada',1),(35,0,0,'',1),(36,0,0,'',1),(37,0,0,'Your email address',1),(38,0,0,'',1),(39,0,0,'',1),(40,0,0,'',1);
/*!40000 ALTER TABLE `oc_pavnewsletter_subscribe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_template`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_template` (
  `template_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `hits` tinyint(4) DEFAULT '0',
  `template_file` varchar(200) DEFAULT NULL,
  `is_default` tinyint(1) DEFAULT '0',
  `date_added` datetime DEFAULT NULL,
  `ordering` int(11) DEFAULT NULL,
  `date_modified` datetime DEFAULT NULL,
  PRIMARY KEY (`template_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_template`
--

LOCK TABLES `oc_pavnewsletter_template` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_template` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_template` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavnewsletter_template_description`
--

DROP TABLE IF EXISTS `oc_pavnewsletter_template_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavnewsletter_template_description` (
  `template_id` int(11) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `template_message` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavnewsletter_template_description`
--

LOCK TABLES `oc_pavnewsletter_template_description` WRITE;
/*!40000 ALTER TABLE `oc_pavnewsletter_template_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_pavnewsletter_template_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavoslidergroups`
--

DROP TABLE IF EXISTS `oc_pavoslidergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavoslidergroups` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `params` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavoslidergroups`
--

LOCK TABLES `oc_pavoslidergroups` WRITE;
/*!40000 ALTER TABLE `oc_pavoslidergroups` DISABLE KEYS */;
INSERT INTO `oc_pavoslidergroups` VALUES (23,'slide3','a:28:{s:5:\"title\";s:6:\"slide3\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:0:\"\";s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"480\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"0\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"0\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"0\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}'),(22,'slide2','a:28:{s:5:\"title\";s:6:\"slide2\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:0:\"\";s:5:\"width\";s:3:\"900\";s:6:\"height\";s:3:\"480\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"0\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"0\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"0\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}'),(21,'slider1','a:28:{s:5:\"title\";s:7:\"slider1\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:0:\"\";s:5:\"width\";s:4:\"1920\";s:6:\"height\";s:3:\"580\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"0\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"1\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"0\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:1:\"0\";s:14:\"show_navigator\";s:1:\"1\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}'),(24,'slide4','a:28:{s:5:\"title\";s:6:\"slide4\";s:5:\"delay\";s:4:\"9000\";s:9:\"fullwidth\";s:0:\"\";s:5:\"width\";s:3:\"870\";s:6:\"height\";s:3:\"535\";s:12:\"touch_mobile\";s:1:\"1\";s:13:\"stop_on_hover\";s:1:\"1\";s:12:\"shuffle_mode\";s:1:\"0\";s:14:\"image_cropping\";s:1:\"0\";s:11:\"shadow_type\";s:1:\"0\";s:14:\"show_time_line\";s:1:\"0\";s:18:\"time_line_position\";s:3:\"top\";s:16:\"background_color\";s:7:\"#d9d9d9\";s:6:\"margin\";s:1:\"0\";s:7:\"padding\";s:1:\"0\";s:16:\"background_image\";s:1:\"0\";s:14:\"background_url\";s:0:\"\";s:14:\"navigator_type\";s:4:\"none\";s:16:\"navigator_arrows\";s:16:\"verticalcentered\";s:16:\"navigation_style\";s:5:\"round\";s:17:\"offset_horizontal\";s:1:\"0\";s:15:\"offset_vertical\";s:2:\"20\";s:14:\"show_navigator\";s:1:\"0\";s:20:\"hide_navigator_after\";s:3:\"200\";s:15:\"thumbnail_width\";s:3:\"100\";s:16:\"thumbnail_height\";s:2:\"50\";s:16:\"thumbnail_amount\";s:1:\"5\";s:17:\"hide_screen_width\";s:0:\"\";}');
/*!40000 ALTER TABLE `oc_pavoslidergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavosliderlayers`
--

DROP TABLE IF EXISTS `oc_pavosliderlayers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavosliderlayers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `parent_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  `params` text NOT NULL,
  `layersparams` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `position` int(11) NOT NULL,
  `language_id` int(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `id` (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=87 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavosliderlayers`
--

LOCK TABLES `oc_pavosliderlayers` WRITE;
/*!40000 ALTER TABLE `oc_pavosliderlayers` DISABLE KEYS */;
INSERT INTO `oc_pavosliderlayers` VALUES (70,'slide1',0,21,'a:17:{s:2:\"id\";s:2:\"70\";s:15:\"slider_group_id\";s:2:\"21\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"70\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-01.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:7:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:8:\"Original\";s:15:\"layer_animation\";s:3:\"sft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"168\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:14:\"text-orange-60\";s:13:\"layer_caption\";s:12:\"TalkBand B2 \";s:15:\"layer_animation\";s:3:\"sfr\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"200\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:13:\"easeInOutExpo\";s:10:\"time_start\";s:4:\"1000\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:73:\"for only&lt;span class=&quot;text-black-18&quot;&gt; $204.00&lt;/span&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"262\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1800\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:59:\"Be quick! Only 150 Smart Bands avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"303\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeOutExpo\";s:10:\"time_start\";s:4:\"2500\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:234:\"&lt;div class=&quot;box-shipping&quot;&gt;      &lt;img alt=&quot;icon&quot; src=&quot;image/catalog/demo/slider/icon-shipping.png&quot;&gt;        &lt;p class=&quot;text-black-10&quot;&gt;free shipping&lt;/p&gt;          &lt;/div&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"347\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"3200\";}i:5;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:6;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:235:\"&lt;div class=&quot;box-discount&quot;&gt;      &lt;img alt=&quot;icon&quot; src=&quot;image/catalog/demo/slider/icon-discount.png&quot;&gt;       &lt;p class=&quot;text-black-10&quot;&gt;member discount&lt;/p&gt;          &lt;/div&gt;\";s:15:\"layer_animation\";s:3:\"sfl\";s:12:\"layer_easing\";s:14:\"easeInOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"347\";s:10:\"layer_left\";s:4:\"1298\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stl\";s:15:\"layer_endeasing\";s:10:\"easeInExpo\";s:10:\"time_start\";s:4:\"3200\";}i:6;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:7;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a href=&quot;#&quot; class=&quot;btn btn-lg btn-primary&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"352\";s:10:\"layer_left\";s:4:\"1423\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeInQuint\";s:10:\"time_start\";s:4:\"4000\";}}}','catalog/demo/slider/slider-01.jpg',1,0,1),(80,'slide2',0,23,'a:17:{s:2:\"id\";s:2:\"79\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"79\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-05.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:25:\"Bluefish Sport Activewear\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-green-60\";s:13:\"layer_caption\";s:24:\"sale up &lt;br&gt;to 45%\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-05.jpg',1,0,2),(79,'slide2',0,23,'a:17:{s:2:\"id\";s:2:\"79\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"79\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-05.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:25:\"Bluefish Sport Activewear\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-green-60\";s:13:\"layer_caption\";s:24:\"sale up &lt;br&gt;to 45%\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-05.jpg',1,0,1),(75,'slide2',0,22,'a:17:{s:2:\"id\";s:2:\"75\";s:15:\"slider_group_id\";s:2:\"22\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"75\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-04.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"summer 2014\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-blue-60\";s:13:\"layer_caption\";s:29:\"men sport&lt;br&gt;bike dress\";s:15:\"layer_animation\";s:3:\"sfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:3:\"lfr\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltr\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-04.jpg',1,0,1),(74,'slide1',0,22,'a:17:{s:2:\"id\";s:2:\"74\";s:15:\"slider_group_id\";s:2:\"22\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"74\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-03.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:25:\"Bluefish Sport Activewear\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"128\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-blue-60\";s:13:\"layer_caption\";s:14:\"sale up to 45%\";s:15:\"layer_animation\";s:3:\"sfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"153\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"217\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"259\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:3:\"lfr\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"307\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltr\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-03.jpg',1,0,1),(78,'slide1',0,23,'a:17:{s:2:\"id\";s:2:\"78\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"78\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-04.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"summer 2014\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-green-60\";s:13:\"layer_caption\";s:29:\"men sport&lt;br&gt;bike dress\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-04.jpg',1,0,1),(77,'slide1',0,22,'a:17:{s:2:\"id\";s:2:\"74\";s:15:\"slider_group_id\";s:2:\"22\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"74\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-03.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:25:\"Bluefish Sport Activewear\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"128\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-blue-60\";s:13:\"layer_caption\";s:14:\"sale up to 45%\";s:15:\"layer_animation\";s:3:\"sfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"153\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"217\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"259\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:3:\"lfr\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"307\";s:10:\"layer_left\";s:3:\"100\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltr\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-03.jpg',1,0,2),(76,'slide2',0,22,'a:17:{s:2:\"id\";s:2:\"75\";s:15:\"slider_group_id\";s:2:\"22\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"75\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-04.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"summer 2014\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-blue-60\";s:13:\"layer_caption\";s:29:\"men sport&lt;br&gt;bike dress\";s:15:\"layer_animation\";s:3:\"sfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:3:\"lfr\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltr\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-04.jpg',1,0,2),(71,'slide2',0,21,'a:17:{s:2:\"id\";s:2:\"71\";s:15:\"slider_group_id\";s:2:\"21\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"71\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-02.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:4:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"SUMMER 2015\";s:15:\"layer_animation\";s:3:\"sft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"168\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:14:\"text-orange-60\";s:13:\"layer_caption\";s:12:\"SALE OFF 25%\";s:15:\"layer_animation\";s:3:\"sfr\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"200\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:13:\"easeInOutExpo\";s:10:\"time_start\";s:4:\"1200\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:59:\"Be quick! Only 150 Smart Bands avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"280\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeOutExpo\";s:10:\"time_start\";s:4:\"2200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a href=&quot;#&quot; class=&quot;btn btn-lg btn-primary&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"320\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeInQuint\";s:10:\"time_start\";s:4:\"3000\";}}}','catalog/demo/slider/slider-02.jpg',1,0,1),(85,'slide1',0,21,'a:17:{s:2:\"id\";s:2:\"70\";s:15:\"slider_group_id\";s:2:\"21\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"70\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-01.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:7:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:8:\"Original\";s:15:\"layer_animation\";s:3:\"sft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"168\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:14:\"text-orange-60\";s:13:\"layer_caption\";s:12:\"TalkBand B2 \";s:15:\"layer_animation\";s:3:\"sfr\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"200\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:13:\"easeInOutExpo\";s:10:\"time_start\";s:4:\"1000\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:73:\"for only&lt;span class=&quot;text-black-18&quot;&gt; $204.00&lt;/span&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"262\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1800\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:59:\"Be quick! Only 150 Smart Bands avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"303\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeOutExpo\";s:10:\"time_start\";s:4:\"2500\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:234:\"&lt;div class=&quot;box-shipping&quot;&gt;      &lt;img alt=&quot;icon&quot; src=&quot;image/catalog/demo/slider/icon-shipping.png&quot;&gt;        &lt;p class=&quot;text-black-10&quot;&gt;free shipping&lt;/p&gt;          &lt;/div&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"347\";s:10:\"layer_left\";s:4:\"1175\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"3200\";}i:5;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:6;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:235:\"&lt;div class=&quot;box-discount&quot;&gt;      &lt;img alt=&quot;icon&quot; src=&quot;image/catalog/demo/slider/icon-discount.png&quot;&gt;       &lt;p class=&quot;text-black-10&quot;&gt;member discount&lt;/p&gt;          &lt;/div&gt;\";s:15:\"layer_animation\";s:3:\"sfl\";s:12:\"layer_easing\";s:14:\"easeInOutCubic\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"347\";s:10:\"layer_left\";s:4:\"1298\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stl\";s:15:\"layer_endeasing\";s:10:\"easeInExpo\";s:10:\"time_start\";s:4:\"3200\";}i:6;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:7;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a href=&quot;#&quot; class=&quot;btn btn-lg btn-primary&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"352\";s:10:\"layer_left\";s:4:\"1423\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeInQuint\";s:10:\"time_start\";s:4:\"4000\";}}}','catalog/demo/slider/slider-01.jpg',1,0,2),(86,'slide2',0,21,'a:17:{s:2:\"id\";s:2:\"71\";s:15:\"slider_group_id\";s:2:\"21\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"71\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-02.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:4:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"SUMMER 2015\";s:15:\"layer_animation\";s:3:\"sft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"168\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuint\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:14:\"text-orange-60\";s:13:\"layer_caption\";s:12:\"SALE OFF 25%\";s:15:\"layer_animation\";s:3:\"sfr\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"200\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:4:\"auto\";s:15:\"layer_endeasing\";s:13:\"easeInOutExpo\";s:10:\"time_start\";s:4:\"1200\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:59:\"Be quick! Only 150 Smart Bands avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"280\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeOutExpo\";s:10:\"time_start\";s:4:\"2200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a href=&quot;#&quot; class=&quot;btn btn-lg btn-primary&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeInQuart\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"320\";s:10:\"layer_left\";s:3:\"375\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:11:\"easeInQuint\";s:10:\"time_start\";s:4:\"3000\";}}}','catalog/demo/slider/slider-02.jpg',1,0,2),(81,'slide1',0,23,'a:17:{s:2:\"id\";s:2:\"78\";s:15:\"slider_group_id\";s:2:\"23\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"78\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-04.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:11:\"summer 2014\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:2:\"97\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-green-60\";s:13:\"layer_caption\";s:29:\"men sport&lt;br&gt;bike dress\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"125\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:11:\"easeOutSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"252\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:12:\"easeOutQuint\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:3:\"lfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"295\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltl\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"344\";s:10:\"layer_left\";s:3:\"420\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-04.jpg',1,0,2),(82,'slide1',0,24,'a:17:{s:2:\"id\";s:2:\"82\";s:15:\"slider_group_id\";s:2:\"24\";s:12:\"slider_title\";s:6:\"slide1\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"82\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-06.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:5:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:10:\"smartwatch\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"119\";s:10:\"layer_left\";s:3:\"108\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-60\";s:13:\"layer_caption\";s:28:\"fashion&lt;br&gt;_ASM_ Style\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"146\";s:10:\"layer_left\";s:3:\"108\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:72:\"for only &lt;span class=&quot;text-black-18&quot;&gt;$95.00&lt;/span&gt;\";s:15:\"layer_animation\";s:3:\"sfl\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"276\";s:10:\"layer_left\";s:3:\"108\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"stl\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1200\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:56:\"Be quick! Only 150 products avaiable at this sale price.\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"308\";s:10:\"layer_left\";s:3:\"108\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1600\";}i:4;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:5;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"365\";s:10:\"layer_left\";s:3:\"108\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-06.jpg',1,0,1),(83,'slide2',0,24,'a:17:{s:2:\"id\";s:2:\"83\";s:15:\"slider_group_id\";s:2:\"24\";s:12:\"slider_title\";s:6:\"slide2\";s:18:\"slider_language_id\";s:1:\"1\";s:13:\"slider_status\";s:1:\"1\";s:17:\"slider_transition\";s:6:\"random\";s:11:\"slider_slot\";s:1:\"7\";s:15:\"slider_rotation\";s:1:\"0\";s:15:\"slider_duration\";s:3:\"300\";s:12:\"slider_delay\";s:1:\"0\";s:11:\"slider_link\";s:0:\"\";s:16:\"slider_thumbnail\";s:0:\"\";s:15:\"slider_usevideo\";s:1:\"0\";s:14:\"slider_videoid\";s:0:\"\";s:16:\"slider_videoplay\";s:1:\"0\";s:9:\"slider_id\";s:2:\"83\";s:12:\"slider_image\";s:33:\"catalog/demo/slider/slider-07.jpg\";}','O:8:\"stdClass\":1:{s:6:\"layers\";a:4:{i:0;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:1;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:12:\"text-gray-18\";s:13:\"layer_caption\";s:9:\"on friday\";s:15:\"layer_animation\";s:3:\"lft\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"119\";s:10:\"layer_left\";s:3:\"428\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltt\";s:15:\"layer_endeasing\";s:14:\"easeInOutQuart\";s:10:\"time_start\";s:3:\"400\";}i:1;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:2;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-60\";s:13:\"layer_caption\";s:23:\"Sale of&lt;br&gt;up 50%\";s:15:\"layer_animation\";s:3:\"lfb\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"146\";s:10:\"layer_left\";s:3:\"428\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:3:\"ltb\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:3:\"800\";}i:2;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:3;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:13:\"text-white-16\";s:13:\"layer_caption\";s:21:\"Mirum est notare quam\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"288\";s:10:\"layer_left\";s:3:\"428\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:7:\"nothing\";s:10:\"time_start\";s:4:\"1600\";}i:3;a:20:{s:16:\"layer_video_type\";s:7:\"youtube\";s:14:\"layer_video_id\";s:0:\"\";s:18:\"layer_video_height\";s:3:\"200\";s:17:\"layer_video_width\";s:3:\"300\";s:17:\"layer_video_thumb\";s:0:\"\";s:8:\"layer_id\";i:4;s:13:\"layer_content\";s:12:\"no_image.png\";s:10:\"layer_type\";s:4:\"text\";s:11:\"layer_class\";s:0:\"\";s:13:\"layer_caption\";s:87:\"&lt;a class=&quot;btn btn-lg btn-primary&quot; href=&quot;#&quot;&gt;Buy Now &lt;/a&gt;\";s:15:\"layer_animation\";s:12:\"randomrotate\";s:12:\"layer_easing\";s:11:\"easeOutExpo\";s:11:\"layer_speed\";s:3:\"350\";s:9:\"layer_top\";s:3:\"335\";s:10:\"layer_left\";s:3:\"428\";s:13:\"layer_endtime\";s:1:\"0\";s:14:\"layer_endspeed\";s:3:\"300\";s:18:\"layer_endanimation\";s:15:\"randomrotateout\";s:15:\"layer_endeasing\";s:10:\"easeInSine\";s:10:\"time_start\";s:4:\"2000\";}}}','catalog/demo/slider/slider-07.jpg',1,0,1);
/*!40000 ALTER TABLE `oc_pavosliderlayers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_pavwidget`
--

DROP TABLE IF EXISTS `oc_pavwidget`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_pavwidget` (
  `pavwidget_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `code` varchar(32) NOT NULL,
  `setting` text NOT NULL,
  `module_id` int(11) NOT NULL,
  `key` int(11) NOT NULL,
  PRIMARY KEY (`pavwidget_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7668 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_pavwidget`
--

LOCK TABLES `oc_pavwidget` WRITE;
/*!40000 ALTER TABLE `oc_pavwidget` DISABLE KEYS */;
INSERT INTO `oc_pavwidget` VALUES (2436,'content','product_tabs.Q0d0d1','YToyODp7czo0OiJyYW5kIjtzOjE5OiIwLjA0MDE0Mjc4MjI2NTMyMDQyIjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLlEwZDBkMSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5RMGQwZDEiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTE6IlByb2R1Y3QgdGFiIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEyIjtzOjY6ImNvbHVtbiI7czoxOiIzIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNiI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwzMiwzMCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjEiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjAiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjUiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjI3OSI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjQwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==',65,0),(4544,'content','product_list.kbrxMv','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjU5NDU2MzkwMDQ0NzEzMzEiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3Qua2JyeE12IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LmticnhNdiI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IFByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgUHJvZHVjdHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgUHJvZHVjdHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoicGFuZWwtdjEgcHJvZHVjdC1saXN0LXYxIjtzOjk6ImltYWdlZmlsZSI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToibGltaXQiO3M6MToiNiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiNTAyIjtzOjY6ImhlaWdodCI7czozOiI1MjEiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7fQ==',48,0),(4543,'content','image.0X7uKB','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUyNTU2Mjk0NjQwMjkzODciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4wWDd1S0IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4wWDd1S0IiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImltZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozOiJpbWciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjM6ImltZyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzItaG9tZTMuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=',48,0),(4540,'content','bloglatest.f7Fgen','YToxNDp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNjczNTEyOTM1NzM4NTMxMiI7czo2OiJtb2R1bGUiO3M6MTc6ImJsb2dsYXRlc3QuZjdGZ2VuIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNzoiYmxvZ2xhdGVzdC5mN0ZnZW4iO3M6NToid3R5cGUiO3M6MTA6ImJsb2dsYXRlc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJMYXRlc3QgV29ya3MiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IkxhdGVzdCBXb3JrcyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IkxhdGVzdCBXb3JrcyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEzOiJwYW5lbC1zcGVjaWFsIjtzOjM6Im5iciI7czoxOiIyIjtzOjU6IndpZHRoIjtzOjM6Ijc3MCI7czo2OiJoZWlnaHQiO3M6MzoiNDQwIjtzOjQ6ImNvbHMiO3M6MToiMSI7fQ==',48,0),(4533,'content','product_list.SSdIQh','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2NTEzNjE2MTQ1NTAwMzciO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2xpc3QuU1NkSVFoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9saXN0LlNTZElRaCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9saXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiTmV3IGFycml2YWxzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJOZXcgYXJyaXZhbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJwYW5lbC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjUwMiI7czo2OiJoZWlnaHQiO3M6MzoiNTIxIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=',60,0),(4534,'content','product_tabs.Ruc6Yc','YTozMDp7czo0OiJyYW5kIjtzOjE4OiIwLjQ0MDI3OTc3ODE5NDUxMzgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuUnVjNlljIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLlJ1YzZZYyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoiVHJlbmRpbmcgbm93IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJUcmVuZGluZyBub3ciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJUcmVuZGluZyBub3ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJwYW5lbC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzEtaG9tZTMuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6NjoiY29sdW1uIjtzOjE6IjMiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIzIjtzOjExOiJpY29uX25ld2VzdCI7czowOiIiO3M6MTM6ImVuYWJsZV9uZXdlc3QiO3M6MToiMSI7czoxMzoiaWNvbl9mZWF0dXJlZCI7czowOiIiO3M6MTA6InByb2R1Y3RfaWQiO3M6MTc6IjQyLDQ0LDQ3LDQ4LDQwLDMwIjtzOjE1OiJlbmFibGVfZmVhdHVyZWQiO3M6MToiMSI7czoxNToiaWNvbl9iZXN0c2VsbGVyIjtzOjA6IiI7czoxNzoiZW5hYmxlX2Jlc3RzZWxsZXIiO3M6MToiMSI7czoxMjoiaWNvbl9zcGVjaWFsIjtzOjA6IiI7czoxNDoiZW5hYmxlX3NwZWNpYWwiO3M6MToiMSI7czoxNDoiaWNvbl9tb3N0dmlld3MiO3M6MDoiIjtzOjE2OiJlbmFibGVfbW9zdHZpZXdzIjtzOjE6IjEiO3M6OToidGFic3N0eWxlIjtzOjY6InRhYi12NyI7czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiNTAyIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNTIxIjtzOjk6ImF1dG9fcGxheSI7czo0OiIzMDAwIjt9',60,0),(2231,'content','icon_box.yJZ1Hf','YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIwNzg0MjMwNjc3NjU2MTM1IjtzOjY6Im1vZHVsZSI7czoxNToiaWNvbl9ib3gueUpaMUhmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNToiaWNvbl9ib3gueUpaMUhmIjtzOjU6Ind0eXBlIjtzOjg6Imljb25fYm94IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoiaWNvbiBib3ggMiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxODoiIGluc3RhbnQgcGF5bWVudHMgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxODoiIGluc3RhbnQgcGF5bWVudHMgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTQ6Imljb24tZWZmZWN0LXYyIjtzOjg6Imljb25maWxlIjtzOjMxOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWJveDIucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTY6IldlIHB1dCB0aGUgY2FzaCBpbiB5b3VyIFBheXBhbCBhY2NvdW50LiBRdWljayBhbmQgc2ltcGxlIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjU2OiJXZSBwdXQgdGhlIGNhc2ggaW4geW91ciBQYXlwYWwgYWNjb3VudC4gUXVpY2sgYW5kIHNpbXBsZSI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==',61,0),(2232,'content','image.6B12qa','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjE2NjM2NzU0Nzg1OTM1OTQ4IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuNkIxMnFhIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuNkIxMnFhIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4xIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjEiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcxLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',61,0),(2233,'content','image.D0JULO','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjM3MzEwMTUzMjQyMDQ1Mzg1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuRDBKVUxPIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuRDBKVUxPIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWczLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',61,0),(2234,'content','image.kHWwp2','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQyODAzMTk1Mzg3MTg0NDIzIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2Uua0hXd3AyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2Uua0hXd3AyIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzoiYm4yIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czozOiJibjIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcyLWJhbm5lcnYyLmpwZyI7czo0OiJzaXplIjtzOjQ6ImZ1bGwiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',61,0),(2229,'content','icon_box.Fvouv5','YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjM1MzE5NDQwMzIyOTI4MTMiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5Gdm91djUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5Gdm91djUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJpY29uIGJveCAzIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJnZXQgc2hvcHBpbmcgYWR2aWNlICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6ImdldCBzaG9wcGluZyBhZHZpY2UgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTQ6Imljb24tZWZmZWN0LXYyIjtzOjg6Imljb25maWxlIjtzOjMxOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWJveDMucG5nIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTI6IkdldCBwcm9mZXNzaW9uYWwgb3IgcGVyc29uYWwgc2hvcHBpbmcgYWR2aWNlIGJ5IHVzZXIiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NTI6IkdldCBwcm9mZXNzaW9uYWwgb3IgcGVyc29uYWwgc2hvcHBpbmcgYWR2aWNlIGJ5IHVzZXIiO3M6MTQ6Imljb25fYm94X3N0eWxlIjtzOjA6IiI7czoxMDoidGV4dF9hbGlnbiI7czoxNjoiZmVhdHVyZS1ib3gtbGVmdCI7czoxMDoiYmFja2dyb3VuZCI7czowOiIiO30=',61,0),(2230,'content','icon_box.ObubNE','YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjc5Mjk3MTMxOTY4MDUwMTQiO3M6NjoibW9kdWxlIjtzOjE1OiJpY29uX2JveC5PYnViTkUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJpY29uX2JveC5PYnViTkUiO3M6NToid3R5cGUiO3M6ODoiaWNvbl9ib3giO3M6MTE6IndpZGdldF9uYW1lIjtzOjEzOiJJY29uIGJveCAxIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiIgZmluZCB0aGUgYmVzdCBkZWFscyAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiIgZmluZCB0aGUgYmVzdCBkZWFscyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNDoiaWNvbi1lZmZlY3QtdjIiO3M6ODoiaWNvbmZpbGUiO3M6MzE6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tYm94MS5wbmciO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MToiWW91IGJyb3dzZSBvdXIgc2l0ZSBhbmQgYnV5IHdoYXQgeW91IGxpa2UgZnJvbSBvdXIgYmVzdCBkZWFscyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MToiWW91IGJyb3dzZSBvdXIgc2l0ZSBhbmQgYnV5IHdoYXQgeW91IGxpa2UgZnJvbSBvdXIgYmVzdCBkZWFscyI7czoxNDoiaWNvbl9ib3hfc3R5bGUiO3M6MDoiIjtzOjEwOiJ0ZXh0X2FsaWduIjtzOjE2OiJmZWF0dXJlLWJveC1sZWZ0IjtzOjEwOiJiYWNrZ3JvdW5kIjtzOjA6IiI7fQ==',61,0),(2246,'content','product_deal.YTyYPi','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjk1NDY5MjgyODkzODIwMzQiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X2RlYWwuWVR5WVBpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF9kZWFsLllUeVlQaSI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF9kZWFsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czo1OiJkZWFscyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiVGhlIGNvbGxlY3Rpb25zIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiVGhlIGNvbGxlY3Rpb25zIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NToiZGVhbHMiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTQtMDEtMjgiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMjAtMDEtMjgiO3M6NToibGltaXQiO3M6MToiNCI7czo0OiJjb2xzIjtzOjE6IjIiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiIyIjtzOjk6ImltZ193aWR0aCI7czozOiIyNzkiO3M6MTA6ImltZ19oZWlnaHQiO3M6MzoiNDAwIjtzOjEyOiJjYXRlZ29yeV9pZHMiO2E6MjY6e2k6MDtzOjI6IjM1IjtpOjE7czoyOiIzNiI7aToyO3M6MjoiMzciO2k6MztzOjI6IjM4IjtpOjQ7czoyOiI0NSI7aTo1O3M6MjoiNDYiO2k6NjtzOjI6IjU5IjtpOjc7czoyOiI2MCI7aTo4O3M6MjoiNjEiO2k6OTtzOjI6IjYyIjtpOjEwO3M6MjoiNjMiO2k6MTE7czoyOiIyMCI7aToxMjtzOjI6IjI2IjtpOjEzO3M6MjoiMjgiO2k6MTQ7czoyOiIyOSI7aToxNTtzOjI6IjMwIjtpOjE2O3M6MjoiMzEiO2k6MTc7czoyOiIzMiI7aToxODtzOjI6IjE4IjtpOjE5O3M6MjoiMjciO2k6MjA7czoyOiIyNSI7aToyMTtzOjI6IjU3IjtpOjIyO3M6MjoiMTciO2k6MjM7czoyOiIyNCI7aToyNDtzOjI6IjMzIjtpOjI1O3M6MjoiMzQiO319',62,0),(2241,'content','bloglatest.oOk08E','YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjA3Mzg4ODQzMDA0NzUyNzEiO3M6NjoibW9kdWxlIjtzOjE3OiJibG9nbGF0ZXN0Lm9PazA4RSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6ImJsb2dsYXRlc3Qub09rMDhFIjtzOjU6Ind0eXBlIjtzOjEwOiJibG9nbGF0ZXN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czo3OiJCbG9nIHYyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjc6IkJsb2cgdjIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJibG9nLXYyIGNvbC1ub3BhZGRpbmciO3M6MzoibmJyIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMzUwIjtzOjY6ImhlaWdodCI7czozOiIzNTAiO3M6NDoiY29scyI7czoxOiIyIjt9',62,0),(2242,'content','call_to_action.7OgqTd','YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjYyOTQ2ODkzNzU4Nzg4ODEiO3M6NjoibW9kdWxlIjtzOjIxOiJjYWxsX3RvX2FjdGlvbi43T2dxVGQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJjYWxsX3RvX2FjdGlvbi43T2dxVGQiO3M6NToid3R5cGUiO3M6MTQ6ImNhbGxfdG9fYWN0aW9uIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiY29sIHRvIGFjdGlvbiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiIG1pbmltbyAtIHRoZSBtb2Rlcm4gZmFzaGlvbiB0aGVtZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJiZy1wdXJwbGUiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjA6IkEgcGVyZmVjdCB0aGVtZSBidWlsdCBmb3IgeW91ciBzaG9wLiBTdGFydCB5b3VyIGJ1c2luZXNzIG5vdyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMV8xIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzFfMiI7czowOiIiO3M6ODoibGlua18xXzEiO3M6MDoiIjtzOjg6ImxpbmtfMV8yIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzJfMSI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czoxMzoidGV4dF9saW5rXzJfMiI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czo4OiJsaW5rXzJfMSI7czoxOiIjIjtzOjg6ImxpbmtfMl8yIjtzOjE6IiMiO3M6NToic3R5bGUiO3M6MTc6ImNhbGwtdG8tYWN0aW9uLXY1Ijt9',62,0),(2243,'content','featured_category.rMoNhj','YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjIzOTU5OTU2MzMxMTQxMTIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5yTW9OaGoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5yTW9OaGoiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiRmVhdHVyZWQgQ2F0ZWdvcmllcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiRmVhdHVyZWQgQ2F0ZWdvcmllcyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMToiZmVhdHVyZWQtdjIiO3M6MTk6ImNhdGVnb3JpZXNfZmVhdHVyZWQiO2E6Njp7aTowO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzEtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjIwIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzItZmMuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzMtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjI1Ijt9aTozO2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzQtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjI0Ijt9aTo0O2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzUtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjMzIjt9aTo1O2E6Mjp7czo1OiJpbWFnZSI7czo0MjoiY2F0YWxvZy9kZW1vL2ZlYXR1cmVkLWNhdGVnb3J5L2ltZzYtZmMuanBnIjtzOjI6ImlkIjtzOjI6IjM0Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==',62,0),(2010,'content','interactive_banner.2IXg4k','YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjY3MDM3MzA0NjU3NTcyMzkiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuMklYZzRrIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjJJWGc0ayI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjUiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc1LWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJ0aGUgc2hvcCBsb29rIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoidGhlIHNob3AgbG9vayI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=',63,0),(2011,'content','interactive_banner.435twE','YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA0NDg3NTYxMTUyNzc4NTYzIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLjQzNXR3RSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci40MzV0d0UiO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm42IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nNi1sb29rYm9vay5qcGciO3M6NToid2lkdGgiO3M6MzoiMzc4IjtzOjY6ImhlaWdodCI7czozOiIyODAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6Mzk6IlBlcmZlY3Qgd29yayBiYWcgd2l0aCBhbiBlbGVnYW50IGxvb2suICI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czozOToiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMzoidGhlIHNob3AgbG9vayI7czoxMToidGl0bGVsaW5rXzIiO3M6MTM6InRoZSBzaG9wIGxvb2siO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjIiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9',63,0),(2016,'content','parallax.IhO7X3','YToxNTp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMjUwNDQ2NDgzNDIzNjgiO3M6NjoibW9kdWxlIjtzOjE1OiJwYXJhbGxheC5JaE83WDMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE1OiJwYXJhbGxheC5JaE83WDMiO3M6NToid3R5cGUiO3M6ODoicGFyYWxsYXgiO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6InBhcmFsYXgiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiQWJvdXQgdXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6IkFib3V0IHVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjE0OiJjb250ZW50X2h0bWxfMSI7czozODE6IkxvcmVtIGlwc3VtIGRvbG9yIHNpdCBhbWV0LCBjb25zZWN0ZXR1ciBhZGlwaXNjaW5nIGVsaXQsIHNlZCBkbyBlaXVzbW9kIHRlbXBvciBpbmNpZGlkdW50IHV0IGxhYm9yZSBldCBkb2xvcmUgbWFnbmEgYWxpcXVhLiBVdCBlbmltIGFkIG1pbmltIHZlbmlhbSwgcXVpcyBub3N0cnVkIGV4ZXJjaXRhdGlvbiB1bGxhbWNvIGxhYm9yaXMgbmlzaSB1dCBhbGlxdWlwIGV4IGVhIGNvbW1vZG8gY29uc2VxdWF0LiBEdWlzIGF1dGUgaXJ1cmUgZG9sb3IgaW4gcmVwcmVoZW5kZXJpdCBpbiB2b2x1cHRhdGUgdmVsaXQgZXNzZSBjaWxsdW0gZG9sb3JlIGV1IGZ1Z2lhdCBudWxsYSBwYXJpYXR1ci4gRXhjZXB0ZXVyIHNpbnQgb2NjYWVjYXQgY3VwaWRhdGF0IG5vbiBwcm9pZGVudCI7czoxNDoiY29udGVudF9odG1sXzIiO3M6MzgxOiJMb3JlbSBpcHN1bSBkb2xvciBzaXQgYW1ldCwgY29uc2VjdGV0dXIgYWRpcGlzY2luZyBlbGl0LCBzZWQgZG8gZWl1c21vZCB0ZW1wb3IgaW5jaWRpZHVudCB1dCBsYWJvcmUgZXQgZG9sb3JlIG1hZ25hIGFsaXF1YS4gVXQgZW5pbSBhZCBtaW5pbSB2ZW5pYW0sIHF1aXMgbm9zdHJ1ZCBleGVyY2l0YXRpb24gdWxsYW1jbyBsYWJvcmlzIG5pc2kgdXQgYWxpcXVpcCBleCBlYSBjb21tb2RvIGNvbnNlcXVhdC4gRHVpcyBhdXRlIGlydXJlIGRvbG9yIGluIHJlcHJlaGVuZGVyaXQgaW4gdm9sdXB0YXRlIHZlbGl0IGVzc2UgY2lsbHVtIGRvbG9yZSBldSBmdWdpYXQgbnVsbGEgcGFyaWF0dXIuIEV4Y2VwdGV1ciBzaW50IG9jY2FlY2F0IGN1cGlkYXRhdCBub24gcHJvaWRlbnQiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTI6InBhcmFsbGF4dHlwZSI7czo1OiJpbWFnZSI7fQ==',63,0),(2435,'content','image.y1BuLL','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNDMxMTY1MDUyNTc3ODUiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS55MUJ1TEwiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS55MUJ1TEwiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MiI7czo5OiJpbWFnZWZpbGUiO3M6MzU6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzMtaG9tZTguanBnIjtzOjQ6InNpemUiO3M6NzoiMjc5eDQ1MCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjA6IiI7fQ==',65,0),(2015,'content','interactive_banner.YjfbVi','YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjYwODkyMzQ2Mjk4MTkxNzciO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuWWpmYlZpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLllqZmJWaSI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcyLWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjI4MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czozOToiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjM5OiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiAiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJTSE9QIFRIRSBMT09LIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoiU0hPUCBUSEUgTE9PSyI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=',63,0),(2014,'content','interactive_banner.TuHAzV','YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjk3MjQ5NzE4OTg0NDUzOTMiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuVHVIQXpWIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLlR1SEF6ViI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWcxLWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjE0OiJ0aGUgc2hvcCBsb29rICI7czoxMToidGl0bGVsaW5rXzIiO3M6MTQ6InRoZSBzaG9wIGxvb2sgIjtzOjk6Im1hc2tfbGluayI7czoxOiIjIjtzOjExOiJiYW5uZXJfdHlwZSI7czoyOiJ2MSI7czoxMToiZWZmZWN0X3R5cGUiO3M6OToiZWZmZWN0LXYyIjtzOjg6InBvc2l0aW9uIjtzOjY6ImNlbnRlciI7fQ==',63,0),(2013,'content','interactive_banner.cTJLbS','YToyOTp7czo0OiJyYW5kIjtzOjE4OiIwLjU1NDIzNzQwMDk0NjU4NzUiO3M6NjoibW9kdWxlIjtzOjI1OiJpbnRlcmFjdGl2ZV9iYW5uZXIuY1RKTGJTIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmNUSkxiUyI7czo1OiJ3dHlwZSI7czoxODoiaW50ZXJhY3RpdmVfYmFubmVyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czozOiJibjQiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6InNwcmluZyB0cmVuZCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzEiO3M6MDoiIjtzOjExOiJzdWJfdGl0bGVfMiI7czowOiIiO3M6OToiaW1hZ2VmaWxlIjtzOjM4OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc0LWxvb2tib29rLmpwZyI7czo1OiJ3aWR0aCI7czozOiIzNzgiO3M6NjoiaGVpZ2h0IjtzOjM6IjU0MCI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo5MDoiUGVyZmVjdCB3b3JrIGJhZyB3aXRoIGFuIGVsZWdhbnQgbG9vay4gQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEzOiJodG1sY29udGVudF8yIjtzOjkwOiJQZXJmZWN0IHdvcmsgYmFnIHdpdGggYW4gZWxlZ2FudCBsb29rLiBDb21lcyBpbiBhIE5pY2tlbCBtZXRhbCBmaW5pc2ggd2l0aCByb29teSBpbnRlcmlvcnMiO3M6MTI6ImZhY2Vib29rX3VzZSI7czowOiIiO3M6MTA6InR3aXR0ZXJfaWQiO3M6MDoiIjtzOjE0OiJwaW50ZXJlc3RfdXNlciI7czowOiIiO3M6MTE6Imdvb2dsZV9wbHVzIjtzOjA6IiI7czoxMDoidmltZW9fdXNlciI7czowOiIiO3M6MTI6InlvdXR1YmVfdXNlciI7czowOiIiO3M6MTE6InRpdGxlbGlua18xIjtzOjEzOiJUaGUgc2hvcCBsb29rIjtzOjExOiJ0aXRsZWxpbmtfMiI7czoxMzoiVGhlIHNob3AgbG9vayI7czo5OiJtYXNrX2xpbmsiO3M6MToiIyI7czoxMToiYmFubmVyX3R5cGUiO3M6MjoidjEiO3M6MTE6ImVmZmVjdF90eXBlIjtzOjk6ImVmZmVjdC12MiI7czo4OiJwb3NpdGlvbiI7czo2OiJjZW50ZXIiO30=',63,0),(2012,'content','interactive_banner.bmTIzW','YToyOTp7czo0OiJyYW5kIjtzOjE5OiIwLjA0Mzc5MjMxMTQxNTM0MjIzIjtzOjY6Im1vZHVsZSI7czoyNToiaW50ZXJhY3RpdmVfYmFubmVyLmJtVEl6VyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjU6ImludGVyYWN0aXZlX2Jhbm5lci5ibVRJelciO3M6NToid3R5cGUiO3M6MTg6ImludGVyYWN0aXZlX2Jhbm5lciI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm4zIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJzcHJpbmcgdHJlbmQiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTE6InN1Yl90aXRsZV8xIjtzOjA6IiI7czoxMToic3ViX3RpdGxlXzIiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMy1sb29rYm9vay5qcGciO3M6NToid2lkdGgiO3M6MzoiMzc4IjtzOjY6ImhlaWdodCI7czozOiIyODAiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NTE6IkNvbWVzIGluIGEgTmlja2VsIG1ldGFsIGZpbmlzaCB3aXRoIHJvb215IGludGVyaW9ycyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo1MToiQ29tZXMgaW4gYSBOaWNrZWwgbWV0YWwgZmluaXNoIHdpdGggcm9vbXkgaW50ZXJpb3JzIjtzOjEyOiJmYWNlYm9va191c2UiO3M6MDoiIjtzOjEwOiJ0d2l0dGVyX2lkIjtzOjA6IiI7czoxNDoicGludGVyZXN0X3VzZXIiO3M6MDoiIjtzOjExOiJnb29nbGVfcGx1cyI7czowOiIiO3M6MTA6InZpbWVvX3VzZXIiO3M6MDoiIjtzOjEyOiJ5b3V0dWJlX3VzZXIiO3M6MDoiIjtzOjExOiJ0aXRsZWxpbmtfMSI7czoxMzoiVGhlIHNob3AgbG9vayI7czoxMToidGl0bGVsaW5rXzIiO3M6MTM6IlRoZSBzaG9wIGxvb2siO3M6OToibWFza19saW5rIjtzOjE6IiMiO3M6MTE6ImJhbm5lcl90eXBlIjtzOjI6InYxIjtzOjExOiJlZmZlY3RfdHlwZSI7czo5OiJlZmZlY3QtdjIiO3M6ODoicG9zaXRpb24iO3M6NjoiY2VudGVyIjt9',63,0),(2009,'content','image.yFXL9f','YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNDQ4NjM1NDA3NDAxMzg5NCI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLnlGWEw5ZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLnlGWEw5ZiI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MzoiYm4yIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToiZWZmZWN0LXY1IjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMi1iYW5uZXJ2Mi5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',63,0),(2008,'content','image.FiPXVb','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjM0MDM4MTI5MTA5NTE3MDEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5GaVBYVmIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5GaVBYVmIiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzEtYmFubmVydjIuanBnIjtzOjQ6InNpemUiO3M6NDoiZnVsbCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=',63,0),(2255,'content','manufacture.vhBquW','YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjQzNjMyNjA4MTU4MDY1OCI7czo2OiJtb2R1bGUiO3M6MTg6Im1hbnVmYWN0dXJlLnZoQnF1VyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTg6Im1hbnVmYWN0dXJlLnZoQnF1VyI7czo1OiJ3dHlwZSI7czoxMToibWFudWZhY3R1cmUiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImxvZ28iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IlRvcCBmYXZvdXJpdGUgYnJhbmRzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiVG9wIGZhdm91cml0ZSBicmFuZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiYmFubmVyX2lkIjtzOjE6IjgiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NzoiY29sdW1ucyI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTIiO3M6NToid2lkdGgiO3M6MzoiMTUwIjtzOjY6ImhlaWdodCI7czozOiIxMDUiO30=',64,0),(2253,'content','call_to_action.YUnlWk','YToyMzp7czo0OiJyYW5kIjtzOjE4OiIwLjY0MjMxNjQxNTQ0MDI5MTIiO3M6NjoibW9kdWxlIjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5ZVW5sV2siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJjYWxsX3RvX2FjdGlvbi5ZVW5sV2siO3M6NToid3R5cGUiO3M6MTQ6ImNhbGxfdG9fYWN0aW9uIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiY29sIHRvIGFjdGlvbiB2MiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czozNDoiIG1pbmltbyAtIHRoZSBtb2Rlcm4gZmFzaGlvbiB0aGVtZSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJiZy1wdXJwbGUiO3M6ODoiaWNvbmZpbGUiO3M6MDoiIjtzOjk6Imljb25jbGFzcyI7czowOiIiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NjA6IkEgcGVyZmVjdCB0aGVtZSBidWlsdCBmb3IgeW91ciBzaG9wLiBTdGFydCB5b3VyIGJ1c2luZXNzIG5vdyI7czoxMzoiaHRtbGNvbnRlbnRfMiI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMV8xIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzFfMiI7czowOiIiO3M6ODoibGlua18xXzEiO3M6MDoiIjtzOjg6ImxpbmtfMV8yIjtzOjA6IiI7czoxMzoidGV4dF9saW5rXzJfMSI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czoxMzoidGV4dF9saW5rXzJfMiI7czoxMzoiQnV5IHRoZW1lIG5vdyI7czo4OiJsaW5rXzJfMSI7czoxOiIjIjtzOjg6ImxpbmtfMl8yIjtzOjE6IiMiO3M6NToic3R5bGUiO3M6MTc6ImNhbGwtdG8tYWN0aW9uLXY1Ijt9',64,0),(2254,'content','introduce.FItkRv','YToxOTp7czo0OiJyYW5kIjtzOjE4OiIwLjcyNTk1OTk4OTQ3NTA4NjMiO3M6NjoibW9kdWxlIjtzOjE2OiJpbnRyb2R1Y2UuRkl0a1J2IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNjoiaW50cm9kdWNlLkZJdGtSdiI7czo1OiJ3dHlwZSI7czo5OiJpbnRyb2R1Y2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjg6Im9wZW5uaW5nIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEzOiJvcGVubmluZyB0aW1lIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMzoib3Blbm5pbmcgdGltZSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo4OiJpY29uZmlsZSI7czozNzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nLW9wZW5uaW5nLmpwZyI7czo4OiJpZF92aWRlbyI7czowOiIiO3M6NToid2lkdGgiO3M6MzoiNzAwIjtzOjg6InBvc2l0aW9uIjtzOjU6InJpZ2h0IjtzOjY6ImhlaWdodCI7czozOiI0MzkiO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxNDoiY29udGVudF9odG1sXzEiO3M6MTk2OiImbHQ7aDYmZ3Q7bW9uZGF5IC0gdGh1cnNkYXkmbHQ7L2g2Jmd0OyZsdDtwJmd0Ozg6IDAwIEFNIC0gNzowMCBQTSZsdDsvcCZndDsmbHQ7cCBjbGFzcz0mcXVvdDtoZWlnaHQtMTAmcXVvdDsmZ3Q7Jmx0Oy9wJmd0OyZsdDtoNiZndDtmcmlkYXkgLSBzdW5kYXkmbHQ7L2g2Jmd0OyZsdDtwJmd0Ozg6IDAwIEFNIC0gMTA6MDAgUE0mbHQ7L3AmZ3Q7IjtzOjE0OiJjb250ZW50X2h0bWxfMiI7czoxOTY6IiZsdDtoNiZndDttb25kYXkgLSB0aHVyc2RheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSA3OjAwIFBNJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O2hlaWdodC0xMCZxdW90OyZndDsmbHQ7L3AmZ3Q7Jmx0O2g2Jmd0O2ZyaWRheSAtIHN1bmRheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSAxMDowMCBQTSZsdDsvcCZndDsiO3M6NDoibGluayI7czowOiIiO30=',64,0),(2434,'content','image.PXeWBK','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYwMDA0ODIxODE1NTI3OTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5QWGVXQksiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5QWGVXQksiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMSI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjI3OiJpbWFnZS1pdGVtLW1hcmdpbiBlZmZlY3QtdjIiO3M6OToiaW1hZ2VmaWxlIjtzOjM1OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWc0LWhvbWU4LmpwZyI7czo0OiJzaXplIjtzOjc6IjI3OXgzODAiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czowOiIiO30=',65,0),(4532,'content','image.P3tuef','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjQ1NzAxMTM0MTY0NTg2NzY1IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuUDN0dWVmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuUDN0dWVmIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM2OiJjYXRhbG9nL2RlbW8vc2xpZGVyL3NsaWRlMi1ob21lMy5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjt9',60,0),(4531,'content','image.GN6m55','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjM1NTU5NzEyNjM2OTc2NDI2IjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuR042bTU1IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuR042bTU1IjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czowOiIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MDoiIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czowOiIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjUiO3M6OToiaW1hZ2VmaWxlIjtzOjM2OiJjYXRhbG9nL2RlbW8vc2xpZGVyL3NsaWRlMS1ob21lMy5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjQiO3M6OToiYWxpZ25tZW50IjtzOjQ6ImxlZnQiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MDoiIjt9',60,0),(4530,'content','featured_category.weANBd','YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjU5ODA5OTI4NDU3MjUyNjgiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53ZUFOQmQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS53ZUFOQmQiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMDoiQ2hvb3NlIEJ5IENhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IkNob29zZSBCeSBDYXRlZ29yaWVzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiQ2hvb3NlIEJ5IENhdGVnb3JpZXMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo1ODoiZmVhdHVyZWQtY2F0ZWdvcnkgZmVhdHVyZWQtY2F0ZWdvcnktdjMgcGFuZWwtdjIgZWZmZWN0LXYxMSI7czoxOToiY2F0ZWdvcmllc19mZWF0dXJlZCI7YTozOntpOjA7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vaWNvbi9pbWcxLWhvbWUzLmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fWk6MTthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ltZzItaG9tZTMuanBnIjtzOjI6ImlkIjtzOjI6IjE4Ijt9aToyO2E6Mjp7czo1OiJpbWFnZSI7czozMjoiY2F0YWxvZy9kZW1vL2ljb24vaW1nMy1ob21lMy5qcGciO3M6MjoiaWQiO3M6MjoiMjUiO319czoxMToiaW1hZ2Vfd2lkdGgiO3M6MzoiMzkwIjtzOjEyOiJpbWFnZV9oZWlnaHQiO3M6MzoiNDA1Ijt9',60,0),(2245,'content','manufacture.o0n1gU','YToxNjp7czo0OiJyYW5kIjtzOjE3OiIwLjUwMjAyMjA2OTQwMDI3OSI7czo2OiJtb2R1bGUiO3M6MTg6Im1hbnVmYWN0dXJlLm8wbjFnVSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTg6Im1hbnVmYWN0dXJlLm8wbjFnVSI7czo1OiJ3dHlwZSI7czoxMToibWFudWZhY3R1cmUiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImxvZ28iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6IlRvcCBmYXZvdXJpdGUgYnJhbmRzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiVG9wIGZhdm91cml0ZSBicmFuZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6OToiYmFubmVyX2lkIjtzOjE6IjgiO3M6NToibGltaXQiO3M6MjoiMTIiO3M6NzoiY29sdW1ucyI7czoxOiI2IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTIiO3M6NToid2lkdGgiO3M6MzoiMTUwIjtzOjY6ImhlaWdodCI7czozOiIxMDUiO30=',62,0),(2006,'content','heading.SbFdsl','YToxNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU0MTUxNDE2Mzc4Mjc5NTIiO3M6NjoibW9kdWxlIjtzOjE0OiJoZWFkaW5nLlNiRmRzbCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTQ6ImhlYWRpbmcuU2JGZHNsIjtzOjU6Ind0eXBlIjtzOjc6ImhlYWRpbmciO3M6MTE6IndpZGdldF9uYW1lIjtzOjc6ImhlYWRpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6ODoiTG9va2Jvb2siO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjg6Ikxvb2tib29rIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjA6IiI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjEyOiJjb250ZW50X2h0bWwiO3M6MDoiIjtzOjEyOiJoZWFkaW5nc3R5bGUiO3M6MTA6ImhlYWRpbmctdjMiO30=',63,0),(2007,'content','image.3Op4mM','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUxNTE3MzY0NjYxNTUwNTQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS4zT3A0bU0iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS4zT3A0bU0iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjM6ImJuMyI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czowOiIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NSI7czo5OiJpbWFnZWZpbGUiO3M6Mzg6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2ltZzMtYmFubmVydjIuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==',63,0),(4529,'content','bloglatest.DAR621','YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjExNTAzNTYxNzczODA0NDk0IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5EQVI2MjEiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0LkRBUjYyMSI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NzoiQmxvZyB2MSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoiRnJvbSBvdXIgYmxvZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6IkZyb20gb3VyIGJsb2ciO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyNDoibGF0ZXN0LXBvc3RzLXYxIHBhbmVsLXYyIjtzOjM6Im5iciI7czoxOiIzIjtzOjU6IndpZHRoIjtzOjM6Ijg2MCI7czo2OiJoZWlnaHQiO3M6MzoiNDkxIjtzOjQ6ImNvbHMiO3M6MToiMyI7fQ==',60,0),(2228,'content','featured_category.HHhM2f','YToxMzp7czo0OiJyYW5kIjtzOjE5OiIwLjEwODg4NDMwMzk1MjQ2Njg0IjtzOjY6Im1vZHVsZSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuSEhoTTJmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoiZmVhdHVyZWRfY2F0ZWdvcnkuSEhoTTJmIjtzOjU6Ind0eXBlIjtzOjE3OiJmZWF0dXJlZF9jYXRlZ29yeSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTk6IkZlYXR1cmVkIENhdGVnb3JpZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE5OiJGZWF0dXJlZCBDYXRlZ29yaWVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTE6ImZlYXR1cmVkLXYyIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjY6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWcxLWZjLmpwZyI7czoyOiJpZCI7czoyOiIyMCI7fWk6MTthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWcyLWZjLmpwZyI7czoyOiJpZCI7czoyOiIxOCI7fWk6MjthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWczLWZjLmpwZyI7czoyOiJpZCI7czoyOiIyNSI7fWk6MzthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc0LWZjLmpwZyI7czoyOiJpZCI7czoyOiIyNCI7fWk6NDthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc1LWZjLmpwZyI7czoyOiJpZCI7czoyOiIzMyI7fWk6NTthOjI6e3M6NToiaW1hZ2UiO3M6NDI6ImNhdGFsb2cvZGVtby9mZWF0dXJlZC1jYXRlZ29yeS9pbWc2LWZjLmpwZyI7czoyOiJpZCI7czoyOiIzNCI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiIyMDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyMDAiO30=',61,0),(2244,'content','introduce.of7IT7','YToxOTp7czo0OiJyYW5kIjtzOjE3OiIwLjk0Nzc0MjQ0OTgxODE3OSI7czo2OiJtb2R1bGUiO3M6MTY6ImludHJvZHVjZS5vZjdJVDciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE2OiJpbnRyb2R1Y2Uub2Y3SVQ3IjtzOjU6Ind0eXBlIjtzOjk6ImludHJvZHVjZSI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoib3Blbm5pbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTM6Im9wZW5uaW5nIHRpbWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEzOiJvcGVubmluZyB0aW1lIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjg6Imljb25maWxlIjtzOjM3OiJjYXRhbG9nL2RlbW8vYmFubmVycy9pbWctb3Blbm5pbmcuanBnIjtzOjg6ImlkX3ZpZGVvIjtzOjA6IiI7czo1OiJ3aWR0aCI7czozOiI3MDAiO3M6ODoicG9zaXRpb24iO3M6NToicmlnaHQiO3M6NjoiaGVpZ2h0IjtzOjM6IjQzOSI7czo5OiJpY29uY2xhc3MiO3M6MDoiIjtzOjE0OiJjb250ZW50X2h0bWxfMSI7czoxOTY6IiZsdDtoNiZndDttb25kYXkgLSB0aHVyc2RheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSA3OjAwIFBNJmx0Oy9wJmd0OyZsdDtwIGNsYXNzPSZxdW90O2hlaWdodC0xMCZxdW90OyZndDsmbHQ7L3AmZ3Q7Jmx0O2g2Jmd0O2ZyaWRheSAtIHN1bmRheSZsdDsvaDYmZ3Q7Jmx0O3AmZ3Q7ODogMDAgQU0gLSAxMDowMCBQTSZsdDsvcCZndDsiO3M6MTQ6ImNvbnRlbnRfaHRtbF8yIjtzOjE5NjoiJmx0O2g2Jmd0O21vbmRheSAtIHRodXJzZGF5Jmx0Oy9oNiZndDsmbHQ7cCZndDs4OiAwMCBBTSAtIDc6MDAgUE0mbHQ7L3AmZ3Q7Jmx0O3AgY2xhc3M9JnF1b3Q7aGVpZ2h0LTEwJnF1b3Q7Jmd0OyZsdDsvcCZndDsmbHQ7aDYmZ3Q7ZnJpZGF5IC0gc3VuZGF5Jmx0Oy9oNiZndDsmbHQ7cCZndDs4OiAwMCBBTSAtIDEwOjAwIFBNJmx0Oy9wJmd0OyI7czo0OiJsaW5rIjtzOjA6IiI7fQ==',62,0),(2433,'content','image.KBujPw','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjAzMjY0MDE4MTk1OTg2NjQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5LQnVqUHciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5LQnVqUHciO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI6ImJuIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjA6IiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjk6ImltYWdlZmlsZSI7czozODoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvaW1nMS1iYW5uZXJ2My5qcGciO3M6NDoic2l6ZSI7czo0OiJmdWxsIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==',65,0),(2431,'content','call_to_action.A8T1eT','YToyMzp7czo0OiJyYW5kIjtzOjE5OiIwLjEyMzU0MTA0NzMzMDk0NTczIjtzOjY6Im1vZHVsZSI7czoyMToiY2FsbF90b19hY3Rpb24uQThUMWVUIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToiY2FsbF90b19hY3Rpb24uQThUMWVUIjtzOjU6Ind0eXBlIjtzOjE0OiJjYWxsX3RvX2FjdGlvbiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTY6ImNvbCB0byBhY3Rpb24gdjIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MzQ6IiBtaW5pbW8gLSB0aGUgbW9kZXJuIGZhc2hpb24gdGhlbWUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjA6IiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImJnLXB1cnBsZSI7czo4OiJpY29uZmlsZSI7czowOiIiO3M6OToiaWNvbmNsYXNzIjtzOjA6IiI7czoxMzoiaHRtbGNvbnRlbnRfMSI7czo2MDoiQSBwZXJmZWN0IHRoZW1lIGJ1aWx0IGZvciB5b3VyIHNob3AuIFN0YXJ0IHlvdXIgYnVzaW5lc3Mgbm93IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjYwOiJBIHBlcmZlY3QgdGhlbWUgYnVpbHQgZm9yIHlvdXIgc2hvcC4gU3RhcnQgeW91ciBidXNpbmVzcyBub3ciO3M6MTM6InRleHRfbGlua18xXzEiO3M6MDoiIjtzOjEzOiJ0ZXh0X2xpbmtfMV8yIjtzOjA6IiI7czo4OiJsaW5rXzFfMSI7czowOiIiO3M6ODoibGlua18xXzIiO3M6MDoiIjtzOjEzOiJ0ZXh0X2xpbmtfMl8xIjtzOjEzOiJCdXkgdGhlbWUgbm93IjtzOjEzOiJ0ZXh0X2xpbmtfMl8yIjtzOjEzOiJCdXkgdGhlbWUgbm93IjtzOjg6ImxpbmtfMl8xIjtzOjE6IiMiO3M6ODoibGlua18yXzIiO3M6MToiIyI7czo1OiJzdHlsZSI7czoxNzoiY2FsbC10by1hY3Rpb24tdjUiO30=',65,0),(2432,'content','categories_list.LdrzkW','YToxMTp7czo0OiJyYW5kIjtzOjE5OiIwLjQ0Mjc0NTk2NzA2OTY0MDc2IjtzOjY6Im1vZHVsZSI7czoyMjoiY2F0ZWdvcmllc19saXN0LkxkcnprVyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjI6ImNhdGVnb3JpZXNfbGlzdC5MZHJ6a1ciO3M6NToid3R5cGUiO3M6MTU6ImNhdGVnb3JpZXNfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6ODoiY2F0ZWdvcnkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6ImNhdGVnb3JpZXMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJjYXRlZ29yaWVzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MDoiIjtzOjY6ImNhdGlkcyI7czoyMzoiMjAsMTgsMjUsNTcsMTcsMjQsMzMsMzQiO30=',65,0),(7637,'content','tab_image.thtR3G','YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjc4OTA1NjAxOTIzMDQ4MjciO3M6NjoibW9kdWxlIjtzOjE2OiJ0YWJfaW1hZ2UudGh0UjNHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxNjoidGFiX2ltYWdlLnRodFIzRyI7czo1OiJ3dHlwZSI7czo5OiJ0YWJfaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJwcm9tb3Rpb25zICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToicHJvbW90aW9ucyAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJwcm9tb3Rpb25zICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIyOiJwYW5sZS12MyBwYW5lbC1zdWNjZXNzIjtzOjE0OiJpbWFnZV9mZWF0dXJlZCI7YToyOntzOjU6ImltYWdlIjthOjY6e2k6MTtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxOC5qcGciO2k6MjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxOS5qcGciO2k6MztzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMC5qcGciO2k6NDtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMS5qcGciO2k6NTtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMi5qcGciO2k6NjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyMy5qcGciO31zOjQ6Im5hbWUiO2E6Njp7aToxO3M6Mjk6ImNsb3RoaW5nLCBzaG9lcyAmYW1wOyBqZXdlbHJ5IjtpOjI7czoxNToiYmFieSAmYW1wOyBraWRzIjtpOjM7czoyNzoiaG9tZSwgZnVybml0dXJlICZhbXA7IHBhdGlvIjtpOjQ7czoxMToiZWxlY3Ryb25pY3MiO2k6NTtzOjIyOiJ0b3lzICZhbXA7IHZpZGVvIGdhbWVzIjtpOjY7czoyNToibW92aWVzLCBtdXNpYyAmYW1wOyBib29rcyI7fX1zOjExOiJpbWFnZV93aWR0aCI7czozOiI4NzMiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyOTUiO30=',89,0),(7636,'content','product_tabs.cWYeOa','YTozMDp7czo0OiJyYW5kIjtzOjE5OiIwLjM5OTE5MjkzMzc4NjMwMjk0IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF90YWJzLmNXWWVPYSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfdGFicy5jV1llT2EiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfdGFicyI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6IkZlYXR1cmVkIHByb2R1Y3RzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJGZWF0dXJlZCBwcm9kdWN0cyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTc6IkZlYXR1cmVkIHByb2R1Y3RzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MjM6InRhYi1ibHVlIHByb2R1Y3R0YWJzLXYxIjtzOjk6ImltYWdlZmlsZSI7czowOiIiO3M6NDoic2l6ZSI7czowOiIiO3M6NToibGltaXQiO3M6MToiOSI7czo2OiJjb2x1bW4iO3M6MToiMyI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjYiO3M6MTE6Imljb25fbmV3ZXN0IjtzOjA6IiI7czoxMzoiZW5hYmxlX25ld2VzdCI7czoxOiIwIjtzOjEzOiJpY29uX2ZlYXR1cmVkIjtzOjA6IiI7czoxMDoicHJvZHVjdF9pZCI7czoxMToiNDIsNDQsNDcsNDgiO3M6MTU6ImVuYWJsZV9mZWF0dXJlZCI7czoxOiIwIjtzOjE1OiJpY29uX2Jlc3RzZWxsZXIiO3M6MDoiIjtzOjE3OiJlbmFibGVfYmVzdHNlbGxlciI7czoxOiIxIjtzOjEyOiJpY29uX3NwZWNpYWwiO3M6MDoiIjtzOjE0OiJlbmFibGVfc3BlY2lhbCI7czoxOiIxIjtzOjE0OiJpY29uX21vc3R2aWV3cyI7czowOiIiO3M6MTY6ImVuYWJsZV9tb3N0dmlld3MiO3M6MToiMSI7czo5OiJ0YWJzc3R5bGUiO3M6NjoidGFiLXY2IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIxNTAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIxNjIiO3M6OToiYXV0b19wbGF5IjtzOjM6Im9mZiI7fQ==',89,0),(7664,'content','product_tabs.pqrEPt','YTozMDp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MzI2MTc2ODk2MDM5NjgiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMucHFyRVB0IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLnBxckVQdCI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6IkJlc3QgU2VsbGVyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiQmVzdCBTZWxsZXIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMDoicGFuZWwtdjIgdGFiLXN1Y2Nlc3MiO3M6OToiaW1hZ2VmaWxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJsaW1pdCI7czoxOiI2IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjAiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjEiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7czo5OiJhdXRvX3BsYXkiO3M6NDoiMzAwMCI7fQ==',83,0),(7663,'content','product_tabs.h7bbAK','YTozMDp7czo0OiJyYW5kIjtzOjE4OiIwLjk5OTgyMTgxODA2MTMyNzMiO3M6NjoibW9kdWxlIjtzOjE5OiJwcm9kdWN0X3RhYnMuaDdiYkFLIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxOToicHJvZHVjdF90YWJzLmg3YmJBSyI7czo1OiJ3dHlwZSI7czoxMjoicHJvZHVjdF90YWJzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMjoicHJvZHVjdHRhYnMyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEyOiJwcm9kdWN0dGFiczIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEyOiJwcm9kdWN0dGFiczIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo4OiJ0YWItYmx1ZSI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjE2IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czoxMToiaWNvbl9uZXdlc3QiO3M6MDoiIjtzOjEzOiJlbmFibGVfbmV3ZXN0IjtzOjE6IjAiO3M6MTM6Imljb25fZmVhdHVyZWQiO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxNToiZW5hYmxlX2ZlYXR1cmVkIjtzOjE6IjAiO3M6MTU6Imljb25fYmVzdHNlbGxlciI7czowOiIiO3M6MTc6ImVuYWJsZV9iZXN0c2VsbGVyIjtzOjE6IjEiO3M6MTI6Imljb25fc3BlY2lhbCI7czowOiIiO3M6MTQ6ImVuYWJsZV9zcGVjaWFsIjtzOjE6IjEiO3M6MTQ6Imljb25fbW9zdHZpZXdzIjtzOjA6IiI7czoxNjoiZW5hYmxlX21vc3R2aWV3cyI7czoxOiIxIjtzOjk6InRhYnNzdHlsZSI7czo2OiJ0YWItdjYiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJhdXRvX3BsYXkiO3M6Mzoib2ZmIjt9',83,0),(4542,'content','featured_category.FLyBdV','YToxMzp7czo0OiJyYW5kIjtzOjE4OiIwLjgxNDYyNTM2Nzc1NzU5MzIiO3M6NjoibW9kdWxlIjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5GTHlCZFYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJmZWF0dXJlZF9jYXRlZ29yeS5GTHlCZFYiO3M6NToid3R5cGUiO3M6MTc6ImZlYXR1cmVkX2NhdGVnb3J5IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxOToiRmVhdHVyZWQgY2F0ZWdvcnkgMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxOToiRmVhdHVyZWQgY2F0ZWdvcnkgMiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MDoiIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NTM6ImZlYXR1cmVkLWNhdGVnb3J5IGZlYXR1cmVkLWNhdGVnb3J5LXYyIGljb24tZWZmZWN0LXYxIjtzOjE5OiJjYXRlZ29yaWVzX2ZlYXR1cmVkIjthOjQ6e2k6MDthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tY2F0ZTYucG5nIjtzOjI6ImlkIjtzOjI6IjYxIjt9aToxO2E6Mjp7czo1OiJpbWFnZSI7czowOiIiO3M6MjoiaWQiO3M6MjoiNjIiO31pOjI7YToyOntzOjU6ImltYWdlIjtzOjMyOiJjYXRhbG9nL2RlbW8vaWNvbi9pY29uLWNhdGU3LnBuZyI7czoyOiJpZCI7czoyOiI0NSI7fWk6MzthOjI6e3M6NToiaW1hZ2UiO3M6MzI6ImNhdGFsb2cvZGVtby9pY29uL2ljb24tY2F0ZTgucG5nIjtzOjI6ImlkIjtzOjI6IjI1Ijt9fXM6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjExOCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjI6Ijk2Ijt9',48,0),(4541,'content','bloglatest.mn9kWj','YToxNDp7czo0OiJyYW5kIjtzOjE5OiIwLjA2MjY1NjM0Mjg4NzA0ODI0IjtzOjY6Im1vZHVsZSI7czoxNzoiYmxvZ2xhdGVzdC5tbjlrV2oiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE3OiJibG9nbGF0ZXN0Lm1uOWtXaiI7czo1OiJ3dHlwZSI7czoxMDoiYmxvZ2xhdGVzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6NToiV29ya3MiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NToiV29ya3MiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJibG9nMi1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjQ3OiJwYW5lbC1zcGVjaWFsIHNwYWNlLXRvcC0xNTAgaGlkZGVuLXNtIGhpZGRlbi14cyI7czozOiJuYnIiO3M6MToiMyI7czo1OiJ3aWR0aCI7czozOiIzNTAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIwMCI7czo0OiJjb2xzIjtzOjE6IjEiO30=',48,0),(7662,'content','product_scroll.YqQdBT','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MjI1NDYwOTMwNDA5OTgiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5ZcVFkQlQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5ZcVFkQlQiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IlNwb3J0cyAgJmFtcDsgT3V0ZG9vcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtb3JhbmdlIjtzOjc6ImlkX2l0ZW0iO3M6MjQ6InByb2R1Y3RzY3JvbGxfMTQzNzcwMjcwOSI7czo0OiJpY29uIjtzOjM0OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24vaWNvbjYucG5nIjtzOjk6Imljb25fc2l6ZSI7czo1OiIyNHgyNCI7czo3OiJiYW5uZXIxIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI5LmpwZyI7czoxMjoiYmFubmVyMV9zaXplIjtzOjc6Ijk3N3gyNjAiO3M6NzoiYmFubmVyMiI7czowOiIiO3M6MTI6ImJhbm5lcjJfc2l6ZSI7czo3OiIyMDB4MjAwIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjE2IjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO3M6NjoiY2F0aWRzIjtzOjExOiIzMywyMCwxOCwyNSI7fQ==',83,0),(7661,'content','product_scroll.VLuzGw','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjM5MTQzNzE0NzQxOTY5MzE1IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuVkx1ekd3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuVkx1ekd3IjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjE6IkRlY29yICZhbXA7IGZ1cm5pdHVyZSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMToiRGVjb3IgJmFtcDsgZnVybml0dXJlIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMToiRGVjb3IgJmFtcDsgZnVybml0dXJlIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTM6InBhbmVsLXdhcm5pbmciO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM3NzAyNjA3IjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uNS5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjcuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiNDg5eDI2MCI7czo3OiJiYW5uZXIyIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI4LmpwZyI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7czo2OiJjYXRpZHMiO3M6MTE6IjU3LDIwLDE4LDI1Ijt9',83,0),(7660,'content','product_scroll.SLVz6e','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjQzNzE3NzMyNDQzMDk0NzE1IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuU0xWejZlIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuU0xWejZlIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjI6IkZhc2hpb24gJmFtcDsgQ2xvdGhpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjI6IkZhc2hpb24gJmFtcDsgQ2xvdGhpbmciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIyOiJGYXNoaW9uICZhbXA7IENsb3RoaW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTM6InBhbmVsLXByaW1hcnkiO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM3NzAxOTg2IjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uMS5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiNDg5eDI2MCI7czo3OiJiYW5uZXIyIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyLmpwZyI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7czo2OiJjYXRpZHMiO3M6MTE6IjU3LDIwLDE4LDI1Ijt9',83,0),(7627,'content','product_scroll.VijkxZ','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjI5MTQ3Nzk4MTgzMjM3ODYiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5WaWpreFoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5WaWpreFoiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMDoiYmVhdXR5ICAmYW1wOyBoZWFsdGgiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjA6ImJlYXV0eSAgJmFtcDsgaGVhbHRoIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyMDoiYmVhdXR5ICAmYW1wOyBoZWFsdGgiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxNToicGFuZWwtdHVycXVvaXNlIjtzOjc6ImlkX2l0ZW0iO3M6MjQ6InByb2R1Y3RzY3JvbGxfMTQzNzM2MDQxNCI7czo0OiJpY29uIjtzOjM0OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24vaWNvbjgucG5nIjtzOjk6Imljb25fc2l6ZSI7czo1OiIyNHgyNCI7czo3OiJiYW5uZXIxIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMi5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6NjoiY2F0aWRzIjtzOjIwOiI1NywxNywzMywzNCwyMCwxOCwyNSI7fQ==',59,0),(7626,'content','product_scroll.N3ySyv','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjk4NzU5MjU5ODA2ODg4ODUiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5OM3lTeXYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5OM3lTeXYiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiRGVjb3IgJmFtcDsgZnVybml0dXJlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJEZWNvciAmYW1wOyBmdXJuaXR1cmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJEZWNvciAmYW1wOyBmdXJuaXR1cmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtd2FybmluZyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0MzcxMzEyODEiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb241LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNy5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjguanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg5eDI2MCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6NjoiY2F0aWRzIjtzOjIwOiIzMyw0NCwzNCwxNywyMCwxOCwyNSI7fQ==',59,0),(7625,'content','product_scroll.mVwx7B','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjUzMjM2MzE3ODYwNjkyNTgiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5tVnd4N0IiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5tVnd4N0IiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IlNwb3J0cyAgJmFtcDsgT3V0ZG9vcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtb3JhbmdlIjtzOjc6ImlkX2l0ZW0iO3M6MjQ6InByb2R1Y3RzY3JvbGxfMTQzNzM1OTA4MSI7czo0OiJpY29uIjtzOjM0OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24vaWNvbjYucG5nIjtzOjk6Imljb25fc2l6ZSI7czo1OiIyNHgyNCI7czo3OiJiYW5uZXIxIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI5LmpwZyI7czoxMjoiYmFubmVyMV9zaXplIjtzOjc6Ijk3N3gyNjAiO3M6NzoiYmFubmVyMiI7czowOiIiO3M6MTI6ImJhbm5lcjJfc2l6ZSI7czo3OiIyMDB4MjAwIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjE2IjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO3M6NjoiY2F0aWRzIjtzOjg6IjIwLDE4LDI1Ijt9',59,0),(7624,'content','product_scroll.LTT2ag','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjc4MDUyNzEzNjQ3NTk1MjciO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5MVFQyYWciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5MVFQyYWciO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyOToiZ2lmdHMsIHBhcnRpZXMgICZhbXA7IGhvbGlkYXkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6Mjk6ImdpZnRzLCBwYXJ0aWVzICAmYW1wOyBob2xpZGF5IjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyOToiZ2lmdHMsIHBhcnRpZXMgICZhbXA7IGhvbGlkYXkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMDoicGFuZWwtYXF1YSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0MzczNTk5NzciO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb243LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTEuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiNDg5eDI2MCI7czo3OiJiYW5uZXIyIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMC5qcGciO3M6MTI6ImJhbm5lcjJfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjE2IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjY6ImNhdGlkcyI7czoyMDoiMTcsMzMsMzQsNTcsMjAsMTgsMjUiO30=',59,0),(7623,'content','product_scroll.jeLWzy','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjk2MDYwNjEyOTE5MDk0NTciO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5qZUxXenkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5qZUxXenkiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiRmFzaGlvbiAmYW1wOyBDbG90aGluZyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiRmFzaGlvbiAmYW1wOyBDbG90aGluZyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IkZhc2hpb24gJmFtcDsgQ2xvdGhpbmciO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtcHJpbWFyeSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0MzY1ODE1MjAiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb24xLnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMS5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjIuanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg3eDI2MCI7czo1OiJsaW1pdCI7czoyOiIxNiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7czo2OiJjYXRpZHMiO3M6MTQ6IjIwLDE4LDI1LDMwLDQwIjt9',59,0),(7659,'content','product_scroll.qyUdNJ','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjEyODM1OTMzMzE1NDU2ODUiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5xeVVkTkoiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5xeVVkTkoiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiSG9tZSwgR2FyZGVuICZhbXA7IFRvb2xzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtc3VjY2VzcyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc3MDI0MTgiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb240LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNi5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6NjoibmV3ZXN0IjtzOjY6ImNhdGlkcyI7czoxMToiMTcsMjAsMTgsMjUiO30=',83,0),(7658,'content','product_scroll.hEpl7i','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjExNjkwMzI3NjI4Mjc2NzA5IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuaEVwbDdpIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuaEVwbDdpIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjk6ImdpZnRzLCBwYXJ0aWVzICAmYW1wOyBob2xpZGF5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI5OiJnaWZ0cywgcGFydGllcyAgJmFtcDsgaG9saWRheSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6Mjk6ImdpZnRzLCBwYXJ0aWVzICAmYW1wOyBob2xpZGF5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTA6InBhbmVsLWFxdWEiO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM3NzAyOTUwIjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uNy5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEwLmpwZyI7czoxMjoiYmFubmVyMV9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NzoiYmFubmVyMiI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTEuanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg5eDI2MCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czo2OiJjYXRpZHMiO3M6MTE6IjU3LDIwLDE4LDI1Ijt9',83,0),(7657,'content','product_scroll.FSJqBo','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjgzMjA3MTQxNjExNTEyNTUiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5GU0pxQm8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5GU0pxQm8iO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyODoiRWxlY3Ryb25pY3MgICZhbXA7IENvbXB1dGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyODoiRWxlY3Ryb25pY3MgICZhbXA7IENvbXB1dGVycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6Mjg6IkVsZWN0cm9uaWNzICAmYW1wOyBDb21wdXRlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMDoicGFuZWwtYmx1ZSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc3MDIxNjEiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb24yLnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMy5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6MTA6ImJlc3RzZWxsZXIiO3M6NjoiY2F0aWRzIjtzOjExOiIzMywyMCwxOCwyNSI7fQ==',83,0),(7656,'content','product_scroll.FpK9qr','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjM0MTQ1NDE3MTg1NDI4NTk1IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuRnBLOXFyIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuRnBLOXFyIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjA6ImJlYXV0eSAgJmFtcDsgaGVhbHRoIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJiZWF1dHkgICZhbXA7IGhlYWx0aCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6ImJlYXV0eSAgJmFtcDsgaGVhbHRoIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTU6InBhbmVsLXR1cnF1b2lzZSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc3MDUwODYiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb244LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTIuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiOTc3eDI2MCI7czo3OiJiYW5uZXIyIjtzOjA6IiI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjIwMHgyMDAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6NjoiY2F0aWRzIjtzOjExOiIzMywyMCwxOCwyNSI7fQ==',83,0),(7622,'content','product_scroll.fw43E6','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjE3MTUyMzk1MDU2NzcyNjQiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5mdzQzRTYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5mdzQzRTYiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiSG9tZSwgR2FyZGVuICZhbXA7IFRvb2xzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtc3VjY2VzcyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0MzcxMzA5OTIiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb240LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNi5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6NjoibmV3ZXN0IjtzOjY6ImNhdGlkcyI7czoyMDoiNTcsMTcsMzMsMzQsMjAsMTgsMjUiO30=',59,0),(7621,'content','product_scroll.avrPe0','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjE3OTUzNDE4MTc5MzE0OTYyIjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuYXZyUGUwIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuYXZyUGUwIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjI6IlRveXMsIEtpZHMgICZhbXA7IEJhYnkiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjI6IlRveXMsIEtpZHMgICZhbXA7IEJhYnkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIyOiJUb3lzLCBLaWRzICAmYW1wOyBCYWJ5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTA6InBhbmVsLWluZm8iO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM2Nzc0NTU2IjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uMy5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjQuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiNDg5eDI2MCI7czo3OiJiYW5uZXIyIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI1LmpwZyI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NToibGltaXQiO3M6MjoiMTYiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjE2IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjY6ImNhdGlkcyI7czoyMDoiNDQsNDMsMTgsMjUsNDAsMjAsMzAiO30=',59,0),(7620,'content','product_scroll.6lJjN2','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjcyMjE0MzczNDMxMjA0MjciO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC42bEpqTjIiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC42bEpqTjIiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyODoiRWxlY3Ryb25pY3MgICZhbXA7IENvbXB1dGVycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyODoiRWxlY3Ryb25pY3MgICZhbXA7IENvbXB1dGVycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6Mjg6IkVsZWN0cm9uaWNzICAmYW1wOyBDb21wdXRlcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMDoicGFuZWwtYmx1ZSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0MzY1ODQ0NjYiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb24yLnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMy5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoyOiIxNiI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjY6ImNhdGlkcyI7czoxNzoiNTcsMzQsMzMsMTcsMjAsMTgiO30=',59,0),(7619,'content','listproduct_home1.pW4xo1','YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjE0NTAyMzIyODY0NzcyMTIxIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucFc0eG8xIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucFc0eG8xIjtzOjU6Ind0eXBlIjtzOjE3OiJMaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjk6ImNsb3RoaW5nLCBzaG9lcyAmYW1wOyBqZXdlbHJ5IjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI5OiJjbG90aGluZywgc2hvZXMgJmFtcDsgamV3ZWxyeSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6Mjk6ImNsb3RoaW5nLCBzaG9lcyAmYW1wOyBqZXdlbHJ5IjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6OToidGV4dC1pbmZvIjtzOjU6ImxpbmtzIjthOjU6e2k6MDtzOjI6IjQ1IjtpOjE7czoyOiI0NiI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjI4IjtpOjQ7czoyOiI1OSI7fXM6OToidGl0bGVfMV8xIjtzOjg6ImJlc2VsbGVyIjtzOjk6InRpdGxlXzFfMiI7czo4OiJiZXNlbGxlciI7czo2OiJzdHlsZTEiO3M6MjI6InBhbmVsLXYyIHBhbmVsLWRlZmF1bHQiO3M6MTE6InByb2R1Y3QxX2lkIjtzOjIwOiIzMCwyOCwyOSw1MCwzMyw0NCw0MyI7czo5OiJ0aXRsZV8yXzEiO3M6MTE6Im5ldyBhcml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMToibmV3IGFyaXZhbHMiO3M6Njoic3R5bGUyIjtzOjIwOiJwYW5lbC12MiBwYW5lbC1pbmZvICI7czoxMToicHJvZHVjdDJfaWQiO3M6MjA6IjQyLDQ0LDQ3LDQ4LDIwLDMwLDQwIjtzOjEwOiJiYW5uZXJfaW1nIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxLmpwZyI7czo5OiJpbWdfY2xhc3MiO3M6NToicmlnaHQiO30=',59,0),(7618,'content','listproduct_home1.pmhgxG','YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjQxMjE4MTk3Njg4ODM1NzM0IjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucG1oZ3hHIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEucG1oZ3hHIjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTI6IkVsZWN0cm9uaWNzICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMjoiRWxlY3Ryb25pY3MgIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMjoiRWxlY3Ryb25pY3MgIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTE6InRleHQtZGFuZ2VyIjtzOjU6ImxpbmtzIjthOjY6e2k6MDtzOjI6IjQ1IjtpOjE7czoyOiI0NiI7aToyO3M6MjoiNTkiO2k6MztzOjI6IjYxIjtpOjQ7czoyOiI2MiI7aTo1O3M6MjoiMjciO31zOjk6InRpdGxlXzFfMSI7czoxMDoiQmVzdHNlbGxlciI7czo5OiJ0aXRsZV8xXzIiO3M6NToiVGl0bGUiO3M6Njoic3R5bGUxIjtzOjIyOiJwYW5lbC12MiBwYW5lbC1kZWZhdWx0IjtzOjExOiJwcm9kdWN0MV9pZCI7czoxNzoiNDIsNDQsNDcsNDgsMjAsMjIiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjU6IlRpdGxlIjtzOjY6InN0eWxlMiI7czoyMToicGFuZWwtdjIgcGFuZWwtZGFuZ2VyIjtzOjExOiJwcm9kdWN0Ml9pZCI7czoyMDoiMzAsMjgsMjksNTAsMzMsNDQsNDMiO3M6MTA6ImJhbm5lcl9pbWciO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjQuanBnIjtzOjk6ImltZ19jbGFzcyI7czo0OiJsZWZ0Ijt9',59,0),(7617,'content','listproduct_home1.2iSxBV','YToyMTp7czo0OiJyYW5kIjtzOjE4OiIwLjYxNzAzMjAzNTYwODE4NDEiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4yaVN4QlYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMS4yaVN4QlYiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUxIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNToiQmFieSAmYW1wOyBraWRzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE1OiJCYWJ5ICZhbXA7IGtpZHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE1OiJCYWJ5ICZhbXA7IGtpZHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoidGV4dC1zdWNjZXNzIjtzOjU6ImxpbmtzIjthOjQ6e2k6MDtzOjI6IjQ2IjtpOjE7czoyOiI0NiI7aToyO3M6MjoiMzYiO2k6MztzOjI6IjU3Ijt9czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6OToidGl0bGVfMV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjY6InN0eWxlMSI7czoyMjoicGFuZWwtdjIgcGFuZWwtZGVmYXVsdCI7czoxMToicHJvZHVjdDFfaWQiO3M6MTE6IjQyLDQ0LDQ3LDQ4IjtzOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjY6InN0eWxlMiI7czoyMzoicGFuZWwtdjIgcGFuZWwtc3VjY2VzcyAiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7czoxMDoiYmFubmVyX2ltZyI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMi5qcGciO3M6OToiaW1nX2NsYXNzIjtzOjQ6ImxlZnQiO30=',59,0),(7616,'content','listproduct_home1.0NsoHd','YToyMTp7czo0OiJyYW5kIjtzOjE5OiIwLjQyOTQzMjcxOTQ4MTgxNDk0IjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuME5zb0hkIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTEuME5zb0hkIjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMSI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjc6IkhvbWUsIGZ1cm5pdHVyZSAmYW1wOyBwYXRpbyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyNzoiSG9tZSwgZnVybml0dXJlICZhbXA7IHBhdGlvIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoyNzoiSG9tZSwgZnVybml0dXJlICZhbXA7IHBhdGlvIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTI6InRleHQtd2FybmluZyI7czo1OiJsaW5rcyI7YTo1OntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDUiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI1OSI7aTo0O3M6MjoiNjAiO31zOjk6InRpdGxlXzFfMSI7czoxMDoiQmVzdHNlbGxlciI7czo5OiJ0aXRsZV8xXzIiO3M6MTA6IkJlc3RzZWxsZXIiO3M6Njoic3R5bGUxIjtzOjIyOiJwYW5lbC12MiBwYW5lbC1kZWZhdWx0IjtzOjExOiJwcm9kdWN0MV9pZCI7czoyMDoiMzAsMjgsMjksNTAsMzMsNDQsNDMiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6Njoic3R5bGUyIjtzOjIzOiJwYW5lbC12MiBwYW5lbC13YXJuaW5nICI7czoxMToicHJvZHVjdDJfaWQiO3M6MTc6IjQyLDQ0LDQ3LDQ4LDMwLDI4IjtzOjEwOiJiYW5uZXJfaW1nIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIzLmpwZyI7czo5OiJpbWdfY2xhc3MiO3M6NToicmlnaHQiO30=',59,0),(7614,'content','countdownproduct.3KGUOf','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjUyMjE2ODEzODAzNjA1MjYiO3M6NjoibW9kdWxlIjtzOjIzOiJjb3VudGRvd25wcm9kdWN0LjNLR1VPZiI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6ImNvdW50ZG93bnByb2R1Y3QuM0tHVU9mIjtzOjU6Ind0eXBlIjtzOjE2OiJjb3VudGRvd25wcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiRGVhbCBPZiBUaGUgV2VlayI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiRGVhbCBPZiBUaGUgV2VlayI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkRlYWwgT2YgVGhlIFdlZWsiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtcHJpbWFyeSI7czoxMDoic3RhcnRfZGF0ZSI7czoxMDoiMjAxMS0wMi0wOSI7czo4OiJlbmRfZGF0ZSI7czoxMDoiMjAxOS0xMS0xOSI7czoxNDoiY2hvb3NlX3Byb2R1Y3QiO3M6MDoiIjtzOjc6InByb2R1Y3QiO2E6NDp7aTowO3M6MjoiMzEiO2k6MTtzOjI6IjI4IjtpOjI7czoyOiIzMCI7aTozO3M6MjoiNDUiO31zOjEzOiJodG1sY29udGVudF8xIjtzOjEyMDoiJmx0O2RpdiBjbGFzcz0mcXVvdDt0ZXh0LXVwcGVyY2FzZSBibGFjayZxdW90OyZndDsmbHQ7aSBjbGFzcz0mcXVvdDtmYSBmYS1jbG9jay1vJnF1b3Q7Jmd0OyZsdDsvaSZndDtFbmRzIGluJmx0Oy9kaXYmZ3Q7IjtzOjEzOiJodG1sY29udGVudF8yIjtzOjEyMDoiJmx0O2RpdiBjbGFzcz0mcXVvdDt0ZXh0LXVwcGVyY2FzZSBibGFjayZxdW90OyZndDsmbHQ7aSBjbGFzcz0mcXVvdDtmYSBmYS1jbG9jay1vJnF1b3Q7Jmd0OyZsdDsvaSZndDtFbmRzIGluJmx0Oy9kaXYmZ3Q7IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiIyNTIiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiIyNzIiO30=',59,0),(7615,'content','countdownproduct.F9cI8t','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjY5ODc0NzY5MDk2NDAwNzkiO3M6NjoibW9kdWxlIjtzOjIzOiJjb3VudGRvd25wcm9kdWN0LkY5Y0k4dCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjM6ImNvdW50ZG93bnByb2R1Y3QuRjljSTh0IjtzOjU6Ind0eXBlIjtzOjE2OiJjb3VudGRvd25wcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiY291dGRvd24gdG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6ImNvdXRkb3duIHRvIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiY291dGRvd24gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMDktMDItMDMiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTktMDctMTciO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjQyIjtpOjE7czoyOiIzMCI7aToyO3M6MjoiMjgiO2k6MztzOjI6IjQxIjtpOjQ7czoyOiI0MCI7fXM6MTM6Imh0bWxjb250ZW50XzEiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==',59,0),(7635,'content','product_scroll.u53c4e','YToyNDp7czo0OiJyYW5kIjtzOjIwOiIwLjA0MDY5MDc3NjkyODQzMDcwNSI7czo2OiJtb2R1bGUiO3M6MjE6InByb2R1Y3Rfc2Nyb2xsLnU1M2M0ZSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjE6InByb2R1Y3Rfc2Nyb2xsLnU1M2M0ZSI7czo1OiJ3dHlwZSI7czoxNDoicHJvZHVjdF9zY3JvbGwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjI5OiJnaWZ0cywgcGFydGllcyAgJmFtcDsgaG9saWRheSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyOToiZ2lmdHMsIHBhcnRpZXMgICZhbXA7IGhvbGlkYXkiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI5OiJnaWZ0cywgcGFydGllcyAgJmFtcDsgaG9saWRheSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjEwOiJwYW5lbC1hcXVhIjtzOjc6ImlkX2l0ZW0iO3M6MjQ6InByb2R1Y3RzY3JvbGxfMTQzNzU1ODk3MiI7czo0OiJpY29uIjtzOjM0OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24vaWNvbjcucG5nIjtzOjk6Imljb25fc2l6ZSI7czo1OiIyNHgyNCI7czo3OiJiYW5uZXIxIjtzOjMzOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIxMS5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEwLmpwZyI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7czo2OiJjYXRpZHMiO3M6MTQ6IjU3LDMzLDIwLDE4LDI1Ijt9',89,0),(7634,'content','product_scroll.QBldNd','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjgzNTI2NDQ2MjUwNzM0MjQiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5RQmxkTmQiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5RQmxkTmQiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMToiRGVjb3IgJmFtcDsgZnVybml0dXJlIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIxOiJEZWNvciAmYW1wOyBmdXJuaXR1cmUiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIxOiJEZWNvciAmYW1wOyBmdXJuaXR1cmUiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtd2FybmluZyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc1NTg2MjQiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb241LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNy5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjguanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg5eDI2MCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czo2OiJjYXRpZHMiO3M6ODoiMjAsMTgsMjUiO30=',89,0),(7633,'content','product_scroll.nTgLHh','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjEyNDUwOTkzMTE4ODg4MTk4IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwublRnTEhoIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwublRnTEhoIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjA6ImJlYXV0eSAgJmFtcDsgaGVhbHRoIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjIwOiJiZWF1dHkgICZhbXA7IGhlYWx0aCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjA6ImJlYXV0eSAgJmFtcDsgaGVhbHRoIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTU6InBhbmVsLXR1cnF1b2lzZSI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc1NTkyMDUiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb244LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTIuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiOTc3eDI2MCI7czo3OiJiYW5uZXIyIjtzOjA6IiI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjIwMHgyMDAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjEwOiJiZXN0c2VsbGVyIjtzOjY6ImNhdGlkcyI7czoxNzoiMzQsMzMsMjAsMTcsMTgsMjUiO30=',89,0),(7632,'content','product_scroll.n19q7t','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjg5NTM1NzI2NjQyMjUyMzYiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5uMTlxN3QiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5uMTlxN3QiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiVG95cywgS2lkcyAgJmFtcDsgQmFieSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiVG95cywgS2lkcyAgJmFtcDsgQmFieSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IlRveXMsIEtpZHMgICZhbXA7IEJhYnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMDoicGFuZWwtaW5mbyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc1NTgyNjEiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb24zLnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUuanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg5eDI2MCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czo2OiJjYXRpZHMiO3M6ODoiMjAsMTgsMjUiO30=',89,0),(7631,'content','product_scroll.MCm9B9','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjMyNDI1NTg5MjU4NTkxMjI1IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuTUNtOUI5IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuTUNtOUI5IjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6Mjg6IkVsZWN0cm9uaWNzICAmYW1wOyBDb21wdXRlcnMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6Mjg6IkVsZWN0cm9uaWNzICAmYW1wOyBDb21wdXRlcnMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI4OiJFbGVjdHJvbmljcyAgJmFtcDsgQ29tcHV0ZXJzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTA6InBhbmVsLWJsdWUiO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM3NTU3ODg1IjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uMi5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjMuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiOTc3eDI2MCI7czo3OiJiYW5uZXIyIjtzOjA6IiI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjIwMHgyMDAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjc6InNwZWNpYWwiO3M6NjoiY2F0aWRzIjtzOjExOiI1NywzMywzNCwyMCI7fQ==',89,0),(7630,'content','product_scroll.CVg9FW','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjgwMTQ5NzMzMjEwNjUwNjMiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5DVmc5RlciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5DVmc5RlciO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiU3BvcnRzICAmYW1wOyBPdXRkb29ycyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IlNwb3J0cyAgJmFtcDsgT3V0ZG9vcnMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMjoicGFuZWwtb3JhbmdlIjtzOjc6ImlkX2l0ZW0iO3M6MjQ6InByb2R1Y3RzY3JvbGxfMTQzNzU1ODgxMCI7czo0OiJpY29uIjtzOjM0OiJjYXRhbG9nL2RlbW8vbW9kdWxlL2ljb24vaWNvbjYucG5nIjtzOjk6Imljb25fc2l6ZSI7czo1OiIyNHgyNCI7czo3OiJiYW5uZXIxIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI5LmpwZyI7czoxMjoiYmFubmVyMV9zaXplIjtzOjc6Ijk3N3gyNjAiO3M6NzoiYmFubmVyMiI7czowOiIiO3M6MTI6ImJhbm5lcjJfc2l6ZSI7czo3OiIyMDB4MjAwIjtzOjU6ImxpbWl0IjtzOjE6IjgiO3M6NjoiY29sdW1uIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI0IjtzOjU6IndpZHRoIjtzOjM6IjIwMCI7czo2OiJoZWlnaHQiO3M6MzoiMjE2IjtzOjk6Imxpc3RfdHlwZSI7czo3OiJzcGVjaWFsIjtzOjY6ImNhdGlkcyI7czoxNDoiMjAsMTgsMjUsMTcsMjAiO30=',89,0),(7629,'content','product_scroll.aTeGNs','YToyNDp7czo0OiJyYW5kIjtzOjE5OiIwLjEyOTY3MjE3NDI3MDg2MTc1IjtzOjY6Im1vZHVsZSI7czoyMToicHJvZHVjdF9zY3JvbGwuYVRlR05zIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMToicHJvZHVjdF9zY3JvbGwuYVRlR05zIjtzOjU6Ind0eXBlIjtzOjE0OiJwcm9kdWN0X3Njcm9sbCI7czoxMToid2lkZ2V0X25hbWUiO3M6MjI6IkZhc2hpb24gJmFtcDsgQ2xvdGhpbmciO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MjI6IkZhc2hpb24gJmFtcDsgQ2xvdGhpbmciO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjIyOiJGYXNoaW9uICZhbXA7IENsb3RoaW5nIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6MTM6InBhbmVsLXByaW1hcnkiO3M6NzoiaWRfaXRlbSI7czoyNDoicHJvZHVjdHNjcm9sbF8xNDM3NTU2MDM4IjtzOjQ6Imljb24iO3M6MzQ6ImNhdGFsb2cvZGVtby9tb2R1bGUvaWNvbi9pY29uMS5wbmciO3M6OToiaWNvbl9zaXplIjtzOjU6IjI0eDI0IjtzOjc6ImJhbm5lcjEiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEuanBnIjtzOjEyOiJiYW5uZXIxX3NpemUiO3M6NzoiNDg5eDI2MCI7czo3OiJiYW5uZXIyIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXIyLmpwZyI7czoxMjoiYmFubmVyMl9zaXplIjtzOjc6IjQ4OXgyNjAiO3M6NToibGltaXQiO3M6MToiOCI7czo2OiJjb2x1bW4iO3M6MToiNCI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjQiO3M6NToid2lkdGgiO3M6MzoiMjAwIjtzOjY6ImhlaWdodCI7czozOiIyMTYiO3M6OToibGlzdF90eXBlIjtzOjY6Im5ld2VzdCI7czo2OiJjYXRpZHMiO3M6MTQ6IjIwLDE4LDI1LDU3LDMzIjt9',89,0),(7628,'content','product_scroll.9QxjQS','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjU0MjA1ODYwNTQ5NTg4OTIiO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC45UXhqUVMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC45UXhqUVMiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyNDoiSG9tZSwgR2FyZGVuICZhbXA7IFRvb2xzIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjI0OiJIb21lLCBHYXJkZW4gJmFtcDsgVG9vbHMiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMzoicGFuZWwtc3VjY2VzcyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc1NTg0MjQiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb240LnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNi5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI5Nzd4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MDoiIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiMjAweDIwMCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6NjoibmV3ZXN0IjtzOjY6ImNhdGlkcyI7czo4OiIyMCwxOCwyNSI7fQ==',89,0),(7655,'content','product_scroll.AYvFqY','YToyNDp7czo0OiJyYW5kIjtzOjE4OiIwLjcwMDM0NDk3MjI0MDgxODciO3M6NjoibW9kdWxlIjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5BWXZGcVkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjIxOiJwcm9kdWN0X3Njcm9sbC5BWXZGcVkiO3M6NToid3R5cGUiO3M6MTQ6InByb2R1Y3Rfc2Nyb2xsIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoyMjoiVG95cywgS2lkcyAgJmFtcDsgQmFieSI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoyMjoiVG95cywgS2lkcyAgJmFtcDsgQmFieSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MjI6IlRveXMsIEtpZHMgICZhbXA7IEJhYnkiO3M6MTI6ImFkZGl0aW9uX2NscyI7czoxMDoicGFuZWwtaW5mbyI7czo3OiJpZF9pdGVtIjtzOjI0OiJwcm9kdWN0c2Nyb2xsXzE0Mzc3MDIyOTQiO3M6NDoiaWNvbiI7czozNDoiY2F0YWxvZy9kZW1vL21vZHVsZS9pY29uL2ljb24zLnBuZyI7czo5OiJpY29uX3NpemUiO3M6NToiMjR4MjQiO3M6NzoiYmFubmVyMSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNC5qcGciO3M6MTI6ImJhbm5lcjFfc2l6ZSI7czo3OiI0ODl4MjYwIjtzOjc6ImJhbm5lcjIiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjUuanBnIjtzOjEyOiJiYW5uZXIyX3NpemUiO3M6NzoiNDg5eDI2MCI7czo1OiJsaW1pdCI7czoxOiI4IjtzOjY6ImNvbHVtbiI7czoxOiI0IjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiNCI7czo1OiJ3aWR0aCI7czozOiIyMDAiO3M6NjoiaGVpZ2h0IjtzOjM6IjIxNiI7czo5OiJsaXN0X3R5cGUiO3M6Nzoic3BlY2lhbCI7czo2OiJjYXRpZHMiO3M6MTE6IjM0LDIwLDE4LDI1Ijt9',83,0),(7654,'content','product_list.mTY6k4','YToxODp7czo0OiJyYW5kIjtzOjE5OiIwLjM1Mjk3NDI5NTM3MDE2NjQ1IjtzOjY6Im1vZHVsZSI7czoxOToicHJvZHVjdF9saXN0Lm1UWTZrNCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTk6InByb2R1Y3RfbGlzdC5tVFk2azQiO3M6NToid3R5cGUiO3M6MTI6InByb2R1Y3RfbGlzdCI7czoxMToid2lkZ2V0X25hbWUiO3M6MTc6IndlIHBpY2ssIHlvdSBzaG9wIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE3OiJ3ZSBwaWNrLCB5b3Ugc2hvcCI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTc6IndlIHBpY2ssIHlvdSBzaG9wIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6NDg6InBhbmVsLXYyIHBhbmVsLWluZm8gc2lkZWJhciBib3JkZXItaW5mbyBzcGFjZS0yMCI7czo5OiJpbWFnZWZpbGUiO3M6MDoiIjtzOjQ6InNpemUiO3M6MDoiIjtzOjU6ImxpbWl0IjtzOjI6IjEwIjtzOjY6ImNvbHVtbiI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MjoiMTAiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=',83,0),(7653,'content','product_list.1W8LZN','YToxODp7czo0OiJyYW5kIjtzOjE3OiIwLjY2ODcyMDIwNTcyMDQ4MyI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfbGlzdC4xVzhMWk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2xpc3QuMVc4TFpOIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2xpc3QiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJtb3N0IHBvcHVsYXIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6Im1vc3QgcG9wdWxhciI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6Im1vc3QgcG9wdWxhciI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjU0OiJwYW5lbC12MiBwYW5lbC13YXJuaW5nIHNpZGViYXIgYm9yZGVyLXdhcm5pbmcgc3BhY2UtMjAiO3M6OToiaW1hZ2VmaWxlIjtzOjA6IiI7czo0OiJzaXplIjtzOjA6IiI7czo1OiJsaW1pdCI7czoyOiIxMCI7czo2OiJjb2x1bW4iO3M6MToiMSI7czoxMjoiaXRlbXNwZXJwYWdlIjtzOjE6IjgiO3M6NToid2lkdGgiO3M6MjoiODAiO3M6NjoiaGVpZ2h0IjtzOjI6IjgwIjtzOjk6Imxpc3RfdHlwZSI7czo2OiJuZXdlc3QiO30=',83,0),(7651,'content','list_links.VZ73IG','YToxMTp7czo0OiJyYW5kIjtzOjE4OiIwLjk4MzkxOTQ4NTEzOTgwOTYiO3M6NjoibW9kdWxlIjtzOjE3OiJsaXN0X2xpbmtzLlZaNzNJRyI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTc6Imxpc3RfbGlua3MuVlo3M0lHIjtzOjU6Ind0eXBlIjtzOjEwOiJsaXN0X2xpbmtzIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMzoicXVpY2tseSBnbyB0byI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMzoicXVpY2tseSBnbyB0byI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTM6InF1aWNrbHkgZ28gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czoyMjoicGFuZWwtdjIgcGFuZWwtZGVmYXVsdCI7czo1OiJsaW5rcyI7YTo4OntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDUiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI1OSI7aTo0O3M6MjoiNjAiO2k6NTtzOjI6IjYwIjtpOjY7czoyOiI2MiI7aTo3O3M6MjoiNjMiO319',83,0),(7652,'content','product_deal.QzwWbG','YToxODp7czo0OiJyYW5kIjtzOjE3OiIwLjc1NDMyODAxMTI1ODM4NCI7czo2OiJtb2R1bGUiO3M6MTk6InByb2R1Y3RfZGVhbC5RendXYkciO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjE5OiJwcm9kdWN0X2RlYWwuUXp3V2JHIjtzOjU6Ind0eXBlIjtzOjEyOiJwcm9kdWN0X2RlYWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJMYXRlc3QgZGVhbCI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiTGF0ZXN0IGRlYWwiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJMYXRlc3QgZGVhbCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjE5OiJwYW5lbC1ibHVlIHBhbmVsLXYzIjtzOjEwOiJzdGFydF9kYXRlIjtzOjEwOiIyMDEwLTA3LTMwIjtzOjg6ImVuZF9kYXRlIjtzOjEwOiIyMDE5LTA3LTI1IjtzOjU6ImxpbWl0IjtzOjE6IjMiO3M6NDoiY29scyI7czoxOiIxIjtzOjEyOiJpdGVtc3BlcnBhZ2UiO3M6MToiMSI7czo5OiJpbWdfd2lkdGgiO3M6MzoiMjAwIjtzOjEwOiJpbWdfaGVpZ2h0IjtzOjM6IjIxNiI7czoxMjoiY2F0ZWdvcnlfaWRzIjthOjIzOntpOjA7czoyOiIzNiI7aToxO3M6MjoiNDUiO2k6MjtzOjI6IjQ2IjtpOjM7czoyOiI1OSI7aTo0O3M6MjoiNjAiO2k6NTtzOjI6IjYxIjtpOjY7czoyOiI2MiI7aTo3O3M6MjoiNjMiO2k6ODtzOjI6IjY0IjtpOjk7czoyOiI2NSI7aToxMDtzOjI6IjY2IjtpOjExO3M6MjoiNjciO2k6MTI7czoyOiI2OCI7aToxMztzOjI6IjY5IjtpOjE0O3M6MjoiNzAiO2k6MTU7czoyOiI3MSI7aToxNjtzOjI6IjcyIjtpOjE3O3M6MjoiNzMiO2k6MTg7czoyOiI3NCI7aToxOTtzOjI6IjIwIjtpOjIwO3M6MjoiMjYiO2k6MjE7czoyOiIyOCI7aToyMjtzOjI6IjE4Ijt9fQ==',83,0),(7650,'content','listproduct_home2.y3MZFt','YToxNzp7czo0OiJyYW5kIjtzOjE3OiIwLjg5Njg2NDcwNjQzMDI0OCI7czo2OiJtb2R1bGUiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUyLnkzTVpGdCI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MjQ6Imxpc3Rwcm9kdWN0X2hvbWUyLnkzTVpGdCI7czo1OiJ3dHlwZSI7czoxNzoibGlzdHByb2R1Y3RfaG9tZTIiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEyOiJFbGVjdHJvbmljcyAiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTI6IkVsZWN0cm9uaWNzICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTI6IkVsZWN0cm9uaWNzICI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjA6IiI7czo1OiJsaW5rcyI7YTo1OntpOjA7czoyOiI2MCI7aToxO3M6MjoiNjEiO2k6MjtzOjI6IjQ1IjtpOjM7czoyOiIxNyI7aTo0O3M6MjoiMjciO31zOjk6InRpdGxlXzFfMSI7czoxMzoiQmVzdHNlbGxlciAgICI7czo5OiJ0aXRsZV8xXzIiO3M6MTI6IkJlc3RzZWxsZXIgICI7czoxMToicHJvZHVjdDFfaWQiO3M6MTE6IjM0LDM1LDI4LDQwIjtzOjk6InRpdGxlXzJfMSI7czoxMzoiIE5ldyBBcnJpdmFscyI7czo5OiJ0aXRsZV8yXzIiO3M6MTM6IiBOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjExOiI0Miw0NCw0Nyw0OCI7fQ==',83,0),(7649,'content','listproduct_home2.DGMjiY','YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY4NzQ4MDY5MDQ5MDA2MzkiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi5ER01qaVkiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi5ER01qaVkiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiRnVybml0dXJlICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiRnVybml0dXJlICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6IkZ1cm5pdHVyZSAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI0NiI7aTozO3M6MjoiMTgiO2k6NDtzOjI6IjI0Ijt9czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6OToidGl0bGVfMV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjExOiJwcm9kdWN0MV9pZCI7czoxNzoiNDIsNDQsNDcsNDgsMTIsMTMiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwyMCwyMiI7fQ==',83,0),(7648,'content','listproduct_home2.7wgrsw','YToxNzp7czo0OiJyYW5kIjtzOjE5OiIwLjIxNTIxMzk0OTI5MjM0OTgzIjtzOjY6Im1vZHVsZSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTIuN3dncnN3IjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyNDoibGlzdHByb2R1Y3RfaG9tZTIuN3dncnN3IjtzOjU6Ind0eXBlIjtzOjE3OiJsaXN0cHJvZHVjdF9ob21lMiI7czoxMToid2lkZ2V0X25hbWUiO3M6MTU6ImNsb3RoaW5nLCBzaG9lcyI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNToiY2xvdGhpbmcsIHNob2VzIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxNToiY2xvdGhpbmcsIHNob2VzIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6ODoicGFuZWwtdjIiO3M6NToibGlua3MiO2E6NTp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI1OSI7aTozO3M6MjoiNjAiO2k6NDtzOjI6IjYxIjt9czo5OiJ0aXRsZV8xXzEiO3M6MTA6IkJlc3RzZWxsZXIiO3M6OToidGl0bGVfMV8yIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjExOiJwcm9kdWN0MV9pZCI7czoyMDoiMzAsNDMsNDYsNDcsNDgsMjAsNDAiO3M6OToidGl0bGVfMl8xIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6OToidGl0bGVfMl8yIjtzOjEyOiJOZXcgQXJyaXZhbHMiO3M6MTE6InByb2R1Y3QyX2lkIjtzOjE3OiI0Miw0NCw0Nyw0OCwyNSwyMiI7fQ==',83,0),(7647,'content','listproduct_home2.22UAd8','YToxNzp7czo0OiJyYW5kIjtzOjE4OiIwLjY1MTk1OTQ0MzY1NTA4NDIiO3M6NjoibW9kdWxlIjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi4yMlVBZDgiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJsaXN0cHJvZHVjdF9ob21lMi4yMlVBZDgiO3M6NToid3R5cGUiO3M6MTc6Imxpc3Rwcm9kdWN0X2hvbWUyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxNjoiQmFieSAmYW1wOyBraWRzICI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxNjoiQmFieSAmYW1wOyBraWRzICI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTY6IkJhYnkgJmFtcDsga2lkcyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6NToibGlua3MiO2E6Njp7aTowO3M6MjoiMzYiO2k6MTtzOjI6IjQ1IjtpOjI7czoyOiI0NiI7aTozO3M6MjoiNjAiO2k6NDtzOjI6IjYxIjtpOjU7czoyOiIyNSI7fXM6OToidGl0bGVfMV8xIjtzOjEwOiJCZXN0c2VsbGVyIjtzOjk6InRpdGxlXzFfMiI7czoxMDoiQmVzdHNlbGxlciI7czoxMToicHJvZHVjdDFfaWQiO3M6MTQ6IjI5LDUwLDQ4LDMwLDMzIjtzOjk6InRpdGxlXzJfMSI7czoxMjoiTmV3IEFycml2YWxzIjtzOjk6InRpdGxlXzJfMiI7czoxMjoiTmV3IEFycml2YWxzIjtzOjExOiJwcm9kdWN0Ml9pZCI7czoxNzoiNDIsNDQsNDcsNDgsMjAsMjMiO30=',83,0),(7646,'content','image.yudkIl','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjg4Mzk2NjcxNDMwODExMTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS55dWRrSWwiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS55dWRrSWwiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImltZzIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDoiaW1nMiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NDoiaW1nMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE0LmpwZyI7czo0OiJzaXplIjtzOjc6IjM5MHgyNjAiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',83,0),(7645,'content','image.WOBZwM','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjUwNDk3OTM2MDkwMzAyOTgiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5XT0Jad00iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5XT0Jad00iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJpbWcxLWhvbWUyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJpbWcxLWhvbWUyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiaW1nMS1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjI4OiJlZmZlY3QtdjMgc3BhY2UtbWFyZ2luLXRiLTIwIjtzOjk6ImltYWdlZmlsZSI7czozMjoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyNS5qcGciO3M6NDoic2l6ZSI7czowOiIiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',83,0),(7644,'content','image.UCcBGK','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjY1ODkyMjc5OTAwOTcyMjEiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5VQ2NCR0siO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5VQ2NCR0siO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImltZzEiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDoiaW1nMSI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NDoiaW1nMSI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjEzLmpwZyI7czo0OiJzaXplIjtzOjc6IjM5MHgyNjAiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',83,0),(7643,'content','image.tZqfYO','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjMyNjk1NTE2NTY2NjMwODIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS50WnFmWU8iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS50WnFmWU8iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjEwOiJpbWcyLWhvbWUyIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjAiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjEwOiJpbWcyLWhvbWUyIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMDoiaW1nMi1ob21lMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MyI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjYuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==',83,0),(7642,'content','image.cGxzJN','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjYyNTkwNjQwNTYyNTg4MjciO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5jR3h6Sk4iO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5jR3h6Sk4iO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjQ6ImltZzMiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6NDoiaW1nMyI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6NDoiaW1nMyI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12NCI7czo5OiJpbWFnZWZpbGUiO3M6MzM6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE1LmpwZyI7czo0OiJzaXplIjtzOjc6IjM5MHgyNjAiO3M6OToiYW5pbWF0aW9uIjtzOjE6IjEiO3M6OToiYWxpZ25tZW50IjtzOjY6ImNlbnRlciI7czo3OiJpc3BvcHVwIjtzOjE6IjEiO3M6NDoibGluayI7czoxOiIjIjt9',83,0),(7641,'content','image.BLXThv','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjQ2NzM5MTY5MDU3NTY1OTIiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5CTFhUaHYiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5CTFhUaHYiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjk6ImltZzQtaG9tMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo5OiJpbWc0LWhvbTIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjk6ImltZzQtaG9tMiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjk6ImVmZmVjdC12MyI7czo5OiJpbWFnZWZpbGUiO3M6MzI6ImNhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjkuanBnIjtzOjQ6InNpemUiO3M6MDoiIjtzOjk6ImFuaW1hdGlvbiI7czoxOiIxIjtzOjk6ImFsaWdubWVudCI7czo2OiJjZW50ZXIiO3M6NzoiaXNwb3B1cCI7czoxOiIxIjtzOjQ6ImxpbmsiO3M6MToiIyI7fQ==',83,0),(7640,'content','image.aZaDsW','YToxNjp7czo0OiJyYW5kIjtzOjE5OiIwLjIxMTQxNTU1MDA2NjQzMTQyIjtzOjY6Im1vZHVsZSI7czoxMjoiaW1hZ2UuYVphRHNXIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoxMjoiaW1hZ2UuYVphRHNXIjtzOjU6Ind0eXBlIjtzOjU6ImltYWdlIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMDoiaW1nMi1ob21lMiI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMDoiaW1nMi1ob21lMiI7czoxNDoid2lkZ2V0X3RpdGxlXzIiO3M6MTA6ImltZzItaG9tZTIiO3M6MTI6ImFkZGl0aW9uX2NscyI7czo5OiJlZmZlY3QtdjMiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI3LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=',83,0),(7639,'content','image.7xa41k','YToxNjp7czo0OiJyYW5kIjtzOjIwOiIwLjAyNzkzMzYxNDE5Nzc1NTA4NiI7czo2OiJtb2R1bGUiO3M6MTI6ImltYWdlLjd4YTQxayI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTI6ImltYWdlLjd4YTQxayI7czo1OiJ3dHlwZSI7czo1OiJpbWFnZSI7czoxMToid2lkZ2V0X25hbWUiO3M6MTA6ImltZzMtaG9tZTIiO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMCI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTA6ImltZzMtaG9tZTIiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjEwOiJpbWczLWhvbWUyIjtzOjEyOiJhZGRpdGlvbl9jbHMiO3M6Mjg6ImVmZmVjdC12MyBzcGFjZS1tYXJnaW4tdGItMjAiO3M6OToiaW1hZ2VmaWxlIjtzOjMyOiJjYXRhbG9nL2RlbW8vYmFubmVycy9iYW5uZXI4LmpwZyI7czo0OiJzaXplIjtzOjA6IiI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=',83,0),(7667,'content','image.ikGmQU','YToxNjp7czo0OiJyYW5kIjtzOjE4OiIwLjU0ODA4MzcyODM3NDgxNDQiO3M6NjoibW9kdWxlIjtzOjEyOiJpbWFnZS5pa0dtUVUiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjEyOiJpbWFnZS5pa0dtUVUiO3M6NToid3R5cGUiO3M6NToiaW1hZ2UiO3M6MTE6IndpZGdldF9uYW1lIjtzOjY6ImltZy1oNCI7czoxMDoic2hvd190aXRsZSI7czoxOiIwIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czo2OiJpbWctaDQiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjY6ImltZy1oNCI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjg6InNwYWNlLTMwIjtzOjk6ImltYWdlZmlsZSI7czozMzoiY2F0YWxvZy9kZW1vL2Jhbm5lcnMvYmFubmVyMTcuanBnIjtzOjQ6InNpemUiO3M6NzoiMjcweDMwMCI7czo5OiJhbmltYXRpb24iO3M6MToiMSI7czo5OiJhbGlnbm1lbnQiO3M6NjoiY2VudGVyIjtzOjc6ImlzcG9wdXAiO3M6MToiMSI7czo0OiJsaW5rIjtzOjE6IiMiO30=',99,0),(7638,'content','countdownproduct2.TRa6UC','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjk0NDA3MjI3MjI5Nzg2NTYiO3M6NjoibW9kdWxlIjtzOjI0OiJjb3VudGRvd25wcm9kdWN0Mi5UUmE2VUMiO3M6ODoic2F2ZWRhdGEiO3M6MToiMSI7czo0OiJ3a2V5IjtzOjI0OiJjb3VudGRvd25wcm9kdWN0Mi5UUmE2VUMiO3M6NToid3R5cGUiO3M6MTc6ImNvdW50ZG93bnByb2R1Y3QyIjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxMToiY291dGRvd24gdG8iO3M6MTA6InNob3dfdGl0bGUiO3M6MToiMSI7czoxNDoid2lkZ2V0X3RpdGxlXzEiO3M6MTE6ImNvdXRkb3duIHRvIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMiI7czoxMToiY291dGRvd24gdG8iO3M6MTI6ImFkZGl0aW9uX2NscyI7czowOiIiO3M6MTA6InN0YXJ0X2RhdGUiO3M6MTA6IjIwMTAtMDItMDIiO3M6ODoiZW5kX2RhdGUiO3M6MTA6IjIwMTYtMTEtMjIiO3M6MTQ6ImNob29zZV9wcm9kdWN0IjtzOjA6IiI7czo3OiJwcm9kdWN0IjthOjU6e2k6MDtzOjI6IjMwIjtpOjE7czoyOiI0MSI7aToyO3M6MjoiMjgiO2k6MztzOjI6IjQwIjtpOjQ7czoyOiI0MiI7fXM6MTM6Imh0bWxjb250ZW50XzEiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NjE6IiZsdDtzcGFuIGNsYXNzPSZxdW90O2JsYWNrJnF1b3Q7Jmd0O2JsYWNrJmx0Oy9zcGFuJmd0OyBmcmlkYXkiO3M6MTE6ImltYWdlX3dpZHRoIjtzOjM6IjIwMCI7czoxMjoiaW1hZ2VfaGVpZ2h0IjtzOjM6IjIwMCI7fQ==',83,0),(7665,'content','featuredproduct.bTUwvf','YToxODp7czo0OiJyYW5kIjtzOjE4OiIwLjkyMzYyMTg3NjQzNTgyNDQiO3M6NjoibW9kdWxlIjtzOjIyOiJmZWF0dXJlZHByb2R1Y3QuYlRVd3ZmIjtzOjg6InNhdmVkYXRhIjtzOjE6IjEiO3M6NDoid2tleSI7czoyMjoiZmVhdHVyZWRwcm9kdWN0LmJUVXd2ZiI7czo1OiJ3dHlwZSI7czoxNToiZmVhdHVyZWRwcm9kdWN0IjtzOjExOiJ3aWRnZXRfbmFtZSI7czoxODoiRmVhdHVyZWQgUHJvZHVjdHMgIjtzOjEwOiJzaG93X3RpdGxlIjtzOjE6IjEiO3M6MTQ6IndpZGdldF90aXRsZV8xIjtzOjE4OiJGZWF0dXJlZCBQcm9kdWN0cyAiO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjE4OiJGZWF0dXJlZCBQcm9kdWN0cyAiO3M6MTI6ImFkZGl0aW9uX2NscyI7czozMDoicGFuZWwtdjMgcGFuZWwtb3JhbmdlIHNwYWNlLTMwIjtzOjQ6Imljb24iO3M6MDoiIjtzOjEwOiJwcm9kdWN0X2lkIjtzOjMyOiI0Miw0NCw0Niw0Nyw0OCwzMCwzMywyOCwzNSw0MCw1MCI7czo0OiJjb2xzIjtzOjE6IjQiO3M6MTI6Iml0ZW1zcGVycGFnZSI7czoxOiI4IjtzOjU6ImxpbWl0IjtzOjI6IjE2IjtzOjExOiJpbWFnZV93aWR0aCI7czozOiI1MDAiO3M6MTI6ImltYWdlX2hlaWdodCI7czozOiI1MzkiO3M6OToiYXV0b19wbGF5IjtzOjQ6IjMwMDAiO30=',99,0),(7666,'content','html.NFbhhE','YToxMjp7czo0OiJyYW5kIjtzOjE4OiIwLjM2ODczOTM4MjY5NDM2NDciO3M6NjoibW9kdWxlIjtzOjExOiJodG1sLk5GYmhoRSI7czo4OiJzYXZlZGF0YSI7czoxOiIxIjtzOjQ6IndrZXkiO3M6MTE6Imh0bWwuTkZiaGhFIjtzOjU6Ind0eXBlIjtzOjQ6Imh0bWwiO3M6MTE6IndpZGdldF9uYW1lIjtzOjExOiJJbmZvcm1hdGlvbiI7czoxMDoic2hvd190aXRsZSI7czoxOiIxIjtzOjE0OiJ3aWRnZXRfdGl0bGVfMSI7czoxMToiSW5mb3JtYXRpb24iO3M6MTQ6IndpZGdldF90aXRsZV8yIjtzOjExOiJJbmZvcm1hdGlvbiI7czoxMjoiYWRkaXRpb25fY2xzIjtzOjIxOiJwYW5lbC12NCBwYW5lbC1vcmFuZ2UiO3M6MTM6Imh0bWxjb250ZW50XzEiO3M6NDAyOiImbHQ7aW1nIGFsdD0mcXVvdDtiYW5uZXImcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE2LmpwZyZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1oZWFkaW5nJnF1b3Q7Jmd0OyZsdDtoNCBjbGFzcz0mcXVvdDtwYW5lbC10aXRsZSBibGFjayZxdW90OyZndDtJbmZvcm1hdGlvbiZsdDsvaDQmZ3Q7Jmx0Oy9kaXYmZ3Q7Jmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1ib2R5JnF1b3Q7Jmd0O01vcmJpIGFjY3Vtc2FuIGlwc3VtIHZlbGl0LiBOYW0gZWMgdGVsbHVzIGEgb2RpbyB0aW5jaWR1bnQgYXVjdG9yIGEgb3JuYXJlIG9kaW8uIFNlZCBub24gIG1hdXJpcyB2aXRhZSBlcmF0IGNvbnNlcXVhdCBhdWN0b3IgZXUgaW4gZWxpdC4mbHQ7L2RpdiZndDsiO3M6MTM6Imh0bWxjb250ZW50XzIiO3M6NDAyOiImbHQ7aW1nIGFsdD0mcXVvdDtiYW5uZXImcXVvdDsgc3JjPSZxdW90O2ltYWdlL2NhdGFsb2cvZGVtby9iYW5uZXJzL2Jhbm5lcjE2LmpwZyZxdW90OyZndDsJJmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1oZWFkaW5nJnF1b3Q7Jmd0OyZsdDtoNCBjbGFzcz0mcXVvdDtwYW5lbC10aXRsZSBibGFjayZxdW90OyZndDtJbmZvcm1hdGlvbiZsdDsvaDQmZ3Q7Jmx0Oy9kaXYmZ3Q7Jmx0O2RpdiBjbGFzcz0mcXVvdDtwYW5lbC1ib2R5JnF1b3Q7Jmd0O01vcmJpIGFjY3Vtc2FuIGlwc3VtIHZlbGl0LiBOYW0gZWMgdGVsbHVzIGEgb2RpbyB0aW5jaWR1bnQgYXVjdG9yIGEgb3JuYXJlIG9kaW8uIFNlZCBub24gIG1hdXJpcyB2aXRhZSBlcmF0IGNvbnNlcXVhdCBhdWN0b3IgZXUgaW4gZWxpdC4mbHQ7L2RpdiZndDsiO30=',99,0);
/*!40000 ALTER TABLE `oc_pavwidget` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product`
--

DROP TABLE IF EXISTS `oc_product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `model` varchar(64) NOT NULL,
  `sku` varchar(64) NOT NULL,
  `upc` varchar(12) NOT NULL,
  `ean` varchar(14) NOT NULL,
  `jan` varchar(13) NOT NULL,
  `isbn` varchar(17) NOT NULL,
  `mpn` varchar(64) NOT NULL,
  `location` varchar(128) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `stock_status_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `manufacturer_id` int(11) NOT NULL,
  `shipping` tinyint(1) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `points` int(8) NOT NULL DEFAULT '0',
  `tax_class_id` int(11) NOT NULL,
  `date_available` date NOT NULL DEFAULT '0000-00-00',
  `weight` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `weight_class_id` int(11) NOT NULL DEFAULT '0',
  `length` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `width` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `height` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  `length_class_id` int(11) NOT NULL DEFAULT '0',
  `subtract` tinyint(1) NOT NULL DEFAULT '1',
  `minimum` int(11) NOT NULL DEFAULT '1',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `viewed` int(5) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=52 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product`
--

LOCK TABLES `oc_product` WRITE;
/*!40000 ALTER TABLE `oc_product` DISABLE KEYS */;
INSERT INTO `oc_product` VALUES (28,'Product 1','','','','','','','',939,7,'catalog/demo/product/product1.jpg',5,1,100.0000,200,9,'2009-02-03',146.40000000,2,0.00000000,0.00000000,0.00000000,1,1,1,0,1,54,'2009-02-03 16:06:50','2015-07-29 16:15:34'),(29,'Product 2','','','','','','','',999,6,'catalog/demo/product/product2.jpg',6,1,279.9900,0,9,'2009-02-03',133.00000000,2,0.00000000,0.00000000,0.00000000,3,1,1,0,1,3,'2009-02-03 16:42:17','2015-07-30 21:49:00'),(30,'Product 3','','','','','','','',7,6,'catalog/demo/product/product3.jpg',9,1,100.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,46,'2009-02-03 16:59:00','2015-07-29 16:22:14'),(31,'Product 4','','','','','','','',1000,6,'catalog/demo/product/product4.jpg',0,1,80.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,3,1,1,0,1,23,'2009-02-03 17:00:10','2015-07-30 21:53:53'),(32,'Product 5','','','','','','','',999,6,'catalog/demo/product/product5.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 17:07:26','2015-07-30 22:11:27'),(33,'Product 6','','','','','','','',1000,6,'catalog/demo/product/product6.jpg',0,1,200.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 17:08:31','2015-07-30 22:20:56'),(34,'Product 7','','','','','','','',1000,6,'catalog/demo/product/product7.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:07:54','2015-07-30 22:14:10'),(35,'Product 8','','','','','','','',1000,5,'catalog/demo/product/product8.jpg',0,0,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 18:08:31','2015-07-30 22:20:16'),(36,'Product 9','','','','','','','',994,6,'catalog/demo/product/product9.jpg',8,0,100.0000,100,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 18:09:19','2015-07-30 22:17:04'),(40,'product 11','','','','','','','',970,5,'catalog/demo/product/product10.jpg',8,1,101.0000,0,9,'2009-02-03',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,6,'2009-02-03 21:07:12','2015-07-30 22:18:45'),(41,'Product 14','','','','','','','',977,5,'catalog/demo/product/product11.jpg',8,1,100.0000,0,9,'2009-02-03',5.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,0,'2009-02-03 21:07:26','2015-07-30 22:09:56'),(42,'Product 15','','','','','','','',990,5,'catalog/demo/product/product12.jpg',8,1,100.0000,400,9,'2009-02-04',12.50000000,1,1.00000000,2.00000000,3.00000000,1,1,1,0,1,52,'2009-02-03 21:07:37','2015-07-30 22:08:43'),(43,'Product 16','','','','','','','',929,5,'catalog/demo/product/product13.jpg',8,0,500.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,0,'2009-02-03 21:07:49','2015-07-09 16:14:17'),(44,'Product 17','','','','','','','',1000,5,'catalog/demo/product/product14.jpg',8,1,1000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,2,'2009-02-03 21:08:00','2015-07-30 22:07:16'),(45,'Product 18','','','','','','','',998,5,'catalog/demo/product/product15.jpg',8,1,2000.0000,0,0,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,5,'2009-02-03 21:08:17','2015-07-30 22:00:21'),(46,'Product 19','','','','','','','',1000,5,'catalog/demo/product/product16.jpg',10,1,1000.0000,0,9,'2009-02-03',0.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-03 21:08:29','2015-07-30 22:02:41'),(47,'Product 21','','','','','','','',1000,5,'catalog/demo/product/product17.jpg',7,1,100.0000,400,9,'2009-02-03',1.00000000,1,0.00000000,0.00000000,0.00000000,1,0,1,0,1,21,'2009-02-03 21:08:40','2015-07-30 22:03:59'),(48,'product 20','test 1','','','','','','test 2',995,5,'catalog/demo/product/product18.jpg',8,1,100.0000,0,9,'2009-02-08',1.00000000,1,0.00000000,0.00000000,0.00000000,2,1,1,0,1,1,'2009-02-08 17:21:51','2015-07-30 22:05:34'),(49,'SAM1','','','','','','','',100,8,'catalog/demo/product/product19.jpg',8,1,199.9900,0,9,'2011-04-25',0.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,1,1,3,'2011-04-26 08:57:34','2015-07-30 21:42:13'),(50,'product 11','','','','','','','',970,5,'catalog/demo/product/product20.jpg',8,1,1010.0000,0,9,'2009-02-03',10.00000000,1,0.00000000,0.00000000,0.00000000,1,1,1,0,1,32,'2015-01-20 08:40:31','2015-07-30 21:39:12');
/*!40000 ALTER TABLE `oc_product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_attribute`
--

DROP TABLE IF EXISTS `oc_product_attribute`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_attribute` (
  `product_id` int(11) NOT NULL,
  `attribute_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `text` text NOT NULL,
  PRIMARY KEY (`product_id`,`attribute_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_attribute`
--

LOCK TABLES `oc_product_attribute` WRITE;
/*!40000 ALTER TABLE `oc_product_attribute` DISABLE KEYS */;
INSERT INTO `oc_product_attribute` VALUES (42,3,1,'100mhz'),(43,2,2,'1'),(47,4,1,'16GB'),(42,3,2,'100mhz'),(47,2,2,'4'),(43,4,1,'8gb'),(47,2,1,'4'),(43,2,1,'1'),(43,4,2,'8gb'),(47,4,2,'16GB');
/*!40000 ALTER TABLE `oc_product_attribute` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_description`
--

DROP TABLE IF EXISTS `oc_product_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_description` (
  `product_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `tag` text NOT NULL,
  `meta_title` varchar(255) NOT NULL,
  `meta_description` varchar(255) NOT NULL,
  `meta_keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`product_id`,`language_id`),
  KEY `name` (`name`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_description`
--

LOCK TABLES `oc_product_description` WRITE;
/*!40000 ALTER TABLE `oc_product_description` DISABLE KEYS */;
INSERT INTO `oc_product_description` VALUES (48,1,'Loving Famil Deluxe Decor Kids','&lt;p&gt;Kids love to have sleepovers — and this sweet bedroom set is the perfect spot for one! By day, there’s a desk with a chair to get work done. Then, it converts to an additional bed, complete with a blanket and even a book to read (tethered so it won’t get lost)! A rotating cabinet with mirror and pull-out baskets completes the set.&lt;/p&gt;','','Loving Famil Deluxe Decor Kids','',''),(48,2,'Loving Famil Deluxe Decor Kids','&lt;p&gt;Kids love to have sleepovers — and this sweet bedroom set is the perfect spot for one! By day, there’s a desk with a chair to get work done. Then, it converts to an additional bed, complete with a blanket and even a book to read (tethered so it won’t get lost)! A rotating cabinet with mirror and pull-out baskets completes the set.&lt;/p&gt;','','Loving Famil Deluxe Decor Kids','',''),(28,2,'Hot 2015 Original New Ultra-thin Women','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Hot 2015 Original New Ultra-thin Women','',''),(36,1,'Loving Family Nursery','&lt;p&gt;Taking care of baby twins is a lot of fun, especially with all the right nursery gear! Press the changing table for real lights and music, making changing time extra-sweet. Two beautiful bassinets have spinning mobiles, while the rocking chair with story book gives Mom or Dad a place to rest.&lt;/p&gt;','','Lorem ipsum with Metal 9','',''),(36,2,'Loving Family Nursery','&lt;p&gt;Taking care of baby twins is a lot of fun, especially with all the right nursery gear! Press the changing table for real lights and music, making changing time extra-sweet. Two beautiful bassinets have spinning mobiles, while the rocking chair with story book gives Mom or Dad a place to rest.&lt;/p&gt;','','Loving Family Nursery','',''),(47,2,'Little People  Wheelies Stand Play','&lt;p&gt;\r\nLooking for a “wheelie” fun way to play with Little People® Wheelies? On the Stand ’n Play Rampway, they zip and zoom up and down and all around! It’s over two feet tall, so the “wheelies” really zoom down each of the two spiral ramps. Plenty of lights and sounds as kids “drive” around, with a mechanic’s lift, a place to fill ’er up, a sign that spins when a car drives through and more! Includes rampway and two Wheelies vehicles.&lt;/p&gt;','','Little People  Wheelies Stand Play','',''),(32,1,'Loving Family Dollhouse','&lt;p&gt;Ding-dong! Anybody home? In the Fisher-Price® Loving Family™ Dollhouse, you’ll find Mom, Dad and Baby ready to invite you into their spacious, stylish 4-floor home. Little girls will love all the special touches inside, like a 4th floor balcony, and 2nd floor patio off the kitchen! There are 6 spacious rooms to explore, but let’s take the side entrance back outside (Look—a doggy door!) to see the flip-out swing set with a sweet seat for Baby.&lt;br&gt;&lt;br&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Opens wide for play, with 4 floors and 6 spacious rooms&lt;/li&gt;&lt;li&gt;Flip-out swing set, complete with 2 swings!&lt;/li&gt;&lt;li&gt;Includes Mom, Dad, Baby, sofa and baby seat&lt;/li&gt;&lt;li&gt;Folds easily for storage—accessories store inside&lt;/li&gt;&lt;/ul&gt;','','Loving Family Dollhouse','',''),(32,2,'Loving Family Dollhouse','&lt;p&gt;Ding-dong! Anybody home? In the Fisher-Price® Loving Family™ Dollhouse, you’ll find Mom, Dad and Baby ready to invite you into their spacious, stylish 4-floor home. Little girls will love all the special touches inside, like a 4th floor balcony, and 2nd floor patio off the kitchen! There are 6 spacious rooms to explore, but let’s take the side entrance back outside (Look—a doggy door!) to see the flip-out swing set with a sweet seat for Baby.&lt;br&gt;&lt;br&gt;&lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt;&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Opens wide for play, with 4 floors and 6 spacious rooms&lt;/li&gt;&lt;li&gt;Flip-out swing set, complete with 2 swings!&lt;/li&gt;&lt;li&gt;Includes Mom, Dad, Baby, sofa and baby seat&lt;/li&gt;&lt;li&gt;Folds easily for storage—accessories store inside&lt;/li&gt;&lt;/ul&gt;','','Loving Family Dollhouse','',''),(41,1,'Imaginext Pirate Ship','&lt;p&gt;Ahoy there! Think twice before you board this Pirate Ship, because the skeleton pirates might make you walk the plank! Roll the ship along to see it “rock” as if it were traveling through rough waters. Turn figures on disks to release sails, raise the anchor or even extend the gangplank! Push the button to reveal the triple cannon launcher and fire at other ships!  So much high-seas action and adventure await—including a mutinous “duel” between the skeleton pirates! Just be sure to bring your imaginations, mateys!&lt;br&gt;&lt;br&gt;    &lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt;  • Turn figures on different disks to release sails, raise the anchor or extend the gangplank! &lt;br&gt;  • Triple cannon launches 3 projectiles at once!&lt;br&gt;  • Roll ship along for “rocking” motion&lt;br&gt;  • Place figures on platform and push disk back and forth to see them “duel”!&lt;br&gt;  • Swords fit in figures’ hands&lt;br&gt;  • Includes 2 skeleton pirate figures, 2 swords and cannon projectiles&lt;br&gt;&lt;br&gt;    &lt;/p&gt;','','Imaginext Pirate Ship','',''),(33,1,'Home aliqua aiusmod tempor incididu','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n','','Home aliqua aiusmod tempor incididu','',''),(34,1,'Tiger iPad Cover','&lt;p&gt;Keep their iPad free from scratches and scrapes with this iPad cover from Molo. Featuring two cuddling tigers against a light tan background and a secure zip fastening. The soft padded material and elasticated strap on the inside is sure to keep their gadget well protected. &lt;/p&gt;&lt;p&gt;- Measures 26cm x 22cm x 1.5cm&lt;/p&gt;','','Tiger iPad Cover','',''),(34,2,'Tiger iPad Cover','&lt;p&gt;Keep their iPad free from scratches and scrapes with this iPad cover from Molo. Featuring two cuddling tigers against a light tan background and a secure zip fastening. The soft padded material and elasticated strap on the inside is sure to keep their gadget well protected. &lt;/p&gt;&lt;p&gt;- Measures 26cm x 22cm x 1.5cm&lt;/p&gt;','','Tiger iPad Cover','',''),(49,2,'Rada Denim Look Panelled Skater','&lt;p&gt;Pared back day dresses are the perfect base for layering up this seasonNo off-duty wardrobe is complete without a casual day dress. Basic bodycon dresses are always a winner and casual cami dresses a key piece for pairing with a polo neck, giving you that effortless everyday edge. Tone down the twinkle for day by teaming a sequin slip dress with a jersey tee – genius! So, if you ever get caught out for cocktails, this day-to-night look will have you covered.&lt;/p&gt;','','Rada Denim Look Panelled Skater','',''),(49,1,'Rada Denim Look Panelled Skater','&lt;p&gt;Pared back day dresses are the perfect base for layering up this seasonNo off-duty wardrobe is complete without a casual day dress. Basic bodycon dresses are always a winner and casual cami dresses a key piece for pairing with a polo neck, giving you that effortless everyday edge. Tone down the twinkle for day by teaming a sequin slip dress with a jersey tee – genius! So, if you ever get caught out for cocktails, this day-to-night look will have you covered.&lt;/p&gt;','','Rada Denim Look Panelled Skater','Watchs white',''),(47,1,'Little People  Wheelies Stand Play','&lt;p&gt;\r\nLooking for a “wheelie” fun way to play with Little People® Wheelies? On the Stand ’n Play Rampway, they zip and zoom up and down and all around! It’s over two feet tall, so the “wheelies” really zoom down each of the two spiral ramps. Plenty of lights and sounds as kids “drive” around, with a mechanic’s lift, a place to fill ’er up, a sign that spins when a car drives through and more! Includes rampway and two Wheelies vehicles.&lt;/p&gt;','','Little People  Wheelies Stand Play','',''),(30,2,'ASOS Leather iPhone Sleeve In Black','&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n','','ASOS Leather iPhone Sleeve In Black','',''),(35,1,'Hooray for the Red, White','&lt;p&gt;	All aboard for a patriotic parade! Push this free-wheeling train along and the teeter-totter goes up and down while a friend in the next car goes ’round and round. Put any one of the five Little People® friends in the conductor’s seat to hear the &quot;Stars and Stripes Forever&quot; tune play.&lt;/p&gt;','','Hooray for the Red, White','',''),(35,2,'Hooray for the Red, White','&lt;p&gt;	All aboard for a patriotic parade! Push this free-wheeling train along and the teeter-totter goes up and down while a friend in the next car goes ’round and round. Put any one of the five Little People® friends in the conductor’s seat to hear the &quot;Stars and Stripes Forever&quot; tune play.&lt;/p&gt;','','Hooray for the Red, White','',''),(29,1,'MarlaWynne Striated Jersey Butterfly','&lt;h3&gt;MarlaWynne Striated Jersey Butterfly Tee&lt;/h3&gt;&lt;p&gt;	Effortless made easy. This MarlaWynne tee gives you comfort chic in a fabric that makes transitioning from one season to the next, seamless. Top it with a necklace or scarf for the move to fall and see all the wonder you can achieve when you pair it with slacks or jeans. &lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Delivery Offer&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		3 – 5 working days – if ordered before 9pm&lt;/li&gt;	&lt;li&gt;		Black/Soft White, Dark Midnight/Flintstone or Light Mushroom/Soft White&lt;/li&gt;	&lt;li&gt;		Stretch woven striated jersey knit&lt;/li&gt;	&lt;li&gt;		Pullover&lt;/li&gt;	&lt;li&gt;		XS-XL; 1X-3X&lt;/li&gt;	&lt;li&gt;		Approx. 27&quot;L&lt;/li&gt;	&lt;li&gt;		94% viscose, 5% spandex/elastane, 1% polyester&lt;/li&gt;&lt;/ul&gt;','','MarlaWynne Striated Jersey Butterfly','',''),(29,2,'MarlaWynne Striated Jersey Butterfly','&lt;h3&gt;MarlaWynne Striated Jersey Butterfly Tee&lt;/h3&gt;&lt;p&gt;	Effortless made easy. This MarlaWynne tee gives you comfort chic in a fabric that makes transitioning from one season to the next, seamless. Top it with a necklace or scarf for the move to fall and see all the wonder you can achieve when you pair it with slacks or jeans. &lt;/p&gt;&lt;p&gt;	&lt;strong&gt;Delivery Offer&lt;/strong&gt;&lt;/p&gt;&lt;ul&gt;	&lt;li&gt;		3 – 5 working days – if ordered before 9pm&lt;/li&gt;	&lt;li&gt;		Black/Soft White, Dark Midnight/Flintstone or Light Mushroom/Soft White&lt;/li&gt;	&lt;li&gt;		Stretch woven striated jersey knit&lt;/li&gt;	&lt;li&gt;		Pullover&lt;/li&gt;	&lt;li&gt;		XS-XL; 1X-3X&lt;/li&gt;	&lt;li&gt;		Approx. 27&quot;L&lt;/li&gt;	&lt;li&gt;		94% viscose, 5% spandex/elastane, 1% polyester&lt;/li&gt;&lt;/ul&gt;','','MarlaWynne Striated Jersey Butterfly','',''),(46,1,'Power Wheels Disney Minnie Mouse ','&lt;p&gt;Sweet Minnie Mouse styling &amp;amp; Volkswagen® driving fun! Battery-powered fun for the littlest drivers! Tot-friendly design features a driver’s door that really opens and closes, and foot pedal operation for easy stop and go. Drives on hard surfaces at a safe but exciting 2.5 mph.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Driver’s door opens &amp;amp; closes&lt;/li&gt;&lt;li&gt;Foot pedal operation for easy stop &amp;amp; go&lt;/li&gt;&lt;li&gt;2.5 mph (max.) forward &amp;amp; reverse&lt;/li&gt;&lt;li&gt;Drives on hard surfaces&lt;/li&gt;&lt;li&gt;Power Lock® Brake System&lt;/li&gt;&lt;/ul&gt;','','Power Wheels Disney Minnie Mouse ','',''),(43,1,'Zebronics Colt 3 Wired Gaming Headset','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Zebronics Colt 3 Wired Gaming Headset','',''),(31,1,'iPhone 6 Plus Space Gray','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','iPhone 6 Plus Space Gray','',''),(30,1,'ASOS Leather iPhone Sleeve In Black','&lt;p&gt;\r\n	Canon\'s press material for the EOS 5D states that it \'defines (a) new D-SLR category\', while we\'re not typically too concerned with marketing talk this particular statement is clearly pretty accurate. The EOS 5D is unlike any previous digital SLR in that it combines a full-frame (35 mm sized) high resolution sensor (12.8 megapixels) with a relatively compact body (slightly larger than the EOS 20D, although in your hand it feels noticeably \'chunkier\'). The EOS 5D is aimed to slot in between the EOS 20D and the EOS-1D professional digital SLR\'s, an important difference when compared to the latter is that the EOS 5D doesn\'t have any environmental seals. While Canon don\'t specifically refer to the EOS 5D as a \'professional\' digital SLR it will have obvious appeal to professionals who want a high quality digital SLR in a body lighter than the EOS-1D. It will also no doubt appeal to current EOS 20D owners (although lets hope they\'ve not bought too many EF-S lenses...) äë&lt;/p&gt;\r\n','','ASOS Leather iPhone Sleeve In Black','',''),(50,1,'Layla Tabbard Side Skater Dress','&lt;p class=&quot;intro&quot;&gt;We hope you are satisfied with all of your purchases but if you ever need to return an item, you can do so within 14 days from the date your parcel was dispatched.Please note, we cannot offer refunds on pierced jewellery or on swimwear if the hygiene seal is not in place or has been broken.Great news! We now offer a FREE Collect+ returns service via over 5,500 local stores nationwide.Click here to view our full Returns Policy.&lt;/p&gt;','Watchs Black','Layla Tabbard Side Skater Dress','Watchs Black','Watchs Black'),(45,1,'Laugh &amp; Learn Crawl Around Car','&lt;p&gt;The Fisher-Price Laugh Learn Crawl Around Car puts baby in the driver seat of a fun-filled stationary vehicle with all-around learning and play. The interactive lights and sounds dashboard keeps baby busy with a light-up baby “GPS”, horn to honk, gears to shift, and more. With over 75 sung songs, tunes and phrases, and three modes of play, there’s plenty of fuel for learning adventures and fun!&lt;/p&gt;&lt;ul&gt;&lt;li&gt;75+ sing-along songs, tunes &amp;amp; phrases&lt;/li&gt;&lt;li&gt;Interactive dashboard with lights, sounds &amp;amp; busy activities&lt;/li&gt;&lt;li&gt;Light-up baby “GPS”&lt;/li&gt;&lt;li&gt;3 modes of play: Learning, Music &amp;amp; Imagination&lt;/li&gt;&lt;li&gt;Stationary car encourages baby to sit up, crawl, pull up, stand &amp;amp; move all around for play inside &amp;amp; out&lt;/li&gt;&lt;li&gt;Built-in ramp for ball play (includes 3 balls)&lt;/li&gt;&lt;li&gt;Shapes &amp;amp; colors sorting door (includes 3 shape blocks)&lt;/li&gt;&lt;li&gt;Introduces baby to letters, numbers, colors, first words, greetings &amp;amp; more&lt;/li&gt;&lt;li&gt;Helps develop gross motor skills, fine motor skills &amp;amp; more!&lt;/li&gt;&lt;/ul&gt;','','Laugh &amp; Learn Crawl Around Car','',''),(45,2,'Laugh &amp; Learn Crawl Around Car','&lt;p&gt;The Fisher-Price Laugh Learn Crawl Around Car puts baby in the driver seat of a fun-filled stationary vehicle with all-around learning and play. The interactive lights and sounds dashboard keeps baby busy with a light-up baby “GPS”, horn to honk, gears to shift, and more. With over 75 sung songs, tunes and phrases, and three modes of play, there’s plenty of fuel for learning adventures and fun!&lt;/p&gt;&lt;ul&gt;&lt;li&gt;75+ sing-along songs, tunes &amp;amp; phrases&lt;/li&gt;&lt;li&gt;Interactive dashboard with lights, sounds &amp;amp; busy activities&lt;/li&gt;&lt;li&gt;Light-up baby “GPS”&lt;/li&gt;&lt;li&gt;3 modes of play: Learning, Music &amp;amp; Imagination&lt;/li&gt;&lt;li&gt;Stationary car encourages baby to sit up, crawl, pull up, stand &amp;amp; move all around for play inside &amp;amp; out&lt;/li&gt;&lt;li&gt;Built-in ramp for ball play (includes 3 balls)&lt;/li&gt;&lt;li&gt;Shapes &amp;amp; colors sorting door (includes 3 shape blocks)&lt;/li&gt;&lt;li&gt;Introduces baby to letters, numbers, colors, first words, greetings &amp;amp; more&lt;/li&gt;&lt;li&gt;Helps develop gross motor skills, fine motor skills &amp;amp; more!&lt;/li&gt;&lt;/ul&gt;','','Laugh &amp; Learn Crawl Around Car','',''),(40,1,'Imaginext DC Super Friends','&lt;p class=&quot;intro&quot;&gt;	Young Super Heroes will have TWICE the fun with a robot and a tank in one! This crime-fighting robot transforms to a cool “armored” tank and back again just by turning the disk on the Batbot or using the Remote Control. Besides an awesome transformation, kids can continue the action by activating the claw or launching disks at their favorite Gotham City villains! (Villains sold separately.) There are lights, over 100 sound effects and phrases and two different modes (check your systems or receive your mission) to help create new and different adventures every time kids play!&lt;/p&gt;','','Imaginext DC Super Friends','',''),(42,1,'Imaginext DC Super Friends RC ','&lt;p&gt;Young Super Heroes will have TWICE the fun with a robot and a tank in one! This crime-fighting robot transforms to a cool “armored” tank and back again just by turning the disk on the &lt;i&gt;Batbot&lt;/i&gt; or using the Remote Control. Besides an awesome transformation, kids can continue the action by activating the claw or launching disks at their favorite &lt;strong&gt;Gotham City &lt;/strong&gt;villains!  (Villains sold separately.) There are lights, over 100 sound effects and phrases and two different modes (check your systems or receive your mission) to help create new and different adventures every time kids play! &lt;br&gt;&lt;br&gt;  &lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt; • It’s a robot and a tank in one—with over 100 sound effects and phrases!&lt;br&gt; • &lt;i&gt;Batbot&lt;/i&gt; eyes and vents light up!&lt;br&gt; • Includes Transforming &lt;i&gt;Batbot&lt;/i&gt;, Remote Control, &lt;strong&gt;Batman™&lt;/strong&gt; figure and  four disks for launcher&lt;br&gt; • Requires 6AA batteries for &lt;i&gt;Batbot&lt;/i&gt; and 2AAA batteries for Remote Control&lt;br&gt; • &lt;strong&gt;Batman™ &lt;/strong&gt;figure fits in cockpit (in tank or robot)&lt;br&gt; • Add to the fun with more Imaginext® DC Super Friends™ play sets, vehicles and figures! &lt;br&gt; (Each sold separately and subject to availability.)&lt;br&gt;&lt;br&gt;&lt;/p&gt;','','Imaginext DC Super Friends RC ','',''),(42,2,'Imaginext DC Super Friends RC ','&lt;p&gt;Young Super Heroes will have TWICE the fun with a robot and a tank in one! This crime-fighting robot transforms to a cool “armored” tank and back again just by turning the disk on the &lt;i&gt;Batbot&lt;/i&gt; or using the Remote Control. Besides an awesome transformation, kids can continue the action by activating the claw or launching disks at their favorite &lt;strong&gt;Gotham City &lt;/strong&gt;villains!  (Villains sold separately.) There are lights, over 100 sound effects and phrases and two different modes (check your systems or receive your mission) to help create new and different adventures every time kids play! &lt;br&gt;&lt;br&gt;  &lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt; • It’s a robot and a tank in one—with over 100 sound effects and phrases!&lt;br&gt; • &lt;i&gt;Batbot&lt;/i&gt; eyes and vents light up!&lt;br&gt; • Includes Transforming &lt;i&gt;Batbot&lt;/i&gt;, Remote Control, &lt;strong&gt;Batman™&lt;/strong&gt; figure and  four disks for launcher&lt;br&gt; • Requires 6AA batteries for &lt;i&gt;Batbot&lt;/i&gt; and 2AAA batteries for Remote Control&lt;br&gt; • &lt;strong&gt;Batman™ &lt;/strong&gt;figure fits in cockpit (in tank or robot)&lt;br&gt; • Add to the fun with more Imaginext® DC Super Friends™ play sets, vehicles and figures! &lt;br&gt; (Each sold separately and subject to availability.)&lt;br&gt;&lt;br&gt;&lt;/p&gt;','','Imaginext DC Super Friends RC ','',''),(41,2,'Imaginext Pirate Ship','&lt;p&gt;Ahoy there! Think twice before you board this Pirate Ship, because the skeleton pirates might make you walk the plank! Roll the ship along to see it “rock” as if it were traveling through rough waters. Turn figures on disks to release sails, raise the anchor or even extend the gangplank! Push the button to reveal the triple cannon launcher and fire at other ships!  So much high-seas action and adventure await—including a mutinous “duel” between the skeleton pirates! Just be sure to bring your imaginations, mateys!&lt;br&gt;&lt;br&gt;    &lt;strong&gt;Features&lt;/strong&gt;&lt;br&gt;  • Turn figures on different disks to release sails, raise the anchor or extend the gangplank! &lt;br&gt;  • Triple cannon launches 3 projectiles at once!&lt;br&gt;  • Roll ship along for “rocking” motion&lt;br&gt;  • Place figures on platform and push disk back and forth to see them “duel”!&lt;br&gt;  • Swords fit in figures’ hands&lt;br&gt;  • Includes 2 skeleton pirate figures, 2 swords and cannon projectiles&lt;br&gt;&lt;br&gt;    &lt;/p&gt;','','Imaginext Pirate Ship','',''),(43,2,'Zebronics Colt 3 Wired Gaming Headset','&lt;div&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Intel Core 2 Duo processor&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Powered by an Intel Core 2 Duo processor at speeds up to 2.16GHz, the new MacBook is the fastest ever.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;1GB memory, larger hard drives&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		The new MacBook now comes with 1GB of memory standard and larger hard drives for the entire line perfect for running more of your favorite applications and storing growing media collections.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Sleek, 1.08-inch-thin design&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		MacBook makes it easy to hit the road thanks to its tough polycarbonate case, built-in wireless technologies, and innovative MagSafe Power Adapter that releases automatically if someone accidentally trips on the cord.&lt;/p&gt;\r\n	&lt;p&gt;\r\n		&lt;b&gt;Built-in iSight camera&lt;/b&gt;&lt;/p&gt;\r\n	&lt;p&gt;\r\n		Right out of the box, you can have a video chat with friends or family,2 record a video at your desk, or take fun pictures with Photo Booth&lt;/p&gt;\r\n&lt;/div&gt;\r\n','','Zebronics Colt 3 Wired Gaming Headset','',''),(44,1,'Peek-a-Blocks IncrediBlock','&lt;p&gt;&lt;strong&gt;IncrediBlock&lt;/strong&gt; is Fisher-Price’s great BIG block of fascinating discoveries, with music, motion, lights, and five sides of busy play! Plus, eight special Peek-a-Blocks™!&lt;br&gt;&lt;br&gt;&lt;strong&gt;5 sides of busy play!&lt;/strong&gt;&lt;br&gt;&lt;br&gt;&lt;strong&gt;1. Spin &amp;amp; Learn&lt;/strong&gt;: The IncrediBlock top is where the action is — and the learning! Place any of the eight special Peek-a-Blocks™ in the center to bring the IncrediBlock to life. Hear words, sounds and songs to discover what’s inside each Peek-a-Block! Lots of other activities for baby to bat, flip, tap and spin, too.&lt;br&gt;&lt;br&gt;&lt;strong&gt;2. Plug &amp;amp; Play&lt;/strong&gt;: IncrediBlock’s bright, bold patterns, charming images and a shiny mirror are sure to stimulate baby’s senses!&lt;br&gt;&lt;br&gt;&lt;strong&gt;3. Sort &amp;amp; Store&lt;/strong&gt;: The simple action of placing Peek-a-Blocks through the holes of the IncrediBlock and watching them disappear is sure to entertain and enlighten your curious baby! Big drawer can hold up to 30 Peek-a-Blocks.&lt;br&gt;&lt;br&gt;&lt;strong&gt;4. Drop &amp;amp; Tumble&lt;/strong&gt;: With distinctive sounds and fun movement, each Peek-a-Block offers new surprises while tumbling down the IncrediBlock. Baby will love dropping them in over and over, anticipating that something fun is going to happen!&lt;br&gt;&lt;br&gt;&lt;strong&gt;5. Stack &amp;amp; Spill&lt;/strong&gt;: Baby will love learning to stack blocks in, one after another. Watch fine motor skills steadily improve as she uses the IncrediBlock, along with eye-hand coordination, as blocks are grasped and stacked.&lt;/p&gt;','','Peek-a-Blocks IncrediBlock','',''),(44,2,'Peek-a-Blocks IncrediBlock','&lt;p&gt;&lt;strong&gt;IncrediBlock&lt;/strong&gt; is Fisher-Price’s great BIG block of fascinating discoveries, with music, motion, lights, and five sides of busy play! Plus, eight special Peek-a-Blocks™!&lt;br&gt;&lt;br&gt;&lt;strong&gt;5 sides of busy play!&lt;/strong&gt;&lt;br&gt;&lt;br&gt;&lt;strong&gt;1. Spin &amp;amp; Learn&lt;/strong&gt;: The IncrediBlock top is where the action is — and the learning! Place any of the eight special Peek-a-Blocks™ in the center to bring the IncrediBlock to life. Hear words, sounds and songs to discover what’s inside each Peek-a-Block! Lots of other activities for baby to bat, flip, tap and spin, too.&lt;br&gt;&lt;br&gt;&lt;strong&gt;2. Plug &amp;amp; Play&lt;/strong&gt;: IncrediBlock’s bright, bold patterns, charming images and a shiny mirror are sure to stimulate baby’s senses!&lt;br&gt;&lt;br&gt;&lt;strong&gt;3. Sort &amp;amp; Store&lt;/strong&gt;: The simple action of placing Peek-a-Blocks through the holes of the IncrediBlock and watching them disappear is sure to entertain and enlighten your curious baby! Big drawer can hold up to 30 Peek-a-Blocks.&lt;br&gt;&lt;br&gt;&lt;strong&gt;4. Drop &amp;amp; Tumble&lt;/strong&gt;: With distinctive sounds and fun movement, each Peek-a-Block offers new surprises while tumbling down the IncrediBlock. Baby will love dropping them in over and over, anticipating that something fun is going to happen!&lt;br&gt;&lt;br&gt;&lt;strong&gt;5. Stack &amp;amp; Spill&lt;/strong&gt;: Baby will love learning to stack blocks in, one after another. Watch fine motor skills steadily improve as she uses the IncrediBlock, along with eye-hand coordination, as blocks are grasped and stacked.&lt;/p&gt;','','Peek-a-Blocks IncrediBlock','',''),(50,2,'Layla Tabbard Side Skater Dress','&lt;p class=&quot;intro&quot;&gt;We hope you are satisfied with all of your purchases but if you ever need to return an item, you can do so within 14 days from the date your parcel was dispatched.Please note, we cannot offer refunds on pierced jewellery or on swimwear if the hygiene seal is not in place or has been broken.Great news! We now offer a FREE Collect+ returns service via over 5,500 local stores nationwide.Click here to view our full Returns Policy.&lt;/p&gt;','Watchs Black','Layla Tabbard Side Skater Dress','Watchs Black','Watchs Black'),(46,2,'Power Wheels Disney Minnie Mouse ','&lt;p&gt;Sweet Minnie Mouse styling &amp;amp; Volkswagen® driving fun! Battery-powered fun for the littlest drivers! Tot-friendly design features a driver’s door that really opens and closes, and foot pedal operation for easy stop and go. Drives on hard surfaces at a safe but exciting 2.5 mph.&lt;/p&gt;&lt;ul&gt;&lt;li&gt;Driver’s door opens &amp;amp; closes&lt;/li&gt;&lt;li&gt;Foot pedal operation for easy stop &amp;amp; go&lt;/li&gt;&lt;li&gt;2.5 mph (max.) forward &amp;amp; reverse&lt;/li&gt;&lt;li&gt;Drives on hard surfaces&lt;/li&gt;&lt;li&gt;Power Lock® Brake System&lt;/li&gt;&lt;/ul&gt;','','Power Wheels Disney Minnie Mouse ','',''),(33,2,'Home aliqua aiusmod tempor incididu','&lt;div&gt;\r\n	Imagine the advantages of going big without slowing down. The big 19&quot; 941BW monitor combines wide aspect ratio with fast pixel response time, for bigger images, more room to work and crisp motion. In addition, the exclusive MagicBright 2, MagicColor and MagicTune technologies help deliver the ideal image in every situation, while sleek, narrow bezels and adjustable stands deliver style just the way you want it. With the Samsung 941BW widescreen analog/digital LCD monitor, it\'s not hard to imagine.&lt;/div&gt;\r\n','','Home aliqua aiusmod tempor incididu','',''),(40,2,'Imaginext DC Super Friends','&lt;p class=&quot;intro&quot;&gt;	Young Super Heroes will have TWICE the fun with a robot and a tank in one! This crime-fighting robot transforms to a cool “armored” tank and back again just by turning the disk on the Batbot or using the Remote Control. Besides an awesome transformation, kids can continue the action by activating the claw or launching disks at their favorite Gotham City villains! (Villains sold separately.) There are lights, over 100 sound effects and phrases and two different modes (check your systems or receive your mission) to help create new and different adventures every time kids play!&lt;/p&gt;','','Imaginext DC Super Friends','',''),(31,2,'iPhone 6 Plus Space Gray','&lt;div class=&quot;cpt_product_description &quot;&gt;\r\n	&lt;div&gt;\r\n		Engineered with pro-level features and performance, the 12.3-effective-megapixel D300 combines brand new technologies with advanced features inherited from Nikon\'s newly announced D3 professional digital SLR camera to offer serious photographers remarkable performance combined with agility.&lt;br&gt;\r\n		&lt;br&gt;\r\n		Similar to the D3, the D300 features Nikon\'s exclusive EXPEED Image Processing System that is central to driving the speed and processing power needed for many of the camera\'s new features. The D300 features a new 51-point autofocus system with Nikon\'s 3D Focus Tracking feature and two new LiveView shooting modes that allow users to frame a photograph using the camera\'s high-resolution LCD monitor. The D300 shares a similar Scene Recognition System as is found in the D3; it promises to greatly enhance the accuracy of autofocus, autoexposure, and auto white balance by recognizing the subject or scene being photographed and applying this information to the calculations for the three functions.&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 reacts with lightning speed, powering up in a mere 0.13 seconds and shooting with an imperceptible 45-millisecond shutter release lag time. The D300 is capable of shooting at a rapid six frames per second and can go as fast as eight frames per second when using the optional MB-D10 multi-power battery pack. In continuous bursts, the D300 can shoot up to 100 shots at full 12.3-megapixel resolution. (NORMAL-LARGE image setting, using a SanDisk Extreme IV 1GB CompactFlash card.)&lt;br&gt;\r\n		&lt;br&gt;\r\n		The D300 incorporates a range of innovative technologies and features that will significantly improve the accuracy, control, and performance photographers can get from their equipment. Its new Scene Recognition System advances the use of Nikon\'s acclaimed 1,005-segment sensor to recognize colors and light patterns that help the camera determine the subject and the type of scene being photographed before a picture is taken. This information is used to improve the accuracy of autofocus, autoexposure, and auto white balance functions in the D300. For example, the camera can track moving subjects better and by identifying them, it can also automatically select focus points faster and with greater accuracy. It can also analyze highlights and more accurately determine exposure, as well as infer light sources to deliver more accurate white balance detection.&lt;/div&gt;\r\n&lt;/div&gt;\r\n&lt;!-- cpt_container_end --&gt;','','iPhone 6 Plus Space Gray','',''),(28,1,'Hot 2015 Original New Ultra-thin Women','&lt;p&gt;\r\n	HTC Touch - in High Definition. Watch music videos and streaming content in awe-inspiring high definition clarity for a mobile experience you never thought possible. Seductively sleek, the HTC Touch HD provides the next generation of mobile functionality, all at a simple touch. Fully integrated with Windows Mobile Professional 6.1, ultrafast 3.5G, GPS, 5MP camera, plus lots more - all delivered on a breathtakingly crisp 3.8&quot; WVGA touchscreen - you can take control of your mobile world with the HTC Touch HD.&lt;/p&gt;\r\n&lt;p&gt;\r\n	&lt;strong&gt;Features&lt;/strong&gt;&lt;/p&gt;\r\n&lt;ul&gt;\r\n	&lt;li&gt;\r\n		Processor Qualcomm® MSM 7201A™ 528 MHz&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Windows Mobile® 6.1 Professional Operating System&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Memory: 512 MB ROM, 288 MB RAM&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Dimensions: 115 mm x 62.8 mm x 12 mm / 146.4 grams&lt;/li&gt;\r\n	&lt;li&gt;\r\n		3.8-inch TFT-LCD flat touch-sensitive screen with 480 x 800 WVGA resolution&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HSDPA/WCDMA: Europe/Asia: 900/2100 MHz; Up to 2 Mbps up-link and 7.2 Mbps down-link speeds&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Quad-band GSM/GPRS/EDGE: Europe/Asia: 850/900/1800/1900 MHz (Band frequency, HSUPA availability, and data speed are operator dependent.)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Device Control via HTC TouchFLO™ 3D &amp;amp; Touch-sensitive front panel buttons&lt;/li&gt;\r\n	&lt;li&gt;\r\n		GPS and A-GPS ready&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Bluetooth® 2.0 with Enhanced Data Rate and A2DP for wireless stereo headsets&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Wi-Fi®: IEEE 802.11 b/g&lt;/li&gt;\r\n	&lt;li&gt;\r\n		HTC ExtUSB™ (11-pin mini-USB 2.0)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		5 megapixel color camera with auto focus&lt;/li&gt;\r\n	&lt;li&gt;\r\n		VGA CMOS color camera&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Built-in 3.5 mm audio jack, microphone, speaker, and FM radio&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Ring tone formats: AAC, AAC+, eAAC+, AMR-NB, AMR-WB, QCP, MP3, WMA, WAV&lt;/li&gt;\r\n	&lt;li&gt;\r\n		40 polyphonic and standard MIDI format 0 and 1 (SMF)/SP MIDI&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Rechargeable Lithium-ion or Lithium-ion polymer 1350 mAh battery&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Expansion Slot: microSD™ memory card (SD 2.0 compatible)&lt;/li&gt;\r\n	&lt;li&gt;\r\n		AC Adapter Voltage range/frequency: 100 ~ 240V AC, 50/60 Hz DC output: 5V and 1A&lt;/li&gt;\r\n	&lt;li&gt;\r\n		Special Features: FM Radio, G-Sensor&lt;/li&gt;\r\n&lt;/ul&gt;\r\n','','Hot 2015 Original New Ultra-thin Women','','');
/*!40000 ALTER TABLE `oc_product_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_discount`
--

DROP TABLE IF EXISTS `oc_product_discount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_discount` (
  `product_discount_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `quantity` int(4) NOT NULL DEFAULT '0',
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_discount_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=493 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_discount`
--

LOCK TABLES `oc_product_discount` WRITE;
/*!40000 ALTER TABLE `oc_product_discount` DISABLE KEYS */;
INSERT INTO `oc_product_discount` VALUES (492,42,1,30,1,66.0000,'0000-00-00','0000-00-00'),(491,42,1,20,1,77.0000,'0000-00-00','0000-00-00'),(490,42,1,10,1,88.0000,'0000-00-00','0000-00-00'),(489,47,1,1,1,20.0000,'2014-12-25','2016-06-15');
/*!40000 ALTER TABLE `oc_product_discount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_filter`
--

DROP TABLE IF EXISTS `oc_product_filter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_filter` (
  `product_id` int(11) NOT NULL,
  `filter_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`filter_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_filter`
--

LOCK TABLES `oc_product_filter` WRITE;
/*!40000 ALTER TABLE `oc_product_filter` DISABLE KEYS */;
INSERT INTO `oc_product_filter` VALUES (40,2),(42,2),(42,4);
/*!40000 ALTER TABLE `oc_product_filter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_image`
--

DROP TABLE IF EXISTS `oc_product_image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_image` (
  `product_image_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `sort_order` int(3) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_image_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2776 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_image`
--

LOCK TABLES `oc_product_image` WRITE;
/*!40000 ALTER TABLE `oc_product_image` DISABLE KEYS */;
INSERT INTO `oc_product_image` VALUES (2717,30,'catalog/demo/product/product1.jpg',0),(2715,28,'catalog/demo/product/product6.jpg',0),(2757,41,'catalog/demo/product/product10.jpg',0),(2771,36,'catalog/demo/product/product8.jpg',0),(2770,36,'catalog/demo/product/product11.jpg',0),(2767,34,'catalog/demo/product/product8.jpg',0),(2766,34,'catalog/demo/product/product9.jpg',0),(2763,32,'catalog/demo/product/product12.jpg',0),(2762,32,'catalog/demo/product/product13.jpg',0),(2761,32,'catalog/demo/product/product15.jpg',0),(2750,44,'catalog/demo/product/product13.jpg',0),(2749,44,'catalog/demo/product/product16.jpg',0),(2738,45,'catalog/demo/product/product16.jpg',0),(2736,31,'catalog/demo/product/product2.jpg',0),(2735,31,'catalog/demo/product/product1.jpg',0),(2732,29,'catalog/demo/product/product3.jpg',0),(2742,46,'catalog/demo/product/product14.jpg',0),(2741,46,'catalog/demo/product/product15.jpg',0),(2747,48,'catalog/demo/product/product13.jpg',0),(2746,48,'catalog/demo/product/product16.jpg',0),(2775,40,'catalog/demo/product/product10.jpg',0),(2774,40,'catalog/demo/product/product9.jpg',0),(2716,30,'catalog/demo/product/product6.jpg',0),(2714,28,'catalog/demo/product/product5.jpg',0),(2756,41,'catalog/demo/product/product12.jpg',0),(2773,40,'catalog/demo/product/product7.jpg',0),(2772,40,'catalog/demo/product/product8.jpg',0),(2745,48,'catalog/demo/product/product17.jpg',0),(2769,36,'catalog/demo/product/product12.jpg',0),(2768,36,'catalog/demo/product/product10.jpg',0),(2765,34,'catalog/demo/product/product12.jpg',0),(2764,34,'catalog/demo/product/product11.jpg',0),(2760,32,'catalog/demo/product/product14.jpg',0),(2759,32,'catalog/demo/product/product16.jpg',0),(2758,32,'catalog/demo/product/product11.jpg',0),(2748,44,'catalog/demo/product/product15.jpg',0),(2737,45,'catalog/demo/product/product14.jpg',0),(2734,31,'catalog/demo/product/product4.jpg',0),(2733,31,'catalog/demo/product/product3.jpg',0),(2731,29,'catalog/demo/product/product1.jpg',0),(2740,46,'catalog/demo/product/product17.jpg',0),(2739,46,'catalog/demo/product/product18.jpg',0),(2730,49,'catalog/demo/product/product19.jpg',0),(2729,49,'catalog/demo/product/product18.jpg',0),(2728,49,'catalog/demo/product/product17.jpg',0),(2727,49,'catalog/demo/product/product14.jpg',0),(2726,49,'catalog/demo/product/product13.jpg',0),(2725,49,'catalog/demo/product/product20.jpg',0),(2744,47,'catalog/demo/product/product19.jpg',0),(2743,47,'catalog/demo/product/product17.jpg',0),(2755,42,'catalog/demo/product/product7.jpg',0),(2754,42,'catalog/demo/product/product10.jpg',0),(2753,42,'catalog/demo/product/product11.jpg',0),(2752,42,'catalog/demo/product/product8.jpg',0),(2751,42,'catalog/demo/product/product9.jpg',0),(2724,50,'catalog/demo/product/product19.jpg',0);
/*!40000 ALTER TABLE `oc_product_image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option`
--

DROP TABLE IF EXISTS `oc_product_option`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option` (
  `product_option_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `value` text NOT NULL,
  `required` tinyint(1) NOT NULL,
  PRIMARY KEY (`product_option_id`)
) ENGINE=MyISAM AUTO_INCREMENT=227 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option`
--

LOCK TABLES `oc_product_option` WRITE;
/*!40000 ALTER TABLE `oc_product_option` DISABLE KEYS */;
INSERT INTO `oc_product_option` VALUES (224,35,11,'',1),(225,47,12,'2011-04-22',1),(222,42,7,'',1),(226,30,5,'',1),(220,42,10,'2011-02-20 22:25',1),(217,42,5,'',1),(223,42,2,'',1),(209,42,6,'',1),(208,42,4,'test',1),(218,42,1,'',1),(219,42,8,'2011-02-20',1),(221,42,9,'22:25',1);
/*!40000 ALTER TABLE `oc_product_option` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_option_value`
--

DROP TABLE IF EXISTS `oc_product_option_value`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_option_value` (
  `product_option_value_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_option_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `option_id` int(11) NOT NULL,
  `option_value_id` int(11) NOT NULL,
  `quantity` int(3) NOT NULL,
  `subtract` tinyint(1) NOT NULL,
  `price` decimal(15,4) NOT NULL,
  `price_prefix` varchar(1) NOT NULL,
  `points` int(8) NOT NULL,
  `points_prefix` varchar(1) NOT NULL,
  `weight` decimal(15,8) NOT NULL,
  `weight_prefix` varchar(1) NOT NULL,
  PRIMARY KEY (`product_option_value_id`)
) ENGINE=MyISAM AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_option_value`
--

LOCK TABLES `oc_product_option_value` WRITE;
/*!40000 ALTER TABLE `oc_product_option_value` DISABLE KEYS */;
INSERT INTO `oc_product_option_value` VALUES (1,217,42,5,41,100,0,1.0000,'+',0,'+',1.00000000,'+'),(2,217,42,5,42,200,1,2.0000,'+',0,'+',2.00000000,'+'),(8,223,42,2,23,48,1,10.0000,'+',0,'+',10.00000000,'+'),(10,223,42,2,44,2696,1,30.0000,'+',0,'+',30.00000000,'+'),(13,224,35,11,47,10,1,10.0000,'+',0,'+',0.00000000,'+'),(14,224,35,11,48,15,1,15.0000,'+',0,'+',0.00000000,'+'),(15,226,30,5,39,2,1,0.0000,'+',0,'+',0.00000000,'+'),(16,226,30,5,40,5,1,0.0000,'+',0,'+',0.00000000,'+'),(9,223,42,2,24,194,1,20.0000,'+',0,'+',20.00000000,'+'),(11,223,42,2,45,3998,1,40.0000,'+',0,'+',40.00000000,'+'),(7,218,42,1,43,300,1,30.0000,'+',3,'+',30.00000000,'+'),(12,224,35,11,46,0,1,5.0000,'+',0,'+',0.00000000,'+'),(6,218,42,1,31,146,1,20.0000,'+',2,'-',20.00000000,'+'),(5,218,42,1,32,96,1,10.0000,'+',1,'+',10.00000000,'+'),(3,217,42,5,40,300,0,3.0000,'+',0,'+',3.00000000,'+'),(4,217,42,5,39,92,1,4.0000,'+',0,'+',4.00000000,'+');
/*!40000 ALTER TABLE `oc_product_option_value` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_recurring`
--

DROP TABLE IF EXISTS `oc_product_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_recurring` (
  `product_id` int(11) NOT NULL,
  `recurring_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`recurring_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_recurring`
--

LOCK TABLES `oc_product_recurring` WRITE;
/*!40000 ALTER TABLE `oc_product_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_related`
--

DROP TABLE IF EXISTS `oc_product_related`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_related` (
  `product_id` int(11) NOT NULL,
  `related_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`related_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_related`
--

LOCK TABLES `oc_product_related` WRITE;
/*!40000 ALTER TABLE `oc_product_related` DISABLE KEYS */;
INSERT INTO `oc_product_related` VALUES (28,42),(34,42),(40,42),(41,42),(42,28),(42,34),(42,40),(42,41),(42,50),(50,42);
/*!40000 ALTER TABLE `oc_product_related` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_reward`
--

DROP TABLE IF EXISTS `oc_product_reward`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_reward` (
  `product_reward_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL DEFAULT '0',
  `customer_group_id` int(11) NOT NULL DEFAULT '0',
  `points` int(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_reward_id`)
) ENGINE=MyISAM AUTO_INCREMENT=621 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_reward`
--

LOCK TABLES `oc_product_reward` WRITE;
/*!40000 ALTER TABLE `oc_product_reward` DISABLE KEYS */;
INSERT INTO `oc_product_reward` VALUES (620,42,1,100),(618,47,1,300),(613,28,1,400),(609,43,1,600),(614,30,1,200),(619,44,1,700),(617,45,1,800),(616,49,1,1000);
/*!40000 ALTER TABLE `oc_product_reward` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_special`
--

DROP TABLE IF EXISTS `oc_product_special`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_special` (
  `product_special_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  `price` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `date_start` date NOT NULL DEFAULT '0000-00-00',
  `date_end` date NOT NULL DEFAULT '0000-00-00',
  PRIMARY KEY (`product_special_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=491 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_special`
--

LOCK TABLES `oc_product_special` WRITE;
/*!40000 ALTER TABLE `oc_product_special` DISABLE KEYS */;
INSERT INTO `oc_product_special` VALUES (490,33,1,1,100.0000,'2015-04-21','2020-04-21'),(489,40,1,1,30.0000,'2014-12-25','2020-11-10'),(486,50,1,1,30.0000,'2014-12-25','2020-11-10'),(488,41,1,0,20.0000,'2010-02-02','2019-11-20'),(487,29,1,0,20.0000,'2009-05-04','2019-11-28');
/*!40000 ALTER TABLE `oc_product_special` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_category`
--

DROP TABLE IF EXISTS `oc_product_to_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_category` (
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`category_id`),
  KEY `category_id` (`category_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_category`
--

LOCK TABLES `oc_product_to_category` WRITE;
/*!40000 ALTER TABLE `oc_product_to_category` DISABLE KEYS */;
INSERT INTO `oc_product_to_category` VALUES (28,20),(28,24),(28,33),(28,46),(28,63),(28,64),(28,65),(28,68),(29,17),(29,20),(29,24),(29,28),(29,36),(29,60),(29,62),(30,20),(30,33),(30,46),(30,57),(30,61),(30,64),(30,65),(30,68),(31,33),(31,46),(31,64),(31,65),(31,68),(32,34),(32,46),(32,64),(32,65),(32,67),(32,68),(33,20),(33,28),(33,36),(33,46),(33,60),(33,62),(34,20),(34,27),(34,34),(34,46),(34,57),(34,59),(34,64),(34,68),(35,20),(36,33),(36,34),(36,63),(40,17),(40,20),(40,24),(40,27),(40,33),(40,45),(40,46),(40,57),(40,60),(41,18),(41,27),(41,33),(41,46),(41,60),(42,20),(42,25),(42,26),(42,28),(42,33),(42,45),(42,46),(42,60),(43,18),(43,20),(43,26),(43,27),(43,33),(43,59),(44,18),(44,20),(44,27),(44,28),(44,36),(44,45),(44,60),(44,62),(45,18),(45,46),(45,64),(45,65),(45,66),(45,68),(46,18),(46,20),(46,46),(46,64),(46,65),(46,66),(46,68),(47,17),(47,18),(47,20),(47,28),(47,33),(47,36),(47,57),(47,60),(47,62),(47,63),(48,20),(48,24),(48,27),(48,28),(48,34),(48,36),(48,46),(48,60),(48,62),(49,26),(49,33),(49,57),(49,64),(49,65),(49,66),(49,67),(49,68),(50,20),(50,24),(50,33),(50,64),(50,65),(50,66),(50,68);
/*!40000 ALTER TABLE `oc_product_to_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_download`
--

DROP TABLE IF EXISTS `oc_product_to_download`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_download` (
  `product_id` int(11) NOT NULL,
  `download_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`download_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_download`
--

LOCK TABLES `oc_product_to_download` WRITE;
/*!40000 ALTER TABLE `oc_product_to_download` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_product_to_download` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_layout`
--

DROP TABLE IF EXISTS `oc_product_to_layout`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_layout` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `layout_id` int(11) NOT NULL,
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_layout`
--

LOCK TABLES `oc_product_to_layout` WRITE;
/*!40000 ALTER TABLE `oc_product_to_layout` DISABLE KEYS */;
INSERT INTO `oc_product_to_layout` VALUES (42,0,0),(47,0,0),(40,0,0),(50,0,0),(31,0,0),(36,0,0),(28,0,0),(34,0,0),(30,0,0),(49,0,0),(43,0,0),(45,0,0),(29,0,0),(33,0,0),(41,0,0),(44,0,0),(46,0,0),(48,0,0),(35,0,0),(32,0,0);
/*!40000 ALTER TABLE `oc_product_to_layout` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_product_to_store`
--

DROP TABLE IF EXISTS `oc_product_to_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_product_to_store` (
  `product_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`product_id`,`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_product_to_store`
--

LOCK TABLES `oc_product_to_store` WRITE;
/*!40000 ALTER TABLE `oc_product_to_store` DISABLE KEYS */;
INSERT INTO `oc_product_to_store` VALUES (28,0),(29,0),(30,0),(31,0),(32,0),(33,0),(34,0),(35,0),(36,0),(40,0),(41,0),(42,0),(43,0),(44,0),(45,0),(46,0),(47,0),(48,0),(49,0),(50,0);
/*!40000 ALTER TABLE `oc_product_to_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring`
--

DROP TABLE IF EXISTS `oc_recurring`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring` (
  `recurring_id` int(11) NOT NULL AUTO_INCREMENT,
  `price` decimal(10,4) NOT NULL,
  `frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `duration` int(10) unsigned NOT NULL,
  `cycle` int(10) unsigned NOT NULL,
  `trial_status` tinyint(4) NOT NULL,
  `trial_price` decimal(10,4) NOT NULL,
  `trial_frequency` enum('day','week','semi_month','month','year') NOT NULL,
  `trial_duration` int(10) unsigned NOT NULL,
  `trial_cycle` int(10) unsigned NOT NULL,
  `status` tinyint(4) NOT NULL,
  `sort_order` int(11) NOT NULL,
  PRIMARY KEY (`recurring_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring`
--

LOCK TABLES `oc_recurring` WRITE;
/*!40000 ALTER TABLE `oc_recurring` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_recurring_description`
--

DROP TABLE IF EXISTS `oc_recurring_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_recurring_description` (
  `recurring_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`recurring_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_recurring_description`
--

LOCK TABLES `oc_recurring_description` WRITE;
/*!40000 ALTER TABLE `oc_recurring_description` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_recurring_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return`
--

DROP TABLE IF EXISTS `oc_return`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return` (
  `return_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `telephone` varchar(32) NOT NULL,
  `product` varchar(255) NOT NULL,
  `model` varchar(64) NOT NULL,
  `quantity` int(4) NOT NULL,
  `opened` tinyint(1) NOT NULL,
  `return_reason_id` int(11) NOT NULL,
  `return_action_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `comment` text,
  `date_ordered` date NOT NULL DEFAULT '0000-00-00',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`return_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return`
--

LOCK TABLES `oc_return` WRITE;
/*!40000 ALTER TABLE `oc_return` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_action`
--

DROP TABLE IF EXISTS `oc_return_action`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_action` (
  `return_action_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(64) NOT NULL,
  PRIMARY KEY (`return_action_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_action`
--

LOCK TABLES `oc_return_action` WRITE;
/*!40000 ALTER TABLE `oc_return_action` DISABLE KEYS */;
INSERT INTO `oc_return_action` VALUES (1,1,'Refunded'),(2,1,'Credit Issued'),(3,1,'Replacement Sent'),(1,2,'Refunded'),(2,2,'Credit Issued'),(3,2,'Replacement Sent');
/*!40000 ALTER TABLE `oc_return_action` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_history`
--

DROP TABLE IF EXISTS `oc_return_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_history` (
  `return_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `return_id` int(11) NOT NULL,
  `return_status_id` int(11) NOT NULL,
  `notify` tinyint(1) NOT NULL,
  `comment` text NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`return_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_history`
--

LOCK TABLES `oc_return_history` WRITE;
/*!40000 ALTER TABLE `oc_return_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_return_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_reason`
--

DROP TABLE IF EXISTS `oc_return_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_reason` (
  `return_reason_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(128) NOT NULL,
  PRIMARY KEY (`return_reason_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_reason`
--

LOCK TABLES `oc_return_reason` WRITE;
/*!40000 ALTER TABLE `oc_return_reason` DISABLE KEYS */;
INSERT INTO `oc_return_reason` VALUES (1,1,'Dead On Arrival'),(2,1,'Received Wrong Item'),(3,1,'Order Error'),(4,1,'Faulty, please supply details'),(5,1,'Other, please supply details'),(1,2,'Dead On Arrival'),(2,2,'Received Wrong Item'),(3,2,'Order Error'),(4,2,'Faulty, please supply details'),(5,2,'Other, please supply details');
/*!40000 ALTER TABLE `oc_return_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_return_status`
--

DROP TABLE IF EXISTS `oc_return_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_return_status` (
  `return_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`return_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_return_status`
--

LOCK TABLES `oc_return_status` WRITE;
/*!40000 ALTER TABLE `oc_return_status` DISABLE KEYS */;
INSERT INTO `oc_return_status` VALUES (1,1,'Pending'),(3,1,'Complete'),(2,1,'Awaiting Products'),(1,2,'Pending'),(3,2,'Complete'),(2,2,'Awaiting Products');
/*!40000 ALTER TABLE `oc_return_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_review`
--

DROP TABLE IF EXISTS `oc_review`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_review` (
  `review_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `author` varchar(64) NOT NULL,
  `text` text NOT NULL,
  `rating` int(1) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`review_id`),
  KEY `product_id` (`product_id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_review`
--

LOCK TABLES `oc_review` WRITE;
/*!40000 ALTER TABLE `oc_review` DISABLE KEYS */;
INSERT INTO `oc_review` VALUES (1,48,0,'test home','HTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\nHTML is not translated!\r\n',5,1,'2015-01-27 16:05:56','2015-01-27 16:06:34'),(3,31,0,'demo','good good good good good good good good good good ',4,1,'2015-04-17 14:28:32','0000-00-00 00:00:00'),(4,42,0,'demo','good good good good good good good good good good good good ',3,1,'2015-04-17 14:29:56','0000-00-00 00:00:00'),(5,30,0,'demo','good good good good good good good good good good good good ',5,1,'2015-04-17 14:31:13','0000-00-00 00:00:00'),(6,40,0,'demo','good good good good good good good good good good good good ',5,1,'2015-04-17 14:31:27','0000-00-00 00:00:00'),(7,50,0,'demo','good good good good good good good good good good good good ',2,1,'2015-04-17 14:32:17','0000-00-00 00:00:00'),(8,47,7,'lyly','And of breakthrough design. With MacBook Air, mobile computing suddenly has a new standard.',5,1,'2015-06-25 17:49:13','2015-06-25 17:49:31'),(9,45,7,'admin','adfdaffffffffffffdsafdsafdsaffffffffffffffafdsfds',1,0,'2015-08-03 14:32:09','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_review` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_setting`
--

DROP TABLE IF EXISTS `oc_setting`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_setting` (
  `setting_id` int(11) NOT NULL AUTO_INCREMENT,
  `store_id` int(11) NOT NULL DEFAULT '0',
  `code` varchar(32) NOT NULL,
  `key` varchar(64) NOT NULL,
  `value` text NOT NULL,
  `serialized` tinyint(1) NOT NULL,
  PRIMARY KEY (`setting_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7969 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_setting`
--

LOCK TABLES `oc_setting` WRITE;
/*!40000 ALTER TABLE `oc_setting` DISABLE KEYS */;
INSERT INTO `oc_setting` VALUES 
(1,0,'shipping','shipping_sort_order','3',0),
(2,0,'sub_total','sub_total_sort_order','1',0),
(3,0,'sub_total','sub_total_status','1',0),
(4,0,'tax','tax_status','1',0),
(5,0,'total','total_sort_order','9',0),
(6,0,'total','total_status','1',0),
(7,0,'tax','tax_sort_order','5',0),
(8,0,'free_checkout','free_checkout_sort_order','1',0),
(9,0,'cod','cod_sort_order','5',0),
(10,0,'cod','cod_total','0.01',0),
(11,0,'cod','cod_order_status_id','1',0),
(12,0,'cod','cod_geo_zone_id','0',0),
(13,0,'cod','cod_status','1',0),
(14,0,'shipping','shipping_status','1',0),
(15,0,'shipping','shipping_estimator','1',0),
(27,0,'coupon','coupon_sort_order','4',0),
(28,0,'coupon','coupon_status','1',0),
(34,0,'flat','flat_sort_order','1',0),
(35,0,'flat','flat_status','1',0),
(36,0,'flat','flat_geo_zone_id','0',0),
(37,0,'flat','flat_tax_class_id','9',0),
(41,0,'flat','flat_cost','5.00',0),
(42,0,'credit','credit_sort_order','7',0),
(43,0,'credit','credit_status','1',0),
(53,0,'reward','reward_sort_order','2',0),
(54,0,'reward','reward_status','1',0),
(146,0,'category','category_status','1',0),
(158,0,'account','account_status','1',0),
(159,0,'affiliate','affiliate_status','1',0),
(94,0,'voucher','voucher_sort_order','8',0),
(95,0,'voucher','voucher_status','1',0),
(103,0,'free_checkout','free_checkout_status','1',0),
(104,0,'free_checkout','free_checkout_order_status_id','1',0),
(7243,0,'pavdeals','pavdeals_config','a:12:{s:15:\"order_status_id\";s:1:\"5\";s:12:\"saleoff_icon\";s:74:\"http://localhost/opencart/pav_extroic/image/cache/data/saleoff-150x150.png\";s:10:\"today_deal\";s:2:\"10\";s:8:\"time_end\";s:0:\"\";s:16:\"enable_available\";s:1:\"1\";s:11:\"enable_pass\";s:1:\"1\";s:10:\"icon_width\";s:3:\"180\";s:11:\"icon_height\";s:3:\"180\";s:5:\"limit\";s:2:\"10\";s:4:\"cols\";s:1:\"4\";s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"500\";}',1),
(7951,0,'pavblog','pavblog','a:42:{s:14:\"general_lwidth\";s:3:\"800\";s:15:\"general_lheight\";s:3:\"800\";s:14:\"general_swidth\";s:3:\"800\";s:15:\"general_sheight\";s:3:\"800\";s:14:\"general_xwidth\";s:2:\"80\";s:15:\"general_xheight\";s:2:\"80\";s:14:\"rss_limit_item\";s:2:\"12\";s:26:\"keyword_listing_blogs_page\";s:5:\"blogs\";s:16:\"children_columns\";s:1:\"3\";s:14:\"general_cwidth\";s:3:\"800\";s:15:\"general_cheight\";s:3:\"800\";s:22:\"cat_limit_leading_blog\";s:1:\"1\";s:24:\"cat_limit_secondary_blog\";s:1:\"1\";s:22:\"cat_leading_image_type\";s:1:\"l\";s:24:\"cat_secondary_image_type\";s:1:\"l\";s:24:\"cat_columns_leading_blog\";s:1:\"1\";s:27:\"cat_columns_secondary_blogs\";s:1:\"5\";s:14:\"cat_show_title\";s:1:\"1\";s:20:\"cat_show_description\";s:1:\"1\";s:17:\"cat_show_readmore\";s:1:\"1\";s:14:\"cat_show_image\";s:1:\"1\";s:15:\"cat_show_author\";s:1:\"1\";s:17:\"cat_show_category\";s:1:\"1\";s:16:\"cat_show_created\";s:1:\"1\";s:13:\"cat_show_hits\";s:1:\"1\";s:24:\"cat_show_comment_counter\";s:1:\"1\";s:15:\"blog_image_type\";s:1:\"l\";s:15:\"blog_show_title\";s:1:\"1\";s:15:\"blog_show_image\";s:1:\"1\";s:16:\"blog_show_author\";s:1:\"1\";s:18:\"blog_show_category\";s:1:\"1\";s:17:\"blog_show_created\";s:1:\"1\";s:25:\"blog_show_comment_counter\";s:1:\"1\";s:14:\"blog_show_hits\";s:1:\"1\";s:22:\"blog_show_comment_form\";s:1:\"1\";s:14:\"comment_engine\";s:5:\"local\";s:14:\"diquis_account\";s:10:\"pavothemes\";s:14:\"facebook_appid\";s:12:\"100858303516\";s:13:\"comment_limit\";s:2:\"10\";s:14:\"facebook_width\";s:3:\"600\";s:20:\"auto_publish_comment\";s:1:\"0\";s:16:\"enable_recaptcha\";s:1:\"1\";}',1),
(854,0,'filter','filter_status','1',0),
(7946,0,'pavverticalmenu_params','params','[{\"submenu\":1,\"subwidth\":700,\"id\":7,\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-70|wid-71\",\"colwidth\":\"5\"},{\"widgets\":\"wid-72\",\"colwidth\":\"5\"}]},{\"cols\":[{\"widgets\":\"wid-73\",\"colwidth\":\"5\"},{\"widgets\":\"wid-74\",\"colwidth\":\"5\"}]}]},{\"id\":2,\"group\":0,\"cols\":3,\"subwidth\":600,\"submenu\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-60\",\"colwidth\":12}]}]},{\"id\":5,\"group\":0,\"cols\":1,\"subwidth\":700,\"submenu\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-20|wid-22|wid-58\",\"colwidth\":3},{\"widgets\":\"wid-21\",\"colwidth\":9,\"colclass\":\"\"}]}]}]',0),
(7968,0,'themecontrol','themecontrol','a:70:{s:9:\"layout_id\";s:1:\"1\";s:8:\"position\";s:1:\"1\";s:21:\"cateogry_display_mode\";s:4:\"grid\";s:24:\"listing_products_columns\";s:1:\"0\";s:30:\"listing_products_columns_small\";s:1:\"0\";s:34:\"listing_products_columns_minismall\";s:1:\"0\";s:14:\"category_pzoom\";s:1:\"1\";s:18:\"product_enablezoom\";s:1:\"1\";s:19:\"product_zoomgallery\";s:6:\"slider\";s:16:\"product_zoommode\";s:5:\"basic\";s:20:\"product_zoomlenssize\";s:3:\"150\";s:18:\"product_zoomeasing\";s:1:\"1\";s:21:\"product_zoomlensshape\";s:5:\"basic\";s:22:\"product_related_column\";s:1:\"0\";s:24:\"enable_product_customtab\";s:1:\"0\";s:22:\"product_customtab_name\";a:2:{i:1;s:0:\"\";i:2;s:0:\"\";}s:25:\"product_customtab_content\";a:2:{i:1;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";i:2;s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";}s:16:\"location_address\";s:44:\"79-99 Beaver Street, New York, NY 10005, USA\";s:17:\"location_latitude\";s:9:\"40.705423\";s:18:\"location_longitude\";s:10:\"-74.008616\";s:18:\"contact_customhtml\";a:2:{i:1;s:155:\"&lt;p&gt;This is Photoshop\\\'s version&amp;nbsp; of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.&amp;nbsp; sem accumsan ipsum velit. &lt;/p&gt;\";i:2;s:155:\"&lt;p&gt;This is Photoshop\\\'s version&amp;nbsp; of Lorem Ipsum. Proin gravida nibh vel velit auctor aliquet.&amp;nbsp; sem accumsan ipsum velit. &lt;/p&gt;\";}s:4:\"skin\";s:0:\"\";s:20:\"enable_activeprofile\";s:1:\"0\";s:11:\"theme_width\";s:4:\"auto\";s:23:\"enable_custom_copyright\";s:1:\"1\";s:9:\"copyright\";s:176:\"Copyright @2015 -  &lt;a href=&quot;#&quot;&gt;Golmart&lt;/a&gt; - All rights reserved&lt;br&gt; Power by &lt;a class=&quot;black&quot; href=&quot;#&quot;&gt;Opencart&lt;/a&gt;\";s:18:\"enable_offsidebars\";s:1:\"1\";s:16:\"enable_paneltool\";s:1:\"1\";s:15:\"template_layout\";s:9:\"fullwidth\";s:6:\"header\";s:9:\"version-1\";s:9:\"logo_type\";s:13:\"logo-opencart\";s:9:\"offcanvas\";s:8:\"megamenu\";s:19:\"home_container_full\";s:1:\"1\";s:9:\"quickview\";s:1:\"1\";s:14:\"widget_support\";a:2:{i:1;s:371:\"&lt;div class=&quot;media&quot;&gt;             &lt;div class=&quot;pull-left&quot;&gt;                 &lt;i class=&quot;icon icon-phone&quot;&gt;&lt;/i&gt;             &lt;/div&gt;  &lt;div class=&quot;media-body&quot;&gt;                &lt;h6&gt;call us&lt;/h6&gt;  &lt;span style=&quot;font-weight:bold&quot;&gt;+844 123 456 78&lt;/span&gt;  &lt;/div&gt;&lt;/div&gt;\";i:2;s:371:\"&lt;div class=&quot;media&quot;&gt;             &lt;div class=&quot;pull-left&quot;&gt;                 &lt;i class=&quot;icon icon-phone&quot;&gt;&lt;/i&gt;             &lt;/div&gt;  &lt;div class=&quot;media-body&quot;&gt;                &lt;h6&gt;call us&lt;/h6&gt;  &lt;span style=&quot;font-weight:bold&quot;&gt;+844 123 456 78&lt;/span&gt;  &lt;/div&gt;&lt;/div&gt;\";}s:14:\"widget_contact\";a:2:{i:1;s:334:\"&lt;div class=&quot;media&quot;&gt;						&lt;div class=&quot;pull-left&quot;&gt;							&lt;i class=&quot;icon icon-mail&quot;&gt;&lt;/i&gt;						&lt;/div&gt;						&lt;div class=&quot;media-body&quot;&gt;														&lt;h6&gt;email us&lt;/h6&gt;  							&lt;span&gt;contact@company.com&lt;/span&gt;						&lt;/div&gt;					&lt;/div&gt;\";i:2;s:350:\"&lt;div class=&quot;media&quot;&gt;\r\n						&lt;div class=&quot;pull-left&quot;&gt;\r\n							&lt;i class=&quot;icon icon-mail&quot;&gt;&lt;/i&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;media-body&quot;&gt;							\r\n							&lt;h6&gt;email us&lt;/h6&gt;  \r\n							&lt;span&gt;contact@company.com&lt;/span&gt;\r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\";}s:11:\"widget_logo\";a:2:{i:1;s:517:\"&lt;div class=&quot;custom-logo&quot;&gt;	 	 			&lt;img alt=&quot;logo&quot; src=&quot;image/catalog/logo-footer.png&quot;&gt;	 	 									&lt;address class=&quot;space-top-30&quot;&gt;						  &lt;span class=&quot;text-uppercase black&quot;&gt;main office&lt;/span&gt;&lt;br&gt;						  PO Box 16122 Collins Street West Victoria 8007 Australia&lt;br&gt;						  +844 123 456 78 / +844 123 456 79&lt;br&gt;						  &lt;a href=&quot;mailto:#&quot;&gt;contac@yourcompany.com&lt;/a&gt;						&lt;/address&gt;					&lt;/div&gt;\";i:2;s:517:\"&lt;div class=&quot;custom-logo&quot;&gt;	 	 			&lt;img alt=&quot;logo&quot; src=&quot;image/catalog/logo-footer.png&quot;&gt;	 	 									&lt;address class=&quot;space-top-30&quot;&gt;						  &lt;span class=&quot;text-uppercase black&quot;&gt;main office&lt;/span&gt;&lt;br&gt;						  PO Box 16122 Collins Street West Victoria 8007 Australia&lt;br&gt;						  +844 123 456 78 / +844 123 456 79&lt;br&gt;						  &lt;a href=&quot;mailto:#&quot;&gt;contac@yourcompany.com&lt;/a&gt;						&lt;/address&gt;					&lt;/div&gt;\";}s:15:\"widget_about_us\";a:2:{i:1;s:662:\"&lt;div class=&quot;panel pull-right&quot;&gt;                    \r\n						&lt;div class=&quot;panel-heading&quot;&gt;    \r\n						&lt;h6 class=&quot;panel-title&quot;&gt;about us&lt;/h6&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;panel-body&quot;&gt;       \r\n							&lt;p&gt;\r\n								Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, necittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor&lt;br&gt; a ornare odio. Sed non  mauris vitae erat \r\n							&lt;/p&gt;                           \r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\";i:2;s:662:\"&lt;div class=&quot;panel pull-right&quot;&gt;                    \r\n						&lt;div class=&quot;panel-heading&quot;&gt;    \r\n						&lt;h6 class=&quot;panel-title&quot;&gt;about us&lt;/h6&gt;\r\n						&lt;/div&gt;\r\n						&lt;div class=&quot;panel-body&quot;&gt;       \r\n							&lt;p&gt;\r\n								Aenean sollicitudin, lorem quis bibendum auctor, nisi elit consequat ipsum, necittis sem nibh id elit. Duis sed odio sit amet nibh vulputate cursus a sit amet mauris. Morbi accumsan ipsum velit. Nam nec tellus a odio tincidunt auctor&lt;br&gt; a ornare odio. Sed non  mauris vitae erat \r\n							&lt;/p&gt;                           \r\n						&lt;/div&gt;\r\n					&lt;/div&gt;\";}s:12:\"widget_papal\";a:2:{i:1;s:75:\"&lt;img alt=&quot;papal&quot; src=&quot;image/catalog/payment.png&quot;&gt;\";i:2;s:75:\"&lt;img alt=&quot;papal&quot; src=&quot;image/catalog/payment.png&quot;&gt;\";}s:17:\"enable_customfont\";s:1:\"0\";s:11:\"type_fonts1\";s:8:\"standard\";s:13:\"normal_fonts1\";s:7:\"inherit\";s:11:\"google_url1\";s:0:\"\";s:14:\"google_family1\";s:0:\"\";s:9:\"fontsize1\";s:7:\"inherit\";s:11:\"type_fonts2\";s:8:\"standard\";s:13:\"normal_fonts2\";s:7:\"inherit\";s:11:\"google_url2\";s:0:\"\";s:14:\"google_family2\";s:0:\"\";s:9:\"fontsize2\";s:7:\"inherit\";s:11:\"type_fonts3\";s:8:\"standard\";s:13:\"normal_fonts3\";s:7:\"inherit\";s:11:\"google_url3\";s:0:\"\";s:14:\"google_family3\";s:0:\"\";s:9:\"fontsize3\";s:7:\"inherit\";s:11:\"type_fonts4\";s:8:\"standard\";s:13:\"normal_fonts4\";s:27:\"Verdana, Geneva, sans-serif\";s:11:\"google_url4\";s:0:\"\";s:14:\"google_family4\";s:0:\"\";s:14:\"body_selector4\";s:0:\"\";s:14:\"block_showcase\";s:0:\"\";s:15:\"block_promotion\";s:0:\"\";s:16:\"block_footer_top\";s:0:\"\";s:19:\"block_footer_center\";s:0:\"\";s:19:\"block_footer_bottom\";s:0:\"\";s:19:\"enable_compress_css\";s:0:\"\";s:17:\"exclude_css_files\";s:13:\"bootstrap.css\";s:15:\"customize_theme\";s:0:\"\";s:10:\"custom_css\";s:0:\"\";s:17:\"custom_javascript\";s:0:\"\";}',1),
(7907,0,'pavmegamenu_params','pavmegamenu_params','[{\"id\":43,\"group\":0,\"cols\":1,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"submenu\":1,\"subwidth\":1170,\"id\":55,\"align\":\"aligned-fullwidth\",\"group\":0,\"cols\":1,\"rows\":[{\"cols\":[{\"widgets\":\"wid-60|wid-66\",\"colwidth\":3},{\"widgets\":\"wid-61|wid-67\",\"colwidth\":3},{\"widgets\":\"wid-62\",\"colwidth\":3},{\"widgets\":\"wid-63\",\"colwidth\":3}]}]},{\"id\":57,\"group\":0,\"cols\":1,\"subwidth\":800,\"submenu\":1,\"align\":\"aligned-center\",\"rows\":[{\"cols\":[{\"widgets\":\"wid-68\",\"colwidth\":3},{\"widgets\":\"wid-69\",\"colwidth\":3},{\"widgets\":\"wid-70\",\"colwidth\":3},{\"widgets\":\"wid-71\",\"colwidth\":3}]}]},{\"id\":2,\"group\":0,\"cols\":3,\"subwidth\":900,\"submenu\":1,\"align\":\"aligned-center\",\"rows\":[{\"cols\":[{\"widgets\":\"wid-55\",\"colwidth\":6},{\"widgets\":\"wid-57\",\"colwidth\":6}]}]},{\"id\":19,\"group\":0,\"cols\":1,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"id\":23,\"group\":0,\"cols\":1,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]},{\"id\":29,\"group\":0,\"cols\":1,\"submenu\":1,\"align\":\"aligned-left\",\"rows\":[{\"cols\":[{\"type\":\"menu\",\"colwidth\":12}]}]}]',0),
(7930,0,'pavsocial','pavsocial_module','a:1:{i:1;a:28:{s:6:\"status\";s:1:\"1\";s:4:\"name\";s:10:\"social fly\";s:8:\"facebook\";s:35:\"https://www.facebook.com/PavoThemes\";s:14:\"application_id\";s:0:\"\";s:12:\"border_color\";s:7:\"#000000\";s:11:\"colorscheme\";s:5:\"light\";s:10:\"face_width\";s:3:\"220\";s:11:\"face_height\";s:3:\"220\";s:5:\"tream\";s:1:\"0\";s:10:\"show_faces\";s:1:\"0\";s:6:\"header\";s:1:\"0\";s:9:\"widget_id\";s:18:\"366766896986591232\";s:5:\"count\";s:1:\"5\";s:8:\"username\";s:10:\"PavoThemes\";s:5:\"theme\";s:5:\"light\";s:14:\"nickname_color\";s:7:\"#000000\";s:10:\"name_color\";s:7:\"#000000\";s:11:\"title_color\";s:7:\"#000000\";s:10:\"link_color\";s:7:\"#000000\";s:5:\"width\";s:3:\"220\";s:6:\"height\";s:3:\"220\";s:12:\"show_replies\";s:1:\"0\";s:17:\"youtube_video_ids\";s:11:\"oJOnoKZiJQA\";s:11:\"video_width\";s:3:\"766\";s:12:\"video_height\";s:3:\"220\";s:6:\"google\";s:45:\"https://plus.google.com/108949096200367463694\";s:13:\"google_height\";s:3:\"220\";s:3:\"url\";s:26:\"http://www.pavothemes.com/\";}}',1),
(7872,0,'config','config_google_captcha_public','6LdMxwYTAAAAAPfQS6XqEkGGBsjGLe1HMpRlR2hn',0),
(7873,0,'config','config_google_captcha_secret','6LdMxwYTAAAAALRM6bHENCGIRO6thJRXNlYl0XAR',0),
(7874,0,'config','config_google_captcha_status','1',0),
(7854,0,'config','config_mail_smtp_timeout','5',0),
(7855,0,'config','config_mail_alert','',0),
(7856,0,'config','config_secure','0',0),
(7857,0,'config','config_shared','0',0),
(7858,0,'config','config_robots','abot\r\ndbot\r\nebot\r\nhbot\r\nkbot\r\nlbot\r\nmbot\r\nnbot\r\nobot\r\npbot\r\nrbot\r\nsbot\r\ntbot\r\nvbot\r\nybot\r\nzbot\r\nbot.\r\nbot/\r\n_bot\r\n.bot\r\n/bot\r\n-bot\r\n:bot\r\n(bot\r\ncrawl\r\nslurp\r\nspider\r\nseek\r\naccoona\r\nacoon\r\nadressendeutschland\r\nah-ha.com\r\nahoy\r\naltavista\r\nananzi\r\nanthill\r\nappie\r\narachnophilia\r\narale\r\naraneo\r\naranha\r\narchitext\r\naretha\r\narks\r\nasterias\r\natlocal\r\natn\r\natomz\r\naugurfind\r\nbackrub\r\nbannana_bot\r\nbaypup\r\nbdfetch\r\nbig brother\r\nbiglotron\r\nbjaaland\r\nblackwidow\r\nblaiz\r\nblog\r\nblo.\r\nbloodhound\r\nboitho\r\nbooch\r\nbradley\r\nbutterfly\r\ncalif\r\ncassandra\r\nccubee\r\ncfetch\r\ncharlotte\r\nchurl\r\ncienciaficcion\r\ncmc\r\ncollective\r\ncomagent\r\ncombine\r\ncomputingsite\r\ncsci\r\ncurl\r\ncusco\r\ndaumoa\r\ndeepindex\r\ndelorie\r\ndepspid\r\ndeweb\r\ndie blinde kuh\r\ndigger\r\nditto\r\ndmoz\r\ndocomo\r\ndownload express\r\ndtaagent\r\ndwcp\r\nebiness\r\nebingbong\r\ne-collector\r\nejupiter\r\nemacs-w3 search engine\r\nesther\r\nevliya celebi\r\nezresult\r\nfalcon\r\nfelix ide\r\nferret\r\nfetchrover\r\nfido\r\nfindlinks\r\nfireball\r\nfish search\r\nfouineur\r\nfunnelweb\r\ngazz\r\ngcreep\r\ngenieknows\r\ngetterroboplus\r\ngeturl\r\nglx\r\ngoforit\r\ngolem\r\ngrabber\r\ngrapnel\r\ngralon\r\ngriffon\r\ngromit\r\ngrub\r\ngulliver\r\nhamahakki\r\nharvest\r\nhavindex\r\nhelix\r\nheritrix\r\nhku www octopus\r\nhomerweb\r\nhtdig\r\nhtml index\r\nhtml_analyzer\r\nhtmlgobble\r\nhubater\r\nhyper-decontextualizer\r\nia_archiver\r\nibm_planetwide\r\nichiro\r\niconsurf\r\niltrovatore\r\nimage.kapsi.net\r\nimagelock\r\nincywincy\r\nindexer\r\ninfobee\r\ninformant\r\ningrid\r\ninktomisearch.com\r\ninspector web\r\nintelliagent\r\ninternet shinchakubin\r\nip3000\r\niron33\r\nisraeli-search\r\nivia\r\njack\r\njakarta\r\njavabee\r\njetbot\r\njumpstation\r\nkatipo\r\nkdd-explorer\r\nkilroy\r\nknowledge\r\nkototoi\r\nkretrieve\r\nlabelgrabber\r\nlachesis\r\nlarbin\r\nlegs\r\nlibwww\r\nlinkalarm\r\nlink validator\r\nlinkscan\r\nlockon\r\nlwp\r\nlycos\r\nmagpie\r\nmantraagent\r\nmapoftheinternet\r\nmarvin/\r\nmattie\r\nmediafox\r\nmediapartners\r\nmercator\r\nmerzscope\r\nmicrosoft url control\r\nminirank\r\nmiva\r\nmj12\r\nmnogosearch\r\nmoget\r\nmonster\r\nmoose\r\nmotor\r\nmultitext\r\nmuncher\r\nmuscatferret\r\nmwd.search\r\nmyweb\r\nnajdi\r\nnameprotect\r\nnationaldirectory\r\nnazilla\r\nncsa beta\r\nnec-meshexplorer\r\nnederland.zoek\r\nnetcarta webmap engine\r\nnetmechanic\r\nnetresearchserver\r\nnetscoop\r\nnewscan-online\r\nnhse\r\nnokia6682/\r\nnomad\r\nnoyona\r\nnutch\r\nnzexplorer\r\nobjectssearch\r\noccam\r\nomni\r\nopen text\r\nopenfind\r\nopenintelligencedata\r\norb search\r\nosis-project\r\npack rat\r\npageboy\r\npagebull\r\npage_verifier\r\npanscient\r\nparasite\r\npartnersite\r\npatric\r\npear.\r\npegasus\r\nperegrinator\r\npgp key agent\r\nphantom\r\nphpdig\r\npicosearch\r\npiltdownman\r\npimptrain\r\npinpoint\r\npioneer\r\npiranha\r\nplumtreewebaccessor\r\npogodak\r\npoirot\r\npompos\r\npoppelsdorf\r\npoppi\r\npopular iconoclast\r\npsycheclone\r\npublisher\r\npython\r\nrambler\r\nraven search\r\nroach\r\nroad runner\r\nroadhouse\r\nrobbie\r\nrobofox\r\nrobozilla\r\nrules\r\nsalty\r\nsbider\r\nscooter\r\nscoutjet\r\nscrubby\r\nsearch.\r\nsearchprocess\r\nsemanticdiscovery\r\nsenrigan\r\nsg-scout\r\nshai\'hulud\r\nshark\r\nshopwiki\r\nsidewinder\r\nsift\r\nsilk\r\nsimmany\r\nsite searcher\r\nsite valet\r\nsitetech-rover\r\nskymob.com\r\nsleek\r\nsmartwit\r\nsna-\r\nsnappy\r\nsnooper\r\nsohu\r\nspeedfind\r\nsphere\r\nsphider\r\nspinner\r\nspyder\r\nsteeler/\r\nsuke\r\nsuntek\r\nsupersnooper\r\nsurfnomore\r\nsven\r\nsygol\r\nszukacz\r\ntach black widow\r\ntarantula\r\ntempleton\r\n/teoma\r\nt-h-u-n-d-e-r-s-t-o-n-e\r\ntheophrastus\r\ntitan\r\ntitin\r\ntkwww\r\ntoutatis\r\nt-rex\r\ntutorgig\r\ntwiceler\r\ntwisted\r\nucsd\r\nudmsearch\r\nurl check\r\nupdated\r\nvagabondo\r\nvalkyrie\r\nverticrawl\r\nvictoria\r\nvision-search\r\nvolcano\r\nvoyager/\r\nvoyager-hc\r\nw3c_validator\r\nw3m2\r\nw3mir\r\nwalker\r\nwallpaper\r\nwanderer\r\nwauuu\r\nwavefire\r\nweb core\r\nweb hopper\r\nweb wombat\r\nwebbandit\r\nwebcatcher\r\nwebcopy\r\nwebfoot\r\nweblayers\r\nweblinker\r\nweblog monitor\r\nwebmirror\r\nwebmonkey\r\nwebquest\r\nwebreaper\r\nwebsitepulse\r\nwebsnarf\r\nwebstolperer\r\nwebvac\r\nwebwalk\r\nwebwatch\r\nwebwombat\r\nwebzinger\r\nwhizbang\r\nwhowhere\r\nwild ferret\r\nworldlight\r\nwwwc\r\nwwwster\r\nxenu\r\nxget\r\nxift\r\nxirq\r\nyandex\r\nyanga\r\nyeti\r\nyodao\r\nzao\r\nzippp\r\nzyborg',0),
(7863,0,'config','config_maintenance','0',0),
(7864,0,'config','config_password','1',0),
(7865,0,'config','config_encryption','9ea7a4df2812bf285b81de9108c695a9',0),
(7866,0,'config','config_compression','0',0),
(7867,0,'config','config_error_display','1',0),
(7868,0,'config','config_error_log','1',0),
(7869,0,'config','config_error_filename','error.log',0),
(7870,0,'config','config_google_analytics','',0),
(7871,0,'config','config_google_analytics_status','0',0),
(7859,0,'config','config_seo_url','0',0),
(7860,0,'config','config_file_max_size','300000',0),
(7861,0,'config','config_file_ext_allowed','txt\r\npng\r\njpe\r\njpeg\r\njpg\r\ngif\r\nbmp\r\nico\r\ntiff\r\ntif\r\nsvg\r\nsvgz\r\nzip\r\nrar\r\nmsi\r\ncab\r\nmp3\r\nqt\r\nmov\r\npdf\r\npsd\r\nai\r\neps\r\nps\r\ndoc\r\nrtf\r\nxls\r\nppt\r\nodt\r\nods',0),
(7862,0,'config','config_file_mime_allowed','text/plain\r\nimage/png\r\nimage/jpeg\r\nimage/gif\r\nimage/bmp\r\nimage/vnd.microsoft.icon\r\nimage/tiff\r\nimage/svg+xml\r\napplication/zip\r\napplication/x-rar-compressed\r\napplication/x-msdownload\r\napplication/vnd.ms-cab-compressed\r\naudio/mpeg\r\nvideo/quicktime\r\napplication/pdf\r\nimage/vnd.adobe.photoshop\r\napplication/postscript\r\napplication/msword\r\napplication/rtf\r\napplication/vnd.ms-excel\r\napplication/vnd.ms-powerpoint\r\napplication/vnd.oasis.opendocument.text\r\napplication/vnd.oasis.opendocument.spreadsheet',0),
(7853,0,'config','config_mail_smtp_port','25',0),
(7852,0,'config','config_mail_smtp_password','',0),
(7851,0,'config','config_mail_smtp_username','',0),
(7850,0,'config','config_mail_smtp_hostname','',0),
(7849,0,'config','config_mail_parameter','',0),
(7848,0,'config','config_mail_protocol','mail',0),
(7847,0,'config','config_ftp_status','0',0),
(7846,0,'config','config_ftp_root','',0),
(7845,0,'config','config_ftp_password','',0),
(7844,0,'config','config_ftp_username','',0),
(7843,0,'config','config_ftp_port','21',0),
(7842,0,'config','config_ftp_hostname','localhost',0),
(7841,0,'config','config_image_location_height','99',0),
(7840,0,'config','config_image_location_width','92',0),
(7838,0,'config','config_image_cart_width','92',0),
(7839,0,'config','config_image_cart_height','99',0),
(7837,0,'config','config_image_wishlist_height','99',0),
(7836,0,'config','config_image_wishlist_width','92',0),
(7835,0,'config','config_image_compare_height','99',0),
(7834,0,'config','config_image_compare_width','92',0),
(7833,0,'config','config_image_related_height','539',0),
(7831,0,'config','config_image_additional_height','99',0),
(7832,0,'config','config_image_related_width','500',0),
(7830,0,'config','config_image_additional_width','92',0),
(7829,0,'config','config_image_product_height','539',0),
(7828,0,'config','config_image_product_width','500',0),
(7827,0,'config','config_image_popup_height','539',0),
(7826,0,'config','config_image_popup_width','500',0),
(7825,0,'config','config_image_thumb_height','539',0),
(7823,0,'config','config_image_category_height','301',0),
(7824,0,'config','config_image_thumb_width','500',0),
(7822,0,'config','config_image_category_width','870',0),
(7821,0,'config','config_icon','catalog/cart.png',0),
(7819,0,'config','config_return_status_id','2',0),
(7820,0,'config','config_logo','catalog/logo.png',0),
(7817,0,'config','config_affiliate_mail','0',0),
(7818,0,'config','config_return_id','0',0),
(7816,0,'config','config_affiliate_id','4',0),
(7815,0,'config','config_affiliate_commission','5',0),
(7814,0,'config','config_affiliate_auto','0',0),
(7813,0,'config','config_affiliate_approval','0',0),
(7812,0,'config','config_stock_checkout','0',0),
(7811,0,'config','config_stock_warning','0',0),
(7810,0,'config','config_stock_display','0',0),
(7809,0,'config','config_order_mail','0',0),
(7808,0,'config','config_complete_status','a:1:{i:0;s:1:\"5\";}',1),
(7807,0,'config','config_processing_status','a:1:{i:0;s:1:\"2\";}',1),
(7805,0,'config','config_checkout_id','5',0),
(7806,0,'config','config_order_status_id','1',0),
(7804,0,'config','config_checkout_guest','1',0),
(7803,0,'config','config_cart_weight','1',0),
(7802,0,'config','config_api_id','5',0),
(7801,0,'config','config_invoice_prefix','INV-2013-00',0),
(7800,0,'config','config_account_mail','0',0),
(7799,0,'config','config_account_id','3',0),
(7798,0,'config','config_login_attempts','5',0),
(7797,0,'config','config_customer_price','0',0),
(7795,0,'config','config_customer_group_id','1',0),
(7796,0,'config','config_customer_group_display','a:1:{i:0;s:1:\"1\";}',1),
(7794,0,'config','config_customer_online','0',0),
(7793,0,'config','config_tax_customer','shipping',0),
(7788,0,'config','config_review_mail','0',0),
(7789,0,'config','config_voucher_min','1',0),
(7790,0,'config','config_voucher_max','1000',0),
(7509,0,'pavautosearch','pavautosearch_status','1',0),
(7792,0,'config','config_tax_default','shipping',0),
(7791,0,'config','config_tax','1',0),
(7787,0,'config','config_review_guest','1',0),
(7786,0,'config','config_review_status','1',0),
(7785,0,'config','config_limit_admin','20',0),
(7784,0,'config','config_product_description_length','100',0),
(7783,0,'config','config_product_limit','12',0),
(7782,0,'config','config_product_count','1',0),
(7781,0,'config','config_weight_class_id','1',0),
(7780,0,'config','config_length_class_id','1',0),
(7779,0,'config','config_currency_auto','1',0),
(7778,0,'config','config_currency','USD',0),
(7777,0,'config','config_admin_language','vi',0),
(7776,0,'config','config_language','vi',0),
(7775,0,'config','config_zone_id','3563',0),
(7774,0,'config','config_country_id','222',0),
(7772,0,'config','config_template','lexus_golmart',0),
(7773,0,'config','config_layout_id','4',0),
(7771,0,'config','config_meta_keyword','Lexus Gol Mart',0),
(7770,0,'config','config_meta_description','Lexus Gol Mart- Responsive Opencart Theme',0),
(7768,0,'config','config_comment','',0),
(7769,0,'config','config_meta_title','Lexus Gol Mart- Responsive Opencart Theme',0),
(7767,0,'config','config_open','',0),
(7766,0,'config','config_image','',0),
(7765,0,'config','config_fax','(+800) 1234 5678 90',0),
(7764,0,'config','config_telephone','(+800) 1234 5678 90',0),
(7763,0,'config','config_email','admin@gmail.com',0),
(7762,0,'config','config_geocode','',0),
(7761,0,'config','config_address','No 1123, Sky Tower, New York, USA',0),
(7760,0,'config','config_owner','Lexus Gol Mart- Responsive Opencart Theme',0),
(7759,0,'config','config_name','Lexus Gol Mart- Responsive Opencart Theme',0);
/*!40000 ALTER TABLE `oc_setting` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_stock_status`
--

DROP TABLE IF EXISTS `oc_stock_status`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_stock_status` (
  `stock_status_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`stock_status_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_stock_status`
--

LOCK TABLES `oc_stock_status` WRITE;
/*!40000 ALTER TABLE `oc_stock_status` DISABLE KEYS */;
INSERT INTO `oc_stock_status` VALUES (7,1,'In Stock'),(8,1,'Pre-Order'),(5,1,'Out Of Stock'),(6,1,'2-3 Days'),(7,2,'In Stock'),(8,2,'Pre-Order'),(5,2,'Out Of Stock'),(6,2,'2-3 Days');
/*!40000 ALTER TABLE `oc_stock_status` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_store`
--

DROP TABLE IF EXISTS `oc_store`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_store` (
  `store_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `url` varchar(255) NOT NULL,
  `ssl` varchar(255) NOT NULL,
  PRIMARY KEY (`store_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_store`
--

LOCK TABLES `oc_store` WRITE;
/*!40000 ALTER TABLE `oc_store` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_store` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_class`
--

DROP TABLE IF EXISTS `oc_tax_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_class` (
  `tax_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(32) NOT NULL,
  `description` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_class`
--

LOCK TABLES `oc_tax_class` WRITE;
/*!40000 ALTER TABLE `oc_tax_class` DISABLE KEYS */;
INSERT INTO `oc_tax_class` VALUES (9,'Taxable Goods','Taxed goods','2009-01-06 23:21:53','2011-09-23 14:07:50'),(10,'Downloadable Products','Downloadable','2011-09-21 22:19:39','2011-09-22 10:27:36');
/*!40000 ALTER TABLE `oc_tax_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate`
--

DROP TABLE IF EXISTS `oc_tax_rate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate` (
  `tax_rate_id` int(11) NOT NULL AUTO_INCREMENT,
  `geo_zone_id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(32) NOT NULL,
  `rate` decimal(15,4) NOT NULL DEFAULT '0.0000',
  `type` char(1) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`tax_rate_id`)
) ENGINE=MyISAM AUTO_INCREMENT=88 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate`
--

LOCK TABLES `oc_tax_rate` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate` DISABLE KEYS */;
INSERT INTO `oc_tax_rate` VALUES (86,3,'VAT (20%)',20.0000,'P','2011-03-09 21:17:10','2011-09-22 22:24:29'),(87,3,'Eco Tax (-2.00)',2.0000,'F','2011-09-21 21:49:23','2011-09-23 00:40:19');
/*!40000 ALTER TABLE `oc_tax_rate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rate_to_customer_group`
--

DROP TABLE IF EXISTS `oc_tax_rate_to_customer_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rate_to_customer_group` (
  `tax_rate_id` int(11) NOT NULL,
  `customer_group_id` int(11) NOT NULL,
  PRIMARY KEY (`tax_rate_id`,`customer_group_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rate_to_customer_group`
--

LOCK TABLES `oc_tax_rate_to_customer_group` WRITE;
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` DISABLE KEYS */;
INSERT INTO `oc_tax_rate_to_customer_group` VALUES (86,1),(87,1);
/*!40000 ALTER TABLE `oc_tax_rate_to_customer_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_tax_rule`
--

DROP TABLE IF EXISTS `oc_tax_rule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_tax_rule` (
  `tax_rule_id` int(11) NOT NULL AUTO_INCREMENT,
  `tax_class_id` int(11) NOT NULL,
  `tax_rate_id` int(11) NOT NULL,
  `based` varchar(10) NOT NULL,
  `priority` int(5) NOT NULL DEFAULT '1',
  PRIMARY KEY (`tax_rule_id`)
) ENGINE=MyISAM AUTO_INCREMENT=129 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_tax_rule`
--

LOCK TABLES `oc_tax_rule` WRITE;
/*!40000 ALTER TABLE `oc_tax_rule` DISABLE KEYS */;
INSERT INTO `oc_tax_rule` VALUES (121,10,86,'payment',1),(120,10,87,'store',0),(128,9,86,'shipping',1),(127,9,87,'shipping',2);
/*!40000 ALTER TABLE `oc_tax_rule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_upload`
--

DROP TABLE IF EXISTS `oc_upload`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_upload` (
  `upload_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `code` varchar(255) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`upload_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_upload`
--

LOCK TABLES `oc_upload` WRITE;
/*!40000 ALTER TABLE `oc_upload` DISABLE KEYS */;
INSERT INTO `oc_upload` VALUES (1,'image.jpg','image.jpg.1cf9b971e97c934e425cbd14bb123eb3','7c4c3bec27d670eb81cf521b97124202797980e1','2015-01-12 14:27:48');
/*!40000 ALTER TABLE `oc_upload` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_url_alias`
--

DROP TABLE IF EXISTS `oc_url_alias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_url_alias` (
  `url_alias_id` int(11) NOT NULL AUTO_INCREMENT,
  `query` varchar(255) NOT NULL,
  `keyword` varchar(255) NOT NULL,
  PRIMARY KEY (`url_alias_id`),
  KEY `query` (`query`),
  KEY `keyword` (`keyword`)
) ENGINE=MyISAM AUTO_INCREMENT=1045 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_url_alias`
--

LOCK TABLES `oc_url_alias` WRITE;
/*!40000 ALTER TABLE `oc_url_alias` DISABLE KEYS */;
INSERT INTO `oc_url_alias` VALUES (1035,'product_id=48','ipod-classic'),(994,'category_id=20','desktops'),(939,'category_id=26','pc'),(941,'category_id=27','mac'),(730,'manufacturer_id=8','apple'),(772,'information_id=4','about_us'),(1037,'product_id=42','test'),(901,'category_id=34','mp3-players'),(936,'category_id=36','test2'),(993,'category_id=18','laptop-notebook'),(934,'category_id=46','macs'),(935,'category_id=45','windows'),(898,'category_id=25','component'),(940,'category_id=28','monitor'),(938,'category_id=57','tablet'),(937,'category_id=17','software'),(899,'category_id=24','smartphone'),(1006,'category_id=33','camera'),(790,'category_id=43','test11'),(791,'category_id=44','test12'),(792,'category_id=47','test15'),(793,'category_id=48','test16'),(794,'category_id=49','test17'),(795,'category_id=50','test18'),(796,'category_id=51','test19'),(797,'category_id=52','test20'),(798,'category_id=58','test25'),(799,'category_id=53','test21'),(800,'category_id=54','test22'),(801,'category_id=55','test23'),(802,'category_id=56','test24'),(805,'category_id=39','test6'),(806,'category_id=40','test7'),(807,'category_id=41','test8'),(854,'category_id=42','test9'),(1027,'product_id=30','canon-eos-5d'),(1034,'product_id=47','hp-lp3065'),(1026,'product_id=28','htc-touch-hd'),(1021,'product_id=43','macbook'),(1036,'product_id=44','macbook-air'),(1032,'product_id=45','macbook-pro'),(1031,'product_id=31','nikon-d300'),(1030,'product_id=29','palm-treo-pro'),(1043,'product_id=35','product-8'),(1029,'product_id=49','samsung-galaxy-tab-10-1'),(1044,'product_id=33','samsung-syncmaster-941bw'),(1033,'product_id=46','sony-vaio'),(1038,'product_id=41','imac'),(1042,'product_id=40','iphone'),(1041,'product_id=36','ipod-nano'),(1040,'product_id=34','ipod-shuffle'),(1039,'product_id=32','ipod-touch'),(828,'manufacturer_id=9','canon'),(829,'manufacturer_id=5','htc'),(830,'manufacturer_id=7','hewlett-packard'),(831,'manufacturer_id=6','palm'),(832,'manufacturer_id=10','sony'),(841,'information_id=6','delivery'),(842,'information_id=3','privacy'),(843,'information_id=5','terms'),(891,'pavblog/blog=7',''),(875,'pavblog/category=25',''),(873,'pavblog/category=22',''),(874,'pavblog/category=21',''),(863,'category_id=62',''),(991,'pavblog/blog=11',''),(892,'pavblog/blog=9',''),(893,'pavblog/blog=10',''),(876,'pavblog/category=20',''),(877,'pavblog/category=24',''),(878,'pavblog/category=23',''),(995,'category_id=64',''),(998,'category_id=67',''),(999,'category_id=68',''),(1001,'category_id=70',''),(1002,'category_id=71',''),(1003,'category_id=72',''),(1004,'category_id=73',''),(1005,'category_id=74','');
/*!40000 ALTER TABLE `oc_url_alias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user`
--

DROP TABLE IF EXISTS `oc_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_group_id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(40) NOT NULL,
  `salt` varchar(9) NOT NULL,
  `firstname` varchar(32) NOT NULL,
  `lastname` varchar(32) NOT NULL,
  `email` varchar(96) NOT NULL,
  `image` varchar(255) NOT NULL,
  `code` varchar(40) NOT NULL,
  `ip` varchar(40) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user`
--

LOCK TABLES `oc_user` WRITE;
/*!40000 ALTER TABLE `oc_user` DISABLE KEYS */;
INSERT INTO `oc_user` VALUES (1,1,'admin','21232f297a57a5a743894a0e4a801fc3','764e4e8eb','John','Doe','phamduc1990@gmail.com','','','127.0.0.1',1,'2015-07-06 09:24:53'),(2,10,'demo','70c4978ce513dabb1f51566141323be71b04ee19','3dcd4580d','demo','demo','demo@gmail.com','','','',1,'2014-01-27 23:47:21');
/*!40000 ALTER TABLE `oc_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_user_group`
--

DROP TABLE IF EXISTS `oc_user_group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_user_group` (
  `user_group_id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(64) NOT NULL,
  `permission` text NOT NULL,
  PRIMARY KEY (`user_group_id`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_user_group`
--

LOCK TABLES `oc_user_group` WRITE;
/*!40000 ALTER TABLE `oc_user_group` DISABLE KEYS */;
INSERT INTO `oc_user_group` VALUES (1,'Administrator','a:2:{s:6:\"access\";a:230:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:19:\"module/themecontrol\";i:182;s:18:\"module/pavmegamenu\";i:183;s:20:\"module/pavnewsletter\";i:184;s:19:\"module/themecontrol\";i:185;s:19:\"module/themecontrol\";i:186;s:18:\"module/pavcarousel\";i:187;s:21:\"module/pavreassurance\";i:188;s:20:\"module/pavbloglatest\";i:189;s:21:\"module/pavblogcomment\";i:190;s:22:\"module/pavblogcategory\";i:191;s:14:\"module/pavblog\";i:192;s:21:\"module/pavsliderlayer\";i:193;s:13:\"module/filter\";i:194;s:17:\"module/bestseller\";i:195;s:15:\"module/pavdeals\";i:196;s:18:\"module/pavproducts\";i:197;s:22:\"module/pavverticalmenu\";i:198;s:23:\"module/pavbannerbuilder\";i:199;s:22:\"module/pavverticalmenu\";i:200;s:18:\"module/pavmegamenu\";i:201;s:18:\"module/pavmegamenu\";i:202;s:22:\"module/pavverticalmenu\";i:203;s:22:\"module/pavverticalmenu\";i:204;s:22:\"module/pavverticalmenu\";i:205;s:18:\"module/pavmegamenu\";i:206;s:23:\"module/pavbannerbuilder\";i:207;s:21:\"module/pavhomebuilder\";i:208;s:25:\"module/pavproductcarousel\";i:209;s:20:\"module/pavautosearch\";i:210;s:21:\"module/pavtestimonial\";i:211;s:17:\"module/pavinfobox\";i:212;s:13:\"module/latest\";i:213;s:14:\"module/special\";i:214;s:22:\"module/pavverticalmenu\";i:215;s:20:\"module/pavautosearch\";i:216;s:21:\"module/pavreassurance\";i:217;s:21:\"module/pavtestimonial\";i:218;s:20:\"module/pavfooterlink\";i:219;s:20:\"module/pavnewsletter\";i:220;s:21:\"module/pavproducttabs\";i:221;s:23:\"module/pavbannerbuilder\";i:222;s:25:\"module/pavproductcarousel\";i:223;s:21:\"module/pavproducttabs\";i:224;s:17:\"module/pavtwitter\";i:225;s:21:\"module/pavsliderlayer\";i:226;s:21:\"module/pavsliderlayer\";i:227;s:21:\"module/pavtestimonial\";i:228;s:15:\"module/featured\";i:229;s:16:\"module/pavsocial\";}s:6:\"modify\";a:230:{i:0;s:17:\"catalog/attribute\";i:1;s:23:\"catalog/attribute_group\";i:2;s:16:\"catalog/category\";i:3;s:16:\"catalog/download\";i:4;s:14:\"catalog/filter\";i:5;s:19:\"catalog/information\";i:6;s:20:\"catalog/manufacturer\";i:7;s:14:\"catalog/option\";i:8;s:15:\"catalog/product\";i:9;s:17:\"catalog/recurring\";i:10;s:14:\"catalog/review\";i:11;s:18:\"common/column_left\";i:12;s:18:\"common/filemanager\";i:13;s:11:\"common/menu\";i:14;s:14:\"common/profile\";i:15;s:12:\"common/stats\";i:16;s:18:\"dashboard/activity\";i:17;s:15:\"dashboard/chart\";i:18;s:18:\"dashboard/customer\";i:19;s:13:\"dashboard/map\";i:20;s:16:\"dashboard/online\";i:21;s:15:\"dashboard/order\";i:22;s:16:\"dashboard/recent\";i:23;s:14:\"dashboard/sale\";i:24;s:13:\"design/banner\";i:25;s:13:\"design/layout\";i:26;s:14:\"extension/feed\";i:27;s:19:\"extension/installer\";i:28;s:22:\"extension/modification\";i:29;s:16:\"extension/module\";i:30;s:17:\"extension/openbay\";i:31;s:17:\"extension/payment\";i:32;s:18:\"extension/shipping\";i:33;s:15:\"extension/total\";i:34;s:16:\"feed/google_base\";i:35;s:19:\"feed/google_sitemap\";i:36;s:15:\"feed/openbaypro\";i:37;s:20:\"localisation/country\";i:38;s:21:\"localisation/currency\";i:39;s:21:\"localisation/geo_zone\";i:40;s:21:\"localisation/language\";i:41;s:25:\"localisation/length_class\";i:42;s:21:\"localisation/location\";i:43;s:25:\"localisation/order_status\";i:44;s:26:\"localisation/return_action\";i:45;s:26:\"localisation/return_reason\";i:46;s:26:\"localisation/return_status\";i:47;s:25:\"localisation/stock_status\";i:48;s:22:\"localisation/tax_class\";i:49;s:21:\"localisation/tax_rate\";i:50;s:25:\"localisation/weight_class\";i:51;s:17:\"localisation/zone\";i:52;s:19:\"marketing/affiliate\";i:53;s:17:\"marketing/contact\";i:54;s:16:\"marketing/coupon\";i:55;s:19:\"marketing/marketing\";i:56;s:14:\"module/account\";i:57;s:16:\"module/affiliate\";i:58;s:20:\"module/amazon_button\";i:59;s:13:\"module/banner\";i:60;s:17:\"module/bestseller\";i:61;s:15:\"module/carousel\";i:62;s:15:\"module/category\";i:63;s:11:\"module/ebay\";i:64;s:15:\"module/featured\";i:65;s:13:\"module/filter\";i:66;s:22:\"module/google_hangouts\";i:67;s:11:\"module/html\";i:68;s:18:\"module/information\";i:69;s:13:\"module/latest\";i:70;s:16:\"module/pp_button\";i:71;s:15:\"module/pp_login\";i:72;s:16:\"module/slideshow\";i:73;s:14:\"module/special\";i:74;s:12:\"module/store\";i:75;s:14:\"openbay/amazon\";i:76;s:22:\"openbay/amazon_listing\";i:77;s:22:\"openbay/amazon_product\";i:78;s:16:\"openbay/amazonus\";i:79;s:24:\"openbay/amazonus_listing\";i:80;s:24:\"openbay/amazonus_product\";i:81;s:12:\"openbay/ebay\";i:82;s:20:\"openbay/ebay_profile\";i:83;s:21:\"openbay/ebay_template\";i:84;s:12:\"openbay/etsy\";i:85;s:20:\"openbay/etsy_product\";i:86;s:21:\"openbay/etsy_shipping\";i:87;s:17:\"openbay/etsy_shop\";i:88;s:23:\"payment/amazon_checkout\";i:89;s:24:\"payment/authorizenet_aim\";i:90;s:24:\"payment/authorizenet_sim\";i:91;s:21:\"payment/bank_transfer\";i:92;s:22:\"payment/bluepay_hosted\";i:93;s:24:\"payment/bluepay_redirect\";i:94;s:14:\"payment/cheque\";i:95;s:11:\"payment/cod\";i:96;s:17:\"payment/firstdata\";i:97;s:24:\"payment/firstdata_remote\";i:98;s:21:\"payment/free_checkout\";i:99;s:22:\"payment/klarna_account\";i:100;s:22:\"payment/klarna_invoice\";i:101;s:14:\"payment/liqpay\";i:102;s:14:\"payment/nochex\";i:103;s:15:\"payment/paymate\";i:104;s:16:\"payment/paypoint\";i:105;s:13:\"payment/payza\";i:106;s:26:\"payment/perpetual_payments\";i:107;s:18:\"payment/pp_express\";i:108;s:18:\"payment/pp_payflow\";i:109;s:25:\"payment/pp_payflow_iframe\";i:110;s:14:\"payment/pp_pro\";i:111;s:21:\"payment/pp_pro_iframe\";i:112;s:19:\"payment/pp_standard\";i:113;s:14:\"payment/realex\";i:114;s:21:\"payment/realex_remote\";i:115;s:22:\"payment/sagepay_direct\";i:116;s:22:\"payment/sagepay_server\";i:117;s:18:\"payment/sagepay_us\";i:118;s:24:\"payment/securetrading_pp\";i:119;s:24:\"payment/securetrading_ws\";i:120;s:14:\"payment/skrill\";i:121;s:19:\"payment/twocheckout\";i:122;s:28:\"payment/web_payment_software\";i:123;s:16:\"payment/worldpay\";i:124;s:16:\"report/affiliate\";i:125;s:25:\"report/affiliate_activity\";i:126;s:22:\"report/affiliate_login\";i:127;s:24:\"report/customer_activity\";i:128;s:22:\"report/customer_credit\";i:129;s:21:\"report/customer_login\";i:130;s:22:\"report/customer_online\";i:131;s:21:\"report/customer_order\";i:132;s:22:\"report/customer_reward\";i:133;s:16:\"report/marketing\";i:134;s:24:\"report/product_purchased\";i:135;s:21:\"report/product_viewed\";i:136;s:18:\"report/sale_coupon\";i:137;s:17:\"report/sale_order\";i:138;s:18:\"report/sale_return\";i:139;s:20:\"report/sale_shipping\";i:140;s:15:\"report/sale_tax\";i:141;s:17:\"sale/custom_field\";i:142;s:13:\"sale/customer\";i:143;s:20:\"sale/customer_ban_ip\";i:144;s:19:\"sale/customer_group\";i:145;s:10:\"sale/order\";i:146;s:14:\"sale/recurring\";i:147;s:11:\"sale/return\";i:148;s:12:\"sale/voucher\";i:149;s:18:\"sale/voucher_theme\";i:150;s:15:\"setting/setting\";i:151;s:13:\"setting/store\";i:152;s:16:\"shipping/auspost\";i:153;s:17:\"shipping/citylink\";i:154;s:14:\"shipping/fedex\";i:155;s:13:\"shipping/flat\";i:156;s:13:\"shipping/free\";i:157;s:13:\"shipping/item\";i:158;s:23:\"shipping/parcelforce_48\";i:159;s:15:\"shipping/pickup\";i:160;s:19:\"shipping/royal_mail\";i:161;s:12:\"shipping/ups\";i:162;s:13:\"shipping/usps\";i:163;s:15:\"shipping/weight\";i:164;s:11:\"tool/backup\";i:165;s:14:\"tool/error_log\";i:166;s:11:\"tool/upload\";i:167;s:12:\"total/coupon\";i:168;s:12:\"total/credit\";i:169;s:14:\"total/handling\";i:170;s:16:\"total/klarna_fee\";i:171;s:19:\"total/low_order_fee\";i:172;s:12:\"total/reward\";i:173;s:14:\"total/shipping\";i:174;s:15:\"total/sub_total\";i:175;s:9:\"total/tax\";i:176;s:11:\"total/total\";i:177;s:13:\"total/voucher\";i:178;s:8:\"user/api\";i:179;s:9:\"user/user\";i:180;s:20:\"user/user_permission\";i:181;s:19:\"module/themecontrol\";i:182;s:18:\"module/pavmegamenu\";i:183;s:20:\"module/pavnewsletter\";i:184;s:19:\"module/themecontrol\";i:185;s:19:\"module/themecontrol\";i:186;s:18:\"module/pavcarousel\";i:187;s:21:\"module/pavreassurance\";i:188;s:20:\"module/pavbloglatest\";i:189;s:21:\"module/pavblogcomment\";i:190;s:22:\"module/pavblogcategory\";i:191;s:14:\"module/pavblog\";i:192;s:21:\"module/pavsliderlayer\";i:193;s:13:\"module/filter\";i:194;s:17:\"module/bestseller\";i:195;s:15:\"module/pavdeals\";i:196;s:18:\"module/pavproducts\";i:197;s:22:\"module/pavverticalmenu\";i:198;s:23:\"module/pavbannerbuilder\";i:199;s:22:\"module/pavverticalmenu\";i:200;s:18:\"module/pavmegamenu\";i:201;s:18:\"module/pavmegamenu\";i:202;s:22:\"module/pavverticalmenu\";i:203;s:22:\"module/pavverticalmenu\";i:204;s:22:\"module/pavverticalmenu\";i:205;s:18:\"module/pavmegamenu\";i:206;s:23:\"module/pavbannerbuilder\";i:207;s:21:\"module/pavhomebuilder\";i:208;s:25:\"module/pavproductcarousel\";i:209;s:20:\"module/pavautosearch\";i:210;s:21:\"module/pavtestimonial\";i:211;s:17:\"module/pavinfobox\";i:212;s:13:\"module/latest\";i:213;s:14:\"module/special\";i:214;s:22:\"module/pavverticalmenu\";i:215;s:20:\"module/pavautosearch\";i:216;s:21:\"module/pavreassurance\";i:217;s:21:\"module/pavtestimonial\";i:218;s:20:\"module/pavfooterlink\";i:219;s:20:\"module/pavnewsletter\";i:220;s:21:\"module/pavproducttabs\";i:221;s:23:\"module/pavbannerbuilder\";i:222;s:25:\"module/pavproductcarousel\";i:223;s:21:\"module/pavproducttabs\";i:224;s:17:\"module/pavtwitter\";i:225;s:21:\"module/pavsliderlayer\";i:226;s:21:\"module/pavsliderlayer\";i:227;s:21:\"module/pavtestimonial\";i:228;s:15:\"module/featured\";i:229;s:16:\"module/pavsocial\";}}'),(10,'Demonstration','');
/*!40000 ALTER TABLE `oc_user_group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu`
--

DROP TABLE IF EXISTS `oc_verticalmenu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu` (
  `verticalmenu_id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL DEFAULT '',
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `is_group` smallint(6) NOT NULL DEFAULT '2',
  `width` varchar(255) DEFAULT NULL,
  `submenu_width` varchar(255) DEFAULT NULL,
  `colum_width` varchar(255) DEFAULT NULL,
  `submenu_colum_width` varchar(255) DEFAULT NULL,
  `item` varchar(255) DEFAULT NULL,
  `colums` varchar(255) DEFAULT '1',
  `type` varchar(255) NOT NULL,
  `is_content` smallint(6) NOT NULL DEFAULT '2',
  `show_title` smallint(6) NOT NULL DEFAULT '1',
  `type_submenu` varchar(10) NOT NULL DEFAULT '1',
  `level_depth` smallint(6) NOT NULL DEFAULT '0',
  `published` smallint(6) NOT NULL DEFAULT '1',
  `store_id` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position` int(11) unsigned NOT NULL DEFAULT '0',
  `show_sub` smallint(6) NOT NULL DEFAULT '0',
  `url` varchar(255) DEFAULT NULL,
  `target` varchar(25) DEFAULT NULL,
  `privacy` smallint(5) unsigned NOT NULL DEFAULT '0',
  `position_type` varchar(25) DEFAULT 'top',
  `menu_class` varchar(25) DEFAULT NULL,
  `description` text,
  `content_text` text,
  `submenu_content` text,
  `level` int(11) NOT NULL,
  `left` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `widget_id` int(11) DEFAULT '0',
  `icon` text,
  PRIMARY KEY (`verticalmenu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu`
--

LOCK TABLES `oc_verticalmenu` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu` VALUES (1,'',0,2,'','','','','','1','',2,1,'1',0,1,0,0,0,'','',0,'top','','','','',-5,34,47,0,NULL),(2,'catalog/demo/icon/icon-1.png',1,0,'','','','col1=3, col2=3, col3=6','24','3','category',0,1,'menu',0,1,0,2,0,'','',0,'top','topdropdow','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(5,'catalog/demo/icon/icon-2.png',1,0,'','','','','46','1','category',0,1,'menu',0,1,0,3,0,'','',0,'top','topdropdow','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(7,'catalog/demo/icon/icon-3.png',1,0,'','','','','45','1','category',0,1,'menu',0,1,0,1,0,'','',0,'top','bg2','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(35,'catalog/demo/icon/icon-8.png',1,0,'','','','','45','1','category',0,1,'menu',0,1,0,8,0,'','',0,'top','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(36,'catalog/demo/icon/icon-7.png',1,0,'','','','','33','1','category',0,1,'menu',0,1,0,7,0,'','',0,'top','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(37,'catalog/demo/icon/icon-4.png',1,0,'','','','','57','1','category',0,1,'menu',0,1,0,4,0,'','',0,'top','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(38,'catalog/demo/icon/icon-5.png',1,0,'','','','','20','1','category',0,1,'menu',0,1,0,5,0,'','',0,'top','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(41,'catalog/demo/icon/icon-6.png',1,0,'','','','','17','1','category',0,1,'menu',0,1,0,6,0,'','',0,'top','','','&lt;p&gt;&lt;br&gt;&lt;/p&gt;','&lt;p&gt;&lt;br&gt;&lt;/p&gt;',0,0,0,2,''),(45,'',0,2,NULL,NULL,NULL,NULL,NULL,'1','',2,1,'1',0,1,0,0,0,NULL,NULL,0,'top',NULL,NULL,NULL,NULL,0,0,0,0,NULL);
/*!40000 ALTER TABLE `oc_verticalmenu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu_description`
--

DROP TABLE IF EXISTS `oc_verticalmenu_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu_description` (
  `verticalmenu_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`verticalmenu_id`,`language_id`),
  KEY `name` (`title`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu_description`
--

LOCK TABLES `oc_verticalmenu_description` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu_description` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu_description` VALUES (35,2,'Beauty &amp; Health',''),(38,1,'Decor &amp; Furniture',''),(37,1,'Home, Garden &amp; Tools',''),(2,2,'Electronics &amp; Computer',''),(36,1,'Gifts, Parties &amp; Holiday',''),(35,1,'Beauty &amp; Health',''),(41,2,'Sports &amp; Outdoors',''),(5,1,'Toys, Kids &amp; Baby',''),(7,2,'Fashion &amp; Clothing',''),(41,1,'Sports &amp; Outdoors',''),(2,1,'Electronics &amp; Computer',''),(7,1,'Fashion &amp; Clothing',''),(5,2,'Toys, Kids &amp; Baby',''),(37,2,'Home, Garden &amp; Tools',''),(38,2,'Decor &amp; Furniture',''),(36,2,'Gifts, Parties &amp; Holiday','');
/*!40000 ALTER TABLE `oc_verticalmenu_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_verticalmenu_widgets`
--

DROP TABLE IF EXISTS `oc_verticalmenu_widgets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_verticalmenu_widgets` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(250) NOT NULL,
  `type` varchar(255) NOT NULL,
  `params` text NOT NULL,
  `store_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=75 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_verticalmenu_widgets`
--

LOCK TABLES `oc_verticalmenu_widgets` WRITE;
/*!40000 ALTER TABLE `oc_verticalmenu_widgets` DISABLE KEYS */;
INSERT INTO `oc_verticalmenu_widgets` VALUES (2,'Dermo HTML Sample','html','a:1:{s:4:\"html\";a:1:{i:1;s:275:\"Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel. Dorem ipsum dolor sit amet consectetur adipiscing elit congue sit amet erat roin tincidunt vehicula lorem in adipiscing urna iaculis vel.\";}}',0),(4,'Products In Cat 20','product_category','a:4:{s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"6\";s:11:\"image_width\";s:3:\"120\";s:12:\"image_height\";s:3:\"120\";}',0),(5,'Manufactures','banner','a:4:{s:8:\"group_id\";s:1:\"8\";s:11:\"image_width\";s:2:\"80\";s:12:\"image_height\";s:2:\"80\";s:5:\"limit\";s:2:\"12\";}',0),(6,'PavoThemes Feed','feed','a:1:{s:8:\"feed_url\";s:55:\"http://www.pavothemes.com/opencart-themes.feed?type=rss\";}',0),(10,'','video','a:12:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:5:\"video\";s:11:\"widget_name\";s:27:\"Video Opencart Installation\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:27:\"Video Opencart Installation\";s:12:\"addition_cls\";s:0:\"\";s:10:\"video_link\";s:40:\"http://www.youtube.com/embed/cUhPA5qIxDQ\";s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"281\";s:9:\"subinfo_3\";s:3:\"300\";s:9:\"subinfo_1\";s:3:\"300\";}',0),(8,'','html','a:9:{s:4:\"wkey\";s:1:\"8\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:10:\"categories\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_3\";s:29:\"&lt;p&gt;&lt;br&gt;&lt;/p&gt;\";s:13:\"htmlcontent_1\";s:991:\"&lt;ul class=&quot;list&quot;&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=62&quot;&gt;Dresses&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=63&quot;&gt;New&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=64&quot;&gt;Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=65&quot;&gt;Tops&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=66&quot;&gt;Bottoms&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=67&quot;&gt;Jewellery&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=68&quot;&gt;Hair Accessories&lt;/a&gt;  &lt;/li&gt;  &lt;li&gt;    &lt;a href=&quot;index.php?route=product/category&amp;path=69&quot;&gt;Sunglasses&lt;/a&gt;  &lt;/li&gt;&lt;/ul&gt;\";}',0),(9,'','product','a:10:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:7:\"product\";s:11:\"widget_name\";s:15:\"Products Latest\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:15:\"Products Latest\";s:12:\"addition_cls\";s:7:\"sidebar\";s:10:\"product_id\";s:2:\"34\";s:11:\"image_width\";s:3:\"200\";s:12:\"image_height\";s:3:\"200\";}',0),(11,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"11\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:10:\"categories\";s:12:\"addition_cls\";s:4:\"list\";s:6:\"catids\";s:23:\"17,34,24,33,25,26,27,57\";}',0),(15,'','product_list','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:10:\"categories\";s:12:\"addition_cls\";s:0:\"\";s:5:\"limit\";s:1:\"3\";s:9:\"list_type\";s:6:\"newest\";}',0),(16,'','product_list','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:15:\"Products Latest\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:15:\"Products Latest\";s:12:\"addition_cls\";s:0:\"\";s:5:\"limit\";s:1:\"3\";s:9:\"list_type\";s:7:\"special\";}',0),(17,'','video','a:12:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:5:\"video\";s:11:\"widget_name\";s:27:\"Video Opencart Installation\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:27:\"Video Opencart Installation\";s:12:\"addition_cls\";s:0:\"\";s:10:\"video_link\";s:40:\"http://www.youtube.com/embed/cUhPA5qIxDQ\";s:5:\"width\";s:3:\"500\";s:6:\"height\";s:3:\"281\";s:9:\"subinfo_3\";s:3:\"300\";s:9:\"subinfo_1\";s:3:\"300\";}',0),(18,'','categories_list','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_3\";s:0:\"\";s:14:\"widget_title_1\";s:10:\"categories\";s:12:\"addition_cls\";s:0:\"\";s:6:\"catids\";s:20:\"17,34,24,33,25,26,57\";}',0),(58,'','sub_categories','a:9:{s:4:\"wkey\";s:2:\"58\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:10:\"Automative\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:10:\"Automative\";s:14:\"widget_title_2\";s:10:\"Automative\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:1:\"8\";}',0),(21,'','html','a:9:{s:4:\"wkey\";s:2:\"21\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:17:\"Makes a photoshop\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:17:\"Makes a photoshop\";s:14:\"widget_title_2\";s:17:\"Makes a photoshop\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:295:\"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;\";s:13:\"htmlcontent_2\";s:295:\"&lt;div class=&quot;content &quot;&gt;    &lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula.&lt;/p&gt;&lt;/div&gt;\";}',0),(23,'','html','a:9:{s:4:\"wkey\";s:2:\"23\";s:5:\"wtype\";s:4:\"html\";s:11:\"widget_name\";s:17:\"Makes a photoshop\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:17:\"Makes a photoshop\";s:14:\"widget_title_4\";s:17:\"Makes a photoshop\";s:12:\"addition_cls\";s:0:\"\";s:13:\"htmlcontent_1\";s:145:\"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;\";s:13:\"htmlcontent_4\";s:145:\"&lt;p&gt;Lorem ipsum dolor sit amet consectetuer adipiscing eli Aenean commodo ligula bus et magnis dis parturient eu pretium quis sem.&lt;/p&gt;\";}',0),(27,'','categories_list','a:8:{s:4:\"wkey\";s:2:\"27\";s:5:\"wtype\";s:15:\"categories_list\";s:11:\"widget_name\";s:10:\"categories\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:10:\"categories\";s:14:\"widget_title_4\";s:10:\"categories\";s:12:\"addition_cls\";s:7:\"bullets\";s:6:\"catids\";s:20:\"17,24,33,42,45,46,57\";}',0),(29,'','product_list','a:9:{s:4:\"wkey\";s:2:\"29\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:16:\"Products Special\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:16:\"Products Special\";s:14:\"widget_title_4\";s:16:\"Products Special\";s:12:\"addition_cls\";s:7:\"sidebar\";s:5:\"limit\";s:1:\"3\";s:9:\"list_type\";s:7:\"special\";}',0),(31,'','video','a:12:{s:4:\"wkey\";s:2:\"31\";s:5:\"wtype\";s:5:\"video\";s:11:\"widget_name\";s:20:\"Video Install Widget\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:20:\"Video Install Widget\";s:14:\"widget_title_4\";s:20:\"Video Install Widget\";s:12:\"addition_cls\";s:0:\"\";s:10:\"video_link\";s:42:\"http://www.youtube.com/watch?v=lzY4lkT8ElU\";s:5:\"width\";s:5:\"465px\";s:6:\"height\";s:5:\"281px\";s:9:\"subinfo_1\";s:3:\"300\";s:9:\"subinfo_4\";s:3:\"300\";}',0),(32,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"10\";}',0),(33,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"10\";}',0),(34,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"11\";}',0),(35,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"11\";}',0),(36,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(37,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(38,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(39,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(40,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(41,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(42,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(43,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:8:\"asdfasdf\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:8:\"asdfadsf\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(44,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(45,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(46,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(47,'','button','a:13:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:6:\"button\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:12:\"button_title\";s:4:\"Save\";s:4:\"href\";s:23:\"http://www.leotheme.com\";s:12:\"color_button\";s:11:\"btn-default\";s:4:\"icon\";s:0:\"\";s:4:\"size\";s:6:\"btn-sm\";s:8:\"el_class\";s:0:\"\";}',0),(48,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(49,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(50,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(51,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:0:\"\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:0:\"\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(52,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(53,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(54,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:0:\"\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:2:\"12\";}',0),(55,'','sub_categories','a:9:{s:4:\"wkey\";s:2:\"55\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:8:\"Homeware\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:8:\"Homeware\";s:14:\"widget_title_2\";s:8:\"Homeware\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:1:\"5\";}',0),(56,'','sub_categories','a:9:{s:4:\"wkey\";s:2:\"56\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:11:\"Electronics\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:1:\"5\";}',0),(60,'','manufacture','a:13:{s:4:\"wkey\";s:2:\"60\";s:5:\"wtype\";s:11:\"manufacture\";s:11:\"widget_name\";s:17:\"Logo Menufactures\";s:10:\"show_title\";s:1:\"0\";s:14:\"widget_title_1\";s:17:\"Logo Menufactures\";s:14:\"widget_title_2\";s:17:\"Logo Menufactures\";s:12:\"addition_cls\";s:0:\"\";s:9:\"banner_id\";s:1:\"8\";s:5:\"limit\";s:1:\"8\";s:7:\"columns\";s:1:\"4\";s:12:\"itemsperpage\";s:1:\"8\";s:5:\"width\";s:3:\"120\";s:6:\"height\";s:3:\"120\";}',0),(61,'','product_list','a:15:{s:4:\"wkey\";s:2:\"61\";s:5:\"wtype\";s:12:\"product_list\";s:11:\"widget_name\";s:15:\"Product special\";s:10:\"show_title\";s:1:\"0\";s:14:\"widget_title_1\";s:15:\"Product special\";s:14:\"widget_title_2\";s:15:\"Product special\";s:12:\"addition_cls\";s:0:\"\";s:9:\"imagefile\";s:0:\"\";s:4:\"size\";s:0:\"\";s:5:\"limit\";s:1:\"3\";s:6:\"column\";s:1:\"4\";s:12:\"itemsperpage\";s:1:\"3\";s:5:\"width\";s:3:\"200\";s:6:\"height\";s:3:\"200\";s:9:\"list_type\";s:6:\"newest\";}',0),(63,'','sub_categories','a:9:{s:4:\"wkey\";s:2:\"63\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:22:\"Mobile &amp; Notebooks\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:22:\"Mobile &amp; Notebooks\";s:14:\"widget_title_2\";s:22:\"Mobile &amp; Notebooks\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"25\";s:5:\"limit\";s:1:\"5\";}',0),(64,'','list_links','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:10:\"list_links\";s:11:\"widget_name\";s:11:\"Women shoes\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Women shoes\";s:14:\"widget_title_2\";s:11:\"Women shoes\";s:12:\"addition_cls\";s:0:\"\";s:5:\"links\";a:4:{i:0;s:2:\"36\";i:1;s:2:\"45\";i:2;s:2:\"46\";i:3;s:2:\"59\";}}',0),(65,'','list_links','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:10:\"list_links\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:11:\"Electronics\";s:12:\"addition_cls\";s:0:\"\";s:5:\"links\";a:4:{i:0;s:2:\"61\";i:1;s:2:\"62\";i:2;s:2:\"63\";i:3;s:2:\"63\";}}',0),(66,'','list_links','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:10:\"list_links\";s:11:\"widget_name\";s:8:\"Homeware\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:8:\"Homeware\";s:14:\"widget_title_2\";s:8:\"Homeware\";s:12:\"addition_cls\";s:0:\"\";s:5:\"links\";a:4:{i:0;s:2:\"69\";i:1;s:2:\"70\";i:2;s:2:\"71\";i:3;s:2:\"72\";}}',0),(67,'','list_links','a:8:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:10:\"list_links\";s:11:\"widget_name\";s:7:\"Jewelry\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:7:\"Jewelry\";s:14:\"widget_title_2\";s:7:\"Jewelry\";s:12:\"addition_cls\";s:0:\"\";s:5:\"links\";a:4:{i:0;s:2:\"36\";i:1;s:2:\"45\";i:2;s:2:\"61\";i:3;s:2:\"72\";}}',0),(72,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:7:\"Fashion\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:7:\"Fashion\";s:14:\"widget_title_2\";s:7:\"Fashion\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"33\";s:5:\"limit\";s:1:\"4\";}',0),(71,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Electronics\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Electronics\";s:14:\"widget_title_2\";s:11:\"Electronics\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"4\";}',0),(73,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:8:\"Homeware\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:8:\"Homeware\";s:14:\"widget_title_2\";s:8:\"Homeware\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"33\";s:5:\"limit\";s:1:\"4\";}',0),(74,'','sub_categories','a:9:{s:4:\"wkey\";s:1:\"0\";s:5:\"wtype\";s:14:\"sub_categories\";s:11:\"widget_name\";s:11:\"Women shoes\";s:10:\"show_title\";s:1:\"1\";s:14:\"widget_title_1\";s:11:\"Women shoes\";s:14:\"widget_title_2\";s:11:\"Women shoes\";s:12:\"addition_cls\";s:0:\"\";s:11:\"category_id\";s:2:\"20\";s:5:\"limit\";s:1:\"4\";}',0);
/*!40000 ALTER TABLE `oc_verticalmenu_widgets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher`
--

DROP TABLE IF EXISTS `oc_voucher`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher` (
  `voucher_id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `code` varchar(10) NOT NULL,
  `from_name` varchar(64) NOT NULL,
  `from_email` varchar(96) NOT NULL,
  `to_name` varchar(64) NOT NULL,
  `to_email` varchar(96) NOT NULL,
  `voucher_theme_id` int(11) NOT NULL,
  `message` text NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher`
--

LOCK TABLES `oc_voucher` WRITE;
/*!40000 ALTER TABLE `oc_voucher` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_history`
--

DROP TABLE IF EXISTS `oc_voucher_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_history` (
  `voucher_history_id` int(11) NOT NULL AUTO_INCREMENT,
  `voucher_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `amount` decimal(15,4) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`voucher_history_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_history`
--

LOCK TABLES `oc_voucher_history` WRITE;
/*!40000 ALTER TABLE `oc_voucher_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `oc_voucher_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme`
--

DROP TABLE IF EXISTS `oc_voucher_theme`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme` (
  `voucher_theme_id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`)
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme`
--

LOCK TABLES `oc_voucher_theme` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme` VALUES (8,'catalog/demo/canon_eos_5d_2.jpg'),(7,'catalog/demo/gift-voucher-birthday.jpg'),(6,'catalog/demo/apple_logo.jpg');
/*!40000 ALTER TABLE `oc_voucher_theme` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_voucher_theme_description`
--

DROP TABLE IF EXISTS `oc_voucher_theme_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_voucher_theme_description` (
  `voucher_theme_id` int(11) NOT NULL,
  `language_id` int(11) NOT NULL,
  `name` varchar(32) NOT NULL,
  PRIMARY KEY (`voucher_theme_id`,`language_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_voucher_theme_description`
--

LOCK TABLES `oc_voucher_theme_description` WRITE;
/*!40000 ALTER TABLE `oc_voucher_theme_description` DISABLE KEYS */;
INSERT INTO `oc_voucher_theme_description` VALUES (6,1,'Christmas'),(7,1,'Birthday'),(8,1,'General'),(6,2,'Christmas'),(7,2,'Birthday'),(8,2,'General');
/*!40000 ALTER TABLE `oc_voucher_theme_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class`
--

DROP TABLE IF EXISTS `oc_weight_class`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `value` decimal(15,8) NOT NULL DEFAULT '0.00000000',
  PRIMARY KEY (`weight_class_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class`
--

LOCK TABLES `oc_weight_class` WRITE;
/*!40000 ALTER TABLE `oc_weight_class` DISABLE KEYS */;
INSERT INTO `oc_weight_class` VALUES (1,1.00000000),(2,1000.00000000),(5,2.20460000),(6,35.27400000);
/*!40000 ALTER TABLE `oc_weight_class` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_weight_class_description`
--

DROP TABLE IF EXISTS `oc_weight_class_description`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_weight_class_description` (
  `weight_class_id` int(11) NOT NULL AUTO_INCREMENT,
  `language_id` int(11) NOT NULL,
  `title` varchar(32) NOT NULL,
  `unit` varchar(4) NOT NULL,
  PRIMARY KEY (`weight_class_id`,`language_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_weight_class_description`
--

LOCK TABLES `oc_weight_class_description` WRITE;
/*!40000 ALTER TABLE `oc_weight_class_description` DISABLE KEYS */;
INSERT INTO `oc_weight_class_description` VALUES (1,1,'Kilogram','kg'),(2,1,'Gram','g'),(5,1,'Pound ','lb'),(6,1,'Ounce','oz'),(1,2,'Kilogram','kg'),(2,2,'Gram','g'),(5,2,'Pound ','lb'),(6,2,'Ounce','oz');
/*!40000 ALTER TABLE `oc_weight_class_description` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone`
--

DROP TABLE IF EXISTS `oc_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone` (
  `zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(32) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4225 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone`
--

LOCK TABLES `oc_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone` DISABLE KEYS */;
INSERT INTO `oc_zone` VALUES (1,1,'Badakhshan','BDS',1),(2,1,'Badghis','BDG',1),(3,1,'Baghlan','BGL',1),(4,1,'Balkh','BAL',1),(5,1,'Bamian','BAM',1),(6,1,'Farah','FRA',1),(7,1,'Faryab','FYB',1),(8,1,'Ghazni','GHA',1),(9,1,'Ghowr','GHO',1),(10,1,'Helmand','HEL',1),(11,1,'Herat','HER',1),(12,1,'Jowzjan','JOW',1),(13,1,'Kabul','KAB',1),(14,1,'Kandahar','KAN',1),(15,1,'Kapisa','KAP',1),(16,1,'Khost','KHO',1),(17,1,'Konar','KNR',1),(18,1,'Kondoz','KDZ',1),(19,1,'Laghman','LAG',1),(20,1,'Lowgar','LOW',1),(21,1,'Nangrahar','NAN',1),(22,1,'Nimruz','NIM',1),(23,1,'Nurestan','NUR',1),(24,1,'Oruzgan','ORU',1),(25,1,'Paktia','PIA',1),(26,1,'Paktika','PKA',1),(27,1,'Parwan','PAR',1),(28,1,'Samangan','SAM',1),(29,1,'Sar-e Pol','SAR',1),(30,1,'Takhar','TAK',1),(31,1,'Wardak','WAR',1),(32,1,'Zabol','ZAB',1),(33,2,'Berat','BR',1),(34,2,'Bulqize','BU',1),(35,2,'Delvine','DL',1),(36,2,'Devoll','DV',1),(37,2,'Diber','DI',1),(38,2,'Durres','DR',1),(39,2,'Elbasan','EL',1),(40,2,'Kolonje','ER',1),(41,2,'Fier','FR',1),(42,2,'Gjirokaster','GJ',1),(43,2,'Gramsh','GR',1),(44,2,'Has','HA',1),(45,2,'Kavaje','KA',1),(46,2,'Kurbin','KB',1),(47,2,'Kucove','KC',1),(48,2,'Korce','KO',1),(49,2,'Kruje','KR',1),(50,2,'Kukes','KU',1),(51,2,'Librazhd','LB',1),(52,2,'Lezhe','LE',1),(53,2,'Lushnje','LU',1),(54,2,'Malesi e Madhe','MM',1),(55,2,'Mallakaster','MK',1),(56,2,'Mat','MT',1),(57,2,'Mirdite','MR',1),(58,2,'Peqin','PQ',1),(59,2,'Permet','PR',1),(60,2,'Pogradec','PG',1),(61,2,'Puke','PU',1),(62,2,'Shkoder','SH',1),(63,2,'Skrapar','SK',1),(64,2,'Sarande','SR',1),(65,2,'Tepelene','TE',1),(66,2,'Tropoje','TP',1),(67,2,'Tirane','TR',1),(68,2,'Vlore','VL',1),(69,3,'Adrar','ADR',1),(70,3,'Ain Defla','ADE',1),(71,3,'Ain Temouchent','ATE',1),(72,3,'Alger','ALG',1),(73,3,'Annaba','ANN',1),(74,3,'Batna','BAT',1),(75,3,'Bechar','BEC',1),(76,3,'Bejaia','BEJ',1),(77,3,'Biskra','BIS',1),(78,3,'Blida','BLI',1),(79,3,'Bordj Bou Arreridj','BBA',1),(80,3,'Bouira','BOA',1),(81,3,'Boumerdes','BMD',1),(82,3,'Chlef','CHL',1),(83,3,'Constantine','CON',1),(84,3,'Djelfa','DJE',1),(85,3,'El Bayadh','EBA',1),(86,3,'El Oued','EOU',1),(87,3,'El Tarf','ETA',1),(88,3,'Ghardaia','GHA',1),(89,3,'Guelma','GUE',1),(90,3,'Illizi','ILL',1),(91,3,'Jijel','JIJ',1),(92,3,'Khenchela','KHE',1),(93,3,'Laghouat','LAG',1),(94,3,'Muaskar','MUA',1),(95,3,'Medea','MED',1),(96,3,'Mila','MIL',1),(97,3,'Mostaganem','MOS',1),(98,3,'M\'Sila','MSI',1),(99,3,'Naama','NAA',1),(100,3,'Oran','ORA',1),(101,3,'Ouargla','OUA',1),(102,3,'Oum el-Bouaghi','OEB',1),(103,3,'Relizane','REL',1),(104,3,'Saida','SAI',1),(105,3,'Setif','SET',1),(106,3,'Sidi Bel Abbes','SBA',1),(107,3,'Skikda','SKI',1),(108,3,'Souk Ahras','SAH',1),(109,3,'Tamanghasset','TAM',1),(110,3,'Tebessa','TEB',1),(111,3,'Tiaret','TIA',1),(112,3,'Tindouf','TIN',1),(113,3,'Tipaza','TIP',1),(114,3,'Tissemsilt','TIS',1),(115,3,'Tizi Ouzou','TOU',1),(116,3,'Tlemcen','TLE',1),(117,4,'Eastern','E',1),(118,4,'Manu\'a','M',1),(119,4,'Rose Island','R',1),(120,4,'Swains Island','S',1),(121,4,'Western','W',1),(122,5,'Andorra la Vella','ALV',1),(123,5,'Canillo','CAN',1),(124,5,'Encamp','ENC',1),(125,5,'Escaldes-Engordany','ESE',1),(126,5,'La Massana','LMA',1),(127,5,'Ordino','ORD',1),(128,5,'Sant Julia de Loria','SJL',1),(129,6,'Bengo','BGO',1),(130,6,'Benguela','BGU',1),(131,6,'Bie','BIE',1),(132,6,'Cabinda','CAB',1),(133,6,'Cuando-Cubango','CCU',1),(134,6,'Cuanza Norte','CNO',1),(135,6,'Cuanza Sul','CUS',1),(136,6,'Cunene','CNN',1),(137,6,'Huambo','HUA',1),(138,6,'Huila','HUI',1),(139,6,'Luanda','LUA',1),(140,6,'Lunda Norte','LNO',1),(141,6,'Lunda Sul','LSU',1),(142,6,'Malange','MAL',1),(143,6,'Moxico','MOX',1),(144,6,'Namibe','NAM',1),(145,6,'Uige','UIG',1),(146,6,'Zaire','ZAI',1),(147,9,'Saint George','ASG',1),(148,9,'Saint John','ASJ',1),(149,9,'Saint Mary','ASM',1),(150,9,'Saint Paul','ASL',1),(151,9,'Saint Peter','ASR',1),(152,9,'Saint Philip','ASH',1),(153,9,'Barbuda','BAR',1),(154,9,'Redonda','RED',1),(155,10,'Antartida e Islas del Atlantico','AN',1),(156,10,'Buenos Aires','BA',1),(157,10,'Catamarca','CA',1),(158,10,'Chaco','CH',1),(159,10,'Chubut','CU',1),(160,10,'Cordoba','CO',1),(161,10,'Corrientes','CR',1),(162,10,'Distrito Federal','DF',1),(163,10,'Entre Rios','ER',1),(164,10,'Formosa','FO',1),(165,10,'Jujuy','JU',1),(166,10,'La Pampa','LP',1),(167,10,'La Rioja','LR',1),(168,10,'Mendoza','ME',1),(169,10,'Misiones','MI',1),(170,10,'Neuquen','NE',1),(171,10,'Rio Negro','RN',1),(172,10,'Salta','SA',1),(173,10,'San Juan','SJ',1),(174,10,'San Luis','SL',1),(175,10,'Santa Cruz','SC',1),(176,10,'Santa Fe','SF',1),(177,10,'Santiago del Estero','SD',1),(178,10,'Tierra del Fuego','TF',1),(179,10,'Tucuman','TU',1),(180,11,'Aragatsotn','AGT',1),(181,11,'Ararat','ARR',1),(182,11,'Armavir','ARM',1),(183,11,'Geghark\'unik\'','GEG',1),(184,11,'Kotayk\'','KOT',1),(185,11,'Lorri','LOR',1),(186,11,'Shirak','SHI',1),(187,11,'Syunik\'','SYU',1),(188,11,'Tavush','TAV',1),(189,11,'Vayots\' Dzor','VAY',1),(190,11,'Yerevan','YER',1),(191,13,'Australian Capital Territory','ACT',1),(192,13,'New South Wales','NSW',1),(193,13,'Northern Territory','NT',1),(194,13,'Queensland','QLD',1),(195,13,'South Australia','SA',1),(196,13,'Tasmania','TAS',1),(197,13,'Victoria','VIC',1),(198,13,'Western Australia','WA',1),(199,14,'Burgenland','BUR',1),(200,14,'Kärnten','KAR',1),(201,14,'Nieder&ouml;sterreich','NOS',1),(202,14,'Ober&ouml;sterreich','OOS',1),(203,14,'Salzburg','SAL',1),(204,14,'Steiermark','STE',1),(205,14,'Tirol','TIR',1),(206,14,'Vorarlberg','VOR',1),(207,14,'Wien','WIE',1),(208,15,'Ali Bayramli','AB',1),(209,15,'Abseron','ABS',1),(210,15,'AgcabAdi','AGC',1),(211,15,'Agdam','AGM',1),(212,15,'Agdas','AGS',1),(213,15,'Agstafa','AGA',1),(214,15,'Agsu','AGU',1),(215,15,'Astara','AST',1),(216,15,'Baki','BA',1),(217,15,'BabAk','BAB',1),(218,15,'BalakAn','BAL',1),(219,15,'BArdA','BAR',1),(220,15,'Beylaqan','BEY',1),(221,15,'Bilasuvar','BIL',1),(222,15,'Cabrayil','CAB',1),(223,15,'Calilabab','CAL',1),(224,15,'Culfa','CUL',1),(225,15,'Daskasan','DAS',1),(226,15,'Davaci','DAV',1),(227,15,'Fuzuli','FUZ',1),(228,15,'Ganca','GA',1),(229,15,'Gadabay','GAD',1),(230,15,'Goranboy','GOR',1),(231,15,'Goycay','GOY',1),(232,15,'Haciqabul','HAC',1),(233,15,'Imisli','IMI',1),(234,15,'Ismayilli','ISM',1),(235,15,'Kalbacar','KAL',1),(236,15,'Kurdamir','KUR',1),(237,15,'Lankaran','LA',1),(238,15,'Lacin','LAC',1),(239,15,'Lankaran','LAN',1),(240,15,'Lerik','LER',1),(241,15,'Masalli','MAS',1),(242,15,'Mingacevir','MI',1),(243,15,'Naftalan','NA',1),(244,15,'Neftcala','NEF',1),(245,15,'Oguz','OGU',1),(246,15,'Ordubad','ORD',1),(247,15,'Qabala','QAB',1),(248,15,'Qax','QAX',1),(249,15,'Qazax','QAZ',1),(250,15,'Qobustan','QOB',1),(251,15,'Quba','QBA',1),(252,15,'Qubadli','QBI',1),(253,15,'Qusar','QUS',1),(254,15,'Saki','SA',1),(255,15,'Saatli','SAT',1),(256,15,'Sabirabad','SAB',1),(257,15,'Sadarak','SAD',1),(258,15,'Sahbuz','SAH',1),(259,15,'Saki','SAK',1),(260,15,'Salyan','SAL',1),(261,15,'Sumqayit','SM',1),(262,15,'Samaxi','SMI',1),(263,15,'Samkir','SKR',1),(264,15,'Samux','SMX',1),(265,15,'Sarur','SAR',1),(266,15,'Siyazan','SIY',1),(267,15,'Susa','SS',1),(268,15,'Susa','SUS',1),(269,15,'Tartar','TAR',1),(270,15,'Tovuz','TOV',1),(271,15,'Ucar','UCA',1),(272,15,'Xankandi','XA',1),(273,15,'Xacmaz','XAC',1),(274,15,'Xanlar','XAN',1),(275,15,'Xizi','XIZ',1),(276,15,'Xocali','XCI',1),(277,15,'Xocavand','XVD',1),(278,15,'Yardimli','YAR',1),(279,15,'Yevlax','YEV',1),(280,15,'Zangilan','ZAN',1),(281,15,'Zaqatala','ZAQ',1),(282,15,'Zardab','ZAR',1),(283,15,'Naxcivan','NX',1),(284,16,'Acklins','ACK',1),(285,16,'Berry Islands','BER',1),(286,16,'Bimini','BIM',1),(287,16,'Black Point','BLK',1),(288,16,'Cat Island','CAT',1),(289,16,'Central Abaco','CAB',1),(290,16,'Central Andros','CAN',1),(291,16,'Central Eleuthera','CEL',1),(292,16,'City of Freeport','FRE',1),(293,16,'Crooked Island','CRO',1),(294,16,'East Grand Bahama','EGB',1),(295,16,'Exuma','EXU',1),(296,16,'Grand Cay','GRD',1),(297,16,'Harbour Island','HAR',1),(298,16,'Hope Town','HOP',1),(299,16,'Inagua','INA',1),(300,16,'Long Island','LNG',1),(301,16,'Mangrove Cay','MAN',1),(302,16,'Mayaguana','MAY',1),(303,16,'Moore\'s Island','MOO',1),(304,16,'North Abaco','NAB',1),(305,16,'North Andros','NAN',1),(306,16,'North Eleuthera','NEL',1),(307,16,'Ragged Island','RAG',1),(308,16,'Rum Cay','RUM',1),(309,16,'San Salvador','SAL',1),(310,16,'South Abaco','SAB',1),(311,16,'South Andros','SAN',1),(312,16,'South Eleuthera','SEL',1),(313,16,'Spanish Wells','SWE',1),(314,16,'West Grand Bahama','WGB',1),(315,17,'Capital','CAP',1),(316,17,'Central','CEN',1),(317,17,'Muharraq','MUH',1),(318,17,'Northern','NOR',1),(319,17,'Southern','SOU',1),(320,18,'Barisal','BAR',1),(321,18,'Chittagong','CHI',1),(322,18,'Dhaka','DHA',1),(323,18,'Khulna','KHU',1),(324,18,'Rajshahi','RAJ',1),(325,18,'Sylhet','SYL',1),(326,19,'Christ Church','CC',1),(327,19,'Saint Andrew','AND',1),(328,19,'Saint George','GEO',1),(329,19,'Saint James','JAM',1),(330,19,'Saint John','JOH',1),(331,19,'Saint Joseph','JOS',1),(332,19,'Saint Lucy','LUC',1),(333,19,'Saint Michael','MIC',1),(334,19,'Saint Peter','PET',1),(335,19,'Saint Philip','PHI',1),(336,19,'Saint Thomas','THO',1),(337,20,'Brestskaya (Brest)','BR',1),(338,20,'Homyel\'skaya (Homyel\')','HO',1),(339,20,'Horad Minsk','HM',1),(340,20,'Hrodzyenskaya (Hrodna)','HR',1),(341,20,'Mahilyowskaya (Mahilyow)','MA',1),(342,20,'Minskaya','MI',1),(343,20,'Vitsyebskaya (Vitsyebsk)','VI',1),(344,21,'Antwerpen','VAN',1),(345,21,'Brabant Wallon','WBR',1),(346,21,'Hainaut','WHT',1),(347,21,'Liège','WLG',1),(348,21,'Limburg','VLI',1),(349,21,'Luxembourg','WLX',1),(350,21,'Namur','WNA',1),(351,21,'Oost-Vlaanderen','VOV',1),(352,21,'Vlaams Brabant','VBR',1),(353,21,'West-Vlaanderen','VWV',1),(354,22,'Belize','BZ',1),(355,22,'Cayo','CY',1),(356,22,'Corozal','CR',1),(357,22,'Orange Walk','OW',1),(358,22,'Stann Creek','SC',1),(359,22,'Toledo','TO',1),(360,23,'Alibori','AL',1),(361,23,'Atakora','AK',1),(362,23,'Atlantique','AQ',1),(363,23,'Borgou','BO',1),(364,23,'Collines','CO',1),(365,23,'Donga','DO',1),(366,23,'Kouffo','KO',1),(367,23,'Littoral','LI',1),(368,23,'Mono','MO',1),(369,23,'Oueme','OU',1),(370,23,'Plateau','PL',1),(371,23,'Zou','ZO',1),(372,24,'Devonshire','DS',1),(373,24,'Hamilton City','HC',1),(374,24,'Hamilton','HA',1),(375,24,'Paget','PG',1),(376,24,'Pembroke','PB',1),(377,24,'Saint George City','GC',1),(378,24,'Saint George\'s','SG',1),(379,24,'Sandys','SA',1),(380,24,'Smith\'s','SM',1),(381,24,'Southampton','SH',1),(382,24,'Warwick','WA',1),(383,25,'Bumthang','BUM',1),(384,25,'Chukha','CHU',1),(385,25,'Dagana','DAG',1),(386,25,'Gasa','GAS',1),(387,25,'Haa','HAA',1),(388,25,'Lhuntse','LHU',1),(389,25,'Mongar','MON',1),(390,25,'Paro','PAR',1),(391,25,'Pemagatshel','PEM',1),(392,25,'Punakha','PUN',1),(393,25,'Samdrup Jongkhar','SJO',1),(394,25,'Samtse','SAT',1),(395,25,'Sarpang','SAR',1),(396,25,'Thimphu','THI',1),(397,25,'Trashigang','TRG',1),(398,25,'Trashiyangste','TRY',1),(399,25,'Trongsa','TRO',1),(400,25,'Tsirang','TSI',1),(401,25,'Wangdue Phodrang','WPH',1),(402,25,'Zhemgang','ZHE',1),(403,26,'Beni','BEN',1),(404,26,'Chuquisaca','CHU',1),(405,26,'Cochabamba','COC',1),(406,26,'La Paz','LPZ',1),(407,26,'Oruro','ORU',1),(408,26,'Pando','PAN',1),(409,26,'Potosi','POT',1),(410,26,'Santa Cruz','SCZ',1),(411,26,'Tarija','TAR',1),(412,27,'Brcko district','BRO',1),(413,27,'Unsko-Sanski Kanton','FUS',1),(414,27,'Posavski Kanton','FPO',1),(415,27,'Tuzlanski Kanton','FTU',1),(416,27,'Zenicko-Dobojski Kanton','FZE',1),(417,27,'Bosanskopodrinjski Kanton','FBP',1),(418,27,'Srednjebosanski Kanton','FSB',1),(419,27,'Hercegovacko-neretvanski Kanton','FHN',1),(420,27,'Zapadnohercegovacka Zupanija','FZH',1),(421,27,'Kanton Sarajevo','FSA',1),(422,27,'Zapadnobosanska','FZA',1),(423,27,'Banja Luka','SBL',1),(424,27,'Doboj','SDO',1),(425,27,'Bijeljina','SBI',1),(426,27,'Vlasenica','SVL',1),(427,27,'Sarajevo-Romanija or Sokolac','SSR',1),(428,27,'Foca','SFO',1),(429,27,'Trebinje','STR',1),(430,28,'Central','CE',1),(431,28,'Ghanzi','GH',1),(432,28,'Kgalagadi','KD',1),(433,28,'Kgatleng','KT',1),(434,28,'Kweneng','KW',1),(435,28,'Ngamiland','NG',1),(436,28,'North East','NE',1),(437,28,'North West','NW',1),(438,28,'South East','SE',1),(439,28,'Southern','SO',1),(440,30,'Acre','AC',1),(441,30,'Alagoas','AL',1),(442,30,'Amapá','AP',1),(443,30,'Amazonas','AM',1),(444,30,'Bahia','BA',1),(445,30,'Ceará','CE',1),(446,30,'Distrito Federal','DF',1),(447,30,'Espírito Santo','ES',1),(448,30,'Goiás','GO',1),(449,30,'Maranhão','MA',1),(450,30,'Mato Grosso','MT',1),(451,30,'Mato Grosso do Sul','MS',1),(452,30,'Minas Gerais','MG',1),(453,30,'Pará','PA',1),(454,30,'Paraíba','PB',1),(455,30,'Paraná','PR',1),(456,30,'Pernambuco','PE',1),(457,30,'Piauí','PI',1),(458,30,'Rio de Janeiro','RJ',1),(459,30,'Rio Grande do Norte','RN',1),(460,30,'Rio Grande do Sul','RS',1),(461,30,'Rondônia','RO',1),(462,30,'Roraima','RR',1),(463,30,'Santa Catarina','SC',1),(464,30,'São Paulo','SP',1),(465,30,'Sergipe','SE',1),(466,30,'Tocantins','TO',1),(467,31,'Peros Banhos','PB',1),(468,31,'Salomon Islands','SI',1),(469,31,'Nelsons Island','NI',1),(470,31,'Three Brothers','TB',1),(471,31,'Eagle Islands','EA',1),(472,31,'Danger Island','DI',1),(473,31,'Egmont Islands','EG',1),(474,31,'Diego Garcia','DG',1),(475,32,'Belait','BEL',1),(476,32,'Brunei and Muara','BRM',1),(477,32,'Temburong','TEM',1),(478,32,'Tutong','TUT',1),(479,33,'Blagoevgrad','',1),(480,33,'Burgas','',1),(481,33,'Dobrich','',1),(482,33,'Gabrovo','',1),(483,33,'Haskovo','',1),(484,33,'Kardjali','',1),(485,33,'Kyustendil','',1),(486,33,'Lovech','',1),(487,33,'Montana','',1),(488,33,'Pazardjik','',1),(489,33,'Pernik','',1),(490,33,'Pleven','',1),(491,33,'Plovdiv','',1),(492,33,'Razgrad','',1),(493,33,'Shumen','',1),(494,33,'Silistra','',1),(495,33,'Sliven','',1),(496,33,'Smolyan','',1),(497,33,'Sofia','',1),(498,33,'Sofia - town','',1),(499,33,'Stara Zagora','',1),(500,33,'Targovishte','',1),(501,33,'Varna','',1),(502,33,'Veliko Tarnovo','',1),(503,33,'Vidin','',1),(504,33,'Vratza','',1),(505,33,'Yambol','',1),(506,34,'Bale','BAL',1),(507,34,'Bam','BAM',1),(508,34,'Banwa','BAN',1),(509,34,'Bazega','BAZ',1),(510,34,'Bougouriba','BOR',1),(511,34,'Boulgou','BLG',1),(512,34,'Boulkiemde','BOK',1),(513,34,'Comoe','COM',1),(514,34,'Ganzourgou','GAN',1),(515,34,'Gnagna','GNA',1),(516,34,'Gourma','GOU',1),(517,34,'Houet','HOU',1),(518,34,'Ioba','IOA',1),(519,34,'Kadiogo','KAD',1),(520,34,'Kenedougou','KEN',1),(521,34,'Komondjari','KOD',1),(522,34,'Kompienga','KOP',1),(523,34,'Kossi','KOS',1),(524,34,'Koulpelogo','KOL',1),(525,34,'Kouritenga','KOT',1),(526,34,'Kourweogo','KOW',1),(527,34,'Leraba','LER',1),(528,34,'Loroum','LOR',1),(529,34,'Mouhoun','MOU',1),(530,34,'Nahouri','NAH',1),(531,34,'Namentenga','NAM',1),(532,34,'Nayala','NAY',1),(533,34,'Noumbiel','NOU',1),(534,34,'Oubritenga','OUB',1),(535,34,'Oudalan','OUD',1),(536,34,'Passore','PAS',1),(537,34,'Poni','PON',1),(538,34,'Sanguie','SAG',1),(539,34,'Sanmatenga','SAM',1),(540,34,'Seno','SEN',1),(541,34,'Sissili','SIS',1),(542,34,'Soum','SOM',1),(543,34,'Sourou','SOR',1),(544,34,'Tapoa','TAP',1),(545,34,'Tuy','TUY',1),(546,34,'Yagha','YAG',1),(547,34,'Yatenga','YAT',1),(548,34,'Ziro','ZIR',1),(549,34,'Zondoma','ZOD',1),(550,34,'Zoundweogo','ZOW',1),(551,35,'Bubanza','BB',1),(552,35,'Bujumbura','BJ',1),(553,35,'Bururi','BR',1),(554,35,'Cankuzo','CA',1),(555,35,'Cibitoke','CI',1),(556,35,'Gitega','GI',1),(557,35,'Karuzi','KR',1),(558,35,'Kayanza','KY',1),(559,35,'Kirundo','KI',1),(560,35,'Makamba','MA',1),(561,35,'Muramvya','MU',1),(562,35,'Muyinga','MY',1),(563,35,'Mwaro','MW',1),(564,35,'Ngozi','NG',1),(565,35,'Rutana','RT',1),(566,35,'Ruyigi','RY',1),(567,36,'Phnom Penh','PP',1),(568,36,'Preah Seihanu (Kompong Som or Sihanoukville)','PS',1),(569,36,'Pailin','PA',1),(570,36,'Keb','KB',1),(571,36,'Banteay Meanchey','BM',1),(572,36,'Battambang','BA',1),(573,36,'Kampong Cham','KM',1),(574,36,'Kampong Chhnang','KN',1),(575,36,'Kampong Speu','KU',1),(576,36,'Kampong Som','KO',1),(577,36,'Kampong Thom','KT',1),(578,36,'Kampot','KP',1),(579,36,'Kandal','KL',1),(580,36,'Kaoh Kong','KK',1),(581,36,'Kratie','KR',1),(582,36,'Mondul Kiri','MK',1),(583,36,'Oddar Meancheay','OM',1),(584,36,'Pursat','PU',1),(585,36,'Preah Vihear','PR',1),(586,36,'Prey Veng','PG',1),(587,36,'Ratanak Kiri','RK',1),(588,36,'Siemreap','SI',1),(589,36,'Stung Treng','ST',1),(590,36,'Svay Rieng','SR',1),(591,36,'Takeo','TK',1),(592,37,'Adamawa (Adamaoua)','ADA',1),(593,37,'Centre','CEN',1),(594,37,'East (Est)','EST',1),(595,37,'Extreme North (Extreme-Nord)','EXN',1),(596,37,'Littoral','LIT',1),(597,37,'North (Nord)','NOR',1),(598,37,'Northwest (Nord-Ouest)','NOT',1),(599,37,'West (Ouest)','OUE',1),(600,37,'South (Sud)','SUD',1),(601,37,'Southwest (Sud-Ouest).','SOU',1),(602,38,'Alberta','AB',1),(603,38,'British Columbia','BC',1),(604,38,'Manitoba','MB',1),(605,38,'New Brunswick','NB',1),(606,38,'Newfoundland and Labrador','NL',1),(607,38,'Northwest Territories','NT',1),(608,38,'Nova Scotia','NS',1),(609,38,'Nunavut','NU',1),(610,38,'Ontario','ON',1),(611,38,'Prince Edward Island','PE',1),(612,38,'Qu&eacute;bec','QC',1),(613,38,'Saskatchewan','SK',1),(614,38,'Yukon Territory','YT',1),(615,39,'Boa Vista','BV',1),(616,39,'Brava','BR',1),(617,39,'Calheta de Sao Miguel','CS',1),(618,39,'Maio','MA',1),(619,39,'Mosteiros','MO',1),(620,39,'Paul','PA',1),(621,39,'Porto Novo','PN',1),(622,39,'Praia','PR',1),(623,39,'Ribeira Grande','RG',1),(624,39,'Sal','SL',1),(625,39,'Santa Catarina','CA',1),(626,39,'Santa Cruz','CR',1),(627,39,'Sao Domingos','SD',1),(628,39,'Sao Filipe','SF',1),(629,39,'Sao Nicolau','SN',1),(630,39,'Sao Vicente','SV',1),(631,39,'Tarrafal','TA',1),(632,40,'Creek','CR',1),(633,40,'Eastern','EA',1),(634,40,'Midland','ML',1),(635,40,'South Town','ST',1),(636,40,'Spot Bay','SP',1),(637,40,'Stake Bay','SK',1),(638,40,'West End','WD',1),(639,40,'Western','WN',1),(640,41,'Bamingui-Bangoran','BBA',1),(641,41,'Basse-Kotto','BKO',1),(642,41,'Haute-Kotto','HKO',1),(643,41,'Haut-Mbomou','HMB',1),(644,41,'Kemo','KEM',1),(645,41,'Lobaye','LOB',1),(646,41,'Mambere-KadeÔ','MKD',1),(647,41,'Mbomou','MBO',1),(648,41,'Nana-Mambere','NMM',1),(649,41,'Ombella-M\'Poko','OMP',1),(650,41,'Ouaka','OUK',1),(651,41,'Ouham','OUH',1),(652,41,'Ouham-Pende','OPE',1),(653,41,'Vakaga','VAK',1),(654,41,'Nana-Grebizi','NGR',1),(655,41,'Sangha-Mbaere','SMB',1),(656,41,'Bangui','BAN',1),(657,42,'Batha','BA',1),(658,42,'Biltine','BI',1),(659,42,'Borkou-Ennedi-Tibesti','BE',1),(660,42,'Chari-Baguirmi','CB',1),(661,42,'Guera','GU',1),(662,42,'Kanem','KA',1),(663,42,'Lac','LA',1),(664,42,'Logone Occidental','LC',1),(665,42,'Logone Oriental','LR',1),(666,42,'Mayo-Kebbi','MK',1),(667,42,'Moyen-Chari','MC',1),(668,42,'Ouaddai','OU',1),(669,42,'Salamat','SA',1),(670,42,'Tandjile','TA',1),(671,43,'Aisen del General Carlos Ibanez','AI',1),(672,43,'Antofagasta','AN',1),(673,43,'Araucania','AR',1),(674,43,'Atacama','AT',1),(675,43,'Bio-Bio','BI',1),(676,43,'Coquimbo','CO',1),(677,43,'Libertador General Bernardo O\'Higgins','LI',1),(678,43,'Los Lagos','LL',1),(679,43,'Magallanes y de la Antartica Chilena','MA',1),(680,43,'Maule','ML',1),(681,43,'Region Metropolitana','RM',1),(682,43,'Tarapaca','TA',1),(683,43,'Valparaiso','VS',1),(684,44,'Anhui','AN',1),(685,44,'Beijing','BE',1),(686,44,'Chongqing','CH',1),(687,44,'Fujian','FU',1),(688,44,'Gansu','GA',1),(689,44,'Guangdong','GU',1),(690,44,'Guangxi','GX',1),(691,44,'Guizhou','GZ',1),(692,44,'Hainan','HA',1),(693,44,'Hebei','HB',1),(694,44,'Heilongjiang','HL',1),(695,44,'Henan','HE',1),(696,44,'Hong Kong','HK',1),(697,44,'Hubei','HU',1),(698,44,'Hunan','HN',1),(699,44,'Inner Mongolia','IM',1),(700,44,'Jiangsu','JI',1),(701,44,'Jiangxi','JX',1),(702,44,'Jilin','JL',1),(703,44,'Liaoning','LI',1),(704,44,'Macau','MA',1),(705,44,'Ningxia','NI',1),(706,44,'Shaanxi','SH',1),(707,44,'Shandong','SA',1),(708,44,'Shanghai','SG',1),(709,44,'Shanxi','SX',1),(710,44,'Sichuan','SI',1),(711,44,'Tianjin','TI',1),(712,44,'Xinjiang','XI',1),(713,44,'Yunnan','YU',1),(714,44,'Zhejiang','ZH',1),(715,46,'Direction Island','D',1),(716,46,'Home Island','H',1),(717,46,'Horsburgh Island','O',1),(718,46,'South Island','S',1),(719,46,'West Island','W',1),(720,47,'Amazonas','AMZ',1),(721,47,'Antioquia','ANT',1),(722,47,'Arauca','ARA',1),(723,47,'Atlantico','ATL',1),(724,47,'Bogota D.C.','BDC',1),(725,47,'Bolivar','BOL',1),(726,47,'Boyaca','BOY',1),(727,47,'Caldas','CAL',1),(728,47,'Caqueta','CAQ',1),(729,47,'Casanare','CAS',1),(730,47,'Cauca','CAU',1),(731,47,'Cesar','CES',1),(732,47,'Choco','CHO',1),(733,47,'Cordoba','COR',1),(734,47,'Cundinamarca','CAM',1),(735,47,'Guainia','GNA',1),(736,47,'Guajira','GJR',1),(737,47,'Guaviare','GVR',1),(738,47,'Huila','HUI',1),(739,47,'Magdalena','MAG',1),(740,47,'Meta','MET',1),(741,47,'Narino','NAR',1),(742,47,'Norte de Santander','NDS',1),(743,47,'Putumayo','PUT',1),(744,47,'Quindio','QUI',1),(745,47,'Risaralda','RIS',1),(746,47,'San Andres y Providencia','SAP',1),(747,47,'Santander','SAN',1),(748,47,'Sucre','SUC',1),(749,47,'Tolima','TOL',1),(750,47,'Valle del Cauca','VDC',1),(751,47,'Vaupes','VAU',1),(752,47,'Vichada','VIC',1),(753,48,'Grande Comore','G',1),(754,48,'Anjouan','A',1),(755,48,'Moheli','M',1),(756,49,'Bouenza','BO',1),(757,49,'Brazzaville','BR',1),(758,49,'Cuvette','CU',1),(759,49,'Cuvette-Ouest','CO',1),(760,49,'Kouilou','KO',1),(761,49,'Lekoumou','LE',1),(762,49,'Likouala','LI',1),(763,49,'Niari','NI',1),(764,49,'Plateaux','PL',1),(765,49,'Pool','PO',1),(766,49,'Sangha','SA',1),(767,50,'Pukapuka','PU',1),(768,50,'Rakahanga','RK',1),(769,50,'Manihiki','MK',1),(770,50,'Penrhyn','PE',1),(771,50,'Nassau Island','NI',1),(772,50,'Surwarrow','SU',1),(773,50,'Palmerston','PA',1),(774,50,'Aitutaki','AI',1),(775,50,'Manuae','MA',1),(776,50,'Takutea','TA',1),(777,50,'Mitiaro','MT',1),(778,50,'Atiu','AT',1),(779,50,'Mauke','MU',1),(780,50,'Rarotonga','RR',1),(781,50,'Mangaia','MG',1),(782,51,'Alajuela','AL',1),(783,51,'Cartago','CA',1),(784,51,'Guanacaste','GU',1),(785,51,'Heredia','HE',1),(786,51,'Limon','LI',1),(787,51,'Puntarenas','PU',1),(788,51,'San Jose','SJ',1),(789,52,'Abengourou','ABE',1),(790,52,'Abidjan','ABI',1),(791,52,'Aboisso','ABO',1),(792,52,'Adiake','ADI',1),(793,52,'Adzope','ADZ',1),(794,52,'Agboville','AGB',1),(795,52,'Agnibilekrou','AGN',1),(796,52,'Alepe','ALE',1),(797,52,'Bocanda','BOC',1),(798,52,'Bangolo','BAN',1),(799,52,'Beoumi','BEO',1),(800,52,'Biankouma','BIA',1),(801,52,'Bondoukou','BDK',1),(802,52,'Bongouanou','BGN',1),(803,52,'Bouafle','BFL',1),(804,52,'Bouake','BKE',1),(805,52,'Bouna','BNA',1),(806,52,'Boundiali','BDL',1),(807,52,'Dabakala','DKL',1),(808,52,'Dabou','DBU',1),(809,52,'Daloa','DAL',1),(810,52,'Danane','DAN',1),(811,52,'Daoukro','DAO',1),(812,52,'Dimbokro','DIM',1),(813,52,'Divo','DIV',1),(814,52,'Duekoue','DUE',1),(815,52,'Ferkessedougou','FER',1),(816,52,'Gagnoa','GAG',1),(817,52,'Grand-Bassam','GBA',1),(818,52,'Grand-Lahou','GLA',1),(819,52,'Guiglo','GUI',1),(820,52,'Issia','ISS',1),(821,52,'Jacqueville','JAC',1),(822,52,'Katiola','KAT',1),(823,52,'Korhogo','KOR',1),(824,52,'Lakota','LAK',1),(825,52,'Man','MAN',1),(826,52,'Mankono','MKN',1),(827,52,'Mbahiakro','MBA',1),(828,52,'Odienne','ODI',1),(829,52,'Oume','OUM',1),(830,52,'Sakassou','SAK',1),(831,52,'San-Pedro','SPE',1),(832,52,'Sassandra','SAS',1),(833,52,'Seguela','SEG',1),(834,52,'Sinfra','SIN',1),(835,52,'Soubre','SOU',1),(836,52,'Tabou','TAB',1),(837,52,'Tanda','TAN',1),(838,52,'Tiebissou','TIE',1),(839,52,'Tingrela','TIN',1),(840,52,'Tiassale','TIA',1),(841,52,'Touba','TBA',1),(842,52,'Toulepleu','TLP',1),(843,52,'Toumodi','TMD',1),(844,52,'Vavoua','VAV',1),(845,52,'Yamoussoukro','YAM',1),(846,52,'Zuenoula','ZUE',1),(847,53,'Bjelovarsko-bilogorska','BB',1),(848,53,'Grad Zagreb','GZ',1),(849,53,'Dubrovačko-neretvanska','DN',1),(850,53,'Istarska','IS',1),(851,53,'Karlovačka','KA',1),(852,53,'Koprivničko-križevačka','KK',1),(853,53,'Krapinsko-zagorska','KZ',1),(854,53,'Ličko-senjska','LS',1),(855,53,'Međimurska','ME',1),(856,53,'Osječko-baranjska','OB',1),(857,53,'Požeško-slavonska','PS',1),(858,53,'Primorsko-goranska','PG',1),(859,53,'Šibensko-kninska','SK',1),(860,53,'Sisačko-moslavačka','SM',1),(861,53,'Brodsko-posavska','BP',1),(862,53,'Splitsko-dalmatinska','SD',1),(863,53,'Varaždinska','VA',1),(864,53,'Virovitičko-podravska','VP',1),(865,53,'Vukovarsko-srijemska','VS',1),(866,53,'Zadarska','ZA',1),(867,53,'Zagrebačka','ZG',1),(868,54,'Camaguey','CA',1),(869,54,'Ciego de Avila','CD',1),(870,54,'Cienfuegos','CI',1),(871,54,'Ciudad de La Habana','CH',1),(872,54,'Granma','GR',1),(873,54,'Guantanamo','GU',1),(874,54,'Holguin','HO',1),(875,54,'Isla de la Juventud','IJ',1),(876,54,'La Habana','LH',1),(877,54,'Las Tunas','LT',1),(878,54,'Matanzas','MA',1),(879,54,'Pinar del Rio','PR',1),(880,54,'Sancti Spiritus','SS',1),(881,54,'Santiago de Cuba','SC',1),(882,54,'Villa Clara','VC',1),(883,55,'Famagusta','F',1),(884,55,'Kyrenia','K',1),(885,55,'Larnaca','A',1),(886,55,'Limassol','I',1),(887,55,'Nicosia','N',1),(888,55,'Paphos','P',1),(889,56,'Ústecký','U',1),(890,56,'Jihočeský','C',1),(891,56,'Jihomoravský','B',1),(892,56,'Karlovarský','K',1),(893,56,'Královehradecký','H',1),(894,56,'Liberecký','L',1),(895,56,'Moravskoslezský','T',1),(896,56,'Olomoucký','M',1),(897,56,'Pardubický','E',1),(898,56,'Plzeňský','P',1),(899,56,'Praha','A',1),(900,56,'Středočeský','S',1),(901,56,'Vysočina','J',1),(902,56,'Zlínský','Z',1),(903,57,'Arhus','AR',1),(904,57,'Bornholm','BH',1),(905,57,'Copenhagen','CO',1),(906,57,'Faroe Islands','FO',1),(907,57,'Frederiksborg','FR',1),(908,57,'Fyn','FY',1),(909,57,'Kobenhavn','KO',1),(910,57,'Nordjylland','NO',1),(911,57,'Ribe','RI',1),(912,57,'Ringkobing','RK',1),(913,57,'Roskilde','RO',1),(914,57,'Sonderjylland','SO',1),(915,57,'Storstrom','ST',1),(916,57,'Vejle','VK',1),(917,57,'Vestj&aelig;lland','VJ',1),(918,57,'Viborg','VB',1),(919,58,'\'Ali Sabih','S',1),(920,58,'Dikhil','K',1),(921,58,'Djibouti','J',1),(922,58,'Obock','O',1),(923,58,'Tadjoura','T',1),(924,59,'Saint Andrew Parish','AND',1),(925,59,'Saint David Parish','DAV',1),(926,59,'Saint George Parish','GEO',1),(927,59,'Saint John Parish','JOH',1),(928,59,'Saint Joseph Parish','JOS',1),(929,59,'Saint Luke Parish','LUK',1),(930,59,'Saint Mark Parish','MAR',1),(931,59,'Saint Patrick Parish','PAT',1),(932,59,'Saint Paul Parish','PAU',1),(933,59,'Saint Peter Parish','PET',1),(934,60,'Distrito Nacional','DN',1),(935,60,'Azua','AZ',1),(936,60,'Baoruco','BC',1),(937,60,'Barahona','BH',1),(938,60,'Dajabon','DJ',1),(939,60,'Duarte','DU',1),(940,60,'Elias Pina','EL',1),(941,60,'El Seybo','SY',1),(942,60,'Espaillat','ET',1),(943,60,'Hato Mayor','HM',1),(944,60,'Independencia','IN',1),(945,60,'La Altagracia','AL',1),(946,60,'La Romana','RO',1),(947,60,'La Vega','VE',1),(948,60,'Maria Trinidad Sanchez','MT',1),(949,60,'Monsenor Nouel','MN',1),(950,60,'Monte Cristi','MC',1),(951,60,'Monte Plata','MP',1),(952,60,'Pedernales','PD',1),(953,60,'Peravia (Bani)','PR',1),(954,60,'Puerto Plata','PP',1),(955,60,'Salcedo','SL',1),(956,60,'Samana','SM',1),(957,60,'Sanchez Ramirez','SH',1),(958,60,'San Cristobal','SC',1),(959,60,'San Jose de Ocoa','JO',1),(960,60,'San Juan','SJ',1),(961,60,'San Pedro de Macoris','PM',1),(962,60,'Santiago','SA',1),(963,60,'Santiago Rodriguez','ST',1),(964,60,'Santo Domingo','SD',1),(965,60,'Valverde','VA',1),(966,61,'Aileu','AL',1),(967,61,'Ainaro','AN',1),(968,61,'Baucau','BA',1),(969,61,'Bobonaro','BO',1),(970,61,'Cova Lima','CO',1),(971,61,'Dili','DI',1),(972,61,'Ermera','ER',1),(973,61,'Lautem','LA',1),(974,61,'Liquica','LI',1),(975,61,'Manatuto','MT',1),(976,61,'Manufahi','MF',1),(977,61,'Oecussi','OE',1),(978,61,'Viqueque','VI',1),(979,62,'Azuay','AZU',1),(980,62,'Bolivar','BOL',1),(981,62,'Ca&ntilde;ar','CAN',1),(982,62,'Carchi','CAR',1),(983,62,'Chimborazo','CHI',1),(984,62,'Cotopaxi','COT',1),(985,62,'El Oro','EOR',1),(986,62,'Esmeraldas','ESM',1),(987,62,'Gal&aacute;pagos','GPS',1),(988,62,'Guayas','GUA',1),(989,62,'Imbabura','IMB',1),(990,62,'Loja','LOJ',1),(991,62,'Los Rios','LRO',1),(992,62,'Manab&iacute;','MAN',1),(993,62,'Morona Santiago','MSA',1),(994,62,'Napo','NAP',1),(995,62,'Orellana','ORE',1),(996,62,'Pastaza','PAS',1),(997,62,'Pichincha','PIC',1),(998,62,'Sucumb&iacute;os','SUC',1),(999,62,'Tungurahua','TUN',1),(1000,62,'Zamora Chinchipe','ZCH',1),(1001,63,'Ad Daqahliyah','DHY',1),(1002,63,'Al Bahr al Ahmar','BAM',1),(1003,63,'Al Buhayrah','BHY',1),(1004,63,'Al Fayyum','FYM',1),(1005,63,'Al Gharbiyah','GBY',1),(1006,63,'Al Iskandariyah','IDR',1),(1007,63,'Al Isma\'iliyah','IML',1),(1008,63,'Al Jizah','JZH',1),(1009,63,'Al Minufiyah','MFY',1),(1010,63,'Al Minya','MNY',1),(1011,63,'Al Qahirah','QHR',1),(1012,63,'Al Qalyubiyah','QLY',1),(1013,63,'Al Wadi al Jadid','WJD',1),(1014,63,'Ash Sharqiyah','SHQ',1),(1015,63,'As Suways','SWY',1),(1016,63,'Aswan','ASW',1),(1017,63,'Asyut','ASY',1),(1018,63,'Bani Suwayf','BSW',1),(1019,63,'Bur Sa\'id','BSD',1),(1020,63,'Dumyat','DMY',1),(1021,63,'Janub Sina\'','JNS',1),(1022,63,'Kafr ash Shaykh','KSH',1),(1023,63,'Matruh','MAT',1),(1024,63,'Qina','QIN',1),(1025,63,'Shamal Sina\'','SHS',1),(1026,63,'Suhaj','SUH',1),(1027,64,'Ahuachapan','AH',1),(1028,64,'Cabanas','CA',1),(1029,64,'Chalatenango','CH',1),(1030,64,'Cuscatlan','CU',1),(1031,64,'La Libertad','LB',1),(1032,64,'La Paz','PZ',1),(1033,64,'La Union','UN',1),(1034,64,'Morazan','MO',1),(1035,64,'San Miguel','SM',1),(1036,64,'San Salvador','SS',1),(1037,64,'San Vicente','SV',1),(1038,64,'Santa Ana','SA',1),(1039,64,'Sonsonate','SO',1),(1040,64,'Usulutan','US',1),(1041,65,'Provincia Annobon','AN',1),(1042,65,'Provincia Bioko Norte','BN',1),(1043,65,'Provincia Bioko Sur','BS',1),(1044,65,'Provincia Centro Sur','CS',1),(1045,65,'Provincia Kie-Ntem','KN',1),(1046,65,'Provincia Litoral','LI',1),(1047,65,'Provincia Wele-Nzas','WN',1),(1048,66,'Central (Maekel)','MA',1),(1049,66,'Anseba (Keren)','KE',1),(1050,66,'Southern Red Sea (Debub-Keih-Bahri)','DK',1),(1051,66,'Northern Red Sea (Semien-Keih-Bahri)','SK',1),(1052,66,'Southern (Debub)','DE',1),(1053,66,'Gash-Barka (Barentu)','BR',1),(1054,67,'Harjumaa (Tallinn)','HA',1),(1055,67,'Hiiumaa (Kardla)','HI',1),(1056,67,'Ida-Virumaa (Johvi)','IV',1),(1057,67,'Jarvamaa (Paide)','JA',1),(1058,67,'Jogevamaa (Jogeva)','JO',1),(1059,67,'Laane-Virumaa (Rakvere)','LV',1),(1060,67,'Laanemaa (Haapsalu)','LA',1),(1061,67,'Parnumaa (Parnu)','PA',1),(1062,67,'Polvamaa (Polva)','PO',1),(1063,67,'Raplamaa (Rapla)','RA',1),(1064,67,'Saaremaa (Kuessaare)','SA',1),(1065,67,'Tartumaa (Tartu)','TA',1),(1066,67,'Valgamaa (Valga)','VA',1),(1067,67,'Viljandimaa (Viljandi)','VI',1),(1068,67,'Vorumaa (Voru)','VO',1),(1069,68,'Afar','AF',1),(1070,68,'Amhara','AH',1),(1071,68,'Benishangul-Gumaz','BG',1),(1072,68,'Gambela','GB',1),(1073,68,'Hariai','HR',1),(1074,68,'Oromia','OR',1),(1075,68,'Somali','SM',1),(1076,68,'Southern Nations - Nationalities and Peoples Region','SN',1),(1077,68,'Tigray','TG',1),(1078,68,'Addis Ababa','AA',1),(1079,68,'Dire Dawa','DD',1),(1080,71,'Central Division','C',1),(1081,71,'Northern Division','N',1),(1082,71,'Eastern Division','E',1),(1083,71,'Western Division','W',1),(1084,71,'Rotuma','R',1),(1085,72,'Ahvenanmaan lääni','AL',1),(1086,72,'Etelä-Suomen lääni','ES',1),(1087,72,'Itä-Suomen lääni','IS',1),(1088,72,'Länsi-Suomen lääni','LS',1),(1089,72,'Lapin lääni','LA',1),(1090,72,'Oulun lääni','OU',1),(1114,74,'Ain','01',1),(1115,74,'Aisne','02',1),(1116,74,'Allier','03',1),(1117,74,'Alpes de Haute Provence','04',1),(1118,74,'Hautes-Alpes','05',1),(1119,74,'Alpes Maritimes','06',1),(1120,74,'Ard&egrave;che','07',1),(1121,74,'Ardennes','08',1),(1122,74,'Ari&egrave;ge','09',1),(1123,74,'Aube','10',1),(1124,74,'Aude','11',1),(1125,74,'Aveyron','12',1),(1126,74,'Bouches du Rh&ocirc;ne','13',1),(1127,74,'Calvados','14',1),(1128,74,'Cantal','15',1),(1129,74,'Charente','16',1),(1130,74,'Charente Maritime','17',1),(1131,74,'Cher','18',1),(1132,74,'Corr&egrave;ze','19',1),(1133,74,'Corse du Sud','2A',1),(1134,74,'Haute Corse','2B',1),(1135,74,'C&ocirc;te d&#039;or','21',1),(1136,74,'C&ocirc;tes d&#039;Armor','22',1),(1137,74,'Creuse','23',1),(1138,74,'Dordogne','24',1),(1139,74,'Doubs','25',1),(1140,74,'Dr&ocirc;me','26',1),(1141,74,'Eure','27',1),(1142,74,'Eure et Loir','28',1),(1143,74,'Finist&egrave;re','29',1),(1144,74,'Gard','30',1),(1145,74,'Haute Garonne','31',1),(1146,74,'Gers','32',1),(1147,74,'Gironde','33',1),(1148,74,'H&eacute;rault','34',1),(1149,74,'Ille et Vilaine','35',1),(1150,74,'Indre','36',1),(1151,74,'Indre et Loire','37',1),(1152,74,'Is&eacute;re','38',1),(1153,74,'Jura','39',1),(1154,74,'Landes','40',1),(1155,74,'Loir et Cher','41',1),(1156,74,'Loire','42',1),(1157,74,'Haute Loire','43',1),(1158,74,'Loire Atlantique','44',1),(1159,74,'Loiret','45',1),(1160,74,'Lot','46',1),(1161,74,'Lot et Garonne','47',1),(1162,74,'Loz&egrave;re','48',1),(1163,74,'Maine et Loire','49',1),(1164,74,'Manche','50',1),(1165,74,'Marne','51',1),(1166,74,'Haute Marne','52',1),(1167,74,'Mayenne','53',1),(1168,74,'Meurthe et Moselle','54',1),(1169,74,'Meuse','55',1),(1170,74,'Morbihan','56',1),(1171,74,'Moselle','57',1),(1172,74,'Ni&egrave;vre','58',1),(1173,74,'Nord','59',1),(1174,74,'Oise','60',1),(1175,74,'Orne','61',1),(1176,74,'Pas de Calais','62',1),(1177,74,'Puy de D&ocirc;me','63',1),(1178,74,'Pyr&eacute;n&eacute;es Atlantiques','64',1),(1179,74,'Hautes Pyr&eacute;n&eacute;es','65',1),(1180,74,'Pyr&eacute;n&eacute;es Orientales','66',1),(1181,74,'Bas Rhin','67',1),(1182,74,'Haut Rhin','68',1),(1183,74,'Rh&ocirc;ne','69',1),(1184,74,'Haute Sa&ocirc;ne','70',1),(1185,74,'Sa&ocirc;ne et Loire','71',1),(1186,74,'Sarthe','72',1),(1187,74,'Savoie','73',1),(1188,74,'Haute Savoie','74',1),(1189,74,'Paris','75',1),(1190,74,'Seine Maritime','76',1),(1191,74,'Seine et Marne','77',1),(1192,74,'Yvelines','78',1),(1193,74,'Deux S&egrave;vres','79',1),(1194,74,'Somme','80',1),(1195,74,'Tarn','81',1),(1196,74,'Tarn et Garonne','82',1),(1197,74,'Var','83',1),(1198,74,'Vaucluse','84',1),(1199,74,'Vend&eacute;e','85',1),(1200,74,'Vienne','86',1),(1201,74,'Haute Vienne','87',1),(1202,74,'Vosges','88',1),(1203,74,'Yonne','89',1),(1204,74,'Territoire de Belfort','90',1),(1205,74,'Essonne','91',1),(1206,74,'Hauts de Seine','92',1),(1207,74,'Seine St-Denis','93',1),(1208,74,'Val de Marne','94',1),(1209,74,'Val d\'Oise','95',1),(1210,76,'Archipel des Marquises','M',1),(1211,76,'Archipel des Tuamotu','T',1),(1212,76,'Archipel des Tubuai','I',1),(1213,76,'Iles du Vent','V',1),(1214,76,'Iles Sous-le-Vent','S',1),(1215,77,'Iles Crozet','C',1),(1216,77,'Iles Kerguelen','K',1),(1217,77,'Ile Amsterdam','A',1),(1218,77,'Ile Saint-Paul','P',1),(1219,77,'Adelie Land','D',1),(1220,78,'Estuaire','ES',1),(1221,78,'Haut-Ogooue','HO',1),(1222,78,'Moyen-Ogooue','MO',1),(1223,78,'Ngounie','NG',1),(1224,78,'Nyanga','NY',1),(1225,78,'Ogooue-Ivindo','OI',1),(1226,78,'Ogooue-Lolo','OL',1),(1227,78,'Ogooue-Maritime','OM',1),(1228,78,'Woleu-Ntem','WN',1),(1229,79,'Banjul','BJ',1),(1230,79,'Basse','BS',1),(1231,79,'Brikama','BR',1),(1232,79,'Janjangbure','JA',1),(1233,79,'Kanifeng','KA',1),(1234,79,'Kerewan','KE',1),(1235,79,'Kuntaur','KU',1),(1236,79,'Mansakonko','MA',1),(1237,79,'Lower River','LR',1),(1238,79,'Central River','CR',1),(1239,79,'North Bank','NB',1),(1240,79,'Upper River','UR',1),(1241,79,'Western','WE',1),(1242,80,'Abkhazia','AB',1),(1243,80,'Ajaria','AJ',1),(1244,80,'Tbilisi','TB',1),(1245,80,'Guria','GU',1),(1246,80,'Imereti','IM',1),(1247,80,'Kakheti','KA',1),(1248,80,'Kvemo Kartli','KK',1),(1249,80,'Mtskheta-Mtianeti','MM',1),(1250,80,'Racha Lechkhumi and Kvemo Svanet','RL',1),(1251,80,'Samegrelo-Zemo Svaneti','SZ',1),(1252,80,'Samtskhe-Javakheti','SJ',1),(1253,80,'Shida Kartli','SK',1),(1254,81,'Baden-W&uuml;rttemberg','BAW',1),(1255,81,'Bayern','BAY',1),(1256,81,'Berlin','BER',1),(1257,81,'Brandenburg','BRG',1),(1258,81,'Bremen','BRE',1),(1259,81,'Hamburg','HAM',1),(1260,81,'Hessen','HES',1),(1261,81,'Mecklenburg-Vorpommern','MEC',1),(1262,81,'Niedersachsen','NDS',1),(1263,81,'Nordrhein-Westfalen','NRW',1),(1264,81,'Rheinland-Pfalz','RHE',1),(1265,81,'Saarland','SAR',1),(1266,81,'Sachsen','SAS',1),(1267,81,'Sachsen-Anhalt','SAC',1),(1268,81,'Schleswig-Holstein','SCN',1),(1269,81,'Th&uuml;ringen','THE',1),(1270,82,'Ashanti Region','AS',1),(1271,82,'Brong-Ahafo Region','BA',1),(1272,82,'Central Region','CE',1),(1273,82,'Eastern Region','EA',1),(1274,82,'Greater Accra Region','GA',1),(1275,82,'Northern Region','NO',1),(1276,82,'Upper East Region','UE',1),(1277,82,'Upper West Region','UW',1),(1278,82,'Volta Region','VO',1),(1279,82,'Western Region','WE',1),(1280,84,'Attica','AT',1),(1281,84,'Central Greece','CN',1),(1282,84,'Central Macedonia','CM',1),(1283,84,'Crete','CR',1),(1284,84,'East Macedonia and Thrace','EM',1),(1285,84,'Epirus','EP',1),(1286,84,'Ionian Islands','II',1),(1287,84,'North Aegean','NA',1),(1288,84,'Peloponnesos','PP',1),(1289,84,'South Aegean','SA',1),(1290,84,'Thessaly','TH',1),(1291,84,'West Greece','WG',1),(1292,84,'West Macedonia','WM',1),(1293,85,'Avannaa','A',1),(1294,85,'Tunu','T',1),(1295,85,'Kitaa','K',1),(1296,86,'Saint Andrew','A',1),(1297,86,'Saint David','D',1),(1298,86,'Saint George','G',1),(1299,86,'Saint John','J',1),(1300,86,'Saint Mark','M',1),(1301,86,'Saint Patrick','P',1),(1302,86,'Carriacou','C',1),(1303,86,'Petit Martinique','Q',1),(1304,89,'Alta Verapaz','AV',1),(1305,89,'Baja Verapaz','BV',1),(1306,89,'Chimaltenango','CM',1),(1307,89,'Chiquimula','CQ',1),(1308,89,'El Peten','PE',1),(1309,89,'El Progreso','PR',1),(1310,89,'El Quiche','QC',1),(1311,89,'Escuintla','ES',1),(1312,89,'Guatemala','GU',1),(1313,89,'Huehuetenango','HU',1),(1314,89,'Izabal','IZ',1),(1315,89,'Jalapa','JA',1),(1316,89,'Jutiapa','JU',1),(1317,89,'Quetzaltenango','QZ',1),(1318,89,'Retalhuleu','RE',1),(1319,89,'Sacatepequez','ST',1),(1320,89,'San Marcos','SM',1),(1321,89,'Santa Rosa','SR',1),(1322,89,'Solola','SO',1),(1323,89,'Suchitepequez','SU',1),(1324,89,'Totonicapan','TO',1),(1325,89,'Zacapa','ZA',1),(1326,90,'Conakry','CNK',1),(1327,90,'Beyla','BYL',1),(1328,90,'Boffa','BFA',1),(1329,90,'Boke','BOK',1),(1330,90,'Coyah','COY',1),(1331,90,'Dabola','DBL',1),(1332,90,'Dalaba','DLB',1),(1333,90,'Dinguiraye','DGR',1),(1334,90,'Dubreka','DBR',1),(1335,90,'Faranah','FRN',1),(1336,90,'Forecariah','FRC',1),(1337,90,'Fria','FRI',1),(1338,90,'Gaoual','GAO',1),(1339,90,'Gueckedou','GCD',1),(1340,90,'Kankan','KNK',1),(1341,90,'Kerouane','KRN',1),(1342,90,'Kindia','KND',1),(1343,90,'Kissidougou','KSD',1),(1344,90,'Koubia','KBA',1),(1345,90,'Koundara','KDA',1),(1346,90,'Kouroussa','KRA',1),(1347,90,'Labe','LAB',1),(1348,90,'Lelouma','LLM',1),(1349,90,'Lola','LOL',1),(1350,90,'Macenta','MCT',1),(1351,90,'Mali','MAL',1),(1352,90,'Mamou','MAM',1),(1353,90,'Mandiana','MAN',1),(1354,90,'Nzerekore','NZR',1),(1355,90,'Pita','PIT',1),(1356,90,'Siguiri','SIG',1),(1357,90,'Telimele','TLM',1),(1358,90,'Tougue','TOG',1),(1359,90,'Yomou','YOM',1),(1360,91,'Bafata Region','BF',1),(1361,91,'Biombo Region','BB',1),(1362,91,'Bissau Region','BS',1),(1363,91,'Bolama Region','BL',1),(1364,91,'Cacheu Region','CA',1),(1365,91,'Gabu Region','GA',1),(1366,91,'Oio Region','OI',1),(1367,91,'Quinara Region','QU',1),(1368,91,'Tombali Region','TO',1),(1369,92,'Barima-Waini','BW',1),(1370,92,'Cuyuni-Mazaruni','CM',1),(1371,92,'Demerara-Mahaica','DM',1),(1372,92,'East Berbice-Corentyne','EC',1),(1373,92,'Essequibo Islands-West Demerara','EW',1),(1374,92,'Mahaica-Berbice','MB',1),(1375,92,'Pomeroon-Supenaam','PM',1),(1376,92,'Potaro-Siparuni','PI',1),(1377,92,'Upper Demerara-Berbice','UD',1),(1378,92,'Upper Takutu-Upper Essequibo','UT',1),(1379,93,'Artibonite','AR',1),(1380,93,'Centre','CE',1),(1381,93,'Grand\'Anse','GA',1),(1382,93,'Nord','ND',1),(1383,93,'Nord-Est','NE',1),(1384,93,'Nord-Ouest','NO',1),(1385,93,'Ouest','OU',1),(1386,93,'Sud','SD',1),(1387,93,'Sud-Est','SE',1),(1388,94,'Flat Island','F',1),(1389,94,'McDonald Island','M',1),(1390,94,'Shag Island','S',1),(1391,94,'Heard Island','H',1),(1392,95,'Atlantida','AT',1),(1393,95,'Choluteca','CH',1),(1394,95,'Colon','CL',1),(1395,95,'Comayagua','CM',1),(1396,95,'Copan','CP',1),(1397,95,'Cortes','CR',1),(1398,95,'El Paraiso','PA',1),(1399,95,'Francisco Morazan','FM',1),(1400,95,'Gracias a Dios','GD',1),(1401,95,'Intibuca','IN',1),(1402,95,'Islas de la Bahia (Bay Islands)','IB',1),(1403,95,'La Paz','PZ',1),(1404,95,'Lempira','LE',1),(1405,95,'Ocotepeque','OC',1),(1406,95,'Olancho','OL',1),(1407,95,'Santa Barbara','SB',1),(1408,95,'Valle','VA',1),(1409,95,'Yoro','YO',1),(1410,96,'Central and Western Hong Kong Island','HCW',1),(1411,96,'Eastern Hong Kong Island','HEA',1),(1412,96,'Southern Hong Kong Island','HSO',1),(1413,96,'Wan Chai Hong Kong Island','HWC',1),(1414,96,'Kowloon City Kowloon','KKC',1),(1415,96,'Kwun Tong Kowloon','KKT',1),(1416,96,'Sham Shui Po Kowloon','KSS',1),(1417,96,'Wong Tai Sin Kowloon','KWT',1),(1418,96,'Yau Tsim Mong Kowloon','KYT',1),(1419,96,'Islands New Territories','NIS',1),(1420,96,'Kwai Tsing New Territories','NKT',1),(1421,96,'North New Territories','NNO',1),(1422,96,'Sai Kung New Territories','NSK',1),(1423,96,'Sha Tin New Territories','NST',1),(1424,96,'Tai Po New Territories','NTP',1),(1425,96,'Tsuen Wan New Territories','NTW',1),(1426,96,'Tuen Mun New Territories','NTM',1),(1427,96,'Yuen Long New Territories','NYL',1),(1467,98,'Austurland','AL',1),(1468,98,'Hofuoborgarsvaeoi','HF',1),(1469,98,'Norourland eystra','NE',1),(1470,98,'Norourland vestra','NV',1),(1471,98,'Suourland','SL',1),(1472,98,'Suournes','SN',1),(1473,98,'Vestfiroir','VF',1),(1474,98,'Vesturland','VL',1),(1475,99,'Andaman and Nicobar Islands','AN',1),(1476,99,'Andhra Pradesh','AP',1),(1477,99,'Arunachal Pradesh','AR',1),(1478,99,'Assam','AS',1),(1479,99,'Bihar','BI',1),(1480,99,'Chandigarh','CH',1),(1481,99,'Dadra and Nagar Haveli','DA',1),(1482,99,'Daman and Diu','DM',1),(1483,99,'Delhi','DE',1),(1484,99,'Goa','GO',1),(1485,99,'Gujarat','GU',1),(1486,99,'Haryana','HA',1),(1487,99,'Himachal Pradesh','HP',1),(1488,99,'Jammu and Kashmir','JA',1),(1489,99,'Karnataka','KA',1),(1490,99,'Kerala','KE',1),(1491,99,'Lakshadweep Islands','LI',1),(1492,99,'Madhya Pradesh','MP',1),(1493,99,'Maharashtra','MA',1),(1494,99,'Manipur','MN',1),(1495,99,'Meghalaya','ME',1),(1496,99,'Mizoram','MI',1),(1497,99,'Nagaland','NA',1),(1498,99,'Orissa','OR',1),(1499,99,'Pondicherry','PO',1),(1500,99,'Punjab','PU',1),(1501,99,'Rajasthan','RA',1),(1502,99,'Sikkim','SI',1),(1503,99,'Tamil Nadu','TN',1),(1504,99,'Tripura','TR',1),(1505,99,'Uttar Pradesh','UP',1),(1506,99,'West Bengal','WB',1),(1507,100,'Aceh','AC',1),(1508,100,'Bali','BA',1),(1509,100,'Banten','BT',1),(1510,100,'Bengkulu','BE',1),(1511,100,'BoDeTaBek','BD',1),(1512,100,'Gorontalo','GO',1),(1513,100,'Jakarta Raya','JK',1),(1514,100,'Jambi','JA',1),(1515,100,'Jawa Barat','JB',1),(1516,100,'Jawa Tengah','JT',1),(1517,100,'Jawa Timur','JI',1),(1518,100,'Kalimantan Barat','KB',1),(1519,100,'Kalimantan Selatan','KS',1),(1520,100,'Kalimantan Tengah','KT',1),(1521,100,'Kalimantan Timur','KI',1),(1522,100,'Kepulauan Bangka Belitung','BB',1),(1523,100,'Lampung','LA',1),(1524,100,'Maluku','MA',1),(1525,100,'Maluku Utara','MU',1),(1526,100,'Nusa Tenggara Barat','NB',1),(1527,100,'Nusa Tenggara Timur','NT',1),(1528,100,'Papua','PA',1),(1529,100,'Riau','RI',1),(1530,100,'Sulawesi Selatan','SN',1),(1531,100,'Sulawesi Tengah','ST',1),(1532,100,'Sulawesi Tenggara','SG',1),(1533,100,'Sulawesi Utara','SA',1),(1534,100,'Sumatera Barat','SB',1),(1535,100,'Sumatera Selatan','SS',1),(1536,100,'Sumatera Utara','SU',1),(1537,100,'Yogyakarta','YO',1),(1538,101,'Tehran','TEH',1),(1539,101,'Qom','QOM',1),(1540,101,'Markazi','MKZ',1),(1541,101,'Qazvin','QAZ',1),(1542,101,'Gilan','GIL',1),(1543,101,'Ardabil','ARD',1),(1544,101,'Zanjan','ZAN',1),(1545,101,'East Azarbaijan','EAZ',1),(1546,101,'West Azarbaijan','WEZ',1),(1547,101,'Kurdistan','KRD',1),(1548,101,'Hamadan','HMD',1),(1549,101,'Kermanshah','KRM',1),(1550,101,'Ilam','ILM',1),(1551,101,'Lorestan','LRS',1),(1552,101,'Khuzestan','KZT',1),(1553,101,'Chahar Mahaal and Bakhtiari','CMB',1),(1554,101,'Kohkiluyeh and Buyer Ahmad','KBA',1),(1555,101,'Bushehr','BSH',1),(1556,101,'Fars','FAR',1),(1557,101,'Hormozgan','HRM',1),(1558,101,'Sistan and Baluchistan','SBL',1),(1559,101,'Kerman','KRB',1),(1560,101,'Yazd','YZD',1),(1561,101,'Esfahan','EFH',1),(1562,101,'Semnan','SMN',1),(1563,101,'Mazandaran','MZD',1),(1564,101,'Golestan','GLS',1),(1565,101,'North Khorasan','NKH',1),(1566,101,'Razavi Khorasan','RKH',1),(1567,101,'South Khorasan','SKH',1),(1568,102,'Baghdad','BD',1),(1569,102,'Salah ad Din','SD',1),(1570,102,'Diyala','DY',1),(1571,102,'Wasit','WS',1),(1572,102,'Maysan','MY',1),(1573,102,'Al Basrah','BA',1),(1574,102,'Dhi Qar','DQ',1),(1575,102,'Al Muthanna','MU',1),(1576,102,'Al Qadisyah','QA',1),(1577,102,'Babil','BB',1),(1578,102,'Al Karbala','KB',1),(1579,102,'An Najaf','NJ',1),(1580,102,'Al Anbar','AB',1),(1581,102,'Ninawa','NN',1),(1582,102,'Dahuk','DH',1),(1583,102,'Arbil','AL',1),(1584,102,'At Ta\'mim','TM',1),(1585,102,'As Sulaymaniyah','SL',1),(1586,103,'Carlow','CA',1),(1587,103,'Cavan','CV',1),(1588,103,'Clare','CL',1),(1589,103,'Cork','CO',1),(1590,103,'Donegal','DO',1),(1591,103,'Dublin','DU',1),(1592,103,'Galway','GA',1),(1593,103,'Kerry','KE',1),(1594,103,'Kildare','KI',1),(1595,103,'Kilkenny','KL',1),(1596,103,'Laois','LA',1),(1597,103,'Leitrim','LE',1),(1598,103,'Limerick','LI',1),(1599,103,'Longford','LO',1),(1600,103,'Louth','LU',1),(1601,103,'Mayo','MA',1),(1602,103,'Meath','ME',1),(1603,103,'Monaghan','MO',1),(1604,103,'Offaly','OF',1),(1605,103,'Roscommon','RO',1),(1606,103,'Sligo','SL',1),(1607,103,'Tipperary','TI',1),(1608,103,'Waterford','WA',1),(1609,103,'Westmeath','WE',1),(1610,103,'Wexford','WX',1),(1611,103,'Wicklow','WI',1),(1612,104,'Be\'er Sheva','BS',1),(1613,104,'Bika\'at Hayarden','BH',1),(1614,104,'Eilat and Arava','EA',1),(1615,104,'Galil','GA',1),(1616,104,'Haifa','HA',1),(1617,104,'Jehuda Mountains','JM',1),(1618,104,'Jerusalem','JE',1),(1619,104,'Negev','NE',1),(1620,104,'Semaria','SE',1),(1621,104,'Sharon','SH',1),(1622,104,'Tel Aviv (Gosh Dan)','TA',1),(3860,105,'Caltanissetta','CL',1),(3842,105,'Agrigento','AG',1),(3843,105,'Alessandria','AL',1),(3844,105,'Ancona','AN',1),(3845,105,'Aosta','AO',1),(3846,105,'Arezzo','AR',1),(3847,105,'Ascoli Piceno','AP',1),(3848,105,'Asti','AT',1),(3849,105,'Avellino','AV',1),(3850,105,'Bari','BA',1),(3851,105,'Belluno','BL',1),(3852,105,'Benevento','BN',1),(3853,105,'Bergamo','BG',1),(3854,105,'Biella','BI',1),(3855,105,'Bologna','BO',1),(3856,105,'Bolzano','BZ',1),(3857,105,'Brescia','BS',1),(3858,105,'Brindisi','BR',1),(3859,105,'Cagliari','CA',1),(1643,106,'Clarendon Parish','CLA',1),(1644,106,'Hanover Parish','HAN',1),(1645,106,'Kingston Parish','KIN',1),(1646,106,'Manchester Parish','MAN',1),(1647,106,'Portland Parish','POR',1),(1648,106,'Saint Andrew Parish','AND',1),(1649,106,'Saint Ann Parish','ANN',1),(1650,106,'Saint Catherine Parish','CAT',1),(1651,106,'Saint Elizabeth Parish','ELI',1),(1652,106,'Saint James Parish','JAM',1),(1653,106,'Saint Mary Parish','MAR',1),(1654,106,'Saint Thomas Parish','THO',1),(1655,106,'Trelawny Parish','TRL',1),(1656,106,'Westmoreland Parish','WML',1),(1657,107,'Aichi','AI',1),(1658,107,'Akita','AK',1),(1659,107,'Aomori','AO',1),(1660,107,'Chiba','CH',1),(1661,107,'Ehime','EH',1),(1662,107,'Fukui','FK',1),(1663,107,'Fukuoka','FU',1),(1664,107,'Fukushima','FS',1),(1665,107,'Gifu','GI',1),(1666,107,'Gumma','GU',1),(1667,107,'Hiroshima','HI',1),(1668,107,'Hokkaido','HO',1),(1669,107,'Hyogo','HY',1),(1670,107,'Ibaraki','IB',1),(1671,107,'Ishikawa','IS',1),(1672,107,'Iwate','IW',1),(1673,107,'Kagawa','KA',1),(1674,107,'Kagoshima','KG',1),(1675,107,'Kanagawa','KN',1),(1676,107,'Kochi','KO',1),(1677,107,'Kumamoto','KU',1),(1678,107,'Kyoto','KY',1),(1679,107,'Mie','MI',1),(1680,107,'Miyagi','MY',1),(1681,107,'Miyazaki','MZ',1),(1682,107,'Nagano','NA',1),(1683,107,'Nagasaki','NG',1),(1684,107,'Nara','NR',1),(1685,107,'Niigata','NI',1),(1686,107,'Oita','OI',1),(1687,107,'Okayama','OK',1),(1688,107,'Okinawa','ON',1),(1689,107,'Osaka','OS',1),(1690,107,'Saga','SA',1),(1691,107,'Saitama','SI',1),(1692,107,'Shiga','SH',1),(1693,107,'Shimane','SM',1),(1694,107,'Shizuoka','SZ',1),(1695,107,'Tochigi','TO',1),(1696,107,'Tokushima','TS',1),(1697,107,'Tokyo','TK',1),(1698,107,'Tottori','TT',1),(1699,107,'Toyama','TY',1),(1700,107,'Wakayama','WA',1),(1701,107,'Yamagata','YA',1),(1702,107,'Yamaguchi','YM',1),(1703,107,'Yamanashi','YN',1),(1704,108,'\'Amman','AM',1),(1705,108,'Ajlun','AJ',1),(1706,108,'Al \'Aqabah','AA',1),(1707,108,'Al Balqa\'','AB',1),(1708,108,'Al Karak','AK',1),(1709,108,'Al Mafraq','AL',1),(1710,108,'At Tafilah','AT',1),(1711,108,'Az Zarqa\'','AZ',1),(1712,108,'Irbid','IR',1),(1713,108,'Jarash','JA',1),(1714,108,'Ma\'an','MA',1),(1715,108,'Madaba','MD',1),(1716,109,'Almaty','AL',1),(1717,109,'Almaty City','AC',1),(1718,109,'Aqmola','AM',1),(1719,109,'Aqtobe','AQ',1),(1720,109,'Astana City','AS',1),(1721,109,'Atyrau','AT',1),(1722,109,'Batys Qazaqstan','BA',1),(1723,109,'Bayqongyr City','BY',1),(1724,109,'Mangghystau','MA',1),(1725,109,'Ongtustik Qazaqstan','ON',1),(1726,109,'Pavlodar','PA',1),(1727,109,'Qaraghandy','QA',1),(1728,109,'Qostanay','QO',1),(1729,109,'Qyzylorda','QY',1),(1730,109,'Shyghys Qazaqstan','SH',1),(1731,109,'Soltustik Qazaqstan','SO',1),(1732,109,'Zhambyl','ZH',1),(1733,110,'Central','CE',1),(1734,110,'Coast','CO',1),(1735,110,'Eastern','EA',1),(1736,110,'Nairobi Area','NA',1),(1737,110,'North Eastern','NE',1),(1738,110,'Nyanza','NY',1),(1739,110,'Rift Valley','RV',1),(1740,110,'Western','WE',1),(1741,111,'Abaiang','AG',1),(1742,111,'Abemama','AM',1),(1743,111,'Aranuka','AK',1),(1744,111,'Arorae','AO',1),(1745,111,'Banaba','BA',1),(1746,111,'Beru','BE',1),(1747,111,'Butaritari','bT',1),(1748,111,'Kanton','KA',1),(1749,111,'Kiritimati','KR',1),(1750,111,'Kuria','KU',1),(1751,111,'Maiana','MI',1),(1752,111,'Makin','MN',1),(1753,111,'Marakei','ME',1),(1754,111,'Nikunau','NI',1),(1755,111,'Nonouti','NO',1),(1756,111,'Onotoa','ON',1),(1757,111,'Tabiteuea','TT',1),(1758,111,'Tabuaeran','TR',1),(1759,111,'Tamana','TM',1),(1760,111,'Tarawa','TW',1),(1761,111,'Teraina','TE',1),(1762,112,'Chagang-do','CHA',1),(1763,112,'Hamgyong-bukto','HAB',1),(1764,112,'Hamgyong-namdo','HAN',1),(1765,112,'Hwanghae-bukto','HWB',1),(1766,112,'Hwanghae-namdo','HWN',1),(1767,112,'Kangwon-do','KAN',1),(1768,112,'P\'yongan-bukto','PYB',1),(1769,112,'P\'yongan-namdo','PYN',1),(1770,112,'Ryanggang-do (Yanggang-do)','YAN',1),(1771,112,'Rason Directly Governed City','NAJ',1),(1772,112,'P\'yongyang Special City','PYO',1),(1773,113,'Ch\'ungch\'ong-bukto','CO',1),(1774,113,'Ch\'ungch\'ong-namdo','CH',1),(1775,113,'Cheju-do','CD',1),(1776,113,'Cholla-bukto','CB',1),(1777,113,'Cholla-namdo','CN',1),(1778,113,'Inch\'on-gwangyoksi','IG',1),(1779,113,'Kangwon-do','KA',1),(1780,113,'Kwangju-gwangyoksi','KG',1),(1781,113,'Kyonggi-do','KD',1),(1782,113,'Kyongsang-bukto','KB',1),(1783,113,'Kyongsang-namdo','KN',1),(1784,113,'Pusan-gwangyoksi','PG',1),(1785,113,'Soul-t\'ukpyolsi','SO',1),(1786,113,'Taegu-gwangyoksi','TA',1),(1787,113,'Taejon-gwangyoksi','TG',1),(1788,114,'Al \'Asimah','AL',1),(1789,114,'Al Ahmadi','AA',1),(1790,114,'Al Farwaniyah','AF',1),(1791,114,'Al Jahra\'','AJ',1),(1792,114,'Hawalli','HA',1),(1793,115,'Bishkek','GB',1),(1794,115,'Batken','B',1),(1795,115,'Chu','C',1),(1796,115,'Jalal-Abad','J',1),(1797,115,'Naryn','N',1),(1798,115,'Osh','O',1),(1799,115,'Talas','T',1),(1800,115,'Ysyk-Kol','Y',1),(1801,116,'Vientiane','VT',1),(1802,116,'Attapu','AT',1),(1803,116,'Bokeo','BK',1),(1804,116,'Bolikhamxai','BL',1),(1805,116,'Champasak','CH',1),(1806,116,'Houaphan','HO',1),(1807,116,'Khammouan','KH',1),(1808,116,'Louang Namtha','LM',1),(1809,116,'Louangphabang','LP',1),(1810,116,'Oudomxai','OU',1),(1811,116,'Phongsali','PH',1),(1812,116,'Salavan','SL',1),(1813,116,'Savannakhet','SV',1),(1814,116,'Vientiane','VI',1),(1815,116,'Xaignabouli','XA',1),(1816,116,'Xekong','XE',1),(1817,116,'Xiangkhoang','XI',1),(1818,116,'Xaisomboun','XN',1),(1852,119,'Berea','BE',1),(1853,119,'Butha-Buthe','BB',1),(1854,119,'Leribe','LE',1),(1855,119,'Mafeteng','MF',1),(1856,119,'Maseru','MS',1),(1857,119,'Mohale\'s Hoek','MH',1),(1858,119,'Mokhotlong','MK',1),(1859,119,'Qacha\'s Nek','QN',1),(1860,119,'Quthing','QT',1),(1861,119,'Thaba-Tseka','TT',1),(1862,120,'Bomi','BI',1),(1863,120,'Bong','BG',1),(1864,120,'Grand Bassa','GB',1),(1865,120,'Grand Cape Mount','CM',1),(1866,120,'Grand Gedeh','GG',1),(1867,120,'Grand Kru','GK',1),(1868,120,'Lofa','LO',1),(1869,120,'Margibi','MG',1),(1870,120,'Maryland','ML',1),(1871,120,'Montserrado','MS',1),(1872,120,'Nimba','NB',1),(1873,120,'River Cess','RC',1),(1874,120,'Sinoe','SN',1),(1875,121,'Ajdabiya','AJ',1),(1876,121,'Al \'Aziziyah','AZ',1),(1877,121,'Al Fatih','FA',1),(1878,121,'Al Jabal al Akhdar','JA',1),(1879,121,'Al Jufrah','JU',1),(1880,121,'Al Khums','KH',1),(1881,121,'Al Kufrah','KU',1),(1882,121,'An Nuqat al Khams','NK',1),(1883,121,'Ash Shati\'','AS',1),(1884,121,'Awbari','AW',1),(1885,121,'Az Zawiyah','ZA',1),(1886,121,'Banghazi','BA',1),(1887,121,'Darnah','DA',1),(1888,121,'Ghadamis','GD',1),(1889,121,'Gharyan','GY',1),(1890,121,'Misratah','MI',1),(1891,121,'Murzuq','MZ',1),(1892,121,'Sabha','SB',1),(1893,121,'Sawfajjin','SW',1),(1894,121,'Surt','SU',1),(1895,121,'Tarabulus (Tripoli)','TL',1),(1896,121,'Tarhunah','TH',1),(1897,121,'Tubruq','TU',1),(1898,121,'Yafran','YA',1),(1899,121,'Zlitan','ZL',1),(1900,122,'Vaduz','V',1),(1901,122,'Schaan','A',1),(1902,122,'Balzers','B',1),(1903,122,'Triesen','N',1),(1904,122,'Eschen','E',1),(1905,122,'Mauren','M',1),(1906,122,'Triesenberg','T',1),(1907,122,'Ruggell','R',1),(1908,122,'Gamprin','G',1),(1909,122,'Schellenberg','L',1),(1910,122,'Planken','P',1),(1911,123,'Alytus','AL',1),(1912,123,'Kaunas','KA',1),(1913,123,'Klaipeda','KL',1),(1914,123,'Marijampole','MA',1),(1915,123,'Panevezys','PA',1),(1916,123,'Siauliai','SI',1),(1917,123,'Taurage','TA',1),(1918,123,'Telsiai','TE',1),(1919,123,'Utena','UT',1),(1920,123,'Vilnius','VI',1),(1921,124,'Diekirch','DD',1),(1922,124,'Clervaux','DC',1),(1923,124,'Redange','DR',1),(1924,124,'Vianden','DV',1),(1925,124,'Wiltz','DW',1),(1926,124,'Grevenmacher','GG',1),(1927,124,'Echternach','GE',1),(1928,124,'Remich','GR',1),(1929,124,'Luxembourg','LL',1),(1930,124,'Capellen','LC',1),(1931,124,'Esch-sur-Alzette','LE',1),(1932,124,'Mersch','LM',1),(1933,125,'Our Lady Fatima Parish','OLF',1),(1934,125,'St. Anthony Parish','ANT',1),(1935,125,'St. Lazarus Parish','LAZ',1),(1936,125,'Cathedral Parish','CAT',1),(1937,125,'St. Lawrence Parish','LAW',1),(1938,127,'Antananarivo','AN',1),(1939,127,'Antsiranana','AS',1),(1940,127,'Fianarantsoa','FN',1),(1941,127,'Mahajanga','MJ',1),(1942,127,'Toamasina','TM',1),(1943,127,'Toliara','TL',1),(1944,128,'Balaka','BLK',1),(1945,128,'Blantyre','BLT',1),(1946,128,'Chikwawa','CKW',1),(1947,128,'Chiradzulu','CRD',1),(1948,128,'Chitipa','CTP',1),(1949,128,'Dedza','DDZ',1),(1950,128,'Dowa','DWA',1),(1951,128,'Karonga','KRG',1),(1952,128,'Kasungu','KSG',1),(1953,128,'Likoma','LKM',1),(1954,128,'Lilongwe','LLG',1),(1955,128,'Machinga','MCG',1),(1956,128,'Mangochi','MGC',1),(1957,128,'Mchinji','MCH',1),(1958,128,'Mulanje','MLJ',1),(1959,128,'Mwanza','MWZ',1),(1960,128,'Mzimba','MZM',1),(1961,128,'Ntcheu','NTU',1),(1962,128,'Nkhata Bay','NKB',1),(1963,128,'Nkhotakota','NKH',1),(1964,128,'Nsanje','NSJ',1),(1965,128,'Ntchisi','NTI',1),(1966,128,'Phalombe','PHL',1),(1967,128,'Rumphi','RMP',1),(1968,128,'Salima','SLM',1),(1969,128,'Thyolo','THY',1),(1970,128,'Zomba','ZBA',1),(1971,129,'Johor','MY-01',1),(1972,129,'Kedah','MY-02',1),(1973,129,'Kelantan','MY-03',1),(1974,129,'Labuan','MY-15',1),(1975,129,'Melaka','MY-04',1),(1976,129,'Negeri Sembilan','MY-05',1),(1977,129,'Pahang','MY-06',1),(1978,129,'Perak','MY-08',1),(1979,129,'Perlis','MY-09',1),(1980,129,'Pulau Pinang','MY-07',1),(1981,129,'Sabah','MY-12',1),(1982,129,'Sarawak','MY-13',1),(1983,129,'Selangor','MY-10',1),(1984,129,'Terengganu','MY-11',1),(1985,129,'Kuala Lumpur','MY-14',1),(4035,129,'Putrajaya','MY-16',1),(1986,130,'Thiladhunmathi Uthuru','THU',1),(1987,130,'Thiladhunmathi Dhekunu','THD',1),(1988,130,'Miladhunmadulu Uthuru','MLU',1),(1989,130,'Miladhunmadulu Dhekunu','MLD',1),(1990,130,'Maalhosmadulu Uthuru','MAU',1),(1991,130,'Maalhosmadulu Dhekunu','MAD',1),(1992,130,'Faadhippolhu','FAA',1),(1993,130,'Male Atoll','MAA',1),(1994,130,'Ari Atoll Uthuru','AAU',1),(1995,130,'Ari Atoll Dheknu','AAD',1),(1996,130,'Felidhe Atoll','FEA',1),(1997,130,'Mulaku Atoll','MUA',1),(1998,130,'Nilandhe Atoll Uthuru','NAU',1),(1999,130,'Nilandhe Atoll Dhekunu','NAD',1),(2000,130,'Kolhumadulu','KLH',1),(2001,130,'Hadhdhunmathi','HDH',1),(2002,130,'Huvadhu Atoll Uthuru','HAU',1),(2003,130,'Huvadhu Atoll Dhekunu','HAD',1),(2004,130,'Fua Mulaku','FMU',1),(2005,130,'Addu','ADD',1),(2006,131,'Gao','GA',1),(2007,131,'Kayes','KY',1),(2008,131,'Kidal','KD',1),(2009,131,'Koulikoro','KL',1),(2010,131,'Mopti','MP',1),(2011,131,'Segou','SG',1),(2012,131,'Sikasso','SK',1),(2013,131,'Tombouctou','TB',1),(2014,131,'Bamako Capital District','CD',1),(2015,132,'Attard','ATT',1),(2016,132,'Balzan','BAL',1),(2017,132,'Birgu','BGU',1),(2018,132,'Birkirkara','BKK',1),(2019,132,'Birzebbuga','BRZ',1),(2020,132,'Bormla','BOR',1),(2021,132,'Dingli','DIN',1),(2022,132,'Fgura','FGU',1),(2023,132,'Floriana','FLO',1),(2024,132,'Gudja','GDJ',1),(2025,132,'Gzira','GZR',1),(2026,132,'Gargur','GRG',1),(2027,132,'Gaxaq','GXQ',1),(2028,132,'Hamrun','HMR',1),(2029,132,'Iklin','IKL',1),(2030,132,'Isla','ISL',1),(2031,132,'Kalkara','KLK',1),(2032,132,'Kirkop','KRK',1),(2033,132,'Lija','LIJ',1),(2034,132,'Luqa','LUQ',1),(2035,132,'Marsa','MRS',1),(2036,132,'Marsaskala','MKL',1),(2037,132,'Marsaxlokk','MXL',1),(2038,132,'Mdina','MDN',1),(2039,132,'Melliea','MEL',1),(2040,132,'Mgarr','MGR',1),(2041,132,'Mosta','MST',1),(2042,132,'Mqabba','MQA',1),(2043,132,'Msida','MSI',1),(2044,132,'Mtarfa','MTF',1),(2045,132,'Naxxar','NAX',1),(2046,132,'Paola','PAO',1),(2047,132,'Pembroke','PEM',1),(2048,132,'Pieta','PIE',1),(2049,132,'Qormi','QOR',1),(2050,132,'Qrendi','QRE',1),(2051,132,'Rabat','RAB',1),(2052,132,'Safi','SAF',1),(2053,132,'San Giljan','SGI',1),(2054,132,'Santa Lucija','SLU',1),(2055,132,'San Pawl il-Bahar','SPB',1),(2056,132,'San Gwann','SGW',1),(2057,132,'Santa Venera','SVE',1),(2058,132,'Siggiewi','SIG',1),(2059,132,'Sliema','SLM',1),(2060,132,'Swieqi','SWQ',1),(2061,132,'Ta Xbiex','TXB',1),(2062,132,'Tarxien','TRX',1),(2063,132,'Valletta','VLT',1),(2064,132,'Xgajra','XGJ',1),(2065,132,'Zabbar','ZBR',1),(2066,132,'Zebbug','ZBG',1),(2067,132,'Zejtun','ZJT',1),(2068,132,'Zurrieq','ZRQ',1),(2069,132,'Fontana','FNT',1),(2070,132,'Ghajnsielem','GHJ',1),(2071,132,'Gharb','GHR',1),(2072,132,'Ghasri','GHS',1),(2073,132,'Kercem','KRC',1),(2074,132,'Munxar','MUN',1),(2075,132,'Nadur','NAD',1),(2076,132,'Qala','QAL',1),(2077,132,'Victoria','VIC',1),(2078,132,'San Lawrenz','SLA',1),(2079,132,'Sannat','SNT',1),(2080,132,'Xagra','ZAG',1),(2081,132,'Xewkija','XEW',1),(2082,132,'Zebbug','ZEB',1),(2083,133,'Ailinginae','ALG',1),(2084,133,'Ailinglaplap','ALL',1),(2085,133,'Ailuk','ALK',1),(2086,133,'Arno','ARN',1),(2087,133,'Aur','AUR',1),(2088,133,'Bikar','BKR',1),(2089,133,'Bikini','BKN',1),(2090,133,'Bokak','BKK',1),(2091,133,'Ebon','EBN',1),(2092,133,'Enewetak','ENT',1),(2093,133,'Erikub','EKB',1),(2094,133,'Jabat','JBT',1),(2095,133,'Jaluit','JLT',1),(2096,133,'Jemo','JEM',1),(2097,133,'Kili','KIL',1),(2098,133,'Kwajalein','KWJ',1),(2099,133,'Lae','LAE',1),(2100,133,'Lib','LIB',1),(2101,133,'Likiep','LKP',1),(2102,133,'Majuro','MJR',1),(2103,133,'Maloelap','MLP',1),(2104,133,'Mejit','MJT',1),(2105,133,'Mili','MIL',1),(2106,133,'Namorik','NMK',1),(2107,133,'Namu','NAM',1),(2108,133,'Rongelap','RGL',1),(2109,133,'Rongrik','RGK',1),(2110,133,'Toke','TOK',1),(2111,133,'Ujae','UJA',1),(2112,133,'Ujelang','UJL',1),(2113,133,'Utirik','UTK',1),(2114,133,'Wotho','WTH',1),(2115,133,'Wotje','WTJ',1),(2116,135,'Adrar','AD',1),(2117,135,'Assaba','AS',1),(2118,135,'Brakna','BR',1),(2119,135,'Dakhlet Nouadhibou','DN',1),(2120,135,'Gorgol','GO',1),(2121,135,'Guidimaka','GM',1),(2122,135,'Hodh Ech Chargui','HC',1),(2123,135,'Hodh El Gharbi','HG',1),(2124,135,'Inchiri','IN',1),(2125,135,'Tagant','TA',1),(2126,135,'Tiris Zemmour','TZ',1),(2127,135,'Trarza','TR',1),(2128,135,'Nouakchott','NO',1),(2129,136,'Beau Bassin-Rose Hill','BR',1),(2130,136,'Curepipe','CU',1),(2131,136,'Port Louis','PU',1),(2132,136,'Quatre Bornes','QB',1),(2133,136,'Vacoas-Phoenix','VP',1),(2134,136,'Agalega Islands','AG',1),(2135,136,'Cargados Carajos Shoals (Saint Brandon Islands)','CC',1),(2136,136,'Rodrigues','RO',1),(2137,136,'Black River','BL',1),(2138,136,'Flacq','FL',1),(2139,136,'Grand Port','GP',1),(2140,136,'Moka','MO',1),(2141,136,'Pamplemousses','PA',1),(2142,136,'Plaines Wilhems','PW',1),(2143,136,'Port Louis','PL',1),(2144,136,'Riviere du Rempart','RR',1),(2145,136,'Savanne','SA',1),(2146,138,'Baja California Norte','BN',1),(2147,138,'Baja California Sur','BS',1),(2148,138,'Campeche','CA',1),(2149,138,'Chiapas','CI',1),(2150,138,'Chihuahua','CH',1),(2151,138,'Coahuila de Zaragoza','CZ',1),(2152,138,'Colima','CL',1),(2153,138,'Distrito Federal','DF',1),(2154,138,'Durango','DU',1),(2155,138,'Guanajuato','GA',1),(2156,138,'Guerrero','GE',1),(2157,138,'Hidalgo','HI',1),(2158,138,'Jalisco','JA',1),(2159,138,'Mexico','ME',1),(2160,138,'Michoacan de Ocampo','MI',1),(2161,138,'Morelos','MO',1),(2162,138,'Nayarit','NA',1),(2163,138,'Nuevo Leon','NL',1),(2164,138,'Oaxaca','OA',1),(2165,138,'Puebla','PU',1),(2166,138,'Queretaro de Arteaga','QA',1),(2167,138,'Quintana Roo','QR',1),(2168,138,'San Luis Potosi','SA',1),(2169,138,'Sinaloa','SI',1),(2170,138,'Sonora','SO',1),(2171,138,'Tabasco','TB',1),(2172,138,'Tamaulipas','TM',1),(2173,138,'Tlaxcala','TL',1),(2174,138,'Veracruz-Llave','VE',1),(2175,138,'Yucatan','YU',1),(2176,138,'Zacatecas','ZA',1),(2177,139,'Chuuk','C',1),(2178,139,'Kosrae','K',1),(2179,139,'Pohnpei','P',1),(2180,139,'Yap','Y',1),(2181,140,'Gagauzia','GA',1),(2182,140,'Chisinau','CU',1),(2183,140,'Balti','BA',1),(2184,140,'Cahul','CA',1),(2185,140,'Edinet','ED',1),(2186,140,'Lapusna','LA',1),(2187,140,'Orhei','OR',1),(2188,140,'Soroca','SO',1),(2189,140,'Tighina','TI',1),(2190,140,'Ungheni','UN',1),(2191,140,'St‚nga Nistrului','SN',1),(2192,141,'Fontvieille','FV',1),(2193,141,'La Condamine','LC',1),(2194,141,'Monaco-Ville','MV',1),(2195,141,'Monte-Carlo','MC',1),(2196,142,'Ulanbaatar','1',1),(2197,142,'Orhon','035',1),(2198,142,'Darhan uul','037',1),(2199,142,'Hentiy','039',1),(2200,142,'Hovsgol','041',1),(2201,142,'Hovd','043',1),(2202,142,'Uvs','046',1),(2203,142,'Tov','047',1),(2204,142,'Selenge','049',1),(2205,142,'Suhbaatar','051',1),(2206,142,'Omnogovi','053',1),(2207,142,'Ovorhangay','055',1),(2208,142,'Dzavhan','057',1),(2209,142,'DundgovL','059',1),(2210,142,'Dornod','061',1),(2211,142,'Dornogov','063',1),(2212,142,'Govi-Sumber','064',1),(2213,142,'Govi-Altay','065',1),(2214,142,'Bulgan','067',1),(2215,142,'Bayanhongor','069',1),(2216,142,'Bayan-Olgiy','071',1),(2217,142,'Arhangay','073',1),(2218,143,'Saint Anthony','A',1),(2219,143,'Saint Georges','G',1),(2220,143,'Saint Peter','P',1),(2221,144,'Agadir','AGD',1),(2222,144,'Al Hoceima','HOC',1),(2223,144,'Azilal','AZI',1),(2224,144,'Beni Mellal','BME',1),(2225,144,'Ben Slimane','BSL',1),(2226,144,'Boulemane','BLM',1),(2227,144,'Casablanca','CBL',1),(2228,144,'Chaouen','CHA',1),(2229,144,'El Jadida','EJA',1),(2230,144,'El Kelaa des Sraghna','EKS',1),(2231,144,'Er Rachidia','ERA',1),(2232,144,'Essaouira','ESS',1),(2233,144,'Fes','FES',1),(2234,144,'Figuig','FIG',1),(2235,144,'Guelmim','GLM',1),(2236,144,'Ifrane','IFR',1),(2237,144,'Kenitra','KEN',1),(2238,144,'Khemisset','KHM',1),(2239,144,'Khenifra','KHN',1),(2240,144,'Khouribga','KHO',1),(2241,144,'Laayoune','LYN',1),(2242,144,'Larache','LAR',1),(2243,144,'Marrakech','MRK',1),(2244,144,'Meknes','MKN',1),(2245,144,'Nador','NAD',1),(2246,144,'Ouarzazate','ORZ',1),(2247,144,'Oujda','OUJ',1),(2248,144,'Rabat-Sale','RSA',1),(2249,144,'Safi','SAF',1),(2250,144,'Settat','SET',1),(2251,144,'Sidi Kacem','SKA',1),(2252,144,'Tangier','TGR',1),(2253,144,'Tan-Tan','TAN',1),(2254,144,'Taounate','TAO',1),(2255,144,'Taroudannt','TRD',1),(2256,144,'Tata','TAT',1),(2257,144,'Taza','TAZ',1),(2258,144,'Tetouan','TET',1),(2259,144,'Tiznit','TIZ',1),(2260,144,'Ad Dakhla','ADK',1),(2261,144,'Boujdour','BJD',1),(2262,144,'Es Smara','ESM',1),(2263,145,'Cabo Delgado','CD',1),(2264,145,'Gaza','GZ',1),(2265,145,'Inhambane','IN',1),(2266,145,'Manica','MN',1),(2267,145,'Maputo (city)','MC',1),(2268,145,'Maputo','MP',1),(2269,145,'Nampula','NA',1),(2270,145,'Niassa','NI',1),(2271,145,'Sofala','SO',1),(2272,145,'Tete','TE',1),(2273,145,'Zambezia','ZA',1),(2274,146,'Ayeyarwady','AY',1),(2275,146,'Bago','BG',1),(2276,146,'Magway','MG',1),(2277,146,'Mandalay','MD',1),(2278,146,'Sagaing','SG',1),(2279,146,'Tanintharyi','TN',1),(2280,146,'Yangon','YG',1),(2281,146,'Chin State','CH',1),(2282,146,'Kachin State','KC',1),(2283,146,'Kayah State','KH',1),(2284,146,'Kayin State','KN',1),(2285,146,'Mon State','MN',1),(2286,146,'Rakhine State','RK',1),(2287,146,'Shan State','SH',1),(2288,147,'Caprivi','CA',1),(2289,147,'Erongo','ER',1),(2290,147,'Hardap','HA',1),(2291,147,'Karas','KR',1),(2292,147,'Kavango','KV',1),(2293,147,'Khomas','KH',1),(2294,147,'Kunene','KU',1),(2295,147,'Ohangwena','OW',1),(2296,147,'Omaheke','OK',1),(2297,147,'Omusati','OT',1),(2298,147,'Oshana','ON',1),(2299,147,'Oshikoto','OO',1),(2300,147,'Otjozondjupa','OJ',1),(2301,148,'Aiwo','AO',1),(2302,148,'Anabar','AA',1),(2303,148,'Anetan','AT',1),(2304,148,'Anibare','AI',1),(2305,148,'Baiti','BA',1),(2306,148,'Boe','BO',1),(2307,148,'Buada','BU',1),(2308,148,'Denigomodu','DE',1),(2309,148,'Ewa','EW',1),(2310,148,'Ijuw','IJ',1),(2311,148,'Meneng','ME',1),(2312,148,'Nibok','NI',1),(2313,148,'Uaboe','UA',1),(2314,148,'Yaren','YA',1),(2315,149,'Bagmati','BA',1),(2316,149,'Bheri','BH',1),(2317,149,'Dhawalagiri','DH',1),(2318,149,'Gandaki','GA',1),(2319,149,'Janakpur','JA',1),(2320,149,'Karnali','KA',1),(2321,149,'Kosi','KO',1),(2322,149,'Lumbini','LU',1),(2323,149,'Mahakali','MA',1),(2324,149,'Mechi','ME',1),(2325,149,'Narayani','NA',1),(2326,149,'Rapti','RA',1),(2327,149,'Sagarmatha','SA',1),(2328,149,'Seti','SE',1),(2329,150,'Drenthe','DR',1),(2330,150,'Flevoland','FL',1),(2331,150,'Friesland','FR',1),(2332,150,'Gelderland','GE',1),(2333,150,'Groningen','GR',1),(2334,150,'Limburg','LI',1),(2335,150,'Noord Brabant','NB',1),(2336,150,'Noord Holland','NH',1),(2337,150,'Overijssel','OV',1),(2338,150,'Utrecht','UT',1),(2339,150,'Zeeland','ZE',1),(2340,150,'Zuid Holland','ZH',1),(2341,152,'Iles Loyaute','L',1),(2342,152,'Nord','N',1),(2343,152,'Sud','S',1),(2344,153,'Auckland','AUK',1),(2345,153,'Bay of Plenty','BOP',1),(2346,153,'Canterbury','CAN',1),(2347,153,'Coromandel','COR',1),(2348,153,'Gisborne','GIS',1),(2349,153,'Fiordland','FIO',1),(2350,153,'Hawke\'s Bay','HKB',1),(2351,153,'Marlborough','MBH',1),(2352,153,'Manawatu-Wanganui','MWT',1),(2353,153,'Mt Cook-Mackenzie','MCM',1),(2354,153,'Nelson','NSN',1),(2355,153,'Northland','NTL',1),(2356,153,'Otago','OTA',1),(2357,153,'Southland','STL',1),(2358,153,'Taranaki','TKI',1),(2359,153,'Wellington','WGN',1),(2360,153,'Waikato','WKO',1),(2361,153,'Wairarapa','WAI',1),(2362,153,'West Coast','WTC',1),(2363,154,'Atlantico Norte','AN',1),(2364,154,'Atlantico Sur','AS',1),(2365,154,'Boaco','BO',1),(2366,154,'Carazo','CA',1),(2367,154,'Chinandega','CI',1),(2368,154,'Chontales','CO',1),(2369,154,'Esteli','ES',1),(2370,154,'Granada','GR',1),(2371,154,'Jinotega','JI',1),(2372,154,'Leon','LE',1),(2373,154,'Madriz','MD',1),(2374,154,'Managua','MN',1),(2375,154,'Masaya','MS',1),(2376,154,'Matagalpa','MT',1),(2377,154,'Nuevo Segovia','NS',1),(2378,154,'Rio San Juan','RS',1),(2379,154,'Rivas','RI',1),(2380,155,'Agadez','AG',1),(2381,155,'Diffa','DF',1),(2382,155,'Dosso','DS',1),(2383,155,'Maradi','MA',1),(2384,155,'Niamey','NM',1),(2385,155,'Tahoua','TH',1),(2386,155,'Tillaberi','TL',1),(2387,155,'Zinder','ZD',1),(2388,156,'Abia','AB',1),(2389,156,'Abuja Federal Capital Territory','CT',1),(2390,156,'Adamawa','AD',1),(2391,156,'Akwa Ibom','AK',1),(2392,156,'Anambra','AN',1),(2393,156,'Bauchi','BC',1),(2394,156,'Bayelsa','BY',1),(2395,156,'Benue','BN',1),(2396,156,'Borno','BO',1),(2397,156,'Cross River','CR',1),(2398,156,'Delta','DE',1),(2399,156,'Ebonyi','EB',1),(2400,156,'Edo','ED',1),(2401,156,'Ekiti','EK',1),(2402,156,'Enugu','EN',1),(2403,156,'Gombe','GO',1),(2404,156,'Imo','IM',1),(2405,156,'Jigawa','JI',1),(2406,156,'Kaduna','KD',1),(2407,156,'Kano','KN',1),(2408,156,'Katsina','KT',1),(2409,156,'Kebbi','KE',1),(2410,156,'Kogi','KO',1),(2411,156,'Kwara','KW',1),(2412,156,'Lagos','LA',1),(2413,156,'Nassarawa','NA',1),(2414,156,'Niger','NI',1),(2415,156,'Ogun','OG',1),(2416,156,'Ondo','ONG',1),(2417,156,'Osun','OS',1),(2418,156,'Oyo','OY',1),(2419,156,'Plateau','PL',1),(2420,156,'Rivers','RI',1),(2421,156,'Sokoto','SO',1),(2422,156,'Taraba','TA',1),(2423,156,'Yobe','YO',1),(2424,156,'Zamfara','ZA',1),(2425,159,'Northern Islands','N',1),(2426,159,'Rota','R',1),(2427,159,'Saipan','S',1),(2428,159,'Tinian','T',1),(2429,160,'Akershus','AK',1),(2430,160,'Aust-Agder','AA',1),(2431,160,'Buskerud','BU',1),(2432,160,'Finnmark','FM',1),(2433,160,'Hedmark','HM',1),(2434,160,'Hordaland','HL',1),(2435,160,'More og Romdal','MR',1),(2436,160,'Nord-Trondelag','NT',1),(2437,160,'Nordland','NL',1),(2438,160,'Ostfold','OF',1),(2439,160,'Oppland','OP',1),(2440,160,'Oslo','OL',1),(2441,160,'Rogaland','RL',1),(2442,160,'Sor-Trondelag','ST',1),(2443,160,'Sogn og Fjordane','SJ',1),(2444,160,'Svalbard','SV',1),(2445,160,'Telemark','TM',1),(2446,160,'Troms','TR',1),(2447,160,'Vest-Agder','VA',1),(2448,160,'Vestfold','VF',1),(2449,161,'Ad Dakhiliyah','DA',1),(2450,161,'Al Batinah','BA',1),(2451,161,'Al Wusta','WU',1),(2452,161,'Ash Sharqiyah','SH',1),(2453,161,'Az Zahirah','ZA',1),(2454,161,'Masqat','MA',1),(2455,161,'Musandam','MU',1),(2456,161,'Zufar','ZU',1),(2457,162,'Balochistan','B',1),(2458,162,'Federally Administered Tribal Areas','T',1),(2459,162,'Islamabad Capital Territory','I',1),(2460,162,'North-West Frontier','N',1),(2461,162,'Punjab','P',1),(2462,162,'Sindh','S',1),(2463,163,'Aimeliik','AM',1),(2464,163,'Airai','AR',1),(2465,163,'Angaur','AN',1),(2466,163,'Hatohobei','HA',1),(2467,163,'Kayangel','KA',1),(2468,163,'Koror','KO',1),(2469,163,'Melekeok','ME',1),(2470,163,'Ngaraard','NA',1),(2471,163,'Ngarchelong','NG',1),(2472,163,'Ngardmau','ND',1),(2473,163,'Ngatpang','NT',1),(2474,163,'Ngchesar','NC',1),(2475,163,'Ngeremlengui','NR',1),(2476,163,'Ngiwal','NW',1),(2477,163,'Peleliu','PE',1),(2478,163,'Sonsorol','SO',1),(2479,164,'Bocas del Toro','BT',1),(2480,164,'Chiriqui','CH',1),(2481,164,'Cocle','CC',1),(2482,164,'Colon','CL',1),(2483,164,'Darien','DA',1),(2484,164,'Herrera','HE',1),(2485,164,'Los Santos','LS',1),(2486,164,'Panama','PA',1),(2487,164,'San Blas','SB',1),(2488,164,'Veraguas','VG',1),(2489,165,'Bougainville','BV',1),(2490,165,'Central','CE',1),(2491,165,'Chimbu','CH',1),(2492,165,'Eastern Highlands','EH',1),(2493,165,'East New Britain','EB',1),(2494,165,'East Sepik','ES',1),(2495,165,'Enga','EN',1),(2496,165,'Gulf','GU',1),(2497,165,'Madang','MD',1),(2498,165,'Manus','MN',1),(2499,165,'Milne Bay','MB',1),(2500,165,'Morobe','MR',1),(2501,165,'National Capital','NC',1),(2502,165,'New Ireland','NI',1),(2503,165,'Northern','NO',1),(2504,165,'Sandaun','SA',1),(2505,165,'Southern Highlands','SH',1),(2506,165,'Western','WE',1),(2507,165,'Western Highlands','WH',1),(2508,165,'West New Britain','WB',1),(2509,166,'Alto Paraguay','AG',1),(2510,166,'Alto Parana','AN',1),(2511,166,'Amambay','AM',1),(2512,166,'Asuncion','AS',1),(2513,166,'Boqueron','BO',1),(2514,166,'Caaguazu','CG',1),(2515,166,'Caazapa','CZ',1),(2516,166,'Canindeyu','CN',1),(2517,166,'Central','CE',1),(2518,166,'Concepcion','CC',1),(2519,166,'Cordillera','CD',1),(2520,166,'Guaira','GU',1),(2521,166,'Itapua','IT',1),(2522,166,'Misiones','MI',1),(2523,166,'Neembucu','NE',1),(2524,166,'Paraguari','PA',1),(2525,166,'Presidente Hayes','PH',1),(2526,166,'San Pedro','SP',1),(2527,167,'Amazonas','AM',1),(2528,167,'Ancash','AN',1),(2529,167,'Apurimac','AP',1),(2530,167,'Arequipa','AR',1),(2531,167,'Ayacucho','AY',1),(2532,167,'Cajamarca','CJ',1),(2533,167,'Callao','CL',1),(2534,167,'Cusco','CU',1),(2535,167,'Huancavelica','HV',1),(2536,167,'Huanuco','HO',1),(2537,167,'Ica','IC',1),(2538,167,'Junin','JU',1),(2539,167,'La Libertad','LD',1),(2540,167,'Lambayeque','LY',1),(2541,167,'Lima','LI',1),(2542,167,'Loreto','LO',1),(2543,167,'Madre de Dios','MD',1),(2544,167,'Moquegua','MO',1),(2545,167,'Pasco','PA',1),(2546,167,'Piura','PI',1),(2547,167,'Puno','PU',1),(2548,167,'San Martin','SM',1),(2549,167,'Tacna','TA',1),(2550,167,'Tumbes','TU',1),(2551,167,'Ucayali','UC',1),(2552,168,'Abra','ABR',1),(2553,168,'Agusan del Norte','ANO',1),(2554,168,'Agusan del Sur','ASU',1),(2555,168,'Aklan','AKL',1),(2556,168,'Albay','ALB',1),(2557,168,'Antique','ANT',1),(2558,168,'Apayao','APY',1),(2559,168,'Aurora','AUR',1),(2560,168,'Basilan','BAS',1),(2561,168,'Bataan','BTA',1),(2562,168,'Batanes','BTE',1),(2563,168,'Batangas','BTG',1),(2564,168,'Biliran','BLR',1),(2565,168,'Benguet','BEN',1),(2566,168,'Bohol','BOL',1),(2567,168,'Bukidnon','BUK',1),(2568,168,'Bulacan','BUL',1),(2569,168,'Cagayan','CAG',1),(2570,168,'Camarines Norte','CNO',1),(2571,168,'Camarines Sur','CSU',1),(2572,168,'Camiguin','CAM',1),(2573,168,'Capiz','CAP',1),(2574,168,'Catanduanes','CAT',1),(2575,168,'Cavite','CAV',1),(2576,168,'Cebu','CEB',1),(2577,168,'Compostela','CMP',1),(2578,168,'Davao del Norte','DNO',1),(2579,168,'Davao del Sur','DSU',1),(2580,168,'Davao Oriental','DOR',1),(2581,168,'Eastern Samar','ESA',1),(2582,168,'Guimaras','GUI',1),(2583,168,'Ifugao','IFU',1),(2584,168,'Ilocos Norte','INO',1),(2585,168,'Ilocos Sur','ISU',1),(2586,168,'Iloilo','ILO',1),(2587,168,'Isabela','ISA',1),(2588,168,'Kalinga','KAL',1),(2589,168,'Laguna','LAG',1),(2590,168,'Lanao del Norte','LNO',1),(2591,168,'Lanao del Sur','LSU',1),(2592,168,'La Union','UNI',1),(2593,168,'Leyte','LEY',1),(2594,168,'Maguindanao','MAG',1),(2595,168,'Marinduque','MRN',1),(2596,168,'Masbate','MSB',1),(2597,168,'Mindoro Occidental','MIC',1),(2598,168,'Mindoro Oriental','MIR',1),(2599,168,'Misamis Occidental','MSC',1),(2600,168,'Misamis Oriental','MOR',1),(2601,168,'Mountain','MOP',1),(2602,168,'Negros Occidental','NOC',1),(2603,168,'Negros Oriental','NOR',1),(2604,168,'North Cotabato','NCT',1),(2605,168,'Northern Samar','NSM',1),(2606,168,'Nueva Ecija','NEC',1),(2607,168,'Nueva Vizcaya','NVZ',1),(2608,168,'Palawan','PLW',1),(2609,168,'Pampanga','PMP',1),(2610,168,'Pangasinan','PNG',1),(2611,168,'Quezon','QZN',1),(2612,168,'Quirino','QRN',1),(2613,168,'Rizal','RIZ',1),(2614,168,'Romblon','ROM',1),(2615,168,'Samar','SMR',1),(2616,168,'Sarangani','SRG',1),(2617,168,'Siquijor','SQJ',1),(2618,168,'Sorsogon','SRS',1),(2619,168,'South Cotabato','SCO',1),(2620,168,'Southern Leyte','SLE',1),(2621,168,'Sultan Kudarat','SKU',1),(2622,168,'Sulu','SLU',1),(2623,168,'Surigao del Norte','SNO',1),(2624,168,'Surigao del Sur','SSU',1),(2625,168,'Tarlac','TAR',1),(2626,168,'Tawi-Tawi','TAW',1),(2627,168,'Zambales','ZBL',1),(2628,168,'Zamboanga del Norte','ZNO',1),(2629,168,'Zamboanga del Sur','ZSU',1),(2630,168,'Zamboanga Sibugay','ZSI',1),(2631,170,'Dolnoslaskie','DO',1),(2632,170,'Kujawsko-Pomorskie','KP',1),(2633,170,'Lodzkie','LO',1),(2634,170,'Lubelskie','LL',1),(2635,170,'Lubuskie','LU',1),(2636,170,'Malopolskie','ML',1),(2637,170,'Mazowieckie','MZ',1),(2638,170,'Opolskie','OP',1),(2639,170,'Podkarpackie','PP',1),(2640,170,'Podlaskie','PL',1),(2641,170,'Pomorskie','PM',1),(2642,170,'Slaskie','SL',1),(2643,170,'Swietokrzyskie','SW',1),(2644,170,'Warminsko-Mazurskie','WM',1),(2645,170,'Wielkopolskie','WP',1),(2646,170,'Zachodniopomorskie','ZA',1),(2647,198,'Saint Pierre','P',1),(2648,198,'Miquelon','M',1),(2649,171,'A&ccedil;ores','AC',1),(2650,171,'Aveiro','AV',1),(2651,171,'Beja','BE',1),(2652,171,'Braga','BR',1),(2653,171,'Bragan&ccedil;a','BA',1),(2654,171,'Castelo Branco','CB',1),(2655,171,'Coimbra','CO',1),(2656,171,'&Eacute;vora','EV',1),(2657,171,'Faro','FA',1),(2658,171,'Guarda','GU',1),(2659,171,'Leiria','LE',1),(2660,171,'Lisboa','LI',1),(2661,171,'Madeira','ME',1),(2662,171,'Portalegre','PO',1),(2663,171,'Porto','PR',1),(2664,171,'Santar&eacute;m','SA',1),(2665,171,'Set&uacute;bal','SE',1),(2666,171,'Viana do Castelo','VC',1),(2667,171,'Vila Real','VR',1),(2668,171,'Viseu','VI',1),(2669,173,'Ad Dawhah','DW',1),(2670,173,'Al Ghuwayriyah','GW',1),(2671,173,'Al Jumayliyah','JM',1),(2672,173,'Al Khawr','KR',1),(2673,173,'Al Wakrah','WK',1),(2674,173,'Ar Rayyan','RN',1),(2675,173,'Jarayan al Batinah','JB',1),(2676,173,'Madinat ash Shamal','MS',1),(2677,173,'Umm Sa\'id','UD',1),(2678,173,'Umm Salal','UL',1),(2679,175,'Alba','AB',1),(2680,175,'Arad','AR',1),(2681,175,'Arges','AG',1),(2682,175,'Bacau','BC',1),(2683,175,'Bihor','BH',1),(2684,175,'Bistrita-Nasaud','BN',1),(2685,175,'Botosani','BT',1),(2686,175,'Brasov','BV',1),(2687,175,'Braila','BR',1),(2688,175,'Bucuresti','B',1),(2689,175,'Buzau','BZ',1),(2690,175,'Caras-Severin','CS',1),(2691,175,'Calarasi','CL',1),(2692,175,'Cluj','CJ',1),(2693,175,'Constanta','CT',1),(2694,175,'Covasna','CV',1),(2695,175,'Dimbovita','DB',1),(2696,175,'Dolj','DJ',1),(2697,175,'Galati','GL',1),(2698,175,'Giurgiu','GR',1),(2699,175,'Gorj','GJ',1),(2700,175,'Harghita','HR',1),(2701,175,'Hunedoara','HD',1),(2702,175,'Ialomita','IL',1),(2703,175,'Iasi','IS',1),(2704,175,'Ilfov','IF',1),(2705,175,'Maramures','MM',1),(2706,175,'Mehedinti','MH',1),(2707,175,'Mures','MS',1),(2708,175,'Neamt','NT',1),(2709,175,'Olt','OT',1),(2710,175,'Prahova','PH',1),(2711,175,'Satu-Mare','SM',1),(2712,175,'Salaj','SJ',1),(2713,175,'Sibiu','SB',1),(2714,175,'Suceava','SV',1),(2715,175,'Teleorman','TR',1),(2716,175,'Timis','TM',1),(2717,175,'Tulcea','TL',1),(2718,175,'Vaslui','VS',1),(2719,175,'Valcea','VL',1),(2720,175,'Vrancea','VN',1),(2721,176,'Abakan','AB',1),(2722,176,'Aginskoye','AG',1),(2723,176,'Anadyr','AN',1),(2724,176,'Arkahangelsk','AR',1),(2725,176,'Astrakhan','AS',1),(2726,176,'Barnaul','BA',1),(2727,176,'Belgorod','BE',1),(2728,176,'Birobidzhan','BI',1),(2729,176,'Blagoveshchensk','BL',1),(2730,176,'Bryansk','BR',1),(2731,176,'Cheboksary','CH',1),(2732,176,'Chelyabinsk','CL',1),(2733,176,'Cherkessk','CR',1),(2734,176,'Chita','CI',1),(2735,176,'Dudinka','DU',1),(2736,176,'Elista','EL',1),(2737,176,'Gomo-Altaysk','GO',1),(2738,176,'Gorno-Altaysk','GA',1),(2739,176,'Groznyy','GR',1),(2740,176,'Irkutsk','IR',1),(2741,176,'Ivanovo','IV',1),(2742,176,'Izhevsk','IZ',1),(2743,176,'Kalinigrad','KA',1),(2744,176,'Kaluga','KL',1),(2745,176,'Kasnodar','KS',1),(2746,176,'Kazan','KZ',1),(2747,176,'Kemerovo','KE',1),(2748,176,'Khabarovsk','KH',1),(2749,176,'Khanty-Mansiysk','KM',1),(2750,176,'Kostroma','KO',1),(2751,176,'Krasnodar','KR',1),(2752,176,'Krasnoyarsk','KN',1),(2753,176,'Kudymkar','KU',1),(2754,176,'Kurgan','KG',1),(2755,176,'Kursk','KK',1),(2756,176,'Kyzyl','KY',1),(2757,176,'Lipetsk','LI',1),(2758,176,'Magadan','MA',1),(2759,176,'Makhachkala','MK',1),(2760,176,'Maykop','MY',1),(2761,176,'Moscow','MO',1),(2762,176,'Murmansk','MU',1),(2763,176,'Nalchik','NA',1),(2764,176,'Naryan Mar','NR',1),(2765,176,'Nazran','NZ',1),(2766,176,'Nizhniy Novgorod','NI',1),(2767,176,'Novgorod','NO',1),(2768,176,'Novosibirsk','NV',1),(2769,176,'Omsk','OM',1),(2770,176,'Orel','OR',1),(2771,176,'Orenburg','OE',1),(2772,176,'Palana','PA',1),(2773,176,'Penza','PE',1),(2774,176,'Perm','PR',1),(2775,176,'Petropavlovsk-Kamchatskiy','PK',1),(2776,176,'Petrozavodsk','PT',1),(2777,176,'Pskov','PS',1),(2778,176,'Rostov-na-Donu','RO',1),(2779,176,'Ryazan','RY',1),(2780,176,'Salekhard','SL',1),(2781,176,'Samara','SA',1),(2782,176,'Saransk','SR',1),(2783,176,'Saratov','SV',1),(2784,176,'Smolensk','SM',1),(2785,176,'St. Petersburg','SP',1),(2786,176,'Stavropol','ST',1),(2787,176,'Syktyvkar','SY',1),(2788,176,'Tambov','TA',1),(2789,176,'Tomsk','TO',1),(2790,176,'Tula','TU',1),(2791,176,'Tura','TR',1),(2792,176,'Tver','TV',1),(2793,176,'Tyumen','TY',1),(2794,176,'Ufa','UF',1),(2795,176,'Ul\'yanovsk','UL',1),(2796,176,'Ulan-Ude','UU',1),(2797,176,'Ust\'-Ordynskiy','US',1),(2798,176,'Vladikavkaz','VL',1),(2799,176,'Vladimir','VA',1),(2800,176,'Vladivostok','VV',1),(2801,176,'Volgograd','VG',1),(2802,176,'Vologda','VD',1),(2803,176,'Voronezh','VO',1),(2804,176,'Vyatka','VY',1),(2805,176,'Yakutsk','YA',1),(2806,176,'Yaroslavl','YR',1),(2807,176,'Yekaterinburg','YE',1),(2808,176,'Yoshkar-Ola','YO',1),(2809,177,'Butare','BU',1),(2810,177,'Byumba','BY',1),(2811,177,'Cyangugu','CY',1),(2812,177,'Gikongoro','GK',1),(2813,177,'Gisenyi','GS',1),(2814,177,'Gitarama','GT',1),(2815,177,'Kibungo','KG',1),(2816,177,'Kibuye','KY',1),(2817,177,'Kigali Rurale','KR',1),(2818,177,'Kigali-ville','KV',1),(2819,177,'Ruhengeri','RU',1),(2820,177,'Umutara','UM',1),(2821,178,'Christ Church Nichola Town','CCN',1),(2822,178,'Saint Anne Sandy Point','SAS',1),(2823,178,'Saint George Basseterre','SGB',1),(2824,178,'Saint George Gingerland','SGG',1),(2825,178,'Saint James Windward','SJW',1),(2826,178,'Saint John Capesterre','SJC',1),(2827,178,'Saint John Figtree','SJF',1),(2828,178,'Saint Mary Cayon','SMC',1),(2829,178,'Saint Paul Capesterre','CAP',1),(2830,178,'Saint Paul Charlestown','CHA',1),(2831,178,'Saint Peter Basseterre','SPB',1),(2832,178,'Saint Thomas Lowland','STL',1),(2833,178,'Saint Thomas Middle Island','STM',1),(2834,178,'Trinity Palmetto Point','TPP',1),(2835,179,'Anse-la-Raye','AR',1),(2836,179,'Castries','CA',1),(2837,179,'Choiseul','CH',1),(2838,179,'Dauphin','DA',1),(2839,179,'Dennery','DE',1),(2840,179,'Gros-Islet','GI',1),(2841,179,'Laborie','LA',1),(2842,179,'Micoud','MI',1),(2843,179,'Praslin','PR',1),(2844,179,'Soufriere','SO',1),(2845,179,'Vieux-Fort','VF',1),(2846,180,'Charlotte','C',1),(2847,180,'Grenadines','R',1),(2848,180,'Saint Andrew','A',1),(2849,180,'Saint David','D',1),(2850,180,'Saint George','G',1),(2851,180,'Saint Patrick','P',1),(2852,181,'A\'ana','AN',1),(2853,181,'Aiga-i-le-Tai','AI',1),(2854,181,'Atua','AT',1),(2855,181,'Fa\'asaleleaga','FA',1),(2856,181,'Gaga\'emauga','GE',1),(2857,181,'Gagaifomauga','GF',1),(2858,181,'Palauli','PA',1),(2859,181,'Satupa\'itea','SA',1),(2860,181,'Tuamasaga','TU',1),(2861,181,'Va\'a-o-Fonoti','VF',1),(2862,181,'Vaisigano','VS',1),(2863,182,'Acquaviva','AC',1),(2864,182,'Borgo Maggiore','BM',1),(2865,182,'Chiesanuova','CH',1),(2866,182,'Domagnano','DO',1),(2867,182,'Faetano','FA',1),(2868,182,'Fiorentino','FI',1),(2869,182,'Montegiardino','MO',1),(2870,182,'Citta di San Marino','SM',1),(2871,182,'Serravalle','SE',1),(2872,183,'Sao Tome','S',1),(2873,183,'Principe','P',1),(2874,184,'Al Bahah','BH',1),(2875,184,'Al Hudud ash Shamaliyah','HS',1),(2876,184,'Al Jawf','JF',1),(2877,184,'Al Madinah','MD',1),(2878,184,'Al Qasim','QS',1),(2879,184,'Ar Riyad','RD',1),(2880,184,'Ash Sharqiyah (Eastern)','AQ',1),(2881,184,'\'Asir','AS',1),(2882,184,'Ha\'il','HL',1),(2883,184,'Jizan','JZ',1),(2884,184,'Makkah','ML',1),(2885,184,'Najran','NR',1),(2886,184,'Tabuk','TB',1),(2887,185,'Dakar','DA',1),(2888,185,'Diourbel','DI',1),(2889,185,'Fatick','FA',1),(2890,185,'Kaolack','KA',1),(2891,185,'Kolda','KO',1),(2892,185,'Louga','LO',1),(2893,185,'Matam','MA',1),(2894,185,'Saint-Louis','SL',1),(2895,185,'Tambacounda','TA',1),(2896,185,'Thies','TH',1),(2897,185,'Ziguinchor','ZI',1),(2898,186,'Anse aux Pins','AP',1),(2899,186,'Anse Boileau','AB',1),(2900,186,'Anse Etoile','AE',1),(2901,186,'Anse Louis','AL',1),(2902,186,'Anse Royale','AR',1),(2903,186,'Baie Lazare','BL',1),(2904,186,'Baie Sainte Anne','BS',1),(2905,186,'Beau Vallon','BV',1),(2906,186,'Bel Air','BA',1),(2907,186,'Bel Ombre','BO',1),(2908,186,'Cascade','CA',1),(2909,186,'Glacis','GL',1),(2910,186,'Grand\' Anse (on Mahe)','GM',1),(2911,186,'Grand\' Anse (on Praslin)','GP',1),(2912,186,'La Digue','DG',1),(2913,186,'La Riviere Anglaise','RA',1),(2914,186,'Mont Buxton','MB',1),(2915,186,'Mont Fleuri','MF',1),(2916,186,'Plaisance','PL',1),(2917,186,'Pointe La Rue','PR',1),(2918,186,'Port Glaud','PG',1),(2919,186,'Saint Louis','SL',1),(2920,186,'Takamaka','TA',1),(2921,187,'Eastern','E',1),(2922,187,'Northern','N',1),(2923,187,'Southern','S',1),(2924,187,'Western','W',1),(2925,189,'Banskobystrický','BA',1),(2926,189,'Bratislavský','BR',1),(2927,189,'Košický','KO',1),(2928,189,'Nitriansky','NI',1),(2929,189,'Prešovský','PR',1),(2930,189,'Trenčiansky','TC',1),(2931,189,'Trnavský','TV',1),(2932,189,'Žilinský','ZI',1),(2933,191,'Central','CE',1),(2934,191,'Choiseul','CH',1),(2935,191,'Guadalcanal','GC',1),(2936,191,'Honiara','HO',1),(2937,191,'Isabel','IS',1),(2938,191,'Makira','MK',1),(2939,191,'Malaita','ML',1),(2940,191,'Rennell and Bellona','RB',1),(2941,191,'Temotu','TM',1),(2942,191,'Western','WE',1),(2943,192,'Awdal','AW',1),(2944,192,'Bakool','BK',1),(2945,192,'Banaadir','BN',1),(2946,192,'Bari','BR',1),(2947,192,'Bay','BY',1),(2948,192,'Galguduud','GA',1),(2949,192,'Gedo','GE',1),(2950,192,'Hiiraan','HI',1),(2951,192,'Jubbada Dhexe','JD',1),(2952,192,'Jubbada Hoose','JH',1),(2953,192,'Mudug','MU',1),(2954,192,'Nugaal','NU',1),(2955,192,'Sanaag','SA',1),(2956,192,'Shabeellaha Dhexe','SD',1),(2957,192,'Shabeellaha Hoose','SH',1),(2958,192,'Sool','SL',1),(2959,192,'Togdheer','TO',1),(2960,192,'Woqooyi Galbeed','WG',1),(2961,193,'Eastern Cape','EC',1),(2962,193,'Free State','FS',1),(2963,193,'Gauteng','GT',1),(2964,193,'KwaZulu-Natal','KN',1),(2965,193,'Limpopo','LP',1),(2966,193,'Mpumalanga','MP',1),(2967,193,'North West','NW',1),(2968,193,'Northern Cape','NC',1),(2969,193,'Western Cape','WC',1),(2970,195,'La Coru&ntilde;a','CA',1),(2971,195,'&Aacute;lava','AL',1),(2972,195,'Albacete','AB',1),(2973,195,'Alicante','AC',1),(2974,195,'Almeria','AM',1),(2975,195,'Asturias','AS',1),(2976,195,'&Aacute;vila','AV',1),(2977,195,'Badajoz','BJ',1),(2978,195,'Baleares','IB',1),(2979,195,'Barcelona','BA',1),(2980,195,'Burgos','BU',1),(2981,195,'C&aacute;ceres','CC',1),(2982,195,'C&aacute;diz','CZ',1),(2983,195,'Cantabria','CT',1),(2984,195,'Castell&oacute;n','CL',1),(2985,195,'Ceuta','CE',1),(2986,195,'Ciudad Real','CR',1),(2987,195,'C&oacute;rdoba','CD',1),(2988,195,'Cuenca','CU',1),(2989,195,'Girona','GI',1),(2990,195,'Granada','GD',1),(2991,195,'Guadalajara','GJ',1),(2992,195,'Guip&uacute;zcoa','GP',1),(2993,195,'Huelva','HL',1),(2994,195,'Huesca','HS',1),(2995,195,'Ja&eacute;n','JN',1),(2996,195,'La Rioja','RJ',1),(2997,195,'Las Palmas','PM',1),(2998,195,'Leon','LE',1),(2999,195,'Lleida','LL',1),(3000,195,'Lugo','LG',1),(3001,195,'Madrid','MD',1),(3002,195,'Malaga','MA',1),(3003,195,'Melilla','ML',1),(3004,195,'Murcia','MU',1),(3005,195,'Navarra','NV',1),(3006,195,'Ourense','OU',1),(3007,195,'Palencia','PL',1),(3008,195,'Pontevedra','PO',1),(3009,195,'Salamanca','SL',1),(3010,195,'Santa Cruz de Tenerife','SC',1),(3011,195,'Segovia','SG',1),(3012,195,'Sevilla','SV',1),(3013,195,'Soria','SO',1),(3014,195,'Tarragona','TA',1),(3015,195,'Teruel','TE',1),(3016,195,'Toledo','TO',1),(3017,195,'Valencia','VC',1),(3018,195,'Valladolid','VD',1),(3019,195,'Vizcaya','VZ',1),(3020,195,'Zamora','ZM',1),(3021,195,'Zaragoza','ZR',1),(3022,196,'Central','CE',1),(3023,196,'Eastern','EA',1),(3024,196,'North Central','NC',1),(3025,196,'Northern','NO',1),(3026,196,'North Western','NW',1),(3027,196,'Sabaragamuwa','SA',1),(3028,196,'Southern','SO',1),(3029,196,'Uva','UV',1),(3030,196,'Western','WE',1),(3032,197,'Saint Helena','S',1),(3034,199,'A\'ali an Nil','ANL',1),(3035,199,'Al Bahr al Ahmar','BAM',1),(3036,199,'Al Buhayrat','BRT',1),(3037,199,'Al Jazirah','JZR',1),(3038,199,'Al Khartum','KRT',1),(3039,199,'Al Qadarif','QDR',1),(3040,199,'Al Wahdah','WDH',1),(3041,199,'An Nil al Abyad','ANB',1),(3042,199,'An Nil al Azraq','ANZ',1),(3043,199,'Ash Shamaliyah','ASH',1),(3044,199,'Bahr al Jabal','BJA',1),(3045,199,'Gharb al Istiwa\'iyah','GIS',1),(3046,199,'Gharb Bahr al Ghazal','GBG',1),(3047,199,'Gharb Darfur','GDA',1),(3048,199,'Gharb Kurdufan','GKU',1),(3049,199,'Janub Darfur','JDA',1),(3050,199,'Janub Kurdufan','JKU',1),(3051,199,'Junqali','JQL',1),(3052,199,'Kassala','KSL',1),(3053,199,'Nahr an Nil','NNL',1),(3054,199,'Shamal Bahr al Ghazal','SBG',1),(3055,199,'Shamal Darfur','SDA',1),(3056,199,'Shamal Kurdufan','SKU',1),(3057,199,'Sharq al Istiwa\'iyah','SIS',1),(3058,199,'Sinnar','SNR',1),(3059,199,'Warab','WRB',1),(3060,200,'Brokopondo','BR',1),(3061,200,'Commewijne','CM',1),(3062,200,'Coronie','CR',1),(3063,200,'Marowijne','MA',1),(3064,200,'Nickerie','NI',1),(3065,200,'Para','PA',1),(3066,200,'Paramaribo','PM',1),(3067,200,'Saramacca','SA',1),(3068,200,'Sipaliwini','SI',1),(3069,200,'Wanica','WA',1),(3070,202,'Hhohho','H',1),(3071,202,'Lubombo','L',1),(3072,202,'Manzini','M',1),(3073,202,'Shishelweni','S',1),(3074,203,'Blekinge','K',1),(3075,203,'Dalarna','W',1),(3076,203,'G&auml;vleborg','X',1),(3077,203,'Gotland','I',1),(3078,203,'Halland','N',1),(3079,203,'J&auml;mtland','Z',1),(3080,203,'J&ouml;nk&ouml;ping','F',1),(3081,203,'Kalmar','H',1),(3082,203,'Kronoberg','G',1),(3083,203,'Norrbotten','BD',1),(3084,203,'&Ouml;rebro','T',1),(3085,203,'&Ouml;sterg&ouml;tland','E',1),(3086,203,'Sk&aring;ne','M',1),(3087,203,'S&ouml;dermanland','D',1),(3088,203,'Stockholm','AB',1),(3089,203,'Uppsala','C',1),(3090,203,'V&auml;rmland','S',1),(3091,203,'V&auml;sterbotten','AC',1),(3092,203,'V&auml;sternorrland','Y',1),(3093,203,'V&auml;stmanland','U',1),(3094,203,'V&auml;stra G&ouml;taland','O',1),(3095,204,'Aargau','AG',1),(3096,204,'Appenzell Ausserrhoden','AR',1),(3097,204,'Appenzell Innerrhoden','AI',1),(3098,204,'Basel-Stadt','BS',1),(3099,204,'Basel-Landschaft','BL',1),(3100,204,'Bern','BE',1),(3101,204,'Fribourg','FR',1),(3102,204,'Gen&egrave;ve','GE',1),(3103,204,'Glarus','GL',1),(3104,204,'Graub&uuml;nden','GR',1),(3105,204,'Jura','JU',1),(3106,204,'Luzern','LU',1),(3107,204,'Neuch&acirc;tel','NE',1),(3108,204,'Nidwald','NW',1),(3109,204,'Obwald','OW',1),(3110,204,'St. Gallen','SG',1),(3111,204,'Schaffhausen','SH',1),(3112,204,'Schwyz','SZ',1),(3113,204,'Solothurn','SO',1),(3114,204,'Thurgau','TG',1),(3115,204,'Ticino','TI',1),(3116,204,'Uri','UR',1),(3117,204,'Valais','VS',1),(3118,204,'Vaud','VD',1),(3119,204,'Zug','ZG',1),(3120,204,'Z&uuml;rich','ZH',1),(3121,205,'Al Hasakah','HA',1),(3122,205,'Al Ladhiqiyah','LA',1),(3123,205,'Al Qunaytirah','QU',1),(3124,205,'Ar Raqqah','RQ',1),(3125,205,'As Suwayda','SU',1),(3126,205,'Dara','DA',1),(3127,205,'Dayr az Zawr','DZ',1),(3128,205,'Dimashq','DI',1),(3129,205,'Halab','HL',1),(3130,205,'Hamah','HM',1),(3131,205,'Hims','HI',1),(3132,205,'Idlib','ID',1),(3133,205,'Rif Dimashq','RD',1),(3134,205,'Tartus','TA',1),(3135,206,'Chang-hua','CH',1),(3136,206,'Chia-i','CI',1),(3137,206,'Hsin-chu','HS',1),(3138,206,'Hua-lien','HL',1),(3139,206,'I-lan','IL',1),(3140,206,'Kao-hsiung county','KH',1),(3141,206,'Kin-men','KM',1),(3142,206,'Lien-chiang','LC',1),(3143,206,'Miao-li','ML',1),(3144,206,'Nan-t\'ou','NT',1),(3145,206,'P\'eng-hu','PH',1),(3146,206,'P\'ing-tung','PT',1),(3147,206,'T\'ai-chung','TG',1),(3148,206,'T\'ai-nan','TA',1),(3149,206,'T\'ai-pei county','TP',1),(3150,206,'T\'ai-tung','TT',1),(3151,206,'T\'ao-yuan','TY',1),(3152,206,'Yun-lin','YL',1),(3153,206,'Chia-i city','CC',1),(3154,206,'Chi-lung','CL',1),(3155,206,'Hsin-chu','HC',1),(3156,206,'T\'ai-chung','TH',1),(3157,206,'T\'ai-nan','TN',1),(3158,206,'Kao-hsiung city','KC',1),(3159,206,'T\'ai-pei city','TC',1),(3160,207,'Gorno-Badakhstan','GB',1),(3161,207,'Khatlon','KT',1),(3162,207,'Sughd','SU',1),(3163,208,'Arusha','AR',1),(3164,208,'Dar es Salaam','DS',1),(3165,208,'Dodoma','DO',1),(3166,208,'Iringa','IR',1),(3167,208,'Kagera','KA',1),(3168,208,'Kigoma','KI',1),(3169,208,'Kilimanjaro','KJ',1),(3170,208,'Lindi','LN',1),(3171,208,'Manyara','MY',1),(3172,208,'Mara','MR',1),(3173,208,'Mbeya','MB',1),(3174,208,'Morogoro','MO',1),(3175,208,'Mtwara','MT',1),(3176,208,'Mwanza','MW',1),(3177,208,'Pemba North','PN',1),(3178,208,'Pemba South','PS',1),(3179,208,'Pwani','PW',1),(3180,208,'Rukwa','RK',1),(3181,208,'Ruvuma','RV',1),(3182,208,'Shinyanga','SH',1),(3183,208,'Singida','SI',1),(3184,208,'Tabora','TB',1),(3185,208,'Tanga','TN',1),(3186,208,'Zanzibar Central/South','ZC',1),(3187,208,'Zanzibar North','ZN',1),(3188,208,'Zanzibar Urban/West','ZU',1),(3189,209,'Amnat Charoen','Amnat Charoen',1),(3190,209,'Ang Thong','Ang Thong',1),(3191,209,'Ayutthaya','Ayutthaya',1),(3192,209,'Bangkok','Bangkok',1),(3193,209,'Buriram','Buriram',1),(3194,209,'Chachoengsao','Chachoengsao',1),(3195,209,'Chai Nat','Chai Nat',1),(3196,209,'Chaiyaphum','Chaiyaphum',1),(3197,209,'Chanthaburi','Chanthaburi',1),(3198,209,'Chiang Mai','Chiang Mai',1),(3199,209,'Chiang Rai','Chiang Rai',1),(3200,209,'Chon Buri','Chon Buri',1),(3201,209,'Chumphon','Chumphon',1),(3202,209,'Kalasin','Kalasin',1),(3203,209,'Kamphaeng Phet','Kamphaeng Phet',1),(3204,209,'Kanchanaburi','Kanchanaburi',1),(3205,209,'Khon Kaen','Khon Kaen',1),(3206,209,'Krabi','Krabi',1),(3207,209,'Lampang','Lampang',1),(3208,209,'Lamphun','Lamphun',1),(3209,209,'Loei','Loei',1),(3210,209,'Lop Buri','Lop Buri',1),(3211,209,'Mae Hong Son','Mae Hong Son',1),(3212,209,'Maha Sarakham','Maha Sarakham',1),(3213,209,'Mukdahan','Mukdahan',1),(3214,209,'Nakhon Nayok','Nakhon Nayok',1),(3215,209,'Nakhon Pathom','Nakhon Pathom',1),(3216,209,'Nakhon Phanom','Nakhon Phanom',1),(3217,209,'Nakhon Ratchasima','Nakhon Ratchasima',1),(3218,209,'Nakhon Sawan','Nakhon Sawan',1),(3219,209,'Nakhon Si Thammarat','Nakhon Si Thammarat',1),(3220,209,'Nan','Nan',1),(3221,209,'Narathiwat','Narathiwat',1),(3222,209,'Nong Bua Lamphu','Nong Bua Lamphu',1),(3223,209,'Nong Khai','Nong Khai',1),(3224,209,'Nonthaburi','Nonthaburi',1),(3225,209,'Pathum Thani','Pathum Thani',1),(3226,209,'Pattani','Pattani',1),(3227,209,'Phangnga','Phangnga',1),(3228,209,'Phatthalung','Phatthalung',1),(3229,209,'Phayao','Phayao',1),(3230,209,'Phetchabun','Phetchabun',1),(3231,209,'Phetchaburi','Phetchaburi',1),(3232,209,'Phichit','Phichit',1),(3233,209,'Phitsanulok','Phitsanulok',1),(3234,209,'Phrae','Phrae',1),(3235,209,'Phuket','Phuket',1),(3236,209,'Prachin Buri','Prachin Buri',1),(3237,209,'Prachuap Khiri Khan','Prachuap Khiri Khan',1),(3238,209,'Ranong','Ranong',1),(3239,209,'Ratchaburi','Ratchaburi',1),(3240,209,'Rayong','Rayong',1),(3241,209,'Roi Et','Roi Et',1),(3242,209,'Sa Kaeo','Sa Kaeo',1),(3243,209,'Sakon Nakhon','Sakon Nakhon',1),(3244,209,'Samut Prakan','Samut Prakan',1),(3245,209,'Samut Sakhon','Samut Sakhon',1),(3246,209,'Samut Songkhram','Samut Songkhram',1),(3247,209,'Sara Buri','Sara Buri',1),(3248,209,'Satun','Satun',1),(3249,209,'Sing Buri','Sing Buri',1),(3250,209,'Sisaket','Sisaket',1),(3251,209,'Songkhla','Songkhla',1),(3252,209,'Sukhothai','Sukhothai',1),(3253,209,'Suphan Buri','Suphan Buri',1),(3254,209,'Surat Thani','Surat Thani',1),(3255,209,'Surin','Surin',1),(3256,209,'Tak','Tak',1),(3257,209,'Trang','Trang',1),(3258,209,'Trat','Trat',1),(3259,209,'Ubon Ratchathani','Ubon Ratchathani',1),(3260,209,'Udon Thani','Udon Thani',1),(3261,209,'Uthai Thani','Uthai Thani',1),(3262,209,'Uttaradit','Uttaradit',1),(3263,209,'Yala','Yala',1),(3264,209,'Yasothon','Yasothon',1),(3265,210,'Kara','K',1),(3266,210,'Plateaux','P',1),(3267,210,'Savanes','S',1),(3268,210,'Centrale','C',1),(3269,210,'Maritime','M',1),(3270,211,'Atafu','A',1),(3271,211,'Fakaofo','F',1),(3272,211,'Nukunonu','N',1),(3273,212,'Ha\'apai','H',1),(3274,212,'Tongatapu','T',1),(3275,212,'Vava\'u','V',1),(3276,213,'Couva/Tabaquite/Talparo','CT',1),(3277,213,'Diego Martin','DM',1),(3278,213,'Mayaro/Rio Claro','MR',1),(3279,213,'Penal/Debe','PD',1),(3280,213,'Princes Town','PT',1),(3281,213,'Sangre Grande','SG',1),(3282,213,'San Juan/Laventille','SL',1),(3283,213,'Siparia','SI',1),(3284,213,'Tunapuna/Piarco','TP',1),(3285,213,'Port of Spain','PS',1),(3286,213,'San Fernando','SF',1),(3287,213,'Arima','AR',1),(3288,213,'Point Fortin','PF',1),(3289,213,'Chaguanas','CH',1),(3290,213,'Tobago','TO',1),(3291,214,'Ariana','AR',1),(3292,214,'Beja','BJ',1),(3293,214,'Ben Arous','BA',1),(3294,214,'Bizerte','BI',1),(3295,214,'Gabes','GB',1),(3296,214,'Gafsa','GF',1),(3297,214,'Jendouba','JE',1),(3298,214,'Kairouan','KR',1),(3299,214,'Kasserine','KS',1),(3300,214,'Kebili','KB',1),(3301,214,'Kef','KF',1),(3302,214,'Mahdia','MH',1),(3303,214,'Manouba','MN',1),(3304,214,'Medenine','ME',1),(3305,214,'Monastir','MO',1),(3306,214,'Nabeul','NA',1),(3307,214,'Sfax','SF',1),(3308,214,'Sidi','SD',1),(3309,214,'Siliana','SL',1),(3310,214,'Sousse','SO',1),(3311,214,'Tataouine','TA',1),(3312,214,'Tozeur','TO',1),(3313,214,'Tunis','TU',1),(3314,214,'Zaghouan','ZA',1),(3315,215,'Adana','ADA',1),(3316,215,'Adıyaman','ADI',1),(3317,215,'Afyonkarahisar','AFY',1),(3318,215,'Ağrı','AGR',1),(3319,215,'Aksaray','AKS',1),(3320,215,'Amasya','AMA',1),(3321,215,'Ankara','ANK',1),(3322,215,'Antalya','ANT',1),(3323,215,'Ardahan','ARD',1),(3324,215,'Artvin','ART',1),(3325,215,'Aydın','AYI',1),(3326,215,'Balıkesir','BAL',1),(3327,215,'Bartın','BAR',1),(3328,215,'Batman','BAT',1),(3329,215,'Bayburt','BAY',1),(3330,215,'Bilecik','BIL',1),(3331,215,'Bingöl','BIN',1),(3332,215,'Bitlis','BIT',1),(3333,215,'Bolu','BOL',1),(3334,215,'Burdur','BRD',1),(3335,215,'Bursa','BRS',1),(3336,215,'Çanakkale','CKL',1),(3337,215,'Çankırı','CKR',1),(3338,215,'Çorum','COR',1),(3339,215,'Denizli','DEN',1),(3340,215,'Diyarbakır','DIY',1),(3341,215,'Düzce','DUZ',1),(3342,215,'Edirne','EDI',1),(3343,215,'Elazığ','ELA',1),(3344,215,'Erzincan','EZC',1),(3345,215,'Erzurum','EZR',1),(3346,215,'Eskişehir','ESK',1),(3347,215,'Gaziantep','GAZ',1),(3348,215,'Giresun','GIR',1),(3349,215,'Gümüşhane','GMS',1),(3350,215,'Hakkari','HKR',1),(3351,215,'Hatay','HTY',1),(3352,215,'Iğdır','IGD',1),(3353,215,'Isparta','ISP',1),(3354,215,'İstanbul','IST',1),(3355,215,'İzmir','IZM',1),(3356,215,'Kahramanmaraş','KAH',1),(3357,215,'Karabük','KRB',1),(3358,215,'Karaman','KRM',1),(3359,215,'Kars','KRS',1),(3360,215,'Kastamonu','KAS',1),(3361,215,'Kayseri','KAY',1),(3362,215,'Kilis','KLS',1),(3363,215,'Kırıkkale','KRK',1),(3364,215,'Kırklareli','KLR',1),(3365,215,'Kırşehir','KRH',1),(3366,215,'Kocaeli','KOC',1),(3367,215,'Konya','KON',1),(3368,215,'Kütahya','KUT',1),(3369,215,'Malatya','MAL',1),(3370,215,'Manisa','MAN',1),(3371,215,'Mardin','MAR',1),(3372,215,'Mersin','MER',1),(3373,215,'Muğla','MUG',1),(3374,215,'Muş','MUS',1),(3375,215,'Nevşehir','NEV',1),(3376,215,'Niğde','NIG',1),(3377,215,'Ordu','ORD',1),(3378,215,'Osmaniye','OSM',1),(3379,215,'Rize','RIZ',1),(3380,215,'Sakarya','SAK',1),(3381,215,'Samsun','SAM',1),(3382,215,'Şanlıurfa','SAN',1),(3383,215,'Siirt','SII',1),(3384,215,'Sinop','SIN',1),(3385,215,'Şırnak','SIR',1),(3386,215,'Sivas','SIV',1),(3387,215,'Tekirdağ','TEL',1),(3388,215,'Tokat','TOK',1),(3389,215,'Trabzon','TRA',1),(3390,215,'Tunceli','TUN',1),(3391,215,'Uşak','USK',1),(3392,215,'Van','VAN',1),(3393,215,'Yalova','YAL',1),(3394,215,'Yozgat','YOZ',1),(3395,215,'Zonguldak','ZON',1),(3396,216,'Ahal Welayaty','A',1),(3397,216,'Balkan Welayaty','B',1),(3398,216,'Dashhowuz Welayaty','D',1),(3399,216,'Lebap Welayaty','L',1),(3400,216,'Mary Welayaty','M',1),(3401,217,'Ambergris Cays','AC',1),(3402,217,'Dellis Cay','DC',1),(3403,217,'French Cay','FC',1),(3404,217,'Little Water Cay','LW',1),(3405,217,'Parrot Cay','RC',1),(3406,217,'Pine Cay','PN',1),(3407,217,'Salt Cay','SL',1),(3408,217,'Grand Turk','GT',1),(3409,217,'South Caicos','SC',1),(3410,217,'East Caicos','EC',1),(3411,217,'Middle Caicos','MC',1),(3412,217,'North Caicos','NC',1),(3413,217,'Providenciales','PR',1),(3414,217,'West Caicos','WC',1),(3415,218,'Nanumanga','NMG',1),(3416,218,'Niulakita','NLK',1),(3417,218,'Niutao','NTO',1),(3418,218,'Funafuti','FUN',1),(3419,218,'Nanumea','NME',1),(3420,218,'Nui','NUI',1),(3421,218,'Nukufetau','NFT',1),(3422,218,'Nukulaelae','NLL',1),(3423,218,'Vaitupu','VAI',1),(3424,219,'Kalangala','KAL',1),(3425,219,'Kampala','KMP',1),(3426,219,'Kayunga','KAY',1),(3427,219,'Kiboga','KIB',1),(3428,219,'Luwero','LUW',1),(3429,219,'Masaka','MAS',1),(3430,219,'Mpigi','MPI',1),(3431,219,'Mubende','MUB',1),(3432,219,'Mukono','MUK',1),(3433,219,'Nakasongola','NKS',1),(3434,219,'Rakai','RAK',1),(3435,219,'Sembabule','SEM',1),(3436,219,'Wakiso','WAK',1),(3437,219,'Bugiri','BUG',1),(3438,219,'Busia','BUS',1),(3439,219,'Iganga','IGA',1),(3440,219,'Jinja','JIN',1),(3441,219,'Kaberamaido','KAB',1),(3442,219,'Kamuli','KML',1),(3443,219,'Kapchorwa','KPC',1),(3444,219,'Katakwi','KTK',1),(3445,219,'Kumi','KUM',1),(3446,219,'Mayuge','MAY',1),(3447,219,'Mbale','MBA',1),(3448,219,'Pallisa','PAL',1),(3449,219,'Sironko','SIR',1),(3450,219,'Soroti','SOR',1),(3451,219,'Tororo','TOR',1),(3452,219,'Adjumani','ADJ',1),(3453,219,'Apac','APC',1),(3454,219,'Arua','ARU',1),(3455,219,'Gulu','GUL',1),(3456,219,'Kitgum','KIT',1),(3457,219,'Kotido','KOT',1),(3458,219,'Lira','LIR',1),(3459,219,'Moroto','MRT',1),(3460,219,'Moyo','MOY',1),(3461,219,'Nakapiripirit','NAK',1),(3462,219,'Nebbi','NEB',1),(3463,219,'Pader','PAD',1),(3464,219,'Yumbe','YUM',1),(3465,219,'Bundibugyo','BUN',1),(3466,219,'Bushenyi','BSH',1),(3467,219,'Hoima','HOI',1),(3468,219,'Kabale','KBL',1),(3469,219,'Kabarole','KAR',1),(3470,219,'Kamwenge','KAM',1),(3471,219,'Kanungu','KAN',1),(3472,219,'Kasese','KAS',1),(3473,219,'Kibaale','KBA',1),(3474,219,'Kisoro','KIS',1),(3475,219,'Kyenjojo','KYE',1),(3476,219,'Masindi','MSN',1),(3477,219,'Mbarara','MBR',1),(3478,219,'Ntungamo','NTU',1),(3479,219,'Rukungiri','RUK',1),(3480,220,'Cherkas\'ka Oblast\'','71',1),(3481,220,'Chernihivs\'ka Oblast\'','74',1),(3482,220,'Chernivets\'ka Oblast\'','77',1),(3483,220,'Crimea','43',1),(3484,220,'Dnipropetrovs\'ka Oblast\'','12',1),(3485,220,'Donets\'ka Oblast\'','14',1),(3486,220,'Ivano-Frankivs\'ka Oblast\'','26',1),(3487,220,'Khersons\'ka Oblast\'','65',1),(3488,220,'Khmel\'nyts\'ka Oblast\'','68',1),(3489,220,'Kirovohrads\'ka Oblast\'','35',1),(3490,220,'Kyiv','30',1),(3491,220,'Kyivs\'ka Oblast\'','32',1),(3492,220,'Luhans\'ka Oblast\'','09',1),(3493,220,'L\'vivs\'ka Oblast\'','46',1),(3494,220,'Mykolayivs\'ka Oblast\'','48',1),(3495,220,'Odes\'ka Oblast\'','51',1),(3496,220,'Poltavs\'ka Oblast\'','53',1),(3497,220,'Rivnens\'ka Oblast\'','56',1),(3498,220,'Sevastopol\'','40',1),(3499,220,'Sums\'ka Oblast\'','59',1),(3500,220,'Ternopil\'s\'ka Oblast\'','61',1),(3501,220,'Vinnyts\'ka Oblast\'','05',1),(3502,220,'Volyns\'ka Oblast\'','07',1),(3503,220,'Zakarpats\'ka Oblast\'','21',1),(3504,220,'Zaporiz\'ka Oblast\'','23',1),(3505,220,'Zhytomyrs\'ka oblast\'','18',1),(3506,221,'Abu Zaby','AZ',1),(3507,221,'\'Ajman','AJ',1),(3508,221,'Al Fujayrah','FU',1),(3509,221,'Ash Shariqah','SH',1),(3510,221,'Dubayy','DU',1),(3511,221,'R\'as al Khaymah','RK',1),(3512,221,'Umm al Qaywayn','UQ',1),(3513,222,'Aberdeen','ABN',1),(3514,222,'Aberdeenshire','ABNS',1),(3515,222,'Anglesey','ANG',1),(3516,222,'Angus','AGS',1),(3517,222,'Argyll and Bute','ARY',1),(3518,222,'Bedfordshire','BEDS',1),(3519,222,'Berkshire','BERKS',1),(3520,222,'Blaenau Gwent','BLA',1),(3521,222,'Bridgend','BRI',1),(3522,222,'Bristol','BSTL',1),(3523,222,'Buckinghamshire','BUCKS',1),(3524,222,'Caerphilly','CAE',1),(3525,222,'Cambridgeshire','CAMBS',1),(3526,222,'Cardiff','CDF',1),(3527,222,'Carmarthenshire','CARM',1),(3528,222,'Ceredigion','CDGN',1),(3529,222,'Cheshire','CHES',1),(3530,222,'Clackmannanshire','CLACK',1),(3531,222,'Conwy','CON',1),(3532,222,'Cornwall','CORN',1),(3533,222,'Denbighshire','DNBG',1),(3534,222,'Derbyshire','DERBY',1),(3535,222,'Devon','DVN',1),(3536,222,'Dorset','DOR',1),(3537,222,'Dumfries and Galloway','DGL',1),(3538,222,'Dundee','DUND',1),(3539,222,'Durham','DHM',1),(3540,222,'East Ayrshire','ARYE',1),(3541,222,'East Dunbartonshire','DUNBE',1),(3542,222,'East Lothian','LOTE',1),(3543,222,'East Renfrewshire','RENE',1),(3544,222,'East Riding of Yorkshire','ERYS',1),(3545,222,'East Sussex','SXE',1),(3546,222,'Edinburgh','EDIN',1),(3547,222,'Essex','ESX',1),(3548,222,'Falkirk','FALK',1),(3549,222,'Fife','FFE',1),(3550,222,'Flintshire','FLINT',1),(3551,222,'Glasgow','GLAS',1),(3552,222,'Gloucestershire','GLOS',1),(3553,222,'Greater London','LDN',1),(3554,222,'Greater Manchester','MCH',1),(3555,222,'Gwynedd','GDD',1),(3556,222,'Hampshire','HANTS',1),(3557,222,'Herefordshire','HWR',1),(3558,222,'Hertfordshire','HERTS',1),(3559,222,'Highlands','HLD',1),(3560,222,'Inverclyde','IVER',1),(3561,222,'Isle of Wight','IOW',1),(3562,222,'Kent','KNT',1),(3563,222,'Lancashire','LANCS',1),(3564,222,'Leicestershire','LEICS',1),(3565,222,'Lincolnshire','LINCS',1),(3566,222,'Merseyside','MSY',1),(3567,222,'Merthyr Tydfil','MERT',1),(3568,222,'Midlothian','MLOT',1),(3569,222,'Monmouthshire','MMOUTH',1),(3570,222,'Moray','MORAY',1),(3571,222,'Neath Port Talbot','NPRTAL',1),(3572,222,'Newport','NEWPT',1),(3573,222,'Norfolk','NOR',1),(3574,222,'North Ayrshire','ARYN',1),(3575,222,'North Lanarkshire','LANN',1),(3576,222,'North Yorkshire','YSN',1),(3577,222,'Northamptonshire','NHM',1),(3578,222,'Northumberland','NLD',1),(3579,222,'Nottinghamshire','NOT',1),(3580,222,'Orkney Islands','ORK',1),(3581,222,'Oxfordshire','OFE',1),(3582,222,'Pembrokeshire','PEM',1),(3583,222,'Perth and Kinross','PERTH',1),(3584,222,'Powys','PWS',1),(3585,222,'Renfrewshire','REN',1),(3586,222,'Rhondda Cynon Taff','RHON',1),(3587,222,'Rutland','RUT',1),(3588,222,'Scottish Borders','BOR',1),(3589,222,'Shetland Islands','SHET',1),(3590,222,'Shropshire','SPE',1),(3591,222,'Somerset','SOM',1),(3592,222,'South Ayrshire','ARYS',1),(3593,222,'South Lanarkshire','LANS',1),(3594,222,'South Yorkshire','YSS',1),(3595,222,'Staffordshire','SFD',1),(3596,222,'Stirling','STIR',1),(3597,222,'Suffolk','SFK',1),(3598,222,'Surrey','SRY',1),(3599,222,'Swansea','SWAN',1),(3600,222,'Torfaen','TORF',1),(3601,222,'Tyne and Wear','TWR',1),(3602,222,'Vale of Glamorgan','VGLAM',1),(3603,222,'Warwickshire','WARKS',1),(3604,222,'West Dunbartonshire','WDUN',1),(3605,222,'West Lothian','WLOT',1),(3606,222,'West Midlands','WMD',1),(3607,222,'West Sussex','SXW',1),(3608,222,'West Yorkshire','YSW',1),(3609,222,'Western Isles','WIL',1),(3610,222,'Wiltshire','WLT',1),(3611,222,'Worcestershire','WORCS',1),(3612,222,'Wrexham','WRX',1),(3613,223,'Alabama','AL',1),(3614,223,'Alaska','AK',1),(3615,223,'American Samoa','AS',1),(3616,223,'Arizona','AZ',1),(3617,223,'Arkansas','AR',1),(3618,223,'Armed Forces Africa','AF',1),(3619,223,'Armed Forces Americas','AA',1),(3620,223,'Armed Forces Canada','AC',1),(3621,223,'Armed Forces Europe','AE',1),(3622,223,'Armed Forces Middle East','AM',1),(3623,223,'Armed Forces Pacific','AP',1),(3624,223,'California','CA',1),(3625,223,'Colorado','CO',1),(3626,223,'Connecticut','CT',1),(3627,223,'Delaware','DE',1),(3628,223,'District of Columbia','DC',1),(3629,223,'Federated States Of Micronesia','FM',1),(3630,223,'Florida','FL',1),(3631,223,'Georgia','GA',1),(3632,223,'Guam','GU',1),(3633,223,'Hawaii','HI',1),(3634,223,'Idaho','ID',1),(3635,223,'Illinois','IL',1),(3636,223,'Indiana','IN',1),(3637,223,'Iowa','IA',1),(3638,223,'Kansas','KS',1),(3639,223,'Kentucky','KY',1),(3640,223,'Louisiana','LA',1),(3641,223,'Maine','ME',1),(3642,223,'Marshall Islands','MH',1),(3643,223,'Maryland','MD',1),(3644,223,'Massachusetts','MA',1),(3645,223,'Michigan','MI',1),(3646,223,'Minnesota','MN',1),(3647,223,'Mississippi','MS',1),(3648,223,'Missouri','MO',1),(3649,223,'Montana','MT',1),(3650,223,'Nebraska','NE',1),(3651,223,'Nevada','NV',1),(3652,223,'New Hampshire','NH',1),(3653,223,'New Jersey','NJ',1),(3654,223,'New Mexico','NM',1),(3655,223,'New York','NY',1),(3656,223,'North Carolina','NC',1),(3657,223,'North Dakota','ND',1),(3658,223,'Northern Mariana Islands','MP',1),(3659,223,'Ohio','OH',1),(3660,223,'Oklahoma','OK',1),(3661,223,'Oregon','OR',1),(3662,223,'Palau','PW',1),(3663,223,'Pennsylvania','PA',1),(3664,223,'Puerto Rico','PR',1),(3665,223,'Rhode Island','RI',1),(3666,223,'South Carolina','SC',1),(3667,223,'South Dakota','SD',1),(3668,223,'Tennessee','TN',1),(3669,223,'Texas','TX',1),(3670,223,'Utah','UT',1),(3671,223,'Vermont','VT',1),(3672,223,'Virgin Islands','VI',1),(3673,223,'Virginia','VA',1),(3674,223,'Washington','WA',1),(3675,223,'West Virginia','WV',1),(3676,223,'Wisconsin','WI',1),(3677,223,'Wyoming','WY',1),(3678,224,'Baker Island','BI',1),(3679,224,'Howland Island','HI',1),(3680,224,'Jarvis Island','JI',1),(3681,224,'Johnston Atoll','JA',1),(3682,224,'Kingman Reef','KR',1),(3683,224,'Midway Atoll','MA',1),(3684,224,'Navassa Island','NI',1),(3685,224,'Palmyra Atoll','PA',1),(3686,224,'Wake Island','WI',1),(3687,225,'Artigas','AR',1),(3688,225,'Canelones','CA',1),(3689,225,'Cerro Largo','CL',1),(3690,225,'Colonia','CO',1),(3691,225,'Durazno','DU',1),(3692,225,'Flores','FS',1),(3693,225,'Florida','FA',1),(3694,225,'Lavalleja','LA',1),(3695,225,'Maldonado','MA',1),(3696,225,'Montevideo','MO',1),(3697,225,'Paysandu','PA',1),(3698,225,'Rio Negro','RN',1),(3699,225,'Rivera','RV',1),(3700,225,'Rocha','RO',1),(3701,225,'Salto','SL',1),(3702,225,'San Jose','SJ',1),(3703,225,'Soriano','SO',1),(3704,225,'Tacuarembo','TA',1),(3705,225,'Treinta y Tres','TT',1),(3706,226,'Andijon','AN',1),(3707,226,'Buxoro','BU',1),(3708,226,'Farg\'ona','FA',1),(3709,226,'Jizzax','JI',1),(3710,226,'Namangan','NG',1),(3711,226,'Navoiy','NW',1),(3712,226,'Qashqadaryo','QA',1),(3713,226,'Qoraqalpog\'iston Republikasi','QR',1),(3714,226,'Samarqand','SA',1),(3715,226,'Sirdaryo','SI',1),(3716,226,'Surxondaryo','SU',1),(3717,226,'Toshkent City','TK',1),(3718,226,'Toshkent Region','TO',1),(3719,226,'Xorazm','XO',1),(3720,227,'Malampa','MA',1),(3721,227,'Penama','PE',1),(3722,227,'Sanma','SA',1),(3723,227,'Shefa','SH',1),(3724,227,'Tafea','TA',1),(3725,227,'Torba','TO',1),(3726,229,'Amazonas','AM',1),(3727,229,'Anzoategui','AN',1),(3728,229,'Apure','AP',1),(3729,229,'Aragua','AR',1),(3730,229,'Barinas','BA',1),(3731,229,'Bolivar','BO',1),(3732,229,'Carabobo','CA',1),(3733,229,'Cojedes','CO',1),(3734,229,'Delta Amacuro','DA',1),(3735,229,'Dependencias Federales','DF',1),(3736,229,'Distrito Federal','DI',1),(3737,229,'Falcon','FA',1),(3738,229,'Guarico','GU',1),(3739,229,'Lara','LA',1),(3740,229,'Merida','ME',1),(3741,229,'Miranda','MI',1),(3742,229,'Monagas','MO',1),(3743,229,'Nueva Esparta','NE',1),(3744,229,'Portuguesa','PO',1),(3745,229,'Sucre','SU',1),(3746,229,'Tachira','TA',1),(3747,229,'Trujillo','TR',1),(3748,229,'Vargas','VA',1),(3749,229,'Yaracuy','YA',1),(3750,229,'Zulia','ZU',1),(3751,230,'An Giang','AG',1),(3752,230,'Bac Giang','BG',1),(3753,230,'Bac Kan','BK',1),(3754,230,'Bac Lieu','BL',1),(3755,230,'Bac Ninh','BC',1),(3756,230,'Ba Ria-Vung Tau','BR',1),(3757,230,'Ben Tre','BN',1),(3758,230,'Binh Dinh','BH',1),(3759,230,'Binh Duong','BU',1),(3760,230,'Binh Phuoc','BP',1),(3761,230,'Binh Thuan','BT',1),(3762,230,'Ca Mau','CM',1),(3763,230,'Can Tho','CT',1),(3764,230,'Cao Bang','CB',1),(3765,230,'Dak Lak','DL',1),(3766,230,'Dak Nong','DG',1),(3767,230,'Da Nang','DN',1),(3768,230,'Dien Bien','DB',1),(3769,230,'Dong Nai','DI',1),(3770,230,'Dong Thap','DT',1),(3771,230,'Gia Lai','GL',1),(3772,230,'Ha Giang','HG',1),(3773,230,'Hai Duong','HD',1),(3774,230,'Hai Phong','HP',1),(3775,230,'Ha Nam','HM',1),(3776,230,'Ha Noi','HI',1),(3777,230,'Ha Tay','HT',1),(3778,230,'Ha Tinh','HH',1),(3779,230,'Hoa Binh','HB',1),(3780,230,'Ho Chi Minh City','HC',1),(3781,230,'Hau Giang','HU',1),(3782,230,'Hung Yen','HY',1),(3783,232,'Saint Croix','C',1),(3784,232,'Saint John','J',1),(3785,232,'Saint Thomas','T',1),(3786,233,'Alo','A',1),(3787,233,'Sigave','S',1),(3788,233,'Wallis','W',1),(3789,235,'Abyan','AB',1),(3790,235,'Adan','AD',1),(3791,235,'Amran','AM',1),(3792,235,'Al Bayda','BA',1),(3793,235,'Ad Dali','DA',1),(3794,235,'Dhamar','DH',1),(3795,235,'Hadramawt','HD',1),(3796,235,'Hajjah','HJ',1),(3797,235,'Al Hudaydah','HU',1),(3798,235,'Ibb','IB',1),(3799,235,'Al Jawf','JA',1),(3800,235,'Lahij','LA',1),(3801,235,'Ma\'rib','MA',1),(3802,235,'Al Mahrah','MR',1),(3803,235,'Al Mahwit','MW',1),(3804,235,'Sa\'dah','SD',1),(3805,235,'San\'a','SN',1),(3806,235,'Shabwah','SH',1),(3807,235,'Ta\'izz','TA',1),(3812,237,'Bas-Congo','BC',1),(3813,237,'Bandundu','BN',1),(3814,237,'Equateur','EQ',1),(3815,237,'Katanga','KA',1),(3816,237,'Kasai-Oriental','KE',1),(3817,237,'Kinshasa','KN',1),(3818,237,'Kasai-Occidental','KW',1),(3819,237,'Maniema','MA',1),(3820,237,'Nord-Kivu','NK',1),(3821,237,'Orientale','OR',1),(3822,237,'Sud-Kivu','SK',1),(3823,238,'Central','CE',1),(3824,238,'Copperbelt','CB',1),(3825,238,'Eastern','EA',1),(3826,238,'Luapula','LP',1),(3827,238,'Lusaka','LK',1),(3828,238,'Northern','NO',1),(3829,238,'North-Western','NW',1),(3830,238,'Southern','SO',1),(3831,238,'Western','WE',1),(3832,239,'Bulawayo','BU',1),(3833,239,'Harare','HA',1),(3834,239,'Manicaland','ML',1),(3835,239,'Mashonaland Central','MC',1),(3836,239,'Mashonaland East','ME',1),(3837,239,'Mashonaland West','MW',1),(3838,239,'Masvingo','MV',1),(3839,239,'Matabeleland North','MN',1),(3840,239,'Matabeleland South','MS',1),(3841,239,'Midlands','MD',1),(3861,105,'Campobasso','CB',1),(3862,105,'Carbonia-Iglesias','CI',1),(3863,105,'Caserta','CE',1),(3864,105,'Catania','CT',1),(3865,105,'Catanzaro','CZ',1),(3866,105,'Chieti','CH',1),(3867,105,'Como','CO',1),(3868,105,'Cosenza','CS',1),(3869,105,'Cremona','CR',1),(3870,105,'Crotone','KR',1),(3871,105,'Cuneo','CN',1),(3872,105,'Enna','EN',1),(3873,105,'Ferrara','FE',1),(3874,105,'Firenze','FI',1),(3875,105,'Foggia','FG',1),(3876,105,'Forli-Cesena','FC',1),(3877,105,'Frosinone','FR',1),(3878,105,'Genova','GE',1),(3879,105,'Gorizia','GO',1),(3880,105,'Grosseto','GR',1),(3881,105,'Imperia','IM',1),(3882,105,'Isernia','IS',1),(3883,105,'L&#39;Aquila','AQ',1),(3884,105,'La Spezia','SP',1),(3885,105,'Latina','LT',1),(3886,105,'Lecce','LE',1),(3887,105,'Lecco','LC',1),(3888,105,'Livorno','LI',1),(3889,105,'Lodi','LO',1),(3890,105,'Lucca','LU',1),(3891,105,'Macerata','MC',1),(3892,105,'Mantova','MN',1),(3893,105,'Massa-Carrara','MS',1),(3894,105,'Matera','MT',1),(3895,105,'Medio Campidano','VS',1),(3896,105,'Messina','ME',1),(3897,105,'Milano','MI',1),(3898,105,'Modena','MO',1),(3899,105,'Napoli','NA',1),(3900,105,'Novara','NO',1),(3901,105,'Nuoro','NU',1),(3902,105,'Ogliastra','OG',1),(3903,105,'Olbia-Tempio','OT',1),(3904,105,'Oristano','OR',1),(3905,105,'Padova','PD',1),(3906,105,'Palermo','PA',1),(3907,105,'Parma','PR',1),(3908,105,'Pavia','PV',1),(3909,105,'Perugia','PG',1),(3910,105,'Pesaro e Urbino','PU',1),(3911,105,'Pescara','PE',1),(3912,105,'Piacenza','PC',1),(3913,105,'Pisa','PI',1),(3914,105,'Pistoia','PT',1),(3915,105,'Pordenone','PN',1),(3916,105,'Potenza','PZ',1),(3917,105,'Prato','PO',1),(3918,105,'Ragusa','RG',1),(3919,105,'Ravenna','RA',1),(3920,105,'Reggio Calabria','RC',1),(3921,105,'Reggio Emilia','RE',1),(3922,105,'Rieti','RI',1),(3923,105,'Rimini','RN',1),(3924,105,'Roma','RM',1),(3925,105,'Rovigo','RO',1),(3926,105,'Salerno','SA',1),(3927,105,'Sassari','SS',1),(3928,105,'Savona','SV',1),(3929,105,'Siena','SI',1),(3930,105,'Siracusa','SR',1),(3931,105,'Sondrio','SO',1),(3932,105,'Taranto','TA',1),(3933,105,'Teramo','TE',1),(3934,105,'Terni','TR',1),(3935,105,'Torino','TO',1),(3936,105,'Trapani','TP',1),(3937,105,'Trento','TN',1),(3938,105,'Treviso','TV',1),(3939,105,'Trieste','TS',1),(3940,105,'Udine','UD',1),(3941,105,'Varese','VA',1),(3942,105,'Venezia','VE',1),(3943,105,'Verbano-Cusio-Ossola','VB',1),(3944,105,'Vercelli','VC',1),(3945,105,'Verona','VR',1),(3946,105,'Vibo Valentia','VV',1),(3947,105,'Vicenza','VI',1),(3948,105,'Viterbo','VT',1),(3949,222,'County Antrim','ANT',1),(3950,222,'County Armagh','ARM',1),(3951,222,'County Down','DOW',1),(3952,222,'County Fermanagh','FER',1),(3953,222,'County Londonderry','LDY',1),(3954,222,'County Tyrone','TYR',1),(3955,222,'Cumbria','CMA',1),(3956,190,'Pomurska','1',1),(3957,190,'Podravska','2',1),(3958,190,'Koroška','3',1),(3959,190,'Savinjska','4',1),(3960,190,'Zasavska','5',1),(3961,190,'Spodnjeposavska','6',1),(3962,190,'Jugovzhodna Slovenija','7',1),(3963,190,'Osrednjeslovenska','8',1),(3964,190,'Gorenjska','9',1),(3965,190,'Notranjsko-kraška','10',1),(3966,190,'Goriška','11',1),(3967,190,'Obalno-kraška','12',1),(3968,33,'Ruse','',1),(3969,101,'Alborz','ALB',1),(3970,21,'Brussels-Capital Region','BRU',1),(3971,138,'Aguascalientes','AG',1),(3973,242,'Andrijevica','01',1),(3974,242,'Bar','02',1),(3975,242,'Berane','03',1),(3976,242,'Bijelo Polje','04',1),(3977,242,'Budva','05',1),(3978,242,'Cetinje','06',1),(3979,242,'Danilovgrad','07',1),(3980,242,'Herceg-Novi','08',1),(3981,242,'Kolašin','09',1),(3982,242,'Kotor','10',1),(3983,242,'Mojkovac','11',1),(3984,242,'Nikšić','12',1),(3985,242,'Plav','13',1),(3986,242,'Pljevlja','14',1),(3987,242,'Plužine','15',1),(3988,242,'Podgorica','16',1),(3989,242,'Rožaje','17',1),(3990,242,'Šavnik','18',1),(3991,242,'Tivat','19',1),(3992,242,'Ulcinj','20',1),(3993,242,'Žabljak','21',1),(3994,243,'Belgrade','00',1),(3995,243,'North Bačka','01',1),(3996,243,'Central Banat','02',1),(3997,243,'North Banat','03',1),(3998,243,'South Banat','04',1),(3999,243,'West Bačka','05',1),(4000,243,'South Bačka','06',1),(4001,243,'Srem','07',1),(4002,243,'Mačva','08',1),(4003,243,'Kolubara','09',1),(4004,243,'Podunavlje','10',1),(4005,243,'Braničevo','11',1),(4006,243,'Šumadija','12',1),(4007,243,'Pomoravlje','13',1),(4008,243,'Bor','14',1),(4009,243,'Zaječar','15',1),(4010,243,'Zlatibor','16',1),(4011,243,'Moravica','17',1),(4012,243,'Raška','18',1),(4013,243,'Rasina','19',1),(4014,243,'Nišava','20',1),(4015,243,'Toplica','21',1),(4016,243,'Pirot','22',1),(4017,243,'Jablanica','23',1),(4018,243,'Pčinja','24',1),(4020,245,'Bonaire','BO',1),(4021,245,'Saba','SA',1),(4022,245,'Sint Eustatius','SE',1),(4023,248,'Central Equatoria','EC',1),(4024,248,'Eastern Equatoria','EE',1),(4025,248,'Jonglei','JG',1),(4026,248,'Lakes','LK',1),(4027,248,'Northern Bahr el-Ghazal','BN',1),(4028,248,'Unity','UY',1),(4029,248,'Upper Nile','NU',1),(4030,248,'Warrap','WR',1),(4031,248,'Western Bahr el-Ghazal','BW',1),(4032,248,'Western Equatoria','EW',1),(4036,117,'Ainaži, Salacgrīvas novads','0661405',1),(4037,117,'Aizkraukle, Aizkraukles novads','0320201',1),(4038,117,'Aizkraukles novads','0320200',1),(4039,117,'Aizpute, Aizputes novads','0640605',1),(4040,117,'Aizputes novads','0640600',1),(4041,117,'Aknīste, Aknīstes novads','0560805',1),(4042,117,'Aknīstes novads','0560800',1),(4043,117,'Aloja, Alojas novads','0661007',1),(4044,117,'Alojas novads','0661000',1),(4045,117,'Alsungas novads','0624200',1),(4046,117,'Alūksne, Alūksnes novads','0360201',1),(4047,117,'Alūksnes novads','0360200',1),(4048,117,'Amatas novads','0424701',1),(4049,117,'Ape, Apes novads','0360805',1),(4050,117,'Apes novads','0360800',1),(4051,117,'Auce, Auces novads','0460805',1),(4052,117,'Auces novads','0460800',1),(4053,117,'Ādažu novads','0804400',1),(4054,117,'Babītes novads','0804900',1),(4055,117,'Baldone, Baldones novads','0800605',1),(4056,117,'Baldones novads','0800600',1),(4057,117,'Baloži, Ķekavas novads','0800807',1),(4058,117,'Baltinavas novads','0384400',1),(4059,117,'Balvi, Balvu novads','0380201',1),(4060,117,'Balvu novads','0380200',1),(4061,117,'Bauska, Bauskas novads','0400201',1),(4062,117,'Bauskas novads','0400200',1),(4063,117,'Beverīnas novads','0964700',1),(4064,117,'Brocēni, Brocēnu novads','0840605',1),(4065,117,'Brocēnu novads','0840601',1),(4066,117,'Burtnieku novads','0967101',1),(4067,117,'Carnikavas novads','0805200',1),(4068,117,'Cesvaine, Cesvaines novads','0700807',1),(4069,117,'Cesvaines novads','0700800',1),(4070,117,'Cēsis, Cēsu novads','0420201',1),(4071,117,'Cēsu novads','0420200',1),(4072,117,'Ciblas novads','0684901',1),(4073,117,'Dagda, Dagdas novads','0601009',1),(4074,117,'Dagdas novads','0601000',1),(4075,117,'Daugavpils','0050000',1),(4076,117,'Daugavpils novads','0440200',1),(4077,117,'Dobele, Dobeles novads','0460201',1),(4078,117,'Dobeles novads','0460200',1),(4079,117,'Dundagas novads','0885100',1),(4080,117,'Durbe, Durbes novads','0640807',1),(4081,117,'Durbes novads','0640801',1),(4082,117,'Engures novads','0905100',1),(4083,117,'Ērgļu novads','0705500',1),(4084,117,'Garkalnes novads','0806000',1),(4085,117,'Grobiņa, Grobiņas novads','0641009',1),(4086,117,'Grobiņas novads','0641000',1),(4087,117,'Gulbene, Gulbenes novads','0500201',1),(4088,117,'Gulbenes novads','0500200',1),(4089,117,'Iecavas novads','0406400',1),(4090,117,'Ikšķile, Ikšķiles novads','0740605',1),(4091,117,'Ikšķiles novads','0740600',1),(4092,117,'Ilūkste, Ilūkstes novads','0440807',1),(4093,117,'Ilūkstes novads','0440801',1),(4094,117,'Inčukalna novads','0801800',1),(4095,117,'Jaunjelgava, Jaunjelgavas novads','0321007',1),(4096,117,'Jaunjelgavas novads','0321000',1),(4097,117,'Jaunpiebalgas novads','0425700',1),(4098,117,'Jaunpils novads','0905700',1),(4099,117,'Jelgava','0090000',1),(4100,117,'Jelgavas novads','0540200',1),(4101,117,'Jēkabpils','0110000',1),(4102,117,'Jēkabpils novads','0560200',1),(4103,117,'Jūrmala','0130000',1),(4104,117,'Kalnciems, Jelgavas novads','0540211',1),(4105,117,'Kandava, Kandavas novads','0901211',1),(4106,117,'Kandavas novads','0901201',1),(4107,117,'Kārsava, Kārsavas novads','0681009',1),(4108,117,'Kārsavas novads','0681000',1),(4109,117,'Kocēnu novads ,bij. Valmieras)','0960200',1),(4110,117,'Kokneses novads','0326100',1),(4111,117,'Krāslava, Krāslavas novads','0600201',1),(4112,117,'Krāslavas novads','0600202',1),(4113,117,'Krimuldas novads','0806900',1),(4114,117,'Krustpils novads','0566900',1),(4115,117,'Kuldīga, Kuldīgas novads','0620201',1),(4116,117,'Kuldīgas novads','0620200',1),(4117,117,'Ķeguma novads','0741001',1),(4118,117,'Ķegums, Ķeguma novads','0741009',1),(4119,117,'Ķekavas novads','0800800',1),(4120,117,'Lielvārde, Lielvārdes novads','0741413',1),(4121,117,'Lielvārdes novads','0741401',1),(4122,117,'Liepāja','0170000',1),(4123,117,'Limbaži, Limbažu novads','0660201',1),(4124,117,'Limbažu novads','0660200',1),(4125,117,'Līgatne, Līgatnes novads','0421211',1),(4126,117,'Līgatnes novads','0421200',1),(4127,117,'Līvāni, Līvānu novads','0761211',1),(4128,117,'Līvānu novads','0761201',1),(4129,117,'Lubāna, Lubānas novads','0701413',1),(4130,117,'Lubānas novads','0701400',1),(4131,117,'Ludza, Ludzas novads','0680201',1),(4132,117,'Ludzas novads','0680200',1),(4133,117,'Madona, Madonas novads','0700201',1),(4134,117,'Madonas novads','0700200',1),(4135,117,'Mazsalaca, Mazsalacas novads','0961011',1),(4136,117,'Mazsalacas novads','0961000',1),(4137,117,'Mālpils novads','0807400',1),(4138,117,'Mārupes novads','0807600',1),(4139,117,'Mērsraga novads','0887600',1),(4140,117,'Naukšēnu novads','0967300',1),(4141,117,'Neretas novads','0327100',1),(4142,117,'Nīcas novads','0647900',1),(4143,117,'Ogre, Ogres novads','0740201',1),(4144,117,'Ogres novads','0740202',1),(4145,117,'Olaine, Olaines novads','0801009',1),(4146,117,'Olaines novads','0801000',1),(4147,117,'Ozolnieku novads','0546701',1),(4148,117,'Pārgaujas novads','0427500',1),(4149,117,'Pāvilosta, Pāvilostas novads','0641413',1),(4150,117,'Pāvilostas novads','0641401',1),(4151,117,'Piltene, Ventspils novads','0980213',1),(4152,117,'Pļaviņas, Pļaviņu novads','0321413',1),(4153,117,'Pļaviņu novads','0321400',1),(4154,117,'Preiļi, Preiļu novads','0760201',1),(4155,117,'Preiļu novads','0760202',1),(4156,117,'Priekule, Priekules novads','0641615',1),(4157,117,'Priekules novads','0641600',1),(4158,117,'Priekuļu novads','0427300',1),(4159,117,'Raunas novads','0427700',1),(4160,117,'Rēzekne','0210000',1),(4161,117,'Rēzeknes novads','0780200',1),(4162,117,'Riebiņu novads','0766300',1),(4163,117,'Rīga','0010000',1),(4164,117,'Rojas novads','0888300',1),(4165,117,'Ropažu novads','0808400',1),(4166,117,'Rucavas novads','0648500',1),(4167,117,'Rugāju novads','0387500',1),(4168,117,'Rundāles novads','0407700',1),(4169,117,'Rūjiena, Rūjienas novads','0961615',1),(4170,117,'Rūjienas novads','0961600',1),(4171,117,'Sabile, Talsu novads','0880213',1),(4172,117,'Salacgrīva, Salacgrīvas novads','0661415',1),(4173,117,'Salacgrīvas novads','0661400',1),(4174,117,'Salas novads','0568700',1),(4175,117,'Salaspils novads','0801200',1),(4176,117,'Salaspils, Salaspils novads','0801211',1),(4177,117,'Saldus novads','0840200',1),(4178,117,'Saldus, Saldus novads','0840201',1),(4179,117,'Saulkrasti, Saulkrastu novads','0801413',1),(4180,117,'Saulkrastu novads','0801400',1),(4181,117,'Seda, Strenču novads','0941813',1),(4182,117,'Sējas novads','0809200',1),(4183,117,'Sigulda, Siguldas novads','0801615',1),(4184,117,'Siguldas novads','0801601',1),(4185,117,'Skrīveru novads','0328200',1),(4186,117,'Skrunda, Skrundas novads','0621209',1),(4187,117,'Skrundas novads','0621200',1),(4188,117,'Smiltene, Smiltenes novads','0941615',1),(4189,117,'Smiltenes novads','0941600',1),(4190,117,'Staicele, Alojas novads','0661017',1),(4191,117,'Stende, Talsu novads','0880215',1),(4192,117,'Stopiņu novads','0809600',1),(4193,117,'Strenči, Strenču novads','0941817',1),(4194,117,'Strenču novads','0941800',1),(4195,117,'Subate, Ilūkstes novads','0440815',1),(4196,117,'Talsi, Talsu novads','0880201',1),(4197,117,'Talsu novads','0880200',1),(4198,117,'Tērvetes novads','0468900',1),(4199,117,'Tukuma novads','0900200',1),(4200,117,'Tukums, Tukuma novads','0900201',1),(4201,117,'Vaiņodes novads','0649300',1),(4202,117,'Valdemārpils, Talsu novads','0880217',1),(4203,117,'Valka, Valkas novads','0940201',1),(4204,117,'Valkas novads','0940200',1),(4205,117,'Valmiera','0250000',1),(4206,117,'Vangaži, Inčukalna novads','0801817',1),(4207,117,'Varakļāni, Varakļānu novads','0701817',1),(4208,117,'Varakļānu novads','0701800',1),(4209,117,'Vārkavas novads','0769101',1),(4210,117,'Vecpiebalgas novads','0429300',1),(4211,117,'Vecumnieku novads','0409500',1),(4212,117,'Ventspils','0270000',1),(4213,117,'Ventspils novads','0980200',1),(4214,117,'Viesīte, Viesītes novads','0561815',1),(4215,117,'Viesītes novads','0561800',1),(4216,117,'Viļaka, Viļakas novads','0381615',1),(4217,117,'Viļakas novads','0381600',1),(4218,117,'Viļāni, Viļānu novads','0781817',1),(4219,117,'Viļānu novads','0781800',1),(4220,117,'Zilupe, Zilupes novads','0681817',1),(4221,117,'Zilupes novads','0681801',1),(4222,43,'Arica y Parinacota','AP',1),(4223,43,'Los Rios','LR',1),(4224,220,'Kharkivs\'ka Oblast\'','63',1);
/*!40000 ALTER TABLE `oc_zone` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oc_zone_to_geo_zone`
--

DROP TABLE IF EXISTS `oc_zone_to_geo_zone`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oc_zone_to_geo_zone` (
  `zone_to_geo_zone_id` int(11) NOT NULL AUTO_INCREMENT,
  `country_id` int(11) NOT NULL,
  `zone_id` int(11) NOT NULL DEFAULT '0',
  `geo_zone_id` int(11) NOT NULL,
  `date_added` datetime NOT NULL,
  `date_modified` datetime NOT NULL,
  PRIMARY KEY (`zone_to_geo_zone_id`)
) ENGINE=MyISAM AUTO_INCREMENT=110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oc_zone_to_geo_zone`
--

LOCK TABLES `oc_zone_to_geo_zone` WRITE;
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` DISABLE KEYS */;
INSERT INTO `oc_zone_to_geo_zone` VALUES (1,222,0,4,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(2,222,3513,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(3,222,3514,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(4,222,3515,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(5,222,3516,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(6,222,3517,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(7,222,3518,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(8,222,3519,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(9,222,3520,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(10,222,3521,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(11,222,3522,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(12,222,3523,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(13,222,3524,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(14,222,3525,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(15,222,3526,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(16,222,3527,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(17,222,3528,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(18,222,3529,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(19,222,3530,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(20,222,3531,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(21,222,3532,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(22,222,3533,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(23,222,3534,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(24,222,3535,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(25,222,3536,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(26,222,3537,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(27,222,3538,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(28,222,3539,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(29,222,3540,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(30,222,3541,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(31,222,3542,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(32,222,3543,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(33,222,3544,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(34,222,3545,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(35,222,3546,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(36,222,3547,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(37,222,3548,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(38,222,3549,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(39,222,3550,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(40,222,3551,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(41,222,3552,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(42,222,3553,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(43,222,3554,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(44,222,3555,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(45,222,3556,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(46,222,3557,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(47,222,3558,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(48,222,3559,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(49,222,3560,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(50,222,3561,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(51,222,3562,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(52,222,3563,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(53,222,3564,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(54,222,3565,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(55,222,3566,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(56,222,3567,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(57,222,3568,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(58,222,3569,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(59,222,3570,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(60,222,3571,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(61,222,3572,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(62,222,3573,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(63,222,3574,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(64,222,3575,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(65,222,3576,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(66,222,3577,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(67,222,3578,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(68,222,3579,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(69,222,3580,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(70,222,3581,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(71,222,3582,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(72,222,3583,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(73,222,3584,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(74,222,3585,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(75,222,3586,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(76,222,3587,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(77,222,3588,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(78,222,3589,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(79,222,3590,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(80,222,3591,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(81,222,3592,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(82,222,3593,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(83,222,3594,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(84,222,3595,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(85,222,3596,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(86,222,3597,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(87,222,3598,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(88,222,3599,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(89,222,3600,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(90,222,3601,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(91,222,3602,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(92,222,3603,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(93,222,3604,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(94,222,3605,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(95,222,3606,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(96,222,3607,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(97,222,3608,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(98,222,3609,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(99,222,3610,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(100,222,3611,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(101,222,3612,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(102,222,3949,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(103,222,3950,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(104,222,3951,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(105,222,3952,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(106,222,3953,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(107,222,3954,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(108,222,3955,3,'0000-00-00 00:00:00','0000-00-00 00:00:00'),(109,222,3972,3,'0000-00-00 00:00:00','0000-00-00 00:00:00');
/*!40000 ALTER TABLE `oc_zone_to_geo_zone` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-08-05 11:21:05
