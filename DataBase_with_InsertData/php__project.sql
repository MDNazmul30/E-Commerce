-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2024 at 05:16 PM
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
-- Database: `php__project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_users`
--

CREATE TABLE `admin_users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_users`
--

INSERT INTO `admin_users` (`id`, `username`, `password`, `created_at`) VALUES
(1, 'admin', 'php123', '2024-05-26 13:46:08');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(6,2) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_phone` int(11) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_email`, `user_phone`, `user_city`, `user_address`, `order_date`) VALUES
(1, 1000.00, 'Pending', 1, 'apple@gmail.com', 1799843687, 'Dhaka', 'Aftabnagar', '2024-05-26 20:00:22'),
(2, 0.00, 'Pending', 2, 'anamul@gmail.com', 1799843687, 'Dhaka', 'Aftabnagar', '2024-05-29 18:36:21'),
(3, 3000.00, 'Pending', 3, 'ananna@gmail.com', 1284783575, 'Dhaka', 'Dhaka', '2024-05-30 17:32:22');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `quantity` int(10) NOT NULL DEFAULT 1,
  `user_id` int(10) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `in_cart` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `quantity`, `user_id`, `order_date`, `in_cart`) VALUES
(1, 41281486, 1, 1, 0, '2024-05-26 19:57:17', 1),
(2, 28930674, 1, 1, 0, '2024-05-26 19:58:28', 1),
(10, 81737778, 1, 1, 0, '2024-05-27 22:35:20', 1),
(11, 50677207, 2, 1, 0, '2024-05-28 20:12:56', 1),
(12, 73825000, 1, 1, 0, '2024-05-28 20:13:54', 1),
(15, 17841421, 5, 1, 0, '2024-05-29 16:13:16', 1),
(16, 63311947, 8, 1, 0, '2024-05-29 16:41:23', 1),
(17, 65064573, 4, 1, 1, '2024-05-29 16:42:27', 1),
(18, 95921826, 7, 1, 1, '2024-05-29 16:52:56', 1),
(19, 42732025, 4, 1, 0, '2024-05-29 19:11:20', 1),
(20, 65997406, 8, 1, 0, '2024-05-29 19:28:53', 1),
(21, 67062348, 9, 1, 0, '2024-05-29 19:40:38', 1),
(22, 45826749, 11, 1, 0, '2024-05-30 16:34:17', 1),
(24, 7547339, 11, 1, 3, '2024-05-30 17:28:21', 0),
(25, 70015400, 12, 1, 0, '2024-05-30 17:31:17', 1);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(100) NOT NULL,
  `product_category` varchar(100) NOT NULL,
  `product_description` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_image2` varchar(255) NOT NULL,
  `product_image3` varchar(255) NOT NULL,
  `product_image4` varchar(255) NOT NULL,
  `product_price` decimal(6,2) NOT NULL,
  `product_special_offer` int(2) NOT NULL,
  `product_color` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_category`, `product_description`, `product_image`, `product_image2`, `product_image3`, `product_image4`, `product_price`, `product_special_offer`, `product_color`) VALUES
(1, 'shoes', 'shoes', 'Beautiful shoes with affordable price..', 'images (2).jpg', 'images (3).jpg', 'images (4).jpg', 'images (2).jpg', 1000.00, 2, 'Black'),
(2, 'shoes', 'shoes', 'something', 'images (7).jpg', 'images (9).jpg', 'images (7).jpg', 'images (9).jpg', 1500.00, 10, 'white'),
(3, 'shoes', 'shoes', 'Affordable price ', '5eaa8572125d6640676638.jpg', 'brand456.jpg', '5eaa8572125d6640676638.jpg', 'brand456.jpg', 800.00, 3, 'white'),
(4, 'shoes', 'shoes', '	\r\nBeautiful shoes with affordable price.', 's-l1200 (1).jpg', 's-l1200.jpg', 's-l1200 (1).jpg', 's-l1200.jpg', 2000.00, 31, 'white and Blue'),
(5, 'Winter Jacket', 'Jacket', 'Beautiful jacket with affordable price..', '40d2a023e31740c48850176431979c62.jpeg', '', '40d2a023e31740c48850176431979c62.jpeg', '', 2000.00, 20, 'Blue'),
(7, 'Winter Jacket', 'Jacket', 'Beautiful shoes with affordable price..', '374512_18079_XL.jpg', '61FitLOBxjL._AC_UF894,1000_QL80_.jpg', '374512_18079_XL.jpg', '374512_18079_XL.jpg', 2500.00, 10, 'Brown'),
(8, 'shoes', 'shoes', 'Beautiful shoes with affordable price..', '212-2129108_nike-hyperace-volleyball-shoes-hd-png-download.png', 'png-transparent-adidas-shoe-sneakers-women-shoes-purple-white-violet-thumbnail.png', '212-2129108_nike-hyperace-volleyball-shoes-hd-png-download.png', 'png-transparent-adidas-shoe-sneakers-women-shoes-purple-white-violet-thumbnail.png', 3000.00, 10, 'white'),
(9, 'Winter Jacket', 'Jacket', '	\r\nBeautiful jacket with affordable price..', 'images (12).jpg', 'images (13).jpg', 'images (12).jpg', 'images (13).jpg', 3000.00, 10, 'Black'),
(10, 'Winter Jacket', 'Jacket', 'Beautiful Jacket with affordable price.', 'best-winter-jackets-and-coats-for-women.jpg', 'best-winter-jackets-and-coats-for-women.jpg', '', 'best-winter-jackets-and-coats-for-women.jpg', 4000.00, 30, 'white'),
(11, 'Winter Jacket', 'Jacket', 'Beautiful jacket with affordable price', '71Wbn0u1sQL._AC_SL1500_.jpg', 'images (13).jpg', '71Wbn0u1sQL._AC_SL1500_.jpg', 'images (13).jpg', 3000.00, 2, 'Black'),
(12, 'shoes', 'shoes', 'fgf', '61KQuyfCjeL._SLDPMOBCAROUSELAUTOCROP288221_MCnd_AC_SR462,693_.jpg', '', 'images (2).jpg', '', 4000.00, 2, 'white');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_password` varchar(100) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_password`, `user_name`, `user_email`) VALUES
(1, '123', 'Apple', 'Apple@gmail.com'),
(2, '123', 'Anamul', 'Anamul@gmail.com'),
(3, 'abcd123', 'Ananna', 'ananna@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_users`
--
ALTER TABLE `admin_users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_users`
--
ALTER TABLE `admin_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
