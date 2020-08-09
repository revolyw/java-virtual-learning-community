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
-- Table structure for table `comment`
--

DROP TABLE IF EXISTS `comment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comment` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `theme_id` varchar(255) NOT NULL COMMENT '主题id',
  `u_id` varchar(255) NOT NULL COMMENT '用户id',
  `content` text NOT NULL COMMENT '留言内容',
  `reply_num` bigint(255) NOT NULL COMMENT '回复数量',
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP COMMENT '写入时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comment`
--

LOCK TABLES `comment` WRITE;
/*!40000 ALTER TABLE `comment` DISABLE KEYS */;
INSERT INTO `comment` VALUES (42,'18','23','比较四个数大小，普通方法用冒泡排序，输出时写好格式就好',4,'2016-05-06 15:44:51'),(43,'19','22','开发工具而已，不需要太纠结。想用什么就直接用吧。',0,'2016-05-06 15:42:45'),(44,'19','24','eclipse\nIntelliJ IDEA 14',0,'2016-05-06 15:45:42'),(45,'19','25','最近觉得myeclipse太慢，而且插件多感觉有点冗余',0,'2016-05-06 15:46:16'),(46,'19','26','学习用eclipse',1,'2016-05-06 15:47:08'),(47,'20','24','大神 在哪里',0,'2016-05-06 15:48:47'),(48,'20','24','不会睡不着啊',0,'2016-05-06 15:48:58'),(49,'20','25','我认为i是1，j是5，这种题你先想加加在前在后的运算顺序，然后在程序上运行一次看看结果，不对就好好理解下，另外，我也不知道对不对',4,'2016-05-06 15:51:13'),(50,'20','22','111',0,'2016-05-29 05:22:44'),(51,'18','27','1',0,'2016-08-23 03:50:47'),(52,'18','27','asda',0,'2016-08-23 03:50:54');
/*!40000 ALTER TABLE `comment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-08-09 17:37:18
