-- MySQL dump 10.16  Distrib 10.1.34-MariaDB, for Win32 (AMD64)
--
-- Host: localhost    Database: cede_olimpica
-- ------------------------------------------------------
-- Server version	10.1.34-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `areas`
--

DROP TABLE IF EXISTS `areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `areas` (
  `id_localizacion` int(6) DEFAULT NULL,
  `nom_deporte` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `areas`
--

LOCK TABLES `areas` WRITE;
/*!40000 ALTER TABLE `areas` DISABLE KEYS */;
/*!40000 ALTER TABLE `areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cede_olimpica`
--

DROP TABLE IF EXISTS `cede_olimpica`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cede_olimpica` (
  `nombre` varchar(30) DEFAULT NULL,
  `presupuesto` varchar(25) DEFAULT NULL,
  `num_complejos` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cede_olimpica`
--

LOCK TABLES `cede_olimpica` WRITE;
/*!40000 ALTER TABLE `cede_olimpica` DISABLE KEYS */;
/*!40000 ALTER TABLE `cede_olimpica` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `comisario`
--

DROP TABLE IF EXISTS `comisario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `comisario` (
  `nombre` varchar(25) DEFAULT NULL,
  `juez` varchar(30) DEFAULT NULL,
  `observador` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `comisario`
--

LOCK TABLES `comisario` WRITE;
/*!40000 ALTER TABLE `comisario` DISABLE KEYS */;
/*!40000 ALTER TABLE `comisario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `complejos_deportivos`
--

DROP TABLE IF EXISTS `complejos_deportivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `complejos_deportivos` (
  `localizacion` varchar(20) DEFAULT NULL,
  `jefe` varchar(35) DEFAULT NULL,
  `area_ocupada` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `complejos_deportivos`
--

LOCK TABLES `complejos_deportivos` WRITE;
/*!40000 ALTER TABLE `complejos_deportivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `complejos_deportivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventos`
--

DROP TABLE IF EXISTS `eventos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `eventos` (
  `id_eventos` int(6) DEFAULT NULL,
  `duracion` varchar(10) DEFAULT NULL,
  `n_comisarios` int(6) DEFAULT NULL,
  `n_participantes` int(6) DEFAULT NULL,
  `fecha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventos`
--

LOCK TABLES `eventos` WRITE;
/*!40000 ALTER TABLE `eventos` DISABLE KEYS */;
/*!40000 ALTER TABLE `eventos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `polideportivos`
--

DROP TABLE IF EXISTS `polideportivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `polideportivos` (
  `nom_evento` varchar(30) DEFAULT NULL,
  `n_eventos` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `polideportivos`
--

LOCK TABLES `polideportivos` WRITE;
/*!40000 ALTER TABLE `polideportivos` DISABLE KEYS */;
/*!40000 ALTER TABLE `polideportivos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `uni_deporte`
--

DROP TABLE IF EXISTS `uni_deporte`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `uni_deporte` (
  `id_deporte` int(6) DEFAULT NULL,
  `nom_evento` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `uni_deporte`
--

LOCK TABLES `uni_deporte` WRITE;
/*!40000 ALTER TABLE `uni_deporte` DISABLE KEYS */;
/*!40000 ALTER TABLE `uni_deporte` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-30  9:16:37
