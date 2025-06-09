-- MySQL dump 10.13  Distrib 8.0.42, for Linux (x86_64)
--
-- Host: localhost    Database: tienda_zapatos
-- ------------------------------------------------------
-- Server version	8.0.42-0ubuntu0.22.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `boleta_electronicas`
--

DROP TABLE IF EXISTS `boleta_electronicas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `boleta_electronicas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint unsigned NOT NULL,
  `numero` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fecha_emision` date NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `archivo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `boleta_electronicas_numero_unique` (`numero`),
  KEY `boleta_electronicas_pedido_id_foreign` (`pedido_id`),
  CONSTRAINT `boleta_electronicas_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `boleta_electronicas`
--

LOCK TABLES `boleta_electronicas` WRITE;
/*!40000 ALTER TABLE `boleta_electronicas` DISABLE KEYS */;
INSERT INTO `boleta_electronicas` VALUES (1,6,'B001-000001','2025-05-27',250.00,45.00,305.00,NULL,'2025-05-27 17:40:37','2025-05-27 17:40:37'),(2,7,'B001-000002','2025-05-27',317.79,57.21,385.00,NULL,'2025-05-27 18:53:07','2025-05-27 18:53:07'),(3,11,'B001-000003','2025-06-01',169.49,30.51,210.00,NULL,'2025-06-01 06:43:54','2025-06-01 06:43:54'),(5,19,'B001-000004','2025-06-01',25.42,4.58,40.00,'boletas/boleta_B001-000004.pdf','2025-06-01 20:00:25','2025-06-01 20:00:26'),(6,21,'B001-000005','2025-06-01',25.42,4.58,40.00,'boletas/boleta_B001-000005.pdf','2025-06-01 22:48:08','2025-06-01 22:48:09'),(7,22,'B001-000006','2025-06-02',254.24,45.76,310.00,'boletas/boleta_B001-000006.pdf','2025-06-02 00:00:38','2025-06-02 00:00:38'),(8,23,'B001-000007','2025-06-02',788.14,141.86,940.00,'boletas/boleta_B001-000007.pdf','2025-06-02 00:41:42','2025-06-02 00:41:43'),(9,25,'B001-000008','2025-06-02',254.24,45.76,310.00,'boletas/boleta_B001-000008.pdf','2025-06-02 06:21:23','2025-06-02 06:21:24'),(10,26,'B001-000009','2025-06-02',381.35,68.65,460.00,'boletas/boleta_B001-000009.pdf','2025-06-02 16:47:34','2025-06-02 16:47:35'),(11,27,'B001-000010','2025-06-02',279.66,50.34,340.00,'boletas/boleta_B001-000010.pdf','2025-06-02 21:23:27','2025-06-02 21:23:28');
/*!40000 ALTER TABLE `boleta_electronicas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache`
--

DROP TABLE IF EXISTS `cache`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache`
--

LOCK TABLES `cache` WRITE;
/*!40000 ALTER TABLE `cache` DISABLE KEYS */;
INSERT INTO `cache` VALUES ('apizapatos_cache_spatie.permission.cache','a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:28:{i:0;a:4:{s:1:\"a\";i:1;s:1:\"b\";s:15:\"crear categoria\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:1;a:4:{s:1:\"a\";i:2;s:1:\"b\";s:16:\"editar categoria\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:2;a:4:{s:1:\"a\";i:3;s:1:\"b\";s:18:\"eliminar categoria\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:3;a:4:{s:1:\"a\";i:4;s:1:\"b\";s:22:\"asignar stock a zapato\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:4;a:4:{s:1:\"a\";i:5;s:1:\"b\";s:17:\"editar inventario\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:5;a:4:{s:1:\"a\";i:6;s:1:\"b\";s:19:\"eliminar inventario\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:6;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:10:\"ver zapato\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:4:{i:0;i:1;i:1;i:2;i:2;i:4;i:3;i:5;}}i:7;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"crear zapato\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:8;a:4:{s:1:\"a\";i:9;s:1:\"b\";s:13:\"editar zapato\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:9;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:15:\"eliminar zapato\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:5;}}i:10;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:17:\"agregar direccion\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:11;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:18:\"eliminar direccion\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:12;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:12:\"crear pedido\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:13;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:17:\"ver lista pedidos\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:14;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:24:\"ver un pedido especifico\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}i:15;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:22:\"editar item de carrito\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:16;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:23:\"agregar items a carrito\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:17;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:24:\"eliminar item de carrito\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:2;}}i:18;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:24:\"ver usuarios del sistema\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:19;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:20:\"ver usuarios cliente\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:20;a:4:{s:1:\"a\";i:21;s:1:\"b\";s:9:\"crear rol\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:21;a:4:{s:1:\"a\";i:23;s:1:\"b\";s:10:\"editar rol\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:22;a:4:{s:1:\"a\";i:27;s:1:\"b\";s:22:\"asignar permiso al rol\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:23;a:4:{s:1:\"a\";i:29;s:1:\"b\";s:21:\"asignar rol a usuario\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:24;a:4:{s:1:\"a\";i:30;s:1:\"b\";s:28:\"registrar usuario al sistema\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:25;a:4:{s:1:\"a\";i:31;s:1:\"b\";s:21:\"ver lista de permisos\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:26;a:4:{s:1:\"a\";i:32;s:1:\"b\";s:9:\"ver roles\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:1:{i:0;i:1;}}i:27;a:4:{s:1:\"a\";i:33;s:1:\"b\";s:28:\"actualizar estado del pedido\";s:1:\"c\";s:3:\"api\";s:1:\"r\";a:2:{i:0;i:1;i:1;i:4;}}}s:5:\"roles\";a:4:{i:0;a:3:{s:1:\"a\";i:1;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"api\";}i:1;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:10:\"Almacenero\";s:1:\"c\";s:3:\"api\";}i:2;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:7:\"cliente\";s:1:\"c\";s:3:\"api\";}i:3;a:3:{s:1:\"a\";i:4;s:1:\"b\";s:10:\"Supervisor\";s:1:\"c\";s:3:\"api\";}}}',1748976655);
/*!40000 ALTER TABLE `cache` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cache_locks`
--

DROP TABLE IF EXISTS `cache_locks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cache_locks` (
  `key` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `owner` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `expiration` int NOT NULL,
  PRIMARY KEY (`key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cache_locks`
--

LOCK TABLES `cache_locks` WRITE;
/*!40000 ALTER TABLE `cache_locks` DISABLE KEYS */;
/*!40000 ALTER TABLE `cache_locks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carrito_detalles`
--

DROP TABLE IF EXISTS `carrito_detalles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carrito_detalles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `carrito_id` bigint unsigned NOT NULL,
  `zapato_id` bigint unsigned NOT NULL,
  `talla_id` bigint unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `carrito_detalles_carrito_id_zapato_id_talla_id_unique` (`carrito_id`,`zapato_id`,`talla_id`),
  KEY `carrito_detalles_zapato_id_foreign` (`zapato_id`),
  KEY `carrito_detalles_talla_id_foreign` (`talla_id`),
  CONSTRAINT `carrito_detalles_carrito_id_foreign` FOREIGN KEY (`carrito_id`) REFERENCES `carritos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carrito_detalles_talla_id_foreign` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `carrito_detalles_zapato_id_foreign` FOREIGN KEY (`zapato_id`) REFERENCES `zapatos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carrito_detalles`
--

LOCK TABLES `carrito_detalles` WRITE;
/*!40000 ALTER TABLE `carrito_detalles` DISABLE KEYS */;
INSERT INTO `carrito_detalles` VALUES (35,10,10,25,20,300.00,'2025-06-01 17:50:16','2025-06-01 17:50:16'),(36,10,9,27,7,300.00,'2025-06-01 17:50:52','2025-06-01 17:50:52'),(45,2,10,25,4,300.00,'2025-06-02 06:21:45','2025-06-02 06:21:45'),(46,2,12,18,1,120.00,'2025-06-02 16:34:12','2025-06-02 16:34:12');
/*!40000 ALTER TABLE `carrito_detalles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `carritos`
--

DROP TABLE IF EXISTS `carritos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `carritos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `carritos_cliente_id_foreign` (`cliente_id`),
  CONSTRAINT `carritos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `carritos`
--

LOCK TABLES `carritos` WRITE;
/*!40000 ALTER TABLE `carritos` DISABLE KEYS */;
INSERT INTO `carritos` VALUES (1,1,'2025-05-21 06:26:27','2025-05-21 06:26:27'),(2,2,'2025-05-21 06:56:42','2025-05-21 06:56:42'),(3,3,'2025-05-23 05:39:50','2025-05-23 05:39:50'),(4,4,'2025-05-25 17:19:03','2025-05-25 17:19:03'),(5,5,'2025-05-25 18:12:33','2025-05-25 18:12:33'),(6,6,'2025-05-25 22:59:23','2025-05-25 22:59:23'),(7,7,'2025-05-28 18:09:41','2025-05-28 18:09:41'),(8,8,'2025-05-30 01:57:26','2025-05-30 01:57:26'),(9,9,'2025-05-30 04:17:42','2025-05-30 04:17:42'),(10,10,'2025-06-01 17:48:06','2025-06-01 17:48:06'),(11,11,'2025-06-02 03:49:51','2025-06-02 03:49:51');
/*!40000 ALTER TABLE `carritos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categorias`
--

DROP TABLE IF EXISTS `categorias`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `categorias` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categorias`
--

LOCK TABLES `categorias` WRITE;
/*!40000 ALTER TABLE `categorias` DISABLE KEYS */;
INSERT INTO `categorias` VALUES (5,'sin categoria','2025-05-31 05:10:23','2025-05-31 05:10:23'),(7,'Deportivos','2025-05-31 21:34:12','2025-06-02 18:30:33'),(9,'Formales','2025-06-02 18:36:02','2025-06-02 18:36:02'),(10,'Botas','2025-06-02 18:36:14','2025-06-02 18:36:14'),(11,'Tacones','2025-06-02 18:36:30','2025-06-02 18:36:30');
/*!40000 ALTER TABLE `categorias` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `clientes`
--

DROP TABLE IF EXISTS `clientes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `clientes` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `user_id` bigint unsigned NOT NULL,
  `dni` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telefono` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `clientes_user_id_foreign` (`user_id`),
  CONSTRAINT `clientes_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `clientes`
--

LOCK TABLES `clientes` WRITE;
/*!40000 ALTER TABLE `clientes` DISABLE KEYS */;
INSERT INTO `clientes` VALUES (1,2,'66666666','666666666','2025-05-21 06:26:27','2025-06-01 01:31:39'),(2,3,'99999999','987654321','2025-05-21 06:56:42','2025-06-01 01:36:12'),(3,4,'32046723','934567864','2025-05-23 05:39:49','2025-05-23 05:39:49'),(4,6,'32615498','984156324','2025-05-25 17:19:03','2025-05-25 17:19:03'),(5,7,'94618237','941358764','2025-05-25 18:12:33','2025-05-25 18:12:33'),(6,8,'56432435','913573543','2025-05-25 22:59:23','2025-05-25 22:59:23'),(7,9,'00000000','910840344','2025-05-28 18:09:41','2025-05-28 18:09:41'),(8,10,'49357416','999999999','2025-05-30 01:57:26','2025-05-30 01:57:26'),(9,11,'12345678','939504694','2025-05-30 04:17:42','2025-05-30 04:17:42'),(10,19,'72971185','982670599','2025-06-01 17:48:06','2025-06-01 17:48:06'),(11,20,'66666666','666666666','2025-06-02 03:49:51','2025-06-02 03:52:54');
/*!40000 ALTER TABLE `clientes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `detalle_pedidos`
--

DROP TABLE IF EXISTS `detalle_pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `detalle_pedidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint unsigned NOT NULL,
  `zapato_id` bigint unsigned NOT NULL,
  `talla_id` bigint unsigned NOT NULL,
  `cantidad` int NOT NULL,
  `precio_unitario` decimal(10,2) NOT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `detalle_pedidos_pedido_id_foreign` (`pedido_id`),
  KEY `detalle_pedidos_zapato_id_foreign` (`zapato_id`),
  KEY `detalle_pedidos_talla_id_foreign` (`talla_id`),
  CONSTRAINT `detalle_pedidos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalle_pedidos_talla_id_foreign` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `detalle_pedidos_zapato_id_foreign` FOREIGN KEY (`zapato_id`) REFERENCES `zapatos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `detalle_pedidos`
--

LOCK TABLES `detalle_pedidos` WRITE;
/*!40000 ALTER TABLE `detalle_pedidos` DISABLE KEYS */;
INSERT INTO `detalle_pedidos` VALUES (25,12,9,27,1,300.00,254.24,45.76,300.00,'2025-06-01 02:59:21','2025-06-01 02:59:21'),(27,13,9,27,2,300.00,508.48,91.52,600.00,'2025-06-01 03:09:14','2025-06-01 03:09:14'),(28,14,9,24,5,30.00,127.10,22.90,150.00,'2025-06-01 17:56:32','2025-06-01 17:56:32'),(29,15,9,24,1,30.00,25.42,4.58,30.00,'2025-06-01 19:25:27','2025-06-01 19:25:27'),(30,16,9,24,1,30.00,25.42,4.58,30.00,'2025-06-01 19:30:21','2025-06-01 19:30:21'),(31,17,9,24,1,30.00,25.42,4.58,30.00,'2025-06-01 19:32:46','2025-06-01 19:32:46'),(32,18,9,24,1,30.00,25.42,4.58,30.00,'2025-06-01 19:57:12','2025-06-01 19:57:12'),(33,19,9,24,1,30.00,25.42,4.58,30.00,'2025-06-01 19:59:58','2025-06-01 19:59:58'),(34,20,9,26,1,30.00,25.42,4.58,30.00,'2025-06-01 22:03:28','2025-06-01 22:03:28'),(35,21,9,26,1,30.00,25.42,4.58,30.00,'2025-06-01 22:47:14','2025-06-01 22:47:14'),(36,22,10,24,1,300.00,254.24,45.76,300.00,'2025-06-01 23:59:57','2025-06-01 23:59:57'),(37,23,9,26,1,30.00,25.42,4.58,30.00,'2025-06-02 00:40:58','2025-06-02 00:40:58'),(38,23,10,25,3,300.00,762.72,137.28,900.00,'2025-06-02 00:40:58','2025-06-02 00:40:58'),(39,24,9,10,1,30.00,25.42,4.58,30.00,'2025-06-02 04:31:46','2025-06-02 04:31:46'),(40,25,10,25,1,300.00,254.24,45.76,300.00,'2025-06-02 06:19:17','2025-06-02 06:19:17'),(41,26,9,24,1,30.00,25.42,4.58,30.00,'2025-06-02 16:45:57','2025-06-02 16:45:57'),(42,26,10,25,1,300.00,254.24,45.76,300.00,'2025-06-02 16:45:57','2025-06-02 16:45:57'),(43,26,12,18,1,120.00,101.69,18.31,120.00,'2025-06-02 16:45:57','2025-06-02 16:45:57'),(44,27,9,7,1,30.00,25.42,4.58,30.00,'2025-06-02 21:22:14','2025-06-02 21:22:14'),(45,27,10,24,1,300.00,254.24,45.76,300.00,'2025-06-02 21:22:14','2025-06-02 21:22:14');
/*!40000 ALTER TABLE `detalle_pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `direccion_envios`
--

DROP TABLE IF EXISTS `direccion_envios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `direccion_envios` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint unsigned NOT NULL,
  `direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tipo_vivienda` enum('Depto','Casa','Oficina') COLLATE utf8mb4_unicode_ci NOT NULL,
  `departamento` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `provincia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `distrito` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `codigo_postal` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `instrucciones_entrega` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nombre_direccion` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `direccion_envios_cliente_id_foreign` (`cliente_id`),
  CONSTRAINT `direccion_envios_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `direccion_envios`
--

LOCK TABLES `direccion_envios` WRITE;
/*!40000 ALTER TABLE `direccion_envios` DISABLE KEYS */;
INSERT INTO `direccion_envios` VALUES (1,1,'Av. Los Pinos 123','Casa','Ancash','Santa','Nuevo Chimbote','02700','Tocar el timbre fuerte.','Casa Principal','2025-05-21 06:26:27','2025-05-21 06:26:27'),(2,5,'mz t lt 20','Depto','ancash','santa','chimbote','02710','casa celeste','casa','2025-05-25 18:23:06','2025-05-25 18:23:06'),(3,2,'mz t lt f','Depto','ancash','santa','chimbote','02710','casa roja','casa','2025-06-01 01:21:45','2025-06-01 01:21:45'),(4,2,'Mz. 5 Lt. 6','Depto','ancash','santa','chimbote','02710','Depa Celeste','Depa','2025-06-01 01:33:18','2025-06-01 01:33:18'),(5,2,'Mz. P5 Lt. 3','Casa','ancash','santa','nuevo chimbote','02710','Casa Celeste','Casa','2025-06-01 03:08:37','2025-06-01 03:08:37'),(6,7,'Mz. P5 Lt. 3','Casa','ancash','santa','nuevo chimbote','02710','Casa Celeste','Casa','2025-06-01 03:09:08','2025-06-01 03:09:08'),(7,2,'Mz. P5 Lt. 1','Depto','ancash','santa','chimbote','02710','casa verde','Casa verde','2025-06-01 22:23:50','2025-06-01 22:23:50'),(8,2,'mz z lt f','Casa','Ancash','Santa','Chimbote','02710','Tocar fuerte la puerta, gracias.','casitilla','2025-06-01 22:33:04','2025-06-01 22:33:04'),(9,3,'mz t lt f','Depto','ancash','santa','chimbote','02710','casa roja','casa','2025-06-02 04:30:49','2025-06-02 04:30:49'),(10,2,'Jr. Elias Aguirre 384 Int. 216','Oficina','Ancash','Santa','Chimbote','02710','Segundo Piso, Reja blanca con placa que indica el numero de interior.','Oficina Trabajo','2025-06-02 07:19:38','2025-06-02 07:19:38');
/*!40000 ALTER TABLE `direccion_envios` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `failed_jobs`
--

DROP TABLE IF EXISTS `failed_jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `failed_jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`)
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
-- Table structure for table `inventario`
--

DROP TABLE IF EXISTS `inventario`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventario` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `zapato_id` bigint unsigned NOT NULL,
  `talla_id` bigint unsigned NOT NULL,
  `stock` int NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `inventario_zapato_id_talla_id_unique` (`zapato_id`,`talla_id`),
  KEY `inventario_talla_id_foreign` (`talla_id`),
  CONSTRAINT `inventario_talla_id_foreign` FOREIGN KEY (`talla_id`) REFERENCES `tallas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `inventario_zapato_id_foreign` FOREIGN KEY (`zapato_id`) REFERENCES `zapatos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventario`
--

LOCK TABLES `inventario` WRITE;
/*!40000 ALTER TABLE `inventario` DISABLE KEYS */;
INSERT INTO `inventario` VALUES (14,9,27,13,'2025-05-31 22:59:54','2025-06-02 18:53:02'),(15,9,26,10,'2025-05-31 22:59:54','2025-06-02 18:53:02'),(16,10,25,15,'2025-06-01 06:41:38','2025-06-02 16:45:57'),(17,10,24,15,'2025-06-01 06:41:38','2025-06-02 21:22:14'),(18,10,26,20,'2025-06-01 06:41:39','2025-06-01 06:41:39'),(19,10,27,20,'2025-06-01 06:41:39','2025-06-01 06:41:39'),(20,10,28,20,'2025-06-01 06:41:39','2025-06-01 06:41:39'),(21,9,24,10,'2025-06-01 17:53:11','2025-06-02 18:53:02'),(22,9,10,26,'2025-06-02 04:23:23','2025-06-02 16:22:39'),(24,12,17,10,'2025-06-02 16:27:09','2025-06-02 16:27:09'),(25,12,18,9,'2025-06-02 16:27:09','2025-06-02 16:45:57'),(26,13,20,15,'2025-06-02 18:49:23','2025-06-02 18:49:23'),(27,13,21,10,'2025-06-02 18:49:23','2025-06-02 18:49:23'),(28,9,7,9,'2025-06-02 18:50:09','2025-06-02 21:22:14'),(29,14,21,10,'2025-06-02 18:52:46','2025-06-02 18:52:46'),(30,14,20,10,'2025-06-02 18:52:46','2025-06-02 18:52:46'),(31,14,22,10,'2025-06-02 18:52:46','2025-06-02 18:52:46'),(32,15,3,12,'2025-06-02 21:30:44','2025-06-02 21:30:44');
/*!40000 ALTER TABLE `inventario` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `job_batches`
--

DROP TABLE IF EXISTS `job_batches`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `job_batches` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_jobs` int NOT NULL,
  `pending_jobs` int NOT NULL,
  `failed_jobs` int NOT NULL,
  `failed_job_ids` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` mediumtext COLLATE utf8mb4_unicode_ci,
  `cancelled_at` int DEFAULT NULL,
  `created_at` int NOT NULL,
  `finished_at` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `job_batches`
--

LOCK TABLES `job_batches` WRITE;
/*!40000 ALTER TABLE `job_batches` DISABLE KEYS */;
/*!40000 ALTER TABLE `job_batches` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jobs`
--

DROP TABLE IF EXISTS `jobs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `jobs` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `queue` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `attempts` tinyint unsigned NOT NULL,
  `reserved_at` int unsigned DEFAULT NULL,
  `available_at` int unsigned NOT NULL,
  `created_at` int unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobs_queue_index` (`queue`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jobs`
--

LOCK TABLES `jobs` WRITE;
/*!40000 ALTER TABLE `jobs` DISABLE KEYS */;
/*!40000 ALTER TABLE `jobs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `migrations`
--

DROP TABLE IF EXISTS `migrations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `migrations` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `migrations`
--

LOCK TABLES `migrations` WRITE;
/*!40000 ALTER TABLE `migrations` DISABLE KEYS */;
INSERT INTO `migrations` VALUES (1,'0001_01_01_000000_create_users_table',1),(2,'0001_01_01_000001_create_cache_table',1),(3,'0001_01_01_000002_create_jobs_table',1),(4,'2025_05_06_212735_create_personal_access_tokens_table',1),(5,'2025_05_07_225518_create_permission_tables',1),(6,'2025_05_09_025900_create_categorias_table',1),(7,'2025_05_09_025915_create_zapatos_table',1),(8,'2025_05_09_031931_create_tallas_table',1),(9,'2025_05_09_031949_create_inventario_table',1),(10,'2025_05_09_032532_create_clientes_table',1),(11,'2025_05_12_040425_create_carritos_table',1),(12,'2025_05_12_040501_create_carrito_detalles_table',1),(13,'2025_05_13_042520_create_direccion_envios_table',1),(14,'2025_05_13_063153_create_pedidos_table',1),(15,'2025_05_13_063251_create_detalle_pedidos_table',1),(16,'2025_05_13_063401_create_pagos_table',1),(17,'2025_05_24_173831_create_notifications_table',2),(18,'2025_05_27_170215_create_boleta_electronicas_table',3),(19,'2025_05_31_232652_update_foreign_key_on_pedidos_table',4),(20,'2025_06_01_191347_add_archivo_to_boletas_electronicas_table',5);
/*!40000 ALTER TABLE `migrations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_permissions`
--

DROP TABLE IF EXISTS `model_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_permissions`
--

LOCK TABLES `model_has_permissions` WRITE;
/*!40000 ALTER TABLE `model_has_permissions` DISABLE KEYS */;
/*!40000 ALTER TABLE `model_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `model_has_roles`
--

DROP TABLE IF EXISTS `model_has_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `model_has_roles` (
  `role_id` bigint unsigned NOT NULL,
  `model_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`),
  CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `model_has_roles`
--

LOCK TABLES `model_has_roles` WRITE;
/*!40000 ALTER TABLE `model_has_roles` DISABLE KEYS */;
INSERT INTO `model_has_roles` VALUES (1,'App\\Models\\User',1),(2,'App\\Models\\User',2),(2,'App\\Models\\User',3),(2,'App\\Models\\User',4),(2,'App\\Models\\User',6),(2,'App\\Models\\User',7),(2,'App\\Models\\User',8),(2,'App\\Models\\User',9),(2,'App\\Models\\User',10),(2,'App\\Models\\User',11),(2,'App\\Models\\User',12),(1,'App\\Models\\User',17),(1,'App\\Models\\User',18),(2,'App\\Models\\User',19),(2,'App\\Models\\User',20),(5,'App\\Models\\User',22),(5,'App\\Models\\User',23),(1,'App\\Models\\User',24),(4,'App\\Models\\User',25);
/*!40000 ALTER TABLE `model_has_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `notifications` (
  `id` char(36) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `notifiable_id` bigint unsigned NOT NULL,
  `data` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `read_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `notifications_notifiable_type_notifiable_id_index` (`notifiable_type`,`notifiable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `notifications`
--

LOCK TABLES `notifications` WRITE;
/*!40000 ALTER TABLE `notifications` DISABLE KEYS */;
INSERT INTO `notifications` VALUES ('03f66ac7-4faf-4a1c-bd3c-55f6994b5409','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":22,\"total\":\"310.00\",\"fecha\":\"2025-06-02 00:00:30\"}',NULL,'2025-06-02 00:00:30','2025-06-02 00:00:30'),('050252a6-e406-45d3-9d0b-89a57e7a6eed','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":9,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:13:27\"}',NULL,'2025-06-01 02:13:27','2025-06-01 02:13:27'),('05632ec1-4ae7-44a2-a883-ffc9c808aa1d','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":17,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:33:06\"}',NULL,'2025-06-01 19:33:06','2025-06-01 19:33:06'),('056daa41-8f55-4c18-ae4a-8b5d92269069','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":5,\"fecha\":\"2025-05-27 21:44:43\"}',NULL,'2025-05-27 21:44:43','2025-05-27 21:44:43'),('07e54c9f-d8fc-4d5e-bbe6-232ad5a6f04c','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":6,\"total\":\"305.00\",\"fecha\":\"2025-05-24 19:41:27\"}',NULL,'2025-05-24 19:41:27','2025-05-24 19:41:27'),('08c810db-196e-4d3a-ba4f-536ae61ca56b','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":9,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:13:27\"}',NULL,'2025-06-01 02:13:27','2025-06-01 02:13:27'),('0d0ef022-2dbc-4413-a019-91ea424fe8c1','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":19,\"total\":\"40.00\",\"fecha\":\"2025-06-01 20:00:18\"}',NULL,'2025-06-01 20:00:18','2025-06-01 20:00:18'),('129f2106-c85f-4315-8a49-1f320ca9385c','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":25,\"total\":\"310.00\",\"fecha\":\"2025-06-02 06:21:18\"}',NULL,'2025-06-02 06:21:18','2025-06-02 06:21:18'),('169fbcbf-260d-489c-b3ff-cfd0c0927891','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":27,\"total\":\"340.00\",\"fecha\":\"2025-06-02 21:23:21\"}',NULL,'2025-06-02 21:23:21','2025-06-02 21:23:21'),('182a6d0b-9dfc-40f5-a341-ecaaf10eb9cc','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":22,\"total\":\"310.00\",\"fecha\":\"2025-06-02 00:00:30\"}',NULL,'2025-06-02 00:00:30','2025-06-02 00:00:30'),('21f967ed-d5be-46d9-8355-a1ee9616a999','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":19,\"total\":\"40.00\",\"fecha\":\"2025-06-01 20:00:18\"}',NULL,'2025-06-01 20:00:18','2025-06-01 20:00:18'),('246970c5-c8e7-4962-82f8-47e988acb3c3','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":18,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:57:38\"}',NULL,'2025-06-01 19:57:38','2025-06-01 19:57:38'),('24d9fc92-e6b9-46f1-8e93-254a209d5457','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":12,\"fecha\":\"2025-06-01 03:04:39\"}',NULL,'2025-06-01 03:04:39','2025-06-01 03:04:39'),('28dbe327-ac9b-4892-a7e1-45dd23e72461','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente11 cliente11 ha realizado y pagado un pedido.\",\"pedido_id\":26,\"total\":\"460.00\",\"fecha\":\"2025-06-02 16:47:28\"}',NULL,'2025-06-02 16:47:28','2025-06-02 16:47:28'),('2e3f791a-cca6-4c1a-a3f3-9300c609645b','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":13,\"total\":\"810.00\",\"fecha\":\"2025-06-01 03:10:02\"}',NULL,'2025-06-01 03:10:02','2025-06-01 03:10:02'),('2f300711-809a-4aac-8f45-22c4d71c5a37','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":18,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:57:35\"}',NULL,'2025-06-01 19:57:35','2025-06-01 19:57:35'),('325990f1-c06e-47c3-aaf0-d89654f2aef3','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":11,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:54:21\"}',NULL,'2025-06-01 02:54:21','2025-06-01 02:54:21'),('35e2c317-3bc9-499c-b309-c697835061c0','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":10,\"fecha\":\"2025-06-01 02:24:56\"}',NULL,'2025-06-01 02:24:56','2025-06-01 02:24:56'),('3a05ce91-779b-4e94-8a99-2f455f134d43','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":13,\"fecha\":\"2025-06-01 03:11:16\"}',NULL,'2025-06-01 03:11:16','2025-06-01 03:11:16'),('4048ddbc-8fb8-4edc-a0e7-8e9b36a84bec','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":22,\"total\":\"310.00\",\"fecha\":\"2025-06-02 00:00:36\"}',NULL,'2025-06-02 00:00:36','2025-06-02 00:00:36'),('4738b99f-ed08-4a05-bc7d-78dfc3451eae','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente11 cliente11 ha realizado y pagado un pedido.\",\"pedido_id\":26,\"total\":\"460.00\",\"fecha\":\"2025-06-02 16:47:32\"}',NULL,'2025-06-02 16:47:32','2025-06-02 16:47:32'),('518e7f98-bf93-4f02-b313-4370281146e4','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":23,\"total\":\"940.00\",\"fecha\":\"2025-06-02 00:41:36\"}',NULL,'2025-06-02 00:41:36','2025-06-02 00:41:36'),('540f137f-c7ec-4fd4-99af-79f248157a99','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',24,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":27,\"total\":\"340.00\",\"fecha\":\"2025-06-02 21:23:25\"}',NULL,'2025-06-02 21:23:25','2025-06-02 21:23:25'),('5b3b839b-740c-4791-a0d8-1f72a2e2fcd0','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":27,\"total\":\"340.00\",\"fecha\":\"2025-06-02 21:23:23\"}',NULL,'2025-06-02 21:23:23','2025-06-02 21:23:23'),('5c503320-2078-4fbd-aa75-d9fe149cea57','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":13,\"total\":\"810.00\",\"fecha\":\"2025-06-01 03:09:57\"}',NULL,'2025-06-01 03:09:57','2025-06-01 03:09:57'),('5c7df12b-718d-48d1-b337-34a5b1b318eb','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":23,\"total\":\"940.00\",\"fecha\":\"2025-06-02 00:41:38\"}',NULL,'2025-06-02 00:41:38','2025-06-02 00:41:38'),('5d338b4e-58f0-46b1-9c73-b31ec05bd5a8','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":11,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:54:24\"}',NULL,'2025-06-01 02:54:24','2025-06-01 02:54:24'),('6208b2e3-cab7-4ab0-9bac-db6a2b27ddce','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',4,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":26,\"fecha\":\"2025-06-02 18:45:33\"}',NULL,'2025-06-02 18:45:33','2025-06-02 18:45:33'),('63b8a632-fb67-4434-9351-562e3caae98a','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":15,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:26:02\"}',NULL,'2025-06-01 19:26:02','2025-06-01 19:26:02'),('66c84ad8-cbe2-4bef-8c7c-6ea2f5ca5719','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":25,\"total\":\"310.00\",\"fecha\":\"2025-06-02 06:21:18\"}',NULL,'2025-06-02 06:21:18','2025-06-02 06:21:18'),('6ca2fe9e-9c3a-4981-9e82-7dfa2c45c925','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":22,\"fecha\":\"2025-06-02 05:39:50\"}',NULL,'2025-06-02 05:39:50','2025-06-02 05:39:50'),('6dd5c705-36c2-4ad0-a2e7-6042eb366f02','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":25,\"total\":\"310.00\",\"fecha\":\"2025-06-02 06:21:20\"}',NULL,'2025-06-02 06:21:20','2025-06-02 06:21:20'),('735f2073-067e-4b97-b651-6f98dc4ad965','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":17,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:33:05\"}',NULL,'2025-06-01 19:33:05','2025-06-01 19:33:05'),('794b68dd-6899-423e-b635-0d01db350c3f','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":12,\"total\":\"510.00\",\"fecha\":\"2025-06-01 03:00:22\"}',NULL,'2025-06-01 03:00:22','2025-06-01 03:00:22'),('7e722354-49e2-440b-afc1-a4dfe7bc8b8a','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Cliente3 De Prueba3 ha realizado y pagado un pedido.\",\"pedido_id\":7,\"total\":\"385.00\",\"fecha\":\"2025-05-27 18:52:05\"}',NULL,'2025-05-27 18:52:05','2025-05-27 18:52:05'),('81e28817-f8b9-436f-9444-9485be4af2e1','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":16,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:30:47\"}',NULL,'2025-06-01 19:30:47','2025-06-01 19:30:47'),('8856f61e-f025-4346-909f-ac088c79c39f','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":17,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:33:10\"}',NULL,'2025-06-01 19:33:10','2025-06-01 19:33:10'),('8a16093c-0d95-47e1-b9ce-a2c8b02304a6','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":21,\"total\":\"40.00\",\"fecha\":\"2025-06-01 22:48:05\"}',NULL,'2025-06-01 22:48:05','2025-06-01 22:48:05'),('8a3b9b2f-754f-4273-b330-28401c1abb15','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":9,\"fecha\":\"2025-06-01 02:16:44\"}',NULL,'2025-06-01 02:16:44','2025-06-01 02:16:44'),('91782b87-865a-404b-811c-703a3e049e87','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":25,\"total\":\"310.00\",\"fecha\":\"2025-06-02 06:21:22\"}',NULL,'2025-06-02 06:21:22','2025-06-02 06:21:22'),('96b8650b-1424-459f-bc21-ca78457f6107','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":12,\"total\":\"510.00\",\"fecha\":\"2025-06-01 03:00:25\"}',NULL,'2025-06-01 03:00:25','2025-06-01 03:00:25'),('97be8026-1e6b-48bb-a2fc-4af12f5af20f','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":19,\"total\":\"40.00\",\"fecha\":\"2025-06-01 20:00:23\"}',NULL,'2025-06-01 20:00:23','2025-06-01 20:00:23'),('9aaaad13-d87f-4a36-9ad7-28883dd0192a','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":9,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:13:29\"}',NULL,'2025-06-01 02:13:29','2025-06-01 02:13:29'),('a2cdfb75-57ea-4e09-bc4c-aefdad8aec35','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":18,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:57:41\"}',NULL,'2025-06-01 19:57:41','2025-06-01 19:57:41'),('a35a8594-9be1-42a1-b315-0938c98ec3b0','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":15,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:25:57\"}',NULL,'2025-06-01 19:25:57','2025-06-01 19:25:57'),('a3f5a3be-4a6a-47e4-811b-6446147a3dfd','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":22,\"total\":\"310.00\",\"fecha\":\"2025-06-02 00:00:33\"}',NULL,'2025-06-02 00:00:33','2025-06-02 00:00:33'),('a5655187-ffb2-41e4-b950-3ce8175069da','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":27,\"fecha\":\"2025-06-02 21:34:56\"}',NULL,'2025-06-02 21:34:56','2025-06-02 21:34:56'),('a6f24595-bc47-4ca0-bcf2-21aabf6c148d','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":16,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:30:44\"}',NULL,'2025-06-01 19:30:44','2025-06-01 19:30:44'),('a90b38ef-f19d-4efd-8908-3c0b488e4675','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":10,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:24:25\"}',NULL,'2025-06-01 02:24:25','2025-06-01 02:24:25'),('ac844015-c013-41a8-bf6b-e0de9c4d251c','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":23,\"fecha\":\"2025-06-02 04:36:04\"}',NULL,'2025-06-02 04:36:04','2025-06-02 04:36:04'),('adbce3cf-1864-4072-bb55-f3015ae48a16','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":10,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:24:22\"}',NULL,'2025-06-01 02:24:22','2025-06-01 02:24:22'),('b0aeee77-6c5b-42a8-89e6-f154325eb35b','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":15,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:25:57\"}',NULL,'2025-06-01 19:25:57','2025-06-01 19:25:57'),('b6b0fbee-4034-408f-91fe-81af5331a52c','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":12,\"total\":\"510.00\",\"fecha\":\"2025-06-01 03:00:22\"}',NULL,'2025-06-01 03:00:22','2025-06-01 03:00:22'),('bb12329e-0843-4cff-83eb-904ce6960c60','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":27,\"total\":\"340.00\",\"fecha\":\"2025-06-02 21:23:24\"}',NULL,'2025-06-02 21:23:24','2025-06-02 21:23:24'),('bd69b448-4a92-42cc-8aee-b65537cc2cea','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":21,\"total\":\"40.00\",\"fecha\":\"2025-06-01 22:48:00\"}',NULL,'2025-06-01 22:48:00','2025-06-01 22:48:00'),('c074845b-d5ff-4620-8609-376b71ae5a96','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":27,\"total\":\"340.00\",\"fecha\":\"2025-06-02 21:23:21\"}',NULL,'2025-06-02 21:23:21','2025-06-02 21:23:21'),('c316ae9c-9444-416a-96c3-55d03eacb5c7','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',18,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":23,\"total\":\"940.00\",\"fecha\":\"2025-06-02 00:41:41\"}',NULL,'2025-06-02 00:41:41','2025-06-02 00:41:41'),('c415d6bf-afd2-41dd-8da4-a4459a0bb8b2','App\\Notifications\\PedidoEnviadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido enviado y est\\u00e1 en camino.\",\"pedido_id\":11,\"fecha\":\"2025-06-02 05:41:05\"}',NULL,'2025-06-02 05:41:05','2025-06-02 05:41:05'),('c4eea441-0588-4212-845c-d654b2ee1a3a','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":21,\"total\":\"40.00\",\"fecha\":\"2025-06-01 22:48:02\"}',NULL,'2025-06-01 22:48:02','2025-06-01 22:48:02'),('c5112438-86e7-46b2-8155-e0f1b8599568','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":13,\"total\":\"810.00\",\"fecha\":\"2025-06-01 03:10:00\"}',NULL,'2025-06-01 03:10:00','2025-06-01 03:10:00'),('c9a0b0c3-79b3-4984-b3f3-9678bd2e9bee','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',3,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":11,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:54:21\"}',NULL,'2025-06-01 02:54:21','2025-06-01 02:54:21'),('cb180ea1-2524-4ec4-905b-ce56454dd010','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":15,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:25:59\"}',NULL,'2025-06-01 19:25:59','2025-06-01 19:25:59'),('cd1b0d7d-6ab2-485b-bc28-db30db70e638','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":18,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:57:35\"}',NULL,'2025-06-01 19:57:35','2025-06-01 19:57:35'),('d2b4b49a-40a1-40d7-bfb4-4a3cecb39475','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":16,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:30:42\"}',NULL,'2025-06-01 19:30:42','2025-06-01 19:30:42'),('d8d85d99-1592-4de9-a081-3fc12825030e','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":17,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:33:07\"}',NULL,'2025-06-01 19:33:07','2025-06-01 19:33:07'),('e8225a77-4fa2-4450-927e-5e6ed554afa8','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Chebitas Senior ha realizado y pagado un pedido.\",\"pedido_id\":21,\"total\":\"40.00\",\"fecha\":\"2025-06-01 22:48:00\"}',NULL,'2025-06-01 22:48:00','2025-06-01 22:48:00'),('e958e1c5-af37-4234-89df-402e1ca66d4e','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":16,\"total\":\"40.00\",\"fecha\":\"2025-06-01 19:30:42\"}',NULL,'2025-06-01 19:30:42','2025-06-01 19:30:42'),('eba77e2f-7c14-4554-a3bf-d4a5d96353d3','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente11 cliente11 ha realizado y pagado un pedido.\",\"pedido_id\":26,\"total\":\"460.00\",\"fecha\":\"2025-06-02 16:47:30\"}',NULL,'2025-06-02 16:47:30','2025-06-02 16:47:30'),('ebfc0b81-cf66-4ad5-b84c-98d62ee01a88','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Sebastian Raul Castillo Vasquez ha realizado y pagado un pedido.\",\"pedido_id\":23,\"total\":\"940.00\",\"fecha\":\"2025-06-02 00:41:36\"}',NULL,'2025-06-02 00:41:36','2025-06-02 00:41:36'),('ee91bfef-a92e-40a7-aa10-88ccc7716ec7','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',1,'{\"mensaje\":\"El cliente Clientecito clientito ha realizado y pagado un pedido.\",\"pedido_id\":10,\"total\":\"210.00\",\"fecha\":\"2025-06-01 02:24:22\"}',NULL,'2025-06-01 02:24:22','2025-06-01 02:24:22'),('f0ec5895-e4bc-42b2-b1d1-94f70da17253','App\\Notifications\\PedidoPagadoAdminNotification','App\\Models\\User',17,'{\"mensaje\":\"El cliente cliente99 test put cliente ha realizado y pagado un pedido.\",\"pedido_id\":19,\"total\":\"40.00\",\"fecha\":\"2025-06-01 20:00:20\"}',NULL,'2025-06-01 20:00:20','2025-06-01 20:00:20'),('f1d2e632-f6d7-41fd-bac6-8268090eeee7','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',4,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":26,\"total\":\"460.00\",\"fecha\":\"2025-06-02 16:47:28\"}',NULL,'2025-06-02 16:47:28','2025-06-02 16:47:28'),('f34f5c95-60a3-4c45-89ef-0f94055cbd74','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',2,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":7,\"total\":\"385.00\",\"fecha\":\"2025-05-27 18:52:05\"}',NULL,'2025-05-27 18:52:05','2025-05-27 18:52:05'),('fd847836-fd02-48a5-9501-24b85b8e72af','App\\Notifications\\PedidoPagadoClienteNotification','App\\Models\\User',9,'{\"mensaje\":\"Tu pedido ha sido confirmado y pagado. \\u00a1Gracias por tu compra!\",\"pedido_id\":13,\"total\":\"810.00\",\"fecha\":\"2025-06-01 03:09:57\"}',NULL,'2025-06-01 03:09:57','2025-06-01 03:09:57');
/*!40000 ALTER TABLE `notifications` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pagos`
--

DROP TABLE IF EXISTS `pagos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pagos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `pedido_id` bigint unsigned NOT NULL,
  `monto_total` decimal(10,2) NOT NULL,
  `moneda` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'PEN',
  `estado` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `metodo_pago` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `external_payment_id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `external_status_detail` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fecha_pago` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `pagos_external_payment_id_unique` (`external_payment_id`),
  KEY `pagos_pedido_id_foreign` (`pedido_id`),
  CONSTRAINT `pagos_pedido_id_foreign` FOREIGN KEY (`pedido_id`) REFERENCES `pedidos` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pagos`
--

LOCK TABLES `pagos` WRITE;
/*!40000 ALTER TABLE `pagos` DISABLE KEYS */;
INSERT INTO `pagos` VALUES (1,2,452.50,'PEN','completado','master','112311158286','accredited','2025-05-21 03:02:00','2025-05-21 07:01:25','2025-05-21 07:02:01'),(2,1,452.50,'PEN','cancelado',NULL,'2440418719-37da1e00-5037-42b4-be31-35d3136c3e71',NULL,NULL,'2025-05-21 07:02:24','2025-05-21 07:07:01'),(3,4,452.50,'PEN','completado','master','112243953223','accredited','2025-05-24 15:14:51','2025-05-24 19:14:36','2025-05-24 19:14:51'),(4,5,305.00,'PEN','completado','master','112246090027','accredited','2025-05-24 15:38:45','2025-05-24 19:38:30','2025-05-24 19:38:45'),(5,6,305.00,'PEN','completado','master','112712773536','accredited','2025-05-24 15:41:23','2025-05-24 19:41:11','2025-05-24 19:41:24'),(6,7,385.00,'PEN','completado','master','112536045909','accredited','2025-05-27 14:52:03','2025-05-27 18:51:39','2025-05-27 18:52:04'),(7,8,210.00,'PEN','cancelado',NULL,'2440418719-2929c7e5-306e-45c7-8765-cb8de32a53c5',NULL,NULL,'2025-06-01 01:50:14','2025-06-01 01:55:01'),(8,9,210.00,'PEN','completado','visa','113027959219','accredited','2025-05-31 22:13:24','2025-06-01 02:12:52','2025-06-01 02:13:25'),(9,10,210.00,'PEN','completado','visa','113499533478','accredited','2025-05-31 22:24:18','2025-06-01 02:23:43','2025-06-01 02:24:19'),(10,11,210.00,'PEN','completado','visa','113501318774','accredited','2025-05-31 22:54:18','2025-06-01 02:53:56','2025-06-01 02:54:18'),(11,12,510.00,'PEN','completado','visa','113501644690','accredited','2025-05-31 23:00:19','2025-06-01 02:59:41','2025-06-01 03:00:20'),(12,13,810.00,'PEN','completado','visa','113502188974','accredited','2025-05-31 23:09:54','2025-06-01 03:09:31','2025-06-01 03:09:55'),(13,14,160.00,'PEN','cancelado',NULL,'2440418719-ec5d0415-a5aa-4b47-a0a1-9ea5bc0e6f0d',NULL,NULL,'2025-06-01 17:56:53','2025-06-01 18:02:02'),(14,15,40.00,'PEN','completado','master','113550566586','accredited','2025-06-01 15:25:53','2025-06-01 19:25:36','2025-06-01 19:25:54'),(15,16,40.00,'PEN','completado','master','113079930615','accredited','2025-06-01 15:30:40','2025-06-01 19:30:25','2025-06-01 19:30:41'),(16,17,40.00,'PEN','completado','master','113551108214','accredited','2025-06-01 15:33:02','2025-06-01 19:32:49','2025-06-01 19:33:02'),(17,18,40.00,'PEN','completado','master','113552978226','accredited','2025-06-01 15:57:32','2025-06-01 19:57:17','2025-06-01 19:57:32'),(18,19,40.00,'PEN','completado','master','113082120361','accredited','2025-06-01 16:00:16','2025-06-01 20:00:02','2025-06-01 20:00:16'),(19,20,40.00,'PEN','cancelado',NULL,'2440418719-b852221d-40d3-42ea-af05-e8ae0a39a243',NULL,NULL,'2025-06-01 22:05:00','2025-06-01 22:09:01'),(20,21,40.00,'PEN','completado','visa','113567580056','accredited','2025-06-01 18:47:56','2025-06-01 22:47:15','2025-06-01 22:47:57'),(21,22,310.00,'PEN','completado','visa','113102881855','accredited','2025-06-01 20:00:26','2025-06-01 23:59:58','2025-06-02 00:00:27'),(22,23,940.00,'PEN','completado','visa','113577343706','accredited','2025-06-01 20:41:33','2025-06-02 00:40:59','2025-06-02 00:41:34'),(23,24,40.00,'PEN','cancelado',NULL,'2440418719-45f42850-1d4c-4261-9856-796b5527376e',NULL,NULL,'2025-06-02 04:36:41','2025-06-02 04:37:02'),(24,25,310.00,'PEN','completado','visa','113119919785','accredited','2025-06-02 02:21:16','2025-06-02 06:19:18','2025-06-02 06:21:17'),(25,26,460.00,'PEN','completado','visa','113645166508','accredited','2025-06-02 12:47:25','2025-06-02 16:45:58','2025-06-02 16:47:26'),(26,27,340.00,'PEN','completado','visa','113677171588','accredited','2025-06-02 17:23:18','2025-06-02 21:22:15','2025-06-02 21:23:19');
/*!40000 ALTER TABLE `pagos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `password_reset_tokens`
--

DROP TABLE IF EXISTS `password_reset_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `password_reset_tokens`
--

LOCK TABLES `password_reset_tokens` WRITE;
/*!40000 ALTER TABLE `password_reset_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `password_reset_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `cliente_id` bigint unsigned NOT NULL,
  `direccion_envios_id` bigint unsigned DEFAULT NULL,
  `fecha_pedido` datetime DEFAULT NULL,
  `estado` enum('pendiente','pagado','enviado','entregado','cancelado') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'pendiente',
  `mp_preference_id` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `subtotal` decimal(10,2) NOT NULL,
  `igv` decimal(10,2) NOT NULL,
  `costo_envio` decimal(8,2) NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pedidos_cliente_id_foreign` (`cliente_id`),
  KEY `pedidos_direccion_envios_id_foreign` (`direccion_envios_id`),
  CONSTRAINT `pedidos_cliente_id_foreign` FOREIGN KEY (`cliente_id`) REFERENCES `clientes` (`id`) ON DELETE CASCADE,
  CONSTRAINT `pedidos_direccion_envios_id_foreign` FOREIGN KEY (`direccion_envios_id`) REFERENCES `direccion_envios` (`id`) ON DELETE SET NULL
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,1,1,'2025-05-21 07:01:03','cancelado',NULL,375.00,67.50,10.00,452.50,'2025-05-21 07:01:03','2025-05-21 07:07:01'),(2,1,1,'2025-05-21 07:01:16','pagado',NULL,375.00,67.50,10.00,452.50,'2025-05-21 07:01:16','2025-05-21 07:02:01'),(3,1,1,'2025-05-21 07:19:30','cancelado',NULL,375.00,67.50,10.00,452.50,'2025-05-21 07:19:30','2025-05-21 07:25:01'),(4,1,1,'2025-05-24 19:14:21','pagado',NULL,375.00,67.50,10.00,452.50,'2025-05-24 19:14:21','2025-05-24 19:14:51'),(5,1,1,'2025-05-24 19:38:22','enviado',NULL,250.00,45.00,10.00,305.00,'2025-05-24 19:38:22','2025-05-27 21:44:41'),(6,1,1,'2025-05-24 19:41:05','enviado',NULL,250.00,45.00,10.00,305.00,'2025-05-24 19:41:05','2025-05-27 21:30:09'),(7,1,1,'2025-05-27 18:51:20','pagado',NULL,317.79,57.21,10.00,385.00,'2025-05-27 18:51:20','2025-05-27 18:52:04'),(8,2,3,'2025-06-01 01:49:47','cancelado',NULL,169.49,30.51,10.00,210.00,'2025-06-01 01:49:47','2025-06-01 01:55:01'),(9,2,3,'2025-06-01 02:12:41','enviado',NULL,169.49,30.51,10.00,210.00,'2025-06-01 02:12:41','2025-06-01 02:16:42'),(10,2,3,'2025-06-01 02:23:36','entregado',NULL,169.49,30.51,10.00,210.00,'2025-06-01 02:23:36','2025-06-01 02:25:17'),(11,2,3,'2025-06-01 02:53:50','enviado',NULL,169.49,30.51,10.00,210.00,'2025-06-01 02:53:50','2025-06-02 05:41:03'),(12,2,3,'2025-06-01 02:59:21','entregado',NULL,423.73,76.27,10.00,510.00,'2025-06-01 02:59:21','2025-06-01 03:04:48'),(13,7,6,'2025-06-01 03:09:14','enviado',NULL,677.97,122.03,10.00,810.00,'2025-06-01 03:09:14','2025-06-01 03:11:13'),(14,2,5,'2025-06-01 17:56:32','cancelado',NULL,127.10,22.90,10.00,160.00,'2025-06-01 17:56:32','2025-06-01 18:02:02'),(15,1,1,'2025-06-01 19:25:27','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 19:25:27','2025-06-01 19:25:54'),(16,1,1,'2025-06-01 19:30:21','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 19:30:21','2025-06-01 19:30:41'),(17,1,1,'2025-06-01 19:32:46','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 19:32:46','2025-06-01 19:33:02'),(18,1,1,'2025-06-01 19:57:12','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 19:57:12','2025-06-01 19:57:32'),(19,1,1,'2025-06-01 19:59:58','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 19:59:58','2025-06-01 20:00:16'),(20,2,5,'2025-06-01 22:03:28','cancelado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 22:03:28','2025-06-01 22:09:01'),(21,2,8,'2025-06-01 22:47:14','pagado',NULL,25.42,4.58,10.00,40.00,'2025-06-01 22:47:14','2025-06-01 22:47:57'),(22,2,3,'2025-06-01 23:59:57','entregado',NULL,254.24,45.76,10.00,310.00,'2025-06-01 23:59:57','2025-06-02 05:40:29'),(23,7,6,'2025-06-02 00:40:58','entregado',NULL,788.14,141.86,10.00,940.00,'2025-06-02 00:40:58','2025-06-02 05:39:18'),(24,3,9,'2025-06-02 04:31:46','cancelado',NULL,25.42,4.58,10.00,40.00,'2025-06-02 04:31:46','2025-06-02 04:37:02'),(25,2,3,'2025-06-02 06:19:17','pagado',NULL,254.24,45.76,10.00,310.00,'2025-06-02 06:19:17','2025-06-02 06:21:17'),(26,3,9,'2025-06-02 16:45:57','enviado',NULL,381.35,68.65,10.00,460.00,'2025-06-02 16:45:57','2025-06-02 18:45:31'),(27,7,6,'2025-06-02 21:22:14','entregado',NULL,279.66,50.34,10.00,340.00,'2025-06-02 21:22:14','2025-06-02 21:35:33');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `permissions`
--

DROP TABLE IF EXISTS `permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `permissions` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=34 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `permissions`
--

LOCK TABLES `permissions` WRITE;
/*!40000 ALTER TABLE `permissions` DISABLE KEYS */;
INSERT INTO `permissions` VALUES (1,'crear categoria','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(2,'editar categoria','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(3,'eliminar categoria','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(4,'asignar stock a zapato','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(5,'editar inventario','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(6,'eliminar inventario','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(7,'ver zapato','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(8,'crear zapato','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(9,'editar zapato','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(10,'eliminar zapato','api','2025-05-21 06:25:38','2025-05-21 06:25:38'),(11,'agregar direccion','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(12,'eliminar direccion','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(13,'crear pedido','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(14,'ver lista pedidos','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(15,'ver un pedido especifico','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(16,'editar item de carrito','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(17,'agregar items a carrito','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(18,'eliminar item de carrito','api','2025-05-21 06:47:59','2025-05-21 06:47:59'),(19,'ver usuarios del sistema','api','2025-05-24 18:25:56','2025-05-24 18:25:56'),(20,'ver usuarios cliente','api','2025-05-24 18:25:56','2025-05-24 18:25:56'),(21,'crear rol','api','2025-05-24 18:25:56','2025-05-24 18:25:56'),(23,'editar rol','api','2025-05-24 18:25:56','2025-05-24 18:25:56'),(27,'asignar permiso al rol','api','2025-05-24 18:25:56','2025-05-24 18:25:56'),(29,'asignar rol a usuario','api','2025-05-24 18:38:51','2025-05-24 18:38:51'),(30,'registrar usuario al sistema','api','2025-05-24 18:38:51','2025-05-24 18:38:51'),(31,'ver lista de permisos','api','2025-05-24 18:38:51','2025-05-24 18:38:51'),(32,'ver roles','api','2025-05-24 18:52:15','2025-05-24 18:52:15'),(33,'actualizar estado del pedido','api','2025-05-27 21:29:48','2025-05-27 21:29:48');
/*!40000 ALTER TABLE `permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `personal_access_tokens`
--

DROP TABLE IF EXISTS `personal_access_tokens`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `personal_access_tokens` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `personal_access_tokens`
--

LOCK TABLES `personal_access_tokens` WRITE;
/*!40000 ALTER TABLE `personal_access_tokens` DISABLE KEYS */;
/*!40000 ALTER TABLE `personal_access_tokens` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role_has_permissions`
--

DROP TABLE IF EXISTS `role_has_permissions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role_has_permissions` (
  `permission_id` bigint unsigned NOT NULL,
  `role_id` bigint unsigned NOT NULL,
  PRIMARY KEY (`permission_id`,`role_id`),
  KEY `role_has_permissions_role_id_foreign` (`role_id`),
  CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role_has_permissions`
--

LOCK TABLES `role_has_permissions` WRITE;
/*!40000 ALTER TABLE `role_has_permissions` DISABLE KEYS */;
INSERT INTO `role_has_permissions` VALUES (1,1),(2,1),(3,1),(4,1),(5,1),(6,1),(7,1),(8,1),(9,1),(10,1),(11,1),(12,1),(13,1),(14,1),(15,1),(16,1),(17,1),(18,1),(19,1),(20,1),(21,1),(23,1),(27,1),(29,1),(30,1),(31,1),(32,1),(33,1),(7,2),(11,2),(12,2),(13,2),(16,2),(17,2),(18,2),(7,4),(14,4),(15,4),(33,4),(2,5),(4,5),(5,5),(6,5),(7,5),(8,5),(9,5),(10,5);
/*!40000 ALTER TABLE `role_has_permissions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roles`
--

DROP TABLE IF EXISTS `roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roles` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roles`
--

LOCK TABLES `roles` WRITE;
/*!40000 ALTER TABLE `roles` DISABLE KEYS */;
INSERT INTO `roles` VALUES (1,'admin','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(2,'cliente','api','2025-05-21 06:25:39','2025-05-21 06:25:39'),(4,'Supervisor','api','2025-06-02 04:06:18','2025-06-02 18:42:54'),(5,'Almacenero','api','2025-06-02 06:54:44','2025-06-02 06:54:44');
/*!40000 ALTER TABLE `roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sessions` (
  `id` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` bigint unsigned DEFAULT NULL,
  `ip_address` varchar(45) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_activity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sessions_user_id_index` (`user_id`),
  KEY `sessions_last_activity_index` (`last_activity`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
INSERT INTO `sessions` VALUES ('575lkhDr9XJAI8OUH47TsmF0nWxVHqZCWn5WSidO',NULL,'222.79.103.59','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiOXRhQ2Nha09lWTV1WkZYSWhSa2NoNktEbllYYTBtR1hRZ3B1OWFyRiI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vY29yZXNvbHV0aW9ucy5zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1748916420),('LT44S81buUA5t8nW3E5YBaz53tz6J1myReH84gfx',NULL,'93.123.109.230','l9tcpid/v1.1.0','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiZGRqT0ZrYzZOZ1o2RFU0M2trbllta1NVSEdNWUE3amVOY2h2VUd5ZiI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHBzOi8vMzUuMjA4LjE1Ni42MiI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=',1748913842),('M3MSB2xRx0CChJ2NmSrQ2W9p6e7AdLUNnIBP9XVM',NULL,'35.88.185.164','Mozilla/5.0 (iPhone; CPU iPhone OS 14_4 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/15.4 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoidWFLdWZSNWpqVVlFckdDVE01NjBzaTRwUlN1N2JzSlZYZEZxNkxaVCI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vY29yZXNvbHV0aW9ucy5zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1748914550),('n3BlSofeohL4TLgMzJN0IEUMbLw0T35IuREOvjIv',NULL,'43.157.188.74','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoiNzdSVzRVZ0pDdVNWZFJJbmFObmVKVkk4TDNPT0J1QUFqWkFJSFFoZCI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vY29yZXNvbHV0aW9ucy5zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1748916256),('OrUsgPWkxVWb3k2Jeskuwr6T9y1X8VKE3nwny1ab',NULL,'43.167.236.228','Mozilla/5.0 (iPhone; CPU iPhone OS 13_2_3 like Mac OS X) AppleWebKit/605.1.15 (KHTML, like Gecko) Version/13.0.3 Mobile/15E148 Safari/604.1','YTo0OntzOjY6Il90b2tlbiI7czo0MDoicHRtY3NXN0swVTFNVzREY2R3b0lGUDZNOW83QUxJQWVPOUVEb2V6cyI7czoyMjoiUEhQREVCVUdCQVJfU1RBQ0tfREFUQSI7YTowOnt9czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjY6Imh0dHBzOi8vY29yZXNvbHV0aW9ucy5zaG9wIjt9czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319fQ==',1748909330);
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tallas`
--

DROP TABLE IF EXISTS `tallas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tallas` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `numero_talla` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=30 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tallas`
--

LOCK TABLES `tallas` WRITE;
/*!40000 ALTER TABLE `tallas` DISABLE KEYS */;
INSERT INTO `tallas` VALUES (1,'17','2025-05-21 06:25:39','2025-05-21 06:25:39'),(2,'18','2025-05-21 06:25:39','2025-05-21 06:25:39'),(3,'19','2025-05-21 06:25:39','2025-05-21 06:25:39'),(4,'20','2025-05-21 06:25:39','2025-05-21 06:25:39'),(5,'21','2025-05-21 06:25:39','2025-05-21 06:25:39'),(6,'22','2025-05-21 06:25:39','2025-05-21 06:25:39'),(7,'23','2025-05-21 06:25:39','2025-05-21 06:25:39'),(8,'24','2025-05-21 06:25:39','2025-05-21 06:25:39'),(9,'25','2025-05-21 06:25:39','2025-05-21 06:25:39'),(10,'26','2025-05-21 06:25:39','2025-05-21 06:25:39'),(11,'27','2025-05-21 06:25:39','2025-05-21 06:25:39'),(12,'28','2025-05-21 06:25:39','2025-05-21 06:25:39'),(13,'29','2025-05-21 06:25:39','2025-05-21 06:25:39'),(14,'30','2025-05-21 06:25:39','2025-05-21 06:25:39'),(15,'31','2025-05-21 06:25:39','2025-05-21 06:25:39'),(16,'32','2025-05-21 06:25:39','2025-05-21 06:25:39'),(17,'33','2025-05-21 06:25:39','2025-05-21 06:25:39'),(18,'34','2025-05-21 06:25:39','2025-05-21 06:25:39'),(19,'35','2025-05-21 06:25:39','2025-05-21 06:25:39'),(20,'36','2025-05-21 06:25:39','2025-05-21 06:25:39'),(21,'37','2025-05-21 06:25:39','2025-05-21 06:25:39'),(22,'38','2025-05-21 06:25:39','2025-05-21 06:25:39'),(23,'39','2025-05-21 06:25:39','2025-05-21 06:25:39'),(24,'40','2025-05-21 06:25:39','2025-05-21 06:25:39'),(25,'41','2025-05-21 06:25:39','2025-05-21 06:25:39'),(26,'42','2025-05-21 06:25:39','2025-05-21 06:25:39'),(27,'43','2025-05-21 06:25:39','2025-05-21 06:25:39'),(28,'44','2025-05-21 06:25:39','2025-05-21 06:25:39'),(29,'45','2025-05-21 06:25:39','2025-05-21 06:25:39');
/*!40000 ALTER TABLE `tallas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `users` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `apellido` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `users_email_unique` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'admin test','editado','admin3@example.com',NULL,'$2y$12$NZ.37Ztn.DRxTsdH3wvyQeIIt4L3fKbpMnzPtoeZ6bAAj/nVaWXmO',NULL,'2025-05-21 06:26:27','2025-06-02 03:54:24'),(2,'cliente99','test put cliente','clienteput@example.com',NULL,'$2y$12$sLxvnPR4UAEQVIvKWGfqy.vI1brfSea3WUxg2O2Bf9PjowOhWyWve',NULL,'2025-05-21 06:26:27','2025-06-01 01:31:39'),(3,'Chebitas','Senior','chebitas@example.com',NULL,'$2y$12$8oXZdLEqt6jWVihRoqakRu5F7yHjKqugnR8RVwM1Wi0b6sHZsz6GK',NULL,'2025-05-21 06:56:42','2025-06-01 06:02:45'),(4,'cliente11','cliente11','cliente11@example.com',NULL,'$2y$12$qav6VSkg.uYy7RvFd0CcnecCh2uvorAdXnEA/JWCS0zvJA4dkga8K',NULL,'2025-05-23 05:39:49','2025-05-23 05:39:49'),(5,'prueba','prueba','prueba3@example.com',NULL,'$2y$12$277FXB6Yo9seJQRdEI0j.eJKmFx.CEEqDmJG30pa6nJ.HHE1/rwfW',NULL,'2025-05-24 19:09:42','2025-05-24 19:09:42'),(6,'chebitas','kirisu','chebasTest@example.com',NULL,'$2y$12$9Pc/O/DIRa6EmRVZrQPX1uN3u6qTcW.HQP4T5gpQyfev1CQ5/cAjS',NULL,'2025-05-25 17:19:03','2025-05-25 17:19:03'),(7,'Cliente','Clientazo','elmaspro999@example.com',NULL,'$2y$12$XFuGJiymEHwEp9Y1VzYGbO.f/2758K1ZK3LmMGs/5NLKYSe2goTj2',NULL,'2025-05-25 18:12:33','2025-05-25 18:12:33'),(8,'Werner','Yarleque','werner@example.com',NULL,'$2y$12$DL209U20KDvx6JVk3iqG7O2J0f8WqiJA5t4bR/pTdsSP5E8mKbwUK',NULL,'2025-05-25 22:59:23','2025-05-25 22:59:23'),(9,'Sebastian Raul','Castillo Vasquez','sebastian2012peru@gmail.com',NULL,'$2y$12$iqsGxHHgu/wTE4YW0GvMauTvrBssemVyxX/LtPfa87zpFNKcMm7ea',NULL,'2025-05-28 18:09:41','2025-06-02 17:08:16'),(10,'Federico','Lopez','elmaspro999@gmail.com',NULL,'$2y$12$1Y11.QrDqkW17J2qlvk5LOWg5og4YFLaoItrEBKph6JeH7l2mseva',NULL,'2025-05-30 01:57:26','2025-05-30 01:57:26'),(11,'Rigel','On','rig6l@hotmail.com',NULL,'$2y$12$ermOZyXtgwKZUmUDhq8bm.AA6JH1xbAzB3voYpecqIpZhiA44sPZi',NULL,'2025-05-30 04:17:42','2025-05-30 04:17:42'),(12,'Sebastian','Castillo','pruebaSebas@example.com',NULL,'$2y$12$bXfRovw/SIgOnVdnTjAMreGdE0fHxSvWRKC0tQLgGm7qA7M5N28Y.',NULL,'2025-05-31 23:18:11','2025-05-31 23:18:11'),(13,'Admin4','admin4','admin4@example.com',NULL,'$2y$12$VuP0pxHEbAFGC31TxBeF/.pFuWjBYBJVzPNDIqdxICeNd7t64Sksi',NULL,'2025-06-01 00:56:19','2025-06-01 00:56:19'),(14,'admin5','admin5','admin5@example.com',NULL,'$2y$12$vCHHb/kzRXYkPxZp8l7aSOhdxinZgSU0zseJCAC81VgII/3EHxU8G',NULL,'2025-06-01 00:57:52','2025-06-01 00:57:52'),(15,'admin6','admin6','admin6@example.com',NULL,'$2y$12$UsCddtVJBBJrsSYzp4KRdO9lpEpLhWwFqHM1DzYfNI2iFt.5pCloG',NULL,'2025-06-01 01:00:25','2025-06-01 01:00:25'),(16,'admin7','admin7','admin7@example.com',NULL,'$2y$12$Ha6AEJS2kTAe8ITCdi2xLujXgfAMcENDiYgpLxgz64VnEm3MWZg1q',NULL,'2025-06-01 01:03:44','2025-06-01 01:03:44'),(17,'admin8','admin8','admin8@example.com',NULL,'$2y$12$e0h7UYQgHead3xTKd3JHFeEUrjiJqFOks3v1Tw9FPHw0PEVZ4LhFS',NULL,'2025-06-01 01:05:08','2025-06-01 01:05:08'),(18,'admin9','admin9','admin9@example.com',NULL,'$2y$12$ZIQIEN7mDgg4ODg5DPPWq.n6iON5uziv3VCMUdLeomswUCXXCGkB6',NULL,'2025-06-01 03:03:29','2025-06-01 03:03:29'),(19,'DIETMAR AMIR PAOLO','CUEVA ACOSTA','202012044@uns.edu.pe',NULL,'$2y$12$hCXicDLTZ7r3VqNQicz.R.pPvgf/oLlITGDvPgtQ.YNPwZ1s9GMvS',NULL,'2025-06-01 17:48:06','2025-06-01 17:48:06'),(20,'client','test edit','clienteeditado@example.com',NULL,'$2y$12$ILKFOINZmgMUHjY4MSiC8OAvCk2uMF3n6Ho4K5q8eZybGSX1aYotq',NULL,'2025-06-02 03:49:51','2025-06-02 03:52:54'),(21,'prueba','admin','pruebaadmin@example.com',NULL,'$2y$12$lDC/9Hskv9goXN2QPQRlMeKld6Dfl1K6c4ZLATAccFVuIZNAy9Q0S',NULL,'2025-06-02 04:03:46','2025-06-02 04:03:46'),(22,'Almacenero1','Almacenero1','almacen@example.com',NULL,'$2y$12$KjdZllnEhKsYNtGEe2a.R.eQp64cw0S33he/zfazaFF3T3V5es2Fy',NULL,'2025-06-02 08:55:42','2025-06-02 08:55:42'),(23,'Almacenero2','Almacenero2','almacenero2@example.com',NULL,'$2y$12$ybN6coH4m3F6O9ytWPW.3uep.wE1XiJEkNUdtAD0LupyBuKOPAVsu',NULL,'2025-06-02 08:59:17','2025-06-02 08:59:17'),(24,'Sebastian','Castillo','seracava2503@gmail.com',NULL,'$2y$12$HJZ8KimWtYwUnSQlNJ2YNuxHFyDtFBmruNN7R3qcTuSqkngs5pU8O',NULL,'2025-06-02 17:08:50','2025-06-02 18:21:18'),(25,'Fredy','Garcia','fgarcia@example.com',NULL,'$2y$12$qiZgXn5fnlci78IgLGb1HegQmPv2uX3oAGPccRgjjHiSEQm.8IDyS',NULL,'2025-06-02 18:06:05','2025-06-02 18:06:05');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zapatos`
--

DROP TABLE IF EXISTS `zapatos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `zapatos` (
  `id` bigint unsigned NOT NULL AUTO_INCREMENT,
  `nombre` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `descripcion` text COLLATE utf8mb4_unicode_ci,
  `imagen` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `marca` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `genero` enum('Hombre','Mujer','Niño','Niña','Unisex') COLLATE utf8mb4_unicode_ci NOT NULL,
  `precio` decimal(10,2) NOT NULL,
  `categoria_id` bigint unsigned NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `zapatos_nombre_categoria_id_unique` (`nombre`,`categoria_id`),
  KEY `zapatos_categoria_id_foreign` (`categoria_id`),
  CONSTRAINT `zapatos_categoria_id_foreign` FOREIGN KEY (`categoria_id`) REFERENCES `categorias` (`id`) ON DELETE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zapatos`
--

LOCK TABLES `zapatos` WRITE;
/*!40000 ALTER TABLE `zapatos` DISABLE KEYS */;
INSERT INTO `zapatos` VALUES (9,'Zapatillas Adidas cambiadas','Zapatillas Adidasssssssa','https://coresolutions.shop/storage/zapatos/Df8nuJz4MLHaSAfRvezNvrULwaVyzU4wgB5wqsoz.webp','Adidas','Unisex',30.00,7,'2025-05-31 22:57:33','2025-06-02 16:45:17'),(10,'Adidas Campus Black White','Adidas Campus Black White','https://coresolutions.shop/storage/zapatos/F1bpI2lmz5EmHrnPFu3Q8tELbuoxkEK5V7rAAgq3.jpg','Adidas','Hombre',300.00,7,'2025-06-01 06:40:54','2025-06-01 06:40:54'),(12,'Zapatillas R18 Junior','Zapatillas R18 Junior R18-Qy026','https://coresolutions.shop/storage/zapatos/0wVelmSbmi4J63SrefmSzHUc7hsuqBqJCzIB7Ob9.webp','R18','Hombre',120.00,7,'2025-06-02 16:26:48','2025-06-02 16:26:48'),(13,'Zapato Negro de Vestir para Mujer','Zapato Reina Vestir','https://coresolutions.shop/storage/zapatos/9JMNnS0BMQRmXRRT1lP7pgCELHHA2TbZDOAiklSP.webp','Piazza','Mujer',150.00,11,'2025-06-02 18:38:20','2025-06-02 18:38:20'),(14,'Zapato de vestir Wisky','Zapato de vestir marron para mujer','https://coresolutions.shop/storage/zapatos/mzGiyZTQFcnT2924WYL8zE3hTuCaPsoqs2ViOKQV.webp','Calimod','Mujer',120.00,11,'2025-06-02 18:52:23','2025-06-02 18:52:23'),(15,'Zapato de Vestir para Hombre','Zapato de vestir para hombre tipo Oxford','https://coresolutions.shop/storage/zapatos/79ylnjKr53lPg0hEMuUrKT4zoMyQxNQrtJJajs7H.jpg','Hunters Bay','Hombre',200.00,9,'2025-06-02 18:56:48','2025-06-02 18:56:48'),(16,'Zapato de vestir de cuero - Hombre','Zapato de vestir de cuero para hombre','https://coresolutions.shop/storage/zapatos/SF0Zls9KSFB5nWJbm0qQWMxnFPTEIXLoNxpQHk71.webp','Ferracini','Hombre',300.00,9,'2025-06-02 18:57:43','2025-06-02 18:57:43');
/*!40000 ALTER TABLE `zapatos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-06-03  2:39:09
