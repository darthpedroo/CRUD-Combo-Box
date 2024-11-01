CREATE DATABASE  IF NOT EXISTS `box` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `box`;
-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: box
-- ------------------------------------------------------
-- Server version	8.0.34

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
-- Table structure for table `articulo`
--

DROP TABLE IF EXISTS `articulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulo` (
  `idArticulo` varchar(45) NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `idCategoria` int NOT NULL,
  `Precio` decimal(8,2) NOT NULL,
  `idTipoArticulo` int NOT NULL,
  `idUnidadMedida` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  `Stock` decimal(8,2) NOT NULL,
  `StockMinimo` decimal(8,2) NOT NULL,
  `FechaAlta` date NOT NULL,
  PRIMARY KEY (`idArticulo`),
  KEY `IDX_TIPOARTICULO` (`idTipoArticulo`),
  KEY `IDX_CATEGORIA` (`idCategoria`),
  KEY `IDX_UNIDADMEDIDA` (`idUnidadMedida`),
  CONSTRAINT `FKID_CATEGORIA_ARTICULO` FOREIGN KEY (`idCategoria`) REFERENCES `categoria` (`idCategoria`),
  CONSTRAINT `FKID_TIPOARTICULO_ARTICULO` FOREIGN KEY (`idTipoArticulo`) REFERENCES `tipoarticulo` (`idTipoArticulo`),
  CONSTRAINT `FKID_UNIDAD_MEDIDA_ARTICULO` FOREIGN KEY (`idUnidadMedida`) REFERENCES `unidadmedida` (`idUnidadMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulo`
--

LOCK TABLES `articulo` WRITE;
/*!40000 ALTER TABLE `articulo` DISABLE KEYS */;
INSERT INTO `articulo` VALUES ('AGUA','Agua',6,100.00,25,'LTS','A',100000.00,0.00,'2007-01-01'),('BC10038-25','Base Cerejeira 100x38x2,5',4,100.00,2,'CU','A',99998.00,50.00,'2016-03-10'),('BICAZ1','Birome BIC AZUL GRUESO',5,25.00,5,'CU','A',100000.00,5.00,'2007-01-01'),('BICNG1','Birome BIC NEGRO GRUESO',5,25.00,5,'CU','A',100000.00,5.00,'2007-01-01'),('BICRO1','Birome BIC ROJO GRUESO',5,25.00,5,'CU','A',100000.00,5.00,'2007-01-01'),('BICTGAZUL','Bic trazo grueso Azul ',5,15.00,5,'CU','A',100000.00,15.00,'2021-10-10'),('BICTGNEGRA','Bic trazo grueso Negra',5,15.00,5,'CU','A',100000.00,15.00,'2021-11-10'),('BICTGROJO','Bic trazo grueso Rojo',5,15.00,5,'CU','A',100000.00,15.00,'2021-10-10'),('BOGLOGO','Logo Bogner',4,0.00,20,'CU','A',100000.00,15.00,'2018-08-02'),('BP10038-25','Base Pino 100x38x2,5',4,250.00,2,'CU','A',99993.00,5.00,'2010-01-08'),('BP11038-25','Base Pino 110x38x2,5',4,120.00,2,'CU','A',99997.00,5.00,'2010-02-08'),('BP12038-25','Base Pino 120x38x2,5',4,220.00,2,'CU','A',100000.00,5.00,'2010-04-20'),('BROCHES10','Broches 10',5,11.00,5,'CU','A',100000.00,5.00,'2021-11-10'),('BROCHES15','Broches 15',5,11.80,5,'CU','A',100000.00,5.00,'2021-10-20'),('CHAPF-P1000','Chapa Apoyo Sup. Fender P1000',4,380.00,21,'CU','A',100000.00,5.00,'2010-04-10'),('CHAPFDER-HR','Chapa Apoyo Sup. Fender HR',4,280.00,21,'CU','A',99996.00,20.00,'2019-04-10'),('CHAPMBHN','Chapa Apoyo Sup. MB Head - Negro',4,400.00,21,'CU','A',99990.00,5.00,'2010-04-10'),('COLA_MADERA','Cola Madera ',4,90.00,3,'CM3','A',160000.00,4000.00,'2013-02-08'),('CUAD-ESPIRAL-CUA-80','CUADERNO Espiralado 80h Cuadriculado',5,80.00,5,'CU','A',100000.00,10.00,'2018-08-08'),('CUAD-ESPIRAL-RAY-80','CUADERNO Espiralado 80h Rayado',5,85.00,5,'CU','A',100000.00,10.00,'2018-08-08'),('CUEFDER-BK','Cuerina Fender Negro',4,150.00,16,'M2','A',99974.70,10.00,'2010-11-03'),('CUEMBC','Cuerina MB Caoba',4,320.00,16,'M2','A',100000.00,10.00,'2010-03-08'),('CUEMBCREAM','Cuerina MB Cream',4,350.00,16,'M2','A',100000.00,10.00,'2010-10-02'),('CUEMBN','Cuerina MB Negro',4,150.00,16,'M2','A',99979.90,10.00,'2010-11-03'),('CUEVIB SLO','Cuerina Vibora Soldano Custom 1',4,600.00,16,'M2','A',1000.00,20.00,'2020-01-01'),('ENERGIA','Energía Electrica',6,1200.00,24,'KWH','A',100.00,0.00,'2007-01-01'),('ESQUIFDERA-BK','Esquinas Fender Acetato - Negro',4,60.00,2,'CU','A',99988.00,20.00,'2018-08-04'),('ESQUIMBAHN','Esquinas MB Acetato Head - Negro',4,600.00,2,'CU','A',99973.00,20.00,'2018-08-04'),('FC9520-25','Fondo Cerejerira 95x20x2,5',4,100.00,2,'CU','A',99998.00,50.00,'2016-03-10'),('FDERLOGO1','Logo Fender 1',4,0.00,20,'CU','A',99998.00,40.00,'2018-08-02'),('FDERLOGO2','Logo Fender 2',4,0.00,20,'CU','A',99998.00,10.00,'2018-08-02'),('FDERLOGO3','Logo Fender 3',4,0.00,20,'CU','A',99997.00,200.00,'2018-08-02'),('FP10535-25','Fondo Pino 105x30x2,5',4,100.00,2,'CU','A',99997.00,5.00,'2018-08-04'),('FP11525-25','Fondo Pino 115x25x2,5',4,100.00,2,'CU','A',100000.00,5.00,'2018-08-08'),('FP1557225','Frente Pino 1x12 W 155x72x2,5',4,200.00,2,'CU','A',100000.00,5.00,'2010-08-08'),('FP9520-25','Fondo Pino 95x20x2,5',4,400.00,2,'CU','A',99993.00,5.00,'2012-08-08'),('FREZ1506N','Frezado 1,5x0,6 - Negro',4,0.30,1,'CU','A',99904.00,150.00,'2012-08-08'),('FREZ1506P','Frezado 1,5x0,6 - Plata',4,0.40,1,'CU','A',99952.00,150.00,'2012-08-08'),('FREZ206P','Frezado 2x0,6 - Plata',4,0.35,1,'CU','A',99976.00,100.00,'2012-08-08'),('FTEC9520-25','Frente Cerejerira 95x20x2,5',4,100.00,2,'CU','A',99998.00,50.00,'2016-03-10'),('FTEP1210545-25','Frente Pino 1x12 105x45x2,5',4,100.00,1,'CU','A',99997.00,5.00,'2012-08-08'),('FTEP1211550-25','Frente Pino 1x12 115x50x2,5',4,220.00,2,'CU','A',100000.00,5.00,'2018-06-08'),('FTEP9520-25','Frente Pino 95x20x2,5',4,130.00,2,'CU','A',99993.00,5.00,'2010-07-08'),('GAS','Gas',6,900.00,25,'CM3','A',100000.00,0.00,'2007-01-01'),('HP12A ','TONER 12A HP',5,3000.00,17,'CU','A',100.00,5.00,'2018-08-08'),('HP78A ','TONER 78A HP',5,3000.00,17,'CU','A',100.00,1.00,'2021-10-08'),('LACA-MR-BR','Laca Marina Brillante',4,205.00,14,'CM3','A',100000.00,4000.00,'2019-08-05'),('LACA-MR-SM','Laca Marina Semi-Mate',4,134.00,14,'CM3','A',800000.00,4000.00,'2019-03-01'),('LCD3840-25','Lateral Der Cerejeira Forma 38x40x2,5',4,100.00,2,'CU','A',9980.00,50.00,'2016-03-10'),('LCI3840-25','Lateral Izq Cerejerira Forma 38x40x2,5',4,100.00,2,'CU','A',9980.00,50.00,'2016-03-10'),('LPD3840-25','Lateral Der Pino Forma 38x40x2,5',4,370.00,2,'CU','A',99993.00,5.00,'2010-08-08'),('LPD3855-25','Lateral Der Pino Forma 38x55x2,5',4,300.00,2,'CU','A',99997.00,5.00,'2010-09-08'),('LPI3840-25','Lateral Izq Pino Forma 38x40x2,5',4,120.00,2,'CU','A',948.00,5.00,'2012-08-08'),('LPI3855-25','Lateral Izq Pino Forma 38x55x2,5',4,140.00,2,'CU','A',99997.00,5.00,'2012-08-08'),('MANITFDER-BK','Manija Transp. Fender - Negro',4,140.00,8,'CU','A',99993.00,20.00,'2018-08-08'),('MANITMBCN','Manija Transp. Heavy MB - Negro',4,450.00,8,'CU','A',100000.00,15.00,'2012-08-08'),('MANITMBN','Manija Transp. MB - Negro',4,340.00,8,'CU','A',99995.00,15.00,'2018-08-08'),('MARLOGO','Logo Marshall',4,0.00,20,'CU','A',100000.00,50.00,'2017-08-03'),('MBLOGO1','Logo Boogie',4,0.00,20,'CU','A',99995.00,20.00,'2018-02-06'),('MBLOGO2','Logo Boogie Cream',4,0.00,20,'CU','A',100000.00,30.00,'2013-02-08'),('MECHAMAD10','Mecha madera 10mm',5,45.00,4,'CU','A',100000.00,5.00,'2018-01-10'),('MECHAMAD4','Mecha madera 4mm',5,35.00,4,'CU','A',100.00,5.00,'2018-08-03'),('MECHAMAD5','Mecha madera 5mm',5,35.00,4,'CU','A',100.00,5.00,'2018-01-12'),('MECHAMAD6','Mecha madera 6mm',5,35.00,4,'CU','A',100.00,5.00,'2018-08-03'),('PARK205N','Parker 2x0,5 - Negro',4,400.00,1,'CU','A',19692.00,100.00,'2013-08-08'),('PARK2505N','Parker 2,5x0,5 - Negro',4,350.00,1,'CU','A',99952.00,120.00,'2018-08-06'),('PEGA-CTO','Pegamento de Contacto ',4,295.00,3,'CM3','A',120000.00,2000.00,'2020-08-12'),('PEGA-CTO_TR','Pegamento de Contacto Tranparente',4,290.00,3,'CM3','A',200000.00,2000.00,'2020-10-03'),('PLASTICOLA 200GRS','Plasticola 200 gramos blanca',5,145.00,5,'CU','A',100000.00,10.00,'2019-08-08'),('REGAFDERSTD-BKN','Regaton Fender STD - Negro',4,22.00,9,'CU','A',99972.00,50.00,'2018-08-06'),('REGAMBHN','Regaton MB Head - Negro',4,122.00,9,'CU','A',9956.00,50.00,'2018-08-06'),('REGUNV35','Regaton UNIV 35mm- Negro',4,75.00,9,'CU','A',6500.00,100.00,'2018-08-06'),('REGUNV40','Regaton UNIV 40mm- Negro',4,80.00,9,'CU','A',4500.00,100.00,'2018-08-06'),('RESMA-A4-75GR','Resma A4 500 x 75grs',5,455.00,5,'CU','A',10000.00,20.00,'2020-08-08'),('RESMA-CARTA-80GR','Resma CARTA 500 x 80grs',5,498.00,5,'CU','A',10000.00,15.00,'2020-08-08'),('RESMAA480G','Resma A4 80grs',5,90.00,5,'CU','A',10000.00,15.00,'2021-10-10'),('RESMALT80G','Resma LT 80grs',5,95.00,5,'CU','A',10000.00,10.00,'2021-10-10'),('RIVLOGO','Logo Rivera',4,0.00,20,'CU','A',10000.00,30.00,'2020-10-03'),('RUED 45-AZUL','Ruedas 45mm diam Azul',4,230.00,18,'CU','A',10000.00,20.00,'2017-08-10'),('RUED 60-BK','Ruedas 60mm diam Negra',4,268.00,18,'CU','A',10000.00,20.00,'2017-08-10'),('SEGURIDAD','Servicio de Seguridad',6,1050.00,25,'CU','A',100.00,0.00,'2007-01-01'),('SEGUROS','Seguros',6,3000.00,25,'CU','A',100.00,0.00,'2007-01-01'),('SLOLOGO','Logo Soldano',4,0.00,20,'CU','A',1000.00,20.00,'2019-03-14'),('TARM1020','Tarugos Mad. 10x20',4,8.00,19,'CU','A',9360.00,150.00,'2014-02-05'),('TARM1030','Tarugos Mad. 10x30',4,8.00,19,'CU','A',6050.00,150.00,'2014-08-04'),('TC10028-25','Tapa Cerejeira 100x28x2,5',4,100.00,2,'CU','A',99998.00,50.00,'2016-03-10'),('TELAFDER-BD','Tela Blues Deville Fender',4,125.80,13,'M2','A',99988.20,40.00,'2019-08-02'),('TOPFONC20-25x25','Tope Fondo Cerejerira 20x2,5x2,5',4,100.00,2,'CU','A',960.00,50.00,'2016-03-10'),('TOPFONP20-25x25','Tope Fondo Pino 20x2,5x2,5',4,270.00,2,'CU','A',896.00,10.00,'2014-08-08'),('TOPFONP25-25x25','Tope Fondo Pino 25x2,5x2,5',4,290.00,2,'CU','A',96.00,10.00,'2014-02-08'),('TOPFONP30-25x25','Tope Fondo Pino 30x2,5x2,5',4,400.00,2,'CU','A',88.00,10.00,'2014-08-10'),('TOPFREC20-25x25','Tope Frente Cerejerira 20x2,5x2,5',4,100.00,2,'CU','A',9960.00,50.00,'2016-03-10'),('TOPFREP20-25x25','Tope Frente Pino 20x2,5x2,5',4,300.00,2,'CU','A',99986.00,10.00,'2014-08-10'),('TOPFREP38-25x25','Tope Frente Pino 38x2,5x2,5',4,210.00,2,'CU','A',88.00,10.00,'2017-08-18'),('TOPFREP50-25x25','Tope Frente Pino 50x2,5x2,5',4,125.00,2,'CU','A',96.00,15.00,'2017-08-10'),('TP10028-25','Tapa Pino 100x28x2,5',4,189.00,2,'CU','A',947.00,15.00,'2017-08-04'),('TP11028-25','Tapa Pino 110x28x2,5',4,167.00,2,'CU','A',94.00,15.00,'2017-08-03'),('TP12038-25','Tapa Pino 120x38x2,5',4,380.00,2,'CU','A',98.00,15.00,'2017-08-03'),('VINIL','Peg. Vinilico Contacto',4,124.00,12,'CM3','A',866940.00,1500.00,'2018-08-02'),('VINIL-ESP','Peg. Vinilico Contacto Especial',4,450.00,12,'CM3','A',25000.30,5000.00,'2019-08-02'),('VINIL-NG','Peg. Vinilico Contacto Negro',4,100.00,12,'CM3','A',45600.00,5000.00,'2019-08-01');
/*!40000 ALTER TABLE `articulo` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `articulo_BEFORE_INSERT` BEFORE INSERT ON `articulo` FOR EACH ROW BEGIN
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `articulo_AFTER_INSERT` AFTER INSERT ON `articulo` FOR EACH ROW BEGIN
call box.Log_Audit('Articulos', 1, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `articulo_AFTER_UPDATE` AFTER UPDATE ON `articulo` FOR EACH ROW BEGIN

call box.Log_Audit('Articulos', 3, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `articulo_AFTER_DELETE` AFTER DELETE ON `articulo` FOR EACH ROW BEGIN
call box.Log_Audit('Articulos', 2, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `articuloproovedor`
--

DROP TABLE IF EXISTS `articuloproovedor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articuloproovedor` (
  `idArticuloProovedor` varchar(45) NOT NULL,
  `idProovedor` int NOT NULL,
  `idArticulo` varchar(45) NOT NULL,
  PRIMARY KEY (`idArticuloProovedor`),
  KEY `IDX_PROOVEDOR` (`idProovedor`) /*!80000 INVISIBLE */,
  KEY `IDX_ARTICULO` (`idArticulo`),
  CONSTRAINT `FKID_ARTICULO_AP` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_PROOVEDOR_AP` FOREIGN KEY (`idProovedor`) REFERENCES `proovedores` (`idProovedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articuloproovedor`
--

LOCK TABLES `articuloproovedor` WRITE;
/*!40000 ALTER TABLE `articuloproovedor` DISABLE KEYS */;
/*!40000 ALTER TABLE `articuloproovedor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articulosreservados`
--

DROP TABLE IF EXISTS `articulosreservados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `articulosreservados` (
  `idArticuloReservado` int NOT NULL AUTO_INCREMENT,
  `idArticulo` varchar(45) NOT NULL,
  `Cantidad` decimal(8,2) NOT NULL,
  `idReceta` int NOT NULL,
  `idProducto` varchar(45) NOT NULL,
  `idOrdenVentaCab` int NOT NULL,
  PRIMARY KEY (`idArticuloReservado`),
  KEY `FKID_IDARTICULO_AR_idx` (`idArticulo`),
  KEY `FKID_IDRECETA_AR_idx` (`idReceta`),
  KEY `FKID_IDPRODUCTO_AR_idx` (`idProducto`),
  KEY `FKID_IDORDENVENTACAB_AR` (`idOrdenVentaCab`),
  CONSTRAINT `FKID_IDARTICULO_AR` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_IDORDENVENTACAB_AR` FOREIGN KEY (`idOrdenVentaCab`) REFERENCES `ordenventacab` (`idOrdenVenta`),
  CONSTRAINT `FKID_IDPRODUCTO_AR` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `FKID_IDRECETA_AR` FOREIGN KEY (`idReceta`) REFERENCES `recetademateriales` (`idMaterial`)
) ENGINE=InnoDB AUTO_INCREMENT=1013 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articulosreservados`
--

LOCK TABLES `articulosreservados` WRITE;
/*!40000 ALTER TABLE `articulosreservados` DISABLE KEYS */;
INSERT INTO `articulosreservados` VALUES (1,'TC10028-25',1.00,105,'FHOTRODDX3',1),(2,'BC10038-25',1.00,106,'FHOTRODDX3',1),(3,'LCD3840-25',1.00,107,'FHOTRODDX3',1),(4,'LCI3840-25',1.00,108,'FHOTRODDX3',1),(5,'FC9520-25',1.00,109,'FHOTRODDX3',1),(6,'FTEC9520-25',1.00,110,'FHOTRODDX3',1),(7,'TOPFREC20-25x25',2.00,111,'FHOTRODDX3',1),(8,'TOPFONC20-25x25',2.00,112,'FHOTRODDX3',1),(9,'REGAFDERSTD-BKN',4.00,113,'FHOTRODDX3',1),(10,'ESQUIFDERA-BK',6.00,114,'FHOTRODDX3',1),(11,'MANITFDER-BK',1.00,115,'FHOTRODDX3',1),(12,'TARM1020',8.00,116,'FHOTRODDX3',1),(13,'PARK205N',4.00,117,'FHOTRODDX3',1),(14,'PARK2505N',4.00,118,'FHOTRODDX3',1),(15,'FREZ206P',2.00,119,'FHOTRODDX3',1),(16,'CHAPFDER-HR',2.00,120,'FHOTRODDX3',1),(17,'FREZ1506P',4.00,121,'FHOTRODDX3',1),(18,'CUEFDER-BK',4.80,122,'FHOTRODDX3',1),(19,'VINIL',760.00,123,'FHOTRODDX3',1),(20,'FREZ1506N',8.00,124,'FHOTRODDX3',1),(21,'FDERLOGO2',1.00,125,'FHOTRODDX3',1),(22,'TP10028-25',1.00,126,'PERF1000',1),(23,'BP10038-25',1.00,127,'PERF1000',1),(24,'LPD3840-25',1.00,128,'PERF1000',1),(25,'LPI3840-25',1.00,129,'PERF1000',1),(26,'FP9520-25',1.00,130,'PERF1000',1),(27,'FTEP9520-25',1.00,131,'PERF1000',1),(28,'TOPFREP20-25x25',2.00,132,'PERF1000',1),(29,'TOPFONP20-25x25',2.00,133,'PERF1000',1),(30,'REGAFDERSTD-BKN',4.00,134,'PERF1000',1),(31,'MANITFDER-BK',1.00,135,'PERF1000',1),(32,'TARM1020',8.00,136,'PERF1000',1),(33,'PARK205N',4.00,137,'PERF1000',1),(34,'PARK2505N',4.00,138,'PERF1000',1),(35,'FREZ206P',2.00,139,'PERF1000',1),(36,'FREZ1506P',4.00,140,'PERF1000',1),(37,'CUEFDER-BK',5.10,141,'PERF1000',1),(38,'VINIL',820.00,142,'PERF1000',1),(39,'FREZ1506N',8.00,143,'PERF1000',1),(40,'FDERLOGO3',1.00,144,'PERF1000',1),(41,'TP10028-25',1.00,65,'BLUED4X10',2),(42,'BP10038-25',1.00,66,'BLUED4X10',2),(43,'LPD3840-25',1.00,67,'BLUED4X10',2),(44,'LPI3840-25',1.00,68,'BLUED4X10',2),(45,'FP9520-25',1.00,69,'BLUED4X10',2),(46,'FTEP9520-25',1.00,70,'BLUED4X10',2),(47,'TOPFREP20-25x25',2.00,71,'BLUED4X10',2),(48,'TOPFONP20-25x25',2.00,72,'BLUED4X10',2),(49,'REGAFDERSTD-BKN',4.00,73,'BLUED4X10',2),(50,'MANITFDER-BK',1.00,74,'BLUED4X10',2),(51,'TARM1020',8.00,75,'BLUED4X10',2),(52,'PARK205N',4.00,76,'BLUED4X10',2),(53,'PARK2505N',4.00,77,'BLUED4X10',2),(54,'FREZ206P',2.00,78,'BLUED4X10',2),(55,'FREZ1506P',4.00,79,'BLUED4X10',2),(56,'TELAFDER-BD',5.80,80,'BLUED4X10',2),(57,'VINIL',760.00,81,'BLUED4X10',2),(58,'FREZ1506N',8.00,82,'BLUED4X10',2),(59,'FDERLOGO1',1.00,83,'BLUED4X10',2),(60,'TC10028-25',3.00,105,'FHOTRODDX3',2),(61,'BC10038-25',3.00,106,'FHOTRODDX3',2),(62,'LCD3840-25',3.00,107,'FHOTRODDX3',2),(63,'LCI3840-25',3.00,108,'FHOTRODDX3',2),(64,'FC9520-25',3.00,109,'FHOTRODDX3',2),(65,'FTEC9520-25',3.00,110,'FHOTRODDX3',2),(66,'TOPFREC20-25x25',6.00,111,'FHOTRODDX3',2),(67,'TOPFONC20-25x25',6.00,112,'FHOTRODDX3',2),(68,'REGAFDERSTD-BKN',12.00,113,'FHOTRODDX3',2),(69,'ESQUIFDERA-BK',18.00,114,'FHOTRODDX3',2),(70,'MANITFDER-BK',3.00,115,'FHOTRODDX3',2),(71,'TARM1020',24.00,116,'FHOTRODDX3',2),(72,'PARK205N',12.00,117,'FHOTRODDX3',2),(73,'PARK2505N',12.00,118,'FHOTRODDX3',2),(74,'FREZ206P',6.00,119,'FHOTRODDX3',2),(75,'CHAPFDER-HR',6.00,120,'FHOTRODDX3',2),(76,'FREZ1506P',12.00,121,'FHOTRODDX3',2),(77,'CUEFDER-BK',14.40,122,'FHOTRODDX3',2),(78,'VINIL',2280.00,123,'FHOTRODDX3',2),(79,'FREZ1506N',24.00,124,'FHOTRODDX3',2),(80,'FDERLOGO2',3.00,125,'FHOTRODDX3',2),(81,'TP10028-25',3.00,126,'PERF1000',2),(82,'BP10038-25',3.00,127,'PERF1000',2),(83,'LPD3840-25',3.00,128,'PERF1000',2),(84,'LPI3840-25',3.00,129,'PERF1000',2),(85,'FP9520-25',3.00,130,'PERF1000',2),(86,'FTEP9520-25',3.00,131,'PERF1000',2),(87,'TOPFREP20-25x25',6.00,132,'PERF1000',2),(88,'TOPFONP20-25x25',6.00,133,'PERF1000',2),(89,'REGAFDERSTD-BKN',12.00,134,'PERF1000',2),(90,'MANITFDER-BK',3.00,135,'PERF1000',2),(91,'TARM1020',24.00,136,'PERF1000',2),(92,'PARK205N',12.00,137,'PERF1000',2),(93,'PARK2505N',12.00,138,'PERF1000',2),(94,'FREZ206P',6.00,139,'PERF1000',2),(95,'FREZ1506P',12.00,140,'PERF1000',2),(889,'CUEFDER-BK',15.30,141,'PERF1000',2),(890,'VINIL',2460.00,142,'PERF1000',2),(891,'FREZ1506N',24.00,143,'PERF1000',2),(892,'FDERLOGO3',3.00,144,'PERF1000',2),(893,'TP10028-25',1.00,65,'BLUED4X10',3),(894,'BP10038-25',1.00,66,'BLUED4X10',3),(895,'LPD3840-25',1.00,67,'BLUED4X10',3),(896,'LPI3840-25',1.00,68,'BLUED4X10',3),(897,'FP9520-25',1.00,69,'BLUED4X10',3),(898,'FTEP9520-25',1.00,70,'BLUED4X10',3),(899,'TOPFREP20-25x25',2.00,71,'BLUED4X10',3),(900,'TOPFONP20-25x25',2.00,72,'BLUED4X10',3),(901,'REGAFDERSTD-BKN',4.00,73,'BLUED4X10',3),(902,'MANITFDER-BK',1.00,74,'BLUED4X10',3),(903,'TARM1020',8.00,75,'BLUED4X10',3),(904,'PARK205N',4.00,76,'BLUED4X10',3),(905,'PARK2505N',4.00,77,'BLUED4X10',3),(906,'FREZ206P',2.00,78,'BLUED4X10',3),(907,'FREZ1506P',4.00,79,'BLUED4X10',3),(908,'TELAFDER-BD',5.80,80,'BLUED4X10',3),(909,'VINIL',760.00,81,'BLUED4X10',3),(910,'FREZ1506N',8.00,82,'BLUED4X10',3),(911,'FDERLOGO1',1.00,83,'BLUED4X10',3),(912,'TC10028-25',2.00,105,'FHOTRODDX3',3),(913,'BC10038-25',2.00,106,'FHOTRODDX3',3),(914,'LCD3840-25',2.00,107,'FHOTRODDX3',3),(915,'LCI3840-25',2.00,108,'FHOTRODDX3',3),(916,'FC9520-25',2.00,109,'FHOTRODDX3',3),(917,'FTEC9520-25',2.00,110,'FHOTRODDX3',3),(918,'TOPFREC20-25x25',4.00,111,'FHOTRODDX3',3),(919,'TOPFONC20-25x25',4.00,112,'FHOTRODDX3',3),(920,'REGAFDERSTD-BKN',8.00,113,'FHOTRODDX3',3),(921,'ESQUIFDERA-BK',12.00,114,'FHOTRODDX3',3),(922,'MANITFDER-BK',2.00,115,'FHOTRODDX3',3),(923,'TARM1020',16.00,116,'FHOTRODDX3',3),(924,'PARK205N',8.00,117,'FHOTRODDX3',3),(925,'PARK2505N',8.00,118,'FHOTRODDX3',3),(926,'FREZ206P',4.00,119,'FHOTRODDX3',3),(927,'CHAPFDER-HR',4.00,120,'FHOTRODDX3',3),(928,'FREZ1506P',8.00,121,'FHOTRODDX3',3),(929,'CUEFDER-BK',9.60,122,'FHOTRODDX3',3),(930,'VINIL',1520.00,123,'FHOTRODDX3',3),(931,'FREZ1506N',16.00,124,'FHOTRODDX3',3),(932,'FDERLOGO2',2.00,125,'FHOTRODDX3',3),(933,'TP10028-25',3.00,126,'PERF1000',3),(934,'BP10038-25',3.00,127,'PERF1000',3),(935,'LPD3840-25',3.00,128,'PERF1000',3),(936,'LPI3840-25',3.00,129,'PERF1000',3),(937,'FP9520-25',3.00,130,'PERF1000',3),(938,'FTEP9520-25',3.00,131,'PERF1000',3),(939,'TOPFREP20-25x25',6.00,132,'PERF1000',3),(940,'TOPFONP20-25x25',6.00,133,'PERF1000',3),(941,'REGAFDERSTD-BKN',12.00,134,'PERF1000',3),(942,'MANITFDER-BK',3.00,135,'PERF1000',3),(943,'TARM1020',24.00,136,'PERF1000',3),(944,'PARK205N',12.00,137,'PERF1000',3),(945,'PARK2505N',12.00,138,'PERF1000',3),(946,'FREZ206P',6.00,139,'PERF1000',3),(947,'FREZ1506P',12.00,140,'PERF1000',3),(948,'CUEFDER-BK',15.30,141,'PERF1000',3),(949,'VINIL',2460.00,142,'PERF1000',3),(950,'FREZ1506N',24.00,143,'PERF1000',3),(951,'FDERLOGO3',3.00,144,'PERF1000',3),(952,'TP10028-25',2.00,1,'MVCAB1+',4),(953,'BP10038-25',2.00,2,'MVCAB1+',4),(954,'LPD3840-25',2.00,3,'MVCAB1+',4),(955,'LPI3840-25',2.00,4,'MVCAB1+',4),(956,'FP9520-25',2.00,5,'MVCAB1+',4),(957,'FTEP9520-25',2.00,6,'MVCAB1+',4),(958,'TOPFREP20-25x25',4.00,7,'MVCAB1+',4),(959,'TOPFONP20-25x25',4.00,8,'MVCAB1+',4),(960,'REGAMBHN',8.00,9,'MVCAB1+',4),(961,'ESQUIMBAHN',12.00,10,'MVCAB1+',4),(962,'MANITMBN',2.00,11,'MVCAB1+',4),(963,'TARM1020',16.00,12,'MVCAB1+',4),(964,'PARK205N',8.00,13,'MVCAB1+',4),(965,'PARK2505N',8.00,14,'MVCAB1+',4),(966,'FREZ206P',4.00,15,'MVCAB1+',4),(967,'CHAPMBHN',4.00,16,'MVCAB1+',4),(968,'FREZ1506P',8.00,17,'MVCAB1+',4),(969,'CUEMBN',5.60,18,'MVCAB1+',4),(970,'VINIL',1100.00,19,'MVCAB1+',4),(971,'FREZ1506N',16.00,20,'MVCAB1+',4),(972,'MBLOGO1',2.00,21,'MVCAB1+',4),(973,'TP11028-25',3.00,22,'MVCBO1',4),(974,'BP11038-25',3.00,23,'MVCBO1',4),(975,'LPD3855-25',3.00,24,'MVCBO1',4),(976,'LPI3855-25',3.00,25,'MVCBO1',4),(977,'FP10535-25',3.00,26,'MVCBO1',4),(978,'TOPFONP30-25x25',6.00,27,'MVCBO1',4),(979,'FTEP1210545-25',3.00,28,'MVCBO1',4),(980,'TOPFREP38-25x25',6.00,29,'MVCBO1',4),(981,'REGAMBHN',12.00,30,'MVCBO1',4),(982,'ESQUIMBAHN',15.00,31,'MVCBO1',4),(983,'MANITMBN',3.00,32,'MVCBO1',4),(984,'TARM1020',24.00,33,'MVCBO1',4),(985,'PARK205N',12.00,34,'MVCBO1',4),(986,'PARK2505N',12.00,35,'MVCBO1',4),(987,'FREZ206P',6.00,36,'MVCBO1',4),(988,'CHAPMBHN',6.00,37,'MVCBO1',4),(989,'FREZ1506P',12.00,38,'MVCBO1',4),(990,'CUEMBN',14.10,39,'MVCBO1',4),(991,'VINIL',2640.00,40,'MVCBO1',4),(992,'FREZ1506N',24.00,41,'MVCBO1',4),(993,'MBLOGO1',3.00,42,'MVCBO1',4),(994,'TP10028-25',1.00,65,'BLUED4X10',5),(995,'BP10038-25',1.00,66,'BLUED4X10',5),(996,'LPD3840-25',1.00,67,'BLUED4X10',5),(997,'LPI3840-25',1.00,68,'BLUED4X10',5),(998,'FP9520-25',1.00,69,'BLUED4X10',5),(999,'FTEP9520-25',1.00,70,'BLUED4X10',5),(1000,'TOPFREP20-25x25',2.00,71,'BLUED4X10',5),(1001,'TOPFONP20-25x25',2.00,72,'BLUED4X10',5),(1002,'REGAFDERSTD-BKN',4.00,73,'BLUED4X10',5),(1003,'MANITFDER-BK',1.00,74,'BLUED4X10',5),(1004,'TARM1020',8.00,75,'BLUED4X10',5),(1005,'PARK205N',4.00,76,'BLUED4X10',5),(1006,'PARK2505N',4.00,77,'BLUED4X10',5),(1007,'FREZ206P',2.00,78,'BLUED4X10',5),(1008,'FREZ1506P',4.00,79,'BLUED4X10',5),(1009,'TELAFDER-BD',5.80,80,'BLUED4X10',5),(1010,'VINIL',760.00,81,'BLUED4X10',5),(1011,'FREZ1506N',8.00,82,'BLUED4X10',5),(1012,'FDERLOGO1',1.00,83,'BLUED4X10',5);
/*!40000 ALTER TABLE `articulosreservados` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `articulosreservados_BEFORE_INSERT` BEFORE INSERT ON `articulosreservados` FOR EACH ROW BEGIN
    DECLARE available_stock INT;
    DECLARE min_stock INT;

    SELECT Stock, StockMinimo INTO available_stock, min_stock
    FROM articulo
    WHERE idArticulo = NEW.idArticulo;

    IF (available_stock - NEW.Cantidad) >= min_stock THEN
        UPDATE articulo
        SET Stock = available_stock - NEW.Cantidad
        WHERE idArticulo = NEW.idArticulo;
    ELSE
        SET NEW.idArticuloReservado = NULL;
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `audit`
--

DROP TABLE IF EXISTS `audit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `audit` (
  `idEvent` int NOT NULL AUTO_INCREMENT,
  `idMov` int NOT NULL,
  `DetMov` varchar(80) NOT NULL,
  `Fecha` date NOT NULL,
  `Time` time NOT NULL,
  `idUsr` int NOT NULL,
  `Table` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idEvent`),
  KEY `FKID_IDMOV_AUDIT_idx` (`idMov`),
  CONSTRAINT `FKID_IDMOV_AUDIT` FOREIGN KEY (`idMov`) REFERENCES `auditmov` (`idMov`)
) ENGINE=InnoDB AUTO_INCREMENT=1278 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `audit`
--

LOCK TABLES `audit` WRITE;
/*!40000 ALTER TABLE `audit` DISABLE KEYS */;
INSERT INTO `audit` VALUES (1,1,'ALTA','2024-08-30','20:02:50',1,'Articulos'),(2,1,'ALTA','2024-08-30','20:10:13',1,'FacturasCab'),(3,1,'ALTA','2024-08-30','20:19:07',1,'Articulos'),(4,3,'MODIFICACION','2024-08-30','20:19:26',1,'Articulos'),(5,3,'MODIFICACION','2024-08-30','20:19:36',1,'Articulos'),(6,2,'BAJA','2024-08-30','20:19:46',1,'Articulos'),(7,3,'MODIFICACION','2024-08-31','08:45:02',1,'OrdenFabricacionCab'),(8,1,'ALTA','2024-08-31','10:13:10',1,'RemitosCab'),(9,3,'MODIFICACION','2024-08-31','10:29:29',1,'OrdenFabricacionCab'),(10,3,'MODIFICACION','2024-08-31','10:29:29',1,'OrdenFabricacionCab'),(11,1,'ALTA','2024-08-31','10:34:46',1,'OrdenFabricacionCab'),(12,1,'ALTA','2024-08-31','10:52:29',1,'RemitosCab'),(13,2,'BAJA','2024-08-31','11:04:01',1,'RemitosCab'),(14,2,'BAJA','2024-08-31','11:04:01',1,'RemitosCab'),(15,1,'ALTA','2024-08-31','11:06:51',1,'RemitosCab'),(16,1,'ALTA','2024-08-31','11:08:28',1,'RemitosCab'),(17,2,'BAJA','2024-08-31','11:08:55',1,'RemitosCab'),(18,2,'BAJA','2024-08-31','11:08:55',1,'RemitosCab'),(19,1,'ALTA','2024-08-31','11:09:00',1,'RemitosCab'),(20,1,'ALTA','2024-08-31','11:09:00',1,'RemitosCab'),(21,1,'ALTA','2024-08-31','11:09:01',1,'RemitosCab'),(22,1,'ALTA','2024-08-31','11:09:01',1,'RemitosCab'),(23,1,'ALTA','2024-08-31','11:09:01',1,'RemitosCab'),(24,1,'ALTA','2024-08-31','11:09:01',1,'RemitosCab'),(25,1,'ALTA','2024-08-31','11:09:02',1,'RemitosCab'),(26,1,'ALTA','2024-08-31','11:09:02',1,'RemitosCab'),(27,1,'ALTA','2024-08-31','11:09:02',1,'RemitosCab'),(28,1,'ALTA','2024-08-31','11:09:03',1,'RemitosCab'),(29,1,'ALTA','2024-08-31','11:09:03',1,'RemitosCab'),(30,1,'ALTA','2024-08-31','11:09:03',1,'RemitosCab'),(31,1,'ALTA','2024-08-31','11:09:03',1,'RemitosCab'),(32,1,'ALTA','2024-08-31','11:09:03',1,'RemitosCab'),(33,1,'ALTA','2024-08-31','11:09:04',1,'RemitosCab'),(34,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(35,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(36,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(37,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(38,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(39,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(40,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(41,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(42,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(43,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(44,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(45,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(46,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(47,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(48,2,'BAJA','2024-08-31','11:09:31',1,'RemitosCab'),(49,1,'ALTA','2024-08-31','11:14:08',1,'RemitosCab'),(50,2,'BAJA','2024-08-31','12:16:48',1,'RemitosCab'),(51,1,'ALTA','2024-08-31','12:16:59',1,'RemitosCab'),(52,2,'BAJA','2024-08-31','12:23:58',1,'RemitosCab'),(53,1,'ALTA','2024-08-31','12:24:19',1,'RemitosCab'),(54,2,'BAJA','2024-08-31','12:24:41',1,'RemitosCab'),(55,1,'ALTA','2024-08-31','12:24:48',1,'RemitosCab'),(56,2,'BAJA','2024-08-31','12:25:17',1,'RemitosCab'),(57,1,'ALTA','2024-08-31','12:47:44',1,'RemitosCab'),(58,2,'BAJA','2024-08-31','12:55:07',1,'RemitosCab'),(59,1,'ALTA','2024-08-31','12:55:19',1,'RemitosCab'),(60,2,'BAJA','2024-08-31','12:55:47',1,'RemitosCab'),(61,1,'ALTA','2024-08-31','12:55:58',1,'RemitosCab'),(62,2,'BAJA','2024-08-31','12:56:37',1,'RemitosCab'),(63,1,'ALTA','2024-08-31','12:56:47',1,'RemitosCab'),(64,2,'BAJA','2024-08-31','12:58:51',1,'RemitosCab'),(65,1,'ALTA','2024-08-31','12:59:48',1,'RemitosCab'),(66,2,'BAJA','2024-08-31','13:00:49',1,'RemitosCab'),(67,1,'ALTA','2024-08-31','13:00:57',1,'RemitosCab'),(68,2,'BAJA','2024-08-31','13:02:21',1,'RemitosCab'),(69,1,'ALTA','2024-08-31','13:02:28',1,'RemitosCab'),(70,1,'ALTA','2024-09-06','18:02:01',1,'RemitosCab'),(71,1,'ALTA','2024-09-06','18:02:07',1,'RemitosCab'),(72,1,'ALTA','2024-09-06','18:02:08',1,'RemitosCab'),(73,1,'ALTA','2024-09-06','18:02:08',1,'RemitosCab'),(74,1,'ALTA','2024-09-06','18:02:08',1,'RemitosCab'),(75,1,'ALTA','2024-09-06','18:02:08',1,'RemitosCab'),(76,1,'ALTA','2024-09-06','18:02:09',1,'RemitosCab'),(77,1,'ALTA','2024-09-06','18:02:09',1,'RemitosCab'),(78,1,'ALTA','2024-09-06','18:02:09',1,'RemitosCab'),(79,1,'ALTA','2024-09-06','18:02:09',1,'RemitosCab'),(80,1,'ALTA','2024-09-06','18:02:09',1,'RemitosCab'),(81,1,'ALTA','2024-09-06','18:02:10',1,'RemitosCab'),(82,1,'ALTA','2024-09-06','18:02:10',1,'RemitosCab'),(83,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(84,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(85,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(86,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(87,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(88,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(89,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(90,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(91,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(92,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(93,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(94,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(95,2,'BAJA','2024-09-06','18:06:38',1,'RemitosCab'),(96,2,'BAJA','2024-09-06','18:15:28',1,'RemitosCab'),(97,1,'ALTA','2024-09-06','18:16:34',1,'RemitosCab'),(98,2,'BAJA','2024-09-06','18:18:39',1,'RemitosCab'),(99,1,'ALTA','2024-09-06','18:21:16',1,'RemitosCab'),(100,2,'BAJA','2024-09-06','18:24:01',1,'RemitosCab'),(101,1,'ALTA','2024-09-06','18:24:12',1,'RemitosCab'),(102,2,'BAJA','2024-09-06','18:25:06',1,'RemitosCab'),(103,1,'ALTA','2024-09-06','18:47:27',1,'RemitosCab'),(104,3,'MODIFICACION','2024-09-06','19:51:19',3,'Productos'),(105,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(106,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(107,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(108,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(109,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(110,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(111,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(112,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(113,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(114,3,'MODIFICACION','2024-09-06','19:55:59',3,'Productos'),(115,3,'MODIFICACION','2024-09-06','19:56:36',3,'Productos'),(116,1,'ALTA','2024-09-06','20:14:06',1,'FacturasCab'),(117,3,'MODIFICACION','2024-10-23','19:08:40',1,'Articulos'),(118,3,'MODIFICACION','2024-10-23','19:09:00',1,'Articulos'),(119,3,'MODIFICACION','2024-10-23','19:09:25',1,'Articulos'),(120,3,'MODIFICACION','2024-10-23','19:09:53',1,'Articulos'),(121,3,'MODIFICACION','2024-10-23','19:10:18',1,'Articulos'),(122,3,'MODIFICACION','2024-10-23','19:11:08',1,'Articulos'),(123,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(124,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(125,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(126,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(127,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(128,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(129,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(130,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(131,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(132,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(133,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(134,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(135,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(136,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(137,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(138,3,'MODIFICACION','2024-10-23','19:12:46',1,'Articulos'),(139,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(140,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(141,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(142,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(143,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(144,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(145,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(146,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(147,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(148,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(149,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(150,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(151,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(152,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(153,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(154,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(155,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(156,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(157,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(158,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(159,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(160,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(161,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(162,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(163,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(164,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(165,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(166,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(167,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(168,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(169,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(170,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(171,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(172,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(173,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(174,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(175,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(176,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(177,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(178,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(179,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(180,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(181,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(182,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(183,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(184,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(185,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(186,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(187,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(188,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(189,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(190,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(191,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(192,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(193,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(194,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(195,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(196,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(197,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(198,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(199,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(200,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(201,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(202,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(203,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(204,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(205,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(206,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(207,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(208,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(209,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(210,3,'MODIFICACION','2024-10-23','19:16:47',1,'Articulos'),(211,3,'MODIFICACION','2024-10-23','19:16:52',1,'Articulos'),(212,3,'MODIFICACION','2024-10-24','00:53:39',1,'Articulos'),(213,3,'MODIFICACION','2024-10-24','01:29:02',1,'Articulos'),(214,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(215,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(216,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(217,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(218,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(219,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(220,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(221,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(222,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(223,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(224,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(225,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(226,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(227,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(228,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(229,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(230,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(231,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(232,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(233,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(234,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(235,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(236,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(237,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(238,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(239,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(240,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(241,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(242,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(243,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(244,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(245,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(246,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(247,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(248,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(249,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(250,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(251,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(252,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(253,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(254,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(255,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(256,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(257,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(258,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(259,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(260,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(261,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(262,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(263,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(264,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(265,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(266,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(267,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(268,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(269,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(270,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(271,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(272,3,'MODIFICACION','2024-10-24','02:48:47',1,'Articulos'),(273,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(274,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(275,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(276,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(277,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(278,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(279,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(280,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(281,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(282,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(283,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(284,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(285,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(286,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(287,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(288,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(289,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(290,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(291,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(292,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(293,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(294,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(295,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(296,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(297,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(298,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(299,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(300,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(301,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(302,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(303,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(304,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(305,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(306,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(307,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(308,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(309,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(310,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(311,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(312,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(313,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(314,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(315,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(316,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(317,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(318,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(319,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(320,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(321,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(322,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(323,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(324,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(325,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(326,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(327,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(328,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(329,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(330,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(331,3,'MODIFICACION','2024-10-24','03:08:51',1,'Articulos'),(332,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(333,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(334,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(335,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(336,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(337,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(338,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(339,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(340,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(341,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(342,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(343,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(344,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(345,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(346,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(347,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(348,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(349,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(350,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(351,3,'MODIFICACION','2024-10-24','04:26:51',1,'Articulos'),(352,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(353,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(354,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(355,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(356,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(357,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(358,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(359,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(360,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(361,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(362,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(363,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(364,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(365,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(366,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(367,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(368,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(369,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(370,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(371,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(372,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(373,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(374,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(375,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(376,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(377,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(378,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(379,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(380,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(381,3,'MODIFICACION','2024-10-24','04:26:52',1,'Articulos'),(382,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(383,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(384,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(385,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(386,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(387,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(388,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(389,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(390,3,'MODIFICACION','2024-10-24','04:26:53',1,'Articulos'),(391,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(392,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(393,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(394,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(395,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(396,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(397,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(398,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(399,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(400,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(401,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(402,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(403,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(404,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(405,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(406,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(407,3,'MODIFICACION','2024-10-24','04:29:04',1,'Articulos'),(408,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(409,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(410,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(411,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(412,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(413,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(414,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(415,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(416,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(417,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(418,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(419,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(420,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(421,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(422,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(423,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(424,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(425,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(426,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(427,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(428,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(429,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(430,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(431,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(432,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(433,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(434,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(435,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(436,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(437,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(438,3,'MODIFICACION','2024-10-24','04:29:05',1,'Articulos'),(439,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(440,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(441,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(442,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(443,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(444,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(445,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(446,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(447,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(448,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(449,3,'MODIFICACION','2024-10-24','04:29:06',1,'Articulos'),(450,3,'MODIFICACION','2024-10-24','04:32:04',1,'Articulos'),(451,3,'MODIFICACION','2024-10-24','04:32:04',1,'Articulos'),(452,3,'MODIFICACION','2024-10-24','04:32:04',1,'Articulos'),(453,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(454,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(455,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(456,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(457,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(458,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(459,3,'MODIFICACION','2024-10-24','04:32:23',1,'Articulos'),(460,3,'MODIFICACION','2024-10-24','04:32:24',1,'Articulos'),(461,3,'MODIFICACION','2024-10-24','04:32:24',1,'Articulos'),(462,3,'MODIFICACION','2024-10-24','04:32:24',1,'Articulos'),(463,3,'MODIFICACION','2024-10-24','04:32:24',1,'Articulos'),(464,3,'MODIFICACION','2024-10-24','04:32:24',1,'Articulos'),(465,3,'MODIFICACION','2024-10-24','04:32:25',1,'Articulos'),(466,3,'MODIFICACION','2024-10-24','04:32:25',1,'Articulos'),(467,3,'MODIFICACION','2024-10-24','04:32:25',1,'Articulos'),(468,3,'MODIFICACION','2024-10-24','04:32:25',1,'Articulos'),(469,3,'MODIFICACION','2024-10-24','04:32:25',1,'Articulos'),(470,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(471,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(472,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(473,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(474,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(475,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(476,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(477,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(478,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(479,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(480,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(481,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(482,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(483,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(484,3,'MODIFICACION','2024-10-24','04:32:26',1,'Articulos'),(485,3,'MODIFICACION','2024-10-24','04:32:27',1,'Articulos'),(486,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(487,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(488,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(489,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(490,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(491,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(492,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(493,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(494,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(495,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(496,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(497,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(498,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(499,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(500,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(501,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(502,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(503,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(504,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(505,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(506,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(507,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(508,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(509,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(510,3,'MODIFICACION','2024-10-24','04:32:28',1,'Articulos'),(511,3,'MODIFICACION','2024-10-24','04:32:29',1,'Articulos'),(512,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(513,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(514,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(515,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(516,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(517,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(518,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(519,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(520,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(521,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(522,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(523,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(524,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(525,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(526,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(527,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(528,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(529,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(530,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(531,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(532,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(533,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(534,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(535,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(536,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(537,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(538,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(539,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(540,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(541,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(542,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(543,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(544,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(545,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(546,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(547,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(548,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(549,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(550,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(551,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(552,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(553,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(554,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(555,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(556,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(557,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(558,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(559,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(560,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(561,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(562,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(563,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(564,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(565,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(566,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(567,3,'MODIFICACION','2024-10-24','04:34:28',1,'Articulos'),(568,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(569,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(570,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(571,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(572,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(573,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(574,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(575,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(576,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(577,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(578,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(579,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(580,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(581,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(582,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(583,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(584,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(585,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(586,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(587,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(588,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(589,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(590,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(591,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(592,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(593,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(594,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(595,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(596,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(597,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(598,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(599,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(600,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(601,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(602,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(603,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(604,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(605,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(606,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(607,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(608,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(609,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(610,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(611,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(612,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(613,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(614,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(615,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(616,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(617,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(618,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(619,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(620,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(621,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(622,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(623,3,'MODIFICACION','2024-10-24','04:38:21',1,'Articulos'),(624,3,'MODIFICACION','2024-10-24','04:40:05',1,'Articulos'),(625,3,'MODIFICACION','2024-10-24','04:40:05',1,'Articulos'),(626,3,'MODIFICACION','2024-10-24','04:40:05',1,'Articulos'),(627,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(628,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(629,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(630,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(631,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(632,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(633,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(634,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(635,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(636,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(637,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(638,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(639,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(640,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(641,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(642,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(643,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(644,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(645,3,'MODIFICACION','2024-10-24','04:40:16',1,'Articulos'),(646,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(647,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(648,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(649,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(650,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(651,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(652,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(653,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(654,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(655,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(656,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(657,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(658,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(659,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(660,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(661,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(662,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(663,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(664,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(665,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(666,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(667,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(668,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(669,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(670,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(671,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(672,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(673,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(674,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(675,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(676,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(677,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(678,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(679,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(680,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(681,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(682,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(683,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(684,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(685,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(686,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(687,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(688,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(689,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(690,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(691,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(692,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(693,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(694,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(695,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(696,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(697,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(698,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(699,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(700,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(701,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(702,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(703,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(704,3,'MODIFICACION','2024-10-24','04:40:59',1,'Articulos'),(705,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(706,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(707,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(708,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(709,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(710,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(711,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(712,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(713,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(714,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(715,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(716,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(717,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(718,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(719,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(720,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(721,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(722,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(723,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(724,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(725,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(726,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(727,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(728,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(729,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(730,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(731,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(732,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(733,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(734,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(735,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(736,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(737,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(738,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(739,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(740,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(741,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(742,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(743,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(744,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(745,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(746,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(747,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(748,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(749,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(750,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(751,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(752,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(753,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(754,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(755,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(756,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(757,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(758,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(759,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(760,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(761,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(762,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(763,3,'MODIFICACION','2024-10-24','04:41:57',1,'Articulos'),(764,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(765,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(766,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(767,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(768,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(769,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(770,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(771,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(772,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(773,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(774,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(775,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(776,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(777,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(778,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(779,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(780,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(781,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(782,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(783,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(784,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(785,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(786,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(787,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(788,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(789,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(790,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(791,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(792,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(793,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(794,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(795,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(796,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(797,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(798,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(799,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(800,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(801,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(802,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(803,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(804,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(805,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(806,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(807,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(808,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(809,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(810,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(811,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(812,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(813,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(814,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(815,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(816,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(817,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(818,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(819,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(820,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(821,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(822,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(823,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(824,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(825,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(826,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(827,3,'MODIFICACION','2024-10-24','04:49:36',1,'Articulos'),(828,3,'MODIFICACION','2024-10-24','04:58:41',3,'Productos'),(829,3,'MODIFICACION','2024-10-24','05:11:16',1,'Articulos'),(830,3,'MODIFICACION','2024-10-24','05:11:23',1,'Articulos'),(831,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(832,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(833,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(834,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(835,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(836,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(837,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(838,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(839,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(840,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(841,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(842,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(843,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(844,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(845,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(846,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(847,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(848,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(849,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(850,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(851,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(852,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(853,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(854,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(855,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(856,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(857,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(858,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(859,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(860,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(861,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(862,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(863,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(864,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(865,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(866,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(867,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(868,3,'MODIFICACION','2024-10-25','21:33:18',1,'Articulos'),(869,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(870,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(871,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(872,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(873,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(874,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(875,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(876,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(877,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(878,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(879,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(880,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(881,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(882,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(883,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(884,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(885,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(886,3,'MODIFICACION','2024-10-25','21:33:55',1,'Articulos'),(887,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(888,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(889,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(890,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(891,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(892,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(893,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(894,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(895,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(896,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(897,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(898,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(899,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(900,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(901,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(902,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(903,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(904,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(905,3,'MODIFICACION','2024-10-25','21:58:26',1,'Articulos'),(906,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(907,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(908,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(909,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(910,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(911,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(912,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(913,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(914,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(915,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(916,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(917,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(918,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(919,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(920,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(921,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(922,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(923,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(924,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(925,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(926,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(927,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(928,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(929,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(930,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(931,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(932,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(933,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(934,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(935,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(936,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(937,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(938,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(939,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(940,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(941,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(942,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(943,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(944,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(945,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(946,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(947,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(948,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(949,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(950,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(951,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(952,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(953,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(954,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(955,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(956,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(957,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(958,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(959,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(960,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(961,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(962,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(963,3,'MODIFICACION','2024-10-25','21:58:46',1,'Articulos'),(964,3,'MODIFICACION','2024-10-25','21:58:47',1,'Articulos'),(965,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(966,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(967,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(968,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(969,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(970,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(971,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(972,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(973,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(974,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(975,3,'MODIFICACION','2024-11-01','14:00:38',1,'Articulos'),(976,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(977,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(978,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(979,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(980,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(981,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(982,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(983,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(984,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(985,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(986,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(987,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(988,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(989,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(990,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(991,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(992,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(993,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(994,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(995,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(996,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(997,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(998,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(999,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(1000,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(1001,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(1002,3,'MODIFICACION','2024-11-01','14:00:39',1,'Articulos'),(1003,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1004,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1005,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1006,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1007,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1008,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1009,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1010,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1011,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1012,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1013,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1014,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1015,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1016,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1017,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1018,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1019,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1020,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1021,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1022,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1023,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1024,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1025,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1026,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1027,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1028,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1029,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1030,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1031,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1032,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1033,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1034,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1035,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1036,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1037,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1038,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1039,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1040,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1041,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1042,3,'MODIFICACION','2024-11-01','14:10:18',1,'Articulos'),(1043,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1044,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1045,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1046,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1047,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1048,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1049,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1050,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1051,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1052,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1053,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1054,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1055,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1056,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1057,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1058,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1059,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1060,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1061,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1062,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1063,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1064,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1065,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1066,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1067,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1068,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1069,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1070,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1071,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1072,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1073,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1074,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1075,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1076,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1077,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1078,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1079,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1080,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1081,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1082,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1083,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1084,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1085,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1086,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1087,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1088,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1089,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1090,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1091,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1092,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1093,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1094,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1095,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1096,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1097,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1098,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1099,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1100,3,'MODIFICACION','2024-11-01','14:10:34',1,'Articulos'),(1101,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1102,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1103,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1104,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1105,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1106,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1107,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1108,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1109,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1110,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1111,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1112,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1113,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1114,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1115,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1116,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1117,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1118,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1119,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1120,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1121,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1122,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1123,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1124,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1125,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1126,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1127,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1128,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1129,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1130,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1131,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1132,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1133,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1134,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1135,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1136,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1137,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1138,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1139,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1140,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1141,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1142,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1143,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1144,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1145,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1146,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1147,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1148,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1149,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1150,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1151,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1152,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1153,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1154,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1155,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1156,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1157,3,'MODIFICACION','2024-11-01','14:51:52',1,'Articulos'),(1158,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1159,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1160,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1161,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1162,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1163,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1164,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1165,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1166,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1167,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1168,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1169,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1170,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1171,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1172,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1173,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1174,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1175,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1176,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1177,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1178,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1179,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1180,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1181,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1182,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1183,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1184,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1185,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1186,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1187,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1188,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1189,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1190,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1191,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1192,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1193,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1194,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1195,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1196,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1197,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1198,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1199,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1200,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1201,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1202,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1203,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1204,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1205,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1206,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1207,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1208,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1209,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1210,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1211,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1212,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1213,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1214,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1215,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1216,3,'MODIFICACION','2024-11-01','14:51:57',1,'Articulos'),(1217,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1218,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1219,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1220,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1221,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1222,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1223,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1224,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1225,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1226,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1227,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1228,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1229,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1230,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1231,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1232,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1233,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1234,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1235,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1236,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1237,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1238,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1239,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1240,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1241,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1242,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1243,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1244,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1245,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1246,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1247,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1248,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1249,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1250,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1251,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1252,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1253,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1254,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1255,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1256,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1257,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1258,3,'MODIFICACION','2024-11-01','14:52:28',1,'Articulos'),(1259,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1260,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1261,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1262,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1263,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1264,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1265,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1266,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1267,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1268,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1269,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1270,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1271,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1272,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1273,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1274,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1275,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1276,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos'),(1277,3,'MODIFICACION','2024-11-01','14:53:23',1,'Articulos');
/*!40000 ALTER TABLE `audit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `auditmov`
--

DROP TABLE IF EXISTS `auditmov`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `auditmov` (
  `idMov` int NOT NULL,
  `Movimiento` varchar(100) NOT NULL,
  PRIMARY KEY (`idMov`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `auditmov`
--

LOCK TABLES `auditmov` WRITE;
/*!40000 ALTER TABLE `auditmov` DISABLE KEYS */;
INSERT INTO `auditmov` VALUES (1,'ALTA'),(2,'BAJA'),(3,'MODIFICACION');
/*!40000 ALTER TABLE `auditmov` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cargos`
--

DROP TABLE IF EXISTS `cargos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cargos` (
  `idCargo` int NOT NULL AUTO_INCREMENT,
  `nombreCargo` varchar(45) NOT NULL,
  PRIMARY KEY (`idCargo`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cargos`
--

LOCK TABLES `cargos` WRITE;
/*!40000 ALTER TABLE `cargos` DISABLE KEYS */;
INSERT INTO `cargos` VALUES (1,'Gerente General'),(2,'Gerente Comercial'),(3,'Gerente de Planta'),(4,'Gerente de Administración y Finanzas'),(5,'Gerente de Compras'),(6,'Jefe de I+D'),(7,'Ingenieros de productos'),(8,'Jefe de Ventas'),(9,'Vendedores'),(10,'Cuenta a Cobrar'),(11,'Cuentas a Pagar'),(12,'Tesorero'),(13,'Administrativos'),(14,'Jefe de Compras'),(15,'Compradores'),(16,'Jefes de Línea'),(17,'Acopio'),(18,'Ensamblado'),(19,'Tapicería'),(20,'Pintura'),(21,'Control de Calidad'),(22,'Depósito/Expedición'),(23,'Jefe de Mantenimiento'),(24,'Operario de Mantenimiento'),(25,'Jefe de Almacén'),(26,'Operario de Almacén'),(27,'Jefe de Expedición'),(28,'Personal de Expedición');
/*!40000 ALTER TABLE `cargos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categoria`
--

DROP TABLE IF EXISTS `categoria`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categoria` (
  `idCategoria` int NOT NULL,
  `NombreCategoria` varchar(45) NOT NULL,
  `DetalleCategoria` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categoria`
--

LOCK TABLES `categoria` WRITE;
/*!40000 ALTER TABLE `categoria` DISABLE KEYS */;
INSERT INTO `categoria` VALUES (1,'COMBO',NULL),(2,'CABEZAL',NULL),(3,'CAJA',NULL),(4,'COMPONENTE',NULL),(5,'INSUMO',NULL),(6,'SERVICIO',NULL);
/*!40000 ALTER TABLE `categoria` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `idCliente` int NOT NULL AUTO_INCREMENT,
  `RazonSocial` varchar(45) NOT NULL,
  `Marca` varchar(45) NOT NULL,
  `FechaIngreso` date NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `CalleNro` int NOT NULL,
  `CodPos` int NOT NULL,
  `Localidad` varchar(45) NOT NULL,
  `IdPcia` int NOT NULL,
  `Tel_1` varchar(45) DEFAULT NULL,
  `Tel_2` varchar(45) DEFAULT NULL,
  `Tel_3` varchar(45) DEFAULT NULL,
  `Correo` varchar(45) NOT NULL,
  `UltTrx` date DEFAULT NULL,
  `idUsr` int NOT NULL,
  `Estado` varchar(45) NOT NULL,
  PRIMARY KEY (`idCliente`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,'Fender LLC','Fender','2015-01-01','Fleming',1234,1234,'Florida',1,'1111-2222','1111-2223','1111-2222','fenderllc@fender.com',NULL,4,'A'),(2,'Marshall Inc','Marshall','2014-02-10','Corrientes',2233,1400,'CABA',1,'2222-1111','2222-1112','2222-1111','Marshall@marshall.com',NULL,5,'A'),(3,'Mesa LLC','Mesa Boogie','2014-01-08','Larrea',2211,1405,'CABA',1,'3333-2211','3333-2222',NULL,'mesa@mesa.com',NULL,4,'A'),(4,'Soldano','Soldano','2019-10-10','Mitre',4550,2020,'San Isidro',1,'1111-2254','1111-8989',NULL,'soldano@soldano.com',NULL,5,'A'),(5,'Bogner Amp Inc','Bogner','2018-09-10','Cordoba',6080,1300,'CABA',1,'2223-5454',NULL,NULL,'bogneramp@bogneramp.com',NULL,4,'A'),(6,'Rivera Music LLC','Rivera','2017-10-01','Pasteura',1200,1344,'CABA',1,'2233-4455','2233-5544',NULL,'riverainfo@rivera.com',NULL,5,'A');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `contactos`
--

DROP TABLE IF EXISTS `contactos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `contactos` (
  `idContacto` int NOT NULL AUTO_INCREMENT,
  `NroTelefono` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  PRIMARY KEY (`idContacto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `contactos`
--

LOCK TABLES `contactos` WRITE;
/*!40000 ALTER TABLE `contactos` DISABLE KEYS */;
/*!40000 ALTER TABLE `contactos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `datosempresa`
--

DROP TABLE IF EXISTS `datosempresa`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `datosempresa` (
  `idDatosEmpresa` int NOT NULL,
  `webLink` varchar(45) NOT NULL,
  `CUIT` int NOT NULL,
  `inicioActividades` date NOT NULL,
  PRIMARY KEY (`idDatosEmpresa`),
  KEY `IDX_DATOSEMPRESA` (`idDatosEmpresa`) /*!80000 INVISIBLE */
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `datosempresa`
--

LOCK TABLES `datosempresa` WRITE;
/*!40000 ALTER TABLE `datosempresa` DISABLE KEYS */;
/*!40000 ALTER TABLE `datosempresa` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direcciones`
--

DROP TABLE IF EXISTS `direcciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direcciones` (
  `idDireccion` int NOT NULL AUTO_INCREMENT,
  `Localidad` varchar(45) NOT NULL,
  `Calle` varchar(45) NOT NULL,
  `Numero` int NOT NULL,
  PRIMARY KEY (`idDireccion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direcciones`
--

LOCK TABLES `direcciones` WRITE;
/*!40000 ALTER TABLE `direcciones` DISABLE KEYS */;
/*!40000 ALTER TABLE `direcciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleados`
--

DROP TABLE IF EXISTS `empleados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleados` (
  `idEmpleado` int NOT NULL AUTO_INCREMENT,
  `idSector` int NOT NULL,
  `idCargo` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  `Apellido` varchar(45) NOT NULL,
  `dniEmpleado` varchar(45) NOT NULL,
  `Estado` varchar(1) NOT NULL,
  `fecIng` date NOT NULL,
  `fecNac` date DEFAULT NULL,
  PRIMARY KEY (`idEmpleado`),
  KEY `IDX_SECTOR` (`idSector`) /*!80000 INVISIBLE */,
  KEY `IDX_CARGO` (`idCargo`) /*!80000 INVISIBLE */,
  CONSTRAINT `FKID_CARGO` FOREIGN KEY (`idCargo`) REFERENCES `cargos` (`idCargo`),
  CONSTRAINT `FKID_SECTOR` FOREIGN KEY (`idSector`) REFERENCES `sector` (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=60 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleados`
--

LOCK TABLES `empleados` WRITE;
/*!40000 ALTER TABLE `empleados` DISABLE KEYS */;
INSERT INTO `empleados` VALUES (1,1,9,'Bruce','Wayne','12345678','A','2020-08-08','1969-01-01'),(2,1,9,'Tony','Stark','23456789','A','2020-08-08','1969-01-01'),(3,1,9,'Peter','Parker','34567890','A','2020-08-08','1969-01-01'),(4,1,9,'Clark','Kent','45678901','A','2020-08-08','1969-01-01'),(5,1,9,'Diana','Prince','56789012','A','2020-08-08','1969-01-01'),(6,2,9,'Mario','Bros','67890123','A','2020-08-08','1969-01-01'),(7,2,2,'Luigi','Bros','78901234','A','2020-08-08','1969-01-01'),(8,2,9,'Lola','Comin','89012345','A','2020-08-08','1969-01-01'),(9,3,1,'Nathan','Drake','90123456','A','2020-08-08','1969-01-01'),(10,3,2,'Ellie','Williams','01234567','A','2020-08-08','1969-01-01'),(11,3,2,'Geralt','Rivia','12345670','A','2020-08-08','1969-01-01'),(12,3,2,'Cloud','Strife','23456781','A','2020-08-08','1969-01-01'),(13,3,2,'Solid','Snake','34567892','A','2020-08-08','1969-01-01'),(14,4,1,'Hermione','Granger','45678903','A','2020-08-08','1969-01-01'),(15,4,2,'Ron','Weasley','56789014','A','2020-08-08','1969-01-01'),(16,4,2,'Harry','Potter','67890125','A','2020-08-08','1969-01-01'),(17,4,2,'Neville','Longbottom','78901236','A','2020-08-08','1969-01-01'),(18,4,2,'Luna','Lovegood','89012347','A','2020-08-08','1969-01-01'),(19,5,1,'Wario','Land','90123458','A','2020-08-08','1969-01-01'),(20,5,9,'Yoshi','Island','01234569','A','2020-08-08','1969-01-01'),(21,5,2,'Zelda','Princess','12345681','A','2020-08-08','1969-01-01'),(22,5,2,'Samus','Aran','23456792','A','2020-08-08','1969-01-01'),(23,5,2,'Kratos','God','34567803','A','2020-08-08','1969-01-01'),(24,6,1,'Ellie','Williams','45678914','A','2020-08-08','1969-01-01'),(25,6,1,'Joel','Miller','56789025','A','2020-08-08','1969-01-01'),(26,6,1,'Arthur','Morgan','67890136','A','2020-08-08','1969-01-01'),(27,6,1,'John','Marston','78901247','A','2020-08-08','1969-01-01'),(28,6,1,'Javier','Escuella','89012358','A','2020-08-08','1969-01-01'),(29,6,2,'Dante','Sparda','90123469','A','2020-08-08','1969-01-01'),(30,6,2,'Vergil','Sparda','01234570','A','2020-08-08','1969-01-01'),(31,6,2,'Nero','Redgrave','12345682','A','2020-08-08','1969-01-01'),(32,6,2,'Trish','N/A','23456793','A','2020-08-08','1969-01-01'),(33,6,3,'Kratos','Spartan','34567804','A','2020-08-08','1969-01-01'),(34,6,3,'Atreus','God','45678915','A','2020-08-08','1969-01-01'),(35,6,3,'Freya','Aesir','56789026','A','2020-08-08','1969-01-01'),(36,6,3,'Thor','Asgard','67890137','A','2020-08-08','1969-01-01'),(37,6,3,'Odin','Allfather','78901248','A','2020-08-08','1969-01-01'),(38,6,4,'Lara','Croft','89012359','A','2020-08-08','1969-01-01'),(39,6,4,'Nathan','Drake','90123470','A','2020-08-08','1969-01-01'),(40,6,4,'Chloe','Frazer','01234581','A','2020-08-08','1969-01-01'),(41,6,5,'Sam','Fisher','12345693','A','2020-08-08','1969-01-01'),(42,6,5,'Gabriel','Logan','23456704','A','2020-08-08','1969-01-01'),(43,6,5,'Alex','Mercer','34567815','A','2020-08-08','1969-01-01'),(44,6,5,'Zane','Flynn','45678926','A','2020-08-08','1969-01-01'),(45,6,5,'Ethan','Hunt','56789037','A','2020-08-08','1969-01-01'),(46,6,6,'Aloy','Hunter','67890148','A','2020-08-08','1969-01-01'),(47,6,6,'Geralt','Rivia','78901259','A','2020-08-08','1969-01-01'),(48,6,6,'Geralt','Rivia','78901259','A','2020-08-08','1969-01-01'),(49,7,6,'Ezio','Auditore','89012360','A','2020-08-08','1969-01-01'),(50,7,6,'Leon','Kennedy','90123481','A','2020-08-08','1969-01-01'),(51,7,6,'Chris','Redfield','01234592','A','2020-08-08','1969-01-01'),(52,8,1,'Jack','Sparrow','12345694','A','2020-08-08','1969-01-01'),(53,8,2,'Will','Turner','23456705','A','2020-08-08','1969-01-01'),(54,8,2,'Lola','Montero','34567816','A','2020-08-08','1969-01-01'),(55,8,1,'Sully','Flynn','45678927','A','2020-08-08','1969-01-01'),(56,9,2,'Nadine','Ross','56789038','A','2020-08-08','1969-01-01'),(57,9,2,'Rafe','Adler','67890149','A','2020-08-08','1969-01-01'),(58,9,2,'Avery','Carter','78901260','A','2020-08-08','1969-01-01'),(59,9,1,'Nathan','Drake','89012361','A','2020-08-08','1969-01-01');
/*!40000 ALTER TABLE `empleados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `empleadosclientes`
--

DROP TABLE IF EXISTS `empleadosclientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `empleadosclientes` (
  `idempleadosclientes` int NOT NULL,
  `idEmpleado` int NOT NULL,
  `idCliente` int NOT NULL,
  PRIMARY KEY (`idempleadosclientes`),
  KEY `FKID_Empleado_idx` (`idEmpleado`),
  KEY `FKID_Cliente_idx` (`idCliente`),
  CONSTRAINT `FKID_Cliente_EMP` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `FKID_Empleado_EMP` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `empleadosclientes`
--

LOCK TABLES `empleadosclientes` WRITE;
/*!40000 ALTER TABLE `empleadosclientes` DISABLE KEYS */;
/*!40000 ALTER TABLE `empleadosclientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estados`
--

DROP TABLE IF EXISTS `estados`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estados` (
  `idEstado` int NOT NULL,
  `nombreEstado` varchar(45) NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estados`
--

LOCK TABLES `estados` WRITE;
/*!40000 ALTER TABLE `estados` DISABLE KEYS */;
INSERT INTO `estados` VALUES (1,'Creada','Cuando Se crea la entrega'),(2,'Terminada','Cuando Se termina');
/*!40000 ALTER TABLE `estados` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estadosdemodificacion`
--

DROP TABLE IF EXISTS `estadosdemodificacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estadosdemodificacion` (
  `idEstadoModificacion` int NOT NULL AUTO_INCREMENT,
  `nombreEstado` varchar(45) NOT NULL,
  `Desc` varchar(45) NOT NULL,
  PRIMARY KEY (`idEstadoModificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estadosdemodificacion`
--

LOCK TABLES `estadosdemodificacion` WRITE;
/*!40000 ALTER TABLE `estadosdemodificacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `estadosdemodificacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `etapas`
--

DROP TABLE IF EXISTS `etapas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `etapas` (
  `idEtapa` varchar(45) NOT NULL,
  `Procesos` varchar(45) NOT NULL,
  `Duracion` time NOT NULL,
  PRIMARY KEY (`idEtapa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `etapas`
--

LOCK TABLES `etapas` WRITE;
/*!40000 ALTER TABLE `etapas` DISABLE KEYS */;
INSERT INTO `etapas` VALUES ('AC1','ACOPIO 1','35:00:00'),('AC2','ACOPIO 2','28:00:00'),('CC','CONTROL CALIDAD','15:00:00'),('EN1','ENSAMBLADO 1','60:00:00'),('EN2','ENSAMBLADO 2','40:00:00'),('LUS','LUSTRADO','04:00:00'),('PIN','PINTURA','06:00:00'),('TAP','TAPICERIA','01:30:00');
/*!40000 ALTER TABLE `etapas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `factura`
--

DROP TABLE IF EXISTS `factura`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `factura` (
  `idFacturaCab` int NOT NULL AUTO_INCREMENT,
  `idRemito` int NOT NULL,
  `Observaciones` text,
  `Vencimiento` date NOT NULL,
  `Descuento` decimal(15,2) NOT NULL,
  `Subtotal` decimal(15,2) NOT NULL,
  `Neto` decimal(15,2) NOT NULL,
  `Iva` decimal(15,2) NOT NULL,
  `Total` decimal(15,2) NOT NULL,
  PRIMARY KEY (`idFacturaCab`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `factura`
--

LOCK TABLES `factura` WRITE;
/*!40000 ALTER TABLE `factura` DISABLE KEYS */;
INSERT INTO `factura` VALUES (1,18,NULL,'2069-01-31',0.00,13109224.70,10834070.00,2275154.70,13109224.70);
/*!40000 ALTER TABLE `factura` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `facturacab_AFTER_INSERT` AFTER INSERT ON `factura` FOR EACH ROW BEGIN
call box.Log_Audit('FacturasCab', 1, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `facturacab_AFTER_UPDATE` AFTER UPDATE ON `factura` FOR EACH ROW BEGIN
call box.Log_Audit('FacturasCab', 3, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `facturacab_AFTER_DELETE` AFTER DELETE ON `factura` FOR EACH ROW BEGIN
call box.Log_Audit('FacturasCab', 2, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `itemshojaderuta`
--

DROP TABLE IF EXISTS `itemshojaderuta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `itemshojaderuta` (
  `idHojaDeRuta` int NOT NULL AUTO_INCREMENT,
  `idProducto` varchar(45) NOT NULL,
  `idEtapa` varchar(45) NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  `Secuencia` int NOT NULL,
  `TiempoEstimado` time NOT NULL,
  PRIMARY KEY (`idHojaDeRuta`),
  KEY `IDX_PRODUCTO` (`idProducto`) /*!80000 INVISIBLE */,
  KEY `IDX_ETAPA` (`idEtapa`),
  CONSTRAINT `FKID_ETAPAS_IHR` FOREIGN KEY (`idEtapa`) REFERENCES `etapas` (`idEtapa`),
  CONSTRAINT `FKID_PRODUCTO_IHR` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemshojaderuta`
--

LOCK TABLES `itemshojaderuta` WRITE;
/*!40000 ALTER TABLE `itemshojaderuta` DISABLE KEYS */;
/*!40000 ALTER TABLE `itemshojaderuta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `movimientosalmacen`
--

DROP TABLE IF EXISTS `movimientosalmacen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `movimientosalmacen` (
  `idMovimiento` int NOT NULL AUTO_INCREMENT,
  `idArticuloModificado` varchar(45) NOT NULL,
  `idEmpleado` int NOT NULL,
  `idEstado` int NOT NULL,
  `FechaMovimiento` datetime NOT NULL,
  `CantidadMovida` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idMovimiento`),
  KEY `IDX_EMPLEADO` (`idEmpleado`),
  KEY `IDX_ESTADO` (`idEstado`),
  KEY `IDX_ARTICULO` (`idArticuloModificado`),
  CONSTRAINT `FKID_ARTICULO_MOV` FOREIGN KEY (`idArticuloModificado`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_EMPLEADO_MOV` FOREIGN KEY (`idEmpleado`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FKID_ESTADO_MOV` FOREIGN KEY (`idEstado`) REFERENCES `estadosdemodificacion` (`idEstadoModificacion`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `movimientosalmacen`
--

LOCK TABLES `movimientosalmacen` WRITE;
/*!40000 ALTER TABLE `movimientosalmacen` DISABLE KEYS */;
/*!40000 ALTER TABLE `movimientosalmacen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notificacionordendefabricacion`
--

DROP TABLE IF EXISTS `notificacionordendefabricacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notificacionordendefabricacion` (
  `idNotificacionOrdenDeFabricacionCab` int NOT NULL,
  `Total` int NOT NULL,
  `Pendientes` int NOT NULL,
  `FechaNotificacion` date NOT NULL,
  `HoraNotificacion` time NOT NULL,
  `Operario` int NOT NULL,
  `idProducto` varchar(45) NOT NULL,
  `Cantidad` decimal(8,2) NOT NULL,
  PRIMARY KEY (`idNotificacionOrdenDeFabricacionCab`),
  KEY `IDX_EMPLEADO` (`Operario`) /*!80000 INVISIBLE */,
  KEY `IDX_PRODUCTO` (`idProducto`),
  CONSTRAINT `FKID_EMPLEADO_NOT` FOREIGN KEY (`Operario`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FKID_PRODUCTO_NOT` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notificacionordendefabricacion`
--

LOCK TABLES `notificacionordendefabricacion` WRITE;
/*!40000 ALTER TABLE `notificacionordendefabricacion` DISABLE KEYS */;
INSERT INTO `notificacionordendefabricacion` VALUES (1,10,0,'2020-08-08','12:00:00',1,'BLUED4X10',10.00),(2,20,0,'2020-08-08','12:00:00',1,'MVCAB1+',20.00),(3,45,0,'2020-08-08','12:00:00',1,'PERF1000',45.00),(4,40,20,'2024-08-08','12:00:00',2,'MVCAB1+',20.00);
/*!40000 ALTER TABLE `notificacionordendefabricacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompracab`
--

DROP TABLE IF EXISTS `ordencompracab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordencompracab` (
  `idOrdenCompra` int NOT NULL,
  `idOrdenPedido` int NOT NULL,
  `idDatosEmpresa` int NOT NULL,
  `CreadaPor` int NOT NULL,
  `AutorizadaPor` int NOT NULL,
  `Estado` int NOT NULL,
  `Observaciones` text NOT NULL,
  `idProovedor` int NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `idFormaPago` int NOT NULL,
  PRIMARY KEY (`idOrdenCompra`),
  KEY `IDX_ORDENPEDIDO` (`idOrdenPedido`) /*!80000 INVISIBLE */,
  KEY `IDX_DATOSEMPRESA` (`idDatosEmpresa`) /*!80000 INVISIBLE */,
  KEY `IDX_CREADOR` (`CreadaPor`) /*!80000 INVISIBLE */,
  KEY `IDX_AUTORIZADOR` (`AutorizadaPor`) /*!80000 INVISIBLE */,
  KEY `IDX_ESTADOS` (`Estado`),
  KEY `IDX_PROOVEDOR` (`idProovedor`) /*!80000 INVISIBLE */,
  KEY `IDX_FORMAPAGO` (`idFormaPago`) /*!80000 INVISIBLE */,
  CONSTRAINT `FKID_AUTORIZADAPOR_OC` FOREIGN KEY (`AutorizadaPor`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FKID_CREADAPOR_OC` FOREIGN KEY (`CreadaPor`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FKID_DATOSEMPRESA_OC` FOREIGN KEY (`idDatosEmpresa`) REFERENCES `datosempresa` (`idDatosEmpresa`),
  CONSTRAINT `FKID_ESTADO_OC` FOREIGN KEY (`Estado`) REFERENCES `estados` (`idEstado`),
  CONSTRAINT `FKID_FORMAPAGO_OC` FOREIGN KEY (`idFormaPago`) REFERENCES `tipospago` (`idTipoPago`),
  CONSTRAINT `FKID_ORDENPEDIDO_OC` FOREIGN KEY (`idOrdenPedido`) REFERENCES `ordenpedidocab` (`idOrdenPedido`),
  CONSTRAINT `FKID_PROOVEDOR_OC` FOREIGN KEY (`idProovedor`) REFERENCES `proovedores` (`idProovedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompracab`
--

LOCK TABLES `ordencompracab` WRITE;
/*!40000 ALTER TABLE `ordencompracab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordencompracab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordencompradet`
--

DROP TABLE IF EXISTS `ordencompradet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordencompradet` (
  `idOrdenCompraDet` int NOT NULL,
  `Codigo` varchar(45) NOT NULL,
  `Cant` int NOT NULL,
  `Iva` decimal(8,2) NOT NULL,
  `PrecioUnitario` decimal(8,2) NOT NULL,
  `Importe` decimal(8,2) NOT NULL,
  `idOrdenCompra` int NOT NULL,
  PRIMARY KEY (`idOrdenCompraDet`),
  KEY `IDX_ORDENCOMPRA` (`idOrdenCompra`),
  KEY `IDX_CODIGO` (`Codigo`),
  CONSTRAINT `FKID_CODIGO_OD` FOREIGN KEY (`Codigo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_ORDENCOMPRA_OD` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompracab` (`idOrdenCompra`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordencompradet`
--

LOCK TABLES `ordencompradet` WRITE;
/*!40000 ALTER TABLE `ordencompradet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordencompradet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordendepedidodet`
--

DROP TABLE IF EXISTS `ordendepedidodet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordendepedidodet` (
  `idOrdenPedidoDet` int NOT NULL,
  `idOrdenPedido` int NOT NULL,
  `CodigoItem` varchar(45) NOT NULL,
  `Cant` int NOT NULL,
  PRIMARY KEY (`idOrdenPedidoDet`),
  KEY `IDX_ORDENPEDIDO` (`idOrdenPedido`) /*!80000 INVISIBLE */,
  KEY `IDX_CODIGOITEM` (`CodigoItem`),
  CONSTRAINT `FKID_CODIGOITEM_OPD` FOREIGN KEY (`CodigoItem`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_ORDENPEDIDO_OPD` FOREIGN KEY (`idOrdenPedido`) REFERENCES `ordenpedidocab` (`idOrdenPedido`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordendepedidodet`
--

LOCK TABLES `ordendepedidodet` WRITE;
/*!40000 ALTER TABLE `ordendepedidodet` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordendepedidodet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenfabricacioncab`
--

DROP TABLE IF EXISTS `ordenfabricacioncab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenfabricacioncab` (
  `idOFCab` int NOT NULL,
  `NumeroOrden` int NOT NULL,
  `Fecha` date NOT NULL,
  `FechaEntrega` date NOT NULL,
  `idVendedor` int NOT NULL,
  `idCliente` int NOT NULL,
  `Estado` int NOT NULL,
  `idTipoEntrega` int DEFAULT NULL,
  PRIMARY KEY (`idOFCab`),
  KEY `FK_ID_VENDEDOR_OF_idx` (`idVendedor`),
  KEY `FK_ID_CLIENTE_OF_idx` (`idCliente`),
  KEY `FK_ID_TIPO_ENTREGA_OF_idx` (`idTipoEntrega`),
  CONSTRAINT `FK_ID_CLIENTE_OF` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `FK_ID_TIPO_ENTREGA_OF` FOREIGN KEY (`idTipoEntrega`) REFERENCES `tiposentrega` (`idTipoEntrega`),
  CONSTRAINT `FK_ID_VENDEDOR_OF` FOREIGN KEY (`idVendedor`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenfabricacioncab`
--

LOCK TABLES `ordenfabricacioncab` WRITE;
/*!40000 ALTER TABLE `ordenfabricacioncab` DISABLE KEYS */;
INSERT INTO `ordenfabricacioncab` VALUES (1,1,'2020-08-08','2020-10-12',1,1,1,1),(2,2,'2024-08-08','2024-09-10',2,1,1,1),(3,3,'2018-09-12','2069-01-01',2,1,1,1);
/*!40000 ALTER TABLE `ordenfabricacioncab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenfabricacioncab_AFTER_INSERT` AFTER INSERT ON `ordenfabricacioncab` FOR EACH ROW BEGIN
call box.Log_Audit('OrdenFabricacionCab', 1, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenfabricacioncab_AFTER_UPDATE` AFTER UPDATE ON `ordenfabricacioncab` FOR EACH ROW BEGIN
call box.Log_Audit('OrdenFabricacionCab', 3, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenfabricacioncab_AFTER_DELETE` AFTER DELETE ON `ordenfabricacioncab` FOR EACH ROW BEGIN
call box.Log_Audit('OrdenFabricacionCab', 2, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `ordenfabricaciondet`
--

DROP TABLE IF EXISTS `ordenfabricaciondet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenfabricaciondet` (
  `idordenfabricciondet` int NOT NULL,
  `idOrdenFabricacionCab` int NOT NULL,
  `NumeroItem` varchar(45) NOT NULL,
  `IdProducto` varchar(45) NOT NULL,
  `Cant` varchar(45) NOT NULL,
  PRIMARY KEY (`idordenfabricciondet`),
  KEY `FKID_ORDENFABRICACIONCAB_OFD_idx` (`idOrdenFabricacionCab`),
  KEY `FKID_IDPRODUCTO_OFD_idx` (`IdProducto`),
  CONSTRAINT `FKID_IDPRODUCTO_OFD` FOREIGN KEY (`IdProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `FKID_ORDENFABRICACIONCAB_OFD` FOREIGN KEY (`idOrdenFabricacionCab`) REFERENCES `ordenfabricacioncab` (`idOFCab`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenfabricaciondet`
--

LOCK TABLES `ordenfabricaciondet` WRITE;
/*!40000 ALTER TABLE `ordenfabricaciondet` DISABLE KEYS */;
INSERT INTO `ordenfabricaciondet` VALUES (1,1,'1','BLUED4X10','10'),(2,1,'2','MVCAB1+','20'),(3,1,'3','PERF1000','45'),(4,2,'1','MVCAB1+','40'),(5,3,'1','PERF1000','100'),(6,3,'2','MVCAB1+','200');
/*!40000 ALTER TABLE `ordenfabricaciondet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenpedidocab`
--

DROP TABLE IF EXISTS `ordenpedidocab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenpedidocab` (
  `idOrdenPedido` int NOT NULL,
  `Fecha` date NOT NULL,
  `FechaEntrega` date NOT NULL,
  `Solicitante` int NOT NULL,
  `Estado` int NOT NULL,
  `AutorizadaPor` int NOT NULL,
  PRIMARY KEY (`idOrdenPedido`),
  KEY `IDX_SOLICITANTE` (`Solicitante`) /*!80000 INVISIBLE */,
  KEY `IDX_AUTORIZADO` (`AutorizadaPor`),
  CONSTRAINT `FKID_AUTORIZADOPOR` FOREIGN KEY (`AutorizadaPor`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FKID_SOLICITANTE` FOREIGN KEY (`Solicitante`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenpedidocab`
--

LOCK TABLES `ordenpedidocab` WRITE;
/*!40000 ALTER TABLE `ordenpedidocab` DISABLE KEYS */;
/*!40000 ALTER TABLE `ordenpedidocab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenventacab`
--

DROP TABLE IF EXISTS `ordenventacab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenventacab` (
  `idOrdenVenta` int NOT NULL AUTO_INCREMENT,
  `NumeroOrden` int NOT NULL,
  `Fecha` datetime NOT NULL,
  `FechaEntrega` datetime DEFAULT NULL,
  `idVendedor` int NOT NULL,
  `idCliente` int NOT NULL,
  `TipoEntrega` int NOT NULL,
  `TipoPago` int NOT NULL,
  `Estado` int NOT NULL,
  `Subtotal` decimal(10,2) NOT NULL,
  `Descuento` decimal(10,2) NOT NULL,
  `Total` decimal(10,2) NOT NULL,
  `Observaciones` text NOT NULL,
  PRIMARY KEY (`idOrdenVenta`),
  KEY `IDX_CLIENTE` (`idCliente`) /*!80000 INVISIBLE */,
  KEY `IDX_VENDEDOR` (`idVendedor`) /*!80000 INVISIBLE */,
  KEY `IDX_TIPOPAGO` (`TipoPago`) /*!80000 INVISIBLE */,
  KEY `IDX_TIPOENTREGA` (`TipoEntrega`) /*!80000 INVISIBLE */,
  KEY `IDX_ESTADO` (`Estado`),
  CONSTRAINT `FKID_CLIENTE` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `FKID_ESTADO` FOREIGN KEY (`Estado`) REFERENCES `estados` (`idEstado`),
  CONSTRAINT `FKID_TIPOENTREGA` FOREIGN KEY (`TipoEntrega`) REFERENCES `tiposentrega` (`idTipoEntrega`),
  CONSTRAINT `FKID_TIPOPAGO` FOREIGN KEY (`TipoPago`) REFERENCES `tipospago` (`idTipoPago`),
  CONSTRAINT `FKID_VENDEDOR` FOREIGN KEY (`idVendedor`) REFERENCES `empleados` (`idEmpleado`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenventacab`
--

LOCK TABLES `ordenventacab` WRITE;
/*!40000 ALTER TABLE `ordenventacab` DISABLE KEYS */;
INSERT INTO `ordenventacab` VALUES (1,1,'2024-11-01 14:10:18',NULL,5,1,1,14,1,288919.06,0.00,288919.06,'test1'),(2,2,'2024-11-01 14:10:34',NULL,6,1,2,15,1,1005951.35,0.00,1005951.35,'test2'),(3,3,'2024-11-01 14:51:57',NULL,6,1,1,16,1,868709.27,0.00,868709.27,'test3'),(4,4,'2024-11-01 14:52:28',NULL,6,3,16,21,1,681400.33,0.00,681400.33,'test4'),(5,5,'2024-11-01 14:53:23',NULL,6,1,2,15,1,139194.17,0.00,139194.17,'test5');
/*!40000 ALTER TABLE `ordenventacab` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ordenventadet`
--

DROP TABLE IF EXISTS `ordenventadet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ordenventadet` (
  `idOrdenVentaDet` int NOT NULL,
  `idOrdenVenta` int NOT NULL,
  `idProducto` varchar(45) NOT NULL,
  `Cant` int NOT NULL,
  `Importe` decimal(10,2) NOT NULL,
  `PrecioUnitario` decimal(10,2) NOT NULL,
  PRIMARY KEY (`idOrdenVentaDet`),
  KEY `IDX_ORDENVENTA` (`idOrdenVenta`) /*!80000 INVISIBLE */,
  KEY `IDX_PRODUCTO` (`idProducto`),
  CONSTRAINT `FKID_ORDENVENTA` FOREIGN KEY (`idOrdenVenta`) REFERENCES `ordenventacab` (`idOrdenVenta`),
  CONSTRAINT `FKID_PRODUTO` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ordenventadet`
--

LOCK TABLES `ordenventadet` WRITE;
/*!40000 ALTER TABLE `ordenventadet` DISABLE KEYS */;
INSERT INTO `ordenventadet` VALUES (1,1,'FHOTRODDX3',1,137242.08,137242.08),(2,1,'PERF1000',1,151676.98,151676.98),(3,2,'BLUED4X10',1,139194.17,139194.17),(4,2,'FHOTRODDX3',3,411726.24,137242.08),(5,2,'PERF1000',3,455030.94,151676.98),(6,3,'BLUED4X10',1,139194.17,139194.17),(7,3,'FHOTRODDX3',2,274484.16,137242.08),(8,3,'PERF1000',3,455030.94,151676.98),(9,4,'MVCAB1+',2,214692.40,107346.20),(10,4,'MVCBO1',3,466707.93,155569.31),(11,5,'BLUED4X10',1,139194.17,139194.17);
/*!40000 ALTER TABLE `ordenventadet` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `ordenventadet_AFTER_INSERT` AFTER INSERT ON `ordenventadet` FOR EACH ROW BEGIN
    DECLARE new_subtotal DECIMAL(10, 2);
    DECLARE new_total DECIMAL(10, 2);

    SELECT SUM(Importe) INTO new_subtotal
    FROM ordenventadet
    WHERE idOrdenVenta = NEW.idOrdenVenta;

    SELECT Subtotal INTO new_total
    FROM ordenventacab
    WHERE idOrdenVenta = NEW.idOrdenVenta;

    SET new_total = new_subtotal;

    UPDATE ordenventacab
    SET Subtotal = new_subtotal,
        Total = new_total
    WHERE idOrdenVenta = NEW.idOrdenVenta;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `productoproducido`
--

DROP TABLE IF EXISTS `productoproducido`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productoproducido` (
  `idproductoproducido` int NOT NULL,
  `Operario` int NOT NULL,
  `FechaProcesamiento` date NOT NULL,
  `HoraProcesamiento` time NOT NULL,
  `idproducto` varchar(45) NOT NULL,
  `CantidadProcesada` varchar(45) NOT NULL,
  `idOrdenFabricacionCab` int NOT NULL,
  `idEtapa` varchar(45) NOT NULL,
  PRIMARY KEY (`idproductoproducido`),
  KEY `FK_ID_EMPLEADO_PRODUCIDO_idx` (`Operario`),
  KEY `FK_ID_PRODUCTO_idx` (`idproducto`),
  KEY `FK_ID_ORDEN_FABRICACIONCAB_idx` (`idOrdenFabricacionCab`),
  KEY `FK_ID_ID_ETAPA2_idx` (`idEtapa`),
  CONSTRAINT `FK_ID_EMPLEADO_PRODUCIDO` FOREIGN KEY (`Operario`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `FK_ID_ID_ETAPA_PAPUUU` FOREIGN KEY (`idEtapa`) REFERENCES `etapas` (`idEtapa`),
  CONSTRAINT `FK_ID_ORDEN_FABRICACIONCAB` FOREIGN KEY (`idOrdenFabricacionCab`) REFERENCES `ordenfabricacioncab` (`idOFCab`),
  CONSTRAINT `FK_ID_PRODUCTO` FOREIGN KEY (`idproducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productoproducido`
--

LOCK TABLES `productoproducido` WRITE;
/*!40000 ALTER TABLE `productoproducido` DISABLE KEYS */;
INSERT INTO `productoproducido` VALUES (1,1,'2020-01-01','10:00:00','BLUED4X10','10',1,'AC1'),(2,1,'2020-02-01','10:10:20','MVCAB1+','20',1,'AC1'),(3,1,'2020-01-01','11:20:30','PERF1000','30',1,'AC1'),(4,1,'2020-01-01','11:20:30','PERF1000','1000',3,'AC1'),(5,1,'2020-01-01','11:20:30','MVCAB1+','1000',3,'AC1');
/*!40000 ALTER TABLE `productoproducido` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `productos` (
  `idProducto` varchar(45) NOT NULL,
  `idCliente` int NOT NULL,
  `NombreProducto` varchar(45) NOT NULL,
  `idCategoria` int NOT NULL,
  `Costo` decimal(8,2) DEFAULT NULL,
  `Margen` decimal(8,2) NOT NULL,
  `PrecioUnitario` decimal(8,2) DEFAULT NULL,
  `Estado` varchar(45) NOT NULL,
  `FechaAlta` date NOT NULL,
  PRIMARY KEY (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES ('BLUED4X10',1,'Blues Deville 4x10 Reissue',1,100865.34,38.00,139194.17,'A','2008-10-10'),('BOGECS-100',5,'Bogner Ecstasy 100-watt Tube Head',2,NULL,29.80,NULL,'A','2011-10-10'),('CT1X12WIDE23',3,'California Tweed1X12 CALIFORNIA TWEED 23',3,110376.70,35.00,149008.55,'A','2010-02-14'),('FHOTRODDX3',1,'Hot Rod Deluxe III',1,100176.70,37.00,137242.08,'A','2018-12-08'),('MJCM900',2,'JCM900 4100',2,NULL,41.00,NULL,'A','2008-03-17'),('MVCAB1+',3,'MARK V+ - Head',2,79515.70,35.00,107346.20,'A','2012-04-03'),('MVCBO1',3,'MARK V - Combo 1x12',1,119668.70,30.00,155569.31,'A','2012-04-03'),('MVS8080',2,'Marshall Valvestate 8080',1,NULL,35.50,NULL,'A','2008-01-10'),('PERF1000',1,'Performer 1000 - Black',1,108340.70,40.00,151676.98,'A','2009-08-14'),('RIV_VENUS 5x12H',6,'Rivera Venus 5 1x12\" 35-watt Tube Combo Amp',2,NULL,43.60,NULL,'A','2015-09-15'),('SLO-100 SO',4,'Soldano SLO-100 Super Lead Overdrive',2,NULL,37.00,NULL,'A','2010-12-18');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productos_AFTER_INSERT` AFTER INSERT ON `productos` FOR EACH ROW BEGIN
call box.Log_Audit('Productos', 1, 1);
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productos_AFTER_UPDATE` AFTER UPDATE ON `productos` FOR EACH ROW BEGIN
call box.Log_Audit('Productos', 3, 3);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `productos_AFTER_DELETE` AFTER DELETE ON `productos` FOR EACH ROW BEGIN
call box.Log_Audit('Productos', 2, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `proovedores`
--

DROP TABLE IF EXISTS `proovedores`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `proovedores` (
  `idProovedor` int NOT NULL,
  `Nombre` varchar(45) NOT NULL,
  PRIMARY KEY (`idProovedor`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `proovedores`
--

LOCK TABLES `proovedores` WRITE;
/*!40000 ALTER TABLE `proovedores` DISABLE KEYS */;
/*!40000 ALTER TABLE `proovedores` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rec_procesos`
--

DROP TABLE IF EXISTS `rec_procesos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `rec_procesos` (
  `idProducto` varchar(45) NOT NULL,
  `idEtapa` varchar(45) NOT NULL,
  `Seq` int NOT NULL,
  `Duracion` time NOT NULL,
  `idRecProc` int NOT NULL,
  PRIMARY KEY (`idRecProc`),
  KEY `IDX_PRODUCTO` (`idProducto`) /*!80000 INVISIBLE */,
  KEY `IDX_ETAPA` (`idEtapa`),
  CONSTRAINT `FKID_ETAPA_RP` FOREIGN KEY (`idEtapa`) REFERENCES `etapas` (`idEtapa`),
  CONSTRAINT `FKID_PRODUCTO_RP` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rec_procesos`
--

LOCK TABLES `rec_procesos` WRITE;
/*!40000 ALTER TABLE `rec_procesos` DISABLE KEYS */;
INSERT INTO `rec_procesos` VALUES ('BLUED4X10','AC1',1,'35:00:00',1),('BLUED4X10','EN1',2,'45:00:00',2),('BLUED4X10','AC2',3,'28:00:00',3),('BLUED4X10','EN2',5,'25:00:00',4),('BLUED4X10','CC',6,'15:00:00',5),('MVCAB1+','AC1',1,'35:00:00',6),('MVCAB1+','EN1',2,'40:00:00',7),('MVCAB1+','AC2',3,'15:00:00',8),('MVCAB1+','EN2',5,'25:00:00',9),('MVCBO1','AC1',1,'35:00:00',10),('MVCBO1','EN1',2,'45:00:00',11),('MVCBO1','AC2',3,'28:00:00',12),('MVCBO1','EN2',5,'25:00:00',13),('MVCBO1','CC',6,'15:00:00',14),('FHOTRODDX3','AC1',1,'20:00:00',15),('FHOTRODDX3','EN1',2,'35:00:00',16),('FHOTRODDX3','TAP',4,'68:00:00',17),('FHOTRODDX3','AC2',3,'30:00:00',18),('FHOTRODDX3','EN2',5,'25:00:00',19),('BLUED4X10','TAP',4,'15:00:00',20),('MVCBO1','TAP',4,'78:00:00',21),('MVCAB1+','TAP',4,'68:00:00',22),('CT1X12WIDE23','AC1',1,'15:00:00',23),('CT1X12WIDE23','EN1',2,'35:00:00',24),('CT1X12WIDE23','AC2',3,'15:00:00',25),('CT1X12WIDE23','TAP',4,'56:00:00',26),('CT1X12WIDE23','EN2',5,'14:00:00',27),('CT1X12WIDE23','CC',6,'15:00:00',28);
/*!40000 ALTER TABLE `rec_procesos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recetademateriales`
--

DROP TABLE IF EXISTS `recetademateriales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recetademateriales` (
  `idMaterial` int NOT NULL,
  `idProducto` varchar(45) NOT NULL,
  `idArticulo` varchar(45) NOT NULL,
  `Cantidad` decimal(8,2) NOT NULL,
  `idUnidadMedida` varchar(45) NOT NULL,
  `Seq` int NOT NULL,
  PRIMARY KEY (`idMaterial`),
  KEY `IDX_PRODUCTO_RECETA` (`idProducto`) /*!80000 INVISIBLE */,
  KEY `IDX_ARTICULO_RECETA` (`idArticulo`),
  KEY `IDX_UNIDADMEDIDA_RECETA` (`idUnidadMedida`),
  CONSTRAINT `FKID_ARTICULO_RECETA` FOREIGN KEY (`idArticulo`) REFERENCES `articulo` (`idArticulo`),
  CONSTRAINT `FKID_PRODUCTO_RECETA` FOREIGN KEY (`idProducto`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `FKID_UNIDADMEDIDA_RECETA` FOREIGN KEY (`idUnidadMedida`) REFERENCES `unidadmedida` (`idUnidadMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recetademateriales`
--

LOCK TABLES `recetademateriales` WRITE;
/*!40000 ALTER TABLE `recetademateriales` DISABLE KEYS */;
INSERT INTO `recetademateriales` VALUES (1,'MVCAB1+','TP10028-25',1.00,'CU',1),(2,'MVCAB1+','BP10038-25',1.00,'CU',1),(3,'MVCAB1+','LPD3840-25',1.00,'CU',1),(4,'MVCAB1+','LPI3840-25',1.00,'CU',1),(5,'MVCAB1+','FP9520-25',1.00,'CU',2),(6,'MVCAB1+','FTEP9520-25',1.00,'CU',2),(7,'MVCAB1+','TOPFREP20-25x25',2.00,'CU',2),(8,'MVCAB1+','TOPFONP20-25x25',2.00,'CU',2),(9,'MVCAB1+','REGAMBHN',4.00,'CU',1),(10,'MVCAB1+','ESQUIMBAHN',6.00,'CU',1),(11,'MVCAB1+','MANITMBN',1.00,'CU',2),(12,'MVCAB1+','TARM1020',8.00,'CU',2),(13,'MVCAB1+','PARK205N',4.00,'CU',2),(14,'MVCAB1+','PARK2505N',4.00,'CU',2),(15,'MVCAB1+','FREZ206P',2.00,'CU',2),(16,'MVCAB1+','CHAPMBHN',2.00,'CU',1),(17,'MVCAB1+','FREZ1506P',4.00,'CU',1),(18,'MVCAB1+','CUEMBN',2.80,'M2',1),(19,'MVCAB1+','VINIL',550.00,'CM3',1),(20,'MVCAB1+','FREZ1506N',8.00,'CU',1),(21,'MVCAB1+','MBLOGO1',1.00,'CU',1),(22,'MVCBO1','TP11028-25',1.00,'CU',1),(23,'MVCBO1','BP11038-25',1.00,'CU',1),(24,'MVCBO1','LPD3855-25',1.00,'CU',1),(25,'MVCBO1','LPI3855-25',1.00,'CU',1),(26,'MVCBO1','FP10535-25',1.00,'CU',2),(27,'MVCBO1','TOPFONP30-25x25',2.00,'CU',2),(28,'MVCBO1','FTEP1210545-25',1.00,'CU',2),(29,'MVCBO1','TOPFREP38-25x25',2.00,'CU',2),(30,'MVCBO1','REGAMBHN',4.00,'CU',1),(31,'MVCBO1','ESQUIMBAHN',5.00,'CU',1),(32,'MVCBO1','MANITMBN',1.00,'CU',2),(33,'MVCBO1','TARM1020',8.00,'CU',2),(34,'MVCBO1','PARK205N',4.00,'CU',2),(35,'MVCBO1','PARK2505N',4.00,'CU',2),(36,'MVCBO1','FREZ206P',2.00,'CU',2),(37,'MVCBO1','CHAPMBHN',2.00,'CU',1),(38,'MVCBO1','FREZ1506P',4.00,'CU',1),(39,'MVCBO1','CUEMBN',4.70,'M2',1),(40,'MVCBO1','VINIL',880.00,'CM3',1),(41,'MVCBO1','FREZ1506N',8.00,'CU',1),(42,'MVCBO1','MBLOGO1',1.00,'CU',1),(43,'CT1X12WIDE23','TP12038-25',1.00,'CU',1),(44,'CT1X12WIDE23','BP12038-25',1.00,'CU',1),(45,'CT1X12WIDE23','LPD3855-25',1.00,'CU',1),(46,'CT1X12WIDE23','LPI3855-25',1.00,'CU',1),(47,'CT1X12WIDE23','FP11525-25',1.00,'CU',2),(48,'CT1X12WIDE23','TOPFONP25-25x25',2.00,'CU',2),(49,'CT1X12WIDE23','TOPFREP50-25x25',2.00,'CU',2),(50,'CT1X12WIDE23','FTEP1211550-25',1.00,'CU',2),(51,'CT1X12WIDE23','REGAMBHN',4.00,'CU',1),(52,'CT1X12WIDE23','ESQUIMBAHN',6.00,'CU',1),(53,'CT1X12WIDE23','MANITMBCN',1.00,'CU',2),(54,'CT1X12WIDE23','TARM1020',8.00,'CU',2),(55,'CT1X12WIDE23','PARK205N',8.00,'CU',2),(56,'CT1X12WIDE23','PARK2505N',4.00,'CU',2),(57,'CT1X12WIDE23','FREZ206P',2.00,'CU',2),(58,'CT1X12WIDE23','CHAPMBHN',2.00,'CU',2),(59,'CT1X12WIDE23','FREZ1506P',4.00,'CU',1),(60,'CT1X12WIDE23','CUEMBCREAM',3.60,'M2',1),(61,'CT1X12WIDE23','VINIL',780.00,'CM3',1),(62,'CT1X12WIDE23','FREZ1506N',8.00,'CU',1),(63,'CT1X12WIDE23','FP1557225',1.00,'CU',1),(64,'CT1X12WIDE23','MBLOGO2',1.00,'CU',1),(65,'BLUED4X10','TP10028-25',1.00,'CU',1),(66,'BLUED4X10','BP10038-25',1.00,'CU',1),(67,'BLUED4X10','LPD3840-25',1.00,'CU',1),(68,'BLUED4X10','LPI3840-25',1.00,'CU',1),(69,'BLUED4X10','FP9520-25',1.00,'CU',2),(70,'BLUED4X10','FTEP9520-25',1.00,'CU',2),(71,'BLUED4X10','TOPFREP20-25x25',2.00,'CU',2),(72,'BLUED4X10','TOPFONP20-25x25',2.00,'CU',2),(73,'BLUED4X10','REGAFDERSTD-BKN',4.00,'CU',1),(74,'BLUED4X10','MANITFDER-BK',1.00,'CU',2),(75,'BLUED4X10','TARM1020',8.00,'CU',2),(76,'BLUED4X10','PARK205N',4.00,'CU',2),(77,'BLUED4X10','PARK2505N',4.00,'CU',2),(78,'BLUED4X10','FREZ206P',2.00,'CU',2),(79,'BLUED4X10','FREZ1506P',4.00,'CU',1),(80,'BLUED4X10','TELAFDER-BD',5.80,'M2',1),(81,'BLUED4X10','VINIL',760.00,'CM3',1),(82,'BLUED4X10','FREZ1506N',8.00,'CU',1),(83,'BLUED4X10','FDERLOGO1',1.00,'CU',1),(105,'FHOTRODDX3','TC10028-25',1.00,'CU',1),(106,'FHOTRODDX3','BC10038-25',1.00,'CU',1),(107,'FHOTRODDX3','LCD3840-25',1.00,'CU',1),(108,'FHOTRODDX3','LCI3840-25',1.00,'CU',1),(109,'FHOTRODDX3','FC9520-25',1.00,'CU',1),(110,'FHOTRODDX3','FTEC9520-25',1.00,'CU',1),(111,'FHOTRODDX3','TOPFREC20-25x25',2.00,'CU',1),(112,'FHOTRODDX3','TOPFONC20-25x25',2.00,'CU',1),(113,'FHOTRODDX3','REGAFDERSTD-BKN',4.00,'CU',2),(114,'FHOTRODDX3','ESQUIFDERA-BK',6.00,'CU',2),(115,'FHOTRODDX3','MANITFDER-BK',1.00,'CU',2),(116,'FHOTRODDX3','TARM1020',8.00,'CU',2),(117,'FHOTRODDX3','PARK205N',4.00,'CU',2),(118,'FHOTRODDX3','PARK2505N',4.00,'CU',2),(119,'FHOTRODDX3','FREZ206P',2.00,'CU',2),(120,'FHOTRODDX3','CHAPFDER-HR',2.00,'CU',2),(121,'FHOTRODDX3','FREZ1506P',4.00,'CU',1),(122,'FHOTRODDX3','CUEFDER-BK',4.80,'M2',2),(123,'FHOTRODDX3','VINIL',760.00,'CM3',2),(124,'FHOTRODDX3','FREZ1506N',8.00,'CU',1),(125,'FHOTRODDX3','FDERLOGO2',1.00,'CU',2),(126,'PERF1000','TP10028-25',1.00,'CU',1),(127,'PERF1000','BP10038-25',1.00,'CU',1),(128,'PERF1000','LPD3840-25',1.00,'CU',1),(129,'PERF1000','LPI3840-25',1.00,'CU',1),(130,'PERF1000','FP9520-25',1.00,'CU',1),(131,'PERF1000','FTEP9520-25',1.00,'CU',1),(132,'PERF1000','TOPFREP20-25x25',2.00,'CU',1),(133,'PERF1000','TOPFONP20-25x25',2.00,'CU',1),(134,'PERF1000','REGAFDERSTD-BKN',4.00,'CU',2),(135,'PERF1000','MANITFDER-BK',1.00,'CU',2),(136,'PERF1000','TARM1020',8.00,'CU',1),(137,'PERF1000','PARK205N',4.00,'CU',2),(138,'PERF1000','PARK2505N',4.00,'CU',2),(139,'PERF1000','FREZ206P',2.00,'CU',2),(140,'PERF1000','FREZ1506P',4.00,'CU',2),(141,'PERF1000','CUEFDER-BK',5.10,'M2',2),(142,'PERF1000','VINIL',820.00,'CM3',2),(143,'PERF1000','FREZ1506N',8.00,'CU',2),(144,'PERF1000','FDERLOGO3',1.00,'CU',2);
/*!40000 ALTER TABLE `recetademateriales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recibopago`
--

DROP TABLE IF EXISTS `recibopago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recibopago` (
  `idReciboPago` int NOT NULL,
  `idDatosEmpresa` int NOT NULL,
  `idOrdenCompra` int NOT NULL,
  `Documento` int NOT NULL,
  `Importe` decimal(8,2) NOT NULL,
  `Total` decimal(8,2) NOT NULL,
  `idTipoPago` int NOT NULL,
  PRIMARY KEY (`idReciboPago`),
  KEY `IDX_DATOSEMPRESA` (`idDatosEmpresa`) /*!80000 INVISIBLE */,
  KEY `IDX_ORDENCOMPRA` (`idOrdenCompra`) /*!80000 INVISIBLE */,
  KEY `IDX_TIPOPAGO` (`idTipoPago`),
  CONSTRAINT `FKID_DATOSEMPRESA_R` FOREIGN KEY (`idDatosEmpresa`) REFERENCES `datosempresa` (`idDatosEmpresa`),
  CONSTRAINT `FKID_ORDENCOMPRA_R` FOREIGN KEY (`idOrdenCompra`) REFERENCES `ordencompracab` (`idOrdenCompra`),
  CONSTRAINT `FKID_TIPOPAGO_R` FOREIGN KEY (`idTipoPago`) REFERENCES `tipospago` (`idTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recibopago`
--

LOCK TABLES `recibopago` WRITE;
/*!40000 ALTER TABLE `recibopago` DISABLE KEYS */;
/*!40000 ALTER TABLE `recibopago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `remitoscab`
--

DROP TABLE IF EXISTS `remitoscab`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitoscab` (
  `idRemitoCab` int NOT NULL AUTO_INCREMENT,
  `idCliente` int NOT NULL,
  `idOrdenFabricacionCab` int NOT NULL,
  `FechaEntrega` date NOT NULL,
  `idVendedor` int NOT NULL,
  `idTipoEntrega` int NOT NULL,
  `Observaciones` text,
  `Peso` decimal(8,2) DEFAULT NULL,
  `CantBultos` int DEFAULT NULL,
  PRIMARY KEY (`idRemitoCab`),
  KEY `IDX_CLIENTE` (`idCliente`) /*!80000 INVISIBLE */,
  KEY `IDX_VENDEDOR` (`idVendedor`) /*!80000 INVISIBLE */,
  KEY `IDX_TIPOENTREGA` (`idTipoEntrega`),
  KEY `PORKY_idx` (`idOrdenFabricacionCab`),
  CONSTRAINT `FKID_CLIENTE_REMITOS` FOREIGN KEY (`idCliente`) REFERENCES `clientes` (`idCliente`),
  CONSTRAINT `FKID_TIPOENTREGA_REMITOS` FOREIGN KEY (`idTipoEntrega`) REFERENCES `tiposentrega` (`idTipoEntrega`),
  CONSTRAINT `FKID_VENDEDOR_REMITOS` FOREIGN KEY (`idVendedor`) REFERENCES `empleados` (`idEmpleado`),
  CONSTRAINT `PORKY` FOREIGN KEY (`idOrdenFabricacionCab`) REFERENCES `ordenfabricacioncab` (`idOFCab`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitoscab`
--

LOCK TABLES `remitoscab` WRITE;
/*!40000 ALTER TABLE `remitoscab` DISABLE KEYS */;
INSERT INTO `remitoscab` VALUES (18,1,3,'2069-01-01',1,1,NULL,NULL,NULL);
/*!40000 ALTER TABLE `remitoscab` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remitoscab_AFTER_INSERT` AFTER INSERT ON `remitoscab` FOR EACH ROW BEGIN
call box.Log_Audit('RemitosCab', 1, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remitoscab_AFTER_UPDATE` AFTER UPDATE ON `remitoscab` FOR EACH ROW BEGIN
call box.Log_Audit('RemitosCab', 3, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `remitoscab_AFTER_DELETE` AFTER DELETE ON `remitoscab` FOR EACH ROW BEGIN
call box.Log_Audit('RemitosCab', 2, 1);

END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `remitosdet`
--

DROP TABLE IF EXISTS `remitosdet`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `remitosdet` (
  `idRemitosDet` int NOT NULL AUTO_INCREMENT,
  `Codigo` varchar(45) NOT NULL,
  `Cant` int NOT NULL,
  `OrdenNRO` int NOT NULL,
  `idRemitoCab` int NOT NULL,
  PRIMARY KEY (`idRemitosDet`),
  KEY `IDX_CODIGO` (`Codigo`) /*!80000 INVISIBLE */,
  KEY `FKIBIDI_ORDEN_idx` (`OrdenNRO`),
  KEY `FKID_REMITOCAB_REMITODET_idx` (`idRemitoCab`),
  CONSTRAINT `FKIBIDI_ORDEN` FOREIGN KEY (`OrdenNRO`) REFERENCES `ordenfabricacioncab` (`idOFCab`),
  CONSTRAINT `FKID_CODIGO` FOREIGN KEY (`Codigo`) REFERENCES `productos` (`idProducto`),
  CONSTRAINT `FKID_REMITOCAB_REMITODET` FOREIGN KEY (`idRemitoCab`) REFERENCES `remitoscab` (`idRemitoCab`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `remitosdet`
--

LOCK TABLES `remitosdet` WRITE;
/*!40000 ALTER TABLE `remitosdet` DISABLE KEYS */;
INSERT INTO `remitosdet` VALUES (1,'PERF1000',100,1,18),(2,'MVCAB1+',200,1,18);
/*!40000 ALTER TABLE `remitosdet` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sector`
--

DROP TABLE IF EXISTS `sector`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sector` (
  `idSector` int NOT NULL AUTO_INCREMENT,
  `nombreSector` varchar(45) NOT NULL,
  PRIMARY KEY (`idSector`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sector`
--

LOCK TABLES `sector` WRITE;
/*!40000 ALTER TABLE `sector` DISABLE KEYS */;
INSERT INTO `sector` VALUES (1,'Gerencia General'),(2,'Investigacion y Desarrollo'),(3,'Ventas'),(4,'Administracion'),(5,'Compras'),(6,'Producción'),(7,'Mantenimiento'),(8,'Almacén'),(9,'Expedición');
/*!40000 ALTER TABLE `sector` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipoarticulo`
--

DROP TABLE IF EXISTS `tipoarticulo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipoarticulo` (
  `idTipoArticulo` int NOT NULL AUTO_INCREMENT,
  `NombreTipo` varchar(45) NOT NULL,
  `Detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoArticulo`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipoarticulo`
--

LOCK TABLES `tipoarticulo` WRITE;
/*!40000 ALTER TABLE `tipoarticulo` DISABLE KEYS */;
INSERT INTO `tipoarticulo` VALUES (1,'TORNILLOS',NULL),(2,'MADERAS',NULL),(3,'PEGAMENTOS',NULL),(4,'HERRAMIENTAS',NULL),(5,'LIBRERIA',NULL),(6,'MAQUINAS ELECT.',NULL),(7,'CLAVOS',NULL),(8,'MANIJAS',NULL),(9,'REGATONES',NULL),(10,'ESQUINEROS',NULL),(11,'CUERINA',NULL),(12,'VINILICOS',NULL),(13,'TELAS',NULL),(14,'LACAS',NULL),(15,'PINTURAS',NULL),(16,'CUEROS',NULL),(17,'TONERS',NULL),(18,'RUEDAS',NULL),(19,'TARUGOS',NULL),(20,'LOGOS',NULL),(21,'CHAPA APOYO',NULL),(22,'CURTIEMBRE',NULL),(23,'MADERA ESPECIAL',NULL),(24,'ELECTRICIDAD',NULL),(25,'VARIOS',NULL);
/*!40000 ALTER TABLE `tipoarticulo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tiposentrega`
--

DROP TABLE IF EXISTS `tiposentrega`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tiposentrega` (
  `idTipoEntrega` int NOT NULL,
  `nombreTipoEntrega` varchar(45) NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`idTipoEntrega`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tiposentrega`
--

LOCK TABLES `tiposentrega` WRITE;
/*!40000 ALTER TABLE `tiposentrega` DISABLE KEYS */;
INSERT INTO `tiposentrega` VALUES (1,'Mensajería Teledirigida','ooomaiga'),(2,'Entrega Express','Entrega en tiempo récord'),(3,'Envío Aéreo','Rápido y seguro desde las alturas'),(4,'Entrega Submarina','Para llegar a donde '),(5,'Reparto en Dron','Tecnología de vanguardia en tus manos'),(6,'Entrega en Bicicleta','Ecológica y eficiente'),(7,'Reparto por Teletransportación','¡Casi como magia!'),(8,'Entrega en Caballo','Un toque clásico y tradicional'),(9,'Servicio de Mensajería Intergaláctica','Para cuands al espacio'),(10,'Entrega en Cohete','Para aquellos que no pueden esperar'),(11,'Reparto por Robot','Futuro del envío'),(12,'Entrega en Globo Aerostático','Un viaje relajante con vistas'),(13,'Servicio de Mensajería Rápida','Para los pedidos urgentes'),(14,'Entrega en Scooter','Ágil y eficiente en la ciudad'),(15,'Reparto en Trineo','Para un toque invernal'),(16,'Entrega en Carroza','Elegante y tradicional'),(17,'Servicio de Envío por Telepatía','Para comunicaciones instantáneas'),(18,'Entrega en Hawk Tua','Tecnología del futuro en tus manos'),(19,'Reparto en Camión Eléctrico','Ecológico y moderno'),(20,'Entrega en Maleta Voladora','Cuando necesitas toilñet');
/*!40000 ALTER TABLE `tiposentrega` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipospago`
--

DROP TABLE IF EXISTS `tipospago`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tipospago` (
  `idTipoPago` int NOT NULL,
  `nombreTipoPago` varchar(45) NOT NULL,
  `Detalle` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idTipoPago`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipospago`
--

LOCK TABLES `tipospago` WRITE;
/*!40000 ALTER TABLE `tipospago` DISABLE KEYS */;
INSERT INTO `tipospago` VALUES (1,'Oro','Todo de oro, lujoso y brillante'),(2,'Efectivo','Pago en efectivo, simple y directo'),(3,'Tarjeta de Crédito','Pago con tarjeta de crédito, rápido y seguro'),(4,'Transferencia Bancaria','Transferencia electrónica desde tu cuenta'),(5,'Cheque','Pago con cheque, tradicional y formal'),(6,'Criptomonedas','Pago con Bitcoin, Ethereum y otras'),(7,'Pago Móvil','Usa tu móvil para pagar, cómodo y práctico'),(8,'Puntos de Fidelidad','Usa tus puntos acumulados para pagar'),(9,'Pago a Plazos','Divide el monto en pagos mensuales'),(10,'Financiación','Financia tu compra a través de un préstamo'),(11,'E-wallet','Pago a través de billeteras electrónicas'),(12,'Gift Card','Usa tu tarjeta de regalo para pagar'),(13,'Pago por Débito Directo','Retiro automático de tu cuenta bancaria'),(14,'Pago por Paypal','Pago seguro a través de Paypal'),(15,'Moneda Extranjera','Aceptamos pagos en divisas extranjeras'),(16,'Barter','Intercambio de bienes y servicios'),(17,'Prepago','Pago anticipado por adelantado'),(18,'Pago con Oro Digital','Moneda digital respaldada por oro'),(19,'Pago con Recompensas','Usa recompensas de programas de lealtad'),(20,'Cheque de Viaje','Pago con cheques de viaje internacionales'),(21,'Hervidor Electrico','Hervidor Helectrico');
/*!40000 ALTER TABLE `tipospago` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unidadmedida`
--

DROP TABLE IF EXISTS `unidadmedida`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unidadmedida` (
  `idUnidadMedida` varchar(45) NOT NULL,
  `Detalle` varchar(45) NOT NULL,
  PRIMARY KEY (`idUnidadMedida`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unidadmedida`
--

LOCK TABLES `unidadmedida` WRITE;
/*!40000 ALTER TABLE `unidadmedida` DISABLE KEYS */;
INSERT INTO `unidadmedida` VALUES ('CM3','CENTIMETROS CUBICOS'),('CU','CADA UNO'),('KG','KILOGRAMO'),('KWH','KILOWATS HORA'),('LTS','LITROS'),('M2','METROS CUADRADOS'),('ML','METROS LINEALES'),('MM','MILIMETROS');
/*!40000 ALTER TABLE `unidadmedida` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'box'
--

--
-- Dumping routines for database 'box'
--
/*!50003 DROP FUNCTION IF EXISTS `OF_FINALIZADA` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `OF_FINALIZADA`(idOF INT) RETURNS varchar(1) CHARSET utf8mb4
    DETERMINISTIC
BEGIN
    DECLARE result VARCHAR(1);
    
    SELECT IF(IFNULL(pp.CantidadProcesada, 0) - ofd.cant > 0, "F", "P") INTO result 
    FROM ordenfabricacioncab ofc
    JOIN ordenfabricaciondet ofd 
    ON ofd.idOrdenFabricacionCab = ofc.idOFCab
    LEFT JOIN productoproducido pp 
    ON pp.idOrdenFabricacionCab = ofc.idOFCab AND pp.IdProducto = ofd.IdProducto
    WHERE ofc.idOFCab = idOF
    ORDER BY IF(IFNULL(pp.CantidadProcesada, 0) - ofd.cant > 0, "F", "P") DESC
    LIMIT 1;
    
    RETURN result;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP FUNCTION IF EXISTS `Positivo_Negativo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` FUNCTION `Positivo_Negativo`(num INT) RETURNS varchar(35) CHARSET utf8mb4
    NO SQL
    DETERMINISTIC
BEGIN
    RETURN if(num > 0, 'Positivo', 'Negativo');
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Stock_Articulo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Stock_Articulo`(IN p_idArticulo VARCHAR(45), IN p_Cantidad INT)
BEGIN
    DECLARE v_stock INT DEFAULT 0;
    DECLARE v_cantidadReservada INT DEFAULT 0;
    DECLARE v_stockMinimo INT DEFAULT 0;
    DECLARE p_isStockSufficient TINYINT(1) DEFAULT 0;
    DECLARE no_more_rows BOOLEAN DEFAULT FALSE;

    DECLARE CONTINUE HANDLER FOR NOT FOUND SET no_more_rows = TRUE;

    SELECT IFNULL(a.Stock, 0), IFNULL(a.StockMinimo, 0), 
           IFNULL(SUM(ar.Cantidad), 0) AS CantidadReservada
    INTO v_stock, v_stockMinimo, v_cantidadReservada
    FROM articulo a
    LEFT JOIN articulosreservados ar ON a.idArticulo = ar.idArticulo
    WHERE a.idArticulo = p_idArticulo
    GROUP BY a.idArticulo;

    IF no_more_rows THEN
        SET p_isStockSufficient = 0;
    ELSE
        IF (v_stock - v_cantidadReservada >= p_Cantidad) AND (v_stock - v_cantidadReservada >= v_stockMinimo) THEN
            SET p_isStockSufficient = 1;
        ELSE
            SET p_isStockSufficient = 0;
        END IF;
    END IF;

    SELECT p_idArticulo AS "Articulo", p_isStockSufficient AS "Stock suficiente";
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Stock_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Stock_Producto`(IN idProd VARCHAR(45) ,IN QtyNecesaria int)
BEGIN

select a.idProducto, b.idArticulo , b.idMaterial, b.cantidad*QtyNecesaria, c.Stock, (c.Stock-b.Cantidad*QtyNecesaria) as "Diferenciation", Positivo_Negativo(c.Stock-b.Cantidad*QtyNecesaria) as 'Hay Stock' from 
productos a 
join recetademateriales b
join articulo c 
on a.idProducto = b.idProducto and c.idArticulo = b.idArticulo
where a.idProducto = 'MVCAB1+';





END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Check_Stock_Producto_2` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Check_Stock_Producto_2`(IN idProd VARCHAR(45), IN Cant INT)
BEGIN
    DECLARE stock_status VARCHAR(1);
    
    IF EXISTS (SELECT 1 FROM recetademateriales WHERE idProducto = idProd) THEN
        SELECT 
            idProd, 
            IF(a.stock - (rm.Cantidad * Cant) > 0, "S", "N") AS "PROCESABLE"
        FROM 
            recetademateriales rm
        JOIN 
            articulo a ON rm.idArticulo = a.idArticulo
        WHERE 
            rm.idProducto = idProd
        ORDER BY 
            IF(a.stock - (rm.Cantidad * Cant) > 0, "S", "N")
        LIMIT 1;
    ELSE
        SELECT 
            idProd AS "IDPROD", 
            "N" AS "PROCESABLE";  
    END IF;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Cuenta_Corriente` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Cuenta_Corriente`(IN pIDCliente INT)
BEGIN

	DECLARE SaldoAcumulado DECIMAL(8,2);
    
	DROP TEMPORARY TABLE IF EXISTS `CCtemp`;
	CREATE TEMPORARY TABLE `CCtemp` (
	`Comprobante` INT NOT NULL DEFAULT 0,
	`Tipo` CHAR(2),
	`Fecha` DATE,
	`Debe` DECIMAL(14,2),
	`Haber` DECIMAL(14,2),
	`Saldo` DECIMAL(14,2),
	`Linea` INT NOT NULL AUTO_INCREMENT KEY,
	INDEX `idx_Fecha` (`Fecha`));

	INSERT INTO `CCtemp` (Comprobante, Tipo, Fecha, Debe, Haber, Saldo)
	SELECT f.idFacturaCab AS "Comprobante",
       	'FC' AS "Tipo",
       	f.Vencimiento AS "Fecha",
       	f.Total AS "Debe",
       	0 AS "Haber",
       	f.Total AS "Saldo"
	FROM factura f
	JOIN remitoscab rc ON rc.idRemitoCab = f.idRemito
	WHERE rc.idCliente = pIDCliente;
    
	INSERT INTO `CCtemp` (Comprobante, Tipo, Fecha, Debe, Haber, Saldo)
	SELECT rp.idReciboPago AS "Comprobante",
       	'RP' AS "Tipo",
       	rp.Fecha AS "Fecha",
       	0 AS "Debe",
       	SUM(rpd.total) AS "Haber",
       	SUM(rpd.total) AS "Saldo"
	FROM recibopago rp
	JOIN recibopagodet rpd ON rp.idReciboPago = rpd.idReciboPagoCab
	WHERE rp.idClienteE = pIDCliente
	GROUP BY rp.idReciboPago, rp.Fecha;
    
	SET SaldoAcumulado = 0;
	UPDATE `CCtemp`
	SET Saldo = Saldo + SaldoAcumulado
	ORDER BY Fecha, Linea;

	SELECT Comprobante, Tipo, Fecha, Debe, Haber, Saldo
	FROM `CCtemp`
	ORDER BY Fecha, Linea;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Estado_OF_Item` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Estado_OF_Item`(IN NroOF INT, IN IDProd VARCHAR(45))
BEGIN
	
	select 
    a.idOfcab, 
    b.NumeroItem, 
    b.IdProducto,
    a.Estado, 
    b.Cant, 
    c.CantidadProcesada, 
    c.idEtapa, 
    c.FechaProcesamiento,
    c.Operario,
    c.HoraProcesamiento
    from ordenfabricacioncab a
	join ordenfabricaciondet b
	join productoproducido c
	on c.IdProducto = b.IdProducto
	where a.idOfCab = NroOF and b.idProducto = idProd;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Estado_OF_Item_CT` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Estado_OF_Item_CT`(IN NroOF INT)
BEGIN
	SELECT p.idOrdenFabricacionCab, ofd.NumeroItem, p.idproducto, ofd.Cant, p.idEtapa,
    sum(p.CantidadProcesada) AS "Procesado", (ofd.Cant - sum(p.CantidadProcesada)) AS "Pendiente"
    FROM productoproducido p 
    JOIN ordenfabricaciondet ofd 
    ON p.idOrdenFabricacionCab = ofd.idOrdenFabricacionCab
    WHERE p.idOrdenFabricacionCab = NroOF 
    GROUP BY p.idEtapa;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `FACTURA_REMITO` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `FACTURA_REMITO`(IN PidRemito INT, IN PidUsuario INT)
BEGIN
    DECLARE Vencimiento DATE; 
    DECLARE Descuento DECIMAL(15, 2);
    DECLARE Subtotal DECIMAL(15, 2);
    DECLARE Neto DECIMAL(15, 2);
    DECLARE Iva DECIMAL(15, 2);
    DECLARE Total DECIMAL(15, 2);
    
    IF EXISTS (SELECT * FROM factura WHERE idRemito = PidRemito) THEN
        SELECT "El remito ya fue facturado";
    END IF;

    SELECT DATE_ADD(rc.FechaEntrega, INTERVAL 30 DAY) 
    INTO Vencimiento
    FROM remitoscab rc
    JOIN remitosdet rd ON rc.idRemitoCab = rd.idRemitoCab
    WHERE rc.idRemitoCab = PidRemito
    LIMIT 1;

    SELECT (rd.cant * p.Costo) 
    INTO Neto
    FROM remitosdet rd
    JOIN productos p ON rd.codigo = p.idProducto
    WHERE rd.idRemitoCab = PidRemito
    LIMIT 1;
    
    SET Iva = TRUNCATE(Neto * 0.21, 2);
    SET Subtotal = TRUNCATE(Neto + Iva, 2);
    SET Descuento = 0.00;
    SET Total = TRUNCATE(Subtotal - Descuento, 2);
    
    INSERT INTO factura (idRemito, Vencimiento, Descuento, Subtotal, Neto, Iva, Total)
    VALUES (PidRemito, Vencimiento, Descuento, Subtotal, Neto, Iva, Total);
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Get_Costos` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Get_Costos`(IN ProductoID VARCHAR(45))
BEGIN
SELECT ProductoID as 'Producto:', sum(a.precio*rm.Cantidad) as 'Precio Producto' from articulo a
left join recetademateriales rm on a.idArticulo = rm.idArticulo
    where rm.idProducto = ProductoID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Log_Audit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Log_Audit`(IN PTableChanged VARCHAR(45), IN PidMov INT, IN PidUsr INT)
BEGIN
	declare inodoro_retrete_vater VARCHAR(80);
	
    select Movimiento into inodoro_retrete_vater from auditmov where idMov = PidMov;
	
	INSERT INTO audit (idMov, DetMov, Fecha, audit.Time, idUsr, audit.Table)
    VALUES (PidMov, inodoro_retrete_vater, CURDATE(), CURTIME(), PidUsr, PTableChanged);

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `producto_from_cliente_nombre` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_from_cliente_nombre`(in p_RazonSocial varchar(45))
BEGIN

	SELECT c.idcliente, c.RazonSocial, p.idProducto, p.NombreProducto, p.PrecioUnitario
    FROM clientes c
	JOIN productos p
	ON p.idCliente = c.idCliente
	WHERE RazonSocial = p_RazonSocial;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `producto_tiene_receta_de_materiales` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `producto_tiene_receta_de_materiales`(IN p_idProducto VARCHAR(45))
BEGIN

	DECLARE v_productHasRecipe TINYINT(1);
    
    IF NOT EXISTS(SELECT idMaterial FROM recetademateriales WHERE idProducto = p_idProducto) THEN
        SET v_productHasRecipe = 0;
    ELSE
        SET v_productHasRecipe = 1;
    END IF;

    SELECT p_idProducto AS "Producto", v_productHasRecipe AS "Product recipe";
    
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Put_Costo` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Put_Costo`(IN PIDProducto VARCHAR(45))
BEGIN
	declare Precio decimal(8, 2);
    declare Unitario decimal(8, 2);
    declare Margen decimal(8, 2);
    
    select sum(rm.Cantidad * a.Precio) into Precio 
    from recetademateriales rm
	JOIN articulo a
    ON rm.idArticulo = a.idArticulo
    WHERE rm.idProducto = PIDProducto;
    
    select p.Margen into Margen from productos p where idProducto = PIDProducto;
    
    set Unitario = Precio + (Margen/100) * Precio;
    
    update productos
    set Costo = Precio, PrecioUnitario = Unitario
    where idProducto = PIDProducto;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Receta_Mat_Producto` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Receta_Mat_Producto`(IN idProd VARCHAR(45))
BEGIN
SELECT rm.idmaterial, 
		rm.idArticulo AS "Artículo",
        rm.idProducto,

    rm.Cantidad AS "Cantidad",
    a.Precio AS "Valor",
    a.stock AS "Stock"
    FROM recetademateriales rm
    JOIN articulo a
    ON rm.idArticulo = a.idArticulo
    WHERE rm.idProducto = idProd;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `REMITO_OF` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `REMITO_OF`(IN PidOF INT, IN PidUsr INT)
BEGIN
    DECLARE VEstadoDeOrden VARCHAR(1);
    DECLARE VFechaEntrega DATE;
    DECLARE VIdCliente INT;
    DECLARE VtipoEntrega INT;
    DECLARE VidRemitoCab INT;

    -- Get necessary values from ordenfabricacioncab
    SELECT FechaEntrega, idCliente, idTipoEntrega INTO VFechaEntrega, VIdCliente, VtipoEntrega 
    FROM ordenfabricacioncab 
    WHERE idOFCab = PidOF;

    -- Check if the order is finalized
    SELECT box.OF_FINALIZADA(PidOF) INTO VEstadoDeOrden;

    -- If the order is finalized and does not already exist in remitoscab, proceed
    IF VEstadoDeOrden = "F" 
        AND NOT EXISTS (SELECT idOrdenFabricacionCab FROM remitoscab WHERE idOrdenFabricacionCab = PidOF) 
    THEN
        -- Insert into remitoscab
        INSERT INTO `box`.`remitoscab` 
        (`idOrdenFabricacionCab`, `idCliente`, `FechaEntrega`, `idVendedor`, `idTipoEntrega`) 
        VALUES (PidOF, VIdCliente, VFechaEntrega, PidUsr, VtipoEntrega);
        
        -- Retrieve the newly inserted idRemitoCab from remitoscab
        SELECT LAST_INSERT_ID() INTO VidRemitoCab;

        -- Insert into remitosdet using the retrieved idRemitoCab
        INSERT INTO `box`.`remitosdet` (`Codigo`, `Cant`, `OrdenNRO`, `idRemitoCab`)
        SELECT idProducto, Cant, 1, VidRemitoCab 
        FROM ordenfabricaciondet 
        WHERE idOrdenFabricacionCab = PidOF;
    ELSE
        -- If not finalized or already exists
        SELECT "MI ESTILO ES RIDICULO" AS "brr skibiid dpo dop dopy se yes";
    END IF;

END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `Saldos_Facturas` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8mb4 */ ;
/*!50003 SET character_set_results = utf8mb4 */ ;
/*!50003 SET collation_connection  = utf8mb4_0900_ai_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `Saldos_Facturas`(IN pIDCliente INT)
BEGIN
	SELECT rc.idCliente,
   	f.idFacturaCab AS "Comprobante",
   	f.Total AS "Importe",
   	IFNULL(SUM(rpd.total), 0) AS "Pagos",
   	f.Total - IFNULL(SUM(rpd.total), 0) AS "Saldo"
	FROM factura f
	JOIN remitoscab rc ON rc.idRemitoCab = f.idRemito
	LEFT JOIN recibopago rp ON f.idFacturaCab = rp.idFacturaCab
	LEFT JOIN recibopagodet rpd ON rp.idReciboPago = rpd.idReciboPagoCab
	WHERE rc.idCliente = pIDCliente
	GROUP BY rc.idCliente, f.idFacturaCab, f.Total
	ORDER BY f.idFacturaCab;
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

-- Dump completed on 2024-11-01 14:55:47
