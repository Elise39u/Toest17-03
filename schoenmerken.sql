-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Gegenereerd op: 17 mrt 2017 om 08:15
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
-- Tabelstructuur voor tabel `sort`
--

CREATE TABLE `sort` (
  `id` int(11) NOT NULL,
  `Name` varchar(1024) NOT NULL,
  `feetsize` varchar(1024) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Gegevens worden geëxporteerd voor tabel `sort`
--

INSERT INTO `sort` (`id`, `Name`, `feetsize`, `quantity`) VALUES
(1, 'Nike', '38', 20),
(2, 'Adidas', '38', 15),
(3, 'Crocs', '40', 5),
(4, 'Sandalen ', '34', 1),
(5, 'Puma', '30', 30),
(6, 'Hello kity', '28', 15);

--
-- Indexen voor geëxporteerde tabellen
--

--
-- Indexen voor tabel `sort`
--
ALTER TABLE `sort`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT voor geëxporteerde tabellen
--

--
-- AUTO_INCREMENT voor een tabel `sort`
--
ALTER TABLE `sort`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
