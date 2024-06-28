-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 28 Jun 2024 pada 19.17
-- Versi server: 10.6.18-MariaDB-cll-lve
-- Versi PHP: 8.1.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `digita74_stok`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `backset`
--

CREATE TABLE `backset` (
  `url` varchar(100) NOT NULL,
  `sessiontime` varchar(4) DEFAULT NULL,
  `footer` varchar(50) DEFAULT NULL,
  `themesback` varchar(2) DEFAULT NULL,
  `responsive` varchar(2) DEFAULT NULL,
  `namabisnis1` tinytext NOT NULL,
  `mode` varchar(1) NOT NULL,
  `batas` int(11) NOT NULL DEFAULT 0,
  `prefikbarcode` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `backset`
--

INSERT INTO `backset` (`url`, `sessiontime`, `footer`, `themesback`, `responsive`, `namabisnis1`, `mode`, `batas`, `prefikbarcode`) VALUES
('http://localhost/inventory/', '100', 'DjB', '4', '0', 'Code Null', '0', 0, 'ID');

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode` varchar(20) NOT NULL,
  `sku` varchar(20) NOT NULL,
  `nama` varchar(200) DEFAULT NULL,
  `hargabeli` int(11) DEFAULT NULL,
  `hargajual` int(11) DEFAULT NULL,
  `keterangan` varchar(200) DEFAULT NULL,
  `kategori` varchar(20) DEFAULT NULL,
  `satuan` varchar(20) NOT NULL,
  `terjual` int(10) DEFAULT NULL,
  `terbeli` int(11) DEFAULT NULL,
  `sisa` int(11) DEFAULT NULL,
  `stokmin` int(10) NOT NULL,
  `barcode` varchar(50) NOT NULL,
  `brand` text NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `expired` date NOT NULL,
  `warna` varchar(20) NOT NULL,
  `ukuran` varchar(10) NOT NULL,
  `avatar` varchar(300) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode`, `sku`, `nama`, `hargabeli`, `hargajual`, `keterangan`, `kategori`, `satuan`, `terjual`, `terbeli`, `sisa`, `stokmin`, `barcode`, `brand`, `lokasi`, `expired`, `warna`, `ukuran`, `avatar`, `no`) VALUES
('000001', 'SKU000001', 'MODEM DLINK DIR 612 ROBOT', 0, 0, '', 'Router', 'Pcs', 66, 52, 95, 20, 'BRG000001', 'Modem', '', '0000-00-00', '', '', 'dist/upload/', 6),
('000007', 'SKU000002', 'ONU 2PORT', 0, 0, '', 'Router', 'Pcs', 49, 44, 48, 10, 'BRG000007', 'Onu', '', '0000-00-00', '', '', 'dist/upload/', 7),
('000008', 'SKU000003', 'ONU 4 PORT', 0, 0, '', 'Router', 'Pcs', 51, 42, 55, 15, 'BRG000003', 'Onu', '', '0000-00-00', '', '', 'dist/upload/', 8),
('000009', 'SKU000004', 'HTB A', 0, 0, '', 'Media Converter', 'Pcs', 0, 0, 10, 3, 'BRG000004', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 9),
('000010', 'SKU00005', 'HTB B', 0, 0, '', 'Media Converter', 'Pcs', 0, 0, 9, 3, 'BRG00005', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 10),
('000011', 'SKU000011', 'HTB 6 FO 2 LAN', 0, 0, '', 'Media Converter', 'Pcs', 0, 0, 4, 1, 'BRG000011', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 11),
('000012', 'SKU000012', 'HTB 4 FO 4 LAN', 0, 0, '', 'Media Converter', 'Pcs', 0, 0, 6, 2, 'BRG000012', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 12),
('000013', 'SKU000013', 'HTB 3 FO 3 LAN', 0, 0, '', 'Media Converter', 'Pcs', 2, 0, 3, 2, 'BRG000013', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 13),
('000014', 'SKU000014', 'HTB 3 FO 2 LAN', 0, 0, '', 'Media Converter', 'Pcs', 0, 0, 3, 1, 'BRG000014', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 14),
('000015', 'SKU000015', 'HTB 2 FO 4 LAN', 0, 0, '', 'Media Converter', 'Pcs', 2, 7, 17, 4, 'BRG000015', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 15),
('000016', 'SKU000016', 'HTB 2 FO 6 LAN', 0, 0, '', 'Media Converter', 'Pcs', 0, 1, 9, 4, 'BRG000016', 'HTB', '', '0000-00-00', '', '', 'dist/upload/', 16),
('000017', 'SKU000017', 'SWITCH HUB 5 PORT', 0, 0, '', 'Switch', 'Pcs', 6, 6, 11, 3, 'BRG000017', 'Switch', '', '0000-00-00', '', '', 'dist/upload/', 17),
('000018', 'SKU000018', 'SWITCH HUB 8 PORT', 0, 0, '', 'Switch', 'Pcs', 1, 0, 4, 3, 'BRG000018', 'Switch', '', '0000-00-00', '', '', 'dist/upload/', 18),
('000019', 'SKU000019', 'RJ45', 0, 0, '', 'utility', 'PACK', 0, 0, 6, 3, 'BRG000019', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 19),
('000020', 'SKU000020', 'FASTCONECTOR', 0, 0, '', 'utility', 'Pcs', 0, 0, 87, 20, 'BRG000020', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 20),
('000021', 'SKU000021', 'ODP SPLITER 1:2', 0, 0, '', 'utility', 'Pcs', 16, 12, 23, 5, 'BRG000021', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 21),
('000022', 'SKU000022', 'ODP SPLITER 1:4', 0, 0, '', 'utility', 'Pcs', 5, 6, 16, 4, 'BRG000022', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 22),
('000023', 'SKU000023', 'ODP SPLITER 1:8', 0, 0, '', 'utility', 'Pcs', 1, 0, 1, 2, 'BRG000023', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 23),
('000024', 'SKU000024', 'CLEM BETON 8mm', 0, 0, '', 'utility', 'PACK', 5, 1, 47, 10, 'BRG000024', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 24),
('000025', 'SKU000025', 'ISOLASI', 0, 0, '', 'utility', 'Pcs', 4, 1, 11, 6, 'BRG000025', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 25),
('000026', 'SKU000026', 'FO PRECON 100Mtr', 0, 0, '', 'Kabel', 'roll', 11, 9, 138, 6, 'BRG000026', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 26),
('000027', 'SKU000027', 'FO PRECON 150Mtr', 0, 0, '', 'Kabel', 'roll', 5, 3, 32, 6, 'BRG000027', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 27),
('000028', 'SKU000028', 'FO 1core 3s - 1km', 0, 0, '', 'Kabel', 'roll', 0, 0, 1, 1, 'BRG000028', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 28),
('000029', 'SKU000029', 'FO 2core 3s - 1km', 0, 0, '', 'Kabel', 'roll', 0, 0, 0, 1, 'BRG000029', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 29),
('000030', 'SKU000030', 'FO 4core 3s - 1km', 0, 0, '', 'Kabel', 'roll', 0, 0, 1, 1, 'BRG000030', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 30),
('000031', 'SKU000031', 'Patch Cord', 0, 0, '', 'Kabel', 'Pcs', 24, 21, 349, 15, 'BRG000031', 'KABEL', '', '0000-00-00', '', '', 'dist/upload/', 31),
('000032', 'SKU000032', 'ADAPTOR 12V 1A', 0, 0, '', 'utility', 'Pcs', 69, 43, 226, 20, 'BRG000032', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 32),
('000033', 'SKU000033', 'ADAPTOR 12V 1,5A', 0, 0, '', 'utility', 'Pcs', 0, 2, 78, 10, 'BRG000033', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 33),
('000034', 'SKU000034', 'ADAPTOR 12V 2A', 0, 0, '', 'utility', 'Pcs', 0, 0, 70, 6, 'BRG000034', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 34),
('000035', 'SKU000035', 'ADAPTOR 12V 0,5A', 0, 0, '', 'utility', 'Pcs', 0, 0, 20, 6, 'BRG000035', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 35),
('000036', 'SKU000036', 'ADAPTOR 5V', 0, 0, '', 'utility', 'Pcs', 0, 0, 103, 6, 'BRG000036', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 36),
('000037', 'SKU000037', 'ADAPTOR 9V', 0, 0, '', 'utility', 'Pcs', 48, 48, 210, 10, 'BRG000037', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 37),
('000038', 'SKU000038', 'Protection Slave Besar', 0, 0, '', 'utility', 'PACK', 1, 1, 62, 5, 'BRG000038', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 38),
('000039', 'SKU000039', 'Protection Slave Kecil', 0, 0, '', 'utility', 'PACK', 0, 0, 8, 3, 'BRG000039', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 39),
('000040', 'SKU000040', 'Roset 2Core Putih', 0, 0, '', 'utility', 'Pcs', 0, 0, 45, 10, 'BRG000040', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 40),
('000041', 'SKU000041', 'Roset 6C Hitam kaset', 0, 0, '', 'utility', 'Pcs', 1, 0, 17, 3, 'BRG000041', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 41),
('000042', 'SKU000042', 'UPS MINI ', 0, 0, '', 'utility', 'Pcs', 0, 1, 21, 3, 'BRG000042', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 42),
('000043', 'SKU000043', 'Jack cewek', 0, 0, '', 'utility', 'Pcs', 119, 53, 259, 35, 'BRG000043', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 43),
('000044', 'SKU000044', 'Jack cowok', 0, 0, '', 'utility', 'Pcs', 95, 50, 263, 35, 'BRG000044', 'Utility', '', '0000-00-00', '', '', 'dist/upload/', 44),
('000045', 'SKU000045', 'Modem Campur', 0, 0, '', 'Router', 'Pcs', 1, 1, 9, 1, 'BRG000045', 'Modem', '', '0000-00-00', '', '', 'dist/upload/', 45);

-- --------------------------------------------------------

--
-- Struktur dari tabel `brand`
--

CREATE TABLE `brand` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `brand`
--

INSERT INTO `brand` (`kode`, `nama`, `no`) VALUES
('0001', 'Onu', 1),
('0002', 'Modem', 2),
('0003', 'HTB', 3),
('0004', 'Switch', 4),
('0005', 'TOOLS', 5),
('0006', 'KABEL', 6),
('0007', 'Utility', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `chmenu`
--

CREATE TABLE `chmenu` (
  `userjabatan` varchar(20) NOT NULL,
  `menu1` varchar(1) DEFAULT '0',
  `menu2` varchar(1) DEFAULT '0',
  `menu3` varchar(1) DEFAULT '0',
  `menu4` varchar(1) DEFAULT '0',
  `menu5` varchar(1) DEFAULT '0',
  `menu6` varchar(1) DEFAULT '0',
  `menu7` varchar(1) DEFAULT '0',
  `menu8` varchar(1) DEFAULT '0',
  `menu9` varchar(1) DEFAULT '0',
  `menu10` varchar(1) DEFAULT '0',
  `menu11` varchar(1) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `chmenu`
--

INSERT INTO `chmenu` (`userjabatan`, `menu1`, `menu2`, `menu3`, `menu4`, `menu5`, `menu6`, `menu7`, `menu8`, `menu9`, `menu10`, `menu11`) VALUES
('admin', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5'),
('operator', '0', '3', '1', '2', '2', '5', '5', '1', '5', '0', '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data`
--

CREATE TABLE `data` (
  `nama` varchar(100) DEFAULT NULL,
  `tagline` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `notelp` varchar(20) DEFAULT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `avatar` varchar(150) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `data`
--

INSERT INTO `data` (`nama`, `tagline`, `alamat`, `notelp`, `signature`, `avatar`, `no`) VALUES
('Digital Jaringan Bersama', '', 'Sindangagung - Kuningan', '085700600177', 'DjB', 'dist/upload/logo djb doang.png', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `info`
--

CREATE TABLE `info` (
  `nama` varchar(50) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `isi` text DEFAULT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `info`
--

INSERT INTO `info` (`nama`, `avatar`, `tanggal`, `isi`, `id`) VALUES
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1),
('admin', 'dist/upload/index.jpg', '2023-04-02', '<h3>Halo Selamat datang</h3>', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jabatan`
--

CREATE TABLE `jabatan` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `jabatan`
--

INSERT INTO `jabatan` (`kode`, `nama`, `no`) VALUES
('0001', 'admin', 35),
('0002', 'operator', 33);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `kode` varchar(20) NOT NULL,
  `nama` varchar(30) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`kode`, `nama`, `no`) VALUES
('0001', 'Router', 1),
('0002', 'Media Converter', 2),
('0003', 'Switch', 3),
('0004', 'Kabel', 4),
('0005', 'utility', 5);

-- --------------------------------------------------------

--
-- Struktur dari tabel `mutasi`
--

CREATE TABLE `mutasi` (
  `namauser` varchar(50) NOT NULL,
  `tgl` date NOT NULL,
  `kodebarang` varchar(10) NOT NULL,
  `sisa` int(10) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `kegiatan` varchar(100) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `no` int(11) NOT NULL,
  `status` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `mutasi`
--

INSERT INTO `mutasi` (`namauser`, `tgl`, `kodebarang`, `sisa`, `jumlah`, `kegiatan`, `keterangan`, `no`, `status`) VALUES
('admin', '2024-06-17', '000029', 0, -1, 'Penyesuaian STOK', '0001', 6, 'pending'),
('admin', '2024-06-18', '000007', 53, 2, 'Penyesuaian STOK', '0001', 7, 'pending'),
('admin', '2024-06-18', '000008', 64, 2, 'Penyesuaian STOK', '0001', 8, 'pending'),
('admin', '2024-06-18', '000001', 109, 4, 'Penyesuaian STOK', '0001', 9, 'pending'),
('admin', '2024-06-18', '000021', 27, 2, 'Penyesuaian STOK', '0001', 10, 'pending'),
('admin', '2024-06-18', '000031', 52, 2, 'Penyesuaian STOK', '0001', 11, 'pending'),
('admin', '2024-06-18', '000026', 140, 1, 'Penyesuaian STOK', '0001', 12, 'pending'),
('moh topik', '2024-06-18', '000037', 210, 10, 'Penyesuaian STOK', '0001', 13, 'pending'),
('admin', '2024-06-18', '000007', 51, 2, 'stok keluar', '0001', 14, 'berhasil'),
('admin', '2024-06-18', '000008', 62, 2, 'stok keluar', '0001', 15, 'berhasil'),
('admin', '2024-06-18', '000001', 107, 2, 'stok keluar', '0001', 16, 'berhasil'),
('admin', '2024-06-18', '000021', 26, 1, 'stok keluar', '0001', 17, 'berhasil'),
('admin', '2024-06-18', '000031', 51, 1, 'stok keluar', '0001', 18, 'berhasil'),
('admin', '2024-06-18', '000037', 208, 2, 'stok keluar', '0001', 19, 'berhasil'),
('admin', '2024-06-18', '000032', 48, 2, 'stok keluar', '0001', 20, 'berhasil'),
('admin', '2024-06-18', '000025', 13, 1, 'stok keluar', '0001', 21, 'berhasil'),
('admin', '2024-06-18', '000007', 52, 1, 'stok masuk', '0001', 22, 'berhasil'),
('admin', '2024-06-18', '000001', 109, 2, 'stok masuk', '0001', 23, 'berhasil'),
('admin', '2024-06-18', '000021', 27, 1, 'stok masuk', '0001', 24, 'berhasil'),
('admin', '2024-06-18', '000031', 52, 1, 'stok masuk', '0001', 25, 'berhasil'),
('admin', '2024-06-18', '000037', 210, 2, 'stok masuk', '0001', 26, 'berhasil'),
('admin', '2024-06-18', '000032', 50, 2, 'stok masuk', '0001', 27, 'berhasil'),
('admin', '2024-06-18', '000033', 76, 51, 'Penyesuaian STOK', '0001', 28, 'pending'),
('admin', '2024-06-18', '000034', 34, 14, 'Penyesuaian STOK', '0001', 29, 'pending'),
('admin', '2024-06-18', '000036', 103, 83, 'Penyesuaian STOK', '0001', 30, 'pending'),
('admin', '2024-06-18', '000034', 69, 49, 'Penyesuaian STOK', '0001', 31, 'pending'),
('admin', '2024-06-18', '000034', 70, 50, 'Penyesuaian STOK', '0001', 32, 'pending'),
('admin', '2024-06-18', '000031', 352, 302, 'Penyesuaian STOK', '0001', 33, 'pending'),
('admin', '2024-06-18', '000032', 252, 202, 'Penyesuaian STOK', '0001', 34, 'pending'),
('admin', '2024-06-18', '000022', 15, 3, 'Penyesuaian STOK', '0001', 35, 'pending'),
('moh topik', '2024-06-18', '000007', 47, 5, 'stok keluar', '0003', 36, 'berhasil'),
('moh topik', '2024-06-18', '000008', 57, 5, 'stok keluar', '0003', 37, 'berhasil'),
('moh topik', '2024-06-18', '000032', 247, 5, 'stok keluar', '0003', 38, 'berhasil'),
('moh topik', '2024-06-18', '000037', 205, 5, 'stok keluar', '0003', 39, 'berhasil'),
('moh topik', '2024-06-18', '000031', 347, 5, 'stok keluar', '0003', 40, 'berhasil'),
('moh topik', '2024-06-18', '000021', 23, 4, 'stok keluar', '0003', 41, 'berhasil'),
('moh topik', '2024-06-18', '000022', 14, 1, 'stok keluar', '0003', 42, 'berhasil'),
('moh topik', '2024-06-18', '000023', 1, 1, 'stok keluar', '0003', 43, 'berhasil'),
('moh topik', '2024-06-18', '000043', 320, 5, 'stok keluar', '0003', 44, 'berhasil'),
('moh topik', '2024-06-18', '000044', 303, 5, 'stok keluar', '0003', 45, 'berhasil'),
('moh topik', '2024-06-18', '000026', 139, 1, 'stok keluar', '0003', 46, 'berhasil'),
('moh topik', '2024-06-18', '000027', 33, 1, 'stok keluar', '0003', 47, 'berhasil'),
('moh topik', '2024-06-18', '000031', 348, 1, 'stok masuk', '0004', 48, 'berhasil'),
('moh topik', '2024-06-18', '000022', 15, 1, 'stok masuk', '0004', 49, 'berhasil'),
('moh topik', '2024-06-18', '000001', 111, 2, 'stok masuk', '0004', 50, 'berhasil'),
('moh topik', '2024-06-18', '000008', 58, 1, 'stok masuk', '0004', 51, 'berhasil'),
('moh topik', '2024-06-18', '000007', 48, 1, 'stok masuk', '0004', 52, 'berhasil'),
('moh topik', '2024-06-18', '000032', 250, 3, 'stok masuk', '0004', 53, 'berhasil'),
('moh topik', '2024-06-18', '000043', 323, 3, 'stok masuk', '0004', 54, 'berhasil'),
('moh topik', '2024-06-18', '000037', 206, 1, 'stok masuk', '0004', 55, 'berhasil'),
('moh topik', '2024-06-18', '000007', 53, 5, 'stok masuk', '0005', 56, 'berhasil'),
('moh topik', '2024-06-18', '000008', 60, 2, 'stok masuk', '0005', 57, 'berhasil'),
('moh topik', '2024-06-18', '000032', 252, 5, 'stok masuk', '0005', 58, 'berhasil'),
('moh topik', '2024-06-18', '000037', 211, 5, 'stok masuk', '0005', 59, 'berhasil'),
('moh topik', '2024-06-18', '000031', 352, 4, 'stok masuk', '0005', 60, 'berhasil'),
('moh topik', '2024-06-18', '000022', 17, 2, 'stok masuk', '0005', 61, 'berhasil'),
('moh topik', '2024-06-18', '000044', 308, 5, 'stok masuk', '0005', 62, 'berhasil'),
('moh topik', '2024-06-18', '000043', 328, 5, 'stok masuk', '0005', 63, 'berhasil'),
('moh topik', '2024-06-18', '000026', 140, 1, 'stok masuk', '0005', 64, 'berhasil'),
('moh topik', '2024-06-18', '000027', 34, 1, 'stok masuk', '0005', 65, 'berhasil'),
('moh topik', '2024-06-18', '000016', 9, 1, 'stok masuk', '0005', 66, 'berhasil'),
('moh topik', '2024-06-18', '000015', 14, 2, 'stok masuk', '0005', 67, 'berhasil'),
('moh topik', '2024-06-18', '000042', 21, 1, 'stok masuk', '0005', 68, 'berhasil'),
('moh topik', '2024-06-18', '000021', 25, 2, 'stok masuk', '0005', 69, 'berhasil'),
('moh topik', '2024-06-18', '000007', 51, 2, 'stok keluar', '0004', 70, 'berhasil'),
('moh topik', '2024-06-18', '000008', 58, 2, 'stok keluar', '0004', 71, 'berhasil'),
('moh topik', '2024-06-18', '000021', 24, 1, 'stok keluar', '0004', 72, 'berhasil'),
('moh topik', '2024-06-18', '000022', 15, 1, 'stok keluar', '0004', 73, 'berhasil'),
('moh topik', '2024-06-18', '000031', 350, 2, 'stok keluar', '0004', 74, 'berhasil'),
('moh topik', '2024-06-18', '000032', 250, 2, 'stok keluar', '0004', 75, 'berhasil'),
('moh topik', '2024-06-18', '000037', 210, 1, 'stok keluar', '0004', 76, 'berhasil'),
('moh topik', '2024-06-18', '000001', 109, 2, 'stok keluar', '0004', 77, 'berhasil'),
('moh topik', '2024-06-19', '000007', 48, 3, 'stok keluar', '0005', 78, 'berhasil'),
('moh topik', '2024-06-19', '000008', 56, 2, 'stok keluar', '0005', 79, 'berhasil'),
('moh topik', '2024-06-19', '000001', 107, 2, 'stok keluar', '0005', 80, 'berhasil'),
('moh topik', '2024-06-19', '000032', 247, 3, 'stok keluar', '0005', 81, 'berhasil'),
('moh topik', '2024-06-19', '000037', 208, 2, 'stok keluar', '0005', 82, 'berhasil'),
('moh topik', '2024-06-19', '000043', 324, 4, 'stok keluar', '0005', 83, 'berhasil'),
('moh topik', '2024-06-19', '000044', 304, 4, 'stok keluar', '0005', 84, 'berhasil'),
('moh topik', '2024-06-19', '000027', 33, 1, 'stok keluar', '0005', 85, 'berhasil'),
('moh topik', '2024-06-19', '000001', 103, 4, 'stok keluar', '0006', 86, 'berhasil'),
('moh topik', '2024-06-19', '000032', 244, 3, 'stok keluar', '0006', 87, 'berhasil'),
('moh topik', '2024-06-19', '000037', 205, 3, 'stok keluar', '0006', 88, 'berhasil'),
('moh topik', '2024-06-19', '000008', 53, 3, 'stok keluar', '0006', 89, 'berhasil'),
('moh topik', '2024-06-19', '000007', 46, 2, 'stok keluar', '0006', 90, 'berhasil'),
('moh topik', '2024-06-19', '000043', 319, 5, 'stok keluar', '0006', 91, 'berhasil'),
('moh topik', '2024-06-19', '000044', 299, 5, 'stok keluar', '0006', 92, 'berhasil'),
('moh topik', '2024-06-19', '000026', 139, 1, 'stok keluar', '0006', 93, 'berhasil'),
('moh topik', '2024-06-19', '000027', 32, 1, 'stok keluar', '0006', 94, 'berhasil'),
('moh topik', '2024-06-19', '000007', 48, 2, 'stok masuk', '0006', 95, 'berhasil'),
('moh topik', '2024-06-19', '000008', 55, 2, 'stok masuk', '0006', 96, 'berhasil'),
('moh topik', '2024-06-19', '000001', 104, 1, 'stok masuk', '0006', 97, 'berhasil'),
('moh topik', '2024-06-19', '000032', 245, 1, 'stok masuk', '0006', 98, 'berhasil'),
('moh topik', '2024-06-19', '000037', 207, 2, 'stok masuk', '0006', 99, 'berhasil'),
('moh topik', '2024-06-19', '000043', 322, 3, 'stok masuk', '0006', 100, 'berhasil'),
('moh topik', '2024-06-19', '000044', 302, 3, 'stok masuk', '0006', 101, 'berhasil'),
('moh topik', '2024-06-19', '000007', 46, 2, 'stok keluar', '0007', 102, 'berhasil'),
('moh topik', '2024-06-19', '000008', 53, 2, 'stok keluar', '0007', 103, 'berhasil'),
('moh topik', '2024-06-19', '000001', 102, 2, 'stok keluar', '0007', 104, 'berhasil'),
('moh topik', '2024-06-19', '000032', 243, 2, 'stok keluar', '0007', 105, 'berhasil'),
('moh topik', '2024-06-19', '000037', 205, 2, 'stok keluar', '0007', 106, 'berhasil'),
('moh topik', '2024-06-19', '000021', 23, 1, 'stok keluar', '0007', 107, 'berhasil'),
('moh topik', '2024-06-20', '000007', 48, 2, 'stok masuk', '0007', 108, 'berhasil'),
('moh topik', '2024-06-20', '000008', 55, 2, 'stok masuk', '0007', 109, 'berhasil'),
('moh topik', '2024-06-20', '000001', 103, 1, 'stok masuk', '0007', 110, 'berhasil'),
('moh topik', '2024-06-20', '000021', 24, 1, 'stok masuk', '0007', 111, 'berhasil'),
('moh topik', '2024-06-20', '000022', 16, 1, 'stok masuk', '0007', 112, 'berhasil'),
('moh topik', '2024-06-20', '000031', 352, 2, 'stok masuk', '0007', 113, 'berhasil'),
('moh topik', '2024-06-20', '000032', 245, 2, 'stok masuk', '0007', 114, 'berhasil'),
('moh topik', '2024-06-20', '000037', 206, 1, 'stok masuk', '0007', 115, 'berhasil'),
('moh topik', '2024-06-20', '000045', 10, 1, 'stok masuk', '0007', 116, 'berhasil'),
('moh topik', '2024-06-20', '000037', 208, 2, 'stok masuk', '0008', 117, 'berhasil'),
('moh topik', '2024-06-20', '000008', 58, 3, 'stok masuk', '0008', 118, 'berhasil'),
('moh topik', '2024-06-20', '000007', 51, 2, 'stok masuk', '0008', 119, 'berhasil'),
('moh topik', '2024-06-20', '000043', 327, 5, 'stok masuk', '0008', 120, 'berhasil'),
('moh topik', '2024-06-20', '000044', 307, 5, 'stok masuk', '0008', 121, 'berhasil'),
('moh topik', '2024-06-20', '000026', 140, 1, 'stok masuk', '0008', 122, 'berhasil'),
('moh topik', '2024-06-20', '000027', 33, 1, 'stok masuk', '0008', 123, 'berhasil'),
('moh topik', '2024-06-20', '000001', 104, 1, 'stok masuk', '0008', 124, 'berhasil'),
('moh topik', '2024-06-20', '000001', 106, 2, 'stok masuk', '0009', 125, 'berhasil'),
('moh topik', '2024-06-20', '000007', 53, 2, 'stok masuk', '0009', 126, 'berhasil'),
('moh topik', '2024-06-20', '000008', 60, 2, 'stok masuk', '0009', 127, 'berhasil'),
('moh topik', '2024-06-20', '000032', 247, 2, 'stok masuk', '0009', 128, 'berhasil'),
('moh topik', '2024-06-20', '000037', 210, 2, 'stok masuk', '0009', 129, 'berhasil'),
('moh topik', '2024-06-20', '000021', 25, 1, 'stok masuk', '0009', 130, 'berhasil'),
('moh topik', '2024-06-20', '000001', 104, 2, 'stok keluar', '0008', 131, 'berhasil'),
('moh topik', '2024-06-20', '000032', 244, 3, 'stok keluar', '0008', 132, 'berhasil'),
('moh topik', '2024-06-20', '000037', 208, 2, 'stok keluar', '0008', 133, 'berhasil'),
('moh topik', '2024-06-20', '000007', 51, 2, 'stok keluar', '0008', 134, 'berhasil'),
('moh topik', '2024-06-20', '000008', 58, 2, 'stok keluar', '0008', 135, 'berhasil'),
('moh topik', '2024-06-20', '000021', 24, 1, 'stok keluar', '0008', 136, 'berhasil'),
('moh topik', '2024-06-20', '000031', 351, 1, 'stok keluar', '0008', 137, 'berhasil'),
('moh topik', '2024-06-20', '000043', 324, 3, 'stok keluar', '0008', 138, 'berhasil'),
('moh topik', '2024-06-20', '000044', 304, 3, 'stok keluar', '0008', 139, 'berhasil'),
('moh topik', '2024-06-20', '000007', 49, 2, 'stok keluar', '0009', 140, 'berhasil'),
('moh topik', '2024-06-20', '000008', 56, 2, 'stok keluar', '0009', 141, 'berhasil'),
('moh topik', '2024-06-20', '000001', 98, 6, 'stok keluar', '0009', 142, 'berhasil'),
('moh topik', '2024-06-20', '000032', 238, 6, 'stok keluar', '0009', 143, 'berhasil'),
('moh topik', '2024-06-20', '000037', 206, 2, 'stok keluar', '0009', 144, 'berhasil'),
('moh topik', '2024-06-20', '000017', 10, 1, 'stok keluar', '0009', 145, 'berhasil'),
('moh topik', '2024-06-20', '000026', 139, 1, 'stok keluar', '0009', 146, 'berhasil'),
('moh topik', '2024-06-20', '000027', 32, 1, 'stok keluar', '0009', 147, 'berhasil'),
('moh topik', '2024-06-20', '000021', 23, 1, 'stok keluar', '0009', 148, 'berhasil'),
('moh topik', '2024-06-20', '000031', 349, 2, 'stok keluar', '0009', 149, 'berhasil'),
('moh topik', '2024-06-20', '000038', 61, 1, 'stok keluar', '0009', 150, 'berhasil'),
('moh topik', '2024-06-20', '000024', 50, 1, 'stok keluar', '0009', 151, 'berhasil'),
('moh topik', '2024-06-20', '000015', 13, 1, 'stok keluar', '0009', 152, 'berhasil'),
('moh topik', '2024-06-20', '000043', 320, 4, 'stok keluar', '0009', 153, 'berhasil'),
('moh topik', '2024-06-20', '000044', 303, 1, 'stok keluar', '0009', 154, 'berhasil'),
('moh topik', '2024-06-20', '000001', 99, 1, 'stok masuk', '0010', 155, 'berhasil'),
('moh topik', '2024-06-20', '000032', 240, 2, 'stok masuk', '0010', 156, 'berhasil'),
('moh topik', '2024-06-20', '000037', 208, 2, 'stok masuk', '0010', 157, 'berhasil'),
('moh topik', '2024-06-20', '000007', 50, 1, 'stok masuk', '0010', 158, 'berhasil'),
('moh topik', '2024-06-20', '000008', 59, 3, 'stok masuk', '0010', 159, 'berhasil'),
('moh topik', '2024-06-20', '000031', 350, 1, 'stok masuk', '0010', 160, 'berhasil'),
('moh topik', '2024-06-20', '000021', 24, 1, 'stok masuk', '0010', 161, 'berhasil'),
('moh topik', '2024-06-20', '000043', 323, 3, 'stok masuk', '0010', 162, 'berhasil'),
('moh topik', '2024-06-20', '000044', 306, 3, 'stok masuk', '0010', 163, 'berhasil'),
('moh topik', '2024-06-20', '000001', 97, 2, 'stok keluar', '0010', 164, 'berhasil'),
('moh topik', '2024-06-20', '000007', 48, 2, 'stok keluar', '0010', 165, 'berhasil'),
('moh topik', '2024-06-20', '000008', 57, 2, 'stok keluar', '0010', 166, 'berhasil'),
('moh topik', '2024-06-20', '000032', 238, 2, 'stok keluar', '0010', 167, 'berhasil'),
('moh topik', '2024-06-20', '000037', 206, 2, 'stok keluar', '0010', 168, 'berhasil'),
('moh topik', '2024-06-20', '000021', 23, 1, 'stok keluar', '0010', 169, 'berhasil'),
('moh topik', '2024-06-20', '000017', 9, 1, 'stok keluar', '0010', 170, 'berhasil'),
('moh topik', '2024-06-20', '000007', 49, 1, 'stok masuk', '0011', 171, 'berhasil'),
('moh topik', '2024-06-20', '000008', 59, 2, 'stok masuk', '0011', 172, 'berhasil'),
('moh topik', '2024-06-20', '000001', 101, 4, 'stok masuk', '0011', 173, 'berhasil'),
('moh topik', '2024-06-20', '000032', 239, 1, 'stok masuk', '0011', 174, 'berhasil'),
('moh topik', '2024-06-20', '000037', 207, 1, 'stok masuk', '0011', 175, 'berhasil'),
('moh topik', '2024-06-20', '000026', 140, 1, 'stok masuk', '0011', 176, 'berhasil'),
('moh topik', '2024-06-20', '000027', 33, 1, 'stok masuk', '0011', 177, 'berhasil'),
('moh topik', '2024-06-20', '000021', 24, 1, 'stok masuk', '0011', 178, 'berhasil'),
('moh topik', '2024-06-20', '000031', 352, 2, 'stok masuk', '0011', 179, 'berhasil'),
('moh topik', '2024-06-20', '000038', 62, 1, 'stok masuk', '0011', 180, 'berhasil'),
('moh topik', '2024-06-20', '000015', 14, 1, 'stok masuk', '0011', 181, 'berhasil'),
('moh topik', '2024-06-20', '000043', 327, 4, 'stok masuk', '0011', 182, 'berhasil'),
('moh topik', '2024-06-20', '000044', 310, 4, 'stok masuk', '0011', 183, 'berhasil'),
('moh topik', '2024-06-21', '000001', 103, 2, 'stok masuk', '0012', 184, 'berhasil'),
('moh topik', '2024-06-21', '000007', 51, 2, 'stok masuk', '0012', 185, 'berhasil'),
('moh topik', '2024-06-21', '000008', 61, 2, 'stok masuk', '0012', 186, 'berhasil'),
('moh topik', '2024-06-21', '000032', 241, 2, 'stok masuk', '0012', 187, 'berhasil'),
('moh topik', '2024-06-21', '000037', 209, 2, 'stok masuk', '0012', 188, 'berhasil'),
('moh topik', '2024-06-21', '000021', 25, 1, 'stok masuk', '0012', 189, 'berhasil'),
('moh topik', '2024-06-21', '000017', 10, 1, 'stok masuk', '0012', 190, 'berhasil'),
('moh topik', '2024-06-21', '000031', 353, 1, 'stok masuk', '0012', 191, 'berhasil'),
('moh topik', '2024-06-21', '000007', 49, 2, 'stok keluar', '0011', 192, 'berhasil'),
('moh topik', '2024-06-21', '000008', 58, 3, 'stok keluar', '0011', 193, 'berhasil'),
('moh topik', '2024-06-21', '000001', 99, 4, 'stok keluar', '0011', 194, 'berhasil'),
('moh topik', '2024-06-21', '000032', 238, 3, 'stok keluar', '0011', 195, 'berhasil'),
('moh topik', '2024-06-21', '000037', 206, 3, 'stok keluar', '0011', 196, 'berhasil'),
('moh topik', '2024-06-21', '000013', 4, 1, 'stok keluar', '0011', 197, 'berhasil'),
('moh topik', '2024-06-21', '000043', 321, 6, 'stok keluar', '0011', 198, 'berhasil'),
('moh topik', '2024-06-21', '000044', 304, 6, 'stok keluar', '0011', 199, 'berhasil'),
('moh topik', '2024-06-21', '000017', 9, 1, 'stok keluar', '0011', 200, 'berhasil'),
('moh topik', '2024-06-21', '000026', 139, 1, 'stok keluar', '0011', 201, 'berhasil'),
('moh topik', '2024-06-21', '000001', 102, 3, 'stok masuk', '0013', 202, 'berhasil'),
('moh topik', '2024-06-21', '000008', 59, 1, 'stok masuk', '0013', 203, 'berhasil'),
('moh topik', '2024-06-21', '000007', 51, 2, 'stok masuk', '0013', 204, 'berhasil'),
('moh topik', '2024-06-21', '000032', 239, 2, 'stok masuk', '0013', 205, 'berhasil'),
('moh topik', '2024-06-21', '000037', 209, 3, 'stok masuk', '0013', 206, 'berhasil'),
('moh topik', '2024-06-21', '000043', 327, 6, 'stok masuk', '0013', 207, 'berhasil'),
('moh topik', '2024-06-21', '000044', 310, 6, 'stok masuk', '0013', 208, 'berhasil'),
('moh topik', '2024-06-21', '000017', 10, 1, 'stok masuk', '0013', 209, 'berhasil'),
('moh topik', '2024-06-21', '000026', 140, 1, 'stok masuk', '0013', 210, 'berhasil'),
('moh topik', '2024-06-21', '000015', 15, 1, 'stok masuk', '0013', 211, 'berhasil'),
('moh topik', '2024-06-21', '000001', 99, 3, 'stok keluar', '0012', 212, 'berhasil'),
('moh topik', '2024-06-21', '000007', 49, 2, 'stok keluar', '0012', 213, 'berhasil'),
('moh topik', '2024-06-21', '000008', 57, 2, 'stok keluar', '0012', 214, 'berhasil'),
('moh topik', '2024-06-21', '000031', 352, 1, 'stok keluar', '0012', 215, 'berhasil'),
('moh topik', '2024-06-21', '000026', 139, 1, 'stok keluar', '0012', 216, 'berhasil'),
('moh topik', '2024-06-21', '000032', 237, 2, 'stok keluar', '0012', 217, 'berhasil'),
('moh topik', '2024-06-21', '000037', 207, 2, 'stok keluar', '0012', 218, 'berhasil'),
('moh topik', '2024-06-21', '000043', 323, 4, 'stok keluar', '0012', 219, 'berhasil'),
('moh topik', '2024-06-21', '000044', 306, 4, 'stok keluar', '0012', 220, 'berhasil'),
('moh topik', '2024-06-21', '000024', 49, 1, 'stok keluar', '0012', 221, 'berhasil'),
('moh topik', '2024-06-22', '000001', 101, 2, 'stok masuk', '0014', 222, 'berhasil'),
('moh topik', '2024-06-22', '000007', 51, 2, 'stok masuk', '0014', 223, 'berhasil'),
('moh topik', '2024-06-22', '000008', 59, 2, 'stok masuk', '0014', 224, 'berhasil'),
('moh topik', '2024-06-22', '000031', 353, 1, 'stok masuk', '0014', 225, 'berhasil'),
('moh topik', '2024-06-22', '000026', 140, 1, 'stok masuk', '0014', 226, 'berhasil'),
('moh topik', '2024-06-22', '000032', 238, 1, 'stok masuk', '0014', 227, 'berhasil'),
('moh topik', '2024-06-22', '000037', 209, 2, 'stok masuk', '0014', 228, 'berhasil'),
('moh topik', '2024-06-22', '000043', 326, 3, 'stok masuk', '0014', 229, 'berhasil'),
('moh topik', '2024-06-22', '000044', 309, 3, 'stok masuk', '0014', 230, 'berhasil'),
('moh topik', '2024-06-22', '000024', 50, 1, 'stok masuk', '0014', 231, 'berhasil'),
('moh topik', '2024-06-22', '000001', 97, 4, 'stok keluar', '0013', 232, 'berhasil'),
('moh topik', '2024-06-22', '000007', 49, 2, 'stok keluar', '0013', 233, 'berhasil'),
('moh topik', '2024-06-22', '000008', 57, 2, 'stok keluar', '0013', 234, 'berhasil'),
('moh topik', '2024-06-22', '000032', 234, 4, 'stok keluar', '0013', 235, 'berhasil'),
('moh topik', '2024-06-22', '000037', 206, 3, 'stok keluar', '0013', 236, 'berhasil'),
('moh topik', '2024-06-22', '000043', 322, 4, 'stok keluar', '0013', 237, 'berhasil'),
('moh topik', '2024-06-22', '000044', 305, 4, 'stok keluar', '0013', 238, 'berhasil'),
('moh topik', '2024-06-22', '000017', 9, 1, 'stok keluar', '0013', 239, 'berhasil'),
('moh topik', '2024-06-22', '000024', 49, 1, 'stok keluar', '0013', 240, 'berhasil'),
('moh topik', '2024-06-22', '000026', 139, 1, 'stok keluar', '0013', 241, 'berhasil'),
('moh topik', '2024-06-22', '000001', 100, 3, 'stok masuk', '0015', 242, 'berhasil'),
('moh topik', '2024-06-22', '000007', 51, 2, 'stok masuk', '0015', 243, 'berhasil'),
('moh topik', '2024-06-22', '000008', 59, 2, 'stok masuk', '0015', 244, 'berhasil'),
('moh topik', '2024-06-22', '000032', 236, 2, 'stok masuk', '0015', 245, 'berhasil'),
('moh topik', '2024-06-22', '000037', 209, 3, 'stok masuk', '0015', 246, 'berhasil'),
('moh topik', '2024-06-22', '000043', 323, 1, 'stok masuk', '0015', 247, 'berhasil'),
('moh topik', '2024-06-22', '000044', 306, 1, 'stok masuk', '0015', 248, 'berhasil'),
('moh topik', '2024-06-22', '000017', 10, 1, 'stok masuk', '0015', 249, 'berhasil'),
('moh topik', '2024-06-22', '000001', 98, 2, 'stok keluar', '0014', 250, 'berhasil'),
('moh topik', '2024-06-22', '000007', 49, 2, 'stok keluar', '0014', 251, 'berhasil'),
('moh topik', '2024-06-22', '000008', 57, 2, 'stok keluar', '0014', 252, 'berhasil'),
('moh topik', '2024-06-22', '000032', 234, 2, 'stok keluar', '0014', 253, 'berhasil'),
('moh topik', '2024-06-22', '000037', 207, 2, 'stok keluar', '0014', 254, 'berhasil'),
('moh topik', '2024-06-22', '000031', 352, 1, 'stok keluar', '0014', 255, 'berhasil'),
('moh topik', '2024-06-23', '000001', 100, 2, 'stok masuk', '0016', 256, 'berhasil'),
('moh topik', '2024-06-23', '000008', 59, 2, 'stok masuk', '0016', 257, 'berhasil'),
('moh topik', '2024-06-23', '000007', 51, 2, 'stok masuk', '0016', 258, 'berhasil'),
('moh topik', '2024-06-23', '000037', 209, 2, 'stok masuk', '0016', 259, 'berhasil'),
('moh topik', '2024-06-23', '000032', 236, 2, 'stok masuk', '0016', 260, 'berhasil'),
('moh topik', '2024-06-23', '000031', 353, 1, 'stok masuk', '0016', 261, 'berhasil'),
('moh topik', '2024-06-23', '000007', 49, 2, 'stok keluar', '0015', 262, 'berhasil'),
('moh topik', '2024-06-23', '000008', 57, 2, 'stok keluar', '0015', 263, 'berhasil'),
('moh topik', '2024-06-23', '000001', 96, 4, 'stok keluar', '0015', 264, 'berhasil'),
('moh topik', '2024-06-23', '000032', 233, 3, 'stok keluar', '0015', 265, 'berhasil'),
('moh topik', '2024-06-23', '000037', 207, 2, 'stok keluar', '0015', 266, 'berhasil'),
('moh topik', '2024-06-23', '000017', 9, 1, 'stok keluar', '0015', 267, 'berhasil'),
('moh topik', '2024-06-23', '000021', 24, 1, 'stok keluar', '0015', 268, 'berhasil'),
('moh topik', '2024-06-23', '000031', 352, 1, 'stok keluar', '0015', 269, 'berhasil'),
('moh topik', '2024-06-23', '000026', 138, 1, 'stok keluar', '0015', 270, 'berhasil'),
('moh topik', '2024-06-23', '000043', 318, 5, 'stok keluar', '0015', 271, 'berhasil'),
('moh topik', '2024-06-23', '000044', 301, 5, 'stok keluar', '0015', 272, 'berhasil'),
('moh topik', '2024-06-23', '000024', 48, 1, 'stok keluar', '0015', 273, 'berhasil'),
('moh topik', '2024-06-23', '000001', 94, 2, 'stok keluar', '0016', 274, 'berhasil'),
('moh topik', '2024-06-23', '000007', 47, 2, 'stok keluar', '0016', 275, 'berhasil'),
('moh topik', '2024-06-23', '000008', 53, 4, 'stok keluar', '0016', 276, 'berhasil'),
('moh topik', '2024-06-23', '000032', 231, 2, 'stok keluar', '0016', 277, 'berhasil'),
('moh topik', '2024-06-23', '000037', 205, 2, 'stok keluar', '0016', 278, 'berhasil'),
('moh topik', '2024-06-23', '000031', 351, 1, 'stok keluar', '0016', 279, 'berhasil'),
('moh topik', '2024-06-24', '000007', 49, 2, 'stok masuk', '0017', 280, 'berhasil'),
('moh topik', '2024-06-24', '000008', 56, 1, 'stok masuk', '0017', 281, 'berhasil'),
('moh topik', '2024-06-24', '000001', 96, 2, 'stok masuk', '0017', 282, 'berhasil'),
('moh topik', '2024-06-24', '000032', 232, 1, 'stok masuk', '0017', 283, 'berhasil'),
('moh topik', '2024-06-24', '000037', 207, 2, 'stok masuk', '0017', 284, 'berhasil'),
('moh topik', '2024-06-24', '000017', 10, 1, 'stok masuk', '0017', 285, 'berhasil'),
('moh topik', '2024-06-24', '000026', 139, 1, 'stok masuk', '0017', 286, 'berhasil'),
('moh topik', '2024-06-24', '000043', 320, 2, 'stok masuk', '0017', 287, 'berhasil'),
('moh topik', '2024-06-24', '000044', 303, 2, 'stok masuk', '0017', 288, 'berhasil'),
('moh topik', '2024-06-24', '000001', 98, 2, 'stok masuk', '0018', 289, 'berhasil'),
('moh topik', '2024-06-24', '000007', 52, 2, 'stok masuk', '0018', 290, 'berhasil'),
('moh topik', '2024-06-24', '000008', 58, 2, 'stok masuk', '0018', 291, 'berhasil'),
('moh topik', '2024-06-24', '000033', 78, 2, 'stok masuk', '0018', 292, 'berhasil'),
('moh topik', '2024-06-24', '000037', 209, 2, 'stok masuk', '0018', 293, 'berhasil'),
('moh topik', '2024-06-24', '000031', 352, 1, 'stok masuk', '0018', 294, 'berhasil'),
('moh topik', '2024-06-24', '000001', 94, 4, 'stok keluar', '0017', 295, 'berhasil'),
('moh topik', '2024-06-24', '000007', 50, 2, 'stok keluar', '0017', 296, 'berhasil'),
('moh topik', '2024-06-24', '000008', 56, 2, 'stok keluar', '0017', 297, 'berhasil'),
('moh topik', '2024-06-24', '000032', 229, 3, 'stok keluar', '0017', 298, 'berhasil'),
('moh topik', '2024-06-24', '000037', 207, 2, 'stok keluar', '0017', 299, 'berhasil'),
('moh topik', '2024-06-24', '000017', 9, 1, 'stok keluar', '0017', 300, 'berhasil'),
('moh topik', '2024-06-24', '000021', 23, 1, 'stok keluar', '0017', 301, 'berhasil'),
('moh topik', '2024-06-24', '000031', 351, 1, 'stok keluar', '0017', 302, 'berhasil'),
('moh topik', '2024-06-24', '000026', 138, 1, 'stok keluar', '0017', 303, 'berhasil'),
('moh topik', '2024-06-24', '000043', 315, 5, 'stok keluar', '0017', 304, 'berhasil'),
('moh topik', '2024-06-24', '000044', 298, 5, 'stok keluar', '0017', 305, 'berhasil'),
('moh topik', '2024-06-24', '000025', 12, 1, 'stok keluar', '0017', 306, 'berhasil'),
('moh topik', '2024-06-24', '000007', 48, 2, 'stok keluar', '0018', 307, 'berhasil'),
('moh topik', '2024-06-24', '000008', 54, 2, 'stok keluar', '0018', 308, 'berhasil'),
('moh topik', '2024-06-24', '000001', 92, 2, 'stok keluar', '0018', 309, 'berhasil'),
('moh topik', '2024-06-24', '000032', 226, 3, 'stok keluar', '0018', 310, 'berhasil'),
('moh topik', '2024-06-24', '000037', 205, 2, 'stok keluar', '0018', 311, 'berhasil'),
('moh topik', '2024-06-24', '000043', 312, 3, 'stok keluar', '0018', 312, 'berhasil'),
('moh topik', '2024-06-24', '000044', 295, 3, 'stok keluar', '0018', 313, 'berhasil'),
('moh topik', '2024-06-24', '000015', 14, 1, 'stok keluar', '0018', 314, 'berhasil'),
('moh topik', '2024-06-24', '000022', 15, 1, 'stok keluar', '0018', 315, 'berhasil'),
('moh topik', '2024-06-24', '000031', 349, 2, 'stok keluar', '0018', 316, 'berhasil'),
('moh topik', '2024-06-24', '000026', 137, 1, 'stok keluar', '0018', 317, 'berhasil'),
('moh topik', '2024-06-24', '000025', 11, 1, 'stok keluar', '0018', 318, 'berhasil'),
('moh topik', '2024-06-24', '000013', 3, 1, 'stok keluar', '0019', 319, 'berhasil'),
('moh topik', '2024-06-24', '000026', 136, 1, 'stok keluar', '0019', 320, 'berhasil'),
('moh topik', '2024-06-24', '000001', 96, 4, 'stok masuk', '0019', 321, 'berhasil'),
('moh topik', '2024-06-24', '000007', 50, 2, 'stok masuk', '0019', 322, 'berhasil'),
('moh topik', '2024-06-24', '000008', 56, 2, 'stok masuk', '0019', 323, 'berhasil'),
('moh topik', '2024-06-24', '000032', 229, 3, 'stok masuk', '0019', 324, 'berhasil'),
('moh topik', '2024-06-24', '000037', 207, 2, 'stok masuk', '0019', 325, 'berhasil'),
('moh topik', '2024-06-24', '000021', 24, 1, 'stok masuk', '0019', 326, 'berhasil'),
('moh topik', '2024-06-24', '000031', 350, 1, 'stok masuk', '0019', 327, 'berhasil'),
('moh topik', '2024-06-24', '000026', 137, 1, 'stok masuk', '0019', 328, 'berhasil'),
('moh topik', '2024-06-24', '000043', 317, 5, 'stok masuk', '0019', 329, 'berhasil'),
('moh topik', '2024-06-24', '000044', 300, 5, 'stok masuk', '0019', 330, 'berhasil'),
('moh topik', '2024-06-24', '000025', 12, 1, 'stok masuk', '0019', 331, 'berhasil'),
('moh topik', '2024-06-24', '000015', 16, 2, 'stok masuk', '0019', 332, 'berhasil'),
('moh topik', '2024-06-25', '000001', 98, 2, 'stok masuk', '0020', 333, 'berhasil'),
('moh topik', '2024-06-25', '000008', 58, 2, 'stok masuk', '0020', 334, 'berhasil'),
('moh topik', '2024-06-25', '000007', 51, 1, 'stok masuk', '0020', 335, 'berhasil'),
('moh topik', '2024-06-25', '000032', 231, 2, 'stok masuk', '0020', 336, 'berhasil'),
('moh topik', '2024-06-25', '000037', 209, 2, 'stok masuk', '0020', 337, 'berhasil'),
('moh topik', '2024-06-25', '000031', 351, 1, 'stok masuk', '0020', 338, 'berhasil'),
('moh topik', '2024-06-25', '000001', 100, 2, 'stok masuk', '0021', 339, 'berhasil'),
('moh topik', '2024-06-25', '000008', 59, 2, 'stok masuk', '0021', 340, 'berhasil'),
('moh topik', '2024-06-25', '000007', 53, 2, 'stok masuk', '0021', 341, 'berhasil'),
('moh topik', '2024-06-25', '000032', 233, 2, 'stok masuk', '0021', 342, 'berhasil'),
('moh topik', '2024-06-25', '000037', 211, 2, 'stok masuk', '0021', 343, 'berhasil'),
('moh topik', '2024-06-25', '000043', 320, 3, 'stok masuk', '0021', 344, 'berhasil'),
('moh topik', '2024-06-25', '000044', 303, 3, 'stok masuk', '0021', 345, 'berhasil'),
('moh topik', '2024-06-25', '000022', 16, 1, 'stok masuk', '0021', 346, 'berhasil'),
('moh topik', '2024-06-25', '000026', 138, 1, 'stok masuk', '0021', 347, 'berhasil'),
('moh topik', '2024-06-25', '000001', 94, 6, 'stok keluar', '0020', 348, 'berhasil'),
('moh topik', '2024-06-25', '000008', 56, 3, 'stok keluar', '0020', 349, 'berhasil'),
('moh topik', '2024-06-25', '000007', 51, 2, 'stok keluar', '0020', 350, 'berhasil'),
('moh topik', '2024-06-25', '000032', 228, 5, 'stok keluar', '0020', 351, 'berhasil'),
('moh topik', '2024-06-25', '000037', 209, 2, 'stok keluar', '0020', 352, 'berhasil'),
('moh topik', '2024-06-25', '000024', 47, 1, 'stok keluar', '0020', 353, 'berhasil'),
('moh topik', '2024-06-25', '000031', 349, 2, 'stok keluar', '0020', 354, 'berhasil'),
('moh topik', '2024-06-25', '000021', 22, 2, 'stok keluar', '0020', 355, 'berhasil'),
('moh topik', '2024-06-25', '000022', 14, 2, 'stok keluar', '0020', 356, 'berhasil'),
('moh topik', '2024-06-25', '000043', 312, 8, 'stok keluar', '0020', 357, 'berhasil'),
('moh topik', '2024-06-25', '000044', 295, 8, 'stok keluar', '0020', 358, 'berhasil'),
('moh topik', '2024-06-25', '000026', 137, 1, 'stok keluar', '0020', 359, 'berhasil'),
('moh topik', '2024-06-25', '000027', 32, 1, 'stok keluar', '0021', 360, 'berhasil'),
('moh topik', '2024-06-25', '000001', 92, 2, 'stok keluar', '0022', 361, 'berhasil'),
('moh topik', '2024-06-25', '000007', 50, 1, 'stok keluar', '0022', 362, 'berhasil'),
('moh topik', '2024-06-25', '000008', 55, 1, 'stok keluar', '0022', 363, 'berhasil'),
('moh topik', '2024-06-25', '000032', 226, 2, 'stok keluar', '0022', 364, 'berhasil'),
('moh topik', '2024-06-25', '000037', 207, 2, 'stok keluar', '0022', 365, 'berhasil'),
('moh topik', '2024-06-25', '000031', 348, 1, 'stok keluar', '0022', 366, 'berhasil'),
('moh topik', '2024-06-25', '000025', 11, 1, 'stok keluar', '0023', 367, 'berhasil'),
('moh topik', '2024-06-25', '000001', 97, 5, 'stok masuk', '0022', 368, 'berhasil'),
('moh topik', '2024-06-25', '000008', 58, 3, 'stok masuk', '0022', 369, 'berhasil'),
('moh topik', '2024-06-25', '000007', 51, 1, 'stok masuk', '0022', 370, 'berhasil'),
('moh topik', '2024-06-25', '000032', 230, 4, 'stok masuk', '0022', 371, 'berhasil'),
('moh topik', '2024-06-25', '000037', 209, 2, 'stok masuk', '0022', 372, 'berhasil'),
('moh topik', '2024-06-25', '000031', 349, 1, 'stok masuk', '0022', 373, 'berhasil'),
('moh topik', '2024-06-25', '000021', 24, 2, 'stok masuk', '0022', 374, 'berhasil'),
('moh topik', '2024-06-25', '000022', 16, 2, 'stok masuk', '0022', 375, 'berhasil'),
('moh topik', '2024-06-25', '000043', 318, 6, 'stok masuk', '0022', 376, 'berhasil'),
('moh topik', '2024-06-25', '000044', 301, 6, 'stok masuk', '0022', 377, 'berhasil'),
('moh topik', '2024-06-25', '000026', 138, 1, 'stok masuk', '0022', 378, 'berhasil'),
('moh topik', '2024-06-26', '000001', 99, 2, 'stok masuk', '0023', 379, 'berhasil'),
('moh topik', '2024-06-26', '000007', 52, 1, 'stok masuk', '0023', 380, 'berhasil'),
('moh topik', '2024-06-26', '000008', 59, 1, 'stok masuk', '0023', 381, 'berhasil'),
('moh topik', '2024-06-26', '000032', 232, 2, 'stok masuk', '0023', 382, 'berhasil'),
('moh topik', '2024-06-26', '000037', 211, 2, 'stok masuk', '0023', 383, 'berhasil'),
('moh topik', '2024-06-26', '000031', 350, 1, 'stok masuk', '0023', 384, 'berhasil'),
('moh topik', '2024-06-26', '000007', 50, 2, 'stok keluar', '0024', 385, 'berhasil'),
('moh topik', '2024-06-26', '000008', 57, 2, 'stok keluar', '0024', 386, 'berhasil'),
('moh topik', '2024-06-26', '000001', 96, 3, 'stok keluar', '0024', 387, 'berhasil'),
('moh topik', '2024-06-26', '000032', 230, 2, 'stok keluar', '0024', 388, 'berhasil'),
('moh topik', '2024-06-26', '000037', 210, 1, 'stok keluar', '0024', 389, 'berhasil'),
('moh topik', '2024-06-26', '000043', 314, 4, 'stok keluar', '0024', 390, 'berhasil'),
('moh topik', '2024-06-26', '000044', 297, 4, 'stok keluar', '0024', 391, 'berhasil'),
('moh topik', '2024-06-26', '000021', 23, 1, 'stok keluar', '0024', 392, 'berhasil'),
('moh topik', '2024-06-26', '000031', 349, 1, 'stok keluar', '0024', 393, 'berhasil'),
('moh topik', '2024-06-26', '000043', 263, 51, 'stok keluar', '0025', 394, 'berhasil'),
('moh topik', '2024-06-26', '000044', 267, 30, 'stok keluar', '0025', 395, 'berhasil'),
('moh topik', '2024-06-26', '000001', 95, 1, 'stok keluar', '0026', 396, 'berhasil'),
('moh topik', '2024-06-26', '000043', 261, 2, 'stok keluar', '0026', 397, 'berhasil'),
('moh topik', '2024-06-26', '000044', 265, 2, 'stok keluar', '0026', 398, 'berhasil'),
('moh topik', '2024-06-26', '000032', 229, 1, 'stok keluar', '0026', 399, 'berhasil'),
('moh topik', '2024-06-26', '000001', 96, 1, 'stok masuk', '0024', 400, 'berhasil'),
('moh topik', '2024-06-26', '000037', 211, 1, 'stok masuk', '0024', 401, 'berhasil'),
('moh topik', '2024-06-26', '000017', 10, 1, 'stok masuk', '0024', 402, 'berhasil'),
('moh topik', '2024-06-26', '000001', 98, 2, 'stok masuk', '0025', 403, 'berhasil'),
('moh topik', '2024-06-26', '000008', 59, 2, 'stok masuk', '0025', 404, 'berhasil'),
('moh topik', '2024-06-26', '000007', 52, 2, 'stok masuk', '0025', 405, 'berhasil'),
('moh topik', '2024-06-26', '000032', 231, 2, 'stok masuk', '0025', 406, 'berhasil'),
('moh topik', '2024-06-26', '000037', 212, 1, 'stok masuk', '0025', 407, 'berhasil'),
('moh topik', '2024-06-26', '000043', 265, 4, 'stok masuk', '0025', 408, 'berhasil'),
('moh topik', '2024-06-26', '000044', 269, 4, 'stok masuk', '0025', 409, 'berhasil'),
('moh topik', '2024-06-26', '000021', 24, 1, 'stok masuk', '0025', 410, 'berhasil'),
('moh topik', '2024-06-26', '000031', 350, 1, 'stok masuk', '0025', 411, 'berhasil'),
('moh topik', '2024-06-26', '000001', 96, 3, 'stok keluar', '0027', 412, 'berhasil'),
('moh topik', '2024-06-26', '000007', 50, 2, 'stok keluar', '0027', 413, 'berhasil'),
('moh topik', '2024-06-26', '000008', 57, 2, 'stok keluar', '0027', 414, 'berhasil'),
('moh topik', '2024-06-26', '000032', 228, 3, 'stok keluar', '0027', 415, 'berhasil'),
('moh topik', '2024-06-26', '000037', 210, 2, 'stok keluar', '0027', 416, 'berhasil'),
('moh topik', '2024-06-26', '000031', 349, 1, 'stok keluar', '0027', 417, 'berhasil'),
('moh topik', '2024-06-26', '000018', 4, 1, 'stok keluar', '0027', 418, 'berhasil'),
('moh topik', '2024-06-27', '000001', 98, 2, 'stok masuk', '0026', 419, 'berhasil'),
('moh topik', '2024-06-27', '000007', 52, 2, 'stok masuk', '0026', 420, 'berhasil'),
('moh topik', '2024-06-27', '000008', 59, 2, 'stok masuk', '0026', 421, 'berhasil'),
('moh topik', '2024-06-27', '000032', 231, 3, 'stok masuk', '0026', 422, 'berhasil'),
('moh topik', '2024-06-27', '000037', 212, 2, 'stok masuk', '0026', 423, 'berhasil'),
('moh topik', '2024-06-27', '000031', 350, 1, 'stok masuk', '0026', 424, 'berhasil'),
('moh topik', '2024-06-27', '000015', 17, 1, 'stok masuk', '0026', 425, 'berhasil'),
('moh topik', '2024-06-27', '000017', 11, 1, 'stok masuk', '0026', 426, 'berhasil'),
('moh topik', '2024-06-27', '000001', 97, 2, 'stok keluar', '0028', 427, 'berhasil'),
('moh topik', '2024-06-27', '000008', 57, 2, 'stok keluar', '0028', 428, 'berhasil'),
('moh topik', '2024-06-27', '000007', 50, 2, 'stok keluar', '0028', 429, 'berhasil'),
('moh topik', '2024-06-27', '000032', 229, 2, 'stok keluar', '0028', 430, 'berhasil'),
('moh topik', '2024-06-27', '000037', 211, 1, 'stok keluar', '0028', 431, 'berhasil'),
('moh topik', '2024-06-27', '000043', 261, 4, 'stok keluar', '0028', 432, 'berhasil'),
('moh topik', '2024-06-27', '000044', 265, 4, 'stok keluar', '0028', 433, 'berhasil'),
('moh topik', '2024-06-27', '000021', 23, 1, 'stok keluar', '0028', 434, 'berhasil'),
('moh topik', '2024-06-27', '000031', 349, 1, 'stok keluar', '0028', 435, 'berhasil'),
('moh topik', '2024-06-27', '000041', 17, 1, 'stok keluar', '0029', 436, 'berhasil'),
('moh topik', '2024-06-27', '000001', 95, 2, 'stok keluar', '0030', 437, 'berhasil'),
('moh topik', '2024-06-27', '000007', 48, 2, 'stok keluar', '0030', 438, 'berhasil'),
('moh topik', '2024-06-27', '000008', 55, 2, 'stok keluar', '0030', 439, 'berhasil'),
('moh topik', '2024-06-27', '000032', 226, 3, 'stok keluar', '0030', 440, 'berhasil'),
('moh topik', '2024-06-27', '000037', 210, 1, 'stok keluar', '0030', 441, 'berhasil'),
('moh topik', '2024-06-27', '000043', 259, 2, 'stok keluar', '0030', 442, 'berhasil'),
('moh topik', '2024-06-27', '000044', 263, 2, 'stok keluar', '0030', 443, 'berhasil'),
('moh topik', '2024-06-27', '000045', 9, 1, 'stok keluar', '0030', 444, 'berhasil');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pelanggan`
--

CREATE TABLE `pelanggan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `satuan`
--

CREATE TABLE `satuan` (
  `kode` varchar(10) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `satuan`
--

INSERT INTO `satuan` (`kode`, `nama`, `no`) VALUES
('0001', 'Pcs', 1),
('0002', 'unit', 3),
('0003', 'pasang', 4),
('0004', 'mtr', 5),
('0005', 'roll', 6),
('0006', 'PACK', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_keluar`
--

CREATE TABLE `stok_keluar` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `pelanggan` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `keterangan` varchar(100) NOT NULL,
  `modal` int(10) NOT NULL,
  `total` int(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_keluar`
--

INSERT INTO `stok_keluar` (`nota`, `cabang`, `tgl`, `pelanggan`, `userid`, `keterangan`, `modal`, `total`, `no`) VALUES
('0001', '01', '2024-06-18', '', '42', 'anton dan asep ', 0, 0, 2),
('0003', '01', '2024-06-18', 'customer', '47', 'sf1 diki martin', 0, 0, 3),
('0004', '01', '2024-06-18', 'customer', '47', 'sf2 asep anton', 0, 0, 4),
('0005', '01', '2024-06-19', 'customer', '47', 'sf hendra diki', 0, 0, 5),
('0006', '01', '2024-06-19', 'customer', '47', 'sf1 mamat martin', 0, 0, 6),
('0007', '01', '2024-06-19', 'customer', '47', 'sf2 asep anton', 0, 0, 7),
('0008', '01', '2024-06-20', 'customer', '47', 'Sf1 hendra diki', 0, 0, 8),
('0009', '01', '2024-06-20', 'customer', '47', 'sf1 mamat martin', 0, 0, 9),
('0010', '01', '2024-06-20', 'customer', '47', 'sf2 asep anton', 0, 0, 10),
('0011', '01', '2024-06-21', 'customer', '47', 'sf1 hendra diki', 0, 0, 11),
('0012', '01', '2024-06-21', 'customer', '47', 'sf2 mamat martin', 0, 0, 12),
('0013', '01', '2024-06-22', 'customer', '47', 'sf1 hendra diki anton', 0, 0, 13),
('0014', '01', '2024-06-22', 'customer', '47', 'S2 mamat', 0, 0, 14),
('0015', '01', '2024-06-23', 'customer', '47', 'sf2 asep anton', 0, 0, 15),
('0016', '01', '2024-06-23', 'customer', '47', 'sf2 mamat martin', 0, 0, 16),
('0017', '01', '2024-06-24', 'customer', '47', 'sf1 anton asep', 0, 0, 17),
('0018', '01', '2024-06-24', 'customer', '47', 'sf1 hendra diki', 0, 0, 18),
('0019', '01', '2024-06-24', 'customer', '47', 'sf1 fahmi topik', 0, 0, 19),
('0020', '01', '2024-06-25', 'customer', '47', 'sf1 hendra anton', 0, 0, 20),
('0021', '01', '2024-06-25', 'customer', '47', 'penjualan', 0, 0, 21),
('0022', '01', '2024-06-25', 'customer', '47', 'Sf2 mamat martin', 0, 0, 22),
('0023', '01', '2024-06-25', 'customer', '47', 'pembuatan dioda', 0, 0, 23),
('0024', '01', '2024-06-26', 'customer', '47', 'sf1 hendra diki anton', 0, 0, 24),
('0025', '01', '2024-06-26', 'customer', '47', 'digunakan untuk modifikasi', 0, 0, 25),
('0026', '01', '2024-06-26', 'customer', '47', 'sf1 fahmi topik', 0, 0, 26),
('0027', '01', '2024-06-26', 'customer', '47', 'sf2 mamat martin', 0, 0, 27),
('0028', '01', '2024-06-27', 'customer', '47', 'sf1 Anton Diki', 0, 0, 28),
('0029', '01', '2024-06-27', 'customer', '47', 'penjualan ke diki cirahayu', 0, 0, 29),
('0030', '01', '2024-06-27', 'customer', '47', 'sf2 Hendra Asep', 0, 0, 30);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_keluar_daftar`
--

CREATE TABLE `stok_keluar_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `subbeli` int(10) NOT NULL,
  `subtotal` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_keluar_daftar`
--

INSERT INTO `stok_keluar_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `subbeli`, `subtotal`, `no`) VALUES
('0001', '000007', 'ONU 2PORT', 2, 0, 0, 2),
('0001', '000008', 'ONU 4 PORT', 2, 0, 0, 3),
('0001', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 4),
('0001', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 5),
('0001', '000031', 'Patch Cord', 1, 0, 0, 6),
('0001', '000037', 'ADAPTOR 9V', 2, 0, 0, 7),
('0001', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 8),
('0001', '000025', 'ISOLASI', 1, 0, 0, 9),
('0003', '000007', 'ONU 2PORT', 5, 0, 0, 10),
('0003', '000008', 'ONU 4 PORT', 5, 0, 0, 11),
('0003', '000032', 'ADAPTOR 12V 1A', 5, 0, 0, 12),
('0003', '000037', 'ADAPTOR 9V', 5, 0, 0, 13),
('0003', '000031', 'Patch Cord', 5, 0, 0, 14),
('0003', '000021', 'ODP SPLITER 1:2', 4, 0, 0, 15),
('0003', '000022', 'ODP SPLITER 1:4', 1, 0, 0, 16),
('0003', '000023', 'ODP SPLITER 1:8', 1, 0, 0, 17),
('0003', '000043', 'Jack cewek', 5, 0, 0, 18),
('0003', '000044', 'Jack cowok', 5, 0, 0, 19),
('0003', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 20),
('0003', '000027', 'FO PRECON 150Mtr', 1, 0, 0, 21),
('0004', '000007', 'ONU 2PORT', 2, 0, 0, 22),
('0004', '000008', 'ONU 4 PORT', 2, 0, 0, 23),
('0004', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 24),
('0004', '000022', 'ODP SPLITER 1:4', 1, 0, 0, 25),
('0004', '000031', 'Patch Cord', 2, 0, 0, 26),
('0004', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 27),
('0004', '000037', 'ADAPTOR 9V', 1, 0, 0, 28),
('0004', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 29),
('0005', '000007', 'ONU 2PORT', 3, 0, 0, 30),
('0005', '000008', 'ONU 4 PORT', 2, 0, 0, 31),
('0005', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 32),
('0005', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 33),
('0005', '000037', 'ADAPTOR 9V', 2, 0, 0, 34),
('0005', '000043', 'Jack cewek', 4, 0, 0, 35),
('0005', '000044', 'Jack cowok', 4, 0, 0, 36),
('0005', '000027', 'FO PRECON 150Mtr', 1, 0, 0, 37),
('0006', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 0, 0, 38),
('0006', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 39),
('0006', '000037', 'ADAPTOR 9V', 3, 0, 0, 40),
('0006', '000008', 'ONU 4 PORT', 3, 0, 0, 41),
('0006', '000007', 'ONU 2PORT', 2, 0, 0, 42),
('0006', '000043', 'Jack cewek', 5, 0, 0, 43),
('0006', '000044', 'Jack cowok', 5, 0, 0, 44),
('0006', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 45),
('0006', '000027', 'FO PRECON 150Mtr', 1, 0, 0, 46),
('0007', '000007', 'ONU 2PORT', 2, 0, 0, 47),
('0007', '000008', 'ONU 4 PORT', 2, 0, 0, 48),
('0007', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 49),
('0007', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 50),
('0007', '000037', 'ADAPTOR 9V', 2, 0, 0, 51),
('0007', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 52),
('0008', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 53),
('0008', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 54),
('0008', '000037', 'ADAPTOR 9V', 2, 0, 0, 55),
('0008', '000007', 'ONU 2PORT', 2, 0, 0, 56),
('0008', '000008', 'ONU 4 PORT', 2, 0, 0, 57),
('0008', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 58),
('0008', '000031', 'Patch Cord', 1, 0, 0, 59),
('0008', '000043', 'Jack cewek', 3, 0, 0, 60),
('0008', '000044', 'Jack cowok', 3, 0, 0, 61),
('0009', '000007', 'ONU 2PORT', 2, 0, 0, 62),
('0009', '000008', 'ONU 4 PORT', 2, 0, 0, 63),
('0009', '000001', 'MODEM DLINK DIR 612 ROBOT', 6, 0, 0, 64),
('0009', '000032', 'ADAPTOR 12V 1A', 6, 0, 0, 65),
('0009', '000037', 'ADAPTOR 9V', 2, 0, 0, 66),
('0009', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 67),
('0009', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 68),
('0009', '000027', 'FO PRECON 150Mtr', 1, 0, 0, 69),
('0009', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 70),
('0009', '000031', 'Patch Cord', 2, 0, 0, 71),
('0009', '000038', 'Protection Slave Besar', 1, 0, 0, 72),
('0009', '000024', 'CLEM BETON 8mm', 1, 0, 0, 73),
('0009', '000015', 'HTB 2 FO 4 LAN', 1, 0, 0, 74),
('0009', '000043', 'Jack cewek', 4, 0, 0, 75),
('0009', '000044', 'Jack cowok', 1, 0, 0, 76),
('0010', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 77),
('0010', '000007', 'ONU 2PORT', 2, 0, 0, 78),
('0010', '000008', 'ONU 4 PORT', 2, 0, 0, 79),
('0010', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 80),
('0010', '000037', 'ADAPTOR 9V', 2, 0, 0, 81),
('0010', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 82),
('0010', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 83),
('0011', '000007', 'ONU 2PORT', 2, 0, 0, 84),
('0011', '000008', 'ONU 4 PORT', 3, 0, 0, 85),
('0011', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 0, 0, 86),
('0011', '000032', 'ADAPTOR 12V 1A', 4, 0, 0, 87),
('0011', '000037', 'ADAPTOR 9V', 3, 0, 0, 88),
('0011', '000013', 'HTB 3 FO 3 LAN', 1, 0, 0, 89),
('0011', '000043', 'Jack cewek', 6, 0, 0, 90),
('0011', '000044', 'Jack cowok', 6, 0, 0, 91),
('0011', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 92),
('0011', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 93),
('0012', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 0, 0, 94),
('0012', '000007', 'ONU 2PORT', 2, 0, 0, 95),
('0012', '000008', 'ONU 4 PORT', 2, 0, 0, 96),
('0012', '000031', 'Patch Cord', 1, 0, 0, 97),
('0012', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 98),
('0012', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 99),
('0012', '000037', 'ADAPTOR 9V', 2, 0, 0, 100),
('0012', '000043', 'Jack cewek', 4, 0, 0, 101),
('0012', '000044', 'Jack cowok', 4, 0, 0, 102),
('0012', '000024', 'CLEM BETON 8mm', 1, 0, 0, 103),
('0013', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 0, 0, 104),
('0013', '000007', 'ONU 2PORT', 2, 0, 0, 105),
('0013', '000008', 'ONU 4 PORT', 2, 0, 0, 106),
('0013', '000032', 'ADAPTOR 12V 1A', 4, 0, 0, 107),
('0013', '000037', 'ADAPTOR 9V', 3, 0, 0, 108),
('0013', '000043', 'Jack cewek', 4, 0, 0, 109),
('0013', '000044', 'Jack cowok', 4, 0, 0, 110),
('0013', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 111),
('0013', '000024', 'CLEM BETON 8mm', 1, 0, 0, 112),
('0013', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 113),
('0014', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 114),
('0014', '000007', 'ONU 2PORT', 2, 0, 0, 115),
('0014', '000008', 'ONU 4 PORT', 2, 0, 0, 116),
('0014', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 117),
('0014', '000037', 'ADAPTOR 9V', 2, 0, 0, 118),
('0014', '000031', 'Patch Cord', 1, 0, 0, 119),
('0015', '000007', 'ONU 2PORT', 2, 0, 0, 120),
('0015', '000008', 'ONU 4 PORT', 2, 0, 0, 121),
('0015', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 0, 0, 122),
('0015', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 123),
('0015', '000037', 'ADAPTOR 9V', 2, 0, 0, 124),
('0015', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 125),
('0015', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 126),
('0015', '000031', 'Patch Cord', 1, 0, 0, 127),
('0015', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 128),
('0015', '000043', 'Jack cewek', 5, 0, 0, 129),
('0015', '000044', 'Jack cowok', 5, 0, 0, 130),
('0015', '000024', 'CLEM BETON 8mm', 1, 0, 0, 131),
('0016', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 132),
('0016', '000007', 'ONU 2PORT', 2, 0, 0, 133),
('0016', '000008', 'ONU 4 PORT', 2, 0, 0, 134),
('0016', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 135),
('0016', '000037', 'ADAPTOR 9V', 2, 0, 0, 136),
('0016', '000031', 'Patch Cord', 1, 0, 0, 137),
('0017', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 0, 0, 138),
('0017', '000007', 'ONU 2PORT', 2, 0, 0, 139),
('0017', '000008', 'ONU 4 PORT', 2, 0, 0, 140),
('0017', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 141),
('0017', '000037', 'ADAPTOR 9V', 2, 0, 0, 142),
('0017', '000017', 'SWITCH HUB 5 PORT', 1, 0, 0, 143),
('0017', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 144),
('0017', '000031', 'Patch Cord', 1, 0, 0, 145),
('0017', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 146),
('0017', '000043', 'Jack cewek', 5, 0, 0, 147),
('0017', '000044', 'Jack cowok', 5, 0, 0, 148),
('0017', '000025', 'ISOLASI', 1, 0, 0, 149),
('0018', '000007', 'ONU 2PORT', 2, 0, 0, 150),
('0018', '000008', 'ONU 4 PORT', 2, 0, 0, 151),
('0018', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 152),
('0018', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 153),
('0018', '000037', 'ADAPTOR 9V', 2, 0, 0, 154),
('0018', '000043', 'Jack cewek', 3, 0, 0, 155),
('0018', '000044', 'Jack cowok', 3, 0, 0, 156),
('0018', '000015', 'HTB 2 FO 4 LAN', 1, 0, 0, 157),
('0018', '000022', 'ODP SPLITER 1:4', 1, 0, 0, 158),
('0018', '000031', 'Patch Cord', 2, 0, 0, 159),
('0018', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 160),
('0018', '000025', 'ISOLASI', 1, 0, 0, 161),
('0019', '000013', 'HTB 3 FO 3 LAN', 1, 0, 0, 162),
('0019', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 163),
('0020', '000001', 'MODEM DLINK DIR 612 ROBOT', 6, 0, 0, 164),
('0020', '000008', 'ONU 4 PORT', 3, 0, 0, 165),
('0020', '000007', 'ONU 2PORT', 2, 0, 0, 166),
('0020', '000032', 'ADAPTOR 12V 1A', 5, 0, 0, 167),
('0020', '000037', 'ADAPTOR 9V', 2, 0, 0, 168),
('0020', '000024', 'CLEM BETON 8mm', 1, 0, 0, 169),
('0020', '000031', 'Patch Cord', 2, 0, 0, 170),
('0020', '000021', 'ODP SPLITER 1:2', 2, 0, 0, 171),
('0020', '000022', 'ODP SPLITER 1:4', 2, 0, 0, 172),
('0020', '000043', 'Jack cewek', 8, 0, 0, 173),
('0020', '000044', 'Jack cowok', 8, 0, 0, 174),
('0020', '000026', 'FO PRECON 100Mtr', 1, 0, 0, 175),
('0021', '000027', 'FO PRECON 150Mtr', 1, 0, 0, 176),
('0022', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 177),
('0022', '000007', 'ONU 2PORT', 1, 0, 0, 178),
('0022', '000008', 'ONU 4 PORT', 1, 0, 0, 179),
('0022', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 180),
('0022', '000037', 'ADAPTOR 9V', 2, 0, 0, 181),
('0022', '000031', 'Patch Cord', 1, 0, 0, 182),
('0023', '000025', 'ISOLASI', 1, 0, 0, 183),
('0024', '000007', 'ONU 2PORT', 2, 0, 0, 184),
('0024', '000008', 'ONU 4 PORT', 2, 0, 0, 185),
('0024', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 0, 0, 186),
('0024', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 187),
('0024', '000037', 'ADAPTOR 9V', 1, 0, 0, 188),
('0024', '000043', 'Jack cewek', 4, 0, 0, 189),
('0024', '000044', 'Jack cowok', 4, 0, 0, 190),
('0024', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 191),
('0024', '000031', 'Patch Cord', 1, 0, 0, 192),
('0025', '000043', 'Jack cewek', 51, 0, 0, 193),
('0025', '000044', 'Jack cowok', 30, 0, 0, 194),
('0026', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 0, 0, 195),
('0026', '000043', 'Jack cewek', 2, 0, 0, 196),
('0026', '000044', 'Jack cowok', 2, 0, 0, 197),
('0026', '000032', 'ADAPTOR 12V 1A', 1, 0, 0, 198),
('0027', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 0, 0, 199),
('0027', '000007', 'ONU 2PORT', 2, 0, 0, 200),
('0027', '000008', 'ONU 4 PORT', 2, 0, 0, 201),
('0027', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 202),
('0027', '000037', 'ADAPTOR 9V', 2, 0, 0, 203),
('0027', '000031', 'Patch Cord', 1, 0, 0, 204),
('0027', '000018', 'SWITCH HUB 8 PORT', 1, 0, 0, 205),
('0028', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 206),
('0028', '000008', 'ONU 4 PORT', 2, 0, 0, 207),
('0028', '000007', 'ONU 2PORT', 2, 0, 0, 208),
('0028', '000032', 'ADAPTOR 12V 1A', 2, 0, 0, 209),
('0028', '000037', 'ADAPTOR 9V', 1, 0, 0, 210),
('0028', '000043', 'Jack cewek', 4, 0, 0, 211),
('0028', '000044', 'Jack cowok', 4, 0, 0, 212),
('0028', '000021', 'ODP SPLITER 1:2', 1, 0, 0, 213),
('0028', '000031', 'Patch Cord', 1, 0, 0, 214),
('0029', '000041', 'Roset 6C Hitam kaset', 1, 0, 0, 215),
('0030', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 0, 0, 216),
('0030', '000007', 'ONU 2PORT', 2, 0, 0, 217),
('0030', '000008', 'ONU 4 PORT', 2, 0, 0, 218),
('0030', '000032', 'ADAPTOR 12V 1A', 3, 0, 0, 219),
('0030', '000037', 'ADAPTOR 9V', 1, 0, 0, 220),
('0030', '000043', 'Jack cewek', 2, 0, 0, 221),
('0030', '000044', 'Jack cowok', 2, 0, 0, 222),
('0030', '000045', 'Modem Campur', 1, 0, 0, 223);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_masuk`
--

CREATE TABLE `stok_masuk` (
  `nota` varchar(10) NOT NULL,
  `cabang` varchar(2) NOT NULL,
  `tgl` date NOT NULL,
  `supplier` varchar(100) NOT NULL,
  `userid` varchar(10) NOT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_masuk`
--

INSERT INTO `stok_masuk` (`nota`, `cabang`, `tgl`, `supplier`, `userid`, `no`) VALUES
('0001', '', '2024-06-18', 'Anton', '42', 3),
('0004', '', '2024-06-18', 'Fahmi antoni', '47', 4),
('0005', '', '2024-06-18', 'Diki', '47', 5),
('0006', '', '2024-06-19', 'Hendra', '47', 6),
('0007', '', '2024-06-20', 'Asep', '47', 7),
('0008', '', '2024-06-20', 'Mamat', '47', 8),
('0009', '', '2024-06-20', 'Anton', '47', 9),
('0010', '', '2024-06-20', 'Hendra', '47', 10),
('0011', '', '2024-06-20', 'Martin', '47', 11),
('0012', '', '2024-06-21', 'Asep', '47', 12),
('0013', '', '2024-06-21', 'Hendra', '47', 13),
('0014', '', '2024-06-22', 'Mamat', '47', 14),
('0015', '', '2024-06-22', 'Hendra', '47', 15),
('0016', '', '2024-06-23', 'Mamat', '47', 16),
('0017', '', '2024-06-24', 'Asep', '47', 17),
('0018', '', '2024-06-24', 'Mamat', '47', 18),
('0019', '', '2024-06-24', 'Anton', '47', 19),
('0020', '', '2024-06-25', 'Mamat', '47', 20),
('0021', '', '2024-06-25', 'Hendra', '47', 21),
('0022', '', '2024-06-25', 'Mamat', '47', 22),
('0023', '', '2024-06-26', 'Mamat', '47', 23),
('0024', '', '2024-06-26', 'Fahmi antoni', '47', 24),
('0025', '', '2024-06-26', 'Hendra', '47', 25),
('0026', '', '2024-06-27', 'Mamat', '47', 26);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_masuk_daftar`
--

CREATE TABLE `stok_masuk_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_barang` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `jumlah` int(10) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_masuk_daftar`
--

INSERT INTO `stok_masuk_daftar` (`nota`, `kode_barang`, `nama`, `jumlah`, `no`) VALUES
('0001', '000007', 'ONU 2PORT', 1, 5),
('0001', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 6),
('0001', '000021', 'ODP SPLITER 1:2', 1, 7),
('0001', '000031', 'Patch Cord', 1, 8),
('0001', '000037', 'ADAPTOR 9V', 2, 9),
('0001', '000032', 'ADAPTOR 12V 1A', 2, 10),
('0004', '000031', 'Patch Cord', 1, 11),
('0004', '000022', 'ODP SPLITER 1:4', 1, 12),
('0004', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 13),
('0004', '000008', 'ONU 4 PORT', 1, 14),
('0004', '000007', 'ONU 2PORT', 1, 15),
('0004', '000032', 'ADAPTOR 12V 1A', 0, 16),
('0004', '000043', 'Jack cewek', 3, 17),
('0004', '000037', 'ADAPTOR 9V', 1, 18),
('0005', '000007', 'ONU 2PORT', 5, 19),
('0005', '000008', 'ONU 4 PORT', 2, 20),
('0005', '000032', 'ADAPTOR 12V 1A', 5, 21),
('0005', '000037', 'ADAPTOR 9V', 5, 22),
('0005', '000031', 'Patch Cord', 4, 23),
('0005', '000022', 'ODP SPLITER 1:4', 1, 24),
('0005', '000044', 'Jack cowok', 5, 25),
('0005', '000043', 'Jack cewek', 5, 26),
('0005', '000026', 'FO PRECON 100Mtr', 1, 27),
('0005', '000027', 'FO PRECON 150Mtr', 1, 28),
('0005', '000016', 'HTB 2 FO 6 LAN', 1, 29),
('0005', '000015', 'HTB 2 FO 4 LAN', 2, 30),
('0005', '000042', 'UPS MINI ', 1, 31),
('0005', '000021', 'ODP SPLITER 1:2', 2, 32),
('0006', '000007', 'ONU 2PORT', 2, 33),
('0006', '000008', 'ONU 4 PORT', 2, 34),
('0006', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 35),
('0006', '000032', 'ADAPTOR 12V 1A', 1, 36),
('0006', '000037', 'ADAPTOR 9V', 2, 37),
('0006', '000043', 'Jack cewek', 3, 38),
('0006', '000044', 'Jack cowok', 3, 39),
('0007', '000007', 'ONU 2PORT', 3, 40),
('0007', '000008', 'ONU 4 PORT', 2, 41),
('0007', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 42),
('0007', '000021', 'ODP SPLITER 1:2', 1, 43),
('0007', '000022', 'ODP SPLITER 1:4', 1, 44),
('0007', '000031', 'Patch Cord', 2, 45),
('0007', '000032', 'ADAPTOR 12V 1A', 2, 46),
('0007', '000037', 'ADAPTOR 9V', 1, 47),
('0007', '000045', 'Modem Campur', 1, 48),
('0008', '000037', 'ADAPTOR 9V', 2, 49),
('0008', '000008', 'ONU 4 PORT', 3, 50),
('0008', '000007', 'ONU 2PORT', 2, 51),
('0008', '000043', 'Jack cewek', 5, 52),
('0008', '000044', 'Jack cowok', 5, 53),
('0008', '000026', 'FO PRECON 100Mtr', 1, 54),
('0008', '000027', 'FO PRECON 150Mtr', 1, 55),
('0008', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 56),
('0009', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 57),
('0009', '000007', 'ONU 2PORT', 2, 58),
('0009', '000008', 'ONU 4 PORT', 2, 59),
('0009', '000032', 'ADAPTOR 12V 1A', 2, 60),
('0009', '000037', 'ADAPTOR 9V', 2, 61),
('0009', '000021', 'ODP SPLITER 1:2', 1, 62),
('0010', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 63),
('0010', '000032', 'ADAPTOR 12V 1A', 2, 64),
('0010', '000037', 'ADAPTOR 9V', 2, 65),
('0010', '000007', 'ONU 2PORT', 1, 66),
('0010', '000008', 'ONU 4 PORT', 3, 67),
('0010', '000031', 'Patch Cord', 1, 68),
('0010', '000021', 'ODP SPLITER 1:2', 1, 69),
('0010', '000043', 'Jack cewek', 3, 70),
('0010', '000044', 'Jack cowok', 3, 71),
('0011', '000007', 'ONU 2PORT', 1, 72),
('0011', '000008', 'ONU 4 PORT', 2, 73),
('0011', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 74),
('0011', '000032', 'ADAPTOR 12V 1A', 1, 75),
('0011', '000037', 'ADAPTOR 9V', 1, 76),
('0011', '000026', 'FO PRECON 100Mtr', 1, 77),
('0011', '000027', 'FO PRECON 150Mtr', 1, 78),
('0011', '000021', 'ODP SPLITER 1:2', 1, 79),
('0011', '000031', 'Patch Cord', 2, 80),
('0011', '000038', 'Protection Slave Besar', 1, 81),
('0011', '000015', 'HTB 2 FO 4 LAN', 1, 82),
('0011', '000043', 'Jack cewek', 4, 83),
('0011', '000044', 'Jack cowok', 4, 84),
('0012', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 85),
('0012', '000007', 'ONU 2PORT', 2, 86),
('0012', '000008', 'ONU 4 PORT', 2, 87),
('0012', '000032', 'ADAPTOR 12V 1A', 2, 88),
('0012', '000037', 'ADAPTOR 9V', 2, 89),
('0012', '000021', 'ODP SPLITER 1:2', 1, 90),
('0012', '000017', 'SWITCH HUB 5 PORT', 1, 91),
('0012', '000031', 'Patch Cord', 1, 92),
('0013', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 93),
('0013', '000008', 'ONU 4 PORT', 1, 94),
('0013', '000007', 'ONU 2PORT', 2, 95),
('0013', '000032', 'ADAPTOR 12V 1A', 2, 96),
('0013', '000037', 'ADAPTOR 9V', 3, 97),
('0013', '000043', 'Jack cewek', 6, 98),
('0013', '000044', 'Jack cowok', 6, 99),
('0013', '000017', 'SWITCH HUB 5 PORT', 1, 100),
('0013', '000026', 'FO PRECON 100Mtr', 1, 101),
('0013', '000015', 'HTB 2 FO 4 LAN', 1, 102),
('0014', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 103),
('0014', '000007', 'ONU 2PORT', 2, 104),
('0014', '000008', 'ONU 4 PORT', 2, 105),
('0014', '000031', 'Patch Cord', 1, 106),
('0014', '000026', 'FO PRECON 100Mtr', 1, 107),
('0014', '000032', 'ADAPTOR 12V 1A', 1, 108),
('0014', '000037', 'ADAPTOR 9V', 2, 109),
('0014', '000043', 'Jack cewek', 3, 110),
('0014', '000044', 'Jack cowok', 3, 111),
('0014', '000024', 'CLEM BETON 8mm', 1, 112),
('0015', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 113),
('0015', '000007', 'ONU 2PORT', 2, 114),
('0015', '000008', 'ONU 4 PORT', 2, 115),
('0015', '000032', 'ADAPTOR 12V 1A', 2, 116),
('0015', '000037', 'ADAPTOR 9V', 3, 117),
('0015', '000043', 'Jack cewek', 1, 118),
('0015', '000044', 'Jack cowok', 1, 119),
('0015', '000017', 'SWITCH HUB 5 PORT', 1, 120),
('0016', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 121),
('0016', '000008', 'ONU 4 PORT', 2, 122),
('0016', '000007', 'ONU 2PORT', 2, 123),
('0016', '000037', 'ADAPTOR 9V', 2, 124),
('0016', '000032', 'ADAPTOR 12V 1A', 2, 125),
('0016', '000031', 'Patch Cord', 1, 126),
('0017', '000007', 'ONU 2PORT', 3, 127),
('0017', '000008', 'ONU 4 PORT', 1, 128),
('0017', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 129),
('0017', '000032', 'ADAPTOR 12V 1A', 1, 130),
('0017', '000037', 'ADAPTOR 9V', 2, 131),
('0017', '000017', 'SWITCH HUB 5 PORT', 1, 132),
('0017', '000026', 'FO PRECON 100Mtr', 1, 133),
('0017', '000043', 'Jack cewek', 2, 134),
('0017', '000044', 'Jack cowok', 2, 135),
('0018', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 136),
('0018', '000007', 'ONU 2PORT', 2, 137),
('0018', '000008', 'ONU 4 PORT', 2, 138),
('0018', '000033', 'ADAPTOR 12V 1,5A', 2, 139),
('0018', '000037', 'ADAPTOR 9V', 2, 140),
('0018', '000031', 'Patch Cord', 1, 141),
('0019', '000001', 'MODEM DLINK DIR 612 ROBOT', 4, 142),
('0019', '000007', 'ONU 2PORT', 2, 143),
('0019', '000008', 'ONU 4 PORT', 2, 144),
('0019', '000032', 'ADAPTOR 12V 1A', 3, 145),
('0019', '000037', 'ADAPTOR 9V', 2, 146),
('0019', '000021', 'ODP SPLITER 1:2', 1, 147),
('0019', '000031', 'Patch Cord', 1, 148),
('0019', '000026', 'FO PRECON 100Mtr', 1, 149),
('0019', '000043', 'Jack cewek', 5, 150),
('0019', '000044', 'Jack cowok', 5, 151),
('0019', '000025', 'ISOLASI', 1, 152),
('0019', '000015', 'HTB 2 FO 4 LAN', 2, 153),
('0020', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 154),
('0020', '000008', 'ONU 4 PORT', 1, 155),
('0020', '000007', 'ONU 2PORT', 1, 156),
('0020', '000032', 'ADAPTOR 12V 1A', 2, 157),
('0020', '000037', 'ADAPTOR 9V', 2, 158),
('0020', '000031', 'Patch Cord', 1, 159),
('0021', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 160),
('0021', '000008', 'ONU 4 PORT', 2, 161),
('0021', '000007', 'ONU 2PORT', 2, 162),
('0021', '000032', 'ADAPTOR 12V 1A', 2, 163),
('0021', '000037', 'ADAPTOR 9V', 2, 164),
('0021', '000043', 'Jack cewek', 3, 165),
('0021', '000044', 'Jack cowok', 3, 166),
('0021', '000022', 'ODP SPLITER 1:4', 1, 167),
('0021', '000026', 'FO PRECON 100Mtr', 1, 168),
('0022', '000001', 'MODEM DLINK DIR 612 ROBOT', 5, 169),
('0022', '000008', 'ONU 4 PORT', 3, 170),
('0022', '000007', 'ONU 2PORT', 1, 171),
('0022', '000032', 'ADAPTOR 12V 1A', 4, 172),
('0022', '000037', 'ADAPTOR 9V', 2, 173),
('0022', '000031', 'Patch Cord', 1, 174),
('0022', '000021', 'ODP SPLITER 1:2', 2, 175),
('0022', '000022', 'ODP SPLITER 1:4', 2, 176),
('0022', '000043', 'Jack cewek', 6, 177),
('0022', '000044', 'Jack cowok', 6, 178),
('0022', '000026', 'FO PRECON 100Mtr', 1, 179),
('0023', '000001', 'MODEM DLINK DIR 612 ROBOT', 2, 180),
('0023', '000007', 'ONU 2PORT', 1, 181),
('0023', '000008', 'ONU 4 PORT', 1, 182),
('0023', '000032', 'ADAPTOR 12V 1A', 2, 183),
('0023', '000037', 'ADAPTOR 9V', 2, 184),
('0023', '000031', 'Patch Cord', 1, 185),
('0024', '000001', 'MODEM DLINK DIR 612 ROBOT', 1, 186),
('0024', '000037', 'ADAPTOR 9V', 1, 187),
('0024', '000017', 'SWITCH HUB 5 PORT', 1, 188),
('0025', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 189),
('0025', '000008', 'ONU 4 PORT', 2, 190),
('0025', '000007', 'ONU 2PORT', 2, 191),
('0025', '000032', 'ADAPTOR 12V 1A', 2, 192),
('0025', '000037', 'ADAPTOR 9V', 1, 193),
('0025', '000043', 'Jack cewek', 4, 194),
('0025', '000044', 'Jack cowok', 4, 195),
('0025', '000021', 'ODP SPLITER 1:2', 1, 196),
('0025', '000031', 'Patch Cord', 1, 197),
('0026', '000001', 'MODEM DLINK DIR 612 ROBOT', 3, 198),
('0026', '000007', 'ONU 2PORT', 2, 199),
('0026', '000008', 'ONU 4 PORT', 2, 200),
('0026', '000032', 'ADAPTOR 12V 1A', 3, 201),
('0026', '000037', 'ADAPTOR 9V', 2, 202),
('0026', '000031', 'Patch Cord', 1, 203),
('0026', '000015', 'HTB 2 FO 4 LAN', 1, 204),
('0026', '000017', 'SWITCH HUB 5 PORT', 1, 205);

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_sesuai`
--

CREATE TABLE `stok_sesuai` (
  `nota` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `oleh` varchar(100) NOT NULL,
  `keterangan` varchar(200) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `stok_sesuai_daftar`
--

CREATE TABLE `stok_sesuai_daftar` (
  `nota` varchar(10) NOT NULL,
  `kode_brg` varchar(10) NOT NULL,
  `nama` varchar(200) NOT NULL,
  `sebelum` int(10) NOT NULL,
  `sesudah` int(10) NOT NULL,
  `selisih` int(10) NOT NULL,
  `catatan` varchar(100) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `stok_sesuai_daftar`
--

INSERT INTO `stok_sesuai_daftar` (`nota`, `kode_brg`, `nama`, `sebelum`, `sesudah`, `selisih`, `catatan`, `no`) VALUES
('0001', '000029', 'FO 2core 3s - 1km', 1, 0, -1, '', 1),
('0001', '000007', 'ONU 2PORT', 51, 53, 2, '', 2),
('0001', '000008', 'ONU 4 PORT', 62, 64, 2, '', 3),
('0001', '000001', 'MODEM DLINK DIR 612 ROBOT', 105, 109, 4, '', 4),
('0001', '000021', 'ODP SPLITER 1:2', 25, 27, 2, '', 5),
('0001', '000026', 'FO PRECON 100Mtr', 139, 140, 1, '', 7),
('0001', '000037', 'ADAPTOR 9V', 200, 210, 10, '', 8),
('0001', '000033', 'ADAPTOR 12V 1,5A', 25, 76, 51, '', 9),
('0001', '000036', 'ADAPTOR 5V', 20, 103, 83, '', 11),
('0001', '000034', 'ADAPTOR 12V 2A', 20, 70, 50, '', 13),
('0001', '000031', 'Patch Cord', 50, 352, 302, '', 14),
('0001', '000032', 'ADAPTOR 12V 1A', 50, 252, 202, '', 15),
('0001', '000022', 'ODP SPLITER 1:4', 12, 15, 3, '', 16);

-- --------------------------------------------------------

--
-- Struktur dari tabel `supplier`
--

CREATE TABLE `supplier` (
  `kode` varchar(20) NOT NULL,
  `tgldaftar` date DEFAULT NULL,
  `nama` varchar(25) DEFAULT NULL,
  `alamat` varchar(70) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `supplier`
--

INSERT INTO `supplier` (`kode`, `tgldaftar`, `nama`, `alamat`, `nohp`, `no`) VALUES
('0001', '2024-06-18', 'Fahmi antoni', '', '0812345678', 1),
('0002', '2024-06-18', 'Mamat', '', '08123456', 2),
('0003', '2024-06-18', 'Asep', '', '081234567', 3),
('0004', '2024-06-18', 'Anton', '', '08123456789', 4),
('0005', '2024-06-18', 'Hendra', '', '0812345', 5),
('0006', '2024-06-18', 'Martin', '', '08123456', 6),
('0007', '2024-06-18', 'Diki', '', '0812345678', 7);

-- --------------------------------------------------------

--
-- Struktur dari tabel `surat`
--

CREATE TABLE `surat` (
  `nota` varchar(10) NOT NULL,
  `nosurat` varchar(20) NOT NULL,
  `tanggal` date NOT NULL,
  `kode_pelanggan` varchar(10) NOT NULL,
  `tujuan` varchar(30) NOT NULL,
  `notelp` varchar(20) NOT NULL,
  `alamat` varchar(250) NOT NULL,
  `driver` varchar(20) NOT NULL,
  `nohp` varchar(20) NOT NULL,
  `nopol` varchar(10) NOT NULL,
  `oleh` varchar(50) NOT NULL,
  `no` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `surat`
--

INSERT INTO `surat` (`nota`, `nosurat`, `tanggal`, `kode_pelanggan`, `tujuan`, `notelp`, `alamat`, `driver`, `nohp`, `nopol`, `oleh`, `no`) VALUES
('0001', 'SR0001', '2024-06-18', 'Pilih Pela', '', '', '', '', '', '', 'admin', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `userna_me` varchar(20) NOT NULL,
  `pa_ssword` varchar(70) DEFAULT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `alamat` varchar(255) DEFAULT NULL,
  `nohp` varchar(20) DEFAULT NULL,
  `tgllahir` date DEFAULT NULL,
  `tglaktif` date DEFAULT NULL,
  `jabatan` varchar(20) DEFAULT NULL,
  `avatar` varchar(100) DEFAULT NULL,
  `no` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data untuk tabel `user`
--

INSERT INTO `user` (`userna_me`, `pa_ssword`, `nama`, `alamat`, `nohp`, `tgllahir`, `tglaktif`, `jabatan`, `avatar`, `no`) VALUES
('admin', '6ae0b5d060f7716fe0769d082556d8f03b307164', 'admin', '  admin', '11111', '2023-04-02', '2020-03-26', 'admin', 'dist/upload/avatar-1.png', 42),
('operator', 'e1eb39623dfa23bcf8c7b6fee2a17b85bc53da3e', 'Operator', 'Jakarta', '0123456789', '2023-04-02', '2023-04-02', 'operator', 'dist/upload/avatar-1.png', 46),
('topik', 'f50f1ee83b84a8844e2a7531eb72e113871d0abd', 'moh topik', 'sukamulya', '08123456789', '2024-06-01', '2024-06-17', 'operator', 'dist/upload/index.jpg', 47);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `backset`
--
ALTER TABLE `backset`
  ADD PRIMARY KEY (`url`);

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`),
  ADD KEY `jenis` (`kategori`);

--
-- Indeks untuk tabel `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indeks untuk tabel `chmenu`
--
ALTER TABLE `chmenu`
  ADD PRIMARY KEY (`userjabatan`);

--
-- Indeks untuk tabel `data`
--
ALTER TABLE `data`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `info`
--
ALTER TABLE `info`
  ADD KEY `id` (`id`);

--
-- Indeks untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no` (`no`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no4` (`no`);

--
-- Indeks untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `satuan`
--
ALTER TABLE `satuan`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_keluar`
--
ALTER TABLE `stok_keluar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_masuk`
--
ALTER TABLE `stok_masuk`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`kode`),
  ADD KEY `no3` (`no`);

--
-- Indeks untuk tabel `surat`
--
ALTER TABLE `surat`
  ADD PRIMARY KEY (`no`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userna_me`),
  ADD KEY `no` (`no`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT untuk tabel `brand`
--
ALTER TABLE `brand`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `jabatan`
--
ALTER TABLE `jabatan`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT untuk tabel `kategori`
--
ALTER TABLE `kategori`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `mutasi`
--
ALTER TABLE `mutasi`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=445;

--
-- AUTO_INCREMENT untuk tabel `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `satuan`
--
ALTER TABLE `satuan`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `stok_keluar`
--
ALTER TABLE `stok_keluar`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `stok_keluar_daftar`
--
ALTER TABLE `stok_keluar_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=224;

--
-- AUTO_INCREMENT untuk tabel `stok_masuk`
--
ALTER TABLE `stok_masuk`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT untuk tabel `stok_masuk_daftar`
--
ALTER TABLE `stok_masuk_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=206;

--
-- AUTO_INCREMENT untuk tabel `stok_sesuai`
--
ALTER TABLE `stok_sesuai`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `stok_sesuai_daftar`
--
ALTER TABLE `stok_sesuai_daftar`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `supplier`
--
ALTER TABLE `supplier`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `surat`
--
ALTER TABLE `surat`
  MODIFY `no` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
