-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 20, 2026 at 08:33 AM
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
-- Database: `intern_training_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `LastName` varchar(50) DEFAULT NULL,
  `Email` varchar(100) DEFAULT NULL,
  `Age` int(11) DEFAULT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `Name`, `LastName`, `Email`, `Age`, `phone_number`) VALUES
(1, 'Vishal', 'Jain', 'vishal@gmail.com', 23, NULL),
(2, 'Devyani', 'Roy', 'devya123@gmail.com', 25, NULL),
(3, 'Khushi', 'Deshbhratar', 'Khushi77@gmail.com', 22, NULL),
(4, 'Aditi', 'Ganguly', 'adii2352@gmail.com', 22, NULL),
(5, 'Joel', 'Louis', 'joel0712@gmail.com', 23, NULL),
(6, 'Achal', 'Bhanarkar', 'achu0707@gmail.com', 24, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `students1`
--

CREATE TABLE `students1` (
  `student_id` int(11) NOT NULL,
  `student_name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `date_of_birth` date NOT NULL,
  `phone_number` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `students1`
--

INSERT INTO `students1` (`student_id`, `student_name`, `email`, `date_of_birth`, `phone_number`) VALUES
(1, 'Diya Mhure', 'diu0707@Gmail.com', '0000-00-00', NULL),
(2, 'Priya Jain', 'priya23@gmail.com', '0000-00-00', NULL),
(3, 'Chiu Joshi', 'chui07@gamil.com', '0000-00-00', NULL),
(4, 'Anvesh Bajirao', 'anvesh@gmail.com', '0000-00-00', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `teachers`
--

CREATE TABLE `teachers` (
  `teacher_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `department` varchar(50) NOT NULL,
  `hire_date` date NOT NULL,
  `salary` decimal(10,2) DEFAULT NULL,
  `status` enum('Active','Inactive') DEFAULT 'Active'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `teachers`
--

INSERT INTO teachers
(name, email, phone, department, join_date, salary, status)
VALUES
('Mr.Sharma', 'sharmajd@college.edu', '9845626112', 'ML', '2021-05-10', 80000, 'Active'),
('Mr.Louis', 'louisjd@college.edu', '8558255263', 'Cyber Security', '2019-06-10', 50000, 'Inactive'),
('Mrs.Kumar', 'kumarjd@college.edu', '9456825602', 'DSA', '2020-02-02', 40000, 'Active'),
('Mrs.Rao', 'raojd@college.edu', '8456920520', 'AI', '2018-03-04', 65000, 'Inactive');
--
-- Indexes for dumped tables
--

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `teachers`
--
ALTER TABLE `teachers`
  ADD PRIMARY KEY (`teacher_id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `idx_salary` (`salary`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `students1`
--
ALTER TABLE `students1`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `teachers`
--
ALTER TABLE `teachers`
  MODIFY `teacher_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
