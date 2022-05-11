-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le : mer. 11 mai 2022 à 15:00
-- Version du serveur :  5.7.31
-- Version de PHP : 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `autocompletion`
--

-- --------------------------------------------------------

--
-- Structure de la table `om`
--

DROP TABLE IF EXISTS `om`;
CREATE TABLE IF NOT EXISTS `om` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(255) NOT NULL,
  `images` varchar(255) NOT NULL,
  `description` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=25 DEFAULT CHARSET=utf8;

--
-- Déchargement des données de la table `om`
--

INSERT INTO `om` (`id`, `nom`, `images`, `description`) VALUES
(1, 'payet', 'images/payet.jpg', 'Dimitri Payet, né le 29 mars 1987 à Saint-Pierre sur l\'île de La Réunion, est un footballeur international français qui évolue au poste de meneur de jeu à l\'Olympique de Marseille.'),
(2, 'guendouzi', 'images/guendouzi.jpg', 'Mattéo Guendouzi, né le 14 avril 1999 à Poissy, en France, est un footballeur international français qui évolue au poste de milieu de terrain à l\'Olympique de Marseille, en prêt de l\'Arsenal FC. Formé au Paris Saint-Germain, Guendouzi rejoint le FC Lorient pour y terminer son apprentissage.'),
(3, 'milik', 'images/milik.jpg', 'Arkadiusz Milik, né le 28 février 1994 à Tychy, est un footballeur international polonais qui évolue au poste d\'attaquant à l’Olympique de Marseille, en prêt du SSC Naples. '),
(4, 'under', 'images/under.jpg', 'Cengiz Ünder, né le 14 juillet 1997 à Sındırgı est un footballeur international turc, qui évolue au poste d\'attaquant à l\'Olympique de Marseille, en prêt de l\'AS Rome. '),
(5, 'konrad', 'images/konrad.jpg', 'Konrad de la Fuente, né le 16 juillet 2001 à Miami en Floride, est un joueur international américain de soccer qui joue au poste d\'ailier à l\'Olympique de Marseille. Il possède également la nationalité espagnole. '),
(6, 'lirola', 'images/lirola.jpg', 'Pol Lirola, de son nom de naissance Pol Mikel Lirola Kosok, né le 13 août 1997 à Mollet del Vallès, est un footballeur espagnol qui évolue au poste de défenseur latéral à l\'Olympique de Marseille.'),
(7, 'kamara', 'images/kamara.jpg', 'Boubacar Kamara, né le 23 novembre 1999 à Marseille, est un footballeur français qui évolue au poste de milieu défensif et défenseur central à l\'Olympique de Marseille. Formé à l\'Olympique de Marseille où il est capitaine des équipes de jeune, Kamara y débute en professionnel fin 2016.'),
(8, 'saliba', 'images/saliba.jpg', 'William Saliba, né le 24 mars 2001 à Bondy en France, est un footballeur international français qui évolue au poste de défenseur central à l\'Olympique de Marseille, en prêt d\'Arsenal FC.'),
(9, 'kolasinac', 'images/kolasinac.jpg', 'Sead Kolašinac, né le 20 juin 1993 à Karlsruhe, est un footballeur international bosnien qui évolue au poste d’arrière gauche à l\'Olympique de Marseille.'),
(10, 'mandanda', 'images/mandanda.jpg', 'Steve Mandanda, de son nom complet Steve Mandanda Mpidi, né le 28 mars 1985 à Kinshasa, est un footballeur international français qui évolue au poste de gardien de but à l\'Olympique de Marseille.'),
(11, 'lopez', 'images/lopez.jpg', 'Pau López Sabata, né le 13 décembre 1994 à Gérone, est un footballeur international espagnol. Il évolue au poste de gardien de but au sein de l\'Olympique de Marseille.'),
(12, 'dieng', 'images/dieng.jpg', 'Cheikh Ahmadou Bamba Mbacke Dieng, dit Bamba Dieng, né le 23 mars 2000 à Pikine, est un footballeur international sénégalais qui évolue au poste d\'attaquant à l\'Olympique de Marseille.'),
(13, 'bakambu', 'images/bakambu.jpg', 'Cédric Bakambu, née le 11 avril 1991 à Vitry-sur-Seine, est un footballeur international congolais qui évolue au poste d\'attaquant à l’Olympique de Marseille. '),
(14, 'peres', 'images/peres.jpg', 'Luan Peres, né le 19 juillet 1994 à São Caetano do Sul au Brésil, est un footballeur brésilien. Il évolue au poste de défenseur central à l\'Olympique de Marseille.'),
(15, 'caleta-car', 'images/caleta-car.jpg', 'Duje Ćaleta-Car, prononcé : [duje t͡ɕaleta t͡sar], né le 17 septembre 1996 à Šibenik en Croatie, est un footballeur international croate. Il évolue au poste de défenseur central à l\'Olympique de Marseille. Avec sa sélection, il est finaliste de la Coupe du monde 2018 et participe à l\'Euro 2020.'),
(16, 'balerdi', 'images/balerdi.jpg', 'Leonardo Balerdi, né le 26 janvier 1999 à Villa Mercedes en Argentine, est un footballeur international argentin qui évolue au poste de défenseur à l\'Olympique de Marseille. '),
(17, 'henrique', 'images/henrique.jpg', 'Luis Henrique Tomaz de Lima, plus communément appelé Luis Henrique, né le 14 décembre 2001 à João Pessoa, est un footballeur brésilien qui évolue au poste d\'ailier à l\'Olympique de Marseille. '),
(18, 'harit', 'images/harit.jpg', 'Amine Harit, né le 18 juin 1997 à Pontoise, est un footballeur international marocain jouant au poste de milieu offensif à l’Olympique de Marseille en prêt du FC Schalke 04.'),
(19, 'seghir', 'images/seghir.jpg', 'Traduit de l\'anglais-Salim Ben Seghir est un footballeur professionnel français qui joue comme ailier pour le club de Ligue 1 de Marseille.'),
(20, 'nadir', 'images/nadir.jpg', 'Jeune talent de 17 ans, Bilal Nadir sera Olympien à partir du 1er juillet. Jusqu\'ici, Bilal Nadir évoluait avec l\'OGC Nice où il a fait toutes ses classes. S\'il n\'a pas encore disputé de rencontre officielle avec les pros, il possède des qualités techniques rares.'),
(21, 'alvaro', 'images/alvaro.jpg', 'Álvaro González Soberón, dit Álvaro, né le 8 janvier 1990 à Potes en Espagne, est un footballeur espagnol qui évolue au poste de défenseur central à l\'Olympique de Marseille.'),
(22, 'sampaoli', 'images/sampaoli.jpg', 'Jorge Luis Sampaoli Moya, né le 13 mars 1960 à Casilda, est un entraîneur de football argentin. Il a été le sélectionneur de l\'équipe d\'Argentine entre 2017 et 2018 et a gagné la Copa América avec le Chili en 2015. Il est l\'actuel entraîneur de l\'Olympique de Marseille.'),
(23, 'gerson', 'images/gerson.jpg', 'Gerson Santos da Silva, plus connu comme Gerson, né le 20 mai 1997 à Belford Roxo, est un footballeur international brésilien qui joue au poste de milieu de terrain à l’Olympique de Marseille.'),
(24, 'longoria', 'images/longoria.jpg', 'Pablo Fernández Longoria est un dirigeant de football espagnol, né le 9 juin 1986 à Oviedo en Espagne. Le 26 février 2021, il est nommé président du directoire de l\'Olympique de Marseille.');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
