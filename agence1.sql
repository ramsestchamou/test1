-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le :  ven. 18 oct. 2019 à 06:15
-- Version du serveur :  10.1.34-MariaDB
-- Version de PHP :  7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `agence1`
--

-- --------------------------------------------------------

--
-- Structure de la table `bus`
--

CREATE TABLE `bus` (
  `imatriculation` varchar(40) NOT NULL,
  `model` varchar(40) NOT NULL,
  `marque` varchar(30) NOT NULL,
  `cout` bigint(4) DEFAULT NULL,
  `nbPlace` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `model_moteur` varchar(30) NOT NULL,
  `vitesse` bigint(4) NOT NULL,
  `masse` bigint(4) NOT NULL,
  `garanti` date NOT NULL,
  `date_du_jour` date NOT NULL,
  `date_achat` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `bus`
--

INSERT INTO `bus` (`imatriculation`, `model`, `marque`, `cout`, `nbPlace`, `image`, `model_moteur`, `vitesse`, `masse`, `garanti`, `date_du_jour`, `date_achat`) VALUES
('lt-555', 'test', 'test', 65000000, 31, '', 'fgqsv', 1290, 2000, '2021-10-21', '2019-10-08', '2019-10-01'),
('LT-786', 'camray', 'TOYOTA', 189900, 50, 'images/bus/bus9.jpg', '', 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
('NW-56567', 'camray', 'ferari', 323232345, 70, 'images/bus/bus10.jpg', '', 0, 0, '0000-00-00', '0000-00-00', '0000-00-00'),
('OU-78756', 'sdfdf', 'sdfs', 321342, 50, 'images/bus/bus7.jpg', '', 0, 0, '0000-00-00', '0000-00-00', '0000-00-00');

-- --------------------------------------------------------

--
-- Structure de la table `destination`
--

CREATE TABLE `destination` (
  `intitule_d` varchar(30) NOT NULL,
  `id_dest` int(4) NOT NULL,
  `ville` varchar(30) NOT NULL,
  `origine` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `destination`
--

INSERT INTO `destination` (`intitule_d`, `id_dest`, `ville`, `origine`) VALUES
('bonaberie', 1, 'DOUALA', 1),
('bepanda', 2, 'douala', 1),
('brazaville', 3, 'DOUALA', 1),
('biemassi', 4, 'yaounde', 1),
('gar routiere', 5, 'dschang', 0),
('quartier municipal', 6, 'mbouda', 1),
('entree de la ville', 7, 'bafoussam', 1);

-- --------------------------------------------------------

--
-- Structure de la table `employer`
--

CREATE TABLE `employer` (
  `nom_emp` varchar(30) NOT NULL,
  `prenom_emp` varchar(30) NOT NULL,
  `date_naissance` date NOT NULL,
  `n0_CNI` varchar(30) NOT NULL,
  `ville_de_residence` varchar(30) NOT NULL,
  `contact` int(11) NOT NULL,
  `mail` varchar(50) NOT NULL,
  `login` varchar(40) NOT NULL,
  `password` varchar(20) NOT NULL,
  `id_poste` int(4) NOT NULL,
  `image` varchar(100) NOT NULL,
  `date_du_jour` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `employer`
--

INSERT INTO `employer` (`nom_emp`, `prenom_emp`, `date_naissance`, `n0_CNI`, `ville_de_residence`, `contact`, `mail`, `login`, `password`, `id_poste`, `image`, `date_du_jour`) VALUES
('adamu', 'shan', '2019-10-04', '187345089', 'dubai', 650543277, 'adamualiyu199@gmail.com', 'adam', 'adadjufa', 3, '', '2019-10-04'),
('djouokep', 'fortune', '2005-08-04', 'FGDGBFBV89', 'DOUALA', 654778839, 'fortune@gmail.com', 'carole', 'carole', 2, '', '0000-00-00'),
('tchamou', 'brice', '1997-08-07', '766666489023', 'loum', 656025551, 'francktchasseu@gmail.com', 'essay', 'frank', 1, '', '0000-00-00'),
('tchatseu', 'frank', '2019-10-01', 'bvqsqd', 'dschang', 696812610, 'louenkamfrank@gmail.com', 'frank', 'fr', 2, 'C:\\Users\\zonne de travaille\\Desktop\\WhatsApp\\Media\\WhatsApp Images\\IMG-20190803-WA0019.jpg', '2019-10-05'),
('nwxcxw', 'swssq', '2019-10-10', 'qss', 'sqsd', 666786767, 'N@gmail.com', 'GGG', 'ramses', 3, '', '2019-10-03'),
('josias', 'loubar', '2019-09-02', 'KLZ879098', 'mbouda', 665217261, 'bricenkwamo@gmail.com', 'loubar', 'loubar', 3, '', '0000-00-00'),
(' Simo', 'Merveilles', '2001-02-02', 'lmù', 'dschang', 697686898, 'simomerveilles@gmail.com', 'merveilles', 'moi', 1, '', '2019-10-16'),
('test1', 'test1', '2019-10-17', 'SQSDQ', 'dschang', 667676878, 'b@gmail.com', 'nn', '', 3, '', '2019-10-03'),
('loubar', 'brice', '2019-08-12', '123416DFQG', 'DSCHANG', 651771191, 'bricenkwamo@gmail.com', 'ramses', 'ramses', 1, 'C:\\Users\\zonne de travaille\\Documents\\test.jpg', '0000-00-00'),
('tchamou', 'ramses', '2017-11-14', 'sqss343432DQS', 'DSCHANG', 677214286, 'bricenkwamo@gmail.com', 'tchamou', 'tchamou', 4, '', '0000-00-00'),
('djouka', 'houston', '2019-10-11', 'fgqbs', 'dschang', 682181307, 'g@gmail.com', 'whitney', 'ramses', 5, 'C:\\Users\\zonne de travaille\\Documents\\NetBeansProjects\\agence1\\images\\check.png', '2019-10-11'),
('qsd', 'df', '2019-10-05', 'dsf', 'dschang', 677623332, 'bd@gmail.com', 'work', 'work', 2, '', '2019-10-05');

-- --------------------------------------------------------

--
-- Structure de la table `expediteur`
--

CREATE TABLE `expediteur` (
  `nom_exp` varchar(30) NOT NULL,
  `telephone_exp` int(11) NOT NULL,
  `identifiant` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `expediteur`
--

INSERT INTO `expediteur` (`nom_exp`, `telephone_exp`, `identifiant`) VALUES
('ramses', 651771191, 2),
('tchamou', 690340305, 3),
('test', 651151235, 5),
('tester', 678713412, 6),
('test', 675656578, 7),
('tester', 651887238, 8),
('test', 666666666, 9),
('tester', 675827612, 10),
('tel', 651238632, 11),
('tchamou', 651273263, 12),
('testons', 678298732, 13),
('tchamou', 675361312, 14),
('fammilds', 672387623, 15),
('foul', 675237862, 16),
('foul', 675237862, 17),
('colins', 654504567, 19),
('test', 655536363, 20),
('franck', 665481235, 21),
('TCHASSEU', 677890877, 22),
('FRANCKI', 690765789, 23),
('enseignant', 655334456, 24),
('gfsq', 655442332, 25),
('tamdjo', 655000000, 26),
('adammu', 655235633, 27),
('paul', 662367678, 28),
('ramses', 667687122, 29),
('wdxc', 656453453, 30),
('merveilles', 677732763, 31);

-- --------------------------------------------------------

--
-- Structure de la table `info_trans_colis`
--

CREATE TABLE `info_trans_colis` (
  `num_colis` int(4) NOT NULL,
  `date_exp` date NOT NULL,
  `caracteristique` text NOT NULL,
  `destination` varchar(40) NOT NULL,
  `depart` varchar(40) NOT NULL,
  `nombre_paquet` int(4) NOT NULL,
  `reference_bureau` varchar(30) NOT NULL,
  `id_exp` int(4) NOT NULL,
  `id_rec` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `info_trans_colis`
--

INSERT INTO `info_trans_colis` (`num_colis`, `date_exp`, `caracteristique`, `destination`, `depart`, `nombre_paquet`, `reference_bureau`, `id_exp`, `id_rec`) VALUES
(1, '2019-08-14', 'TRES FRAGILE', 'douala-->bonaberie', 'dschang', 3, 'ramses', 2, 1),
(2, '2019-08-21', 'COOOLLZEZE', 'douala-->bepanda', 'dschang-->gar routiere', 2, 'ramses', 2, 1),
(3, '2019-09-09', 'tres tres sensible', 'douala-->bonaberie', 'dschang', 3, 'ramses', 10, 10),
(4, '2019-09-09', 'HGHSQDFD', 'DOUALA-->brazaville', 'dschang-->gar routiere', 2, 'ramses', 16, 14),
(5, '2019-09-09', 'HGHSQDFD', 'DOUALA-->brazaville', 'dschang-->gar routiere', 2, 'ramses', 17, 15),
(7, '2019-09-13', '23 envellopes A3 non timbree', 'mbouda-->quartier municipal', 'dschang-->gar routiere', 23, 'ramses', 19, 17),
(8, '2019-09-15', 'CFGSQ', 'douala-->bepanda', 'dschang-->gar routiere', 1, 'ramses', 20, 18),
(9, '2019-09-16', 'SENSIBLE', 'DOUALA-->brazaville', 'dschang-->gar routiere', 2, 'essay', 21, 19),
(10, '2019-09-16', 'COOLLQSMMLQSSSDDQD', 'douala-->bepanda', 'dschang-->gar routiere', 1, 'essay', 22, 20),
(11, '2019-09-16', 'TRES COOL COMME PRODUIT', 'DOUALA-->brazaville', 'dschang-->gar routiere', 1, 'essay', 23, 21),
(12, '2019-09-19', 'UNE ENVELLOPPE', 'yaounde-->biemassi', 'dschang-->gar routiere', 1, 'ramses', 24, 22),
(13, '2019-09-23', 'EDZDAQ', 'DOUALA-->brazaville', 'dschang-->gar routiere', 1, 'ramses', 25, 23),
(14, '2019-09-25', 'une envellope', 'yaounde-->biemassi', 'dschang-->gar routiere', 1, 'ramses', 26, 24),
(15, '2019-09-26', 'SAC DE CLASSE', 'DOUALA-->bonaberie', 'dschang-->gar routiere', 1, 'essay', 27, 25),
(16, '2019-09-30', 'SAC BANDJOCK', 'DOUALA-->bonaberie', 'dschang-->gar routiere', 1, 'ramses', 28, 26),
(17, '2019-10-10', 'sacs', 'yaounde-->biemassi', 'dschang-->gar routiere', 3, 'ramses', 29, 27),
(18, '2019-10-11', 'FXDGF', 'DOUALA-->brazaville', 'dschang-->gar routiere', 2, 'ramses', 30, 28),
(19, '2019-10-16', 'ENVELOPPE', 'DOUALA-->bonaberie', 'dschang-->gar routiere', 2, 'ramses', 31, 29);

-- --------------------------------------------------------

--
-- Structure de la table `itineraire`
--

CREATE TABLE `itineraire` (
  `id_itineraire` int(4) NOT NULL,
  `imatriculation` varchar(40) NOT NULL,
  `chaufeur` varchar(40) NOT NULL,
  `ville_destination` varchar(30) NOT NULL,
  `frais_de_route` bigint(4) NOT NULL,
  `prix` bigint(4) NOT NULL,
  `heure_depart` time NOT NULL,
  `date_depart` date NOT NULL,
  `ville_depart` varchar(30) NOT NULL,
  `etat` int(2) NOT NULL,
  `reference_bureau` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `itineraire`
--

INSERT INTO `itineraire` (`id_itineraire`, `imatriculation`, `chaufeur`, `ville_destination`, `frais_de_route`, `prix`, `heure_depart`, `date_depart`, `ville_depart`, `etat`, `reference_bureau`) VALUES
(2, 'NW-56567', 'loubar', 'douala', 35000, 4000, '11:34:50', '2019-10-05', 'douala', 0, 'frank'),
(3, 'OU-78756', 'loubar', 'yaounde', 50000, 3500, '10:02:59', '2019-09-20', 'dschang', 0, 'carole'),
(15, 'lt-555', 'ggg', 'DOUALA', 15000, 5000, '15:06:24', '2019-10-09', 'dschang', 0, 'carole'),
(16, 'lt-555', 'loubar', 'bafoussam', 50000, 5000, '16:42:31', '2019-10-11', 'dschang', 0, 'carole'),
(17, 'lt-555', 'adam', 'mbouda', 15000, 5000, '19:18:15', '2019-10-16', 'dschang', 0, 'carole'),
(18, 'lt-555', 'loubar', 'DOUALA', 3000, 5000, '00:00:00', '2019-10-16', 'dschang', 1, 'carole');

-- --------------------------------------------------------

--
-- Structure de la table `passager`
--

CREATE TABLE `passager` (
  `noms` varchar(30) NOT NULL,
  `destination` varchar(30) NOT NULL,
  `siege` int(4) DEFAULT NULL,
  `nb_bagage` int(4) DEFAULT NULL,
  `caracteristique` varchar(500) DEFAULT NULL,
  `id_itineraire` int(4) NOT NULL,
  `id_passager` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `passager`
--

INSERT INTO `passager` (`noms`, `destination`, `siege`, `nb_bagage`, `caracteristique`, `id_itineraire`, `id_passager`) VALUES
('tchamou', 'nkongsamba', 23, 0, '', 3, 2),
('pazini', 'biemassi', 12, 0, '', 3, 3),
('brice nkwamo', 'biemassi', 11, 1, 'sac de voyage noir', 3, 4),
('franck', 'biemassi', 43, 0, '', 3, 5),
('tetu', 'foumban', 10, 0, '', 3, 6),
('kuon', 'biemassi', 3, 0, '', 3, 7),
('test', 'biemassi', 17, 0, '', 3, 8),
('tester', 'biemassi', 28, 0, '', 3, 9),
('carole', 'biemassi', 34, 0, '', 3, 10),
('tchasseu', 'biemassi', 45, 0, '', 3, 11),
('tchasseu', 'biemassi', 70, 0, '', 3, 12),
('franck de duel', 'loum', 45, 0, '', 3, 13),
('frank', 'yaounde-->biemassi', 51, 0, '', 3, 14),
('FRANKLIN', 'yaounde-->biemassi', 29, 0, '', 3, 15),
('bernard', 'yaounde-->biemassi', 35, 0, '', 3, 16),
('fr', 'yaounde-->biemassi', 65, 0, '', 3, 17),
('en', 'yaounde-->biemassi', 44, 0, '', 3, 18),
('carole', 'yaounde-->biemassi', 66, 0, '', 3, 19),
('henri', 'banga', 89, 0, '', 3, 20),
('roland', 'yaounde-->biemassi', 22, 0, '', 3, 21),
('TC', 'yaounde-->biemassi', 55, 0, '', 3, 22),
('nv', 'yaounde-->biemassi', 61, 0, '', 3, 23),
('nivi', 'banga', 22, 0, '', 3, 24),
('test', 'yaounde-->biemassi', 89, 0, '', 3, 25),
('raa', 'yaounde-->biemassi', 2, 0, '', 3, 26),
('dell', 'yaounde-->biemassi', 4, 0, '', 3, 27),
('varel', 'yaounde-->biemassi', 50, 0, '', 3, 28),
('enseignant', 'edea', 36, 0, '', 3, 29),
('DSDD', 'dschang-->biemassi', 3, 0, '', 2, 30),
('QSDS', 'dschang-->biemassi', 4, 0, '', 2, 31),
('champ', 'douala-->bonaberie', 48, 1, 'ESSAY', 3, 32),
('CHAMP', 'yaounde-->biemassi', 47, 0, '', 3, 33),
('test1', 'yaounde-->biemassi', 44, 0, NULL, 3, 34),
('champ', 'd', 41, 0, '', 3, 35),
('tchatseu', 'yaounde-->biemassi', 40, 0, '', 3, 36),
('fgcqsdq', 'yaounde-->biemassi', 30, 0, '', 3, 37),
('essay1', 'yaounde-->biemassi', 13, 0, '', 3, 38),
('ESSAY2', 'yaounde-->biemassi', 14, 0, '', 3, 39),
('ramses', 'douala-->bepanda', 2, 0, '', 2, 40),
('tamdjo', 'douala-->bonaberie', 70, 0, '', 2, 44),
('fonkou', 'douala-->brazaville', 69, 0, '', 2, 45),
('FRANK', 'douala-->bonaberie', 68, 0, '', 2, 46),
('fra', 'douala-->bonaberie', 10, 3, 'sac bandjock', 2, 54),
('RITA', 'DOUALA-->bonaberie', 3, 2, 'SACS BADJOCK', 15, 56),
('WHITNEY', 'bafoussam-->entree de la ville', 12, 0, '', 16, 57),
('HOUSTON', 'BADJOUN', 11, 0, '', 16, 58),
('FSDD', 'bafoussam-->entree de la ville', 10, 0, '', 16, 59),
('DFSD', 'bafoussam-->entree de la ville', 19, 0, '', 16, 60),
('MSERIP', 'mbouda-->quartier municipal', 10, 0, '', 17, 61),
('ghfgg', 'lml', 11, 0, '', 17, 62),
('BVCBVC', 'DOUALA-->bonaberie', 8, 0, '', 18, 63);

-- --------------------------------------------------------

--
-- Structure de la table `poste`
--

CREATE TABLE `poste` (
  `intitule` varchar(50) NOT NULL,
  `id_poste` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `poste`
--

INSERT INTO `poste` (`intitule`, `id_poste`) VALUES
('colis', 1),
('client', 2),
('chaufeur', 3),
('admin', 4),
('garage', 5);

-- --------------------------------------------------------

--
-- Structure de la table `recepteur`
--

CREATE TABLE `recepteur` (
  `nom_rec` varchar(30) NOT NULL,
  `tel_rec` int(11) NOT NULL,
  `identifiant_rec` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `recepteur`
--

INSERT INTO `recepteur` (`nom_rec`, `tel_rec`, `identifiant_rec`) VALUES
('brice', 681987624, 1),
('MAMAN', 673867834, 2),
('maman', 675173561, 3),
('maman', 651218329, 4),
('SCS', 654567897, 5),
('tester', 665845334, 6),
('test', 665652372, 7),
('FSGQS', 656731232, 8),
('SDNDCF', 673298323, 9),
('tchamaoyu', 698723233, 10),
('FGDQGSDSQ', 688918376, 11),
('GQSDDS', 678917321, 12),
('sdcqd', 676273462, 13),
('foul', 666836237, 14),
('foul', 666836237, 15),
('FRANCKO', 677762378, 16),
('tchenteu bernard', 667875847, 17),
('BQSDS', 667823162, 18),
('ramses', 682728712, 19),
('louenkam', 676721628, 20),
('HSQHGSFHG', 676721628, 21),
('madame', 677456553, 22),
('qsxX', 655342313, 23),
('FONKOU', 663467829, 24),
('ALEX', 656726536, 25),
('TCHATSEU', 696812610, 26),
('tyqfqs', 667621521, 27),
('xcwx', 675553434, 28),
('patrick', 666325623, 29);

-- --------------------------------------------------------

--
-- Structure de la table `retrait`
--

CREATE TABLE `retrait` (
  `id_retrait` int(4) NOT NULL,
  `id_colis` int(4) NOT NULL,
  `reference_bureau` varchar(30) NOT NULL,
  `date_retrait` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Déchargement des données de la table `retrait`
--

INSERT INTO `retrait` (`id_retrait`, `id_colis`, `reference_bureau`, `date_retrait`) VALUES
(1, 1, 'ramses', '2019-08-26'),
(3, 2, 'ramses', '2019-09-09'),
(5, 5, 'ramses', '2019-09-09'),
(9, 7, 'ramses', '2019-09-13'),
(10, 9, 'essay', '2019-09-16'),
(11, 12, 'ramses', '2019-09-19'),
(12, 11, 'ramses', '2019-09-23'),
(13, 14, 'ramses', '2019-09-25'),
(14, 15, 'essay', '2019-09-26'),
(15, 16, 'ramses', '2019-09-30'),
(16, 17, 'ramses', '2019-10-11'),
(17, 19, 'ramses', '2019-10-16');

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`imatriculation`);

--
-- Index pour la table `destination`
--
ALTER TABLE `destination`
  ADD PRIMARY KEY (`id_dest`);

--
-- Index pour la table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`login`),
  ADD KEY `id_poste` (`id_poste`);

--
-- Index pour la table `expediteur`
--
ALTER TABLE `expediteur`
  ADD PRIMARY KEY (`identifiant`);

--
-- Index pour la table `info_trans_colis`
--
ALTER TABLE `info_trans_colis`
  ADD PRIMARY KEY (`num_colis`,`date_exp`),
  ADD KEY `exp_constraint` (`id_exp`),
  ADD KEY `rec_constraint` (`id_rec`),
  ADD KEY `bureau constraint` (`reference_bureau`);

--
-- Index pour la table `itineraire`
--
ALTER TABLE `itineraire`
  ADD PRIMARY KEY (`id_itineraire`),
  ADD KEY `bus_constraint` (`imatriculation`),
  ADD KEY `chau_constraint` (`chaufeur`),
  ADD KEY `emp_constraint` (`reference_bureau`);

--
-- Index pour la table `passager`
--
ALTER TABLE `passager`
  ADD PRIMARY KEY (`id_passager`),
  ADD KEY `constraint_iti` (`id_itineraire`);

--
-- Index pour la table `poste`
--
ALTER TABLE `poste`
  ADD PRIMARY KEY (`id_poste`);

--
-- Index pour la table `recepteur`
--
ALTER TABLE `recepteur`
  ADD PRIMARY KEY (`identifiant_rec`);

--
-- Index pour la table `retrait`
--
ALTER TABLE `retrait`
  ADD PRIMARY KEY (`id_retrait`),
  ADD KEY `cons_colis` (`id_colis`),
  ADD KEY `login_constraint` (`reference_bureau`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `destination`
--
ALTER TABLE `destination`
  MODIFY `id_dest` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT pour la table `expediteur`
--
ALTER TABLE `expediteur`
  MODIFY `identifiant` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT pour la table `info_trans_colis`
--
ALTER TABLE `info_trans_colis`
  MODIFY `num_colis` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT pour la table `itineraire`
--
ALTER TABLE `itineraire`
  MODIFY `id_itineraire` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT pour la table `passager`
--
ALTER TABLE `passager`
  MODIFY `id_passager` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT pour la table `poste`
--
ALTER TABLE `poste`
  MODIFY `id_poste` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT pour la table `recepteur`
--
ALTER TABLE `recepteur`
  MODIFY `identifiant_rec` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT pour la table `retrait`
--
ALTER TABLE `retrait`
  MODIFY `id_retrait` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `employer`
--
ALTER TABLE `employer`
  ADD CONSTRAINT `employer_ibfk_1` FOREIGN KEY (`id_poste`) REFERENCES `poste` (`id_poste`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `info_trans_colis`
--
ALTER TABLE `info_trans_colis`
  ADD CONSTRAINT `bureau constraint` FOREIGN KEY (`reference_bureau`) REFERENCES `employer` (`login`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `exp_constraint` FOREIGN KEY (`id_exp`) REFERENCES `expediteur` (`identifiant`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `rec_constraint` FOREIGN KEY (`id_rec`) REFERENCES `recepteur` (`identifiant_rec`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `itineraire`
--
ALTER TABLE `itineraire`
  ADD CONSTRAINT `bus_constraint` FOREIGN KEY (`imatriculation`) REFERENCES `bus` (`imatriculation`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `chau_constraint` FOREIGN KEY (`chaufeur`) REFERENCES `employer` (`login`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `emp_constraint` FOREIGN KEY (`reference_bureau`) REFERENCES `employer` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `passager`
--
ALTER TABLE `passager`
  ADD CONSTRAINT `constraint_iti` FOREIGN KEY (`id_itineraire`) REFERENCES `itineraire` (`id_itineraire`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Contraintes pour la table `retrait`
--
ALTER TABLE `retrait`
  ADD CONSTRAINT `cons_colis` FOREIGN KEY (`id_colis`) REFERENCES `info_trans_colis` (`num_colis`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `login_constraint` FOREIGN KEY (`reference_bureau`) REFERENCES `employer` (`login`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
