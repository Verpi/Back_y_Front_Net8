-- --------------------------------------------------------
-- Host:                         localhost
-- Versión del servidor:         10.4.32-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para db_estudiante
DROP DATABASE IF EXISTS `db_estudiante`;
CREATE DATABASE IF NOT EXISTS `db_estudiante` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `db_estudiante`;

-- Volcando estructura para tabla db_estudiante.estudiantes
DROP TABLE IF EXISTS `estudiantes`;
CREATE TABLE IF NOT EXISTS `estudiantes` (
  `id_estudiante` int(11) NOT NULL AUTO_INCREMENT,
  `carne` varchar(10) NOT NULL,
  `nombres` varchar(60) NOT NULL,
  `apellidos` varchar(60) NOT NULL,
  `direccion` varchar(100) DEFAULT NULL,
  `telefono` varchar(12) DEFAULT NULL,
  `correo_electronico` varchar(60) NOT NULL,
  `id_tipo_sangre` int(11) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  PRIMARY KEY (`id_estudiante`),
  KEY `id_tipo_sangre_estudiantes_tipos_sangre` (`id_tipo_sangre`),
  CONSTRAINT `id_tipo_sangre_estudiantes_tipos_sangre` FOREIGN KEY (`id_tipo_sangre`) REFERENCES `tipos_sangre` (`id_tipo_sangre`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_estudiante.estudiantes: ~6 rows (aproximadamente)
DELETE FROM `estudiantes`;
INSERT INTO `estudiantes` (`id_estudiante`, `carne`, `nombres`, `apellidos`, `direccion`, `telefono`, `correo_electronico`, `id_tipo_sangre`, `fecha_nacimiento`) VALUES
	(1, 'E001', 'Dennys Stuar', 'Hernandez Moran', 'Guatemala', '47714712', 'dhernandezm@gmail.com', 1, '2002-07-16'),
	(2, 'E002', 'Melany', 'Jazmin', 'Ciudad', '12345678', 'mjazmin@gmail.com', 2, '2024-09-05'),
	(3, 'E003', 'Jose', 'Yat', 'Villa Canales', '43089212', 'jyat@gmail.com', 4, '2024-09-02'),
	(4, 'E004', 'Juan', 'Estrada', 'Boca', '12345678', 'jestrada@gmail.com', 6, '2024-10-17'),
	(5, 'E005', 'Luis Angel', 'Zepeda', 'Zona 7', '35212759', 'langelz@gmail.com', 2, '1998-01-01'),
	(6, 'E006', 'Prueba2', 'Prueba2', 'Prueba2', 'Prueba2', 'Prueba2', 6, '2024-10-18');

-- Volcando estructura para tabla db_estudiante.tipos_sangre
DROP TABLE IF EXISTS `tipos_sangre`;
CREATE TABLE IF NOT EXISTS `tipos_sangre` (
  `id_tipo_sangre` int(11) NOT NULL AUTO_INCREMENT,
  `sangre` varchar(10) NOT NULL,
  PRIMARY KEY (`id_tipo_sangre`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla db_estudiante.tipos_sangre: ~5 rows (aproximadamente)
DELETE FROM `tipos_sangre`;
INSERT INTO `tipos_sangre` (`id_tipo_sangre`, `sangre`) VALUES
	(1, 'A+'),
	(2, 'O-'),
	(3, 'A-'),
	(4, 'O+'),
	(6, 'B+');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
