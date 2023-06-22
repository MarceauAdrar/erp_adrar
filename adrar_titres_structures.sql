-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : jeu. 22 juin 2023 à 05:12
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
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `index_document` varchar(20) NOT NULL,
  `nom_document` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `documents_pages`
--

CREATE TABLE `documents_pages` (
  `id` int(11) NOT NULL,
  `num_page` int(11) NOT NULL,
  `lien` varchar(100) NOT NULL,
  `textes_ajoutes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL CHECK (json_valid(`textes_ajoutes`)),
  `id_document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `formateurs`
--

CREATE TABLE `formateurs` (
  `id_formateur` int(11) NOT NULL,
  `nom_formateur` varchar(25) NOT NULL,
  `prenom_formateur` varchar(25) NOT NULL,
  `mail_formateur` varchar(100) NOT NULL,
  `mdp_formateur` varchar(60) NOT NULL,
  `signature_formateur` varchar(50) NOT NULL,
  `carte_formateur_role` varchar(25) NOT NULL,
  `carte_formateur_liens` varchar(25) NOT NULL,
  `carte_formateur_tel` varchar(10) NOT NULL,
  `carte_formateur_portable` varchar(10) NOT NULL,
  `tmp_code_formateur` varchar(6) DEFAULT NULL COMMENT 'Contient un code qui permet à un formateur de en cas d''oubli de mot de passe ou si la période de validité du code est échue\r\n',
  `code_entree_formateur` varchar(6) DEFAULT NULL COMMENT 'Contient un code UNIQUE qui permet à un formateur de s''identifier la première fois pour changer son mot de passe',
  `id_site` int(11) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

CREATE TABLE `secteurs` (
  `id_secteur` int(11) NOT NULL,
  `nom_secteur` varchar(50) NOT NULL,
  `logo_secteur` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `sessions`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `sites`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stages`
--

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

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires`
--

CREATE TABLE `stagiaires` (
  `id_stagiaire` int(11) NOT NULL,
  `nom_stagiaire` varchar(50) NOT NULL,
  `prenom_stagiaire` varchar(50) NOT NULL,
  `mail_stagiaire` varchar(100) NOT NULL,
  `tel_stagiaire` varchar(10) NOT NULL,
  `date_naissance_stagiaire` date NOT NULL,
  `lien_serveur` varchar(255) NOT NULL,
  `id_session` int(11) NOT NULL,
  `id_stage` int(11) DEFAULT NULL,
  `convention_recue` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_1` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_2` tinyint(1) NOT NULL DEFAULT 0,
  `horaires_recues_3` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `attestation_recue` tinyint(1) DEFAULT NULL,
  `evaluation_mail_envoye` tinyint(1) NOT NULL DEFAULT 0,
  `evaluation_recue` tinyint(1) DEFAULT NULL,
  `compteur_demandes` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

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
-- Index pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD PRIMARY KEY (`id_formateur`),
  ADD UNIQUE KEY `code_entree_formateur` (`code_entree_formateur`),
  ADD KEY `id_secteur` (`id_secteur`),
  ADD KEY `id_site` (`id_site`);

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
  ADD KEY `id_session` (`id_session`),
  ADD KEY `id_stage` (`id_stage`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `formateurs`
--
ALTER TABLE `formateurs`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id_secteur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stages`
--
ALTER TABLE `stages`
  MODIFY `id_stage` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id_stagiaire` int(11) NOT NULL AUTO_INCREMENT;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  ADD CONSTRAINT `documents_pages_ibfk_1` FOREIGN KEY (`id_document`) REFERENCES `documents` (`id_document`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `formateurs`
--
ALTER TABLE `formateurs`
  ADD CONSTRAINT `formateurs_ibfk_1` FOREIGN KEY (`id_secteur`) REFERENCES `secteurs` (`id_secteur`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `formateurs_ibfk_2` FOREIGN KEY (`id_site`) REFERENCES `sites` (`id_site`) ON DELETE CASCADE ON UPDATE CASCADE;

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
