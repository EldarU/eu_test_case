CREATE TABLE `counter` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `date` date DEFAULT NULL,
  `state` char(2) DEFAULT NULL,
  `action` smallint(2) DEFAULT NULL,
  `counter` int(11) DEFAULT '0',
  PRIMARY KEY (`id`),
  UNIQUE KEY `data` (`state`,`action`,`date`)
) ENGINE=MyISAM DEFAULT CHARSET=ascii

CREATE TABLE `countries` (
  `id` int(3) unsigned NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=246 DEFAULT CHARSET=ascii
