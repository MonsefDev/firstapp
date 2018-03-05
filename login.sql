-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Client :  127.0.0.1
-- Généré le :  Lun 05 Mars 2018 à 17:18
-- Version du serveur :  10.1.21-MariaDB
-- Version de PHP :  7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données :  `login`
--

-- --------------------------------------------------------

--
-- Structure de la table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `user`
--

INSERT INTO `user` (`id`, `username`, `password`) VALUES
(1, 'admin', 'admin'),
(2, 'admin', 'admin');

-- --------------------------------------------------------

--
-- Structure de la table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Contenu de la table `users`bi 
--

INSERT INTO `users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', '$2y$10$Vv9aUQNfWsDttdfN/PyEDOTcnd9rr5BX.AdySdbAIochi.kidwOJu', '2018-03-04 19:50:00'),
(2, 'monsef', '$2y$10$ynkzENlVSW.A34Ur9etUFOWRZajSEap40c.Cy0Oo/3eYeSNlkdNAq', '2018-03-04 19:56:10'),
(3, 'me', '$2y$10$WKjpotN0H9BhR68LLQ00A.ytaWKtMe6FUKdXpQSEnwsjmhTJgJBKu', '2018-03-05 10:53:02'),
(4, 'kira', '$2y$10$JDRVtKy24YhT8cCGJNSleOCRCBCK3cLXncslWobhGRYoahPs4LKT2', '2018-03-05 12:58:43'),
(5, 'marc', '$2y$10$5k0wgHBA5lXr6OQ.9Fa8.u0muN0a3n2m4S3azapEenzOMJ6tCwOqG', '2018-03-05 13:41:23'),
(6, 'adil', '$2y$10$g/ouxI0R0jaMi/yMOfICfOebqDzgyWeDL1fiL1rxER.VV483MN/WS', '2018-03-05 13:44:05'),
(7, 'iamd', '$2y$10$ECmJpVp5WhoeX4j30x0PpuYA71Degx8lscg.AEGR.GUhA5TWujdZK', '2018-03-05 13:46:30'),
(8, 'sqsqs', '$2y$10$PvbQzPJZD7WF/SuZRBkPdeHGIIBmx.XVWH8defV7NHWhz2V1FgVWy', '2018-03-05 13:49:50'),
(9, 'aqsws', '$2y$10$inKy3HmcJ4ToBwP3pkUNdOGD8lcK0dKTBruvm0tTEqeLXZ8IgUo3C', '2018-03-05 13:50:50'),
(10, 'wqwqa', '$2y$10$Aoewo.BqYiEkztCBHe5.HuaC/w.EZlmBsAVchsJNPNv5jMnKAXKOi', '2018-03-05 13:52:54'),
(11, 'kattss', '$2y$10$ZOveK3Ua4Lfs0z1moURbQ.nNFYausUpv6DsAUPiCc3iwWyAI8va16', '2018-03-05 15:32:11'),
(12, 'kttss', '$2y$10$5XSDh3OZiA4s7Hrpw0gdvumxWoB2Xl1paWRwigi7eEXlVbc/BuqDK', '2018-03-05 15:33:23');

--
-- Index pour les tables exportées
--

--
-- Index pour la table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT pour les tables exportées
--

--
-- AUTO_INCREMENT pour la table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT pour la table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
