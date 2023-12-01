-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 01, 2023 at 09:32 AM
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
-- Database: `db_laundry`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `kode_admin` int(20) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `telepon` int(20) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `katasandi` varchar(10) NOT NULL,
  `jabatan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`kode_admin`, `nama`, `telepon`, `alamat`, `katasandi`, `jabatan`) VALUES
(8, 'Della', 828379, 'banjar', '11111', 'admin1'),
(9, 'joko', 283023, 'banjar', '983492', 'admin2'),
(10, 'yani', 238204, 'banjar', '22222', 'admin3'),
(11, 'ika', 493094, 'banjar', '33333', 'admin4'),
(12, 'siti', 923820, 'banjar', '55555', 'admin5'),
(13, 'adit', 2398203, 'angsana', '33333', 'admin6');

-- --------------------------------------------------------

--
-- Table structure for table `buat_akun`
--

CREATE TABLE `buat_akun` (
  `id user` int(20) NOT NULL,
  `username` varchar(25) NOT NULL,
  `password` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buat_akun`
--

INSERT INTO `buat_akun` (`id user`, `username`, `password`) VALUES
(1, 'Andy', '12345'),
(2, 'Aril', '2222'),
(3, 'Aprilia', '434334');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pemesanan`
--

CREATE TABLE `detail_pemesanan` (
  `id_detail` int(10) NOT NULL,
  `kode_pemesanan` int(12) NOT NULL,
  `id_paket` int(10) NOT NULL,
  `jumlah` varchar(10) NOT NULL,
  `berat` int(20) NOT NULL,
  `subtotal` varchar(10) NOT NULL,
  `ket_detail` varchar(35) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `detail_pemesanan`
--

INSERT INTO `detail_pemesanan` (`id_detail`, `kode_pemesanan`, `id_paket`, `jumlah`, `berat`, `subtotal`, `ket_detail`) VALUES
(1, 1, 1, '5', 7, '5', 'done'),
(2, 2, 2, '7', 6, '7', 'done'),
(3, 3, 3, '9', 9, '9', 'done'),
(4, 4, 4, '4', 3, '4', 'done'),
(5, 5, 5, '8', 5, '8', 'done');

-- --------------------------------------------------------

--
-- Table structure for table `paket_pelayanan`
--

CREATE TABLE `paket_pelayanan` (
  `id_paket` int(10) NOT NULL,
  `nama_paket` varchar(20) NOT NULL,
  `kategori_paket` int(15) NOT NULL,
  `jenis_paket` varchar(20) NOT NULL,
  `harga_paket` int(20) NOT NULL,
  `ket_paket` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `paket_pelayanan`
--

INSERT INTO `paket_pelayanan` (`id_paket`, `nama_paket`, `kategori_paket`, `jenis_paket`, `harga_paket`, `ket_paket`) VALUES
(1, 'paket kiloan', 1, 'santai', 8000, 'done'),
(2, 'paket dry cleaning', 2, 'medium', 10000, 'done'),
(3, 'paket self servis', 3, 'santai', 7000, 'done'),
(4, 'paket on demand', 4, 'medium', 12000, 'done'),
(5, 'paket 3 hours', 5, 'fast', 15000, 'done');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode_pelanggan` int(20) NOT NULL,
  `nama_pelanggan` varchar(30) NOT NULL,
  `no_pelanggan` int(15) NOT NULL,
  `alamat` varchar(30) NOT NULL,
  `tgl_daftar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`kode_pelanggan`, `nama_pelanggan`, `no_pelanggan`, `alamat`, `tgl_daftar`) VALUES
(1, 'Herlambang', 1, 'banjarmasin utara', '26112023'),
(2, 'Budi', 2, 'banjarmasin utara', '26112023'),
(3, 'nata', 3, 'banjarmasin utara', '26112023'),
(4, 'ridho', 4, 'banjarmasin utara', '26112023'),
(5, 'denanda', 5, 'banjarmasin utara', '26112023');

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan`
--

CREATE TABLE `pemesanan` (
  `kode_pemesanan` int(20) NOT NULL,
  `kode_pelanggan` int(20) NOT NULL,
  `kategori_pemesanan` varchar(20) NOT NULL,
  `ket_pemesanan` varchar(20) NOT NULL,
  `tgl_pemesanan` date NOT NULL,
  `tgl_pengambilan` date NOT NULL,
  `kode_admin` int(12) NOT NULL,
  `status_pemesanan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pemesanan`
--

INSERT INTO `pemesanan` (`kode_pemesanan`, `kode_pelanggan`, `kategori_pemesanan`, `ket_pemesanan`, `tgl_pemesanan`, `tgl_pengambilan`, `kode_admin`, `status_pemesanan`) VALUES
(1, 1, 'santai', 'laundry', '0000-00-00', '0000-00-00', 1, 'selesai'),
(2, 2, 'medium', 'laundry', '0000-00-00', '0000-00-00', 2, 'selesai'),
(3, 3, 'santai', 'laundry', '0000-00-00', '0000-00-00', 3, 'selesai'),
(4, 4, 'medium', 'laundry', '0000-00-00', '0000-00-00', 4, 'selesai'),
(5, 5, 'fast', 'laundry', '0000-00-00', '0000-00-00', 5, 'selesai');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `no_nota` int(20) NOT NULL,
  `kode_pemesanan` int(20) NOT NULL,
  `total_bayar` int(15) NOT NULL,
  `uang_bayar` int(10) NOT NULL,
  `uang_kembali` int(10) NOT NULL,
  `kode_admin` int(10) NOT NULL,
  `tgl_transaksi` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `transaksi`
--

INSERT INTO `transaksi` (`no_nota`, `kode_pemesanan`, `total_bayar`, `uang_bayar`, `uang_kembali`, `kode_admin`, `tgl_transaksi`) VALUES
(1, 1, 10000, 12000, 2000, 1, 27112023),
(2, 2, 20000, 30000, 8000, 2, 27112023),
(3, 3, 25000, 30000, 5000, 3, 27112023),
(4, 4, 20000, 14000, 6000, 4, 27112023),
(5, 5, 20000, 17000, 3000, 5, 27112023);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`kode_admin`);

--
-- Indexes for table `buat_akun`
--
ALTER TABLE `buat_akun`
  ADD PRIMARY KEY (`id user`);

--
-- Indexes for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  ADD PRIMARY KEY (`id_detail`);

--
-- Indexes for table `paket_pelayanan`
--
ALTER TABLE `paket_pelayanan`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`kode_pelanggan`);

--
-- Indexes for table `pemesanan`
--
ALTER TABLE `pemesanan`
  ADD PRIMARY KEY (`kode_pemesanan`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`no_nota`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `kode_admin` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `buat_akun`
--
ALTER TABLE `buat_akun`
  MODIFY `id user` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `detail_pemesanan`
--
ALTER TABLE `detail_pemesanan`
  MODIFY `id_detail` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `paket_pelayanan`
--
ALTER TABLE `paket_pelayanan`
  MODIFY `id_paket` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `kode_pelanggan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `pemesanan`
--
ALTER TABLE `pemesanan`
  MODIFY `kode_pemesanan` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `transaksi`
--
ALTER TABLE `transaksi`
  MODIFY `no_nota` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
