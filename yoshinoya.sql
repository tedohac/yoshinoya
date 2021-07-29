-- phpMyAdmin SQL Dump
-- version 4.9.5deb2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 29, 2021 at 12:14 AM
-- Server version: 8.0.25-0ubuntu0.20.04.1
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `yoshinoya`
--

-- --------------------------------------------------------

--
-- Table structure for table `master_list_menus`
--

CREATE TABLE `master_list_menus` (
  `id_menu` bigint UNSIGNED NOT NULL,
  `menu_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url_link` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_list_menus`
--

INSERT INTO `master_list_menus` (`id_menu`, `menu_name`, `url_link`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'dashoard', 'dashboard', '2021-07-28 19:23:46', '2021-07-28 19:23:46', 'admin'),
(2, 'master', 'master', '2021-07-28 19:23:46', '2021-07-28 19:23:46', 'admin'),
(3, 'data karyawan', 'datakaryawan', '2021-07-28 19:24:51', '2021-07-28 19:24:51', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `master_roles`
--

CREATE TABLE `master_roles` (
  `role_id` bigint UNSIGNED NOT NULL,
  `role_name` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_roles`
--

INSERT INTO `master_roles` (`role_id`, `role_name`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'admin', '2021-07-28 19:19:04', '2021-07-28 19:19:04', 'admin'),
(2, 'user', '2021-07-28 19:19:04', '2021-07-28 19:19:04', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `master_role_menus`
--

CREATE TABLE `master_role_menus` (
  `id_role_menu` bigint UNSIGNED NOT NULL,
  `menu_id` bigint UNSIGNED NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_role_menus`
--

INSERT INTO `master_role_menus` (`id_role_menu`, `menu_id`, `role_id`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 1, 1, '2021-07-28 19:25:18', '2021-07-28 19:25:18', 'admin'),
(2, 2, 1, '2021-07-28 19:25:18', '2021-07-28 19:25:18', 'admin'),
(3, 3, 1, '2021-07-28 19:26:29', '2021-07-28 19:26:29', 'admin'),
(4, 1, 2, '2021-07-28 19:26:29', '2021-07-28 19:26:29', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `master_users`
--

CREATE TABLE `master_users` (
  `id_user` bigint UNSIGNED NOT NULL,
  `username_email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `role_id` bigint UNSIGNED NOT NULL,
  `user_password` varchar(200) COLLATE utf8mb4_unicode_ci NOT NULL,
  `active` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `block` varchar(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `created_by` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `master_users`
--

INSERT INTO `master_users` (`id_user`, `username_email`, `role_id`, `user_password`, `active`, `block`, `created_at`, `updated_at`, `created_by`) VALUES
(1, 'admin@admin.co.id', 1, '$2y$10$axvpVArrGdT3wQ5lXRdBoubzlBeYpHFQF4CyYcVd6K1NlrFzfX2z2', 'Y', '0', '2021-07-28 19:20:14', '2021-07-28 19:20:14', 'admin'),
(2, 'karyawan@karyawan.co.id', 2, '$2y$10$wNWyGX4BCvgzXEpz/B4S1eG97TFCN7d2VEvvP6xATeU3Z9Sh2MV56', 'Y', '0', '2021-07-28 19:20:15', '2021-07-28 19:20:15', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2021_07_28_120154_create_master_roles_table', 1),
(4, '2021_07_28_120203_create_master_users_table', 1),
(5, '2021_07_28_121019_create_master_list_menus_table', 1),
(6, '2021_07_28_121201_create_master_role_menus_table', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `master_list_menus`
--
ALTER TABLE `master_list_menus`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `master_roles`
--
ALTER TABLE `master_roles`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `master_role_menus`
--
ALTER TABLE `master_role_menus`
  ADD PRIMARY KEY (`id_role_menu`),
  ADD KEY `master_role_menus_menu_id_index` (`menu_id`),
  ADD KEY `master_role_menus_role_id_index` (`role_id`);

--
-- Indexes for table `master_users`
--
ALTER TABLE `master_users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `master_users_role_id_index` (`role_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `master_list_menus`
--
ALTER TABLE `master_list_menus`
  MODIFY `id_menu` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `master_roles`
--
ALTER TABLE `master_roles`
  MODIFY `role_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `master_role_menus`
--
ALTER TABLE `master_role_menus`
  MODIFY `id_role_menu` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `master_users`
--
ALTER TABLE `master_users`
  MODIFY `id_user` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `master_role_menus`
--
ALTER TABLE `master_role_menus`
  ADD CONSTRAINT `master_role_menus_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `master_list_menus` (`id_menu`),
  ADD CONSTRAINT `master_role_menus_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `master_roles` (`role_id`);

--
-- Constraints for table `master_users`
--
ALTER TABLE `master_users`
  ADD CONSTRAINT `master_users_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `master_roles` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
