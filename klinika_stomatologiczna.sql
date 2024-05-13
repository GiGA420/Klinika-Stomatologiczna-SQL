-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Maj 13, 2024 at 11:47 PM
-- Wersja serwera: 10.4.32-MariaDB
-- Wersja PHP: 8.2.12

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
  `id_choroby` int(8) NOT NULL,
  `id_pacjenta` int(8) DEFAULT NULL,
  `data_diagnozy` date DEFAULT NULL,
  `diagnoza` varchar(100) DEFAULT NULL,
  `opis_choroby` text DEFAULT NULL,
  `zalecane_leczenie` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `historia_chorob_pacjentow`
--

INSERT INTO `historia_chorob_pacjentow` (`id_choroby`, `id_pacjenta`, `data_diagnozy`, `diagnoza`, `opis_choroby`, `zalecane_leczenie`) VALUES
(1, 2, '2023-04-20', 'Próchnica', 'Występują liczne ubytki w zębach', 'Leczenie kanałowe i plombowanie'),
(2, 4, '2022-12-10', 'Paradontoza', 'Stan zapalny przyzębia', 'Zabiegi periodontologiczne'),
(3, 6, '2024-01-05', 'Choroba dziąseł', 'Krwawienie i opuchlizna dziąseł', 'Regularne wizyty u higienistki'),
(4, 8, '2023-10-15', 'Wady zgryzu', 'Niezgodność zgryzu', 'Konsultacja ortodontyczna'),
(5, 1, '2024-03-22', 'Zapalenie zębopochwowych', 'Silne bóle zęba', 'Antybiotykoterapia i leki przeciwbólowe'),
(6, 3, '2022-05-18', 'Próchnica', 'Ubytki w zębach', 'Plombowanie i regularna higiena jamy ustnej'),
(7, 9, '2024-04-30', 'Zęby mądrości', 'Zapalenie w okolicy trzecich zębów trzonowych', 'Usuwanie zębów mądrości i antybiotyki'),
(8, 7, '2023-07-12', 'Stany zapalne dziąseł', 'Ogólne zaczerwienienie i obrzęk dziąseł', 'Higiena jamy ustnej i płukanie antyseptyczne'),
(9, 5, '2024-02-08', 'Przerost dziąseł', 'Nadmierny wzrost tkanki dziąsłowej', 'Zabiegi chirurgiczne i higieniczne'),
(10, 10, '2022-11-25', 'Uszkodzenie zęba', 'Odsłonięcie korzenia', 'Leczenie kanałowe i plombowanie');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_lekow_pacjentow`
--

CREATE TABLE `historia_lekow_pacjentow` (
  `id_historia_leku` int(8) NOT NULL,
  `id_pacjenta` int(8) DEFAULT NULL,
  `nazwa_leku` varchar(100) DEFAULT NULL,
  `dawkowanie` varchar(100) DEFAULT NULL,
  `data_rozpoczecia_leczenia` date DEFAULT NULL,
  `data_zakonczenia_leczenia` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `historia_lekow_pacjentow`
--

INSERT INTO `historia_lekow_pacjentow` (`id_historia_leku`, `id_pacjenta`, `nazwa_leku`, `dawkowanie`, `data_rozpoczecia_leczenia`, `data_zakonczenia_leczenia`) VALUES
(1, 2, 'Amoksycylina', '2 tabletki dziennie po posiłku', '2023-04-21', '2023-04-30'),
(2, 4, 'Ibuprofen', '1 tabletka co 6 godzin', '2022-12-10', '2022-12-15'),
(3, 6, 'Chlorheksydyna', 'Płukać jamę ustną 2 razy dziennie', '2024-01-05', '2024-01-20'),
(4, 8, 'Paracetamol', '1 tabletka na ból', '2023-10-15', '2023-10-18'),
(5, 1, 'Amoksycylina', '2 tabletki dziennie po posiłku', '2024-03-22', '2024-03-31'),
(6, 3, 'Fluor', 'Nakładać na zęby przed snem', '2022-05-18', '2023-05-18'),
(7, 9, 'Antybiotyk', 'Zgodnie z zaleceniami lekarza', '2024-05-01', '2024-05-10'),
(8, 7, 'Octenisept', 'Płukać jamę ustną 3 razy dziennie', '2023-07-12', '2023-07-18'),
(9, 5, 'Leki przeciwbólowe', 'Zgodnie z zaleceniami lekarza', '2024-02-08', '2024-02-15'),
(10, 10, 'Ibuprofen', '1 tabletka co 6 godzin', '2022-11-25', '2022-11-30');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `historia_platnosci`
--

CREATE TABLE `historia_platnosci` (
  `id_platnosci` int(8) NOT NULL,
  `id_wizyty` int(8) DEFAULT NULL,
  `data_platnosci` date DEFAULT NULL,
  `kwota_platnosci` int(7) DEFAULT NULL,
  `metoda_platnosci` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `historia_platnosci`
--

INSERT INTO `historia_platnosci` (`id_platnosci`, `id_wizyty`, `data_platnosci`, `kwota_platnosci`, `metoda_platnosci`) VALUES
(1, 1, '2024-05-15', 150, 'Gotówka'),
(2, 2, '2024-05-17', 200, 'Karta płatnicza'),
(3, 3, '2024-05-20', 300, 'Gotówka'),
(4, 4, '2024-05-22', 250, 'Przelew bankowy'),
(5, 9, '2024-05-25', 350, 'Gotówka'),
(6, 6, '2024-05-28', 400, 'Przelew bankowy'),
(7, 7, '2024-05-30', 180, 'Karta płatnicza'),
(8, 8, '2024-06-02', 220, 'Gotówka'),
(9, 5, '2024-06-05', 270, 'Przelew bankowy'),
(10, 10, '2024-06-08', 200, 'Gotówka');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `lekarze`
--

CREATE TABLE `lekarze` (
  `id_lekarza` int(8) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `specjalizacja` varchar(100) DEFAULT NULL,
  `numer_telefonu` int(9) DEFAULT NULL,
  `adres_email` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `lekarze`
--

INSERT INTO `lekarze` (`id_lekarza`, `imie`, `nazwisko`, `specjalizacja`, `numer_telefonu`, `adres_email`) VALUES
(1, 'Jan', 'Kowalski', 'Stomatolog', 123456785, 'jan.kowalski@gmail.com'),
(2, 'Ewa', 'Nowak', 'Ortodonta', 587654321, 'ewa.nowak@gmail.com'),
(3, 'Marcin', 'Wiśniewski', 'Chirurg szczękowy', 567850123, 'marcin.wisniewski@gmail.com'),
(4, 'Magdalena', 'Dąbrowska', 'Endodonta', 234567850, 'magdalena.dabrowska@gmail.com'),
(5, 'Adam', 'Lis', 'Protetyk', 678501234, 'adam.lis@gmail.com'),
(6, 'Katarzyna', 'Kaczmarek', 'Periodontolog', 345678501, 'katarzyna.kaczmarek@gmail.com'),
(7, 'Łukasz', 'Zając', 'Implantolog', 785012345, 'lukasz.zajac@gmail.com'),
(8, 'Natalia', 'Nowicka', 'Stomatolog dziecięcy', 456785012, 'natalia.nowicka@gmail.com'),
(9, 'Marek', 'Wójcik', 'Oralny higienista', 850123456, 'marek.wojcik@gmail.com'),
(10, 'Karolina', 'Kwiatkowska', 'Stomatolog estetyczny', 567850123, 'karolina.kwiatkowska@gmail.com');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `pacjenci`
--

CREATE TABLE `pacjenci` (
  `id_pacjenta` int(8) NOT NULL,
  `imie` varchar(50) DEFAULT NULL,
  `nazwisko` varchar(50) DEFAULT NULL,
  `data_urodzenia` date DEFAULT NULL,
  `adres` varchar(100) DEFAULT NULL,
  `numer_telefonu` varchar(15) DEFAULT NULL,
  `pesel` bigint(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `pacjenci`
--

INSERT INTO `pacjenci` (`id_pacjenta`, `imie`, `nazwisko`, `data_urodzenia`, `adres`, `numer_telefonu`, `pesel`) VALUES
(1, 'Adam', 'Noga', '2004-05-15', 'ul. Kwiatowa 5, Warszawa', '723847106', 88270725542),
(2, 'Anna', 'Stara', '1962-12-20', 'ul. Słoneczna 10, Kraków', '104274526', 81100451433),
(3, 'Piotr', 'Podolski', '2000-07-03', 'ul. Leśna 7, Gdańsk', '567850123', 60121622145),
(4, 'Karolina', 'Biała', '1956-05-28', 'ul. Polna 15, Poznań', '234567850', 81042581755),
(5, 'Michał', 'Gwóźdź', '1972-04-12', 'ul. Zielona 3, Wrocław', '456283654', 72070654526),
(6, 'Magdalena', 'Sucharek', '1950-11-07', 'ul. Parkowa 12, Łódź', '487623547', 61072261528),
(7, 'Kamil', 'Król', '2006-02-15', 'ul. Szkolna 8, Katowice', '587455623', 74081274861),
(8, 'Aleksandra', 'Królik', '1995-06-25', 'ul. Ogrodowa 6, Gdynia', '851385734', 87062818534),
(9, 'Marek', 'Wieczorek', '2003-08-30', 'ul. Jesienna 25, Szczecin', '757127687', 50072064253),
(10, 'Natalia', 'Plak', '1980-01-10', 'ul. Morska 4, Lublin', '672458476', 72405957125);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `procedury_stomatologiczne`
--

CREATE TABLE `procedury_stomatologiczne` (
  `id_procedury` int(8) NOT NULL,
  `nazwa_procedury` varchar(100) DEFAULT NULL,
  `koszt_procedury` int(6) DEFAULT NULL,
  `opis_procedury` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

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
  `id_recepty` int(8) NOT NULL,
  `id_pacjenta` int(8) DEFAULT NULL,
  `data_wystawienia_recepty` date DEFAULT NULL,
  `nazwa_leku` varchar(100) DEFAULT NULL,
  `dawkowanie` varchar(100) DEFAULT NULL,
  `numer_recepty` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `recepty`
--

INSERT INTO `recepty` (`id_recepty`, `id_pacjenta`, `data_wystawienia_recepty`, `nazwa_leku`, `dawkowanie`, `numer_recepty`) VALUES
(1, 2, '2024-04-20', 'Paracetamol', '3 tabletki w przypadku bólu', 20652),
(2, 4, '2024-04-21', 'Ibuprofen', '1 tabletka co 6 godzin', 15029),
(3, 6, '2024-04-22', 'Fluor', 'Nakładać na zęby przed snem', 18256),
(4, 8, '2024-04-23', 'Chlorheksydyna', 'Płukać jamę ustną 2 razy dziennie', 12752),
(5, 1, '2024-04-24', 'Amoksycylina', '2 tabletki dziennie po posiłku', 35210),
(6, 3, '2024-04-25', 'Fluor', 'Nakładać na zęby przed snem', 18357),
(7, 9, '2024-04-26', 'Antybiotyk', 'Zgodnie z zaleceniami lekarza', 11840),
(8, 7, '2024-04-27', 'Octenisept', 'Płukać jamę ustną 3 razy dziennie', 17632),
(9, 5, '2024-04-28', 'Leki przeciwbólowe', 'Zgodnie z zaleceniami lekarza', 22830),
(10, 10, '2024-04-25', 'Ibuprofen', '1 tabletka co 6 godzin', 11785);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `stan_magazynowy_lekow`
--

CREATE TABLE `stan_magazynowy_lekow` (
  `id_stan_mag_leku` int(8) NOT NULL,
  `nazwa_leku` varchar(100) DEFAULT NULL,
  `ilosc_dostepna` int(5) DEFAULT NULL,
  `data_ostatniej_dostawy` date DEFAULT NULL,
  `data_waznosci` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `stan_magazynowy_lekow`
--

INSERT INTO `stan_magazynowy_lekow` (`id_stan_mag_leku`, `nazwa_leku`, `ilosc_dostepna`, `data_ostatniej_dostawy`, `data_waznosci`) VALUES
(1, 'Amoksycylina', 50, '2024-04-01', '2025-04-01'),
(2, 'Paracetamol', 100, '2024-03-15', '2024-10-01'),
(3, 'Ibuprofen', 80, '2024-04-10', '2024-05-01'),
(4, 'Fluor', 30, '2024-03-20', '2024-12-01'),
(5, 'Chlorheksydyna', 40, '2024-03-25', '2025-03-01'),
(6, 'Antybiotyk', 20, '2024-04-05', '2024-08-01'),
(7, 'Octenisept', 60, '2024-03-10', '2024-11-01'),
(8, 'Leki przeciwbólowe', 50, '2024-04-15', '2024-12-01'),
(9, 'Znieczulenie miejscowe', 70, '2024-04-20', '2024-10-01'),
(10, 'Witamina C', 50, '2024-04-25', '2025-04-01');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `wizyty`
--

CREATE TABLE `wizyty` (
  `id_wizyty` int(8) NOT NULL,
  `id_pacjenta` int(8) DEFAULT NULL,
  `data_wizyty` date DEFAULT NULL,
  `godzina_wizyty` time DEFAULT NULL,
  `opis_wizyty` text DEFAULT NULL,
  `koszt_wizyty` int(6) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

--
-- Dumping data for table `wizyty`
--

INSERT INTO `wizyty` (`id_wizyty`, `id_pacjenta`, `data_wizyty`, `godzina_wizyty`, `opis_wizyty`, `koszt_wizyty`) VALUES
(1, 3, '2024-05-15', '10:00:00', 'Kontrola stomatologiczna', 150),
(2, 5, '2024-05-17', '11:30:00', 'Plombowanie zęba', 250),
(3, 7, '2024-05-20', '14:00:00', 'Badanie jamy ustnej', 180),
(4, 2, '2024-05-22', '05:00:00', 'Usuwanie kamienia nazębnego', 200),
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
  `id_zabiegu` int(8) NOT NULL,
  `id_wizyty` int(8) DEFAULT NULL,
  `id_procedury` int(8) DEFAULT NULL,
  `data_zabiegu` date DEFAULT NULL,
  `godzina_zabiegu` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci;

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
(9, 5, 5, '2024-06-05', '14:30:00'),
(10, 10, 10, '2024-06-08', '05:00:00');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `historia_chorob_pacjentow`
--
ALTER TABLE `historia_chorob_pacjentow`
  ADD PRIMARY KEY (`id_choroby`),
  ADD KEY `id_pacjenta` (`id_pacjenta`);

--
-- Indeksy dla tabeli `historia_lekow_pacjentow`
--
ALTER TABLE `historia_lekow_pacjentow`
  ADD PRIMARY KEY (`id_historia_leku`),
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
  ADD PRIMARY KEY (`id_stan_mag_leku`);

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
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `historia_chorob_pacjentow`
--
ALTER TABLE `historia_chorob_pacjentow`
  MODIFY `id_choroby` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `historia_lekow_pacjentow`
--
ALTER TABLE `historia_lekow_pacjentow`
  MODIFY `id_historia_leku` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `historia_platnosci`
--
ALTER TABLE `historia_platnosci`
  MODIFY `id_platnosci` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `lekarze`
--
ALTER TABLE `lekarze`
  MODIFY `id_lekarza` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pacjenci`
--
ALTER TABLE `pacjenci`
  MODIFY `id_pacjenta` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `procedury_stomatologiczne`
--
ALTER TABLE `procedury_stomatologiczne`
  MODIFY `id_procedury` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `recepty`
--
ALTER TABLE `recepty`
  MODIFY `id_recepty` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `stan_magazynowy_lekow`
--
ALTER TABLE `stan_magazynowy_lekow`
  MODIFY `id_stan_mag_leku` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `wizyty`
--
ALTER TABLE `wizyty`
  MODIFY `id_wizyty` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `zaplanowane_zabiegi`
--
ALTER TABLE `zaplanowane_zabiegi`
  MODIFY `id_zabiegu` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

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
