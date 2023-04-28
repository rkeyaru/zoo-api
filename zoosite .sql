-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Apr 26, 2023 at 07:20 PM
-- Server version: 8.0.32
-- PHP Version: 7.4.3-4ubuntu2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `zoosite`
--

-- --------------------------------------------------------

--
-- Table structure for table `Animals`
--

CREATE TABLE `Animals` (
  `id` int NOT NULL,
  `name` varchar(50) NOT NULL,
  `gender` varchar(15) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `s_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `Animals`
--

INSERT INTO `Animals` (`id`, `name`, `gender`, `active`, `s_name`) VALUES
(24, 'Lion', 'male', 1, 'Panthrea Leo');

-- --------------------------------------------------------

--
-- Table structure for table `animal_zoo_map`
--

CREATE TABLE `animal_zoo_map` (
  `zoo_id` int NOT NULL,
  `animal_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `firstName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `lastName` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `password` varchar(512) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `userId` int NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `role` varchar(25) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL DEFAULT 'user',
  `image` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`firstName`, `lastName`, `email`, `password`, `userId`, `active`, `role`, `image`) VALUES
('fd', 'fd', 'fdadmin@gmail.com', 'fd', 1, 0, 'user', 'null'),
('fd', 'fd', 'fdafdmin@gmail.com', 'fd', 2, 0, 'user', 'null'),
('admin', 'lastd', 'admin@gmail.com', 'admin', 3, 0, 'admin', 'null'),
('rkeyaru', 'Healer', 'rkeyaru@gmail.com', '1234', 4, 1, 'user', 'null'),
('Rahul', 'Kumar', 'RRRrahul@gmail.com', '12345678', 5, 1, 'user', 'null'),
('Rohit', 'Kumar', 'rohit@gmail.com', '1234', 6, 1, 'user', 'null'),
('Rahul', 'Kumar', 'rkeydddsaru@gmail.com', '123456', 7, 1, 'user', 'null'),
('Rahul', 'Kumar', 'adminfdfdfdfd@gmail.com', 'fdfdfdfdfd', 8, 1, 'user', 'null'),
('Rahul', 'Kumar', 'dfd@gmail.com', '123456', 9, 1, 'user', 'null'),
('user', 'eight', 'user@gmail.com', 'user@123', 10, 1, 'user', 'null'),
('fdff', 'fd', 'rkfdfdfeyaru@gmail.com', 'fdfdfd', 11, 1, 'user', 'null'),
('fdff', 'fd', 'yaru@gmail.com', 'fdfdfd', 12, 1, 'user', 'null'),
('Rahul', 'Kumar', 'yoroju@gmail.com', '1234', 13, 1, 'user', 'null'),
('Rohit', 'Kumar', 'fdfd@gmail.com', 'rohit@123', 14, 1, 'user', 'null'),
('Keyaru', 'Healer', 'key@gmail.com', '347347', 15, 1, 'user', 'null'),
('Rahul', 'Kumar', 'ggg@gmail.com', '1234', 16, 1, 'user', 'null'),
('Rahul', 'Kumar', 'hggg@gmail.com', '24', 17, 1, 'user', 'null'),
('Rahul', 'Kumar', 'REM@GMAIL.COM', 'REM@123', 18, 1, 'user', 'null');

-- --------------------------------------------------------

--
-- Table structure for table `user_roles`
--

CREATE TABLE `user_roles` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `zoo`
--

CREATE TABLE `zoo` (
  `id` int NOT NULL,
  `name` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `active` int NOT NULL DEFAULT '1',
  `state` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `city` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NOT NULL,
  `area` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `zoo`
--

INSERT INTO `zoo` (`id`, `name`, `active`, `state`, `city`, `area`) VALUES
(1, 'Nehru Zoological Park', 1, 'Telangana', 'Hyderabad', 362),
(6, 'Jaipur Zoo', 1, 'Rajsthan', 'Jaipur', 48),
(22, 'Nehru Zoological Park', 1, 'Telangana', 'Hyderabad', 363),
(23, 'Nehru Zoological Park', 1, 'Telangana', 'Hyderabad', 364),
(24, 'Nehru Zoological Park', 1, 'Telangana', 'Hybad', 362),
(28, 'cxcx', 0, 'fdfd', 'dfdfd', 434),
(33, 'Rahul\'s Zoo', 1, 'Himachal Pradesh', 'Gurial', 243),
(53, 'Valhalla', 1, 'Punjab', 'Jalandhar', 123),
(54, 'fdfd', 0, 'fd', 'fd', 123),
(60, 'Lion', 0, 'Himachal Pradesh', 'Jalandhar', 123),
(61, 'aaa', 0, 'aaa', 'aaa', 123),
(62, 'aaa', 0, 'aaa', 'aaaaaa', 353),
(70, 'eeee', 0, 'eee', 'eee', 333),
(71, 'Valhalla', 0, 'Himachal Pradesh', 'Jalandhar', 123),
(73, 'Valhalla', 0, 'Punjab', 'Jalandhar', 666),
(74, 'Valhalla', 0, 'Punjab', 'Jalandhar', 121),
(75, 'DS', 0, 'SD', 'DS', 4),
(76, 'A', 0, 'HP', 'Kangra', 33);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Animals`
--
ALTER TABLE `Animals`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `animal_zoo_map`
--
ALTER TABLE `animal_zoo_map`
  ADD KEY `animal_zoo_map_ibfk_1` (`animal_id`),
  ADD KEY `animal_zoo_map_ibfk_2` (`zoo_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`userId`);

--
-- Indexes for table `user_roles`
--
ALTER TABLE `user_roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `zoo`
--
ALTER TABLE `zoo`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Animals`
--
ALTER TABLE `Animals`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `userId` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `zoo`
--
ALTER TABLE `zoo`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
