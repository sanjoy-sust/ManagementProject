/*
SQLyog Community v10.5 
MySQL - 5.0.45-community-nt : Database - management
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`management` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `management`;

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` bigint(20) NOT NULL auto_increment,
  `name` varchar(500) default NULL,
  `fullName` varchar(2000) default NULL,
  `password` varchar(2000) default NULL,
  `address` varchar(2000) default NULL,
  `email` varchar(2000) default NULL,
  `gender` varchar(2000) default NULL,
  `occupation` varchar(2000) default NULL,
  `nationality` varchar(2000) default NULL,
  `nationalId` varchar(2000) default NULL,
  `designation` varchar(2000) default NULL,
  `birthDate` date default NULL,
  PRIMARY KEY  (`id`),
  UNIQUE KEY `UNIQUE` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`name`,`fullName`,`password`,`address`,`email`,`gender`,`occupation`,`nationality`,`nationalId`,`designation`,`birthDate`) values (4,'sanjoysust','Sanjoy Kumer Deb','111111','72,East Basaboo,Dhaka','sanjoy@bs.com','Male','Service holder','Bangladeshi','01235698568','Software Engineer',NULL),(5,'mitun','Mitun Deb','111111','Dhaka','sanjoy@bs.com','Male','Service holder','Bangladeshi','01235698566','Software Engineer',NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
