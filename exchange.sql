-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 10 sep. 2022 à 23:42
-- Version du serveur : 10.4.24-MariaDB
-- Version de PHP : 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `exchange`
--

-- --------------------------------------------------------

--
-- Structure de la table `images`
--

CREATE TABLE `images` (
  `image_id` int(11) NOT NULL,
  `toy_uri` char(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `toy_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `images`
--

INSERT INTO `images` (`image_id`, `toy_uri`, `toy_id`, `created_at`, `updated_at`) VALUES
(1, 'http://localhost:8000/storage/toy/monopoly10.jpg', 1, NULL, NULL),
(2, 'http://localhost:8000/storage/toy/monopoly1.jpg', 1, NULL, NULL),
(3, 'http://localhost:8000/storage/toy/bicycle9.jpg', 2, NULL, NULL),
(4, 'http://localhost:8000/storage/toy/bicycle4.jpg', 2, NULL, NULL),
(5, 'http://localhost:8000/storage/toy/bicycle8.webp', 2, NULL, NULL),
(6, 'http://localhost:8000/storage/toy/carte a jouer2.jpg', 3, NULL, NULL),
(7, 'http://localhost:8000/storage/toy/carte a jouer1.webp', 3, NULL, NULL),
(8, 'http://localhost:8000/storage/toy/carte a jouer0.jpg', 3, NULL, NULL),
(9, 'http://localhost:8000/storage/toy/poupée rose0.jpg', 4, NULL, NULL),
(10, 'http://localhost:8000/storage/toy/poupée rose5.jpg', 4, NULL, NULL),
(11, 'http://localhost:8000/storage/toy/Toupie3.webp', 5, NULL, NULL),
(12, 'http://localhost:8000/storage/toy/Toupie4.jpg', 5, NULL, NULL),
(13, 'http://localhost:8000/storage/toy/Toupie7.jpg', 5, NULL, NULL),
(14, 'http://localhost:8000/storage/toy/Toupie7.jpg', 5, NULL, NULL),
(15, 'http://localhost:8000/storage/toy/carte pokemon1.jpg', 6, NULL, NULL),
(16, 'http://localhost:8000/storage/toy/Echec4.jpg', 7, NULL, NULL),
(17, 'http://localhost:8000/storage/toy/Echec8.jpg', 7, NULL, NULL),
(18, 'http://localhost:8000/storage/toy/Echec1.jpg', 7, NULL, NULL),
(19, 'http://localhost:8000/storage/toy/dominos10.jpg', 8, NULL, NULL),
(20, 'http://localhost:8000/storage/toy/dominos3.jpg', 8, NULL, NULL),
(21, 'http://localhost:8000/storage/toy/sabre laser4.jpg', 9, NULL, NULL),
(22, 'http://localhost:8000/storage/toy/sabre laser10.jpg', 9, NULL, NULL),
(23, 'http://localhost:8000/storage/toy/sabre laser1.jpg', 9, NULL, NULL),
(24, 'http://localhost:8000/storage/toy/fusil de chasse10.jpg', 10, NULL, NULL),
(25, 'http://localhost:8000/storage/toy/fusil de chasse2.png', 10, NULL, NULL),
(26, 'http://localhost:8000/storage/toy/Camion6.jpg', 11, NULL, NULL),
(27, 'http://localhost:8000/storage/toy/Camion6.jpg', 11, NULL, NULL),
(28, 'http://localhost:8000/storage/toy/Tank militaire2.jpg', 12, NULL, NULL),
(29, 'http://localhost:8000/storage/toy/Moto7.jpg', 13, NULL, NULL),
(30, 'http://localhost:8000/storage/toy/Moto2.jpg', 13, NULL, NULL),
(31, 'http://localhost:8000/storage/toy/Moto1.jpg', 13, NULL, NULL),
(32, 'http://localhost:8000/storage/toy/Avion0.png', 14, NULL, NULL),
(33, 'http://localhost:8000/storage/toy/Avion9.jpg', 14, NULL, NULL),
(34, 'http://localhost:8000/storage/toy/Avion4.jpg', 14, NULL, NULL),
(35, 'http://localhost:8000/storage/toy/Avion2.jpg', 14, NULL, NULL),
(36, 'http://localhost:8000/storage/toy/burger plastique10.jpg', 15, NULL, NULL),
(37, 'http://localhost:8000/storage/toy/burger plastique8.jpg', 15, NULL, NULL),
(38, 'http://localhost:8000/storage/toy/Chopper one piece7.jpg', 16, NULL, NULL),
(39, 'http://localhost:8000/storage/toy/Chopper one piece9.jpg', 16, NULL, NULL),
(40, 'http://localhost:8000/storage/toy/Chopper one piece2.jpg', 16, NULL, NULL),
(41, 'http://localhost:8000/storage/toy/Chopper one piece4.jpg', 16, NULL, NULL),
(42, 'http://localhost:8000/storage/toy/flash mcqueen0.jpg', 17, NULL, NULL),
(43, 'http://localhost:8000/storage/toy/flash mcqueen8.webp', 17, NULL, NULL),
(44, 'http://localhost:8000/storage/toy/flash mcqueen1.webp', 17, NULL, NULL),
(45, 'http://localhost:8000/storage/toy/trampoline5.jpg', 18, NULL, NULL),
(46, 'http://localhost:8000/storage/toy/trampoline9.jpg', 18, NULL, NULL),
(47, 'http://localhost:8000/storage/toy/trampoline4.jpg', 18, NULL, NULL),
(48, 'http://localhost:8000/storage/toy/dinosaure10.jpg', 19, NULL, NULL),
(49, 'http://localhost:8000/storage/toy/dinosaure3.jpg', 19, NULL, NULL),
(50, 'http://localhost:8000/storage/toy/harry potter1.webp', 20, NULL, NULL),
(51, 'http://localhost:8000/storage/toy/harry potter9.jpg', 20, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(2, '2022_09_10_102347_create_images_table', 1),
(3, '2022_09_10_102347_create_toys_table', 1),
(4, '2022_09_10_102347_create_users_table', 1),
(5, '2022_09_10_102348_add_foreign_keys_to_images_table', 1),
(6, '2022_09_10_102348_add_foreign_keys_to_toys_table', 1);

-- --------------------------------------------------------

--
-- Structure de la table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure de la table `toys`
--

CREATE TABLE `toys` (
  `toy_id` int(11) NOT NULL,
  `toy_name` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL,
  `exchange_to` char(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `toys`
--

INSERT INTO `toys` (`toy_id`, `toy_name`, `status`, `exchange_to`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'monopoly', 1, 'Uno', 1, NULL, NULL),
(2, 'bicycle', 0, 'moto', 2, NULL, NULL),
(3, 'carte a jouer', 1, 'arc', 3, NULL, NULL),
(4, 'poupée rose', 1, 'ballon', 4, NULL, NULL),
(5, 'Toupie', 0, 'guitare', 5, NULL, NULL),
(6, 'carte pokemon', 0, 'livre', 6, NULL, NULL),
(7, 'Echec', 1, 'jeu de dame', 7, NULL, NULL),
(8, 'dominos', 1, 'Cahier', 8, NULL, NULL),
(9, 'sabre laser', 1, 'pistolet', 4, NULL, NULL),
(10, 'fusil de chasse', 1, 'pistolet', 1, NULL, NULL),
(11, 'Camion', 1, 'formule', 6, NULL, NULL),
(12, 'Tank militaire', 0, 'formule', 6, NULL, NULL),
(13, 'Moto', 1, 'voiture', 9, NULL, NULL),
(14, 'Avion', 1, 'voiture', 9, NULL, NULL),
(15, 'burger plastique', 0, 'carte', 10, NULL, NULL),
(16, 'Chopper one piece', 1, 'Dragon ball Z', 6, NULL, NULL),
(17, 'flash mcqueen', 1, 'Camion', 8, NULL, NULL),
(18, 'trampoline', 1, 'bouée', 11, NULL, NULL),
(19, 'dinosaure', 0, 'serpent', 11, NULL, NULL),
(20, 'harry potter', 1, 'serpent', 11, NULL, NULL);

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` char(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `contact` bigint(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Déchargement des données de la table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `contact`, `created_at`, `updated_at`) VALUES
(1, 'Ismael', 261344523656, NULL, NULL),
(2, 'Johanne', 261348713773, NULL, NULL),
(3, 'Ando', 261342157401, NULL, NULL),
(4, 'Onimalala', 261349100323, NULL, NULL),
(5, 'Harena', 261345275202, NULL, NULL),
(6, 'Elisa', 261331254656, NULL, NULL),
(7, 'Moussa', 261321352465, NULL, NULL),
(8, 'Lendrema', 261385027232, NULL, NULL),
(9, 'Jacques', 261322578945, NULL, NULL),
(10, 'Jackie', 261345758757, NULL, NULL),
(11, 'Michel', 261341200099, NULL, NULL);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `images`
--
ALTER TABLE `images`
  ADD PRIMARY KEY (`image_id`),
  ADD UNIQUE KEY `image_id` (`image_id`),
  ADD KEY `FKimages733094` (`toy_id`);

--
-- Index pour la table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Index pour la table `toys`
--
ALTER TABLE `toys`
  ADD PRIMARY KEY (`toy_id`),
  ADD UNIQUE KEY `toy_id` (`toy_id`),
  ADD KEY `FKtoys121080` (`user_id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `user_id` (`user_id`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `images`
--
ALTER TABLE `images`
  MODIFY `image_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT pour la table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT pour la table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT pour la table `toys`
--
ALTER TABLE `toys`
  MODIFY `toy_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- Contraintes pour les tables déchargées
--

--
-- Contraintes pour la table `images`
--
ALTER TABLE `images`
  ADD CONSTRAINT `FKimages733094` FOREIGN KEY (`toy_id`) REFERENCES `toys` (`toy_id`);

--
-- Contraintes pour la table `toys`
--
ALTER TABLE `toys`
  ADD CONSTRAINT `FKtoys121080` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
