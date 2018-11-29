-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  jeu. 29 nov. 2018 à 15:56
-- Version du serveur :  5.7.21
-- Version de PHP :  5.6.35

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `bnavale`
--
CREATE DATABASE IF NOT EXISTS `bnavale` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bnavale`;

-- --------------------------------------------------------

--
-- Structure de la table `jouer`
--

DROP TABLE IF EXISTS `jouer`;
CREATE TABLE IF NOT EXISTS `jouer` (
  `id_joueur` int(11) NOT NULL,
  `id_partie` int(11) NOT NULL,
  `id_gagnant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_joueur`,`id_partie`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `jouer`
--

INSERT INTO `jouer` (`id_joueur`, `id_partie`, `id_gagnant`) VALUES
(2, 3, 2),
(4, 2, 4);

-- --------------------------------------------------------

--
-- Structure de la table `joueur`
--

DROP TABLE IF EXISTS `joueur`;
CREATE TABLE IF NOT EXISTS `joueur` (
  `id_joueur` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_joueur` varchar(20) NOT NULL,
  `prenom_joueur` varchar(20) NOT NULL,
  `identifiant` varchar(30) DEFAULT NULL,
  `mot_de_passe` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id_joueur`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `joueur`
--

INSERT INTO `joueur` (`id_joueur`, `nom_joueur`, `prenom_joueur`, `identifiant`, `mot_de_passe`) VALUES
(1, 'J1', 'Yohann', 'Yohann', '123456789'),
(2, 'J2', 'Bob', 'Bob', 'test'),
(3, 'J3', 'Jack', 'Jack', 'Jack123'),
(4, 'J4', 'Hannah', 'Hannah', 'brownies'),
(5, 'J5', 'Samuel', 'Samuel', 'Samuel123');

-- --------------------------------------------------------

--
-- Structure de la table `partie`
--

DROP TABLE IF EXISTS `partie`;
CREATE TABLE IF NOT EXISTS `partie` (
  `id_partie` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT,
  `nom_partie` varchar(20) DEFAULT NULL,
  `date_debut` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `date_fin` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id_partie`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `partie`
--

INSERT INTO `partie` (`id_partie`, `nom_partie`, `date_debut`, `date_fin`) VALUES
(2, 'partie2', '2018-01-11 23:00:00', '2017-01-24 23:00:00'),
(3, 'partie1', '2018-01-09 23:00:00', '2017-01-24 23:00:00');
--
-- Base de données :  `covoiturage`
--
CREATE DATABASE IF NOT EXISTS `covoiturage` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `covoiturage`;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id_utilisateur` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(30) DEFAULT NULL,
  `Nom` varchar(30) DEFAULT NULL,
  `Prenom` varchar(30) DEFAULT NULL,
  `mdp` varchar(30) DEFAULT NULL,
  PRIMARY KEY (`id_utilisateur`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Base de données :  `formsalarie`
--
CREATE DATABASE IF NOT EXISTS `formsalarie` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `formsalarie`;
--
-- Base de données :  `gestion_api`
--
CREATE DATABASE IF NOT EXISTS `gestion_api` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `gestion_api`;

-- --------------------------------------------------------

--
-- Structure de la table `etablissement`
--

DROP TABLE IF EXISTS `etablissement`;
CREATE TABLE IF NOT EXISTS `etablissement` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prospecteur` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `etablissement`
--

INSERT INTO `etablissement` (`id`, `code`, `adresse`, `prospecteur`) VALUES
(1, '1458', 'Adresse 1', 'Prospecteur 1'),
(2, '4569', 'Adresse 2', 'Prospecteur 2'),
(3, '4586', 'Adresse 3', 'Prospecteur 3');

-- --------------------------------------------------------

--
-- Structure de la table `migration_versions`
--

DROP TABLE IF EXISTS `migration_versions`;
CREATE TABLE IF NOT EXISTS `migration_versions` (
  `version` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `migration_versions`
--

INSERT INTO `migration_versions` (`version`) VALUES
('20181105140440');

-- --------------------------------------------------------

--
-- Structure de la table `organisation`
--

DROP TABLE IF EXISTS `organisation`;
CREATE TABLE IF NOT EXISTS `organisation` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `une_region_id` int(11) DEFAULT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `adresse` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_E6E132B47E7FC447` (`une_region_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `organisation`
--

INSERT INTO `organisation` (`id`, `une_region_id`, `nom`, `adresse`) VALUES
(1, 1, 'Organisation 1', 'Adresse 1'),
(2, 1, 'Organisation 2', 'Adresse 2'),
(3, 2, 'Organisation 3', 'Adresse 3'),
(4, 2, 'Organisation 4', 'Adresse 4'),
(5, 3, 'Organisation 5', 'Adresse 6'),
(6, 3, 'Organisation 6', 'Adresse 6'),
(7, 4, 'Organisation 7', 'Adresse 7'),
(8, 4, 'Organisation 8', 'Adresse 8'),
(9, 4, 'Organisation 9', 'Adresse 9'),
(10, 5, 'Organisation 10', 'Adresse 10');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

DROP TABLE IF EXISTS `personne`;
CREATE TABLE IF NOT EXISTS `personne` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `region`
--

DROP TABLE IF EXISTS `region`;
CREATE TABLE IF NOT EXISTS `region` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `un_etablissement_id` int(11) DEFAULT NULL,
  `numero` int(11) NOT NULL,
  `nom` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_F62F176FDE7A91B` (`un_etablissement_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `region`
--

INSERT INTO `region` (`id`, `un_etablissement_id`, `numero`, `nom`) VALUES
(1, 1, 95, 'Region 1'),
(2, 1, 77, 'Region 2'),
(3, 2, 75, 'Region 3'),
(4, 3, 93, 'Region 4'),
(5, 3, 91, 'Region 5');

-- --------------------------------------------------------

--
-- Structure de la table `visite`
--

DROP TABLE IF EXISTS `visite`;
CREATE TABLE IF NOT EXISTS `visite` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `une_organisation_id` int(11) DEFAULT NULL,
  `date_visite` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_B09C8CBBEAEA3D84` (`une_organisation_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `visite`
--

INSERT INTO `visite` (`id`, `une_organisation_id`, `date_visite`) VALUES
(1, 1, '01/11/2018'),
(2, 1, '02/11/2018'),
(3, 1, '03/11/2018'),
(4, 1, '03/11/2018'),
(5, 1, '04/11/2018\r\n');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `organisation`
--
ALTER TABLE `organisation`
  ADD CONSTRAINT `FK_E6E132B47E7FC447` FOREIGN KEY (`une_region_id`) REFERENCES `region` (`id`);

--
-- Contraintes pour la table `region`
--
ALTER TABLE `region`
  ADD CONSTRAINT `FK_F62F176FDE7A91B` FOREIGN KEY (`un_etablissement_id`) REFERENCES `etablissement` (`id`);

--
-- Contraintes pour la table `visite`
--
ALTER TABLE `visite`
  ADD CONSTRAINT `FK_B09C8CBBEAEA3D84` FOREIGN KEY (`une_organisation_id`) REFERENCES `organisation` (`id`);
--
-- Base de données :  `mlr2`
--
CREATE DATABASE IF NOT EXISTS `mlr2` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `mlr2`;
--
-- Base de données :  `resto_starter`
--
CREATE DATABASE IF NOT EXISTS `resto_starter` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `resto_starter`;

-- --------------------------------------------------------

--
-- Structure de la table `avantage`
--

DROP TABLE IF EXISTS `avantage`;
CREATE TABLE IF NOT EXISTS `avantage` (
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `ID_AVANTAGES` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_RESTAURANT`,`ID_AVANTAGES`),
  KEY `I_FK_AVANTAGE_RESTAURANT` (`ID_RESTAURANT`),
  KEY `I_FK_AVANTAGE_AVANTAGES` (`ID_AVANTAGES`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `avantages`
--

DROP TABLE IF EXISTS `avantages`;
CREATE TABLE IF NOT EXISTS `avantages` (
  `ID_AVANTAGES` smallint(1) NOT NULL AUTO_INCREMENT,
  `AVANTAGE` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_AVANTAGES`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commercial`
--

DROP TABLE IF EXISTS `commercial`;
CREATE TABLE IF NOT EXISTS `commercial` (
  `ID_COMMERCIALE` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(128) DEFAULT NULL,
  `PRENOM` varchar(128) DEFAULT NULL,
  `TEL` bigint(10) DEFAULT NULL,
  `MAIL` varchar(128) DEFAULT NULL,
  `DATE_EMBAUCHE` date DEFAULT NULL,
  PRIMARY KEY (`ID_COMMERCIALE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `commercial_ville`
--

DROP TABLE IF EXISTS `commercial_ville`;
CREATE TABLE IF NOT EXISTS `commercial_ville` (
  `ID_VILLE` smallint(1) NOT NULL,
  `ID_COMMERCIALE` smallint(1) NOT NULL,
  `BASE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_VILLE`,`ID_COMMERCIALE`),
  KEY `I_FK_COMMERCIAL_VILLE_VILLE` (`ID_VILLE`),
  KEY `I_FK_COMMERCIAL_VILLE_COMMERCIAL` (`ID_COMMERCIALE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contact`
--

DROP TABLE IF EXISTS `contact`;
CREATE TABLE IF NOT EXISTS `contact` (
  `ID_CONTACT` smallint(1) NOT NULL AUTO_INCREMENT,
  `NUMERO_PORT` bigint(10) DEFAULT NULL,
  `EMAIL` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_CONTACT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contacter`
--

DROP TABLE IF EXISTS `contacter`;
CREATE TABLE IF NOT EXISTS `contacter` (
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `ID_CONTACT` smallint(1) NOT NULL,
  PRIMARY KEY (`ID_RESTAURANT`,`ID_CONTACT`),
  KEY `I_FK_CONTACTER_RESTAURANT` (`ID_RESTAURANT`),
  KEY `I_FK_CONTACTER_CONTACT` (`ID_CONTACT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contracter`
--

DROP TABLE IF EXISTS `contracter`;
CREATE TABLE IF NOT EXISTS `contracter` (
  `ID_CONTRAT` smallint(1) NOT NULL,
  `ID_UTILISATEURS` smallint(1) NOT NULL,
  `DATE_DEBUT` date DEFAULT NULL,
  `DATE_FIN` date DEFAULT NULL,
  `PAYE` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_CONTRAT`,`ID_UTILISATEURS`),
  KEY `I_FK_CONTRACTER_CONTRAT` (`ID_CONTRAT`),
  KEY `I_FK_CONTRACTER_UTILISATEURS` (`ID_UTILISATEURS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `contrat`
--

DROP TABLE IF EXISTS `contrat`;
CREATE TABLE IF NOT EXISTS `contrat` (
  `ID_CONTRAT` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM_CONTRAT` varchar(128) DEFAULT NULL,
  `TARIF` bigint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_CONTRAT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `critère`
--

DROP TABLE IF EXISTS `critère`;
CREATE TABLE IF NOT EXISTS `critère` (
  `ID_CRITERE` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `CRITÈRE` varchar(128) DEFAULT NULL,
  `LOGO` varchar(128) DEFAULT NULL,
  `DESCRIPTION` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_CRITERE`),
  KEY `I_FK_CRITÈRE_RESTAURANT` (`ID_RESTAURANT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `entreprise`
--

DROP TABLE IF EXISTS `entreprise`;
CREATE TABLE IF NOT EXISTS `entreprise` (
  `ID_ENTREPRISE` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_VILLE` smallint(1) NOT NULL,
  `NOM_ENTREPRISE` varchar(128) DEFAULT NULL,
  `RUE_ENTREPRISE` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID_ENTREPRISE`),
  KEY `I_FK_ENTREPRISE_VILLE` (`ID_VILLE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `frais`
--

DROP TABLE IF EXISTS `frais`;
CREATE TABLE IF NOT EXISTS `frais` (
  `ID_FRAIS` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_COMMERCIALE` smallint(1) NOT NULL,
  `ID_VILLE` smallint(1) NOT NULL,
  `MOTIF` char(32) DEFAULT NULL,
  `DATEDEBUTFRAIS` date DEFAULT NULL,
  `DATEFINFRAIS` date DEFAULT NULL,
  `REMBOURSER` tinyint(1) DEFAULT NULL,
  `ACCEPTER` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_FRAIS`),
  KEY `I_FK_FRAIS_COMMERCIAL` (`ID_COMMERCIALE`),
  KEY `I_FK_FRAIS_VILLE` (`ID_VILLE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `grade`
--

DROP TABLE IF EXISTS `grade`;
CREATE TABLE IF NOT EXISTS `grade` (
  `ID_GRADE` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM_GRADE` varchar(128) DEFAULT NULL,
  `POINTS` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID_GRADE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `jour`
--

DROP TABLE IF EXISTS `jour`;
CREATE TABLE IF NOT EXISTS `jour` (
  `ID_JOUR` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM_JOUR` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`ID_JOUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `nuiteefrais`
--

DROP TABLE IF EXISTS `nuiteefrais`;
CREATE TABLE IF NOT EXISTS `nuiteefrais` (
  `ID_FRAIS` smallint(1) NOT NULL,
  `ID_TYPEFRAIS` smallint(1) NOT NULL,
  `KMS` bigint(4) DEFAULT NULL,
  PRIMARY KEY (`ID_FRAIS`,`ID_TYPEFRAIS`),
  KEY `I_FK_NUITEEFRAIS_FRAIS` (`ID_FRAIS`),
  KEY `I_FK_NUITEEFRAIS_TYPEFRAIS` (`ID_TYPEFRAIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `occuper`
--

DROP TABLE IF EXISTS `occuper`;
CREATE TABLE IF NOT EXISTS `occuper` (
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `ID_UTILISATEURS` smallint(1) NOT NULL,
  `DATE_OCCUPER` date DEFAULT NULL,
  `HEURE_OCCUPER` time DEFAULT NULL,
  PRIMARY KEY (`ID_RESTAURANT`,`ID_UTILISATEURS`),
  KEY `I_FK_OCCUPER_RESTAURANT` (`ID_RESTAURANT`),
  KEY `I_FK_OCCUPER_UTILISATEURS` (`ID_UTILISATEURS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ouvrir`
--

DROP TABLE IF EXISTS `ouvrir`;
CREATE TABLE IF NOT EXISTS `ouvrir` (
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `ID_JOUR` smallint(1) NOT NULL,
  `HEURE_DEBUT_MATIN` time DEFAULT NULL,
  `HEURE_FIN_MATIN` time DEFAULT NULL,
  `HEURE_DEBUT_APREM` time DEFAULT NULL,
  `HEURE_FIN_APREM` time DEFAULT NULL,
  PRIMARY KEY (`ID_RESTAURANT`,`ID_JOUR`),
  KEY `I_FK_OUVRIR_RESTAURANT` (`ID_RESTAURANT`),
  KEY `I_FK_OUVRIR_JOUR` (`ID_JOUR`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `photo`
--

DROP TABLE IF EXISTS `photo`;
CREATE TABLE IF NOT EXISTS `photo` (
  `ID_PHOTO` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_RESTAURANT` smallint(1) NOT NULL,
  `LIEN` varchar(128) DEFAULT NULL,
  `PRINCIPAL` tinyint(1) DEFAULT NULL,
  PRIMARY KEY (`ID_PHOTO`),
  KEY `I_FK_PHOTO_RESTAURANT` (`ID_RESTAURANT`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `restaurant`
--

DROP TABLE IF EXISTS `restaurant`;
CREATE TABLE IF NOT EXISTS `restaurant` (
  `ID_RESTAURANT` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_VILLE` smallint(1) NOT NULL,
  `NOM_RESTAURANT` varchar(128) DEFAULT NULL,
  `RUE` varchar(128) DEFAULT NULL,
  `NUMERO_RUE` varchar(128) DEFAULT NULL,
  `LATITUDE` varchar(128) DEFAULT NULL,
  `LONGITUDE` varchar(128) DEFAULT NULL,
  `DESCRIPTION` char(32) DEFAULT NULL,
  PRIMARY KEY (`ID_RESTAURANT`),
  KEY `I_FK_RESTAURANT_VILLE` (`ID_VILLE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `typefrais`
--

DROP TABLE IF EXISTS `typefrais`;
CREATE TABLE IF NOT EXISTS `typefrais` (
  `ID_TYPEFRAIS` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM` varchar(128) DEFAULT NULL,
  `TARIF` int(2) DEFAULT NULL,
  PRIMARY KEY (`ID_TYPEFRAIS`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `utilisateurs`
--

DROP TABLE IF EXISTS `utilisateurs`;
CREATE TABLE IF NOT EXISTS `utilisateurs` (
  `ID_UTILISATEURS` smallint(1) NOT NULL AUTO_INCREMENT,
  `ID_GRADE` smallint(1) NOT NULL,
  `NOM` varchar(128) DEFAULT NULL,
  `PRENOM` varchar(128) DEFAULT NULL,
  `TEL_PORT` bigint(10) DEFAULT NULL,
  `EMAIL` varchar(128) DEFAULT NULL,
  `TWITTER` varchar(128) DEFAULT NULL,
  `FACEBOOK` varchar(128) DEFAULT NULL,
  `LINKEDIN` varchar(128) DEFAULT NULL,
  `SCORE_POINT` bigint(10) DEFAULT NULL,
  PRIMARY KEY (`ID_UTILISATEURS`),
  KEY `I_FK_UTILISATEURS_GRADE` (`ID_GRADE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Structure de la table `ville`
--

DROP TABLE IF EXISTS `ville`;
CREATE TABLE IF NOT EXISTS `ville` (
  `ID_VILLE` smallint(1) NOT NULL AUTO_INCREMENT,
  `NOM_VILLE` varchar(128) DEFAULT NULL,
  `CODE_POSTAL` bigint(5) DEFAULT NULL,
  PRIMARY KEY (`ID_VILLE`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
--
-- Base de données :  `triggertest`
--
CREATE DATABASE IF NOT EXISTS `triggertest` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `triggertest`;

-- --------------------------------------------------------

--
-- Structure de la table `comptetotal`
--

DROP TABLE IF EXISTS `comptetotal`;
CREATE TABLE IF NOT EXISTS `comptetotal` (
  `id` int(11) NOT NULL,
  `totalNombre` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `comptetotal`
--

INSERT INTO `comptetotal` (`id`, `totalNombre`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `cotisation`
--

DROP TABLE IF EXISTS `cotisation`;
CREATE TABLE IF NOT EXISTS `cotisation` (
  `id` int(11) NOT NULL,
  `totalMontant` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `cotisation`
--

INSERT INTO `cotisation` (`id`, `totalMontant`) VALUES
(1, 0);

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `id` int(11) NOT NULL,
  `nom` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
