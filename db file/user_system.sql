-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 23, 2021 at 08:13 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `user_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'admin', 'd033e22ae348aeb5660fc2140aec35850c4da997');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `subject` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `feedback` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `replied` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `files`
--

CREATE TABLE `files` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `size` int(11) NOT NULL,
  `downloads` mediumblob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `files`
--

INSERT INTO `files` (`id`, `name`, `size`, `downloads`) VALUES
(3, 'To do list (Updated).pdf', 97500, 0x30),
(4, 'Travel shit.docx', 24058, 0x30);

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `guest`
--

INSERT INTO `guest` (`id`, `username`, `password`) VALUES
(1, 'guest', '35675e68f4b5af7b995d9205ad0fc43842f16450');

-- --------------------------------------------------------

--
-- Table structure for table `notes`
--

CREATE TABLE `notes` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `note` mediumtext COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notes`
--

INSERT INTO `notes` (`id`, `uid`, `title`, `note`, `created_at`, `updated_at`) VALUES
(34, 44, 'Test note', 'Fake info\r\nsadsd\r\nsdsd\r\nsddsd\r\nsdasf\r\nssaf\r\nsffasf\r\nsafsa\r\nasfas\r\ns', '2021-11-05 16:47:32', '2021-11-05 16:47:32'),
(35, 45, 'test note for database function.', 'fake info asd asfacdff \r\nsdsf\r\ndff\r\nfd\r\ndsffsddf\r\ndsf\r\ndsf\r\nsdf', '2021-11-05 16:48:32', '2021-11-05 16:48:32'),
(36, 47, 'Admin test for delivery', 'adad sasdaf\r\n sdads\r\n sd\r\nsd s\r\nsa c', '2021-11-05 16:49:30', '2021-11-05 16:49:30'),
(37, 45, 'Example', 'adasd \r\nefew\r\nesf\r\nwfew', '2021-11-09 01:04:52', '2021-11-09 01:04:52'),
(38, 48, 'Test 3, for database', 'cadfsd\r\nfsdf\r\nsdff\r\nsdf\r\ns', '2021-11-11 22:00:35', '2021-11-11 22:00:35'),
(39, 49, 'Another note Test', 'stuff\r\nstuff\r\nstuff', '2021-11-19 18:01:32', '2021-11-19 18:01:32'),
(40, 50, 'test', 'hello 2', '2021-11-22 16:14:54', '2021-11-22 16:15:10'),
(42, 43, 'test132', '1`2131', '2021-11-22 18:07:23', '2021-11-22 18:07:23'),
(44, 43, 'test count', 'assds saaf sfaf asf adf afsdf ds dg dsg d g dgg sg gdsg gsdg sd gsdg sd ggs dg sdg sd gsd g s gds gs g s g dg sdg ds ggs g sd gg sg sg gs gs g sg sd g sdg s dg  dg sgg dsg gs g sg sg s gs gs g g g gs  gs g g s g gs g sg sg  gsg  gs g sg sgg s gs gs sg sg sg g sg s gs g g gs g gs g s g sg sg s gg', '2021-11-22 18:09:52', '2021-11-22 18:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `type` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `message` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`id`, `uid`, `type`, `message`, `created_at`) VALUES
(101, 44, 'admin', 'New note added', '2021-11-05 16:47:32'),
(102, 45, 'admin', 'New note added', '2021-11-05 16:48:32'),
(103, 47, 'admin', 'New note added', '2021-11-05 16:49:30'),
(104, 45, 'admin', 'New note added', '2021-11-09 01:04:52'),
(105, 48, 'admin', 'New note added', '2021-11-11 22:00:35'),
(106, 49, 'admin', 'New note added', '2021-11-19 18:01:32'),
(107, 50, 'admin', 'New note added', '2021-11-22 16:14:54'),
(108, 50, 'admin', 'Note updated', '2021-11-22 16:15:10'),
(109, 43, 'admin', 'New note added', '2021-11-22 18:06:12'),
(110, 43, 'admin', 'Note deleted', '2021-11-22 18:07:11'),
(111, 43, 'admin', 'New note added', '2021-11-22 18:07:23'),
(112, 43, 'admin', 'New note added', '2021-11-22 18:08:02'),
(113, 43, 'admin', 'Note updated', '2021-11-22 18:08:21'),
(114, 43, 'admin', 'Note updated', '2021-11-22 18:08:35'),
(115, 43, 'admin', 'Note deleted', '2021-11-22 18:08:46'),
(116, 43, 'admin', 'New note added', '2021-11-22 18:09:52');

-- --------------------------------------------------------

--
-- Table structure for table `urls`
--

CREATE TABLE `urls` (
  `id` int(11) NOT NULL,
  `uid` int(11) DEFAULT NULL,
  `url` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'public',
  `deleted` tinyint(1) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `urls`
--

INSERT INTO `urls` (`id`, `uid`, `url`, `status`, `deleted`, `deleted_at`, `created_at`, `updated_at`) VALUES
(78, NULL, 'www.google.com', 'public', 1, NULL, '2021-10-30 20:32:56', '2021-10-30 20:32:56'),
(79, 43, 'google.com', 'private', 1, NULL, '2021-11-22 17:28:34', '2021-11-22 17:28:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `phone` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `gender` varchar(20) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dob` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `photo` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `token_expire` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `verified` tinyint(1) NOT NULL DEFAULT 0,
  `deleted` tinyint(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `phone`, `gender`, `dob`, `photo`, `token`, `token_expire`, `created_at`, `verified`, `deleted`) VALUES
(42, 'test', 'test@gmail.com', '$2y$10$F.yEasblHVkqGD8vQ4ytFOYF12auCHkIW.2OkuzkzH1Rep1Dd65Gi', NULL, NULL, NULL, '', NULL, NULL, '2021-10-15 16:42:18', 0, 0),
(43, 'Jamison Lee Sims', 'jsims1712@gmail.com', '$2y$10$jx8dlF0Moafs2wBoPo4.KOmdzDnbZMN0MBm8GFPDy7eSUCUb2ZdbS', NULL, NULL, NULL, '', 'c6c66dba729a1', '2021-10-15 18:14:58', '2021-10-15 17:52:31', 0, 1),
(44, 'Test_RD', 'test1@gmail.com', '$2y$10$n1d3GACiwp4Abr5in1GKoOc9MkfDhm.JOWqXxi6k4vfIs8/yT5PB6', NULL, NULL, NULL, '', NULL, NULL, '2021-11-05 16:45:11', 0, 1),
(45, 'TestCD', 'test2@gmail.com', '$2y$10$A0joD1NowoEF6FvRH23HaeKA7Rhb96JLxuqHjTFN4D2ZavroqLT1y', NULL, NULL, NULL, '', NULL, NULL, '2021-11-05 16:45:41', 0, 1),
(46, 'TestSD', 'test3@gmail.com', '$2y$10$Y0cn0rxgNPM2d2/Ggi56mu7KYJo0van8Ftdd9WLu7L9.zilWekQp2', NULL, NULL, NULL, '', NULL, NULL, '2021-11-05 16:46:16', 0, 1),
(47, 'TestFG', 'test5@gmail.com', '$2y$10$HwkhYV/QS4X60gIZ56Cr8uLMh3o95x8hpcDuPRva201404JasJu9G', NULL, NULL, NULL, '', NULL, NULL, '2021-11-05 16:48:55', 0, 1),
(48, 'Jamison', 'jsims11712@gmail.com', '$2y$10$1DekyRyUAKOQ72LGJ1wxcuxYAQ8NfweZXTeEVeBfT0hyMGZnxR2Be', NULL, NULL, NULL, '', NULL, NULL, '2021-11-11 21:59:30', 0, 1),
(49, 'Tester Kin', 'tester12@gmail.com', '$2y$10$UKKDeVs29WM7sFFOYSMok.AwKf8Q28weWQppwvWhPQD69O45oe.Iu', NULL, NULL, NULL, '', NULL, NULL, '2021-11-19 17:28:33', 0, 1),
(50, 'Joshua Brandt', 'soccer_jp_@hotmail.com', '$2y$10$KAdPAckmkRFk/A1w.Rb3y.t4GZ6OzCibrYZtupjolZ3YghiOl/Xs6', NULL, NULL, NULL, '', NULL, NULL, '2021-11-22 16:14:03', 0, 1),
(51, 'Tester Simclair', 'tester@yahoomail.com', '$2y$10$kpNAyt650agcwX9w4YR7W.On37fBjW7MwGMLcqiU5J8zGz5iowF1O', NULL, NULL, NULL, '', NULL, NULL, '2021-11-23 19:12:08', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `visitors`
--

CREATE TABLE `visitors` (
  `id` int(2) NOT NULL,
  `hits` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `visitors`
--

INSERT INTO `visitors` (`id`, `hits`) VALUES
(1, 102);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `files`
--
ALTER TABLE `files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `notes`
--
ALTER TABLE `notes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `urls`
--
ALTER TABLE `urls`
  ADD PRIMARY KEY (`id`),
  ADD KEY `uid` (`uid`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `visitors`
--
ALTER TABLE `visitors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `files`
--
ALTER TABLE `files`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notes`
--
ALTER TABLE `notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `urls`
--
ALTER TABLE `urls`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=80;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notes`
--
ALTER TABLE `notes`
  ADD CONSTRAINT `notes_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `notification`
--
ALTER TABLE `notification`
  ADD CONSTRAINT `notification_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `urls`
--
ALTER TABLE `urls`
  ADD CONSTRAINT `urls_ibfk_1` FOREIGN KEY (`uid`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
