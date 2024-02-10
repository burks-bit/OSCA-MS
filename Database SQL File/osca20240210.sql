-- MySQL dump 10.13  Distrib 5.7.17, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: osca
-- ------------------------------------------------------
-- Server version	5.5.5-10.4.28-MariaDB

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
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `members`
--

DROP TABLE IF EXISTS `members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `members` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `suffix` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone_number` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `date_of_birth` date DEFAULT NULL,
  `emergency_contact_name` varchar(255) DEFAULT NULL,
  `emergency_contact_number` varchar(255) DEFAULT NULL,
  `blood_group` varchar(255) DEFAULT NULL,
  `marital_status` varchar(255) DEFAULT NULL,
  `is_veteran` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `members`
--

LOCK TABLES `members` WRITE;
/*!40000 ALTER TABLE `members` DISABLE KEYS */;
INSERT INTO `members` VALUES (1,'Account','Only','Sample',NULL,61,'Male','Address 1','123-456-7891','senior1@example.com','1953-02-10','Emergency Contact 1','987-654-3211','O+','Single',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(2,'Account','Only','Sample',NULL,62,'Female','Address 2','123-456-7892','senior2@example.com','1948-02-10','Emergency Contact 2','987-654-3212','AB+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(3,'Account','Only','Sample',NULL,80,'Male','Address 3','123-456-7893','senior3@example.com','1964-02-10','Emergency Contact 3','987-654-3213','A+','Widowed',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(4,'Account','Only','Sample',NULL,65,'Male','Address 4','123-456-7894','senior4@example.com','1942-02-10','Emergency Contact 4','987-654-3214','AB+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(5,'Account','Only','Sample',NULL,88,'Male','Address 5','123-456-7895','senior5@example.com','1964-02-10','Emergency Contact 5','987-654-3215','B+','Married',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(6,'Account','Only','Sample',NULL,89,'Female','Address 6','123-456-7896','senior6@example.com','1936-02-10','Emergency Contact 6','987-654-3216','A+','Married',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(7,'Account','Only','Sample',NULL,89,'Female','Address 7','123-456-7897','senior7@example.com','1957-02-10','Emergency Contact 7','987-654-3217','B+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(8,'Account','Only','Sample',NULL,83,'Male','Address 8','123-456-7898','senior8@example.com','1958-02-10','Emergency Contact 8','987-654-3218','B+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(9,'Account','Only','Sample',NULL,82,'Female','Address 9','123-456-7899','senior9@example.com','1937-02-10','Emergency Contact 9','987-654-3219','A+','Married',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(10,'Account','Only','Sample',NULL,68,'Male','Address 10','123-456-78910','senior10@example.com','1962-02-10','Emergency Contact 10','987-654-32110','A+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(11,'Account','Only','Sample',NULL,70,'Male','Address 11','123-456-78911','senior11@example.com','1952-02-10','Emergency Contact 11','987-654-32111','O+','Widowed',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(12,'Account','Only','Sample',NULL,89,'Male','Address 12','123-456-78912','senior12@example.com','1960-02-10','Emergency Contact 12','987-654-32112','A+','Married',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(13,'Account','Only','Sample',NULL,69,'Male','Address 13','123-456-78913','senior13@example.com','1952-02-10','Emergency Contact 13','987-654-32113','A+','Single',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(14,'Account','Only','Sample',NULL,65,'Male','Address 14','123-456-78914','senior14@example.com','1935-02-10','Emergency Contact 14','987-654-32114','A+','Single',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(15,'Account','Only','Sample',NULL,61,'Male','Address 15','123-456-78915','senior15@example.com','1957-02-10','Emergency Contact 15','987-654-32115','B+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(16,'Account','Only','Sample',NULL,90,'Female','Address 16','123-456-78916','senior16@example.com','1961-02-10','Emergency Contact 16','987-654-32116','O+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(17,'Account','Only','Sample',NULL,90,'Male','Address 17','123-456-78917','senior17@example.com','1941-02-10','Emergency Contact 17','987-654-32117','AB+','Single',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(18,'Account','Only','Sample',NULL,62,'Female','Address 18','123-456-78918','senior18@example.com','1942-02-10','Emergency Contact 18','987-654-32118','A+','Single',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(19,'Account','Only','Sample',NULL,71,'Female','Address 19','123-456-78919','senior19@example.com','1950-02-10','Emergency Contact 19','987-654-32119','O+','Married',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(20,'Account','Only','Sample',NULL,87,'Female','Address 20','123-456-78920','senior20@example.com','1936-02-10','Emergency Contact 20','987-654-32120','AB+','Widowed',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(21,'Account','Only','Sample',NULL,81,'Female','Address 21','123-456-78921','senior21@example.com','1946-02-10','Emergency Contact 21','987-654-32121','O+','Married',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(22,'Account','Only','Sample',NULL,68,'Female','Address 22','123-456-78922','senior22@example.com','1951-02-10','Emergency Contact 22','987-654-32122','A+','Single',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(23,'Account','Only','Sample',NULL,77,'Male','Address 23','123-456-78923','senior23@example.com','1934-02-10','Emergency Contact 23','987-654-32123','B+','Married',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(24,'Account','Only','Sample',NULL,65,'Female','Address 24','123-456-78924','senior24@example.com','1947-02-10','Emergency Contact 24','987-654-32124','B+','Single',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(25,'Account','Only','Sample',NULL,84,'Male','Address 25','123-456-78925','senior25@example.com','1957-02-10','Emergency Contact 25','987-654-32125','A+','Widowed',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(26,'Account','Only','Sample',NULL,61,'Female','Address 26','123-456-78926','senior26@example.com','1963-02-10','Emergency Contact 26','987-654-32126','O+','Single',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(27,'Account','Only','Sample',NULL,82,'Male','Address 27','123-456-78927','senior27@example.com','1936-02-10','Emergency Contact 27','987-654-32127','AB+','Married',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(28,'Account','Only','Sample',NULL,85,'Female','Address 28','123-456-78928','senior28@example.com','1934-02-10','Emergency Contact 28','987-654-32128','O+','Single',0,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(29,'Account','Only','Sample',NULL,62,'Male','Address 29','123-456-78929','senior29@example.com','1939-02-10','Emergency Contact 29','987-654-32129','AB+','Married',1,'2024-02-09 22:34:18','2024-02-09 22:34:18'),(30,'Account','Only','Sample',NULL,78,'Female','Address 30','123-456-78930','senior30@example.com','1960-02-10','Emergency Contact 30','987-654-32130','B+','Single',0,'2024-02-09 22:34:18','2024-02-09 22:34:18');
/*!40000 ALTER TABLE `members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2019_12_14_000001_create_personal_access_tokens_table',1),(6,'2024_02_10_003146_create_members_table',2);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) unsigned NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB AUTO_INCREMENT=143 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
INSERT INTO `personal_access_tokens` VALUES (37,'App\\Models\\User',7,'authToken','6164ce74087f676704078ea6c7c6e134aea440c390deba56f1416712f142be01','[\"*\"]',NULL,NULL,'2023-12-09 22:40:54','2023-12-09 22:40:54'),(38,'App\\Models\\User',8,'authToken','6439e2f30969b4b1d2951cd77777e576a12fa262c311bb03461f481420b574f6','[\"*\"]',NULL,NULL,'2023-12-09 22:41:33','2023-12-09 22:41:33'),(39,'App\\Models\\User',9,'authToken','e754aea8119654062edcae84e7088e5a63bf9b06e1ab23a8d78324b200b8dec9','[\"*\"]',NULL,NULL,'2023-12-09 22:43:29','2023-12-09 22:43:29'),(40,'App\\Models\\User',10,'authToken','439990b1f0d5ca2c9733137dc793d623fe4801e5359dfeb4136b0a739963632d','[\"*\"]',NULL,NULL,'2023-12-09 22:44:10','2023-12-09 22:44:10'),(41,'App\\Models\\User',11,'authToken','8344a0cf8a34002da60710f124f481ea0aea38e1d78b675fc78e2c81c7136a3e','[\"*\"]',NULL,NULL,'2023-12-09 22:45:29','2023-12-09 22:45:29'),(42,'App\\Models\\User',12,'authToken','f1e4e63e385c82e26373837280b9edb1a7d5f8b65d2f41a7063012089572ade8','[\"*\"]',NULL,NULL,'2023-12-09 22:45:59','2023-12-09 22:45:59'),(43,'App\\Models\\User',13,'authToken','1765eb526074fd4089830cbf90ef4f728e55a0ead2e881e42490ddc0e6fd751b','[\"*\"]',NULL,NULL,'2023-12-09 22:46:22','2023-12-09 22:46:22'),(44,'App\\Models\\User',14,'authToken','990e8533ef7d4cb3f801f7a8fd77cbffaacc9a2331a250edfd0adfcb67eee947','[\"*\"]',NULL,NULL,'2023-12-09 22:48:39','2023-12-09 22:48:39'),(45,'App\\Models\\User',15,'authToken','9cc569f8433eb91e603ded392da63231231ecbd9caa3055934c02ded8a42f30b','[\"*\"]',NULL,NULL,'2023-12-09 22:49:04','2023-12-09 22:49:04'),(46,'App\\Models\\User',15,'authToken','4d02a993d0f29fa06e7edd6ccf077bb9d89d82f878e3944e982a35bd4362f587','[\"*\"]',NULL,NULL,'2023-12-09 22:50:04','2023-12-09 22:50:04'),(47,'App\\Models\\User',15,'authToken','1406b6bb7cfc2471ac01d96907a10a6d806d5cc683daad1e6787bebb7090b1ff','[\"*\"]',NULL,NULL,'2023-12-09 22:50:27','2023-12-09 22:50:27'),(48,'App\\Models\\User',15,'authToken','b4aa8ad3312f0c637d67b08422fa47ffe40b6451bed59bbbffe884fc97a1825c','[\"*\"]',NULL,NULL,'2023-12-09 22:50:43','2023-12-09 22:50:43'),(49,'App\\Models\\User',15,'authToken','cadda3bfb36f42b5d2e878709a6d0849e21811713a3a11cfb70b49c81f86bdf3','[\"*\"]',NULL,NULL,'2023-12-09 22:50:52','2023-12-09 22:50:52'),(68,'App\\Models\\User',16,'authToken','7b1295df548c93b2e9f73fc20ea8480f1bdfc067402a6c99e17046135e8039bb','[\"*\"]',NULL,NULL,'2023-12-10 05:14:30','2023-12-10 05:14:30'),(69,'App\\Models\\User',17,'authToken','b8e8218ed1121453d64e0bd4c601d99dff82adf4c27e713a1c3faec99f45b86e','[\"*\"]',NULL,NULL,'2023-12-10 05:14:56','2023-12-10 05:14:56'),(70,'App\\Models\\User',18,'authToken','5a1d7b674525914463c61a52f5ed44aa70bd5fe29d3bd46a89f33b0f52244212','[\"*\"]',NULL,NULL,'2023-12-10 05:16:28','2023-12-10 05:16:28'),(77,'App\\Models\\User',19,'authToken','63ba4675d07715a167a12475b5fd4d3a6bb7392cab7c25a408a6ed913c1ac3fc','[\"*\"]',NULL,NULL,'2023-12-10 05:59:59','2023-12-10 05:59:59'),(78,'App\\Models\\User',19,'authToken','55d75e6a199111f24c420193f1f153dc5fd1a1dd22c8dc5cfc9b41c6b735d60c','[\"*\"]','2023-12-10 06:00:13',NULL,'2023-12-10 06:00:13','2023-12-10 06:00:13'),(79,'App\\Models\\User',19,'authToken','36fe1d2ed6ffc43f94ad4ea50c26fbd158388449b676ad52e24837335a4cb2f3','[\"*\"]',NULL,NULL,'2023-12-10 06:44:28','2023-12-10 06:44:28'),(80,'App\\Models\\User',19,'authToken','cf0cbcadb030ed8bbf61aa4c67ce4d3e26291489b8ea49aef72fc086dca8dac0','[\"*\"]',NULL,NULL,'2023-12-10 06:44:49','2023-12-10 06:44:49'),(81,'App\\Models\\User',19,'authToken','b6ea07726dec65cbe465b8464ba3669d7dd9d5239a91865d8af6de8a22408548','[\"*\"]',NULL,NULL,'2023-12-10 06:45:05','2023-12-10 06:45:05'),(82,'App\\Models\\User',19,'authToken','ad2f3e7d4aac15bb94133b0f609930b4b37d3565cace3b66d36e273256934719','[\"*\"]',NULL,NULL,'2023-12-10 06:45:08','2023-12-10 06:45:08'),(83,'App\\Models\\User',19,'authToken','dc2cda0ab127c4e3dd14a157b3ea444c047990b99cc573c14f1e5ffc62258b5b','[\"*\"]',NULL,NULL,'2023-12-10 06:45:19','2023-12-10 06:45:19'),(84,'App\\Models\\User',19,'authToken','8819a62c8b38126a4ebc0c91a6b9315e59fd2f17b2c72583034109b9eb6febf7','[\"*\"]',NULL,NULL,'2023-12-10 06:49:18','2023-12-10 06:49:18'),(85,'App\\Models\\User',19,'authToken','5b011afba828612bc6c49aefddefe401f162022419ece70060868fb82093a1a7','[\"*\"]',NULL,NULL,'2023-12-10 06:49:50','2023-12-10 06:49:50'),(86,'App\\Models\\User',19,'authToken','91d69157254a07a2d289528ff571226c458063369ae88d4036b3f792831b2d8a','[\"*\"]',NULL,NULL,'2023-12-10 06:51:57','2023-12-10 06:51:57'),(87,'App\\Models\\User',19,'authToken','f985e1a82e33d03201c8bed911dc4f2c2fb48038edf0d7562d6f042e50d24405','[\"*\"]',NULL,NULL,'2023-12-10 06:52:40','2023-12-10 06:52:40'),(88,'App\\Models\\User',19,'authToken','6c5bcbe261cbd90395f82d0dd50b64a69921c6ed0d1842ea20a3219670a04f50','[\"*\"]',NULL,NULL,'2023-12-10 06:53:00','2023-12-10 06:53:00'),(89,'App\\Models\\User',1,'authToken','416a1eb120fd52a74f31d815a7e109b1a832c0ad08345c54d7e936bd8fddf43b','[\"*\"]',NULL,NULL,'2023-12-25 23:13:29','2023-12-25 23:13:29'),(90,'App\\Models\\User',1,'authToken','4f3f10dd03802b3f855b4a59dcfc198cd175abdf02f187fe799d6b46edfe0c87','[\"*\"]',NULL,NULL,'2023-12-25 23:13:29','2023-12-25 23:13:29'),(91,'App\\Models\\User',20,'authToken','1889a64c8ef6c3353434a3b7849a9a5732a0a795e1ff5984ef0b053eaccfb157','[\"*\"]',NULL,NULL,'2024-02-02 14:52:42','2024-02-02 14:52:42'),(92,'App\\Models\\User',20,'authToken','64f783ffa1b538c92c21997ab7e49d127d173065ae6209085332c0cea5751da3','[\"*\"]',NULL,NULL,'2024-02-02 14:53:34','2024-02-02 14:53:34'),(93,'App\\Models\\User',20,'authToken','ab74c63139811ad2e9db8aec68479c7e8f27bbcf2b7001a70d06331341970af8','[\"*\"]',NULL,NULL,'2024-02-02 14:53:37','2024-02-02 14:53:37'),(94,'App\\Models\\User',20,'authToken','22dbd41e8d13ed56bc83b32277531a09894e3f2435b5dfc297faf5fd3d78d0fb','[\"*\"]',NULL,NULL,'2024-02-02 14:53:47','2024-02-02 14:53:47'),(95,'App\\Models\\User',20,'authToken','f0724fa1355973d33776fc56947a79ba311d16e9dfb619ebc5147c15847cba10','[\"*\"]',NULL,NULL,'2024-02-02 15:06:48','2024-02-02 15:06:48'),(96,'App\\Models\\User',20,'authToken','3e2f719ae4120b98b620a7ae341e6656da585127e6e7cf4dd63bc420ac8e1ce6','[\"*\"]',NULL,NULL,'2024-02-02 15:07:56','2024-02-02 15:07:56'),(97,'App\\Models\\User',20,'authToken','66ba71be49a44c82c0477f2701057f1d4973b7de69444262eac845428d7d1f1c','[\"*\"]',NULL,NULL,'2024-02-02 15:10:15','2024-02-02 15:10:15'),(98,'App\\Models\\User',20,'authToken','7562b24d679046e762916e503519e62c8e8b27e424a9215933fb93b89cb31e34','[\"*\"]',NULL,NULL,'2024-02-02 15:11:14','2024-02-02 15:11:14'),(99,'App\\Models\\User',20,'authToken','7ce7558391d76430661dc037ab1bf5b843bfecab5b7ca9d0f5d54c60c8fa4f4a','[\"*\"]',NULL,NULL,'2024-02-02 15:13:41','2024-02-02 15:13:41'),(100,'App\\Models\\User',20,'authToken','84b2c45298d12109b6d8802d48d4c703a58caef24981553e0780414a3721691f','[\"*\"]',NULL,NULL,'2024-02-02 15:16:30','2024-02-02 15:16:30'),(101,'App\\Models\\User',20,'authToken','46f1d3334be93667d9e0f03da4b253021e4e1c7f468c85bf355179fe40901baf','[\"*\"]',NULL,NULL,'2024-02-02 15:16:33','2024-02-02 15:16:33'),(102,'App\\Models\\User',20,'authToken','aa728f9392d0c7c614e5dd8f47444d324915a5343e1025ba55704b55cec236ad','[\"*\"]',NULL,NULL,'2024-02-02 15:16:57','2024-02-02 15:16:57'),(103,'App\\Models\\User',20,'authToken','f42151c169fa66ac5247686cc997319854a0d55d2cf8de7b9388121756158953','[\"*\"]',NULL,NULL,'2024-02-02 15:20:05','2024-02-02 15:20:05'),(104,'App\\Models\\User',1,'authToken','6e5f35498ecf8d8517e3b68d88e27fae8c0c5afd6727eb3d84383f1db1cdd373','[\"*\"]',NULL,NULL,'2024-02-09 11:59:04','2024-02-09 11:59:04'),(105,'App\\Models\\User',1,'authToken','f62025e43a93fdc7ab4dada965ffa89c1b514ca2706f534ebf2232d3bd3db909','[\"*\"]',NULL,NULL,'2024-02-09 12:00:46','2024-02-09 12:00:46'),(106,'App\\Models\\User',1,'authToken','69c11a3d4a70b5dc08ae9a964ffcfd8ab3688127df4384a56dad5ec920402e44','[\"*\"]',NULL,NULL,'2024-02-09 12:03:56','2024-02-09 12:03:56'),(107,'App\\Models\\User',1,'authToken','338ee6a08ecfdc655a08630a86d1d9248f3d3e09f96df6959245778ad0d028ab','[\"*\"]',NULL,NULL,'2024-02-09 12:04:19','2024-02-09 12:04:19'),(108,'App\\Models\\User',1,'authToken','b3e627c41c80e3194ac595cc97136880720ef79cd07ed7a3f2c61fa5fa0a0ef9','[\"*\"]',NULL,NULL,'2024-02-09 12:04:24','2024-02-09 12:04:24'),(109,'App\\Models\\User',1,'authToken','8c5d730dd7646c5d721c8007685434acb367860585b2fe83815ced01df2d946c','[\"*\"]',NULL,NULL,'2024-02-09 12:08:19','2024-02-09 12:08:19'),(110,'App\\Models\\User',1,'authToken','8d2da2c7fb82fd0b132ab3f89d2a57cf09eedae99b845bc07c24db9cee0a3408','[\"*\"]',NULL,NULL,'2024-02-09 12:09:45','2024-02-09 12:09:45'),(111,'App\\Models\\User',1,'authToken','907cbb22a56f6e8f0e8787b759664650948680d08f1b8fa442b13e520723f43f','[\"*\"]',NULL,NULL,'2024-02-09 12:10:05','2024-02-09 12:10:05'),(112,'App\\Models\\User',1,'authToken','eaec12ebb60cdef34b099bc69de71cd35f10d31a38088df0db2958895d435c8c','[\"*\"]',NULL,NULL,'2024-02-09 12:12:23','2024-02-09 12:12:23'),(113,'App\\Models\\User',1,'authToken','d2f4aa59d771370cd73e7b4f9b0e578a356f5deed755bd3c57049b9c7d8f0e6d','[\"*\"]',NULL,NULL,'2024-02-09 12:12:56','2024-02-09 12:12:56'),(114,'App\\Models\\User',1,'authToken','0fdcd5a51591409dd6ab758d5d2da9a6bde163102c99ccb0271794ceedf40292','[\"*\"]',NULL,NULL,'2024-02-09 12:23:11','2024-02-09 12:23:11'),(115,'App\\Models\\User',1,'authToken','180a64274945683f6dc8de9c78778a69b831de0d313daf43016b1c6b69614abe','[\"*\"]',NULL,NULL,'2024-02-09 12:25:16','2024-02-09 12:25:16'),(116,'App\\Models\\User',1,'authToken','a30afd3ba29fb5450a0c6aa1acc07aba3a2dae033da011bd238ce433b95d2c5a','[\"*\"]',NULL,NULL,'2024-02-09 12:26:09','2024-02-09 12:26:09'),(117,'App\\Models\\User',1,'authToken','68a9f9d128121bbde4d759ef8e05b79f7b9a13375bb842a71efd076907f1c262','[\"*\"]',NULL,NULL,'2024-02-09 12:28:39','2024-02-09 12:28:39'),(118,'App\\Models\\User',1,'authToken','4eec9041d4184fdd66666eebd682ccb756ceae6ce49a8697e98ab38bc68e20d8','[\"*\"]',NULL,NULL,'2024-02-09 12:29:21','2024-02-09 12:29:21'),(119,'App\\Models\\User',1,'authToken','961c431a8634924f8c098ae36029b822947f80dbb51322940fbcc8d7670bc826','[\"*\"]',NULL,NULL,'2024-02-09 12:29:36','2024-02-09 12:29:36'),(120,'App\\Models\\User',1,'authToken','dabfe4cf032f18db3fbe2a0a3c54d5dae2fbfaa2712de3bc5e2018aa49626318','[\"*\"]',NULL,NULL,'2024-02-09 12:30:42','2024-02-09 12:30:42'),(121,'App\\Models\\User',1,'authToken','4a5f4b3d383303ae52b8ff669ef11792c629ab76533abb7fecbd532e589c16dd','[\"*\"]',NULL,NULL,'2024-02-09 14:21:38','2024-02-09 14:21:38'),(122,'App\\Models\\User',1,'authToken','ee8c673adc2353ca007fd21ccf209107bcb315b0c6106b3e19316c115ff8e79e','[\"*\"]',NULL,NULL,'2024-02-09 14:22:32','2024-02-09 14:22:32'),(123,'App\\Models\\User',1,'authToken','b04adda06c3dbe99ea8f49807e2326fa178ced3147f4bfeaeb4b86390405097e','[\"*\"]',NULL,NULL,'2024-02-09 14:22:41','2024-02-09 14:22:41'),(124,'App\\Models\\User',1,'authToken','64de7c840bdf0db906d9e1e22cefe25c52302df2483dec5b3d60b35823b0c8f5','[\"*\"]',NULL,NULL,'2024-02-09 14:23:02','2024-02-09 14:23:02'),(125,'App\\Models\\User',1,'authToken','fa50d1843d17e3bad60f03eedae97b3ce29153f4ec2d1a279135e811c0c492e0','[\"*\"]',NULL,NULL,'2024-02-09 14:24:38','2024-02-09 14:24:38'),(126,'App\\Models\\User',1,'authToken','41200ab1ec30e478b15a66605186a262f9546510dbe8eec2d3c8e73e70dbd243','[\"*\"]',NULL,NULL,'2024-02-09 14:26:11','2024-02-09 14:26:11'),(127,'App\\Models\\User',1,'authToken','f2350be6fda015ef3e18a25f4deba0f16016bf1ded66beaf003cba6299911b10','[\"*\"]',NULL,NULL,'2024-02-09 14:27:50','2024-02-09 14:27:50'),(128,'App\\Models\\User',1,'authToken','ac511fc6bfb6c40d55c12d93d9b497267d1fe1355aac7bdca10019de1a9d9867','[\"*\"]',NULL,NULL,'2024-02-09 14:33:33','2024-02-09 14:33:33'),(129,'App\\Models\\User',1,'authToken','f3aa72bb05502a812deada6af2db91c099dc21397a049319ecdea983573f6121','[\"*\"]',NULL,NULL,'2024-02-09 14:36:22','2024-02-09 14:36:22'),(130,'App\\Models\\User',1,'authToken','b22d8c2d3c6f62ca386b8e9e83cce50dca2b1452158172f9a37152e17c7451ac','[\"*\"]',NULL,NULL,'2024-02-09 14:52:04','2024-02-09 14:52:04'),(131,'App\\Models\\User',1,'authToken','5312b1b54d482bcbd15eafb3ba8cae831fbebd8f9ab8de095d65d44961d673ab','[\"*\"]',NULL,NULL,'2024-02-09 14:53:39','2024-02-09 14:53:39'),(132,'App\\Models\\User',1,'authToken','8eb6ffc8ca8ca9d2700745b466c584fff085c9e6215a018c4a2608a620d2067b','[\"*\"]',NULL,NULL,'2024-02-09 14:54:56','2024-02-09 14:54:56'),(133,'App\\Models\\User',2,'authToken','3fbe5eeef34e71c90a47d665ec568e2315518f22226e38b4abc9bbbf2fa02d31','[\"*\"]',NULL,NULL,'2024-02-09 14:55:23','2024-02-09 14:55:23'),(134,'App\\Models\\User',2,'authToken','419b1f37ca4e1cf7471ac6c2031a63c4533ea1f3ce4f786ce2133c6182cc0076','[\"*\"]',NULL,NULL,'2024-02-09 14:56:21','2024-02-09 14:56:21'),(135,'App\\Models\\User',2,'authToken','a9a9c7edf7363eb1171d5aaddeb4aade4ef735f36bcc1892b13f9149618c0d29','[\"*\"]',NULL,NULL,'2024-02-09 14:57:59','2024-02-09 14:57:59'),(136,'App\\Models\\User',1,'authToken','c4e4a4b65e9f4624761273f0be4f2c2a8910ca31e838951a7867cde10b412cb7','[\"*\"]',NULL,NULL,'2024-02-09 15:00:07','2024-02-09 15:00:07'),(137,'App\\Models\\User',2,'authToken','04e60a93810f9b5babb2ce00bbbd6cb365eff89d2021518d99885aa2f3be2984','[\"*\"]',NULL,NULL,'2024-02-09 15:41:56','2024-02-09 15:41:56'),(138,'App\\Models\\User',1,'authToken','807962e98e9b44d1deb6024f60b8cb5e2c706bd8f13078c2da66a9e61c5ec795','[\"*\"]',NULL,NULL,'2024-02-09 15:43:06','2024-02-09 15:43:06'),(139,'App\\Models\\User',2,'authToken','7afff88484a62709d61125c7ca2a3cc809bc861274d1b86d4cc95d357c40b22f','[\"*\"]',NULL,NULL,'2024-02-09 15:43:16','2024-02-09 15:43:16'),(140,'App\\Models\\User',2,'authToken','562cfd23bfcc7e8b17a1811fdfd0ca43328845d795ae502bc2449388b13eeb02','[\"*\"]',NULL,NULL,'2024-02-09 16:18:49','2024-02-09 16:18:49'),(141,'App\\Models\\User',1,'authToken','cf8e1aaa2644782a00cd4fd66bcafb820de497ac4633078adabaa56014e20d85','[\"*\"]',NULL,NULL,'2024-02-09 16:43:48','2024-02-09 16:43:48'),(142,'App\\Models\\User',1,'authToken','d75acea517aaeba6724cfee910f0f59a675ee7d92dc8cd88b3623175b0cd86ac','[\"*\"]',NULL,NULL,'2024-02-09 23:20:36','2024-02-09 23:20:36');
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `role` int(11) NOT NULL DEFAULT 0,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `enabled` int(11) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_username_unique` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Ayden D\'Amore','admin',0,'2023-12-09 00:49:30',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','it7yYSxWVz','2023-12-09 00:49:30','2023-12-09 00:49:30'),(2,'Emanuel Lemke','mgmt',1,'2023-12-09 00:49:30',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','7ik5R0J8eu','2023-12-09 00:49:30','2023-12-09 00:49:30'),(3,'Emmanuel Heidenreich','member',2,'2023-12-09 00:49:30',0,'$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi','6ccpJ88rQA','2023-12-09 00:49:30','2023-12-09 00:49:30'),(19,'Garcia, Albert Serrano','bert',0,NULL,1,'$2y$10$fhFNXYy9Gmx98gpO6dZMnOe667yPoCYSIPY6f2m6Qa0UD19CPYY4S',NULL,'2023-12-10 05:59:59','2023-12-10 05:59:59'),(20,'Berting, Berting Berting','bertinglabra',1,NULL,1,'$2y$10$0e5yTdYe0HLdBP2zaHH.LeKc1VWUrwGWtoQafRP/Gs7wQUrF4I7w.',NULL,'2024-02-02 14:52:42','2024-02-02 14:52:42');
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

-- Dump completed on 2024-02-10 19:40:06
