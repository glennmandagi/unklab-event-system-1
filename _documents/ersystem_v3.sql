-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 13, 2019 at 07:09 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ersystem`
--

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `ev_id` int(11) NOT NULL,
  `ev_title` varchar(255) NOT NULL,
  `ev_desc` text NOT NULL,
  `ev_date_start` date NOT NULL,
  `ev_date_end` date NOT NULL,
  `ev_price` int(11) NOT NULL,
  `ev_location` varchar(255) NOT NULL,
  `ev_capacity` mediumint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`ev_id`, `ev_title`, `ev_desc`, `ev_date_start`, `ev_date_end`, `ev_price`, `ev_location`, `ev_capacity`) VALUES
(13, 'FIK DAY', 'sdkaodkoasdko', '2019-11-06', '2019-11-07', 65000, 'Manado', 300),
(14, 'Faculty Day', 'kdoakasokdasndamsdoas asdokaosd kaoskd oa', '2019-11-13', '2019-11-15', 25000, 'Airmadidi', 500);

-- --------------------------------------------------------

--
-- Table structure for table `registrations`
--

CREATE TABLE `registrations` (
  `reg_id` int(11) NOT NULL,
  `reg_code` varchar(255) NOT NULL,
  `reg_time` datetime NOT NULL,
  `reg_pay_status` tinyint(1) NOT NULL,
  `students_stu_id` int(11) UNSIGNED NOT NULL,
  `events_ev_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `stu_id` int(11) UNSIGNED NOT NULL,
  `stu_nim` char(12) DEFAULT NULL,
  `stu_reg_number` varchar(10) DEFAULT NULL,
  `stu_email` varchar(255) DEFAULT NULL,
  `stu_first_name` varchar(255) DEFAULT NULL,
  `stu_last_name` varchar(100) DEFAULT NULL,
  `stu_curriculum_code` varchar(15) DEFAULT NULL,
  `stu_gender` char(1) DEFAULT NULL,
  `stu_religion_id` varchar(7) DEFAULT NULL,
  `stu_residence_id` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`stu_id`, `stu_nim`, `stu_reg_number`, `stu_email`, `stu_first_name`, `stu_last_name`, `stu_curriculum_code`, `stu_gender`, `stu_religion_id`, `stu_residence_id`) VALUES
(1, '105011810014', 'S21810019', 'S21810019@student.unklab.ac.id', 'Jannice Felicia', 'Salindeho', 'SI 2018-2023', 'F', 'ADV', 'GUEST_HS_2'),
(2, '105021820002', 'S11820006', 'S11820006@student.unklab.ac.id', 'Eager Duatondok', 'Palangan', 'TI 2018-2022', 'M', 'TEMP', 'CRYSTAL'),
(3, '105021710043', 'S11710098', 'S11710098@student.unklab.ac.id', 'Rischa Gracela', 'Tandiseru', 'TI 2013-2018', 'F', 'KR', 'EDEL'),
(4, '105011910002', 'S21910002', 'S21910002@student.unklab.ac.id', 'Caroline', 'Lahengke', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(5, '105011910001', 'S21910001', 'S21910001@student.unklab.ac.id', 'Ferren Hillary', 'Kalalo', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(6, '105011910005', 'S21910007', 'S21910007@student.unklab.ac.id', 'Grace Wulan', 'Mamangkey', 'SI 2018-2023', 'F', 'KR', 'ANNEX'),
(7, '105011710017', 'S21710085', 'S21710085@student.unklab.ac.id', 'Peter Daniel Salomo', 'Wenas', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(8, '105021710012', 'S21710072', 'S21710072@student.unklab.ac.id', 'Harold Oktavian Josua ', 'Ulaen', 'TI 2013-2018', 'M', 'KR', 'GUEST_HS'),
(9, '105021710029', 'S21710231', 'S21710231@student.unklab.ac.id', 'Reygen Christian', 'Moningka', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(10, '105011718001', 'S21610224', 'S21610224@student.unklab.ac.id', 'Mercy Putri Bunga', 'Pesik', 'SI 2013-2018', 'F', 'ADV', 'EDEL'),
(11, '105011910003', 'S21910004', 'S21910004@student.unklab.ac.id', 'Vini Vanisa ', 'Tandiseru', 'SI 2018-2023', 'F', 'KR', 'EDEL'),
(12, '105011910006', 'S21910008', 'S21910008@student.unklab.ac.id', 'Brenda Yeyen', 'Abuno', 'SI 2018-2023', 'F', 'ADV', 'EDEL'),
(13, '105011910004', 'S21910005', 'S21910005@student.unklab.ac.id', 'Nathania Jessica Maya Ekklesia', 'Mangundap', 'SI 2018-2023', 'F', 'KR', 'EDEL'),
(14, '105021710016', 'S21710098', 'S21710098@student.unklab.ac.id', 'Hizkia Rivaldo Triputra', 'Rambitan', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(15, '105011910007', 'S21910009', 'S21910009@student.unklab.ac.id', 'Lianly Sally Likuayang', 'Mangangantung', 'SI 2018-2023', 'F', 'ADV', 'JASMINE_2'),
(16, '105021910001', 'S11910003', 'S11910003@student.unklab.ac.id', 'Mario Josafat', 'Makatuuk', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(17, '105021510012', 'S11510063', 'S11510063@student.unklab.ac.id', 'Frigia Faby', 'Pasla', 'TI 2013-2018', 'F', 'ADV', 'STADOS'),
(18, '105011819001', '11220032', '11220032@student.unklab.ac.id', 'Giovanni Ferdinand ', 'Rogi', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(19, '105021910004', 'S21910028', 'S21910028@student.unklab.ac.id', 'Jeremia Andreas', 'Waani', 'TI 2018-2022', 'M', 'KR', 'GUEST_HS'),
(20, '105021910003', 'S11910011', 'S11910011@student.unklab.ac.id', 'Nariva Charline ', 'Wagey', 'TI 2018-2022', 'F', 'KR', 'EDEL'),
(21, '105021610042', 'S21610439', 'S21610439@student.unklab.ac.id', 'Intan Permata', 'Salim', 'TI 2013-2018', 'F', 'KT', 'OUTSIDER_1'),
(22, '105021810070', 'S21810521', 'S21810521@student.unklab.ac.id', 'Gracia Meyva Waren', 'Palangan', 'TI 2018-2022', 'F', 'ADV', 'ANNEX'),
(23, '105011910009', 'S21910041', 'S21910041@student.unklab.ac.id', 'Gabriela Thania', 'Sela', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(24, '105011910011', 'S11910026', 'S11910026@student.unklab.ac.id', 'Christian Yoda ', 'Nangoy', 'SI 2018-2023', 'M', 'KR', 'GUEST_HS'),
(25, '105021610040', 'S21610377', 'S21610377@student.unklab.ac.id', 'Nikolas ', 'Mangamis', 'TI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(26, '105011810010', 's11810006', 's11810006@student.unklab.ac.id', 'Michelle Debora', 'Walangitan', 'SI 2018-2023', 'F', 'KR', 'ANNEX'),
(27, '105011810022', 'S11810031', 'S11810031@student.unklab.ac.id', 'Gusti Bagus R. Francolla', NULL, 'SI 2018-2023', 'M', 'ADV', 'GUEST_HS'),
(28, '105011810008', 'S11810005', 'S11810005@student.unklab.ac.id', 'Laureenanda Melinda Debora', 'Mea', 'SI 2018-2023', 'F', 'ADV', 'ANNEX'),
(29, '105011810029', 'S21810085', 'S21810085@student.unklab.ac.id', 'Regina Patricia', NULL, 'SI 2018-2023', 'F', 'KR', 'ANNEX'),
(30, '105011910010', 'S21910044', 'S21910044@student.unklab.ac.id', 'Efraim Ariel Riva ', 'Dahlan', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(31, '105021710002', 'S21710041', 'S21710041@student.unklab.ac.id', 'Cindy Dellarasati', 'Wungkana', 'TI 2013-2018', 'F', 'IS', 'OUTSIDER_1'),
(32, '105021630002', 'S21630007', 'S21630007@student.unklab.ac.id', 'Megalita Oktavianny Fliony', 'Aror', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(33, '105011710027', 'S21710258', 'S21710258@student.unklab.ac.id', 'Habell Dolosha ', 'Purba', 'SI 2013-2018', 'M', 'KR', 'CRYSTAL'),
(34, '105021710022', 'S21710158', 'S21710158@student.unklab.ac.id', 'Zabrina Leoni Victoria', 'Margono', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(35, '105011910021', 'S11910039', 'S11910039@student.unklab.ac.id', 'Delisa Klaresa ', 'Lasut', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(36, '105021910005', 'S21910051', 'S21910051@student.unklab.ac.id', 'Richard Ericsen', 'Sangari', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(37, '105011810033', 'S21810112', 'S21810112@student.unklab.ac.id', 'Yosia Reski Imanuel', 'Rumeser', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(38, '105011910013', 'S21910061', 'S21910061@student.unklab.ac.id', 'Leonardo Yosua', 'Sumanti', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(39, '105021710004', 'S11710006', 'S11710006@student.unklab.ac.id', 'Khrisna Ray Dewa', 'Semara', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(40, '105011710019', 'S21710086', 'S21710086@student.unklab.ac.id', 'Melissa Dawn', 'Tumewu', 'SI 2013-2018', 'F', 'ADV', 'EDEL'),
(41, '105011710037', 'S21710467', 'S21710467@student.unklab.ac.id', 'Novena Thelma Tessalonika ', ' Lumintang', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(42, '105011810012', 'S11810008', 'S11810008@student.unklab.ac.id', 'Axcel Andrey', 'Weku', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_NEW'),
(43, '105021710047', 'S11710101', 'S11710101@student.unklab.ac.id', 'Jeine Claudia', 'Lambani', 'TI 2013-2018', 'F', 'KR', 'EDEL'),
(44, '105021910009', 'S21910131', 'S21910131@student.unklab.ac.id', 'Jeri Leri', 'Kanter', 'TI 2018-2022', 'M', 'KR', 'GUEST_HS'),
(45, '105011810024', 'S21810042', 'S21810042@student.unklab.ac.id', 'Ryan Jose', 'Dickson', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(46, '105011810011', 'S11810007', 'S11810007@student.unklab.ac.id', 'I Putu Tiksna', 'Wiratama', 'SI 2018-2023', 'M', 'HD', 'CRYSTAL'),
(47, '105011910014', 'S21910065', 'S21910065@student.unklab.ac.id', 'Jovan Venly Jusuf', 'Runturambi', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(48, '105021710014', 'S21710093', 'S21710093@student.unklab.ac.id', 'Valentino Andi Deril ', 'Oroh', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(49, '105021810026', 'S11810103', 'S11810103@student.unklab.ac.id', 'Fritsal Watak', 'Tinangon', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(50, '105021810001', 'S21810001', 'S21810001@student.unklab.ac.id', 'Sabrina Ndezing Rejekina', 'Lingga', 'TI 2018-2022', 'F', 'ADV', 'GUEST_HS_2'),
(51, '105021610014', 'S21610180', 'S21610180@student.unklab.ac.id', 'Vinky Fransiscus ', 'Ong', 'TI 2013-2018', 'M', 'KT', 'OUTSIDER_1'),
(52, '105021810017', 'S11810049', 'S11810049@student.unklab.ac.id', 'Aldio Christo', 'Kaminang', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(53, '105011710039', 'S21710482', 'S21710482@student.unklab.ac.id', 'Mirielle Patricia', 'Huwae', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(54, '105011710004', 'S21710039', 'S21710039@student.unklab.ac.id', 'Gabriela', 'Maramis', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(55, '105011810017', 'S21810027', 'S21810027@student.unklab.ac.id', 'Timothy Samuel', NULL, 'SI 2018-2023', 'M', 'KR', 'GUEST_HS'),
(56, '105021810002', 'S21810003', 'S21810003@student.unklab.ac.id', 'Feldryansa', 'Somba', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(57, '105021810016', 'S21810081', 'S21810081@student.unklab.ac.id', 'Fernando Vincentius Sean', 'Piay', 'TI 2018-2022', 'M', 'KT', 'CRYSTAL_NEW'),
(58, '105021710027', 'S21710220', 'S21710220@student.unklab.ac.id', 'Yoga', 'Pontoh', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(59, '105021810044', 'S21810303', 'S21810303@student.unklab.ac.id', 'Christiady Somba ', 'Sirappa', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(60, '105011820002', 'S11820011', 'S11820011@student.unklab.ac.id', 'Jay', 'Assan', 'SI 2018-2023', 'M', 'TEMP', 'CRYSTAL_SPL'),
(61, '105021910007', 'S11910037', 'S11910037@student.unklab.ac.id', 'David Jonathan', 'Kawengian', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(62, '105021610013', 'S21610171', 'S21610171@student.unklab.ac.id', 'Juan William Daniel', 'Polii', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(63, '105021610020', 'S11610030', 'S11610030@student.unklab.ac.id', 'Farry Josia', 'Taroreh', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(64, '105011910015', 'S21910075', 'S21910075@student.unklab.ac.id', 'Rebecca', 'Dondokambey', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(65, '105021910017', 'S11910065', 'S11910065@student.unklab.ac.id', 'Marietta Ardelia Gavrila ', 'Unenor', 'TI 2018-2022', 'F', 'KR', 'GUEST_HS_2'),
(66, '105021910010', 'S11910049', 'S11910049@student.unklab.ac.id', 'Yanes Theodora ', 'Makawekes', 'TI 2018-2022', 'F', 'KR', 'EDEL'),
(67, '105011910008', 'S11910013', 'S11910013@student.unklab.ac.id', 'Roland Geraldi Tammu', 'Tangdialla', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(68, '105021610003', 'S21610048', 'S21610048@student.unklab.ac.id', 'Jeanne Maria Putriandani ', 'Ambana', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(69, '105011910016', 'S21910086', 'S21910086@student.unklab.ac.id', 'Jennyfer Elen Permata', 'Tuuk', 'SI 2018-2023', 'F', 'ADV', 'JASMINE_2'),
(70, '105011910022', 'S11910041', 'S11910041@student.unklab.ac.id', 'Joanne Suzane Charlotte Betsy Tuuk', 'Mangi', 'SI 2018-2023', 'F', 'ADV', 'JASMINE_2'),
(71, '105011910017', 'S21910087', 'S21910087@student.unklab.ac.id', 'Ferlien Praycilia', 'Ayorbaba', 'SI 2018-2023', 'F', 'ADV', 'JASMINE_2'),
(72, '105021910020', 'S11910073', 'S11910073@student.unklab.ac.id', 'Imelda', 'Ronga', 'TI 2018-2022', 'F', 'ADV', 'EDEL'),
(73, '105021910011', 'S11910051', 'S11910051@student.unklab.ac.id', 'Rivolandi Rivaldi ', 'Takalao', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(74, '105021830001', 'S21830003', 'S21830003@student.unklab.ac.id', 'Suvin Raj', 'Kollabathula', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(75, '105011910029', 'S11820034', 'S11820034@student.unklab.ac.id', 'Rizky Ramadhana', '-', 'SI 2018-2023', 'M', 'ADV', 'STADOS'),
(76, '105011910032', 'S21810563', 'S21810563@student.unklab.ac.id', 'Herdy', 'Pantow', 'SI 2018-2023', 'M', 'ADV', 'STADOS'),
(77, '105011910018', 's21910090', 's21910090@student.unklab.ac.id', 'Gieford Geraldy Justitio ', 'Ughude', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(78, '105021910006', 'S21910093', 'S21910093@student.unklab.ac.id', 'Wellfreld Jansca ', 'Bakay', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(79, '105011910019', 'S21910094', 'S21910094@student.unklab.ac.id', 'Josiah Diopp Thimothi', 'Jandeday', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(80, '105011810006', 'S11810002', 'S11810002@student.unklab.ac.id', 'Danica Godelva Khairunisa', 'Massie', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(81, '105011810004', 'S11810001', 'S11810001@student.unklab.ac.id', 'Erlina Felisia', 'Sumanto', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(82, '105021910013', 'S21910153', 'S21910153@student.unklab.ac.id', 'Christian Friendly ', 'Maabuat', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(83, '105011910023', 'S21910115', 'S21910115@student.unklab.ac.id', 'Amanda Putri Hillary Christy', 'Rumenser', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(84, '105011910024', 'S21910116', 'S21910116@student.unklab.ac.id', 'Virjin Fanesa', NULL, 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_2'),
(85, '105021810006', 'S11810013', 'S11810013@student.unklab.ac.id', 'Maria Andriani', 'Sambur', 'TI 2018-2022', 'F', 'KR', 'GUEST_HS_2'),
(86, '105021810023', 'S11810071', 'S11810071@student.unklab.ac.id', 'Gabriella Chriselda', 'Mamahit', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_1'),
(87, '105021810065', 'S21810499', 'S21810499@student.unklab.ac.id', 'Pierre Jericho', 'Effendy', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(88, '105021910008', 'S21910113', 'S21910113@student.unklab.ac.id', 'Alfan F. A.', 'Topit', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(89, '105011710016', 'S21710069', 'S21710069@student.unklab.ac.id', 'Michael Shawn', 'Walean', 'SI 2013-2018', 'M', 'ADV', 'CRYSTAL_NEW'),
(90, '105011910026', 'S21910135', 'S21910135@student.unklab.ac.id', 'Wilmore Carlos', 'Italilpessy', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(91, '105021910012', 'S21910149', 'S21910149@student.unklab.ac.id', 'Juan Willian', 'Suleh', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(92, '105011910025', 'S11910046', 'S11910046@student.unklab.ac.id', 'Maestro Pythagoras', NULL, 'SI 2013-2018', 'M', 'KR', 'GUEST_HS'),
(93, '105021710025', 'S21710167', 'S21710167@student.unklab.ac.id', 'Bright Christo', 'Rore', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(94, '105021820003', 'S11820008', 'S11820008@student.unklab.ac.id', 'Ferrell Bryant Hansel', 'Sanger', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(95, '105021710008', 'S21710075', 'S21710075@student.unklab.ac.id', 'Vicco Semuel', 'Manopo', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(96, '105021710019', 'S21710107', 'S21710107@student.unklab.ac.id', 'Rionaldo Giovanni Pieterson', 'Bagi', 'TI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(97, '105011910030', 'S11910055', 'S11910055@student.unklab.ac.id', 'Favian Joshua', 'Mulumbot', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_SPL'),
(98, '105011910052', 'S21910303', 'S21910303@student.unklab.ac.id', 'Teddy R. S. ', 'Maramis', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(99, '105011910036', 'S21910202', 'S21910202@student.unklab.ac.id', 'Raul Schivo', 'Mawu', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(100, '105011810046', 'S21810207', 'S21810207@student.unklab.ac.id', 'Mario Aswin Jofan', 'Arsjad', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(101, '105011910027', 'S21910147', 'S21910147@student.unklab.ac.id', 'Gretio Valantino Tengker', 'Rumuat', 'SI 2018-2023', 'M', 'KT', 'CRYSTAL_NEW'),
(102, '105011810009', 'S21810015', 'S21810015@student.unklab.ac.id', 'Anggreiny Anggelia', 'Rolangon', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_2'),
(103, '105021810003', 'S11810003', 'S11810003@student.unklab.ac.id', 'Prince Siachin', 'Pasombaran', 'TI 2018-2022', 'M', 'ADV', 'GUEST_HS'),
(104, '105011710036', 'S21710459', 'S21710459@student.unklab.ac.id', 'Giovani Luciano David', 'Roring', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(105, '105011710008', 'S21710050', 'S21710050@student.unklab.ac.id', 'Dianti', 'Padang', 'SI 2013-2018', 'F', 'KR', 'EDEL'),
(106, '105021910015', 'S11910054', 'S11910054@student.unklab.ac.id', 'Raycle Raynold Inzaghi', 'Suwu', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL_SPL'),
(107, '105011910039', 'S11910081', 'S11910081@student.unklab.ac.id', 'Anggreyni Yuliana', NULL, 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_1'),
(108, '105021910044', 'S11910102', 'S11910102@student.unklab.ac.id', 'Wahyu Agung', NULL, 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(109, '105011910051', 'S11910098', 'S11910098@student.unklab.ac.id', 'Abelard Jovi John', 'Pangalila', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(110, '105021910018', 'S21910192', 'S21910192@student.unklab.ac.id', 'Rickardo ', 'Rahawarin', 'TI 2018-2022', 'M', 'KT', 'CRYSTAL'),
(111, '105011910047', 'S21910288', 'S21910288@student.unklab.ac.id', 'Ester Gracela Jenifer ', 'Sangkoy', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(112, '105011610013', 'S21430035', 'S21430035@student.unklab.ac.id', 'Jad ', 'Heluku', 'SI 2013-2018', 'M', 'ADV', 'STADOS'),
(113, '105011910020', 'S21910096', 'S21910096@student.unklab.ac.id', 'Calvin ', 'Pinasang', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(114, '105021910019', 'S21910199', 'S21910199@student.unklab.ac.id', 'Mawar Sharon', 'Tumewu', 'TI 2018-2022', 'F', 'ADV', 'JASMINE_2'),
(115, '105011810072', 'S11810267', 'S11810267@student.unklab.ac.id', 'Flavio Vicenzo', 'Karamoy', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(116, '105011910012', 'S21910057', 'S21910057@student.unklab.ac.id', 'Viktori', 'Polii', 'SI 2018-2023', 'M', 'ADV', 'STADOS'),
(117, '105021910022', 'S21910217', 'S21910217@student.unklab.ac.id', 'Pingkan Elvira', 'Mundung', 'TI 2018-2022', 'F', 'KR', 'JASMINE_2'),
(118, '105021910043', 'S11910103', 'S11910103@student.unklab.ac.id', 'James Richard', 'Maringka', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(119, '105011910034', 'S11910068', 'S11910068@student.unklab.ac.id', 'Patrick Julio', 'Limuat', 'SI 2018-2023', 'M', 'KT', 'CRYSTAL_SPL'),
(120, '105021910040', 'S21910302', 'S21910302@student.unklab.ac.id', 'Devanla Trifena Yulia', 'Korompis', 'TI 2018-2022', 'F', 'KR', 'JASMINE_2'),
(121, '105021610026', 'S11610036', 'S11610036@student.unklab.ac.id', 'Cornelius', NULL, 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(122, '105021610004', 'S21610061', 'S21610061@student.unklab.ac.id', 'Sarah Entherene ', 'Siswandi', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(123, '105021910024', 'S21910226', 'S21910226@student.unklab.ac.id', 'Anastasya Alicia ', 'Sumayku', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_1'),
(124, '105021910039', 'S21910278', 'S21910278@student.unklab.ac.id', 'Elshadai Gracia Carolina', 'Rampengan', 'TI 2018-2022', 'F', 'KR', 'JASMINE_2'),
(125, '105011810039', 'S21810162', 'S21810162@student.unklab.ac.id', 'Kevin Aldo', 'Likuayang', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(126, '105011810003', 'S21810007', 'S21810007@student.unklab.ac.id', 'Oliver Baliem Wijaya', 'Moniung', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(127, '105021910026', 'S21910236', 'S21910236@student.unklab.ac.id', 'Victory Janny', 'Lapian', 'TI 2018-2022', 'M', 'ADV', 'GENSET'),
(128, '105021910025', 'S21910231', 'S21910231@student.unklab.ac.id', 'Sharon Debora', 'Agustina', 'TI 2018-2022', 'F', 'ADV', 'EDEL'),
(129, '105021910028', 's21910249', 's21910249@student.unklab.ac.id', 'Rainer Cristian', NULL, 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(130, '105021910036', 'S21910268', 'S21910268@student.unklab.ac.id', 'Andrew Joshua', 'Runtuwene', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(131, '105021910027', 'S21910263', 'S21910263@student.unklab.ac.id', 'Angelita Jeanette', NULL, 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(132, '105011910066', 'S11910122', 'S11910122@student.unklab.ac.id', 'George', 'Olaf', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL_SPL'),
(133, '105011910043', 'S21910241', 'S21910241@student.unklab.ac.id', 'Tesalonika Vicensia Vinka', 'Wangania', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(134, '105011910048', 'S21910290', 'S21910290@student.unklab.ac.id', 'Jerushalem Jehudha Jeshaya', 'Kowaas', 'SI 2018-2023', 'M', 'KR', 'GUEST_HS'),
(135, '105021910014', 'S21910150', 'S21910150@student.unklab.ac.id', 'Marcelino Erick ', 'Tawas', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(136, '105021910021', 's21910203', 's21910203@student.unklab.ac.id', 'Claire Trifena Priscilla ', 'Kaseger', 'TI 2018-2022', 'F', 'KR', 'GUEST_HS_2'),
(137, '105021910029', 'S21910250', 'S21910250@student.unklab.ac.id', 'Erick', NULL, 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(138, '105011810019', 'S11810021', 'S11810021@student.unklab.ac.id', 'Glainhard Andre Agassi', 'Damping', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(139, '105021910034', 's21910257', 's21910257@student.unklab.ac.id', 'Stevali Marcella ', 'Item', 'TI 2018-2022', 'F', 'ADV', 'OUTSIDER_1'),
(140, '105011910058', 'S21810544', 'S21810544@student.unklab.ac.id', 'Stevi Stevanus Gabriel', NULL, 'SI 2018-2023', 'M', 'ADV', 'GENSET'),
(141, '105011910055', 's21910315', 's21910315@student.unklab.ac.id', 'Exel Timothy ', 'Sumampouw', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(142, '105011910054', 'S21910313', 'S21910313@student.unklab.ac.id', 'Rivaldo', 'Terok', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(143, '105011910033', 'S21910181', 'S21910181@student.unklab.ac.id', 'Natanael', 'Jansen', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(144, '105021810015', 'S11810048', 'S11810048@student.unklab.ac.id', 'Claudio Sebastian', 'Mambu', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(145, '105021810010', 'S21810053', 'S21810053@student.unklab.ac.id', 'Mark Jibril', 'Mononutu', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(146, '105021810007', 'S11810014', 'S11810014@student.unklab.ac.id', 'Ferdinand Bierhoff Mark', 'Rattu', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(147, '105021810041', 'S11810156', 'S11810156@student.unklab.ac.id', 'Gillian Gibran Graziedio', 'Saroinsong', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(148, '105011910035', 'S21910191', 'S21910191@student.unklab.ac.id', 'Kivly Danovan', 'Kalengkongan', 'SI 2018-2023', 'M', 'KT', 'OUTSIDER_1'),
(149, '105011910050', 'S21910299', 'S21910299@student.unklab.ac.id', 'Bryan Vallentino', 'Izaac', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(150, '105011910038', 'S21910162', 'S21910162@student.unklab.ac.id', 'Perkins Migellio', 'Tangka', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(151, '105011910057', 'S21910323', 'S21910323@student.unklab.ac.id', 'Michell Gabriell ', 'Tene', 'SI 2018-2023', 'F', 'KR', 'JASMINE_2'),
(152, '105011910056', 'S21910320', 'S21910320@student.unklab.ac.id', 'Mikha Patricia', 'Pandelaki', 'SI 2018-2023', 'F', 'KR', 'EDEL'),
(153, '105011910037', 'S21910222', 'S21910222@student.unklab.ac.id', 'Septiano Rivo Chandra', 'Tumulo', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(154, '105021710001', 'S21710035', 'S21710035@student.unklab.ac.id', 'Sebastian Kenny Dasril', 'Ganna', 'TI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(155, '105021910023', 'S21910223', 'S21910223@student.unklab.ac.id', 'Rifat', 'Harman', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(156, '105021910052', 'S21910387', 'S21910387@student.unklab.ac.id', 'Geovanny Hezkie ', 'Bolang', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(157, '105021910033', 'S21910282', 'S21910282@student.unklab.ac.id', 'Christiano Alfando', 'Moring', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(158, '105011910045', 'S21910277', 'S21910277@student.unklab.ac.id', 'Marchel Refrent ', 'Thomas', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(159, '105021710011', 'S11710016', 'S11710016@student.unklab.ac.id', 'Victor Arthur Ambrosius', 'Sumual', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(160, '105011810015', 'S21810021', 'S21810021@student.unklab.ac.id', 'Jody', 'Joseph', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(161, '105021710053', 'S21710465', 'S21710465@student.unklab.ac.id', 'Mc.Cliff Jonathan Douglas', 'Mandagi', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(162, '105021710050', 'S21710455', 'S21710455@student.unklab.ac.id', 'Charley', 'Rantung', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(163, '105021910030', 'S21910254', 'S21910254@student.unklab.ac.id', 'Chundi Edward ', 'Runtuwene', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(164, '105011910079', 'S21910427', 'S21910427@student.unklab.ac.id', 'Bill Elan Samuel ', 'Manueke', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(165, '105021910038', 'S21910295', 'S21910295@student.unklab.ac.id', 'Rafael Enos', 'Tusang', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL_SPL'),
(166, '105011810042', 'S118101106', 'S118101106@student.unklab.ac.id', 'Reinhard Jackson', 'Tumbal', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(167, '105021910053', 'S21910401', 'S21910401@student.unklab.ac.id', 'Christian Everhard', 'Katuuk', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(168, '105021910057', 'S11910148', 'S11910148@student.unklab.ac.id', 'Putra Anugrah Alther', 'Podomi', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL_SPL'),
(169, '105011910053', 'S21910305', 'S21910305@student.unklab.ac.id', 'Rolando Hance', 'Suak', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(170, '105011910061', 'S21910354', 'S21910354@student.unklab.ac.id', 'Gideon Rizky', 'Pakasi', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(171, '105011910062', 'S21910355', 'S21910355@student.unklab.ac.id', 'Anastacia Syallomita Sastaviana', 'Kuron', 'SI 2018-2023', 'F', 'KR', 'EDEL'),
(172, '105011810005', 'S21810008', 'S21810008@student.unklab.ac.id', 'Fillippo Reiyan', 'Hosang', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_SPL'),
(173, '105011910075', 'S21910421', 'S21910421@student.unklab.ac.id', 'Arwin Eych Toloh ', 'Pangaila', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(174, '105021910050', 'S21910380', 'S21910380@student.unklab.ac.id', 'Miracle Alfa', 'Kountur', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(175, '105021710005', 'S21710057', 'S21710057@student.unklab.ac.id', 'Aldian Jouly', 'Wongkar', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(176, '105021910046', 'S21910334', 'S21910334@student.unklab.ac.id', 'Jopie Vincent Corinthians', 'Gaghana', 'TI 2018-2022', 'M', 'KR', 'GUEST_HS'),
(177, '105021610048', 'S21610493', 'S21610493@student.unklab.ac.id', 'Engglin Angela Theresia', 'Humbas', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(178, '105011910059', 'S11910107', 'S11910107@student.unklab.ac.id', 'Jevando Josep', 'Mokorimban', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(179, '105021610006', 'S21610065', 'S21610065@student.unklab.ac.id', 'Nehemia Mikhael', 'Musak', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(180, '105011910065', 'S21910370', 'S21910370@student.unklab.ac.id', 'Enrico Carlos Semuel', 'Ratuwongo', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(181, '105011910063', 'S21910360', 'S21910360@student.unklab.ac.id', 'Gilliams Herman Axl', 'Wuisan', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(182, '105021910042', 'S21910316', 'S21910316@student.unklab.ac.id', 'Salomo Aray', 'Mandagi', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(183, '105021610019', 'S21610161', 'S21610161@student.unklab.ac.id', 'Hari Teovani ', 'Abram', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(184, '105021910070', 'S11910175', 'S11910175@student.unklab.ac.id', 'Carlodino Joshua Setiay', NULL, 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(185, '105021710020', 'S21710137', 'S21710137@student.unklab.ac.id', 'Fini Keni Celsia', NULL, 'TI 2013-2018', 'F', 'KT', 'OUTSIDER_1'),
(186, '105011910084', 'S11810307', 'S11810307@student.unklab.ac.id', 'Rusdi Rianto B.', 'Nabut', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(187, '105021710058', 'S21710489', 'S21710489@student.unklab.ac.id', 'Brigita Syaloom Efke', 'Kawengian', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(188, '105021710024', 'S21710163', 'S21710163@student.unklab.ac.id', 'Nadila Triyanita', 'Katuuk', 'TI 2013-2018', 'F', 'IS', 'OUTSIDER_1'),
(189, '105011810021', 'S11810023', 'S11810023@student.unklab.ac.id', 'Andre', 'Gunawan', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(190, '105011810001', 'S21810004', 'S21810004@student.unklab.ac.id', 'Cheintya Feronique', 'Manuata', 'SI 2018-2023', 'F', 'KR', 'ANNEX'),
(191, '105021710039', 'S21710377', 'S21710377@student.unklab.ac.id', 'Alethea Irene', 'Pakasi', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(192, '105021610001', 'S21610005', 'S21610005@student.unklab.ac.id', 'Jonatan Leopold', NULL, 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(193, '105011810030', 'S21810088', 'S21810088@student.unklab.ac.id', 'Edson Robert', 'Soumay', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(194, '105021810042', 'S21810297', 'S21810297@student.unklab.ac.id', 'Antares Donato Johanes Putra', '-', 'TI 2018-2022', 'M', 'ADV', 'STADOS'),
(195, '105011710031', 'S21710297', 'S21710297@student.unklab.ac.id', 'Mcjames Rivaldo', 'Mamengko', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(196, '105021710042', 'S21710348', 'S21710348@student.unklab.ac.id', 'Gregario Gabriell', 'Makarau', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(197, '105021610046', 'S21610477', 'S21610477@student.unklab.ac.id', 'Jesica Janet Miriam ', 'Mussu', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(198, '105011810007', 'S11810004', 'S11810004@student.unklab.ac.id', 'Diaprilia Suci Berliana Amadea', 'Sondakh', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_2'),
(199, '105011510014', 'S21330088', 'S21330088@student.unklab.ac.id', 'Friedrich Kevin ', 'Siako', 'SI 2013-2018', 'M', 'ADV', 'STADOS'),
(200, '105021710041', 'S21710346', 'S21710346@student.unklab.ac.id', 'Falenrio Yehezkiel', 'Kalumata', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(201, '105011710007', 'S21710049', 'S21710049@student.unklab.ac.id', 'Giftliandi Servitas Ekkelsia', 'Jhony', 'SI 2013-2018', 'M', 'KR', 'CRYSTAL'),
(202, '105021810025', 'S21710599', 'S21710599@student.unklab.ac.id', 'Titania ', 'Tendean', 'TI 2018-2022', 'F', 'ADV', 'OUTSIDER_1'),
(203, '105021810063', 'S21810487', 'S21810487@student.unklab.ac.id', 'Giver Gabriel Alva ', 'Panambunan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(204, '105011910074', 'S21910403', 'S21910403@student.unklab.ac.id', 'Rangga Aldo', 'Korompis', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(205, '105011610009', 'S21610035', 'S21610035@student.unklab.ac.id', 'Rodney Giovanni', 'Maringka', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(206, '105011910049', 'S21910294', 'S21910294@student.unklab.ac.id', 'Janice Monica', 'Pangau', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(207, '105011910046', 'S21910286', 'S21910286@student.unklab.ac.id', 'Christabella', 'Kainama', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(208, '105021910037', 'S21910296', 'S21910296@student.unklab.ac.id', 'Cristafael Zefanyalouise ', 'Kandou', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(209, '105021910041', 'S21910304', 'S21910304@student.unklab.ac.id', 'Michael Daniel ', 'Jefferson', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(210, '105011810057', 'S21810416', 'S21810416@student.unklab.ac.id', 'Joshua Cehva Marlev', 'Sandag', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(211, '105011910088', 'S11910180', 'S11910180@student.unklab.ac.id', 'Bravi', 'Ambat', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(212, '105021910054', 'S21910402', 'S21910402@student.unklab.ac.id', 'Abdiel Pieroh Rohul ', 'Sayow', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(213, '105011310002', '11310003', '11310003@student.unklab.ac.id', 'Lorenzo Yason', 'Hododjojo', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(214, '105011910087', 'S11910176', 'S11910176@student.unklab.ac.id', 'Susan Regina ', 'Joseph', 'SI 2018-2023', 'F', 'KR', 'EDEL'),
(215, '105011910089', 'S11910182', 'S11910182@student.unklab.ac.id', 'Jearlly Aprilia Barliana Putra', NULL, 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_NEW'),
(216, '105011710002', 'S21710036', 'S21710036@student.unklab.ac.id', 'Zusana Anastasi Monalisa', 'Korompis', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_1'),
(217, '105021910016', 'S11910062', 'S11910062@student.unklab.ac.id', 'Reysa Jeremia', 'Janis', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(218, '105011910082', 'S11910146', 'S11910146@student.unklab.ac.id', 'Stephen Anthony Timothy', 'Lobbu', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(219, '105011910083', 'S21910435', 'S21910435@student.unklab.ac.id', 'Miranda Marchelia Maria', NULL, 'SI 2018-2023', 'F', 'KT', 'OUTSIDER_1'),
(220, '105021910072', 'S11910187', 'S11910187@student.unklab.ac.id', 'Jeklin Tresia', 'Takasaping', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_1'),
(221, '105011910031', 'S21910154', 'S21910154@student.unklab.ac.id', 'Reyhan Vincent Sutrisno ', 'Sarwan', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(222, '105021910047', 'S21910363', 'S21910363@student.unklab.ac.id', 'Gilbert Milano', 'Tangkuman', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(223, '105011910069', 'S21910381', 'S21910381@student.unklab.ac.id', 'Ester Rotua', 'Tampubolon', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(224, '105011810038', 'S21810158', 'S21810158@student.unklab.ac.id', 'Rivaldo Claudio', 'Kumendong', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(225, '105011910073', 'S21910399', 'S21910399@student.unklab.ac.id', 'Ribka Nathasya', 'Harbas', 'SI 2018-2023', 'F', 'KR', 'JASMINE_2'),
(226, '105011910090', 'S21910491', 'S21910491@student.unklab.ac.id', 'Brandon Matthew Antonio', 'Borang', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_NEW'),
(227, '105011810036', 'S21810128', 'S21810128@student.unklab.ac.id', 'Edgard Garry ', 'Supit', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(228, '105021910035', 'S21910284', 'S21910284@student.unklab.ac.id', 'Radocen Chrisnov', 'Pala\'langan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(229, '105021910060', 'S21910440', 'S21910440@student.unklab.ac.id', 'Fransisco Gamaliel Mazamur Daud', 'Sompotan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(230, '105011810002', 'S21810006', 'S21810006@student.unklab.ac.id', 'Valentine', 'Lumingkewas', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_2'),
(231, '105011910042', 'S21910247', 'S21910247@student.unklab.ac.id', 'Jonathan ', 'Fernando', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(232, '105021610029', 'S21610284', 'S21610284@student.unklab.ac.id', 'Jeison Gery', 'Melaira', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(233, '105021510028', 'S21510130', 'S21510130@student.unklab.ac.id', 'Fathur Syahputra', 'Daud', 'TI 2013-2018', 'M', 'IS', 'OUTSIDER_1'),
(234, '105021710065', 'S21710538', 'S21710538@student.unklab.ac.id', 'Britney Rebecca Bredged', 'Pakasi', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(235, '105011910085', 'S11910163', 'S11910163@student.unklab.ac.id', 'Jordan Charter', 'Momongan', 'SI 2013-2018', 'M', 'KR', 'CRYSTAL'),
(236, '105021710003', 'S11710005', 'S11710005@student.unklab.ac.id', 'Gabrella Priska', 'Assa', 'TI 2013-2018', 'F', 'KR', 'GUEST_HS_2'),
(237, '105011910076', 'S21910422', 'S21910422@student.unklab.ac.id', 'Georgio Revydo', 'Lengkong', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(238, '105021910081', 'S21910505', 'S21910505@student.unklab.ac.id', 'Aldi Huan ', 'Kountul', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(239, '105011827001', 'S11820001', 'S11820001@student.unklab.ac.id', 'Ananta Ferdinand', 'Lolo', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(240, '105011910093', 'S21730016', 'S21730016@student.unklab.ac.id', 'Jonathan Kevin', 'Kongen', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(241, '105021910059', 'S21910438', 'S21910438@student.unklab.ac.id', 'Michael Victorio', 'Bongso', 'TI 2018-2022', 'M', '0', 'OUTSIDER_1'),
(242, '105011810059', 'S11810214', 'S11810214@student.unklab.ac.id', 'Debora Eklecia Prisca', 'Lumempouw', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(243, '105021910062', 'S21910441', 'S21910441@student.unklab.ac.id', 'Michael Gerald Ignasius', 'Tumewu', 'TI 2018-2022', 'M', 'KT', 'OUTSIDER_1'),
(244, '105011910070', 'S21910384', 'S21910384@student.unklab.ac.id', 'Keyzia Eunike Sophia', 'Kumontoy', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(245, '105021910061', 'S11910155', 'S11910155@student.unklab.ac.id', 'Gerald Passofer', 'Wuysang', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(246, '105021910075', 'S21910498', 'S21910498@student.unklab.ac.id', 'Venisa Alsye Octriane', 'Tewu', 'TI 2018-2022', 'F', 'KR', 'GUEST_HS_2'),
(247, '105011910071', 'S21910388', 'S21910388@student.unklab.ac.id', 'Arnaldo Natanael Vicly ', 'Kamagi', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(248, '105011410012', 'S21410091', 'S21410091@student.unklab.ac.id', 'Cristian Celcius', 'Rorong', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(249, '105011910072', 'S21910396', 'S21910396@student.unklab.ac.id', 'Hose Imanuel ', 'Mamahit', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(250, '105011910080', 'S11910140', 'S11910140@student.unklab.ac.id', 'Julio Joseph Victor', 'Masengi', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(251, '105021810028', 'S11810125', 'S11810125@student.unklab.ac.id', 'Yoel Mengko', 'Roring', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(252, '105011910097', 'S11910207', 'S11910207@student.unklab.ac.id', 'Christian Ferdinand ', 'Kumendong', 'SI 2018-2023', 'M', 'KR', 'GUEST_HS'),
(253, '105011810028', 'S21810078', 'S21810078@student.unklab.ac.id', 'George Natalino', 'Patimasang', 'SI 2018-2023', 'M', 'KT', 'CRYSTAL'),
(254, '105021910083', 'S11910240', 'S11910240@student.unklab.ac.id', 'Damailia Selvia', 'Sanggel', 'TI 2018-2022', 'F', 'KR', 'JASMINE_2'),
(255, '105011810043', 'S21810184', 'S21810184@student.unklab.ac.id', 'Vindy Sheila Anjali', 'Muasa', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_2'),
(256, '105021710059', 'S11710126', 'S11710126@student.unklab.ac.id', 'Nadia Sheilla', 'Tamasoleng', 'TI 2013-2018', 'F', 'ADV', 'EDEL'),
(257, '105011710009', 'S21710061', 'S21710061@student.unklab.ac.id', 'Michiro Chinsi ', 'Gosal', 'SI 2013-2018', 'F', 'ADV', 'GUEST_HS_2'),
(258, '105011710025', 'S21710248', 'S21710248@student.unklab.ac.id', 'Sanora Indriani BR ', 'Sitepu', 'SI 2013-2018', 'F', 'ADV', 'EDEL'),
(259, '105011910044', 'S21910261', 'S21910261@student.unklab.ac.id', 'Clement Piere Toar ', 'Mopoliu', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(260, '105021910086', 'S21910536', 'S21910536@student.unklab.ac.id', 'Diego Armando Amstrong', 'Tulandi', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(261, '105011810045', 'S21810201', 'S21810201@student.unklab.ac.id', 'Chelsea Angelique', 'Wowor', 'SI 2018-2023', 'F', 'KT', 'EDEL'),
(262, '105011610004', 'S21610016', 'S21610016@student.unklab.ac.id', 'Mitchella M.', 'Polimpung', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(263, '105021810056', 'S11810232', 'S11810232@student.unklab.ac.id', 'Grace Feibe', 'Pikirang', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_1'),
(264, '105021810050', 'S11810192', 'S11810192@student.unklab.ac.id', 'Junior B. J.', 'Luntungan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(265, '105011810053', 'S21810331', 'S21810331@student.unklab.ac.id', 'Fanuel Ebenhaezer ', 'Wowor', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(266, '105011810032', 'S21810096', 'S21810096@student.unklab.ac.id', 'Kevin Arther Daniel ', 'Rompas', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(267, '105011910078', 'S21910424', 'S21910424@student.unklab.ac.id', 'Juan Peter Timothy', 'Yuune', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(268, '105021610009', 'S21610143', 'S21610143@student.unklab.ac.id', 'Garry Ronaldo Israel', 'Mongi', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(269, '105021610005', 'S21610084', 'S21610084@student.unklab.ac.id', 'Renaldy Louis', 'Luntungan', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(270, '105021910066', 'S21910455', 'S21910455@student.unklab.ac.id', 'Anderson Valentino', 'Sumaga', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(271, '105011810018', 'S21810030', 'S21810030@student.unklab.ac.id', 'Emelson ', 'Yenjau', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(272, '105021910074', 'S11910183', 'S11910183@student.unklab.ac.id', 'Rivando Morten', 'Pondaag', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(273, '105021910067', 'S11910162', 'S11910162@student.unklab.ac.id', 'Vaygiverli Gabrieli ', 'Mamarimbing', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(274, '105021610012', 'S21610170', 'S21610170@student.unklab.ac.id', 'Ryfen Rainheartcrihst', 'Rarumangkay', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(275, '105011810048', 'S11810124', 'S11810124@student.unklab.ac.id', 'Ebenhaezar Ekoputra', 'Soegiarto', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(276, '105011910081', 'S21910431', 'S21910431@student.unklab.ac.id', 'Jose Jeremy', 'Pangalila', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(277, '105011910077', 'S21910423', 'S21910423@student.unklab.ac.id', 'Sarah', 'Ganda', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_1'),
(278, '105011610031', 'S21610421', 'S21610421@student.unklab.ac.id', 'Valentshea Megaputri ', 'Doringin', 'SI 2013-2018', 'F', 'ADV', 'EDEL'),
(279, '105021610010', 'S21610145', 'S21610145@student.unklab.ac.id', 'Veldiman', 'Taju', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(280, '105011910040', 'S21810574', 'S21810574@student.unklab.ac.id', 'Rocky Darius', 'Boling', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(281, '105021910082', 'S21910511', 'S21910511@student.unklab.ac.id', 'Christmiracle Marvel Voorjuliano Kevin', 'Sinyal', 'TI 2018-2022', 'M', 'KR', 'GUEST_HS'),
(282, '105021910031', 'S21910165', 'S21910165@student.unklab.ac.id', 'George Washington ', 'Roring', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(283, '105021910088', 'S11910257', 'S11910257@student.unklab.ac.id', 'Enrique Giovanny Imanuel ', 'Sheriman', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(284, '105021718003', 'S21410234', 'S21410234@student.unklab.ac.id', 'Folken Marcello', 'Manampiring', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(285, '105021910079', 'S11910217', 'S11910217@student.unklab.ac.id', 'Christian Juan Frederik', 'Besouw', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(286, '105011910098', 'S11910215', 'S11910215@student.unklab.ac.id', 'Wensy Novan', 'Sompa', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(287, '105021910073', 'S21910479', 'S21910479@student.unklab.ac.id', 'Timothy Farlan Fredrik', 'Mombilia', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(288, '105011810040', 'S21810164', 'S21810164@student.unklab.ac.id', 'Christofel Grant Matthew ', 'Halim', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(289, '105021910049', 'S21910374', 'S21910374@student.unklab.ac.id', 'Christian Hendrik', 'Pratasis', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(290, '105011810074', 'S21810504', 'S21810504@student.unklab.ac.id', 'Jenifer Putri ', 'Sambul', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_2'),
(291, '105011910099', 'S11310229', 'S11310229@student.unklab.ac.id', 'Regino Julio Semuelo', 'Kaloh', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(292, '105011910104', 'S21910513', 'S21910513@student.unklab.ac.id', 'Hendry Daniel Oliver', 'Tangkuman', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(293, '105011910091', 'S21910480', 'S21910480@student.unklab.ac.id', 'Imanuel Otniel', 'Mantow', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(294, '105011910100', 'S21910502', 'S21910502@student.unklab.ac.id', 'Maria', 'Sarfunin', 'SI 2018-2023', 'F', 'KT', 'JASMINE_2'),
(295, '105011910095', 'S21910166', 'S21910166@student.unklab.ac.id', 'Gerel Kevin Lasut', 'Lahea', 'SI 2018-2023', 'M', 'ADV', 'GUEST_HS'),
(296, '105021910085', 'S21910535', 'S21910535@student.unklab.ac.id', 'Audy Willy Broklin', 'Walandow', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(297, '105021510041', 'S11510211', 'S11510211@student.unklab.ac.id', 'Francisco Agung', 'Therok', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(298, '105021710023', 'S21710168', 'S21710168@student.unklab.ac.id', 'Jeremiah Junior Marino ', 'Maramis', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(299, '105021910089', 'S21910538', 'S21910538@student.unklab.ac.id', 'Andrey', 'Desayli', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL_NEW'),
(300, '105021910078', 'S21910495', 'S21910495@student.unklab.ac.id', 'Jordan Leonardo', 'Samuri', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(301, '105021910080', 'S11910225', 'S11910225@student.unklab.ac.id', 'Stevan', NULL, 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(302, '105011910064', 'S21910367', 'S21910367@student.unklab.ac.id', 'Frangky Fernando ', 'Wongkar', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(303, '105011610021', 'S21610212', 'S21610212@student.unklab.ac.id', 'Gideon Fernando', 'Tengker', 'SI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(304, '105021610021', 'S21610214', 'S21610214@student.unklab.ac.id', 'Geraldo Belenzky', 'Muaja', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(305, '105021810058', 'S21810434', 'S21810434@student.unklab.ac.id', 'Clifford D. R.', 'Mantow', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(306, '105021520001', 'S11520006', 'S11520006@student.unklab.ac.id', 'Septian Feldy Leonard', 'Mottoh', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(307, '105021610039', 'S21610357', 'S21610357@student.unklab.ac.id', 'Firman Marthin Yohanes ', 'Suawa', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(308, '105011910103', 'S11910237', 'S11910237@student.unklab.ac.id', 'Gianrivo Christiano Ravalino', 'Sarempa', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(309, '105021510038', 'S11510202', 'S11510202@student.unklab.ac.id', 'Fidy Griffin Selvandy ', 'Gara', 'TI 2013-2018', 'M', 'ADV', 'STADOS'),
(310, '105011810027', 'S11810042', 'S11810042@student.unklab.ac.id', 'Kevin Alexandro Rendai', 'Gosal', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL_NEW'),
(311, '105021910045', 'S21910326', 'S21910326@student.unklab.ac.id', 'Rivaldo', 'Bogar', 'TI 2018-2022', 'M', 'IS', 'OUTSIDER_1'),
(312, '105021710064', 'S21710537', 'S21710537@student.unklab.ac.id', 'Romil ', 'Polii', 'TI 2013-2018', 'M', 'ADV', 'STADOS'),
(313, '105021810024', 'S21810156', 'S21810156@student.unklab.ac.id', 'Marcel Sydney Randy', 'Mumek', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(314, '105021810068', 'S21810511', 'S21810511@student.unklab.ac.id', 'Oliver Oclan', 'Rumagit', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(315, '105011810068', 'S21810474', 'S21810474@student.unklab.ac.id', 'Eirene Kurnia Verofain ', 'Wowor', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(316, '105011520001', 'S11520003', 'S11520003@student.unklab.ac.id', 'Hallim', 'Abdullah', 'SI 2013-2018', 'M', 'IS', 'OUTSIDER_1'),
(317, '105011610025', 'S21610321', 'S21610321@student.unklab.ac.id', 'Hizkia Denny', 'Lumempow', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(318, '105011910068', 'S21910379', 'S21910379@student.unklab.ac.id', 'Charlie Christian', 'Hamdani', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(319, '105011910094', 'S11830003', 'S11830003@student.unklab.ac.id', 'Katrin Frisilia', 'Kembuan', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_2'),
(320, '105011610001', 'S21610009', 'S21610009@student.unklab.ac.id', 'Army Kidung Nirwana', 'Katilik', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(321, '105011910092', 'S11820024', 'S11820024@student.unklab.ac.id', 'Kevin Claudio', 'Kagow', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(322, '105021710054', 'S21710452', 'S21710452@student.unklab.ac.id', 'Leonard Petter', 'Polandos', 'TI 2013-2018', 'M', 'KT', 'OUTSIDER_1'),
(323, '105011910102', 'S21910518', 'S21910518@student.unklab.ac.id', 'Steve David Tjandra', 'Mandias', 'SI 2018-2023', 'M', 'ADV', 'GUEST_HS'),
(324, '105011810025', 'S21810047', 'S21810047@student.unklab.ac.id', 'Glafert S. P', 'Kapahang', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(325, '105011610023', 'S21610242', 'S21610242@student.unklab.ac.id', 'Eugene Edwell Henrialen', 'Nangoy', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(326, '105021910090', 'S11910269', 'S11910269@student.unklab.ac.id', 'William Timothy', 'Tuda', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(327, '105011610002', 'S21610010', 'S21610010@student.unklab.ac.id', 'Aldo Sabathos ', 'Mananta', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(328, '105021810061', 'S21810472', 'S21810472@student.unklab.ac.id', 'Gabriel Janes', 'Posumah', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(329, '105021818001', 'S21710323', 'S21710323@student.unklab.ac.id', 'Chester', 'Wicipto', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(330, '105021610037', 'S21610366', 'S21610366@student.unklab.ac.id', 'Joshua Julian ', 'Manurip', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(331, '105021810035', 'S21810240', 'S21810240@student.unklab.ac.id', 'Yeremia ', 'Israel', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(332, '105021810053', 'S11810219', 'S11810219@student.unklab.ac.id', 'Naftali Christian', 'Maleke', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(333, '105011810062', 'S218110444', 'S218110444@student.unklab.ac.id', 'Gabriell Rihart ', 'Mandoya', 'SI 2018-2023', 'M', 'ADV', 'GUEST_HS'),
(334, '105011610010', 'S21610062', 'S21610062@student.unklab.ac.id', 'Blessilia ', 'Wurangian', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(335, '105011610027', 'S21610291', 'S21610291@student.unklab.ac.id', 'Revol Agriando', 'Tangka', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(336, '105021810046', 'S21810347', 'S21810347@student.unklab.ac.id', 'Tarisha Rehuel Jenena', 'Hamzah', 'TI 2018-2022', 'F', 'KR', 'EDEL'),
(337, '105011910096', 'S21810534', 'S21810534@student.unklab.ac.id', 'Fitriani', 'Kanal', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_2'),
(338, '105021610036', 'S21610350', 'S21610350@student.unklab.ac.id', 'Jonathan Juan ', 'Manurip', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(339, '105021630001', 'S11630001', 'S11630001@student.unklab.ac.id', 'Reinaldo Bayu Basundara', 'Usadani', 'TI 2013-2018', 'M', '0', 'OUTSIDER_1'),
(340, '105011710005', 'S21710051', 'S21710051@student.unklab.ac.id', 'Ghabby Theresa Claudia ', 'Hambali', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(341, '105011610005', 'S21610017', 'S21610017@student.unklab.ac.id', 'Bela Novianty', 'Janis', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(342, '105021510032', 'S21510151', 'S21510151@student.unklab.ac.id', 'Kesia', 'Wendry', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(343, '105011510010', 'S11510032', 'S11510032@student.unklab.ac.id', 'Tania Jadelyn Carrol', 'Rumawouw', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_1'),
(344, '105011638001', 'S21530011', 'S21530011@student.unklab.ac.id', 'Aurelle Cazia', 'Halim', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(345, '105021410030', 'S21410216', 'S21410216@student.unklab.ac.id', 'Jacques Josua', 'Karundeng', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(346, '105011710030', 'S21710292', 'S21710292@student.unklab.ac.id', 'Yohanes Septiawan', NULL, 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(347, '105021610053', 'S21610540', 'S21610540@student.unklab.ac.id', 'Frendio', 'Sendouw', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(348, '105011710035', 'S21710443', 'S21710443@student.unklab.ac.id', 'Brenda Claudia ', 'Ambat', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(349, '105011710034', 'S21710442', 'S21710442@student.unklab.ac.id', 'Marchelino Joseph', 'Bojoh', 'SI 2013-2018', 'M', 'KT', 'OUTSIDER_1'),
(350, '105011610014', 'S11610024', 'S11610024@student.unklab.ac.id', 'Riven Darien ', 'Lumangkun', 'SI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(351, '105011610015', 'S21610194', 'S21610194@student.unklab.ac.id', 'Rivaldo Hiskia', 'Likumarico', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(352, '105021810045', 'S21810324', 'S21810324@student.unklab.ac.id', 'Jonathan Julio', 'Kambey', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(353, '105011810016', 'S11810012', 'S11810012@student.unklab.ac.id', 'Elen', 'Gumabo', 'SI 2018-2023', 'F', 'ADV', 'ASPANG'),
(354, '105021710049', 'S21530023', 'S21530023@student.unklab.ac.id', 'Joshua Ronaldo', 'Sumolang', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(355, '105011710024', 'S21710161', 'S21710161@student.unklab.ac.id', 'Tianly Wicklif', 'Rembet', 'SI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(356, '105021810013', 'S21810067', 'S21810067@student.unklab.ac.id', 'Natanael Tombis', 'Darimpalo', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(357, '105021910048', 'S21810551', 'S21810551@student.unklab.ac.id', 'Michael', NULL, 'TI 2018-2022', 'M', 'ADV', 'GENSET'),
(358, '105011710029', 'S21530044', 'S21530044@student.unklab.ac.id', 'Gifford Christian', 'Mona', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(359, '105011810034', 'S21810111', 'S21810111@student.unklab.ac.id', 'Rivaldo Yehezkiel', 'Gerungan', 'SI 2018-2023', 'M', 'TEMP', 'GENSET'),
(360, '105021610045', 'S21610474', 'S21610474@student.unklab.ac.id', 'Zoren Fredrik', 'Golioth', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2');
INSERT INTO `students` (`stu_id`, `stu_nim`, `stu_reg_number`, `stu_email`, `stu_first_name`, `stu_last_name`, `stu_curriculum_code`, `stu_gender`, `stu_religion_id`, `stu_residence_id`) VALUES
(361, '105021510066', 'S11510352', 'S11510352@student.unklab.ac.id', 'Regita Maria', NULL, 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(362, '105021610025', 'S11610034', 'S11610034@student.unklab.ac.id', 'Stevani', 'Andolo', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(363, '105011710015', 'S21710068', 'S21710068@student.unklab.ac.id', 'Merryl Chrystin Sumeylhany', 'Daka', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(364, '105011610006', 'S21610026', 'S21610026@student.unklab.ac.id', 'Tommy', 'Sijabat', 'SI 2013-2018', 'M', 'ADV', 'STADOS'),
(365, '105021310014', '11310283', '11310283@student.unklab.ac.id', 'Juprain', 'Evander', 'TI 2013-2018', 'M', 'ADV', 'STADOS'),
(366, '105021710026', 'S11710044', 'S11710044@student.unklab.ac.id', 'Calvin Costan ', 'Ngalo', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(367, '105021639001', 'S11430013', 'S11430013@student.unklab.ac.id', 'Marlan ', 'Yap', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(368, '105021410025', 'S21410202', 'S21410202@student.unklab.ac.id', 'Christora Immanuel', 'Tidajoh', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(369, '105011610035', 'S21610483', 'S21610483@student.unklab.ac.id', 'Alexander Xaverius J.', 'Tompunu', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(370, '105011610038', 'S11610102', 'S11610102@student.unklab.ac.id', 'Oktaviano Yolando', NULL, 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(371, '105021610023', 'S21610233', 'S21610233@student.unklab.ac.id', 'Injilio', 'Dumanauw', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(372, '105011810052', 'S21810323', 'S21810323@student.unklab.ac.id', 'Brenden Davidson', 'Kulon', 'SI 2018-2023', 'M', 'TEMP', 'OUTSIDER_1'),
(373, '105011410043', 'S11410258', 'S11410258@student.unklab.ac.id', 'Miguel Angelo ', 'Maramis', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(374, '105021910068', 'S21910462', 'S21910462@student.unklab.ac.id', 'Alvino Daf Oliver', 'Tular', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL_NEW'),
(375, '105021910051', 'S11910124', 'S11910124@student.unklab.ac.id', 'Geovalga Fransiscus ', 'Lim', 'TI 2018-2022', 'M', 'KT', 'OUTSIDER_1'),
(376, '105011210016', '11210248', '11210248@student.unklab.ac.id', 'Tuwaidan Mariabeth Hanaoka Marcellina', NULL, 'SI_2008_2013', 'F', 'KR', 'OUTSIDER_1'),
(377, '105021910065', 'S21730033', 'S21730033@student.unklab.ac.id', 'Rifton Milenius', 'Ratulangi', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(378, '105021810019', 'S21730017', 'S21730017@student.unklab.ac.id', 'Seiver', 'Mangkey', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(379, '105021910077', 'S21910496', 'S21910496@student.unklab.ac.id', 'Arnando Dwi Putra', 'Jawali', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(380, '105021910071', 'S11910186', 'S11910186@student.unklab.ac.id', 'Ezra Johanes ', 'Sumual', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(381, '105011910109', 'S21910554', 'S21910554@student.unklab.ac.id', 'Aprayiel Kezia Elsye', 'Mandak', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(382, '105011610022', 'S21610234', 'S21610234@student.unklab.ac.id', 'Ferjenio Yosua ', 'Rawung', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(383, '105021910076', 'S11910191', 'S11910191@student.unklab.ac.id', 'Ryven Rainhard', 'Robot', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(384, '105011610041', 'S21610547', 'S21610547@student.unklab.ac.id', 'Jordan Daniel', 'Rondonuwu', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(385, '105021820004', 'S11820009', 'S11820009@student.unklab.ac.id', 'Samuel Merlando', 'Rantung', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(386, '105011810047', 'S21810213', 'S21810213@student.unklab.ac.id', 'Pamela Britney Abigail', 'Watulingas', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_1'),
(387, '105021718002', 'S21410043', 'S21410043@student.unklab.ac.id', 'Semuel Piet', 'Tumbal', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(388, '105011510006', 's11510018', 's11510018@student.unklab.ac.id', 'Rofiko', 'Kolibu', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(389, '105021820001', 'S11820005', 'S11820005@student.unklab.ac.id', 'Cristofel', 'Nau', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(390, '105021810031', 'S11810137', 'S11810137@student.unklab.ac.id', 'Muhammad', 'Halid', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(391, '105021710046', 'S21710418', 'S21710418@student.unklab.ac.id', 'Daniel Giovanni', 'Lombo', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(392, '105011710001', 'S21530051', 'S21530051@student.unklab.ac.id', 'Jetly Jems', 'Mumek', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(393, '105021410043', 'S21410309', 'S21410309@student.unklab.ac.id', 'Renoreins ', 'Rumegang', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(394, '105021810067', 'S21810508', 'S21810508@student.unklab.ac.id', 'Kelly Rosa Sabat Agung', 'Sirait', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(395, '105011910041', 'S21910233', 'S21910233@student.unklab.ac.id', 'Rycko Giovann Leon', 'Frans', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL_NEW'),
(396, '105011810054', 'S21810334', 'S21810334@student.unklab.ac.id', 'Yeremia Benyamin', 'Lumowa', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(397, '105021910058', 'S11910152', 'S11910152@student.unklab.ac.id', 'Radix', NULL, 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(398, '105021810021', 'S11810068', 'S11810068@student.unklab.ac.id', 'Dennis Billy Yosua ', 'Toreh', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(399, '105011910107', 'S21910541', 'S21910541@student.unklab.ac.id', 'Isabella Naomi', 'Adam', 'SI 2018-2023', 'F', 'ADV', 'STADOS'),
(400, '105011910110', 'S11910279', 'S11910279@student.unklab.ac.id', 'Joe Enrique', 'Golioth', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(401, '105011610029', 'S21610406', 'S21610406@student.unklab.ac.id', 'Stevanlee Valentino ', 'Ngeloh', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(402, '105021910063', 'S11910157', 'S11910157@student.unklab.ac.id', 'Steffano Immanuel', 'Rondonuwu', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(403, '105021610015', 'S21610184', 'S21610184@student.unklab.ac.id', 'Frankly Smit', 'Pangemanan', 'TI 2013-2018', 'M', 'ADV', 'STADOS'),
(404, '105021820005', 'S11820015', 'S11820015@student.unklab.ac.id', 'Marchel Eferson Putra', 'Haerani', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(405, '105011610003', 'S21610011', 'S21610011@student.unklab.ac.id', 'Sintya', 'Hamise', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(406, '105011710012', 'S21710079', 'S21710079@student.unklab.ac.id', 'Noel Lester Gerard', 'Lontoh', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(407, '105021810049', 'S21810355', 'S21810355@student.unklab.ac.id', 'Giovano Karel Silvester', 'Kaurouw', 'TI 2018-2022', 'M', 'KT', 'CRYSTAL'),
(408, '105011710011', 'S21710063', 'S21710063@student.unklab.ac.id', 'Bryan Revinaldo', 'Dondokambey', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(409, '105011810013', 'S11810009', 'S11810009@student.unklab.ac.id', 'Juliazari', 'Jacobus', 'SI 2018-2023', 'F', 'KR', 'GUEST_HS_2'),
(410, '105021910092', 'S21910551', 'S21910551@student.unklab.ac.id', 'Wahyu Arief', 'Laksono', 'TI 2018-2022', 'M', 'IS', 'OUTSIDER_1'),
(411, '105011910067', 'S21910377', 'S21910377@student.unklab.ac.id', 'Ernesta Geraldy Imanuel', 'Ratulangi', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(412, '105021810037', 'S21810245', 'S21810245@student.unklab.ac.id', 'Renaldy Yohanes Simon Stock', 'Sitanggang', 'TI 2018-2022', 'M', 'KT', 'OUTSIDER_1'),
(413, '105021710034', 'S11710064', 'S11710064@student.unklab.ac.id', 'Christo Fernando', 'Masaling', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(414, '105011610043', 'S21610585', 'S21610585@student.unklab.ac.id', 'Raymond Cristof', 'Tumiwa', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(415, '105021910095', 'S21910572', 'S21910572@student.unklab.ac.id', 'Gillvend Floistan', 'Lumba', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(416, '105011910105', 'S21910516', 'S21910516@student.unklab.ac.id', 'Junior Eduard Jesaya ', 'Pandegirot', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(417, '105021910064', 'S11910158', 'S11910158@student.unklab.ac.id', 'Joufrean Gefran', 'Nangoy', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(418, '105021810029', 'S11810126', 'S11810126@student.unklab.ac.id', 'Cliford Raul', 'Rumondor', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(419, '105021610027', 'S21610248', 'S21610248@student.unklab.ac.id', 'Riani Atalya ', 'Kumendong', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(420, '105011910112', 'S21810560', 'S21810560@student.unklab.ac.id', 'Lidiana Feronika ', 'Tukali', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_1'),
(421, '105021510011', 'S11510053', 'S11510053@student.unklab.ac.id', 'Denis Maurits Tompunu', 'Mekel', 'TI 2013-2018', 'M', '0', 'OUTSIDER_1'),
(422, '105021910091', 'S11910274', 'S11910274@student.unklab.ac.id', 'Joshua Edward ', 'Tanjung', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(423, '105021910093', 'S21910564', 'S21910564@student.unklab.ac.id', 'Ananda', 'Aditya', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(424, '105021710021', 'S21710145', 'S21710145@student.unklab.ac.id', 'Ferdi A.', 'Marlissa', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(425, '105011520004', 'S21520005', 'S21520005@student.unklab.ac.id', 'Ricky Mark', '-', 'SI 2013-2018', 'M', '0', 'OUTSIDER_1'),
(426, '105021710031', 'S21710268', 'S21710268@student.unklab.ac.id', 'Jeremy Andrew', 'Pongantung', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(427, '105011810076', 'S21710606', 'S21710606@student.unklab.ac.id', 'Jori', 'Wukungsenggo', 'SI 2018-2023', 'M', 'ADV', 'GENSET'),
(428, '105021619001', '11113300', '11113300@student.unklab.ac.id', ' Apriana Sari', 'Adrian', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(429, '105021910096', 'S11910289', 'S11910289@student.unklab.ac.id', 'Itou Billy ', 'Liando', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(430, '105021810066', 'S11810272', 'S11810272@student.unklab.ac.id', 'Givency Ester', 'Pandelaki', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_2'),
(431, '105021910098', 'S21910578', 'S21910578@student.unklab.ac.id', 'Novrando Natanael ', 'Hizkia', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(432, '105021610007', 'S11610017', 'S11610017@student.unklab.ac.id', 'Bryan Aldi ', 'Lamansiang', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(433, '105011910114', 'S21910573', 'S21910573@student.unklab.ac.id', 'Angelina Odelia', 'Padang', 'SI 2018-2023', 'F', 'KT', 'OUTSIDER_1'),
(434, '105021910097', 'S11910288', 'S11910288@student.unklab.ac.id', 'Ryan Roland', 'Mamitoho', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(435, '105021910101', 'S21910579', 'S21910579@student.unklab.ac.id', 'Yosafat Yulius Riders', 'Kaunang', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(436, '105011810060', 'S11810220', 'S11810220@student.unklab.ac.id', 'Kevin Fransiskus', 'Wullur', 'SI 2018-2023', 'M', 'KT', 'OUTSIDER_1'),
(437, '105021810020', 'S11720037', 'S11720037@student.unklab.ac.id', 'Arter', 'Tendean', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(438, '105021810032', 'S11810140', 'S11810140@student.unklab.ac.id', 'Timothy Matthew Jeremi Dirk', NULL, 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(439, '105011610037', 'S21610534', 'S21610534@student.unklab.ac.id', 'Lewi', 'Kailola', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(440, '105021710036', 'S21610608', 'S21610608@student.unklab.ac.id', 'Flindy Aprilino Iklasius', 'Raturandang', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(441, '105011910117', 'S21810600', 'S21810600@student.unklab.ac.id', 'Kiliuverd', 'Hukom', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(442, '105011910113', 'S21910567', 'S21910567@student.unklab.ac.id', 'Timoti James', 'Kaway', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(443, '105021610043', 'S21610410', 'S21610410@student.unklab.ac.id', 'Eughenia Pretty Sabbathiny', 'Najoan', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(444, '105011810058', 'S11810213', 'S11810213@student.unklab.ac.id', 'Henry Glorio', 'Tampemawa', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(445, '105021717001', 'S11710157', 'S11710157@student.unklab.ac.id', 'Brian Willbert Hamonangan', 'Siregar', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(446, '105021828001', 'S11810225', 'S11810225@student.unklab.ac.id', 'Gede Yogi Surya Kirana', '-', 'TI 2018-2022', 'M', 'HD', 'OUTSIDER_1'),
(447, '105011910116', 'S21910583', 'S21910583@student.unklab.ac.id', 'Christo Natalio', 'Sumual', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(448, '105021810040', 'S21810263', 'S21810263@student.unklab.ac.id', 'Arthur Efraim', 'Lonteng', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(449, '105011610033', 'S11610080', 'S11610080@student.unklab.ac.id', 'Oktaviani Fransciska Angela', ' Dumanaw', 'SI 2013-2018', 'F', 'KT', 'OUTSIDER_1'),
(450, '105021510040', 'S11510205', 'S11510205@student.unklab.ac.id', 'Indra Teguh Pratama', 'Darus', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(451, '105011818001', 'S21710303', 'S21710303@student.unklab.ac.id', 'Yosua Gabriel ', 'Sahensolar', 'SI 2013-2018', 'M', '0', 'OUTSIDER_2'),
(452, '105021910056', 'S11910138', 'S11910138@student.unklab.ac.id', 'Karel', 'Sewanso', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(453, '105011910101', 'S21910507', 'S21910507@student.unklab.ac.id', 'Veron', 'Tanos', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(454, '105021610049', 'S11610092', 'S11610092@student.unklab.ac.id', 'Chandra Frans ', 'Lintong', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(455, '105011910060', 'S21830032', 'S21830032@student.unklab.ac.id', 'Lady Lea Claudia', 'Frans', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_1'),
(456, '105011719004', '10923800', '10923800@student.unklab.ac.id', ' John Beynard', 'Yoku', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(457, '105021910084', 'S21910525', 'S21910525@student.unklab.ac.id', 'Darryl Ngantung Josua', 'Wullur', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(458, '105011810050', 'S11810160', 'S11810160@student.unklab.ac.id', 'Devan Christovano ', 'Prabowo', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(459, '105011810055', 'S21810348', 'S21810348@student.unklab.ac.id', 'Ronnel Fredrik', 'Takalamingan', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(460, '105021910099', 'S11910293', 'S11910293@student.unklab.ac.id', 'Yehezkiel Christian Pratama', 'Tangay', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(461, '105021710006', 'S21710052', 'S21710052@student.unklab.ac.id', 'Joshua Bento', 'Muraram', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(462, '105021910055', 'S21910406', 'S21910406@student.unklab.ac.id', 'Rivero Nicky', 'Tulenan', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(463, '105011810026', 'S21810049', 'S21810049@student.unklab.ac.id', 'Triyanto Cruise Datu', 'Linggi\'', 'SI 2018-2023', 'M', 'TEMP', 'OUTSIDER_2'),
(464, '105011910115', 'S21910581', 'S21910581@student.unklab.ac.id', 'Marshall Pratama ', 'Sihombing', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(465, '105011910118', 'S11910298', 'S11910298@student.unklab.ac.id', 'Wempiet ', 'Tumbal', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(466, '105021810039', 'S21810253', 'S21810253@student.unklab.ac.id', 'Marshal Clift Peter', 'Wuisan', 'TI 2018-2022', 'M', 'TEMP', 'OUTSIDER_2'),
(467, '105021810060', 'S21810457', 'S21810457@student.unklab.ac.id', 'Revdian Efraim', 'Paseki', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(468, '105011610026', 'S21610304', 'S21610304@student.unklab.ac.id', 'Rivaldo Freyke Samuel', ' Kaunang', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(469, '105011710032', 'S21710392', 'S21710392@student.unklab.ac.id', 'Varry Steven K.', 'Sumendap', 'SI 2013-2018', 'M', '0', 'OUTSIDER_1'),
(470, '105011910111', 'S21910568', 'S21910568@student.unklab.ac.id', 'Miracle Christophani Julio', 'Unas', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(471, '105021610050', 'S11610093', 'S11610093@student.unklab.ac.id', 'Rayfelt Cristian ', 'Tambaani', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(472, '105011839001', '11210649', '11210649@student.unklab.ac.id', 'Axcelino', 'Langi', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(473, '105011510039', 'S21510300', 'S21510300@student.unklab.ac.id', 'Arnold Jonathan', 'Rondonuwu', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(474, '105011910106', 'S11910260', 'S11910260@student.unklab.ac.id', 'Claudio Rezy', 'Tendean', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(475, '105021720001', 'S11710168', 'S11710168@student.unklab.ac.id', 'Rizal William', 'Eleuwarin', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(476, '105011710038', 'S11710115', 'S11710115@student.unklab.ac.id', 'Cheril Aldo', 'Lasut', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(477, '105021810004', 'S21810014', 'S21810014@student.unklab.ac.id', 'Timothy Merfry', 'Tiwow', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(478, '105021810005', 'S21810017', 'S21810017@student.unklab.ac.id', 'Reynaldo Christoper', 'Daingah', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(479, '105021510023', 'S21410342', 'S21410342@student.unklab.ac.id', 'Jhordy Richard ', 'Mundung', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(480, '105021410033', 'S21410245', 'S21410245@student.unklab.ac.id', 'Marsel', 'Dien', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(481, '105021710048', 'S11710103', 'S11710103@student.unklab.ac.id', 'Weisman ', 'Landimuru', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(482, '105011610030', 'S21610420', 'S21610420@student.unklab.ac.id', 'Marlivye', 'Makapedua', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(483, '105011610034', 'S21610475', 'S21610475@student.unklab.ac.id', 'Wiwandy ', 'Dopong', 'SI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(484, '105021610030', 'S21610303', 'S21610303@student.unklab.ac.id', 'Audrey H Joy Lord Regi', 'Siar', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(485, '105011810061', 'S21810433', 'S21810433@student.unklab.ac.id', 'Brillian Abraham', 'Lorwens', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(486, '105011910119', 'S21610596', 'S21610596@student.unklab.ac.id', 'Nefo', 'Timontiling', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_1'),
(487, '105011810064', 'S21810452', 'S21810452@student.unklab.ac.id', 'Rafael Fransisco', 'Tambajong', 'SI 2018-2023', 'M', 'KR', 'CRYSTAL'),
(488, '105021510056', 'S11510300', 'S11510300@student.unklab.ac.id', 'Valentino Alexandre', 'Kaligis', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(489, '105011810067', 'S11810256', 'S11810256@student.unklab.ac.id', 'Garren Axel Arie', 'Rondonuwu', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(490, '105021820006', 'S21710603', 'S21710603@student.unklab.ac.id', 'Jhosua Nikander', 'Marentek', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(491, '105011910108', 'S11910268', 'S11910268@student.unklab.ac.id', 'Hiskia Tommy ', 'Bororing', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_1'),
(492, '105011810071', 'S21810491', 'S21810491@student.unklab.ac.id', 'Julian Evant ', 'Waluyan', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(493, '105021910087', 'S11910258', 'S11910258@student.unklab.ac.id', 'Reynaldi', 'Rumampuk', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(494, '105021910103', 'S11910305', 'S11910305@student.unklab.ac.id', 'Gilby Ezra Albert', 'Koloay', 'TI 2018-2022', 'M', 'TEMP', 'OUTSIDER_1'),
(495, '105021810069', 'S11810277', 'S11810277@student.unklab.ac.id', 'Sepriani', 'Surdado', 'TI 2018-2022', 'F', 'ADV', 'OUTSIDER_1'),
(496, '105011910086', 'S21910467', 'S21910467@student.unklab.ac.id', 'Samuel R', 'Rumakiek', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(497, '105021710009', 'S21710077', 'S21710077@student.unklab.ac.id', 'Rayner Hansye', 'Senduk', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(498, '105011810070', 'S21810492', 'S21810492@student.unklab.ac.id', 'Gabriela Teresa', 'Makasighe', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(499, '105021910105', 'S21910605', 'S21910605@student.unklab.ac.id', 'Dione Sophia Marshya Janvier', 'Suratinoyo', 'TI 2018-2022', 'F', 'KR', 'JASMINE_2'),
(500, '105021910100', 'S21910580', 'S21910580@student.unklab.ac.id', 'Yeremia Hendrik Luther ', 'Dapu', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(501, '105011639001', '11013825', '11013825@student.unklab.ac.id', ' Sanli', 'Patras', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(502, '105021810054', 'S21810424', 'S21810424@student.unklab.ac.id', 'Cristin Rahel', 'Masambe', 'TI 2018-2022', 'F', 'ADV', 'OUTSIDER_2'),
(503, '105021910102', 'S21910590', 'S21910590@student.unklab.ac.id', 'Gabriel Marvil', 'Mamengko', 'TI 2018-2022', 'M', 'KR', 'CRYSTAL'),
(504, '105021410016', 'S21410135', 'S21410135@student.unklab.ac.id', 'Clifford Brandon Samuel', 'Pangkey', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(505, '105021328001', '11112782', '11112782@student.unklab.ac.id', ' Arfian Christian', 'Ansa', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(506, '105011710013', 'S21710066', 'S21710066@student.unklab.ac.id', 'Imanuel Alfiando ', 'Sambow', 'SI 2013-2018', 'M', 'KT', 'OUTSIDER_1'),
(507, '105011520002', 'S11520005', 'S11520005@student.unklab.ac.id', 'Oktovianus', 'Masrikat', 'SI 2013-2018', 'M', 'ADV', 'GENSET'),
(508, '105021610041', 'S21610387', 'S21610387@student.unklab.ac.id', 'Daniel Putra Yudha', 'Lokollo', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(509, '105021410004', 'S11410082', 'S11410082@student.unklab.ac.id', 'Try Anggara Soebagjo', '-', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(510, '105021610034', 'S21430043', 'S21430043@student.unklab.ac.id', 'Amelia Clarci ', 'Wangke', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(511, '105021810008', 'S21810032', 'S21810032@student.unklab.ac.id', 'Yance R. S.', 'Mangar', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(512, '105021610051', 'S21610533', 'S21610533@student.unklab.ac.id', 'Jessica Sabathiny', 'Buyung', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(513, '105011810035', 'S21810121', 'S21810121@student.unklab.ac.id', 'Azriel Achmad Fabian', 'Mauda', 'SI 2018-2023', 'M', 'IS', 'OUTSIDER_1'),
(514, '105021510051', 'S11510273', 'S11510273@student.unklab.ac.id', 'Yongxia Christ', 'Manufury', 'TI 2013-2018', 'M', 'KR', 'STADOS'),
(515, '105011810049', 'S21730034', 'S21730034@student.unklab.ac.id', 'Angelina Vabiola', 'Doringin', 'SI 2018-2023', 'F', 'ADV', 'OUTSIDER_2'),
(516, '105021610052', 'S21610538', 'S21610538@student.unklab.ac.id', 'Erasia Putri ', 'Kloah', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_1'),
(517, '105021810022', 'S21810125', 'S21810125@student.unklab.ac.id', 'Jassica Carmelia Meiliani Brigita', 'Katopo', 'TI 2018-2022', 'F', 'KR', 'OUTSIDER_1'),
(518, '105021610035', 'S11610047', 'S11610047@student.unklab.ac.id', 'Petro Pit Heinan Lewi ', 'Tobolu', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(519, '105021510054', 'S11510289', 'S11510289@student.unklab.ac.id', 'Jenry Leonard', 'Sumolang', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(520, '105021910069', 'S21910472', 'S21910472@student.unklab.ac.id', 'Dion Mario Junior', 'Sendow', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(521, '105021828002', 'S21630018', 'S21630018@student.unklab.ac.id', 'Ficky Jaklin', 'Kasenda', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(522, '105011810031', 'S21810094', 'S21810094@student.unklab.ac.id', 'Andrew Yeremia', 'Mundung', 'SI 2018-2023', 'M', 'ADV', 'CRYSTAL'),
(523, '105021410019', 'S220133024', 'S220133024@student.unklab.ac.id', 'Vinyati ', 'Watuseke', 'TI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(524, '105011610042', 'S11610104', 'S11610104@student.unklab.ac.id', 'Godlife Davidson', 'Rellely', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(525, '105021710038', 'S21710308', 'S21710308@student.unklab.ac.id', 'Rex Adichandra', 'Senewe', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(526, '105021910106', 'S11910312', 'S11910312@student.unklab.ac.id', 'Waraney Agung Fransis ', 'Ngantung', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(527, '105011910120', 'S21910600', 'S21910600@student.unklab.ac.id', 'Juliando Osea', 'Kalangi', 'SI 2018-2023', 'M', 'KR', 'OUTSIDER_2'),
(528, '105021810057', 'S11810234', 'S11810234@student.unklab.ac.id', 'Ricky', 'Pasulatan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(529, '105021810051', 'S21810393', 'S21810393@student.unklab.ac.id', 'Jordan Roy ', 'Tirukan', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(530, '105021610033', 'S21610305', 'S21610305@student.unklab.ac.id', 'Micha Adeleid Tisyana', 'Kalalo', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(531, '105021410048', 'S11410343', 'S11410343@student.unklab.ac.id', 'Sengkey Maria Yuliana Inke', NULL, 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(532, '105011810075', 'S11810288', 'S11810288@student.unklab.ac.id', 'Florencia P. CH.', 'Kaligis', 'SI 2018-2023', 'F', 'KR', 'OUTSIDER_1'),
(533, '105021810009', 'S11810028', 'S11810028@student.unklab.ac.id', 'Norris Stiven Mosses ', 'Dompas', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(534, '105021610032', 'S21610285', 'S21610285@student.unklab.ac.id', 'Jhosua Ricky Ardi Gradus ', 'Demakota', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(535, '105021719001', '11013251', '11013251@student.unklab.ac.id', ' Agung Eliazar', 'Maramis', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(536, '105011610019', 'S11610029', 'S11610029@student.unklab.ac.id', 'Ronaldo ', 'Kainama', 'SI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(537, '105011710021', 'S11710035', 'S11710035@student.unklab.ac.id', 'Billy Cartstenz ', 'Marlissa', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(538, '105021710052', 'S21710466', 'S21710466@student.unklab.ac.id', 'Yonathan Putra', 'Mamahit', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_2'),
(539, '105021910094', 'S21910570', 'S21910570@student.unklab.ac.id', 'Rayaldy Piether', 'Woisiri', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_2'),
(540, '105021919001', '11113377', '11113377@student.unklab.ac.id', ' Evano Elmi Vicky', 'Zachawerus', 'TI 2018-2022', 'M', 'KR', 'STADOS'),
(541, '105021810043', 'S21810301', 'S21810301@student.unklab.ac.id', 'Hendrik Supit', 'Maindoka', 'TI 2018-2022', 'M', 'TEMP', 'OUTSIDER_2'),
(542, '105011710014', 'S21710067', 'S21710067@student.unklab.ac.id', 'Harist Angga Alfeno-', NULL, 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(543, '105021510036', 'S21510172', 'S21510172@student.unklab.ac.id', 'Iqbal', 'Santoso', 'TI 2013-2018', 'M', 'KT', 'OUTSIDER_1'),
(544, '105021710030', 'S21710250', 'S21710250@student.unklab.ac.id', 'Jovial Veiva Junior', ' Kansil', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(545, '105011810056', 'S21710613', 'S21710613@student.unklab.ac.id', 'Yosua Morens', 'Mandry', 'SI 2018-2023', 'M', 'ADV', 'OUTSIDER_2'),
(546, '105021710013', 'S11710017', 'S11710017@student.unklab.ac.id', 'Chrysto', 'Pollatu', 'TI 2013-2018', 'M', 'ADV', 'CRYSTAL'),
(547, '105011819002', '11123947', '11123947@student.unklab.ac.id', ' Stevy', 'Mailangkay', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(548, '105021810064', 'S21810495', 'S21810495@student.unklab.ac.id', 'Anrev Jeremya', 'Darenoh', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(549, '105021710055', 'S21710491', 'S21710491@student.unklab.ac.id', 'Jitro Glenn Wilhelm Calveen', 'Mandagi', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(550, '105011719003', '10913721', '10913721@student.unklab.ac.id', ' Arlius', 'Lalong', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(551, '105021910108', 'S21910613', 'S21910613@student.unklab.ac.id', 'Aldy Alehandro', 'Mamuaya', 'TI 2018-2022', 'M', 'KR', 'GUEST_HS'),
(552, '105021610028', 'S21610272', 'S21610272@student.unklab.ac.id', 'Ingrah Gabriel', 'Lumenta', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(553, '105021810033', 'S11810141', 'S11810141@student.unklab.ac.id', 'Warstaryon', 'Sawotong', 'TI 2018-2022', 'M', 'ADV', 'OUTSIDER_1'),
(554, '105021918001', 'S11810162', 'S11810162@student.unklab.ac.id', 'Stevander Chevin', 'Kalalo', 'TI 2018-2022', 'M', 'ADV', 'CRYSTAL'),
(555, '105021510022', 'S21510111', 'S21510111@student.unklab.ac.id', 'Irfan', NULL, 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(556, '105021710032', 'S21710274', 'S21710274@student.unklab.ac.id', 'Pricilia Mersi Debora', 'Marentek', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(557, '105011410013', 'S11410084', 'S11410084@student.unklab.ac.id', 'Mayani Finley Suzanna', 'Taebenu', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_1'),
(558, '105011710003', 'S21710038', 'S21710038@student.unklab.ac.id', 'Johan Irialdy ', 'Kaban', 'SI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(559, '105011710022', 'S21710143', 'S21710143@student.unklab.ac.id', 'Denny Brian ', 'Manaha', 'SI 2013-2018', 'M', 'KR', 'CRYSTAL'),
(560, '105011710023', 'S21710155', 'S21710155@student.unklab.ac.id', 'Hendrik Rudolf', 'Tupan', 'SI 2013-2018', 'M', 'KR', 'CRYSTAL'),
(561, '105011710006', 'S11710009', 'S11710009@student.unklab.ac.id', 'Yoshefina Brenda Veronicha', 'Daka', 'SI 2013-2018', 'F', 'KR', 'OUTSIDER_2'),
(562, '105011420003', 'S11420016', 'S11420016@student.unklab.ac.id', 'Rinnie Angela', NULL, 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_1'),
(563, '105011610036', 'S11530008', 'S11530008@student.unklab.ac.id', 'Delsi ', 'Petrus', 'SI 2013-2018', 'F', 'ADV', 'OUTSIDER_2'),
(564, '105021710007', 'S11710013', 'S11710013@student.unklab.ac.id', 'Ezra Tilaar Margaretha', 'Moleong', 'TI 2013-2018', 'F', 'KR', 'EDEL'),
(565, '105021910107', 'S21910606', 'S21910606@student.unklab.ac.id', 'Leandro Juventin', 'Ongky', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(566, '105021810062', 'S21810485', 'S21810485@student.unklab.ac.id', 'Natanael Christofel', 'Taralalu', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_1'),
(567, '105021610018', 'S21610227', 'S21610227@student.unklab.ac.id', 'Yehezkyel Juventus Brave', 'Manangkot', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_1'),
(568, '105021710066', 'S21710547', 'S21710547@student.unklab.ac.id', 'Yeheskiel Geraldi', 'Wonte', 'TI 2013-2018', 'M', 'KR', 'OUTSIDER_1'),
(569, '105021510017', 'S11510110', 'S11510110@student.unklab.ac.id', 'Davidson Ronaldo', 'Tampi', 'TI 2013-2018', 'M', 'ADV', 'OUTSIDER_2'),
(570, '105021810027', 'S21810193', 'S21810193@student.unklab.ac.id', 'Elia Alexander', 'Tampi', 'TI 2018-2022', 'M', 'KR', 'OUTSIDER_2'),
(571, '105021510005', 'S11510029', 'S11510029@student.unklab.ac.id', 'Chenny Regina ', ' Lantang', 'TI 2013-2018', 'F', 'KR', 'OUTSIDER_1'),
(5000, '12345', '123456789', 'admin@unklab.com', 'admin', NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_pass` varchar(255) NOT NULL,
  `user_status` tinyint(1) NOT NULL,
  `students_stu_id` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_pass`, `user_status`, `students_stu_id`) VALUES
(13, 'admin', '$2y$10$TuTcxcy8v5aQ9h2NrIFOrOac0H2jL0FTs69P1KzajvJa5.Omfz2eq', 1, 5000),
(14, 'harold', '$2y$10$kdHpktJxURez.DcDSuFL4O9i.RsogmyDDiQn1uvBKeJPsR1TT1dXO', 1, 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`ev_id`);

--
-- Indexes for table `registrations`
--
ALTER TABLE `registrations`
  ADD PRIMARY KEY (`reg_id`),
  ADD KEY `registration_events` (`events_ev_id`),
  ADD KEY `registration_students` (`students_stu_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`stu_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD KEY `connect_user_students` (`students_stu_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `ev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `registrations`
--
ALTER TABLE `registrations`
  MODIFY `reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `stu_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5001;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `registrations`
--
ALTER TABLE `registrations`
  ADD CONSTRAINT `registration_events` FOREIGN KEY (`events_ev_id`) REFERENCES `events` (`ev_id`),
  ADD CONSTRAINT `registration_students` FOREIGN KEY (`students_stu_id`) REFERENCES `students` (`stu_id`);

--
-- Constraints for table `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `connect_user_students` FOREIGN KEY (`students_stu_id`) REFERENCES `students` (`stu_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
