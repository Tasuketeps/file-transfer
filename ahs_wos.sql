-- MySQL dump 10.13  Distrib 8.0.37, for Linux (x86_64)
--
-- Host: localhost    Database: ahs_wos
-- ------------------------------------------------------
-- Server version	8.0.37-0ubuntu0.24.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `baselines`
--

DROP TABLE IF EXISTS `baselines`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `baselines` (
  `baselineid` int NOT NULL AUTO_INCREMENT,
  `filename` varchar(255) NOT NULL,
  PRIMARY KEY (`baselineid`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `baselines`
--

LOCK TABLES `baselines` WRITE;
/*!40000 ALTER TABLE `baselines` DISABLE KEYS */;
INSERT INTO `baselines` VALUES (1,'first30policies.csv'),(2,'baseline2.csv'),(3,'test.csv'),(4,'30userrights.csv'),(5,'30policies.csv'),(6,'undefined.csv'),(7,'2policies.csv'),(8,'clientTest.csv');
/*!40000 ALTER TABLE `baselines` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `benchmarks`
--

DROP TABLE IF EXISTS `benchmarks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `benchmarks` (
  `benchmarkid` int NOT NULL AUTO_INCREMENT,
  `original_filename` varchar(255) NOT NULL,
  `csv_filename` varchar(255) NOT NULL,
  PRIMARY KEY (`benchmarkid`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `benchmarks`
--

LOCK TABLES `benchmarks` WRITE;
/*!40000 ALTER TABLE `benchmarks` DISABLE KEYS */;
INSERT INTO `benchmarks` VALUES (1,'CIS_Microsoft_Windows_11_Enterprise_Benchmark_v3.0.0.pdf','first page found!\nMicrosoft Windows 11 Enterprise.csv'),(2,'CIS_Microsoft_Windows_11_Enterprise_Benchmark_v3.0.0.pdf','Microsoft_Windows_11_Enterprise.csv'),(3,'CIS_Microsoft_Windows_Server_2019_Stand-alone_v1.0.0.pdf','Microsoft_Windows_Server_2019_Stand_-alone.csv'),(4,'CIS_Microsoft_Windows_Server_2019_Stand-alone_v1.0.0.pdf','Microsoft_Windows_Server_2019_Stand_-alone.csv'),(5,'CIS_Microsoft_Windows_11_Enterprise_Benchmark_v3.0.0.pdf','Microsoft_Windows_11_Enterprise.csv'),(6,'CIS_Microsoft_Windows_Server_2019_Stand-alone_v1.0.0.pdf','Microsoft_Windows_Server_2019_Stand_-alone.csv');
/*!40000 ALTER TABLE `benchmarks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `computers`
--

DROP TABLE IF EXISTS `computers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `computers` (
  `computerid` int NOT NULL AUTO_INCREMENT,
  `computer_name` varchar(255) NOT NULL,
  `ipaddress` varchar(15) NOT NULL,
  PRIMARY KEY (`computerid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `computers`
--

LOCK TABLES `computers` WRITE;
/*!40000 ALTER TABLE `computers` DISABLE KEYS */;
/*!40000 ALTER TABLE `computers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `scans`
--

DROP TABLE IF EXISTS `scans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `scans` (
  `scanid` int NOT NULL AUTO_INCREMENT,
  `scanned_filename` varchar(255) NOT NULL,
  `ipaddress` varchar(15) NOT NULL,
  `created_at` varchar(100) NOT NULL,
  `lastscan_at` varchar(100) NOT NULL,
  PRIMARY KEY (`scanid`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `scans`
--

LOCK TABLES `scans` WRITE;
/*!40000 ALTER TABLE `scans` DISABLE KEYS */;
INSERT INTO `scans` VALUES (1,'WinServer2019_192.168.126.145_2024-06-24_02-58-34.inf','192.168.126.145','2024:06:24T02:58:34Z','2024:06:24T02:58:34Z'),(2,'WinServer2019_192.168.126.145_2024-06-24_18-16-54.inf','192.168.126.145','2024:06:24T18:16:54Z','2024:06:24T18:16:54Z'),(3,'WinServer2019_192.168.126.145_2024-06-24_18-20-06.inf','192.168.126.145','2024:06:24T18:20:06Z','2024:06:24T18:20:06Z'),(4,'WinServer2019_192.168.126.145_2024-06-24_18-22-17.inf','192.168.126.145','2024:06:24T18:22:17Z','2024:06:24T18:22:17Z'),(5,'WinServer2019_192.168.126.145_2024-06-24_18-24-22.inf','192.168.126.145','2024:06:24T18:24:22Z','2024:06:24T18:24:22Z'),(6,'WinServer2019_192.168.126.145_2024-06-26_05-24-07.inf','192.168.126.145','2024:06:26T05:24:07Z','2024:06:26T05:24:07Z'),(7,'WinServer2019_192.168.126.145_2024-06-26_06-08-37.inf','192.168.126.145','2024:06:26T06:08:37Z','2024:06:26T06:08:37Z'),(8,'WinServer2019_192.168.126.145_2024-07-01_04-32-53.inf','192.168.126.145','2024:07:01T04:32:53Z','2024:07:01T04:32:53Z'),(9,'WinServer2019_192.168.126.145_2024-07-01_11-04-47.inf','192.168.126.145','2024:07:01T11:04:47Z','2024:07:01T11:04:47Z'),(10,'WinServer2019_192.168.126.145_2024-07-01_11-09-56.inf','192.168.126.145','2024:07:01T11:09:56Z','2024:07:01T11:09:56Z'),(11,'WinServer2019_192.168.126.145_2024-07-01_11-50-43.inf','192.168.126.145','2024:07:01T11:50:43Z','2024:07:01T11:50:43Z'),(12,'Client1_192.168.126.146_2024-07-01_11-50-44.inf','192.168.126.146','2024:07:01T11:50:44Z','2024:07:01T11:50:44Z'),(13,'WinServer2019_192.168.126.145_2024-07-01_11-51-12.inf','192.168.126.145','2024:07:01T11:51:12Z','2024:07:01T11:51:12Z'),(14,'Client1_192.168.126.146_2024-07-01_11-51-13.inf','192.168.126.146','2024:07:01T11:51:13Z','2024:07:01T11:51:13Z');
/*!40000 ALTER TABLE `scans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `userid` int NOT NULL AUTO_INCREMENT,
  `username` varchar(255) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(20) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`userid`),
  UNIQUE KEY `email_UNIQUE` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin1','admin@gmail.com','password','2024-06-13 09:30:05'),(2,'admin2','admin2@gmail.com','password','2024-06-21 06:20:40'),(3,'admin3','admin3@gmail.com','password','2024-06-21 06:51:39'),(4,'admin4','admin4@gmail.com','password','2024-06-21 07:49:14');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-07-04  2:58:05
