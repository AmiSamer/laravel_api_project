-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 04, 2023 at 01:24 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel_api_project_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `colors`
--

CREATE TABLE `colors` (
  `id` int(10) UNSIGNED NOT NULL,
  `color_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `colors`
--

INSERT INTO `colors` (`id`, `color_name`, `created_at`, `updated_at`) VALUES
(1, 'Gold', '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(2, 'Silver', '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(3, 'Pacific Blue', '2023-02-02 18:00:00', '2023-02-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `id` int(10) UNSIGNED NOT NULL,
  `employee_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `salary` int(11) NOT NULL,
  `authorized_user_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`id`, `employee_name`, `salary`, `authorized_user_id`, `created_at`, `updated_at`) VALUES
(1, 'Mahbub Alam', 25000, 1, '2023-02-04 08:43:59', '2023-02-04 08:43:59'),
(2, 'Shimanto Sarkar', 32000, 1, '2023-02-04 08:43:59', '2023-02-04 08:43:59'),
(3, 'Tasmia Jahan', 22000, 1, '2023-02-04 08:45:19', '2023-02-04 08:45:19'),
(4, 'Maliha Rahman', 35000, 2, '2023-02-04 08:45:19', '2023-02-04 08:45:19'),
(5, 'Rafiqul Islam', 45000, 2, '2023-02-04 08:46:32', '2023-02-04 08:46:32');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
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
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(5, '2014_10_12_000000_create_users_table', 1),
(6, '2019_08_19_000000_create_failed_jobs_table', 1),
(7, '2023_02_02_093415_create_phones_table', 1),
(8, '2023_02_02_094301_create_colors_table', 1),
(9, '2023_02_02_094342_create_storages_table', 1),
(10, '2023_02_04_083632_create_employees_table', 2);

-- --------------------------------------------------------

--
-- Table structure for table `phones`
--

CREATE TABLE `phones` (
  `id` int(10) UNSIGNED NOT NULL,
  `model_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `brand` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `color_id` int(11) NOT NULL,
  `storage_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `phones`
--

INSERT INTO `phones` (`id`, `model_name`, `description`, `price`, `brand`, `color_id`, `storage_id`, `created_at`, `updated_at`) VALUES
(1, 'Samsung Galaxy A03', 'Display Size: 6.5\" HD+TFT\r\nCamera (Rear): 48 +2 MP\r\nCamera (Front): 5MP\r\nProcessor: Octa-Core 1.6 GHz\r\nRAM: 4GB\r\nROM: 128GB\r\nBattery: 5000 mAh\r\nNetwork: 4G, LTE\r\nDimensions:164.2 x 75.9 x 9.1\r\nWeight: 196g', 16467, 'Samsung', 2, 1, '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(2, 'IPhone 13', '6.1-inch Super Retina XDR Display\r\nCinematic Mode\r\nAdvanced Dual-Camera System\r\nSmart HDR 4\r\nNight Mode\r\n4K Dolby Vision HDR Recording\r\n12MP TrueDepth Front Camera\r\nA15 Bionic Chip\r\nUp to 19 Hours of Video Playback\r\nDurable Design with Ceramic Shield\r\nIP68 Water Resistance\r\n5G Connectivity\r\niOS 15\r\nSupports MagSafe Accessories\r\nFast‑Charge Capable (Power Adapter sold separately)', 99999, 'Apple', 2, 1, '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(3, 'Xiaomi 12 Pro', 'Prices are subject to change upon direction on 5% VAT from Government\r\nNO RETURN applicable if the seal is broken\r\nRAM Memory: 8 GB\r\nStorage Capacity: 256 GB\r\nBattery Capacity:4600mAh Li-Po\r\nSim Slots: Dual\r\nDisplay Size:6.73 inches', 96907, 'Xiaomi', 3, 2, '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(4, 'Galaxy S21 Ultra 5G', 'The 6.8 inch Dynamic AMOLED infinity display\r\n108MP wide camera\r\n40 MP, f/2.2, 26mm (wide), 1/2.8\", 0.7µm, PDAF selfie camera\r\nQualcomm SM8350 Snapdragon 888 5G (5 nm) processor\r\n', 75000, 'Samsung', 1, 3, '2023-02-02 18:00:00', '2023-02-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `storages`
--

CREATE TABLE `storages` (
  `id` int(10) UNSIGNED NOT NULL,
  `storage_capacity` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `storages`
--

INSERT INTO `storages` (`id`, `storage_capacity`, `created_at`, `updated_at`) VALUES
(1, '128GB', '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(2, '256GB', '2023-02-02 18:00:00', '2023-02-02 18:00:00'),
(3, '512GB', '2023-02-02 18:00:00', '2023-02-02 18:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Tanvir', 'tanvir@test.com', NULL, '$2y$10$l5.Atlj4MlIRk5WThX4PRu/r6GkaoOnvwvQpWzxHn75CZo3AcHhDa', NULL, '2023-02-04 06:12:42', '2023-02-04 06:12:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `phones`
--
ALTER TABLE `phones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `storages`
--
ALTER TABLE `storages`
  ADD PRIMARY KEY (`id`);

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
-- AUTO_INCREMENT for table `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employees`
--
ALTER TABLE `employees`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `phones`
--
ALTER TABLE `phones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `storages`
--
ALTER TABLE `storages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
