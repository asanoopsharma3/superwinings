-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 16, 2024 at 02:56 PM
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
-- Database: `vue_admin`
--

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `category_type_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `slug` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_types`
--

CREATE TABLE `category_types` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `machine_name` varchar(64) NOT NULL,
  `is_flat` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `category_types`
--

INSERT INTO `category_types` (`id`, `name`, `description`, `machine_name`, `is_flat`, `created_at`, `updated_at`) VALUES
(1, 'Category', 'Main Category', 'category', 0, '2024-10-24 00:59:18', '2024-10-24 00:59:18'),
(2, 'Tag', 'Site Tags', 'tag', 1, '2024-10-24 00:59:18', '2024-10-24 00:59:18');

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
-- Table structure for table `media`
--

CREATE TABLE `media` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `disk` varchar(32) NOT NULL,
  `directory` varchar(255) NOT NULL,
  `filename` varchar(255) NOT NULL,
  `extension` varchar(32) NOT NULL,
  `mime_type` varchar(128) NOT NULL,
  `aggregate_type` varchar(32) NOT NULL,
  `size` int(10) UNSIGNED NOT NULL,
  `variant_name` varchar(255) DEFAULT NULL,
  `original_media_id` bigint(20) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `alt` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `mediables`
--

CREATE TABLE `mediables` (
  `media_id` bigint(20) UNSIGNED NOT NULL,
  `mediable_type` varchar(255) NOT NULL,
  `mediable_id` bigint(20) UNSIGNED NOT NULL,
  `tag` varchar(255) NOT NULL,
  `order` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `machine_name` varchar(64) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `menu_items`
--

CREATE TABLE `menu_items` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `menu_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `uri` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL,
  `parent_id` bigint(20) UNSIGNED DEFAULT NULL,
  `weight` int(11) NOT NULL DEFAULT 0,
  `enabled` tinyint(1) NOT NULL DEFAULT 1,
  `icon` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
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
(4, '2016_06_27_000000_create_mediable_tables', 1),
(5, '2020_10_12_000000_add_variants_to_media', 1),
(6, '2024_03_19_114651_create_permission_tables', 1),
(7, '2024_03_30_000000_add_alt_to_media', 1),
(8, '2024_10_23_175854_create_category_tables', 1),
(12, '2024_10_23_175854_create_menu_tables', 2),
(13, '2024_11_08_062413_add_mobile_no_in_users_table', 2),
(14, '2024_11_08_063947_create_user_otps_table', 2),
(15, '2024_11_09_101428_create_questions_table', 3),
(16, '2024_11_09_101651_create_options_table', 4),
(17, '2024_11_10_034433_add_user_answers_table', 4),
(18, '2024_11_10_171630_create_plans_table', 5);

-- --------------------------------------------------------

--
-- Table structure for table `model_has_categories`
--

CREATE TABLE `model_has_categories` (
  `category_id` bigint(20) UNSIGNED NOT NULL,
  `category_item_type` varchar(255) DEFAULT NULL,
  `category_item_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
(1, 'App\\Models\\User', 3),
(2, 'App\\Models\\User', 2),
(3, 'App\\Models\\User', 1);

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_text` varchar(255) NOT NULL,
  `is_correct` tinyint(1) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`id`, `question_id`, `option_text`, `is_correct`, `created_at`, `updated_at`) VALUES
(1, 1, 'Swazi Lilangeni', 1, '2024-11-09 10:24:12', '2024-11-09 10:24:12'),
(2, 1, 'Dollor', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(3, 1, 'Baht', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(4, 1, 'ZAR', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(5, 2, '4', 1, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(6, 2, '5', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(7, 2, '6', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(8, 2, '2', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(9, 3, 'Swazi Lilangeni', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(10, 3, 'Dollor', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(11, 3, 'Baht', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(12, 3, 'ZAR', 1, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(13, 4, 'Lion', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(14, 4, 'Deer', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(15, 4, 'Zebra', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(16, 4, 'Thomson\'s Gazelle', 1, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(17, 5, 'The SpringBok', 1, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(18, 5, 'Lion', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(19, 5, 'Bear', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53'),
(20, 5, 'Thomson\'s Gazelle', 0, '2024-11-09 10:28:53', '2024-11-09 10:28:53');

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
(1, 'admin user', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(2, 'permission list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(3, 'permission create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(4, 'permission edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(5, 'permission delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(6, 'role list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(7, 'role create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(8, 'role edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(9, 'role delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(10, 'user list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(11, 'user create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(12, 'user edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(13, 'user delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(14, 'menu list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(15, 'menu create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(16, 'menu edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(17, 'menu delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(18, 'menu.item list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(19, 'menu.item create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(20, 'menu.item edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(21, 'menu.item delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(22, 'category list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(23, 'category create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(24, 'category edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(25, 'category delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(26, 'category.type list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(27, 'category.type create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(28, 'category.type edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(29, 'category.type delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(30, 'media list', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(31, 'media create', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(32, 'media edit', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(33, 'media delete', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17');

-- --------------------------------------------------------

--
-- Table structure for table `plans`
--

CREATE TABLE `plans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` decimal(8,2) NOT NULL,
  `duration` enum('daily','weekly','monthly') NOT NULL,
  `question_limit` int(11) NOT NULL DEFAULT 5,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `plans`
--

INSERT INTO `plans` (`id`, `name`, `price`, `duration`, `question_limit`, `created_at`, `updated_at`) VALUES
(1, 'Daily @ 1 SZL', 1.00, 'daily', 5, '2024-11-11 01:47:06', '2024-11-11 01:47:06'),
(2, 'Weekly @ 3 SZL', 3.00, 'weekly', 5, '2024-11-11 01:55:30', NULL),
(3, 'Monthly @ 15 SZL', 15.00, 'monthly', 5, '2024-11-11 01:55:53', '2024-11-11 01:55:53');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `question_text` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`id`, `question_text`, `created_at`, `updated_at`) VALUES
(1, 'Select the official currency of Eswatini', '2024-11-09 10:22:41', '2024-11-09 10:22:53'),
(2, 'How many districts in Eswatini', '2024-11-09 10:23:42', '2024-11-09 10:23:46'),
(3, 'Select the official currency of  South Africa', '2024-11-09 10:24:12', '2024-11-09 10:24:12'),
(4, 'Select the National animal for Eswatini', '2024-11-09 10:26:23', '2024-11-09 10:26:27'),
(5, ' Select the National animal for South Africa', '2024-11-09 10:26:43', '2024-11-09 10:26:43');

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
(1, 'writer', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(2, 'admin', 'web', '2024-10-24 00:59:17', '2024-10-24 00:59:17'),
(3, 'super-admin', 'web', '2024-10-24 00:59:18', '2024-10-24 00:59:18');

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
(1, 2),
(2, 1),
(2, 2),
(3, 2),
(4, 2),
(5, 2),
(6, 1),
(6, 2),
(7, 2),
(8, 2),
(9, 2),
(10, 1),
(10, 2),
(11, 2),
(12, 2),
(13, 2),
(14, 1),
(14, 2),
(15, 2),
(16, 2),
(17, 2),
(18, 1),
(18, 2),
(19, 2),
(20, 2),
(21, 2),
(22, 1),
(22, 2),
(23, 2),
(24, 2),
(25, 2),
(26, 1),
(26, 2),
(27, 2),
(28, 2),
(29, 2),
(30, 1),
(30, 2),
(31, 2),
(32, 2),
(33, 2);

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

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `mobile_no` varchar(255) DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `plan_id` bigint(20) UNSIGNED DEFAULT NULL,
  `plan_expiration` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `mobile_no`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `plan_id`, `plan_expiration`) VALUES
(1, 'Super Admin', 'superadmin@example.com', NULL, '2024-10-24 00:59:18', '$2y$12$2./g0n0qXZSnxJKMDTh0rewV61k3YdvKOjH5LRL5gUxnnF9YHNMC2', 'sT1Yag2LEpISXJiNe6mGplZQGK0U1lgLy78UyUiBb0U6cLO60u4MrUvrQRmw', '2024-10-24 00:59:18', '2024-10-24 01:01:30', NULL, NULL),
(2, 'Admin User', 'admin@example.com', NULL, '2024-10-24 00:59:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'DSKDbNULDM', '2024-10-24 00:59:18', '2024-10-24 00:59:18', NULL, NULL),
(3, 'Example User', 'test@example.com', NULL, '2024-10-24 00:59:18', '$2y$10$92IXUNpkjO0rOQ5byMi.Ye4oKoEa3Ro9llC/.og/at2.uheWG/igi', 'gQFDhikZYw', '2024-10-24 00:59:18', '2024-10-24 00:59:18', NULL, NULL),
(4, '6545678909', '', NULL, NULL, '', NULL, '2024-11-08 16:39:15', '2024-11-08 16:39:15', NULL, NULL),
(6, '7687654345', NULL, NULL, NULL, '', NULL, '2024-11-08 17:54:19', '2024-11-08 17:54:19', NULL, NULL),
(7, '6765435678', NULL, NULL, NULL, '', NULL, '2024-11-08 18:00:50', '2024-11-08 18:00:50', NULL, NULL),
(8, '7876543456', NULL, NULL, NULL, '', NULL, '2024-11-08 18:30:05', '2024-11-08 18:30:05', NULL, NULL),
(9, '9458407307', NULL, NULL, NULL, '', NULL, '2024-11-08 19:17:45', '2024-11-08 19:17:45', NULL, NULL),
(10, '6545678907', NULL, NULL, NULL, '', NULL, '2024-11-09 15:50:37', '2024-11-09 15:50:37', NULL, NULL),
(11, '8373377373', NULL, NULL, NULL, '', NULL, '2024-11-09 16:19:03', '2024-11-09 16:19:03', NULL, NULL),
(12, '9873074419', NULL, NULL, NULL, '', NULL, '2024-11-09 16:19:21', '2024-11-09 16:19:21', NULL, NULL),
(13, '5455544444', NULL, NULL, NULL, '', NULL, '2024-11-09 16:22:49', '2024-11-09 16:22:49', NULL, NULL),
(14, '7676766756', NULL, NULL, NULL, '', NULL, '2024-11-09 17:16:40', '2024-11-09 17:16:40', NULL, NULL),
(15, '6363633333', NULL, NULL, NULL, '', NULL, '2024-11-09 17:27:15', '2024-11-09 17:27:15', NULL, NULL),
(16, '9873062662', NULL, NULL, NULL, '', NULL, '2024-11-09 17:28:15', '2024-11-09 17:28:15', NULL, NULL),
(17, '9873074419', NULL, '9873074419', NULL, '', NULL, '2024-11-10 11:56:45', '2024-11-10 11:56:45', 1, '0000-00-00'),
(18, '9458407307', NULL, '9458407307', NULL, '', NULL, '2024-11-10 11:58:17', '2024-11-10 11:58:17', NULL, NULL),
(19, '9387373737', NULL, '9387373737', NULL, '', NULL, '2024-11-10 15:52:33', '2024-11-10 15:52:33', NULL, NULL),
(20, '9013773765', NULL, '9013773765', NULL, '', NULL, '2024-11-11 21:09:19', '2024-11-11 21:09:19', NULL, NULL),
(21, '6474647363', NULL, '6474647363', NULL, '', NULL, '2024-11-11 21:14:00', '2024-11-11 21:14:00', NULL, NULL),
(22, '9484847447', NULL, '9484847447', NULL, '', NULL, '2024-11-13 19:09:23', '2024-11-13 19:09:23', NULL, NULL),
(23, '9484847474', NULL, '9484847474', NULL, '', NULL, '2024-11-13 19:13:26', '2024-11-13 19:13:26', NULL, NULL),
(24, '9876567888', NULL, '9876567888', NULL, '', NULL, '2024-11-13 19:15:11', '2024-11-13 19:15:11', NULL, NULL),
(25, '8678656777', NULL, '8678656777', NULL, '', NULL, '2024-11-16 12:02:41', '2024-11-16 12:02:41', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_answers`
--

CREATE TABLE `user_answers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `question_id` bigint(20) UNSIGNED NOT NULL,
  `option_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_answers`
--

INSERT INTO `user_answers` (`id`, `user_id`, `question_id`, `option_id`, `created_at`, `updated_at`) VALUES
(1, 18, 1, 1, '2024-11-10 12:10:02', '2024-11-10 12:10:02'),
(2, 18, 2, 7, '2024-11-10 12:10:07', '2024-11-10 12:10:07'),
(3, 18, 3, 11, '2024-11-10 12:10:10', '2024-11-10 12:10:10'),
(4, 18, 4, 15, '2024-11-10 12:10:14', '2024-11-10 12:10:14'),
(5, 18, 5, 19, '2024-11-10 12:10:18', '2024-11-10 12:10:18'),
(6, 18, 1, 3, '2024-11-10 12:24:42', '2024-11-10 12:24:42'),
(7, 18, 2, 6, '2024-11-10 12:24:48', '2024-11-10 12:24:48'),
(8, 18, 3, 11, '2024-11-10 12:24:53', '2024-11-10 12:24:53'),
(9, 18, 4, 13, '2024-11-10 12:25:58', '2024-11-10 12:25:58'),
(10, 18, 1, 2, '2024-11-10 12:32:51', '2024-11-10 12:32:51'),
(11, 18, 2, 5, '2024-11-10 12:36:04', '2024-11-10 12:36:04'),
(12, 18, 3, 9, '2024-11-10 12:36:24', '2024-11-10 12:36:24'),
(13, 18, 4, 16, '2024-11-10 12:41:37', '2024-11-10 12:41:37'),
(14, 18, 4, 16, '2024-11-10 12:41:37', '2024-11-10 12:41:37'),
(15, 18, 4, 16, '2024-11-10 12:41:37', '2024-11-10 12:41:37'),
(16, 18, 5, 20, '2024-11-10 12:41:46', '2024-11-10 12:41:46'),
(17, 19, 1, 1, '2024-11-10 15:55:01', '2024-11-10 15:55:01'),
(18, 19, 2, 8, '2024-11-10 15:58:58', '2024-11-10 15:58:58'),
(19, 19, 3, 11, '2024-11-10 15:59:11', '2024-11-10 15:59:11'),
(20, 19, 4, 14, '2024-11-10 15:59:21', '2024-11-10 15:59:21'),
(21, 17, 1, 2, '2024-11-10 23:19:52', '2024-11-10 23:19:52'),
(22, 17, 1, 2, '2024-11-10 23:21:39', '2024-11-10 23:21:39'),
(23, 17, 1, 2, '2024-11-10 23:21:39', '2024-11-10 23:21:39'),
(24, 17, 1, 2, '2024-11-10 23:21:39', '2024-11-10 23:21:39'),
(25, 17, 2, 6, '2024-11-10 23:21:49', '2024-11-10 23:21:49'),
(26, 17, 3, 11, '2024-11-10 23:22:07', '2024-11-10 23:22:07'),
(27, 17, 4, 16, '2024-11-10 23:22:15', '2024-11-10 23:22:15'),
(28, 17, 4, 16, '2024-11-10 23:22:15', '2024-11-10 23:22:15'),
(29, 17, 1, 3, '2024-11-10 23:22:33', '2024-11-10 23:22:33'),
(30, 17, 1, 1, '2024-11-10 23:23:22', '2024-11-10 23:23:22'),
(31, 17, 1, 1, '2024-11-10 23:25:05', '2024-11-10 23:25:05'),
(32, 17, 1, 1, '2024-11-10 23:26:06', '2024-11-10 23:26:06'),
(33, 17, 1, 1, '2024-11-10 23:35:50', '2024-11-10 23:35:50'),
(34, 17, 1, 1, '2024-11-10 23:35:50', '2024-11-10 23:35:50'),
(35, 17, 1, 2, '2024-11-10 23:41:42', '2024-11-10 23:41:42'),
(36, 17, 1, 3, '2024-11-10 23:41:57', '2024-11-10 23:41:57'),
(37, 17, 1, 3, '2024-11-10 23:41:57', '2024-11-10 23:41:57'),
(38, 17, 2, 5, '2024-11-10 23:42:10', '2024-11-10 23:42:10'),
(39, 17, 1, 1, '2024-11-10 23:42:45', '2024-11-10 23:42:45'),
(40, 17, 1, 1, '2024-11-10 23:44:11', '2024-11-10 23:44:11'),
(41, 17, 1, 1, '2024-11-10 23:45:07', '2024-11-10 23:45:07'),
(42, 17, 2, 5, '2024-11-10 23:45:15', '2024-11-10 23:45:15'),
(43, 17, 1, 1, '2024-11-10 23:49:07', '2024-11-10 23:49:07'),
(44, 17, 2, 6, '2024-11-11 00:28:46', '2024-11-11 00:28:46'),
(45, 17, 1, 1, '2024-11-11 00:42:51', '2024-11-11 00:42:51'),
(46, 17, 2, 6, '2024-11-11 00:43:00', '2024-11-11 00:43:00'),
(47, 17, 3, 12, '2024-11-11 00:43:08', '2024-11-11 00:43:08'),
(48, 17, 4, 16, '2024-11-11 00:43:15', '2024-11-11 00:43:15'),
(49, 17, 5, 20, '2024-11-11 00:43:27', '2024-11-11 00:43:27'),
(50, 17, 1, 1, '2024-11-11 00:46:56', '2024-11-11 00:46:56'),
(51, 17, 1, 1, '2024-11-11 00:47:47', '2024-11-11 00:47:47'),
(52, 17, 1, 1, '2024-11-11 00:47:52', '2024-11-11 00:47:52'),
(53, 17, 2, 6, '2024-11-11 00:47:59', '2024-11-11 00:47:59'),
(54, 17, 3, 10, '2024-11-11 00:48:05', '2024-11-11 00:48:05'),
(55, 17, 4, 13, '2024-11-11 00:48:10', '2024-11-11 00:48:10'),
(56, 17, 5, 18, '2024-11-11 00:48:46', '2024-11-11 00:48:46'),
(57, 17, 1, 1, '2024-11-11 00:52:19', '2024-11-11 00:52:19'),
(58, 17, 2, 6, '2024-11-11 00:52:25', '2024-11-11 00:52:25'),
(59, 17, 3, 10, '2024-11-11 00:52:32', '2024-11-11 00:52:32'),
(60, 17, 4, 15, '2024-11-11 00:52:41', '2024-11-11 00:52:41'),
(61, 17, 5, 17, '2024-11-11 00:53:10', '2024-11-11 00:53:10'),
(62, 21, 1, 2, '2024-11-11 21:19:25', '2024-11-11 21:19:25'),
(63, 21, 2, 5, '2024-11-11 21:19:35', '2024-11-11 21:19:35'),
(64, 21, 3, 12, '2024-11-11 21:19:44', '2024-11-11 21:19:44'),
(65, 21, 4, 16, '2024-11-11 21:19:53', '2024-11-11 21:19:53'),
(66, 21, 5, 18, '2024-11-11 21:20:02', '2024-11-11 21:20:02'),
(67, 21, 5, 18, '2024-11-11 21:20:08', '2024-11-11 21:20:08'),
(68, 21, 5, 18, '2024-11-11 21:20:20', '2024-11-11 21:20:20'),
(69, 21, 5, 18, '2024-11-11 21:23:24', '2024-11-11 21:23:24'),
(70, 22, 1, 2, '2024-11-13 19:09:42', '2024-11-13 19:09:42'),
(71, 22, 2, 5, '2024-11-13 19:09:49', '2024-11-13 19:09:49'),
(72, 22, 3, 10, '2024-11-13 19:09:57', '2024-11-13 19:09:57'),
(73, 22, 4, 15, '2024-11-13 19:10:05', '2024-11-13 19:10:05'),
(74, 22, 5, 20, '2024-11-13 19:10:13', '2024-11-13 19:10:13'),
(75, 23, 1, 1, '2024-11-13 19:13:47', '2024-11-13 19:13:47'),
(76, 23, 2, 6, '2024-11-13 19:13:54', '2024-11-13 19:13:54'),
(77, 23, 3, 9, '2024-11-13 19:14:04', '2024-11-13 19:14:04'),
(78, 23, 4, 16, '2024-11-13 19:14:13', '2024-11-13 19:14:13'),
(79, 23, 5, 20, '2024-11-13 19:14:22', '2024-11-13 19:14:22'),
(80, 24, 1, 1, '2024-11-13 19:17:13', '2024-11-13 19:17:13'),
(81, 24, 2, 5, '2024-11-13 19:18:02', '2024-11-13 19:18:02'),
(82, 24, 3, 12, '2024-11-13 19:18:17', '2024-11-13 19:18:17'),
(83, 24, 4, 16, '2024-11-13 19:18:27', '2024-11-13 19:18:27'),
(84, 25, 1, 2, '2024-11-16 12:03:21', '2024-11-16 12:03:21'),
(85, 25, 2, 6, '2024-11-16 12:03:28', '2024-11-16 12:03:28'),
(86, 25, 3, 9, '2024-11-16 12:03:36', '2024-11-16 12:03:36'),
(87, 25, 4, 16, '2024-11-16 12:03:44', '2024-11-16 12:03:44'),
(88, 25, 5, 20, '2024-11-16 12:03:56', '2024-11-16 12:03:56');

-- --------------------------------------------------------

--
-- Table structure for table `user_otps`
--

CREATE TABLE `user_otps` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) NOT NULL,
  `otp` varchar(255) NOT NULL,
  `expire_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_otps`
--

INSERT INTO `user_otps` (`id`, `user_id`, `otp`, `expire_at`, `created_at`, `updated_at`) VALUES
(1, 17, '7619', '2024-11-10 11:57:47', '2024-11-10 11:56:45', '2024-11-10 11:57:47'),
(2, 18, '4021', '2024-11-10 11:58:29', '2024-11-10 11:58:17', '2024-11-10 11:58:29'),
(3, 19, '5132', '2024-11-10 15:53:45', '2024-11-10 15:52:33', '2024-11-10 15:53:45'),
(4, 17, '3428', '2024-11-10 23:00:53', '2024-11-10 22:55:53', '2024-11-10 22:55:53'),
(5, 17, '8541', '2024-11-10 22:56:29', '2024-11-10 22:55:53', '2024-11-10 22:56:29'),
(6, 17, '5602', '2024-11-11 00:42:45', '2024-11-11 00:42:29', '2024-11-11 00:42:45'),
(7, 17, '3948', '2024-11-11 09:58:07', '2024-11-11 09:57:46', '2024-11-11 09:58:07'),
(8, 17, '6658', '2024-11-11 10:03:47', '2024-11-11 10:03:29', '2024-11-11 10:03:47'),
(9, 17, '8819', '2024-11-11 19:58:27', '2024-11-11 19:57:54', '2024-11-11 19:58:27'),
(10, 20, '3339', '2024-11-11 21:10:01', '2024-11-11 21:09:19', '2024-11-11 21:10:01'),
(11, 21, '2313', '2024-11-11 21:14:16', '2024-11-11 21:14:00', '2024-11-11 21:14:16'),
(12, 17, '8155', '2024-11-13 19:12:50', '2024-11-13 19:07:50', '2024-11-13 19:07:50'),
(13, 22, '7566', '2024-11-13 19:14:23', '2024-11-13 19:09:23', '2024-11-13 19:09:23'),
(14, 23, '5879', '2024-11-13 19:18:26', '2024-11-13 19:13:26', '2024-11-13 19:13:26'),
(15, 24, '6125', '2024-11-13 19:20:11', '2024-11-13 19:15:11', '2024-11-13 19:15:11'),
(16, 25, '3292', '2024-11-16 12:07:41', '2024-11-16 12:02:41', '2024-11-16 12:02:41');

--
-- Indexes for dumped tables
--

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
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `categories_category_type_id_slug_unique` (`category_type_id`,`slug`);

--
-- Indexes for table `category_types`
--
ALTER TABLE `category_types`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `category_types_machine_name_unique` (`machine_name`);

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
-- Indexes for table `media`
--
ALTER TABLE `media`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media_disk_directory_filename_extension_unique` (`disk`,`directory`,`filename`,`extension`),
  ADD KEY `media_aggregate_type_index` (`aggregate_type`),
  ADD KEY `media_original_media_id_foreign` (`original_media_id`);

--
-- Indexes for table `mediables`
--
ALTER TABLE `mediables`
  ADD PRIMARY KEY (`media_id`,`mediable_type`,`mediable_id`,`tag`),
  ADD KEY `mediables_mediable_type_mediable_id_index` (`mediable_type`,`mediable_id`),
  ADD KEY `mediables_mediable_id_mediable_type_index` (`mediable_id`,`mediable_type`),
  ADD KEY `mediables_tag_index` (`tag`),
  ADD KEY `mediables_order_index` (`order`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menus_machine_name_unique` (`machine_name`);

--
-- Indexes for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu_items_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `model_has_categories`
--
ALTER TABLE `model_has_categories`
  ADD KEY `model_has_categories_category_id_foreign` (`category_id`),
  ADD KEY `model_has_categories_category_item_type_category_item_id_index` (`category_item_type`,`category_item_id`);

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
-- Indexes for table `options`
--
ALTER TABLE `options`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `plans`
--
ALTER TABLE `plans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `questions`
--
ALTER TABLE `questions`
  ADD PRIMARY KEY (`id`);

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
-- Indexes for table `user_answers`
--
ALTER TABLE `user_answers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user_otps`
--
ALTER TABLE `user_otps`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `category_types`
--
ALTER TABLE `category_types`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

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
-- AUTO_INCREMENT for table `media`
--
ALTER TABLE `media`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menus`
--
ALTER TABLE `menus`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `menu_items`
--
ALTER TABLE `menu_items`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `options`
--
ALTER TABLE `options`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `plans`
--
ALTER TABLE `plans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `questions`
--
ALTER TABLE `questions`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `user_answers`
--
ALTER TABLE `user_answers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `user_otps`
--
ALTER TABLE `user_otps`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories`
--
ALTER TABLE `categories`
  ADD CONSTRAINT `categories_category_type_id_foreign` FOREIGN KEY (`category_type_id`) REFERENCES `category_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media`
--
ALTER TABLE `media`
  ADD CONSTRAINT `media_original_media_id_foreign` FOREIGN KEY (`original_media_id`) REFERENCES `media` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `mediables`
--
ALTER TABLE `mediables`
  ADD CONSTRAINT `mediables_media_id_foreign` FOREIGN KEY (`media_id`) REFERENCES `media` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu_items`
--
ALTER TABLE `menu_items`
  ADD CONSTRAINT `menu_items_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `model_has_categories`
--
ALTER TABLE `model_has_categories`
  ADD CONSTRAINT `model_has_categories_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

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
