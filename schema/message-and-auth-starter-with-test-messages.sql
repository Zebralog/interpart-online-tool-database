-- MySQL dump 10.17  Distrib 10.3.22-MariaDB, for Linux (x86_64)
--
-- Host: localhost    Database: mean
-- ------------------------------------------------------
-- Server version	10.3.22-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES UTF8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Message`
--

DROP TABLE IF EXISTS `Message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `bell_id` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `message` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translations` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tags` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `location` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `timestamp` datetime DEFAULT NULL,
  `language` varchar(512) COLLATE utf8mb4_unicode_ci NOT NULL,
  `question` varchar(512) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (2,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat','{\"en\":\"External message!\",\"it\":\"Messaggio Interno!\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-10-21 08:58:46','de',NULL),(3,'BELL-7723427353','my message... my message... my message...','{\"de\":\"Deutsches Ipsum Dolor id latine Brezel complectitur pri, mea meliore denique Danke id. Elitr expetenda nam an, genau ei reque euismod assentior. Odio Fußballweltmeisterschaft iracundia ex pri. Ut vel Die Ärzte mandamus, quas natum adversarium ei 99 Luftballons diam minim honestatis\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-10-22 09:39:56','en',NULL),(4,'BELL-3219794234','external message!','{\"de\":\"Externe Nachricht!\",\"it\":\"Messaggio Interno!\"}','[\"external\",\"message\",\"test\"]','{\"lat\":45.2323,\"lng\":9.2323}','2020-10-22 10:24:23','en',NULL),(6,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi','{}',NULL,NULL,'2020-10-27 08:30:08','de',NULL),(7,'BELL-3219794234','message! message! message!','{\"de\":\"meine Stimme! meine Stimme! meine Stimme! meine Stimme!\"}',NULL,NULL,'2020-10-27 08:37:31','en',NULL),(8,'BELL-3219794234','Meine Stimme! Meine Stimme! \n\nMeine Stimme! Meine Stimme! Meine Stimme! Meine Stimme! \n\nMeine Stimme! Meine Stimme! Meine Stimme! ','{}',NULL,NULL,'2020-10-27 08:59:15','de',NULL),(10,'BELL-3219794234','masd samasmsamdsa adamsad sad sa','{}',NULL,NULL,'2020-11-04 08:25:29','de',NULL),(11,'BELL-3219794234','This is my message! This is my message! This is my message! This is my message! \n\nThis is my message! This is my message! This is my message! This is my message! This is my message! ','{}',NULL,NULL,'2020-11-04 08:52:29','de',NULL),(12,'BELL-7723427353','my last message!  my last message!  my last message! ','{}',NULL,NULL,'2020-11-04 08:58:07','de',NULL),(13,'BELL-3219794234','this should be on the other side...','{}',NULL,NULL,'2020-11-04 09:01:38','de',NULL),(14,'BELL-3219794234','asdad ad asdsa dsa d','{}',NULL,NULL,'2020-11-04 09:07:21','de',NULL),(15,'BELL-3219794234','d ad sad sa dsa dasd','{}',NULL,NULL,'2020-11-04 09:09:12','de',NULL),(16,'BELL-3219794234','asd ad adsad a d','{}',NULL,NULL,'2020-11-04 09:10:19','de',NULL),(17,'BELL-3219794234','asdsa da dsa dsa','{}',NULL,NULL,'2020-11-04 09:18:56','de',NULL),(18,'BELL-3219794234','asd da ad sa da','{}',NULL,NULL,'2020-11-04 09:20:31','de',NULL),(19,'BELL-3219794234','asd sadad','{}',NULL,NULL,'2020-11-04 09:34:53','de',NULL),(20,'BELL-3219794234','asdada','{}',NULL,NULL,'2020-11-04 09:36:30','de',NULL),(21,'BELL-3219794234','asd sa dsad','{}',NULL,NULL,'2020-11-04 09:37:31','de',NULL),(22,'BELL-3219794234','sas asda sa das dsa da','{}',NULL,NULL,'2020-11-04 09:40:55','de',NULL),(23,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi','{\"en\":\"Hello zebra log.\",\"it\":\"Ciao registro zebra.\",\"es\":\"Hola registro de cebra.\",\"fr\":\"Bonjour journal de zèbre.\",\"tr\":\"Merhaba zebra günlüğü.\",\"ar\":\"مرحبا سجل الحمار الوحشي.\",\"el\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"ru\":\"Привет, журнал зебры.\",\"uk\":\"Привіт зебра журнал.\"}',NULL,NULL,'2020-11-11 07:38:43','de',NULL),(24,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi','{\"en\":\"Hello zebra log.\",\"it\":\"Ciao registro zebra.\",\"es\":\"Hola registro de cebra.\",\"fr\":\"Bonjour journal de zèbre.\",\"tr\":\"Merhaba zebra günlüğü.\",\"ar\":\"مرحبا سجل الحمار الوحشي.\",\"el\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"ru\":\"Привет, журнал зебры.\",\"uk\":\"Привіт зебра журнал.\"}',NULL,NULL,'2020-11-11 07:39:16','de','How are you today, ζέβρα?');
/*!40000 ALTER TABLE `Message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `User`
--

DROP TABLE IF EXISTS `User`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `User` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `realm` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `emailVerified` tinyint(1) DEFAULT NULL,
  `verificationToken` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `registrationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `User`
--

LOCK TABLES `User` WRITE;
/*!40000 ALTER TABLE `User` DISABLE KEYS */;
INSERT INTO `User` VALUES ('bb3c7125-dbb9-495c-8b9d-51ef82cc4766','roccazzella@zebralog.de',NULL,'udk','administrator',1,'','2020-10-22 09:22:31'),('f231447c-09fd-4754-85cd-2946ba38cf37','bell1@interpart.org',NULL,'udk','bell1',1,'','2020-10-22 09:21:24'),('f859b96b-6d74-4016-8804-6a297a86452f','bell3@udk.de',NULL,'udk','bell3',1,'','2020-10-23 07:42:19');
/*!40000 ALTER TABLE `User` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `UserCredentials`
--

DROP TABLE IF EXISTS `UserCredentials`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `UserCredentials` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `userId` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `UserCredentials`
--

LOCK TABLES `UserCredentials` WRITE;
/*!40000 ALTER TABLE `UserCredentials` DISABLE KEYS */;
INSERT INTO `UserCredentials` VALUES ('07f2fdaf-ff9b-464a-907d-1406cd83114a','$2a$10$UtvTOF2tof0kkgC0O5l1cOOrauZcrqopesxhJgJuHXjrAc46rFvZW','bb3c7125-dbb9-495c-8b9d-51ef82cc4766'),('29c54980-563c-4946-be73-04816d5d29bc','$2a$10$maqtcbZHxF2kUk6LG/CK6.asTx5PM6drFVRr4CZ8bHNDODpddjU0a','f859b96b-6d74-4016-8804-6a297a86452f'),('7d092a52-a38f-47a5-be37-057c6b152936','$2a$10$25GfT4DPoB79Sdc.if1msemm0qZgHMHnKuIo.8WgsbrYUUC8dVESq','f231447c-09fd-4754-85cd-2946ba38cf37');
/*!40000 ALTER TABLE `UserCredentials` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11  6:42:59
