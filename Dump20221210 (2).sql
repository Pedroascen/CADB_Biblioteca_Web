CREATE DATABASE  IF NOT EXISTS `biblioteca` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `biblioteca`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: localhost    Database: biblioteca
-- ------------------------------------------------------
-- Server version	5.7.36

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
-- Table structure for table `autor`
--

DROP TABLE IF EXISTS `autor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `autor` (
  `idautor` int(11) NOT NULL,
  `autor` varchar(100) NOT NULL,
  PRIMARY KEY (`idautor`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `autor`
--

LOCK TABLES `autor` WRITE;
/*!40000 ALTER TABLE `autor` DISABLE KEYS */;
INSERT INTO `autor` VALUES (1,'Horstmann, Cay S.'),(2,'Montero Miguel, Roberto'),(3,'Schildt, Herbert'),(4,'Deitel, Harvey'),(5,'Flanagan, David'),(6,'Varios'),(7,'AC/DC'),(8,'Esquilo'),(9,'Guardado Alvarenga, Gerardo | Lozano Leiva, Néstor | Sandoval Lemus, Luis');
/*!40000 ALTER TABLE `autor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `IdCD` int(11) NOT NULL,
  `CodigoMaterialC` varchar(10) NOT NULL,
  `autor` int(11) NOT NULL,
  `pais_publicacion` int(11) NOT NULL,
  `ciudad_publicacion` int(11) NOT NULL,
  `anio_publicacion` year(4) NOT NULL,
  `volumen` int(11) NOT NULL,
  `idioma` varchar(255) NOT NULL,
  `tema` varchar(25) NOT NULL,
  PRIMARY KEY (`IdCD`),
  KEY `CodigoMaterialC_idx` (`CodigoMaterialC`),
  CONSTRAINT `CodigoMaterialC` FOREIGN KEY (`CodigoMaterialC`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cd`
--

LOCK TABLES `cd` WRITE;
/*!40000 ALTER TABLE `cd` DISABLE KEYS */;
INSERT INTO `cd` VALUES (1,'CDS0000001',7,60,60,2002,3,'Inglés','T.N.T');
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `idciudad` int(11) NOT NULL,
  `ciudad` varchar(45) NOT NULL,
  `IDpais` int(11) NOT NULL,
  PRIMARY KEY (`idciudad`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
INSERT INTO `ciudad` VALUES (1,'Kabul',1),(2,'Tirana',2),(3,'Berlín',3),(4,'Andorra la Vieja',4),(5,'Luanda',5),(6,'Saint John',6),(7,'Riad',7),(8,'Argel',8),(9,'Buenos Aires',9),(10,'Ereván',10),(11,'Canberra',11),(12,'Viena',12),(13,'Bakú',13),(14,'Nasáu',14),(15,'Daca',15),(16,'Bridgetown',16),(17,'Manama',17),(18,'Bruselas',18),(19,'Belmopán',19),(20,'Porto-Novo',20),(21,'Minsk',21),(22,'Naipyidó',22),(23,'Sucre',23),(24,'Sarajevo',24),(25,'Gaborone',25),(26,'Brasilia',26),(27,'Bandar Seri Begawan',27),(28,'Sofía',28),(29,'Uagadugú',29),(30,'Buyumbura',30),(31,'Thimphu',31),(32,'Praia',32),(33,'Nom Pen',33),(34,'Yaundé',34),(35,'Ottawa',35),(36,'Doha',36),(37,'Yamena',37),(38,'Santiago',38),(39,'Pekín',39),(40,'Nicosia',40),(41,'Bogotá',41),(42,'Moroni',42),(43,'Brazzaville',43),(44,'Pionyang',44),(45,'Seúl',45),(46,'Yamusukro',46),(47,'San José',47),(48,'Zagreb',48),(49,'La Habana',49),(50,'Copenhague',50),(51,'Roseau',51),(52,'Quito',52),(53,'El Cairo',53),(54,'San Salvador',54),(55,'Abu Dabi',55),(56,'Asmara',56),(57,'Bratislava',57),(58,'Liubliana',58),(59,'Madrid',59),(60,'Washington D. C.',60),(61,'Tallin',61),(62,'Mbabane',62),(63,'Adís Abeba',63),(64,'Manila',64),(65,'Helsinki',65),(66,'Suva',66),(67,'París',67),(68,'Libreville',68),(69,'Banjul',69),(70,'Tiflis',70),(71,'Accra',71),(72,'Saint George',72),(73,'Atenas',73),(74,'Guatemala',74),(75,'Conakri',75),(76,'Malabo',76),(77,'Bisáu',77),(78,'Georgetown',78),(79,'Puerto Príncipe',79),(80,'Tegucigalpa',80),(81,'Budapest',81),(82,'Nueva Delhi',82),(83,'Yakarta',83),(84,'Bagdad',84),(85,'Teherán',85),(86,'Dublín',86),(87,'Reikiavik',87),(88,'Majuro',88),(89,'Honiara',89),(90,'Jerusalén',90),(91,'Roma',91),(92,'Kingston',92),(93,'Tokio',93),(94,'Amán',94),(95,'Astaná',95),(96,'Nairobi',96),(97,'Biskek',97),(98,'Tarawa',98),(99,'Pristina',99),(100,'Kuwait City',100),(101,'Vientián',101),(102,'Maseru',102),(103,'Riga',103),(104,'Beirut',104),(105,'Monrovia',105),(106,'Trípoli',106),(107,'Vaduz',107),(108,'Vilna',108),(109,'Luxemburgo',109),(110,'Skopie',110),(111,'Antananarivo',111),(112,'Kuala Lumpur',112),(113,'Lilongüe',113),(114,'Malé',114),(115,'Bamako',115),(116,'La Valeta',116),(117,'Rabat',117),(118,'Port Louis',118),(119,'Nuakchot',119),(120,'México',120),(121,'Palikir',121),(122,'Chisináu',122),(123,'Mónaco',123),(124,'Ulán Bator',124),(125,'Podgorica',125),(126,'Maputo',126),(127,'Windhoek',127),(128,'Yaren',128),(129,'Katmandú',129),(130,'Managua',130),(131,'Niamey',131),(132,'Abuya',132),(133,'Oslo',133),(134,'Wellington',134),(135,'Mascate',135),(136,'Ámsterdam',136),(137,'Islamabad',137),(138,'Melekeok',138),(139,'Jerusalén Este',139),(140,'Panamá',140),(141,'Puerto Moresby',141),(142,'Asunción',142),(143,'Lima',143),(144,'Varsovia',144),(145,'Lisboa',145),(146,'Londres',146),(147,'Bangui',147),(148,'Praga',148),(149,'Kinsasa',149),(150,'Santo Domingo',150),(151,'Kigali',151),(152,'Bucarest',152),(153,'Moscú',153),(154,'Apia',154),(155,'Basseterre',155),(156,'San Marino',156),(157,'Kingstown',157),(158,'Castries',158),(159,'Santo Tomé',159),(160,'Dakar',160),(161,'Belgrado',161),(162,'Victoria',162),(163,'Freetown',163),(164,'Singapur',164),(165,'Damasco',165),(166,'Mogadiscio',166),(167,'Sri Jayawardenapura Kotte',167),(168,'Pretoria',168),(169,'Jartum',169),(170,'Yuba',170),(171,'Estocolmo',171),(172,'Berna',172),(173,'Paramaribo',173),(174,'Bangkok',174),(175,'Taipéi',175),(176,'Dodoma',176),(177,'Dusambé',177),(178,'Dili',178),(179,'Lomé',179),(180,'Nukualofa',180),(181,'Puerto España',181),(182,'Túnez',182),(183,'Asjabad',183),(184,'Ankara',184),(185,'Funafuti',185),(186,'Kiev',186),(187,'Kampala',187),(188,'Montevideo',188),(189,'Taskent',189),(190,'Port Vila',190),(191,'Vaticano',191),(192,'Caracas',192),(193,'Hanói',193),(194,'Saná',194),(195,'Yibuti',195),(196,'Lusaka',196),(197,'Harare',197);
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `editorial`
--

DROP TABLE IF EXISTS `editorial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `editorial` (
  `ideditorial` int(11) NOT NULL,
  `editorial` varchar(60) NOT NULL,
  PRIMARY KEY (`ideditorial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `editorial`
--

LOCK TABLES `editorial` WRITE;
/*!40000 ALTER TABLE `editorial` DISABLE KEYS */;
INSERT INTO `editorial` VALUES (1,'McGraw Hill'),(2,'Pearson'),(3,'Prentice Hall'),(4,'Reina-Valera 1960'),(5,'Grupo Anaya'),(6,'Editorial Salvadoreña Hermanos Unidos'),(7,'Time Inc.');
/*!40000 ALTER TABLE `editorial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `libro`
--

DROP TABLE IF EXISTS `libro`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `libro` (
  `IdLibro` int(11) NOT NULL,
  `codigoMaterialL` varchar(10) NOT NULL,
  `codigoAutor` int(11) NOT NULL,
  `NumeroPaginas` int(11) NOT NULL,
  `codigoEditorial` int(11) NOT NULL,
  `codigoPais` int(11) NOT NULL,
  `ISBN` int(13) NOT NULL,
  `AnioPublicacion` year(4) NOT NULL,
  `Edicion` int(11) NOT NULL,
  `Idioma` varchar(15) NOT NULL,
  `Materia` varchar(15) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`IdLibro`),
  KEY `codigoMaterialL_idx` (`codigoMaterialL`),
  KEY `codigoEditorial_idx` (`codigoEditorial`),
  KEY `codigoAutor_idx` (`codigoAutor`),
  KEY `codigoPais_idx` (`codigoPais`),
  CONSTRAINT `codigoMaterialL` FOREIGN KEY (`codigoMaterialL`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'LIB0000001',6,770,4,59,1836635798,2022,1,'Español','Religión','Reina-Valera 1960 RVR1960 Letra grande (en Español): Antiguo y Nuevo Testamento.'),(2,'LIB0000002',1,728,2,60,130471771,2003,6,'Inglés','Programación','La guía más vendida para programadores serios de Java 2 y la guía n.° 1 del mundo para programadores de Java serios para reflejar las mejoras más recientes del SDK 1.4 de Sun.'),(3,'LIB0000003',2,352,5,59,1441535817,2014,1,'Español','Programación','La reciente publicación de Java 8 trae consigo importantes novedades tecnológicas, que demuestran que este poderoso lenguaje sigue en constante evolución, adaptándose siempre a los nuevos tiempos. '),(4,'LIB0000004',3,624,5,59,1844153067,2011,2,'Español','Programación','Java es uno de los lenguajes que ha revolucionado la esencia de la programación por su gran impacto en el desarrollo Web. Para convertirse en programador Web profesional o desarrollador de Android, necesita el dominio de Java.'),(5,'LIB0000005',4,401,3,59,1073238029,2013,10,'Español','Programación','Es uno de los mejores libros de texto de Java. Muy bien explicado, con código comentado, resúmenes, ejercicios teóricos y prácticos. Se parte casi desde cero y se enseña hasta un nivel casi avanzado. '),(6,'LIB0000006',5,455,1,60,1492037257,2019,7,'Inglés','Programación','Esta edición no solo ayuda a los programadores de Java experimentados, sino que también es una ruta de aprendizaje para nuevos desarrolladores. Repleto de ejemplos de las mejores prácticas de desarrollo.');
/*!40000 ALTER TABLE `libro` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `material`
--

DROP TABLE IF EXISTS `material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `material` (
  `codigoMaterial` varchar(10) NOT NULL,
  `Titulo` varchar(90) NOT NULL,
  `codigoTipoMaterial` int(11) NOT NULL,
  `ubicacionFisica` varchar(20) NOT NULL,
  `cantidadEjemplares` int(11) NOT NULL,
  `cantidadDisponibles` int(11) NOT NULL,
  `cantidadPrestados` int(11) NOT NULL,
  `estado` int(11) NOT NULL,
  PRIMARY KEY (`codigoMaterial`),
  KEY `codigoTipoMaterial_idx` (`codigoTipoMaterial`),
  CONSTRAINT `codigoTipoMaterial` FOREIGN KEY (`codigoTipoMaterial`) REFERENCES `tipomaterial` (`codigoTipoMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `material`
--

LOCK TABLES `material` WRITE;
/*!40000 ALTER TABLE `material` DISABLE KEYS */;
INSERT INTO `material` VALUES ('CDS0000001','Clásicos Rock',4,'E-6',10,9,1,1),('LIB0000001','La Biblia',1,'E-1',5,5,0,1),('LIB0000002','Core Java 2, Volume I: Fundamentals',1,'E-3',3,2,1,1),('LIB0000003','Java 8',1,'E-2',6,6,0,1),('LIB0000004','Java 7',1,'E-2',5,3,2,1),('LIB0000005','Java: Cómo programar',1,'E-4',5,5,0,1),('LIB0000006','Java in a Nutshell',1,'E-5',3,3,0,1),('OBR0000001','Prometeo Encadenado',2,'E-2',5,5,0,1),('REV0000001','Byte',3,'E-4',5,2,3,1),('REV0000002','Time',3,'E-5',6,6,0,1),('TES0000001','Transición de la Red Telefónica de El Salvador en su Modernización Tecnológica',5,'E-2',1,1,0,1);
/*!40000 ALTER TABLE `material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `obra`
--

DROP TABLE IF EXISTS `obra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `obra` (
  `IdObra` int(11) NOT NULL,
  `codigoMaterialO` varchar(10) NOT NULL,
  `autor` int(11) NOT NULL,
  `NumeroPaginas` int(11) NOT NULL,
  `Editorial` varchar(45) NOT NULL,
  `Pais` int(11) NOT NULL,
  `ISBN` int(13) NOT NULL,
  `AnioPublicacion` year(4) NOT NULL,
  `Edicion` int(11) NOT NULL,
  `Idioma` varchar(15) NOT NULL,
  `Genero` varchar(15) NOT NULL,
  PRIMARY KEY (`IdObra`),
  KEY `codigoMaterialO_idx` (`codigoMaterialO`),
  CONSTRAINT `codigoMaterialO` FOREIGN KEY (`codigoMaterialO`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `obra`
--

LOCK TABLES `obra` WRITE;
/*!40000 ALTER TABLE `obra` DISABLE KEYS */;
INSERT INTO `obra` VALUES (1,'OBR0000001',8,300,'6',54,2134456778,2000,2,'Español','Epico');
/*!40000 ALTER TABLE `obra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pais`
--

DROP TABLE IF EXISTS `pais`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pais` (
  `idpais` int(11) NOT NULL,
  `pais` varchar(45) NOT NULL,
  PRIMARY KEY (`idpais`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pais`
--

LOCK TABLES `pais` WRITE;
/*!40000 ALTER TABLE `pais` DISABLE KEYS */;
INSERT INTO `pais` VALUES (1,'Afganistán'),(2,'Albania'),(3,'Alemania'),(4,'Andorra'),(5,'Angola'),(6,'Antigua y Barbuda'),(13,'Azerbaiyán'),(14,'Bahamas'),(15,'Bangladés'),(16,'Barbados'),(17,'Baréin'),(18,'Bélgica'),(19,'Belice'),(20,'Benín'),(21,'Bielorrusia'),(22,'Birmania'),(23,'Bolivia'),(24,'Bosnia-Herzegovina'),(25,'Botsuana'),(26,'Brasil'),(27,'Brunéi'),(28,'Bulgaria'),(29,'Burkina Faso'),(30,'Burundi'),(31,'Bután'),(32,'Cabo Verde'),(33,'Camboya'),(34,'Camerún'),(35,'Canadá'),(36,'Catar'),(37,'Chad'),(38,'Chile'),(39,'China'),(40,'Chipre'),(41,'Colombia'),(42,'Comoras'),(43,'Congo'),(44,'Corea del Norte'),(45,'Corea del Sur'),(46,'Costa de Marfil'),(47,'Costa Rica'),(48,'Croacia'),(49,'Cuba'),(50,'Dinamarca'),(51,'Dominica'),(52,'Ecuador'),(53,'Egipto'),(54,'El Salvador'),(55,'Emiratos Árabes Unidos'),(56,'Eritrea'),(57,'Eslovaquia'),(58,'Eslovenia'),(59,'España'),(60,'Estados Unidos'),(61,'Estonia'),(62,'Esuatini'),(63,'Etiopía'),(64,'Filipinas'),(65,'Finlandia'),(66,'Fiyi'),(67,'Francia'),(68,'Gabón'),(69,'Gambia'),(70,'Georgia'),(71,'Ghana'),(72,'Granada'),(73,'Grecia'),(74,'Guatemala'),(75,'Guinea'),(76,'Guinea Ecuatorial'),(77,'Guinea-Bisáu'),(78,'Guyana'),(79,'Haití'),(80,'Honduras'),(81,'Hungría'),(82,'India'),(83,'Indonesia'),(84,'Irak'),(85,'Irán'),(86,'Irlanda'),(87,'Islandia'),(88,'Islas Marshall'),(89,'Islas Salomón'),(90,'Israel'),(91,'Italia'),(92,'Jamaica'),(93,'Japón'),(94,'Jordania'),(95,'Kazajistán'),(96,'Kenia'),(97,'Kirguistán'),(98,'Kiribati'),(99,'Kosovo'),(100,'Kuwait'),(101,'Laos'),(102,'Lesoto'),(103,'Letonia'),(104,'Líbano'),(105,'Liberia'),(106,'Libia'),(107,'Liechtenstein'),(108,'Lituania'),(109,'Luxemburgo'),(110,'Macedonia del Norte'),(111,'Madagascar'),(112,'Malasia'),(113,'Malaui'),(114,'Maldivas'),(115,'Malí'),(116,'Malta'),(117,'Marruecos'),(118,'Mauricio'),(119,'Mauritania'),(120,'México'),(121,'Micronesia'),(122,'Moldavia'),(123,'Mónaco'),(124,'Mongolia'),(125,'Montenegro'),(126,'Mozambique'),(127,'Namibia'),(128,'Nauru'),(129,'Nepal'),(130,'Nicaragua'),(131,'Níger'),(132,'Nigeria'),(133,'Noruega'),(134,'Nueva Zelanda'),(135,'Omán'),(136,'Países Bajos'),(137,'Pakistán'),(138,'Palaos'),(139,'Palestina'),(140,'Panamá'),(141,'Papúa Nueva Guinea'),(142,'Paraguay'),(143,'Perú'),(144,'Polonia'),(145,'Portugal'),(146,'Reino Unido'),(147,'República Centroafricana'),(148,'República Checa'),(149,'República Democrática del Congo'),(150,'República Dominicana'),(151,'Ruanda'),(152,'Rumania'),(153,'Rusia'),(154,'Samoa'),(155,'San Cristóbal y Nieves'),(156,'San Marino'),(157,'San Vicente y las Granadinas'),(158,'Santa Lucía'),(159,'Santo Tomé y Príncipe'),(160,'Senegal'),(161,'Serbia'),(162,'Seychelles'),(163,'Sierra Leona'),(164,'Singapur'),(165,'Siria'),(166,'Somalia'),(167,'Sri Lanka'),(168,'Sudáfrica'),(169,'Sudán'),(170,'Sudán del Sur'),(171,'Suecia'),(172,'Suiza'),(173,'Surinam'),(174,'Tailandia'),(175,'Taiwán'),(176,'Tanzania'),(177,'Tayikistán'),(178,'Timor Oriental'),(179,'Togo'),(180,'Tonga'),(181,'Trinidad y Tobago'),(182,'Túnez'),(183,'Turkmenistán'),(184,'Turquía'),(185,'Tuvalu'),(186,'Ucrania'),(187,'Uganda'),(188,'Uruguay'),(189,'Uzbekistán'),(190,'Vanuatu'),(191,'Vaticano'),(192,'Venezuela'),(193,'Vietnam'),(194,'Yemen'),(195,'Yibuti'),(196,'Zambia'),(197,'Zimbabue');
/*!40000 ALTER TABLE `pais` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prestamo`
--

DROP TABLE IF EXISTS `prestamo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prestamo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `carnet` varchar(8) NOT NULL,
  `codmaterial` varchar(10) NOT NULL,
  `fecha_inicio` date NOT NULL,
  `fecha_fin` date NOT NULL,
  `estado` int(11) NOT NULL,
  `mora` double NOT NULL,
  `fecha_devolucion` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carnet_idx` (`carnet`),
  KEY `codmaterial_idx` (`codmaterial`),
  CONSTRAINT `carnet` FOREIGN KEY (`carnet`) REFERENCES `usuario` (`carnet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `codmaterial` FOREIGN KEY (`codmaterial`) REFERENCES `material` (`codigoMaterial`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,'PH220009','TES0000001','2022-11-13','2022-11-20',0,0,'2022-11-15'),(2,'JS220007','REV0000001','2022-11-13','2022-11-20',0,0,'2022-11-15'),(3,'PH220009','CDS0000001','2022-11-15','2022-11-22',0,0,'2022-11-15'),(4,'AA220006','TES0000001','2022-11-15','2022-11-22',0,0,'2022-11-16'),(5,'PH220009','REV0000001','2022-11-15','2022-11-22',1,4.5,NULL),(6,'PH220009','LIB0000004','2022-11-15','2022-11-22',1,4.5,NULL),(7,'JS220007','LIB0000003','2022-11-01','2022-11-08',0,8,'2022-12-10'),(8,'AA220006','CDS0000001','2022-11-21','2022-11-28',0,3,'2022-12-10'),(9,'PH220009','CDS0000001','2022-12-09','2022-12-16',1,0,NULL),(10,'AA220006','REV0000001','2022-12-09','2022-12-16',1,0,NULL),(11,'JP220008','LIB0000004','2022-12-10','2022-12-17',1,0,NULL),(12,'JP220008','REV0000001','2022-12-10','2022-12-17',1,0,NULL),(13,'JS220007','LIB0000002','2022-12-10','2022-12-17',1,0,NULL);
/*!40000 ALTER TABLE `prestamo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `privilegios`
--

DROP TABLE IF EXISTS `privilegios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `privilegios` (
  `rol_id` int(11) NOT NULL,
  `tiempo_limite` int(11) NOT NULL,
  `cant_prestamos` int(11) NOT NULL,
  PRIMARY KEY (`rol_id`),
  CONSTRAINT `rol_id` FOREIGN KEY (`rol_id`) REFERENCES `rol` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `privilegios`
--

LOCK TABLES `privilegios` WRITE;
/*!40000 ALTER TABLE `privilegios` DISABLE KEYS */;
INSERT INTO `privilegios` VALUES (2,14,6),(3,7,3);
/*!40000 ALTER TABLE `privilegios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `revista`
--

DROP TABLE IF EXISTS `revista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `revista` (
  `IdRevista` int(11) NOT NULL,
  `codigoMaterialR` varchar(10) NOT NULL,
  `Editorial` int(11) NOT NULL,
  `ISSN` int(8) NOT NULL,
  `Idioma` varchar(15) NOT NULL,
  `Tamano` varchar(50) NOT NULL,
  `Periodicidad` varchar(20) NOT NULL,
  `FechaPublicacion` date NOT NULL,
  PRIMARY KEY (`IdRevista`),
  KEY `codigoMaterialR_idx` (`codigoMaterialR`),
  CONSTRAINT `codigoMaterialR` FOREIGN KEY (`codigoMaterialR`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `revista`
--

LOCK TABLES `revista` WRITE;
/*!40000 ALTER TABLE `revista` DISABLE KEYS */;
INSERT INTO `revista` VALUES (1,'REV0000001',1,2001234001,'Español','25x30','Mensual','2022-12-20'),(2,'REV0000002',7,34569876,'Español','20x30','Mensual','2022-12-31');
/*!40000 ALTER TABLE `revista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre_rol` varchar(25) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
INSERT INTO `rol` VALUES (1,'Administrador'),(2,'Profesor'),(3,'Alumno');
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tesis`
--

DROP TABLE IF EXISTS `tesis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tesis` (
  `IdTesis` int(11) NOT NULL,
  `codigoMaterialT` varchar(10) NOT NULL,
  `autor` int(11) NOT NULL,
  `Pais` int(11) NOT NULL,
  `Ciudad` int(11) NOT NULL,
  `Universidad` varchar(250) NOT NULL,
  `Carrera` varchar(250) NOT NULL,
  `Idioma` varchar(15) NOT NULL,
  `FechaPublicacion` date NOT NULL,
  `NumeroPaginas` int(11) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  `Palabras clave` varchar(250) NOT NULL,
  PRIMARY KEY (`IdTesis`),
  KEY `codigoMaterialT_idx` (`codigoMaterialT`),
  CONSTRAINT `codigoMaterialT` FOREIGN KEY (`codigoMaterialT`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tesis`
--

LOCK TABLES `tesis` WRITE;
/*!40000 ALTER TABLE `tesis` DISABLE KEYS */;
INSERT INTO `tesis` VALUES (1,'TES0000001',9,54,54,'Universidad Don Bosco','Ingeniería en Electrónica','Español','1994-11-11',363,'Tesis sobre la transición de la red telefónica de El Salvador en la década de los 90\'s.','Electrónica, telefonía');
/*!40000 ALTER TABLE `tesis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipomaterial`
--

DROP TABLE IF EXISTS `tipomaterial`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipomaterial` (
  `codigoTipoMaterial` int(11) NOT NULL,
  `descripcion` varchar(45) NOT NULL,
  PRIMARY KEY (`codigoTipoMaterial`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipomaterial`
--

LOCK TABLES `tipomaterial` WRITE;
/*!40000 ALTER TABLE `tipomaterial` DISABLE KEYS */;
INSERT INTO `tipomaterial` VALUES (1,'Libro'),(2,'Obra'),(3,'Revista'),(4,'CD'),(5,'Tesis');
/*!40000 ALTER TABLE `tipomaterial` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `usuario`
--

DROP TABLE IF EXISTS `usuario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuario` (
  `carnet` varchar(8) NOT NULL,
  `nombre` varchar(25) NOT NULL,
  `apellido` varchar(25) NOT NULL,
  `contrasena` varchar(40) NOT NULL,
  `id_rol` int(11) NOT NULL,
  PRIMARY KEY (`carnet`),
  KEY `id_rol` (`id_rol`),
  CONSTRAINT `id_rol` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuario`
--

LOCK TABLES `usuario` WRITE;
/*!40000 ALTER TABLE `usuario` DISABLE KEYS */;
INSERT INTO `usuario` VALUES ('AA220006','Adriana','Abrego','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',3),('admin','admin','admin','d033e22ae348aeb5660fc2140aec35850c4da997',1),('JP220008','Juan ','Peres','8cb2237d0679ca88db6464eac60da96345513964',3),('JS220007','John','Smith','7110eda4d09e062aa5e4a390b0a572ac0d2c0220',3),('PH220009','Pablo Roberto','Humberto','8cb2237d0679ca88db6464eac60da96345513964',3);
/*!40000 ALTER TABLE `usuario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping routines for database 'biblioteca'
--
/*!50003 DROP PROCEDURE IF EXISTS `actualizar_mora` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `actualizar_mora`()
BEGIN
UPDATE prestamo p
JOIN 
(
	SELECT *
	FROM (SELECT p.id, (DATEDIFF(CURDATE(), fecha_fin) * 0.25) as mora
	FROM prestamo p WHERE p.estado = 1 ) AS a 
	WHERE a.mora > 0
) m ON p.id = m.id 
SET p.mora = m.mora;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_ejemplares` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_ejemplares`(`pTitulo` VARCHAR(100), `pAutor` VARCHAR(100), `pTipoMaterial` VARCHAR(50), `pIdioma` VARCHAR(100), `pOrderby` VARCHAR(50))
BEGIN
-- SI TIPO DE MATERIAL ESTA VACIO, MOSTRAR TODOS LOS RESULTADOS 


CREATE TEMPORARY TABLE tmptable(`TipoMaterial` varchar(50), `codigoMaterial` varchar(15), `Titulo` varchar(250), `Autores` varchar(250), `MaterialInfo` varchar(3500) );

IF pTipoMaterial = 'Todos' OR pTipoMaterial = 'Libro' THEN
	INSERT INTO tmptable
	SELECT 'Libro' AS TipoMaterial,  a.codigoMaterial, a.Titulo, c.autor,  concat(c.autor, ', ', p.pais, ', ', e.editorial, ', ', AnioPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.libro AS b ON a.codigoMaterial = b.codigoMaterialL
    LEFT OUTER JOIN biblioteca.autor AS c ON c.idautor = b.codigoAutor
	LEFT OUTER JOIN biblioteca.pais AS p ON p.idpais = b.codigoPais
    LEFT OUTER JOIN biblioteca.editorial AS e ON e.ideditorial = b.codigoEditorial
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND c.autor LIKE CONCAT('%', pAutor , '%') THEN 1
		ELSE 0
	END) = 1
	AND (CASE
		WHEN pIdioma = 'Todos' THEN 1
		WHEN length(pIdioma) > 0 AND b.Idioma = pIdioma THEN 1
		ELSE 0
	END) = 1;
END IF;


IF pTipoMaterial = 'Todos' OR pTipoMaterial = 'Revista' THEN
	INSERT INTO tmptable
	SELECT 'Revista' AS TipoMaterial, a.codigoMaterial, a.Titulo, '' as Autores, concat(e.editorial, ', ', ISSN, ', ', Idioma, ', ', Tamano, ', ', Periodicidad, ', ', FechaPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.revista AS b ON a.codigoMaterial = b.codigoMaterialR
    LEFT OUTER JOIN biblioteca.editorial AS e ON e.ideditorial = b.Editorial
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
	AND (CASE
		WHEN pIdioma = 'Todos' THEN 1
		WHEN length(pIdioma) > 0 AND b.Idioma = pIdioma THEN 1
		ELSE 0
	END) = 1 and length(`pAutor`) = 0;
END IF;


IF pTipoMaterial = 'Todos' OR pTipoMaterial = 'Obra' THEN
	INSERT INTO tmptable
	SELECT 'Obra' AS TipoMaterial, a.codigoMaterial, a.Titulo, c.autor, concat(c.autor, ', ', p.pais, ', ', b.Editorial, ', ', b.AnioPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.obra AS b ON a.codigoMaterial = b.codigoMaterialO
    LEFT OUTER JOIN biblioteca.autor AS c ON c.idautor = b.autor
	LEFT OUTER JOIN biblioteca.pais AS p ON p.idpais = b.Pais
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND c.autor LIKE CONCAT('%', pAutor , '%') THEN 1
		ELSE 0
	END) = 1
	AND (CASE
		WHEN pIdioma = 'Todos' THEN 1
		WHEN length(pIdioma) > 0 AND b.Idioma = pIdioma THEN 1
		ELSE 0
	END) = 1;
END IF;


IF pTipoMaterial = 'Todos' OR pTipoMaterial = 'Tesis' THEN
	INSERT INTO tmptable
	SELECT 'Tesis' AS TipoMaterial, a.codigoMaterial, a.Titulo, c.autor,  concat(c.autor, ', ', ci.ciudad, ', ', p.pais, ', ', Universidad, ', ', FechaPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.tesis AS b ON a.codigoMaterial = b.codigoMaterialT
    LEFT OUTER JOIN biblioteca.autor AS c ON c.idautor = b.autor
	LEFT OUTER JOIN biblioteca.pais AS p ON p.idpais = b.Pais
    LEFT OUTER JOIN biblioteca.ciudad AS ci ON ci.idciudad = b.Ciudad
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND c.autor LIKE CONCAT('%', pAutor , '%') THEN 1
		ELSE 0
	END) = 1
	AND (CASE
		WHEN pIdioma = 'Todos' THEN 1
		WHEN length(pIdioma) > 0 AND b.Idioma = pIdioma THEN 1
		ELSE 0
	END) = 1;
END IF;


IF pTipoMaterial = 'Todos' OR pTipoMaterial = 'CD' THEN
	INSERT INTO tmptable
	SELECT 'CD' AS TipoMaterial, a.codigoMaterial, a.Titulo, c.autor,  concat(c.autor, ', ', ci.ciudad, ', ', p.pais, ', ', anio_publicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.cd AS b ON a.codigoMaterial = b.codigoMaterialC
    LEFT OUTER JOIN biblioteca.autor AS c ON c.idautor = b.autor
	LEFT OUTER JOIN biblioteca.pais AS p ON p.idpais = b.pais_publicacion
    LEFT OUTER JOIN biblioteca.ciudad AS ci ON ci.idciudad = b.ciudad_publicacion
	WHERE
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND c.autor LIKE CONCAT('%', pAutor , '%') THEN 1
		ELSE 0
	END) = 1
	AND (CASE
		WHEN pIdioma = 'Todos' THEN 1
		WHEN length(pIdioma) > 0 AND b.idioma = pIdioma THEN 1
		ELSE 0
	END) = 1;
END IF;


SELECT * 
FROM tmptable
ORDER BY 
  CASE WHEN pOrderby = 'Título' THEN Titulo END ASC, 
  CASE WHEN pOrderby = 'Autor' THEN Autores END ASC,
  CASE WHEN pOrderby = 'Clasificación' THEN TipoMaterial END ASC;

DROP TABLE tmptable;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_materiales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_materiales`(estado_material int)
BEGIN

SELECT codigoMaterial, Titulo, ubicacionFisica, cantidadEjemplares, cantidadDisponibles
FROM biblioteca.material WHERE estado = estado_material;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `consulta_prestamos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `consulta_prestamos`(estado_prestamo int)
BEGIN

SELECT 	p.carnet,
		p.codmaterial,
		p.fecha_inicio,
		p.fecha_fin,
		CONCAT('$', FORMAT(p.mora, 2)) as mora,
		CASE WHEN p.estado = 1 THEN 'Activo' ELSE 'Inactivo' END as estado,
        m.titulo
FROM prestamo AS p 
INNER JOIN material AS m ON p.codmaterial = m.codigoMaterial 
WHERE p.estado = estado_prestamo 
ORDER BY fecha_fin DESC;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `devolucion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `devolucion`(`materialId` VARCHAR(40), `carnetId` VARCHAR(40))
BEGIN
DECLARE existsMaterial INT Default 0;
DECLARE existsCarnet INT Default 0;
DECLARE cPrestado INT Default 0;
DECLARE cDisponible INT Default 0;
DECLARE PrestamoId INT Default 0;
DECLARE LateCharge double Default 0;

SELECT count(*) INTO existsMaterial from material WHERE codigoMaterial = materialId;
SELECT count(*) INTO existsCarnet from usuario WHERE carnet = carnetId;

SET existsMaterial = IFNULL(existsMaterial, 0);
SET existsCarnet = IFNULL(existsCarnet, 0);

SELECT max(cantidadDisponibles) INTO cDisponible from material WHERE codigoMaterial = materialId;
SELECT max(cantidadPrestados) INTO cPrestado from material WHERE codigoMaterial = materialId;
SET cPrestado = IFNULL(cPrestado, 0) - 1;

SELECT max(id) INTO PrestamoId from prestamo 
where carnet = carnetId AND codmaterial = materialId and estado = 1;
SET PrestamoId = IFNULL(PrestamoId, 0);

SELECT (DATEDIFF(CURDATE(), fecha_fin) * 0.25) INTO LateCharge 
from prestamo where carnet = carnetId AND codmaterial = materialId and estado = 1 limit 1;

IF LateCharge < 0 THEN
	SET LateCharge = 0;
END IF;

IF existsMaterial = 0 THEN
	SELECT '¡Código de material inválido!' as Result, 0 PrestamoId;
ELSEIF existsCarnet = 0 THEN 
	SELECT '¡Carnet inválido!' as Result, 0 PrestamoId;
ELSEIF PrestamoId = 0 THEN 
	SELECT 'El préstamo no existe.' as Result, 0 PrestamoId;
ELSEIF PrestamoId > 0 THEN
	UPDATE `biblioteca`.`prestamo` SET 
    `fecha_devolucion` = CURDATE(), 
    `mora` = LateCharge, 
    `estado` = 0
	where carnet = carnetId AND codmaterial = materialId and estado = 1;
    
    UPDATE `biblioteca`.`material` SET 
    `cantidadDisponibles` = (cDisponible + 1),  
    `cantidadPrestados` = cPrestado,
    `estado` = 1
	where codigoMaterial = materialId;
    
    IF LateCharge > 0 THEN
		SELECT 	CONCAT('Devolución realizada. Favor cancelar en concepto de mora: $', LateCharge) as Result, 
				PrestamoId AS PrestamoId;
	ELSE
		SELECT 'Devolución realizada con éxito.' as Result, PrestamoId AS PrestamoId;
	END IF;
    
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_upd_cd` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_cd`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` int, `paispubli` int, `ciudadpub` int, `anio_publi` INT(4), `volumen` INT, `idioma` VARCHAR(15), `tema` VARCHAR(25))
BEGIN
DECLARE lcodmaterial varchar(10);
DECLARE lastID INT Default 0;

IF LENGTH(codmaterial) = 0 THEN
	SELECT max(idCD) INTO lastID from cd;
	SET lastID = IFNULL(lastID, 0) + 1;
    SET lcodmaterial = CONCAT('CDS', '', CONVERT( LPAD(CONVERT(lastID, CHAR(7)), 7, '0'), CHAR(10)));
    
    INSERT INTO `biblioteca`.`material`(`codigoMaterial`,`Titulo`,`codigoTipoMaterial`,`ubicacionFisica`,`cantidadEjemplares`,`cantidadDisponibles`,`cantidadPrestados`, `estado`)
	VALUES (lcodmaterial, titulo, 4, ufisica, cejemp, cejemp, 0, 1);

	INSERT INTO `biblioteca`.`cd`(`IdCD`,`codigoMaterialC`,`Autor(es)`,`pais_publicacion`,`ciudad_publicacion`, `anio_publicacion`, `volumen`, `idioma`, `tema`)
	VALUES(lastID, lcodmaterial, autor, paispubli, ciudadpub, anio_publi, volumen, idioma, tema);
    
ELSE
	SET SQL_SAFE_UPDATES = 0; 
	UPDATE `biblioteca`.`material` SET `Titulo` = titulo, `ubicacionFisica` = ufisica, `cantidadEjemplares` = cejemp WHERE `codigoMaterial` = codmaterial;
   
   UPDATE `biblioteca`.`cd` 
   SET `Autor(es)` = autor, `pais_publicacion` = paispubli, `ciudad_publicacion` = ciudadpub, `anio_publicacion` = anio_publi, `volumen`=volumen, `idioma`=idioma, `tema`=tema
   WHERE `codigoMaterialC` = codmaterial;
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_upd_libro` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_libro`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` int, `npaginas` INT, `editorial` int, `pais` int, `isbn` INT, `anio` INT, `edicion` INT, `idioma` VARCHAR(15), `materia` VARCHAR(15), `descripcion` VARCHAR(250))
BEGIN
DECLARE lcodmaterial varchar(10);
DECLARE lastID INT Default 0;

IF LENGTH(codmaterial) = 0 THEN
	SELECT max(IdLibro) INTO lastID from libro;
	SET lastID = IFNULL(lastID, 0) + 1;
    SET lcodmaterial = CONCAT('LIB', '', CONVERT( LPAD(CONVERT(lastID, CHAR(7)), 7, '0'), CHAR(10)));
    
    INSERT INTO `biblioteca`.`material`(`codigoMaterial`,`Titulo`,`codigoTipoMaterial`,`ubicacionFisica`,`cantidadEjemplares`,`cantidadPrestados`,`cantidadDisponibles`, `estado`)
	VALUES (lcodmaterial, titulo, 1, ufisica, cejemp, 0, cejemp, 1);

	INSERT INTO `biblioteca`.`libro`(`IdLibro`,`codigoMaterialL`,`Autor(es)`,`NumeroPaginas`,`Editorial`, `Pais`, `ISBN`, `AnioPublicacion`, `Edicion`, `Idioma`, `Materia`, `Descripcion`)
	VALUES(lastID, lcodmaterial, autor, npaginas, editorial, pais, isbn, anio, edicion, idioma, materia, descripcion);
    
ELSE
	SET SQL_SAFE_UPDATES = 0; 
	UPDATE `biblioteca`.`material` SET `Titulo` = titulo, `ubicacionFisica` = ufisica, `cantidadEjemplares` = cejemp WHERE `codigoMaterial` = codmaterial;
   
   UPDATE `biblioteca`.`libro` 
   SET `Autor(es)` = autor, `NumeroPaginas` = npaginas, `Editorial` = editorial, `Pais` = pais, `ISBN` = isbn, `AnioPublicacion` = anio, `Edicion` = edicion, `Idioma` = idioma, `Materia` = materia, `Descripcion` = descripcion
   WHERE `codigoMaterialL` = codmaterial;
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_upd_obra` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_obra`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` int, `npaginas` INT, `editorial` int, `pais` int, `isbn` INT, `anio` INT, `edicion` INT, `idioma` VARCHAR(15), `genero` VARCHAR(15))
BEGIN
DECLARE lcodmaterial varchar(10);
DECLARE lastID INT Default 0;

IF LENGTH(codmaterial) = 0 THEN
	SELECT max(IdObra) INTO lastID from Obra;
	SET lastID = IFNULL(lastID, 0) + 1;
    SET lcodmaterial = CONCAT('OBR', '', CONVERT( LPAD(CONVERT(lastID, CHAR(7)), 7, '0'), CHAR(10)));
    
    INSERT INTO `biblioteca`.`material`(`codigoMaterial`,`Titulo`,`codigoTipoMaterial`,`ubicacionFisica`,`cantidadEjemplares`,`cantidadDisponibles`,`cantidadPrestados`, `estado`)
	VALUES (lcodmaterial, titulo, 2, ufisica, cejemp, cejemp, 0, 1);

	INSERT INTO `biblioteca`.`obra`(`IdObra`,`codigoMaterialO`,`Autor(es)`,`NumeroPaginas`,`Editorial`, `Pais`, `ISBN`, `AnioPublicacion`, `Edicion`, `Idioma`, `genero`)
	VALUES(lastID, lcodmaterial, autor, npaginas, editorial, pais, isbn, anio, edicion, idioma, genero);
    
ELSE
	SET SQL_SAFE_UPDATES = 0; 
	UPDATE `biblioteca`.`material` SET `Titulo` = titulo, `ubicacionFisica` = ufisica, `cantidadEjemplares` = cejemp WHERE `codigoMaterial` = codmaterial;
   
   UPDATE `biblioteca`.`obra` 
   SET `Autor(es)` = autor, `NumeroPaginas` = npaginas, `Editorial` = editorial, `Pais` = pais, `ISBN` = isbn, `AnioPublicacion` = anio, `Edicion` = edicion, `Idioma` = idioma, `Genero` = genero
   WHERE `codigoMaterialO` = codmaterial;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_upd_revista` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_revista`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `editorial` int, `issn` INT, `idioma` VARCHAR(15), `tamano` VARCHAR(50), `periodicidad` VARCHAR(20), `fechapublicacion` DATE)
BEGIN
DECLARE lcodmaterial varchar(10);
DECLARE lastID INT Default 0;

IF LENGTH(codmaterial) = 0 THEN
	SELECT max(IdRevista) INTO lastID from revista;
	SET lastID = IFNULL(lastID, 0) + 1;
    SET lcodmaterial = CONCAT('REV', '', CONVERT( LPAD(CONVERT(lastID, CHAR(7)), 7, '0'), CHAR(10)));
    
    INSERT INTO `biblioteca`.`material`(`codigoMaterial`,`Titulo`,`codigoTipoMaterial`,`ubicacionFisica`,`cantidadEjemplares`,`cantidadDisponibles`,`cantidadPrestados`, `estado`)
	VALUES (lcodmaterial, titulo, 3, ufisica, cejemp, cejemp, 0, 1);

	INSERT INTO `biblioteca`.`revista`(`IdRevista`,`codigoMaterialR`,`Editorial`,`ISSN`,`Idioma`,`tamano`, `Periodicidad`, `FechaPublicacion`)
	VALUES(lastID, lcodmaterial, editorial, issn, idioma, tamano, periodicidad, fechapublicacion);
    
ELSE
	SET SQL_SAFE_UPDATES = 0; 
	UPDATE `biblioteca`.`material` SET `Titulo` = titulo, `ubicacionFisica` = ufisica, `cantidadEjemplares` = cejemp WHERE `codigoMaterial` = codmaterial;
   
   UPDATE `biblioteca`.`revista` 
   SET `Editorial` = editorial, `ISSN` = issn, `Idioma` = idioma, `Tamano` = tamano, `Periodicidad` = periodicidad, `FechaPublicacion` = fechapublicacion
   WHERE `codigoMaterialR` = codmaterial;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_upd_tesis` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_tesis`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` int, `pais` int, `ciudad` int, `universidad` VARCHAR(250), `carrera` VARCHAR(250), `idioma` VARCHAR(15), `fechaPublicacion` DATE, `numeroPaginas` INT, `descripcion` VARCHAR(250), `palabrasclave` VARCHAR(250))
BEGIN
DECLARE lcodmaterial varchar(10);
DECLARE lastID INT Default 0;

IF LENGTH(codmaterial) = 0 THEN
	SELECT max(IdTesis) INTO lastID from tesis;
	SET lastID = IFNULL(lastID, 0) + 1;
    SET lcodmaterial = CONCAT('TES', '', CONVERT( LPAD(CONVERT(lastID, CHAR(7)), 7, '0'), CHAR(10)));
    
    INSERT INTO `biblioteca`.`material`(`codigoMaterial`,`Titulo`,`codigoTipoMaterial`,`ubicacionFisica`,`cantidadEjemplares`,`cantidadDisponibles`,`cantidadPrestados`, `estado`)
	VALUES (lcodmaterial, titulo, 5, ufisica, cejemp, cejemp, 0, 1);

	INSERT INTO `biblioteca`.`tesis`(`IdTesis`,`codigoMaterialT`,`Autor(es)`,`Pais`,`Ciudad`, `Universidad`, `Carrera`, `Idioma`, `FechaPublicacion`, `NumeroPaginas`, `Descripcion`, `Palabras clave`)
	VALUES(lastID, lcodmaterial, autor, pais, ciudad, universidad, carrera, idioma, FechaPublicacion, numeroPaginas, descripcion, palabrasclave);
    
ELSE
	SET SQL_SAFE_UPDATES = 0; 
	UPDATE `biblioteca`.`material` SET `Titulo` = titulo, `ubicacionFisica` = ufisica, `cantidadEjemplares` = cejemp WHERE `codigoMaterial` = codmaterial;
   
   UPDATE `biblioteca`.`tesis` 
   SET `Autor(es)` = autor, `Pais` = Pais, `Ciudad` = ciudad, `Universidad` = Universidad, `Carrera` = Carrera, `Idioma` = idioma, `FechaPublicacion` = FechaPublicacion, `NumeroPaginas` = NumeroPaginas, `Descripcion` = Descripcion, `Palabras clave` = Palabrasclave
   WHERE `codigoMaterialT` = codmaterial;
END IF;


END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `new_user` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_user`(`uNombre` VARCHAR(25), `uApellido` VARCHAR(25), `uPassword` VARCHAR(40), `uRolId` INT)
BEGIN
DECLARE CarnetID varchar(8);
DECLARE cYear varchar(4) Default YEAR(CURDATE());

DECLARE sequence varchar(4);
DECLARE tUsers INT Default 0;
SELECT count(*) INTO tUsers from `biblioteca`.`usuario`;
SET tUsers = IFNULL(tUsers, 0) + 1;
SET sequence = CONVERT(LPAD(CONVERT(tUsers, CHAR(4)), 4, '0'), CHAR(4));

SET CarnetID = upper(substring(uNombre, 1, 1));
SET CarnetID = concat(CarnetID, upper(substring(uApellido, 1, 1)));
SET CarnetID = concat(CarnetID, upper(substring(cYear, 3, 2)));
SET CarnetID = concat(CarnetID, sequence);


INSERT INTO `biblioteca`.`usuario`
(`carnet`,`nombre`,`apellido`,`contrasena`,`id_rol`)
VALUES (CarnetID,uNombre,uApellido,uPassword,uRolId);

select CarnetID as CarnetID;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `prestamo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_ALL_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_AUTO_CREATE_USER' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `prestamo`(`materialId` VARCHAR(40), `carnetId` VARCHAR(40))
BEGIN
DECLARE tiempolimit INT Default 0;
DECLARE fechafin date;
DECLARE lastID INT Default 0;

DECLARE existsMaterial INT Default 0;
DECLARE existsCarnet INT Default 0;
DECLARE cDisponible INT Default 0;
DECLARE cPrestado INT Default 0;
DECLARE LimiteDePrestamos INT Default 0;
DECLARE CantidadPrestadoPorUser INT Default 0;
DECLARE PrestamoActivo INT Default 0;
DECLARE existsMora INT Default 0;

SELECT privilegios.tiempo_limite INTO tiempolimit
FROM  `biblioteca`.`usuario` 
INNER JOIN `biblioteca`.`privilegios` ON `usuario`.`id_rol` = `privilegios`.`rol_id` 
WHERE `usuario`.`carnet` = carnetId
LIMIT 1;

SELECT privilegios.cant_prestamos INTO LimiteDePrestamos
FROM  `biblioteca`.`usuario` 
INNER JOIN `biblioteca`.`privilegios` ON `usuario`.`id_rol` = `privilegios`.`rol_id` 
WHERE `usuario`.`carnet` = carnetId
LIMIT 1;

SELECT count(*) INTO existsMaterial from material WHERE codigoMaterial = materialId;
SELECT count(*) INTO existsCarnet from usuario WHERE carnet = carnetId;
SELECT count(*) INTO CantidadPrestadoPorUser from prestamo WHERE estado = 1 and carnet = carnetId;
SELECT count(*) INTO PrestamoActivo from prestamo WHERE estado = 1 and carnet = carnetId AND codmaterial = materialId;
SELECT count(*) INTO existsMora from prestamo WHERE estado = 1 and carnet = carnetId AND mora > 0;

SELECT max(id) INTO lastID from prestamo;
SELECT max(cantidadDisponibles) INTO cDisponible from material WHERE codigoMaterial = materialId;
SELECT max(cantidadPrestados) INTO cPrestado from material WHERE codigoMaterial = materialId;

SET cDisponible = IFNULL(cDisponible, 0);
SET cPrestado = IFNULL(cPrestado, 0) + 1;
SET fechafin = DATE_ADD(CURDATE(), INTERVAL tiempolimit DAY);
SET lastID = IFNULL(lastID, 0) + 1;
SET CantidadPrestadoPorUser = IFNULL(CantidadPrestadoPorUser, 0);
SET PrestamoActivo = IFNULL(PrestamoActivo, 0);

IF existsMaterial = 0 THEN
	SELECT '¡Código de material inválido!' as Result, 0 PrestamoId;
ELSEIF existsCarnet = 0 THEN 
	SELECT '¡Carnet inválido!' as Result, 0 PrestamoId;
ELSEIF existsMora > 0 THEN 
	SELECT 'No se pueden realizar préstamos a este usuario ya que presenta mora.' as Result, 0 PrestamoId;
ELSEIF cDisponible = 0 THEN 
	SELECT 'Este ejemplar no se encuentra disponible.' as Result, 0 PrestamoId;
ELSEIF LimiteDePrestamos = CantidadPrestadoPorUser THEN 
	SELECT 'Ha alcanzado su límite de préstamos, por lo que este préstamo no se puede efectuar.' as Result, 0 PrestamoId;
ELSEIF PrestamoActivo > 0 THEN 
	SELECT 'Ya tiene un préstamo activo para este mismo ejemplar.' as Result, 0 PrestamoId;
ELSE 
	INSERT INTO `biblioteca`.`prestamo`
	(`id`, `carnet`, `codmaterial`, `fecha_inicio`, `fecha_fin`, `estado`, `mora`,`fecha_devolucion`)
	VALUES (lastID, carnetId, materialId, CURDATE(), fechafin, 1, 0, null);

	UPDATE `biblioteca`.`material` SET `cantidadDisponibles` = (cDisponible - 1), `cantidadPrestados` = cPrestado 
	WHERE `codigoMaterial` = materialId;
    
    SELECT 'Préstamo realizado con éxito.' as Result, lastID AS PrestamoId;
END IF;

-- - Que al llegar cantidad disponible a 0, el estado cambie a 0 (en materiales).
SELECT max(cantidadDisponibles) INTO cDisponible from material WHERE codigoMaterial = materialId;
SET cDisponible = IFNULL(cDisponible, 0);

IF cDisponible = 0 THEN
	UPDATE `biblioteca`.`material` SET `estado` = 0 WHERE `codigoMaterial` = materialId;
END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-12-10 18:14:24
