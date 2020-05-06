-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 06, 2020 at 03:32 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `healthcaredb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointmentdetails`
--

CREATE TABLE `appointmentdetails` (
  `appid` int(10) NOT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Time` varchar(20) DEFAULT NULL,
  `pat_id` int(8) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `DOC_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointmentdetails`
--

INSERT INTO `appointmentdetails` (`appid`, `Date`, `Time`, `pat_id`, `hospital_id`, `DOC_id`) VALUES
(30, '21-DEC-2019', '9pm', 2, 1, 20),
(31, '18-JAN-2020', '7pm', 3, 2, 20),
(32, '5-FEB-2020', '5pm', 1, 1, 23);

-- --------------------------------------------------------

--
-- Table structure for table `doctordetails`
--

CREATE TABLE `doctordetails` (
  `DOC_id` int(6) NOT NULL,
  `firstname` varchar(40) DEFAULT NULL,
  `lastname` varchar(40) DEFAULT NULL,
  `age` int(3) DEFAULT NULL,
  `gender` varchar(10) DEFAULT NULL,
  `email` varchar(30) DEFAULT NULL,
  `phonenumber` varchar(10) DEFAULT NULL,
  `address` varchar(50) DEFAULT NULL,
  `specialization` varchar(35) DEFAULT NULL,
  `password` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `doctordetails`
--

INSERT INTO `doctordetails` (`DOC_id`, `firstname`, `lastname`, `age`, `gender`, `email`, `phonenumber`, `address`, `specialization`, `password`) VALUES
(20, 'Priyantha', 'Rajakaruna', 40, 'Male', 'rajakaruna@gmail.com', '0719945123', 'No.25/1/10,2nd St.,Battaramulla', 'Psycologist', 'raj123'),
(21, 'Amara', 'Sahabandu', 52, 'Female', 'amara123@yahoo.com', '0776578123', 'No.22/1,Gamunu Rd,Kaduwela', 'Eye Surgeon', 'amr185'),
(22, 'Mayura', 'Perera', 32, 'Male', 'mayura@gmail.com', '0717778901', 'No.52/1,Horton Rd,Colombo 7', 'Psycologist', 'may222'),
(23, 'Seetha', 'Kalutota', 35, 'Female', 'seetha35@gmail.com', '0718987650', 'No.23,House Scheem,Havelock Town', 'Cardio', 'see190'),
(24, 'Samadhie', 'Madanayaka', 45, 'Female', 'samadhiemad@gmail.com', '0773509087', 'No.500/1/10,Kulasewana Rd,Kottawa', 'Cardio', 'sam567'),
(25, 'Anuja', 'Kumarasighe', 45, 'Male', 'anuja@gmail.com', '0712343490', 'No.100,Kota St.,Colombo 8', 'Eye Surgeon', 'anj345');

-- --------------------------------------------------------

--
-- Table structure for table `hospitaldetails`
--

CREATE TABLE `hospitaldetails` (
  `hospital_id` int(11) NOT NULL,
  `hospital_name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospitaldetails`
--

INSERT INTO `hospitaldetails` (`hospital_id`, `hospital_name`) VALUES
(1, 'Navaloka Hospital'),
(2, 'Lanka Hospital'),
(3, 'Asiri Hospital');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `pat_id` int(8) NOT NULL,
  `pat_nic` varchar(10) NOT NULL,
  `FirstName` varchar(20) NOT NULL,
  `LastName` varchar(20) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `PhoneNumber` int(10) NOT NULL,
  `Address` varchar(30) NOT NULL,
  `Password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`pat_id`, `pat_nic`, `FirstName`, `LastName`, `Email`, `PhoneNumber`, `Address`, `Password`) VALUES
(1, '960345670V', 'Ravindu', 'Jayathunga', 'ravindu@gmail.com', 2147483647, 'No.25/2,2nd St.,Koswatte', 'ravindu123'),
(2, '855033650V', 'Geesha', 'Pelwatta', 'geesha@gmail.com', 716578123, 'No.55/1,Araliya Rd,Pannipitiya', 'gee456'),
(3, '696840845V', 'Ranjani', 'Diyagala', 'ranjani@yahoo.com', 777778901, 'No.78/1,Haritha Uyana,Colombo', 'raa222');

-- --------------------------------------------------------

--
-- Table structure for table `reportdetails`
--

CREATE TABLE `reportdetails` (
  `REP_id` int(6) NOT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `appid` int(10) DEFAULT NULL,
  `pat_id` int(8) DEFAULT NULL,
  `DOC_id` int(6) DEFAULT NULL,
  `Date` varchar(20) DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `Description` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `reportdetails`
--

INSERT INTO `reportdetails` (`REP_id`, `hospital_id`, `appid`, `pat_id`, `DOC_id`, `Date`, `Time`, `Description`) VALUES
(50, 1, 30, 1, 20, '22-DEC-2019', '9pm', ' You are suffering mental disease. So get these medicines with right doss........'),
(51, 2, 31, 2, 20, '19-JAN-2020', '7pm', 'mental disease.......'),
(52, 1, 32, 3, 23, '6-FEB-2020', '5pm', 'heart problem.........');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointmentdetails`
--
ALTER TABLE `appointmentdetails`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `fk_appointmentDetails_idx` (`pat_id`,`hospital_id`,`DOC_id`),
  ADD KEY `hospital_id` (`hospital_id`),
  ADD KEY `DOC_id` (`DOC_id`);

--
-- Indexes for table `doctordetails`
--
ALTER TABLE `doctordetails`
  ADD PRIMARY KEY (`DOC_id`);

--
-- Indexes for table `hospitaldetails`
--
ALTER TABLE `hospitaldetails`
  ADD PRIMARY KEY (`hospital_id`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`pat_id`),
  ADD UNIQUE KEY `pat_nic` (`pat_nic`);

--
-- Indexes for table `reportdetails`
--
ALTER TABLE `reportdetails`
  ADD PRIMARY KEY (`REP_id`),
  ADD KEY `fk_reportDetails_idx` (`hospital_id`,`appid`,`pat_id`,`DOC_id`),
  ADD KEY `appid` (`appid`),
  ADD KEY `pat_id_fk` (`pat_id`),
  ADD KEY `DOC_id_fk` (`DOC_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointmentdetails`
--
ALTER TABLE `appointmentdetails`
  MODIFY `appid` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `doctordetails`
--
ALTER TABLE `doctordetails`
  MODIFY `DOC_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hospitaldetails`
--
ALTER TABLE `hospitaldetails`
  MODIFY `hospital_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `pat_id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `reportdetails`
--
ALTER TABLE `reportdetails`
  MODIFY `REP_id` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointmentdetails`
--
ALTER TABLE `appointmentdetails`
  ADD CONSTRAINT `DOC_id` FOREIGN KEY (`DOC_id`) REFERENCES `doctordetails` (`DOC_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_id` FOREIGN KEY (`hospital_id`) REFERENCES `hospitaldetails` (`hospital_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pat_id` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pat_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `reportdetails`
--
ALTER TABLE `reportdetails`
  ADD CONSTRAINT `DOC_id_fk` FOREIGN KEY (`DOC_id`) REFERENCES `doctordetails` (`DOC_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `appid` FOREIGN KEY (`appid`) REFERENCES `appointmentdetails` (`appid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `hospital_id_fk` FOREIGN KEY (`hospital_id`) REFERENCES `hospitaldetails` (`hospital_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `pat_id_fk` FOREIGN KEY (`pat_id`) REFERENCES `patient` (`pat_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
