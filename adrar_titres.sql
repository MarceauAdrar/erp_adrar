-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : lun. 31 juil. 2023 à 22:48
-- Version du serveur : 8.0.31
-- Version de PHP : 8.2.0

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

DROP TABLE IF EXISTS `cours`;
CREATE TABLE IF NOT EXISTS `cours` (
  `cours_id` int NOT NULL AUTO_INCREMENT,
  `cours_title` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_synopsis` text COLLATE utf8mb4_general_ci NOT NULL,
  `cours_keywords` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `cours_link` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_position` INT NOT NULL DEFAULT '0', 
  `cours_category` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_illustration` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_formateur` int NOT NULL,
  PRIMARY KEY (`cours_id`),
  UNIQUE KEY `cours_link` (`cours_link`),
  KEY `id_formateur` (`id_formateur`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `cours`
--

INSERT INTO `cours` (`cours_id`, `cours_title`, `cours_synopsis`, `cours_keywords`, `cours_link`, `cours_category`, `cours_illustration`, `id_formateur`) VALUES
(1, 'Introduction au HTML', 'Plongez-vous dans l\'informatique et découvrez les fondements de la programmation.', 'Ici, vous allez apprendre les bases pour construire une page web.', 'balises par paires;balises orphelines;éditeur;web;internet;url;parents;enfants;chevrons;slash;attribut;valeur;indentation;camelcase;commentaires', '2PACX-1vSk4_yItzv4-2qxw0Lt7UqTsuNcli83Muf-E4ek0-qQwPfmJbcN2HJ6L44hCbga4Q', 'html', 'html_css.svg', 1),
(2, 'Les balises', 'Attaquez la programmation en découvrant les balises HTML', 'chrevrons;balises par paires;balises orphelines;block;inline;parent;enfant;paragraphe;div;span;ancre;chemin relatif;chemin absolu;identifiant;camelcase;snakecase;href;src;alt;listes ordonnées;listes non-ordonnées;header;footer;nav;section;article;aside;balises sémantiques', '2PACX-1vRNi4-iELv39SurO_-usTTkP-T6pz3opQuZ88YmKgcSZCO4n3PEcU169pygC92xdA', 'html', 'html_css.svg', 1),
(17, 'Introduction', 'Attaquez les bases des feuilles de style.', 'styliser;style;link;sélecteurs;propriétés;valeurs;séparateurs;commentaires;cascade;ordre d\'éxécution;héritage;règles;déclarations', '2PACX-1vR_U7vzVknsPdbZMY2hrmpTbN5GVDzV7ZnP5RYCwynEUL3IJxoTQq8WEOr1vFpMnA', 'css', 'html_css.svg', 1),
(18, 'Sélecteurs simples', 'Apprenez à manipuler les sélecteurs basiques pour pouvoir styliser votre page web.', 'sélecteur;unicité;multiplicité;sélections multiples;sélections imbriquées;sélections par attribut;sélections avancées', '2PACX-1vSMj5RA0sySiCbnJb7Vn6-9qbzLo8cGVH6f9voWwHxq0s2RM_ZxdicwH-DBvJyKIg', 'css', 'html_css.svg', 1),
(19, 'Propriétés courantes', 'Dans ce cours, vous allez découvrir les propriétés les plus communément utilisées en CSS.', 'textes;background;super-propriétés;dimensions;couleurs;héxadécimal;rgb;rgba', '2PACX-1vQpDxcYZCa3sdCEDgYLcNnnsI797nvaFDqQWz675saTigKm3YTDsGHrveWnQn0AEg', 'css', 'html_css.svg', 1),
(20, 'Les pseudo-classes', 'Vous allez découvrir ici l\'utilité des pseudo-classes qui peuvent permettre de dynamiser votre page web et de faire des règles plus complexes.', 'hover;visited;link;active;focus;first-child;last-child;nth-child;odd;even;notation fonctionnelle', '2PACX-1vQhHmuhv1W32gs4ywhBf0l_jCcFFhsxymiM5DX3IB3dLGk_MfSbgg_m6t9ZpYzZHw', 'css', 'html_css.svg', 1),
(21, 'Flexbox', 'Découvrez comment fonctionne les flexbox et leurs placements.', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;order', '2PACX-1vT-eNMtxS-0JiQkBBW5OLBRhmZzTs3UmoLTGrHus9L5nQdxHDC_NfC72JZBjDu54Q', 'css', 'html_css.svg', 1),
(22, 'Grid', 'Découvrez comment fonctionne les placements avec le système de grilles.', 'margin;border;padding;content;height;width;tableaux;float;flex;grid;parent;enfant;lignes;colonnes;rows;columns;patterns', '2PACX-1vQYBldbOnfpm0_9Lj6UpSJtHBCi3hTS7DmawKVuH_3pwHcPJRmONLTO_6ScqTEClQ', 'css', 'html_css.svg', 1),
(23, 'Ombrages', 'Ajoutez de la dimension et de la profondeur à votre page avec les ombres.', 'box-shadow;text-shadow;décalages;flou;couleur', '2PACX-1vSNfHZUKkjoydHHp-uh21-hjhING6Rjx0MKPAwmh0uv1CR6nWHofr7kJ3A5GL62wQ', 'css', 'html_css.svg', 1),
(24, 'Les dégradés', 'Démarquez vous avec l\'ajout de dégradés.', 'dégradés linéaires;dégradés radiaux;dégradés coniques;valeurs numéraires;valeur par mot-clé;to;from;rgb;rgba;héxadécimal;circle;ellipse;at', '2PACX-1vSFVF-pr_6VrNRB2JSWgXsjvniCNrTiSkmq-dHvCRFWK7Qd4bx1gFMvN1uyUbmlow', 'css', 'html_css.svg', 1),
(25, 'Les tableaux', 'Découvrez comment mettre en forme des données avec les tableaux.', 'table;tr;th;td;caption;border;super-propriétés;thead;tbody;tfoot;rowspan;colspan', '2PACX-1vRUt5G2RQC5NRvY4-bE_1tqpqqCsngqZ2Qtj9U7DYHe-dbmxJCrRDb5SbP4eWSX2w', 'html', 'html_css.svg', 1),
(26, 'Les formulaires', 'Apprenez à construire des formulaires pour récolter des informations auprès de vos utilisateurs.', 'form;méthode;attribut;addresse;method;action;get;post;input;type;placeholder;required;autofocus;label;for;textarea;cols;rows;file;accept;multiple;checkbox;checked;fieldset;legend;radio;select;option;optgroup;selected;submit;button;image;reset', '2PACX-1vQpf58G65Jr9z9mu7oprvpGpxYhN_GzWPfIV9dTeRHmUWxcB15vuN8pRWe-oyIozw', 'html', 'html_css.svg', 1),
(27, 'Les placements simples', 'Nous allons maintenant voir comment placer nos éléments dans la page web.', 'balises par paire;balises orphelines;balises block;balises inline;balises universelles;balises sémantiques;margin;border;padding;content;height;width;overflow;scroll;auto;hidden;word-wrap', '2PACX-1vTGhszZR_wAelj59VjADSB721b2WT2_IUxxQ4O0ecn2j6ckXUKKMquxWSkxn_s0-w', 'css', 'html_css.svg', 1),
(28, 'Les requêtes de média', 'Dans ce cours, vous allez voir une grosse partie. Les requêtes de média permettent d\'effectuer des changements personnalisés en fonction des appareils, de leur orientation et de leur dimension.', 'responsive design;media;annotations', '2PACX-1vQTKb4U1ngluhR71yzSlUXviR30IAYkgx0MAThY2wqQql6_RvfAfWgUhiN3ogyf4A', 'css', 'html_css.svg', 1),
(29, 'Les animations', 'Découvrez l\'univers des animations et commencez à dynamiser simplement vos pages web.', 'transform;rotate;deg;turn;abscisses;ordonnées;scale;translate;transformation oblique;skew;super-propriété', '2PACX-1vRm_gYQ0NC8mkVsT5PxJCoLiYXAhZM7rzHsPHUVnxR90MnBfN_lD5j4xaT2TGcUBg', 'css', 'html_css.svg', 1),
(30, 'Les animations avancées', 'Etoffez vos connaissances dans l\'art de l\'animation et dynamiser de façon plus complexes vos éléments.', 'transition;delay;function;super-propriété;keyframes;rotate;animation;duration;count;fill;direction', '2PACX-1vS5iH-uH0o1FGroGtXvQoi8fgHcaMAKBRZyOtM__gmBic3mdTEBP5KJQ8gMPrpBTQ', 'css', 'html_css.svg', 1),
(31, 'Les audios et vidéos', 'Apprenez à intégrer du contenu multimédia dans vos pages: les sons et vidéos. ', 'mp3;aac;ogg;wav;aiff;audio;src;source;controls;autoplay;loop;width;preload;avi;mp4;mkv;codec;webm;h.256;ogg theora;video;poster;muted;disablepictureinpicture;iframe;intégration', '2PACX-1vQVNYM22_m2bPi2fLAcebBofTowiksyhZ4_9gMQQ78Bzkt-Pnx0z_s4pjk6l8vg2A', 'html', 'html_css.svg', 1),
(32, 'Introduction', '', '', '2PACX-1vTqPp9VoPh8td2vAIq1XxnQChmlqzzgUWGFsdDvncHD6mXKO0zx8t_Vu6nmZPSv4ILWVZmuTG5JoiRm', 'frameworks', 'frameworks.svg', 1),
(33, 'Présentation approfondie de bootstrap', 'Dans ce cours, nous allons voir le détail de Bootstrap, son histoire, son évolution, son fonctionnement.', 'famework;classes;bootstrap', '2PACX-1vQznp_kW-ITUaTVXg8kO8ygsN43UKPIQ7y9pzfE9lpnV3__FELZ6_hjAcT_BMAbsoy--4__ud1ZhjHy', 'frameworks', 'frameworks.svg', 1),
(34, 'SASS', 'Découvrez le langage SASS. Syntactically Awesome Style Sheets. Sa puissance vous permettra de progresser drastiquement dans vos réalisations et vos intégrations. Cliquez !', 'sass;scss;css;avance', '2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', 'sass', 'sass.svg', 1),
(35, 'Cours sur Git', 'Dans ce cours, vous allez apprendre à quoi sert git, comment vous en servir avec les commandes les plus utilisées.', 'git;git flow;github;gitlab', '2PACX-1vSKeR0dFKWdpRfcbrD-zlwwRXaxgJnZxQSvw8UNWYpTh2DQ19vfhDLWrLz_4esmuEySbhLhF-0kYoR6', 'git', 'git.svg', 1),
(36, 'MCD', 'Nous allons ici aborder la notion de MCD. &#10;Modèle Conceptuel des Données.&#10;Il s&#39;agit d&#39;une haute représentation graphique qui permet de comprendre facilement comment les éléments sont liés entre eux.', 'merise;mcd;modèle conceptuel des données;pattes;entités;propriétés;associations', '2PACX-1vRVMjFeSLZaPjrfE1g3xV6Vp9UguObvaKC93763kBaIr2G5T5uVNq6HaZeJPUvp101iLzczAR-W3GZn', 'merise', 'merise.svg', 1),
(37, 'MLD', 'Nous allons ici aborder la notion de MLD. &#10;Modèle Logique des Données.&#10;Il s’agit de la représentation en ligne du schéma représentant la structure de la base de données.', 'merise;mld;modèle logique des données;clé primaire; clé étrangère;tables;tables d&#39;associations;champs', '2PACX-1vRAjZXsOP18FsgQKZohzExDboUw3E_Tugedrw7u-UQ9873SjXR2MsBosfGMgmB6R7Qtf_MOPDcpSZHJ', 'merise', 'merise.svg', 1),
(38, 'Cahier des Charges', 'C&#39;est dans ce cours que vous pouvez retrouver la façon d&#39;élaborer un CDC. C&#39;est une partie essentielle du métier, afin de mettre à plat les choses dès le début avec le client sur les tâches à effectuer et pour quel prix par exemple.', 'cdc;cahier des charges;contraintes;clients', '2PACX-1vRvnxXMY7e1x6zFkzcN515FXoEPta2HiHJSsS4JVNEgYERRcqVSsSHRxS7SslRPrrl9bx3LSQs-Bt_H', 'cdc', 'cdc.svg', 1),
(40, 'Présentation', 'Apprenez à réaliser des maquettes de vos applications et sites web afin de gagner du temps sur la totalité du projet et pouvoir faire des choix, sans coder.', 'maquette;maquettage;zoning;wireframe;prototype', '2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', 'maquettage', 'maquettage.svg', 1),
(41, 'Présentation', 'Présentation du langage PHP.', 'php;présentation', '2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', 'php', 'php.svg', 1),
(42, 'Installation de l\'interpréteur de commandes', 'Installer la CLI (Command Line Interface) pour démarrer le développement back-end.', 'php;interpréteur de commandes;path', '2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', 'php', 'php.svg', 1),
(43, 'Structure de la page', 'Présentation de la structure de base d\'une page PHP, des commentaires.', 'php;commentaire;echo;structure', '2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', 'php', 'php.svg', 1),
(44, 'Les variables', 'Découvrez ou re-découvrez les variables en PHP.', 'php;variable;déclaration;affectation;type', '2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', 'php', 'php.svg', 1),
(45, 'Les opérateurs', 'Vérifiez les possibilités sur les valeurs mathématiques.', 'php;opérateur;var_dump;print_r;débogage', '2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', 'php', 'php.svg', 1),
(46, 'La concaténation', 'Ce cours vous donne les codes pour effectuer la concaténation de vos variables.', 'php;concaténer;concaténation;caractère d\'échappement', '2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', 'php', 'php.svg', 1),
(47, 'Les fonctions', 'Principe de base des fonctions avec des exemples et exercices avec et sans paramètres.', 'php;fonction;paramètre;return', '2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', 'php', 'php.svg', 1);

-- --------------------------------------------------------

--
-- Structure de la table `cours_ressources`
--

DROP TABLE IF EXISTS `cours_ressources`;
CREATE TABLE IF NOT EXISTS `cours_ressources` (
  `cours_ressource_id` int NOT NULL AUTO_INCREMENT,
  `cours_ressource_titre` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `cours_ressource_resume` text COLLATE utf8mb4_general_ci,
  `cours_ressource_lien` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cours_ressource_type` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL COMMENT 'tp;exercice;autre',
  `cours_ressource_archive` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `cours_ressource_archive_lien` varchar(255) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `id_cours` int NOT NULL,
  PRIMARY KEY (`cours_ressource_id`),
  KEY `id_cours` (`id_cours`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(38, 'Exercices bootstrap', 'Exercez vous sur la mise en forme d&#39;éléments et l&#39;utilisation des classes de bootstrap.', 'https://docs.google.com/document/d/1S0KnzN35uDMzMJ7pMzcoiO4Sf5tHvvqpQGPyG2uFrcs/edit?usp=sharing', 'exercice', NULL, NULL, 32),
(39, 'TP Bootstrap', 'Vous allez devoir réaliser une petite intégration pour un site de VOD en utilisant le framework bootstrap.', 'https://docs.google.com/document/d/1wed9U5UWSYZzNrX_lF-ZUTcTxqjSsj-HyPbJgep4Udg/edit?usp=sharing', 'tp', NULL, NULL, 32),
(40, 'Évaluation Git', 'Retrouvez l&#39;ensemble des instructions afin de vérifier vos acquis sur le module Git.', 'https://docs.google.com/document/d/10tyBETYdZz7T5w3wkEBCqHhbeyzwDo53kAmtUIjaylo/edit?usp=sharing', 'tp', NULL, NULL, 35),
(41, 'TP 1', 'Seconde évaluation pour vérifier vos acquis.', 'https://docs.google.com/document/d/1Jx4mRmUt-RV4QdLop2yh56NbFtgsw8JHPKbYUPMFY5E/edit?usp=sharing', 'tp', NULL, NULL, 35),
(42, 'TP 2', 'Troisième évaluation permettant de vous évaluer.', 'https://docs.google.com/document/d/1STBd6ZOx40bHZAxzT1F9_pvB24q8nu_BLFstmtSjYfg/edit?usp=sharing', 'tp', NULL, NULL, 35),
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
(54, 'TP BONUS', 'Ce TP est optionnel, vous devrez réaliser la maquette de Black Maquette au format Desktop.', 'https://docs.google.com/document/d/1XdAWKvktPiuoDGk9DtsAA1cY4rQH3FsrkKVaUH1tpVQ/edit?usp=sharing', 'tp', NULL, NULL, 40);

-- --------------------------------------------------------

--
-- Structure de la table `cours_sessions`
--

DROP TABLE IF EXISTS `cours_sessions`;
CREATE TABLE IF NOT EXISTS `cours_sessions` (
  `cours_session_id` int NOT NULL AUTO_INCREMENT,
  `id_session` int NOT NULL,
  `id_cours` int NOT NULL,
  `cours_session_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`cours_session_id`),
  UNIQUE KEY `id_session_2` (`id_session`,`id_cours`),
  KEY `id_session` (`id_session`),
  KEY `id_course` (`id_cours`)
) ENGINE=InnoDB AUTO_INCREMENT=134 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(105, 2, 38, 1),
(117, 2, 29, 0),
(118, 2, 21, 1),
(125, 1, 34, 1),
(126, 1, 40, 1),
(127, 1, 41, 1),
(128, 1, 42, 1),
(129, 1, 43, 1),
(130, 1, 46, 1),
(131, 1, 47, 1),
(132, 1, 45, 1),
(133, 1, 44, 1);

-- --------------------------------------------------------

--
-- Structure de la table `documents`
--

DROP TABLE IF EXISTS `documents`;
CREATE TABLE IF NOT EXISTS `documents` (
  `id_document` int NOT NULL AUTO_INCREMENT,
  `index_document` varchar(20) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_document` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_document`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `documents_pages`;
CREATE TABLE IF NOT EXISTS `documents_pages` (
  `id` int NOT NULL AUTO_INCREMENT,
  `num_page` int NOT NULL,
  `lien` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `textes_ajoutes` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `id_document` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `id_document` (`id_document`)
) ;

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
CREATE TABLE IF NOT EXISTS `evaluations` (
  `evaluation_id` int NOT NULL AUTO_INCREMENT,
  `evaluation_title` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_goals` longtext COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_synopsis` text COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_token` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_errors_max` int NOT NULL,
  `id_evaluation_dd` int NOT NULL,
  PRIMARY KEY (`evaluation_id`),
  KEY `id_evaluation_dd` (`id_evaluation_dd`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `evaluations_dd` (
  `evaluation_dd_id` int NOT NULL AUTO_INCREMENT,
  `evaluation_dd_name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_dd_link` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `evaluation_dd_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`evaluation_dd_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `evaluations_sessions` (
  `evaluation_session_active` tinyint(1) NOT NULL,
  `id_dd_evaluation` int NOT NULL,
  `id_session` int NOT NULL,
  PRIMARY KEY (`id_dd_evaluation`,`id_session`),
  KEY `id_session` (`id_session`),
  KEY `id_dd_evaluation` (`id_dd_evaluation`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
CREATE TABLE IF NOT EXISTS `formateurs` (
  `id_formateur` int NOT NULL AUTO_INCREMENT,
  `nom_formateur` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_formateur` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_formateur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_formateur` varchar(60) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `signature_formateur` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `carte_formateur_role` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `carte_formateur_liens` varchar(25) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `carte_formateur_tel` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `carte_formateur_portable` varchar(10) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `tmp_code_formateur` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Contient un code qui permet à un formateur de en cas d''oubli de mot de passe ou si la période de validité du code est échue\r\n',
  `date_tmp_code_formateur` datetime DEFAULT NULL COMMENT 'Validité de 5 minutes',
  `code_entree_formateur` varchar(6) COLLATE utf8mb4_general_ci DEFAULT NULL COMMENT 'Contient un code UNIQUE qui permet à un formateur de s''identifier la première fois pour changer son mot de passe',
  `date_code_entree_formateur` datetime DEFAULT NULL COMMENT 'Validité d''une semaine',
  `id_site` int NOT NULL,
  `id_secteur` int NOT NULL,
  PRIMARY KEY (`id_formateur`),
  UNIQUE KEY `mail_formateur` (`mail_formateur`),
  UNIQUE KEY `code_entree_formateur` (`code_entree_formateur`),
  KEY `id_secteur` (`id_secteur`),
  KEY `id_site` (`id_site`)
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `historiques`;
CREATE TABLE IF NOT EXISTS `historiques` (
  `id_historique` int NOT NULL AUTO_INCREMENT,
  `id_formateur` int NOT NULL,
  `page_visitee` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `page_nom` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ip_visiteur` varchar(15) COLLATE utf8mb4_general_ci NOT NULL,
  `date_visite` datetime NOT NULL,
  PRIMARY KEY (`id_historique`),
  UNIQUE KEY `id_formateur_2` (`id_formateur`,`page_visitee`),
  KEY `id_formateur` (`id_formateur`)
) ENGINE=InnoDB AUTO_INCREMENT=351 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
(304, 1, '?page=titre', 'Titre', '::1', '2023-07-27 22:55:58'),
(317, 1, '?page=stage', 'Stage', '::1', '2023-07-30 01:52:20'),
(323, 1, '?page=admin', 'Admin', '::1', '2023-07-30 20:07:23'),
(324, 1, '?page=boite-aux-lettres', 'Boite-aux-lettres', '::1', '2023-07-30 22:56:48'),
(350, 1, '?page=formation', 'Formation', '::1', '2023-08-01 00:47:55');

-- --------------------------------------------------------

--
-- Structure de la table `notifications`
--

DROP TABLE IF EXISTS `notifications`;
CREATE TABLE IF NOT EXISTS `notifications` (
  `notification_titre` varchar(50) NOT NULL,
  `notification_lien` varchar(255) NOT NULL,
  `notification_date` datetime NOT NULL,
  `id_stagiaire` int NOT NULL,
  PRIMARY KEY (`notification_titre`,`notification_lien`,`id_stagiaire`) USING BTREE,
  KEY `id_stagiaire` (`id_stagiaire`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `notifications`
--

INSERT INTO `notifications` (`notification_titre`, `notification_lien`, `notification_date`, `id_stagiaire`) VALUES
('[MAQUETTAGE] Nouveau cours disponible: Présentatio', '/erp/public/formation/embed.php?slide=2PACX-1vQ6ivShYWJW93j1_BLlcfQM7i92_8kXw9BC9GHGWj26gIWqW5awlyB9V-NV0fIh_g5tydGlLRCBxShX', '2023-07-31 00:48:58', 23),
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
('[PHP] Nouveau cours disponible: Installation de l\'', '/erp/public/formation/embed.php?slide=2PACX-1vRuG0jRbRuDtq90jBjuDNxFKFFqISMT7tp35TXvifrgd5am1tx7BbGfnykDT6kQzTPQk6F1v6en2-sl', '2023-08-01 00:24:16', 23),
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
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 23),
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
('[PHP] Nouveau cours disponible: La concaténation', '/erp/public/formation/embed.php?slide=2PACX-1vTKV3gTpf_DcZjgXHdrKkexxG_5yrf23UKTj0bFH5NesBd9ruhtOVw4-w29wqWnbQeX0BXcuYhSXRsS', '2023-08-01 00:47:31', 44),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 23),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 24),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 25),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 26),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 27),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 28),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 29),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 30),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 31),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 32),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 33),
('[PHP] Nouveau cours disponible: Les fonctions', '/erp/public/formation/embed.php?slide=2PACX-1vSMvIlP92QMtmnAOos1bGq7GcQuHqzd3q54i_URECZMe-xcLNxZLSPn--G3cOpr_6-kbHYqkCTlLyHK', '2023-08-01 00:47:32', 44),
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 23),
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
('[PHP] Nouveau cours disponible: Les opérateurs', '/erp/public/formation/embed.php?slide=2PACX-1vSFYZ_TNtVAaVudDdmROSey8BNr6CJn0jSTr4bqiDMhf9W3TT_DSWkNmJWgwUVINtYmYCFrfTxvtXvA', '2023-08-01 00:47:32', 44),
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 23),
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
('[PHP] Nouveau cours disponible: Les variables', '/erp/public/formation/embed.php?slide=2PACX-1vSuLAYVq-oENR7uPs3aT-zSU_tsKTvIy8v9KGvS2PfxGyCZduX4nm1E7oCEEUSZtst0iNCx_Zf2wiNd', '2023-08-01 00:47:34', 44),
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 23),
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
('[PHP] Nouveau cours disponible: Présentation', '/erp/public/formation/embed.php?slide=2PACX-1vTgogYzDcD-TvZianF-SOllaFNXYMA-civ7CPz_TeGdDaY89oJZJH0Dnpm4-Zhl4c1w3h-jpGzDmdwN', '2023-08-01 00:09:56', 44),
('[PHP] Nouveau cours disponible: Structure de la pa', '/erp/public/formation/embed.php?slide=2PACX-1vQeK4weEvOLRPOJWJEPRnrjeUUxBxuGuElOg2qerlzTOuBYS7ujoZlAtre7nUZIsdkPKZSYXaVWjGbe', '2023-08-01 00:24:18', 23),
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
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 25),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 26),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 27),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 28),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 29),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 30),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 31),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 32),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 33),
('[SASS] Nouveau cours disponible: SASS', '/erp/public/formation/embed.php?slide=2PACX-1vQfX_sCvSIi2KZ8O50iy_eNxZ0vvZANohBEdDv0LK1FOhE1i_uh12ADgCvCUILq6lpxtDHS2LGgrWL4', '2023-07-30 03:17:32', 44);

-- --------------------------------------------------------

--
-- Structure de la table `quiz`
--

DROP TABLE IF EXISTS `quiz`;
CREATE TABLE IF NOT EXISTS `quiz` (
  `quiz_id` int NOT NULL AUTO_INCREMENT,
  `quiz_module` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `quiz_lien` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `quiz_difficulte` int NOT NULL COMMENT '0: Facile ; 1: Modéré ; 2: Difficile ; 3: Extrême',
  `id_formateur` int NOT NULL,
  PRIMARY KEY (`quiz_id`),
  UNIQUE KEY `quiz_lien` (`quiz_lien`),
  KEY `id_formateur` (`id_formateur`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `quiz_sessions` (
  `quiz_sessions_id` int NOT NULL AUTO_INCREMENT,
  `id_session` int NOT NULL,
  `id_quiz` int NOT NULL,
  `quiz_session_active` tinyint(1) NOT NULL,
  PRIMARY KEY (`quiz_sessions_id`),
  UNIQUE KEY `id_session_2` (`id_session`,`id_quiz`),
  KEY `id_session` (`id_session`),
  KEY `id_quiz` (`id_quiz`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Déchargement des données de la table `quiz_sessions`
--

INSERT INTO `quiz_sessions` (`quiz_sessions_id`, `id_session`, `id_quiz`, `quiz_session_active`) VALUES
(48, 2, 3, 1),
(61, 1, 3, 1);

-- --------------------------------------------------------

--
-- Structure de la table `secteurs`
--

DROP TABLE IF EXISTS `secteurs`;
CREATE TABLE IF NOT EXISTS `secteurs` (
  `id_secteur` int NOT NULL AUTO_INCREMENT,
  `nom_secteur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `logo_secteur` varchar(150) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_secteur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `sessions` (
  `id_session` int NOT NULL AUTO_INCREMENT,
  `nom_session` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `duree_stage` int NOT NULL,
  `sigle_session` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `date_debut_session` date NOT NULL,
  `date_fin_session` date NOT NULL,
  `date_debut_stage` date NOT NULL,
  `date_fin_stage` date NOT NULL,
  `id_formateur` int NOT NULL,
  PRIMARY KEY (`id_session`),
  KEY `id_formateur` (`id_formateur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `sites`;
CREATE TABLE IF NOT EXISTS `sites` (
  `id_site` int NOT NULL AUTO_INCREMENT,
  `libelle_site` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_mail_site` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `contact_tel_site` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_num_site` int DEFAULT NULL,
  `adresse_bis_site` tinyint(1) NOT NULL DEFAULT '0',
  `adresse_rue_site` varchar(500) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_cp_site` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_ville_site` varchar(75) COLLATE utf8mb4_general_ci NOT NULL,
  `adresse_supp_site` varchar(100) COLLATE utf8mb4_general_ci DEFAULT NULL,
  PRIMARY KEY (`id_site`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `stages` (
  `id_stage` int NOT NULL AUTO_INCREMENT,
  `rue_lieu_stage` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `cp_lieu_stage` varchar(5) COLLATE utf8mb4_general_ci NOT NULL,
  `ville_lieu_stage` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pays_lieu_stage` varchar(25) COLLATE utf8mb4_general_ci NOT NULL,
  `nom_tuteur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_tuteur` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_tuteur` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  PRIMARY KEY (`id_stage`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `stagiaires` (
  `id_stagiaire` int NOT NULL AUTO_INCREMENT,
  `nom_stagiaire` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `prenom_stagiaire` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `mail_stagiaire` varchar(100) COLLATE utf8mb4_general_ci NOT NULL,
  `pseudo_stagiaire` varchar(50) COLLATE utf8mb4_general_ci DEFAULT NULL,
  `mdp_stagiaire` varchar(60) COLLATE utf8mb4_general_ci NOT NULL,
  `mdp_decode_stagiaire` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `tel_stagiaire` varchar(10) COLLATE utf8mb4_general_ci NOT NULL,
  `date_naissance_stagiaire` date NOT NULL,
  `lien_serveur` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `id_session` int NOT NULL,
  `id_stage` int DEFAULT NULL,
  `convention_recue` tinyint(1) NOT NULL DEFAULT '0',
  `horaires_recues_1` tinyint(1) NOT NULL DEFAULT '0',
  `horaires_recues_2` tinyint(1) NOT NULL DEFAULT '0',
  `horaires_recues_3` tinyint(1) NOT NULL DEFAULT '0',
  `attestation_mail_envoye` tinyint(1) NOT NULL DEFAULT '0',
  `attestation_recue` tinyint(1) DEFAULT NULL,
  `evaluation_mail_envoye` tinyint(1) NOT NULL DEFAULT '0',
  `evaluation_recue` tinyint(1) DEFAULT NULL,
  `compteur_demandes` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`id_stagiaire`),
  UNIQUE KEY `pseudo_stagiaire` (`pseudo_stagiaire`),
  KEY `id_session` (`id_session`),
  KEY `id_stage` (`id_stage`)
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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

DROP TABLE IF EXISTS `stagiaires_evaluations`;
CREATE TABLE IF NOT EXISTS `stagiaires_evaluations` (
  `stagiaire_evaluation_id` int NOT NULL AUTO_INCREMENT,
  `stagiaire_evaluation_completed` tinyint(1) NOT NULL,
  `stagiaire_evaluation_correction` tinyint(1) DEFAULT NULL,
  `stagiaire_evaluation_errors_found` int DEFAULT NULL,
  `id_stagiaire` int NOT NULL,
  `id_evaluation` int NOT NULL,
  PRIMARY KEY (`stagiaire_evaluation_id`),
  UNIQUE KEY `id_intern_2` (`id_stagiaire`,`id_evaluation`),
  KEY `id_stagiaire` (`id_stagiaire`),
  KEY `id_evaluation` (`id_evaluation`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

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
CREATE TABLE IF NOT EXISTS `stagiaires_ressources` (
  `id_stagiaire` int NOT NULL,
  `id_ressource` int NOT NULL,
  `lien_ressource_rendue` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  PRIMARY KEY (`id_stagiaire`,`id_ressource`),
  KEY `id_stagiaire` (`id_stagiaire`),
  KEY `id_ressource` (`id_ressource`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Déchargement des données de la table `stagiaires_ressources`
--

INSERT INTO `stagiaires_ressources` (`id_stagiaire`, `id_ressource`, `lien_ressource_rendue`) VALUES
(23, 9, 'ressource_9_adrar_titres.sql');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `cours`
--
ALTER TABLE `cours`
  ADD CONSTRAINT `cours_ibfk_1` FOREIGN KEY (`id_formateur`) REFERENCES `formateurs` (`id_formateur`) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE cours ADD FULLTEXT INDEX idx_cours_keywords (cours_keywords);

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

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
