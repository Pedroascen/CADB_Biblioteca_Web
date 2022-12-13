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
-- Table structure for table `cd`
--

DROP TABLE IF EXISTS `cd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cd` (
  `IdCD` int(11) NOT NULL,
  `CodigoMaterialC` varchar(10) NOT NULL,
  `Autor(es)` varchar(250) NOT NULL,
  `pais_publicacion` varchar(25) NOT NULL,
  `ciudad_publicacion` varchar(25) NOT NULL,
  `anio_publicacion` year(4) NOT NULL,
  `volumen` int(11) NOT NULL,
  `idioma` varchar(15) NOT NULL,
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
INSERT INTO `cd` VALUES (1,'CDS0000001','AC/DC','USA','USA',2002,3,'Ingles','T.N.T');
/*!40000 ALTER TABLE `cd` ENABLE KEYS */;
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
  `Autor(es)` varchar(100) NOT NULL,
  `NumeroPaginas` int(11) NOT NULL,
  `Editorial` varchar(50) NOT NULL,
  `Pais` varchar(25) NOT NULL,
  `ISBN` int(13) NOT NULL,
  `AnioPublicacion` year(4) NOT NULL,
  `Edicion` int(11) NOT NULL,
  `Idioma` varchar(15) NOT NULL,
  `Materia` varchar(15) NOT NULL,
  `Descripcion` varchar(250) NOT NULL,
  PRIMARY KEY (`IdLibro`),
  KEY `codigoMaterialL_idx` (`codigoMaterialL`),
  CONSTRAINT `codigoMaterialL` FOREIGN KEY (`codigoMaterialL`) REFERENCES `material` (`codigoMaterial`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `libro`
--

LOCK TABLES `libro` WRITE;
/*!40000 ALTER TABLE `libro` DISABLE KEYS */;
INSERT INTO `libro` VALUES (1,'LIB0000001','Anonimo',1000,'Anonimo','España',2003341234,2006,15,'Español','Religioso','Ninguna'),(2,'LIB0000002','Anonimo',300,'Hermanos Unidos','El Salvador',2012345333,2005,1,'Español','Literatura','Ninguna'),(3,'LIB0000003','Anonimo',600,'Hrnos Unidos','El Salvador',1234565665,2006,6,'Español','Literatura','Historia de Fantasia'),(4,'LIB0000004','Anonimo',600,'Hrnos Unidos','El Salvador',1234345643,2006,2,'Español','Literatura','Ninguna'),(5,'LIB0000005','Enrique Valdez',500,'Hrnos Unidos','El Salvador',1234567712,2005,1,'Español','Literatura','Narracion tipo fantasia'),(6,'LIB0000006','Herbert Schildt',1152,'McGraw Hill','Estados Unidos',1171606300,2011,8,'Inglés','Programación','Actualizado para Java Platform, Standard Edition 7 (Java SE 7), este volumen integral cubre todo el lenguaje Java, incluida su sintaxis, palabras clave y principios fundamentales.');
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
  `Titulo` varchar(60) NOT NULL,
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
INSERT INTO `material` VALUES ('CDS0000001','Clasicos Rock',4,'E-6',10,9,1,1),('LIB0000001','La Biblia',1,'E-1',5,4,1,1),('LIB0000002','Don Quijote ',1,'E-3',3,3,0,1),('LIB0000003','El Mago de Oz',1,'E-2',6,5,1,1),('LIB0000004','Las Cronicas',1,'E-2',5,4,1,1),('LIB0000005','Doroty',1,'E-4',5,5,0,1),('LIB0000006','Java The Complete Reference',1,'E-1',1,1,0,1),('OBR0000001','Prometeo Encadenado',2,'E-2',5,5,0,1),('REV0000001','Salud',3,'E-4',5,4,1,1),('REV0000002','Salud',3,'E-5',6,6,0,1),('TES0000001','Test Psicologico',5,'E-2',1,1,0,1);
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
  `Autor(es)` varchar(100) NOT NULL,
  `NumeroPaginas` int(11) NOT NULL,
  `Editorial` varchar(45) NOT NULL,
  `Pais` varchar(25) NOT NULL,
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
INSERT INTO `obra` VALUES (1,'OBR0000001','Esquilo',300,'Editorial Salvadoreña Hermanos Unidos','El Salvador',2134456778,2000,2,'Español','Epico');
/*!40000 ALTER TABLE `obra` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prestamo`
--

LOCK TABLES `prestamo` WRITE;
/*!40000 ALTER TABLE `prestamo` DISABLE KEYS */;
INSERT INTO `prestamo` VALUES (1,'PH220009','TES0000001','2022-11-13','2022-11-20',0,0,'2022-11-15'),(2,'JS220007','REV0000001','2022-11-13','2022-11-20',0,0,'2022-11-15'),(3,'PH220009','CDS0000001','2022-11-15','2022-11-22',0,0,'2022-11-15'),(4,'AA220006','TES0000001','2022-11-15','2022-11-22',0,0,'2022-11-16'),(5,'PH220009','REV0000001','2022-11-15','2022-11-22',1,4.75,NULL),(6,'PH220009','LIB0000004','2022-11-15','2022-11-22',0,4.75,'2022-12-11'),(7,'JS220007','LIB0000003','2022-11-01','2022-11-08',1,8.25,NULL),(8,'PH220009','LIB0000001','2022-12-11','2022-12-18',1,0,NULL),(9,'AA220006','LIB0000004','2022-12-11','2022-12-18',1,0,NULL),(10,'AA220006','CDS0000001','2022-12-11','2022-12-18',0,0,'2022-12-11'),(11,'AA220006','CDS0000001','2022-12-11','2022-12-18',1,0,NULL);
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
  `Editorial` varchar(50) NOT NULL,
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
INSERT INTO `revista` VALUES (1,'REV0000001','La Prensa',2001234001,'Español','25x30','20 Jun','2022-12-20'),(2,'REV0000002','ESE EDICIONES',34569876,'Español','20x30','24-jun','2022-12-31');
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
  `Autor(es)` varchar(250) NOT NULL,
  `Pais` varchar(25) NOT NULL,
  `Ciudad` varchar(25) NOT NULL,
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
INSERT INTO `tesis` VALUES (1,'TES0000001','Villafuerte','El Salvador','Ahuachapan','UES','Psicologia','Español','2022-11-13',945,'Estudio sobre problemas sociales','Neuroartes');
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
	SELECT 'Libro' AS TipoMaterial,  a.codigoMaterial, a.Titulo, `Autor(es)`,  concat(`Autor(es)`, ', ', Pais, ', ', Editorial, ', ', AnioPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.libro AS b ON a.codigoMaterial = b.codigoMaterialL
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND `Autor(es)` LIKE CONCAT('%', pAutor , '%') THEN 1
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
	SELECT 'Revista' AS TipoMaterial, a.codigoMaterial, a.Titulo, '' as Autores, concat(Editorial, ', ', ISSN, ', ', Idioma, ', ', Tamano, ', ', Periodicidad, ', ', FechaPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.revista AS b ON a.codigoMaterial = b.codigoMaterialR
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
	SELECT 'Obra' AS TipoMaterial, a.codigoMaterial, a.Titulo, `Autor(es)`, concat(`Autor(es)`, ', ', Pais, ', ', Editorial, ', ', AnioPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.obra AS b ON a.codigoMaterial = b.codigoMaterialO
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND `Autor(es)` LIKE CONCAT('%', pAutor , '%') THEN 1
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
	SELECT 'Tesis' AS TipoMaterial, a.codigoMaterial, a.Titulo, `Autor(es)`,  concat(`Autor(es)`, ', ', Ciudad, ', ', Pais, ', ', Universidad, ', ', FechaPublicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.tesis AS b ON a.codigoMaterial = b.codigoMaterialT
	WHERE 
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND `Autor(es)` LIKE CONCAT('%', pAutor , '%') THEN 1
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
	SELECT 'CD' AS TipoMaterial, a.codigoMaterial, a.Titulo, `Autor(es)`,  concat(`Autor(es)`, ', ', ciudad_publicacion, ', ', pais_publicacion, ', ', anio_publicacion) AS MaterialInfo
	FROM biblioteca.material AS a
	INNER JOIN biblioteca.cd AS b ON a.codigoMaterial = b.codigoMaterialC
	WHERE
    (CASE
		WHEN length(pTitulo) = 0 THEN 1
		WHEN length(pTitulo) > 0 AND a.Titulo LIKE CONCAT('%', pTitulo , '%') THEN 1
		ELSE 0
	END) = 1
    AND (CASE
		WHEN length(pAutor) = 0 THEN 1
		WHEN length(pAutor) > 0 AND `Autor(es)` LIKE CONCAT('%', pAutor , '%') THEN 1
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
  CASE WHEN pOrderby = 'Titulo' THEN Titulo END ASC, 
  CASE WHEN pOrderby = 'Autor' THEN Autores END ASC,
  CASE WHEN pOrderby = 'Clasificacion' THEN TipoMaterial END ASC;

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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_cd`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` VARCHAR(250), `paispubli` VARCHAR(25), `ciudadpub` VARCHAR(25), `anio_publi` INT(4), `volumen` INT, `idioma` VARCHAR(15), `tema` VARCHAR(25))
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
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_libro`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` VARCHAR(100), `npaginas` INT, `editorial` VARCHAR(50), `pais` VARCHAR(25), `isbn` INT, `anio` INT, `edicion` INT, `idioma` VARCHAR(15), `materia` VARCHAR(15), `descripcion` VARCHAR(250))
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
   SET lcodmaterial = codmaterial;
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_obra`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` VARCHAR(100), `npaginas` INT, `editorial` VARCHAR(45), `pais` VARCHAR(25), `isbn` INT, `anio` INT, `edicion` INT, `idioma` VARCHAR(15), `genero` VARCHAR(15))
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_revista`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `editorial` VARCHAR(50), `issn` INT, `idioma` VARCHAR(15), `tamano` VARCHAR(50), `periodicidad` VARCHAR(20), `fechapublicacion` DATE)
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
/*!50003 SET sql_mode              = 'NO_AUTO_VALUE_ON_ZERO' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `new_upd_tesis`(`codmaterial` VARCHAR(8), `titulo` VARCHAR(100), `ufisica` VARCHAR(20), `cejemp` INT, `autor` VARCHAR(250), `pais` VARCHAR(25), `ciudad` VARCHAR(25), `universidad` VARCHAR(250), `carrera` VARCHAR(250), `idioma` VARCHAR(15), `fechaPublicacion` DATE, `numeroPaginas` INT, `descripcion` VARCHAR(250), `palabrasclave` VARCHAR(250))
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

-- Dump completed on 2022-12-11 22:42:44
