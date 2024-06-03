-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 09:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `szkola-sql`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `GetStudentsByClassSymbol` (IN `class_symbol` VARCHAR(10))   BEGIN
    SELECT Uczniowie.*
    FROM Klasy
    INNER JOIN Uczniowie ON Klasy.Symbol = Uczniowie.KlasaU
    WHERE Klasy.Symbol = class_symbol
    ORDER BY Uczniowie.Nazwisko, Uczniowie.Imie;
END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `klasy`
--

CREATE TABLE `klasy` (
  `Symbol` varchar(5) NOT NULL,
  `Profil` varchar(30) NOT NULL,
  `Wych` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `klasy`:
--   `Wych`
--       `nauczyciele` -> `IdN`
--

--
-- Dumping data for table `klasy`
--

INSERT INTO `klasy` (`Symbol`, `Profil`, `Wych`) VALUES
('Ia', 'Informatyka', 1),
('Ib', 'Matematyka', 3),
('Ic', 'Języki', NULL),
('Id', 'Historia', 4),
('Ie', 'Chemia', 7),
('If', 'Geografia', 5),
('IIa', 'Informat', 1),
('IIb', '', 3),
('IIc', 'Języki', NULL),
('IId', 'Historia', 4),
('IIe', 'Chemia', 7),
('IIf', 'Geografia', 5);

-- --------------------------------------------------------

--
-- Table structure for table `miasta`
--

CREATE TABLE `miasta` (
  `IdM` int(11) NOT NULL,
  `NazwaM` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `miasta`:
--

--
-- Dumping data for table `miasta`
--

INSERT INTO `miasta` (`IdM`, `NazwaM`) VALUES
(8, 'Brenna'),
(14, 'Brzeg'),
(9, 'Gdańsk'),
(10, 'Gdynia'),
(7, 'Janowice Wielkie'),
(3, 'Kołobrzeg'),
(2, 'Kraków'),
(6, 'Opole'),
(13, 'Oława'),
(12, 'Ustroń'),
(5, 'Warszawa'),
(1, 'Wrocław'),
(4, 'Ząbkowice dolne');

-- --------------------------------------------------------

--
-- Table structure for table `nauczyciele`
--

CREATE TABLE `nauczyciele` (
  `IdN` int(11) NOT NULL,
  `Nazwisko` varchar(255) NOT NULL,
  `Imie` varchar(255) NOT NULL,
  `DZatr` date NOT NULL DEFAULT current_timestamp(),
  `DUr` date DEFAULT NULL,
  `Plec` varchar(1) DEFAULT 'M',
  `Pensja` float DEFAULT 0,
  `Pensum` int(11) DEFAULT 0,
  `Telefon` varchar(12) DEFAULT NULL,
  `Premia` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `nauczyciele`:
--

--
-- Dumping data for table `nauczyciele`
--

INSERT INTO `nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES
(1, 'Koń', 'Piotr', '2024-02-02', '1999-08-01', 'M', 5860.5, 150, '123456789', NULL),
(2, 'Koń', 'Piotr', '2024-02-02', '1999-08-01', 'M', 6100.27, 90, '192846278', 128),
(3, 'Koń', 'Magda', '2015-05-17', '1985-01-22', 'K', 8100, 240, '295566133', 10.2),
(4, 'Wu', 'Jing', '2024-05-19', NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Kowalski', 'Paweł', '2024-03-11', '2000-12-19', 'M', 9.99, 60, '+48273829001', 2.5),
(6, 'Duży', 'Marek', '2024-03-12', '1999-11-11', 'M', 9930, 0, '+48927388229', NULL),
(7, 'Śliwka', 'Jan', '2024-01-29', '1999-10-20', 'M', 990, 30, '', NULL),
(8, 'Pepko', 'Jakub', '2023-01-11', '1997-12-21', 'M', 91.5, 210, NULL, NULL),
(9, 'Tutuj', 'Piotr', '2015-03-02', '1995-03-02', 'M', 4751.2, 30, '278374903', NULL),
(10, 'Logarski', 'Filip', '2018-01-12', '1991-05-03', 'M', 8010.1, 0, NULL, NULL),
(11, 'Mała', 'Magda', '2019-03-27', '1997-07-27', 'K', 603.09, 120, '', 1054),
(12, 'Maryjna', 'Maria', '2021-11-11', '2000-11-21', 'K', 991.61, 0, '+48928374855', NULL),
(13, 'Jakubek', 'Dominika', '2018-04-04', '1991-03-31', 'K', 5430.2, 150, '928392833', NULL),
(14, 'Wu', 'Pong', '2019-11-03', '1989-09-29', 'M', 5912.72, 0, NULL, NULL),
(15, 'Kowalski', 'Piotr', '2019-09-09', '2001-01-21', 'M', 9311, 0, NULL, NULL),
(16, 'Duża', 'Magda', '2018-03-11', '1985-12-14', 'K', 3899.12, 150, '293729331', NULL),
(17, 'Śliwka', 'Jakub', '2019-09-06', '1979-11-12', 'M', 5920.2, 0, '109930190', NULL),
(18, 'Pepko', 'Maja', '2013-03-23', '1995-05-25', 'K', 6210, 0, NULL, NULL),
(19, 'Tutuj', 'Sofia', '2018-10-29', '1990-07-27', 'K', 7011, 0, NULL, NULL),
(20, 'Kowalski', 'Bartosz', '2020-06-30', '1979-07-17', 'M', 10008.2, 120, '292203041', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `oceny`
--

CREATE TABLE `oceny` (
  `IdU` int(11) NOT NULL,
  `IdP` int(11) NOT NULL,
  `Ocena` float NOT NULL,
  `DataO` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `oceny`:
--   `IdU`
--       `uczniowie` -> `IdU`
--   `IdP`
--       `przedmioty` -> `IdP`
--

--
-- Dumping data for table `oceny`
--

INSERT INTO `oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES
(1, 1, 5, '2024-02-14'),
(1, 2, 5, '2024-02-14'),
(1, 3, 5, '2024-02-11'),
(1, 6, 4, '2024-02-12'),
(2, 1, 5, NULL),
(2, 2, 5, '2024-02-12'),
(9, 3, 2, '2024-02-12'),
(17, 1, 5, '2024-01-12'),
(17, 2, 4, '2024-01-14'),
(17, 3, 3, '2024-01-29'),
(17, 4, 3.5, '2024-02-23'),
(17, 5, 4.5, '2024-02-13'),
(17, 6, 3, '2024-05-25'),
(17, 7, 3.5, '2024-03-14'),
(17, 8, 5, '2024-04-04'),
(17, 9, 5, '2024-02-14'),
(17, 10, 4.5, '2024-03-13'),
(17, 11, 3, '2024-09-10'),
(19, 1, 4.5, '2024-01-14'),
(19, 2, 3, '2024-01-13'),
(19, 3, 4, '2024-01-29'),
(21, 6, 4.5, '2024-01-13'),
(21, 7, 5, '2024-01-10'),
(21, 8, 2, '2024-01-11'),
(22, 10, 4, '2024-01-09'),
(22, 11, 5, '2024-01-19'),
(25, 1, 5, NULL),
(25, 2, 5, '2024-01-11'),
(26, 3, 4, '2024-01-12'),
(26, 4, 3.5, '2024-01-12'),
(26, 5, 4, '2024-01-10');

-- --------------------------------------------------------

--
-- Table structure for table `przedmioty`
--

CREATE TABLE `przedmioty` (
  `IdP` int(11) NOT NULL,
  `NazwaP` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `przedmioty`:
--

--
-- Dumping data for table `przedmioty`
--

INSERT INTO `przedmioty` (`IdP`, `NazwaP`) VALUES
(5, 'Biologia'),
(3, 'Chemia'),
(11, 'Fitness'),
(9, 'Geografia'),
(4, 'Historia'),
(1, 'Informatyka'),
(7, 'Język Angielski'),
(8, 'Język Francuski'),
(6, 'Język Polski'),
(12, 'Kulturystyka'),
(2, 'Matematyka'),
(10, 'Taniec');

-- --------------------------------------------------------

--
-- Table structure for table `uczniowie`
--

CREATE TABLE `uczniowie` (
  `IdU` int(11) NOT NULL,
  `Nazwisko` varchar(30) NOT NULL,
  `Imie` varchar(30) NOT NULL,
  `DUr` date DEFAULT NULL,
  `Plec` varchar(1) DEFAULT NULL,
  `KlasaU` varchar(5) DEFAULT NULL,
  `MiastoU` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `uczniowie`:
--   `MiastoU`
--       `miasta` -> `IdM`
--   `KlasaU`
--       `klasy` -> `Symbol`
--

--
-- Dumping data for table `uczniowie`
--

INSERT INTO `uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES
(1, 'Kowalski', 'Jan', '2003-09-04', 'M', 'Ia', 1),
(2, 'Bieńko', 'Kasia', '2003-05-01', 'K', 'Ia', 3),
(3, 'Kowalski', 'Jakub', NULL, NULL, 'Ia', 1),
(4, 'Kowalski', 'Jan', '2003-02-27', 'M', 'Ia', 1),
(5, 'Duży', 'Dudek', NULL, NULL, NULL, NULL),
(6, 'Duży', 'Maksymilian', NULL, NULL, NULL, NULL),
(7, 'Mały', 'Piotrek', '2003-11-11', 'M', 'Ib', 2),
(8, 'Michalski', 'Michał', '2003-01-20', 'M', 'Ib', 3),
(9, 'Duda', 'Kamil', '2002-11-22', 'M', 'Ia', 2),
(10, 'Śliwka', 'Maksymilian', '2004-08-29', 'M', 'Ia', 10),
(11, 'Sliwiecki', 'Piotr', '2003-07-17', 'M', 'Ia', 5),
(12, 'Dudzicki', 'Paweł', '2002-01-01', 'M', 'Ia', 13),
(13, 'Marjecka', 'Maja', '2003-05-11', 'K', 'Ia', 6),
(14, 'Kowal', 'Magda', '2003-04-19', 'K', 'Ia', 14),
(15, 'Wu', 'Jing', '2003-02-22', 'M', 'Id', 7),
(16, 'Wu', 'Jan', '2003-11-22', 'M', 'Ia', 1),
(17, 'Nowak', 'Agnieszka', '2003-03-25', 'K', 'Ia', 1),
(18, 'Kamińska', 'Ewa', '2003-11-11', 'K', 'Ib', 6),
(19, 'Pawłowski', 'Paweł', '2003-11-17', 'M', 'Ia', 1),
(20, 'Grabowska', 'Dorota', '2003-01-18', 'K', 'Ib', 14),
(21, 'Michalski', 'Marek', '2002-12-18', 'M', 'Ia', 4),
(22, 'Wiśniewski', 'Piotr', '2004-06-09', 'M', 'Ia', 7),
(23, 'Wiśniewska', 'Maria', '2003-11-19', 'K', 'Ib', 9),
(24, 'Michalska', 'Magda', '2002-11-11', 'K', 'Ib', 10),
(25, 'Śliwka', 'Kinga', '2003-10-17', 'K', 'Ib', 2),
(26, 'Nowak', 'Maksymilian', '2004-12-22', 'M', 'Ia', 1),
(27, 'Dudzicka', 'Kinga', '2002-06-21', 'K', 'Ib', 1),
(28, 'Zając', 'Robert', '2003-12-22', 'M', 'Ia', 1),
(29, 'Woźniak', 'Zuzanna', '2003-10-17', 'K', 'Id', 2),
(30, 'Woźniak', 'Zygmunt', '2003-03-03', 'M', 'Id', 7),
(31, 'Jóźwiak', 'Magda', '2003-04-04', 'K', 'Id', 10),
(32, 'Kaczor', 'Mikołaj', '2002-12-12', 'M', 'Ie', 1),
(33, 'Sarnik', 'Bartosz', '2001-09-11', 'M', 'Ie', 2),
(34, 'Marysiok', 'Jakub', '2003-03-30', 'M', 'Ie', 3),
(35, 'Banaszak', 'Bianka', '2002-10-30', 'K', 'Ie', 4),
(36, 'Miś', 'Magda', '2005-05-25', 'K', 'If', 5),
(37, 'Sobiesiak', 'Piotr', '2002-03-24', 'M', 'If', 5),
(38, 'Kubczak', 'Kacper', '2001-03-24', 'M', 'If', 6),
(39, 'Matusiak', 'Weronika', '2003-02-24', 'K', 'If', 7),
(40, 'Czapaluk', 'Paula', '2002-10-12', 'K', 'IIc', 9),
(41, 'Krzęćko', 'Paula', '2004-04-11', 'K', 'Ic', 10),
(42, 'radomski', 'Adam', '2003-01-01', 'M', 'Ic', 1),
(43, 'Krygiel', 'Piotr', '2003-03-05', 'M', 'Ic', 1),
(44, 'Górecki', 'Kornel', '2004-04-06', 'M', 'Ic', 13),
(45, 'Grabski', 'Mikołaj', '2003-03-17', 'M', 'Ic', 1),
(46, 'Ciemiecka', 'Weronika', '2004-09-03', 'K', 'IIa', 9),
(47, 'STUDZIAŃSKI', 'Paweł', '2002-05-08', 'M', 'IIa', 2),
(48, 'poprawski', 'Michał', '2002-09-17', 'M', 'IIa', 3),
(49, 'Jakimowicz', 'Jan', '2002-12-23', 'M', 'IIa', 1),
(50, 'Józefiak', 'Jędrzej', '2003-06-05', 'M', 'IIa', 1),
(51, 'wachowiak', 'Paweł', '2003-10-12', 'M', 'Ic', 1),
(52, 'soborak', 'Krystian', '2004-01-29', 'M', 'Ic', 1),
(53, 'sałajczyk', 'Kamil', '2004-07-14', 'M', 'Id', 1),
(54, 'ptaszek', 'Piotr', '2003-03-19', 'M', 'Ie', 2),
(55, 'pasiut', 'Wiktoria', '2002-11-25', 'K', 'Ie', 10),
(56, 'Binek', 'Leon', '2004-08-06', 'M', 'If', 9),
(57, 'Kowalski', 'Paweł', '2002-04-30', 'M', 'If', 9),
(58, 'mały', 'Paweł', '2003-12-11', 'M', 'IIa', 10),
(59, 'Kaczor', 'Donald', '2003-09-22', 'M', 'IIa', 6),
(60, 'Maksanta', 'Roksana', '2004-01-07', 'K', 'Ia', 6),
(61, 'Czapaluk', 'Anastazja', NULL, NULL, 'IIa', 9);

-- --------------------------------------------------------

--
-- Table structure for table `uczy`
--

CREATE TABLE `uczy` (
  `IdN` int(11) NOT NULL,
  `IdP` int(11) NOT NULL,
  `IleGodz` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- RELATIONSHIPS FOR TABLE `uczy`:
--   `IdN`
--       `nauczyciele` -> `IdN`
--   `IdP`
--       `przedmioty` -> `IdP`
--

--
-- Dumping data for table `uczy`
--

INSERT INTO `uczy` (`IdN`, `IdP`, `IleGodz`) VALUES
(3, 1, 8),
(3, 2, 12),
(5, 1, 1),
(6, 9, 1),
(8, 7, 6),
(8, 8, 8),
(11, 9, 1),
(12, 7, 1),
(16, 1, 3),
(16, 2, 1),
(16, 3, 8),
(16, 4, 2),
(16, 5, 3),
(16, 6, 2),
(16, 7, 2),
(16, 8, 2),
(16, 9, 3),
(16, 10, 3),
(16, 11, 4),
(18, 5, 8),
(20, 10, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klasy`
--
ALTER TABLE `klasy`
  ADD PRIMARY KEY (`Symbol`),
  ADD KEY `Wych` (`Wych`);

--
-- Indexes for table `miasta`
--
ALTER TABLE `miasta`
  ADD PRIMARY KEY (`IdM`),
  ADD UNIQUE KEY `NazwaM` (`NazwaM`),
  ADD KEY `IdM` (`IdM`);

--
-- Indexes for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  ADD PRIMARY KEY (`IdN`);

--
-- Indexes for table `oceny`
--
ALTER TABLE `oceny`
  ADD PRIMARY KEY (`IdU`,`IdP`),
  ADD KEY `IdP` (`IdP`);

--
-- Indexes for table `przedmioty`
--
ALTER TABLE `przedmioty`
  ADD PRIMARY KEY (`IdP`),
  ADD UNIQUE KEY `NazwaP` (`NazwaP`);

--
-- Indexes for table `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD PRIMARY KEY (`IdU`),
  ADD KEY `Nazwisko` (`Nazwisko`),
  ADD KEY `Nazwisko_2` (`Nazwisko`,`Imie`),
  ADD KEY `KlasaU` (`KlasaU`,`MiastoU`),
  ADD KEY `MiastoU` (`MiastoU`);

--
-- Indexes for table `uczy`
--
ALTER TABLE `uczy`
  ADD PRIMARY KEY (`IdN`,`IdP`),
  ADD KEY `IdN` (`IdN`),
  ADD KEY `IdP` (`IdP`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `miasta`
--
ALTER TABLE `miasta`
  MODIFY `IdM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `nauczyciele`
--
ALTER TABLE `nauczyciele`
  MODIFY `IdN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `przedmioty`
--
ALTER TABLE `przedmioty`
  MODIFY `IdP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `uczniowie`
--
ALTER TABLE `uczniowie`
  MODIFY `IdU` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `klasy`
--
ALTER TABLE `klasy`
  ADD CONSTRAINT `klasy_ibfk_1` FOREIGN KEY (`Wych`) REFERENCES `nauczyciele` (`IdN`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `oceny`
--
ALTER TABLE `oceny`
  ADD CONSTRAINT `oceny_ibfk_1` FOREIGN KEY (`IdU`) REFERENCES `uczniowie` (`IdU`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `oceny_ibfk_2` FOREIGN KEY (`IdP`) REFERENCES `przedmioty` (`IdP`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `uczniowie`
--
ALTER TABLE `uczniowie`
  ADD CONSTRAINT `uczniowie_ibfk_1` FOREIGN KEY (`MiastoU`) REFERENCES `miasta` (`IdM`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `uczniowie_ibfk_2` FOREIGN KEY (`KlasaU`) REFERENCES `klasy` (`Symbol`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `uczy`
--
ALTER TABLE `uczy`
  ADD CONSTRAINT `uczy_ibfk_1` FOREIGN KEY (`IdN`) REFERENCES `nauczyciele` (`IdN`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `uczy_ibfk_2` FOREIGN KEY (`IdP`) REFERENCES `przedmioty` (`IdP`) ON DELETE NO ACTION ON UPDATE NO ACTION;


--
-- Metadata
--
USE `phpmyadmin`;

--
-- Metadata for table klasy
--

--
-- Metadata for table miasta
--

--
-- Metadata for table nauczyciele
--

--
-- Metadata for table oceny
--

--
-- Metadata for table przedmioty
--

--
-- Metadata for table uczniowie
--

--
-- Metadata for table uczy
--

--
-- Metadata for database szkola-sql
--

--
-- Dumping data for table `pma__bookmark`
--

INSERT INTO `pma__bookmark` (`dbase`, `user`, `label`, `query`) VALUES
('szkola-sql', '', 'L2z01_Uczniowie_klas_1-3', 'SELECT Uczniowie.Nazwisko, Uczniowie.Imie, Uczniowie.IdU, Klasy.Symbol\r\nFROM Klasy\r\nINNER JOIN Uczniowie ON Klasy.Symbol = Uczniowie.KlasaU\r\nWHERE Klasy.Symbol LIKE \'I%\' OR Klasy.Symbol LIKE \'II%\' OR Klasy.Symbol LIKE \'III%\';'),
('szkola-sql', '', 'L2z02_Uczniowe_klas_2_miasta_C-P', 'SELECT Uczniowie.IdU, Uczniowie.Nazwisko, Uczniowie.Imie, Uczniowie.DUr, Uczniowie.Plec, Klasy.Symbol, Miasta.NazwaM\r\nFROM Klasy\r\nINNER JOIN Uczniowie ON Klasy.Symbol = Uczniowie.KlasaU\r\nINNER JOIN Miasta ON Miasta.IdM = Uczniowie.MiastoU\r\nWHERE Klasy.Symbol LIKE \'II%\' AND Miasta.NazwaM REGEXP \'^[C-P]\'\r\nORDER BY Uczniowie.Nazwisko, Uczniowie.Imie;'),
('szkola-sql', '', 'L2z04_Nauczyciele_od_1-03-2020', 'SELECT Nauczyciele.IdN, Nauczyciele.Nazwisko, Nauczyciele.Imie, Nauczyciele.DZatr, Nauczyciele.DUr, Nauczyciele.Plec, Nauczyciele.Pensja, Nauczyciele.Pensum, Nauczyciele.Telefon, Nauczyciele.Premia\r\nFROM Nauczyciele\r\nWHERE Nauczyciele.DZatr >= \'2020-03-01\';'),
('szkola-sql', '', 'L2z06_Nauczyciele_sortowani', 'SELECT Nauczyciele.*\r\nFROM Nauczyciele\r\nORDER BY Nauczyciele.Nazwisko, Nauczyciele.Imie, Nauczyciele.DUr DESC;'),
('szkola-sql', '', 'L2z11_Ucziowie_Brzeg_Oława', 'SELECT Uczniowie.IdU AS Numer, Uczniowie.Nazwisko, Uczniowie.Imie, Miasta.NazwaM\r\nFROM Miasta\r\nINNER JOIN Uczniowie ON Miasta.IdM = Uczniowie.MiastoU\r\nWHERE Miasta.NazwaM IN (\'Brzeg\', \'Oława\', \'Brzeg dolny\');'),
('szkola-sql', '', 'L2z12_Miasta_z_uczniami', 'SELECT Miasta.NazwaM\r\nFROM Miasta INNER JOIN Uczniowie ON Miasta.IdM = Uczniowie.MiastoU\r\nGROUP BY Miasta.NazwaM;\r\n'),
('szkola-sql', '', 'L2z14_Ilosc_uczniow_z_miast', 'SELECT Miasta.NazwaM, COUNT(Uczniowie.IdU) AS Liczba_Uczniow\r\nFROM Miasta\r\nLEFT JOIN Uczniowie ON Miasta.IdM = Uczniowie.MiastoU\r\nGROUP BY Miasta.NazwaM\r\nORDER BY Liczba_Uczniow DESC;'),
('szkola-sql', '', 'L2z20_z_ilu_przedmiotow_uczen_ma_ocene', 'SELECT Uczniowie.IdU, Uczniowie.Nazwisko, Uczniowie.Imie, COUNT(Oceny.IdP) AS Liczba_Przedmiotow\r\nFROM Uczniowie\r\nINNER JOIN Oceny ON Uczniowie.IdU = Oceny.IdU\r\nGROUP BY Uczniowie.IdU, Uczniowie.Nazwisko, Uczniowie.Imie\r\nORDER BY Liczba_Przedmiotow DESC;'),
('szkola-sql', '', 'L2z23_Nagroda_dochód', 'SELECT \r\n    CONCAT(Nazwisko, \' \', Imie) AS `Nazwisko i imię`, \r\n    Pensja, \r\n    ROUND(Pensja * 0.2, 2) AS Nagroda, \r\n    ROUND(Pensja * 1.2, 2) AS Dochód\r\nFROM Nauczyciele\r\nORDER BY ROUND(Pensja * 1.2, 2) DESC, CONCAT(Nazwisko, \' \', Imie);'),
('szkola-sql', '', 'L2z09_Uczniowie_srednia_ocen', 'SELECT Uczniowie.IdU, Uczniowie.Nazwisko, Uczniowie.Imie, ROUND(AVG(Oceny.Ocena),2) AS Średnia_ocen\r\nFROM Uczniowie\r\nINNER JOIN Oceny ON Uczniowie.IdU = Oceny.IdU\r\nGROUP BY Uczniowie.IdU, Uczniowie.Nazwisko, Uczniowie.Imie;');

--
-- Dumping data for table `pma__pdf_pages`
--

INSERT INTO `pma__pdf_pages` (`db_name`, `page_descr`) VALUES
('szkola-sql', 'Diagram_Relacji');

SET @LAST_PAGE = LAST_INSERT_ID();

--
-- Dumping data for table `pma__table_coords`
--

INSERT INTO `pma__table_coords` (`db_name`, `table_name`, `pdf_page_number`, `x`, `y`) VALUES
('szkola-sql', 'klasy', @LAST_PAGE, 335, 40),
('szkola-sql', 'miasta', @LAST_PAGE, 343, 230),
('szkola-sql', 'nauczyciele', @LAST_PAGE, 546, 67),
('szkola-sql', 'oceny', @LAST_PAGE, 53, 435),
('szkola-sql', 'przedmioty', @LAST_PAGE, 278, 477),
('szkola-sql', 'uczniowie', @LAST_PAGE, 108, 37),
('szkola-sql', 'uczy', @LAST_PAGE, 523, 465);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
