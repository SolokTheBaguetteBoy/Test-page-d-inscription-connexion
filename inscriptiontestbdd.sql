-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  lun. 23 avr. 2018 à 16:26
-- Version du serveur :  5.7.19
-- Version de PHP :  5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `inscriptiontestbdd`
--

-- --------------------------------------------------------

--
-- Structure de la table `utilisateur`
--

DROP TABLE IF EXISTS `utilisateur`;
CREATE TABLE IF NOT EXISTS `utilisateur` (
  `idUser` int(11) NOT NULL AUTO_INCREMENT,
  `prenom` varchar(100) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `contact` varchar(100) NOT NULL,
  `motDePasse` varchar(100) NOT NULL,
  `dateDeNaissance` date NOT NULL,
  `Sexe` varchar(100) NOT NULL,
  PRIMARY KEY (`idUser`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `utilisateur`
--

INSERT INTO `utilisateur` (`idUser`, `prenom`, `nom`, `contact`, `motDePasse`, `dateDeNaissance`, `Sexe`) VALUES
(1, 'Jean', 'Jaco', 'jeanjacopro@hotmail.com', 'test', '2000-04-18', 'H'),
(3, 'Test', 'Test', '0000000000', 'aeiou', '1994-06-22', 'H'),
(4, '', '', '', '', '2017-06-01', ''),
(5, '', '', '', '', '2017-06-01', ''),
(6, ' ', '', '', '', '2017-06-01', ''),
(7, 'Allan', 'Le Guern', '0101010101', 'abdcdefg', '1995-06-01', 'H'),
(8, 'Aaa', 'Bbb', '01', 'aaaaaa', '1995-06-01', 'F'),
(9, 'Test', 'Test', 'test', 'test', '1995-06-01', 'F'),
(10, 'Test', 'Test', 'test', 'ee', '1995-06-01', 'F');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
