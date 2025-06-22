-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 10, 2023 at 07:39 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `quantity` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `name`, `price`, `image`, `quantity`) VALUES
(1, 'Batman Dark Knight', '100', 'batman.jpg', 1),
(2, 'Black Adam', '150', 'black.jpg', 1),
(3, 'Sonic', '200', 'sonic.jpg', 1),
(4, 'Assassins Creed', '150', 'assassins.jpg', 1),
(5, 'Call of Duty', '200', 'call of duty.jpg', 1),
(6, 'Watch Dogs', '400', 'watch.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `data`
--

CREATE TABLE `data` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `msg` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data`
--

INSERT INTO `data` (`id`, `name`, `email`, `msg`) VALUES
(1, 'John Doe', 'johndoe@gmail.com', 'This is a good website');

-- --------------------------------------------------------

--
-- Table structure for table `films`
--

CREATE TABLE `films` (
  `id` int(11) NOT NULL,
  `image_url` text NOT NULL,
  `video_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `films`
--

INSERT INTO `films` (`id`, `image_url`, `video_url`) VALUES
(1, 'img-64835b12327ec7.65907529.jpg', 'video-64835b1236b995.21245929.mp4'),
(2, 'img-64835bed5916e7.11383165.jpg', 'video-64835bed5955c1.02579091.mp4'),
(3, 'img-64835c6637fce1.97417158.jpg', 'video-64835c66384c71.60192464.mp4'),
(4, 'img-64835c91389346.54162629.jpg', 'video-64835c913905a8.64404211.mp4'),
(5, 'img-64835cb636da23.00819302.jpg', 'video-64835cb63712d0.73341189.mp4'),
(6, 'img-64835cd6ad78f8.93268071.jpg', 'video-64835cd6adc648.71761305.mp4'),
(7, 'img-6483610c6d4f66.00086077.jpg', 'video-6483610c6d8a13.19464936.mp4');

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `id` int(11) NOT NULL,
  `fname` varchar(22) NOT NULL,
  `lname` varchar(22) NOT NULL,
  `gender` varchar(22) NOT NULL,
  `cnum` varchar(22) NOT NULL,
  `address` varchar(22) NOT NULL,
  `email` varchar(22) NOT NULL,
  `pass` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `form`
--

INSERT INTO `form` (`id`, `fname`, `lname`, `gender`, `cnum`, `address`, `email`, `pass`) VALUES
(1, 'John', 'Doe', 'Male', '0772967385', ' Freedom Road, London', 'johndoe@gmail.com', '123');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(255) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(255) NOT NULL,
  `method` varchar(100) NOT NULL,
  `flat` varchar(100) NOT NULL,
  `street` varchar(100) NOT NULL,
  `city` varchar(100) NOT NULL,
  `state` varchar(100) NOT NULL,
  `country` varchar(100) NOT NULL,
  `pin_code` int(10) NOT NULL,
  `total_products` varchar(255) NOT NULL,
  `total_price` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `name`, `number`, `email`, `method`, `flat`, `street`, `city`, `state`, `country`, `pin_code`, `total_products`, `total_price`) VALUES
(1, 'John Doe', '07712497834', 'johndoe@gmail.com', 'paypal', 'No 45', 'Freedom Road', 'London', 'White Cool', 'Sri Lanka', 479062, 'Batman Dark Knight (1) , Black Adam (1) , Sonic (1) ', '450');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(1, 'Batman Dark Knight', '100', 'batman.jpg'),
(2, 'Black Adam', '150', 'black.jpg'),
(3, 'Sonic', '200', 'sonic.jpg'),
(4, 'Tetris', '250', 'Tetris.jpg'),
(5, 'Fast X', '300', 'Fast X.jpg'),
(6, 'Hidden Strike', '350', 'hidden.jpg'),
(7, 'Transformers', '400', 'transformers.jpg'),
(8, 'Assassins Creed', '150', 'assassins.jpg'),
(9, 'Call of Duty', '200', 'call of duty.jpg'),
(10, 'Ghost Runner', '250', 'ghost.jpg'),
(11, 'Need for speed', '300', 'speed.jpg'),
(12, 'Ronin', '350', 'ronin.jpg'),
(13, 'Watch Dogs', '400', 'watch.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `songs`
--

CREATE TABLE `songs` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `artist` varchar(100) NOT NULL,
  `album` varchar(100) NOT NULL,
  `music` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `songs`
--

INSERT INTO `songs` (`id`, `name`, `artist`, `album`, `music`) VALUES
(1, 'Its My Life', 'Bon Jovi', '4.jpg', 'y2mate.com - Bon Jovi  Its My Life Lyrics.mp3'),
(2, 'Industry baby', 'Lilnas X Jack', '10.jpg', 'y2mate.com - Lil Nas X Jack Harlow  INDUSTRY BABY Official Video.mp3'),
(3, 'Gangster Paradise', 'Coolio', '8.jpg', 'y2mate.com - Coolio  Gangstas Paradise Lyrics ft LV.mp3'),
(4, 'Believer', 'Imagine Dragons', '3.jpg', 'y2mate.com - Imagine Dragons  Believer Lyrics.mp3'),
(5, 'Lost Sky', 'Chris Linton', '1.jpg', 'y2mate.com - Lost Sky  Fearless Lyrics ft Chris Linton.mp3'),
(6, 'Rockstar', 'Post Malone', '5.png', 'y2mate.com - Post Malone ft 21 Savage  rockstar Official Music Video.mp3'),
(7, 'Satisfya', 'Imran Khan', '9.jpg', 'y2mate.com - Imran Khan  Satisfya Official Music Video.mp3'),
(8, 'See You Again', 'Wiz Khalifa', '11.jpg', 'y2mate.com - Wiz Khalifa  See You Again ft Charlie Puth Official Video Furious 7 Soundtrack.mp3'),
(9, 'Ignite Feat Julie', 'Alan Walker', '7.png', 'y2mate.com - K391  Alan Walker  Ignite feat Julie Bergan  Seungri.mp3'),
(10, 'Fed Up', 'Ghostemane', '6.jpg', 'y2mate.com - GHOSTEMANE  Fed Up Lyrics.mp3'),
(11, 'Dark Horse', 'Katy Perry', '2.jpg', 'y2mate.com - Katy Perry  Dark Horse Official ft Juicy J.mp3');

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `id` int(11) NOT NULL,
  `video_url` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`id`, `video_url`) VALUES
(1, 'video-648364568766f4.99271189.mp4'),
(2, 'video-64836472514057.16324352.mp4'),
(3, 'video-64836483e75731.20817435.mp4'),
(4, 'video-6483649698cdb7.23890534.mp4'),
(5, 'video-648364aa85e171.34159272.mp4'),
(6, 'video-6483fc50d40576.44171236.mp4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `films`
--
ALTER TABLE `films`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `songs`
--
ALTER TABLE `songs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `data`
--
ALTER TABLE `data`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `films`
--
ALTER TABLE `films`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `form`
--
ALTER TABLE `form`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `songs`
--
ALTER TABLE `songs`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
