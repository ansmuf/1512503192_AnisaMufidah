# Host: localhost  (Version 5.5.5-10.1.30-MariaDB)
# Date: 2018-05-18 20:12:29
# Generator: MySQL-Front 6.0  (Build 2.20)


#
# Structure for table "categories"
#

CREATE TABLE `categories` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

#
# Data for table "categories"
#

INSERT INTO `categories` VALUES (1,'2018-05-18 10:25:52',NULL,'2018-05-18 10:32:28','Biology'),(2,'2018-05-18 10:28:26','2018-05-18 11:05:50','2018-05-18 11:05:50','Novel'),(3,'2018-05-18 10:29:44',NULL,'2018-05-18 10:29:44','Comic');

#
# Structure for table "books"
#

CREATE TABLE `books` (
  `Id` bigint(20) NOT NULL AUTO_INCREMENT,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `deleted_at` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `category_id` bigint(20) DEFAULT NULL,
  `title` varchar(150) DEFAULT NULL,
  `isbn` varchar(20) DEFAULT NULL,
  `author` varchar(50) DEFAULT NULL,
  `genre` varchar(50) DEFAULT NULL,
  `country` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  KEY `category_id` (`category_id`),
  CONSTRAINT `books_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

#
# Data for table "books"
#

INSERT INTO `books` VALUES (1,'2018-05-18 19:37:48','2018-05-18 19:37:48',NULL,1,'harry potter','34529756792462175671','MUFIDAH','horror','indonesia'),(2,'2018-05-18 19:43:56','2018-05-18 19:43:56',NULL,1,'Twilight','123123','Anisa','Vampire','Indonesia'),(3,'2018-05-18 19:44:04','2018-05-18 19:44:04',NULL,1,'Twilight','123123','Anisa','Vampire','Indonesia');
