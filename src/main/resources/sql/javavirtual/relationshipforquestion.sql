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
-- Table structure for table `relationshipforquestion`
--

DROP TABLE IF EXISTS `relationshipforquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationshipforquestion` (
  `id` bigint(11) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `sectionId` varchar(255) NOT NULL COMMENT '章节号',
  `qtype` varchar(255) NOT NULL COMMENT '题目类型；选择：xuanze,填空：tiankong',
  `qId` varchar(255) NOT NULL COMMENT '外键：题id',
  `qNumber` varchar(255) DEFAULT NULL COMMENT '本章节同类题型的唯一编号',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=333 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationshipforquestion`
--

LOCK TABLES `relationshipforquestion` WRITE;
/*!40000 ALTER TABLE `relationshipforquestion` DISABLE KEYS */;
INSERT INTO `relationshipforquestion` VALUES (1,'1','xuanze','1','1'),(2,'1','xuanze','2','2'),(3,'1','xuanze','3','3'),(4,'1','xuanze','4','4'),(5,'1','xuanze','5','5'),(6,'1','xuanze','6','6'),(7,'1','xuanze','7','7'),(8,'1','xuanze','8','8'),(9,'1','xuanze','9','9'),(10,'1','xuanze','10','10'),(11,'1','xuanze','11','11'),(12,'2','xuanze','12','1'),(13,'2','xuanze','13','2'),(14,'2','xuanze','14','3'),(15,'2','xuanze','15','4'),(16,'2','xuanze','16','5'),(17,'2','xuanze','17','6'),(18,'2','xuanze','18','7'),(19,'2','xuanze','19','8'),(20,'2','xuanze','20','9'),(21,'2','xuanze','21','10'),(22,'2','xuanze','22','11'),(23,'2','xuanze','23','12'),(24,'2','xuanze','24','13'),(25,'2','xuanze','25','14'),(26,'2','xuanze','26','15'),(27,'2','xuanze','27','16'),(28,'2','xuanze','28','17'),(29,'2','xuanze','29','18'),(30,'2','xuanze','30','19'),(31,'2','xuanze','31','20'),(32,'2','xuanze','32','21'),(33,'2','xuanze','33','22'),(34,'2','xuanze','34','23'),(35,'2','xuanze','35','24'),(36,'2','xuanze','36','25'),(37,'2','xuanze','37','26'),(38,'2','xuanze','38','27'),(39,'2','xuanze','39','28'),(40,'2','xuanze','40','29'),(41,'2','xuanze','41','30'),(42,'2','xuanze','42','31'),(43,'2','xuanze','43','32'),(44,'2','xuanze','44','33'),(45,'2','xuanze','45','34'),(46,'2','xuanze','46','35'),(47,'2','xuanze','47','36'),(48,'2','xuanze','48','37'),(49,'2','xuanze','49','38'),(50,'2','xuanze','50','39'),(51,'2','xuanze','51','40'),(52,'2','xuanze','52','41'),(53,'2','xuanze','53','42'),(54,'2','xuanze','54','43'),(55,'2','xuanze','55','44'),(56,'2','xuanze','56','45'),(57,'2','xuanze','57','46'),(58,'2','xuanze','58','47'),(59,'2','xuanze','59','48'),(60,'2','xuanze','60','49'),(61,'2','xuanze','61','50'),(62,'2','xuanze','62','51'),(63,'2','xuanze','63','52'),(64,'2','xuanze','64','53'),(65,'2','xuanze','65','54'),(66,'2','xuanze','66','55'),(67,'2','xuanze','67','56'),(68,'2','xuanze','68','57'),(69,'2','xuanze','69','58'),(70,'3','xuanze','70','1'),(71,'3','xuanze','71','2'),(72,'3','xuanze','72','3'),(73,'3','xuanze','73','4'),(74,'3','xuanze','74','5'),(75,'3','xuanze','75','6'),(76,'3','xuanze','76','7'),(77,'3','xuanze','77','8'),(78,'3','xuanze','78','9'),(79,'3','xuanze','79','10'),(80,'3','xuanze','80','11'),(81,'3','xuanze','81','12'),(82,'3','xuanze','82','13'),(83,'3','xuanze','83','14'),(84,'3','xuanze','84','15'),(85,'3','xuanze','85','16'),(86,'3','xuanze','86','17'),(87,'3','xuanze','87','18'),(88,'3','xuanze','88','19'),(89,'3','xuanze','89','20'),(90,'3','xuanze','90','21'),(91,'3','xuanze','91','22'),(92,'3','xuanze','92','23'),(93,'3','xuanze','93','24'),(94,'3','xuanze','94','25'),(95,'4','xuanze','95','1'),(96,'4','xuanze','96','2'),(97,'4','xuanze','97','3'),(98,'4','xuanze','98','4'),(99,'4','xuanze','99','5'),(100,'4','xuanze','100','6'),(101,'4','xuanze','101','7'),(102,'4','xuanze','102','8'),(103,'4','xuanze','103','9'),(104,'4','xuanze','104','10'),(105,'4','xuanze','105','11'),(106,'4','xuanze','106','12'),(107,'4','xuanze','107','13'),(108,'4','xuanze','108','14'),(109,'4','xuanze','109','15'),(110,'4','xuanze','110','16'),(111,'4','xuanze','111','17'),(112,'4','xuanze','112','18'),(113,'4','xuanze','113','19'),(114,'4','xuanze','114','20'),(115,'4','xuanze','115','21'),(116,'4','xuanze','116','22'),(117,'4','xuanze','117','23'),(118,'5','xuanze','118','1'),(119,'5','xuanze','119','2'),(120,'5','xuanze','120','3'),(121,'5','xuanze','121','4'),(122,'5','xuanze','122','5'),(123,'6','xuanze','123','1'),(124,'6','xuanze','124','2'),(125,'6','xuanze','125','3'),(126,'6','xuanze','126','4'),(127,'6','xuanze','127','5'),(128,'6','xuanze','128','6'),(129,'6','xuanze','129','7'),(130,'6','xuanze','130','8'),(131,'6','xuanze','131','9'),(132,'6','xuanze','132','10'),(133,'6','xuanze','133','11'),(134,'6','xuanze','134','12'),(135,'6','xuanze','135','13'),(136,'6','xuanze','136','14'),(137,'6','xuanze','137','15'),(138,'6','xuanze','138','16'),(139,'6','xuanze','139','17'),(140,'6','xuanze','140','18'),(141,'6','xuanze','141','19'),(142,'7','xuanze','142','1'),(143,'7','xuanze','143','2'),(144,'7','xuanze','144','3'),(145,'7','xuanze','145','4'),(146,'7','xuanze','146','5'),(147,'7','xuanze','147','6'),(148,'7','xuanze','148','7'),(149,'7','xuanze','149','8'),(150,'7','xuanze','150','9'),(151,'7','xuanze','151','10'),(152,'7','xuanze','152','11'),(153,'7','xuanze','153','12'),(154,'7','xuanze','154','13'),(155,'7','xuanze','155','14'),(156,'7','xuanze','156','15'),(157,'7','xuanze','157','16'),(158,'7','xuanze','158','17'),(159,'7','xuanze','159','18'),(160,'7','xuanze','160','19'),(161,'7','xuanze','161','20'),(162,'7','xuanze','162','21'),(163,'7','xuanze','163','22'),(164,'7','xuanze','164','23'),(165,'8','xuanze','165','1'),(166,'8','xuanze','166','2'),(167,'8','xuanze','167','3'),(168,'8','xuanze','168','4'),(169,'8','xuanze','169','5'),(170,'8','xuanze','170','6'),(171,'8','xuanze','171','7'),(172,'8','xuanze','172','8'),(173,'8','xuanze','173','9'),(174,'8','xuanze','174','10'),(175,'8','xuanze','175','11'),(176,'9','xuanze','176','1'),(177,'10','xuanze','177','1'),(178,'10','xuanze','178','2'),(179,'10','xuanze','179','3'),(180,'10','xuanze','180','4'),(181,'10','xuanze','181','5'),(182,'10','xuanze','182','6'),(183,'10','xuanze','183','7'),(184,'10','xuanze','184','8'),(185,'10','xuanze','185','9'),(186,'10','xuanze','186','10'),(187,'1','tiankong','1','1'),(188,'1','tiankong','2','2'),(189,'1','tiankong','3','3'),(190,'1','tiankong','4','4'),(191,'1','tiankong','5','5'),(192,'1','tiankong','6','6'),(193,'1','tiankong','7','7'),(194,'1','tiankong','8','8'),(195,'1','tiankong','9','9'),(196,'1','tiankong','10','10'),(197,'2','tiankong','11','1'),(198,'2','tiankong','12','2'),(199,'2','tiankong','13','3'),(200,'2','tiankong','14','4'),(201,'2','tiankong','15','5'),(202,'2','tiankong','16','6'),(203,'2','tiankong','17','7'),(204,'2','tiankong','18','8'),(205,'2','tiankong','19','9'),(206,'2','tiankong','20','10'),(207,'2','tiankong','21','11'),(208,'2','tiankong','22','12'),(209,'2','tiankong','23','13'),(210,'2','tiankong','24','14'),(211,'2','tiankong','25','15'),(212,'2','tiankong','26','16'),(213,'2','tiankong','27','17'),(214,'2','tiankong','28','18'),(215,'2','tiankong','29','19'),(216,'2','tiankong','30','20'),(217,'2','tiankong','31','21'),(218,'2','tiankong','32','22'),(219,'2','tiankong','33','23'),(220,'2','tiankong','34','24'),(221,'2','tiankong','35','25'),(222,'2','tiankong','36','26'),(223,'2','tiankong','37','27'),(224,'2','tiankong','38','28'),(225,'2','tiankong','39','29'),(226,'2','tiankong','40','30'),(227,'2','tiankong','41','31'),(228,'2','tiankong','42','32'),(229,'2','tiankong','43','33'),(230,'2','tiankong','44','34'),(231,'2','tiankong','45','35'),(232,'3','tiankong','46','1'),(233,'3','tiankong','47','2'),(234,'3','tiankong','48','3'),(235,'3','tiankong','49','4'),(236,'3','tiankong','50','5'),(237,'3','tiankong','51','6'),(238,'3','tiankong','52','7'),(239,'3','tiankong','53','8'),(240,'3','tiankong','54','9'),(241,'3','tiankong','55','10'),(242,'3','tiankong','56','11'),(243,'3','tiankong','57','12'),(244,'3','tiankong','58','13'),(245,'3','tiankong','59','14'),(246,'3','tiankong','60','15'),(247,'3','tiankong','61','16'),(248,'3','tiankong','62','17'),(249,'3','tiankong','63','18'),(250,'3','tiankong','64','19'),(251,'3','tiankong','65','20'),(252,'3','tiankong','66','21'),(253,'3','tiankong','67','22'),(254,'3','tiankong','68','23'),(255,'3','tiankong','69','24'),(256,'3','tiankong','70','25'),(257,'3','tiankong','71','26'),(258,'3','tiankong','72','27'),(259,'3','tiankong','73','28'),(260,'3','tiankong','74','29'),(261,'3','tiankong','75','30'),(262,'3','tiankong','76','31'),(263,'3','tiankong','77','32'),(264,'3','tiankong','78','33'),(265,'3','tiankong','79','34'),(266,'3','tiankong','80','35'),(267,'3','tiankong','81','36'),(268,'3','tiankong','82','37'),(269,'3','tiankong','83','38'),(270,'3','tiankong','84','39'),(271,'3','tiankong','85','40'),(272,'3','tiankong','86','41'),(273,'3','tiankong','87','42'),(274,'4','tiankong','88','1'),(275,'4','tiankong','89','2'),(276,'4','tiankong','90','3'),(277,'4','tiankong','91','4'),(278,'4','tiankong','92','5'),(279,'4','tiankong','93','6'),(280,'4','tiankong','94','7'),(281,'4','tiankong','95','8'),(282,'4','tiankong','96','9'),(283,'4','tiankong','97','10'),(284,'4','tiankong','98','11'),(285,'4','tiankong','99','12'),(286,'4','tiankong','100','13'),(287,'4','tiankong','101','14'),(288,'4','tiankong','102','15'),(289,'4','tiankong','103','16'),(290,'4','tiankong','104','17'),(291,'4','tiankong','105','18'),(292,'4','tiankong','106','19'),(293,'4','tiankong','107','20'),(294,'4','tiankong','108','21'),(295,'4','tiankong','109','22'),(296,'4','tiankong','110','23'),(297,'4','tiankong','111','24'),(298,'4','tiankong','112','25'),(299,'4','tiankong','113','26'),(300,'4','tiankong','114','27'),(301,'4','tiankong','115','28'),(302,'4','tiankong','116','29'),(303,'5','tiankong','117','1'),(304,'6','tiankong','118','1'),(305,'6','tiankong','119','2'),(306,'6','tiankong','120','3'),(307,'6','tiankong','121','4'),(308,'6','tiankong','122','5'),(309,'6','tiankong','123','6'),(310,'6','tiankong','124','7'),(311,'6','tiankong','125','8'),(312,'6','tiankong','126','9'),(313,'6','tiankong','127','10'),(314,'6','tiankong','128','11'),(315,'6','tiankong','129','12'),(316,'6','tiankong','130','13'),(317,'7','tiankong','131','1'),(318,'7','tiankong','132','2'),(319,'7','tiankong','133','3'),(320,'7','tiankong','134','4'),(321,'7','tiankong','135','5'),(322,'7','tiankong','136','6'),(323,'7','tiankong','137','7'),(324,'7','tiankong','138','8'),(325,'8','tiankong','139','1'),(326,'8','tiankong','140','2'),(327,'8','tiankong','141','3'),(328,'9','tiankong','142','1'),(329,'9','tiankong','143','2'),(330,'9','tiankong','144','3'),(331,'9','tiankong','145','4'),(332,'10','tiankong','146','1');
/*!40000 ALTER TABLE `relationshipforquestion` ENABLE KEYS */;
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