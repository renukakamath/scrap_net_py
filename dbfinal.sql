/*
SQLyog Community v13.1.6 (64 bit)
MySQL - 5.7.9 : Database - scrap_net
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`scrap_net` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `scrap_net`;

/*Table structure for table `car_details` */

DROP TABLE IF EXISTS `car_details`;

CREATE TABLE `car_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `car_model` varchar(30) DEFAULT NULL,
  `engineno` varchar(20) DEFAULT NULL,
  `chasesno` varchar(30) DEFAULT NULL,
  `seater` varchar(23) DEFAULT NULL,
  `regno` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `car_details` */

insert  into `car_details`(`id`,`lid`,`car_model`,`engineno`,`chasesno`,`seater`,`regno`) values 
(1,7,'dgh','123456','123456','4','kl8989'),
(2,7,'i10','qwertyuio','qwertyuiop','5','qwerty'),
(3,7,'bmw','2222','123','4','1234'),
(4,10,'breeza','123','345','4','1234'),
(5,7,'helo','456','56','4','1234'),
(6,10,'odi','333','33','2','456'),
(7,7,'maruthi','34','23','12','345'),
(8,10,'hyundai','4532','678967','6','KL 56789'),
(9,10,'aleena','123456','23456789','5','2345678');

/*Table structure for table `carstatus` */

DROP TABLE IF EXISTS `carstatus`;

CREATE TABLE `carstatus` (
  `cid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `carstatus` */

insert  into `carstatus`(`cid`) values 
(1),
(2),
(4),
(5),
(3),
(6),
(8);

/*Table structure for table `certificate` */

DROP TABLE IF EXISTS `certificate`;

CREATE TABLE `certificate` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reqid` int(11) DEFAULT NULL,
  `slid` int(11) DEFAULT NULL,
  `certificate` varchar(100) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `certificate` */

insert  into `certificate`(`id`,`reqid`,`slid`,`certificate`,`date`) values 
(1,1,4,'generated','2022-05-02');

/*Table structure for table `complaint` */

DROP TABLE IF EXISTS `complaint`;

CREATE TABLE `complaint` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `complaint` varchar(20) DEFAULT NULL,
  `reply` varchar(30) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `complaint` */

insert  into `complaint`(`id`,`lid`,`complaint`,`reply`,`date`) values 
(1,7,'fjhk,',' mnmnkjb','2022-03-09'),
(2,7,'ghjghj','gfjhfgjh','2022-03-30'),
(3,10,'very poor','dont worry','2022-10-15'),
(4,7,'not good','pending','2022-10-15');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(20) NOT NULL,
  `password` varchar(30) NOT NULL,
  `type` varchar(30) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`id`,`username`,`password`,`type`) values 
(1,'rto','123','admin'),
(2,'Anu@','Anukkk@123','pending'),
(3,'minu','Minu@123','pending'),
(4,'minu','123','scraper'),
(5,'xhnb','hfdchgjb','scraper'),
(6,'kichu','Kichu@123','reject'),
(7,'anju','anju','user'),
(8,'san','Sandra@123','scraper'),
(9,'peter','Peter12@','pending'),
(10,'santo','Santo12@','user');

/*Table structure for table `price_info` */

DROP TABLE IF EXISTS `price_info`;

CREATE TABLE `price_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `reqid` int(11) DEFAULT NULL,
  `price` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `price_info` */

insert  into `price_info`(`id`,`reqid`,`price`) values 
(1,1,500),
(2,5,50000),
(3,6,35000);

/*Table structure for table `rating` */

DROP TABLE IF EXISTS `rating`;

CREATE TABLE `rating` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ulid` int(11) DEFAULT NULL,
  `slid` int(11) DEFAULT NULL,
  `rating` varchar(40) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `rating` */

insert  into `rating`(`id`,`ulid`,`slid`,`rating`,`date`) values 
(1,7,4,'1234','2022-03-09'),
(2,7,5,'xgfhnb','2022-03-09'),
(3,10,9,'6','2022-10-15'),
(4,7,8,'6','2022-10-15');

/*Table structure for table `scrap` */

DROP TABLE IF EXISTS `scrap`;

CREATE TABLE `scrap` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `place` varchar(20) DEFAULT NULL,
  `post` varchar(34) DEFAULT NULL,
  `pin` bigint(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `scrap` */

insert  into `scrap`(`id`,`lid`,`fname`,`lname`,`place`,`post`,`pin`,`email`,`phone`) values 
(1,4,'min','anu','shop','lkjhgf',678905,'min@gmail.com',9087654321),
(2,5,'nfhjm','mb','mnb,m','hcjhb',123456,'zfcxvcnb',98765432),
(3,6,'kichu','anu','shop','xgcjhm',678954,'kichu@gmail.com',9087654321),
(4,8,'Sandra','peter','etfdfdf','ffgfgf',682006,'santoachu@gmail.com',7994155226),
(5,9,'peter','ip','ernakulam','ernakulam',682503,'peter123@gmail.com',7994155226);

/*Table structure for table `scraprequest` */

DROP TABLE IF EXISTS `scraprequest`;

CREATE TABLE `scraprequest` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `carid` int(11) DEFAULT NULL,
  `status` varchar(40) DEFAULT NULL,
  `date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `scraprequest` */

insert  into `scraprequest`(`id`,`lid`,`carid`,`status`,`date`) values 
(1,4,2,'generated','2022-05-02'),
(3,8,4,'verified','2022-10-15'),
(4,8,5,'verifiedrto_accepted','2022-10-15'),
(5,8,6,'rto_accepted','2022-10-15'),
(6,8,8,'rto_accepted','2022-10-15'),
(7,8,9,'pending','2022-10-15');

/*Table structure for table `user` */

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `lid` int(11) DEFAULT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `gender` varchar(30) DEFAULT NULL,
  `place` varchar(30) DEFAULT NULL,
  `post` varchar(30) DEFAULT NULL,
  `pin` bigint(20) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phone` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `user` */

insert  into `user`(`id`,`lid`,`fname`,`lname`,`gender`,`place`,`post`,`pin`,`email`,`phone`) values 
(1,7,'sanah','kkkk','female','dfxcgvhj','dxfgch',897654,'sanah@gmail.com',8976543210),
(2,10,'Sandra','peter','female','ernakiulam','ernakulam',682503,'santoachu@gmail.com',7025603808);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
