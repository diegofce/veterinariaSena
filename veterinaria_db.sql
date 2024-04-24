CREATE DATABASE  IF NOT EXISTS `veterinaria_dr_care` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `veterinaria_dr_care`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: veterinaria_dr_care
-- ------------------------------------------------------
-- Server version	8.3.0

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
-- Table structure for table `accesorios_mascotas`
--

DROP TABLE IF EXISTS `accesorios_mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `accesorios_mascotas` (
  `id_accesorio` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_accesorio`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `accesorios_mascotas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `accesorios_mascotas`
--

LOCK TABLES `accesorios_mascotas` WRITE;
/*!40000 ALTER TABLE `accesorios_mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `accesorios_mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `agendamiento_citas`
--

DROP TABLE IF EXISTS `agendamiento_citas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agendamiento_citas` (
  `id_agendamiento` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `id_servicio` int NOT NULL,
  `nombre_servicio` varchar(30) NOT NULL,
  `tipo_consulta` varchar(100) NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `precio` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_agendamiento`),
  KEY `fk_agendamiento_citas_servicio1_idx_idx` (`id_servicio`),
  CONSTRAINT `fk_agendamiento_citas_servicio1_idx` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agendamiento_citas`
--

LOCK TABLES `agendamiento_citas` WRITE;
/*!40000 ALTER TABLE `agendamiento_citas` DISABLE KEYS */;
/*!40000 ALTER TABLE `agendamiento_citas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `alimentos_mascotas`
--

DROP TABLE IF EXISTS `alimentos_mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `alimentos_mascotas` (
  `id_alimento` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_alimento`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `alimentos_mascotas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `alimentos_mascotas`
--

LOCK TABLES `alimentos_mascotas` WRITE;
/*!40000 ALTER TABLE `alimentos_mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `alimentos_mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cantidad_vacuna`
--

DROP TABLE IF EXISTS `cantidad_vacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cantidad_vacuna` (
  `id_cantidad_vacuna` int NOT NULL AUTO_INCREMENT,
  `id_mascota` int NOT NULL,
  `cantidad` smallint NOT NULL,
  PRIMARY KEY (`id_cantidad_vacuna`),
  KEY `fk_cantidad_vacuna_mascota_idx_idx` (`id_mascota`),
  CONSTRAINT `fk_cantidad_vacuna_mascota_idx` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cantidad_vacuna`
--

LOCK TABLES `cantidad_vacuna` WRITE;
/*!40000 ALTER TABLE `cantidad_vacuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `cantidad_vacuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_compras`
--

DROP TABLE IF EXISTS `carrito_compras`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_compras` (
  `id_carrito` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `fecha_compra` date NOT NULL,
  `total` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_carrito`),
  KEY `fk_carrito_compras_cliente_idx_idx` (`id_cliente`),
  CONSTRAINT `fk_carrito_compras_cliente_idx` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_compras`
--

LOCK TABLES `carrito_compras` WRITE;
/*!40000 ALTER TABLE `carrito_compras` DISABLE KEYS */;
/*!40000 ALTER TABLE `carrito_compras` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ciudad`
--

DROP TABLE IF EXISTS `ciudad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ciudad` (
  `id_ciudad` smallint NOT NULL AUTO_INCREMENT,
  `id_departamento` smallint NOT NULL,
  `nombre_ciudad` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ciudad`),
  KEY `fk_ciudad_departamento_idx_idx` (`id_departamento`),
  CONSTRAINT `fk_ciudad_departamento_idx` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ciudad`
--

LOCK TABLES `ciudad` WRITE;
/*!40000 ALTER TABLE `ciudad` DISABLE KEYS */;
/*!40000 ALTER TABLE `ciudad` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente` (
  `id_cliente` int NOT NULL auto_increment,
  `id_departamento` smallint NOT NULL,
  `id_ciudad` smallint NOT NULL,
  `primer_nombre_cliente` varchar(30) NOT NULL,
  `segundo_nombre_cliente` varchar(30) DEFAULT NULL,
  `primer_apellido_cliente` varchar(30) NOT NULL,
  `segundo_apellido_cliente` varchar(30) DEFAULT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(250) NOT NULL,
  `direccion` varchar(350) NOT NULL,
  `contrasena` varchar(50) NOT NULL,
  PRIMARY KEY (`id_cliente`),
  KEY `fk_cliente_departamento_idx_idx` (`id_departamento`),
  KEY `fk_cliente_ciudad_idx_idx` (`id_ciudad`),
  CONSTRAINT `fk_cliente_ciudad_idx` FOREIGN KEY (`id_ciudad`) REFERENCES `ciudad` (`id_ciudad`),
  CONSTRAINT `fk_cliente_departamento_idx` FOREIGN KEY (`id_departamento`) REFERENCES `departamento` (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cliente2`
--

DROP TABLE IF EXISTS `cliente2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cliente2` (
  `id_cliente` int NOT NULL AUTO_INCREMENT,
  `primer_nombre_cliente` varchar(255) NOT NULL,
  `segundo_nombre_cliente` varchar(255) NOT NULL,
  `primer_apellido_cliente` varchar(255) NOT NULL,
  `segundo_apellido_cliente` varchar(255) NOT NULL,
  `fecha_nacimiento` date NOT NULL,
  `email` varchar(255) NOT NULL,
  `direccion` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `tipo_documento` varchar(255) NOT NULL,
  `identificacion` int NOT NULL,
  `ciudad` varchar(255) NOT NULL,
  `departamento` varchar(255) NOT NULL,
  `telefono` int NOT NULL,
  PRIMARY KEY (`id_cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente2`
--

LOCK TABLES `cliente2` WRITE;
/*!40000 ALTER TABLE `cliente2` DISABLE KEYS */;
INSERT INTO `cliente2` VALUES (1,'Pablo','Emilio','Valencia','Beltran','2024-04-15','micorreo@gmail.com','calle','Sara123.','Cedula de Ciudadania',123456,'Manizales','Caldas',1234567);
/*!40000 ALTER TABLE `cliente2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `departamento`
--

DROP TABLE IF EXISTS `departamento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `departamento` (
  `id_departamento` smallint NOT NULL AUTO_INCREMENT,
  `nombre_departamento` varchar(50) NOT NULL,
  PRIMARY KEY (`id_departamento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `departamento`
--

LOCK TABLES `departamento` WRITE;
/*!40000 ALTER TABLE `departamento` DISABLE KEYS */;
/*!40000 ALTER TABLE `departamento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_carrito`
--

DROP TABLE IF EXISTS `detalle_carrito`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_carrito` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_carrito` int NOT NULL,
  `id_producto` int NOT NULL,
  `tipo_producto` enum('alimento','accesorio','medicamento') NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `precio_unitario` float NOT NULL,
  `subtotal` float NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_carrito_carrito_compras_idx_idx` (`id_carrito`),
  KEY `fk_detalle_carrito_productos_idx` (`id_producto`),
  CONSTRAINT `fk_detalle_carrito_carrito_compras_idx` FOREIGN KEY (`id_carrito`) REFERENCES `carrito_compras` (`id_carrito`),
  CONSTRAINT `fk_detalle_carrito_productos` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_carrito`
--

LOCK TABLES `detalle_carrito` WRITE;
/*!40000 ALTER TABLE `detalle_carrito` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_carrito` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_factura`
--

DROP TABLE IF EXISTS `detalle_factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_factura` (
  `id_detalle` int NOT NULL AUTO_INCREMENT,
  `id_factura` int NOT NULL,
  `id_producto` int NOT NULL,
  `tipo_producto` enum('alimento','accesorio','medicamento') NOT NULL,
  `cantidad` int NOT NULL DEFAULT '1',
  `precio_unitario` float NOT NULL,
  `subtotal` float NOT NULL,
  PRIMARY KEY (`id_detalle`),
  KEY `fk_detalle_factura_factura_idx` (`id_factura`),
  KEY `fk_detalle_factura_productos_idx_idx` (`id_producto`),
  CONSTRAINT `fk_detalle_factura_factura` FOREIGN KEY (`id_factura`) REFERENCES `factura` (`id_factura`),
  CONSTRAINT `fk_detalle_factura_productos_idx` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_factura`
--

LOCK TABLES `detalle_factura` WRITE;
/*!40000 ALTER TABLE `detalle_factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `detalle_factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `documento`
--

DROP TABLE IF EXISTS `documento`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `documento` (
  `id_tipo_documento` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `nombre_documento` varchar(20) NOT NULL,
  `numero_documento` int NOT NULL,
  PRIMARY KEY (`id_tipo_documento`),
  UNIQUE KEY `numero_documento` (`numero_documento`),
  KEY `fk_documento_cliente_idx` (`id_cliente`),
  CONSTRAINT `fk_documento_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `documento`
--

LOCK TABLES `documento` WRITE;
/*!40000 ALTER TABLE `documento` DISABLE KEYS */;
/*!40000 ALTER TABLE `documento` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `especie_mascota`
--

DROP TABLE IF EXISTS `especie_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `especie_mascota` (
  `id_especie_mascota` int NOT NULL AUTO_INCREMENT,
  `nombre_especie` varchar(15) NOT NULL,
  PRIMARY KEY (`id_especie_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `especie_mascota`
--

LOCK TABLES `especie_mascota` WRITE;
/*!40000 ALTER TABLE `especie_mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `especie_mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `id_factura` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `id_cliente` int NOT NULL,
  `fecha` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sub_total` float NOT NULL DEFAULT '0',
  `impuestos` decimal(2,2) NOT NULL,
  `total_pagar` float NOT NULL,
  `id_tipo_pago` int NOT NULL,
  `id_servicio` int NOT NULL,
  PRIMARY KEY (`id_factura`),
  KEY `fk_factura_cliente_idx_idx` (`id_cliente`),
  KEY `fk_factura_tipo_pago_idx_idx` (`id_tipo_pago`),
  KEY `fk_factura_servicio_idx_idx` (`id_servicio`),
  CONSTRAINT `fk_factura_cliente_idx` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_factura_servicio_idx` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`),
  CONSTRAINT `fk_factura_tipo_pago_idx` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `historia_clinica_mascota`
--

DROP TABLE IF EXISTS `historia_clinica_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `historia_clinica_mascota` (
  `id_historia_clinica` int NOT NULL AUTO_INCREMENT,
  `id_mascota` int NOT NULL,
  `epicrisis` text NOT NULL,
  `fecha` datetime NOT NULL,
  PRIMARY KEY (`id_historia_clinica`),
  KEY `fk_historia_clinica_mascota_mascota_idx_idx` (`id_mascota`),
  CONSTRAINT `fk_historia_clinica_mascota_mascota_idx` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `historia_clinica_mascota`
--

LOCK TABLES `historia_clinica_mascota` WRITE;
/*!40000 ALTER TABLE `historia_clinica_mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `historia_clinica_mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota`
--

DROP TABLE IF EXISTS `mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota` (
  `id_mascota` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_especie_mascota` int NOT NULL,
  `id_raza` int NOT NULL,
  `nombre_mascota` varchar(150) NOT NULL,
  `edad` smallint NOT NULL,
  `peso` smallint NOT NULL,
  PRIMARY KEY (`id_mascota`),
  KEY `fk_mascota_cliente_idx` (`id_cliente`),
  KEY `fk_mascota_especie_mascota_idx_idx` (`id_especie_mascota`),
  KEY `fk_mascota_raza_idx_idx` (`id_raza`),
  CONSTRAINT `fk_mascota_cliente_idx` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_mascota_especie_mascota_idx` FOREIGN KEY (`id_especie_mascota`) REFERENCES `especie_mascota` (`id_especie_mascota`),
  CONSTRAINT `fk_mascota_raza_idx` FOREIGN KEY (`id_raza`) REFERENCES `raza` (`id_raza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota`
--

LOCK TABLES `mascota` WRITE;
/*!40000 ALTER TABLE `mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mascota_vacuna`
--

DROP TABLE IF EXISTS `mascota_vacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mascota_vacuna` (
  `id_mascota_vacuna` int NOT NULL AUTO_INCREMENT,
  `id_mascota` int NOT NULL,
  `id_vacuna` int NOT NULL,
  PRIMARY KEY (`id_mascota_vacuna`),
  KEY `fk_mascota_vacuna_mascota_idx` (`id_mascota`),
  KEY `fk_mascota_vacuna_vacuna_idx` (`id_vacuna`),
  CONSTRAINT `fk_mascota_vacuna_mascota_idx` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`),
  CONSTRAINT `fk_mascota_vacuna_vacuna_idx` FOREIGN KEY (`id_vacuna`) REFERENCES `vacuna` (`id_vacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mascota_vacuna`
--

LOCK TABLES `mascota_vacuna` WRITE;
/*!40000 ALTER TABLE `mascota_vacuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `mascota_vacuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicamentos_mascotas`
--

DROP TABLE IF EXISTS `medicamentos_mascotas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicamentos_mascotas` (
  `id_medicamento` int NOT NULL AUTO_INCREMENT,
  `id_producto` int NOT NULL,
  `cantidad` int NOT NULL,
  PRIMARY KEY (`id_medicamento`),
  KEY `id_producto` (`id_producto`),
  CONSTRAINT `medicamentos_mascotas_ibfk_1` FOREIGN KEY (`id_producto`) REFERENCES `productos` (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicamentos_mascotas`
--

LOCK TABLES `medicamentos_mascotas` WRITE;
/*!40000 ALTER TABLE `medicamentos_mascotas` DISABLE KEYS */;
/*!40000 ALTER TABLE `medicamentos_mascotas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `id_producto` int NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `descripcion` text NOT NULL,
  `imagen` blob,
  `precio` float NOT NULL,
  `tipo_producto` enum('alimento','accesorio','medicamento') NOT NULL,
  PRIMARY KEY (`id_producto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba`
--

DROP TABLE IF EXISTS `prueba`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba` (
  `id_prueba` int NOT NULL AUTO_INCREMENT,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `identificacion` int NOT NULL,
  `edad` tinyint unsigned NOT NULL,
  PRIMARY KEY (`id_prueba`),
  UNIQUE KEY `identificacion` (`identificacion`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba`
--

LOCK TABLES `prueba` WRITE;
/*!40000 ALTER TABLE `prueba` DISABLE KEYS */;
INSERT INTO `prueba` VALUES (1,'Francisco Julian','Valencia Beltran',75087436,45),(2,'Sandra','Galarza',66857328,52);
/*!40000 ALTER TABLE `prueba` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prueba2`
--

DROP TABLE IF EXISTS `prueba2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prueba2` (
  `id_prueba` int NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  PRIMARY KEY (`id_prueba`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prueba2`
--

LOCK TABLES `prueba2` WRITE;
/*!40000 ALTER TABLE `prueba2` DISABLE KEYS */;
INSERT INTO `prueba2` VALUES (1,'micorreo@htomail.com','juan123.'),(2,'micorreo@gmail.com','juan123.'),(3,'micorreo@htomail.com','sdfasdfasd'),(4,'ewr@ertw','sdfasdfasdf');
/*!40000 ALTER TABLE `prueba2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raza`
--

DROP TABLE IF EXISTS `raza`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raza` (
  `id_raza` int NOT NULL AUTO_INCREMENT,
  `nombre_raza` varchar(30) NOT NULL,
  PRIMARY KEY (`id_raza`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raza`
--

LOCK TABLES `raza` WRITE;
/*!40000 ALTER TABLE `raza` DISABLE KEYS */;
/*!40000 ALTER TABLE `raza` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetario`
--

DROP TABLE IF EXISTS `recetario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetario` (
  `id_recetario` int NOT NULL AUTO_INCREMENT,
  `id_historia_clinica` int NOT NULL,
  `nombre_medicamento` varchar(50) NOT NULL,
  `presentacion` varchar(30) NOT NULL,
  PRIMARY KEY (`id_recetario`),
  KEY `fk_recetario_historia_clinica_mascota_idx_idx` (`id_historia_clinica`),
  CONSTRAINT `fk_recetario_historia_clinica_mascota_idx` FOREIGN KEY (`id_historia_clinica`) REFERENCES `historia_clinica_mascota` (`id_historia_clinica`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetario`
--

LOCK TABLES `recetario` WRITE;
/*!40000 ALTER TABLE `recetario` DISABLE KEYS */;
/*!40000 ALTER TABLE `recetario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol`
--

DROP TABLE IF EXISTS `rol`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol` (
  `id_rol` int NOT NULL AUTO_INCREMENT,
  `nombre_rol` varchar(50) NOT NULL,
  PRIMARY KEY (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol`
--

LOCK TABLES `rol` WRITE;
/*!40000 ALTER TABLE `rol` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rol_cliente`
--

DROP TABLE IF EXISTS `rol_cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rol_cliente` (
  `id_rol_cliente` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_rol` int NOT NULL,
  `salud` varchar(50) DEFAULT NULL,
  `pension` varchar(50) DEFAULT NULL,
  `arl` varchar(50) DEFAULT NULL,
  `caja_compensacion` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_rol_cliente`),
  KEY `fk_rol_cliente_rol_idx` (`id_rol`),
  KEY `fk_rol_cliente_cliente_idx_idx` (`id_cliente`),
  CONSTRAINT `fk_rol_cliente_cliente_idx` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_rol_cliente_rol_idx` FOREIGN KEY (`id_rol`) REFERENCES `rol` (`id_rol`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rol_cliente`
--

LOCK TABLES `rol_cliente` WRITE;
/*!40000 ALTER TABLE `rol_cliente` DISABLE KEYS */;
/*!40000 ALTER TABLE `rol_cliente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servicio`
--

DROP TABLE IF EXISTS `servicio`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicio` (
  `id_servicio` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `id_tipo_pago` int NOT NULL,
  PRIMARY KEY (`id_servicio`),
  KEY `fk_servicio_cliente_idx` (`id_cliente`),
  KEY `fk_servicio_tipo_pago_idx_idx` (`id_tipo_pago`),
  CONSTRAINT `fk_servicio_cliente_idx` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`),
  CONSTRAINT `fk_servicio_tipo_pago_idx` FOREIGN KEY (`id_tipo_pago`) REFERENCES `tipo_pago` (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicio`
--

LOCK TABLES `servicio` WRITE;
/*!40000 ALTER TABLE `servicio` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicio` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `spa`
--

DROP TABLE IF EXISTS `spa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `spa` (
  `id_spa` int NOT NULL AUTO_INCREMENT,
  `codigo` varchar(10) NOT NULL,
  `id_servicio` int NOT NULL,
  `descripcion` text NOT NULL,
  `fecha` date NOT NULL,
  `hora` time NOT NULL,
  `precio` float NOT NULL DEFAULT '0',
  `nombre` varchar(10) NOT NULL,
  PRIMARY KEY (`id_spa`),
  KEY `fk_spa_servicio_idx` (`id_servicio`),
  CONSTRAINT `fk_spa_servicio1_idx` FOREIGN KEY (`id_servicio`) REFERENCES `servicio` (`id_servicio`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `spa`
--

LOCK TABLES `spa` WRITE;
/*!40000 ALTER TABLE `spa` DISABLE KEYS */;
/*!40000 ALTER TABLE `spa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `telefono_contacto`
--

DROP TABLE IF EXISTS `telefono_contacto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `telefono_contacto` (
  `id_telefono` int NOT NULL AUTO_INCREMENT,
  `id_cliente` int NOT NULL,
  `numero_telefono` int NOT NULL,
  PRIMARY KEY (`id_telefono`),
  UNIQUE KEY `numero_telefono` (`numero_telefono`),
  KEY `fk_telefono_contacto_cliente_idx` (`id_cliente`),
  CONSTRAINT `fk_telefono_contacto_cliente` FOREIGN KEY (`id_cliente`) REFERENCES `cliente` (`id_cliente`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `telefono_contacto`
--

LOCK TABLES `telefono_contacto` WRITE;
/*!40000 ALTER TABLE `telefono_contacto` DISABLE KEYS */;
/*!40000 ALTER TABLE `telefono_contacto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_consulta`
--

DROP TABLE IF EXISTS `tipo_consulta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_consulta` (
  `id_consulta` int NOT NULL AUTO_INCREMENT,
  `id_agendamiento` int NOT NULL,
  `nombre_consulta` varchar(50) NOT NULL,
  `precio` float NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_consulta`),
  KEY `fk_tipo_consulta_agendamiento_citas_idx` (`id_agendamiento`),
  CONSTRAINT `fk_tipo_consulta_agendamiento_citas` FOREIGN KEY (`id_agendamiento`) REFERENCES `agendamiento_citas` (`id_agendamiento`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_consulta`
--

LOCK TABLES `tipo_consulta` WRITE;
/*!40000 ALTER TABLE `tipo_consulta` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_consulta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_mascota`
--

DROP TABLE IF EXISTS `tipo_mascota`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_mascota` (
  `id_tipo_mascota` int NOT NULL AUTO_INCREMENT,
  `tipo_mascota` varchar(50) NOT NULL,
  `id_mascota` int NOT NULL,
  PRIMARY KEY (`id_tipo_mascota`),
  KEY `fk_tipo_mascota_mascota_idx` (`id_mascota`),
  CONSTRAINT `fk_tipo_mascota_mascota` FOREIGN KEY (`id_mascota`) REFERENCES `mascota` (`id_mascota`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_mascota`
--

LOCK TABLES `tipo_mascota` WRITE;
/*!40000 ALTER TABLE `tipo_mascota` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_mascota` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipo_pago`
--

DROP TABLE IF EXISTS `tipo_pago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipo_pago` (
  `id_tipo_pago` int NOT NULL AUTO_INCREMENT,
  `nombre_medio_pago` varchar(30) NOT NULL,
  PRIMARY KEY (`id_tipo_pago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipo_pago`
--

LOCK TABLES `tipo_pago` WRITE;
/*!40000 ALTER TABLE `tipo_pago` DISABLE KEYS */;
/*!40000 ALTER TABLE `tipo_pago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vacuna`
--

DROP TABLE IF EXISTS `vacuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `vacuna` (
  `id_vacuna` int NOT NULL AUTO_INCREMENT,
  `nombre_vacuna` varchar(45) NOT NULL,
  PRIMARY KEY (`id_vacuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vacuna`
--

LOCK TABLES `vacuna` WRITE;
/*!40000 ALTER TABLE `vacuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `vacuna` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-23 18:52:30
