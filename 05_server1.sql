-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 27, 2020 at 09:19 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `05_server1`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `pages` int(11) NOT NULL,
  `isbn` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `authors` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `added_by` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `books`
--

INSERT INTO `books` (`id`, `title`, `pages`, `isbn`, `authors`, `added_by`, `created_at`, `updated_at`) VALUES
(1, 'Jungle Book', 58, '022122365', 'Austin', 3, NULL, NULL),
(2, 'Sejarah Indonesia', 1549, '9876556782', 'Udin', 2, '2020-02-26 21:43:34', '2020-02-26 21:43:34'),
(3, 'Sejarah Indonesia', 1549, '9876556782', 'Udin', 2, '2020-02-26 21:49:22', '2020-02-26 21:49:22'),
(4, 'Death Note', 2000, '0307887898', 'Ade', 2, '2020-02-26 23:58:37', '2020-02-26 23:58:37'),
(5, 'Keyboard', 10, '0307887898', 'Ade', 2, '2020-02-27 00:46:43', '2020-02-27 00:46:43');

-- --------------------------------------------------------

--
-- Table structure for table `login_tokens`
--

CREATE TABLE `login_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `login_tokens`
--

INSERT INTO `login_tokens` (`id`, `user_id`, `token`, `created_at`, `updated_at`) VALUES
(4, 2, 'R3j2RrDUPlrfM9d770JY6AQiljFG8sJXIjBWb5DVdHdrQ4X2aGRwdaAq5HNLIrJ9vLVpRffHZqDsYHEs', '2020-02-26 20:59:07', '2020-02-26 20:59:07'),
(5, 3, 'Bn0D54s4BZreHjlAigAUmDKUO0OMNl8p0I4jo24qbRhiYUynG2HhLThMUJwaI1P7W4jYO21wruUJjDQh', '2020-02-26 20:59:38', '2020-02-26 20:59:38'),
(6, 4, 'QWqfdIyMKo4byuqRTzophEKjPtjyFAodQzUl6casR8nKsz3AoJrZDabzbXFLO2bWTP7mb7CoNbFgWB8F', '2020-02-26 20:59:58', '2020-02-26 20:59:58'),
(7, 5, 'qUBVXwyPAW1ckMUs4V38ppLSEgc8zJs4fFKRtDDMJyv6qS8rQ59mz26x7ff3vd4Nv2lnGBeFn5FS0XXK', '2020-02-26 23:25:31', '2020-02-26 23:25:31'),
(8, 6, 'kE7oYnXnSAeiQwDCMq3y0Qs0NYcuuidPmfiGsAX8ciF4zFrC36Llg3S1o1reTC9zTQkhEFBMADduqVzX', '2020-02-27 00:30:44', '2020-02-27 00:30:44'),
(10, 7, 'kS4m3h2FCqLI6k5asqymvQupaOGEwPcfLY6iEFLc0IqCzqZTlbt9lyqH028RahVxlPpyIrQAFLYRLdmM', '2020-02-27 00:45:20', '2020-02-27 00:45:20');

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2020_02_27_022829_create_login_token_table', 1),
(4, '2020_02_27_023312_create_books_table', 1),
(5, '2020_02_27_023327_create_ratings_table', 1),
(6, '2020_02_27_023339_create_reviews_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ratings`
--

CREATE TABLE `ratings` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `rating` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ratings`
--

INSERT INTO `ratings` (`id`, `user_id`, `book_id`, `rating`, `created_at`, `updated_at`) VALUES
(1, 2, 1, 2, '2020-02-26 21:44:43', '2020-02-26 21:44:43'),
(2, 2, 5, 5, '2020-02-27 00:47:06', '2020-02-27 00:47:06');

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `book_id` int(10) UNSIGNED NOT NULL,
  `review` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`id`, `user_id`, `book_id`, `review`, `created_at`, `updated_at`) VALUES
(2, 2, 1, 'asdwadwafdf', '2020-02-26 21:31:35', '2020-02-26 21:31:35'),
(3, 2, 1, 'Goooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooood', '2020-02-26 21:45:33', '2020-02-26 21:45:33'),
(4, 2, 5, 'Goooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooooood', '2020-02-27 00:47:38', '2020-02-27 00:47:38');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'John', 'Doe', 'john.doe', '$2y$10$yopSn6Kog.tvnJGULMv.GuNuXnFs6IZuKcwhNutSZVrDKApedj5fi', NULL, '2020-02-26 20:21:59', '2020-02-26 20:21:59'),
(3, 'Richard', 'Roe', 'richard.roe', '$2y$10$LFGTGhOnAOP1pt8mCLrSBOYrXcVczVsJituqv4RZ1V7hep1SJX7h.', NULL, '2020-02-26 20:59:38', '2020-02-26 20:59:38'),
(4, 'Jane', 'Poe', 'jane.poe', '$2y$10$gcVtm1NgPfOTgLjFeAo5kOx0lHCNHMqKXK0EFOEIQaBhhRrFIdo/O', NULL, '2020-02-26 20:59:58', '2020-02-26 20:59:58'),
(5, 'Jane', 'Poe', 'bima.poe', '$2y$10$YvZjWmHy/68giR.RS9MaTOmYxh/f6w4rcvp9NosWQUOdxsApHIp92', NULL, '2020-02-26 23:25:31', '2020-02-26 23:25:31'),
(6, 'rura', 'syndy', 'rurasynd', '$2y$10$2Mnqfnri.jP4CyYouyibQuwzCZO3IgGjdMfS2e9vRHSAEv7f8azsW', NULL, '2020-02-27 00:30:44', '2020-02-27 00:30:44'),
(7, 'bambang', 'joe', 'bambang.joe', '$2y$10$.tehak.iR5NXLXLZ5SsdsOc09gp4g7nIACKRKkaBEC22Xf2QRwtwu', NULL, '2020-02-27 00:45:00', '2020-02-27 00:45:00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`id`),
  ADD KEY `books_added_by_foreign` (`added_by`);

--
-- Indexes for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `login_tokens_user_id_foreign` (`user_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `ratings`
--
ALTER TABLE `ratings`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ratings_user_id_foreign` (`user_id`),
  ADD KEY `ratings_book_id_foreign` (`book_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`id`),
  ADD KEY `reviews_user_id_foreign` (`user_id`),
  ADD KEY `reviews_book_id_foreign` (`book_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_username_unique` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `login_tokens`
--
ALTER TABLE `login_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `ratings`
--
ALTER TABLE `ratings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `books_added_by_foreign` FOREIGN KEY (`added_by`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `login_tokens`
--
ALTER TABLE `login_tokens`
  ADD CONSTRAINT `login_tokens_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ratings`
--
ALTER TABLE `ratings`
  ADD CONSTRAINT `ratings_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ratings_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_book_id_foreign` FOREIGN KEY (`book_id`) REFERENCES `books` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `reviews_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
