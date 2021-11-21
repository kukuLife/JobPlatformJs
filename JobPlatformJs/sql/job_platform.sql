-- MySQL dump 10.13  Distrib 5.6.28-ndb-7.4.10, for osx10.8 (x86_64)
--
-- Host: localhost    Database: job_platform
-- ------------------------------------------------------
-- Server version	5.6.28-ndb-7.4.10-cluster-gpl

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
-- Table structure for table `app_ProjectInfo`
--

DROP TABLE IF EXISTS `app_ProjectInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_ProjectInfo` (
  `project_id` int(11) NOT NULL,
  `project_title` varchar(64) DEFAULT NULL,
  `project_content` varchar(512) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_person` varchar(128) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_person` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`project_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_ProjectInfo`
--

LOCK TABLES `app_ProjectInfo` WRITE;
/*!40000 ALTER TABLE `app_ProjectInfo` DISABLE KEYS */;
/*!40000 ALTER TABLE `app_ProjectInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_Project_Info`
--

DROP TABLE IF EXISTS `app_Project_Info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_Project_Info` (
  `PJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `PJ_NAME` varchar(64) NOT NULL,
  `PJ_INFO` varchar(256) DEFAULT NULL,
  `START_DATE` date DEFAULT NULL,
  `END_DATE` date DEFAULT NULL,
  `TARGET_USER` varchar(32) DEFAULT NULL,
  `PJ_KEY_WORLD` varchar(32) NOT NULL,
  PRIMARY KEY (`PJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_Project_Info`
--

LOCK TABLES `app_Project_Info` WRITE;
/*!40000 ALTER TABLE `app_Project_Info` DISABLE KEYS */;
INSERT INTO `app_Project_Info` VALUES (1,'test001title','test001info','0000-00-00',NULL,'001',''),(2,'test002title','test002info','0000-00-00',NULL,'001',''),(3,'test003title','test003info','0000-00-00',NULL,'001',''),(4,'test','{\"9589db4d813b72a5\":\"Job Responsibilities:\\n\\nLooking for a Sr Java Developer with very good hands on experience\\n\\nShould have sound knowledge Java, JSP, Spring and Struts MVC Framework\\n\\nHave knowledge in WebLogic Portal\\n\\nKnowledge on Spring Boot, Spr',NULL,NULL,'001',''),(5,'test','{\"e15b6d6f6b0be69d\":\"Job Details\\nPosition : Java J2EE\\nDevelop applications with security in mind\\u002Fas a focus. They are there protecting the sensitive applications you design. IF someone has an understanding of application security, they will have a b',NULL,NULL,'001',''),(6,'test','{\"a0b09a4ebf53f3ab\":\"We are a digitally native technology services company where innovation, design and engineering meet scale. We use some of the latest technologies in the digital and cognitive field to empower organizations in every aspect. We have more',NULL,NULL,'001',''),(7,'test','{\"423620b64b4411ec\":\"Bed Bath & Beyond is actively seeking a Java Microservices Developer to join our Omni-Channel Technology Team. The role will sit in our Union, NJ headquarters. The Omni-Channel Technology team is responsible for enterprise order manage',NULL,NULL,'001',''),(8,'test','{\"55c8aed72c549b29\":\"Qualification :\\nBachelors, Masters in Computer Science\\u002F Computer Engineering\\u002F Information Systems\\u002FInformation Technology\\u002F Electrical Engineering\\u002F Mechanical Engineering. (No prior experience in computing is re',NULL,NULL,'001',''),(9,'test','{\"c312f58e90b53bd0\":\"Experience: 3-5 Years\\nLocation: Remote\\n\\nCurrent opening and immediate need for a Java Developer.\\nTechnical Skills\\u002F Responsibilities\\nAbility to build web applications including graphic elements, overall organization and naviga',NULL,NULL,'001',''),(10,'test','{\"87eef3b33d698d9e\":\"As an Application Development Manager, you will possess a combination of application development and project management skills. At Bed Bath and Beyond, you will utilize these skills as part of a team responsible for the development and',NULL,NULL,'001',''),(11,'test','{\"e5de5fae260f8931\":\"Company Description\\n\\nArthur Grand Technologies is a national IT staffing firm. We offer staff augmentation and technology consulting services to private and public-sector customers. We mobilize the right people with the proper skills',NULL,NULL,'001',''),(12,'test','{\"555332246dc4680a\":\"Junior Java Software Developer (JoinOCI)-190016Q7\\n\\n\\nNo Visa Sponsorship is available for this position.\\n\\nPreferred Qualifications\\nThe Oracle Cloud Infrastructure (OCI) team can provide you the opportunity to build and operate a s',NULL,NULL,'001',''),(13,'test','{\"0a91ffd852c9a104\":\"At Boston Children’s Hospital, success is measured in patients treated, parents comforted and teams taught. It’s in discoveries made, processes perfected, and technology advanced. In major medical breakthroughs and small acts of kindne',NULL,NULL,'001',''),(14,'test','{\"d48f79ea07e7dcc4\":\"Our Consumer & Community Banking Group depends on innovators like you to serve nearly 66 million consumers and over 4 million small businesses, municipalities and non-profits. You’ll support the delivery of award winning tools and serv',NULL,NULL,NULL,''),(15,'test','{\"9589db4d813b72a5\":\"Job Responsibilities:\\n\\nLooking for a Sr Java Developer with very good hands on experience\\n\\nShould have sound knowledge Java, JSP, Spring and Struts MVC Framework\\n\\nHave knowledge in WebLogic Portal\\n\\nKnowledge on Spring Boot, Spr',NULL,NULL,NULL,''),(16,'test','{\"c312f58e90b53bd0\":\"Experience: 3-5 Years\\nLocation: Remote\\n\\nCurrent opening and immediate need for a Java Developer.\\nTechnical Skills\\u002F Responsibilities\\nAbility to build web applications including graphic elements, overall organization and naviga',NULL,NULL,NULL,''),(17,'test','{\"72b75d6a1db00161\":\"As a member of our Software Engineering Group we look first and foremost for people who are passionate around solving business problems through innovation & engineering practices. You will be required to apply your depth of knowledge a',NULL,NULL,NULL,''),(18,'test','{\"e0ffc88481149f97\":\"Come join the One Intuit Identity Platform team as a Software Engineer 2. We are looking for creative problem solvers with a passion for platform, technology and customer experiences. In this role, you will deliver quality services and',NULL,NULL,NULL,''),(19,'test','{\"8107813ec2b7bce5\":\"Date of Posting:\\n08\\u002F29\\u002F2017\\nTerms:\\nC2C\\u002FW2 Contract\\nDuration:\\n6 Months\\nNumber of Positions Available:\\n1\\nJob Description:\\nCore Java J2EE skills with Spring or Hibernate Framework\\nJob Requirements:\\nClient coordin',NULL,NULL,NULL,''),(20,'test','{\"5787302a7087a3c0\":\"Overview\\nResponsibilities:\\nAssists in developing, testing, implementation and support of application systems.Partners with development teams through the project life cycle, including writing and developing code within projects.Accoun',NULL,NULL,NULL,''),(21,'test','{\"bc1b11f032b72bbc\":\"Job Details\\nPosition : Sr. JAVA Developers\\n Minimum 6+ years of professional work Experience preferred.\\nExperience in Building highly available resilient RESTful API using the latest technologies \\u002F frameworks.\\nExperience in wo',NULL,NULL,NULL,''),(22,'test','{\"501903a2ee61a02e\":\"Please note, all positions at Binance require relevant experience. Applications without required experience will not be considered.\\n\\nBinance is the no. 1 crypto-currency exchange in the world.\\nAre you looking to be a part of one of ',NULL,NULL,NULL,''),(23,'test','{\"e9687adee65e9b14\":\"A global finance company has a rare opportunity for a Java Developer with at least two years of corporate development experience. This is a permanent position, with no sponsorship.\\nRequired skills:\\nCore Java\\nFull Stack Development\\n',NULL,NULL,NULL,'');
/*!40000 ALTER TABLE `app_Project_Info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_TASKS`
--

DROP TABLE IF EXISTS `app_TASKS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_TASKS` (
  `task_id` int(11) NOT NULL AUTO_INCREMENT,
  `task_content` varchar(256) DEFAULT NULL,
  `task_answer` varchar(256) DEFAULT NULL,
  `user_id` varchar(64) DEFAULT NULL,
  `task_keyworld` varchar(32) NOT NULL,
  PRIMARY KEY (`task_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_TASKS`
--

LOCK TABLES `app_TASKS` WRITE;
/*!40000 ALTER TABLE `app_TASKS` DISABLE KEYS */;
INSERT INTO `app_TASKS` VALUES (1,'test_content','test','001',''),(2,'taskInfo2','taskAnswer2','001',''),(3,'taskInfo2','taskAnswer2','001',''),(8,'test_content','taskAnswer3','001',''),(9,'test_content','taskAnswer3','001',''),(10,'test_content','taskAnswer3','001',''),(11,'file:///Users/kukuLife/GitHub/vuejsDemo/JobPlatform/sql/problems/sparse-similarity-lcci',NULL,'001','sparse-similarity-lcci'),(12,'file:///Users/kukuLife/GitHub/vuejsDemo/JobPlatform/sql/problems/sparse-similarity-lcci',NULL,'001','sparse-similarity-lcci'),(13,'<html>\n <body>\n  <p>\n   ä¸¤ä¸ª(å…·æœ‰ä¸åŒå•è¯çš„)æ–‡æ¡£çš„äº¤é›†(intersection)ä¸­å…ƒç´ çš„ä¸ªæ•°é™¤ä»¥å¹¶é›†(union)ä¸­å…ƒç´ çš„ä¸ªæ•°ï¼Œå°±æ˜¯è¿™ä¸¤ä¸ªæ–‡æ¡£çš„ç›¸ä¼¼åº¦ã€‚ä¾‹å¦‚ï¼Œ{1, 5, 3} å’Œ {1, 7, 2, 3} çš„ç›¸ä¼¼åº¦æ˜¯ 0.4ï¼Œå…¶ä¸­ï¼Œäº¤é›†çš„å…ƒç',NULL,'001','sparse-similarity-lcci'),(14,'<html>\n <body>\n  <p>\n   ä¸¤ä¸ª(å…·æœ‰ä¸åŒå•è¯çš„)æ–‡æ¡£çš„äº¤é›†(intersection)ä¸­å…ƒç´ çš„ä¸ªæ•°é™¤ä»¥å¹¶é›†(union)ä¸­å…ƒç´ çš„ä¸ªæ•°ï¼Œå°±æ˜¯è¿™ä¸¤ä¸ªæ–‡æ¡£çš„ç›¸ä¼¼åº¦ã€‚ä¾‹å¦‚ï¼Œ{1, 5, 3} å’Œ {1, 7, 2, 3} çš„ç›¸ä¼¼åº¦æ˜¯ 0.4ï¼Œå…¶ä¸­ï¼Œäº¤é›†çš„å…ƒç',NULL,NULL,'sparse-similarity-lcci'),(15,'<html>\n <body>\n  <p>\n   ä¸¤ä¸ª(å…·æœ‰ä¸åŒå•è¯çš„)æ–‡æ¡£çš„äº¤é›†(intersection)ä¸­å…ƒç´ çš„ä¸ªæ•°é™¤ä»¥å¹¶é›†(union)ä¸­å…ƒç´ çš„ä¸ªæ•°ï¼Œå°±æ˜¯è¿™ä¸¤ä¸ªæ–‡æ¡£çš„ç›¸ä¼¼åº¦ã€‚ä¾‹å¦‚ï¼Œ{1, 5, 3} å’Œ {1, 7, 2, 3} çš„ç›¸ä¼¼åº¦æ˜¯ 0.4ï¼Œå…¶ä¸­ï¼Œäº¤é›†çš„å…ƒç',NULL,NULL,'sparse-similarity-lcci'),(16,'<html>\n <body>\n  <p>\n   ä¸¤ä¸ª(å…·æœ‰ä¸åŒå•è¯çš„)æ–‡æ¡£çš„äº¤é›†(intersection)ä¸­å…ƒç´ çš„ä¸ªæ•°é™¤ä»¥å¹¶é›†(union)ä¸­å…ƒç´ çš„ä¸ªæ•°ï¼Œå°±æ˜¯è¿™ä¸¤ä¸ªæ–‡æ¡£çš„ç›¸ä¼¼åº¦ã€‚ä¾‹å¦‚ï¼Œ{1, 5, 3} å’Œ {1, 7, 2, 3} çš„ç›¸ä¼¼åº¦æ˜¯ 0.4ï¼Œå…¶ä¸­ï¼Œäº¤é›†çš„å…ƒç',NULL,NULL,'sparse-similarity-lcci');
/*!40000 ALTER TABLE `app_TASKS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `app_UserInfo`
--

DROP TABLE IF EXISTS `app_UserInfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `app_UserInfo` (
  `UI_ID` varchar(32) NOT NULL,
  `UI_PWD` varchar(32) DEFAULT NULL,
  `USR_KEY_WORD` varchar(256) NOT NULL,
  `UI_CreateDate` datetime DEFAULT NULL,
  PRIMARY KEY (`UI_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `app_UserInfo`
--

LOCK TABLES `app_UserInfo` WRITE;
/*!40000 ALTER TABLE `app_UserInfo` DISABLE KEYS */;
INSERT INTO `app_UserInfo` VALUES ('001','001','','2019-06-10 00:00:00'),('002','002','','2019-06-04 00:00:00'),('003','003','','2019-06-20 00:00:00'),('009','009','','2020-01-05 15:55:31'),('4','4','','2019-12-13 00:00:00'),('5','5','','2019-12-15 21:41:42'),('6','6','','2019-12-15 21:42:55'),('7','7','','2020-01-05 15:35:54'),('711','711','','2020-01-05 15:43:50'),('caoTest','caoTest','','2020-04-04 22:22:20'),('test','test','','2020-01-05 15:48:10'),('test2','test2','','2020-01-05 15:55:14');
/*!40000 ALTER TABLE `app_UserInfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__bookmark`
--

DROP TABLE IF EXISTS `pma__bookmark`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__bookmark` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__bookmark`
--

LOCK TABLES `pma__bookmark` WRITE;
/*!40000 ALTER TABLE `pma__bookmark` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__bookmark` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__central_columns`
--

DROP TABLE IF EXISTS `pma__central_columns`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin,
  PRIMARY KEY (`db_name`,`col_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__central_columns`
--

LOCK TABLES `pma__central_columns` WRITE;
/*!40000 ALTER TABLE `pma__central_columns` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__central_columns` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__column_info`
--

DROP TABLE IF EXISTS `pma__column_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__column_info` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`id`),
  UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__column_info`
--

LOCK TABLES `pma__column_info` WRITE;
/*!40000 ALTER TABLE `pma__column_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__column_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__designer_settings`
--

DROP TABLE IF EXISTS `pma__designer_settings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__designer_settings`
--

LOCK TABLES `pma__designer_settings` WRITE;
/*!40000 ALTER TABLE `pma__designer_settings` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__designer_settings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__export_templates`
--

DROP TABLE IF EXISTS `pma__export_templates`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__export_templates` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__export_templates`
--

LOCK TABLES `pma__export_templates` WRITE;
/*!40000 ALTER TABLE `pma__export_templates` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__export_templates` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__favorite`
--

DROP TABLE IF EXISTS `pma__favorite`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__favorite`
--

LOCK TABLES `pma__favorite` WRITE;
/*!40000 ALTER TABLE `pma__favorite` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__favorite` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__history`
--

DROP TABLE IF EXISTS `pma__history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__history` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  KEY `username` (`username`,`db`,`table`,`timevalue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__history`
--

LOCK TABLES `pma__history` WRITE;
/*!40000 ALTER TABLE `pma__history` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__navigationhiding`
--

DROP TABLE IF EXISTS `pma__navigationhiding`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__navigationhiding`
--

LOCK TABLES `pma__navigationhiding` WRITE;
/*!40000 ALTER TABLE `pma__navigationhiding` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__navigationhiding` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__pdf_pages`
--

DROP TABLE IF EXISTS `pma__pdf_pages`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT '',
  PRIMARY KEY (`page_nr`),
  KEY `db_name` (`db_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__pdf_pages`
--

LOCK TABLES `pma__pdf_pages` WRITE;
/*!40000 ALTER TABLE `pma__pdf_pages` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__pdf_pages` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__recent`
--

DROP TABLE IF EXISTS `pma__recent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__recent`
--

LOCK TABLES `pma__recent` WRITE;
/*!40000 ALTER TABLE `pma__recent` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__recent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__relation`
--

DROP TABLE IF EXISTS `pma__relation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  KEY `foreign_field` (`foreign_db`,`foreign_table`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__relation`
--

LOCK TABLES `pma__relation` WRITE;
/*!40000 ALTER TABLE `pma__relation` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__relation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__savedsearches`
--

DROP TABLE IF EXISTS `pma__savedsearches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__savedsearches` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__savedsearches`
--

LOCK TABLES `pma__savedsearches` WRITE;
/*!40000 ALTER TABLE `pma__savedsearches` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__savedsearches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_coords`
--

DROP TABLE IF EXISTS `pma__table_coords`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float unsigned NOT NULL DEFAULT '0',
  `y` float unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_coords`
--

LOCK TABLES `pma__table_coords` WRITE;
/*!40000 ALTER TABLE `pma__table_coords` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_coords` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_info`
--

DROP TABLE IF EXISTS `pma__table_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_info`
--

LOCK TABLES `pma__table_info` WRITE;
/*!40000 ALTER TABLE `pma__table_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__table_uiprefs`
--

DROP TABLE IF EXISTS `pma__table_uiprefs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`username`,`db_name`,`table_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__table_uiprefs`
--

LOCK TABLES `pma__table_uiprefs` WRITE;
/*!40000 ALTER TABLE `pma__table_uiprefs` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__table_uiprefs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__tracking`
--

DROP TABLE IF EXISTS `pma__tracking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) unsigned NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`db_name`,`table_name`,`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__tracking`
--

LOCK TABLES `pma__tracking` WRITE;
/*!40000 ALTER TABLE `pma__tracking` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__tracking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__userconfig`
--

DROP TABLE IF EXISTS `pma__userconfig`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__userconfig`
--

LOCK TABLES `pma__userconfig` WRITE;
/*!40000 ALTER TABLE `pma__userconfig` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__userconfig` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__usergroups`
--

DROP TABLE IF EXISTS `pma__usergroups`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N',
  PRIMARY KEY (`usergroup`,`tab`,`allowed`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__usergroups`
--

LOCK TABLES `pma__usergroups` WRITE;
/*!40000 ALTER TABLE `pma__usergroups` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__usergroups` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pma__users`
--

DROP TABLE IF EXISTS `pma__users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`username`,`usergroup`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pma__users`
--

LOCK TABLES `pma__users` WRITE;
/*!40000 ALTER TABLE `pma__users` DISABLE KEYS */;
/*!40000 ALTER TABLE `pma__users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-04-29  9:40:56
