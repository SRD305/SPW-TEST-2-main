-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 20, 2020 at 07:50 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pgasdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `UserName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 353, 'admin@gmail.com', '$argon2i$v=19$m=65536,t=4,p=1$OUV0OWhNMU96dE43LzE0UA$3UQa1qIZAcBMHeMX33e+0cyEgSokJaCgXsseCf26t8U', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblbookpg`
--

CREATE TABLE `tblbookpg` (
  `ID` int(10) NOT NULL,
  `Userid` int(10) DEFAULT NULL,
  `Pgid` int(10) DEFAULT NULL,
  `BookingNumber` int(10) NOT NULL,
  `CheckinDate` date DEFAULT NULL,
  `UserMsg` varchar(250) DEFAULT NULL,
  `BookingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `Remark` varchar(50) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblbookpg`
--

INSERT INTO `tblbookpg` (`ID`, `Userid`, `Pgid`, `BookingNumber`, `CheckinDate`, `UserMsg`, `BookingDate`, `Remark`, `Status`, `RemDate`) VALUES
(26, 19, 16, 125680695, '2020-04-10', '<script>alert(0)</script>', '2020-04-18 12:05:03', NULL, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblcity`
--

CREATE TABLE `tblcity` (
  `ID` int(10) NOT NULL,
  `StateID` int(10) DEFAULT NULL,
  `City` varchar(120) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblcity`
--

INSERT INTO `tblcity` (`ID`, `StateID`, `City`, `CreationDate`) VALUES
(2, 2, 'Co. Dublin', '2019-05-07 08:41:00'),
(3, 2, 'Co. Meath', '2019-05-07 08:41:08'),
(4, 3, 'Co .Cork', '2019-05-07 08:41:20'),
(5, 6, 'Co. Waterford', '2019-05-07 08:41:28'),
(6, 2, 'Jaipur', '2019-05-07 08:42:16'),
(7, 8, 'Gangtok', '2019-05-07 08:43:10'),
(8, 8, 'Peeling', '2019-05-07 08:43:25'),
(9, 8, 'Namchi', '2019-05-07 08:43:38'),
(10, 8, 'Ravangla', '2019-05-07 08:43:59'),
(11, 8, 'Mangan', '2019-05-07 08:44:16'),
(12, 2, 'Bhopal', '2019-05-07 08:44:45'),
(13, 2, 'Indore', '2019-05-07 08:44:57'),
(14, 2, 'Indore', '2019-05-07 08:45:10'),
(15, 11, 'Chennai', '2019-06-18 18:15:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblowner`
--

CREATE TABLE `tblowner` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblowner`
--

INSERT INTO `tblowner` (`ID`, `FullName`, `Email`, `MobileNumber`, `Password`, `RegDate`) VALUES
(4, 'Aaditya', 'saadityadharma@gmail.com', 7397091516, '$argon2i$v=19$m=65536,t=4,p=1$TVZXbEIwbHkuYWhreEUydA$z4yLvB0YR1jhEnuy4UZ4D2Wt0dNBk1BJEgj4uorEHxA', '2020-04-17 03:34:11'),
(5, 'Owner', 'owner@gmail.com', 4872349875, '$argon2i$v=19$m=65536,t=4,p=1$SkpRdHJWVkVEclBYdHdPWg$ZWRvbrjJjPpmXacdBmK6vq+LRqd0yKxXXqsZiEG1nS0', '2020-04-19 01:20:10');

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE `tblpages` (
  `ID` int(11) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `Fulfillment` mediumtext NOT NULL,
  `FutureServices` mediumtext NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `UpdationDate`, `Fulfillment`, `FutureServices`) VALUES
(1, 'aboutus', 'About Us', '                                <div style=\"text-align: left;\"><b>Student Housing</b></div>', '2020-04-15 03:52:36', 'The technological revolution in computers has enhanced our abilities to teach. MDS has remained on the cutting edge by instituting the use of computer simulators and remote Web-accessed study material. The company will continue to seek new ways to provide a better and more convenient teaching environment through technology. The virtual class room is a thing of the near future, and we are positioning ourselves to be among the first who will provide such services.', 'The company is in the process of launching a new division for the Seattle office that will encompass training classes for commercial drivers licenses and motorcycle licenses. These services will include comprehensive indoor training classes, job placement assistance for truck and bus drivers, and rented vehicles to practice with, and use for license testing. This program will be launched in 3rd quarter 2004. Depending on its success, management plans to incorporate this program into all the field offices by 3rd quarter 2005..'),
(2, 'contactus', 'Contact Us', '<b>Student Housing</b><div><b>Contact Number:</b>+353 - 87654321</div><div><b>email: </b>info@Shousing.com</div><div><b>Address : </b>Dublin&nbsp;</div>', '2020-04-15 03:53:51', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `tblpg`
--

CREATE TABLE `tblpg` (
  `ID` int(10) NOT NULL,
  `OwnerID` int(20) NOT NULL,
  `StateName` varchar(200) DEFAULT NULL,
  `CityName` varchar(200) DEFAULT NULL,
  `PGTitle` varchar(200) DEFAULT NULL,
  `Type` varchar(120) DEFAULT NULL,
  `RPmonth` varchar(120) DEFAULT NULL,
  `norooms` varchar(45) DEFAULT NULL,
  `Address` varchar(120) DEFAULT NULL,
  `Image` varchar(200) DEFAULT NULL,
  `Electricity` varchar(40) DEFAULT NULL,
  `Parking` varchar(40) DEFAULT NULL,
  `Refregerator` varchar(40) DEFAULT NULL,
  `Furnished` varchar(40) DEFAULT NULL,
  `AC` varchar(40) DEFAULT NULL,
  `Balcony` varchar(40) DEFAULT NULL,
  `StudyTable` varchar(40) DEFAULT NULL,
  `Laundry` varchar(40) DEFAULT NULL,
  `Security` varchar(40) DEFAULT NULL,
  `MealsBreakfast` varchar(45) DEFAULT NULL,
  `MealLunch` varchar(45) NOT NULL,
  `MealDinner` varchar(45) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `IsActive` int(1) DEFAULT NULL,
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpg`
--

INSERT INTO `tblpg` (`ID`, `OwnerID`, `StateName`, `CityName`, `PGTitle`, `Type`, `RPmonth`, `norooms`, `Address`, `Image`, `Electricity`, `Parking`, `Refregerator`, `Furnished`, `AC`, `Balcony`, `StudyTable`, `Laundry`, `Security`, `MealsBreakfast`, `MealLunch`, `MealDinner`, `RegDate`, `IsActive`, `LastUpdationDate`) VALUES
(13, 1, 'Cork', 'Co. Cork', '', 'Girls', '€1500', '3', '', '', '', 'Yes', NULL, 'Yes', 'Yes', NULL, NULL, NULL, 'Yes', NULL, '', '', '2019-05-08 12:20:44', NULL, '2020-04-17 02:57:22'),
(16, 2, 'Limerick', 'Co. Limerick', '', 'Male or Female', '€1200', '2', '', '', NULL, 'No', NULL, 'Yes', 'Yes', NULL, NULL, NULL, NULL, NULL, '', '', '2020-03-10 16:49:48', NULL, '2020-04-17 02:57:30'),
(20, 3, 'Dublin', 'Co. Dublin', '', 'Male', '€1000', '3', '', '', NULL, 'Yes', NULL, 'No', 'Yes', NULL, NULL, NULL, NULL, NULL, '', '', '2020-03-10 12:29:10', NULL, '2020-04-17 02:57:39');

-- --------------------------------------------------------

--
-- Table structure for table `tblstate`
--

CREATE TABLE `tblstate` (
  `ID` int(10) NOT NULL,
  `StateName` varchar(120) DEFAULT NULL,
  `RegState` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstate`
--

INSERT INTO `tblstate` (`ID`, `StateName`, `RegState`) VALUES
(2, 'Dublin', '2019-05-07 07:07:03'),
(3, 'Cork', '2019-05-07 07:07:21'),
(4, 'Kilkenny', '2019-05-07 07:07:31'),
(5, 'Galway', '2019-05-07 07:07:39'),
(6, 'Waterford', '2019-05-07 07:07:58'),
(7, 'Dingle', '2019-05-07 07:08:12'),
(8, 'Limerick', '2019-05-07 07:08:37'),
(9, 'Sligo', '2019-05-07 07:08:49'),
(10, 'Castlebar', '2019-05-07 07:09:16'),
(11, 'Longford', '2019-06-18 18:14:43');

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `ID` int(10) NOT NULL,
  `FullName` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `FatherName` varchar(120) DEFAULT NULL,
  `dob` date DEFAULT NULL,
  `ComAddress` varchar(250) DEFAULT NULL,
  `EmergencyNumber` bigint(10) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `LastUpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`ID`, `FullName`, `Email`, `MobileNumber`, `FatherName`, `dob`, `ComAddress`, `EmergencyNumber`, `Password`, `RegDate`, `LastUpdationDate`) VALUES
(6, 'Aaditya', 'sasdas@gmail.com', 899827671, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$ZWRqaVFrQTZSeHBTTnV2eQ$UuLywE4XzyVxUeDyfXwlbVtncMC1ct2j9V6yK85AhtU', '2020-04-15 21:26:27', NULL),
(7, 'badhri', 'bad@test.com', 1234321346, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$SHJUTXg2ZUo0WkhFaHJnbg$QxUfS/ZDwzx1wnI0QUmnsIVufBNPPMbSIXh+SUdy/HQ', '2020-04-15 22:02:26', NULL),
(8, 'dharma', 'dharma@gmail.com', 7397091516, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$Mi8yV0p0Tk9kUWdkRFJqag$e4bdRZTMluq8wfrL10/ed3YzCh/5QcOoz5GfNRzAFuw', '2020-04-15 23:02:36', NULL),
(15, 'testuser', 'test@example.com', 1111111111, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$QXh4cjdlbVFIc2sxdm9TVA$i28JUs0uczqSSo3HI+jFX1gwECHo7QvAp13ARUH6ClI', '2020-04-16 22:43:04', NULL),
(17, 'tester', 'tester@yahoo.com', 5672348764, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$MC5hNXBlU1JCYWpuRWxXZQ$A+9D5PZeCfW1ZtOL9piOFJoELPwKmVUcfXVcQhClmIY', '2020-04-16 23:21:23', NULL),
(18, 'new2', 'new@here.com', 1231231231, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$VENVNnlRNWpqTTdIbjdIUQ$D7x6wu2t8S+8gmob6uweDTNLp1jdZynhPfCBZeNKIHE', '2020-04-17 02:23:51', NULL),
(20, 'Aaditya', 'saadityadharma@gmail.com', 6547862345, NULL, NULL, NULL, NULL, '$argon2i$v=19$m=65536,t=4,p=1$ZzRZSXdPcGx5L3BXTy5JMQ$uXgdOucvzi9OyQPZladOQMJ9joNM5cY8GwqgexRj3nk', '2020-04-18 23:08:12', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcity`
--
ALTER TABLE `tblcity`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblowner`
--
ALTER TABLE `tblowner`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpages`
--
ALTER TABLE `tblpages`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpg`
--
ALTER TABLE `tblpg`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblstate`
--
ALTER TABLE `tblstate`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tblbookpg`
--
ALTER TABLE `tblbookpg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tblcity`
--
ALTER TABLE `tblcity`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tblowner`
--
ALTER TABLE `tblowner`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tblpages`
--
ALTER TABLE `tblpages`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpg`
--
ALTER TABLE `tblpg`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblstate`
--
ALTER TABLE `tblstate`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
