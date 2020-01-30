-- phpMyAdmin SQL Dump
-- version 4.7.9
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2020 at 12:44 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbpt`
--

-- --------------------------------------------------------

--
-- Table structure for table `perumahan`
--

CREATE TABLE `perumahan` (
  `no` int(4) NOT NULL,
  `no_rumah` varchar(10) NOT NULL,
  `alamat` varchar(50) NOT NULL,
  `nama_pembeli` varchar(30) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `tgl_masuk` date NOT NULL,
  `keterangan` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `perumahan`
--

INSERT INTO `perumahan` (`no`, `no_rumah`, `alamat`, `nama_pembeli`, `no_telp`, `tgl_masuk`, `keterangan`) VALUES
(1, 'A1', 'Jalan Durian', 'Agus Irwansyah', '081234567890', '2020-01-02', 'Kredit 15 Tahun'),
(2, 'A2', 'Jl. Durian', 'Ridwan', '081366785765', '2020-01-04', 'Kredit 15 Tahun'),
(3, 'A3', 'Jl. Durian', 'Rahmat', '081244577729', '2020-01-07', 'Kredit 10 Tahun'),
(4, 'B2', 'Jl. Durian', 'Ema Daniar', '085755432210', '2020-01-09', 'Kredit 10 Tahun'),
(5, 'B4', 'Jl. Durian', 'Sundari', '081976662890', '2020-01-18', 'Lunas');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `username` varchar(30) NOT NULL,
  `level` int(3) NOT NULL,
  `password` varchar(50) NOT NULL,
  `nama_lengkap` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `keterangan` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`username`, `level`, `password`, `nama_lengkap`, `email`, `keterangan`) VALUES
('Ali', 1, '25d55ad283aa400af464c76d713c07ad', 'Ali Sabar Sagala', 'alisabar95@gmail.com', 'Administrator');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `perumahan`
--
ALTER TABLE `perumahan`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `perumahan`
--
ALTER TABLE `perumahan`
  MODIFY `no` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
