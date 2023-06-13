-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 13 Jun 2023 pada 16.00
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `absensi_karyawan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_keluar`
--

CREATE TABLE `absen_keluar` (
  `id_karyawanq` varchar(8) NOT NULL,
  `timer` varchar(20) NOT NULL,
  `dater` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absen_keluar`
--

INSERT INTO `absen_keluar` (`id_karyawanq`, `timer`, `dater`) VALUES
('123qq', '01-47-11', '11-06-2023'),
('123qq', '01-47-13', '11-06-2023'),
('123qq', '01-47-14', '11-06-2023'),
('123aa', '12-31-31', '13-06-2023'),
('123aa', '03-24-22', '13-06-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `absen_masuk`
--

CREATE TABLE `absen_masuk` (
  `id_karyawan` varchar(8) NOT NULL,
  `id_masuk` int(10) NOT NULL,
  `time_masuk` varchar(20) NOT NULL,
  `date_masuk` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `absen_masuk`
--

INSERT INTO `absen_masuk` (`id_karyawan`, `id_masuk`, `time_masuk`, `date_masuk`) VALUES
('123aa', 8, '', '[value-4]'),
('123aa', 9, '03-36-06', '13-06-2023');

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id_login` int(10) NOT NULL,
  `username` varchar(15) NOT NULL,
  `password` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id_login`, `username`, `password`) VALUES
(1, 'admin', 'qwerty123');

-- --------------------------------------------------------

--
-- Struktur dari tabel `data_karyawan`
--

CREATE TABLE `data_karyawan` (
  `id_karyawan` varchar(8) NOT NULL,
  `nama` varchar(20) NOT NULL,
  `jabatan` varchar(15) NOT NULL,
  `jenis_kelamin` varchar(15) NOT NULL,
  `kontak` varchar(15) NOT NULL,
  `pin` int(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `data_karyawan`
--

INSERT INTO `data_karyawan` (`id_karyawan`, `nama`, `jabatan`, `jenis_kelamin`, `kontak`, `pin`) VALUES
('1234', 'wqebqwb', 'ceo', 'laki-laki', '2312312', 123),
('12345as', 'ikdawn', 'supervisor', 'laki-laki', '312311', 123123),
('12345ii', 'wqebqwb', 'ceo', 'laki-laki', '2312312', 123),
('123aa', 'ikhwan n', 'office boy', 'transformer', '312312', 123456),
('123qq', 'qwer', 'ceo', 'laki-laki', '1234', 123123);

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin`
--

CREATE TABLE `izin` (
  `idkaryawanz` varchar(8) NOT NULL,
  `alasan` varchar(15) NOT NULL,
  `mulaitanggal` varchar(20) NOT NULL,
  `hinggatanggal` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `izin`
--

INSERT INTO `izin` (`idkaryawanz`, `alasan`, `mulaitanggal`, `hinggatanggal`) VALUES
('123qq', 'sakit', '12/12/12', '12/12/12'),
('123aa', 'cuti', '12/12/12', '13/12/12');

-- --------------------------------------------------------

--
-- Struktur dari tabel `login_karyawan`
--

CREATE TABLE `login_karyawan` (
  `id_loginkar` int(10) NOT NULL,
  `id_karyawan` varchar(8) NOT NULL,
  `user_kar` varchar(15) NOT NULL,
  `pass_kar` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `login_karyawan`
--

INSERT INTO `login_karyawan` (`id_loginkar`, `id_karyawan`, `user_kar`, `pass_kar`) VALUES
(2, '123aa', 'ikhwan', 'ikhwan123');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `absen_masuk`
--
ALTER TABLE `absen_masuk`
  ADD PRIMARY KEY (`id_masuk`),
  ADD KEY `absen_masuk_ibfk_1` (`id_karyawan`);

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id_login`);

--
-- Indeks untuk tabel `data_karyawan`
--
ALTER TABLE `data_karyawan`
  ADD PRIMARY KEY (`id_karyawan`);

--
-- Indeks untuk tabel `login_karyawan`
--
ALTER TABLE `login_karyawan`
  ADD PRIMARY KEY (`id_loginkar`),
  ADD KEY `login_karyawan_ibfk_1` (`id_karyawan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `absen_masuk`
--
ALTER TABLE `absen_masuk`
  MODIFY `id_masuk` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id_login` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `login_karyawan`
--
ALTER TABLE `login_karyawan`
  MODIFY `id_loginkar` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `absen_masuk`
--
ALTER TABLE `absen_masuk`
  ADD CONSTRAINT `absen_masuk_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `data_karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Ketidakleluasaan untuk tabel `login_karyawan`
--
ALTER TABLE `login_karyawan`
  ADD CONSTRAINT `login_karyawan_ibfk_1` FOREIGN KEY (`id_karyawan`) REFERENCES `data_karyawan` (`id_karyawan`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
