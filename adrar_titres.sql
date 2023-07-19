-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Hôte : localhost
-- Généré le : mer. 19 juil. 2023 à 12:31
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
  `cours_illustration` varchar(255) NOT NULL,
  `id_formateur` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_title`, `cours_synopsis`, `cours_text`, `cours_keywords`, `cours_link`, `cours_category`, `cours_illustration`, `id_formateur`) VALUES
(1, 'Introduction au HTML', 'Plongez-vous dans l\'informatique et découvrez les fondements de la programmation.', 'Ici, vous allez apprendre les bases pour construire une page web.', 'balises par paires;balises orphelines;éditeur;web;internet;url;parents;enfants;chevrons;slash;attribut;valeur;indentation;camelcase;commentaires', '2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', 'html', 'html_css.svg', 1),
(2, 'Les balises', 'Attaquez la programmation en découvrant les balises HTML', '', 'chrevrons;balises par paires;balises orphelines;block;inline;parent;enfant;paragraphe;div;span;ancre;chemin relatif;chemin absolu;identifiant;camelcase;snakecase;href;src;alt;listes ordonnées;listes non-ordonnées;header;footer;nav;section;article;aside;balises sémantiques', '2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', 'html', 'html_css.svg', 1),
(17, 'Introduction', 'Attaquez les bases des feuilles de style.', '', 'styliser;style;link;sélecteurs;propriétés;valeurs;séparateurs;commentaires;cascade;ordre d\'éxécution;héritage;règles;déclarations', '2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', 'css', 'html_css.svg', 1),
(18, 'Sélecteurs simples', 'Apprenez à manipuler les sélecteurs basiques pour pouvoir styliser votre page web.', '', 'sélecteur;unicité;multiplicité;sélections multiples;sélections imbriquées;sélections par attribut;sélections avancées', '2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', 'css', 'html_css.svg', 1),
(19, 'Propriétés courantes', 'Dans ce cours, vous allez découvrir les propriétés les plus communément utilisées en CSS.', '', 'textes;background;super-propriétés;dimensions;couleurs;héxadécimal;rgb;rgba', '2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', 'css', 'html_css.svg', 1),
(20, 'Les pseudo-classes', 'Vous allez découvrir ici l\'utilité des pseudo-classes qui peuvent permettre de dynamiser votre page web et de faire des règles plus complexes.', '', 'hover;visited;link;active;focus;first-child;last-child;nth-child;odd;even;notation fonctionnelle', '2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', 'css', 'html_css.svg', 1),
(21, 'Flexbox', 'Découvrez comment fonctionne les flexbox et leurs placements.', '', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;order', '2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', 'css', 'html_css.svg', 1),
(22, 'Grid', 'Découvrez comment fonctionne les placements avec le système de grilles.', '', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;lignes;colonnes;rows;columns;patterns', '2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', 'css', 'html_css.svg', 1),
(23, 'Ombrages', 'Ajoutez de la dimension et de la profondeur à votre page avec les ombres.', '', 'box-shadow;text-shadow;décalages;flou;couleur', '2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', 'css', 'html_css.svg', 1),
(24, 'Les dégradés', 'Démarquez vous avec l\'ajout de dégradés.', '', 'dégradés linéaires;dégradés radiaux;dégradés coniques;valeurs numéraires;valeur par mot-clé;to;from;rgb;rgba;héxadécimal;circle;ellipse;at', '2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', 'css', 'html_css.svg', 1),
(25, 'Les tableaux', 'Découvrez comment mettre en forme des données avec les tableaux.', '', 'table;tr;th;td;caption;border;super-propriétés;thead;tbody;tfoot;rowspan;colspan', '2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', 'html', 'html_css.svg', 1),
(26, 'Les formulaires', 'Apprenez à construire des formulaires pour récolter des informations auprès de vos utilisateurs.', '', 'form;méthode;attribut;addresse;method;action;get;post;input;type;placeholder;required;autofocus;label;for;textarea;cols;rows;file;accept;multiple;checkbox;checked;fieldset;legend;radio;select;option;optgroup;selected;submit;button;image;reset', '2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', 'html', 'html_css.svg', 1),
(27, 'Les placements simples', 'Nous allons maintenant voir comment placer nos éléments dans la page web.', '', 'balises par paire;balises orphelines;balises block;balises inline;balises universelles;balises sémantiques;margin;border;padding;content;height;width;overflow;scroll;auto;hidden;word-wrap', '2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', 'css', 'html_css.svg', 1),
(28, 'Les requêtes de média', 'Dans ce cours, vous allez voir une grosse partie. Les requêtes de média permettent d\'effectuer des changements personnalisés en fonction des appareils, de leur orientation et de leur dimension.', '', 'responsive design;media;annotations', '2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', 'css', 'html_css.svg', 1),
(29, 'Les animations', 'Découvrez l\'univers des animations et commencez à dynamiser simplement vos pages web.', '', 'transform;rotate;deg;turn;abscisses;ordonnées;scale;translate;transformation oblique;skew;super-propriété', '2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', 'css', 'html_css.svg', 1),
(30, 'Les animations avancées', 'Etoffez vos connaissances dans l\'art de l\'animation et dynamiser de façon plus complexes vos éléments.', '', 'transition;delay;function;super-propriété;keyframes;rotate;animation;duration;count;fill;direction', '2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', 'css', 'html_css.svg', 1),
(31, 'Les audios et vidéos', 'Apprenez à intégrer du contenu multimédia dans vos pages: les sons et vidéos. ', '', 'mp3;aac;ogg;wav;aiff;audio;src;source;controls;autoplay;loop;width;preload;avi;mp4;mkv;codec;webm;h.256;ogg theora;video;poster;muted;disablepictureinpicture;iframe;intégration', '2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', 'html', 'html_css.svg', 1),
(32, 'Introduction', '', '', '', '2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', 'frameworks', 'frameworks.svg', 1),
(33, 'Présentation approfondie de bootstrap', 'Dans ce cours, nous allons voir le détail de Bootstrap, son histoire, son évolution, son fonctionnement.', '', 'famework;classes;bootstrap', '2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', 'frameworks', 'frameworks.svg', 1),
(34, 'SASS', 'Découvrez le langage SASS. Syntactically Awesome Style Sheets. Sa puissance vous permettra de progresser drastiquement dans vos réalisations et vos intégrations. Cliquez !', '', 'sass;scss;css;avance', '2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', 'sass', 'sass.svg', 1),
(35, 'Cours sur Git', 'Dans ce cours, vous allez apprendre à quoi sert git, comment vous en servir avec les commandes les plus utilisées.', '', 'git;git flow;github;gitlab', '2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', 'git', 'git.svg', 1),
(36, 'MCD', 'Nous allons ici aborder la notion de MCD. &#10;Modèle Conceptuel des Données.&#10;Il s&#39;agit d&#39;une haute représentation graphique qui permet de comprendre facilement comment les éléments sont liés entre eux.', '', 'merise;mcd;modèle conceptuel des données;pattes;entités;propriétés;associations', '2PACX-1vRVMjFeSLZaPjrfE1g3xV6Vp9UguObvaKC93763kBaIr2G5T5uVNq6HaZeJPUvp101iLzczAR-W3GZn', 'merise', 'merise.svg', 1),
(37, 'MLD', 'Nous allons ici aborder la notion de MLD. &#10;Modèle Logique des Données.&#10;Il s’agit de la représentation en ligne du schéma représentant la structure de la base de données.', '', 'merise;mld;modèle logique des données;clé primaire; clé étrangère;tables;tables d&#39;associations;champs', '2PACX-1vRAjZXsOP18FsgQKZohzExDboUw3E_Tugedrw7u-UQ9873SjXR2MsBosfGMgmB6R7Qtf_MOPDcpSZHJ', 'merise', 'merise.svg', 1),
(38, 'Cahier des Charges', 'C&#39;est dans ce cours que vous pouvez retrouver la façon d&#39;élaborer un CDC. C&#39;est une partie essentielle du métier, afin de mettre à plat les choses dès le début avec le client sur les tâches à effectuer et pour quel prix par exemple.', '', 'cdc;cahier des charges;contraintes;clients', '2PACX-1vRvnxXMY7e1x6zFkzcN515FXoEPta2HiHJSsS4JVNEgYERRcqVSsSHRxS7SslRPrrl9bx3LSQs-Bt_H', 'cdc', 'cdc.svg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cours_ressources`
--

CREATE TABLE `cours_ressources` (
  `cours_ressource_id` int(11) NOT NULL,
  `cours_ressource_titre` varchar(50) NOT NULL,
  `cours_ressource_resume` text DEFAULT NULL,
  `cours_ressource_lien` varchar(255) NOT NULL,
  `cours_ressource_type` varchar(30) NOT NULL COMMENT 'tp;exercice',
  `id_cours` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours_ressources`
--

INSERT INTO `cours_ressources` (`cours_ressource_id`, `cours_ressource_titre`, `cours_ressource_resume`, `cours_ressource_lien`, `cours_ressource_type`, `id_cours`) VALUES
(1, 'Exercice 1 sur la charte graphique', 'Petit résumé montrant de quoi retourne le sujet de l\'exercice.\r\nPetit résumé montrant de quoi retourne le sujet de l\'exercice\r\nPetit résumé montrant de quoi retourne le sujet de l\'exercice. Petit résumé montrant de quoi retourne le sujet de l\'exercice.', 'https://docs.google.com/spreadsheets/d/1bjH6PlkO7S419u5kBgcwZAU6dxLyNknK/edit#gid=2066838886', 'exercice', 38);

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
(64, 2, 24, 0),
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
(98, 2, 35, 0),
(103, 2, 21, 0),
(105, 2, 38, 1),
(107, 1, 34, 0);

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
(4, 'presence', 'Heures entreprises'),
(5, 'livret_evaluation', 'Livret d\'évaluation');

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
(1, 'RODRIGUES', 'Marceau', 'marceaurodrigues@adrar-formation.com', '$2y$10$go.SxmZ3XDA/uGP4gAI.V.38Y.lr4/2Nu0fQjfgdxQ8u56gAiYWJq', 'v/formateurs/signature_6489096bf19b0.png', 'Formateur référent', '', '0552458547', '', NULL, NULL, NULL, NULL, 2, 1),
(2, 'HABBAS', 'Emna', 'emnahabbas@adrar-formation.com', '$2y$10$go.SxmZ3XDA/uGP4gAI.V.38Y.lr4/2Nu0fQjfgdxQ8u56gAiYWJq', 'v/formateurs/signature_649f7afc3477d.png', 'Coordinatrice', NULL, '0552458547', NULL, NULL, NULL, NULL, NULL, 2, 3),
(3, 'RAYNARD', 'Jade', 'jaderaynard@drar-formation.com', '$2y$10$2WXxH8FAYeFNl0DkiOiCsul4TrMUdwFHvGhFnCGfm5Ai7H5ES1gQa', 'v/formateurs/signature_648f7cb40c9ba.png', 'Formatrice rrente', 'test.co', '0404040406', '0469532699', NULL, NULL, NULL, NULL, 1, 2),
(21, 'NAVONE', 'Ruben', 'rubennavone@adrar-formation.com', '$2y$10$83GJeVgku2jgnVzRITh3tuUn2C.sHus6a1JFNrVmxcG/oT4zLNtYK', NULL, 'Formateur Référent', NULL, '0525425877', NULL, NULL, NULL, NULL, '2023-07-09 21:58:13', 2, 1);

-- --------------------------------------------------------

--
-- Structure de la table `historiques`
--

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
(275, 1, '?page=stage', 'Stage', '192.168.2.57', '2023-07-17 16:54:34'),
(277, 1, '?page=titre', 'Titre', '192.168.2.57', '2023-07-17 16:57:48'),
(279, 1, '?page=boite-aux-lettres', 'Boite-aux-lettres', '192.168.2.57', '2023-07-17 16:58:34'),
(281, 1, '?page=formation', 'Formation', '192.168.2.57', '2023-07-17 17:00:02'),
(283, 1, '?page=admin', 'Admin', '192.168.19.119', '2023-07-19 14:29:42');

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

CREATE TABLE `quiz` (
  `quiz_id` int(11) NOT NULL,
  `quiz_module` varchar(50) NOT NULL,
  `quiz_lien` varchar(255) NOT NULL,
  `quiz_difficulte` int(1) NOT NULL COMMENT '0: Facile ; 1: Modéré ; 2: Difficile ; 3: Extrême',
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
(42, 1, 3, 1),
(48, 2, 3, 1);

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
(2, 'CDA34-23-01', 350, 'CDA', '2023-05-09', '0000-00-00', '0000-00-00', '0000-00-00', 1);

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
  `compteur_demandes` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires`
--

INSERT INTO `stagiaires` (`id_stagiaire`, `nom_stagiaire`, `prenom_stagiaire`, `mail_stagiaire`, `pseudo_stagiaire`, `mdp_stagiaire`, `mdp_decode_stagiaire`, `tel_stagiaire`, `date_naissance_stagiaire`, `lien_serveur`, `id_session`, `id_stage`, `convention_recue`, `horaires_recues_1`, `horaires_recues_2`, `horaires_recues_3`, `attestation_mail_envoye`, `attestation_recue`, `evaluation_mail_envoye`, `evaluation_recue`, `compteur_demandes`) VALUES
(23, 'BOTTA', 'Facundo', '', 'fbotta22', '$2y$10$Q7drOfyPNLjvZlXanILgqu2VGEyhqEq6sLaLBy71qwnnb1NDLEMKm', 'Unluckily-Mayflower3-Showroom', '', '0000-00-00', '', 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(24, 'BOUJANDIR', 'Karim', '', NULL, '', '', '', '0000-00-00', '', 1, 2, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(25, 'BOURHIL', 'Yannis', '', NULL, '', '', '', '0000-00-00', '', 1, 3, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(26, 'CHABROUX', 'Jérémy', '', NULL, '', '', '', '0000-00-00', '', 1, 4, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(27, 'EFNANE', 'Haitam', '', NULL, '', '', '', '0000-00-00', '', 1, 5, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(28, 'GATELLIER', 'Amory', '', NULL, '', '', '', '0000-00-00', '', 1, 6, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(29, 'HUET', 'Laurent', '', NULL, '', '', '', '0000-00-00', '', 1, 7, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(30, 'JABRE', 'Hamza', '', NULL, '', '', '', '0000-00-00', '', 1, 8, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(31, 'MAKEMBE', 'Céline', '', NULL, '', '', '', '0000-00-00', '', 1, 9, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(32, 'SETIAO', 'Tiffaine', '', NULL, '', '', '', '0000-00-00', '', 1, 11, 1, 0, 0, 0, 1, 0, 1, 0, 1),
(33, 'PIERROT', 'Gilles', '', NULL, '', '', '', '0000-00-00', '', 1, 12, 1, 1, 1, 0, 1, 0, 1, 0, 1),
(34, 'AOUACHRIA', 'Hibat', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(35, 'CAMOSSI', 'Jérémy', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(36, 'DELLA RICA', 'Steven', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(37, 'DELMON', 'Eryan', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(38, 'DILMAMODE', 'Yasmine', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(39, 'EYMARD', 'Luc', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(40, 'FAKIR', 'Karim', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(41, 'GIRARD', 'Anthony', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(42, 'HERBETTE', 'Alban', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(43, 'VONGSY', 'Laura', '', NULL, '', '', '', '0000-00-00', '', 2, NULL, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(44, 'MOUSTAGHFIR', 'Waël Amir', '', NULL, '', '', '', '0000-00-00', '', 1, 10, 1, 1, 0, 0, 1, 0, 1, 0, 1),
(51, 'RODRIGUES', 'Marceau', 'marceau.ro@adrar-numerique.com', 'marceau', '$2y$10$3durwaynYHwqc.QVhkAUEemvPnqxJmnQvrXxuHArc309BsjOIeETG', 'du-ga-wo-', '0638265641', '1999-07-07', 'lien/vers/serveur/T', 2, NULL, 0, 0, 0, 0, 0, NULL, 0, NULL, 0);

-- --------------------------------------------------------

--
-- Structure de la table `stagiaires_evaluations`
--

CREATE TABLE `stagiaires_evaluations` (
  `stagiaire_evaluation_id` int(11) NOT NULL,
  `stagiaire_evaluation_completed` tinyint(1) NOT NULL,
  `stagiaire_evaluation_correction` tinyint(1) DEFAULT NULL,
  `stagiaire_evaluation_errors_found` int(2) DEFAULT NULL,
  `id_stagiaire` int(11) NOT NULL,
  `id_evaluation` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `stagiaires_evaluations`
--

INSERT INTO `stagiaires_evaluations` (`stagiaire_evaluation_id`, `stagiaire_evaluation_completed`, `stagiaire_evaluation_correction`, `stagiaire_evaluation_errors_found`, `id_stagiaire`, `id_evaluation`) VALUES
(4, 0, NULL, NULL, 23, 1);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `cours`
--
ALTER TABLE `cours`
  ADD PRIMARY KEY (`cours_id`),
  ADD UNIQUE KEY `cours_link` (`cours_link`),
  ADD KEY `id_formateur` (`id_formateur`) USING BTREE;

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
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `cours`
--
ALTER TABLE `cours`
  MODIFY `cours_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT pour la table `cours_ressources`
--
ALTER TABLE `cours_ressources`
  MODIFY `cours_ressource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT pour la table `cours_sessions`
--
ALTER TABLE `cours_sessions`
  MODIFY `cours_session_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;

--
-- AUTO_INCREMENT pour la table `documents`
--
ALTER TABLE `documents`
  MODIFY `id_document` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

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
  MODIFY `id_historique` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=284;

--
-- AUTO_INCREMENT pour la table `quiz`
--
ALTER TABLE `quiz`
  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `quiz_sessions`
--
ALTER TABLE `quiz_sessions`
  MODIFY `quiz_sessions_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

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
  MODIFY `id_stage` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `stagiaires`
--
ALTER TABLE `stagiaires`
  MODIFY `id_stagiaire` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `stagiaires_evaluations`
--
ALTER TABLE `stagiaires_evaluations`
  MODIFY `stagiaire_evaluation_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Contraintes pour les tables déchargées
--

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
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
