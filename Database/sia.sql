-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Aug 19, 2024 at 11:00 AM
-- Server version: 8.4.0
-- PHP Version: 8.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sia`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_dosen`
--

CREATE TABLE `tbl_dosen` (
  `dsn_id` int NOT NULL,
  `nip` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(255) COLLATE utf8mb4_general_ci NOT NULL,
  `level` int NOT NULL,
  `status` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_dosen`
--

INSERT INTO `tbl_dosen` (`dsn_id`, `nip`, `nama`, `pass`, `level`, `status`) VALUES
(1, '1234567890', 'Andi Pratama', '202cb962ac59075b964b07152d234b70', 1, 1),
(2, '2345678901', 'Budi Santoso', '202cb962ac59075b964b07152d234b70', 2, 0),
(3, '3456789012', 'Citra Dewi', '202cb962ac59075b964b07152d234b70', 3, 1),
(4, '4567890123', 'Dedi Kurniawan', '202cb962ac59075b964b07152d234b70', 1, 0),
(5, '5678901234', 'Eka Putri', '202cb962ac59075b964b07152d234b70', 2, 1),
(6, '6789012345', 'Fajar Nugroho', '202cb962ac59075b964b07152d234b70', 3, 0),
(7, '7890123456', 'Gita Sari', '202cb962ac59075b964b07152d234b70', 1, 1),
(8, '8901234567', 'Hari Wibowo', '202cb962ac59075b964b07152d234b70', 2, 0),
(9, '9012345678', 'Indah Puspita', '202cb962ac59075b964b07152d234b70', 3, 1),
(10, '123456789', 'Joko Prasetyo', '202cb962ac59075b964b07152d234b70', 1, 0),
(11, '1357924680', 'Kiki Ramadhan', '202cb962ac59075b964b07152d234b70', 2, 1),
(12, '2468013579', 'Lia Permata', '202cb962ac59075b964b07152d234b70', 3, 0),
(13, '3579246801', 'Maman Suryadi', '202cb962ac59075b964b07152d234b70', 1, 1),
(14, '4680135792', 'Nana Kusuma', '202cb962ac59075b964b07152d234b70', 2, 0),
(15, '5792468013', 'Oki Setiawan', '202cb962ac59075b964b07152d234b70', 3, 1),
(16, '6801357924', 'Puput Anggraini', '202cb962ac59075b964b07152d234b70', 1, 0),
(17, '7914680135', 'Rani Wulandari', '202cb962ac59075b964b07152d234b70', 2, 1),
(18, '8025792468', 'Satria Aditya', '202cb962ac59075b964b07152d234b70', 3, 0),
(19, '9136801357', 'Tina Rosita', '202cb962ac59075b964b07152d234b70', 1, 1),
(20, '247914680', 'Umar Fauzi', '202cb962ac59075b964b07152d234b70', 2, 0),
(21, '1468025792', 'Vina Lestari', '202cb962ac59075b964b07152d234b70', 3, 1),
(22, '2579136801', 'Wahyu Pratama', '202cb962ac59075b964b07152d234b70', 1, 0),
(23, '3680247914', 'Yuli Astuti', '202cb962ac59075b964b07152d234b70', 2, 1),
(24, '4791358025', 'Zaki Rizki', '202cb962ac59075b964b07152d234b70', 3, 0),
(25, '5913579246', 'Adi Saputra', '202cb962ac59075b964b07152d234b70', 1, 1),
(26, '6024680135', 'Bunga Melati', '202cb962ac59075b964b07152d234b70', 2, 0),
(27, '7135792468', 'Cahya Permana', '202cb962ac59075b964b07152d234b70', 3, 1),
(28, '8246801357', 'Dewi Ayu', '202cb962ac59075b964b07152d234b70', 1, 0),
(29, '9357914680', 'Eko Purnomo', '202cb962ac59075b964b07152d234b70', 2, 1),
(30, '468025792', 'Fitri Rahayu', '202cb962ac59075b964b07152d234b70', 3, 0),
(31, '1579136802', 'Guntur Prasetya', '202cb962ac59075b964b07152d234b70', 1, 1),
(32, '2680247913', 'Hana Safitri', '202cb962ac59075b964b07152d234b70', 2, 0),
(33, '3791358024', 'Irfan Maulana', '202cb962ac59075b964b07152d234b70', 3, 1),
(34, '4802468013', 'Jeni Susanti', '202cb962ac59075b964b07152d234b70', 1, 0),
(35, '5913579246', 'Kurnia Putra', '202cb962ac59075b964b07152d234b70', 2, 1),
(36, '6024680135', 'Lina Sari', '202cb962ac59075b964b07152d234b70', 3, 0),
(37, '7135792468', 'Mira Wati', '202cb962ac59075b964b07152d234b70', 1, 1),
(38, '8246801357', 'Nando Pratama', '202cb962ac59075b964b07152d234b70', 2, 0),
(39, '9357914680', 'Olla Rizki', '202cb962ac59075b964b07152d234b70', 3, 1),
(40, '468025792', 'Pandi Setiawan', '202cb962ac59075b964b07152d234b70', 1, 0),
(41, '1579136802', 'Rina Wulandari', '202cb962ac59075b964b07152d234b70', 2, 1),
(42, '2680247913', 'Sandy Prasetyo', '202cb962ac59075b964b07152d234b70', 3, 0),
(43, '3791358024', 'Tari Indah', '202cb962ac59075b964b07152d234b70', 1, 1),
(44, '4802468013', 'Uci Nurul', '202cb962ac59075b964b07152d234b70', 2, 0),
(45, '5913579246', 'Vino Ardiansyah', '202cb962ac59075b964b07152d234b70', 3, 1),
(46, '6024680135', 'Wina Lestari', '202cb962ac59075b964b07152d234b70', 1, 0),
(47, '7135792468', 'Yudi Kurniawan', '202cb962ac59075b964b07152d234b70', 2, 1),
(48, '8246801357', 'Zara Zahra', '202cb962ac59075b964b07152d234b70', 3, 0),
(49, '9357914680', 'Aldi Pratama', '202cb962ac59075b964b07152d234b70', 1, 1),
(50, '468025792', 'Bella Putri', '202cb962ac59075b964b07152d234b70', 2, 0),
(51, '1579136802', 'Cindy Lestari', '202cb962ac59075b964b07152d234b70', 3, 1),
(52, '2680247913', 'Dika Rizky', '202cb962ac59075b964b07152d234b70', 1, 0),
(53, '3791358024', 'Evi Nuraini', '202cb962ac59075b964b07152d234b70', 2, 1),
(54, '4802468013', 'Fikri Ramadhan', '202cb962ac59075b964b07152d234b70', 3, 0),
(55, '5913579246', 'Gina Sari', '202cb962ac59075b964b07152d234b70', 1, 1),
(56, '6024680135', 'Hendra Wijaya', '202cb962ac59075b964b07152d234b70', 2, 0),
(57, '7135792468', 'Intan Permata', '202cb962ac59075b964b07152d234b70', 3, 1),
(58, '8246801357', 'Jaka Surya', '202cb962ac59075b964b07152d234b70', 1, 0),
(59, '9357914680', 'Kania Putri', '202cb962ac59075b964b07152d234b70', 2, 1),
(60, '468025792', 'Lukman Hakim', '202cb962ac59075b964b07152d234b70', 3, 0),
(61, '1579136802', 'Mila Kusuma', '202cb962ac59075b964b07152d234b70', 1, 1),
(62, '2680247913', 'Nanda Purnama', '202cb962ac59075b964b07152d234b70', 2, 0),
(63, '3791358024', 'Oscar Pratama', '202cb962ac59075b964b07152d234b70', 3, 1),
(64, '4802468013', 'Putra Aditya', '202cb962ac59075b964b07152d234b70', 1, 0),
(65, '5913579246', 'Ria Anggraini', '202cb962ac59075b964b07152d234b70', 2, 1),
(66, '6024680135', 'Siska Wati', '202cb962ac59075b964b07152d234b70', 3, 0),
(67, '7135792468', 'Tomi Setiawan', '202cb962ac59075b964b07152d234b70', 1, 1),
(68, '8246801357', 'Ulfah Nurul', '202cb962ac59075b964b07152d234b70', 2, 0),
(69, '468025792', 'Vera Lestari', '202cb962ac59075b964b07152d234b70', 3, 1),
(70, '1579136802', 'Wahyu Setiawan', '202cb962ac59075b964b07152d234b70', 1, 0),
(71, '2680247913', 'Yana Sari', '202cb962ac59075b964b07152d234b70', 2, 1),
(72, '3791358024', 'Zainal Abidin', '202cb962ac59075b964b07152d234b70', 3, 0),
(73, '4802468013', 'Arief Wibowo', '202cb962ac59075b964b07152d234b70', 1, 1),
(74, '5913579246', 'Bintang Pratama', '202cb962ac59075b964b07152d234b70', 2, 0),
(75, '6024680135', 'Citra Ayu', '202cb962ac59075b964b07152d234b70', 3, 1),
(76, '7135792468', 'Dian Purnama', '202cb962ac59075b964b07152d234b70', 1, 0),
(77, '8246801357', 'Eka Nurul', '202cb962ac59075b964b07152d234b70', 2, 1),
(78, '9357914680', 'Fajar Prasetya', '202cb962ac59075b964b07152d234b70', 3, 0),
(79, '468025792', 'Gina Wati', '202cb962ac59075b964b07152d234b70', 1, 1),
(80, '1579136802', 'Hendri Kurniawan', '202cb962ac59075b964b07152d234b70', 2, 0),
(81, '2680247913', 'Intan Lestari', '202cb962ac59075b964b07152d234b70', 3, 1),
(82, '3791358024', 'Jefri Pratama', '202cb962ac59075b964b07152d234b70', 1, 0),
(83, '4802468013', 'Kiki Nuraini', '202cb962ac59075b964b07152d234b70', 2, 1),
(84, '5913579246', 'Lukas Wijaya', '202cb962ac59075b964b07152d234b70', 3, 0),
(85, '6024680135', 'Mila Sari', '202cb962ac59075b964b07152d234b70', 1, 1),
(86, '7135792468', 'Nanda Putra', '202cb962ac59075b964b07152d234b70', 2, 0),
(87, '8246801357', 'Oktavia Rizki', '202cb962ac59075b964b07152d234b70', 3, 1),
(88, '9357914680', 'Pandu Setiawan', '202cb962ac59075b964b07152d234b70', 1, 0),
(89, '468025792', 'Rini Wulandari', '202cb962ac59075b964b07152d234b70', 2, 1),
(90, '1579136802', 'Sandy Prasetyo', '202cb962ac59075b964b07152d234b70', 3, 0),
(91, '2680247913', 'Tari Indah', '202cb962ac59075b964b07152d234b70', 1, 1),
(92, '3791358024', 'Uci Nurul', '202cb962ac59075b964b07152d234b70', 2, 0),
(93, '4802468013', 'Vino Ardiansyah', '202cb962ac59075b964b07152d234b70', 3, 1),
(94, '5913579246', 'Wina Lestari', '202cb962ac59075b964b07152d234b70', 1, 0),
(95, '6024680135', 'Yudi Kurniawan', '202cb962ac59075b964b07152d234b70', 2, 1),
(96, '7135792468', 'Zara Zahra', '202cb962ac59075b964b07152d234b70', 3, 0),
(97, '8246801357', 'Aldi Pratama', '202cb962ac59075b964b07152d234b70', 1, 1),
(98, '9357914680', 'Bella Putri', '202cb962ac59075b964b07152d234b70', 2, 0),
(99, '468025792', 'Cindy Lestari', '202cb962ac59075b964b07152d234b70', 3, 1),
(100, '1579136802', 'Dika Rizky', '202cb962ac59075b964b07152d234b70', 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hari`
--

CREATE TABLE `tbl_hari` (
  `hari_id` int NOT NULL,
  `hari` varchar(55) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_hari`
--

INSERT INTO `tbl_hari` (`hari_id`, `hari`) VALUES
(1, 'Senin'),
(2, 'Selasa'),
(3, 'Rabu'),
(4, 'Kamis'),
(5, 'Jumat');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_jurusan`
--

CREATE TABLE `tbl_jurusan` (
  `jrs_id` int NOT NULL,
  `nama_jrs` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `fakultas` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_jurusan`
--

INSERT INTO `tbl_jurusan` (`jrs_id`, `nama_jrs`, `fakultas`) VALUES
(1, 'Akuntansi', 'FEBH'),
(2, 'Manajemen', 'FEBH'),
(3, 'PBI', 'FEBH'),
(4, 'Psikologi', 'FEBH'),
(5, 'MIK', 'FST'),
(6, 'Sistem Informasi', 'FST'),
(7, 'Teknologi Pangan', 'FST'),
(8, 'Belum Diatur', 'Belum Diatur');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mahasiswa`
--

CREATE TABLE `tbl_mahasiswa` (
  `mhs_id` int NOT NULL,
  `nim` varchar(30) COLLATE utf8mb4_general_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `pass` varchar(40) COLLATE utf8mb4_general_ci NOT NULL,
  `jrs_id` int NOT NULL,
  `smt` int NOT NULL,
  `sks` int NOT NULL,
  `status` int NOT NULL,
  `angkatan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_mahasiswa`
--

INSERT INTO `tbl_mahasiswa` (`mhs_id`, `nim`, `nama`, `pass`, `jrs_id`, `smt`, `sks`, `status`, `angkatan`) VALUES
(1, 'C01.021.001', 'Andi Pratama', '202cb962ac59075b964b07152d234b70', 1, 6, 144, 1, 2021),
(2, 'C02.019.002', 'Budi Santoso', '202cb962ac59075b964b07152d234b70', 2, 8, 192, 1, 2019),
(3, 'C03.020.003', 'Citra Dewi', '202cb962ac59075b964b07152d234b70', 3, 7, 168, 1, 2020),
(4, 'C04.017.004', 'Dedi Kurniawan', '202cb962ac59075b964b07152d234b70', 4, 5, 120, 1, 2017),
(5, 'C05.022.005', 'Eka Putri', '202cb962ac59075b964b07152d234b70', 5, 4, 96, 1, 2022),
(6, 'C06.018.006', 'Fajar Nugroho', '202cb962ac59075b964b07152d234b70', 6, 3, 72, 1, 2018),
(7, 'C07.023.007', 'Gita Sari', '202cb962ac59075b964b07152d234b70', 7, 2, 48, 1, 2023),
(8, 'C01.020.008', 'Hari Wijaya', '202cb962ac59075b964b07152d234b70', 1, 1, 24, 1, 2020),
(9, 'C02.021.009', 'Indra Permana', '202cb962ac59075b964b07152d234b70', 2, 6, 144, 1, 2021),
(10, 'C03.019.010', 'Joko Prasetyo', '202cb962ac59075b964b07152d234b70', 3, 8, 192, 1, 2019),
(11, 'C04.022.011', 'Kiki Rahmawati', '202cb962ac59075b964b07152d234b70', 4, 7, 168, 1, 2022),
(12, 'C05.017.012', 'Lia Puspita', '202cb962ac59075b964b07152d234b70', 5, 5, 120, 1, 2017),
(13, 'C06.023.013', 'Maman Suryadi', '202cb962ac59075b964b07152d234b70', 6, 4, 96, 1, 2023),
(14, 'C07.018.014', 'Nana Kusuma', '202cb962ac59075b964b07152d234b70', 7, 3, 72, 1, 2018),
(15, 'C01.019.015', 'Oki Setiawan', '202cb962ac59075b964b07152d234b70', 1, 2, 48, 1, 2019),
(16, 'C02.022.016', 'Puput Lestari', '202cb962ac59075b964b07152d234b70', 2, 1, 24, 1, 2022),
(17, 'C03.017.017', 'Rani Febrianti', '202cb962ac59075b964b07152d234b70', 3, 6, 144, 1, 2017),
(18, 'C04.023.018', 'Satria Aditya', '202cb962ac59075b964b07152d234b70', 4, 8, 192, 1, 2023),
(19, 'C05.018.019', 'Tia Permata', '202cb962ac59075b964b07152d234b70', 5, 7, 168, 1, 2018),
(20, 'C06.021.020', 'Ujang Supriadi', '202cb962ac59075b964b07152d234b70', 6, 5, 120, 1, 2021),
(21, 'C07.020.021', 'Vina Wulandari', '202cb962ac59075b964b07152d234b70', 7, 4, 96, 1, 2020),
(22, 'C01.023.022', 'Wahyu Pratama', '202cb962ac59075b964b07152d234b70', 1, 3, 72, 1, 2023),
(23, 'C02.017.023', 'Yuli Astuti', '202cb962ac59075b964b07152d234b70', 2, 2, 48, 1, 2017),
(24, 'C03.022.024', 'Zaki Ramadhan', '202cb962ac59075b964b07152d234b70', 3, 1, 24, 1, 2022),
(25, 'C04.020.025', 'Ade Kurniawan', '202cb962ac59075b964b07152d234b70', 4, 6, 144, 1, 2020),
(26, 'C05.021.026', 'Bella Sari', '202cb962ac59075b964b07152d234b70', 5, 8, 192, 1, 2021),
(27, 'C06.019.027', 'Cahya Putra', '202cb962ac59075b964b07152d234b70', 6, 7, 168, 1, 2019),
(28, 'C07.022.028', 'Dina Puspita', '202cb962ac59075b964b07152d234b70', 7, 5, 120, 1, 2022),
(29, 'C01.018.029', 'Eko Prasetyo', '202cb962ac59075b964b07152d234b70', 1, 4, 96, 1, 2018),
(30, 'C02.023.030', 'Fani Lestari', '202cb962ac59075b964b07152d234b70', 2, 3, 72, 1, 2023),
(31, 'C03.021.031', 'Gani Suryadi', '202cb962ac59075b964b07152d234b70', 3, 2, 48, 1, 2021),
(32, 'C04.019.032', 'Hana Wulandari', '202cb962ac59075b964b07152d234b70', 4, 1, 24, 1, 2019),
(33, 'C05.020.033', 'Irfan Permana', '202cb962ac59075b964b07152d234b70', 5, 6, 144, 1, 2020),
(34, 'C06.022.034', 'Jeni Rahmawati', '202cb962ac59075b964b07152d234b70', 6, 8, 192, 1, 2022),
(35, 'C07.017.035', 'Koko Prasetyo', '202cb962ac59075b964b07152d234b70', 7, 7, 168, 1, 2017),
(36, 'C01.022.036', 'Lina Permata', '202cb962ac59075b964b07152d234b70', 1, 5, 120, 1, 2022),
(37, 'C02.020.037', 'Mira Sari', '202cb962ac59075b964b07152d234b70', 2, 4, 96, 1, 2020),
(38, 'C03.023.038', 'Nando Wijaya', '202cb962ac59075b964b07152d234b70', 3, 3, 72, 1, 2023),
(39, 'C04.021.039', 'Oka Setiawan', '202cb962ac59075b964b07152d234b70', 4, 2, 48, 1, 2021),
(40, 'C05.019.040', 'Pipa Lestari', '202cb962ac59075b964b07152d234b70', 5, 1, 24, 1, 2019),
(41, 'C06.020.041', 'Rama Aditya', '202cb962ac59075b964b07152d234b70', 6, 6, 144, 1, 2020),
(42, 'C07.021.042', 'Sari Puspita', '202cb962ac59075b964b07152d234b70', 7, 8, 192, 1, 2021),
(43, 'C01.019.043', 'Tono Prasetyo', '202cb962ac59075b964b07152d234b70', 1, 7, 168, 1, 2019),
(44, 'C02.022.044', 'Umi Astuti', '202cb962ac59075b964b07152d234b70', 2, 5, 120, 1, 2022),
(45, 'C03.018.045', 'Vino Permana', '202cb962ac59075b964b07152d234b70', 3, 4, 96, 1, 2018),
(46, 'C04.023.046', 'Wati Wulandari', '202cb962ac59075b964b07152d234b70', 4, 3, 72, 1, 2023),
(47, 'C05.021.047', 'Yudi Kurniawan', '202cb962ac59075b964b07152d234b70', 5, 2, 48, 1, 2021),
(48, 'C06.019.048', 'Zara Permata', '202cb962ac59075b964b07152d234b70', 6, 1, 24, 1, 2019),
(49, 'C07.020.049', 'Adi Nugroho', '202cb962ac59075b964b07152d234b70', 7, 6, 144, 1, 2020),
(50, 'C01.023.050', 'Bina Sari', '202cb962ac59075b964b07152d234b70', 1, 8, 192, 1, 2023),
(51, 'C02.017.051', 'Caca Putri', '202cb962ac59075b964b07152d234b70', 2, 7, 168, 1, 2017),
(52, 'C03.022.052', 'Dika Pratama', '202cb962ac59075b964b07152d234b70', 3, 5, 120, 1, 2022),
(53, 'C04.020.053', 'Evi Lestari', '202cb962ac59075b964b07152d234b70', 4, 4, 96, 1, 2020),
(54, 'C05.023.054', 'Firman Wijaya', '202cb962ac59075b964b07152d234b70', 5, 3, 72, 1, 2023),
(55, 'C06.021.055', 'Gina Puspita', '202cb962ac59075b964b07152d234b70', 6, 2, 48, 1, 2021),
(56, 'C07.019.056', 'Hendra Permana', '202cb962ac59075b964b07152d234b70', 7, 1, 24, 1, 2019),
(57, 'C01.020.057', 'Intan Permata', '202cb962ac59075b964b07152d234b70', 1, 6, 144, 1, 2020),
(58, 'C02.023.058', 'Jaka Prasetyo', '202cb962ac59075b964b07152d234b70', 2, 8, 192, 1, 2023),
(59, 'C03.017.059', 'Koko Kurniawan', '202cb962ac59075b964b07152d234b70', 3, 7, 168, 1, 2017),
(60, 'C04.022.060', 'Lala Wulandari', '202cb962ac59075b964b07152d234b70', 4, 5, 120, 1, 2022),
(61, 'C05.018.061', 'Mila Sari', '202cb962ac59075b964b07152d234b70', 5, 4, 96, 1, 2018),
(62, 'C06.023.062', 'Nana Putri', '202cb962ac59075b964b07152d234b70', 6, 3, 72, 1, 2023),
(63, 'C07.021.063', 'Omar Wijaya', '202cb962ac59075b964b07152d234b70', 7, 2, 48, 1, 2021),
(64, 'C01.019.064', 'Pipa Lestari', '202cb962ac59075b964b07152d234b70', 1, 1, 24, 1, 2019),
(65, 'C02.020.065', 'Rama Aditya', '202cb962ac59075b964b07152d234b70', 2, 6, 144, 1, 2020),
(66, 'C03.023.066', 'Sari Puspita', '202cb962ac59075b964b07152d234b70', 3, 8, 192, 1, 2023),
(67, 'C04.017.067', 'Tono Prasetyo', '202cb962ac59075b964b07152d234b70', 4, 7, 168, 1, 2017),
(68, 'C05.022.068', 'Umi Astuti', '202cb962ac59075b964b07152d234b70', 5, 5, 120, 1, 2022),
(71, 'C01.021.071', 'Yudi', '202cb962ac59075b964b07152d234b70', 0, 2, 48, 1, 2021),
(72, 'C02.018.072', 'Zara', '202cb962ac59075b964b07152d234b70', 0, 1, 24, 1, 2024);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_matkul`
--

CREATE TABLE `tbl_matkul` (
  `mkl_id` int NOT NULL,
  `per_id` int NOT NULL,
  `jrs_id` int NOT NULL,
  `matkul` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `semester` int NOT NULL,
  `ruang` varchar(55) COLLATE utf8mb4_general_ci NOT NULL,
  `hari_id` int NOT NULL,
  `waktu` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_matkul`
--

INSERT INTO `tbl_matkul` (`mkl_id`, `per_id`, `jrs_id`, `matkul`, `semester`, `ruang`, `hari_id`, `waktu`) VALUES
(1, 1, 1, 'Akuntansi Dasar', 1, '101', 1, '08:00:00'),
(2, 2, 1, 'Akuntansi Keuangan', 2, '102', 2, '09:00:00'),
(3, 3, 1, 'Akuntansi Manajemen', 3, '103', 3, '10:00:00'),
(4, 4, 1, 'Akuntansi Pajak', 4, '104', 4, '11:00:00'),
(5, 5, 1, 'Akuntansi Sektor Publik', 5, '105', 5, '12:00:00'),
(6, 6, 1, 'Auditing', 6, '106', 1, '13:00:00'),
(7, 7, 1, 'Etika Profesi Akuntan', 7, '107', 2, '14:00:00'),
(8, 8, 1, 'Sistem Informasi Akuntansi', 8, 'Lab SI', 3, '15:00:00'),
(9, 9, 1, 'Akuntansi Biaya', 9, '108', 4, '16:00:00'),
(10, 10, 1, 'Akuntansi Internasional', 10, '109', 5, '17:00:00'),
(11, 11, 2, 'Manajemen Dasar', 1, '201', 1, '08:00:00'),
(12, 12, 2, 'Manajemen Sumber Daya Manusia', 2, '202', 2, '09:00:00'),
(13, 1, 2, 'Manajemen Pemasaran', 3, '203', 3, '10:00:00'),
(14, 4, 2, 'Manajemen Keuangan', 4, '204', 4, '11:00:00'),
(15, 5, 2, 'Manajemen Operasional', 5, '205', 5, '12:00:00'),
(16, 6, 2, 'Manajemen Strategi', 6, '206', 1, '13:00:00'),
(17, 7, 2, 'Manajemen Kewirausahaan', 7, '207', 2, '14:00:00'),
(18, 8, 2, 'Manajemen Perubahan', 8, '208', 3, '15:00:00'),
(19, 9, 2, 'Manajemen Mutu', 9, '209', 4, '16:00:00'),
(20, 2, 2, 'Manajemen Proyek', 10, '210', 5, '17:00:00'),
(21, 1, 3, 'Bahasa Inggris Dasar', 1, '301', 1, '08:00:00'),
(22, 2, 3, 'Bahasa Inggris Bisnis', 2, '302', 2, '09:00:00'),
(23, 3, 3, 'Bahasa Inggris Akademik', 3, '303', 3, '10:00:00'),
(24, 4, 3, 'Bahasa Inggris untuk Guru', 4, '304', 4, '11:00:00'),
(25, 5, 3, 'Bahasa Inggris untuk Penerjemah', 5, '305', 5, '12:00:00'),
(26, 6, 3, 'Bahasa Inggris untuk Peneliti', 6, '306', 1, '13:00:00'),
(27, 7, 3, 'Bahasa Inggris untuk Media', 7, '307', 2, '14:00:00'),
(28, 8, 3, 'Bahasa Inggris untuk Pariwisata', 8, '308', 3, '15:00:00'),
(29, 9, 3, 'Bahasa Inggris untuk Kesehatan', 9, '309', 4, '16:00:00'),
(30, 3, 3, 'Bahasa Inggris untuk Teknologi', 10, '310', 5, '17:00:00'),
(31, 3, 4, 'Psikologi Umum', 1, '401', 1, '08:00:00'),
(32, 2, 4, 'Psikologi Perkembangan', 2, '402', 2, '09:00:00'),
(33, 3, 4, 'Psikologi Sosial', 3, '403', 3, '10:00:00'),
(34, 4, 4, 'Psikologi Klinis', 4, '404', 4, '11:00:00'),
(35, 5, 4, 'Psikologi Pendidikan', 5, '405', 5, '12:00:00'),
(36, 6, 4, 'Psikologi Industri dan Organisasi', 6, '406', 1, '13:00:00'),
(37, 7, 4, 'Psikologi Kepribadian', 7, '407', 2, '14:00:00'),
(38, 8, 4, 'Psikologi Kognitif', 8, '408', 3, '15:00:00'),
(39, 9, 4, 'Psikologi Eksperimen', 9, '409', 4, '16:00:00'),
(40, 4, 4, 'Psikologi Konseling', 10, '410', 5, '17:00:00'),
(41, 1, 5, 'Matematika Diskrit', 1, '501', 1, '08:00:00'),
(42, 2, 5, 'Algoritma dan Struktur Data', 2, '502', 2, '09:00:00'),
(43, 3, 5, 'Pemrograman Berorientasi Objek', 3, '503', 3, '10:00:00'),
(44, 4, 5, 'Basis Data', 4, '504', 4, '11:00:00'),
(45, 5, 5, 'Sistem Operasi', 5, '505', 5, '12:00:00'),
(46, 6, 5, 'Jaringan Komputer', 6, '506', 1, '13:00:00'),
(47, 7, 5, 'Rekayasa Perangkat Lunak', 7, '507', 2, '14:00:00'),
(48, 8, 5, 'Kecerdasan Buatan', 8, 'Lab AI', 3, '15:00:00'),
(49, 9, 5, 'Grafika Komputer', 9, 'Lab GK', 4, '16:00:00'),
(50, 5, 5, 'Keamanan Informasi', 10, '508', 5, '17:00:00'),
(51, 1, 6, 'Pengantar Sistem Informasi', 1, '601', 1, '08:00:00'),
(52, 2, 6, 'Analisis dan Desain Sistem Informasi', 2, '602', 2, '09:00:00'),
(53, 3, 6, 'Manajemen Basis Data', 3, '603', 3, '10:00:00'),
(54, 4, 6, 'Sistem Informasi Manajemen', 4, '604', 4, '11:00:00'),
(55, 5, 6, 'Sistem Informasi Akuntansi', 5, '605', 5, '12:00:00'),
(56, 6, 6, 'Sistem Informasi Geografis', 6, '606', 1, '13:00:00'),
(57, 7, 6, 'Sistem Informasi E-Commerce', 7, '607', 2, '14:00:00'),
(58, 8, 6, 'Sistem Informasi Enterprise', 8, '608', 3, '15:00:00'),
(59, 9, 6, 'Sistem Informasi Berbasis Web', 9, 'Lab Web', 4, '16:00:00'),
(60, 6, 6, 'Sistem Informasi Berbasis Mobile', 10, 'Lab Mobile', 5, '17:00:00'),
(61, 1, 7, 'Kimia Dasar', 1, '701', 1, '08:00:00'),
(62, 2, 7, 'Biologi Dasar', 2, '702', 2, '09:00:00'),
(63, 3, 7, 'Mikrobiologi Pangan', 3, '703', 3, '10:00:00'),
(64, 4, 7, 'Teknologi Pengolahan Pangan', 4, '704', 4, '11:00:00'),
(65, 5, 7, 'Teknologi Fermentasi', 5, '705', 5, '12:00:00'),
(66, 6, 7, 'Teknologi Pangan Fungsional', 6, '706', 1, '13:00:00'),
(67, 7, 7, 'Teknologi Pangan Organik', 7, '707', 2, '14:00:00'),
(68, 8, 7, 'Teknologi Pangan Halal', 8, '708', 3, '15:00:00'),
(69, 9, 7, 'Teknologi Pangan Transgenik', 9, '709', 4, '16:00:00'),
(70, 7, 7, 'Teknologi Pangan Nano', 10, '710', 5, '17:00:00'),
(71, 8, 1, 'Statistika', 2, '111', 1, '08:00:00'),
(72, 9, 1, 'Matematika Keuangan', 3, '112', 2, '09:00:00'),
(73, 10, 1, 'Ekonomi Mikro', 4, '113', 3, '10:00:00'),
(74, 11, 1, 'Ekonomi Makro', 5, '114', 4, '11:00:00'),
(75, 12, 1, 'Hukum Bisnis', 6, '115', 5, '12:00:00'),
(76, 3, 1, 'Akuntansi Bank', 7, '116', 1, '13:00:00'),
(77, 4, 1, 'Akuntansi Syariah', 8, '117', 2, '14:00:00'),
(78, 5, 1, 'Akuntansi Forensik', 9, '118', 3, '15:00:00'),
(79, 6, 1, 'Akuntansi Lingkungan', 10, '119', 4, '16:00:00'),
(80, 7, 2, 'Ilmu Sosial Dasar', 1, '211', 1, '08:00:00'),
(81, 8, 2, 'Ekonomi Manajerial', 2, '212', 2, '09:00:00'),
(82, 9, 2, 'Statistika Bisnis', 3, '213', 3, '10:00:00'),
(83, 2, 2, 'Matematika Bisnis', 4, '214', 4, '11:00:00'),
(84, 1, 2, 'Hukum Bisnis', 5, '215', 5, '12:00:00'),
(85, 2, 2, 'Manajemen Risiko', 6, '216', 1, '13:00:00'),
(86, 3, 2, 'Manajemen Internasional', 7, '217', 2, '14:00:00'),
(87, 4, 2, 'Manajemen Inovasi', 8, '218', 3, '15:00:00'),
(88, 5, 2, 'Manajemen Etika', 9, '219', 4, '16:00:00'),
(89, 6, 2, 'Manajemen Konflik', 10, '220', 5, '17:00:00'),
(90, 7, 3, 'Bahasa Indonesia', 1, '311', 1, '08:00:00'),
(91, 8, 3, 'Bahasa Inggris untuk Sastra', 2, '312', 2, '09:00:00'),
(92, 9, 3, 'Sastra Indonesia', 3, '313', 3, '10:00:00'),
(93, 3, 3, 'Sastra Inggris', 4, '314', 4, '11:00:00'),
(94, 1, 3, 'Sastra Amerika', 5, '315', 5, '12:00:00'),
(95, 2, 3, 'Sastra Dunia', 6, '316', 1, '13:00:00'),
(96, 3, 3, 'Kritik Sastra', 7, '317', 2, '14:00:00'),
(97, 4, 3, 'Teori Sastra', 8, '318', 3, '15:00:00'),
(98, 5, 3, 'Penulisan Kreatif', 9, '319', 4, '16:00:00'),
(99, 6, 3, 'Penelitian Sastra', 10, '320', 5, '17:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_periode`
--

CREATE TABLE `tbl_periode` (
  `per_id` int NOT NULL,
  `thn_ajar` varchar(55) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_periode`
--

INSERT INTO `tbl_periode` (`per_id`, `thn_ajar`) VALUES
(1, '2018/2019 Genap'),
(2, '2018/2019 Ganjil'),
(3, '2019/2020 Genap'),
(4, '2019/2020 Ganjil'),
(5, '2020/2021 Genap'),
(6, '2020/2021 Ganjil'),
(7, '2021/2022 Genap'),
(8, '2021/2022 Ganjil'),
(9, '2022/2023 Genap'),
(10, '2022/2023 Ganjil'),
(11, '2023/2024 Genap'),
(12, '2023/2024 Ganjil');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  ADD PRIMARY KEY (`dsn_id`);

--
-- Indexes for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
  ADD PRIMARY KEY (`hari_id`);

--
-- Indexes for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  ADD PRIMARY KEY (`jrs_id`);

--
-- Indexes for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  ADD PRIMARY KEY (`mhs_id`);

--
-- Indexes for table `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  ADD PRIMARY KEY (`mkl_id`);

--
-- Indexes for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  ADD PRIMARY KEY (`per_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_dosen`
--
ALTER TABLE `tbl_dosen`
  MODIFY `dsn_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `tbl_hari`
--
ALTER TABLE `tbl_hari`
  MODIFY `hari_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_jurusan`
--
ALTER TABLE `tbl_jurusan`
  MODIFY `jrs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `tbl_mahasiswa`
--
ALTER TABLE `tbl_mahasiswa`
  MODIFY `mhs_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=75;

--
-- AUTO_INCREMENT for table `tbl_matkul`
--
ALTER TABLE `tbl_matkul`
  MODIFY `mkl_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `tbl_periode`
--
ALTER TABLE `tbl_periode`
  MODIFY `per_id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
