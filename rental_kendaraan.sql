-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2024 at 04:51 AM
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
-- Database: `rental_kendaraan`
--

-- --------------------------------------------------------

--
-- Table structure for table `kendaraan`
--

CREATE TABLE `kendaraan` (
  `id_kendaraan` int(11) NOT NULL,
  `nama_kendaraan` varchar(30) NOT NULL,
  `tipe_kendaraan` varchar(30) NOT NULL,
  `plat` varchar(15) NOT NULL,
  `harga` int(11) NOT NULL,
  `status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kendaraan`
--

INSERT INTO `kendaraan` (`id_kendaraan`, `nama_kendaraan`, `tipe_kendaraan`, `plat`, `harga`, `status`) VALUES
(3, 'Camry', 'Motor', 'B 6532 OP', 200000, 'Tersedia'),
(4, 'Gallardog', 'Mobil', 'KB 2331 TR', 400000, 'Tersedia'),
(6, 'Wulling', 'Mobil', 'AE 5622 XY', 30000, 'Tersedia'),
(7, 'Terrios', 'Mobil', 'YK 6521 QW', 59000, 'Tersedia'),
(8, 'Mercedes SLS', 'Mobil', 'AE 4523 YZ', 750000, 'Tersedia'),
(9, 'BWM Garbio', 'Motor', 'AT 7621 RE', 56000, 'Tersedia'),
(10, 'Wulling', 'Mobil', 'AE 5622 XYZ', 30000, 'Tidak Tersedia');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`) VALUES
('admin', 'admin'),
('may', 'may'),
('ren', 'ren'),
('may', 'may'),
('rio', 'rio'),
('yuki', 'yuki'),
('wahyu123', '123');

-- --------------------------------------------------------

--
-- Table structure for table `peminjaman`
--

CREATE TABLE `peminjaman` (
  `kode_peminjaman` int(11) NOT NULL,
  `nama_customer` varchar(30) NOT NULL,
  `nik` varchar(30) NOT NULL,
  `no_telp` varchar(17) NOT NULL,
  `lama_sewa` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `id_kendaraan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `peminjaman`
--

INSERT INTO `peminjaman` (`kode_peminjaman`, `nama_customer`, `nik`, `no_telp`, `lama_sewa`, `total`, `id_kendaraan`) VALUES
(4, 'Jagad Damai', '123221', '082111', 2, 600000, 2),
(12, 'wqweq', '823', '32', 2, 112000, 9),
(14, 'tai', '98812121', '0982211', 2, 1500000, 8),
(15, 'ratautil', '737182312', '0821231', 2, 600000, 2),
(18, 'whyyyyy', '3333', '4444', 3, 1200000, 4),
(19, 'EGGY', '6969', '777', 5, 300000, 12),
(22, 'as', 'as', '12', 2, 400000, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kendaraan`
--
ALTER TABLE `kendaraan`
  ADD PRIMARY KEY (`id_kendaraan`);

--
-- Indexes for table `peminjaman`
--
ALTER TABLE `peminjaman`
  ADD PRIMARY KEY (`kode_peminjaman`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kendaraan`
--
ALTER TABLE `kendaraan`
  MODIFY `id_kendaraan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `peminjaman`
--
ALTER TABLE `peminjaman`
  MODIFY `kode_peminjaman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
