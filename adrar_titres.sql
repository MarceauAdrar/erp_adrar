-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : dim. 25 juin 2023 à 22:53
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
-- Structure de la table `cours`
--

CREATE TABLE `cours` (
  `cours_id` int(11) NOT NULL,
  `cours_title` varchar(50) NOT NULL,
  `cours_synopsis` text NOT NULL,
  `cours_text` mediumtext NOT NULL,
  `cours_keywords` longtext NOT NULL,
  `cours_link` varchar(255) NOT NULL,
  `cours_category` varchar(50) NOT NULL,
  `cours_illustration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_title`, `cours_synopsis`, `cours_text`, `cours_keywords`, `cours_link`, `cours_category`, `cours_illustration`) VALUES
(1, 'Introduction au HTML', 'Plongez-vous dans l\'informatique et découvrez les fondements de la programmation.', 'Ici, vous allez apprendre les bases pour construire une page web.', 'balises par paires;balises orphelines;éditeur;web;internet;url;parents;enfants;chevrons;slash;attribut;valeur;indentation;camelcase;commentaires', 'https://docs.google.com/presentation/d/1fOEX4e3vXIM0i8zOLyTKeMHwLX7P_HaQ/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'html', 'html_css.svg'),
(2, 'Les balises', 'Attaquez la programmation en découvrant les balises HTML', '', 'chrevrons;balises par paires;balises orphelines;block;inline;parent;enfant;paragraphe;div;span;ancre;chemin relatif;chemin absolu;identifiant;camelcase;snakecase;href;src;alt;listes ordonnées;listes non-ordonnées;header;footer;nav;section;article;aside;balises sémantiques', 'https://docs.google.com/presentation/d/1hRCIx5ZoMTMzz9m3Yx5V7xQc32DQpgXE/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'html', 'html_css.svg'),
(17, 'Introduction', 'Attaquez les bases des feuilles de style.', '', 'styliser;style;link;sélecteurs;propriétés;valeurs;séparateurs;commentaires;cascade;ordre d\'éxécution;héritage;règles;déclarations', 'https://docs.google.com/presentation/d/18ohP0_IBN8GQSIzqEIyrLA_7NL1XH_wk/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(18, 'Sélecteurs simples', 'Apprenez à manipuler les sélecteurs basiques pour pouvoir styliser votre page web.', '', 'sélecteur;unicité;multiplicité;sélections multiples;sélections imbriquées;sélections par attribut;sélections avancées', 'https://docs.google.com/presentation/d/1X_BHkQoNItjkVhqjx_bW9_Z7JMnLmjhv/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(19, 'Propriétés courantes', 'Dans ce cours, vous allez découvrir les propriétés les plus communément utilisées en CSS.', '', 'textes;background;super-propriétés;dimensions;couleurs;héxadécimal;rgb;rgba', 'https://docs.google.com/presentation/d/15iHfd-dRXZDiCP96Jp0zDjmKQ6abQBkQ/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(20, 'Les pseudo-classes', 'Vous allez découvrir ici l\'utilité des pseudo-classes qui peuvent permettre de dynamiser votre page web et de faire des règles plus complexes.', '', 'hover;visited;link;active;focus;first-child;last-child;nth-child;odd;even;notation fonctionnelle', 'https://docs.google.com/presentation/d/1w_ICOcF_4ezVzIqpbejnWohNGe-_8JhR/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(21, 'Flexbox', 'Découvrez comment fonctionne les flexbox et leurs placements.', '', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;order', 'https://docs.google.com/presentation/d/15voc-5nC260KLFYd0z9tZ8cq7sZQjMfw/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(22, 'Grid', 'Découvrez comment fonctionne les placements avec le système de grilles.', '', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;lignes;colonnes;rows;columns;patterns', 'https://docs.google.com/presentation/d/1AlfKS1humDYwpU2Y7k5SwbDFx44z4SNe/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(23, 'Ombrages', 'Ajoutez de la dimension et de la profondeur à votre page avec les ombres.', '', 'box-shadow;text-shadow;décalages;flou;couleur', 'https://docs.google.com/presentation/d/18yuLMkj__jJtvytDi8FxNazNK1byOdsw/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(24, 'Les dégradés', 'Démarquez vous avec l\'ajout de dégradés.', '', 'dégradés linéaires;dégradés radiaux;dégradés coniques;valeurs numéraires;valeur par mot-clé;to;from;rgb;rgba;héxadécimal;circle;ellipse;at', 'https://docs.google.com/presentation/d/1odMbmdAjKmXdzNJ-wrQ80GUlO-Gin5fr/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(25, 'Les tableaux', 'Découvrez comment mettre en forme des données avec les tableaux.', '', 'table;tr;th;td;caption;border;super-propriétés;thead;tbody;tfoot;rowspan;colspan', 'https://docs.google.com/presentation/d/1Q-AO4J7xN5pbAc9cDrpx75DtRSzEuko3/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'html', 'html_css.svg'),
(26, 'Les formulaires', 'Apprenez à construire des formulaires pour récolter des informations auprès de vos utilisateurs.', '', 'form;méthode;attribut;addresse;method;action;get;post;input;type;placeholder;required;autofocus;label;for;textarea;cols;rows;file;accept;multiple;checkbox;checked;fieldset;legend;radio;select;option;optgroup;selected;submit;button;image;reset', 'https://docs.google.com/presentation/d/1_lvk9qVDc_idT-RxfZbeGe8YWycb8T7P/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'html', 'html_css.svg'),
(27, 'Les placements simples', 'Nous allons maintenant voir comment placer nos éléments dans la page web.', '', 'balises par paire;balises orphelines;balises block;balises inline;balises universelles;balises sémantiques;margin;border;padding;content;height;width;overflow;scroll;auto;hidden;word-wrap', 'https://docs.google.com/presentation/d/1qf3ZcxwhKmlwAYn80r8k9KZPSMeF4u7N/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(28, 'Les requêtes de média', 'Dans ce cours, vous allez voir une grosse partie. Les requêtes de média permettent d\'effectuer des changements personnalisés en fonction des appareils, de leur orientation et de leur dimension.', '', 'responsive design;media;annotations', 'https://docs.google.com/presentation/d/1lEW1LDPFGJJjUH10zTrUrK656UNBwXbf/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(29, 'Les animations', 'Découvrez l\'univers des animations et commencez à dynamiser simplement vos pages web.', '', 'transform;rotate;deg;turn;abscisses;ordonnées;scale;translate;transformation oblique;skew;super-propriété', 'https://docs.google.com/presentation/d/1WEIxHBML-eLraoUEOSyQwqovdRV7Z4nI/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(30, 'Les animations avancées', 'Etoffez vos connaissances dans l\'art de l\'animation et dynamiser de façon plus complexes vos éléments.', '', 'transition;delay;function;super-propriété;keyframes;rotate;animation;duration;count;fill;direction', 'https://docs.google.com/presentation/d/1m39KZ11kXhmwY7RjkbQGAJ-_YUv8ynDY/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'css', 'html_css.svg'),
(31, 'Les audios et vidéos', 'Apprenez à intégrer du contenu multimédia dans vos pages: les sons et vidéos. ', '', 'mp3;aac;ogg;wav;aiff;audio;src;source;controls;autoplay;loop;width;preload;avi;mp4;mkv;codec;webm;h.256;ogg theora;video;poster;muted;disablepictureinpicture;iframe;intégration', 'https://docs.google.com/presentation/d/1pYQZtAy-1Qed7Bk_7adCufVcxA6f0Gbm/edit?usp=share_link&ouid=118393150758904552045&rtpof=true&sd=true', 'html', 'html_css.svg'),
(32, 'Introduction', '', '', '', 'https://docs.google.com/presentation/d/10BsgVywSavYioY2u5VClxYpP07xtBzq4/edit?usp=share_link&ouid=113329849450696600746&rtpof=true&sd=true', 'frameworks', 'frameworks.svg'),
(33, 'Présentation approfondie de bootstrap', 'Dans ce cours, nous allons voir le détail de Bootstrap, son histoire, son évolution, son fonctionnement.', '', 'famework;classes;bootstrap', 'https://docs.google.com/presentation/d/16ttfgz8N35WM9prPi5yrXRDKc0tlXwac/edit?usp=share_link&ouid=113329849450696600746&rtpof=true&sd=true', 'frameworks', 'frameworks.svg');

-- --------------------------------------------------------

--
-- Structure de la table `cours_sessions`
--

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
(1, 2, 1, 1),
(2, 2, 2, 1),
(3, 2, 17, 1),
(4, 2, 18, 1),
(5, 2, 19, 1),
(6, 2, 20, 1),
(7, 2, 21, 1),
(8, 2, 22, 1),
(9, 2, 23, 1),
(10, 2, 24, 1),
(11, 2, 25, 1),
(12, 2, 26, 1),
(13, 2, 27, 1),
(14, 2, 28, 1),
(15, 2, 29, 1),
(16, 2, 30, 1),
(17, 2, 31, 1),
(18, 2, 32, 1),
(19, 2, 33, 1);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

CREATE TABLE `documents` (
  `id_document` int(11) NOT NULL,
  `index_document` varchar(20) NOT NULL,
  `nom_document` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `documents`
--

INSERT INTO `documents` (`id_document`, `index_document`, `nom_document`) VALUES
(1, 'convention', 'Convention de stage'),
(2, 'attestation', 'Attestation de stage'),
(3, 'evaluation', 'Évaluation de stage'),
(4, 'presence', 'Heures entreprises');

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

--
-- Déchargement des données de la table `documents_pages`
--

INSERT INTO `documents_pages` (`id`, `num_page`, `lien`, `textes_ajoutes`, `id_document`) VALUES
(11, 1, 'convention-1.png', '{\n  \"1\": {\n    \"X\": \"50\",\n    \"Y\": \"69\",\n    \"texte\": \"rue_lieu_stage\"\n  },\n  \"2\": {\n    \"X\": \"50\",\n    \"Y\": \"77\",\n    \"texte\": \"cp_lieu_stage\"\n  },\n  \"3\": {\n    \"X\": \"50\",\n    \"Y\": \"85\",\n    \"texte\": \"ville_lieu_stage\"\n  },\n  \"4\": {\n    \"X\": \"127\",\n    \"Y\": \"125.5\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"5\": {\n    \"X\": \"106\",\n    \"Y\": \"133\",\n    \"texte\": \"mail_tuteur\"\n  },\n  \"6\": {\n    \"X\": \"38\",\n    \"Y\": \"174\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"7\": {\n    \"X\": \"91\",\n    \"Y\": \"210\",\n    \"texte\": \"duree_stage\"\n  },\n  \"8\": {\n    \"X\": \"58.5\",\n    \"Y\": \"218.5\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"9\": {\n    \"X\": \"108\",\n    \"Y\": \"218.5\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"10\": {\n    \"X\": \"26.5\",\n    \"Y\": \"238\",\n    \"texte\": \"nom_formateur|prenom_formateur\"\n  },\n  \"11\": {\n    \"X\": \"85\",\n    \"Y\": \"238\",\n    \"texte\": \"mail_formateur\"\n  }\n}', 1),
(12, 2, 'convention-2.png', NULL, 1),
(13, 3, 'convention-3.png', NULL, 1),
(14, 4, 'convention-4.png', NULL, 1),
(15, 5, 'convention-5.png', '{\n  \"1\": {\n    \"X\": \"27\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"2\": {\n    \"X\": \"83\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_formateur|prenom_formateur\"\n  },\n  \"3\": {\n    \"X\": \"139\",\n    \"Y\": \"125\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\",\n    \"tampon\": \"v/tampon.png\",\n    \"xtampon\": \"75\",\n    \"ytampon\": \"180\",\n    \"signature\": \"v/formateurs/signature_Marceau_RODRIGUES.png\",\n    \"xsignature\": \"85\",\n    \"ysignature\": \"180\"\n  }\n}', 1),
(16, 1, 'attestation.png', '{\n  \"1\": {\n    \"X\": \"55\",\n    \"Y\": \"45\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"94\",\n    \"Y\": \"62\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"3\": {\n    \"X\": \"94\",\n    \"Y\": \"72\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"4\": {\n    \"X\": \"50\",\n    \"Y\": \"82\",\n    \"texte\": \"duree_stage\"\n  }\n}', 2),
(17, 1, 'evaluation-1.png', '{\n  \"1\": {\n    \"X\": \"32\",\n    \"Y\": \"49\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"42\",\n    \"Y\": \"56.5\",\n    \"texte\": \"sigle_session\"\n  },\n  \"3\": {\n    \"X\": \"127\",\n    \"Y\": \"56.5\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  },\n  \"4\": {\n    \"X\": \"56\",\n    \"Y\": \"64.5\",\n    \"texte\": \"date_debut_stage\"\n  },\n  \"5\": {\n    \"X\": \"92\",\n    \"Y\": \"64.5\",\n    \"texte\": \"date_fin_stage\"\n  },\n  \"6\": {\n    \"X\": \"147\",\n    \"Y\": \"64.5\",\n    \"texte\": \"duree_stage\"\n  }\n}', 3),
(18, 2, 'evaluation-2.png', '{\n  \"1\": {\n    \"X\": \"138\",\n    \"Y\": \"185.5\",\n    \"texte\": \"nom_formateur|prenom_formateur\",\n    \"signature\": \"v/formateurs/signature_Marceau_RODRIGUES.png\",\n    \"xsignature\": \"138\",\n    \"ysignature\": \"187.5\"\n  }\n}', 3),
(19, 1, 'presence.png', '{\n  \"1\": {\n    \"X\": \"113\",\n    \"Y\": \"38\",\n    \"texte\": \"nom_stagiaire|prenom_stagiaire\"\n  },\n  \"2\": {\n    \"X\": \"50\",\n    \"Y\": \"42.5\",\n    \"texte\": \"sigle_session\"\n  },\n  \"3\": {\n    \"X\": \"122\",\n    \"Y\": \"46\",\n    \"texte\": \"date_debut_session\"\n  },\n  \"4\": {\n    \"X\": \"122\",\n    \"Y\": \"51\",\n    \"texte\": \"date_fin_session\"\n  },\n  \"5\": {\n    \"X\": \"113\",\n    \"Y\": \"211\",\n    \"texte\": \"nom_tuteur|prenom_tuteur\"\n  }\n}', 4);

-- --------------------------------------------------------

--
-- Structure de la table `evaluations`
--

CREATE TABLE `evaluations` (
  `evaluation_id` int(11) NOT NULL,
  `evaluation_title` varchar(100) NOT NULL,
  `evaluation_goals` longtext NOT NULL,
  `evaluation_synopsis` text NOT NULL,
  `evaluation_token` varchar(255) NOT NULL,
  `evaluation_errors_max` int(2) NOT NULL,
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
-- Structure de la table `formateurs`
--

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
  `id_site` int(11) NOT NULL,
  `id_secteur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `formateurs`
--

INSERT INTO `formateurs` (`id_formateur`, `nom_formateur`, `prenom_formateur`, `mail_formateur`, `mdp_formateur`, `signature_formateur`, `carte_formateur_role`, `carte_formateur_liens`, `carte_formateur_tel`, `carte_formateur_portable`, `tmp_code_formateur`, `date_tmp_code_formateur`, `code_entree_formateur`, `date_code_entree_formateur`, `id_site`, `id_secteur`) VALUES
(1, 'RODRIGUES', 'Marceau', 'marceaurodrigues@adrar-formation.com', '$2y$10$X89dZa2q/tmAJgXT0Y3a8efm/O58U9eWE6GNHI5zArJnIk352DQte', 'v/formateurs/signature_6489096bf19b0.png', '', '', '', '', NULL, NULL, NULL, NULL, 1, 1),
(2, 'HABBAS', 'Emna', 'emnahabbas@adrar-formation.com', '$2y$10$YK8wYvtYnARNPqv3jC8KiuDY7dNup.J0LKGYnQ0dlLxH8e5QRuipS', 'v/formateurs/signature_64890a5b156d8.png', '', '', '', '', NULL, NULL, NULL, NULL, 1, 3),
(3, 'RAYNARD', 'Jade', 'jaderaynard@drar-formation.com', '$2y$10$2WXxH8FAYeFNl0DkiOiCsul4TrMUdwFHvGhFnCGfm5Ai7H5ES1gQa', 'v/formateurs/signature_648f7cb40c9ba.png', 'Formatrice rrente', 'test.co', '0404040406', '0469532699', NULL, NULL, NULL, NULL, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

CREATE TABLE `historiques` (
  `id_formateur` int(11) NOT NULL,
  `page_visitee` varchar(255) NOT NULL,
  `ip_visiteur` varchar(15) NOT NULL,
  `date_visite` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_question` varchar(50) NOT NULL,
  `quiz_proposition_1` varchar(100) NOT NULL,
  `quiz_proposition_2` varchar(100) NOT NULL,
  `quiz_proposition_3` varchar(100) DEFAULT NULL,
  `quiz_proposition_4` varchar(100) DEFAULT NULL,
  `quiz_answer` varchar(10) NOT NULL,
  `quiz_type` tinyint(1) NOT NULL COMMENT '0: checkbox ; 1: radio',
  `id_quiz_list` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz`
--

INSERT INTO `quiz` (`quiz_id`, `quiz_question`, `quiz_proposition_1`, `quiz_proposition_2`, `quiz_proposition_3`, `quiz_proposition_4`, `quiz_answer`, `quiz_type`, `id_quiz_list`) VALUES
(1, 'Que signifie HTML ?', 'HypraTop MarqueUp Language', 'HyperText Markup Language', NULL, NULL, '2', 1, 1),
(2, 'Qu\'est ce qu\'un navigateur web ?\n', 'HypraTop MarqueUp Language', 'HyperText Markup Language', NULL, NULL, '2', 1, 1);

-- --------------------------------------------------------

--
-- Structure de la table `quiz_dd`
--

CREATE TABLE `quiz_dd` (
  `quiz_dd_id` int(11) NOT NULL,
  `quiz_dd_name` varchar(50) NOT NULL,
  `quiz_dd_link` varchar(100) NOT NULL,
  `quiz_dd_active` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz_dd`
--

INSERT INTO `quiz_dd` (`quiz_dd_id`, `quiz_dd_name`, `quiz_dd_link`, `quiz_dd_active`) VALUES
(1, 'HTML', 'html', 1),
(2, 'CSS', 'css', 1),
(3, 'Bootstrap', 'bootstrap', 0);

-- --------------------------------------------------------

--
-- Structure de la table `quiz_lists`
--

CREATE TABLE `quiz_lists` (
  `quiz_list_id` int(11) NOT NULL,
  `quiz_list_title` varchar(100) NOT NULL,
  `id_dd_quiz` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz_lists`
--

INSERT INTO `quiz_lists` (`quiz_list_id`, `quiz_list_title`, `id_dd_quiz`) VALUES
(1, 'HTML niveau débutant', 1),
(2, 'HTML niveau intermédiaire', 1);

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

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
(2, 'CDA34-23-01', 350, 'CDA', '2023-05-09', '0000-00-00', '0000-00-00', '0000-00-00', 2);

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
  `pseudo_stagiaire` varchar(50) DEFAULT NULL,
  `mdp_stagiaire` varchar(60) NOT NULL,
  `mdp_decode_stagiaire` varchar(50) NOT NULL,
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

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires_evaluations`
--

CREATE TABLE `stagiaires_evaluations` (
  `stagiaire_evaluation_id` int(11) NOT NULL,
  `stagiaire_evaluation_completed` tinyint(1) NOT NULL,
  `stagiaire_evaluation_correction` tinyint(1) NOT NULL,
  `stagiaire_evaluation_errors_found` int(2) NOT NULL,
  `id_stagiaire` int(11) NOT NULL,
  `id_evaluation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires_quiz`
--

CREATE TABLE `stagiaires_quiz` (
  `stagiaire_quiz_id` int(11) NOT NULL,
  `stagiaire_quiz_answers` varchar(10) NOT NULL,
  `id_quiz` int(11) NOT NULL,
  `id_stagiaire` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`);

--
-- Index pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  ADD PRIMARY KEY (`cours_session_id`),
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
  ADD PRIMARY KEY (`id_formateur`);

--
-- Index pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD PRIMARY KEY (`quiz_id`),
  ADD KEY `id_quiz_list` (`id_quiz_list`);

--
-- Index pour la table `quiz_dd`
--
ALTER TABLE `quiz_dd`
  ADD PRIMARY KEY (`quiz_dd_id`);

--
-- Index pour la table `quiz_lists`
--
ALTER TABLE `quiz_lists`
  ADD PRIMARY KEY (`quiz_list_id`),
  ADD KEY `id_dd_quiz` (`id_dd_quiz`);

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
-- Index pour la table `stagiaires_quiz`
--
ALTER TABLE `stagiaires_quiz`
  ADD PRIMARY KEY (`stagiaire_quiz_id`),
  ADD UNIQUE KEY `id_quiz_2` (`id_quiz`,`id_stagiaire`),
  ADD KEY `id_quiz` (`id_quiz`),
  ADD KEY `id_stagiaire` (`id_stagiaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  MODIFY `cours_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `documents_pages`
--
ALTER TABLE `documents_pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

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
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT pour la table `historiques`
--
ALTER TABLE `historiques`
  MODIFY `id_formateur` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `quiz_dd`
--
ALTER TABLE `quiz_dd`
  MODIFY `quiz_dd_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `quiz_lists`
--
ALTER TABLE `quiz_lists`
  MODIFY `quiz_list_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `secteurs`
--
ALTER TABLE `secteurs`
  MODIFY `id_secteur` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `sessions`
--
ALTER TABLE `sessions`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `sites`
--
ALTER TABLE `sites`
  MODIFY `id_site` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
-- AUTO_INCREMENT pour la table `stagiaires_evaluations`
--
ALTER TABLE `stagiaires_evaluations`
  MODIFY `stagiaire_evaluation_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `stagiaires_quiz`
--
ALTER TABLE `stagiaires_quiz`
  MODIFY `stagiaire_quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Contraintes pour les tables déchargées
--

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
-- Contraintes pour la table `quiz`
--
ALTER TABLE `quiz`
  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`id_quiz_list`) REFERENCES `quiz_lists` (`quiz_list_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `quiz_lists`
--
ALTER TABLE `quiz_lists`
  ADD CONSTRAINT `quiz_lists_ibfk_1` FOREIGN KEY (`id_dd_quiz`) REFERENCES `quiz_dd` (`quiz_dd_id`) ON DELETE CASCADE ON UPDATE CASCADE;

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
-- Contraintes pour la table `stagiaires_quiz`
--
ALTER TABLE `stagiaires_quiz`
  ADD CONSTRAINT `stagiaires_quiz_ibfk_1` FOREIGN KEY (`id_quiz`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `stagiaires_quiz_ibfk_2` FOREIGN KEY (`id_stagiaire`) REFERENCES `stagiaires` (`id_stagiaire`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
