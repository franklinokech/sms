-- phpMyAdmin SQL Dump
-- version 4.3.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2017 at 01:02 PM
-- Server version: 5.6.24
-- PHP Version: 5.5.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sms`
--

-- --------------------------------------------------------

--
-- Table structure for table `add_class`
--

CREATE TABLE IF NOT EXISTS `add_class` (
  `Class_Id` int(11) NOT NULL,
  `Form` int(2) NOT NULL,
  `Name` varchar(15) NOT NULL,
  `Capacity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_class`
--

INSERT INTO `add_class` (`Class_Id`, `Form`, `Name`, `Capacity`) VALUES
(4, 2, 'SOUTH EAST', 45),
(2, 3, 'KWAME NKUUMAH', 60),
(3, 4, 'KENYATTA', 45);

-- --------------------------------------------------------

--
-- Table structure for table `add_gurdian`
--

CREATE TABLE IF NOT EXISTS `add_gurdian` (
  `Id_No` int(10) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_gurdian`
--

INSERT INTO `add_gurdian` (`Id_No`, `First_Name`, `Last_Name`, `Gender`, `Phone_Number`, `Email`) VALUES
(54758, 'JOHN', 'OMONDI', 'Male', '0700520718', 'franklinokech@gmail.com'),
(542546, 'FRANKLIN', 'OKECH', 'Male', '0700124578', 'franklinokech@gmail.com'),
(857545, 'MARGRET', 'OKUMU', 'Female', '0700520718', 'berry@gmail.com'),
(31322663, 'Emma', 'adhiambo', 'Female', '0700520718', 'emam@yahool.com'),
(31322674, 'JECINTER', 'ADOYO', 'Female', '0700520715', 'jecintet@yahoo.com'),
(41254578, 'LUCIFER', 'OTIENO', 'Male', '0727983568', 'lucifer@yahoo.com'),
(41422552, 'ELSER', 'AKINYI', 'Male', '0710167188', 'emma@yahoo.com'),
(41422556, 'GREGORY', 'ODIRA', 'Male', '0700520718', 'gregory@gmail.com'),
(41452525, 'TIENGO', 'JOSEPH', 'Male', '0700123456', 'tiengo@yahoo.com'),
(94635613, 'HSYYAB', 'GHDHHD', 'Male', '0731645356', 'aguru');

-- --------------------------------------------------------

--
-- Table structure for table `add_house`
--

CREATE TABLE IF NOT EXISTS `add_house` (
  `House_ID` int(11) NOT NULL,
  `House_Name` varchar(25) NOT NULL,
  `Bed_Capacity` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_house`
--

INSERT INTO `add_house` (`House_ID`, `House_Name`, `Bed_Capacity`) VALUES
(2, 'KILIMANJARO', 400),
(3, 'NYAWITA', 500),
(4, 'BIG FIVE', 400),
(5, 'MABUNGO', 500),
(6, 'TRINITY', 45);

-- --------------------------------------------------------

--
-- Table structure for table `add_role`
--

CREATE TABLE IF NOT EXISTS `add_role` (
  `Role_Id` int(11) NOT NULL,
  `Role_Name` varchar(50) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_role`
--

INSERT INTO `add_role` (`Role_Id`, `Role_Name`) VALUES
(2, 'deputy principal Administration'),
(3, 'CLASS TEACHER'),
(5, 'SENIOR MATSER'),
(6, 'GAMES TEACHER'),
(7, 'ACCOUNTANT');

-- --------------------------------------------------------

--
-- Table structure for table `add_staff`
--

CREATE TABLE IF NOT EXISTS `add_staff` (
  `Staff_Id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL DEFAULT '135d4d40b768220ad92a2d90325202c9',
  `Role` varchar(30) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) NOT NULL DEFAULT '0',
  `Access_Level` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_staff`
--

INSERT INTO `add_staff` (`Staff_Id`, `First_Name`, `Last_Name`, `Gender`, `DOB`, `Phone_No`, `Email`, `Password`, `Role`, `Date_Of_Admission`, `Status`, `Access_Level`) VALUES
(456525, 'PAUL', 'OWINO', 'Male', '19887-04-12', '0785659852', 'frank@accounts', '135d4d40b768220ad92a2d90325202c9', 'ACCOUNTANT', '2016-04-22 08:50:43', 0, 3);

-- --------------------------------------------------------

--
-- Table structure for table `add_student`
--

CREATE TABLE IF NOT EXISTS `add_student` (
  `Admission_No` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Middle_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `Postal_Address` varchar(25) NOT NULL,
  `Postal_Code` varchar(11) NOT NULL,
  `Town` varchar(20) NOT NULL,
  `Form` int(11) NOT NULL,
  `Stream` varchar(20) NOT NULL,
  `House` varchar(20) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Parent_ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=120 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_student`
--

INSERT INTO `add_student` (`Admission_No`, `First_Name`, `Middle_Name`, `Last_Name`, `DOB`, `Gender`, `Postal_Address`, `Postal_Code`, `Town`, `Form`, `Stream`, `House`, `Date_Of_Admission`, `Parent_ID`) VALUES
(100, 'Franklin', 'Ochieng', 'Okech', '1994-05-30', 'Male', '855', '40300', 'Homabay', 2, 'West', 'BIG FIVE', '2016-04-09 08:10:02', 31322663),
(106, 'JOHN', 'DOE', 'OMONDI', '2013-05-03', 'Male', '789', '852', 'NYAHURUR', 1, 'KENYATTA', 'KILIMANJARO', '2016-04-09 09:43:44', 857545),
(110, 'JULIET', 'AKINYI', 'AMONDI', '12/12/1994', 'Male', '7857', '857', '789', 2, 'KENYATTA', 'BIG FIVE', '2016-04-09 10:37:50', 54758),
(111, 'PAUL', 'OCHIENG', 'OKECH', '23/9/1996', 'Male', '855', '40300', 'HOMABAY', 1, 'KENYATTA', 'KILIMANJARO', '2016-04-09 10:40:49', 542546),
(112, 'PETER', 'OMOLLO', 'OGUTU', '12/12/1995', 'Male', '7857', '40300', 'HOMABAY', 2, 'KENYATTA', 'BIG FIVE', '2016-04-09 10:47:30', 31322663),
(113, 'TONNY', 'OMBOGO', 'OTIENO', '22/14/1992', 'Male', '45', '40300', 'HOMABAY', 1, 'KENYATTA', 'BIG FIVE', '2016-04-16 05:37:47', 31322674),
(114, 'JEREMY', 'ONYANGO', 'OPIYO', '22/10/1984', 'Male', '855', '40300', 'HOMA BAY', 1, 'KENYATTA', 'KILIMANJARO', '2016-04-16 05:50:12', 41422552),
(115, 'ELICA', 'OTIENO', 'OYOO', '22/14/1992', 'Male', '78', '28', 'HOMA BAY', 1, 'KENYATTA', 'KILIMANJARO', '2016-04-16 05:52:30', 41254578),
(116, 'CHRISPINE', 'YAGO', 'OLOO', '11/11/1994', 'Male', '41', '40300', 'HOMA BAY', 1, 'KENYATTA', 'BIG FIVE', '2016-04-16 05:55:54', 41452525),
(117, 'PEREZ', 'AWINO', 'OLOO', '21/14/1995', 'Male', '45', '40100', 'HOMA BAY', 2, 'KENYATTA', 'BIG FIVE', '2016-04-16 05:57:21', 41422556),
(118, 'TILEN', 'OMONDI', 'OKELO', '1996-01-04', 'Male', '455', '40300', 'HOMA BAY', 2, 'KENYATTA', 'KILIMANJARO', '2016-04-16 06:02:37', 41422552),
(119, 'EDU', 'KOECH', 'KAPSASUR', '2004-12-19', 'Male', '9946', '155', 'KABSABET', 1, 'KENYATTA', 'MABUNGO', '2016-04-20 15:17:57', 94635613);

-- --------------------------------------------------------

--
-- Table structure for table `add_subject`
--

CREATE TABLE IF NOT EXISTS `add_subject` (
  `Subject_Id` int(11) NOT NULL,
  `Name` varchar(30) NOT NULL,
  `Short_Name` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_subject`
--

INSERT INTO `add_subject` (`Subject_Id`, `Name`, `Short_Name`) VALUES
(101, 'ENGLISH', 'ENG'),
(102, 'KISWAHILI', 'KISW'),
(121, 'MATHEMATICS', 'MATHS'),
(231, 'BIOLOGY', 'BIO'),
(232, 'PHYSICS', 'PHY'),
(233, 'CHEMISTRY', 'CHEM'),
(311, 'HISTORY AND GOVERNMENT', 'HIST'),
(312, 'GEOGRAPHY', 'GEOG'),
(313, 'CHRISTIAN RELIGIOUS EDUCATION', 'C.R.E'),
(443, 'AGRICULTURE', 'AGRIC'),
(565, 'BUSINESS STUDIES', 'B/S');

-- --------------------------------------------------------

--
-- Table structure for table `add_teacher`
--

CREATE TABLE IF NOT EXISTS `add_teacher` (
  `Staff_Id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL DEFAULT '135d4d40b768220ad92a2d90325202c9',
  `Subjects` varchar(30) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) NOT NULL DEFAULT '0',
  `Access_Level` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `add_teacher`
--

INSERT INTO `add_teacher` (`Staff_Id`, `First_Name`, `Last_Name`, `Gender`, `DOB`, `Phone_No`, `Email`, `Password`, `Subjects`, `Date_Of_Admission`, `Status`, `Access_Level`) VALUES
(12345678, 'FRANKLIN', 'OKECH', 'Male', '1995-11-12', '07123456789', 'teacher@gmail.com', '135d4d40b768220ad92a2d90325202c9', '121 / 232', '2017-02-12 11:54:22', 0, 2);

-- --------------------------------------------------------

--
-- Table structure for table `admin_details`
--

CREATE TABLE IF NOT EXISTS `admin_details` (
  `ID` int(11) NOT NULL,
  `First_Name` varchar(25) NOT NULL,
  `Last_Name` varchar(25) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Username` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL,
  `Status` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_details`
--

INSERT INTO `admin_details` (`ID`, `First_Name`, `Last_Name`, `Email`, `Username`, `Password`, `Status`) VALUES
(1, 'FRANKLIN', 'OKECH', 'franklinokech@gmail.com', 'frank@admin', '135d4d40b768220ad92a2d90325202c9', 0);

-- --------------------------------------------------------

--
-- Table structure for table `archived_gurdians`
--

CREATE TABLE IF NOT EXISTS `archived_gurdians` (
  `Id_No` int(10) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `Phone_Number` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archived_staff`
--

CREATE TABLE IF NOT EXISTS `archived_staff` (
  `Staff_Id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL DEFAULT '135d4d40b768220ad92a2d90325202c9',
  `Role` varchar(30) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Access_Level` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archived_students`
--

CREATE TABLE IF NOT EXISTS `archived_students` (
  `Admission_No` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Middle_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `DOB` varchar(15) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `Postal_Address` varchar(25) NOT NULL,
  `Postal_Code` varchar(11) NOT NULL,
  `Town` varchar(20) NOT NULL,
  `Form` int(11) NOT NULL,
  `Stream` varchar(20) NOT NULL,
  `House` varchar(20) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Parent_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `archived_teachers`
--

CREATE TABLE IF NOT EXISTS `archived_teachers` (
  `Staff_Id` int(11) NOT NULL,
  `First_Name` varchar(30) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Gender` enum('Male','Female','','') NOT NULL,
  `DOB` varchar(30) NOT NULL,
  `Phone_No` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Password` varchar(32) NOT NULL DEFAULT '135d4d40b768220ad92a2d90325202c9',
  `Subjects` varchar(30) NOT NULL,
  `Date_Of_Admission` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(11) NOT NULL DEFAULT '1',
  `Access_Level` int(11) NOT NULL DEFAULT '2'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term1_cat1`
--
CREATE TABLE IF NOT EXISTS `form1_term1_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term1_cat2`
--
CREATE TABLE IF NOT EXISTS `form1_term1_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term1_results`
--
CREATE TABLE IF NOT EXISTS `form1_term1_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term2_cat1`
--
CREATE TABLE IF NOT EXISTS `form1_term2_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term2_cat2`
--
CREATE TABLE IF NOT EXISTS `form1_term2_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term2_results`
--
CREATE TABLE IF NOT EXISTS `form1_term2_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term3_cat1`
--
CREATE TABLE IF NOT EXISTS `form1_term3_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term3_cat2`
--
CREATE TABLE IF NOT EXISTS `form1_term3_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form1_term3_results`
--
CREATE TABLE IF NOT EXISTS `form1_term3_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term1_cat1`
--
CREATE TABLE IF NOT EXISTS `form2_term1_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term1_cat2`
--
CREATE TABLE IF NOT EXISTS `form2_term1_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term1_results`
--
CREATE TABLE IF NOT EXISTS `form2_term1_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term2_cat1`
--
CREATE TABLE IF NOT EXISTS `form2_term2_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term2_cat2`
--
CREATE TABLE IF NOT EXISTS `form2_term2_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term2_results`
--
CREATE TABLE IF NOT EXISTS `form2_term2_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(94)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term3_cat1`
--
CREATE TABLE IF NOT EXISTS `form2_term3_cat1` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term3_cat2`
--
CREATE TABLE IF NOT EXISTS `form2_term3_cat2` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_TWO_TOTAL` bigint(21)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `form2_term3_results`
--
CREATE TABLE IF NOT EXISTS `form2_term3_results` (
`ADMISSION_No` int(11)
,`FULL_NAME` varchar(92)
,`STREAM` varchar(20)
,`EXAM_ONE_TOTAL` bigint(21)
,`EXAM_TWO_TOTAL` bigint(21)
,`TOTAL_SCORE` bigint(22)
);

-- --------------------------------------------------------

--
-- Table structure for table `players`
--

CREATE TABLE IF NOT EXISTS `players` (
  `pid` int(2) NOT NULL,
  `name` varchar(50) NOT NULL,
  `age` int(2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `players`
--

INSERT INTO `players` (`pid`, `name`, `age`) VALUES
(1, 'Samual', 25),
(2, 'Vino', 20),
(3, 'John', 20),
(4, 'Andy', 22),
(5, 'Brian', 21),
(6, 'Dew', 24),
(7, 'Kris', 25),
(8, 'William', 26),
(9, 'George', 23),
(10, 'Peter', 19),
(11, 'Tom', 20),
(12, 'Andre', 20);

-- --------------------------------------------------------

--
-- Table structure for table `result_tab`
--

CREATE TABLE IF NOT EXISTS `result_tab` (
  `AdmNo` int(11) NOT NULL,
  `Class` int(11) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `school_details`
--

CREATE TABLE IF NOT EXISTS `school_details` (
  `code` int(8) NOT NULL,
  `name` varchar(50) NOT NULL,
  `motto` varchar(30) NOT NULL,
  `logo` varchar(30) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `website` varchar(30) NOT NULL,
  `postal_address` varchar(30) NOT NULL,
  `postal_code` int(5) NOT NULL,
  `town` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `school_details`
--

INSERT INTO `school_details` (`code`, `name`, `motto`, `logo`, `email`, `website`, `postal_address`, `postal_code`, `town`) VALUES
(4275895, 'ST VINCENT BOYS&#039; HIGH SCHOOL, RALIEW', 'strive to excel', NULL, 'raliewhighsch@hotmail.com', 'http://www.raiew.ac.ke', '22', 40611, 'NYLIMA');

-- --------------------------------------------------------

--
-- Table structure for table `tblattendace`
--

CREATE TABLE IF NOT EXISTS `tblattendace` (
  `Id` int(11) NOT NULL,
  `Admission_No` int(11) NOT NULL,
  `Status` int(11) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblattendace`
--

INSERT INTO `tblattendace` (`Id`, `Admission_No`, `Status`, `Date`) VALUES
(1, 106, 0, '2016-04-10 15:54:46'),
(2, 111, 0, '2016-04-10 15:54:46'),
(3, 106, 0, '2016-04-10 15:57:52'),
(4, 111, 0, '2016-04-10 15:57:52'),
(5, 106, 0, '2016-04-11 07:29:33'),
(6, 111, 0, '2016-04-11 07:29:34'),
(7, 106, 0, '2016-04-11 07:31:09'),
(8, 111, 0, '2016-04-11 07:31:09'),
(9, 106, 0, '2016-04-11 07:43:43'),
(10, 111, 0, '2016-04-11 07:43:44');

-- --------------------------------------------------------

--
-- Table structure for table `tblexam_types`
--

CREATE TABLE IF NOT EXISTS `tblexam_types` (
  `Id` int(11) NOT NULL,
  `Exam_Type` varchar(25) NOT NULL,
  `Marks_Allocation` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblexam_types`
--

INSERT INTO `tblexam_types` (`Id`, `Exam_Type`, `Marks_Allocation`) VALUES
(1, 'Exam 1', 30),
(2, 'Exam 2', 70);

-- --------------------------------------------------------

--
-- Table structure for table `tblfee_payments_details`
--

CREATE TABLE IF NOT EXISTS `tblfee_payments_details` (
  `Receipt_No` int(11) NOT NULL,
  `Admission_No` int(11) NOT NULL,
  `Amount_Paid` double NOT NULL,
  `Date_Paid` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Processed_By` varchar(25) NOT NULL DEFAULT 'franklin'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblfee_payments_details`
--

INSERT INTO `tblfee_payments_details` (`Receipt_No`, `Admission_No`, `Amount_Paid`, `Date_Paid`, `Processed_By`) VALUES
(100, 111, 10000, '2016-04-13 14:48:13', 'franklin'),
(200, 111, 10000, '2016-04-13 14:48:38', 'franklin'),
(500, 112, 50000, '2016-04-20 15:35:04', 'franklin'),
(700, 112, 10000, '2016-04-20 15:37:40', 'franklin'),
(2622, 119, 25000, '2016-04-20 15:48:36', 'franklin'),
(3000, 111, -5000, '2016-04-13 14:49:29', 'franklin'),
(3999, 111, -7500, '2016-04-22 07:56:17', 'franklin'),
(8532, 106, 33250, '2016-04-20 15:51:38', 'franklin'),
(47855, 111, 50000000, '2016-04-22 08:01:41', 'franklin');

-- --------------------------------------------------------

--
-- Table structure for table `tblform_four_marks`
--

CREATE TABLE IF NOT EXISTS `tblform_four_marks` (
  `Entry_Id` int(11) NOT NULL,
  `Admission_No` int(11) NOT NULL,
  `Stream` varchar(25) NOT NULL,
  `Exam_Id` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `101` int(11) DEFAULT NULL,
  `102` int(11) DEFAULT NULL,
  `121` int(11) DEFAULT NULL,
  `231` int(11) DEFAULT NULL,
  `232` int(11) DEFAULT NULL,
  `233` int(11) DEFAULT NULL,
  `311` int(11) DEFAULT NULL,
  `312` int(11) DEFAULT NULL,
  `313` int(11) DEFAULT NULL,
  `443` int(11) DEFAULT NULL,
  `565` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_one_marks`
--

CREATE TABLE IF NOT EXISTS `tblform_one_marks` (
  `Entry_Id` int(11) NOT NULL,
  `Admission_No` int(11) NOT NULL,
  `Stream` varchar(25) NOT NULL,
  `Exam_Id` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `101` int(11) DEFAULT NULL,
  `102` int(11) DEFAULT NULL,
  `121` int(11) DEFAULT NULL,
  `231` int(11) DEFAULT NULL,
  `232` int(11) DEFAULT NULL,
  `233` int(11) DEFAULT NULL,
  `311` int(11) DEFAULT NULL,
  `312` int(11) DEFAULT NULL,
  `313` int(11) DEFAULT NULL,
  `443` int(11) DEFAULT NULL,
  `565` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblform_one_marks`
--

INSERT INTO `tblform_one_marks` (`Entry_Id`, `Admission_No`, `Stream`, `Exam_Id`, `Term`, `101`, `102`, `121`, `231`, `232`, `233`, `311`, `312`, `313`, `443`, `565`) VALUES
(1, 106, 'KENYATTA', 1, 1, -20, 22, 87, 28, 56, 87, 74, 96, 74, 74, 25),
(2, 111, 'KENYATTA', 1, 1, 2, 19, 58, 23, 69, 78, 62, 58, 58, 58, 24),
(3, 113, 'KENYATTA', 1, 1, 5, 14, 74, 12, 25, 45, 59, 26, 96, 69, 21),
(4, 114, 'KENYATTA', 1, 1, 5, 20, 89, 21, 36, 96, 36, 35, 58, 57, 23),
(5, 115, 'KENYATTA', 1, 1, 5, 15, 58, 14, 25, 25, 23, 28, 74, 25, 25),
(6, 116, 'KENYATTA', 1, 1, 5, 17, 74, 18, 75, 74, 74, 84, 85, 86, 26),
(7, 119, 'KENYATTA', 1, 1, 12, 23, NULL, NULL, NULL, NULL, NULL, NULL, 96, 28, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblform_three_marks`
--

CREATE TABLE IF NOT EXISTS `tblform_three_marks` (
  `Entry_Id` int(11) NOT NULL,
  `Admission_No` int(11) NOT NULL,
  `Stream` varchar(25) NOT NULL,
  `Exam_Id` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `101` int(11) DEFAULT NULL,
  `102` int(11) DEFAULT NULL,
  `121` int(11) DEFAULT NULL,
  `231` int(11) DEFAULT NULL,
  `232` int(11) DEFAULT NULL,
  `233` int(11) DEFAULT NULL,
  `311` int(11) DEFAULT NULL,
  `312` int(11) DEFAULT NULL,
  `313` int(11) DEFAULT NULL,
  `443` int(11) DEFAULT NULL,
  `565` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblform_two_marks`
--

CREATE TABLE IF NOT EXISTS `tblform_two_marks` (
  `Entry_Id` int(11) NOT NULL DEFAULT '0',
  `Admission_No` int(11) NOT NULL,
  `Stream` varchar(25) NOT NULL,
  `Exam_Id` int(11) NOT NULL,
  `Term` int(11) NOT NULL,
  `101` int(11) DEFAULT NULL,
  `102` int(11) DEFAULT NULL,
  `121` int(11) DEFAULT NULL,
  `231` int(11) DEFAULT NULL,
  `232` int(11) DEFAULT NULL,
  `233` int(11) DEFAULT NULL,
  `311` int(11) DEFAULT NULL,
  `312` int(11) DEFAULT NULL,
  `313` int(11) DEFAULT NULL,
  `443` int(11) DEFAULT NULL,
  `565` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblparent_commitment`
--

CREATE TABLE IF NOT EXISTS `tblparent_commitment` (
  `ID` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Date_Due` varchar(20) NOT NULL,
  `Date_Approved` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Approved_By` varchar(25) NOT NULL,
  `Admission_No` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblpayable_amount`
--

CREATE TABLE IF NOT EXISTS `tblpayable_amount` (
  `Id` int(11) NOT NULL,
  `Form` varchar(15) NOT NULL,
  `Term` varchar(15) NOT NULL,
  `Amount` double NOT NULL,
  `Academic_Year` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent_acc`
--

CREATE TABLE IF NOT EXISTS `tblstudent_acc` (
  `Admission_No` int(11) NOT NULL,
  `Debit` double NOT NULL DEFAULT '0',
  `Credit` double NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblstudent_acc`
--

INSERT INTO `tblstudent_acc` (`Admission_No`, `Debit`, `Credit`) VALUES
(106, 30250, 33250),
(110, 20000, 0),
(111, 30250, 50007500),
(112, 25000, 60000),
(113, 10250, 0),
(114, 10250, 0),
(115, 10250, 0),
(116, 10250, 0),
(117, 0, 0),
(118, 0, 0),
(119, 10250, 25000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expensetype`
--

CREATE TABLE IF NOT EXISTS `tbl_expensetype` (
  `ID` int(11) NOT NULL,
  `Expense_Type` varchar(25) NOT NULL,
  `Description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_expensetype`
--

INSERT INTO `tbl_expensetype` (`ID`, `Expense_Type`, `Description`) VALUES
(1, 'Academic Trip', 'All expenses on academic trips'),
(2, 'Staff Meeting', 'Money incurred in setting up staff meeting'),
(3, 'Salaries', 'Payment of salary to subordianete staff'),
(4, 'WATER BILL', 'PAYMENT FOR WATER BILLS'),
(5, 'other expenses', 'undefined expenses');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_expense_payment`
--

CREATE TABLE IF NOT EXISTS `tbl_expense_payment` (
  `Expense_ID` int(11) NOT NULL,
  `Expense_Type` varchar(25) NOT NULL,
  `Expense_Amount` double NOT NULL DEFAULT '0',
  `Expense_Date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Specfic_Description` text NOT NULL,
  `Approved_By` varchar(25) NOT NULL DEFAULT 'franklin'
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_expense_payment`
--

INSERT INTO `tbl_expense_payment` (`Expense_ID`, `Expense_Type`, `Expense_Amount`, `Expense_Date`, `Specfic_Description`, `Approved_By`) VALUES
(5, 'Academic Trip', 4500, '2016-04-09 11:08:43', 'trip to mombasa, swahili box', 'franklin'),
(6, 'WATER BILL', 75000, '2016-04-09 11:19:23', 'PAYED 7500 TO KIWASCO FOR MARCH WATER BILL', 'franklin'),
(7, 'Academic Trip', 56000, '2016-04-20 15:55:02', 'Chini ya mnazi', 'franklin'),
(8, 'Salaries', 5000, '2016-04-20 15:56:01', 'Dec salaries for non teaching staff', 'franklin');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term1_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term1_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term1_cat1`
--

INSERT INTO `tbl_frm1_term1_cat1` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KENYATTA', 642),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 512),
(113, 'TONNY  OMBOGO  OTIENO', 'KENYATTA', 455),
(114, 'JEREMY  ONYANGO  OPIYO', 'KENYATTA', 484),
(115, 'ELICA  OTIENO  OYOO', 'KENYATTA', 330),
(116, 'CHRISPINE  YAGO  OLOO', 'KENYATTA', 639),
(119, 'EDU  KOECH  KAPSASUR', 'KENYATTA', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term1_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term1_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term1_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term1_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term2_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term2_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term2_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term2_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term2_cat2`
--

INSERT INTO `tbl_frm1_term2_cat2` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_TWO_TOTAL`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KENYATTA', 611),
(110, 'JULIET  AKINYI  AMONDI', 'KENYATTA', 570),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 559),
(112, 'PETER  OMOLLO  OGUTU', 'KENYATTA', 611);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term2_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term2_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term2_results`
--

INSERT INTO `tbl_frm1_term2_results` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`, `EXAM_TWO_TOTAL`, `TOTAL_SCORE`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KENYATTA', 211, 611, 822),
(110, 'JULIET  AKINYI  AMONDI', 'KENYATTA', 219, 570, 789),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 256, 559, 815),
(112, 'PETER  OMOLLO  OGUTU', 'KENYATTA', 221, 611, 832);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term3_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term3_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term3_cat1`
--

INSERT INTO `tbl_frm1_term3_cat1` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`) VALUES
(106, 'JOHN DOE OMONDI', 'KENYATTA', 211),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 219),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 256),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 221);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term3_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term3_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term3_cat2`
--

INSERT INTO `tbl_frm1_term3_cat2` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_TWO_TOTAL`) VALUES
(106, 'JOHN DOE OMONDI', 'KENYATTA', 611),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 570),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 559),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 611);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm1_term3_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm1_term3_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm1_term3_results`
--

INSERT INTO `tbl_frm1_term3_results` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`, `EXAM_TWO_TOTAL`, `TOTAL_SCORE`) VALUES
(106, 'JOHN DOE OMONDI', 'KWAME NKUUMAH', 211, 611, 822),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 219, 570, 789),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 256, 559, 815),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 221, 611, 832);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term1_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term1_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term1_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term1_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term1_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term1_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term1_results`
--

INSERT INTO `tbl_frm2_term1_results` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`, `EXAM_TWO_TOTAL`, `TOTAL_SCORE`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KWAME NKUUMAH', 211, 611, 822),
(110, 'JULIET  AKINYI  AMONDI', 'KENYATTA', 219, 570, 789),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 256, 559, 815),
(112, 'PETER  OMOLLO  OGUTU', 'KENYATTA', 221, 611, 832);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term2_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term2_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term2_cat1`
--

INSERT INTO `tbl_frm2_term2_cat1` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KWAME NKUUMAH', 211),
(110, 'JULIET  AKINYI  AMONDI', 'KENYATTA', 219),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 256),
(112, 'PETER  OMOLLO  OGUTU', 'KENYATTA', 221);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term2_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term2_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term2_cat2`
--

INSERT INTO `tbl_frm2_term2_cat2` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_TWO_TOTAL`) VALUES
(106, 'JOHN DOE OMONDI', 'KWAME NKUUMAH', 611),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 570),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 559),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 611);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term2_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term2_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(94) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term2_results`
--

INSERT INTO `tbl_frm2_term2_results` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`, `EXAM_TWO_TOTAL`, `TOTAL_SCORE`) VALUES
(106, 'JOHN  DOE  OMONDI', 'KWAME NKUUMAH', 211, 611, 822),
(110, 'JULIET  AKINYI  AMONDI', 'KENYATTA', 219, 570, 789),
(111, 'PAUL  OCHIENG  OKECH', 'KENYATTA', 256, 559, 815),
(112, 'PETER  OMOLLO  OGUTU', 'KENYATTA', 221, 611, 832);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term3_cat1`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term3_cat1` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term3_cat2`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term3_cat2` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term3_cat2`
--

INSERT INTO `tbl_frm2_term3_cat2` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_TWO_TOTAL`) VALUES
(106, 'JOHN DOE OMONDI', 'KWAME NKUUMAH', 611),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 570),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 559),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 611);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_frm2_term3_results`
--

CREATE TABLE IF NOT EXISTS `tbl_frm2_term3_results` (
  `ADMISSION_No` int(11) NOT NULL,
  `FULL_NAME` varchar(92) NOT NULL DEFAULT '',
  `STREAM` varchar(20) NOT NULL,
  `EXAM_ONE_TOTAL` bigint(21) DEFAULT NULL,
  `EXAM_TWO_TOTAL` bigint(21) DEFAULT NULL,
  `TOTAL_SCORE` bigint(22) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_frm2_term3_results`
--

INSERT INTO `tbl_frm2_term3_results` (`ADMISSION_No`, `FULL_NAME`, `STREAM`, `EXAM_ONE_TOTAL`, `EXAM_TWO_TOTAL`, `TOTAL_SCORE`) VALUES
(106, 'JOHN DOE OMONDI', 'KWAME NKUUMAH', 211, 611, 822),
(110, 'JULIET AKINYI AMONDI', 'KENYATTA', 219, 570, 789),
(111, 'PAUL OCHIENG OKECH', 'KENYATTA', 256, 559, 815),
(112, 'PETER OMOLLO OGUTU', 'KENYATTA', 221, 611, 832);

-- --------------------------------------------------------

--
-- Table structure for table `teacher_role`
--

CREATE TABLE IF NOT EXISTS `teacher_role` (
  `S/No` int(11) NOT NULL,
  `Staff_Id` int(11) NOT NULL,
  `Role_ID` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_subject`
--

CREATE TABLE IF NOT EXISTS `teacher_subject` (
  `Teacher_Id` int(11) NOT NULL,
  `Subject_One` int(11) NOT NULL,
  `Subject_two` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `teacher_subject`
--

INSERT INTO `teacher_subject` (`Teacher_Id`, `Subject_One`, `Subject_two`) VALUES
(12345678, 121, 232),
(31255889, 101, 0),
(31322740, 101, 231),
(41254555, 101, 0),
(41557858, 101, 102);

-- --------------------------------------------------------

--
-- Structure for view `form1_term1_cat1`
--
DROP TABLE IF EXISTS `form1_term1_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term1_cat1` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 1) and (`tblform_one_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term1_cat2`
--
DROP TABLE IF EXISTS `form1_term1_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term1_cat2` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 1) and (`tblform_one_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term1_results`
--
DROP TABLE IF EXISTS `form1_term1_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term1_results` AS select `form1_term1_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form1_term1_cat1`.`FULL_NAME` AS `FULL_NAME`,`form1_term1_cat1`.`STREAM` AS `STREAM`,`form1_term1_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form1_term1_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form1_term1_cat1`.`EXAM_ONE_TOTAL` + `form1_term1_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form1_term1_cat1` join `form1_term1_cat2`) where (`form1_term1_cat1`.`ADMISSION_No` = `form1_term1_cat2`.`ADMISSION_No`);

-- --------------------------------------------------------

--
-- Structure for view `form1_term2_cat1`
--
DROP TABLE IF EXISTS `form1_term2_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term2_cat1` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 2) and (`tblform_one_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term2_cat2`
--
DROP TABLE IF EXISTS `form1_term2_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term2_cat2` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 2) and (`tblform_one_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term2_results`
--
DROP TABLE IF EXISTS `form1_term2_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term2_results` AS select `form1_term2_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form1_term2_cat1`.`FULL_NAME` AS `FULL_NAME`,`form1_term2_cat1`.`STREAM` AS `STREAM`,`form1_term2_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form1_term2_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form1_term2_cat1`.`EXAM_ONE_TOTAL` + `form1_term2_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form1_term2_cat1` join `form1_term2_cat2`) where (`form1_term2_cat1`.`ADMISSION_No` = `form1_term2_cat2`.`ADMISSION_No`);

-- --------------------------------------------------------

--
-- Structure for view `form1_term3_cat1`
--
DROP TABLE IF EXISTS `form1_term3_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term3_cat1` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 3) and (`tblform_one_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term3_cat2`
--
DROP TABLE IF EXISTS `form1_term3_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term3_cat2` AS select `tblform_one_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_one_marks`.`101` + `tblform_one_marks`.`102`) + `tblform_one_marks`.`121`) + `tblform_one_marks`.`231`) + `tblform_one_marks`.`232`) + `tblform_one_marks`.`233`) + `tblform_one_marks`.`311`) + `tblform_one_marks`.`312`) + `tblform_one_marks`.`313`) + `tblform_one_marks`.`443`) + `tblform_one_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_one_marks` join `add_student`) where ((`tblform_one_marks`.`Term` = 3) and (`tblform_one_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_one_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form1_term3_results`
--
DROP TABLE IF EXISTS `form1_term3_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form1_term3_results` AS select `form1_term3_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form1_term3_cat1`.`FULL_NAME` AS `FULL_NAME`,`form1_term3_cat1`.`STREAM` AS `STREAM`,`form1_term3_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form1_term3_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form1_term3_cat1`.`EXAM_ONE_TOTAL` + `form1_term3_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form1_term3_cat1` join `form1_term3_cat2`) where (`form1_term3_cat1`.`ADMISSION_No` = `form1_term3_cat2`.`ADMISSION_No`);

-- --------------------------------------------------------

--
-- Structure for view `form2_term1_cat1`
--
DROP TABLE IF EXISTS `form2_term1_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term1_cat1` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 1) and (`tblform_two_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term1_cat2`
--
DROP TABLE IF EXISTS `form2_term1_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term1_cat2` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 1) and (`tblform_two_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term1_results`
--
DROP TABLE IF EXISTS `form2_term1_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term1_results` AS select `form2_term1_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form2_term1_cat1`.`FULL_NAME` AS `FULL_NAME`,`form2_term1_cat1`.`STREAM` AS `STREAM`,`form2_term1_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form2_term1_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form2_term1_cat1`.`EXAM_ONE_TOTAL` + `form2_term1_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form2_term1_cat1` join `form2_term1_cat2`) where (`form2_term1_cat1`.`ADMISSION_No` = `form2_term1_cat2`.`ADMISSION_No`);

-- --------------------------------------------------------

--
-- Structure for view `form2_term2_cat1`
--
DROP TABLE IF EXISTS `form2_term2_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term2_cat1` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,'  ',`add_student`.`Middle_Name`,'  ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 2) and (`tblform_two_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term2_cat2`
--
DROP TABLE IF EXISTS `form2_term2_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term2_cat2` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 2) and (`tblform_two_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term2_results`
--
DROP TABLE IF EXISTS `form2_term2_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term2_results` AS select `form2_term2_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form2_term2_cat1`.`FULL_NAME` AS `FULL_NAME`,`form2_term2_cat1`.`STREAM` AS `STREAM`,`form2_term2_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form2_term2_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form2_term2_cat1`.`EXAM_ONE_TOTAL` + `form2_term2_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form2_term2_cat1` join `form2_term2_cat2`) where (`form2_term2_cat1`.`ADMISSION_No` = `form2_term2_cat2`.`ADMISSION_No`);

-- --------------------------------------------------------

--
-- Structure for view `form2_term3_cat1`
--
DROP TABLE IF EXISTS `form2_term3_cat1`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term3_cat1` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_ONE_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 3) and (`tblform_two_marks`.`Exam_Id` = 1) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term3_cat2`
--
DROP TABLE IF EXISTS `form2_term3_cat2`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term3_cat2` AS select `tblform_two_marks`.`Admission_No` AS `ADMISSION_No`,concat(`add_student`.`First_Name`,' ',`add_student`.`Middle_Name`,' ',`add_student`.`Last_Name`) AS `FULL_NAME`,`add_student`.`Stream` AS `STREAM`,((((((((((`tblform_two_marks`.`101` + `tblform_two_marks`.`102`) + `tblform_two_marks`.`121`) + `tblform_two_marks`.`231`) + `tblform_two_marks`.`232`) + `tblform_two_marks`.`233`) + `tblform_two_marks`.`311`) + `tblform_two_marks`.`312`) + `tblform_two_marks`.`313`) + `tblform_two_marks`.`443`) + `tblform_two_marks`.`565`) AS `EXAM_TWO_TOTAL` from (`tblform_two_marks` join `add_student`) where ((`tblform_two_marks`.`Term` = 3) and (`tblform_two_marks`.`Exam_Id` = 2) and (`add_student`.`Admission_No` = `tblform_two_marks`.`Admission_No`));

-- --------------------------------------------------------

--
-- Structure for view `form2_term3_results`
--
DROP TABLE IF EXISTS `form2_term3_results`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `form2_term3_results` AS select `form2_term3_cat1`.`ADMISSION_No` AS `ADMISSION_No`,`form2_term3_cat1`.`FULL_NAME` AS `FULL_NAME`,`form2_term3_cat1`.`STREAM` AS `STREAM`,`form2_term3_cat1`.`EXAM_ONE_TOTAL` AS `EXAM_ONE_TOTAL`,`form2_term3_cat2`.`EXAM_TWO_TOTAL` AS `EXAM_TWO_TOTAL`,(`form2_term3_cat1`.`EXAM_ONE_TOTAL` + `form2_term3_cat2`.`EXAM_TWO_TOTAL`) AS `TOTAL_SCORE` from (`form2_term3_cat1` join `form2_term3_cat2`) where (`form2_term3_cat1`.`ADMISSION_No` = `form2_term3_cat2`.`ADMISSION_No`);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add_class`
--
ALTER TABLE `add_class`
  ADD PRIMARY KEY (`Form`,`Name`), ADD UNIQUE KEY `Class_Id` (`Class_Id`);

--
-- Indexes for table `add_gurdian`
--
ALTER TABLE `add_gurdian`
  ADD PRIMARY KEY (`Id_No`);

--
-- Indexes for table `add_house`
--
ALTER TABLE `add_house`
  ADD PRIMARY KEY (`House_ID`), ADD UNIQUE KEY `House_Name` (`House_Name`);

--
-- Indexes for table `add_role`
--
ALTER TABLE `add_role`
  ADD PRIMARY KEY (`Role_Id`);

--
-- Indexes for table `add_staff`
--
ALTER TABLE `add_staff`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `add_student`
--
ALTER TABLE `add_student`
  ADD PRIMARY KEY (`Admission_No`), ADD KEY `Parent_ID` (`Parent_ID`);

--
-- Indexes for table `add_subject`
--
ALTER TABLE `add_subject`
  ADD PRIMARY KEY (`Subject_Id`);

--
-- Indexes for table `add_teacher`
--
ALTER TABLE `add_teacher`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `admin_details`
--
ALTER TABLE `admin_details`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Username` (`Username`);

--
-- Indexes for table `archived_gurdians`
--
ALTER TABLE `archived_gurdians`
  ADD PRIMARY KEY (`Id_No`);

--
-- Indexes for table `archived_staff`
--
ALTER TABLE `archived_staff`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `archived_students`
--
ALTER TABLE `archived_students`
  ADD PRIMARY KEY (`Admission_No`), ADD KEY `Parent_ID` (`Parent_ID`);

--
-- Indexes for table `archived_teachers`
--
ALTER TABLE `archived_teachers`
  ADD PRIMARY KEY (`Staff_Id`);

--
-- Indexes for table `players`
--
ALTER TABLE `players`
  ADD PRIMARY KEY (`pid`), ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `result_tab`
--
ALTER TABLE `result_tab`
  ADD PRIMARY KEY (`AdmNo`);

--
-- Indexes for table `school_details`
--
ALTER TABLE `school_details`
  ADD PRIMARY KEY (`code`);

--
-- Indexes for table `tblattendace`
--
ALTER TABLE `tblattendace`
  ADD PRIMARY KEY (`Id`), ADD KEY `Admission_No` (`Admission_No`);

--
-- Indexes for table `tblexam_types`
--
ALTER TABLE `tblexam_types`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblfee_payments_details`
--
ALTER TABLE `tblfee_payments_details`
  ADD PRIMARY KEY (`Receipt_No`), ADD KEY `Admission_No` (`Admission_No`);

--
-- Indexes for table `tblform_four_marks`
--
ALTER TABLE `tblform_four_marks`
  ADD PRIMARY KEY (`Entry_Id`), ADD KEY `Admission_No` (`Admission_No`);

--
-- Indexes for table `tblform_one_marks`
--
ALTER TABLE `tblform_one_marks`
  ADD PRIMARY KEY (`Entry_Id`);

--
-- Indexes for table `tblform_three_marks`
--
ALTER TABLE `tblform_three_marks`
  ADD PRIMARY KEY (`Entry_Id`), ADD KEY `Admission_No` (`Admission_No`);

--
-- Indexes for table `tblparent_commitment`
--
ALTER TABLE `tblparent_commitment`
  ADD PRIMARY KEY (`ID`), ADD KEY `Date_Approved` (`Date_Approved`), ADD KEY `Admission_No` (`Admission_No`);

--
-- Indexes for table `tblpayable_amount`
--
ALTER TABLE `tblpayable_amount`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `tblstudent_acc`
--
ALTER TABLE `tblstudent_acc`
  ADD PRIMARY KEY (`Admission_No`);

--
-- Indexes for table `tbl_expensetype`
--
ALTER TABLE `tbl_expensetype`
  ADD PRIMARY KEY (`ID`), ADD UNIQUE KEY `Expense_Type_4` (`Expense_Type`), ADD KEY `Expense_Type` (`Expense_Type`), ADD KEY `Expense_Type_2` (`Expense_Type`), ADD KEY `Expense_Type_3` (`Expense_Type`);

--
-- Indexes for table `tbl_expense_payment`
--
ALTER TABLE `tbl_expense_payment`
  ADD PRIMARY KEY (`Expense_ID`), ADD KEY `Expense_Type` (`Expense_Type`);

--
-- Indexes for table `teacher_role`
--
ALTER TABLE `teacher_role`
  ADD PRIMARY KEY (`S/No`), ADD KEY `Staff_Id` (`Staff_Id`), ADD KEY `Role_ID` (`Role_ID`);

--
-- Indexes for table `teacher_subject`
--
ALTER TABLE `teacher_subject`
  ADD PRIMARY KEY (`Teacher_Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add_class`
--
ALTER TABLE `add_class`
  MODIFY `Class_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `add_house`
--
ALTER TABLE `add_house`
  MODIFY `House_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `add_role`
--
ALTER TABLE `add_role`
  MODIFY `Role_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `add_student`
--
ALTER TABLE `add_student`
  MODIFY `Admission_No` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=120;
--
-- AUTO_INCREMENT for table `admin_details`
--
ALTER TABLE `admin_details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `players`
--
ALTER TABLE `players`
  MODIFY `pid` int(2) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tblattendace`
--
ALTER TABLE `tblattendace`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tblexam_types`
--
ALTER TABLE `tblexam_types`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tblform_four_marks`
--
ALTER TABLE `tblform_four_marks`
  MODIFY `Entry_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblform_one_marks`
--
ALTER TABLE `tblform_one_marks`
  MODIFY `Entry_Id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tblform_three_marks`
--
ALTER TABLE `tblform_three_marks`
  MODIFY `Entry_Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblparent_commitment`
--
ALTER TABLE `tblparent_commitment`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblpayable_amount`
--
ALTER TABLE `tblpayable_amount`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_expensetype`
--
ALTER TABLE `tbl_expensetype`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `tbl_expense_payment`
--
ALTER TABLE `tbl_expense_payment`
  MODIFY `Expense_ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `teacher_role`
--
ALTER TABLE `teacher_role`
  MODIFY `S/No` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `add_student`
--
ALTER TABLE `add_student`
ADD CONSTRAINT `add_student_ibfk_1` FOREIGN KEY (`Parent_ID`) REFERENCES `add_gurdian` (`Id_No`) ON UPDATE CASCADE;

--
-- Constraints for table `archived_students`
--
ALTER TABLE `archived_students`
ADD CONSTRAINT `archived_students_ibfk_1` FOREIGN KEY (`Parent_ID`) REFERENCES `archived_gurdians` (`Id_No`) ON UPDATE CASCADE;

--
-- Constraints for table `tbl_expense_payment`
--
ALTER TABLE `tbl_expense_payment`
ADD CONSTRAINT `tbl_expense_payment_ibfk_1` FOREIGN KEY (`Expense_Type`) REFERENCES `tbl_expensetype` (`Expense_Type`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `teacher_role`
--
ALTER TABLE `teacher_role`
ADD CONSTRAINT `teacher_role_ibfk_1` FOREIGN KEY (`Staff_Id`) REFERENCES `add_teacher` (`Staff_Id`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `teacher_role_ibfk_2` FOREIGN KEY (`Role_ID`) REFERENCES `add_role` (`Role_Id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
