-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 22, 2024 at 11:24 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 7.4.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `veloxndb`
--

-- --------------------------------------------------------

--
-- Table structure for table `req_query_table`
--

CREATE TABLE `req_query_table` (
  `id` int(10) NOT NULL,
  `full_name` varchar(100) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `subject` varchar(200) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `Location` varchar(100) DEFAULT NULL,
  `date_time` datetime DEFAULT NULL,
  `vpage_url` varchar(200) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `req_query_table`
--

INSERT INTO `req_query_table` (`id`, `full_name`, `phone_number`, `email`, `subject`, `message`, `Location`, `date_time`, `vpage_url`) VALUES
(1, 'Sanjay', '9958439076', 'sanjaykumar7pm@gmail.com', '', 'xgfxgfghghj', NULL, NULL, NULL),
(2, 'Sanjay', '9958439076', 'sanjaykumar7pm@gmail.com', '', 'this is a test Message', NULL, NULL, NULL),
(3, 'Sanjay', '9958439076', 'sanjaykumar7pm@gmail.com', 'Query Contact from Veloxn School Education Management System page', 'testing11', NULL, NULL, NULL),
(4, 'Sanjay Kumar', '09958439076', 'sanjay.sirohee@gmail.com', 'Contact from Veloxn Home Contact', 'sdsdsdsds', NULL, NULL, NULL),
(5, 'Sanjay Kumar', '9958439076', 'sanjay.sirohee@gmail.com', 'Contact from Veloxn Home Contact', 'dsdsd', NULL, NULL, NULL),
(6, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'This is a Test from Sanjay', NULL, NULL, NULL),
(7, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'ttttgdfgf', NULL, NULL, NULL),
(8, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'fdfdfd', NULL, NULL, NULL),
(9, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn School Education Management System Contact', 'School Management Software', NULL, NULL, NULL),
(10, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn School Education Management System Contact', 'testing', NULL, NULL, NULL),
(11, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'sdzsfdf', NULL, NULL, NULL),
(12, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'fgfgf', NULL, NULL, NULL),
(13, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn School Education Management System Contact', 'fdfsdgf', NULL, NULL, NULL),
(14, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Social Networking Software Contact', 'dfdsfgdsfgdg', NULL, NULL, NULL),
(15, 'Sanjay Kumar', '7678665537', 'sanjayksir@gmail.com', 'Contact from Veloxn Home Contact', 'test', NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `req_query_table`
--
ALTER TABLE `req_query_table`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `req_query_table`
--
ALTER TABLE `req_query_table`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
