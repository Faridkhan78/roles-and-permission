-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 29, 2024 at 08:05 AM
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
-- Database: `rols_permissions`
--

-- --------------------------------------------------------

--
-- Table structure for table `articles`
--

CREATE TABLE `articles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `text` text DEFAULT NULL,
  `author` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `articles`
--

INSERT INTO `articles` (`id`, `title`, `text`, `author`, `created_at`, `updated_at`) VALUES
(1, 'sdfsd', 'wrw', 'werwwew', '2024-11-27 06:27:17', '2024-11-27 07:39:22'),
(3, 'swf(testing)', 'we testing', 'wrew  testing', '2024-11-27 06:41:04', '2024-11-27 07:11:57'),
(4, 'fuguyg', 'gf', 'fffftgg', '2024-11-28 11:32:57', '2024-11-28 11:32:57');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cache`
--

INSERT INTO `cache` (`key`, `value`, `expiration`) VALUES
('spatie.permission.cache', 'a:3:{s:5:\"alias\";a:4:{s:1:\"a\";s:2:\"id\";s:1:\"b\";s:4:\"name\";s:1:\"c\";s:10:\"guard_name\";s:1:\"r\";s:5:\"roles\";}s:11:\"permissions\";a:19:{i:0;a:4:{s:1:\"a\";i:7;s:1:\"b\";s:15:\"create articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:6:{i:0;i:2;i:1;i:3;i:2;i:5;i:3;i:7;i:4;i:9;i:5;i:10;}}i:1;a:4:{s:1:\"a\";i:8;s:1:\"b\";s:12:\"create roles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:5;}}i:2;a:4:{s:1:\"a\";i:10;s:1:\"b\";s:9:\"edit rols\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:2;i:1;i:5;}}i:3;a:4:{s:1:\"a\";i:11;s:1:\"b\";s:9:\"view rols\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:4;a:4:{s:1:\"a\";i:12;s:1:\"b\";s:15:\"view permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:5;a:4:{s:1:\"a\";i:13;s:1:\"b\";s:17:\"create permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:6;a:4:{s:1:\"a\";i:14;s:1:\"b\";s:15:\"edit permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:7;a:4:{s:1:\"a\";i:15;s:1:\"b\";s:17:\"delete permission\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:5;}}i:8;a:4:{s:1:\"a\";i:16;s:1:\"b\";s:13:\"view articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:5:{i:0;i:5;i:1;i:9;i:2;i:10;i:3;i:11;i:4;i:12;}}i:9;a:4:{s:1:\"a\";i:17;s:1:\"b\";s:13:\"edit articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:6:{i:0;i:5;i:1;i:9;i:2;i:10;i:3;i:11;i:4;i:12;i:5;i:13;}}i:10;a:4:{s:1:\"a\";i:18;s:1:\"b\";s:15:\"delete articles\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:6:{i:0;i:5;i:1;i:9;i:2;i:10;i:3;i:11;i:4;i:12;i:5;i:13;}}i:11;a:4:{s:1:\"a\";i:19;s:1:\"b\";s:10:\"view users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:2:{i:0;i:11;i:1;i:12;}}i:12;a:4:{s:1:\"a\";i:20;s:1:\"b\";s:10:\"edit users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:3:{i:0;i:7;i:1;i:11;i:2;i:12;}}i:13;a:3:{s:1:\"a\";i:21;s:1:\"b\";s:12:\"create users\";s:1:\"c\";s:3:\"web\";}i:14;a:4:{s:1:\"a\";i:22;s:1:\"b\";s:12:\"delete users\";s:1:\"c\";s:3:\"web\";s:1:\"r\";a:1:{i:0;i:11;}}i:15;a:3:{s:1:\"a\";i:23;s:1:\"b\";s:11:\"delete role\";s:1:\"c\";s:3:\"web\";}i:16;a:3:{s:1:\"a\";i:25;s:1:\"b\";s:4:\"User\";s:1:\"c\";s:3:\"web\";}i:17;a:3:{s:1:\"a\";i:26;s:1:\"b\";s:10:\"staff test\";s:1:\"c\";s:3:\"web\";}i:18;a:3:{s:1:\"a\";i:27;s:1:\"b\";s:11:\"Team Leader\";s:1:\"c\";s:3:\"web\";}}s:5:\"roles\";a:9:{i:0;a:3:{s:1:\"a\";i:2;s:1:\"b\";s:6:\"writer\";s:1:\"c\";s:3:\"web\";}i:1;a:3:{s:1:\"a\";i:3;s:1:\"b\";s:11:\"create rols\";s:1:\"c\";s:3:\"web\";}i:2;a:3:{s:1:\"a\";i:5;s:1:\"b\";s:5:\"admin\";s:1:\"c\";s:3:\"web\";}i:3;a:3:{s:1:\"a\";i:7;s:1:\"b\";s:5:\"staff\";s:1:\"c\";s:3:\"web\";}i:4;a:3:{s:1:\"a\";i:9;s:1:\"b\";s:9:\"Akbarbhai\";s:1:\"c\";s:3:\"web\";}i:5;a:3:{s:1:\"a\";i:10;s:1:\"b\";s:7:\"readers\";s:1:\"c\";s:3:\"web\";}i:6;a:3:{s:1:\"a\";i:11;s:1:\"b\";s:10:\"staff test\";s:1:\"c\";s:3:\"web\";}i:7;a:3:{s:1:\"a\";i:12;s:1:\"b\";s:8:\"Employee\";s:1:\"c\";s:3:\"web\";}i:8;a:3:{s:1:\"a\";i:13;s:1:\"b\";s:11:\"Team Leader\";s:1:\"c\";s:3:\"web\";}}}', 1732949617);

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
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
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_11_26_064034_create_permission_tables', 2),
(5, '2024_11_27_103120_create_articles_table', 3);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_permissions`
--

CREATE TABLE `model_has_permissions` (
  `permission_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `model_has_roles`
--

CREATE TABLE `model_has_roles` (
  `role_id` bigint(20) UNSIGNED NOT NULL,
  `model_type` varchar(255) NOT NULL,
  `model_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `model_has_roles`
--

INSERT INTO `model_has_roles` (`role_id`, `model_type`, `model_id`) VALUES
(5, 'App\\Models\\User', 1),
(5, 'App\\Models\\User', 4),
(8, 'App\\Models\\User', 3),
(10, 'App\\Models\\User', 2),
(11, 'App\\Models\\User', 9),
(12, 'App\\Models\\User', 12),
(12, 'App\\Models\\User', 13),
(13, 'App\\Models\\User', 12);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(7, 'create articles', 'web', '2024-11-27 00:48:23', '2024-11-27 00:48:23'),
(8, 'create roles', 'web', '2024-11-27 02:46:06', '2024-11-27 02:46:06'),
(10, 'edit rols', 'web', '2024-11-27 02:51:28', '2024-11-27 02:51:28'),
(11, 'view rols', 'web', '2024-11-27 02:52:09', '2024-11-27 02:52:09'),
(12, 'view permission', 'web', '2024-11-28 01:33:28', '2024-11-28 01:33:28'),
(13, 'create permission', 'web', '2024-11-28 01:33:40', '2024-11-28 01:33:40'),
(14, 'edit permission', 'web', '2024-11-28 01:33:50', '2024-11-28 01:33:50'),
(15, 'delete permission', 'web', '2024-11-28 01:34:07', '2024-11-28 01:34:07'),
(16, 'view articles', 'web', '2024-11-28 02:02:14', '2024-11-28 02:02:14'),
(17, 'edit articles', 'web', '2024-11-28 02:02:44', '2024-11-28 02:02:44'),
(18, 'delete articles', 'web', '2024-11-28 02:03:08', '2024-11-28 02:03:08'),
(19, 'view users', 'web', '2024-11-28 04:41:55', '2024-11-28 04:41:55'),
(20, 'edit users', 'web', '2024-11-28 04:42:20', '2024-11-28 04:42:20'),
(21, 'create users', 'web', '2024-11-28 04:42:47', '2024-11-28 04:42:47'),
(22, 'delete users', 'web', '2024-11-28 04:43:11', '2024-11-28 04:43:11'),
(23, 'delete role', 'web', '2024-11-28 05:41:59', '2024-11-28 05:41:59'),
(25, 'User', 'web', '2024-11-28 23:57:06', '2024-11-28 23:57:06'),
(26, 'staff test', 'web', '2024-11-29 00:17:47', '2024-11-29 00:17:47'),
(27, 'Team Leader', 'web', '2024-11-29 01:09:39', '2024-11-29 01:09:39');

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `guard_name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `guard_name`, `created_at`, `updated_at`) VALUES
(1, 'writers', 'web', '2024-11-27 01:05:43', '2024-11-27 01:05:43'),
(2, 'writer', 'web', '2024-11-27 01:27:22', '2024-11-27 04:39:05'),
(3, 'create rols', 'web', '2024-11-27 02:49:39', '2024-11-27 02:49:39'),
(4, 'delete roles', 'web', '2024-11-27 02:50:11', '2024-11-27 02:50:11'),
(5, 'admin', 'web', '2024-11-27 02:53:25', '2024-11-27 02:53:25'),
(6, 'fdede', 'web', '2024-11-27 03:59:11', '2024-11-27 03:59:11'),
(7, 'staff', 'web', '2024-11-28 00:25:01', '2024-11-28 00:25:01'),
(8, 'superadmin', 'web', '2024-11-28 03:17:00', '2024-11-28 03:17:00'),
(9, 'Akbarbhai', 'web', '2024-11-28 05:38:52', '2024-11-28 05:38:52'),
(10, 'readers', 'web', '2024-11-28 07:48:48', '2024-11-28 07:48:48'),
(11, 'staff test', 'web', '2024-11-29 00:26:41', '2024-11-29 00:26:41'),
(12, 'Employee', 'web', '2024-11-29 01:14:13', '2024-11-29 01:14:13'),
(13, 'Team Leader', 'web', '2024-11-29 01:23:37', '2024-11-29 01:23:37');

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
(7, 2),
(7, 3),
(7, 5),
(7, 7),
(7, 9),
(7, 10),
(8, 2),
(8, 5),
(10, 2),
(10, 5),
(11, 5),
(12, 5),
(13, 5),
(14, 5),
(15, 5),
(16, 5),
(16, 9),
(16, 10),
(16, 11),
(16, 12),
(17, 5),
(17, 9),
(17, 10),
(17, 11),
(17, 12),
(17, 13),
(18, 5),
(18, 9),
(18, 10),
(18, 11),
(18, 12),
(18, 13),
(19, 11),
(19, 12),
(20, 7),
(20, 11),
(20, 12),
(22, 11);

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('GsCnpCMqiC3pY00ShQPkC22Mr5GymkjPDNpU11cA', 3, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoiU0d4d04yV1ZvU3Z3NkJmODlFcFVJQTFxaFEwREY5TFNhaHAwUHdvSyI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MzM6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC9wZXJtaXNzaW9ucyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjM7fQ==', 1732863861),
('QEyH6PzrNfMxMowT5VrG6JbE5y2VMpsr4ujBaycw', 13, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/131.0.0.0 Safari/537.36', 'YTo0OntzOjY6Il90b2tlbiI7czo0MDoidElIQktqUW8zeUt3ZENCZ2pkck95TFVOb3ptOXQ4SGdZSFB3MlFRWiI7czo2OiJfZmxhc2giO2E6Mjp7czozOiJvbGQiO2E6MDp7fXM6MzoibmV3IjthOjA6e319czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6Mjc6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMC91c2VycyI7fXM6NTA6ImxvZ2luX3dlYl81OWJhMzZhZGRjMmIyZjk0MDE1ODBmMDE0YzdmNThlYTRlMzA5ODlkIjtpOjEzO30=', 1732863766);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Mohit Singh', 'admin@example.com', NULL, '$2y$12$PbeMbuYBfn3kFp3f5J/4yuj6f2ruoylwNAZaTN0Oet6Qa07Q2AKYK', NULL, '2024-11-26 01:03:26', '2024-11-26 01:03:26'),
(2, 'mahir', 'mahir@gmail.com', NULL, '$2y$12$Sn0o.L7GpASPDfoaMiO/GeHpJhp/GtmNsNkrXSQVW5Xzc3tPYer1y', NULL, '2024-11-26 23:50:56', '2024-11-26 23:50:56'),
(3, 'Superadmin', 'superadmin@example.com', NULL, '$2y$12$HNEJ60igc0hMDYLYomYRxuRVWhboYioanMMn2pSrft1/Lv.vQ4EIC', NULL, '2024-11-28 03:23:41', '2024-11-28 03:23:41'),
(4, 'Farid', 'fluhar76@gmail.com', NULL, '$2y$12$FRc5.Z2Ju8o3mnIpiEgc5.at1EtyWjohy7tzrKOcupqOJsiuzT4cK', NULL, '2024-11-28 11:24:30', '2024-11-28 11:24:30'),
(5, 'shafin', '12345678', NULL, '$2y$12$78EUMmWrAKzkFB.M9pzTUOsVpqF91tUCScsJ2VqX11QD5lU7G7WOS', NULL, '2024-11-28 11:46:45', '2024-11-28 11:46:45'),
(9, 'ahmedbhai', 'ahmed@gmail.com', NULL, '$2y$12$s5ZEi3BdX2h23HiLEOkI8Ou5waW2qXiTx689bKPzRI6Ln.fQbt.62', NULL, '2024-11-28 23:46:36', '2024-11-28 23:46:36'),
(12, 'mohmad', 'mohmad@gmail.com', NULL, '$2y$12$MPfgmrPO7U7sKRCTIeUO/.1VTcDJcE4/vWgvKF/fYfZRUCDgejHH2', NULL, '2024-11-29 00:05:21', '2024-11-29 01:15:01'),
(13, 'abid', 'abid@gmail.com', NULL, '$2y$12$2z/pFZ7UkgDxO8SZDmczOeLATc8t.ByUA32Rv2wDRNfYV6k.w6MOW', NULL, '2024-11-29 01:28:03', '2024-11-29 01:29:01');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `articles`
--
ALTER TABLE `articles`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
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
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_guard_name_unique` (`name`,`guard_name`);

--
-- Indexes for table `role_has_permissions`
--
ALTER TABLE `role_has_permissions`
  ADD PRIMARY KEY (`permission_id`,`role_id`),
  ADD KEY `role_has_permissions_role_id_foreign` (`role_id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

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
-- AUTO_INCREMENT for table `articles`
--
ALTER TABLE `articles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

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
