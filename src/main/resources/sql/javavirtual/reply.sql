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
-- Table structure for table `reply`
--

DROP TABLE IF EXISTS `reply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reply` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `comment_id` varchar(255) NOT NULL COMMENT '留言id',
  `from_uid` varchar(255) NOT NULL COMMENT '回复人id',
  `to_uid` varchar(255) NOT NULL COMMENT '被回复人id',
  `content` varchar(255) NOT NULL COMMENT '回复内容',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '写入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=38 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reply`
--

LOCK TABLES `reply` WRITE;
/*!40000 ALTER TABLE `reply` DISABLE KEYS */;
INSERT INTO `reply` VALUES (29,'42','22','23','我想输出的不是数字。。我想知道的是A B C D 那个对象最大 我想要对象','2016-05-06 15:42:22'),(30,'42','23','22','我知道，你把大的对象放在前面不就好了','2016-05-06 15:43:27'),(31,'42','22','23','怎么放？？？ 我逻辑能力很差','2016-05-06 15:44:11'),(32,'42','23','22','如果你是想做a这个对象永远大，就再int一个，把小的那个先传给int出来的，大的给a，再把int出来的还给小的，做到交换，冒泡排序有提到，输出时可以规定格式','2016-05-06 15:44:51'),(33,'46','23','26','好的，谢谢','2016-05-06 15:47:08'),(34,'49','24','25','对 怎么算的？','2016-05-06 15:49:53'),(35,'49','25','24','首先，i是1没错，第一次运算时i加加乘以2，因为加加在后，所以先运算再自增，结果为2，又因为自增了，i变成了2，第二次运算3乘以减减i，因为减减在前，先自减再运算，自减后i成了1，3乘1得3，再加上2就是5，','2016-05-06 15:50:23'),(36,'49','24','25','i++不是i=i+1嘛 先自加不久等于3嘛 后来一个自减不是等于3吗','2016-05-06 15:50:47'),(37,'49','25','24','加加在前面才是先自增后运算','2016-05-06 15:51:13');
/*!40000 ALTER TABLE `reply` ENABLE KEYS */;
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
