-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2024 at 02:24 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `esdeliad_estreetdeli_live`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_products`
--

CREATE TABLE `addon_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `veriation_id` int(11) DEFAULT NULL COMMENT 'product master_id',
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
  `basket_id` int(11) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `address` varchar(150) DEFAULT NULL,
  `postalcode` varchar(10) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `province` varchar(200) DEFAULT NULL,
  `country` varchar(200) DEFAULT NULL,
  `phone` varchar(20) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `type` enum('billing','delivery') NOT NULL DEFAULT 'billing',
  `user_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `addresses`
--

INSERT INTO `addresses` (`id`, `order_id`, `basket_id`, `firstname`, `lastname`, `address`, `postalcode`, `city`, `province`, `country`, `phone`, `email`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(43, 25, 74, 'Kristen', 'Pachul', '801 King St', 'M5V3C9', 'Toronto', 'Ontario', 'CA', '6474014889', 'kristenpachul@live.ca', 'billing', 0, '2024-05-22 10:59:43', '2024-05-22 10:59:44'),
(39, 22, 54, 'Marshal', 'Linfoot', '103 Harrison Street', 'M6J 2A2', 'Toronto', 'Ontario', 'CA', '4169963781', 'mlinfoot@gmail.com', 'billing', 0, '2024-02-22 14:14:44', '2024-02-22 14:14:45'),
(40, 23, 56, 'Molly', 'Warwick', '700 King St W #1009', 'M5V 2Y6', 'Toronto', 'Ontario', 'CA', '4164544102', 'warwickmolly@gmail.com', 'billing', 7, '2024-03-10 12:08:33', '2024-03-10 12:08:34'),
(35, 21, 50, 'shefii', 'km', 'dfgh', 'dfgh', 'fg', 'British Columbia', 'CA', '4563456356', 'shefii.indigital@gmail.com', 'billing', 0, '2024-02-19 02:41:34', '2024-02-19 02:41:35'),
(34, 20, 49, 'Tina', 'Hatton', '21 Kirkbride Cres', 'L6A 2J5', 'Vaughan', 'Ontario', 'CA', '4169934562', 'tina.hatton@gmail.com', 'billing', 0, '2024-02-18 14:46:07', '2024-02-18 14:46:08'),
(33, 19, 47, 'Mark', 'Krantzberg', '302 Fairlawn Ave', 'M5M1T3', 'Toronto', 'Ontario', 'CA', '1416452931', 'mark.krantzberg@gmail.com', 'billing', 6, '2024-02-18 11:19:50', '2024-02-18 11:19:51'),
(32, 18, 40, 'KZ', 'Iqbal', '200 Evans Ave.', 'M8Z 1J7', 'Toronto', 'Ontario', 'CA', '6473556808', 'mkhizar27@gmail.com', 'billing', 0, '2024-02-06 08:27:36', '2024-02-06 08:27:37'),
(31, 17, 32, 'shefii', 'km', '651 Yonge St', 'M4Y 1Z9', 'Toronto', 'Ontario', 'CA', '1212121212', 'shefii.indigital@gmail.com', 'billing', 0, '2024-02-06 08:20:47', '2024-02-06 08:20:48'),
(29, 16, 37, 'James', 'Kay', '436 Wellington St W #101', 'M5V 1E7', 'Toronto', 'Ontario', 'CA', '4169197297', 'jimmykay1@gmail.com', 'billing', 5, '2024-01-29 10:57:51', '2024-01-29 10:57:52'),
(28, 15, 36, 'Val', 'Malysheva', '410 Valermo drive', 'm8w2l7', 'Toronto', 'Ontario', 'CA', '4168330191', 'valeria.malysheva@live.com', 'billing', 4, '2024-01-27 17:55:30', '2024-01-27 17:55:31'),
(27, 14, 35, 'Val', 'Malysheva', '410 Valermo drive', 'm8w2l7', 'Toronto', 'Ontario', 'CA', '4168330191', 'valeria.malysheva@live.com', 'billing', 0, '2024-01-27 17:51:17', '2024-01-27 17:51:18'),
(26, 13, 34, 'Cesario', 'Ginjo', '200 Evans Ave.', 'M8Z 1J7', 'Toronto', 'Ontario', 'CA', '1416990094', 'cesario@indigitalgroup.ca', 'billing', 0, '2024-01-25 08:49:23', '2024-01-25 08:49:24'),
(42, 24, 70, 'Jessica', 'Salem', '181 Mill St', 'M5A 1C8', 'Toronto', 'Ontario', 'CA', '6478319753', 'jessica_salem@hotmail.com', 'billing', 0, '2024-04-27 12:44:08', '2024-04-27 12:44:11');

-- --------------------------------------------------------

--
-- Table structure for table `affiliates`
--

CREATE TABLE `affiliates` (
  `id` int(11) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `affiliate_name` varchar(250) DEFAULT NULL,
  `affiliate_slug` varchar(250) DEFAULT NULL,
  `handle` varchar(250) DEFAULT NULL,
  `email` varchar(250) DEFAULT NULL,
  `phone` varchar(250) DEFAULT NULL,
  `website` varchar(250) DEFAULT NULL,
  `status` tinyint(1) DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `baking_instructions`
--

CREATE TABLE `baking_instructions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `name` varchar(256) DEFAULT NULL,
  `slug` varchar(256) DEFAULT NULL,
  `baking` text DEFAULT NULL,
  `warming` text DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `picture` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

CREATE TABLE `banners` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `file_type` varchar(250) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `picture_small` varchar(250) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `window` tinyint(4) NOT NULL DEFAULT 0,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `description` varchar(255) DEFAULT NULL,
  `display_order` varchar(255) NOT NULL DEFAULT '1',
  `weight` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` (`id`, `master_id`, `file_type`, `name`, `type`, `picture`, `picture_small`, `link`, `window`, `status`, `description`, `display_order`, `weight`, `created_at`, `updated_at`) VALUES
(1, '20', 'image', NULL, 'home_tiles', 'TGBOhOLcPYi5Cdjqg6txA9dhVAcirk.png', 'dummy.png', NULL, 0, 1, NULL, '1', '0', '2024-01-18 14:22:19', '2024-01-22 07:58:44'),
(2, '21', 'image', NULL, 'home_tiles', 'D91jNyQIFIsZTeJ5thKVzgnd9SChpy.png', 'dummy.png', NULL, 0, 1, NULL, '1', '0', '2024-01-18 14:25:15', '2024-01-22 07:58:23'),
(3, '22', 'image', NULL, 'home_tiles', 'hEK82ZITsC2VZvB6zkOUlc1ih7hzyB.png', 'dummy.png', NULL, 0, 1, NULL, '1', '0', '2024-01-18 14:36:24', '2024-01-24 16:38:08'),
(7, '26', 'image', NULL, 'home_slider', '0gICR2lfG9LNwHznqKfGJOYXBiWAFj.png', 'MvjysbSElGGNzy2P0qumntyWptyE0G.png', 'menu', 0, 1, NULL, '1', '0', '2024-01-18 14:47:04', '2024-01-22 07:59:56'),
(8, '28', 'image', NULL, 'home_tiles', 'LbAGOqchfkY4mlTKMpyZ8Fpp7VF2hT.png', 'dummy.png', NULL, 1, 1, NULL, '1', '0', '2024-01-24 16:35:29', '2024-01-24 16:35:29'),
(11, '31', 'image', NULL, 'home_tiles', 'C0Lql8usOZnFQBVPmgiY1n7qjb8p0D.png', 'dummy.png', NULL, 1, 1, NULL, '1', '0', '2024-01-24 16:37:34', '2024-01-24 16:37:34');

-- --------------------------------------------------------

--
-- Table structure for table `baskets`
--

CREATE TABLE `baskets` (
  `id` int(10) NOT NULL,
  `session` varchar(50) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `order_type` enum('pickup','delivery') NOT NULL DEFAULT 'pickup',
  `status` int(11) NOT NULL DEFAULT 0,
  `shipping_location` text DEFAULT NULL,
  `pickup_id` int(11) DEFAULT 0,
  `serve_date` date DEFAULT NULL COMMENT 'delivery date',
  `serve_time` time DEFAULT NULL COMMENT 'delivery time',
  `postal` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `sel_place` varchar(200) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `coupon_id` int(11) DEFAULT NULL,
  `open` varchar(250) DEFAULT NULL,
  `page` varchar(250) DEFAULT NULL,
  `make_gift` int(11) DEFAULT NULL,
  `card_msg` mediumtext DEFAULT NULL,
  `special_campaign` tinyint(1) NOT NULL DEFAULT 0,
  `special_campaign_id` int(11) DEFAULT NULL,
  `affiliate_id` int(11) DEFAULT NULL,
  `delivery_partner` varchar(250) DEFAULT NULL,
  `delivery_partner_id` int(11) DEFAULT NULL,
  `formatted_address` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `session`, `user_id`, `email`, `order_type`, `status`, `shipping_location`, `pickup_id`, `serve_date`, `serve_time`, `postal`, `city`, `country`, `sel_place`, `remarks`, `coupon_id`, `open`, `page`, `make_gift`, `card_msg`, `special_campaign`, `special_campaign_id`, `affiliate_id`, `delivery_partner`, `delivery_partner_id`, `formatted_address`, `created_at`, `updated_at`) VALUES
(32, 'Acd3gnDuI8bplNxctKNPbr63ixGdkNWVTVJP3COmFuKo0', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-02-06', '10:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-25 08:26:22', '2024-02-06 08:20:48'),
(33, 'coq5nbyBPOueHkJltQSkN4CgOZcHuEDb3JMJEYAjFpOo2', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-25', '12:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-25 08:29:10', '2024-01-25 08:29:15'),
(34, 'BIWVxkNnyhNghlwKkFCPNSPlbXWRUz0EXXbPPkUMA3lHD', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-01-25', '10:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-25 08:47:54', '2024-01-25 08:49:24'),
(35, 'Wv1KRnFPZyQ0uN7RtRLUvEbNPajgwHdoXNxJDhxUyE2Bc', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-01-27', '18:45:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-27 17:44:25', '2024-01-27 17:51:18'),
(36, 'Wv1KRnFPZyQ0uN7RtRLUvEbNPajgwHdoXNxJDhxUyE2Bc', 4, 'valeria.malysheva@live.com', 'pickup', 1, '654 Queen St W', 1, '2024-01-27', '19:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-27 17:52:33', '2024-01-27 17:55:31'),
(37, '78eRDD7LowbO8XZ9s7TtC4aCwWXn8E4tkXIrDGexb69SM', 5, 'jimmykay1@gmail.com', 'pickup', 1, '654 Queen St W', 1, '2024-01-29', '12:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-29 10:54:12', '2024-01-29 10:57:52'),
(38, 'TlqSaDIYJzz7g5Mg4at4Nt9LU2NaUahNSJ2aECIEGSl79', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-28', '13:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-29 12:04:56', '2024-01-29 12:04:56'),
(39, 'RBX9rRMvSW3Bu7yZlVbw7OIbyB4HB6Rs7iPo4Q6qx647Y', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-31', '10:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-01-31 00:24:51', '2024-01-31 00:24:56'),
(40, 'QkiQkeVvxrYeZZqD9DK0Y2SBZvkoLFt9bmiwKdHR9yAy7', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-02-06', '12:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-06 08:26:22', '2024-02-06 08:27:37'),
(41, 'MpyIPwIzLqwhTkxCmYuk5v06IOROduWOKAlLIOEbzkkrq', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-25', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-06 08:42:45', '2024-02-06 08:42:45'),
(42, 'WkE9TLzVEVxMIsgriVwvSnwNfpNjvWWpfrfkr3mRHX0Es', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-08', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-08 06:01:55', '2024-02-08 06:02:02'),
(43, 'GJVMXd8H5PoXnGYfLJgVl397wjBMuU9q9mCxsL3CgR7vv', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-24', '10:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-09 07:07:56', '2024-02-09 07:14:07'),
(44, 'rHZikWbUdiiOgKqo5UFUx8iiKXzJwb4HU7xO2JuHhatwa', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-09', '14:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-09 12:57:26', '2024-02-09 12:58:34'),
(45, 'eDSAp1O6sviaGEnhf0bbq4dLYO6SanzUqxaxsVhTwLW3b', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-14', '14:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-14 13:29:45', '2024-02-14 13:30:44'),
(46, '08wWKNqpZH9eYh6hE4WaD3RuAcCWt6p54cgqnAuk1iEHG', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-17', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-17 05:33:45', '2024-02-17 05:34:05'),
(47, 'jSOAY5VLswwyUxCn6Fak7eSAip75skFVcZeOvfRwRhS7Z', 6, 'mark.krantzberg@gmail.com', 'pickup', 1, '654 Queen St W', 1, '2024-02-18', '12:45:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-18 08:25:39', '2024-02-18 11:19:51'),
(48, 'cpCs7dJ1yNmpsh9zcleA6MnmFQp9aB4dnd5ZmS849Eqh0', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-18', '15:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-18 14:02:16', '2024-02-18 14:02:16'),
(49, 'qq1oWVveryHuxk2RJsKqb0Gt2SwkHGihATzJRiU8Ep7ip', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-02-18', '15:45:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-18 14:43:41', '2024-02-18 14:46:08'),
(50, 'bLHyxQXXq6UvJ0Mb6wj0VwLSz3E88XPlWSKbqe19hoqXv', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-02-19', '15:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-19 02:40:10', '2024-02-19 02:41:35'),
(51, 'JPFxCsm5iNoPDVyUILSTZ6ZN1ujcYXSWU5LzZd0C2miEv', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-01-29', '10:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-19 02:46:37', '2024-02-22 08:23:15'),
(52, 'XeciswYetIkXa5sLrgsRQZkVbthpH5fVz9yOq2cQ415Zp', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-18', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-19 11:19:52', '2024-02-19 11:19:52'),
(53, '26uFdrdYpKFHbHPHpavhR0HSQM25HGcQPgHp7KiG60UwM', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-02-21', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-20 20:35:33', '2024-02-20 20:35:33'),
(54, 'OQZjwVRJrH3zqeEnW6oSopbmVdhogCyRPaJ8c8zbOOyx5', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-02-22', '16:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-02-22 14:06:45', '2024-02-22 14:14:45'),
(55, 'FSXeMhlSMLmBn1Y6gaey9VkZuY5Yu0ko18h1r4iGgbCnn', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-03-02', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-02 04:02:13', '2024-03-02 04:02:34'),
(56, 'ACwYX4JPWQxSyVgqeu0UsDAqEZN5vRnyd77UgoZxUq08I', 7, 'warwickmolly@gmail.com', 'pickup', 1, '654 Queen St W', 1, '2024-03-10', '13:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', 'If it’s possible to have it ready at 12:30, that would be preferred. Thank you so much!', NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-10 12:04:42', '2024-03-10 12:08:34'),
(57, 'u1c6VRavFX3bt9bT2exA5QCZXtw6XbslzbaLDmop4EEzU', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-03-21', '13:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-21 12:09:06', '2024-03-21 12:11:01'),
(58, 'Cp7Bf5qLr1SlG90mMvSB8XvzOtC1jt4kPwSNBeRL301Bs', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-03-22', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-25 16:07:11', '2024-03-25 16:07:11'),
(59, 'FZQeYGG2pIPjLCUDoYNJ8P4PLy2UAC8kqUmLFdb4E9XCo', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-03-31', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-30 18:39:46', '2024-03-30 18:39:58'),
(60, 'k3XA20EqgUKQaG4pCxdF0S8ztIETtGM2fi7o9Ig8YkbEN', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-03-31', '16:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-03-31 15:21:06', '2024-03-31 15:21:28'),
(61, 'xNaZNMwMsGnCYDU3a97WHAAH8rNq5I95GxDorchXuvypb', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-01', '14:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-01 13:24:03', '2024-04-01 13:24:36'),
(62, 'G5JTOHgDYZYvwdz4N3fryEsp1UNjneSfibZVh7irY3ghY', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-02', '14:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-02 13:38:30', '2024-04-02 13:38:30'),
(63, 'dBSxBGfQnMXeJejJ8aDvHPa22881AJjrkmMj32x8UrTnN', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-04', '12:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-04 11:16:22', '2024-04-04 11:16:45'),
(64, 'qKJgoJ9jqLSVguLg4c0ToiCZJAmn7MWjzPPB29EbVjPQd', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-12', '19:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-14 12:39:50', '2024-04-14 12:41:22'),
(65, 'zi3riU6Sh7ij288jbhrfL7B1Qapejxf909KHsHWuBLylC', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-16', '13:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-16 12:07:04', '2024-04-16 12:07:04'),
(66, 'iZIVHmUq238eZJFAZogejkDsZA66uIbYNtGVdU4j58BOP', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-19', '15:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-19 14:16:07', '2024-04-19 14:16:33'),
(67, '88CQ3lIo1gTltz7ZLfDgBEnJuBWqosvejMKT94hErt9wG', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-22', '12:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-22 11:31:39', '2024-04-22 11:31:39'),
(68, 'XHQfN42RzP0lcWdkmxfjC7s7Jh7QDwYRjrEEBT8yqCYUj', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-23', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-22 18:24:49', '2024-04-22 18:25:09'),
(69, 'N7THBXf8zENa4EeWE7azGURP3ywSCUpoZiTPygrCqOODw', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-04-27', '14:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-27 12:23:38', '2024-04-27 12:23:38'),
(70, '7EXPM089smrVyPAvPhH5AvqPax5FISPUpwkOTnuqbADPW', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-04-27', '14:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-04-27 12:36:23', '2024-04-27 12:44:11'),
(71, 'lOaL0T3jQPBJ6Dz9o8tfyTX2HEXIh9ZqoIzcqP9htb1DQ', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-05-02', '12:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-02 11:34:13', '2024-05-02 11:34:13'),
(72, 'NEkEBo9IZx45ZraPMncIh7AeeSvSeg91nmVMcPKzdpvZu', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-05-02', '15:45:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-18 14:01:05', '2024-05-18 14:01:05'),
(73, 'Pxs3oDiMObFWCGQMOTPfr9pIeevfy599QJSuTPCUh0PsM', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-05-21', '19:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-21 17:45:11', '2024-05-21 17:47:06'),
(74, 'IVYjkD2g4Lq2q4xVEn6EEXk1cK2nxuWDhI0IPRzfOWtzP', NULL, NULL, 'pickup', 1, '654 Queen St W', 1, '2024-05-22', '12:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, '0', 'thankyou', NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-22 10:56:54', '2024-05-22 10:59:44'),
(75, 'JYVQF75N4GpXzxc1LWccdSS1k9jncTToA92jDnjKkjNYd', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-05-30', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-29 23:18:35', '2024-05-29 23:18:35'),
(76, '6IJBNyZ7ZEJgKPrIhVQCayqgonNjz7UeVkTlrXUpFu1La', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-05-27', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-05-30 12:28:28', '2024-05-30 12:28:28'),
(77, '2mM4P3VAstf5xxVd6lvzbkkSaL0yUtu4WsBVrQSO6Z0AL', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-02', '12:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-02 11:25:46', '2024-06-02 11:25:46'),
(78, 'GgVPomFf2HLRZvS7oyNDKaJUu0r7VDQT6jVLnWbxRGxhg', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-02', '15:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-02 14:01:20', '2024-06-02 14:04:25'),
(79, 'q0xHe2M3rvAse9VckQTa0DvNo97MarRpv4vqUCC11v3sl', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-04', '15:15:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-04 14:23:16', '2024-06-04 14:23:39'),
(80, 'G9HD5Df8ekYcFXDYkzrllmgdluV6gg6hhtQwwo7WxAi5W', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-25', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-07 06:34:19', '2024-06-25 05:11:05'),
(81, 'ZTolTw5hR70WjW8ikwoMokbPHBzWE7k41qxBmfjFY7A5m', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-14', '11:00:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-14 11:04:21', '2024-06-14 11:04:21'),
(82, 'Jhc7dDeF79QBan9Er7XTKfWiyU0UEFQ2ACtWHuCVVnI4m', NULL, NULL, 'pickup', 0, '654 Queen St W', 1, '2024-06-21', '14:30:00', NULL, 'Toronto', NULL, 'Estreetdeli', NULL, NULL, NULL, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, NULL, '2024-06-21 13:38:15', '2024-06-21 13:38:15');

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `published_at` date DEFAULT NULL,
  `type` enum('blog','recipe') NOT NULL DEFAULT 'blog',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_categories`
--

CREATE TABLE `blog_categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `blog_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `blog_category_lists`
--

CREATE TABLE `blog_category_lists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `type` enum('blog','recipe') NOT NULL DEFAULT 'blog',
  `parent_id` date DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_jobs`
--

CREATE TABLE `career_jobs` (
  `id` int(11) NOT NULL,
  `job_possition` varchar(250) NOT NULL,
  `store_id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `career_requests`
--

CREATE TABLE `career_requests` (
  `id` int(11) NOT NULL,
  `store_name` varchar(250) DEFAULT NULL,
  `position` varchar(250) DEFAULT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) DEFAULT NULL,
  `phone` varchar(250) NOT NULL,
  `resume` varchar(250) DEFAULT NULL,
  `email` varchar(250) NOT NULL,
  `message` text NOT NULL,
  `availability` varchar(250) DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `seo_title` varchar(255) DEFAULT NULL,
  `seo_description` varchar(255) DEFAULT NULL,
  `seo_keyword` varchar(255) DEFAULT NULL,
  `seo_alt` varchar(255) DEFAULT NULL,
  `eligible_discount` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `master_id`, `name`, `slug`, `description`, `parent_id`, `picture`, `seo_title`, `seo_description`, `seo_keyword`, `seo_alt`, `eligible_discount`, `status`, `created_at`, `updated_at`) VALUES
(1, '24', 'Cold Sandwiches', 'cold-sandwiches', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-01-19 09:36:31', '2024-01-19 09:36:31'),
(2, '25', 'Hot Sandwiches', 'hot-sandwiches', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-01-19 09:36:58', '2024-01-19 09:36:58'),
(3, '26', 'Savory Pies', 'savory-pies', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-01-19 09:38:49', '2024-01-19 09:38:49'),
(4, '27', 'Sides', 'sides', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-01-19 09:39:26', '2024-01-19 09:39:26'),
(5, '28', 'Drinks', 'drinks', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2024-01-19 09:40:43', '2024-01-19 09:40:43');

-- --------------------------------------------------------

--
-- Table structure for table `category_products`
--

CREATE TABLE `category_products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `base` varchar(255) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `city_group_id` varchar(255) DEFAULT NULL,
  `page_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `combo_products`
--

CREATE TABLE `combo_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `combo_product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `combo_products`
--

INSERT INTO `combo_products` (`id`, `product_id`, `category_id`, `combo_product_id`, `created_at`, `updated_at`) VALUES
(294, 41, 5, 23, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(293, 41, 5, 24, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(292, 41, 5, 25, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(291, 41, 5, 26, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(290, 41, 4, 19, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(289, 41, 4, 20, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(288, 41, 4, 21, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(287, 41, 4, 22, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(286, 42, 5, 23, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(285, 42, 5, 24, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(284, 42, 5, 25, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(283, 42, 5, 26, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(282, 42, 4, 19, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(281, 42, 4, 20, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(280, 42, 4, 21, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(279, 42, 4, 22, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(302, 43, 5, 23, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(301, 43, 5, 24, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(300, 43, 5, 25, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(299, 43, 5, 26, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(298, 43, 4, 19, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(297, 43, 4, 20, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(296, 43, 4, 21, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(295, 43, 4, 22, '2024-01-24 18:05:08', '2024-01-24 18:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `condiments`
--

CREATE TABLE `condiments` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `master_id` int(11) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `countries`
--

CREATE TABLE `countries` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `content_id` varchar(255) DEFAULT NULL,
  `base` varchar(255) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `page_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `country_shippings`
--

CREATE TABLE `country_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `shipping_id` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(10) NOT NULL,
  `master_id` int(10) NOT NULL,
  `code` varchar(50) NOT NULL,
  `value` decimal(5,2) NOT NULL DEFAULT 0.00,
  `value_type` enum('amount','percentage') NOT NULL DEFAULT 'amount',
  `max_count` int(10) NOT NULL DEFAULT 100,
  `cur_count` int(10) NOT NULL DEFAULT 0,
  `min_sales` decimal(8,2) NOT NULL DEFAULT 0.00,
  `store_id` int(10) DEFAULT NULL,
  `start_time` datetime NOT NULL DEFAULT current_timestamp(),
  `end_time` datetime DEFAULT NULL,
  `availability` enum('in-store','online','all') NOT NULL DEFAULT 'in-store',
  `store_availability` enum('all','certain') NOT NULL DEFAULT 'certain',
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `master_id`, `code`, `value`, `value_type`, `max_count`, `cur_count`, `min_sales`, `store_id`, `start_time`, `end_time`, `availability`, `store_availability`, `status`, `created_at`, `updated_at`) VALUES
(1, 43, 'NEWYEAR', 5.00, 'percentage', 100, 0, 0.00, NULL, '2024-01-01 00:00:00', '2024-01-31 00:00:00', 'all', 'all', 1, '2024-01-22 02:02:16', '2024-01-22 02:02:16');

-- --------------------------------------------------------

--
-- Table structure for table `coupon_stores`
--

CREATE TABLE `coupon_stores` (
  `id` int(11) NOT NULL,
  `coupon_id` varchar(200) DEFAULT NULL,
  `store_id` varchar(200) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `delivery_partners`
--

CREATE TABLE `delivery_partners` (
  `id` int(11) NOT NULL,
  `master_id` int(11) DEFAULT NULL,
  `name` varchar(250) DEFAULT NULL,
  `status` varchar(1) DEFAULT '1',
  `store_link` varchar(256) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `delivery_partners`
--

INSERT INTO `delivery_partners` (`id`, `master_id`, `name`, `status`, `store_link`, `created_at`, `updated_at`) VALUES
(1, 428, 'Uber Eats', '1', 'https://www.facebook.com/profile.php?id=61555480701185', '2024-01-22 08:19:40', '2024-01-22 08:19:40'),
(2, 429, 'Door Dash', '1', 'https://www.facebook.com/profile.php?id=61555480701185', '2024-01-22 08:22:12', '2024-01-22 08:22:12'),
(3, 430, 'Skip The Dishes', '1', 'https://www.facebook.com/profile.php?id=61555480701185', '2024-01-22 08:23:51', '2024-01-22 08:23:51');

-- --------------------------------------------------------

--
-- Table structure for table `delivery_selections`
--

CREATE TABLE `delivery_selections` (
  `id` int(11) NOT NULL,
  `partner_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `delivery_selections`
--

INSERT INTO `delivery_selections` (`id`, `partner_id`, `created_at`, `updated_at`, `sent_at`) VALUES
(1, 429, '2024-01-22 08:28:42', '2024-01-22 08:28:42', '2024-01-22 08:28:42'),
(2, 428, '2024-01-22 08:32:40', '2024-01-22 08:32:40', '2024-01-22 08:32:40'),
(3, 428, '2024-01-22 08:38:28', '2024-01-22 08:38:28', '2024-01-22 08:38:28'),
(4, 429, '2024-01-22 10:15:49', '2024-01-22 10:15:49', '2024-01-22 10:15:49'),
(5, 430, '2024-01-22 10:15:57', '2024-01-22 10:15:57', '2024-01-22 10:15:57'),
(6, 428, '2024-01-22 10:16:12', '2024-01-22 10:16:12', '2024-01-22 10:16:12'),
(7, 428, '2024-01-22 10:25:05', '2024-01-22 10:25:05', '2024-01-22 10:25:05'),
(8, 429, '2024-01-22 10:29:34', '2024-01-22 10:29:34', '2024-01-22 10:29:34'),
(9, 430, '2024-01-22 12:24:52', '2024-01-22 12:24:53', '2024-01-22 12:24:53'),
(10, 430, '2024-01-22 13:00:31', '2024-01-22 13:00:32', '2024-01-22 13:00:32'),
(11, 430, '2024-01-22 13:15:46', '2024-01-22 13:15:47', '2024-01-22 13:15:47'),
(12, 429, '2024-01-22 21:02:41', '2024-01-22 21:02:41', '2024-01-22 21:02:41');

-- --------------------------------------------------------

--
-- Table structure for table `email_configrations`
--

CREATE TABLE `email_configrations` (
  `id` int(11) NOT NULL,
  `api_url` varchar(250) DEFAULT NULL,
  `api_key` mediumtext DEFAULT NULL,
  `api_method` varchar(250) DEFAULT NULL,
  `from_name` varchar(250) DEFAULT NULL,
  `from_newsletter_email` varchar(250) DEFAULT NULL,
  `from_order_email` varchar(250) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `question` longtext DEFAULT NULL,
  `answer` longtext DEFAULT NULL,
  `display_order` varchar(255) NOT NULL DEFAULT '1',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `galleries`
--

CREATE TABLE `galleries` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `title` varchar(200) DEFAULT NULL,
  `picture` varchar(200) NOT NULL,
  `share_link` text DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holidays`
--

CREATE TABLE `holidays` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `the_date` date DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `block_delivery` varchar(255) DEFAULT NULL,
  `cut_off` varchar(255) DEFAULT '00:00 AM',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `holiday_timings`
--

CREATE TABLE `holiday_timings` (
  `id` int(11) NOT NULL,
  `holiday_id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `open` time DEFAULT NULL,
  `close` time DEFAULT NULL,
  `online_pickup_open` time DEFAULT NULL,
  `online_pickup_close` time DEFAULT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage_products`
--

CREATE TABLE `homepage_products` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `title` text DEFAULT NULL,
  `short_desc` text DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `homepage_product_lists`
--

CREATE TABLE `homepage_product_lists` (
  `id` int(11) NOT NULL,
  `homepage_id` int(11) DEFAULT NULL,
  `product_id` int(11) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) NOT NULL,
  `basket_id` int(11) NOT NULL,
  `product_id` int(10) NOT NULL,
  `product_variation_id` int(11) NOT NULL DEFAULT 0,
  `shipping_id` int(11) NOT NULL DEFAULT 0,
  `product_sku` varchar(250) DEFAULT NULL,
  `product_name` varchar(150) NOT NULL,
  `variation` varchar(250) DEFAULT NULL,
  `quantity` int(10) DEFAULT 1,
  `actual_qty` varchar(10) DEFAULT NULL,
  `price_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `actual_price` double(32,2) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `tax_percentage` varchar(11) NOT NULL DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `pre_order` int(11) NOT NULL DEFAULT 0,
  `customized_product` tinyint(1) DEFAULT 0,
  `customized_flavor` varchar(250) DEFAULT NULL,
  `customized_color` varchar(250) DEFAULT NULL,
  `customized_message` varchar(250) DEFAULT NULL,
  `customized_border_color` varchar(250) DEFAULT NULL,
  `customized_text_color` varchar(250) DEFAULT NULL,
  `serve_date` date DEFAULT NULL,
  `serve_time` time DEFAULT NULL,
  `removed_ingredients` text DEFAULT NULL,
  `removed_condiments` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `combo_product` enum('0','1') NOT NULL DEFAULT '0',
  `combo_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `upsell_product` enum('0','1') NOT NULL DEFAULT '0',
  `upsell_details` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `upsell_discount` double(32,2) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `basket_id`, `product_id`, `product_variation_id`, `shipping_id`, `product_sku`, `product_name`, `variation`, `quantity`, `actual_qty`, `price_amount`, `actual_price`, `picture`, `tax_percentage`, `parent`, `note`, `pre_order`, `customized_product`, `customized_flavor`, `customized_color`, `customized_message`, `customized_border_color`, `customized_text_color`, `serve_date`, `serve_time`, `removed_ingredients`, `removed_condiments`, `created_at`, `updated_at`, `combo_product`, `combo_details`, `upsell_product`, `upsell_details`, `upsell_discount`) VALUES
(178, 47, 4, 388, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mayo,Swiss cheese', '', '2024-02-18 11:14:41', '2024-02-18 11:14:41', '0', NULL, '0', NULL, NULL),
(175, 46, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-17 05:33:45', '2024-02-17 05:33:45', '0', NULL, '0', NULL, NULL),
(174, 45, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-14 13:30:22', '2024-02-14 13:30:22', '0', NULL, '0', NULL, NULL),
(173, 45, 6, 304, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-14 13:30:01', '2024-02-14 13:30:01', '0', NULL, '0', NULL, NULL),
(172, 45, 5, 396, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-14 13:29:45', '2024-02-14 13:29:45', '0', NULL, '0', NULL, NULL),
(171, 44, 30, 323, 0, 'ESDDRBRIO', 'Brio', NULL, 1, NULL, 3.50, NULL, 'p4h9ymyP63y2qCOh5VICafdoEdtQPs.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 12:58:28', '2024-02-09 12:58:28', '0', NULL, '0', NULL, NULL),
(170, 44, 4, 388, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 12:58:06', '2024-02-09 12:58:06', '0', NULL, '0', NULL, NULL),
(169, 44, 10, 394, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 16.00, NULL, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 12:57:58', '2024-02-09 12:57:58', '0', NULL, '0', NULL, NULL),
(168, 44, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 12:57:49', '2024-02-09 12:57:49', '0', NULL, '0', NULL, NULL),
(167, 44, 9, 297, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 12:57:26', '2024-02-09 12:57:26', '0', NULL, '0', NULL, NULL),
(166, 43, 42, 364, 0, 'TRIOCOMBO', 'E-Street Trio with Drink & Side', NULL, 1, NULL, 19.35, NULL, 'IWARbqfjgbawC7YT1RoxZmH01LAMgy.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:14:07', '2024-02-09 07:14:07', '1', '[{\"id\":249,\"name\":\"POTATO SALAD\"},{\"id\":254,\"name\":\"Diet Coke\"}]', '0', NULL, NULL),
(164, 43, 19, 309, 0, 'ESDSDPTSD', 'POTATO SALAD', NULL, 1, NULL, 3.25, NULL, '', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:13:28', '2024-02-09 07:13:28', '0', NULL, '0', NULL, NULL),
(165, 43, 41, 365, 0, 'MORTCOMBO', 'What A Mort with Drink & Side', NULL, 1, NULL, 19.35, NULL, '1z5FPIW9we2KYzZWTHVXKdcsu5qszZ.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:13:49', '2024-02-09 07:13:49', '1', '[{\"id\":249,\"name\":\"POTATO SALAD\"},{\"id\":253,\"name\":\"Coke\"}]', '0', NULL, NULL),
(163, 43, 18, 362, 0, 'ESDSPSBCP', 'SPICY BEEF CURRY PIE', NULL, 1, NULL, 11.99, NULL, 'JYLIwJXFWYQO616CJ2t7zRakrDW5eY.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:13:15', '2024-02-09 07:13:15', '0', NULL, '0', NULL, NULL),
(162, 43, 17, 361, 0, 'ESDSPSAAP', 'STEAK AND ALE PIE', NULL, 1, NULL, 11.99, NULL, 'ELClPEZgmIccS3BcOgSOEgXdjjGvTo.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:13:08', '2024-02-09 07:13:08', '0', NULL, '0', NULL, NULL),
(151, 43, 6, 304, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:25', '2024-02-09 07:08:25', '0', NULL, '0', NULL, NULL),
(152, 43, 7, 305, 0, 'ESDCSDBLO', 'THE DIABLO', NULL, 1, NULL, 16.00, NULL, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:28', '2024-02-09 07:08:28', '0', NULL, '0', NULL, NULL),
(153, 43, 5, 396, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:33', '2024-02-09 07:08:33', '0', NULL, '0', NULL, NULL),
(154, 43, 9, 297, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:11:39', '2024-02-09 07:11:39', '0', NULL, '0', NULL, NULL),
(155, 43, 10, 394, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 16.00, NULL, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:11:44', '2024-02-09 07:11:44', '0', NULL, '0', NULL, NULL),
(156, 43, 11, 296, 0, 'ESDHSPRPG', 'PORKY PIG', NULL, 1, NULL, 16.00, NULL, 'pbFS9pzsmIxhsGwQDgylLEIdsnfEvX.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:11:50', '2024-02-09 07:11:50', '0', NULL, '0', NULL, NULL),
(157, 43, 12, 356, 0, 'ESDSPCHPP', 'CHICKEN POT PIE', NULL, 1, NULL, 11.99, NULL, 'T9DVwadrc7DZY5ebS8f9M7LDMfCBcV.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:12:23', '2024-02-09 07:12:23', '0', NULL, '0', NULL, NULL),
(158, 43, 13, 370, 0, 'ESDSPSTMP', 'SOY TIKKA MASALA PIE', NULL, 1, NULL, 11.99, NULL, 'dWzGbzRbtALBZVbZMwrOdFjTbnLaha.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:12:29', '2024-02-09 07:12:29', '0', NULL, '0', NULL, NULL),
(159, 43, 14, 358, 0, 'ESDSPPLPP', 'PULLED PORK PIE', NULL, 1, NULL, 11.99, NULL, 'WE3PjOwZwxWgNndWTsXtN0QLXtjPlK.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:12:36', '2024-02-09 07:12:36', '0', NULL, '0', NULL, NULL),
(160, 43, 15, 359, 0, 'ESDSPBBSR', 'BRAISED BEEF SHORT RIB PIE', NULL, 1, NULL, 11.99, NULL, '2JaEzRoIHjwzoxsTZwtsAjOKYoaiHt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:12:44', '2024-02-09 07:12:44', '0', NULL, '0', NULL, NULL),
(161, 43, 16, 360, 0, 'ESDSPMRPP', 'MUSHROOM POT PIE', NULL, 1, NULL, 11.99, NULL, 'FhWqyahLiAemlDxEpyyMzGhgPgabXg.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:13:00', '2024-02-09 07:13:00', '0', NULL, '0', NULL, NULL),
(135, 36, 2, 376, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 1, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chili Oil', '', '2024-01-27 17:53:02', '2024-01-27 17:53:02', '0', NULL, '0', NULL, NULL),
(136, 36, 9, 297, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:53:14', '2024-01-27 17:53:14', '0', NULL, '0', NULL, NULL),
(137, 36, 12, 356, 0, 'ESDSPCHPP', 'CHICKEN POT PIE', NULL, 1, NULL, 11.99, NULL, 'T9DVwadrc7DZY5ebS8f9M7LDMfCBcV.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:53:21', '2024-01-27 17:53:21', '0', NULL, '0', NULL, NULL),
(138, 36, 45, 371, 0, 'ESTBUTA001', 'BUTTER TART', NULL, 2, NULL, 1.00, NULL, 'morZlZsPIz0yuIyaNiVA7bofXmYIxm.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:53:34', '2024-01-27 17:53:34', '0', NULL, '0', NULL, NULL),
(139, 37, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-29 10:54:12', '2024-01-29 10:54:12', '0', NULL, '0', NULL, NULL),
(140, 38, 4, 388, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 2, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red Onions,Juicy tomato', 'Pepper,Salt', '2024-01-29 12:04:56', '2024-01-29 12:04:56', '0', NULL, '0', NULL, NULL),
(141, 39, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-31 00:24:51', '2024-01-31 00:24:51', '0', NULL, '0', NULL, NULL),
(144, 41, 8, 386, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, 'test', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-06 08:42:45', '2024-02-06 08:42:45', '0', NULL, '0', NULL, NULL),
(143, 40, 10, 394, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 20.03, 16.00, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red Wine', 'Mayo', '2024-02-06 08:26:35', '2024-02-06 08:26:35', '0', NULL, '1', '[{\"id\":252,\"name\":\"COOKIE\"},{\"id\":268,\"name\":\"Jarritos Fruit Punch\"}]', 10.00),
(145, 42, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-08 06:01:55', '2024-02-08 06:01:55', '0', NULL, '0', NULL, NULL),
(146, 43, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:07:56', '2024-02-09 07:07:56', '0', NULL, '0', NULL, NULL),
(147, 43, 8, 386, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:03', '2024-02-09 07:08:03', '0', NULL, '0', NULL, NULL),
(148, 43, 4, 388, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:08', '2024-02-09 07:08:08', '0', NULL, '0', NULL, NULL),
(149, 43, 3, 391, 0, 'ESDCSTVGE', 'THE VEGE', NULL, 1, NULL, 16.00, NULL, '6nz6why1WTmPpONQlwhdmAuhmRIK5w.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:12', '2024-02-09 07:08:12', '0', NULL, '0', NULL, NULL),
(150, 43, 2, 376, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 1, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-09 07:08:20', '2024-02-09 07:08:20', '0', NULL, '0', NULL, NULL),
(134, 36, 6, 304, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:52:55', '2024-01-27 17:52:55', '0', NULL, '0', NULL, NULL),
(128, 35, 33, 320, 0, 'ESDDRBBCH', 'Boylan Black Cherry', NULL, 1, NULL, 3.50, NULL, '7mo0PMyi0sCUojS4YLTf6u6ySnP8fq.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:45:17', '2024-01-27 17:45:17', '0', NULL, '0', NULL, NULL),
(129, 35, 9, 297, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:48:24', '2024-01-27 17:48:24', '0', NULL, '0', NULL, NULL),
(130, 35, 6, 304, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:48:59', '2024-01-27 17:48:59', '0', NULL, '0', NULL, NULL),
(131, 35, 23, 380, 0, 'ESDDRCOKE', 'Coke', NULL, 1, NULL, 2.25, NULL, '3ASHIP1ys3RTKIulzDmxAtF9gzWelT.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:49:48', '2024-01-27 17:49:48', '0', NULL, '0', NULL, NULL),
(132, 36, 23, 380, 0, 'ESDDRCOKE', 'Coke', NULL, 1, NULL, 2.25, NULL, '3ASHIP1ys3RTKIulzDmxAtF9gzWelT.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:52:33', '2024-01-27 17:52:33', '0', NULL, '0', NULL, NULL),
(133, 36, 33, 320, 0, 'ESDDRBBCH', 'Boylan Black Cherry', NULL, 1, NULL, 3.50, NULL, '7mo0PMyi0sCUojS4YLTf6u6ySnP8fq.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:52:45', '2024-01-27 17:52:45', '0', NULL, '0', NULL, NULL),
(126, 35, 12, 356, 0, 'ESDSPCHPP', 'CHICKEN POT PIE', NULL, 1, NULL, 11.99, NULL, 'T9DVwadrc7DZY5ebS8f9M7LDMfCBcV.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:44:35', '2024-01-27 17:44:35', '0', NULL, '0', NULL, NULL),
(127, 35, 45, 371, 0, 'ESTBUTA001', 'BUTTER TART', NULL, 2, NULL, 1.00, NULL, 'morZlZsPIz0yuIyaNiVA7bofXmYIxm.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-27 17:44:57', '2024-01-27 17:44:57', '0', NULL, '0', NULL, NULL),
(125, 35, 2, 376, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 1, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chili Oil', '', '2024-01-27 17:44:25', '2024-01-27 17:44:25', '0', NULL, '0', NULL, NULL),
(123, 33, 6, 304, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-25 08:29:10', '2024-01-25 08:29:10', '0', NULL, '0', NULL, NULL),
(124, 34, 8, 372, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-01-25 08:47:54', '2024-01-25 08:47:54', '0', NULL, '0', NULL, NULL),
(122, 32, 8, 372, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 20.52, 16.00, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Peppery Arugula,Horseradish Mayo', 'Salt,Ketchup', '2024-01-25 08:26:32', '2024-01-25 08:26:32', '0', NULL, '1', '[{\"id\":250,\"name\":\"COLESLAW\"},{\"id\":270,\"name\":\"San Pellegrino Sparkling Water\"}]', 10.00),
(179, 47, 8, 386, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt', '2024-02-18 11:16:03', '2024-02-18 11:16:03', '0', NULL, '0', NULL, NULL),
(180, 48, 8, 386, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, 'No condiments', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Swiss Cheese,Red Onions', '', '2024-02-18 14:02:16', '2024-02-18 14:02:16', '0', NULL, '0', NULL, NULL),
(181, 49, 8, 386, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red Wine,Garlic Aioli,Horseradish Mayo', 'Pepper,Salt', '2024-02-18 14:43:41', '2024-02-18 14:43:41', '0', NULL, '0', NULL, NULL),
(182, 49, 4, 388, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mayo,Swiss cheese,Honey mustard', '', '2024-02-18 14:44:37', '2024-02-18 14:44:37', '0', NULL, '0', NULL, NULL),
(183, 50, 2, 376, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 1, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Bruschetta Mix,Chili Oil', '', '2024-02-19 02:40:10', '2024-02-19 02:40:10', '0', NULL, '0', NULL, NULL),
(191, 54, 8, 404, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-22 14:06:45', '2024-02-22 14:06:45', '0', NULL, '0', NULL, NULL),
(189, 51, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 3, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red Onions,Mozzarella', '', '2024-02-22 08:23:01', '2024-02-22 08:23:53', '0', NULL, '0', NULL, NULL),
(190, 51, 2, 399, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 6, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chili Oil', 'Hot Sauce', '2024-02-22 08:23:15', '2024-02-22 08:23:38', '0', NULL, '0', NULL, NULL),
(186, 52, 2, 376, 0, 'ESDCSTBTN', 'THE BIG TUNA', NULL, 1, NULL, 16.00, NULL, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-19 11:19:52', '2024-02-19 11:19:52', '0', NULL, '0', NULL, NULL),
(188, 53, 1, 375, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 18.45, 16.00, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-20 20:36:08', '2024-02-20 20:36:08', '0', NULL, '1', '[{\"id\":252,\"name\":\"COOKIE\"},{\"id\":269,\"name\":\"Eska Water\"}]', 10.00),
(192, 54, 16, 412, 0, 'ESDSPMRPP', 'MUSHROOM POT PIE', NULL, 1, NULL, 11.99, NULL, 'FhWqyahLiAemlDxEpyyMzGhgPgabXg.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-22 14:07:22', '2024-02-22 14:07:22', '0', NULL, '0', NULL, NULL),
(193, 54, 20, 310, 0, 'ESDSDCLSW', 'COLESLAW', NULL, 2, NULL, 3.25, NULL, '', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-22 14:07:38', '2024-02-22 14:09:50', '0', NULL, '0', NULL, NULL),
(194, 54, 19, 309, 0, 'ESDSDPTSD', 'POTATO SALAD', NULL, 1, NULL, 3.25, NULL, '', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-02-22 14:09:27', '2024-02-22 14:09:27', '0', NULL, '0', NULL, NULL),
(195, 55, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-02 04:02:13', '2024-03-02 04:02:13', '0', NULL, '0', NULL, NULL),
(197, 56, 8, 404, 0, 'ESDCSBFUP', 'BEEF IT UP', NULL, 1, NULL, 16.00, NULL, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-10 12:05:24', '2024-03-10 12:05:24', '0', NULL, '0', NULL, NULL),
(198, 56, 9, 405, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-10 12:05:36', '2024-03-10 12:05:36', '0', NULL, '0', NULL, NULL),
(199, 56, 7, 403, 0, 'ESDCSDBLO', 'THE DIABLO', NULL, 1, NULL, 16.00, NULL, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-10 12:05:56', '2024-03-10 12:05:56', '0', NULL, '0', NULL, NULL),
(200, 56, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-10 12:06:10', '2024-03-10 12:06:10', '0', NULL, '0', NULL, NULL),
(201, 56, 10, 406, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 16.00, NULL, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-10 12:06:19', '2024-03-10 12:06:19', '0', NULL, '0', NULL, NULL),
(202, 57, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-21 12:09:06', '2024-03-21 12:09:06', '0', NULL, '0', NULL, NULL),
(203, 57, 15, 411, 0, 'ESDSPBBSR', 'BRAISED BEEF SHORT RIB PIE', NULL, 1, NULL, 11.99, NULL, '2JaEzRoIHjwzoxsTZwtsAjOKYoaiHt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-21 12:09:29', '2024-03-21 12:09:29', '0', NULL, '0', NULL, NULL),
(204, 57, 17, 413, 0, 'ESDSPSAAP', 'STEAK AND ALE PIE', NULL, 1, NULL, 11.99, NULL, 'ELClPEZgmIccS3BcOgSOEgXdjjGvTo.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-21 12:09:58', '2024-03-21 12:09:58', '0', NULL, '0', NULL, NULL),
(205, 57, 44, 374, 0, 'ESTCB001', 'CARAMEL BROWNIE', NULL, 2, NULL, 1.00, NULL, 'NbxStYcAk96HzN5jvfepSv42kA6iSc.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-21 12:10:22', '2024-03-21 12:10:22', '0', NULL, '0', NULL, NULL),
(206, 58, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tomato', 'Pepper,Salt', '2024-03-25 16:07:11', '2024-03-25 16:07:11', '0', NULL, '0', NULL, NULL),
(207, 59, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-30 18:39:46', '2024-03-30 18:39:46', '0', NULL, '0', NULL, NULL),
(208, 60, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-03-31 15:21:06', '2024-03-31 15:21:06', '0', NULL, '0', NULL, NULL),
(209, 61, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt,Hot Sauce,Mayo', '2024-04-01 13:24:03', '2024-04-01 13:24:03', '0', NULL, '0', NULL, NULL),
(210, 61, 9, 405, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt,Hot Sauce,Mayo', '2024-04-01 13:24:36', '2024-04-01 13:24:36', '0', NULL, '0', NULL, NULL),
(211, 62, 11, 407, 0, 'ESDHSPRPG', 'PORKY PIG', NULL, 1, NULL, 16.00, NULL, 'pbFS9pzsmIxhsGwQDgylLEIdsnfEvX.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Creamy Coleslaw.,Sautéed Onions', '', '2024-04-02 13:38:30', '2024-04-02 13:38:30', '0', NULL, '0', NULL, NULL),
(212, 63, 4, 401, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-04 11:16:22', '2024-04-04 11:16:22', '0', NULL, '0', NULL, NULL),
(213, 64, 6, 402, 0, 'ESDCSGDFR', 'THE GODFATHER', NULL, 1, NULL, 16.00, NULL, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-14 12:39:50', '2024-04-14 12:39:50', '0', NULL, '0', NULL, NULL),
(214, 64, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-14 12:41:22', '2024-04-14 12:41:22', '0', NULL, '0', NULL, NULL),
(215, 65, 3, 400, 0, 'ESDCSTVGE', 'THE VEGE', NULL, 1, NULL, 16.00, NULL, '6nz6why1WTmPpONQlwhdmAuhmRIK5w.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt,Hot Sauce,Mayo', '2024-04-16 12:07:04', '2024-04-16 12:07:04', '0', NULL, '0', NULL, NULL),
(221, 67, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 11:31:39', '2024-04-22 11:31:39', '0', NULL, '0', NULL, NULL),
(217, 66, 9, 405, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-19 14:16:21', '2024-04-19 14:16:21', '0', NULL, '0', NULL, NULL),
(220, 67, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 11:31:39', '2024-04-22 11:31:39', '0', NULL, '0', NULL, NULL),
(219, 66, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 19.35, 16.00, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Hot Sauce', '2024-04-19 14:52:58', '2024-04-19 14:52:58', '0', NULL, '1', '[{\"id\":249,\"name\":\"POTATO SALAD\"},{\"id\":253,\"name\":\"Coke\"}]', 10.00),
(222, 67, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 11:31:39', '2024-04-22 11:31:39', '0', NULL, '0', NULL, NULL),
(223, 67, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 11:31:39', '2024-04-22 11:31:39', '0', NULL, '0', NULL, NULL),
(224, 67, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 11:31:39', '2024-04-22 11:31:39', '0', NULL, '0', NULL, NULL),
(225, 68, 9, 405, 0, 'ESDHSBMTB', 'BIGA MEATABALL', NULL, 1, NULL, 16.00, NULL, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Chili oil', '', '2024-04-22 18:24:49', '2024-04-22 18:24:49', '0', NULL, '0', NULL, NULL),
(226, 68, 25, 327, 0, 'ESDDRNSTA', 'Nestea', NULL, 1, NULL, 2.25, NULL, 'fXt2haFFcOKMH5YfOEMUMKXlxFsZnj.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-04-22 18:25:09', '2024-04-22 18:25:09', '0', NULL, '0', NULL, NULL),
(227, 69, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt', '2024-04-27 12:23:38', '2024-04-27 12:23:38', '0', NULL, '0', NULL, NULL),
(228, 70, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt', '2024-04-27 12:36:23', '2024-04-27 12:36:23', '0', NULL, '0', NULL, NULL),
(233, 72, 10, 406, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 16.00, NULL, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-05-18 14:01:05', '2024-05-18 14:01:05', '0', NULL, '0', NULL, NULL),
(230, 70, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 17.10, 16.00, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Hot Sauce,Salt', '2024-04-27 12:38:55', '2024-04-27 12:38:55', '0', NULL, '1', '[{\"id\":251,\"name\":\"CHIPS\"}]', 10.00),
(232, 71, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 19.13, 16.00, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', 'Pepper,Salt', '2024-05-02 11:34:58', '2024-05-02 11:34:58', '0', NULL, '1', '[{\"id\":251,\"name\":\"CHIPS\"},{\"id\":253,\"name\":\"Coke\"}]', 10.00),
(234, 73, 7, 403, 0, 'ESDCSDBLO', 'THE DIABLO', NULL, 1, NULL, 16.00, NULL, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tomato', '', '2024-05-21 17:45:11', '2024-05-21 17:45:11', '0', NULL, '0', NULL, NULL),
(235, 73, 22, 367, 0, 'ESDSDCOKS', 'COOKIE', NULL, 3, NULL, 3.00, NULL, 'e3nxOLrmGO8H4jfyscuCEgJU5xBaoj.png', '13', NULL, 'Any kind except the sprinkle one please', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-05-21 17:47:06', '2024-05-21 17:47:06', '0', NULL, '0', NULL, NULL),
(236, 74, 7, 403, 0, 'ESDCSDBLO', 'THE DIABLO', NULL, 1, NULL, 16.00, NULL, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tomato', '', '2024-05-22 10:56:54', '2024-05-22 10:56:54', '0', NULL, '0', NULL, NULL),
(237, 74, 7, 403, 0, 'ESDCSDBLO', 'THE DIABLO', NULL, 1, NULL, 16.00, NULL, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Tomato', '', '2024-05-22 10:58:33', '2024-05-22 10:58:33', '0', NULL, '0', NULL, NULL),
(238, 75, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Red Peppers', '', '2024-05-29 23:18:35', '2024-05-29 23:18:35', '0', NULL, '0', NULL, NULL),
(239, 76, 1, 398, 0, 'ESDCSESTR', 'E-STREET TRIO', NULL, 1, NULL, 16.00, NULL, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-05-30 12:28:28', '2024-05-30 12:28:28', '0', NULL, '0', NULL, NULL),
(240, 77, 5, 397, 0, 'ESDCSWAMT', 'WHAT A MORT', NULL, 1, NULL, 16.00, NULL, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-06-02 11:25:46', '2024-06-02 11:25:46', '0', NULL, '0', NULL, NULL),
(244, 79, 3, 400, 0, 'ESDCSTVGE', 'THE VEGE', NULL, 1, NULL, 16.00, NULL, '6nz6why1WTmPpONQlwhdmAuhmRIK5w.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mozzarella', 'Pepper,Salt', '2024-06-04 14:23:16', '2024-06-04 14:23:16', '0', NULL, '0', NULL, NULL),
(245, 79, 22, 367, 0, 'ESDSDCOKS', 'COOKIE', NULL, 1, NULL, 3.00, NULL, 'e3nxOLrmGO8H4jfyscuCEgJU5xBaoj.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-06-04 14:23:39', '2024-06-04 14:23:39', '0', NULL, '0', NULL, NULL),
(249, 80, 3, 400, 0, 'ESDCSTVGE', 'THE VEGE', NULL, 1, NULL, 16.00, NULL, '6nz6why1WTmPpONQlwhdmAuhmRIK5w.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Mozzarella,Bruschetta Mix,Roasted Red Peppers,Balsamic Glaze', 'Hot Sauce', '2024-06-25 05:08:57', '2024-06-25 05:08:57', '0', NULL, '0', NULL, NULL),
(247, 81, 10, 406, 0, 'ESDHSSRTM', 'SHORT RIB TOMMY', NULL, 1, NULL, 16.00, NULL, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Provolone Cheese,Red Wine', 'Salt,Pepper,Hot Sauce', '2024-06-14 11:04:21', '2024-06-14 11:04:21', '0', NULL, '0', NULL, NULL),
(248, 82, 4, 401, 0, 'ESDCSBBRD', 'BIG BIRD', NULL, 1, NULL, 16.00, NULL, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', '13', NULL, '', 0, 0, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '', '', '2024-06-21 13:38:15', '2024-06-21 13:38:15', '0', NULL, '0', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `landing_pages`
--

CREATE TABLE `landing_pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `page_url` varchar(255) DEFAULT NULL,
  `page_name` varchar(255) DEFAULT NULL,
  `category_id` varchar(255) DEFAULT NULL,
  `seo_title` text DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_keywords` varchar(255) DEFAULT NULL,
  `banner1_title` text DEFAULT NULL,
  `banner1_description` longtext DEFAULT NULL,
  `banner1_image` varchar(255) DEFAULT NULL,
  `section1_title` text DEFAULT NULL,
  `section1_description` longtext DEFAULT NULL,
  `section1_button_text` varchar(255) DEFAULT NULL,
  `section1_button_link` varchar(255) DEFAULT NULL,
  `section1_image` varchar(255) DEFAULT NULL,
  `banner2_title` text DEFAULT NULL,
  `banner2_description` longtext DEFAULT NULL,
  `banner2_button_text` varchar(255) DEFAULT NULL,
  `banner2_button_link` varchar(255) DEFAULT NULL,
  `banner2_image` varchar(255) DEFAULT NULL,
  `section2_title` text DEFAULT NULL,
  `section2_description` longtext DEFAULT NULL,
  `section2_button_text` varchar(255) DEFAULT NULL,
  `section2_button_link` varchar(255) DEFAULT NULL,
  `section2_image` varchar(255) DEFAULT NULL,
  `gallery1` varchar(255) DEFAULT NULL,
  `gallery2` varchar(255) DEFAULT NULL,
  `gallery3` varchar(255) DEFAULT NULL,
  `published` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `location_shippings`
--

CREATE TABLE `location_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `shipping_id` varchar(255) DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `location_shippings`
--

INSERT INTO `location_shippings` (`id`, `province`, `country`, `shipping_id`, `charge`, `created_at`, `updated_at`) VALUES
(55, 'NU', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(56, 'YT', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(57, 'NT', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(58, 'NL', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(59, 'AB', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(60, 'SK', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(61, 'PE', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(62, 'MB', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(63, 'NB', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(64, 'NS', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(65, 'QC', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(66, 'BC', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(67, 'ON', 'CA', '1', '0.00', '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(68, 'NU', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(69, 'YT', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(70, 'NT', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(71, 'NL', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(72, 'AB', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(73, 'SK', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(74, 'PE', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(75, 'MB', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(76, 'NB', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(77, 'NS', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(78, 'QC', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(79, 'BC', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(80, 'ON', 'CA', '2', '0.00', '2024-06-25 12:05:35', '2024-06-25 12:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL,
  `title` varchar(250) DEFAULT NULL,
  `image` varchar(100) DEFAULT NULL,
  `link` varchar(250) DEFAULT NULL,
  `position` int(11) NOT NULL DEFAULT 1,
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menucategory_products`
--

CREATE TABLE `menucategory_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL COMMENT 'master_id of product_table',
  `category_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menucategory_products`
--

INSERT INTO `menucategory_products` (`id`, `product_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(314, 231, 1, '1', '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(320, 238, 1, '1', '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(317, 234, 1, '1', '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(316, 233, 1, '1', '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(315, 232, 1, '1', '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(281, 271, 5, '1', '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(318, 236, 1, '1', '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(319, 237, 1, '1', '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(321, 239, 2, '1', '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(322, 240, 2, '1', '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(323, 241, 2, '1', '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(324, 242, 3, '1', '2024-02-21 09:03:29', '2024-02-21 09:03:29'),
(325, 243, 3, '1', '2024-02-21 09:03:51', '2024-02-21 09:03:51'),
(326, 244, 3, '1', '2024-02-21 09:04:49', '2024-02-21 09:04:49'),
(327, 245, 3, '1', '2024-02-21 09:06:10', '2024-02-21 09:06:10'),
(328, 246, 3, '1', '2024-02-21 09:06:40', '2024-02-21 09:06:40'),
(329, 247, 3, '1', '2024-02-21 09:08:00', '2024-02-21 09:08:00'),
(330, 248, 3, '1', '2024-02-21 09:08:22', '2024-02-21 09:08:22'),
(225, 249, 4, '1', '2024-01-24 15:43:41', '2024-01-24 15:43:41'),
(226, 250, 4, '1', '2024-01-24 15:43:45', '2024-01-24 15:43:45'),
(227, 251, 4, '1', '2024-01-24 15:43:50', '2024-01-24 15:43:50'),
(283, 252, 4, '1', '2024-01-24 18:05:57', '2024-01-24 18:05:57'),
(313, 235, 1, '1', '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(280, 272, 5, '1', '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(282, 273, 5, '1', '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(296, 253, 6, '1', '2024-01-25 14:45:02', '2024-01-25 14:45:02'),
(295, 254, 6, '1', '2024-01-25 14:44:54', '2024-01-25 14:44:54'),
(243, 255, 6, '1', '2024-01-24 15:45:53', '2024-01-24 15:45:53'),
(244, 256, 6, '1', '2024-01-24 15:45:56', '2024-01-24 15:45:56'),
(242, 257, 6, '1', '2024-01-24 15:45:48', '2024-01-24 15:45:48'),
(241, 258, 6, '1', '2024-01-24 15:45:42', '2024-01-24 15:45:42'),
(240, 259, 6, '1', '2024-01-24 15:45:37', '2024-01-24 15:45:37'),
(239, 260, 6, '1', '2024-01-24 15:45:35', '2024-01-24 15:45:35'),
(238, 261, 6, '1', '2024-01-24 15:45:30', '2024-01-24 15:45:30'),
(237, 262, 6, '1', '2024-01-24 15:45:27', '2024-01-24 15:45:27'),
(236, 263, 6, '1', '2024-01-24 15:45:24', '2024-01-24 15:45:24'),
(233, 265, 6, '1', '2024-01-24 15:45:13', '2024-01-24 15:45:13'),
(232, 266, 6, '1', '2024-01-24 15:45:08', '2024-01-24 15:45:08'),
(234, 267, 6, '1', '2024-01-24 15:45:18', '2024-01-24 15:45:18'),
(231, 268, 6, '1', '2024-01-24 15:45:04', '2024-01-24 15:45:04'),
(230, 269, 6, '1', '2024-01-24 15:44:02', '2024-01-24 15:44:02'),
(229, 270, 6, '1', '2024-01-24 15:43:58', '2024-01-24 15:43:58'),
(287, 278, 4, '1', '2024-01-25 14:43:14', '2024-01-25 14:43:14'),
(290, 277, 4, '1', '2024-01-25 14:43:34', '2024-01-25 14:43:34'),
(297, 279, 4, '1', '2024-01-25 15:47:14', '2024-01-25 15:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `parent_id` varchar(255) DEFAULT NULL,
  `level` varchar(255) DEFAULT NULL,
  `link` varchar(255) DEFAULT NULL,
  `weight` varchar(255) DEFAULT NULL,
  `landing_page` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `master_id`, `name`, `slug`, `parent_id`, `level`, `link`, `weight`, `landing_page`, `status`, `created_at`, `updated_at`) VALUES
(2, '62', 'Main menu', 'main-menu', NULL, '0', '#', '1', NULL, 1, '2024-01-18 14:49:54', '2024-01-18 14:49:54'),
(3, '63', 'Home', 'home', '62', '1', '/', '1', NULL, 1, '2024-01-18 14:50:14', '2024-01-18 14:50:14'),
(4, '64', 'Footer Menu', 'footer-menu', NULL, '0', NULL, '2', NULL, 1, '2024-01-19 15:12:01', '2024-01-19 15:12:01'),
(5, '65', 'Secondary Menu', 'secondary-menu', NULL, '0', NULL, '3', NULL, 1, '2024-01-19 15:12:09', '2024-01-19 15:12:09'),
(6, '66', 'Menu', 'menu', '62', '1', 'menu', '1', NULL, 1, '2024-01-19 15:12:27', '2024-01-19 15:12:27'),
(7, '67', 'Catering', 'catering', '62', '1', 'catering', '2', NULL, 1, '2024-01-19 15:12:42', '2024-01-19 15:12:42'),
(8, '68', 'Story', 'story', '62', '1', 'story', '3', NULL, 1, '2024-01-19 15:12:56', '2024-01-19 15:12:56'),
(9, '69', 'Contact', 'contact', '62', '1', 'contact', '4', NULL, 1, '2024-01-19 15:13:11', '2024-01-19 15:13:11');

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE `menu_categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `name` varchar(25) NOT NULL,
  `type` varchar(250) DEFAULT NULL,
  `slug` varchar(25) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `picture` varchar(100) DEFAULT NULL,
  `picture_small` varchar(100) DEFAULT NULL,
  `pos_icon` varchar(50) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `eligible_discounts` tinyint(1) NOT NULL DEFAULT 0,
  `pos_sort` int(11) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `master_id`, `name`, `type`, `slug`, `description`, `parent_id`, `picture`, `picture_small`, `pos_icon`, `status`, `eligible_discounts`, `pos_sort`, `display_order`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 14, 'Cold Sandwiches', 'Products', 'cold-sandwiches', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 1, '2024-01-19 15:15:24', '2024-01-19 15:15:24', NULL),
(2, 15, 'Hot Sandwiches', 'Products', 'hot-sandwiches', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 2, '2024-01-19 15:15:44', '2024-01-19 15:15:44', NULL),
(3, 16, 'Savory Pies (5”)', 'Products', 'savory-pies-5', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 3, '2024-01-19 15:16:04', '2024-01-19 15:16:04', NULL),
(4, 17, 'Sides', 'Products', 'sides', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 4, '2024-01-19 15:16:22', '2024-01-19 15:16:22', NULL),
(5, 18, 'Combo Packs', 'Products', 'combo-packs', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 5, '2024-01-19 15:16:55', '2024-01-19 15:16:55', NULL),
(6, 19, 'Drinks', 'Products', 'drinks', NULL, NULL, 'dummy.png', 'dummy.png', NULL, 1, 0, NULL, 9, '2024-01-24 09:05:36', '2024-01-24 09:05:36', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `myaddresses`
--

CREATE TABLE `myaddresses` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `address` text NOT NULL,
  `postalcode` varchar(50) NOT NULL,
  `city` varchar(150) NOT NULL,
  `province` varchar(150) NOT NULL,
  `country` varchar(50) NOT NULL,
  `base` enum('0','1') NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `myaddresses`
--

INSERT INTO `myaddresses` (`id`, `user_id`, `firstname`, `lastname`, `address`, `postalcode`, `city`, `province`, `country`, `base`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'shefii', 'km', '65 Front St W', 'M5J 1E3', 'Toronto', 'Ontario', 'Canada', '0', 1, '2024-01-19 08:37:07', '2024-01-19 08:37:07'),
(2, 2, 'Irshad', 'KKBK', 'Elizabeth Avenue', 'N7S', 'Sarnia', 'Ontario', 'Canada', '0', 1, '2024-01-22 01:31:28', '2024-01-22 01:31:28'),
(3, 3, 'Rohith', 'R', 'Indigital group', '676121', 'Manjeri', 'Ontario', 'canada', '1', 1, '2024-01-23 08:19:23', '2024-01-23 08:19:23'),
(4, 4, 'Val', 'Malysheva', '410 Valermo drive', 'm8w2l7', 'Toronto', 'Ontario', 'canada', '1', 1, '2024-01-27 17:55:30', '2024-01-27 17:55:30'),
(5, 5, 'James', 'Kay', '436 Wellington St W #101', 'M5V 1E7', 'Toronto', 'Ontario', 'Canada', '0', 1, '2024-01-29 10:56:14', '2024-01-29 10:56:14'),
(6, 6, 'Mark', 'Krantzberg', '302 Fairlawn Ave', 'M5M1T3', 'Toronto', 'Ontario', 'Canada', '0', 1, '2024-02-18 11:17:42', '2024-02-18 11:17:42'),
(7, 7, 'Molly', 'Warwick', '700 King St W #1009', 'M5V 2Y6', 'Toronto', 'Ontario', 'canada', '1', 1, '2024-03-10 12:08:33', '2024-03-10 12:08:33'),
(8, 8, 'Craig', 'Empson', '129 Banbury Road', 'M3B 2L6', 'Toronto', 'Ontario', 'Canada', '0', 1, '2024-04-14 12:16:09', '2024-04-14 12:16:09');

-- --------------------------------------------------------

--
-- Table structure for table `mycards`
--

CREATE TABLE `mycards` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL DEFAULT 0,
  `name_on_card` varchar(250) NOT NULL,
  `card_no` varchar(50) NOT NULL,
  `card_type` varchar(50) DEFAULT NULL,
  `card_exp_date` varchar(10) DEFAULT NULL,
  `card_cvv` varchar(5) DEFAULT NULL,
  `base` enum('0','1') NOT NULL DEFAULT '0',
  `status` int(11) NOT NULL DEFAULT 1,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutritions`
--

CREATE TABLE `nutritions` (
  `id` int(11) NOT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `title` varchar(256) NOT NULL,
  `master_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `nutrition_explorers`
--

CREATE TABLE `nutrition_explorers` (
  `id` int(11) NOT NULL,
  `master_product_id` int(11) NOT NULL,
  `master_variation_id` int(11) DEFAULT NULL,
  `nutrition_title` varchar(250) DEFAULT NULL,
  `nutrition_id` int(11) DEFAULT NULL,
  `nutrition_value` varchar(250) DEFAULT NULL,
  `variation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `type` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `paymeny_id` varchar(250) DEFAULT NULL,
  `basket_id` int(11) NOT NULL,
  `subtotal` varchar(50) DEFAULT NULL,
  `taxamount` varchar(50) DEFAULT NULL,
  `grandtotal` decimal(8,2) NOT NULL,
  `shipping_charge` decimal(8,2) NOT NULL DEFAULT 0.00,
  `user_id` int(10) DEFAULT NULL,
  `ipaddress` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `email` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `coupon` varchar(50) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `discount_id` int(10) DEFAULT NULL,
  `discount` decimal(5,2) NOT NULL DEFAULT 0.00,
  `discount_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `payment_method` varchar(20) DEFAULT NULL,
  `card_type` varchar(250) DEFAULT NULL,
  `reference_num` varchar(35) DEFAULT NULL,
  `transaction_id` varchar(11) DEFAULT NULL,
  `payment_status` int(10) DEFAULT 0,
  `affiliate_id` int(10) DEFAULT NULL,
  `backorder` enum('Yes','No') NOT NULL DEFAULT 'No',
  `is_backorder` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` int(10) NOT NULL,
  `billed_at` datetime DEFAULT current_timestamp(),
  `sent_at` datetime DEFAULT NULL,
  `customer_email_send` tinyint(1) NOT NULL DEFAULT 0,
  `customer_email_send_message_id` varchar(250) DEFAULT NULL,
  `store_email_send` tinyint(1) NOT NULL DEFAULT 0,
  `store_email_send_message_id` varchar(250) DEFAULT NULL,
  `tng_email_status` tinyint(1) DEFAULT 0,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `make_gift` int(11) NOT NULL DEFAULT 0,
  `greeting_card_sku` varchar(250) DEFAULT NULL,
  `card_msg` text DEFAULT NULL,
  `additional_email_id` varchar(250) NOT NULL,
  `additional_email_status` tinyint(4) NOT NULL DEFAULT 0
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `paymeny_id`, `basket_id`, `subtotal`, `taxamount`, `grandtotal`, `shipping_charge`, `user_id`, `ipaddress`, `email`, `coupon`, `discount_id`, `discount`, `discount_type`, `payment_method`, `card_type`, `reference_num`, `transaction_id`, `payment_status`, `affiliate_id`, `backorder`, `is_backorder`, `status`, `billed_at`, `sent_at`, `customer_email_send`, `customer_email_send_message_id`, `store_email_send`, `store_email_send_message_id`, `tng_email_status`, `created_at`, `updated_at`, `make_gift`, `greeting_card_sku`, `card_msg`, `additional_email_id`, `additional_email_status`) VALUES
(13, 'ESD2401250001', 'ESD202401251349238', 34, '16', '2.08', 18.08, 0.00, NULL, '65.92.112.181', 'cesario@indigitalgroup.ca', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070017810060', '7337-0_383', 1, NULL, 'No', 'No', 1, '2024-01-25 08:49:24', '2024-01-25 08:49:25', 1, '7329344764158048809', 1, '7328737928229893604', 1, '2024-01-25 08:49:24', '2024-01-29 06:48:03', 0, NULL, NULL, '', 0),
(14, 'ESD2401270001', 'ESD202401272251173', 35, '67.74', '8.8062', 76.55, 0.00, NULL, '99.239.121.126', 'valeria.malysheva@live.com', '', NULL, 0.00, NULL, 'credit_card', 'master_card', '665483070017830040', '7352-0_383', 1, NULL, 'No', 'No', 1, '2024-01-27 17:51:18', '2024-01-27 17:51:19', 0, '7329356463648948453', 1, '7329484792976640364', 0, '2024-01-27 17:51:18', '2024-01-29 06:47:58', 0, NULL, NULL, '', 0),
(15, 'ESD2401270002', 'ESD202401272255303', 36, '67.74', '8.8062', 76.55, 0.00, 4, '99.239.121.126', 'valeria.malysheva@live.com', '', NULL, 0.00, NULL, 'credit_card', 'master_card', '665483070017830050', '7353-0_383', 1, NULL, 'No', 'No', 1, '2024-01-27 17:55:31', '2024-01-27 17:55:32', 0, '7329479578886345332', 1, '7329356334799929629', 0, '2024-01-27 17:55:31', '2024-01-29 06:47:58', 0, NULL, NULL, '', 0),
(16, 'ESD2401290001', 'ESD202401291557515', 37, '16', '2.08', 18.08, 0.00, 5, '99.230.167.15', 'jimmykay1@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'american_expres', '665483070017850030', '7363-0_384', 1, NULL, 'No', 'No', 1, '2024-01-29 10:57:52', '2024-01-29 10:57:53', 1, '7329546030620350049', 1, '7329504841884088176', 1, '2024-01-29 10:57:52', '2024-01-29 10:59:02', 0, NULL, NULL, '', 0),
(17, 'ESD2402060001', 'ESD2024020613204710', 32, '20.52', '2.6676', 23.19, 0.00, NULL, '157.46.189.21', 'shefii.indigital@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070017930040', '7407-0_386', 1, NULL, 'No', 'No', 1, '2024-02-06 08:20:48', '2024-02-06 08:20:48', 1, '7332471835356843215', 1, '7332478475376270291', 1, '2024-02-06 08:20:48', '2024-02-06 08:22:02', 0, NULL, NULL, '', 0),
(18, 'ESD2402060002', 'ESD202402061327367', 40, '20.03', '2.6039', 22.63, 0.00, NULL, '142.115.22.159', 'mkhizar27@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070017930050', '7408-0_386', 1, NULL, 'No', 'No', 1, '2024-02-06 08:27:37', '2024-02-06 08:27:37', 1, '7332433094751908980', 1, '7332473222631280313', 1, '2024-02-06 08:27:37', '2024-02-06 08:29:02', 0, NULL, NULL, '', 0),
(19, 'ESD2402180001', 'ESD202402181619505', 47, '32', '4.16', 36.16, 0.00, 6, '99.240.164.239', 'mark.krantzberg@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018050020', '7531-0_389', 1, NULL, 'No', 'No', 1, '2024-02-18 11:19:51', '2024-02-18 11:19:52', 1, '7336964774875391457', 1, '7336957778373684556', 1, '2024-02-18 11:19:51', '2024-02-18 11:21:02', 0, NULL, NULL, '', 0),
(20, 'ESD2402180002', 'ESD202402181946071', 49, '32', '4.16', 36.16, 0.00, NULL, '184.151.190.120', 'tina.hatton@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018050030', '7532-0_389', 1, NULL, 'No', 'No', 1, '2024-02-18 14:46:08', '2024-02-18 14:46:09', 1, '7337015949410731192', 0, '7337016971612944736', 1, '2024-02-18 14:46:08', '2024-02-18 14:48:02', 0, NULL, NULL, '', 0),
(21, 'ESD2402190001', 'ESD202402190741348', 50, '16', '2.08', 18.08, 0.00, NULL, '49.47.195.86', 'shefii.indigital@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018060050', '7539-0_389', 1, NULL, 'No', 'No', 1, '2024-02-19 02:41:35', '2024-02-19 02:41:36', 1, '7337211791329465928', 1, '7337189848341585511', 0, '2024-02-19 02:41:35', '2024-02-19 02:43:09', 0, NULL, NULL, '', 0),
(22, 'ESD2402220001', 'ESD202402221914440', 54, '37.74', '4.9062', 42.65, 0.00, NULL, '198.84.201.47', 'mlinfoot@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018090070', '7595-0_390', 1, NULL, 'No', 'No', 1, '2024-02-22 14:14:45', '2024-02-22 14:14:46', 1, '7338383436933268613', 1, '7338499358100311913', 1, '2024-02-22 14:14:45', '2024-02-22 14:16:03', 0, NULL, NULL, '', 0),
(23, 'ESD2403100001', 'ESD202403101608334', 56, '80', '10.4', 90.40, 0.00, 7, '104.28.133.0', 'warwickmolly@gmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018250030', '7706-0_394', 1, NULL, 'No', 'No', 1, '2024-03-10 12:08:34', '2024-03-10 12:08:35', 1, '7344065584177083097', 1, '7343697101753326008', 1, '2024-03-10 12:08:34', '2024-03-10 12:10:03', 0, NULL, NULL, '', 0),
(24, 'ESD2404270001', 'ESD202404271644087', 70, '33.1', '4.303', 37.40, 0.00, NULL, '72.143.201.197', 'jessica_salem@hotmail.com', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018710030', '9164-0_407', 1, NULL, 'No', 'No', 1, '2024-04-27 12:44:11', '2024-04-27 12:44:11', 1, '7362581291268596049', 1, '7362575158055305043', 1, '2024-04-27 12:44:11', '2024-04-27 12:46:03', 0, NULL, NULL, '', 0),
(25, 'ESD2405220001', 'ESD202405221459436', 74, '32', '4.16', 36.16, 0.00, NULL, '99.240.22.189', 'kristenpachul@live.ca', '', NULL, 0.00, NULL, 'credit_card', 'visa_card', '665483070018960040', '9361-0_413', 1, NULL, 'No', 'No', 1, '2024-05-22 10:59:44', '2024-05-22 10:59:44', 1, '7371834647983958390', 1, '7371793175779860458', 1, '2024-05-22 10:59:44', '2024-05-22 11:01:05', 0, NULL, NULL, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `order_feedback`
--

CREATE TABLE `order_feedback` (
  `id` int(11) NOT NULL,
  `invoice_id` varchar(250) DEFAULT NULL,
  `rating` int(11) DEFAULT 1,
  `comments` mediumtext DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `sent_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `order_payments`
--

CREATE TABLE `order_payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `paid_amount` varchar(20) NOT NULL,
  `cheque_no` varchar(155) DEFAULT NULL,
  `holder_name` varchar(155) DEFAULT NULL,
  `firstname` varchar(155) DEFAULT NULL,
  `lastname` varchar(155) DEFAULT NULL,
  `credit_card` varchar(155) DEFAULT NULL,
  `exp_month` varchar(10) DEFAULT NULL,
  `exp_year` varchar(10) DEFAULT NULL,
  `cvv` varchar(5) DEFAULT NULL,
  `reference_num` varchar(155) DEFAULT NULL,
  `transaction_id` varchar(155) DEFAULT NULL,
  `payment_status` varchar(155) DEFAULT NULL,
  `status` enum('0','1') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `heading` text DEFAULT NULL,
  `banner_id` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `html` longtext DEFAULT NULL,
  `published` varchar(255) NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `password_reset_tokens`
--

INSERT INTO `password_reset_tokens` (`email`, `token`, `created_at`) VALUES
('shefii.indigital@gmail.com', '$2y$10$szEc7Xc9rXTgsQGK0YfVYeRIs/2pxFreynIzpx4g9FuRbYlBlGIb6', '2024-02-26 09:27:04');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `availability` varchar(255) DEFAULT NULL,
  `in_store` int(11) DEFAULT 0,
  `online` int(11) DEFAULT 0,
  `product_type` varchar(250) DEFAULT NULL,
  `has_variation` int(11) NOT NULL DEFAULT 0,
  `addon_availability` int(11) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `contents` longtext DEFAULT NULL,
  `baking_info` text DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `picture_small` varchar(255) DEFAULT NULL,
  `nutrition_picture` varchar(255) DEFAULT NULL,
  `ingredients_picture` varchar(255) DEFAULT NULL,
  `tax_id` varchar(255) DEFAULT NULL,
  `seo_title` longtext DEFAULT NULL,
  `seo_description` longtext DEFAULT NULL,
  `seo_keyword` longtext DEFAULT NULL,
  `seo_alt` longtext DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `addon` int(11) NOT NULL DEFAULT 0,
  `gift_card` int(11) NOT NULL DEFAULT 0,
  `greeting_card` int(11) NOT NULL DEFAULT 0,
  `regular` int(11) NOT NULL DEFAULT 0,
  `display_order` int(11) NOT NULL DEFAULT 1,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `cooktime` varchar(250) DEFAULT NULL,
  `energy` varchar(250) DEFAULT NULL,
  `serving` varchar(250) DEFAULT NULL,
  `seasonal_availability` tinyint(1) DEFAULT 0,
  `seasonal_show_start` datetime DEFAULT NULL,
  `seasonal_show_end` datetime DEFAULT NULL,
  `seasonal_date_start` date DEFAULT NULL,
  `seasonal_date_end` date DEFAULT NULL,
  `has_customization` tinyint(1) NOT NULL DEFAULT 0,
  `customization_color_one` text DEFAULT NULL,
  `customization_color_two` text DEFAULT NULL,
  `mark_stock_status` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `combo_product` enum('0','1') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `master_id`, `name`, `slug`, `availability`, `in_store`, `online`, `product_type`, `has_variation`, `addon_availability`, `description`, `contents`, `baking_info`, `picture`, `picture_small`, `nutrition_picture`, `ingredients_picture`, `tax_id`, `seo_title`, `seo_description`, `seo_keyword`, `seo_alt`, `type`, `addon`, `gift_card`, `greeting_card`, `regular`, `display_order`, `status`, `cooktime`, `energy`, `serving`, `seasonal_availability`, `seasonal_show_start`, `seasonal_show_end`, `seasonal_date_start`, `seasonal_date_end`, `has_customization`, `customization_color_one`, `customization_color_two`, `mark_stock_status`, `created_at`, `updated_at`, `combo_product`) VALUES
(1, '231', 'E-STREET TRIO', 'e-street-trio', 'in-store', 1, 1, 'both', 0, NULL, '<p>Prosciutto cotto, mortadella, genoa salami,mozzarella cheese, red onion rings, roasted red peppers, and shredded iceberg with pesto mayo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 09:49:00', '2024-02-21 08:57:33', '0'),
(2, '232', 'THE BIG TUNA', 'the-big-tuna', 'in-store', 1, 1, 'both', 0, NULL, '<p>Olive tapenade, Havarti cheese, tuna, caper aioli, bruschetta, chili oil, shredded iceberg, and pesto mayo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 09:52:20', '2024-02-21 08:58:07', '0'),
(3, '233', 'THE VEGE', 'the-vege', 'in-store', 1, 1, 'both', 0, NULL, '<p>Roasted eggplant, roasted red peppers, bruschetta, mozzarella, red onion rings, arugula, and balsamic glaze.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:18:21', '2024-02-21 08:58:33', '0'),
(4, '234', 'BIG BIRD', 'big-bird', 'in-store', 1, 1, 'both', 0, NULL, '<p>Swiss cheese, smoked turkey, red onion rings, tomatoes, shredded iceberg, mayo, and honey mustard</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:25:36', '2024-02-21 08:58:57', '0'),
(5, '235', 'WHAT A MORT', 'what-a-mort', 'in-store', 1, 1, 'both', 0, NULL, '<p>Provolone cheese, mortadella, smoked ham, soppressata, tomato slices, and shredded iceberg, with mayo.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:29:17', '2024-02-21 08:56:34', '0'),
(6, '236', 'THE GODFATHER', 'the-godfather', 'in-store', 1, 1, 'both', 0, NULL, '<p>Provolone cheese, prosciutto cotto, mortadella, hot capocollo, prosciutto, tomato slices, red onions, arugula, pepper, and balsamic glaze with pesto mayo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:34:50', '2024-02-21 08:59:55', '0'),
(7, '237', 'THE DIABLO', 'the-diablo', 'in-store', 1, 1, 'both', 0, NULL, '<p>Havarti cheese, prosciutto cotto, hot capocollo, hot soppressata, hot banana peppers, red onion rings, tomato slices, and shredded iceberg touch of spicy mayo.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:38:40', '2024-02-21 09:00:33', '0'),
(8, '238', 'BEEF IT UP', 'beef-it-up', 'in-store', 1, 1, 'both', 0, NULL, '<p>Slow roasted beef, horseradish mayo, cheddar cheese, red onion rings, arugula, pepper, garlic aioli, and red wine vinegar</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:42:18', '2024-02-21 09:01:26', '0'),
(9, '239', 'BIGA MEATABALL', 'biga-meataball', 'in-store', 1, 1, 'both', 0, NULL, '<p>Meatballs smothered in marinara sauce, enhanced with pesto mayo and a kick of chili oil, all topped with melted Provolone cheese</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:52:47', '2024-02-21 09:02:07', '0'),
(10, '240', 'SHORT RIB TOMMY', 'short-rib-tommy', 'in-store', 1, 1, 'both', 0, NULL, '<p>Braised short rib paired with saut&eacute;ed onions and mushrooms, complemented by garlic aioli and red wine vinegar, all topped with melted Provolone cheese.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:55:55', '2024-02-21 09:02:38', '0'),
(11, '241', 'PORKY PIG', 'porky-pig', 'in-store', 1, 1, 'both', 0, NULL, '<p>Cheddar cheese, tender pulled pork, BBQ sauce, saut&eacute;ed onions, and creamy coleslaw on a bun</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 10:57:17', '2024-02-21 09:03:08', '0'),
(12, '242', 'CHICKEN POT PIE', 'chicken-pot-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>A traditional chicken pot pie with rosemary and thyme, peas, carrots and leeks.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:02:24', '2024-01-24 15:47:20', '0'),
(13, '243', 'SOY TIKKA MASALA PIE', 'soy-tikka-masala-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Soy Chunks blended with masala spice mix coconut milk and red peppers.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:06:00', '2024-02-21 09:03:51', '0'),
(14, '244', 'PULLED PORK PIE', 'pulled-pork-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Marinatred pork shoulder, pulled and smothered in a smoky bbq sauce.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:08:12', '2024-01-24 15:47:14', '0'),
(15, '245', 'BRAISED BEEF SHORT RIB PIE', 'braised-beef-short-rib-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Short rib braised in red wine and mixed with carrots, celery and onions.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:11:16', '2024-01-24 15:46:41', '0'),
(16, '246', 'MUSHROOM POT PIE', 'mushroom-pot-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Creamy vegan mushroom pie is loaded with peas, carrots, mushrooms and coconut milk.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:15:42', '2024-01-24 15:46:34', '0'),
(17, '247', 'STEAK AND ALE PIE', 'steak-and-ale-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Traditional Irish steak and Ale pie with mushrooms and potatoes.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:19:57', '2024-01-24 15:46:28', '0'),
(18, '248', 'SPICY BEEF CURRY PIE', 'spicy-beef-curry-pie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Spicy Curry beef pie made with traditional spices from India and green peas.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:22:22', '2024-01-24 15:46:22', '0'),
(19, '249', 'POTATO SALAD', 'potato-salad', 'in-store', 1, 1, 'both', 0, NULL, '<p>Potato Salad</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:48:22', '2024-01-24 15:43:41', '0'),
(20, '250', 'COLESLAW', 'coleslaw', 'in-store', 1, 1, 'both', 0, NULL, '<p>Coleslaw</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:50:56', '2024-01-24 15:43:45', '0'),
(21, '251', 'CHIPS', 'chips', 'in-store', 1, 1, 'both', 0, NULL, '<p>Chips</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:52:23', '2024-01-24 15:43:50', '0'),
(22, '252', 'COOKIE', 'cookie', 'in-store', 1, 1, 'both', 0, NULL, '<p>Cookie</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:54:53', '2024-01-24 18:05:57', '0'),
(23, '253', 'Coke', 'coke', 'in-store', 1, 1, 'both', 0, NULL, '<p>Coke</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:58:25', '2024-01-24 15:46:11', '0'),
(24, '254', 'Diet Coke', 'diet-coke', 'in-store', 1, 1, 'both', 0, NULL, '<p>Diet Coke</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 11:59:49', '2024-01-24 15:46:17', '0'),
(25, '255', 'Nestea', 'nestea', 'in-store', 1, 1, 'both', 0, NULL, '<p>Nestea</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:02:19', '2024-01-24 15:45:52', '0'),
(26, '256', 'Canada Dry Gingerale', 'canada-dry-gingerale', 'in-store', 1, 1, 'both', 0, NULL, '<p>Canada Dry Gingerale</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:04:31', '2024-01-24 15:45:56', '0'),
(27, '257', 'Fresca', 'fresca', 'in-store', 1, 1, 'both', 0, NULL, '<p>Fresca</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:07:13', '2024-01-24 15:45:48', '0'),
(28, '258', 'San Pellegrino Limonata', 'san-pellegrino-limonata', 'in-store', 1, 1, 'both', 0, NULL, '<p>San Pellegrino Limonata</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:10:30', '2024-01-24 15:45:42', '0'),
(29, '259', 'San Pellegrino Aranciata', 'san-pellegrino-aranciata', 'in-store', 1, 1, 'both', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:14:33', '2024-01-24 15:45:37', '0'),
(30, '260', 'Brio', 'brio', 'in-store', 1, 1, 'both', 0, NULL, '<p>Brio</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:15:56', '2024-01-24 15:45:35', '0'),
(31, '261', 'Boylan Root Beer', 'boylan-root-beer', 'in-store', 1, 1, 'both', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:18:19', '2024-01-24 15:45:30', '0'),
(32, '262', 'Fanta', 'fanta', 'in-store', 1, 1, 'both', 0, NULL, '<p>Fanta</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:20:18', '2024-01-24 15:45:27', '0'),
(33, '263', 'Boylan Black Cherry', 'boylan-black-cherry', 'in-store', 1, 1, 'both', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:23:25', '2024-01-24 15:45:24', '0'),
(35, '265', 'Jarritos Lime', 'jarritos-lime', 'in-store', 1, 1, 'both', 0, NULL, '<p>Jarritos Lime</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:28:22', '2024-01-24 15:45:13', '0'),
(36, '266', 'Jarritos Pineapple', 'jarritos-pineapple', 'in-store', 1, 1, 'both', 0, NULL, '<p>Jarritos Pineapple</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:31:08', '2024-01-24 15:45:08', '0'),
(37, '267', 'Jarritos Mexican Cola', 'jarritos-mexican-cola', 'in-store', 1, 1, 'both', 0, NULL, '<p>Jarritos Mexican Cola</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:33:21', '2024-01-24 15:45:18', '0'),
(38, '268', 'Jarritos Fruit Punch', 'jarritos-fruit-punch', 'in-store', 1, 1, 'both', 0, NULL, '<p>Jarritos Fruit Punch</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:35:14', '2024-01-24 15:45:04', '0'),
(39, '269', 'Eska Water', 'eska-water', 'in-store', 1, 1, 'both', 0, NULL, '<p>Eska Water</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:37:57', '2024-01-24 15:44:02', '0'),
(40, '270', 'San Pellegrino Sparkling Water', 'san-pellegrino-sparkling-water', 'in-store', 1, 1, 'both', 0, NULL, '<p>San Pellegrino Sparkling Water</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-19 12:40:05', '2024-01-24 15:43:58', '0'),
(41, '271', 'What A Mort with Drink & Side', 'what-a-mort-with-drink-side', 'in-store', 1, 1, 'both', 0, NULL, '<p>What A Mort Combo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-23 16:14:03', '2024-01-24 18:05:02', '1'),
(42, '272', 'E-Street Trio with Drink & Side', 'e-street-trio-with-drink-side', 'in-store', 1, 1, 'both', 0, NULL, '<p>E-Street Trio Combo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-23 16:19:08', '2024-01-24 18:04:56', '1'),
(43, '273', 'Porky Pig with Drink & Side', 'porky-pig-with-drink-side', 'in-store', 1, 1, 'both', 0, NULL, '<p>Porky Pig Combo</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-23 16:22:35', '2024-01-24 18:05:08', '1'),
(44, '277', 'CARAMEL BROWNIE', 'caramel-brownie', 'in-store', 1, 1, 'both', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-24 17:43:03', '2024-01-24 17:43:48', '0'),
(45, '278', 'BUTTER TART', 'butter-tart', 'in-store', 1, 1, 'both', 0, NULL, '<p>Voted one of the best butter tarts in Toronto, Our traditional take on this sweet and gooey classic is nothing short of fantastic! Made in house daily it is impossible just to have one.</p>', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-24 17:47:33', '2024-01-24 17:47:33', '0'),
(46, '279', 'Cheese Slice', 'cheese-slice', 'in-store', 1, 1, 'delivery', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '13', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, NULL, NULL, NULL, 0, NULL, NULL, NULL, NULL, 0, NULL, NULL, 0, '2024-01-25 15:47:14', '2024-01-25 15:47:14', '0');

-- --------------------------------------------------------

--
-- Table structure for table `product_cities`
--

CREATE TABLE `product_cities` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `city_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_combos`
--

CREATE TABLE `product_combos` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` double(32,2) DEFAULT NULL,
  `min_addon` int(11) NOT NULL,
  `max_addon` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `picture` varchar(128) DEFAULT NULL,
  `name` varchar(128) DEFAULT NULL,
  `description` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_combos`
--

INSERT INTO `product_combos` (`id`, `product_id`, `price`, `min_addon`, `max_addon`, `created_at`, `updated_at`, `picture`, `name`, `description`) VALUES
(21, 41, 0.00, 2, 2, '2024-01-24 18:05:03', '2024-01-24 18:05:03', '1z5FPIW9we2KYzZWTHVXKdcsu5qszZ.png', 'What A Mort with Drink & Side', 'Select a drink and a side to create your combo meal'),
(20, 42, 0.00, 2, 2, '2024-01-24 18:04:57', '2024-01-24 18:04:57', 'IWARbqfjgbawC7YT1RoxZmH01LAMgy.png', 'E-Street Trio with Drink & Side', 'Select a drink and a side to create your combo meal'),
(22, 43, 0.00, 2, 2, '2024-01-24 18:05:08', '2024-01-24 18:05:08', 'GggDKH9d2Nnz1msWC0KpRiz34T4L1T.png', 'Porky Pig with Drink & Side', 'Select a drink and a side to create your combo meal');

-- --------------------------------------------------------

--
-- Table structure for table `product_combo_categories`
--

CREATE TABLE `product_combo_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `min_addon` int(11) NOT NULL,
  `max_addon` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_combo_categories`
--

INSERT INTO `product_combo_categories` (`id`, `product_id`, `category_id`, `min_addon`, `max_addon`, `created_at`, `updated_at`) VALUES
(42, 41, 5, 1, 1, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(41, 41, 4, 1, 1, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(40, 42, 5, 1, 1, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(39, 42, 4, 1, 1, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(44, 43, 5, 1, 1, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(43, 43, 4, 1, 1, '2024-01-24 18:05:08', '2024-01-24 18:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_condiments`
--

CREATE TABLE `product_condiments` (
  `id` int(11) NOT NULL,
  `condiment_name` varchar(250) DEFAULT NULL,
  `product_id` int(11) NOT NULL,
  `condiment_master_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_condiments`
--

INSERT INTO `product_condiments` (`id`, `condiment_name`, `product_id`, `condiment_master_id`, `created_at`, `updated_at`) VALUES
(239, 'Salt', 42, 5, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(238, 'Hot Sauce', 42, 4, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(237, 'Mayo', 42, 3, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(245, 'Salt', 41, 5, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(244, 'Hot Sauce', 41, 4, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(243, 'Mayo', 41, 3, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(362, 'Pepper', 7, 6, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(361, 'Salt', 7, 5, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(360, 'Hot Sauce', 7, 4, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(358, 'Pepper', 6, 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(357, 'Salt', 6, 5, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(356, 'Hot Sauce', 6, 4, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(346, 'Pepper', 2, 6, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(344, 'Hot Sauce', 2, 4, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(345, 'Salt', 2, 5, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(373, 'Salt', 10, 5, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(374, 'Pepper', 10, 6, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(342, 'Pepper', 1, 6, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(340, 'Hot Sauce', 1, 4, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(341, 'Salt', 1, 5, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(350, 'Pepper', 3, 6, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(349, 'Salt', 3, 5, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(348, 'Hot Sauce', 3, 4, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(354, 'Pepper', 4, 6, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(347, 'Mayo', 3, 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(366, 'Pepper', 8, 6, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(365, 'Salt', 8, 5, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(364, 'Hot Sauce', 8, 4, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(363, 'Mayo', 8, 3, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(251, 'Salt', 43, 5, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(250, 'Hot Sauce', 43, 4, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(249, 'Mayo', 43, 3, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(370, 'Pepper', 9, 6, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(369, 'Salt', 9, 5, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(368, 'Hot Sauce', 9, 4, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(376, 'Hot Sauce', 11, 4, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(377, 'Salt', 11, 5, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(378, 'Pepper', 11, 6, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(338, 'Pepper', 5, 6, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(336, 'Hot Sauce', 5, 4, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(337, 'Salt', 5, 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(375, 'Mayo', 11, 3, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(367, 'Mayo', 9, 3, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(353, 'Salt', 4, 5, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(339, 'Mayo', 1, 3, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(335, 'Mayo', 5, 3, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(355, 'Mayo', 6, 3, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(359, 'Mayo', 7, 3, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(371, 'Mayo', 10, 3, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(352, 'Hot Sauce', 4, 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(240, 'Pepper', 42, 6, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(246, 'Pepper', 41, 6, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(252, 'Pepper', 43, 6, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(351, 'Mayo', 4, 3, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(343, 'Mayo', 2, 3, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(372, 'Hot Sauce', 10, 4, '2024-02-21 09:02:38', '2024-02-21 09:02:38');

-- --------------------------------------------------------

--
-- Table structure for table `product_images`
--

CREATE TABLE `product_images` (
  `id` int(11) NOT NULL,
  `picture` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'product id',
  `type` varchar(250) NOT NULL COMMENT 'thumb,main,extra',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_images`
--

INSERT INTO `product_images` (`id`, `picture`, `product_id`, `type`, `created_at`, `updated_at`) VALUES
(543, 'ewXzpQt9jBo0Xu14ldrM12e1PBKAW6.png', 40, 'Thumbnail', '2024-01-24 15:43:58', '2024-01-24 15:43:58'),
(759, 'YqaMARsM3X7h36sPRXQMv6ADHtOODp.png', 16, 'Extra Image', '2024-02-21 09:06:41', '2024-02-21 09:06:41'),
(761, 'sxx1EIogYhEbknJa1pVlWZIraHuE6z.png', 17, 'Extra Image', '2024-02-21 09:08:02', '2024-02-21 09:08:02'),
(763, 'viMfwIRZI25GeuoWoshRydvX2qfkPx.png', 18, 'Extra Image', '2024-02-21 09:08:23', '2024-02-21 09:08:23'),
(733, 'c5N3CO5XhErqh3UEdvzVp5BrCznvo4.png', 4, 'Extra Image', '2024-02-21 08:58:59', '2024-02-21 08:58:59'),
(732, 'yHbWzPxLCW4vtaAFyBIy3JyvYcecT5.png', 4, 'Thumbnail', '2024-02-21 08:58:59', '2024-02-21 08:58:59'),
(741, 'knthenZun9EPGiLsZMdW8lzpwUCr5u.png', 8, 'Main Image', '2024-02-21 09:01:28', '2024-02-21 09:01:28'),
(736, 'TC5GDk713gDyks4DHlwRTGlnFvBzjg.png', 6, 'Main Image', '2024-02-21 08:59:57', '2024-02-21 08:59:57'),
(735, 'RKhqgC0xsNEAWX2Vh7RHbkHcbOPBr6.png', 6, 'Thumbnail', '2024-02-21 08:59:57', '2024-02-21 08:59:57'),
(731, 'R29CIVpCeD0jW4mfySTpcAMJqJA3Ii.png', 4, 'Main Image', '2024-02-21 08:58:58', '2024-02-21 08:58:58'),
(730, 'jjkCQC0x0c04TqFdfp7PPxQe4F7yeU.png', 4, 'Main Image', '2024-02-21 08:58:58', '2024-02-21 08:58:58'),
(758, 'FhWqyahLiAemlDxEpyyMzGhgPgabXg.png', 16, 'Thumbnail', '2024-02-21 09:06:41', '2024-02-21 09:06:41'),
(757, 'j8iK21nr4wr4OJqFgEoX3hr2N7FCKp.png', 15, 'Extra Image', '2024-02-21 09:06:11', '2024-02-21 09:06:11'),
(756, '2JaEzRoIHjwzoxsTZwtsAjOKYoaiHt.png', 15, 'Thumbnail', '2024-02-21 09:06:10', '2024-02-21 09:06:10'),
(760, 'ELClPEZgmIccS3BcOgSOEgXdjjGvTo.png', 17, 'Thumbnail', '2024-02-21 09:08:01', '2024-02-21 09:08:01'),
(762, 'JYLIwJXFWYQO616CJ2t7zRakrDW5eY.png', 18, 'Thumbnail', '2024-02-21 09:08:23', '2024-02-21 09:08:23'),
(738, 'u9lxlHqThwRTIGu0mVFHjgFMsJuqYL.png', 7, 'Main Image', '2024-02-21 09:00:37', '2024-02-21 09:00:37'),
(737, 'ylqCZeHx9HfjUHrAgylhEjbFDLZubA.png', 7, 'Thumbnail', '2024-02-21 09:00:36', '2024-02-21 09:00:36'),
(669, '3ASHIP1ys3RTKIulzDmxAtF9gzWelT.png', 23, 'Thumbnail', '2024-01-25 14:45:02', '2024-01-25 14:45:02'),
(668, 'O4loxlrc7DnjpBSfqfod0Uc4LtN0oZ.png', 24, 'Thumbnail', '2024-01-25 14:44:55', '2024-01-25 14:44:55'),
(558, '6xEgCk4Xa5iiNoKNL3JgRd83D66VSi.png', 26, 'Thumbnail', '2024-01-24 15:45:57', '2024-01-24 15:45:57'),
(556, 'kK4g8apBGn31PfD3joDzd1MxV5Gox5.png', 27, 'Thumbnail', '2024-01-24 15:45:48', '2024-01-24 15:45:48'),
(555, 'CmHI71hGkSfXxgwI4l9Bn8CQ9N8Rff.png', 28, 'Thumbnail', '2024-01-24 15:45:42', '2024-01-24 15:45:42'),
(554, 'bjm3kPDyyL9DZaRvMmGjGr4A9txN9K.png', 29, 'Thumbnail', '2024-01-24 15:45:38', '2024-01-24 15:45:38'),
(553, 'p4h9ymyP63y2qCOh5VICafdoEdtQPs.png', 30, 'Thumbnail', '2024-01-24 15:45:36', '2024-01-24 15:45:36'),
(552, 'qwtA4AAodGAzgCmm2cfrlt1e7NH2bg.png', 31, 'Thumbnail', '2024-01-24 15:45:30', '2024-01-24 15:45:30'),
(550, '7mo0PMyi0sCUojS4YLTf6u6ySnP8fq.png', 33, 'Thumbnail', '2024-01-24 15:45:24', '2024-01-24 15:45:24'),
(551, 'HEhzNVQGLeazBaUUTKIaJlPcYdH40V.png', 32, 'Thumbnail', '2024-01-24 15:45:28', '2024-01-24 15:45:28'),
(547, 'RBzmKrURZbfFoFy1KTTda4G5lBhsvm.png', 35, 'Thumbnail', '2024-01-24 15:45:13', '2024-01-24 15:45:13'),
(747, '4nh39L5CeDGlaFpD2EthW9kQ7sZmu8.png', 10, 'Extra Image', '2024-02-21 09:02:39', '2024-02-21 09:02:39'),
(546, 'xf5LV3Bsmxg9sQeqVMeNt2klLDTOCV.png', 36, 'Thumbnail', '2024-01-24 15:45:09', '2024-01-24 15:45:09'),
(548, 't1dIP1Iap8jiKqAvXy395HUuWo9KdN.png', 37, 'Thumbnail', '2024-01-24 15:45:19', '2024-01-24 15:45:19'),
(545, 'IltFKEF0nulR6SsVG63F2V7WdI9LOd.png', 38, 'Thumbnail', '2024-01-24 15:45:05', '2024-01-24 15:45:05'),
(544, 'JoPsEAfPJpfNVPDHcC0Qv5Gn23mK7o.png', 39, 'Thumbnail', '2024-01-24 15:44:02', '2024-01-24 15:44:02'),
(652, 'NbxStYcAk96HzN5jvfepSv42kA6iSc.png', 44, 'Thumbnail', '2024-01-25 14:43:35', '2024-01-25 14:43:35'),
(751, 'RRyoR43VlcFzealml2GK9XAd6r95pN.png', 12, 'Extra Image', '2024-02-21 09:03:30', '2024-02-21 09:03:30'),
(750, 'T9DVwadrc7DZY5ebS8f9M7LDMfCBcV.png', 12, 'Thumbnail', '2024-02-21 09:03:29', '2024-02-21 09:03:29'),
(752, 'KDfUHjmDpYWFmQw4Cb88FYuWKm8IgW.png', 13, 'Main Image', '2024-02-21 09:03:52', '2024-02-21 09:03:52'),
(753, 'dWzGbzRbtALBZVbZMwrOdFjTbnLaha.png', 13, 'Thumbnail', '2024-02-21 09:03:52', '2024-02-21 09:03:52'),
(755, 'fpso8Tbj2hY1MlJfOyUjSdo8KmtZ57.png', 14, 'Extra Image', '2024-02-21 09:04:50', '2024-02-21 09:04:50'),
(754, 'WE3PjOwZwxWgNndWTsXtN0QLXtjPlK.png', 14, 'Thumbnail', '2024-02-21 09:04:50', '2024-02-21 09:04:50'),
(653, 'Wx8da5UDcenPze6SMvzINDKPWz0nHU.png', 44, 'Extra Image', '2024-01-25 14:43:35', '2024-01-25 14:43:35'),
(745, 'MIDQqY1zmBs1k2Q5IE2sQol5yUdsAR.png', 9, 'Extra Image', '2024-02-21 09:02:08', '2024-02-21 09:02:08'),
(744, 'M7erQqj5GWhuKnptu8h5D0ul4x4MFE.png', 9, 'Main Image', '2024-02-21 09:02:08', '2024-02-21 09:02:08'),
(743, 'pfKFUy9Robw8X5B6zQiWecTJ3Uv1Up.png', 9, 'Thumbnail', '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(734, 'ikNBYwHFPO6M4ZpUpvKG6OQNfFIIWf.png', 6, 'Extra Image', '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(719, '0tyUXHV8TkglcFGTH6ZCTtwbKMY2fH.png', 5, 'Main Image', '2024-02-21 08:56:36', '2024-02-21 08:56:36'),
(729, 'GTqXykAAX72yvtI0LcCDTEBgAUJRgh.png', 3, 'Extra Image', '2024-02-21 08:58:36', '2024-02-21 08:58:36'),
(728, 'eWI1lieY3lGkfjzyhHREd4LlQ1BznC.png', 3, 'Main Image', '2024-02-21 08:58:35', '2024-02-21 08:58:35'),
(727, '6nz6why1WTmPpONQlwhdmAuhmRIK5w.png', 3, 'Thumbnail', '2024-02-21 08:58:35', '2024-02-21 08:58:35'),
(749, 'DMIAFww0iuvl8mj2YgpTir7XI4RTic.png', 11, 'Main Image', '2024-02-21 09:03:09', '2024-02-21 09:03:09'),
(748, 'pbFS9pzsmIxhsGwQDgylLEIdsnfEvX.png', 11, 'Thumbnail', '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(724, '7UK66E1yOuZImm5NEzd05rtVn10B2R.png', 2, 'Thumbnail', '2024-02-21 08:58:08', '2024-02-21 08:58:08'),
(725, 'HTuJRitB9LvyjJcdIut6WDQJkZoeiQ.png', 2, 'Main Image', '2024-02-21 08:58:09', '2024-02-21 08:58:09'),
(726, 'ibxz94YXYoRfGXy43w6VEev1l8dUkN.png', 3, 'Main Image', '2024-02-21 08:58:34', '2024-02-21 08:58:34'),
(723, 'hE1g76tm9u0zgWm4uuFYwD94ogoVIR.png', 1, 'Extra Image', '2024-02-21 08:57:35', '2024-02-21 08:57:35'),
(722, 'M3r8SloxsC6m9eskBku3ZQ1uVE0Rn6.png', 1, 'Extra Image', '2024-02-21 08:57:35', '2024-02-21 08:57:35'),
(721, 'yVGRLVr9fhCTAdisSUgKbqbhNfdL8U.png', 1, 'Main Image', '2024-02-21 08:57:34', '2024-02-21 08:57:34'),
(718, 'VyRqPgWNN8K8adn09ktW4efmPRtdii.png', 5, 'Thumbnail', '2024-02-21 08:56:36', '2024-02-21 08:56:36'),
(742, '1t4ktqFI3dMSK0eaOzMnY15G4M0bpK.png', 8, 'Extra Image', '2024-02-21 09:01:28', '2024-02-21 09:01:28'),
(720, 'vUmoToeBIbfNkDXA2keFIs8AYLko5N.png', 1, 'Thumbnail', '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(636, 'GggDKH9d2Nnz1msWC0KpRiz34T4L1T.png', 43, 'Thumbnail', '2024-01-24 18:05:09', '2024-01-24 18:05:09'),
(634, 'IWARbqfjgbawC7YT1RoxZmH01LAMgy.png', 42, 'Thumbnail', '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(635, '1z5FPIW9we2KYzZWTHVXKdcsu5qszZ.png', 41, 'Thumbnail', '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(746, 'xdBWA4qKAJOaH9tTR9Czg7cNsNdAvD.png', 10, 'Thumbnail', '2024-02-21 09:02:39', '2024-02-21 09:02:39'),
(717, 'vYgU2e8T4rC1rEYwlOJbyd99V3FIbt.png', 5, 'Thumbnail', '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(557, 'fXt2haFFcOKMH5YfOEMUMKXlxFsZnj.png', 25, 'Thumbnail', '2024-01-24 15:45:53', '2024-01-24 15:45:53'),
(645, 'morZlZsPIz0yuIyaNiVA7bofXmYIxm.png', 45, 'Thumbnail', '2024-01-25 14:43:14', '2024-01-25 14:43:14'),
(640, 'fMk6H9QH1QLXX7HqEMSFNfA1mAgSRs.png', 22, 'Extra Image', '2024-01-24 18:06:00', '2024-01-24 18:06:00'),
(639, 'DAjPtgRG9uIzgNYOXQyCav8GLOurKl.png', 22, 'Extra Image', '2024-01-24 18:06:00', '2024-01-24 18:06:00'),
(638, 'Zh2G3HRUNrAj5PKYmCvsq8qxv7xuzb.png', 22, 'Extra Image', '2024-01-24 18:05:59', '2024-01-24 18:05:59'),
(637, 'e3nxOLrmGO8H4jfyscuCEgJU5xBaoj.png', 22, 'Thumbnail', '2024-01-24 18:05:58', '2024-01-24 18:05:58'),
(739, 'QiZteBvrRBohypeYoLlgB7FMj5JYr8.png', 8, 'Thumbnail', '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(740, '1Hhr5umAhzY0xH0W3tyTvFu52fBRx4.png', 8, 'Main Image', '2024-02-21 09:01:27', '2024-02-21 09:01:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_images_old`
--

CREATE TABLE `product_images_old` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_ingredients`
--

CREATE TABLE `product_ingredients` (
  `id` int(11) NOT NULL,
  `name` varchar(128) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_ingredients`
--

INSERT INTO `product_ingredients` (`id`, `name`, `product_id`, `created_at`, `updated_at`) VALUES
(845, 'Mushrooms', 10, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(801, 'Chili Oil', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(831, 'Havarti Cheese', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(830, 'Tomato', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(827, 'Prosciutto Cotto', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(828, 'Red Onion', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(829, 'Spicy Soppressata', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(849, 'Creamy Coleslaw.', 11, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(848, 'Melted Cheddar Cheese', 11, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(844, 'Provolone Cheese', 10, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(843, 'Sautéed onions', 10, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(807, 'Mozzarella', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(806, 'Roasted Eggplant', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(805, 'Bruschetta Mix', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(822, 'Provolone Cheese', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(821, 'Tomato', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(820, 'Peppery Arugula', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(819, 'Pesto Mayo', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(818, 'Prosciutto cotto', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(817, 'Hot Capocollo', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(813, 'Juicy tomato', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(800, 'Black Olive Tapenade', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(797, 'Pesto Mayo', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(799, 'Havarti cheese', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(794, 'Red Onions', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(837, 'Red Onions', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(795, 'Iceberg Lettuce', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(793, 'Red Peppers', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(792, 'Mozzarella', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(790, 'Pesto Mayo', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(836, 'Swiss Cheese', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(835, 'Horseradish Mayo', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(834, 'Garlic Aioli', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(804, 'Roasted Red Peppers', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(841, 'Pesto mayo', 9, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(840, 'Provolone cheese.', 9, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(838, 'Marinara sauce', 9, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(812, 'Red Onions', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(811, 'Honey mustard', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(833, 'Peppery Arugula', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(832, 'Red Wine', 8, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(791, 'Mortadella', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(825, 'Hot Banana Peppers', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(787, 'Mayo', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(786, 'Smoked ham', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(785, 'Tomato', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(784, 'Soppressata', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(783, 'Provolone cheese', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(782, 'Lettuce', 5, '2024-02-21 08:56:35', '2024-02-21 08:56:35'),
(789, 'Genoa Salami', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(802, 'Balsamic Glaze', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(798, 'Bruschetta Mix', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(816, 'Mortadella', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(815, 'Prosciutto', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(814, 'Balsamic Glaze', 6, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(826, 'Hot capocollo', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(839, 'Chili oil', 9, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(810, 'Crisp lettuce', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(809, 'Swiss cheese', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(808, 'Mayo', 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(847, 'Sautéed Onions', 11, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(796, 'Caper Aioli', 2, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(803, 'Mushrooms', 3, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(846, 'BBQ Sauce', 11, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(824, 'Spicy Mayo', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(823, 'Lettuce', 7, '2024-02-21 09:00:35', '2024-02-21 09:00:35'),
(842, 'Red Wine', 10, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(788, 'Prosciutto Cotto', 1, '2024-02-21 08:57:33', '2024-02-21 08:57:33');

-- --------------------------------------------------------

--
-- Table structure for table `product_shippings`
--

CREATE TABLE `product_shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `shipping_id` varchar(255) DEFAULT NULL,
  `product_id` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_shippings`
--

INSERT INTO `product_shippings` (`id`, `shipping_id`, `product_id`, `created_at`, `updated_at`) VALUES
(63, '2', '42', '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(64, '1', '42', '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(65, '2', '41', '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(66, '1', '41', '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(67, '2', '43', '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(68, '1', '43', '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(69, '2', '45', '2024-01-25 14:43:14', '2024-01-25 14:43:14'),
(70, '1', '45', '2024-01-25 14:43:14', '2024-01-25 14:43:14'),
(73, '2', '44', '2024-01-25 14:43:34', '2024-01-25 14:43:34'),
(74, '1', '44', '2024-01-25 14:43:34', '2024-01-25 14:43:34'),
(75, '1', '46', '2024-01-25 15:47:14', '2024-01-25 15:47:14'),
(76, '2', '46', '2024-01-25 15:47:14', '2024-01-25 15:47:14');

-- --------------------------------------------------------

--
-- Table structure for table `product_specializations`
--

CREATE TABLE `product_specializations` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `specialization_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `product_upsells`
--

CREATE TABLE `product_upsells` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `discount` double(32,2) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_upsells`
--

INSERT INTO `product_upsells` (`id`, `product_id`, `discount`, `created_at`, `updated_at`) VALUES
(114, 3, 10.00, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(117, 7, 10.00, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(111, 5, 10.00, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(113, 2, 10.00, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(116, 6, 10.00, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(115, 4, 10.00, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(112, 1, 10.00, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(119, 9, 10.00, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(118, 8, 10.00, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(120, 10, 10.00, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(121, 11, 10.00, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(61, 43, NULL, '2024-01-24 18:05:08', '2024-01-24 18:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_upsell_categories`
--

CREATE TABLE `product_upsell_categories` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `product_upsell_categories`
--

INSERT INTO `product_upsell_categories` (`id`, `product_id`, `category_id`, `created_at`, `updated_at`) VALUES
(213, 3, 4, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(219, 7, 4, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(207, 5, 4, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(206, 5, 5, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(218, 7, 5, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(211, 2, 4, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(210, 2, 5, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(217, 6, 4, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(216, 6, 5, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(215, 4, 4, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(214, 4, 5, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(209, 1, 4, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(208, 1, 5, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(223, 9, 4, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(222, 9, 5, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(221, 8, 4, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(220, 8, 5, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(212, 3, 5, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(225, 10, 4, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(224, 10, 5, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(227, 11, 4, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(226, 11, 5, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(111, 43, 5, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(110, 43, 4, '2024-01-24 18:05:08', '2024-01-24 18:05:08');

-- --------------------------------------------------------

--
-- Table structure for table `product_variations`
--

CREATE TABLE `product_variations` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `product_id` int(11) DEFAULT NULL,
  `sku` text DEFAULT NULL,
  `variation` varchar(250) DEFAULT NULL,
  `variation_name` text DEFAULT NULL,
  `in_store` int(11) DEFAULT 0,
  `online` int(11) DEFAULT 0,
  `weight` varchar(255) DEFAULT NULL,
  `in_stock` varchar(255) DEFAULT NULL,
  `stock_status` int(11) NOT NULL DEFAULT 1,
  `price` decimal(10,2) DEFAULT NULL,
  `serving` varchar(255) DEFAULT NULL,
  `cook_time` varchar(255) DEFAULT NULL,
  `energy` varchar(255) DEFAULT NULL,
  `vegan` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `ingredients` longtext DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `master_id`, `product_id`, `sku`, `variation`, `variation_name`, `in_store`, `online`, `weight`, `in_stock`, `stock_status`, `price`, `serving`, `cook_time`, `energy`, `vegan`, `description`, `ingredients`, `status`, `created_at`, `updated_at`) VALUES
(309, 1333, 19, 'ESDSDPTSD', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:43:41', '2024-01-24 15:43:41'),
(310, 1334, 20, 'ESDSDCLSW', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:43:45', '2024-01-24 15:43:45'),
(311, 1335, 21, 'ESDSDCHPS', NULL, NULL, 1, 1, '0', '1', 1, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:43:50', '2024-01-24 15:43:50'),
(313, 1354, 40, 'ESDDRSPSW', NULL, NULL, 1, 1, '0', '1', 1, 3.55, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:43:58', '2024-01-24 15:43:58'),
(314, 1353, 39, 'ESDDREWTR', NULL, NULL, 1, 1, '0', '1', 1, 1.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:44:02', '2024-01-24 15:44:02'),
(315, 1352, 38, 'ESDDRJFTP', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:04', '2024-01-24 15:45:04'),
(316, 1350, 36, 'ESDDRJPNP', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:08', '2024-01-24 15:45:08'),
(317, 1349, 35, 'ESDDRJLME', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:13', '2024-01-24 15:45:13'),
(318, 1351, 37, 'ESDDRJMCL', NULL, NULL, 1, 1, '0', '1', 1, 3.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:18', '2024-01-24 15:45:18'),
(320, 1347, 33, 'ESDDRBBCH', NULL, NULL, 1, 1, '0', '1', 1, 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:24', '2024-01-24 15:45:24'),
(321, 1346, 32, 'ESDDRFNTA', NULL, NULL, 1, 1, '0', '1', 1, 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:27', '2024-01-24 15:45:27'),
(322, 1345, 31, 'ESDDRBRBR', NULL, NULL, 1, 1, '0', '1', 1, 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:30', '2024-01-24 15:45:30'),
(323, 1344, 30, 'ESDDRBRIO', NULL, NULL, 1, 1, '0', '1', 1, 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:35', '2024-01-24 15:45:35'),
(324, 1343, 29, 'ESDDRSPLA', NULL, NULL, 1, 1, '0', '1', 1, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:37', '2024-01-24 15:45:37'),
(325, 1342, 28, 'ESDDRSNPL', NULL, NULL, 1, 1, '0', '1', 1, 2.75, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:42', '2024-01-24 15:45:42'),
(326, 1341, 27, 'ESDDRFRSC', NULL, NULL, 1, 1, '0', '1', 1, 3.50, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:48', '2024-01-24 15:45:48'),
(327, 1339, 25, 'ESDDRNSTA', NULL, NULL, 1, 1, '0', '1', 1, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:52', '2024-01-24 15:45:52'),
(328, 1340, 26, 'ESDDRCDGA', NULL, NULL, 1, 1, '0', '1', 1, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 15:45:56', '2024-01-24 15:45:56'),
(364, 1356, 42, 'TRIOCOMBO', NULL, NULL, 1, 1, '0', '1', 1, 19.35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 18:04:57', '2024-01-24 18:04:57'),
(365, 1355, 41, 'MORTCOMBO', NULL, NULL, 1, 1, '0', '1', 1, 19.35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 18:05:03', '2024-01-24 18:05:03'),
(366, 1357, 43, 'PORYCOMBO', NULL, NULL, 1, 1, '0', '1', 1, 19.35, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 18:05:08', '2024-01-24 18:05:08'),
(367, 1336, 22, 'ESDSDCOKS', NULL, NULL, 1, 1, '0', '1', 1, 3.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-24 18:05:57', '2024-01-24 18:05:57'),
(371, 1363, 45, 'ESTBUTA001', NULL, NULL, 1, 1, '3', '1', 1, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 14:43:14', '2024-01-25 14:43:14'),
(374, 1362, 44, 'ESTCB001', NULL, NULL, 1, 1, '4.5', '1', 1, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 14:43:34', '2024-01-25 14:43:34'),
(379, 1338, 24, 'ESDDRDCKE', NULL, NULL, 1, 1, '0', '1', 1, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 14:44:54', '2024-01-25 14:44:54'),
(380, 1337, 23, 'ESDDRCOKE', NULL, NULL, 1, 1, '0', '1', 1, 2.25, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 14:45:02', '2024-01-25 14:45:02'),
(381, 1364, 46, 'CHEESESLIC', NULL, NULL, 1, 1, '1', '1', 1, 1.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-01-25 15:47:14', '2024-01-25 15:47:14'),
(397, 1319, 5, 'ESDCSWAMT', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(398, 1315, 1, 'ESDCSESTR', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(399, 1316, 2, 'ESDCSTBTN', NULL, NULL, 1, 1, NULL, '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(400, 1317, 3, 'ESDCSTVGE', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(401, 1318, 4, 'ESDCSBBRD', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(402, 1320, 6, 'ESDCSGDFR', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(403, 1321, 7, 'ESDCSDBLO', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(404, 1322, 8, 'ESDCSBFUP', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(405, 1323, 9, 'ESDHSBMTB', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(406, 1324, 10, 'ESDHSSRTM', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(407, 1325, 11, 'ESDHSPRPG', NULL, NULL, 1, 1, '0', '1', 1, 16.00, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(408, 1326, 12, 'ESDSPCHPP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:03:29', '2024-02-21 09:03:29'),
(409, 1327, 13, 'ESDSPSTMP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:03:51', '2024-02-21 09:03:51'),
(410, 1328, 14, 'ESDSPPLPP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:04:49', '2024-02-21 09:04:49'),
(411, 1329, 15, 'ESDSPBBSR', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:06:10', '2024-02-21 09:06:10'),
(412, 1330, 16, 'ESDSPMRPP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:06:40', '2024-02-21 09:06:40'),
(413, 1331, 17, 'ESDSPSAAP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:08:00', '2024-02-21 09:08:00'),
(414, 1332, 18, 'ESDSPSBCP', NULL, NULL, 1, 1, '0', '1', 1, 11.99, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '2024-02-21 09:08:22', '2024-02-21 09:08:22');

-- --------------------------------------------------------

--
-- Table structure for table `provinces`
--

CREATE TABLE `provinces` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `code` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `base` varchar(255) DEFAULT '0',
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `page_id` varchar(255) DEFAULT NULL,
  `price` varchar(255) DEFAULT NULL,
  `all_products` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `provinces`
--

INSERT INTO `provinces` (`id`, `master_id`, `name`, `code`, `country`, `base`, `status`, `page_id`, `price`, `all_products`, `created_at`, `updated_at`) VALUES
(1, '94', 'Ontario', 'ON', 'CA', '0', 1, NULL, NULL, '0', '2024-01-18 14:24:42', '2024-01-18 14:24:42'),
(2, '95', 'British Columbia', 'BC', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:25:30', '2024-01-24 15:25:30'),
(3, '96', 'Quebec', 'QC', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:25:55', '2024-01-24 15:25:55'),
(4, '97', 'Nova Scotia', 'NS', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:04', '2024-01-24 15:26:04'),
(5, '98', 'New Brunswick', 'NB', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:10', '2024-01-24 15:26:10'),
(6, '99', 'Manitoba', 'MB', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:14', '2024-01-24 15:26:14'),
(7, '100', 'Prince Edward Island', 'PE', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:19', '2024-01-24 15:26:19'),
(8, '101', 'Saskatchewan', 'SK', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:22', '2024-01-24 15:26:22'),
(9, '102', 'Alberta', 'AB', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:27', '2024-01-24 15:26:27'),
(10, '103', 'Newfoundland And Labrador', 'NL', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:32', '2024-01-24 15:26:32'),
(11, '104', 'Northwest Territories', 'NT', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:37', '2024-01-24 15:26:37'),
(12, '105', 'Yukon', 'YT', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:41', '2024-01-24 15:26:41'),
(13, '106', 'Nunavut', 'NU', 'CA', '0', 1, NULL, NULL, '0', '2024-01-24 15:26:46', '2024-01-24 15:26:46');

-- --------------------------------------------------------

--
-- Table structure for table `redirects`
--

CREATE TABLE `redirects` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `from_url` varchar(128) DEFAULT NULL,
  `to_url` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `shippings`
--

CREATE TABLE `shippings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `order_type` varchar(50) DEFAULT NULL,
  `name` text DEFAULT NULL,
  `slug` text DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `charge` varchar(255) DEFAULT NULL,
  `days` varchar(255) DEFAULT NULL,
  `max_days` varchar(255) DEFAULT NULL,
  `cut_off` varchar(255) DEFAULT NULL,
  `preperation_time` varchar(20) NOT NULL DEFAULT '0',
  `info_line` varchar(255) DEFAULT NULL,
  `policy_id` varchar(255) DEFAULT NULL,
  `sunday` tinyint(4) NOT NULL DEFAULT 1,
  `monday` tinyint(4) NOT NULL DEFAULT 1,
  `tuesday` tinyint(4) NOT NULL DEFAULT 1,
  `wednesday` tinyint(4) NOT NULL DEFAULT 1,
  `thursday` tinyint(4) NOT NULL DEFAULT 1,
  `friday` tinyint(4) NOT NULL DEFAULT 1,
  `saturday` tinyint(4) NOT NULL DEFAULT 1,
  `require_date` varchar(255) DEFAULT NULL,
  `priority` varchar(255) DEFAULT NULL,
  `picture` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `shippings`
--

INSERT INTO `shippings` (`id`, `master_id`, `order_type`, `name`, `slug`, `description`, `charge`, `days`, `max_days`, `cut_off`, `preperation_time`, `info_line`, `policy_id`, `sunday`, `monday`, `tuesday`, `wednesday`, `thursday`, `friday`, `saturday`, `require_date`, `priority`, `picture`, `status`, `created_at`, `updated_at`) VALUES
(1, '26', 'delivery', 'Delivery', 'delivery', NULL, '10.00', '0', '0', '19:00:00', '1', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, '1', '10', 'dummy.png', 1, '2024-01-19 15:20:13', '2024-01-19 15:20:13'),
(2, '27', 'pickup', 'Pickup', 'pickup', NULL, '0.00', '0', '0', '19:00:00', '1', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, '1', '10', 'dummy.png', 1, '2024-01-19 15:20:44', '2024-01-19 15:20:44');

-- --------------------------------------------------------

--
-- Table structure for table `shipping_rules`
--

CREATE TABLE `shipping_rules` (
  `id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `day` varchar(32) NOT NULL,
  `cutoff` varchar(32) DEFAULT NULL,
  `after_day` varchar(32) DEFAULT NULL,
  `after_time` varchar(32) DEFAULT NULL,
  `before_day` varchar(32) DEFAULT NULL,
  `before_time` varchar(32) DEFAULT NULL,
  `status` int(11) DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `shipping_rules`
--

INSERT INTO `shipping_rules` (`id`, `shipping_id`, `day`, `cutoff`, `after_day`, `after_time`, `before_day`, `before_time`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'sunday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(2, 1, 'saturday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(3, 1, 'thursday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(4, 1, 'friday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(5, 1, 'wednesday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(6, 1, 'tuesday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(7, 1, 'monday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:33', '2024-06-25 12:05:33'),
(8, 2, 'sunday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(9, 2, 'saturday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(10, 2, 'thursday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(11, 2, 'friday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(12, 2, 'wednesday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(13, 2, 'tuesday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35'),
(14, 2, 'monday', '16:00', '1', '00:00', '0', '00:00', 0, '2024-06-25 12:05:35', '2024-06-25 12:05:35');

-- --------------------------------------------------------

--
-- Table structure for table `socialmedia_sites`
--

CREATE TABLE `socialmedia_sites` (
  `id` int(11) NOT NULL,
  `master_id` int(11) NOT NULL DEFAULT 0,
  `title` varchar(250) DEFAULT NULL,
  `icon` varchar(250) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `position` int(11) DEFAULT 1,
  `status` varchar(10) DEFAULT NULL,
  `created_at` date NOT NULL,
  `updated_at` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `specializations`
--

CREATE TABLE `specializations` (
  `id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `slug` varchar(75) NOT NULL,
  `status` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `icon` varchar(256) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `stores`
--

CREATE TABLE `stores` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `slug` varchar(250) DEFAULT NULL,
  `store_code` varchar(255) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `secondary_email` varchar(250) DEFAULT NULL,
  `additional_email` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `postal_code` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `lat` varchar(255) DEFAULT NULL,
  `lng` varchar(255) DEFAULT NULL,
  `map_link` varchar(255) DEFAULT NULL,
  `picture` varchar(250) DEFAULT NULL,
  `picture_icon` varchar(250) DEFAULT NULL,
  `display_order` int(11) NOT NULL DEFAULT 1,
  `shipping` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `manager_name` varchar(250) DEFAULT NULL,
  `manager_picture` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `stores`
--

INSERT INTO `stores` (`id`, `master_id`, `name`, `slug`, `store_code`, `email`, `secondary_email`, `additional_email`, `address`, `description`, `city`, `postal_code`, `province`, `phone`, `lat`, `lng`, `map_link`, `picture`, `picture_icon`, `display_order`, `shipping`, `status`, `created_at`, `updated_at`, `manager_name`, `manager_picture`) VALUES
(1, '39', 'Estreetdeli', 'estreetdeli', 'Estreetdeli', 'store@estreetdeli.ca', 'jakki.sweetiepie@gmail.com,queenstsweetiepie@mysweetiepie.ca', NULL, '654 Queen St W', NULL, 'Toronto', 'M6J 1E5', 'ON', '4166139372', '1', '1', NULL, 'dummy.png', 'Vt9WZ1Wx5hWlDuuvSehR0yPUCAq1qD.png', 1, '1', 1, '2024-01-18 14:33:50', '2024-01-31 16:03:37', NULL, 'dummy.png');

-- --------------------------------------------------------

--
-- Table structure for table `store_images`
--

CREATE TABLE `store_images` (
  `id` int(11) NOT NULL,
  `store_id` int(11) NOT NULL,
  `image` varchar(250) NOT NULL,
  `postion` int(11) NOT NULL DEFAULT 1,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `store_timings`
--

CREATE TABLE `store_timings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `day` varchar(255) DEFAULT NULL,
  `store_id` varchar(255) DEFAULT NULL,
  `open` varchar(255) DEFAULT NULL,
  `close` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `store_timings`
--

INSERT INTO `store_timings` (`id`, `day`, `store_id`, `open`, `close`, `created_at`, `updated_at`) VALUES
(15, '6', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(16, '5', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(17, '4', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(18, '3', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(19, '2', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(20, '1', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14'),
(21, '0', '1', '10:00:00', '17:00:00', '2024-02-06 15:39:14', '2024-02-06 15:39:14');

-- --------------------------------------------------------

--
-- Table structure for table `subscribes`
--

CREATE TABLE `subscribes` (
  `id` int(11) NOT NULL,
  `email` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subscribes`
--

INSERT INTO `subscribes` (`id`, `email`, `created_at`, `updated_at`) VALUES
(1, 'irshad.indigital@gmail.com', '2024-01-19 13:29:57', '2024-01-19 13:29:57'),
(2, 'mysweetiepie@gmail.com', '2024-01-22 10:21:51', '2024-01-22 10:21:51'),
(3, 'rohithr.indigital@gmail.coms', '2024-01-22 10:25:18', '2024-01-22 10:25:18'),
(4, 'admin@theuniformgroup.com', '2024-01-22 10:28:04', '2024-01-22 10:28:04'),
(5, 'tedst@ag.com', '2024-01-22 10:29:12', '2024-01-22 10:29:12'),
(6, 'chelsealynnmassey@gmail.com', '2024-01-26 20:46:08', '2024-01-26 20:46:08'),
(7, 'bijuys@gmail.com', '2024-02-16 16:21:09', '2024-02-16 16:21:09'),
(8, 'mark.krantzberg@gmail.com', '2024-02-18 17:58:27', '2024-02-18 17:58:27');

-- --------------------------------------------------------

--
-- Table structure for table `suggested_products`
--

CREATE TABLE `suggested_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `suggested_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `taxes`
--

CREATE TABLE `taxes` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_name` varchar(250) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `type` varchar(25) DEFAULT NULL,
  `status` varchar(2) DEFAULT NULL,
  `master_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `taxes`
--

INSERT INTO `taxes` (`id`, `tax_name`, `description`, `type`, `status`, `master_id`, `created_at`, `updated_at`) VALUES
(1, 'HST 13%', 'HST 13%', 'individual', '1', 13, '2024-01-24 15:34:54', '2024-01-24 15:34:54'),
(2, 'No Tax', 'No Tax', 'individual', '1', 14, '2024-01-24 15:35:08', '2024-01-24 15:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `tax_values`
--

CREATE TABLE `tax_values` (
  `id` int(11) NOT NULL,
  `tax_id` varchar(250) DEFAULT NULL,
  `tax_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `province_id` int(11) NOT NULL,
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tax_values`
--

INSERT INTO `tax_values` (`id`, `tax_id`, `tax_percentage`, `province_id`, `created_at`, `updated_at`) VALUES
(1, '1', 13.00, 94, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(2, '1', 13.00, 95, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(3, '1', 13.00, 96, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(4, '1', 13.00, 97, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(5, '1', 13.00, 98, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(6, '1', 13.00, 99, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(7, '1', 13.00, 100, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(8, '1', 13.00, 101, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(9, '1', 13.00, 102, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(10, '1', 13.00, 103, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(11, '1', 13.00, 104, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(12, '1', 13.00, 105, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(13, '1', 13.00, 106, '2024-01-24 08:34:54', '2024-01-24 08:34:54'),
(39, '2', 0.00, 94, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(38, '2', 0.00, 95, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(37, '2', 0.00, 96, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(36, '2', 0.00, 97, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(35, '2', 0.00, 98, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(34, '2', 0.00, 99, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(33, '2', 0.00, 100, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(32, '2', 0.00, 101, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(31, '2', 0.00, 102, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(30, '2', 0.00, 103, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(29, '2', 0.00, 104, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(28, '2', 0.00, 105, '2024-01-24 08:36:11', '2024-01-24 08:36:11'),
(27, '2', 0.00, 106, '2024-01-24 08:36:11', '2024-01-24 08:36:11');

-- --------------------------------------------------------

--
-- Table structure for table `themes`
--

CREATE TABLE `themes` (
  `id` int(11) NOT NULL,
  `theme_code` varchar(250) DEFAULT 'theme-1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `themes`
--

INSERT INTO `themes` (`id`, `theme_code`, `created_at`, `updated_at`) VALUES
(1, NULL, '2024-01-18 14:14:42', '2024-01-18 14:14:42');

-- --------------------------------------------------------

--
-- Table structure for table `upsell_products`
--

CREATE TABLE `upsell_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `upsell_product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `upsell_products`
--

INSERT INTO `upsell_products` (`id`, `product_id`, `category_id`, `upsell_product_id`, `created_at`, `updated_at`) VALUES
(1835, 7, 4, 22, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1898, 10, 4, 22, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1897, 10, 4, 21, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1896, 10, 4, 20, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1895, 10, 4, 19, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1709, 5, 4, 22, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1708, 5, 4, 21, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1707, 5, 4, 20, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1706, 5, 4, 19, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1705, 5, 5, 40, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1704, 5, 5, 39, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1703, 5, 5, 38, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1702, 5, 5, 37, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1701, 5, 5, 36, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1700, 5, 5, 35, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1699, 5, 5, 33, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1698, 5, 5, 32, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1697, 5, 5, 31, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1696, 5, 5, 30, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1695, 5, 5, 29, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1694, 5, 5, 28, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1693, 5, 5, 27, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1692, 5, 5, 26, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1834, 7, 4, 21, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1833, 7, 4, 20, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1832, 7, 4, 19, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1831, 7, 5, 40, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1830, 7, 5, 39, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1829, 7, 5, 38, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1828, 7, 5, 37, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1827, 7, 5, 36, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1826, 7, 5, 35, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1825, 7, 5, 33, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1824, 7, 5, 32, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1823, 7, 5, 31, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1822, 7, 5, 30, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1821, 7, 5, 29, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1820, 7, 5, 28, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1819, 7, 5, 27, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1818, 7, 5, 26, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1817, 7, 5, 25, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1816, 7, 5, 23, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1815, 7, 5, 24, '2024-02-21 09:00:34', '2024-02-21 09:00:34'),
(1751, 2, 4, 22, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1750, 2, 4, 21, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1749, 2, 4, 20, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1748, 2, 4, 19, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1747, 2, 5, 40, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1746, 2, 5, 39, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1745, 2, 5, 38, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1744, 2, 5, 37, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1743, 2, 5, 36, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1742, 2, 5, 35, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1741, 2, 5, 33, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1740, 2, 5, 32, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1739, 2, 5, 31, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1738, 2, 5, 30, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1737, 2, 5, 29, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1736, 2, 5, 28, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1735, 2, 5, 27, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1734, 2, 5, 26, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1733, 2, 5, 25, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1732, 2, 5, 24, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1731, 2, 5, 23, '2024-02-21 08:58:07', '2024-02-21 08:58:07'),
(1814, 6, 4, 22, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(1813, 6, 4, 21, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(1812, 6, 4, 20, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(1811, 6, 4, 19, '2024-02-21 08:59:56', '2024-02-21 08:59:56'),
(1810, 6, 5, 40, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1809, 6, 5, 39, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1808, 6, 5, 38, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1807, 6, 5, 37, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1806, 6, 5, 36, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1805, 6, 5, 35, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1804, 6, 5, 33, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1803, 6, 5, 32, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1802, 6, 5, 31, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1801, 6, 5, 30, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1800, 6, 5, 29, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1799, 6, 5, 28, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1798, 6, 5, 27, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1797, 6, 5, 26, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1796, 6, 5, 25, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1795, 6, 5, 24, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1794, 6, 5, 23, '2024-02-21 08:59:55', '2024-02-21 08:59:55'),
(1772, 3, 4, 22, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1771, 3, 4, 21, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1856, 8, 4, 22, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1855, 8, 4, 21, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1854, 8, 4, 20, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1853, 8, 4, 19, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1852, 8, 5, 40, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1851, 8, 5, 39, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1850, 8, 5, 38, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1849, 8, 5, 37, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1848, 8, 5, 36, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1793, 4, 4, 22, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1792, 4, 4, 21, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1791, 4, 4, 20, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1790, 4, 4, 19, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1789, 4, 5, 40, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1788, 4, 5, 39, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1787, 4, 5, 38, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1786, 4, 5, 37, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1785, 4, 5, 36, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1784, 4, 5, 35, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1783, 4, 5, 33, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1730, 1, 4, 22, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1729, 1, 4, 21, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1728, 1, 4, 20, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1727, 1, 4, 19, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1726, 1, 5, 40, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1725, 1, 5, 39, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1724, 1, 5, 38, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1723, 1, 5, 37, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1722, 1, 5, 36, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1721, 1, 5, 35, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1720, 1, 5, 33, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1719, 1, 5, 32, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1718, 1, 5, 31, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1717, 1, 5, 30, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1716, 1, 5, 29, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1715, 1, 5, 28, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1714, 1, 5, 27, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1713, 1, 5, 26, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1712, 1, 5, 25, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1711, 1, 5, 24, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1710, 1, 5, 23, '2024-02-21 08:57:33', '2024-02-21 08:57:33'),
(1877, 9, 4, 22, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1876, 9, 4, 21, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1875, 9, 4, 20, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1874, 9, 4, 19, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1873, 9, 5, 40, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1872, 9, 5, 39, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1871, 9, 5, 38, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1870, 9, 5, 37, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1869, 9, 5, 36, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1868, 9, 5, 35, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1867, 9, 5, 33, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1866, 9, 5, 32, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1865, 9, 5, 31, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1864, 9, 5, 30, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1863, 9, 5, 29, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1862, 9, 5, 28, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1861, 9, 5, 27, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1860, 9, 5, 26, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1859, 9, 5, 25, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1858, 9, 5, 24, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1857, 9, 5, 23, '2024-02-21 09:02:07', '2024-02-21 09:02:07'),
(1847, 8, 5, 35, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1782, 4, 5, 32, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1781, 4, 5, 31, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1780, 4, 5, 30, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1779, 4, 5, 29, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1778, 4, 5, 28, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1777, 4, 5, 27, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1776, 4, 5, 26, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1775, 4, 5, 25, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1774, 4, 5, 24, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1773, 4, 5, 23, '2024-02-21 08:58:57', '2024-02-21 08:58:57'),
(1846, 8, 5, 33, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1845, 8, 5, 32, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1844, 8, 5, 31, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1843, 8, 5, 30, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1842, 8, 5, 29, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1841, 8, 5, 28, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1840, 8, 5, 27, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1839, 8, 5, 26, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1838, 8, 5, 25, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1837, 8, 5, 24, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1836, 8, 5, 23, '2024-02-21 09:01:26', '2024-02-21 09:01:26'),
(1691, 5, 5, 25, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1690, 5, 5, 24, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1689, 5, 5, 23, '2024-02-21 08:56:34', '2024-02-21 08:56:34'),
(1770, 3, 4, 20, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1769, 3, 4, 19, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1768, 3, 5, 40, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1767, 3, 5, 39, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1766, 3, 5, 38, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1765, 3, 5, 37, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1764, 3, 5, 36, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1763, 3, 5, 35, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1762, 3, 5, 33, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1761, 3, 5, 32, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1760, 3, 5, 31, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1759, 3, 5, 30, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1758, 3, 5, 29, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1757, 3, 5, 28, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1756, 3, 5, 27, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1755, 3, 5, 26, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1754, 3, 5, 25, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1753, 3, 5, 24, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1752, 3, 5, 23, '2024-02-21 08:58:33', '2024-02-21 08:58:33'),
(1894, 10, 5, 40, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1893, 10, 5, 39, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1892, 10, 5, 38, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1891, 10, 5, 37, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1890, 10, 5, 36, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1889, 10, 5, 35, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1888, 10, 5, 33, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1887, 10, 5, 32, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1886, 10, 5, 31, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1885, 10, 5, 30, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1884, 10, 5, 29, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1883, 10, 5, 28, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1882, 10, 5, 27, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1881, 10, 5, 26, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1880, 10, 5, 25, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1879, 10, 5, 24, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1878, 10, 5, 23, '2024-02-21 09:02:38', '2024-02-21 09:02:38'),
(1919, 11, 4, 22, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1918, 11, 4, 21, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1917, 11, 4, 20, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1916, 11, 4, 19, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1915, 11, 5, 40, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1914, 11, 5, 39, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1913, 11, 5, 38, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1912, 11, 5, 37, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1911, 11, 5, 36, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1910, 11, 5, 35, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1909, 11, 5, 33, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1908, 11, 5, 32, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1907, 11, 5, 31, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1906, 11, 5, 30, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1905, 11, 5, 29, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1904, 11, 5, 28, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1903, 11, 5, 27, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1902, 11, 5, 26, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1901, 11, 5, 25, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1900, 11, 5, 24, '2024-02-21 09:03:08', '2024-02-21 09:03:08'),
(1899, 11, 5, 23, '2024-02-21 09:03:08', '2024-02-21 09:03:08');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `master_id` varchar(255) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `firstname` varchar(255) DEFAULT NULL,
  `lastname` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `postalcode` varchar(255) DEFAULT NULL,
  `city` varchar(255) DEFAULT NULL,
  `province` varchar(255) DEFAULT NULL,
  `country` varchar(255) DEFAULT NULL,
  `birthday` date DEFAULT NULL,
  `last_login` varchar(255) DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `remember_token` varchar(100) DEFAULT NULL,
  `reset_token` varchar(250) DEFAULT NULL,
  `sent_at` datetime DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `master_id`, `name`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `phone`, `address`, `postalcode`, `city`, `province`, `country`, `birthday`, `last_login`, `status`, `remember_token`, `reset_token`, `sent_at`, `created_at`, `updated_at`) VALUES
(1, NULL, 'shefii km', 'shefii', 'km', 'shefii.indigital@gmail.com', NULL, '$2y$10$iFq05D8iFHmLWG8XSgbNCODvZugg7MQJxCDay1hiMunI0OTVHuvMO', '8075261300', '65 Front St W', 'M5J 1E3', 'Toronto', 'Ontario', 'Canada', '1996-12-20', NULL, 1, NULL, NULL, '2024-01-19 08:37:08', '2024-01-19 15:37:07', '2024-01-19 15:37:08'),
(2, NULL, 'Irshad KKBK', 'Irshad', 'KKBK', 'irshad.indigital@gmail.com', NULL, '$2y$10$XemdTHiHeM52zTD57cOvHubwyM3PetEZbUSV3YoNamHvcLQqW5.he', '9638527410', 'Elizabeth Avenue', 'N7S', 'Sarnia', 'Ontario', 'Canada', '1988-01-31', NULL, 1, NULL, NULL, '2024-01-22 01:31:28', '2024-01-22 08:31:28', '2024-01-22 08:31:28'),
(3, NULL, 'Rohith R', 'Rohith', 'R', 'rohithr.indigital@gmail.com', NULL, '$2y$10$2qJOfJqI/dPTRxAv/LRK3O3mx6EIOcJo2.ritw0QejlB3TGkGfJY6', '9745160487', 'Indigital group', '676121', 'Manjeri', 'Ontario', 'canada', '0000-00-00', NULL, 1, NULL, NULL, '2024-01-23 08:19:24', '2024-01-23 15:19:23', '2024-01-23 15:19:24'),
(4, NULL, 'Val Malysheva', 'Val', 'Malysheva', 'valeria.malysheva@live.com', NULL, '$2y$10$0Hu7DJW0YnLxbbP.k6IxieAPEaL6t.3bqG1.q6ZMC1inqLae7YPla', '4168330191', '410 Valermo drive', 'm8w2l7', 'Toronto', 'Ontario', 'canada', '0000-00-00', NULL, 1, NULL, NULL, '2024-01-27 17:55:32', '2024-01-28 00:55:30', '2024-01-28 00:55:32'),
(5, NULL, 'James Kay', 'James', 'Kay', 'jimmykay1@gmail.com', NULL, '$2y$10$D9EmpCLAMDFbcBfzYv28ZOLcY/DBhlcAF6GcZWPvxbJeuZ4UWsfR6', '4169197297', '436 Wellington St W #101', 'M5V 1E7', 'Toronto', 'Ontario', 'Canada', '1981-10-20', NULL, 1, NULL, NULL, '2024-01-29 10:56:15', '2024-01-29 17:56:14', '2024-01-29 17:56:15'),
(6, NULL, 'Mark Krantzberg', 'Mark', 'Krantzberg', 'mark.krantzberg@gmail.com', NULL, '$2y$10$Br3XGKEGEPsPgVi0Zzfr.OuRc2CCAjOChdDnCe1AEgIXdNleV5eea', '1416452931', '302 Fairlawn Ave', 'M5M1T3', 'Toronto', 'Ontario', 'Canada', '1953-10-29', NULL, 1, NULL, NULL, '2024-02-18 11:17:42', '2024-02-18 18:17:42', '2024-02-18 18:17:42'),
(7, NULL, 'Molly Warwick', 'Molly', 'Warwick', 'warwickmolly@gmail.com', NULL, '$2y$10$L26I3Xk6QDvxGu3thvII2uG/mvc7K2jZlxFFCUivoENpCwHrte2lS', '4164544102', '700 King St W #1009', 'M5V 2Y6', 'Toronto', 'Ontario', 'canada', '0000-00-00', NULL, 1, NULL, NULL, '2024-03-10 12:08:35', '2024-03-10 19:08:33', '2024-03-10 19:08:35'),
(8, NULL, 'Craig Empson', 'Craig', 'Empson', 'v3il0s@yahoo.com', NULL, '$2y$10$k9wPYhm8voRc78pZzfnaiOg8HY7WmoPj3EH18n2uWF1Z8kPmGwNnO', '4165191044', '129 Banbury Road', 'M3B 2L6', 'Toronto', 'Ontario', 'Canada', '1981-12-16', NULL, 1, NULL, NULL, '2024-04-14 12:16:10', '2024-04-14 19:16:09', '2024-04-14 19:16:10');

-- --------------------------------------------------------

--
-- Table structure for table `variation_images`
--

CREATE TABLE `variation_images` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL,
  `picture_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'product id',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_images_old`
--

CREATE TABLE `variation_images_old` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) NOT NULL COMMENT 'product variation id',
  `picture` varchar(250) NOT NULL,
  `product_id` int(11) NOT NULL COMMENT 'product id',
  `type` varchar(250) NOT NULL COMMENT 'thumb,main,extra',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `variation_keys`
--

CREATE TABLE `variation_keys` (
  `id` int(11) NOT NULL,
  `variation_id` int(11) DEFAULT NULL,
  `product_id` int(11) NOT NULL DEFAULT 0,
  `value` varchar(50) DEFAULT NULL,
  `type` varchar(50) DEFAULT NULL,
  `created_at` date NOT NULL DEFAULT current_timestamp(),
  `updated_at` date NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `addon_products`
--
ALTER TABLE `addon_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `addresses`
--
ALTER TABLE `addresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `affiliates`
--
ALTER TABLE `affiliates`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baking_instructions`
--
ALTER TABLE `baking_instructions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `banners`
--
ALTER TABLE `banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `baskets`
--
ALTER TABLE `baskets`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_categories`
--
ALTER TABLE `blog_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `blog_category_lists`
--
ALTER TABLE `blog_category_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_jobs`
--
ALTER TABLE `career_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `career_requests`
--
ALTER TABLE `career_requests`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_products`
--
ALTER TABLE `category_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `combo_products`
--
ALTER TABLE `combo_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `condiments`
--
ALTER TABLE `condiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `countries`
--
ALTER TABLE `countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `country_shippings`
--
ALTER TABLE `country_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `coupon_stores`
--
ALTER TABLE `coupon_stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_partners`
--
ALTER TABLE `delivery_partners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `delivery_selections`
--
ALTER TABLE `delivery_selections`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `email_configrations`
--
ALTER TABLE `email_configrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `galleries`
--
ALTER TABLE `galleries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holidays`
--
ALTER TABLE `holidays`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holiday_timings`
--
ALTER TABLE `holiday_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_products`
--
ALTER TABLE `homepage_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `homepage_product_lists`
--
ALTER TABLE `homepage_product_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `landing_pages`
--
ALTER TABLE `landing_pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `location_shippings`
--
ALTER TABLE `location_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menucategory_products`
--
ALTER TABLE `menucategory_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu_categories`
--
ALTER TABLE `menu_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `myaddresses`
--
ALTER TABLE `myaddresses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `mycards`
--
ALTER TABLE `mycards`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutritions`
--
ALTER TABLE `nutritions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `nutrition_explorers`
--
ALTER TABLE `nutrition_explorers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_feedback`
--
ALTER TABLE `order_feedback`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_payments`
--
ALTER TABLE `order_payments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_cities`
--
ALTER TABLE `product_cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_combos`
--
ALTER TABLE `product_combos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_combo_categories`
--
ALTER TABLE `product_combo_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_condiments`
--
ALTER TABLE `product_condiments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images`
--
ALTER TABLE `product_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_images_old`
--
ALTER TABLE `product_images_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `product_shippings`
--
ALTER TABLE `product_shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_specializations`
--
ALTER TABLE `product_specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_upsells`
--
ALTER TABLE `product_upsells`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_upsell_categories`
--
ALTER TABLE `product_upsell_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_variations`
--
ALTER TABLE `product_variations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinces`
--
ALTER TABLE `provinces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `redirects`
--
ALTER TABLE `redirects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `socialmedia_sites`
--
ALTER TABLE `socialmedia_sites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specializations`
--
ALTER TABLE `specializations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stores`
--
ALTER TABLE `stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_images`
--
ALTER TABLE `store_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `store_timings`
--
ALTER TABLE `store_timings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subscribes`
--
ALTER TABLE `subscribes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `suggested_products`
--
ALTER TABLE `suggested_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `taxes`
--
ALTER TABLE `taxes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tax_values`
--
ALTER TABLE `tax_values`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `themes`
--
ALTER TABLE `themes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `upsell_products`
--
ALTER TABLE `upsell_products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `variation_images`
--
ALTER TABLE `variation_images`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation_images_old`
--
ALTER TABLE `variation_images_old`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `variation_keys`
--
ALTER TABLE `variation_keys`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `addon_products`
--
ALTER TABLE `addon_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `affiliates`
--
ALTER TABLE `affiliates`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `baking_instructions`
--
ALTER TABLE `baking_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `blog_category_lists`
--
ALTER TABLE `blog_category_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_jobs`
--
ALTER TABLE `career_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `career_requests`
--
ALTER TABLE `career_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `combo_products`
--
ALTER TABLE `combo_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `condiments`
--
ALTER TABLE `condiments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `country_shippings`
--
ALTER TABLE `country_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `coupon_stores`
--
ALTER TABLE `coupon_stores`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `delivery_partners`
--
ALTER TABLE `delivery_partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `delivery_selections`
--
ALTER TABLE `delivery_selections`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `email_configrations`
--
ALTER TABLE `email_configrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `holiday_timings`
--
ALTER TABLE `holiday_timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage_products`
--
ALTER TABLE `homepage_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `homepage_product_lists`
--
ALTER TABLE `homepage_product_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=250;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `location_shippings`
--
ALTER TABLE `location_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menucategory_products`
--
ALTER TABLE `menucategory_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=331;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `myaddresses`
--
ALTER TABLE `myaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `mycards`
--
ALTER TABLE `mycards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutritions`
--
ALTER TABLE `nutritions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutrition_explorers`
--
ALTER TABLE `nutrition_explorers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `order_feedback`
--
ALTER TABLE `order_feedback`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `product_cities`
--
ALTER TABLE `product_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_combos`
--
ALTER TABLE `product_combos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `product_combo_categories`
--
ALTER TABLE `product_combo_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=45;

--
-- AUTO_INCREMENT for table `product_condiments`
--
ALTER TABLE `product_condiments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=379;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=764;

--
-- AUTO_INCREMENT for table `product_images_old`
--
ALTER TABLE `product_images_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_ingredients`
--
ALTER TABLE `product_ingredients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=850;

--
-- AUTO_INCREMENT for table `product_shippings`
--
ALTER TABLE `product_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `product_specializations`
--
ALTER TABLE `product_specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `product_upsells`
--
ALTER TABLE `product_upsells`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `product_upsell_categories`
--
ALTER TABLE `product_upsell_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=228;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=415;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `redirects`
--
ALTER TABLE `redirects`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `shipping_rules`
--
ALTER TABLE `shipping_rules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `socialmedia_sites`
--
ALTER TABLE `socialmedia_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `store_images`
--
ALTER TABLE `store_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `store_timings`
--
ALTER TABLE `store_timings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `suggested_products`
--
ALTER TABLE `suggested_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `taxes`
--
ALTER TABLE `taxes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tax_values`
--
ALTER TABLE `tax_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `themes`
--
ALTER TABLE `themes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `upsell_products`
--
ALTER TABLE `upsell_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1920;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `variation_images`
--
ALTER TABLE `variation_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_images_old`
--
ALTER TABLE `variation_images_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `variation_keys`
--
ALTER TABLE `variation_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
