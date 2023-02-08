-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 08, 2023 at 07:48 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `atbs`
--

-- --------------------------------------------------------

--
-- Table structure for table `account`
--

CREATE TABLE `account` (
  `Username` varchar(100) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `Sec_Q` varchar(100) NOT NULL,
  `Answer` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `account`
--

INSERT INTO `account` (`Username`, `Name`, `Password`, `Sec_Q`, `Answer`) VALUES
('Eduard', 'Harboceanu Eduard', '123456', 'what is your nick name?', 'Edi');

-- --------------------------------------------------------

--
-- Table structure for table `book_ticket`
--

CREATE TABLE `book_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(50) NOT NULL,
  `Source` varchar(50) NOT NULL,
  `Destination` varchar(50) NOT NULL,
  `Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Total_Price` int(50) NOT NULL,
  `Seats` int(50) NOT NULL,
  `C_Name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `book_ticket`
--

INSERT INTO `book_ticket` (`Ticket_No`, `Flight_Id`, `Flight_Name`, `Source`, `Destination`, `Date`, `Arrival_Time`, `Departure_Time`, `Total_Price`, `Seats`, `C_Name`) VALUES
(424, 921, 'Tarom', 'Otopeni (RO)', 'Paris (FR)', '2023-02-20', '20:00', '22:00', 1200, 2, 'Harboceanu Eduard');

-- --------------------------------------------------------

--
-- Table structure for table `cancel_ticket`
--

CREATE TABLE `cancel_ticket` (
  `Ticket_No` int(50) NOT NULL,
  `Flight_Id` int(50) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Booking_Date` varchar(50) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Price` int(100) NOT NULL,
  `Seats` int(100) NOT NULL,
  `C_Name` varchar(200) NOT NULL,
  `Return_Date` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `customer`
--

CREATE TABLE `customer` (
  `cid` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(500) NOT NULL,
  `Nic_No` int(50) NOT NULL,
  `Passport_Id` int(50) NOT NULL,
  `Dob` varchar(50) NOT NULL,
  `Gender` varchar(50) NOT NULL,
  `Contact` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `flight`
--

CREATE TABLE `flight` (
  `Flight_ID` int(100) NOT NULL,
  `Flight_Name` varchar(100) NOT NULL,
  `Source` varchar(100) NOT NULL,
  `Destination` varchar(100) NOT NULL,
  `Date` varchar(100) NOT NULL,
  `Arrival_Time` varchar(50) NOT NULL,
  `Departure_Time` varchar(50) NOT NULL,
  `Flight_Price` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `flight`
--

INSERT INTO `flight` (`Flight_ID`, `Flight_Name`, `Source`, `Destination`, `Date`, `Arrival_Time`, `Departure_Time`, `Flight_Price`) VALUES
(921, 'Tarom', 'Otopeni (RO)', 'Paris (FR)', '2023-02-20', '20:00', '22:00', 600),
(536, 'Wizz Air', 'Frankfurt (DE)', 'Otopeni (RO)', '2023-02-14', '16:00', '19:00', 550),
(551, 'RyanAir', 'Paphos (CY)', 'Otopeni (RO)', '2023-02-19', '12:00', '14:00', 750),
(997, 'Blue Air', 'Otopeni (RO)', 'Barcelona (ES)', '2023-02-23', '5:00', '8:30', 500),
(388, 'Tarom', 'Otopeni (RO)', 'London (UK)', '2023-02-24', '7:00', '10:00', 450),
(624, 'Turkish Airline', 'Berlin (DE)', 'Otopeni (Ro)', '2023-02-28', '20:00', '22:00', 600),
(592, 'Blue Air', 'Otopeni (RO)', 'Madrid (ES)', '2023-02-24', '20:20', '23:00', 500);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
