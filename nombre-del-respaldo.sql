-- MySQL dump 10.13  Distrib 5.7.32, for Linux (x86_64)
--
-- Host: localhost    Database: comitasport
-- ------------------------------------------------------
-- Server version	5.7.32-0ubuntu0.18.04.1

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
-- Table structure for table `carrito_detalle_talla`
--

DROP TABLE IF EXISTS `carrito_detalle_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito_detalle_talla` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `carrito_detalle_id` int(10) unsigned NOT NULL,
  `talla_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=32 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_detalle_talla`
--

LOCK TABLES `carrito_detalle_talla` WRITE;
/*!40000 ALTER TABLE `carrito_detalle_talla` DISABLE KEYS */;
INSERT INTO `carrito_detalle_talla` VALUES (1,1,149),(2,2,146),(3,3,141),(4,4,141),(5,5,146),(6,6,148),(7,7,113),(8,8,140),(9,9,126),(10,10,93),(11,11,148),(12,12,145),(13,13,140),(14,14,148),(15,15,148),(16,16,145),(17,17,140),(18,18,148),(19,19,115),(20,20,140),(21,20,141),(22,21,6),(23,22,146),(24,23,149),(25,24,146),(26,25,116),(27,26,149),(28,27,25),(29,28,22),(30,29,140),(31,30,112);
/*!40000 ALTER TABLE `carrito_detalle_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_detalles`
--

DROP TABLE IF EXISTS `carrito_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito_detalles` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `carrito_id` bigint(20) unsigned NOT NULL,
  `producto_id` bigint(20) unsigned NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  `especificacion` text COLLATE utf8mb4_unicode_ci,
  `producto_precio` decimal(8,2) unsigned NOT NULL,
  `descuento_pro` decimal(8,2) unsigned DEFAULT NULL,
  `subtotal_bs` decimal(8,2) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carrito_detalles_producto_id_foreign` (`producto_id`),
  KEY `carrito_detalles_carrito_id_foreign` (`carrito_id`),
  CONSTRAINT `carrito_detalles_carrito_id_foreign` FOREIGN KEY (`carrito_id`) REFERENCES `carritos` (`id`),
  CONSTRAINT `carrito_detalles_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_detalles`
--

LOCK TABLES `carrito_detalles` WRITE;
/*!40000 ALTER TABLE `carrito_detalles` DISABLE KEYS */;
INSERT INTO `carrito_detalles` VALUES (1,1,50,1,NULL,37.00,0.00,37.00,'2020-07-05 08:23:40','2020-07-05 08:23:40'),(2,2,49,2,NULL,176.00,0.00,176.00,'2020-07-07 03:57:41','2020-07-07 03:57:41'),(3,2,47,3,NULL,300.00,0.00,300.00,'2020-07-07 03:57:46','2020-07-07 03:57:46'),(4,4,47,1,NULL,100.00,0.00,100.00,'2020-07-07 05:15:43','2020-07-07 05:15:43'),(5,5,49,1,NULL,88.00,0.00,88.00,'2020-07-07 07:26:24','2020-07-07 07:26:24'),(6,3,50,1,NULL,37.00,0.00,37.00,'2020-07-08 05:47:00','2020-07-08 05:47:00'),(7,7,38,2,NULL,52.00,0.00,52.00,'2020-07-08 05:48:05','2020-07-08 05:48:05'),(8,7,47,1,NULL,100.00,0.00,100.00,'2020-07-08 05:48:18','2020-07-08 05:48:18'),(9,7,42,1,NULL,33.00,0.00,33.00,'2020-07-08 05:48:31','2020-07-08 05:48:31'),(10,6,31,1,NULL,100.00,0.00,100.00,'2020-07-21 04:09:29','2020-07-21 04:09:29'),(11,8,50,3,NULL,111.00,0.00,111.00,'2020-08-19 00:05:38','2020-08-19 00:05:38'),(12,8,49,3,NULL,264.00,0.00,264.00,'2020-08-19 00:05:42','2020-08-19 00:05:42'),(13,8,47,1,NULL,100.00,0.00,100.00,'2020-08-19 00:05:50','2020-08-19 00:05:50'),(14,8,50,1,NULL,37.00,0.00,37.00,'2020-08-19 00:06:23','2020-08-19 00:06:23'),(15,8,50,13,NULL,481.00,0.00,481.00,'2020-08-19 00:07:27','2020-08-19 00:07:27'),(16,10,49,1,NULL,88.00,0.00,88.00,'2020-09-08 07:13:37','2020-09-08 07:13:37'),(17,8,47,1,NULL,100.00,0.00,100.00,'2020-09-29 01:23:06','2020-09-29 01:23:06'),(18,11,50,2,NULL,74.00,0.00,74.00,'2020-09-29 02:09:05','2020-09-29 02:09:05'),(19,6,39,1,NULL,98.00,0.00,98.00,'2020-10-12 04:37:58','2020-10-12 04:37:58'),(20,13,47,1,NULL,100.00,0.00,100.00,'2020-10-12 04:54:45','2020-10-12 04:54:45'),(21,12,51,1,NULL,50.00,0.00,50.00,'2020-10-14 07:02:39','2020-10-14 07:02:39'),(22,15,49,1,NULL,88.00,0.00,88.00,'2020-10-14 07:02:50','2020-10-14 07:02:50'),(23,15,50,1,NULL,37.00,0.00,37.00,'2020-10-14 07:02:54','2020-10-14 07:02:54'),(24,16,49,3,NULL,264.00,0.00,264.00,'2020-10-14 07:03:17','2020-10-14 07:03:17'),(25,17,39,1,NULL,98.00,0.00,98.00,'2020-10-14 07:22:11','2020-10-14 07:22:11'),(26,18,50,1,NULL,37.00,0.00,37.00,'2020-10-14 07:46:08','2020-10-14 07:46:08'),(27,12,9,1,NULL,131.00,0.00,131.00,'2020-10-21 02:57:24','2020-10-21 02:57:24'),(28,12,8,2,NULL,176.00,0.00,176.00,'2020-10-21 03:21:54','2020-10-21 03:21:54'),(29,21,47,3,NULL,300.00,0.00,300.00,'2020-10-21 07:47:31','2020-10-21 07:47:31'),(30,22,38,4,NULL,104.00,0.00,104.00,'2020-10-21 07:48:57','2020-10-21 07:48:57');
/*!40000 ALTER TABLE `carrito_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_pagos`
--

DROP TABLE IF EXISTS `carrito_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carrito_pagos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` int(10) unsigned NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` int(10) unsigned DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respuesta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `carrito_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carrito_pagos_carrito_id_foreign` (`carrito_id`),
  CONSTRAINT `carrito_pagos_carrito_id_foreign` FOREIGN KEY (`carrito_id`) REFERENCES `carritos` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_pagos`
--

LOCK TABLES `carrito_pagos` WRITE;
/*!40000 ALTER TABLE `carrito_pagos` DISABLE KEYS */;
INSERT INTO `carrito_pagos` VALUES (1,1,'/storage/pagos/BDC0cJ811OW6MX0igMD8ez8VjhhEAaUbZx1V3KKc.jpeg',25,'2020-07-05 08:24:05','sds dsd sdsdfsdfgsd','Pendiente',NULL,1,'2020-07-05 08:24:05','2020-07-05 08:24:05');
/*!40000 ALTER TABLE `carrito_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carritos`
--

DROP TABLE IF EXISTS `carritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `carritos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_orden` timestamp NULL DEFAULT NULL,
  `fecha_entrega` timestamp NULL DEFAULT NULL,
  `anticipo` int(10) unsigned DEFAULT NULL,
  `total_bs` decimal(9,2) unsigned DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carritos_codigo_unique` (`codigo`),
  KEY `carritos_user_id_foreign` (`user_id`),
  CONSTRAINT `carritos_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carritos`
--

LOCK TABLES `carritos` WRITE;
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
INSERT INTO `carritos` VALUES (1,'1/2020-Jul-05-Carri','2020-07-05 08:23:44','2020-07-15 04:00:00',37,37.00,'Finalizado',1,'2020-07-05 08:16:33','2020-07-07 03:57:16'),(2,'2/2020-Jul-06-Carri','2020-05-07 03:57:50','2020-05-01 06:15:48',NULL,476.00,'Finalizado',1,'2020-07-05 08:23:44','2020-07-07 03:57:54'),(3,'3/2020-Jul-08-Carri','2020-07-08 05:47:04','2020-10-14 04:00:00',7,37.00,'Procesando',2,'2020-07-05 08:24:10','2020-10-12 04:44:36'),(4,'4/2020-Jul-07-Carri','2020-03-07 05:15:48','2020-03-01 05:15:48',100,100.00,'Finalizado',1,'2020-07-07 03:57:50','2020-07-07 07:49:54'),(5,'5/2020-Jul-07-Carri','2019-07-07 07:26:34','2019-07-14 04:00:00',88,88.00,'Finalizado',1,'2020-07-07 05:15:49','2020-07-08 05:47:25'),(6,'6/2020-Oct-12-Carri','2020-10-12 04:38:13','2020-10-14 04:00:00',198,198.00,'Finalizado',1,'2020-07-07 07:26:34','2020-10-12 04:38:41'),(7,'7/2020-Jul-08-Carri','2019-02-08 05:48:40','2019-02-06 04:00:00',185,185.00,'Finalizado',2,'2020-07-08 05:47:04','2020-07-08 05:48:59'),(8,'8/2020-Sep-28-Carri','2020-09-29 02:07:15','2020-09-29 04:00:00',1093,1093.00,'Finalizado',2,'2020-07-08 05:48:40','2020-09-29 02:07:46'),(9,NULL,NULL,NULL,NULL,NULL,'Activo',6,'2020-08-04 23:09:24','2020-08-04 23:09:24'),(10,NULL,NULL,NULL,NULL,NULL,'Activo',7,'2020-09-08 07:12:52','2020-09-08 07:12:52'),(11,'11/2020-Sep-28-Carri','2020-09-29 02:09:13','2020-09-30 04:00:00',74,74.00,'Finalizado',2,'2020-09-29 02:07:15','2020-09-29 02:09:33'),(12,'12/2020-Oct-20-Carri','2020-10-21 03:22:08','2020-10-14 04:00:00',357,357.00,'Finalizado',2,'2020-09-29 02:09:13','2020-10-21 03:29:50'),(13,'13/2020-Oct-12-Carri','2020-10-12 04:54:49','2020-10-15 04:00:00',100,100.00,'Finalizado',1,'2020-10-12 04:38:13','2020-10-12 04:55:23'),(14,NULL,NULL,NULL,NULL,NULL,'Activo',1,'2020-10-12 04:54:49','2020-10-12 04:54:49'),(15,NULL,NULL,NULL,NULL,NULL,'Activo',3,'2020-10-14 04:03:54','2020-10-14 04:03:54'),(16,'16/2020-Oct-14-Carri','2020-10-14 07:15:14',NULL,NULL,264.00,'Procesando',4,'2020-10-14 04:05:59','2020-10-14 07:21:28'),(17,'17/2020-Oct-14-Carri','2020-10-14 07:22:17',NULL,NULL,98.00,'Procesando',4,'2020-10-14 07:15:14','2020-10-14 07:30:28'),(18,'18/2020-Oct-14-Carri','2020-10-14 07:46:21',NULL,NULL,37.00,'Rechazado',4,'2020-10-14 07:22:17','2020-10-14 07:46:31'),(19,NULL,NULL,NULL,NULL,NULL,'Activo',4,'2020-10-14 07:46:21','2020-10-14 07:46:21'),(20,NULL,NULL,NULL,NULL,NULL,'Activo',5,'2020-10-14 08:37:19','2020-10-14 08:37:19'),(21,'21/2020-Oct-21-Carri','2020-10-21 07:47:40','2020-10-31 04:00:00',300,300.00,'Finalizado',2,'2020-10-21 03:22:08','2020-10-21 07:47:56'),(22,'22/2020-Oct-21-Carri','2020-10-21 07:49:03','2020-10-31 04:00:00',104,104.00,'Finalizado',2,'2020-10-21 07:47:40','2020-10-21 07:49:20'),(23,NULL,NULL,NULL,NULL,NULL,'Activo',2,'2020-10-21 07:49:03','2020-10-21 07:49:03');
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categorias` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'category.svg',
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `categorias_nombre_unique` (`nombre`),
  UNIQUE KEY `categorias_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (1,'Id','id','Ut sapiente rerum sit numquam voluptatibus aut nulla autem.','https://lorempixel.com/250/250/?95093',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(2,'Ex','ex','Velit sed assumenda maxime maxime incidunt inventore inventore.','https://lorempixel.com/250/250/?69840',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(3,'Commodi','commodi','Error laboriosam eos atque dolor est quo voluptates magni fuga molestiae assumenda eveniet.','https://lorempixel.com/250/250/?89461',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(4,'Et','et','Molestiae quod alias accusantium necessitatibus vel quia quia voluptatem est omnis nisi fugiat.','https://lorempixel.com/250/250/?80886',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(5,'Culpa','culpa','A odio nihil voluptatibus asperiores consequuntur sit voluptatibus eaque.','https://lorempixel.com/250/250/?91831',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(6,'NUevo memes','nuevo-memes','aqui nomas memeleando','5f1f7b0cb253bx1212.jpeg',1,'2020-07-28 01:10:36','2020-07-28 01:10:36');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `coti_pagos`
--

DROP TABLE IF EXISTS `coti_pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `coti_pagos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `usuario` int(10) unsigned NOT NULL,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `monto` int(10) unsigned DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `respuesta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cotizacion_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `coti_pagos_cotizacion_id_foreign` (`cotizacion_id`),
  CONSTRAINT `coti_pagos_cotizacion_id_foreign` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `coti_pagos`
--

LOCK TABLES `coti_pagos` WRITE;
/*!40000 ALTER TABLE `coti_pagos` DISABLE KEYS */;
INSERT INTO `coti_pagos` VALUES (1,1,'/storage/pagos/zq9nFYmwZXDM4m6YKYIhinbe1KKk4QxFFdVLjY2X.jpeg',500,'2020-07-28 01:13:14','aqui le poago 500 boliches','Pendiente',NULL,2,'2020-07-28 01:13:14','2020-07-28 01:13:14');
/*!40000 ALTER TABLE `coti_pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_fotos`
--

DROP TABLE IF EXISTS `cotizacion_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion_fotos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cotizacion_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cotizacion_fotos_cotizacion_id_foreign` (`cotizacion_id`),
  CONSTRAINT `cotizacion_fotos_cotizacion_id_foreign` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizaciones` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_fotos`
--

LOCK TABLES `cotizacion_fotos` WRITE;
/*!40000 ALTER TABLE `cotizacion_fotos` DISABLE KEYS */;
INSERT INTO `cotizacion_fotos` VALUES (1,'/storage/fGc8oEwnVJ9yWgiqrU0H7lLjd8Isl2vkIt0Ti3R8.jpeg',1,'2020-07-07 03:58:31','2020-07-07 03:58:31'),(2,'/storage/16pWnlosScpNBaSB0sVrB6cIJXW73mYXv8mIuoLY.jpeg',1,'2020-07-07 03:58:31','2020-07-07 03:58:31'),(3,'/storage/nI5hoGkhtclbmvIQQjaqBFRfad9WTHxRWVhvBFqH.jpeg',1,'2020-07-07 03:58:31','2020-07-07 03:58:31'),(4,'/storage/OTswRGnQOepfNBSZNL7c4koLa1uRaCyqxhfhxavA.jpeg',2,'2020-07-07 07:33:20','2020-07-07 07:33:20'),(5,'/storage/TGZd23tjdxiSd39gVkyC4ja6IOWtOIrKSScBVR9P.jpeg',2,'2020-07-07 07:33:20','2020-07-07 07:33:20'),(6,'/storage/4TH97eeo01VENLJQX8aDFQmih1YPeo8TOww4EOA0.webp',3,'2020-07-08 03:23:20','2020-07-08 03:23:20'),(7,'/storage/f3CP8dtZvb12x09Uf47gG6uaA6GjzTsKokerrEqN.jpeg',3,'2020-07-08 03:23:20','2020-07-08 03:23:20'),(8,'/storage/falEGISNMhQzIkXCymW9QSg8mOiKXsEiXCIZV4sO.jpeg',4,'2020-10-12 05:14:18','2020-10-12 05:14:18'),(9,'/storage/90kfnHJhupICGOAmD2nmnkjjUtvyQN5UFKqFenPW.jpeg',5,'2020-10-14 07:04:05','2020-10-14 07:04:05'),(10,'/storage/cerNE1cYEmzqhLE8qTxycylS88WYF0o6SIgDYaOJ.png',6,'2020-10-14 07:04:36','2020-10-14 07:04:36'),(11,'/storage/Vd9fwPOEIzAGt4dVHxpucJJoWtAMPqJD7gzHDBbL.jpeg',7,'2020-10-14 07:16:08','2020-10-14 07:16:08'),(12,'/storage/61grc8JTVtyMPqGPRfqI5N4TUiFEfrcFHxknBXLh.jpeg',12,'2020-11-02 17:09:08','2020-11-02 17:09:08'),(13,'/storage/F9uplzBnHusjm7IE7O5XZkZrMMnS6MfOpZ6YxxiL.jpeg',13,'2020-11-02 17:48:46','2020-11-02 17:48:46');
/*!40000 ALTER TABLE `cotizacion_fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_material`
--

DROP TABLE IF EXISTS `cotizacion_material`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion_material` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cotizacion_id` int(10) unsigned NOT NULL,
  `material_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_material`
--

LOCK TABLES `cotizacion_material` WRITE;
/*!40000 ALTER TABLE `cotizacion_material` DISABLE KEYS */;
INSERT INTO `cotizacion_material` VALUES (1,1,2),(2,2,3),(3,3,5),(4,4,1),(5,7,3),(6,12,3),(7,13,2);
/*!40000 ALTER TABLE `cotizacion_material` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizacion_talla`
--

DROP TABLE IF EXISTS `cotizacion_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizacion_talla` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `cotizacion_id` int(10) unsigned NOT NULL,
  `talla_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizacion_talla`
--

LOCK TABLES `cotizacion_talla` WRITE;
/*!40000 ALTER TABLE `cotizacion_talla` DISABLE KEYS */;
INSERT INTO `cotizacion_talla` VALUES (1,1,3),(2,2,4),(3,3,3),(4,4,3),(5,5,4),(6,6,5),(7,7,4),(8,12,3),(9,13,3);
/*!40000 ALTER TABLE `cotizacion_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cotizaciones`
--

DROP TABLE IF EXISTS `cotizaciones`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cotizaciones` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `cantidad` int(10) unsigned DEFAULT NULL,
  `fecha` timestamp NULL DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `anticipo` int(10) unsigned DEFAULT NULL,
  `descuento` decimal(9,2) unsigned DEFAULT NULL,
  `precio` decimal(9,2) unsigned DEFAULT NULL,
  `estado` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Activo',
  `user_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `cotizaciones_slug_unique` (`slug`),
  UNIQUE KEY `cotizaciones_codigo_unique` (`codigo`),
  KEY `cotizaciones_user_id_foreign` (`user_id`),
  CONSTRAINT `cotizaciones_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cotizaciones`
--

LOCK TABLES `cotizaciones` WRITE;
/*!40000 ALTER TABLE `cotizaciones` DISABLE KEYS */;
INSERT INTO `cotizaciones` VALUES (1,'cotizacion uno','cotizacion-uno','1/2020-Jul-06/11:07/1',21,'2020-07-22 04:00:00','df ghdfh dfhd fdfgh dfh dfh dfh dfh df',34,NULL,34.00,'Finalizado',1,'2020-07-07 03:58:21','2020-07-07 07:58:30'),(2,'zzxzx z gsdfa','zzxzx-z-gsdfa','2/2020-Jul-07/03:07/1',5,'2020-07-16 04:00:00','dfsdfhsgh dsfgh dfgh dfghdfgh dfh',3545,NULL,3545.00,'Finalizado',1,'2020-07-07 07:33:11','2020-10-12 04:35:51'),(3,'d fgdfh dfg','d-fgdfh-dfg','3/2020-Jul-07/11:07/1',34,'2020-07-19 04:00:00','d fhdf hdf ghd',54,NULL,54.00,'Finalizado',1,'2020-07-08 03:23:08','2020-07-08 03:24:01'),(4,'Chaquetas','chaquetas','4/2020-Oct-12/01:10/1',10,'2020-10-14 04:00:00','sf ghsdfh fhsdfhsdfh',NULL,NULL,520.00,'Procesando',1,'2020-10-12 05:14:05','2020-10-12 05:15:00'),(5,'fsg dfgsfg','fsg-dfgsfg','5/2020-Oct-14/03:10/2',34,NULL,'s dfg sdfg sdfgsd gsdfg sdgs',NULL,NULL,NULL,'Activo',2,'2020-10-14 07:03:55','2020-10-14 07:04:13'),(6,'fgh dfggggggggg','fgh-dfggggggggg','6/2020-Oct-14/03:10/3',34,NULL,'d fhdfgh dfh dfgh dfhd',NULL,NULL,NULL,'Activo',3,'2020-10-14 07:04:27','2020-10-14 07:04:37'),(7,'mi primera cotizacion','mi-primera-cotizacion','7/2020-Oct-14/03:10/4',344,'2020-10-07 04:00:00','sadf asf sadsadfasdfasdfsad',NULL,NULL,1500.00,'Pendiente',4,'2020-10-14 07:15:45','2020-10-14 07:17:06'),(12,'poleras caras','poleras-caras8','12/2020-Nov-02/01:11/1',50,NULL,'NO puedo subir mi imagen',NULL,NULL,NULL,'Activo',1,'2020-11-02 17:08:53','2020-11-02 17:09:18'),(13,'Misegunda cotizacion','misegunda-cotizacion13','13/2020-Nov-02/01:11/5',43,NULL,'sdf gsdfgsd sdfgsdfg',NULL,NULL,NULL,'Activo',5,'2020-11-02 17:48:38','2020-11-02 17:48:49');
/*!40000 ALTER TABLE `cotizaciones` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `failed_jobs` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `failed_jobs`
--

LOCK TABLES `failed_jobs` WRITE;
/*!40000 ALTER TABLE `failed_jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `failed_jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `itemvens`
--

DROP TABLE IF EXISTS `itemvens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `itemvens` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `producto` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3284 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `itemvens`
--

LOCK TABLES `itemvens` WRITE;
/*!40000 ALTER TABLE `itemvens` DISABLE KEYS */;
INSERT INTO `itemvens` VALUES (3261,'Deserunt voluptate commodi',1,'2020-11-02 20:14:07','2020-11-02 20:14:07'),(3262,'In sint maxime',2,'2020-11-02 20:14:07','2020-11-02 20:14:07'),(3263,'Fugit ex omnis',3,'2020-11-02 20:14:07','2020-11-02 20:14:07'),(3264,'Fugit ex omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3265,'In sint maxime',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3266,'Beatae occaecati facere',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3267,'Dolorem in aspernatur reprehenderit',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3268,'Et exercitationem ea nemo',2,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3269,'Fugit ex omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3270,'In eligendi omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3271,'Deserunt voluptate commodi',3,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3272,'In sint maxime',3,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3273,'Fugit ex omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3274,'Deserunt voluptate commodi',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3275,'Deserunt voluptate commodi',13,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3276,'Fugit ex omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3277,'Deserunt voluptate commodi',2,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3278,'Calzonas de silvana',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3279,'Totam repudiandae dolores amet',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3280,'Voluptate voluptas ex incidunt',2,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3281,'Fugit ex omnis',1,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3282,'Fugit ex omnis',3,'2020-11-02 20:14:08','2020-11-02 20:14:08'),(3283,'Et exercitationem ea nemo',4,'2020-11-02 20:14:08','2020-11-02 20:14:08');
/*!40000 ALTER TABLE `itemvens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `materiales`
--

DROP TABLE IF EXISTS `materiales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `materiales` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `materiales_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `materiales`
--

LOCK TABLES `materiales` WRITE;
/*!40000 ALTER TABLE `materiales` DISABLE KEYS */;
INSERT INTO `materiales` VALUES (1,'Voluptates deleniti et praesentium','voluptates-deleniti-et-praesentium','Eum veniam vel impedit rerum delectus sed rerum enim neque nostrum consectetur autem voluptas.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(2,'Molestias alias dolor','molestias-alias-dolor','Quis mollitia cumque repellendus iste repellat minus.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(3,'Incidunt nihil vero','incidunt-nihil-vero','Quo enim quia minima ea autem doloribus.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(4,'Aspernatur hic qui','aspernatur-hic-qui','Dignissimos sunt ut vero dolorem et voluptatum atque.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(5,'Ipsa placeat illum','ipsa-placeat-illum','Ex qui fugiat aspernatur quas nobis omnis voluptatum omnis quia illo beatae sit.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(6,'Hic deserunt qui','hic-deserunt-qui','Minus suscipit provident omnis aliquid molestiae maiores consequatur.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(7,'Officiis veniam autem itaque expedita','officiis-veniam-autem-itaque-expedita','Pariatur harum eum laboriosam blanditiis delectus harum autem quae minima.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(8,'Dolore voluptatibus et','dolore-voluptatibus-et','Suscipit quibusdam natus vitae nemo omnis provident harum consequuntur dolores velit nihil nihil eaque.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(9,'Rerum eum','rerum-eum','Id voluptatum aut optio non aut cumque qui officiis ratione id ea laborum.',1,'2020-07-05 07:34:20','2020-07-05 07:34:20'),(10,'Dolorem unde totam','dolorem-unde-totam','Suscipit praesentium architecto pariatur quia consequatur provident harum et.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(11,'Labore vel labore','labore-vel-labore','Alias dolorem et earum soluta repellat molestiae accusantium.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(12,'Vitae aut libero','vitae-aut-libero','Possimus perspiciatis architecto debitis aut labore aliquam non cumque labore laborum minus.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(13,'Animi numquam quo reiciendis','animi-numquam-quo-reiciendis','Debitis officiis ab vitae temporibus est maxime facere quasi aspernatur.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(14,'Commodi dicta rerum expedita','commodi-dicta-rerum-expedita','Deserunt debitis ipsa quia alias officiis delectus incidunt ducimus.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(15,'Tenetur unde est dolores','tenetur-unde-est-dolores','Aliquid earum vel debitis quis illo debitis autem aliquid modi.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(16,'Explicabo maxime sed','explicabo-maxime-sed','Vel recusandae ratione perferendis reprehenderit alias rerum omnis fuga odio.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(17,'Dolores distinctio id','dolores-distinctio-id','Rerum rerum quibusdam quas ut reiciendis eum libero ut quaerat impedit est magnam deleniti.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(18,'Perferendis ab incidunt quia vel','perferendis-ab-incidunt-quia-vel','Aut rerum ipsum amet sit aliquid iusto culpa magnam maiores et.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(19,'Beatae necessitatibus dignissimos iure laudantium','beatae-necessitatibus-dignissimos-iure-laudantium','Accusamus iure debitis perspiciatis similique natus non eius qui aut alias quam.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(20,'Dolores quisquam ducimus omnis','dolores-quisquam-ducimus-omnis','Voluptate molestiae eos aut pariatur qui veniam commodi odit porro corrupti sed.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(21,'Qui natus cum distinctio','qui-natus-cum-distinctio','Id tempora consequatur eos velit adipisci fugiat quisquam labore et perferendis ut.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(22,'Sunt ad iste','sunt-ad-iste','Eum placeat et aut explicabo optio reiciendis amet numquam vel et iusto sit voluptate.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(23,'Quis ut','quis-ut','Quibusdam ipsam ut at voluptate quaerat rerum reiciendis eveniet provident.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(24,'Dignissimos nihil id','dignissimos-nihil-id','Et nihil quam vero a cum quia amet nihil nesciunt nobis enim.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(25,'Sunt qui','sunt-qui','Iste odit ut quod et voluptate explicabo eum qui unde accusantium et.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(26,'Adipisci atque voluptas','adipisci-atque-voluptas','Voluptatibus voluptatem iste quisquam dolores qui dolorum fugiat dolorem sapiente laborum soluta id.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(27,'Est debitis asperiores hic','est-debitis-asperiores-hic','Et sit doloribus eos et maiores ipsum quasi ut consequatur.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(28,'Consectetur ratione','consectetur-ratione','Incidunt maxime recusandae asperiores quos eaque in sed est eos nobis veniam quia.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(29,'Aut dicta','aut-dicta','Accusamus sint hic quisquam quaerat corporis ad eius ea quis ea aliquam autem et.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(30,'Aut dignissimos qui','aut-dignissimos-qui','Voluptates expedita et laudantium quis id nam.',1,'2020-07-05 07:34:21','2020-07-05 07:34:21');
/*!40000 ALTER TABLE `materiales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mensajes`
--

DROP TABLE IF EXISTS `mensajes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mensajes` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` int(11) DEFAULT NULL,
  `envia` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `recibe` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contenido` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `cotizacion_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `mensajes_cotizacion_id_foreign` (`cotizacion_id`),
  CONSTRAINT `mensajes_cotizacion_id_foreign` FOREIGN KEY (`cotizacion_id`) REFERENCES `cotizaciones` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mensajes`
--

LOCK TABLES `mensajes` WRITE;
/*!40000 ALTER TABLE `mensajes` DISABLE KEYS */;
INSERT INTO `mensajes` VALUES (50,NULL,'Carla Cliente','Emilio Salas','gt dghj',13,'2020-11-10 19:19:34','2020-11-10 19:19:34'),(51,NULL,'Emilio Salas','Carla Cliente','dd dddddd',13,'2020-11-10 19:19:38','2020-11-10 19:19:38'),(52,NULL,'Carla Cliente','Emilio Salas','sssss',13,'2020-11-10 19:19:42','2020-11-10 19:19:42'),(53,NULL,'Emilio Salas','Carla Cliente','ggggsddd',13,'2020-11-10 19:19:46','2020-11-10 19:19:46'),(54,NULL,'Emilio Salas','Carla Cliente','fffff',13,'2020-11-10 21:07:35','2020-11-10 21:07:35');
/*!40000 ALTER TABLE `mensajes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `migrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'2014_10_12_000000_create_users_table',1),(2,'2014_10_12_100000_create_password_resets_table',1),(3,'2019_08_19_000000_create_failed_jobs_table',1),(4,'2020_05_26_032100_create_categorias_table',1),(5,'2020_05_26_033152_create_productos_table',1),(6,'2020_06_03_214918_create_producto_fotos_table',1),(7,'2020_06_03_215132_create_tallas_table',1),(8,'2020_06_03_215213_create_materiales_table',1),(9,'2020_06_03_215428_create_producto_tallas_table',1),(10,'2020_06_16_015220_create_carritos_table',1),(11,'2020_06_16_015746_create_carrito_detalles_table',1),(12,'2020_06_16_022033_create_carrito_detalle_talla_table',1),(13,'2020_06_20_013347_create_cotizaciones_table',1),(14,'2020_06_20_013506_create_cotizacion_fotos_table',1),(15,'2020_06_20_013728_create_cotizacion_talla_table',1),(16,'2020_06_20_013749_create_cotizacion_material_table',1),(17,'2020_06_22_230419_create_mensajes_table',1),(18,'2020_06_28_032434_create_carrito_pagos_table',1),(19,'2020_06_28_032603_create_coti_pagos_table',1),(20,'2020_07_08_020320_create_reportetipos_table',2),(22,'2020_10_21_013501_create_itemvens_table',3),(23,'0000_00_00_000000_create_websockets_statistics_entries_table',4);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_resets`
--

DROP TABLE IF EXISTS `password_resets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  KEY `password_resets_email_index` (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_resets`
--

LOCK TABLES `password_resets` WRITE;
/*!40000 ALTER TABLE `password_resets` DISABLE KEYS */;
INSERT INTO `password_resets` VALUES ('jorge@gmail.com','$2y$10$f9JHZJsxxVZpN7/VoJbt7OC0odzL.3Y4AgkBc5orNtEOr.X7Ggc6C','2020-09-29 01:21:09');
/*!40000 ALTER TABLE `password_resets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_fotos`
--

DROP TABLE IF EXISTS `producto_fotos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_fotos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `favorito` tinyint(1) NOT NULL DEFAULT '0',
  `producto_id` bigint(20) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `producto_fotos_producto_id_foreign` (`producto_id`),
  CONSTRAINT `producto_fotos_producto_id_foreign` FOREIGN KEY (`producto_id`) REFERENCES `productos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=202 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_fotos`
--

LOCK TABLES `producto_fotos` WRITE;
/*!40000 ALTER TABLE `producto_fotos` DISABLE KEYS */;
INSERT INTO `producto_fotos` VALUES (1,'https://lorempixel.com/250/250/?79446',0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(2,'https://lorempixel.com/250/250/?48501',0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(3,'https://lorempixel.com/250/250/?53846',0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(4,'https://lorempixel.com/250/250/?10808',0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(5,'https://lorempixel.com/250/250/?78638',0,2,'2020-07-05 07:34:22','2020-07-05 07:34:23'),(6,'https://lorempixel.com/250/250/?75303',0,2,'2020-07-05 07:34:22','2020-07-05 07:34:23'),(7,'https://lorempixel.com/250/250/?89833',0,2,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(8,'https://lorempixel.com/250/250/?98038',0,2,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(9,'https://lorempixel.com/250/250/?50771',0,3,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(10,'https://lorempixel.com/250/250/?78779',0,3,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(11,'https://lorempixel.com/250/250/?37515',0,3,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(12,'https://lorempixel.com/250/250/?70679',0,3,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(13,'https://lorempixel.com/250/250/?98630',0,4,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(14,'https://lorempixel.com/250/250/?43156',0,4,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(15,'https://lorempixel.com/250/250/?74487',0,4,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(16,'https://lorempixel.com/250/250/?13593',0,4,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(17,'https://lorempixel.com/250/250/?91638',0,5,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(18,'https://lorempixel.com/250/250/?18950',0,5,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(19,'https://lorempixel.com/250/250/?57526',0,5,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(20,'https://lorempixel.com/250/250/?23828',0,5,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(21,'https://lorempixel.com/250/250/?92399',0,6,'2020-07-05 07:34:24','2020-07-05 07:34:25'),(22,'https://lorempixel.com/250/250/?35341',0,6,'2020-07-05 07:34:24','2020-07-05 07:34:25'),(23,'https://lorempixel.com/250/250/?43776',0,6,'2020-07-05 07:34:25','2020-07-05 07:34:25'),(24,'https://lorempixel.com/250/250/?90475',0,6,'2020-07-05 07:34:25','2020-07-05 07:34:25'),(25,'https://lorempixel.com/250/250/?50296',0,7,'2020-07-05 07:34:25','2020-07-05 07:34:26'),(26,'https://lorempixel.com/250/250/?72962',0,7,'2020-07-05 07:34:25','2020-07-05 07:34:26'),(27,'https://lorempixel.com/250/250/?35601',0,7,'2020-07-05 07:34:25','2020-07-05 07:34:26'),(28,'https://lorempixel.com/250/250/?71625',0,7,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(29,'https://lorempixel.com/250/250/?45926',0,8,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(30,'https://lorempixel.com/250/250/?91651',0,8,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(31,'https://lorempixel.com/250/250/?92505',0,8,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(32,'https://lorempixel.com/250/250/?24566',0,8,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(33,'https://lorempixel.com/250/250/?87418',0,9,'2020-07-05 07:34:26','2020-07-05 07:34:27'),(34,'https://lorempixel.com/250/250/?58700',0,9,'2020-07-05 07:34:26','2020-07-05 07:34:27'),(35,'https://lorempixel.com/250/250/?91900',0,9,'2020-07-05 07:34:26','2020-07-05 07:34:27'),(36,'https://lorempixel.com/250/250/?31286',0,9,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(37,'https://lorempixel.com/250/250/?51602',0,10,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(38,'https://lorempixel.com/250/250/?97038',0,10,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(39,'https://lorempixel.com/250/250/?31288',0,10,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(40,'https://lorempixel.com/250/250/?52519',0,10,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(41,'https://lorempixel.com/250/250/?50682',0,11,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(42,'https://lorempixel.com/250/250/?26965',0,11,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(43,'https://lorempixel.com/250/250/?23256',0,11,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(44,'https://lorempixel.com/250/250/?23856',0,11,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(45,'https://lorempixel.com/250/250/?14685',0,12,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(46,'https://lorempixel.com/250/250/?30502',0,12,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(47,'https://lorempixel.com/250/250/?35585',0,12,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(48,'https://lorempixel.com/250/250/?43923',0,12,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(49,'https://lorempixel.com/250/250/?30064',0,13,'2020-07-05 07:34:30','2020-07-05 07:34:31'),(50,'https://lorempixel.com/250/250/?98930',0,13,'2020-07-05 07:34:30','2020-07-05 07:34:31'),(51,'https://lorempixel.com/250/250/?89080',0,13,'2020-07-05 07:34:30','2020-07-05 07:34:31'),(52,'https://lorempixel.com/250/250/?37693',0,13,'2020-07-05 07:34:30','2020-07-05 07:34:31'),(53,'https://lorempixel.com/250/250/?59573',0,14,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(54,'https://lorempixel.com/250/250/?29851',0,14,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(55,'https://lorempixel.com/250/250/?72351',0,14,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(56,'https://lorempixel.com/250/250/?97173',0,14,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(57,'https://lorempixel.com/250/250/?90440',0,15,'2020-07-05 07:34:31','2020-07-05 07:34:32'),(58,'https://lorempixel.com/250/250/?36915',0,15,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(59,'https://lorempixel.com/250/250/?55961',0,15,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(60,'https://lorempixel.com/250/250/?26327',0,15,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(61,'https://lorempixel.com/250/250/?59357',0,16,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(62,'https://lorempixel.com/250/250/?19802',0,16,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(63,'https://lorempixel.com/250/250/?14182',0,16,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(64,'https://lorempixel.com/250/250/?58448',0,16,'2020-07-05 07:34:32','2020-07-05 07:34:33'),(65,'https://lorempixel.com/250/250/?92190',0,17,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(66,'https://lorempixel.com/250/250/?50784',0,17,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(67,'https://lorempixel.com/250/250/?71818',0,17,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(68,'https://lorempixel.com/250/250/?35329',0,17,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(69,'https://lorempixel.com/250/250/?17692',0,18,'2020-07-05 07:34:33','2020-07-05 07:34:34'),(70,'https://lorempixel.com/250/250/?74281',0,18,'2020-07-05 07:34:33','2020-07-05 07:34:34'),(71,'https://lorempixel.com/250/250/?31699',0,18,'2020-07-05 07:34:33','2020-07-05 07:34:34'),(72,'https://lorempixel.com/250/250/?19071',0,18,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(73,'https://lorempixel.com/250/250/?65899',0,19,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(74,'https://lorempixel.com/250/250/?49825',0,19,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(75,'https://lorempixel.com/250/250/?49590',0,19,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(76,'https://lorempixel.com/250/250/?60067',0,19,'2020-07-05 07:34:34','2020-07-05 07:34:35'),(77,'https://lorempixel.com/250/250/?74411',0,20,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(78,'https://lorempixel.com/250/250/?45074',0,20,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(79,'https://lorempixel.com/250/250/?15881',0,20,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(80,'https://lorempixel.com/250/250/?90892',0,20,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(81,'https://lorempixel.com/250/250/?77424',0,21,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(82,'https://lorempixel.com/250/250/?38304',0,21,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(83,'https://lorempixel.com/250/250/?97871',0,21,'2020-07-05 07:34:36','2020-07-05 07:34:37'),(84,'https://lorempixel.com/250/250/?82049',0,21,'2020-07-05 07:34:36','2020-07-05 07:34:37'),(85,'https://lorempixel.com/250/250/?37483',0,22,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(86,'https://lorempixel.com/250/250/?22479',0,22,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(87,'https://lorempixel.com/250/250/?33825',0,22,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(88,'https://lorempixel.com/250/250/?47372',0,22,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(89,'https://lorempixel.com/250/250/?89328',0,23,'2020-07-05 07:34:38','2020-07-05 07:34:38'),(90,'https://lorempixel.com/250/250/?44909',0,23,'2020-07-05 07:34:38','2020-07-05 07:34:39'),(91,'https://lorempixel.com/250/250/?14770',0,23,'2020-07-05 07:34:38','2020-07-05 07:34:39'),(92,'https://lorempixel.com/250/250/?55645',0,23,'2020-07-05 07:34:38','2020-07-05 07:34:39'),(93,'https://lorempixel.com/250/250/?38899',0,24,'2020-07-05 07:34:39','2020-07-05 07:34:39'),(94,'https://lorempixel.com/250/250/?12661',0,24,'2020-07-05 07:34:39','2020-07-05 07:34:39'),(95,'https://lorempixel.com/250/250/?35968',0,24,'2020-07-05 07:34:39','2020-07-05 07:34:40'),(96,'https://lorempixel.com/250/250/?72394',0,24,'2020-07-05 07:34:39','2020-07-05 07:34:40'),(97,'https://lorempixel.com/250/250/?96972',0,25,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(98,'https://lorempixel.com/250/250/?20448',0,25,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(99,'https://lorempixel.com/250/250/?28020',0,25,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(100,'https://lorempixel.com/250/250/?69777',0,25,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(101,'https://lorempixel.com/250/250/?18081',0,26,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(102,'https://lorempixel.com/250/250/?13996',0,26,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(103,'https://lorempixel.com/250/250/?91323',0,26,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(104,'https://lorempixel.com/250/250/?39569',0,26,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(105,'https://lorempixel.com/250/250/?46727',0,27,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(106,'https://lorempixel.com/250/250/?97581',0,27,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(107,'https://lorempixel.com/250/250/?49266',0,27,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(108,'https://lorempixel.com/250/250/?98405',0,27,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(109,'https://lorempixel.com/250/250/?33036',0,28,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(110,'https://lorempixel.com/250/250/?34734',0,28,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(111,'https://lorempixel.com/250/250/?12900',0,28,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(112,'https://lorempixel.com/250/250/?41368',0,28,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(113,'https://lorempixel.com/250/250/?62141',0,29,'2020-07-05 07:34:43','2020-07-05 07:34:44'),(114,'https://lorempixel.com/250/250/?13520',0,29,'2020-07-05 07:34:43','2020-07-05 07:34:44'),(115,'https://lorempixel.com/250/250/?72017',0,29,'2020-07-05 07:34:43','2020-07-05 07:34:44'),(116,'https://lorempixel.com/250/250/?33342',0,29,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(117,'https://lorempixel.com/250/250/?72669',0,30,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(118,'https://lorempixel.com/250/250/?91965',0,30,'2020-07-05 07:34:44','2020-07-05 07:34:45'),(119,'https://lorempixel.com/250/250/?39328',0,30,'2020-07-05 07:34:44','2020-07-05 07:34:45'),(120,'https://lorempixel.com/250/250/?47958',0,30,'2020-07-05 07:34:44','2020-07-05 07:34:45'),(121,'https://lorempixel.com/250/250/?94058',0,31,'2020-07-05 07:34:46','2020-07-05 07:34:47'),(122,'https://lorempixel.com/250/250/?19580',0,31,'2020-07-05 07:34:46','2020-07-05 07:34:47'),(123,'https://lorempixel.com/250/250/?56935',0,31,'2020-07-05 07:34:46','2020-07-05 07:34:47'),(124,'https://lorempixel.com/250/250/?56229',0,31,'2020-07-05 07:34:47','2020-07-05 07:34:47'),(125,'https://lorempixel.com/250/250/?97079',0,32,'2020-07-05 07:34:48','2020-07-05 07:34:49'),(126,'https://lorempixel.com/250/250/?51867',0,32,'2020-07-05 07:34:48','2020-07-05 07:34:49'),(127,'https://lorempixel.com/250/250/?63814',0,32,'2020-07-05 07:34:49','2020-07-05 07:34:49'),(128,'https://lorempixel.com/250/250/?52318',0,32,'2020-07-05 07:34:49','2020-07-05 07:34:50'),(129,'https://lorempixel.com/250/250/?41958',0,33,'2020-07-05 07:34:50','2020-07-05 07:34:50'),(130,'https://lorempixel.com/250/250/?67568',0,33,'2020-07-05 07:34:50','2020-07-05 07:34:50'),(131,'https://lorempixel.com/250/250/?12708',0,33,'2020-07-05 07:34:50','2020-07-05 07:34:51'),(132,'https://lorempixel.com/250/250/?67355',0,33,'2020-07-05 07:34:50','2020-07-05 07:34:51'),(133,'https://lorempixel.com/250/250/?29343',0,34,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(134,'https://lorempixel.com/250/250/?38798',0,34,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(135,'https://lorempixel.com/250/250/?46577',0,34,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(136,'https://lorempixel.com/250/250/?55358',0,34,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(137,'https://lorempixel.com/250/250/?76067',0,35,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(138,'https://lorempixel.com/250/250/?40566',0,35,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(139,'https://lorempixel.com/250/250/?89353',0,35,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(140,'https://lorempixel.com/250/250/?18274',0,35,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(141,'https://lorempixel.com/250/250/?32580',0,36,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(142,'https://lorempixel.com/250/250/?67465',0,36,'2020-07-05 07:34:52','2020-07-05 07:34:53'),(143,'https://lorempixel.com/250/250/?99356',0,36,'2020-07-05 07:34:52','2020-07-05 07:34:53'),(144,'https://lorempixel.com/250/250/?96826',0,36,'2020-07-05 07:34:52','2020-07-05 07:34:53'),(145,'https://lorempixel.com/250/250/?45786',0,37,'2020-07-05 07:34:53','2020-07-05 07:34:54'),(146,'https://lorempixel.com/250/250/?69628',0,37,'2020-07-05 07:34:53','2020-07-05 07:34:54'),(147,'https://lorempixel.com/250/250/?41907',0,37,'2020-07-05 07:34:53','2020-07-05 07:34:54'),(148,'https://lorempixel.com/250/250/?48079',0,37,'2020-07-05 07:34:53','2020-07-05 07:34:54'),(149,'https://lorempixel.com/250/250/?93358',0,38,'2020-07-05 07:34:54','2020-07-05 07:34:55'),(150,'https://lorempixel.com/250/250/?72990',0,38,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(151,'https://lorempixel.com/250/250/?90099',0,38,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(152,'https://lorempixel.com/250/250/?54075',0,38,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(153,'https://lorempixel.com/250/250/?71064',0,39,'2020-07-05 07:34:55','2020-07-05 07:34:56'),(154,'https://lorempixel.com/250/250/?27092',0,39,'2020-07-05 07:34:55','2020-07-05 07:34:56'),(155,'https://lorempixel.com/250/250/?26639',0,39,'2020-07-05 07:34:56','2020-07-05 07:34:56'),(156,'https://lorempixel.com/250/250/?16378',0,39,'2020-07-05 07:34:56','2020-07-05 07:34:56'),(157,'https://lorempixel.com/250/250/?98047',0,40,'2020-07-05 07:34:56','2020-07-05 07:34:57'),(158,'https://lorempixel.com/250/250/?87388',0,40,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(159,'https://lorempixel.com/250/250/?81767',0,40,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(160,'https://lorempixel.com/250/250/?35285',0,40,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(161,'https://lorempixel.com/250/250/?65358',0,41,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(162,'https://lorempixel.com/250/250/?78989',0,41,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(163,'https://lorempixel.com/250/250/?51265',0,41,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(164,'https://lorempixel.com/250/250/?15828',0,41,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(165,'https://lorempixel.com/250/250/?95289',0,42,'2020-07-05 07:34:58','2020-07-05 07:34:59'),(166,'https://lorempixel.com/250/250/?77046',0,42,'2020-07-05 07:34:58','2020-07-05 07:34:59'),(167,'https://lorempixel.com/250/250/?48308',0,42,'2020-07-05 07:34:58','2020-07-05 07:34:59'),(168,'https://lorempixel.com/250/250/?99991',0,42,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(169,'https://lorempixel.com/250/250/?95065',0,43,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(170,'https://lorempixel.com/250/250/?66468',0,43,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(171,'https://lorempixel.com/250/250/?34083',0,43,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(172,'https://lorempixel.com/250/250/?83496',0,43,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(173,'https://lorempixel.com/250/250/?26894',0,44,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(174,'https://lorempixel.com/250/250/?60930',0,44,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(175,'https://lorempixel.com/250/250/?30546',0,44,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(176,'https://lorempixel.com/250/250/?22346',0,44,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(177,'https://lorempixel.com/250/250/?39537',0,45,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(178,'https://lorempixel.com/250/250/?27894',0,45,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(179,'https://lorempixel.com/250/250/?39480',0,45,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(180,'https://lorempixel.com/250/250/?46058',0,45,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(181,'https://lorempixel.com/250/250/?47788',0,46,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(182,'https://lorempixel.com/250/250/?57441',0,46,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(183,'https://lorempixel.com/250/250/?88166',0,46,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(184,'https://lorempixel.com/250/250/?40262',0,46,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(185,'https://lorempixel.com/250/250/?60263',0,47,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(186,'https://lorempixel.com/250/250/?42199',0,47,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(187,'https://lorempixel.com/250/250/?15423',0,47,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(188,'https://lorempixel.com/250/250/?47875',0,47,'2020-07-05 07:35:01','2020-07-05 07:35:02'),(189,'https://lorempixel.com/250/250/?54854',0,48,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(190,'https://lorempixel.com/250/250/?45617',0,48,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(191,'https://lorempixel.com/250/250/?48599',0,48,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(192,'https://lorempixel.com/250/250/?78191',0,48,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(193,'https://lorempixel.com/250/250/?10403',0,49,'2020-07-05 07:35:02','2020-07-05 07:35:03'),(194,'https://lorempixel.com/250/250/?54676',0,49,'2020-07-05 07:35:02','2020-07-05 07:35:03'),(195,'https://lorempixel.com/250/250/?39768',0,49,'2020-07-05 07:35:02','2020-07-05 07:35:03'),(196,'https://lorempixel.com/250/250/?57146',0,49,'2020-07-05 07:35:02','2020-07-05 07:35:03'),(197,'https://lorempixel.com/250/250/?75338',0,50,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(198,'https://lorempixel.com/250/250/?40591',0,50,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(199,'https://lorempixel.com/250/250/?29879',0,50,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(200,'https://lorempixel.com/250/250/?82089',0,50,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(201,'/storage/V6THiFotbwC1XlX47IEfNobe3XBOSc3yp7DTBREe.png',0,51,'2020-10-14 06:42:35','2020-10-14 06:42:35');
/*!40000 ALTER TABLE `producto_fotos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `producto_talla`
--

DROP TABLE IF EXISTS `producto_talla`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `producto_talla` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `producto_id` int(10) unsigned NOT NULL,
  `talla_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=153 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `producto_talla`
--

LOCK TABLES `producto_talla` WRITE;
/*!40000 ALTER TABLE `producto_talla` DISABLE KEYS */;
INSERT INTO `producto_talla` VALUES (1,1,1),(2,1,2),(3,1,3),(4,2,4),(5,2,5),(6,2,6),(7,3,7),(8,3,8),(9,3,9),(10,4,10),(11,4,11),(12,4,12),(13,5,13),(14,5,14),(15,5,15),(16,6,16),(17,6,17),(18,6,18),(19,7,19),(20,7,20),(21,7,21),(22,8,22),(23,8,23),(24,8,24),(25,9,25),(26,9,26),(27,9,27),(28,10,28),(29,10,29),(30,10,30),(31,11,31),(32,11,32),(33,11,33),(34,12,34),(35,12,35),(36,12,36),(37,13,37),(38,13,38),(39,13,39),(40,14,40),(41,14,41),(42,14,42),(43,15,43),(44,15,44),(45,15,45),(46,16,46),(47,16,47),(48,16,48),(49,17,49),(50,17,50),(51,17,51),(52,18,52),(53,18,53),(54,18,54),(55,19,55),(56,19,56),(57,19,57),(58,20,58),(59,20,59),(60,20,60),(61,21,61),(62,21,62),(63,21,63),(64,22,64),(65,22,65),(66,22,66),(67,23,67),(68,23,68),(69,23,69),(70,24,70),(71,24,71),(72,24,72),(73,25,73),(74,25,74),(75,25,75),(76,26,76),(77,26,77),(78,26,78),(79,27,79),(80,27,80),(81,27,81),(82,28,82),(83,28,83),(84,28,84),(85,29,85),(86,29,86),(87,29,87),(88,30,88),(89,30,89),(90,30,90),(91,31,91),(92,31,92),(93,31,93),(94,32,94),(95,32,95),(96,32,96),(97,33,97),(98,33,98),(99,33,99),(100,34,100),(101,34,101),(102,34,102),(103,35,103),(104,35,104),(105,35,105),(106,36,106),(107,36,107),(108,36,108),(109,37,109),(110,37,110),(111,37,111),(112,38,112),(113,38,113),(114,38,114),(115,39,115),(116,39,116),(117,39,117),(118,40,118),(119,40,119),(120,40,120),(121,41,121),(122,41,122),(123,41,123),(124,42,124),(125,42,125),(126,42,126),(127,43,127),(128,43,128),(129,43,129),(130,44,130),(131,44,131),(132,44,132),(133,45,133),(134,45,134),(135,45,135),(136,46,136),(137,46,137),(138,46,138),(139,47,139),(140,47,140),(141,47,141),(142,48,142),(143,48,143),(144,48,144),(145,49,145),(146,49,146),(147,49,147),(148,50,148),(149,50,149),(150,50,150),(151,51,4),(152,51,6);
/*!40000 ALTER TABLE `producto_talla` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `productos`
--

DROP TABLE IF EXISTS `productos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `productos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `precio` decimal(9,2) unsigned DEFAULT NULL,
  `descuento` decimal(9,2) unsigned DEFAULT NULL,
  `cant_descuento` int(10) unsigned DEFAULT NULL,
  `oferta` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `stock` int(10) unsigned DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '0',
  `categoria_id` bigint(20) unsigned DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `productos_slug_unique` (`slug`),
  UNIQUE KEY `productos_codigo_unique` (`codigo`),
  KEY `productos_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `productos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `productos`
--

LOCK TABLES `productos` WRITE;
/*!40000 ALTER TABLE `productos` DISABLE KEYS */;
INSERT INTO `productos` VALUES (1,'Voluptatem expedita tenetur incidunt','voluptatem-expedita-tenetur-incidunt','Quae id sunt nam quasi quia. Unde repellat consequatur optio maxime. Cumque ratione non recusandae iure quae.','Omnis sit accusantium labore voluptatibus. Sed aut vero autem fuga nam suscipit sed. Nulla ducimus qui nulla et.',93.00,146.00,NULL,NULL,420,1,1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(2,'Quo voluptatem aspernatur','quo-voluptatem-aspernatur','Amet et facere libero similique. Iure temporibus saepe odio.','Cum sit eveniet voluptatibus dolor. At pariatur omnis et. Debitis ut nihil qui in saepe velit.',17.00,123.00,NULL,NULL,360,0,1,'2020-07-05 07:34:21','2020-07-05 07:34:22'),(3,'Blanditiis neque quia provident','blanditiis-neque-quia-provident','Quia sed ut iusto ut dolor et ratione facilis. Soluta nesciunt consequatur non. Sed et magnam minus animi blanditiis. Sunt dolorem similique est quia et nulla. Eum culpa non ipsa omnis.','Quia sunt non sapiente ipsum natus molestias. Nostrum libero ab animi doloremque harum ut. Ipsam soluta earum est autem natus quaerat sit. Suscipit ipsum est enim et.',118.00,138.00,NULL,NULL,111,1,1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(4,'Illum sint excepturi perspiciatis','illum-sint-excepturi-perspiciatis','Vel atque est at perferendis quia id. Omnis id facere vitae illum. Sit maxime rem quas itaque quod ex voluptatem aut. Suscipit dolorum velit debitis sequi vel ipsum dolores.','Ut incidunt tempora est consequuntur. Et et eaque est cumque. Rerum qui ab cum odit earum nulla ut soluta.',24.00,45.00,NULL,NULL,458,0,1,'2020-07-05 07:34:21','2020-07-05 07:34:21'),(5,'Veniam omnis et','veniam-omnis-et','Inventore corporis quo atque in facilis ea doloribus et. Corporis qui amet cum voluptatem ea. Voluptatem fugiat inventore ut voluptatum animi fuga.','Eum dolor magnam in quia. Delectus omnis ut nulla voluptas et. Et quia quia voluptatem rerum quod. Deleniti libero autem aliquam accusamus.',130.00,61.00,NULL,NULL,408,1,1,'2020-07-05 07:34:21','2020-07-05 07:34:22'),(6,'Voluptatem voluptatibus quia','voluptatem-voluptatibus-quia','Ducimus et est nesciunt est. Omnis dolore quia exercitationem dolore sit ut. Et vero deleniti totam. Dolorem voluptatem esse alias saepe inventore laudantium est.','Aut sed assumenda voluptatem est et ea fugiat. Non voluptatem provident ipsam in occaecati veniam. Suscipit animi rerum possimus est itaque. Sint consequatur dignissimos aut sunt.',50.00,8.00,NULL,NULL,124,0,1,'2020-07-05 07:34:21','2020-07-05 07:34:22'),(7,'Fugiat impedit in voluptatem','fugiat-impedit-in-voluptatem','Maiores vitae eveniet in. Expedita quia occaecati accusamus occaecati eos et nesciunt et. Alias incidunt omnis minima consequatur.','Quam enim qui hic ad doloribus harum eum. Sit pariatur non voluptatem inventore odio corrupti temporibus. Qui atque esse aut unde asperiores qui.',42.00,65.00,NULL,NULL,46,0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(8,'Voluptate voluptas ex incidunt','voluptate-voluptas-ex-incidunt','Culpa libero qui reiciendis voluptatum vero pariatur quas. Sint ut temporibus dolorem reiciendis deserunt molestiae labore qui. In ipsa ipsam animi dignissimos quod modi.','Inventore neque accusamus qui ut voluptas. Distinctio iusto in quod. Architecto inventore autem consequatur ab doloribus et. Nulla mollitia quasi aut suscipit incidunt voluptate.',88.00,47.00,NULL,NULL,163,0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(9,'Totam repudiandae dolores amet','totam-repudiandae-dolores-amet','Aut doloremque eum laboriosam et dolore voluptas vel maxime. Ut nemo dicta eveniet eos. Quam ullam consectetur id animi omnis voluptatem. Eos officia repellendus ut assumenda rerum blanditiis.','Sed quia optio reprehenderit inventore consequatur quas. Odio amet numquam sed. Tempora voluptates ut possimus architecto nihil amet.',131.00,4.00,NULL,NULL,339,1,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(10,'Voluptatem fuga velit','voluptatem-fuga-velit','Voluptatem nisi aut dignissimos excepturi iste. Qui labore voluptatem enim hic. Est tempora voluptate rerum nisi necessitatibus natus. Distinctio occaecati quisquam sint ipsa voluptatem.','Itaque ut sint iste et aut molestias. Voluptas odio eos ut iure inventore voluptates praesentium excepturi. Ipsa aliquam cum totam eveniet consectetur beatae. Enim illum est magnam vitae officiis.',138.00,110.00,NULL,NULL,267,0,1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(11,'Voluptatem ut','voluptatem-ut','Autem ratione atque magni. Aliquam sapiente aut suscipit deleniti quasi sit.','Hic modi sit eius nihil. Dolore aperiam et quisquam delectus unde. Cum officiis minima velit praesentium eos.',36.00,44.00,NULL,NULL,174,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:28'),(12,'Expedita quia eaque magnam aut','expedita-quia-eaque-magnam-aut','Sunt corrupti est impedit cum. At incidunt omnis labore. Sint et veniam voluptatibus sequi repudiandae iure.','Nihil excepturi cumque vel ut unde. Earum natus rerum eius dolor omnis fugit eum.',12.00,70.00,NULL,NULL,401,0,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(13,'Reprehenderit quis aut omnis','reprehenderit-quis-aut-omnis','Non rem illo iure in quidem voluptas tempore. Cupiditate molestiae nihil a error recusandae aliquam laborum.','Sed sint dolor id provident illo illo illum sed. Odio nihil aut quae sit accusantium perferendis harum. Est labore et impedit consequatur facere accusantium.',75.00,80.00,NULL,NULL,46,0,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(14,'Qui deserunt molestiae molestiae','qui-deserunt-molestiae-molestiae','Aut et qui quisquam quos sapiente. Quaerat dignissimos voluptatem voluptatem aliquam sint quia. Earum aut voluptas consectetur.','Facere dolorem illo vel voluptatem. Dolorum sapiente aut reprehenderit vero corporis perspiciatis. Et in nostrum magnam alias. Sit aut qui eligendi commodi.',68.00,48.00,NULL,NULL,257,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(15,'Et laboriosam omnis','et-laboriosam-omnis','Exercitationem ducimus fuga tenetur sit enim rerum aut. Ducimus officia laudantium quidem ipsum. Mollitia qui recusandae soluta.','Voluptas minus maxime ullam. Commodi libero reiciendis officiis deleniti. Qui sunt nihil eaque culpa ut. Totam necessitatibus laboriosam mollitia est soluta.',63.00,60.00,NULL,NULL,182,0,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(16,'Esse quos alias','esse-quos-alias','Quae tempore quia at eaque est est. Aliquam ut laboriosam unde explicabo minima occaecati fugiat. Molestias dolores commodi quis voluptatem voluptatem eius ut.','Suscipit laboriosam praesentium molestiae qui labore. Tempore aut sit ex officiis dolorum nemo harum. Minus dolores consequuntur hic nam.',131.00,59.00,NULL,NULL,435,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:28'),(17,'Accusamus aliquid ea aut','accusamus-aliquid-ea-aut','Nobis quod distinctio et et explicabo. Minus accusamus autem dolores quam voluptates quo. Officia voluptate ut similique deserunt adipisci et. Est voluptatibus recusandae ducimus aspernatur rerum.','Molestiae nemo est nam eaque eum. Blanditiis possimus corrupti non et. Quas iusto ipsam neque ab nostrum rem et.',89.00,75.00,NULL,NULL,240,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(18,'Rerum excepturi omnis','rerum-excepturi-omnis','Consequatur ipsa quo facere est. Dolor reiciendis porro fuga iusto saepe non qui quos. Sed et neque nobis vitae. Ipsam qui qui quaerat sunt dolores minus sunt.','Veritatis quia harum soluta aut iste molestiae reprehenderit. Sed enim voluptas rerum quaerat. Nesciunt est dicta quia voluptatibus quia ut consectetur. Qui aliquam ut incidunt deleniti quidem quo.',30.00,5.00,NULL,NULL,172,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(19,'Aut tempora quis','aut-tempora-quis','Ratione error laboriosam quia quod voluptatem. Et nam ratione et quae sunt. Non occaecati totam est earum vel.','Consequuntur animi necessitatibus eligendi. Consequuntur quo quos rerum esse et tempore ut. In atque quisquam quia.',102.00,63.00,NULL,NULL,461,0,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(20,'Recusandae sint quos rerum','recusandae-sint-quos-rerum','Id velit sunt voluptatem dolorum nobis. A in voluptas autem quia. Et consequatur deserunt asperiores et aspernatur fugit.','Aut sit aliquid est minus asperiores temporibus. Nisi qui sed praesentium quo aliquid magnam.',69.00,123.00,NULL,NULL,474,1,2,'2020-07-05 07:34:28','2020-07-05 07:34:29'),(21,'Consequatur enim placeat magnam','consequatur-enim-placeat-magnam','Aut adipisci quae consequatur itaque. Fugit eligendi suscipit assumenda laboriosam et aut qui. Nemo quos numquam est repellat libero.','Nostrum nihil porro omnis harum doloribus. Maxime voluptatibus quasi inventore culpa voluptates harum. Sapiente omnis mollitia rerum architecto. Qui quas rem a a enim laborum sint.',35.00,68.00,NULL,NULL,446,0,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(22,'Consequatur dolorem asperiores sunt asperiores','consequatur-dolorem-asperiores-sunt-asperiores','Maxime distinctio quaerat nobis nobis. Omnis porro laboriosam maxime qui est at repellat eos. Inventore qui dolores voluptatibus libero quos consequuntur enim. Inventore iure harum animi.','Eveniet et cumque mollitia quo voluptatem doloremque. Tempora numquam corporis eum deleniti aut enim. Totam at magnam ut fugiat.',20.00,96.00,NULL,NULL,219,0,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(23,'Et doloremque incidunt sit','et-doloremque-incidunt-sit','Et rerum sunt cumque magni dolorem sit. Explicabo consequatur consequatur et molestiae quo unde unde. Unde velit accusantium omnis ut ea quaerat.','Rerum modi incidunt nulla. Iste possimus qui labore alias. Est magnam illum excepturi voluptatibus consequatur est voluptatem.',133.00,82.00,NULL,NULL,55,1,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(24,'Porro nobis voluptatum','porro-nobis-voluptatum','Qui repellat cupiditate ut velit doloribus amet. Excepturi est saepe ut. Aut nobis et consequatur dicta eum dolorum accusantium.','Nesciunt rerum similique omnis aliquid eum sed. Perferendis ut vero et veniam molestiae fuga voluptatem. Quibusdam sed exercitationem nisi vel. Omnis voluptatem voluptatem rerum.',11.00,55.00,NULL,NULL,414,0,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(25,'Cum nihil velit','cum-nihil-velit','Officiis dolorum sunt hic vel. Quos unde tempora quod exercitationem et minima corrupti. Molestiae cum culpa rerum aut architecto sed quia.','Provident rem ut labore consequuntur quos et voluptas. Enim possimus vero iure at quas. Illo non ut officiis quidem eligendi in et corporis.',11.00,143.00,NULL,NULL,159,1,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(26,'Accusantium ex quaerat','accusantium-ex-quaerat','Perspiciatis vel temporibus voluptatem aut aut. Voluptatem voluptatem facilis ad delectus voluptatum. Perspiciatis quo corporis delectus recusandae qui. Numquam fugit odit et.','Laudantium inventore minus vel itaque adipisci eos fugit. Voluptatibus earum voluptatem sunt qui provident. Reprehenderit et mollitia enim sit placeat. Dolorem aut aliquid qui nihil non.',82.00,118.00,NULL,NULL,202,0,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(27,'Veniam commodi et et','veniam-commodi-et-et','Aut rerum rem nihil omnis. Unde facere praesentium velit nihil. Distinctio nemo ad quos nemo.','Aperiam amet ratione quam molestias. Consectetur ut aut distinctio esse earum. Soluta voluptas sit assumenda dolores cumque rerum qui. Vitae iure doloremque molestias eum.',76.00,123.00,NULL,NULL,100,0,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(28,'Voluptas labore vel quod','voluptas-labore-vel-quod','Eum et quia natus. Quos repellat rerum quas minima voluptate. Explicabo dolores deserunt voluptas omnis.','Vel et dolores error dolore perspiciatis quibusdam. Non ducimus consequatur sed reprehenderit at vel maxime. Rem et sed vero adipisci.',19.00,57.00,NULL,NULL,121,1,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(29,'Id placeat repellendus aliquam','id-placeat-repellendus-aliquam','Sunt fugiat qui sint quibusdam iste et. Deleniti voluptas deserunt expedita dolorem animi fugit optio. Laborum cum quod repellendus eveniet.','Est magni quod impedit. Et omnis id odio a dicta. Explicabo magnam voluptatibus incidunt eos.',59.00,149.00,NULL,NULL,166,1,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(30,'Occaecati laborum quae et','occaecati-laborum-quae-et','Atque voluptate recusandae tempore tempora. Est occaecati facere cum voluptatem cum nulla. Ut et placeat sed velit similique occaecati. Ut magnam explicabo quia rerum et explicabo.','Qui qui natus repellendus qui. Eos est et eum provident. Quasi porro eligendi sed omnis exercitationem qui nihil. Iusto ad sapiente minima rerum qui culpa deserunt.',15.00,93.00,NULL,NULL,137,1,3,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(31,'Beatae occaecati facere','beatae-occaecati-facere','Quia voluptas facere maiores et eius. Est tenetur ullam sequi exercitationem ab qui. Quidem eveniet qui non harum aut.','Repudiandae blanditiis rerum cumque officiis. Ducimus distinctio alias ad. Temporibus quia accusamus quidem fugiat ad est.',100.00,8.00,NULL,NULL,488,1,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(32,'Suscipit veritatis animi','suscipit-veritatis-animi','Assumenda molestias aut voluptates in. In in commodi vel. Neque et enim in cum sed. Ut nam aut quisquam optio numquam et facilis.','Facere totam voluptas molestias a itaque alias iste autem. Odio fugiat ducimus alias laudantium sunt. Qui dolor dolore maiores distinctio.',108.00,148.00,NULL,NULL,489,0,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(33,'Assumenda perferendis a molestiae sequi','assumenda-perferendis-a-molestiae-sequi','Dolore quia beatae sed animi. Accusantium quibusdam modi explicabo necessitatibus. Dolores et excepturi nam hic recusandae voluptatem.','Ipsum alias sed ut qui omnis dolore. Sunt magni a ut aut est eos.',63.00,71.00,NULL,NULL,143,1,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(34,'Aut inventore omnis','aut-inventore-omnis','Voluptatum omnis doloremque doloremque sed laborum. Quo soluta at quibusdam laudantium at optio ut.','Voluptatum ut et voluptatum odit. Nesciunt qui est incidunt numquam. Occaecati aliquid eos vel deleniti consequatur ut ipsa. Quae est numquam autem quo ex eligendi.',120.00,56.00,NULL,NULL,174,0,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(35,'Quia tempore dolorem repellat','quia-tempore-dolorem-repellat','Et deserunt voluptas eos aperiam aliquid. Earum numquam ipsum magni qui totam optio. Numquam officia culpa et et iste voluptatem.','Fugiat ut qui aut veniam consequatur occaecati. Asperiores qui facere non et quo omnis. Rerum eos repellat laborum dolores sunt ipsum officia.',21.00,22.00,NULL,NULL,208,0,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(36,'Rerum sunt omnis ut','rerum-sunt-omnis-ut','Et ut accusantium aut. Non deleniti maxime voluptas ex distinctio asperiores. Dolor et quas voluptate. Mollitia voluptatem accusamus doloribus doloremque eius ipsa beatae.','Eum architecto sed et in. Reprehenderit dolores aut ut omnis quasi. Doloribus culpa neque nobis nostrum.',81.00,63.00,NULL,NULL,485,0,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(37,'Necessitatibus ea voluptatem','necessitatibus-ea-voluptatem','Expedita eius vel qui perferendis eligendi. Vel officia in nobis velit. Sed labore et expedita soluta voluptas consequatur. Ut quis aut officia omnis.','Fugiat est nisi et aliquid est. Illo consequuntur delectus ut et minus consequuntur non. Voluptatem perspiciatis nihil harum.',18.00,10.00,NULL,NULL,453,1,4,'2020-07-05 07:34:45','2020-07-05 07:34:45'),(38,'Et exercitationem ea nemo','et-exercitationem-ea-nemo','Perspiciatis aut sunt ea accusamus. Rerum culpa quas pariatur consequuntur voluptas.','Qui illum praesentium cum veniam architecto ex est. Et quos numquam est modi ut. Et libero expedita id unde ducimus est cumque. Itaque fugiat et consectetur.',26.00,113.00,NULL,NULL,116,1,4,'2020-07-05 07:34:45','2020-10-21 07:49:20'),(39,'Dolorem in aspernatur reprehenderit','dolorem-in-aspernatur-reprehenderit','Iusto omnis excepturi aut veniam exercitationem iusto. Sint ab possimus ullam est asperiores omnis repellat. Eum blanditiis aut optio ipsa a architecto reiciendis.','Dolorem incidunt cum velit aut. Molestiae eum fugiat quam voluptates sunt consequatur ipsa. Magnam quis soluta atque facere veritatis recusandae nobis.',98.00,54.00,NULL,NULL,182,1,4,'2020-07-05 07:34:45','2020-07-05 07:34:46'),(40,'Harum voluptas eaque doloribus voluptatem','harum-voluptas-eaque-doloribus-voluptatem','Cum consequatur atque ea asperiores veritatis. Voluptas deserunt quo explicabo ducimus repellendus. Temporibus adipisci officia in porro veritatis dolorem. Ipsam consequatur ullam tenetur inventore.','Tenetur autem dolores ullam deserunt quis ut. Vel consequatur eum quibusdam quidem numquam. Nihil maxime modi corporis natus nihil ipsum. At dolorem eveniet et.',105.00,146.00,NULL,NULL,186,0,4,'2020-07-05 07:34:45','2020-07-05 07:34:46'),(41,'Architecto nihil dolores nihil dolores','architecto-nihil-dolores-nihil-dolores','Fugiat et repudiandae qui. Totam fugit est amet rerum vel alias rem itaque. Labore commodi officia similique aperiam dolores. Minima similique et at sequi ex est.','Debitis repellat aut dolorum magni cumque. Repellendus enim qui consectetur deserunt. Non alias optio perspiciatis at tenetur architecto eum.',12.00,45.00,NULL,NULL,250,0,5,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(42,'In eligendi omnis','in-eligendi-omnis','Et pariatur accusamus quod. Vero cum aut atque assumenda ut. Consequatur quas ad velit beatae error error. Voluptas repellendus rerum sit.','Omnis ullam quod deserunt et porro tenetur voluptatem accusantium. Fugiat nesciunt rerum rerum error laborum vitae. Est voluptates incidunt aut officiis numquam.',33.00,52.00,NULL,NULL,194,1,5,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(43,'Vel neque magni','vel-neque-magni','Temporibus et hic quos qui. Eveniet consectetur dolorem et voluptates reprehenderit. Esse est ut omnis quibusdam.','Officiis ipsam alias officia molestiae adipisci. Eveniet molestias omnis dolorum molestiae eos et similique dolorem. Voluptatem praesentium vel et earum.',58.00,34.00,NULL,NULL,229,1,5,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(44,'Iste suscipit commodi consequatur','iste-suscipit-commodi-consequatur','Earum ducimus voluptas laborum. Doloribus atque non fugiat tempora. Occaecati dolorem asperiores aut impedit aut vel hic.','Aut et ut quas sed optio. Aliquam ipsum adipisci nesciunt debitis. Odio et voluptate delectus voluptas. Est quia qui magni omnis. Quidem quaerat magni qui et et illo et. Ipsum error minus culpa ut.',148.00,122.00,NULL,NULL,351,1,5,'2020-07-05 07:34:57','2020-07-05 07:34:58'),(45,'Ullam architecto unde voluptates','ullam-architecto-unde-voluptates','Ut repellat dolorem et enim eos veritatis. Non repellendus velit quaerat quasi repellat mollitia. Voluptate id omnis illum quia similique saepe vel fugit.','Facere ipsam nemo molestiae voluptas aut. Et provident velit eius sit ea. Omnis blanditiis ipsam nemo laudantium ipsum. Dignissimos non aspernatur temporibus blanditiis nihil quidem ipsum ut.',105.00,107.00,NULL,NULL,247,0,5,'2020-07-05 07:34:57','2020-07-05 07:34:58'),(46,'Itaque quis','itaque-quis','Eos cupiditate reiciendis maiores voluptas. Ea aut veritatis excepturi rem. Nisi incidunt in ipsum sequi.','Illum et ut nisi delectus architecto. Enim ut eum ratione qui impedit ipsum excepturi. Quae qui ducimus et voluptates dolores nihil rem aut. Architecto quas corporis in aliquam perferendis nihil.',9.00,114.00,NULL,NULL,112,0,5,'2020-07-05 07:34:57','2020-07-05 07:34:58'),(47,'Fugit ex omnis','fugit-ex-omnis','Aut voluptates vitae deserunt ratione ut ipsum. Aperiam omnis cupiditate blanditiis quod. Totam aut qui voluptatem.','Labore tempora dolorem quia harum qui reprehenderit reiciendis. Qui eius aut ut consequatur enim. Atque eius unde eos aut ullam eius natus. Exercitationem dolorem sequi praesentium quidem est modi.',100.00,107.00,NULL,NULL,262,1,5,'2020-07-05 07:34:57','2020-10-21 07:47:56'),(48,'Sapiente excepturi at eum harum','sapiente-excepturi-at-eum-harum','Repudiandae facere possimus qui magni vel. Iusto a suscipit voluptas saepe et eaque. Qui omnis velit est saepe qui asperiores vitae molestiae. Natus non laborum aliquam vel sed est minima.','Sapiente et similique velit fuga. Consequatur voluptas officiis possimus asperiores quis impedit quod. Magnam recusandae neque odit ullam.',108.00,89.00,NULL,NULL,454,0,5,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(49,'In sint maxime','in-sint-maxime','Quam sit modi corrupti porro quasi. Laudantium fugiat repellendus consequatur et enim excepturi.','Nesciunt hic nemo itaque et quia quasi explicabo. Quod animi in numquam. Dignissimos at omnis tenetur aut voluptatum omnis officiis. Tempore voluptatem aspernatur soluta.',88.00,145.00,NULL,NULL,150,1,5,'2020-07-05 07:34:57','2020-07-05 07:34:58'),(50,'Deserunt voluptate commodi','deserunt-voluptate-commodi','Aliquam vitae fugiat ipsam eos. Qui sed possimus est tempora recusandae.','Ea voluptatem error dolores dolores ex magnam. Placeat rerum voluptatem ut minus iure labore.',37.00,82.00,NULL,NULL,369,1,5,'2020-07-05 07:34:57','2020-07-05 07:34:58'),(51,'Calzonas de silvana','calzonas-de-silvana','51/2020-Oct-14 02:10/2','sdf gsdfgs dg sd',50.00,0.00,NULL,NULL,100,1,5,'2020-10-14 06:42:15','2020-10-14 06:42:40');
/*!40000 ALTER TABLE `productos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reportetipos`
--

DROP TABLE IF EXISTS `reportetipos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `reportetipos` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `precio` decimal(9,2) unsigned DEFAULT NULL,
  `descuento` decimal(9,2) unsigned DEFAULT NULL,
  `cant_descuento` int(10) unsigned DEFAULT NULL,
  `cantidad` int(10) unsigned NOT NULL,
  `producto_precio` decimal(8,2) unsigned NOT NULL,
  `subtotal_bs` decimal(8,2) unsigned NOT NULL,
  `categoria_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reportetipos`
--

LOCK TABLES `reportetipos` WRITE;
/*!40000 ALTER TABLE `reportetipos` DISABLE KEYS */;
/*!40000 ALTER TABLE `reportetipos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallas`
--

DROP TABLE IF EXISTS `tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tallas` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `tallas_slug_unique` (`slug`)
) ENGINE=InnoDB AUTO_INCREMENT=151 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallas`
--

LOCK TABLES `tallas` WRITE;
/*!40000 ALTER TABLE `tallas` DISABLE KEYS */;
INSERT INTO `tallas` VALUES (1,'Eum quia.','eum-quia','Sit et ipsum libero dolore ea soluta omnis suscipit enim et autem.',1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(2,'Molestiae.','molestiae','Quia officiis consequuntur qui voluptates possimus qui est aut sit ducimus.',1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(3,'Voluptates.','voluptates','Laborum nostrum hic ex sit accusamus aliquam dolores eaque nesciunt eveniet eos libero.',1,'2020-07-05 07:34:22','2020-07-05 07:34:22'),(4,'Quasi.','quasi','Nam numquam aut quos aspernatur corrupti sapiente nostrum labore est veniam praesentium itaque temporibus.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(5,'Error possimus.','error-possimus','At eos quasi fuga dolore excepturi nobis ex perspiciatis sed est.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(6,'Debitis.','debitis','Placeat porro et harum enim quia nostrum iste voluptates.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(7,'Veniam eligendi.','veniam-eligendi','Alias vitae animi possimus officia et iure inventore perspiciatis est incidunt vero.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(8,'Aut inventore.','aut-inventore','Repudiandae eveniet magni rem perspiciatis alias qui dolorem aut repellendus accusantium totam est eius.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(9,'Voluptas.','voluptas','Qui beatae ea quis quis vel qui est iure voluptas ratione.',1,'2020-07-05 07:34:23','2020-07-05 07:34:23'),(10,'Et.','et','Architecto et eum ipsam qui voluptatem aut eveniet provident nisi earum doloribus et excepturi.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(11,'Debitis dolor.','debitis-dolor','Architecto nesciunt est odit aut quia quam repellendus voluptas labore dolor sint enim sunt.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(12,'Voluptas illum.','voluptas-illum','Rerum qui occaecati quis non iste autem error quia.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(13,'Corporis.','corporis','Hic quae repellendus accusantium accusamus repellat impedit corporis.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(14,'Atque est.','atque-est','Molestiae qui minus quis dolore natus nobis amet et provident sit.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(15,'Qui.','qui','Fugit qui eveniet quas architecto consectetur voluptates eum voluptas similique.',1,'2020-07-05 07:34:24','2020-07-05 07:34:24'),(16,'Dolor omnis.','dolor-omnis','Qui optio deleniti odit cum ex qui autem perferendis quaerat et ut commodi modi.',1,'2020-07-05 07:34:25','2020-07-05 07:34:25'),(17,'Eum.','eum','Iste maxime sit qui optio labore dolorem iste animi consequatur aut eos.',1,'2020-07-05 07:34:25','2020-07-05 07:34:25'),(18,'Qui commodi.','qui-commodi','Nihil voluptatem ea consequuntur itaque quas doloribus alias reiciendis quis ut placeat placeat.',1,'2020-07-05 07:34:25','2020-07-05 07:34:25'),(19,'Saepe dolores.','saepe-dolores','Omnis repudiandae vel dolor eaque voluptates incidunt ut a facere.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(20,'Est.','est','Architecto deleniti est inventore asperiores cumque fugiat maiores in voluptatem modi consequatur.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(21,'Est eos.','est-eos','Id alias et tenetur perspiciatis recusandae et ipsa repellat quia aut sunt.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(22,'Possimus cumque.','possimus-cumque','Ea natus officiis qui est ratione sit.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(23,'Praesentium.','praesentium','Sequi nobis qui facere ratione voluptatem magnam ut error tempora tempore.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(24,'Officiis saepe.','officiis-saepe','Iusto est quod nemo officiis distinctio est commodi ducimus culpa.',1,'2020-07-05 07:34:26','2020-07-05 07:34:26'),(25,'Voluptatem minus.','voluptatem-minus','Ea quod eos quas provident eos accusantium ipsa quod at voluptatum.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(26,'Debitis voluptates.','debitis-voluptates','Quia voluptatibus qui similique libero pariatur qui ut.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(27,'Aut quia.','aut-quia','Dolores veniam autem optio laudantium id cumque officia modi nihil fugit.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(28,'Omnis provident.','omnis-provident','Expedita nesciunt assumenda voluptate nemo eius sint aut ut ipsum optio consequatur natus temporibus.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(29,'Cumque natus.','cumque-natus','Dolorem odit nostrum totam impedit dolorum est nihil aut fugiat temporibus numquam distinctio.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(30,'Aut.','aut','Rerum id minus dolor veritatis voluptatem quidem ut aut labore harum dolorum sint.',1,'2020-07-05 07:34:27','2020-07-05 07:34:27'),(31,'Facilis.','facilis','Aut qui quaerat omnis rem sunt nobis ea sint officia temporibus.',1,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(32,'Illo.','illo','Dolor voluptatibus iure libero odit totam reprehenderit quia recusandae.',1,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(33,'Exercitationem.','exercitationem','Nam voluptatem explicabo odio a voluptas quas et dolores ex aliquid totam.',1,'2020-07-05 07:34:29','2020-07-05 07:34:29'),(34,'Excepturi aut.','excepturi-aut','Suscipit tempora assumenda repudiandae ad ut explicabo minima sint molestiae sed ut expedita.',1,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(35,'Voluptatum incidunt.','voluptatum-incidunt','Nihil consequuntur qui voluptas error minima eos necessitatibus quia et asperiores rerum.',1,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(36,'Animi.','animi','Impedit deleniti laudantium doloribus provident occaecati laudantium perferendis eius officia.',1,'2020-07-05 07:34:30','2020-07-05 07:34:30'),(37,'Qui et.','qui-et','Necessitatibus dignissimos tempora cumque qui cumque occaecati quae dolorem nisi.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(38,'Molestiae eveniet.','molestiae-eveniet','Ullam quo laborum eius eius omnis assumenda ut nam accusamus aut.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(39,'Quasi tempora.','quasi-tempora','Alias ut nisi accusantium ratione sit nam quaerat.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(40,'Et rem.','et-rem','Omnis assumenda cum magni consequatur et voluptatum nesciunt autem sapiente rerum.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(41,'Adipisci.','adipisci','Ut velit doloribus aut iste et molestias et aspernatur.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(42,'Consequatur.','consequatur','Quibusdam dolores magni culpa placeat culpa sit numquam qui veritatis.',1,'2020-07-05 07:34:31','2020-07-05 07:34:31'),(43,'Accusantium.','accusantium','Tenetur saepe odit aut commodi totam fugit aut enim facilis.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(44,'Numquam labore.','numquam-labore','Quam voluptatibus culpa est perferendis eius voluptas.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(45,'Enim sint.','enim-sint','Labore architecto id at id cumque illum ipsa nobis.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(46,'Quidem sit.','quidem-sit','Ullam harum adipisci quam quibusdam est voluptatem minus.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(47,'Vel itaque.','vel-itaque','Ad et quo est incidunt porro rem eum quo.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(48,'Est fuga.','est-fuga','Hic cum dolorem beatae ex est dolorem.',1,'2020-07-05 07:34:32','2020-07-05 07:34:32'),(49,'Cum.','cum','Quis id similique rerum repudiandae dolorem dolor sunt et iste repudiandae omnis.',1,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(50,'Iste magnam.','iste-magnam','Et veniam velit fugiat error eius at saepe qui labore similique.',1,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(51,'Quis odit.','quis-odit','Illo eligendi consectetur molestias voluptatem consequatur facilis laborum quas rerum quaerat ipsam dolorem.',1,'2020-07-05 07:34:33','2020-07-05 07:34:33'),(52,'Non dolorem.','non-dolorem','Impedit quod aspernatur provident natus voluptate repellat et nobis voluptatem praesentium nisi incidunt libero.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(53,'Autem nobis.','autem-nobis','Aperiam deserunt modi magnam eveniet necessitatibus quasi quia hic voluptates illum.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(54,'Hic et.','hic-et','Et veritatis saepe rerum ut non magnam nulla ea minima magnam temporibus quia.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(55,'Quibusdam.','quibusdam','Recusandae itaque et cupiditate atque ducimus iusto eum quod mollitia non ullam.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(56,'Nihil.','nihil','Voluptas voluptates est suscipit atque fugit in perspiciatis quo earum laudantium et dolorum.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(57,'Amet.','amet','Libero id deleniti autem laborum tenetur veritatis veniam iure qui ea et mollitia recusandae in.',1,'2020-07-05 07:34:34','2020-07-05 07:34:34'),(58,'Non ratione.','non-ratione','Ad illum ipsa provident sint nisi eius tenetur tempore culpa tempore sed.',1,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(59,'Nisi quo.','nisi-quo','Tempora eum corporis molestiae sequi exercitationem eveniet expedita.',1,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(60,'Voluptatum illum.','voluptatum-illum','Corrupti quo unde facilis blanditiis et voluptas et voluptatibus in.',1,'2020-07-05 07:34:35','2020-07-05 07:34:35'),(61,'Quam.','quam','Nam sed sed quia qui placeat reiciendis natus eum doloribus.',1,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(62,'Laboriosam nemo.','laboriosam-nemo','Aut doloribus nesciunt quaerat optio asperiores dolores voluptatibus aut voluptatem at expedita modi et voluptatibus.',1,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(63,'Eos.','eos','Voluptates eum sit id quam perferendis ab iure molestiae quia unde repellat.',1,'2020-07-05 07:34:36','2020-07-05 07:34:36'),(64,'Deserunt.','deserunt','Voluptate doloribus vitae qui molestiae in sed aliquam est sint ipsa iure autem dolor.',1,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(65,'Excepturi in.','excepturi-in','Tempora asperiores eos optio in totam est reprehenderit possimus beatae officia voluptatibus illo quia.',1,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(66,'Nemo.','nemo','Delectus rem est neque non officia eaque minus ut consequuntur error rerum quos.',1,'2020-07-05 07:34:37','2020-07-05 07:34:37'),(67,'Asperiores placeat.','asperiores-placeat','Omnis ea adipisci atque id unde quibusdam id est consequatur ut quam commodi architecto.',1,'2020-07-05 07:34:38','2020-07-05 07:34:38'),(68,'Esse.','esse','Et omnis et modi pariatur delectus repellat quasi nisi consectetur saepe voluptatibus sapiente.',1,'2020-07-05 07:34:38','2020-07-05 07:34:38'),(69,'Similique hic.','similique-hic','Amet libero voluptates odit provident minima omnis praesentium sunt sint.',1,'2020-07-05 07:34:38','2020-07-05 07:34:38'),(70,'Accusamus aut.','accusamus-aut','Qui facilis quis soluta deserunt molestiae ullam.',1,'2020-07-05 07:34:39','2020-07-05 07:34:39'),(71,'Totam est.','totam-est','Perferendis ut facere sint corrupti sunt quos.',1,'2020-07-05 07:34:39','2020-07-05 07:34:39'),(72,'Et laboriosam.','et-laboriosam','Labore sunt officiis fugiat explicabo nulla id doloremque et dolores illum.',1,'2020-07-05 07:34:39','2020-07-05 07:34:39'),(73,'Ut exercitationem.','ut-exercitationem','Quo et sed consequatur inventore eum id et.',1,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(74,'Cum hic.','cum-hic','Eum consequatur est laudantium porro enim eos eum fuga aut ipsum recusandae.',1,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(75,'Labore vitae.','labore-vitae','Omnis repellat voluptatibus unde vel corrupti nesciunt et consequuntur nihil in et natus.',1,'2020-07-05 07:34:40','2020-07-05 07:34:40'),(76,'Accusantium dolores.','accusantium-dolores','Assumenda possimus sit quasi magnam minima quibusdam corporis accusamus officiis atque magnam praesentium.',1,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(77,'Tenetur.','tenetur','Occaecati et sequi illo et voluptates praesentium.',1,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(78,'Error consequatur.','error-consequatur','Rerum aut qui ut corporis autem ducimus.',1,'2020-07-05 07:34:41','2020-07-05 07:34:41'),(79,'Et corrupti.','et-corrupti','Quos sint ut incidunt quod exercitationem amet aliquam quia qui quo quidem provident.',1,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(80,'Reiciendis.','reiciendis','Ducimus ducimus labore quos eligendi saepe beatae libero expedita rem.',1,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(81,'Repellat exercitationem.','repellat-exercitationem','Libero qui consectetur eos non quibusdam accusamus impedit perspiciatis quia libero.',1,'2020-07-05 07:34:42','2020-07-05 07:34:42'),(82,'Praesentium numquam.','praesentium-numquam','Aliquid nulla alias error quibusdam ullam odio accusantium debitis maiores odit qui.',1,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(83,'Ea qui.','ea-qui','Quis nisi vitae ut velit dolor sed quis voluptatum minima nobis aut vitae blanditiis.',1,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(84,'Vitae.','vitae','Sint sed alias iste quo reprehenderit nihil consequatur ratione modi.',1,'2020-07-05 07:34:43','2020-07-05 07:34:43'),(85,'Itaque voluptatem.','itaque-voluptatem','Eligendi rerum vero asperiores minima numquam dolores accusamus et aut reprehenderit sapiente sunt laudantium.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(86,'Autem.','autem','Deserunt laudantium odio voluptas quos quia nemo quo omnis aliquam.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(87,'Commodi quod.','commodi-quod','Nam distinctio numquam tempora reprehenderit iste dolor.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(88,'Minima quidem.','minima-quidem','Eligendi vero quam consectetur iusto cum dolores provident in.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(89,'Id.','id','In autem expedita vel repudiandae molestiae qui.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(90,'Ad voluptatum.','ad-voluptatum','Perspiciatis odit quia dolor eligendi porro necessitatibus molestiae non architecto deserunt nihil.',1,'2020-07-05 07:34:44','2020-07-05 07:34:44'),(91,'Labore.','labore','Quia et perspiciatis non iusto quo numquam fuga tempora aspernatur recusandae quos omnis.',1,'2020-07-05 07:34:47','2020-07-05 07:34:47'),(92,'Qui voluptatem.','qui-voluptatem','Aut temporibus consequatur ab ipsam doloremque distinctio.',1,'2020-07-05 07:34:47','2020-07-05 07:34:47'),(93,'Omnis.','omnis','Cupiditate eum quae numquam voluptas corporis quis eum natus maxime.',1,'2020-07-05 07:34:47','2020-07-05 07:34:47'),(94,'Blanditiis pariatur.','blanditiis-pariatur','Corrupti dolor unde corporis autem a quis voluptate.',1,'2020-07-05 07:34:49','2020-07-05 07:34:49'),(95,'Facere laboriosam.','facere-laboriosam','Dolor repudiandae qui inventore occaecati magni repudiandae sunt.',1,'2020-07-05 07:34:49','2020-07-05 07:34:49'),(96,'Vitae voluptatem.','vitae-voluptatem','Facilis corrupti sed quo voluptates commodi est sit est porro necessitatibus.',1,'2020-07-05 07:34:49','2020-07-05 07:34:49'),(97,'Consectetur voluptatem.','consectetur-voluptatem','Dolore nobis aperiam magni eum consequatur sed rem asperiores dolor reprehenderit dolores enim.',1,'2020-07-05 07:34:50','2020-07-05 07:34:50'),(98,'Sequi.','sequi','Eos porro aliquid rerum molestiae eos et voluptatibus dolor ducimus corrupti repellendus voluptatum.',1,'2020-07-05 07:34:50','2020-07-05 07:34:50'),(99,'Doloribus.','doloribus','Dicta qui possimus tempora quo asperiores cupiditate velit est nulla inventore aut.',1,'2020-07-05 07:34:50','2020-07-05 07:34:50'),(100,'Quia possimus.','quia-possimus','Perspiciatis aspernatur tempore voluptas ea sed aut veniam deserunt et nemo ut aspernatur.',1,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(101,'Eos ex.','eos-ex','Et dolorem consequatur dolore et voluptas alias fugiat.',1,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(102,'Atque.','atque','Magnam excepturi sint nobis omnis cum asperiores aut facere sed aut itaque.',1,'2020-07-05 07:34:51','2020-07-05 07:34:51'),(103,'Corrupti.','corrupti','Delectus voluptas magnam ad quo facilis perferendis non eligendi eum sit et.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(104,'Distinctio aspernatur.','distinctio-aspernatur','Adipisci iusto quibusdam consequuntur facilis qui rem molestias architecto reprehenderit quia molestiae quidem eos.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(105,'Sapiente et.','sapiente-et','Eveniet aperiam vel quas quos dolores enim necessitatibus vel corporis ut eos.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(106,'Doloribus quia.','doloribus-quia','Dolores reprehenderit placeat quam in dolorem sunt quo mollitia id qui asperiores.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(107,'Ea nemo.','ea-nemo','Enim in enim quisquam voluptatem quis voluptas veniam quae in libero ea.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(108,'Libero tenetur.','libero-tenetur','Magnam consequatur dolores iusto voluptas error alias veritatis saepe labore et eaque qui itaque.',1,'2020-07-05 07:34:52','2020-07-05 07:34:52'),(109,'Rerum.','rerum','Consequatur est repudiandae ut maxime ullam qui qui nihil sit.',1,'2020-07-05 07:34:53','2020-07-05 07:34:53'),(110,'Ut illo.','ut-illo','Adipisci impedit adipisci laboriosam modi unde est.',1,'2020-07-05 07:34:53','2020-07-05 07:34:53'),(111,'Ut id.','ut-id','Fugit fuga ex deserunt accusamus pariatur temporibus.',1,'2020-07-05 07:34:53','2020-07-05 07:34:53'),(112,'Tempore.','tempore','Et rerum expedita vero dolores ut possimus aut quibusdam a distinctio.',1,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(113,'Explicabo esse.','explicabo-esse','Animi laboriosam ipsum molestias minus rerum ipsam quidem dolor.',1,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(114,'Occaecati quod.','occaecati-quod','Enim impedit cupiditate modi qui enim et.',1,'2020-07-05 07:34:55','2020-07-05 07:34:55'),(115,'Voluptate quaerat.','voluptate-quaerat','Sed deleniti nam qui nihil unde sed omnis quos assumenda rerum quisquam ullam necessitatibus.',1,'2020-07-05 07:34:56','2020-07-05 07:34:56'),(116,'Non.','non','Unde quos nemo et ut sequi nesciunt.',1,'2020-07-05 07:34:56','2020-07-05 07:34:56'),(117,'Beatae.','beatae','Et soluta aliquid accusantium aliquam cumque sed quae quia repudiandae.',1,'2020-07-05 07:34:56','2020-07-05 07:34:56'),(118,'Recusandae excepturi.','recusandae-excepturi','Magnam temporibus deserunt in amet culpa pariatur omnis mollitia nulla aliquam vel vitae.',1,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(119,'Voluptas mollitia.','voluptas-mollitia','Quaerat consequatur delectus laudantium fugiat mollitia laudantium iusto voluptas.',1,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(120,'Doloremque.','doloremque','Ut maiores eum culpa mollitia magni ratione.',1,'2020-07-05 07:34:57','2020-07-05 07:34:57'),(121,'Veritatis.','veritatis','Et sapiente non facere praesentium sit voluptas.',1,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(122,'Exercitationem deleniti.','exercitationem-deleniti','Quia tempora qui nostrum adipisci veniam non.',1,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(123,'Ut porro.','ut-porro','Ea dolores autem sit harum reprehenderit dolore ut dolore itaque sint dolores.',1,'2020-07-05 07:34:58','2020-07-05 07:34:58'),(124,'Dolorem.','dolorem','Nihil ea voluptates esse modi dolores fuga.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(125,'Dicta dicta.','dicta-dicta','Id suscipit iusto qui voluptatem culpa dolore ea.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(126,'Nobis mollitia.','nobis-mollitia','Molestiae accusantium consequatur et dolorum cum est ad sint ut voluptates velit repellendus aut.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(127,'Nostrum harum.','nostrum-harum','Dolore sed ut necessitatibus fuga rerum saepe voluptatibus eligendi qui assumenda soluta.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(128,'Cumque ab.','cumque-ab','Quis rem vitae ad aperiam fugiat non tenetur in qui accusantium.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(129,'Molestiae repellat.','molestiae-repellat','Illum saepe aut non id ad velit doloremque sunt laudantium assumenda doloribus est.',1,'2020-07-05 07:34:59','2020-07-05 07:34:59'),(130,'Consequatur reprehenderit.','consequatur-reprehenderit','Esse voluptatem ea non voluptas eius tempore provident cumque.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(131,'Pariatur.','pariatur','Necessitatibus fugiat dolorum eveniet sit quia corrupti dolores aut repellat.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(132,'Sed labore.','sed-labore','Deleniti nulla nemo laboriosam occaecati non consequatur dolorem dolorum quia.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(133,'Aperiam est.','aperiam-est','Sapiente quisquam tenetur sapiente laborum et aut consequatur exercitationem est odio est.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(134,'Praesentium eum.','praesentium-eum','Sequi sit non delectus odit est aliquid et facere debitis quia.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(135,'Voluptatem et.','voluptatem-et','Neque veritatis magni omnis consequatur temporibus consequatur ut.',1,'2020-07-05 07:35:00','2020-07-05 07:35:00'),(136,'Placeat.','placeat','A omnis aut error recusandae laboriosam aperiam et iusto impedit omnis expedita animi.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(137,'Ipsam eaque.','ipsam-eaque','Ratione ea sed occaecati natus distinctio qui odit vel voluptates dignissimos aut perferendis asperiores.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(138,'Cumque.','cumque','Dignissimos qui molestiae est rem aliquam culpa necessitatibus ipsam debitis rerum ipsum.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(139,'Ipsa asperiores.','ipsa-asperiores','Praesentium cumque corporis cum quo nisi ut aliquid velit blanditiis.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(140,'Quia.','quia','Minus alias odio sed et animi unde incidunt quis dolorem autem dolore reprehenderit.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(141,'Et et.','et-et','Eligendi et non voluptatem voluptatem eum quis vel eum sed distinctio expedita.',1,'2020-07-05 07:35:01','2020-07-05 07:35:01'),(142,'Autem incidunt.','autem-incidunt','Ducimus eum qui id ut consequatur error soluta totam est blanditiis expedita nulla.',1,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(143,'Officia ipsam.','officia-ipsam','Hic pariatur ut cupiditate sit cumque ullam vel nostrum quos a.',1,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(144,'Iusto qui.','iusto-qui','Et omnis neque voluptas expedita magnam et reiciendis voluptas non.',1,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(145,'Repellat dolores.','repellat-dolores','Fugiat natus at inventore voluptatem maxime tenetur sunt minima voluptas fuga voluptatum.',1,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(146,'Minus.','minus','Sunt quidem voluptas explicabo rerum repudiandae ut accusamus.',1,'2020-07-05 07:35:02','2020-07-05 07:35:02'),(147,'Repellendus beatae.','repellendus-beatae','Delectus qui est occaecati dolorem incidunt aut temporibus deserunt possimus necessitatibus quia.',1,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(148,'Sint aliquam.','sint-aliquam','Est sapiente beatae officiis quos asperiores autem rem placeat harum.',1,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(149,'Sequi temporibus.','sequi-temporibus','Sint tenetur consequatur laboriosam possimus aut dolores minus voluptate molestiae voluptatum quam.',1,'2020-07-05 07:35:03','2020-07-05 07:35:03'),(150,'Cumque neque.','cumque-neque','Praesentium esse cupiditate rerum veritatis nihil voluptatum voluptatem odit laboriosam dolores est.',1,'2020-07-05 07:35:03','2020-07-05 07:35:03');
/*!40000 ALTER TABLE `tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `fullname` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `cedula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Cliente',
  `activo` tinyint(1) NOT NULL DEFAULT '1',
  `foto` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT 'avatar.svg',
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_slug_unique` (`slug`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'Jorge Peralta','jorge-peralta','12345678','75729198','jorge@gmail.com',NULL,'$2y$10$yNKW9R1ZDToBY5Oz0RfsqOezzaTWgRbWEbP/1Tlc1Kd5S.vOw5auq','Super-Admin',1,'avatar.svg',NULL,'2020-07-05 07:34:20','2020-07-05 07:34:20',NULL),(2,'Emilio Salas','emilio-salas','87654321','70462939','sport.lacomita19@gmail.com',NULL,'$2y$10$5DI7z.cqGtkJpX5W8DImZO4OLDQhwSW4xEKBuu.53.9IYdiXt/Vmm','Administrador',1,'avatar.svg',NULL,'2020-07-05 07:34:20','2020-07-05 07:34:20',NULL),(3,'Karen Vendedora','karen-vendedora','87654311','70001111','venta.lacomita@gmail.com',NULL,'$2y$10$0d1TNBjLkhu/.SQrosiUSeJOvk3XcpL1oxe6qDWLzbzcc.jWFoimy','Ventas',1,'avatar.svg',NULL,'2020-07-05 07:34:20','2020-07-05 07:34:20',NULL),(4,'Juan Cliente','juan-cliente','87654322','70055111','juan.cliente@gmail.com',NULL,'$2y$10$aHh6tgYBjF7xiYGCWWe4c.d2pDieNWanetlZKItHIOlJDYQiT/78C','Cliente',1,'avatar.svg',NULL,'2020-07-05 07:34:20','2020-07-05 07:34:20',NULL),(5,'Carla Cliente','carla-cliente','87654300','70050011','kimi.uatf1@gmail.com',NULL,'$2y$10$bH2O5sy/rK0vjyQsVqfvXuHyJYbB0ctwCyaQEQXwZc6TwOKiCXdNK','Cliente',1,'avatar.svg',NULL,'2020-07-05 07:34:20','2020-07-05 07:34:20',NULL),(6,'UGVUVUIV','ugvuvuiv','654646541','755555555','SDFGSD@GMAIL.COM',NULL,'$2y$10$FeT6cHM/baBtERI1yMk2iuw8EGPkOG/V5StO7K0w8.mPhrgNitdDG','Cliente',1,'avatar.svg',NULL,'2020-08-04 23:09:23','2020-08-04 23:09:23',NULL),(7,'dfghsdfgsdfgs XXXX','dfghsdfgsdfgs','5434353','34535354','fdgdg@gmail.com',NULL,'$2y$10$QIy4ZZr6dsWqMRXH2ZSrq.ZVROlROdZEt7GnCKMrFT/.JqNqNoo92','Cliente',1,'avatar.svg',NULL,'2020-09-08 07:12:52','2020-10-14 05:57:00',NULL),(8,'dfghsdfgsdfgs XXXX','dfghsdfgsdfgs-xxxx','651616816','35346346',NULL,NULL,'$2y$10$fHbrn7NW.bsvf.n5HOooeeoKu5ota9Y7oXfuNAgH17k45v/DkuSEG','Cliente',1,'avatar.svg',NULL,'2020-10-21 02:23:09','2020-10-21 02:23:09',NULL);
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `websockets_statistics_entries`
--

DROP TABLE IF EXISTS `websockets_statistics_entries`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `websockets_statistics_entries` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `app_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `peak_connection_count` int(11) NOT NULL,
  `websocket_message_count` int(11) NOT NULL,
  `api_message_count` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `websockets_statistics_entries`
--

LOCK TABLES `websockets_statistics_entries` WRITE;
/*!40000 ALTER TABLE `websockets_statistics_entries` DISABLE KEYS */;
/*!40000 ALTER TABLE `websockets_statistics_entries` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-11 12:40:00
