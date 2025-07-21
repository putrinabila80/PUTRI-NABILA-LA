-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 06 Bulan Mei 2025 pada 06.15
-- Versi server: 10.4.32-MariaDB
-- Versi PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sijadin`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nrp` varchar(50) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `nama`, `nrp`, `pangkat`, `jabatan`, `email`, `hp`, `password`, `foto`) VALUES
(5, 'Sersan Sony Oktapriandi', '08888888', 'serda', 'provos', 'asdadasd@gmail.com', '08888888', '$2y$10$x6MWkWLvbiT9g32Kohsab.JHsjwLWgHRoad3N8A07k0tb7HrJwQaa', 'admin_5_1746503878.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `izin_pegawai`
--

CREATE TABLE `izin_pegawai` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `pangkat` varchar(50) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `jenis` enum('sakit','cuti','lainnya') NOT NULL,
  `alasan` text NOT NULL,
  `tanggal` date NOT NULL,
  `status` enum('Pending','Dikirim ke Pimpinan','Disetujui','Ditolak') DEFAULT 'Pending',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `izin_pegawai`
--

INSERT INTO `izin_pegawai` (`id`, `pegawai_id`, `nama`, `pangkat`, `nrp`, `jenis`, `alasan`, `tanggal`, `status`, `created_at`) VALUES
(4, 2, 'sersan joni', 'serda', '080886675', 'sakit', 'muntah muntah', '2025-05-07', 'Disetujui', '2025-05-06 04:09:39');

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal`
--

CREATE TABLE `jadwal` (
  `id` int(11) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `organik` varchar(100) NOT NULL,
  `piket` varchar(100) NOT NULL,
  `tanggal` date NOT NULL,
  `minggu_ke` int(11) NOT NULL,
  `bulan` varchar(20) NOT NULL,
  `tahun` varchar(10) NOT NULL,
  `status` enum('belum divalidasi','terkirim','divalidasi') DEFAULT 'belum divalidasi',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `pegawai_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `jadwal`
--

INSERT INTO `jadwal` (`id`, `id_admin`, `nama`, `pangkat`, `nrp`, `organik`, `piket`, `tanggal`, `minggu_ke`, `bulan`, `tahun`, `status`, `created_at`, `updated_at`, `pegawai_id`) VALUES
(561, 5, 'saa', 'aa', 'a', 'aa', 'aa', '2025-05-06', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(562, 5, 'asa', 'as', 'as', 'asa', 'as', '2025-05-06', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(563, 5, 'as', 'as', 'as', 'a', 'a', '2025-05-06', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(564, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-06', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(565, 5, 'aa', 'aa', 'aaaa', 'a', 'aa', '2025-05-07', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(566, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-07', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(567, 5, 'aa', 'aaa', 'aa', 'aa', 'aa', '2025-05-07', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(568, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-07', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(569, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-08', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(570, 5, 'aa', 'aa', 'aa', 'aaa', 'aa', '2025-05-08', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(571, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-08', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(572, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-08', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(573, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-09', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(574, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-09', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(575, 5, 'aaa', 'aa', 'aa', 'aa', 'aa', '2025-05-09', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(576, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-09', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(577, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-10', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(578, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-10', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(579, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-10', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(580, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-10', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(581, 5, 'aaa', 'aa', 'aa', 'aaaa', 'aa', '2025-05-11', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(582, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-11', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(583, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-11', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(584, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-11', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(585, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-12', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(586, 5, 'aa', 'aa', 'aa', 'aa', 'aa', '2025-05-12', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(587, 5, 'a', 'a', 'aa', 'a', 'a', '2025-05-12', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL),
(588, 5, 'a', 'a', 'a', 'a', 'a', '2025-05-12', 1, 'May', '2025', 'divalidasi', '2025-05-06 04:07:31', '2025-05-06 04:08:30', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `jadwal_dinas`
--

CREATE TABLE `jadwal_dinas` (
  `id` int(11) NOT NULL,
  `pegawai_id` int(11) DEFAULT NULL,
  `tanggal` date DEFAULT NULL,
  `shift` varchar(50) DEFAULT NULL,
  `status` enum('Belum Validasi','Sudah Validasi') DEFAULT 'Belum Validasi',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `pegawai`
--

CREATE TABLE `pegawai` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `nrp` varchar(50) NOT NULL,
  `pangkat` varchar(100) NOT NULL,
  `jabatan` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `hp` varchar(20) NOT NULL,
  `password` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pegawai`
--

INSERT INTO `pegawai` (`id`, `nama`, `nrp`, `pangkat`, `jabatan`, `email`, `hp`, `password`, `foto`, `created_at`, `updated_at`) VALUES
(2, 'sersan joni', '0897654', 'sertu', 'sertu', 'joni@gmail.com', '0897654', '$2y$10$3uU5NgNTGcH5arYxGVtLAulM1H8Zunjy4ebAn2FHny5q/qbx5RpfW', '', '2025-05-06 03:59:24', '2025-05-06 03:59:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pimpinan`
--

CREATE TABLE `pimpinan` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) DEFAULT NULL,
  `nrp` varchar(50) DEFAULT NULL,
  `pangkat` varchar(50) DEFAULT NULL,
  `jabatan` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `hp` varchar(20) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `pimpinan`
--

INSERT INTO `pimpinan` (`id`, `nama`, `nrp`, `pangkat`, `jabatan`, `email`, `hp`, `password`, `foto`) VALUES
(6, 'komandan arie', '08888222', 'komandan', 'komandan', 'arie@gmail.com', '0876543', '$2y$10$wbrpXi/LSH67PtNSCMu/te14CFKDlpZMTdb.3hP0Tsxp13/6AACGm', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `izin_pegawai`
--
ALTER TABLE `izin_pegawai`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `jadwal_dinas`
--
ALTER TABLE `jadwal_dinas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pegawai_id` (`pegawai_id`);

--
-- Indeks untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `hp` (`hp`);

--
-- Indeks untuk tabel `pimpinan`
--
ALTER TABLE `pimpinan`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `izin_pegawai`
--
ALTER TABLE `izin_pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `jadwal`
--
ALTER TABLE `jadwal`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=589;

--
-- AUTO_INCREMENT untuk tabel `jadwal_dinas`
--
ALTER TABLE `jadwal_dinas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `pegawai`
--
ALTER TABLE `pegawai`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `pimpinan`
--
ALTER TABLE `pimpinan`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `jadwal_dinas`
--
ALTER TABLE `jadwal_dinas`
  ADD CONSTRAINT `jadwal_dinas_ibfk_1` FOREIGN KEY (`pegawai_id`) REFERENCES `pegawai` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
