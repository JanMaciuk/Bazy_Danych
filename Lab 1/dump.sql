#
# DUMP FILE
#
# Database is ported from MS Access
#------------------------------------------------------------------
# Created using "MS Access to MySQL" form http://www.bullzip.com
# Program Version 5.5.282
#
# OPTIONS:
#   sourcefilename=E:/Programy/Bazy/Szkola-kopia.accdb
#   sourceusername=
#   sourcepassword=
#   sourcesystemdatabase=
#   destinationdatabase=Szkola-Sql
#   storageengine=InnoDB
#   dropdatabase=0
#   createtables=1
#   unicode=1
#   autocommit=1
#   transferdefaultvalues=1
#   transferindexes=1
#   transferautonumbers=1
#   transferrecords=1
#   columnlist=1
#   tableprefix=
#   negativeboolean=0
#   ignorelargeblobs=0
#   memotype=
#   datetimetype=
#

CREATE DATABASE IF NOT EXISTS `Szkola-Sql`;
USE `Szkola-Sql`;

#
# Table structure for table 'Archiwum'
#

DROP TABLE IF EXISTS `Archiwum`;

CREATE TABLE `Archiwum` (
  `IdN` INTEGER AUTO_INCREMENT, 
  `Nazwisko` VARCHAR(30), 
  `Imie` VARCHAR(255), 
  `DZatr` DATETIME, 
  `DUr` DATETIME, 
  `Plec` VARCHAR(1), 
  `Pensja` FLOAT NULL, 
  `Pensum` INTEGER, 
  `Telefon` VARCHAR(12), 
  `Premia` FLOAT NULL, 
  UNIQUE (`IdN`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Archiwum'
#

# 0 records

#
# Table structure for table 'Klasy'
#

DROP TABLE IF EXISTS `Klasy`;

CREATE TABLE `Klasy` (
  `Symbol` VARCHAR(5) NOT NULL, 
  `Profil` VARCHAR(30) NOT NULL, 
  `Wych` INTEGER, 
  PRIMARY KEY (`Symbol`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Klasy'
#

INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('Ia', 'Informatyka', 1);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('Ib', 'Matematyka', 3);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('Ic', 'Języki', NULL);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('Id', 'Historia', 4);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('Ie', 'Chemia', 7);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('If', 'Geografia', 5);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IIa', 'Informat', 1);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IIb', '', 3);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IIc', 'Języki', NULL);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IId', 'Historia', 4);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IIe', 'Chemia', 7);
INSERT INTO `Klasy` (`Symbol`, `Profil`, `Wych`) VALUES ('IIf', 'Geografia', 5);
# 12 records

#
# Table structure for table 'Miasta'
#

DROP TABLE IF EXISTS `Miasta`;

CREATE TABLE `Miasta` (
  `IdM` INTEGER NOT NULL AUTO_INCREMENT, 
  `NazwaM` VARCHAR(30) NOT NULL, 
  UNIQUE (`NazwaM`), 
  PRIMARY KEY (`IdM`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Miasta'
#

INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (1, 'Wrocław');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (2, 'Kraków');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (3, 'Kołobrzeg');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (4, 'Ząbkowice dolne');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (5, 'Warszawa');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (6, 'Opole');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (7, 'Janowice Wielkie');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (8, 'Brenna');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (9, 'Gdańsk');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (10, 'Gdynia');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (12, 'Ustroń');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (13, 'Oława');
INSERT INTO `Miasta` (`IdM`, `NazwaM`) VALUES (14, 'Brzeg');
# 13 records

#
# Table structure for table 'Nauczyciele'
#

DROP TABLE IF EXISTS `Nauczyciele`;

CREATE TABLE `Nauczyciele` (
  `IdN` INTEGER NOT NULL AUTO_INCREMENT, 
  `Nazwisko` VARCHAR(30) NOT NULL, 
  `Imie` VARCHAR(255) NOT NULL, 
  `DZatr` TIMESTAMP DEFAULT CURRENT_TIMESTAMP, 
  `DUr` DATETIME, 
  `Plec` VARCHAR(1) DEFAULT 'M', 
  `Pensja` FLOAT NULL DEFAULT 0, 
  `Pensum` INTEGER DEFAULT 0, 
  `Telefon` VARCHAR(12), 
  `Premia` FLOAT NULL, 
  PRIMARY KEY (`IdN`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Nauczyciele'
#

INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (1, 'Koń', 'Piotr', '2024-02-02 00:00:00', '1999-08-01 00:00:00', 'M', 5860.5, 150, '123456789', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (2, 'Koń', 'Piotr', '2024-02-02 00:00:00', '1999-08-01 00:00:00', 'M', 6100.27, 90, '192846278', 128);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (3, 'Koń', 'Magda', '2015-05-17 00:00:00', '1985-01-22 00:00:00', 'K', 8100, 240, '295566133', 10.2);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (4, 'Wu', 'Jing', NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (5, 'Kowalski', 'Paweł', '2024-03-11 00:00:00', '2000-12-19 00:00:00', 'M', 9.99, 60, '+48273829001', 2.5);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (6, 'Duży', 'Marek', '2024-03-12 00:00:00', '1999-11-11 00:00:00', 'M', 9930, 0, '+48927388229', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (7, 'Śliwka', 'Jan', '2024-01-29 00:00:00', '1999-10-20 00:00:00', 'M', 990, 30, '', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (8, 'Pepko', 'Jakub', '2023-01-11 00:00:00', '1997-12-21 00:00:00', 'M', 91.5, 210, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (9, 'Tutuj', 'Piotr', '2015-03-02 00:00:00', '1995-03-02 00:00:00', 'M', 4751.2, 30, '278374903', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (10, 'Logarski', 'Filip', '2018-01-12 00:00:00', '1991-05-03 00:00:00', 'M', 8010.1, 0, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (11, 'Mała', 'Magda', '2019-03-27 00:00:00', '1997-07-27 00:00:00', 'K', 603.09, 120, '', 1054);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (12, 'Maryjna', 'Maria', '2021-11-11 00:00:00', '2000-11-21 00:00:00', 'K', 991.61, 0, '+48928374855', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (13, 'Jakubek', 'Dominika', '2018-04-04 00:00:00', '1991-03-31 00:00:00', 'K', 5430.2, 150, '928392833', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (14, 'Wu', 'Pong', '2019-11-03 00:00:00', '1989-09-29 00:00:00', 'M', 5912.72, 0, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (15, 'Kowalski', 'Piotr', '2019-09-09 00:00:00', '2001-01-21 00:00:00', 'M', 9311, 0, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (16, 'Duża', 'Magda', '2018-03-11 00:00:00', '1985-12-14 00:00:00', 'K', 3899.12, 150, '293729331', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (17, 'Śliwka', 'Jakub', '2019-09-06 00:00:00', '1979-11-12 00:00:00', 'M', 5920.2, 0, '109930190', NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (18, 'Pepko', 'Maja', '2013-03-23 00:00:00', '1995-05-25 00:00:00', 'K', 6210, 0, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (19, 'Tutuj', 'Sofia', '2018-10-29 00:00:00', '1990-07-27 00:00:00', 'K', 7011, 0, NULL, NULL);
INSERT INTO `Nauczyciele` (`IdN`, `Nazwisko`, `Imie`, `DZatr`, `DUr`, `Plec`, `Pensja`, `Pensum`, `Telefon`, `Premia`) VALUES (20, 'Kowalski', 'Bartosz', '2020-06-30 00:00:00', '1979-07-17 00:00:00', 'M', 10008.25, 120, '292203041', NULL);
# 20 records

#
# Table structure for table 'Oceny'
#

DROP TABLE IF EXISTS `Oceny`;

CREATE TABLE `Oceny` (
  `IdU` INTEGER NOT NULL, 
  `IdP` INTEGER NOT NULL, 
  `Ocena` FLOAT NOT NULL, 
  `DataO` DATETIME, 
  INDEX (`IdP`), 
  PRIMARY KEY (`IdU`, `IdP`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Oceny'
#

INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (1, 1, 5, '2024-02-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (1, 2, 5, '2024-02-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (1, 3, 5, '2024-02-11 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (1, 6, 4, '2024-02-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (2, 1, 5, NULL);
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (2, 2, 5, '2024-02-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (9, 3, 2, '2024-02-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 1, 5, '2024-01-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 2, 4, '2024-01-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 3, 3, '2024-01-29 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 4, 3.5, '2024-02-23 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 5, 4.5, '2024-02-13 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 6, 3, '2024-05-25 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 7, 3.5, '2024-03-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 8, 5, '2024-04-04 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 9, 5, '2024-02-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 10, 4.5, '2024-03-13 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (17, 11, 3, '2024-09-10 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (19, 1, 4.5, '2024-01-14 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (19, 2, 3, '2024-01-13 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (19, 3, 4, '2024-01-29 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (21, 6, 4.5, '2024-01-13 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (21, 7, 5, '2024-01-10 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (21, 8, 2, '2024-01-11 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (22, 10, 4, '2024-01-09 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (22, 11, 5, '2024-01-19 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (25, 1, 5, NULL);
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (25, 2, 5, '2024-01-11 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (26, 3, 4, '2024-01-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (26, 4, 3.5, '2024-01-12 00:00:00');
INSERT INTO `Oceny` (`IdU`, `IdP`, `Ocena`, `DataO`) VALUES (26, 5, 4, '2024-01-10 00:00:00');
# 31 records

#
# Table structure for table 'Przedmioty'
#

DROP TABLE IF EXISTS `Przedmioty`;

CREATE TABLE `Przedmioty` (
  `IdP` INTEGER NOT NULL AUTO_INCREMENT, 
  `NazwaP` VARCHAR(30) NOT NULL, 
  UNIQUE (`NazwaP`), 
  PRIMARY KEY (`IdP`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Przedmioty'
#

INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (1, 'Informatyka');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (2, 'Matematyka');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (3, 'Chemia');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (4, 'Historia');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (5, 'Biologia');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (6, 'Język Polski');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (7, 'Język Angielski');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (8, 'Język Francuski');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (9, 'Geografia');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (10, 'Taniec');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (11, 'Fitness');
INSERT INTO `Przedmioty` (`IdP`, `NazwaP`) VALUES (12, 'Kulturystyka');
# 12 records

#
# Table structure for table 'Uczniowie'
#

DROP TABLE IF EXISTS `Uczniowie`;

CREATE TABLE `Uczniowie` (
  `IdU` INTEGER NOT NULL AUTO_INCREMENT, 
  `Nazwisko` VARCHAR(30) NOT NULL, 
  `Imie` VARCHAR(30) NOT NULL, 
  `DUr` DATETIME, 
  `Plec` VARCHAR(1), 
  `KlasaU` VARCHAR(5), 
  `MiastoU` INTEGER, 
  INDEX (`Nazwisko`), 
  INDEX (`Nazwisko`, `Imie`), 
  PRIMARY KEY (`IdU`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Uczniowie'
#

INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (1, 'Kowalski', 'Jan', '2003-09-04 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (2, 'Bieńko', 'Kasia', '2003-05-01 00:00:00', 'K', 'Ia', 3);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (3, 'Kowalski', 'Jakub', NULL, NULL, 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (4, 'Kowalski', 'Jan', '2003-02-27 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (5, 'Duży', 'Dudek', NULL, NULL, NULL, NULL);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (6, 'Duży', 'Maksymilian', NULL, NULL, NULL, NULL);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (7, 'Mały', 'Piotrek', '2003-11-11 00:00:00', 'M', 'Ib', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (8, 'Michalski', 'Michał', '2003-01-20 00:00:00', 'M', 'Ib', 3);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (9, 'Duda', 'Kamil', '2002-11-22 00:00:00', 'M', 'Ia', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (10, 'Śliwka', 'Maksymilian', '2004-08-29 00:00:00', 'M', 'Ia', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (11, 'Sliwiecki', 'Piotr', '2003-07-17 00:00:00', 'M', 'Ia', 5);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (12, 'Dudzicki', 'Paweł', '2002-01-01 00:00:00', 'M', 'Ia', 13);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (13, 'Marjecka', 'Maja', '2003-05-11 00:00:00', 'K', 'Ia', 6);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (14, 'Kowal', 'Magda', '2003-04-19 00:00:00', 'K', 'Ia', 14);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (15, 'Wu', 'Jing', '2003-02-22 00:00:00', 'M', 'Id', 7);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (16, 'Wu', 'Jan', '2003-11-22 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (17, 'Nowak', 'Agnieszka', '2003-03-25 00:00:00', 'K', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (18, 'Kamińska', 'Ewa', '2003-11-11 00:00:00', 'K', 'Ib', 6);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (19, 'Pawłowski', 'Paweł', '2003-11-17 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (20, 'Grabowska', 'Dorota', '2003-01-18 00:00:00', 'K', 'Ib', 14);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (21, 'Michalski', 'Marek', '2002-12-18 00:00:00', 'M', 'Ia', 4);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (22, 'Wiśniewski', 'Piotr', '2004-06-09 00:00:00', 'M', 'Ia', 7);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (23, 'Wiśniewska', 'Maria', '2003-11-19 00:00:00', 'K', 'Ib', 9);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (24, 'Michalska', 'Magda', '2002-11-11 00:00:00', 'K', 'Ib', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (25, 'Śliwka', 'Kinga', '2003-10-17 00:00:00', 'K', 'Ib', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (26, 'Nowak', 'Maksymilian', '2004-12-22 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (27, 'Dudzicka', 'Kinga', '2002-06-21 00:00:00', 'K', 'Ib', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (28, 'Zając', 'Robert', '2003-12-22 00:00:00', 'M', 'Ia', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (29, 'Woźniak', 'Zuzanna', '2003-10-17 00:00:00', 'K', 'Id', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (30, 'Woźniak', 'Zygmunt', '2003-03-03 00:00:00', 'M', 'Id', 7);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (31, 'Jóźwiak', 'Magda', '2003-04-04 00:00:00', 'K', 'Id', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (32, 'Kaczor', 'Mikołaj', '2002-12-12 00:00:00', 'M', 'Ie', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (33, 'Sarnik', 'Bartosz', '2001-09-11 00:00:00', 'M', 'Ie', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (34, 'Marysiok', 'Jakub', '2003-03-30 00:00:00', 'M', 'Ie', 3);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (35, 'Banaszak', 'Bianka', '2002-10-30 00:00:00', 'K', 'Ie', 4);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (36, 'Miś', 'Magda', '2005-05-25 00:00:00', 'K', 'If', 5);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (37, 'Sobiesiak', 'Piotr', '2002-03-24 00:00:00', 'M', 'If', 5);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (38, 'Kubczak', 'Kacper', '2001-03-24 00:00:00', 'M', 'If', 6);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (39, 'Matusiak', 'Weronika', '2003-02-24 00:00:00', 'K', 'If', 7);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (40, 'Czapaluk', 'Paula', '2002-10-12 00:00:00', 'K', 'IIc', 9);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (41, 'Krzęćko', 'Paula', '2004-04-11 00:00:00', 'K', 'Ic', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (42, 'radomski', 'Adam', '2003-01-01 00:00:00', 'M', 'Ic', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (43, 'Krygiel', 'Piotr', '2003-03-05 00:00:00', 'M', 'Ic', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (44, 'Górecki', 'Kornel', '2004-04-06 00:00:00', 'M', 'Ic', 13);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (45, 'Grabski', 'Mikołaj', '2003-03-17 00:00:00', 'M', 'Ic', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (46, 'Ciemiecka', 'Weronika', '2004-09-03 00:00:00', 'K', 'IIa', 9);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (47, 'STUDZIAŃSKI', 'Paweł', '2002-05-08 00:00:00', 'M', 'IIa', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (48, 'poprawski', 'Michał', '2002-09-17 00:00:00', 'M', 'IIa', 3);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (49, 'Jakimowicz', 'Jan', '2002-12-23 00:00:00', 'M', 'IIa', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (50, 'Józefiak', 'Jędrzej', '2003-06-05 00:00:00', 'M', 'IIa', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (51, 'wachowiak', 'Paweł', '2003-10-12 00:00:00', 'M', 'Ic', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (52, 'soborak', 'Krystian', '2004-01-29 00:00:00', 'M', 'Ic', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (53, 'sałajczyk', 'Kamil', '2004-07-14 00:00:00', 'M', 'Id', 1);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (54, 'ptaszek', 'Piotr', '2003-03-19 00:00:00', 'M', 'Ie', 2);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (55, 'pasiut', 'Wiktoria', '2002-11-25 00:00:00', 'K', 'Ie', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (56, 'Binek', 'Leon', '2004-08-06 00:00:00', 'M', 'If', 9);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (57, 'Kowalski', 'Paweł', '2002-04-30 00:00:00', 'M', 'If', 9);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (58, 'mały', 'Paweł', '2003-12-11 00:00:00', 'M', 'IIa', 10);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (59, 'Kaczor', 'Donald', '2003-09-22 00:00:00', 'M', 'IIa', 6);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (60, 'Maksanta', 'Roksana', '2004-01-07 00:00:00', 'K', 'Ia', 6);
INSERT INTO `Uczniowie` (`IdU`, `Nazwisko`, `Imie`, `DUr`, `Plec`, `KlasaU`, `MiastoU`) VALUES (61, 'Czapaluk', 'Anastazja', NULL, NULL, 'IIa', 9);
# 61 records

#
# Table structure for table 'Uczy'
#

DROP TABLE IF EXISTS `Uczy`;

CREATE TABLE `Uczy` (
  `IdN` INTEGER NOT NULL, 
  `IdP` INTEGER NOT NULL, 
  `IleGodz` INTEGER NOT NULL DEFAULT 1, 
  INDEX (`IdN`), 
  INDEX (`IdP`), 
  PRIMARY KEY (`IdN`, `IdP`)
) ENGINE=innodb DEFAULT CHARSET=utf8;

SET autocommit=1;

#
# Dumping data for table 'Uczy'
#

INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (3, 1, 8);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (3, 2, 12);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (5, 1, 1);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (6, 9, 1);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (8, 7, 6);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (8, 8, 8);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (11, 9, 1);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (12, 7, 1);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 1, 3);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 2, 1);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 3, 8);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 4, 2);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 5, 3);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 6, 2);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 7, 2);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 8, 2);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 9, 3);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 10, 3);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (16, 11, 4);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (18, 5, 8);
INSERT INTO `Uczy` (`IdN`, `IdP`, `IleGodz`) VALUES (20, 10, 1);
# 21 records

