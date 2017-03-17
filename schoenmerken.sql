-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 mrt 2017 om 13:50
-- Serverversie: 5.7.14
-- PHP-versie: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `schoenmerken`
--

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `schoenen`
--

CREATE TABLE `schoenen` (
  `id` int(11) NOT NULL,
  `name` varchar(1024) NOT NULL,
  `feetsize` varchar(1024) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `schoenen`
--

INSERT INTO `schoenen` (`id`, `name`, `feetsize`, `quantity`) VALUES
(1, 'Nike', '38', 20),
(2, 'Adidas', '38', 15),
(3, 'Crocs', '40', 5),
(4, 'Sandalen ', '34', 1),
(5, 'Puma', '30', 30),
(6, 'Hello kity', '28', 15);

-- --------------------------------------------------------

--
-- Tabelstructuur voor tabel `size`
--

CREATE TABLE `size` (
  `id` int(11) NOT NULL,
  `size` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `size`
--

INSERT INTO `size` (`id`, `size`) VALUES
(1, 32),
(2, 30),
(3, 34),
(4, 36),
(5, 38),
(6, 40),
(7, 42),
(8, 44),
(9, 37),
(10, 39),
(11, 41),
(12, 43);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `schoenen`
--
ALTER TABLE `schoenen`
  ADD PRIMARY KEY (`id`);

--
-- Indexen voor tabel `size`
--
ALTER TABLE `size`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `schoenen`
--
ALTER TABLE `schoenen`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT voor een tabel `size`
--
ALTER TABLE `size`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
