-- phpMyAdmin SQL Dump
-- version 5.0.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 08, 2020 at 11:10 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sic`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `accountID` int(3) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `country` varchar(20) NOT NULL,
  `state` varchar(20) NOT NULL,
  `city` varchar(30) NOT NULL,
  `Postal_Code` int(2) DEFAULT NULL,
  `mobile_no` varchar(15) NOT NULL,
  `Gender` varchar(6) NOT NULL,
  `pwd` varchar(100) NOT NULL,
  `type` varchar(8) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`accountID`, `fname`, `lname`, `email`, `country`, `state`, `city`, `Postal_Code`, `mobile_no`, `Gender`, `pwd`, `type`) VALUES
(1, 'Aftab', 'Ahmed', 'aftab.baloch69@gmail.com', 'Pakistan', 'Karachi', 'Karachi', 75200, '03496904833', 'Male', '$2y$10$lfWYn9SGKpuFRsFBlgRFruPwbmQwWo4RlUeE2P75.cWDaMWDrAfTy', 'Buyer'),
(2, 'azmat', 'ali', 'scientistazmat@gmail.com', 'pakistan', 'karachi', 'hadeed', 49077, '3368149077', 'male', '49077', 'seller');

-- --------------------------------------------------------

--
-- Table structure for table `borrower`
--

CREATE TABLE `borrower` (
  `borrower_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE `buyer` (
  `buyer_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `buyer`
--

INSERT INTO `buyer` (`buyer_id`) VALUES
(1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `categoryid` int(11) NOT NULL,
  `cname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`categoryid`, `cname`) VALUES
(1, 'Mobiles Phone'),
(2, 'Books'),
(3, 'Vehicles'),
(4, 'food'),
(5, 'cloths'),
(6, 'Pets');

-- --------------------------------------------------------

--
-- Table structure for table `coupne`
--

CREATE TABLE `coupne` (
  `copen_id` int(10) UNSIGNED NOT NULL,
  `copen_name` varchar(20) NOT NULL,
  `copen_owner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `doner`
--

CREATE TABLE `doner` (
  `doner_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderlist`
--

CREATE TABLE `orderlist` (
  `orderid` int(11) DEFAULT NULL,
  `productid` int(11) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordertable`
--

CREATE TABLE `ordertable` (
  `purchasedate` date NOT NULL,
  `orderid` int(10) UNSIGNED NOT NULL,
  `buyer_id` int(11) NOT NULL,
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `productid` int(10) UNSIGNED NOT NULL,
  `pname` varchar(20) NOT NULL,
  `seller_id` int(11) NOT NULL,
  `quaintity` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `conditions` varchar(50) NOT NULL,
  `imagesource` varchar(50) DEFAULT NULL,
  `category_id` int(11) NOT NULL,
  `pdescription` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`productid`, `pname`, `seller_id`, `quaintity`, `price`, `conditions`, `imagesource`, `category_id`, `pdescription`) VALUES
(1, 'vivo', 2, 1, 1000, 'new', 'images/1.jpg', 1, '48 MP camera'),
(2, 'oppo', 2, 1, 1000, 'new', 'images/2.jpg', 1, '48 MP camera'),
(3, 'samsung', 2, 1, 10000, 'new', 'images/3.jpg', 1, '48 MP camera 6.4 inches dispaly'),
(4, 'The Alchemist', 2, 25, 250, 'new', 'images/4.jpg', 2, 'The Alchemist by Paulo Coelho continues to change the lives of its readers'),
(5, 'he 7 Habits of Highl', 2, 25, 300, 'new', 'images/5.jpg', 2, 'The 7 Habits of Highly Effective People by Stephen R. Covey is a self-improvement book'),
(6, 'The Secrets of the S', 2, 25, 100, 'new', 'images/6.jpg', 2, 'The Secrets of the Self; published in Persian, 1915) was the first philosophical poetry book of Allama Iqbal, the great poet-philosopher of British In'),
(7, '2021 BMW 740', 2, 2, 86800, 'new', 'images/7.jpg', 3, 'Minimal steering feedback\r\nLegibility of silver- and glasslike buttons\r\nPracticality of gesture controls\r\nHuge rear doors a liability in parking lots'),
(8, '2021 Audi A6', 2, 2, 59800, 'new', 'images/8.jpg', 3, 'The Bad\r\nLack of physical controls for climate system\r\nInterior storage space'),
(9, '2021 BMW 540', 2, 2, 61750, 'new', 'images/9.jpg', 3, 'By Brian Normile\r\nCompetes with: Mercedes-Benz E-Class, Audi A6, Genesis G80, Jaguar XF\r\nLooks like: A 5 Series with a bigger mouth and a bit of a nip'),
(10, 'paint coat 3', 2, 1, 5000, 'new', 'images/10.jpg', 5, 'grey paint coat with styles look'),
(11, 'sharara', 2, 2, 2500, 'new', 'images/11.jpg', 5, 'light green sharara with make you feel amaze'),
(13, 'kid paint with new l', 2, 2, 2500, 'new', 'images/12.jpg', 5, 'light blue jeans '),
(14, 'biryani', 2, 2, 150, 'new', 'images/14.jpg', 4, 'grma gram delisious biryani '),
(15, 'kofta', 2, 2, 200, 'new', 'images/15.jpg', 4, 'grma gram with delicious kofta '),
(16, 'Nihari', 2, 2, 200, 'new', 'images/16.jpg', 4, 'grma gram Nihari with boneless boty '),
(17, 'loin', 2, 2, 20000, 'new', 'images/17.jpg', 6, 'loins with their children'),
(18, 'egal', 2, 2, 205000, 'new', 'images/18.jpg', 6, 'Egal with beautiful color'),
(19, 'sheep', 2, 2, 20000, 'new', 'images/19.jpg', 6, 'this sheep belongs to hills');

-- --------------------------------------------------------

--
-- Table structure for table `seler`
--

CREATE TABLE `seler` (
  `seller_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seler`
--

INSERT INTO `seler` (`seller_id`) VALUES
(2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `account`
--
ALTER TABLE `account`
  ADD PRIMARY KEY (`accountID`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- Indexes for table `borrower`
--
ALTER TABLE `borrower`
  ADD PRIMARY KEY (`borrower_id`);

--
-- Indexes for table `buyer`
--
ALTER TABLE `buyer`
  ADD PRIMARY KEY (`buyer_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`categoryid`,`cname`);

--
-- Indexes for table `coupne`
--
ALTER TABLE `coupne`
  ADD PRIMARY KEY (`copen_id`),
  ADD KEY `fkacc` (`copen_owner`);

--
-- Indexes for table `doner`
--
ALTER TABLE `doner`
  ADD PRIMARY KEY (`doner_id`);

--
-- Indexes for table `orderlist`
--
ALTER TABLE `orderlist`
  ADD UNIQUE KEY `productid` (`productid`);

--
-- Indexes for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD PRIMARY KEY (`orderid`),
  ADD KEY `seller_id` (`seller_id`),
  ADD KEY `buyer_id` (`buyer_id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`productid`),
  ADD UNIQUE KEY `imagesource` (`imagesource`),
  ADD KEY `fksidi` (`seller_id`),
  ADD KEY `fkcidi` (`category_id`);

--
-- Indexes for table `seler`
--
ALTER TABLE `seler`
  ADD PRIMARY KEY (`seller_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `account`
--
ALTER TABLE `account`
  MODIFY `accountID` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupne`
--
ALTER TABLE `coupne`
  MODIFY `copen_id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ordertable`
--
ALTER TABLE `ordertable`
  MODIFY `orderid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `productid` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `borrower`
--
ALTER TABLE `borrower`
  ADD CONSTRAINT `borrower_ibfk_1` FOREIGN KEY (`borrower_id`) REFERENCES `account` (`accountID`);

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `fkbid` FOREIGN KEY (`buyer_id`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `coupne`
--
ALTER TABLE `coupne`
  ADD CONSTRAINT `fkacc` FOREIGN KEY (`copen_owner`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `doner`
--
ALTER TABLE `doner`
  ADD CONSTRAINT `FKDID` FOREIGN KEY (`doner_id`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ordertable`
--
ALTER TABLE `ordertable`
  ADD CONSTRAINT `ordertable_ibfk_1` FOREIGN KEY (`seller_id`) REFERENCES `seler` (`seller_id`),
  ADD CONSTRAINT `ordertable_ibfk_2` FOREIGN KEY (`buyer_id`) REFERENCES `buyer` (`buyer_id`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `fkcidi` FOREIGN KEY (`category_id`) REFERENCES `category` (`categoryid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `fksidi` FOREIGN KEY (`seller_id`) REFERENCES `seler` (`seller_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seler`
--
ALTER TABLE `seler`
  ADD CONSTRAINT `FKSID` FOREIGN KEY (`seller_id`) REFERENCES `account` (`accountID`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
