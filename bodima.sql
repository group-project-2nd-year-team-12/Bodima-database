-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 18, 2021 at 11:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bodima`
--

-- --------------------------------------------------------

--
-- Table structure for table `administrator`
--

CREATE TABLE `administrator` (
  `a_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `level` varchar(20) NOT NULL DEFAULT 'administrator',
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `profileimage` text NOT NULL,
  `user_accepted` int(1) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `administrator`
--

INSERT INTO `administrator` (`a_id`, `email`, `password`, `level`, `first_name`, `last_name`, `address`, `profileimage`, `user_accepted`) VALUES
(1, 'boadima7@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'administrator', 'Amal', 'Lakshan', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `boarder`
--

CREATE TABLE `boarder` (
  `Bid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boarder',
  `address` varchar(250) NOT NULL,
  `location_link` text NOT NULL,
  `NIC` varchar(12) NOT NULL,
  `image` varchar(255) NOT NULL,
  `institute` varchar(40) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `telephone` text NOT NULL,
  `user_accepted` int(1) NOT NULL,
  `profileimage` text NOT NULL DEFAULT '../resource/Images/a.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarder`
--

INSERT INTO `boarder` (`Bid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `address`, `location_link`, `NIC`, `image`, `institute`, `gender`, `telephone`, `user_accepted`, `profileimage`) VALUES
(37, 'lakshanamal100@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ff71a4724331ffdefe84434f8cce3ab1593094d8c766535064868846a6e6aa3a4000076417126684a0c96a0da9566f3e4649', 'kavindya', 'Lakshan', 'boarder', ' Mathara', '  ', '970920918v', '../resource/nicImage/about.jpg', 'University Of Colombo', 'Boy', '0715822454', 1, '../resource/Images/d.jpg'),
(38, 'ramya@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ccfe9538e548b63dfe9bf4fe536b6f959c585b6716f6d41ab6fd3fc401a0e13cac0e9f31fefd194f76f9aecd8dd753f2b995', 'Ramya', 'Rajapaksha', 'boarder', '  ', '  ', '966661788v', '../resource/nicImage/about.jpg', 'University Of Colombo', 'Girl', '0715823454', 1, '../resource/Images/a.jpg'),
(39, 'thinuli@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '249136a000c90d67ab6f1ced3604c7879dd4d70c109d810255d5c2eb13d433097ff08a57022b92af46801a7715d8fe0b627d', 'Thinuli', 'Gothatuwa', 'boarder', '  ', '  ', '966611444v', '../resource/nicImage/about.jpg', 'University Of Colombo', 'Boy', '0715822421', 1, '../resource/Images/b.jpg'),
(40, 'yamuna@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '10d66b29e2f3faed7777581e3d06f7ec46471c02b0d8fa3e48a5f69909fa846a414bf520753cfcf109da02efb11493e7ad79', 'Yamuna', 'Rajakaruna', 'boarder', '  ', '  ', '966511965v', '../resource/nicImage/about.jpg', 'University Of Colombo', 'Boy', '0715828954', 1, '../resource/Images/a.jpg'),
(47, 'nelara@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', '9d08b53cdd50e460431b197b9bc37716347cfcc29a4bbf73d9c2236a98b167a59bff21ac5814251ef57bfb0f4674f1c2db63', 'nelara', 'sanviduni', 'boarder', '  ', '  ', '', '../resource/nicImage/', 'University Of Colombo', 'Girl', '0715822454', 0, '../resource/Images/a.jpg'),
(48, 'banda@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ce4c43a7050c8dc1a6b0d07b8abcb8e1bd167ad132cb78cf4ebf943eac4e6b4f19a54a134c161a7d6c377656c3a56e27da25', 'banda', 'aaa', 'boarder', '  ', '  ', '', '../resource/nicImage/', 'University Of Colombo', 'Boy', '0715822454', 1, '../resource/Images/d.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `boarderparent`
--

CREATE TABLE `boarderparent` (
  `Pid` int(11) NOT NULL,
  `Bid` int(11) NOT NULL,
  `parent_name` varchar(40) NOT NULL,
  `parent_telephone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boarderparent`
--

INSERT INTO `boarderparent` (`Pid`, `Bid`, `parent_name`, `parent_telephone`) VALUES
(27, 37, 'DiyanaMom', '0768610084'),
(28, 38, 'ramyaMom', '0768610083'),
(29, 39, 'Rajapakshe ', '0768610000'),
(30, 40, 'Ishan', '0768610089'),
(37, 47, 'Ishan', '0768610084'),
(38, 48, 'Ishan', '0768610084');

-- --------------------------------------------------------

--
-- Table structure for table `boardings_owner`
--

CREATE TABLE `boardings_owner` (
  `BOid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(250) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'boardings_owner',
  `NIC` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location_link` text NOT NULL,
  `account_no` int(11) NOT NULL,
  `user_accepted` int(1) NOT NULL,
  `profileimage` text NOT NULL DEFAULT '../resource/Images/a.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `boardings_owner`
--

INSERT INTO `boardings_owner` (`BOid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `NIC`, `address`, `location_link`, `account_no`, `user_accepted`, `profileimage`) VALUES
(1, '2018cs165@stu.ucsc.cmb.ac.lk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'b6c351c2372493439a8aa6b377555ac4ab2a50d2c6a03fb88a8871c4e36ade089bcb431256df5c6c36ec92eadd77b4cb6c72', 'Supunpraba', 'nimo', 'boardings_owner', '', '310/1 ,Delgasduwa, Nuwaraeliya', '', 0, 1, '../resource/Images/b.jpg'),
(3, 'anugaya.alwis@gmail.com', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'd41723e5c9ad1dadaf1e88d15c401b38116a0a0f2cb1022731444c6a8d50d5b4ff1d95b76a4d616afff06e55ef80bd227b6a', 'Anuki', 'Alwis', 'boardings_owner', '988581682v', 'Highlevel road, Makumbura', 'aaaaaa', 0, 1, '../resource/Images/a.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `boarding_post`
--

CREATE TABLE `boarding_post` (
  `B_post_id` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `girlsBoys` varchar(255) DEFAULT NULL,
  `person_count` int(100) DEFAULT NULL,
  `cost_per_person` int(255) DEFAULT NULL,
  `rating` int(100) DEFAULT 20,
  `image` varchar(255) NOT NULL DEFAULT '../resource/Images/h1.jpg',
  `house_num` varchar(255) DEFAULT NULL,
  `lane` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `district` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `location` varchar(255) DEFAULT NULL,
  `lifespan` int(255) DEFAULT NULL,
  `post_amount` int(255) DEFAULT NULL,
  `review` text DEFAULT NULL,
  `keymoney` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `create_time` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `boarding_post`
--

INSERT INTO `boarding_post` (`B_post_id`, `BOid`, `category`, `girlsBoys`, `person_count`, `cost_per_person`, `rating`, `image`, `house_num`, `lane`, `city`, `district`, `description`, `location`, `lifespan`, `post_amount`, `review`, `keymoney`, `title`, `create_time`) VALUES
(1, 3, 'individual', 'girls', 3, 6000, 45, '../resource/Images/uploaded_boarding/3.jpg', '4', 'mal mawatha', 'Dalthara', 'Colombo', 'near to university of Moratuwa', 'https://goo.gl/maps/LtzP1M2NrkFUHpMb6', 2, 2000, 'aada', 10000, '', '0000-00-00 00:00:00'),
(2, 1, 'individual', 'boys', 4, 5500, 30, '../resource/Images/uploaded_boarding/2.jpg', '12/A', 'kammalawaththa mawatha', 'kotuwa', 'Mathara', 'near to university of Ruhuna', 'https://goo.gl/maps/AUW3hP4ryNcxPEvDA', 3, 3000, ' xdgxtdh', 8000, '', '0000-00-00 00:00:00'),
(3, 1, 'room', 'girls', 2, 7000, 70, '../resource/Images/uploaded_boarding/9.jpg', '4', 'mal mawatha', 'Moratuwa', 'Colombo', 'near to university of Moratuwa', 'https://goo.gl/maps/LtzP1M2NrkFUHpMb6', 2, 2000, ' dfsdsfs', 6000, '', '0000-00-00 00:00:00'),
(4, 3, 'room', 'boys', 3, 6500, 60, '../resource/Images/uploaded_boarding/4.jpg', '111/A', 'kammalawaththa mawatha', 'Maharagama', 'Colombo', 'near to university of jayawardhanapura', 'https://goo.gl/maps/9Rj41yabhqRgW7Mx5', 3, 3000, ' vfgdth', 6000, '', '0000-00-00 00:00:00'),
(5, 3, 'room', 'girls', 2, 3500, 20, '../resource/Images/uploaded_boarding/1.jpg', '90', 'Athurugiriya Road', 'Athurugiriya', 'Colombo', 'near SLLIT', NULL, 3, 3000, 'ferge', 15000, '', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `complain_boarding`
--

CREATE TABLE `complain_boarding` (
  `Bid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `action_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `complain_food`
--

CREATE TABLE `complain_food` (
  `Bid` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `a_id` int(11) NOT NULL,
  `action_description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `confirm_rent`
--

CREATE TABLE `confirm_rent` (
  `rent_id` int(11) NOT NULL,
  `request_id` int(11) NOT NULL,
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `is_paid` int(11) NOT NULL,
  `keymoneyAmount` int(11) NOT NULL,
  `payment_method` text NOT NULL,
  `payment_date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `agreement` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `confirm_rent`
--

INSERT INTO `confirm_rent` (`rent_id`, `request_id`, `Bid`, `BOid`, `B_post_id`, `is_paid`, `keymoneyAmount`, `payment_method`, `payment_date`, `agreement`) VALUES
(24, 101, 37, 3, 1, 1, 10000, 'online', '2020-12-16 18:30:35', ' '),
(25, 102, 38, 3, 4, 1, 10000, 'online', '2020-12-22 12:35:51', ' '),
(26, 103, 39, 1, 1, 1, 10000, 'online', '2020-12-22 00:17:58', ' '),
(27, 104, 40, 3, 5, 1, 10000, 'online', '2020-12-22 12:36:05', ' '),
(34, 121, 47, 1, 1, 0, 10000, 'hand', '2020-12-22 00:18:32', ' '),
(35, 122, 48, 3, 1, 1, 10000, 'online', '2020-12-18 18:34:21', ' ');

-- --------------------------------------------------------

--
-- Table structure for table `confirm_rent_document`
--

CREATE TABLE `confirm_rent_document` (
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `B_post_id` int(11) NOT NULL,
  `document` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `food_post`
--

CREATE TABLE `food_post` (
  `F_post_id` int(100) NOT NULL,
  `FSid` int(11) NOT NULL,
  `ad_title` varchar(100) NOT NULL,
  `description` text NOT NULL,
  `address` varchar(100) NOT NULL,
  `location` text NOT NULL,
  `type` varchar(100) NOT NULL,
  `rating` int(255) NOT NULL,
  `orderingtimedeadline` time NOT NULL,
  `lifespan` int(31) NOT NULL,
  `post_amount` int(255) NOT NULL,
  `image` text NOT NULL DEFAULT '../resource/Images/h1.jpg',
  `posted_date` datetime NOT NULL DEFAULT current_timestamp(),
  `blocked` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_post`
--

INSERT INTO `food_post` (`F_post_id`, `FSid`, `ad_title`, `description`, `address`, `location`, `type`, `rating`, `orderingtimedeadline`, `lifespan`, `post_amount`, `image`, `posted_date`, `blocked`) VALUES
(2, 1, 'Rasika Food Delivary Service', 'Food for breakfast,lunch and dinner deliver to your home', 'Old road,Maharagama', '', 'Both', 30, '00:00:00', 60, 30000, '../resource/Images/uploaded_foodpost/rice-and-curry-organic.jpg', '2021-01-14 11:42:42', 0),
(3, 7, 'Sri Ragavas Restaurant', 'All tamil and indian food -vegetarian food', 'No 35,Highlevel road, Maharagama', '', 'Both', 35, '00:00:20', 60, 6000, '../resource/Images/uploaded_foodpost/maxresdefault.jpg', '2021-01-14 11:42:42', 0),
(4, 1, 'Nelum Kole Food court', 'game kaama game rasata', 'Highlevel road, Nugegoda', '', 'Long Term', 35, '00:00:18', 60, 6000, '../resource/Images/uploaded_foodpost/nelum kole.jpg', '2021-01-14 11:42:42', 0),
(5, 7, 'Ajith Hotel & Delivary', 'breakfast,lunch and dinner family restaurant', 'No 111,Nugegoda', '', 'Both', 35, '00:00:20', 60, 5000, '../resource/Images/uploaded_foodpost/ajith hotel.jpg', '2021-01-14 11:42:42', 0),
(21, 7, 'Ranasiri Bakery', 'For breakfast,lunch and dinner delivery to your home.', 'sisil Mawatha,Wijayaraama', '', 'Short Term', 1, '09:31:00', 30, 3000, '../resource/Images/uploaded_foodpost/bakery.jpg', '2021-01-14 11:42:42', 0);

-- --------------------------------------------------------

--
-- Table structure for table `food_request`
--

CREATE TABLE `food_request` (
  `request_id` int(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `is_accepted` int(1) NOT NULL,
  `term` varchar(10) NOT NULL DEFAULT 'shortTerm',
  `order_type` varchar(10) NOT NULL,
  `shedule` varchar(10) NOT NULL,
  `restaurant` varchar(50) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `order_id` int(50) NOT NULL,
  `total` double NOT NULL,
  `phone` int(20) NOT NULL,
  `method` varchar(10) NOT NULL,
  `time` datetime NOT NULL,
  `expireTime` datetime NOT NULL,
  `deliveredTime` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_request`
--

INSERT INTO `food_request` (`request_id`, `email`, `address`, `first_name`, `last_name`, `is_accepted`, `term`, `order_type`, `shedule`, `restaurant`, `F_post_id`, `order_id`, `total`, `phone`, `method`, `time`, `expireTime`, `deliveredTime`) VALUES
(780, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 4, 'longTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616016705, 300, 755535393, 'cash', '2021-03-18 03:01:45', '2021-03-18 03:11:54', '02:32:10pm'),
(781, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 4, 'shortTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616022649, 130, 755535393, 'card', '2021-03-18 04:40:49', '2021-03-18 04:50:58', '02:30:14pm'),
(782, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 4, 'shortTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616044033, 390, 755535393, 'card', '2021-03-18 10:37:13', '2021-03-18 10:47:21', '01:37:53pm'),
(784, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'shortTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616058939, 390, 755535393, 'card', '2021-03-18 14:45:39', '2021-04-18 17:05:39', ''),
(785, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'shortTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616058943, 390, 755535393, 'cash', '2021-03-18 14:45:43', '2021-03-18 17:05:43', ''),
(786, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'longTerm', 'lunch', 'now', 'Sri Ragavas Restaurant', 3, 1616058967, 540, 755535393, 'cash', '2021-03-18 14:46:07', '2021-03-18 17:06:07', ''),
(787, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'shortTerm', 'dinner', 'now', 'Sri Ragavas Restaurant', 3, 1616058998, 540, 755535393, 'card', '2021-03-18 14:46:38', '2021-03-18 17:06:38', ''),
(788, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'shortTerm', 'dinner', 'now', 'Sri Ragavas Restaurant', 3, 1616059001, 540, 755535393, 'cash', '2021-03-18 14:46:41', '2021-03-18 17:06:41', ''),
(789, '2018cs030@stu.ucsc.cmb.ac.lk', '310/1,deldasduwa,dodanduwa', 'Gayara', 'Alwis', 0, 'shortTerm', 'dinner', 'now', 'Sri Ragavas Restaurant', 3, 1616060336, 390, 755535399, 'cash', '2021-03-18 15:08:56', '2021-03-18 15:28:56', ''),
(791, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 0, 'shortTerm', 'dinner', 'now', 'Sri Ragavas Restaurant', 3, 1616061512, 390, 755535393, 'card', '2021-03-18 15:28:32', '2021-03-18 15:48:32', ''),
(792, 'lakshanamal100@gmail.com', '67/2,panvila,hikkaduwa', 'kavindya', 'Lakshan', 1, 'shortTerm', 'dinner', 'now', 'Sri Ragavas Restaurant', 3, 1616061567, 390, 755535393, 'card', '2021-03-18 15:29:27', '2021-03-18 15:39:41', '');

-- --------------------------------------------------------

--
-- Table structure for table `food_supplier`
--

CREATE TABLE `food_supplier` (
  `FSid` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(250) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `level` varchar(25) NOT NULL DEFAULT 'food_supplier',
  `NIC` varchar(12) NOT NULL,
  `address` varchar(250) NOT NULL,
  `location_link` int(11) NOT NULL,
  `user_accepted` int(1) NOT NULL,
  `profileimage` text NOT NULL DEFAULT '../resource/Images/a.jpg',
  `available` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `food_supplier`
--

INSERT INTO `food_supplier` (`FSid`, `email`, `password`, `token`, `first_name`, `last_name`, `level`, `NIC`, `address`, `location_link`, `user_accepted`, `profileimage`, `available`) VALUES
(1, '2018cs092@stu.ucsc.cmb.ac.lk', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'e5d8bae050c5853900781845961896bdf61b4d0be5706ed79cb0e0011b4bc33a8b208918cdb57410f218123695b19841606b', 'anuki', 'De Alwis', 'food_supplier', '0', 'Makumbura, Kottawa', 0, 1, '../resource/Images/b.jpg', 0),
(7, '2018cs030@stu.ucsc.cmb.ac.lk', '7c4a8d09ca3762af61e59520943dc26494f8941b', '004fe1780e38ac7134efec2bfc5ab0eca9bbe63bb635838e8734bd8f8672d3422c3c6187249229cb4286d9f378665169b245', 'Gayara', 'Alwis', 'food_supplier', '988581682v', 'Highlevel road, Makumbura', 0, 1, '../resource/Images/a.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE `image` (
  `imgid` int(100) NOT NULL,
  `boid` int(100) NOT NULL,
  `postid` int(100) NOT NULL,
  `image_name` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '../resource/Images/h1.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `livesupport`
--

CREATE TABLE `livesupport` (
  `cId` int(11) NOT NULL,
  `admin` varchar(50) NOT NULL DEFAULT 'boadima7@gmail.com',
  `user` varchar(50) NOT NULL,
  `sender` varchar(50) NOT NULL,
  `sender_name` varchar(20) NOT NULL,
  `message` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `livesupport`
--

INSERT INTO `livesupport` (`cId`, `admin`, `user`, `sender`, `sender_name`, `message`) VALUES
(171, 'boadima7@gmail.com', '2018cs092@stu.ucsc.cmb.ac.lk', 'boadima7@gmail.com', 'Amal Lakshan', 'What can i do for you ?'),
(172, 'boadima7@gmail.com', '2018cs092@stu.ucsc.cmb.ac.lk', '2018cs092@stu.ucsc.cmb.ac.lk', 'anuki De Alwis', 'how can i place a order ?'),
(173, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(174, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(175, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(176, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(177, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(178, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', ''),
(179, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'jk'),
(180, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'sd'),
(181, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'df'),
(182, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'ay bn'),
(183, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'oubn'),
(184, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'nbbjx'),
(185, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'bhjbzx'),
(186, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'oo kiyapan'),
(187, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'd'),
(188, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'cv'),
(189, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'gh'),
(190, 'boadima7@gmail.com', 'lakshanamal100@gmail.com', 'lakshanamal100@gmail.com', 'kavindya Lakshan', 'dfg');

-- --------------------------------------------------------

--
-- Table structure for table `longterm`
--

CREATE TABLE `longterm` (
  `ltID` int(11) NOT NULL,
  `day` datetime NOT NULL,
  `delivery_state` int(1) NOT NULL,
  `deliveredTime` datetime NOT NULL,
  `order_id` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `longterm`
--

INSERT INTO `longterm` (`ltID`, `day`, `delivery_state`, `deliveredTime`, `order_id`) VALUES
(576, '2021-03-17 00:00:00', 0, '2021-03-18 03:55:49', 1616016705),
(577, '2021-03-17 00:00:00', 0, '2021-03-18 03:59:34', 1616016705),
(583, '2021-03-20 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(584, '2021-03-21 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(585, '2021-03-22 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(586, '2021-03-23 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(587, '2021-03-24 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(588, '2021-03-25 00:00:00', 0, '0000-00-00 00:00:00', 1616058967),
(589, '2021-03-26 00:00:00', 0, '0000-00-00 00:00:00', 1616058967);

-- --------------------------------------------------------

--
-- Table structure for table `notification`
--

CREATE TABLE `notification` (
  `noID` int(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `title` varchar(25) NOT NULL,
  `discription` varchar(100) NOT NULL,
  `time` time NOT NULL,
  `seen_state` int(1) NOT NULL,
  `type` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `notification`
--

INSERT INTO `notification` (`noID`, `email`, `title`, `discription`, `time`, `seen_state`, `type`) VALUES
(1, 'lakshanamal100@gmail.com', 'Your order Accpeted', '', '00:10:19', 1, 'order'),
(2, 'lakshanamal100@gmail.com', 'Your order Accpeted', 'Order id :1610224461', '02:04:26', 1, 'accept'),
(3, 'lakshanamal100@gmail.com', 'Your order Accpeted', 'Order id :1610224920', '02:12:08', 1, 'order');

-- --------------------------------------------------------

--
-- Table structure for table `notifications`
--

CREATE TABLE `notifications` (
  `notify_id` int(11) NOT NULL,
  `type_number` int(11) NOT NULL,
  `from_level` varchar(50) NOT NULL,
  `from_id` int(11) NOT NULL,
  `to_level` varchar(50) NOT NULL,
  `to_id` int(11) NOT NULL,
  `massageHeader` text NOT NULL,
  `massage` text NOT NULL,
  `sendDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `is_seen` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `ordereditems`
--

CREATE TABLE `ordereditems` (
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfoodboarder`
--

CREATE TABLE `orderfoodboarder` (
  `Bid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orderfoodboardingowner`
--

CREATE TABLE `orderfoodboardingowner` (
  `BOid` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE `order_details` (
  `marchent_id` int(100) NOT NULL,
  `order_id` int(100) NOT NULL,
  `pay_amount` int(100) NOT NULL,
  `pay_currency` varchar(100) NOT NULL,
  `status_code` int(11) NOT NULL,
  `md5sig` varchar(250) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`marchent_id`, `order_id`, `pay_amount`, `pay_currency`, `status_code`, `md5sig`) VALUES
(456, 0, 0, '', 0, ''),
(456, 0, 0, '', 0, ''),
(456, 0, 0, '', 0, ''),
(456, 0, 0, '', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `order_item`
--

CREATE TABLE `order_item` (
  `itemID` int(11) NOT NULL,
  `item_name` varchar(20) DEFAULT NULL,
  `quantity` int(10) NOT NULL,
  `order_id` int(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_item`
--

INSERT INTO `order_item` (`itemID`, `item_name`, `quantity`, `order_id`) VALUES
(288, 'Idli ', 1, 1616016705),
(289, 'Puri ', 1, 1616016705),
(290, 'Idli ', 1, 1616022649),
(291, 'Idli ', 1, 1616044033),
(292, 'Paper Dosai ', 1, 1616044033),
(294, 'Idli ', 1, 1616058939),
(295, 'Paper Dosai ', 1, 1616058939),
(296, 'Idli ', 1, 1616058943),
(297, 'Paper Dosai ', 1, 1616058943),
(298, 'Idli ', 1, 1616058967),
(299, 'Paper Dosai ', 1, 1616058967),
(300, 'Pani Puri ', 1, 1616058967),
(301, 'Idli ', 1, 1616058998),
(302, 'Paper Dosai ', 1, 1616058998),
(303, 'Pani Puri ', 1, 1616058998),
(304, 'Idli ', 1, 1616059001),
(305, 'Paper Dosai ', 1, 1616059001),
(306, 'Pani Puri ', 1, 1616059001),
(307, 'Idli ', 1, 1616060336),
(308, 'Paper Dosai ', 1, 1616060336),
(312, 'Idli ', 1, 1616061512),
(313, 'Paper Dosai ', 1, 1616061512),
(314, 'Idli ', 1, 1616061567),
(315, 'Paper Dosai ', 1, 1616061567);

-- --------------------------------------------------------

--
-- Table structure for table `payfee`
--

CREATE TABLE `payfee` (
  `payid` int(11) NOT NULL,
  `Bid` int(11) NOT NULL,
  `BOid` int(11) NOT NULL,
  `year` int(4) DEFAULT NULL,
  `month` int(12) NOT NULL,
  `amount` int(11) NOT NULL,
  `paidDateTime` datetime NOT NULL DEFAULT current_timestamp(),
  `cash_card` varchar(11) NOT NULL DEFAULT 'None'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `payfee`
--

INSERT INTO `payfee` (`payid`, `Bid`, `BOid`, `year`, `month`, `amount`, `paidDateTime`, `cash_card`) VALUES
(1, 1, 1, 2021, 3, 4000, '2021-01-02 16:04:23', 'cash'),
(2, 37, 3, 2020, 1, 4000, '2021-01-02 16:13:13', 'online'),
(3, 40, 3, 2020, 9, 4000, '2021-01-02 16:13:21', 'None'),
(4, 48, 3, 2020, 6, 5000, '2021-01-02 16:22:07', 'online'),
(5, 39, 1, 2020, 7, 4000, '2021-01-02 16:22:43', 'None'),
(6, 40, 3, 2020, 11, 4000, '2021-01-02 16:27:16', 'cash'),
(7, 48, 3, 2020, 4, 4040, '2021-01-02 16:47:09', 'cash'),
(8, 37, 3, 2020, 4, 5050, '2021-01-02 16:50:12', 'cash'),
(30, 38, 3, 2020, 8, 5050, '2021-01-02 17:25:58', 'cash'),
(31, 39, 1, 2020, 6, 5050, '2021-01-02 17:30:10', 'cash'),
(32, 40, 3, 2020, 8, 5050, '2021-01-02 17:30:12', 'cash'),
(33, 47, 1, 2020, 3, 5050, '2021-01-02 17:30:13', 'cash'),
(34, 48, 3, 2020, 7, 5050, '2021-01-02 17:48:53', 'cash'),
(35, 37, 3, 2020, 3, 5050, '2021-01-02 17:48:59', 'cash'),
(36, 39, 1, 2020, 4, 5050, '2021-01-02 17:49:20', 'cash'),
(37, 38, 3, 2020, 7, 5050, '2021-01-02 17:49:35', 'cash'),
(38, 40, 3, 2020, 10, 5050, '2021-01-02 17:54:16', 'cash'),
(39, 47, 1, 2020, 2, 5050, '2021-01-02 17:54:21', 'cash'),
(40, 48, 3, 2020, 5, 5050, '2021-01-02 17:54:24', 'cash'),
(41, 37, 3, 2020, 2, 5050, '2021-01-02 17:54:27', 'cash'),
(42, 38, 3, 2020, 6, 5050, '2021-01-02 17:54:31', 'cash'),
(43, 39, 1, 2020, 5, 5050, '2021-01-02 17:54:34', 'cash'),
(44, 5, 5, 2005, 5, 5050, '2021-01-03 07:43:24', 'cash'),
(45, 5, 5, 2005, 5, 5050, '2021-01-03 07:44:40', 'cash'),
(46, 5, 5, 2005, 5, 5050, '2021-01-03 07:44:43', 'cash'),
(47, 5, 5, 2005, 5, 5050, '2021-01-03 07:44:43', 'cash'),
(48, 5, 5, 2005, 5, 5050, '2021-01-03 07:44:46', 'cash');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `FSid` int(11) NOT NULL,
  `F_post_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `breakfast` int(11) NOT NULL,
  `lunch` int(11) NOT NULL,
  `dinner` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `FSid`, `F_post_id`, `product_name`, `image`, `price`, `breakfast`, `lunch`, `dinner`) VALUES
(1, 1, 4, 'Mixed Rice', '../resource/img/product/product1.png', 399.99, 1, 1, 0),
(2, 1, 4, 'Chicken Rice', '../resource/img/product/product2.jpg', 299.99, 1, 0, 1),
(5, 2, 2, 'Cheese Kottu', '../resource/img/product/cheesekottu.jpg\r\n', 370, 1, 0, 1),
(7, 3, 5, 'Chicken Rice large', '../resource/img/product/product1.png\r\n', 530, 0, 1, 1),
(8, 2, 2, 'Nasi goreng Rice', '../resource/img/product/product1.png\r\n', 430, 0, 1, 1),
(9, 3, 5, 'Biriani', '../resource/img/product/biriani.jpg\r\n', 230, 0, 1, 1),
(10, 2, 2, 'Nasi goreng Rice', '../resource/img/product/product1.png\r\n', 430, 0, 1, 1),
(11, 3, 5, 'Parata', '../resource/img/product/parata.jpg\r\n', 65, 0, 0, 1),
(12, 4, 3, 'Idli', '../resource/img/product/idli.jpg\r\n', 130, 0, 1, 1),
(13, 4, 3, 'Paper Dosai', '../resource/img/product/paperdosai.jpg\r\n', 260, 0, 1, 1),
(14, 4, 3, 'Pani Puri', '../resource/img/product/panipuri.jpg\r\n', 150, 0, 1, 1),
(15, 4, 3, 'Puri', '../resource/img/product/puri.jpg\r\n', 170, 0, 1, 1),
(29, 1, 21, 'pastry', '../resource/img/product/pastry.jpg', 65, 1, 0, 0),
(30, 1, 21, 'rolls', '../resource/img/product/rolls.jpg', 50, 1, 0, 0),
(31, 1, 21, 'sandwich', '../resource/img/product/sandwich.jpg', 100, 0, 1, 0),
(33, 1, 21, 'burger', '../resource/img/product/burger.jpg', 70, 0, 1, 0),
(34, 1, 21, 'patties', '../resource/img/product/patties.jpg', 45, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `request_id` int(100) NOT NULL,
  `student_email` varchar(40) NOT NULL,
  `BOid` int(100) NOT NULL,
  `B_post_id` int(100) NOT NULL,
  `message` varchar(100) NOT NULL,
  `isAccept` tinyint(1) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request`
--

INSERT INTO `request` (`request_id`, `student_email`, `BOid`, `B_post_id`, `message`, `isAccept`, `date`) VALUES
(101, 'diyana@gmail.com', 3, 1, '', 3, '2020-11-23 17:02:57'),
(102, 'ramya@gmail.com', 3, 1, '', 3, '2020-11-23 17:07:57'),
(103, 'thinuli@gmail.com', 3, 1, '', 3, '2020-11-23 17:11:53'),
(104, 'yamuna@gmail.com', 3, 1, '', 3, '2020-11-23 17:15:42'),
(107, '2018cs139@stu.ucsc.cmb.ac.lk', 3, 1, '', 6, '2020-11-25 08:15:04'),
(120, 'reshmikaediriweera1997@gmail.com', 3, 1, '', 1, '2020-12-16 20:42:22'),
(121, 'nelara@gmail.com', 3, 1, '', 3, '2020-12-16 20:58:16'),
(122, 'banda@gmail.com', 3, 1, '', 3, '2020-12-18 19:32:03');

-- --------------------------------------------------------

--
-- Table structure for table `set_notification`
--

CREATE TABLE `set_notification` (
  `set_id` int(11) NOT NULL,
  `from_BOid` int(11) NOT NULL,
  `to_Bid` int(11) NOT NULL,
  `setdate` datetime NOT NULL DEFAULT current_timestamp(),
  `occurance` int(11) NOT NULL,
  `massage` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `Reg_id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `token` varchar(100) NOT NULL,
  `level` varchar(50) NOT NULL DEFAULT 'student',
  `NIC` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `user_accepted` int(2) NOT NULL,
  `profileimage` text NOT NULL DEFAULT '../resource/Images/a.jpg'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`Reg_id`, `email`, `first_name`, `last_name`, `password`, `token`, `level`, `NIC`, `address`, `user_accepted`, `profileimage`) VALUES
(28, 'reshmikaediriweera1997@gmail.com', 'Reshmika', 'Ishan', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'e07a3d7cfe211c5f3d7bf716aeb1a413a02227f09a71b064f73e70dfa8026da0f36650c963e14a8357851655cbe33f2cf42c', 'student', '971741546V', '', 1, '../resource/Images/d.jpg'),
(29, '2018cs139@stu.ucsc.cmb.ac.lk', 'Ishan', 'Ediriweera', '7c4a8d09ca3762af61e59520943dc26494f8941b', '253ebf85d687a348f527b5cfafa2817273aeab6fa50ca2e1a497fe2cb351b47c91bc6d07e80b614ed69bd09da186fd90320c', 'student', '960900918v', '', 1, '../resource/Images/d.jpg'),
(38, 'nimashasupunpraba@gmail.com', 'Nimashaa', 'Supunprabha', '7c4a8d09ca3762af61e59520943dc26494f8941b', '0cae3d20b93991b9b0165535046ce915a354fbf2dd3b44eaf172ee09cd50ed172c8f64e352c089e3f8ac9a51f4cb7c5af9cc', 'student', '964455666v', 'dalthara', 1, '../resource/Images/a.jpg'),
(39, 'diyana@gmail.com', 'Diyana', 'Fernando', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ff71a4724331ffdefe84434f8cce3ab1593094d8c766535064868846a6e6aa3a4000076417126684a0c96a0da9566f3e4649', 'student', '970920918v', '', 3, '../resource/Images/b.jpg'),
(40, 'ramya@gmail.com', 'Ramya', 'Rajapaksha', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ccfe9538e548b63dfe9bf4fe536b6f959c585b6716f6d41ab6fd3fc401a0e13cac0e9f31fefd194f76f9aecd8dd753f2b995', 'student', '966661788v', '', 3, '../resource/Images/a.jpg'),
(41, 'thinuli@gmail.com', 'Thinuli', 'Gothatuwa', '7c4a8d09ca3762af61e59520943dc26494f8941b', '249136a000c90d67ab6f1ced3604c7879dd4d70c109d810255d5c2eb13d433097ff08a57022b92af46801a7715d8fe0b627d', 'student', '966611444v', '', 3, '../resource/Images/a.jpg'),
(42, 'yamuna@gmail.com', 'Yamuna', 'Rajakaruna', '7c4a8d09ca3762af61e59520943dc26494f8941b', '10d66b29e2f3faed7777581e3d06f7ec46471c02b0d8fa3e48a5f69909fa846a414bf520753cfcf109da02efb11493e7ad79', 'student', '966511965v', '', 3, '../resource/Images/a.jpg'),
(43, 'dilshan@gmail.com', 'dilshan', 'lakshitha', '7c4a8d09ca3762af61e59520943dc26494f8941b', '09e629a6f8776b583f8da63422ca519f8f668af9f39f05c246d8039218340552057c7ea67a3e56974beea5c9629b7c67457b', 'student', '940900918v', '', 1, '../resource/Images/c.jpg'),
(44, 'nelara@gmail.com', 'nelara', 'sanviduni', '7c4a8d09ca3762af61e59520943dc26494f8941b', '9d08b53cdd50e460431b197b9bc37716347cfcc29a4bbf73d9c2236a98b167a59bff21ac5814251ef57bfb0f4674f1c2db63', 'student', '970900918v', '', 1, '../resource/Images/a.jpg'),
(45, 'banda@gmail.com', 'banda', 'aaa', '7c4a8d09ca3762af61e59520943dc26494f8941b', 'ce4c43a7050c8dc1a6b0d07b8abcb8e1bd167ad132cb78cf4ebf943eac4e6b4f19a54a134c161a7d6c377656c3a56e27da25', 'student', '960900988v', '', 3, '../resource/Images/d.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `administrator`
--
ALTER TABLE `administrator`
  ADD PRIMARY KEY (`a_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boarder`
--
ALTER TABLE `boarder`
  ADD PRIMARY KEY (`Bid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `boarderparent`
--
ALTER TABLE `boarderparent`
  ADD PRIMARY KEY (`Pid`),
  ADD KEY `Bid` (`Bid`);

--
-- Indexes for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  ADD PRIMARY KEY (`BOid`);

--
-- Indexes for table `boarding_post`
--
ALTER TABLE `boarding_post`
  ADD PRIMARY KEY (`B_post_id`),
  ADD KEY `BOid` (`BOid`);
ALTER TABLE `boarding_post` ADD FULLTEXT KEY `category` (`category`,`girlsBoys`,`image`,`house_num`,`lane`,`city`,`district`,`description`);

--
-- Indexes for table `complain_boarding`
--
ALTER TABLE `complain_boarding`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `B_post_id` (`B_post_id`);

--
-- Indexes for table `complain_food`
--
ALTER TABLE `complain_food`
  ADD KEY `a_id` (`a_id`),
  ADD KEY `Bid` (`Bid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `confirm_rent`
--
ALTER TABLE `confirm_rent`
  ADD PRIMARY KEY (`rent_id`),
  ADD KEY `Bid` (`Bid`),
  ADD KEY `BOid` (`BOid`),
  ADD KEY `B_post_id` (`B_post_id`),
  ADD KEY `confirm_rent_ibfk_4` (`request_id`);

--
-- Indexes for table `confirm_rent_document`
--
ALTER TABLE `confirm_rent_document`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `BOid` (`BOid`),
  ADD KEY `B_post_id` (`B_post_id`);

--
-- Indexes for table `food_post`
--
ALTER TABLE `food_post`
  ADD PRIMARY KEY (`F_post_id`) USING BTREE,
  ADD KEY `FSid` (`FSid`);

--
-- Indexes for table `food_request`
--
ALTER TABLE `food_request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `F-post-id` (`F_post_id`),
  ADD KEY `order_id` (`order_id`);

--
-- Indexes for table `food_supplier`
--
ALTER TABLE `food_supplier`
  ADD PRIMARY KEY (`FSid`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
  ADD PRIMARY KEY (`imgid`),
  ADD KEY `Test` (`boid`),
  ADD KEY `Test1` (`postid`);

--
-- Indexes for table `livesupport`
--
ALTER TABLE `livesupport`
  ADD PRIMARY KEY (`cId`);

--
-- Indexes for table `longterm`
--
ALTER TABLE `longterm`
  ADD PRIMARY KEY (`ltID`),
  ADD KEY `fk1` (`order_id`);

--
-- Indexes for table `notification`
--
ALTER TABLE `notification`
  ADD PRIMARY KEY (`noID`);

--
-- Indexes for table `notifications`
--
ALTER TABLE `notifications`
  ADD PRIMARY KEY (`notify_id`);

--
-- Indexes for table `ordereditems`
--
ALTER TABLE `ordereditems`
  ADD PRIMARY KEY (`order_id`,`product_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `orderfoodboarder`
--
ALTER TABLE `orderfoodboarder`
  ADD KEY `Bid` (`Bid`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `orderfoodboardingowner`
--
ALTER TABLE `orderfoodboardingowner`
  ADD KEY `BOid` (`BOid`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F_post_id` (`F_post_id`);

--
-- Indexes for table `order_item`
--
ALTER TABLE `order_item`
  ADD PRIMARY KEY (`itemID`),
  ADD KEY `fk2` (`order_id`);

--
-- Indexes for table `payfee`
--
ALTER TABLE `payfee`
  ADD PRIMARY KEY (`payid`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `FSid` (`FSid`),
  ADD KEY `F-post-id` (`F_post_id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`request_id`),
  ADD KEY `fk_boid` (`BOid`),
  ADD KEY `fk_b_post_id` (`B_post_id`);

--
-- Indexes for table `set_notification`
--
ALTER TABLE `set_notification`
  ADD PRIMARY KEY (`set_id`),
  ADD KEY `from_BOid` (`from_BOid`),
  ADD KEY `to_Bid` (`to_Bid`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`Reg_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `administrator`
--
ALTER TABLE `administrator`
  MODIFY `a_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `boarder`
--
ALTER TABLE `boarder`
  MODIFY `Bid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `boarderparent`
--
ALTER TABLE `boarderparent`
  MODIFY `Pid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `boardings_owner`
--
ALTER TABLE `boardings_owner`
  MODIFY `BOid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `boarding_post`
--
ALTER TABLE `boarding_post`
  MODIFY `B_post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `confirm_rent`
--
ALTER TABLE `confirm_rent`
  MODIFY `rent_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `food_post`
--
ALTER TABLE `food_post`
  MODIFY `F_post_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `food_request`
--
ALTER TABLE `food_request`
  MODIFY `request_id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=793;

--
-- AUTO_INCREMENT for table `food_supplier`
--
ALTER TABLE `food_supplier`
  MODIFY `FSid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
  MODIFY `imgid` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `livesupport`
--
ALTER TABLE `livesupport`
  MODIFY `cId` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;

--
-- AUTO_INCREMENT for table `longterm`
--
ALTER TABLE `longterm`
  MODIFY `ltID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=590;

--
-- AUTO_INCREMENT for table `notification`
--
ALTER TABLE `notification`
  MODIFY `noID` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `notifications`
--
ALTER TABLE `notifications`
  MODIFY `notify_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_item`
--
ALTER TABLE `order_item`
  MODIFY `itemID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=316;

--
-- AUTO_INCREMENT for table `payfee`
--
ALTER TABLE `payfee`
  MODIFY `payid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `request_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=123;

--
-- AUTO_INCREMENT for table `set_notification`
--
ALTER TABLE `set_notification`
  MODIFY `set_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `Reg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `boarderparent`
--
ALTER TABLE `boarderparent`
  ADD CONSTRAINT `fk_bparent` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `boarding_post`
--
ALTER TABLE `boarding_post`
  ADD CONSTRAINT `boarding_post_ibfk_1` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`);

--
-- Constraints for table `complain_boarding`
--
ALTER TABLE `complain_boarding`
  ADD CONSTRAINT `complain_boarding_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `complain_boarding_ibfk_2` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `complain_food`
--
ALTER TABLE `complain_food`
  ADD CONSTRAINT `complain_food_ibfk_1` FOREIGN KEY (`a_id`) REFERENCES `administrator` (`a_id`),
  ADD CONSTRAINT `complain_food_ibfk_2` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `complain_food_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `confirm_rent`
--
ALTER TABLE `confirm_rent`
  ADD CONSTRAINT `confirm_rent_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `confirm_rent_ibfk_2` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `confirm_rent_ibfk_3` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`),
  ADD CONSTRAINT `confirm_rent_ibfk_4` FOREIGN KEY (`request_id`) REFERENCES `request` (`request_id`);

--
-- Constraints for table `confirm_rent_document`
--
ALTER TABLE `confirm_rent_document`
  ADD CONSTRAINT `confirm_rent_document_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `confirm_rent_document_ibfk_2` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `confirm_rent_document_ibfk_3` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `food_post`
--
ALTER TABLE `food_post`
  ADD CONSTRAINT `food_post_ibfk_1` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`);

--
-- Constraints for table `food_request`
--
ALTER TABLE `food_request`
  ADD CONSTRAINT `food_request_ibfk_1` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `image`
--
ALTER TABLE `image`
  ADD CONSTRAINT `Test` FOREIGN KEY (`boid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `Test1` FOREIGN KEY (`postid`) REFERENCES `boarding_post` (`B_post_id`);

--
-- Constraints for table `ordereditems`
--
ALTER TABLE `ordereditems`
  ADD CONSTRAINT `ordereditems_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product` (`id`);

--
-- Constraints for table `orderfoodboarder`
--
ALTER TABLE `orderfoodboarder`
  ADD CONSTRAINT `orderfoodboarder_ibfk_1` FOREIGN KEY (`Bid`) REFERENCES `boarder` (`Bid`),
  ADD CONSTRAINT `orderfoodboarder_ibfk_2` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`),
  ADD CONSTRAINT `orderfoodboarder_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `orderfoodboardingowner`
--
ALTER TABLE `orderfoodboardingowner`
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_1` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_2` FOREIGN KEY (`FSid`) REFERENCES `food_supplier` (`FSid`),
  ADD CONSTRAINT `orderfoodboardingowner_ibfk_3` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `order_item`
--
ALTER TABLE `order_item`
  ADD CONSTRAINT `fk2` FOREIGN KEY (`order_id`) REFERENCES `food_request` (`order_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`F_post_id`) REFERENCES `food_post` (`F_post_id`);

--
-- Constraints for table `request`
--
ALTER TABLE `request`
  ADD CONSTRAINT `fk_b_post_id` FOREIGN KEY (`B_post_id`) REFERENCES `boarding_post` (`B_post_id`),
  ADD CONSTRAINT `fk_boid` FOREIGN KEY (`BOid`) REFERENCES `boardings_owner` (`BOid`);

--
-- Constraints for table `set_notification`
--
ALTER TABLE `set_notification`
  ADD CONSTRAINT `set_notification_ibfk_1` FOREIGN KEY (`from_BOid`) REFERENCES `boardings_owner` (`BOid`),
  ADD CONSTRAINT `set_notification_ibfk_2` FOREIGN KEY (`to_Bid`) REFERENCES `boarder` (`Bid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
