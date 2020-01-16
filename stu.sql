-- MySQL dump 10.13  Distrib 5.7.28, for Linux (x86_64)
--
-- Host: localhost    Database: stu
-- ------------------------------------------------------
-- Server version	5.7.28-0ubuntu0.18.04.4

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
-- Table structure for table `cls`
--

DROP TABLE IF EXISTS `cls`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `age` tinyint(3) unsigned NOT NULL,
  `sex` enum('m','w','o') DEFAULT NULL,
  `score` float DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cls`
--

LOCK TABLES `cls` WRITE;
/*!40000 ALTER TABLE `cls` DISABLE KEYS */;
INSERT INTO `cls` VALUES (1,'joy',17,'m',80),(2,'Dasy',19,'w',90),(3,'sunny',20,'w',61),(4,'Hash',18,NULL,76),(5,'Sasy',21,'w',77),(6,'Alexs',20,'m',88),(7,'tang',17,'m',92),(8,'JACK',16,'m',55),(9,'Fang',19,'w',44);
/*!40000 ALTER TABLE `cls` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dept` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES (1,'总裁办'),(2,'销售部'),(3,'技术部'),(4,'人事部'),(5,'行政部'),(6,'财务部');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `good_student`
--

DROP TABLE IF EXISTS `good_student`;
/*!50001 DROP VIEW IF EXISTS `good_student`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `good_student` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `age`,
 1 AS `score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `hobby`
--

DROP TABLE IF EXISTS `hobby`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `hobby` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(20) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `hobby`
--

LOCK TABLES `hobby` WRITE;
/*!40000 ALTER TABLE `hobby` DISABLE KEYS */;
INSERT INTO `hobby` VALUES (1,'joy','sing',12356.00);
/*!40000 ALTER TABLE `hobby` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `interest`
--

DROP TABLE IF EXISTS `interest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `interest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `hobby` set('sing','dance','draw') DEFAULT NULL,
  `price` decimal(7,2) DEFAULT NULL,
  `phone` char(16) DEFAULT NULL,
  `remark` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `interest`
--

LOCK TABLES `interest` WRITE;
/*!40000 ALTER TABLE `interest` DISABLE KEYS */;
INSERT INTO `interest` VALUES (1,'JOY','sing',12356.00,'138xxxx9999','天籁之声'),(2,'Danny','sing,dance',68880.00,'138xxxx9999','骨骼惊奇，练舞奇才'),(3,'THOMAS','dance',57834.99,'138xxxx9999','随心所欲想跳就跳'),(4,'Danfce','draw',34435.99,'138xxxx9999','现实版的画画天才');
/*!40000 ALTER TABLE `interest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `marathon`
--

DROP TABLE IF EXISTS `marathon`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `marathon` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `athlete` varchar(30) NOT NULL,
  `birthday` date DEFAULT NULL,
  `registeration_time` datetime DEFAULT NULL,
  `performance` time DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `marathon`
--

LOCK TABLES `marathon` WRITE;
/*!40000 ALTER TABLE `marathon` DISABLE KEYS */;
INSERT INTO `marathon` VALUES (1,'曹操','1001-01-10','1002-12-28 18:33:12','02:14:55'),(2,'朱红','1003-02-09','1004-11-02 14:13:12','02:11:45');
/*!40000 ALTER TABLE `marathon` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `notgood`
--

DROP TABLE IF EXISTS `notgood`;
/*!50001 DROP VIEW IF EXISTS `notgood`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE VIEW `notgood` AS SELECT 
 1 AS `id`,
 1 AS `name`,
 1 AS `age`,
 1 AS `score`*/;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `person`
--

DROP TABLE IF EXISTS `person`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `person` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `age` tinyint(4) DEFAULT '0',
  `sex` enum('m','w','o') DEFAULT 'o',
  `salary` decimal(8,2) DEFAULT '250.00',
  `hire_date` date NOT NULL,
  `dept_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `dept_fk1` (`dept_id`),
  CONSTRAINT `dept_fk1` FOREIGN KEY (`dept_id`) REFERENCES `dept` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `person`
--

LOCK TABLES `person` WRITE;
/*!40000 ALTER TABLE `person` DISABLE KEYS */;
INSERT INTO `person` VALUES (1,'Alex',33,'m',28000.00,'2017-03-08',2),(2,'Levi',30,'m',20000.00,'2020-10-01',3),(4,'Lucy',25,'w',18000.00,'2017-03-22',1);
/*!40000 ALTER TABLE `person` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sanguo`
--

DROP TABLE IF EXISTS `sanguo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sanguo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `gender` set('男','女') DEFAULT NULL,
  `country` varchar(20) DEFAULT NULL,
  `attack` int(11) DEFAULT NULL,
  `defense` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sanguo`
--

LOCK TABLES `sanguo` WRITE;
/*!40000 ALTER TABLE `sanguo` DISABLE KEYS */;
INSERT INTO `sanguo` VALUES (1,'曹操','男','魏国',150,60),(2,'司马懿','男','魏国',100,40),(3,'夏侯渊','男','魏国',120,70),(4,'张辽','男','魏国',170,90),(6,'刘备','男','蜀国',97,72),(7,'关羽','男','蜀国',250,99),(8,'赵云','男','蜀国',350,70),(9,'诸葛亮','男','蜀国',76,90),(10,'张飞','男','蜀国',190,92),(11,'孙尚香','女','蜀国',120,86),(12,'周瑜','男','吴国',200,89),(13,'大乔','女','吴国',50,25),(14,'小乔','女','吴国',45,20),(15,'陆逊','男','吴国',150,76),(16,'吕蒙','男','吴国',176,88);
/*!40000 ALTER TABLE `sanguo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Final view structure for view `good_student`
--

/*!50001 DROP VIEW IF EXISTS `good_student`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `good_student` AS select `cls`.`id` AS `id`,`cls`.`name` AS `name`,`cls`.`age` AS `age`,`cls`.`score` AS `score` from `cls` where (`cls`.`score` > 85) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `notgood`
--

/*!50001 DROP VIEW IF EXISTS `notgood`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `notgood` AS select `cls`.`id` AS `id`,`cls`.`name` AS `name`,`cls`.`age` AS `age`,`cls`.`score` AS `score` from `cls` where (`cls`.`score` < 60) */;
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

-- Dump completed on 2020-01-14 10:31:40
