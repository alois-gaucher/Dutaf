-- phpMyAdmin SQL Dump
-- version 4.6.6deb4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 18, 2019 at 05:42 PM
-- Server version: 10.1.38-MariaDB-0+deb9u1
-- PHP Version: 7.0.33-0+deb9u6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dutaf`
--

-- --------------------------------------------------------

--
-- Table structure for table `Articles`
--

CREATE TABLE `Articles` (
  `art_id` int(11) NOT NULL,
  `art_design` char(20) NOT NULL,
  `art_descript` char(50) NOT NULL,
  `art_prix` double NOT NULL,
  `art_qte` int(11) NOT NULL,
  `four_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Articles`
--

INSERT INTO `Articles` (`art_id`, `art_design`, `art_descript`, `art_prix`, `art_qte`, `four_id`) VALUES
(4, 'LAMPE LED', 'LAMPE LED', 2, 24, 7),
(5, 'LP38J', 'TORCHE LED SOLAIRE', 10.57, 42, 6),
(6, 'LP43G', 'LAMPE POCHE SOLAIRE porte cle', 4.91, 40, 2),
(7, 'LP43M', 'LAMPE POCHE SOLAIRE porte cle', 4.91, 67, 1),
(9, 'M762', 'MONTRE SOLAIRE LCD', 11.82, 17, 6),
(10, 'RV123', 'REVEIL SOLAIRE RADIO PILOTE', 12.29, 28, 5),
(11, 'TEC82', 'CHARGEUR SOLAIRE TEL PORTABLE', 35.98, 97, 4),
(12, 'RA1017', 'RADIO SOLAIRE FM RECHARGEABLE', 14.59, 93, 2),
(13, 'RA1018', 'RADIO DYNAMO TORCHE', 20.76, 31, 1),
(14, 'RA1004', 'RADIO AM-FM/TORCHE', 34.72, 91, 4),
(15, 'RA1020', 'RADIO ECOLO SOLAIRE', 17.36, 100, 7),
(16, 'CL109N', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 86, 8),
(17, 'CL109OR', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 39, 2),
(18, 'CL109V', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 26, 5),
(19, 'LP30', 'TORCHE DYNAMO MOUSQUETON', 11.32, 64, 1),
(20, 'LP36B', 'TORCHE DYNAMO AVEC COMPAS', 6.29, 39, 3),
(21, 'LP36N', 'TORCHE DYNAMO AVEC COMPAS', 6.29, 26, 2),
(542, 'DES POINTS', 'UN 20 POUR DUTAF', 50, 1, 11),
(23, 'LP40G', 'LAMPE LED A DYNAMO GRIS', 3.14, 39, 6),
(24, 'LP40R', 'LAMPE LED A DYNAMO ROUGE', 3.14, 26, 2),
(25, 'LP40V', 'LAMPE LED A DYNAMO VERT', 3.14, 64, 1),
(26, 'LP44B', 'LAMPE DYNAMO  porte cle', 4.15, 39, 7),
(27, 'LP44G', 'LAMPE DYNAMO  porte cle', 4.15, 26, 6),
(28, 'PM100B', 'SAC easy shopper BLEU', 4.78, 64, 5),
(29, 'PM100N', 'SAC easy shopper NOIR', 4.78, 39, 4),
(30, 'PM100R', 'SAC easy shopper ROUGE', 4.78, 26, 2),
(31, 'PM100V', 'SAC easy shopper VERT', 4.78, 64, 1),
(32, 'PM102B', 'easy shopper iso+bouteill BLEU', 9.94, 39, 4),
(33, 'PM102N', 'easy shopper iso+bouteill NOIR', 9.94, 26, 7),
(34, 'PM102R', 'easy shopper iso+bouteill ROUG', 9.94, 64, 8),
(35, 'PM102V', 'easy shopper iso+bouteill VERT', 9.94, 39, 2),
(36, 'PM105G', 'SAC easy shopper ECO gris', 3.65, 26, 5),
(37, 'PM101B', 'easy shopper isotherme BLEU', 12.08, 64, 1),
(38, 'PM101N', 'easy shopper isotherme  NOIR', 12.08, 39, 3),
(39, 'PM101R', 'easy shopper isotherme ROUGE', 12.08, 26, 2),
(40, 'PM101V', 'easy shopper isotherme VERT', 12.08, 64, 4),
(41, 'PM104', 'Sac canvas easy shopper NATURE', 8.81, 39, 6),
(42, 'SEC14', 'SAC SHOPPING JUTE et bamboo', 4.1, 26, 2),
(43, 'SEC15', 'SAC CONGRES COTON NATUREL', 3.65, 64, 1),
(44, 'SEC15N', 'SAC CONGRES COTON NATUREL', 3.65, 39, 7),
(45, 'SEC12J', 'SAC JUTE jaune', 1.49, 26, 6),
(46, 'SEC12R', 'SAC JUTE orange', 1.49, 64, 5),
(47, 'SEC18B', 'SAC  SHOPPING JUTE BLEU', 3.72, 39, 4),
(48, 'SEC18M', 'SAC  SHOPPING JUTE MARRON', 3.72, 26, 2),
(49, 'SEC18R', 'SAC  SHOPPING JUTE FUSHIA', 3.72, 64, 1),
(50, 'SEC18V', 'SAC  SHOPPING JUTE VERT', 3.72, 39, 4),
(51, 'MEN30', 'SET FROMAGE EN BAMBOO', 16.35, 26, 7),
(52, 'MEN31', 'BOUGEOIRE EN BAMBOO', 5.79, 64, 8),
(53, 'MEN32', 'PLANCHE A PAIN BAMBOU', 14.59, 39, 2),
(54, 'BE10', 'COFFRET SPA BAMBOO 5 PCES', 14.09, 26, 5),
(55, 'BE11', 'COFFRET SPA BAMBOO 6 PCES', 14.59, 64, 1),
(56, 'BE12', 'COFFRET SPA BAMBOO luxe', 18.87, 39, 3),
(57, 'TEC56', 'WEBCAM 300K PIXELS, PHOTO', 14.09, 26, 2),
(59, 'TEC87', 'WEBCAM avec micro', 19.87, 39, 6),
(60, 'TEC400', 'WEBCAM 350K + MICRO', 30.94, 26, 2),
(61, 'TEC64', 'WEBCAM 300K PIXELS', 23.9, 64, 1),
(62, 'TEC102', 'VENTILATEUR USB', 7.04, 39, 7),
(63, 'TEC79', 'CALCULATRICE USB - HUB 3 PORTS', 24.15, 26, 6),
(64, 'TEC100', 'LANCEUR MISSILE USB', 52.83, 64, 5),
(65, 'TEC101', 'SPERE ECOLOGIQUE USB', 36.28, 39, 4),
(66, 'TEC103', 'ASPIRATEUR  USB', 7.04, 26, 2),
(67, 'TEC37', 'TAPIS DE SOURIS- HUB USB', 16.35, 64, 1),
(68, 'TEC70', 'TAPIS DE SOURIS HUB /LECT CART', 33.96, 39, 4),
(69, 'TEC80', 'DEVIDOIR ADHESIF - HUB 4 USB2.', 27.17, 26, 7),
(70, 'TEC81', 'OUVRE LETTRE ELECTRIQUE-HUB', 14.59, 64, 8),
(71, 'TEC66', 'HUB USB 4 PORTS 2.0', 9.06, 39, 2),
(72, 'TEC71', 'HUB 4 PORTS USB2.0 + HORLOGE', 12.33, 26, 5),
(73, 'TEC78', 'HUB 4 PORTS - USB2.0', 10.57, 64, 1),
(74, 'TEC31', 'MINI SOURIS OPTIQUE', 7.42, 39, 3),
(75, 'TEC31B', 'MINI SOURIS OPTIQUE', 7.42, 26, 2),
(76, 'TEC34', 'SOURIS OPTIQUE ECLAIREE', 8.3, 64, 4),
(77, 'TEC68', 'MINI SOURIS OPTIQUE 3 EN 1', 17.11, 39, 6),
(78, 'TEC53', 'SOURIS OPTIQUE RECHARG TAPIS', 26.42, 26, 2),
(79, 'TEC57', 'SOURIS RECHARGEABLE', 18.87, 64, 1),
(80, 'TEC51', 'SOURIS OPTIQUE SANS FIL', 16.35, 39, 7),
(81, 'TEC88', 'SOURIS OPTIQUE SANS FILS', 22.39, 26, 6),
(82, 'TEC62', 'TELEPHONE USB', 19.87, 64, 5),
(83, 'TEC90', 'SET INFORMATIQUE DE VOYAGE', 31.7, 39, 4),
(84, 'TEC200', 'SET INFORMATIQUE DE VOYAGE', 24.65, 26, 2),
(85, 'TEC201', 'SET INFORMATIQUE DE VOYAGE', 37.61, 64, 1),
(86, 'LP23', 'POINTEUR LASER-STYLO', 9.06, 39, 6),
(87, 'LP24', 'POINTEUR LASER AVEC PAGE UP', 22.64, 26, 5),
(88, 'TEC72', 'POINTEUR LASER POWER POINT', 19.12, 64, 4),
(89, 'TEC73', 'POINTEUR LASER 5 EN 1', 32.45, 39, 2),
(90, 'X56PC', 'CAMERA NUMERIQUE 7 EN 1', 228.94, 26, 1),
(91, 'X62PC', 'CAMERA NUMERIQUE 1.3M PIXELS', 84.28, 64, 4),
(92, 'X60PC', 'APPAREIL PHOTO NUMERIQUE 2M', 59.95, 39, 7),
(93, 'X61PC', 'APPAREIL PHOTO 1.3 M PIXELS', 29.94, 26, 8),
(94, 'X57PC', 'APPAREIL PHOTO METAL 2.0 M PIX', 92.08, 64, 2),
(95, 'X63PC', 'APPAREIL PHOTO NUMERIQUE 5.0M', 133.34, 39, 5),
(96, 'PD152', 'DATA BANK 8KB RADIO SCAN FM', 14.84, 26, 1),
(97, 'PD153', 'CALCULATRICE DATA 512K', 24.91, 64, 3),
(98, 'PD160', 'SUDOKU  ET KAKURO', 16.6, 39, 2),
(99, 'PD161', 'BRAIN TRAINER jeux de memoire', 8.81, 26, 4),
(100, 'PD162', 'BRAIN TRAINER jeux de memoire', 15.6, 64, 6),
(101, '696AR', 'CALCULATRICE EURO DOUBLE AFF.', 3.65, 39, 2),
(102, '736G', 'CALCULATRICE EURO RELEVABLE', 3.42, 26, 1),
(103, 'CL109N', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 64, 7),
(104, 'CL109OR', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 39, 6),
(105, 'CL109V', 'CALCULATRICE DYNAMO 8 CHIFFRES', 4.91, 26, 5),
(106, 'CL106B', 'CALCULATRICE  8 DIGITS DUALPOW', 5.53, 64, 4),
(107, 'CL106N', 'CALCULATRICE  8 DIGITS DUALPOW', 5.53, 39, 2),
(108, 'CL111', 'CALCULATRICE A EAU', 8.05, 26, 1),
(109, 'CL113', 'ORGANISEUR CALCULATRICE', 7.8, 64, 4),
(110, 'DT48B', 'CALCULATRICE DE BUREAU BLANC', 7.3, 39, 7),
(111, 'DT48N', 'CALCULATRICE DE BUREAU NOIR', 7.3, 26, 8),
(112, '906V', 'PENDULE - THERMOMETRE POT STYL', 5.28, 64, 2),
(113, 'CL112B', 'CALCULATRICE  BUREAU ALUMINIUM', 7.55, 39, 5),
(114, 'CL112V', 'CALCULATRICE  BUREAU ALUMINIUM', 7.55, 26, 1),
(115, 'RV119B', 'REVEIL DE BUREAU ALUMINIUM', 4.91, 64, 3),
(116, 'RV119V', 'REVEIL DE BUREAU ALUMINIUM', 4.91, 39, 2),
(117, 'CB100', 'CALCULATRICE MULTI COULEURS', 13.84, 26, 4),
(118, 'CL110', 'CALCULATRICE-PENDULE MULTIFONC', 9.31, 64, 6),
(119, 'CL100', 'CALCULATRICE ALU 10 chiffres', 8.05, 39, 2),
(120, 'CL100N', 'CALCULATRICE NOIR 10chiffres', 8.05, 26, 1),
(121, 'DT46GDA', 'CALCULATRICE EURO DE BUREAU', 8.81, 64, 7),
(122, '1291', 'PENDULE PORTE PHOTO', 7.14, 39, 8),
(123, 'SL155', 'CADRE  PHOTO STATION METEO', 10.82, 26, 2),
(124, '1297', 'CADRE PHOTO CALENDRIER', 7.42, 64, 5),
(125, '1298', 'PENDULE CADRE PHOTO', 8.81, 39, 1),
(126, '905', 'PENDULE - THERMOMETRE POT STYL', 2.89, 26, 3),
(127, '906', 'PENDULE - THERMOMETRE POT STYL', 4.75, 64, 2),
(128, '906B', 'PENDULE - THERMOMETRE POT STYL', 5.28, 39, 4),
(129, '906V', 'PENDULE - THERMOMETRE POT STYL', 5.28, 26, 6),
(130, 'LH19', 'CUBE LUMINEUX EN PVC', 3.14, 64, 2),
(131, 'LH20', 'LAMPE DECORATIVE 9 CASES', 29.41, 39, 1),
(132, 'LH21', 'LAMPE DECORATIVE', 28.93, 26, 7),
(133, 'LH16', 'LAMPE HALOGENE', 23.9, 64, 6),
(134, 'LH18N', 'LAMPE 5 LED,REVEIL', 28.93, 39, 5),
(135, 'LH23', 'LAMPE RADIO REVEIL FM', 56.61, 26, 4),
(136, 'LH24', 'LAMPE CHAT', 24.53, 64, 2),
(137, 'RV122', 'HORLOGE COULEUR CHANGEANTE', 8.01, 39, 1),
(138, 'RV110', 'PENDULE METAL THERMOMETRE', 19.62, 26, 4),
(139, 'RV114', 'PENDULE MULTIFONCTIONS', 16.35, 64, 7),
(140, 'RV116', 'HORLOGE MULTIFONCTIONS', 10.19, 39, 8),
(141, 'RV111', 'PENDULE ROTATIVE - CALENDRIER', 13.33, 26, 2),
(142, 'RV121', 'HORLOGE COULEUR CHANGEANTE', 4.91, 64, 5),
(143, 'RV112', 'PORTE TROMBONNES ACRYLIQUE', 13.59, 39, 1),
(144, 'RV115', 'HORLOGE DE BUREAU', 8.3, 26, 3),
(145, 'RV120', 'PENDULE PORTE TROMBONNE', 5.29, 64, 2),
(146, 'RV117B', 'REVEIL MIROIR BLANC', 6.04, 39, 4),
(147, 'RV117N', 'REVEIL MIROIR NOIR', 6.04, 26, 6),
(148, 'RV124', 'PENDULE MIROIR LUMINEUX', 9.87, 64, 2),
(149, '1299', 'PENDULE MULTIFONCTION LCD', 4.91, 39, 1),
(150, '1300', 'MEMO BOARD BLUELIGHT', 7.8, 26, 7),
(151, 'RV118', 'REVEIL MULTIFONCTION a EAU', 18.62, 64, 6),
(152, 'RV123', 'REVEIL SOLAIRE RADIO PILOTE', 12.29, 39, 5),
(153, 'SL190', 'STATION METEO-THERMOMETRE', 9.99, 26, 4),
(154, 'SL191', 'THERMOMETRE ELECT IN/OUT', 6.29, 64, 2),
(155, 'SL198', 'STATION METEO-HORLOGE', 8.81, 39, 1),
(156, 'SL202', 'STATION METEO', 9.69, 26, 6),
(157, 'SL192', 'STATION METEO AVEC PROJECTION', 12.33, 64, 5),
(158, 'SL194', 'STATION METEO RADIO FM', 12.33, 39, 4),
(159, 'SL200', 'STATION METEO', 9.06, 26, 2),
(160, 'SL201', 'STATION METEO avec sonde', 24.65, 64, 1),
(161, 'SL187', 'THERMOMETRE RADIO PILOTE', 46.54, 39, 1),
(162, 'SL207', 'STATION METEO', 9.31, 26, 3),
(163, 'SL203', 'THERMOMETRE SANS FILS INT/EXT', 20.88, 64, 2),
(164, 'SL204', 'STATION METEO', 10.82, 39, 4),
(165, 'SL195', 'STATION METEO', 38.49, 26, 6),
(166, 'SL197', 'STATION METEO AVEC BAROMETRE', 38.49, 64, 2),
(167, 'SL196', 'STATION METEO AVEC BAROMETRE', 34.97, 39, 1),
(168, 'SL199', 'STATION METEO AVEC BAROMETRE', 34.21, 26, 7),
(169, 'SL135', 'REVEIL METAL WORLDTIME', 28.93, 64, 6),
(170, 'SL161', 'STATION METEO METAL', 55.35, 39, 5),
(171, 'SL171', 'STATION METEO METAL', 70.44, 26, 4),
(172, 'SL181', 'PENDULE METEO ALUMINIUM', 19.37, 64, 2),
(173, 'SL206', 'STATION METEO avec sonde', 39.75, 39, 1),
(174, '1516N', 'RADIO SCAN AFFICHAGE FREQUENCE', 7.3, 26, 4),
(175, '1516R', 'RADIO SCAN AFFICHAGE FREQUENCE', 7.3, 64, 7),
(176, '1525', 'RADIO SCAN - LAMPE- ALARME', 15.6, 39, 8),
(177, '1526', 'RADIO SCAN - LAMPE- ALARME', 11.32, 26, 2),
(178, 'RA1005', 'RADIO SCAN FM REVEIL', 14.34, 64, 5),
(179, 'RA1015', 'RADIO ET PENDULE MULTIFONCTION', 13.33, 39, 1),
(180, 'RA1011', 'RADIO MULTI BANDES', 15.85, 26, 3),
(181, 'RA1012', 'RADIO SPORT AM/FM', 16.35, 64, 2),
(182, 'TEC76', 'TALKIE WALKIE', 55.35, 39, 4),
(183, 'RA1014', 'RADIO - PENDULE MULTIFONCTION', 11.82, 26, 6),
(184, 'RA1020', 'RADIO ECOLO SOLAIRE', 17.36, 64, 2),
(185, 'SL194', 'STATION METEO RADIO FM', 12.33, 39, 1),
(186, 'RA1004', 'RADIO AM-FM/TORCHE', 34.72, 26, 7),
(187, 'RA1017', 'RADIO SOLAIRE FM RECHARGEABLE', 14.59, 64, 6),
(188, 'BX1006', 'RADIO DE CHANTIER AM/FM', 62.89, 39, 5),
(189, 'RA1018', 'RADIO DYNAMO TORCHE', 20.76, 26, 4),
(190, 'AR245G', 'RADIO REVEIL FM SECTEUR', 9.43, 64, 2),
(191, 'AR283B', 'RADIO REVEIL FM', 11.32, 39, 1),
(192, 'AR283V', 'RADIO REVEIL FM', 11.32, 26, 4),
(193, 'AR269N', 'RADIO REVEIL PROJECTEUR FM', 16.35, 64, 7),
(194, 'AR274N', 'RADIO REVEIL FM VOITURE', 19.12, 39, 8),
(195, 'AR267', 'RADIO REVEIL MIROIR PROJECTEUR', 26.67, 26, 2),
(196, 'AR278', 'RADIO REVEIL PROJECTEUR AM/FM', 43.27, 64, 5),
(197, 'AR282', 'RADIO REVEIL PROJECTEUR', 29.56, 39, 1),
(198, 'AR285', 'RADIO REVEIL PROJECTEUR', 24.15, 26, 3),
(199, 'AR279', 'RADIO REVEIL PROJECTEUR AM/FM', 85.54, 64, 2),
(200, 'RA1009', 'RADIO REVEIL STATION METEO', 64.15, 39, 4),
(201, 'AR270', 'RADIO REVEIL RADIO CONTROLE', 51.57, 26, 6),
(202, 'AR284', 'RADIO REVEIL PROJECTEUR', 30.94, 64, 2),
(203, 'AR271', 'RADIO REVEIL CD', 68.68, 39, 1),
(204, 'LH23', 'LAMPE RADIO REVEIL FM', 56.61, 26, 7),
(205, 'AR273', 'RADIO REVEIL CD - rugby', 77.99, 64, 6),
(206, 'AR281', 'RADIO REVEIL AM/FM, CD', 57.23, 39, 5),
(207, 'AR275', 'RADIO REVEIL, PORT USB,SD-MMC', 94.34, 26, 4),
(208, 'RA1021', 'RADIO DESIGN FM', 28.18, 64, 2),
(209, 'RA1010', 'MICRO CHAINE STATION DACCUEIL', 90.57, 39, 1),
(210, 'BX1008', 'BOOMBOX STEREO', 62.89, 26, 4),
(211, 'BX1009', 'BOOMBOX CD RADIO', 40.25, 64, 7),
(212, 'AR280', 'RADIO REVEIL DOCK STATION', 61.64, 39, 8),
(213, 'BX1010', 'BOOMBOX CD RADIO', 71.7, 26, 2),
(214, 'CH1026', 'CHAINE HIFI AM/FM', 65.16, 64, 5),
(215, 'CH1017B', 'MINI CHAINE AM-FM BLEU', 64.91, 39, 1),
(216, 'CH1017N', 'MINI CHAINE AM-FM NOIR', 57.36, 26, 3),
(217, 'CH1017R', 'MINI CHAINE AM-FM PINK', 64.91, 64, 2),
(218, 'CH1022', 'CHAINE HIFI STEREO CD-AM/FM', 62.27, 39, 4),
(219, 'CH1025', 'CHAINE HIFI USB ET SD', 99.12, 26, 6),
(220, 'CH1012', 'CHAINE STEREO,PORT USB ET CART', 168.05, 64, 2),
(221, 'CH1012N', 'CHAINE STEREO,PORT USB ET CART', 171.07, 39, 1),
(222, 'CH1016', 'CHAINE HIFI  CD-MP3 ET SD-MMC', 155.98, 26, 7),
(223, 'CH1019', 'CHAINE HIFI 2 CD+ ACCEUIL IPOD', 223.91, 64, 6),
(224, 'CH1015', 'CHAINE HIFI  PLL - CD - USB', 208.81, 39, 5),
(225, 'CH1018', 'TOURNE-DISQUE/RADIO/CD', 108.68, 26, 4),
(226, 'CH1023', 'CHAINE HIFI DVD', 196.23, 64, 2),
(227, 'CH1027', 'FAUTEUIL MULTI MEDIA', 206.29, 39, 1),
(228, 'DV110', 'CADRE PHOTO NUMERIQUE 7', 167.3, 26, 4),
(229, 'DV116', 'CADRE PHOTO NUMERIQUE 7', 167.3, 64, 7),
(230, 'DV120', 'CADRE PHOTO NUMERIQUE 10', 322.02, 39, 8),
(231, 'DV117', 'CADRE PHOTO 1.4', 28.93, 26, 2),
(232, 'DV118', 'CADRE PHOTO 2.4', 59.88, 64, 5),
(233, 'DV114B', 'PORTE CLE VISIONNEUR PHOTOS', 31.45, 39, 1),
(234, 'DV114N', 'PORTE CLE VISIONNEUR PHOTOS', 31.45, 26, 3),
(235, 'DV119', 'CADRE PHOTO PORTE CLE', 28.43, 64, 2),
(236, 'RA1013', 'AMPLIFICATEUR RADIO ET USB', 59.12, 39, 4),
(237, 'RA1019', 'STATION ACCEUIL MP3 + RR', 28.18, 26, 6),
(238, 'RC21B', 'POCHETTE pour MP3 - MP4', 1.64, 64, 2),
(239, 'RC21V', 'POCHETTE pour MP3 - MP4', 1.64, 39, 1),
(240, 'TEC501', 'HAUT PARLEUR- STATION ACCUEIL', 15.27, 26, 7),
(241, 'TEC91', 'HAUTS PARLEURS PLIANTS', 11.32, 64, 6),
(242, 'DV107P', 'DVD PORTABLE 7 - MPEG4', 221.39, 39, 5),
(243, 'TEC89', 'ADAPTATEUR UNIVERSEL voyage', 7.04, 26, 4),
(244, 'TEC500', 'TRANSMETTEUR FM', 27.42, 64, 2),
(245, 'TEC84', 'KIT MAIN LIBRE - BLUETOOTH', 108.18, 39, 1),
(246, 'DOM128', 'SET RACLETTE 2 PERSONNES', 17.11, 26, 6),
(247, 'DOM133', 'CAFETIERE DUO', 14.84, 64, 5),
(248, 'DOM143', 'HACHOIR ELECTRIQUE', 21.38, 39, 4),
(249, 'DOM148', 'PRESSE AGRUME electrique', 18.62, 26, 2),
(250, 'DOM149', 'MINI BLINDER', 23.9, 64, 1),
(251, 'DOM119', 'MACHINE A CAFE +  2 TASSES', 17.11, 39, 4),
(252, 'DOM138', 'MACHINE A CAFE METAL 4/6 PERS', 42.27, 26, 7),
(253, 'DOM127', 'MACHINE A CAFE EXPRESSO', 44.78, 64, 8),
(254, 'DOM132', 'MACHINE EXPRESSO/CAPUCCINO', 87.55, 39, 2),
(255, 'DOM122', 'FONTAINE A CHOCOLAT ELECTRIQUE', 61.13, 26, 5),
(256, 'DOM139', 'CHOCOLATIERE', 18.62, 64, 1),
(257, 'DOM134', 'CUISEUR VAPEUR METAL', 51.57, 39, 3),
(258, 'DOM147', 'SORBETIERE', 36.48, 26, 2),
(259, 'DOM114', 'MULTI GRILL METAL 3 EN 1', 35.72, 64, 4),
(260, 'DOM115', 'GRILLE PAIN METAL', 32.65, 39, 6),
(261, 'DOM113', 'MIXEUR BLENDER METAL', 54.84, 26, 2),
(262, 'DOM129', 'PRESSE AGRUME METAL', 38.24, 64, 1),
(263, 'DOM117', 'SET WOK ET FONDUE ELECT.8 PERS', 72.96, 39, 7),
(264, 'DOM130', 'FOUR A PIZZA', 74.22, 26, 6),
(265, 'DOM121', 'BBQ ELECTRIQUE', 45.79, 64, 5),
(266, 'DOM137', 'SET RACLETTE 8 PERSONNES', 36.48, 39, 4),
(267, 'DOM135', 'ASPIRATEUR A MAIN', 33.96, 26, 2),
(268, 'DOM144', 'ASPIRATEUR 1800 W', 96.86, 64, 1),
(269, 'DOM141', 'NETTOYEUR HAUTE PRESSION', 145.92, 39, 4),
(270, 'DOM142', 'NETTOYEUR VAPEUR', 87.05, 26, 7),
(271, 'DOM123', 'FONTAINE A EAU ttes bouteilles', 57.61, 64, 8),
(272, 'FR5', 'DISTRIBUTEUR DE CANNETTES', 155.98, 39, 2),
(273, 'DOM140', 'MACHINE A BIERE', 235.23, 26, 5),
(274, 'FR3B', 'REFRIGERATEUR blanc', 108.68, 64, 1),
(275, 'FR4', 'REFRIGERATEUR 15L BLANC', 90.57, 39, 3),
(276, 'GS30', 'COFFRE FORT A CODE', 88.05, 26, 2),
(277, 'GS99', 'CAVE A VIN 12 BOUTEILLES', 186.17, 64, 4),
(278, 'GS100', 'CAVE A VIN 18 BOUTEILLES', 314.48, 39, 6),
(279, 'GS13', 'TIRE BOUCHON AVEC ACCESSOIRES', 10.94, 26, 2),
(280, 'GS23', 'COFFRET TIRE BOUCHON METAL', 34.72, 64, 1),
(281, 'GS37', 'TIRE BOUCHON AVEC ACCESSOIRES', 17.48, 39, 7),
(282, 'GS21', 'COFFRET A VIN 2 BOUTEILLES PU', 44.03, 26, 8),
(283, 'GS35', 'COFFRET GRAND CRU DUO', 56.61, 64, 2),
(284, 'GS10', 'COFFRET A VIN 1 BOUTEILLE', 18.62, 39, 5),
(285, 'GS20', 'COFFRET A VIN 1 BOUTEILLE PU', 23.9, 26, 1),
(286, 'GS34', 'COFFRET GRAND CRU', 25.91, 64, 3),
(287, 'GS40', 'COFFRET A VIN 1 BOUTEILLE', 26.29, 39, 2),
(288, 'GS41', 'COFFRET A VIN 2 BOUTEILLES', 40.4, 26, 4),
(289, 'GS24', 'SET A VIN 4 PCES COFFRET BOIS', 15.85, 64, 6),
(290, 'GS39', 'SET CRUSTACE', 22.01, 39, 2),
(291, 'GB26', 'COFFRET CHAMPAGNE', 23.9, 26, 1),
(292, 'GS36', 'COFFRE 3 BOUTEILLES', 26.42, 64, 7),
(293, 'GS25', 'SET A VIN 5 PCES COFFRET BOIS', 20.63, 39, 6),
(294, 'GS26', 'SET A VIN 5 PCES COFFRET NOIR', 13.84, 26, 5),
(295, 'GS27', 'SET SOMMELIER BOUTEILLE', 12.33, 64, 4),
(296, 'GS31', 'THERMOMETRE A VIN ELECTRONIQUE', 18.87, 39, 2),
(297, 'GS38', 'TIRE BOUCHON ELECTRIQUE', 27.17, 26, 1),
(298, 'L95', 'SET A FROMAGE 2 pieces', 3.77, 64, 4),
(299, 'L96', 'SET A VIN 3 pieces', 4.78, 39, 7),
(300, 'MEN29', 'SET PATES  ET PIZZA', 8.93, 26, 8),
(301, 'MEN16', 'SET A PIZZA', 9.31, 64, 2),
(302, 'MEN33', 'SET CHEF CUISINIER', 13.84, 39, 5),
(303, 'MEN12', 'SET A STEAK : PLANCHE+COUTEAUX', 34.97, 26, 1),
(304, 'MEN23', 'SET COUTEAUX,HACHOIR HERBES', 36.48, 64, 3),
(305, 'MEN15', 'HACHOIR FINES HERBES', 8.81, 39, 2),
(306, 'MEN17', 'SET A FROMAGE', 8.81, 26, 4),
(307, 'MEN28', 'SET A FROMAGE AVEC PLATEAU', 13.84, 64, 6),
(308, 'MEN30', 'SET FROMAGE EN BAMBOO', 16.35, 39, 2),
(309, 'MEN31', 'BOUGEOIRE EN BAMBOO', 5.79, 26, 1),
(310, 'MEN32', 'PLANCHE A PAIN BAMBOU', 14.59, 64, 7),
(311, 'MEN35', 'HACHOIR FINES HERBES bamboo', 11.32, 39, 6),
(312, 'C31', 'MINUTEUR ELECTRONIQUE', 6.29, 26, 5),
(313, 'DOM124G', 'BALANCE DE CUISINE METAL', 22.14, 64, 4),
(314, 'MEN34', 'MOULIN ELECTRIQUE', 11.82, 39, 2),
(315, 'DOM145', 'BALANCE ELECTRONIQUE', 18.11, 26, 1),
(316, 'DOM146', 'PESE PERSONNE', 32.58, 64, 6),
(317, 'L10LC', 'COFFRET DE 6 COUTEAUX LAGUIOLE', 14.97, 39, 5),
(318, 'L97', 'COFFRET DE 6 COUTEAUX LAGUIOLE', 9.31, 26, 4),
(319, 'MEN18', 'MENAGERE LAGUIOLE 24 PCES', 34.72, 64, 2),
(320, 'L100LD', 'COUTEAU LAME DAMAS + ETUI', 100.38, 39, 1),
(321, 'L11LD', 'COUTEAU LAGUIOLE DAMAS + ETUI', 80.51, 26, 4),
(322, 'L57', 'COFFRET 3 COUTEAUX', 22.14, 64, 7),
(323, 'L11LCC', 'COUTEAU LAGUIOLE CORNE + ETUI', 4.78, 39, 8),
(324, 'L11LNC', 'COUTEAU LAGUIOLE BOIS + ETUI', 4.78, 26, 2),
(325, 'L11LPC', 'COUTEAU LAGUIOLE BOIS + ETUI', 4.78, 64, 5),
(326, 'L12LCC', 'COUTEAU LAGUIOLE CORNE + ETUI', 5.28, 39, 1),
(327, 'L12LNC', 'COUTEAU LAGUIOLE BOIS + ETUI', 5.28, 26, 1),
(328, 'L12LPC', 'COUTEAU LAGUIOLE BOIS + ETUI', 5.28, 64, 3),
(329, 'L11LE', 'COUTEAU LAGUIOLE BOIS + ETUI', 4.78, 39, 2),
(330, 'L11LF', 'COUTEAU LAGUIOLE BOIS + ETUI', 4.78, 26, 4),
(331, 'L12LAE', 'COUTEAU LAGUIOLE BOIS INCRUSTE', 6.04, 64, 6),
(332, 'L12LBCE', 'COUTEAU LAGUIOLE BOIS COLORE', 6.04, 39, 2),
(333, 'L12LE', 'COUTEAU LAGUIOLE BOIS + ETUI', 5.28, 26, 1),
(334, 'L12LF', 'COUTEAU LAGUIOLE BOIS + ETUI', 5.28, 64, 7),
(335, 'LP27', 'COFFRET TORCHE ALU 9 LED', 11.32, 39, 6),
(336, 'L11LC440', 'COUTEAU LAGUIOLE CORNE + ETUI', 7.04, 26, 5),
(337, 'L11LJC440', 'COUTEAU LAGUIOLE BOIS + ETUI', 7.04, 64, 4),
(338, 'L11LNC440', 'COUTEAU LAGUIOLE BOIS + ETUI', 7.04, 39, 2),
(339, 'L12LC440', 'COUTEAU LAGUIOLE CORNE + ETUI', 7.8, 26, 1),
(340, 'L12LJC440', 'COUTEAU LAGUIOLE BOIS + ETUI', 7.8, 64, 4),
(341, 'L12LNC440', 'COUTEAU LAGUIOLE BOIS + ETUI', 7.8, 39, 7),
(342, 'L54B', 'COFFRET 2 COUTEAUX LAGUIOLE', 11.32, 26, 8),
(343, 'L54C', 'COFFRET 2 COUTEAUX LAGUIOLE', 11.32, 64, 2),
(344, 'L58', 'COFFRET 3 COUTEAUX LAGUIOLE', 16.35, 39, 5),
(345, 'SE125B', 'SACOCHE CONGRES BLEUE', 2.21, 26, 1),
(346, 'SE125G', 'SACOCHE CONGRES GRISE', 2.21, 64, 3),
(347, 'SE125M', 'SACOCHE CONGRES MARINE', 2.21, 39, 2),
(348, 'SE125N', 'SACOCHE CONGRES NOIRE', 2.21, 26, 4),
(349, 'SE125R', 'SACOCHE CONGRES ROUGE', 2.21, 64, 6),
(350, 'SE160', 'SAC A DOS', 6.79, 39, 2),
(351, 'SE161', 'SAC BESACE', 4.4, 26, 1),
(352, 'SE827B', 'SAC A DOS BLEU', 8.81, 64, 7),
(353, 'SE828B', 'SAC DE VOYAGE', 10.31, 39, 6),
(354, 'SE819', 'SAC A DOS 1680D', 13.33, 26, 5),
(355, 'SE820', 'SACOCHE BUSINESS 1680D', 11.32, 64, 4),
(356, 'SE821', 'SAC DE VOYAGE 1680D', 15.85, 39, 2),
(357, 'SE822', 'SACOCHE ORDINATEUR', 16.86, 26, 1),
(358, 'SE823', 'SAC A DOS ORDINATEUR', 14.34, 64, 4),
(359, 'SE824', 'SAC DE VOYAGE', 11.57, 39, 7),
(360, 'SE163N', 'TROUSSE DE TOILETTE', 3.77, 26, 8),
(361, 'SE164N', 'POCHETTE MULTI POCHES', 4.65, 64, 2),
(362, 'SE165N', 'SAC DE VOYAGE', 14.09, 39, 5),
(363, 'SE166N', 'SACOCHE', 7.8, 26, 1),
(364, 'SE162', 'SAC A DOS BANDOULIERE', 11.07, 64, 3),
(365, 'SE163', 'TROUSSE DE TOILETTE', 3.77, 39, 2),
(366, 'SE164', 'POCHETTE MULTI POCHES', 4.65, 26, 4),
(367, 'SE165', 'SAC DE VOYAGE', 14.09, 64, 6),
(368, 'SE166', 'SACOCHE', 7.8, 39, 2),
(369, 'SEC12', 'SAC JUTE naturel', 1.49, 26, 1),
(370, 'SEC12J', 'SAC JUTE jaune', 1.49, 64, 7),
(371, 'SEC12N', 'SAC JUTE noir', 1.49, 39, 6),
(372, 'SEC12R', 'SAC JUTE orange', 1.49, 26, 5),
(373, 'SEC17', 'SAC  SHOPPING JUTE naturel', 3.43, 64, 4),
(374, 'SEC13', 'SAC CONGRES JUTE naturel', 3.16, 39, 2),
(375, 'SEC15', 'SAC CONGRES COTON NATUREL', 3.65, 26, 1),
(376, 'SEC15N', 'SAC CONGRES COTON NATUREL', 3.65, 64, 4),
(377, 'SEC14', 'SAC SHOPPING JUTE et bamboo', 4.1, 39, 7),
(378, 'SEC16NP', 'SAC POLOCHON JUTE naturel', 7.26, 26, 8),
(379, 'SEC16NV', 'SAC POLOCHON JUTE naturel', 7.26, 64, 2),
(380, 'SEC18B', 'SAC  SHOPPING JUTE BLEU', 3.72, 39, 5),
(381, 'SEC18M', 'SAC  SHOPPING JUTE MARRON', 3.72, 26, 1),
(382, 'SEC18R', 'SAC  SHOPPING JUTE FUSHIA', 3.72, 64, 3),
(383, 'SEC18V', 'SAC  SHOPPING JUTE VERT', 3.72, 39, 2),
(384, 'SE123B', 'SAC DE VOYAGE TROLLEY  BLEU', 13.84, 26, 4),
(385, 'SE123C', 'SAC DE VOYAGE TROLLEY  BRUN', 13.84, 64, 6),
(386, 'SE123R', 'SAC DE VOYAGE TROLLEY ROUGE', 13.84, 39, 2),
(387, 'SE123V', 'SAC DE VOYAGE TROLLEY VERT', 13.84, 26, 1),
(388, 'SE106', 'SAC DE VOYAGE TROLLEY', 28.93, 64, 7),
(389, 'SE802N', 'SAC DE VOYAGE TROLLEY', 37.99, 39, 6),
(390, 'SE102', 'SET DE 4 BAGGAGES POLYESTE', 23.9, 26, 5),
(391, 'SE103', 'SET DE 3 BAGGAGES POLYESTE', 24.65, 64, 4),
(392, 'SE135', 'SET 4 BAGAGES POLYESTER 600D', 24.65, 39, 2),
(393, 'SE136', 'SET 2 BAGAGES POLYESTER 600D', 23.9, 26, 1),
(394, 'SE137', 'SET 3 BAGAGES POLYESTER 600D', 36.48, 64, 4),
(395, 'SE128', 'SET 3 BAGGAGES BLEU', 61.64, 39, 7),
(396, 'SE129', 'SET 3 BAGGAGES RED', 71.7, 26, 8),
(397, 'SE132', 'SET 3 BAGAGES MICROFIBRE / EVA', 66.67, 64, 2),
(398, 'SE143', 'SET 3 BAGAGES LUXE', 115.73, 39, 5),
(399, 'SE127', 'SET DE 2 BAGAGES', 62.89, 26, 1),
(400, 'SE133', 'SET 2 BAGAGES POLYESTER + EVA', 66.67, 64, 3),
(401, 'SE134', 'SAC ORDINATEUR TROLLEY', 49.06, 39, 2),
(402, 'SE141', 'SET TROLLEY ABS 3 pieces', 196.23, 26, 4),
(403, 'MC113N', 'PORTE CARTE CREDIT NAPPA', 13.33, 64, 6),
(404, 'MC117B', 'PORTE BILLET CUIR BRUN', 16.35, 39, 2),
(405, 'MC118B', 'PORTE BILLET CUIR BRUN', 13.59, 26, 1),
(406, 'MC101N', 'PORTE FEUILLES CUIR', 15.6, 64, 7),
(407, 'MC114B', 'PORTE BILLET CUIR NAPPA', 17.61, 39, 6),
(408, 'MC114N', 'PORTE BILLET CUIR NAPPA', 17.61, 26, 5),
(409, 'MC100N', 'PORTEFEUILLE CUIR', 17.11, 64, 4),
(410, 'MC109N', 'PORTE BILLET - CARTE  CUIR', 12.33, 39, 2),
(411, 'MC115B', 'PORTE MONNAIE CUIR NAPPA', 9.31, 26, 1),
(412, 'MC115N', 'PORTE MONNAIE CUIR NAPPA', 9.31, 64, 6),
(413, 'HL111', 'coffret orne cristaux Swarovsk', 17.74, 39, 5),
(414, 'HL112', 'coffret orne cristaux Swarovsk', 21.64, 26, 4),
(415, 'HL106', 'boite  orne cristaux Swarovski', 21.38, 64, 2),
(416, 'HL107', 'MIROIR orne cristaux Swarovski', 9.43, 39, 1),
(417, 'HL110', 'pochet orne cristaux Swarovski', 22.64, 26, 4),
(418, 'HL100', 'STYLO orne cristaux Swarovski', 12.45, 64, 7),
(419, 'HL101', 'STYLO orne cristaux Swarovski', 16.35, 39, 8),
(420, 'HL103', 'set orne cristaux Swarovski', 22.39, 26, 2),
(421, 'HL104', 'P.Cle  orne cristaux Swarovski', 9.31, 64, 5),
(422, 'HL105', 'P.Cle  orne cristaux Swarovski', 9.31, 39, 1),
(423, 'HL108', 'cadre  orne cristaux Swarovski', 14.34, 26, 3),
(424, 'HL109', 'cadre  orne cristaux Swarovski', 21.64, 64, 2),
(425, 'HL113', 'album orne cristaux Swarovsk', 22.64, 39, 4),
(426, 'BE10', 'COFFRET SPA BAMBOO 5 PCES', 14.09, 26, 6),
(427, 'BE11', 'COFFRET SPA BAMBOO 6 PCES', 14.59, 64, 2),
(428, 'BE12', 'COFFRET SPA BAMBOO luxe', 18.87, 39, 1),
(429, 'BE23', 'COFFRET SENTEURS 3 BOUGIES', 7.55, 26, 7),
(430, 'BE24', 'COFFRET SENTEURS ENCENS', 7.8, 64, 6),
(431, 'BE25', 'COFFRET SENTEURS 5  PIECES', 8.05, 39, 5),
(432, 'LP43G', 'LAMPE POCHE SOLAIRE porte cle', 4.91, 26, 4),
(433, 'LP43M', 'LAMPE POCHE SOLAIRE porte cle', 4.91, 64, 2),
(434, 'LP43V', 'LAMPE POCHE SOLAIRE porte cle', 4.91, 39, 1),
(435, 'LP44B', 'LAMPE DYNAMO  porte cle', 4.15, 26, 4),
(436, 'LP44G', 'LAMPE DYNAMO  porte cle', 4.15, 64, 7),
(437, 'LP42B', 'PORTE CLE SIFFLEUR + lumiere', 1.64, 39, 8),
(438, 'LP42N', 'PORTE CLE SIFFLEUR + lumiere', 1.64, 26, 2),
(439, 'LP45B', 'TORCHE ALU  porte cle', 1.38, 64, 5),
(440, 'LP45G', 'TORCHE ALU  porte cle', 1.38, 39, 1),
(441, 'LP45R', 'TORCHE ALU  porte cle', 1.38, 26, 3),
(442, 'LP46B', 'PORTE CLE MAIN TRANSP BLEU', 1.16, 64, 2),
(443, 'LP46G', 'PORTE CLE MAIN ARGENTE', 1.16, 39, 4),
(444, 'LP46R', 'PORTE CLE MAIN TRANSP ROUGE', 1.16, 26, 6),
(445, 'LP38B', 'TORCHE LED SOLAIRE', 10.57, 64, 2),
(446, 'LP38J', 'TORCHE LED SOLAIRE', 10.57, 39, 1),
(447, 'LP40B', 'LAMPE LED A DYNAMO BLEU', 3.14, 26, 7),
(448, 'LP40G', 'LAMPE LED A DYNAMO GRIS', 3.14, 64, 8),
(449, 'LP40R', 'LAMPE LED A DYNAMO ROUGE', 3.14, 39, 2),
(450, 'LP40V', 'LAMPE LED A DYNAMO VERT', 3.14, 26, 5),
(451, 'LP26', 'TORCHE DYNAMO 3 LED', 12.08, 64, 1),
(452, 'LP30', 'TORCHE DYNAMO MOUSQUETON', 11.32, 39, 3),
(453, 'LP36B', 'TORCHE DYNAMO AVEC COMPAS', 6.29, 26, 2),
(454, 'LP36N', 'TORCHE DYNAMO AVEC COMPAS', 6.29, 64, 4),
(455, 'LP18', 'TORCHE METAL 3 LED', 4.91, 39, 6),
(456, 'LP19B', 'TORCHE METAL 8 LED', 9.94, 26, 2),
(457, 'LP19G', 'TORCHE METAL 8 LED', 9.94, 64, 1),
(458, 'LP19N', 'TORCHE METAL 8 LED', 9.94, 39, 7),
(459, 'LP34', 'LAMPE TORCHE SOLAIRE', 16.35, 26, 6),
(460, 'LP21', 'TORCHE ALUMINIUM 6 LEDS', 16.35, 64, 5),
(461, 'LP29', 'TORCHE METAL 9 LED', 15.6, 39, 4),
(462, 'LP20', 'LAMPE FRONTALE 8 LED', 10.82, 26, 2),
(463, 'LP33', 'LAMPE TORCHE MULTI USAGE', 8.05, 64, 1),
(464, 'LP41', 'TORCHE MULTIFONCTION', 10.57, 39, 4),
(465, 'LP32', 'LAMPE PHARE DYNAMO 6 LEDS', 22.39, 26, 7),
(466, 'LP35', 'TORCHE 9 LED', 5.66, 64, 8),
(467, 'LP37', 'TORCHE DYNAMO ETANCHE', 22.39, 39, 2),
(468, 'JM1', 'JUMELLES 8 X 21 mm', 9.43, 26, 5),
(469, 'JM3', 'JUMELLES PLASTIQUE  4 X30 MM', 2.09, 64, 1),
(470, 'JM6', 'JUMELLES 4 X 30 mm', 5.28, 39, 3),
(471, 'JM5', 'JUMELLES 10 X 25 mm', 10.01, 26, 2),
(472, 'JM7', 'JUMELLES 8 X 21 METAL/GOMME', 11.57, 64, 4),
(473, 'JM8', 'JUMELLES  10 X 50', 14.97, 39, 6),
(474, 'JM10', 'JUMELLES ETANCHES 12 X 25', 37.23, 26, 2),
(475, 'JM4', 'LONGUE-VUE', 72.45, 64, 1),
(476, 'JM9', 'JUMELLES ETANCHES 8 X 30', 38.99, 39, 7),
(477, 'TEC82', 'CHARGEUR SOLAIRE TEL PORTABLE', 35.98, 26, 6),
(478, 'TEC83', 'CHARGEUR  TEL PORTABLE', 9.43, 64, 5),
(479, 'TEC92', 'CHARGEUR SOLAIRE en pochette', 29.43, 39, 4),
(480, 'GS28', 'SET DE JARDINAGE 7 PIECES', 11.07, 26, 2),
(481, 'SE138', 'SAC PICNIC 4 PERSONNES', 28.93, 64, 1),
(482, 'SE139', 'SAC DE PROMENADE 2 PERSONNES', 20.63, 39, 6),
(483, 'SE140', 'SAC PICNIC 2 PERSONNES', 14.59, 26, 5),
(484, 'SE971', 'SAC A DOS PICNIC ISO + COUV 2P', 29.94, 64, 4),
(485, 'SE170', 'PANIER PICNIC OSIER 4 PERS', 31.45, 39, 2),
(486, 'SE171', 'PANIER PICNIC OSIER 4 PERS', 44.28, 26, 1),
(487, 'SE870', 'SAC A DOS PICNIC 4PERS ISOTHER', 34.97, 64, 4),
(488, 'SE970', 'SAC A DOS PICNIC 4PERS ISOTHER', 26.16, 39, 7),
(489, 'GS17', 'SET A BARBECUE', 26.16, 26, 8),
(490, 'GS17-H15', 'SET A BARBECUE 15 cm de haut', 29.94, 64, 2),
(491, 'GS32', 'COFFRET BARBECUE 3  PCES', 16.86, 39, 5),
(492, 'GS17-MER', 'SET A FRUITS DE MER', 26.16, 26, 1),
(493, 'GS33', 'COFFRET BARBECUE 14 PIECES', 32.71, 64, 1),
(494, 'DOM126', 'BARBECUE DE JARDIN A GAZ', 229.94, 39, 3),
(495, 'DOM136', 'BARBECUE A CHARBON DE BOIS', 29.69, 26, 2),
(496, 'DOM121', 'BBQ ELECTRIQUE', 45.79, 64, 4),
(497, 'GS29', 'SET A BARBECUE AVEC TABLIER', 13.84, 39, 6),
(498, 'CA10', 'BUREAU DE POCHE', 13.84, 26, 2),
(499, 'M759C', 'MOUSQUETON MONTRE ANALOGIQUE', 8.05, 64, 1),
(500, 'M759N', 'MOUSQUETON MONTRE ANALOGIQUE', 8.05, 39, 7),
(501, 'TO43', 'MANOMETRE 4 en 1', 15.85, 26, 6),
(502, 'BE13', 'ATOMIC MASSAGE', 11.32, 64, 5),
(503, 'CA11', 'SET DE RASAGE DE VOYAGE', 16.35, 39, 4),
(504, 'LP33', 'LAMPE TORCHE MULTI USAGE', 8.05, 26, 2),
(505, 'LP41', 'TORCHE MULTIFONCTION', 10.57, 64, 1),
(506, 'TO49B', 'MOUSQUETON TOURNEVIS +LED', 2.34, 39, 4),
(507, 'TO49R', 'MOUSQUETON TOURNEVIS +LED', 2.34, 26, 7),
(508, 'TO44', 'TELEMETRE  CALCULATRICE', 16.38, 64, 8),
(509, 'TO48', 'TOURNEVIS ELECTRIQUE  22  PCS', 18.37, 39, 2),
(510, 'TO45', 'TROUSSE A OUTILS 28 PCS', 15.09, 26, 5),
(511, 'TO46', 'TROUSSE A OUTILS 46  PCS', 26.67, 64, 1),
(512, 'BX1006', 'RADIO DE CHANTIER AM/FM', 62.89, 39, 3),
(513, 'TO47', 'TROUSSE A OUTILS 25  PCS', 18.62, 26, 2),
(514, 'GILET1', 'GILET DE SECURITE', 2.89, 64, 4),
(515, 'TO39', 'KIT DE DEPANNAGE VOITURE', 21.38, 39, 6),
(516, 'TO43', 'MANOMETRE 4 en 1', 15.85, 26, 2),
(517, 'TO41', 'KIT SECURITE DANS POCHETTE', 18.37, 64, 1),
(518, 'TO42', 'KIT SECURITE', 8.81, 39, 7),
(519, 'C25', 'COMPAS ELECTRONIQUE', 32.2, 26, 6),
(520, 'C32', 'BOUSSOLE ELECTRONIQUE AVENTURE', 32.2, 64, 5),
(521, 'SE139', 'SAC DE PROMENADE 2 PERSONNES', 20.63, 39, 4),
(522, 'C29', 'PODOMETRE TORCHE LED', 4.4, 26, 2),
(523, 'C33', 'PODOMETRE RADIO', 5.79, 64, 1),
(524, 'SP01', 'BATON RANDONNEE + LAMPE', 13.33, 39, 4),
(525, 'SP08', 'SET FITNESS', 15.09, 26, 7),
(526, 'SP09', 'SET FITNESS', 21.38, 64, 8),
(527, 'SP06', 'VELO DAPPARTEMENT', 264.16, 39, 2),
(528, 'SP07', 'ELLIPTIQUE', 324.54, 26, 5),
(529, 'SP04', 'SET PUNCHING BALL', 54.09, 64, 1),
(530, 'SP05', 'MINI STEPPER ELECTRONIQUE', 57.86, 39, 3),
(531, 'PK1', 'JEU DE POKER 100PCS JETONS 4G', 8.05, 26, 2),
(532, 'PK2', 'JEU DE POKER VOYAGE 150 PCS', 17.11, 64, 4);

-- --------------------------------------------------------

--
-- Table structure for table `Fournisseurs`
--

CREATE TABLE `Fournisseurs` (
  `four_id` int(11) NOT NULL,
  `four_nom` char(30) NOT NULL,
  `four_ville` char(20) NOT NULL,
  `four_tel` char(20) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Fournisseurs`
--

INSERT INTO `Fournisseurs` (`four_id`, `four_nom`, `four_ville`, `four_tel`) VALUES
(8, 'BolDair', 'Troyes', '03.25.22.33.11'),
(7, 'PilouSport', 'Sens', '09.25.12.13.14'),
(6, 'MadeInPasCher', 'Paris', '01.12.41.11.26'),
(5, 'Maxiboutique', 'Troyes', '03.25.33.44.55'),
(4, 'minigrole', 'Lyon', '07.21.11.41.66'),
(3, 'Bluecheap', 'Paris', '01.13.55.41.22'),
(2, 'TopMatos', 'Sens', '04.22.41.43.43'),
(1, 'BigBoss', 'Troyes', '03.25.41.41.41'),
(11, 'NASA', 'Washington', '+1 202-358-0000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Articles`
--
ALTER TABLE `Articles`
  ADD PRIMARY KEY (`art_id`);

--
-- Indexes for table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  ADD PRIMARY KEY (`four_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Articles`
--
ALTER TABLE `Articles`
  MODIFY `art_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=543;
--
-- AUTO_INCREMENT for table `Fournisseurs`
--
ALTER TABLE `Fournisseurs`
  MODIFY `four_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
