CREATE DATABASE  IF NOT EXISTS `worldcup-results` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */;
USE `worldcup-results`;
-- MySQL dump 10.13  Distrib 5.6.13, for Win32 (x86)
--
-- Host: localhost    Database: worldcup-results
-- ------------------------------------------------------
-- Server version	5.5.5-10.0.10-MariaDB

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
-- Table structure for table `group`
--

DROP TABLE IF EXISTS `group`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `group`
--

LOCK TABLES `group` WRITE;
/*!40000 ALTER TABLE `group` DISABLE KEYS */;
INSERT INTO `group` VALUES (1,'Group A',NULL),(2,'Group B',NULL),(3,'Group C',NULL),(4,'Group D',NULL),(5,'Group E',NULL),(6,'Group F',NULL),(7,'Group G',NULL),(8,'Group H',NULL);
/*!40000 ALTER TABLE `group` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dateTime` datetime DEFAULT NULL,
  `team1Id` int(11) DEFAULT NULL,
  `team2Id` int(11) DEFAULT NULL,
  `team1Score` int(11) DEFAULT NULL,
  `team2Score` int(11) DEFAULT NULL,
  `team1Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team2Name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team1Flag` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `team2Flag` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,'Group A','2014-06-13 03:00:00',1,2,NULL,NULL,'Brazil','Croatia','brazil.png','croatia.png'),(2,'Group A','2014-06-13 23:00:00',3,4,NULL,NULL,'Mexico','Cameroon','mexico.png','cameroon.png'),(3,'Group B','2014-06-14 02:00:00',5,6,NULL,NULL,'Spain','Netherlands','spain.png','netherlands.png'),(4,'Group B','2014-06-14 04:00:00',7,8,NULL,NULL,'Chile','Australia','chile.png','australia.png'),(5,'Group C','2014-06-14 23:00:00',9,10,NULL,NULL,'Colombia','Greece','colombia.png','greece.png'),(6,'Group C','2014-06-15 02:00:00',11,12,NULL,NULL,'Ivory Coast','Japan','ivory-coast.png','japan.png'),(7,'Group D','2014-06-15 04:00:00',13,14,NULL,NULL,'Uruguay','Costa Rica','uruguay.png','costa-rica.png'),(8,'Group D','2014-06-15 08:00:00',15,16,NULL,NULL,'England','Italy','england.png','italy.png'),(9,'Group E','2014-06-15 23:00:00',17,18,NULL,NULL,'Switzerland','Ecuador','switzerland.png','ecuador.png'),(10,'Group E','2014-06-16 02:00:00',19,20,NULL,NULL,'France','Honduras','france.png','honduras.png'),(11,'Group F','2014-06-16 05:00:00',21,22,NULL,NULL,'Argentina','Bosnia and Herzegovina','argentina.png','bosnia-and-herzegovina.png'),(12,'Group F','2014-06-16 23:00:00',23,24,NULL,NULL,'Iran','Nigeria','iran.png','nigeria.png'),(13,'Group G','2014-06-17 02:00:00',25,26,NULL,NULL,'Germany','Portugal','germany.png','portugal.png'),(14,'Group G','2014-06-17 05:00:00',27,28,NULL,NULL,'Ghana','United States','ghana.png','united-states.png'),(15,'Group H','2014-06-17 23:00:00',29,30,NULL,NULL,'Belgium','Algeria','belgium.png','algeria.png'),(16,'Group H','2014-06-18 04:00:00',31,32,NULL,NULL,'Russia','South Korea','russia.png','south-korea.png'),(17,'Group A','2014-06-18 02:00:00',1,3,NULL,NULL,'Brazil','Mexico','brazil.png','mexico.png'),(18,'Group A','2014-06-18 23:00:00',4,2,NULL,NULL,'Cameroon','Croatia','cameroon.png','croatia.png'),(19,'Group B','2014-06-19 02:00:00',5,7,NULL,NULL,'Spain','Chile','spain.png','chile.png'),(20,'Group B','2014-06-19 05:00:00',8,6,NULL,NULL,'Australia','Netherlands','australia.png','netherlands.png'),(21,'Group C','2014-06-19 23:00:00',9,11,NULL,NULL,'Colombia','Ivory Coast','colombia.png','ivory-coast.png'),(22,'Group C','2014-06-20 02:00:00',12,8,NULL,NULL,'Japan','Australia','japan.png','australia.png'),(23,'Group D','2014-06-20 05:00:00',13,15,NULL,NULL,'Uruguay','England','uruguay.png','england.png'),(24,'Group D','2014-06-20 23:00:00',16,14,NULL,NULL,'Italy','Costa Rica','italy.png','costa-rica.png'),(25,'Group E','2014-06-21 02:00:00',17,19,NULL,NULL,'Switzerland','France','switzerland.png','france.png'),(26,'Group E','2014-06-21 05:00:00',20,18,NULL,NULL,'Honduras','Ecuador','honduras.png','ecuador.png'),(27,'Group F','2014-06-21 23:00:00',21,23,NULL,NULL,'Argentina','Iran','argentina.png','iran.png'),(28,'Group F','2014-06-22 02:00:00',24,22,NULL,NULL,'Nigeria','Bosnia and Herzegovina','nigeria.png','bosnia-and-herzegovina.png'),(29,'Group G','2014-06-22 05:00:00',25,27,NULL,NULL,'Germany','Ghana','germany.png','ghana.png'),(30,'Group G','2014-06-22 23:00:00',28,26,NULL,NULL,'United States','Portugal','united-states.png','portugal.png'),(31,'Group H','2014-06-23 02:00:00',29,31,NULL,NULL,'Belgium','Russia','belgium.png','russia.png'),(32,'Group H','2014-06-23 05:00:00',32,30,NULL,NULL,'South Korea','Algeria','south-korea.png','algeria.png'),(33,'Group A','2014-06-23 23:00:00',4,1,NULL,NULL,'Cameroon','Brazil','cameroon.png','brazil.png'),(34,'Group A','2014-06-23 23:00:00',2,3,NULL,NULL,'Croatia','Mexico','croatia.png','mexico.png'),(35,'Group B','2014-06-24 03:00:00',8,5,NULL,NULL,'Australia','Spain','australia.png','spain.png'),(36,'Group B','2014-06-24 03:00:00',6,7,NULL,NULL,'Netherlands','Chile','netherlands.png','chile.png'),(37,'Group C','2014-06-24 23:00:00',12,9,NULL,NULL,'Japan','Colombia','japan.png','colombia.png'),(38,'Group C','2014-06-24 23:00:00',10,11,NULL,NULL,'Greece','Ivory Coast','greece.png','ivory-coast.png'),(39,'Group D','2014-06-25 03:00:00',16,13,NULL,NULL,'Italy','Uruguay','italy.png','uruguay.png'),(40,'Group D','2014-06-25 03:00:00',14,15,NULL,NULL,'Costa Rica','England','costa-rica.png','england.png'),(41,'Group E','2014-06-25 23:00:00',20,17,NULL,NULL,'Honduras','Switzerland','honduras.png','switzerland.png'),(42,'Group E','2014-06-25 23:00:00',18,19,NULL,NULL,'Ecuador','France','ecuador.png','france.png'),(43,'Group F','2014-06-26 03:00:00',24,21,NULL,NULL,'Nigeria','Argentina','nigeria.png','argentina.png'),(44,'Group F','2014-06-26 03:00:00',22,23,NULL,NULL,'Bosnia and Herzegovina','Iran','bosnia-and-herzegovina.png','iran.png'),(45,'Group G','2014-06-26 23:00:00',28,25,NULL,NULL,'United States','Germany','united-states.png','germany.png'),(46,'Group G','2014-06-26 23:00:00',26,27,NULL,NULL,'Portugal','Ghana','portugal.png','ghana.png'),(47,'Group H','2014-06-27 03:00:00',32,29,NULL,NULL,'South Korea','Belgium','south-korea.png','belgium.png'),(48,'Group H','2014-06-27 03:00:00',30,31,NULL,NULL,'Algeria','Russia','algeria.png','russia.png'),(49,'Row of 16','2014-06-28 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(50,'Row of 16','2014-06-29 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(51,'Row of 16','2014-06-29 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(52,'Row of 16','2014-06-30 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(53,'Row of 16','2014-06-30 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(54,'Row of 16','2014-07-01 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(55,'Row of 16','2014-07-01 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(56,'Row of 16','2014-07-02 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(57,'Quarter-finals','2014-07-04 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(58,'Quarter-finals','2014-07-05 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(59,'Quarter-finals','2014-07-05 23:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(60,'Quarter-finals','2014-07-06 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(61,'Semi-finals','2014-07-09 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(62,'Semi-finals','2014-07-10 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(63,'Third place','2014-07-13 03:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(64,'Final','2014-07-14 02:00:00',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `team`
--

DROP TABLE IF EXISTS `team`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `team` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `flag` varchar(45) COLLATE utf8_unicode_ci DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `groupId` int(11) DEFAULT NULL,
  `points` int(11) DEFAULT '0',
  `goals` int(11) DEFAULT '0',
  `wins` int(11) DEFAULT '0',
  `loose` int(11) DEFAULT '0',
  `draw` int(11) DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `team`
--

LOCK TABLES `team` WRITE;
/*!40000 ALTER TABLE `team` DISABLE KEYS */;
INSERT INTO `team` VALUES (1,'Brazil','brazil.png',NULL,1,0,0,0,0,0),(2,'Croatia','croatia.png',NULL,1,0,0,0,0,0),(3,'Mexico','mexico.png',NULL,1,0,0,0,0,0),(4,'Cameroon','cameroon.png',NULL,1,0,0,0,0,0),(5,'Spain','spain.png',NULL,2,0,0,0,0,0),(6,'Netherlands','netherlands.png',NULL,2,0,0,0,0,0),(7,'Chile','chile.png',NULL,2,0,0,0,0,0),(8,'Australia','australia.png',NULL,2,0,0,0,0,0),(9,'Colombia','colombia.png',NULL,3,0,0,0,0,0),(10,'Greece','greece.png',NULL,3,0,0,0,0,0),(11,'Ivory Coast','ivory-coast.png',NULL,3,0,0,0,0,0),(12,'Japan','japan.png',NULL,3,0,0,0,0,0),(13,'Uruguay','uruguay.png',NULL,4,0,0,0,0,0),(14,'Costa Rica','costa-rica.png',NULL,4,0,0,0,0,0),(15,'England','england.png',NULL,4,0,0,0,0,0),(16,'Italy','italy.png',NULL,4,0,0,0,0,0),(17,'Switzerland','switzerland.png',NULL,5,0,0,0,0,0),(18,'Ecuador','ecuador.png',NULL,5,0,0,0,0,0),(19,'France','france.png',NULL,5,0,0,0,0,0),(20,'Honduras','honduras.png',NULL,5,0,0,0,0,0),(21,'Argentina','argentina.png',NULL,6,0,0,0,0,0),(22,'Bosnia and Herzegovina','bosnia-and-herzegovina.png',NULL,6,0,0,0,0,0),(23,'Iran','iran.png',NULL,6,0,0,0,0,0),(24,'Nigeria','nigeria.png',NULL,6,0,0,0,0,0),(25,'Germany','germany.png',NULL,7,0,0,0,0,0),(26,'Portugal','portugal.png',NULL,7,0,0,0,0,0),(27,'Ghana','ghana.png',NULL,7,0,0,0,0,0),(28,'United States','united-states.png',NULL,7,0,0,0,0,0),(29,'Belgium','belgium.png',NULL,8,0,0,0,0,0),(30,'Algeria','algeria.png',NULL,8,0,0,0,0,0),(31,'Russia','russia.png',NULL,8,0,0,0,0,0),(32,'South Korea','south-korea.png',NULL,8,0,0,0,0,0);
/*!40000 ALTER TABLE `team` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'worldcup-results'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2014-06-04 11:57:09
