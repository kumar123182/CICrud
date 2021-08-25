-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 16, 2021 at 10:41 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `creative`
--

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `pname` varchar(255) NOT NULL,
  `image` varchar(1000) NOT NULL,
  `pdescription` varchar(500) NOT NULL,
  `status` int(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `pname`, `image`, `pdescription`, `status`, `created_at`, `updated_at`) VALUES
(2, 'iPhone 12', '', 'iPhone 12 is Great', 1, '2021-08-14 02:36:42', '2021-08-16 07:00:29'),
(8, 'IPhone 11 pro', '', 'Mobile', 1, '2021-08-14 09:07:35', '2021-08-16 07:00:29'),
(10, 'Vivo', '', 'mobile', 1, '2021-08-14 09:27:17', '2021-08-16 07:00:29'),
(12, 'New entry', 'ba5209dfc2252fff2be306a0ec119a39.jpg', 'new entry', 1, '2021-08-14 13:23:05', '2021-08-16 07:00:29'),
(13, 'One Plus New', 'bc97ca4fc060cc1261c8673c0955e4a8.jpg', 'Mobiles', 1, '2021-08-14 13:27:17', '2021-08-16 07:00:29'),
(14, 'iPhone 12 12', '78a96d445e07f6e6118ca0c103ca28f7.png', 'iPhone 12 is Great 121', 1, '2021-08-16 09:02:53', '2021-08-16 04:13:49');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `phone` varchar(25) NOT NULL,
  `address` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `phone`, `address`, `password`) VALUES
(4, 'admin', 'admin@gmail.com', '123456', '14 A gg', '$2y$10$nnyQeaE.p7wOqsLIIKK9W.ISDzybcV1KJlQiTnmY8/Akq48Vrie7a'),
(5, 'brajesh', 'brajesh@gmail.com', '9893834718', 'ok', '$2y$10$iSFkBXRuYSfbo/fbdqwNZ.MNSHAeXqqNDTjg7Frws8.iObyUgHKei');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
