-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1:3306
-- Généré le :  mar. 13 oct. 2020 à 12:02
-- Version du serveur :  5.7.24
-- Version de PHP :  7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `la_e_boutique`
--

-- --------------------------------------------------------

--
-- Structure de la table `doctrine_migration_versions`
--

DROP TABLE IF EXISTS `doctrine_migration_versions`;
CREATE TABLE IF NOT EXISTS `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int(11) DEFAULT NULL,
  PRIMARY KEY (`version`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Déchargement des données de la table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20200828101749', '2020-08-28 10:17:58', 53),
('DoctrineMigrations\\Version20200828102504', '2020-08-28 10:25:18', 102),
('DoctrineMigrations\\Version20200828103006', '2020-08-28 10:30:10', 49),
('DoctrineMigrations\\Version20200828105559', '2020-08-28 10:56:05', 56),
('DoctrineMigrations\\Version20200828152554', '2020-08-28 15:26:04', 100),
('DoctrineMigrations\\Version20200828211318', '2020-08-28 21:13:32', 86);

-- --------------------------------------------------------

--
-- Structure de la table `notice`
--

DROP TABLE IF EXISTS `notice`;
CREATE TABLE IF NOT EXISTS `notice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_id` int(11) NOT NULL,
  `author` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` datetime NOT NULL,
  PRIMARY KEY (`id`),
  KEY `IDX_480D45C24584665A` (`product_id`)
) ENGINE=InnoDB AUTO_INCREMENT=113 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `notice`
--

INSERT INTO `notice` (`id`, `product_id`, `author`, `content`, `created_at`) VALUES
(58, 37, 'Katarina Cruickshank III', 'Porro dolorem accusamus minima nulla pariatur iusto. Praesentium quia sit est reiciendis sit. Dolores exercitationem eveniet commodi totam.', '1997-12-12 22:54:26'),
(59, 37, 'Dr. Maia Friesen DDS', 'Et occaecati enim a distinctio qui a. Soluta optio nam accusamus magni repellat dolore voluptatum. Officia ut mollitia tempora hic accusantium.', '2018-06-13 23:24:52'),
(60, 37, 'Dr. Ofelia Bogan', 'Ad optio quia minus maiores ex voluptas saepe aut. Magni ab accusamus ex ducimus. Ea odio eos sit perspiciatis tempore. Debitis et consectetur eaque quas omnis odit. Error eius illo quia officiis.', '1995-07-08 20:42:52'),
(61, 37, 'Tyson Greenfelder', 'Accusamus consequatur minima eaque sequi soluta. Animi et nobis accusantium. Voluptatem vel ipsam sed assumenda quasi nisi. Esse facilis praesentium natus consequatur sed eligendi.', '2019-02-02 08:46:37'),
(62, 38, 'Toney Bruen', 'Nemo enim tempora eius laboriosam reprehenderit magnam. Est dolorum eius sapiente natus dolore sed rerum. Adipisci vel quis quae cupiditate voluptatem ut.', '2000-06-20 03:36:57'),
(63, 38, 'Kristian Crooks III', 'Nam molestiae qui eos autem. Animi expedita ad nihil. Voluptate id vel ad minima quaerat sint sed.', '1970-03-17 07:12:20'),
(64, 38, 'Lorine Mertz', 'Quidem voluptas ut voluptate. Asperiores velit officiis nobis beatae minima assumenda corrupti. Optio doloremque eos quis illum. Non recusandae illo iure earum facilis accusantium.', '2008-07-08 16:21:39'),
(65, 38, 'Dominique Kling V', 'Sunt ducimus consectetur recusandae tempore. Ducimus beatae mollitia neque molestias.', '2013-07-25 18:40:10'),
(66, 39, 'Shanelle Ondricka', 'Ipsum consequatur quae est necessitatibus. Aut illo quis dolores tempora ut doloremque vel nesciunt. Reprehenderit architecto in perspiciatis quaerat. Repellendus enim eligendi deleniti harum commodi non.', '2011-09-19 18:21:25'),
(67, 39, 'Eusebio Kuhlman', 'Qui corrupti consequuntur explicabo et velit qui dolorem corrupti. Quibusdam incidunt ut nostrum aut quia possimus sed. Numquam sit facilis ipsum sed et illum qui. Aperiam nam in rerum excepturi voluptatem.', '2006-04-23 16:39:23'),
(68, 39, 'Milan Adams', 'Dolore voluptatibus optio ex. Id mollitia et at consequatur. Quos totam at et perferendis dolor voluptatem sit et. Maiores consectetur in non. Cum aliquid aut et.', '1993-06-12 12:49:16'),
(69, 39, 'Cordell Reichert', 'Eius qui sed fugiat est. Dicta totam suscipit ut exercitationem. Esse amet voluptatem assumenda qui voluptate ea. Qui mollitia quasi adipisci maiores sed qui. Et quae voluptatem ipsam itaque ex voluptas.', '2004-06-27 14:49:30'),
(70, 39, 'Miracle Skiles', 'Consectetur in in ipsam qui eum. Iusto qui ipsa eius voluptate. Ad qui ut tempore.', '1995-03-22 20:05:29'),
(71, 39, 'Ms. Megane Kautzer', 'Hic fuga et consequatur eaque non reiciendis dolorem. Ipsam est cupiditate eum numquam veniam est esse dolorum. Laborum voluptatem voluptate ducimus vel et porro ut.', '1976-04-30 12:06:07'),
(72, 39, 'Jordyn Hahn', 'Amet est fugiat aut adipisci. Accusantium beatae rerum cum omnis ut. Amet atque quia neque atque.', '2013-09-21 16:54:23'),
(73, 40, 'Felicity Mayer', 'Aut magni sed laudantium vel temporibus ut. Repellat qui et expedita voluptatem. Quos odit distinctio maxime praesentium. Unde qui officia aut.', '2014-10-27 02:48:29'),
(74, 40, 'Willow Dach', 'Odio occaecati est nulla consequatur praesentium sit. Sed cumque ea expedita vel labore.', '1973-08-05 23:48:59'),
(75, 40, 'Enrico Murazik', 'Consequatur in et pariatur laudantium explicabo sequi. Mollitia ratione autem accusantium omnis excepturi neque omnis unde. Dolor et nihil placeat eum qui.', '1983-03-29 00:37:27'),
(76, 40, 'Jeramie Boyle DVM', 'Et ullam quo itaque repellat perferendis debitis aut. Quo saepe ratione exercitationem sed fugiat consequuntur. Est dignissimos velit optio fuga qui quibusdam cumque.', '1992-04-25 12:50:48'),
(77, 40, 'Cleveland Lubowitz V', 'Ullam ut qui temporibus rem vitae. Veritatis sunt eum repudiandae molestiae dignissimos. Qui sapiente veritatis nostrum blanditiis dolorem esse magni.', '2017-12-12 13:50:55'),
(78, 40, 'Darlene Hill', 'Sapiente et deserunt voluptate temporibus eius est facere. Ducimus velit delectus neque nihil eos facere vero sapiente. Illum deserunt enim minima. Facere omnis qui voluptatibus.', '2006-05-13 06:09:40'),
(79, 40, 'Sheila Hahn', 'Distinctio sunt corporis optio rerum eum ab. Nam id hic corrupti aspernatur quo illum sapiente. Dolore veniam cumque velit dolores eos. Qui vitae dolorem cumque adipisci in maiores aut qui.', '1971-04-30 09:57:27'),
(80, 41, 'Dr. Mallie Aufderhar II', 'Sed sunt impedit qui ea quisquam optio consectetur. Omnis reiciendis ducimus at id dolorem. Minima consectetur recusandae corporis. Et qui doloremque totam ut ex nulla.', '1970-03-17 05:37:42'),
(81, 41, 'Dr. Javon Ryan', 'Ut labore aut et in dolor. Qui sapiente quidem odio quod vitae. Autem voluptatum repellendus et odio illum minima impedit. Laborum architecto rerum odio cum neque itaque.', '1993-05-13 23:52:38'),
(82, 41, 'Darrell Schamberger', 'Et ratione voluptatem dolorum nulla est quis. Dolor saepe beatae sed rerum enim recusandae sit. Ut officiis dolorem voluptatibus eligendi quam. Doloremque unde illo quia nemo est quam.', '2012-06-20 03:17:11'),
(83, 41, 'Kraig D\'Amore', 'Atque reprehenderit molestiae ut sint ipsum. Id voluptas dolore ab occaecati ipsam esse. Aut et quia esse officia neque.', '1982-07-02 16:19:55'),
(84, 41, 'Delilah Halvorson', 'Eos ullam laborum qui magni. Vel sit dolorum ipsa id ex voluptatum. Est cumque laboriosam tenetur magni ut.', '2019-05-13 07:47:27'),
(85, 41, 'Donavon Witting', 'Est assumenda perspiciatis harum vero nam rerum. Voluptatem veniam dolore voluptatem porro nam. Pariatur nisi nesciunt illo iste et. Ipsam quam ratione et placeat temporibus iure.', '1982-12-21 00:31:28'),
(86, 42, 'Ferne Gutkowski DDS', 'Est explicabo dolorem eos perferendis consequatur praesentium laborum. Illo ut laudantium hic veniam qui in deleniti sunt. Necessitatibus consequatur et praesentium. Iure consequatur velit dicta itaque quia et esse ut. Quia maxime sunt autem suscipit dolorum praesentium.', '2000-12-17 11:19:00'),
(87, 42, 'Erika Hackett', 'Dolores enim consequatur aliquid molestiae ut aut quia. Nemo nisi earum ut ab minima. Atque corrupti id quisquam non impedit. Voluptatum consequatur omnis iusto quis.', '1976-05-18 15:47:41'),
(88, 42, 'Trey Kerluke', 'Non quidem eligendi eum quo officia. Maiores culpa doloribus maiores nemo dolor.', '1979-04-10 18:40:23'),
(89, 42, 'Gloria Yundt', 'Fugiat laboriosam assumenda consequatur ut sed id. Vitae voluptas magnam quisquam. Aut sit possimus dolores necessitatibus aut in pariatur. Aut ipsa illum voluptas nihil.', '2011-05-12 22:09:14'),
(90, 42, 'Miss Tanya Gerlach PhD', 'Officiis magni quia quis dolorem. Quod minima earum voluptas. Rerum dicta sit voluptatem expedita accusantium.', '1986-07-09 15:07:50'),
(91, 43, 'Immanuel Ruecker', 'Numquam molestiae repellat ut et corporis. Veritatis quam vel sequi sequi id. Quis qui placeat voluptates et impedit nisi.', '2010-11-06 18:21:22'),
(92, 43, 'Rocio Price', 'Possimus dolores et cupiditate sunt. Et eaque et ut quo facilis explicabo alias. Dignissimos qui consequuntur non iusto quisquam. Numquam qui qui facilis recusandae odit dolorem.', '1994-04-09 21:24:48'),
(93, 43, 'Prof. Vernie Wilderman', 'Quis quam culpa repellat perspiciatis nostrum omnis deserunt. Sit eligendi unde ipsam quos autem omnis. Fugiat excepturi aliquid ut adipisci.', '1974-03-06 00:32:37'),
(94, 43, 'Prof. Lyla Luettgen Sr.', 'Asperiores dignissimos labore quia harum ipsum consequatur. Excepturi eum corporis fugiat soluta. Aspernatur totam in voluptatem. Est quis amet quia ut beatae laudantium.', '1987-12-25 00:02:42'),
(95, 43, 'Chaz Terry', 'Sint optio pariatur laborum doloribus ex maiores amet. Omnis est hic sit debitis. Omnis itaque id quo rerum fuga labore blanditiis.', '1999-08-06 06:43:29'),
(96, 43, 'Adriel Friesen', 'Voluptas autem quisquam laborum. Est consequatur natus pariatur illum.', '2005-04-22 20:27:17'),
(97, 44, 'Laila Daniel', 'Eos ratione impedit sunt sit. Amet minima sunt recusandae vel. Expedita laboriosam et quis.', '2004-01-11 18:04:00'),
(98, 44, 'Jessyca Frami', 'Ipsam delectus tempora et fuga velit fugit similique. Nihil veniam molestiae perspiciatis similique natus sit consequatur voluptatem. Voluptatem consequatur beatae eos at rerum error officiis. Laudantium qui omnis sed in aut.', '1980-03-21 16:56:21'),
(99, 44, 'Kelley Armstrong', 'Dolor aliquid doloremque est ut deleniti voluptate sapiente. Sed nam id consequatur alias repudiandae consequuntur nihil. Nulla dolor rem aliquid aut debitis soluta aperiam ipsa.', '2002-11-07 02:00:11'),
(100, 44, 'Angelita Hickle', 'Ex et debitis facere et est. Omnis autem rerum pariatur ab. Vel quis placeat quis ad iusto.', '1996-07-02 03:24:46'),
(101, 44, 'Dr. Jovanny Huel', 'Quaerat corrupti aut at error. Quo eius explicabo quia quo.', '1984-10-04 05:25:23'),
(102, 44, 'Julianne Sawayn', 'Et optio aliquid culpa odio voluptate perferendis. Autem ea placeat rerum voluptatibus accusamus. Animi possimus incidunt aliquam ut iure sed et.', '2013-08-02 15:46:37'),
(103, 45, 'Kasey Friesen Sr.', 'Itaque dolorum sit nihil qui sequi tempora accusamus. Temporibus deleniti consequuntur omnis accusantium necessitatibus. Praesentium qui occaecati itaque numquam dolorem enim qui.', '2014-01-02 10:02:17'),
(104, 45, 'Ruben Medhurst', 'Rem sunt cumque fuga architecto quaerat. Reprehenderit aliquid ipsum reprehenderit fuga. Ratione rem quidem blanditiis est error. Ut eum voluptatum cumque sed.', '1987-11-24 19:24:09'),
(105, 45, 'Jettie Yundt', 'Molestias sequi et consequatur. Provident vero ut ipsam. Eos vel incidunt sunt laborum ea repellendus.', '1972-08-08 08:40:54'),
(106, 45, 'Cody Barton', 'Consequatur animi beatae est dolores occaecati. Ea qui velit suscipit voluptas ipsum. Et totam incidunt unde distinctio repellendus deleniti. Ab amet similique perspiciatis incidunt eum distinctio.', '1985-08-16 12:10:27'),
(107, 45, 'Addison Stracke', 'Labore rerum possimus ut odit alias commodi quis. Ullam in incidunt nam sequi maxime asperiores. Autem quia eius delectus officia.', '2000-11-11 01:35:34'),
(108, 45, 'Ms. Felipa Weber Jr.', 'Magnam vitae voluptatem dolores at aperiam iure molestiae. Commodi et quas mollitia omnis. Ut omnis blanditiis eos porro aliquid corrupti sint. Ratione exercitationem laboriosam totam enim quidem sed.', '2011-07-12 18:16:57'),
(109, 46, 'Kane Deckow', 'Dolore non provident animi iusto expedita qui. Labore et magni quidem fugiat laboriosam deserunt atque.', '2008-10-11 00:23:57'),
(110, 46, 'German Feest', 'Est aperiam dolorum doloremque ut assumenda. Eum est magnam maiores ducimus. Voluptates iste voluptatem sunt blanditiis doloribus.', '1982-04-08 13:42:20'),
(111, 46, 'Randy Brown', 'Explicabo ullam nihil dolor in vitae qui. Vero cumque aut qui aut accusamus. Nisi magnam rerum id eum quia adipisci modi corporis.', '1997-03-28 11:25:02'),
(112, 46, 'Miss Elmira Hudson MD', 'Quis expedita repudiandae voluptas ea et non et. Et corporis dolores et atque. Ea earum aliquam quis et non quia modi. Aperiam suscipit repellat voluptas deserunt veritatis similique repellat.', '2010-05-14 19:39:41');

-- --------------------------------------------------------

--
-- Structure de la table `product`
--

DROP TABLE IF EXISTS `product`;
CREATE TABLE IF NOT EXISTS `product` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `image` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `product`
--

INSERT INTO `product` (`id`, `name`, `description`, `price`, `created_at`, `image`, `category`) VALUES
(37, 'quaerat', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 49501666, '2004-09-15 02:32:57', 'https://lorempixel.com/640/480/?85405', 'aut'),
(38, 'et', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 132327, '2020-02-06 06:22:05', 'https://lorempixel.com/640/480/?59350', 'aut'),
(39, 'accusantium', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 22656013, '2009-12-26 14:08:07', 'https://lorempixel.com/640/480/?75117', 'magnam'),
(40, 'eum', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 26, '1991-11-12 06:23:33', 'https://lorempixel.com/640/480/?80685', 'animi'),
(41, 'magni', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 57, '1999-01-16 19:45:33', 'https://lorempixel.com/640/480/?99435', 'atque'),
(42, 'pariatur', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 65940, '1988-08-16 11:25:02', 'https://lorempixel.com/640/480/?77312', 'quia'),
(43, 'voluptatem', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 3522778, '1971-05-16 16:42:57', 'https://lorempixel.com/640/480/?43674', 'atque'),
(44, 'optio', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 1, '1976-03-28 07:14:52', 'https://lorempixel.com/640/480/?81753', 'vel'),
(45, 'et', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 222, '1988-11-20 08:02:01', 'https://lorempixel.com/640/480/?22952', 'dolorem'),
(46, 'et', 'Et sint aliquam reprehenderit blanditiis sunt dolorem sed. Molestiae itaque esse eum ut sed. Doloremque sed laboriosam omnis tempore vel nam. Cum autem qui aliquam consectetur at architecto minus ipsum. Officiis accusantium aut sint sed.Recusandae eveniet voluptatem quo quasi nostrum autem. Qui qui voluptatibus est aut est. Et delectus omnis velit similique rerum alias deleniti. Molestiae iusto est sit et fuga perferendis.', 3992, '1992-05-05 12:40:43', 'https://lorempixel.com/640/480/?79084', 'voluptatibus');

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`) VALUES
(7, 'purple', 'p@p.com', '$2y$13$2tM.MbCDVvon0Zot9IOarO0gzYkF6DmIjzwn7uvpNwcjNkCiV.2sa');

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `notice`
--
ALTER TABLE `notice`
  ADD CONSTRAINT `FK_480D45C24584665A` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
