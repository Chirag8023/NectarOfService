-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 08, 2024 at 09:03 AM
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
(1, 1, 'Pooja Shah', 'pooja.shah@example.com', '919456626949', 500.00, '2024-02-25 17:36:05', 'pani hati seva'),
(2, 2, 'Suresh Kumar', 'suresh.kumar@example.com', '916260187923', 5000.00, '2024-02-25 18:03:47', 'gau seva'),
(3, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '919949718198', 500.00, '2024-02-25 18:07:44', 'ram navmi'),
(4, 3, 'Priya Patel', 'priya.patel@example.com', '916908104646', 10000.00, '2024-02-25 18:08:27', 'ram navmi'),
(5, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918967965408', 200.00, '2024-02-25 18:12:22', 'Hanuman Jayanti'),
(6, 4, 'Pooja Shah', 'pooja.shah@example.com', '917862680086', 300.00, '2024-02-26 08:12:41', 'Hanuman Jayanti'),
(7, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '919622134822', 5.00, '2024-02-26 08:12:58', 'Hanuman Jayanti'),
(8, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '916542414542', 34.00, '2024-02-26 08:13:30', 'Hanuman Jayanti'),
(9, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '916784323353', 3.00, '2024-02-26 08:13:54', 'Hanuman Jayanti'),
(10, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918343501401', 32.00, '2024-02-26 08:14:14', 'Hanuman Jayanti'),
(11, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917646874431', 500.00, '2024-02-26 08:27:36', 'Hanuman Jayanti'),
(12, 4, 'Anita Gupta', 'anita.gupta@example.com', '919142875120', 40.00, '2024-02-27 15:58:49', 'Hanuman Jayanti'),
(13, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '919829589280', 50.00, '2024-02-28 10:19:20', 'Hanuman Jayanti'),
(14, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '916301316997', 1.00, '2024-02-28 10:22:01', 'Hanuman Jayanti'),
(15, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '918715947156', 1.00, '2024-03-04 17:18:31', 'Hanuman Jayanti'),
(16, 4, 'Kavita Verma', 'kavita.verma@example.com', '916874429015', 1.00, '2024-03-04 17:19:53', 'Hanuman Jayanti'),
(17, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918448013530', 2.00, '2024-03-05 19:20:41', 'Hanuman Jayanti'),
(18, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917553472416', 21.00, '2024-03-05 20:46:06', 'Hanuman Jayanti'),
(19, 3, 'Deepika Sharma', 'deepika.sharma@example.com', '919992893728', 1.00, '2024-03-05 23:33:35', 'ram navmi'),
(20, 3, 'Kavita Verma', 'kavita.verma@example.com', '917210214647', 2.00, '2024-03-05 23:35:47', 'ram navmi'),
(21, 3, 'Deepika Sharma', 'deepika.sharma@example.com', '918624933098', 2.00, '2024-03-05 23:46:36', 'ram navmi'),
(22, 3, 'Pooja Shah', 'pooja.shah@example.com', '916058887037', 2.00, '2024-03-05 23:56:00', 'ram navmi'),
(23, 3, 'Suresh Kumar', 'suresh.kumar@example.com', '917083042000', 2.00, '2024-03-05 23:58:19', 'ram navmi'),
(24, 4, 'Amit Singh', 'amit.singh@example.com', '918276951494', 2.00, '2024-03-05 23:59:33', 'Hanuman Jayanti'),
(25, 3, 'Anita Gupta', 'anita.gupta@example.com', '917427733995', 1.00, '2024-03-06 09:44:57', 'ram navmi'),
(26, 4, 'Pooja Shah', 'pooja.shah@example.com', '919872345711', 2.00, '2024-03-06 21:26:11', 'Hanuman Jayanti'),
(27, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917359204934', 1.00, '2024-03-06 21:34:09', 'Hanuman Jayanti'),
(28, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918672145254', 1.00, '2024-03-06 21:34:58', 'Hanuman Jayanti'),
(29, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '919322204271', 1.00, '2024-03-06 21:35:44', 'Hanuman Jayanti'),
(30, 4, 'Anita Gupta', 'anita.gupta@example.com', '917904580884', 1.00, '2024-03-06 21:36:09', 'Hanuman Jayanti'),
(31, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '917527511700', 1.00, '2024-03-06 21:36:35', 'Hanuman Jayanti'),
(32, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '917376155326', 1.00, '2024-03-06 21:38:07', 'Hanuman Jayanti'),
(33, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918174739132', 1.00, '2024-03-06 21:41:31', 'Hanuman Jayanti'),
(34, 4, 'Anita Gupta', 'anita.gupta@example.com', '916502559931', 1.00, '2024-03-06 21:42:33', 'Hanuman Jayanti'),
(35, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918914989744', 1.00, '2024-03-06 21:42:34', 'Hanuman Jayanti'),
(36, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '916064235757', 1.00, '2024-03-06 21:43:15', 'Hanuman Jayanti'),
(37, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '917206638284', 1.00, '2024-03-06 21:45:49', 'Hanuman Jayanti'),
(38, 4, 'Amit Singh', 'amit.singh@example.com', '919382735858', 1.00, '2024-03-06 21:46:56', 'Hanuman Jayanti'),
(39, 4, 'Amit Singh', 'amit.singh@example.com', '918287010701', 1.00, '2024-03-06 21:47:14', 'Hanuman Jayanti'),
(40, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '916990078288', 1.00, '2024-03-06 21:51:31', 'Hanuman Jayanti'),
(41, 4, 'Priya Patel', 'priya.patel@example.com', '916811312139', 1.00, '2024-03-06 21:52:03', 'Hanuman Jayanti'),
(42, 4, 'Priya Patel', 'priya.patel@example.com', '918540385724', 1.00, '2024-03-06 21:54:46', 'Hanuman Jayanti'),
(43, 4, 'Priya Patel', 'priya.patel@example.com', '917698605498', 1.00, '2024-03-06 21:55:10', 'Hanuman Jayanti'),
(44, 4, 'Kavita Verma', 'kavita.verma@example.com', '919791618288', 1.00, '2024-03-06 21:55:23', 'Hanuman Jayanti'),
(45, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918220848065', 1.00, '2024-03-06 21:56:05', 'Hanuman Jayanti'),
(46, 4, 'Priya Patel', 'priya.patel@example.com', '919218064347', 1.00, '2024-03-06 21:56:28', 'Hanuman Jayanti'),
(47, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918291660683', 1.00, '2024-03-06 22:05:36', 'Hanuman Jayanti'),
(48, 4, 'Amit Singh', 'amit.singh@example.com', '919135058224', 1.00, '2024-03-09 12:58:49', 'Hanuman Jayanti'),
(49, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '916933437207', 2.00, '2024-03-09 13:03:58', 'Hanuman Jayanti'),
(50, 4, 'Pooja Shah', 'pooja.shah@example.com', '917534462884', 1.00, '2024-03-10 15:17:28', 'Hanuman Jayanti'),
(51, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918257647102', 2.00, '2024-03-10 15:18:02', 'Hanuman Jayanti'),
(52, 4, 'Kavita Verma', 'kavita.verma@example.com', '918005310322', 1.00, '2024-03-10 21:58:00', 'Hanuman Jayanti'),
(53, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '919863784479', 1.00, '2024-03-10 21:58:52', 'Hanuman Jayanti'),
(54, 4, 'Priya Patel', 'priya.patel@example.com', '918132515048', 1.00, '2024-03-10 21:58:54', 'Hanuman Jayanti'),
(55, 4, 'Anita Gupta', 'anita.gupta@example.com', '919862462043', 1.00, '2024-03-10 21:58:58', 'Hanuman Jayanti'),
(56, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '916016317968', 1.00, '2024-03-10 22:02:25', 'Hanuman Jayanti'),
(57, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '919766298502', 1.00, '2024-03-10 22:11:27', 'Hanuman Jayanti'),
(58, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917545831308', 1.00, '2024-03-10 22:14:32', 'Hanuman Jayanti'),
(59, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918669821404', 1.00, '2024-03-10 22:18:03', 'Hanuman Jayanti'),
(60, 4, 'Pooja Shah', 'pooja.shah@example.com', '919021529439', 1.00, '2024-03-10 22:21:42', 'Hanuman Jayanti'),
(61, 4, 'Pooja Shah', 'pooja.shah@example.com', '917672243737', 1.00, '2024-03-10 22:23:44', 'Hanuman Jayanti'),
(62, 4, 'Kavita Verma', 'kavita.verma@example.com', '916660103342', 1.00, '2024-03-10 22:26:37', 'Hanuman Jayanti'),
(63, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918283491236', 1.00, '2024-03-10 22:33:45', 'Hanuman Jayanti'),
(64, 4, 'Kavita Verma', 'kavita.verma@example.com', '916841952611', 1.00, '2024-03-10 22:36:24', 'Hanuman Jayanti'),
(65, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '917464817159', 1.00, '2024-03-10 22:37:33', 'Hanuman Jayanti'),
(66, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917433412117', 2.00, '2024-03-10 22:48:48', 'Hanuman Jayanti'),
(67, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '919426619847', 2.00, '2024-03-10 22:56:33', 'Hanuman Jayanti'),
(68, 4, 'Priya Patel', 'priya.patel@example.com', '919561363244', 2.00, '2024-03-10 23:10:30', 'Hanuman Jayanti'),
(69, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '917295450649', 2.00, '2024-03-10 23:13:47', 'Hanuman Jayanti'),
(70, 4, 'Amit Singh', 'amit.singh@example.com', '918092046780', 2.00, '2024-03-10 23:14:52', 'Hanuman Jayanti'),
(71, 4, 'Amit Singh', 'amit.singh@example.com', '919934110430', 2.00, '2024-03-10 23:16:06', 'Hanuman Jayanti'),
(72, 4, 'Priya Patel', 'priya.patel@example.com', '916853222789', 2.00, '2024-03-10 23:17:24', 'Hanuman Jayanti'),
(73, 4, 'Pooja Shah', 'pooja.shah@example.com', '917732213571', 2.00, '2024-03-10 23:22:43', 'Hanuman Jayanti'),
(74, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '917543137226', 2.00, '2024-03-10 23:23:55', 'Hanuman Jayanti'),
(75, 4, 'Deepika Sharma', 'deepika.sharma@example.com', '918373761081', 2.00, '2024-03-10 23:24:52', 'Hanuman Jayanti'),
(76, 4, 'Anita Gupta', 'anita.gupta@example.com', '919150976928', 2.00, '2024-03-10 23:25:30', 'Hanuman Jayanti'),
(77, 4, 'Priya Patel', 'priya.patel@example.com', '916227491738', 2.00, '2024-03-10 23:29:39', 'Hanuman Jayanti'),
(78, 4, 'Amit Singh', 'amit.singh@example.com', '919344692986', 2.00, '2024-03-10 23:30:43', 'Hanuman Jayanti'),
(79, 4, 'Kavita Verma', 'kavita.verma@example.com', '919785675865', 2.00, '2024-03-10 23:32:03', 'Hanuman Jayanti'),
(80, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '916267061606', 2.00, '2024-03-10 23:32:54', 'Hanuman Jayanti'),
(81, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '917602808463', 2.00, '2024-03-10 23:37:14', 'Hanuman Jayanti'),
(82, 4, 'Priya Patel', 'priya.patel@example.com', '916943617457', 2.00, '2024-03-10 23:38:07', 'Hanuman Jayanti'),
(83, 4, 'Amit Singh', 'amit.singh@example.com', '917068035233', 2.00, '2024-03-11 13:45:21', 'Hanuman Jayanti'),
(84, 4, 'Pooja Shah', 'pooja.shah@example.com', '919344536458', 2.00, '2024-03-11 13:45:47', 'Hanuman Jayanti'),
(85, 4, 'Priya Patel', 'priya.patel@example.com', '918758579172', 2.00, '2024-03-11 13:52:46', 'Hanuman Jayanti'),
(86, 4, 'Pooja Shah', 'pooja.shah@example.com', '918464913133', 2.00, '2024-03-11 13:58:09', 'Hanuman Jayanti'),
(87, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918225699281', 2.00, '2024-03-11 14:04:13', 'Hanuman Jayanti'),
(88, 4, 'Anita Gupta', 'anita.gupta@example.com', '919901144775', 2.00, '2024-03-11 14:04:39', 'Hanuman Jayanti'),
(89, 4, 'Anita Gupta', 'anita.gupta@example.com', '916727997629', 2.00, '2024-03-11 14:07:53', 'Hanuman Jayanti'),
(90, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '919253049081', 2.00, '2024-03-11 14:14:03', 'Hanuman Jayanti'),
(91, 4, 'Anita Gupta', 'anita.gupta@example.com', '916960723174', 2.00, '2024-03-11 14:15:47', 'Hanuman Jayanti'),
(92, 4, 'Manoj Kumar', 'manoj.kumar@example.com', '918012268850', 2.00, '2024-03-11 14:16:55', 'Hanuman Jayanti'),
(93, 4, 'Pooja Shah', 'pooja.shah@example.com', '919249507206', 2.00, '2024-03-11 14:18:43', 'Hanuman Jayanti'),
(94, 4, 'Kavita Verma', 'kavita.verma@example.com', '916440119913', 2.00, '2024-03-11 14:20:03', 'Hanuman Jayanti'),
(95, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '917611717460', 2.00, '2024-03-11 14:22:14', 'Hanuman Jayanti'),
(96, 4, 'Amit Singh', 'amit.singh@example.com', '917428513113', 2.00, '2024-03-11 14:22:34', 'Hanuman Jayanti'),
(97, 4, 'Kavita Verma', 'kavita.verma@example.com', '917391175773', 2.00, '2024-03-11 14:23:12', 'Hanuman Jayanti'),
(98, 4, 'Amit Singh', 'amit.singh@example.com', '919727518959', 2.00, '2024-03-11 14:41:40', 'Hanuman Jayanti'),
(99, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '919452649811', 2.00, '2024-03-11 14:42:29', 'Hanuman Jayanti'),
(100, 4, 'Ajay Yadav', 'ajay.yadav@example.com', '918966500606', 2.00, '2024-03-11 14:43:36', 'Hanuman Jayanti'),
(101, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '918862708741', 2.00, '2024-03-11 14:45:39', 'Hanuman Jayanti'),
(102, 4, 'Priya Patel', 'priya.patel@example.com', '916627512698', 2.00, '2024-03-11 23:49:45', 'Hanuman Jayanti'),
(103, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '917618112539', 2.00, '2024-03-11 23:51:45', 'Hanuman Jayanti'),
(104, 3, 'Anita Gupta', 'anita.gupta@example.com', '917707490360', 2.00, '2024-03-16 17:09:42', 'ram navmi'),
(105, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '919014432825', 2.00, '2024-03-16 17:13:12', 'ram navmi'),
(106, 4, 'Priya Patel', 'priya.patel@example.com', '918456382378', 2.00, '2024-03-16 18:02:52', 'Hanuman Jayanti'),
(107, 3, 'Amit Singh', 'amit.singh@example.com', '919438645617', 2.00, '2024-03-17 14:01:20', 'ram navmi'),
(108, 3, 'Pooja Shah', 'pooja.shah@example.com', '916483198088', 2.00, '2024-03-19 16:21:15', 'ram navmi'),
(109, 4, 'Priya Patel', 'priya.patel@example.com', '919942856695', 2.00, '2024-03-19 16:21:51', 'Hanuman Jayanti'),
(110, 3, 'Priya Patel', 'priya.patel@example.com', '918918717777', 2000.00, '2024-03-19 16:38:09', 'ram navmi'),
(111, 3, 'Ajay Yadav', 'ajay.yadav@example.com', '917571032471', 1764.00, '2024-03-19 20:09:00', 'ram navmi'),
(112, 4, 'Anita Gupta', 'anita.gupta@example.com', '919783224593', 1500.00, '2024-03-21 00:17:40', 'Hanuman Jayanti'),
(113, 4, 'Anita Gupta', 'anita.gupta@example.com', '917355419775', 1500.00, '2024-03-21 00:31:55', 'Hanuman Jayanti'),
(114, 4, 'Priya Patel', 'priya.patel@example.com', '919508405517', 10000.00, '2024-03-21 00:32:23', 'Hanuman Jayanti'),
(115, 4, 'Rahul Sharma', 'rahul.sharma@example.com', '918122136562', 20000.00, '2024-03-21 14:19:17', 'Hanuman Jayanti'),
(116, 4, 'Suresh Kumar', 'suresh.kumar@example.com', '917784402359', 8000.00, '2024-03-21 18:56:39', 'Hanuman Jayanti'),
(117, 3, 'Manoj Kumar', 'manoj.kumar@example.com', '916548199488', 15000.00, '2024-03-22 14:39:45', 'ram navmi'),
(118, 3, 'Rahul Sharma', 'rahul.sharma@example.com', '918122571431', 80.00, '2024-03-22 15:47:22', 'ram navmi'),
(119, 3, 'Anita Gupta', 'anita.gupta@example.com', '918206812693', 80.00, '2024-03-23 18:00:01', 'ram navmi'),
(120, 23, 'Pooja Shah', 'pooja.shah@example.com', '918505696340', 30000.00, '2024-03-26 15:35:57', 'Akshaya Daan Seva'),
(121, 3, 'Pooja Shah', 'pooja.shah@example.com', '919023300448', 30000.00, '2024-03-26 15:36:54', 'ram navmi'),
(122, 22, 'Suresh Kumar', 'suresh.kumar@example.com', '917575428244', 3000.00, '2024-03-27 18:33:45', 'Sri Gauranga Seva'),
(123, 25, 'Priya Patel', 'priya.patel@example.com', '917247505408', 500.00, '2024-03-28 23:55:36', 'Janmashtami Seva'),
(124, 25, 'Manoj Kumar', 'manoj.kumar@example.com', '919886565404', 2500.00, '2024-03-28 23:55:52', 'Janmashtami Seva'),
(125, 25, 'Amit Singh', 'amit.singh@example.com', '917355941578', 2500.00, '2024-03-28 23:56:02', 'Janmashtami Seva'),
(126, 24, 'Anita Gupta', 'anita.gupta@example.com', '919224273789', 2500.00, '2024-03-28 23:56:11', 'Rath Yatra Mumbai'),
(127, 24, 'Deepika Sharma', 'deepika.sharma@example.com', '918766538405', 4324.00, '2024-03-28 23:56:24', 'Rath Yatra Mumbai'),
(128, 24, 'Ajay Yadav', 'ajay.yadav@example.com', '917573531428', 600.00, '2024-03-30 14:50:15', 'Rath Yatra Mumbai'),
(129, 25, 'Anita Gupta', 'anita.gupta@example.com', '917245543767', 600.00, '2024-04-01 18:17:34', 'Janmashtami Seva'),
(130, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '917158809606', 600.00, '2024-04-01 18:22:58', 'Sri Gauranga Seva'),
(131, 24, 'Priya Patel', 'priya.patel@example.com', '918277779157', 1000.00, '2024-04-01 20:18:39', 'Rath Yatra Mumbai'),
(132, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '917516180795', 1000.00, '2024-04-01 20:27:25', 'Janmashtami Seva'),
(133, 25, 'Pooja Shah', 'pooja.shah@example.com', '919639313105', 1200.00, '2024-04-01 20:28:45', 'Janmashtami Seva'),
(134, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '917884655283', 1200.00, '2024-04-01 23:32:50', 'Rath Yatra Mumbai'),
(135, 24, 'Priya Patel', 'priya.patel@example.com', '916430496518', 1200.00, '2024-04-01 23:44:17', 'Rath Yatra Mumbai'),
(136, 22, 'Priya Patel', 'priya.patel@example.com', '919534508983', 1200.00, '2024-04-02 00:04:58', 'Sri Gauranga Seva'),
(137, 25, 'Deepika Sharma', 'deepika.sharma@example.com', '916136692380', 1200.00, '2024-04-02 00:05:42', 'Janmashtami Seva'),
(138, 25, 'Anita Gupta', 'anita.gupta@example.com', '919683165568', 5000.00, '2024-04-05 07:40:39', 'Janmashtami Seva'),
(139, 22, 'Kavita Verma', 'kavita.verma@example.com', '919956284341', 5000.00, '2024-04-05 08:04:08', 'Sri Gauranga Seva'),
(140, 25, 'Deepika Sharma', 'deepika.sharma@example.com', '919067065887', 5000.00, '2024-04-05 14:30:19', 'Janmashtami Seva'),
(141, 24, 'Priya Patel', 'priya.patel@example.com', '917838880881', 500.00, '2024-04-05 14:36:50', 'Rath Yatra Mumbai'),
(142, 22, 'Ajay Yadav', 'ajay.yadav@example.com', '918156039788', 550.00, '2024-04-05 17:04:53', 'Sri Gauranga Seva'),
(143, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '918603805866', 550.00, '2024-04-07 15:08:12', 'Janmashtami Seva'),
(144, 24, 'Deepika Sharma', 'deepika.sharma@example.com', '918891023534', 550.00, '2024-04-09 16:16:31', 'Rath Yatra Mumbai'),
(145, 24, 'Priya Patel', 'priya.patel@example.com', '918753468317', 550.00, '2024-04-09 16:16:46', 'Rath Yatra Mumbai'),
(146, 25, 'Pooja Shah', 'pooja.shah@example.com', '917507234490', 550.00, '2024-04-09 16:17:01', 'Janmashtami Seva'),
(147, 24, 'Priya Patel', 'priya.patel@example.com', '917844191988', 550.00, '2024-04-09 16:17:10', 'Rath Yatra Mumbai'),
(148, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '917230623543', 550.00, '2024-04-09 16:17:27', 'Sri Gauranga Seva'),
(149, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '919893197109', 550.00, '2024-04-09 16:17:39', 'Janmashtami Seva'),
(150, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '917169408847', 5500.00, '2024-04-09 16:19:23', 'Janmashtami Seva'),
(151, 25, 'Pooja Shah', 'pooja.shah@example.com', '919961721148', 5500.00, '2024-04-10 18:03:11', 'Janmashtami Seva'),
(152, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '917737604105', 100.00, '2024-04-10 18:03:33', 'Rath Yatra Mumbai'),
(153, 24, 'Ajay Yadav', 'ajay.yadav@example.com', '918832116543', 100.00, '2024-04-10 18:03:50', 'Rath Yatra Mumbai'),
(154, 24, 'Pooja Shah', 'pooja.shah@example.com', '919311977645', 100.00, '2024-04-10 18:04:07', 'Rath Yatra Mumbai'),
(155, 25, 'Kavita Verma', 'kavita.verma@example.com', '916015158824', 100.00, '2024-04-10 18:04:21', 'Janmashtami Seva'),
(156, 22, 'Kavita Verma', 'kavita.verma@example.com', '916130759917', 100.00, '2024-04-10 18:04:35', 'Sri Gauranga Seva'),
(157, 22, 'Anita Gupta', 'anita.gupta@example.com', '919703776119', 100.00, '2024-04-12 16:20:14', 'Sri Gauranga Seva'),
(158, 25, 'Pooja Shah', 'pooja.shah@example.com', '919810900141', 2200.00, '2024-04-12 16:20:34', 'Janmashtami Seva'),
(159, 24, 'Manoj Kumar', 'manoj.kumar@example.com', '916793192329', 2200.00, '2024-04-12 16:20:46', 'Rath Yatra Mumbai'),
(160, 24, 'Priya Patel', 'priya.patel@example.com', '916329467709', 2200.00, '2024-04-12 16:20:57', 'Rath Yatra Mumbai'),
(161, 22, 'Kavita Verma', 'kavita.verma@example.com', '917895968600', 2200.00, '2024-04-12 16:21:08', 'Sri Gauranga Seva'),
(162, 24, 'Manoj Kumar', 'manoj.kumar@example.com', '918569255910', 200.00, '2024-04-12 16:21:21', 'Rath Yatra Mumbai'),
(163, 22, 'Priya Patel', 'priya.patel@example.com', '918688789234', 200.00, '2024-04-12 16:21:32', 'Sri Gauranga Seva'),
(164, 24, 'Kavita Verma', 'kavita.verma@example.com', '919832846835', 200.00, '2024-04-12 16:21:42', 'Rath Yatra Mumbai'),
(165, 24, 'Rahul Sharma', 'rahul.sharma@example.com', '917095291793', 200.00, '2024-04-12 16:21:52', 'Rath Yatra Mumbai'),
(166, 25, 'Pooja Shah', 'pooja.shah@example.com', '919595732308', 200.00, '2024-04-14 07:27:47', 'Janmashtami Seva'),
(167, 25, 'Priya Patel', 'priya.patel@example.com', '917647602960', 200.00, '2024-04-14 10:36:59', 'Janmashtami Seva'),
(168, 25, 'Kavita Verma', 'kavita.verma@example.com', '916582523133', 200.00, '2024-04-14 11:03:14', 'Janmashtami Seva'),
(169, 25, 'Suresh Kumar', 'suresh.kumar@example.com', '917190750672', 200.00, '2024-04-14 11:25:02', 'Janmashtami Seva'),
(170, 25, 'Pooja Shah', 'pooja.shah@example.com', '919906429266', 200.00, '2024-04-14 11:42:45', 'Janmashtami Seva'),
(171, 25, 'Anita Gupta', 'anita.gupta@example.com', '918895235891', 200.00, '2024-04-16 05:40:35', 'Janmashtami Seva'),
(172, 22, 'Deepika Sharma', 'deepika.sharma@example.com', '916848723762', 200.00, '2024-04-16 05:42:55', 'Sri Gauranga Seva'),
(173, 25, 'Kavita Verma', 'kavita.verma@example.com', '919744025034', 200.00, '2024-04-16 06:24:30', 'Janmashtami Seva'),
(174, 25, 'Anita Gupta', 'anita.gupta@example.com', '916620609778', 200.00, '2024-04-16 06:24:39', 'Janmashtami Seva'),
(175, 25, 'Priya Patel', 'priya.patel@example.com', '917613495787', 200.00, '2024-04-16 06:24:46', 'Janmashtami Seva'),
(176, 24, 'Amit Singh', 'amit.singh@example.com', '919975436519', 100.00, '2024-04-16 06:25:27', 'Rath Yatra Mumbai'),
(177, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '919213127576', 100.00, '2024-04-16 06:25:43', 'Janmashtami Seva'),
(178, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '917736719779', 100.00, '2024-04-16 06:26:02', 'Janmashtami Seva'),
(179, 24, 'Manoj Kumar', 'manoj.kumar@example.com', '918707933005', 1000.00, '2024-04-16 06:26:19', 'Rath Yatra Mumbai'),
(180, 22, 'Kavita Verma', 'kavita.verma@example.com', '918988705557', 1000.00, '2024-04-16 06:26:30', 'Sri Gauranga Seva'),
(181, 25, 'Rahul Sharma', 'rahul.sharma@example.com', '919001099943', 3000.00, '2024-04-16 06:26:54', 'Janmashtami Seva'),
(182, 22, 'Amit Singh', 'amit.singh@example.com', '919518809195', 3000.00, '2024-04-16 06:27:08', 'Sri Gauranga Seva'),
(183, 22, 'Ajay Yadav', 'ajay.yadav@example.com', '917565938918', 3000.00, '2024-04-16 06:27:56', 'Sri Gauranga Seva'),
(184, 26, 'Kavita Verma', 'kavita.verma@example.com', '918542165409', 3000.00, '2024-04-17 02:21:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(185, 27, 'Manoj Kumar', 'manoj.kumar@example.com', '918978058826', 200.00, '2024-04-17 12:26:24', 'Poor Feeding'),
(186, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919565938009', 220.00, '2024-04-17 12:35:10', 'Poor Feeding'),
(187, 27, 'Kavita Verma', 'kavita.verma@example.com', '918478437392', 200.00, '2024-04-17 14:41:47', 'Poor Feeding'),
(188, 26, 'Kavita Verma', 'kavita.verma@example.com', '916760960459', 200.00, '2024-04-18 06:48:08', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(189, 26, 'Pooja Shah', 'pooja.shah@example.com', '919139219791', 200.00, '2024-04-18 06:48:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(190, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '917116097317', 200.00, '2024-04-18 06:48:36', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(191, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '916171747776', 200.00, '2024-04-18 06:48:50', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(192, 26, 'Anita Gupta', 'anita.gupta@example.com', '918628782263', 200.00, '2024-04-18 06:49:04', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(193, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '919569570256', 200.00, '2024-04-18 06:49:19', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(194, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '917018827901', 200.00, '2024-04-18 06:49:34', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(195, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '919106314781', 200.00, '2024-04-18 06:50:24', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(196, 26, 'Pooja Shah', 'pooja.shah@example.com', '916129088837', 200.00, '2024-04-18 06:50:38', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(197, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '917603842855', 200.00, '2024-04-18 06:51:03', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(198, 26, 'Kavita Verma', 'kavita.verma@example.com', '917174492202', 200.00, '2024-04-18 06:51:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(199, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '917961624961', 2200.00, '2024-04-18 06:52:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(200, 26, 'Anita Gupta', 'anita.gupta@example.com', '917517276737', 2200.00, '2024-04-18 06:55:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(201, 26, 'Anita Gupta', 'anita.gupta@example.com', '918554407469', 1.00, '2024-04-18 06:55:48', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(202, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '919467845864', 1000.00, '2024-04-19 11:43:44', 'Rath Yatra Mumbai'),
(203, 24, 'Manoj Kumar', 'manoj.kumar@example.com', '917268057634', 1000.00, '2024-04-19 11:44:04', 'Rath Yatra Mumbai'),
(204, 24, 'Suresh Kumar', 'suresh.kumar@example.com', '919456494564', 1000.00, '2024-04-19 11:44:29', 'Rath Yatra Mumbai'),
(205, 24, 'Manoj Kumar', 'manoj.kumar@example.com', '916917164138', 1000.00, '2024-04-19 11:44:54', 'Rath Yatra Mumbai'),
(206, 24, 'Amit Singh', 'amit.singh@example.com', '919924880082', 1000.00, '2024-04-19 11:45:19', 'Rath Yatra Mumbai'),
(207, 24, 'Pooja Shah', 'pooja.shah@example.com', '916748685873', 1000.00, '2024-04-19 11:45:36', 'Rath Yatra Mumbai'),
(208, 24, 'Ajay Yadav', 'ajay.yadav@example.com', '917174194112', 1000.00, '2024-04-19 11:45:54', 'Rath Yatra Mumbai'),
(209, 27, 'Pooja Shah', 'pooja.shah@example.com', '919443070810', 1000.00, '2024-04-19 11:46:16', 'Poor Feeding'),
(210, 26, 'Anita Gupta', 'anita.gupta@example.com', '919037117633', 1000.00, '2024-04-19 11:46:38', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(211, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '916244468583', 1000.00, '2024-04-19 11:46:59', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(212, 22, 'Kavita Verma', 'kavita.verma@example.com', '917025607150', 1000.00, '2024-04-22 13:41:09', 'Sri Gauranga Seva'),
(213, 22, 'Suresh Kumar', 'suresh.kumar@example.com', '919641403431', 1000.00, '2024-04-22 13:41:23', 'Sri Gauranga Seva'),
(214, 22, 'Priya Patel', 'priya.patel@example.com', '916689360255', 1000.00, '2024-04-22 13:41:41', 'Sri Gauranga Seva'),
(215, 22, 'Kavita Verma', 'kavita.verma@example.com', '917265887129', 10001.00, '2024-04-22 13:41:59', 'Sri Gauranga Seva'),
(216, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '918136178603', 10001.00, '2024-04-23 07:30:45', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(217, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '916641237396', 10001.00, '2024-04-23 07:31:21', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(218, 27, 'Amit Singh', 'amit.singh@example.com', '916377064534', 100.00, '2024-04-23 07:31:40', 'Poor Feeding'),
(219, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '917808317506', 100.00, '2024-04-23 07:31:52', 'Poor Feeding'),
(220, 27, 'Priya Patel', 'priya.patel@example.com', '918502395521', 100.00, '2024-04-23 07:32:27', 'Poor Feeding'),
(221, 27, 'Anita Gupta', 'anita.gupta@example.com', '919414502288', 100.00, '2024-04-23 07:32:43', 'Poor Feeding'),
(222, 27, 'Amit Singh', 'amit.singh@example.com', '916716195244', 10.00, '2024-04-23 07:33:19', 'Poor Feeding'),
(223, 27, 'Priya Patel', 'priya.patel@example.com', '917238690877', 10.00, '2024-04-23 07:33:33', 'Poor Feeding'),
(224, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '917105611383', 10.00, '2024-04-23 09:02:02', 'Poor Feeding'),
(225, 27, 'Anita Gupta', 'anita.gupta@example.com', '919246840657', 10.00, '2024-04-24 08:28:44', 'Poor Feeding'),
(226, 27, 'Kavita Verma', 'kavita.verma@example.com', '917206194946', 10.00, '2024-04-24 08:29:21', 'Poor Feeding'),
(227, 27, 'Pooja Shah', 'pooja.shah@example.com', '916251021912', 10.00, '2024-04-24 08:29:36', 'Poor Feeding'),
(228, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919850177807', 10.00, '2024-04-24 08:29:46', 'Poor Feeding'),
(229, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919029189798', 10.00, '2024-04-24 08:29:54', 'Poor Feeding'),
(230, 27, 'Manoj Kumar', 'manoj.kumar@example.com', '919586179082', 10.00, '2024-04-24 08:30:05', 'Poor Feeding'),
(231, 27, 'Deepika Sharma', 'deepika.sharma@example.com', '916239694090', 10.00, '2024-04-24 08:30:13', 'Poor Feeding'),
(232, 27, 'Anita Gupta', 'anita.gupta@example.com', '918916813959', 10.00, '2024-04-24 08:30:22', 'Poor Feeding'),
(233, 27, 'Priya Patel', 'priya.patel@example.com', '919928427582', 10.00, '2024-04-24 08:30:33', 'Poor Feeding'),
(234, 27, 'Amit Singh', 'amit.singh@example.com', '919202124576', 10.00, '2024-04-24 08:31:02', 'Poor Feeding'),
(235, 26, 'Anita Gupta', 'anita.gupta@example.com', '917879704764', 10000.00, '2024-04-24 08:31:12', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(236, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '918836028447', 10000.00, '2024-04-24 08:31:21', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(237, 26, 'Kavita Verma', 'kavita.verma@example.com', '917611254405', 10000.00, '2024-04-24 08:31:30', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(238, 26, 'Kavita Verma', 'kavita.verma@example.com', '916463782791', 10000.00, '2024-04-24 08:31:40', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(239, 26, 'Kavita Verma', 'kavita.verma@example.com', '917404829046', 10000.00, '2024-04-25 12:26:55', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(240, 26, 'Pooja Shah', 'pooja.shah@example.com', '919026779662', 10000.00, '2024-04-25 12:27:07', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(241, 26, 'Pooja Shah', 'pooja.shah@example.com', '919337711843', 10000.00, '2024-04-25 12:27:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(242, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '918830977618', 10000.00, '2024-04-25 12:27:29', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(243, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '916694592461', 10000.00, '2024-04-25 12:27:39', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(244, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '918291363726', 10000.00, '2024-04-25 12:27:53', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(245, 26, 'Amit Singh', 'amit.singh@example.com', '917889334212', 10000.00, '2024-04-26 12:14:01', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(246, 26, 'Amit Singh', 'amit.singh@example.com', '918063134041', 10000.00, '2024-04-26 12:14:20', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(247, 26, 'Amit Singh', 'amit.singh@example.com', '916708466759', 10000.00, '2024-04-26 12:14:47', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(248, 27, 'Deepika Sharma', 'deepika.sharma@example.com', '918889894785', 100.00, '2024-04-26 12:15:11', 'Poor Feeding'),
(249, 27, 'Priya Patel', 'priya.patel@example.com', '917380353048', 100.00, '2024-04-26 12:15:26', 'Poor Feeding'),
(250, 27, 'Amit Singh', 'amit.singh@example.com', '918676598741', 100.00, '2024-04-26 12:15:49', 'Poor Feeding'),
(251, 27, 'Amit Singh', 'amit.singh@example.com', '917685511020', 100.00, '2024-04-27 03:50:31', 'Poor Feeding'),
(252, 25, 'Priya Patel', 'priya.patel@example.com', '919706671161', 100.00, '2024-04-28 07:42:09', 'Janmashtami Seva'),
(253, 25, 'Kavita Verma', 'kavita.verma@example.com', '919243130744', 100.00, '2024-04-28 08:30:37', 'Janmashtami Seva'),
(254, 25, 'Priya Patel', 'priya.patel@example.com', '919615289013', 100.00, '2024-04-28 09:12:39', 'Janmashtami Seva'),
(255, 26, 'Amit Singh', 'amit.singh@example.com', '918194536190', 10000.00, '2024-04-28 14:32:23', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(256, 22, 'Kavita Verma', 'kavita.verma@example.com', '918261362662', 10000.00, '2024-04-28 14:32:42', 'Sri Gauranga Seva'),
(257, 25, 'Anita Gupta', 'anita.gupta@example.com', '917803362250', 10000.00, '2024-04-28 14:33:02', 'Janmashtami Seva'),
(258, 26, 'Manoj Kumar', 'manoj.kumar@example.com', '916717113166', 10000.00, '2024-04-29 16:25:46', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(259, 27, 'Amit Singh', 'amit.singh@example.com', '919108755367', 1000.00, '2024-04-29 16:25:59', 'Poor Feeding'),
(260, 25, 'Pooja Shah', 'pooja.shah@example.com', '917449826073', 100.00, '2024-04-29 16:26:14', 'Janmashtami Seva'),
(261, 22, 'Anita Gupta', 'anita.gupta@example.com', '919030484300', 10.00, '2024-04-29 16:26:26', 'Sri Gauranga Seva'),
(262, 24, 'Pooja Shah', 'pooja.shah@example.com', '917658150332', 1.00, '2024-04-29 16:26:40', 'Rath Yatra Mumbai'),
(263, 26, 'Kavita Verma', 'kavita.verma@example.com', '918623931542', 10000.00, '2024-05-01 16:08:03', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(264, 26, 'Kavita Verma', 'kavita.verma@example.com', '917300348550', 10000.00, '2024-05-01 16:08:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(265, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '918283679350', 100.00, '2024-05-01 16:08:36', 'Poor Feeding'),
(266, 25, 'Amit Singh', 'amit.singh@example.com', '917893427866', 10000.00, '2024-05-03 10:45:55', 'Janmashtami Seva'),
(267, 24, 'Ajay Yadav', 'ajay.yadav@example.com', '918519846808', 10000.00, '2024-05-03 10:46:08', 'Rath Yatra Mumbai'),
(268, 26, 'Anita Gupta', 'anita.gupta@example.com', '917031076754', 10000.00, '2024-05-03 10:46:30', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(269, 27, 'Anita Gupta', 'anita.gupta@example.com', '918184506630', 100.00, '2024-05-03 10:46:52', 'Poor Feeding'),
(270, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '917951867908', 100.00, '2024-05-03 10:46:59', 'Poor Feeding'),
(271, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '916079181370', 100.00, '2024-05-03 10:47:07', 'Poor Feeding'),
(272, 27, 'Amit Singh', 'amit.singh@example.com', '919504905578', 100.00, '2024-05-03 10:47:17', 'Poor Feeding'),
(273, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '916370910824', 100.00, '2024-05-03 10:47:26', 'Poor Feeding'),
(274, 27, 'Priya Patel', 'priya.patel@example.com', '916111802278', 100.00, '2024-05-04 06:30:17', 'Poor Feeding'),
(275, 27, 'Deepika Sharma', 'deepika.sharma@example.com', '919101131722', 100.00, '2024-05-04 06:30:25', 'Poor Feeding'),
(276, 27, 'Rahul Sharma', 'rahul.sharma@example.com', '918468322194', 100.00, '2024-05-04 06:30:33', 'Poor Feeding'),
(277, 27, 'Suresh Kumar', 'suresh.kumar@example.com', '919417079153', 100.00, '2024-05-04 06:30:41', 'Poor Feeding'),
(278, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '917855291999', 100.00, '2024-05-04 06:30:48', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(279, 26, 'Pooja Shah', 'pooja.shah@example.com', '916808245096', 100.00, '2024-05-04 06:30:58', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(280, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '918416563951', 100.00, '2024-05-04 06:31:08', 'Poor Feeding'),
(281, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '917042788465', 10000.00, '2024-05-04 06:31:23', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(282, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '917894632237', 10000.00, '2024-05-04 06:31:36', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(283, 26, 'Anita Gupta', 'anita.gupta@example.com', '917264908720', 10000.00, '2024-05-04 06:31:45', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(284, 25, 'Ajay Yadav', 'ajay.yadav@example.com', '916872799555', 5000.00, '2024-05-04 06:31:59', 'Janmashtami Seva'),
(285, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '919920071220', 5000.00, '2024-05-05 15:18:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(286, 26, 'Pooja Shah', 'pooja.shah@example.com', '919864496622', 5000.00, '2024-05-05 15:18:22', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(287, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '916637227443', 5000.00, '2024-05-05 15:18:33', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(288, 26, 'Priya Patel', 'priya.patel@example.com', '918160735841', 5000.00, '2024-05-05 15:18:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(289, 26, 'Anita Gupta', 'anita.gupta@example.com', '918108659099', 5000.00, '2024-05-05 15:18:56', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(290, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '917985753386', 5000.00, '2024-05-05 15:19:14', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(291, 22, 'Rahul Sharma', 'rahul.sharma@example.com', '919754530374', 500.00, '2024-05-06 12:18:56', 'Sri Gauranga Seva'),
(292, 27, 'Kavita Verma', 'kavita.verma@example.com', '916744015866', 500.00, '2024-05-06 12:19:07', 'Poor Feeding'),
(293, 26, 'Ajay Yadav', 'ajay.yadav@example.com', '919810215736', 500.00, '2024-05-06 12:19:18', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(294, 26, 'Pooja Shah', 'pooja.shah@example.com', '916703372489', 500.00, '2024-05-06 12:19:28', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(295, 24, 'Deepika Sharma', 'deepika.sharma@example.com', '919654484245', 500.00, '2024-05-06 12:19:46', 'Rath Yatra Mumbai'),
(296, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '917865853465', 500.00, '2024-05-06 12:19:59', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(297, 26, 'Deepika Sharma', 'deepika.sharma@example.com', '917530247681', 5000.00, '2024-05-06 13:36:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(298, 26, 'Suresh Kumar', 'suresh.kumar@example.com', '917958669597', 5000.00, '2024-05-07 14:37:31', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(299, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '916000529363', 5000.00, '2024-05-07 17:03:11', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(300, 26, 'Rahul Sharma', 'rahul.sharma@example.com', '919165485937', 5000.00, '2024-05-07 17:13:44', 'RADHA KRISHNA TEMPLE CONSTRUCTION'),
(301, 27, 'Kavita Verma', 'kavita.verma@example.com', '918756685157', 5000.00, '2024-05-08 06:09:01', 'Poor Feeding'),
(302, 27, 'Ajay Yadav', 'ajay.yadav@example.com', '918630618581', 10000.00, '2024-05-08 06:17:00', 'Poor Feeding');

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
