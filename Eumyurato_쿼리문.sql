CREATE DATABASE  IF NOT EXISTS `eumyurato` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `eumyurato`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: eumyurato
-- ------------------------------------------------------
-- Server version	8.0.34

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `artist_donation`
--

DROP TABLE IF EXISTS `artist_donation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_donation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `buskId` int NOT NULL,
  `comId` varchar(20) NOT NULL,
  `point` int NOT NULL,
  `payTime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `buskId` (`buskId`),
  KEY `comId` (`comId`),
  CONSTRAINT `artist_donation_ibfk_1` FOREIGN KEY (`buskId`) REFERENCES `busking` (`id`),
  CONSTRAINT `artist_donation_ibfk_2` FOREIGN KEY (`comId`) REFERENCES `common_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_donation`
--

LOCK TABLES `artist_donation` WRITE;
/*!40000 ALTER TABLE `artist_donation` DISABLE KEYS */;
INSERT INTO `artist_donation` VALUES (4000,1002,'user01',1000,'2023-07-28 01:38:50'),(4001,1004,'user01',8000,'2023-07-28 01:39:23'),(4002,1005,'user01',10000,'2023-07-28 01:40:09'),(4003,1000,'user01',3000,'2023-07-28 01:40:36'),(4004,1003,'user01',20000,'2023-07-28 01:41:10'),(4005,1006,'user01',1000,'2023-07-28 01:41:34'),(4006,1007,'user01',40000,'2023-07-28 01:42:13'),(4007,1009,'user01',9000,'2023-07-28 01:42:45'),(4008,1012,'user01',100000,'2023-07-28 01:43:25'),(4009,1008,'user01',5000,'2023-07-28 01:43:50'),(4010,1011,'user01',3000,'2023-07-28 01:44:16'),(4011,1013,'user01',10000,'2023-07-28 01:44:42'),(4012,1014,'user01',5000,'2023-07-28 01:45:12');
/*!40000 ALTER TABLE `artist_donation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artist_member`
--

DROP TABLE IF EXISTS `artist_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `artist_member` (
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birth` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `registCon` json DEFAULT NULL,
  `adminNum` int NOT NULL,
  `point` int DEFAULT '0',
  `image` varchar(500) DEFAULT NULL,
  `favorite` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artist_member`
--

LOCK TABLES `artist_member` WRITE;
/*!40000 ALTER TABLE `artist_member` DISABLE KEYS */;
INSERT INTO `artist_member` VALUES ('artist01','artist01','김필','김필','남자','19860827','artist01@gmail.com','01087365571','발라드',NULL,2,9000,NULL,NULL),('artist02','artist02','백현','백현','남자','19920506','artist02@gmail.com','01063251549','댄스',NULL,2,28000,NULL,NULL),('artist03','artist03','이무진','이무진','남자','20001228','artist03@gmail.com','01069721238','발라드',NULL,2,11000,NULL,NULL),('artist04','artist04','소방서','소방서','남자','19840305','artist04@gmail.com','01035485269','힙합',NULL,2,45000,NULL,NULL),('artist05','artist05','권진아','권진아','여자','19970718','artist05@gmail.com','01078775692','가요',NULL,2,9000,NULL,NULL),('artist06','artist06','김지민','김지민','여자','19970527','artist06@gmail.com','01045335387','가요',NULL,2,113000,NULL,NULL);
/*!40000 ALTER TABLE `artist_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booked`
--

DROP TABLE IF EXISTS `booked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booked` (
  `sId` int NOT NULL,
  `seatNum` varchar(20) NOT NULL,
  PRIMARY KEY (`sId`,`seatNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booked`
--

LOCK TABLES `booked` WRITE;
/*!40000 ALTER TABLE `booked` DISABLE KEYS */;
INSERT INTO `booked` VALUES (6000,'D3'),(6012,'E5'),(6017,'E3'),(6022,'C3'),(6025,'F5'),(6032,'E5'),(6037,'G3'),(6039,'F3'),(6045,'D4'),(6047,'E5'),(6060,'E5'),(6073,'E4');
/*!40000 ALTER TABLE `booked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `busking`
--

DROP TABLE IF EXISTS `busking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `busking` (
  `id` int NOT NULL AUTO_INCREMENT,
  `artId` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `date` datetime NOT NULL,
  `regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `location` varchar(50) NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `artId` (`artId`),
  CONSTRAINT `busking_ibfk_1` FOREIGN KEY (`artId`) REFERENCES `artist_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1015 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `busking`
--

LOCK TABLES `busking` WRITE;
/*!40000 ALTER TABLE `busking` DISABLE KEYS */;
INSERT INTO `busking` VALUES (1000,'artist01','달나라','2023-07-31 18:30:00','2023-07-27 02:12:05','서울 마포구 양화로 지하 160',2,NULL),(1002,'artist01',' Hype Boy','2023-07-29 15:00:00','2023-07-27 02:16:00','서울 강동구 선사로 83-106',1,'f033b12d-d80a-4910-8e5e-04e21fdf5d08'),(1003,'artist02','백현의 버스킹','2023-08-05 13:40:00','2023-07-27 02:17:45','서울 광진구 능동로 10',1,'6866acc6-8e3b-42e6-9340-78118286436a'),(1004,'artist02','백현의 서울숲','2023-08-06 18:00:00','2023-07-27 02:19:26','서울 성동구 뚝섬로 273',1,'842c94ec-73be-4745-aa07-c7a1853994c1'),(1005,'artist03','무지무지무진','2023-07-30 20:20:00','2023-07-27 02:20:54','서울 서초구 잠원로 221-124',1,'d891146a-65d9-4bea-aecc-36ee3a8516ce'),(1006,'artist03','더위 탈출','2023-08-05 14:00:00','2023-07-27 02:21:51','서울 서초구 신반포로11길 40',1,'33b51f22-1c65-42f5-99f7-de3b219776d9'),(1007,'artist04','Get Up','2023-08-02 18:30:00','2023-07-27 02:23:16','서울 중구 삼일대로 231',1,NULL),(1008,'artist04','소르바람','2023-08-04 12:30:00','2023-07-27 02:25:28','서울 용산구 남산공원길 105',1,'8171d0b3-bdd3-4219-8488-adc025f97458'),(1009,'artist05','월화수목금토일','2023-08-07 12:30:00','2023-07-27 02:29:27','서울 강남구 강남대로 지하 396',1,'4f48b4db-8f65-493d-a461-8bacfaf2b4c4'),(1010,'artist05','레인보우','2023-08-11 20:00:00','2023-07-27 02:33:42','서울 영등포구 여의동로 330',0,'636f87ca-b246-49a6-98f3-548e9e1f07d3'),(1011,'artist06','Idea','2023-08-05 17:35:00','2023-07-27 02:35:46','서울 마포구 하늘공원로 95',1,NULL),(1012,'artist06','좋은날','2023-08-09 20:00:00','2023-07-27 02:37:35','서울 중구 퇴계로 지하 124',1,'a09144d0-1c15-4b82-ba69-6c93a6c323c8'),(1013,'artist06','너였다면','2023-08-06 12:00:00','2023-07-27 02:39:49','서울 동작구 여의대방로20마길 34',1,'eb2253bc-8e97-4ca1-a43b-5b423eccf736'),(1014,'artist01','신촌을 못가','2023-08-12 16:40:00','2023-07-27 02:41:15','서울 마포구 신촌로 지하 90',1,'7a0d361b-181a-48d0-8c4a-923d256bff51');
/*!40000 ALTER TABLE `busking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `common_member`
--

DROP TABLE IF EXISTS `common_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `common_member` (
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `nid` varchar(20) NOT NULL,
  `sex` varchar(10) NOT NULL,
  `birth` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `road` varchar(20) NOT NULL,
  `genre` varchar(20) NOT NULL,
  `adminNum` int NOT NULL,
  `favorite` json DEFAULT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `common_member`
--

LOCK TABLES `common_member` WRITE;
/*!40000 ALTER TABLE `common_member` DISABLE KEYS */;
INSERT INTO `common_member` VALUES ('user01','user01','서보민','따봉보민','남자','19961116','bomin199628@gmail.com','01071077835','기타','가요',1,NULL,NULL),('user02','user02','박채연','zl노이존','여자','19961124','user02@gmail.com','01061234185','검색','기타',1,NULL,NULL),('user03','user03','소완규','소간지','남자','19980920','swk98@naver.com','01041085261','광고','댄스',1,NULL,NULL),('user04','user04','신민채','취준생','여자','19941028','user04@gmail.com','01053186741','지인 추천','발라드',1,NULL,NULL),('user05','user05','방휘원','방겸둥이','남자','19940722','user05@gmail.com','01089454152','기타','힙합',1,NULL,NULL);
/*!40000 ALTER TABLE `common_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `concert_hall`
--

DROP TABLE IF EXISTS `concert_hall`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `concert_hall` (
  `id` int NOT NULL AUTO_INCREMENT,
  `seatNum` varchar(20) NOT NULL,
  `cRow` varchar(20) NOT NULL,
  `cCol` int NOT NULL,
  PRIMARY KEY (`id`,`seatNum`)
) ENGINE=InnoDB AUTO_INCREMENT=5001 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `concert_hall`
--

LOCK TABLES `concert_hall` WRITE;
/*!40000 ALTER TABLE `concert_hall` DISABLE KEYS */;
INSERT INTO `concert_hall` VALUES (5000,'A1','A',1),(5000,'A2','A',2),(5000,'A3','A',3),(5000,'A4','A',4),(5000,'A5','A',5),(5000,'A6','A',6),(5000,'A7','A',7),(5000,'B1','B',1),(5000,'B2','B',2),(5000,'B3','B',3),(5000,'B4','B',4),(5000,'B5','B',5),(5000,'B6','B',6),(5000,'B7','B',7),(5000,'C1','C',1),(5000,'C2','C',2),(5000,'C3','C',3),(5000,'C4','C',4),(5000,'C5','C',5),(5000,'C6','C',6),(5000,'C7','C',7),(5000,'D1','D',1),(5000,'D2','D',2),(5000,'D3','D',3),(5000,'D4','D',4),(5000,'D5','D',5),(5000,'D6','D',6),(5000,'D7','D',7),(5000,'E1','E',1),(5000,'E2','E',2),(5000,'E3','E',3),(5000,'E4','E',4),(5000,'E5','E',5),(5000,'E6','E',6),(5000,'E7','E',7),(5000,'F1','F',1),(5000,'F2','F',2),(5000,'F3','F',3),(5000,'F4','F',4),(5000,'F5','F',5),(5000,'F6','F',6),(5000,'F7','F',7),(5000,'G1','G',1),(5000,'G2','G',2),(5000,'G3','G',3),(5000,'G4','G',4),(5000,'G5','G',5),(5000,'G6','G',6),(5000,'G7','G',7);
/*!40000 ALTER TABLE `concert_hall` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enterprise_member`
--

DROP TABLE IF EXISTS `enterprise_member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enterprise_member` (
  `id` varchar(20) NOT NULL,
  `pwd` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `num` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(20) NOT NULL,
  `adminNum` int NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  `favorite` json DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enterprise_member`
--

LOCK TABLES `enterprise_member` WRITE;
/*!40000 ALTER TABLE `enterprise_member` DISABLE KEYS */;
INSERT INTO `enterprise_member` VALUES ('admin','admin','관리자','8340759261','enter06@gmail.com','01042524568',0,NULL,NULL),('enter01','enter01','충무로아트센터','8763945729','enter01@gmail.com','01025743524',3,NULL,NULL),('enter02','enter02','세종문화회관','2398456719','enter02@gmail.com','01047886523',3,NULL,NULL),('enter03','enter03','블루스퀘어','7391068205','enter03@gmail.com','01096552375',3,NULL,NULL),('enter04','enter04','예술의전당','9865104372','enter04@gmail.com','01085247562',3,NULL,NULL),('enter05','enter05','엠비전스','1865034297','enter05@gmail.com','01012415614',3,NULL,NULL);
/*!40000 ALTER TABLE `enterprise_member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `info`
--

DROP TABLE IF EXISTS `info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `info` (
  `NO` int NOT NULL AUTO_INCREMENT,
  `title` varchar(100) NOT NULL,
  `content` text,
  `date_created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`NO`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `info`
--

LOCK TABLES `info` WRITE;
/*!40000 ALTER TABLE `info` DISABLE KEYS */;
INSERT INTO `info` VALUES (1,'[공지] \"Eumyurato\" 오픈 합니다!','\"Eumyurato\"는\n 사용자들에게 다양한 소규모 공연과 버스킹의 정보 및 기회를 제공하여,\n예술과 문화를 즐길 수 있는 경험을 제공하는 서비스 입니다.\n여러분의 많은 사랑과 관심 부탁드립니다.\n','2023-07-25 16:09:59'),(2,'[공지] 저작권 안내','소중한 \"Eumyurato\"의 저작권을 지켜주세요!\n2023년부터 공개된 지적재산권과 특허권이 없는 사이트입니다.\n이에 따라 무단 사용, 무단 복제, 유사캐릭터 제작을 금하며,\n \"Eumyurato\"의 불법 굿즈 제품은 모두 법적 처벌을 받을 수 없는 점 유의 바랍니다.\n* 현재 유사 사이트 제작 업체 찾아보고 있습니다.\n아름다운 저작권 문화를 만들어 나가길 바랍니다.\n\"Eumyurato\"저작권을 지켜주세요.','2023-07-25 16:09:59'),(3,'[공지] 시스템 개선작업으로 인한 서비스 일시중지 안내','안녕하세요 :) \"Eumyurato\"입니다.\n언제나 \"Eumyurato\"을 이용해 주시는 고객님께 감사드립니다.\n \"Eumyurato\"는 더 나은 사이트 운영 및 서비스 개선을 위해 아래와 같이\n시스템 작업을 진행할 예정이며,\n 이에따라 작업 시간중 \"Eumyurato\"전체 또는 일부기능의 정상적인 서비스가 잠시중단될 예정이오니회원님의 양해 부탁 드립니다.\n작업일시: 2023년 5월 17일 0시 부터 ~ 2023년 5월 31일 0시 까지\n작업내용: \"Eumyurato\" 시스템 개선을 위한 재보수\n\"Eumyurato\"시스템 개선 작업으로 일시적으로 서비스가 중지됨을 양해바라며,\n최대한 빠른 시간내에 작업을 완료하여 속히 정상화 될 수 있도록 하겠습니다.\n다시한번 불편을 드려 대단히 죄송합니다.\n감사합니다.','2023-07-25 16:09:59');
/*!40000 ALTER TABLE `info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `local_festival`
--

DROP TABLE IF EXISTS `local_festival`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `local_festival` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `org` varchar(50) NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `startDate` datetime NOT NULL,
  `lastDate` datetime NOT NULL,
  `image` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2019 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `local_festival`
--

LOCK TABLES `local_festival` WRITE;
/*!40000 ALTER TABLE `local_festival` DISABLE KEYS */;
INSERT INTO `local_festival` VALUES (2000,'제18회 국제매직페스티벌','부산광역시 해운대구 중동2로 11','부산국제매직페스티벌조직위원회',0,'2023-07-01 00:00:00','2023-07-01 23:59:59','https://tkfile.yes24.com/upload2/PerfBlog/202304/20230411/20230411-45607.jpg'),(2001,'그루브인관악페스티벌','서울특별시 관악구 신원로 35','관악문화재단',0,'2023-07-01 00:00:00','2023-07-02 23:59:59','https://scontent-gmp1-1.xx.fbcdn.net/v/t39.30808-6/352309054_779004543723822_4844012224387446675_n.jpg?stp=cp6_dst-jpg_s720x720&_nc_cat=110&ccb=1-7&_nc_sid=730e14&_nc_ohc=HipiSe0i4RQAX9H3f0S&_nc_ht=scontent-gmp1-1.xx&oh=00_AfAC8gafINtlyNLgHD5zkqugTWac2a_wfp2tr35Ku4NqvA&oe=64936169'),(2002,'금산삼계탕축제','충청남도 금산군 금산읍 인삼광장로 30','금산축제관광재단',0,'2023-07-07 00:00:00','2023-07-09 23:59:59','https://korean.visitkorea.or.kr/kfes/upload/contents/db/400_964e8232-3729-4053-bd48-bd8a77e1916b_3.png'),(2003,'섬마을밴드 음악축제','인천광역시 중구 제물량로 195','인천광역시청',1,'2023-05-01 00:00:00','2023-10-31 23:59:59','https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTqen2zJE2CsaGesBhuhvoPiKAvHqejLnM8TA&usqp=CAU'),(2004,'제36회 해운대북극곰축제','부산광역시 해운대구 중동2로 11','부산광역시 해운대구청',0,'2023-12-01 00:00:00','2023-12-01 23:59:59','https://www.mcst.go.kr/attachFiles/cultureInfoCourt/localFestival/notifyFestival/1669940767188.jpg'),(2005,'2024 카운트다운&해맞이 축제','부산광역시 해운대구 중동2로 11','부산광역시 해운대구청',0,'2023-12-31 00:00:00','2024-01-01 23:59:59','https://korean.visitkorea.or.kr/kfes/upload/contents/db/bf544c33-d1f5-48f7-8089-7edd6ae44e18_1.jpg'),(2006,'치악산복숭아축제','강원도 원주시 단구로 170','치악산복숭아 원주시협의회',1,'2023-08-01 00:00:00','2023-08-01 23:59:59','https://korean.visitkorea.or.kr/kfes/upload/contents/db/81839c1d-5e06-495f-a9af-23281a898bf9_1.jpg'),(2007,'2023 원주 댄싱카니발','강원도 원주시 단구로 170','강원도 원주시청',0,'2023-09-22 00:00:00','2023-09-24 23:59:59','https://www.newstown.co.kr/news/photo/202304/569248_503482_5634.jpg'),(2008,'원주삼토페스티벌','강원도 원주시 서원대로 311','원주시농업인단체연합회',0,'2023-09-14 00:00:00','2023-09-17 23:59:59','https://www.iwjnews.com/news/photo/202305/53350_31961_2923.jpg'),(2009,'치악산한우축제','강원도 원주시 단구로 170','농업기술센터 축산과',0,'2023-10-01 00:00:00','2023-10-01 23:59:59','https://www.newstown.co.kr/news/photo/202204/533423_455482_444.jpg'),(2010,'용인어린이상상의숲 가을특별행사 온 가족이 함께하는 <상상북크닉>','경기도 용인시 처인구 동백죽전대로 61','용인문화재단',0,'2023-09-23 00:00:00','2023-09-23 23:59:59','https://cdn.newsq.kr/news/photo/202209/53383_50987_2023.jpg'),(2011,'용인어린이상상의숲 특별행사 <메리 상상 크리스마스>','경기도 용인시 처인구 동백죽전대로 61','용인문화재단',0,'2023-12-24 00:00:00','2023-12-24 23:59:59','https://www.vision21.kr/data/photos/portnews/202212/20221209093909-54440.jpg'),(2012,'제27회 부천국제판타스틱영화제','경기도 부천시 길주로 210','(사)부천국제판타스틱영화제조직위원회',0,'2023-06-29 00:00:00','2023-07-09 23:59:59','https://www.m-i.kr/news/photo/202304/1007805_770609_1525.jpg'),(2013,'크리스마스 마켓','경기도 오산시 원동로37번길 37-1','오산시 문화예술과',0,'2023-11-20 00:00:00','2023-12-24 23:59:59','https://cdn.banwol.net/news/thumbnail/202112/54063_24418_2443_v150.jpg'),(2014,'안성맞춤 남사당 바우덕이 축제','경기도 안성시 보개면 남사당로 198','경기도 안성시',0,'2023-10-06 00:00:00','2023-10-09 23:59:59','https://www.mcst.go.kr/attachFiles/cultureInfoCourt/localFestival/notifyFestival/1663812972558.jpg'),(2015,'2023 정조대왕 능행차 공동재현','경기도 수원시 팔달구 정조로 825','경기도 수원시',0,'2023-10-08 00:00:00','2023-10-09 23:59:59','https://www.swcf.or.kr/hlfl/resources/images/m-main4-banner-img.png'),(2016,'INK 콘서트','인천광역시 미추홀구 매소홀로 618','인천광역시청',0,'2023-09-09 00:00:00','2023-09-09 23:59:59','https://www.focusincheon.com/news/photo/202209/1776_2413_3828.jpg'),(2017,'인천펜타포트 음악축제','인천광역시 연수구 센트럴로 350','인천광역시청',1,'2023-08-04 00:00:00','2023-08-06 23:59:59','https://cdn.imweb.me/upload/S20220426cba93d7c0403b/0f6203559248e.jpg'),(2018,'인천생활문화축제','인천광역시 중구 내항로 67','인천광역시청',0,'2023-10-14 00:00:00','2023-10-14 23:59:59','https://ifac.or.kr/plugin/namoEditor/binary/images/000001/01.jpg');
/*!40000 ALTER TABLE `local_festival` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reservation`
--

DROP TABLE IF EXISTS `reservation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `reservation` (
  `id` int NOT NULL AUTO_INCREMENT,
  `sId` int NOT NULL,
  `cId` varchar(20) DEFAULT NULL,
  `payTime` datetime DEFAULT CURRENT_TIMESTAMP,
  `viewDate` datetime NOT NULL,
  `memberNum` int NOT NULL,
  `reservPay` int NOT NULL,
  `used` tinyint(1) DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sId` (`sId`),
  KEY `cId` (`cId`),
  CONSTRAINT `reservation_ibfk_1` FOREIGN KEY (`sId`) REFERENCES `schedules` (`id`),
  CONSTRAINT `reservation_ibfk_2` FOREIGN KEY (`cId`) REFERENCES `common_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reservation`
--

LOCK TABLES `reservation` WRITE;
/*!40000 ALTER TABLE `reservation` DISABLE KEYS */;
INSERT INTO `reservation` VALUES (7000,6025,'user01','2023-07-28 01:57:02','2023-08-01 00:00:00',1,13400,1),(7001,6000,'user01','2023-07-28 01:57:55','2023-07-31 00:00:00',1,70000,1),(7002,6022,'user01','2023-07-28 01:59:22','2023-08-04 00:00:00',1,13900,1),(7003,6039,'user02','2023-07-28 02:00:46','2023-08-02 00:00:00',1,10400,1),(7004,6073,'user02','2023-07-28 02:01:19','2023-08-01 00:00:00',1,18000,1),(7005,6047,'user02','2023-07-28 02:01:50','2023-07-29 00:00:00',1,26400,1),(7006,6017,'user03','2023-07-28 02:02:34','2023-08-05 00:00:00',1,16800,1),(7007,6032,'user03','2023-07-28 02:03:07','2023-08-02 00:00:00',1,15800,1),(7008,6037,'user04','2023-07-28 02:04:06','2023-07-31 00:00:00',1,10400,1),(7009,6045,'user04','2023-07-28 02:04:34','2023-08-06 00:00:00',1,21900,1),(7010,6060,'user05','2023-07-28 02:05:36','2023-07-31 00:00:00',1,9500,1);
/*!40000 ALTER TABLE `reservation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `schedules`
--

DROP TABLE IF EXISTS `schedules`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `schedules` (
  `id` int NOT NULL AUTO_INCREMENT,
  `hId` int NOT NULL,
  `conId` int NOT NULL,
  `conDate` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `hId` (`hId`),
  KEY `conId` (`conId`),
  CONSTRAINT `schedules_ibfk_1` FOREIGN KEY (`hId`) REFERENCES `concert_hall` (`id`),
  CONSTRAINT `schedules_ibfk_2` FOREIGN KEY (`conId`) REFERENCES `small_concert` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6078 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `schedules`
--

LOCK TABLES `schedules` WRITE;
/*!40000 ALTER TABLE `schedules` DISABLE KEYS */;
INSERT INTO `schedules` VALUES (6000,5000,3000,'2023-07-31 14:30:00'),(6001,5000,3000,'2023-08-01 14:30:00'),(6002,5000,3000,'2023-08-02 14:30:00'),(6003,5000,3000,'2023-08-03 14:30:00'),(6004,5000,3000,'2023-08-04 14:30:00'),(6005,5000,3000,'2023-08-05 14:30:00'),(6006,5000,3001,'2023-08-01 14:30:00'),(6007,5000,3001,'2023-08-02 14:30:00'),(6008,5000,3001,'2023-08-03 14:30:00'),(6009,5000,3001,'2023-08-04 14:30:00'),(6010,5000,3001,'2023-08-05 14:30:00'),(6011,5000,3001,'2023-08-06 14:30:00'),(6012,5000,3001,'2023-08-07 14:30:00'),(6013,5000,3002,'2023-08-01 14:30:00'),(6014,5000,3002,'2023-08-02 14:30:00'),(6015,5000,3002,'2023-08-03 14:30:00'),(6016,5000,3002,'2023-08-04 14:30:00'),(6017,5000,3002,'2023-08-05 14:30:00'),(6018,5000,3002,'2023-08-06 14:30:00'),(6019,5000,3003,'2023-08-01 14:30:00'),(6020,5000,3003,'2023-08-02 14:30:00'),(6021,5000,3003,'2023-08-03 14:30:00'),(6022,5000,3003,'2023-08-04 14:30:00'),(6023,5000,3003,'2023-08-05 14:30:00'),(6024,5000,3003,'2023-08-06 14:30:00'),(6025,5000,3004,'2023-08-01 14:30:00'),(6026,5000,3004,'2023-08-02 14:30:00'),(6027,5000,3004,'2023-08-03 14:30:00'),(6028,5000,3004,'2023-08-04 14:30:00'),(6029,5000,3004,'2023-08-05 14:30:00'),(6030,5000,3004,'2023-08-06 14:30:00'),(6031,5000,3005,'2023-08-01 14:30:00'),(6032,5000,3005,'2023-08-02 14:30:00'),(6033,5000,3005,'2023-08-03 14:30:00'),(6034,5000,3005,'2023-08-04 14:30:00'),(6035,5000,3005,'2023-08-05 14:30:00'),(6036,5000,3005,'2023-08-06 14:30:00'),(6037,5000,3006,'2023-07-31 14:30:00'),(6038,5000,3006,'2023-08-01 14:30:00'),(6039,5000,3006,'2023-08-02 14:30:00'),(6040,5000,3006,'2023-08-03 14:30:00'),(6041,5000,3006,'2023-08-04 14:30:00'),(6042,5000,3006,'2023-08-05 14:30:00'),(6043,5000,3007,'2023-08-04 14:30:00'),(6044,5000,3007,'2023-08-05 14:30:00'),(6045,5000,3007,'2023-08-06 14:30:00'),(6046,5000,3007,'2023-08-07 14:30:00'),(6047,5000,3008,'2023-07-29 14:30:00'),(6048,5000,3008,'2023-07-30 14:30:00'),(6049,5000,3008,'2023-07-31 14:30:00'),(6050,5000,3008,'2023-08-01 14:30:00'),(6051,5000,3008,'2023-08-02 14:30:00'),(6052,5000,3008,'2023-08-03 14:30:00'),(6053,5000,3008,'2023-08-04 14:30:00'),(6054,5000,3008,'2023-08-05 14:30:00'),(6055,5000,3008,'2023-08-06 14:30:00'),(6056,5000,3009,'2023-07-27 14:30:00'),(6057,5000,3009,'2023-07-28 14:30:00'),(6058,5000,3009,'2023-07-29 14:30:00'),(6059,5000,3009,'2023-07-30 14:30:00'),(6060,5000,3009,'2023-07-31 14:30:00'),(6061,5000,3009,'2023-08-01 14:30:00'),(6062,5000,3009,'2023-08-02 14:30:00'),(6063,5000,3009,'2023-08-03 14:30:00'),(6064,5000,3009,'2023-08-04 14:30:00'),(6065,5000,3009,'2023-08-05 14:30:00'),(6066,5000,3009,'2023-08-06 14:30:00'),(6067,5000,3009,'2023-08-07 14:30:00'),(6068,5000,3009,'2023-08-08 14:30:00'),(6069,5000,3009,'2023-08-09 14:30:00'),(6070,5000,3009,'2023-08-10 14:30:00'),(6071,5000,3009,'2023-08-11 14:30:00'),(6072,5000,3009,'2023-08-12 14:30:00'),(6073,5000,3010,'2023-08-01 14:30:00'),(6074,5000,3010,'2023-08-02 14:30:00'),(6075,5000,3010,'2023-08-03 14:30:00'),(6076,5000,3010,'2023-08-04 14:30:00'),(6077,5000,3010,'2023-08-05 14:30:00');
/*!40000 ALTER TABLE `schedules` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `small_concert`
--

DROP TABLE IF EXISTS `small_concert`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `small_concert` (
  `id` int NOT NULL AUTO_INCREMENT,
  `enterId` varchar(20) NOT NULL,
  `name` varchar(20) NOT NULL,
  `location` varchar(50) NOT NULL,
  `regDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `pname` varchar(20) NOT NULL,
  `viewCount` int NOT NULL DEFAULT '0',
  `price` int NOT NULL,
  `startDate` datetime NOT NULL,
  `lastDate` datetime NOT NULL,
  `image` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `enterId` (`enterId`),
  CONSTRAINT `small_concert_ibfk_1` FOREIGN KEY (`enterId`) REFERENCES `enterprise_member` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3011 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `small_concert`
--

LOCK TABLES `small_concert` WRITE;
/*!40000 ALTER TABLE `small_concert` DISABLE KEYS */;
INSERT INTO `small_concert` VALUES (3000,'enter01','뮤지컬<웨스트사이드스토리>','서울 중구 퇴계로 387','2023-07-27 02:44:35','㈜쇼노트',1,70000,'2023-07-31 00:00:00','2023-08-05 23:59:59','966fb928-1973-401c-aac2-5264ddc0e48d'),(3001,'enter01','연극<테베랜드>','서울 중구 퇴계로 387','2023-07-27 02:46:36','㈜쇼노트',1,66000,'2023-08-01 00:00:00','2023-08-07 23:59:59','adfc1ff5-4791-46ed-8938-4b29959166e7'),(3002,'enter05','연극라면','서울 종로구 대학로10길 5','2023-07-27 02:49:23','주식회사 엠컬쳐컴퍼니',1,16800,'2023-08-01 00:00:00','2023-08-06 23:59:59','acf47e6b-1da0-4f6e-a3ea-b17350b897ea'),(3003,'enter05','한뼘사이','서울 종로구 대학로10길 11','2023-07-27 02:50:43','주식회사 파릇',2,13900,'2023-08-01 00:00:00','2023-08-06 23:59:59','14def42d-347e-4860-bc1e-8280293d9fd8'),(3004,'enter05','쉬어매드니스','서울 종로구 동숭길 55','2023-07-27 02:51:51','주식회사 콘텐츠플래닝',1,13400,'2023-08-01 00:00:00','2023-08-06 23:59:59','e7d4369f-a7a4-4f43-9ec8-d3e98a5842e4'),(3005,'enter05','운빨로맨스','서울 종로구 대학로8가길 80','2023-07-27 02:53:33','컬쳐씨어터',1,15800,'2023-08-01 00:00:00','2023-08-06 23:59:59','b1aa0ae1-3589-4976-9374-c7cab10faf4f'),(3006,'enter05','김종욱찾기','서울 종로구 대학로8길 25','2023-07-27 02:54:55',' 주식회사 네오',2,10400,'2023-07-31 00:00:00','2023-08-05 23:59:59','2bec7f90-dcf0-47c8-88fa-6966569af9f3'),(3007,'enter05','코드네임X','서울 관악구 신림로3길 35','2023-07-27 02:56:01',' 으랏차차스토리',2,21900,'2023-08-04 00:00:00','2023-08-07 23:59:59','d1ccedf4-9383-4cfb-b373-091fddef3af2'),(3008,'enter05','난타','서울 중구 명동길 26','2023-07-27 02:57:12',' 주식회사 피엠씨프러덕션',2,26400,'2023-07-29 00:00:00','2023-08-06 23:59:59','14f0775a-d593-4773-b0e4-18b3abcc226e'),(3009,'enter05','코미디의맛/홍콩쇼/쇼미더퍼니','서울 마포구 와우산로21길 29','2023-07-27 02:59:08',' 윤형빈소극장',1,9500,'2023-07-27 00:00:00','2023-08-12 23:59:59','2e70b36d-919a-43cc-8f8d-85657ffe4dc5'),(3010,'enter05','런던 레코드','서울 종로구 인사동길 34','2023-07-27 03:00:01',' 엠스테이지',1,18000,'2023-08-01 00:00:00','2023-08-05 23:59:59','926ace7b-a2d7-404d-8c39-0aae86dddef8');
/*!40000 ALTER TABLE `small_concert` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `temp_booked`
--

DROP TABLE IF EXISTS `temp_booked`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `temp_booked` (
  `sId` int NOT NULL,
  `seatNum` varchar(20) NOT NULL,
  PRIMARY KEY (`sId`,`seatNum`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `temp_booked`
--

LOCK TABLES `temp_booked` WRITE;
/*!40000 ALTER TABLE `temp_booked` DISABLE KEYS */;
INSERT INTO `temp_booked` VALUES (6012,'E5'),(6017,'E3'),(6032,'E5'),(6037,'G3'),(6045,'D4'),(6047,'E5'),(6060,'E5'),(6073,'E4');
/*!40000 ALTER TABLE `temp_booked` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `id` int NOT NULL AUTO_INCREMENT,
  `rId` int NOT NULL,
  `seatNum` varchar(20) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `rId` (`rId`),
  CONSTRAINT `ticket_ibfk_1` FOREIGN KEY (`rId`) REFERENCES `reservation` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8012 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (8000,7000,'F5'),(8001,7001,'D3'),(8002,7002,'C3'),(8003,7003,'F3'),(8004,7004,'E4'),(8005,7005,'E5'),(8006,7006,'E3'),(8007,7007,'E5'),(8008,7008,'G3'),(8009,7009,'D4'),(8010,7010,'E5');
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'eumyurato'
--

--
-- Dumping routines for database 'eumyurato'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-02 23:34:58
