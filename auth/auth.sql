-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 21, 2024 at 04:31 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auth`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `id_account` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`id_account`, `name`, `username`, `password`) VALUES
(5, 'tes', 'tes', '$2y$10$vNV0A6wHhJntg43Fow6OEesHv/nvxC8Qdagca1wj2afPiqAWfxx9q'),
(6, 'Alduy', 'alduy', '$2y$10$5QPTVsLEE9XcrvP6rT6WnO8202jnm5CzliBlqHCEBzj0X./h6GLhu'),
(7, '1', '1', '$2y$10$qCsQeuLi0e4Yn26f/pZ0eOa.giAvd.4oluWDVpsfRxhvx4sJnCPMS'),
(8, '2', '2', '$2y$10$.3Mny2iIzZywUCWuw9uNR.SIPYYHW1EpGeU/36gxnxD0uljIRj.mq'),
(9, 'aldo', 'aldo', '$2y$10$jWnA4yAe1adRRNnDOfpdIOKFfZrzi8nLDuccCLLMYU6whPJcH6qdu'),
(10, '4', '4', '$2y$10$w9Ucp1GwDzwTdB3PUEKQsOqikE7a1K1T4kkPNMU4U3Ix5jCisjE/K');

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(9) NOT NULL,
  `golongan` varchar(1) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `golongan`, `name`) VALUES
('865927468', 's', 'Dr. Aubrey Walker'),
('1816810', 't', 'Marlon Gaylord IV'),
('5024', 't', 'Prof. Anjali Gerlach V'),
('41', 'v', 'Kade Cormier MD'),
('8127282', 'a', 'Corbin Welch'),
('91', 'm', 'Dr. Jesse Schoen'),
('748609521', 'v', 'Gretchen Hills'),
('', 's', 'Thad Wolff'),
('354', 'c', 'Alexanne Stracke'),
('4807543', 'e', 'Daphney Ortiz'),
('7', 'r', 'Grayson Runolfsdottir'),
('520228841', 'd', 'Ms. Germaine Swaniawski II'),
('85370', 'b', 'Darien Bashirian DDS'),
('460057731', 'l', 'Kayden Koss'),
('13301', 'h', 'Mellie Miller'),
('750678629', 'v', 'Mr. Hubert Gorczany'),
('28', 'q', 'Jensen Murphy'),
('', 'n', 'Liam Connelly'),
('53777157', 'q', 'Mrs. Linnie Rau IV'),
('976', 'v', 'Orpha Strosin'),
('26213', 'u', 'Prof. Queen Cummerata I'),
('815793', 's', 'Noel Lockman MD'),
('90473183', 'o', 'Dr. Leone Will'),
('817', 'c', 'Schuyler Toy IV'),
('8532', 'q', 'Mrs. Astrid Gibson'),
('779182878', 'n', 'Alfred Stroman'),
('6430', 'f', 'Abner Goyette'),
('27', 'd', 'Hortense Flatley'),
('97277081', 'a', 'Prof. Zula King DDS'),
('21', 'm', 'Miss Stephanie Runolfsson IV'),
('4012', 'i', 'Jacklyn Langworth V'),
('', 'e', 'Bruce Mertz'),
('21724524', 'u', 'Zack Barton'),
('4', 'e', 'Maurice Boyle'),
('', 'i', 'Prof. Dwight Harvey DVM'),
('383131', 'i', 'Amir Huel'),
('91', 's', 'Prof. Israel Kiehn V'),
('3025603', 'v', 'Dr. Derek Sipes Jr.'),
('867', 'e', 'Dr. Jarred Denesik'),
('79592', 'e', 'Rocio Ledner'),
('', 'e', 'Prof. Ricardo Wintheiser Sr.'),
('572', 'r', 'Allan Wolf'),
('86461', 'a', 'Imani Beier IV'),
('', 'q', 'Aliya Considine'),
('1', 'd', 'Johathan King'),
('533877', 's', 'Keeley Corkery'),
('', 'q', 'Ella Dicki'),
('337201', 'n', 'Miss Cara Senger I'),
('5', 'v', 'Kathryne Lowe'),
('2', 'f', 'Rowland Hilpert MD'),
('89865657', 'q', 'Eloisa Ebert'),
('972711042', 'i', 'Marlene Wisozk'),
('442', 'm', 'Mrs. Alexa Quigley DDS'),
('984199549', 'e', 'Mrs. Angelita Wyman'),
('4', 'e', 'Georgiana McKenzie'),
('3268', 'a', 'Kari Lesch PhD'),
('543', 's', 'Lela Auer'),
('30026', 'i', 'Dr. Amira Hansen'),
('', 'd', 'Mrs. Alba O\'Hara Jr.'),
('3548', 'e', 'Malika Reinger'),
('628838', 'q', 'Ms. Shanel Turcotte IV'),
('39', 'm', 'Fern O\'Connell'),
('2', 'c', 'Andreanne Eichmann'),
('7293', 'l', 'Ms. Pearlie Bernhard'),
('85135', 'o', 'Miss Aniya Lebsack'),
('2', 'c', 'Lafayette Larson'),
('426819853', 'd', 'Ettie D\'Amore'),
('268', 'h', 'Willow Jerde'),
('802', 'a', 'Millie Lynch DVM'),
('31842', 'f', 'Karson Bradtke'),
('633262420', 'c', 'Eliza Bechtelar'),
('8257', 'd', 'Camylle Bauch IV'),
('4998', 'r', 'Neil Smith'),
('455606993', 'q', 'Bridget Purdy'),
('757319', 'e', 'Dr. Letitia Bechtelar'),
('40990', 'r', 'Tyrell Goldner'),
('64816', 'c', 'Josefa Collier'),
('564', 's', 'Ford Kilback'),
('', 'a', 'Prof. Charlene Abernathy'),
('9', 's', 'Mabelle Lindgren'),
('4503093', 'e', 'Prof. Ransom Schumm'),
('726305', 'q', 'Nayeli O\'Conner'),
('', 'e', 'Layla Schaden'),
('5701036', 'a', 'Dr. Frances Brown'),
('667812', 'v', 'Prof. Elias Bernhard'),
('', 'n', 'Everett Torphy'),
('414765', 'v', 'Miss Joelle Halvorson V'),
('3671', 'l', 'Mrs. Idella Medhurst'),
('', 's', 'Carleton Sanford'),
('4251', 'e', 'Coby Abbott'),
('752', 'm', 'Frederik Wyman'),
('49171', 'e', 'Kaley Rau'),
('270', 'v', 'Kayley Hackett'),
('3688', 'i', 'Forrest McLaughlin'),
('192', 'n', 'Wilfrid Prosacco'),
('9669', 'a', 'Destin Kautzer'),
('8838', 'n', 'Antonia Goyette'),
('64', 'a', 'Brisa Pollich'),
('791', 'q', 'Celine Beer'),
('7188', 'q', 'Cayla Waters');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`id_account`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `id_account` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
