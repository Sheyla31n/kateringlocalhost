-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 26, 2024 at 08:09 PM
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
-- Database: `basisdata`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpesan`
--

CREATE TABLE `detailpesan` (
  `ID_DETAIL` int(20) NOT NULL,
  `ID_PESANAN` int(10) NOT NULL,
  `ID_PRODUK` int(20) NOT NULL,
  `qty` int(20) NOT NULL,
  `Harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detailpesan`
--

INSERT INTO `detailpesan` (`ID_DETAIL`, `ID_PESANAN`, `ID_PRODUK`, `qty`, `Harga`) VALUES
(12, 12, 3, 1, 10000),
(16, 15, 3, 1, 10000),
(17, 15, 8, 1, 15000),
(18, 15, 14, 1, 0),
(20, 17, 6, 1, 12000),
(21, 17, 10, 1, 5000),
(22, 18, 15, 1, 10000),
(23, 19, 3, 1, 10000),
(24, 20, 3, 1, 10000),
(25, 21, 3, 1, 10000),
(26, 22, 3, 1, 10000),
(28, 24, 3, 1, 10000),
(29, 24, 4, 1, 10000),
(30, 25, 9, 1, 8000),
(34, 28, 20, 1, 5000),
(35, 28, 12, 1, 4000),
(36, 28, 15, 1, 10000),
(37, 29, 6, 1, 12000),
(38, 30, 18, 1, 2000),
(48, 40, 13, 10, 8000),
(63, 46, 3, 1, 10000),
(64, 46, 7, 1, 10000),
(65, 46, 6, 1, 12000),
(66, 46, 11, 3, 6000),
(70, 49, 19, 1, 10000),
(71, 49, 17, 1, 8000),
(72, 49, 16, 1, 7000),
(74, 51, 8, 1, 15000),
(75, 51, 6, 1, 12000),
(77, 53, 4, 1, 10000),
(78, 53, 5, 1, 10000),
(80, 55, 6, 1, 12000),
(81, 55, 7, 1, 10000),
(83, 57, 9, 1, 8000),
(84, 57, 8, 1, 15000),
(87, 60, 18, 3, 2000),
(88, 61, 15, 1, 10000),
(89, 62, 15, 1, 10000),
(90, 62, 17, 1, 8000);

-- --------------------------------------------------------

--
-- Table structure for table `favorit`
--

CREATE TABLE `favorit` (
  `ID_FAVORIT` int(10) NOT NULL,
  `ID_PRODUK` int(20) NOT NULL,
  `ID_USER` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorit`
--

INSERT INTO `favorit` (`ID_FAVORIT`, `ID_PRODUK`, `ID_USER`) VALUES
(2, 3, 4),
(3, 7, 5),
(4, 9, 5),
(5, 6, 5),
(6, 4, 5),
(7, 15, 5),
(8, 18, 5),
(9, 4, 4),
(10, 10, 4);

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `ID_FEEDBACK` int(20) NOT NULL,
  `ID_USER` int(10) NOT NULL,
  `ID_PESANAN` int(10) NOT NULL,
  `isi` varchar(100) NOT NULL,
  `tanggal_feedback` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`ID_FEEDBACK`, `ID_USER`, `ID_PESANAN`, `isi`, `tanggal_feedback`) VALUES
(1, 4, 20, 'enak', '2024-12-24 08:55:22.'),
(2, 5, 18, 'sangat enak', '2024-12-24 12:17:20.'),
(3, 4, 12, 'enak', '2024-12-24 15:05:52.');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `ID_KATEGORI` int(20) NOT NULL,
  `nama_kategori` varchar(20) NOT NULL,
  `kode_kategori` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`ID_KATEGORI`, `nama_kategori`, `kode_kategori`) VALUES
(1, 'makanan', 'M1'),
(2, 'minuman', 'M2'),
(3, 'snack', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_USER` int(10) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `no_hp` varchar(20) NOT NULL,
  `nama_pelanggan` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`ID_USER`, `username`, `password`, `no_hp`, `nama_pelanggan`) VALUES
(3, 'revita', '123', '08786623568', 'revita'),
(4, 'shey', '123456', '086547', 'Laree'),
(5, 'lare', '123', '087855168633', 'Lare');

-- --------------------------------------------------------

--
-- Table structure for table `pembayaran`
--

CREATE TABLE `pembayaran` (
  `ID_PEMBAYARAN` int(11) NOT NULL,
  `ID_PESANAN` int(11) NOT NULL,
  `metode_pembayaran` varchar(10) NOT NULL,
  `waktu_pembayaran` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembayaran`
--

INSERT INTO `pembayaran` (`ID_PEMBAYARAN`, `ID_PESANAN`, `metode_pembayaran`, `waktu_pembayaran`) VALUES
(1, 20, 'Cash', '2024-12-24 06:53:08'),
(2, 21, 'Transfer', '2024-12-24 06:57:37'),
(3, 22, 'Cash', '2024-12-24 07:10:15'),
(4, 24, 'Cash', '2024-12-24 12:16:39'),
(5, 25, 'Transfer', '2024-12-24 12:56:57'),
(6, 28, 'Cash', '2024-12-24 12:58:07'),
(7, 29, 'Transfer', '2024-12-24 12:59:21'),
(8, 30, 'Cash', '2024-12-24 12:59:59'),
(9, 40, 'Cash', '2024-12-24 13:00:53'),
(10, 46, 'Cash', '2024-12-24 13:01:39'),
(11, 49, 'Cash', '2024-12-24 13:02:22'),
(12, 51, 'Cash', '2024-12-24 13:02:59'),
(13, 53, 'Cash', '2024-12-24 13:05:16'),
(14, 55, 'Cash', '2024-12-24 13:06:23'),
(15, 57, 'Cash', '2024-12-24 13:07:13'),
(16, 60, 'Cash', '2024-12-24 13:07:49'),
(17, 62, 'Cash', '2024-12-24 15:03:19');

-- --------------------------------------------------------

--
-- Table structure for table `pengiriman`
--

CREATE TABLE `pengiriman` (
  `ID_PENGIRIMAN` int(11) NOT NULL,
  `ID_PESANAN` int(10) NOT NULL,
  `tarif` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengiriman`
--

INSERT INTO `pengiriman` (`ID_PENGIRIMAN`, `ID_PESANAN`, `tarif`) VALUES
(1, 20, 5000),
(2, 21, 15000),
(3, 22, 5000),
(4, 24, 5000),
(5, 25, 15000),
(6, 28, 10000),
(7, 29, 15000),
(8, 30, 5000),
(9, 40, 15000),
(10, 46, 10000),
(11, 49, 10000),
(12, 51, 5000),
(13, 53, 15000),
(14, 55, 5000),
(15, 57, 15000),
(16, 60, 10000),
(17, 62, 5000);

-- --------------------------------------------------------

--
-- Table structure for table `pesanan`
--

CREATE TABLE `pesanan` (
  `ID_PESANAN` int(20) NOT NULL,
  `ID_USER` int(10) DEFAULT NULL,
  `tanggal_pesan` datetime NOT NULL,
  `alamat` varchar(20) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `total_harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pesanan`
--

INSERT INTO `pesanan` (`ID_PESANAN`, `ID_USER`, `tanggal_pesan`, `alamat`, `catatan`, `total_harga`) VALUES
(12, 4, '2024-12-24 05:59:57', 'Ketintang', '', 15000),
(15, 4, '2024-12-24 06:08:25', 'Ngagel', '', 40000),
(17, 4, '2024-12-24 06:26:52', 'Ketintang', 'gausah pake bakso', 22000),
(18, 4, '2024-12-24 06:40:41', 'Wonokromo', '', 20000),
(19, 4, '2024-12-24 06:46:17', 'Ketintang', 'ggg', 15000),
(20, 4, '2024-12-24 06:52:59', 'Ketintang', 'dada ya', 15000),
(21, 4, '2024-12-24 06:57:27', 'Ngagel', 'paha', 25000),
(22, 4, '2024-12-24 07:10:01', 'Ketintang', '', 15000),
(24, 5, '2024-12-24 12:16:15', 'Ketintang', 'tambahkan sambal di ayam geprek', 25000),
(25, 5, '2024-12-24 12:56:50', 'Ngagel', 'tambahkan kerupuk', 23000),
(28, 5, '2024-12-24 12:57:56', 'Wonokromo', 'pisahkan es', 29000),
(29, 5, '2024-12-24 12:59:14', 'Ngagel', 'pisahkan saos', 27000),
(30, 5, '2024-12-24 12:59:53', 'Ketintang', '-', 7000),
(40, 5, '2024-12-24 13:00:43', 'Ngagel', 'esnya dipisah', 23000),
(46, 5, '2024-12-24 13:01:31', 'Wonokromo', 'es dipisah', 48000),
(49, 5, '2024-12-24 13:02:15', 'Wonokromo', '', 35000),
(51, 5, '2024-12-24 13:02:52', 'Ketintang', '', 32000),
(53, 5, '2024-12-24 13:05:09', 'Ngagel', 'tambah kerupuk', 35000),
(55, 5, '2024-12-24 13:06:18', 'Ketintang', 'saos dipisah', 27000),
(57, 5, '2024-12-24 13:07:06', 'Ngagel', '', 38000),
(60, 5, '2024-12-24 13:07:43', 'Wonokromo', '', 12000),
(61, NULL, '0000-00-00 00:00:00', '', '', 0),
(62, 4, '2024-12-24 15:02:37', 'Ketintang', 'ff', 23000);

-- --------------------------------------------------------

--
-- Table structure for table `produk`
--

CREATE TABLE `produk` (
  `ID_PRODUK` int(20) NOT NULL,
  `ID_KATEGORI` int(20) NOT NULL,
  `nama_produk` varchar(100) NOT NULL,
  `deskripsi` varchar(100) NOT NULL,
  `harga` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `produk`
--

INSERT INTO `produk` (`ID_PRODUK`, `ID_KATEGORI`, `nama_produk`, `deskripsi`, `harga`) VALUES
(3, 1, 'Ayam Geprek', 'ayam digeprek', 10000),
(4, 1, 'Nasi Goreng', 'nasinya digoreng', 10000),
(5, 1, 'Mie Goreng', 'mie goreng kering', 10000),
(6, 1, 'Bakso', 'sapi bukan tikus', 12000),
(7, 1, 'Mie Ayam', 'mie toping ayam', 10000),
(8, 1, 'Burger', 'roti isi daging', 15000),
(9, 1, 'Pecel', 'sayur bukan lele', 8000),
(10, 2, 'Es Teh Anget', 'yang mana?', 5000),
(11, 2, 'Teh Lemon', '+ bubuk lemon', 6000),
(12, 2, 'Nutrisari/Pop Ice', 'milih rasa', 4000),
(13, 2, 'Jus Buah', 'buah apa?', 8000),
(14, 2, 'Air Putih', 'free', 0),
(15, 3, 'cireng', 'yang isi/rujak', 10000),
(16, 3, 'Tahu Krispi', 'tahu tepung kering', 7000),
(17, 3, 'Roti Bakar', 'coklat keju aja', 8000),
(18, 3, 'Persatean', 'usus,ati,puyuh', 2000),
(19, 3, 'French Fries', 'kentang ', 10000),
(20, 3, 'tahu bulat', 'tahu digoreng dadakan Gurih!!', 5000),
(21, 1, 'nasi', 'g', 666);

-- --------------------------------------------------------

--
-- Table structure for table `status_pesanan`
--

CREATE TABLE `status_pesanan` (
  `ID_STATUS` int(11) NOT NULL,
  `ID_PESANAN` int(11) NOT NULL,
  `status_lama` varchar(10) NOT NULL,
  `status_baru` varchar(10) NOT NULL,
  `waktu_perubahan` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `status_pesanan`
--

INSERT INTO `status_pesanan` (`ID_STATUS`, `ID_PESANAN`, `status_lama`, `status_baru`, `waktu_perubahan`) VALUES
(1, 20, 'Dalam Pros', 'Pesanan Se', '2024-12-24 06:53:14'),
(2, 21, 'Dalam Pros', 'Pesanan Se', '2024-12-24 06:57:40'),
(3, 22, 'Dalam Pros', 'Pesanan Se', '2024-12-24 07:10:18'),
(4, 24, 'Dalam Pros', 'Pesanan Se', '2024-12-24 12:16:44'),
(5, 25, 'Dalam Pros', 'Pesanan Se', '2024-12-24 12:57:00'),
(6, 28, 'Dalam Pros', 'Pesanan Se', '2024-12-24 12:58:11'),
(7, 29, 'Dalam Pros', 'Pesanan Se', '2024-12-24 12:59:25'),
(8, 30, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:00:02'),
(9, 40, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:00:56'),
(10, 46, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:01:43'),
(11, 49, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:02:25'),
(12, 51, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:03:02'),
(13, 53, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:05:20'),
(14, 55, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:06:26'),
(15, 57, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:07:16'),
(16, 60, 'Dalam Pros', 'Pesanan Se', '2024-12-24 13:07:53'),
(17, 62, 'Dalam Pros', 'Pesanan Se', '2024-12-24 15:03:29');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpesan`
--
ALTER TABLE `detailpesan`
  ADD PRIMARY KEY (`ID_DETAIL`),
  ADD KEY `ID_PESANAN` (`ID_PESANAN`),
  ADD KEY `ID_PRODUK` (`ID_PRODUK`);

--
-- Indexes for table `favorit`
--
ALTER TABLE `favorit`
  ADD PRIMARY KEY (`ID_FAVORIT`),
  ADD KEY `ID_PRODUK` (`ID_PRODUK`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`ID_FEEDBACK`),
  ADD KEY `ID_PESANAN` (`ID_PESANAN`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`ID_KATEGORI`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_USER`);

--
-- Indexes for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD PRIMARY KEY (`ID_PEMBAYARAN`),
  ADD KEY `ID_PESANAN` (`ID_PESANAN`);

--
-- Indexes for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD PRIMARY KEY (`ID_PENGIRIMAN`),
  ADD KEY `ID_PESANAN` (`ID_PESANAN`);

--
-- Indexes for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD PRIMARY KEY (`ID_PESANAN`),
  ADD KEY `ID_USER` (`ID_USER`);

--
-- Indexes for table `produk`
--
ALTER TABLE `produk`
  ADD PRIMARY KEY (`ID_PRODUK`),
  ADD KEY `ID_KATEGORI` (`ID_KATEGORI`);

--
-- Indexes for table `status_pesanan`
--
ALTER TABLE `status_pesanan`
  ADD PRIMARY KEY (`ID_STATUS`),
  ADD KEY `ID_PESANAN` (`ID_PESANAN`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detailpesan`
--
ALTER TABLE `detailpesan`
  MODIFY `ID_DETAIL` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;

--
-- AUTO_INCREMENT for table `favorit`
--
ALTER TABLE `favorit`
  MODIFY `ID_FAVORIT` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `ID_FEEDBACK` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `ID_KATEGORI` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `ID_USER` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pembayaran`
--
ALTER TABLE `pembayaran`
  MODIFY `ID_PEMBAYARAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pengiriman`
--
ALTER TABLE `pengiriman`
  MODIFY `ID_PENGIRIMAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `pesanan`
--
ALTER TABLE `pesanan`
  MODIFY `ID_PESANAN` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `produk`
--
ALTER TABLE `produk`
  MODIFY `ID_PRODUK` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `status_pesanan`
--
ALTER TABLE `status_pesanan`
  MODIFY `ID_STATUS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpesan`
--
ALTER TABLE `detailpesan`
  ADD CONSTRAINT `detailpesan_ibfk_1` FOREIGN KEY (`ID_PESANAN`) REFERENCES `pesanan` (`ID_PESANAN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `detailpesan_ibfk_2` FOREIGN KEY (`ID_PRODUK`) REFERENCES `produk` (`ID_PRODUK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `favorit`
--
ALTER TABLE `favorit`
  ADD CONSTRAINT `favorit_ibfk_1` FOREIGN KEY (`ID_PRODUK`) REFERENCES `produk` (`ID_PRODUK`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `favorit_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `pelanggan` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `feedback`
--
ALTER TABLE `feedback`
  ADD CONSTRAINT `feedback_ibfk_1` FOREIGN KEY (`ID_PESANAN`) REFERENCES `pesanan` (`ID_PESANAN`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `feedback_ibfk_2` FOREIGN KEY (`ID_USER`) REFERENCES `pelanggan` (`ID_USER`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pembayaran`
--
ALTER TABLE `pembayaran`
  ADD CONSTRAINT `pembayaran_ibfk_1` FOREIGN KEY (`ID_PESANAN`) REFERENCES `pesanan` (`ID_PESANAN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pengiriman`
--
ALTER TABLE `pengiriman`
  ADD CONSTRAINT `pengiriman_ibfk_1` FOREIGN KEY (`ID_PESANAN`) REFERENCES `pesanan` (`ID_PESANAN`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `pesanan`
--
ALTER TABLE `pesanan`
  ADD CONSTRAINT `pesanan_ibfk_1` FOREIGN KEY (`ID_USER`) REFERENCES `pelanggan` (`ID_USER`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `produk`
--
ALTER TABLE `produk`
  ADD CONSTRAINT `produk_ibfk_1` FOREIGN KEY (`ID_KATEGORI`) REFERENCES `kategori` (`ID_KATEGORI`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `status_pesanan`
--
ALTER TABLE `status_pesanan`
  ADD CONSTRAINT `status_pesanan_ibfk_1` FOREIGN KEY (`ID_PESANAN`) REFERENCES `pesanan` (`ID_PESANAN`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
