# Host: localhost  (Version: 5.5.53)
# Date: 2017-05-16 20:31:21
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
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

#
# Data for table "adminuser"
#

/*!40000 ALTER TABLE `adminuser` DISABLE KEYS */;
INSERT INTO `adminuser` VALUES (3,'xu','202cb962ac59075b964b07152d234b70','66666'),(4,'xu1','202cb962ac59075b964b07152d234b70','66667778888'),(5,'sucy','fae0b27c451c728867a567e8c1bb4e53','12345'),(6,'xu6666','81dc9bdb52d04dc20036dbd8313ed055','67890'),(8,'xu2','202cb962ac59075b964b07152d234b70','6677'),(9,'xu3','0a113ef6b61820daa5611c870ed8d5ee','88888'),(10,'xu33','698d51a19d8a121ce581499d7b701668','111'),(12,'we','202cb962ac59075b964b07152d234b70','123');
/*!40000 ALTER TABLE `adminuser` ENABLE KEYS */;

#
# Structure for table "customer"
#

DROP TABLE IF EXISTS `customer`;
CREATE TABLE `customer` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `cu_id` varchar(40) NOT NULL DEFAULT '0',
  `cu_pwd` varchar(255) DEFAULT NULL,
  `cu_nickname` varchar(255) DEFAULT NULL,
  `cu_name` varchar(20) NOT NULL DEFAULT '',
  `cu_PIN` varchar(50) DEFAULT '',
  `cu_email` varchar(255) DEFAULT NULL,
  `balance` int(11) NOT NULL DEFAULT '0',
  `accountNum` varchar(14) NOT NULL DEFAULT '',
  `cardNum` varchar(16) NOT NULL DEFAULT '',
  `accountStatus` text NOT NULL,
  `code` varchar(64) DEFAULT NULL,
  `status` int(11) DEFAULT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `cu_id` (`cu_id`),
  UNIQUE KEY `cu_name` (`cu_name`),
  UNIQUE KEY `cu_email` (`cu_email`)
) ENGINE=MyISAM AUTO_INCREMENT=123123124 DEFAULT CHARSET=utf8;

#
# Data for table "customer"
#

/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES (1,'123','202cb962ac59075b964b07152d234b70','xu11','xu1','666','123@qq.com',27181,'11111112222222','1111111222222233','Not Available',NULL,0),(3,'66666','',NULL,'we','1223',NULL,436000,'34727000250192','2748589852073538','Not Available',NULL,0),(5,'123456789012345678','38c2e71bfd1bdcf633d6a776cb5bf06d','xu','zhaoxu','654321','customer@banking.com',0,'44996955247223','3012982224132386','Not Available','',1),(6,'1234569999999999',NULL,NULL,'lalala','666666',NULL,0,'97275658040117','8053774327628305','Not Available',NULL,NULL),(7,'6666666666666666',NULL,NULL,'yui','123466',NULL,0,'33288220134844','4460792190709296','Not Available',NULL,NULL);
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
