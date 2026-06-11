-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 11, 2026 at 07:27 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_latihan_pbo_ti_1d_enzinaufalfaiz`
--

-- --------------------------------------------------------

--
-- Table structure for table `tabel_tiket`
--

CREATE TABLE `tabel_tiket` (
  `id_tiket` int NOT NULL,
  `nama_film` varchar(100) NOT NULL,
  `jadwal_tayang` datetime NOT NULL,
  `jumlah_kursi` int NOT NULL,
  `harga_dasar_tiket` decimal(10,2) NOT NULL,
  `jenis_studio` enum('Regular','IMAX','Velvet') NOT NULL,
  `tipe_audio` varchar(50) DEFAULT NULL,
  `lokasi_baris` varchar(10) DEFAULT NULL,
  `kacamata_3d_id` varchar(20) DEFAULT NULL,
  `efek_gerak_fitur` varchar(100) DEFAULT NULL,
  `bantal_selimut_pack` varchar(50) DEFAULT NULL,
  `layanan_butler` enum('Ya','Tidak') DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `tabel_tiket`
--

INSERT INTO `tabel_tiket` (`id_tiket`, `nama_film`, `jadwal_tayang`, `jumlah_kursi`, `harga_dasar_tiket`, `jenis_studio`, `tipe_audio`, `lokasi_baris`, `kacamata_3d_id`, `efek_gerak_fitur`, `bantal_selimut_pack`, `layanan_butler`) VALUES
(1, 'Your Name', '2026-07-01 13:00:00', 120, '50000.00', 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(2, 'Suzume', '2026-07-01 16:00:00', 120, '50000.00', 'Regular', 'Dolby Atmos', NULL, NULL, NULL, NULL, NULL),
(3, 'Agak Laen', '2026-07-02 14:00:00', 100, '45000.00', 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(4, 'Dilan 1990', '2026-07-02 19:00:00', 100, '45000.00', 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(5, 'Kamen Rider Build Be The One', '2026-07-03 15:00:00', 110, '55000.00', 'Regular', 'Dolby Atmos', NULL, NULL, NULL, NULL, NULL),
(6, 'Habibie & Ainun', '2026-07-03 20:00:00', 100, '45000.00', 'Regular', 'Dolby Digital', NULL, NULL, NULL, NULL, NULL),
(7, 'Weathering With You', '2026-07-04 13:30:00', 120, '50000.00', 'Regular', 'Dolby Atmos', NULL, NULL, NULL, NULL, NULL),
(8, 'Avengers: Endgame', '2026-07-04 18:00:00', 180, '100000.00', 'IMAX', NULL, 'A01', 'IMX001', NULL, NULL, NULL),
(9, 'Spider-Man: No Way Home', '2026-07-05 14:00:00', 180, '100000.00', 'IMAX', NULL, 'B05', 'IMX002', NULL, NULL, NULL),
(10, 'Doctor Strange in the Multiverse of Madness', '2026-07-05 19:00:00', 180, '100000.00', 'IMAX', NULL, 'C03', 'IMX003', NULL, NULL, NULL),
(11, 'The Boy and the Heron', '2026-07-06 15:00:00', 170, '90000.00', 'IMAX', NULL, 'D08', 'IMX004', NULL, NULL, NULL),
(12, 'Kamen Rider Geats 4 Aces and the Black Fox', '2026-07-06 20:00:00', 170, '95000.00', 'IMAX', NULL, 'E02', 'IMX005', NULL, NULL, NULL),
(13, 'Captain America: Brave New World', '2026-07-07 16:00:00', 180, '100000.00', 'IMAX', NULL, 'F04', 'IMX006', NULL, NULL, NULL),
(14, 'Pengabdi Setan 2: Communion', '2026-07-07 21:00:00', 170, '90000.00', 'IMAX', NULL, 'G07', 'IMX007', NULL, NULL, NULL),
(15, 'Demon Slayer: Mugen Train', '2026-07-08 13:00:00', 60, '150000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Premium', 'Ya'),
(16, 'Iron Man', '2026-07-08 18:00:00', 60, '150000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Premium', 'Ya'),
(17, 'Avengers: Infinity War', '2026-07-09 14:00:00', 60, '150000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Exclusive', 'Ya'),
(18, 'Jumbo', '2026-07-09 19:00:00', 50, '140000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Standard', 'Tidak'),
(19, 'One Piece Film: Red', '2026-07-10 15:00:00', 60, '150000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Premium', 'Ya'),
(20, 'The Raid', '2026-07-10 20:00:00', 50, '140000.00', 'Velvet', NULL, NULL, NULL, NULL, 'Exclusive', 'Ya');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  ADD PRIMARY KEY (`id_tiket`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tabel_tiket`
--
ALTER TABLE `tabel_tiket`
  MODIFY `id_tiket` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
