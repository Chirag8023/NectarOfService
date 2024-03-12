-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 10, 2024 at 04:38 PM
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
(1, 1, 'chirag', 'test@test.com', '123456789', 500.00, '2024-02-25 17:36:05', 'pani hati seva'),
(2, 2, 'chirag', '2@2.com', '1234', 5000.00, '2024-02-25 18:03:47', 'gau seva'),
(3, 3, 'chitag', 'chiah@gja.com', '2222222', 500.00, '2024-02-25 18:07:44', 'ram navmi'),
(4, 3, 'chirah', '2@g.c', '2', 10000.00, '2024-02-25 18:08:27', 'ram navmi'),
(5, 4, 'chitag', '2@2.com', '22131223', 200.00, '2024-02-25 18:12:22', 'Hanuman Jayanti'),
(6, 4, 'person 6', 'person@gmail.com', '23123', 300.00, '2024-02-26 08:12:41', 'Hanuman Jayanti'),
(7, 4, 'person7', '2@2.com', '23123', 5.00, '2024-02-26 08:12:58', 'Hanuman Jayanti'),
(8, 4, 'person8', '2@2.c', '234', 34.00, '2024-02-26 08:13:30', 'Hanuman Jayanti'),
(9, 4, 'ram prakash', '2@2.2', '3123231', 3.00, '2024-02-26 08:13:54', 'Hanuman Jayanti'),
(10, 4, 'bajrang', 're@32.com', '3342345342', 32.00, '2024-02-26 08:14:14', 'Hanuman Jayanti'),
(11, 4, 'astitv', 'gmail@gmail.com', '2132', 500.00, '2024-02-26 08:27:36', 'Hanuman Jayanti'),
(12, 4, 'chi', 'c@c.c', '2314325', 40.00, '2024-02-27 15:58:49', 'Hanuman Jayanti'),
(13, 4, 'chirag', 'sample@gmail.com', '23123', 50.00, '2024-02-28 10:19:20', 'Hanuman Jayanti'),
(14, 4, 'ch', 'da@rf.f', '23', 1.00, '2024-02-28 10:22:01', 'Hanuman Jayanti'),
(15, 4, 'test', 'c@c.c', '2', 1.00, '2024-03-04 17:18:31', 'Hanuman Jayanti'),
(16, 4, 'c', 'c@v.c', '2', 1.00, '2024-03-04 17:19:53', 'Hanuman Jayanti'),
(17, 4, 'chirag', 'chirga@fassd.com', '23121412', 2.00, '2024-03-05 19:20:41', 'Hanuman Jayanti'),
(18, 4, 'ffef', '2D@ef', '23', 21.00, '2024-03-05 20:46:06', 'Hanuman Jayanti'),
(19, 3, 'paypal', 'pp@pp', '2312312312', 1.00, '2024-03-05 23:33:35', 'ram navmi'),
(20, 3, 'upi', 'ip@ip', '23123', 2.00, '2024-03-05 23:35:47', 'ram navmi'),
(21, 3, 'upi2', 'dp@do', '23123', 2.00, '2024-03-05 23:46:36', 'ram navmi'),
(22, 3, 'uiu', 'iida@Ijd', '231', 2.00, '2024-03-05 23:56:00', 'ram navmi'),
(23, 3, 'uiu', 'iida@Ijd', '231', 2.00, '2024-03-05 23:58:19', 'ram navmi'),
(24, 4, 'fwewe', 'ddw@dasd', '31231', 2.00, '2024-03-05 23:59:33', 'Hanuman Jayanti'),
(25, 3, 'dasdas', '21@dasd', '3123', 1.00, '2024-03-06 09:44:57', 'ram navmi'),
(26, 4, 'cht', 'dasd@dasd', '213', 2.00, '2024-03-06 21:26:11', 'Hanuman Jayanti'),
(27, 4, 'eqweq', 'dads@das', '23123', 1.00, '2024-03-06 21:34:09', 'Hanuman Jayanti'),
(28, 4, 'eqweq', 'dads@das', '23123', 1.00, '2024-03-06 21:34:58', 'Hanuman Jayanti'),
(29, 4, 'eqweq', 'dads@das', '23123', 1.00, '2024-03-06 21:35:44', 'Hanuman Jayanti'),
(30, 4, 'eqweq', 'dads@das', '23123', 1.00, '2024-03-06 21:36:09', 'Hanuman Jayanti'),
(31, 4, 'e12wd', 'dasd@dasd', '21', 1.00, '2024-03-06 21:36:35', 'Hanuman Jayanti'),
(32, 4, 'e12wd', 'dasd@dasd', '21', 1.00, '2024-03-06 21:38:07', 'Hanuman Jayanti'),
(33, 4, 'dasd', 'das@dasd', '213123', 1.00, '2024-03-06 21:41:31', 'Hanuman Jayanti'),
(34, 4, 'dasd', 'das@dasd', '213123', 1.00, '2024-03-06 21:42:33', 'Hanuman Jayanti'),
(35, 4, 'dasd', 'das@dasd', '213123', 1.00, '2024-03-06 21:42:34', 'Hanuman Jayanti'),
(36, 4, 'dsad', 'dasd@das', '213', 1.00, '2024-03-06 21:43:15', 'Hanuman Jayanti'),
(37, 4, 'dsad', 'dasd@das', '213', 1.00, '2024-03-06 21:45:49', 'Hanuman Jayanti'),
(38, 4, 'dsad', 'dasd@das', '213', 1.00, '2024-03-06 21:46:56', 'Hanuman Jayanti'),
(39, 4, 'asdasd', 'dAS22@asd', '2123', 1.00, '2024-03-06 21:47:14', 'Hanuman Jayanti'),
(40, 4, 'asdasd', 'dAS22@asd', '2123', 1.00, '2024-03-06 21:51:31', 'Hanuman Jayanti'),
(41, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:52:03', 'Hanuman Jayanti'),
(42, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:54:46', 'Hanuman Jayanti'),
(43, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:55:10', 'Hanuman Jayanti'),
(44, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:55:23', 'Hanuman Jayanti'),
(45, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:56:05', 'Hanuman Jayanti'),
(46, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 21:56:28', 'Hanuman Jayanti'),
(47, 4, 'asd', 'sads@dasd', '2123', 1.00, '2024-03-06 22:05:36', 'Hanuman Jayanti'),
(48, 4, 'chirag', 'chirag@gmail.com', '2323232323', 1.00, '2024-03-09 12:58:49', 'Hanuman Jayanti'),
(49, 4, 'chirag', 'chirag@gmail.com', '2323232323', 2.00, '2024-03-09 13:03:58', 'Hanuman Jayanti'),
(50, 4, 'chirag', 'chirag@gmail.com', '2323232323', 1.00, '2024-03-10 15:17:28', 'Hanuman Jayanti'),
(51, 4, 'chirag arora', 'chirag@gmail.com', '2323232323', 2.00, '2024-03-10 15:18:02', 'Hanuman Jayanti');

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
(3, 'ram navmi', 'Sri Rama Navami is the auspicious appearance day of Lord Sri Ramachandra. Sri Ramachandra appeared in the month of Chaitra (March – April), on the ninth day of the growing moon (Chaitra Masa, Shukla Paksha, Navami Tithi) and this particular day is celebrated as Sri Rama Navami every year.\r\n\r\n \r\n\r\nSri Ramachandra appeared as the son of Dasharatha, the king of Ayodhya, who hailed from the dynasty of Maharaja Ikshvaku (also known as Raghu vamsha). Dasharatha had three wives: Kaushalya, Kaikeyi, and Sumitra, but he had no children. On the advice of Maharishi Vashishtha, the king performed a Putra Kameshti Yajna. As a result, the three wives conceived sons. Kaushalya gave birth to Rama and Kaikeyi gave birth to Bharata. Sumitra gave birth to the twins: Lakshmana and Shatrughna.\r\n\r\n \r\n\r\nThe life and activities of Sri Rama are explained in detail by the great sage Valmiki in the epic Ramayana. A summarized version of the Ramayana as narrated by Shukadeva Goswami to Parikshit Maharaja is included in the ninth canto of Srimad-Bhagavatam (Bhagavata Purana).\r\n\r\n \r\n\r\nSri Rama Navami Celebrations\r\nSri Rama Navami is one of the important festivals celebrated at Hare Krishna Movement Jaipur. Devotees fast throughout the day and remember Sri Rama, by chanting His holy names or hearing from the Ramayana. They break the fast at sunset. You can also observe Rama Navami Vrata at home.\r\n\r\n \r\n\r\nThe Deities of Sri Sri Krishna Balarama are decorated as Rama and Lakshmana. This special alankara happens only once a year. Sri Sri Krishna Balarama, the cowherd boys of Vrindavana, accept royal robes and appear as the princes of Ayodhya holding bows and arrows in Their hands.\r\n\r\n \r\n\r\nIn the evening the utsava Deities of Sri Sri Radha Krishnachandra are decorated as Sita Rama and taken in a procession around the temple. Devotees sing the glories of Lord Rama and chant His names. After the procession, devotees perform Rama Taraka Homa by chanting the Sri Rama Ashtottara Shata Nama.\r\n\r\n \r\n\r\nAfter the homa, a special shayana arati is performed. Devotees sing Nama Ramayana – a song that narrates the entire Ramayana. The shayana arati is followed by a pallakki utsava.\r\n\r\n \r\n\r\nOffer your Seva and receive the blessings of Lord Ramachandra on the auspicious occasion of Sri Ramanavami.\r\n\r\n', 40000.00, 10510.00, '2024-02-25 17:49:09', '65db7d959eb267.28349421.webp'),
(4, 'Hanuman Jayanti', 'Hanuman Jayanti is the celebration of the auspicious appearance day of Sri Hanuman, an ardent devotee and eternal servitor of Lord Sri Ramachandra.\r\n\r\n \r\n\r\nIn India, there are hundreds and thousands of temples dedicated to Hanuman. In all the Vaishnava temples, there is at least a shrine dedicated to him. Devotees worship and pray to him to remove the obstacles in the path of their devotional service. In our temple there is a small shrine for the Deity of Hanuman near the entrance of Prahlada Narasimha Temple.\r\n\r\n \r\n\r\nIn various parts of the country, Hanuman Jayanti is celebrated on different days. In some places (especially in Maharashtra) it is observed on Chaitra Purnima. In Tamilnadu and Kerala, it is celebrated in the month of Margazhi (December – January). As per the Odiya calendar it is celebrated on the first day of Vaishaka month. In Karnataka and Andhra Pradesh it is celebrated on Vaishaka Krishna Dashami, the 10th day of the waning moon in the month of Vaishaka. In our temple, Hanuman Jayanti is celebrated as per the local tradition on Vaishaka (April-May) Krishna Paksha Dashami.\r\n\r\n \r\n\r\nWe invite you all to participate online in the celebrations and seek the blessings of Sri Hanuman.\r\n\r\nSri Hanuman Jayanti Celebrations\r\nThe devotees shall also offer special prayers to Sri Hanuman for the protection of all the devotees and for the welfare of the world.\r\n\r\n \r\n\r\nAll the devotees may participate in the festival by visiting us online 6 pm onward.\r\n____________\r\n\r\n \r\n\r\nOffer Benne Alankara seva to Bhakta Hanumanji and and invoke auspiciousness in your life.', 50000.00, 1221.00, '2024-02-25 18:11:47', '65db82e33c6395.07770260.webp');

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
-- AUTO_INCREMENT for table `donations`
--
ALTER TABLE `donations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT for table `fundraising_campaigns`
--
ALTER TABLE `fundraising_campaigns`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `newsletter_subscribers`
--
ALTER TABLE `newsletter_subscribers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
