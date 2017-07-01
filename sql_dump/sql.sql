/*
SQLyog Ultimate v12.4.1 (64 bit)
MySQL - 5.7.18-15 : Database - events
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`events` /*!40100 DEFAULT CHARACTER SET ascii */;

USE `events`;

/*Table structure for table `counter` */

DROP TABLE IF EXISTS `counter`;

CREATE TABLE `counter` (
  `id` INT(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `date` DATE DEFAULT NULL,
  `country` CHAR(2) DEFAULT NULL,
  `action` SMALLINT(2) DEFAULT NULL,
  `counter` INT(11) DEFAULT '1',
  PRIMARY KEY (`id`),
  UNIQUE KEY `data` (`country`,`action`,`date`)
) ENGINE=MYISAM AUTO_INCREMENT=3880408 DEFAULT CHARSET=ASCII;

/*Table structure for table `countries` */

DROP TABLE IF EXISTS `countries`;

CREATE TABLE `countries` (
  `id` INT(3) UNSIGNED NOT NULL AUTO_INCREMENT,
  `code` CHAR(2) NOT NULL,
  `title` VARCHAR(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MYISAM AUTO_INCREMENT=246 DEFAULT CHARSET=ASCII;

INSERT INTO `countries` (`id`, `code`, `title`) VALUES('1','AF','Afghanistan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('2','AL','Albania');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('3','DZ','Algeria');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('4','DS','American Samoa');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('5','AD','Andorra');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('6','AO','Angola');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('7','AI','Anguilla');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('8','AQ','Antarctica');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('9','AG','Antigua and Barbuda');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('10','AR','Argentina');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('11','AM','Armenia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('12','AW','Aruba');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('13','AU','Australia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('14','AT','Austria');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('15','AZ','Azerbaijan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('16','BS','Bahamas');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('17','BH','Bahrain');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('18','BD','Bangladesh');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('19','BB','Barbados');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('20','BY','Belarus');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('21','BE','Belgium');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('22','BZ','Belize');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('23','BJ','Benin');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('24','BM','Bermuda');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('25','BT','Bhutan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('26','BO','Bolivia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('27','BA','Bosnia and Herzegovina');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('28','BW','Botswana');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('29','BV','Bouvet Island');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('30','BR','Brazil');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('31','IO','British Indian Ocean Territory');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('32','BN','Brunei Darussalam');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('33','BG','Bulgaria');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('34','BF','Burkina Faso');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('35','BI','Burundi');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('36','KH','Cambodia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('37','CM','Cameroon');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('38','CA','Canada');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('39','CV','Cape Verde');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('40','KY','Cayman Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('41','CF','Central African Republic');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('42','TD','Chad');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('43','CL','Chile');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('44','CN','China');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('45','CX','Christmas Island');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('46','CC','Cocos (Keeling) Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('47','CO','Colombia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('48','KM','Comoros');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('49','CG','Congo');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('50','CK','Cook Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('51','CR','Costa Rica');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('52','HR','Croatia (Hrvatska)');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('53','CU','Cuba');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('54','CY','Cyprus');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('55','CZ','Czech Republic');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('56','DK','Denmark');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('57','DJ','Djibouti');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('58','DM','Dominica');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('59','DO','Dominican Republic');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('60','TP','East Timor');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('61','EC','Ecuador');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('62','EG','Egypt');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('63','SV','El Salvador');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('64','GQ','Equatorial Guinea');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('65','ER','Eritrea');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('66','EE','Estonia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('67','ET','Ethiopia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('68','FK','Falkland Islands (Malvinas)');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('69','FO','Faroe Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('70','FJ','Fiji');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('71','FI','Finland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('72','FR','France');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('73','FX','France, Metropolitan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('74','GF','French Guiana');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('75','PF','French Polynesia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('76','TF','French Southern Territories');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('77','GA','Gabon');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('78','GM','Gambia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('79','GE','Georgia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('80','DE','Germany');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('81','GH','Ghana');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('82','GI','Gibraltar');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('83','GK','Guernsey');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('84','GR','Greece');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('85','GL','Greenland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('86','GD','Grenada');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('87','GP','Guadeloupe');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('88','GU','Guam');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('89','GT','Guatemala');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('90','GN','Guinea');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('91','GW','Guinea-Bissau');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('92','GY','Guyana');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('93','HT','Haiti');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('94','HM','Heard and Mc Donald Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('95','HN','Honduras');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('96','HK','Hong Kong');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('97','HU','Hungary');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('98','IS','Iceland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('99','IN','India');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('100','IM','Isle of Man');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('101','ID','Indonesia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('102','IR','Iran (Islamic Republic of)');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('103','IQ','Iraq');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('104','IE','Ireland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('105','IL','Israel');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('106','IT','Italy');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('107','CI','Ivory Coast');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('108','JE','Jersey');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('109','JM','Jamaica');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('110','JP','Japan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('111','JO','Jordan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('112','KZ','Kazakhstan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('113','KE','Kenya');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('114','KI','Kiribati');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('115','KP','Korea, Democratic People\'s Republic of');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('116','KR','Korea, Republic of');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('117','XK','Kosovo');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('118','KW','Kuwait');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('119','KG','Kyrgyzstan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('120','LA','Lao People\'s Democratic Republic');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('121','LV','Latvia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('122','LB','Lebanon');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('123','LS','Lesotho');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('124','LR','Liberia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('125','LY','Libyan Arab Jamahiriya');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('126','LI','Liechtenstein');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('127','LT','Lithuania');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('128','LU','Luxembourg');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('129','MO','Macau');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('130','MK','Macedonia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('131','MG','Madagascar');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('132','MW','Malawi');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('133','MY','Malaysia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('134','MV','Maldives');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('135','ML','Mali');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('136','MT','Malta');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('137','MH','Marshall Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('138','MQ','Martinique');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('139','MR','Mauritania');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('140','MU','Mauritius');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('141','TY','Mayotte');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('142','MX','Mexico');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('143','FM','Micronesia, Federated States of');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('144','MD','Moldova, Republic of');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('145','MC','Monaco');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('146','MN','Mongolia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('147','ME','Montenegro');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('148','MS','Montserrat');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('149','MA','Morocco');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('150','MZ','Mozambique');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('151','MM','Myanmar');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('152','NA','Namibia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('153','NR','Nauru');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('154','NP','Nepal');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('155','NL','Netherlands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('156','AN','Netherlands Antilles');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('157','NC','New Caledonia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('158','NZ','New Zealand');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('159','NI','Nicaragua');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('160','NE','Niger');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('161','NG','Nigeria');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('162','NU','Niue');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('163','NF','Norfolk Island');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('164','MP','Northern Mariana Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('165','NO','Norway');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('166','OM','Oman');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('167','PK','Pakistan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('168','PW','Palau');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('169','PS','Palestine');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('170','PA','Panama');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('171','PG','Papua New Guinea');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('172','PY','Paraguay');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('173','PE','Peru');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('174','PH','Philippines');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('175','PN','Pitcairn');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('176','PL','Poland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('177','PT','Portugal');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('178','PR','Puerto Rico');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('179','QA','Qatar');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('180','RE','Reunion');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('181','RO','Romania');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('182','RU','Russian Federation');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('183','RW','Rwanda');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('184','KN','Saint Kitts and Nevis');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('185','LC','Saint Lucia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('186','VC','Saint Vincent and the Grenadines');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('187','WS','Samoa');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('188','SM','San Marino');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('189','ST','Sao Tome and Principe');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('190','SA','Saudi Arabia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('191','SN','Senegal');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('192','RS','Serbia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('193','SC','Seychelles');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('194','SL','Sierra Leone');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('195','SG','Singapore');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('196','SK','Slovakia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('197','SI','Slovenia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('198','SB','Solomon Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('199','SO','Somalia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('200','ZA','South Africa');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('201','GS','South Georgia South Sandwich Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('202','ES','Spain');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('203','LK','Sri Lanka');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('204','SH','St. Helena');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('205','PM','St. Pierre and Miquelon');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('206','SD','Sudan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('207','SR','Suriname');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('208','SJ','Svalbard and Jan Mayen Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('209','SZ','Swaziland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('210','SE','Sweden');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('211','CH','Switzerland');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('212','SY','Syrian Arab Republic');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('213','TW','Taiwan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('214','TJ','Tajikistan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('215','TZ','Tanzania, United Republic of');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('216','TH','Thailand');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('217','TG','Togo');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('218','TK','Tokelau');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('219','TO','Tonga');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('220','TT','Trinidad and Tobago');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('221','TN','Tunisia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('222','TR','Turkey');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('223','TM','Turkmenistan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('224','TC','Turks and Caicos Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('225','TV','Tuvalu');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('226','UG','Uganda');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('227','UA','Ukraine');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('228','AE','United Arab Emirates');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('229','GB','United Kingdom');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('230','US','United States');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('231','UM','United States minor outlying islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('232','UY','Uruguay');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('233','UZ','Uzbekistan');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('234','VU','Vanuatu');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('235','VA','Vatican City State');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('236','VE','Venezuela');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('237','VN','Vietnam');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('238','VG','Virgin Islands (British)');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('239','VI','Virgin Islands (U.S.)');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('240','WF','Wallis and Futuna Islands');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('241','EH','Western Sahara');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('242','YE','Yemen');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('243','ZR','Zaire');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('244','ZM','Zambia');
INSERT INTO `countries` (`id`, `code`, `title`) VALUES('245','ZW','Zimbabwe');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
