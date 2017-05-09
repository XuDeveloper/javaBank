# Host: localhost  (Version: 5.5.53)
# Date: 2017-05-09 11:45:52
# Generator: MySQL-Front 5.3  (Build 4.234)

/*!40101 SET NAMES utf8 */;

#
# Structure for table "adminuser"
#

DROP TABLE IF EXISTS `adminuser`;
CREATE TABLE `adminuser` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `ad_account` varchar(25) DEFAULT '',
  `ad_pass` varchar(255) DEFAULT '',
  `ad_sucode` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `ad_account` (`ad_account`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

#
# Data for table "adminuser"
#

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES (3,'xu','202cb962ac59075b964b07152d234b70','66666'),(4,'xu1','202cb962ac59075b964b07152d234b70','66667778888'),(5,'sucy','fae0b27c451c728867a567e8c1bb4e53','12345'),(6,'xu6666','81dc9bdb52d04dc20036dbd8313ed055','67890'),(8,'xu2','202cb962ac59075b964b07152d234b70','6677'),(9,'xu3','0a113ef6b61820daa5611c870ed8d5ee','88888'),(10,'xu33','698d51a19d8a121ce581499d7b701668','111');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;

#
# Structure for table "customer"
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cu_id` varchar(20) NOT NULL DEFAULT '0',
  `cu_name` varchar(20) NOT NULL DEFAULT '',
  `cu_PIN` varchar(50) NOT NULL DEFAULT '',
  `balance` int(11) NOT NULL DEFAULT '0',
  `accountNum` varchar(14) NOT NULL DEFAULT '',
  `cardNum` varchar(16) NOT NULL DEFAULT '',
  `accountStatus` text NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `cu_id` (`cu_id`),
  UNIQUE KEY `cu_PIN` (`accountNum`,`cardNum`,`cu_name`)
) ENGINE=MyISAM AUTO_INCREMENT=123123124 DEFAULT CHARSET=utf8;

#
# Data for table "customer"
#

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'123','xu','666',27181,'11111112222222','1111111222222233','Not Available');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
