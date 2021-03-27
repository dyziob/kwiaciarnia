-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 20 Lis 2020, 10:47
-- Wersja serwera: 10.4.13-MariaDB
-- Wersja PHP: 7.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `kwiaciarnia`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zamowienia`
--

CREATE TABLE `zamowienia` (
  `id_zam` int(11) NOT NULL,
  `id_kwiaciarni` int(11) NOT NULL,
  `data` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `kwiaty` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `cena` float(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Zrzut danych tabeli `zamowienia`
--

INSERT INTO `zamowienia` (`id_zam`, `id_kwiaciarni`, `data`, `kwiaty`, `cena`) VALUES
(1, 1, '16.01.2017', 'róża', 250.00),
(2, 1, '10.01.2017', 'gerbera', 120.00),
(3, 2, '06.01.2017', 'róża', 200.00),
(4, 2, '09.01.2017', 'goździk', 170.00),
(5, 1, '07.01.2017', 'róża', 125.00),
(6, 1, '11.01.2017', 'róża', 75.00);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  ADD PRIMARY KEY (`id_zam`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `zamowienia`
--
ALTER TABLE `zamowienia`
  MODIFY `id_zam` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
