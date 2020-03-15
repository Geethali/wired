-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2020 at 07:22 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbWired`
--

-- --------------------------------------------------------

--
-- Table structure for table `ACCESSORIES`
--

CREATE TABLE `ACCESSORIES` (
  `productNumber` int(11) NOT NULL,
  `wiredType` enum('type1','type2','type3','type4','type5','type6') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `PRODUCT`
--

CREATE TABLE `PRODUCT` (
  `productNumber` int(11) NOT NULL,
  `productName` varchar(30) NOT NULL,
  `productBrand` varchar(30) NOT NULL,
  `productDescription` longtext DEFAULT NULL,
  `productType` enum('wired','wireless','accessories') DEFAULT NULL,
  `productImage` varchar(30) NOT NULL,
  `price` double NOT NULL,
  `quantityInStock` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `WIRED`
--

CREATE TABLE `WIRED` (
  `productNumber` int(11) NOT NULL,
  `wiredType` enum('type1','type2','type3','type4') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `WIRELESS`
--

CREATE TABLE `WIRELESS` (
  `productNumber` int(11) NOT NULL,
  `wirelessType` enum('type1','type2') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ACCESSORIES`
--
ALTER TABLE `ACCESSORIES`
  ADD KEY `productNumber` (`productNumber`);

--
-- Indexes for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  ADD PRIMARY KEY (`productNumber`);

--
-- Indexes for table `WIRED`
--
ALTER TABLE `WIRED`
  ADD KEY `productNumber` (`productNumber`);

--
-- Indexes for table `WIRELESS`
--
ALTER TABLE `WIRELESS`
  ADD KEY `productNumber` (`productNumber`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `PRODUCT`
--
ALTER TABLE `PRODUCT`
  MODIFY `productNumber` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ACCESSORIES`
--
ALTER TABLE `ACCESSORIES`
  ADD CONSTRAINT `ACCESSORIES_ibfk_1` FOREIGN KEY (`productNumber`) REFERENCES `PRODUCT` (`productNumber`) ON DELETE CASCADE;

--
-- Constraints for table `WIRED`
--
ALTER TABLE `WIRED`
  ADD CONSTRAINT `WIRED_ibfk_1` FOREIGN KEY (`productNumber`) REFERENCES `PRODUCT` (`productNumber`) ON DELETE CASCADE;

--
-- Constraints for table `WIRELESS`
--
ALTER TABLE `WIRELESS`
  ADD CONSTRAINT `WIRELESS_ibfk_1` FOREIGN KEY (`productNumber`) REFERENCES `PRODUCT` (`productNumber`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
