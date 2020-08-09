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
-- Table structure for table `video`
--

DROP TABLE IF EXISTS `video`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `video` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `level` varchar(255) NOT NULL COMMENT '目录级别',
  `super_level` varchar(255) DEFAULT NULL COMMENT '父目录级别',
  `sub_num` varchar(255) NOT NULL COMMENT '子目录数目',
  `number` varchar(255) NOT NULL COMMENT '同级别序号',
  `video_name` varchar(255) NOT NULL COMMENT '视频名称',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `link_url` varchar(255) NOT NULL COMMENT '视频资源地址',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=59 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video`
--

LOCK TABLES `video` WRITE;
/*!40000 ALTER TABLE `video` DISABLE KEYS */;
INSERT INTO `video` VALUES (1,'1',NULL,'3','1','1. 认识Java','',''),(2,'2','1','0','1','1.1 Java概述','此视频着重介绍Java特性及Java优势和发展趋势','video_1_1.mp4'),(3,'2','1','0','2','1.2 Java开发环境','此视频介绍如何使用集成开发环境(IDE)开发Java程序','video_1_2.mp4'),(4,'2','1','0','3','1.3 编写第一个应用程序','开始你的第一个Java程序','video_1_3.mp4'),(5,'1',NULL,'8','2','2. Java基本语法','',''),(6,'2','2','0','1','2.1 Java的数据类型','Java的数据类型','video_2_1.mp4'),(7,'2','2','0','2','2.2 常量与变量','常量与变量','video_2_2.mp4'),(8,'2','2','0','3','2.3 运算符与表达式','运算符与表达式','video_2_3.mp4'),(9,'2','2','0','4','2.4 流程控制语句（1）','流程控制语句（1）','video_2_4.mp4'),(10,'2','2','0','5','2.5 流程控制语句（2）','流程控制语句（2）','video_2_5.mp4'),(11,'2','2','0','6','2.6 跳转语句','跳转语句','video_2_6.mp4'),(12,'2','2','0','7','2.7 一维数组','一维数组','video_2_7.mp4'),(13,'2','2','0','8','2.8 二维数组','二维数组','video_2_8.mp4'),(14,'1',NULL,'5','3','3 .Java的类','',''),(15,'2','3','0','1','3.1 类与对象','类与对象','video_3_1.mp4'),(16,'2','3','0','2','3.2 参数传递','参数传递','video_3_2.mp4'),(17,'2','3','0','3','3.3 方法的重载','方法的重载','video_3_3.mp4'),(18,'2','3','0','4','3.4 构造方法','构造方法','video_3_4.mp4'),(19,'2','3','0','5','3.5 静态成员','静态成员','video_3_5.mp4'),(20,'1',NULL,'7','4','4 .Java中扩展的类','',''),(21,'2','4','0','1','4.1 类的继承','类的继承','video_4_1.mp4'),(22,'2','4','0','2','4.2 方法的覆盖','方法的覆盖','video_4_2.mp4'),(23,'2','4','0','3','4.3 抽象类','抽象类','video_4_3.mp4'),(24,'2','4','0','4','4.4 接口基础','接口基础','video_4_4.mp4'),(25,'2','4','0','5','4.5 接口的高级应用','接口的高级应用','video_4_5.mp4'),(26,'2','4','0','6','4.6 包','包','video_4_6.mp4'),(27,'2','4','0','7','4.7 Java基础类库','Java基础类库','video_4_7.mp4'),(28,'1',NULL,'2','5','5 .Java中各种修饰符汇总','',''),(29,'2','5','0','1','5.1 访问控制符','访问控制符','video_5_1.mp4'),(30,'2','5','0','2','5.2 非访问控制符','非访问控制符','video_5_2.mp4'),(31,'1',NULL,'2','6','6 .异常处理','',''),(32,'2','6','0','1','6.1 异常处理类','异常处理类','video_6_1.mp4'),(33,'2','6','0','2','6.2 自定义异常类','自定义异常类','video_6_2.mp4'),(34,'1',NULL,'3','7','7 .数据的输入与输出','',''),(35,'2','7','0','1','7.1 字节流','字节流','video_7_1.mp4'),(36,'2','7','0','2','7.2 字符流','字符流','video_7_2.mp4'),(37,'2','7','0','3','7.3 随机存取文件','随机存取文件','video_7_3.mp4'),(38,'1',NULL,'3','8','8 .图形用户界面的建立GUI','',''),(39,'2','8','0','1','8.1 认识组件和容器','认识组件和容器','video_8_1.mp4'),(40,'2','8','0','2','8.2 创建组件的方法','创建组件的方法','video_8_2.mp4'),(41,'2','8','0','3','8.3 布局管理器','布局管理器','video_8_3.mp4'),(42,'1',NULL,'4','9','9 .事件处理','',''),(43,'2','9','0','1','9.1 委托事件模型','委托事件模型','video_9_1.mp4'),(44,'2','9','0','2','9.2 组件与事件处理（1）','组件与事件处理（1）','video_9_2.mp4'),(45,'2','9','0','3','9.3 组件与事件处理（2）','组件与事件处理（2）','video_9_3.mp4'),(46,'2','9','0','4','9.4 适配器类','适配器类','video_9_4.mp4'),(47,'1',NULL,'4','10','10 .扩展的GUI','',''),(48,'2','10','0','1','10.1 菜单','菜单','video_10_1.mp4'),(49,'2','10','0','2','10.2 对话框(颜色选择对话框)','对话框（颜色选择对话框）','video_10_2.mp4'),(50,'2','10','0','3','10.3 文件选择框','文件选择框','video_10_3.mp4'),(51,'2','10','0','4','10.4 工具栏','工具栏','video_10_4.mp4'),(52,'1',NULL,'3','11','11 .多线程','',''),(53,'2','11','0','1','11.1 认识线程','认识线程','video_11_1.mp4'),(54,'2','11','0','2','11.2 用Thread类创建线程','用Thread类创建线程','video_11_2.mp4'),(55,'2','11','0','3','11.3 用Runnable接口创建线程','用Runnable接口创建线程','video_11_3.mp4'),(56,'1',NULL,'2','12','12 .小程序','',''),(57,'2','12','0','1','12.1 小程序的工作原理','小程序的工作原理','video_12_1.mp4'),(58,'2','12','0','2','12.2 小程序编程应用','小程序编程应用','video_12_2.mp4');
/*!40000 ALTER TABLE `video` ENABLE KEYS */;
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
