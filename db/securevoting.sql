-- MySQL dump 10.13  Distrib 5.1.35, for Win32 (ia32)
--
-- Host: localhost    Database: securevoting
-- ------------------------------------------------------
-- Server version	5.1.35-community

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
-- Table structure for table `admin_addelection`
--

DROP TABLE IF EXISTS `admin_addelection`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_addelection` (
  `admin_addelection_id` int(11) NOT NULL AUTO_INCREMENT,
  `addelection_date` text,
  `addelection_fromtime` text,
  `addelection_totime` text,
  `status` text,
  PRIMARY KEY (`admin_addelection_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_addelection`
--

LOCK TABLES `admin_addelection` WRITE;
/*!40000 ALTER TABLE `admin_addelection` DISABLE KEYS */;
INSERT INTO `admin_addelection` VALUES (1,'2019-04-04','7.00AM','4.00AM','0'),(2,'2019-04-03','7.00AM','4.00AM',NULL),(3,'2019-04-10','7.00AM','8.00PM',NULL);
/*!40000 ALTER TABLE `admin_addelection` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `admin_notice`
--

DROP TABLE IF EXISTS `admin_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `admin_notice` (
  `admin_notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_notice` text,
  `notice_image` text,
  `notice_document` text,
  `date` text,
  PRIMARY KEY (`admin_notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin_notice`
--

LOCK TABLES `admin_notice` WRITE;
/*!40000 ALTER TABLE `admin_notice` DISABLE KEYS */;
INSERT INTO `admin_notice` VALUES (1,'hai voters','CandidateImage/23-Mar-2019127AMalb_2081918001.jpeg','CandidateImage/23-Mar-2019127AMNLP Algorithm.txt','Sat Mar 23 01:27:48 PDT 2019');
/*!40000 ALTER TABLE `admin_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_admin`
--

DROP TABLE IF EXISTS `tbl_admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_admin` (
  `admin_username` text,
  `admin_password` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_admin`
--

LOCK TABLES `tbl_admin` WRITE;
/*!40000 ALTER TABLE `tbl_admin` DISABLE KEYS */;
INSERT INTO `tbl_admin` VALUES ('admin','admin');
/*!40000 ALTER TABLE `tbl_admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_candidate`
--

DROP TABLE IF EXISTS `tbl_candidate`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_candidate` (
  `tbl_candidate_id` int(11) NOT NULL AUTO_INCREMENT,
  `candidate_name` text,
  `candidate_gender` text,
  `candidate_dob` text,
  `candidate_email` text,
  `candidate_phoneno` text,
  `candidate_backgrounddetails` text,
  `candidate_partydetails` text,
  `candidate_ward` text,
  `candidate_partyicon` text,
  `candidate_password` text,
  `candidate_image` text,
  PRIMARY KEY (`tbl_candidate_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_candidate`
--

LOCK TABLES `tbl_candidate` WRITE;
/*!40000 ALTER TABLE `tbl_candidate` DISABLE KEYS */;
INSERT INTO `tbl_candidate` VALUES (1,'sasi tharoor','male','14/02/1975','sasi01@gmail.com','7025854535','sasi tharoor writer,social worker from trivandrum','Congress','pulimood','CandidateIcon/21-Mar-2019422AMCongress icon.jpg','6409','CandidateImage/23-Mar-20191217AMalb_2081918001.jpeg'),(2,'dhivakaran','male','14-01-1970','dhivakaran001@gmail.com','99950123698','Kakkhaatt(H)','Communist','pulimood','CandidateIcon/23-Mar-2019625AMcommunist flag.png','2436','CandidateImage/23-Mar-2019628AMdhivakaran.jpg'),(3,'kummanam rajashekaran','male','12-05-1979','kummanam@gmail.com','7025859874','maalichuvad(H)','BJP','pulimood','CandidateIcon/23-Mar-2019630AMbjp flag.jpg','1962','CandidateImage/23-Mar-2019631AMdownload.jpg');
/*!40000 ALTER TABLE `tbl_candidate` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_feedback`
--

DROP TABLE IF EXISTS `tbl_feedback`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_feedback` (
  `tbl_feedback_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_candidate_id` int(11) DEFAULT NULL,
  `tbl_user_id` int(11) DEFAULT NULL,
  `feedback_feedback` text,
  `feedback_date` text,
  PRIMARY KEY (`tbl_feedback_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_feedback`
--

LOCK TABLES `tbl_feedback` WRITE;
/*!40000 ALTER TABLE `tbl_feedback` DISABLE KEYS */;
INSERT INTO `tbl_feedback` VALUES (1,1,1,'He is a good man','23-03-2019'),(2,2,1,'he is also good candidate and as well as a good leader','03-04-2019'),(3,3,1,'he is so better ','03-04-2019');
/*!40000 ALTER TABLE `tbl_feedback` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_nomination`
--

DROP TABLE IF EXISTS `tbl_nomination`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_nomination` (
  `tbl_nomination_id` int(11) NOT NULL AUTO_INCREMENT,
  `nomination_name` text,
  `nomination_address` text,
  `nomination_party` text,
  `nomination_wardname` text,
  `nomination_wardno` text,
  `nomination_position` text,
  `nomination_responsibility` text,
  `nomination_specify` text,
  `status` text,
  `tbl_candidate_id` int(11) DEFAULT NULL,
  `electiondate` text,
  `nominationdate` text,
  PRIMARY KEY (`tbl_nomination_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_nomination`
--

LOCK TABLES `tbl_nomination` WRITE;
/*!40000 ALTER TABLE `tbl_nomination` DISABLE KEYS */;
INSERT INTO `tbl_nomination` VALUES (1,'sasi tharoor','sasi tharoor writer,social worker from trivandrum','Congress','pulimood','12','MLA','Yes','former MLA','1',1,'2019-04-03','23-03-2019'),(2,'dhivakaran','Kakkhaatt(H)','Communist','pulimood','12','MLA','Yes','former MLA','1',2,'2019-04-03','23-03-2019'),(3,'kummanam rajashekaran','maalichuvad(H)','BJP','pulimood','12','MLA','No','nill','1',3,'2019-04-03','23-03-2019');
/*!40000 ALTER TABLE `tbl_nomination` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_notice`
--

DROP TABLE IF EXISTS `tbl_notice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_notice` (
  `tbl_notice_id` int(11) NOT NULL AUTO_INCREMENT,
  `notice_notice` text,
  `notice_date` text,
  `notice_time` text,
  PRIMARY KEY (`tbl_notice_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_notice`
--

LOCK TABLES `tbl_notice` WRITE;
/*!40000 ALTER TABLE `tbl_notice` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_notice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_user`
--

DROP TABLE IF EXISTS `tbl_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_user` (
  `tbl_user_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_name` text,
  `user_email` text,
  `user_phoneno` text,
  `user_photo` text,
  `user_dob` text,
  `user_status` text,
  `user_voterid` text,
  `user_gender` text,
  `user_address` text,
  `user_fathername` text,
  `user_ward` text,
  `user_adharno` text,
  `password` text,
  `wardno` text,
  PRIMARY KEY (`tbl_user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_user`
--

LOCK TABLES `tbl_user` WRITE;
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` VALUES (1,'akhil','ksshiyas01@gmail.com','7025854535','userimage/23-Mar-2019447AMvoter1.jpg','26-02-1993','1','497320832','male','kuzheekkal(h)','rajan','pulimood','7021000301203','825','12'),(2,'abey','abey01@gmail.com','9947852365','userimage/03-Apr-2019411AMdownload (2).jpg','22-05-1991','1','929513671','male','illithood(h)','george','pulimood','36002541089711','963','12'),(4,'mahi','mahi00003@gmail.com','7025456321','userimage/10-Apr-2019543AMimages.jpg','12-05-1979','1','851091156','male','illithood(h)','mahi george','pulimood','702365110025','253','12');
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_vote`
--

DROP TABLE IF EXISTS `tbl_vote`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tbl_vote` (
  `tbl_vote_id` int(11) NOT NULL AUTO_INCREMENT,
  `tbl_candidate_id` int(11) DEFAULT NULL,
  `tbl_user_id` int(11) DEFAULT NULL,
  `userkey` text,
  `priority` text,
  `electiondate` text,
  `status` text,
  PRIMARY KEY (`tbl_vote_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_vote`
--

LOCK TABLES `tbl_vote` WRITE;
/*!40000 ALTER TABLE `tbl_vote` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_vote` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-04-25  0:26:33
