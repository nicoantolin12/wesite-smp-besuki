-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2024 at 03:21 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sekolah`
--

-- --------------------------------------------------------

--
-- Table structure for table `galeri`
--

CREATE TABLE `galeri` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `keterangan` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `galeri`
--

INSERT INTO `galeri` (`id`, `foto`, `keterangan`, `created_at`, `updated_at`) VALUES
(2, 'galeri1718634961.png', 'Lomba Merakit Nuklir Tingkat Nasional', '2024-06-17 14:36:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `informasi`
--

CREATE TABLE `informasi` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL,
  `created_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `informasi`
--

INSERT INTO `informasi` (`id`, `judul`, `keterangan`, `gambar`, `created_at`, `updated_at`, `created_by`) VALUES
(2, 'Pertemuan Orang Tua', 'mabar bareng ortu', 'informasi1718636398.png', '2024-06-17 14:59:58', NULL, 2),
(3, 'Himbauan Memakai Masker Untuk Mencegah Virus Cinta Monyet', '', 'informasi1718805567.jpg', '2024-06-19 13:59:27', NULL, 11),
(4, 'Hari Rabu Rapat Pleno Keputusan Pembangunan Fasilitas', '', 'informasi1718805606.jpg', '2024-06-19 14:00:06', NULL, 11);

-- --------------------------------------------------------

--
-- Table structure for table `jurusan`
--

CREATE TABLE `jurusan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `keterangan` text NOT NULL,
  `gambar` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `jurusan`
--

INSERT INTO `jurusan` (`id`, `nama`, `keterangan`, `gambar`, `created_at`, `updated_at`) VALUES
(5, 'Pramuka PRABESDUTA ', 'Ekstrakurikuler Pramuka adalah salah satu kegiatan di sekolah yang bertujuan untuk mengembangkan jiwa kepemimpinan, kemandirian, keberanian, kerjasama, dan rasa cinta terhadap alam serta lingkungan.', 'jurusan1718804798.jpg', '2024-06-19 13:46:38', NULL),
(6, 'PMR INDRASAKTYA', 'Palang Merah Remaja atau PMR adalah suatu organisasi binaan dari Palang Merah Indonesia yang berpusat di sekolah-sekolah ataupun kelompok-kelompok masyarakat (sanggar, kelompok belajar, dll.) yang bertujuan membangun dan mengembangkan karakter Kepalangmerahan agar siap menjadi Relawan PMI pada masa depan.', 'jurusan1718804852.jpg', '2024-06-19 13:47:32', NULL),
(7, 'TARI NIRWARAKSA', 'Gerak badan secara berirama yang dilakukan ditempat serta waktu tertentu buat keperluan pergaulan, mengungkap perasaan, maksud, serta pikiran. Bunyi-bunyian yang dimaksud musik pengiring tari mengatur gerakan penari serta menguatkan maksud yang mau di sampaikan.', 'jurusan1718804919.jpg', '2024-06-19 13:48:39', NULL),
(8, 'TAILOR SQUAD', 'Menjahit adalah proses menggunakan jarum dan benang untuk menyambung potongan kain atau menempelkannya pada permukaan kain. Ini adalah keterampilan praktis yang digunakan untuk membuat atau memperbaiki pakaian.', 'jurusan1718804965.jpg', '2024-06-19 13:49:25', NULL),
(9, 'DRUMBAND NIRWANSANTIKA ', 'Drumben (bahasa Inggris: drum band, marching band) adalah sekelompok barisan orang yang memainkan satu atau beberapa lagu dengan menggunakan sejumlah kombinasi alat musik (tiup, perkusi, dan sejumlah instrumen pit) secara bersama-sama.', 'jurusan1718805021.jpg', '2024-06-19 13:50:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pengaturan`
--

CREATE TABLE `pengaturan` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `telepon` varchar(20) NOT NULL,
  `alamat` text NOT NULL,
  `logo` varchar(50) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `tentang_sekolah` text NOT NULL,
  `foto_sekolah` varchar(50) NOT NULL,
  `google_maps` text NOT NULL,
  `nama_kepsek` varchar(50) NOT NULL,
  `foto_kepsek` varchar(50) NOT NULL,
  `sambutan_kepsek` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengaturan`
--

INSERT INTO `pengaturan` (`id`, `nama`, `email`, `telepon`, `alamat`, `logo`, `favicon`, `tentang_sekolah`, `foto_sekolah`, `google_maps`, `nama_kepsek`, `foto_kepsek`, `sambutan_kepsek`, `created_at`, `updated_at`) VALUES
(1, 'SMP Negri 2 Besuki', 'smpn2bestwobesuki@gmail.com', '085333444889', '', 'logo1718844835.png', 'logo1718808541.png', '', 'sekolah1718807804.png', '', 'Nico Sava Antolin, S.Kom., M.kom.', 'kepsek.png', 'Assalamu\'alaikum wr.wb. Puji syukur kepada Alloh SWT, Tuhan Yang Maha Esa yang telah memberikan rahmat dan anugerahNya sehingga website SMK Negeri 2 Yogyakarta ini dapat terbit. Salah satu tujuan dari website ini adalah untuk menjawab akan setiap kebutuhan informasi dengan memanfaatkan sarana teknologi informasi yang ada. Kami sadar sepenuhnya dalam rangka memajukan pendidikan di era berkembangnya Teknologi Informasi yang begitu pesat, sangat diperlukan berbagai sarana prasarana yang kondusif, kebutuhan berbagai informasi siswa, guru, orangtua maupun masyarakat, sehingga kami berusaha mewujudkan hal tersebut semaksimal mungkin. Semoga dengan adanya website ini dapat membantu dan bermanfaat, terutama informasi yang berhubungan dengan pendidikan, ilmu pengetahuan dan informasi seputar SMK Negeri 2 Yogyakarta. Besar harapan kami, sarana ini dapat memberi manfaat bagi semua pihak yang ada dilingkup pendidikan dan pemerhati pendidikan secara khusus bagi SMP Negeri 2 Besuki. Akhirnya kami mengharapkan masukan dari berbagai pihak untuk website ini agar kami terus belajar dan meng-update diri, sehingga tampilan, isi dan mutu website akan terus berkembang dan lebih baik nantinya. Terima kasih atas kerjasamanya, maju terus untuk mencapai SMP Negeri 2 Besuki yang lebih baik lagi. Wassalamu\'alaikum wr.wb.', '2024-06-17 15:25:35', '2024-06-20 07:53:55');

-- --------------------------------------------------------

--
-- Table structure for table `pengguna`
--

CREATE TABLE `pengguna` (
  `id` int(11) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `level` enum('Super Admin','Admin') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pengguna`
--

INSERT INTO `pengguna` (`id`, `nama`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(2, 'juki', 'jukiono', '827ccb0eea8a706c4c34a16891f84e7b', 'Admin', '2024-06-10 00:47:49', NULL),
(3, 'rosi', 'rosiala', '4e826c880e43b7ad8008a5acf74ab07b', 'Super Admin', '2024-06-10 00:52:30', '2024-06-17 16:20:17'),
(6, 'Jajan Winarko', 'jan', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-06-17 07:34:16', '2024-06-17 15:29:24'),
(8, 'Wiwi Saputri', 'wiq', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-06-17 08:21:05', '2024-06-17 10:27:50'),
(9, 'Maa\'atul Qori', 'qori', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-06-17 08:55:28', NULL),
(10, 'Zzys Yahahwow', 'izz\'y', 'e10adc3949ba59abbe56e057f20f883e', 'Admin', '2024-06-17 08:58:09', '2024-06-17 19:57:33'),
(11, 'Subagiono', 'bagi', 'db06bce04043ca8e0b6b2090ff7762cb', 'Admin', '2024-06-19 13:56:13', '2024-06-19 20:56:58');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `galeri`
--
ALTER TABLE `galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `informasi`
--
ALTER TABLE `informasi`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jurusan`
--
ALTER TABLE `jurusan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengaturan`
--
ALTER TABLE `pengaturan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengguna`
--
ALTER TABLE `pengguna`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `galeri`
--
ALTER TABLE `galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `informasi`
--
ALTER TABLE `informasi`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jurusan`
--
ALTER TABLE `jurusan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `pengaturan`
--
ALTER TABLE `pengaturan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pengguna`
--
ALTER TABLE `pengguna`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
