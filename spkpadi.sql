-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 08, 2023 at 11:03 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `spkpadi`
--

-- --------------------------------------------------------

--
-- Table structure for table `aturan`
--

CREATE TABLE `aturan` (
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `aturan`
--

INSERT INTO `aturan` (`penyakit_id`, `gejala_id`) VALUES
(1, 2),
(1, 24),
(1, 25),
(2, 3),
(2, 5),
(2, 6),
(2, 12),
(2, 18),
(3, 7),
(3, 9),
(3, 10),
(3, 12),
(3, 14),
(4, 3),
(4, 7),
(4, 8),
(9, 34),
(9, 35),
(9, 36),
(9, 37),
(10, 38),
(10, 39),
(10, 40),
(10, 41),
(11, 42),
(11, 43),
(11, 44),
(11, 45),
(11, 46),
(11, 47),
(11, 48),
(11, 49);

-- --------------------------------------------------------

--
-- Table structure for table `diagnosa`
--

CREATE TABLE `diagnosa` (
  `id` int(10) UNSIGNED NOT NULL,
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `penyakit_id` int(10) UNSIGNED NOT NULL,
  `persentase` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diagnosa`
--

INSERT INTO `diagnosa` (`id`, `pasien_id`, `penyakit_id`, `persentase`) VALUES
(6, 8, 9, 43),
(7, 8, 10, 29),
(8, 8, 11, 29),
(9, 9, 9, 81),
(10, 9, 11, 19),
(11, 10, 9, 40),
(12, 10, 11, 60),
(13, 11, 9, 100),
(14, 12, 9, 31),
(15, 12, 10, 46),
(16, 12, 11, 23),
(17, 13, 9, 33),
(18, 13, 10, 33),
(19, 13, 11, 33),
(20, 14, 10, 33),
(21, 14, 11, 67);

-- --------------------------------------------------------

--
-- Table structure for table `gejala`
--

CREATE TABLE `gejala` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `gejala`
--

INSERT INTO `gejala` (`id`, `name`, `created_at`, `updated_at`) VALUES
(34, 'rasa haus', '2022-12-17 04:56:35', '2022-12-21 05:10:41'),
(35, 'Urine yang berwarna kuning gelap atau pekat', '2022-12-17 04:56:50', '2022-12-17 04:56:50'),
(36, 'Frekuensi dan volume buang air kecil mengalami penurunan', '2022-12-17 04:57:09', '2022-12-17 04:57:09'),
(37, 'Mulut terasa kering dan lengket', '2022-12-17 04:57:27', '2022-12-17 04:57:27'),
(38, 'Menjadi lebih mudah mengantuk dan mudah lelah', '2022-12-17 04:59:05', '2022-12-17 04:59:05'),
(39, 'Sering sakit kepala dan kesulitan berkonsentrasi', '2022-12-17 04:59:30', '2022-12-17 04:59:30'),
(40, 'Mengalami kram otot', '2022-12-17 04:59:44', '2022-12-17 04:59:44'),
(41, 'Tubuh demam', '2022-12-17 04:59:53', '2022-12-17 04:59:53'),
(42, 'Merasa sangat kehausan', '2022-12-17 05:01:18', '2022-12-17 05:01:18'),
(43, 'Jantung berdebar tak beraturan', '2022-12-17 05:01:31', '2022-12-17 05:01:31'),
(44, 'Mengalami penurunan tekanan darah', '2022-12-17 05:01:42', '2022-12-17 05:01:42'),
(45, 'Napas menjadi lebih cepat', '2022-12-17 05:01:54', '2022-12-17 05:01:54'),
(46, 'Mata terlihat cekung', '2022-12-17 05:02:05', '2022-12-17 05:02:05'),
(47, 'Kulit menjadi lebih kering dan kehilangan elastisitasnya', '2022-12-17 05:02:15', '2022-12-17 05:02:15'),
(48, 'Urine berwarna lebih gelap lagi, bahkan bisa tidak buang air kecil sama sekali', '2022-12-17 05:02:27', '2022-12-17 05:02:27'),
(49, 'Sakit kepala yang hebat', '2022-12-17 05:02:35', '2022-12-17 05:02:35');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2017_07_01_195049_create_gejala_table', 1),
(4, '2017_07_01_195148_create_penyakit_table', 1),
(5, '2017_07_02_031810_create_gejala_penyakit_table', 1),
(6, '2017_07_02_062333_create_pasien_table', 1),
(7, '2017_07_02_085613_create_tmp_diagnosa_table', 1),
(8, '2017_07_09_081816_create_diagnosa_table', 1),
(9, '2017_07_09_111229_create_tmp_gejala_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pasien`
--

CREATE TABLE `pasien` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `lokasi` text NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `pasien`
--

INSERT INTO `pasien` (`id`, `nama`, `lokasi`, `created_at`, `updated_at`) VALUES
(1, 'halim', 'indramayu', '2022-12-17 03:55:16', '2022-12-17 03:55:16'),
(2, 'halim', 'indramayu', '2022-12-17 04:01:31', '2022-12-17 04:01:31'),
(3, 'irfan', 'anjatan', '2022-12-17 04:02:39', '2022-12-17 04:02:39'),
(4, 'mulya', 'majalenkga', '2022-12-17 04:04:38', '2022-12-17 04:04:38'),
(5, 'mulys', 'fsf', '2022-12-17 04:05:03', '2022-12-17 04:05:03'),
(6, 'kjnjn', 'opkpo', '2022-12-17 04:06:21', '2022-12-17 04:06:21'),
(7, 'Ade Irfan Imanda', 'Indramayu', '2022-12-17 04:15:56', '2022-12-17 04:15:56'),
(8, 'agim', 'majalengka', '2022-12-17 05:04:02', '2022-12-17 05:04:02'),
(9, 'Agim Mulya', 'mm\r\n', '2022-12-17 05:29:59', '2022-12-17 05:29:59'),
(10, 'abdul', 'celeng\r\n', '2022-12-17 05:52:29', '2022-12-17 05:52:29'),
(11, 'lasj', 'efdsf', '2022-12-17 06:07:34', '2022-12-17 06:07:34'),
(12, 'muhammad agim mulya', 'celng', '2022-12-17 13:47:52', '2022-12-17 13:47:52'),
(13, 'agim', 'celeng', '2022-12-21 05:11:35', '2022-12-21 05:11:35'),
(14, 'irfan', 'celeng\r\n', '2022-12-21 05:18:17', '2022-12-21 05:18:17');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `penyakit`
--

CREATE TABLE `penyakit` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `definisi` text DEFAULT NULL,
  `penyebab` text DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `penyakit`
--

INSERT INTO `penyakit` (`id`, `nama`, `definisi`, `penyebab`, `created_at`, `updated_at`) VALUES
(9, 'Dehidrasi ringan', 'dehidrasi ringan terjadi karena harus meningkatkan konsumsi air putih', 'Sedikitnya volume air yang masuk kedalam tubuh', '2022-12-17 04:58:43', '2022-12-18 02:26:10'),
(10, 'Dehidrasi sedang', 'pokonya banyak minun air weh kamu teh', 'kurang minum air putih', '2022-12-17 05:00:47', '2022-12-17 05:00:47'),
(11, 'Dehidrasi berat', 'minimal segalon lah minum air putih dalam sehari', 'Sangat jarang minum air putih', '2022-12-17 05:03:26', '2022-12-17 05:03:26');

-- --------------------------------------------------------

--
-- Table structure for table `tmp_diagnosa`
--

CREATE TABLE `tmp_diagnosa` (
  `pasien_id` int(10) UNSIGNED DEFAULT NULL,
  `penyakit_id` int(10) UNSIGNED DEFAULT NULL,
  `gejala` int(10) UNSIGNED DEFAULT NULL,
  `gejala_terpenuhi` int(10) UNSIGNED DEFAULT NULL,
  `persen` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmp_diagnosa`
--

INSERT INTO `tmp_diagnosa` (`pasien_id`, `penyakit_id`, `gejala`, `gejala_terpenuhi`, `persen`) VALUES
(8, 9, 4, 3, 75),
(8, 10, 4, 2, 50),
(8, 11, 8, 4, 50),
(9, 9, 4, 2, 50),
(9, 11, 8, 1, 12),
(10, 9, 4, 2, 50),
(10, 11, 8, 6, 75),
(11, 9, 4, 2, 50),
(12, 9, 4, 2, 50),
(12, 10, 4, 3, 75),
(12, 11, 8, 3, 38),
(13, 9, 4, 1, 25),
(13, 10, 4, 1, 25),
(13, 11, 8, 2, 25),
(14, 10, 4, 1, 25),
(14, 11, 8, 4, 50);

-- --------------------------------------------------------

--
-- Table structure for table `tmp_gejala`
--

CREATE TABLE `tmp_gejala` (
  `pasien_id` int(10) UNSIGNED NOT NULL,
  `gejala_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tmp_gejala`
--

INSERT INTO `tmp_gejala` (`pasien_id`, `gejala_id`) VALUES
(1, 1),
(1, 11),
(1, 13),
(1, 14),
(3, 28),
(3, 29),
(3, 30),
(4, 30),
(5, 29),
(5, 30),
(6, 30),
(7, 30),
(8, 34),
(8, 35),
(8, 36),
(8, 38),
(8, 39),
(8, 42),
(8, 44),
(8, 45),
(8, 46),
(9, 34),
(9, 36),
(9, 42),
(10, 34),
(10, 36),
(10, 42),
(10, 43),
(10, 44),
(10, 45),
(10, 46),
(10, 48),
(11, 36),
(11, 37),
(12, 34),
(12, 35),
(12, 38),
(12, 39),
(12, 40),
(12, 45),
(12, 46),
(12, 47),
(13, 37),
(13, 38),
(13, 42),
(13, 44),
(14, 39),
(14, 44),
(14, 45),
(14, 46),
(14, 47);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 'admin@agim', '$2y$10$mmB0QxqgKVRFliAnd5opueBng/zk.2Lh0.DUt7HLLHuWzx2Lcb9kW', 'dFqedi3R7NZvWMAXd0cCIrgscIjODskKZQ2H8aBmFNT80V6QsEaAIItstV4Q', '2020-01-26 16:00:49', '2022-12-21 05:12:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `aturan`
--
ALTER TABLE `aturan`
  ADD PRIMARY KEY (`penyakit_id`,`gejala_id`);

--
-- Indexes for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD PRIMARY KEY (`id`),
  ADD KEY `diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `gejala`
--
ALTER TABLE `gejala`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasien`
--
ALTER TABLE `pasien`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `penyakit`
--
ALTER TABLE `penyakit`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD KEY `tmp_diagnosa_pasien_id_foreign` (`pasien_id`),
  ADD KEY `tmp_diagnosa_penyakit_id_foreign` (`penyakit_id`);

--
-- Indexes for table `tmp_gejala`
--
ALTER TABLE `tmp_gejala`
  ADD PRIMARY KEY (`pasien_id`,`gejala_id`);

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
-- AUTO_INCREMENT for table `diagnosa`
--
ALTER TABLE `diagnosa`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `gejala`
--
ALTER TABLE `gejala`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pasien`
--
ALTER TABLE `pasien`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `penyakit`
--
ALTER TABLE `penyakit`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `diagnosa`
--
ALTER TABLE `diagnosa`
  ADD CONSTRAINT `diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tmp_diagnosa`
--
ALTER TABLE `tmp_diagnosa`
  ADD CONSTRAINT `tmp_diagnosa_pasien_id_foreign` FOREIGN KEY (`pasien_id`) REFERENCES `pasien` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tmp_diagnosa_penyakit_id_foreign` FOREIGN KEY (`penyakit_id`) REFERENCES `penyakit` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
