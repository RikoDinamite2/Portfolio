-- MySQL dump 10.13  Distrib 8.0.40, for Linux (x86_64)
--
-- Host: localhost    Database: portfolio
-- ------------------------------------------------------
-- Server version	8.0.40-0ubuntu0.24.04.1

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
-- Table structure for table `buttons`
--

DROP TABLE IF EXISTS `buttons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `buttons` (
  `id` int NOT NULL AUTO_INCREMENT,
  `button_text` varchar(255) NOT NULL,
  `class` varchar(255) NOT NULL,
  `action` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `buttons`
--

LOCK TABLES `buttons` WRITE;
/*!40000 ALTER TABLE `buttons` DISABLE KEYS */;
INSERT INTO `buttons` VALUES (1,'Contact me','gradient-btn','#contact');
/*!40000 ALTER TABLE `buttons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contact_me`
--

DROP TABLE IF EXISTS `contact_me`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contact_me` (
  `class_div` varchar(255) DEFAULT NULL,
  `href` varchar(255) DEFAULT NULL,
  `text_button` varchar(255) DEFAULT NULL,
  `class_button` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contact_me`
--

LOCK TABLES `contact_me` WRITE;
/*!40000 ALTER TABLE `contact_me` DISABLE KEYS */;
INSERT INTO `contact_me` VALUES ('btn-group','#','Hire','btn'),('btn-group','#contact','Contact','btn');
/*!40000 ALTER TABLE `contact_me` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `footer`
--

DROP TABLE IF EXISTS `footer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `footer` (
  `class_footer` varchar(255) DEFAULT NULL,
  `class_icons` varchar(255) DEFAULT NULL,
  `class_list` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `footer`
--

LOCK TABLES `footer` WRITE;
/*!40000 ALTER TABLE `footer` DISABLE KEYS */;
INSERT INTO `footer` VALUES ('footer','social-icons','lis');
/*!40000 ALTER TABLE `footer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `header_config`
--

DROP TABLE IF EXISTS `header_config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `header_config` (
  `id` int NOT NULL AUTO_INCREMENT,
  `logo_href` varchar(255) NOT NULL,
  `logo_text` varchar(255) NOT NULL,
  `highlighted_text` varchar(255) NOT NULL,
  `header_class` varchar(255) NOT NULL,
  `menu_icon_class` varchar(255) NOT NULL,
  `menu_icon_id` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `header_config`
--

LOCK TABLES `header_config` WRITE;
/*!40000 ALTER TABLE `header_config` DISABLE KEYS */;
INSERT INTO `header_config` VALUES (1,'#home','Popa','Sebastiano','header','bx bx-menu','menu-icon');
/*!40000 ALTER TABLE `header_config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `icons`
--

DROP TABLE IF EXISTS `icons`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `icons` (
  `class_div` varchar(255) DEFAULT NULL,
  `href_icon` varchar(255) DEFAULT NULL,
  `class_icon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `icons`
--

LOCK TABLES `icons` WRITE;
/*!40000 ALTER TABLE `icons` DISABLE KEYS */;
INSERT INTO `icons` VALUES ('social-icons','https://github.com/RikoDinamite2','bx bxl-github'),('social_icons','https://www.instagram.com/rikodinamite_/#','bx bxl-instagram-alt'),('social_icons','https://google.com','bx bxl-linkedin-square'),('social_icons','https://x.com/DinamiteRiko','bx bxl-twitter');
/*!40000 ALTER TABLE `icons` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `image`
--

DROP TABLE IF EXISTS `image`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `image` (
  `div_class` varchar(255) DEFAULT NULL,
  `src_img` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `image`
--

LOCK TABLES `image` WRITE;
/*!40000 ALTER TABLE `image` DISABLE KEYS */;
INSERT INTO `image` VALUES ('home-img','../img/pp.jpeg'),('about-img','../img/pp.jpeg');
/*!40000 ALTER TABLE `image` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `navbar_links`
--

DROP TABLE IF EXISTS `navbar_links`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `navbar_links` (
  `id` int NOT NULL AUTO_INCREMENT,
  `href` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `position` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `navbar_links`
--

LOCK TABLES `navbar_links` WRITE;
/*!40000 ALTER TABLE `navbar_links` DISABLE KEYS */;
INSERT INTO `navbar_links` VALUES (1,'#home','Home',1),(2,'#about','About',2),(3,'#services','Services',3),(4,'#projects','Projects',4);
/*!40000 ALTER TABLE `navbar_links` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `project_card`
--

DROP TABLE IF EXISTS `project_card`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `project_card` (
  `class_heading` varchar(255) DEFAULT NULL,
  `text_heading` varchar(255) DEFAULT NULL,
  `class_projects_box` varchar(255) DEFAULT NULL,
  `class_project_card` varchar(255) DEFAULT NULL,
  `path_img` varchar(255) DEFAULT NULL,
  `text_h3` varchar(255) DEFAULT NULL,
  `paragraph` varchar(255) DEFAULT NULL,
  `class_button` varchar(255) DEFAULT NULL,
  `text_button` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `project_card`
--

LOCK TABLES `project_card` WRITE;
/*!40000 ALTER TABLE `project_card` DISABLE KEYS */;
INSERT INTO `project_card` VALUES ('heading','Projects','projects-box','project-card','../img/pp.jpeg','Project 1','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur','btn','Review Project'),('heading','Projects','projects-box','project-card','../img/pp.jpeg','Project 2','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur','btn','Review Project'),('heading','Projects','projects-box','project-card','../img/pp.jpeg','Project 3','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur','btn','Review Project'),('heading','Projects','projects-box','project-card','../img/pp.jpeg','Project 4','Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur Lorem ipsum dolor sit amet consectetur','btn','Review Project');
/*!40000 ALTER TABLE `project_card` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `section`
--

DROP TABLE IF EXISTS `section`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `section` (
  `section_class` varchar(255) DEFAULT NULL,
  `section_id` varchar(255) DEFAULT NULL,
  `div_class_home` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `section`
--

LOCK TABLES `section` WRITE;
/*!40000 ALTER TABLE `section` DISABLE KEYS */;
INSERT INTO `section` VALUES ('home','home','home-content'),('about','about','about-content'),('services','services','services-container'),('projects','projects','projects-box');
/*!40000 ALTER TABLE `section` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `service_box`
--

DROP TABLE IF EXISTS `service_box`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `service_box` (
  `class_heading` varchar(255) DEFAULT NULL,
  `text_heading` varchar(255) DEFAULT NULL,
  `class_service_box` varchar(255) DEFAULT NULL,
  `class_service_info` varchar(255) DEFAULT NULL,
  `class_tag_i` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `paragraph` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `service_box`
--

LOCK TABLES `service_box` WRITE;
/*!40000 ALTER TABLE `service_box` DISABLE KEYS */;
INSERT INTO `service_box` VALUES ('heading','Services','service-box','service-info','bx bxl-figma','UI / UX Desing','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo iste esse labore illo placeat nesciunt, non, sit reprehenderit,quia porro nulla ratione voluptate dicta sapiente tempore veniam ducimus excepturi. Corporis.'),('heading','Services','service-box','service-info','bx bx-code','FrontEnd','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo iste esse labore illo placeat nesciunt, non, sit reprehenderit,quia porro nulla ratione voluptate dicta sapiente tempore veniam ducimus excepturi. Corporis.'),('heading','Services','service-box','service-info','bx bx-code-curly','BackEnd','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo iste esse labore illo placeat nesciunt, non, sit reprehenderit,quia porro nulla ratione voluptate dicta sapiente tempore veniam ducimus excepturi. Corporis.'),('heading','Services','service-box','service-info','bx bxl-unity','Gaming','Lorem ipsum dolor, sit amet consectetur adipisicing elit. Nemo iste esse labore illo placeat nesciunt, non, sit reprehenderit,quia porro nulla ratione voluptate dicta sapiente tempore veniam ducimus excepturi. Corporis.');
/*!40000 ALTER TABLE `service_box` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `title`
--

DROP TABLE IF EXISTS `title`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `title` (
  `text_before_span` varchar(255) DEFAULT NULL,
  `text_in_span` varchar(255) DEFAULT NULL,
  `text_brefore_description` varchar(255) DEFAULT NULL,
  `text_in_description` varchar(255) DEFAULT NULL,
  `paragraph` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `title`
--

LOCK TABLES `title` WRITE;
/*!40000 ALTER TABLE `title` DISABLE KEYS */;
INSERT INTO `title` VALUES ('Hi, It\'s ','Popa','I\'m a ','Web Developerrr','Lorem ipsum dolor sit amet consectetur adipisicing elit. A et repudiandae quibusdam ipsam animi, cupiditate soluta laborum nulla quod exercitationem consequuntur iusto illum, eum error? Perferendis blanditiis in quidem sint?'),('About ','Me','https://google.com','Read More','Lorem ipsum dolor sit amet consectetur adipisicing elit. A et repudiandae quibusdam ipsam animi, cupiditate soluta laborum nulla quod exercitationem consequuntur iusto illum, eum error? Perferendis blanditiis in quidem sint?');
/*!40000 ALTER TABLE `title` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-02-02 15:22:25
