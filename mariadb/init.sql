-- Adminer 4.7.7 MySQL dump

SET NAMES utf8;
SET time_zone = '+00:00';
SET foreign_key_checks = 0;
SET sql_mode = 'NO_AUTO_VALUE_ON_ZERO';

SET NAMES utf8mb4;



DROP DATABASE IF EXISTS `gttournament`;
CREATE DATABASE `gttournament` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `gttournament`;

DROP TABLE IF EXISTS `contestants`;
CREATE TABLE `contestants` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `surname` varchar(100) NOT NULL,
  `adult` tinyint(1) NOT NULL,
  `email` varchar(100) NOT NULL,
  `discord` varchar(100) NOT NULL,
  `csRank` varchar(100) DEFAULT NULL,
  `maxCsRank` varchar(100) DEFAULT NULL,
  `faceitLevel` int(11) DEFAULT NULL,
  `maxFaceitLevel` int(11) DEFAULT NULL,
  `epicId` varchar(100) DEFAULT NULL,
  `schoolId` int(10) unsigned DEFAULT NULL,
  `agreementSubmitted` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`id`),
  KEY `schoolId` (`schoolId`),
  CONSTRAINT `contestants_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `registrations`;
CREATE TABLE `registrations` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `contestantId` int(10) unsigned DEFAULT NULL,
  `nickname` varchar(100) NOT NULL,
  `teamId` int(10) unsigned DEFAULT NULL,
  `role` enum('MEMBER','CAPTAIN','RESERVIST') DEFAULT NULL,
  `externist` tinyint(1) NOT NULL DEFAULT 0,
  `game` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `contestantId` (`contestantId`),
  KEY `teamId` (`teamId`),
  CONSTRAINT `registrations_ibfk_1` FOREIGN KEY (`contestantId`) REFERENCES `contestants` (`id`),
  CONSTRAINT `registrations_ibfk_2` FOREIGN KEY (`teamId`) REFERENCES `teams` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `schools`;
CREATE TABLE `schools` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


DROP TABLE IF EXISTS `teams`;
CREATE TABLE `teams` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(200) DEFAULT NULL,
  `game` varchar(100) DEFAULT NULL,
  `schoolId` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `schoolId` (`schoolId`),
  CONSTRAINT `teams_ibfk_1` FOREIGN KEY (`schoolId`) REFERENCES `schools` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;


-- 2022-10-07 18:49:48