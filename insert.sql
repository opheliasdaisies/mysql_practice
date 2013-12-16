# ************************************************************
# Sequel Pro SQL dump
# Version 4096
#
# http://www.sequelpro.com/
# http://code.google.com/p/sequel-pro/
#
# Host: 127.0.0.1 (MySQL 5.6.13)
# Database: schema.sql
# Generation Time: 2013-12-16 21:32:26 +0000
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table answers
# ------------------------------------------------------------

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  `choice_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;



# Dump of table choices
# ------------------------------------------------------------

DROP TABLE IF EXISTS `choices`;

CREATE TABLE `choices` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `correct` tinyint(1) DEFAULT NULL,
  `question_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=utf8;

LOCK TABLES `choices` WRITE;
/*!40000 ALTER TABLE `choices` DISABLE KEYS */;

INSERT INTO `choices` (`id`, `content`, `correct`, `question_id`)
VALUES
	(1,'not at all',0,1),
	(2,'a little',0,1),
	(3,'a lot',0,1),
	(4,'an incredible amount',1,1),
	(5,'not all all',1,2),
	(6,'a little',0,2),
	(7,'a lot',0,2),
	(8,'an incredible amount',0,2),
	(9,'a month',0,3),
	(10,'a year',1,3),
	(11,'a decade',0,3),
	(12,'a century',0,3),
	(13,'24',0,4),
	(14,'26',1,4),
	(15,'28',0,4),
	(16,'30',0,4),
	(17,'1',0,5),
	(18,'2',0,5),
	(19,'3',1,5),
	(20,'4',0,5),
	(21,'1',0,6),
	(22,'2',0,6),
	(23,'3',1,6),
	(24,'4',0,6),
	(25,'oink',0,7),
	(26,'naay',0,7),
	(27,'moo',1,7),
	(28,'cock-a-doodle-doo',0,7),
	(29,'oink',0,8),
	(30,'naay',0,8),
	(31,'moo',0,8),
	(32,'too much',1,8),
	(33,'juice',0,9),
	(34,'soda',0,9),
	(35,'water',0,9),
	(36,'bleach',1,9),
	(37,'stop tormenting me with riddles',1,10),
	(38,'nothing',0,10),
	(39,'all the wood',0,10),
	(40,'one piece',0,10);

/*!40000 ALTER TABLE `choices` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table questions
# ------------------------------------------------------------

DROP TABLE IF EXISTS `questions`;

CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `content` text,
  `quiz_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;

INSERT INTO `questions` (`id`, `content`, `quiz_id`)
VALUES
	(1,'How much do I love apples?',1),
	(2,'How much do I love blueberries?',1),
	(3,'How old is the class pet?',1),
	(4,'How many letters are in the alphabet?',1),
	(5,'How many primary colors are there?',1),
	(6,'How many parts do bananas naturally split into?',2),
	(7,'What do cows say?',2),
	(8,'What does the fox say?',2),
	(9,'What liquid is most hazardous to your health?',2),
	(10,'How much wood would a woodchuck chuck if a woodchuck could chuck wood?',2);

/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table quizzes
# ------------------------------------------------------------

DROP TABLE IF EXISTS `quizzes`;

CREATE TABLE `quizzes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

LOCK TABLES `quizzes` WRITE;
/*!40000 ALTER TABLE `quizzes` DISABLE KEYS */;

INSERT INTO `quizzes` (`id`, `name`)
VALUES
	(1,'Red'),
	(2,'Blue');

/*!40000 ALTER TABLE `quizzes` ENABLE KEYS */;
UNLOCK TABLES;


# Dump of table users
# ------------------------------------------------------------

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` text,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;

INSERT INTO `users` (`id`, `name`)
VALUES
	(1,'Sara'),
	(2,'Keith'),
	(3,'John');

/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;



/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
