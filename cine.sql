

DROP TABLE IF EXISTS `dvd`;
CREATE TABLE `dvd` (
  `iddvd` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `titre` varchar(200) DEFAULT NULL,
  `an` year(4) DEFAULT NULL,
  `duree` int(3) unsigned DEFAULT NULL,
  `Note` tinyint(2) unsigned DEFAULT NULL,
  `Commentaire` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`iddvd`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;


INSERT INTO `dvd` VALUES (1,'Scarface',1984,165,6,'\r'),(2,'Incassable',2000,106,7,'\r'),(3,'Titanic',1998,194,5,'\r'),(4,'36, Quai des Orfevres',2004,110,5,'\r'),(5,'Out of Africa',1985,150,4,'\r'),(6,'Casino',1996,178,10,'\r'),(7,'Die Hard 4',2007,140,4,'\r'),(8,'Underworld 3',2009,91,4,'\r'),(9,'Dragon Ball Evolution',2009,89,1,'\r'),(10,'Kung-fu Panda',2008,90,9,'\r'),(11,'oss 117',2009,99,6,'\r'),(12,'Celle que j\'aime',2009,103,5,'\r'),(13,'Mission to Mars',2000,113,5,'\r'),(14,'Aliens',1986,137,9,'\r'),(15,'Jeremiah Johnson',1972,108,9,'\r'),(16,'Phenomene',2008,90,4,'J\'ai bien dormi...\r'),(17,'Le boulet',2002,100,1,'C\'est qui le boulet, le réalisateur ?\r'),(18,'Terminator',1985,108,7,'\r'),(19,'Scary Movie 4',2006,83,4,'Pas bon !!!');


--
-- Table structure for table `dvdreal`
--

DROP TABLE IF EXISTS `dvdreal`;

CREATE TABLE `dvdreal` (
  `idreal` int(6) unsigned NOT NULL DEFAULT '0',
  `iddvd` int(6) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`idreal`,`iddvd`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


--
-- Dumping data for table `dvdreal`
--


INSERT INTO `dvdreal` VALUES (1,1),(1,13),(2,2),(2,16),(3,3),(3,14),(3,18),(4,4),(5,5),(5,15),(6,6),(7,7),(8,8),(9,9),(10,10),(11,10),(12,11),(13,12),(14,17),(15,19);


--
-- Table structure for table `realisateur`
--

DROP TABLE IF EXISTS `realisateur`;
CREATE TABLE `realisateur` (
  `idreal` int(6) unsigned NOT NULL AUTO_INCREMENT,
  `prenom` varchar(20) DEFAULT NULL,
  `nom` varchar(20) DEFAULT NULL,
  `naissance` date NOT NULL,
  PRIMARY KEY (`idreal`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `realisateur`
--

INSERT INTO `realisateur` VALUES (1,'Brian','De Palma','1940-09-11'),(2,'Mike','Night Shyamalan','1970-08-06'),(3,'James','Cameron','1954-08-16'),(4,'Olivier','Marchal','1958-11-14'),(5,'Sydney','Pollack','1934-07-01'),(6,'Martin','Scorsese','1942-11-17'),(7,'Len','Wiseman','1973-03-04'),(8,'Patrick','Tatopoulos','1950-03-20'),(9,'James','Wong','1961-12-12'),(10,'Marc','Osbornes','1970-01-01'),(11,'John','Stevenson','1970-01-01'),(12,'Michel','Hazanavicius','1970-01-01'),(13,'Elie','Chouraqui','1950-07-03'),(14,'Alain','Berbebian','1970-01-01'),(15,'David','Zucker','1947-10-16');

