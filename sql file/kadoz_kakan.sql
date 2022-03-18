-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 13, 2021 at 10:34 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kadoz_kakan`
--

-- --------------------------------------------------------

--
-- Table structure for table `constituency`
--

CREATE TABLE `constituency` (
  `id` int(11) NOT NULL,
  `constituency_name` varchar(30) NOT NULL,
  `countyid` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `constituency`
--

INSERT INTO `constituency` (`id`, `constituency_name`, `countyid`) VALUES
(1, 'Machakos Town', 1),
(2, 'Masii', 1),
(3, 'Mwala', 1),
(4, 'Kathiani', 1),
(5, 'Mavoko', 1),
(6, 'Kibwezi', 2),
(7, 'Mbooni', 2),
(8, 'Kitui Central', 3),
(9, 'Mutomo', 3),
(10, 'Dagoreti', 4),
(11, 'Embakasi', 4);

-- --------------------------------------------------------

--
-- Table structure for table `county`
--

CREATE TABLE `county` (
  `countyid` int(11) NOT NULL,
  `sortname` varchar(3) NOT NULL,
  `county` varchar(150) NOT NULL,
  `tcode` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `county`
--

INSERT INTO `county` (`countyid`, `sortname`, `county`, `tcode`) VALUES
(1, 'MK', 'Machakos', ''),
(2, 'MN', 'Makueni', ''),
(3, 'KT', 'Kitui', ''),
(4, 'NR', 'Nairobi', '');

-- --------------------------------------------------------

--
-- Table structure for table `ward`
--

CREATE TABLE `ward` (
  `id` int(11) NOT NULL,
  `ward` varchar(30) NOT NULL,
  `constid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ward`
--

INSERT INTO `ward` (`id`, `ward`, `constid`) VALUES
(1, 'Ngelani', 1),
(2, 'Mutituni', 1),
(3, 'Nzoweni', 1),
(4, 'Mua Hills', 1),
(5, 'Kathaana', 1),
(6, 'Masii Central', 2),
(7, 'Masii East', 2),
(8, 'Masii West', 2),
(9, 'Mwala Central', 3),
(10, 'Mwala East', 3),
(11, 'Mwala West', 3),
(12, 'Mitaboni', 4),
(13, 'Ngoleni', 4),
(14, 'Athi River', 5),
(15, 'Syokimau', 5),
(16, 'Kibwezi Central', 6),
(17, 'Kibwezi East', 6),
(18, 'Mbooni West', 7),
(19, 'Mbooni Central', 7),
(20, 'Mwingi', 8),
(21, 'Kabati', 8),
(22, 'Mutomo West', 9),
(23, 'Mutomo Central', 9),
(24, 'Dagoreti Central', 10),
(25, 'Dagoreti Central', 10),
(26, 'Embakasi East', 11),
(27, 'Embakasi West', 11);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `constituency`
--
ALTER TABLE `constituency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `county`
--
ALTER TABLE `county`
  ADD PRIMARY KEY (`countyid`);

--
-- Indexes for table `ward`
--
ALTER TABLE `ward`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `constituency`
--
ALTER TABLE `constituency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4121;

--
-- AUTO_INCREMENT for table `county`
--
ALTER TABLE `county`
  MODIFY `countyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=247;

--
-- AUTO_INCREMENT for table `ward`
--
ALTER TABLE `ward`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47577;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
