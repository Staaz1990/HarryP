-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Client :  localhost
-- Généré le :  Mer 06 Février 2019 à 12:33
-- Version du serveur :  5.7.25-0ubuntu0.18.04.2
-- Version de PHP :  7.2.10-0ubuntu0.18.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `HP_FAN`
--

-- --------------------------------------------------------

--
-- Structure de la table `Films`
--

CREATE TABLE `Films` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Films`
--

INSERT INTO `Films` (`ID`, `Nom`) VALUES
(1, 'Harry Potter a l\'ecole des sorciers'),
(2, 'Harry Potter et la chambre des secrets'),
(3, 'Harry Potter et le prisonnier d\'Azkaban'),
(4, 'Harry Potter et la coupe de feu'),
(5, 'Harry Potter et l\'Ordre du phenix'),
(6, 'Harry Potter et le prince de sang_mele'),
(7, 'Harry Potter et les reliques de la mort part1'),
(8, 'Harry Potter et les reliques de la mort part2');

-- --------------------------------------------------------

--
-- Structure de la table `Maisons`
--

CREATE TABLE `Maisons` (
  `ID` int(11) NOT NULL,
  `Nom` varchar(50) NOT NULL,
  `Fondateur` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Maisons`
--

INSERT INTO `Maisons` (`ID`, `Nom`, `Fondateur`) VALUES
(1, 'Gryffondor', 'Godric_Griffondor'),
(2, 'Serdaigle', 'Rowena_Serdaigle'),
(3, 'Serpentard', 'Salazar_Serpentard'),
(4, 'Poufsouffle', 'Helga_Poufsouffle');

-- --------------------------------------------------------

--
-- Structure de la table `Personnages`
--

CREATE TABLE `Personnages` (
  `ID` int(11) NOT NULL,
  `nom` varchar(100) NOT NULL,
  `prenom` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `premier_film_dAparition` varchar(255) NOT NULL,
  `maison` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Personnages`
--

INSERT INTO `Personnages` (`ID`, `nom`, `prenom`, `age`, `premier_film_dAparition`, `maison`) VALUES
(1, 'Lovegood', 'Luna', 38, 'Harry Potter et l\'Ordre du phenix', 'Serdaigle'),
(2, 'Potter', 'Harry', 39, 'Harry Potter a l\'ecole des sorciers', 'Griffondor'),
(3, 'Weasley', 'Ron', 39, 'Harry Potter a l\'ecole des sorciers', 'Griffondor');

-- --------------------------------------------------------

--
-- Structure de la table `Sorts`
--

CREATE TABLE `Sorts` (
  `Nom` varchar(60) NOT NULL,
  `Description` varchar(500) NOT NULL,
  `Interdit` varchar(3) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Contenu de la table `Sorts`
--

INSERT INTO `Sorts` (`Nom`, `Description`, `Interdit`) VALUES
('Avada Kedavra', 'Règle les conflits de manière radicale', 'oui'),
('Alohomora', 'Permet de rentrer chez soi meme lorsque l\'on a oublier nos clefs chez un ami', 'non');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `Films`
--
ALTER TABLE `Films`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Maisons`
--
ALTER TABLE `Maisons`
  ADD PRIMARY KEY (`ID`);

--
-- Index pour la table `Personnages`
--
ALTER TABLE `Personnages`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `Films`
--
ALTER TABLE `Films`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT pour la table `Maisons`
--
ALTER TABLE `Maisons`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT pour la table `Personnages`
--
ALTER TABLE `Personnages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
