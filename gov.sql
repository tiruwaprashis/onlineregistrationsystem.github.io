-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 06, 2025 at 08:20 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gov`
--

-- --------------------------------------------------------

--
-- Table structure for table `husband_details`
--

CREATE TABLE `husband_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_number` int(11) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `witness_name` varchar(255) NOT NULL,
  `witness_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `husband_details`
--

INSERT INTO `husband_details` (`id`, `full_name`, `dob`, `marital_status`, `religion`, `id_type`, `id_number`, `father_name`, `mother_name`, `permanent_address`, `ward_no`, `witness_name`, `witness_address`) VALUES
(14, 'prashis', '2024-02-25', 'Bachelor', 'hindu', 'Citizenship ID', 12341234, 'hari', 'sita', 'ktm', 3, 'ram', 'ktm'),
(15, 'Hari Paudel', '1989-06-06', 'Bachelor', 'Hindu', 'Citizenship ID', 622, 'Narayan Paudel', 'Sita Paudel', 'Balaju-3, KTM', 3, 'Ram Thapa', 'Balaju-3, KTM');

-- --------------------------------------------------------

--
-- Table structure for table `wife_details`
--

CREATE TABLE `wife_details` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `dob` date NOT NULL,
  `marital_status` varchar(50) NOT NULL,
  `religion` varchar(255) NOT NULL,
  `id_type` varchar(50) NOT NULL,
  `id_number` int(11) NOT NULL,
  `father_name` varchar(255) NOT NULL,
  `mother_name` varchar(255) NOT NULL,
  `permanent_address` varchar(255) NOT NULL,
  `ward_no` int(11) NOT NULL,
  `witness_name` varchar(255) NOT NULL,
  `witness_address` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `wife_details`
--

INSERT INTO `wife_details` (`id`, `full_name`, `dob`, `marital_status`, `religion`, `id_type`, `id_number`, `father_name`, `mother_name`, `permanent_address`, `ward_no`, `witness_name`, `witness_address`) VALUES
(14, 'gita', '2024-02-26', 'Bachelor', 'hindu', 'Citizenship ID', 234123, 'dev', 'rita', 'pkr', 23423, 'laxmi', 'pkr'),
(15, 'Gita Bhandari', '1998-02-03', 'Bachelor', 'Hindu', 'Citizenship ID', 6223, 'Gagan Bhandari', 'Devi Bhandari', 'Balaju-1, KTM', 1, 'Laxmi Paudel', 'Balaju-1, KTM');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `husband_details`
--
ALTER TABLE `husband_details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wife_details`
--
ALTER TABLE `wife_details`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `husband_details`
--
ALTER TABLE `husband_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `wife_details`
--
ALTER TABLE `wife_details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
