-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 21, 2021 at 09:05 PM
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

-- --------------------------------------------------------

--
-- Table structure for table `user_access_menu`
--

CREATE TABLE `user_access_menu` (
  `id` int(11) NOT NULL,
  `role_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_access_menu`
--

INSERT INTO `user_access_menu` (`id`, `role_id`, `menu_id`) VALUES
(1, 1, 1),
(3, 2, 2),
(10, 1, 2),
(12, 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `user_menu`
--

CREATE TABLE `user_menu` (
  `id` int(11) NOT NULL,
  `menu` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_menu`
--

INSERT INTO `user_menu` (`id`, `menu`) VALUES
(1, 'admin'),
(2, 'user'),
(3, 'menu'),
(4, 'test');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `id` int(11) NOT NULL,
  `role` varchar(128) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`id`, `role`) VALUES
(1, 'Administrator'),
(2, 'Member');

-- --------------------------------------------------------

--
-- Table structure for table `user_sub_menu`
--

CREATE TABLE `user_sub_menu` (
  `id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `icon` varchar(128) NOT NULL,
  `is_active` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_sub_menu`
--

INSERT INTO `user_sub_menu` (`id`, `menu_id`, `title`, `url`, `icon`, `is_active`) VALUES
(1, 1, 'Dashboard', 'admin', 'fas fa-fw fa-tachometer-alt', 1),
(2, 2, 'My Profile', 'user', 'fas fa-fw fa-user', 1),
(3, 2, 'Edit Profile', 'user/edit', 'fas fa-fw fa-user-edit', 1),
(4, 3, 'Menu Management', 'menu', 'fas fa-fw fa-folder', 1),
(5, 3, 'Sub Menu Management', 'menu/submenu', 'fas fa-fw fa-folder-open', 1),
(6, 1, 'Youtube', 'menu/youtube', 'fab fa-fw fa-youtube', 1),
(7, 1, 'Role', 'admin/role', 'fas fa-fw fa-user-tie', 1),
(8, 2, 'Change Password', 'user/changePassword', 'fas fa-fw fa-key', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user_token`
--

CREATE TABLE `user_token` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `token` varchar(128) NOT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user_token`
--

INSERT INTO `user_token` (`id`, `email`, `token`, `date_created`) VALUES
(5, 'asdasd32@gmail.com', 'FpKoLNoliUaR1pDejC92CuWfeRPqUoOt2X/Uqc1IkcE=', 1605887869),
(16, 'asdasd32@gmail.com', 'LZpFSgzMBX1/JRbennerT0b+qNh9dxbKK7UQ40Kflk4=', 1606061457),
(17, 'asdasd32@gmail.com', 'Gtw6CRLXTtNWyzrY1UiI5OdwzZzmnOGlkjy9Hsd9cpY=', 1606061524),
(18, 'lani_sari@gmail.com', 'NjVDrJZcK2VLRVtkQUmMsjRJeGJsti/0TC2xlFW6kIo=', 1606061547),
(19, 'deprimadoni@gmail.com', 'G+bPUzU9eOSFXGJCRU8HGm7Y1qjTEjBdO7Ivsf+bNSE=', 1606061607),
(20, 'deprimadoni@gmail.com', 'HgQcKDam3po7LnhFPll6o1QWA2buUm1nq31vMr5tk1k=', 1606061629),
(21, 'zikrahawari1@gmail.com', 'pmlVqRei1XcdKG5cUjW0JytKhtyS5a1x0JT3ksyhF1I=', 1606061662),
(22, 'zikrahawari@gmail.com', 'ACj8Nf0madHa8VhKhsTONhmTku6hnBoehKQnKEBFCFw=', 1606061695),
(23, 'zikrahawari@gmail.com', '6sDG/CAzrLZZj1qwZGMm81Ei/8IFQtf+6LlkoiefoK8=', 1606061721),
(24, 'zikrahawari@gmail.com', 'r1vEgm1GLNI4krz8FN8sVG+JTjlJVpbU+TvB56QIBTc=', 1606062512),
(25, 'zikrahawari@gmail.com', 'vjmf1uwu22H7NhBwUUfx/tRgfC/BJTZD8Blb3DV/+eA=', 1606062943),
(26, 'zikrahawari@gmail.com', 'aAsp2qfaPZBdHtK3l9DXqffAQ5mT5WTWyUc7rU2jZoI=', 1606223780),
(27, 'zikraadib2@gmail.com', 'Y+onG00MZh+l3t4Ut+Egh4wQQmJXqVqmiAzk0Q1XL8E=', 1621612931),
(28, 'zikra23@gmail.com', 'YaYDdMBgjn35XdBkK+QjtHKitWeKrHr9LFTlevBYbyE=', 1621613004),
(29, 'lani_sari2@gmail.com', '8ViMi8yqxpHvfxILvDiD+GqLALDBgrLrfxqszL/pMhQ=', 1621613372),
(30, 'zikra23222@gmail.com', 'pyB4fUzoXgrkywgzARQOb84uPCzi9TPp3IBq2KujH0M=', 1621613415),
(31, 'zikrahawari@gmail.com', '/ANVGxW3q78F+65dEa6mlo0JpBJBOBF/X2MWFQ+93DA=', 1621613618),
(32, 'zikrahawari@gmail.com', 'Eq6wYbXHt0jmeMw50pLPjNYGVME4qTk0/2u8x2gyMIw=', 1621614915),
(33, 'zikraadib@gmail.com', 'W71ZJ21JXVE0+1FEzTksXBEer4sqthPRWyqLPVBuas8=', 1621615003),
(34, 'zikraadib@gmail.com', 'YXROCujj1bBkURXb77sKKQNxMIl7EJZnuMlsbS2sMOE=', 1621615074),
(35, 'lani_sari@gmail.com', 'UPYC6wLdjR8VBc8i+roSEuXRYo4xpKmLQn62CHxcg+0=', 1621615115),
(36, 'zikrahawari@gmail.com', 'kqUyc9ALiQpIqe1CMGWKVxW6b6a3UH6vjHXn7+HrYYk=', 1621615159),
(37, 'awal_afif@gmail.com', 'IaDcV4Z9055HjTbkZFqaHCEptEG2a1tFJw8SmXAif3g=', 1621623703);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_menu`
--
ALTER TABLE `user_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_token`
--
ALTER TABLE `user_token`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `user_access_menu`
--
ALTER TABLE `user_access_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `user_menu`
--
ALTER TABLE `user_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `user_sub_menu`
--
ALTER TABLE `user_sub_menu`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `user_token`
--
ALTER TABLE `user_token`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
