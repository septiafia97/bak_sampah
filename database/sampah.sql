-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jan 19, 2024 at 07:23 AM
-- Server version: 8.0.35
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sampah`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_bukti_transaksi`
--

CREATE TABLE `tb_bukti_transaksi` (
  `no_nota` varchar(12) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jml` int NOT NULL,
  `nm_sampah` varchar(20) NOT NULL,
  `harga` int NOT NULL,
  `total` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_bukti_transaksi`
--

INSERT INTO `tb_bukti_transaksi` (`no_nota`, `tgl_transaksi`, `jml`, `nm_sampah`, `harga`, `total`) VALUES
('101150', '2022-03-12', 12, 'Botol Plastik', 4000, 48000),
('101151', '2022-03-14', 12, 'Besi Bekas', 6000, 72000),
('101150', '2022-03-12', 12, 'Botol Plastik', 4000, 48000),
('101153', '2024-01-19', 12, 'Besi Bekas', 5000, 60000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_client`
--

CREATE TABLE `tb_client` (
  `id_client` varchar(10) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `jenis` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_client`
--

INSERT INTO `tb_client` (`id_client`, `nama`, `alamat`, `jenis`) VALUES
('IDC001', 'asdasd1', 'Watansoppeng', 'pembeli'),
('none', '', '', 'penjual'),
('pengguna1', 'Pengguna 1', 'Watansoppeng', 'penjual'),
('pengguna2', 'Pengguna 2', 'Watansoppeng', 'penjual');

-- --------------------------------------------------------

--
-- Table structure for table `tb_sampah`
--

CREATE TABLE `tb_sampah` (
  `kd_sampah` varchar(8) NOT NULL,
  `nm_sampah` varchar(32) NOT NULL,
  `jns_sampah` varchar(15) NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `satuan` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_sampah`
--

INSERT INTO `tb_sampah` (`kd_sampah`, `nm_sampah`, `jns_sampah`, `harga_beli`, `harga_jual`, `satuan`) VALUES
('KDS001', 'Besi Bekasi', 'Non-Organik', 5000, 6000, 'Kg'),
('KDS002', 'Botol Plastik', 'Non-Organik', 4000, 5000, 'Kg');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi`
--

CREATE TABLE `tb_transaksi` (
  `id_transaksi` int NOT NULL,
  `id_client` varchar(12) NOT NULL,
  `tgl_transaksi` date NOT NULL,
  `jml` int NOT NULL,
  `kd_sampah` varchar(8) NOT NULL,
  `harga` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_transaksi`
--

INSERT INTO `tb_transaksi` (`id_transaksi`, `id_client`, `tgl_transaksi`, `jml`, `kd_sampah`, `harga`) VALUES
(101147, 'CL01', '2022-03-12', 12, 'KDS001', 5000),
(101148, 'none', '2022-03-12', 10, 'KDS001', 5000),
(101149, 'none', '2022-03-12', 4, 'KDS001', 5000),
(101150, 'none', '2022-03-12', 12, 'KDS002', 4000),
(101151, 'IDC001', '2022-03-14', 12, 'KDS001', 6000),
(101152, 'none', '2022-08-04', 10, 'KDS001', 5000),
(101153, 'none', '2024-01-19', 12, 'KDS001', 5000);

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `username` varchar(15) NOT NULL,
  `password` varchar(32) NOT NULL,
  `nama` varchar(32) NOT NULL,
  `level` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`username`, `password`, `nama`, `level`) VALUES
('admin', '21232f297a57a5a743894a0e4a801fc3', 'Mutmainna', 'admin'),
('pengguna', '8b097b8a86f9d6a991357d40d3d58634', 'Pengguna', 'masyarakat'),
('pimpinan', '90973652b88fe07d05a4304f0a945de8', 'Test', 'pimpinan');

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_transaksi`
-- (See below for the actual view)
--
CREATE TABLE `view_transaksi` (
`id_client` varchar(10)
,`nama` varchar(32)
,`alamat` varchar(50)
,`jenis` varchar(10)
,`id_transaksi` int
,`tgl_transaksi` date
,`jml` int
,`harga` int
,`kd_sampah` varchar(8)
,`nm_sampah` varchar(32)
,`jns_sampah` varchar(15)
,`satuan` varchar(10)
);

-- --------------------------------------------------------

--
-- Structure for view `view_transaksi`
--
DROP TABLE IF EXISTS `view_transaksi`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_transaksi`  AS SELECT `tb_client`.`id_client` AS `id_client`, `tb_client`.`nama` AS `nama`, `tb_client`.`alamat` AS `alamat`, `tb_client`.`jenis` AS `jenis`, `tb_transaksi`.`id_transaksi` AS `id_transaksi`, `tb_transaksi`.`tgl_transaksi` AS `tgl_transaksi`, `tb_transaksi`.`jml` AS `jml`, `tb_transaksi`.`harga` AS `harga`, `tb_sampah`.`kd_sampah` AS `kd_sampah`, `tb_sampah`.`nm_sampah` AS `nm_sampah`, `tb_sampah`.`jns_sampah` AS `jns_sampah`, `tb_sampah`.`satuan` AS `satuan` FROM ((`tb_client` join `tb_transaksi` on((`tb_client`.`id_client` = `tb_transaksi`.`id_client`))) join `tb_sampah` on((`tb_transaksi`.`kd_sampah` = `tb_sampah`.`kd_sampah`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_client`
--
ALTER TABLE `tb_client`
  ADD PRIMARY KEY (`id_client`);

--
-- Indexes for table `tb_sampah`
--
ALTER TABLE `tb_sampah`
  ADD PRIMARY KEY (`kd_sampah`);

--
-- Indexes for table `tb_transaksi`
--
ALTER TABLE `tb_transaksi`
  ADD PRIMARY KEY (`id_transaksi`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`username`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
