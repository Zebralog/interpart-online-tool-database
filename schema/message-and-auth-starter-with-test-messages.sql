-- MariaDB dump 10.17  Distrib 10.4.15-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: interpart
-- ------------------------------------------------------
-- Server version	10.4.15-MariaDB-1:10.4.15+maria~buster-log

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
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
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Message`
--

LOCK TABLES `Message` WRITE;
/*!40000 ALTER TABLE `Message` DISABLE KEYS */;
INSERT INTO `Message` VALUES (2,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat','{\"en\":\"External message!\",\"it\":\"Messaggio Interno!\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-10-21 08:58:46','de',NULL),(3,'BELL-7723427353','my message... my message... my message...','{\"de\":\"Deutsches Ipsum Dolor id latine Brezel complectitur pri, mea meliore denique Danke id. Elitr expetenda nam an, genau ei reque euismod assentior. Odio Fußballweltmeisterschaft iracundia ex pri. Ut vel Die Ärzte mandamus, quas natum adversarium ei 99 Luftballons diam minim honestatis\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-10-22 09:39:56','en',NULL),(4,'BELL-3219794234','external message!','{\"de\":\"Externe Nachricht!\",\"it\":\"Messaggio Interno!\"}','[\"external\",\"message\",\"test\"]','{\"lat\":45.2323,\"lng\":9.2323}','2020-10-22 10:24:23','en',NULL),(6,'BELL-3219794234','At vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi','{}',NULL,NULL,'2020-10-27 08:30:08','de',NULL),(7,'BELL-3219794234','message! message! message!','{\"de\":\"meine Stimme! meine Stimme! meine Stimme! meine Stimme!\"}',NULL,NULL,'2020-10-27 08:37:31','en',NULL),(8,'BELL-3219794234','Meine Stimme! Meine Stimme! \n\nMeine Stimme! Meine Stimme! Meine Stimme! Meine Stimme! \n\nMeine Stimme! Meine Stimme! Meine Stimme! ','{}',NULL,NULL,'2020-10-27 08:59:15','de',NULL),(9,'BELL-3219794234','It\'s my opinion that my opinion is quite opinionated. Should an opinionated opinioner\'s opinion be opinated by un-opinated opinioners?','{}',NULL,NULL,'2020-10-28 09:20:01','de',NULL),(12,'BELL-7723427353','The situation is complex and cannot be faced too hastily.','{}',NULL,NULL,'2020-10-28 09:31:47','de',NULL),(15,'BELL-3219794234','I\'m quite confuse at the moment.','{}',NULL,NULL,'2020-10-28 09:41:05','de',NULL),(16,'BELL-7723427353','...I cannot find the words...','{}',NULL,NULL,'2020-10-28 09:42:11','de',NULL),(19,'BELL-3219794234','very important and useful information.\n\nvery important and useful information.very important and useful information.','{}',NULL,NULL,'2020-10-28 10:35:40','de',NULL),(22,'BELL-7723427353','I need advice to navigate this issue.','{}',NULL,NULL,'2020-10-28 10:42:13','de',NULL),(25,'BELL-7723427353','after years of thinking I now know the solution!\nWe just have to consid','{}',NULL,NULL,'2020-10-28 10:50:19','de',NULL),(26,'BELL-7723427353','message 123. message 123.','{}',NULL,NULL,'2020-10-28 11:01:37','de',NULL),(27,'BELL-7723427353','Important message. Important message. ','{}',NULL,NULL,'2020-10-29 08:03:21','de',NULL),(28,'BELL-7723427353','another message.','{}',NULL,NULL,'2020-10-29 08:04:28','de',NULL),(29,'BELL-3219794234','Ich denke, dass das ist sehr wichtig.','{}',NULL,NULL,'2020-10-29 08:12:52','de',NULL),(30,'BELL-7723427353','Ich bin nicht so zufrieden.','{}',NULL,NULL,'2020-10-29 08:18:02','de',NULL),(31,'BELL-3219794234','This is not easy to solve or understand, we need more discussion and general information.','{}',NULL,NULL,'2020-10-29 08:31:22','de',NULL),(32,'BELL-3219794234','I think we are already seeing good progress on this issue.','{}',NULL,NULL,'2020-10-29 08:40:42','de',NULL),(33,'BELL-7723427353','I\'m confused.... we need better information on this issue. ','{}',NULL,NULL,'2020-10-29 08:45:38','de',NULL),(34,'BELL-3219794234','...that is a very good workaround for the problem! well done!','{}',NULL,NULL,'2020-10-29 08:46:39','de',NULL),(35,'BELL-7723427353','Ich fühle mich hier sicher.','{}',NULL,NULL,'2020-10-29 13:55:27','de',NULL),(36,'BELL-7723427353','Bodenbeläge sind wichtig!','{}',NULL,NULL,'2020-10-30 18:02:36','de',NULL),(37,'BELL-7723427353','Hooray Zebrastreifen!','{}',NULL,NULL,'2020-11-03 07:20:32','de',NULL),(38,'BELL-7723427353','Cool','{}',NULL,NULL,'2020-11-03 11:49:04','de',NULL),(39,'BELL-7723427353','Licht ist sehr wichtig für meine gefühlte Sicherheit, wenn ich mich in der Stadt bewege','{}',NULL,NULL,'2020-11-03 11:49:28','de',NULL),(40,'BELL-7723427353','Test','{}',NULL,NULL,'2020-11-03 11:49:49','de',NULL),(41,'BELL-7723427353','Licht ist für die Orientierung in einer Stadt besonders relevant\n','{}',NULL,NULL,'2020-11-03 11:50:32','de',NULL),(42,'BELL-7723427353','Sehe ich genau so.','{}',NULL,NULL,'2020-11-03 11:50:48','de',NULL),(43,'BELL-7723427353','Test.','{}',NULL,NULL,'2020-11-03 11:52:25','de',NULL),(44,'BELL-7723427353','sfdg','{}',NULL,NULL,'2020-11-03 11:53:24','de',NULL),(45,'BELL-7723427353','Bruno','{}',NULL,NULL,'2020-11-03 11:56:11','de',NULL),(46,'BELL-3219794234','sdgf','{}',NULL,NULL,'2020-11-03 11:57:13','de',NULL),(47,'BELL-7723427353','Test.','{}',NULL,NULL,'2020-11-03 11:57:36','de',NULL),(48,'BELL-3219794234','sdgs\n','{}',NULL,NULL,'2020-11-03 11:57:43','de',NULL),(49,'BELL-3219794234','sdg\n','{}',NULL,NULL,'2020-11-03 11:58:42','de',NULL),(50,'BELL-7723427353','Sehe ich genau so.','{}',NULL,NULL,'2020-11-03 17:40:36','de',NULL),(51,'BELL-7723427353','This is my new message!','{}',NULL,NULL,'2020-11-04 12:55:35','de',NULL),(52,'BELL-7723427353','Das finde ich wichtig.','{}',NULL,NULL,'2020-11-04 13:03:38','de',NULL),(53,'BELL-3219794234','Yup was er gesagt hat','{}',NULL,NULL,'2020-11-05 11:22:11','de',NULL),(54,'0','test','{\"de\":\"tesde\",\"en\":\"testen\",\"fr\":\"testfr\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 18:34:18','en',NULL),(55,'0','test','{\"de\":\"tesde\",\"en\":\"testen\",\"fr\":\"testfr\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 18:50:53','en',NULL),(56,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 19:41:37','de',NULL),(57,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 19:42:14','de',NULL),(58,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 19:42:39','de',NULL),(59,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 19:43:28','de',NULL),(60,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-06 19:45:05','de',NULL),(61,'BELL-3219794234','Super','{}',NULL,NULL,'2020-11-07 12:00:14','de',NULL),(64,'BELL-3219794234','Das ist ein guter Vorschlag.','{}',NULL,NULL,'2020-11-09 15:59:04','de',NULL),(65,'BELL-3219794234','Ich stimme voll und ganz zu.','{}',NULL,NULL,'2020-11-09 16:00:22','de',NULL),(66,'BELL-7723427353','Das ist eine gute Idee.','{}',NULL,NULL,'2020-11-09 16:01:59','de',NULL),(67,'BELL-7723427353','Dafür stimme ich auch.','{}',NULL,NULL,'2020-11-10 11:27:52','de',NULL),(68,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-10 17:54:09','de',NULL),(69,'bell_x','Hallo Zebralog.','{\"en\":\"Hello zebra log.\",\"fr\":\"Bonjour journal de zèbre.\",\"it\":\"Ciao registro zebra.\",\"es\":\"Hola registro de cebra.\",\"ar\":\"مرحبا سجل الحمار الوحشي.\",\"tr\":\"Merhaba zebra günlüğü.\",\"el\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"ru\":\"Привет, журнал зебры.\",\"uk\":\"Привіт зебра журнал.\"}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-10 17:54:11','de',NULL),(70,'0','test','{\"de\":\"tesde\",\"en\":\"testen\",\"fr\":\"testfr\"}','[\"tag1\",\"tag3\",\"tag5\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-10 17:54:56','en',NULL),(71,'bell_x','Hallo Zebralog.','{}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-10 17:54:56','de',NULL),(72,'bell_x','Hallo Zebralog.','{\"en\":\"Hello zebra log.\",\"fr\":\"Bonjour journal de zèbre.\",\"it\":\"Ciao registro zebra.\",\"es\":\"Hola registro de cebra.\",\"ar\":\"مرحبا سجل الحمار الوحشي.\",\"tr\":\"Merhaba zebra günlüğü.\",\"el\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"ru\":\"Привет, журнал зебры.\",\"uk\":\"Привіт зебра журнал.\"}','[\"tag1\",\"tag2\",\"tag3\"]','{\"lat\":42.239823,\"lng\":9.23232}','2020-11-10 17:54:57','de',NULL),(73,'BELL-3219794234','مرحبا سجل الحمار الوحشي.','{\"en\":\"Hello zebra log.\",\"it\":\"Ciao registro zebra.\",\"es\":\"Hola registro de cebra.\",\"fr\":\"Bonjour journal de zèbre.\",\"tr\":\"Merhaba zebra günlüğü.\",\"de\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"el\":\"Γεια σας, ζέβρα ημερολόγιο.\",\"ru\":\"Привет, журнал зебры.\",\"uk\":\"Привіт зебра журнал.\"}',NULL,NULL,'2020-11-11 07:49:27','ar','How are you today, ζέβρα?');
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

-- Dump completed on 2020-11-11  7:49:58
