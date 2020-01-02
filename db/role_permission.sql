-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 31, 2019 at 07:34 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `role_permission`
--

-- --------------------------------------------------------

--
-- Table structure for table `members`
--

CREATE TABLE `members` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` text COLLATE utf8mb4_unicode_ci,
  `connected_date` date DEFAULT NULL,
  `disconnected_date` date DEFAULT NULL,
  `administration` text COLLATE utf8mb4_unicode_ci,
  `tect_concern_name` text COLLATE utf8mb4_unicode_ci,
  `contact_no` text COLLATE utf8mb4_unicode_ci,
  `email` text COLLATE utf8mb4_unicode_ci,
  `capacity` text COLLATE utf8mb4_unicode_ci,
  `ip_info` text COLLATE utf8mb4_unicode_ci,
  `ip_bdix` text COLLATE utf8mb4_unicode_ci,
  `switch_port` text COLLATE utf8mb4_unicode_ci,
  `remarks` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `members`
--

INSERT INTO `members` (`id`, `name`, `address`, `status`, `connected_date`, `disconnected_date`, `administration`, `tect_concern_name`, `contact_no`, `email`, `capacity`, `ip_info`, `ip_bdix`, `switch_port`, `remarks`, `created_at`, `updated_at`) VALUES
(1, 'Access Telecom (BD) Ltd.', 'Access Telecom (BD) Ltd\r\nSuite # 802, Concord Tower\r\n113 Kazi Nazrul Islam Avenue\r\nDhaka-1000', 'running', '2004-04-24', NULL, 'Zain Omar (CEO) 9335607-10 / 01911-343683 (HO)', 'Not Found', 'Tel: 01799985320, 01799985321, 01799985322 +880 933 5607-10', 'callcenter@accesstel.net', '1 GB', NULL, NULL, NULL, NULL, '2019-12-26 13:45:10', '2019-12-31 05:53:06'),
(4, 'Aftab IT Ltd.', '\"Aftab IT Limited\r\nEastern Trade Center (14th Floor)\r\n56 Inner Circulr Road\r\nDhaka-1000\"', 'running', '2009-06-24', NULL, '\"Md. Shaqul hasan hasan@aitlbd.com 9331278 / 01678002402\"', 'Not Found', '\"Mobile : +880-1713659900  IP : 09602222205  Tel : 9335325, 9331278\"', 'info@aitlbd.com', '100 MB', NULL, NULL, NULL, NULL, '2019-12-31 05:57:10', '2019-12-31 05:57:10'),
(5, '\"AlwaysOn Network\"', '\"Always On Network Bangladesh Ltd\r\nHouse No -12,Road No-12\r\nGulshan -1.\"', 'running', '2009-09-27', NULL, '\"Syed Zaidul islam Asif	 asif@aonbd.net	 01611410410\"', '\"Ameer Ali (Administrative Purpose)	 ameer.ali@aonbd.net	 01611410323, 01720535758\"', '016133 11377', 'info@alwayson.com.bd', '100 MB', NULL, NULL, NULL, NULL, '2019-12-31 05:59:06', '2019-12-31 05:59:06'),
(6, 'Aamra Network', '\"Aamra Networks\r\nFR Tower (20th Floor)\r\n32 Kemal Ataturk Avenue Banani C/A\r\nDhaka-1213, Bangladesh\"', 'running', '2013-02-01', NULL, '\"Sharful Alam  P: 01713000258 E: sharful.alam@aamra.com.bd\"', '\"\"\"Abdullah Al Hossain(Robin)-AGM P: 01711812068 E: abdullah.hossain@aamra.com.bd\"\"\"', '09666 715715', 'dhakasupport.networks@aamra.com.bd', '1 GB', NULL, NULL, NULL, NULL, '2019-12-31 06:01:11', '2019-12-31 06:01:11'),
(7, 'Advance Technology / ADN', '\"ADN Telecom Ltd\r\n17, Mahakhali,17 RCC Tower\r\nDhaka -1212,\r\nBangladesh\"', 'running', '2008-03-12', NULL, '\"Pradip Dey	 pradipdey@adntel.com.bd	 01817041833\"', 'Not Found', '\"Phone: +880 2 984 1234  IP Phone: +880961 000 8888\"', 'info@adntel.com.bd', '1 GB', NULL, NULL, NULL, NULL, '2019-12-31 06:02:50', '2019-12-31 06:02:50'),
(8, 'Race Online Limited-1', '\"Asiatel Network\r\n(Earth Telecommunication Ltd)\r\nKhaja Tower\r\n95, Mohakhali\r\nDhaka.\"', 'running', '2013-06-06', NULL, '\"Md. Mizanul Rahman (Administrative)         info@asiatelnet.com         01917285857\"', '\"Syed Samsul Islam (Jony)         jony@asiantelnet.com         01920081622\"', '\"011-97146145, 011-96262109, 011-96262112, Telephone :+88-02-7171321, 7160601 ext-102\"', 'info@asiatelnet.com', '10 GB', NULL, '198.32.167.38', '244*1/9', NULL, '2019-12-31 06:05:35', '2019-12-31 06:05:35'),
(9, 'Airtel/Robi', 'TM International Bangladesh, Brac Center (9th Floor), 75 Mohakhali C/A Dhaka- 1212.', 'running', '2006-07-06', NULL, '\"Mazli Hashim 01819 210043 info@robi.com.bd\"', '\"\"\"Sufi Faruq Ibne Abubakar P: 0189210272 E: sufi.faruk@robi.com.bd\"\"          \"\"Tasleen Bashar P: 0189210043 E: tasleem@robi.com.bd\"\"\"', 'Not Found', 'info@robi.com.bd', '1 GB', NULL, NULL, NULL, NULL, '2019-12-31 06:09:00', '2019-12-31 06:09:00');

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
(3, '2019_11_14_103604_create_permission_tables', 2),
(4, '2019_11_14_103621_create_products_table', 2),
(5, '2019_12_26_190046_create_members_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(1, 'App\\User', 1),
(2, 'App\\User', 2);

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
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'role-list', 'web', '2019-11-14 05:05:08', '2019-11-14 05:05:08'),
(2, 'role-create', 'web', '2019-11-14 05:05:08', '2019-11-14 05:05:08'),
(3, 'role-edit', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(4, 'role-delete', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(5, 'product-list', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(6, 'product-create', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(7, 'product-edit', 'web', '2019-11-14 05:05:11', '2019-11-14 05:05:11'),
(8, 'product-delete', 'web', '2019-11-14 05:05:11', '2019-11-14 05:05:11'),
(9, 'member-list', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(10, 'member-create', 'web', '2019-11-14 05:05:09', '2019-11-14 05:05:09'),
(11, 'member-edit', 'web', '2019-11-14 05:05:11', '2019-11-14 05:05:11'),
(12, 'member-delete', 'web', '2019-11-14 05:05:11', '2019-11-14 05:05:11');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `detail` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `detail`, `created_at`, `updated_at`) VALUES
(5, 'Music Instrument', 'Keyboards, the electronic piano, are extremely versatile and very low maintenance. Electronic keyboards are capable of recreating a wide range of instrument sounds and synthesizer tones with less complex sound synthesis.', '2019-11-15 14:14:29', '2019-11-15 14:15:15'),
(6, 'Electronics', 'Laptop, Monitor, Keyboard, Mouse', '2019-11-15 14:16:02', '2019-11-15 14:16:02');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `guard_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'Admin', 'web', '2019-11-14 05:06:43', '2019-11-14 05:06:43'),
(2, 'User', 'web', '2019-11-14 13:37:25', '2019-11-14 13:37:25');

-- --------------------------------------------------------

--
-- Table structure for table `role_has_permissions`
--

CREATE TABLE `role_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `role_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_has_permissions`
--

INSERT INTO `role_has_permissions` (`permission_id`, `role_id`) VALUES
(1, 1),
(2, 1),
(3, 1),
(4, 1),
(5, 1),
(5, 2),
(6, 1),
(6, 2),
(7, 1),
(7, 2),
(8, 1),
(8, 2),
(9, 1),
(9, 2),
(10, 1),
(11, 1),
(12, 1);

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
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Uzzal Das', 'admin@gmail.com', NULL, '$2y$10$I4l1aUcnjpX8KG96hggpbeKkVFpWQw/QQTB7ofZp.3iR7UcJiHozu', NULL, '2019-11-14 05:06:43', '2019-11-14 13:36:09'),
(2, 'Debabrata', 'debu@gmail.com', NULL, '$2y$10$LAWDMiwEyGObICy0E7T6xevDwgk0/txML8tnwG0d9rryknzlcMWxG', NULL, '2019-11-14 13:40:09', '2019-11-14 13:40:09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`model_id`,`model_type`),
  ADD KEY `model_has_permissions_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD PRIMARY KEY (`role_id`,`model_id`,`model_type`),
  ADD KEY `model_has_roles_model_id_model_type_index` (`model_id`,`model_type`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `members`
--
ALTER TABLE `members`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `model_has_permissions`
--
ALTER TABLE `model_has_permissions`
  ADD CONSTRAINT `model_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_roles`
--
ALTER TABLE `model_has_roles`
  ADD CONSTRAINT `model_has_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD CONSTRAINT `role_has_permissions_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `role_has_permissions_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
