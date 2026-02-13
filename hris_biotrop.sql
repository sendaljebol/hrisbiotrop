-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2023 at 03:23 AM
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
-- Database: `hris_biotrop`
--

-- --------------------------------------------------------

--
-- Table structure for table `cutis`
--

CREATE TABLE `cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `departemen_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) NOT NULL,
  `tahun_bekerja` varchar(255) NOT NULL,
  `jeniscuti_id` bigint(20) UNSIGNED NOT NULL,
  `alasan` text DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `telepon` varchar(255) DEFAULT NULL,
  `durasi` varchar(255) DEFAULT NULL,
  `status` varchar(255) NOT NULL DEFAULT 'menunggu',
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `cutis`
--

INSERT INTO `cutis` (`id`, `nama`, `jabatan_id`, `departemen_id`, `nik`, `tahun_bekerja`, `jeniscuti_id`, `alasan`, `tanggal_mulai`, `tanggal_selesai`, `alamat`, `telepon`, `durasi`, `status`, `user_id`, `created_at`, `updated_at`) VALUES
(2, 'User', 6, 2, '1', '0 tahun 0 bulan 17 hari', 1, 'casczx', '2023-12-09', '2023-12-14', 'e12easd', '0895635006105', '2', 'menunggu', 241, '2023-12-26 12:19:15', '2023-12-26 12:19:15');

-- --------------------------------------------------------

--
-- Table structure for table `departemens`
--

CREATE TABLE `departemens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `departemens`
--

INSERT INTO `departemens` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Director', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(2, 'Deputy Director for Administration', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(3, 'Science Innovation and Technology', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(4, 'Human Center and Innovation Department', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(5, 'Finance and Facilities Management Department', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(6, 'Human Resource and Administration Departement', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(7, 'Knowledge Management, Publication and Communication Unit', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(8, 'Earth Observatory and Change Section', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(9, 'Environmental Technology and Security Section', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(10, 'Environmental and Finance Risk Management Section', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(11, 'Environmental Policy and Governance Section', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(12, 'Perencanaan dan Monev Program dan Kegiatan', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(13, 'Keuangan DIPA', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(14, 'Keuangan Non DIPA', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(15, 'Pemeliharaan Gedung dan Halaman Gedung', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(16, 'Pemeliharaan Alat dan Mesin', '2023-12-26 12:10:56', '2023-12-26 12:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `golongans`
--

CREATE TABLE `golongans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `golongans`
--

INSERT INTO `golongans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, '-', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'IIA', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'IIB', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(4, 'IIC', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(5, 'IID', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(6, 'IIIA', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(7, 'IIIB', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(8, 'IIIC', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(9, 'IIID', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(10, 'IVA', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(11, 'IVB', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(12, 'IVC', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(13, 'IVD', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(14, 'IVE', '2023-12-26 12:10:59', '2023-12-26 12:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `identifiers`
--

CREATE TABLE `identifiers` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identifiers`
--

INSERT INTO `identifiers` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, '-', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'DOI', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'ISBN', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(4, 'ISSN', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `identities`
--

CREATE TABLE `identities` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `departemen_id` bigint(20) UNSIGNED NOT NULL,
  `jabatan_id` bigint(20) UNSIGNED NOT NULL,
  `nik` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `alamat` text DEFAULT NULL,
  `npwp` varchar(255) DEFAULT NULL,
  `rekening` varchar(255) DEFAULT NULL,
  `hp` varchar(255) DEFAULT NULL,
  `tahun_bekerja` date DEFAULT NULL,
  `statususer_id` bigint(20) UNSIGNED NOT NULL,
  `golongan_id` bigint(20) UNSIGNED NOT NULL,
  `email_pribadi` varchar(255) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `identities`
--

INSERT INTO `identities` (`id`, `user_id`, `departemen_id`, `jabatan_id`, `nik`, `tempat_lahir`, `tanggal_lahir`, `alamat`, `npwp`, `rekening`, `hp`, `tahun_bekerja`, `statususer_id`, `golongan_id`, `email_pribadi`, `image`, `created_at`, `updated_at`) VALUES
(1, 242, 1, 1, '1', 'Cisaata', '2023-12-16', 'Pakansari, Cibinong', '2134523234', '51234123', '0895635006105', '2023-12-08', 1, 1, 'gilangaryaarya@apps.ipb.ac.id', 'identitas-image/1457792551384.jpg', '2023-12-26 12:12:16', '2023-12-26 12:12:16'),
(2, 241, 2, 6, '1', 'Cisaata', '2023-12-28', 'Pakansari, Cibinong', '2134523234', '51234123', '0895635006105', '2023-12-09', 2, 4, 'gilangaryaarya@apps.ipb.ac.id', 'identitas-image/1460034768642.jpg', '2023-12-26 12:13:12', '2023-12-26 12:18:59');

-- --------------------------------------------------------

--
-- Table structure for table `jabatans`
--

CREATE TABLE `jabatans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jabatans`
--

INSERT INTO `jabatans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Board of Directors', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(2, 'Manager', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(3, 'Kepala Unit', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(4, 'Supervisor', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(5, 'Head of Section', '2023-12-26 12:10:56', '2023-12-26 12:10:56'),
(6, 'Staff', '2023-12-26 12:10:56', '2023-12-26 12:10:56');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_cutis`
--

CREATE TABLE `jenis_cutis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_cutis`
--

INSERT INTO `jenis_cutis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Tahunan', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(2, 'Besar', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(3, 'Sakit', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(4, 'Bersalin', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(5, 'Karena Alasan Penting', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(6, 'Keterangan Lain', '2023-12-26 12:10:57', '2023-12-26 12:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_pelatihans`
--

CREATE TABLE `jenis_pelatihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_pelatihans`
--

INSERT INTO `jenis_pelatihans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Pelatihan', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(2, 'Seminar', '2023-12-26 12:10:57', '2023-12-26 12:10:57');

-- --------------------------------------------------------

--
-- Table structure for table `jenis_publikasis`
--

CREATE TABLE `jenis_publikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenis_publikasis`
--

INSERT INTO `jenis_publikasis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Artikel', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'Jurnal', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'Majalah', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(4, 'Buku', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(5, 'Prosiding', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(6, 'Laporan', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(7, 'Media Cetak/Daring', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(8, 'Policy Brief', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `jenjang_pendidikans`
--

CREATE TABLE `jenjang_pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `jenjang_pendidikans`
--

INSERT INTO `jenjang_pendidikans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'SD', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'SMP', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'SMA', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(4, 'D1', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(5, 'D2', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(6, 'D3', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(7, 'D4', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(8, 'S1', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(9, 'S2', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(10, 'S3', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `keluargas`
--

CREATE TABLE `keluargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `keterangankeluarga_id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `tempat_lahir` varchar(255) DEFAULT NULL,
  `tanggal_lahir` date DEFAULT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL DEFAULT 'L',
  `jenjangpendidikan_id` bigint(20) UNSIGNED NOT NULL,
  `pekerjaan` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keluargas`
--

INSERT INTO `keluargas` (`id`, `keterangankeluarga_id`, `nama`, `tempat_lahir`, `tanggal_lahir`, `jenis_kelamin`, `jenjangpendidikan_id`, `pekerjaan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Ibun Najmudin', 'Occaecati.', '1977-11-25', 'L', 10, 'Et quam.', 2, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(2, 3, 'Calista Wastuti M.Kom.', 'Ad et.', '1990-02-26', 'L', 8, 'Est veniam.', 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(3, 3, 'Belinda Wastuti', 'Consequuntur culpa.', '2001-07-11', 'L', 2, 'Nisi.', 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(4, 2, 'Sadina Utami', 'Ad.', '1970-11-02', 'L', 5, 'Dicta eligendi.', 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(5, 2, 'Lasmanto Cager Iswahyudi', 'Earum.', '1986-08-02', 'L', 4, 'Nostrum iste.', 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(6, 3, 'Daliman Budiyanto', 'Quasi dicta.', '2018-07-28', 'L', 10, 'Tempore eius.', 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(7, 1, 'Panji Maheswara', 'Voluptas molestias.', '1978-04-11', 'L', 1, 'Omnis assumenda.', 2, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(8, 2, 'Tiara Gabriella Hassanah S.Psi', 'Tempora quia.', '2015-03-31', 'L', 7, 'Dolorum cum.', 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(9, 3, 'Lasmono Hutapea', 'Ut.', '2006-09-14', 'L', 6, 'Molestiae occaecati.', 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(10, 3, 'Teddy Napitupulu S.Psi', 'Voluptates dicta.', '1993-06-07', 'L', 3, 'Sapiente.', 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `keterangan_keluargas`
--

CREATE TABLE `keterangan_keluargas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `keterangan_keluargas`
--

INSERT INTO `keterangan_keluargas` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'suami', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'istri', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'anak', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(3, '2023_07_27_052352_create_keluargas_table', 1),
(4, '2023_07_27_052424_create_pendidikans_table', 1),
(5, '2023_07_27_052856_create_pengalamen_table', 1),
(6, '2023_07_27_052913_create_pelatihans_table', 1),
(7, '2023_07_27_052923_create_publikasis_table', 1),
(8, '2023_07_27_052933_create_penghargaans_table', 1),
(9, '2023_07_27_053237_create_departemens_table', 1),
(10, '2023_07_27_053248_create_jabatans_table', 1),
(11, '2023_08_02_022920_create_cutis_table', 1),
(12, '2023_08_02_022936_create_jenis_cutis_table', 1),
(13, '2023_08_07_134733_create_jenis_pelatihans_table', 1),
(14, '2023_08_07_134927_create_peran_pelatihans_table', 1),
(15, '2023_08_07_135202_create_jenis_publikasis_table', 1),
(16, '2023_08_07_135216_create_peran_publikasis_table', 1),
(17, '2023_08_15_104805_create_identities_table', 1),
(18, '2023_09_21_145103_create_keterangan_keluargas_table', 1),
(19, '2023_09_21_154316_create_jenjang_pendidikans_table', 1),
(20, '2023_09_22_095426_create_identifiers_table', 1),
(21, '2023_09_26_110959_create_status_users_table', 1),
(22, '2023_09_26_111013_create_golongans_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `pelatihans`
--

CREATE TABLE `pelatihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_kegiatan` varchar(255) DEFAULT NULL,
  `tanggal_mulai` date DEFAULT NULL,
  `tanggal_selesai` date DEFAULT NULL,
  `penyelenggara` varchar(255) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `jenispelatihan_id` bigint(20) UNSIGNED NOT NULL,
  `peranpelatihan_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pelatihans`
--

INSERT INTO `pelatihans` (`id`, `nama_kegiatan`, `tanggal_mulai`, `tanggal_selesai`, `penyelenggara`, `pdf`, `user_id`, `jenispelatihan_id`, `peranpelatihan_id`, `created_at`, `updated_at`) VALUES
(1, 'Quia veritatis.', '1982-01-26', '2019-01-08', 'Distinctio molestias.', 'Impedit aut.', 1, 2, 2, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(2, 'Dolorem sit illum.', '2007-08-31', '1991-03-02', 'Deleniti quas.', 'Vero.', 1, 2, 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(3, 'Non minus doloribus.', '1996-02-07', '1997-07-20', 'Repellat doloribus sunt.', 'Deleniti.', 2, 2, 2, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(4, 'Quis doloribus ipsa.', '1981-04-15', '2012-09-04', 'Quibusdam velit sint.', 'Adipisci.', 2, 2, 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(5, 'Neque aut.', '1996-08-05', '1975-09-13', 'Quaerat omnis.', 'Sit minus.', 2, 1, 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(6, 'Impedit labore autem.', '2021-04-29', '2011-08-28', 'Est eveniet molestias.', 'Et harum.', 2, 2, 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(7, 'Illo aut.', '2002-08-13', '1996-02-02', 'Magni velit reprehenderit.', 'Eum.', 1, 2, 1, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(8, 'Et voluptatem.', '1991-05-29', '1992-11-18', 'Quis animi.', 'Veritatis.', 2, 2, 3, '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(9, 'Cumque consectetur in.', '2016-10-09', '2007-05-05', 'Vel debitis.', 'Voluptas blanditiis.', 3, 1, 2, '2023-12-26 12:11:00', '2023-12-26 12:11:00'),
(10, 'Laboriosam architecto.', '2000-10-28', '1981-06-16', 'Fugiat ex.', 'Recusandae.', 2, 2, 2, '2023-12-26 12:11:00', '2023-12-26 12:11:00');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikans`
--

CREATE TABLE `pendidikans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama_instansi` varchar(255) DEFAULT NULL,
  `jenjangpendidikan_id` bigint(20) UNSIGNED NOT NULL,
  `jurusan` varchar(255) DEFAULT NULL,
  `tahun_lulus` int(11) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pendidikans`
--

INSERT INTO `pendidikans` (`id`, `nama_instansi`, `jenjangpendidikan_id`, `jurusan`, `tahun_lulus`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Paulin Lestari S.Pd', 5, 'Delectus.', 4, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(2, 'Nilam Vanya Susanti', 10, 'Libero.', 0, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(3, 'Asman Galak Nashiruddin S.E.I', 8, 'Eum.', 2, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(4, 'Maryadi Koko Nababan', 10, 'Non.', 1, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(5, 'Raden Tri Rajata M.TI.', 10, 'Accusantium voluptates.', 3, 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(6, 'Kayla Ghaliyati Oktaviani', 3, 'Quisquam fugiat.', 0, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(7, 'Unjani Riyanti', 7, 'Eveniet rerum.', 9, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(8, 'Luthfi Prayoga', 5, 'Consequatur.', 6, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(9, 'Umi Ratih Mayasari S.Pt', 4, 'Aut eum.', 6, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(10, 'Ulva Susanti', 1, 'Qui adipisci.', 0, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(11, 'Zalindra Handayani', 9, 'Quos voluptas.', 1, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(12, 'Gawati Jane Usamah', 2, 'Fuga.', 2, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `pengalamen`
--

CREATE TABLE `pengalamen` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jabatan` varchar(255) DEFAULT NULL,
  `nama_perusahaan` varchar(255) DEFAULT NULL,
  `tanggal_masuk` date DEFAULT NULL,
  `tanggal_keluar` date DEFAULT NULL,
  `uraian_pekerjaan` text DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `pengalamen`
--

INSERT INTO `pengalamen` (`id`, `jabatan`, `nama_perusahaan`, `tanggal_masuk`, `tanggal_keluar`, `uraian_pekerjaan`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Consequatur voluptas.', 'Ducimus expedita dolores.', '2014-01-01', '2012-06-27', 'Optio voluptates pariatur quidem incidunt sit vel veniam expedita distinctio quia facilis dolore assumenda incidunt occaecati corporis cupiditate in magnam alias quas facere odio et.', 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(2, 'Soluta.', 'Enim quas labore.', '1999-06-25', '1981-04-20', 'Non sunt voluptatem at quaerat officia sunt debitis dolorem dolores quas illum quia dolor accusamus magni voluptatem consequatur voluptatibus quia qui molestiae voluptatum quo molestiae eveniet et.', 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(3, 'Voluptates.', 'Est et esse.', '1971-01-02', '1970-12-29', 'Tempora repellendus omnis nobis esse cupiditate ea qui sint aut dolorem perferendis et quis est sapiente dolor et qui itaque nisi rem laudantium molestiae molestiae eius dolore animi.', 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(4, 'Sit nostrum.', 'Dolore qui nisi.', '1999-06-08', '1972-06-25', 'Aut esse est nostrum quod accusantium facilis modi saepe sit sit rerum incidunt est id delectus qui reiciendis placeat natus omnis accusantium eos laudantium dolores dignissimos minus sed.', 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(5, 'Ut eos.', 'Ut temporibus.', '1985-12-12', '2013-10-11', 'Ipsum architecto sint repellendus voluptatum quam architecto voluptatem repudiandae quis maiores odio voluptatem placeat animi sequi dignissimos quis et et accusantium vero.', 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(6, 'Consectetur.', 'Iusto vel.', '1982-04-06', '2019-11-03', 'Et itaque et aut sed placeat atque nostrum velit autem velit nihil in magni repellendus enim tenetur ut sit ex et sed in cupiditate sint error fuga quod.', 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(7, 'Quo possimus.', 'Laudantium quibusdam ea.', '2009-01-15', '2015-08-23', 'Est asperiores dolores ut nobis qui sapiente dolor harum reiciendis laboriosam quia doloremque corrupti repellendus quia ipsam eaque sed nesciunt sequi sint aliquam unde temporibus ullam.', 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(8, 'Sunt.', 'Explicabo modi.', '1994-03-02', '1976-04-11', 'Aperiam aliquid velit reprehenderit doloremque nostrum excepturi qui excepturi beatae nisi totam animi eius sunt ut placeat officia voluptas sunt ut.', 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(9, 'Error.', 'Voluptas est non.', '2015-08-11', '1995-03-02', 'Adipisci tempore non est voluptas doloremque cum est quidem ad asperiores dolor dolorum sint quia qui ullam.', 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(10, 'Labore cumque.', 'Vero voluptatibus.', '2020-04-19', '1987-09-26', 'Quos fuga sequi laborum atque nisi accusamus itaque nulla consectetur quibusdam optio aperiam esse accusamus quaerat consequatur blanditiis tempora necessitatibus dignissimos quasi nostrum quis.', 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(11, 'Qui.', 'Doloremque omnis et.', '2011-08-02', '1997-10-26', 'Quia dicta ut ipsam et ducimus qui dolor reiciendis cumque voluptatibus corporis placeat a voluptatem magni quis occaecati quaerat et ut iure nobis.', 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01');

-- --------------------------------------------------------

--
-- Table structure for table `penghargaans`
--

CREATE TABLE `penghargaans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) DEFAULT NULL,
  `pemberi` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `penghargaans`
--

INSERT INTO `penghargaans` (`id`, `nama`, `pemberi`, `tahun`, `pdf`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 'Amet qui possimus.', 'Quod quam.', 2, 'Ut tenetur.', 3, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(2, 'Inventore consequuntur atque dolorum.', 'Eveniet ad aut.', 4, 'In ex.', 2, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(3, 'Nisi quis dolor incidunt.', 'Nam veritatis fuga.', 9, 'Autem unde.', 1, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(4, 'Alias praesentium corrupti explicabo.', 'Odit id occaecati.', 1, 'Rerum possimus.', 1, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(5, 'Vero error natus sint.', 'Et eius id.', 8, 'Quasi.', 2, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(6, 'Architecto distinctio eius.', 'Libero dolorem sint.', 3, 'Velit.', 1, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(7, 'Hic est culpa maxime ipsa.', 'Modi quaerat quam.', 2, 'In.', 2, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(8, 'Enim deserunt officia.', 'Asperiores dolorem nulla.', 1, 'Sint reprehenderit.', 3, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(9, 'Veritatis excepturi.', 'Et et enim.', 3, 'Omnis.', 2, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(10, 'Itaque porro impedit.', 'Consectetur voluptatem.', 8, 'Dolore.', 3, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(11, 'Dolore aut nulla omnis.', 'Quos ipsum.', 5, 'Atque qui.', 2, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(12, 'Aut quos et.', 'Impedit enim.', 0, 'At enim.', 3, '2023-12-26 12:11:03', '2023-12-26 12:11:03'),
(13, 'Magnam et voluptatum ut.', 'Molestiae aliquid aut.', 7, 'Sit ut.', 1, '2023-12-26 12:11:03', '2023-12-26 12:11:03');

-- --------------------------------------------------------

--
-- Table structure for table `peran_pelatihans`
--

CREATE TABLE `peran_pelatihans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peran_pelatihans`
--

INSERT INTO `peran_pelatihans` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'Peserta', '2023-12-26 12:10:57', '2023-12-26 12:10:57'),
(2, 'Narasumber', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(3, 'Moderator', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `peran_publikasis`
--

CREATE TABLE `peran_publikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `peran_publikasis`
--

INSERT INTO `peran_publikasis` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'penulis', '2023-12-26 12:10:58', '2023-12-26 12:10:58'),
(2, 'narasumber', '2023-12-26 12:10:58', '2023-12-26 12:10:58');

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `publikasis`
--

CREATE TABLE `publikasis` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `jenispublikasi_id` bigint(20) UNSIGNED NOT NULL,
  `judul` varchar(255) DEFAULT NULL,
  `kegiatan` varchar(255) DEFAULT NULL,
  `tahun` int(11) DEFAULT NULL,
  `link` text DEFAULT NULL,
  `pdf` varchar(255) DEFAULT NULL,
  `identifier_id` bigint(20) UNSIGNED DEFAULT NULL,
  `user_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `publikasis`
--

INSERT INTO `publikasis` (`id`, `jenispublikasi_id`, `judul`, `kegiatan`, `tahun`, `link`, `pdf`, `identifier_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, 1, 'Architecto quo sit omnis.', 'Et voluptatum eos.', 6, 'Ea adipisci maiores.', 'Fugit.', 2, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(2, 2, 'Eligendi error est nulla.', 'Autem nisi.', 3, 'Perferendis quia voluptas.', 'Placeat est.', 2, 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(3, 1, 'Quas dolore ut.', 'Maiores est.', 7, 'Hic voluptas.', 'Animi.', 2, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(4, 2, 'Dolor minima.', 'In rerum.', 7, 'Delectus sit placeat.', 'Ut.', 2, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(5, 2, 'Possimus quos molestias.', 'Eum in consequatur.', 0, 'Dolorem autem occaecati.', 'Sunt error.', 2, 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(6, 1, 'Quasi sint provident voluptas quo.', 'Ab explicabo voluptatem.', 9, 'Accusantium et nulla.', 'Asperiores praesentium.', 1, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(7, 2, 'Labore dolor quia assumenda.', 'Voluptate et.', 8, 'Quia beatae voluptatem.', 'Eligendi corporis.', 2, 3, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(8, 1, 'Facere ut.', 'Magnam in.', 1, 'Quia aliquam.', 'Eaque.', 3, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(9, 2, 'Enim blanditiis dolore amet expedita.', 'Placeat pariatur quidem.', 5, 'Sed cumque possimus.', 'Sit cupiditate.', 3, 1, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(10, 1, 'Est cumque ipsa.', 'Est repudiandae.', 5, 'Praesentium eum sint.', 'Nemo.', 2, 2, '2023-12-26 12:11:01', '2023-12-26 12:11:01'),
(11, 1, 'Quasi quod qui.', 'Omnis et beatae.', 8, 'Quia sapiente.', 'Et aliquid.', 2, 1, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(12, 2, 'Consectetur laboriosam voluptatem.', 'Voluptatem neque et.', 2, 'Quasi sint.', 'Qui quia.', 1, 2, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(13, 1, 'Animi quis exercitationem magni.', 'Distinctio perferendis quia.', 2, 'Quia cum praesentium.', 'Beatae.', 3, 1, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(14, 1, 'Modi laborum.', 'Asperiores error magni.', 9, 'Voluptas dolore laboriosam.', 'Ratione soluta.', 1, 3, '2023-12-26 12:11:02', '2023-12-26 12:11:02'),
(15, 2, 'Autem aut natus ut.', 'Cumque ad sed.', 0, 'Qui provident possimus.', 'Quibusdam.', 3, 3, '2023-12-26 12:11:02', '2023-12-26 12:11:02');

-- --------------------------------------------------------

--
-- Table structure for table `status_users`
--

CREATE TABLE `status_users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `status_users`
--

INSERT INTO `status_users` (`id`, `nama`, `created_at`, `updated_at`) VALUES
(1, 'PNS', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(2, 'PPNPN', '2023-12-26 12:10:59', '2023-12-26 12:10:59'),
(3, 'Outsource', '2023-12-26 12:10:59', '2023-12-26 12:10:59');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `role` enum('user','hr','kepala') NOT NULL DEFAULT 'user',
  `status` int(11) NOT NULL DEFAULT 1,
  `deleted_at` timestamp NULL DEFAULT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `nama`, `email`, `email_verified_at`, `password`, `role`, `status`, `deleted_at`, `remember_token`, `created_at`, `updated_at`) VALUES
(2, 'Dr. Irdika Mansur, M.For.Sc', 'irdikam@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(3, 'Dr. Zulhamsyah Imran', 'zulhamsyah.imran@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(4, 'Dr. Evelyn V. Bigcas', 'evelyn.vb@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(5, 'Prof. Dr. Okky S. Dharmaputra', 'okky@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(6, 'Dr. Sri Sudarmiyati', 'sudarmiyati@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(7, 'Dr. Supriyanto', 'supriyanto@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(8, 'Dr. Ir. Idham Sakti Harahap, M.Si.', 'idham@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(9, 'Dr. Soekisman Tjitrosemito', 's.tjitrosemito@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(10, 'Prof. Dr. Bambang Purwantara', 'b.purwantara@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(11, 'Prof. Ris. Dr. Muhammad Winugroho', 'mwinugroho@gmail.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(12, 'Dr. Burhanudin Masy\'ud', 'masyud06@yahoo.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(13, 'Dr. Abdul Munif', 'munif73@gmail.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(14, 'Prof. Arief Sabdo Yuwono', 'arief-sabdo-yuwono@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(15, 'Dr. Dewi Wulandari', 'd.wulandari@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(16, 'Dr. Awang Maharijaya', 'awang.maharijaya@gmail.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(17, 'Dr. Ichsan Akhmad Fauzi', 'ichsan.a.fauzi@gmail.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(18, 'Dr. Ulfah J. Siregar', 'ulfahjsiregar@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(19, 'Dr. Sri Yuliani', 'sriyuliani@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(20, 'Indah Wahyuni, M.Si', 'indah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(21, 'Sri Widayanti, M.Si.', 's_widayanti@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(22, 'Risa Rosita, M.Si', 'risa@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(23, 'Ir. Ina Retnowati', 'ina@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(24, 'Dewi Rahmawati, M.Si', 'dewi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(25, 'Anidah, S.Si', 'anidah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(26, 'Heriyanto', 'heriyanto@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(27, 'Sunardi Ikay', 's.ikay@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(28, 'Nijma Nurfadila, S.Si', 'nijma@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(29, 'Saiful Bachri, S.Si', 'saiful@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(30, 'Herni Widhiastuti, S.Si', 'h_widhiastuti@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(31, 'Slamet Widodo Sugiarto, M.Sc', 'widodo@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(33, 'Budiyono', 'budiyono@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(34, 'Iman', 'iman@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(35, 'Riana Hartati, S.Si', 'riana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(36, 'Indrajit', 'indrajit@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(37, 'Dr Harry Imantho, M.Sc', 'harry@biotrop.org', NULL, '$2y$10$o8G54w9ZbQs6g5g8xOK/Pe6JngShuRDRLx5kFz4r5nWfBTPOLo466', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(38, 'Didi Junaedi, A.Md', 'didi_jun@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(39, 'Yana', 'yana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(40, 'Shella Marlinda, M.Si.', 'shella@biotrop.org', NULL, '$2y$10$2t9RQoDhBVl9s9z/VMqhH.hBrYLwPQBgNpPUlULCQsMZ0fjMM0yFW', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(41, 'Trijanti A. Widinni Asnan, M.Si.', 'trijanti@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(42, 'Irawan', 'irawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(43, 'Eriza Falashifa, S.Hut.', 'eriza@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(44, 'Armaiki Yusmur, M.Si', 'micky@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(45, 'Dr. Erina Sulistiani, M.Si', 'esulistiani@biotrop.org', NULL, '$2y$10$T.uj5lcytZ1eJLrI2TTUIuPX1pnKc3cFkA6E/t0OGCPXKFcmbPtwK', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(46, 'Asep Syaefudin, SE', 'asep_bch@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(47, 'Bambang Sulistio, S.Si', 'sulistio@biotrop.org', NULL, '$2y$10$42Dgpj9q71ph6FycCNNiSeuxL373EegmcXid82OYEs8nwwet19tCG', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(48, 'Rima Febriana, SE', 'rima@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(49, 'Arif Nuryadin, B.Sc', 'a_nuryadin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(50, 'Tenni Wahyuni', 'tenni@biotrop.org', NULL, '$2y$10$kqBv3Bf8YnjsUj31GzePKO7ZpYflmfvBvNzLnAv/I2ICCXXKT5F9.', 'user', 1, NULL, NULL, NULL, NULL),
(51, 'Dr. Impron', 'impron@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(52, 'Dewi Suryani, MM', 'dewisuryani@biotrop.org', NULL, '$2y$10$2aC1KR1mo6PONceNDmdV6u7aSxkmWt77mV./.eFwPnY0oibanOr2i', 'user', 1, NULL, NULL, NULL, NULL),
(53, 'Yuni Puspita Sari, MM', 'yuni@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(55, 'Agus Sujadi', 'agus@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(56, 'Alfi Dwi Nugroho, A.Md', 'alfi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(57, 'Lukman Haris, S.Si', 'lukman@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(58, 'Kodir', 'kodir@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(59, 'Hendi', 'hendi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(60, 'Asim', 'asim@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(61, 'Lastiah, S.E.', 'lala@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(62, 'Zaenal Abidin', 'abidin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(63, 'Sugandi', 'sugandi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(64, 'Didit Trisnadi', 'd.trisnadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(65, 'Taofik Rokayat', 'pikse@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(66, 'Zaenudin', 'zaenudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(67, 'Mulyadi', 'mulyadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(68, 'Ida Hermawan', 'ihermawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(69, 'Endih', 'endih@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(70, 'Ipang Aripandi', 'ipang@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(71, 'Ujang Sanusi', 'ujang@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(72, 'Bahrudin', 'bahru@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(73, 'Hari Sudarman', 'sudarman@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(74, 'Mulyadiana Prayoga', 'mulyadiana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(75, 'Idim S', 'idim.s@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(78, 'Andi', 'andi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(79, 'Erwan Prayogi', 'yogi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(80, 'Riza F. Assegaf', 'assegaf@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(81, 'Endin Sukardi', 'endin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(83, 'Indra Septian', 'indra@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(84, 'Wati Madyawati', 'madyawati@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(85, 'M. Tajudin, SE, MM', 'tajudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(87, 'Santi Ambarwati, M.Si', 'ambarwati@biotrop.org', NULL, '$2y$10$Ditz13jYiJ2fz5LzIccG1ubOGPYuBtQhjOmYLFHi6BaNzSWWmFbJG', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(89, 'Budi Cahyadi, S.Si', 'budicahyadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(90, 'Eko Purwiyanto', 'eko_purwiyanto@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(91, 'Nopi Ramli', 'noviramli@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(92, 'Dika Zulkarnaen, S.Si.', 'dika_zulkarnaen@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(93, 'Ratnaningsih, S.Si.', 'ratna_ningsih@biotrop.org', NULL, '$2y$10$9t.A7RhsjqYKo83XiqUbg.Zg7i8MmxasSnzN2Mn5sCTUDo21rQI5a', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(94, 'Risya Ayu Astari, A.Md', 'icha_risya@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(95, 'Mutiara Hidayat, S.Si', 'mutiara@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(96, 'Lillys Betty Yuliawati, S.Si', 'yuliawati@biotrop.org', NULL, '$2y$10$3d/8nEw9E7WgwDuWyoD3ku9p7rPeLNbl7LiTyNo91.7DHHFFinfNq', 'user', 1, NULL, NULL, NULL, NULL),
(97, 'Syifa Fauzia, S.Si.', 'syifa@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(98, 'Rosadi Kartiwijaya, S.Pd.', 'rosadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(101, 'Zulkarnaen Noor Syarif', 'zulkarnaen.ns@biotrop.org', NULL, '$2y$10$bcYV3ppUsHweC0aIjVLi2.JTxW34qrm.49XFZFLw5zHv.FdaPw.0a', 'user', 1, NULL, NULL, NULL, NULL),
(102, 'Yunita, SP', 'nita@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(103, 'Fitri Junaedy, SEI', 'juned@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(104, 'Jujum', 'jujum@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(105, 'Haritz Cahya Nugraha, M.T', 'haritz@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(106, 'Asep Saepudin', 'asep@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(107, 'Woro Kanti Dharmastuti, M.Si', 'worokanti@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(108, 'Dani Yudi Trisna, A.Md', 'dani@biotrop.org', NULL, '$2y$10$e5a3299xWJg3gSnDWgVwTur8crQ8rw8GSFQgsZttzE5ynlIOp6fom', 'user', 1, NULL, NULL, NULL, NULL),
(110, 'Sri Ismawati Soerianegara, M.Sc', 'sri_soerianegara@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(111, 'Lidia Defita, S.Kom', 'defita@biotrop.org', NULL, '$2y$10$slqpkEWngfWk2/nVByQjSuOamjiPm83fR2EuvAwf5S848tOlkZokW', 'user', 1, NULL, NULL, NULL, NULL),
(112, 'Rizkia Tirtani', 'rizkia@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(113, 'Puput Nisausholiha', 'puput@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(114, 'Supriyatno, A.Md', 'supriyatno@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(115, 'Herman Apriyadi, SE', 'herman@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(116, 'Elvina Rahayu, S.Ak.', 'elvina@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(117, 'Peri Siantuni', 'perry@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(118, 'Deki Zulkarnain, S.Sos', 'd.zulkarnaen@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(121, 'Aan Darwati, S.E.', 'aan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(122, 'Yusup', 'jusup@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(123, 'Dudun', 'dudun@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(124, 'Kurniawan', 'kurniawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(125, 'Samin', 'samin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(126, 'Ichwan Pidin', 'i.pidin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(127, 'Hasan Husen', 'hasan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(128, 'Kusnadi', 'a.kusnadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(129, 'Tasori Heriyanto', 't.heriyanto@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(130, 'Indra Ardiansyah', 'i.ardiansyah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(131, 'Haris Ibrahim', 'h.ibrahim@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(132, 'Maulana Hasanudin', 'm.hasanudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(133, 'Isnandar', 'isnandar@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(134, 'Saripudin', 'saripudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(136, 'Linggar', 'linggar@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(137, 'Zulpa Hilmawan', 'zulfa@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(138, 'Dede Maulana', 'dedemaulana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(139, 'Andi Suhandi', 'andisuhandi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(140, 'Komarudin', 'komarudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(141, 'Khamelandi Astrian', 'khamelandi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(142, 'Angga Octora', 'angga@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(143, 'Drs. Chairul Hadi', 'choirulhadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(144, 'Agus Amir', 'a.amir@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(145, 'Agus Jaka', 'a.jaka@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(146, 'Azat Sudrajat', 'ajat@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(147, 'Aming', 'aming@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(148, 'Dadang Setiawan', 'dadang@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(149, 'Hadi Setiawan', 'hadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(150, 'Herdi Ferdiansyah Maulana', 'herdi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(152, 'Heru', 'heru@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(153, 'M. Abudin', 'abudin@biotrop.og', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(154, 'M. Fazri Rudiansyah', 'fazri@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(155, 'Mulyana', 'mulyana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(156, 'Onih', 'onih@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(157, 'Rahmat Hidayat', 'rahmat@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(158, 'Ridwan', 'ridwan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(159, 'Rohman', 'rohman@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(160, 'Suhendar', 'suhendar@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(161, 'Yudi', 'wahyudi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(162, 'Waldi Hidayat', 'waldi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(163, 'Ahmad Sudrajat', 'a.sudrajat@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(164, 'Hamdan Fahmi', 'h.fahmi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(165, 'Irma Indriani Hermawan', 'irma@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(166, 'Fitri Hanifah', 'fitrihanifah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(167, 'Ernovia Dwi Astuti', 'ernovia@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(168, 'Gita Hanipah, S.Si', 'g.hanifah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(169, 'Lydia Ayu Utami', 'lydia@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(170, 'Achmad Syuhada', 'a.syuhada@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(171, 'Siti Sulastri Rangkuty', 'sulastri@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(172, 'Philena Nisivian', 'philena@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(173, 'Ahmad Muhamad', 'ahmad@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(174, 'Nurdiansyah', 'nurdiansyah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(175, 'Sugih Mukti', 'sugih@biotrop.org', NULL, '$2y$10$sjJksdYMvphs2SzAicFOPOdHarEwcd3NTamiIeCMa2vEJTGsik.r.', 'user', 1, NULL, NULL, NULL, NULL),
(176, 'Yadi Supriadi', 'yadi.s@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(179, 'Agus Salim', 'a.salim@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(180, 'Sulaeman Hamid', 's.hamid@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(181, 'Hoerudin', 'khoerudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(182, 'Aris Purnajaya', 'a.purnajaya@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(183, 'Rudi Hartono', 'r.hartono@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(184, 'Adi Juandi', 'a.juandi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(185, 'Ading Senjaya', 'a.senjaya@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(186, 'Agus Suryani', 'a.suryani@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(187, 'Amung', 'amung@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(188, 'Andri Yansyah', 'andriansyah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(189, 'Dede Amjah', 'd.amzah@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(190, 'Deden', 'deden@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(191, 'Dwi Cahyono', 'd.cahyono@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(192, 'Ferry Dwinanda', 'ferry@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(193, 'Hardi', 'hardi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(194, 'Hasan Basri', 'h.basri@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(195, 'Hendro Sucipto', 'h.sucipto@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(196, 'Ilam Maulana', 'ilam_maulana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(197, 'Indri Rudiansyah', 'indri.r@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(198, 'Iwan Kurniawan', 'i.kurniawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(199, 'Iwan Setiawan', 'i.setiawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(200, 'M Abdul Kodir', 'ma.kodir@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(201, 'Maja Hermawan', 'm.atmaja@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(202, 'Maksum', 'maksum@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(203, 'Muhamad Sya\'roni', 'm.syaroni@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(204, 'Muhamad Yusup', 'm.yusuf@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(205, 'Muhammad Amsirin', 'm.amsirin@gmail.com', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(206, 'Nurwihayat', 'noerwihayat@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(207, 'Saepudin', 'saepudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(208, 'Sofian Hadi', 's.hadi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(209, 'Sukirman Hadiat', 's.hadiat@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(210, 'Agus Gunawan', 'a_gunawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(211, 'Barji', 'barji@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(212, 'Mahpudin', 'mahpudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(214, 'Ramdani', 'ramdani@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(215, 'Agus Rukmana', 'a.rukmana@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(216, 'Andri Irawan', 'a.irawan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(217, 'Hasanudin', 'hasanudin@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(218, 'Madturi', 'madturi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(219, 'Andriansyah', 'andriansyah.au@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(220, 'Herman', 'hermancs@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(223, 'Yana Suryana', 'yanacs@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(224, 'Zenal Mutaqin', 'mutaqin@biotrop.org', NULL, '$2y$10$Od.VBsFU8yQ1j54rrzvIOOJoczoUC0HAZpdPmgZnAzRZpIWyreNnC', 'user', 1, NULL, NULL, NULL, NULL),
(226, 'Adam Malik', 'adam@biotrop.org', NULL, '$2y$10$Od.VBsFU8yQ1j54rrzvIOOJoczoUC0HAZpdPmgZnAzRZpIWyreNnC', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(228, 'Dr Perdinan', 'perdinan@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(231, 'Jenny Kharismawaty, S.T.', 'jenny@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(233, 'Alya Shafira, S.T.', 'alya@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(234, 'Deda Annasia Yuliastri, M.Si.', 'deda@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(235, 'Adwitiya Priyotama, S.H.', 'tama@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(236, 'Deri Yandi, S.Si.', 'deri@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 0, '0000-00-00 00:00:00', NULL, NULL, NULL),
(237, 'Ir. Selvia Apriliani', 'selvia@biotrop.seameo.id', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(238, 'Putri Dina Rahayu', 'putri.dr@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(239, 'Dr Rhomi Ardiansyah', 'rhomi@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(240, 'hr', 'hr@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'hr', 1, NULL, NULL, NULL, NULL),
(241, 'User', 'user@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'user', 1, NULL, NULL, NULL, NULL),
(242, 'kepala', 'kepala@biotrop.org', NULL, '$2y$10$HuwIzvxLiPMLoCvoXCLGPuGcnkw4smPVp.hkToJfiWXUfR4xah57u', 'kepala', 1, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cutis`
--
ALTER TABLE `cutis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `departemens`
--
ALTER TABLE `departemens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `departemens_nama_unique` (`nama`);

--
-- Indexes for table `golongans`
--
ALTER TABLE `golongans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `golongans_nama_unique` (`nama`);

--
-- Indexes for table `identifiers`
--
ALTER TABLE `identifiers`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `identifiers_nama_unique` (`nama`);

--
-- Indexes for table `identities`
--
ALTER TABLE `identities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jabatans`
--
ALTER TABLE `jabatans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jabatans_nama_unique` (`nama`);

--
-- Indexes for table `jenis_cutis`
--
ALTER TABLE `jenis_cutis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_cutis_nama_unique` (`nama`);

--
-- Indexes for table `jenis_pelatihans`
--
ALTER TABLE `jenis_pelatihans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_pelatihans_nama_unique` (`nama`);

--
-- Indexes for table `jenis_publikasis`
--
ALTER TABLE `jenis_publikasis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenis_publikasis_nama_unique` (`nama`);

--
-- Indexes for table `jenjang_pendidikans`
--
ALTER TABLE `jenjang_pendidikans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `jenjang_pendidikans_nama_unique` (`nama`);

--
-- Indexes for table `keluargas`
--
ALTER TABLE `keluargas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `keterangan_keluargas`
--
ALTER TABLE `keterangan_keluargas`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `keterangan_keluargas_nama_unique` (`nama`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelatihans`
--
ALTER TABLE `pelatihans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikans`
--
ALTER TABLE `pendidikans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalamen`
--
ALTER TABLE `pengalamen`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `penghargaans`
--
ALTER TABLE `penghargaans`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `peran_pelatihans`
--
ALTER TABLE `peran_pelatihans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peran_pelatihans_nama_unique` (`nama`);

--
-- Indexes for table `peran_publikasis`
--
ALTER TABLE `peran_publikasis`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `peran_publikasis_nama_unique` (`nama`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `publikasis`
--
ALTER TABLE `publikasis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `status_users`
--
ALTER TABLE `status_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `status_users_nama_unique` (`nama`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cutis`
--
ALTER TABLE `cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `departemens`
--
ALTER TABLE `departemens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `golongans`
--
ALTER TABLE `golongans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `identifiers`
--
ALTER TABLE `identifiers`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `identities`
--
ALTER TABLE `identities`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jabatans`
--
ALTER TABLE `jabatans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_cutis`
--
ALTER TABLE `jenis_cutis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `jenis_pelatihans`
--
ALTER TABLE `jenis_pelatihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `jenis_publikasis`
--
ALTER TABLE `jenis_publikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `jenjang_pendidikans`
--
ALTER TABLE `jenjang_pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keluargas`
--
ALTER TABLE `keluargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `keterangan_keluargas`
--
ALTER TABLE `keterangan_keluargas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `pelatihans`
--
ALTER TABLE `pelatihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pendidikans`
--
ALTER TABLE `pendidikans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `pengalamen`
--
ALTER TABLE `pengalamen`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `penghargaans`
--
ALTER TABLE `penghargaans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `peran_pelatihans`
--
ALTER TABLE `peran_pelatihans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `peran_publikasis`
--
ALTER TABLE `peran_publikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `publikasis`
--
ALTER TABLE `publikasis`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `status_users`
--
ALTER TABLE `status_users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=243;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
