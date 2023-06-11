-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 11, 2023 at 05:10 PM
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
-- Database: `hostel_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `Application_id` int(100) NOT NULL,
  `Student_id` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Application_status` tinyint(1) DEFAULT NULL,
  `Room_No` int(10) DEFAULT NULL,
  `Message` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`Application_id`, `Student_id`, `Hostel_id`, `Application_status`, `Room_No`, `Message`) VALUES
(3, 'RNTC0820019', 2, 0, 201, 'want Room'),
(5, '0820019', 2, 0, 202, 'i want room in hostel B please allocate fast'),
(7, '08200192', 2, 0, 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `hostel`
--

CREATE TABLE `hostel` (
  `Hostel_id` int(10) NOT NULL,
  `Hostel_name` varchar(255) NOT NULL,
  `current_no_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_rooms` varchar(255) DEFAULT NULL,
  `No_of_students` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel`
--

INSERT INTO `hostel` (`Hostel_id`, `Hostel_name`, `current_no_of_rooms`, `No_of_rooms`, `No_of_students`) VALUES
(1, 'A', '300', '400', '200'),
(2, 'B', '300', '400', '200'),
(3, 'C', NULL, '400', NULL),
(4, 'D', NULL, '400', NULL),
(5, 'E', NULL, '400', NULL),
(6, 'F', NULL, '400', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hostel_manager`
--

CREATE TABLE `hostel_manager` (
  `Hostel_man_id` int(10) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Isadmin` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `hostel_manager`
--

INSERT INTO `hostel_manager` (`Hostel_man_id`, `Username`, `Fname`, `Lname`, `Mob_no`, `Hostel_id`, `Email`, `Pwd`, `Isadmin`) VALUES
(123457, 'ADMIN', 'HOSTEL', 'ADMIN', '6577887755', 1, 'ADMIN@HMS.COM', '$2y$10$BvNYlqzcDtiyas4sJdzgxuRjHgPm9bAsUmIRO25XG.lSmDLfzCLNG', 1),
(123458, 'HOSTELA', 'JHON ', 'DOE', '9988778899', 1, 'HOSTELA@HMS.COM', '$2y$10$OoYANaO0nr6V/D15dFhyC.dLcJ8rE9LDAQfYJMdYIUpPOnzvInQ2O', 0),
(123459, 'HOSTELB', 'ALAN', 'TURING', '9988998899', 2, 'HOSTELB@HMS.COM', '$2y$10$S1en0hKqNisS4DJOuDvFYuV47HLE9y4xzHEmHmY/FZXRfSrWnMi9O', 0),
(123460, 'HOSTELC', 'DENNIS', 'RITCHIE', '8877997788', 3, 'HOSTELC@HMS.COM', '$2y$10$3MsUc7yQk4xg9MfygDOHV.sYGEQc3KTugVmSVyuROsIJO9J/cE1vC', 0),
(123461, 'HOSTELD', 'JAMES', 'GOSLING', '6655776677', 4, 'HOSTELD@HMS.COM', '$2y$10$T9aLa2OJm9q2ILcr4tX7DuuB/1/d5/G61LA6yeg2K2fY7FJgHZ88W', 0),
(123462, 'HOSTELE', 'LINUS', 'TORVALDS', '6655776688', 5, 'HOSTELE@HMS.COM', '$2y$10$mOKivJt4X6FxyZh5DN1vWeOX8B/bpqetsViF2Al7zZiQIc5h2/uKi', 0),
(123463, 'HOSTELF', 'LARRY', 'PAGE', '8800776688', 6, 'HOSTELF@HMS.COM', '$2y$10$fNFyx.LOGANmezeiEJrQ2eiC7.Be16kwW8iglTN1PUiMb9oezvO3a', 0);

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `msg_id` int(10) NOT NULL,
  `sender_id` varchar(255) DEFAULT NULL,
  `receiver_id` varchar(255) DEFAULT NULL,
  `hostel_id` int(10) DEFAULT NULL,
  `subject_h` varchar(255) DEFAULT NULL,
  `message` varchar(255) DEFAULT NULL,
  `msg_date` varchar(255) DEFAULT NULL,
  `msg_time` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`msg_id`, `sender_id`, `receiver_id`, `hostel_id`, `subject_h`, `message`, `msg_date`, `msg_time`) VALUES
(6, 'RNTC0820019', '', 2, 'water Problem', 'repair soon', '2023-03-16', '12:38 AM'),
(7, 'rntc0820008', '', 3, 'water Problem', 'repair soon', '2023-03-16', '06:36 AM'),
(8, '0820019', '', 2, 'Current Isssue', 'Please help Its Exam time\r\n', '2023-05-04', '07:56 AM'),
(9, '12345', '0820019', 1, 'water Problem', 'resolved', '2023-06-10', '06:36 PM'),
(10, '0820019', '', 2, 'INSECTS', 'PLEASE SEE TO THE ISSUE\r\n', '2023-06-11', '03:27 AM'),
(11, '0820019', '', 2, 'water Problem', 'S', '2023-06-11', '03:28 AM');

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `Room_id` int(10) NOT NULL,
  `Hostel_id` int(10) NOT NULL,
  `Room_No` int(10) NOT NULL,
  `Allocated` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`Room_id`, `Hostel_id`, `Room_No`, `Allocated`) VALUES
(101, 1, 101, 0),
(102, 1, 102, 0),
(103, 1, 103, 0),
(104, 1, 104, 0),
(201, 2, 201, 1),
(202, 2, 202, 1),
(203, 2, 203, 0),
(204, 2, 204, 0),
(301, 3, 301, 0),
(302, 3, 302, 0),
(303, 3, 303, 0),
(304, 3, 304, 0),
(401, 4, 401, 0),
(402, 4, 402, 0),
(403, 4, 403, 0),
(404, 4, 404, 0),
(501, 5, 501, 0),
(502, 5, 502, 0),
(503, 5, 503, 0),
(504, 5, 504, 0),
(601, 6, 601, 0),
(602, 6, 602, 0),
(603, 6, 603, 0),
(604, 6, 604, 0);

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Student_id` varchar(255) NOT NULL,
  `Fname` varchar(255) NOT NULL,
  `Lname` varchar(255) NOT NULL,
  `Mob_no` varchar(255) NOT NULL,
  `Dept` varchar(255) NOT NULL,
  `Year_of_study` varchar(255) NOT NULL,
  `Pwd` longtext NOT NULL,
  `Hostel_id` int(10) DEFAULT NULL,
  `Room_id` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Student_id`, `Fname`, `Lname`, `Mob_no`, `Dept`, `Year_of_study`, `Pwd`, `Hostel_id`, `Room_id`) VALUES
('0820001', 'Ram', 'Kumar', '989797989', 'Mechanical', '4', '$2y$10$opokRTuUsuGswuSv.NglV.FWkY0vydpAp9ILGTLYaO0Kcn1BPNG.u', NULL, NULL),
('0820008', 'a', 'p', '0000', 'cs', '4', '$2y$10$6.EQqFDmktzjcMFfpYO.QOYAX9.GbDQ6tV1VM9DfiWPXMTq/A5xmO', NULL, NULL),
('0820019', 'Rohit', 'Gupta', '7667087742', 'cs', '3', '$2y$10$LUcpB3e06VYqjMYef/URX.UCu0/KgmSS8CUNcp43wNODSjCqkaveW', 2, 202),
('08200192', 'Rahul', 'Gupta', '+916203994432', 'cse', '3', '$2y$10$Uw7K8Vf5WPfLPj9ottA8XOEvfRgKZG64oHA2FesFazsnxFCOnaVvS', NULL, NULL),
('rntc0820008', 'anurag', 'prasad', '56577754457', 'cs', '3', '$2y$10$BYPDxQ1cGq9N.UBFkniYXu3Mxf57JYVQ1qsMRjqExLV7wD1YxrKhe', NULL, NULL),
('RNTC0820019', 'Rohit', 'Gupta', '7667087742', 'cs', '3', '$2y$10$77S.Rdv67Im7rzIasykLE.F0NqIoxm1cnG.IX5G0zkZXqOTkrbjsm', 2, 201);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`Application_id`),
  ADD KEY `Student_id` (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `hostel`
--
ALTER TABLE `hostel`
  ADD PRIMARY KEY (`Hostel_id`);

--
-- Indexes for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD PRIMARY KEY (`Hostel_man_id`),
  ADD UNIQUE KEY `Username` (`Username`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`msg_id`),
  ADD KEY `hostel_id` (`hostel_id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`Room_id`),
  ADD KEY `Hostel_id` (`Hostel_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Student_id`),
  ADD KEY `Hostel_id` (`Hostel_id`),
  ADD KEY `Room_id` (`Room_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `Application_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hostel`
--
ALTER TABLE `hostel`
  MODIFY `Hostel_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  MODIFY `Hostel_man_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123464;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `msg_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `Room_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=605;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `Application_ibfk_1` FOREIGN KEY (`Student_id`) REFERENCES `student` (`Student_id`),
  ADD CONSTRAINT `Application_ibfk_2` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `hostel_manager`
--
ALTER TABLE `hostel_manager`
  ADD CONSTRAINT `Hostel_Manager_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `message`
--
ALTER TABLE `message`
  ADD CONSTRAINT `Message_ibfk_1` FOREIGN KEY (`hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `room`
--
ALTER TABLE `room`
  ADD CONSTRAINT `Room_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`);

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `Student_ibfk_1` FOREIGN KEY (`Hostel_id`) REFERENCES `hostel` (`Hostel_id`),
  ADD CONSTRAINT `Student_ibfk_2` FOREIGN KEY (`Room_id`) REFERENCES `room` (`Room_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
