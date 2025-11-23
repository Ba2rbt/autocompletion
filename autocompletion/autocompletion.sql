-- phpMyAdmin SQL Dump
-- version 6.0.0-dev+20250718.d42db65a1e
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Nov 23, 2025 at 07:24 PM
-- Server version: 8.4.3
-- PHP Version: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `autocompletion`
--

-- --------------------------------------------------------

--
-- Table structure for table `pokemon`
--

CREATE TABLE `pokemon` (
  `id` int NOT NULL,
  `nom` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `image_url` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `numero` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pokemon`
--

INSERT INTO `pokemon` (`id`, `nom`, `type`, `description`, `image_url`, `numero`) VALUES
(1, 'Pikachu', 'Électrique', 'Un pokémon de type électrique très populaire avec une queue en éclair', 'pikachu.jpg', 25),
(2, 'Charizard', 'Feu/Vol', 'Un puissant pokémon de type feu capable de cracher du feu', 'charizard.jpg', 6),
(3, 'Blastoise', 'Eau', 'Un pokémon de type eau avec deux canons à eau sur sa carapace', 'blastoise.jpg', 9),
(4, 'Venusaur', 'Plante/Poison', 'Un pokémon herbivore avec une fleur sur le dos', 'venusaur.jpg', 3),
(5, 'Dragonite', 'Dragon/Vol', 'Un puissant pokémon dragon doté de deux grandes ailes', 'dragonite.jpg', 149),
(6, 'Gyarados', 'Eau/Vol', 'Un grand pokémon aquatique avec une mâchoire imposante', 'gyarados.jpg', 130),
(7, 'Alakazam', 'Psy', 'Un pokémon avec une intelligence exceptionnelle et des pouvoirs psychiques', 'alakazam.jpg', 65),
(8, 'Machamp', 'Combat', 'Un pokémon de combat avec quatre bras puissants', 'machamp.jpg', 68),
(9, 'Gengar', 'Spectre/Poison', 'Un pokémon spectral capable de se cacher dans les ombres', 'gengar.jpg', 94),
(10, 'Arcanine', 'Feu', 'Un pokémon ressemblant à un chien de feu très rapide', 'arcanine.jpg', 59),
(11, 'Lapras', 'Eau/Glace', 'Un grand pokémon aquatique pacifique pouvant transporter les gens', 'lapras.jpg', 131),
(12, 'Snorlax', 'Normal', 'Un gros pokémon qui adore manger et dormir', 'snorlax.jpg', 143),
(13, 'Articuno', 'Glace/Vol', 'Un légendaire pokémon de glace avec des ailes de glaçon', 'articuno.jpg', 144),
(14, 'Zapdos', 'Électrique/Vol', 'Un légendaire pokémon électrique qui contrôle les tempêtes', 'zapdos.jpg', 145),
(15, 'Moltres', 'Feu/Vol', 'Un légendaire pokémon de feu avec un plumage en flammes', 'moltres.jpg', 146),
(16, 'Mewtwo', 'Psy', 'Un pokémon créé par l\'homme avec des pouvoirs psychiques surpuissants', 'mewtwo.jpg', 150),
(17, 'Mew', 'Psy', 'Un pokémon légendaire rose avec des capacités de tous les types', 'mew.jpg', 151),
(18, 'Raichu', 'Électrique', 'L\'évolution de Pikachu avec plus de puissance électrique', 'raichu.jpg', 26),
(19, 'Golem', 'Roche/Sol', 'Un pokémon de pierre capable de rouler à grande vitesse', 'golem.jpg', 76),
(20, 'Arbok', 'Poison', 'Un grand serpent pokémon avec un motif de crâne sur le dos', 'arbok.jpg', 24),
(21, 'Sandking', 'Sol', 'Un pokémon ressemblant à un scorpion du désert', 'sandking.jpg', 28),
(22, 'Kingler', 'Eau', 'Un pokémon de type crustacé avec de grandes pinces', 'kingler.jpg', 99);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pokemon`
--
ALTER TABLE `pokemon`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `numero` (`numero`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pokemon`
--
ALTER TABLE `pokemon`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
