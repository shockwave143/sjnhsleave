-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 14, 2023 at 02:01 PM
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
-- Database: `elms`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', '21232f297a57a5a743894a0e4a801fc3', '2020-11-03 05:55:30');

-- --------------------------------------------------------

--
-- Table structure for table `tbldepartments`
--

CREATE TABLE `tbldepartments` (
  `id` int(11) NOT NULL,
  `DepartmentName` varchar(150) DEFAULT NULL,
  `DepartmentShortName` varchar(100) NOT NULL,
  `DepartmentCode` varchar(50) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbldepartments`
--

INSERT INTO `tbldepartments` (`id`, `DepartmentName`, `DepartmentShortName`, `DepartmentCode`, `CreationDate`) VALUES
(1, 'CBAT', 'cbat', 'cbat', '2017-11-01 07:16:25'),
(2, 'COTE', 'cote', 'cote', '2017-11-01 07:19:37'),
(3, 'CRIMINOLOGY', 'crim', 'crim', '2017-12-02 21:28:56'),
(5, 'Junior High School', 'JHS', 'JHS', '2023-05-12 02:53:02'),
(6, 'Senior High School', 'SHS', 'SHS', '2023-05-12 02:53:16');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmpId` varchar(100) NOT NULL,
  `FirstName` varchar(150) NOT NULL,
  `Middle` varchar(200) NOT NULL,
  `LastName` varchar(150) NOT NULL,
  `Position` varchar(20) NOT NULL,
  `Salary` int(50) NOT NULL,
  `EmailId` varchar(200) NOT NULL,
  `Password` varchar(180) NOT NULL,
  `Gender` varchar(100) NOT NULL,
  `Dob` varchar(100) NOT NULL,
  `Department` varchar(255) NOT NULL,
  `Address` varchar(255) NOT NULL,
  `City` varchar(200) NOT NULL,
  `Country` varchar(150) NOT NULL,
  `Phonenumber` char(11) NOT NULL,
  `Status` int(1) NOT NULL,
  `RegDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `credits` int(11) NOT NULL,
  `FilePath` varchar(255) NOT NULL,
  `Photo` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmpId`, `FirstName`, `Middle`, `LastName`, `Position`, `Salary`, `EmailId`, `Password`, `Gender`, `Dob`, `Department`, `Address`, `City`, `Country`, `Phonenumber`, `Status`, `RegDate`, `credits`, `FilePath`, `Photo`) VALUES
(30, '745675475', 'wwqeqweqw', 'qwetewtwt', 'wefewefwe', 'Faculty', 20, '2eweqweqw@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '14 June, 2023', 'Junior High School', 'qwrwd', 'qw', 'dwqdqw', '12321', 1, '2023-06-14 11:06:58', 28, '', 'uploads/lap-overlay.jpg'),
(31, '452345', 'werffwe', 'dqwwqdw', '12321', 'Faculty', 12321, 'jin@gmail.com', '202cb962ac59075b964b07152d234b70', 'Male', '12 June, 2023', 'CRIMINOLOGY', 'wqewq', 'ewqe', 'eqweqw', '213213', 1, '2023-06-14 11:13:43', 18, '', 'uploads/360_F_283136113_b3VRHNiOPFMOluzYJPpfuoH8Czh9c743.jpg'),
(32, '90890', 'efqwef', 'qqqwfqwf', 'qwfqwfqf', 'Faculty', 213213, 'qweew@gmail.com', '202cb962ac59075b964b07152d234b70', 'Female', '20 June, 2023', 'Junior High School', 'qwewqeq', 'eqwewq', 'ewqe', '213', 1, '2023-06-14 11:44:58', 20, '', 'uploads/360_F_283136113_b3VRHNiOPFMOluzYJPpfuoH8Czh9c743.jpg'),
(33, '56453th', 'trhtrr', 'htrhrthtr', 'rthtrhrth', 'Admin', 43543, 'erregeg@gmail.com', '202cb962ac59075b964b07152d234b70', 'Female', '14 June, 2023', 'Junior High School', 'wqewqwq', 'eqwewq', 'eqeqwe', '213213', 1, '2023-06-14 11:47:15', 20, '', 'uploads/360_F_283136113_b3VRHNiOPFMOluzYJPpfuoH8Czh9c743.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tblleaves`
--

CREATE TABLE `tblleaves` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(110) NOT NULL,
  `ToDate` varchar(120) NOT NULL,
  `FromDate` varchar(120) NOT NULL,
  `Description` mediumtext NOT NULL,
  `PostingDate` timestamp NOT NULL DEFAULT current_timestamp(),
  `AdminRemark` mediumtext DEFAULT NULL,
  `AdminRemarkDate` varchar(120) DEFAULT NULL,
  `Status` int(1) NOT NULL,
  `IsRead` int(1) NOT NULL,
  `empid` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleaves`
--

INSERT INTO `tblleaves` (`id`, `LeaveType`, `ToDate`, `FromDate`, `Description`, `PostingDate`, `AdminRemark`, `AdminRemarkDate`, `Status`, `IsRead`, `empid`) VALUES
(169, 'Sick Leave', '21/05/2023', '24/05/2023', 'aa', '2023-05-23 09:38:43', NULL, NULL, 0, 0, 25),
(170, 'Sick Leave', '23/05/2023', '24/05/2023', 'wqek', '2023-05-23 09:42:29', NULL, NULL, 0, 1, 25),
(171, 'Vacation Leave', '25/05/2023', '26/05/2023', 'rr', '2023-05-24 17:48:20', NULL, NULL, 0, 1, 25),
(172, 'Vacation Leave', '14/06/2023', '15/06/2023', 'regregre', '2023-06-14 11:08:35', 'dfe', '2023-06-14 16:39:42 ', 1, 1, 30),
(173, 'Sick Leave', '14/06/2023', '15/06/2023', 'fkewfw', '2023-06-14 11:14:07', 'lokj', '2023-06-14 16:45:06 ', 1, 1, 31),
(174, 'Vacation Leave', '13/06/2023', '14/06/2023', 'dwqdwd', '2023-06-14 11:53:06', 'wqeqw', '2023-06-14 17:23:21 ', 1, 1, 31);

-- --------------------------------------------------------

--
-- Table structure for table `tblleavetype`
--

CREATE TABLE `tblleavetype` (
  `id` int(11) NOT NULL,
  `LeaveType` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblleavetype`
--

INSERT INTO `tblleavetype` (`id`, `LeaveType`, `Description`, `CreationDate`) VALUES
(1, 'Sick Leave', '', '2017-11-01 12:07:56'),
(2, 'Vacation Leave', '', '2017-11-06 13:16:09'),
(3, 'Maternity Leave', '', '2017-11-06 13:16:38'),
(4, 'Paternity Leave', '', '2023-05-12 02:51:18'),
(5, 'Solo parent', '', '2023-05-12 02:51:28'),
(6, 'Violence Against Women and Children', '', '2023-05-12 02:51:41'),
(7, 'Special Leave for Women', '', '2023-05-12 02:52:02'),
(8, 'Service Incentive Leave', '', '2023-05-12 02:52:12');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblleaves`
--
ALTER TABLE `tblleaves`
  ADD PRIMARY KEY (`id`),
  ADD KEY `UserEmail` (`empid`);

--
-- Indexes for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
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
-- AUTO_INCREMENT for table `tbldepartments`
--
ALTER TABLE `tbldepartments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tblleaves`
--
ALTER TABLE `tblleaves`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=175;

--
-- AUTO_INCREMENT for table `tblleavetype`
--
ALTER TABLE `tblleavetype`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
