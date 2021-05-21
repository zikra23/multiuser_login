-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 09:04 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wpu`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `email` varchar(128) NOT NULL,
  `image` varchar(128) NOT NULL,
  `password` varchar(256) NOT NULL,
  `role_id` int(11) NOT NULL,
  `is_active` int(1) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `image`, `password`, `role_id`, `is_active`, `date_created`) VALUES
(1, 'zikra', 'asdasd@gmail.com', 'default.jpg', '$2y$10$qKyhflCIxg3JhAeME0qhe.9ak3GxxAoQVkHSakBm/s1H51vxJYFx6', 2, 1, 1603824651),
(2, 'Satri Asma', 'satriasman@gmail.com', 'default.jpg', '$2y$10$mDVjZC2dzLKf2N5jHFQa8O7beMltJy4uO3IXKYgDmfK6D8fK9zSR.', 2, 1, 1603825285),
(3, 'Awal Afif', 'afifawal@gmail.com', 'default.jpg', '$2y$10$vGtv49GIGZeuONaRhPSOKew4drxiFtOzW.TtWa7vPKv9MBa/ydRNq', 2, 1, 1603825380),
(4, 'depri', 'deprimadoni@gmail.com', 'default.png', '$2y$10$WMF7dLVJhjDKnMSsiqv7lOTNWQjWg4yedbOe2zyscc9iE.jlV2L2a', 2, 1, 1603992981),
(5, 'Lani Kemala Sari', 'lani_sari@gmail.com', 'default.jpg', '$2y$10$.neT41zE2JHrYBULK8Hdz.a6Dg1zcAH82UV8W01G6M0KVUGnk8q86', 2, 1, 1603993110),
(6, 'Zikra Adib Hawari', 'zikraadib@gmail.com', 'user2.png', '$2y$10$0qjE4TyucnJaWbdzZVJYUOJQpdPXg5W1Zv.Yf.UHe4idzfmtpREBC', 1, 1, 1604090445),
(11, 'zikra', 'asdasd32@gmail.com', 'default.jpg', '$2y$10$nzNYldQe2ms7PTPJs1j7m.ft4ggKmZX9TgyC.gFwiJ7fTBdMqQPVi', 2, 1, 1605887869),
(12, 'zikra', 'zikrahawari1@gmail.com', 'default.jpg', '$2y$10$DmbzSeV9uEXe6seZReFKMuSJ8gxBuEuVfEnLmZmbo5oRjg1dLadn.', 2, 0, 1606061662),
(13, 'zikra', 'zikrahawari@gmail.com', '2016-cf-lancer-gsr-sedan-551-lightning-blue_002.png', '$2y$10$pJ7VVtonlvwqri3d516o/u11dR9Rf5Hr5Fsx2p2C2cz3zH7QfoHoW', 1, 1, 1606061695),
(14, 'zikra', 'zikraadib2@gmail.com', 'default.jpg', '$2y$10$9sjO7aBcy21F2FCeRfjs0OuRMi2pqk3Vp4Ee9jEAutgPUjmY6dWfy', 2, 0, 1621612931),
(15, 'zikra', 'zikra23@gmail.com', 'default.jpg', '$2y$10$xExr.R4nwxzPiTHIIXsAvOGof9yOpyzheOovkQXR4NchgD443RtL.', 2, 0, 1621613004),
(16, 'lani kemala sari', 'lani_sari2@gmail.com', 'default.jpg', '$2y$10$fqc1Le6Y5cYjl/BTgtGrwOIvUJhWtQjHmBbIR4hY5SzMYTk0Eaimy', 2, 1, 1621613372),
(17, 'zikra', 'zikra23222@gmail.com', 'default.jpg', '$2y$10$6307cWLf11wtJcb6rmezoeZOd.ks4uIheNjb9W7IrphqLF0QmVBGS', 2, 1, 1621613415),
(18, 'awal afif', 'awal_afif@gmail.com', 'default.jpg', '$2y$10$xKmZHKcOUELMPk.Q6zw.BecJYJQe/QjgXCrkjLxLCqKO2Oimuw5Qq', 2, 1, 1621623703);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
