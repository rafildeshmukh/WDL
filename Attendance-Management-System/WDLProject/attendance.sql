-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 11, 2018 at 10:55 PM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendance`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_record`
--

CREATE TABLE `attendance_record` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `date` date NOT NULL,
  `time_slot` int(11) NOT NULL,
  `type` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `attendance_record`
--

INSERT INTO `attendance_record` (`id`, `class_id`, `teacher_id`, `student_id`, `date`, `time_slot`, `type`, `status`) VALUES
(1, 1, 1, 1, '2018-10-11', 4, 'theory', 'present'),
(2, 1, 1, 2, '2018-10-11', 4, 'theory', 'present'),
(3, 2, 1, 1, '2018-10-11', 3, 'theory', 'present'),
(4, 2, 1, 2, '2018-10-11', 3, 'theory', 'absent'),
(5, 3, 1, 1, '2018-10-11', 4, 'theory', 'present'),
(6, 3, 1, 2, '2018-10-11', 4, 'theory', 'present');

-- --------------------------------------------------------

--
-- Table structure for table `classroom`
--

CREATE TABLE `classroom` (
  `id` int(11) NOT NULL,
  `class_no` text NOT NULL,
  `teacher_id` int(11) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `year` text NOT NULL,
  `sem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `classroom`
--

INSERT INTO `classroom` (`id`, `class_no`, `teacher_id`, `subject`, `year`, `sem`) VALUES
(1, '403', 1, 'DBMS', 'T.E', '5'),
(2, '403', 1, 'CN', 'T.E', '5'),
(3, '403', 1, 'TCS', 'T.E', '5');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `roll_no` text NOT NULL,
  `department` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `dob` date NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `year` text NOT NULL,
  `sem` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`id`, `full_name`, `roll_no`, `department`, `username`, `password`, `email`, `address`, `dob`, `mobile_no`, `type`, `year`, `sem`) VALUES
(1, 'Shaikh Manzar', '16CO50', 'computer', 'manzars', '857520c38192913162223bd025e96552', 'manzarshaikh69@gmail.com', 'andheri west', '1999-04-29', '9167121589', 'student', 'T.E', '5'),
(2, 'Shaikh Mobin', '16CO55', 'computer', 'mobins', 'mobins', 'mobinshaikh27@gmail.com', 'govandi west', '1998-05-12', '9167232589', 'student', 'T.E', '5'),
(3, 'Shaikh Arbaz', '16ME23', 'mechanical', 'arbazs', 'arbazs', 'arbazshaikh121@gmail.com', 'bandra west', '1998-02-15', '9321232589', 'student', 'T.E', '5'),
(4, 'Shaikh Nadeem', '16CE45', 'civil', 'nadeems', 'nadeems', 'nadeemshaikh34@gmail.com', 'bhandup west', '1998-03-23', '9167232129', 'student', 'T.E', '5'),
(5, 'Shaikh Ayan', '16EE15', 'electrical', 'ayans', 'ayans', 'ayanshaikh67@gmail.com', 'mumbra west', '1998-01-25', '9167232189', 'student', 'T.E', '5'),
(8, 'sdvfv', 'sdfvdsfvdf', 'kjvhb hbv', 'qwrffdsvre', '123', 'dvfvasdv@m.com', 'jhcjgcjgcygc', '2018-10-07', 'mcv v', 'student', 'jhgcc', 'jhcjgcgvc');

-- --------------------------------------------------------

--
-- Table structure for table `superuser`
--

CREATE TABLE `superuser` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `superuser`
--

INSERT INTO `superuser` (`id`, `username`, `password`) VALUES
(1, 'aiktccomp', '27323A3F74B8BEA6868A085E66E7B6BA');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL,
  `full_name` text NOT NULL,
  `department` text NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `dob` date NOT NULL,
  `mobile_no` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `email` varchar(255) NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`id`, `full_name`, `department`, `username`, `password`, `dob`, `mobile_no`, `address`, `email`, `type`) VALUES
(1, 'Shaikh Salman', 'computer', 'salmans', '70b0211f6b62c95f29f1eaf46dc8bffd', '1982-12-23', '9845127634', 'mumbra east', 'salmanshaikh21@gmail.com', 'teacher'),
(2, 'Shaikh Aamer', 'computer', 'aamirs', 'aamirs', '1983-04-12', '9832427634', 'panvel east', 'aamirshaikh23@gmail.com', 'teacher'),
(3, 'Shaikh Irfan', 'mechanical', 'irfans', 'irfans', '1972-02-11', '9657127634', 'thane east', 'irfanshaikh18gmail.com', 'teacher'),
(4, 'Shaikh Salam', 'civil', 'salams', 'salams', '1988-06-08', '9845713634', 'nerul east', 'salamshaikh11@gmail.com', 'teacher'),
(5, 'Shaikh Yakub', 'electrical', 'yakubs', 'yakubs', '1983-04-02', '9818727634', 'sanpada east', 'yakubshaikh21@gmail.com', 'teacher');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `teacher_id` (`teacher_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `classroom`
--
ALTER TABLE `classroom`
  ADD PRIMARY KEY (`id`),
  ADD KEY `teacher_id` (`teacher_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`);

--
-- Indexes for table `superuser`
--
ALTER TABLE `superuser`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mobile_no` (`mobile_no`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_record`
--
ALTER TABLE `attendance_record`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `classroom`
--
ALTER TABLE `classroom`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `superuser`
--
ALTER TABLE `superuser`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_record`
--
ALTER TABLE `attendance_record`
  ADD CONSTRAINT `attendance_record_ibfk_1` FOREIGN KEY (`student_id`) REFERENCES `student` (`id`),
  ADD CONSTRAINT `attendance_record_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`),
  ADD CONSTRAINT `attendance_record_ibfk_3` FOREIGN KEY (`class_id`) REFERENCES `classroom` (`id`);

--
-- Constraints for table `classroom`
--
ALTER TABLE `classroom`
  ADD CONSTRAINT `classroom_ibfk_1` FOREIGN KEY (`teacher_id`) REFERENCES `teacher` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
