-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 24 mai 2019 à 23:24
-- Version du serveur :  10.1.38-MariaDB
-- Version de PHP :  7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `gestion_ecole`
--

-- --------------------------------------------------------

--
-- Structure de la table `annee_scolaire`
--

CREATE TABLE `annee_scolaire` (
  `id_annee_scolaire` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `annee_scolaire`
--

INSERT INTO `annee_scolaire` (`id_annee_scolaire`) VALUES
(2017),
(2018),
(2019);

-- --------------------------------------------------------

--
-- Structure de la table `bulletin`
--

CREATE TABLE `bulletin` (
  `id_bulletin` int(11) NOT NULL,
  `id_trimestre` int(11) NOT NULL,
  `id_inscription` int(11) NOT NULL,
  `appreciation_bulletin` varchar(255) NOT NULL,
  `moyenne_bulletin` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bulletin`
--

INSERT INTO `bulletin` (`id_bulletin`, `id_trimestre`, `id_inscription`, `appreciation_bulletin`, `moyenne_bulletin`) VALUES
(1, 1, 1, 'super', 10),
(2, 1, 1, 'super', 10),
(3, 1, 1, 'Top', 12);

-- --------------------------------------------------------

--
-- Structure de la table `classe`
--

CREATE TABLE `classe` (
  `id_classe` int(255) NOT NULL,
  `nom_classe` varchar(255) NOT NULL,
  `id_ecole` int(255) NOT NULL,
  `id_niveau` int(255) NOT NULL,
  `id_annee_scolaire` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `classe`
--

INSERT INTO `classe` (`id_classe`, `nom_classe`, `id_ecole`, `id_niveau`, `id_annee_scolaire`) VALUES
(1, 'TD01', 1, 1, 2018),
(2, 'TD02\r\n', 1, 1, 2018),
(3, 'TD01', 1, 2, 2018),
(4, 'TD02', 1, 2, 2018),
(5, 'TD01', 1, 3, 2018),
(6, 'TD02', 1, 3, 2018),
(7, 'TD07', 1, 2, 2017);

-- --------------------------------------------------------

--
-- Structure de la table `detail_bulletin`
--

CREATE TABLE `detail_bulletin` (
  `id_detail_bulletin` int(11) NOT NULL,
  `id_bulletin` int(11) NOT NULL,
  `id_enseignement` int(11) NOT NULL,
  `appreciation_detail` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `detail_bulletin`
--

INSERT INTO `detail_bulletin` (`id_detail_bulletin`, `id_bulletin`, `id_enseignement`, `appreciation_detail`) VALUES
(1, 1, 1, 'vraiment top'),
(2, 2, 1, 'Bravo');

-- --------------------------------------------------------

--
-- Structure de la table `discipline`
--

CREATE TABLE `discipline` (
  `id_discipline` int(11) NOT NULL,
  `nom_discipline` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `discipline`
--

INSERT INTO `discipline` (`id_discipline`, `nom_discipline`) VALUES
(1, 'Web dynamique'),
(2, 'POO Java'),
(3, 'Analyse de Fourier'),
(4, 'Proba');

-- --------------------------------------------------------

--
-- Structure de la table `ecole`
--

CREATE TABLE `ecole` (
  `id_ecole` int(255) NOT NULL,
  `nom_ecole` varchar(255) NOT NULL,
  `adresse_ecole` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `ecole`
--

INSERT INTO `ecole` (`id_ecole`, `nom_ecole`, `adresse_ecole`) VALUES
(1, 'ECE PARIS', '37 Quai de Grenelle, 75015 Paris'),
(2, 'ESILV', 'La defense');

-- --------------------------------------------------------

--
-- Structure de la table `enseignement`
--

CREATE TABLE `enseignement` (
  `id_enseignement` int(11) NOT NULL,
  `id_classe` int(11) NOT NULL,
  `id_discipline` int(11) NOT NULL,
  `id_personne` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `enseignement`
--

INSERT INTO `enseignement` (`id_enseignement`, `id_classe`, `id_discipline`, `id_personne`) VALUES
(1, 1, 1, 5),
(2, 1, 2, 2),
(3, 1, 3, 6),
(4, 1, 2, 3);

-- --------------------------------------------------------

--
-- Structure de la table `evaluation`
--

CREATE TABLE `evaluation` (
  `id_evaluation` int(11) NOT NULL,
  `id_detail_bulletin` int(11) NOT NULL,
  `note_evaluation` double NOT NULL,
  `appreciation_evaluation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `evaluation`
--

INSERT INTO `evaluation` (`id_evaluation`, `id_detail_bulletin`, `note_evaluation`, `appreciation_evaluation`) VALUES
(1, 1, 12, 'moyen'),
(2, 1, 14, 'Felicitations');

-- --------------------------------------------------------

--
-- Structure de la table `inscription`
--

CREATE TABLE `inscription` (
  `id_inscription` int(255) NOT NULL,
  `id_classe` int(255) NOT NULL,
  `id_personne` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `inscription`
--

INSERT INTO `inscription` (`id_inscription`, `id_classe`, `id_personne`) VALUES
(1, 1, 1),
(2, 1, 3),
(3, 1, 4),
(4, 1, 2);

-- --------------------------------------------------------

--
-- Structure de la table `niveau`
--

CREATE TABLE `niveau` (
  `id_niveau` int(255) NOT NULL,
  `nom_niveau` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `niveau`
--

INSERT INTO `niveau` (`id_niveau`, `nom_niveau`) VALUES
(1, 'ING3'),
(2, 'ING2'),
(3, 'ING1'),
(4, 'ING4'),
(5, 'ING5');

-- --------------------------------------------------------

--
-- Structure de la table `personne`
--

CREATE TABLE `personne` (
  `id_personne` int(255) NOT NULL,
  `nom_personne` varchar(255) NOT NULL,
  `prenom_personne` varchar(255) NOT NULL,
  `type_personne` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `personne`
--

INSERT INTO `personne` (`id_personne`, `nom_personne`, `prenom_personne`, `type_personne`) VALUES
(1, 'Dupont', 'Pierre', 'Elève'),
(2, 'Segado', 'Jean-Pierre', 'Enseignant'),
(3, 'Cheong', 'Loïc', 'Elève'),
(4, 'Noireaux', 'Colline', 'Elève'),
(5, 'Hina', 'Manolo', 'Enseignant'),
(6, 'Coudray', 'Fabienne', 'Enseignant'),
(7, 'Coco', 'Noi', 'eleve');

-- --------------------------------------------------------

--
-- Structure de la table `trimestre`
--

CREATE TABLE `trimestre` (
  `id_trimestre` int(255) NOT NULL,
  `numero_trimestre` int(255) NOT NULL,
  `debut_trimestre` date NOT NULL,
  `fin_trimestre` date NOT NULL,
  `id_annee_scolaire` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `trimestre`
--

INSERT INTO `trimestre` (`id_trimestre`, `numero_trimestre`, `debut_trimestre`, `fin_trimestre`, `id_annee_scolaire`) VALUES
(1, 1, '2018-09-01', '2018-11-01', 2018);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `annee_scolaire`
--
ALTER TABLE `annee_scolaire`
  ADD PRIMARY KEY (`id_annee_scolaire`);

--
-- Index pour la table `bulletin`
--
ALTER TABLE `bulletin`
  ADD PRIMARY KEY (`id_bulletin`),
  ADD KEY `id_trimestre` (`id_trimestre`),
  ADD KEY `id_inscription` (`id_inscription`);

--
-- Index pour la table `classe`
--
ALTER TABLE `classe`
  ADD PRIMARY KEY (`id_classe`),
  ADD KEY `id_ecole` (`id_ecole`),
  ADD KEY `id_niveau` (`id_niveau`),
  ADD KEY `id_annee_scolaire` (`id_annee_scolaire`);

--
-- Index pour la table `detail_bulletin`
--
ALTER TABLE `detail_bulletin`
  ADD PRIMARY KEY (`id_detail_bulletin`),
  ADD KEY `id_bulletin` (`id_bulletin`),
  ADD KEY `id_enseignement` (`id_enseignement`);

--
-- Index pour la table `discipline`
--
ALTER TABLE `discipline`
  ADD PRIMARY KEY (`id_discipline`);

--
-- Index pour la table `ecole`
--
ALTER TABLE `ecole`
  ADD PRIMARY KEY (`id_ecole`);

--
-- Index pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD PRIMARY KEY (`id_enseignement`),
  ADD KEY `id_classe` (`id_classe`),
  ADD KEY `id_discipline` (`id_discipline`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD PRIMARY KEY (`id_evaluation`),
  ADD KEY `id_detail_bulletin` (`id_detail_bulletin`);

--
-- Index pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD PRIMARY KEY (`id_inscription`),
  ADD KEY `id_classe` (`id_classe`),
  ADD KEY `id_personne` (`id_personne`);

--
-- Index pour la table `niveau`
--
ALTER TABLE `niveau`
  ADD PRIMARY KEY (`id_niveau`);

--
-- Index pour la table `personne`
--
ALTER TABLE `personne`
  ADD PRIMARY KEY (`id_personne`);

--
-- Index pour la table `trimestre`
--
ALTER TABLE `trimestre`
  ADD PRIMARY KEY (`id_trimestre`),
  ADD KEY `id_annee_scolaire` (`id_annee_scolaire`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `bulletin`
--
ALTER TABLE `bulletin`
  MODIFY `id_bulletin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT pour la table `classe`
--
ALTER TABLE `classe`
  MODIFY `id_classe` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `detail_bulletin`
--
ALTER TABLE `detail_bulletin`
  MODIFY `id_detail_bulletin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `discipline`
--
ALTER TABLE `discipline`
  MODIFY `id_discipline` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `ecole`
--
ALTER TABLE `ecole`
  MODIFY `id_ecole` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `enseignement`
--
ALTER TABLE `enseignement`
  MODIFY `id_enseignement` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `evaluation`
--
ALTER TABLE `evaluation`
  MODIFY `id_evaluation` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT pour la table `inscription`
--
ALTER TABLE `inscription`
  MODIFY `id_inscription` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT pour la table `niveau`
--
ALTER TABLE `niveau`
  MODIFY `id_niveau` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `personne`
--
ALTER TABLE `personne`
  MODIFY `id_personne` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `trimestre`
--
ALTER TABLE `trimestre`
  MODIFY `id_trimestre` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `bulletin`
--
ALTER TABLE `bulletin`
  ADD CONSTRAINT `bulletin_ibfk_1` FOREIGN KEY (`id_trimestre`) REFERENCES `trimestre` (`id_trimestre`),
  ADD CONSTRAINT `bulletin_ibfk_2` FOREIGN KEY (`id_inscription`) REFERENCES `inscription` (`id_inscription`);

--
-- Contraintes pour la table `classe`
--
ALTER TABLE `classe`
  ADD CONSTRAINT `classe_ibfk_1` FOREIGN KEY (`id_ecole`) REFERENCES `ecole` (`id_ecole`),
  ADD CONSTRAINT `classe_ibfk_2` FOREIGN KEY (`id_niveau`) REFERENCES `niveau` (`id_niveau`),
  ADD CONSTRAINT `classe_ibfk_3` FOREIGN KEY (`id_annee_scolaire`) REFERENCES `annee_scolaire` (`id_annee_scolaire`);

--
-- Contraintes pour la table `detail_bulletin`
--
ALTER TABLE `detail_bulletin`
  ADD CONSTRAINT `detail_bulletin_ibfk_1` FOREIGN KEY (`id_bulletin`) REFERENCES `bulletin` (`id_bulletin`),
  ADD CONSTRAINT `detail_bulletin_ibfk_2` FOREIGN KEY (`id_enseignement`) REFERENCES `enseignement` (`id_enseignement`);

--
-- Contraintes pour la table `enseignement`
--
ALTER TABLE `enseignement`
  ADD CONSTRAINT `enseignement_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`),
  ADD CONSTRAINT `enseignement_ibfk_2` FOREIGN KEY (`id_discipline`) REFERENCES `discipline` (`id_discipline`),
  ADD CONSTRAINT `enseignement_ibfk_3` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `evaluation`
--
ALTER TABLE `evaluation`
  ADD CONSTRAINT `evaluation_ibfk_1` FOREIGN KEY (`id_detail_bulletin`) REFERENCES `detail_bulletin` (`id_detail_bulletin`);

--
-- Contraintes pour la table `inscription`
--
ALTER TABLE `inscription`
  ADD CONSTRAINT `inscription_ibfk_1` FOREIGN KEY (`id_classe`) REFERENCES `classe` (`id_classe`),
  ADD CONSTRAINT `inscription_ibfk_2` FOREIGN KEY (`id_personne`) REFERENCES `personne` (`id_personne`);

--
-- Contraintes pour la table `trimestre`
--
ALTER TABLE `trimestre`
  ADD CONSTRAINT `trimestre_ibfk_1` FOREIGN KEY (`id_annee_scolaire`) REFERENCES `annee_scolaire` (`id_annee_scolaire`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
