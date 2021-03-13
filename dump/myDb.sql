-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: 10am
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB-1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Current Database: `10am`
--

CREATE DATABASE /*!32312 IF NOT EXISTS*/ `myDb` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;

USE `myDb`;

--
-- Table structure for table `draft`
--

DROP TABLE IF EXISTS `draft`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `draft` (
  `draft_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `attach` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`draft_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `draft`
--

LOCK TABLES `draft` WRITE;
/*!40000 ALTER TABLE `draft` DISABLE KEYS */;
INSERT INTO `draft` VALUES (1,'hema','hiiiiiii','Winter.jpg','hiiiiiiiiiiii','0000-00-00'),(2,'hema','my pics','Sunset.jpg','this is my pics','0000-00-00'),(3,'hema','my pics','Sunset.jpg','this is my pics','0000-00-00'),(4,'hema','abhi','Water lilies.jpg','hhhhhhhhhhhhh','2013-06-09'),(5,'abhishek','my resume ','','this is my resume format..........','2013-06-13');
/*!40000 ALTER TABLE `draft` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(200) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES (1,'Winter.jpg'),(2,'Winter.jpg'),(3,'Blue hills.jpg'),(4,'Winter.jpg'),(5,''),(6,'Winter.jpg'),(7,'Winter.jpg'),(8,'Winter.jpg'),(9,'Winter.jpg'),(10,'Sunset.jpg'),(11,'Water lilies.jpg'),(12,'Sunset.jpg'),(13,'Sunset.jpg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `latestupd`
--

DROP TABLE IF EXISTS `latestupd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `latestupd` (
  `upd_id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`upd_id`)
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `latestupd`
--

LOCK TABLES `latestupd` WRITE;
/*!40000 ALTER TABLE `latestupd` DISABLE KEYS */;
INSERT INTO `latestupd` VALUES (1,'resul','mca result is declared.....','AboutPlugin.dll','2013-06-13'),(2,'resul','mca result is declared.....','AboutPlugin.dll','2013-06-13'),(3,'resue','resume......','Winter.jpg','2013-06-13'),(4,'lkjlj','khkjhkh','','2013-06-13'),(5,'jjjjjjjjj','kkkkkkkkkkk','Water lilies.jpg','2013-06-13'),(10,'hoe','Hello! I am cheating on my husband and he does not know it.','','2020-04-18'),(11,'Dragon Prince','Dragon Prince season 3 is here','','2020-04-18 09:31:11');
/*!40000 ALTER TABLE `latestupd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mails`
--

DROP TABLE IF EXISTS `mails`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mails` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` char(50) NOT NULL,
  `msg` text NOT NULL,
  `draft` text NOT NULL,
  `trash` text NOT NULL,
  `attachement` varchar(200) NOT NULL,
  `msgdate` varchar(50) NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=23 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mails`
--

LOCK TABLES `mails` WRITE;
/*!40000 ALTER TABLE `mails` DISABLE KEYS */;
INSERT INTO `mails` VALUES (1,'deepika','prabhat','hello','hello deepika','','','',''),(2,'prabhat','prabhat','hiiiiiiiii--msg failed','hiiiiiiiiiii','','','',''),(3,'prabhat','prabhat','hiiiiiiiii--msg failed','hiiiiiiiiiii','','','',''),(4,'deepika','prabhat','welcome','welcom........','','','',''),(5,'deepika','prabhat','welcome','welcom........','','','',''),(6,'deepika','prabhat','welcome','welcom........','','','',''),(7,'prabhat','','my resume','','dkljfldjlf','','',''),(8,'deepika','prabhat','ldfjld','dkfjldj','','','','2013-03-03 10:57:47'),(9,'deepika','prabhat','ldfjld','dkfjldj','','','','2013-03-03 11:00:13'),(10,'rexx','prabhat','hello','hello','','','','2013-03-03 11:01:22'),(11,'rexx','prabhat','welll','welcome.rexx........','','','','2013-03-03 11:01:34'),(21,'charles','rosalinda','witcher3','OMG! Yen did that!','','','','2020-04-18 09:51:08'),(22,'mehak','rosalinda','last night','It was really good cheating with you on my husband! I enjoyed it!','','','','2020-04-18 09:53:28'),(20,'charles','rosalinda','witcher2','I also loved the series!','','','','2020-04-18 09:47:27');
/*!40000 ALTER TABLE `mails` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `trash`
--

DROP TABLE IF EXISTS `trash`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `trash` (
  `trash_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL,
  PRIMARY KEY (`trash_id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `trash`
--

LOCK TABLES `trash` WRITE;
/*!40000 ALTER TABLE `trash` DISABLE KEYS */;
INSERT INTO `trash` VALUES (1,'hema','ravi','hello','hello prabhat..........','2015-06-22'),(2,'hema','hema','hhhhh','hello ravi','2015-06-22'),(3,'hema','ravi','hello','hello prabhat..........','2015-06-22'),(4,'hema','ravi','hello','hello deep hows you?......','2015-06-22');
/*!40000 ALTER TABLE `trash` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userinfo`
--

DROP TABLE IF EXISTS `userinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userinfo` (
  `user_jd` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` char(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(100) NOT NULL,
  PRIMARY KEY (`user_jd`),
  UNIQUE KEY `user_name` (`user_name`,`mobile`,`email`),
  KEY `gender` (`gender`,`dob`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userinfo`
--

LOCK TABLES `userinfo` WRITE;
/*!40000 ALTER TABLE `userinfo` DISABLE KEYS */;
INSERT INTO `userinfo` VALUES (1,'hema','hema123',222222,'','f','reading','1902-03-04','Blue hills.jpg'),(2,'mehak','mehak',11111,'mehak@gmail.com','f','cricket,football','1917-11-16',''),(3,'sanjeev','sanjeev',55578857878,'sanjeev@yahoo.com','m','cricket,football','0000-00-00',''),(4,'dfdfdfd','fdf',0,'dfdfd@gmail.lcom','m','cricket','0000-00-00',''),(5,'satish@gmail.com','satish',45444,'sanjeev@yahoo.com','m','cricket,football','1902-04-04','Winter.jpg'),(6,'xyz','xyz111',444444,'xyz@gmail.com','m','cricket,football','1901-04-04','Blue hills.jpg'),(7,'ravi','ravi111',44444444,'ravi@gmail.com','m','cricket,football','1901-03-03','Winter.jpg'),(8,'abhishek','abhi',888888888,'abhishek@gmail.com','m','cricket,football','1915-10-16','Sunset.jpg'),(9,'rosalinda','val',123456,'rosa@stalker.hu','f','cricket','1984-10-11',''),(10,'charles','valami',123456,'ch@ch.hu','m','','1905-11-13','');
/*!40000 ALTER TABLE `userinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usermail`
--

DROP TABLE IF EXISTS `usermail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `usermail` (
  `mail_id` int(11) NOT NULL AUTO_INCREMENT,
  `rec_id` varchar(30) NOT NULL,
  `sen_id` varchar(30) NOT NULL,
  `sub` char(30) NOT NULL,
  `msg` text NOT NULL,
  `attachement` text NOT NULL,
  `recDT` date NOT NULL,
  PRIMARY KEY (`mail_id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usermail`
--

LOCK TABLES `usermail` WRITE;
/*!40000 ALTER TABLE `usermail` DISABLE KEYS */;
INSERT INTO `usermail` VALUES (3,'ravi','ravi','welcome--msg failed','dljfldjfldj','','2013-03-05'),(4,'prabhat','ravi','hiiiii','hii prabhat.........','','2013-03-06'),(5,'prabhat','ravi','docs','project docs.............','','2013-03-06');
/*!40000 ALTER TABLE `usermail` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-18 10:25:59
