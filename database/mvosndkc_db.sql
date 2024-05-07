-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 07, 2024 at 05:44 AM
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
-- Database: `mvosndkc_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`) VALUES
(30, 6, 23, 8);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `vendor_id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(10, 4, 'NDKC - PSITS Movie Booth', 'Tickets ', 1, 0, '2024-05-02 23:28:17', '2024-05-02 23:31:41'),
(11, 5, 'Official School Products', 'Official products of Notre Dame of Kidapawan College', 1, 0, '2024-05-03 09:52:32', NULL),
(12, 6, 'Merchandise', 'Merchandise of NDKC-CSSG', 1, 0, '2024-05-03 10:07:23', NULL),
(13, 7, 'Art Society Stickers', 'These are the stickers originally made by Art Society members', 1, 0, '2024-05-06 12:33:14', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `code`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, '202202-00001', 'John', 'D', 'Smith', 'Male', '09123456789', 'This is only my sample address', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 'uploads/clients/1.png?v=1644386016', 1, 1, '2022-02-09 13:53:36', '2024-05-02 22:43:39'),
(2, '202202-00002', 'test', 'test', 'test', 'Male', '094564654', 'test', 'test@sample.com', '098f6bcd4621d373cade4e832627b4f6', 'uploads/clients/2.png?v=1644471867', 1, 1, '2022-02-10 13:44:26', '2022-02-10 13:44:35'),
(3, '202405-00001', 'Matthew Janmer', '', 'Agrave', 'Male', '09663017631', '019 Plaridel St. Kidapawan City', 'agravematt@gmail.com', '2d9ee4dc0cb55437505a8fa3299faad4', 'uploads/clients/3.png?v=1714658917', 1, 0, '2024-05-02 22:08:37', '2024-05-02 22:08:37'),
(4, '202405-00002', 'Jerwin ', 'D.', 'Jamon', 'Male', '09421344387', 'Kidapawan City', 'jerwinjamon@gmail.com', '69de95c2ca82ff51bf7c2c9eb4273a8f', 'uploads/clients/4.png?v=1714663574', 1, 0, '2024-05-02 23:26:14', '2024-05-02 23:26:14'),
(5, '202405-00003', 'Charles John', 'M.', 'Siplao', 'Male', '0977200946', 'Kidapwan City', 'charlesjohnsiplao@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/5.png?v=1714664693', 1, 0, '2024-05-02 23:44:53', '2024-05-02 23:44:53'),
(6, '202405-00004', 'Ronald ', 'P.', 'Daga', 'Male', '09221200743', 'Kidapawan City', 'dagaronald@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/6.png?v=1714664758', 1, 0, '2024-05-02 23:45:58', '2024-05-02 23:45:58'),
(7, '202405-00005', 'Andrematthew', '', 'Vaquilar', 'Male', '09191610167', 'Kidapawan City', 'andrevaquilar@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/7.png?v=1714664792', 1, 0, '2024-05-02 23:46:32', '2024-05-02 23:46:32'),
(8, '202405-00006', 'Daffodelle', 'Villarosa', 'Lucena', 'Female', '09706980888', 'Kidapawan CIty', 'daffodellelucena@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/8.png?v=1714702560', 1, 0, '2024-05-03 10:16:00', '2024-05-03 10:16:00'),
(9, '202405-00007', 'Allen Brian', 'Dingal', 'Balansag', 'Male', '09667611502', 'Kidapawan City', 'allenbriandagan@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/9.png?v=1714702706', 1, 0, '2024-05-03 10:18:26', '2024-05-03 10:18:26'),
(10, '202405-00008', 'Rica Joy', '', 'Dumalaog', 'Female', '09214819524', 'Kidapawan City', 'princessdelightdumalaog7@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/10.png?v=1714703564', 1, 0, '2024-05-03 10:32:44', '2024-05-03 10:32:44'),
(11, '202405-00009', 'Ann Margaret', '', 'Tabigue', 'Female', '09700727933', 'Kidapawan City', 'anntabigue@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/11.png?v=1714703648', 1, 0, '2024-05-03 10:34:08', '2024-05-03 10:34:08'),
(12, '202405-00010', 'Ronn Miguel', '', 'Dela Cruz', 'Male', '09953718614', 'Kidapawan City', 'ronnmiguel@gmail.com', '202cb962ac59075b964b07152d234b70', 'uploads/clients/12.png?v=1714703751', 1, 0, '2024-05-03 10:35:51', '2024-05-03 10:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` double NOT NULL DEFAULT 0,
  `price` double NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`, `date_created`) VALUES
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(9, 23, 1, 40, '2024-05-04 20:54:42'),
(10, 16, 1, 20, '2024-05-06 12:19:14'),
(11, 23, 10, 40, '2024-05-06 12:19:14'),
(12, 24, 1, 450, '2024-05-06 12:28:08'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(13, 22, 2, 350, '2024-05-06 23:30:07'),
(15, 23, 5, 40, '2024-05-06 23:34:37'),
(16, 23, 5, 40, '2024-05-06 23:46:03'),
(17, 23, 2, 40, '2024-05-07 00:08:26'),
(18, 23, 8, 40, '2024-05-07 00:10:32'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(9, 23, 1, 40, '2024-05-04 20:54:42'),
(10, 16, 1, 20, '2024-05-06 12:19:14'),
(11, 23, 10, 40, '2024-05-06 12:19:14'),
(12, 24, 1, 450, '2024-05-06 12:28:08'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(7, 9, 1, 20, '2024-05-03 09:24:09'),
(8, 16, 1, 20, '2024-05-03 10:48:36'),
(19, 21, 2, 20, '2024-05-07 10:42:49'),
(20, 21, 23, 20, '2024-05-07 10:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `vendor_id` int(30) NOT NULL,
  `total_amount` double NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `client_id`, `vendor_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(7, '202405-00002', 4, 4, 20, 'Kidapawan City', 1, '2024-05-03 09:24:09', '2024-05-03 09:24:51'),
(8, '202405-00003', 3, 4, 20, '019 Plaridel St. Kidapawan City', 1, '2024-05-03 10:48:36', '2024-05-03 10:49:25'),
(9, '202405-00004', 4, 6, 40, 'Kidapawan City', 1, '2024-05-04 20:54:42', '2024-05-07 01:38:39'),
(10, '202405-00005', 3, 4, 20, '019 Plaridel St. Kidapawan City', 0, '2024-05-06 12:19:14', '2024-05-06 12:19:14'),
(11, '202405-00006', 3, 6, 400, '019 Plaridel St. Kidapawan City', 1, '2024-05-06 12:19:14', '2024-05-07 01:45:59'),
(12, '202405-00007', 3, 4, 450, '019 Plaridel St. Kidapawan City', 1, '2024-05-06 12:28:08', '2024-05-06 12:29:32'),
(13, '202405-00008', 3, 6, 700, '019 Plaridel St. Kidapawan City', 1, '2024-05-06 23:30:07', '2024-05-07 01:47:43'),
(15, '202405-00010', 3, 6, 200, '019 Plaridel St. Kidapawan City', 0, '2024-05-06 23:34:37', '2024-05-06 23:34:37'),
(16, '202405-00011', 3, 6, 200, '019 Plaridel St. Kidapawan City', 2, '2024-05-06 23:46:03', '2024-05-07 01:50:39'),
(17, '202405-00012', 3, 6, 80, '019 Plaridel St. Kidapawan City', 1, '2024-05-07 00:08:26', '2024-05-07 01:32:45'),
(18, '202405-00013', 3, 6, 320, '019 Plaridel St. Kidapawan City', 2, '2024-05-07 00:10:32', '2024-05-07 01:57:39'),
(19, '202405-00001', 3, 6, 40, '019 Plaridel St. Kidapawan City', 0, '2024-05-07 10:42:49', '2024-05-07 10:42:49'),
(20, '202405-00009', 3, 6, 460, '019 Plaridel St. Kidapawan City', 0, '2024-05-07 10:43:05', '2024-05-07 10:43:05');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `vendor_id` int(30) DEFAULT NULL,
  `category_id` int(30) DEFAULT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` double NOT NULL DEFAULT 0,
  `stock_available` int(11) NOT NULL DEFAULT 0,
  `approval_status` int(11) DEFAULT 0,
  `image_path` text DEFAULT NULL,
  `product_images` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `vendor_id`, `category_id`, `name`, `description`, `price`, `stock_available`, `approval_status`, `image_path`, `product_images`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(9, 4, 10, 'Movie Ticket - Kung Fu Panda 4', '&lt;p&gt;Movie Ticket - Kung Fu Panda 4&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/9.png?v=1714664020', '0', 1, 0, '2024-05-02 23:33:39', '2024-05-02 23:33:40'),
(10, 4, 10, 'Movie Ticket - Lisa Frankenstein', '&lt;p&gt;Movie Ticket - Lisa Frankenstein&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/10.png?v=1714699072', '0', 0, 0, '2024-05-03 09:17:52', '2024-05-03 09:17:58'),
(11, 4, 10, 'Movie Ticket - Damsel', '&lt;p&gt;Movie Ticket - Damsel&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/11.png?v=1714699712', '0', 1, 0, '2024-05-03 09:28:32', '2024-05-03 09:28:32'),
(12, 4, 10, 'Movie Ticket - Prey', '&lt;p&gt;Movie Ticket - Prey&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/12.png?v=1714699745', '0', 1, 0, '2024-05-03 09:29:05', '2024-05-03 09:29:05'),
(13, 4, 12, 'T-Shirt', '', 350, 0, 0, 'uploads/products/13.png?v=1714699797', '0', 1, 1, '2024-05-03 09:29:57', '2024-05-07 02:11:37'),
(14, 4, 10, 'Movie Ticket - Anyone But You', '&lt;p&gt;Movie Ticket - Anyone But You&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/14.png?v=1714700352', '0', 1, 0, '2024-05-03 09:39:12', '2024-05-03 09:39:12'),
(15, 4, 10, 'Movie Ticket - Mean Girls', '&lt;p&gt;Movie Ticket - Mean Girls&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/15.png?v=1714700568', '0', 1, 0, '2024-05-03 09:42:48', '2024-05-03 09:42:48'),
(16, 4, 10, 'Movie Ticket - Scream VI', '&lt;p&gt;Movie Ticket - Scream VI&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/16.png?v=1714700607', '0', 1, 0, '2024-05-03 09:43:27', '2024-05-03 09:43:27'),
(17, 4, 10, 'Movie Ticket - Imaginary', '&lt;p&gt;Movie Ticket - Imaginary&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/17.png?v=1714700639', '0', 1, 0, '2024-05-03 09:43:59', '2024-05-03 09:43:59'),
(18, 4, 10, 'Movie Ticket - Aquaman and The Lost Kingdom', '&lt;p&gt;Movie Ticket - Aquaman and The Lost Kingdom&lt;br&gt;&lt;/p&gt;', 20, 0, 0, 'uploads/products/18.png?v=1714700745', '0', 1, 0, '2024-05-03 09:45:45', '2024-05-03 09:45:45'),
(19, 5, 11, 'NDKC x AquaFlask Moss Green 32oz', '&lt;p&gt;NDKC x AquaFlask Moss Green 32oz&lt;br&gt;&lt;/p&gt;', 800, 0, 0, 'uploads/products/19.png?v=1714701215', '0', 1, 0, '2024-05-03 09:53:34', '2024-05-03 09:55:11'),
(20, 5, 11, 'NDKC x AquaFlask Cobalt Blue 18oz', '&lt;p&gt;NDKC x AquaFlask Cobalt Blue 18oz&lt;br&gt;&lt;/p&gt;', 700, 0, 0, 'uploads/products/20.png?v=1714701291', '0', 1, 0, '2024-05-03 09:54:50', '2024-05-03 09:54:51'),
(21, 6, 12, 'Stickers', '&lt;p&gt;Stickers&lt;br&gt;&lt;/p&gt;', 20, 50, 0, 'uploads/products/21.png?v=1714702099', '0', 1, 0, '2024-05-03 10:08:16', '2024-05-07 10:44:31'),
(22, 6, 12, 'T-Shirt', '&lt;p&gt;T-Shirt&lt;br&gt;&lt;/p&gt;', 350, 25, 0, 'uploads/products/22.png?v=1714702140', '0', 1, 0, '2024-05-03 10:08:58', '2024-05-07 02:32:28'),
(23, 6, 12, 'Pins', '&lt;p&gt;Pins&lt;br&gt;&lt;/p&gt;', 40, 10, 0, 'uploads/products/23.png?v=1715051411', '0', 0, 0, '2024-05-03 10:09:30', '2024-05-07 11:10:11'),
(24, 4, 10, 'Travel Bag', '&lt;p&gt;This is a travel bag&lt;/p&gt;', 450, 0, 0, 'uploads/products/24.png?v=1714969636', '0', 1, 0, '2024-05-06 12:24:57', '2024-05-06 12:27:51'),
(25, 6, 13, 'Art Society - Game Stickers', '&lt;p&gt;These are the stickers made by art society members&lt;/p&gt;', 10, 0, 0, 'uploads/products/25.png?v=1714970044', '0', 0, 1, '2024-05-06 12:34:04', '2024-05-07 02:43:27'),
(27, 6, 12, 'Kasadya Merchandise', '&lt;p&gt;test&lt;/p&gt;', 350, 50, 0, NULL, '0', 0, 0, '2024-05-07 11:40:53', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `shop_type_list`
--

CREATE TABLE `shop_type_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `shop_type_list`
--

INSERT INTO `shop_type_list` (`id`, `name`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Dry Goods', 1, 1, '2022-02-09 08:49:34', '2024-05-02 22:39:26'),
(2, 'Cosmetics', 1, 1, '2022-02-09 08:49:46', '2024-05-02 22:39:24'),
(3, 'Produce', 1, 1, '2022-02-09 08:50:31', '2024-05-02 22:39:29'),
(4, 'Anyy', 1, 1, '2022-02-09 08:50:36', '2024-05-02 22:39:21'),
(5, 'Others', 1, 1, '2022-02-09 08:50:41', '2022-02-09 08:50:45'),
(6, 'Apparel', 1, 0, '2024-05-02 22:39:41', '2024-05-02 22:48:18'),
(7, 'Merchandise', 1, 0, '2024-05-02 22:39:56', NULL),
(8, 'Club Accessories', 1, 0, '2024-05-02 22:45:53', NULL),
(9, 'Consumables', 1, 0, '2024-05-02 22:46:24', NULL),
(10, 'Official School Products', 1, 0, '2024-05-02 22:52:27', NULL),
(11, 'School Supplies', 1, 0, '2024-05-03 09:15:04', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Multi-Vendor Online Store of Notre Dame of Kidapawan College'),
(6, 'short_name', 'MVOS-NDKC'),
(11, 'logo', 'uploads/logo-1714660155.png'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover-1714660102.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/avatar-1.png?v=1644472635', NULL, 1, '2021-01-20 14:02:37', '2022-02-10 13:57:15'),
(12, 'Matthew Janmer', 'Agrave', 'admin0', 'e00cf25ad42683b3df678c61f42c6bda', 'uploads/avatar-12.png?v=1714662186', NULL, 1, '2024-05-02 23:03:06', '2024-05-02 23:03:22'),
(13, 'Matthew Janmer', 'Agrave', 'admin1', 'e00cf25ad42683b3df678c61f42c6bda', 'uploads/avatar-13.png?v=1714698110', NULL, 1, '2024-05-03 09:01:50', '2024-05-03 09:01:50');

-- --------------------------------------------------------

--
-- Table structure for table `vendor_list`
--

CREATE TABLE `vendor_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `shop_type_id` int(30) NOT NULL,
  `shop_name` text NOT NULL,
  `shop_owner` text NOT NULL,
  `contact` text NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `vendor_list`
--

INSERT INTO `vendor_list` (`id`, `code`, `shop_type_id`, `shop_name`, `shop_owner`, `contact`, `username`, `password`, `avatar`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(4, '202405-00001', 9, 'NDKC - PSITS', 'Notre Dame Of Kidapawan College', '09288746012', 'NDKC-PSITS', '202cb962ac59075b964b07152d234b70', 'uploads/vendors/4.png?v=1714661620', 1, 0, '2024-05-02 22:53:40', '2024-05-02 22:54:58'),
(5, '202405-00002', 10, 'Notre Dame of Kidapawan College', 'Notre Dame Of Kidapawan College', ' (064) 577-1672', 'NDKC', '202cb962ac59075b964b07152d234b70', 'uploads/vendors/5.png?v=1714701006', 1, 0, '2024-05-03 09:50:06', '2024-05-03 09:50:06'),
(6, '202405-00003', 7, 'NDKC-CSSG', 'College Supreme Student Government', '09323802366', 'NDKC-CSSG', '202cb962ac59075b964b07152d234b70', 'uploads/vendors/6.png?v=1714701979', 1, 0, '2024-05-03 10:06:18', '2024-05-03 10:06:19'),
(7, '202405-00004', 8, 'Art Society', 'artsociety', '09706980885', 'artsocietyndkc', '202cb962ac59075b964b07152d234b70', 'uploads/vendors/7.png?v=1714969927', 0, 0, '2024-05-06 12:32:07', '2024-05-06 12:43:27');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `vendor_id` (`vendor_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vendor_id` (`vendor_id`),
  ADD KEY `category_id` (`category_id`) USING BTREE;

--
-- Indexes for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `shop_type_id` (`shop_type_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `shop_type_list`
--
ALTER TABLE `shop_type_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `vendor_list`
--
ALTER TABLE `vendor_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `category_list`
--
ALTER TABLE `category_list`
  ADD CONSTRAINT `category_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_list_ibfk_2` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`vendor_id`) REFERENCES `vendor_list` (`id`) ON DELETE SET NULL,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `vendor_list`
--
ALTER TABLE `vendor_list`
  ADD CONSTRAINT `vendor_list_ibfk_1` FOREIGN KEY (`shop_type_id`) REFERENCES `shop_type_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
