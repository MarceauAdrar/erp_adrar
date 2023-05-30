-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : lun. 29 mai 2023 à 20:36
-- Version du serveur : 10.5.19-MariaDB-0+deb11u2
-- Version de PHP : 8.2.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `adrar_titres`
--

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

CREATE TABLE `sessions` (
  `id` int(11) NOT NULL,
  `nom_session` varchar(25) NOT NULL,
  `duree_stage` int(11) NOT NULL,
  `sigle` varchar(50) NOT NULL,
  `date_debut_stage` date NOT NULL,
  `date_fin_stage` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `sessions`
--

INSERT INTO `sessions` (`id`, `nom_session`, `duree_stage`, `sigle`, `date_debut_stage`, `date_fin_stage`) VALUES
(1, 'DEV34-22-02', 280, 'DWWM', '2023-04-11', '2023-06-09'),
(2, 'CDA34-23-01', 350, 'CDA', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

CREATE TABLE `stages` (
  `id` int(11) NOT NULL,
  `lieu` varchar(255) NOT NULL,
  `nom_tuteur` varchar(50) NOT NULL,
  `prenom_tuteur` varchar(50) NOT NULL,
  `mail_tuteur` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stages`
--

INSERT INTO `stages` (`id`, `lieu`, `nom_tuteur`, `prenom_tuteur`, `mail_tuteur`) VALUES
(1, '68 avenue du pont Juvenal, 34000 Montpellier, France', 'BALBIS', 'Mouro', 'tatobalbis@gmail.com'),
(2, '64B route de Narbonne, 34500 Béziers, France', 'BOUJANDIR', 'Adil', 'topspeed.beziers@gmail.com'),
(3, '4 avenue de la voie domitienne, 34500 Béziers, France', 'GHIOUANE', 'Chafik', 'chafeck@hotmail.fr'),
(4, '11 Quai Baley, 29150 Chateaulin, France', 'DURAND', 'Jérémy', 'taxidukoala@gmail.com'),
(5, '2 Boulevard Jean Bouin, 34500 Béziers, France', 'LEPRETRE', 'Emmanuel', 'lesopticiensaccord@gmail.com'),
(6, '710 rue d\'Aleo, 34080 Montpellier, France', 'BOURAI', 'Ramdane', 'r.bourai@nouas.org'),
(7, '4 quai de la dunette, 34200 Sète, France', 'BRENAC', 'Philippe', 'brenacphilippe73@gmail.com'),
(8, '239 rue des Étoffes, 34400 Lunel, France', 'AMIRROUCHE', 'Redouane', 'contact@perform34.com'),
(9, '11 rue de l\'abrivado, 34740 Vendargues, France', 'GADEA', 'Delphine', 'ehpadelmasmarguerite.secretariat@gmail.com'),
(10, '7 rue de la Costa Brava, 34070 Montpellier, France', 'SQUARATTI', 'Ryan', 'contact@foodeat.fr'),
(11, '23 avenue de  la mouyssaguese, 31280 Dremil Lafage, France', 'POP', 'Alexandru', 'entreprise.benazet@gmail.com'),
(12, '2 avenue de Montpellier, 34820 Teyran, France', 'JOUAUX', 'Muriel', 'aquas34@yahoo.com');

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `id` int(11) NOT NULL,
  `nom` varchar(50) NOT NULL,
  `prenom` varchar(50) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_stage` int(11) DEFAULT NULL,
  `horaires_recues_1` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_2` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_3` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_recue` varchar(255) DEFAULT NULL,
  `evaluation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `evaluation_recue` varchar(255) DEFAULT NULL,
  `compteur_demandes` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`id`, `nom`, `prenom`, `id_session`, `id_stage`, `horaires_recues_1`, `horaires_recues_2`, `horaires_recues_3`, `attestation_mail_envoye`, `attestation_recue`, `evaluation_mail_envoye`, `evaluation_recue`, `compteur_demandes`) VALUES
(23, 'BOTTA', 'Facundo', 1, 1, 0, 0, 0, 0, '0', 0, '0', 1),
(24, 'BOUJANDIR', 'Karim', 1, 2, 0, 1, 0, 0, '0', 0, '0', 0),
(25, 'BOURHIL', 'Yannis', 1, 3, 0, 0, 0, 0, '0', 0, '0', 0),
(26, 'CHABROUX', 'Jérémy', 1, 4, 0, 0, 0, 0, '0', 0, '0', 0),
(27, 'EFNANE', 'Haitam', 1, 5, 0, 0, 0, 0, '0', 0, '0', 0),
(28, 'GATELLIER', 'Amory', 1, 6, 0, 0, 0, 0, '0', 0, '0', 0),
(29, 'HUET', 'Laurent', 1, 7, 0, 0, 0, 0, '0', 0, '0', 0),
(30, 'JABRE', 'Hamza', 1, 8, 0, 0, 0, 0, '0', 0, '0', 0),
(31, 'MAKEMBE', 'Céline', 1, 9, 0, 0, 0, 0, '0', 0, '0', 0),
(32, 'SETIAO', 'Tiffaine', 1, 11, 0, 0, 0, 0, '0', 0, '0', 0),
(33, 'PIERROT', 'Gilles', 1, 12, 0, 0, 0, 0, '0', 0, '0', 0),
(34, 'AOUACHRIA', 'Hibat', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(35, 'CAMOSSI', 'Jérémy', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(36, 'DELLA RICA', 'Steven', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(37, 'DELMON', 'Eryan', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(38, 'DILMAMODE', 'Yasmine', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(39, 'EYMARD', 'Luc', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(40, 'FAKIR', 'Karim', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(41, 'GIRARD', 'Anthony', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(42, 'HERBETTE', 'Alban', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0),
(43, 'VONGSY', 'Laura', 2, NULL, 0, 0, 0, 0, '0', 0, '0', 0);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stages`
--
ALTER TABLE `stages`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_stage` (`id_stage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  ADD CONSTRAINT `stagiaires_ibfk_1` FOREIGN KEY (`id_stage`) REFERENCES `stages` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stagiaires_ibfk_2` FOREIGN KEY (`id_session`) REFERENCES `sessions` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
