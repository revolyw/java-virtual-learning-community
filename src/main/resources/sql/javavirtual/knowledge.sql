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
-- Table structure for table `knowledge`
--

DROP TABLE IF EXISTS `knowledge`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `knowledge` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `level` varchar(255) NOT NULL COMMENT '目录级别',
  `super_level` varchar(255) DEFAULT NULL COMMENT '父目录级别',
  `sub_num` varchar(255) NOT NULL COMMENT '子目录数目',
  `number` varchar(255) NOT NULL COMMENT '同级别序号',
  `description` varchar(255) NOT NULL COMMENT '描述',
  `content` text COMMENT '具体内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `knowledge`
--

LOCK TABLES `knowledge` WRITE;
/*!40000 ALTER TABLE `knowledge` DISABLE KEYS */;
INSERT INTO `knowledge` VALUES (1,'1',NULL,'3','1','1. 认识Java',''),(2,'2','1','0','1','1.1 Java概述','1'),(3,'2','1','0','2','1.2 Java开发环境','2'),(4,'2','1','0','3','1.3 编写第一个Java程序','1'),(5,'1',NULL,'8','2','2. Java基本语法',''),(6,'2','2','0','1','2.1 Java的数据类型','5'),(7,'2','2','0','2','2.2 常量与变量','4'),(8,'2','2','0','3','2.3 运算符与表达式','3'),(9,'2','2','0','4','2.4 流程控制语句（1）','6'),(10,'2','2','0','5','2.5 流程控制语句（2）','1'),(11,'2','2','0','6','2.6 跳转语句','1'),(12,'2','2','0','7','2.7 一维数组','1'),(13,'2','2','0','8','2.8 二维数组','1'),(14,'1',NULL,'5','3','3. Java的类',''),(15,'2','3','0','1','3.1 类与对象','7'),(16,'2','3','0','2','3.2 参数传递','8'),(17,'2','3','0','3','3.3 方法的重载','9'),(18,'2','3','0','4','3.4 构造方法','1'),(19,'2','3','0','5','3.5 静态成员','1'),(20,'1',NULL,'7','4','4. Java中扩展的类',''),(21,'2','4','0','1','4.1 类的继承','10'),(22,'2','4','0','2','4.2 方法的覆盖','11'),(23,'2','4','0','3','4.3 抽象类','12'),(24,'2','4','0','4','4.4 接口基础','13'),(25,'2','4','0','5','4.5 接口的高级应用','14'),(26,'2','4','0','6','4.6 包','1'),(27,'2','4','0','7','4.7 Java基础类库','1'),(28,'1',NULL,'2','5','5. Java中各种修饰符汇总',''),(29,'2','5','0','1','5.1 访问控制符','15'),(30,'2','5','0','2','5.2 非访问控制符','16'),(31,'1',NULL,'2','6','6. 异常处理',''),(32,'2','6','0','1','6.1 异常处理类','17'),(33,'2','6','0','2','6.2 自定义异常类','18'),(34,'1',NULL,'3','7','7. 数据的输入与输出',''),(35,'2','7','0','1','7.1 字符流','19'),(36,'2','7','0','2','7.2 字节流','20'),(37,'2','7','0','3','7.3 随机存取文件','21'),(38,'1',NULL,'4','8','8. 图形用户界面的建立GUI',''),(39,'2','8','0','1','8.1 认识组件和容器','22'),(40,'2','8','0','2','8.2 创建组件的方法','23'),(41,'2','8','0','3','8.3 布局管理器','24'),(42,'2','8','0','4','8.4 向窗口添加菜单','25'),(43,'1',NULL,'5','9','9. 事件处理',''),(44,'2','9','0','1','9.1 委托事件模型','26'),(45,'2','9','0','2','9.2 组件与事件处理（1）','27'),(46,'2','9','0','3','9.3 组件与事件处理（2）','28'),(47,'2','9','0','4','9.4 适配器类','29'),(48,'2','9','0','5','9.5工具栏','30'),(49,'1',NULL,'4','10','10. 扩展的GUI',''),(50,'2','10','0','1','10.1 菜单','31'),(51,'2','10','0','2','10.2 对话框','32'),(52,'2','10','0','3','10.3 文件选择框','33'),(53,'2','10','0','4','10.4 工具栏','1'),(54,'1',NULL,'3','11','11. 多线程',''),(55,'2','11','0','1','11.1 认识线程','1'),(56,'2','11','0','2','11.2 用Thread类创建线程','1'),(57,'2','11','0','3','11.3 用Runnable接口创建线程','1'),(58,'1',NULL,'2','12','12. 小程序',''),(59,'2','12','0','1','12.1 小程序的工作原理','1'),(60,'2','12','0','2','12.2 小程序编程应用','1');
/*!40000 ALTER TABLE `knowledge` ENABLE KEYS */;
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
