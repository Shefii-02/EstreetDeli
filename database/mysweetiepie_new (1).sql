-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 17, 2023 at 03:53 AM
-- Server version: 10.3.39-MariaDB
-- PHP Version: 8.1.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `mysweetiepie_new`
--

-- --------------------------------------------------------

--
-- Table structure for table `addon_products`
--

CREATE TABLE `addon_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `veriation_id` int(11) DEFAULT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `addon_products`
--

INSERT INTO `addon_products` (`id`, `product_id`, `veriation_id`, `created_at`, `updated_at`) VALUES
(40, 151, 67, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(39, 151, 69, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(38, 151, 71, '2023-08-16 01:09:19', '2023-08-16 01:09:19');

-- --------------------------------------------------------

--
-- Table structure for table `addresses`
--

CREATE TABLE `addresses` (
  `id` int(10) NOT NULL,
  `order_id` int(11) NOT NULL,
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

INSERT INTO `addresses` (`id`, `order_id`, `firstname`, `lastname`, `address`, `postalcode`, `city`, `province`, `country`, `phone`, `email`, `type`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Biju', 'Yohannan', 'Test', 't0a0a0', 'Toronto', 'ON', 'CA', '8887727722', 'bijuyn@gmail.com', 'billing', 0, '2023-08-16 05:12:51', '2023-08-16 05:12:51'),
(2, 2, 'James', 'Milner', 'Test', 't0a0a0', 'Toronto', 'ON', 'CA', '2823823492', 'bijuyn@gmail.com', 'billing', 0, '2023-08-16 05:18:15', '2023-08-16 05:18:15'),
(3, 3, 'James', 'Gilbert', 'tww', 't0a0a0', 'Toronto', 'ON', 'CA', '2882828282', 'bijuyn@gmail.com', 'billing', 0, '2023-08-16 05:21:42', '2023-08-16 05:21:42'),
(4, 4, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 05:27:05', '2023-08-16 05:27:05'),
(5, 4, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 05:27:05', '2023-08-16 05:27:05'),
(6, 5, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 05:31:50', '2023-08-16 05:31:50'),
(7, 5, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 05:31:50', '2023-08-16 05:31:50'),
(8, 6, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 05:33:08', '2023-08-16 05:33:08'),
(9, 6, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 05:33:08', '2023-08-16 05:33:08'),
(10, 7, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 05:34:54', '2023-08-16 05:34:54'),
(11, 7, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 05:34:54', '2023-08-16 05:34:54'),
(12, 8, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 05:39:07', '2023-08-16 05:39:07'),
(13, 8, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 05:39:07', '2023-08-16 05:39:07'),
(14, 9, 'Rohith', 'R', '2nd st.', '648775', 'Toronto', 'ON', 'CA', '9876543210', 'rohithr.indigital@gmail.com', 'billing', 2, '2023-08-16 07:15:48', '2023-08-16 07:15:48'),
(15, 9, 'Rohith', 'R', '2nd st.', '648775', 'Toronto', 'ON', 'CA', '9876543210', 'rohithr.indigital@gmail.com', 'delivery', 2, '2023-08-16 07:15:48', '2023-08-16 07:15:48'),
(16, 10, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'billing', 1, '2023-08-16 07:21:48', '2023-08-16 07:21:48'),
(17, 10, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'CA', '8282838238', 'bijuyn@gmail.com', 'delivery', 1, '2023-08-16 07:21:48', '2023-08-16 07:21:48'),
(18, 11, 'Rohith', 'R', '2nd st.', '648775', 'Toronto', 'ON', 'CA', '9876543210', 'rohithr.indigital@gmail.com', 'billing', 2, '2023-08-16 07:29:08', '2023-08-16 07:29:08'),
(19, 11, 'Rohith', 'R', '2nd st.', '648775', 'Toronto', 'ON', 'CA', '9876543210', 'rohithr.indigital@gmail.com', 'delivery', 2, '2023-08-16 07:29:08', '2023-08-16 07:29:08'),
(24, 14, 'Biju', 'Y', 'test', 'test', 'Toronto', 'ON', 'CA', '2342343242', 'biju@indigitalgroup.ca', 'billing', 0, '2023-08-16 08:26:43', '2023-08-16 08:26:43'),
(25, 15, 'mohammed shafeeque', 'km', 'km', '1020555', 'toronto', 'ON', 'CA', '8858885555', 'shefii.indigital@gmail.com', 'billing', 0, '2023-08-16 09:03:59', '2023-08-16 09:03:59'),
(26, 16, 'mohammed', 'shafeeque', 'km', '6559458', 'totono', 'ON', 'CA', '8484848484', 'shefii.indigital@gmail.com', 'billing', 0, '2023-08-16 09:06:23', '2023-08-16 09:06:23'),
(27, 17, 'moh', 'shefii', 'km', '5484848', 'hdh', 'ON', 'CA', '9988744411', 'shefii.indigital@gmail.com', 'billing', 0, '2023-08-16 09:08:09', '2023-08-16 09:08:09'),
(30, 20, 'shefii', 'km', 'dfh', '8548484', 'dfh', 'BC', 'CA', '8008808008', 'shefii.indigital@gmail.com', 'billing', 0, '2023-08-17 05:37:32', '2023-08-17 05:37:32');

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

--
-- Dumping data for table `baking_instructions`
--

INSERT INTO `baking_instructions` (`id`, `master_id`, `name`, `slug`, `baking`, `warming`, `status`, `picture`, `created_at`, `updated_at`) VALUES
(3, 3, 'Sweetie Pie', 'sweetie-pie', '<h2>Step 1</h2>\r\n\r\n<p>Pre heat your oven to 400?F</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 3</h2>\r\n\r\n<p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 4</h2>\r\n\r\n<p>Enjoy your Sweetie Pie</p>', '<h2>Step 1</h2>\r\n\r\n<p>Pre heat your oven to 400?F</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 3</h2>\r\n\r\n<p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 4</h2>\r\n\r\n<p>Enjoy your Sweetie Pie</p>', 1, 'XKcpONy23BmfW8e4ABbEpI88RzibyZ.png', '2023-07-26 12:55:50', '2023-07-27 17:57:29'),
(4, 4, 'Savory Pie', 'savory-pie', NULL, NULL, 1, '44WH9fC8pHgtcDFflrl1wbrYPQamYC.png', '2023-07-26 12:56:22', '2023-07-27 17:57:48'),
(5, 5, 'Cookies', 'cookies', NULL, NULL, 1, 'JfG0Jc1Xg2ysgUfstR6exxSJgDVvQB.png', '2023-07-26 12:56:48', '2023-07-27 17:58:03'),
(6, 6, 'Quiche', 'quiche', NULL, NULL, 1, 'BlkAeSHZXZqgj8nJ1gYZbFXYjXF8fE.png', '2023-07-27 12:46:16', '2023-07-27 17:58:21'),
(7, 7, 'Butter Tarts', 'butter-tarts', NULL, NULL, 1, 'tgWimf12wMGScLV3IAeBunrSQlBu2x.png', '2023-07-27 12:56:57', '2023-07-27 17:58:37');

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
(3, '9', 'image', NULL, 'home_slider', 'U0efvYvECR4sZXDOQou2OVDCcmei25.png', 'XF6BdToA624XbvRutJLkDhk0CJPgqS.png', '/menu/savory-pies', 0, 1, NULL, '3', '0', '2023-05-09 15:40:34', '2023-08-04 09:24:54'),
(6, '12', 'image', NULL, 'home_slider', '9UjTbznPJXxHF2wP4AWkatS99TVOsM.png', '6pcjdigX00eJuJYGORTNpWrpKlOwIb.png', '/menu', 0, 1, NULL, '1', '0', '2023-05-09 17:53:53', '2023-08-04 09:24:46'),
(7, '13', 'image', NULL, 'home_slider', 'dMQvtfNWP4lDO8uBn4g7spIUgnQz5n.png', 'OMcOy7SBISoQljDQ3wPq0e8626qwj7.png', '/menu/sweetie-pies', 0, 1, NULL, '2', '0', '2023-05-11 12:20:42', '2023-08-04 09:24:38'),
(9, '15', 'image', NULL, 'home_slider', 'soMEEtL1FrmUdeoYZQF5MSoiK0qxBW.png', '0wZ8jyOeaRfQnIfTGMG2A9Or5js55E.png', '/menu/cookies', 0, 1, NULL, '4', '0', '2023-07-12 13:01:10', '2023-08-04 09:25:02');

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
  `serve_date` date DEFAULT NULL,
  `serve_time` varchar(250) DEFAULT NULL,
  `postal` varchar(250) DEFAULT NULL,
  `city` varchar(250) DEFAULT NULL,
  `country` varchar(250) DEFAULT NULL,
  `sel_place` varchar(200) DEFAULT NULL,
  `remarks` text DEFAULT NULL,
  `open` varchar(250) DEFAULT NULL,
  `page` varchar(250) DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_general_ci;

--
-- Dumping data for table `baskets`
--

INSERT INTO `baskets` (`id`, `session`, `user_id`, `email`, `order_type`, `status`, `shipping_location`, `pickup_id`, `serve_date`, `serve_time`, `postal`, `city`, `country`, `sel_place`, `remarks`, `open`, `page`, `created_at`, `updated_at`) VALUES
(1, 'xtRRj7z4lIjtK5dzVQLyrqy6Gw2Yd4YBJM9gI7SAZMDrI', NULL, 'bijuyn@gmail.com', 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-30', '03:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:11:21', '2023-08-16 05:12:52'),
(2, '2mBHqRm88Pgrqyb3bwphMzTfFxsofdRz7w6Dxu5wPRkxi', NULL, 'bijuyn@gmail.com', 'pickup', 1, '190 Main St Unionville', 3, '2023-08-24', '03:15 pm', NULL, 'Markham', NULL, 'Unionville', NULL, '0', 'thankyou', '2023-08-16 05:15:49', '2023-08-16 05:18:16'),
(3, '2rIPmMqr2vUWstpd2kkga09Yx5tAP8h8Nl2InVCm6QLiP', NULL, 'bjooos@gmail.com', 'pickup', 1, '525 University Ave', 9, '2023-08-23', '11:30 am', NULL, 'Toronto', NULL, 'University Ave.', NULL, '0', 'thankyou', '2023-08-16 05:20:22', '2023-08-16 05:21:43'),
(4, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', 1, 'bijuyn@gmail.com', 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-30', '03:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:23:28', '2023-08-16 05:27:06'),
(5, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', NULL, NULL, 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-30', '02:45 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:31:21', '2023-08-16 05:31:51'),
(6, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', NULL, NULL, 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '02:30 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:32:15', '2023-08-16 05:33:09'),
(7, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', NULL, NULL, 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:34:16', '2023-08-16 05:34:55'),
(8, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', NULL, NULL, 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '02:45 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 05:38:34', '2023-08-16 05:39:09'),
(9, '9Ra60UYuFKEMiarHsxIXpin1q6lhVI2PfAP5gyYeqaXHo', NULL, NULL, 'delivery', 1, 'Toronto Street', NULL, '2023-08-17', NULL, NULL, 'Toronto', NULL, 'Toronto', 'Extra chocolate pls', '0', 'thankyou', '2023-08-16 07:08:46', '2023-08-16 07:15:48'),
(10, 'tFCwcdPgDv3Au5k2Alx5s1CGJUfLnDo4ctTloWrde7IDh', NULL, NULL, 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 07:21:17', '2023-08-16 07:21:49'),
(11, 'X4sv5I9taN6CTgiOk0HhqLjXWvYk5yncNu9spI8KHGuIQ', NULL, NULL, 'delivery', 1, 'Toronto Street', NULL, '2023-08-17', NULL, NULL, 'Toronto', NULL, 'Toronto', NULL, '0', 'thankyou', '2023-08-16 07:24:04', '2023-08-16 07:29:09'),
(12, 'jOqj6JjsJM2A3oY2WuLoyZ4JqL2qlfu9ejjARoxxXP7HY', NULL, 'rrhit54@gmail.com', 'delivery', 0, 'Toronto Street', NULL, '2023-08-17', NULL, NULL, 'Toronto', NULL, 'Toronto', NULL, NULL, NULL, '2023-08-16 07:33:25', '2023-08-16 07:34:25'),
(13, 'INacowERG4Xxlconkmg3whcGmgzsDCtv8ji5ww7qSlNS7', 3, 'shefii.indigital@gmail.com', 'pickup', 1, '326 Harbord St', 1, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Harbord St.', NULL, '0', 'thankyou', '2023-08-16 07:49:51', '2023-08-16 09:04:00'),
(14, 'gZDgwdtWOx54Z6rkSrllW8usV29g4jkIgoyMIQEE4kpvs', NULL, NULL, 'pickup', 0, '654 Queen Street West', 2, NULL, NULL, NULL, 'Toronto', NULL, 'Queen West', NULL, NULL, NULL, '2023-08-16 08:03:08', '2023-08-16 08:03:08'),
(15, 'bHL77t2adlEknoXJEoeclRPsWwlW5QNgxW9qz2hoRzo30', NULL, NULL, 'pickup', 0, '525 University Ave', 9, '2023-08-16', '04:00 pm', NULL, 'Toronto', NULL, 'University Ave.', NULL, NULL, NULL, '2023-08-16 08:10:45', '2023-08-16 08:53:56'),
(16, 'hNl6GYmKN9Lg0wzIjEBaVbRoTOgl1rbSIQMOMGpdt4Asa', NULL, 'biju@indigitalgroup.ca', 'pickup', 1, '654 Queen Street West', 2, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Queen West', NULL, '0', 'thankyou', '2023-08-16 08:23:09', '2023-08-16 08:26:44'),
(17, 'C8ku4PEtmy0FpPtfjz3HZf7tdToZVom0gDedtdFJtZwgv', NULL, 'shefii.indigital@gmail.com', 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 09:05:39', '2023-08-16 09:06:25'),
(18, 'eMNcTZRMIKtFGvrhTbGrpJuMa0soRuM1P2YIrqEPIZiOM', NULL, 'shefii.indigital@gmail.com', 'pickup', 1, '1639 B Bayview Ave East York', 6, '2023-08-16', '01:00 pm', NULL, 'Toronto', NULL, 'Leaside', NULL, '0', 'thankyou', '2023-08-16 09:07:16', '2023-08-16 09:08:10'),
(19, 'mm0yBhofpnbmAKgO1gd1TN2vlRwOZA0YrHFceKfHBTvma', NULL, 'shefii.indigital@gmail.com', 'pickup', 1, '6 Case Goods Lane', 5, '2023-08-17', '01:00 pm', NULL, 'Toronto', NULL, 'Distillery District', NULL, '0', 'thankyou', '2023-08-16 09:09:06', '2023-08-17 05:37:33'),
(20, 'wMC6Uy10R7EJZJLNRYYWacXXlBtjMMOwdjjnHWyKj41za', NULL, 'cesario@indigitalgroup.ca', 'pickup', 0, '190 Main St Unionville', 3, '2023-08-16', '01:00 pm', NULL, 'Markham', NULL, 'Unionville', NULL, NULL, NULL, '2023-08-16 12:12:22', '2023-08-16 12:12:34'),
(21, 'CCAzklgthhQNJtcFl3jpcUF6mOL3hoqyF9cUp3IBng2Si', NULL, NULL, 'pickup', 0, '326 Harbord St', 1, NULL, NULL, NULL, 'Toronto', NULL, 'Harbord St.', NULL, NULL, NULL, '2023-08-17 05:27:26', '2023-08-17 05:27:26');

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

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `master_id`, `name`, `slug`, `description`, `picture`, `status`, `published_at`, `type`, `created_at`, `updated_at`) VALUES
(7, '24', 'Sweet Pie', 'sweet-pie', '<h2>Step 1</h2>\r\n\r\n<p>Pre heat your oven to 400?F</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 2</h2>\r\n\r\n<p>For a nice golden/brown sheen. brush your frozen pie with egg wash or non-dairy milk for vegan option<br />\r\n(Sprinkle your fruite pies with some sugar to get a little crunch)</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 3</h2>\r\n\r\n<p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<h2>Step 4</h2>\r\n\r\n<p>Enjoy your Sweetie Pie</p>', 'mGZFPHPeNojXbWKmtaw9D9kKh6bfPl.png', 1, '2023-07-21', 'recipe', '2023-07-20 11:49:07', '2023-07-21 17:03:22'),
(8, '25', 'Cookies', 'cookies', '', '91pphKqQl75PGIIqEBiTvWPDAiJz66.png', 1, '2023-07-21', 'recipe', '2023-07-20 13:26:36', '2023-07-21 16:58:07'),
(9, '26', 'Savory Pie', 'savory-pie', '', 'JpK1O3Lc4B9kSD7wRxnsqul8GVgncQ.png', 1, '2023-07-21', 'recipe', '2023-07-20 13:26:41', '2023-07-21 16:58:19'),
(10, '27', 'Apple Pie Brings Feelings of Nostalgia', 'apple-pie-brings-feelings-of-nostalgia', '<p>Apple pie is a classic dessert that is often associated with feelings of nostalgia, comfort, and warmth. There are several reasons why apple pie can evoke a sense of nostalgia in people:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/F_VIVFCuIEhfL87eCQwT95tEF6FHD5OcrkcKrW3BbaXgJsVfVKHBSc8ylQlY9rgt2JcKpSAD9kbhwEPkBz3M70dZ3jXngOufdW_G_9vOGIgFqZZl0JawvY7Ff9Ih4QJX6B9ZaBsZZkR6W5t7eQiXTIA\" style=\"height:262px; width:396px\" /></strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cultural Significance:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Apple pie has been a part of many cultures for centuries, and it is often associated with traditional values and family gatherings. The smell and taste of apple pie can remind people of their childhood, family traditions, and happy memories.</p>\r\n\r\n<p><strong><img src=\"https://lh6.googleusercontent.com/KFpmiQp-6162KBsbR5WGxOU6FIK-obHZOmmpuSDnx9u6eLVKew2J1feVD9olEPkPqZVPVZECwrf02v6GK2tWc2k2CS93kLG16GHoj_o_9x3yTmpz1lXVbizF3jehYPUjKoI21pFHZ2nONyZ5BKvn7dE\" style=\"height:234px; width:188px\" /></strong><strong><img src=\"https://lh5.googleusercontent.com/r5djk-3WfZWHypaPQauDmoTtQtUsIPvKI9I51NL9mAz625a6CcVL-EFWuhQ6bN6b0DUXT8jBXOKbiiX6goZuwUiGBT5IlJ5uySbQlrKQ3gFmEqhUfp4pxC0sBo3kmn__OkAx7EIfvnlORHQSHx6RND0\" style=\"height:231px; width:329px\" /></strong></p>\r\n\r\n<p><strong>Comfort Food:&nbsp;</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Many people associate apple pie with comfort food, which is food that provides a sense of emotional well-being and comfort. Eating apple pie can provide a sense of relaxation and pleasure, which can lead to feelings of nostalgia.</p>\r\n\r\n<p><br />\r\n<br />\r\n&nbsp;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/qPqSFl_FGKL9i3b13cH5hIZoHSYNewSlWleGBZNd6VQQdnrGKDTz-5HW9fSDaXDSTQolutWXc8RoSZtfOUjBmWa_BtAE4CP9FnlCX6W2OSkTPOv_hywAAgQ4IN3xZC2oxoynN1fzvXezRxSL78axtvg\" style=\"height:296px; width:444px\" /></p>\r\n\r\n<p><strong>Sense of Home:</strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Apple pie is often associated with the feeling of home, which can evoke a sense of nostalgia in people. The smell of apple pie baking in the oven can make people feel like they are at home, even if they are far away.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/VsmIn3Ycf7adMv4GVTklfyXnqXQtDkef_kbNFCnW7Ujw4bZt9RlSf5GwOn1h0zoROfaHcavpdlPMB7vPyrRD-PfaoiNOD-vOM6pwHthe_dkEf5NAHQPb0WfJs0o_4MQnZhlGhMo6OTi5D88Lc7WyQiE\" style=\"height:288px; width:387px\" /><img src=\"https://lh3.googleusercontent.com/DM0lYb3vWEqhTSMFx43-FRA_iBDz-T5VWmfxwKqy97_mwhzn0HPlfoOBhRtXVjCXTruSBsoaakawCl4fCP3EJRlMM7yvMP-lTWPdCZWwNfUVTLaHR8QrCKvMmNleNN3_oWZA4OGg4d5-vnbWsAyhSak\" style=\"height:287px; width:191px\" /></p>\r\n\r\n<p><strong>Emotional Connection:</strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Apple pie can be connected to emotional events, such as holidays or special occasions, which can make people feel nostalgic when they eat it. For example, eating apple pie on Thanksgiving can remind people of past celebrations and family gatherings.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Overall, the combination of cultural significance, comfort food, a sense of home, and emotional connection can make apple pie a powerful trigger for feelings of nostalgia.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At Sweetie Pie we don&#39;t just make a pie, we craft all our pies. From selecting the right ingredients to ensuring the proper care goes into each pie. Sweetie Pie is available for delivery to : Durham, Peel, Toronto, Hamilton etc. <strong>(fill in delivery areas)</strong>&nbsp;&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'qf92HzUzYzr55b9vloZ9KPsxfuErfF.png', 1, '2023-07-27', 'blog', '2023-07-24 17:08:23', '2023-08-02 15:06:35'),
(11, '28', 'Why You Should Serve Sweetie Pie At Your Wedding', 'why-you-should-serve-sweetie-pie-at-your-wedding', '<p>Pie is a delicious dessert that has been enjoyed by people for centuries. It is a dessert that is versatile, comforting, and brings people together. While cakes have been the traditional dessert of choice for receptions, there are many reasons why you should have sweetie pie at your wedding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/I1en5u-9VpjzWbRL2XZJQpveziUDvfwomyaX1JMYjyQSHnuXUdHdHPK4NDOrjj7FQbourILyspWnzwMcvY9KXmWD_BlHxPeRHA8TgOrneMvlgOi6t3nVMf-ybjdr-56ubovzC95543ZHIYs7umZ-7oE\" style=\"height:302px; width:457px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pie is a dessert that can be made in a variety of flavors, allowing you to choose the perfect flavor for your special day. From classic apple pie to pecan pie, pumpkin pie, cherry pie, and more, there is a flavor of pie that will appeal to everyone&#39;s taste buds. You can even offer a variety of sweetie pie flavors so that your guests can sample to their heart&#39;s content.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/2DzC9jtE_3M4v-c4ALM_AjY354xcHfZfjumxOJElbABaXo7Z98R6HhzdJt8RBd42FmztXOCf4h13l7UOe4sn5-uzU2Utv2cL91saGu4UYFBfMKv8usGrzv2tclAx0rGUxjCB_IQBlCDXuCuClvsvJ7E\" style=\"height:308px; width:462px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pie is a comforting and nostalgic dessert that can bring back fond memories of childhood. Many people have memories of baking pies with their grandmothers or eating pies at family gatherings. By serving pie at your wedding, you can create a sense of nostalgia and comfort for your guests.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/9i2h6Prx8jWxF4VChSDFRC3E6hIRKaDDJwV_sKUotqFY7JmJI6f7eGv9tbwNdzPyksCUKYKF_5f-q3xWn969pTmEYEc_FroqzgCEcf5x7yHgeQbGzEt6jgildJxJDft5R1FZR5NVtHAhUbSV0wUQVhM\" style=\"height:287px; width:287px\" /><img src=\"https://lh3.googleusercontent.com/TgCJL5C2ZJBlk5JJ4d091bKOLKvsHoHsvaqnFJEa629Xh5V0UfclDEH9RmlP_rp7d8oJryrItN-i7k3xyhv7mKDq10pyEI2FRtBppJ-NZnyrAMXTB6dEiDS18m4XE9cOnJN6slGa5K2byKD4Es6Qufg\" style=\"height:287px; width:287px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Pie is a dessert that can be easily shared. Instead of having individual slices of cake, the pie can be sliced into smaller pieces, allowing guests to share and try different flavors. This creates a sense of community and sharing, which is perfect for a wedding where family and friends come together to celebrate the union of two people.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/QeUOvSagNtuqeeXmCh2gTh3IvZrMoTjMONBgHNZKgHFqu7q5rsP_P8kQBSd0KNGUvZ_3uSAfbT06wR2gE4oGWUPCQC6woeuh39074s8vF26jSvAuczmFwTSFxfM-lvDwf4tqriOVHZ60YnvYFFoRuL8\" style=\"height:343px; width:482px\" /></p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>Pie is a dessert that can be personalized and decorated to match the theme of your wedding. You can add decorative pie crusts, toppings, and fillings to create a dessert that is not only delicious but visually stunning. You can even have mini pies as wedding favors for your guests to take home and enjoy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/OJGhjfbbUrMTDWxrVFT9UYZfNPasWdgz69X1B7Gk99yMkl5BMGzUjwXG8NP_1Pbe3izFrQpby76S0dTjscqM5JJ8yKBzSaqTkSVl69SV0ZHyA_j51lzOowgh1FjN5_DUD8IZcTz_q8ryMRTTyorw7ig\" style=\"height:251px; width:377px\" /><img src=\"https://lh5.googleusercontent.com/imVUr1UfbRyg8WSxCbIK1L3PDlo1BnPULiHNgBJWBxXDSR3ai8evjhs0SI_L4CoWPV-sm3QC-sJEGxcoWXYk4AR2R0AnSFMSyKFNzr-siIXMgYyXhXnIr_s5NkAq20jOMEVwIvhTmwflU0nbuU5dyRE\" style=\"height:251px; width:202px\" /></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Having sweetie pie at your wedding is a unique and memorable choice that will set your wedding apart from others. While cakes have been the traditional dessert for weddings, having pie is a fun and unexpected choice that will be remembered by your guests for years to come.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Why not consider having Sweetie Pie at your wedding and create a dessert experience that your guests will never forget?</p>\r\n\r\n<p><br />\r\n<br />\r\n<br />\r\n&nbsp;</p>', 'K8aeEjr9JV5MX8l9DI3ULz9lgyJF4m.png', 1, '2023-07-27', 'blog', '2023-07-24 17:15:42', '2023-08-02 15:05:11'),
(12, '29', 'Serving Pie ', 'serving-pie', '<p>There are many reasons why serving pie can be a great choice for a dessert or meal:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Versatility:</strong></p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/v8efeo2yAFJ6bzRrFFCr9cfPN55MACAH-vPPb8JUZfHYXTmAEe591WF3J7Wbao6kRawmm5PmjNfi80JQCMjdLmpYuNhYkncqif7NbFEzO8h3gWdx-aqaDSFP6REN3c-C6zotRgXmZrSsvquIS-BMZCM\" style=\"height:239px; width:360px\" /><img src=\"https://lh6.googleusercontent.com/aY27Zs-b8fgteQh8SNtnKQbiGocPGiNYaXY14eTrVkFtD4g0xXszBel0NG4E4xANhj0rQJwoxddbfJD3y2leHd_B5XMFfINGWe1pOSkS-Q2H2yfUnvOtKsop9bY-2Ussre-40-CmHEc90YukQ8rqinc\" style=\"height:239px; width:233px\" /></p>\r\n\r\n<p>Pies can be made with a variety of fillings and crusts, so there is something for everyone. Whether you prefer sweet or savory, there is a pie recipe that will suit your taste.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Comforting:</strong>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/sglIg1ucHz9h0xdjjhkb43pcjdSQU_U5FH8KDrm75RYNIEv1DT95-IfWdnYgoxr-Dz3bzePIrrwkNFzp3l8fiIsQRTBnCDXXuINOKP88-7ZjehpHsKqW8K8wIEPcOlzD55N-WC2Dr-yc-NQj3OyAaOw\" style=\"height:369px; width:554px\" /></p>\r\n\r\n<p>Pies are often associated with home-cooked meals and evoke feelings of warmth and comfort. They are a classic dessert that can make people feel at home.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Easy to make:</strong>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh4.googleusercontent.com/E46spPMvg8E3HRfRbuM39K5vUiiucmpnHAIZBexdu3_DmxSQInynqpyvKc-XQF6DbKo1n_m8BQSK-gSvQAao3vJWp8Bv39ii0t_-8pFrTsgc_0ZXIiSoi1tb3vgb1yxRNTrw9XFUXnrknLYTe2E8XpY\" style=\"height:328px; width:220px\" /><img src=\"https://lh4.googleusercontent.com/k15PNNZSsKKkwye_BqKq3P9n9AvG9LlXyinpSEQGTXuePt39YSui-IfNHuoVCsMuZV0XRQVLMz_iY1-YiZP475-rC1_cv-MEuXLK5VtdQWpDKgiU9EA7BRiyT9FnJTEZv80YWdUYEuD3xVtjAcfTnC8\" style=\"height:329px; width:329px\" /></p>\r\n\r\n<p>Making a pie doesn&#39;t have to be difficult. There are many simple pie recipes that can be made with just a few ingredients and minimal effort.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Portability:</strong>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/KMN8g16orEwnLGzku3pu4iJgpCpWtXTI_KdbCfbjFE-AvTS8V8gqDpSxAccIoRteV0YsnmXDH7MmxcuPxr1lLezNY0OADd4umjc0GPWNB5sKJ8DgbmjToapISv2dGMNgN7xDFSQ8DrCV45xVuzhK_pE\" style=\"height:444px; width:358px\" /></p>\r\n\r\n<p>Pies can be easily transported and served at potlucks, picnics, and other gatherings.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Tradition:&nbsp;</strong></p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/Ew4KP26zL311yLZjQie91V3V6lYNGQX8zy5md2u9HdtwjOA1nmRwnog5mw_ypJLz7rSWMqnoWuu0lLqkjjiHz5rFmIJ-CzznxsSo7czYlYYsHN-MS_NDk5knnRb917aKsid_ikro6SqJwK6Dagyvpww\" style=\"height:247px; width:198px\" /></strong><strong><img src=\"https://lh4.googleusercontent.com/sb890T6E07vnur75uGtyTsIy3oq3O-NH4XBQNWo7XuDnp-HUbx3JnVM8bKBfO5RZWEHxfMw0drgR96MArkZDr2K1ABr9xmCSnNmxbBmysCF7GLEycne_ccaRUZlHWkOj1QcuvWs8ZnWr8U-S2kDbClI\" style=\"height:248px; width:376px\" /></strong></p>\r\n\r\n<p>Pies have been a part of many cultures for centuries, so serving them can be a way to connect with tradition and history.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/vyV4tR37PrqU_y0pRQbWfAVPA9_c_jeDXguTFcDgjE5UPnkJeZw9XCbKayNBjYxVx-4g8reG4cAxVBBo1xaWq5z6Z3-yTPJ_he5APjnGR_Gd4afYtCtbwoemwoD_7FjBFsoA5BrSVRKz9T8THWe_DEw\" style=\"height:373px; width:373px\" /></p>\r\n\r\n<p>Overall, serving pie is a great way to bring people together and create a warm and inviting atmosphere.</p>\r\n\r\n<p>&nbsp;</p>', 'rILqLZ3IKbIJLOslFAH8xIGEJ0x5Jf.png', 1, '2023-07-27', 'blog', '2023-07-24 17:25:16', '2023-08-02 15:04:22'),
(14, '31', 'Why Choose Pie?', 'why-choose-pie', '<p>&nbsp;</p>\r\n\r\n<p>Pie is a popular dessert that has been enjoyed for centuries, and there are many reasons why it has become such a beloved treat.</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/tGjZq9pj_xNztLuptSNYfu80To4CqjcYLZTIOZgzmZGd2JXijRUx1pIUcowuThO8n53Efe56-YBXdXlRE9I5uOQZ5XRBY-aioxTc7TtaKlW-EL5SsXnEZb54yGeROFqlqPPvpIsiAemqyyhFPkydxvs\" style=\"height:272px; width:409px\" /></p>\r\n\r\n<p>One reason why pie is so popular is that it is incredibly versatile. Pies can be made with a wide variety of fillings, from fruit and cream to meat and vegetables, which means that there is a pie for every taste and occasion.</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/Bmox0ugghPpxQHZjaR0pICUff7D7TOSiZw0KKjICdvJsNC6zqOirgnndKtGIJahrbbOcTwPAfHH4pqmF8VNHAaSjJPurMgVN7A5tuyLjL1u_freOKDLQ5AL7KagWjQmp3aLfagWNGMrV6uYuN0mYF14\" style=\"height:268px; width:201px\" /><img src=\"https://lh4.googleusercontent.com/2rceZbEruxmGw7r2w2W_dlABeyQUEWk31jM3s6QBjIhnHGjliY3H0DYADusb5oyQ3BvG6_jGh21vfmmSMrsAh0ETnguNcLlgXDvgL_fIvmgJbB9yZyRDghSm1Mh5KEds_rO_jbfDf0PfmKrm726MZn8\" style=\"height:270px; width:299px\" /></p>\r\n\r\n<p>Another reason why pie is so beloved is that it is a comfort food. Many people associate pie with memories of family gatherings, holidays, and special occasions, which makes it a food that is often enjoyed in the company of loved ones.</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/Z_7DR5lKE9JGgxx1GoFrZuFVEDLxgyqMblT11hS6tuONk76fEbrA2AcPxCSCuFCUbjxx-yJclbxLA9KH3jkyBt6ZOxPwnBo3hIuT0Pb_0Z7QkedJewIlqmqnlAu0jNxLK3kqtgbJTZbvRu7lhnJB7fM\" style=\"height:195px; width:317px\" /><img src=\"https://lh3.googleusercontent.com/dfLDutrXipMznY207LJKlEQSBP0Mcy3CmwdquDS9DKAmc-kruyW63L3T2-BMSx5XsvHjHUf7cuAz5VHR9yi8bZ63pWUSOLnLONOXK7PSQRRBzHn2vCASsTeLdrx87srzPGIYIzSa7n9TfzJQI26KNJg\" style=\"height:196px; width:294px\" /></p>\r\n\r\n<p>Additionally, pie is a food that can be made from scratch, which makes it a labor of love for many bakers. Making a pie from scratch takes time and effort, but the end result is a delicious and satisfying dessert that is well worth the effort.</p>\r\n\r\n<p><img src=\"https://lh5.googleusercontent.com/lcKkvR9nOAO3Uc45Ke6YWAfzd8NAvlW-kduocW6WjCDTWl66YaCpbcWIwuhFcaTN04SHg5MHwMhJrChdrMF1Yoz-xfKgbaZirava765Ko30k3q27VLae13dGG4dDE0UNIfwRcETf_sGA64VhGohIfOg\" style=\"height:288px; width:387px\" /></p>\r\n\r\n<p>Overall, pie has become a beloved dessert for many people because of its versatility, comfort food appeal, and sense of accomplishment that comes with making it from scratch.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>', 'I50XZCc8qzBuPHOC2osPB0zgICaGUM.png', 1, '2023-07-28', 'blog', '2023-07-24 17:28:25', '2023-08-04 08:15:41'),
(17, '34', 'The History Of Pie', 'the-history-of-pie', '<p>&nbsp;</p>\r\n\r\n<p>Pie has a long and interesting history that can be traced back to ancient civilizations. The concept of a pie, or a dish with a pastry crust, filled with sweet or savory ingredients, has been present in many cultures throughout history.</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/Z9sKN_4Mejld5CcZdOKfz9_0dld7LJUgg0BgShHrgWdXgi9hohSDLekUFdc0aNnq_YrqWG98Z9ylJOzh80VSRtxSJSyWlHVKLMoj_ntOavPF7X5DQfUwoM7GQV86vXg-TwsaqUTPNzm923M4FflScQE\" style=\"height:299px; width:241px\" /><img src=\"https://lh4.googleusercontent.com/ZvB037IRFlzppqGt_N1-bGkmN0FfZVh4xiXzJJoNYMsgD1EzkFOEka1T4SE7ilW56xdjH2rFcSVIP71QMopvK44FTVwjh1caWtYoXmZ9BHfZQDRQxwpkFOsd09rAHqwopjVebCRh-c7dn09u2xhmouk\" style=\"height:299px; width:224px\" /></p>\r\n\r\n<p>One of the earliest recorded examples of a pie-like dish comes from ancient Egypt, where pharaohs were buried with honey-filled pastry cones. Greeks and Romans also made pies, which were usually filled with meat and served at banquets.</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/aZq-jcjWy5UY8KFXTj935goeac1x4DwelH93JTM08fi6kWGcBdfSuyMj05ZKcju8HyO5IGpWBNSkaW2nG2ymDizr21za6h5LqTghNvwJ4enPL2-bcG1mZcLe1vICtOKyl8Km-8OH3kvI9Gy6fR7s2kY\" style=\"height:331px; width:496px\" /></p>\r\n\r\n<p>In medieval times, pies became a popular way to serve meat dishes, and pies filled with meat, vegetables, and fruit were common at banquets and feasts. The pastry crusts were often very tough and inedible, serving only to hold the filling together.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p>In the 16th century, pies began to take on a more decorative appearance, with intricate patterns and designs on the crusts. During this time, fruit pies also became more popular, as sugar and spices became more readily available.</p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/pM61_5BU6yfMAPBbtDj0EyGRA3TWEMnJdp5AUs060oUoraNW4QCToRvq3uYSYfOX4HOEQ9kT-1xaklcjX1NWH4db8-JO7osBicm5bae75zEv1oM7GMQij-SEUlnhNF4gjU20S-Ya4NIk-q2XXWiwCV4\" style=\"height:331px; width:265px\" /><img src=\"https://lh6.googleusercontent.com/LmlGwHxXFE2msXKDNk223z-33ds7vAR5HG10O0Hbeoq0G5s163696aE0S12D1pPd9-UIJ4CuDhZAj_Ue6qfPBF4uIggNMCjFxMPoebwehSiUug5_-8RPqee_DPDg2hp-pdZncAOO2pmgKJpIWjfr4p0\" style=\"height:333px; width:333px\" /></p>\r\n\r\n<p>The English are often credited with popularizing the pie, and many traditional English pies, such as steak and kidney pie and shepherd&#39;s pie, are still enjoyed today. In the 19th century, pies became a staple of American cuisine, with pumpkin pie, apple pie, and pecan pie among the most popular varieties.</p>\r\n\r\n<p><img src=\"https://lh6.googleusercontent.com/sD40VHcNPRkna0z4spC76d1_5gxxr3Vx4rcQT_qcjdNU_8rCahKVK49T0djwuC57ccpIsPq7Ro-w3g-h3C17PfLbrpLVnBAK2_Fz5-k5HqXjs-aKcaaGopqDkpiypRBz4wCqkjh-cwueq_2OTwksSLg\" style=\"height:288px; width:434px\" /></p>\r\n\r\n<p>Today, pies are enjoyed all over the world and can be filled with just about any combination of ingredients. From sweet to savory, there&#39;s a pie to suit every taste and occasion.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>At Sweetie Pie we don&#39;t just make a pie, we craft all our pies. From selecting the right ingredients to ensuring the proper care goes into each pie. Sweetie Pie is available for delivery to :&nbsp;</p>\r\n\r\n<p>&nbsp;</p>', 'gTm0B6xLEJXvKnqdSpNh57GGDejsEs.png', 1, '2023-07-20', 'blog', '2023-07-24 17:40:17', '2023-08-02 15:03:38'),
(18, '35', 'Our Most Popular Sweetie Pies In No Particular Order', 'our-most-popular-sweetie-pies-in-no-particular-order', '<p>Pies are a popular dish in many countries and there are many types of pies that are enjoyed all around the world. Here are some of the most popular pies worldwide:</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Apple Pie:</strong></p>\r\n\r\n<p><strong><img src=\"https://lh5.googleusercontent.com/clsvrAXZFeDQqXz5H5H34ka7pu4sLEdOIvuBQ1nr28trdQuKaEVUY2ILEHIMeRo-l1tVw6rmFHltdJL-pnZy1SHasXEsBizyRsWgNPGA_Y29Epu5HT4FNkgmsIKMo1kkcBeTyjjNDJ4NQ5vXMCEKdPg\" style=\"height:197px; width:296px\" /></strong></p>\r\n\r\n<p>This classic American dessert is made with a sweet apple filling and a buttery crust. It is a popular dessert in many countries, including the United States, Canada, and the United Kingdom.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Cherry Pie:</strong></p>\r\n\r\n<p><img src=\"https://lh3.googleusercontent.com/W5lSye0nFJts9j-AN35QnGnReDcQICE0bVER1-lYM_m2g2tRJmEeH-zhP6HN0jj_kp5gxf2NclBQFGUbR9_qAW6wcslL1hB1QtyVLaD7qD5MkUyxTU_W4YLqLsAhTliBjxJY-E_JeNEJq7RQNeVdc9U\" style=\"height:249px; width:201px\" /></p>\r\n\r\n<p>This classic pie is one of our most popular pies. It is made with a rich cherry pie filling and a flaky, buttery crust in a golden brown colour.</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><strong>Chocolate Bourbon Pecan Pie:</strong>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>This sweet pie is a Southern favorite in the United States. It is made with a filling of pecans, corn syrup, and eggs, and is often served during Thanksgiving and Christmas.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Chicken Pot Pie:</strong></p>\r\n\r\n<p><strong><img src=\"https://lh3.googleusercontent.com/AeJukFRhC85u451o99yYjiBZfZUx5jojv5noeahLzUOXc4cRdVn69Yb9p3fgYD27fEZemXNqzTSVLPj99TQyboFZ3Qm2Ta4SFdYDHFLEwGdkkvl9RbSAt4Z-MCzQ98XNuf-z-S7fDEqJ7weTAlQhtvc\" style=\"height:205px; width:307px\" /></strong></p>\r\n\r\n<p>This savory pie is a popular dish in the United States and the United Kingdom. It is made with a chicken and vegetable filling and is often topped with a flaky pastry crust.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Steak and Ale Pie:</strong></p>\r\n\r\n<p>This savory pie is a traditional dish. It is made with tender pieces of steak cooked with vegetables in English ale, then wrapped in the finest flake and buttery pie crust.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Blueberry Pie:</strong></p>\r\n\r\n<p>This</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Strawberry Rhubarb Pie:</strong></p>\r\n\r\n<p>This</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Vegan Mushroom Pie:</strong></p>\r\n\r\n<p>This</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Lemon Meringue Pie:</strong></p>\r\n\r\n<p><strong><img src=\"https://lh3.googleusercontent.com/FkvLxQVcBpS1YcWv4-sMI09hnVLNDl2fQV-H7594QkJOkDx4ZfNKrny8vS_dCZbcNMhFUGxtKgHAotuoM2S2VVi_ygf-6JJ6bsoGGyTAO7xmKAS1c9iNsiL6GuHhJBiUxJKJIyBbD6Cubnon5OVLXRw\" style=\"height:209px; width:314px\" /></strong></p>\r\n\r\n<p>This</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><strong>Braised Beef Short Rib Pie:</strong></p>\r\n\r\n<p><strong><img src=\"https://lh4.googleusercontent.com/CaBqA4mxdyMib3db2rODdo28kp7Ccqc0pfmz1bHZGNtsMqMeaaVUEp8LX4gmr9GkTGkc1Wvs87Co_TYQlWifOvccqji2IHAk_uuWAL747HZm10Kf_nQdMxO0lSXQHj_a10kgnxD2bKGWEYPUJN1F9mo\" style=\"height:261px; width:394px\" /></strong></p>\r\n\r\n<p>This</p>\r\n\r\n<p>&nbsp;</p>', 'J637WFFsFpp7vk0SADv62KU3ngDluH.png', 1, '2023-07-24', 'blog', '2023-07-24 17:47:06', '2023-08-02 15:03:04'),
(19, '36', 'Having SWEETIE PIE at your wedding', 'having-sweetie-pie-at-your-wedding', '<p>Pie is a delicious dessert that has been enjoyed by people for centuries. It is a dessert that is versatile, comforting, and brings people together. While cakes have been the traditional dessert of choice for weddings, there are many reasons why you should have pie at your wedding.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Firstly, pie is a dessert that can be made in a variety of flavors, allowing you to choose the perfect flavor for your special day. From classic apple pie to pecan pie, pumpkin pie, cherry pie, and more, there is a flavor of pie that will appeal to everyone&#39;s taste buds. You can even offer a variety of pie flavors so that your guests can sample a few different flavors.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Secondly, pie is a comforting and nostalgic dessert that can bring back fond memories of childhood. Many people have memories of baking pies with their grandmothers or eating pies at family gatherings. By serving pie at your wedding, you can create a sense of nostalgia and comfort for your guests.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Thirdly, pie is a dessert that can be easily shared. Instead of having individual slices of cake, the pie can be sliced into smaller pieces, allowing guests to share and try different flavors. This creates a sense of community and sharing, which is perfect for a wedding where family and friends come together to celebrate the union of two people.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Fourthly, pie is a dessert that can be personalized and decorated to match the theme of your wedding. You can add decorative pie crusts, toppings, and fillings to create a dessert that is not only delicious but visually stunning. You can even have mini pies as wedding favors for your guests to take home and enjoy.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>Lastly, having pie at your wedding is a unique and memorable choice that will set your wedding apart from others. While cakes have been the traditional dessert for weddings, having pie is a fun and unexpected choice that will be remembered by your guests for years to come.</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>In conclusion, having pie at your wedding is a delicious and memorable choice that will bring comfort, nostalgia, and a sense of community to your special day. With so many flavors to choose from, the ability to personalize and decorate, and the option to share with your guests, pie is the perfect dessert for a wedding. So why not consider having pie at your wedding and create a dessert experience that your guests will never forget?</p>\r\n\r\n<p>&nbsp;</p>', 'wB6V8YvnEGgLMuNA7cN9awYSgdRbDb.png', 1, '2023-07-24', 'blog', '2023-07-24 17:50:04', '2023-08-02 15:08:58');

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

--
-- Dumping data for table `blog_categories`
--

INSERT INTO `blog_categories` (`id`, `category_id`, `blog_id`, `created_at`, `updated_at`) VALUES
(1, NULL, '2', '2023-05-11 14:21:59', '2023-05-11 14:21:59'),
(2, NULL, '4', '2023-05-11 14:22:07', '2023-05-11 14:22:07'),
(14, '3', '8', '2023-07-21 16:58:07', '2023-07-21 16:58:07'),
(15, '3', '9', '2023-07-21 16:58:19', '2023-07-21 16:58:19'),
(17, '3', '7', '2023-07-21 17:03:22', '2023-07-21 17:03:22'),
(18, '2', '1', '2023-07-24 15:59:52', '2023-07-24 15:59:52'),
(19, '1', '1', '2023-07-24 15:59:52', '2023-07-24 15:59:52'),
(23, '1', '18', '2023-08-02 15:03:04', '2023-08-02 15:03:04'),
(24, '1', '17', '2023-08-02 15:03:38', '2023-08-02 15:03:38'),
(25, '1', '12', '2023-08-02 15:04:22', '2023-08-02 15:04:22'),
(26, '1', '11', '2023-08-02 15:05:11', '2023-08-02 15:05:11'),
(28, '1', '10', '2023-08-02 15:06:35', '2023-08-02 15:06:35'),
(29, '1', '19', '2023-08-02 15:08:58', '2023-08-02 15:08:58'),
(32, '1', '14', '2023-08-04 08:15:41', '2023-08-04 08:15:41');

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

--
-- Dumping data for table `blog_category_lists`
--

INSERT INTO `blog_category_lists` (`id`, `master_id`, `name`, `slug`, `description`, `picture`, `status`, `type`, `parent_id`, `created_at`, `updated_at`) VALUES
(1, '8', 'Recipes', 'recipes', 'Recipes', 'hRdm3HG8RzUM4E6ZCkSa5n9IFNYZA6.png', 1, 'blog', NULL, '2023-05-11 14:02:24', '2023-07-27 17:51:04'),
(2, '11', 'Desserts', 'desserts', 'DESSERTS', '5CYbEmr04qLeIcCzbax3oHjIkiOgA2.png', 1, 'blog', NULL, '2023-05-11 14:02:30', '2023-07-27 17:49:50'),
(3, '13', 'Cookies', 'cookies', 'Cookies', 'ZRYTQrTcxbtMBQWVMR0WrQsoVKc1sR.png', 1, 'recipe', NULL, '2023-07-20 11:45:47', '2023-07-20 11:45:47');

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

--
-- Dumping data for table `career_jobs`
--

INSERT INTO `career_jobs` (`id`, `job_possition`, `store_id`, `master_id`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Store Manager', 29, 1, 1, '2023-05-31 14:23:01', '2023-06-01 09:22:59');

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

--
-- Dumping data for table `career_requests`
--

INSERT INTO `career_requests` (`id`, `store_name`, `position`, `firstname`, `lastname`, `phone`, `resume`, `email`, `message`, `availability`, `status`, `created_at`, `updated_at`) VALUES
(1, 'Harbord St.', 'general', 'shefii', 'km', '8075261300', '', 'shefii.indigital@gmail.com', 'df', NULL, 1, '2023-08-16 09:17:11', '2023-08-16 09:17:11'),
(2, 'Harbord St.', 'general', 'shefii', 'km', '8075261300', '', 'shefii.indigital@gmail.com', 'df', NULL, 1, '2023-08-16 09:17:35', '2023-08-16 09:17:35'),
(3, 'Danforth', 'general', 'sdf', 'sdf', '8848484845', '', 'ff@sdfg.szdf', 'asf', NULL, 1, '2023-08-16 09:21:01', '2023-08-16 09:21:01'),
(4, 'Queen West', 'general', 'sdf', 'sdf', '2848484848', '', 'xdf@dfg.sdfsdf', 'zsdfszdf', NULL, 1, '2023-08-16 09:23:12', '2023-08-16 09:23:12'),
(5, 'Harbord St.', 'general', 'sdf', '2662', '5988488454', '', 'sdf@sdg.sdf', 'sadfsdf', NULL, 1, '2023-08-16 09:24:55', '2023-08-16 09:24:55'),
(6, 'Queen West', 'general', 'sdf', 'sdf', '1854848484', '', 'sdf@dfg.sdf', 'sdfsdf', 'full time', 1, '2023-08-16 09:27:09', '2023-08-16 09:27:09');

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
(3, '3', 'Sweet Pies', 'sweet-pies', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 12:19:19', '2023-07-11 12:30:03'),
(6, '6', 'Savory Pies', 'savory-pies', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 12:21:05', '2023-07-11 12:21:05'),
(7, '7', 'Baked Goods', 'baked-goods', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 12:21:21', '2023-07-11 12:21:21'),
(8, '8', 'Cookies', 'cookies', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 12:21:50', '2023-07-11 12:21:50'),
(9, '10', 'Gift Cards', 'gift-cards', NULL, NULL, 'Z6R8jY5FNaqjHJmsrjdD3weNyboSAY.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 16:26:42', '2023-07-11 16:26:42'),
(10, '11', 'Cake in a Jar', 'cake-in-a-jar', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 16:27:00', '2023-07-11 16:27:00'),
(11, '12', 'Cold Drinks', 'cold-drinks', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 16:46:11', '2023-07-11 16:46:11'),
(12, '13', 'Hot Drinks', 'hot-drinks', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 17:22:01', '2023-07-11 17:22:01'),
(13, '14', 'Ice Cream', 'ice-cream', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-11 18:00:12', '2023-07-11 18:00:12'),
(14, '15', 'Quiche', 'quiche', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-12 10:44:29', '2023-07-12 10:44:29'),
(15, '16', 'Greeting Card', 'greeting-card', NULL, NULL, 'dummy.png', NULL, NULL, NULL, NULL, NULL, 1, '2023-07-18 11:47:39', '2023-07-18 11:47:39');

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

--
-- Dumping data for table `category_products`
--

INSERT INTO `category_products` (`id`, `category_id`, `product_id`, `created_at`, `updated_at`) VALUES
(300, '10', '62', '2023-07-19 13:16:57', '2023-07-19 13:16:57'),
(301, '10', '110', '2023-07-19 13:17:20', '2023-07-19 13:17:20'),
(302, '10', '61', '2023-07-19 13:17:34', '2023-07-19 13:17:34'),
(303, '10', '63', '2023-07-19 13:17:46', '2023-07-19 13:17:46'),
(304, '8', '57', '2023-07-19 13:18:52', '2023-07-19 13:18:52'),
(306, '8', '54', '2023-07-19 13:19:43', '2023-07-19 13:19:43'),
(307, '8', '52', '2023-07-19 13:20:07', '2023-07-19 13:20:07'),
(308, '16', '59', '2023-07-19 13:20:44', '2023-07-19 13:20:44'),
(309, '13', '92', '2023-07-19 13:23:42', '2023-07-19 13:23:42'),
(310, '13', '91', '2023-07-19 13:23:50', '2023-07-19 13:23:50'),
(311, '13', '90', '2023-07-19 13:23:59', '2023-07-19 13:23:59'),
(312, '13', '89', '2023-07-19 13:24:10', '2023-07-19 13:24:10'),
(313, '13', '88', '2023-07-19 13:24:19', '2023-07-19 13:24:19'),
(314, '13', '87', '2023-07-19 13:24:25', '2023-07-19 13:24:25'),
(315, '13', '86', '2023-07-19 13:24:32', '2023-07-19 13:24:32'),
(316, '13', '85', '2023-07-19 13:24:37', '2023-07-19 13:24:37'),
(317, '13', '84', '2023-07-19 13:24:44', '2023-07-19 13:24:44'),
(318, '13', '83', '2023-07-19 13:24:57', '2023-07-19 13:24:57'),
(319, '13', '82', '2023-07-19 13:25:06', '2023-07-19 13:25:06'),
(320, '13', '81', '2023-07-19 13:25:13', '2023-07-19 13:25:13'),
(321, '13', '80', '2023-07-19 13:25:19', '2023-07-19 13:25:19'),
(322, '13', '94', '2023-07-19 13:25:25', '2023-07-19 13:25:25'),
(323, '13', '93', '2023-07-19 13:25:31', '2023-07-19 13:25:31'),
(324, '14', '99', '2023-07-19 13:26:20', '2023-07-19 13:26:20'),
(325, '14', '100', '2023-07-19 13:26:30', '2023-07-19 13:26:30'),
(326, '14', '95', '2023-07-19 13:26:40', '2023-07-19 13:26:40'),
(327, '14', '96', '2023-07-19 13:26:47', '2023-07-19 13:26:47'),
(328, '14', '97', '2023-07-19 13:26:53', '2023-07-19 13:26:53'),
(329, '14', '98', '2023-07-19 13:27:05', '2023-07-19 13:27:05'),
(353, '12', '78', '2023-07-19 13:46:18', '2023-07-19 13:46:18'),
(354, '12', '79', '2023-07-19 13:49:35', '2023-07-19 13:49:35'),
(356, '12', '77', '2023-07-19 13:49:47', '2023-07-19 13:49:47'),
(373, '8', '56', '2023-07-19 14:01:53', '2023-07-19 14:01:53'),
(463, '7', '32', '2023-07-20 16:39:29', '2023-07-20 16:39:29'),
(464, '7', '36', '2023-07-20 16:40:17', '2023-07-20 16:40:17'),
(465, '7', '35', '2023-07-20 16:41:11', '2023-07-20 16:41:11'),
(470, '7', '115', '2023-07-20 16:52:45', '2023-07-20 16:52:45'),
(471, '7', '116', '2023-07-20 16:53:31', '2023-07-20 16:53:31'),
(473, '7', '117', '2023-07-20 16:55:39', '2023-07-20 16:55:39'),
(474, '7', '145', '2023-07-20 16:56:36', '2023-07-20 16:56:36'),
(488, '8', '142', '2023-07-20 17:14:26', '2023-07-20 17:14:26'),
(489, '8', '141', '2023-07-20 17:27:34', '2023-07-20 17:27:34'),
(508, '11', '132', '2023-07-21 11:38:57', '2023-07-21 11:38:57'),
(541, '15', '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(629, '3', '159', '2023-07-27 13:16:20', '2023-07-27 13:16:20'),
(633, '7', '160', '2023-07-27 18:18:02', '2023-07-27 18:18:02'),
(644, '3', '161', '2023-08-07 14:27:13', '2023-08-07 14:27:13');

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

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`id`, `master_id`, `name`, `code`, `province`, `base`, `status`, `city_group_id`, `page_id`, `created_at`, `updated_at`) VALUES
(10, '14', 'Ajax', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:51:15', '2023-07-17 16:51:15'),
(11, '15', 'Ancaster', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:51:25', '2023-07-17 16:51:25'),
(12, '16', 'Ashburn', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:51:33', '2023-07-17 16:51:33'),
(13, '17', 'Aurora', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:51:41', '2023-07-17 16:51:41'),
(14, '18', 'Ballantrae', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:51:51', '2023-07-17 16:51:51'),
(15, '19', 'Bolton', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:05', '2023-07-17 16:52:05'),
(16, '20', 'Bradford', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:15', '2023-07-17 16:52:15'),
(17, '21', 'Brampton', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:26', '2023-07-17 16:52:26'),
(18, '22', 'Brooklin', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:37', '2023-07-17 16:52:37'),
(19, '23', 'Brougham', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:45', '2023-07-17 16:52:45'),
(20, '24', 'Burlington', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:52:54', '2023-07-17 16:52:54'),
(21, '25', 'Caledon', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:02', '2023-07-17 16:53:02'),
(22, '26', 'Cedar Mills', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:11', '2023-07-17 16:53:11'),
(23, '27', 'Claremont', '0', 'NS', '0', 1, NULL, NULL, '2023-07-17 16:53:18', '2023-07-17 16:54:24'),
(24, '28', 'Columbus', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:26', '2023-07-17 16:53:26'),
(25, '29', 'Courtice', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:34', '2023-07-17 16:53:34'),
(26, '30', 'Concord', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:42', '2023-07-17 16:53:42'),
(27, '31', 'Dundas', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:52', '2023-07-17 16:53:52'),
(28, '32', 'Etobicoke', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:53:59', '2023-07-17 16:53:59'),
(29, '33', 'Georgetown', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:54:05', '2023-07-17 16:54:05'),
(30, '34', 'Gormley', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:54:40', '2023-07-17 16:54:40'),
(31, '35', 'Green River', '0', 'BC', '0', 1, NULL, NULL, '2023-07-17 16:54:53', '2023-07-17 16:54:53'),
(32, '36', 'Greenwood', '0', 'BC', '0', 1, NULL, NULL, '2023-07-17 16:55:03', '2023-07-17 16:55:03'),
(33, '37', 'Grimsby', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:55:16', '2023-07-17 16:55:16'),
(34, '38', 'Hamilton', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:55:23', '2023-07-17 16:55:23'),
(35, '39', 'Hampton', '0', 'NB', '0', 1, NULL, NULL, '2023-07-17 16:55:37', '2023-07-17 16:55:37'),
(36, '40', 'Holland Landing', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:55:57', '2023-07-17 16:55:57'),
(37, '41', 'Keswick', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:05', '2023-07-17 16:56:05'),
(38, '42', 'Kettleby', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:11', '2023-07-17 16:56:11'),
(39, '43', 'King City', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:18', '2023-07-17 16:56:18'),
(40, '44', 'Kleinburg', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:25', '2023-07-17 16:56:25'),
(41, '45', 'Maple', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:34', '2023-07-17 16:56:34'),
(42, '46', 'Markham', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:42', '2023-07-17 16:56:42'),
(43, '47', 'Milton', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:49', '2023-07-17 16:56:49'),
(44, '48', 'Mississauga', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:56:55', '2023-07-17 16:56:55'),
(45, '49', 'Mitchell\'s Corners', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:02', '2023-07-17 16:57:02'),
(46, '50', 'Mount Hope', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:09', '2023-07-17 16:57:09'),
(47, '51', 'Mount Albert', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:18', '2023-07-17 16:57:18'),
(48, '52', 'Musselman\'s Lake', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:25', '2023-07-17 16:57:25'),
(49, '53', 'Newmarket', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:33', '2023-07-17 16:57:33'),
(50, '54', 'Nobleton', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:41', '2023-07-17 16:57:41'),
(51, '55', 'North York', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:57:52', '2023-07-17 16:57:52'),
(52, '56', 'Oakville', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:00', '2023-07-17 16:58:00'),
(53, '57', 'Oshawa', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:07', '2023-07-17 16:58:07'),
(54, '58', 'Palgrave', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:19', '2023-07-17 16:58:19'),
(55, '59', 'Pickering', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:30', '2023-07-17 16:58:30'),
(56, '60', 'Queensville', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:41', '2023-07-17 16:58:41'),
(57, '61', 'Raglan', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:48', '2023-07-17 16:58:48'),
(58, '62', 'Richmond Hill', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:58:57', '2023-07-17 16:58:57'),
(59, '63', 'Schomberg', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:59:06', '2023-07-17 16:59:06'),
(60, '64', 'Sharon', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:59:15', '2023-07-17 16:59:15'),
(61, '65', 'Stewart Town', '0', 'BC', '0', 1, NULL, NULL, '2023-07-17 16:59:26', '2023-07-17 16:59:26'),
(62, '66', 'Scarborough', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 16:59:43', '2023-07-17 16:59:43'),
(63, '67', 'Stoney Creek', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:06', '2023-07-17 17:00:06'),
(64, '68', 'Stouffville', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:15', '2023-07-17 17:00:15'),
(65, '69', 'Thornhill', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:24', '2023-07-17 17:00:24'),
(66, '70', 'Toronto', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:33', '2023-07-17 17:00:33'),
(67, '71', 'Tottenham', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:40', '2023-07-17 17:00:40'),
(68, '72', 'Unionville', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:48', '2023-07-17 17:00:48'),
(69, '73', 'Uxbridge', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:00:57', '2023-07-17 17:00:57'),
(70, '74', 'Vaughan', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:04', '2023-07-17 17:01:04'),
(71, '75', 'Waterdown', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:12', '2023-07-17 17:01:12'),
(72, '76', 'Whitby', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:25', '2023-07-17 17:01:25'),
(73, '77', 'Whitevale', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:32', '2023-07-17 17:01:32'),
(74, '78', 'Winona', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:39', '2023-07-17 17:01:39'),
(75, '79', 'Woodbridge', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:46', '2023-07-17 17:01:46'),
(76, '80', 'Oak Ridges', '0', 'ON', '0', 1, NULL, NULL, '2023-07-17 17:01:54', '2023-07-17 17:01:54');

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

--
-- Dumping data for table `countries`
--

INSERT INTO `countries` (`id`, `master_id`, `name`, `code`, `content_id`, `base`, `status`, `page_id`, `created_at`, `updated_at`) VALUES
(1, '53', 'Canada', 'CA', NULL, '0', 1, NULL, '2023-06-15 11:16:43', '2023-06-15 11:16:43');

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

--
-- Dumping data for table `country_shippings`
--

INSERT INTO `country_shippings` (`id`, `province`, `country`, `shipping_id`, `charge`, `created_at`, `updated_at`) VALUES
(2, NULL, '53', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52');

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
(1, 17, 'ONAM', 2.00, 'percentage', 4, 0, 0.00, 1, '2022-07-20 00:00:00', '2022-08-20 00:00:00', 'all', 'certain', 1, '2023-05-23 10:19:44', '2023-05-23 10:19:44'),
(2, 15, 'FAMILY', 5.00, 'percentage', 5, 0, 0.00, 1, '2022-07-04 00:00:00', '2023-07-10 00:00:00', 'all', 'all', 1, '2023-05-23 10:28:50', '2023-05-23 10:28:50'),
(3, 16, 'FRIEND', 8.00, 'amount', 2, 0, 0.00, 1, '2022-07-04 00:00:00', '2022-07-08 00:00:00', 'in-store', 'all', 1, '2023-05-23 10:29:02', '2023-05-23 10:29:02'),
(4, 18, 'TOUR', 12.00, 'amount', 10, 0, 0.00, 2, '2022-07-01 00:00:00', '2022-07-30 00:00:00', 'in-store', 'certain', 1, '2023-05-23 10:29:17', '2023-05-23 10:29:17'),
(5, 19, 'WEEKEND', 5.00, 'amount', 7, 0, 0.00, 2, '2022-07-09 00:00:00', '2026-07-10 00:00:00', 'online', 'certain', 1, '2023-05-23 10:29:21', '2023-07-10 09:10:53'),
(6, 20, 'KIDSDAY', 7.00, 'amount', 8, 0, 0.00, 2, '2023-05-23 00:00:00', '2023-05-30 00:00:00', 'online', 'certain', 1, '2023-05-23 10:29:43', '2023-05-23 10:29:43'),
(7, 21, 'FILMDAY', 6.00, 'percentage', 4, 0, 0.00, 3, '2022-07-11 00:00:00', '2022-07-25 00:00:00', 'in-store', 'all', 1, '2023-05-23 10:29:58', '2023-05-23 10:29:58'),
(8, 22, 'FLOWERSDAY', 6.00, 'percentage', 10, 0, 0.00, 3, '2022-07-01 00:00:00', '2022-08-01 00:00:00', 'in-store', 'certain', 1, '2023-05-23 10:30:07', '2023-05-23 10:30:07'),
(9, 23, 'FOOTBALL', 8.00, 'percentage', 2, 0, 0.00, 3, '2022-07-05 00:00:00', '2022-07-25 00:00:00', 'in-store', 'all', 1, '2023-05-23 10:30:11', '2023-05-23 10:30:11'),
(10, 24, 'CANADADAY', 3.00, 'percentage', 3, 0, 0.00, 3, '2022-07-04 00:00:00', '2022-07-05 00:00:00', 'in-store', 'all', 1, '2023-05-23 10:30:21', '2023-05-23 10:30:21');

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

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`id`, `master_id`, `type`, `question`, `answer`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(1, '7', 'General', 'Do you offer gluten-free or vegan options?', 'Yes, we offer a selection of gluten-free and vegan baked goods. Please check our website or contact us for current offerings.', '1', 0, '2023-05-11 13:41:13', '2023-05-11 13:41:13'),
(2, '8', 'General', 'How should I store my baked goods?', 'We recommend storing our baked goods in an airtight container at room temperature. Some items may also be stored in the refrigerator or freezer for longer shelf life.', '2', 0, '2023-05-11 13:41:15', '2023-05-11 13:41:15'),
(3, '9', 'General', 'Do you offer delivery or shipping?', 'Yes, we offer delivery and shipping options for our baked goods. Please see our delivery policy or contact us for more information.', '3', 0, '2023-05-11 13:41:18', '2023-05-11 13:41:18'),
(4, '10', 'General', 'Can I place a special order for a cake or other baked goods?', 'Yes, we offer special order services for cakes and other baked goods. Please contact us to discuss your order and pricing.', '4', 0, '2023-05-11 13:41:20', '2023-05-11 13:41:20'),
(5, '11', 'Substitutions', 'Do you offer catering services for events?', 'Yes, we offer catering services for weddings, birthdays, and other special events. Please see our catering menu or contact us for more information.', '5', 0, '2023-05-11 13:41:22', '2023-05-11 13:43:54'),
(6, '12', 'Substitutions', 'Can I substitute ingredients in my order?', 'Unfortunately, we cannot accommodate ingredient substitutions for online orders at this time.', '1', 0, '2023-05-11 13:41:24', '2023-05-11 13:44:00'),
(7, '13', 'Substitutions', 'Can I request a custom cake flavor?', 'Yes, we offer custom cake flavors. Please contact us to discuss your flavor preferences and pricing.', '2', 0, '2023-05-11 13:41:28', '2023-05-11 13:44:04'),
(8, '14', 'Substitutions', 'Can I request a specific type of bread for my sandwich?', 'Yes, you can request a specific type of bread for your sandwich. Please note that some breads may not be available for all sandwiches.', '3', 0, '2023-05-11 13:41:30', '2023-05-11 13:44:09'),
(9, '15', 'Substitutions', 'Can I substitute a different type of fruit in my pastry?', 'Unfortunately, we cannot accommodate fruit substitutions for online orders at this time. Please contact us to discuss custom orders.', '4', 0, '2023-05-11 13:41:33', '2023-05-11 13:44:15'),
(10, '16', 'Substitutions', 'Can I substitute a different type of cheese on my bagel?', 'Yes, you can request a different type of cheese on your bagel. Please note that some cheeses may not be available for all bagel sandwiches.', '5', 0, '2023-05-11 13:41:36', '2023-05-11 13:44:21'),
(11, '17', 'Discounts', 'Do you offer any discounts for first-time customers?', 'Yes, we offer a discount for first-time customers. Please see our promotions page or contact us for more information.', '1', 0, '2023-05-11 13:41:39', '2023-05-11 13:44:26'),
(12, '18', 'Discounts', 'Do you offer any discounts for bulk orders?', 'Yes, we offer discounts for bulk orders. Please contact us to discuss your order and pricing.', '2', 0, '2023-05-11 13:41:41', '2023-05-11 13:44:32'),
(13, '19', 'Discounts', 'Do you offer any discounts for military personnel or seniors?', 'Yes, we offer discounts for military personnel and seniors. Please contact us for more information.', '3', 0, '2023-05-11 13:41:43', '2023-05-11 13:44:38'),
(14, '20', 'Discounts', 'Can I use multiple discounts or coupons on the same order?', 'Unfortunately, only one discount or coupon code can be applied per order.', '4', 0, '2023-05-11 13:41:45', '2023-05-11 13:44:42'),
(15, '22', 'Returns', 'What is your return policy? .', 'Due to the perishable nature of our products, we do not accept returns or offer refunds. However, if you are unsatisfied with your order, please contact us and we will do our best to resolve the issue', '1', 0, '2023-05-11 13:41:49', '2023-05-11 13:45:04'),
(16, '23', 'Returns', 'What should I do if my order arrives damaged?', 'If your order arrives damaged, please contact us within 24 hours of receiving your order and provide photos of the damage. We will do our best to replace or refund your order.', '1', 0, '2023-05-11 13:41:51', '2023-05-11 13:45:08'),
(17, '24', 'Returns', 'What should I do if I receive the wrong order?', 'If you receive the wrong order, please contact us immediately and we will arrange for the correct order to be delivered to you as soon as possible.', '4', 0, '2023-05-11 13:41:53', '2023-05-11 13:45:12'),
(18, '25', 'Returns', 'Can I cancel my order after it has been placed?', 'Unfortunately, we cannot accept cancellations once an order has been placed due to the perishable nature of our products.', '3', 0, '2023-05-11 13:41:56', '2023-05-11 13:45:36'),
(19, '26', 'Returns', 'What if I have allergies or dietary restrictions and accidentally ordered something I can\'t eat?', 'Please double-check your order before placing it and contact us immediately if you notice any errors. Unfortunately, we cannot accept returns or offer refunds for orders placed with incorrect information.', '5', 0, '2023-05-11 13:41:58', '2023-05-11 13:45:22'),
(20, '21', 'Discounts', 'How can I receive notifications about sales and discounts?', 'You can sign up for our email newsletter to receive notifications about sales and discounts. You can also follow us on social media for updates.', '5', 0, '2023-05-11 13:44:50', '2023-05-11 13:44:50');

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

--
-- Dumping data for table `galleries`
--

INSERT INTO `galleries` (`id`, `master_id`, `title`, `picture`, `share_link`, `position`, `status`, `created_at`, `updated_at`) VALUES
(5, 5, '', 'LTabSTBsDQc8EhJrO7aQ4yDXMKGdd0.jpeg', NULL, 1, 1, '2020-09-24 13:41:45', '2020-09-24 13:41:45'),
(3, 3, '', 'DKuOOOpTIiVbFe00864LFFBFuxAhce.png', NULL, 1, 1, '2020-09-24 10:52:07', '2020-09-24 10:52:07'),
(6, 6, '', '8W2URgr6avu5Lanwkvwp1jH0vS0ZKd.jpeg', NULL, 1, 1, '2020-09-24 13:42:12', '2020-09-24 13:42:12'),
(7, 7, '', 'IMEwu8koIEfrwQktWsixTtUuf7IX8V.jpeg', NULL, 1, 1, '2020-09-24 13:42:42', '2020-09-24 13:42:42'),
(8, 8, '', '4xB5x41Zv7v57fdlDFHiNMQ14iiPJF.jpeg', NULL, 1, 1, '2020-09-24 13:43:12', '2020-09-24 13:43:12'),
(9, 9, '', 'hX0gLJ9MHob1KRtDaMRPM5atBGR61m.jpeg', NULL, 1, 1, '2020-09-24 13:47:21', '2020-09-24 13:47:21'),
(10, 10, '', 'Et2teNd3KXN9vgkVOM6Qvn5Prqg4kZ.jpeg', NULL, 1, 1, '2020-09-24 13:47:42', '2020-09-24 13:47:42'),
(11, 11, '', 'eRTTzCaIE1CzW6e9EhYXlB8VLJuXTy.jpeg', NULL, 1, 1, '2020-09-24 13:48:20', '2020-09-24 13:48:20'),
(36, 36, '', 'mHD9ynA1G8Ew4wQ1FvKWUCV4diO55f.jpeg', NULL, 1, 1, '2020-10-08 06:20:44', '2020-10-08 06:20:44'),
(14, 14, '', 'U9Ku9em2sEKabFHnLCl6fQ6MpLY8sA.jpeg', NULL, 1, 1, '2020-09-24 13:50:11', '2020-09-24 13:50:11'),
(15, 15, '', 'LniBiFZmKK76NYy6DsPy0ZXJxvqVJa.jpeg', NULL, 1, 1, '2020-09-24 13:50:32', '2020-09-24 13:50:32'),
(16, 16, '', 'xgzXyYPw7puTBXkcnZuXdIyImsEgJd.jpeg', NULL, 1, 1, '2020-09-24 13:51:01', '2020-09-24 13:51:01'),
(17, 17, '', 'Xw8ZfMH9krGuycjPLs7yMWn1y4SANa.jpeg', NULL, 1, 1, '2020-09-24 13:51:39', '2020-09-24 13:51:39'),
(18, 18, '', 'hXRuYkyAsL83LNPCFfX6Od8382kRtJ.jpeg', NULL, 1, 1, '2020-09-24 13:52:01', '2020-09-24 13:52:01'),
(20, 20, '', 'cz5VWA7Cs4c2xVjb10MH9KZEmnAbUY.jpeg', NULL, 1, 1, '2020-10-07 06:49:56', '2020-10-07 06:49:56'),
(21, 21, '', 'CLzWHp8X0aZcgVDv56IIEqVe5Uk75k.jpeg', NULL, 1, 1, '2020-10-07 06:50:45', '2020-10-07 06:50:45'),
(22, 22, '', 'IlzYB9cRwN2HT3D9aC7GHAFRLSOnGu.jpeg', NULL, 1, 1, '2020-10-07 06:51:06', '2020-10-07 06:51:06'),
(35, 35, '', 'W1njAOYTKholSCbd7wg9t0WxXRbKJK.jpeg', NULL, 1, 1, '2020-10-08 06:20:21', '2020-10-08 06:20:21'),
(24, 24, '', 'ZRx6RlQ5EbPBEFljW2WXvs8j4QX5M4.jpeg', NULL, 1, 1, '2020-10-07 06:52:23', '2020-10-07 06:52:23'),
(25, 25, '', 'Hlee7A5O7SQZVtMEwDmYm2cQgU6yC4.jpeg', NULL, 1, 1, '2020-10-07 06:52:45', '2020-10-07 06:52:45'),
(26, 26, '', 'jIqJv3onE5VOWkMclXOxXcIjyKv5m8.jpeg', NULL, 1, 1, '2020-10-07 06:53:08', '2020-10-07 06:53:08'),
(27, 27, '', '8rdEJp9c2OnqgYuY51leN9xo2HEXZz.jpeg', NULL, 1, 1, '2020-10-07 06:54:22', '2020-10-07 06:54:22'),
(28, 28, '', '9ZXnyveExnYcAGsLs8yfg58J6264XY.jpeg', NULL, 1, 1, '2020-10-07 06:55:00', '2020-10-07 06:55:00'),
(29, 29, '', 'fMjdwWszGpWWX2rtFSnqNrjyTNC8Oy.jpeg', NULL, 1, 1, '2020-10-07 06:55:27', '2020-10-07 06:55:27'),
(30, 30, '', 'GN6xq9jOo4XGze6y4rYcz1NWjEiqD0.jpeg', NULL, 1, 1, '2020-10-07 06:55:49', '2020-10-07 06:55:49'),
(31, 31, '', 'MiBTPZ6u49Nqwdd1Jpl0rm6fKa2w6t.jpeg', NULL, 1, 1, '2020-10-07 06:56:11', '2020-10-07 06:56:11'),
(32, 32, '', 'GSbDfAHdrXsUq9DugBbODsJPxUf2p7.jpeg', NULL, 1, 1, '2020-10-07 06:56:30', '2020-10-07 06:56:30'),
(33, 33, '', '3gkwkhEJBdCzDO6k2Uv1aWsUXRrhAc.jpeg', NULL, 1, 1, '2020-10-07 06:56:48', '2020-10-07 06:56:48'),
(34, 34, '', 'gNVX9zMr1S61tRDKD9Te53QTi7UMUy.jpeg', NULL, 1, 1, '2020-10-07 06:57:07', '2020-10-07 06:57:07'),
(37, 37, '', 'x7tcLWdYZmwo9w36d84Iz8rPVeA7OW.jpeg', NULL, 1, 1, '2020-10-08 06:21:35', '2020-10-08 06:21:35'),
(40, 40, '', 'cOQiYfZuGAkHrI29tXsWNYWtQwjeC6.jpeg', NULL, 1, 1, '2020-10-08 06:23:25', '2020-10-08 06:23:25'),
(39, 39, '', 'ziYOwMyGmaCWnmUgKnnUJ5d0MjcI0D.jpeg', NULL, 1, 1, '2020-10-08 06:22:18', '2020-10-08 06:22:18'),
(42, 42, '', '3QhpViCFGNtIPKaUytwH47RJmAyi5Z.jpeg', NULL, 1, 1, '2020-10-08 06:24:19', '2020-10-08 06:24:19'),
(43, 43, '', 'QpseK5Vo75LujpujG6e3dwZhxDQqJs.jpeg', NULL, 1, 1, '2020-10-08 06:24:40', '2020-10-08 06:24:40'),
(44, 44, '', 'mkoNRm5seCTI5qHX2sWeAF3covtgjC.jpeg', NULL, 1, 1, '2020-10-08 06:28:52', '2020-10-08 06:28:52'),
(45, 45, '', 'EyCK5uGmo38uSFdmQXtzQUxXfWAVtk.jpeg', NULL, 1, 1, '2020-10-08 06:29:15', '2020-10-08 06:29:15'),
(46, 46, '', 's1A7m7NHHxohJl8zgI2QC27xGGwyCj.jpeg', NULL, 1, 1, '2020-10-08 06:29:33', '2020-10-08 06:29:33'),
(47, 47, '', 'HxrzchEMYRiMLzOGFVfK0WxAGzh0gn.jpeg', NULL, 1, 1, '2020-10-08 06:29:51', '2020-10-08 06:29:51'),
(48, 48, '', 'M993jnywITU4rj8CdTCfwiiceBffcA.jpeg', NULL, 1, 1, '2020-10-08 06:30:09', '2020-10-08 06:30:09'),
(49, 49, '', 'ecQzolN2Do8pN2te3uYrIW9h91za93.jpeg', NULL, 1, 1, '2020-10-08 06:30:29', '2020-10-08 06:30:29'),
(50, 50, '', 'E2SDqXmtHH2T2IWjWr3hkCLkBIdGnE.jpeg', NULL, 1, 1, '2020-10-08 06:30:48', '2020-10-08 06:30:48'),
(51, 51, '', 'TuFhTCpjbkfDIo4tPGpRt5QIwxtkyk.jpeg', NULL, 1, 1, '2020-10-08 06:33:23', '2020-10-08 06:33:23'),
(52, 52, '', 'iU3RbIa9g93AI1VV46rhEsCVDvwjIN.jpeg', NULL, 1, 1, '2020-10-08 06:33:42', '2020-10-08 06:33:42'),
(53, 53, '', 'jPhP5eOWnNsp9P7sPLfDFCQPyVO1Sq.jpeg', NULL, 1, 1, '2020-10-08 06:33:58', '2020-10-08 06:33:58'),
(54, 54, '', 'ptmixVGrAKZrpEKrN77GingNClWevr.jpeg', NULL, 1, 1, '2020-10-08 06:34:18', '2020-10-08 06:34:18'),
(55, 55, '', 'aK9Jczkh7Y298FORcZ8NHgJfN9bH7c.jpeg', NULL, 1, 1, '2020-10-08 06:34:37', '2020-10-08 06:34:37'),
(56, 56, '', 'eKRSUsKy2ouxp27rChFPDkTDxr8q6N.jpeg', NULL, 1, 1, '2020-10-08 06:34:55', '2020-10-08 06:34:55'),
(57, 57, '', 'xPhAcxizFUMkBg1cezUk5OCHnZOiJR.jpeg', NULL, 1, 1, '2020-10-08 06:35:49', '2020-10-08 06:35:49'),
(58, 58, '', 'Ha6f2IdHVyk4kXdkLZsez5oVjRkNqR.jpeg', NULL, 1, 1, '2020-10-08 06:36:41', '2020-10-08 06:36:41'),
(59, 59, '', '1APbDzzqmf0FP649tXKTbQfRG8UOTi.jpeg', NULL, 1, 1, '2020-10-08 06:39:36', '2020-10-08 06:39:36'),
(60, 60, '', 'erPd3kzpz7U5UyL8D1ZfMsf5uht4Yq.jpeg', NULL, 1, 1, '2020-10-08 06:39:57', '2020-10-08 06:39:57'),
(61, 61, '', '7pgBzz1QMhoeUlc3Bod70OdMr8zrEo.jpeg', NULL, 1, 1, '2020-10-08 06:40:17', '2020-10-08 06:40:17'),
(62, 62, '', 'P5SzBJTNi7y60jOCj16U7Hj4YRMwoI.jpeg', NULL, 1, 1, '2020-10-08 06:40:40', '2020-10-08 06:40:40'),
(63, 63, '', 'bXBZiOoROAKj6aWqDxUZ7FbyAI2bAS.jpeg', NULL, 1, 1, '2020-10-08 06:40:59', '2020-10-08 06:40:59'),
(64, 64, '', 'ZV3ielGsoWrVe4WoCcHZP1HifgVM5K.jpeg', NULL, 1, 1, '2020-10-08 06:41:21', '2020-10-08 06:41:21'),
(65, 65, '', '0ZiJNxQCAXRagfbkb98cEU9qylS3qH.jpeg', NULL, 1, 1, '2020-10-08 06:41:50', '2020-10-08 06:41:50'),
(66, 66, '', 'BQQKA1KsmZ8RBnaQ22CHzyBx5GSAic.jpeg', NULL, 1, 1, '2020-10-08 06:43:56', '2020-10-08 06:43:56'),
(67, 67, '', 'Hib7vQH80DedrMNCVQKvAH6ZFBwKNw.jpeg', NULL, 1, 1, '2020-10-08 06:45:20', '2020-10-08 06:45:20'),
(68, 68, '', 'HJfpPFpHVVz8eHVHaJMuxoMIEL0zei.jpeg', NULL, 1, 1, '2020-10-08 06:45:43', '2020-10-08 06:45:43'),
(69, 69, '', 'ZkKRpBnklolfqVZdZZB8DI4rFHIfC5.jpeg', NULL, 1, 1, '2020-10-08 06:46:03', '2020-10-08 06:46:03'),
(70, 70, '', 't5hB3Nhhes7jcdewl9NT83MX0SA7sf.jpeg', NULL, 1, 1, '2020-10-08 06:46:20', '2020-10-08 06:46:20'),
(71, 71, '', 'VPejP0dqJpxRc8kyitDbECmst4QB2b.jpeg', NULL, 1, 1, '2020-10-08 06:47:22', '2020-10-08 06:47:22'),
(72, 72, '', 'AwAKe6oSTQgE2BFCE25zoihqYOoYae.jpeg', NULL, 1, 1, '2020-10-08 06:47:41', '2020-10-08 06:47:41'),
(73, 73, '', 'PlApRDxVpfHNADz50scl6pIO5BSVVM.jpeg', NULL, 1, 1, '2020-10-08 06:47:57', '2020-10-08 06:47:57'),
(74, 74, '', 'qKlTGCaduUyG7onUvKIeYpNQURhKH1.jpeg', NULL, 1, 1, '2021-03-02 10:08:38', '2021-03-02 10:08:38'),
(75, 75, '', 'Sx5g6y9loZtktDZQVoLnnw8a6aGMAC.jpeg', NULL, 1, 1, '2021-03-02 10:08:54', '2021-03-02 10:08:54'),
(76, 76, '', 'cpygz1s2PygYsIcuHVh9j2mn9aNtCC.jpeg', NULL, 1, 1, '2021-03-02 10:09:24', '2021-03-02 10:09:24'),
(77, 77, '', 'tuIluhSYCbVv06MHgTFCj4Eo5oryIJ.jpeg', NULL, 1, 1, '2021-03-02 10:09:38', '2021-03-02 10:09:38'),
(78, 78, '', 'dY0sOqQ1LaVABD54XIDsuVGWmglXqY.jpeg', NULL, 1, 1, '2021-03-02 10:09:53', '2021-03-02 10:09:53'),
(79, 79, '', 'qFmmoXlvEpaCY4obGY1MndVu53WEdc.jpeg', NULL, 1, 1, '2021-03-02 10:10:07', '2021-03-02 10:10:07'),
(80, 80, '', '7FMEooMFL6qSjubz6mDCjDsrgHP46P.jpeg', NULL, 1, 1, '2021-03-02 10:10:20', '2021-03-02 10:10:20'),
(81, 81, '', 'bUtiLx4NXGqdBxOnl4Uln2aX9rMu5S.jpeg', NULL, 1, 1, '2021-03-02 10:10:34', '2021-03-02 10:10:34'),
(82, 82, '', 'xei0kM1mAt8VqABWiv6UKTLcgs254y.jpeg', NULL, 1, 1, '2021-03-02 10:10:49', '2021-03-02 10:10:49'),
(83, 83, '', 'ieKXXvsp7xjjXP7xW0FnSmSgBhVKm5.jpeg', NULL, 1, 1, '2021-03-02 10:11:05', '2021-03-02 10:11:05'),
(84, 84, '', 'VUcMOBpJgDwIVEX75Jtg8ROVLU060J.jpeg', NULL, 1, 1, '2021-03-02 10:11:22', '2021-03-02 10:11:22'),
(85, 85, '', 'IkRQ97fKcUT03fDYSzNhXAtc5ZgHZ7.jpeg', NULL, 1, 1, '2021-03-02 10:11:36', '2021-03-02 10:11:36'),
(86, 86, '', 'eViI4cLwsY0xSdVM69I8lNVveTbwKE.jpeg', NULL, 1, 1, '2021-03-02 10:11:57', '2021-03-02 10:11:57'),
(87, 87, '', 'w69n2pVkTDljjaZb31oYn8ySOfRYUl.jpeg', NULL, 1, 1, '2021-03-02 10:12:16', '2021-03-02 10:12:16'),
(88, 88, '', 'pVwxmj7YlgTxI7d6jObReDeOSbTPxt.jpeg', NULL, 1, 1, '2021-03-02 10:12:29', '2021-03-02 10:12:29'),
(89, 89, '', 'EtBsydg6dknlnI5UJs7M9mrowy0TO0.jpeg', NULL, 1, 1, '2021-03-02 10:12:43', '2021-03-02 10:12:43'),
(90, 90, '', 'EipJL2ZpI5xlne3AVvScpSZweEuPaV.jpeg', NULL, 1, 1, '2021-03-02 10:13:01', '2021-03-02 10:13:01'),
(91, 91, '', '0MhzISG4XW0C7lDolUouGgFZBo1suH.jpeg', NULL, 1, 1, '2021-03-02 10:13:18', '2021-03-02 10:13:18'),
(92, 92, '', 'kQYaQBRqa2Jw3LSupTIpC5MKyvcNXi.jpeg', NULL, 1, 1, '2021-03-02 10:13:34', '2021-03-02 10:13:34'),
(93, 93, '', 'vVZQbz0YTZ8wDh0w5HWzXrYpaLUkOh.jpeg', NULL, 1, 1, '2021-03-02 10:13:49', '2021-03-02 10:13:49'),
(94, 94, '', 'tnuVS7y7gpQ8u0HIgTKpAfAqSJmLkI.jpeg', NULL, 1, 1, '2021-03-02 10:14:06', '2021-03-02 10:14:06'),
(95, 95, '', 'dRbnTdy0uYh6kLhqCJOg6GWzq64zFg.jpeg', NULL, 1, 1, '2021-03-02 10:14:20', '2021-03-02 10:14:20'),
(96, 96, '', '7zbC2oxYcB5GrwsbkIjj5SN6fjrfsP.jpeg', NULL, 1, 1, '2021-03-02 10:14:34', '2021-03-02 10:14:34'),
(97, 97, '', 'JPPcvRJPDNlHlSyOso9Sw4pqLMqE1W.jpeg', NULL, 1, 1, '2021-03-02 10:14:50', '2021-03-02 10:14:50'),
(98, 98, '', 'ZFHvZ0lGAqh5kdqEaG4hEUXi2xW7w3.jpeg', NULL, 1, 1, '2021-03-02 10:15:07', '2021-03-02 10:15:07'),
(99, 99, '', 'RgTPChiKkjJN0NG5rYu1k6jYeNParV.jpeg', NULL, 1, 1, '2021-03-02 10:15:30', '2021-03-02 10:15:30'),
(100, 100, '', 'zHwVfkqv6sf4Qtb0OHv3M6JEv3lhZg.jpeg', NULL, 1, 1, '2021-03-02 10:15:51', '2021-03-02 10:15:51'),
(101, 101, '', '5GjGg9A9pIA2G0kktlhZvoQHiRJRgS.jpeg', NULL, 1, 1, '2021-03-02 10:16:06', '2021-03-02 10:16:06'),
(102, 102, '', 'ehW0d8EDzzhY1QTsilwzb5e3JXpizY.jpeg', NULL, 1, 1, '2021-03-02 10:16:18', '2021-03-02 10:16:18'),
(103, 103, '', 'WvzxGklZVtaCz0SfkVCLXltxrbdXOX.jpeg', NULL, 1, 1, '2021-03-02 10:16:32', '2021-03-02 10:16:32'),
(104, 104, '', 'QiBY3CDb2mZt4n1mMZdYiuQm3Ghrha.jpeg', NULL, 1, 1, '2021-03-02 10:16:56', '2021-03-02 10:16:56'),
(105, 105, '', 'bTbLBCv2cZ4yA7FA0FAEITVlLplNgX.jpeg', NULL, 1, 1, '2021-03-02 10:17:15', '2021-03-02 10:17:15'),
(106, 106, '', 'IJdA2UzLFuVz3jYSrN4Zyv1MUcbo4f.jpeg', NULL, 1, 1, '2021-03-02 10:17:48', '2021-03-02 10:17:48'),
(107, 107, '', 'kWLnRbfBesvnaF2GCGhXJN13WQF3mK.jpeg', NULL, 1, 1, '2021-03-02 10:18:09', '2021-03-02 10:18:09'),
(108, 108, '', 'BglN66oshacoqkrEXOnJoRSCE3cjBA.jpeg', NULL, 1, 1, '2021-03-02 10:18:26', '2021-03-02 10:18:26'),
(109, 109, '', 'R3exWJV3ebZMM0V6lDz4E4wFZ3A0hs.jpeg', NULL, 1, 1, '2021-03-02 10:18:48', '2021-03-02 10:18:48'),
(110, 110, '', '81Ah2htJ5NSwlrhWJZ18JXHvZRsul8.jpeg', NULL, 1, 1, '2021-03-02 10:19:06', '2021-03-02 10:19:06'),
(111, 111, '', 'aVmmecRdAViJCU8HVKSUzYdfJ3WGOY.jpeg', NULL, 1, 1, '2021-03-02 10:19:22', '2021-03-02 10:19:22'),
(112, 112, '', '4WVltXxJeTviynmPKWwwEwnJAfLC5B.jpeg', NULL, 1, 1, '2021-03-02 10:19:38', '2021-03-02 10:19:38'),
(113, 113, '', 'Ho4mIIm2AHFBesetCFu1t6qhwHUjqw.jpeg', NULL, 1, 1, '2021-03-02 10:19:55', '2021-03-02 10:19:55'),
(114, 114, '', 'RTKW6AdvDvwOVlifKWZtIfuskhofsv.jpeg', NULL, 1, 1, '2021-03-02 10:20:09', '2021-03-02 10:20:09'),
(115, 115, '', 'HK1CSnJt1yLtmKWIUDVhLugNjwx4xk.jpeg', NULL, 1, 1, '2021-03-02 10:20:25', '2021-03-02 10:20:25'),
(116, 116, '', 'V0RlDtjqTBTv1U6AZDSZccPCtXu4r5.jpeg', NULL, 1, 1, '2021-03-02 10:20:45', '2021-03-02 10:20:45'),
(117, 117, '', '0AiVnJO2BzQ6IYMS0HHssUI789kvzq.jpeg', NULL, 1, 1, '2021-03-02 10:21:03', '2021-03-02 10:21:03'),
(118, 118, '', 'y5t6NIXylFnWVZIBBF7uKS09KhqfrR.jpeg', NULL, 1, 1, '2021-03-02 10:21:29', '2021-03-02 10:21:29'),
(119, 119, '', 'EuUA2oBS7WEq4EMa0lGmWZaOGlJNmQ.jpeg', NULL, 1, 1, '2021-03-02 10:21:50', '2021-03-02 10:21:50'),
(120, 120, '', 'IoYwwvgeW5bUp71F4KXPwfXVxqubur.jpeg', NULL, 1, 1, '2021-03-02 10:22:15', '2021-03-02 10:22:15'),
(121, 121, '', 'bXF4tqLhSLbl1P9qqvnP2sAkkhMe1h.jpeg', NULL, 1, 1, '2021-03-02 10:22:36', '2021-03-02 10:22:36'),
(122, 122, '', 'F3y9b746gMaU8SzNeeB2wgKBjRanBS.jpeg', NULL, 1, 1, '2021-03-02 10:22:50', '2021-03-02 10:22:50'),
(123, 123, '', 'bfxU3IuBC44AA66yJA1uhKBjAqNtkQ.jpeg', NULL, 1, 1, '2021-03-02 10:23:17', '2021-03-02 10:23:17'),
(124, 124, '', 'cflyWAM7GVyzDFbJOKKA8G1O8OaQjW.jpeg', NULL, 1, 1, '2021-03-02 10:23:35', '2021-03-02 10:23:35'),
(125, 125, '', '7GOWHPXAIQJ7uNTFpOE5t6BiFuXvCj.jpeg', NULL, 1, 1, '2021-03-02 10:23:54', '2021-03-02 10:23:54'),
(126, 126, '', 'mgHYPAliu5MtNhblGjGUweh0wP7P3f.jpeg', NULL, 1, 1, '2021-03-02 10:24:14', '2021-03-02 10:24:14'),
(127, 127, '', 'uq8Lp7Z9PBYI5J60cTpLdutvVT7dQK.jpeg', NULL, 1, 1, '2021-03-02 10:24:38', '2021-03-02 10:24:38'),
(128, 128, '', 'rpbPsZ5lJYNDqj2fGYOcCsnOqb3wrF.jpeg', NULL, 1, 1, '2021-03-02 10:25:00', '2021-03-02 10:25:00'),
(129, 129, '', 'JJCUEfru7cjZlXvDxNrmSybMpK92p8.jpeg', NULL, 1, 1, '2021-03-02 10:25:20', '2021-03-02 10:25:20'),
(130, 130, '', 'yldiq9CjBC6SIU6NgWwSdUt6zQFQRy.jpeg', NULL, 1, 1, '2021-03-02 10:25:39', '2021-03-02 10:25:39'),
(131, 131, '', 'y3Wl17qVXK9qUGOqxqNYhQdIubpT2v.jpeg', NULL, 1, 1, '2021-03-02 10:25:57', '2021-03-02 10:25:57'),
(133, 133, '', 'ALeQ0xownceuEcnCRTZ2SbLbRXf9hC.jpeg', NULL, 1, 1, '2021-03-02 10:27:30', '2021-03-02 10:27:30'),
(134, 134, '', 'wNDqnUEz4MKpZdI4pIIwRAR3ZRvaRU.jpeg', NULL, 1, 1, '2021-03-02 10:27:49', '2021-03-02 10:27:49'),
(135, 135, '', '2hry9MtuULmF5c8uKF84QL2yOlyZc8.jpeg', NULL, 1, 1, '2021-03-02 10:28:01', '2021-03-02 10:28:01'),
(136, 136, '', 'i7ZBflALMAsHXeIidXcP8SG9WuBrn4.jpeg', NULL, 1, 1, '2021-03-02 10:28:19', '2021-03-02 10:28:19'),
(137, 137, '', 'II3E6v7XZP0OEA6ZS49k74NXp9p0Oe.jpeg', NULL, 1, 1, '2021-03-02 10:28:34', '2021-03-02 10:28:34'),
(138, 138, '', 'Ej4SZMznw6gyLFdqIswXKBJP6dURVm.jpeg', NULL, 1, 1, '2021-03-02 10:28:51', '2021-03-02 10:28:51'),
(139, 139, '', 'zETJVKzuGvdhgw5JZKK6Ebxl8LhG5J.jpeg', NULL, 1, 1, '2021-03-02 10:29:10', '2021-03-02 10:29:10'),
(140, 140, '', 'ahGwdRNb4G0TJMm5KEJuZGPzf7xx5n.jpeg', NULL, 1, 1, '2021-03-02 10:29:24', '2021-03-02 10:29:24'),
(141, 141, '', 'GWu5BE54XK13Tryr7zHb3LNPgEO97n.jpeg', NULL, 1, 1, '2021-03-02 10:29:38', '2021-03-02 10:29:38'),
(142, 142, '', 'qvVytlELp6MyrGpCaaPpsWeVswuTGR.jpeg', NULL, 1, 1, '2021-03-02 10:29:52', '2021-03-02 10:29:52'),
(143, 143, NULL, '5B20wwWurZMb0qgqvv9ogRyUUrqLdS.png', '0', 1, 1, '2021-03-02 10:30:08', '2023-07-28 10:20:31'),
(144, 144, NULL, '2gt8cmSfGzCoW7rPvpRJXaMPvkOyGE.png', '0', 1, 1, '2021-03-02 10:30:23', '2023-07-28 10:20:26');

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

--
-- Dumping data for table `holidays`
--

INSERT INTO `holidays` (`id`, `master_id`, `name`, `slug`, `the_date`, `description`, `block_delivery`, `cut_off`, `status`, `created_at`, `updated_at`) VALUES
(3, '10', 'Valentines Day', 'valentines-day', '2023-02-14', NULL, '0', '00:00', 1, '2023-07-17 17:18:08', '2023-07-17 17:31:44'),
(4, '11', 'Family Day', 'family-day', '2023-02-20', NULL, '1', '00:00', 1, '2023-07-17 17:33:09', '2023-07-17 17:34:32'),
(5, '12', 'Good Friday', 'good-friday', '2023-04-07', NULL, '1', '00:00', 1, '2023-07-17 17:34:15', '2023-07-17 17:34:15'),
(6, '13', 'Easter Monday', 'easter-monday', '2023-04-10', NULL, '0', '00:00', 1, '2023-07-17 17:35:07', '2023-07-17 17:35:07'),
(7, '14', 'Mother\'s Day', 'mothers-day', '2023-05-14', NULL, '0', '00:00', 1, '2023-07-17 17:35:35', '2023-07-17 17:35:56'),
(8, '15', 'Victoria Day', 'victoria-day', '2023-05-22', NULL, '1', NULL, 1, '2023-07-17 17:47:29', '2023-07-17 17:47:29'),
(9, '16', 'St. Patrick\'s Day', 'st-patricks-day', '2023-03-17', NULL, '0', '00:00', 1, '2023-07-17 17:48:34', '2023-07-17 17:53:52'),
(10, '17', 'Easter Sunday', 'easter-sunday', '2023-04-09', NULL, '0', NULL, 1, '2023-07-17 17:54:27', '2023-07-17 17:54:27'),
(11, '18', 'Canada Day', 'canada-day', '2023-07-01', NULL, '1', NULL, 1, '2023-07-17 17:55:48', '2023-07-17 17:55:48'),
(12, '19', 'Civic Holiday', 'civic-holiday', '2023-08-07', NULL, '0', NULL, 1, '2023-07-17 17:56:25', '2023-07-17 17:56:25'),
(13, '20', 'Labour Day', 'labour-day', '2023-09-04', NULL, '1', '00:00', 1, '2023-07-17 17:57:04', '2023-07-17 17:57:45'),
(14, '21', 'Orange Day', 'orange-day', '2023-09-30', NULL, '0', NULL, 1, '2023-07-17 18:00:01', '2023-07-17 18:00:01'),
(15, '22', 'Thanksgiving Sun', 'thanksgiving-sun', '2023-10-08', NULL, '0', NULL, 1, '2023-07-17 18:00:51', '2023-07-17 18:00:51'),
(16, '23', 'Thanksgiving Mon', 'thanksgiving-mon', '2023-10-09', NULL, '1', NULL, 1, '2023-07-17 18:03:54', '2023-07-17 18:03:54'),
(17, '24', 'Halloween', 'halloween', '2023-10-31', NULL, '0', NULL, 1, '2023-07-17 18:04:37', '2023-07-17 18:04:37'),
(18, '25', 'Remembrance Day', 'remembrance-day', '2023-11-11', NULL, '0', NULL, 1, '2023-07-17 18:05:12', '2023-07-17 18:05:12'),
(19, '26', 'Christmas Eve', 'christmas-eve', '2023-12-24', NULL, '0', NULL, 1, '2023-07-17 18:05:41', '2023-07-17 18:05:41'),
(20, '27', 'Christmas Day', 'christmas-day', '2023-12-25', NULL, '1', '00:00', 1, '2023-07-17 18:06:17', '2023-07-17 18:06:27'),
(21, '28', 'Boxing Day', 'boxing-day', '2023-12-26', NULL, '1', '00:00', 1, '2023-07-17 18:07:02', '2023-07-17 18:07:17'),
(22, '29', 'New Years Eve', 'new-years-eve', '2023-12-31', NULL, '1', NULL, 1, '2023-07-17 18:08:01', '2023-07-17 18:08:01'),
(23, '30', 'New Years Day', 'new-years-day', '2024-01-01', NULL, '1', '00:00', 1, '2023-07-17 18:08:39', '2023-07-17 18:08:57');

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

--
-- Dumping data for table `holiday_timings`
--

INSERT INTO `holiday_timings` (`id`, `holiday_id`, `store_id`, `open`, `close`, `online_pickup_open`, `online_pickup_close`, `status`, `created_at`, `updated_at`) VALUES
(2, 1, 2, '08:15:00', '16:30:00', NULL, NULL, 1, '2023-06-14 12:41:59', '2023-06-14 12:41:59'),
(3, 1, 1, '06:30:00', '09:30:00', NULL, NULL, 1, '2023-06-14 12:41:59', '2023-06-14 12:41:59'),
(155, 3, 4, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(154, 3, 5, '10:00:00', '19:00:00', '10:00:00', '19:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(153, 3, 8, '08:00:00', '17:00:00', '08:00:00', '17:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(152, 3, 1, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(151, 3, 6, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(150, 3, 2, '11:00:00', '18:00:00', '11:00:00', '18:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(149, 3, 3, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(148, 3, 9, '08:00:00', '17:00:00', '08:00:00', '17:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(147, 3, 7, '10:00:00', '19:00:00', '10:00:00', '19:00:00', 1, '2023-08-03 09:58:37', '2023-08-03 09:58:37'),
(137, 4, 4, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(136, 4, 5, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(135, 4, 1, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(134, 4, 6, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(133, 4, 3, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(132, 4, 7, '11:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 12:17:47', '2023-08-03 12:17:47'),
(212, 9, 4, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(211, 9, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(210, 9, 8, '08:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(209, 9, 1, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(208, 9, 6, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(207, 9, 2, '11:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(206, 9, 3, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(205, 9, 9, '08:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(204, 9, 7, '10:00:00', '19:30:00', NULL, NULL, 1, '2023-08-03 11:24:47', '2023-08-03 11:24:47'),
(169, 6, 4, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(168, 6, 5, '10:00:00', '19:00:00', '10:00:00', '19:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(167, 6, 8, '08:00:00', '17:00:00', '08:00:00', '17:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(166, 6, 1, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(165, 6, 6, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(164, 6, 2, '11:00:00', '18:00:00', '11:00:00', '18:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(163, 6, 3, '10:00:00', '18:00:00', '10:00:00', '18:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(219, 7, 4, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(218, 7, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(217, 7, 1, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(216, 7, 6, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(215, 7, 2, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(214, 7, 3, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(213, 7, 7, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:27:01', '2023-08-03 11:27:01'),
(222, 8, 5, '11:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:27:59', '2023-08-03 11:27:59'),
(221, 8, 3, '11:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:27:59', '2023-08-03 11:27:59'),
(220, 8, 7, '11:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:27:59', '2023-08-03 11:27:59'),
(229, 11, 4, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(228, 11, 5, '12:00:00', '20:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(227, 11, 1, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(226, 11, 6, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(225, 11, 2, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(224, 11, 3, '12:00:00', '20:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(223, 11, 7, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:29:12', '2023-08-03 11:29:12'),
(238, 12, 4, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(237, 12, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(236, 12, 8, '08:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(235, 12, 1, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(234, 12, 6, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(233, 12, 2, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(232, 12, 3, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(231, 12, 9, '08:00:00', '17:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(230, 12, 7, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:30:39', '2023-08-03 11:30:39'),
(245, 14, 4, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(244, 14, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(243, 14, 1, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(242, 14, 6, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(241, 14, 2, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(240, 14, 3, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(239, 14, 7, '10:00:00', '19:30:00', NULL, NULL, 1, '2023-08-03 11:31:37', '2023-08-03 11:31:37'),
(185, 15, 4, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(184, 15, 5, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(183, 15, 1, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(182, 15, 6, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(181, 15, 2, '11:00:00', '17:00:00', '11:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(180, 15, 3, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(179, 15, 7, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:05:17', '2023-08-03 11:05:17'),
(254, 17, 4, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(253, 17, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(252, 17, 8, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(251, 17, 1, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(250, 17, 6, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(249, 17, 2, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(248, 17, 3, '10:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(247, 17, 9, '11:00:00', '18:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(246, 17, 7, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:32:54', '2023-08-03 11:32:54'),
(261, 18, 5, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(260, 18, 4, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(259, 18, 1, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(258, 18, 6, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(257, 18, 2, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(256, 18, 3, '10:00:00', '19:00:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(255, 18, 7, '10:00:00', '19:30:00', NULL, NULL, 1, '2023-08-03 11:34:35', '2023-08-03 11:34:35'),
(196, 21, 5, '12:00:00', '21:00:00', '12:00:00', '21:00:00', 1, '2023-08-03 11:18:05', '2023-08-03 11:18:05'),
(195, 21, 3, '12:00:00', '17:00:00', '12:00:00', '17:00:00', 1, '2023-08-03 11:18:05', '2023-08-03 11:18:05'),
(203, 22, 4, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(202, 22, 5, '10:00:00', '23:59:00', '10:00:00', '23:59:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(201, 22, 1, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(200, 22, 6, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(199, 22, 2, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(198, 22, 3, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(197, 22, 7, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:20:48', '2023-08-03 11:20:48'),
(156, 10, 4, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(157, 10, 5, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(158, 10, 1, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(159, 10, 6, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(160, 10, 2, '11:00:00', '17:00:00', '11:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(161, 10, 3, '10:00:00', '17:00:00', NULL, '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(162, 10, 7, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 10:20:04', '2023-08-03 10:20:04'),
(170, 6, 9, '08:00:00', '17:00:00', '08:00:00', '17:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(171, 6, 7, '10:00:00', '19:00:00', '10:00:00', '19:00:00', 1, '2023-08-03 11:00:12', '2023-08-03 11:00:12'),
(186, 19, 4, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(187, 19, 5, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(188, 19, 1, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(189, 19, 6, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(190, 19, 2, '10:00:00', '17:00:00', '11:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(191, 19, 3, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13'),
(192, 19, 7, '10:00:00', '17:00:00', '10:00:00', '17:00:00', 1, '2023-08-03 11:13:13', '2023-08-03 11:13:13');

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

--
-- Dumping data for table `homepage_products`
--

INSERT INTO `homepage_products` (`id`, `master_id`, `title`, `short_desc`, `created_at`, `updated_at`) VALUES
(34, 38, 'SWEETIE PIE\'S MONTHLY DELIGHTS', 'Our Top Recommendations', '2023-07-21', '2023-07-21');

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

--
-- Dumping data for table `homepage_product_lists`
--

INSERT INTO `homepage_product_lists` (`id`, `homepage_id`, `product_id`, `created_at`, `updated_at`) VALUES
(26, 34, 164, '2023-07-21', '2023-07-21'),
(25, 34, 161, '2023-07-21', '2023-07-21'),
(24, 34, 134, '2023-07-21', '2023-07-21'),
(27, 34, 168, '2023-07-21', '2023-07-21');

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
  `price_amount` decimal(8,2) NOT NULL DEFAULT 0.00,
  `picture` varchar(100) DEFAULT NULL,
  `tax_percentage` varchar(11) NOT NULL DEFAULT '0',
  `parent` int(11) DEFAULT NULL,
  `note` text DEFAULT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `basket_id`, `product_id`, `product_variation_id`, `shipping_id`, `product_sku`, `product_name`, `variation`, `quantity`, `price_amount`, `picture`, `tax_percentage`, `parent`, `note`, `created_at`, `updated_at`) VALUES
(1, 1, 149, 1257, 0, 'APLSP9', 'Apple Pie', 'size:9 Inch,type:Baked', 1, 26.99, 'YaMzJhF2T5LicPouVjmYoKszsDciMB.png', '0', NULL, NULL, '2023-08-16 05:11:21', '2023-08-16 05:11:21'),
(2, 2, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 3, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:15:49', '2023-08-16 05:15:49'),
(3, 3, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 5, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:20:22', '2023-08-16 05:20:22'),
(4, 4, 112, 1198, 0, 'SPKQC5', 'Spanakopita', 'size:5 Inch', 4, 9.99, 'NCYmmYGQI3JOtFK4UkUciqE4jzAOss.png', '0', NULL, NULL, '2023-08-16 05:23:28', '2023-08-16 05:23:28'),
(5, 4, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 3, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:26:39', '2023-08-16 05:26:39'),
(6, 5, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 5, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:31:21', '2023-08-16 05:31:21'),
(7, 6, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 4, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:32:15', '2023-08-16 05:32:15'),
(8, 7, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 1, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:34:16', '2023-08-16 05:34:16'),
(9, 8, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 4, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 05:38:34', '2023-08-16 05:38:34'),
(11, 9, 154, 1239, 0, 'CBPSP9', 'Chocolate Bourbon Pecan Pie', 'size:9 INCH,type:Baked', 6, 28.99, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', '0', NULL, NULL, '2023-08-16 07:12:48', '2023-08-16 07:12:58'),
(12, 10, 152, 1266, 0, 'SBRSP9', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Baked', 1, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 07:21:17', '2023-08-16 07:21:17'),
(13, 11, 156, 1290, 0, 'PMKSP5', 'Pumpkin Pie', 'size:5 Inch', 100, 9.99, 'd9KBzcdBgggxqrfb8MotnmAO1nzvhP.png', '0', NULL, NULL, '2023-08-16 07:24:04', '2023-08-16 07:28:12'),
(14, 11, 59, 451, 0, 'Greeting-card-001', 'Greeting Card', NULL, 1, 25.00, 'eReUWIuAQFsQuQi4OCkZSHkfKXMlN1.png', '0', NULL, NULL, '2023-08-16 07:29:08', '2023-08-16 07:29:08'),
(15, 12, 151, 1270, 0, 'BBRSP9', 'Blueberry Pie', 'size:9 Inch,type:Baked', 1, 26.99, 'Ofny6pRnfK8ej54GbAYePnerMnJfai.png', '0', NULL, NULL, '2023-08-16 07:33:25', '2023-08-16 07:33:25'),
(16, 12, 54, 449, 0, 'Addon12', 'CADBURY ROYAL DARK Black Forest Cake XL Candy Bar', NULL, 1, 7.00, 'vBaK5s3Zk48x6vZQ0W9AZJBq9jv7yU.png', '0', 15, NULL, '2023-08-16 07:34:01', '2023-08-16 07:34:01'),
(17, 12, 59, 451, 0, 'Greeting-card-001', 'Greeting Card', NULL, 1, 25.00, 'eReUWIuAQFsQuQi4OCkZSHkfKXMlN1.png', '0', NULL, NULL, '2023-08-16 07:35:30', '2023-08-16 07:35:30'),
(18, 13, 151, 1270, 0, 'BBRSP9', 'Blueberry Pie', 'size:9 Inch,type:Baked', 1, 26.99, 'Ofny6pRnfK8ej54GbAYePnerMnJfai.png', '0', NULL, NULL, '2023-08-16 07:49:51', '2023-08-16 07:49:51'),
(19, 14, 153, 1302, 0, 'PCNSP9F', 'Pecan Pie', 'size:9 INCH,type:Frozen', 1, 28.99, 'jIxH4HR7yCcrRJXaQRsmuSNB3BK4IN.png', '0', NULL, NULL, '2023-08-16 08:03:08', '2023-08-16 08:03:08'),
(20, 15, 63, 446, 0, 'GIFTCARD100', 'GIFT CARD $100', NULL, 1, 100.00, 'VXThJkC1qpF7Ql3ntnLLq7e4ZPHMRa.png', '0', NULL, NULL, '2023-08-16 08:10:45', '2023-08-16 08:10:45'),
(21, 16, 149, 1257, 0, 'APLSP9', 'Apple Pie', 'size:9 Inch,type:Baked', 4, 26.99, 'MD94LxIkE6DZvrHYouyNneHwGtU7Rq.png', '0', NULL, NULL, '2023-08-16 08:23:09', '2023-08-16 08:23:09'),
(22, 17, 30, 1285, 0, 'MPPSV', 'Mushroom Pot Pie', NULL, 1, 9.99, 'mbHyxTPoHcAKnBaaa4ikHNMyItGq9e.png', '0', NULL, NULL, '2023-08-16 09:05:39', '2023-08-16 09:05:39'),
(23, 18, 152, 1267, 0, 'SBRSP9F', 'Strawberry Rhubarb Pie', 'size:9 Inch,type:Frozen', 1, 26.99, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', '0', NULL, NULL, '2023-08-16 09:07:16', '2023-08-16 09:07:16'),
(28, 21, 165, 1383, 0, 'TESTPDCT', 'TEST PRODUCT', NULL, 1, 1.00, '3XRc52KysGr52CcWO6ARtT4Bx5KpE5.png', '0', NULL, NULL, '2023-08-17 05:27:26', '2023-08-17 05:27:26'),
(25, 20, 154, 1239, 0, 'CBPSP9', 'Chocolate Bourbon Pecan Pie', 'size:9 INCH,type:Baked', 1, 28.99, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', '0', NULL, NULL, '2023-08-16 12:12:22', '2023-08-16 12:12:22'),
(26, 20, 62, 443, 0, 'GIFTCARD50', 'GIFT CARD $50', NULL, 1, 50.00, 'BrJjM7WTdvhlP8IZfHOErk2XTlqQ9k.png', '0', NULL, NULL, '2023-08-16 12:13:12', '2023-08-16 12:13:12'),
(27, 19, 165, 1383, 0, 'TESTPDCT', 'TEST PRODUCT', NULL, 1, 1.00, '3XRc52KysGr52CcWO6ARtT4Bx5KpE5.png', '0', NULL, NULL, '2023-08-17 05:25:40', '2023-08-17 05:25:40');

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

--
-- Dumping data for table `landing_pages`
--

INSERT INTO `landing_pages` (`id`, `master_id`, `page_url`, `page_name`, `category_id`, `seo_title`, `seo_description`, `seo_keywords`, `banner1_title`, `banner1_description`, `banner1_image`, `section1_title`, `section1_description`, `section1_button_text`, `section1_button_link`, `section1_image`, `banner2_title`, `banner2_description`, `banner2_button_text`, `banner2_button_link`, `banner2_image`, `section2_title`, `section2_description`, `section2_button_text`, `section2_button_link`, `section2_image`, `gallery1`, `gallery2`, `gallery3`, `published`, `created_at`, `updated_at`) VALUES
(1, '16', 'weddings', 'Weddings', NULL, NULL, NULL, NULL, 'Weddings', 'Crazy Good Cake for the new normal with a customized label for your big day!', 'VnuOKx2hg9oERP9cEwroAMwfbSPBKW.png', 'Fully Customizable Labels with the flavor of your choice', 'Give your guests a treat that they will remember for a long time, cakes in jars with your wedding theme on it. Crazy Good Cake comes with a fully customizable label based on your color scheme and messaging.', 'CHECKOUT OUR CRAZY GOOD CAKE', '#', 'zjPKtEZb1SWnw95EA1mrGiNLT67Mt9.png', 'Get Crazy Good Cake for your Wedding', NULL, 'CONTACT US NOW', 'contact', 'pPLUz2QaiVze6gf1cakAylMzAbahyr.png', 'Make your Special Day, in the new normal, come to life with delicious & irresistible sweets for your guests.', 'Our Crazy Good Cake Jars are made with only the finest local ingredients, baked daily in our kitchen made with love. These sweet treats are layer by hand with yummy choices of moist cake and our famous buttercream icing. These treats are perfect for any special occasion. Every one of our Crazy Good Cake Jars can be customized with your message and branding.', 'SEE THE FLAVORS', '#', 'l9Vuo6VpKueOydCiTb1OKYIyGlG5av.png', 'znRn5g66TgsJwZMTGG2C2NNOvFhB6H.png', 'nFmmvsLStEYJmxrwCOVxYh0hsETjQQ.png', 'RsH6ANiReQDqYAa83SMKdVYuQaHoWJ.png', 1, '2023-05-11 16:19:00', '2023-05-11 16:19:00'),
(2, '14', 'blueberry-pies', 'Blueberry Pies', NULL, 'Blueberry Pies', 'Fresh Blueberry Pies are available for delivery across Toronto, Mississauga, Brampton, Woodbridge, Scarborough, Newmarket, Oakville, Aurora, Etobicoke, Richmond Hill, GTA & other major cities of Ontario, Canada.', 'Blueberry Pies,tasty,sweetipie', 'Blueberry Pies', 'At Sweetie Pie we don\'t just make a pie, we craft all our pies. From selecting the right ingredients to ensuring the proper care goes into each pie.', '557O5BLw1A0jughtKw3owhsQWcItum.png', 'Blueberry Is Love!', 'Nothing is better than a warm Blueberry Pie. Order this handcrafted, locally sourced taste of heaven. All of our pies are made with love, by our in-house pastry chefs.', 'subcategory/blueberry-pies', 'order now', 'eG5UGXYApUbp6IdrllDVpSVXEQ6wkI.png', 'Want to order Blueberry Pies in bulk? We are excited to make your day sweeter with our sweetie pies.', NULL, 'Contact us', 'contact', 'ZT43Wbo3XvKWQDuijcG5756w4kA6Y4.png', 'Loved our Pies?', 'Fresh Blueberry Pies are available for delivery across Toronto, Mississauga, Brampton, Woodbridge, Scarborough, Newmarket, Oakville, Aurora, Etobicoke, Richmond Hill, GTA & other major cities of Ontario, Canada.', 'order now', 'subcategory/apple-pie', 'N8wYqVGxDF0LjytaUNrfBj5Ue0MOyC.png', 'zjtuV7ahEWlUKxsTkAfq7xUKGKYsEk.png', 'MaoyLSC1GUjSquiDiVL1u9O7cSracw.png', 'GgCWLzXddrHhlirPfqqdgpIJfcHvSz.png', 1, '2023-05-11 16:19:03', '2023-05-11 16:19:03'),
(3, '13', 'apple-pies', 'Apple Pies', NULL, 'Apple pie', 'Fresh Apple Pies are available for delivery across Toronto, Mississauga, Brampton, Woodbridge, Scarborough, Newmarket, Oakville, Aurora, Etobicoke, Richmond Hill, GTA & other major cities of Ontario, Canada.', 'sweety,apple pies,tasty', 'APPLE PIES', 'At Sweetie Pie we don\'t just make a pie, we craft all our pies. From selecting the right ingredients to ensuring the proper care goes into each pie.', '0o6Ehf60Gx1ZkEWNYWOxVwiVZOvdAW.png', 'Apple Pie', 'Our blend of tart and sweet, crunchy apples perfectly tossed in brown sugar with a bit of cinnamon, nutmeg and real vanilla will make you taste heaven in every bite.', 'ORDER NOW', 'category/sweetiepies', 'lteqSsuMKPDjtDDMmIlVmo4NmWmydN.png', 'Want to order Apple Pies in bulk? We are excited to make your day sweeter with our sweetie pies.', NULL, 'Contact us', 'contact', 'gRrsHORIijDfG55ikrRAy40sYPVpNl.png', 'LOVED OUR PIES?', 'Fresh Apple Pies are available for delivery across Toronto, Mississauga, Brampton, Woodbridge, Scarborough, Newmarket, Oakville, Aurora, Etobicoke, Richmond Hill, GTA & other major cities of Ontario, Canada.', 'ORDER NOW', 'subcategory/apple-pie', 'cb87UVgti48DxDGuKoaHBLR5uZrjhS.png', 'MuaRdDfvZfEEwdHFLvluBrc085VqGx.png', 'BnaPWrG7RNpHck1AhZLoYiUSsvJAXv.png', 'NThOgnsQyXXchEfLbyFB1pLeiLBz9U.png', 1, '2023-05-11 16:19:04', '2023-05-11 16:19:04'),
(4, '17', 'corporate', 'CORPORATE', NULL, 'Corporate', NULL, NULL, 'CORPORATE', 'Elevate your corporate game with our handcrafted, delicious desserts  tailor-made for your upcoming events.', '859PmFIikj32N4v5qNUZ5zx6KEvwT3.png', 'CORPORATE', 'Enhance your corporate order with Sweetie Pie, your premium dessert partner. Our delectable array of artisanal treats will add a touch of sweetness and sophistication to your business gatherings.\r\n\r\nIndulge in our handcrafted delights, carefully made from the finest locally sourced ingredients, ensuring unparalleled taste and quality. From sumptuous cakes and pastries to delectable cookies and macarons, our Sweetie Pie creations are crafted with precision and passion to exceed your expectations.\r\n\r\nWhether you\'re organizing a client meeting, team-building event, or company celebration, our sweet treats will delight your guests and leave a lasting impression. Elevate your corporate experience with the flavors of joy and delight, making every occasion extra special.', 'ORDER NOW', 'menu', 'G78IMxLifkYoE2fDhHNL2WK72O1t7Y.png', 'CORPORATE', NULL, 'ORDER NOW', 'menu', 'oWezJe3ehUB4IQxo10XdvPbFE1gi8C.png', 'GET CRAZY WITH OUR CAKE JARS TODAY WITH', 'Contact us now to sweeten your upcoming events!', 'CONTACT US', 'contact', 'qFTpQzUmpEER3mlU6peFEwYU9XfONU.png', 'QtbUkN6foq8dlDqtxPsy42FraYZp8k.png', 'TvqLhbhH9IA6Ig9ntzFdmpkHOH9A8v.png', 'iOw7cgLGiJ3763QooixFR86NVTBadj.png', 1, '2023-07-13 16:50:27', '2023-07-27 16:31:41');

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
(50, 'NS', 'CA', '4', '0.00', '2023-06-27 16:32:10', '2023-06-27 16:32:10'),
(51, 'QC', 'CA', '4', '0.00', '2023-06-27 16:32:10', '2023-06-27 16:32:10'),
(52, 'BC', 'CA', '4', '0.00', '2023-06-27 16:32:10', '2023-06-27 16:32:10'),
(53, 'ON', 'CA', '4', '0.00', '2023-06-27 16:32:10', '2023-06-27 16:32:10'),
(54, 'TO', 'CA', '4', '0.00', '2023-06-27 16:32:10', '2023-06-27 16:32:10'),
(68, 'NU', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(69, 'YT', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(70, 'NT', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(71, 'NL', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(72, 'AB', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(73, 'SK', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(74, 'PE', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(75, 'MB', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(76, 'NB', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(77, 'NS', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(78, 'QC', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(79, 'BC', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52'),
(80, 'ON', 'CA', '5', '0.00', '2023-08-08 09:06:52', '2023-08-08 09:06:52');

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

--
-- Dumping data for table `media`
--

INSERT INTO `media` (`id`, `master_id`, `title`, `image`, `link`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, 'blogTo', '8j8ORbTqjKzRCV93dnIzLYDDLRDxCm.png', 'https://www.blogto.com/toronto/the_best_pies_in_toronto/', 1, 1, '2023-07-14 12:17:49', '2023-07-14 12:51:26'),
(2, 2, 'Streets of Toronto', 'j6c846U2DklSXOtBiZnIzcPKJWB3QF.png', 'https://torontoblogs.ca/best-places-to-get-pies-in-toronto/', 2, 1, '2023-07-14 12:26:24', '2023-07-14 12:51:40'),
(3, 3, 'Toronto Blogs', 'EVTA3Pr7aHK5uEG28Oww2VkHWEqSQL.png', 'https://www.tastetoronto.com/guides/the-best-apple-pie-in-toronto', 3, 1, '2023-07-14 12:31:42', '2023-07-14 12:51:45'),
(4, 4, 'TasteToronto', 'Zzrl2oVHGNffe8kJG9LDiM3IhZNiIT.png', 'https://www.upexpress.com/en/discover-toronto-blog/the-best-pumpkin-pies-in-toronto', 4, 1, '2023-07-14 12:35:24', '2023-07-14 12:51:47'),
(5, 5, 'Union Peason Express', 'bytTu3MAKoENLPEKIboJOMqab4sA60.png', 'https://streetsoftoronto.com/best-of-toronto/the-best-pies-in-toronto/', 5, 1, '2023-07-14 12:38:59', '2023-07-14 12:51:48');

-- --------------------------------------------------------

--
-- Table structure for table `menucategory_products`
--

CREATE TABLE `menucategory_products` (
  `id` int(11) NOT NULL,
  `product_id` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `status` enum('1','0') NOT NULL DEFAULT '1',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `menucategory_products`
--

INSERT INTO `menucategory_products` (`id`, `product_id`, `category_id`, `status`, `created_at`, `updated_at`) VALUES
(721, 27, 3, '1', '2023-08-16 08:33:45', '2023-08-16 08:33:45'),
(762, 28, 3, '1', '2023-08-17 11:29:23', '2023-08-17 11:29:23'),
(720, 29, 3, '1', '2023-08-16 08:33:35', '2023-08-16 08:33:35'),
(717, 30, 3, '1', '2023-08-16 08:30:30', '2023-08-16 08:30:30'),
(716, 31, 3, '1', '2023-08-16 08:29:39', '2023-08-16 08:29:39'),
(718, 32, 3, '1', '2023-08-16 08:31:40', '2023-08-16 08:31:40'),
(719, 33, 3, '1', '2023-08-16 08:32:32', '2023-08-16 08:32:32'),
(763, 85, 6, '1', '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(761, 86, 6, '1', '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(765, 87, 6, '1', '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(760, 88, 6, '1', '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(708, 163, 2, '1', '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(706, 162, 2, '1', '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(732, 165, 2, '1', '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(701, 166, 2, '1', '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(749, 147, 4, '1', '2023-08-17 10:54:08', '2023-08-17 10:54:08'),
(759, 89, 6, '1', '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(766, 90, 6, '1', '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(748, 148, 4, '1', '2023-08-17 10:53:16', '2023-08-17 10:53:16'),
(750, 146, 4, '1', '2023-08-17 10:54:53', '2023-08-17 10:54:53'),
(747, 149, 4, '1', '2023-08-17 10:52:32', '2023-08-17 10:52:32'),
(744, 150, 4, '1', '2023-08-17 10:29:13', '2023-08-17 10:29:13'),
(559, 125, 7, '1', '2023-07-21 14:51:39', '2023-07-21 14:51:39'),
(751, 145, 4, '1', '2023-08-17 10:55:54', '2023-08-17 10:55:54'),
(707, 164, 2, '1', '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(735, 167, 2, '1', '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(722, 168, 2, '1', '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(767, 161, 2, '1', '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(758, 39, 5, '1', '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(756, 48, 5, '1', '2023-08-17 11:05:52', '2023-08-17 11:05:52'),
(757, 136, 5, '1', '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(745, 152, 4, '1', '2023-08-17 10:51:25', '2023-08-17 10:51:25'),
(686, 124, 7, '1', '2023-08-14 10:39:17', '2023-08-14 10:39:17'),
(688, 133, 7, '1', '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(733, 134, 7, '1', '2023-08-16 15:14:19', '2023-08-16 15:14:19'),
(746, 153, 4, '1', '2023-08-17 10:51:33', '2023-08-17 10:51:33');

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
(1, '1', 'Main Menu', 'main-menu', NULL, '0', NULL, '1', NULL, 1, '2023-05-09 12:40:52', '2023-05-09 12:40:52'),
(2, '10', 'Home', 'home', '1', '1', '/', '1', NULL, 1, '2023-05-09 12:41:10', '2023-05-09 12:41:10'),
(3, '15', 'Pies', 'pies', '1', '1', NULL, '3', NULL, 1, '2023-05-09 12:41:13', '2023-07-12 15:30:46'),
(4, '5', 'Sweetie Pies', 'sweetie-pies', '15', '2', 'menu/sweetie-pies', '1', NULL, 1, '2023-05-09 12:41:16', '2023-07-24 12:16:39'),
(6, '12', 'Baking Instructions', 'baking-instructions', '24', '1', 'baking-instructions', '1', NULL, 1, '2023-05-09 12:41:22', '2023-07-20 11:54:12'),
(8, '16', 'Footer Menu', 'footer-menu', NULL, '0', NULL, '3', NULL, 1, '2023-05-09 12:41:43', '2023-07-12 15:31:09'),
(9, '18', 'Contact Us', 'contact-us', '26', '2', 'contact', '1', NULL, 1, '2023-05-09 12:41:59', '2023-05-09 14:40:24'),
(10, '19', 'Corporate', 'corporate', '25', '2', 'corporate', '2', NULL, 1, '2023-05-09 12:42:03', '2023-05-09 14:40:43'),
(11, '20', 'Wedding', 'wedding', '26', '2', 'wedding', '3', NULL, 1, '2023-05-09 12:42:06', '2023-05-09 14:40:54'),
(12, '21', 'Shipping Policy', 'shipping-policy', '26', '2', 'shipping-policy', '4', NULL, 1, '2023-05-09 12:42:09', '2023-05-09 14:41:19'),
(13, '17', 'Media', 'media', '25', '2', '/media', '5', NULL, 1, '2023-05-09 12:42:12', '2023-05-09 14:39:44'),
(14, '22', 'Our Policies', 'our-policies', '27', '2', 'policies', '6', NULL, 1, '2023-05-09 12:42:16', '2023-05-09 14:41:33'),
(15, '23', 'Faq', 'faq', '27', '2', 'faq', '7', NULL, 1, '2023-05-09 12:42:19', '2023-05-09 14:41:44'),
(16, '24', 'Sub Menu', 'sub-menu', NULL, '0', NULL, '2', NULL, 1, '2023-05-09 13:09:02', '2023-05-09 13:09:02'),
(22, '30', 'Quiche', 'quiche', '1', '1', 'menu/quiche', '4', NULL, 1, '2023-05-10 11:33:15', '2023-07-12 15:59:45'),
(23, '31', 'Wholesale', 'wholesale', '24', '1', 'wholesale', '3', NULL, 1, '2023-05-11 12:51:51', '2023-07-20 11:54:51'),
(24, '32', 'Nutrition Explorer', 'nutrition-explorer', '24', '1', 'nutrition-explorer', '2', NULL, 1, '2023-05-11 12:52:13', '2023-07-20 11:54:35'),
(25, '33', 'Media', 'media', '24', '1', 'media', '5', NULL, 1, '2023-05-11 12:53:37', '2023-07-20 11:55:15'),
(26, '34', 'Catering', 'catering', '24', '1', 'catering', '4', NULL, 1, '2023-05-11 12:54:12', '2023-07-20 11:55:09'),
(27, '35', 'Company', 'company', '16', '1', NULL, '1', NULL, 1, '2023-06-22 12:57:47', '2023-06-22 12:57:47'),
(28, '36', 'Corporate', 'corporate', '35', '2', 'corporate', '1', NULL, 1, '2023-06-22 12:58:21', '2023-06-22 12:58:21'),
(29, '37', 'Catering', 'catering', '35', '2', 'catering', '3', NULL, 1, '2023-06-22 12:58:47', '2023-07-12 16:58:37'),
(30, '38', 'Tina\'s Pie Dish (Blog)', 'tinas-pie-dish-blog', '35', '2', 'blog', '5', NULL, 1, '2023-06-22 12:59:16', '2023-07-13 11:05:55'),
(31, '39', 'Media', 'media', '35', '2', 'media', '4', NULL, 1, '2023-06-22 13:01:41', '2023-07-12 16:57:52'),
(32, '40', 'Wholesale', 'wholesale', '35', '2', 'wholesale', '2', NULL, 1, '2023-06-22 13:02:16', '2023-07-12 16:57:24'),
(33, '41', 'Support', 'support', '16', '1', NULL, '2', NULL, 1, '2023-06-22 13:03:27', '2023-06-22 13:03:27'),
(34, '42', 'Terms & Conditions', 'terms-conditions', '41', '2', 'terms-and-conditions', '1', NULL, 1, '2023-06-22 13:04:06', '2023-07-12 17:04:25'),
(35, '43', 'Shipping Policy', 'shipping-policy', '41', '2', 'shipping-policy', '3', NULL, 1, '2023-06-22 13:04:34', '2023-07-12 17:06:11'),
(36, '44', 'Contact', 'contact', '41', '2', 'contact', '5', NULL, 1, '2023-06-22 13:05:02', '2023-07-12 17:07:22'),
(37, '45', 'FAQs', 'faqs', '41', '2', 'faqs', '4', NULL, 1, '2023-06-22 13:05:20', '2023-07-12 17:08:31'),
(38, '46', 'Menu', 'menu', '1', '1', 'menu', '2', NULL, 1, '2023-06-28 10:30:06', '2023-06-28 10:30:06'),
(39, '47', 'Cookies', 'cookies', '1', '1', 'menu/cookies', '5', NULL, 1, '2023-07-05 18:27:34', '2023-07-12 15:59:17'),
(40, '48', 'Baked Goods', 'baked-goods', '1', '1', 'menu/baked-goods', '6', NULL, 1, '2023-07-05 18:27:59', '2023-07-12 15:58:57'),
(42, '50', 'Privacy Policy', 'privacy-policy', '41', '2', 'privacy-policy', '2', NULL, 1, '2023-07-10 15:31:42', '2023-07-12 17:07:41'),
(43, '51', 'Savory Pies', 'savory-pies', '15', '2', 'menu/savory-pies', '2', NULL, 1, '2023-07-12 15:37:23', '2023-07-24 12:16:54'),
(44, '52', 'Blog', 'blog', '24', '1', 'blog', '6', NULL, 1, '2023-07-12 16:08:06', '2023-07-20 11:55:21'),
(45, '53', 'Our Locations', 'our-locations', '24', '1', 'stores', '7', NULL, 1, '2023-07-12 16:10:07', '2023-07-20 11:55:42'),
(46, '54', 'Cake Jars', 'cake-jars', '1', '1', 'menu/cake-jars', '7', NULL, 1, '2023-07-24 15:47:50', '2023-07-24 15:48:22'),
(47, '55', 'Gallery', 'gallery', '35', '2', 'gallery', '6', NULL, 1, '2023-07-27 16:33:37', '2023-07-27 16:33:37');

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
(2, 2, 'Sweetie Pies', 'Products', 'sweetie-pies', NULL, NULL, 'pTfwbxGcMlzNYbyeNSxs1WvRyIojtT.png', 'dummy.png', NULL, 1, 0, NULL, 1, '2023-07-24 12:10:04', '2023-07-24 12:10:04', NULL),
(3, 3, 'Savory Pies', 'Products', 'savory-pies', NULL, NULL, 'K3Z9sOJesPg81PFvgOjBqnGTqbNDnl.png', 'dummy.png', NULL, 1, 0, NULL, 2, '2023-07-21 14:51:36', '2023-07-21 14:51:36', NULL),
(4, 4, 'Cookies', 'Products', 'cookies', NULL, NULL, 'JCAr7Cyg192odyg7oeWPZ20ez9s7xK.png', 'dummy.png', NULL, 1, 0, NULL, 3, '2023-07-21 14:51:38', '2023-07-21 14:51:38', NULL),
(5, 5, 'Baked Goods', 'Products', 'baked-goods', NULL, NULL, 'nyvs0gBKMCihc82kgnjh7CkVvhdVwf.png', 'dummy.png', NULL, 1, 0, NULL, 5, '2023-07-21 14:51:41', '2023-07-21 14:51:41', NULL),
(6, 6, 'Cake Jars', 'Products', 'cake-jars', NULL, NULL, 'BZ4JLc1KhTN9DvlLR0cf3nm9y6Bauj.png', 'dummy.png', NULL, 1, 0, NULL, 6, '2023-07-21 14:51:43', '2023-07-21 14:51:43', NULL),
(7, 7, 'Quiche', 'Products', 'quiche', NULL, NULL, 'qpkfmwPiaUE0hOWaVfFceSwgYAcwz2.png', 'dummy.png', NULL, 1, 0, NULL, 4, '2023-07-21 14:51:39', '2023-07-21 14:51:39', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2014_10_12_100000_create_password_resets_table', 1),
(4, '2019_08_19_000000_create_failed_jobs_table', 1),
(5, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(6, '2023_05_08_080201_create_cities_table', 1),
(7, '2023_05_08_080226_create_provinces_table', 1),
(8, '2023_05_08_080244_create_countries_table', 1),
(9, '2023_05_08_080251_create_faqs_table', 1),
(10, '2023_05_08_080257_create_banners_table', 1),
(11, '2023_05_08_080302_create_pages_table', 1),
(12, '2023_05_08_080308_create_blogs_table', 1),
(13, '2023_05_08_080323_create_blog_categories_table', 1),
(14, '2023_05_08_080329_create_blog_category_lists_table', 1),
(15, '2023_05_08_080336_create_galleries_table', 1),
(16, '2023_05_08_080340_create_categories_table', 1),
(17, '2023_05_08_080351_create_products_table', 1),
(18, '2023_05_08_080357_create_product_variations_table', 1),
(19, '2023_05_08_080404_create_product_images_table', 1),
(20, '2023_05_08_080410_create_stores_table', 1),
(21, '2023_05_08_080415_create_store_timings_table', 1),
(22, '2023_05_08_080424_create_menus_table', 1),
(23, '2023_05_08_080435_create_landing_pages_table', 1),
(24, '2023_05_08_080501_create_holidays_table', 1),
(25, '2023_05_08_080507_create_shippings_table', 1),
(26, '2023_05_08_110114_create_category_products_table', 1),
(27, '2023_05_09_065753_create_product_shippings_table', 2),
(28, '2023_05_09_065809_create_location_shippings_table', 2),
(29, '2023_05_09_065816_create_country_shippings_table', 2);

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
(1, 1, 'Biju', 'Yohannan', 'test', 't0a0a0', 'Toronto', 'ON', 'Canada', '0', 1, '2023-08-16 05:25:54', '2023-08-16 05:25:54'),
(2, 2, 'Rohith', 'R', '2nd st.', '648775', 'Toronto', 'ON', 'Canada', '0', 1, '2023-08-16 06:38:25', '2023-08-16 08:01:42'),
(3, 3, 'shefii', 'km', 'km', '5648454', 'Toronto', 'PE', 'canada', '0', 1, '2023-08-16 07:28:36', '2023-08-16 07:28:36'),
(4, 2, 'James', 'McGill', 'GTA', 'TORONTO', 'Toronto', 'ON', 'CA', '0', 1, '2023-08-16 08:01:23', '2023-08-16 08:02:04'),
(5, 4, 'moh', 'shefii', 'km', '5484848', 'hdh', 'ON', 'canada', '0', 1, '2023-08-16 09:08:10', '2023-08-16 09:08:10');

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
-- Table structure for table `nutrition_explorers`
--

CREATE TABLE `nutrition_explorers` (
  `id` int(11) NOT NULL,
  `master_product_id` int(11) NOT NULL,
  `master_variation_id` int(11) DEFAULT NULL,
  `nutrition_title` varchar(250) DEFAULT NULL,
  `nutrition_value` varchar(250) DEFAULT NULL,
  `variation_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `nutrition_explorers`
--

INSERT INTO `nutrition_explorers` (`id`, `master_product_id`, `master_variation_id`, `nutrition_title`, `nutrition_value`, `variation_id`, `product_id`, `created_at`, `updated_at`) VALUES
(178, 167, 1140, 'Saturated', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(177, 167, 1141, 'Saturated', '10 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(176, 167, 1140, 'Fat / Lipeds', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(175, 167, 1141, 'Fat / Lipeds', '23 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(174, 167, 1141, 'Trans', '0.5 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(173, 167, 1140, 'Trans', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(172, 167, 1141, 'Carbohydrate', '39 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(171, 167, 1140, 'Carbohydrate', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(170, 167, 1141, 'Fibre', '1 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(169, 167, 1140, 'Fibre', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(167, 167, 1140, 'Sugars', NULL, 1309, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(168, 167, 1141, 'Sugars', '21 g', 1308, 155, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(154, 165, 1134, 'Calorie', '460', 1303, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(153, 165, 1135, 'Calorie', '460', 1302, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(152, 165, 1133, 'Calorie', '460', 1301, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(151, 165, 1132, 'Calorie', '460', 1300, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15');

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

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `master_id`, `product_id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(253, 113, 91, 'size', '10 oz', NULL, '2023-07-19 09:23:50', '2023-07-19 09:23:50'),
(254, 112, 90, 'size', '12 oz', NULL, '2023-07-19 09:23:59', '2023-07-19 09:23:59'),
(255, 112, 90, 'size', '16 oz', NULL, '2023-07-19 09:23:59', '2023-07-19 09:23:59'),
(256, 111, 89, 'size', '10 oz', NULL, '2023-07-19 09:24:10', '2023-07-19 09:24:10'),
(257, 111, 89, 'size', '12 oz', NULL, '2023-07-19 09:24:10', '2023-07-19 09:24:10'),
(258, 110, 88, 'size', '10 oz', NULL, '2023-07-19 09:24:19', '2023-07-19 09:24:19'),
(259, 110, 88, 'size', '12 oz', NULL, '2023-07-19 09:24:19', '2023-07-19 09:24:19'),
(260, 109, 87, 'size', '12 oz', NULL, '2023-07-19 09:24:25', '2023-07-19 09:24:25'),
(261, 109, 87, 'size', '16 oz', NULL, '2023-07-19 09:24:25', '2023-07-19 09:24:25'),
(262, 108, 86, 'size', '12 oz', NULL, '2023-07-19 09:24:32', '2023-07-19 09:24:32'),
(263, 108, 86, 'size', '16 oz', NULL, '2023-07-19 09:24:32', '2023-07-19 09:24:32'),
(264, 107, 85, 'size', '12 oz', NULL, '2023-07-19 09:24:37', '2023-07-19 09:24:37'),
(265, 107, 85, 'size', '16 oz', NULL, '2023-07-19 09:24:37', '2023-07-19 09:24:37'),
(266, 106, 84, 'size', '12 oz', NULL, '2023-07-19 09:24:44', '2023-07-19 09:24:44'),
(267, 106, 84, 'size', '16 oz', NULL, '2023-07-19 09:24:44', '2023-07-19 09:24:44'),
(268, 105, 83, 'size', '12 oz', NULL, '2023-07-19 09:24:57', '2023-07-19 09:24:57'),
(269, 105, 83, 'size', '16 oz', NULL, '2023-07-19 09:24:57', '2023-07-19 09:24:57'),
(270, 104, 82, 'size', '12 oz', NULL, '2023-07-19 09:25:06', '2023-07-19 09:25:06'),
(271, 104, 82, 'size', '16 oz', NULL, '2023-07-19 09:25:06', '2023-07-19 09:25:06'),
(272, 103, 81, 'size', '12 oz', NULL, '2023-07-19 09:25:13', '2023-07-19 09:25:13'),
(273, 103, 81, 'size', '16 oz', NULL, '2023-07-19 09:25:13', '2023-07-19 09:25:13'),
(274, 102, 80, 'size', '10 oz', NULL, '2023-07-19 09:25:19', '2023-07-19 09:25:19'),
(275, 102, 80, 'size', '12 oz', NULL, '2023-07-19 09:25:19', '2023-07-19 09:25:19'),
(276, 102, 80, 'size', '16 oz', NULL, '2023-07-19 09:25:19', '2023-07-19 09:25:19'),
(277, 117, 95, 'size', '1 Scoop', NULL, '2023-07-19 09:26:40', '2023-07-19 09:26:40'),
(278, 117, 95, 'size', '2 Scoop', NULL, '2023-07-19 09:26:40', '2023-07-19 09:26:40'),
(279, 117, 95, 'size', '3 Scoop', NULL, '2023-07-19 09:26:40', '2023-07-19 09:26:40'),
(280, 118, 96, 'size', '1 Scoop', NULL, '2023-07-19 09:26:47', '2023-07-19 09:26:47'),
(281, 118, 96, 'size', '2 Scoop', NULL, '2023-07-19 09:26:47', '2023-07-19 09:26:47'),
(282, 118, 96, 'size', '3 Scoop', NULL, '2023-07-19 09:26:47', '2023-07-19 09:26:47'),
(283, 119, 97, 'size', '1 Scoop', NULL, '2023-07-19 09:26:53', '2023-07-19 09:26:53'),
(284, 119, 97, 'size', '2 Scoop', NULL, '2023-07-19 09:26:53', '2023-07-19 09:26:53'),
(285, 100, 78, 'size', 'Medium 16 oz', NULL, '2023-07-19 09:46:18', '2023-07-19 09:46:18'),
(286, 100, 78, 'size', 'Large 20 oz', NULL, '2023-07-19 09:46:18', '2023-07-19 09:46:18'),
(287, 101, 79, 'size', 'Medium 16 oz', NULL, '2023-07-19 09:49:35', '2023-07-19 09:49:35'),
(288, 101, 79, 'size', 'Large 20 oz', NULL, '2023-07-19 09:49:35', '2023-07-19 09:49:35'),
(291, 99, 77, 'size', 'Medium 16 oz', NULL, '2023-07-19 09:49:47', '2023-07-19 09:49:47'),
(292, 99, 77, 'size', 'Large 20 oz', NULL, '2023-07-19 09:49:47', '2023-07-19 09:49:47'),
(506, 125, 103, 'size', '5 Inch', NULL, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(507, 125, 103, 'size', '9 Inch', NULL, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(747, 169, 159, 'size', '5 Inch', NULL, '2023-07-27 09:16:20', '2023-07-27 09:16:20'),
(748, 169, 159, 'size', '9 Inch', NULL, '2023-07-27 09:16:20', '2023-07-27 09:16:20'),
(757, 169, 161, 'size', '5 Inch', NULL, '2023-08-07 10:27:13', '2023-08-07 10:27:13'),
(758, 169, 161, 'size', '9 Inch', NULL, '2023-08-07 10:27:13', '2023-08-07 10:27:13'),
(855, 124, 102, 'size', '5 Inch', NULL, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(856, 124, 102, 'size', '9 Inch', NULL, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(859, 133, 111, 'size', '5 Inch', NULL, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(860, 133, 111, 'size', '9 Inch', NULL, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(901, 166, 154, 'size', '5 INCH', NULL, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(902, 166, 154, 'size', '9 INCH', NULL, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(903, 166, 154, 'type', 'Baked', NULL, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(904, 166, 154, 'type', 'Frozen', NULL, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(923, 162, 150, 'size', '5 Inch', NULL, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(924, 162, 150, 'size', '9 Inch', NULL, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(925, 162, 150, 'type', 'Baked', NULL, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(926, 162, 150, 'type', 'Frozen', NULL, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(927, 164, 152, 'size', '5 Inch', NULL, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(928, 164, 152, 'size', '9 Inch', NULL, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(929, 164, 152, 'type', 'Baked', NULL, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(930, 164, 152, 'type', 'Frozen', NULL, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(931, 163, 151, 'size', '5 Inch', NULL, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(932, 163, 151, 'size', '9 Inch', NULL, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(933, 163, 151, 'type', 'Baked', NULL, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(934, 163, 151, 'type', 'Frozen', NULL, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(941, 168, 156, 'size', '5 Inch', NULL, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(942, 168, 156, 'size', '9 Inch', NULL, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(943, 165, 153, 'size', '5 INCH', NULL, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(944, 165, 153, 'size', '9 INCH', NULL, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(945, 165, 153, 'type', 'Baked', NULL, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(946, 165, 153, 'type', 'Frozen', NULL, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(947, 134, 112, 'size', '5 Inch', NULL, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(948, 134, 112, 'size', '9 Inch', NULL, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(951, 167, 155, 'size', '5 Inch', NULL, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(952, 167, 155, 'size', '9 Inch', NULL, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(957, 150, 129, 'size', '6 Pcs', NULL, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(958, 150, 129, 'size', '12 Pcs', NULL, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(959, 152, 130, 'size', '6 Pcs', NULL, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(960, 152, 130, 'size', '12 Pcs', NULL, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(961, 153, 131, 'size', '6 Pcs', NULL, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(962, 153, 131, 'size', '12 Pcs', NULL, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(963, 149, 128, 'size', '6 Pcs', NULL, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(964, 149, 128, 'size', '12 Pcs', NULL, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(965, 148, 127, 'size', '6 Pcs', NULL, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(966, 148, 127, 'size', '12 Pcs', NULL, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(967, 147, 126, 'size', '6 Pcs', NULL, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(968, 147, 126, 'size', '12 Pcs', NULL, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(969, 146, 125, 'size', '6 Pcs', NULL, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(970, 146, 125, 'size', '12 Pcs', NULL, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(971, 145, 124, 'size', '6 Pcs', NULL, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(972, 145, 124, 'size', '12 Pcs', NULL, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(985, 48, 40, 'size', '4 Pcs', NULL, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(986, 48, 40, 'size', '6 Pcs', NULL, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(987, 48, 40, 'size', '12 Pcs', NULL, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(988, 136, 118, 'size', '4 Pcs', NULL, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(989, 136, 118, 'size', '6 Pcs', NULL, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(990, 136, 118, 'size', '12 Pcs', NULL, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(991, 39, 34, 'size', '4 Pcs', NULL, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(992, 39, 34, 'size', '6 Pcs', NULL, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(993, 39, 34, 'size', '12 Pcs', NULL, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(994, 89, 68, 'size', '4 Pcs', NULL, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(995, 89, 68, 'size', '8 Pcs', NULL, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(996, 89, 68, 'size', '12 Pcs', NULL, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(997, 88, 67, 'size', '4 Pcs', NULL, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(998, 88, 67, 'size', '8 Pcs', NULL, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(999, 88, 67, 'size', '12 Pcs', NULL, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(1000, 86, 65, 'size', '4 Pcs', NULL, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(1001, 86, 65, 'size', '8 Pcs', NULL, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(1002, 86, 65, 'size', '12 Pcs', NULL, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(1003, 85, 64, 'size', '4 Pcs', NULL, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(1004, 85, 64, 'size', '8 Pcs', NULL, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(1005, 85, 64, 'size', '12 Pcs', NULL, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(1009, 87, 66, 'size', '4 Pcs', NULL, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(1010, 87, 66, 'size', '8 Pcs', NULL, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(1011, 87, 66, 'size', '12 Pcs', NULL, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(1012, 90, 69, 'size', '4 Pcs', NULL, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(1013, 90, 69, 'size', '8 Pcs', NULL, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(1014, 90, 69, 'size', '12 Pcs', NULL, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(1015, 161, 149, 'size', '5 Inch', NULL, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(1016, 161, 149, 'size', '9 Inch', NULL, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(1017, 161, 149, 'type', 'Baked', NULL, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(1018, 161, 149, 'type', 'Frozen', NULL, '2023-08-17 05:07:53', '2023-08-17 05:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(10) NOT NULL,
  `invoice_id` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
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
  `discount_type` varchar(15) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT 'amount',
  `payment_method` varchar(20) DEFAULT NULL,
  `reference_num` varchar(35) DEFAULT NULL,
  `transaction_id` varchar(11) DEFAULT NULL,
  `payment_status` int(10) DEFAULT 0,
  `affiliate_id` int(10) DEFAULT NULL,
  `backorder` enum('Yes','No') NOT NULL DEFAULT 'No',
  `is_backorder` enum('Yes','No') NOT NULL DEFAULT 'No',
  `status` int(10) NOT NULL,
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `make_gift` int(11) NOT NULL DEFAULT 0,
  `greeting_card_sku` varchar(250) DEFAULT NULL,
  `card_msg` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `invoice_id`, `basket_id`, `subtotal`, `taxamount`, `grandtotal`, `shipping_charge`, `user_id`, `ipaddress`, `email`, `coupon`, `discount_id`, `discount`, `discount_type`, `payment_method`, `reference_num`, `transaction_id`, `payment_status`, `affiliate_id`, `backorder`, `is_backorder`, `status`, `created_at`, `updated_at`, `make_gift`, `greeting_card_sku`, `card_msg`) VALUES
(1, '1', 1, '26.99', '0', 26.99, 0.00, 0, '49.37.235.51', 'bijuyn@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:12:51', '2023-08-16 05:12:51', 0, NULL, NULL),
(2, '2', 2, '80.97', '0', 80.97, 0.00, 0, '49.37.235.51', 'bijuyn@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:18:15', '2023-08-16 05:18:15', 0, NULL, NULL),
(3, '3', 3, '134.95', '0', 134.95, 0.00, 0, '49.37.235.51', 'bijuyn@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:21:42', '2023-08-16 05:21:43', 0, NULL, NULL),
(4, '4', 4, '120.93', '0', 120.93, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:27:05', '2023-08-16 05:27:05', 0, NULL, NULL),
(5, '5', 5, '134.95', '0', 134.95, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:31:50', '2023-08-16 05:31:50', 0, NULL, NULL),
(6, '6', 6, '107.96', '0', 107.96, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:33:08', '2023-08-16 05:33:08', 0, NULL, NULL),
(7, '7', 7, '26.99', '0', 26.99, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:34:54', '2023-08-16 05:34:54', 0, NULL, NULL),
(8, '8', 8, '107.96', '0', 107.96, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 05:39:07', '2023-08-16 05:39:08', 0, NULL, NULL),
(9, '9', 9, '173.94', '0', 178.94, 10.00, 2, '49.37.235.51', NULL, 'WEEKEND', NULL, 5.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 07:15:48', '2023-08-16 07:15:48', 0, NULL, NULL),
(10, '10', 10, '26.99', '0', 26.99, 0.00, 1, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 07:21:48', '2023-08-16 07:21:48', 0, NULL, NULL),
(11, '11', 11, '1024', '0', 1034.00, 10.00, 2, '49.37.235.51', NULL, NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 07:29:08', '2023-08-16 07:29:08', 1, NULL, 'Happy birthday'),
(14, '12', 16, '107.96', '0', 107.96, 0.00, 0, '49.37.235.51', 'biju@indigitalgroup.ca', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 08:26:43', '2023-08-16 08:26:44', 0, NULL, NULL),
(15, '15', 13, '26.99', '0', 26.99, 0.00, 0, '49.37.235.51', 'shefii.indigital@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 09:03:59', '2023-08-16 09:03:59', 0, NULL, NULL),
(16, '16', 17, '9.99', '0', 9.99, 0.00, 0, '49.37.235.51', 'shefii.indigital@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 09:06:23', '2023-08-16 09:06:24', 0, NULL, NULL),
(17, '17', 18, '26.99', '0', 26.99, 0.00, 0, '49.37.235.51', 'shefii.indigital@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-16 09:08:09', '2023-08-16 09:08:10', 0, NULL, NULL),
(20, '18', 19, '1', '0', 1.00, 0.00, 0, '49.37.227.43', 'shefii.indigital@gmail.com', NULL, NULL, 0.00, 'amount', 'Credit Card', 'null', 'null', 1, NULL, 'No', 'No', 1, '2023-08-17 05:37:32', '2023-08-17 05:37:32', 0, NULL, NULL);

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

--
-- Dumping data for table `order_payments`
--

INSERT INTO `order_payments` (`id`, `order_id`, `paid_amount`, `cheque_no`, `holder_name`, `firstname`, `lastname`, `credit_card`, `exp_month`, `exp_year`, `cvv`, `reference_num`, `transaction_id`, `payment_status`, `status`, `created_at`, `updated_at`) VALUES
(1, 1, '26.99', NULL, 'Card Test', NULL, NULL, '4111111111111111', '12', '25', '123', NULL, NULL, NULL, '1', '2023-08-16 12:12:51', '2023-08-16 12:12:51'),
(2, 2, '80.97', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 12:18:15', '2023-08-16 12:18:15'),
(3, 3, '134.95', NULL, 'Card Test', NULL, NULL, '4111111111111111', '12', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 12:21:42', '2023-08-16 12:21:42'),
(4, 4, '120.93', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '24', '123', NULL, NULL, NULL, '1', '2023-08-16 12:27:05', '2023-08-16 12:27:05'),
(5, 5, '134.95', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 12:31:50', '2023-08-16 12:31:50'),
(6, 6, '107.96', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 12:33:08', '2023-08-16 12:33:08'),
(7, 7, '26.99', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '24', '123', NULL, NULL, NULL, '1', '2023-08-16 12:34:54', '2023-08-16 12:34:54'),
(8, 8, '107.96', NULL, 'Card Test', NULL, NULL, '4111111111111111', '12', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 12:39:07', '2023-08-16 12:39:07'),
(9, 9, '178.94', NULL, 'Rohith R', NULL, NULL, '4242424242424242', '12', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 14:15:48', '2023-08-16 14:15:48'),
(10, 10, '26.99', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 14:21:48', '2023-08-16 14:21:48'),
(11, 11, '1034', NULL, 'James', NULL, NULL, '6933696336936693', '12', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 14:29:08', '2023-08-16 14:29:08'),
(14, 14, '107.96', NULL, 'Card Test', NULL, NULL, '4111111111111111', '11', '23', '123', NULL, NULL, NULL, '1', '2023-08-16 15:26:43', '2023-08-16 15:26:43'),
(15, 15, '26.99', NULL, 'sadsad', NULL, NULL, '4848484848484541', '12', '25', '184', NULL, NULL, NULL, '1', '2023-08-16 16:03:59', '2023-08-16 16:03:59'),
(16, 16, '9.99', NULL, 'zsdfd', NULL, NULL, '4184848484848484', '12', '28', '418', NULL, NULL, NULL, '1', '2023-08-16 16:06:23', '2023-08-16 16:06:23'),
(17, 17, '26.99', NULL, 'moh', NULL, NULL, '4848484848484848', '12', '25', '555', NULL, NULL, NULL, '1', '2023-08-16 16:08:09', '2023-08-16 16:08:09'),
(20, 20, '1', NULL, 'shefi', NULL, NULL, '8484848484848484', '12', '23', '848', NULL, NULL, NULL, '1', '2023-08-17 12:37:32', '2023-08-17 12:37:32');

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

--
-- Dumping data for table `pages`
--

INSERT INTO `pages` (`id`, `master_id`, `heading`, `banner_id`, `type`, `slug`, `html`, `published`, `created_at`, `updated_at`) VALUES
(1, '6', 'Privacy-policy', '0', 'Privacy Policy', 'privacy-policy', '<p>At Sweetie Pie, we are committed to safeguarding your privacy and ensuring the security of your personal information. This Privacy Policy outlines how we collect, use, disclose, and protect your data when you interact with our website, place orders, or engage with our services. By using our website and services, you consent to the practices described in this policy.</p>\r\n\r\n<h3>1. Information We Collect:</h3>\r\n\r\n<p>Personal Information: When you place an order or register for an account, we may collect your name, contact details (such as email address, phone number, and shipping address), and payment information to process your order and provide excellent customer service. Cookies and Tracking Technologies: We may use cookies and similar tracking technologies to enhance your browsing experience, remember your preferences, and analyze website traffic. These technologies may collect non-personal information such as IP address, browser type, and device information.</p>\r\n\r\n<h3>2. Use of Information:</h3>\r\n\r\n<p>We use the information collected to process your orders, deliver products, and provide customer support. Personal information may also be used to communicate with you regarding your order status, promotions, or relevant updates. Non-personal information collected through cookies and tracking technologies helps us improve our website&#39;s functionality and user experience.</p>\r\n\r\n<h3>3. Disclosure of Information:</h3>\r\n\r\n<p>We may share your personal information with trusted third-party service providers who assist us in processing orders, delivering products, and improving our services. These providers are bound by confidentiality agreements and are not permitted to use your information for any other purpose. We may also share your information when required by law, legal proceedings, or to protect the rights, safety, and property of Sweetie Pie and its customers.</p>\r\n\r\n<h3>4. Security:</h3>\r\n\r\n<p>We take appropriate measures to protect your personal information from unauthorized access, disclosure, or alteration. Our website uses industry-standard encryption technology (SSL) to secure your sensitive data during transmission. While we strive to protect your data, no online platform can guarantee absolute security. Hence, we cannot warrant the complete security of any information you transmit to us.</p>\r\n\r\n<h3>5. Your Choices:</h3>\r\n\r\n<p>You may choose to opt-out of promotional emails by clicking the &quot;unsubscribe&quot; link provided in the email. You can adjust your browser settings to manage or block cookies. However, this may affect certain features and functionalities of our website.</p>\r\n\r\n<h3>6. Children&#39;s Privacy:</h3>\r\n\r\n<p>Sweetie Pie does not knowingly collect personal information from children under the age of 13. If you believe that a child has provided us with their data, please contact us, and we will promptly remove the information from our records.</p>\r\n\r\n<h3>7. Updates to the Privacy Policy:</h3>\r\n\r\n<p>Sweetie Pie may update this Privacy Policy from time to time. Any significant changes will be communicated through our website or other appropriate means.If you have any questions or concerns about our Privacy Policy or how we handle your personal information, please contact us at <strong>privacy@mysweetiepie.ca</strong>. Your privacy matters to us, and we are dedicated to ensuring a secure and delightful experience with Sweetie Pie.</p>', '1', '2023-05-11 16:10:37', '2023-07-25 15:59:19'),
(2, '7', 'Shipping Policy', '0', 'Shipping Policy', 'shipping-policy', '<p>Thank you for choosing Sweetie Pie! We are committed to delivering your delectable treats with utmost care and efficiency. This Shipping Policy outlines our shipping methods, delivery times, charges, and related information to ensure a delightful experience with every order.</p>\r\n\r\n<h3>1. Shipping Methods:</h3>\r\n\r\n<p>We currently offer standard shipping for all orders within <strong>GTA</strong>. Expedited shipping options may also be available, depending on your location and the selected items.</p>\r\n\r\n<h3>2. Shipping Zones and Delivery Areas:</h3>\r\n\r\n<p>Sweetie Pie ships to most locations within <strong>GTA</strong>. Please check the delivery options available to your specific area during the checkout process.</p>\r\n\r\n<h3>3. Order Processing Time:</h3>\r\n\r\n<p>We strive to process and fulfill orders promptly. Most orders are processed within <strong>2 </strong>business days after payment confirmation. However, during peak seasons or for customized orders, processing times may be extended. Rest assured, we will communicate any delays promptly.</p>\r\n\r\n<h3>4. Delivery Time:</h3>\r\n\r\n<p><strong>Standard Delivery:</strong> Standard shipping typically takes<strong> 1-2 </strong>business days, depending on your location and local delivery schedules.</p>\r\n\r\n<p><strong>Expedited Delivery:</strong> If expedited shipping options are available, the estimated delivery time will be communicated during the checkout process.</p>\r\n\r\n<h3>5. Shipping Charges:</h3>\r\n\r\n<p>Shipping fees are calculated based on the order&#39;s weight, delivery destination, and selected shipping method. The applicable shipping charges will be displayed during the checkout process for your review before finalizing the order.</p>\r\n\r\n<h3>6. Order Tracking:</h3>\r\n\r\n<p>Once your order is shipped, you will receive a confirmation email containing tracking details. You can use this information to monitor your order&#39;s status and estimated delivery date.</p>\r\n\r\n<h3>7. Delivery Attempts and Signature Requirements:</h3>\r\n\r\n<p>For standard deliveries, our shipping partners will attempt delivery to the provided shipping address. If no one is available to receive the package, a delivery notice will be left, and re-delivery attempts will be made as per the shipping partner&#39;s policy.</p>\r\n\r\n<p>Signature requirements may apply to certain high-value orders or based on the courier&#39;s discretion.</p>\r\n\r\n<h3>8. Delivery Issues and Lost Packages:</h3>\r\n\r\n<p>In the rare event of a delayed delivery or if you suspect a lost package, please contact our customer support team immediately. We will work closely with our shipping partners to resolve the issue promptly.</p>\r\n\r\n<h3>9. Shipping Restrictions:</h3>\r\n\r\n<p>Sweetie Pie complies with all relevant shipping regulations. However, we may have specific restrictions on shipping certain products to certain locations. Please review any product-specific shipping restrictions during the checkout process.</p>\r\n\r\n<h3>10. International Shipping:</h3>\r\n\r\n<p>At present, we primarily serve customers within GTA. For international shipping inquiries, please contact our customer support team to check if shipping to your location is possible.</p>\r\n\r\n<h3>11. Packaging:</h3>\r\n\r\n<p>We take great care in packaging our treats to ensure they arrive in perfect condition. Our eco-friendly packaging materials are chosen to protect the freshness and quality of your order during transit.</p>\r\n\r\n<h3>12. Change of Shipping Address:</h3>\r\n\r\n<p>To ensure a smooth delivery process, please double-check and provide an accurate shipping address during checkout. If you need to change the shipping address after placing the order, please contact us immediately. We will do our best to accommodate address changes before the order is shipped.</p>\r\n\r\n<p>For any additional shipping-related questions or concerns, feel free to contact our customer support team at <strong>customerservice@mysweetiepie.ca</strong>. We value your satisfaction and look forward to delighting you with our swift and reliable shipping services. Enjoy your sweet treats from Sweetie Pie!</p>\r\n\r\n<p>&nbsp;</p>', '1', '2023-05-11 16:10:40', '2023-07-25 16:22:42'),
(3, '8', 'Terms and Conditions', '0', 'Terms & Conditions', 'terms-and-conditions', '<p>Welcome to Sweetie Pie! We are thrilled to offer you our delightful artisanal desserts. Before placing an order with us, please take a moment to review our Terms and Conditions outlined below:</p>\r\n\r\n<h3>1. Order Placement:</h3>\r\n<p>\r\nAll orders must be placed through our official website or authorized channels.\r\nFor corporate and large orders, we recommend placing your request at least 72 hours in advance to ensure availability and customization options.</p>\r\n<h3>2. Payment:</h3>\r\n<p>\r\nPayment for all orders is required in full at the time of placement.\r\nWe accept major credit cards, debit cards, and other authorized payment methods.</p>\r\n<h3>3. Cancellations and Modifications:</h3>\r\n<p>\r\nCancellations or modifications to your order can be made up to 48 hours before the scheduled delivery or pickup time.\r\nFor any changes within the 48-hour window, please contact our customer support team to check availability.</p>\r\n<h3>4. Delivery and Pickup:</h3>\r\n<p>\r\nWe offer both delivery and pickup options for your convenience.\r\nDelivery charges may apply based on the delivery location and order size. Delivery fees will be clearly communicated during the checkout process.\r\nPlease ensure someone is available to receive the delivery at the specified address during the scheduled time.</p>\r\n<h3>5. Quality Assurance:</h3>\r\n<p>\r\nAt Sweetie Pie, we take pride in the quality of our desserts. However, in the unlikely event that you are not satisfied with your order, please contact us within 24 hours of delivery or pickup, and we will gladly address your concerns.</p>\r\n<h3>6. Allergies and Dietary Restrictions:</h3>\r\n<p>\r\nWe understand the importance of catering to various dietary needs. While some of our desserts are made without common allergens, please note that our kitchen handles various ingredients, and cross-contamination may occur.\r\nIt is the customer&#39;s responsibility to inform us of any specific allergies or dietary restrictions while placing the order.</p>\r\n<h3>7. Customization:</h3>\r\n<p>\r\nWe offer limited customization options for corporate and large orders. Please communicate your customization requests at the time of order</p>', '1', '2023-05-11 16:10:43', '2023-07-25 17:00:22'),
(4, '9', 'Delivery Policy', '0', 'Delivery Policy', 'delivery-policy', '<p>At our bakery, we strive to provide our customers with fast and efficient delivery options. We offer the following delivery options for our online orders:</p>\r\n\r\n<ol>\r\n	<li>\r\n	<p>Standard Delivery: Our standard delivery option typically takes 2-5 business days for delivery within the continental United States. Shipping costs are calculated based on the size and weight of the order.</p>\r\n	</li>\r\n	<li>\r\n	<p>Expedited Delivery: We also offer expedited delivery options for customers who need their orders delivered more quickly. Expedited delivery options may include overnight, 2-day, or 3-day shipping options. Shipping costs for expedited delivery are calculated based on the shipping speed selected, as well as the size and weight of the order.</p>\r\n	</li>\r\n</ol>\r\n\r\n<p>Please note that delivery times may vary depending on the destination and shipping carrier. We are not responsible for delays or damages caused by the shipping carrier.</p>\r\n\r\n<p>Orders will be shipped to the address provided at the time of ordering. We are not responsible for orders that are lost or stolen after delivery.</p>\r\n\r\n<p>We offer free standard shipping for orders over a certain amount. Please check our website for current promotions and shipping offers.</p>\r\n\r\n<p>If you have any questions or concerns about your order, please contact us at [contact information] and we will do our best to assist you.</p>\r\n\r\n<p>By placing an order on our website, you acknowledge that you have read and agree to our delivery policy.</p>', '1', '2023-05-11 16:10:46', '2023-05-11 16:10:46'),
(5, '10', 'Corporate', '0', 'Page', 'corporate', '<p>Welcome to our bakery website! Our bakery was founded with a passion for creating delicious, high-quality baked goods that our customers will love.</p>\r\n\r\n<p>We use only the freshest and highest quality ingredients to create our baked goods, which are made from scratch daily in our bakery. From artisan breads to decadent pastries and cakes, we have something for everyone to enjoy.</p>\r\n\r\n<p>At our bakery, we are committed to providing excellent customer service and creating a warm and welcoming environment for our customers. We believe that every customer should feel valued and appreciated, and we strive to make every visit to our bakery a memorable one.</p>\r\n\r\n<p>Our team of skilled bakers and pastry chefs are dedicated to creating unique and delicious baked goods that are sure to delight your taste buds. We are constantly experimenting with new flavors and ingredients to create innovative and exciting treats that you won&#39;t find anywhere else.</p>\r\n\r\n<p>We also offer a range of catering and special order services for events such as weddings, birthdays, and corporate events. Whether you need a cake for a special occasion or a platter of pastries for your next meeting, we can help make your event unforgettable.</p>\r\n\r\n<p>Thank you for visiting our website and we look forward to serving you soon! If you have any questions or comments, please don&#39;t hesitate to contact us at [contact information].</p>', '1', '2023-05-11 16:10:49', '2023-05-11 16:10:49'),
(6, '11', 'Sweetiepie in Toronto', '0', 'Page', 'sweetiepie-in-toronto', '<p>Testing page creation</p>', '1', '2023-05-11 16:10:51', '2023-05-11 16:10:51'),
(8, '13', 'Pikcup Policy', '0', 'Page', 'pikcup-policy', '<p>test</p>', '1', '2023-07-11 14:37:54', '2023-07-11 14:37:54'),
(9, '14', 'FAQs', '0', 'Page', 'faqs', '<h3>1. What is Sweetie Pie?</h3>\r\n\r\n<p>Sweetie Pie is a delightful dessert company specializing in handcrafted artisan treats made with love and the finest local ingredients. From delectable pies, butter tarts, cookies and cake jars, we offer a wide array of sweet delights to satisfy your cravings.</p>\r\n\r\n<h3>2. How can I place an order with Sweetie Pie?</strong></h3>\r\n\r\n<p>Placing an order with Sweetie Pie is easy! Simply visit our official website <strong>www.mysweetiepie.ca</strong> and browse through our mouthwatering dessert selections. Add your desired treats to the cart, proceed to checkout, and follow the prompts to provide your shipping and payment details. Once your order is confirmed, we will take care of the rest.</p>\r\n\r\n<h3>3. Where does Sweetie Pie deliver?</strong></h3>\r\n\r\n<p>We currently deliver our sweet treats to various locations within the Greater Toronto Area. During the checkout process, you can enter your delivery address to check if we deliver to your specific area.</p>\r\n\r\n<h3>4. Can I customize my order for a special occasion?</h3>\r\n\r\n<p>Absolutely! We love adding a personal touch to your celebrations. For customized orders, such as adding personalized messages, specific decorations, or special flavors, please get in-touch with our head office.&nbsp;</p>\r\n\r\n<h3>5. How are the desserts packaged for delivery?</h3>\r\n\r\n<p>At Sweetie Pie, we take great care in packaging our desserts to ensure they arrive in perfect condition. Our eco-friendly packaging materials are chosen to protect the freshness and quality of your order during transit.</p>\r\n\r\n<h3>6. What are the delivery options and charges?</h3>\r\n\r\n<p>We offer standard shipping for all orders within the Greater Toronto Area. The shipping charges are calculated based on the order&#39;s weight, delivery destination, and selected shipping method. The applicable shipping charges will be displayed during the checkout process for your review before finalizing the order.</p>\r\n\r\n<h3>7. Can I track my order?</h3>\r\n\r\n<p><strong>Yes! Once your order is shipped, you will receive a confirmation email containing tracking details. You can use this information to monitor your order&#39;s status and estimated delivery date.</strong></p>\r\n\r\n<h3>8. What if I have dietary restrictions or allergies?</h3>\r\n\r\n<p>We understand the importance of catering to various dietary needs. While some of our desserts are made without common allergens, please note that our kitchen handles various ingredients, and cross-contamination may occur. It is the customer&#39;s responsibility to inform us of any specific allergies or dietary restrictions while placing the order.</p>\r\n\r\n<h3>9. What is your policy on returns and refunds?</h3>\r\n\r\n<p>As our products are perishable, we do not accept returns. However, if you are not satisfied with your order or experience any issues, please contact our customer support team within 24 hours of delivery or pickup. We will do our best to address your concerns and ensure your satisfaction.</p>\r\n\r\n<h3>10. How can I contact Sweetie Pie for further assistance?</h3>\r\n\r\n<p>For any additional questions, concerns, or assistance, please feel free to contact our customer support team at<strong> customerservice@mysweetiepie.ca</strong>. We are here to help and ensure your experience with Sweetie Pie is nothing short of delightful!</p>\r\n\r\n<p>At Sweetie Pie, we are passionate about delivering joy through our delectable desserts. Thank you for choosing us, and we look forward to serving you soon!</p>\r\n\r\n<p>&nbsp;</p>', '1', '2023-07-24 18:16:39', '2023-07-25 16:29:38');

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
('shefii.indigital@gmail.com', '$2y$10$RLa5o1DbZvm/IDxNUqZS6uyedG/E.34lHLK/pdGe0HN4u9ExCWGh.', '2023-08-09 13:18:03');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `master_id`, `name`, `slug`, `availability`, `in_store`, `online`, `product_type`, `has_variation`, `addon_availability`, `description`, `contents`, `baking_info`, `picture`, `picture_small`, `nutrition_picture`, `ingredients_picture`, `tax_id`, `seo_title`, `seo_description`, `seo_keyword`, `seo_alt`, `type`, `addon`, `gift_card`, `greeting_card`, `regular`, `display_order`, `status`, `created_at`, `updated_at`) VALUES
(25, '27', 'Steak and Ale Pie', 'steak-and-ale-pie', 'all', 1, 1, 'both', 0, NULL, '<p>You can taste the Guinness in this traditional Irish steak and mushroom pie. Chunks of beef, stewed for hours in dark ale until tender.</p>', '<p>Beef, chuck for stew, separable lean and fat, all grades, raw, Grains, wheat flour, white, all purpose, bleached, Stout, Guinness, Shortening, industrial, all purpose, soy and palm, Mushroom, brown, Italian (crimini), raw, Onion, raw, Water, municipal, Butter, unsalted, Sweets, sugars, granulated, Salt, table, Spices, pepper, black, Garlic, raw, Tomato products, canned, paste, no added salt, Sauce, worcestershire, ready-to-serve, Spices, rosemary, fresh, Spices, thyme, fresh, Liquid Smoke, Spices, bay leaf</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'O9TmLFQDdb22OZgIMUyoFDpTV5H4rg.png', 'p40avHeumRiRNKLL31Z0NHUBUP2zgf.png', 'fH8SjIoOIzabNcNXnVrc85DPOud2aD.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:22:24', '2023-08-16 08:33:45'),
(26, '28', 'Pulled Pork Pie', 'pulled-pork-pie', NULL, 1, 1, 'both', 0, NULL, '<p>Pork shoulder left to marinate and slow cook all day long. Once pulled, its smothered in a smoky bbq sauce and stuffed into our flaky crust. No room for veggies in this pie!!</p>', '<p>Soup, stock, beef, homemade, Shortening, industrial, all purpose, soy and palm, Pork, shoulder, whole, lean and fat, raw, Sauce, barbecue, Mustard, prepared, yellow, Onions, raw, Celery, raw, Garlic, raw, Spices, pepper, black, Salt, table</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'dummy.png', 'dummy.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:24:00', '2023-08-16 08:14:16'),
(27, '29', 'Spicy Beef Curry Pie', 'spicy-beef-curry-pie', 'all', 1, 1, 'both', 0, NULL, '<p>An flavourful spicy beef pie made with traditional spices from India. Add some bright green peas for colour and texture. It&rsquo;s a delight to the senses.</p>', '<p>Beef, mince, raw, Flour, wheat, all-purpose, enriched, bleached, Shortening, industrial, all purpose, soy and palm, Onion, sweet, raw, Peas, green, frozen, unprepared, Water, municipal, Tomato products, canned, paste, no added salt, Sweets, sugars, granulated, Masala, Salt, table</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'Gb7E00GtjSLDmvJgr8mLSN6mgzGVGJ.png', 'NIJ7TA94vC0frIUatmVJ0nhx0nHwjo.png', 'ttpaJBPCU1RkeOHgrSvpDXwDHXBQCv.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:26:17', '2023-08-16 08:33:35'),
(28, '30', 'Braised Beef Short Rib Pie', 'braised-beef-short-rib-pie', 'all', 1, 1, 'both', 0, NULL, '<p>Braised in red wine, this fall apart short rib pie is nothing short of spectacular. Mixed with carrots, celery and onions, the flavour is outstanding. A hands down fav.</p>', '<p>Beef, chuck, short ribs, boneless, lean and fat, 0mm trim, raw, Grains, wheat flour, white, all purpose, bleached, Soup (sauce), stock, cream, ready-to-serve, Shortening, industrial, all purpose, soy and palm, Onion, raw, Water, municipal, Carrot, raw, Celery, raw, Alcohol, table wine, red (11.5% alcohol by volume), Butter, unsalted, Garlic, raw, Tomato products, canned, paste, no added salt, Sweets, sugars, granulated, Salt, table, Spices, onion powder, Spices, pepper, black, Spices, rosemary, fresh, Spices, thyme, fresh</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'XEU274BzifY8I7RQxz07yZ1OxOsT1E.png', '0T2uvA5fthtOtTJPaQ3zDjbNuvnsCj.png', 'j0O6nLyr43IGj547UlGh7eeUudGJFz.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:27:53', '2023-08-16 08:21:28'),
(29, '31', 'Chicken Pot Pie', 'chicken-pot-pie', 'all', 1, 1, 'both', 0, NULL, '<p>This traditional chicken pot pie is creamy and delicious. Hints of rosemary and thyme, peas, carrots and leeks. It&rsquo;s an easy and delicious meal enjoyed by all.</p>', '<p>Chicken, broiler, breast, skinless, boneless, meat, raw, Grains, wheat flour, white, all purpose, bleached, Stock, chicken, ready made, retail, Shortening, industrial, all purpose, soy and palm, Water, municipal, Onion, raw, Leeks (bulb and lower-leaf portion), raw, Carrot, raw, Celery, raw, Peas, green, raw, Butter, unsalted, Sweets, sugars, granulated, Salt, table, Spices, thyme, fresh, Spices, bay leaf, Spices, rosemary, fresh</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'mCXiSTQTjYp6jCygbgfaV376lJXc6s.png', 'GZgQQnyUDOa9K0mcJbCB1GHf9jyJgj.png', 'R2IfeRijW5F0cAdwoJ3UQFLN7tDCN1.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:29:09', '2023-08-16 08:29:39'),
(30, '32', 'Mushroom Pot Pie', 'mushroom-pot-pie', 'all', 1, 1, 'both', 0, NULL, '<p>Who says all savoury pies have to have meat? This creamy vegan mushroom pie is loaded with peas, carrots, mushrooms and coconut milk. It&rsquo;s a veggie version of the traditional pot pie.</p>', '<p>Peas and carrots, frozen, unprepared, Grains, wheat flour, white, all purpose, bleached, Mushroom, brown, Italian (crimini), raw, Shortening, industrial, all purpose, soy and palm, Onion, raw, Water, municipal, Nuts, coconut milk (liquid from grated meat and water), canned, Soup, broth, vegetable, ready-to-serve, Salt, table, Sweets, sugars, granulated, Spices, pepper, black, Garlic, raw, Spices, rosemary, fresh, Spices, thyme, fresh, Spices, bay leaf</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'CbMTUNDmsVWKPKrZGZt9t28CIhaAXa.png', 'F4W1xa41yrYpYTLY0b8sFScmMZ4sza.png', 'KnRWKoi3vKMaf1WLQDUWd0aI6kVsBV.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:30:25', '2023-08-16 08:31:40'),
(31, '33', 'Soy Tikka Masala Pie', 'soy-tikka-masala-pie', 'all', 1, 1, 'both', 0, NULL, '<p>With a masala spice mix imported directly from India, we shred soy chunks and add them to coconut milk and red peppers to create this fun, spicy and flavour filled pie.</p>', '<p>Nuts, coconut milk (liquid from grated meat and water), canned, Grains, wheat flour, white, all purpose, bleached, Shortening, industrial, all purpose, soy and palm, Tomato products, canned, paste, no added salt, Soya Chunks, Water, municipal, Onion, sweet, raw, Peppers, sweet, red, frozen, chopped, unprepared, Margarine, tub, non-hydrogenated, canola oil (includes some sunflower oil), lactose free, vegan, Sweets, sugars, granulated, Masala, Garlic, raw, Salt, table</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen, brush your frozen pie with an egg wash or a non-dairy milk for vegan option</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'yBBDPcNEAOPFpCLAY5jy0BjahV4RS4.png', 'XFX22aAhttNPN8L9OBnu34iYKjnNfC.png', 'HaF6x6qWx3humeQUeibLGAYvaQ4Sft.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:32:16', '2023-08-16 08:32:32'),
(34, '39', 'Butter Tarts', 'butter-tarts', NULL, 1, 1, 'both', 1, NULL, '', '', NULL, 'dummy.png', 'dummy.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:49:50', '2023-08-17 11:08:19'),
(40, '48', 'Caramel Brownies', 'caramel-brownies', NULL, 0, 1, 'both', 1, NULL, '<p>Now this is our most decadent treat Brownies are to die for!!! made with a chewy top layer and a warm gooey center it is the perfect treat.</p>', '', NULL, 'xbFUT4XjAS0l8PPqYy2LmO5NVYhVfT.png', 'iPkDLhHRF8lJ1sxrlWuCEJl748z0eK.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 15:59:58', '2023-08-17 10:59:43'),
(52, '67', 'CADBURY DAIRY MILK Rock The Road XL Candy', 'cadbury-dairy-milk-rock-the-road-xl-candy', 'all', 0, 1, 'both', 0, NULL, '', '', NULL, 'JxcWk2Lf3dWnJagAOj3RN7A08LnCya.png', 'MLQUDqSog2zQWvcLJURX4KOJBD0DPI.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 1, '2023-07-11 16:19:01', '2023-07-19 13:20:07'),
(54, '69', 'CADBURY ROYAL DARK Black Forest Cake XL Candy Bar', 'cadbury-royal-dark-black-forest-cake-xl-candy-bar', 'all', 0, 1, 'both', 0, NULL, '', '', NULL, 'yu5YR0m9WwybaKkfpERTF149d90990.png', 'PRlLfABTMEBzBeXvaYwVdk0CNMOg19.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 1, '2023-07-11 16:20:15', '2023-07-19 13:19:43'),
(56, '71', 'HERSHEY\'S Trees & Stockings White Creme Chips', 'hersheys-trees-stockings-white-creme-chips', 'all', 0, 1, 'both', 0, NULL, '', '', NULL, '0R73ZwaAuVliVStsrgwReeFxvQt0EK.png', 'jk2EeKtidDK2HKFwricFOXz3Oda4e5.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 1, '2023-07-11 16:21:41', '2023-07-19 14:01:53'),
(57, '73', 'REESE\'S PIECES Minis Peanut Butter Candy', 'reeses-pieces-minis-peanut-butter-candy', 'all', 0, 1, 'both', 0, NULL, '', '', NULL, 'QnODYqZPxaihyBWpiOQBr7vj36zUH2.png', '3OfbK3JXAYrdqD5c0thBrJF9RXje8Z.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 1, 0, 0, 0, 1, 1, '2023-07-11 16:23:02', '2023-07-19 13:18:52'),
(59, '75', 'Greeting Card', 'greeting-card', NULL, 0, 1, 'both', 0, NULL, '', '', NULL, '5AU3Wpn96sT7CzkheC72bkdwzQBPfQ.png', 'XJXtYulRrqetupl0hvbVhSCr6YPGHN.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 0, 0, 1, 0, 1, 1, '2023-07-11 16:24:22', '2023-07-19 13:20:44'),
(61, '77', 'GIFT CARD $25', 'gift-card-25', NULL, 0, 1, 'pickup', 0, NULL, '', '', NULL, 'kEOVdYIYp9vxwplT4OAHN75kgep8jk.png', 'e0E9q34pHoiAFXQmRic4HhR7lX9ZAo.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 1, 1, '2023-07-11 16:27:55', '2023-07-19 13:17:34'),
(62, '79', 'GIFT CARD $50', 'gift-card-50', NULL, 0, 1, 'pickup', 0, NULL, '', '', NULL, '5oFJbgS6RayPAROyYyEzZpAMhs7z3N.png', 'FqLqHlIJs9uweKWLDiSoSPHxHQyEtZ.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 2, 1, '2023-07-11 16:29:11', '2023-07-19 13:16:57'),
(63, '80', 'GIFT CARD $100', 'gift-card-100', NULL, 0, 1, 'pickup', 0, NULL, '', '', NULL, 'ZizxentY9oCsnjLuAU3k5CKXQjfbL0.png', 'vHN0I7xkwFSkCOT7uVatnrSpD6uYwv.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 4, 1, '2023-07-11 16:30:14', '2023-07-19 13:17:46'),
(64, '85', 'Carrot Cake', 'carrot-cake', 'all', 1, 1, 'both', 1, NULL, '<p>Carrot Cake single servings in this perfectly sized jar is packed full and layered with and ever so silky cream cheese icing.</p>', '<p>Sweets, sugars, icing (powdered), Butter, unsalted, Sweets, sugars, granulated, Carrot, raw, Grains, wheat flour, white, all purpose, bleached, Egg, chicken, whole, fresh or frozen, raw, Milk, fluid,buttermilk, cultured, whole, Vegetable oil, corn and canola, Leavening agent, baking soda, Leavening agent, baking powder, double acting, sodium, aluminium sulfate, Spices, cinnamon, ground, Spices, ginger, ground, Vanilla extract, Spices, nutmeg, ground</p>', NULL, 'I4vC05fyjH8BHBDDblwUcj4U9QORhu.png', 'O8OQCyPc7A3MIrbAAn7fh8hTCLZtaj.png', 'OYDMT07n6zk9XhWLOB5aJ9oOeMXFjP.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:36:15', '2023-08-17 11:31:41'),
(65, '86', 'Red Velvet Cake', 'red-velvet-cake', 'all', 1, 1, 'both', 1, NULL, '<p>Red Velvet Cake single servings in this perfectly sized jar is packed full, rich in colour and taste, layered with and ever so silky cream cheese icing.</p>', '<p>Sweets, sugars, icing (powdered), Butter, unsalted, Sweets, sugars, granulated, Grains, wheat flour, white, all purpose, bleached, Cheese, cream, Milk, fluid, buttermilk, cultured, whole, Vegetable oil, canola, Egg, chicken, whole, fresh or frozen, raw, Sweets, cocoa, powder, unsweetened, dutch process, Vinegar, distilled (white), Leavening agent, baking soda, Vanilla extract, Salt, table</p>', NULL, 'jUlThFq3l6dmP2L9ornBckd6uXHOH7.png', 'zFgQ23TBatHSd0WTp3nn2jiqesTc2k.png', 'CXBjOAwLMruGmPbutiOZ2dxBRlYjPU.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:39:17', '2023-08-17 11:13:16'),
(66, '87', 'Birthday Cake', 'birthday-cake', 'all', 1, 1, 'both', 1, NULL, '<p>Funfetti Cake single servings in this perfectly sized jar is packed full of moist cake layered with a Vegan frosting. This is an eggless and dairy free cake jar (Vegan)</p>', '', NULL, '1LcUO9610GqGVFKovxHck1E3GXJtGu.png', 'AiauKoqkIqLrEVQELUAlawTrGQmmIC.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:39:33', '2023-08-17 11:34:13'),
(67, '88', 'Chocolate Fudge Cake', 'chocolate-fudge-cake', 'all', 1, 1, 'both', 1, NULL, '<p>Double Fudge Cake single servings in this perfectly sized jar is packed full of moist cake layered with chocolate ganache. This is an eggless and dairy free cake jar (Vegan)</p>', '<p>Sweets, sugars, icing (powdered), Beverages, almond milk, unsweetened, shelf stable, Shortening, industrial, all purpose, soy and palm, Sweets, sugars, granulated, Grains, wheat flour, white, all purpose, bleached, Sweets, cocoa, powder, unsweetened, dutch process, Vegetable oil, canola, Sweets, syrups, corn, dark, Pumpkin, canned, without salt, Vanilla extract, Vinegar, distilled (white), Salt, table, Leavening agent, baking soda</p>', NULL, 'RDtqbRUPRoqM0DAXJJAgfVvvfuXIp9.png', '0hetzN4IRC8WeRIeyCfi3ZNCD0Dmsi.png', 'FCi3Lg87E3QZEaSYkl86hQ5Z1rxcDj.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:41:07', '2023-08-17 11:12:10'),
(68, '89', 'Strawberry Shortcake', 'strawberry-shortcake', 'all', 1, 1, 'both', 1, NULL, '<p>Vanilla Cake single servings in this perfectly sized jar is packed full of moist cake layered with a Vegan frosting and strawberry coulis. This is an eggless and dairy free cake jar (Vegan)</p>', '<p>Strawberry, frozen, unsweetened, Sweets, sugars, granulated, Grains, wheat flour, white, all purpose, bleached, Milk, fluid, buttermilk, cultured, whole, Butter, unsalted, Egg, white, raw, fresh, Eggs, Grade A, Large, egg yolk, Lemon juice, raw, Grains, cornstarch, Leavening agent, baking powder, double acting, sodium, aluminium sulfate, Vanilla extract, Salt, table</p>', NULL, 'HBj7Qb4xDtTx8oCTDGvO8TOSsuNIc8.png', '0zzpgAYsJl21595jlYTRQrIgriTxzA.png', 'oYDy8SZF5JmbioXNJuucWFwtgUL8xg.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:42:09', '2023-08-17 11:10:49'),
(69, '90', 'Assorted Cake Jars', 'assorted-cake-jars', 'all', 1, 1, 'both', 1, NULL, '', '', NULL, 'dummy.png', 'dummy.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-11 16:43:04', '2023-08-17 11:32:48'),
(102, '124', 'Goat Cheese And Vegetable', 'goat-cheese-and-vegetable', 'all', 1, 1, 'both', 1, NULL, '<p>Traditional French egg custard tart mixed with goats&rsquo; cheese, spinach, and peppers.</p>', 'Egg, chicken, yolk, fresh or frozen, raw, Milk, fluid, whole, producer, 3.7% M.F., Cream, whipping, 32% M.F., Grains, wheat flour, white, all purpose, bleached, Shortening, household, lard and vegetable oil, Water, municipal, Mushrooms, white, raw, Pepper, sweet, red, raw, Spinach, raw, Salt, table, Pepper, black, Garlic powder', NULL, 'i1ZIsDTrzTr1C9lhWvkgtsVZJF4VDE.png', '16mchHNIwtUhhMV1nIMJmTKDstPixA.png', 'n4APPJMBDHYItJbf4bF2OX61XEHXCY.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-12 10:50:43', '2023-08-14 10:21:57'),
(103, '125', 'Jalapeno Monterey Jack', 'jalapeno-monterey-jack', 'all', 1, 1, 'both', 1, NULL, '<p>Traditional French egg custard tart mixed with jalapeno Monterey jack cheese, spinach and peppers mix,</p>', 'Eggs, Grade A, Large, egg whole, Milk, fluid, whole, producer, 3.7% M.F., Cream, whipping, 35% M.F., Wheat flour, white, all-purpose, enriched, bleached, Shortening, household, unspecified vegetable oil, Salt, Cheese, Cheddar, English, Water, municipal, Mushrooms, white, raw, Pepper, sweet, red, raw, Onions, raw, Spinach, raw, Spices, pepper, black', NULL, 'lUWkXGFTOhufvfnmYcyCPyVkhosfQS.png', 'TLKd3sQ9qBR6IeNEKxCYvR1yOd5Mei.png', 'OeXFwOftoTle8hi7EWIdewixdoDkvW.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-12 10:54:38', '2023-07-21 14:50:01'),
(110, '132', 'GIFT CARD $75', 'gift-card-75', NULL, 0, 1, 'pickup', 0, NULL, '', '', NULL, 'Tc0AdyB4YtVE9814sjdfjEP5SVZbTz.png', 'hFXfx5HI8SN73iohF1ZbIlVvytfRH2.png', 'dummy.png', 'dummy.png', '6', NULL, NULL, NULL, NULL, NULL, 0, 1, 0, 0, 3, 1, '2023-07-12 17:20:52', '2023-07-19 13:17:20'),
(111, '133', 'Aged Cheddar and Pancetta', 'aged-cheddar-and-pancetta', 'all', 1, 1, 'both', 1, NULL, '<p>Traditional French egg custard tart mixed with aged white cheddar and crispy pancetta.</p>', 'Eggs, Grade A, Large, egg whole, Milk, fluid, whole, producer, 3.7% M.F., Cream, whipping, 32% M.F., Flour, whole wheat, unenriched, Shortening, household, unspecified vegetable oil, Salt, table, Pork, cured, bacon, unprepared, Water, municipal, Cheese, cheddar, Onion, raw, Spices, pepper, black', NULL, 'a7XQMpHLfOT4hEEv1WSS8jCprwf2nR.png', 'REyiclrEAokh6GblGEDgxRM3QWja7D.png', 'rtFurkLSeHifFTWs8yIgW3IJjUPIWU.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 11:26:28', '2023-08-14 10:49:48'),
(112, '134', 'Spanakopita', 'spanakopita', 'all', 1, 1, 'both', 1, NULL, '<p>Traditional French egg custard tart mixed spinach, fetta, and oregano.</p>', '<p>Egg, chicken, white, fresh or frozen, raw, Milk, fluid, whole, producer, 3.7% M.F., Cream, whipping, 32% M.F., Flour, whole wheat, unenriched, Shortening industrial, lard and vegetable oil, Spinach, raw, Cheese, ricotta, whole milk, Salt, Onions, raw</p>', NULL, 'f6C0whj29KBXvr1lNiBLl40YDFbhsf.png', 'S3ovNN8hEWbhU6QiVicGwFEFI1Lk7P.png', 'ARipiZxON3WNT0qnqZ01dtAtcfck5t.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 11:31:12', '2023-08-16 15:14:19'),
(118, '136', 'Date Squares', 'date-squares', NULL, 1, 1, 'both', 1, NULL, '<p>Our date squares are a classic Canadian dessert made from dates with a toasted oat topping. We use vegan butter so to ensure this treat can be enjoyed by all.</p>', '', NULL, 'dummy.png', 'dummy.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 14:16:39', '2023-08-17 11:00:55'),
(124, '145', 'Assorted Cookie Box', 'assorted-cookie-box', 'all', 1, 1, 'both', 1, NULL, '', '', NULL, 'dummy.png', 'BXS52rodNrc9IAPIgp1ARpTVpUkCgU.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:04:48', '2023-08-17 10:55:54'),
(125, '146', 'Chocolate Chip Cookie', 'chocolate-chip-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>Our soft and chewy chocolate chip cookies are made with the finest Belgian Milk Chocolate. They are a classic and they are delicious.</p>', '<p>Grains, wheat flour, white, all purpose, bleached, Butter, unsalted, Chocolate, milk, Chocolate, dark, 45- 59% cacao solids, Sweets, sugar, brown, Sweets, sugars, granulated, Egg, chicken, whole, fresh or frozen, raw, Vanilla extract, Leavening agent, baking soda, Salt, table</p>', '<p>Pre heat your oven at 325 F</p><p>Bake for 11-14minS</p>', 'byUyYt6EPF59StKqg5P0UVeZUFEDL5.png', '0zMuUtlVliMYGf26zJAYifo1Hg43Ec.png', 'iRVsDIsMDNNKjBNMbV4lbig7dZq34g.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:11:11', '2023-08-17 10:54:53'),
(126, '147', 'Nutella-filled Cookie', 'nutella-filled-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>Our chocolate cookie is stuffed with Nutella hazelnut spread. It&#39;s like having two desserts in one!</p>', '<p>Grains, wheat flour, white, all purpose, bleached, Butter, unsalted, Sweets, sugar, brown, Sweets, sugars, granulated, Egg, chicken, whole, fresh or frozen, raw, Sweets, cocoa, powder, unsweetened, dutch process, Grains, cornstarch, Milk, fluid, whole, producer, 3.7% M.F., Leavening agent, baking soda</p>', '<p>Pre heat your oven at 325 F</p><p>Bake for 11-14minS</p>', '1FjISHa24Yu8zLcq7PxshZRvz9mZ6y.png', 'mjGWWZoPjSReCmAsJsQE0TNp8lY3GV.png', 'Ue9kqijkT1NNvDTlIbhRDjTIuRKmYR.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:15:29', '2023-08-17 10:54:08'),
(127, '148', 'Peanut Butter Cookie', 'peanut-butter-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>Crunchy peanut butter and peanut butter chips all packed into a flourless cookie. Believe me, if you love peanut butter then this is your jam!!</p>', '<p>Peanut butter, smooth type, fat and sugar added, Sweets, sugars, granulated, Egg, chicken, whole, fresh or frozen, raw, Leavening agent, baking soda, Vanilla extract</p>', '<p>pre heat your over at 350 F</p><p>Bake for 10mins</p>', 'MOtYgbuijXTQ4A3gLB9tXgxnZh86d7.png', '3bZMIFlDkW3K92E6xzlapMDFKG6XXc.png', 'aYaqo7E1UpbQmTBqC1rNHo6VqjHijB.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:20:07', '2023-08-17 10:53:16'),
(128, '149', 'Red Velvet Cookie', 'red-velvet-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>This decadent cookie is bursting with cocoa and white chocolate. Its vibrant colour will draw you in but its taste will having your coming back for a second!</p>', '<p>Chocolate, white, Grains, wheat flour, white, all purpose, bleached, Butter, unsalted, Sweets, sugar, brown, Sweets, sugars, granulated, Egg, chicken, whole, fresh or frozen, raw, Sweets, cocoa, powder, unsweetened, dutch process, Egg, chicken, yolk, fresh or frozen, raw, Leavening agent, baking powder, double acting, sodium, aluminium sulfate, Salt, table, Red Food Colouring</p>', '<p>Pre heat your oven at 325 F&nbsp;</p><p>Bake for 11-14mins</p>', '5DcFNAfxHB7uJczVNKXgVH498XqJwF.png', 'yezX4UpahqiMqUk6bn78Bpm6h7nX5Y.png', 'JWi34ujtwGObjJFRIT33sax6t9zHtx.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:25:05', '2023-08-17 10:52:32'),
(129, '150', 'S\'mores Cookie', 'smores-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>This campfire favourite can be enjoyed all year round. Our yummy Belgian chocolate chip cookie mixed with marshmallows and graham crackers, baked together into a melty gooey cookie.</p>', '<p>Grains, wheat flour, white, all purpose, bleached, Butter, unsalted, Chocolate, dark, 45- 59% cacao solids, Sweets, sugar, brown,Cookie, graham cracker, plain or honey, low fat, Sweets, sugars, granulated, Egg, chicken, whole, fresh or frozen, raw, Marshmallows, Vanilla extract, Grains, cornstarch, Leavening agent, baking powder, double acting, sodium, aluminium sulfate, Leavening agent, baking soda, Salt, table</p>', '<p>Pre heat your over at 320 F</p>', 'eJotDYKGgAQKVe1aYGRpuBlwFlz9VM.png', 'GnVhmJvZ1cF4G1SeACYE001LLUFd4W.png', 'FWElHPRbNTZJYHcxA83NWdraUyR3ML.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:28:51', '2023-08-17 10:29:13'),
(130, '152', 'Oreo Cookie', 'oreo-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>This cookie is exactly as it sounds!! A chewy soft cookie mixed with Oreo pieces and crumbs. Its every cookie lovers dream!</p>', '<p>White Chocolate Chips, Granulated Sugars, Brown Sugar, Eggs, Butter (unsalted), Chocolate-covered Wafer Biscuit, Flour, Salt, Vanilla Extract, Baking Soda</p>', '<p>Pre heat your oven at 325 F&nbsp;</p><p>Bake for 11-14mins</p>', 'yjnJOlGuz3UtSIDXVc0xtXG93foVNr.png', 'fEaqVzaQeTMcAcd2T4JUwcDuI85N83.png', 'xWiTCmjaKZ9gIoH3TLbYcVIgtJhPGg.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:33:45', '2023-08-17 10:51:25'),
(131, '153', 'Rainbow Cookie', 'rainbow-cookie', 'all', 1, 1, 'both', 1, NULL, '<p>Created for PRIDE Month, our Rainbow cookie is now a staple all year long. It&rsquo;s a white cookie stuffed with Belgian white chocolate chips and rolled in sprinkles. It&rsquo;s the cookie perfect for every celebration!!</p>', '', '<p>Pre heat your oven at 325 F&nbsp;</p><p>Bake for 11-14mins</p>', '0cQjJsTpmoUlJQiufKijhMz7aHZm2i.png', 'eXqzMEd5V5b8765NDnUqIxVDXPC2ZN.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-18 15:36:19', '2023-08-17 10:51:33'),
(149, '161', 'Apple Pie', 'apple-pie', NULL, 1, 1, 'both', 1, NULL, '<p>When I think of our apple pie, I think of home. Layers of warm spiced apples, fragrant and delicious. All beneath our flaky light crust. It&#39;s like a warm hug on a cold day.</p>', '<p>Apple, frozen, sliced, unsweetened, unheated, Grains, wheat flour, white, all purpose, bleached, Shortening, industrial, all purpose, soy and palm, Water, municipal, Sweets, sugars, granulated, Margarine, tub, non-hydrogenated, canola oil (includes some sunflower oil), lactose free, vegan, Grains, cornstarch, Lemon juice, canned or bottled, Salt, table, Spices, cinnamon, ground, Spices, nutmeg, ground</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen. brush your frozen pie with milk or a non-dairy milk for vegan option (Sprinkle your fruit pies with sugar to get a little crunch)</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown and the center bubbles.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', '3KrpnBxdQrdln60OvIJWQyruGDQAME.png', 'S3hKb0LllfLeObymSbK0x1Imo3M7Sc.png', 'VRprUqoDKmJNnPtmLQI3xUEUiUwjuQ.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:17:16', '2023-08-16 08:01:52'),
(150, '162', 'Cherry Pie', 'cherry-pie', NULL, 1, 1, 'both', 1, NULL, '<p>This pie has the brightest and sourest of cherries. It&rsquo;s a feast for the eyes and the taste buds. Add a dollop of vanilla ice cream on top of a warm cherry pie, it&#39;s like a little taste of heaven.</p>', '<p>Cherry sour, red, frozen, unsweetened, Grains, wheat flour, white, all purpose, bleached, Water, municipal, Sweets, sugars, granulated, Shortening, industrial, all purpose, soy and palm, Grains, cornstarch, Lemon juice, canned or bottled, Salt, table, Almond Extract</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen. brush your frozen pie with milk or a non-dairy milk for vegan option (Sprinkle your fruit pies with sugar to get a little crunch)</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown and the center bubbles.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'LWeFtmN5aVwQHVI77mjx49bomxARGR.png', 'muLxxYOv4OskvwzjlVt037kKtfQ7kQ.png', 'lJvImMfG2LgnJHPDJKCzfYY5u2OHNg.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:19:27', '2023-08-16 08:04:44'),
(151, '163', 'Blueberry Pie', 'blueberry-pie', NULL, 1, 1, 'both', 1, NULL, '<p>Wild and Fresh is the best way to describe our Blueberry Pie. Made with wild blueberries, freshly squeezed lemon juice and a pinch of sugar, this not too sweet pie is a classic and customer fav.</p>', '<p>Blueberry, wild, raw, Grains, wheat flour, white, all purpose, bleached, Water, municipal, Sweets, sugars, granulated, Shortening, industrial, all purpose, soy and palm, Lemon juice, canned or bottled, Grains, cornstarch, Salt, table</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen. brush your frozen pie with milk or a non-dairy milk for vegan option (Sprinkle your fruit pies with sugar to get a little crunch)</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown and the center bubbles.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', 'PlFKO9na3aMnXQm3ngCCPHOTIJaVHs.png', 'DzPpdigYdUfl3ayk3FbyUV2XSATpdu.png', '3EQnpB0phAjuRQ8bLBRaJNDTiajyZD.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:22:44', '2023-08-16 07:56:58'),
(152, '164', 'Strawberry Rhubarb Pie', 'strawberry-rhubarb-pie', NULL, 1, 1, 'both', 1, NULL, '<p>This is your Mom&rsquo;s favourite pie! Sweet red strawberries mixed with rhubarb, the perfect amount of tart and sweet. I dare all rhubarb naysayers to try this one!</p>', '<p>Rhubarb, frozen, uncooked, Strawberry, frozen, unsweetened, Grains, wheat flour, white, all purpose, bleached, Water, municipal, Shortening, industrial, all purpose, soy and palm, Sweets, sugars, granulated, Grains, cornstarch, Lemon juice, canned or bottled, Salt, table</p>', '<p>Step 1</p><p>Pre heat your oven to 400&deg;F</p><p>Step 2</p><p>For a nice golden/brown sheen. brush your frozen pie with milk or a non-dairy milk for vegan option (Sprinkle your fruit pies with sugar to get a little crunch)</p><p>Step 3</p><p>Bake the pie for 35-45 minutes for small and 50-60 minutes for a large or until the crust is golden brown and the center bubbles.</p><p>Step 4</p><p>Enjoy your Sweetie Pie</p>', '17N2kZATQb5imXb29BPdjJrRgl98kB.png', 'nuUiKK2oqMnPsLOKpbLbryHmBLsTWn.png', 'scLTuzevUl8L8C3XH79XQm17rg84Wi.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:25:01', '2023-08-16 08:05:42'),
(153, '165', 'Pecan Pie', 'pecan-pie', NULL, 1, 1, 'both', 1, NULL, '<p>This pie is traditionally a southern US favorite, but our pecan pie delights all us Northerners. Its sweet like just like us Canadians.</p>', '<p>Sweets, syrups, corn, dark, Grains, wheat flour, white, all purpose, bleached, Sweets, sugar, brown, Egg, chicken, whole, fresh or frozen, raw, Shortening, industrial, all purpose, soy and palm, Nuts, pecans, dried, Butter, unsalted, sweets, syrups, maple, prepackaged, Water, municipal, Vanilla extract, Sweets, sugars, granulated, Salt, table</p>', NULL, '7RgD1nRbDELbfS4SDMZzwVubHpzo8j.png', '6ZWWooljDkpSKajJ4H3zNHScbTwAzt.png', 'UPlP2OkjH6zcEemcFSy4g0PzGpT8wc.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:27:18', '2023-08-16 08:09:49'),
(154, '166', 'Chocolate Bourbon Pecan Pie', 'chocolate-bourbon-pecan-pie', NULL, 1, 1, 'both', 1, NULL, '<p>Now this is your Dad&rsquo;s favourite pie. Take the sweetness of our traditional pecan, add dark chocolate and a shot of bourbon! Good luck getting dad to share!</p>', 'Sweets, syrups, corn, dark, Grains, wheat flour, white, all purpose, bleached, Sweets, sugar, brown, Shortening, industrial, all purpose, soy and palm, Nuts, pecans, Butter, unsalted, Water, municipal, sweets, syrups, maple, prepackaged, Sweets, sugars, granulated, Vanilla extract, Sweets, cocoa, powder, unsweetened, dutch process, Salt, table, Jack Daniels', NULL, 'SwmYxlig4wc6elIlkH1lMqLQRSaQCF.png', 'XHPrWnK8SYXlI6LykSmJpkakuFfrIX.png', 'jqBwIUkUwN39bSg7rsNliQajN7rIhm.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:30:14', '2023-07-25 14:19:31'),
(155, '167', 'Lemon Pie', 'lemon-pie', NULL, 1, 1, 'both', 1, NULL, '<p>Our Lemon Meringue Pie will make you pucker. Our lemon curd is made from freshly squeezed lemon juice with just a touch of sweetness to balance the sour.</p>', '<p>Lemon juice, raw, Milk, fluid, whole, pasteurized, homogenized, 3.25% M.F., Eggs, Grade A, Large, egg white, Sweets, sugars, granulated, Grains, wheat flour, white, all purpose, unbleached, Shortening, special purpose, baking, Egg, chicken, whole, fresh or frozen, raw, Butter, unsalted, Water, municipal, Grains, cornstarch, Salt, table</p>', NULL, 'Xz9DDLcs8qUmfx2hBDh0xhqn61xxJV.png', 'O0nZoYyHmHdHmZfWbCne1eNEycWK4N.png', 'Kwxd82CiLx8j7zd1R6sOEfDQGAPDVp.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:35:52', '2023-08-16 08:10:24'),
(156, '168', 'Pumpkin Pie', 'pumpkin-pie', NULL, 1, 1, 'both', 1, NULL, '<p>I don&#39;t care what season it is, pumpkin pie is the best. Cinnamon and allspice, smooth and creamy. Whipped cream and warm crust? This is meant to be enjoyed 365 days a year!</p>', '<p>Pumpkin, canned, Grains, wheat flour, white, all purpose, bleached, Sweets, sugar, brown, Egg, chicken, whole, fresh or frozen, raw, Shortening, industrial, all purpose, soy and palm, Sweets, sugars, granulated, Water, municipal, Egg, chicken, yolk, fresh or frozen, raw, Spices, ginger, ground, Spices, cinnamon, ground, Salt, table, Spices, nutmeg, ground, Spices, cloves, ground, Spices, allspice, ground</p>', NULL, 'dummy.png', 'dummy.png', 'dummy.png', 'dummy.png', '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-07-19 16:38:13', '2023-08-16 08:39:12'),
(165, '198', 'TEST PRODUCT', 'test-product', 'in-store', 1, 1, 'both', 0, NULL, '', '', NULL, NULL, NULL, NULL, NULL, '8', NULL, NULL, NULL, NULL, NULL, 0, 0, 0, 1, 1, 1, '2023-08-17 12:23:25', '2023-08-17 12:25:25');

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

--
-- Dumping data for table `product_cities`
--

INSERT INTO `product_cities` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(26813, 64, 14, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26812, 64, 15, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26811, 64, 16, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26810, 64, 17, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26809, 64, 18, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26808, 64, 19, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26807, 64, 20, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26806, 64, 21, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26805, 64, 22, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26804, 64, 23, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26803, 64, 24, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26802, 64, 25, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26801, 64, 26, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26800, 64, 27, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26799, 64, 28, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26798, 64, 29, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26797, 64, 30, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26796, 64, 31, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26795, 64, 32, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26794, 64, 33, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26793, 64, 34, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26792, 64, 35, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26791, 64, 36, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26790, 64, 37, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26789, 64, 38, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26788, 64, 39, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26787, 64, 40, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26786, 64, 41, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26785, 64, 42, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26784, 64, 43, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26783, 64, 44, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26782, 64, 45, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26781, 64, 46, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26780, 64, 47, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26779, 64, 48, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26778, 64, 49, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26777, 64, 50, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26776, 64, 51, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26775, 64, 52, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26774, 64, 53, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26773, 64, 54, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26772, 64, 55, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26771, 64, 56, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26770, 64, 57, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26769, 64, 58, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26768, 64, 59, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26767, 64, 60, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26766, 64, 61, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26765, 64, 62, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26764, 64, 63, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(24803, 112, 14, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24802, 112, 15, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24801, 112, 16, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24800, 112, 17, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24799, 112, 18, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24798, 112, 19, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24797, 112, 20, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24796, 112, 21, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24795, 112, 22, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24794, 112, 23, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24793, 112, 24, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24792, 112, 25, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24791, 112, 26, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24790, 112, 27, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24789, 112, 28, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24788, 112, 29, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(22994, 150, 14, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22993, 150, 15, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22992, 150, 16, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22991, 150, 17, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22990, 150, 18, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22989, 150, 19, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(24787, 112, 30, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24786, 112, 31, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24785, 112, 32, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(14083, 103, 14, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14082, 103, 15, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14081, 103, 16, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14080, 103, 17, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14079, 103, 18, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14078, 103, 19, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14077, 103, 20, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14076, 103, 21, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14075, 103, 22, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(21453, 102, 14, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21452, 102, 15, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21451, 102, 16, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21450, 102, 17, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21449, 102, 18, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21448, 102, 19, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(24784, 112, 33, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24783, 112, 34, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24782, 112, 35, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24781, 112, 36, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24780, 112, 37, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24779, 112, 38, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(23999, 25, 14, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23998, 25, 15, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23997, 25, 16, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23996, 25, 17, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23995, 25, 18, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23994, 25, 19, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(26746, 26, 14, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26745, 26, 15, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26744, 26, 16, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26743, 26, 17, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26742, 26, 18, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26741, 26, 19, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(23932, 27, 14, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23931, 27, 15, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23930, 27, 16, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23929, 27, 17, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23928, 27, 18, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23927, 27, 19, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23731, 28, 14, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23730, 28, 15, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23729, 28, 16, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23728, 28, 17, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23727, 28, 18, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23726, 28, 19, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23664, 29, 14, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23663, 29, 15, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23662, 29, 16, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23661, 29, 17, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23660, 29, 18, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23659, 29, 19, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23798, 30, 14, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23797, 30, 15, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23796, 30, 16, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23795, 30, 17, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23794, 30, 18, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23793, 30, 19, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23865, 31, 14, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23864, 31, 15, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23863, 31, 16, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23862, 31, 17, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23861, 31, 18, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23860, 31, 19, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(26478, 34, 14, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26477, 34, 15, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26476, 34, 16, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26475, 34, 17, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26474, 34, 18, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26473, 34, 19, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(14074, 103, 23, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14073, 103, 24, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14072, 103, 25, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14071, 103, 26, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14070, 103, 27, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14069, 103, 28, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(26472, 34, 20, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26471, 34, 21, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26470, 34, 22, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26469, 34, 23, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26468, 34, 24, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26467, 34, 25, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(14068, 103, 29, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14067, 103, 30, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14066, 103, 31, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14065, 103, 32, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14064, 103, 33, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14063, 103, 34, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14062, 103, 35, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14061, 103, 36, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14060, 103, 37, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14059, 103, 38, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14058, 103, 39, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14057, 103, 40, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(26344, 40, 14, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26343, 40, 15, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26342, 40, 16, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26341, 40, 17, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26340, 40, 18, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26339, 40, 19, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(24778, 112, 39, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24777, 112, 40, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24776, 112, 41, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24775, 112, 42, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24774, 112, 43, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24773, 112, 44, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(14056, 103, 41, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14055, 103, 42, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14054, 103, 43, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14053, 103, 44, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14052, 103, 45, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14051, 103, 46, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(24772, 112, 45, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24771, 112, 46, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24770, 112, 47, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24769, 112, 48, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24768, 112, 49, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24767, 112, 50, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24766, 112, 51, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24765, 112, 52, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24764, 112, 53, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24763, 112, 54, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24762, 112, 55, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24761, 112, 56, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(22988, 150, 20, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22987, 150, 21, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22986, 150, 22, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22985, 150, 23, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22984, 150, 24, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22983, 150, 25, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(24760, 112, 57, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24759, 112, 58, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24758, 112, 59, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24757, 112, 60, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24756, 112, 61, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24755, 112, 62, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(22982, 150, 26, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22981, 150, 27, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22980, 150, 28, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22979, 150, 29, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22978, 150, 30, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22977, 150, 31, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22976, 150, 32, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22975, 150, 33, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22974, 150, 34, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22973, 150, 35, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22972, 150, 36, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22971, 150, 37, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22970, 150, 38, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22969, 150, 39, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22968, 150, 40, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22967, 150, 41, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22966, 150, 42, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22965, 150, 43, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22964, 150, 44, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22963, 150, 45, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22962, 150, 46, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22961, 150, 47, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22960, 150, 48, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22959, 150, 49, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(24754, 112, 63, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24753, 112, 64, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24752, 112, 65, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24751, 112, 66, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24750, 112, 67, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24749, 112, 68, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(22958, 150, 50, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22957, 150, 51, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22956, 150, 52, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22955, 150, 53, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22954, 150, 54, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22953, 150, 55, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(24748, 112, 69, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24747, 112, 70, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24746, 112, 71, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24745, 112, 72, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24744, 112, 73, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24743, 112, 74, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24742, 112, 75, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24741, 112, 76, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24740, 112, 77, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24739, 112, 78, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24738, 112, 79, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(24737, 112, 80, '2023-08-16 08:14:19', '2023-08-16 08:14:19'),
(26763, 64, 64, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26762, 64, 65, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26761, 64, 66, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26760, 64, 67, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26759, 64, 68, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26758, 64, 69, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26679, 65, 14, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26678, 65, 15, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26677, 65, 16, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26676, 65, 17, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26675, 65, 18, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26674, 65, 19, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26612, 67, 14, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26611, 67, 15, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26610, 67, 16, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26609, 67, 17, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26608, 67, 18, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26607, 67, 19, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26545, 68, 14, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26544, 68, 15, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26543, 68, 16, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26542, 68, 17, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26541, 68, 18, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26540, 68, 19, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(27014, 69, 14, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27013, 69, 15, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27012, 69, 16, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27011, 69, 17, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27010, 69, 18, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27009, 69, 19, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(14050, 103, 47, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14049, 103, 48, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14048, 103, 49, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14047, 103, 50, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14046, 103, 51, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14045, 103, 52, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14044, 103, 53, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14043, 103, 54, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14042, 103, 55, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14041, 103, 56, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14040, 103, 57, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14039, 103, 58, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14038, 103, 59, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14037, 103, 60, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14036, 103, 61, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14035, 103, 62, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14034, 103, 63, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14033, 103, 64, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14032, 103, 65, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14031, 103, 66, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14030, 103, 67, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14029, 103, 68, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14028, 103, 69, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14027, 103, 70, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14026, 103, 71, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14025, 103, 72, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14024, 103, 73, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14023, 103, 74, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14022, 103, 75, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14021, 103, 76, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14020, 103, 77, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14019, 103, 78, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14018, 103, 79, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(14017, 103, 80, '2023-07-21 10:50:02', '2023-07-21 10:50:02'),
(21587, 111, 14, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21586, 111, 15, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21585, 111, 16, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21584, 111, 17, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21583, 111, 18, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21582, 111, 19, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21581, 111, 20, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21580, 111, 21, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21579, 111, 22, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21578, 111, 23, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21577, 111, 24, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21576, 111, 25, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21575, 111, 26, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21574, 111, 27, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21573, 111, 28, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21572, 111, 29, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21571, 111, 30, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21570, 111, 31, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21569, 111, 32, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21447, 102, 20, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21446, 102, 21, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21445, 102, 22, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21444, 102, 23, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21443, 102, 24, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21442, 102, 25, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21441, 102, 26, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21440, 102, 27, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21439, 102, 28, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21438, 102, 29, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21437, 102, 30, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21436, 102, 31, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21435, 102, 32, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21434, 102, 33, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21433, 102, 34, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21432, 102, 35, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21431, 102, 36, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21430, 102, 37, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21429, 102, 38, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21428, 102, 39, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21427, 102, 40, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21426, 102, 41, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21425, 102, 42, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21424, 102, 43, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21423, 102, 44, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21422, 102, 45, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21421, 102, 46, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21420, 102, 47, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21419, 102, 48, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21418, 102, 49, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21417, 102, 50, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21416, 102, 51, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21415, 102, 52, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21414, 102, 53, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21413, 102, 54, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21412, 102, 55, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21411, 102, 56, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21410, 102, 57, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21409, 102, 58, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21408, 102, 59, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21407, 102, 60, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21406, 102, 61, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21405, 102, 62, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21404, 102, 63, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21403, 102, 64, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21402, 102, 65, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21401, 102, 66, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21400, 102, 67, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21399, 102, 68, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21398, 102, 69, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21397, 102, 70, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21396, 102, 71, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21395, 102, 72, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21394, 102, 73, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21393, 102, 74, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21392, 102, 75, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21391, 102, 76, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21390, 102, 77, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21389, 102, 78, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21388, 102, 79, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21387, 102, 80, '2023-08-14 03:39:17', '2023-08-14 03:39:17'),
(21568, 111, 33, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21567, 111, 34, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21566, 111, 35, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21565, 111, 36, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21564, 111, 37, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21563, 111, 38, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21562, 111, 39, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21561, 111, 40, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21560, 111, 41, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21559, 111, 42, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21558, 111, 43, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21557, 111, 44, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21556, 111, 45, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21555, 111, 46, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21554, 111, 47, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21553, 111, 48, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21552, 111, 49, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21551, 111, 50, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21550, 111, 51, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21549, 111, 52, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21548, 111, 53, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21547, 111, 54, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21546, 111, 55, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21545, 111, 56, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21544, 111, 57, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21543, 111, 58, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21542, 111, 59, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21541, 111, 60, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21540, 111, 61, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21539, 111, 62, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21538, 111, 63, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21537, 111, 64, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21536, 111, 65, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21535, 111, 66, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21534, 111, 67, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21533, 111, 68, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21532, 111, 69, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21531, 111, 70, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21530, 111, 71, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21529, 111, 72, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21528, 111, 73, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21527, 111, 74, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21526, 111, 75, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21525, 111, 76, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21524, 111, 77, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21523, 111, 78, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21522, 111, 79, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(21521, 111, 80, '2023-08-14 03:49:48', '2023-08-14 03:49:48'),
(26757, 64, 70, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26756, 64, 71, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26755, 64, 72, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26754, 64, 73, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26753, 64, 74, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26752, 64, 75, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26751, 64, 76, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26750, 64, 77, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26749, 64, 78, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26748, 64, 79, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(26747, 64, 80, '2023-08-17 04:31:41', '2023-08-17 04:31:41'),
(23993, 25, 20, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23992, 25, 21, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23991, 25, 22, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23990, 25, 23, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23989, 25, 24, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23988, 25, 25, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23987, 25, 26, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23986, 25, 27, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23985, 25, 28, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23984, 25, 29, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23983, 25, 30, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23982, 25, 31, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23981, 25, 32, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23980, 25, 33, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23979, 25, 34, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23978, 25, 35, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23977, 25, 36, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23976, 25, 37, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23975, 25, 38, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23974, 25, 39, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23973, 25, 40, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23972, 25, 41, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23971, 25, 42, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23970, 25, 43, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23969, 25, 44, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23968, 25, 45, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23967, 25, 46, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23966, 25, 47, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23965, 25, 48, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23964, 25, 49, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23963, 25, 50, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23962, 25, 51, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23961, 25, 52, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23960, 25, 53, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23959, 25, 54, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23958, 25, 55, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23957, 25, 56, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23956, 25, 57, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23955, 25, 58, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23954, 25, 59, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23953, 25, 60, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23952, 25, 61, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23951, 25, 62, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23950, 25, 63, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23949, 25, 64, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23948, 25, 65, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23947, 25, 66, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23946, 25, 67, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23945, 25, 68, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23944, 25, 69, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23943, 25, 70, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23942, 25, 71, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23941, 25, 72, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23940, 25, 73, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23939, 25, 74, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23938, 25, 75, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23937, 25, 76, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23936, 25, 77, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23935, 25, 78, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23934, 25, 79, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(23933, 25, 80, '2023-08-16 01:33:45', '2023-08-16 01:33:45'),
(26740, 26, 20, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26739, 26, 21, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26738, 26, 22, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26737, 26, 23, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26736, 26, 24, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26735, 26, 25, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26734, 26, 26, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26733, 26, 27, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26732, 26, 28, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26731, 26, 29, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26730, 26, 30, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26729, 26, 31, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26728, 26, 32, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26727, 26, 33, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26726, 26, 34, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26725, 26, 35, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26724, 26, 36, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26723, 26, 37, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26722, 26, 38, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26721, 26, 39, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26720, 26, 40, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26719, 26, 41, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26718, 26, 42, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26717, 26, 43, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26716, 26, 44, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26715, 26, 45, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26714, 26, 46, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26713, 26, 47, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26712, 26, 48, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26711, 26, 49, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26710, 26, 50, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26709, 26, 51, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26708, 26, 52, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26707, 26, 53, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26706, 26, 54, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26705, 26, 55, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26704, 26, 56, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26703, 26, 57, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26702, 26, 58, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26701, 26, 59, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26700, 26, 60, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26699, 26, 61, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26698, 26, 62, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26697, 26, 63, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26696, 26, 64, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26695, 26, 65, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26694, 26, 66, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26693, 26, 67, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26692, 26, 68, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26691, 26, 69, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26690, 26, 70, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26689, 26, 71, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26688, 26, 72, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26687, 26, 73, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26686, 26, 74, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26685, 26, 75, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26684, 26, 76, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26683, 26, 77, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26682, 26, 78, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26681, 26, 79, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(26680, 26, 80, '2023-08-17 04:29:23', '2023-08-17 04:29:23'),
(23926, 27, 20, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23925, 27, 21, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23924, 27, 22, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23923, 27, 23, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23922, 27, 24, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23921, 27, 25, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23920, 27, 26, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23919, 27, 27, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23918, 27, 28, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23917, 27, 29, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23916, 27, 30, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23915, 27, 31, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23914, 27, 32, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23913, 27, 33, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23912, 27, 34, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23911, 27, 35, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23910, 27, 36, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23909, 27, 37, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23908, 27, 38, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23907, 27, 39, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23906, 27, 40, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23905, 27, 41, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23904, 27, 42, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23903, 27, 43, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23902, 27, 44, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23901, 27, 45, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23900, 27, 46, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23899, 27, 47, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23898, 27, 48, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23897, 27, 49, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23896, 27, 50, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23895, 27, 51, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23894, 27, 52, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23893, 27, 53, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23892, 27, 54, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23891, 27, 55, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23890, 27, 56, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23889, 27, 57, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23888, 27, 58, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23887, 27, 59, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23886, 27, 60, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23885, 27, 61, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23884, 27, 62, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23883, 27, 63, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23882, 27, 64, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23881, 27, 65, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23880, 27, 66, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23879, 27, 67, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23878, 27, 68, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23877, 27, 69, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23876, 27, 70, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23875, 27, 71, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23874, 27, 72, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23873, 27, 73, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23872, 27, 74, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23871, 27, 75, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23870, 27, 76, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23869, 27, 77, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23868, 27, 78, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23867, 27, 79, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23866, 27, 80, '2023-08-16 01:33:35', '2023-08-16 01:33:35'),
(23725, 28, 20, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23724, 28, 21, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23723, 28, 22, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23722, 28, 23, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23721, 28, 24, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23720, 28, 25, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23719, 28, 26, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23718, 28, 27, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23717, 28, 28, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23716, 28, 29, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23715, 28, 30, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23714, 28, 31, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23713, 28, 32, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23712, 28, 33, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23711, 28, 34, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23710, 28, 35, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23709, 28, 36, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23708, 28, 37, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23707, 28, 38, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23706, 28, 39, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23705, 28, 40, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23704, 28, 41, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23703, 28, 42, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23702, 28, 43, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23701, 28, 44, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23700, 28, 45, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23699, 28, 46, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23698, 28, 47, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23697, 28, 48, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23696, 28, 49, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23695, 28, 50, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23694, 28, 51, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23693, 28, 52, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23692, 28, 53, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23691, 28, 54, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23690, 28, 55, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23689, 28, 56, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23688, 28, 57, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23687, 28, 58, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23686, 28, 59, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23685, 28, 60, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23684, 28, 61, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23683, 28, 62, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23682, 28, 63, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23681, 28, 64, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23680, 28, 65, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23679, 28, 66, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23678, 28, 67, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23677, 28, 68, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23676, 28, 69, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23675, 28, 70, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23674, 28, 71, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23673, 28, 72, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23672, 28, 73, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23671, 28, 74, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23670, 28, 75, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23669, 28, 76, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23668, 28, 77, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23667, 28, 78, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23666, 28, 79, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23665, 28, 80, '2023-08-16 01:30:30', '2023-08-16 01:30:30'),
(23658, 29, 20, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23657, 29, 21, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23656, 29, 22, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23655, 29, 23, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23654, 29, 24, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23653, 29, 25, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23652, 29, 26, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23651, 29, 27, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23650, 29, 28, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23649, 29, 29, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23648, 29, 30, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23647, 29, 31, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23646, 29, 32, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23645, 29, 33, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23644, 29, 34, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23643, 29, 35, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23642, 29, 36, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23641, 29, 37, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23640, 29, 38, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23639, 29, 39, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23638, 29, 40, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23637, 29, 41, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23636, 29, 42, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23635, 29, 43, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23634, 29, 44, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23633, 29, 45, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23632, 29, 46, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23631, 29, 47, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23630, 29, 48, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23629, 29, 49, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23628, 29, 50, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23627, 29, 51, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23626, 29, 52, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23625, 29, 53, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23624, 29, 54, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23623, 29, 55, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23622, 29, 56, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23621, 29, 57, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23620, 29, 58, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23619, 29, 59, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23618, 29, 60, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23617, 29, 61, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23616, 29, 62, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23615, 29, 63, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23614, 29, 64, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23613, 29, 65, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23612, 29, 66, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23611, 29, 67, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23610, 29, 68, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23609, 29, 69, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23608, 29, 70, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23607, 29, 71, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23606, 29, 72, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23605, 29, 73, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23604, 29, 74, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23603, 29, 75, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23602, 29, 76, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23601, 29, 77, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23600, 29, 78, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23599, 29, 79, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23598, 29, 80, '2023-08-16 01:29:39', '2023-08-16 01:29:39'),
(23792, 30, 20, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23791, 30, 21, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23790, 30, 22, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23789, 30, 23, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23788, 30, 24, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23787, 30, 25, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23786, 30, 26, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23785, 30, 27, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23784, 30, 28, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23783, 30, 29, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23782, 30, 30, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23781, 30, 31, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23780, 30, 32, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23779, 30, 33, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23778, 30, 34, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23777, 30, 35, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23776, 30, 36, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23775, 30, 37, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23774, 30, 38, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23773, 30, 39, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23772, 30, 40, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23771, 30, 41, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23770, 30, 42, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23769, 30, 43, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23768, 30, 44, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23767, 30, 45, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23766, 30, 46, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23765, 30, 47, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23764, 30, 48, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23763, 30, 49, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23762, 30, 50, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23761, 30, 51, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23760, 30, 52, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23759, 30, 53, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23758, 30, 54, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23757, 30, 55, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23756, 30, 56, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23755, 30, 57, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23754, 30, 58, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23753, 30, 59, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23752, 30, 60, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23751, 30, 61, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23750, 30, 62, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23749, 30, 63, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23748, 30, 64, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23747, 30, 65, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23746, 30, 66, '2023-08-16 01:31:40', '2023-08-16 01:31:40');
INSERT INTO `product_cities` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(23745, 30, 67, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23744, 30, 68, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23743, 30, 69, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23742, 30, 70, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23741, 30, 71, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23740, 30, 72, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23739, 30, 73, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23738, 30, 74, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23737, 30, 75, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23736, 30, 76, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23735, 30, 77, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23734, 30, 78, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23733, 30, 79, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23732, 30, 80, '2023-08-16 01:31:40', '2023-08-16 01:31:40'),
(23859, 31, 20, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23858, 31, 21, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23857, 31, 22, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23856, 31, 23, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23855, 31, 24, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23854, 31, 25, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23853, 31, 26, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23852, 31, 27, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23851, 31, 28, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23850, 31, 29, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23849, 31, 30, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23848, 31, 31, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23847, 31, 32, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23846, 31, 33, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23845, 31, 34, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23844, 31, 35, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23843, 31, 36, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23842, 31, 37, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23841, 31, 38, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23840, 31, 39, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23839, 31, 40, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23838, 31, 41, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23837, 31, 42, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23836, 31, 43, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23835, 31, 44, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23834, 31, 45, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23833, 31, 46, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23832, 31, 47, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23831, 31, 48, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23830, 31, 49, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23829, 31, 50, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23828, 31, 51, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23827, 31, 52, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23826, 31, 53, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23825, 31, 54, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23824, 31, 55, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23823, 31, 56, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23822, 31, 57, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23821, 31, 58, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23820, 31, 59, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23819, 31, 60, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23818, 31, 61, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23817, 31, 62, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23816, 31, 63, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23815, 31, 64, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23814, 31, 65, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23813, 31, 66, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23812, 31, 67, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23811, 31, 68, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23810, 31, 69, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23809, 31, 70, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23808, 31, 71, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23807, 31, 72, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23806, 31, 73, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23805, 31, 74, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23804, 31, 75, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23803, 31, 76, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23802, 31, 77, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23801, 31, 78, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23800, 31, 79, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(23799, 31, 80, '2023-08-16 01:32:32', '2023-08-16 01:32:32'),
(26466, 34, 26, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26465, 34, 27, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26464, 34, 28, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26463, 34, 29, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26462, 34, 30, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26461, 34, 31, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26460, 34, 32, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26459, 34, 33, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26458, 34, 34, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26457, 34, 35, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26456, 34, 36, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26455, 34, 37, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26454, 34, 38, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26453, 34, 39, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26452, 34, 40, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26451, 34, 41, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26450, 34, 42, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26449, 34, 43, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26448, 34, 44, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26447, 34, 45, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26446, 34, 46, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26445, 34, 47, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26444, 34, 48, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26443, 34, 49, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26442, 34, 50, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26441, 34, 51, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26440, 34, 52, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26439, 34, 53, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26438, 34, 54, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26437, 34, 55, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26436, 34, 56, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26435, 34, 57, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26434, 34, 58, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26433, 34, 59, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26432, 34, 60, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26431, 34, 61, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26430, 34, 62, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26429, 34, 63, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26428, 34, 64, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26427, 34, 65, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26426, 34, 66, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26425, 34, 67, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26424, 34, 68, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26423, 34, 69, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26422, 34, 70, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26421, 34, 71, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26420, 34, 72, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26419, 34, 73, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26418, 34, 74, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26417, 34, 75, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26416, 34, 76, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26415, 34, 77, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26414, 34, 78, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26413, 34, 79, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26412, 34, 80, '2023-08-17 04:08:19', '2023-08-17 04:08:19'),
(26338, 40, 20, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26337, 40, 21, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26336, 40, 22, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26335, 40, 23, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26334, 40, 24, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26333, 40, 25, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26332, 40, 26, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26331, 40, 27, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26330, 40, 28, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26329, 40, 29, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26328, 40, 30, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26327, 40, 31, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26326, 40, 32, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26325, 40, 33, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26324, 40, 34, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26323, 40, 35, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26322, 40, 36, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26321, 40, 37, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26320, 40, 38, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26319, 40, 39, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26318, 40, 40, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26317, 40, 41, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26316, 40, 42, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26315, 40, 43, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26314, 40, 44, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26313, 40, 45, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26312, 40, 46, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26311, 40, 47, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26310, 40, 48, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26309, 40, 49, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26308, 40, 50, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26307, 40, 51, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26306, 40, 52, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26305, 40, 53, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26304, 40, 54, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26303, 40, 55, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26302, 40, 56, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26301, 40, 57, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26300, 40, 58, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26299, 40, 59, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26298, 40, 60, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26297, 40, 61, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26296, 40, 62, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26295, 40, 63, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26294, 40, 64, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26293, 40, 65, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26292, 40, 66, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26291, 40, 67, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26290, 40, 68, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26289, 40, 69, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26288, 40, 70, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26287, 40, 71, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26286, 40, 72, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26285, 40, 73, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26284, 40, 74, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26283, 40, 75, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26282, 40, 76, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26281, 40, 77, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26280, 40, 78, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26279, 40, 79, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26278, 40, 80, '2023-08-17 04:05:52', '2023-08-17 04:05:52'),
(26411, 118, 14, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26410, 118, 15, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26409, 118, 16, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26408, 118, 17, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26407, 118, 18, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26406, 118, 19, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26405, 118, 20, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26404, 118, 21, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26403, 118, 22, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26402, 118, 23, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26401, 118, 24, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26400, 118, 25, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26399, 118, 26, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26398, 118, 27, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26397, 118, 28, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26396, 118, 29, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26395, 118, 30, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26394, 118, 31, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26393, 118, 32, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26392, 118, 33, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26391, 118, 34, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26390, 118, 35, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26389, 118, 36, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26388, 118, 37, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26387, 118, 38, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26386, 118, 39, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26385, 118, 40, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26384, 118, 41, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26383, 118, 42, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26382, 118, 43, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26381, 118, 44, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26380, 118, 45, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26379, 118, 46, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26378, 118, 47, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26377, 118, 48, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26376, 118, 49, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26375, 118, 50, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26374, 118, 51, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26373, 118, 52, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26372, 118, 53, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26371, 118, 54, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26370, 118, 55, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26369, 118, 56, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26368, 118, 57, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26367, 118, 58, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26366, 118, 59, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26365, 118, 60, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26364, 118, 61, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26363, 118, 62, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26362, 118, 63, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26361, 118, 64, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26360, 118, 65, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26359, 118, 66, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26358, 118, 67, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26357, 118, 68, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26356, 118, 69, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26355, 118, 70, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26354, 118, 71, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26353, 118, 72, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26352, 118, 73, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26351, 118, 74, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26350, 118, 75, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26349, 118, 76, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26348, 118, 77, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26347, 118, 78, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26346, 118, 79, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26345, 118, 80, '2023-08-17 04:06:28', '2023-08-17 04:06:28'),
(26009, 124, 14, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26008, 124, 15, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26007, 124, 16, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26006, 124, 17, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26005, 124, 18, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26004, 124, 19, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26003, 124, 20, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26002, 124, 21, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26001, 124, 22, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(26000, 124, 23, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25999, 124, 24, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25998, 124, 25, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25997, 124, 26, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25996, 124, 27, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25995, 124, 28, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25994, 124, 29, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25993, 124, 30, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25992, 124, 31, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25991, 124, 32, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25990, 124, 33, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25989, 124, 34, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25988, 124, 35, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25987, 124, 36, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25986, 124, 37, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25985, 124, 38, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25984, 124, 39, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25983, 124, 40, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25982, 124, 41, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25981, 124, 42, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25980, 124, 43, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25979, 124, 44, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25978, 124, 45, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25977, 124, 46, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25976, 124, 47, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25975, 124, 48, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25974, 124, 49, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25973, 124, 50, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25972, 124, 51, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25971, 124, 52, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25970, 124, 53, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25969, 124, 54, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25968, 124, 55, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25967, 124, 56, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25966, 124, 57, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25965, 124, 58, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25964, 124, 59, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25963, 124, 60, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25962, 124, 61, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25961, 124, 62, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25960, 124, 63, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25959, 124, 64, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25958, 124, 65, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25957, 124, 66, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25956, 124, 67, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25955, 124, 68, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25954, 124, 69, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25953, 124, 70, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25952, 124, 71, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25951, 124, 72, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25950, 124, 73, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25949, 124, 74, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25948, 124, 75, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25947, 124, 76, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25946, 124, 77, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25945, 124, 78, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25944, 124, 79, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25943, 124, 80, '2023-08-17 03:55:54', '2023-08-17 03:55:54'),
(25942, 125, 14, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25941, 125, 15, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25940, 125, 16, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25939, 125, 17, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25938, 125, 18, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25937, 125, 19, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25936, 125, 20, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25935, 125, 21, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25934, 125, 22, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25933, 125, 23, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25932, 125, 24, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25931, 125, 25, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25930, 125, 26, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25929, 125, 27, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25928, 125, 28, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25927, 125, 29, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25926, 125, 30, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25925, 125, 31, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25924, 125, 32, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25923, 125, 33, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25922, 125, 34, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25921, 125, 35, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25920, 125, 36, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25919, 125, 37, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25918, 125, 38, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25917, 125, 39, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25916, 125, 40, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25915, 125, 41, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25914, 125, 42, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25913, 125, 43, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25912, 125, 44, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25911, 125, 45, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25910, 125, 46, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25909, 125, 47, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25908, 125, 48, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25907, 125, 49, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25906, 125, 50, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25905, 125, 51, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25904, 125, 52, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25903, 125, 53, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25902, 125, 54, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25901, 125, 55, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25900, 125, 56, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25899, 125, 57, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25898, 125, 58, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25897, 125, 59, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25896, 125, 60, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25895, 125, 61, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25894, 125, 62, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25893, 125, 63, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25892, 125, 64, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25891, 125, 65, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25890, 125, 66, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25889, 125, 67, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25888, 125, 68, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25887, 125, 69, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25886, 125, 70, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25885, 125, 71, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25884, 125, 72, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25883, 125, 73, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25882, 125, 74, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25881, 125, 75, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25880, 125, 76, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25879, 125, 77, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25878, 125, 78, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25877, 125, 79, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25876, 125, 80, '2023-08-17 03:54:53', '2023-08-17 03:54:53'),
(25875, 126, 14, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25874, 126, 15, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25873, 126, 16, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25872, 126, 17, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25871, 126, 18, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25870, 126, 19, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25869, 126, 20, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25868, 126, 21, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25867, 126, 22, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25866, 126, 23, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25865, 126, 24, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25864, 126, 25, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25863, 126, 26, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25862, 126, 27, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25861, 126, 28, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25860, 126, 29, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25859, 126, 30, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25858, 126, 31, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25857, 126, 32, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25856, 126, 33, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25855, 126, 34, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25854, 126, 35, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25853, 126, 36, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25852, 126, 37, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25851, 126, 38, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25850, 126, 39, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25849, 126, 40, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25848, 126, 41, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25847, 126, 42, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25846, 126, 43, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25845, 126, 44, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25844, 126, 45, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25843, 126, 46, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25842, 126, 47, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25841, 126, 48, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25840, 126, 49, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25839, 126, 50, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25838, 126, 51, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25837, 126, 52, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25836, 126, 53, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25835, 126, 54, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25834, 126, 55, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25833, 126, 56, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25832, 126, 57, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25831, 126, 58, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25830, 126, 59, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25829, 126, 60, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25828, 126, 61, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25827, 126, 62, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25826, 126, 63, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25825, 126, 64, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25824, 126, 65, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25823, 126, 66, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25822, 126, 67, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25821, 126, 68, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25820, 126, 69, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25819, 126, 70, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25818, 126, 71, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25817, 126, 72, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25816, 126, 73, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25815, 126, 74, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25814, 126, 75, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25813, 126, 76, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25812, 126, 77, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25811, 126, 78, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25810, 126, 79, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25809, 126, 80, '2023-08-17 03:54:08', '2023-08-17 03:54:08'),
(25808, 127, 14, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25807, 127, 15, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25806, 127, 16, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25805, 127, 17, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25804, 127, 18, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25803, 127, 19, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25802, 127, 20, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25801, 127, 21, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25800, 127, 22, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25799, 127, 23, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25798, 127, 24, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25797, 127, 25, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25796, 127, 26, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25795, 127, 27, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25794, 127, 28, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25793, 127, 29, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25792, 127, 30, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25791, 127, 31, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25790, 127, 32, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25789, 127, 33, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25788, 127, 34, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25787, 127, 35, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25786, 127, 36, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25785, 127, 37, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25784, 127, 38, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25783, 127, 39, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25782, 127, 40, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25781, 127, 41, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25780, 127, 42, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25779, 127, 43, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25778, 127, 44, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25777, 127, 45, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25776, 127, 46, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25775, 127, 47, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25774, 127, 48, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25773, 127, 49, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25772, 127, 50, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25771, 127, 51, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25770, 127, 52, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25769, 127, 53, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25768, 127, 54, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25767, 127, 55, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25766, 127, 56, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25765, 127, 57, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25764, 127, 58, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25763, 127, 59, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25762, 127, 60, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25761, 127, 61, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25760, 127, 62, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25759, 127, 63, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25758, 127, 64, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25757, 127, 65, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25756, 127, 66, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25755, 127, 67, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25754, 127, 68, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25753, 127, 69, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25752, 127, 70, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25751, 127, 71, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25750, 127, 72, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25749, 127, 73, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25748, 127, 74, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25747, 127, 75, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25746, 127, 76, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25745, 127, 77, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25744, 127, 78, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25743, 127, 79, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25742, 127, 80, '2023-08-17 03:53:16', '2023-08-17 03:53:16'),
(25741, 128, 14, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25740, 128, 15, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25739, 128, 16, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25738, 128, 17, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25737, 128, 18, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25736, 128, 19, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25735, 128, 20, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25734, 128, 21, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25733, 128, 22, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25732, 128, 23, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25731, 128, 24, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25730, 128, 25, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25729, 128, 26, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25728, 128, 27, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25727, 128, 28, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25726, 128, 29, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25725, 128, 30, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25724, 128, 31, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25723, 128, 32, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25722, 128, 33, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25721, 128, 34, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25720, 128, 35, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25719, 128, 36, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25718, 128, 37, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25717, 128, 38, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25716, 128, 39, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25715, 128, 40, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25714, 128, 41, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25713, 128, 42, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25712, 128, 43, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25711, 128, 44, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25710, 128, 45, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25709, 128, 46, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25708, 128, 47, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25707, 128, 48, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25706, 128, 49, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25705, 128, 50, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25704, 128, 51, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25703, 128, 52, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25702, 128, 53, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25701, 128, 54, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25700, 128, 55, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25699, 128, 56, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25698, 128, 57, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25697, 128, 58, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25696, 128, 59, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25695, 128, 60, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25694, 128, 61, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25693, 128, 62, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25692, 128, 63, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25691, 128, 64, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25690, 128, 65, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25689, 128, 66, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25688, 128, 67, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25687, 128, 68, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25686, 128, 69, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25685, 128, 70, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25684, 128, 71, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25683, 128, 72, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25682, 128, 73, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25681, 128, 74, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25680, 128, 75, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25679, 128, 76, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25678, 128, 77, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25677, 128, 78, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25676, 128, 79, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25675, 128, 80, '2023-08-17 03:52:32', '2023-08-17 03:52:32'),
(25540, 129, 14, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25539, 129, 15, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25538, 129, 16, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25537, 129, 17, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25536, 129, 18, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25535, 129, 19, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25534, 129, 20, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25533, 129, 21, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25532, 129, 22, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25531, 129, 23, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25530, 129, 24, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25529, 129, 25, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25528, 129, 26, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25527, 129, 27, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25526, 129, 28, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25525, 129, 29, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25524, 129, 30, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25523, 129, 31, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25522, 129, 32, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25521, 129, 33, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25520, 129, 34, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25519, 129, 35, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25518, 129, 36, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25517, 129, 37, '2023-08-17 03:29:14', '2023-08-17 03:29:14'),
(25516, 129, 38, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25515, 129, 39, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25514, 129, 40, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25513, 129, 41, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25512, 129, 42, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25511, 129, 43, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25510, 129, 44, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25509, 129, 45, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25508, 129, 46, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25507, 129, 47, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25506, 129, 48, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25505, 129, 49, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25504, 129, 50, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25503, 129, 51, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25502, 129, 52, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25501, 129, 53, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25500, 129, 54, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25499, 129, 55, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25498, 129, 56, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25497, 129, 57, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25496, 129, 58, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25495, 129, 59, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25494, 129, 60, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25493, 129, 61, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25492, 129, 62, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25491, 129, 63, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25490, 129, 64, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25489, 129, 65, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25488, 129, 66, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25487, 129, 67, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25486, 129, 68, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25485, 129, 69, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25484, 129, 70, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25483, 129, 71, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25482, 129, 72, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25481, 129, 73, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25480, 129, 74, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25479, 129, 75, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25478, 129, 76, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25477, 129, 77, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25476, 129, 78, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25475, 129, 79, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25474, 129, 80, '2023-08-17 03:29:13', '2023-08-17 03:29:13'),
(25607, 130, 14, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25606, 130, 15, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25605, 130, 16, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25604, 130, 17, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25603, 130, 18, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25602, 130, 19, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25601, 130, 20, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25600, 130, 21, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25599, 130, 22, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25598, 130, 23, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25597, 130, 24, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25596, 130, 25, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25595, 130, 26, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25594, 130, 27, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25593, 130, 28, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25592, 130, 29, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25591, 130, 30, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25590, 130, 31, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25589, 130, 32, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25588, 130, 33, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25587, 130, 34, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25586, 130, 35, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25585, 130, 36, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25584, 130, 37, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25583, 130, 38, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25582, 130, 39, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25581, 130, 40, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25580, 130, 41, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25579, 130, 42, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25578, 130, 43, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25577, 130, 44, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25576, 130, 45, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25575, 130, 46, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25574, 130, 47, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25573, 130, 48, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25572, 130, 49, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25571, 130, 50, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25570, 130, 51, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25569, 130, 52, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25568, 130, 53, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25567, 130, 54, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25566, 130, 55, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25565, 130, 56, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25564, 130, 57, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25563, 130, 58, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25562, 130, 59, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25561, 130, 60, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25560, 130, 61, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25559, 130, 62, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25558, 130, 63, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25557, 130, 64, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25556, 130, 65, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25555, 130, 66, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25554, 130, 67, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25553, 130, 68, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25552, 130, 69, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25551, 130, 70, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25550, 130, 71, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25549, 130, 72, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25548, 130, 73, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25547, 130, 74, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25546, 130, 75, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25545, 130, 76, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25544, 130, 77, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25543, 130, 78, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25542, 130, 79, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25541, 130, 80, '2023-08-17 03:51:25', '2023-08-17 03:51:25'),
(25674, 131, 14, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25673, 131, 15, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25672, 131, 16, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25671, 131, 17, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25670, 131, 18, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25669, 131, 19, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25668, 131, 20, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25667, 131, 21, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25666, 131, 22, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25665, 131, 23, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25664, 131, 24, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25663, 131, 25, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25662, 131, 26, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25661, 131, 27, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25660, 131, 28, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25659, 131, 29, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25658, 131, 30, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25657, 131, 31, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25656, 131, 32, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25655, 131, 33, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25654, 131, 34, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25653, 131, 35, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25652, 131, 36, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25651, 131, 37, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25650, 131, 38, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25649, 131, 39, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25648, 131, 40, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25647, 131, 41, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25646, 131, 42, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25645, 131, 43, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25644, 131, 44, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25643, 131, 45, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25642, 131, 46, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25641, 131, 47, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25640, 131, 48, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25639, 131, 49, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25638, 131, 50, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25637, 131, 51, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25636, 131, 52, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25635, 131, 53, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25634, 131, 54, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25633, 131, 55, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25632, 131, 56, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25631, 131, 57, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25630, 131, 58, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25629, 131, 59, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25628, 131, 60, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25627, 131, 61, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25626, 131, 62, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25625, 131, 63, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25624, 131, 64, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25623, 131, 65, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25622, 131, 66, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25621, 131, 67, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25620, 131, 68, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25619, 131, 69, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25618, 131, 70, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25617, 131, 71, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25616, 131, 72, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25615, 131, 73, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25614, 131, 74, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25613, 131, 75, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25612, 131, 76, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25611, 131, 77, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25610, 131, 78, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25609, 131, 79, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(25608, 131, 80, '2023-08-17 03:51:33', '2023-08-17 03:51:33'),
(26673, 65, 20, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26672, 65, 21, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26671, 65, 22, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26670, 65, 23, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26669, 65, 24, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26668, 65, 25, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26667, 65, 26, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26666, 65, 27, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26665, 65, 28, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26664, 65, 29, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26663, 65, 30, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26662, 65, 31, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26661, 65, 32, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26660, 65, 33, '2023-08-17 04:13:16', '2023-08-17 04:13:16');
INSERT INTO `product_cities` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(26659, 65, 34, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26658, 65, 35, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26657, 65, 36, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26656, 65, 37, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26655, 65, 38, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26654, 65, 39, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26653, 65, 40, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26652, 65, 41, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26651, 65, 42, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26650, 65, 43, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26649, 65, 44, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26648, 65, 45, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26647, 65, 46, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26646, 65, 47, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26645, 65, 48, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26644, 65, 49, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26643, 65, 50, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26642, 65, 51, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26641, 65, 52, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26640, 65, 53, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26639, 65, 54, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26638, 65, 55, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26637, 65, 56, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26636, 65, 57, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26635, 65, 58, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26634, 65, 59, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26633, 65, 60, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26632, 65, 61, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26631, 65, 62, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26630, 65, 63, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26629, 65, 64, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26628, 65, 65, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26627, 65, 66, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26626, 65, 67, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26625, 65, 68, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26624, 65, 69, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26623, 65, 70, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26622, 65, 71, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26621, 65, 72, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26620, 65, 73, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26619, 65, 74, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26618, 65, 75, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26617, 65, 76, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26616, 65, 77, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26615, 65, 78, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26614, 65, 79, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26613, 65, 80, '2023-08-17 04:13:16', '2023-08-17 04:13:16'),
(26947, 66, 14, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26946, 66, 15, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26945, 66, 16, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26944, 66, 17, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26943, 66, 18, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26942, 66, 19, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26941, 66, 20, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26940, 66, 21, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26939, 66, 22, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26938, 66, 23, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26937, 66, 24, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26936, 66, 25, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26935, 66, 26, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26934, 66, 27, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26933, 66, 28, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26932, 66, 29, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26931, 66, 30, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26930, 66, 31, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26929, 66, 32, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26928, 66, 33, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26927, 66, 34, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26926, 66, 35, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26925, 66, 36, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26924, 66, 37, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26923, 66, 38, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26922, 66, 39, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26921, 66, 40, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26920, 66, 41, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26919, 66, 42, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26918, 66, 43, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26917, 66, 44, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26916, 66, 45, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26915, 66, 46, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26914, 66, 47, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26913, 66, 48, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26912, 66, 49, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26911, 66, 50, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26910, 66, 51, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26909, 66, 52, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26908, 66, 53, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26907, 66, 54, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26906, 66, 55, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26905, 66, 56, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26904, 66, 57, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26903, 66, 58, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26902, 66, 59, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26901, 66, 60, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26900, 66, 61, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26899, 66, 62, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26898, 66, 63, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26897, 66, 64, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26896, 66, 65, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26895, 66, 66, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26894, 66, 67, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26893, 66, 68, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26892, 66, 69, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26891, 66, 70, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26890, 66, 71, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26889, 66, 72, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26888, 66, 73, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26887, 66, 74, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26886, 66, 75, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26885, 66, 76, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26884, 66, 77, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26883, 66, 78, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26882, 66, 79, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26881, 66, 80, '2023-08-17 04:34:13', '2023-08-17 04:34:13'),
(26606, 67, 20, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26605, 67, 21, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26604, 67, 22, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26603, 67, 23, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26602, 67, 24, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26601, 67, 25, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26600, 67, 26, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26599, 67, 27, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26598, 67, 28, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26597, 67, 29, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26596, 67, 30, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26595, 67, 31, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26594, 67, 32, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26593, 67, 33, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26592, 67, 34, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26591, 67, 35, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26590, 67, 36, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26589, 67, 37, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26588, 67, 38, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26587, 67, 39, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26586, 67, 40, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26585, 67, 41, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26584, 67, 42, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26583, 67, 43, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26582, 67, 44, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26581, 67, 45, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26580, 67, 46, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26579, 67, 47, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26578, 67, 48, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26577, 67, 49, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26576, 67, 50, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26575, 67, 51, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26574, 67, 52, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26573, 67, 53, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26572, 67, 54, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26571, 67, 55, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26570, 67, 56, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26569, 67, 57, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26568, 67, 58, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26567, 67, 59, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26566, 67, 60, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26565, 67, 61, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26564, 67, 62, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26563, 67, 63, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26562, 67, 64, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26561, 67, 65, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26560, 67, 66, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26559, 67, 67, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26558, 67, 68, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26557, 67, 69, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26556, 67, 70, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26555, 67, 71, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26554, 67, 72, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26553, 67, 73, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26552, 67, 74, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26551, 67, 75, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26550, 67, 76, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26549, 67, 77, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26548, 67, 78, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26547, 67, 79, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26546, 67, 80, '2023-08-17 04:12:10', '2023-08-17 04:12:10'),
(26539, 68, 20, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26538, 68, 21, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26537, 68, 22, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26536, 68, 23, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26535, 68, 24, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26534, 68, 25, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26533, 68, 26, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26532, 68, 27, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26531, 68, 28, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26530, 68, 29, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26529, 68, 30, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26528, 68, 31, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26527, 68, 32, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26526, 68, 33, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26525, 68, 34, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26524, 68, 35, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26523, 68, 36, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26522, 68, 37, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26521, 68, 38, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26520, 68, 39, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26519, 68, 40, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26518, 68, 41, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26517, 68, 42, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26516, 68, 43, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26515, 68, 44, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26514, 68, 45, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26513, 68, 46, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26512, 68, 47, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26511, 68, 48, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26510, 68, 49, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26509, 68, 50, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26508, 68, 51, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26507, 68, 52, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26506, 68, 53, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26505, 68, 54, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26504, 68, 55, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26503, 68, 56, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26502, 68, 57, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26501, 68, 58, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26500, 68, 59, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26499, 68, 60, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26498, 68, 61, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26497, 68, 62, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26496, 68, 63, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26495, 68, 64, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26494, 68, 65, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26493, 68, 66, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26492, 68, 67, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26491, 68, 68, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26490, 68, 69, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26489, 68, 70, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26488, 68, 71, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26487, 68, 72, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26486, 68, 73, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26485, 68, 74, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26484, 68, 75, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26483, 68, 76, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26482, 68, 77, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26481, 68, 78, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26480, 68, 79, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(26479, 68, 80, '2023-08-17 04:10:49', '2023-08-17 04:10:49'),
(27008, 69, 20, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27007, 69, 21, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27006, 69, 22, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27005, 69, 23, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27004, 69, 24, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27003, 69, 25, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27002, 69, 26, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27001, 69, 27, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27000, 69, 28, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26999, 69, 29, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26998, 69, 30, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26997, 69, 31, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26996, 69, 32, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26995, 69, 33, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26994, 69, 34, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26993, 69, 35, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26992, 69, 36, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26991, 69, 37, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26990, 69, 38, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26989, 69, 39, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26988, 69, 40, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26987, 69, 41, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26986, 69, 42, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26985, 69, 43, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26984, 69, 44, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26983, 69, 45, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26982, 69, 46, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26981, 69, 47, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26980, 69, 48, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26979, 69, 49, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26978, 69, 50, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26977, 69, 51, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26976, 69, 52, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26975, 69, 53, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26974, 69, 54, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26973, 69, 55, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26972, 69, 56, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26971, 69, 57, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26970, 69, 58, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26969, 69, 59, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26968, 69, 60, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26967, 69, 61, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26966, 69, 62, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26965, 69, 63, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26964, 69, 64, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26963, 69, 65, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26962, 69, 66, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26961, 69, 67, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26960, 69, 68, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26959, 69, 69, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26958, 69, 70, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26957, 69, 71, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26956, 69, 72, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26955, 69, 73, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26954, 69, 74, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26953, 69, 75, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26952, 69, 76, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26951, 69, 77, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26950, 69, 78, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26949, 69, 79, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(26948, 69, 80, '2023-08-17 04:38:09', '2023-08-17 04:38:09'),
(27081, 149, 14, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27080, 149, 15, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27079, 149, 16, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27078, 149, 17, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27077, 149, 18, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27076, 149, 19, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27075, 149, 20, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27074, 149, 21, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27073, 149, 22, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27072, 149, 23, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27071, 149, 24, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27070, 149, 25, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27069, 149, 26, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27068, 149, 27, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27067, 149, 28, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27066, 149, 29, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27065, 149, 30, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27064, 149, 31, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27063, 149, 32, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27062, 149, 33, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27061, 149, 34, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27060, 149, 35, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27059, 149, 36, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27058, 149, 37, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27057, 149, 38, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27056, 149, 39, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27055, 149, 40, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27054, 149, 41, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27053, 149, 42, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27052, 149, 43, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27051, 149, 44, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27050, 149, 45, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27049, 149, 46, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27048, 149, 47, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27047, 149, 48, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27046, 149, 49, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27045, 149, 50, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27044, 149, 51, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27043, 149, 52, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27042, 149, 53, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27041, 149, 54, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27040, 149, 55, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27039, 149, 56, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27038, 149, 57, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27037, 149, 58, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27036, 149, 59, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27035, 149, 60, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27034, 149, 61, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27033, 149, 62, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27032, 149, 63, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27031, 149, 64, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27030, 149, 65, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27029, 149, 66, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27028, 149, 67, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27027, 149, 68, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27026, 149, 69, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27025, 149, 70, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27024, 149, 71, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27023, 149, 72, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27022, 149, 73, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27021, 149, 74, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27020, 149, 75, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27019, 149, 76, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27018, 149, 77, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27017, 149, 78, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27016, 149, 79, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(27015, 149, 80, '2023-08-17 05:07:53', '2023-08-17 05:07:53'),
(23128, 151, 14, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23127, 151, 15, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23126, 151, 16, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23125, 151, 17, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23124, 151, 18, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23123, 151, 19, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23122, 151, 20, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23121, 151, 21, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23120, 151, 22, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23119, 151, 23, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23118, 151, 24, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23117, 151, 25, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23116, 151, 26, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23115, 151, 27, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23114, 151, 28, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23113, 151, 29, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23112, 151, 30, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23111, 151, 31, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23110, 151, 32, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23109, 151, 33, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23108, 151, 34, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23107, 151, 35, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23106, 151, 36, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23105, 151, 37, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23104, 151, 38, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23103, 151, 39, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23102, 151, 40, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23101, 151, 41, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23100, 151, 42, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23099, 151, 43, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23098, 151, 44, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23097, 151, 45, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23096, 151, 46, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23095, 151, 47, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23094, 151, 48, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23093, 151, 49, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23092, 151, 50, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23091, 151, 51, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23090, 151, 52, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23089, 151, 53, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23088, 151, 54, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23087, 151, 55, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(22952, 150, 56, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22951, 150, 57, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22950, 150, 58, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22949, 150, 59, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22948, 150, 60, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22947, 150, 61, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22946, 150, 62, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22945, 150, 63, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22944, 150, 64, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22943, 150, 65, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22942, 150, 66, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22941, 150, 67, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22940, 150, 68, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22939, 150, 69, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22938, 150, 70, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22937, 150, 71, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22936, 150, 72, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22935, 150, 73, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22934, 150, 74, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22933, 150, 75, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22932, 150, 76, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22931, 150, 77, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22930, 150, 78, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22929, 150, 79, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(22928, 150, 80, '2023-08-16 01:04:44', '2023-08-16 01:04:44'),
(23086, 151, 56, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23085, 151, 57, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23084, 151, 58, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23083, 151, 59, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23082, 151, 60, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23081, 151, 61, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23080, 151, 62, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23079, 151, 63, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23078, 151, 64, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23077, 151, 65, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23076, 151, 66, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23075, 151, 67, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23074, 151, 68, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23073, 151, 69, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23072, 151, 70, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23071, 151, 71, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23070, 151, 72, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23069, 151, 73, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23068, 151, 74, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23067, 151, 75, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23066, 151, 76, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23065, 151, 77, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23064, 151, 78, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23063, 151, 79, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23062, 151, 80, '2023-08-16 01:09:19', '2023-08-16 01:09:19'),
(23061, 152, 14, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23060, 152, 15, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23059, 152, 16, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23058, 152, 17, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23057, 152, 18, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23056, 152, 19, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23055, 152, 20, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23054, 152, 21, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23053, 152, 22, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23052, 152, 23, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23051, 152, 24, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23050, 152, 25, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23049, 152, 26, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23048, 152, 27, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23047, 152, 28, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23046, 152, 29, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23045, 152, 30, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23044, 152, 31, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23043, 152, 32, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23042, 152, 33, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23041, 152, 34, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23040, 152, 35, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23039, 152, 36, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23038, 152, 37, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23037, 152, 38, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23036, 152, 39, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23035, 152, 40, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23034, 152, 41, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23033, 152, 42, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23032, 152, 43, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23031, 152, 44, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23030, 152, 45, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23029, 152, 46, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23028, 152, 47, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23027, 152, 48, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23026, 152, 49, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23025, 152, 50, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23024, 152, 51, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23023, 152, 52, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23022, 152, 53, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23021, 152, 54, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23020, 152, 55, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23019, 152, 56, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23018, 152, 57, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23017, 152, 58, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23016, 152, 59, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23015, 152, 60, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23014, 152, 61, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23013, 152, 62, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23012, 152, 63, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23011, 152, 64, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23010, 152, 65, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23009, 152, 66, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23008, 152, 67, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23007, 152, 68, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23006, 152, 69, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23005, 152, 70, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23004, 152, 71, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23003, 152, 72, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23002, 152, 73, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23001, 152, 74, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(23000, 152, 75, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(22999, 152, 76, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(22998, 152, 77, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(22997, 152, 78, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(22996, 152, 79, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(22995, 152, 80, '2023-08-16 01:05:43', '2023-08-16 01:05:43'),
(24736, 153, 14, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24735, 153, 15, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24734, 153, 16, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24733, 153, 17, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24732, 153, 18, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24731, 153, 19, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24730, 153, 20, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24729, 153, 21, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24728, 153, 22, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24727, 153, 23, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24726, 153, 24, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24725, 153, 25, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24724, 153, 26, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24723, 153, 27, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24722, 153, 28, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24721, 153, 29, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24720, 153, 30, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24719, 153, 31, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24718, 153, 32, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24717, 153, 33, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24716, 153, 34, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24715, 153, 35, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24714, 153, 36, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24713, 153, 37, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24712, 153, 38, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24711, 153, 39, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24710, 153, 40, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24709, 153, 41, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24708, 153, 42, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24707, 153, 43, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24706, 153, 44, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24705, 153, 45, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24704, 153, 46, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24703, 153, 47, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24702, 153, 48, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24701, 153, 49, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24700, 153, 50, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24699, 153, 51, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24698, 153, 52, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24697, 153, 53, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24696, 153, 54, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24695, 153, 55, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24694, 153, 56, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24693, 153, 57, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24692, 153, 58, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24691, 153, 59, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24690, 153, 60, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24689, 153, 61, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24688, 153, 62, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24687, 153, 63, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24686, 153, 64, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24685, 153, 65, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24684, 153, 66, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24683, 153, 67, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24682, 153, 68, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24681, 153, 69, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24680, 153, 70, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24679, 153, 71, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24678, 153, 72, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24677, 153, 73, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24676, 153, 74, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24675, 153, 75, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24674, 153, 76, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24673, 153, 77, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24672, 153, 78, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24671, 153, 79, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(24670, 153, 80, '2023-08-16 06:58:15', '2023-08-16 06:58:15'),
(22458, 154, 14, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22457, 154, 15, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22456, 154, 16, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22455, 154, 17, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22454, 154, 18, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22453, 154, 19, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22452, 154, 20, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22451, 154, 21, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22450, 154, 22, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22449, 154, 23, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22448, 154, 24, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22447, 154, 25, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22446, 154, 26, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22445, 154, 27, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22444, 154, 28, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22443, 154, 29, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22442, 154, 30, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22441, 154, 31, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22440, 154, 32, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22439, 154, 33, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22438, 154, 34, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22437, 154, 35, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22436, 154, 36, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22435, 154, 37, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22434, 154, 38, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22433, 154, 39, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22432, 154, 40, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22431, 154, 41, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22430, 154, 42, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22429, 154, 43, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22428, 154, 44, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22427, 154, 45, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22426, 154, 46, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22425, 154, 47, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22424, 154, 48, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22423, 154, 49, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22422, 154, 50, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22421, 154, 51, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22420, 154, 52, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22419, 154, 53, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22418, 154, 54, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22417, 154, 55, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22416, 154, 56, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22415, 154, 57, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22414, 154, 58, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22413, 154, 59, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22412, 154, 60, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22411, 154, 61, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22410, 154, 62, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22409, 154, 63, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22408, 154, 64, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22407, 154, 65, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22406, 154, 66, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22405, 154, 67, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22404, 154, 68, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22403, 154, 69, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22402, 154, 70, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22401, 154, 71, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22400, 154, 72, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22399, 154, 73, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22398, 154, 74, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22397, 154, 75, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22396, 154, 76, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22395, 154, 77, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22394, 154, 78, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22393, 154, 79, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(22392, 154, 80, '2023-08-14 13:40:41', '2023-08-14 13:40:41'),
(24937, 155, 14, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24936, 155, 15, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24935, 155, 16, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24934, 155, 17, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24933, 155, 18, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24932, 155, 19, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24931, 155, 20, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24930, 155, 21, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24929, 155, 22, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24928, 155, 23, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24927, 155, 24, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24926, 155, 25, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24925, 155, 26, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24924, 155, 27, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24923, 155, 28, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24922, 155, 29, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24921, 155, 30, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24920, 155, 31, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24919, 155, 32, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24918, 155, 33, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24917, 155, 34, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24916, 155, 35, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24915, 155, 36, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24914, 155, 37, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24913, 155, 38, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24912, 155, 39, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24911, 155, 40, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24910, 155, 41, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24909, 155, 42, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24908, 155, 43, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24907, 155, 44, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24906, 155, 45, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24905, 155, 46, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24904, 155, 47, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24903, 155, 48, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24902, 155, 49, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24901, 155, 50, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24900, 155, 51, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24899, 155, 52, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24898, 155, 53, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24897, 155, 54, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24896, 155, 55, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24895, 155, 56, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24894, 155, 57, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24893, 155, 58, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24892, 155, 59, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24891, 155, 60, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24890, 155, 61, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24889, 155, 62, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24888, 155, 63, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24887, 155, 64, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24886, 155, 65, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24885, 155, 66, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24884, 155, 67, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24883, 155, 68, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24882, 155, 69, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24881, 155, 70, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24880, 155, 71, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24879, 155, 72, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24878, 155, 73, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24877, 155, 74, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24876, 155, 75, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24875, 155, 76, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24874, 155, 77, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24873, 155, 78, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24872, 155, 79, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24871, 155, 80, '2023-08-16 11:32:36', '2023-08-16 11:32:36'),
(24066, 156, 14, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24065, 156, 15, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24064, 156, 16, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24063, 156, 17, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24062, 156, 18, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24061, 156, 19, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24060, 156, 20, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24059, 156, 21, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24058, 156, 22, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24057, 156, 23, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24056, 156, 24, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24055, 156, 25, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24054, 156, 26, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24053, 156, 27, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24052, 156, 28, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24051, 156, 29, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24050, 156, 30, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24049, 156, 31, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24048, 156, 32, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24047, 156, 33, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24046, 156, 34, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24045, 156, 35, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24044, 156, 36, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24043, 156, 37, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24042, 156, 38, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24041, 156, 39, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24040, 156, 40, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24039, 156, 41, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24038, 156, 42, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24037, 156, 43, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24036, 156, 44, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24035, 156, 45, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24034, 156, 46, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24033, 156, 47, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24032, 156, 48, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24031, 156, 49, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24030, 156, 50, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24029, 156, 51, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24028, 156, 52, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24027, 156, 53, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24026, 156, 54, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24025, 156, 55, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24024, 156, 56, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24023, 156, 57, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24022, 156, 58, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24021, 156, 59, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24020, 156, 60, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24019, 156, 61, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24018, 156, 62, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24017, 156, 63, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24016, 156, 64, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24015, 156, 65, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24014, 156, 66, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24013, 156, 67, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24012, 156, 68, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24011, 156, 69, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24010, 156, 70, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24009, 156, 71, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24008, 156, 72, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24007, 156, 73, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24006, 156, 74, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24005, 156, 75, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24004, 156, 76, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24003, 156, 77, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24002, 156, 78, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24001, 156, 79, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(24000, 156, 80, '2023-08-16 01:39:12', '2023-08-16 01:39:12'),
(10332, 32, 14, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10333, 32, 15, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10334, 32, 16, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10335, 32, 17, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10336, 32, 18, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10337, 32, 19, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10338, 32, 20, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10339, 32, 21, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10340, 32, 22, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10341, 32, 23, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10342, 32, 24, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10343, 32, 25, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10344, 32, 26, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10345, 32, 27, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10346, 32, 28, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10347, 32, 29, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10348, 32, 30, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10349, 32, 31, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10350, 32, 32, '2023-07-20 12:39:29', '2023-07-20 12:39:29');
INSERT INTO `product_cities` (`id`, `product_id`, `city_id`, `created_at`, `updated_at`) VALUES
(10351, 32, 33, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10352, 32, 34, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10353, 32, 35, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10354, 32, 36, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10355, 32, 37, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10356, 32, 38, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10357, 32, 39, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10358, 32, 40, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10359, 32, 41, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10360, 32, 42, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10361, 32, 43, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10362, 32, 44, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10363, 32, 45, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10364, 32, 46, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10365, 32, 47, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10366, 32, 48, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10367, 32, 49, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10368, 32, 50, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10369, 32, 51, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10370, 32, 52, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10371, 32, 53, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10372, 32, 54, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10373, 32, 55, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10374, 32, 56, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10375, 32, 57, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10376, 32, 58, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10377, 32, 59, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10378, 32, 60, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10379, 32, 61, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10380, 32, 62, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10381, 32, 63, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10382, 32, 64, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10383, 32, 65, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10384, 32, 66, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10385, 32, 67, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10386, 32, 68, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10387, 32, 69, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10388, 32, 70, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10389, 32, 71, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10390, 32, 72, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10391, 32, 73, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10392, 32, 74, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10393, 32, 75, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10394, 32, 76, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10395, 32, 77, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10396, 32, 78, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10397, 32, 79, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(10398, 32, 80, '2023-07-20 12:39:29', '2023-07-20 12:39:29'),
(27282, 165, 14, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27281, 165, 15, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27280, 165, 16, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27279, 165, 17, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27278, 165, 18, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27277, 165, 19, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27276, 165, 20, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27275, 165, 21, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27274, 165, 22, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27273, 165, 23, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27272, 165, 24, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27271, 165, 25, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27270, 165, 26, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27269, 165, 27, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27268, 165, 28, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27267, 165, 29, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27266, 165, 30, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27265, 165, 31, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27264, 165, 32, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27263, 165, 33, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27262, 165, 34, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27261, 165, 35, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27260, 165, 36, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27259, 165, 37, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27258, 165, 38, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27257, 165, 39, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27256, 165, 40, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27255, 165, 41, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27254, 165, 42, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27253, 165, 43, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27252, 165, 44, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27251, 165, 45, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27250, 165, 46, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27249, 165, 47, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27248, 165, 48, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27247, 165, 49, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27246, 165, 50, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27245, 165, 51, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27244, 165, 52, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27243, 165, 53, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27242, 165, 54, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27241, 165, 55, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27240, 165, 56, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27239, 165, 57, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27238, 165, 58, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27237, 165, 59, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27236, 165, 60, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27235, 165, 61, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27234, 165, 62, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27233, 165, 63, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27232, 165, 64, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27231, 165, 65, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27230, 165, 66, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27229, 165, 67, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27228, 165, 68, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27227, 165, 69, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27226, 165, 70, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27225, 165, 71, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27224, 165, 72, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27223, 165, 73, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27222, 165, 74, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27221, 165, 75, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27220, 165, 76, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27219, 165, 77, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27218, 165, 78, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27217, 165, 79, '2023-08-17 05:50:32', '2023-08-17 05:50:32'),
(27216, 165, 80, '2023-08-17 05:50:32', '2023-08-17 05:50:32');

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
(1, 'qOevLa0joXXorGN1z30ZfsRuejC00B.png', 103, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(2, 'ymdKagAPAesytmB7TsoraVlibJ6Rr5.png', 103, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(3, 'azjPwK26lJagiVy8I8CcOEmQgAc7JP.png', 103, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(7, 'Ey6vnzzczC7gYWoPBDZD3CBpAXcyUn.png', 102, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(8, 'K23H9WmwGibm3cfGxH987jTH0JvbLL.png', 102, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(9, 'W7y8TJQweaXreV5JzInGEK722Fbl6T.png', 102, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(462, 'NHii7g6jBdLYnjQxOYDI8fKfqYtb9t.png', 127, 'Nutritional Facts', '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(459, 'QypA21325kJWVopp2wtsroWVrQ8hUP.png', 128, 'Nutritional Facts', '2023-08-17 10:52:34', '2023-08-17 10:52:34'),
(460, '2auygBPEJorBKQCHentLW587N8trDg.png', 127, 'Thumbnail', '2023-08-17 10:53:17', '2023-08-17 10:53:17'),
(391, 'wxstK3SjTXzy0Uh2SykJKnUA5bPNhi.png', 25, 'Thumbnail', '2023-08-16 08:33:46', '2023-08-16 08:33:46'),
(392, 'XAaiEXJ0kPmBrCjrSCUksnuTktcJTL.png', 25, 'Main Image', '2023-08-16 08:33:47', '2023-08-16 08:33:47'),
(393, 'qxykt7Rbq66XGsuLyY2vIoxtD7QbD2.png', 25, 'Nutritional Facts', '2023-08-16 08:33:48', '2023-08-16 08:33:48'),
(390, 'ERiPWyizhtnMTATLJ4Z9JOn25D9CS2.png', 27, 'Nutritional Facts', '2023-08-16 08:33:37', '2023-08-16 08:33:37'),
(388, 'fPIx0HVewIxTJBvpriFaGJXSapVe7c.png', 27, 'Thumbnail', '2023-08-16 08:33:36', '2023-08-16 08:33:36'),
(389, 'fOdIsN2MAubtj1iprpJ4Au1q0qA8L3.png', 27, 'Main Image', '2023-08-16 08:33:37', '2023-08-16 08:33:37'),
(378, 'IqogaZoUsgoKXEn0BQIz7ZbIImXKLA.png', 29, 'Nutritional Facts', '2023-08-16 08:29:41', '2023-08-16 08:29:41'),
(377, 'F8u6d3EnWQqGdCWJfB39c5LIEtPYLF.png', 29, 'Main Image', '2023-08-16 08:29:40', '2023-08-16 08:29:40'),
(376, 'mNCRuLOhPdgzgHSsSaq5BDRO9p72SB.png', 29, 'Thumbnail', '2023-08-16 08:29:40', '2023-08-16 08:29:40'),
(384, 'wrLNcJvcD0OcVAXTS94QlbrtNQUDhe.png', 30, 'Nutritional Facts', '2023-08-16 08:31:42', '2023-08-16 08:31:42'),
(383, 'GvBwqVIl4xOrbx7cDx8OMWxCqxSS9c.png', 30, 'Main Image', '2023-08-16 08:31:41', '2023-08-16 08:31:41'),
(382, 'mbHyxTPoHcAKnBaaa4ikHNMyItGq9e.png', 30, 'Thumbnail', '2023-08-16 08:31:40', '2023-08-16 08:31:40'),
(387, 'KjsMdtvdHTPIbgqMXl4GxtF75AcV9Y.png', 31, 'Nutritional Facts', '2023-08-16 08:32:36', '2023-08-16 08:32:36'),
(386, 'YKtnPNdIDR8Ap5fOfNfaQLdMVNSiyX.png', 31, 'Main Image', '2023-08-16 08:32:34', '2023-08-16 08:32:34'),
(385, 'HEsveQRnM3RphLr94DARdypkTGiaC7.png', 31, 'Thumbnail', '2023-08-16 08:32:33', '2023-08-16 08:32:33'),
(31, 'YEsGgeuDRLYwPOpadkHKsQdmfqUp2P.png', 116, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(32, 'yGjey4D6AGSKk745boZdfd9zobwyFt.png', 116, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(33, 'umXPBwimAnx5jHaNMljeakSK4OXzbJ.png', 116, 'Extra Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(488, 'gfPtDeHKe5KXscLwnCjnQeVzQj8gY0.png', 34, 'Extra Image', '2023-08-17 11:08:20', '2023-08-17 11:08:20'),
(38, '5pFUcsvhyrkcEkRrKZ8tLQylXGh8Ba.png', 160, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(484, '8bVjvkk8AwHEtLaZ5sMHVx0kL0M2Rw.png', 40, 'Extra Image', '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(483, 'bpAF3MKU2iC21mr41EaqK1oOqpIBG3.png', 40, 'Main Image', '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(482, 't7CaYmOE2EJOXf4aCZWyEBnmOksSMH.png', 40, 'Thumbnail', '2023-08-17 11:05:53', '2023-08-17 11:05:53'),
(45, 'ShdMg2cgMXcxsA9S1aTKll2L62bv0x.png', 52, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(46, 'bGFFWpwuIw0hTN5gQPkZPLcJvU4H9O.png', 52, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(47, 'vBaK5s3Zk48x6vZQ0W9AZJBq9jv7yU.png', 54, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(48, 'jPyWdKPLnjWjrR2xWQdsPAJWYcdNSP.png', 54, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(49, 'FtR0qwGeNFYDDDKpdbb1mWzbrBumIl.png', 56, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(50, 'xrcJSGsjUo1xvdmstiRWFXFmB62kDx.png', 56, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(51, 'RUTsqQlhVWN8zoEnvhxPPRHVaWw4NR.png', 110, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(52, 'FiHiUWiALXgy3ISyorwW21u0HzFRtH.png', 110, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(53, 'cjiwoNB2VCv7Kvdg8nPQYWec5qMT3W.png', 57, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(54, 'KDdiPZ0hmO9ACrzCV86vx7TEs3wfIi.png', 57, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(55, 'eReUWIuAQFsQuQi4OCkZSHkfKXMlN1.png', 59, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(56, 'fZ67aba6k88n6q4qoVYzNIU5brml1w.png', 59, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(57, '94j5jR1UUjiHM1c6fRX23lEvz0vs0F.png', 61, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(58, 'OJUqMMIuiQ2GKniVo3Z8ACjT4N1ilb.png', 61, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(59, 'BrJjM7WTdvhlP8IZfHOErk2XTlqQ9k.png', 62, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(60, 'Y7JuybKMy6PBwE8xPYxClvNs9aKIjg.png', 62, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(61, 'VXThJkC1qpF7Ql3ntnLLq7e4ZPHMRa.png', 63, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(62, 'zomJS4cX5Ufrespalsfb62Y1tHBlkl.png', 63, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(63, 'Yj5BRaLxI9giE2hXwY9uzOrqzbaBiI.png', 132, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(64, 'Nf1Jd8vTt1Eym8ygeeeTwsKgo9SRyf.png', 132, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(65, 'nVxW5JxCBMaP1qJ54ww0jBLj4iRxIj.png', 132, 'Extra Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(507, 'zrYyEGa6BV20V4AMEbvkv6B61aQ9AU.png', 64, 'Extra Image', '2023-08-17 11:31:44', '2023-08-17 11:31:44'),
(506, 'JKuFBgnIxVH21fRbD6VskNOuBkI6JQ.png', 64, 'Nutritional Facts', '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(505, 'fbybOMiJ6LZnxNO4vHv3QnUkfkabBm.png', 64, 'Main Image', '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(504, 'k8QtlZdvq6n27GwZgnH0qbIHHvjW2u.png', 64, 'Thumbnail', '2023-08-17 11:31:42', '2023-08-17 11:31:42'),
(500, 'GcTLg4RYEfyiRuxKAgoMc4VumAkm5W.png', 65, 'Extra Image', '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(499, 'DdGBLV8C5cS1WPP7dO8UDLKNepiAC3.png', 65, 'Nutritional Facts', '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(498, 'Tj58ezKjl6PUyRtYShbcCStttV21yR.png', 65, 'Main Image', '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(497, 'kilqCNwJXGqQyS3EQbi3fejj41aXdZ.png', 65, 'Thumbnail', '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(510, 'il5AkSPPSthImSE6PDkrBOVwBOSQYO.png', 66, 'Extra Image', '2023-08-17 11:34:15', '2023-08-17 11:34:15'),
(509, 't5I3OlIhdorTuChOZ3Jqr76uBvsMRd.png', 66, 'Main Image', '2023-08-17 11:34:14', '2023-08-17 11:34:14'),
(508, 'KVOb4MmT3cW9lOOi8gNVZDxaAMnQPy.png', 66, 'Thumbnail', '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(496, 'fWPLLj6pNMNfB47Qhnt6wCUKRegEfW.png', 67, 'Extra Image', '2023-08-17 11:12:12', '2023-08-17 11:12:12'),
(495, 'wXfnBw89GjLmmlbN07TcKx9bpZiT12.png', 67, 'Nutritional Facts', '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(494, 'tgFEpZkVjxru6sdWvAPSBg0DRkE2rc.png', 67, 'Main Image', '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(493, 'swQlf7KVKdyC3Pmxg5fnBJxgupPP2d.png', 67, 'Thumbnail', '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(492, 'YDbSGnuQTH2vISpAV14lXTVEMopxrB.png', 68, 'Extra Image', '2023-08-17 11:10:51', '2023-08-17 11:10:51'),
(491, 'AfLoqlNb8cucFbsdMEpyTRDFBhEAYF.png', 68, 'Nutritional Facts', '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(490, 'uBjA4yqUfa8ntCpkyl6gnem2I3xjsN.png', 68, 'Main Image', '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(489, 'HpLq33Z7Vo0IG1K776eYx4Z6eKXuUl.png', 68, 'Thumbnail', '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(85, '9WUjUqOhKnG1G7O6eemW7CTBnWkGnV.png', 111, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(87, 'dXWHiLL03tpDW847PAeqGJED2jNVVg.png', 111, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(89, 'Q7Lw2DXTOECntN9UIEsVBzupPfdZx1.png', 111, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(487, '5nNr0ImQ8uAcr0UklWOqqgVPykQmSU.png', 118, 'Extra Image', '2023-08-17 11:06:30', '2023-08-17 11:06:30'),
(486, '0PAi65y558yPsPY41fFFoEJQUYVf06.png', 118, 'Extra Image', '2023-08-17 11:06:29', '2023-08-17 11:06:29'),
(485, '5y9gZLYJZVShi0C0aAYjJ3bnckBOjq.png', 118, 'Extra Image', '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(469, 'ynBxFBY4tp20rzZQtKMKsqaXAUeUAz.png', 124, 'Thumbnail', '2023-08-17 10:55:55', '2023-08-17 10:55:55'),
(464, 'GWRlstS5hGGLCL3OCRqiY8Gfu7CzI3.png', 126, 'Main Image', '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(463, 'u6c8JBL8YPINWAIiSB7j1DTayTpO7R.png', 126, 'Thumbnail', '2023-08-17 10:54:09', '2023-08-17 10:54:09'),
(257, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-14 17:22:37', '2023-08-14 17:22:37'),
(256, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-14 17:22:36', '2023-08-14 17:22:36'),
(458, 'JZ4ZkwWOKKVrFz7NXQDDQutMEbJXIc.png', 128, 'Main Image', '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(457, 'S1Fb0ZghtFQnaNOu4PWSq4eXOplAXc.png', 128, 'Thumbnail', '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(255, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-14 17:22:35', '2023-08-14 17:22:35'),
(453, 'x9CuDJZ4zXhtEdkqN9uMGDyGaYK597.png', 130, 'Main Image', '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(452, '9inR5vvzFcpTNRzroM5MfjWYp9AEJV.png', 130, 'Thumbnail', '2023-08-17 10:51:26', '2023-08-17 10:51:26'),
(254, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-14 17:22:35', '2023-08-14 17:22:35'),
(253, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-14 17:22:34', '2023-08-14 17:22:34'),
(127, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(129, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(131, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(133, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(135, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(137, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(521, '3XRc52KysGr52CcWO6ARtT4Bx5KpE5.png', 165, 'Thumbnail', '2023-08-17 12:50:33', '2023-08-17 12:50:33'),
(151, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(153, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(155, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(157, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(159, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(281, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-14 20:37:04', '2023-08-14 20:37:04'),
(279, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-14 20:37:03', '2023-08-14 20:37:03'),
(280, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-14 20:37:03', '2023-08-14 20:37:03'),
(277, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-14 20:37:02', '2023-08-14 20:37:02'),
(173, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(175, 'DVr2LHmFwdNsvJByhkX0Nmz9EBthkX.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(177, 'l7lu1WJHZt6NuFvbjNGFOV7hHEps0o.png', 154, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(179, 'IBamcr7jhBoH9U4z45SCN0CduLw6Mj.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(181, 'u2o71u4rJGtuh6ig7gYYrEjhXvsGI5.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(183, 'xHKd2xADxN11whzWRfXzDwN0Iy4rp6.png', 154, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(258, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-14 17:22:37', '2023-08-14 17:22:37'),
(252, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-14 17:21:51', '2023-08-14 17:21:51'),
(251, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-14 17:21:51', '2023-08-14 17:21:51'),
(250, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-14 17:21:50', '2023-08-14 17:21:50'),
(465, 'CIPoCuDrVN8A7QjC8EfFxQV5HecBXJ.png', 126, 'Nutritional Facts', '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(461, 'jFEwBaO34ZYdDtczQ4VjybvgHjnVno.png', 127, 'Main Image', '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(468, 'Ss1xzfweb4oHvcpvjKU6LVtyKAe2d4.png', 125, 'Nutritional Facts', '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(467, 'hGfAk8DmJMOL4ewQtIKrzqOEt6Sql4.png', 125, 'Main Image', '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(466, 'FbhP7pvGOXAuEzEN2BWNEg4cNJu3rT.png', 125, 'Thumbnail', '2023-08-17 10:54:55', '2023-08-17 10:54:55'),
(248, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-14 17:21:49', '2023-08-14 17:21:49'),
(249, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-14 17:21:50', '2023-08-14 17:21:50'),
(201, '1070.png', 150, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(278, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-14 20:37:02', '2023-08-14 20:37:02'),
(205, '1077.png', 154, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(207, '1061.png', 152, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(399, 'd9KBzcdBgggxqrfb8MotnmAO1nzvhP.png', 156, 'Thumbnail', '2023-08-16 08:39:16', '2023-08-16 08:39:16'),
(518, 'WswXH1XoKjNw2qFSO46ZJH7vm3etKa.png', 149, 'Extra Image', '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(213, 'ja69LeKEGHerYgdx3RMvVWpOCGH8X1.png', 162, 'Extra Image', '2023-08-10 12:38:04', '2023-08-10 12:38:04'),
(214, 'zeYPeCrbnaKHEBtLAfHWq6wZYs1P2c.png', 162, 'Main Image', '2023-08-10 12:38:04', '2023-08-10 12:38:04'),
(215, 'ES3p9mU8iAkqTccPHXa0ks8jNKSr0W.png', 162, 'Thumbnail', '2023-08-10 12:38:04', '2023-08-10 12:38:04'),
(216, 'ja69LeKEGHerYgdx3RMvVWpOCGH8X1.png', 162, 'Extra Image', '2023-08-10 12:54:21', '2023-08-10 12:54:21'),
(217, 'zeYPeCrbnaKHEBtLAfHWq6wZYs1P2c.png', 162, 'Main Image', '2023-08-10 12:54:21', '2023-08-10 12:54:21'),
(218, 'ES3p9mU8iAkqTccPHXa0ks8jNKSr0W.png', 162, 'Thumbnail', '2023-08-10 12:54:21', '2023-08-10 12:54:21'),
(219, 'ja69LeKEGHerYgdx3RMvVWpOCGH8X1.png', 162, 'Extra Image', '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(220, 'zeYPeCrbnaKHEBtLAfHWq6wZYs1P2c.png', 162, 'Main Image', '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(221, 'ES3p9mU8iAkqTccPHXa0ks8jNKSr0W.png', 162, 'Thumbnail', '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(511, 'dZIOGWHYPPpeLgC3POzdcCTm6lMt0m.png', 69, 'Extra Image', '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(223, 'dummy.png', 102, 'Thumbnail', '2023-08-14 10:21:58', '2023-08-14 10:21:58'),
(224, 'dummy.png', 102, 'Main Image', '2023-08-14 10:21:58', '2023-08-14 10:21:58'),
(225, 'dummy.png', 102, 'Nutritional Facts', '2023-08-14 10:21:58', '2023-08-14 10:21:58'),
(226, 'Ey6vnzzczC7gYWoPBDZD3CBpAXcyUn.png', 102, 'Thumbnail', '2023-08-14 10:39:18', '2023-08-14 10:39:18'),
(227, 'K23H9WmwGibm3cfGxH987jTH0JvbLL.png', 102, 'Main Image', '2023-08-14 10:39:19', '2023-08-14 10:39:19'),
(228, 'W7y8TJQweaXreV5JzInGEK722Fbl6T.png', 102, 'Nutritional Facts', '2023-08-14 10:39:19', '2023-08-14 10:39:19'),
(229, '9WUjUqOhKnG1G7O6eemW7CTBnWkGnV.png', 111, 'Thumbnail', '2023-08-14 10:47:34', '2023-08-14 10:47:34'),
(230, 'dXWHiLL03tpDW847PAeqGJED2jNVVg.png', 111, 'Main Image', '2023-08-14 10:47:34', '2023-08-14 10:47:34'),
(231, 'Q7Lw2DXTOECntN9UIEsVBzupPfdZx1.png', 111, 'Nutritional Facts', '2023-08-14 10:47:35', '2023-08-14 10:47:35'),
(232, '9WUjUqOhKnG1G7O6eemW7CTBnWkGnV.png', 111, 'Thumbnail', '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(233, 'dXWHiLL03tpDW847PAeqGJED2jNVVg.png', 111, 'Main Image', '2023-08-14 10:49:49', '2023-08-14 10:49:49'),
(234, 'Q7Lw2DXTOECntN9UIEsVBzupPfdZx1.png', 111, 'Nutritional Facts', '2023-08-14 10:49:50', '2023-08-14 10:49:50'),
(439, 'PO0X6EF653fN7GwRGT02Rfcyndorbm.png', 155, 'Nutritional Facts', '2023-08-16 18:32:38', '2023-08-16 18:32:38'),
(430, 'XWO6KmbcfUEypXtOeJCbfZHDSWK4yx.png', 112, 'Nutritional Facts', '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(429, 'D2SuJ9lAK2L78RL3LbWvj2Z1lniAzB.png', 112, 'Main Image', '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(428, 'NCYmmYGQI3JOtFK4UkUciqE4jzAOss.png', 112, 'Thumbnail', '2023-08-16 15:14:20', '2023-08-16 15:14:20'),
(271, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-14 20:36:47', '2023-08-14 20:36:47'),
(272, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-14 20:36:47', '2023-08-14 20:36:47'),
(273, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-14 20:36:48', '2023-08-14 20:36:48'),
(274, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-14 20:36:48', '2023-08-14 20:36:48'),
(275, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-14 20:36:49', '2023-08-14 20:36:49'),
(276, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-14 20:36:50', '2023-08-14 20:36:50'),
(398, 'zOuy6m5V6JEIwvBIhQPxa2BKF4J9ig.png', 156, 'Main Image', '2023-08-16 08:39:16', '2023-08-16 08:39:16'),
(397, 'o2007nLkhJBzqCcknLJEUPNuUgLVPu.png', 156, 'Nutritional Facts', '2023-08-16 08:39:15', '2023-08-16 08:39:15'),
(396, '9BcBlDPR2wosDaSS3tBzhmU77BSIS5.png', 156, 'Thumbnail', '2023-08-16 08:39:15', '2023-08-16 08:39:15'),
(395, 'VEduCtQ9LwT1NyRa5bxn86mqWqtxDg.png', 156, 'Main Image', '2023-08-16 08:39:14', '2023-08-16 08:39:14'),
(394, 'Z254pjO0rMbTjlWFFy5e7JJenVyCnu.png', 156, 'Extra Image', '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(342, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(341, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(340, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(339, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(338, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(301, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', 154, 'Thumbnail', '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(302, 'DVr2LHmFwdNsvJByhkX0Nmz9EBthkX.png', 154, 'Main Image', '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(303, 'l7lu1WJHZt6NuFvbjNGFOV7hHEps0o.png', 154, 'Nutritional Facts', '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(304, 'IBamcr7jhBoH9U4z45SCN0CduLw6Mj.png', 154, 'Thumbnail', '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(305, 'u2o71u4rJGtuh6ig7gYYrEjhXvsGI5.png', 154, 'Main Image', '2023-08-14 20:40:44', '2023-08-14 20:40:44'),
(306, 'xHKd2xADxN11whzWRfXzDwN0Iy4rp6.png', 154, 'Extra Image', '2023-08-14 20:40:45', '2023-08-14 20:40:45'),
(427, 'BqjecSXr3P62orFwYsVsdYDICu8a8q.png', 153, 'Extra Image', '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(426, 'N53DqBXZqkE5V1YlShFLhIXEXCwRiH.png', 153, 'Main Image', '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(425, 'jIxH4HR7yCcrRJXaQRsmuSNB3BK4IN.png', 153, 'Thumbnail', '2023-08-16 13:58:17', '2023-08-16 13:58:17'),
(348, 'Ofny6pRnfK8ej54GbAYePnerMnJfai.png', 151, 'Thumbnail', '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(347, 'XnCb6jyZIiICgMpJYm3WsbeBFDeh4I.png', 151, 'Main Image', '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(343, 'l4rIfj12F3RJDabU6qrtZDYWIGGD6Y.png', 151, 'Thumbnail', '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(344, 'KCmLzoUrIxVx0QAdwBg1W0dFEOQk8h.png', 151, 'Main Image', '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(345, 'BkGPHshbxE8c6IAlpsn3TRoK8HQVJV.png', 151, 'Nutritional Facts', '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(346, 'B2zEWHPa03sjGNN7mtNcTzTpfw4epp.png', 151, 'Extra Image', '2023-08-16 08:09:21', '2023-08-16 08:09:21'),
(442, 'TB1c4Un4nVXHc38rhfxmi2VUXOqzAu.png', 155, 'Extra Image', '2023-08-16 18:32:40', '2023-08-16 18:32:40'),
(440, 'jIN9BjMiMUxHUVUNKsYQFS6xOdmNnK.png', 155, 'Thumbnail', '2023-08-16 18:32:39', '2023-08-16 18:32:39'),
(441, 'aFvopwUoNW8RDq99unmTmCZVDvpZKL.png', 155, 'Main Image', '2023-08-16 18:32:40', '2023-08-16 18:32:40'),
(424, 'lYWoI8kJomdKgeVtLYY5ag2iPfYQcf.png', 153, 'Nutritional Facts', '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(422, 'C74AB6SwkbpQolFwVum7m5rrp6NEod.png', 153, 'Thumbnail', '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(423, '0MbTxDzi56t2fpcOtltXaE0U0NRr6D.png', 153, 'Main Image', '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(517, 'SBTku98PRK9HqBxTnqQUmp9Zh0Xqka.png', 149, 'Extra Image', '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(516, 'YaMzJhF2T5LicPouVjmYoKszsDciMB.png', 149, 'Thumbnail', '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(515, 'wyt6fo8jcr7o2meZejBnmksVB27udN.png', 149, 'Main Image', '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(514, 'WZytGTLAJnklganlmoJvOBDyhbkP8z.png', 149, 'Nutritional Facts', '2023-08-17 12:07:55', '2023-08-17 12:07:55'),
(513, 'zlGawxU9oBs92bogL71HrENQOGG54X.png', 149, 'Main Image', '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(512, 'MD94LxIkE6DZvrHYouyNneHwGtU7Rq.png', 149, 'Thumbnail', '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(332, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(333, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(334, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(335, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(336, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-16 08:04:47', '2023-08-16 08:04:47'),
(337, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-16 08:04:48', '2023-08-16 08:04:48'),
(438, 'gNpuTucWJxyMeaxfiCuxnHJYKoIlxz.png', 155, 'Main Image', '2023-08-16 18:32:37', '2023-08-16 18:32:37'),
(437, 'EhNA3Oh78hnMmVD0QrG9uk5h3J26Pl.png', 155, 'Thumbnail', '2023-08-16 18:32:37', '2023-08-16 18:32:37'),
(451, 'F6V4CiK6edsOQmj12LNEzHc8vF0A50.png', 129, 'Thumbnail', '2023-08-17 10:29:14', '2023-08-17 10:29:14'),
(454, 'jWQ3LfmGfq8LRyOzDIDQrmKr6ZVyGm.png', 130, 'Nutritional Facts', '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(455, 'Hsux3Yzx4RUX2iJw0mjJizg6eAPWEW.png', 131, 'Thumbnail', '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(456, 'CXnsbinlHyDegcfBPZFiaUAbcehN0T.png', 131, 'Main Image', '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(503, 'JWZM0olG5JUQSuPb1F7cRy5Ru2HShR.png', 26, 'Thumbnail', '2023-08-17 11:29:25', '2023-08-17 11:29:25'),
(381, 'tsUFvcOowFLaD5GGt9JCR0Z11fgaLV.png', 28, 'Nutritional Facts', '2023-08-16 08:30:32', '2023-08-16 08:30:32'),
(380, '7b5xv9P4k0CSnxiLUerF3prTG59B1s.png', 28, 'Main Image', '2023-08-16 08:30:32', '2023-08-16 08:30:32'),
(379, 'owOSVNK1fWHZaGFE11xZvd6bgHrOYD.png', 28, 'Thumbnail', '2023-08-16 08:30:31', '2023-08-16 08:30:31'),
(501, 'cTnOIct5E2y17LJSpGVH3wwkUYNU31.png', 26, 'Nutritional Facts', '2023-08-17 11:29:24', '2023-08-17 11:29:24'),
(502, 'NUikrY8f4tRZ5EhdNINO4RTucFMrRH.png', 26, 'Main Image', '2023-08-17 11:29:25', '2023-08-17 11:29:25');

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

--
-- Dumping data for table `product_images_old`
--

INSERT INTO `product_images_old` (`id`, `picture`, `product_id`, `created_at`, `updated_at`) VALUES
(17, '8ivvVu6SBvS1S9YAAkiPnidZcNjbqn.png', '38', '2023-07-11 17:00:18', '2023-07-11 17:00:18'),
(18, '4tLchqm4K5z5htEDuXXzdNQeevvx8S.png', '43', '2023-07-11 17:00:36', '2023-07-11 17:00:36'),
(19, 'qE1vyqlZnvsDtWxyUz0331PJAMvfAa.png', '44', '2023-07-11 17:00:47', '2023-07-11 17:00:47'),
(20, 'cNpqLlmt7dScHLjnmTSrJz2xAjztTj.png', '45', '2023-07-11 17:01:00', '2023-07-11 17:01:00'),
(60, 'g78pyF2ylrsBOnfJFSGAhqk3jHwb9h.png', '40', '2023-07-20 16:51:58', '2023-07-20 16:51:58'),
(61, 'Nt5HzB4TmmKaJ54ruB7OVImD5ViiyT.png', '115', '2023-07-20 16:52:45', '2023-07-20 16:52:45'),
(62, 'fAKlQmiLMjFYgoNarmHSOejf4euDo7.png', '116', '2023-07-20 16:53:31', '2023-07-20 16:53:31'),
(63, 'JqgU60sjWC6GEzFSKchTLET0Z6klV0.png', '118', '2023-07-20 16:55:23', '2023-07-20 16:55:23'),
(64, 'xuF2QIz2oeTc4lAqGT8e1Yx6mHvYxl.png', '117', '2023-07-20 16:55:39', '2023-07-20 16:55:39'),
(65, '8g2IpXm2ERzjhgFEYGb31kdPfItMzf.png', '132', '2023-07-21 11:38:57', '2023-07-21 11:38:57'),
(66, 'QaI40BmxKLe8OBn0zSzGjOC2nN2NNT.png', '133', '2023-07-21 11:42:29', '2023-07-21 11:42:29'),
(67, 'euBlPwGzKYTcfQTI5D1xAPoNE3RZIp.png', '134', '2023-07-21 11:44:46', '2023-07-21 11:44:46'),
(68, 'DITTmGKfdpMtqRzvHYhq3rRj4jApIb.png', '144', '2023-07-21 11:53:56', '2023-07-21 11:53:56'),
(74, 'GZr1XuCRE5rFbXNtdKkH58pwx0WptR.png', '64', '2023-07-21 14:43:35', '2023-07-21 14:43:35'),
(75, '6GnKKVJDMqS4cuNs3rDCW2QktNF4v6.png', '65', '2023-07-21 14:44:40', '2023-07-21 14:44:40'),
(76, 'DwKXBQj7FUmLotJgNc0inJ1qNxGzex.png', '67', '2023-07-21 14:45:45', '2023-07-21 14:45:45'),
(77, 'iTcZeF7tkLlv5bKBgH9tqVmvm824US.png', '68', '2023-07-21 14:46:53', '2023-07-21 14:46:53'),
(175, 'zgxxH4mtYl2NhUyS4PxsDIUhF0CQrS.png', '149', '2023-07-25 13:57:58', '2023-07-25 13:57:58'),
(176, '0farrEHNAXXP6jmvPSykOk4vzrtlxi.png', '149', '2023-07-25 13:57:58', '2023-07-25 13:57:58'),
(177, 'RUvoVe0YR5aw2sW9yQx4bY6TUKdpj4.png', '149', '2023-07-25 13:57:58', '2023-07-25 13:57:58'),
(178, 'hN2FxRJywxcEufe6kMyPY9KVbdqBjk.png', '149', '2023-07-25 13:57:58', '2023-07-25 13:57:58'),
(179, 'lHKugvKyxOr6mYSxI8kP5WDVUyJja2.png', '152', '2023-07-25 14:01:42', '2023-07-25 14:01:42'),
(180, 'XC5WctpIzFSOZj4pQ6j9skCYr6XL06.png', '152', '2023-07-25 14:01:42', '2023-07-25 14:01:42'),
(185, '8IAnhfypDLAbWCsadPr87fb77jfAZG.png', '150', '2023-07-25 14:12:35', '2023-07-25 14:12:35'),
(186, 'IlglarMo0QpcQCOfxxP6Cgvf8om7zf.png', '150', '2023-07-25 14:12:35', '2023-07-25 14:12:35'),
(187, 'ygKknlRD7AoaaGDAQW1mZuvkwiml3J.png', '150', '2023-07-25 14:12:35', '2023-07-25 14:12:35'),
(188, 'HqUeKWClKyBEpmWruPea0CbB5iUUPY.png', '153', '2023-07-25 14:15:14', '2023-07-25 14:15:14'),
(189, 'Q3B0dB4hQ3pDA8bvSZiHz27cjp6h53.png', '153', '2023-07-25 14:15:14', '2023-07-25 14:15:14'),
(190, 'HJ24ypfKtRcDBbjlue0izwP6EtvC99.png', '153', '2023-07-25 14:15:14', '2023-07-25 14:15:14'),
(191, 'dtRTqW1PuMxllhxVNJjcuYZtX01BNi.png', '154', '2023-07-25 14:19:31', '2023-07-25 14:19:31'),
(192, 'GTnVqtdm0wztNm3XnOq1dKgMa2meuw.png', '154', '2023-07-25 14:19:31', '2023-07-25 14:19:31'),
(193, 'ESUBLh5sPsqGRcXImx1e8beHXX9a0r.png', '154', '2023-07-25 14:19:31', '2023-07-25 14:19:31'),
(194, 'e2iAwG8lW4UJ2x2d0U3CCRA5Pdnn3y.png', '155', '2023-07-25 14:22:01', '2023-07-25 14:22:01'),
(195, 'UI3dmrh3e4BlDkL5RkSUuF5peVODkq.png', '155', '2023-07-25 14:22:01', '2023-07-25 14:22:01'),
(196, 'cvNUUDF6sKOlLMcYLXGIvFeyKg9t16.png', '155', '2023-07-25 14:22:01', '2023-07-25 14:22:01'),
(197, 'PNNBXhnDIMZ8pf3WqGvjYPGBBd7yCI.png', '156', '2023-07-25 14:25:05', '2023-07-25 14:25:05'),
(198, 'tikJjeaGWMa6g8hkpXjeL4mHMrK0f1.png', '156', '2023-07-25 14:25:05', '2023-07-25 14:25:05'),
(199, '09jg5NSgUaRwjIPLFpjaXj2DzYmOo8.png', '156', '2023-07-25 14:25:05', '2023-07-25 14:25:05'),
(200, '3DVwUpYcS1zbHIIW2jBuaLakYN0Qxf.png', '151', '2023-07-28 17:07:18', '2023-07-28 17:07:18'),
(201, 'H6I7cq09zibtNOq9plNsgqwePsiU1E.png', '151', '2023-07-28 17:07:18', '2023-07-28 17:07:18'),
(202, 'ncgeWsSNGMmI4LvIWseTg5XwgGG5ix.png', '151', '2023-07-28 17:07:18', '2023-07-28 17:07:18');

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
(792, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(793, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(794, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(795, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(796, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(797, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(798, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(799, NULL, '103', '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(2448, '5', '102', '2023-08-14 10:39:17', '2023-08-14 10:39:17'),
(2449, '4', '102', '2023-08-14 10:39:17', '2023-08-14 10:39:17'),
(2452, '5', '111', '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(2453, '4', '111', '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(2478, '5', '154', '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(2479, '4', '154', '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(2494, '5', '150', '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(2495, '4', '150', '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(2496, '5', '152', '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(2497, '4', '152', '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(2498, '5', '151', '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(2499, '4', '151', '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(2514, '5', '29', '2023-08-16 08:29:39', '2023-08-16 08:29:39'),
(2515, '4', '29', '2023-08-16 08:29:39', '2023-08-16 08:29:39'),
(2516, '5', '28', '2023-08-16 08:30:30', '2023-08-16 08:30:30'),
(2517, '4', '28', '2023-08-16 08:30:30', '2023-08-16 08:30:30'),
(2518, '5', '30', '2023-08-16 08:31:40', '2023-08-16 08:31:40'),
(2519, '4', '30', '2023-08-16 08:31:40', '2023-08-16 08:31:40'),
(2520, '5', '31', '2023-08-16 08:32:32', '2023-08-16 08:32:32'),
(2521, '4', '31', '2023-08-16 08:32:32', '2023-08-16 08:32:32'),
(2522, '5', '27', '2023-08-16 08:33:35', '2023-08-16 08:33:35'),
(2523, '4', '27', '2023-08-16 08:33:35', '2023-08-16 08:33:35'),
(2524, '5', '25', '2023-08-16 08:33:45', '2023-08-16 08:33:45'),
(2525, '4', '25', '2023-08-16 08:33:45', '2023-08-16 08:33:45'),
(2526, '5', '156', '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(2527, '4', '156', '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(2542, '5', '153', '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(2543, '4', '153', '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(2544, '5', '112', '2023-08-16 15:14:19', '2023-08-16 15:14:19'),
(2545, '4', '112', '2023-08-16 15:14:19', '2023-08-16 15:14:19'),
(2548, '5', '155', '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(2549, '4', '155', '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(2566, '5', '129', '2023-08-17 10:29:13', '2023-08-17 10:29:13'),
(2567, '4', '129', '2023-08-17 10:29:13', '2023-08-17 10:29:13'),
(2568, '5', '130', '2023-08-17 10:51:25', '2023-08-17 10:51:25'),
(2569, '4', '130', '2023-08-17 10:51:25', '2023-08-17 10:51:25'),
(2570, '5', '131', '2023-08-17 10:51:33', '2023-08-17 10:51:33'),
(2571, '4', '131', '2023-08-17 10:51:33', '2023-08-17 10:51:33'),
(2572, '5', '128', '2023-08-17 10:52:32', '2023-08-17 10:52:32'),
(2573, '4', '128', '2023-08-17 10:52:32', '2023-08-17 10:52:32'),
(2574, '5', '126', '2023-08-17 10:54:08', '2023-08-17 10:54:08'),
(2575, '4', '126', '2023-08-17 10:54:08', '2023-08-17 10:54:08'),
(2576, '5', '125', '2023-08-17 10:54:53', '2023-08-17 10:54:53'),
(2577, '4', '125', '2023-08-17 10:54:53', '2023-08-17 10:54:53'),
(2578, '5', '124', '2023-08-17 10:55:54', '2023-08-17 10:55:54'),
(2579, '4', '124', '2023-08-17 10:55:54', '2023-08-17 10:55:54'),
(2586, '5', '118', '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(2587, '4', '118', '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(2588, '5', '34', '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(2589, '4', '34', '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(2590, '5', '68', '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(2591, '4', '68', '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(2592, '5', '65', '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(2593, '4', '65', '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(2594, '5', '26', '2023-08-17 11:29:23', '2023-08-17 11:29:23'),
(2595, '4', '26', '2023-08-17 11:29:23', '2023-08-17 11:29:23'),
(2596, '5', '64', '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(2597, '4', '64', '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(2600, '5', '66', '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(2601, '4', '66', '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(2602, '5', '69', '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(2603, '4', '69', '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(2604, '5', '149', '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(2605, '4', '149', '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(2610, '5', '165', '2023-08-17 12:50:32', '2023-08-17 12:50:32'),
(2611, '4', '165', '2023-08-17 12:50:32', '2023-08-17 12:50:32');

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

--
-- Dumping data for table `product_specializations`
--

INSERT INTO `product_specializations` (`id`, `product_id`, `specialization_id`, `created_at`, `updated_at`) VALUES
(78, 153, 1, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(77, 153, 2, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(76, 153, 3, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(79, 155, 3, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(80, 155, 2, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(81, 155, 1, '2023-08-16 18:32:36', '2023-08-16 18:32:36');

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
  `status` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `product_variations`
--

INSERT INTO `product_variations` (`id`, `master_id`, `product_id`, `sku`, `variation`, `variation_name`, `in_store`, `online`, `weight`, `in_stock`, `stock_status`, `price`, `serving`, `cook_time`, `energy`, `vegan`, `status`, `created_at`, `updated_at`) VALUES
(443, 476, 62, 'GIFTCARD50', NULL, 'GIFT CARD $50', 0, 1, NULL, '0', 1, 50.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:16:57', '2023-07-19 13:16:57'),
(444, 477, 110, 'GIFTCARD75', NULL, 'GIFT CARD $75', 0, 1, NULL, '0', 1, 75.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:17:20', '2023-07-19 13:17:20'),
(445, 478, 61, 'GIFTCARD25', NULL, 'GIFT CARD $25', 0, 1, NULL, '0', 1, 25.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:17:34', '2023-07-19 13:17:34'),
(446, 479, 63, 'GIFTCARD100', NULL, 'GIFT CARD $100', 0, 1, '10', '0', 1, 100.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:17:46', '2023-07-19 13:17:46'),
(447, 480, 57, 'Addon14', NULL, 'REESE\'S PIECES Minis Peanut Butter Candy', 0, 1, NULL, '0', 1, 10.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:18:52', '2023-07-19 13:18:52'),
(449, 482, 54, 'Addon12', NULL, 'CADBURY ROYAL DARK Black Forest Cake XL Candy Bar', 0, 1, NULL, '0', 1, 7.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:19:43', '2023-07-19 13:19:43'),
(450, 483, 52, 'Addon11', NULL, 'CADBURY DAIRY MILK Rock The Road XL Candy', 0, 1, NULL, '0', 1, 5.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:20:07', '2023-07-19 13:20:07'),
(451, 484, 59, 'Greeting-card-001', NULL, 'Greeting Card', 0, 1, NULL, '0', 1, 25.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 13:20:44', '2023-07-19 13:20:44'),
(540, 573, 56, 'Addon13', NULL, 'HERSHEY\'S Trees & Stockings White Creme Chips', 0, 1, NULL, '0', 1, 9.00, NULL, NULL, NULL, NULL, NULL, '2023-07-19 14:01:53', '2023-07-19 14:01:53'),
(554, 587, 146, 'SPAPPLN5', '5 Inch/Normal', 'Apple Pie 5 Inch / Normal', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:19:39', '2023-07-19 15:19:39'),
(555, 588, 146, 'SPAPPLN9', '9 Inch/Normal', 'Apple Pie 9 Inch / Normal', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:19:39', '2023-07-19 15:19:39'),
(556, 589, 147, 'SPAPPLF5', '5 Inch/Frozen', 'Apple Pie Frozen 5 Inch / Frozen', 0, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:25:24', '2023-07-19 15:25:24'),
(557, 590, 147, 'SPAPPLF9', '9 Inch/Frozen', 'Apple Pie Frozen 9 Inch / Frozen', 0, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:25:24', '2023-07-19 15:25:24'),
(558, 591, 148, 'SPCHRRN5', '5 Inch/Normal', 'Cherry Pie 5 Inch / Normal', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:30:37', '2023-07-19 15:30:37'),
(559, 592, 148, 'SPCHRRN9', '9 Inch/Normal', 'Cherry Pie 9 Inch / Normal', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-07-19 15:30:37', '2023-07-19 15:30:37'),
(841, 870, 103, 'JMJQC5', '5 Inch', 'Jalapeno Monterey Jack 5 Inch', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(842, 869, 103, 'JMJQC9', '9 Inch', 'Jalapeno Monterey Jack 9 Inch', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-07-21 14:50:02', '2023-07-21 14:50:02'),
(1180, 1175, 162, '10wee', 'size:5 inch,type:Forzen', '5 inch Forzen', 0, 1, NULL, '1', 1, 9.00, NULL, NULL, NULL, NULL, NULL, '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(1181, 1174, 162, '10FDV', 'size:10 inch,type:Forzen', '10 inch Forzen', 0, 1, NULL, '1', 1, 11.00, NULL, NULL, NULL, NULL, NULL, '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(1182, 1173, 162, '10WER', 'size:10 inch,type:Baked', '10 inch Baked', 0, 1, NULL, '1', 1, 10.00, NULL, NULL, NULL, NULL, NULL, '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(1183, 1176, 162, '5BKD', 'size:5 inch,type:Baked', '5 inch Baked', 0, 1, NULL, '1', 1, 9.00, NULL, NULL, NULL, NULL, NULL, '2023-08-10 12:55:33', '2023-08-10 12:55:33'),
(1190, 858, 102, 'GCVQC9', 'size:9 Inch', '9 Inch', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:39:17', '2023-08-14 10:39:17'),
(1191, 857, 102, 'GCVQC5', 'size:5 Inch', '5 Inch', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:39:17', '2023-08-14 10:39:17'),
(1194, 854, 111, 'ACPQC5', 'size:5 Inch', '5 Inch', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(1195, 853, 111, 'ACPQC9', 'size:9 Inch', '9 Inch', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(1236, 1139, 154, 'CBPSP5', 'size:5 INCH,type:Baked', '5 INCH Baked', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(1237, 1138, 154, 'CBPSP5F', 'size:5 INCH,type:Frozen', '5 INCH Frozen', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(1238, 1137, 154, 'CBPSP9F', 'size:9 INCH,type:Frozen', '9 INCH Frozen', 1, 1, NULL, NULL, 0, 28.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(1239, 1136, 154, 'CBPSP9', 'size:9 INCH,type:Baked', '9 INCH Baked', 1, 1, NULL, NULL, 0, 28.99, NULL, NULL, NULL, NULL, NULL, '2023-08-14 20:40:41', '2023-08-14 20:40:41'),
(1260, 1130, 150, 'CHRSP5', 'size:5 Inch,type:Baked', '5 Inch Baked', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(1261, 1129, 150, 'CHRSP5F', 'size:5 Inch,type:Frozen', '5 Inch Frozen', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(1262, 1128, 150, 'CHRSP9', 'size:9 Inch,type:Baked', '9 Inch Baked', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(1263, 1127, 150, 'CHRSP9F', 'size:9 Inch,type:Frozen', '9 Inch Frozen', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:04:44', '2023-08-16 08:04:44'),
(1264, 1121, 152, 'SBRSP5', 'size:5 Inch,type:Baked', '5 Inch Baked', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(1265, 1120, 152, 'SBRSP5F', 'size:5 Inch,type:Frozen', '5 Inch Frozen', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(1266, 1119, 152, 'SBRSP9', 'size:9 Inch,type:Baked', '9 Inch Baked', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(1267, 1118, 152, 'SBRSP9F', 'size:9 Inch,type:Frozen', '9 Inch Frozen', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(1268, 1126, 151, 'BBRSP5', 'size:5 Inch,type:Baked', '5 Inch Baked', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(1269, 1125, 151, 'BBRSP5F', 'size:5 Inch,type:Frozen', '5 Inch Frozen', 1, 1, NULL, NULL, 0, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(1270, 1124, 151, 'BBRSP9', 'size:9 Inch,type:Baked', '9 Inch Baked', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(1271, 1123, 151, 'BBRSP59F', 'size:9 Inch,type:Frozen', '9 Inch Frozen', 1, 1, NULL, NULL, 0, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(1283, 1150, 29, 'CPPSV', NULL, 'Chicken Pot Pie', 1, 1, NULL, '0', 1, 10.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:29:39', '2023-08-16 08:29:39'),
(1284, 1151, 28, 'BBSSV', NULL, 'Braised Beef Short Rib Pie', 1, 1, NULL, '0', 1, 10.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:30:30', '2023-08-16 08:30:30'),
(1285, 1149, 30, 'MPPSV', NULL, 'Mushroom Pot Pie', 1, 1, NULL, '0', 1, 9.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:31:40', '2023-08-16 08:31:40'),
(1286, 1148, 31, 'STMSV', NULL, 'Soy Tikka Masala Pie', 1, 1, NULL, '0', 1, 9.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:32:32', '2023-08-16 08:32:32'),
(1287, 911, 27, 'SBCSV', NULL, 'Spicy Beef Curry Pie', 1, 1, NULL, '0', 1, 10.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:33:35', '2023-08-16 08:33:35'),
(1288, 905, 25, 'STASV', NULL, 'Steak and Ale Pie', 1, 1, NULL, '0', 1, 10.99, NULL, '0', '0', NULL, NULL, '2023-08-16 08:33:45', '2023-08-16 08:33:45'),
(1289, 1143, 156, 'PMKSP9', 'size:9 Inch', '9 Inch', 1, 1, NULL, '0', 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(1290, 1142, 156, 'PMKSP5', 'size:5 Inch', '5 Inch', 1, 1, NULL, '0', 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(1300, 1132, 153, 'PCNSP5', 'size:5 INCH,type:Baked', '5 INCH Baked', 1, 1, NULL, NULL, 1, 9.99, '3 persons', '3 hours', '3KG', NULL, NULL, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(1301, 1133, 153, 'PCNSP9', 'size:9 INCH,type:Baked', '9 INCH Baked', 1, 1, NULL, NULL, 1, 28.99, '3 persons', '3 hours', '3KG', NULL, NULL, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(1302, 1135, 153, 'PCNSP9F', 'size:9 INCH,type:Frozen', '9 INCH Frozen', 1, 1, NULL, NULL, 1, 28.99, '3 persons', '3 hours', '3KG', NULL, NULL, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(1303, 1134, 153, 'PCNSP5F', 'size:5 INCH,type:Frozen', '5 INCH Frozen', 1, 1, NULL, NULL, 1, 9.99, '3 persons', '3 hours', '3KG', NULL, NULL, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(1304, 852, 112, 'SPKQC5', 'size:5 Inch', '5 Inch', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 15:14:19', '2023-08-16 15:14:19'),
(1305, 851, 112, 'SPKQC9', 'size:9 Inch', '9 Inch', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 15:14:19', '2023-08-16 15:14:19'),
(1308, 1141, 155, 'LMNSP9', 'size:9 Inch', '9 Inch', 1, 1, NULL, '0', 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(1309, 1140, 155, 'LMNSP5', 'size:5 Inch', '5 Inch', 1, 1, NULL, '0', 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-16 18:32:36', '2023-08-16 18:32:36'),
(1319, 1208, 129, 'SMRCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '1', 1, 15.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:29:13', '2023-08-17 10:29:13'),
(1320, 1209, 129, 'SMRCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:29:13', '2023-08-17 10:29:13'),
(1321, 879, 130, 'OROCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, NULL, 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:51:25', '2023-08-17 10:51:25'),
(1322, 1214, 130, 'OROCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:51:25', '2023-08-17 10:51:25'),
(1323, 884, 131, 'RNBCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '0', 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:51:33', '2023-08-17 10:51:33'),
(1324, 1215, 131, 'RNBCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:51:33', '2023-08-17 10:51:33'),
(1325, 876, 128, 'RDVCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '0', 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:52:32', '2023-08-17 10:52:32'),
(1326, 1216, 128, 'RDVCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:52:32', '2023-08-17 10:52:32'),
(1327, 873, 127, 'PNBCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '0', 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:53:16', '2023-08-17 10:53:16'),
(1328, 1217, 127, 'PNBCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:53:16', '2023-08-17 10:53:16'),
(1329, 872, 126, 'NTFCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '0', 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:54:08', '2023-08-17 10:54:08'),
(1330, 1218, 126, 'NTFCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:54:08', '2023-08-17 10:54:08'),
(1331, 868, 125, 'CCCCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '0', 1, 15.99, NULL, '0', '0', NULL, NULL, '2023-08-17 10:54:53', '2023-08-17 10:54:53'),
(1332, 1219, 125, 'CCCCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:54:53', '2023-08-17 10:54:53'),
(1333, 1156, 124, 'ACBCK6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '30', 1, 15.00, NULL, '0', '0', NULL, NULL, '2023-08-17 10:55:54', '2023-08-17 10:55:54'),
(1334, 1220, 124, 'ACBCK12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 29.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 10:55:54', '2023-08-17 10:55:54'),
(1347, 749, 40, 'CRBBG4', 'size:4 Pcs', '4 Pcs', 0, 1, NULL, '0', 1, 19.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:05:52', '2023-08-17 11:05:52'),
(1348, 1221, 40, 'CRBBG6', 'size:6 Pcs', '6 Pcs', 0, 1, NULL, '1', 1, 28.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:05:52', '2023-08-17 11:05:52'),
(1349, 1222, 40, 'CRBBG12', 'size:12 Pcs', '12 Pcs', 0, 1, NULL, '1', 1, 56.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:05:52', '2023-08-17 11:05:52'),
(1350, 752, 118, 'DSQBG4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 19.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(1351, 1223, 118, 'DSQBG6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '1', 1, 28.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(1352, 1224, 118, 'DSQBG12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 56.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(1353, 1154, 34, 'BTTBG4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 11.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(1354, 1225, 34, 'BTTBG6', 'size:6 Pcs', '6 Pcs', 1, 1, NULL, '1', 1, 17.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(1355, 1226, 34, 'BTTBG12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 34.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:08:19', '2023-08-17 11:08:19'),
(1356, 866, 68, 'SBSCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(1357, 1227, 68, 'SBSCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(1358, 1228, 68, 'SBSCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(1359, 863, 67, 'CCFCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(1360, 1229, 67, 'CCFCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(1361, 1230, 67, 'CCFCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(1362, 861, 65, 'RDVCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(1363, 1231, 65, 'RDVCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(1364, 1232, 65, 'RDVCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:13:16', '2023-08-17 11:13:16'),
(1365, 910, 26, 'PLPSV', NULL, 'Pulled Pork Pie', 1, 1, NULL, '0', 1, 10.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:29:23', '2023-08-17 11:29:23'),
(1366, 859, 64, 'CCKCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(1367, 1233, 64, 'CCKCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(1368, 1234, 64, 'CCKCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:31:41', '2023-08-17 11:31:41'),
(1372, 820, 66, 'BDCCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(1373, 1237, 66, 'BDCCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(1374, 1238, 66, 'BDCCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(1375, 823, 69, 'ACJCJ4', 'size:4 Pcs', '4 Pcs', 1, 1, NULL, '0', 1, 22.99, NULL, '0', '0', NULL, NULL, '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(1376, 1235, 69, 'ACJCJ8', 'size:8 Pcs', '8 Pcs', 1, 1, NULL, '1', 1, 44.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(1377, 1236, 69, 'ACJCJ12', 'size:12 Pcs', '12 Pcs', 1, 1, NULL, '1', 1, 67.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 11:38:09', '2023-08-17 11:38:09'),
(1378, 1117, 149, 'APLSP9F', 'size:9 Inch,type:Frozen', '9 Inch Frozen', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(1379, 1116, 149, 'APLSP9', 'size:9 Inch,type:Baked', '9 Inch Baked', 1, 1, NULL, NULL, 1, 26.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(1380, 1115, 149, 'APLSP5F', 'size:5 Inch,type:Frozen', '5 Inch Frozen', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(1381, 1114, 149, 'APLSP5', 'size:5 Inch,type:Baked', '5 Inch Baked', 1, 1, NULL, NULL, 1, 9.99, NULL, NULL, NULL, NULL, NULL, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(1384, 1241, 165, 'TESTPDCT', NULL, NULL, 1, 1, '0', '1', 1, 1.00, NULL, NULL, NULL, NULL, NULL, '2023-08-17 12:50:32', '2023-08-17 12:50:32');

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
(1, '81', 'Ontario', 'ON', 'CA', '0', 1, NULL, NULL, '0', '2023-05-25 17:06:04', '2023-05-25 17:06:04'),
(2, '82', 'British Columbia', 'BC', 'CA', '0', 1, NULL, NULL, '0', '2023-05-25 17:06:25', '2023-05-25 17:06:25'),
(3, '83', 'Quebec', 'QC', 'CA', '0', 1, NULL, NULL, '0', '2023-05-25 17:06:41', '2023-05-25 17:06:41'),
(4, '84', 'Nova Scotia', 'NS', 'CA', '0', 1, NULL, NULL, '0', '2023-05-25 17:06:59', '2023-05-25 17:06:59'),
(5, '85', 'New Brunswick', 'NB', 'CA', '0', 1, NULL, NULL, '0', '2023-06-26 13:49:18', '2023-06-27 18:27:51'),
(6, '86', 'Manitoba', 'MB', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:28:05', '2023-06-27 18:28:05'),
(7, '87', 'Prince Edward Island', 'PE', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:28:27', '2023-06-27 18:28:27'),
(8, '88', 'Saskatchewan', 'SK', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:28:40', '2023-06-27 18:28:40'),
(9, '89', 'Alberta', 'AB', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:28:54', '2023-06-27 18:28:54'),
(10, '90', 'Newfoundland And Labrador', 'NL', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:29:06', '2023-06-27 18:29:06'),
(11, '91', 'Northwest Territories', 'NT', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:29:18', '2023-06-27 18:29:18'),
(12, '92', 'Yukon', 'YT', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:29:38', '2023-06-27 18:30:03'),
(13, '93', 'Nunavut', 'NU', 'CA', '0', 1, NULL, NULL, '0', '2023-06-27 18:29:55', '2023-06-27 18:29:55');

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
(4, '22', 'pickup', 'Pickup', 'pickup', NULL, '0.00', '0', '1', '00:00:00', '3', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, '1', '10', 'dummy.png', 1, '2023-06-15 11:55:12', '2023-06-27 16:32:10'),
(5, '23', 'delivery', 'Delivery', 'delivery', NULL, '10.00', '1', '3', '14:00:00', '0', NULL, NULL, 1, 1, 1, 1, 1, 1, 1, '1', '10', 'dummy.png', 1, '2023-06-15 11:58:19', '2023-08-08 09:06:52');

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

--
-- Dumping data for table `socialmedia_sites`
--

INSERT INTO `socialmedia_sites` (`id`, `master_id`, `title`, `icon`, `link`, `position`, `status`, `created_at`, `updated_at`) VALUES
(1, 5, 'Facebook', 'fa fa-facebook', 'https://www.facebook.com/mysweetiepie.ca', 2, '1', '2023-05-09', '2023-07-13'),
(2, 6, 'Instagram', 'bi bi-instagram', 'https://www.instagram.com/mysweetiepie.ca/', 1, '1', '2023-05-09', '2023-07-13'),
(6, 10, 'Tiktok', 'bi bi-tiktok', 'https://www.tiktok.com/@mysweetiepie.ca', 3, '1', '2023-07-13', '2023-07-13');

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

--
-- Dumping data for table `specializations`
--

INSERT INTO `specializations` (`id`, `name`, `slug`, `status`, `created_at`, `updated_at`, `icon`) VALUES
(1, 'Vegan', 'vegan', 1, '2023-08-01 10:16:01', '2023-06-15 10:02:56', 'vegan.png'),
(2, 'Gluten Free', 'gluten-free', 1, '2023-08-01 10:16:13', '2023-06-15 10:02:56', 'gluten-free.png'),
(3, 'Halal', 'halal', 1, '2023-08-01 10:16:25', '2023-06-15 10:02:56', 'halal.png');

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

INSERT INTO `stores` (`id`, `master_id`, `name`, `slug`, `store_code`, `email`, `secondary_email`, `address`, `description`, `city`, `postal_code`, `province`, `phone`, `lat`, `lng`, `map_link`, `picture`, `picture_icon`, `display_order`, `shipping`, `status`, `created_at`, `updated_at`, `manager_name`, `manager_picture`) VALUES
(1, '30', 'Harbord St.', 'harbord-st', 'Harbord', 'harbordst@mysweetiepie.ca', 'leannesweetiepie@gmail.com', '326 Harbord St', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp; is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON HARBORD VILLAGE</strong></strong>:</p>\r\n\r\n<p>Harbord Village is a vibrant neighborhood located in downtown Toronto, Canada. Its history dates back to the early 19th century when the area was primarily farmland and rural outskirts of the growing city. The village takes its name from John Harbord, an early landowner and member of the prominent Harbord family.</p>\r\n\r\n<p>In the late 1800s, urbanization began to encroach upon the village, and the farmlands gradually gave way to residential development. The construction of the University of Toronto&#39;s St. George campus in the late 19th century played a significant role in shaping the neighborhood. The influx of students and faculty led to the establishment of rooming houses and boarding homes, catering to the academic community.</p>\r\n\r\n<p>During the early 20th century, Harbord Village experienced a surge in population growth and became a diverse and multicultural enclave. The neighborhood attracted immigrants from various backgrounds, including Jewish, Italian, and Portuguese communities. As a result, the area gained a rich cultural tapestry and a distinct character.</p>\r\n\r\n<p>In the mid-20th century, Harbord Village faced some challenges as the construction of major infrastructure projects threatened the community. The proposed Spadina Expressway, which would have cut through the heart of the neighborhood, sparked significant opposition from residents. Through grassroots activism and community organizing, local residents successfully halted the expressway&#39;s construction in the late 1960s. This victory solidified Harbord Village&#39;s reputation as a community that valued its heritage and fought to preserve its character.</p>\r\n\r\n<p>Over the years, Harbord Village has continued to evolve and adapt to changing times. The neighborhood has seen ongoing efforts to maintain its historic architecture, such as the preservation of Victorian-style homes and buildings. It has also become a hub for local businesses, including charming shops, trendy eateries, and small-scale enterprises.</p>\r\n\r\n<p>Today, Harbord Village remains a thriving and diverse neighborhood known for its strong sense of community. Its tree-lined streets, quaint houses, and proximity to the University of Toronto make it an attractive place to live for students, young professionals, and families alike. The neighborhood&#39;s rich history, coupled with its modern amenities and vibrant cultural scene, contribute to its enduring appeal in the heart of Toronto.</p>', 'Toronto', 'M6G 1H1', 'ON', '+16472453301', '43.660067685121575', '-79.41738235839722', 'https://goo.gl/maps/KyqVZPZ6i99s75wp9', 'gXG0qHc6fdgNgE3HHwLb1EVBaTbVRH.png', 'YRHCpnTNc7OXuzPIkX5YnqpzWAyREN.png', 2, '0', 1, '2023-05-09 15:00:37', '2023-08-14 15:43:16', NULL, 'dummy.png'),
(2, '29', 'Queen West', 'queen-west', 'Queen West', 'queenst@mysweetiepie.ca', 'aaliasweetiepie@gmail.com', '654 Queen Street West', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp;Sweetie Pie</em></strong></em></strong>&nbsp; is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON QUEEN WEST</strong></strong></p>\r\n\r\n<p>Queen West is a dynamic neighborhood in Toronto that has evolved significantly over the years. Its history can be traced back to the early 19th century when it was primarily an industrial area. The street itself, named after Queen Charlotte, the consort of King George III, became a bustling commercial hub in the late 19th century.</p>\r\n\r\n<p>During the late 1800s and early 1900s, Queen West experienced a period of growth and prosperity. It became a vibrant shopping district, lined with department stores, theaters, and fashionable boutiques. The area attracted a diverse range of businesses and residents, making it a lively and cosmopolitan destination.</p>\r\n\r\n<p>In the mid-20th century, Queen West underwent a transformation as urbanization spread throughout the city. Many businesses relocated to suburban malls, leading to a decline in the neighborhood&#39;s commercial activity. However, this decline opened up opportunities for alternative uses of the space.</p>\r\n\r\n<p>In the 1970s and 1980s, Queen West became a hub for artistic expression and counterculture. The area attracted musicians, artists, and creatives who sought affordable spaces to live and work. The neighborhood quickly became synonymous with Toronto&#39;s thriving arts scene, with galleries, studios, and live music venues popping up along the street.</p>\r\n\r\n<p>Throughout the late 20th century and into the 21st century, Queen West experienced waves of gentrification and revitalization. The area saw an influx of trendy boutiques, restaurants, and bars, attracting a younger, hip demographic. While this brought economic prosperity to the neighborhood, it also raised concerns about rising rents and the displacement of longtime residents and businesses.</p>\r\n\r\n<p>Today, Queen West maintains its reputation as a vibrant and diverse neighborhood. It is known for its eclectic mix of independent shops, art galleries, cafes, and nightlife. The area continues to evolve, with new businesses and developments adding to its vibrancy while efforts are made to preserve its historic character. Queen West remains a beloved destination for locals and visitors alike, embodying the spirit of Toronto&#39;s cultural and creative scene.</p>', 'Toronto', 'M6J 1E5', 'ON', '+16472453301', '43.64687458873649', '-79.40678903614429', 'https://goo.gl/maps/2zET15eEyWsF8MM26', '4WlYEHNVKIelnKCqeVlzpER5suqa0b.png', 'viJiVNTzaPjIgjHVQcAZ4adx5SLdiD.png', 3, '0', 1, '2023-05-09 15:00:37', '2023-08-14 15:43:32', NULL, 'dummy.png'),
(3, '1', 'Unionville', 'unionville', 'Unionville', 'unionville@mysweetiepie.ca', 'unionville@mysweetiepie.ca', '190 Main St Unionville', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON UNIONVILLE</strong></strong></p>\r\n\r\n<p>Unionville is a historic village located in the city of Markham, just north of Toronto, Ontario, Canada. Its history dates back to the early 19th century when it was settled by European immigrants seeking a new life in Upper Canada. The village takes its name from the Union Mills, a group of mills that were built along the banks of the Don River.</p>\r\n\r\n<p>During its early years, Unionville thrived as an agricultural community, with farming and milling serving as the primary economic activities. The village grew steadily, and by the mid-19th century, it became a bustling trade center with various shops, inns, and services catering to the local farming community.</p>\r\n\r\n<p>In the late 19th century, Unionville experienced a significant transformation with the arrival of the Toronto and Nipissing Railway. The railway brought increased connectivity to the village, facilitating the transportation of goods and people. This development spurred further growth and diversification of Unionville&#39;s economy.</p>\r\n\r\n<p>The late 19th and early 20th centuries witnessed the construction of iconic landmarks that still define Unionville today. The Unionville Train Station, built in 1871, became a symbol of the village&#39;s importance as a transportation hub. St. John&#39;s Anglican Church, established in 1832, became a central gathering place for the community.</p>\r\n\r\n<p>Throughout the 20th century, Unionville retained its charm and historical character. The village&#39;s well-preserved heritage buildings and picturesque Main Street became a draw for residents and visitors alike. In recognition of its historical significance, Unionville was designated as a Heritage Conservation District in 1987, ensuring the preservation of its unique architecture and streetscape.</p>\r\n\r\n<p>Today, Unionville seamlessly blends its rich history with modern amenities and a vibrant cultural scene. The village offers a delightful mix of boutique shops, restaurants, art galleries, and community events. It has become a popular tourist destination, attracting visitors who appreciate its small-town ambiance and heritage charm.</p>\r\n\r\n<p>Unionville&#39;s legacy as a historical and cultural gem continues to thrive, serving as a reminder of the early settlement days in the region. The village stands as a testament to the resilience of its residents and their commitment to preserving its unique identity amidst the rapid urbanization of the Greater Toronto Area.</p>', 'Markham', 'L3R 2G9', 'ON', '+16472453301', '43.867728683429036', '-79.31239475840889', 'https://goo.gl/maps/TcCNugVxW9szs7Dw7', '61Xd6INNqM4kEdLVfYdufxo5es7lY2.png', 'k9TJXHFyIDPDzX4KMWTobQCTHD7i2s.png', 5, '1', 1, '2023-05-09 15:00:38', '2023-08-14 15:44:07', NULL, 'dummy.png'),
(4, '31', 'Danforth', 'danforth', 'Danforth', 'danforth@mysweetiepie.ca', 'kierasweetiepie@gmail.com', '563 Danforth Ave', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie&nbsp;</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON DANFORTH</strong></strong></p>\r\n\r\n<p>Danforth, also known as &quot;The Danforth,&quot; is a vibrant neighborhood in Toronto, Ontario, Canada. Its history is rooted in Greek immigration and cultural influence, making it a significant cultural hub within the city.</p>\r\n\r\n<p>In the late 19th century, the area now known as Danforth was primarily farmland on the outskirts of Toronto. However, with the extension of streetcar lines along Danforth Avenue in the early 20th century, the neighborhood began to experience urbanization and development. This expansion led to the construction of residential buildings, shops, and businesses along the avenue.</p>\r\n\r\n<p>The Greek community played a pivotal role in shaping the identity of Danforth. In the 1960s, Greek immigrants started to settle in the area, seeking opportunities and a better life in Canada. As the Greek population grew, businesses catering to the community, such as restaurants, cafes, and specialty shops, emerged along Danforth Avenue. The area became known as &quot;GreekTown&quot; or &quot;The Danforth&quot; due to its Greek cultural influence and vibrant atmosphere.</p>\r\n\r\n<p>The annual &quot;Taste of the Danforth&quot; festival, which began in 1994, has become a beloved tradition in Toronto. This popular event celebrates Greek cuisine, music, and culture, attracting visitors from all over the city and beyond.</p>\r\n\r\n<p>Over the years, Danforth has evolved into a diverse neighborhood, embracing various cultures and ethnicities. The area has witnessed an influx of residents from different backgrounds, resulting in a multicultural atmosphere. Alongside the Greek establishments, Danforth is now home to a wide range of restaurants, boutiques, art galleries, and community spaces.</p>\r\n\r\n<p>In recent years, efforts have been made to revitalize and enhance the Danforth neighborhood. Streetscape improvements, public art installations, and community initiatives have contributed to its continued growth and appeal.</p>\r\n\r\n<p>Today, Danforth retains its Greek influence while offering a vibrant blend of cultures and experiences. It remains a bustling destination for food enthusiasts, shoppers, and those seeking a lively atmosphere. With its rich history and diverse character, Danforth has become an integral part of Toronto&#39;s cultural fabric, showcasing the city&#39;s multiculturalism and the contributions of its diverse communities.</p>', 'Toronto', 'M4K 1P9', 'ON', '+16472453301', '43.67827115245565', '-79.34697386452368', 'https://goo.gl/maps/gWDM1fTj9FPFguUx5', 'AU1SPMZ5cfBqmGs3UV8IcCtsjd94Wv.png', '9rhpiwAxR3Qe2HkGXhIH31YgZVNunP.png', 4, '0', 1, '2023-06-22 13:12:38', '2023-08-14 15:43:55', NULL, 'dummy.png'),
(5, '32', 'Distillery District', 'distillery-district', 'Distillery District', 'distillery@mysweetiepie.ca', 'tracysweetiep@gmail.com', '6 Case Goods Lane', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp;Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON THE DISTILLERY&nbsp;</strong></strong></p>\r\n\r\n<p>The Distillery District is a historic neighborhood located in downtown Toronto, Ontario, Canada. Its history dates back to the early 19th century when it was established as the Gooderham and Worts Distillery. Founded in 1832, it quickly became one of the largest and most successful distilleries in Canada, producing whiskey, spirits, and industrial alcohol.</p>\r\n\r\n<p>During its peak in the late 19th century, the Gooderham and Worts Distillery was a bustling industrial complex with numerous buildings, including warehouses, cooperages, and milling facilities. The distillery employed a significant number of workers and played a vital role in the local economy.</p>\r\n\r\n<p>As time passed, changes in the alcohol industry and urbanization led to the decline of the distillery. In 1990, the distillery ceased its operations, and the site faced the threat of demolition. However, recognizing the historical and architectural significance of the buildings, a group of developers initiated a massive restoration project to transform the area into a unique cultural and entertainment district.</p>\r\n\r\n<p>The restoration efforts, which began in the early 2000s, aimed to preserve the industrial heritage of the site while repurposing the buildings for artistic and cultural purposes. The historic structures were meticulously restored, maintaining their distinctive Victorian-era architecture. Today, the Distillery District stands as a beautifully preserved pedestrian-only area, featuring a collection of red-brick buildings, cobblestone streets, and charming courtyards.</p>\r\n\r\n<p>The Distillery District has become a major tourist attraction and cultural destination in Toronto. It is home to a wide range of art galleries, boutiques, restaurants, theaters, and artisanal shops. The area buzzes with energy, hosting festivals, art exhibitions, performances, and other cultural events throughout the year.</p>\r\n\r\n<p>The transformation of the Distillery District has revitalized the neighborhood and preserved an important part of Toronto&#39;s industrial history. It showcases the city&#39;s commitment to heritage conservation and provides a unique experience for visitors and locals alike. The district&#39;s blend of history, culture, and entertainment makes it a beloved and iconic destination in the heart of Toronto.</p>', 'Toronto', 'M5A 3C4', 'ON', '+16472453301', '43.64994497038361', '-79.35910798784506', 'https://goo.gl/maps/4WPn6Bbc2NEZaucLA', 'tJthHp5ETFM76IBN7GCLu4rjwl84cm.png', '5pK2ETem2NbZcOSo9wyNthqgNLT6jM.png', 7, '0', 1, '2023-06-22 13:14:48', '2023-08-14 15:44:38', NULL, 'dummy.png'),
(6, '33', 'Leaside', 'leaside', 'Leaside', 'leaside@mysweetiepie.ca', 'jacobsweetiepie@gmail.com', '1639 B Bayview Ave East York', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON LEASIDE</strong></strong></p>\r\n\r\n<p>Leaside is a well-established neighborhood in Toronto, Ontario, Canada, with a rich history dating back to the early 20th century. It was originally developed as an industrial townsite by the Canadian Northern Railway in 1912, with the purpose of accommodating industrial facilities and providing housing for workers.</p>\r\n\r\n<p>Leaside&#39;s industrial roots can be traced back to the establishment of the Leaside Manufacturing Company, which operated a large munitions plant during World War I. The plant played a crucial role in supporting the war effort, producing ammunition and military equipment. After the war, the industrial base expanded to include various industries, such as manufacturing, automobile assembly, and aviation.</p>\r\n\r\n<p>As the industrial sector grew, the community of Leaside flourished alongside it. The Canadian Northern Railway developed the townsite with carefully planned residential areas, parks, and schools, creating a self-contained community. The railway also facilitated transportation, connecting Leaside to other parts of the city and attracting residents and businesses to the area.</p>\r\n\r\n<p>Over the years, Leaside underwent significant transformations. In the 1930s, the townsite was annexed by the City of Toronto, leading to further urban development and infrastructure improvements. Leaside&#39;s proximity to downtown Toronto and the construction of major roadways, such as the Bayview Extension and the Don Valley Parkway, enhanced accessibility and contributed to its growth.</p>\r\n\r\n<p>Leaside is also known for its aviation history. In the early 1900s, the area was home to Canada&#39;s first commercial airport, Leaside Aerodrome. It played a crucial role in the development of aviation in the country, hosting flight schools and serving as a hub for air travel. Today, remnants of the aerodrome can still be seen, and the area continues to be associated with aviation heritage.</p>\r\n\r\n<p>In recent years, Leaside has evolved into a desirable residential neighborhood with a strong sense of community. It boasts a mix of housing types, including single-family homes, townhouses, and condominiums. The neighborhood is known for its tree-lined streets, well-maintained parks, and local amenities, making it an attractive place to live for families and professionals.</p>\r\n\r\n<p>Leaside&#39;s rich history, combined with its proximity to downtown Toronto, excellent schools, and recreational facilities, contribute to its enduring appeal. It remains a cherished neighborhood that seamlessly combines industrial heritage with modern residential living, embodying the spirit of community and progress.</p>', 'Toronto', 'M4G 3B5', 'ON', '+16472453301', '43.706895193120545', '-79.37525798784505', 'https://goo.gl/maps/JQY7j1n4MVfE7Jw7A', 'ZuaBvvQesp3H8FDsbkasTB9EipEHWs.png', 'fF7hGoKa8nzrfw3CBQgtefZEdzmqoL.png', 6, '0', 1, '2023-06-22 13:17:56', '2023-08-14 15:44:22', NULL, 'dummy.png'),
(7, '34', 'Yonge St.', 'yonge-st', 'Yonge', 'yonge@mysweetiepie.ca', NULL, '3308 Yonge st', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON YONGE ST.&nbsp;</strong></strong></p>\r\n\r\n<p>Yonge Street holds a prominent place in the history of Toronto, Ontario, Canada, as one of the city&#39;s oldest and most iconic thoroughfares. Its history dates back to the 18th century when it was initially a First Nations trail, known as the &quot;Toronto Carrying Place,&quot; used for trading and transportation between Lake Ontario and Lake Simcoe.</p>\r\n\r\n<p>In 1793, as the area was settled by European immigrants, Governor John Graves Simcoe ordered the construction of a military road to connect Lake Ontario to Lake Simcoe. This road, which included the portion now known as Yonge Street, became a vital transportation route for early settlers and military personnel.</p>\r\n\r\n<p>Over the years, Yonge Street developed into a bustling commercial and cultural hub. In the 19th century, it played a significant role in Toronto&#39;s growth and prosperity. The street became lined with shops, businesses, theaters, and hotels, attracting visitors and residents alike. It was a center of activity and a symbol of urbanization.</p>\r\n\r\n<p>Yonge Street&#39;s significance continued into the 20th century. In the 1970s, it gained international recognition when the Guinness Book of World Records declared it the &quot;longest street in the world,&quot; stretching approximately 1,896 kilometers (1,178 miles) from Toronto to Rainy River near the Ontario-Minnesota border.</p>\r\n\r\n<p>As Toronto evolved and expanded, Yonge Street underwent transformations. It became a popular destination for shopping, entertainment, and cultural experiences. It was the site of grand department stores, movie theaters, and live performance venues that defined the city&#39;s social scene.</p>\r\n\r\n<p>In recent years, Yonge Street has seen further development and revitalization. It continues to be a bustling corridor, featuring a mix of retail stores, restaurants, cafes, and office spaces. The area around Yonge-Dundas Square, known as the &quot;Times Square of Toronto,&quot; has become a vibrant hub for entertainment and public gatherings.</p>\r\n\r\n<p>Yonge Street remains an important symbol of Toronto&#39;s history and growth. Its vibrant energy, diverse offerings, and connection to the city&#39;s past make it a beloved and enduring landmark. It represents the evolution of a humble Indigenous trail into a vibrant urban artery that continues to shape the cultural and commercial fabric of the city.</p>', 'Toronto', 'M4N 2M4', 'AB', '+16472453301', '43.730974084163314', '-79.40393222203797', 'https://goo.gl/maps/NSmUwvC2LTSdU7Sb7', 'B7r8z1dC4x1sVaH9Vtuxi9lGYXv2je.png', 'H4BYAxBHtjHBQJpoAYMQIL9IAezZcu.png', 8, '0', 1, '2023-06-22 13:19:43', '2023-08-14 15:40:33', NULL, 'dummy.png'),
(8, '35', 'First Canadian Place', 'first-canadian-place', 'First Canadian Place', 'fcp@mysweetiepie.ca', NULL, '100 King Street West', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON FIRST CANADIAN PLACE</strong></strong></p>\r\n\r\n<p>First Canadian Place is a prominent skyscraper located in the heart of downtown Toronto, Ontario, Canada. Its history is intertwined with the growth and development of the city&#39;s financial district.</p>\r\n\r\n<p>Construction of First Canadian Place began in 1973 and was completed in 1976. At the time of its completion, it stood as the tallest building in Canada and the tallest freestanding structure in the British Commonwealth. The tower was designed by the architectural firm Bregman + Hamann and is characterized by its modernist style and distinctive bronze-tinted glass facade.</p>\r\n\r\n<p>The building was initially known as First Bank Tower, as it served as the headquarters for the Bank of Nova Scotia (Scotiabank). However, in 1979, the building&#39;s name was changed to First Canadian Place to reflect its national significance as an iconic landmark and a symbol of Canada&#39;s growing financial prowess.</p>\r\n\r\n<p>First Canadian Place quickly became the focal point of Toronto&#39;s financial district, housing numerous financial institutions, law firms, and corporate offices. Its location at the intersection of King and Bay streets positioned it at the epicenter of the city&#39;s business activity, solidifying its status as a vital economic hub.</p>\r\n\r\n<p>Over the years, First Canadian Place has undergone several renovations and upgrades to maintain its status as a premier office tower. These include interior renovations, mechanical improvements, and sustainability initiatives to enhance energy efficiency.</p>\r\n\r\n<p>The tower&#39;s architecture and prominent location have made it an iconic landmark on Toronto&#39;s skyline. Its impressive height, standing at 298 meters (978 feet), and sleek design make it a recognizable symbol of the city&#39;s modernity and economic strength.</p>\r\n\r\n<p>Today, First Canadian Place continues to be a prestigious address for businesses, housing prominent financial institutions and multinational corporations. It serves as a symbol of Toronto&#39;s stature as a global financial center and a testament to the city&#39;s ever-evolving skyline.</p>', 'Toronto', 'M5X 1A9', 'ON', '+16472453301', '43.64843326657951', '-79.38177680997063', 'https://goo.gl/maps/CprzCrbHkejgEuc97', 'DYkyVPmsFMGLB5ke0qc3iZ8zr9slex.png', '2rffNAqwsZbs82pmfGHrljHJmsyHy9.png', 9, '0', 1, '2023-06-28 14:06:43', '2023-08-14 11:20:10', NULL, 'dummy.png'),
(9, '36', 'University Ave.', 'university-ave', 'University Ave', 'universityavenue@mysweetiepie.ca', NULL, '525 University Ave', '<p><strong><em><strong><em>&nbsp; &nbsp; &nbsp; Sweetie Pie</em></strong></em></strong>&nbsp;is delighted to be a part of some of Toronto&#39;s most captivating communities. Our bakery takes immense pride in contributing to the vibrant tapestry of this remarkable city. From the bustling streets of downtown to the charming neighborhoods that define Toronto&#39;s character, we are grateful for the opportunity to connect with diverse communities and create memorable moments for our customers. Whether it&#39;s serving up our delectable pastries in the eclectic Queen West or providing a sweet escape in the enchanting Distillery District, Sweetie Pie cherishes the chance to be a part of the city&#39;s rich cultural fabric. We are committed to fostering a sense of belonging, celebrating local flavors, and adding a touch of sweetness to the lives of Torontonians.</p>\r\n\r\n<p><strong><strong>SPOTLIGHT ON UNIVERSITY AVENUE</strong></strong></p>\r\n\r\n<p>University Avenue is a historic and significant thoroughfare located in the heart of downtown Toronto, Ontario, Canada. Its history can be traced back to the mid-19th century when it was originally named College Avenue due to its proximity to the University of Toronto.</p>\r\n\r\n<p>The avenue&#39;s development was closely tied to the growth and expansion of the university. In the 1850s, as the university&#39;s campus expanded, College Avenue was extended south from Queen&#39;s Park to connect the university grounds with the downtown area. The street quickly became a central artery linking the academic and civic spheres of the city.</p>\r\n\r\n<p>Over time, College Avenue underwent various changes and improvements, including widening and the addition of green spaces. In 1910, the street was renamed University Avenue to better reflect its significance as a vital route connecting the university to other parts of the city.</p>\r\n\r\n<p>University Avenue has played host to numerous significant events throughout Toronto&#39;s history. It has witnessed countless parades, demonstrations, and celebrations. The avenue is also known for its ceremonial functions, hosting civic and state events, including royal visits and military processions.</p>\r\n\r\n<p>The architecture along University Avenue is diverse and includes an impressive collection of significant buildings. Many of these buildings were constructed in the late 19th and early 20th centuries, representing various architectural styles such as Neoclassical, Beaux-Arts, and Gothic Revival. Notable landmarks along the avenue include the Ontario Legislative Building (Queen&#39;s Park), the Ontario Court of Justice, the Canadian Broadcasting Centre, and the Four Seasons Centre for the Performing Arts.</p>\r\n\r\n<p>Today, University Avenue remains a bustling street lined with office towers, hospitals, cultural institutions, and government buildings. It serves as a vital transportation route and a symbolic link between the academic, cultural, and governmental institutions of the city. Its wide boulevard, landscaped medians, and statuesque buildings contribute to its grandeur and serve as a testament to Toronto&#39;s history and development.</p>', 'Toronto', 'M5G 2L3', 'ON', '+16472453301', '43.65632625103943', '-79.3881578846359', 'https://goo.gl/maps/eEmKtzcgNZg1AVhE7', 'Rs9IDVQWCZzVMZmkofItbwAMVe9WU6.png', 'epchd8ZvG93vK1R0w0VYPMRniKnWB0.png', 10, '0', 1, '2023-06-28 14:15:28', '2023-08-14 15:41:08', NULL, 'dummy.png'),
(10, '38', 'Colville (Head Office)', 'colville-head-office', 'Colville', 'mysweetiepie@gmail.com', NULL, '36 Colville Rd', NULL, 'North York', 'M6M 2Y4', 'ON', '+14166759436', '43.70705544741668', '-79.47590394232864', 'https://goo.gl/maps/4VzTLkJaWUn8wBKD6', 'H3mGhFYOVfsF23I63RAqQkqL0uBCZF.png', 'EVFkmPqBGfePR4AmcJ23cTqkCvcoVP.png', 1, '0', 0, '2023-07-11 11:32:59', '2023-08-14 11:19:25', NULL, 'dummy.png');

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

--
-- Dumping data for table `store_images`
--

INSERT INTO `store_images` (`id`, `store_id`, `image`, `postion`, `created_at`, `updated_at`) VALUES
(94, 10, 'Zzp7Sn9MpT3Qu1rvzmoUpUsymotfK8.png', 1, '2023-08-14 11:19:26', '2023-08-14 11:19:26'),
(138, 2, '1i8AtZXzwbzk1dxvAdIr3GbWQ3AWwr.png', 1, '2023-08-14 15:43:33', '2023-08-14 15:43:33'),
(137, 2, 'pF1Wokvews5lc9coSaTvPRcKw4wf1n.png', 1, '2023-08-14 15:43:33', '2023-08-14 15:43:33'),
(140, 4, '5Yr8KlDyrFPwYfFRgSECHD6jgl4esX.png', 1, '2023-08-14 15:43:56', '2023-08-14 15:43:56'),
(139, 4, 'ht5b0LJamFsapm4TGPJpirX7EAsDkK.png', 1, '2023-08-14 15:43:56', '2023-08-14 15:43:56'),
(144, 6, '2D2cS6n9sjhP6qPxFJhCWBqhYwQehS.png', 1, '2023-08-14 15:44:23', '2023-08-14 15:44:23'),
(143, 6, 'dqQ1qtd7y7nGqILtwZ0V2ZYnR7CMhZ.png', 1, '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(146, 5, 'AEzgTo4LiptNnxk7vmcoMQYBJGd79Q.png', 1, '2023-08-14 15:44:39', '2023-08-14 15:44:39'),
(145, 5, 'v2ua7LT3CPSIUwTTUKIhYZLnvqgszu.png', 1, '2023-08-14 15:44:39', '2023-08-14 15:44:39'),
(148, 7, 'quQ9HzLcDNzzOadUbS1mEHB2TCG7F8.png', 1, '2023-08-14 15:44:59', '2023-08-14 15:44:59'),
(147, 7, 'qgBHEFoZOwSPDqBVbKAMSa0vmuE2qH.png', 1, '2023-08-14 15:44:59', '2023-08-14 15:44:59'),
(130, 8, 'ZZZ4Esh4XwGTGYIMKlvzpZTySRaTGJ.png', 1, '2023-08-14 15:40:47', '2023-08-14 15:40:47'),
(129, 8, 'MmT14sPjm9W8gzr15tvAOn9oST2HOk.png', 1, '2023-08-14 15:40:47', '2023-08-14 15:40:47'),
(132, 9, 'FRZbODl4oScmsavcmdDwhF94DrMfmB.png', 1, '2023-08-14 15:41:09', '2023-08-14 15:41:09'),
(131, 9, 'TjPEaGdXH1bg8L54KcfIgqfYdim9qK.png', 1, '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(93, 10, 'lmRcqBhVCtMkArQnlcZKyMzzaTFxAx.png', 1, '2023-08-14 11:19:25', '2023-08-14 11:19:25'),
(136, 1, 'EGfpkXz8kcWk3r0kxtF0m8A9NDtSwW.png', 1, '2023-08-14 15:43:17', '2023-08-14 15:43:17'),
(135, 1, 'HnyAazA3pcsbx443Gu32S2YdEbFbaA.png', 1, '2023-08-14 15:43:17', '2023-08-14 15:43:17'),
(142, 3, 'uVogpZWUJXJ9qfSJcaUSf6dqsBBxFW.png', 1, '2023-08-14 15:44:08', '2023-08-14 15:44:08'),
(141, 3, 'L2TMVS3ZifdYlA8PybyNUIQop1iCmP.png', 1, '2023-08-14 15:44:08', '2023-08-14 15:44:08');

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
(1909, '5', '8', '08:00:00', '17:00:00', '2023-08-14 15:40:46', '2023-08-14 15:40:46'),
(1910, '4', '8', '08:00:00', '18:00:00', '2023-08-14 15:40:46', '2023-08-14 15:40:46'),
(1911, '3', '8', '08:00:00', '18:00:00', '2023-08-14 15:40:46', '2023-08-14 15:40:46'),
(1912, '2', '8', '08:00:00', '18:00:00', '2023-08-14 15:40:46', '2023-08-14 15:40:46'),
(1913, '1', '8', '08:00:00', '17:00:00', '2023-08-14 15:40:46', '2023-08-14 15:40:46'),
(1914, '6', '9', '10:00:00', '17:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1915, '5', '9', '07:00:00', '19:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1916, '4', '9', '07:00:00', '19:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1917, '3', '9', '07:00:00', '19:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1918, '2', '9', '07:00:00', '19:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1919, '1', '9', '07:00:00', '19:00:00', '2023-08-14 15:41:08', '2023-08-14 15:41:08'),
(1927, '6', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1928, '5', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1929, '4', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1930, '3', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1931, '2', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1932, '1', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1933, '0', '1', '10:00:00', '19:00:00', '2023-08-14 15:43:16', '2023-08-14 15:43:16'),
(1934, '6', '2', '10:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1935, '5', '2', '11:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1936, '4', '2', '11:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1937, '3', '2', '11:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1938, '2', '2', '11:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1939, '1', '2', '11:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1940, '0', '2', '10:00:00', '20:00:00', '2023-08-14 15:43:32', '2023-08-14 15:43:32'),
(1941, '6', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1942, '5', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1943, '4', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1944, '3', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1945, '2', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1946, '1', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1947, '0', '4', '10:00:00', '19:00:00', '2023-08-14 15:43:55', '2023-08-14 15:43:55'),
(1948, '6', '3', '10:00:00', '21:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1949, '5', '3', '10:00:00', '21:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1950, '4', '3', '10:00:00', '20:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1951, '3', '3', '10:00:00', '20:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1952, '2', '3', '10:00:00', '20:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1953, '1', '3', '10:00:00', '20:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1954, '0', '3', '10:00:00', '21:00:00', '2023-08-14 15:44:07', '2023-08-14 15:44:07'),
(1955, '6', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1956, '5', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1957, '4', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1958, '3', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1959, '2', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1960, '1', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1961, '0', '6', '10:00:00', '19:00:00', '2023-08-14 15:44:22', '2023-08-14 15:44:22'),
(1962, '6', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1963, '5', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1964, '4', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1965, '3', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1966, '2', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1967, '1', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1968, '0', '5', '10:00:00', '20:00:00', '2023-08-14 15:44:38', '2023-08-14 15:44:38'),
(1969, '6', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1970, '5', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1971, '4', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1972, '3', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1973, '2', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1974, '1', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58'),
(1975, '0', '7', '10:00:00', '20:00:00', '2023-08-14 15:44:58', '2023-08-14 15:44:58');

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
(1, 'bijuyn@gmail.com', '2023-08-16 12:12:51', '2023-08-16 12:12:51'),
(2, 'rohithr.indigital@gmail.com', '2023-08-16 14:15:48', '2023-08-16 14:15:48'),
(3, 'rrhit54@gmail.com', '2023-08-16 14:35:30', '2023-08-16 14:35:30'),
(4, 'admin@theuniformgroup.com', '2023-08-16 15:05:21', '2023-08-16 15:05:21'),
(5, 'biju@indigitalgroup.ca', '2023-08-16 15:26:43', '2023-08-16 15:26:43'),
(6, 'shefii.indigital@gmail.com', '2023-08-16 16:03:59', '2023-08-16 16:03:59'),
(7, 'cesario@indigitalgroup.ca', '2023-08-16 19:12:52', '2023-08-16 19:12:52');

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

--
-- Dumping data for table `suggested_products`
--

INSERT INTO `suggested_products` (`id`, `product_id`, `suggested_id`, `created_at`, `updated_at`) VALUES
(41, 149, 155, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(40, 149, 153, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(39, 149, 150, '2023-08-17 12:07:53', '2023-08-17 12:07:53'),
(38, 149, 26, '2023-08-17 12:07:53', '2023-08-17 12:07:53');

-- --------------------------------------------------------

--
-- Table structure for table `tax_values`
--

CREATE TABLE `tax_values` (
  `id` int(11) NOT NULL,
  `master_id` varchar(15) DEFAULT NULL,
  `tax_name` varchar(250) DEFAULT NULL,
  `tax_percentage` float(10,2) NOT NULL DEFAULT 0.00,
  `status` varchar(2) DEFAULT '1',
  `created_at` datetime DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp()
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `tax_values`
--

INSERT INTO `tax_values` (`id`, `master_id`, `tax_name`, `tax_percentage`, `status`, `created_at`, `updated_at`) VALUES
(3, '8', 'No Tax', 0.00, '1', '2023-06-05 07:48:54', '2023-08-02 05:52:27'),
(5, '10', 'HST', 13.00, '1', '2023-08-02 05:51:55', '2023-08-02 05:52:18');

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `master_id`, `name`, `firstname`, `lastname`, `email`, `email_verified_at`, `password`, `phone`, `address`, `postalcode`, `city`, `province`, `country`, `birthday`, `last_login`, `status`, `remember_token`, `reset_token`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Biju Yohannan', 'Biju', 'Yohannan', 'bijuyn@gmail.com', NULL, '$2y$10$qCLqlmzzDxzXaD0lUc4nIO2cBRdfwa42xm0ujKL475q.CURIB0xNO', '8282838238', 'test', 't0a0a0', 'Toronto', 'ON', 'Canada', '1995-05-04', NULL, 1, NULL, NULL, '2023-08-16 12:25:54', '2023-08-16 12:25:54'),
(2, NULL, 'Rohith R', 'Rohith', 'R', 'rohithr.indigital@gmail.com', NULL, '$2y$10$k2xY93cMFNZssw5EKRQ3/OngOh3fYpInu/.xLcwiDafDxWGxqKJya', '9876543210', 'GTA', 'TORONTO', 'Toronto', 'ON', 'CA', '1998-02-15', NULL, 1, NULL, NULL, '2023-08-16 13:38:25', '2023-08-16 15:01:42'),
(3, NULL, 'shefii km', 'shefii', 'km', 'shefii@gmail.com', NULL, '$2y$10$/Xia3wLmghNMnZNyCwOUYeTiD2VTucbbq1fLqMyCAkvYkxpYsc2ma', '8075261300', 'km', '5648454', 'Toronto', 'PE', 'canada', '1996-12-20', NULL, 1, NULL, NULL, '2023-08-16 14:28:36', '2023-08-16 14:28:36'),
(4, NULL, 'moh shefii', 'moh', 'shefii', 'shefii.indigital@gmail.com', NULL, '$2y$10$LOjf3jhxlbwgi4SA22ozteeUnkijFD.tsvylsak/0CCyi9W7uGB.6', '9988744411', 'km', '5484848', 'hdh', 'ON', 'canada', '0000-00-00', NULL, 1, NULL, NULL, '2023-08-16 16:08:10', '2023-08-16 16:08:10');

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

--
-- Dumping data for table `variation_images`
--

INSERT INTO `variation_images` (`id`, `variation_id`, `picture_id`, `product_id`, `created_at`, `updated_at`) VALUES
(1, 841, 1, 103, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(2, 841, 2, 103, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(3, 841, 3, 103, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(503, 1304, 429, 112, '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(502, 1304, 428, 112, '2023-08-16 15:14:20', '2023-08-16 15:14:20'),
(501, 1305, 428, 112, '2023-08-16 15:14:20', '2023-08-16 15:14:20'),
(242, 1191, 228, 102, '2023-08-14 10:39:19', '2023-08-14 10:39:19'),
(241, 1191, 227, 102, '2023-08-14 10:39:19', '2023-08-14 10:39:19'),
(240, 1191, 226, 102, '2023-08-14 10:39:18', '2023-08-14 10:39:18'),
(539, 1327, 460, 127, '2023-08-17 10:53:17', '2023-08-17 10:53:17'),
(538, 1326, 459, 128, '2023-08-17 10:52:34', '2023-08-17 10:52:34'),
(537, 1325, 459, 128, '2023-08-17 10:52:34', '2023-08-17 10:52:34'),
(557, 1333, 469, 124, '2023-08-17 10:55:55', '2023-08-17 10:55:55'),
(556, 1332, 468, 125, '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(555, 1331, 468, 125, '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(542, 1328, 461, 127, '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(541, 1327, 461, 127, '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(540, 1328, 460, 127, '2023-08-17 10:53:17', '2023-08-17 10:53:17'),
(554, 1332, 467, 125, '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(553, 1331, 467, 125, '2023-08-17 10:54:56', '2023-08-17 10:54:56'),
(552, 1332, 466, 125, '2023-08-17 10:54:55', '2023-08-17 10:54:55'),
(551, 1331, 466, 125, '2023-08-17 10:54:55', '2023-08-17 10:54:55'),
(550, 1330, 465, 126, '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(549, 1329, 465, 126, '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(548, 1330, 464, 126, '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(547, 1329, 464, 126, '2023-08-17 10:54:10', '2023-08-17 10:54:10'),
(546, 1330, 463, 126, '2023-08-17 10:54:09', '2023-08-17 10:54:09'),
(545, 1329, 463, 126, '2023-08-17 10:54:09', '2023-08-17 10:54:09'),
(544, 1328, 462, 127, '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(543, 1327, 462, 127, '2023-08-17 10:53:18', '2023-08-17 10:53:18'),
(31, 732, 31, 116, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(32, 732, 32, 116, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(33, 732, 33, 116, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(34, 734, 34, 117, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(35, 734, 35, 117, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(36, 734, 36, 117, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(613, 1353, 488, 34, '2023-08-17 11:08:20', '2023-08-17 11:08:20'),
(38, 1098, 38, 160, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(39, 731, 39, 115, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(40, 731, 40, 115, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(41, 731, 41, 115, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(603, 1347, 484, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(602, 1348, 484, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(601, 1349, 484, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(45, 450, 45, 52, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(46, 450, 46, 52, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(47, 449, 47, 54, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(48, 449, 48, 54, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(49, 540, 49, 56, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(50, 540, 50, 56, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(51, 444, 51, 110, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(52, 444, 52, 110, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(53, 447, 53, 57, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(54, 447, 54, 57, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(55, 451, 55, 59, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(56, 451, 56, 59, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(57, 445, 57, 61, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(58, 445, 58, 61, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(59, 443, 59, 62, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(60, 443, 60, 62, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(61, 446, 61, 63, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(62, 446, 62, 63, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(63, 795, 63, 132, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(64, 795, 64, 132, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(65, 795, 65, 132, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(655, 1366, 505, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(654, 1366, 504, 64, '2023-08-17 11:31:42', '2023-08-17 11:31:42'),
(653, 1367, 504, 64, '2023-08-17 11:31:42', '2023-08-17 11:31:42'),
(652, 1368, 504, 64, '2023-08-17 11:31:42', '2023-08-17 11:31:42'),
(643, 1362, 498, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(642, 1362, 497, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(641, 1363, 497, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(640, 1364, 497, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(666, 1372, 508, 66, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(665, 1373, 508, 66, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(664, 1374, 508, 66, '2023-08-17 11:34:13', '2023-08-17 11:34:13'),
(631, 1359, 494, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(630, 1359, 493, 67, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(629, 1360, 493, 67, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(628, 1361, 493, 67, '2023-08-17 11:12:10', '2023-08-17 11:12:10'),
(619, 1356, 490, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(618, 1356, 489, 68, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(617, 1357, 489, 68, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(616, 1358, 489, 68, '2023-08-17 11:10:49', '2023-08-17 11:10:49'),
(254, 1194, 234, 111, '2023-08-14 10:49:50', '2023-08-14 10:49:50'),
(253, 1195, 234, 111, '2023-08-14 10:49:50', '2023-08-14 10:49:50'),
(252, 1194, 233, 111, '2023-08-14 10:49:49', '2023-08-14 10:49:49'),
(251, 1195, 233, 111, '2023-08-14 10:49:49', '2023-08-14 10:49:49'),
(250, 1194, 232, 111, '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(249, 1195, 232, 111, '2023-08-14 10:49:48', '2023-08-14 10:49:48'),
(612, 1350, 487, 118, '2023-08-17 11:06:30', '2023-08-17 11:06:30'),
(611, 1351, 487, 118, '2023-08-17 11:06:30', '2023-08-17 11:06:30'),
(610, 1352, 487, 118, '2023-08-17 11:06:30', '2023-08-17 11:06:30'),
(536, 1326, 458, 128, '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(535, 1325, 458, 128, '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(534, 1326, 457, 128, '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(533, 1325, 457, 128, '2023-08-17 10:52:33', '2023-08-17 10:52:33'),
(532, 1323, 456, 131, '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(531, 1324, 456, 131, '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(530, 1323, 455, 131, '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(529, 1324, 455, 131, '2023-08-17 10:51:34', '2023-08-17 10:51:34'),
(528, 1321, 454, 130, '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(527, 1322, 454, 130, '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(526, 1321, 453, 130, '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(525, 1322, 453, 130, '2023-08-17 10:51:27', '2023-08-17 10:51:27'),
(524, 1321, 452, 130, '2023-08-17 10:51:26', '2023-08-17 10:51:26'),
(504, 1305, 429, 112, '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(522, 1319, 451, 129, '2023-08-17 10:29:14', '2023-08-17 10:29:14'),
(506, 1304, 430, 112, '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(505, 1305, 430, 112, '2023-08-16 15:14:22', '2023-08-16 15:14:22'),
(523, 1322, 452, 130, '2023-08-17 10:51:26', '2023-08-17 10:51:26'),
(521, 1320, 451, 129, '2023-08-17 10:29:14', '2023-08-17 10:29:14'),
(614, 1354, 488, 34, '2023-08-17 11:08:20', '2023-08-17 11:08:20'),
(609, 1350, 486, 118, '2023-08-17 11:06:29', '2023-08-17 11:06:29'),
(686, 1378, 518, 149, '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(685, 1379, 518, 149, '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(684, 1378, 517, 149, '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(683, 1379, 517, 149, '2023-08-17 12:07:57', '2023-08-17 12:07:57'),
(682, 1380, 516, 149, '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(681, 1381, 516, 149, '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(680, 1380, 515, 149, '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(679, 1381, 515, 149, '2023-08-17 12:07:56', '2023-08-17 12:07:56'),
(678, 1378, 514, 149, '2023-08-17 12:07:55', '2023-08-17 12:07:55'),
(677, 1379, 514, 149, '2023-08-17 12:07:55', '2023-08-17 12:07:55'),
(676, 1378, 513, 149, '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(675, 1379, 513, 149, '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(608, 1351, 486, 118, '2023-08-17 11:06:29', '2023-08-17 11:06:29'),
(607, 1352, 486, 118, '2023-08-17 11:06:29', '2023-08-17 11:06:29'),
(442, 1262, 337, 150, '2023-08-16 08:04:48', '2023-08-16 08:04:48'),
(441, 1263, 337, 150, '2023-08-16 08:04:48', '2023-08-16 08:04:48'),
(440, 1260, 336, 150, '2023-08-16 08:04:47', '2023-08-16 08:04:47'),
(439, 1261, 336, 150, '2023-08-16 08:04:47', '2023-08-16 08:04:47'),
(438, 1260, 335, 150, '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(437, 1261, 335, 150, '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(436, 1262, 334, 150, '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(435, 1263, 334, 150, '2023-08-16 08:04:46', '2023-08-16 08:04:46'),
(434, 1262, 333, 150, '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(433, 1263, 333, 150, '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(606, 1350, 485, 118, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(600, 1347, 483, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(464, 1268, 348, 151, '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(463, 1269, 348, 151, '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(462, 1268, 347, 151, '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(461, 1269, 347, 151, '2023-08-16 08:09:22', '2023-08-16 08:09:22'),
(460, 1270, 346, 151, '2023-08-16 08:09:21', '2023-08-16 08:09:21'),
(459, 1271, 346, 151, '2023-08-16 08:09:21', '2023-08-16 08:09:21'),
(458, 1270, 345, 151, '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(457, 1271, 345, 151, '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(456, 1270, 344, 151, '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(455, 1271, 344, 151, '2023-08-16 08:09:20', '2023-08-16 08:09:20'),
(605, 1351, 485, 118, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(604, 1352, 485, 118, '2023-08-17 11:06:28', '2023-08-17 11:06:28'),
(452, 1266, 342, 152, '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(451, 1267, 342, 152, '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(450, 1264, 341, 152, '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(449, 1265, 341, 152, '2023-08-16 08:05:45', '2023-08-16 08:05:45'),
(448, 1266, 340, 152, '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(447, 1267, 340, 152, '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(446, 1266, 339, 152, '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(445, 1267, 339, 152, '2023-08-16 08:05:44', '2023-08-16 08:05:44'),
(599, 1348, 483, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(558, 1334, 469, 124, '2023-08-17 10:55:55', '2023-08-17 10:55:55'),
(500, 1301, 427, 153, '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(499, 1302, 427, 153, '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(498, 1300, 426, 153, '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(497, 1303, 426, 153, '2023-08-16 13:58:19', '2023-08-16 13:58:19'),
(496, 1300, 425, 153, '2023-08-16 13:58:17', '2023-08-16 13:58:17'),
(495, 1303, 425, 153, '2023-08-16 13:58:17', '2023-08-16 13:58:17'),
(494, 1301, 424, 153, '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(493, 1302, 424, 153, '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(492, 1301, 423, 153, '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(491, 1302, 423, 153, '2023-08-16 13:58:16', '2023-08-16 13:58:16'),
(598, 1349, 483, 40, '2023-08-17 11:05:54', '2023-08-17 11:05:54'),
(597, 1347, 482, 40, '2023-08-17 11:05:53', '2023-08-17 11:05:53'),
(380, 1238, 306, 154, '2023-08-14 20:40:45', '2023-08-14 20:40:45'),
(379, 1239, 306, 154, '2023-08-14 20:40:45', '2023-08-14 20:40:45'),
(378, 1236, 305, 154, '2023-08-14 20:40:44', '2023-08-14 20:40:44'),
(377, 1237, 305, 154, '2023-08-14 20:40:44', '2023-08-14 20:40:44'),
(376, 1236, 304, 154, '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(375, 1237, 304, 154, '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(374, 1238, 303, 154, '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(373, 1239, 303, 154, '2023-08-14 20:40:43', '2023-08-14 20:40:43'),
(372, 1238, 302, 154, '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(371, 1239, 302, 154, '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(596, 1348, 482, 40, '2023-08-17 11:05:53', '2023-08-17 11:05:53'),
(518, 1308, 442, 155, '2023-08-16 18:32:40', '2023-08-16 18:32:40'),
(517, 1309, 441, 155, '2023-08-16 18:32:40', '2023-08-16 18:32:40'),
(516, 1309, 440, 155, '2023-08-16 18:32:39', '2023-08-16 18:32:39'),
(515, 1308, 439, 155, '2023-08-16 18:32:38', '2023-08-16 18:32:38'),
(514, 1308, 438, 155, '2023-08-16 18:32:37', '2023-08-16 18:32:37'),
(595, 1349, 482, 40, '2023-08-17 11:05:53', '2023-08-17 11:05:53'),
(488, 1289, 399, 156, '2023-08-16 08:39:16', '2023-08-16 08:39:16'),
(487, 1289, 398, 156, '2023-08-16 08:39:16', '2023-08-16 08:39:16'),
(486, 1289, 397, 156, '2023-08-16 08:39:15', '2023-08-16 08:39:15'),
(485, 1290, 396, 156, '2023-08-16 08:39:15', '2023-08-16 08:39:15'),
(484, 1290, 395, 156, '2023-08-16 08:39:14', '2023-08-16 08:39:14'),
(197, 1094, 197, 159, '2023-08-03 08:27:25', '2023-08-03 08:27:25'),
(454, 1270, 343, 151, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(453, 1271, 343, 151, '2023-08-16 08:09:19', '2023-08-16 08:09:19'),
(432, 1262, 332, 150, '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(431, 1263, 332, 150, '2023-08-16 08:04:45', '2023-08-16 08:04:45'),
(490, 1301, 422, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(489, 1302, 422, 153, '2023-08-16 13:58:15', '2023-08-16 13:58:15'),
(370, 1238, 301, 154, '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(369, 1239, 301, 154, '2023-08-14 20:40:42', '2023-08-14 20:40:42'),
(444, 1266, 338, 152, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(443, 1267, 338, 152, '2023-08-16 08:05:43', '2023-08-16 08:05:43'),
(513, 1308, 437, 155, '2023-08-16 18:32:37', '2023-08-16 18:32:37'),
(483, 1289, 394, 156, '2023-08-16 08:39:12', '2023-08-16 08:39:12'),
(674, 1378, 512, 149, '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(673, 1379, 512, 149, '2023-08-17 12:07:54', '2023-08-17 12:07:54'),
(667, 1372, 509, 66, '2023-08-17 11:34:14', '2023-08-17 11:34:14'),
(615, 1355, 488, 34, '2023-08-17 11:08:20', '2023-08-17 11:08:20'),
(620, 1357, 490, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(621, 1358, 490, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(622, 1356, 491, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(623, 1357, 491, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(624, 1358, 491, 68, '2023-08-17 11:10:50', '2023-08-17 11:10:50'),
(625, 1356, 492, 68, '2023-08-17 11:10:51', '2023-08-17 11:10:51'),
(626, 1357, 492, 68, '2023-08-17 11:10:51', '2023-08-17 11:10:51'),
(627, 1358, 492, 68, '2023-08-17 11:10:51', '2023-08-17 11:10:51'),
(632, 1360, 494, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(633, 1361, 494, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(634, 1359, 495, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(635, 1360, 495, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(636, 1361, 495, 67, '2023-08-17 11:12:11', '2023-08-17 11:12:11'),
(637, 1359, 496, 67, '2023-08-17 11:12:12', '2023-08-17 11:12:12'),
(638, 1360, 496, 67, '2023-08-17 11:12:12', '2023-08-17 11:12:12'),
(639, 1361, 496, 67, '2023-08-17 11:12:12', '2023-08-17 11:12:12'),
(644, 1363, 498, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(645, 1364, 498, 65, '2023-08-17 11:13:17', '2023-08-17 11:13:17'),
(646, 1362, 499, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(647, 1363, 499, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(648, 1364, 499, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(649, 1362, 500, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(650, 1363, 500, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(651, 1364, 500, 65, '2023-08-17 11:13:18', '2023-08-17 11:13:18'),
(656, 1367, 505, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(657, 1368, 505, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(658, 1366, 506, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(659, 1367, 506, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(660, 1368, 506, 64, '2023-08-17 11:31:43', '2023-08-17 11:31:43'),
(661, 1366, 507, 64, '2023-08-17 11:31:44', '2023-08-17 11:31:44'),
(662, 1367, 507, 64, '2023-08-17 11:31:44', '2023-08-17 11:31:44'),
(663, 1368, 507, 64, '2023-08-17 11:31:44', '2023-08-17 11:31:44'),
(668, 1373, 509, 66, '2023-08-17 11:34:14', '2023-08-17 11:34:14'),
(669, 1374, 509, 66, '2023-08-17 11:34:14', '2023-08-17 11:34:14'),
(670, 1372, 510, 66, '2023-08-17 11:34:15', '2023-08-17 11:34:15'),
(671, 1373, 510, 66, '2023-08-17 11:34:15', '2023-08-17 11:34:15'),
(672, 1374, 510, 66, '2023-08-17 11:34:15', '2023-08-17 11:34:15');

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

--
-- Dumping data for table `variation_images_old`
--

INSERT INTO `variation_images_old` (`id`, `variation_id`, `picture`, `product_id`, `type`, `created_at`, `updated_at`) VALUES
(1, 841, 'qOevLa0joXXorGN1z30ZfsRuejC00B.png', 103, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(2, 841, 'ymdKagAPAesytmB7TsoraVlibJ6Rr5.png', 103, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(3, 841, 'azjPwK26lJagiVy8I8CcOEmQgAc7JP.png', 103, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(4, 828, 'NCYmmYGQI3JOtFK4UkUciqE4jzAOss.png', 112, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(5, 828, 'D2SuJ9lAK2L78RL3LbWvj2Z1lniAzB.png', 112, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(6, 828, 'XWO6KmbcfUEypXtOeJCbfZHDSWK4yx.png', 112, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(7, 835, 'Ey6vnzzczC7gYWoPBDZD3CBpAXcyUn.png', 102, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(8, 835, 'K23H9WmwGibm3cfGxH987jTH0JvbLL.png', 102, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(9, 835, 'W7y8TJQweaXreV5JzInGEK722Fbl6T.png', 102, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(10, 870, 'wxstK3SjTXzy0Uh2SykJKnUA5bPNhi.png', 25, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(11, 870, 'XAaiEXJ0kPmBrCjrSCUksnuTktcJTL.png', 25, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(12, 870, 'qxykt7Rbq66XGsuLyY2vIoxtD7QbD2.png', 25, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(13, 875, 'DxMj5rlKbLTOP8o2nttwqyxyQaV64C.png', 26, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(14, 875, 'fgUZBlCUfr6merOKwdFwq34Sx3Iik9.png', 26, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(15, 875, 'dqkNWBqOH8rKKvqZB88dN4Ty3nJRc4.png', 26, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(16, 876, 'fPIx0HVewIxTJBvpriFaGJXSapVe7c.png', 27, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(17, 876, 'fOdIsN2MAubtj1iprpJ4Au1q0qA8L3.png', 27, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(18, 876, 'ERiPWyizhtnMTATLJ4Z9JOn25D9CS2.png', 27, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(19, 1088, 'owOSVNK1fWHZaGFE11xZvd6bgHrOYD.png', 28, 'Thumbnail', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(20, 1088, '7b5xv9P4k0CSnxiLUerF3prTG59B1s.png', 28, 'Main Image', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(21, 1088, 'tsUFvcOowFLaD5GGt9JCR0Z11fgaLV.png', 28, 'Nutritional Facts', '2023-08-01 17:50:29', '2023-08-01 17:50:29'),
(22, 1087, 'mNCRuLOhPdgzgHSsSaq5BDRO9p72SB.png', 29, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(23, 1087, 'F8u6d3EnWQqGdCWJfB39c5LIEtPYLF.png', 29, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(24, 1087, 'IqogaZoUsgoKXEn0BQIz7ZbIImXKLA.png', 29, 'Nutritional Facts', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(25, 1086, 'mbHyxTPoHcAKnBaaa4ikHNMyItGq9e.png', 30, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(26, 1086, 'GvBwqVIl4xOrbx7cDx8OMWxCqxSS9c.png', 30, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(27, 1086, 'wrLNcJvcD0OcVAXTS94QlbrtNQUDhe.png', 30, 'Nutritional Facts', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(28, 1085, 'HEsveQRnM3RphLr94DARdypkTGiaC7.png', 31, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(29, 1085, 'YKtnPNdIDR8Ap5fOfNfaQLdMVNSiyX.png', 31, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(30, 1085, 'KjsMdtvdHTPIbgqMXl4GxtF75AcV9Y.png', 31, 'Nutritional Facts', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(31, 732, 'YEsGgeuDRLYwPOpadkHKsQdmfqUp2P.png', 116, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(32, 732, 'yGjey4D6AGSKk745boZdfd9zobwyFt.png', 116, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(33, 732, 'umXPBwimAnx5jHaNMljeakSK4OXzbJ.png', 116, 'Extra Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(34, 734, '02b1Rc8qaPG10HJRO5BRF9Q65XCgLn.png', 117, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(35, 734, 'djytxjSHqPfHMeXHKm8TZknOqryGZR.png', 117, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(36, 734, 'iV5cSpeIJBUaRsXwYuuAI25r0Kmb9b.png', 117, 'Extra Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(37, 1089, '15vgOEMTctupydmQ9NbLfkoQzEoLs9.png', 34, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(38, 1098, '5pFUcsvhyrkcEkRrKZ8tLQylXGh8Ba.png', 160, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(39, 731, 'zM8w98D2U1eb1zHLtGgz179WdPHyAo.png', 115, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(40, 731, 'hnCYpiWnsB088wLb9sfDcgFcN2Xazz.png', 115, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(41, 731, 'isUFBVMR1oeRvSZfXa2bK3TqnW6haR.png', 115, 'Extra Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(42, 730, 't7CaYmOE2EJOXf4aCZWyEBnmOksSMH.png', 40, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(43, 730, 'bpAF3MKU2iC21mr41EaqK1oOqpIBG3.png', 40, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(44, 730, '8bVjvkk8AwHEtLaZ5sMHVx0kL0M2Rw.png', 40, 'Extra Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(45, 450, 'ShdMg2cgMXcxsA9S1aTKll2L62bv0x.png', 52, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(46, 450, 'bGFFWpwuIw0hTN5gQPkZPLcJvU4H9O.png', 52, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(47, 449, 'vBaK5s3Zk48x6vZQ0W9AZJBq9jv7yU.png', 54, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(48, 449, 'jPyWdKPLnjWjrR2xWQdsPAJWYcdNSP.png', 54, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(49, 540, 'FtR0qwGeNFYDDDKpdbb1mWzbrBumIl.png', 56, 'Thumbnail', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(50, 540, 'xrcJSGsjUo1xvdmstiRWFXFmB62kDx.png', 56, 'Main Image', '2023-08-01 17:50:30', '2023-08-01 17:50:30'),
(51, 444, 'RUTsqQlhVWN8zoEnvhxPPRHVaWw4NR.png', 110, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(52, 444, 'FiHiUWiALXgy3ISyorwW21u0HzFRtH.png', 110, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(53, 447, 'cjiwoNB2VCv7Kvdg8nPQYWec5qMT3W.png', 57, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(54, 447, 'KDdiPZ0hmO9ACrzCV86vx7TEs3wfIi.png', 57, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(55, 451, 'eReUWIuAQFsQuQi4OCkZSHkfKXMlN1.png', 59, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(56, 451, 'fZ67aba6k88n6q4qoVYzNIU5brml1w.png', 59, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(57, 445, '94j5jR1UUjiHM1c6fRX23lEvz0vs0F.png', 61, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(58, 445, 'OJUqMMIuiQ2GKniVo3Z8ACjT4N1ilb.png', 61, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(59, 443, 'BrJjM7WTdvhlP8IZfHOErk2XTlqQ9k.png', 62, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(60, 443, 'Y7JuybKMy6PBwE8xPYxClvNs9aKIjg.png', 62, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(61, 446, 'VXThJkC1qpF7Ql3ntnLLq7e4ZPHMRa.png', 63, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(62, 446, 'zomJS4cX5Ufrespalsfb62Y1tHBlkl.png', 63, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(63, 795, 'Yj5BRaLxI9giE2hXwY9uzOrqzbaBiI.png', 132, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(64, 795, 'Nf1Jd8vTt1Eym8ygeeeTwsKgo9SRyf.png', 132, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(65, 795, 'nVxW5JxCBMaP1qJ54ww0jBLj4iRxIj.png', 132, 'Extra Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(66, 836, 'k8QtlZdvq6n27GwZgnH0qbIHHvjW2u.png', 64, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(67, 836, 'fbybOMiJ6LZnxNO4vHv3QnUkfkabBm.png', 64, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(68, 836, 'JKuFBgnIxVH21fRbD6VskNOuBkI6JQ.png', 64, 'Nutritional Facts', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(69, 836, 'zrYyEGa6BV20V4AMEbvkv6B61aQ9AU.png', 64, 'Extra Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(70, 837, 'kilqCNwJXGqQyS3EQbi3fejj41aXdZ.png', 65, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(71, 837, 'Tj58ezKjl6PUyRtYShbcCStttV21yR.png', 65, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(72, 837, 'DdGBLV8C5cS1WPP7dO8UDLKNepiAC3.png', 65, 'Nutritional Facts', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(73, 837, 'GcTLg4RYEfyiRuxKAgoMc4VumAkm5W.png', 65, 'Extra Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(74, 802, 'KVOb4MmT3cW9lOOi8gNVZDxaAMnQPy.png', 66, 'Thumbnail', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(75, 802, 't5I3OlIhdorTuChOZ3Jqr76uBvsMRd.png', 66, 'Main Image', '2023-08-01 17:50:31', '2023-08-01 17:50:31'),
(76, 802, 'il5AkSPPSthImSE6PDkrBOVwBOSQYO.png', 66, 'Extra Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(77, 838, 'swQlf7KVKdyC3Pmxg5fnBJxgupPP2d.png', 67, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(78, 838, 'tgFEpZkVjxru6sdWvAPSBg0DRkE2rc.png', 67, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(79, 838, 'wXfnBw89GjLmmlbN07TcKx9bpZiT12.png', 67, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(80, 838, 'fWPLLj6pNMNfB47Qhnt6wCUKRegEfW.png', 67, 'Extra Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(81, 839, 'HpLq33Z7Vo0IG1K776eYx4Z6eKXuUl.png', 68, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(82, 839, 'uBjA4yqUfa8ntCpkyl6gnem2I3xjsN.png', 68, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(83, 839, 'AfLoqlNb8cucFbsdMEpyTRDFBhEAYF.png', 68, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(84, 839, 'YDbSGnuQTH2vISpAV14lXTVEMopxrB.png', 68, 'Extra Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(85, 830, '9WUjUqOhKnG1G7O6eemW7CTBnWkGnV.png', 111, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(86, 831, '9WUjUqOhKnG1G7O6eemW7CTBnWkGnV.png', 111, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(87, 830, 'dXWHiLL03tpDW847PAeqGJED2jNVVg.png', 111, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(88, 831, 'dXWHiLL03tpDW847PAeqGJED2jNVVg.png', 111, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(89, 830, 'Q7Lw2DXTOECntN9UIEsVBzupPfdZx1.png', 111, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(90, 831, 'Q7Lw2DXTOECntN9UIEsVBzupPfdZx1.png', 111, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(91, 733, 'hlEObELPYZyxysIMc3Bpv0CJR5qkdA.png', 118, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(92, 733, 'HjhZ5R8CVGnHtqTU7bpcSkR4naEsC2.png', 118, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(93, 733, 'dxhOw0OYYq387j6JBZpwxfqDZvsYH4.png', 118, 'Extra Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(94, 1101, 'ynBxFBY4tp20rzZQtKMKsqaXAUeUAz.png', 124, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(95, 840, 'FbhP7pvGOXAuEzEN2BWNEg4cNJu3rT.png', 125, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(96, 840, 'hGfAk8DmJMOL4ewQtIKrzqOEt6Sql4.png', 125, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(97, 840, 'Ss1xzfweb4oHvcpvjKU6LVtyKAe2d4.png', 125, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(98, 843, 'u6c8JBL8YPINWAIiSB7j1DTayTpO7R.png', 126, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(99, 843, 'GWRlstS5hGGLCL3OCRqiY8Gfu7CzI3.png', 126, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(100, 843, 'CIPoCuDrVN8A7QjC8EfFxQV5HecBXJ.png', 126, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(101, 844, '2auygBPEJorBKQCHentLW587N8trDg.png', 127, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(102, 844, 'jFEwBaO34ZYdDtczQ4VjybvgHjnVno.png', 127, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(103, 844, 'NHii7g6jBdLYnjQxOYDI8fKfqYtb9t.png', 127, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(104, 845, 'S1Fb0ZghtFQnaNOu4PWSq4eXOplAXc.png', 128, 'Thumbnail', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(105, 845, 'JZ4ZkwWOKKVrFz7NXQDDQutMEbJXIc.png', 128, 'Main Image', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(106, 845, 'QypA21325kJWVopp2wtsroWVrQ8hUP.png', 128, 'Nutritional Facts', '2023-08-01 17:50:32', '2023-08-01 17:50:32'),
(107, 846, 'F6V4CiK6edsOQmj12LNEzHc8vF0A50.png', 129, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(108, 847, '9inR5vvzFcpTNRzroM5MfjWYp9AEJV.png', 130, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(109, 847, 'x9CuDJZ4zXhtEdkqN9uMGDyGaYK597.png', 130, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(110, 847, 'jWQ3LfmGfq8LRyOzDIDQrmKr6ZVyGm.png', 130, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(111, 849, 'Hsux3Yzx4RUX2iJw0mjJizg6eAPWEW.png', 131, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(112, 849, 'CXnsbinlHyDegcfBPZFiaUAbcehN0T.png', 131, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(113, 1057, 'MD94LxIkE6DZvrHYouyNneHwGtU7Rq.png', 149, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(114, 1058, 'MD94LxIkE6DZvrHYouyNneHwGtU7Rq.png', 149, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(115, 1057, 'zlGawxU9oBs92bogL71HrENQOGG54X.png', 149, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(116, 1058, 'zlGawxU9oBs92bogL71HrENQOGG54X.png', 149, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(117, 1057, 'WZytGTLAJnklganlmoJvOBDyhbkP8z.png', 149, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(118, 1058, 'WZytGTLAJnklganlmoJvOBDyhbkP8z.png', 149, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(119, 1059, 'wyt6fo8jcr7o2meZejBnmksVB27udN.png', 149, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(120, 1060, 'wyt6fo8jcr7o2meZejBnmksVB27udN.png', 149, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(121, 1059, 'YaMzJhF2T5LicPouVjmYoKszsDciMB.png', 149, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(122, 1060, 'YaMzJhF2T5LicPouVjmYoKszsDciMB.png', 149, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(123, 1057, 'SBTku98PRK9HqBxTnqQUmp9Zh0Xqka.png', 149, 'Extra Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(124, 1058, 'SBTku98PRK9HqBxTnqQUmp9Zh0Xqka.png', 149, 'Extra Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(125, 1057, 'WswXH1XoKjNw2qFSO46ZJH7vm3etKa.png', 149, 'Extra Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(126, 1058, 'WswXH1XoKjNw2qFSO46ZJH7vm3etKa.png', 149, 'Extra Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(127, 1071, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(128, 1072, '8Mw7p6COaeStyAVwnDXLN4PB22wEMN.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(129, 1071, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(130, 1072, '2tVrNJrmhrS5wNNjavjHW0L6kxz6Fz.png', 150, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(131, 1071, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(132, 1072, 'Lw2Dy2E9Vb8tjuvWUEcc0gz5PoIo8Q.png', 150, 'Nutritional Facts', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(133, 1069, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(134, 1070, 'W9y2QOthiLmShy6kKZAduJBTG4KZax.png', 150, 'Thumbnail', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(135, 1069, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-01 17:50:33', '2023-08-01 17:50:33'),
(136, 1070, 'LEzc3JptGJyG00dSkm35w9eT1ntZe4.png', 150, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(137, 1071, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(138, 1072, 'x1G5Nr0Hj1nN77ZsIec8WYksjSi4bz.png', 150, 'Extra Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(139, 1104, 'l4rIfj12F3RJDabU6qrtZDYWIGGD6Y.png', 151, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(140, 1105, 'l4rIfj12F3RJDabU6qrtZDYWIGGD6Y.png', 151, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(141, 1104, 'KCmLzoUrIxVx0QAdwBg1W0dFEOQk8h.png', 151, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(142, 1105, 'KCmLzoUrIxVx0QAdwBg1W0dFEOQk8h.png', 151, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(143, 1104, 'BkGPHshbxE8c6IAlpsn3TRoK8HQVJV.png', 151, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(144, 1105, 'BkGPHshbxE8c6IAlpsn3TRoK8HQVJV.png', 151, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(145, 1104, 'B2zEWHPa03sjGNN7mtNcTzTpfw4epp.png', 151, 'Extra Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(146, 1105, 'B2zEWHPa03sjGNN7mtNcTzTpfw4epp.png', 151, 'Extra Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(147, 1102, 'XnCb6jyZIiICgMpJYm3WsbeBFDeh4I.png', 151, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(148, 1103, 'XnCb6jyZIiICgMpJYm3WsbeBFDeh4I.png', 151, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(149, 1102, 'Ofny6pRnfK8ej54GbAYePnerMnJfai.png', 151, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(150, 1103, 'Ofny6pRnfK8ej54GbAYePnerMnJfai.png', 151, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(151, 1063, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(152, 1064, 'fxM94i0lDgVETOjvgjhdJ1WS3VODfp.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(153, 1063, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(154, 1064, 'XoMKC7MgoXZ3Os4Df09XcBgrC0C0We.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(155, 1063, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(156, 1064, 'eADHLuhYah6rLWufIJ04brxcPJXica.png', 152, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(157, 1061, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(158, 1062, 'YDmy9FkO7gAeDkmowCiMBsvOMI3k9K.png', 152, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(159, 1061, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(160, 1062, 'sFq92VEow5pURT5UOwpiurWiMjFHhf.png', 152, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(161, 1074, 'C74AB6SwkbpQolFwVum7m5rrp6NEod.png', 153, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(162, 1075, 'C74AB6SwkbpQolFwVum7m5rrp6NEod.png', 153, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(163, 1074, '0MbTxDzi56t2fpcOtltXaE0U0NRr6D.png', 153, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(164, 1075, '0MbTxDzi56t2fpcOtltXaE0U0NRr6D.png', 153, 'Main Image', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(165, 1074, 'lYWoI8kJomdKgeVtLYY5ag2iPfYQcf.png', 153, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(166, 1075, 'lYWoI8kJomdKgeVtLYY5ag2iPfYQcf.png', 153, 'Nutritional Facts', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(167, 1073, 'jIxH4HR7yCcrRJXaQRsmuSNB3BK4IN.png', 153, 'Thumbnail', '2023-08-01 17:50:34', '2023-08-01 17:50:34'),
(168, 1076, 'jIxH4HR7yCcrRJXaQRsmuSNB3BK4IN.png', 153, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(169, 1073, 'N53DqBXZqkE5V1YlShFLhIXEXCwRiH.png', 153, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(170, 1076, 'N53DqBXZqkE5V1YlShFLhIXEXCwRiH.png', 153, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(171, 1074, 'BqjecSXr3P62orFwYsVsdYDICu8a8q.png', 153, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(172, 1075, 'BqjecSXr3P62orFwYsVsdYDICu8a8q.png', 153, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(173, 1079, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(174, 1080, 'xrJIUEHjl8UOAcUcK9Sh273qs6PizC.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(175, 1079, 'DVr2LHmFwdNsvJByhkX0Nmz9EBthkX.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(176, 1080, 'DVr2LHmFwdNsvJByhkX0Nmz9EBthkX.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(177, 1079, 'l7lu1WJHZt6NuFvbjNGFOV7hHEps0o.png', 154, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(178, 1080, 'l7lu1WJHZt6NuFvbjNGFOV7hHEps0o.png', 154, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(179, 1077, 'IBamcr7jhBoH9U4z45SCN0CduLw6Mj.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(180, 1078, 'IBamcr7jhBoH9U4z45SCN0CduLw6Mj.png', 154, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(181, 1077, 'u2o71u4rJGtuh6ig7gYYrEjhXvsGI5.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(182, 1078, 'u2o71u4rJGtuh6ig7gYYrEjhXvsGI5.png', 154, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(183, 1079, 'xHKd2xADxN11whzWRfXzDwN0Iy4rp6.png', 154, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(184, 1080, 'xHKd2xADxN11whzWRfXzDwN0Iy4rp6.png', 154, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(185, 1081, 'EhNA3Oh78hnMmVD0QrG9uk5h3J26Pl.png', 155, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(186, 1081, 'gNpuTucWJxyMeaxfiCuxnHJYKoIlxz.png', 155, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(187, 1081, 'PO0X6EF653fN7GwRGT02Rfcyndorbm.png', 155, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(188, 1082, 'jIN9BjMiMUxHUVUNKsYQFS6xOdmNnK.png', 155, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(189, 1082, 'aFvopwUoNW8RDq99unmTmCZVDvpZKL.png', 155, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(190, 1081, 'TB1c4Un4nVXHc38rhfxmi2VUXOqzAu.png', 155, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(191, 1110, 'H5UPZlw9MyBCap5yxpoUEmgMIEwVTL.png', 156, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(192, 1110, 'WoyHu5eLZwPEPqljRdNqE7snKIyRq1.png', 156, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(193, 1110, 'B6BiLthmbKHNXaBbmyG87LQCzpaZlM.png', 156, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(194, 1111, 'FMorUHQoyecJBKMaUmaUsrBG3SYvEO.png', 156, 'Thumbnail', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(195, 1111, 'iOsj2VV9y4pyaxhfQMEqHHK7TlZhiL.png', 156, 'Main Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(196, 1110, 'rGScNfOThoAyclamLe2bB4oejIFKa8.png', 156, 'Extra Image', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(197, 1094, 'wgbrfgW3nwwvwKB6DRnYOMSRhxChzp.png', 159, 'Nutritional Facts', '2023-08-01 17:50:35', '2023-08-01 17:50:35'),
(199, 1102, '1102.png', 151, 'Nutritional Facts', '2023-08-02 11:52:51', '2023-08-02 11:52:51'),
(200, 1103, '1102.png', 151, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(201, 1070, '1070.png', 150, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(202, 1069, '1070.png', 150, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(203, 1076, '1076.png', 153, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(204, 1073, '1076.png', 153, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(205, 1077, '1077.png', 154, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(206, 1078, '1077.png', 154, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(207, 1061, '1061.png', 152, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(208, 1062, '1061.png', 152, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(209, 1082, '1082.png', 155, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(210, 1111, '1084.png', 156, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(211, 1060, '1060.png', 149, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47'),
(212, 1059, '1060.png', 149, 'Nutritional Facts', '2023-08-02 12:03:47', '2023-08-02 12:03:47');

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
-- Dumping data for table `variation_keys`
--

INSERT INTO `variation_keys` (`id`, `variation_id`, `product_id`, `value`, `type`, `created_at`, `updated_at`) VALUES
(324, 456, 89, '10 oz', 'size', '2023-07-19', '2023-07-19'),
(704, 831, 111, '9 Inch', 'size', '2023-07-21', '2023-07-21'),
(703, 830, 111, '5 Inch', 'size', '2023-07-21', '2023-07-21'),
(360, 520, 77, 'Large 20 oz', 'size', '2023-07-19', '2023-07-19'),
(46, 148, 41, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(45, 148, 41, '5 inch', 'size', '2023-07-11', '2023-07-11'),
(47, 149, 41, '8 inch', 'size', '2023-07-11', '2023-07-11'),
(52, 151, 43, '5 inch', 'size', '2023-07-11', '2023-07-11'),
(51, 151, 43, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(50, 150, 43, '8 inch', 'size', '2023-07-11', '2023-07-11'),
(49, 150, 43, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(54, 153, 44, '5 inch', 'size', '2023-07-11', '2023-07-11'),
(53, 152, 44, '8 inch', 'size', '2023-07-11', '2023-07-11'),
(707, 834, 102, '9 Inch', 'size', '2023-07-21', '2023-07-21'),
(58, 157, 47, '5 inch', 'size', '2023-07-11', '2023-07-11'),
(57, 156, 47, '8 inch', 'size', '2023-07-11', '2023-07-11'),
(62, 160, 49, '5 inch', 'size', '2023-07-11', '2023-07-11'),
(61, 160, 49, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(60, 159, 49, '8 inch', 'size', '2023-07-11', '2023-07-11'),
(59, 159, 49, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(325, 457, 89, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(328, 460, 87, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(347, 483, 95, '1 Scoop', 'size', '2023-07-19', '2023-07-19'),
(48, 149, 41, 'Frozen', 'type', '2023-07-11', '2023-07-11'),
(1166, 1115, 161, '9 Inch', 'size', '2023-08-07', '2023-08-07'),
(1489, 1325, 128, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1488, 1324, 131, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(77, 176, 77, 'Medium 16 oz', 'size', '2023-07-11', '2023-07-11'),
(78, 177, 77, 'Large 20 oz', 'size', '2023-07-11', '2023-07-11'),
(1524, 1360, 67, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(354, 514, 78, 'Medium 16 oz', 'size', '2023-07-19', '2023-07-19'),
(353, 513, 78, 'Large 20 oz', 'size', '2023-07-19', '2023-07-19'),
(355, 515, 79, 'Medium 16 oz', 'size', '2023-07-19', '2023-07-19'),
(342, 474, 80, '10 oz', 'size', '2023-07-19', '2023-07-19'),
(343, 475, 80, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(340, 472, 81, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(338, 470, 82, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(336, 468, 83, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(334, 466, 84, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(332, 464, 85, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(330, 462, 86, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(329, 461, 87, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(326, 458, 88, '10 oz', 'size', '2023-07-19', '2023-07-19'),
(108, 207, 89, '10 oz', 'size', '2023-07-11', '2023-07-11'),
(109, 208, 89, '12 oz', 'size', '2023-07-11', '2023-07-11'),
(350, 486, 96, '1 Scoop', 'size', '2023-07-19', '2023-07-19'),
(359, 519, 77, 'Medium 16 oz', 'size', '2023-07-19', '2023-07-19'),
(322, 454, 90, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(321, 453, 91, '10 oz', 'size', '2023-07-19', '2023-07-19'),
(345, 481, 95, '3 Scoop', 'size', '2023-07-19', '2023-07-19'),
(346, 482, 95, '2 Scoop', 'size', '2023-07-19', '2023-07-19'),
(348, 484, 96, '3 Scoop', 'size', '2023-07-19', '2023-07-19'),
(349, 485, 96, '2 Scoop', 'size', '2023-07-19', '2023-07-19'),
(351, 487, 97, '1 Scoop', 'size', '2023-07-19', '2023-07-19'),
(352, 488, 97, '2 Scoop', 'size', '2023-07-19', '2023-07-19'),
(1486, 1322, 130, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(708, 835, 102, '5 Inch', 'size', '2023-07-21', '2023-07-21'),
(710, 842, 103, '9 Inch', 'size', '2023-07-21', '2023-07-21'),
(709, 841, 103, '5 Inch', 'size', '2023-07-21', '2023-07-21'),
(1485, 1321, 130, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1521, 1357, 68, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1520, 1356, 68, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1519, 1355, 34, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1518, 1354, 34, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1517, 1353, 34, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1523, 1359, 67, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1522, 1358, 68, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1516, 1352, 118, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1515, 1351, 118, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1513, 1349, 40, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1512, 1348, 40, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1487, 1323, 131, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1472, 1303, 153, '5 INCH', 'size', '2023-08-16', '2023-08-16'),
(1471, 1303, 153, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1470, 1302, 153, '9 INCH', 'size', '2023-08-16', '2023-08-16'),
(1394, 1239, 154, '9 INCH', 'size', '2023-08-14', '2023-08-14'),
(1393, 1239, 154, 'Baked', 'type', '2023-08-14', '2023-08-14'),
(1392, 1238, 154, '9 INCH', 'size', '2023-08-14', '2023-08-14'),
(1469, 1302, 153, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1468, 1301, 153, '9 INCH', 'size', '2023-08-16', '2023-08-16'),
(341, 473, 81, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(339, 471, 82, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(337, 469, 83, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(335, 467, 84, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(333, 465, 85, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(323, 455, 90, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(327, 459, 88, '12 oz', 'size', '2023-07-19', '2023-07-19'),
(331, 463, 86, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(344, 476, 80, '16 oz', 'size', '2023-07-19', '2023-07-19'),
(356, 516, 79, 'Large 20 oz', 'size', '2023-07-19', '2023-07-19'),
(1497, 1333, 124, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1496, 1332, 125, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1495, 1331, 125, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1494, 1330, 126, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1493, 1329, 126, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1492, 1328, 127, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1491, 1327, 127, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1490, 1326, 128, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1391, 1238, 154, 'Frozen', 'type', '2023-08-14', '2023-08-14'),
(1390, 1237, 154, '5 INCH', 'size', '2023-08-14', '2023-08-14'),
(1389, 1237, 154, 'Frozen', 'type', '2023-08-14', '2023-08-14'),
(1467, 1301, 153, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1466, 1300, 153, '5 INCH', 'size', '2023-08-16', '2023-08-16'),
(1137, 1093, 159, '5 Inch', 'size', '2023-07-27', '2023-07-27'),
(1138, 1094, 159, '9 Inch', 'size', '2023-07-27', '2023-07-27'),
(1464, 1290, 156, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1463, 1289, 156, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1388, 1236, 154, '5 INCH', 'size', '2023-08-14', '2023-08-14'),
(1514, 1350, 118, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1511, 1347, 40, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1498, 1334, 124, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1465, 1300, 153, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1387, 1236, 154, 'Baked', 'type', '2023-08-14', '2023-08-14'),
(1478, 1309, 155, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1477, 1308, 155, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1165, 1115, 161, '9 Inch', 'size', '2023-08-07', '2023-08-07'),
(1164, 1114, 161, '5 Inch', 'size', '2023-08-07', '2023-08-07'),
(1163, 1114, 161, '5 Inch', 'size', '2023-08-07', '2023-08-07'),
(1167, 1116, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1168, 1116, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1169, 1117, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1170, 1117, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1171, 1118, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1172, 1118, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1173, 1119, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1174, 1119, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1175, 1120, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1176, 1120, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1177, 1121, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1178, 1121, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1179, 1122, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1180, 1122, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1181, 1123, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1182, 1123, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1183, 1124, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1184, 1124, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1185, 1125, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1186, 1125, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1187, 1126, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1188, 1126, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1189, 1127, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1190, 1127, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1191, 1128, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1192, 1128, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1193, 1129, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1194, 1129, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1195, 1130, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1196, 1130, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1197, 1131, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1198, 1131, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1199, 1132, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1200, 1132, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1201, 1133, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1202, 1133, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1203, 1134, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1204, 1134, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1205, 1135, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1206, 1135, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1207, 1136, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1208, 1136, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1209, 1137, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1210, 1137, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1211, 1138, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1212, 1138, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1213, 1139, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1214, 1139, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1215, 1140, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1216, 1140, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1217, 1141, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1218, 1141, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1219, 1142, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1220, 1142, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1221, 1143, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1222, 1143, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1223, 1144, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1224, 1144, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1225, 1145, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1226, 1145, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1227, 1146, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1228, 1146, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1229, 1147, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1230, 1147, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1231, 1148, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1232, 1148, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1233, 1149, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1234, 1149, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1235, 1150, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1236, 1150, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1237, 1151, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1238, 1151, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1239, 1152, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1240, 1152, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1241, 1153, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1242, 1153, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1243, 1154, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1244, 1154, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1245, 1155, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1246, 1155, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1247, 1156, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1248, 1156, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1249, 1157, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1250, 1157, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1251, 1158, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1252, 1158, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1253, 1159, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1254, 1159, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1255, 1160, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1256, 1160, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1257, 1161, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1258, 1161, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1259, 1162, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1260, 1162, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1261, 1163, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1262, 1163, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1263, 1164, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1264, 1164, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1265, 1165, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1266, 1165, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1267, 1166, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1268, 1166, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1269, 1167, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1270, 1167, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1271, 1168, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1272, 1168, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1273, 1169, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1274, 1169, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1275, 1170, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1276, 1170, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1277, 1171, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1278, 1171, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1279, 1172, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1280, 1172, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1281, 1173, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1282, 1173, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1283, 1174, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1284, 1174, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1285, 1175, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1286, 1175, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1287, 1176, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1288, 1176, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1289, 1177, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1290, 1177, 162, 'Forzen', 'type', '2023-08-10', '2023-08-10'),
(1291, 1178, 162, '10 inch', 'size', '2023-08-10', '2023-08-10'),
(1292, 1178, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1293, 1179, 162, '5 inch', 'size', '2023-08-10', '2023-08-10'),
(1294, 1179, 162, 'Baked', 'type', '2023-08-10', '2023-08-10'),
(1303, 1184, 102, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1304, 1185, 102, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1305, 1186, 102, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1306, 1187, 102, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1307, 1188, 102, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1308, 1189, 102, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1309, 1190, 102, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1310, 1191, 102, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1311, 1192, 111, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1312, 1193, 111, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1313, 1194, 111, '5 Inch', 'size', '2023-08-14', '2023-08-14'),
(1314, 1195, 111, '9 Inch', 'size', '2023-08-14', '2023-08-14'),
(1484, 1320, 129, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1483, 1319, 129, '6 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1474, 1305, 112, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1473, 1304, 112, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1548, 1381, 149, '5 Inch', 'size', '2023-08-17', '2023-08-17'),
(1547, 1381, 149, 'Baked', 'type', '2023-08-17', '2023-08-17'),
(1546, 1380, 149, '5 Inch', 'size', '2023-08-17', '2023-08-17'),
(1545, 1380, 149, 'Frozen', 'type', '2023-08-17', '2023-08-17'),
(1544, 1379, 149, '9 Inch', 'size', '2023-08-17', '2023-08-17'),
(1543, 1379, 149, 'Baked', 'type', '2023-08-17', '2023-08-17'),
(1542, 1378, 149, '9 Inch', 'size', '2023-08-17', '2023-08-17'),
(1541, 1378, 149, 'Frozen', 'type', '2023-08-17', '2023-08-17'),
(1444, 1267, 152, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1443, 1267, 152, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1442, 1266, 152, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1441, 1266, 152, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1440, 1265, 152, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1439, 1265, 152, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1438, 1264, 152, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1437, 1264, 152, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1436, 1263, 150, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1435, 1263, 150, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1434, 1262, 150, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1433, 1262, 150, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1432, 1261, 150, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1431, 1261, 150, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1430, 1260, 150, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1429, 1260, 150, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1452, 1271, 151, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1451, 1271, 151, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1450, 1270, 151, '9 Inch', 'size', '2023-08-16', '2023-08-16'),
(1449, 1270, 151, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1448, 1269, 151, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1447, 1269, 151, 'Frozen', 'type', '2023-08-16', '2023-08-16'),
(1446, 1268, 151, '5 Inch', 'size', '2023-08-16', '2023-08-16'),
(1445, 1268, 151, 'Baked', 'type', '2023-08-16', '2023-08-16'),
(1525, 1361, 67, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1526, 1362, 65, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1527, 1363, 65, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1528, 1364, 65, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1529, 1366, 64, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1530, 1367, 64, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1531, 1368, 64, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1540, 1377, 69, '12 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1539, 1376, 69, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1538, 1375, 69, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1535, 1372, 66, '4 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1536, 1373, 66, '8 Pcs', 'size', '2023-08-17', '2023-08-17'),
(1537, 1374, 66, '12 Pcs', 'size', '2023-08-17', '2023-08-17');

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
-- Indexes for table `shippings`
--
ALTER TABLE `shippings`
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
-- Indexes for table `tax_values`
--
ALTER TABLE `tax_values`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `addresses`
--
ALTER TABLE `addresses`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `baking_instructions`
--
ALTER TABLE `baking_instructions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `banners`
--
ALTER TABLE `banners`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `baskets`
--
ALTER TABLE `baskets`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `blog_categories`
--
ALTER TABLE `blog_categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `blog_category_lists`
--
ALTER TABLE `blog_category_lists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `career_jobs`
--
ALTER TABLE `career_jobs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `career_requests`
--
ALTER TABLE `career_requests`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `category_products`
--
ALTER TABLE `category_products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=645;

--
-- AUTO_INCREMENT for table `cities`
--
ALTER TABLE `cities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `countries`
--
ALTER TABLE `countries`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `country_shippings`
--
ALTER TABLE `country_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `coupon_stores`
--
ALTER TABLE `coupon_stores`
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
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `galleries`
--
ALTER TABLE `galleries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;

--
-- AUTO_INCREMENT for table `holidays`
--
ALTER TABLE `holidays`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;

--
-- AUTO_INCREMENT for table `holiday_timings`
--
ALTER TABLE `holiday_timings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `homepage_products`
--
ALTER TABLE `homepage_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `homepage_product_lists`
--
ALTER TABLE `homepage_product_lists`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `landing_pages`
--
ALTER TABLE `landing_pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `location_shippings`
--
ALTER TABLE `location_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menucategory_products`
--
ALTER TABLE `menucategory_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=768;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `menu_categories`
--
ALTER TABLE `menu_categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `myaddresses`
--
ALTER TABLE `myaddresses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `mycards`
--
ALTER TABLE `mycards`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nutrition_explorers`
--
ALTER TABLE `nutrition_explorers`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=179;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1019;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `order_payments`
--
ALTER TABLE `order_payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=166;

--
-- AUTO_INCREMENT for table `product_cities`
--
ALTER TABLE `product_cities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27283;

--
-- AUTO_INCREMENT for table `product_images`
--
ALTER TABLE `product_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=522;

--
-- AUTO_INCREMENT for table `product_images_old`
--
ALTER TABLE `product_images_old`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT for table `product_shippings`
--
ALTER TABLE `product_shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2612;

--
-- AUTO_INCREMENT for table `product_specializations`
--
ALTER TABLE `product_specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=82;

--
-- AUTO_INCREMENT for table `product_variations`
--
ALTER TABLE `product_variations`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1385;

--
-- AUTO_INCREMENT for table `provinces`
--
ALTER TABLE `provinces`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `shippings`
--
ALTER TABLE `shippings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `socialmedia_sites`
--
ALTER TABLE `socialmedia_sites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `specializations`
--
ALTER TABLE `specializations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `stores`
--
ALTER TABLE `stores`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `store_images`
--
ALTER TABLE `store_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=149;

--
-- AUTO_INCREMENT for table `store_timings`
--
ALTER TABLE `store_timings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1976;

--
-- AUTO_INCREMENT for table `subscribes`
--
ALTER TABLE `subscribes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `suggested_products`
--
ALTER TABLE `suggested_products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `tax_values`
--
ALTER TABLE `tax_values`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `variation_images`
--
ALTER TABLE `variation_images`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=687;

--
-- AUTO_INCREMENT for table `variation_images_old`
--
ALTER TABLE `variation_images_old`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=213;

--
-- AUTO_INCREMENT for table `variation_keys`
--
ALTER TABLE `variation_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1549;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
