-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Hôte : db.3wa.io
-- Généré le : ven. 08 mars 2024 à 18:18
-- Version du serveur :  5.7.33-0ubuntu0.18.04.1-log
-- Version de PHP : 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `magalynouguerede_instant_danse`
--

-- --------------------------------------------------------

--
-- Structure de la table `category_workshop`
--

CREATE TABLE `category_workshop` (
  `category_workshop_id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `category_workshop`
--

INSERT INTO `category_workshop` (`category_workshop_id`, `name`, `description`) VALUES
(1, 'Heels Dance', 'Le Heels met l\'accent sur la fluidité, la sensualité et l\'expression artistique tout en portant des talons hauts, ce qui ajoute un élément de style et de grâce à la chorégraphie. Les mouvements peuvent inclure des pas de danse contemporaine, du hip-hop, du jazz et d\'autres styles, et sont souvent exécutés de manière expressive pour mettre en valeur la féminité et la puissance.'),
(2, 'Modern Jazz ', 'Le Modern Jazz est un style de danse contemporaine qui émerge du jazz traditionnel, incorporant des éléments de ballet, de danse contemporaine et de styles de rue. Elle se caractérise par son expression libre, ses mouvements fluides et sa créativité artistique. Contrairement au jazz traditionnel, le Modern Jazz permet aux danseurs une plus grande liberté d\'interprétation et d\'expression personnelle. Les chorégraphies peuvent varier du rythmique et énergique au fluide et émotionnel, offrant une palette diversifiée de mouvements et d\'expressions artistiques.'),
(3, 'Street Jazz', 'Le Street Jazz fusionne des éléments de la danse jazz traditionnelle avec des mouvements empruntés aux danses de rue contemporaines, tels que le hip-hop et le funk. Ce style de danse urbaine allie la fluidité et la technique du jazz à l\'énergie et à l\'attitude caractéristiques des danses de rue. Les chorégraphies de Street Jazz peuvent incorporer des mouvements de isolations, des pas de hip-hop, des sauts dynamiques, ainsi que des éléments de style propre au jazz. Ce mélange crée un style de danse moderne, énergique et expressif, souvent enseigné dans le cadre de cours de danse commerciaux et utilisé dans des performances artistiques contemporaines.'),
(4, 'Dancehall', 'Le Dancehall est un style de danse urbaine qui a évolué en parallèle avec la musique du même nom. La danse Dancehall incorpore des mouvements énergiques, des isolations du corps, des pas de jambes rapides et des expressions faciales expressives. Elle est souvent caractérisée par des mouvements saccadés, des ondulations du corps et des gestuelles spécifiques associées à la culture jamaïcaine. Le Dancehall est populaire dans le monde entier et est souvent pratiqué dans des clubs, des cours de danse et des compétitions.'),
(5, 'Danse contemporaine', 'La danse contemporaine est un style de danse qui émerge au milieu du 20e siècle en réaction aux formes de danse traditionnelles. Elle se caractérise par son exploration de la créativité et de l\'expression individuelle, repoussant souvent les limites du mouvement et de la chorégraphie. Contrairement à des styles plus codifiés comme le ballet, la danse contemporaine favorise la liberté de mouvement, l\'expérimentation, et l\'interaction avec d\'autres formes artistiques.'),
(6, 'Breakdance', 'Le breakdance, également connu sous le nom de breaking, est un style de danse hip-hop qui a émergé dans les années 1970, principalement dans la ville de New York. Il est caractérisé par des mouvements acrobatiques, des figures au sol, des spins, des sauts, et des isolations du corps. Le breakdance fait partie des quatre éléments principaux de la culture hip-hop, aux côtés du rap, du DJing et du graffiti.\r\nLes danseurs de breakdance, appelés b-boys (break-boys) ou b-girls (break-girls), exécutent des mouvements tels que le toprock (mouvements debout), le downrock (mouvements au sol), les power moves (mouvements acrobatiques) et le freeze (pose statique) lors de battles (affrontements) ou de performances. La danse breakdance est souvent associée à l\'improvisation et à la compétition, créant une forme d\'expression dynamique et énergique qui a gagné une renommée mondiale.'),
(7, 'Reggaeton', 'Le reggaeton est un genre musical et une forme de danse qui a émergé à Porto Rico dans les années 1990. Il est influencé par le reggae, la dancehall, le hip-hop et la musique latino-américaine. Le reggaeton a gagné une popularité mondiale en fusionnant des éléments de divers genres musicaux et en développant son propre style distinctif.\r\nEn ce qui concerne la danse, le reggaeton a également engendré un style de danse éponyme qui accompagne souvent la musique. La danse reggaeton incorpore des mouvements sensuels des hanches, des isolations du corps, des pas de jambes rapides et des gestes énergiques. Elle met souvent l\'accent sur l\'expression individuelle et l\'interaction avec le rythme de la musique. La popularité du reggaeton, tant sur le plan musical que de la danse, continue de croître à l\'échelle internationale.\r\n\r\n\r\n\r\n\r\n\r\n'),
(8, 'Danse orientale', 'La danse orientale, également appelée danse du ventre, est un style traditionnel du Moyen-Orient caractérisé par des mouvements fluides, des ondulations du ventre et des isolations précises. Elle est appréciée pour son élégance et sa capacité à raconter des histoires à travers le langage corporel.'),
(9, 'Danse classique', 'La danse classique, ou ballet, est un style de danse qui a émergé au XVIIe siècle en France. Elle se caractérise par une technique rigoureuse, des positions spécifiques des pieds et des bras, ainsi que des mouvements gracieux et contrôlés. La danse classique privilégie l\'élégance, la discipline et l\'expression artistique, et elle est souvent accompagnée de musique classique.\r\n\r\n\r\n\r\n\r\n\r\n'),
(10, 'Hip Hop', 'La danse hip-hop est un style de danse qui a émergé dans les quartiers urbains aux États-Unis, principalement à New York, dans les années 1970. Elle fait partie de la culture hip-hop, qui englobe également le rap, le DJing et le graffiti. La danse hip-hop est caractérisée par son énergie, son originalité, et son expression personnelle.\r\nElle comprend plusieurs styles, notamment le breaking, le locking, le popping, le krump, le house dance, et d\'autres. Chaque style a ses propres mouvements distinctifs et techniques. Les danseurs hip-hop s\'expriment souvent à travers des mouvements libres, des isolations du corps, des figures au sol, et des combinaisons rythmiques.\r\nLa danse hip-hop est influencée par la musique hip-hop, mais elle peut également s\'adapter à différents genres musicaux. Elle est pratiquée dans le monde entier et est souvent utilisée dans des compétitions, des spectacles, et des vidéoclips. C\'est un moyen puissant d\'expression artistique et de connexion culturelle.');

-- --------------------------------------------------------

--
-- Structure de la table `dancer_workshop`
--

CREATE TABLE `dancer_workshop` (
  `dancer_workshop_id` int(11) NOT NULL,
  `title` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL,
  `hour` time DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `city` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `required_dance_level` varchar(50) COLLATE utf8_unicode_ci DEFAULT NULL,
  `person_max` int(11) DEFAULT NULL,
  `category_workshop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `dancer_workshop`
--

INSERT INTO `dancer_workshop` (`dancer_workshop_id`, `title`, `description`, `date`, `hour`, `duration`, `city`, `price`, `required_dance_level`, `person_max`, `category_workshop_id`) VALUES
(3, 'Atelier de Danse Contemporaine - Exploration du Mouvement', 'Cet atelier de danse contemporaine est une session d\'apprentissage et d\'exploration axée sur la créativité du mouvement. Ouvert à tous les niveaux, il combine des techniques de danse contemporaine, des exercices d\'improvisation et l\'apprentissage de courtes chorégraphies pour encourager l\'expression personnelle et la découverte de mouvements uniques. L\'objectif est de libérer la créativité, de développer la confiance en soi et de comprendre la relation entre le corps, l\'espace et la musicalité.', '2024-04-12', '14:30:00', 3, 'Cadillac(33240)', '20.00', 'Débutant', 15, 5),
(5, 'Atelier de Modern Jazz - Énergie et Créativité Rythmique', 'Explorez le Modern Jazz lors de notre atelier axé sur l\'énergie et la créativité. Ouvert à tous les niveaux, cet atelier combine des techniques de jazz traditionnelles avec des éléments contemporains, mettant l\'accent sur l\'improvisation et l\'apprentissage de courtes chorégraphies pour libérer votre expressivité corporelle. Rejoignez-nous pour une session dynamique où la puissance du Modern Jazz se fusionne avec la liberté créative.', '2024-04-23', '15:00:00', 3, 'Saint-André de Cubzac(33240)', '25.00', 'Débutant', 15, 2),
(8, ' Atelier de Heels Dance - Élégance et Confiance', 'Plongez dans le monde de la Heels Dance lors de notre atelier dédié à l\'élégance et à la confiance. Accessible à tous, cet atelier unique explore la danse en talons hauts, alliant la grâce féminine à la puissance expressive. Apprenez des mouvements sensuels, perfectionnez votre posture et découvrez la fusion envoûtante de la danse avec l\'esthétique glamour des talons.', '2024-05-11', '14:00:00', 2, 'Blaye(33390)', '18.00', 'Débutant', 18, 1),
(9, 'Atelier de Hip-Hop - Groove Urbain', 'Plongez dans l\'univers électrisant du Hip-Hop lors de notre atelier dédié au groove urbain. Adapté à tous les niveaux, cet atelier vous invite à explorer les fondamentaux du Hip-Hop, de ses mouvements caractéristiques à son attitude audacieuse. Préparez-vous à libérer votre énergie, à maîtriser des chorégraphies percutantes et à exprimer votre style unique dans un environnement dynamique et inclusif.\r\n\r\nRejoignez-nous pour une immersion totale dans la culture du Hip-Hop, où le rythme, la créativité et le plaisir se rencontrent dans une fusion inédite de mouvements urbains.', '2024-05-18', '14:30:00', 3, 'Angoulême', '25.00', 'Débutant', 20, 10),
(14, 'bb', 'bb', '2024-03-16', '20:06:00', 2, 'Berson', '10.00', 'débutant', 10, 9),
(15, 'aa', 'aa', '2024-03-21', '14:48:00', 2, 'Eyrans', '15.00', 'intermédiaire', 15, 10);

-- --------------------------------------------------------

--
-- Structure de la table `message`
--

CREATE TABLE `message` (
  `message_id` int(11) NOT NULL,
  `sender` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `receiver` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `content` text COLLATE utf8_unicode_ci,
  `date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `first_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `last_name` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `birthday` date DEFAULT NULL,
  `address` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `postcode` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `city` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `phone_number` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `dance_level` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `role` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `first_name`, `last_name`, `birthday`, `address`, `postcode`, `city`, `phone_number`, `dance_level`, `email`, `password`, `role`) VALUES
(1, 'Hedy', 'Woodsford', NULL, '9257 Thackeray Circle', '33000', 'Dukuhsawah', '199-293-8490', 'eu massa donec dapibus duis at velit eu est congue', 'hwoodsford0@vinaora.com', 'gV3?7L,o?}`25E3A', ''),
(2, 'Galven', 'Tschursch', NULL, '25533 Cherokee Terrace', '33000', 'Rahayu', '734-689-6318', 'at turpis a pede posuere nonummy integer non velit', 'gtschursch1@rakuten.co.jp', 'bB9|sU3rcq5u', ''),
(3, 'Aurore', 'Lukock', NULL, '95893 Sullivan Avenue', '3025-403', 'Vila Verde', '899-762-8731', 'volutpat sapien arcu sed augue aliquam erat volutp', 'alukock2@digg.com', 'fY1!y%H)gnO@J', ''),
(4, 'Steffane', 'Sparway', NULL, '79657 Saint Paul Court', '4960-110', 'Cruzeiro', '708-500-3305', '33000a quisque arcu libero rutrum ac lobortis vel ', 'ssparway3@weather.com', 'sM3{f@RCs$.', ''),
(5, 'Jojo', 'Grigoire', NULL, '405 Green Ridge Road', '11-440', 'Reszel', '320-551-0864', 'augue a suscipit 33000a elit ac 33000a sed vel eni', 'jgrigoire4@zdnet.com', 'aA9{kB`6K/', ''),
(6, 'Kinna', 'Gallety', NULL, '4107 Heath Alley', '416357', 'Volgo-Kaspiyskiy', '145-199-7290', 'consequat lectus in est risus auctor sed tristique', 'kgallety5@berkeley.edu', 'bQ4)8f,)oz9{@|', ''),
(7, 'Filberto', 'Whittlesea', NULL, '734 Birchwood Trail', '33000', 'Jinhe', '453-875-0098', 'viverra eget congue eget semper rutrum 33000a nunc', 'fwhittlesea6@businessweek.com', 'fY2`yh#pJ_', ''),
(8, 'Harv', 'Camillo', NULL, '77910 Barnett Road', '33000', 'Kyzylzhar', '185-807-8013', 'suscipit ligula in lacus curabitur at ipsum ac tel', 'hcamillo7@go.com', 'nS5`gulY7Z\"!g_<', ''),
(9, 'Roosevelt', 'Shwalbe', NULL, '47994 Judy Pass', '12205', 'Albany', '518-342-3245', 'erat fermentum justo nec condimentum neque sapien ', 'rshwalbe8@loc.gov', 'gP8|&e5Bs\"4GM', ''),
(10, 'Aubert', 'Whayman', NULL, '3754 Packers Terrace', '969-1619', 'Kariya', '283-105-2009', 'quis turpis eget elit sodales scelerisque mauris s', 'awhayman9@alibaba.com', 'dC1(Ec}Wv', ''),
(11, 'Mariele', 'Gooddy', NULL, '94 Hoard Trail', '84280', 'Wiset Chaichan', '551-486-3540', 'rutrum 33000a tellus in sagittis dui vel nisl duis', 'mgooddya@imageshack.us', 'uZ0{\'%td?FU', ''),
(12, 'Earvin', 'Chicken', NULL, '61283 Lyons Center', '33000', 'Huangpu', '309-690-2969', 'magna bibendum imperdiet 33000am orci pede venenat', 'echickenb@photobucket.com', 'pZ9?1?N9wT32qi+', ''),
(13, 'Wye', 'Hartington', NULL, '828 Fair Oaks Place', '33000', 'Cikaduen', '462-636-1683', 'sit amet sem fusce consequat 33000a nisl nunc nisl', 'whartingtonc@microsoft.com', 'qR8}u\'`MtVf_g', ''),
(14, 'Chiarra', 'Caser', NULL, '4529 Trailsway Terrace', '84120', 'Ban Na San', '285-853-2551', 'integer tincidunt ante vel ipsum praesent blandit ', 'ccaserd@eepurl.com', 'zP3&/yPF*,k8Irh', ''),
(15, 'Roanna', 'Querrard', NULL, '50 Eagan Plaza', '33000', 'Bakungan', '750-659-3987', 'felis fusce posuere felis sed lacus morbi sem maur', 'rquerrarde@forbes.com', 'aU9+@mJPQMa+Xu', ''),
(16, 'Hardy', 'Letteresse', NULL, '38233 Blackbird Plaza', '3060-707', 'Tocha', '741-527-8153', 'vivamus vel 33000a eget eros elementum pellentesqu', 'hletteressef@accuweather.com', 'vD3$R3<\'$xlJf6a', ''),
(17, 'Erskine', 'Heis', NULL, '6837 Bobwhite Point', '33000', 'Golubinci', '716-103-4909', 'risus praesent lectus vestibulum quam sapien variu', 'eheisg@lulu.com', 'cT2@dek#$Vs!', ''),
(18, 'Melicent', 'Hollindale', NULL, '77812 Starling Hill', '7909', 'Hoogeveen', '571-953-5197', 'vestibulum ante ipsum primis in faucibus orci luct', 'mhollindaleh@arizona.edu', 'wY6)Ur,PK	.IX', ''),
(19, 'Padraic', 'Beefon', NULL, '5774 Mosinee Court', '33000', 'Wufeng', '435-945-2738', 'rutrum rutrum neque aenean auctor gravida sem prae', 'pbeefoni@seesaa.net', 'xG8!7CY_\"4xb_tF', ''),
(20, 'Sander', 'Hanks', NULL, '770 Kenwood Pass', '33000', 'Catamayo', '922-990-0536', 'vestibulum proin eu mi 33000a ac enim in tempor tu', 'shanksj@wiley.com', 'iS5|O|A|n@tMBa~*', ''),
(29, 'Magaly', 'Nouguerède', '1981-11-03', '5 Guiton', '33390', 'Berson', '+33664759260', '', 'magaly@hotmail.fr', '$2b$10$MFJDXkKCU9/GpFcoBdUE4e3DunesZIfjSgORScGTOKHd/rPkfLbx6', 'user'),
(30, 'Magaly', 'Nouguerède', '1981-11-03', '5 Guiton', '33390', 'Berson', '+33664759260', 'intermédiaire', 'magalynou@gmail.com', '$2b$10$53MrItzhXmkoFih5fTs6yeJdtR.2JfAmrbI3uZW55K8I8BzEQzdk.', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `user_dancer_workshop`
--

CREATE TABLE `user_dancer_workshop` (
  `user_id` int(11) NOT NULL,
  `dancer_workshop_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `user_dancer_workshop`
--

INSERT INTO `user_dancer_workshop` (`user_id`, `dancer_workshop_id`) VALUES
(30, 3),
(30, 5),
(30, 8),
(30, 9);

-- --------------------------------------------------------

--
-- Structure de la table `user_message`
--

CREATE TABLE `user_message` (
  `user_id` int(11) DEFAULT NULL,
  `message_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `category_workshop`
--
ALTER TABLE `category_workshop`
  ADD PRIMARY KEY (`category_workshop_id`);

--
-- Index pour la table `dancer_workshop`
--
ALTER TABLE `dancer_workshop`
  ADD PRIMARY KEY (`dancer_workshop_id`),
  ADD KEY `category_workshop_id` (`category_workshop_id`);

--
-- Index pour la table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`message_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Index pour la table `user_dancer_workshop`
--
ALTER TABLE `user_dancer_workshop`
  ADD PRIMARY KEY (`user_id`,`dancer_workshop_id`),
  ADD KEY `dancer_workshop_id` (`dancer_workshop_id`);

--
-- Index pour la table `user_message`
--
ALTER TABLE `user_message`
  ADD KEY `user_id` (`user_id`),
  ADD KEY `message_id` (`message_id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `category_workshop`
--
ALTER TABLE `category_workshop`
  MODIFY `category_workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT pour la table `dancer_workshop`
--
ALTER TABLE `dancer_workshop`
  MODIFY `dancer_workshop_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT pour la table `message`
--
ALTER TABLE `message`
  MODIFY `message_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `dancer_workshop`
--
ALTER TABLE `dancer_workshop`
  ADD CONSTRAINT `dancer_workshop_ibfk_1` FOREIGN KEY (`category_workshop_id`) REFERENCES `category_workshop` (`category_workshop_id`);

--
-- Contraintes pour la table `user_dancer_workshop`
--
ALTER TABLE `user_dancer_workshop`
  ADD CONSTRAINT `user_dancer_workshop_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_dancer_workshop_ibfk_2` FOREIGN KEY (`dancer_workshop_id`) REFERENCES `dancer_workshop` (`dancer_workshop_id`);

--
-- Contraintes pour la table `user_message`
--
ALTER TABLE `user_message`
  ADD CONSTRAINT `user_message_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `user_message_ibfk_2` FOREIGN KEY (`message_id`) REFERENCES `message` (`message_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
