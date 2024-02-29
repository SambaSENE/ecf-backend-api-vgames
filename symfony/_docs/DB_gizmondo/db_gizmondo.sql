-- --------------------------------------------------------
-- Hôte:                         127.0.0.1
-- Version du serveur:           8.0.30 - MySQL Community Server - GPL
-- SE du serveur:                Win64
-- HeidiSQL Version:             12.1.0.6537
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Listage de la structure de la base pour gizmondo
CREATE DATABASE IF NOT EXISTS `gizmondo` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `gizmondo`;

-- Listage de la structure de table gizmondo. doctrine_migration_versions
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

-- Listage des données de la table gizmondo.doctrine_migration_versions : ~1 rows (environ)
DELETE FROM `doctrine_migration_versions`;
INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
	('DoctrineMigrations\\Version20240229090201', '2024-02-29 09:02:27', 104),
	('DoctrineMigrations\\Version20240229091649', '2024-02-29 09:16:55', 16);

-- Listage de la structure de table gizmondo. gizmondo
CREATE TABLE IF NOT EXISTS `gizmondo` (
  `id` int NOT NULL AUTO_INCREMENT,
  `publisher_id` int DEFAULT NULL,
  `game` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `year` int NOT NULL,
  `dev` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_97A931B340C86FCE` (`publisher_id`) USING BTREE,
  CONSTRAINT `FK_97A931B38AAA43D0` FOREIGN KEY (`publisher_id`) REFERENCES `publisher` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gizmondo.gizmondo : ~14 rows (environ)
DELETE FROM `gizmondo`;
INSERT INTO `gizmondo` (`id`, `publisher_id`, `game`, `year`, `dev`) VALUES
	(1, 1, 'Classic Compendium', 2005, 'AI Factory'),
	(2, 1, 'Classic Compendium 2', 2005, 'AI Factory'),
	(3, 2, 'Fathammer Classics Pack', 2005, 'Fathammer/Ninai Games/Vasara Games'),
	(4, 1, 'FIFA Soccer 2005', 2005, 'Exient Entertainment/Electronic Arts Canada'),
	(5, 3, 'Gizmondo Motocross 2005', 2005, 'Housemarque'),
	(6, 3, 'Hockey Rage 2005', 2005, 'Chairman & Board'),
	(7, 2, 'Interstellar Flames 2', 2005, 'Xen Games'),
	(8, 3, 'Pocket Ping Pong 2005', 2005, 'Netdol'),
	(9, 2, 'Point of Destruction', 2005, 'Gizmondo Studios Manchester'),
	(10, 4, 'Richard Burns Rally', 2005, 'Gizmondo Studios Manchester'),
	(11, 1, 'SSX 3', 2005, 'Exient Entertainment/Electronic Arts'),
	(12, 1, 'Sticky Balls', 2005, 'Gizmondo Studios Manchester'),
	(13, 3, 'Toy Golf', 2005, 'Ninai Games'),
	(14, 4, 'Trailblazer', 2005, 'Gizmondo Studios Manchester');

-- Listage de la structure de table gizmondo. publisher
CREATE TABLE IF NOT EXISTS `publisher` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- Listage des données de la table gizmondo.publisher : ~4 rows (environ)
DELETE FROM `publisher`;
INSERT INTO `publisher` (`id`, `name`) VALUES
	(1, 'Gizmondo Games'),
	(2, 'Gizmondo Studios'),
	(3, 'Fathammer'),
	(4, 'Gizmondo Eur Ltd');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
