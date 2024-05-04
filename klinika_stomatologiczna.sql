-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 04, 2024 at 02:28 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `klinika_stomatologiczna`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_chorob_pacjentow`
--

CREATE TABLE `historia_chorob_pacjentow` (
  `id_wpisu` int(11) NOT NULL,
  `id_pacjenta` int(11) DEFAULT NULL,
  `data_diagnozy` date DEFAULT NULL,
  `diagnoza` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `opis_choroby` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `zalecane_leczenie` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historia_chorob_pacjentow`
--

INSERT INTO `historia_chorob_pacjentow` (`id_wpisu`, `id_pacjenta`, `data_diagnozy`, `diagnoza`, `opis_choroby`, `zalecane_leczenie`) VALUES
(1, 2, '2023-04-20', 'Próchnica', 'Występują liczne ubytki w zębach', 'Leczenie kanałowe i plombowanie'),
(2, 4, '2022-12-10', 'Paradontoza', 'Stan zapalny przyzębia', 'Zabiegi periodontologiczne'),
(3, 6, '2024-01-05', 'Choroba dziąseł', 'Krwawienie i opuchlizna dziąseł', 'Regularne wizyty u higienistki'),
(4, 8, '2023-10-15', 'Wady zgryzu', 'Niezgodność zgryzu', 'Konsultacja ortodontyczna'),
(5, 1, '2024-03-22', 'Zapalenie zębów pochwowych', 'Silne bóle zęba', 'Antybiotykoterapia i leki przeciwbólowe'),
(6, 3, '2022-09-18', 'Próchnica', 'Ubytki w zębach', 'Plombowanie i regularna higiena jamy ustnej'),
(7, 5, '2024-04-30', 'Zęby mądrości', 'Zapalenie w okolicy trzecich zębów trzonowych', 'Usuwanie zębów mądrości i antybiotyki'),
(8, 7, '2023-07-12', 'Stany zapalne dziąseł', 'Ogólne zaczerwienienie i obrzęk dziąseł', 'Higiena jamy ustnej i płukanie antyseptyczne'),
(9, 9, '2024-02-08', 'Przerost dziąseł', 'Nadmierny wzrost tkanki dziąsłowej', 'Zabiegi chirurgiczne i higieniczne'),
(10, 10, '2022-11-25', 'Uszkodzenie zęba', 'Odsłonięcie korzenia', 'Leczenie kanałowe i plombowanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_lekow_pacjentow`
--

CREATE TABLE `historia_lekow_pacjentow` (
  `id_wpisu` int(11) NOT NULL,
  `id_pacjenta` int(11) DEFAULT NULL,
  `nazwa_leku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `dawkowanie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `data_rozpoczecia_leczenia` date DEFAULT NULL,
  `data_zakonczenia_leczenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historia_lekow_pacjentow`
--

INSERT INTO `historia_lekow_pacjentow` (`id_wpisu`, `id_pacjenta`, `nazwa_leku`, `dawkowanie`, `data_rozpoczecia_leczenia`, `data_zakonczenia_leczenia`) VALUES
(1, 2, 'Amoksycylina', '2 tabletki dziennie po posiłku', '2023-04-21', '2023-04-30'),
(2, 4, 'Nurofen', '2 tabletki na ból', '2022-12-10', '2022-12-15'),
(3, 6, 'Chlorheksydyna', 'Płukanie jamy ustnej 2 razy dziennie', '2024-01-05', '2024-01-20'),
(4, 8, 'Paracetamol', '1 tabletka na ból', '2023-10-15', '2023-10-18'),
(5, 1, 'Amoksycylina', '2 tabletki dziennie po posiłku', '2024-03-22', '2024-03-31'),
(6, 3, 'Fluor', 'Nakładać na zęby przed snem', '2022-09-18', '2023-09-18'),
(7, 5, 'Antybiotyk', 'Zgodnie z zaleceniami lekarza', '2024-05-01', '2024-05-10'),
(8, 7, 'Octenisept', 'Płukać jamę ustną 3 razy dziennie', '2023-07-12', '2023-07-18'),
(9, 9, 'Leki przeciwtężcowe', '1 na dobę', '2024-02-08', '2024-02-15'),
(10, 10, 'Ibuprofen', '1 tabletka po poczuciu bólu', '2022-11-25', '2022-11-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_platnosci`
--

CREATE TABLE `historia_platnosci` (
  `id_platnosci` int(11) NOT NULL,
  `id_wizyty` int(11) DEFAULT NULL,
  `data_platnosci` date DEFAULT NULL,
  `kwota_platnosci` int(10) DEFAULT NULL,
  `metoda_platnosci` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `historia_platnosci`
--

INSERT INTO `historia_platnosci` (`id_platnosci`, `id_wizyty`, `data_platnosci`, `kwota_platnosci`, `metoda_platnosci`) VALUES
(1, 1, '2024-05-15', 150, 'Gotówka'),
(2, 2, '2024-05-17', 200, 'Karta płatnicza'),
(3, 3, '2024-05-20', 300, 'Gotówka'),
(4, 4, '2024-05-22', 250, 'Przelew bankowy'),
(5, 5, '2024-05-25', 350, 'Gotówka'),
(6, 6, '2024-05-28', 400, 'Przelew bankowy'),
(7, 7, '2024-05-30', 180, 'Karta płatnicza'),
(8, 8, '2024-06-02', 220, 'Gotówka'),
(9, 9, '2024-06-05', 270, 'Przelew bankowy'),
(10, 10, '2024-06-08', 200, 'Gotówka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarze`
--

CREATE TABLE `lekarze` (
  `id_lekarza` int(11) NOT NULL,
  `imie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `nazwisko` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `specjalizacja` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `numer_telefonu` int(9) DEFAULT NULL,
  `adres_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lekarze`
--

INSERT INTO `lekarze` (`id_lekarza`, `imie`, `nazwisko`, `specjalizacja`, `numer_telefonu`, `adres_email`) VALUES
(1, 'Jan', 'Kowalski', 'Stomatolog', 123456789, 'jan.kowalski@gmail.com'),
(2, 'Ewa', 'Nowak', 'Ortodonta', 987654321, 'ewa.nowak@gmail.com'),
(3, 'Marcin', 'Wiśniewski', 'Chirurg szczękowy', 567890123, 'marcin.wisniewski@gmail.com'),
(4, 'Magdalena', 'Dąbrowska', 'Endodonta', 234567890, 'magdalena.dabrowska@gmail.com'),
(5, 'Adam', 'Lis', 'Protetyk', 678901234, 'adam.lis@gmail.com'),
(6, 'Katarzyna', 'Kaczmarek', 'Periodontolog', 345678901, 'katarzyna.kaczmarek@gmail.com'),
(7, 'Łukasz', 'Zając', 'Implantolog', 789012345, 'lukasz.zajac@gmail.com'),
(8, 'Natalia', 'Nowicka', 'Stomatolog dziecięcy', 456789012, 'natalia.nowicka@gmail.com'),
(9, 'Marek', 'Wójcik', 'Oralny higienista', 890123456, 'marek.wojcik@gmail.com'),
(10, 'Karolina', 'Kwiatkowska', 'Stomatolog estetyczny', 567890123, 'karolina.kwiatkowska@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjenci`
--

CREATE TABLE `pacjenci` (
  `id_pacjenta` int(11) NOT NULL,
  `imie` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `nazwisko` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `numer_telefonu` int(9) DEFAULT NULL,
  `adres_email` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pacjenci`
--

INSERT INTO `pacjenci` (`id_pacjenta`, `imie`, `nazwisko`, `data_urodzenia`, `adres`, `numer_telefonu`, `adres_email`) VALUES
(1, 'Adam', 'Noga', '1990-05-15', 'ul. Kwiatowa 5, Warszawa', 723847106, 'adam.nowak@gmail.com'),
(2, 'Anna', 'Stara', '1985-12-20', 'ul. Słoneczna 10, Kraków', 104274926, 'anna.kowalska@gmail.com'),
(3, 'Piotr', 'Podolski', '1978-07-03', 'ul. Leśna 7, Gdańsk', 567890123, 'piotr.wisniewski@gmail.com'),
(4, 'Karolina', 'Biała', '1993-09-28', 'ul. Polna 15, Poznań', 234567890, 'karolina.dabrowska@gmail.com'),
(5, 'Michał', 'Gwóźdź', '1980-04-12', 'ul. Zielona 3, Wrocław', 496283654, 'michal.lis@gmail.com'),
(6, 'Magdalena', 'Sucharek', '1975-11-07', 'ul. Parkowa 12, Łódź', 487623947, 'magdalena.kaczmarek@gmail.com'),
(7, 'Kamil', 'Król', '1991-02-19', 'ul. Szkolna 8, Katowice', 987495623, 'kamil.zajac@gmail.com'),
(8, 'Aleksandra', 'Królik', '1987-06-25', 'ul. Ogrodowa 6, Gdynia', 891385734, 'aleksandra.nowicka@gmail.com'),
(9, 'Marek', 'Wieczorek', '1983-08-30', 'ul. Jesienna 9, Szczecin', 757127687, 'marek.wojcik@gmail.com'),
(10, 'Natalia', 'Plak', '1995-01-10', 'ul. Morska 4, Lublin', 672498476, 'natalia.kwiatkowska@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `procedury_stomatologiczne`
--

CREATE TABLE `procedury_stomatologiczne` (
  `id_procedury` int(11) NOT NULL,
  `nazwa_procedury` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `koszt_procedury` int(10) DEFAULT NULL,
  `opis_procedury` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `procedury_stomatologiczne`
--

INSERT INTO `procedury_stomatologiczne` (`id_procedury`, `nazwa_procedury`, `koszt_procedury`, `opis_procedury`) VALUES
(1, 'Badanie stomatologiczne', 100, 'Podstawowe badanie jamy ustnej'),
(2, 'Usuwanie kamienia nazębnego', 150, 'Usuwanie osadów z powierzchni zębów'),
(3, 'Leczenie kanałowe', 300, 'Usuwanie martwej tkanki z wnętrza zęba'),
(4, 'Plombowanie zęba', 200, 'Wypełnianie ubytków w zębach'),
(5, 'Ekstrakcja zęba', 250, 'Usunięcie zęba w całości'),
(6, 'Implantologia', 1000, 'Wstawienie implantu zębowego'),
(7, 'Ortodoncja', 3000, 'Korekcja wad zgryzu'),
(8, 'Protetyka stomatologiczna', 800, 'Wytwarzanie protez zębowych'),
(9, 'Zabiegi periodontologiczne', 400, 'Leczenie chorób przyzębia'),
(10, 'Znieczulenie miejscowe', 50, 'Znieczulenie obszaru zabiegu');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `recepty`
--

CREATE TABLE `recepty` (
  `id_recepty` int(11) NOT NULL,
  `id_pacjenta` int(11) DEFAULT NULL,
  `data_wystawienia_recepty` date DEFAULT NULL,
  `nazwa_leku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `dawkowanie` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `numer_recepty` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `recepty`
--

INSERT INTO `recepty` (`id_recepty`, `id_pacjenta`, `data_wystawienia_recepty`, `nazwa_leku`, `dawkowanie`, `numer_recepty`) VALUES
(1, 2, '2024-04-20', 'Paracetamol', '3 tabletki w przypadku bólu', 19637),
(2, 4, '2024-04-21', 'Ibuprofen', '1 tabletka co 6 godzin', 40964),
(3, 6, '2024-04-22', 'Fluor', 'Nakładać na zęby przed snem', 56948),
(4, 8, '2024-04-23', 'Chlorheksydyna', 'Płukać jamę ustną 2 razy dziennie', 94268),
(5, 1, '2024-04-24', 'Amoksycylina', '2 tabletki dziennie po posiłku', 30128),
(6, 3, '2024-04-25', 'Fluor', 'Nakładać na zęby przed snem', 19258),
(7, 5, '2024-04-26', 'Antybiotyk', 'Zgodnie z zaleceniami lekarza', 10840),
(8, 7, '2024-04-27', 'Octenisept', 'Płukać jamę ustną 3 razy dziennie', 18460),
(9, 9, '2024-04-28', 'Leki przeciwbólowe', 'Zgodnie z zaleceniami lekarza', 20863),
(10, 10, '2024-04-29', 'Ibuprofen', '1 tabletka co 6 godzin', 94678);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan_magazynowy_lekow`
--

CREATE TABLE `stan_magazynowy_lekow` (
  `id_leku` int(11) NOT NULL,
  `nazwa_leku` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `ilosc_dostepna` int(11) DEFAULT NULL,
  `data_ostatniej_dostawy` date DEFAULT NULL,
  `data_waznosci` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stan_magazynowy_lekow`
--

INSERT INTO `stan_magazynowy_lekow` (`id_leku`, `nazwa_leku`, `ilosc_dostepna`, `data_ostatniej_dostawy`, `data_waznosci`) VALUES
(1, 'Amoksycylina', 50, '2024-04-01', '2025-04-01'),
(2, 'Paracetamol', 100, '2024-03-15', '2024-10-01'),
(3, 'Ibuprofen', 80, '2024-04-10', '2024-09-01'),
(4, 'Fluor', 30, '2024-03-20', '2024-12-01'),
(5, 'Chlorheksydyna', 40, '2024-03-25', '2025-03-01'),
(6, 'Antybiotyk', 20, '2024-04-05', '2024-08-01'),
(7, 'Octenisept', 60, '2024-03-10', '2024-11-01'),
(8, 'Leki przeciwbólowe', 90, '2024-04-15', '2024-12-01'),
(9, 'Znieczulenie miejscowe', 70, '2024-04-20', '2024-10-01'),
(10, 'Witamina C', 50, '2024-04-25', '2025-04-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyty`
--

CREATE TABLE `wizyty` (
  `id_wizyty` int(11) NOT NULL,
  `id_pacjenta` int(11) DEFAULT NULL,
  `data_wizyty` date DEFAULT NULL,
  `godzina_wizyty` time DEFAULT NULL,
  `opis_wizyty` text CHARACTER SET utf8mb4 COLLATE utf8mb4_polish_ci DEFAULT NULL,
  `koszt_wizyty` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wizyty`
--

INSERT INTO `wizyty` (`id_wizyty`, `id_pacjenta`, `data_wizyty`, `godzina_wizyty`, `opis_wizyty`, `koszt_wizyty`) VALUES
(1, 3, '2024-05-15', '10:00:00', 'Kontrola stomatologiczna', 150),
(2, 5, '2024-05-17', '11:30:00', 'Plombowanie zęba', 250),
(3, 7, '2024-05-20', '14:00:00', 'Badanie jamy ustnej', 180),
(4, 2, '2024-05-22', '09:00:00', 'Usuwanie kamienia nazębnego', 200),
(5, 9, '2024-05-25', '15:30:00', 'Konsultacja ortodontyczna', 180),
(6, 4, '2024-05-28', '12:00:00', 'Leczenie kanałowe', 350),
(7, 8, '2024-05-30', '10:30:00', 'Wypełnianie ubytku', 180),
(8, 1, '2024-06-02', '16:00:00', 'Kontrola po leczeniu', 120),
(9, 6, '2024-06-05', '13:30:00', 'Wizyta profilaktyczna', 150),
(10, 10, '2024-06-08', '08:30:00', 'Zabieg higienizacyjny', 100);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `zaplanowane_zabiegi`
--

CREATE TABLE `zaplanowane_zabiegi` (
  `id_zabiegu` int(11) NOT NULL,
  `id_wizyty` int(11) DEFAULT NULL,
  `id_procedury` int(11) DEFAULT NULL,
  `data_zabiegu` date DEFAULT NULL,
  `godzina_zabiegu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zaplanowane_zabiegi`
--

INSERT INTO `zaplanowane_zabiegi` (`id_zabiegu`, `id_wizyty`, `id_procedury`, `data_zabiegu`, `godzina_zabiegu`) VALUES
(1, 1, 1, '2024-05-15', '10:30:00'),
(2, 2, 4, '2024-05-17', '12:00:00'),
(3, 3, 7, '2024-05-20', '14:30:00'),
(4, 4, 2, '2024-05-22', '10:00:00'),
(5, 5, 8, '2024-05-25', '16:00:00'),
(6, 6, 3, '2024-05-28', '13:30:00'),
(7, 7, 5, '2024-05-30', '11:00:00'),
(8, 8, 6, '2024-06-02', '17:00:00'),
(9, 9, 9, '2024-06-05', '14:30:00'),
(10, 10, 10, '2024-06-08', '09:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `historia_chorob_pacjentow`
--
ALTER TABLE `historia_chorob_pacjentow`
  ADD PRIMARY KEY (`id_wpisu`),
  ADD KEY `id_pacjenta` (`id_pacjenta`);

--
-- Indeksy dla tabeli `historia_lekow_pacjentow`
--
ALTER TABLE `historia_lekow_pacjentow`
  ADD PRIMARY KEY (`id_wpisu`),
  ADD KEY `id_pacjenta` (`id_pacjenta`);

--
-- Indeksy dla tabeli `historia_platnosci`
--
ALTER TABLE `historia_platnosci`
  ADD PRIMARY KEY (`id_platnosci`),
  ADD KEY `id_wizyty` (`id_wizyty`);

--
-- Indeksy dla tabeli `lekarze`
--
ALTER TABLE `lekarze`
  ADD PRIMARY KEY (`id_lekarza`);

--
-- Indeksy dla tabeli `pacjenci`
--
ALTER TABLE `pacjenci`
  ADD PRIMARY KEY (`id_pacjenta`);

--
-- Indeksy dla tabeli `procedury_stomatologiczne`
--
ALTER TABLE `procedury_stomatologiczne`
  ADD PRIMARY KEY (`id_procedury`);

--
-- Indeksy dla tabeli `recepty`
--
ALTER TABLE `recepty`
  ADD PRIMARY KEY (`id_recepty`),
  ADD KEY `id_pacjenta` (`id_pacjenta`);

--
-- Indeksy dla tabeli `stan_magazynowy_lekow`
--
ALTER TABLE `stan_magazynowy_lekow`
  ADD PRIMARY KEY (`id_leku`);

--
-- Indeksy dla tabeli `wizyty`
--
ALTER TABLE `wizyty`
  ADD PRIMARY KEY (`id_wizyty`),
  ADD KEY `id_pacjenta` (`id_pacjenta`);

--
-- Indeksy dla tabeli `zaplanowane_zabiegi`
--
ALTER TABLE `zaplanowane_zabiegi`
  ADD PRIMARY KEY (`id_zabiegu`),
  ADD KEY `id_wizyty` (`id_wizyty`),
  ADD KEY `id_procedury` (`id_procedury`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `historia_chorob_pacjentow`
--
ALTER TABLE `historia_chorob_pacjentow`
  ADD CONSTRAINT `historia_chorob_pacjentow_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjenci` (`id_pacjenta`);

--
-- Constraints for table `historia_lekow_pacjentow`
--
ALTER TABLE `historia_lekow_pacjentow`
  ADD CONSTRAINT `historia_lekow_pacjentow_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjenci` (`id_pacjenta`);

--
-- Constraints for table `historia_platnosci`
--
ALTER TABLE `historia_platnosci`
  ADD CONSTRAINT `historia_platnosci_ibfk_1` FOREIGN KEY (`id_wizyty`) REFERENCES `wizyty` (`id_wizyty`);

--
-- Constraints for table `recepty`
--
ALTER TABLE `recepty`
  ADD CONSTRAINT `recepty_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjenci` (`id_pacjenta`);

--
-- Constraints for table `wizyty`
--
ALTER TABLE `wizyty`
  ADD CONSTRAINT `wizyty_ibfk_1` FOREIGN KEY (`id_pacjenta`) REFERENCES `pacjenci` (`id_pacjenta`);

--
-- Constraints for table `zaplanowane_zabiegi`
--
ALTER TABLE `zaplanowane_zabiegi`
  ADD CONSTRAINT `zaplanowane_zabiegi_ibfk_1` FOREIGN KEY (`id_wizyty`) REFERENCES `wizyty` (`id_wizyty`),
  ADD CONSTRAINT `zaplanowane_zabiegi_ibfk_2` FOREIGN KEY (`id_procedury`) REFERENCES `procedury_stomatologiczne` (`id_procedury`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
