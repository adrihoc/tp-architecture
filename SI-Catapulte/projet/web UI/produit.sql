-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Client :  127.0.0.1
-- Généré le :  Sam 25 Janvier 2020 à 20:59
-- Version du serveur :  5.6.17
-- Version de PHP :  5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de données :  `produits`
--

-- --------------------------------------------------------

--
-- Structure de la table `produit`
--

CREATE TABLE IF NOT EXISTS `produit` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `classe` text NOT NULL,
  `price` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Contenu de la table `produit`
--

INSERT INTO `produit` (`ID`, `name`, `type`, `classe`, `price`) VALUES
(1, 'War Pig', 'hat', 'soldier', '0.49'),
(2, 'Galvanized Gibus', 'hat', 'all', '1.35'),
(3, 'Bobby Bonnet', 'hat', 'soldier', '1.00'),
(4, 'Bomber Knight', 'hat', 'demoman', '2.00'),
(5, 'Soldier''s Stash', 'hat', 'soldier', '1.05'),
(6, 'Merrywheather', 'hat', 'pyro', '1.60'),
(7, 'Cotton Head', 'hat', 'all', '0.64'),
(8, 'Jeepcap', 'hat', 'soldier', '1.80'),
(11, 'Energy Backwoods Boomstick Shotgun', 'weapon', 'soldier, pyro, heavy, engineer', '5.30'),
(12, 'Big Kill', 'weapon', 'scout, engineer', '27.63'),
(13, 'Dragon Slayer Grenade Launcher', 'weapon', 'demoman', '30.00'),
(14, 'Professional Strange Pink Elephant Stickybomb Launcher', 'weapon', 'demoman', '50.99'),
(15, 'Specialized Festivized Australium Medi Gun', 'weapon', 'medic', '72.53'),
(16, 'Defragmenting Hard Hat 17', 'hat', 'engineer', '42.18'),
(17, 'Corona Australis', 'hat', 'sniper', '18.00'),
(18, 'Strange AWPer Hand', 'weapon', 'sniper', '13.00'),
(19, 'The Eldritch Opening Murderer''s Motif', 'hat', 'spy', '6.00'),
(20, 'Professional Strange Cool Bloom Buffed Scattergun', 'weapon', 'scout', '22.89');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
