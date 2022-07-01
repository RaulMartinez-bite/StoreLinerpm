-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 22-05-2022 a las 00:05:25
-- Versión del servidor: 10.4.22-MariaDB
-- Versión de PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `storeline`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 0,
  `popular` tinyint(4) NOT NULL DEFAULT 0,
  `image` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_descrip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `slug`, `description`, `status`, `popular`, `image`, `meta_title`, `meta_descrip`, `meta_keywords`, `created_at`, `updated_at`) VALUES
(1, 'Celulares', 'celulares', 'Todo tipo de celulares', 0, 1, '1649208078.jpg', 'celulares de todas las marcas', 'celulares de todas las marcas', 'celulares de todas las marcas', '2022-04-06 06:21:18', '2022-04-06 06:21:18'),
(2, 'Deportes', 'deportes', 'Todo tipos de articulos para realizar deportes', 0, 1, '1649213979.jpg', 'Todo tipos de articulos para realizar deportes', 'Todo tipos de articulos para realizar deportes', 'Todo tipos de articulos para realizar deportes', '2022-04-06 07:59:39', '2022-04-06 07:59:39'),
(3, 'Calzado', 'calzado', 'Todo tipo de calzado para toda la familia', 0, 1, '1649218651.png', 'Todo tipo de calzado para toda la familia', 'Todo tipo de calzado para toda la familia', 'Todo tipo de calzado para toda la familia', '2022-04-06 09:17:31', '2022-04-06 09:17:31');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `failed_jobs`
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
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_05_15_164433_create_categories_table', 1),
(5, '2021_05_23_172511_create_products_table', 1),
(6, '2021_06_24_062217_create_carts_table', 1),
(7, '2021_07_21_085907_create_orders_table', 1),
(8, '2021_07_21_090403_create_order_items_table', 1),
(9, '2021_08_01_081843_create_wishlists_table', 1),
(10, '2021_08_25_025057_create_ratings_table', 1),
(11, '2021_08_31_144534_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orders`
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
-- Volcado de datos para la tabla `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `fname`, `lname`, `email`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `total_price`, `payment_mode`, `payment_id`, `status`, `message`, `tracking_no`, `created_at`, `updated_at`) VALUES
(1, '2', 'Eduardo Vazquez', 'Vazquez Ponce', 'ol221811704@gmail.com', '7227988865', 'Miguel Hidalgo', 'Lopez Mateos', 'Toluca', 'Mexico', 'La capilla Huitzizilapan', '52050', '6500', 'COD', NULL, 1, NULL, 'sharma5606', '2022-04-06 06:49:09', '2022-04-07 09:08:01'),
(2, '2', 'Eduardo Vazquez', 'Vazquez Ponce', 'ol221811704@gmail.com', '7227988865', 'Miguel Hidalgo', 'Lopez Mateos', 'Toluca', 'Mexico', 'La capilla Huitzizilapan', '52050', '8100', 'COD', NULL, 0, NULL, 'sharma7847', '2022-04-06 08:18:46', '2022-04-06 08:18:46'),
(3, '3', 'Bryan Jair', 'Lopez Martinez', 'bryan@gmail.com', '7272676722', 'Emiliano Zapata', 'Lopez Mateos', 'Touca', 'Mexico', 'Flor de Gallo Huitzizilapan', '52050', '7347', 'COD', NULL, 0, NULL, 'store1571', '2022-04-06 09:14:51', '2022-04-06 09:14:51'),
(4, '3', 'Bryan Jair', 'Lopez Martinez', 'bryan@gmail.com', '7272676722', 'Emiliano Zapata', 'Lopez Mateos', 'Touca', 'Mexico', 'Flor de Gallo Huitzizilapan', '52050', '6500', 'COD', NULL, 0, NULL, 'store6300', '2022-04-07 00:46:48', '2022-04-07 00:46:48'),
(5, '3', 'Bryan Jair', 'Lopez Martinez', 'bryan@gmail.com', '7272676722', 'Emiliano Zapata', 'Lopez Mateos', 'Touca', 'Mexico', 'Flor de Gallo Huitzizilapan', '52050', '7347', 'COD', NULL, 0, NULL, 'store8580', '2022-04-07 04:03:04', '2022-04-07 04:03:04'),
(6, '2', 'Eduardo Vazquez', 'Vazquez Ponce', 'ol221811704@gmail.com', '7227988865', 'Miguel Hidalgo', 'Lopez Mateos', 'Toluca', 'Mexico', 'La capilla Huitzizilapan', '52050', '400', 'COD', NULL, 0, NULL, 'store7347', '2022-04-08 04:13:40', '2022-04-08 04:13:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `order_items`
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
-- Volcado de datos para la tabla `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `prod_id`, `qty`, `price`, `created_at`, `updated_at`) VALUES
(1, '1', '1', '1', '6500', '2022-04-06 06:49:09', '2022-04-06 06:49:09'),
(2, '2', '2', '4', '400', '2022-04-06 08:18:46', '2022-04-06 08:18:46'),
(3, '2', '1', '1', '6500', '2022-04-06 08:18:46', '2022-04-06 08:18:46'),
(4, '3', '1', '1', '6500', '2022-04-06 09:14:51', '2022-04-06 09:14:51'),
(5, '3', '2', '1', '400', '2022-04-06 09:14:51', '2022-04-06 09:14:51'),
(6, '3', '3', '1', '447', '2022-04-06 09:14:51', '2022-04-06 09:14:51'),
(7, '4', '1', '1', '6500', '2022-04-07 00:46:48', '2022-04-07 00:46:48'),
(8, '5', '1', '1', '6500', '2022-04-07 04:03:04', '2022-04-07 04:03:04'),
(9, '5', '2', '1', '400', '2022-04-07 04:03:04', '2022-04-07 04:03:04'),
(10, '5', '3', '1', '447', '2022-04-07 04:03:04', '2022-04-07 04:03:04'),
(11, '6', '2', '1', '400', '2022-04-08 04:13:40', '2022-04-08 04:13:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
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
  `qty` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
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
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `cate_id`, `name`, `slug`, `small_description`, `description`, `original_price`, `selling_price`, `image`, `qty`, `tax`, `status`, `trending`, `meta_title`, `meta_keywords`, `meta_description`, `created_at`, `updated_at`) VALUES
(1, 1, 'Realme 7', 'realme7', 'larga vida al 4G en la gama media con hasta 8 GB de RAM y carga rápida de 65W', 'En Realme han empezado el curso con ganas y su escaparate de la gama media aún está quedando más completo y variado estos días. Primero vinieron los nuevos Realme X7, X7 Pro y V3, pero lo que no esperábamos tanto es que llegasen ya las renovaciones de los Realme 6 y Realme 6 Pro: los nuevos Realme 7 Pro y Realme 7.\r\n\r\nLa jugada cambia ligeramente y esta vez es el más básico el que se lleva los 90 HZ en pantalla. La meta en sí es la misma: ganar en ajustar precio sin dejar de lado especificaciones interesantes y al día, así que veamos qué tal pintan.', '7000', '6500', '1649208579.jpg', '6', '23', 0, 1, 'a jugada cambia ligeramente y esta vez es el más básico el que se lleva los 90 HZ en pantalla', 'a jugada cambia ligeramente y esta vez es el más básico el que se lleva los 90 HZ en pantalla', 'a jugada cambia ligeramente y esta vez es el más básico el que se lleva los 90 HZ en pantalla', '2022-04-06 06:29:39', '2022-04-07 04:03:04'),
(2, 2, 'Balon de Futbol', 'balon', 'Balon de futbol profesioal', 'Balon de futbol profesioal  cocido a mano de cuero', '600', '400', '1649214511.jpg', '1', '7', 0, 1, 'Balon de futbol profesioal', 'Balon de futbol profesioal', 'Balon de futbol profesioal', '2022-04-06 08:08:31', '2022-04-08 04:13:40'),
(3, 2, 'Balon de Basquetbal', 'basquet', 'Balon de basquet profecional de cuero sintetico', 'Balon de basquet profecional de cuero sintetico', '300', '447', '1649217699.jpg', '3', '3', 0, 1, 'Balon de basquet profecional de cuero sintetico', 'Balon de basquet profecional de cuero sintetico', 'Balon de basquet profecional de cuero sintetico', '2022-04-06 09:01:39', '2022-04-07 04:03:04'),
(4, 3, 'Vans', 'vans', 'Tennis de la marca vans originales', 'Tennis de la marca vans originales', '900', '1100', '1649218725.jpg', '4', '7', 0, 1, 'Tennis de la marca vans originales', 'Tennis de la marca vans originales', 'Tennis de la marca vans originales', '2022-04-06 09:18:45', '2022-04-06 09:18:45');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ratings`
--

CREATE TABLE `ratings` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `stars_rated` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `reviews`
--

CREATE TABLE `reviews` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_review` mediumtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lname` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address1` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address2` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `pincode` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_as` tinyint(4) NOT NULL DEFAULT 0,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `lname`, `phone`, `address1`, `address2`, `city`, `state`, `country`, `pincode`, `email_verified_at`, `password`, `role_as`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Juan Manuel', 'al221811704@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$9hMgQt8l2jhYxJ/lBSuc8eoGGGZmId6tEOc7ju/UAyBl.cVlajLiy', 1, NULL, '2022-04-06 06:18:00', '2022-04-06 06:18:00'),
(2, 'Eduardo Vazquez', 'ol221811704@gmail.com', 'Vazquez Ponce', '7227988865', 'Miguel Hidalgo', 'Lopez Mateos', 'Toluca', 'Mexico', 'La capilla Huitzizilapan', '52050', NULL, '$2y$10$l2bj7TMPbRMb3//u/a/A/.e6vscJ8xUJSMBEByBIEFiuWy1bQdyEW', 0, NULL, '2022-04-06 06:31:04', '2022-04-06 06:49:09'),
(3, 'Bryan Jair', 'bryan@gmail.com', 'Lopez Martinez', '7272676722', 'Emiliano Zapata', 'Lopez Mateos', 'Touca', 'Mexico', 'Flor de Gallo Huitzizilapan', '52050', NULL, '$2y$10$L662azyO1f8ydLAFpacl6ObKiDuFurESgwywGdLEYghM/LU16r6OK', 0, NULL, '2022-04-06 09:10:18', '2022-04-06 09:14:51'),
(4, 'Juan Manuel', 'juan@gmail.com', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '$2y$10$lZSRI89mb/kzQlr1ngrQVOjqnYXdyL5sTp6Rg7x/JKy152yuKioMa', 0, NULL, '2022-04-07 01:37:29', '2022-04-07 01:37:29');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `wishlists`
--

CREATE TABLE `wishlists` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `prod_id` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indices de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `orders`
--
ALTER TABLE `orders`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `wishlists`
--
ALTER TABLE `wishlists`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
