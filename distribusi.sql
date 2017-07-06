-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 13, 2017 at 05:39 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `distribusi`
--

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `id_kelas` varchar(45) NOT NULL,
  `nim` varchar(255) NOT NULL,
  `id_makul` varchar(255) NOT NULL,
  `id_dosen` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `krs`
--

CREATE TABLE `krs` (
  `nim` varchar(10) NOT NULL,
  `id_makul` varchar(10) NOT NULL,
  `tahun` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `krs`
--

INSERT INTO `krs` (`nim`, `id_makul`, `tahun`) VALUES
('L200140001', 'INF-001', 20171);

-- --------------------------------------------------------

--
-- Table structure for table `mahasiswa`
--

CREATE TABLE `mahasiswa` (
  `nim` varchar(10) NOT NULL,
  `nama_mhs` varchar(255) NOT NULL,
  `alamat_mhs` varchar(255) NOT NULL,
  `no_telp_mhs` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mahasiswa`
--

INSERT INTO `mahasiswa` (`nim`, `nama_mhs`, `alamat_mhs`, `no_telp_mhs`) VALUES
('L200140001', 'Muhammad Miftakhul Janan', 'Boyolali', '089890890190'),
('L200140002', 'Anggit Rahmawati', 'Boyolali', '087834778938');

-- --------------------------------------------------------

--
-- Table structure for table `makul`
--

CREATE TABLE `makul` (
  `id_makul` varchar(255) NOT NULL,
  `nama_makul` varchar(255) NOT NULL,
  `sifat_makul` varchar(45) NOT NULL,
  `sks` int(1) NOT NULL,
  `smt` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `makul`
--

INSERT INTO `makul` (`id_makul`, `nama_makul`, `sifat_makul`, `sks`, `smt`) VALUES
('INF-002', 'Algoritma Dan Pemrograman Dasar', 'wajib', 3, 1),
('INF-003', 'Numerik', 'wajib', 3, 1),
('INF-004', 'Pemrograman Web Statis', 'wajib', 3, 1),
('INF-005', 'Aljabar dan Matrik', 'wajib', 3, 1),
('INF-006', 'Praktikum Pemrogran Web Statis', 'wajib', 3, 1),
('INF-007', 'Pemrograman Basisdata', 'wajib', 3, 1),
('INF-008', 'Sistem Informasi', 'wajib', 3, 1),
('INF-001', 'Kalkulus', 'wajib', 3, 1),
('INF-009', 'Perancangan Sistem Informasi', 'wajib', 3, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mahasiswa`
--
ALTER TABLE `mahasiswa`
  ADD PRIMARY KEY (`nim`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
