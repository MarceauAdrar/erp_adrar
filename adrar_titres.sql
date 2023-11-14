-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost:3306
-- Généré le : mar. 14 nov. 2023 à 22:51
-- Version du serveur : 10.11.4-MariaDB-1~deb12u1
-- Version de PHP : 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

--
-- Base de données : `adrar_titres`
--
CREATE DATABASE IF NOT EXISTS `adrar_titres` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `adrar_titres`;

-- --------------------------------------------------------

--
-- Structure de la table `connexion_essais`
--

DROP TABLE IF EXISTS `connexion_essais`;
CREATE TABLE `connexion_essais` (
  `id_connexion_essai` int(11) NOT NULL,
  `ip_connexion_essai` varchar(15) NOT NULL,
  `date_connexion_essai` datetime NOT NULL,
  `username_connexion_essai` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `connexion_essais`
--

INSERT INTO `connexion_essais` (`id_connexion_essai`, `ip_connexion_essai`, `date_connexion_essai`, `username_connexion_essai`) VALUES
(1, '82.65.172.45', '2023-10-09 19:33:21', 'marceaurodrigues'),
(2, '82.65.172.45', '2023-10-09 19:33:58', 'marceaurodrigues'),
(3, '82.65.172.45', '2023-10-09 19:35:31', 'marceaurodrigues'),
(4, '82.65.172.45', '2023-10-09 19:37:03', 'marceaurodrigues'),
(5, '82.65.172.45', '2023-10-09 19:40:58', 'marceaurodrigues'),
(6, '82.65.172.45', '2023-10-09 19:41:14', 'marceaurodrigues'),
(7, '82.65.172.45', '2023-10-09 19:41:24', 'marceaurodrigues'),
(8, '82.65.172.45', '2023-10-09 19:41:27', 'marceaurodrigues'),
(9, '82.65.172.45', '2023-10-09 19:41:30', 'marceaurodrigues'),
(10, '82.65.172.45', '2023-10-09 19:41:32', 'marceaurodrigues'),
(11, '82.65.172.45', '2023-10-09 19:41:35', 'marceaurodrigues'),
(12, '82.65.172.45', '2023-10-09 19:49:48', 'marceaurodrigues'),
(13, '82.65.172.45', '2023-10-09 19:49:59', 'marceaurodrigues'),
(14, '82.65.172.45', '2023-10-09 19:50:02', 'marceaurodrigues'),
(15, '82.65.172.45', '2023-10-09 19:50:07', 'marceaurodrigues'),
(16, '82.65.172.45', '2023-10-09 19:50:10', 'marceaurodrigues'),
(17, '82.65.172.45', '2023-10-09 19:50:13', 'marceaurodrigues'),
(18, '82.65.172.45', '2023-10-09 19:50:16', 'marceaurodrigues'),
(19, '82.65.172.45', '2023-10-09 19:50:19', 'marceaurodrigues'),
(20, '82.65.172.45', '2023-10-09 19:50:32', 'marceaurodrigues'),
(21, '82.65.172.45', '2023-10-09 19:50:48', 'marceaurodrigues'),
(22, '82.65.172.45', '2023-10-09 19:51:04', 'marceaurodrigues'),
(23, '82.65.172.45', '2023-10-09 20:00:33', 'marceaurodrigues'),
(24, '82.65.172.45', '2023-10-09 20:01:53', 'marceaurodrigues'),
(25, '82.65.172.45', '2023-10-09 20:02:08', 'marceaurodrigues'),
(26, '82.65.172.45', '2023-10-09 20:02:16', 'marceaurodrigues'),
(27, '82.65.172.45', '2023-10-09 20:02:20', 'marceaurodrigues'),
(28, '82.65.172.45', '2023-10-09 20:02:23', 'marceaurodrigues'),
(29, '82.65.172.45', '2023-10-09 20:02:38', 'marceaurodrigues'),
(30, '82.65.172.45', '2023-10-09 20:29:56', 'marceaurodrigues'),
(31, '82.65.172.45', '2023-10-09 22:50:16', 'marceaurodrigues'),
(32, '95.143.71.29', '2023-10-10 07:12:43', 'sdellarica23'),
(33, '95.143.71.29', '2023-10-10 07:18:18', 'agirard23'),
(34, '95.143.71.29', '2023-10-10 07:48:14', 'edelmon23'),
(35, '95.143.71.29', '2023-10-10 14:43:34', 'edelmon23'),
(36, '95.143.71.29', '2023-10-10 14:43:38', 'edelmon23'),
(37, '95.143.71.29', '2023-10-10 14:43:39', 'edelmon23'),
(38, '95.143.71.29', '2023-10-10 14:43:42', 'edelmon23'),
(39, '95.143.71.29', '2023-10-10 14:43:44', 'edelmon23'),
(40, '95.143.71.29', '2023-10-10 14:43:47', 'edelmon23'),
(41, '95.143.71.29', '2023-10-10 14:44:08', 'agirard23'),
(42, '95.143.71.29', '2023-10-10 14:44:11', 'agirard23'),
(43, '95.143.71.29', '2023-10-10 14:44:31', 'edelmon23'),
(44, '95.143.71.29', '2023-10-10 14:44:33', 'agirard23'),
(45, '95.143.71.29', '2023-10-10 14:44:41', 'agirard23'),
(46, '95.143.71.29', '2023-10-10 14:44:43', 'agirard23'),
(47, '95.143.71.29', '2023-10-10 14:44:45', 'agirard23'),
(48, '77.141.37.179', '2023-10-10 20:21:41', 'kfakir23'),
(49, '82.65.172.45', '2023-10-10 22:07:46', 'marceaurodrigues'),
(50, '37.174.130.159', '2023-10-11 10:13:21', 'marceaurodrigues'),
(51, '77.141.37.179', '2023-10-11 10:33:38', 'kfakir23'),
(52, '95.143.71.29', '2023-10-11 15:03:06', 'marceaurodrigues'),
(53, '88.167.116.8', '2023-10-11 18:50:35', 'aherbette23'),
(54, '77.141.37.179', '2023-10-11 18:54:47', 'kfakir23'),
(55, '95.143.71.29', '2023-10-12 09:22:43', 'ydilmamode23'),
(56, '95.143.71.29', '2023-10-12 09:42:30', 'edelmon23'),
(57, '95.143.71.29', '2023-10-12 11:35:50', 'kfakir23'),
(58, '37.174.7.191', '2023-10-12 11:43:10', 'marceaurodrigues'),
(59, '95.143.71.29', '2023-10-12 14:53:06', 'agirard23'),
(60, '37.174.7.191', '2023-10-12 14:55:19', 'marceaurodrigues'),
(61, '82.65.172.45', '2023-10-12 18:44:08', 'marceaurodrigues'),
(62, '82.65.172.45', '2023-10-12 19:59:16', 'marceaurodrigues'),
(63, '95.143.71.29', '2023-10-13 07:08:20', 'marceaurodrigues'),
(64, '95.143.71.29', '2023-10-13 11:41:53', 'marceaurodrigues'),
(65, '37.167.117.18', '2023-10-13 13:23:28', 'marceaurodrigues'),
(66, '82.65.172.45', '2023-10-13 17:31:52', 'marceaurodrigues'),
(67, '82.65.172.45', '2023-10-13 18:52:29', 'ambroise'),
(68, '82.65.172.45', '2023-10-13 18:52:36', '123456789'),
(69, '82.65.172.45', '2023-10-13 20:16:41', 'marceaurodrigues'),
(70, '82.65.172.45', '2023-10-13 21:11:48', 'marceaurodrigues'),
(71, '92.88.171.213', '2023-10-13 23:15:50', 'aherbette23'),
(72, '77.141.37.179', '2023-10-14 08:39:23', 'kfakir23'),
(73, '92.88.170.125', '2023-10-14 12:03:44', 'aherbette23'),
(74, '77.141.37.179', '2023-10-14 16:09:48', 'kfakir23'),
(75, '77.141.37.179', '2023-10-14 20:51:20', 'kfakir23'),
(76, '77.141.37.179', '2023-10-15 12:20:35', 'kfakir23'),
(77, '2.9.135.188', '2023-10-15 13:27:01', 'agirard23'),
(78, '95.143.71.29', '2023-10-16 07:28:40', 'lvongsy23'),
(79, '95.143.71.29', '2023-10-16 07:30:01', 'sdellarica23'),
(80, '95.143.71.29', '2023-10-16 07:30:08', 'kfakir23'),
(81, '95.143.71.29', '2023-10-16 07:41:42', 'aherbette23'),
(82, '95.143.71.29', '2023-10-16 07:48:48', 'edelmon23'),
(83, '37.165.193.6', '2023-10-16 07:51:33', 'marceaurodrigues'),
(84, '95.143.71.29', '2023-10-16 09:46:58', 'agirard23'),
(85, '95.143.71.29', '2023-10-16 12:26:55', 'lvongsy23'),
(86, '95.143.71.29', '2023-10-16 14:12:58', 'sdellarica23'),
(87, '95.143.71.29', '2023-10-16 14:41:09', 'marceaurodrigues'),
(88, '95.143.71.29', '2023-10-16 14:57:12', 'kfakir23'),
(89, '82.65.172.45', '2023-10-16 17:13:56', 'marceaurodrigues'),
(90, '95.143.71.29', '2023-10-17 07:04:54', 'kfakir23'),
(91, '95.143.71.29', '2023-10-17 07:18:39', 'lvongsy23'),
(92, '95.143.71.29', '2023-10-17 07:39:15', 'marceaurodrigues'),
(93, '95.143.71.29', '2023-10-17 09:28:47', 'sdellarica23'),
(94, '95.143.71.29', '2023-10-17 13:20:54', 'aherbette23'),
(95, '82.65.172.45', '2023-10-17 23:45:25', 'marceaurodrigues'),
(96, '95.143.71.29', '2023-10-18 07:42:03', 'kfakir23'),
(97, '37.165.214.9', '2023-10-18 08:38:11', 'marceaurodrigues'),
(98, '37.165.214.9', '2023-10-18 09:47:53', 'marceaurodrigues'),
(99, '95.143.71.29', '2023-10-18 10:05:59', 'kfakir23'),
(100, '78.240.217.250', '2023-10-19 09:15:17', 'marceaurodrigues'),
(101, '2.9.135.188', '2023-10-19 12:02:52', 'agirard23'),
(102, '2.9.135.188', '2023-10-19 12:03:01', 'agirard23'),
(103, '77.141.37.179', '2023-10-19 15:45:39', 'kfakir23'),
(104, '82.65.172.45', '2023-10-19 21:02:47', 'marceaurodrigues'),
(105, '77.141.37.179', '2023-10-20 11:35:29', 'kfakir23'),
(106, '77.141.37.179', '2023-10-21 16:12:07', 'kfakir23'),
(107, '82.65.172.45', '2023-10-21 20:28:10', 'marceaurodrigues'),
(108, '82.65.172.45', '2023-10-21 23:09:36', 'marceaurodrigues'),
(109, '95.143.71.29', '2023-10-23 07:41:06', 'kfakir23'),
(110, '95.143.71.29', '2023-10-23 07:43:00', 'kfakir23'),
(111, '95.143.71.29', '2023-10-23 07:43:50', 'kfakir23'),
(112, '95.143.71.29', '2023-10-23 07:43:58', 'lvongsy23'),
(113, '95.143.71.29', '2023-10-23 08:11:43', 'edelmon23'),
(114, '95.143.71.29', '2023-10-23 08:11:59', 'edelmon23'),
(115, '95.143.71.29', '2023-10-23 09:58:31', 'ydilmamode23'),
(116, '95.143.71.29', '2023-10-23 10:09:39', 'jcamossi23'),
(117, '95.143.71.29', '2023-10-23 11:35:31', 'jcamossi23'),
(118, '95.143.71.29', '2023-10-23 11:42:20', 'jcamossi23'),
(119, '95.143.71.29', '2023-10-23 12:07:35', 'agirard23'),
(120, '82.65.172.45', '2023-10-23 17:15:13', 'fbotta22'),
(121, '82.65.172.45', '2023-10-23 17:16:12', 'marceaurodrigues'),
(122, '2.9.135.188', '2023-10-23 20:04:41', 'agirard23'),
(123, '95.143.71.29', '2023-10-24 07:04:46', 'marceaurodrigues'),
(124, '95.143.71.29', '2023-10-25 12:36:49', 'marceaurodrigues'),
(125, '95.143.71.29', '2023-10-25 12:39:06', 'lvongsy23'),
(126, '95.143.71.29', '2023-10-25 12:39:42', 'agirard23'),
(127, '95.143.71.29', '2023-10-26 07:05:42', 'jcamossi23'),
(128, '95.143.71.29', '2023-10-26 14:13:47', 'kfakir23'),
(129, '82.65.172.45', '2023-10-26 17:51:15', 'marceaurodrigues'),
(130, '82.65.172.45', '2023-10-26 17:53:31', 'fbotta22'),
(131, '82.65.172.45', '2023-10-26 21:58:08', 'marceaurodrigues'),
(132, '78.240.176.203', '2023-10-26 23:13:18', 'marceaurodrigues'),
(133, '78.240.176.203', '2023-10-26 23:13:40', 'fbotta22'),
(134, '82.65.172.45', '2023-10-26 23:14:15', 'marceaurodrigues'),
(135, '95.143.71.29', '2023-10-27 08:05:44', 'jcamossi23'),
(136, '95.143.71.29', '2023-10-27 12:04:28', 'marceaurodrigues'),
(137, '2.9.135.188', '2023-10-30 08:10:48', 'agirard23'),
(138, '95.143.71.29', '2023-10-30 08:12:26', 'marceaurodrigues'),
(139, '77.141.38.149', '2023-10-30 09:00:40', 'kfakir23'),
(140, '78.240.1.22', '2023-10-30 09:19:24', 'marceaurodrigues'),
(141, '2.9.135.188', '2023-10-30 10:20:52', 'agirard23'),
(142, '77.141.38.149', '2023-10-30 12:56:51', 'kfakir23'),
(143, '95.143.71.29', '2023-10-30 13:12:32', 'marceaurodrigues'),
(144, '95.143.71.29', '2023-10-30 13:18:09', 'stagiaire'),
(145, '95.143.71.29', '2023-10-30 13:19:06', 'stagiaire'),
(146, '77.141.38.149', '2023-10-30 13:38:50', 'kfakir23'),
(147, '78.240.1.22', '2023-10-30 14:24:17', 'stagiaire'),
(148, '78.240.1.22', '2023-10-30 14:24:25', 'stagiaire'),
(149, '78.240.1.22', '2023-10-30 14:25:46', 'stagiaire'),
(150, '78.240.1.22', '2023-10-30 14:28:27', 'stagiaire'),
(151, '78.240.1.22', '2023-10-30 14:28:33', 'stagiaire'),
(152, '78.240.1.22', '2023-10-30 14:29:19', 'stagiaire'),
(153, '78.240.1.22', '2023-10-30 14:30:05', 'stagiaire'),
(154, '95.143.71.29', '2023-10-30 14:47:31', 'marceaurodrigues'),
(155, '2.9.135.188', '2023-10-30 16:12:39', 'agirard23'),
(156, '82.65.172.45', '2023-10-30 20:40:27', 'marceaurodrigues'),
(157, '82.65.172.45', '2023-10-30 21:24:20', 'fbotta22'),
(158, '82.65.172.45', '2023-10-30 21:35:38', 'marceaurodrigues'),
(159, '82.65.172.45', '2023-10-30 21:36:05', 'marceaurodrigues'),
(160, '82.65.172.45', '2023-10-30 21:36:12', 'marceaurodrigues'),
(161, '82.65.172.45', '2023-10-30 21:36:31', 'marceaurodrigues'),
(162, '82.65.172.45', '2023-10-30 22:28:49', 'fbotta22'),
(163, '77.141.37.47', '2023-10-31 08:20:50', 'kfakir23'),
(164, '2.9.135.188', '2023-10-31 08:44:53', 'agirard23'),
(165, '95.143.71.29', '2023-10-31 08:52:34', 'marceaurodrigues'),
(166, '95.143.71.29', '2023-10-31 13:53:34', 'marceaurodrigues'),
(167, '90.60.243.119', '2023-11-02 19:34:59', 'sdellarica23'),
(168, '82.65.172.45', '2023-11-05 16:34:34', 'marceaurodrigues'),
(169, '82.65.172.45', '2023-11-05 16:35:10', 'fbotta22'),
(170, '82.65.172.45', '2023-11-05 16:38:40', 'marceaurodrigues'),
(171, '82.65.172.45', '2023-11-05 16:40:12', 'sverniere23'),
(172, '82.65.172.45', '2023-11-05 16:40:40', 'marceaurodrigues'),
(173, '82.65.172.45', '2023-11-05 16:41:11', 'sverniere23'),
(174, '82.65.172.45', '2023-11-05 20:25:58', 'marceaurodrigues'),
(175, '95.143.71.29', '2023-11-06 08:05:55', 'marceaurodrigues'),
(176, '176.183.214.205', '2023-11-06 08:55:44', 'sverniere23'),
(177, '90.76.178.74', '2023-11-06 08:55:57', 'asigur23'),
(178, '88.174.192.188', '2023-11-06 08:56:55', 'eroger23'),
(179, '90.55.68.168', '2023-11-06 08:57:23', 'tportoles23'),
(180, '78.113.69.240', '2023-11-06 08:57:44', 'sperie23'),
(181, '90.51.59.248', '2023-11-06 08:58:30', 'amoreno23'),
(182, '82.216.137.249', '2023-11-06 08:58:34', 'jnivesse23'),
(183, '90.21.58.148', '2023-11-06 09:00:19', 'jmayer23'),
(184, '176.165.215.138', '2023-11-06 09:00:43', 'adumay'),
(185, '90.113.46.201', '2023-11-06 09:00:52', 'adelbos23'),
(186, '90.21.58.148', '2023-11-06 09:00:55', 'jmayer23'),
(187, '176.165.215.138', '2023-11-06 09:01:35', 'adumay'),
(188, '88.168.132.86', '2023-11-06 09:01:46', 'jleprat23'),
(189, '86.193.88.63', '2023-11-06 09:01:50', 'csanchez23'),
(190, '37.170.125.56', '2023-11-06 09:01:57', 'marceaurodrigues'),
(191, '176.165.215.138', '2023-11-06 09:01:58', 'adumay23'),
(192, '31.94.15.1', '2023-11-06 09:03:00', 'kevon40@mailrez.com'),
(193, '31.94.15.1', '2023-11-06 09:03:02', 'joelle.rolfson43'),
(194, '31.94.15.1', '2023-11-06 09:03:04', 'Morel'),
(195, '31.94.15.1', '2023-11-06 09:03:06', 'Morel'),
(196, '82.3.91.18', '2023-11-06 09:03:11', 'cbrugiafreddo23'),
(197, '176.165.215.138', '2023-11-06 09:06:05', 'Adèle'),
(198, '90.21.58.148', '2023-11-06 09:06:07', 'Justin'),
(199, '90.51.59.248', '2023-11-06 09:06:14', 'amoreno23'),
(200, '176.165.215.138', '2023-11-06 09:06:15', 'adumay23'),
(201, '90.21.58.148', '2023-11-06 09:06:29', 'jamyer23'),
(202, '90.51.59.248', '2023-11-06 09:06:32', 'amoreno23'),
(203, '90.51.59.248', '2023-11-06 09:06:36', 'amoreno23'),
(204, '90.51.59.248', '2023-11-06 09:06:38', 'amoreno23'),
(205, '90.21.58.148', '2023-11-06 09:06:38', 'jmayer23'),
(206, '90.51.59.248', '2023-11-06 09:06:43', 'amoreno23'),
(207, '90.51.59.248', '2023-11-06 09:06:49', 'amoreno23'),
(208, '90.51.59.248', '2023-11-06 09:07:15', 'amoreno23'),
(209, '90.51.59.248', '2023-11-06 09:08:51', 'amoreno23'),
(210, '90.51.59.248', '2023-11-06 09:12:16', 'amoreno23'),
(211, '78.113.69.240', '2023-11-06 09:36:58', 'sperie23'),
(212, '51.75.141.254', '2023-11-06 09:59:04', 'Royer'),
(213, '51.75.141.254', '2023-11-06 09:59:06', 'elisa93@mailrez.com'),
(214, '51.75.141.254', '2023-11-06 09:59:08', 'baptiste_mathieu'),
(215, '51.75.141.254', '2023-11-06 09:59:10', 'Royer'),
(216, '51.75.141.254', '2023-11-06 09:59:11', 'Royer'),
(217, '90.55.68.168', '2023-11-06 09:59:44', 'tportoles23'),
(218, '90.51.59.248', '2023-11-06 10:00:37', 'amoreno23'),
(219, '90.51.59.248', '2023-11-06 10:00:44', 'amoreno23'),
(220, '90.51.59.248', '2023-11-06 10:00:59', 'amoreno23'),
(221, '90.51.59.248', '2023-11-06 10:01:45', 'amoreno23'),
(222, '90.51.59.248', '2023-11-06 10:04:21', 'amoreno23'),
(223, '90.51.59.248', '2023-11-06 10:12:58', 'amoreno23'),
(224, '90.51.59.248', '2023-11-06 10:47:40', 'amoreno23'),
(225, '90.51.59.248', '2023-11-06 10:55:58', 'amoreno23'),
(226, '90.21.58.148', '2023-11-06 10:56:35', 'Justin'),
(227, '90.21.58.148', '2023-11-06 10:56:41', 'jmayer23'),
(228, '90.51.59.248', '2023-11-06 10:57:12', 'amoreno23'),
(229, '86.193.88.63', '2023-11-06 10:58:20', 'csanchez23'),
(230, '90.21.58.148', '2023-11-06 11:55:04', 'jmayer23'),
(231, '88.174.192.188', '2023-11-06 12:23:05', 'eroger23'),
(232, '88.174.192.188', '2023-11-06 12:23:33', 'eroger23'),
(233, '78.113.69.240', '2023-11-06 12:27:07', 'sperie23'),
(234, '78.113.69.240', '2023-11-06 12:27:07', 'sperie23'),
(235, '90.113.46.201', '2023-11-06 12:42:49', 'adelbos23'),
(236, '37.170.125.56', '2023-11-06 12:42:49', 'marceaurodrigues'),
(237, '90.21.58.148', '2023-11-06 12:45:14', 'jmayer23'),
(238, '90.51.59.248', '2023-11-06 12:45:24', 'amoreno23'),
(239, '176.165.215.138', '2023-11-06 12:46:21', 'adumay23'),
(240, '78.113.69.240', '2023-11-06 12:46:25', 'sperie23'),
(241, '78.113.69.240', '2023-11-06 12:46:25', 'sperie23'),
(242, '90.21.58.148', '2023-11-06 13:14:26', 'jmayer23'),
(243, '86.193.88.63', '2023-11-06 13:14:50', 'csanchez23'),
(244, '82.216.137.249', '2023-11-06 13:16:53', 'jnivesse23'),
(245, '82.65.172.45', '2023-11-06 18:41:35', 'marceaurodrigues'),
(246, '88.174.192.188', '2023-11-07 07:49:34', 'eroger23'),
(247, '90.113.46.201', '2023-11-07 07:54:25', 'adelbos23'),
(248, '176.183.214.205', '2023-11-07 08:03:57', 'sverniere23'),
(249, '176.183.214.205', '2023-11-07 08:04:36', 'sverniere23'),
(250, '90.76.178.74', '2023-11-07 08:06:30', 'asigur23'),
(251, '78.113.69.240', '2023-11-07 08:11:18', 'sperie23'),
(252, '176.165.215.138', '2023-11-07 08:21:28', 'adumay23'),
(253, '82.3.91.18', '2023-11-07 08:24:54', 'cbrugiafreddo23'),
(254, '90.55.68.168', '2023-11-07 08:25:23', 'tportoles23'),
(255, '95.143.71.29', '2023-11-07 08:53:02', 'marceaurodrigues'),
(256, '176.165.215.138', '2023-11-07 11:35:21', 'Adèle'),
(257, '176.165.215.138', '2023-11-07 11:35:33', 'adumay23'),
(258, '88.168.132.86', '2023-11-07 12:11:34', 'jleprat23'),
(259, '37.169.158.36', '2023-11-07 12:55:21', 'marceaurodrigues'),
(260, '88.174.192.188', '2023-11-07 12:57:18', 'eroger23'),
(261, '82.216.137.249', '2023-11-07 13:46:00', 'jnivesse23'),
(262, '90.113.46.201', '2023-11-07 14:06:38', 'adelbos23'),
(263, '37.169.158.36', '2023-11-07 14:08:28', 'marceaurodrigues'),
(264, '90.21.58.148', '2023-11-07 15:08:43', 'justin23'),
(265, '90.21.58.148', '2023-11-07 15:08:47', 'jmayer23'),
(266, '90.21.58.148', '2023-11-07 15:20:38', 'jmayer23'),
(267, '90.21.58.148', '2023-11-07 15:20:48', 'jmayer23'),
(268, '82.65.172.45', '2023-11-07 23:02:23', 'marceaurodrigues'),
(269, '88.174.192.188', '2023-11-08 07:34:21', 'eroger23'),
(270, '88.168.132.86', '2023-11-08 08:06:21', 'jleprat23'),
(271, '90.51.59.248', '2023-11-08 08:06:30', 'amoreno23'),
(272, '176.165.215.138', '2023-11-08 08:06:39', 'adumay23'),
(273, '90.76.178.74', '2023-11-08 08:07:22', 'asigur23'),
(274, '37.171.202.163', '2023-11-08 08:08:37', 'marceaurodrigues'),
(275, '90.21.58.148', '2023-11-08 08:17:42', 'jmayer23'),
(276, '78.113.69.240', '2023-11-08 09:00:09', 'sperie23'),
(277, '176.165.215.138', '2023-11-08 09:15:48', 'adumay23'),
(278, '37.171.202.163', '2023-11-08 09:17:16', 'marceaurodrigues'),
(279, '88.174.192.188', '2023-11-08 09:34:16', 'eroger23'),
(280, '82.216.137.249', '2023-11-08 09:42:06', 'jnivesse23'),
(281, '176.165.215.138', '2023-11-08 09:55:07', 'adumay23'),
(282, '82.216.137.249', '2023-11-08 10:00:18', 'jnivesse23'),
(283, '176.183.214.205', '2023-11-08 10:29:40', 'sverniere23'),
(284, '90.21.58.148', '2023-11-08 11:07:35', 'jmayer23'),
(285, '88.174.192.188', '2023-11-08 12:13:45', 'eroger23'),
(286, '90.51.59.248', '2023-11-08 13:07:52', 'amoreno23'),
(287, '90.113.46.201', '2023-11-08 13:10:22', 'adelbos23'),
(288, '88.168.132.86', '2023-11-08 13:14:31', 'jleprat23'),
(289, '90.51.59.248', '2023-11-08 13:17:59', 'amoreno23'),
(290, '176.165.215.138', '2023-11-08 15:02:52', 'adumay23'),
(291, '176.183.214.205', '2023-11-08 16:25:03', 'sverniere23'),
(292, '82.216.137.249', '2023-11-08 16:50:30', 'jnivesse23'),
(293, '82.65.172.45', '2023-11-08 22:39:51', 'marceaurodrigues'),
(294, '92.88.171.40', '2023-11-08 22:53:37', 'aherbette23'),
(295, '95.143.71.29', '2023-11-09 08:08:23', 'kfakir23'),
(296, '95.143.71.29', '2023-11-09 08:11:56', 'marceaurodrigues'),
(297, '95.143.71.29', '2023-11-09 08:12:41', 'jcamossi23'),
(298, '95.143.71.29', '2023-11-09 08:12:42', 'sdellarica23'),
(299, '95.143.71.29', '2023-11-09 08:12:47', 'agirard23'),
(300, '95.143.71.29', '2023-11-09 08:13:03', 'kfakir23'),
(301, '95.143.71.29', '2023-11-09 08:13:28', 'ydilmamode23'),
(302, '95.143.71.29', '2023-11-09 08:13:50', 'aherbette23'),
(303, '95.143.71.29', '2023-11-09 08:14:02', 'ydilmamode23'),
(304, '95.143.71.29', '2023-11-09 08:14:23', 'ydilmamode23'),
(305, '95.143.71.29', '2023-11-09 11:05:38', 'marceaurodrigues'),
(306, '95.143.71.29', '2023-11-09 11:16:11', 'fbotta22'),
(307, '95.143.71.29', '2023-11-09 11:19:21', 'edelmon23'),
(308, '95.143.71.29', '2023-11-09 11:19:32', 'agirard23'),
(309, '95.143.71.29', '2023-11-09 11:20:25', 'agirard23'),
(310, '95.143.71.29', '2023-11-09 11:21:14', 'jcamossi23'),
(311, '88.168.132.86', '2023-11-09 12:32:45', 'jleprat23'),
(312, '95.143.71.29', '2023-11-09 12:38:09', 'agirard23'),
(313, '95.143.71.29', '2023-11-09 13:28:16', 'sdellarica23'),
(314, '95.143.71.29', '2023-11-09 13:58:35', 'agirard23'),
(315, '95.143.71.29', '2023-11-09 14:26:56', 'leymard23'),
(316, '88.168.132.86', '2023-11-09 17:59:34', 'jleprat23'),
(317, '82.65.172.45', '2023-11-09 21:19:44', 'marceaurodrigues'),
(318, '82.65.172.45', '2023-11-09 21:25:41', 'marceaurodrigues'),
(319, '37.169.85.106', '2023-11-10 10:01:18', 'marceaurodrigues'),
(320, '37.169.85.106', '2023-11-10 10:24:44', 'marceaurodrigues'),
(321, '95.143.71.29', '2023-11-10 10:46:56', 'marceaurodrigues'),
(322, '90.51.59.248', '2023-11-10 11:40:43', 'amoreno23'),
(323, '37.169.85.106', '2023-11-10 13:21:06', 'marceaurodrigues'),
(324, '37.169.85.106', '2023-11-10 13:58:34', 'marceaurodrigues'),
(325, '90.55.68.168', '2023-11-11 14:38:36', 'tportoles23'),
(326, '90.51.59.248', '2023-11-13 08:41:49', 'amoreno23'),
(327, '90.51.59.248', '2023-11-13 09:21:26', 'amoreno23'),
(328, '78.193.10.216', '2023-11-13 09:46:04', 'leymard23'),
(329, '88.174.192.188', '2023-11-13 12:28:41', 'eroger23'),
(330, '37.170.5.63', '2023-11-13 13:19:51', 'marceaurodrigues'),
(331, '82.216.137.249', '2023-11-13 13:20:13', 'jnivesse23'),
(332, '91.168.117.197', '2023-11-13 14:00:15', 'edelmon23'),
(333, '82.65.172.45', '2023-11-13 20:48:15', 'marceaurodrigues'),
(334, '82.65.172.45', '2023-11-13 20:48:22', 'marceaurodrigues'),
(335, '82.65.172.45', '2023-11-13 20:48:34', 'marceaurodrigues'),
(336, '82.65.172.45', '2023-11-13 20:49:18', 'marceaurodrigues'),
(337, '82.65.172.45', '2023-11-13 20:58:16', 'marceaurodrigues'),
(338, '82.65.172.45', '2023-11-13 20:59:07', 'marceaurodrigues'),
(339, '82.65.172.45', '2023-11-13 21:04:30', 'fbotta22'),
(340, '82.65.172.45', '2023-11-13 21:04:41', 'fbotta22'),
(341, '82.65.172.45', '2023-11-13 21:05:11', 'fbotta22'),
(342, '82.65.172.45', '2023-11-13 21:09:23', 'fbotta22'),
(343, '82.65.172.45', '2023-11-13 21:12:04', 'marceaurodrigues'),
(344, '82.65.172.45', '2023-11-13 21:41:57', 'marceaurodrigues'),
(345, '82.65.172.45', '2023-11-13 22:28:05', 'Marceaurodrigues'),
(346, '82.65.172.45', '2023-11-13 23:02:49', 'marceaurodrigues'),
(347, '82.65.172.45', '2023-11-13 23:17:25', 'fbotta22'),
(348, '82.65.172.45', '2023-11-13 23:27:38', 'marceaurodrigues'),
(349, '82.65.172.45', '2023-11-13 23:39:27', 'fbotta22'),
(350, '82.65.172.45', '2023-11-14 00:19:52', 'marceaurodrigues'),
(351, '82.65.172.45', '2023-11-14 00:29:36', 'marceaurodrigues'),
(352, '90.113.46.201', '2023-11-14 07:49:27', 'adelbos23'),
(353, '95.143.71.29', '2023-11-14 09:05:18', 'marceaurodrigues'),
(354, '95.143.71.29', '2023-11-14 09:07:01', 'marceaurodrigues'),
(355, '95.143.71.29', '2023-11-14 10:01:52', 'marceaurodrigues'),
(356, '37.174.36.119', '2023-11-14 11:10:18', 'marceaurodrigues'),
(357, '90.51.59.248', '2023-11-14 12:41:47', 'amoreno23'),
(358, '176.183.214.205', '2023-11-14 12:41:49', 'sverniere23'),
(359, '88.174.192.188', '2023-11-14 12:52:49', 'eroger23'),
(360, '37.174.36.119', '2023-11-14 13:35:29', 'marceaurodrigues'),
(361, '90.76.178.74', '2023-11-14 13:56:39', 'asigur23'),
(362, '90.113.46.201', '2023-11-14 14:12:09', 'adelbos23'),
(363, '82.216.137.249', '2023-11-14 14:23:00', 'jnivesse23'),
(364, '90.60.243.119', '2023-11-14 15:45:41', 'sdellarica23'),
(365, '82.65.172.45', '2023-11-14 18:12:29', 'marceaurodrigues'),
(366, '82.65.172.45', '2023-11-14 19:47:40', 'marceaurodrigues'),
(367, '88.168.132.86', '2023-11-14 20:18:29', 'jleprat23'),
(368, '82.65.172.45', '2023-11-14 22:08:12', 'marceaurodrigues');

-- --------------------------------------------------------

--
-- Structure de la table `cours`
--

DROP TABLE IF EXISTS `cours`;
CREATE TABLE `cours` (
  `cours_id` int(11) NOT NULL,
  `cours_title` varchar(50) NOT NULL,
  `cours_synopsis` text NOT NULL,
  `cours_keywords` longtext NOT NULL,
  `cours_link` varchar(255) NOT NULL,
  `cours_position` int(11) NOT NULL DEFAULT 0,
  `id_module` int(11) NOT NULL DEFAULT 0,
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_title`, `cours_synopsis`, `cours_keywords`, `cours_link`, `cours_position`, `id_module`, `id_formateur`) VALUES
(1, 'Introduction au HTML', 'Plongez-vous dans l\'informatique et découvrez les fondements de la programmation.\nIci, vous allez apprendre les bases pour construire une page web.', 'html;balises par paires;balises orphelines;éditeur;web;internet;url;parents;enfants;chevrons;slash;attribut;valeur;indentation;camelcase;commentaires', '2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', 0, 6, 1),
(2, 'Les balises', 'Attaquez la programmation en découvrant les balises HTML', 'html;chrevrons;balises par paires;balises orphelines;block;inline;parent;enfant;paragraphe;div;span;ancre;chemin relatif;chemin absolu;identifiant;camelcase;snakecase;href;src;alt;listes ordonnées;listes non-ordonnées;header;footer;nav;section;article;aside;balises sémantiques', '2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', 1, 6, 1),
(17, 'Introduction', 'Attaquez les bases des feuilles de style.', 'css;styliser;style;link;sélecteurs;propriétés;valeurs;séparateurs;commentaires;cascade;ordre d\'éxécution;héritage;règles;déclarations', '2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', 0, 7, 1),
(18, 'Sélecteurs simples', 'Apprenez à manipuler les sélecteurs basiques pour pouvoir styliser votre page web.', 'css;sélecteur;unicité;multiplicité;sélections multiples;sélections imbriquées;sélections par attribut;sélections avancées', '2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', 1, 7, 1),
(19, 'Propriétés courantes', 'Dans ce cours, vous allez découvrir les propriétés les plus communément utilisées en CSS.', 'css;textes;background;super-propriétés;dimensions;couleurs;héxadécimal;rgb;rgba', '2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', 2, 7, 1),
(20, 'Les pseudo-classes', 'Vous allez découvrir ici l\'utilité des pseudo-classes qui peuvent permettre de dynamiser votre page web et de faire des règles plus complexes.', 'css;hover;visited;link;active;focus;first-child;last-child;nth-child;odd;even;notation fonctionnelle', '2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', 3, 7, 1),
(21, 'Flexbox', 'Découvrez comment fonctionne les flexbox et leurs placements.', 'css;margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;order', '2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', 4, 7, 1),
(22, 'Grid', 'Découvrez comment fonctionne les placements avec le système de grilles.', 'css;margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;lignes;colonnes;rows;columns;patterns', '2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', 5, 7, 1),
(23, 'Ombrages', 'Ajoutez de la dimension et de la profondeur à votre page avec les ombres.', 'css;box-shadow;text-shadow;décalages;flou;couleur', '2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', 6, 7, 1),
(24, 'Les dégradés', 'Démarquez vous avec l\'ajout de dégradés.', 'css;dégradés linéaires;dégradés radiaux;dégradés coniques;valeurs numéraires;valeur par mot-clé;to;from;rgb;rgba;héxadécimal;circle;ellipse;at', '2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', 7, 7, 1),
(25, 'Les tableaux', 'Découvrez comment mettre en forme des données avec les tableaux.', 'html;table;tr;th;td;caption;border;super-propriétés;thead;tbody;tfoot;rowspan;colspan', '2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', 2, 6, 1),
(26, 'Les formulaires', 'Apprenez à construire des formulaires pour récolter des informations auprès de vos utilisateurs.', 'html;form;méthode;attribut;addresse;method;action;get;post;input;type;placeholder;required;autofocus;label;for;textarea;cols;rows;file;accept;multiple;checkbox;checked;fieldset;legend;radio;select;option;optgroup;selected;submit;button;image;reset', '2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', 3, 6, 1),
(27, 'Les placements simples', 'Nous allons maintenant voir comment placer nos éléments dans la page web.', 'css;balises par paire;balises orphelines;balises block;balises inline;balises universelles;balises sémantiques;margin;border;padding;content;height;width;overflow;scroll;auto;hidden;word-wrap', '2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', 8, 7, 1),
(28, 'Les requêtes de média', 'Dans ce cours, vous allez voir une grosse partie. Les requêtes de média permettent d\'effectuer des changements personnalisés en fonction des appareils, de leur orientation et de leur dimension.', 'css;responsive design;media;annotations', '2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', 10, 7, 1),
(29, 'Les animations', 'Découvrez l\'univers des animations et commencez à dynamiser simplement vos pages web.', 'css;transform;rotate;deg;turn;abscisses;ordonnées;scale;translate;transformation oblique;skew;super-propriété', '2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', 11, 7, 1),
(30, 'Les animations avancées', 'Etoffez vos connaissances dans l\'art de l\'animation et dynamiser de façon plus complexes vos éléments.', 'css;transition;delay;function;super-propriété;keyframes;rotate;animation;duration;count;fill;direction', '2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', 12, 7, 1),
(31, 'Les audios et vidéos', 'Apprenez à intégrer du contenu multimédia dans vos pages: les sons et vidéos. ', 'html;mp3;aac;ogg;wav;aiff;audio;src;source;controls;autoplay;loop;width;preload;avi;mp4;mkv;codec;webm;h.256;ogg theora;video;poster;muted;disablepictureinpicture;iframe;intégration', '2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', 4, 6, 1),
(32, 'Introduction', 'Plongez dans vos premiers frameworks !', 'frameworks CSS;bootstrap;tailwind;nesCSS;', '2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', 0, 10, 1),
(33, 'Présentation approfondie de bootstrap', 'Dans ce cours, nous allons voir le détail de Bootstrap, son histoire, son évolution, son fonctionnement.', 'frameworks;classes;bootstrap', '2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', 1, 10, 1),
(34, 'Introduction et installation', 'Découvrez le langage SASS. Syntactically Awesome Style Sheets. Sa puissance vous permettra de progresser drastiquement dans vos réalisations et vos intégrations. Cliquez !', 'sass;scss;css;avance;installation;présentation;', '2PACX-1vTti2-lekl6iYheyecPgKdJRGZ3lOFL6kSVP3311tgYINIkt-vsu8dlQz-rT6yVAoCeugK1RL3zv5H1', 0, 21, 1),
(35, 'Cours sur Git', 'Dans ce cours, vous allez apprendre à quoi sert git, comment vous en servir avec les commandes les plus utilisées.', 'git;git flow;github;gitlab', '2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', 1, 2, 1),
(36, 'MCD', 'Nous allons ici aborder la notion de MCD. &#10;Modèle Conceptuel des Données.&#10;Il s&#39;agit d&#39;une haute représentation graphique qui permet de comprendre facilement comment les éléments sont liés entre eux.', 'merise;mcd;modèle conceptuel des données;pattes;entités;propriétés;associations', '2PACX-1vRVMjFeSLZaPjrfE1g3xV6Vp9UguObvaKC93763kBaIr2G5T5uVNq6HaZeJPUvp101iLzczAR-W3GZn', 0, 14, 1),
(37, 'MLD', 'Nous allons ici aborder la notion de MLD. &#10;Modèle Logique des Données.&#10;Il s’agit de la représentation en ligne du schéma représentant la structure de la base de données.', 'merise;mld;modèle logique des données;clé primaire; clé étrangère;tables;tables d&#39;associations;champs', '2PACX-1vRAjZXsOP18FsgQKZohzExDboUw3E_Tugedrw7u-UQ9873SjXR2MsBosfGMgmB6R7Qtf_MOPDcpSZHJ', 0, 14, 1),
(38, 'Cahier des Charges', 'C&#39;est dans ce cours que vous pouvez retrouver la façon d&#39;élaborer un CDC. C&#39;est une partie essentielle du métier, afin de mettre à plat les choses dès le début avec le client sur les tâches à effectuer et pour quel prix par exemple.', 'cdc;cahier des charges;contraintes;clients', '2PACX-1vRvnxXMY7e1x6zFkzcN515FXoEPta2HiHJSsS4JVNEgYERRcqVSsSHRxS7SslRPrrl9bx3LSQs-Bt_H', 0, 3, 1),
(40, 'Présentation', 'Apprenez à réaliser des maquettes de vos applications et sites web afin de gagner du temps sur la totalité du projet et pouvoir faire des choix, sans coder.', 'maquette;maquettage;zoning;wireframe;prototype', '2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', 0, 4, 1),
(41, 'Présentation', 'Présentation du langage PHP.', 'php;présentation;', '2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', 0, 16, 1),
(42, 'Installation de l\'interpréteur de commandes', 'Installer la CLI (Command Line Interface) pour démarrer le développement back-end.', 'php;interpréteur de commandes;path;', '2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', 1, 16, 1),
(43, 'Structure de la page', 'Présentation de la structure de base d\'une page PHP, des commentaires.', 'php;commentaire;echo;structure;', '2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', 2, 16, 1),
(44, 'Les variables', 'Découvrez ou re-découvrez les variables en PHP.', 'php;variable;déclaration;affectation;type;', '2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', 3, 16, 1),
(45, 'Les opérateurs', 'Vérifiez les possibilités sur les valeurs mathématiques.', 'php;opérateur;var_dump;print_r;débogage;', '2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', 4, 16, 1),
(46, 'La concaténation', 'Ce cours vous donne les codes pour effectuer la concaténation de vos variables.', 'php;concaténer;concaténation;caractère d\'échappement;', '2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', 5, 16, 1),
(47, 'Les fonctions', 'Principe de base des fonctions avec des exemples et exercices avec et sans paramètres.', 'php;fonction;paramètre;return;', '2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', 6, 16, 1),
(48, 'Présentation', 'Découverte du framework back-end, Symfony !', 'symfony;presentation;', '2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', 0, 17, 1),
(49, 'Installation', 'Préparez vous pour utiliser Symfony avec sa CLI avec ce cours.', 'symfony;installation;tutoriel;configuration;', '2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', 1, 17, 1),
(50, 'Les bases', 'Explication de la structure d\'un projet Symfony.', 'symfony;fondamentaux;contrôleurs;entités;routeur;vues;services;les bases;', '2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', 2, 17, 1),
(51, 'Les bundles', 'Présentation des bundles, les plug-ins de Symfony !', 'symfony;bundles;plug-ins;plugins;', '2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', 3, 17, 1),
(52, 'Création d\'un projet', 'Démarrez votre premier projet !', 'symfony;initialisation;création;lancement serveur;server;start;', '2PACX-1vS2tw1cegUo1BDC8wHFc4l22fMBOakLx7yWdxk7hdv-1Id7PQwWi1fny-V-LSeTy04OIHXC2TWx5DiF', 4, 17, 1),
(53, 'Création d\'un contrôleur', 'Contrôleurs vous permettant de découper votre application en fonction de la route recherchée...', 'symfony;routes;controllers;contrôleurs;réponses;response;', '2PACX-1vSc4_MbKdfhexRKzk5TKttJv0zdlNUOP87OviKAj38wJPWZAmIiDvouFuY8B16PbcdshkKGiw3kftE1', 5, 17, 1),
(54, 'Les routes', 'Gestion des routes en Symfony, découvrez comment les trouver et les débugger !', 'symfony;routes;routing;routeur;router;URI;', '2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', 6, 17, 1),
(55, 'Les services', 'Présentation sommaire des Services Twig.\r\nLe langage réside sur ce principe également !', 'symfony;services;fonctions spécifiques;', '2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', 7, 17, 1),
(56, 'Twig', 'Découvrez le moteur de template Twig et ses syntaxes qui vont nous permettre de générer divers éléments dans nos vues !', 'symfony;twig;moteur de template;vues;views;', '2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', 8, 17, 1),
(57, 'Connexion et création de la base de données', 'Création de la BDD en Symfony avec le terminal de commandes !', 'symfony;bdd;base de données;connexion;création;.env;configuration;environnement;tutoriels;tutorials;phpmyadmin;doctrine;', '2PACX-1vTahJ9gmvEdET-J8-7e4YLy3Cjdbefnyj0XsQ0xh1HQhC3RM82-PXdEOLY-5c9V_af9AqXrRXVFRiJB', 9, 17, 1),
(59, 'Les entités', 'Génération de vos entités, pensez objet !', 'symfony;poo;programmation orientée objets;objects;classes;entités;persistance des données;relations;types de données;', '2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', 10, 17, 1),
(60, 'Les migrations', 'Mettre à jour les informations de structure en BDD grâce aux migrations.', 'symfony;migrations;bdd;base de données;générer;génération;', '2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', 11, 17, 1),
(61, 'L\'authentification', 'Générez les formulaires d\'inscription et de connexion pour votre application !', 'symfony;authentification;connexion;inscription;', '2PACX-1vQ-l1X-ALWo7drQLBNIy40YUeuC7LR7G0K44MRDQCDxEfMEuQjMl6DXkGnc5kStlmU-bqlcnfsGegii', 12, 17, 1),
(62, 'Les traits', 'Regrouper vos attributs communs pour éviter la redondance !', 'symfony;redondances;traits;classes;poo;programmation orientée objets;objects;', '2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', 13, 17, 1),
(63, 'Les DataFixtures', 'Générez un jeu de données facilement pour vos environnements grâce aux DataFixtures.', 'symfony;datas;datafixtures;faux;faker;jeu de données;', '2PACX-1vRNitnb5LvML76IEilkVeekjxJWI5JHvQ1hQC1nr6CzjZFjLo-sBFPrUqnMY-pcQ24T16EGIkmHepzy', 14, 17, 1),
(64, 'CRUD', 'Le CRUD automatisé en une commande !', 'symfony;crud;create;delete;read;update;mise à jour;suppression;création;insertion;lecture;gérer;automatisme;', '2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', 15, 17, 1),
(65, 'Formulaires', 'Créer des formulaires pour vos utilisateurs et vos CRUD... ', 'symfony;formulaires;forms;champs;types de données;', '2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', 16, 17, 1),
(66, 'Envoi d\'emails', 'Prévenir des clients, envoyer la newsletter, envoyer des factures... Les mails sont très utiles sur des applications. \r\nDécouvrez comment mettre cela en place dans Symfony.', 'symfony;emails;e-mails;gmail;smtp;dns;', '2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', 17, 17, 1),
(67, 'UX initiative', 'Découvrez des extensions à la Symfony vous permettant de nombreuses choses...\r\nGraphiques, autocomplétion, chargement différé d\'images...', 'symfony;ux initiative;bundles;autocomplétion;lazy loader;chartJS;graphiques;', '2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', 18, 17, 1),
(68, 'Les repositories', 'Accédez et manipulez vos données en utilisant les Repositories.', 'symfony;repository;repositories;données;bdd;base de données;manipulation;', '2PACX-1vTxxGyMlv5FrrNaJRk0iKsT6Mf-kkT6aFrUaRMfc0X2rxy0YxAmLfFaqvctHqngPOP2LMQutPzgJu3t', 19, 17, 1),
(69, 'Affichage, mise à jour et suppression d\'une donnée', 'Le CRUD manuel, mais version Symfony.\nDécouvrez comment gérer vos données.', 'symfony;crud;create;delete;read;update;mise à jour;suppression;création;insertion;lecture;gérer;', '2PACX-1vQS_fto6YCGB8DzCEDE9nAG5Yf-ntJ_zinNoE9UsaDribOyRJtw0X96CnUNpGx81Halrq6_mufhSSqN', 20, 17, 1),
(70, 'L\'API', 'L\'API se répand de plus en plus et est très utile pour vous comme les potentiels développeurs qui pourraient utiliser vos services. Découvrez comment en créer une ici.', 'symfony;api;application developper interface;développeurs;données;', '2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', 21, 17, 1),
(71, 'Les tests', 'Créer une application c\'est bien, la tester, c\'est mieux. Découvrez les tests dans ce cours.', 'symfony;tests,fonctionnels;unitaires;a/b;e2e;', '2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', 22, 17, 1),
(72, 'Cours sur Shell', 'Découvrez l\'environnement Shell, le terminal et ses syntaxes !', 'shell;commandes;terminal;linux;cd;mkdir;touch;rm;ls;cp;racine;pwd;echo;cat;grep;clear;history;apt;package;sh;chmod;', '2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', 0, 2, 1),
(73, 'Les conditions', 'Les conditions sont un incontournable dans le code.\r\nDécouvrez comment vous en servir avec ce cours.', 'php;conditions;if;elseif;endif;==;===;!=;!==;<>;<=>;and;or;&&;||;xor;', '2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', 7, 16, 1),
(74, 'Les boucles', 'Boucler sur son code, c\'est essentiel. Découvrez les différentes façons pour le faire ici.', 'php;boucles;for;foreach;while;', '2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', 8, 16, 1),
(75, 'Les tableaux', 'Encore un incontournable de la programmation, les tableaux. Manipulez les et découvrez tout à leur sujet ici !', 'php;tableaux;index;associatif;boucles;', '2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', 9, 16, 1),
(76, 'Les super globales', 'Des tableaux crées par PHP et qui nous permettent de nombreuses choses ? Oui, ce sont les super globales.', 'php;super globales;constantes;get;post;tableaux;formulaires;$_;', '2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', 10, 16, 1),
(77, 'Installer une distribution Apache', 'L\'un des serveurs web les plus répandus sur le WWW.\r\nDécouvrez comment l\'installer pour simuler un serveur, en local.', 'php;localhost;127.0.0.1;apache;wamp;mamp;xampp;', '2PACX-1vTTcfilJpVkrcipua3AKU45fBgU1ky1BVYp7WDzY_tZV-Xh79yRdUUS_-zN8w8Nnw5yGo3VCyn__t_w', 11, 16, 1),
(78, 'Importation de fichiers', 'Vous serez amenés à demander à vos utilisateurs d\'envoyer des données binaires (documents, photos, vidéos, ...). Pour savoir comment faire transiter ces informations et les sauvegarder, ça se passe ici !', 'php;files;super globales;$_;$_files;enctype;multipart/form-data;move_upload_file;types;accept;filesize;htmlentities;preg_replace;basename;multiple;', '2PACX-1vTtvUwVgHzbwl2efbJ1lv4kBepzaMwi9ZSvcI0dSeI5UdR-717yJ5oAxHpmxfk1HzZ2YhH2bkdnPgjj', 12, 16, 1),
(79, 'Interaction avec une base de données', 'Vous aurez besoin tôt ou tard de vous connecter à une BDD distante en PHP, pour rendre vos applications plus interactives, découvrez comment.', 'php;bdd;base de données;pdo;php data object;connexion;pdoexception;erreurs;tables;requêtes;préparées;classiques;injection SQL;query;prepare;bindParam;bindValue;attributs;structures;select;insert;update;delete;crud;', '2PACX-1vSrixypjTJE_Bgt45nrMdeYdlnanmVGyAOdsQwxk3bWNRKXghrUyEnCghixUF5wefZJEjQ-8Iyta_6j', 13, 16, 1),
(80, 'Système de connexion', 'Système simple de connexion pour des utilisateurs standards.', 'php;connexion;authentifier;sessions;session_start;pdo;bdd;base de données;include_once;require_once;unset;fetch;fetchAll;FETCH_ASSOC;FETCH_COLUMN;header;session_destroy;password_hash;hashage;bcrypt;bindparam;bindvalue;password_verify;', '2PACX-1vRSwY5O8-K0sIIrqisHqaNcquiVWw8JKCDswohjTMwEyLwhczOAzHowTnlwZXcDmQz2bftDfJI27T5S', 14, 16, 1),
(81, 'Les architectures', 'Découvrez les principales structures existantes pour concevoir vos sites.', 'php;php avancé;client serveur;mvc;modèle vue contrôleur;n-tiers;micro-services;routing;', '2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', 15, 16, 1),
(82, 'Les requêtes AJAX', 'Ici, un petit exemple pour montrer la puissance des requêtes dites asynchrones.\r\nPlus de rechargement intempestif pouvant gêner l\'utilisation !', 'php;php avancé;ajax;asynchrones;XMLHttpRequest;API fetch;jQuery;one page;rechargement;', '2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', 16, 16, 1),
(83, 'Les classes et objets', 'La base de la programmation orientée objets ! Découvrez les bases sur les classes, ici.', 'php;php avancé;objets;classes;objects;poo;programmation orientée objets;attributs;propriétés;méthodes;fonctions;déclaration;instances;instanciations;new;$this;instances;', '2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', 17, 16, 1),
(84, 'La portée des objets', 'Chaque attribut a une portée, découvrez comment les définir ici.', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;public;protected;private;publique;protégée;privée;encapsulation;intégrité;', '2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', 18, 16, 1),
(85, 'Les accesseurs et mutateurs', 'Apprenez ce que sont les accesseurs et mutateurs dans ce cours et apprenez à vous en servir.', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;accesseurs;mutateurs;getters;setters;$this;pseudo-variables;', '2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', 19, 16, 1),
(86, 'Le constructeur et le destructeur', 'Apprenez ici à manipuler le constructeur pour instancier vos classes avec des paramètres.', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;constructeurs;destructeurs;__construct;__destruct;$this;pseudo-variables;', '2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', 20, 16, 1),
(87, 'Les classes étendues', 'Apprenez ici à manipuler le constructeur pour instancier vos classes avec des paramètres.', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;héritages;extends;modularité;scalabilité;classe mère;classe fille;classe enfant;surcharges;parent;self;static;::;résolution de portée;constantes;const;statiques;static;abstraites;abstract;polymorphisme;interfaces;implements;implémente;', '2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', 21, 16, 1),
(88, 'Suggestion d\'utilisation des classes avec les BDD', 'Vous retrouverez ici un exemple d\'utilisation des classes avec une liaison en BDD.', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;héritages;sql;bdd;base de données;', '2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', 22, 16, 1),
(89, 'CRUD', 'Principe de base pour tout administrateur d\'un système informatique, le CRUD !', 'php;php avancé;poo;programmation orientée objets;objects;classes;class;acronyme;crud;create;read;update;delete;', '2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', 23, 16, 1),
(90, 'Envoi d\'email via Google', 'Confirmation, envoi de codes temporaires, informations, newsletters. Beaucoup de cas peuvent nous contraindre d\'utiliser un envoi d\'emails.\r\nDécouvrez une solution simple pour vos projets personnels.', 'php;php avancé;dépendances;emails;mailing;phpmailer;google;composer;', '2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', 24, 16, 1),
(91, 'Protection contre les failles', 'Nos utilisateurs sont tous malveillants. \r\nC\'est ce qu\'il faut penser et, en conséquence, adapter notre code pour contrôler le tout.', 'php;php avancé;failles;xss;cross-site scripting;injections sql;include;upload;reverse shell;backdoor;null;failles de session;', '2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', 25, 16, 1),
(92, 'Le débogage', 'Le débogage, c\'est la santé.\r\nPour savoir comment ça se passe, c\'est ici !', 'php;php avancé;débogage;var_dump;print_r;die;exit;echo;F12;réseau;inspecter;', '2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', 26, 16, 1),
(93, '.htaccess et VirtualHost', 'La configuration d\'un serveur c\'est tout une tâche qui au début est complexe, pour en apprendre les bases, c\'est ici que ça se passe !', 'php;php avancé;configuration;.htaccess;virtualhost;redirection;indexation;crawl;robots;sous-domaines;', '2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', 27, 16, 1),
(94, 'Les tests', 'Créer un site, c\'est blop, mais le tester, c\'est mieux !\nLes tests sont essentiels pour s\'assurer que notre application reste intègre malgré des changements.\nPour savoir comment faire, c\'est ici !', 'php;php avancé;tests;tests unitaires;tests fonctionnels;', '2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', 28, 16, 1),
(95, 'Protection des données', 'Créer un site, c\'est bien.\r\nMais cela implique des responsabilités, vis-à-vis de nos utilisateurs.', 'php;php avancé;rgpd;protection des données;', '2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', 29, 16, 1),
(96, 'Les Websockets', 'Découvrez la puissance des Websockets et leurs cas d\'utilisation... ', 'php;php avancé;websockets;services;écouteurs;', '2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', 30, 16, 1),
(97, 'Mémo', 'Petite diapo reprenant les syntaxes essentielles...', 'sql;mémo;types;json;datetime;int;varchar;text;double;float;boolean;not null;default;primary key;auto_increment;create;table;database;if;not;exists;alter;delete;drop;grant;revoke;update;insert;select;where;limit;offset;having;min;max;group by;order by;like;cast;length;chr;||;substr;upper;lower;pow;sqrt;rand;round;count;sum;avg;jointures;join;inner;cross;left;outer;right;full;self;natural;union;', '2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', 0, 15, 1),
(98, 'PhpMyAdmin', 'Apprenez à vous servir de l\'outil de gestion de BDD PhpMyAdmin.', 'sql;phpmyadmin;tutoriel;', '2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', 1, 15, 1),
(99, 'Introduction', 'Découvrez ce qu\'est le SQL, le langage qui parlait aux bases de données...', 'sql;sgbr;sequel;tables;bdd;databases;enregistrements;tuples;vues;permissions;', '2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', 2, 15, 1),
(100, 'Concepts de base', 'Qu\'est-ce que c\'est ? A quoi ça sert ? Les réponses se trouvent ici !', 'sql;tuples;enregistrements;tables;bddr;attributs;clé de relation;contraintes d\'intégrité relationnelles;normalisation;', '2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', 3, 15, 1),
(101, 'Syntaxes des instructions SQL', 'Toutes les structures dont vous aurez besoin pour commencer se trouvent ici...', 'sql;structures;instructions;select;create;table;drop;desc;asc;rollback;index;database;truncate;use;alter;insert;update;delete;commit;clauses;agrégations;count;distinct;where;and;or;in;not;between;like;order;group;having;by;', '2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', 4, 15, 1),
(102, 'Introduction', 'Découvrez ces représentations graphiques qui nous permettent de décrire le principe de fonctionnement de notre application...', 'uml;introduction;poo;programmation orientée objets;unified modelling language;', '2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', 0, 5, 1),
(103, 'Diagramme de cas d\'utilisation (Use Case)', 'Montrez simplement QUI aura accès à quoi...', 'uml;use case;diagramme de cas d\'utilisation;acteurs;associations;généralisations;dépendances;stéréotypes;inclusions;extensions;include;extend;scénario nominal;alternatifs;erreurs;scénarios;', '2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', 1, 5, 1),
(104, 'Diagramme d\'activité', 'Illustrez les actions exécutées par un SI.', 'uml;activité;diagrammes;activity;activities;initial point;points initiaux;final point;actions;control flow;join;fork;decision nodes;notes;send signal;accept signal;swimlane;', '2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', 2, 5, 1),
(105, 'Diagramme de séquence', 'Découvrez comment découper une fonctionnalité sur une temporalité !', 'uml;diagramme de séquence;temporalité;lifeline;scénarios alternatifs;scénarios d\'erreurs;message;async;reply;self;scénario nominal;atomicité;', '2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', 3, 5, 1),
(106, 'Diagramme de classe', 'Présentez vos classes, interfaces ainsi que leurs méthodes associées avec ce diagramme.', 'uml;diagramme de classe;classes;instances;instanciations;attributs;méthodes;opérations;clés primaires;primary key;associations;agrégations;compositions;cardinalités;visibilité;protected;public;private;protégées;publiques;privées;', '2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', 4, 5, 1),
(108, 'Présentation', 'Les bases de l\'UX/UI se trouvent dans ce cours !', 'ux;ui;user;interface;experience;', '2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', 0, 12, 1),
(109, 'Les opérateurs SQL', 'Redécouvrez les différents mots-clés disponibles pour les opérateurs en SQL.', 'sql;opérateurs;+;addition;-;soustraction;*;multiplication;/;division;\\%;modulo;=;!=;<>;>=;<=;!>;!<;all;any;between;exists;in;like;not;and;or;is null;unique;', '2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', 5, 15, 1),
(110, 'Création et suppression d\'une BDD', 'Instructions pour créer, utiliser et détruire une BDD.', 'sql;create;databases;drop;show;bdd;base de données;use;', '2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', 6, 15, 1),
(111, 'Types de données', 'Listing exhaustifs de nombreux types de données qui vous seront très utiles pour vos projets.', 'sql;types;bddr;base de données relationnelles;sql;numériques;date et heures;chaînes;unicode;binaires;autres;bit;tinyint;smallint;bigint;decimal;numeric;float;real;time;datetime;timestamp;year;char;varchar;text;longtext;mediumtext;enum;set;binary;image;clob;blob;xml;json;decimal;boolean;', '2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', 7, 15, 1),
(112, 'Création et suppression des tables', 'Instructions pour créer et supprimer une table.', 'sql;create;drop;truncate;table;engine;charset;innoDB;', '2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', 8, 15, 1),
(113, 'Modifier la structure d\'une table - ALTER TABLE', 'Apprenez à modifier la structure d\'une table.\r\nAjouter une colonne, modifier un type de donnée, ajouter une option, créer un index...', 'sql;alter table;drop;constraint;modify;', '2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', 9, 15, 1),
(114, 'Les contraintes', 'Découvrez la notion de contraintes sur les colonnes.', 'sql;not null;default;unique;check;primary key;foreign key;index;', '2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', 10, 15, 1),
(115, 'Insertion d\'un enregistrement - INSERT', 'Structure de l\'instruction d\'insertion d\'enregistrements.', 'sql;insert into;values;enregistrements;', '2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', 11, 15, 1),
(116, 'Mise à jour d\'un enregistrement - UPDATE', 'Structure de l\'instruction d\'update d\'un enregistrement.', 'sql;update;set;', '2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', 12, 15, 1),
(117, 'Suppression d\'un enregistrement - DELETE', 'Structure de l\'instruction delete d\'un enregistrement.', 'sql;delete;', '2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', 13, 15, 1),
(118, 'Récupérer des enregistrements - SELECT', 'Structure de l\'instruction select d\'un ou plusieurs enregistrement·s.', 'sql;select;from;', '2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', 14, 15, 1),
(119, 'Les alias - AS', 'Renommer des éléments (colonnes, tables) le temps d\'une requête pour faciliter la manipulation de ceux-ci.', 'sql;as;', '2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', 15, 15, 1),
(120, 'Filtrer les données - WHERE', 'Découvrez une utilisation basique de la clause where, et comment combiner des conditions !', 'sql;where;and;or;', '2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', 16, 15, 1),
(121, 'Modèles de recherche - LIKE', 'Effectuer des recherches rapidement grâce au mot-clé LIKE !', 'sql;like;patterns;_;\\%;', '2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', 17, 15, 1),
(122, 'Trier les données - ORDER BY', 'Lorsque l\'on récupère des informations, il est souvent bon de les trier pour qu\'elles suivent une certaine logique...', 'sql;order by;asc;desc;ascendant;descendant;', '2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', 18, 15, 1),
(123, 'Les jointures - JOIN', 'Lorsque l\'on travaille avec une BDDR, on a des relations entre nos tables. Pour utiliser ces liens et accéder aux informations entre les tables, nous pouvons utiliser la clause JOIN.', 'sql;join;jointures;cross;inner;left;right;self;', '2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', 19, 15, 1),
(124, 'Les fonctions d\'agrégats', 'Calculer sur l\'ensemble de votre table et ne retournez qu\'un seul résultat.', 'sql;fonctions;agrégats;agrégations;count;sum;avg;min;max;iso;', '2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', 20, 15, 1),
(125, 'Les regroupements - GROUP BY et HAVING', 'Regrouper vos lignes suivant un critère donné...', 'sql;group by;select;where;order by;', '2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', 21, 15, 1),
(126, 'Les sous-requêtes', 'Effectuer des sous-requêtes pour accéder à des informations d\'une table en fonction des résultats d\'une autre...', 'sql;sous-requêtes;=;any;all;not;', '2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', 22, 15, 1),
(127, 'Combinaison de plusieurs instructions - UNION', 'Réunissez les résultats de deux requêtes de sélection en une seule...', 'sql;union;union select;all;', '2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', 23, 15, 1),
(128, 'Les fonctions de manipulation de date', 'Les dates sont très utiles et puissantes et de nombreuses méthodes existent dessus...', 'sql;dates;now;curdate;curtime;extract;date_add;date_sub;date_format;datediff;year;month;day;', '2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', 24, 15, 1),
(129, 'Introduction', 'Découvre le CMS le plus répandus du monde: WordPress !', 'php;wordpress;wp;introduction;histoire;avantages;inconvénients;', '2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', 0, 19, 1),
(130, 'Installation', 'Pour installer WordPress, ça se passe ici !', 'php;wordpress;wp;installation;configuration;pré-requis;', '2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', 1, 19, 1),
(131, 'Interfaces', 'Découvrez les différentes interfaces du logiciel pour ne pas être perdus.', 'php;wordpress;wp;interfaces;administrations;blogs;posts;articles;', '2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', 2, 19, 1),
(132, 'Enjeux de la diffusion', 'Apprenez à quoi sert - dans les grandes lignes - le référencement d\'un site.', 'référencement;seo;sea;sxo;rgpd;outils;search;engine;optimization;optimisation;ads;advertising;experience;', '2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', 0, 18, 1),
(133, 'Search Engine Optimization - SEO', 'Découvrez le référencement naturel de base dans ce cours et comment faire pour l\'améliorer.', 'référencement;naturel;seo;search;engine;optimization;optimisation;balises;chargement;gratuit;crawl;robots;', '2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', 1, 18, 1),
(134, 'Search Engine Advertising - SEA', 'Découvrez le référencement payant. LA meilleure façon pour être sûr d\'atterrir dans les premiers résultats.', 'référencement;sea;search;engine;ads;advertising;pubs;publicités;payant;mis en avant;sponsorisé;', '2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', 2, 18, 1),
(135, 'Search eXperience Optimization - SEO', 'Finalement, un dernier moyen efficace d\'optimiser son site pour son référencement: travailler sur son UX.', 'référencement;sxo;search;experience;optimization;gratuit;ux;personae;heat map;utm;campagnes;', '2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', 3, 18, 1),
(136, 'RGPD et outils', 'Finalement, découvrez ce que vous vous devez d\'implémenter dans votre site pour respecter le RGPD et découvrez des outils sympa en lien avec le référencement !', 'référencement;rgpd;outils;', '2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', 4, 18, 1),
(137, 'Création de contenu', 'Découvrez comment fonctionne l\'enrichissement de votre site web ici.', 'php;wordpress;wp;administrations;blogs;posts;articles;pages;pagebuilder;drag and drop;', '2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', 3, 19, 1),
(138, 'Personnalisation du site', 'Apprenez à donner vie à votre site en lui donnant une charte graphique.\r\nBeaucoup plus pratique si l\'on souhaite en changer !', 'php;wordpress;wp;administrations;da;charte graphique;palettes;couleurs;esthétique;polices;typographie;', '2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', 4, 19, 1),
(139, 'Gestion des médias', 'Importez tous les éléments dont vous aurez besoin !\r\nLeur réutilisation est très facilitée par WP.', 'php;wordpress;wp;administrations;médias;photos;pictures;vidéos;', '2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', 5, 19, 1),
(140, 'Extensions et plugins', 'La force des CMS passe également par ça: les extensions.\r\nPermettant d\'enrichir facilement vos fonctionnalités !', 'php;wordpress;wp;administrations;extensions;plugins;', '2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', 6, 19, 1),
(141, 'Sécurité et maintenance', 'Assurez la maintenance du site tout en gardant à l\'œil l\'aspect sécurité de votre site WP.', 'php;wordpress;wp;administrations;sécurité;maintenance;maintenabilité;mises à jour;maj;update;duplicator;sauvegardes;backups;', '2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', 7, 19, 1),
(142, 'Le référencement - SEO', 'Découvrez comment fonctionne le référencement sous WP au travers de plugins, entre autres.', 'php;wordpress;wp;administrations;seo;référencements;search engine optimization;mise en avant;', '2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', 8, 19, 1),
(143, 'Les variables', 'Découvrez la syntaxe de base avec des variables permettant d\'alléger visuellement notre code et de faciliter sa maintenabilité !', 'sass;scss;css;avance;variables;$;dollar;', '2PACX-1vSzvW_T34g3L6RDpfoteyWdkOWnWXcSKaahostnNwVMlLzqLHmKbgQGLcGIxWtFtjrll8qHVQ-PjRHP', 1, 21, 1),
(144, 'L\'imbrication et le sélecteur parent', 'L\'une des forces de SASS, la hiérarchisation via l\'imbrication d\'éléments pour gagner en lecture !', 'sass;scss;css;avance;imbrication;hiérarchisation;sélecteur parent;&;', '2PACX-1vSSs5tSpeF_b455J49S-rVBd1qrToLtuJ77493JcDy8X9SyNDZEo6_sjZWY4yzLNX5u9E2bu_AchOWJ', 2, 21, 1),
(145, 'Les imports', 'Les imports sont essentiels en SASS, ils vous permettront d\'obtenir le comportement d\'autres fichiers .SCSS, .SASS ou .CSS.\r\nIls vous aideront à accéder à des mixins, fonctions ou variables qui peuvent être globales. Réinitialiser des comportement par défaut...', 'sass;scss;css;avance;import;règles;rules;importation;héritage;', '2PACX-1vTfYlMdB2fwc4iuzp4YbEbqUSKd79CG6gx9H1TUyIaeAj7ddHwL5FANytnVzX8Gon22foWknyR7acos', 3, 21, 1);

-- --------------------------------------------------------

--
-- Structure de la table `cours_modules`
--

DROP TABLE IF EXISTS `cours_modules`;
CREATE TABLE `cours_modules` (
  `cours_module_id` int(11) NOT NULL,
  `cours_module_libelle` varchar(50) NOT NULL,
  `cours_module_position` int(11) NOT NULL,
  `cours_module_uuid` uuid NOT NULL DEFAULT uuid(),
  `cours_module_illustration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours_modules`
--

INSERT INTO `cours_modules` (`cours_module_id`, `cours_module_libelle`, `cours_module_position`, `cours_module_uuid`, `cours_module_illustration`) VALUES
(1, 'Autres', -1, '9b8e2dec-aaab-493f-a691-c2c5f92aa782', 'no_data.svg'),
(2, 'Git', 0, '31deef88-6dc3-4b4b-8c80-44210a4eac31', 'git.svg'),
(3, 'CDC', 1, 'fd92e9ed-7490-44b2-93f0-d479adbf873d', 'cdc.svg'),
(4, 'Maquettage', 2, 'b865609e-8adc-4498-82be-4b2430391c73', 'maquettage.svg'),
(5, 'UML', 3, 'c89873e5-e1de-435e-8194-0c6e0b397a45', 'uml.svg'),
(6, 'HTML', 4, '5e7fe4a6-6a69-4a30-a773-8aa89fb85063', 'html.svg'),
(7, 'CSS', 5, '9fad5efb-631f-4e13-b796-80228f957ca8', 'css.svg'),
(8, 'Algorithmie', 6, '058a804e-e973-429f-8c96-de6b74bfea59', 'algo.svg'),
(9, 'JS', 7, '378064c2-4da9-4e84-8be9-f3281a43be49', 'javascript.svg'),
(10, 'Frameworks', 8, 'cd3f3c59-df5c-49b4-ac63-5deaedb1b5e5', 'frameworks_css.svg'),
(11, 'Graphisme', 9, '1e7fe469-b28d-4a6e-b5b8-7dbba04c14d7', 'graphisme.svg'),
(12, 'UX', 10, 'fde93664-824c-4b5c-ad8b-d34d48e565c7', 'ux_ui.svg'),
(13, 'ReactJS', 11, '0582910c-02ed-4398-8084-4681189abedb', 'reactjs.svg'),
(14, 'Merise', 12, 'de7f76f4-aae6-411e-9e98-1c4f410104e8', 'merise.svg'),
(15, 'SQL', 13, 'a6dc7a13-da58-401d-bd8a-ed3f0e15450e', 'sql.svg'),
(16, 'PHP', 14, '30a763b4-a685-436e-be84-38488d1386cc', 'php.svg'),
(17, 'Symfony', 15, '3a2d3008-5c0f-4e3f-93f8-d961d2989f5c', 'symfony.svg'),
(18, 'Referencement', 16, 'e39bff05-ac60-4008-b7ab-a2f5b82f7ab9', 'referencement.svg'),
(19, 'WordPress', 17, '77a3a77f-94c5-4cfa-9540-8eb815f7c926', 'wordpress.svg'),
(20, 'Reseau', 18, 'd23f3198-7435-11ee-a462-d05099fe7f18', 'reseau.svg'),
(21, 'SASS', 19, '9503b625-82cd-11ee-a462-d05099fe7f18', 'sass.svg');

-- --------------------------------------------------------

--
-- Structure de la table `cours_ressources`
--

DROP TABLE IF EXISTS `cours_ressources`;
CREATE TABLE `cours_ressources` (
  `cours_ressource_id` int(11) NOT NULL,
  `cours_ressource_titre` varchar(50) NOT NULL,
  `cours_ressource_resume` text DEFAULT NULL,
  `cours_ressource_lien` varchar(255) DEFAULT NULL,
  `cours_ressource_type` varchar(30) NOT NULL COMMENT 'tp;exercice;autre',
  `cours_ressource_archive` varchar(100) DEFAULT NULL,
  `cours_ressource_archive_lien` varchar(255) DEFAULT NULL,
  `id_cours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours_ressources`
--

INSERT INTO `cours_ressources` (`cours_ressource_id`, `cours_ressource_titre`, `cours_ressource_resume`, `cours_ressource_lien`, `cours_ressource_type`, `cours_ressource_archive`, `cours_ressource_archive_lien`, `id_cours`) VALUES
(9, 'TP CDC', 'TP sur le CDC', 'https://docs.google.com/document/d/17xHjg31bdiHJfEpvWC6ld--a8lPoV7dVx-BoVbGlS4o/edit?usp=sharing', 'tp', NULL, NULL, 38),
(10, 'CDC plan type', 'Retrouvez ici le plan type d&#39;un cahier des charges', 'https://docs.google.com/document/d/1KI5W3VtYcP1jH1553_T3inckC9JqdcVeC4-PE25T7BY/edit?usp=sharing', 'autre', NULL, NULL, 38),
(11, 'Exemple CDC Liny', 'Vous retrouverez ici le CDC de l&#39;application de rencontre Liny.', 'https://drive.google.com/file/d/1p2rjnNlyAuvl6zSksKcT65iMxMnY_0h5/view?usp=sharing', 'autre', NULL, NULL, 38),
(12, 'Exemple CDC Katastrophyk', 'Vous retrouverez ici le CDC de l&#39;application Katastrophyk.', 'https://drive.google.com/file/d/1WWjyg1JaPhCNSZm-sd4dfJmZil_dQCiV/view?usp=sharing', 'autre', NULL, NULL, 38),
(13, '01. TP Bedflix', 'Réalisez le Modèle Conceptuel de Données de l&#39;application de VOD Bedflix.', 'https://docs.google.com/document/d/1XreuDeKMMH1oKX2wWOprwZGAvVqKNQEYbcRFJict_-c/edit?usp=sharing', 'tp', NULL, NULL, 36),
(14, '02. TP Adnum', 'Réalisez le Modèle Conceptuel de Données de l&#39;Adnum pour gérer les flux.', 'https://docs.google.com/document/d/1z0DQDkwkGoMbRR1ABzNctn-KIwTQg2mwZxdHORdtTDQ/edit?usp=sharing', 'tp', NULL, NULL, 36),
(15, '03. TP ADRAR Classrooms', 'Réalisez le Modèle Conceptuel de Données de l&#39;ADRAR pour sa plateforme de cours en ligne.', 'https://docs.google.com/document/d/1XklOk60sarwFo3a1R1TQ16Fa5Gr8NaE5AaHj3QFh6RA/edit?usp=sharing', 'tp', NULL, NULL, 36),
(16, '04. TP e-commerce', 'Réalisez le Modèle Conceptuel de Données pour un site de e-commerce standard.', 'https://docs.google.com/document/d/17WS6MkgIo3uXZfiJznP1YZ7XKc51BH4z0zEBS7AWQKE/edit?usp=drive_link', 'tp', NULL, NULL, 36),
(17, '05. TP Hôtellade', 'Réalisez le Modèle Conceptuel de Données pour gérer un système de réservation de chambres en ligne.', 'https://docs.google.com/document/d/1Xepr-CiIE2H4JC2yIro2uBtZSjmCJUQ5e7J1You7Q1E/edit?usp=drive_link', 'tp', NULL, NULL, 36),
(18, '06. TP Adrarthèque', 'Réalisez le Modèle Conceptuel de Données d&#39;une bibliothèque interne à l&#39;ADRAR.', 'https://docs.google.com/document/d/1kyietVRgszx7qfVuDoJ1ciMDS5pU87r3r1C_55gzBnI/edit?usp=drive_link', 'tp', NULL, NULL, 36),
(19, '07. TP Add.rar', 'Réalisez le Modèle Conceptuel de Données d&#39;un réseau social basique.', 'https://docs.google.com/document/d/1M8Ig5nxPpsj5xNhuJZyyWlI9tYQmeqvO4uDRbQMiDQg/edit?usp=drive_link', 'tp', NULL, NULL, 36),
(20, '08. TP AdCash', 'Réalisez le Modèle Conceptuel de Données du service de distributeur de monnaie interne à l&#39;ADRAR.', 'https://docs.google.com/document/d/1W2SuYthEbdgzIz-jipFOQDVrvvP-TPC-QY5cyZH7TGs/edit?usp=drive_link', 'tp', NULL, NULL, 36),
(21, '01. TP Bedflix', 'Réalisez le Modèle Logique de Données de l&#39;application de VOD Bedflix.', 'https://docs.google.com/document/d/1jSFKkUo7K4km6IaqA7PU-HWj6oXRY8D5b8-VWrDFdDo/edit?usp=sharing', 'tp', NULL, NULL, 37),
(22, '02. TP Adnum', 'Réalisez le Modèle Logique de Données de l&#39;Adnum pour gérer les flux.', 'https://docs.google.com/document/d/1aC5dUqNY095bf6MoFjexdPK8OZQFjKvXny73ghaGKQ8/edit?usp=sharing', 'tp', NULL, NULL, 37),
(23, '03. TP ADRAR Classrooms', 'Réalisez le Modèle Logique de Données de l&#39;ADRAR pour sa plateforme de cours en ligne.', 'https://docs.google.com/document/d/1C-f6gQyAp66MU9OKoR9ObGUt39W5C31AsU-5no4CTbA/edit?usp=sharing', 'tp', NULL, NULL, 37),
(24, '04. TP e-commerce', 'Réalisez le Modèle Logique de Données pour un site de e-commerce standard.', 'https://docs.google.com/document/d/1Ct2j_V_Z41LEsIocnurB7uVllEkiTqDM-wHfmApikgU/edit?usp=sharing', 'tp', NULL, NULL, 37),
(25, '05. TP Hôtellade', 'Réalisez le Modèle Logique de Données pour gérer un système de réservation de chambres en ligne.', 'https://docs.google.com/document/d/1gmPBZ6g8I65Hc5bd6y9b5pVZSbd4mkeBwhx9UbSFloQ/edit?usp=sharing', 'tp', NULL, NULL, 37),
(26, '06. TP Adrarthèque', 'Réalisez le Modèle Logique de Données d&#39;une bibliothèque interne à l&#39;ADRAR.', 'https://docs.google.com/document/d/1IOQX5RcBFhUdfH5Zl7qnbsVMd7MC5HMHBS3yxcAIAh4/edit?usp=sharing', 'tp', NULL, NULL, 37),
(27, '07. TP Add.rar', 'Réalisez le Modèle Logique de Données d&#39;un réseau social basique.', 'https://docs.google.com/document/d/1_859GUSdPlhL2HLxu_tu-A6t60XpSOR38FDx8xMm5UA/edit?usp=sharing', 'tp', NULL, NULL, 37),
(28, '08. TP AdCash', 'Réalisez le Modèle Logique de Données du service de distributeur de monnaie interne à l&#39;ADRAR.', 'https://docs.google.com/document/d/1JKduJA_pLSVbf-wf254z-OByztpiNJ9xzUsdsm_kDhs/edit?usp=sharing', 'tp', NULL, NULL, 37),
(29, 'CORRECTION TP AdCash', 'CORRECTION TP AdCash', 'https://drive.google.com/file/d/1_GIUA3Xw_7p8oChHiw_RFT-EU7VA-yBP/view?usp=sharing', 'autre', NULL, NULL, 37),
(30, 'CORRECTION TP Add.rar', 'CORRECTION TP Add.rar', 'https://drive.google.com/file/d/1j3_3PxKELHoSNXnH5Ba53W_8O3YzThI_/view?usp=sharing', 'autre', NULL, NULL, 37),
(31, 'CORRECTION TP Adnum', 'CORRECTION TP Adnum', 'https://drive.google.com/file/d/1ZNii9P40CtnlpLNeRiCTNroSbpz1x-wB/view?usp=sharing', 'autre', NULL, NULL, 37),
(32, 'CORRECTION TP ADRAR Classrooms', 'CORRECTION TP ADRAR Classrooms', 'https://drive.google.com/file/d/1hrDOWUIq5poLLeT2WIkJeqUEPn-1hcOB/view?usp=sharing', 'autre', NULL, NULL, 37),
(33, 'CORRECTION TP Adrartheque', 'CORRECTION TP Adrartheque', 'https://drive.google.com/file/d/1E_h4lKLhbEJpYF7JuPGePtOvP664LLS6/view?usp=sharing', 'autre', NULL, NULL, 37),
(34, 'CORRECTION TP Bedflix', 'CORRECTION TP Bedflix', 'https://drive.google.com/file/d/16EjkpiAi4DXEdUxRLBwx7So_hMm4lcW2/view?usp=sharing', 'autre', NULL, NULL, 37),
(35, 'CORRECTION TP e-commerce', 'CORRECTION TP e-commerce', 'https://drive.google.com/file/d/13aE3RtePP4kwPCGw2xTeR1QYDww75OEh/view?usp=sharing', 'autre', NULL, NULL, 37),
(36, 'CORRECTION TP Hotellade', 'CORRECTION TP Hotellade', 'https://drive.google.com/file/d/1boBW-xqZ-qadh0YdAcJXsaZsWS2SrUYG/view?usp=sharing', 'autre', NULL, NULL, 37),
(37, '01. Quiz Environnement Merise', '01. Quiz Environnement Merise', 'https://forms.gle/4p749ouUCJ7HH5r19\r\n', 'autre', NULL, NULL, 36),
(38, 'Exercices bootstrap', 'Exercez vous sur la mise en forme d&#39;éléments et l&#39;utilisation des classes de bootstrap.', 'https://docs.google.com/document/d/1S0KnzN35uDMzMJ7pMzcoiO4Sf5tHvvqpQGPyG2uFrcs/edit?usp=sharing', 'exercice', NULL, NULL, 33),
(39, 'TP Bootstrap', 'Vous allez devoir réaliser une petite intégration pour un site de VOD en utilisant le framework bootstrap.', 'https://docs.google.com/document/d/1wed9U5UWSYZzNrX_lF-ZUTcTxqjSsj-HyPbJgep4Udg/edit?usp=sharing', 'tp', NULL, NULL, 33),
(40, 'TP 1', 'Retrouvez l&#39;ensemble des instructions afin de vérifier vos acquis sur le module Git.', 'https://docs.google.com/document/d/10tyBETYdZz7T5w3wkEBCqHhbeyzwDo53kAmtUIjaylo/edit?usp=sharing', 'tp', NULL, NULL, 35),
(41, 'TP 2', 'Seconde évaluation pour vérifier vos acquis.', 'https://docs.google.com/document/d/1Jx4mRmUt-RV4QdLop2yh56NbFtgsw8JHPKbYUPMFY5E/edit?usp=sharing', 'tp', NULL, NULL, 35),
(42, 'TP 3', 'Troisième évaluation permettant de vous évaluer.', 'https://docs.google.com/document/d/1STBd6ZOx40bHZAxzT1F9_pvB24q8nu_BLFstmtSjYfg/edit?usp=sharing', 'tp', NULL, NULL, 35),
(43, 'TP page simple', 'Complétez ce TP afin d&#39;évaluer vos compétences sur l&#39;HTML et le CSS', 'https://docs.google.com/document/d/1PNqTvnLP866GQWq43_-_TxaqjsYYFdv-WOI5J5E2bo8/edit?usp=sharing', 'tp', NULL, NULL, 25),
(44, 'La piscinette', 'TP en groupe', 'https://docs.google.com/document/d/1gbcrZwH3alOc9EcqCgmkPwCCBjgvFtmrLyYizvOclmM/edit?usp=sharing', 'tp', NULL, NULL, 25),
(45, 'TP fin module', 'Évaluation de fin de module', 'https://docs.google.com/document/d/1IQ-A3GalrB8M1rNtlmsi7EJ34KT3tlSo-w6Kf8MNeTM/edit?usp=sharing', 'tp', NULL, NULL, 25),
(46, 'TP CV ness', 'Utilisation du framework NES.css pour réaliser un CV digital et voir le fonctionnement d&#39;un autre framework.', 'https://docs.google.com/document/d/1o8iVSWZiTC0v9FE8vZXvSiuxD1zkmjRr6UPND8L4RtY/edit?usp=sharing', 'tp', NULL, NULL, 28),
(47, 'TP Requêtes de médias', 'TP pour vérifier l&#39;acquisition du principe de fonctionnement des requêtes de médias.', 'https://docs.google.com/document/d/1Z95jq1m9jXNgIrYgEysuBwelXAs3TTemu3lTB1fwhLY/edit?usp=sharing', 'tp', NULL, NULL, 28),
(48, 'Assets Bedflix (logos)', 'Retrouvez ici les logos pour le TP Bedflix', NULL, 'autre', '_64c6e94f2eae8_ressource_cours_40.zip', '812814a945b6e9d18c3664c06ee4b7ecbced1eaa', 40),
(49, 'TP Black Maquette zoning', 'Premier TP sur lequel vous devez réaliser la maquette avec la plus basse fidélité.', 'https://docs.google.com/document/d/1vClzq1TE4vyShQzvjWp5QeGK_1WWb6hn8F0v1XnuAH4/edit?usp=sharing', 'tp', NULL, NULL, 40),
(50, 'TP Black Maquette wireframes', 'TP pour réaliser une maquette de fil de fer, légèrement plus étoffée que la première.', 'https://docs.google.com/document/d/1SdTGWJXEDUT5T3pj6bRzj3mByczjITsVhS3qYZcEFdo/edit?usp=sharing', 'tp', NULL, NULL, 40),
(51, 'TP Black Maquette mock-up', 'Réalisez ici la plus haute fidélité de maquette, elle doit ressembler au produit final attendu.', 'https://docs.google.com/document/d/1jtERQ6dzTuW419zOinNFRoWGXY1mnTdfikm_O9Ic-A8/edit?usp=sharing', 'tp', NULL, NULL, 40),
(52, 'TP Black Maquette prototypage', 'TP permettant de rendre interactive la maquette, permettant de mieux se projeter, de voir les enchaînements d&#39;écrans...', 'https://docs.google.com/document/d/1z_lncyeC9OzyROntQy5PsoATEJc4rJPdW8yj1k2S3hc/edit?usp=sharing', 'tp', NULL, NULL, 40),
(53, 'TP Bedflix', 'Réaliser le TP pour le client Bedflix', 'https://docs.google.com/document/d/1HLIXcGHEWBtSoEAIHnv8kkR2SIJGH4EUJWZG_nFYqd0/edit?usp=sharing', 'tp', NULL, NULL, 40),
(54, 'TP BONUS', 'Ce TP est optionnel, vous devrez réaliser la maquette de Black Maquette au format Desktop.', 'https://docs.google.com/document/d/1XdAWKvktPiuoDGk9DtsAA1cY4rQH3FsrkKVaUH1tpVQ/edit?usp=sharing', 'tp', NULL, NULL, 40),
(55, 'Exercice Shell', 'Entraînez vous à la réalisation d&#39;un script Shell', 'https://docs.google.com/document/d/1tsLDmCPvHSXZOBE80EofnBWK7Gwq3dzMsS1zUu5XjSQ/edit?usp=sharing', 'exercice', NULL, NULL, 72),
(56, 'TP Shell', 'Poursuivez l&#39;entraînement et validez vos acquis avec le TP...', 'https://docs.google.com/document/d/1QNjDa7IpkrXBmeu-zD1vKTPBsY7oPJrl9I-ywLSAMSY/edit?usp=sharing', 'tp', NULL, NULL, 72),
(57, 'TP ADRAR Classrooms', 'Vous retrouverez le CDC nécessaire pour la réalisation du Use case de l&#39;ADRAR Classrooms', 'https://docs.google.com/document/d/1KBsYOTNNTSqiJKes3ZX4RT9ffkixFe8dHXWIky4LRrU/edit?usp=share_link', 'tp', NULL, NULL, 103),
(58, 'TP Centre de Formation', 'Vous retrouverez le CDC nécessaire pour la réalisation du Use case du Centre de Formation', 'https://docs.google.com/document/d/1aVs9OKvNr8oA-I-_e1CoB6R-G1eGGSGNezwbZEyIzWU/edit?usp=share_link', 'tp', NULL, NULL, 103),
(59, 'TP ADRAR Classrooms', 'Réaliser un diagramme d&#39;activité: l&#39;ajout d&#39;un stagiaire.', 'https://docs.google.com/document/d/1NTRv5TDKJG2dcorhre1HWjhMVtsbiBZekNCiCpZeMYc/edit?usp=sharing', 'tp', NULL, NULL, 104),
(60, 'TP Centre de Formation', 'Continuez de vous entraînez sur la création de diagrammes d&#39;utilisation avec ce TP.', 'https://docs.google.com/document/d/12Hi0zD4q4grF-WxGJcYHwP1GsVY-BQ-hJ8UJXE3okA0/edit?usp=sharing', 'tp', NULL, NULL, 104),
(61, 'TP ADRAR Classrooms', 'Entraînez vous à la réalisation d&#39;un diagramme de séquence avec ce TP.', 'https://docs.google.com/document/d/1MigHZ0DFWPduQkHOEhFCoXL_Rs8oC1TnQDVeHAax-nY/edit?usp=share_link', 'tp', NULL, NULL, 105),
(62, 'TP Centre de Formation', 'Poursuivez votre entraînement avec la réalisation de diagrammes de séquences avec ce TP.', 'https://docs.google.com/document/d/1mIPjLnRwh07p27QJMcknmBJMhwRqJUGHluwoJKMInbM/edit?usp=sharing', 'tp', NULL, NULL, 105),
(63, 'TP ADRAR Classrooms', 'Peaufinez votre compréhension des diagrammes de classes avec ce premier TP.', 'https://docs.google.com/document/d/1z4c-7hb1XC5p7omwc4-q0PkXgmkST_785Fqwn0_TkM0/edit?usp=sharing', 'tp', NULL, NULL, 106),
(64, 'TP Centre de Formation', 'Continuez d&#39;apprendre et de comprendre avec ce second TP sur les diagrammes de classe.', 'https://docs.google.com/document/d/1gVPbzuEyjPXT6oFSS8vgxD4jtoAVp6zvqmhxhDLg0bY/edit?usp=sharing', 'tp', NULL, NULL, 106),
(65, 'Exercice 1', 'Ajout de titres et paragraphes dans un body.', 'https://docs.google.com/document/d/14R2hwP2lJ3CbbWd8Qn7oe4X_gWhmKAgPOEALdd8gRWk/edit?usp=sharing', 'exercice', NULL, NULL, 2),
(66, 'Exercice 2', 'Ajout des balises d&#39;accentuation !', 'https://docs.google.com/document/d/1ooLuL1DQf5wAnoh6PdDeT52RTRJV-fglwED27tkkY_0/edit?usp=sharing', 'exercice', NULL, NULL, 2),
(67, 'Exercice 3', 'Des liens et des liens... et des liens.', 'https://docs.google.com/document/d/1FkXa7N_GqPZq7oqQaPpuyOvGQuaQm_r3B5-QDDbjKDU/edit?usp=sharing', 'exercice', NULL, NULL, 2),
(68, 'Exercice 4', 'Et si on ajoutait des images dans tout ça ? C&#39;est parti.', 'https://docs.google.com/document/d/1kIBNuR2SyyVp5uc-fB5VuioOkYZq99Zq73nkQ4qiZpo/edit?usp=sharing', 'exercice', NULL, NULL, 2),
(69, 'Exercice 5', 'C&#39;est partie pour les listes !', 'https://docs.google.com/document/d/1xdoP8U0qPCLcZFDWQMxpKvDOCovYHZXPOHpSwOW21JU/edit?usp=sharing', 'exercice', NULL, NULL, 2),
(70, 'Exercice 6', 'On démarre avec un petit exercice sur les tableaux !', 'https://docs.google.com/document/d/1TBOEj5HA5gePkpWArEHZqs9jc2kQoo82g_MeTdc1mjk/edit?usp=sharing', 'exercice', NULL, NULL, 25),
(71, 'Exercice 7', 'On va décorer tout ça !', 'https://docs.google.com/document/d/1YmXlcmrha7ZFjzp6xTmuz_tJbQFOcYR2aVsTRgt_iAA/edit?usp=sharing', 'exercice', NULL, NULL, 25),
(72, 'Exercice 8', 'Tableaux plus complexes...', 'https://docs.google.com/document/d/1FbFAFiE7g-HTBXvyvefgWvoSaJOWZIL72-gQjFm8L4M/edit?usp=sharing', 'exercice', NULL, NULL, 25),
(73, 'Exercice 9', 'Un formulaire de contact basique ? Apprenez à le créer avec cet exercice.', 'https://docs.google.com/document/d/1VhguX3BW6yJgU2o8n83Fs00IOOyqFtUCuaaopfpQ26Y/edit?usp=sharing', 'exercice', NULL, NULL, 26),
(74, 'Exercice 10', 'Entraînez vous en ajoutez quelques balises dans un ancien formulaire...', 'https://docs.google.com/document/d/1-wyjAEcZs-Moig7gnCAXxcRJ1zX-PiUiu1zP3XIlwsA/edit?usp=sharing', 'exercice', NULL, NULL, 26),
(75, 'Exercice 11', 'Amélioration du formulaire de base...', 'https://docs.google.com/document/d/1aqO95THQlZgmIacb7-hGuKF49TMFrdu2vNS-nMARq_0/edit?usp=sharing', 'exercice', NULL, NULL, 26),
(76, 'Exercice 12', 'Formulaire complet.', 'https://docs.google.com/document/d/1e-ChEAxQ22yOfA9z1ySqGsPsmX0PucMR-XuB3sCgkSg/edit?usp=sharing', 'exercice', NULL, NULL, 26),
(77, 'Exercice 13', 'Des lecteurs, dans tous les sens !', 'https://docs.google.com/document/d/1MczmgOtIjvLPd5DbS5tGyVSRcvCY7biuu3EFnP2wIQw/edit?usp=sharing', 'exercice', NULL, NULL, 31),
(78, 'Exercice 1', 'Premier exercice avec les sélecteurs simples.', 'https://docs.google.com/document/d/1_Cr4_bmT3wTCujz1MYj7gzNQc11O_6pZhzL7cHEJbaA/edit?usp=sharing', 'exercice', NULL, NULL, 18),
(79, 'Exercice 2', 'Manipulez plus précisément les sélecteurs simples !', 'https://docs.google.com/document/d/1axtn2i6vEiR22-0uy0CkQLpzOwZtb_GAxbMRv6yA8so/edit?usp=sharing', 'exercice', NULL, NULL, 19),
(80, 'Exercice 3', 'Premier exercice pour vous entraîner sur les pseudo-classes.', 'https://docs.google.com/document/d/1WnNUx_iOyQsnxXNvWVBVsuBMzoJqB-BUfgy-1oGG6w0/edit?usp=sharing', 'exercice', NULL, NULL, 20),
(81, 'Exercice 4', 'Testez encore un peu plus vos nouvelles connaissances sur les pseudo-classes...', 'https://docs.google.com/document/d/1fihGEgo58B-kHyZ9evFbKdZ-ZNpJK5rL3mOW1pJ1cC4/edit?usp=sharing', 'exercice', NULL, NULL, 20),
(82, 'Exercice 5', 'Exercice plus poussé ! Reproduisez des dés avec Flexbox.', 'https://docs.google.com/document/d/1PPYu-k0dNV47UWGrY6-wu5hDTmhUb1z7UuYsdYi9ysA/edit?usp=sharing', 'exercice', NULL, NULL, 21),
(83, 'Exercice 6', 'Exercez vous avec Grid.', 'https://docs.google.com/document/d/1H1_MfdsHbTZnp4lZwRJVtcAodI7Ko88dEfJ3hmNXGtQ/edit?usp=sharing', 'exercice', NULL, NULL, 22),
(84, 'Exercice 7', 'Jouez avec les ombres sur divers éléments...', 'https://docs.google.com/document/d/1YCIy5qQ1vcuwKS3dwi9e5D3GOU1MdjgNuIa4TTgtPuA/edit?usp=sharing', 'exercice', NULL, NULL, 23),
(85, 'Exercice 8', 'Premier exercice sur les dégradés.', 'https://docs.google.com/document/d/1qhenm4gOq_KC0DrDPyyz57MkhfR0n2Et45iaO4m3LxM/edit?usp=sharing', 'exercice', NULL, NULL, 24),
(86, 'Exercice 9', 'Continuez de vous testez sur les dégradés !', 'https://docs.google.com/document/d/19ycWpvpUmJw1Gx2Bgg0Fss-vxNt0SQdN9cfi4GO2V1Q/edit?usp=sharing', 'exercice', NULL, NULL, 24),
(87, 'Exercice 10', 'Jouez avec les placements simples dans cet exercice.', 'https://docs.google.com/document/d/1gZi0OCWvRDweGLGCabr6uwOAO27euZkjhwCAuZBPPWU/edit?usp=sharing', 'exercice', NULL, NULL, 27),
(88, 'Exercice 11', 'Manipulez les marges !', 'https://docs.google.com/document/d/1Kb0J9F-ZjYCh5_agLKekKzlipz8tS_96zPeLo9o5xa4/edit?usp=sharing', 'exercice', NULL, NULL, 27),
(89, 'Exercice 12', 'Continuez de jouer avec les marges avec cet exercice.', 'https://docs.google.com/document/d/11E2UPPqY4ulqLozwixoW9sw7Mr-ckI_vmSgRxVPZVT0/edit?usp=sharing', 'exercice', NULL, NULL, 27),
(90, 'Exercice 13', 'Réalisez un formulaire de connexion classique.', 'https://docs.google.com/document/d/1EohDJ6md5LMVU8b1xjIVtXyEeeqg9ruRUulu3_C53lM/edit?usp=sharing', 'exercice', NULL, NULL, 27),
(91, 'Exercice 14', 'Jouez avec les animations basiques disponibles en CSS avec cet exercice.', 'https://docs.google.com/document/d/1gR0LRVKJlp3Y-5pcxnBPa0bpq53rCMQWMNNmJkx1d90/edit?usp=sharing', 'exercice', NULL, NULL, 29),
(92, 'Exercice 15', 'Continuez de vous entraînez sur les animations !', 'https://docs.google.com/document/d/19jghr1sc_maSxJcNMuxu9uyuNBDfJ3l4DPNarv3uxvg/edit?usp=sharing', 'exercice', NULL, NULL, 29),
(93, 'Exercice 16', 'Combinez les pseudo-classes avec les animations pour faire des rendus sympathhiques !', 'https://docs.google.com/document/d/1bMnxofFEJibBdiqAsNkT5LdFUOKyjZhM7CfvP49-Dms/edit?usp=sharing', 'exercice', NULL, NULL, 30),
(94, 'Exercice 17', 'Dernier exercice sur les animations.', 'https://docs.google.com/document/d/1SRjI0MKsiAfzEtNClGQ4e7edPzH5KF5oWsKTX0lSkic/edit?usp=sharing', 'exercice', NULL, NULL, 30),
(95, 'Exemple CDC anonyme', 'Retrouvez ici une CDC UX/UI anonymisé.', 'https://drive.google.com/file/d/1CSwFHrr58luAvdm5C0_E4IMUAMSB4CPU/view?usp=sharing', 'autre', NULL, NULL, 38),
(96, 'Mémo CSS', 'Retrouvez un mémo sur les propriétés CSS les plus courantes ! Un outils du quotidien pour les débuts !', 'https://drive.google.com/file/d/1oM1c2b_yqc130Sk9LIDNqSFIIRWvxs2-/view?usp=sharing', 'autre', NULL, NULL, 19),
(97, 'Flexbox Froggy', 'Entraînez-vous avec les flexbox avec ce mini-jeu.', 'https://flexboxfroggy.com/#fr', 'exercice', NULL, NULL, 21),
(98, 'Grid garden', 'Poursuivez la quête au savoir et jouez dans ce mini-jeu pour vous rendre à l&#39;aise avec les grilles.', 'https://cssgridgarden.com/#fr', 'exercice', NULL, NULL, 22),
(99, 'CSS Dinner', 'Nouveau mini-jeu pour vous aider à assimiler les pseudo-classes !', 'https://flukeout.github.io/', 'exercice', NULL, NULL, 20),
(100, 'CORRECTION TP Media queries', '', NULL, 'autre', '_6548dfb9f0064_ressource_cours_28.zip', '3d48fcb35399bb79efd93edb7547da28c5ffedd6', 28);

-- --------------------------------------------------------

--
-- Structure de la table `cours_sessions`
--

DROP TABLE IF EXISTS `cours_sessions`;
CREATE TABLE `cours_sessions` (
  `cours_session_id` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_cours` int(11) NOT NULL,
  `cours_session_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours_sessions`
--

INSERT INTO `cours_sessions` (`cours_session_id`, `id_session`, `id_cours`, `cours_session_active`) VALUES
(25, 2, 27, 1),
(27, 1, 25, 1),
(28, 1, 26, 1),
(29, 1, 2, 1),
(30, 1, 31, 1),
(31, 1, 1, 1),
(32, 1, 33, 1),
(33, 1, 32, 1),
(37, 1, 28, 1),
(38, 1, 20, 1),
(39, 1, 27, 1),
(42, 1, 21, 1),
(44, 1, 17, 1),
(45, 1, 29, 1),
(46, 1, 23, 1),
(62, 2, 22, 1),
(78, 2, 30, 1),
(81, 1, 30, 1),
(82, 1, 24, 1),
(84, 1, 19, 1),
(85, 1, 18, 1),
(86, 1, 22, 1),
(88, 1, 35, 1),
(90, 1, 36, 1),
(91, 2, 36, 1),
(92, 1, 37, 1),
(93, 2, 37, 1),
(94, 1, 38, 1),
(105, 2, 38, 1),
(118, 2, 21, 1),
(125, 1, 34, 1),
(126, 1, 40, 1),
(127, 1, 41, 1),
(128, 1, 42, 1),
(129, 1, 43, 1),
(130, 1, 46, 1),
(131, 1, 47, 1),
(132, 1, 45, 1),
(133, 1, 44, 1),
(135, 2, 29, 1),
(136, 2, 17, 1),
(137, 2, 24, 1),
(138, 2, 20, 1),
(140, 2, 23, 1),
(141, 2, 19, 1),
(142, 2, 28, 1),
(143, 2, 18, 1),
(144, 2, 32, 1),
(145, 2, 33, 1),
(146, 2, 35, 1),
(147, 2, 1, 1),
(148, 2, 31, 1),
(149, 2, 2, 1),
(150, 2, 26, 1),
(151, 2, 25, 1),
(152, 2, 40, 1),
(153, 2, 42, 1),
(154, 2, 46, 1),
(155, 2, 47, 1),
(156, 2, 45, 1),
(158, 2, 44, 1),
(159, 2, 41, 1),
(160, 2, 43, 1),
(161, 2, 34, 1),
(162, 2, 69, 1),
(163, 2, 57, 1),
(164, 2, 53, 1),
(165, 2, 52, 1),
(166, 2, 64, 1),
(167, 2, 66, 1),
(168, 2, 65, 1),
(169, 2, 49, 1),
(170, 2, 70, 1),
(171, 2, 61, 1),
(172, 2, 50, 1),
(173, 2, 51, 1),
(174, 2, 63, 1),
(175, 2, 59, 1),
(176, 2, 60, 1),
(177, 2, 68, 1),
(178, 2, 54, 1),
(179, 2, 55, 1),
(180, 2, 71, 1),
(181, 2, 62, 1),
(182, 2, 48, 1),
(183, 2, 56, 1),
(184, 2, 67, 1),
(185, 1, 52, 1),
(186, 2, 72, 1),
(187, 2, 73, 1),
(188, 2, 74, 1),
(189, 2, 75, 1),
(190, 2, 76, 1),
(191, 2, 77, 1),
(192, 2, 78, 1),
(193, 2, 79, 1),
(194, 2, 80, 1),
(195, 2, 81, 1),
(196, 2, 82, 1),
(198, 2, 83, 1),
(199, 2, 84, 1),
(200, 2, 85, 1),
(201, 2, 86, 1),
(202, 2, 87, 1),
(203, 2, 88, 1),
(204, 2, 89, 1),
(205, 2, 90, 1),
(206, 2, 91, 1),
(207, 2, 92, 1),
(208, 2, 93, 1),
(209, 2, 94, 1),
(210, 2, 95, 1),
(211, 2, 96, 1),
(212, 2, 97, 1),
(213, 2, 98, 1),
(214, 2, 99, 1),
(215, 2, 100, 1),
(216, 2, 101, 1),
(217, 2, 102, 1),
(218, 2, 103, 1),
(219, 2, 104, 1),
(220, 2, 105, 1),
(221, 2, 106, 1),
(222, 2, 108, 1),
(223, 2, 109, 1),
(224, 2, 110, 1),
(225, 2, 111, 1),
(226, 2, 112, 1),
(227, 2, 113, 1),
(228, 2, 114, 1),
(229, 2, 115, 1),
(230, 2, 116, 1),
(231, 2, 117, 1),
(232, 2, 118, 1),
(233, 2, 119, 1),
(234, 2, 120, 1),
(235, 2, 121, 1),
(236, 2, 122, 1),
(237, 2, 123, 1),
(238, 2, 124, 1),
(239, 2, 125, 1),
(240, 2, 126, 1),
(241, 2, 127, 1),
(242, 2, 128, 1),
(243, 3, 1, 1),
(244, 3, 2, 1),
(245, 3, 25, 1),
(246, 3, 26, 1),
(247, 3, 31, 1),
(249, 3, 17, 1),
(250, 3, 18, 1),
(251, 3, 19, 1),
(252, 3, 20, 1),
(253, 3, 21, 1),
(254, 3, 22, 1),
(255, 3, 23, 1),
(256, 3, 24, 1),
(257, 3, 27, 1),
(258, 3, 28, 1),
(259, 3, 29, 1),
(260, 3, 30, 1),
(263, 3, 34, 0),
(265, 3, 78, 0),
(266, 3, 129, 1),
(267, 3, 130, 1),
(268, 3, 131, 1),
(269, 3, 137, 1),
(270, 3, 138, 1),
(271, 3, 139, 1),
(272, 3, 140, 1),
(273, 3, 141, 1),
(274, 3, 142, 1),
(275, 2, 132, 1),
(276, 2, 133, 1),
(277, 2, 134, 1),
(278, 2, 135, 1),
(279, 2, 136, 1),
(280, 2, 129, 1),
(281, 2, 130, 1),
(282, 2, 131, 1),
(283, 2, 137, 1),
(284, 2, 138, 1),
(285, 2, 139, 1),
(286, 2, 140, 1),
(287, 2, 141, 1),
(288, 2, 142, 1),
(289, 3, 72, 1),
(290, 3, 35, 1),
(291, 3, 32, 1),
(292, 3, 33, 1);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `index_document` varchar(50) NOT NULL,
  `nom_document` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id_document`, `index_document`, `nom_document`) VALUES
(1, 'convention', 'Convention de stage'),
(2, 'attestation', 'Attestation de stage'),
(3, 'evaluation', 'Évaluation de stage'),
(4, 'presence', 'Heures entreprises'),
(5, 'livret_evaluation', 'Livret d\'évaluation'),
(6, 'convention_region', 'Convention de stage Région'),
(7, 'convention_pe', 'Convention de stage Pôle Emploi'),
(8, 'convention_region_fse', 'Convention de stage Région et FSE'),
(9, 'convention_region_investir', 'Convention de stage Région et Investir');

-- --------------------------------------------------------

--
-- Structure de la table `documents_pages`
--

DROP TABLE IF EXISTS `documents_pages`;
CREATE TABLE `documents_pages` (
  `id` int(11) NOT NULL,
  `num_page` int(11) NOT NULL,
  `lien` varchar(100) NOT NULL,
  `textes_ajoutes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `documents_pages`
--

INSERT INTO `documents_pages` (`id`, `num_page`, `lien`, `textes_ajoutes`, `id_document`) VALUES
(11, 1, 'convention-1.png', '{\n  \"1\": {\n    \"X\": \"50\",\n    \"Y\": \"69\",\n    \"texte\": \"rue_lieu_stage\"\n  },\n  \"2\": {\n    \"X\": \"50\",\n    \"Y\": \"76\",\n    \"texte\": \"cp_lieu_stage\"\n  },\n  \"3\": {\n    \"X\": \"50\",\n    \"Y\": \"83\",\n    \"texte\": \"ville_lieu_stage\"\n  },\n  \"4\": {\n    \"X\": \"127\",\n    \"Y\": \"122.5\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"5\": {\n    \"X\": \"79\",\n    \"Y\": \"129.5\",\n    \"texte\": \"mail_tuteur\"\n  },\n  \"6\": {\n    \"X\": \"38\",\n    \"Y\": \"170.5\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"7\": {\n    \"X\": \"93.5\",\n    \"Y\": \"205.5\",\n    \"texte\": \"duree_stage\"\n  },\n  \"8\": {\n    \"X\": \"60.5\",\n    \"Y\": \"212.5\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"9\": {\n    \"X\": \"112.5\",\n    \"Y\": \"212.5\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"10\": {\n    \"X\": \"26.5\",\n    \"Y\": \"232\",\n    \"texte\": \"nom_formateur|prenom_formateur\"\n  },\n  \"11\": {\n    \"X\": \"35.5\",\n    \"Y\": \"236.5\",\n    \"texte\": \"mail_formateur\"\n  }\n}', 1),
(12, 2, 'convention-2.png', NULL, 1),
(13, 3, 'convention-3.png', NULL, 1),
(14, 4, 'convention-4.png', NULL, 1),
(15, 5, 'convention-5.png', '{\n  \"1\": {\n    \"X\": \"27\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"2\": {\n    \"X\": \"83\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_formateur|prenom_formateur\"\n  },\n  \"3\": {\n    \"X\": \"139\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\",\n    \"tampon\": \"v/tampon.png\",\n    \"xtampon\": \"75\",\n    \"ytampon\": \"180\",\n    \"signature\": \"signature_formateur\",\n    \"xsignature\": \"85\",\n    \"ysignature\": \"180\"\n  }\n}', 1),
(16, 1, 'attestation.png', '{\n  \"1\": {\n    \"X\": \"55\",\n    \"Y\": \"45\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"94\",\n    \"Y\": \"62\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"3\": {\n    \"X\": \"94\",\n    \"Y\": \"72\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"4\": {\n    \"X\": \"50\",\n    \"Y\": \"82\",\n    \"texte\": \"duree_stage\"\n  }\n}', 2),
(17, 1, 'evaluation-1.png', '{\n  \"1\": {\n    \"X\": \"32\",\n    \"Y\": \"49\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"42\",\n    \"Y\": \"56.5\",\n    \"texte\": \"sigle_session\"\n  },\n  \"3\": {\n    \"X\": \"127\",\n    \"Y\": \"56.5\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"4\": {\n    \"X\": \"56\",\n    \"Y\": \"64.5\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"5\": {\n    \"X\": \"92\",\n    \"Y\": \"64.5\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"6\": {\n    \"X\": \"147\",\n    \"Y\": \"64.5\",\n    \"texte\": \"duree_stage\"\n  }\n}', 3),
(18, 2, 'evaluation-2.png', '{\n  \"1\": {\n    \"X\": \"138\",\n    \"Y\": \"185.5\",\n    \"texte\": \"nom_formateur|prenom_formateur\",\n    \"signature\": \"signature_formateur\",\n    \"xsignature\": \"138\",\n    \"ysignature\": \"187.5\"\n  }\n}', 3),
(19, 1, 'presence.png', '{\n  \"1\": {\n    \"X\": \"113\",\n    \"Y\": \"38\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"50\",\n    \"Y\": \"42.5\",\n    \"texte\": \"sigle_session\"\n  },\n  \"3\": {\n    \"X\": \"113\",\n    \"Y\": \"211\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  }\n}', 4),
(20, 1, 'dwwm/Livret_evaluation_DWWM-01.png', NULL, 5),
(21, 2, 'dwwm/Livret_evaluation_DWWM-02.png', NULL, 5),
(22, 3, 'dwwm/Livret_evaluation_DWWM-03.png', NULL, 5),
(23, 4, 'dwwm/Livret_evaluation_DWWM-04.png', NULL, 5),
(24, 5, 'dwwm/Livret_evaluation_DWWM-05.png', NULL, 5),
(25, 6, 'dwwm/Livret_evaluation_DWWM-06.png', NULL, 5),
(26, 7, 'dwwm/Livret_evaluation_DWWM-07.png', NULL, 5),
(27, 8, 'dwwm/Livret_evaluation_DWWM-08.png', NULL, 5),
(28, 9, 'dwwm/Livret_evaluation_DWWM-09.png', NULL, 5),
(29, 10, 'dwwm/Livret_evaluation_DWWM-10.png', NULL, 5),
(30, 11, 'dwwm/Livret_evaluation_DWWM-11.png', NULL, 5),
(31, 12, 'dwwm/Livret_evaluation_DWWM-12.png', NULL, 5);

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

DROP TABLE IF EXISTS `evaluations`;
CREATE TABLE `evaluations` (
  `evaluation_id` int(11) NOT NULL,
  `evaluation_title` varchar(100) NOT NULL,
  `evaluation_goals` longtext NOT NULL,
  `evaluation_synopsis` text NOT NULL,
  `evaluation_token` varchar(255) NOT NULL,
  `evaluation_errors_max` int(11) NOT NULL,
  `id_evaluation_dd` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evaluations`
--

INSERT INTO `evaluations` (`evaluation_id`, `evaluation_title`, `evaluation_goals`, `evaluation_synopsis`, `evaluation_token`, `evaluation_errors_max`, `id_evaluation_dd`) VALUES
(1, 'Construire un fichier HTML de base valide', 'Savoir créer une page HTML basique', 'Dans cette évaluation, vous devrez construire un fichier HTML valide. ', '9de95532b3918dd89aa8e3d518c77ad0', 11, 1),
(2, 'Une erreur de parcours', 'Savoir débugger;Savoir corriger', 'Dans cette évaluation, vous devrez trouver les différentes erreurs glissées dans le code, trouvez-les et corrigez-les. Vous n\'avez pas besoin d\'utiliser de balises <code>style</code>.', '26a5d1aea50e69ecc18d4faeaefdc526', 2, 1),
(3, 'Du CSS dans l\'air', 'Savoir sélectionner un élément HTML en CSS;Savoir styliser un élément par rapport à un autre', 'Dans cette évaluation, vous allez devoir sélectionner toutes les balises de <code>paragraphe</code> et n\'appliquer un style qu\'à l\'une d\'elles.\nLibre choix sur la méthode pour effectuer cette tâche.', '5a1841f1fc4ac836e27260ab736be74b', 1, 1),
(4, 'Les médias s\'en mêlent', 'Savoir modifier des éléments en fonction de la largeur/longueur de l\'écran;Savoir changer des éléments en fonction de la résolution de l\'écran', 'Ici, vous allez devoir réaliser deux grosses phases:\n<ol>\n<li>La première: changer le fond en fonction de la disposition de l\'écran avec l\'<code>orientation</code> (rouge en portrait, bleu en paysage).</li>\n<li>La seconde: changer la taille de la police des paragraphes et leur couleur pour les résolutions minimales suivantes : 320px (18px jaune); 768px (22px orange) ; 1440px (30px vert)</li>', '2937904b40de8ddb973bbff315a04b22', 8, 1),
(5, 'Rando Nuit', '', '', '81ee749964a52639276f9a13bc11f967', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `evaluations_dd`
--

DROP TABLE IF EXISTS `evaluations_dd`;
CREATE TABLE `evaluations_dd` (
  `evaluation_dd_id` int(11) NOT NULL,
  `evaluation_dd_name` varchar(50) NOT NULL,
  `evaluation_dd_link` varchar(100) NOT NULL,
  `evaluation_dd_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evaluations_dd`
--

INSERT INTO `evaluations_dd` (`evaluation_dd_id`, `evaluation_dd_name`, `evaluation_dd_link`, `evaluation_dd_active`) VALUES
(1, 'HTML/CSS', 'html-css', 1),
(2, 'Frameworks', 'bootstrap', 0);

-- --------------------------------------------------------

--
-- Structure de la table `evaluations_sessions`
--

DROP TABLE IF EXISTS `evaluations_sessions`;
CREATE TABLE `evaluations_sessions` (
  `evaluation_session_active` tinyint(1) NOT NULL,
  `id_dd_evaluation` int(11) NOT NULL,
  `id_session` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `evaluations_sessions`
--

INSERT INTO `evaluations_sessions` (`evaluation_session_active`, `id_dd_evaluation`, `id_session`) VALUES
(1, 1, 1),
(0, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `formateurs`
--

DROP TABLE IF EXISTS `formateurs`;
CREATE TABLE `formateurs` (
  `id_formateur` int(11) NOT NULL,
  `nom_formateur` varchar(25) NOT NULL,
  `prenom_formateur` varchar(25) NOT NULL,
  `mail_formateur` varchar(100) NOT NULL,
  `mdp_formateur` varchar(60) DEFAULT NULL,
  `signature_formateur` varchar(50) DEFAULT NULL,
  `carte_formateur_role` varchar(25) NOT NULL,
  `carte_formateur_liens` varchar(25) DEFAULT NULL,
  `carte_formateur_tel` varchar(10) NOT NULL,
  `carte_formateur_portable` varchar(10) DEFAULT NULL,
  `tmp_code_formateur` varchar(6) DEFAULT NULL COMMENT 'Contient un code qui permet à un formateur de en cas d''oubli de mot de passe ou si la période de validité du code est échue\r\n',
  `date_tmp_code_formateur` datetime DEFAULT NULL COMMENT 'Validité de 5 minutes',
  `code_entree_formateur` varchar(6) DEFAULT NULL COMMENT 'Contient un code UNIQUE qui permet à un formateur de s''identifier la première fois pour changer son mot de passe',
  `date_code_entree_formateur` datetime DEFAULT NULL COMMENT 'Validité d''une semaine',
  `est_actif` tinyint(1) NOT NULL DEFAULT 1,
  `id_site` int(11) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formateurs`
--

INSERT INTO `formateurs` (`id_formateur`, `nom_formateur`, `prenom_formateur`, `mail_formateur`, `mdp_formateur`, `signature_formateur`, `carte_formateur_role`, `carte_formateur_liens`, `carte_formateur_tel`, `carte_formateur_portable`, `tmp_code_formateur`, `date_tmp_code_formateur`, `code_entree_formateur`, `date_code_entree_formateur`, `est_actif`, `id_site`, `id_secteur`) VALUES
(1, 'RODRIGUES', 'Marceau', 'marceaurodrigues@adrar-formation.com', '$2y$10$h5l6ls/l7uiXy5le0ENbd.dyKFscCICK4gVziOnxkV1qZMqOn9OOe', 'v/formateurs/signature_6489096bf19b0.png', 'Formateur référent', '', '0552458547', '', NULL, NULL, NULL, NULL, 1, 2, 1),
(2, 'HABBAS', 'Emna', 'emnahabbas@adrar-formation.com', '$2y$10$go.SxmZ3XDA/uGP4gAI.V.38Y.lr4/2Nu0fQjfgdxQ8u56gAiYWJq', 'v/formateurs/signature_649f7afc3477d.png', 'Coordinatrice', NULL, '0552458547', NULL, NULL, NULL, NULL, NULL, 1, 2, 3),
(3, 'RAYNARD', 'Jade', 'jaderaynard@drar-formation.com', '$2y$10$2WXxH8FAYeFNl0DkiOiCsul4TrMUdwFHvGhFnCGfm5Ai7H5ES1gQa', 'v/formateurs/signature_648f7cb40c9ba.png', 'Formatrice rrente', NULL, '', '0469532699', NULL, NULL, NULL, NULL, 1, 1, 2),
(21, 'NAVONE', 'Ruben', 'rubennavone@adrar-formation.com', '$2y$10$83GJeVgku2jgnVzRITh3tuUn2C.sHus6a1JFNrVmxcG/oT4zLNtYK', NULL, 'Formateur Référent', NULL, '0525425877', NULL, NULL, NULL, NULL, '2023-07-09 21:58:13', 0, 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

DROP TABLE IF EXISTS `historiques`;
CREATE TABLE `historiques` (
  `id_historique` int(11) NOT NULL,
  `id_formateur` int(11) NOT NULL,
  `page_visitee` varchar(255) NOT NULL,
  `page_nom` varchar(50) NOT NULL,
  `ip_visiteur` varchar(15) NOT NULL,
  `date_visite` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `historiques`
--

INSERT INTO `historiques` (`id_historique`, `id_formateur`, `page_visitee`, `page_nom`, `ip_visiteur`, `date_visite`) VALUES
(132, 1, '?page=mon-compte', 'Mon-compte', '192.168.43.164', '2023-07-02 21:44:37'),
(153, 21, '?page=formation', 'Formation', '192.168.43.164', '2023-07-02 22:08:20'),
(169, 1, '?page=ajouter_stagiaire', 'Ajouter_stagiaire', '192.168.19.119', '2023-07-03 12:13:48'),
(234, 1, '?page=ajouter_referent', 'Ajouter_referent', '192.168.19.119', '2023-07-06 14:08:09'),
(252, 1, '?page=ajouter_document', 'Ajouter_document', '192.168.19.119', '2023-07-07 02:47:06'),
(290, 1, '?page=ajouter-referent', 'Ajouter-referent', '::1', '2023-07-26 22:02:32'),
(537, 1, '?page=boite-aux-lettres', 'Boite-aux-lettres', '88.169.229.35', '2023-10-08 15:27:37'),
(539, 1, '?page=ajouter-document', 'Ajouter-document', '88.169.229.35', '2023-10-08 20:53:11'),
(691, 1, '?page=formation', 'Formation', '82.65.172.45', '2023-10-19 21:02:48'),
(692, 1, '?page=stage', 'Stage', '82.65.172.45', '2023-10-21 23:09:41'),
(694, 1, '?page=titre', 'Titre', '82.65.172.45', '2023-10-21 23:10:30'),
(695, 1, '?page=admin', 'Admin', '37.170.125.56', '2023-11-06 09:59:37');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE `notifications` (
  `notification_titre` varchar(150) NOT NULL,
  `notification_lien` varchar(255) NOT NULL,
  `notification_date` datetime NOT NULL,
  `id_stagiaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 53),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 54),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 55),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 56),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 57),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 58),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 59),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 60),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 62),
('[CSS] Nouveau cours disponible: Flexbox', '/erp/public/formation/embed.php?slide=2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', '2023-11-05 16:39:15', 64),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 53),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 54),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 55),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 56),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 57),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 58),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 59),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 60),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 62),
('[CSS] Nouveau cours disponible: Grid', '/erp/public/formation/embed.php?slide=2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', '2023-11-05 16:39:16', 64),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 34),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 35),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 36),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 37),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 38),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 39),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 40),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 41),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 42),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-10-05 13:11:49', 43),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 53),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 54),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 55),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 56),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 57),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 58),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 59),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 60),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 62),
('[CSS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', '2023-11-05 16:39:12', 64),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 34),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 35),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 36),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 37),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 38),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 39),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 40),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 41),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 42),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-10-05 13:11:48', 43),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 53),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 54),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 55),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 56),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 57),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 58),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 59),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 60),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 62),
('[CSS] Nouveau cours disponible: Les animations', '/erp/public/formation/embed.php?slide=2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', '2023-11-05 16:39:18', 64),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 53),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 54),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 55),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 56),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 57),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 58),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 59),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 60),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 62),
('[CSS] Nouveau cours disponible: Les animations avancées', '/erp/public/formation/embed.php?slide=2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', '2023-11-05 16:39:19', 64),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 34),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 35),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 36),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 37),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 38),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 39),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 40),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 41),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 42),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-10-05 13:11:49', 43),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 53),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 54),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 55),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 56),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 57),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 58),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 59),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 60),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 62),
('[CSS] Nouveau cours disponible: Les dégradés', '/erp/public/formation/embed.php?slide=2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', '2023-11-05 16:39:17', 64),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 53),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 54),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 55),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 56),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 57),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 58),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 59),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 60),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 62),
('[CSS] Nouveau cours disponible: Les placements simples', '/erp/public/formation/embed.php?slide=2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', '2023-11-05 16:39:17', 64),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 34),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 35),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 36),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 37),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 38),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 39),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 40),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 41),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 42),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-10-05 13:11:49', 43),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 53),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 54),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 55),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 56),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 57),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 58),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 59),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 60),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 62),
('[CSS] Nouveau cours disponible: Les pseudo-classes', '/erp/public/formation/embed.php?slide=2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', '2023-11-05 16:39:14', 64),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 53),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 54),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 55),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 56),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 57),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 58),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 59),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 60),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 62),
('[CSS] Nouveau cours disponible: Les requêtes de média', '/erp/public/formation/embed.php?slide=2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', '2023-11-05 16:39:18', 64),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 34),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 35),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 36),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 37),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 38),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 39),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 40),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 41),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 42),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-10-05 13:11:50', 43),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 53),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 54),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 55),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 56),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 57),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 58),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 59),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 60),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 62),
('[CSS] Nouveau cours disponible: Ombrages', '/erp/public/formation/embed.php?slide=2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', '2023-11-05 16:39:16', 64),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 53),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 54),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 55),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 56),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 57),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 58),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 59),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 60),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 62),
('[CSS] Nouveau cours disponible: Propriétés courantes', '/erp/public/formation/embed.php?slide=2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', '2023-11-05 16:39:14', 64),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 34),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 35),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 36),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 37),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 38),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 39),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 40),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 41),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 42),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-10-05 13:11:52', 43),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 53),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 54),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 55),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 56),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 57),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 58),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 59),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 60),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 62),
('[CSS] Nouveau cours disponible: Sélecteurs simples', '/erp/public/formation/embed.php?slide=2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', '2023-11-05 16:39:13', 64),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 53),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 54),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 55),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 56),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 57),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 58),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 59),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 60),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 61),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 62),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 63),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 64),
('[FRAMEWORKS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', '2023-11-14 09:29:00', 65),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 53),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 54),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 55),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 56),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 57),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 58),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 59),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 60),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 61),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 62),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 63),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 64),
('[FRAMEWORKS] Nouveau cours disponible: Présentation approfondie de bootstrap', '/erp/public/formation/embed.php?slide=2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', '2023-11-14 09:29:01', 65),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 34),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 35),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 36),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 37),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 38),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 39),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 40),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 41),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 42),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-10-05 13:11:53', 43),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 53),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 55),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 56),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 57),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 58),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 59),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 60),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 61),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 62),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 63),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 64),
('[GIT] Nouveau cours disponible: Cours sur Git', '/erp/public/formation/embed.php?slide=2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', '2023-11-13 13:59:39', 65),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 34),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 35),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 36),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 37),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 38),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 39),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 40),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 41),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 42),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-10-06 18:59:24', 43),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 53),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 54),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 55),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 56),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 57),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 58),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 59),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 60),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 61),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:38', 62),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:39', 63),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:39', 64),
('[GIT] Nouveau cours disponible: Cours sur Shell', '/erp/public/formation/embed.php?slide=2PACX-1vR42_17iY3gAR4x_ftrPpVBsH--xGLddf7f31iVTC8G7U-GYIUlc7dTnMXCzEL6nEt7ec2PO0h3kHOM', '2023-11-13 13:59:39', 65),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 53),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 54);
INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 55),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 56),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 57),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 58),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 59),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 60),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 62),
('[HTML] Nouveau cours disponible: Introduction au HTML', '/erp/public/formation/embed.php?slide=2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', '2023-11-05 16:39:05', 64),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 53),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 54),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 55),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 57),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 58),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 59),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 60),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 62),
('[HTML] Nouveau cours disponible: Les audios et vidéos', '/erp/public/formation/embed.php?slide=2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', '2023-11-05 16:39:08', 64),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 34),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 35),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 36),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 37),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 38),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 39),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 40),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 41),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 42),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-10-05 13:11:54', 43),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 53),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 54),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 55),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 56),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 57),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 58),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 59),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 60),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 62),
('[HTML] Nouveau cours disponible: Les balises', '/erp/public/formation/embed.php?slide=2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', '2023-11-05 16:39:06', 64),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 34),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 35),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 36),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 37),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 38),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 39),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 40),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 41),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 42),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-10-05 13:11:55', 43),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 53),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 54),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 55),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 56),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 57),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 58),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 59),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 60),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 62),
('[HTML] Nouveau cours disponible: Les formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', '2023-11-05 16:39:07', 64),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 34),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 35),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 36),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 37),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 38),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 39),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 40),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 41),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 42),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-10-05 13:11:55', 43),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 53),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 54),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 55),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 56),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 57),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 58),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 59),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 60),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 62),
('[HTML] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', '2023-11-05 16:39:06', 64),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 24),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 25),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 26),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 27),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 28),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 29),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 30),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 31),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 32),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 33),
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 44),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 34),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 35),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 36),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 37),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 38),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 39),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 40),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 41),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 42),
('[PHP] Nouveau cours disponible: .htaccess et VirtualHost', '/erp/public/formation/embed.php?slide=2PACX-1vQPcQCpPcWwmtrNBvviEH4XsrzoSaESGoY3_IubrYcfn5hUl6v7hkkZe2hsjzd4A7URJUPgzCxQm0su', '2023-10-06 19:06:46', 43),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 34),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 35),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 36),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 37),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 38),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 39),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 40),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 41),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 42),
('[PHP] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vTdrXos9q4OdrGa5aqBu23RHCMUiTYQJvjGSkFEk5kEM8ezG1uI7LqD7_X0_ZwIv_krzD1XPuaw5cYR', '2023-10-06 19:06:44', 43),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 34),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 35),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 36),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 37),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 38),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 39),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 40),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 41),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 42),
('[PHP] Nouveau cours disponible: Envoi d\'email via Google', '/erp/public/formation/embed.php?slide=2PACX-1vTylTuRLkhVOLQDtbdmaj3gb5QxS34cdlWMMEEJAOckmTbSL9G1I1qd-lOxeqvIjHuXvRW3g0PWH4Iv', '2023-10-06 19:06:44', 43),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 24),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 25),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 26),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 27),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 28),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 29),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 30),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:17', 31),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:17', 32),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:17', 33),
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:17', 44),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 24),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 25),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 26),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 27),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 28),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 29),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 30),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 31),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 32),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 33),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 34),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 35),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 36),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 37),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 38),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 39),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 40),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 41),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 42),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-10-05 13:11:56', 43),
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 44),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 34),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 35),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 36),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 37),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 38),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 39),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 40),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 41),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 42),
('[PHP] Nouveau cours disponible: La portée des objets', '/erp/public/formation/embed.php?slide=2PACX-1vSncP0sxJi5OciQZVcraYrgg-QLCzZdd2edctFYJNmOeMlT5R2xcx2XJQcNuVr_JMOzsPqTRo1fbdch', '2023-10-06 19:06:40', 43),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 34),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 35),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 36),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 37),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 38),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 39),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 40),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 41),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 42),
('[PHP] Nouveau cours disponible: Le constructeur et le destructeur', '/erp/public/formation/embed.php?slide=2PACX-1vQ7y6R1LGXubwgwSLegwpVzZbg07-lUDG86dK2EopAwSRanA0F2qYujpxVpl7tq061XGIF3Rxyplfdq', '2023-10-06 19:06:41', 43),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 34),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 35),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 36),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 37),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 38),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 39),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 40),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 41),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 42),
('[PHP] Nouveau cours disponible: Le débogage', '/erp/public/formation/embed.php?slide=2PACX-1vSCmOoX3Cc9kGaEyvUhotCZtPuOJdb51c-bEs01SuIptzi9D-rX033W_SVJwXax4STERmpqvBl2gxdd', '2023-10-06 19:06:45', 43),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 34),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 35),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 36),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 37),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 38),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 39),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 40),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 41),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 42),
('[PHP] Nouveau cours disponible: Les accesseurs et mutateurs', '/erp/public/formation/embed.php?slide=2PACX-1vTAxw6NGzfjhQWjRkbvvkApfRvQx1DtyYTOkJXivo1AVaaw4tscLAYG69p_B7f9Mmm_Z_pJk6pJPcJK', '2023-10-06 19:06:41', 43),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 34),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 35),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 36),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 37),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 38),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 39),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 40),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 41),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 42),
('[PHP] Nouveau cours disponible: Les architectures', '/erp/public/formation/embed.php?slide=2PACX-1vSLD1aGi3qgWNdRdXFHqdhkymFvb9KMaxszOD320R_yWFyejXduiarcikvN6Qade3XNbrYL8QwKyMd2', '2023-10-06 19:01:29', 43),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 34),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 35),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 36),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 37),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 38),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 39),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 40),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 41),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 42),
('[PHP] Nouveau cours disponible: Les boucles', '/erp/public/formation/embed.php?slide=2PACX-1vQA51Qd_QqfmMTsslSEh___AnNajd7A14YYH0Xu_bokEuudsyvSHJvOsNCXDfC9bOt27sou2YyRt3pQ', '2023-10-06 19:01:18', 43),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:39', 34),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:39', 35),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:39', 36),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:39', 37),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:39', 38),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:40', 39),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:40', 40),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:40', 41),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:40', 42),
('[PHP] Nouveau cours disponible: Les classes et objets', '/erp/public/formation/embed.php?slide=2PACX-1vRbk0SKmtBI-mhgsUCgYf_1v3jPxmLUDVohC6pJc3H-gW6D6eKTLk4v5ThMi8heF1JfCqW759VXVR5q', '2023-10-06 19:06:40', 43),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 34),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 35),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 36),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 37),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 38),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 39),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 40),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 41),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 42),
('[PHP] Nouveau cours disponible: Les classes étendues', '/erp/public/formation/embed.php?slide=2PACX-1vQ_uQ-BQmpqDKLV4fjb7CeISWnO6Gm_Qf2Kn0K1dwNOTSirfM-qbMj12_ItKxX9oWyHoodDj4GbCFc1', '2023-10-06 19:06:41', 43),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 34),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 35),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 36),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 37),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 38),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 39),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 40),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 41),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 42),
('[PHP] Nouveau cours disponible: Les conditions', '/erp/public/formation/embed.php?slide=2PACX-1vQui-FUPwU2KUFEhIBwJKcV_118RQTpZ6v5AEIrFKdZnLlgrFP9k9l1Xq4LxOoGpGLUMBbq3JQw_wZX', '2023-10-06 19:01:18', 43),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 24),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 25),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 26),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 27);
INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 28),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 29),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 30),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 31),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 32),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 33),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 34),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 35),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 36),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 37),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 38),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 39),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 40),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 41),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 42),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-10-05 13:11:57', 43),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 44),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 24),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 25),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 26),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 27),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 28),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 29),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 30),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 31),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 32),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 33),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 34),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 35),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 36),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 37),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 38),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 39),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 40),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 41),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 42),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-10-05 13:11:57', 43),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 44),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 34),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 35),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 36),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 37),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 38),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 39),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 40),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 41),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 42),
('[PHP] Nouveau cours disponible: Les requêtes AJAX', '/erp/public/formation/embed.php?slide=2PACX-1vRvbCuzNg3uRTtZFBqix0K7rWzF21Fzrlh7g3DSehnelxjj8ziYhyC9vdcAfY5pOgPYAotlHoEzNfhV', '2023-10-06 19:01:30', 43),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 34),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 35),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 36),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 37),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 38),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 39),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 40),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 41),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 42),
('[PHP] Nouveau cours disponible: Les super globales', '/erp/public/formation/embed.php?slide=2PACX-1vRcLg6BrDw2JnwDnKWFwvJMxL08fEkhbCcEqSwut6yU8kdh7vCbjDe8CxltTZLyDSSALEJXa1b500Dy', '2023-10-06 19:01:19', 43),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 34),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 35),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 36),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 37),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 38),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 39),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 40),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 41),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 42),
('[PHP] Nouveau cours disponible: Les tableaux', '/erp/public/formation/embed.php?slide=2PACX-1vSei8zfOxVIh3uMNWS_mbWkqLd_N9SYflfqWPIJdRKg2FHqydij9yAPA31Bi8Bab2kKlTnWEuuWj95l', '2023-10-06 19:01:19', 43),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 34),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 35),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 36),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 37),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 38),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 39),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 40),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 41),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 42),
('[PHP] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vQROikABRXxsW5pSKM3xWM6fQ8b_BswBmbi7jidMAQgKVnpJArHb7wZ4jVNi4sl1IlxjUwlj7Zo0ln9', '2023-10-06 19:06:47', 43),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 24),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 25),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 26),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 27),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 28),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 29),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 30),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 31),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 32),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 33),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 34),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 35),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 36),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 37),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 38),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 39),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 40),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 41),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 42),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-10-05 13:11:59', 43),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 44),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 34),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 35),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 36),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 37),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 38),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 39),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 40),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 41),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 42),
('[PHP] Nouveau cours disponible: Les Websockets', '/erp/public/formation/embed.php?slide=2PACX-1vSUXu8d3-64J_T0IlK0hMlVvMMW1GW5xrKF7h1sCkq4ioBcOub7kIaubnpEVdnC5aW43OycjgKQRqsf', '2023-10-06 19:06:47', 43),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 24),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 25),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 26),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 27),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 28),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 29),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 30),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 31),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 32),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 33),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 34),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 35),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 36),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 37),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 38),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 39),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 40),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 41),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 42),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-10-05 13:11:59', 43),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 44),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 34),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 35),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 36),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 37),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 38),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 39),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 40),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 41),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 42),
('[PHP] Nouveau cours disponible: Protection contre les failles', '/erp/public/formation/embed.php?slide=2PACX-1vRYfwlcmWLD1mJAOIhaQkBuled8iaFLvaD4S22fFzd67aVxuCUPcbmiEcZieFoIJKZ-mdHrgH77_v9x', '2023-10-06 19:06:44', 43),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 34),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 35),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 36),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 37),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 38),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 39),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 40),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 41),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 42),
('[PHP] Nouveau cours disponible: Protection des données', '/erp/public/formation/embed.php?slide=2PACX-1vRGJMgl3f5xyFWJDH7zzSplwSd-GBW0SStUqMl-2CNyxnByzX_AJaRUVdHMGd270dArCaz8StT6yTqi', '2023-10-06 19:06:47', 43),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 24),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 25),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 26),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 27),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 28),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 29),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 30),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 31),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 32),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 33),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 44),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 34),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 35),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 36),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 37),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 38),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 39),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 40),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 41),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 42),
('[PHP] Nouveau cours disponible: Suggestion d\'utilisation des classes avec les BDD', '/erp/public/formation/embed.php?slide=2PACX-1vTnHXHjKiY17TyIW1qXIo-TXGmKkt0x0iWW63TE6XaMjr8_ZWIaglosFHbuoDZebMyUY4-Cgz_RFNKT', '2023-10-06 19:06:42', 43),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 34),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 35),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 36),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 37),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 38),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 39),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 40),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 41),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 42),
('[REFERENCEMENT] Nouveau cours disponible: Enjeux de la diffusion', '/erp/public/formation/embed.php?slide=2PACX-1vRYyFclFkXvNTaK_a-f1Yxd_zFO9n4-p5AdmtZLJyKx86Hl0izgUIFObWGCK6PahJsfXHhFUNdB_dGw', '2023-11-09 08:12:17', 43),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 34),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 35),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 36),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 37),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 38),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 39),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 40),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 41),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 42),
('[REFERENCEMENT] Nouveau cours disponible: RGPD et outils', '/erp/public/formation/embed.php?slide=2PACX-1vTtsWY1WgHK0EEyr7zHr5kkOm70xbF1vO1P91JD9-6HBOfzuCZE5gzAw4LzDyELHrbjH4J940JUPPCe', '2023-11-09 08:12:19', 43),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 34),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 35),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 36),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 37),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 38),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 39),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 40),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 41),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 42),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Advertising - SEA', '/erp/public/formation/embed.php?slide=2PACX-1vTdbLEi3U3nXNFmvKfAr2rSDehXRMEbDFFtApV-Q7JHXnMK0okBYkv91Ge5RstqSIItUvEzC4ZiemYX', '2023-11-09 08:12:18', 43),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 34),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 35),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 36),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 37),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 38),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 39),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 40),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 41),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 42),
('[REFERENCEMENT] Nouveau cours disponible: Search Engine Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vREYzfuQwJrP8vBOBzjdRV-1_nrPnEQyEYBfPC7z1gQMzWO1OXNOX6xxci1h5y7WwPryg64NWU4c6Mo', '2023-11-09 08:12:18', 43),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 34),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 35),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 36),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 37),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 38),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 39),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 40),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 41),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 42),
('[REFERENCEMENT] Nouveau cours disponible: Search eXperience Optimization - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTF3Xp_VmPOY2gUN7g7mj9Gmaj_SYIe3q1UtLdRe1tWb5hObZyIzdyNAE6IpizogLqgskizPI5Ikpuz', '2023-11-09 08:12:19', 43),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 25),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 26),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 27),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 28),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 29),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 30),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 31),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 32),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 33),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 34),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 35),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 36),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 37),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 38);
INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 39),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 40),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 41),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 42),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-10-05 13:12:00', 43),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 44),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 34),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 35),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 36),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 37),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 38),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 39),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 40),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 41),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 42),
('[SQL] Nouveau cours disponible: Combinaison de plusieurs instructions - UNION', '/erp/public/formation/embed.php?slide=2PACX-1vTYazf9MZCRf8pH47a1w7E2dMlnBCZaSM1BKpJOUKGniEEf3OLh8mW4hDZTnfBCHwImpdfRpwZI7cRY', '2023-10-07 03:14:18', 43),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 34),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 35),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 36),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 37),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 38),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 39),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 40),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 41),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 42),
('[SQL] Nouveau cours disponible: Concepts de base', '/erp/public/formation/embed.php?slide=2PACX-1vSbi-x2vx4plN9IpsvEvgUkvayLy32JD9v1BJI1RHB7M1q_pEIYOvFZNKqBXfMp2R0tlMmRa57wo72b', '2023-10-06 19:06:50', 43),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 34),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 35),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 36),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 37),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 38),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 39),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 40),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 41),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 42),
('[SQL] Nouveau cours disponible: Création et suppression d\'une BDD', '/erp/public/formation/embed.php?slide=2PACX-1vRmiCaX5-7xBHcg31lWpsZZx1COHyYtDtCgC5aBkAC9GOcTcehFbaT72orftgFowQ8tpJp6UtexcOhM', '2023-10-07 03:14:06', 43),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 34),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 35),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 36),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 37),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 38),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 39),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 40),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 41),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 42),
('[SQL] Nouveau cours disponible: Création et suppression des tables', '/erp/public/formation/embed.php?slide=2PACX-1vSHfKvN66KIvMs3qtAJj6FwtZELMQtulSnOZGHJBEkmFc-H-A6w8qs7o33Z2hkvkM92RFNVQ9yKYjSg', '2023-10-07 03:14:08', 43),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 34),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 35),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 36),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 37),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 38),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 39),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 40),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 41),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 42),
('[SQL] Nouveau cours disponible: Filtrer les données - WHERE', '/erp/public/formation/embed.php?slide=2PACX-1vQV7EL_HV4mpVFAVXzMDHUpBpl1LEDtZPFF5FXkQxiOPsEcsGtwDNmuJnmN2MnNP69nuz-05vC2S42g', '2023-10-07 03:14:13', 43),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 34),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 35),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 36),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 37),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 38),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 39),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 40),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 41),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 42),
('[SQL] Nouveau cours disponible: Insertion d\'un enregistrement - INSERT', '/erp/public/formation/embed.php?slide=2PACX-1vSIjPHZN1GPH2oC0JaulF35Goucc1ud5Tbsj7P6puXM-_KHLD_IlwAiv1YY9LPDbk-6gRD9Mr9eXMOl', '2023-10-07 03:14:09', 43),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 34),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 35),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 36),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 37),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 38),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 39),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 40),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 41),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 42),
('[SQL] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vSyhL60Bv9ZKb9VEqR_IYnGbnwsMeWjzuTmaTQ3_BGpfVXuS5rcB8ZOqgtYftV_qH-Jcd_hw6DdUt7X', '2023-10-06 19:06:49', 43),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 34),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 35),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 36),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 37),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 38),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 39),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 40),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 41),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 42),
('[SQL] Nouveau cours disponible: Les alias - AS', '/erp/public/formation/embed.php?slide=2PACX-1vRgFtni2CefoQcH09TX5ZKuR8UTyQFIrLXEnrUC-Uwys7KKJJnTIEPIZVsOK77f1LG5iQ1rHMGaBIRz', '2023-10-07 03:14:12', 43),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 34),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 35),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 36),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 37),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 38),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 39),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 40),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 41),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 42),
('[SQL] Nouveau cours disponible: Les contraintes', '/erp/public/formation/embed.php?slide=2PACX-1vTaAsX0abmO8umLLh9ex0pVciTzz-4Hp5j4gsqzXpEKl3a6QV9SgePZf0bTdtDiIOE-XCbvkisTNuZv', '2023-10-07 03:14:09', 43),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 34),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 35),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 36),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 37),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 38),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 39),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 40),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 41),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 42),
('[SQL] Nouveau cours disponible: Les fonctions d\'agrégats', '/erp/public/formation/embed.php?slide=2PACX-1vQf9NzUcDwAVRRB1VluMenR0_HSMtDHQKBC695T0DEUc2W5pM8Gzo3XC40i51LaBVPqKV6-YDEg-VKk', '2023-10-07 03:14:16', 43),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 34),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 35),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 36),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 37),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 38),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 39),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 40),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 41),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 42),
('[SQL] Nouveau cours disponible: Les fonctions de manipulation de date', '/erp/public/formation/embed.php?slide=2PACX-1vQj--xO2AyEjrJ_3k_8Lm7F1-_AD_2rDcSDf0mjrCR7Pa24JOwBWLEq1fL9JgwIybVZNFGG7eakEQP9', '2023-10-07 03:14:19', 43),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 34),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 35),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 36),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 37),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 38),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 39),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 40),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 41),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 42),
('[SQL] Nouveau cours disponible: Les jointures - JOIN', '/erp/public/formation/embed.php?slide=2PACX-1vT27owsZiTmYaWwBDBomlLwrqURDIPzOH4vzV8RdExg99kUnCQllsyYjVLCWWsf7EMiVs-k885_FPJh', '2023-10-07 03:14:15', 43),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 34),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 35),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 36),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 37),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 38),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 39),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 40),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 41),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 42),
('[SQL] Nouveau cours disponible: Les opérateurs SQL', '/erp/public/formation/embed.php?slide=2PACX-1vT19l_JQmgeGpXVR0awhYuOMHeocENiv5MHM1jbcspNvYICoaDn7HgkXKRtwL6sAVa_5ucKzDt-meU9', '2023-10-07 03:14:06', 43),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 34),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 35),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 36),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 37),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 38),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 39),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 40),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 41),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 42),
('[SQL] Nouveau cours disponible: Les regroupements - GROUP BY et HAVING', '/erp/public/formation/embed.php?slide=2PACX-1vQCYcVrVyI5Bmi5wa4U8IO86SSSymcp-6ZJ38PvX744-b3B9JaWHw6XpJCpfdO26t42RkKiwa2k4Y-O', '2023-10-07 03:14:17', 43),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 34),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 35),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 36),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 37),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 38),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 39),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 40),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 41),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 42),
('[SQL] Nouveau cours disponible: Les sous-requêtes', '/erp/public/formation/embed.php?slide=2PACX-1vS89oycu1jTUDdY1Z8R2xbm5gXV7fVWYXtgF58plRo4yLKp_pN4s3QnOCh-Qqxd203k4zIAtBtXLBvD', '2023-10-07 03:14:17', 43),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 34),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 35),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 36),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 37),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 38),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 39),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 40),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 41),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 42),
('[SQL] Nouveau cours disponible: Mémo', '/erp/public/formation/embed.php?slide=2PACX-1vQ9bvixsS3jmP4808HpCPDnhW0W0NaHfBtPLvv5Oun9wAvMelSWanTZ8Y3ZD2Oqe76xJDQmuy0gKLO-', '2023-10-06 19:06:48', 43),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 34),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 35),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 36),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 37),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 38),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 39),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 40),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 41),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 42),
('[SQL] Nouveau cours disponible: Mise à jour d\'un enregistrement - UPDATE', '/erp/public/formation/embed.php?slide=2PACX-1vRQYsF8dCkbNJyxPEZv1YnVSW_NsiNJbYATQxu-1TXUokJab36bh7Ior_YkSA-nsKGTrv5b3-81kAVM', '2023-10-07 03:14:10', 43),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 34),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 35),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 36),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 37),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 38),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 39),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 40),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 41),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 42),
('[SQL] Nouveau cours disponible: Modèles de recherche - LIKE', '/erp/public/formation/embed.php?slide=2PACX-1vQ5MGHK4JVzFnBA6jJcEHVpxMFzwTePrD0eb9CikktYKn7w6z7q5PM-bEv7pOjbqjdhM5Y2Tn9hSIPr', '2023-10-07 03:14:14', 43),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 34),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 35),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 36),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 37),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 38),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 39),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 40),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 41),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 42),
('[SQL] Nouveau cours disponible: Modifier la structure d\'une table - ALTER TABLE', '/erp/public/formation/embed.php?slide=2PACX-1vR1UPkZlI64EvGYVNO9mh3KhuSA16ZcL_oAUPTSQ8OxFM2-1VAxbDpNQOdg-yqnEZSc9xhJJka3Fsi0', '2023-10-07 03:14:08', 43),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 34),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 35),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 36),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 37),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 38),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 39),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 40),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 41),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 42),
('[SQL] Nouveau cours disponible: PhpMyAdmin', '/erp/public/formation/embed.php?slide=2PACX-1vRFfl3Z9J91u-o02FLDs1dV-MihMnREMp_BbyRmMV1fBesp3_TbxembzeNsnw_GHIpi7cjD5LyLncgI', '2023-10-06 19:06:49', 43),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 34),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 35),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 36),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 37),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 38),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 39),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 40),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 41),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 42),
('[SQL] Nouveau cours disponible: Récupérer des enregistrements - SELECT', '/erp/public/formation/embed.php?slide=2PACX-1vRXpD57CLw7rfC19bVnVGI_vSTIkvmeKCxVP8aPrcUj00Y0JiH2X0frj5Zm9oY3kLPcno1CXUg95Uim', '2023-10-07 03:14:11', 43),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 34),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 35),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 36),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 37),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 38),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 39),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 40),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 41),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 42),
('[SQL] Nouveau cours disponible: Suppression d\'un enregistrement - DELETE', '/erp/public/formation/embed.php?slide=2PACX-1vTQf_6ULrlgOl5wAAiOTRFuyj7xS6abKGAxJbCMiB1yzZhVEL8MQX54XE3Oe-dhpgoOloCRC1UBa7I0', '2023-10-07 03:14:11', 43),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 34),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 35),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 36);
INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 37),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 38),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 39),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 40),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 41),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 42),
('[SQL] Nouveau cours disponible: Syntaxes des instructions SQL', '/erp/public/formation/embed.php?slide=2PACX-1vRwXkkyEgoV8GPlajkDYjnVdJto6BiSowcEOAzlZmf1gEhx8PksZbOIUhsYaAF8gscrG1phaGmZZKQJ', '2023-10-06 19:06:51', 43),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 34),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 35),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 36),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 37),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 38),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 39),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 40),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 41),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 42),
('[SQL] Nouveau cours disponible: Trier les données - ORDER BY', '/erp/public/formation/embed.php?slide=2PACX-1vQL1sxVnMKXECJuTpApTYQqhGHChcLv_bmxcLN4uGHV-_whFprU44CWhkGOdWgZm9YIPTDsbR2fZhLX', '2023-10-07 03:14:14', 43),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 34),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 35),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 36),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 37),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 38),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 39),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 40),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 41),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 42),
('[SQL] Nouveau cours disponible: Types de données', '/erp/public/formation/embed.php?slide=2PACX-1vS1xHXqnjxwk95Xzu81P1UEoU54Wm8dpEleqlOVPhSU-msLtYYo_x0rHLlISJgdr51_KfRC7_9YJyA8', '2023-10-07 03:14:07', 43),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 34),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 35),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 36),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 37),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 38),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 39),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 40),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 41),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 42),
('[SYMFONY] Nouveau cours disponible: CRUD', '/erp/public/formation/embed.php?slide=2PACX-1vR5KDaE1H0PuCbO5j-IGV4wZ9XWStkH1S7sQz-yC3mrsV596cIiffE3wYNl2KXcbXeL4PIPsBSYrqTD', '2023-10-05 13:12:03', 43),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 34),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 35),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 36),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 37),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 38),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 39),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 40),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 41),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 42),
('[SYMFONY] Nouveau cours disponible: Envoi d\'emails', '/erp/public/formation/embed.php?slide=2PACX-1vSOqnNGSQqPqH-Yzgx-ejDlrUEkpEpC9sKq9oajs3ZsBOoIKuUB9cnv_zrLfJ2mPOWYXEmtRnF5JKWH', '2023-10-05 13:12:03', 43),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 34),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 35),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 36),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 37),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 38),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 39),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 40),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 41),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 42),
('[SYMFONY] Nouveau cours disponible: Formulaires', '/erp/public/formation/embed.php?slide=2PACX-1vQEroWD7fa1Wb22CS8d-gHtb61blIX-szNOU51HIcb4yYi8O-7NGYZBqUl-4f8X6EjnNjQFA-EcOfPE', '2023-10-05 13:12:04', 43),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 34),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 35),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 36),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 37),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 38),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 39),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 40),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 41),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 42),
('[SYMFONY] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQNx1OEXScefP1A8kmOJlSGcN4o9cxqLJUj8e5lvJAPibNKl5tQ6S2dTy-IBdYCotikKLKgme14jMBI', '2023-10-05 13:12:04', 43),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 34),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 35),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 36),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 37),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 38),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 39),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 40),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 41),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 42),
('[SYMFONY] Nouveau cours disponible: L\'API', '/erp/public/formation/embed.php?slide=2PACX-1vRMF7D7q6D0zwXZ32YxUCaCEeqZdHCIJHPX1FJhYJIhisA2Lm0n8YdNOOxZnGSckPoIdsy3I85-znqC', '2023-10-05 13:12:04', 43),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 34),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 35),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 36),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 37),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 38),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 39),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 40),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 41),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 42),
('[SYMFONY] Nouveau cours disponible: Les bases', '/erp/public/formation/embed.php?slide=2PACX-1vTOXZAp0ffIJXUQsgsw8ffea7E3QcK1coDXInIs4G45KxVkThK_ZFuoUjR6fMsx_HUYgNNoPuhFeTh5', '2023-10-05 13:12:05', 43),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 34),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 35),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 36),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 37),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 38),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 39),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 40),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 41),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 42),
('[SYMFONY] Nouveau cours disponible: Les bundles', '/erp/public/formation/embed.php?slide=2PACX-1vTVpBo-ExYNSvqi44N-kmxI0pYTDrFfxoa72rIOYugv2xxHJm2t9TPMR1JoxAYlvUKumkGplLe5GWlg', '2023-10-05 13:12:05', 43),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 34),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 35),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 36),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 37),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 38),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 39),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 40),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 41),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 42),
('[SYMFONY] Nouveau cours disponible: Les entités', '/erp/public/formation/embed.php?slide=2PACX-1vRvu5CsADOV0maevNRtaJTC_AyAj1lyuNv9ajz5ni9mtVP7KVlDTBppYz1GCaDb4mOsZ2thdTJgObEN', '2023-10-05 13:12:07', 43),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 34),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 35),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 36),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 37),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 38),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 39),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 40),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 41),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 42),
('[SYMFONY] Nouveau cours disponible: Les migrations', '/erp/public/formation/embed.php?slide=2PACX-1vSgOHrvN7caCCuTYsJbkfLyueqfz8rEnSTj1KS9lsORLWsEpxa7LoIBeqxkruE5Vq7LEGZ3pYZLV9k7', '2023-10-05 13:12:07', 43),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 34),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 35),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 36),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 37),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 38),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 39),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 40),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 41),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 42),
('[SYMFONY] Nouveau cours disponible: Les routes', '/erp/public/formation/embed.php?slide=2PACX-1vRJq7G2eQqSuDNqgB2as5glAhXqrWGSD3z9dIqTrpvzByDWvomktUUkx-0PvgdWDYe2WP9rcUIdcwZH', '2023-10-05 13:12:08', 43),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 34),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 35),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 36),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 37),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 38),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 39),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 40),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 41),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 42),
('[SYMFONY] Nouveau cours disponible: Les services', '/erp/public/formation/embed.php?slide=2PACX-1vRoYbZGRI7kABu-a8qNJnkk0X9-qp-8cDIUyVv6S3jel3ILB3-hXgxGjW2TnC9WFmv2Vk3KFSIMRe0S', '2023-10-05 13:12:08', 43),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 34),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 35),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 36),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 37),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 38),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 39),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 40),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 41),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 42),
('[SYMFONY] Nouveau cours disponible: Les tests', '/erp/public/formation/embed.php?slide=2PACX-1vS26pxmA3ymvTfGoaOTmMPKb0D41Q_FDNVfvW2caRnvQfA33bY_MlVei-v6cqkHt282MIPM5na0lYX0', '2023-10-05 13:12:09', 43),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 34),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 35),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 36),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 37),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 38),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 39),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 40),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 41),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 42),
('[SYMFONY] Nouveau cours disponible: Les traits', '/erp/public/formation/embed.php?slide=2PACX-1vRf3xFveKC-4OabyF5WXobw8cfPtMOyyTRIl539HIUfOdMSXgyDVBLTCwqRMoxtVK6VUafjo5UOE7su', '2023-10-05 13:12:09', 43),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 34),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 35),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 36),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 37),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 38),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 39),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 40),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 41),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 42),
('[SYMFONY] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vQh7vcMKDdz_NYrGsd0pbzXAxJxuVhNgMxnbwg9KfP9m8-biLNP87KNzKDFv-mioCRCxKWYXl4S-R3t', '2023-10-05 13:12:10', 43),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 34),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 35),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 36),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 37),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 38),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 39),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 40),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 41),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 42),
('[SYMFONY] Nouveau cours disponible: Twig', '/erp/public/formation/embed.php?slide=2PACX-1vQgVMNyjSH_mvOvSNwhi18PhSJNBzgxAV6JQLSq9ahxVStSbQ-_-1qdA29uZbVErC_kvXTIm6epvM6T', '2023-10-05 13:12:10', 43),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 34),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 35),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 36),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 37),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 38),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 39),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 40),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 41),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 42),
('[SYMFONY] Nouveau cours disponible: UX initiative', '/erp/public/formation/embed.php?slide=2PACX-1vTpMGG956uluDZeXneoPmIitskKetZNezYAk9hbggfDymiamqsN9Ruc_ACB0lyatEWVB2ORJ-YGkF1G', '2023-10-05 13:12:10', 43),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 34),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 35),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 36),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 37),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 38),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 39),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 40),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 41),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 42),
('[UML] Nouveau cours disponible: Diagramme d\'activité', '/erp/public/formation/embed.php?slide=2PACX-1vRrnE6puZmu_Ce2xBpyZsRD4WXV4KisvHpA6EwP7daHWZIDGatOzbkKr38x_00d5hXEWvDTjV_m6Rdy', '2023-10-07 00:37:40', 43),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 34),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 35),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 36),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 37),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 38),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 39),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 40),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 41),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 42),
('[UML] Nouveau cours disponible: Diagramme de cas d\'utilisation (Use Case)', '/erp/public/formation/embed.php?slide=2PACX-1vT7m1e84q_SKoS3bWE001BH61rHE3WebigyE8XI4MjyuRqRjTyetZlcf1z7wij7ARwYKwEIyNQfUuSi', '2023-10-07 00:37:40', 43),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 34),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 35),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 36),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 37),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 38),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 39),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 40),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 41),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 42),
('[UML] Nouveau cours disponible: Diagramme de classe', '/erp/public/formation/embed.php?slide=2PACX-1vT3V-2VEnkVuO3TiFI2nw-p9kEQ-_tFHYAiOXMik9BCg8yLzUkUO_n2597uoL9BZvcQT21XPvGzl1wf', '2023-10-07 00:37:42', 43),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 34),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 35),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 36),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 37),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 38),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 39),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 40),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 41),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 42),
('[UML] Nouveau cours disponible: Diagramme de séquence', '/erp/public/formation/embed.php?slide=2PACX-1vS32a_cMZTnA07cunLvN-Xe9z9U0VVfsQqlDp0F_v6yFmKgMdW9a_N8xdZSvTEOJ4KbXohHXPWeR9tW', '2023-10-07 00:37:41', 43),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 34),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 35),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 36),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 37),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 38),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 39),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 40),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 41),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 42),
('[UML] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vRAhiKhhd10HcITnFzjvAHTyt1-dYw_mkvMNFkCY-5ld_zg9SEvOAuGL47iRDFsQSM3oK19YK8IJPWQ', '2023-10-07 00:37:39', 43),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 34),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 35);
INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 36),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 37),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 38),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 39),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 40),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 41),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 42),
('[UX] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vRF8nG194zf1zRihqb_HB_Q3HPQPqIrJGTP1ETaf01MiN052MCDDhzCVdHHdXmX6ZcoYanXlUL1w0yb', '2023-10-07 00:56:59', 43),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 34),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 35),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 36),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 37),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 38),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 39),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 40),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 41),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 42),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-09 08:12:22', 43),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 53),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 54),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 55),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 56),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 57),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 58),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 59),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 60),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 61),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 62),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 63),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 64),
('[WORDPRESS] Nouveau cours disponible: Création de contenu', '/erp/public/formation/embed.php?slide=2PACX-1vRILdlwQ0WEqB90wWAVf-FQPTNTJH6zbzPtqGP-qBPvcUc22HNLd-7LCwTgoFJCIkVpR2Li8fg6zIzL', '2023-11-07 14:08:55', 65),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 34),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 35),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 36),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 37),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 38),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 39),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 40),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 41),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 42),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-09 08:12:23', 43),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 53),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 54),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 55),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 56),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 57),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 58),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 59),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 60),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 61),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 62),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 63),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 64),
('[WORDPRESS] Nouveau cours disponible: Extensions et plugins', '/erp/public/formation/embed.php?slide=2PACX-1vSeJgfpoauOhUchXVz3wcImW_vvku2dwlKB0abJmF26JpTj1WySm0nwH0VlDEmCGwErnB9qxHJLlVYw', '2023-11-07 14:08:57', 65),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 34),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 35),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 36),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 37),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 38),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 39),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 40),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 41),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 42),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-09 08:12:23', 43),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 53),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 54),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 55),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 56),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 57),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 58),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 59),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 60),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 61),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 62),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 63),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 64),
('[WORDPRESS] Nouveau cours disponible: Gestion des médias', '/erp/public/formation/embed.php?slide=2PACX-1vRGb3w109xb2PByhNMHmmLA13OK3x02uCOnzvo42UR3Uzr1VNPXnSlgHIJcI6HFOnQDsyo2a2dhkOnd', '2023-11-07 14:08:56', 65),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 34),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 35),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 36),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 37),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 38),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 39),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 40),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 41),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 42),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-09 08:12:20', 43),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 53),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 54),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 55),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 56),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 57),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 58),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 59),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 60),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 61),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 62),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 63),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 64),
('[WORDPRESS] Nouveau cours disponible: Installation', '/erp/public/formation/embed.php?slide=2PACX-1vQAvq6926KXgUdFRMHJOnYzCEexE4pvdL2kbuauYaKReq40bYx16-QCLItVtk9jb5d6R-NSacaXYgJj', '2023-11-07 14:08:54', 65),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 34),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 35),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 36),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 37),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 38),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 39),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 40),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 41),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 42),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-09 08:12:21', 43),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 53),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 54),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 55),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 56),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 57),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 58),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 59),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 60),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 61),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 62),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 63),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 64),
('[WORDPRESS] Nouveau cours disponible: Interfaces', '/erp/public/formation/embed.php?slide=2PACX-1vTRd9GA9vPGzqPIabE7PeUgblqweIHP1cIATflD3yS60fU0C3EHJLnVGkEFsXIdF2gMhZNFjXIMz2Gz', '2023-11-07 14:08:55', 65),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 34),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 35),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 36),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 37),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 38),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 39),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 40),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 41),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 42),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-09 08:12:20', 43),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 53),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 54),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 55),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 56),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 57),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 58),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 59),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 60),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 61),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 62),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 63),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 64),
('[WORDPRESS] Nouveau cours disponible: Introduction', '/erp/public/formation/embed.php?slide=2PACX-1vQM5HoGvwZZtudPXwt-glTbURmRRk_Jwxc9SZMEVpueBOeG_UJf1KhCjPZABDIiEISdpSr-2OJEXUi-', '2023-11-07 14:08:54', 65),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 34),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 35),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 36),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 37),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 38),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 39),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 40),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 41),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 42),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-09 08:12:25', 43),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 53),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 54),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 55),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 56),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 57),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 58),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 59),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 60),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 61),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 62),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 63),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 64),
('[WORDPRESS] Nouveau cours disponible: Le référencement - SEO', '/erp/public/formation/embed.php?slide=2PACX-1vTjniYcYt21SEjrx_HjvVABIbFHLv2ZZNPsW_J1arF_vuatZQYTkkIbMqFE0Q1MRYfPgqkTgV2xiDwS', '2023-11-07 14:08:58', 65),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 34),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 35),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 36),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 37),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 38),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 39),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 40),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 41),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 42),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-09 08:12:22', 43),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 53),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 54),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 55),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 56),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 57),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 58),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 59),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 60),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 61),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 62),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 63),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 64),
('[WORDPRESS] Nouveau cours disponible: Personnalisation du site', '/erp/public/formation/embed.php?slide=2PACX-1vT8W3TiL_XJG1EzDJz_0SVqeHng0WGrra_sFnT6YS1QqOEN592bbYsreOtxzI2mqZrVnlieXfsVEimJ', '2023-11-07 14:08:56', 65),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 34),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 35),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 36),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 37),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 38),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 39),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 40),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 41),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 42),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-09 08:12:24', 43),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 53),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 54),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 55),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 56),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 57),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 58),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 59),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 60),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 61),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 62),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 63),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 64),
('[WORDPRESS] Nouveau cours disponible: Sécurité et maintenance', '/erp/public/formation/embed.php?slide=2PACX-1vQPaLEMvl5i3CniCGsyzK-r4JgnW1U-dMuPLj4sZpF_CE5_bBBIy0OyUI4bPX9mylNPE-bTjwUYV7Hn', '2023-11-07 14:08:57', 65);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_module` varchar(50) NOT NULL,
  `quiz_lien` varchar(255) NOT NULL,
  `quiz_difficulte` int(11) NOT NULL COMMENT '0: Facile ; 1: Modéré ; 2: Difficile ; 3: Extrême',
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_module`, `quiz_lien`, `quiz_difficulte`, `id_formateur`) VALUES
(3, 'html', '78736813', 0, 1);

-- --------------------------------------------------------

--
-- Structure de la table `quiz_sessions`
--

DROP TABLE IF EXISTS `quiz_sessions`;
CREATE TABLE `quiz_sessions` (
  `quiz_sessions_id` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `quiz_session_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz_sessions`
--

INSERT INTO `quiz_sessions` (`quiz_sessions_id`, `id_session`, `id_quiz`, `quiz_session_active`) VALUES
(61, 1, 3, 1),
(62, 2, 3, 0);

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

DROP TABLE IF EXISTS `secteurs`;
CREATE TABLE `secteurs` (
  `id_secteur` int(11) NOT NULL,
  `nom_secteur` varchar(50) NOT NULL,
  `logo_secteur` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `secteurs`
--

INSERT INTO `secteurs` (`id_secteur`, `nom_secteur`, `logo_secteur`) VALUES
(1, 'Numérique', 'logo_numerique.png'),
(2, 'Tertiaire', 'logo_tertiaire_numerique.png'),
(3, 'Santé & Social', 'logo_sante_social.png'),
(4, 'Carrières & Emplois', 'logo_carrieres_emplois.png'),
(5, 'Industrie & Bâtiment', 'logo_industrie_batiment.png');

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
CREATE TABLE `sessions` (
  `id_session` int(11) NOT NULL,
  `nom_session` varchar(25) NOT NULL,
  `duree_stage` int(11) NOT NULL,
  `sigle_session` varchar(50) NOT NULL,
  `date_debut_session` date NOT NULL,
  `date_fin_session` date NOT NULL,
  `date_debut_stage` date NOT NULL,
  `date_fin_stage` date NOT NULL,
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id_session`, `nom_session`, `duree_stage`, `sigle_session`, `date_debut_session`, `date_fin_session`, `date_debut_stage`, `date_fin_stage`, `id_formateur`) VALUES
(1, 'DEV34-22-02', 280, 'DWWM', '0000-00-00', '0000-00-00', '2023-04-11', '2023-06-09', 1),
(2, 'CDA34-23-01', 350, 'CDA', '2023-05-09', '2024-02-20', '2023-11-20', '2024-01-26', 1),
(3, 'DEVFAD31-23-02', 273, 'DWWM', '2023-10-19', '2024-07-03', '0000-00-00', '0000-00-00', 1);

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

DROP TABLE IF EXISTS `sites`;
CREATE TABLE `sites` (
  `id_site` int(11) NOT NULL,
  `libelle_site` varchar(50) NOT NULL,
  `contact_mail_site` varchar(75) NOT NULL,
  `contact_tel_site` varchar(10) NOT NULL,
  `adresse_num_site` int(11) DEFAULT NULL,
  `adresse_bis_site` tinyint(1) NOT NULL DEFAULT 0,
  `adresse_rue_site` varchar(500) NOT NULL,
  `adresse_cp_site` varchar(5) NOT NULL,
  `adresse_ville_site` varchar(75) NOT NULL,
  `adresse_supp_site` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sites`
--

INSERT INTO `sites` (`id_site`, `libelle_site`, `contact_mail_site`, `contact_tel_site`, `adresse_num_site`, `adresse_bis_site`, `adresse_rue_site`, `adresse_cp_site`, `adresse_ville_site`, `adresse_supp_site`) VALUES
(1, 'Toulouse', 'adrarinfo@adrar-formation.com', '0562192080', 2, 0, 'Rue Irène et Joliot Curie', '31520', 'Ramonville-Saint-Agne', NULL),
(2, 'Montpellier', 'montpellierinfo@adrar-formation.com', '0481098944', 4657, 0, 'Rue de la Jeune Parque', '34070', 'Montpellier', NULL),
(3, 'Carcassonne', 'carcassonneinfo@adrar-formation.com', '0481098944', NULL, 0, 'Zone du Pont Rouge - Espace Xénon', '11000', 'Carcassonne', NULL),
(4, 'Tarbes', 'accueiltarbes@adrar-formation.com', '0562939516', 10, 0, 'Boulevard Pierre Renaudet', '65000', 'Tarbes', '« Bâtiment 411 »'),
(5, 'Perpignan', 'perpignaninfo@adrar-formation.com', '0481098944', 441, 0, 'Rue Aristide Bergès', '66000', 'Perpignan', 'Bâtiment les 5 éléments');

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

DROP TABLE IF EXISTS `stages`;
CREATE TABLE `stages` (
  `id_stage` int(11) NOT NULL,
  `rue_lieu_stage` varchar(100) NOT NULL,
  `cp_lieu_stage` varchar(5) NOT NULL,
  `ville_lieu_stage` varchar(50) NOT NULL,
  `pays_lieu_stage` varchar(25) NOT NULL,
  `nom_tuteur` varchar(50) NOT NULL,
  `prenom_tuteur` varchar(50) NOT NULL,
  `mail_tuteur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id_stage`, `rue_lieu_stage`, `cp_lieu_stage`, `ville_lieu_stage`, `pays_lieu_stage`, `nom_tuteur`, `prenom_tuteur`, `mail_tuteur`) VALUES
(1, '68 Avenue du Pont Juvenal', '34000', 'Montpellier', 'France', 'BALBIS', 'Mouro', 'tatobalbis@gmail.com'),
(2, '64B route de Narbonne', '34500', 'Béziers', 'France', 'BOUJANDIR', 'Adil', 'topspeed.beziers@gmail.com'),
(3, '4 Avenue de la voie domitienne', '34500', 'Béziers', 'France', 'GHIOUANE', 'Chafik', 'chafeck@hotmail.fr'),
(4, '11 Quai Baley', '29150', 'Chateaulin', 'France', 'DURAND', 'Jérémy', 'taxidukoala@gmail.com'),
(5, '2 Boulevard Jean Bouin', '34500', 'Béziers', 'France', 'LEPRETRE', 'Emmanuel', 'lesopticiensaccord@gmail.com'),
(6, '710 rue d\'Aleo', '34080', 'Montpellier', 'France', 'BOURAI', 'Ramdane', 'r.bourai@nouas.org'),
(7, '4 Quai de la dunette', '34200', 'Sète', 'France', 'BRENAC', 'Philippe', 'brenacphilippe73@gmail.com'),
(8, '239 rue des Étoffes', '34400', 'Lunel', 'France', 'AMIRROUCHE', 'Redouane', 'contact@perform34.com'),
(9, '11 rue de l\'abrivado', '34740', 'Vendargues', 'France', 'GADEA', 'Delphine', 'ehpadmasmarguerite.secretariat@gmail.com'),
(10, '7 rue de la Costa Brava', '34070', 'Montpellier', 'France', 'SQUARATTI', 'Ryan', 'contact@foodeat.fr'),
(11, '23 avenue de la mouyssaguese', '31280', 'Dremil Lafage', 'France', 'POP', 'Alexandru', 'entreprise.benazet@gmail.com'),
(12, '2 avenue de Montpellier', '34820', 'Teyran', 'France', 'JOUAUX', 'Muriel', 'aquas34@yahoo.com');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

DROP TABLE IF EXISTS `stagiaires`;
CREATE TABLE `stagiaires` (
  `id_stagiaire` int(11) NOT NULL,
  `nom_stagiaire` varchar(50) NOT NULL,
  `prenom_stagiaire` varchar(50) NOT NULL,
  `mail_stagiaire` varchar(100) NOT NULL,
  `pseudo_stagiaire` varchar(50) DEFAULT NULL,
  `mdp_stagiaire` varchar(60) NOT NULL,
  `mdp_decode_stagiaire` varchar(50) NOT NULL,
  `tel_stagiaire` varchar(10) NOT NULL,
  `date_naissance_stagiaire` date NOT NULL,
  `est_actif` tinyint(1) NOT NULL DEFAULT 0,
  `documents` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `id_session` int(11) DEFAULT NULL,
  `id_stage` int(11) DEFAULT NULL,
  `convention_recue` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_1` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_2` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_3` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_recue` tinyint(1) DEFAULT NULL,
  `evaluation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `evaluation_recue` tinyint(1) DEFAULT NULL,
  `compteur_demandes` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`id_stagiaire`, `nom_stagiaire`, `prenom_stagiaire`, `mail_stagiaire`, `pseudo_stagiaire`, `mdp_stagiaire`, `mdp_decode_stagiaire`, `tel_stagiaire`, `date_naissance_stagiaire`, `est_actif`, `documents`, `id_session`, `id_stage`, `convention_recue`, `horaires_recues_1`, `horaires_recues_2`, `horaires_recues_3`, `attestation_mail_envoye`, `attestation_recue`, `evaluation_mail_envoye`, `evaluation_recue`, `compteur_demandes`) VALUES
(23, 'BOTTA', 'Facundo', '', 'fbotta22', '$2y$10$Q7drOfyPNLjvZlXanILgqu2VGEyhqEq6sLaLBy71qwnnb1NDLEMKm', 'Unluckily-Mayflower3-Showroom', '', '0000-00-00', 1, NULL, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(24, 'BOUJANDIR', 'Karim', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 2, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(25, 'BOURHIL', 'Yannis', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 3, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(26, 'CHABROUX', 'Jérémy', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 4, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(27, 'EFNANE', 'Haitam', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 5, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(28, 'GATELLIER', 'Amory', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 6, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(29, 'HUET', 'Laurent', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 7, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(30, 'JABRE', 'Hamza', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 8, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(31, 'MAKEMBE', 'Céline', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 9, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(32, 'SETIAO', 'Tiffaine', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 11, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(33, 'PIERROT', 'Gilles', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 12, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(34, 'AOUACHRIA', 'Hibat', '', NULL, '', '', '', '0000-00-00', 0, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'CAMOSSI', 'Jérémy', '', 'jcamossi23', '$2y$10$OhWBG5CNdh9uz7ZCxv9Gg.3ev.lkXm.mQKBBKG2TE9k2N7OWKveyK', 'Endanger-Cartload-Splicing7', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'DELLA RICA', 'Steven', '', 'sdellarica23', '$2y$10$GGAmQVRywix8o2AuB1EjmuwdfvIqyTL7zCqAgVVHvx8kPvta5FA8W', 'Relative-Scrutiny4-Judgingly', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'DELMON', 'Eryan', '', 'edelmon23', '$2y$10$Ybk4S1lF.UwjYBy3L0ouquw3nXUA.gnotiC1xXf6BAaq9d0eP9Q3a', 'Jump-Geography-Tanned4', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'DILMAMODE', 'Yasmine', '', 'ydilmamode23', '$2y$10$fFs.q1CzxL5viZpY7GQQ3u75sAIR42ZjDx2O8c6LoG7ZfqaQ2/wwS', 'Verbalize-Moisten0-Abroad', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'EYMARD', 'Luc', '', 'leymard23', '$2y$10$ojbOgfDcVi3Fberfubxpp.NAjq9N2IieCcJX91MNbs4rLPL00Hjkm', 'Laboring1-Wobbly-Giveaway', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 'FAKIR', 'Karim', '', 'kfakir23', '$2y$10$j2Xq3P/.3s9osGcWyiJus.RqHqfV1lwDARnDd55twSJFMl2XNsKY2', 'Satirical-Morally7-Stash', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 'GIRARD', 'Anthony', '', 'agirard23', '$2y$10$pkPDeNvSYwMrDo4EDvuUX.yzunc0fZ30yyHjuyA/lhKn93LqrciYy', 'Vitality-Parted-Duffel9', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 'HERBETTE', 'Alban', '', 'aherbette23', '$2y$10$uX8O1XfZi08be9D/WuI6S.x.0Yi4g3MSvLZSOMmvmHPMqVqeK0ozK', 'Unmarked9-Foyer-Cleaver', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 'VONGSY', 'Laura', '', 'lvongsy23', '$2y$10$07eeFFiI6gZauE9tvhn/GOKwJGs/9lw8QQUsjsAOX5wP9dLBH/y2S', 'Enlisted-Appendage7-Commence', '', '0000-00-00', 1, NULL, 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 'MOUSTAGHFIR', 'Waël Amir', '', NULL, '', '', '', '0000-00-00', 0, NULL, 1, 10, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(52, 'RODRIGUES', 'Ambroise', '', 'ambroise', '$2y$10$4bVa6wUDoIDOX75sf1/9quHK4gyEhOu3vj19Hb8NLzpzwIbEs5BVu', 'Q45tx1020!', '123456789', '2002-02-09', 1, NULL, 1, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(53, 'BRUGIAFREDDO', 'Chloé', '', 'cbrugiafreddo23', '$2y$10$ZrOkEq44R8lEAllMvdVAOO6uxKnRfqenEeaLqQ7S5iRn5fdwW/Gw2', 'Anyhow-Hence8-Copartner', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(54, 'DELBOS', 'Alexis', '', 'adelbos23', '$2y$10$KnyBmc0c4Nm5shZkGaAb6O5q9Bsz4hkyn7VNiggDAOSUDpQX5G39K', 'Accustom-Tanning-List5', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(55, 'DUMAY', 'Adèle', '', 'adumay23', '$2y$10$AYymSaOB.uBFui3Efow8nerqvYk56nz9CmRj/kTFZJXFnFKV43MFa', 'Dislike8-Kimono-Spoiler', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(56, 'LEPRAT', 'Joanna', '', 'jleprat23', '$2y$10$ePMuDcffBSF2nT0XtYTK2.91a0phwbbiLJO3m6dvEoRzQH24.BZG6', 'Powdered9-Hermit-Evolve', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(57, 'MAYER', 'Justin', '', 'jmayer23', '$2y$10$8gl7jsP9oenbNjsBU8/ALO27bS/yByXoBEIGfVx5e7vPg2dKBP9PS', 'Unlit-Wasabi7-Affirm', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(58, 'MORENO', 'Adrien', '', 'amoreno23', '$2y$10$YjeGPcaoSxFggJrWzSoEl.wM8sC7jt7kBYX0cAw4ZUkTYeRLzxiNS', 'Nappy7-Leggings-Coerce', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(59, 'NIVESSE', 'Jérôme', '', 'jnivesse23', '$2y$10$o6as6tBcnfVtw93sT7K1kulC0.0n1f.Xx16s3f7yuFcNhEKrdolbq', 'Dealt-Finlike1-Dropkick', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(60, 'PERIE', 'Sylvain', '', 'sperie23', '$2y$10$laTSfzEwE.bedNspCLd/Ve/YgRR4n3Uh/oDYFQrQcSB61zSSzwKOy', 'Maximize-Mural-Carefully0', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(61, 'PORTOLES', 'Thomas', '', 'tportoles23', '$2y$10$UXQSINSjIg5gkMI0wtHW2O.6tVMgDa38eYCxYjvgxzw5CfGEuUsRu', 'Decathlon4-Cupping-Murky', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(62, 'ROGER', 'Élisa', '', 'eroger23', '$2y$10$NnHn.Ebr8Cm2PvdXGZ7zt.Cy84DuKvdehhpFdsUjmGjqgnirfVBku', 'Helpless0-Equation-Confound', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(63, 'SANCHEZ', 'Cédric', '', 'csanchez23', '$2y$10$GuY4oHzqy6orSRPktwsaZ.OLaT5UO9d6XFLp5rPBxBXP6sMlWp906', 'Preachy-Halves4-Imposing', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(64, 'SIGUR', 'Adrien', '', 'asigur23', '$2y$10$w2QjtD3vLgtuGkMa2vXVLeIIII0nO9Gfw0xpFHJ6EbFda6NxFkgT6', 'Driven3-Widow-Trowel', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(65, 'VERNIERE', 'Stéphane', '', 'sverniere23', '$2y$10$AOjz8/ZqwXMhpFcVT36k3uEe4ArC7/BtGmfw0SL0FJGCZPExoiVmK', 'Anteater3-Anatomy-Precinct', '', '0000-00-00', 1, NULL, 3, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0),
(66, 'TEST', 'Stagiaire', '', 'stagiaire', '$2y$10$JvuCie9MBBLCTpT56DaENOFgjzDmkOFkAmrPG1LrvtpWbCUB3k/UW', 'adrar', '', '0000-00-00', 1, NULL, NULL, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires_evaluations`
--

DROP TABLE IF EXISTS `stagiaires_evaluations`;
CREATE TABLE `stagiaires_evaluations` (
  `stagiaire_evaluation_id` int(11) NOT NULL,
  `stagiaire_evaluation_completed` tinyint(1) NOT NULL,
  `stagiaire_evaluation_correction` tinyint(1) DEFAULT NULL,
  `stagiaire_evaluation_errors_found` int(11) DEFAULT NULL,
  `id_stagiaire` int(11) NOT NULL,
  `id_evaluation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires_evaluations`
--

INSERT INTO `stagiaires_evaluations` (`stagiaire_evaluation_id`, `stagiaire_evaluation_completed`, `stagiaire_evaluation_correction`, `stagiaire_evaluation_errors_found`, `id_stagiaire`, `id_evaluation`) VALUES
(6, 1, 1, 5, 23, 1),
(7, 1, 1, 2, 23, 2),
(10, 1, 1, 1, 23, 3),
(11, 1, 1, 0, 23, 4),
(12, 0, NULL, NULL, 23, 5);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires_ressources`
--

DROP TABLE IF EXISTS `stagiaires_ressources`;
CREATE TABLE `stagiaires_ressources` (
  `id_stagiaire` int(11) NOT NULL,
  `id_ressource` int(11) NOT NULL,
  `lien_ressource_rendue` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires_ressources`
--

INSERT INTO `stagiaires_ressources` (`id_stagiaire`, `id_ressource`, `lien_ressource_rendue`) VALUES
(23, 9, 'ressource_9_adrar_titres.sql');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `connexion_essais`
--
ALTER TABLE `connexion_essais`
  ADD PRIMARY KEY (`id_connexion_essai`);

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`),
  ADD UNIQUE KEY `cours_link` (`cours_link`),
  ADD KEY `id_formateur` (`id_formateur`) USING BTREE,
  ADD KEY `id_module` (`id_module`);
ALTER TABLE `cours` ADD FULLTEXT KEY `cours_keywords` (`cours_keywords`);

--
-- Index pour la table `cours_modules`
--
ALTER TABLE `cours_modules`
  ADD PRIMARY KEY (`cours_module_id`),
  ADD UNIQUE KEY `cours_module_uuid` (`cours_module_uuid`);

--
-- Index pour la table `cours_ressources`
--
ALTER TABLE `cours_ressources`
  ADD PRIMARY KEY (`cours_ressource_id`),
  ADD KEY `id_cours` (`id_cours`);

--
-- Index pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  ADD PRIMARY KEY (`cours_session_id`),
  ADD UNIQUE KEY `id_session_2` (`id_session`,`id_cours`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_course` (`id_cours`);

--
-- Index pour la table `documents`
--
ALTER TABLE `documents`
  ADD PRIMARY KEY (`id_document`) USING BTREE;

--
-- Index pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_document` (`id_document`);

--
-- Index pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD PRIMARY KEY (`evaluation_id`),
  ADD KEY `id_evaluation_dd` (`id_evaluation_dd`);

--
-- Index pour la table `evaluations_dd`
--
ALTER TABLE `evaluations_dd`
  ADD PRIMARY KEY (`evaluation_dd_id`);

--
-- Index pour la table `evaluations_sessions`
--
ALTER TABLE `evaluations_sessions`
  ADD PRIMARY KEY (`id_dd_evaluation`,`id_session`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_dd_evaluation` (`id_dd_evaluation`) USING BTREE;

--
-- Index pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD PRIMARY KEY (`id_formateur`),
  ADD UNIQUE KEY `mail_formateur` (`mail_formateur`),
  ADD UNIQUE KEY `code_entree_formateur` (`code_entree_formateur`),
  ADD KEY `id_secteur` (`id_secteur`),
  ADD KEY `id_site` (`id_site`);

--
-- Index pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD PRIMARY KEY (`id_historique`),
  ADD UNIQUE KEY `id_formateur_2` (`id_formateur`,`page_visitee`),
  ADD KEY `id_formateur` (`id_formateur`);

--
-- Index pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notification_titre`,`notification_lien`,`id_stagiaire`) USING BTREE,
  ADD KEY `id_stagiaire` (`id_stagiaire`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD UNIQUE KEY `quiz_lien` (`quiz_lien`),
  ADD KEY `id_formateur` (`id_formateur`) USING BTREE;

--
-- Index pour la table `quiz_sessions`
--
ALTER TABLE `quiz_sessions`
  ADD PRIMARY KEY (`quiz_sessions_id`),
  ADD UNIQUE KEY `id_session_2` (`id_session`,`id_quiz`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_quiz` (`id_quiz`);

--
-- Index pour la table `secteurs`
--
ALTER TABLE `secteurs`
  ADD PRIMARY KEY (`id_secteur`);

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `id_formateur` (`id_formateur`);

--
-- Index pour la table `sites`
--
ALTER TABLE `sites`
  ADD PRIMARY KEY (`id_site`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id_stage`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`id_stagiaire`),
  ADD UNIQUE KEY `pseudo_stagiaire` (`pseudo_stagiaire`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_stage` (`id_stage`);

--
-- Index pour la table `stagiaires_evaluations`
--
ALTER TABLE `stagiaires_evaluations`
  ADD PRIMARY KEY (`stagiaire_evaluation_id`),
  ADD UNIQUE KEY `id_intern_2` (`id_stagiaire`,`id_evaluation`),
  ADD KEY `id_stagiaire` (`id_stagiaire`),
  ADD KEY `id_evaluation` (`id_evaluation`);

--
-- Index pour la table `stagiaires_ressources`
--
ALTER TABLE `stagiaires_ressources`
  ADD PRIMARY KEY (`id_stagiaire`,`id_ressource`),
  ADD KEY `id_stagiaire` (`id_stagiaire`),
  ADD KEY `id_ressource` (`id_ressource`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `connexion_essais`
--
ALTER TABLE `connexion_essais`
  MODIFY `id_connexion_essai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=369;

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT pour la table `cours_modules`
--
ALTER TABLE `cours_modules`
  MODIFY `cours_module_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `cours_ressources`
--
ALTER TABLE `cours_ressources`
  MODIFY `cours_ressource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  MODIFY `cours_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `evaluations`
--
ALTER TABLE `evaluations`
  MODIFY `evaluation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `evaluations_dd`
--
ALTER TABLE `evaluations_dd`
  MODIFY `evaluation_dd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `formateurs`
--
ALTER TABLE `formateurs`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT pour la table `historiques`
--
ALTER TABLE `historiques`
  MODIFY `id_historique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=696;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `quiz_sessions`
--
ALTER TABLE `quiz_sessions`
  MODIFY `quiz_sessions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id_secteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id_stagiaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=67;

--
-- AUTO_INCREMENT pour la table `stagiaires_evaluations`
--
ALTER TABLE `stagiaires_evaluations`
  MODIFY `stagiaire_evaluation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateurs` (`id_formateur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_ibfk_2` FOREIGN KEY (`id_module`) REFERENCES `cours_modules` (`cours_module_id`);

--
-- Contraintes pour la table `cours_ressources`
--
ALTER TABLE `cours_ressources`
  ADD CONSTRAINT `cours_ressources_ibfk_1` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`cours_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  ADD CONSTRAINT `cours_sessions_ibfk_1` FOREIGN KEY (`id_cours`) REFERENCES `cours` (`cours_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `cours_sessions_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id_session`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  ADD CONSTRAINT `documents_pages_ibfk_1` FOREIGN KEY (`id_document`) REFERENCES `documents` (`id_document`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `evaluations`
--
ALTER TABLE `evaluations`
  ADD CONSTRAINT `evaluations_ibfk_1` FOREIGN KEY (`id_evaluation_dd`) REFERENCES `evaluations_dd` (`evaluation_dd_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `evaluations_sessions`
--
ALTER TABLE `evaluations_sessions`
  ADD CONSTRAINT `evaluations_sessions_ibfk_1` FOREIGN KEY (`id_dd_evaluation`) REFERENCES `evaluations_dd` (`evaluation_dd_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `evaluations_sessions_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id_session`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD CONSTRAINT `formateurs_ibfk_1` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `formateurs_ibfk_2` FOREIGN KEY (`id_site`) REFERENCES `sites` (`id_site`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `historiques`
--
ALTER TABLE `historiques`
  ADD CONSTRAINT `historiques_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateurs` (`id_formateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `notifications`
--
ALTER TABLE `notifications`
  ADD CONSTRAINT `notifications_ibfk_1` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaires` (`id_stagiaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quiz_sessions`
--
ALTER TABLE `quiz_sessions`
  ADD CONSTRAINT `quiz_sessions_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_sessions_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id_session`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD CONSTRAINT `sessions_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateurs` (`id_formateur`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD CONSTRAINT `stagiaires_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stages` (`id_stage`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stagiaires_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id_session`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stagiaires_evaluations`
--
ALTER TABLE `stagiaires_evaluations`
  ADD CONSTRAINT `stagiaires_evaluations_ibfk_1` FOREIGN KEY (`id_evaluation`) REFERENCES `evaluations` (`evaluation_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stagiaires_evaluations_ibfk_2` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaires` (`id_stagiaire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `stagiaires_ressources`
--
ALTER TABLE `stagiaires_ressources`
  ADD CONSTRAINT `stagiaires_ressources_ibfk_1` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaires` (`id_stagiaire`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stagiaires_ressources_ibfk_2` FOREIGN KEY (`id_ressource`) REFERENCES `cours_ressources` (`cours_ressource_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;
