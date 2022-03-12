-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 06, 2022 at 03:04 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pantipchiangmai`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookingres`
--

CREATE TABLE `bookingres` (
  `BookingID` int(10) NOT NULL,
  `GuestID` int(10) NOT NULL,
  `TableID` int(15) NOT NULL,
  `ResName` varchar(100) NOT NULL,
  `DataIn` date NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeRange` varchar(100) NOT NULL,
  `ListPrice` decimal(10,3) NOT NULL,
  `DateRecode` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `RecordBy` varchar(255) NOT NULL,
  `MenuName1` varchar(255) NOT NULL,
  `MenuName2` varchar(255) NOT NULL,
  `MenuName3` varchar(255) NOT NULL,
  `MenuName4` varchar(255) NOT NULL,
  `MenuName5` varchar(255) NOT NULL,
  `MenuName6` varchar(255) NOT NULL,
  `MenuName7` varchar(255) NOT NULL,
  `MenuName8` varchar(255) NOT NULL,
  `MenuName9` varchar(255) NOT NULL,
  `MenuName10` varchar(255) NOT NULL,
  `MenuOther` varchar(1000) NOT NULL,
  `BKStatus` varchar(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `guest`
--

CREATE TABLE `guest` (
  `GuestID` int(10) NOT NULL,
  `GuestCompany` varchar(200) NOT NULL,
  `GuestName` varchar(150) NOT NULL,
  `GuestEmail` varchar(50) NOT NULL,
  `GuestTel` varchar(12) NOT NULL,
  `GuestTelBackup` varchar(12) NOT NULL,
  `GuestLine` varchar(30) NOT NULL,
  `DataIn` date NOT NULL,
  `TimeIn` time NOT NULL,
  `TimeRange` varchar(100) NOT NULL,
  `GuestNum` varchar(200) NOT NULL,
  `TotalPrice` decimal(10,3) NOT NULL,
  `Pledge` decimal(10,3) NOT NULL,
  `GuestType` varchar(100) NOT NULL,
  `GuestStatus` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tablemantraplan`
--

CREATE TABLE `tablemantraplan` (
  `TableID` int(15) NOT NULL,
  `TableNumber` varchar(10) NOT NULL,
  `ResName` varchar(100) NOT NULL,
  `TableZone` varchar(10) NOT NULL,
  `TableGroup` varchar(10) NOT NULL,
  `Orders` int(5) NOT NULL,
  `TableIcon` varchar(255) NOT NULL,
  `TableIconMR` varchar(255) NOT NULL,
  `TableIconReserved` varchar(255) NOT NULL,
  `TableIconFood` varchar(255) NOT NULL,
  `TableIconBlue` varchar(255) NOT NULL,
  `TableIconMagenta` varchar(255) NOT NULL,
  `TableIconYellow` varchar(255) NOT NULL,
  `TableBlueVIP` varchar(255) NOT NULL,
  `TableMagentaVIP` varchar(255) NOT NULL,
  `TableYellowVIP` varchar(255) NOT NULL,
  `TableRedVIP` varchar(255) NOT NULL,
  `TableStatus` varchar(5) NOT NULL,
  `UserRecord` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tablemantraplan`
--

INSERT INTO `tablemantraplan` (`TableID`, `TableNumber`, `ResName`, `TableZone`, `TableGroup`, `Orders`, `TableIcon`, `TableIconMR`, `TableIconReserved`, `TableIconFood`, `TableIconBlue`, `TableIconMagenta`, `TableIconYellow`, `TableBlueVIP`, `TableMagentaVIP`, `TableYellowVIP`, `TableRedVIP`, `TableStatus`, `UserRecord`) VALUES
(101, '101', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(102, '102', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(103, '103', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(104, '104', 'KeereeMantra', '1', 'A', 0, 'SquareAvailable.png', 'SquareCheck.png', 'Reserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(105, '105', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(106, '106', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(107, '107', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(108, '', 'KeereeMantra', '1', 'A', 0, 'Space.png', 'Space.png', 'Space.png', 'Space.png', '', '', '', '', '', '', '', '1', ''),
(109, '108', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(110, '109', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(111, '110', 'KeereeMantra', '1', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(112, '111', 'KeereeMantra', '1', 'A', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(113, '112', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(114, '114', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(115, '115', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(116, '116', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(117, '117', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(118, '118', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(119, '119', 'KeereeMantra', '1', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(151, '120', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(152, '121', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(153, '122', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(154, '123', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(155, '124', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(156, '125', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'DubbleSquareBlueFood.png', 'DubbleSquareMagentaFood.png', 'DubbleSquareYellowFood.png', 'DubbleSquareBlueVIP.png', 'DubbleSquareMagentaVIP.png', 'DubbleSquareYellowVIP.png', 'DubbleSquareVIP.png', '1', ''),
(157, '126', 'KeereeMantra', '1', '2', 0, 'DubbleSquareAvailable.png', 'DubbleSquareCheck.png', 'DubbleSquareReserved.png', 'DubbleSquareFood.png', 'DubbleSquareBlueFood.png', 'DubbleSquareMagentaFood.png', 'DubbleSquareYellowFood.png', 'DubbleSquareBlueVIP.png', 'DubbleSquareMagentaVIP.png', 'DubbleSquareYellowVIP.png', 'DubbleSquareVIP.png', '1', ''),
(158, '127', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(159, '128', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(160, '129', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(161, '130', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(162, '131', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(163, '132', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(164, '133', 'KeereeMantra', '1', '2', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(201, '134', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(202, '135', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(203, '136', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(204, '137', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(205, '138', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(206, '139', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(207, '140', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(208, '141', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(209, '142', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(210, '143', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(211, '144', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(212, '145', 'KeereeMantra', '2', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(251, '146', 'KeereeMantra', '2', 'A', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(252, '147', 'KeereeMantra', '2', 'A', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(253, '148', 'KeereeMantra', '2', 'A', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(254, '149', 'KeereeMantra', '2', 'B', 0, 'CircleAvailable.png', 'CircleCheck.png', 'CircleReserved.png', 'CircleReservedFood.png', 'CircleBlueFood.png', 'CircleMagentaFood.png', 'CircleYellowFood.png', 'CircleBlueVIP.png', 'CircleMagentaVIP.png', 'CircleYellowVIP.png', 'CircleVIP.png', '1', ''),
(255, '150', 'KeereeMantra', '2', 'B', 0, 'CircleAvailable.png', 'CircleCheck.png', 'CircleReserved.png', 'CircleReservedFood.png', 'CircleBlueFood.png', 'CircleMagentaFood.png', 'CircleYellowFood.png', 'CircleBlueVIP.png', 'CircleMagentaVIP.png', 'CircleYellowVIP.png', 'CircleVIP.png', '1', ''),
(256, '151', 'KeereeMantra', '2', 'B', 0, 'CircleAvailable.png', 'CircleCheck.png', 'CircleReserved.png', 'CircleReservedFood.png', 'CircleBlueFood.png', 'CircleMagentaFood.png', 'CircleYellowFood.png', 'CircleBlueVIP.png', 'CircleMagentaVIP.png', 'CircleYellowVIP.png', 'CircleVIP.png', '1', ''),
(301, '152', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(302, '153', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(303, '154', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(304, '155', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(305, '156', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(306, '157', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(307, '158', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(308, '159', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(309, '160', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(310, '161', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(311, '162', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(312, '163', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(313, '164', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(314, '165', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(315, '166', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(316, '167', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(317, '168', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(318, '169', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(319, '170', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(320, '171', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(321, '172', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(322, '173', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(323, '174', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(324, '175', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(325, '176', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(326, '177', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(327, '178', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(328, '179', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(329, '180', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(330, '181', 'KeereeMantra', '3', 'A', 0, 'Available.png', 'octagonCheck.png', 'Reserved.png', 'octagonFood.png', 'octagonBlueFood.png', 'octagonMagentaFood.png', 'octagonYellowFood.png', 'octagonBlueVIP.png', 'octagonMagentaVIP.png', 'octagonYellowVIP.png', 'ReservedVIP.png', '1', ''),
(331, '182', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(332, '183', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(333, '184', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(334, '185', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(335, '186', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', ''),
(336, '187', 'KeereeMantra', '3', 'B', 0, 'SquareAvailable.png', 'SquareCheck.png', 'SquareReserved.png', 'SquareFood.png', 'SquareBlueFood.png', 'SquareMagentaFood.png', 'SquareYellowFood.png', 'SquareBlueVIP.png', 'SquareMagentaVIP.png', 'SquareYellowVIP.png', 'SquareVIP.png', '1', '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `ID` int(5) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Firstname` varchar(100) NOT NULL,
  `Lastname` varchar(100) NOT NULL,
  `Tel` varchar(10) NOT NULL,
  `Userlevel` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `Username`, `Password`, `Firstname`, `Lastname`, `Tel`, `Userlevel`) VALUES
(510, 'test', '$2y$04$pREaLZfC5OYqZrY2zepLc.spphMM8cUO2YbKJC4u2epYNxQ97tHdi', 'Test', 'TestTest', '00000000', 'Editor'),
(511, 'AunRx93', '$2y$04$VCa3eBHqmkl8GUcnS28uj.8jqSiWbY2ZN/w3llkf6eQkU5.6qUC3e', 'AunThanakit', 'Chaiwong', '0626655771', 'Editor'),
(509, 'admin', '$2y$04$K.fhBJcwzPSUh644yMoDp.Jr9S3Vld4u2vSQzxjFe1VJTPRM/9py6', 'ธนกิจ', 'ไชยวงศ์', '0626784874', 'Admin');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookingres`
--
ALTER TABLE `bookingres`
  ADD PRIMARY KEY (`BookingID`);

--
-- Indexes for table `guest`
--
ALTER TABLE `guest`
  ADD PRIMARY KEY (`GuestID`);

--
-- Indexes for table `tablemantraplan`
--
ALTER TABLE `tablemantraplan`
  ADD PRIMARY KEY (`TableID`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookingres`
--
ALTER TABLE `bookingres`
  MODIFY `BookingID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `guest`
--
ALTER TABLE `guest`
  MODIFY `GuestID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `tablemantraplan`
--
ALTER TABLE `tablemantraplan`
  MODIFY `TableID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100302;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=512;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
