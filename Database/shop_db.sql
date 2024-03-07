-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 13, 2024 at 02:16 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shop_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `quantity` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart`
--

INSERT INTO `cart` (`id`, `user_id`, `name`, `price`, `quantity`, `image`) VALUES
(40, 1, 'Scion of Ikshvaku', 199, 1, 'scion of lkshvaku.jpg'),
(41, 1, 'Shreemad Bhagwat Geeta', 399, 1, 'bhagavad gita.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `message`
--

INSERT INTO `message` (`id`, `user_id`, `name`, `email`, `number`, `message`) VALUES
(1, 1, 'dhyey', 'dhyeygorasiya@gmail.com', '9023150639', 'hii, i am your big fan.'),
(2, 1, 'dhyey', 'harshilgorasiya8@gmail.com', '1234567890', 'hello'),
(3, 7, 'Sachin Ramani', 'sachin@gmail.com', '1234567890', 'Hello, My name is Sachin.');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `email` varchar(100) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` varchar(50) NOT NULL,
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(7, 1, 'dhyey Gorasiya', '09023150639', 'dhyeygorasiya@gmail.com', 'cash on delivery', 'flat no. A-202 Omkar Residency , Mota Varachha, SURAT, India - 394101', ', Legend of King Suheldev (1) , Shreemad Bhagwat Geeta (1) ', 698, '12-Dec-2023', 'completed'),
(8, 1, 'dhyey Gorasiya', '09023150639', 'dhyeygorasiya@gmail.com', 'cash on delivery', 'flat no. A-202 Omkar Residency , Gotham Road, Mota Varachha, SURAT, India - 394101', ', History Of INDIA (1) ', 1399, '12-Dec-2023', 'completed'),
(9, 3, 'Darshan Balar', '9879820912', 'darshan007@gmail.com', 'cash on delivery', 'flat no. G-12 vrindavan socity, Mota Varachha, SURAT, India - 394101', ', Shreemad Bhagwat Geeta (100) ', 39900, '13-Dec-2023', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `price`, `image`) VALUES
(3, 'Legend of King Suheldev', 299, 'suheldev.jpg'),
(4, 'Scion of Ikshvaku', 199, 'scion of lkshvaku.jpg'),
(5, 'Shreemad Bhagwat Geeta', 399, 'bhagavad gita.jpg'),
(6, 'Wings Of Fire', 169, 'wings of fire.webp'),
(8, 'Unaccustomed Earth', 229, 'unaccustomed earth.jpg'),
(9, 'The Namesake', 159, 'the namesake.jpg'),
(10, 'The Lowland', 199, 'the lowland.jpeg'),
(11, 'The Great Indian Novel', 249, 'the great indian novel.jpg'),
(12, 'The English Teacher', 239, 'the english teacher.jpg'),
(13, 'The Alchemist', 149, 'the alchemist.jpg'),
(14, 'The 3 Mistakes of My Life', 299, 'the 3 mistakes of my life.jpg'),
(15, 'Swami And Friends', 269, 'swami and friends.jpg'),
(16, 'Revolution Twenty20', 165, 'revolution twenty20.jpg'),
(17, 'The Paradoxical Prime Minister', 299, 'prime minister.jpg'),
(18, 'My Days a Memoir', 189, 'my days a memoir.jpg'),
(19, 'Malgudi Days', 156, 'malgudi days.jpg'),
(20, 'Kai Po Che', 299, 'kai po che.jpg'),
(21, 'Inglorious Empire', 199, 'inglorious empire.jpg'),
(22, 'India Positive', 259, 'india positive.jpg'),
(23, 'Half Girlfriend', 289, 'half girlfriend.webp'),
(24, 'From Heaven Lake', 169, 'from heaven lake.jpg'),
(25, 'An Era of Darkness', 149, 'an era of darkness.jpg'),
(26, 'An Equal Music', 239, 'an equal music.jpg'),
(28, 'The Suitable boy', 209, 'a suitable boy.jpg'),
(30, 'Sita', 299, 'sita.jpg'),
(31, 'History Of INDIA', 1399, 'history of INDIA.jpg'),
(32, 'The Guide', 599, 'the guide.jpg'),
(34, 'The Last Unicorn', 749, 'the last unicorn.jpg'),
(35, 'The Bhagat Singh Reader', 710, 'the bhagat singh reader.jpg'),
(36, 'Mahagatha - 100 Tales', 399, 'Mahagatha.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `user_type` varchar(20) NOT NULL DEFAULT 'user'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `user_type`) VALUES
(1, 'dhyey', 'dhyeygorasiya@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(2, 'admin01', 'admin01@gmail.com', '202cb962ac59075b964b07152d234b70', 'admin'),
(7, 'Sachin Ramani', 'sachin@gmail.com', '202cb962ac59075b964b07152d234b70', 'user'),
(8, 'Deep Vadodariya', 'deep@gmail.com', '202cb962ac59075b964b07152d234b70', 'user');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
