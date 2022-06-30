-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2022 at 05:59 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.3.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `womensecurity`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '08-05-2020 07:23:45 PM');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id` int(11) NOT NULL,
  `categoryName` varchar(255) NOT NULL,
  `categoryDescription` longtext NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `categoryName`, `categoryDescription`, `creationDate`, `updationDate`) VALUES
(1, 'In House', 'Harrasment in house', '2022-05-28 08:19:31', '28-05-2022 01:49:46 PM'),
(2, 'In Public places', 'Harrasments in Public Places', '2022-05-28 08:39:21', ''),
(3, 'In work place', 'harasment in working plkace', '2022-06-02 09:51:56', ''),
(4, 'In work place', 'harasment in working plkace', '2022-06-02 09:53:54', '');

-- --------------------------------------------------------

--
-- Table structure for table `complaintremark`
--

CREATE TABLE `complaintremark` (
  `id` int(11) NOT NULL,
  `complaintNumber` int(11) NOT NULL,
  `status` varchar(255) NOT NULL,
  `remark` mediumtext DEFAULT NULL,
  `remarkDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complaintremark`
--

INSERT INTO `complaintremark` (`id`, `complaintNumber`, `status`, `remark`, `remarkDate`) VALUES
(3, 2, 'in process', 'On the way of enquiry', '2022-06-02 04:00:11'),
(4, 2, 'closed', 'Complaint closed with arrasting criminals.', '2022-06-02 04:01:40'),
(5, 3, 'in process', 'on the way of enquiry', '2022-06-02 09:56:03'),
(6, 3, 'closed', 'closed problems', '2022-06-02 09:56:47'),
(7, 4, 'in process', 'test', '2022-06-20 11:22:43'),
(8, 5, 'in process', 'moved to process', '2022-06-28 07:19:01');

-- --------------------------------------------------------

--
-- Table structure for table `emergency`
--

CREATE TABLE `emergency` (
  `id` int(11) NOT NULL,
  `lattitude` varchar(500) DEFAULT NULL,
  `longitude` varchar(500) DEFAULT NULL,
  `createddate` datetime NOT NULL DEFAULT current_timestamp(),
  `status` varchar(200) NOT NULL DEFAULT '0'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `emergency`
--

INSERT INTO `emergency` (`id`, `lattitude`, `longitude`, `createddate`, `status`) VALUES
(1, '9.9861842', '76.3289828', '2022-06-28 14:10:36', '0'),
(2, '9.9861842', '76.3289828', '2022-06-28 14:25:11', '0'),
(3, '', '', '2022-06-29 20:48:53', '0');

-- --------------------------------------------------------

--
-- Table structure for table `police`
--

CREATE TABLE `police` (
  `id` int(11) NOT NULL,
  `stationName` varchar(255) NOT NULL,
  `policeEmail` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `contactNo` bigint(11) NOT NULL,
  `status` int(11) NOT NULL,
  `stationid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `police`
--

INSERT INTO `police` (`id`, `stationName`, `policeEmail`, `password`, `contactNo`, `status`, `stationid`) VALUES
(3, 'Wadakkanchery', 'test@testmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 9874563210, 1, NULL),
(4, 'New', 'test2@testmail.com', 'e10adc3949ba59abbe56e057f20f883e', 123456, 1, NULL),
(5, 'Erumapetty', 'erumapettypolice@gmail.com', 'fec3a7b6da85bbc8dbcdd8f68b83c882', 9167435422, 1, 9);

-- --------------------------------------------------------

--
-- Table structure for table `state`
--

CREATE TABLE `state` (
  `id` int(11) NOT NULL,
  `stateName` varchar(255) NOT NULL,
  `stateDescription` tinytext NOT NULL,
  `postingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `state`
--

INSERT INTO `state` (`id`, `stateName`, `stateDescription`, `postingDate`, `updationDate`) VALUES
(5, 'Kerala', 'Kerala is state in India. Police stations in Kerala registered.', '2022-06-06 15:35:39', ''),
(6, 'Tamil Nadu', 'TN', '2022-06-28 07:17:27', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `station`
--

CREATE TABLE `station` (
  `id` int(11) NOT NULL,
  `stateid` int(11) NOT NULL,
  `station` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `station`
--

INSERT INTO `station` (`id`, `stateid`, `station`, `creationDate`, `updationDate`) VALUES
(2, 5, 'Wadakkanchery', '2022-06-20 11:23:28', '2022-06-20 11:18:38'),
(3, 5, 'Trichur', '2022-06-20 11:18:50', '2022-06-20 11:18:50'),
(4, 5, 'Puthukad', '2022-06-21 09:16:48', '2022-06-21 09:16:48'),
(6, 5, 'Ollur', '2022-06-28 07:10:16', '2022-06-28 07:10:16'),
(7, 5, 'Ernakulam', '2022-06-28 07:10:38', '2022-06-28 07:10:38'),
(8, 6, 'test', '2022-06-28 07:17:37', '2022-06-28 07:17:37'),
(9, 5, 'Erumapetty', '2022-06-29 15:22:11', '2022-06-29 15:22:11'),
(10, 5, 'Erumapetty', '2022-06-29 15:30:40', '2022-06-29 15:30:40');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `id` int(11) NOT NULL,
  `categoryid` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `creationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`id`, `categoryid`, `subcategory`, `creationDate`, `updationDate`) VALUES
(1, 1, 'Harrasment from Husband', '2022-05-28 08:24:36', ''),
(2, 1, 'Harrasment from Father- in- law', '2022-05-28 08:25:41', ''),
(3, 1, 'Harrasment from Mother- in- law', '2022-05-28 08:26:16', ''),
(4, 1, 'Harrasment from sister-in law', '2022-05-28 08:26:41', ''),
(5, 1, 'Harrasment from son', '2022-05-28 08:27:17', ''),
(6, 1, 'Harrasment from Daughter', '2022-05-28 08:27:48', ''),
(7, 1, 'Harrasment from Father', '2022-05-28 08:28:26', ''),
(8, 1, 'Harrasment from Mother', '2022-05-28 08:28:52', ''),
(9, 1, 'Harassment from Brother', '2022-05-28 08:29:12', ''),
(10, 1, 'Harrassments from sister', '2022-05-28 08:29:45', ''),
(11, 1, 'Harrasments from Relatives', '2022-05-28 08:30:21', ''),
(12, 1, 'Others', '2022-05-28 08:30:31', ''),
(13, 2, 'Attack from stranger', '2022-06-28 07:15:34', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcomplaints`
--

CREATE TABLE `tblcomplaints` (
  `complaintNumber` int(11) NOT NULL,
  `userId` int(11) NOT NULL,
  `category` int(11) NOT NULL,
  `subcategory` varchar(255) NOT NULL,
  `complaintType` varchar(255) NOT NULL,
  `state` varchar(255) NOT NULL,
  `noc` varchar(255) NOT NULL,
  `complaintDetails` mediumtext NOT NULL,
  `complaintFile` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` varchar(50) DEFAULT NULL,
  `lastUpdationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `station` int(32) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcomplaints`
--

INSERT INTO `tblcomplaints` (`complaintNumber`, `userId`, `category`, `subcategory`, `complaintType`, `state`, `noc`, `complaintDetails`, `complaintFile`, `regDate`, `status`, `lastUpdationDate`, `station`) VALUES
(2, 3, 1, 'Harrasments from Relatives', 'General Query', '5', 'Harrasment from relatives', 'My relatives harrassed me.', '', '2022-06-02 03:58:01', 'closed', '2022-06-02 04:01:40', 2),
(3, 3, 1, 'Harrasment from Husband', 'General Query', '5', 'Harrasment', 'he harras me ', '', '2022-06-02 09:55:24', 'closed', '2022-06-20 11:27:26', 2),
(4, 3, 1, 'Harrasment from Husband', 'General Query', '5', 'Harrasment', 'he harras me ', '', '2022-06-02 09:57:05', 'in process', '2022-06-20 11:27:31', 3),
(5, 10, 1, 'Harrasment from Father- in- law', ' Complaint', '5', 'test', 'test', 'Microsoft.QualityTools.Testing.Fakes.resources.dll', '2022-06-28 06:15:44', 'in process', '2022-06-28 06:15:44', 4),
(6, 5, 2, 'Attack from stranger', 'General Query', '5', 'attack', 'attack from strangers', '', '2022-06-29 15:24:42', NULL, '2022-06-29 15:24:42', NULL),
(7, 5, 2, 'Attack from stranger', 'General Query', '5', 'attack', 'attack from strangers', '', '2022-06-29 15:25:02', NULL, '2022-06-29 15:25:02', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `userlog`
--

CREATE TABLE `userlog` (
  `id` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `userip` binary(16) NOT NULL,
  `loginTime` timestamp NOT NULL DEFAULT current_timestamp(),
  `logout` varchar(255) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userlog`
--

INSERT INTO `userlog` (`id`, `uid`, `username`, `userip`, `loginTime`, `logout`, `status`) VALUES
(20, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 15:55:43', '', 0),
(21, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 15:56:39', '01-06-2022 10:40:19 PM', 1),
(22, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-01 18:50:09', '02-06-2022 12:45:04 AM', 1),
(23, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 03:54:36', '02-06-2022 09:28:46 AM', 1),
(24, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:02:50', '02-06-2022 09:33:39 AM', 1),
(25, 4, 'chanchal@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:05:25', '02-06-2022 09:35:31 AM', 1),
(26, 0, 'jinijames@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:11:35', '', 0),
(27, 0, 'jinijames@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:11:52', '', 0),
(28, 0, 'jinijames@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:12:57', '', 0),
(29, 0, 'jinijames@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:15:38', '', 0),
(30, 6, 'jinijames@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:15:54', '02-06-2022 09:46:09 AM', 1),
(31, 0, 'anjithanakul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:18:45', '', 0),
(32, 0, 'anjithanakul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:19:08', '', 0),
(33, 8, 'anjithanakul@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 04:21:22', '02-06-2022 09:51:39 AM', 1),
(34, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-02 09:50:31', '', 1),
(35, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:19:38', '', 0),
(36, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:19:50', '', 0),
(37, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:20:02', '', 0),
(38, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:20:38', '', 0),
(39, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:20:53', '', 0),
(40, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:21:05', '', 0),
(41, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:21:15', '', 0),
(42, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:21:27', '', 0),
(43, 0, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:21:47', '', 0),
(44, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-06 09:22:00', '06-06-2022 02:55:21 PM', 1),
(45, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-07 06:11:08', '', 1),
(46, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-07 07:18:25', '07-06-2022 01:38:55 PM', 1),
(47, 0, 'erumapettypolice@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-08 06:26:11', '', 0),
(48, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-12 14:58:26', '12-06-2022 10:30:45 PM', 1),
(49, 3, 'meghana121999@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-29 15:20:56', '', 1),
(50, 5, 'erumapettypolice@gmail.com', 0x3a3a3100000000000000000000000000, '2022-06-29 15:23:50', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `fullName` varchar(255) DEFAULT NULL,
  `userEmail` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `contactNo` bigint(11) DEFAULT NULL,
  `address` tinytext DEFAULT NULL,
  `State` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `pincode` int(6) DEFAULT NULL,
  `userImage` varchar(255) DEFAULT NULL,
  `regDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `updationDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `status` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `fullName`, `userEmail`, `password`, `contactNo`, `address`, `State`, `country`, `pincode`, `userImage`, `regDate`, `updationDate`, `status`) VALUES
(3, 'Meghana K B', 'meghana121999@gmail.com', '9b0a1cc707649eee691009b7259e2217', 8330868130, 'Karumukkil(ho) Kundannur(p.o) Muttikkal ', 'Kerala', 'India', 680590, NULL, '2022-06-01 15:56:18', '2022-06-02 03:56:14', 1),
(4, 'Chanchal KB', 'chanchal@gmail.com', 'c80a23de5b6a66b6e2e34b57297fa6d5', 9446221153, NULL, NULL, NULL, NULL, NULL, '2022-06-02 04:04:47', '0000-00-00 00:00:00', 1),
(6, 'Jini James', 'jinijames@gmail.com', '8d4730a34273e05fa20905c570d59f1e', 9495238939, NULL, NULL, NULL, NULL, NULL, '2022-06-02 04:15:24', '0000-00-00 00:00:00', 1),
(8, 'Anjitha Nakul', 'anjithanakul@gmail.com', '0b8dce6aa858ead94ba6a6a9782fbeb5', 9867432210, NULL, NULL, NULL, NULL, NULL, '2022-06-02 04:21:05', '0000-00-00 00:00:00', 1),
(9, 'test', 'test@testmail.com', 'cc03e747a6afbbcbf8be7668acfebee5', 9874563210, 'Test', 'Kerala', 'India', 600001, NULL, '2022-06-20 11:01:05', '2022-06-20 11:01:05', 1),
(10, 'user', 'user@testmail.com', '6ad14ba9986e3615423dfca256d04e3f', 9874563210, NULL, NULL, NULL, NULL, NULL, '2022-06-28 05:19:59', '2022-06-28 05:19:59', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `complaintremark`
--
ALTER TABLE `complaintremark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `emergency`
--
ALTER TABLE `emergency`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `police`
--
ALTER TABLE `police`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `state`
--
ALTER TABLE `state`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `station`
--
ALTER TABLE `station`
  ADD PRIMARY KEY (`id`),
  ADD KEY `stateid` (`stateid`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  ADD PRIMARY KEY (`complaintNumber`);

--
-- Indexes for table `userlog`
--
ALTER TABLE `userlog`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
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
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `complaintremark`
--
ALTER TABLE `complaintremark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `emergency`
--
ALTER TABLE `emergency`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `police`
--
ALTER TABLE `police`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `state`
--
ALTER TABLE `state`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `station`
--
ALTER TABLE `station`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `tblcomplaints`
--
ALTER TABLE `tblcomplaints`
  MODIFY `complaintNumber` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `userlog`
--
ALTER TABLE `userlog`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
