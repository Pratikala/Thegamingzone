-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 17, 2024 at 11:04 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `thegamingzone`
--

-- --------------------------------------------------------

--
-- Table structure for table `arcademachinestable`
--

CREATE TABLE `arcademachinestable` (
  `MachineID` int(11) NOT NULL,
  `Game` varchar(50) DEFAULT NULL,
  `Year` int(11) DEFAULT NULL,
  `Floor` int(11) DEFAULT NULL,
  `GamesTableGameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `arcademachinestable`
--

INSERT INTO `arcademachinestable` (`MachineID`, `Game`, `Year`, `Floor`, `GamesTableGameID`) VALUES
(12, 'Pokemon', 2016, 2, 3),
(45, 'PUBG_Battlegrounds', 2004, 1, 4),
(78, 'Grand_Theft_Auto', 2013, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `bookingstable`
--

CREATE TABLE `bookingstable` (
  `BookingID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `MemberStatus` varchar(5) DEFAULT NULL,
  `Fee` decimal(10,2) DEFAULT NULL,
  `PrePaid` varchar(3) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `CustomerID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bookingstable`
--

INSERT INTO `bookingstable` (`BookingID`, `Date`, `MemberStatus`, `Fee`, `PrePaid`, `SessionID`, `CustomerID`) VALUES
(1, '2023-10-21', 'Y', NULL, NULL, 1, 1),
(2, '2023-10-21', 'N', 1000.00, 'N', 1, 2),
(3, '2023-10-21', 'Y', 900.00, 'Y', 1, 3),
(4, '2023-10-25', 'N', 1000.00, 'N', 1, 4),
(5, '2023-10-21', 'Y', 450.00, 'N', 2, 5),
(6, '2023-10-06', 'Y', 450.00, 'Y', 4, 6);

-- --------------------------------------------------------

--
-- Table structure for table `consolestable`
--

CREATE TABLE `consolestable` (
  `ConsoleID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `PEGI` varchar(5) DEFAULT NULL,
  `ConsoleType` varchar(20) DEFAULT NULL,
  `GamesTableGameID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `consolestable`
--

INSERT INTO `consolestable` (`ConsoleID`, `Name`, `PEGI`, `ConsoleType`, `GamesTableGameID`) VALUES
(1, 'PS1', 'PG', 'Console', 5),
(2, 'PS2', 'PG', 'Console', 5),
(3, 'PS4', 'PG', 'Console', 6),
(4, 'PS2', 'PG', 'Console', 7),
(5, 'Nintendo Switch', 'PG', 'Console', 7),
(6, 'Xbox 360', '15', 'Console', 8);

-- --------------------------------------------------------

--
-- Table structure for table `customerstable`
--

CREATE TABLE `customerstable` (
  `CustomerID` int(11) NOT NULL,
  `FirstName` varchar(50) NOT NULL,
  `LastName` varchar(50) NOT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `MembershipTypeID` int(11) DEFAULT NULL,
  `MembershipFee` decimal(10,2) DEFAULT NULL,
  `JoinDate` date DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `customerstable`
--

INSERT INTO `customerstable` (`CustomerID`, `FirstName`, `LastName`, `Address`, `MembershipTypeID`, `MembershipFee`, `JoinDate`, `DateOfBirth`) VALUES
(1, 'Saroj', 'Upadhyay', 'Dillibazar, Kathmandu', 1, 1000.00, '2023-09-01', '1998-02-01'),
(2, 'Neha', 'Kakkar', 'Putalisadak, Kathmandu', 2, 14000.00, '2023-06-05', '2000-10-15'),
(3, 'Himani', 'Puri', 'Baneshwor, Kathmandu', 2, 14000.00, '0000-00-00', '2001-07-20'),
(4, 'Ritesh', 'Gurung', 'Gaushala, Kathmandu', 1, 1000.00, '2023-04-05', '1983-05-03'),
(5, 'Rohan', 'Jha', 'Kathmandu', 1, 1000.00, '2023-07-10', '1995-03-02'),
(6, 'Ghanshyam', 'Bhat', 'Lalitpur', 1, 1000.00, '2023-08-12', '1990-04-15');

-- --------------------------------------------------------

--
-- Table structure for table `gamestable`
--

CREATE TABLE `gamestable` (
  `GameID` int(11) NOT NULL,
  `GameName` varchar(80) NOT NULL,
  `PEGI` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `gamestable`
--

INSERT INTO `gamestable` (`GameID`, `GameName`, `PEGI`) VALUES
(1, 'Mario', 'PG'),
(2, 'Grand_Theft_Auto', 'PG'),
(3, 'Pokemon', 'PG'),
(4, 'PUBG_Battlegrounds', 'PG'),
(5, 'FIFA 18', 'PG'),
(6, 'Horizon Zero Dawn', 'PG'),
(7, 'Legend of Zelda', 'PG'),
(8, 'Halo 3', '15');

-- --------------------------------------------------------

--
-- Table structure for table `membershiptypetable`
--

CREATE TABLE `membershiptypetable` (
  `MembershipTypeID` int(11) NOT NULL,
  `MembershipTypeName` varchar(30) NOT NULL,
  `MembershipFee` decimal(10,2) NOT NULL,
  `Duration` varchar(10) NOT NULL,
  `Benefits` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `membershiptypetable`
--

INSERT INTO `membershiptypetable` (`MembershipTypeID`, `MembershipTypeName`, `MembershipFee`, `Duration`, `Benefits`) VALUES
(1, 'Standard', 1000.00, '1 Year', 'Basic Membership'),
(2, 'Premium', 14000.00, '1 Year', 'Premium Membership');

-- --------------------------------------------------------

--
-- Table structure for table `sessionconsoletable`
--

CREATE TABLE `sessionconsoletable` (
  `SessionConsoleID` int(11) NOT NULL,
  `Date` date NOT NULL,
  `ConsoleQty` tinyint(4) DEFAULT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `ConsoleID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionconsoletable`
--

INSERT INTO `sessionconsoletable` (`SessionConsoleID`, `Date`, `ConsoleQty`, `SessionID`, `ConsoleID`) VALUES
(1, '2023-10-21', 2, 1, 1),
(2, '2023-10-21', 2, 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `SessionID` int(11) NOT NULL,
  `SessionDay` varchar(10) NOT NULL,
  `StartTime` time NOT NULL,
  `EndTime` time NOT NULL,
  `SessionType` varchar(20) NOT NULL,
  `Floor` int(11) DEFAULT NULL,
  `Price` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`SessionID`, `SessionDay`, `StartTime`, `EndTime`, `SessionType`, `Floor`, `Price`) VALUES
(1, 'Sunday', '11:00:00', '19:00:00', 'Free', 1, 1000.00),
(2, 'Sunday', '11:00:00', '19:00:00', 'Free', 2, 500.00),
(3, 'Saturday', '11:00:00', '19:00:00', 'Free', 1, 1000.00),
(4, 'Friday', '19:00:00', '22:00:00', 'Special', 2, 500.00);

-- --------------------------------------------------------

--
-- Table structure for table `sessionstafftable`
--

CREATE TABLE `sessionstafftable` (
  `SessionStaffID` int(11) NOT NULL,
  `SessionID` int(11) DEFAULT NULL,
  `StaffID` int(11) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `sessionstafftable`
--

INSERT INTO `sessionstafftable` (`SessionStaffID`, `SessionID`, `StaffID`, `Role`) VALUES
(1, 1, 1, 'Cafe'),
(2, 1, 2, 'Maintenance'),
(3, 1, 3, 'Counter'),
(4, 2, 4, 'Counter'),
(5, 2, 5, 'Maintenance');

-- --------------------------------------------------------

--
-- Table structure for table `stafftable`
--

CREATE TABLE `stafftable` (
  `StaffID` int(11) NOT NULL,
  `StaffName` varchar(100) NOT NULL,
  `Role` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `stafftable`
--

INSERT INTO `stafftable` (`StaffID`, `StaffName`, `Role`) VALUES
(1, 'Sujal Bohara', 'Cafe'),
(2, 'Rajesh Hamal', 'Maintenance'),
(3, 'Rooz Ojha', 'Counter'),
(4, 'Rashi Timsina', 'Counter'),
(5, 'Jack Jones', 'Maintenance');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `arcademachinestable`
--
ALTER TABLE `arcademachinestable`
  ADD PRIMARY KEY (`MachineID`),
  ADD KEY `GamesTableGameID` (`GamesTableGameID`);

--
-- Indexes for table `bookingstable`
--
ALTER TABLE `bookingstable`
  ADD PRIMARY KEY (`BookingID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `CustomerID` (`CustomerID`);

--
-- Indexes for table `consolestable`
--
ALTER TABLE `consolestable`
  ADD PRIMARY KEY (`ConsoleID`),
  ADD KEY `GamesTableGameID` (`GamesTableGameID`);

--
-- Indexes for table `customerstable`
--
ALTER TABLE `customerstable`
  ADD PRIMARY KEY (`CustomerID`),
  ADD KEY `MembershipTypeID` (`MembershipTypeID`);

--
-- Indexes for table `gamestable`
--
ALTER TABLE `gamestable`
  ADD PRIMARY KEY (`GameID`);

--
-- Indexes for table `membershiptypetable`
--
ALTER TABLE `membershiptypetable`
  ADD PRIMARY KEY (`MembershipTypeID`);

--
-- Indexes for table `sessionconsoletable`
--
ALTER TABLE `sessionconsoletable`
  ADD PRIMARY KEY (`SessionConsoleID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `ConsoleID` (`ConsoleID`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`SessionID`);

--
-- Indexes for table `sessionstafftable`
--
ALTER TABLE `sessionstafftable`
  ADD PRIMARY KEY (`SessionStaffID`),
  ADD KEY `SessionID` (`SessionID`),
  ADD KEY `StaffID` (`StaffID`);

--
-- Indexes for table `stafftable`
--
ALTER TABLE `stafftable`
  ADD PRIMARY KEY (`StaffID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `arcademachinestable`
--
ALTER TABLE `arcademachinestable`
  ADD CONSTRAINT `arcademachinestable_ibfk_1` FOREIGN KEY (`GamesTableGameID`) REFERENCES `gamestable` (`GameID`);

--
-- Constraints for table `bookingstable`
--
ALTER TABLE `bookingstable`
  ADD CONSTRAINT `bookingstable_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `bookingstable_ibfk_2` FOREIGN KEY (`CustomerID`) REFERENCES `customerstable` (`CustomerID`);

--
-- Constraints for table `consolestable`
--
ALTER TABLE `consolestable`
  ADD CONSTRAINT `consolestable_ibfk_1` FOREIGN KEY (`GamesTableGameID`) REFERENCES `gamestable` (`GameID`);

--
-- Constraints for table `customerstable`
--
ALTER TABLE `customerstable`
  ADD CONSTRAINT `customerstable_ibfk_1` FOREIGN KEY (`MembershipTypeID`) REFERENCES `membershiptypetable` (`MembershipTypeID`);

--
-- Constraints for table `sessionconsoletable`
--
ALTER TABLE `sessionconsoletable`
  ADD CONSTRAINT `sessionconsoletable_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `sessionconsoletable_ibfk_2` FOREIGN KEY (`ConsoleID`) REFERENCES `consolestable` (`ConsoleID`);

--
-- Constraints for table `sessionstafftable`
--
ALTER TABLE `sessionstafftable`
  ADD CONSTRAINT `sessionstafftable_ibfk_1` FOREIGN KEY (`SessionID`) REFERENCES `sessions` (`SessionID`),
  ADD CONSTRAINT `sessionstafftable_ibfk_2` FOREIGN KEY (`StaffID`) REFERENCES `stafftable` (`StaffID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
