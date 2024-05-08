-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 03:06 PM
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
-- Database: `mydb`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password_hash` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `username`, `password_hash`) VALUES
(1, 'admin1', '$2y$10$Y7EWRGs3cw4Hx2Dnx7bPRu59k5dqUjUAwi0x2MOdET9bdy0LiQvzm'),
(2, 'admin2', '$2y$10$ZIldSIvqeOmft4ORq5MAjuttW47rymuTjl7NYit4lUwMft4HJ04Ty');

-- --------------------------------------------------------

--
-- Table structure for table `donations`
--

CREATE TABLE `donations` (
  `id` int(11) NOT NULL,
  `campaign_id` int(11) DEFAULT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `phone_number` varchar(20) DEFAULT NULL,
  `amount` decimal(10,2) NOT NULL,
  `donation_time` timestamp NOT NULL DEFAULT current_timestamp(),
  `campaign_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `donations`
--

INSERT INTO `donations` (`id`, `campaign_id`, `name`, `email`, `phone_number`, `amount`, `donation_time`, `campaign_name`) VALUES
(1, 1, 'Rahul Sharma', 'rahul.sharma@example.com', '916751202702', 500.00, '2024-02-25 17:36:05', 'pani hati seva'),
(2, 2, 'Anita Gupta', 'anita.gupta@example.com', '919302734034', 5000.00, '2024-02-25 18:03:47', 'gau seva'),
(3, 3, 'Rahul Sharma', 'rahul.sharma@example.com', '916941621400', 500.00, '2024-02-25 18:07:44', 'ram navmi'),
(4, 3, 'Amit Singh', 'amit.singh@example.com', '917283937951', 10000.00, '2024-02-25 18:08:27', 'ram navmi'),
(5, 4, 'Priya Patel', 'priya.patel@example.com', '917377888301', 200.00, '2024-02-25 18:12:22', 'Hanuman Jayanti'),
(6, 4, 'Amit Singh', 'amit.singh@example.com', '917170078747', 300.00, '2024-02-26 08:12:41', 'Hanuman Jayanti'),
(7, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '916922450738', 5.00, '2024-02-26 08:12:58', 'Hanuman Jayanti'),
(8, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917387675703', 34.00, '2024-02-26 08:13:30', 'Hanuman Jayanti'),
(9, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918645976737', 3.00, '2024-02-26 08:13:54', 'Hanuman Jayanti'),
(10, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917059006575', 32.00, '2024-02-26 08:14:14', 'Hanuman Jayanti'),
(11, 4, 'Priya Patel', 'priya.patel@example.com', '916099403897', 500.00, '2024-02-26 08:27:36', 'Hanuman Jayanti'),
(12, 4, 'Amit Singh', 'amit.singh@example.com', '918602110570', 40.00, '2024-02-27 15:58:49', 'Hanuman Jayanti'),
(13, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '917082136681', 50.00, '2024-02-28 10:19:20', 'Hanuman Jayanti'),
(14, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '916959247882', 1.00, '2024-02-28 10:22:01', 'Hanuman Jayanti'),
(15, 4, 'Kavita Verma', 'kavita.verma@example.com', '918710322386', 1.00, '2024-03-04 17:18:31', 'Hanuman Jayanti'),
(16, 4, 'Pooja Shah', 'pooja.shah@example.com', '919373822894', 1.00, '2024-03-04 17:19:53', 'Hanuman Jayanti'),
(17, 4, 'Kavita Verma', 'kavita.verma@example.com', '917226518274', 2.00, '2024-03-05 19:20:41', 'Hanuman Jayanti'),
(18, 4, 'Priya Patel', 'priya.patel@example.com', '919696203149', 21.00, '2024-03-05 20:46:06', 'Hanuman Jayanti'),
(19, 3, 'Rahul Sharma', 'rahul.sharma@example.com', '919425087451', 1.00, '2024-03-05 23:33:35', 'ram navmi'),
(20, 3, 'Pooja Shah', 'pooja.shah@example.com', '917466716101', 2.00, '2024-03-05 23:35:47', 'ram navmi'),
(21, 3, 'Deepika Sharma', 'deepika.sharma@example.com', '916793685830', 2.00, '2024-03-05 23:46:36', 'ram navmi'),
(22, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '919128352702', 2.00, '2024-03-05 23:56:00', 'ram navmi'),
(23, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '918079255046', 2.00, '2024-03-05 23:58:19', 'ram navmi'),
(24, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '918484728919', 2.00, '2024-03-05 23:59:33', 'Hanuman Jayanti'),
(25, 3, 'Amit Singh', 'amit.singh@example.com', '918060738690', 1.00, '2024-03-06 09:44:57', 'ram navmi'),
(26, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918105206837', 2.00, '2024-03-06 21:26:11', 'Hanuman Jayanti'),
(27, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '919837896636', 1.00, '2024-03-06 21:34:09', 'Hanuman Jayanti'),
(28, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919256420451', 1.00, '2024-03-06 21:34:58', 'Hanuman Jayanti'),
(29, 4, 'Priya Patel', 'priya.patel@example.com', '916445945047', 1.00, '2024-03-06 21:35:44', 'Hanuman Jayanti'),
(30, 4, 'Priya Patel', 'priya.patel@example.com', '917287656759', 1.00, '2024-03-06 21:36:09', 'Hanuman Jayanti'),
(31, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '917078375846', 1.00, '2024-03-06 21:36:35', 'Hanuman Jayanti'),
(32, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919465780746', 1.00, '2024-03-06 21:38:07', 'Hanuman Jayanti'),
(33, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '919938715259', 1.00, '2024-03-06 21:41:31', 'Hanuman Jayanti'),
(34, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918536297074', 1.00, '2024-03-06 21:42:33', 'Hanuman Jayanti'),
(35, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '919816703176', 1.00, '2024-03-06 21:42:34', 'Hanuman Jayanti'),
(36, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '916406684270', 1.00, '2024-03-06 21:43:15', 'Hanuman Jayanti'),
(37, 4, 'Kavita Verma', 'kavita.verma@example.com', '916932481427', 1.00, '2024-03-06 21:45:49', 'Hanuman Jayanti'),
(38, 4, 'Amit Singh', 'amit.singh@example.com', '918965576298', 1.00, '2024-03-06 21:46:56', 'Hanuman Jayanti'),
(39, 4, 'Pooja Shah', 'pooja.shah@example.com', '919971984734', 1.00, '2024-03-06 21:47:14', 'Hanuman Jayanti'),
(40, 4, 'Pooja Shah', 'pooja.shah@example.com', '918698045970', 1.00, '2024-03-06 21:51:31', 'Hanuman Jayanti'),
(41, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '916459817666', 1.00, '2024-03-06 21:52:03', 'Hanuman Jayanti'),
(42, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '917151868508', 1.00, '2024-03-06 21:54:46', 'Hanuman Jayanti'),
(43, 4, 'Kavita Verma', 'kavita.verma@example.com', '918760712489', 1.00, '2024-03-06 21:55:10', 'Hanuman Jayanti'),
(44, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '916633217663', 1.00, '2024-03-06 21:55:23', 'Hanuman Jayanti'),
(45, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919547696158', 1.00, '2024-03-06 21:56:05', 'Hanuman Jayanti'),
(46, 4, 'Amit Singh', 'amit.singh@example.com', '919503667008', 1.00, '2024-03-06 21:56:28', 'Hanuman Jayanti'),
(47, 4, 'Anita Gupta', 'anita.gupta@example.com', '916068074649', 1.00, '2024-03-06 22:05:36', 'Hanuman Jayanti'),
(48, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '917661802491', 1.00, '2024-03-09 12:58:49', 'Hanuman Jayanti'),
(49, 4, 'Kavita Verma', 'kavita.verma@example.com', '916932297025', 2.00, '2024-03-09 13:03:58', 'Hanuman Jayanti'),
(50, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '917187004070', 1.00, '2024-03-10 15:17:28', 'Hanuman Jayanti'),
(51, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919838351164', 2.00, '2024-03-10 15:18:02', 'Hanuman Jayanti'),
(52, 4, 'Priya Patel', 'priya.patel@example.com', '919476158284', 1.00, '2024-03-10 21:58:00', 'Hanuman Jayanti'),
(53, 4, 'Anita Gupta', 'anita.gupta@example.com', '916073428685', 1.00, '2024-03-10 21:58:52', 'Hanuman Jayanti'),
(54, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '916787333452', 1.00, '2024-03-10 21:58:54', 'Hanuman Jayanti'),
(55, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '919684237883', 1.00, '2024-03-10 21:58:58', 'Hanuman Jayanti'),
(56, 4, 'Priya Patel', 'priya.patel@example.com', '919689847507', 1.00, '2024-03-10 22:02:25', 'Hanuman Jayanti'),
(57, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918909904587', 1.00, '2024-03-10 22:11:27', 'Hanuman Jayanti'),
(58, 4, 'Anita Gupta', 'anita.gupta@example.com', '917493314869', 1.00, '2024-03-10 22:14:32', 'Hanuman Jayanti'),
(59, 4, 'Anita Gupta', 'anita.gupta@example.com', '918883183590', 1.00, '2024-03-10 22:18:03', 'Hanuman Jayanti'),
(60, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '916917058969', 1.00, '2024-03-10 22:21:42', 'Hanuman Jayanti'),
(61, 4, 'Priya Patel', 'priya.patel@example.com', '916034353414', 1.00, '2024-03-10 22:23:44', 'Hanuman Jayanti'),
(62, 4, 'Pooja Shah', 'pooja.shah@example.com', '917647091836', 1.00, '2024-03-10 22:26:37', 'Hanuman Jayanti'),
(63, 4, 'Pooja Shah', 'pooja.shah@example.com', '917931067846', 1.00, '2024-03-10 22:33:45', 'Hanuman Jayanti'),
(64, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918724590868', 1.00, '2024-03-10 22:36:24', 'Hanuman Jayanti'),
(65, 4, 'Kavita Verma', 'kavita.verma@example.com', '917236864917', 1.00, '2024-03-10 22:37:33', 'Hanuman Jayanti'),
(66, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '916581785936', 2.00, '2024-03-10 22:48:48', 'Hanuman Jayanti'),
(67, 4, 'Priya Patel', 'priya.patel@example.com', '916633208290', 2.00, '2024-03-10 22:56:33', 'Hanuman Jayanti'),
(68, 4, 'Kavita Verma', 'kavita.verma@example.com', '916002777535', 2.00, '2024-03-10 23:10:30', 'Hanuman Jayanti'),
(69, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917307474918', 2.00, '2024-03-10 23:13:47', 'Hanuman Jayanti'),
(70, 4, 'Kavita Verma', 'kavita.verma@example.com', '919750435758', 2.00, '2024-03-10 23:14:52', 'Hanuman Jayanti'),
(71, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '917938651452', 2.00, '2024-03-10 23:16:06', 'Hanuman Jayanti'),
(72, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '918669301402', 2.00, '2024-03-10 23:17:24', 'Hanuman Jayanti'),
(73, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '919483941141', 2.00, '2024-03-10 23:22:43', 'Hanuman Jayanti'),
(74, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918899365582', 2.00, '2024-03-10 23:23:55', 'Hanuman Jayanti'),
(75, 4, 'Kavita Verma', 'kavita.verma@example.com', '919669388852', 2.00, '2024-03-10 23:24:52', 'Hanuman Jayanti'),
(76, 4, 'Pooja Shah', 'pooja.shah@example.com', '917504150187', 2.00, '2024-03-10 23:25:30', 'Hanuman Jayanti'),
(77, 4, 'Priya Patel', 'priya.patel@example.com', '918191602227', 2.00, '2024-03-10 23:29:39', 'Hanuman Jayanti'),
(78, 4, 'Priya Patel', 'priya.patel@example.com', '918592426505', 2.00, '2024-03-10 23:30:43', 'Hanuman Jayanti'),
(79, 4, 'Pooja Shah', 'pooja.shah@example.com', '918928592193', 2.00, '2024-03-10 23:32:03', 'Hanuman Jayanti'),
(80, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '917163738902', 2.00, '2024-03-10 23:32:54', 'Hanuman Jayanti'),
(81, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918788951205', 2.00, '2024-03-10 23:37:14', 'Hanuman Jayanti'),
(82, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '916253894582', 2.00, '2024-03-10 23:38:07', 'Hanuman Jayanti'),
(83, 4, 'Priya Patel', 'priya.patel@example.com', '918862277635', 2.00, '2024-03-11 13:45:21', 'Hanuman Jayanti'),
(84, 4, 'Anita Gupta', 'anita.gupta@example.com', '917428051426', 2.00, '2024-03-11 13:45:47', 'Hanuman Jayanti'),
(85, 4, 'Pooja Shah', 'pooja.shah@example.com', '919375664307', 2.00, '2024-03-11 13:52:46', 'Hanuman Jayanti'),
(86, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '916277026369', 2.00, '2024-03-11 13:58:09', 'Hanuman Jayanti'),
(87, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919094125925', 2.00, '2024-03-11 14:04:13', 'Hanuman Jayanti'),
(88, 4, 'Amit Singh', 'amit.singh@example.com', '916462044111', 2.00, '2024-03-11 14:04:39', 'Hanuman Jayanti'),
(89, 4, 'Pooja Shah', 'pooja.shah@example.com', '916990529318', 2.00, '2024-03-11 14:07:53', 'Hanuman Jayanti'),
(90, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '916534298139', 2.00, '2024-03-11 14:14:03', 'Hanuman Jayanti'),
(91, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918172603509', 2.00, '2024-03-11 14:15:47', 'Hanuman Jayanti'),
(92, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '919041481509', 2.00, '2024-03-11 14:16:55', 'Hanuman Jayanti'),
(93, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '919199027396', 2.00, '2024-03-11 14:18:43', 'Hanuman Jayanti'),
(94, 4, 'Amit Singh', 'amit.singh@example.com', '918771484115', 2.00, '2024-03-11 14:20:03', 'Hanuman Jayanti'),
(95, 4, 'Anita Gupta', 'anita.gupta@example.com', '917882912949', 2.00, '2024-03-11 14:22:14', 'Hanuman Jayanti'),
(96, 4, 'Amit Singh', 'amit.singh@example.com', '917623970490', 2.00, '2024-03-11 14:22:34', 'Hanuman Jayanti'),
(97, 4, 'Anita Gupta', 'anita.gupta@example.com', '918382399925', 2.00, '2024-03-11 14:23:12', 'Hanuman Jayanti'),
(98, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '918596431510', 2.00, '2024-03-11 14:41:40', 'Hanuman Jayanti'),
(99, 4, 'Kavita Verma', 'kavita.verma@example.com', '916683668286', 2.00, '2024-03-11 14:42:29', 'Hanuman Jayanti'),
(100, 4, 'Anita Gupta', 'anita.gupta@example.com', '917478688498', 2.00, '2024-03-11 14:43:36', 'Hanuman Jayanti'),
(101, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918236911452', 2.00, '2024-03-11 14:45:39', 'Hanuman Jayanti'),
(102, 4, 'Amit Singh', 'amit.singh@example.com', '918477454209', 2.00, '2024-03-11 23:49:45', 'Hanuman Jayanti'),
(103, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919387007269', 2.00, '2024-03-11 23:51:45', 'Hanuman Jayanti'),
(104, 3, 'Rahul Sharma', 'rahul.sharma@example.com', '917906279316', 2.00, '2024-03-16 17:09:42', 'ram navmi'),
(105, 3, 'Anita Gupta', 'anita.gupta@example.com', '919954415115', 2.00, '2024-03-16 17:13:12', 'ram navmi'),
(106, 4, 'Pooja Shah', 'pooja.shah@example.com', '919829626246', 2.00, '2024-03-16 18:02:52', 'Hanuman Jayanti'),
(107, 3, 'Kavita Verma', 'kavita.verma@example.com', '918129397822', 2.00, '2024-03-17 14:01:20', 'ram navmi'),
(108, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '919657606457', 2.00, '2024-03-19 16:21:15', 'ram navmi'),
(109, 4, 'Kavita Verma', 'kavita.verma@example.com', '919144453309', 2.00, '2024-03-19 16:21:51', 'Hanuman Jayanti'),
(110, 3, 'Suresh Kumar', 'suresh.kumar@example.com', '917485449757', 2000.00, '2024-03-19 16:38:09', 'ram navmi'),
(111, 3, 'Suresh Kumar', 'suresh.kumar@example.com', '918123779264', 1764.00, '2024-03-19 20:09:00', 'ram navmi'),
(112, 4, 'Kavita Verma', 'kavita.verma@example.com', '916563020027', 1500.00, '2024-03-21 00:17:40', 'Hanuman Jayanti'),
(113, 4, 'Pooja Shah', 'pooja.shah@example.com', '918966157577', 1500.00, '2024-03-21 00:31:55', 'Hanuman Jayanti'),
(114, 4, 'Amit Singh', 'amit.singh@example.com', '918794521415', 10000.00, '2024-03-21 00:32:23', 'Hanuman Jayanti'),
(115, 4, 'Kavita Verma', 'kavita.verma@example.com', '918893747531', 20000.00, '2024-03-21 14:19:17', 'Hanuman Jayanti'),
(116, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919941011131', 8000.00, '2024-03-21 18:56:39', 'Hanuman Jayanti'),
(117, 3, 'Deepika Sharma', 'deepika.sharma@example.com', '918863289844', 15000.00, '2024-03-22 14:39:45', 'ram navmi'),
(118, 3, 'Deepika Sharma', 'deepika.sharma@example.com', '916143267254', 80.00, '2024-03-22 15:47:22', 'ram navmi'),
(119, 3, 'Priya Patel', 'priya.patel@example.com', '919274267224', 80.00, '2024-03-23 18:00:01', 'ram navmi'),
(120, 23, 'Pooja Shah', 'pooja.shah@example.com', '918570223962', 30000.00, '2024-03-26 15:35:57', 'Akshaya Daan Seva'),
(121, 3, 'Amit Singh', 'amit.singh@example.com', '917506089338', 30000.00, '2024-03-26 15:36:54', 'ram navmi'),
(122, 22, 'Priya Patel', 'priya.patel@example.com', '917573826372', 3000.00, '2024-03-27 18:33:45', 'Sri Gauranga Seva'),
(123, 25, 'Priya Patel', 'priya.patel@example.com', '919260887400', 500.00, '2024-03-28 23:55:36', 'Janmashtami Seva'),
(124, 25, 'Anita Gupta', 'anita.gupta@example.com', '916550691586', 2500.00, '2024-03-28 23:55:52', 'Janmashtami Seva'),
(125, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '916157789741', 2500.00, '2024-03-28 23:56:02', 'Janmashtami Seva'),
(126, 24, 'Kavita Verma', 'kavita.verma@example.com', '916033977815', 2500.00, '2024-03-28 23:56:11', 'Rath Yatra Mumbai'),
(127, 24, 'Priya Patel', 'priya.patel@example.com', '918598630619', 4324.00, '2024-03-28 23:56:24', 'Rath Yatra Mumbai'),
(128, 24, 'Amit Singh', 'amit.singh@example.com', '918954996966', 600.00, '2024-03-30 14:50:15', 'Rath Yatra Mumbai'),
(129, 25, 'Pooja Shah', 'pooja.shah@example.com', '919627983230', 600.00, '2024-04-01 18:17:34', 'Janmashtami Seva'),
(130, 22, 'Rahul Sharma', 'rahul.sharma@example.com', '919985247838', 600.00, '2024-04-01 18:22:58', 'Sri Gauranga Seva'),
(131, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '916499977236', 1000.00, '2024-04-01 20:18:39', 'Rath Yatra Mumbai'),
(132, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '919629046911', 1000.00, '2024-04-01 20:27:25', 'Janmashtami Seva'),
(133, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '917469231803', 1200.00, '2024-04-01 20:28:45', 'Janmashtami Seva'),
(134, 24, 'Anita Gupta', 'anita.gupta@example.com', '916228986682', 1200.00, '2024-04-01 23:32:50', 'Rath Yatra Mumbai'),
(135, 24, 'Pooja Shah', 'pooja.shah@example.com', '917104884560', 1200.00, '2024-04-01 23:44:17', 'Rath Yatra Mumbai'),
(136, 22, 'Kavita Verma', 'kavita.verma@example.com', '918946771675', 1200.00, '2024-04-02 00:04:58', 'Sri Gauranga Seva'),
(137, 25, 'Kavita Verma', 'kavita.verma@example.com', '917625998847', 1200.00, '2024-04-02 00:05:42', 'Janmashtami Seva'),
(138, 25, 'Anita Gupta', 'anita.gupta@example.com', '919623596610', 5000.00, '2024-04-05 07:40:39', 'Janmashtami Seva'),
(139, 22, 'Anita Gupta', 'anita.gupta@example.com', '918557396720', 5000.00, '2024-04-05 08:04:08', 'Sri Gauranga Seva'),
(140, 25, 'Amit Singh', 'amit.singh@example.com', '917363517161', 5000.00, '2024-04-05 14:30:19', 'Janmashtami Seva'),
(141, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '917363215520', 500.00, '2024-04-05 14:36:50', 'Rath Yatra Mumbai'),
(142, 22, 'Priya Patel', 'priya.patel@example.com', '918506334879', 550.00, '2024-04-05 17:04:53', 'Sri Gauranga Seva'),
(143, 25, 'Pooja Shah', 'pooja.shah@example.com', '919269000102', 550.00, '2024-04-07 15:08:12', 'Janmashtami Seva'),
(144, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '918084584545', 550.00, '2024-04-09 16:16:31', 'Rath Yatra Mumbai'),
(145, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '917942901701', 550.00, '2024-04-09 16:16:46', 'Rath Yatra Mumbai'),
(146, 25, 'Manoj Kumar', 'manoj.kumar@example.com', '917535573755', 550.00, '2024-04-09 16:17:01', 'Janmashtami Seva'),
(147, 24, 'Pooja Shah', 'pooja.shah@example.com', '917809836170', 550.00, '2024-04-09 16:17:10', 'Rath Yatra Mumbai'),
(148, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '917246802588', 550.00, '2024-04-09 16:17:27', 'Sri Gauranga Seva'),
(149, 25, 'Ajay Yadav', 'ajay.yadav@example.com', '919936628095', 550.00, '2024-04-09 16:17:39', 'Janmashtami Seva'),
(150, 25, 'Manoj Kumar', 'manoj.kumar@example.com', '917396000414', 5500.00, '2024-04-09 16:19:23', 'Janmashtami Seva'),
(151, 25, 'Anita Gupta', 'anita.gupta@example.com', '916518672983', 5500.00, '2024-04-10 18:03:11', 'Janmashtami Seva'),
(152, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '918273071773', 100.00, '2024-04-10 18:03:33', 'Rath Yatra Mumbai'),
(153, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '917223539263', 100.00, '2024-04-10 18:03:50', 'Rath Yatra Mumbai'),
(154, 24, 'Anita Gupta', 'anita.gupta@example.com', '917728735134', 100.00, '2024-04-10 18:04:07', 'Rath Yatra Mumbai'),
(155, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '918402367192', 100.00, '2024-04-10 18:04:21', 'Janmashtami Seva'),
(156, 22, 'Pooja Shah', 'pooja.shah@example.com', '917310255141', 100.00, '2024-04-10 18:04:35', 'Sri Gauranga Seva'),
(157, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '916606161438', 100.00, '2024-04-12 16:20:14', 'Sri Gauranga Seva'),
(158, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '917490826133', 2200.00, '2024-04-12 16:20:34', 'Janmashtami Seva'),
(159, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '916541742118', 2200.00, '2024-04-12 16:20:46', 'Rath Yatra Mumbai'),
(160, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '919144561600', 2200.00, '2024-04-12 16:20:57', 'Rath Yatra Mumbai'),
(161, 22, 'Ajay Yadav', 'ajay.yadav@example.com', '918529695711', 2200.00, '2024-04-12 16:21:08', 'Sri Gauranga Seva'),
(162, 24, 'Anita Gupta', 'anita.gupta@example.com', '919186855187', 200.00, '2024-04-12 16:21:21', 'Rath Yatra Mumbai'),
(163, 22, 'Manoj Kumar', 'manoj.kumar@example.com', '918726753993', 200.00, '2024-04-12 16:21:32', 'Sri Gauranga Seva'),
(164, 24, 'Kavita Verma', 'kavita.verma@example.com', '918028618873', 200.00, '2024-04-12 16:21:42', 'Rath Yatra Mumbai'),
(165, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '919372776135', 200.00, '2024-04-12 16:21:52', 'Rath Yatra Mumbai'),
(166, 25, 'Priya Patel', 'priya.patel@example.com', '917725960276', 200.00, '2024-04-14 07:27:47', 'Janmashtami Seva'),
(167, 25, 'Anita Gupta', 'anita.gupta@example.com', '917847121899', 200.00, '2024-04-14 10:36:59', 'Janmashtami Seva'),
(168, 25, 'Manoj Kumar', 'manoj.kumar@example.com', '919323996334', 200.00, '2024-04-14 11:03:14', 'Janmashtami Seva'),
(169, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '918166182931', 200.00, '2024-04-14 11:25:02', 'Janmashtami Seva'),
(170, 25, 'Ajay Yadav', 'ajay.yadav@example.com', '917142694554', 200.00, '2024-04-14 11:42:45', 'Janmashtami Seva'),
(171, 25, 'Amit Singh', 'amit.singh@example.com', '919906093716', 200.00, '2024-04-16 05:40:35', 'Janmashtami Seva'),
(172, 22, 'Kavita Verma', 'kavita.verma@example.com', '917165165178', 200.00, '2024-04-16 05:42:55', 'Sri Gauranga Seva'),
(173, 25, 'Pooja Shah', 'pooja.shah@example.com', '917089110592', 200.00, '2024-04-16 06:24:30', 'Janmashtami Seva'),
(174, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '918942938048', 200.00, '2024-04-16 06:24:39', 'Janmashtami Seva'),
(175, 25, 'Anita Gupta', 'anita.gupta@example.com', '916638356021', 200.00, '2024-04-16 06:24:46', 'Janmashtami Seva'),
(176, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '916657212799', 100.00, '2024-04-16 06:25:27', 'Rath Yatra Mumbai'),
(177, 25, 'Kavita Verma', 'kavita.verma@example.com', '919249128010', 100.00, '2024-04-16 06:25:43', 'Janmashtami Seva'),
(178, 25, 'Ajay Yadav', 'ajay.yadav@example.com', '917054789676', 100.00, '2024-04-16 06:26:02', 'Janmashtami Seva'),
(179, 24, 'Pooja Shah', 'pooja.shah@example.com', '919585507659', 1000.00, '2024-04-16 06:26:19', 'Rath Yatra Mumbai'),
(180, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '919907607444', 1000.00, '2024-04-16 06:26:30', 'Sri Gauranga Seva'),
(181, 25, 'Amit Singh', 'amit.singh@example.com', '917403425601', 3000.00, '2024-04-16 06:26:54', 'Janmashtami Seva'),
(182, 22, 'Manoj Kumar', 'manoj.kumar@example.com', '916275195748', 3000.00, '2024-04-16 06:27:08', 'Sri Gauranga Seva'),
(183, 22, 'Anita Gupta', 'anita.gupta@example.com', '919318946208', 3000.00, '2024-04-16 06:27:56', 'Sri Gauranga Seva'),
(184, 26, 'Amit Singh', 'amit.singh@example.com', '916682513642', 3000.00, '2024-04-17 02:21:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(185, 27, 'Kavita Verma', 'kavita.verma@example.com', '919398181758', 200.00, '2024-04-17 12:26:24', 'Poor Feeding'),
(186, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '916743536747', 220.00, '2024-04-17 12:35:10', 'Poor Feeding'),
(187, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '916355517444', 200.00, '2024-04-17 14:41:47', 'Poor Feeding'),
(188, 26, 'Pooja Shah', 'pooja.shah@example.com', '919970910940', 200.00, '2024-04-18 06:48:08', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(189, 26, 'Pooja Shah', 'pooja.shah@example.com', '917600953695', 200.00, '2024-04-18 06:48:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(190, 26, 'Anita Gupta', 'anita.gupta@example.com', '918849297754', 200.00, '2024-04-18 06:48:36', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(191, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '919090586356', 200.00, '2024-04-18 06:48:50', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(192, 26, 'Priya Patel', 'priya.patel@example.com', '918946481374', 200.00, '2024-04-18 06:49:04', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(193, 26, 'Priya Patel', 'priya.patel@example.com', '919806245258', 200.00, '2024-04-18 06:49:19', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(194, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '918610373347', 200.00, '2024-04-18 06:49:34', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(195, 26, 'Pooja Shah', 'pooja.shah@example.com', '919673028423', 200.00, '2024-04-18 06:50:24', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(196, 26, 'Pooja Shah', 'pooja.shah@example.com', '918772063811', 200.00, '2024-04-18 06:50:38', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(197, 26, 'Priya Patel', 'priya.patel@example.com', '918301185134', 200.00, '2024-04-18 06:51:03', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(198, 26, 'Priya Patel', 'priya.patel@example.com', '919818574414', 200.00, '2024-04-18 06:51:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(199, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '917371994702', 2200.00, '2024-04-18 06:52:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(200, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '919043028238', 2200.00, '2024-04-18 06:55:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(201, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '918797173065', 1.00, '2024-04-18 06:55:48', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(202, 24, 'Anita Gupta', 'anita.gupta@example.com', '919136541977', 1000.00, '2024-04-19 11:43:44', 'Rath Yatra Mumbai'),
(203, 24, 'Priya Patel', 'priya.patel@example.com', '919957918312', 1000.00, '2024-04-19 11:44:04', 'Rath Yatra Mumbai'),
(204, 24, 'Pooja Shah', 'pooja.shah@example.com', '917358304537', 1000.00, '2024-04-19 11:44:29', 'Rath Yatra Mumbai'),
(205, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '916711600947', 1000.00, '2024-04-19 11:44:54', 'Rath Yatra Mumbai'),
(206, 24, 'Amit Singh', 'amit.singh@example.com', '916569139051', 1000.00, '2024-04-19 11:45:19', 'Rath Yatra Mumbai'),
(207, 24, 'Priya Patel', 'priya.patel@example.com', '917946313842', 1000.00, '2024-04-19 11:45:36', 'Rath Yatra Mumbai'),
(208, 24, 'Priya Patel', 'priya.patel@example.com', '918756462307', 1000.00, '2024-04-19 11:45:54', 'Rath Yatra Mumbai'),
(209, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919968878114', 1000.00, '2024-04-19 11:46:16', 'Poor Feeding'),
(210, 26, 'Priya Patel', 'priya.patel@example.com', '919910196326', 1000.00, '2024-04-19 11:46:38', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(211, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '919029875178', 1000.00, '2024-04-19 11:46:59', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(212, 22, 'Anita Gupta', 'anita.gupta@example.com', '916314931024', 1000.00, '2024-04-22 13:41:09', 'Sri Gauranga Seva'),
(213, 22, 'Pooja Shah', 'pooja.shah@example.com', '919811089374', 1000.00, '2024-04-22 13:41:23', 'Sri Gauranga Seva'),
(214, 22, 'Manoj Kumar', 'manoj.kumar@example.com', '919116523138', 1000.00, '2024-04-22 13:41:41', 'Sri Gauranga Seva'),
(215, 22, 'Priya Patel', 'priya.patel@example.com', '919676082306', 10001.00, '2024-04-22 13:41:59', 'Sri Gauranga Seva'),
(216, 26, 'Pooja Shah', 'pooja.shah@example.com', '918489305476', 10001.00, '2024-04-23 07:30:45', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(217, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '917223109525', 10001.00, '2024-04-23 07:31:21', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(218, 27, 'Kavita Verma', 'kavita.verma@example.com', '916679171293', 100.00, '2024-04-23 07:31:40', 'Poor Feeding'),
(219, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '916654765006', 100.00, '2024-04-23 07:31:52', 'Poor Feeding'),
(220, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '916708282398', 100.00, '2024-04-23 07:32:27', 'Poor Feeding'),
(221, 27, 'Amit Singh', 'amit.singh@example.com', '917494112070', 100.00, '2024-04-23 07:32:43', 'Poor Feeding'),
(222, 27, 'Kavita Verma', 'kavita.verma@example.com', '917246603350', 10.00, '2024-04-23 07:33:19', 'Poor Feeding'),
(223, 27, 'Pooja Shah', 'pooja.shah@example.com', '917895130701', 10.00, '2024-04-23 07:33:33', 'Poor Feeding'),
(224, 27, 'Manoj Kumar', 'manoj.kumar@example.com', '919087554576', 10.00, '2024-04-23 09:02:02', 'Poor Feeding'),
(225, 27, 'Anita Gupta', 'anita.gupta@example.com', '917590617296', 10.00, '2024-04-24 08:28:44', 'Poor Feeding'),
(226, 27, 'Kavita Verma', 'kavita.verma@example.com', '917102939610', 10.00, '2024-04-24 08:29:21', 'Poor Feeding'),
(227, 27, 'Kavita Verma', 'kavita.verma@example.com', '917093201399', 10.00, '2024-04-24 08:29:36', 'Poor Feeding'),
(228, 27, 'Priya Patel', 'priya.patel@example.com', '917827677577', 10.00, '2024-04-24 08:29:46', 'Poor Feeding'),
(229, 27, 'Anita Gupta', 'anita.gupta@example.com', '917141284435', 10.00, '2024-04-24 08:29:54', 'Poor Feeding'),
(230, 27, 'Priya Patel', 'priya.patel@example.com', '918822767351', 10.00, '2024-04-24 08:30:05', 'Poor Feeding'),
(231, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '916630625241', 10.00, '2024-04-24 08:30:13', 'Poor Feeding'),
(232, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '918482730263', 10.00, '2024-04-24 08:30:22', 'Poor Feeding'),
(233, 27, 'Amit Singh', 'amit.singh@example.com', '916208734619', 10.00, '2024-04-24 08:30:33', 'Poor Feeding'),
(234, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '917079821723', 10.00, '2024-04-24 08:31:02', 'Poor Feeding'),
(235, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '917237788566', 10000.00, '2024-04-24 08:31:12', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(236, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '916561579596', 10000.00, '2024-04-24 08:31:21', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(237, 26, 'Priya Patel', 'priya.patel@example.com', '919997046824', 10000.00, '2024-04-24 08:31:30', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(238, 26, 'Pooja Shah', 'pooja.shah@example.com', '918679619247', 10000.00, '2024-04-24 08:31:40', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(239, 26, 'Kavita Verma', 'kavita.verma@example.com', '917222231683', 10000.00, '2024-04-25 12:26:55', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(240, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '919060828801', 10000.00, '2024-04-25 12:27:07', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(241, 26, 'Priya Patel', 'priya.patel@example.com', '916772439276', 10000.00, '2024-04-25 12:27:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(242, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '919857041268', 10000.00, '2024-04-25 12:27:29', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(243, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '916982090571', 10000.00, '2024-04-25 12:27:39', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(244, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '919520555043', 10000.00, '2024-04-25 12:27:53', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(245, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '916126244162', 10000.00, '2024-04-26 12:14:01', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(246, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '918739954970', 10000.00, '2024-04-26 12:14:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(247, 26, 'Pooja Shah', 'pooja.shah@example.com', '917065660615', 10000.00, '2024-04-26 12:14:47', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(248, 27, 'Kavita Verma', 'kavita.verma@example.com', '916610038932', 100.00, '2024-04-26 12:15:11', 'Poor Feeding'),
(249, 27, 'Amit Singh', 'amit.singh@example.com', '917781387054', 100.00, '2024-04-26 12:15:26', 'Poor Feeding'),
(250, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919169869065', 100.00, '2024-04-26 12:15:49', 'Poor Feeding'),
(251, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '917229056865', 100.00, '2024-04-27 03:50:31', 'Poor Feeding'),
(252, 25, 'Kavita Verma', 'kavita.verma@example.com', '916341357730', 100.00, '2024-04-28 07:42:09', 'Janmashtami Seva'),
(253, 25, 'Anita Gupta', 'anita.gupta@example.com', '916060169799', 100.00, '2024-04-28 08:30:37', 'Janmashtami Seva'),
(254, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '918211940680', 100.00, '2024-04-28 09:12:39', 'Janmashtami Seva'),
(255, 26, 'Priya Patel', 'priya.patel@example.com', '919358355903', 10000.00, '2024-04-28 14:32:23', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(256, 22, 'Rahul Sharma', 'rahul.sharma@example.com', '918612995399', 10000.00, '2024-04-28 14:32:42', 'Sri Gauranga Seva'),
(257, 25, 'Pooja Shah', 'pooja.shah@example.com', '918196438828', 10000.00, '2024-04-28 14:33:02', 'Janmashtami Seva'),
(258, 26, 'Priya Patel', 'priya.patel@example.com', '919308824259', 10000.00, '2024-04-29 16:25:46', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(259, 27, 'Amit Singh', 'amit.singh@example.com', '916838848835', 1000.00, '2024-04-29 16:25:59', 'Poor Feeding'),
(260, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '919348624703', 100.00, '2024-04-29 16:26:14', 'Janmashtami Seva'),
(261, 22, 'Kavita Verma', 'kavita.verma@example.com', '919398890059', 10.00, '2024-04-29 16:26:26', 'Sri Gauranga Seva'),
(262, 24, 'Kavita Verma', 'kavita.verma@example.com', '918520917485', 1.00, '2024-04-29 16:26:40', 'Rath Yatra Mumbai'),
(263, 26, 'Anita Gupta', 'anita.gupta@example.com', '917710246298', 10000.00, '2024-05-01 16:08:03', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(264, 26, 'Amit Singh', 'amit.singh@example.com', '917252531660', 10000.00, '2024-05-01 16:08:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(265, 27, 'Anita Gupta', 'anita.gupta@example.com', '918093372227', 100.00, '2024-05-01 16:08:36', 'Poor Feeding'),
(266, 25, 'Kavita Verma', 'kavita.verma@example.com', '919489557246', 10000.00, '2024-05-03 10:45:55', 'Janmashtami Seva'),
(267, 24, 'Ajay Yadav', 'ajay.yadav@example.com', '917549502735', 10000.00, '2024-05-03 10:46:08', 'Rath Yatra Mumbai'),
(268, 26, 'Priya Patel', 'priya.patel@example.com', '917723988373', 10000.00, '2024-05-03 10:46:30', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(269, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '918808035792', 100.00, '2024-05-03 10:46:52', 'Poor Feeding'),
(270, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '917796151505', 100.00, '2024-05-03 10:46:59', 'Poor Feeding'),
(271, 27, 'Amit Singh', 'amit.singh@example.com', '919812790589', 100.00, '2024-05-03 10:47:07', 'Poor Feeding'),
(272, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '916804176187', 100.00, '2024-05-03 10:47:17', 'Poor Feeding'),
(273, 27, 'Priya Patel', 'priya.patel@example.com', '918194032364', 100.00, '2024-05-03 10:47:26', 'Poor Feeding'),
(274, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '917927326824', 100.00, '2024-05-04 06:30:17', 'Poor Feeding'),
(275, 27, 'Priya Patel', 'priya.patel@example.com', '919837982585', 100.00, '2024-05-04 06:30:25', 'Poor Feeding'),
(276, 27, 'Deepika Sharma', 'deepika.sharma@example.com', '918700391639', 100.00, '2024-05-04 06:30:33', 'Poor Feeding'),
(277, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919148664869', 100.00, '2024-05-04 06:30:41', 'Poor Feeding'),
(278, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '919039107571', 100.00, '2024-05-04 06:30:48', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(279, 26, 'Anita Gupta', 'anita.gupta@example.com', '917859317231', 100.00, '2024-05-04 06:30:58', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(280, 27, 'Amit Singh', 'amit.singh@example.com', '916015422203', 100.00, '2024-05-04 06:31:08', 'Poor Feeding'),
(281, 26, 'Priya Patel', 'priya.patel@example.com', '919746122499', 10000.00, '2024-05-04 06:31:23', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(282, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '917601898297', 10000.00, '2024-05-04 06:31:36', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(283, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '917174915254', 10000.00, '2024-05-04 06:31:45', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(284, 25, 'Manoj Kumar', 'manoj.kumar@example.com', '919860157487', 5000.00, '2024-05-04 06:31:59', 'Janmashtami Seva'),
(285, 26, 'Amit Singh', 'amit.singh@example.com', '916523111062', 5000.00, '2024-05-05 15:18:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(286, 26, 'Kavita Verma', 'kavita.verma@example.com', '917032089999', 5000.00, '2024-05-05 15:18:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(287, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '917773705251', 5000.00, '2024-05-05 15:18:33', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(288, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '916233506930', 5000.00, '2024-05-05 15:18:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(289, 26, 'Priya Patel', 'priya.patel@example.com', '916718600770', 5000.00, '2024-05-05 15:18:56', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(290, 26, 'Pooja Shah', 'pooja.shah@example.com', '919900980061', 5000.00, '2024-05-05 15:19:14', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(291, 22, 'Amit Singh', 'amit.singh@example.com', '916391197428', 500.00, '2024-05-06 12:18:56', 'Sri Gauranga Seva'),
(292, 27, 'Kavita Verma', 'kavita.verma@example.com', '919094624117', 500.00, '2024-05-06 12:19:07', 'Poor Feeding'),
(293, 26, 'Anita Gupta', 'anita.gupta@example.com', '917504705675', 500.00, '2024-05-06 12:19:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(294, 26, 'Pooja Shah', 'pooja.shah@example.com', '919820349632', 500.00, '2024-05-06 12:19:28', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(295, 24, 'Anita Gupta', 'anita.gupta@example.com', '918618454899', 500.00, '2024-05-06 12:19:46', 'Rath Yatra Mumbai'),
(296, 26, 'Kavita Verma', 'kavita.verma@example.com', '917214828048', 500.00, '2024-05-06 12:19:59', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(297, 26, 'Pooja Shah', 'pooja.shah@example.com', '917699901695', 5000.00, '2024-05-06 13:36:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(298, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '917108084988', 5000.00, '2024-05-07 14:37:31', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(299, 26, 'Kavita Verma', 'kavita.verma@example.com', '916459732860', 5000.00, '2024-05-07 17:03:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(300, 26, 'Pooja Shah', 'pooja.shah@example.com', '918363059161', 5000.00, '2024-05-07 17:13:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(301, 27, 'Manoj Kumar', 'manoj.kumar@example.com', '919139861068', 5000.00, '2024-05-08 06:09:01', 'Poor Feeding'),
(302, 27, 'Priya Patel', 'priya.patel@example.com', '917759986335', 10000.00, '2024-05-08 06:17:00', 'Poor Feeding');

-- --------------------------------------------------------

--
-- Table structure for table `fundraising_campaigns`
--

CREATE TABLE `fundraising_campaigns` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `goal` decimal(10,2) NOT NULL,
  `current_amount` decimal(10,2) DEFAULT 0.00,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `image_filename` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `fundraising_campaigns`
--

INSERT INTO `fundraising_campaigns` (`id`, `title`, `description`, `goal`, `current_amount`, `created_at`, `image_filename`) VALUES
(1, 'pani hati seva', 'dontae this month for the upcoming festival of panihati in kartik maas', 500.00, 500.00, '2024-02-25 17:35:31', '65db7a630231f2.45419583.webp'),
(2, 'gau seva', 'jaipur', 500.00, 5000.00, '2024-02-25 17:42:57', '65db7c21609054.01350504.webp'),
(3, 'ram navmi', 'Sri Rama Navami is the auspicious appearance day of Lord Sri Ramachandra. Sri Ramachandra appeared in the month of Chaitra (March – April), on the ninth day of the growing moon (Chaitra Masa, Shukla Paksha, Navami Tithi) and this particular day is celebrated as Sri Rama Navami every year.\r\n\r\n \r\n\r\nSri Ramachandra appeared as the son of Dasharatha, the king of Ayodhya, who hailed from the dynasty of Maharaja Ikshvaku (also known as Raghu vamsha). Dasharatha had three wives: Kaushalya, Kaikeyi, and Sumitra, but he had no children. On the advice of Maharishi Vashishtha, the king performed a Putra Kameshti Yajna. As a result, the three wives conceived sons. Kaushalya gave birth to Rama and Kaikeyi gave birth to Bharata. Sumitra gave birth to the twins: Lakshmana and Shatrughna.\r\n\r\n \r\n\r\nThe life and activities of Sri Rama are explained in detail by the great sage Valmiki in the epic Ramayana. A summarized version of the Ramayana as narrated by Shukadeva Goswami to Parikshit Maharaja is included in the ninth canto of Srimad-Bhagavatam (Bhagavata Purana).\r\n\r\n \r\n\r\nSri Rama Navami Celebrations\r\nSri Rama Navami is one of the important festivals celebrated at Hare Krishna Movement Jaipur. Devotees fast throughout the day and remember Sri Rama, by chanting His holy names or hearing from the Ramayana. They break the fast at sunset. You can also observe Rama Navami Vrata at home.\r\n\r\n \r\n\r\nThe Deities of Sri Sri Krishna Balarama are decorated as Rama and Lakshmana. This special alankara happens only once a year. Sri Sri Krishna Balarama, the cowherd boys of Vrindavana, accept royal robes and appear as the princes of Ayodhya holding bows and arrows in Their hands.\r\n\r\n \r\n\r\nIn the evening the utsava Deities of Sri Sri Radha Krishnachandra are decorated as Sita Rama and taken in a procession around the temple. Devotees sing the glories of Lord Rama and chant His names. After the procession, devotees perform Rama Taraka Homa by chanting the Sri Rama Ashtottara Shata Nama.\r\n\r\n \r\n\r\nAfter the homa, a special shayana arati is performed. Devotees sing Nama Ramayana – a song that narrates the entire Ramayana. The shayana arati is followed by a pallakki utsava.\r\n\r\n \r\n\r\nOffer your Seva and receive the blessings of Lord Ramachandra on the auspicious occasion of Sri Ramanavami.\r\n\r\n', 40000.00, 59442.00, '2024-02-25 17:49:09', '65db7d959eb267.28349421.webp'),
(4, 'Hanuman Jayanti', 'Hanuman Jayanti is the celebration of the auspicious appearance day of Sri Hanuman, an ardent devotee and eternal servitor of Lord Sri Ramachandra.\r\n\r\n \r\n\r\nIn India, there are hundreds and thousands of temples dedicated to Hanuman. In all the Vaishnava temples, there is at least a shrine dedicated to him. Devotees worship and pray to him to remove the obstacles in the path of their devotional service. In our temple there is a small shrine for the Deity of Hanuman near the entrance of Prahlada Narasimha Temple.\r\n\r\n \r\n\r\nIn various parts of the country, Hanuman Jayanti is celebrated on different days. In some places (especially in Maharashtra) it is observed on Chaitra Purnima. In Tamilnadu and Kerala, it is celebrated in the month of Margazhi (December – January). As per the Odiya calendar it is celebrated on the first day of Vaishaka month. In Karnataka and Andhra Pradesh it is celebrated on Vaishaka Krishna Dashami, the 10th day of the waning moon in the month of Vaishaka. In our temple, Hanuman Jayanti is celebrated as per the local tradition on Vaishaka (April-May) Krishna Paksha Dashami.\r\n\r\n \r\n\r\nWe invite you all to participate online in the celebrations and seek the blessings of Sri Hanuman.\r\n\r\nSri Hanuman Jayanti Celebrations\r\nThe devotees shall also offer special prayers to Sri Hanuman for the protection of all the devotees and for the welfare of the world.\r\n\r\n \r\n\r\nAll the devotees may participate in the festival by visiting us online 6 pm onward.\r\n____________\r\n\r\n \r\n\r\nOffer Benne Alankara seva to Bhakta Hanumanji and and invoke auspiciousness in your life.', -1.00, 42315.00, '2024-02-25 18:11:47', '65db82e33c6395.07770260.webp'),
(22, 'Sri Gauranga Seva', 'As we joyously prepare to ceremonialize the glorious appearance day of Lord Gauranga, we seek your generous support to expand the splendor of this divine festival. This auspicious occasion is marked by affluent Abhishekam ceremony, soul-stirring kirtans, exquisite campus decorations, captivating kathas, and a sumptuous feast of delicious prasadam.\r\n\r\nTo amplify the festivities and ensure the magnificence of the celebrations, we humbly request your heartfelt contributions. Your donations will play a crucial role in arranging for the Abhishekam paraphernalia, embellishing the campus with beautiful decorations, arranging for expert musicians to elevate the kirtans, and providing a delightful array of prasadam for all attendees.\r\n\r\nTo participate in this cheerful endeavor and obtain the benedictions of Lord Gauranga, please donate generously. Your contributions, no matter the amount, will make a substantial difference.\r\n\r\nBlessings of Lord Gauranga will surely shower upon you abundantly.', 50000.00, 44211.00, '2024-03-25 15:54:59', '66019e5374c203.31771800.webp'),
(23, 'Akshaya Daan Seva', 'Akshaya Tritiya holds enormous significance, not only for its association with charity and fresh start of enterprises but also for elevating values of compassion, empathy, and kindness.\r\n\r\nOn this sacred day, giving charity brings boundless success and prosperity. It is an opportunity to partake in the goodness of unending abundance and to sow the seeds of magnanimity that reap perpetual fortune. The values of charity and selflessness are deeply ingrained in the spirit of Akshaya Tritiya Celebration.\r\n\r\nWe invite you to contribute to our charitable attempts on this auspicious day. Your Akshaya Tritiya donation will not only support the less fortunate but also align you with the transcendental blessings of Lord Sri Krishna. Join us in celebrating Akshaya Tritiya Day by making a donation and welcoming the unending goodness that follows such liberal acts.\r\n\r\nDonate generously and be part of the divine benediction that Akshaya Tritiya bestows upon those with compassionate hearts.', 30000.00, 30000.00, '2024-03-25 15:56:36', '66019eb4669807.05921853.webp'),
(24, 'Rath Yatra Mumbai', 'In the midst of the city, the enchanting spectacle of Sri Jagannath Rath Yatra unfolds—a celebration that transcends the mundane and invites you to engage in the divine grandeur. This auspicious occasion is not solely a procession; it is a revered journey that we invite you to be a part of through your generous donations. Your support assists in magnifying the joy and blessings emanating from Lord Jagannath, weaving prosperity and bliss into the fabric of your life and family.\r\n\r\nThe celebration is a lively tapestry of divine narratives, captivating pastimes of Lord Jagannath, and fervent praises echoing through the city. Illuminated by a multitude of lights, the event transforms into a visual feast, accompanied by soul-stirring kirtan presentations that touch the core of spirituality.\r\n\r\nParticipate in the Yatra Procession and experience the joy of giving. Your contribution ensures the continuation of this sublime tradition and also showers you with the divine blessings of Lord Jagannath.', 80400.00, 36875.00, '2024-03-25 16:04:10', '6601a07aab1985.14628938.webp'),
(25, 'Janmashtami Seva', 'Celebrate the divine appearance of Lord Sri Krishna with the grand celebration of Sri Krishna Janmashtami! This consequential day is a vibrant tapestry of spiritual fervor and joyous festivities, resonating with the euphonious tunes of kirtans, the rhythmic beats of bhajans, and the lively dances that fill the air with devotion.\r\n\r\nThe campus is poised to transform into a breathtaking presentation with exquisite decorations, illuminated by the splendor of lights and the aroma of vibrant flowers. The highlight of the day is the grand Abhishekam of Lord Sri Krishna, a sacred ritual filled with splendidness, chanting of auspicious mantras, and a jubilant atmosphere.\r\n\r\nYour donations will surge the grandeur of the festivities, enabling us to organize sevas and enhance the overall experience for each participant and visitor. As a token of gratitude, the donor names will be announced and prominently displayed.\r\n\r\nDonate bountifully to support the magnificence of Sri Krishna Janmashtami.', 100000.00, 64850.00, '2024-03-25 16:13:55', '6601a2c3c6bb34.28094060.webp'),
(26, 'RADHA KRISHNA TEMPLE CONSTRUCTION', 'Each Donated Square Feet Will Contribute To The Construction Of This Iconic Temple.\r\nEmbark on a journey to create a culturally enriched tomorrow by supporting the development of the revolutionary and monumental Cultural Complex. Your generous contribution is pivotal in developing and preserving diverse cultural practices, fostering connection, and inspiring admiration.\r\nThis transformative endeavor seeks to unwind the essence of uniqueness, creating a space where the spirit of society will uplift. Contribute Munificently and be a part of this impactful cultural legacy!', 10000000.00, 293303.00, '2024-04-16 07:27:02', '661e2846bf8e88.67681982.webp'),
(27, 'Poor Feeding', 'Contribute and Minimize Hunger\r\nIn a world of plenty, Millions still Tolerate Hunger. Unite with Us to Honor this Responsibility and Feed the Hungry. Imagine a child\'s smile as they enjoy a Sumptuous Meal, made possible by Your Generosity. Our Poor Feeding Program is working to Reduce Hunger and Poverty.\r\nEvery Contribution fuels our project to provide Sustenance to the Underprivileged. Join Us in this Noble Purpose; Your Support will be a Beacon of Hope for families facing the Harsh Actuality of Vacant Stomachs.', 80000.00, 20150.00, '2024-04-16 07:33:06', '661e29b2b52df4.50333517.webp');

-- --------------------------------------------------------

--
-- Table structure for table `newsletter_subscribers`
--

CREATE TABLE `newsletter_subscribers` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `subscription_date` timestamp NOT NULL DEFAULT current_timestamp(),
  `token` varchar(255) NOT NULL DEFAULT lpad(floor(rand() * 1000000),6,'0')
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `newsletter_subscribers`
--

INSERT INTO `newsletter_subscribers` (`id`, `name`, `email`, `subscription_date`, `token`) VALUES
(8, 'chirag', 'test@gmail.com', '2024-02-28 21:37:07', '314336'),
(9, 'chriag', 'sample@gmail.com', '2024-02-28 21:44:22', '912909');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donations`
--
ALTER TABLE `donations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fundraising_campaigns`
--
ALTER TABLE `fundraising_campaigns`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `fundraising_campaigns`
--
ALTER TABLE `fundraising_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
