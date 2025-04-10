-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 11, 2023 at 06:51 AM
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
-- Database: `msmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` char(50) DEFAULT NULL,
  `UserName` char(50) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'Admin', 'admin', 7898799798, 'admin@rootcuts.barber', 'f925916e2754e5e03f75dd58a5733251', '2019-07-25 06:21:50');

-- --------------------------------------------------------

--
-- Table structure for table `tblappointment`
--

CREATE TABLE `tblappointment` (
  `ID` int(10) NOT NULL,
  `AptNumber` varchar(80) DEFAULT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(120) DEFAULT NULL,
  `PhoneNumber` bigint(11) DEFAULT NULL,
  `AptDate` varchar(120) DEFAULT NULL,
  `AptTime` varchar(120) DEFAULT NULL,
  `Services` varchar(120) DEFAULT NULL,
  `ApplyDate` timestamp NULL DEFAULT current_timestamp(),
  `Remark` varchar(250) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `RemarkDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

INSERT INTO `tblappointment` (`ID`, `AptNumber`, `Name`, `Email`, `PhoneNumber`, `AptDate`, `AptTime`, `Services`, `ApplyDate`, `Remark`, `Status`, `RemarkDate`) VALUES
(1, 'APT1001', 'Rahul Singh', 'singh@gmail.com', 5565565656, '2023-12-12', '11:00 AM', 'O3 Facial', '2023-12-10 08:00:00', 'Completed successfully', 'Completed', '2023-12-12 13:00:00'),
(2, 'APT1002', 'Manish', 'manish@gmail.com', 9879879798, '2023-12-13', '02:00 PM', 'Hair Cut', '2023-12-11 09:00:00', 'Customer was late', 'Completed', '2023-12-13 14:30:00'),
(3, 'APT1003', 'Anuj Kumar', 'ak@gmail.com', 1234567899, '2023-12-14', '03:30 PM', 'Charcol Facial', '2023-12-12 10:30:00', 'First time customer', 'Pending', NULL),
(4, 'APT1004', 'Test user', 'testuser@gmail.com', 1234567890, '2023-12-15', '12:00 PM', 'Deluxe Pedicure', '2023-12-13 11:00:00', '', 'Pending', NULL),
(5, 'APT1005', 'Karan Mehta', 'karan@gmail.com', 9876543001, '2023-12-20', '11:00 AM', 'Loreal Hair Color(Full)', '2023-12-18 09:00:00', 'Hair color consultation', 'Completed', NULL),
(6, 'APT1006', 'Pooja Rani', 'pooja@gmail.com', 9876543002, '2023-12-21', '12:00 PM', 'Fruit Facial', '2023-12-19 10:00:00', 'Requested natural products', 'Completed', NULL),
(7, 'APT1007', 'Amit Joshi', 'amit@gmail.com', 9876543003, '2023-12-22', '01:00 PM', 'Beard Trim', '2023-12-20 11:00:00', 'Wants a sharp cut', 'Completed', NULL),
(8, 'APT1008', 'Meena Kumari', 'meena@gmail.com', 9876543004, '2023-12-23', '03:00 PM', 'ABC', '2023-12-21 12:00:00', 'Bridal prep', 'Pending', NULL),
(9, 'APT1009', 'Suresh Das', 'suresh@gmail.com', 9876543005, '2023-12-24', '10:30 AM', 'Hair Cut', '2023-12-22 01:00:00', '', 'Pending', NULL),
(10, 'APT1010', 'Neha Gupta', 'neha@gmail.com', 9876543006, '2023-12-25', '01:30 PM', 'Hair Wash', '2023-12-23 02:00:00', '', 'Pending', NULL),
(11, 'APT1011', 'Deepak Rana', 'deepak@gmail.com', 9876543007, '2023-12-26', '11:45 AM', 'Style Haircut', '2023-12-24 03:00:00', 'Combo package', 'Completed', NULL),
(12, 'APT1012', 'Ayesha Khan', 'ayesha@gmail.com', 9876543008, '2023-12-27', '04:00 PM', 'Fruit Facial', '2023-12-25 04:00:00', 'Combo with coloring', 'Pending', NULL),
(13, 'APT1013', 'Nikhil Sen', 'nikhil@gmail.com', 9876543009, '2023-12-28', '02:00 PM', 'O3 Facial', '2023-12-26 05:00:00', 'Deep clean', 'Completed', NULL),
(14, 'APT1014', 'Ritika Sharma', 'ritika@gmail.com', 9876543010, '2023-12-29', '05:30 PM', 'Deluxe Menicure', '2023-12-27 06:00:00', '', 'Pending', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblcustomers`
--

CREATE TABLE `tblcustomers` (
  `ID` int(10) NOT NULL,
  `Name` varchar(120) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(11) DEFAULT NULL,
  `Gender` enum('Female','Male','Transgender') DEFAULT NULL,
  `Details` mediumtext DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp(),
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblcustomers`
--

INSERT INTO `tblcustomers` (`ID`, `Name`, `Email`, `MobileNumber`, `Gender`, `Details`, `CreationDate`, `UpdationDate`) VALUES
(2, 'Rahul Singh', 'singh@gmail.com', 5565565656, 'Male', 'Taken haircut by him', '2023-12-08 11:10:02', '2023-12-11 04:15:02'),
(5, 'Test user', 'testuser@gmail.com', 1234567890, 'Female', 'Test', '2023-12-08 11:10:02', '2023-12-11 04:15:10'),
(6, 'Manish', 'manish@gmail.com', 9879879798, 'Male', 'vjhgjhghg;lk;lklnhfjkhkjfnkl\r\nlkjklfjlkjlkc jjlkj\r\nl;ljlkj lkcjtkrjkjne', '2023-12-08 11:10:02', '2023-12-11 04:15:10'),
(7, 'Anuj kumar', 'ak@gmail.com', 1234567899, 'Transgender', 'Test', '2023-12-08 11:10:02', '2023-12-11 04:15:10'),
(8, 'Priya Sharma', 'priya@gmail.com', 9876543210, 'Female', 'Regular customer - Facial & Haircut', '2023-12-09 10:00:00', NULL),
(9, 'Rohit Verma', 'rohitv@gmail.com', 9123456789, 'Male', 'Prefers spa services', '2023-12-10 11:00:00', NULL),
(10, 'Sneha Kapoor', 'sneha.kapoor@gmail.com', 9988776655, 'Female', 'First time visitor', '2023-12-11 12:00:00', NULL),
(11, 'Karan Mehta', 'karan@gmail.com', 9876543001, 'Male', 'Interested in Hair Color and Spa', '2023-12-12 11:00:00', NULL),
(12, 'Pooja Rani', 'pooja@gmail.com', 9876543002, 'Female', 'Regular Facial Customer', '2023-12-12 12:00:00', NULL),
(13, 'Amit Joshi', 'amit@gmail.com', 9876543003, 'Male', 'Beard styling & trim', '2023-12-12 13:00:00', NULL),
(14, 'Meena Kumari', 'meena@gmail.com', 9876543004, 'Female', 'Bridal Makeup package', '2023-12-12 14:00:00', NULL),
(15, 'Suresh Das', 'suresh@gmail.com', 9876543005, 'Male', 'Walk-in customer', '2023-12-12 15:00:00', NULL),
(16, 'Neha Gupta', 'neha@gmail.com', 9876543006, 'Female', 'Hair Wash & Styling', '2023-12-12 16:00:00', NULL),
(17, 'Deepak Rana', 'deepak@gmail.com', 9876543007, 'Male', 'Haircut + Spa combo', '2023-12-12 17:00:00', NULL),
(18, 'Ayesha Khan', 'ayesha@gmail.com', 9876543008, 'Female', 'Fruit facial + hair color', '2023-12-12 18:00:00', NULL),
(19, 'Nikhil Sen', 'nikhil@gmail.com', 9876543009, 'Male', 'Full grooming', '2023-12-12 19:00:00', NULL),
(20, 'Ritika Sharma', 'ritika@gmail.com', 9876543010, 'Female', 'Pedicure and manicure combo', '2023-12-12 20:00:00', NULL);


-- --------------------------------------------------------

--
-- Table structure for table `tblinvoice`
--

CREATE TABLE `tblinvoice` (
  `id` int(11) NOT NULL,
  `Userid` int(11) DEFAULT NULL,
  `ServiceId` int(11) DEFAULT NULL,
  `BillingId` int(11) DEFAULT NULL,
  `PostingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblinvoice`
--

INSERT INTO `tblinvoice` (`id`, `Userid`, `ServiceId`, `BillingId`, `PostingDate`) VALUES
(1, 7, 1, 529212751, '2023-12-11 05:39:34'),
(2, 7, 3, 529212751, '2023-12-11 05:39:34'),
(3, 2, 2, 529212752, '2023-12-11 06:00:00'),
(4, 5, 5, 529212753, '2023-12-11 06:30:00'),
(5, 8, 2, 529212754, '2023-12-13 12:00:00'),  
(6, 9, 12, 529212755, '2023-12-14 06:00:00'),
(7, 10, 9, 529212756, '2023-12-15 03:00:00'), 
(8, 11, 11, 529212757, '2023-12-20 12:00:00'),
(9, 12, 2, 529212758, '2023-12-21 01:00:00'),
(10, 13, 18, 529212759, '2023-12-22 01:30:00'),
(11, 14, 15, 529212760, '2023-12-23 03:30:00'),
(12, 15, 8, 529212761, '2023-12-24 11:00:00'),
(13, 16, 10, 529212762, '2023-12-25 02:30:00'),
(14, 17, 9, 529212763, '2023-12-26 12:15:00'),
(15, 18, 2, 529212764, '2023-12-27 05:00:00'),
(16, 19, 1, 529212765, '2023-12-28 03:00:00'),
(17, 20, 4, 529212766, '2023-12-29 06:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblpage`
--

CREATE TABLE `tblpage` (
  `ID` int(10) NOT NULL,
  `PageType` varchar(200) DEFAULT NULL,
  `PageTitle` mediumtext DEFAULT NULL,
  `PageDescription` mediumtext DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `UpdationDate` date DEFAULT NULL,
  `Timing` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblpage`
--

INSERT INTO `tblpage` (`ID`, `PageType`, `PageTitle`, `PageDescription`, `Email`, `MobileNumber`, `UpdationDate`, `Timing`) VALUES
(1, 'aboutus', 'About Us', '        Our main focus is on quality and hygiene. Our Parlour is well equipped with advanced technology equipments and provides best quality services. Our staff is well trained and experienced, offering advanced services in Skin, Hair and Body Shaping that will provide you with a luxurious experience that leave you feeling relaxed and stress free. The specialities in the parlour are, apart from regular bleachings and Facials, many types of hairstyles, Bridal and cine make-up and different types of Facials & fashion hair colourings.', NULL, NULL, NULL, ''),
(2, 'contactus', 'Contact Us', '        1337 Hack Street, CyberVille, Netland', ' contact@rootcuts.barber', 13370001337, NULL, '10:30 am to 8:30 pm');

-- --------------------------------------------------------

--
-- Table structure for table `tblservices`
--

CREATE TABLE `tblservices` (
  `ID` int(10) NOT NULL,
  `ServiceName` varchar(200) DEFAULT NULL,
  `Description` mediumtext DEFAULT NULL,
  `Cost` int(10) DEFAULT NULL,
  `CreationDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tblservices`
--

INSERT INTO `tblservices` (`ID`, `ServiceName`, `Description`, `Cost`, `CreationDate`) VALUES
(1, 'O3 Facial', 'Deep cleansing facial using O3-based formula to detoxify and rejuvenate the skin.', 1200, '2023-12-05 11:22:38'),
(2, 'Fruit Facial', 'Natural fruit-based facial to exfoliate and brighten the skin with a healthy glow.', 900, '2023-12-05 11:22:38'),
(3, 'Charcoal Facial', 'Activated charcoal mask to unclog pores and deeply cleanse skin impurities.', 1000, '2023-12-05 11:22:38'),
(4, 'Deluxe Manicure', 'Luxury hand care with exfoliation, massage, nail shaping, and polish.', 600, '2023-12-05 11:22:38'),
(5, 'Deluxe Pedicure', 'Relaxing foot care including exfoliation, massage, and nail treatment.', 800, '2023-12-05 11:22:38'),
(6, 'Normal Manicure', 'Basic manicure including cuticle care, nail trimming, and polish.', 350, '2023-12-05 11:22:38'),
(7, 'Normal Pedicure', 'Standard foot care with soaking, nail trimming, and gentle scrubbing.', 450, '2023-12-05 11:22:38'),
(8, 'Hair Cut', 'Professional haircut based on face shape and style preference.', 250, '2023-12-05 11:22:38'),
(9, 'Style Haircut', 'Advanced haircut and styling using modern techniques and tools.', 550, '2023-12-05 11:22:38'),
(10, 'Hair Wash', 'Gentle shampoo and conditioner treatment with scalp massage.', 300, '2023-12-05 11:22:38'),
(11, 'L’Oréal Hair Color (Full)', 'Full hair coloring using premium L’Oréal products.', 1200, '2023-12-05 11:22:38'),
(12, 'Body Spa', 'Full-body spa therapy including exfoliation, massage, and hydration.', 1500, '2023-12-05 11:22:38'),
(15, 'Bridal Package', 'Comprehensive bridal grooming including facial, hair, and makeup.', 5000, '2023-12-05 11:22:38'),
(16, 'Traditional Haircut', 'Classic haircut style done with precision and neat finish.', 400, '2023-12-05 11:22:38'),
(17, 'Mustache Trim', 'Detailed grooming and shaping of mustache.', 100, '2023-12-05 11:22:38'),
(18, 'Beard Trim', 'Trimming and shaping of beard for a clean and defined look.', 150, '2023-12-05 11:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `tblsubscriber`
--

CREATE TABLE `tblsubscriber` (
  `ID` int(5) NOT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `DateofSub` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblsubscriber`
--

INSERT INTO `tblsubscriber` (`ID`, `Email`, `DateofSub`) VALUES
(1, 'ani@gmail.com', '2023-12-09 07:32:33'),
(2, 'rahul@gmail.com', '2023-12-09 07:32:33'),
(3, 'ganesh@gmail.com', '2023-12-09 07:32:33'),
(4, 'manish@gmail.com', '2023-12-09 07:32:33'),
(5, 'ak@gmail.com', '2023-12-10 10:00:00'),
(6, 'karan@gmail.com', '2023-12-12 09:00:00'),
(7, 'pooja@gmail.com', '2023-12-12 09:05:00'),
(8, 'amit@gmail.com', '2023-12-12 09:10:00'),
(9, 'meena@gmail.com', '2023-12-12 09:15:00'),
(10, 'suresh@gmail.com', '2023-12-12 09:20:00'),
(11, 'neha@gmail.com', '2023-12-12 09:25:00'),
(12, 'deepak@gmail.com', '2023-12-12 09:30:00'),
(13, 'ayesha@gmail.com', '2023-12-12 09:35:00'),
(14, 'nikhil@gmail.com', '2023-12-12 09:40:00'),
(15, 'ritika@gmail.com', '2023-12-12 09:45:00');


--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblappointment`
--
ALTER TABLE `tblappointment`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id` (`id`);

--
-- Indexes for table `tblpage`
--
ALTER TABLE `tblpage`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblservices`
--
ALTER TABLE `tblservices`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
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
-- AUTO_INCREMENT for table `tblappointment`
--
ALTER TABLE `tblappointment`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcustomers`
--
ALTER TABLE `tblcustomers`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tblinvoice`
--
ALTER TABLE `tblinvoice`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblpage`
--
ALTER TABLE `tblpage`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblservices`
--
ALTER TABLE `tblservices`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tblsubscriber`
--
ALTER TABLE `tblsubscriber`
  MODIFY `ID` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
