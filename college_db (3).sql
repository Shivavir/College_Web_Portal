-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 12, 2022 at 08:32 AM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 8.1.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `college_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(5) NOT NULL,
  `course` varchar(50) NOT NULL,
  `duration` varchar(30) NOT NULL,
  `fees` varchar(30) NOT NULL,
  `discription` varchar(500) NOT NULL,
  `intake` varchar(30) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`, `duration`, `fees`, `discription`, `intake`, `datetime`) VALUES
(2, 'BBA', '3 years', '63000', 'hxhkgkshc asckhajchx xlhhx zx gxskjcgjkx  kxx  xcxiui xkj gjx', '60', '2022-09-10 05:42:48'),
(5, 'MBA', '2 YEARS', '55000 / semester', 'HR, finance, marcketing, IT, Rural Development', '30 seats only', '2022-09-10 06:23:10'),
(6, 'B.Tech', '4 Years', '63700 / Year', 'Leteral Entry Availble in I.P.S. Campus', '60 seats ', '2022-09-11 08:11:36'),
(7, 'MBA', '2 Years', '50000 / Year`', '2 years Master Degree', '30', '2022-09-11 08:13:59');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

CREATE TABLE `email` (
  `id` int(5) NOT NULL,
  `receiver` varchar(50) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `email`
--

INSERT INTO `email` (`id`, `receiver`, `subject`, `message`, `datetime`) VALUES
(1, 'null', 'adsasd', 'ddsass dssfsdfsdawqq wdwfwedvsdss dcedsd', '2022-09-07 12:21:33'),
(2, 'null', 'hello...', 'i am sanoo from java batch KSS.', '2022-09-07 13:37:13'),
(3, 'null', 'hello...', 'i am sanoo from java batch KSS.', '2022-09-07 13:37:19'),
(4, 'null', 'hello...', 'hello vaibhav singh', '2022-09-07 13:48:44'),
(5, 'null', 'hello...', 'i am sanoo from java batch KSS.', '2022-09-07 13:50:45'),
(6, 'null', 'hello', 'hello vaibhav...', '2022-09-07 13:53:16'),
(7, 'null', 'efgeg', 'ertrt', '2022-09-07 13:54:13'),
(8, 'null', 'null', 'null', '2022-09-07 14:05:06'),
(9, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:05:57'),
(11, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:10:08'),
(12, 'null', 'null', 'null', '2022-09-07 14:10:27'),
(13, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:10:37'),
(14, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:11:09'),
(15, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:12:00'),
(16, 'null', 'hello...', 'hello vaibhav singh...', '2022-09-07 14:13:05'),
(17, 'er.shubhammishra01@gmail.com', 'test', 'dbfjkdf', '2022-09-07 14:14:32'),
(18, 'null', 'hello', 'hello vaibhav singh...', '2022-09-07 14:16:08'),
(19, 'er.shubhammishra01@gmail.com', 'sdfghXVB', '', '2022-09-07 14:17:43'),
(20, 'vaibhavratnasingh@gmail.com', 'hello...', 'i am sanoo from java batch KSS.', '2022-09-07 14:18:38'),
(21, 'hello bhai...', 'null', '7068362122', '2022-09-07 15:31:09'),
(22, 'bdbfddffadczsz', 'null', 'qwt434', '2022-09-07 15:32:05'),
(23, 'amansingh@gmail.com', 'Reply on your feedback', ' dw dah dhea k', '2022-09-10 12:57:59'),
(24, 'vaibhavratnasingh@gmailcom', 'reply on your enquiry ', 'I also know you and I support those students and other members.', '2022-09-11 11:30:06'),
(25, 'vaibhavratnasingh@gmail.com', 'Welcome Note...', 'Welcome to the Institute of Professional Studies (I.P.S.) .\r\nNow we will Introduced you World class technologies.\r\n', '2022-09-11 11:34:22');

-- --------------------------------------------------------

--
-- Table structure for table `enquiry`
--

CREATE TABLE `enquiry` (
  `enquiryid` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `message` varchar(500) NOT NULL,
  `enquery_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `enquiry`
--

INSERT INTO `enquiry` (`enquiryid`, `name`, `emailid`, `mobileno`, `message`, `enquery_dt`) VALUES
(1, 'name', 'email', 'mob', 'msg', '2022-09-03 14:24:19'),
(2, 'sanoo', 'sanoo@email.com', 'null', 'sdafdsafasdgasdagadsdg dsfasdasdg df', '2022-09-03 14:24:44'),
(3, 'sanoo', 'sanoo@email.com', '23432', 'sdfgfgb', '2022-09-03 14:27:17'),
(4, 'sanoo', 'sanoo@email.com', '576576', 'hgfhgjbj', '2022-09-03 14:27:43'),
(5, 'sanoo', 'sanoo@email.com', '543', 'sgdfg', '2022-09-03 14:29:18'),
(6, 'sanoo', 'sadsa@y.com', '7676', 'dfdsf', '2022-09-03 14:30:15'),
(7, 'sanoo', 'sadsa@y.com', '7676', 'dfdsf', '2022-09-03 14:30:41'),
(8, 'sanoo', 'sanoo@email.com', '978655', 'hgfgd', '2022-09-03 14:31:14'),
(9, 'sam', 'sanoo@email.com', '3454', 'dgehyf', '2022-09-03 14:32:29'),
(10, 'saghgasgf', 'sanoo@email.com', '8887009985', 'banda uttar pradesh 210123', '2022-09-03 15:04:26'),
(11, 'anukalp', 'anukalp@gmail.com', '7654321234', 'i am from kcnit banda up', '2022-09-07 10:26:09'),
(12, 'Vaibhav Ratna Singh', 'vaibhavratnasingh@gmailcom', '7068362122', 'Im am a java batch student.', '2022-09-11 11:24:14'),
(13, 'Vaibhav Ratna Singh', 'vaibhavratnasingh@gmailcom', '7068362122', 'Vaibhav is a very frauad person.\nwhole college knows this tranding news.', '2022-09-11 11:27:01');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `id` int(5) NOT NULL,
  `name` varchar(50) NOT NULL,
  `experience` varchar(50) NOT NULL,
  `faculty` varchar(50) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `picture` varchar(100) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `qualification` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`id`, `name`, `experience`, `faculty`, `designation`, `picture`, `datetime`, `qualification`) VALUES
(1, 'Ankit Singh', '7', 'Enginiring', 'null', '/files/members/ring97710_8_122_28.png', '2022-09-10 15:04:28', 'BTECH'),
(2, 'sanoo singh', '4', 'Enginiring', 'ENGINEER', '/files/members/gift55210_8_122_2.gif', '2022-09-10 15:32:02', 'BTECH'),
(4, 'sanoo singh', '4', 'Enginiring', 'ENGINEER', '/files/members/gift45510_8_122_33.gif', '2022-09-10 15:33:33', 'BTECH'),
(6, 'Dr. Ajeet Kumar Singh', '9 years', 'Engineering & Management', 'Director, Dean', '/files/members/ipslogo80311_8_122_26.png', '2022-09-11 08:24:26', 'Phd  M.Tech');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `id` int(5) NOT NULL,
  `email` varchar(50) NOT NULL,
  `rating` int(2) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`id`, `email`, `rating`, `message`, `datetime`) VALUES
(1, 'amansingh@gmail.com', 3, 'xdass', '2022-09-10 12:05:31');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `userid` varchar(200) NOT NULL,
  `pass` varchar(100) NOT NULL,
  `usertype` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`userid`, `pass`, `usertype`) VALUES
('admin@mykss.in', '876', 'admin'),
('amansingh@gmail.com', '45678', 'user'),
('manoo@gmail.com', '111299', 'user'),
('pradeep@gmail.com', '87654', 'user'),
('sanoo@gmail.com', 'jdv', 'user'),
('thakurankitsingh891703@gmail.com', '876', 'user'),
('vaibhavratnasingh@gmail.com', '876', 'user');

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `notification_id` int(11) NOT NULL,
  `message` varchar(250) NOT NULL,
  `notification_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `link` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`notification_id`, `message`, `notification_dt`, `link`) VALUES
(6, 'hello all', '2022-09-07 20:24:16', 'vaibhav@gmail.com'),
(7, 'Farewell aurganized by KSS Chitrakoot', '2022-09-11 06:00:01', 'mykss.in');

-- --------------------------------------------------------

--
-- Table structure for table `sms`
--

CREATE TABLE `sms` (
  `id` int(5) NOT NULL,
  `mobno` varchar(15) NOT NULL,
  `message` varchar(500) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `sms`
--

INSERT INTO `sms` (`id`, `mobno`, `message`, `datetime`) VALUES
(1, '8887009985', 'hello...', '2022-09-07 19:21:54');

-- --------------------------------------------------------

--
-- Table structure for table `student_master`
--

CREATE TABLE `student_master` (
  `name` varchar(60) NOT NULL,
  `gender` varchar(15) NOT NULL,
  `course` varchar(30) NOT NULL,
  `emailid` varchar(200) NOT NULL,
  `mobileno` varchar(20) NOT NULL,
  `address` varchar(200) NOT NULL,
  `picname` varchar(200) NOT NULL,
  `reg_dt` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student_master`
--

INSERT INTO `student_master` (`name`, `gender`, `course`, `emailid`, `mobileno`, `address`, `picname`, `reg_dt`) VALUES
('Aman Singh', 'male', 'BBA', 'amansingh@gmail.com', '9809456850', ' chitrakoot UP India', 'ring2299_8_122_3.png', '2022-09-09 13:18:03'),
('ppradeep singh', 'male', 'BCA', 'pradeep@gmail.com', '7654321567', 'chitrakoot', 'aktu38212_8_122_55.png', '2022-09-12 05:14:20'),
('null', 'Male', 'BBA', 'sanoo@gmail.com', '9809456855', ' chitrakoot india', 'gift7839_8_122_45.gif', '2022-09-08 18:50:45'),
('null', 'Male', 'BBA', 'thakurankitsingh891703@gmail.com', '9809456855', ' chitrakoot india', 'gift7839_8_122_45.gif', '2022-09-08 18:50:45'),
('null', 'Male', 'BBA', 'vaibhav@gmail.com', '9809456855', ' chitrakoot india', 'gift7839_8_122_45.gif', '2022-09-08 18:50:45');

-- --------------------------------------------------------

--
-- Table structure for table `studymaterial`
--

CREATE TABLE `studymaterial` (
  `id` int(5) NOT NULL,
  `subject` varchar(50) NOT NULL,
  `topic` varchar(50) NOT NULL,
  `description` varchar(200) NOT NULL,
  `filename` varchar(150) NOT NULL,
  `datetime` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `studymaterial`
--

INSERT INTO `studymaterial` (`id`, `subject`, `topic`, `description`, `filename`, `datetime`) VALUES
(1, 'null', 'jsp', 'null', '/files/study-material/ap027189_8_122_20.exe', '2022-09-09 14:35:20'),
(2, 'null', 'jsp', 'fgj', '/files/study-material/ap035029_8_122_31.o', '2022-09-11 10:52:49'),
(3, 'database', 'Oracle Commands List', 'null', '/files/study-material/Screenshot (1)98911_8_122_0.png', '2022-09-11 10:14:00'),
(4, 'database', 'jsp', 'null', '/files/study-material/Screenshot (7)13611_8_122_32.png', '2022-09-11 10:39:32'),
(5, 'coa', 'cache', 'ram rom arc', '/files/study-material/Screenshot (3)66511_8_122_34.png', '2022-09-11 10:56:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email`
--
ALTER TABLE `email`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `enquiry`
--
ALTER TABLE `enquiry`
  ADD PRIMARY KEY (`enquiryid`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`userid`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`notification_id`);

--
-- Indexes for table `sms`
--
ALTER TABLE `sms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_master`
--
ALTER TABLE `student_master`
  ADD PRIMARY KEY (`emailid`);

--
-- Indexes for table `studymaterial`
--
ALTER TABLE `studymaterial`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `course`
--
ALTER TABLE `course`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `email`
--
ALTER TABLE `email`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `enquiry`
--
ALTER TABLE `enquiry`
  MODIFY `enquiryid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `faculty`
--
ALTER TABLE `faculty`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `notification_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `sms`
--
ALTER TABLE `sms`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `studymaterial`
--
ALTER TABLE `studymaterial`
  MODIFY `id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
