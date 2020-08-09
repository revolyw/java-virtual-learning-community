-- MySQL dump 10.13  Distrib 5.7.19, for Linux (x86_64)
--
-- Host: localhost    Database: javavirtual
-- ------------------------------------------------------
-- Server version	5.7.19-0ubuntu0.16.04.1

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
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `ln` varchar(255) NOT NULL COMMENT '账号',
  `pw` varchar(255) NOT NULL COMMENT '密码',
  `no` varchar(255) NOT NULL COMMENT '学号',
  `role` varchar(255) NOT NULL DEFAULT 'student' COMMENT '角色',
  `name` varchar(255) NOT NULL COMMENT '姓名',
  `sex` varchar(255) DEFAULT NULL COMMENT '性别',
  `cls` varchar(255) DEFAULT NULL COMMENT '班级',
  `birthday` varchar(255) DEFAULT NULL COMMENT '生日',
  `introduce` varchar(255) DEFAULT NULL COMMENT '个人简介',
  `phone` varchar(255) DEFAULT NULL COMMENT '电话',
  `email` varchar(255) DEFAULT NULL COMMENT '邮箱',
  `grp` varchar(255) DEFAULT NULL COMMENT '所在组',
  `learn_level` varchar(255) DEFAULT NULL COMMENT '学习等级',
  `power` varchar(255) DEFAULT NULL COMMENT '权限',
  `is_used` varchar(255) NOT NULL DEFAULT '-1' COMMENT '是否启用',
  `reg_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '注册时间',
  `pass_date` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP COMMENT '批准时间',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ln` (`ln`),
  UNIQUE KEY `no` (`no`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (22,'test1','test1','201501','student','小明',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-05-06 14:27:55','2016-06-16 07:03:27'),(23,'test2','test2','201502','student','小红',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-05-06 14:27:57','2016-06-16 07:03:31'),(24,'test3','test3','201503','student','小王',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'1','2016-05-06 14:27:58','2016-06-16 07:03:34'),(25,'test4','test4','201504','student','小杨',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-1','2016-05-06 14:23:10','2016-06-16 07:03:40'),(26,'test5','test5','201505','student','小二',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'-1','2016-05-06 14:23:10','2016-06-16 07:03:44'),(27,'1','1','1','student','1','','','','','','','','','','-1','2016-08-23 03:50:27',NULL),(28,'SunnyLau','YD12300.','2015020800079','student','刘松','','','','','','','','','','-1','2016-09-17 12:02:08',NULL);
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-09 17:37:19
