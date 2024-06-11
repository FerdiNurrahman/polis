-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 11 Jun 2024 pada 17.04
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
-- Database: `db_polis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `detail_pengarang`
--

CREATE TABLE `detail_pengarang` (
  `id` varchar(55) NOT NULL,
  `idkoleksi` varchar(50) DEFAULT NULL,
  `nama` varchar(100) NOT NULL,
  `no_urut` int(2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `detail_pengarang`
--

INSERT INTO `detail_pengarang` (`id`, `idkoleksi`, `nama`, `no_urut`) VALUES
('1. 2020-PP-BDSPBM', '1. 2020-PP-BDSPBM', 'Agustian Noor', 1),
('2. 2021-PP-HSPK-1', '2. 2021-PP-HSPK', 'Muhammad Mei Hanafi', 1),
('2. 2021-PP-HSPK-2', '2. 2021-PP-HSPK', 'Muhammad Sofwat Aldi', 2),
('3. 2019-SB-DM-1', '3. 2019-SB-DM', 'Jaka Permadi', 1),
('3. 2019-SB-DM-2', '3. 2019-SB-DM', 'Herfia Rhommadhona', 2),
('3. 2019-SB-DM-3', '3. 2019-SB-DM', 'Herpendi', 3),
('3. 2019-SB-DM-4', '3. 2019-SB-DM', 'Hendrik Setyo Utomo', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `kategori`
--

CREATE TABLE `kategori` (
  `idkat` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `kategori`
--

INSERT INTO `kategori` (`idkat`, `kategori`) VALUES
(1, 'Teknik'),
(2, 'Fiksi'),
(3, 'Komputer');

-- --------------------------------------------------------

--
-- Struktur dari tabel `koleksi`
--

CREATE TABLE `koleksi` (
  `kdbuku` varchar(50) NOT NULL,
  `idkat` int(11) DEFAULT NULL,
  `judul` varchar(50) NOT NULL,
  `tahun` int(4) DEFAULT NULL,
  `penerbit` varchar(50) DEFAULT NULL,
  `cover` blob DEFAULT NULL,
  `stok` int(3) DEFAULT NULL,
  `tersedia` int(3) DEFAULT NULL,
  `harga` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `koleksi`
--

INSERT INTO `koleksi` (`kdbuku`, `idkat`, `judul`, `tahun`, `penerbit`, `cover`, `stok`, `tersedia`, `harga`) VALUES
('1. 2020-PP-BDSPBM', 1, 'Berlayar di Samudra PHP Berkompaskan MySQL', 2020, 'Politala', NULL, 5, 5, 25000),
('2. 2021-PP-HSPK', 2, 'Hanafi Si pedagang Keliling', 2021, 'Politala', NULL, 1, 1, 55000),
('3. 2019-SB-DM', 3, 'Database MySQL', 2019, 'Politala', NULL, 5, 5, 85000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `layanan`
--

CREATE TABLE `layanan` (
  `idlayanan` int(11) NOT NULL,
  `layanan` varchar(255) NOT NULL,
  `file` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data untuk tabel `layanan`
--

INSERT INTO `layanan` (`idlayanan`, `layanan`, `file`) VALUES
(1, 'Lorem ipsum dolor sit amet consectetur adipisicing elit. Reiciendis error, nesciunt rerum ut facere sapiente vitae minima recusandae quasi perspiciatis labore! Esse iure debitis incidunt iusto dolores accusamus rem voluptas.', NULL);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `detail_pengarang`
--
ALTER TABLE `detail_pengarang`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idkoleksi` (`idkoleksi`);

--
-- Indeks untuk tabel `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`idkat`);

--
-- Indeks untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD PRIMARY KEY (`kdbuku`),
  ADD KEY `idkat` (`idkat`);

--
-- Indeks untuk tabel `layanan`
--
ALTER TABLE `layanan`
  ADD PRIMARY KEY (`idlayanan`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `layanan`
--
ALTER TABLE `layanan`
  MODIFY `idlayanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `detail_pengarang`
--
ALTER TABLE `detail_pengarang`
  ADD CONSTRAINT `detail_pengarang_ibfk_1` FOREIGN KEY (`idkoleksi`) REFERENCES `koleksi` (`kdbuku`);

--
-- Ketidakleluasaan untuk tabel `koleksi`
--
ALTER TABLE `koleksi`
  ADD CONSTRAINT `koleksi_ibfk_1` FOREIGN KEY (`idkat`) REFERENCES `kategori` (`idkat`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
