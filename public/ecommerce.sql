-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 03, 2022 at 03:51 PM
-- Server version: 10.4.10-MariaDB
-- PHP Version: 7.3.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ecommerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `carts`
--

INSERT INTO `carts` (`id`, `user_id`, `prod_id`, `prod_qty`, `created_at`, `updated_at`) VALUES
(55, '1', '1', '1', '2021-09-04 08:46:13', '2021-09-04 08:46:13'),
(57, '1', '4', '1', '2021-10-19 11:06:23', '2021-10-19 11:06:41');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Electronics', 'electronics', 'all kinds of good electronics here', 0, 1, '1621101545.jpg', 'electronics', 'good electronics, electronicsgood electronics, electronics', 'good electronics, electronics', '2021-05-15 12:25:57', '2021-06-08 00:02:51'),
(2, 'Household', 'household', 'All kinds of household items', 0, 1, '1621787701.jpg', 'Household items', 'All kinds of household items available here', 'household items , good house hold items', '2021-05-15 12:29:05', '2021-06-18 11:16:59'),
(8, 'Fashion', 'fashion', 'All kinds of clothes and dresses', 0, 1, '1621789477.jpg', 'Fashion, modern fashion', 'Fashion, modern fashion, Fashion, modern fashion', 'Fashion, modern fashion', '2021-05-23 11:34:37', '2021-05-23 11:34:37'),
(9, 'Mobiles', 'mobiles', 'All Mobiles of different brands and specification', 0, 0, '1622527299.jpg', 'mobiles, redmi phones, oppo phones', 'mobiles, redmi phones, oppo phones', 'mobiles, redmi phones, oppo phones', '2021-06-01 00:31:39', '2021-06-01 00:31:39');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_15_164433_create_categories_table', 2),
(5, '2021_05_23_172511_create_products_table', 3),
(6, '2021_06_24_062217_create_carts_table', 4),
(9, '2021_07_21_085907_create_orders_table', 5),
(10, '2021_07_21_090403_create_order_items_table', 5),
(11, '2021_08_01_081843_create_wishlists_table', 6),
(12, '2021_08_25_025057_create_ratings_table', 7),
(14, '2021_08_31_144534_create_reviews_table', 8);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `fname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `total_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_mode` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `message` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tracking_no` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '1', 'Om', 'prakash', 'om@gmail.com', '9876543211', 'byrathi', 'cross', 'bengaluru', 'karnataka', 'india', '560077', '10999', 'COD', NULL, 1, NULL, 'sharma2135', '2021-08-26 09:24:09', '2021-09-04 07:36:32'),
(2, '1', 'Om', 'prakash', 'om@gmail.com', '9876543211', 'byrathi', 'cross', 'bengaluru', 'karnataka', 'india', '560077', '1', 'COD', NULL, 0, NULL, 'sharma8186', '2021-09-01 20:03:57', '2021-09-01 20:03:57'),
(3, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '1', 'COD', NULL, 0, NULL, 'sharma8903', '2021-09-01 20:32:53', '2021-09-01 20:32:53'),
(4, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '10999', 'COD', NULL, 0, NULL, 'sharma4380', '2021-09-02 10:03:21', '2021-09-02 10:03:21'),
(5, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '1', 'Paid by Razorpay', 'pay_HtO8Xwt2x5ccEh', 0, NULL, 'sharma3216', '2021-09-04 06:59:46', '2021-09-04 06:59:46'),
(6, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '1', 'COD', NULL, 0, NULL, 'sharma4133', '2021-09-04 07:01:25', '2021-09-04 07:01:25'),
(7, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '1', 'Paid by Razorpay', 'pay_Ii4tdFKxcGu3Zh', 0, NULL, 'sharma4079', '2022-01-10 09:19:33', '2022-01-10 09:19:33'),
(8, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '1', 'Paid by Razorpay', 'pay_Ii4xkWobrjxkTF', 0, NULL, 'sharma7636', '2022-01-10 09:23:27', '2022-01-10 09:23:27'),
(9, '2', 'Sharma', 'coder', 'sharma@gmail.com', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', '11000', 'Paid by Razorpay', 'pay_J27RSdW94kes4s', 0, NULL, 'sharma4266', '2022-03-02 00:49:00', '2022-03-02 00:49:00'),
(10, '5', 'om', 'prakash', 'om@gmail.com', '9879879879', 'chruch', 'road', 'bluru', 'ktaka', 'india', '560007', '1', 'COD', NULL, 0, NULL, 'sharma3718', '2022-03-03 09:19:39', '2022-03-03 09:19:39');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `order_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '4', '1', '10999', '2021-08-26 09:24:09', '2021-08-26 09:24:09'),
(2, '2', '1', '1', '1', '2021-09-01 20:03:57', '2021-09-01 20:03:57'),
(3, '3', '1', '1', '1', '2021-09-01 20:32:53', '2021-09-01 20:32:53'),
(4, '4', '4', '1', '10999', '2021-09-02 10:03:21', '2021-09-02 10:03:21'),
(5, '5', '8', '1', '1', '2021-09-04 06:59:46', '2021-09-04 06:59:46'),
(6, '6', '8', '1', '1', '2021-09-04 07:01:25', '2021-09-04 07:01:25'),
(7, '7', '1', '1', '1', '2022-01-10 09:19:34', '2022-01-10 09:19:34'),
(8, '8', '1', '1', '1', '2022-01-10 09:23:27', '2022-01-10 09:23:27'),
(9, '9', '4', '1', '10999', '2022-03-02 00:49:00', '2022-03-02 00:49:00'),
(10, '9', '1', '1', '1', '2022-03-02 00:49:00', '2022-03-02 00:49:00'),
(11, '10', '8', '1', '1', '2022-03-03 09:19:40', '2022-03-03 09:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cate_id` bigint(20) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `small_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `original_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `selling_price` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `qty` int(191) NOT NULL,
  `tax` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL,
  `trending` tinyint(4) NOT NULL,
  `meta_title` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 9, 'Redmi Note 7 pro', 'redmi-note-7-pro', 'Virgil Abloh’s Off-White is a streetwear-inspired collection that continues to break away from the conventions of mainstream fashion. Made in Italy, these black and brown Odsy-1000 low-top sneakers', 'Mi 4+64 gb mobile with snapdragon processpr', '15999', '1', '1622527723.jpg', 13, '18', 0, 1, 'Redmi Note 7 Pro', 'Redmi Note 7 Pro, Redmi Note 7 Pro', 'Redmi Note 7 Pro, Redmi Note 7 Pro 4+64 gb version', '2021-05-23 12:42:38', '2022-03-02 00:49:00'),
(3, 9, 'REDMI K20 Pro', 'redmi-k20-pro', 'Virgil Abloh’s Off-White is a streetwear-inspired collection that continues to break away from the conventions of mainstream fashion. Made in Italy, these black and brown Odsy-1000 low-top sneakers', 'Redmi K20 Pro Mettalic Blue comes with 6 gb RAM , 128 gb ROM with 765 spandragon and liquid cooling technology', '24999', '22999', '1622527515.jpg', 19, '18', 0, 1, 'Redmi K20 Pro Mettalic Blue', 'Redmi K20 Pro Mettalic Blue, Redmi K20 Pro Mettalic Blue', 'Redmi K20 Pro Mettalic Blue comes with 6 gb RAM , 128 gb ROM with 765 spandragon and liquid cooling technology', '2021-06-01 00:35:15', '2021-08-14 09:53:56'),
(4, 9, 'Oppo A12', 'oppo-a12', 'Virgil Abloh’s Off-White is a streetwear-inspired collection that continues to break away from the conventions of mainstream fashion. Made in Italy, these black and brown Odsy-1000 low-top sneakers', 'Oppo A12 Night Gray Edition with 4gb ram, 64 gb rom. Comes with helio processor', '12999', '10999', '1622527704.jpg', 15, '18', 0, 0, 'Oppo A12 Night Gray Edition', 'Oppo A12 Night Gray Edition', 'Oppo A12 Night Gray Edition with 4gb ram, 64 gb rom. Comes with helio processor', '2021-06-01 00:38:24', '2022-03-02 00:49:00'),
(5, 8, 'Formal Shirt For Men', 'formal-shirt-for-men', 'X Brand Formal shirt for men', 'X Brand Formal shirt for men made for comfort for men.', '1399', '1099', '1622527939.jpg', 45, '18', 0, 1, 'Formal Shirt For Men', 'Formal Shirt For Men, Formal Shirt For Men', 'X Brand Formal shirt for men made for comfort for men.', '2021-06-01 00:42:19', '2021-08-16 23:26:43'),
(6, 8, 'T-shirt For Men', 'tshirt-for-men', 'Branded Cotton T-shirt designed for summer use', 'Branded Cotton T-shirt designed for summer use for men.', '899', '499', '1622528056.jpg', 63, '18', 0, 1, 'T-shirt For Men', 'T-shirt For Men, T-shirt For Men', 'Branded Cotton T-shirt designed for summer use for men.', '2021-06-01 00:44:16', '2021-08-16 23:26:43'),
(7, 1, '18 Volts MI Charger', 'mi-fast-charger', '18 Volts Fast Charging', '18 Volts Fast Charging with C-type Cable', '1899', '1299', '1622529263.jpg', 11, '18', 0, 0, '18 Volts Fast Charging', '18 Volts Fast Charging', '18 Volts Fast Charging', '2021-06-01 01:04:23', '2021-08-14 12:30:54'),
(8, 1, 'Headphones', 'headphones', 'Good quality head phones', 'Good quality head phones, Good quality head phones', '2499', '1', '1622529345.jpg', 38, '18', 0, 1, 'Good quality head phones', 'Good quality head phones', 'Good quality head phones', '2021-06-01 01:05:45', '2022-03-03 09:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `prod_id`, `stars_rated`, `created_at`, `updated_at`) VALUES
(1, '1', '4', '4', '2021-08-26 09:24:25', '2021-10-19 11:06:13'),
(2, '1', '1', '3', '2021-09-01 20:04:13', '2021-09-02 09:06:03'),
(3, '2', '1', '3', '2021-09-01 20:33:23', '2022-02-22 02:45:08'),
(4, '2', '4', '2', '2021-09-02 10:04:02', '2021-09-02 10:06:35');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `prod_id`, `user_review`, `created_at`, `updated_at`) VALUES
(1, '1', '4', 'This is my edited review\r\nThe product was good, the delivery was on time and etc,The product was good, the delivery was on time and etc\r\nThe product was good, the delivery was on time and etc\r\nThe product was good, the delivery was on time and etc asdfasdfasdfasdf\r\nThe product was good, the delivery was on time and etc\r\nThe product was good, the delivery was on time and etc', '2021-08-31 09:48:16', '2021-08-31 11:54:03'),
(2, '1', '1', 'Redmi Note 7 pro is a Nice mobile', '2021-09-01 20:04:30', '2021-09-01 20:04:30'),
(3, '2', '1', 'thank you for this prodcut', '2021-09-01 20:33:14', '2021-09-01 20:33:14'),
(4, '2', '4', 'This is sharma here and this product is very good', '2021-09-02 10:03:52', '2021-09-02 10:03:52');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'admin@gmail.com', NULL, '$2y$10$JmjPjCrV.8yoHZZV76XpseniZliw/UcOwmM/ithc5YKtytmTKlGKS', 'admin', '9876543211', 'byrathi', 'cross', 'bengaluru', 'karnataka', 'india', '560077', 1, NULL, '2021-05-15 08:04:14', '2021-07-25 11:44:04'),
(2, 'Sharma', 'sharma@gmail.com', NULL, '$2y$10$Oq8wIMY1rDwbBdF.6W3Iau5FO77zGPg/dKWv9E7VfLMsB7plGZwg6', 'coder', '8887779997', 'xyz', 'abx', 'bengaluru', 'karanataka', 'India', '558778', 0, NULL, '2021-05-15 08:38:02', '2021-07-21 04:24:48'),
(5, 'om', 'om@gmail.com', NULL, '$2y$10$WmUaEE34dE/UhwPjiPrnJe7ewnn743GVPaKwiNYpNWblVXkKM1Uqi', 'prakash', '9879879879', 'chruch', 'road', 'bluru', 'ktaka', 'india', '560007', 0, NULL, '2022-03-03 09:14:49', '2022-03-03 09:19:40');

-- --------------------------------------------------------

--
-- Table structure for table `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `wishlists`
--

INSERT INTO `wishlists` (`id`, `user_id`, `prod_id`, `created_at`, `updated_at`) VALUES
(4, '1', '4', '2021-10-19 11:06:29', '2021-10-19 11:06:29'),
(22, '2', '3', '2022-02-22 10:38:52', '2022-02-22 10:38:52'),
(23, '2', '7', '2022-03-02 00:04:30', '2022-03-02 00:04:30');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
