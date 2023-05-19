CREATE TABLE `dania` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `typ` int(10) UNSIGNED DEFAULT NULL,
  `nazwa` text,
  `cena` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `dania` (`id`, `typ`, `nazwa`, `cena`) VALUES
(1, 1, 'Gazpacho', 20),
(2, 1, 'Krem z warzyw', 25),
(3, 1, 'Gulaszowa ostra', 30),
(4, 2, 'Kaczka i owoc', 30),
(5, 2, 'Kurczak pieczony', 40),
(6, 2, 'wieprzowy przysmak', 35),
(7, 2, 'Mintaj w panierce', 30),
(8, 2, 'Alle kotlet', 30),
(9, 3, 'Owoce morza', 20),
(10, 3, 'Grzybki, warzywka, sos', 15),
(11, 3, 'Orzechy i chipsy', 10),
(12, 3, 'Tatar i jajo', 15),
(13, 3, 'Bukiet warzyw', 10),
(14, 4, 'Sok porzeczkowy', 3),
(15, 4, 'Cola', 3),
(16, 4, 'Woda', 2);




CREATE TABLE `typy_dan` (
  `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  `nazwa` text,
  `opis` text
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



INSERT INTO `typy_dan` (`id`, `nazwa`, `opis`) VALUES
(1, 'zupy', NULL),
(2, 'główne', NULL),
(3, 'przystawki', NULL),
(4, 'napoje', NULL);