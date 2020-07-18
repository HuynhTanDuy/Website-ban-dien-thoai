-- MySQL dump 10.13  Distrib 5.7.30, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: shop_manage
-- ------------------------------------------------------
-- Server version	5.7.30-0ubuntu0.18.04.1

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
-- Table structure for table `Account`
--

DROP TABLE IF EXISTS `Account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Account` (
  `ID_Account` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `Password` smallint(50) DEFAULT NULL,
  `Email` varchar(255) DEFAULT NULL,
  `Full_Name` varchar(255) DEFAULT NULL,
  `Address` varchar(255) DEFAULT NULL,
  `SDT` bigint(20) DEFAULT NULL,
  `Access` tinyint(4) DEFAULT NULL,
  `Status` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Account`
--

LOCK TABLES `Account` WRITE;
/*!40000 ALTER TABLE `Account` DISABLE KEYS */;
INSERT INTO `Account` VALUES ('KH00001','DuyHuynh',123,'bintkltt@gmail.com','Duy Huynh','Ho Chi Minh',332725111,1,1),('PH04388','admin',123,'admin@gmail.com','Do Trung Hieu','Hai Phong',1213321897,1,1),('KH1594713902469','An',123,'an@gmail.com','An Nguyen','Ho Chi Minh',133234546,2,1),('KH1594714109450','Vinh',123,'vinh@gmail.com','Vinh Nguyen','Ho Chi Minh',2123456,2,1);
/*!40000 ALTER TABLE `Account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Category`
--

DROP TABLE IF EXISTS `Category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Category` (
  `ID_Category` varchar(250) DEFAULT NULL,
  `Name_Category` varchar(250) DEFAULT NULL,
  `Parent_Category` varchar(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Category`
--

LOCK TABLES `Category` WRITE;
/*!40000 ALTER TABLE `Category` DISABLE KEYS */;
INSERT INTO `Category` VALUES ('IP','IPhone','null'),('SS','SamSung','IP'),('Xi','Xiaomi','IP'),('Op','Oppo','IP'),('Vs','Vsmart','IP'),('Re','Realme','IP');
/*!40000 ALTER TABLE `Category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Invoice`
--

DROP TABLE IF EXISTS `Invoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Invoice` (
  `ID_Invoice` varchar(200) DEFAULT NULL,
  `ID_Account` varchar(200) DEFAULT NULL,
  `Shipping_Address` varchar(200) DEFAULT NULL,
  `Payment_Methods` varchar(200) DEFAULT NULL,
  `Purchase_Date` varchar(200) DEFAULT NULL,
  `Status_Order` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Invoice`
--

LOCK TABLES `Invoice` WRITE;
/*!40000 ALTER TABLE `Invoice` DISABLE KEYS */;
INSERT INTO `Invoice` VALUES ('MHD1594613512366','KH00001','Ho Chi Minh','Thanh toan khi giao hang','2020-07-13 11:11:52.404','1'),('MHD1595042819916','KH1594713902469','Ho Chi Minh','Thanh toan khi giao hang','2020-07-18 10:26:59.975','2');
/*!40000 ALTER TABLE `Invoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `InvoiceDetail`
--

DROP TABLE IF EXISTS `InvoiceDetail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `InvoiceDetail` (
  `ID_InvoiceDetail` varchar(200) DEFAULT NULL,
  `ID_Invoice` varchar(200) DEFAULT NULL,
  `ID_Product` varchar(200) DEFAULT NULL,
  `Quantity` varchar(200) DEFAULT NULL,
  `Price` varchar(200) DEFAULT NULL,
  `Sale` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `InvoiceDetail`
--

LOCK TABLES `InvoiceDetail` WRITE;
/*!40000 ALTER TABLE `InvoiceDetail` DISABLE KEYS */;
INSERT INTO `InvoiceDetail` VALUES ('1180645550','MHD1594613512366','5001','1','2990000','0'),('1180645550','MHD1594613512366','5002','1','2500000','0'),('1609953100','MHD1595042819916','5001','1','2990000','0'),('1609953100','MHD1595042819916','7002','1','12000000','0');
/*!40000 ALTER TABLE `InvoiceDetail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Product`
--

DROP TABLE IF EXISTS `Product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Product` (
  `ID_Product` smallint(6) DEFAULT NULL,
  `ID_Category` varchar(255) DEFAULT NULL,
  `Name_Product` varchar(255) DEFAULT NULL,
  `Image` varchar(255) DEFAULT NULL,
  `Quantity` varchar(100) DEFAULT NULL,
  `Describe` varchar(555) DEFAULT NULL,
  `Price` int(100) DEFAULT NULL,
  `Sale` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Product`
--

LOCK TABLES `Product` WRITE;
/*!40000 ALTER TABLE `Product` DISABLE KEYS */;
INSERT INTO `Product` VALUES (5001,'IP','IPhone 5','images/sanpham/ip_6_1.jpg','20','IPhone dep va tinh te, mau hong',2990000,0),(5002,'SS','Samsung J3 Galaxy','images/sanpham/ip_8_1.jpg','14','',2500000,0),(5003,'SS','Samsung J7','images/sanpham/ip_6_1.jpg','33','',1500000,0),(6001,'Xi','Redmi Note 8','images/sanpham/ip_7_3.jpg','12','',4900000,0),(6002,'Xi','Redmi 9 Pro','images/sanpham/ip_6_1.jpg','11','',5900000,0),(6003,'Xi','Mi Note 10','images/sanpham/ip_6_1.jpg','63','',6500000,0),(7001,'Vs','Vsmart 4','images/sanpham/ip_x_1.jpg','15','',10990000,0),(7002,'Vs','Vsmart 3','images/sanpham/ip_6_1.jpg','25','',12000000,0),(7003,'Re','Realme C3','images/sanpham/ip_6_1.jpg','0','',8990000,0),(8001,'IP','Iphone 8','images/sanpham/ip_8_1.jpg','50','',18990000,0),(8002,'Op','Oppo A92','images/sanpham/ip_6_1.jpg','100','',20000000,0);
/*!40000 ALTER TABLE `Product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-07-18 10:44:47
