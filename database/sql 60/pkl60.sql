-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 28, 2021 at 08:23 AM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pkl60`
--

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_absensi_rapat`
--

CREATE TABLE `sikoko_absensi_rapat` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_peserta` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_kedatangan` datetime DEFAULT NULL,
  `is_wajib` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `presentase_presensi` int(3) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_absen_total`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_absen_total` (
`id_peserta` varchar(50)
,`nama` varchar(50)
,`presensi` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_all_rapat`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_all_rapat` (
`id_rapat` varchar(8)
,`id_risbid` char(4)
,`id_seksi` char(4)
,`id_subseksi` varchar(3)
,`nama_rapat` varchar(100)
,`id_jenis_rapat` char(3)
,`agenda` longtext
,`tempat` varchar(50)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`notulensi` varchar(70)
,`is_wajib` enum('0','1')
,`id_peserta` varchar(50)
,`waktu_kedatangan` datetime
,`presentase_presensi` int(3)
,`nama_seksi` varchar(50)
,`nama_riset_bidang` varchar(30)
,`nama_subseksi` varchar(70)
,`jenis_rapat` varchar(100)
,`kehadiran` varchar(19)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_berita`
--

CREATE TABLE `sikoko_berita` (
  `id_berita` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto_berita` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `short_desc` text COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_dosen`
--

CREATE TABLE `sikoko_dosen` (
  `nip` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jab_dosen` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_ruang` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `password` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kodeLupa` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_login` datetime NOT NULL DEFAULT '2018-11-11 00:00:00',
  `token` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_dosen`
--

INSERT INTO `sikoko_dosen` (`nip`, `username`, `nama`, `id_risbid`, `id_jab_dosen`, `no_hp`, `id_ruang`, `email`, `password`, `foto`, `kodeLupa`, `last_login`, `token`) VALUES
('195709231980031003', 'wdedi', 'Dr. Dedi Walujadi', 'RB04', 'JD12', '0817740245', 'G221', 'walujadi@stis.ac.id', NULL, NULL, '', '2021-02-28 10:07:57', 'qgKPN9xgDPd6Cz4nPUqn7WP3w'),
('195806081986031005', 'suryanto', 'Ir. Suryanto Aloysius, M.M', 'RB02', 'JD11', '08161439159', 'G231', 'suryanto@stis.ac.id', NULL, NULL, '', '2021-07-09 10:41:35', 'JZmF6ugtOePll3vJjYAMljKwu'),
('196008221985011001', NULL, 'Ir. Agus Purwoto, M.Si', 'RB09', 'JD04', '08161961364', 'G141', 'purwoto@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196102191983122001', 'budiasih1956', 'Dr. Budiasih, S.E., M.E.', 'RB03', 'JD12', '081510171610', 'G111', 'budiasih@stis.ac.id', NULL, NULL, '', '2021-02-23 14:14:37', 'DAPOLVcl9AoB783RBDJojMxHH'),
('196103131986011001', NULL, 'Nurseto Wisnumurti, M.Stat', 'RB09', 'JD05', '085880399194', 'G311', 'nurseto@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196105101983122001', 'iin', 'Siti Haiyinah W. S.E., M.Si.', 'RB04', 'JD12', '0817888355', 'G122', 'haiyinah.wijaya@stis.ac.id', NULL, NULL, '', '2021-02-26 14:23:45', 'gcInNtuB7kkK6fUj7WVMcDljn'),
('196207221985012001', 'riaeka', 'Ir. Ekaria, M.Si.', 'RB01', 'JD12', '081298661651', 'G122', 'ekaria@stis.ac.id', NULL, NULL, '', '2021-02-27 15:58:43', 'ACvUB8GC7hmddmEBiX74HOumY'),
('196302081985011001', 'w.marsisno', 'Drs. Waris Marsisno, M.Stat.', 'RB02', 'JD12', '082111734068', 'G132', 'waris@stis.ac.id', NULL, NULL, '', '2021-02-27 19:25:30', '2Y3m9aQo3OmbcBXv0CJjZIohF'),
('196503141988021001', 'jeffry', 'Jeffry Raja Hamonangan Sitorus, M.Si.', 'RB02', 'JD12', '081513121025', 'G221', 'jeffry@stis.ac.id', NULL, NULL, '', '2021-02-26 15:37:57', 'kdknEzpTGfLb6eIv9H5gqXWtw'),
('196607191991011001', 'setiadi', 'Yaya Setiadi, SST., M.M.', 'RB06', 'JD12', '081210187943', 'G231', 'setiadi@stis.ac.id', NULL, '434dceb437594465eb49f4c1c8337186.jpg', '', '2021-02-26 15:07:00', 'Wlto5peFodpAK7bZkoJRD3T37'),
('196703171989012001', NULL, 'Ir. Titik Harsanti, M.Si', 'RB09', 'JD03', '085885135518', 'G141', 'titik@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196703221987032002', NULL, 'Sri Widaryani, M.Si', 'RB08', 'JD12', '081380977767', 'G312', 'sisi@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196704251989011002', NULL, 'Dr. Hardius Usman, M.Si', 'RB09', 'JD02', '087883750389', 'G141', 'hardius@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196706121991011001', 'dokhi', 'Dr. Muhammad Dokhi', 'RB01', 'JD12', '081330309440', 'G221', 'dokhi@stis.ac.id', NULL, NULL, '', '2021-02-26 20:13:48', 'HItuoBIj2E1frtqD6hTrW8l8Z'),
('196709101991121001', 'herwanto', 'Sri Herwanto Dwi Hatmo, S.Si, MA.', 'RB05', 'JD12', '081311130003', 'G241', 'herwanto@stis.ac.id', NULL, NULL, '', '2021-02-27 10:22:51', 'U6SCOexc96yXl4CtxDCLw9Uh0'),
('196710221990032002', NULL, 'Dr. Erni Tri Astuti, M.Math', 'RB09', 'JD01', '08159407324', 'G141', 'erni@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('196805031991011001', 'arcana', 'Dr. I Made Arcana', 'RB01', 'JD12', '082138235109', 'G131', 'arcana@stis.ac.id', NULL, NULL, '', '2021-02-26 21:17:41', 'Lw51xBLAhTj9NCbAC9Vo1DjqS'),
('197001121991122001', 'theo', 'Dr.Tiodora Hadumaon Siagian, M. Pop. Hum. Res.', 'RB03', 'JD11', '081585464795', 'G122', 'theo@stis.ac.id', NULL, 'd5644c9340399f28b5749a0077c2e58e.jpg', '', '2021-02-25 17:52:57', 'AbyvgpewMSrcWLIrpNhGzM2G5'),
('197001251998032001', 'retna', 'Retnaningsih, S.Si., M.E.', 'RB06', 'JD12', '081317700686', 'G231', 'retna@stis.ac.id', NULL, NULL, '', '2021-02-28 20:21:00', 'RI9qGK5cZ1ngDBsLbZXpext1x'),
('197002191992112001', 'sitim@stis.ac.id', 'Dr. Siti Muchlisoh, M.Si', 'RB09', 'JD08', '08128300234', 'G121', 'sitim@stis.ac.id', NULL, NULL, '', '2021-02-26 17:32:58', 'tb5jJU9UkI8IC1IWLeGCK88eu'),
('197005131992111001', NULL, 'Bambang Nurcahyo, SE, MM', 'RB09', 'JD06', '08128931384', 'G312', 'nurcahyo@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('197006161988121001', 'anang', 'Yunarso Anang Sulistiadi, M.Eng., Ph.D', 'RB05', 'JD12', '08111893616', 'G131', 'anang@stis.ac.id', NULL, NULL, '', '2021-02-26 13:24:25', 'VAoIquDyNVeJxGL1mE3OOjiyW'),
('197007251998032003', 'rita_y', 'Dr. Rita Yuliana S.Si, MSE', 'RB03', 'JD12', '081363428275', 'G231', 'rita@stis.ac.id', NULL, NULL, '', '2021-02-26 15:44:21', 'stjjpXOwklORZyR7lOGt4y4JI'),
('197009261992111001', 'wahyudin', 'Wahyudin, S.Si., M.A.P., M.P.P.', 'RB04', 'JD12', '089521049606', 'G231', 'wahyudin@stis.ac.id', NULL, NULL, '', '2021-02-28 13:05:46', 'LbZvM39ZnLsNuj0TpCHLtwrMR'),
('197204241994031003', 'sukim', 'Sukim, SST., M.Si', 'RB06', 'JD11', '08128874783', 'G132', 'sukim@stis.ac.id', NULL, NULL, '', '2021-06-29 17:50:16', 'boFlyghWF8FLBGdXCtDwBo99L'),
('197205261991121001', 'firdaus', 'Firdaus M.B.A.', 'RB04', 'JD12', '085778382820', 'G231', 'firdaus@stis.ac.id', NULL, NULL, '', '2021-02-27 08:57:51', 'HT3EAkbiyUM2T90hv4eHpSmBX'),
('197208221994121001', 'sofyan@stis.ac.id', 'Sofyan Ayatulloh, S.ST', 'RB08', 'JD13', '0881025337948', 'G311', 'sofyan@stis.ac.id', NULL, NULL, '', '2020-12-04 08:52:16', 'qvwZtGblFDkuvkbn4igpMYOxj'),
('197211171995121001', 'pras', 'Achmad Prasetyo, S.Si., M.M.', 'RB01', 'JD12', '081213448617', 'G232', 'praze@stis.ac.id', NULL, NULL, '', '2021-02-26 16:30:49', '02ME8nsiOthfPZNbF8he7aGgd'),
('197305281995121001', 'agungpu', 'Agung Priyo Utomo, S.Si., M.T.', 'RB06', 'JD12', '08161123675', 'G131', 'agung@stis.ac.id', NULL, NULL, '', '2021-02-28 22:46:21', 'deHSY8YmbnqcRwRFQvTC9MoeA'),
('197310231995122001', 'ernapasaribu', 'Dr. Ernawati Pasaribu, S.Si, ME', 'RB04', 'JD12', '08161399240', 'G121', 'ernapasaribu@stis.ac.id', NULL, NULL, '', '2021-03-12 08:03:43', 'YcIkgLgbPEKiKYxMNzzy4XtLj'),
('197312272000031002', 'timbang', 'Dr.Timbang Sirait, M.Si.', 'RB01', 'JD11', '08179719667', 'G122', 'timbang@stis.ac.id', NULL, NULL, '', '2021-05-05 10:00:58', 'sG1MpC3rVLJEFQCzeANWrqJoX'),
('197412101996121001', 'masnasrudin', 'Dr. Nasrudin, S.Si, ME', 'RB09', 'JD07', '081219420562', 'G121', 'nasrudin@stis.ac.id', NULL, NULL, '', '2021-02-26 10:37:22', 'X3M8RwS4JymGCI4zn6ZGH4Xlq'),
('197502041996122001', 'akmonika', 'Anugerah Karta Monika, S.Si., M.E.', 'RB03', 'JD12', '0818138751', 'G221', 'ak.monika@stis.ac.id', NULL, NULL, '', '2021-02-24 10:54:49', 'RVWatZGg307s5Uwcz592t6jvG'),
('197605052000032003', 'lia', 'Lia Yuliana, MT', 'RB06', 'JD12', '08129691386', 'G221', 'lia@stis.ac.id', NULL, NULL, '', '2021-02-25 20:33:56', 'dbnIy1Z47w4rVgiyO0qLH4Sqw'),
('197608092000032001', 'neli', 'Neli Agustina, M.Si', 'RB09', 'JD09', '08129644688', 'G121', 'neli@stis.ac.id', NULL, NULL, '', '2021-02-24 13:58:03', 'RLsHiQ4NYIgOYDBXrmDHYtXUY'),
('197701042009022003', 'liza', 'Liza Kurnia Sari, S.Si, M.Stat.', 'RB04', 'JD12', '081310734734', 'G221', 'lizakurnia@stis.ac.id', NULL, NULL, '', '2021-02-26 10:05:50', 'B329YzuQyPkovC0TySsXl6aDY'),
('197712082000121002', 'mustaqim', 'Dr. Mustaqim, SST., SE., M.Si', 'RB06', 'JD12', '085240292817', 'G131', 'mustaqim@stis.ac.id', NULL, NULL, '', '2021-02-25 10:12:22', 'WjuhOMLaMzEER0xPhB2xIkwZC'),
('197807222000121003', 'soegie', 'Sugiarto, SST., M.M.', 'RB02', 'JD12', '08197654699', 'G231', 'soegie@stis.ac.id', NULL, NULL, '', '2021-02-25 12:32:06', '2lqqJBfl7u2GV8i6FMNGcFS8O'),
('197808022000122001', 'atik', 'Atik Maratis, S.E., M.Si.', 'RB01', 'JD12', '085716750580', 'G231', 'atik@stis.ac.id', NULL, NULL, '', '2021-02-26 23:51:32', '31M4WcFLSxLQqvDbGSfCPUUWo'),
('197907312000122001', 'cucu', 'Dr. Cucu Sumarni, M.Si', 'RB03', 'JD12', '081573242676', 'G131', 'cucu@stis.ac.id', NULL, NULL, '', '2021-02-25 16:34:34', 'FMzMuVRcmjXcjkR6bd19jGXE1'),
('198002102002121001', 'rindang', 'Dr. Rindang Bangun Prasetyo', 'RB01', 'JD12', '082233999801', 'G131', 'rindang@stis.ac.id', NULL, NULL, '', '2021-02-27 20:01:15', 'hSVTYBiR8FeI8p8kuDENZW1M7'),
('198006242003121004', 'byuniarto', 'Budi Yuniarto, SST., M.Si', 'RB05', 'JD12', '081316655315', 'G132', 'byuniarto@stis.ac.id', NULL, NULL, '', '2021-02-26 17:52:06', 'jtt4BixMnRwi0qDIymlA4hliY'),
('198007242002121002', 'budyanra', 'Budyanra, SST., M.Stat.', 'RB03', 'JD12', '085375564048', 'G132', 'budy@stis.ac.id', NULL, NULL, '', '2021-02-25 09:53:57', 'MiBcBvOoCoPoiQTS1D4BIIYsU'),
('198007282003121004', 'madsyair', 'Dr. Achmad Syahrul Choir', 'RB05', 'JD12', '081217220615', 'G131', 'madsyair@stis.ac.id', NULL, NULL, '', '2021-02-26 21:21:11', '3o9lD1ZyU9dDSTsZUWTQzqCi8'),
('198102272004122001', 'toza', 'Toza Sathia Utiyarsih, SST., M.Stat.', 'RB04', 'JD12', '08158767624', 'G312', 'toza@stis.ac.id', NULL, NULL, '', '2021-02-27 22:47:28', '8nrZWvkj2Vq77q1VqZaOL8czJ'),
('198106042003121001', 'robertk', 'Robert Kurniawan, SST., M.Si.', 'RB03', 'JD12', '085244174711', 'G231', 'robertk@stis.ac.id', NULL, NULL, '', '2021-02-27 18:51:43', 'ywX2WBiIbGdktx5UFXiTdrKYg'),
('198106122003122002', 'nucke', 'Nucke Widowati Kusumo Projo, Ph.D', 'RB04', 'JD11', '087898503251', 'G122', 'nucke@stis.ac.id', NULL, NULL, '', '2021-06-24 10:42:36', 'thGoJmK2TzHGCYWakH4HCncxW'),
('198110142004122001', 'krismanti', 'Krismanti Tri Wahyuni, M.Si.', 'RB02', 'JD12', '085216465162', 'G221', 'krismanti@stis.ac.id', NULL, 'f8f55b848c5f4b19bfcd2f9e258d3dbe.jpg', '', '2021-02-27 20:54:18', 'XEBPplSgjc7nLrP2WYbzuxJ0K'),
('198111272004122001', 'dewip', 'Dewi Purwanti, M.Si', 'RB03', 'JD12', '08158176780', 'G221', 'dewip@stis.ac.id', NULL, NULL, '', '2021-02-27 09:09:37', 'Cn7jSUztDNMaHssd92IpSsEkq'),
('198202022003121004', 'febri', 'Febri Wicaksono, SST., M.Si.', 'RB02', 'JD12', '081261117043', 'G231', 'febri@stis.ac.id', NULL, NULL, '', '2021-02-27 23:59:59', 'zRX5MfGc5Bcw6ekohpG6o9ff1'),
('198202072004121001', 'azka@stis.ac.id', 'Dr. Azka Ubaidillah', 'RB01', 'JD12', '08129820024', 'G231', 'azka@stis.ac.id', NULL, NULL, '', '2021-02-28 17:44:31', 'UGwn8z6WzyTZVaO8b95fFfzEI'),
('198301022007012007', NULL, 'Ari Wahyuni, SST', 'RB09', 'JD10', '082123295081', 'G312', 'arywahyu@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('198302182004122001', 'efridiah', 'Efri Diah Utami, SST., M.Stat.', 'RB06', 'JD12', '081341618261', 'G221', 'efridiah@stis.ac.id', NULL, NULL, '', '2021-02-27 10:31:02', 'L7tCkNnahSZQQTtuUvECcdLn8'),
('198306072007012009', 'raninoor', 'Rani Nooraeni, SST., M.Stat.', 'RB02', 'JD12', '085280540046', 'G221', 'raninoor@stis.ac.id', NULL, NULL, '', '2021-02-25 11:27:12', 'r716BbKxgW61TBaMorKERzrpn'),
('198311062010031002', NULL, 'Rifka Rahman Hakim, M.Si', 'RB08', 'JD12', '085891101088', 'G312', 'rifka.hakim@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('198405022008012010', NULL, 'Tria Merina, SST', 'RB08', 'JD12', '0895390105809', 'G312', 'tria@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('198410152007012001', 'siskarossa', 'Siskarosa Ika Oktora, M.Stat', 'RB05', 'JD12', '081355101520', 'G231', 'siskarossa@stis.ac.id', NULL, NULL, '', '2021-02-25 15:30:02', 'cHlWTQFTNZR7tV5hS3YI1tI7G'),
('198504302009022006', NULL, 'Luci Wulansari S.Si, M.S.E', 'RB08', 'JD12', '081233504001', 'G312', 'luci@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('198506012007012003', 'aisyah.fy', 'Aisyah Fitri Yuniasih, M.Si', 'RB09', 'JD09', '081379198540', 'G131', 'aisyah.fy@stis.ac.id', NULL, NULL, '', '2021-02-27 11:11:07', 'dknEaenXIVxXpUCPMU40VwsKM'),
('198507122011012006', 'risni_yuhan', 'Risni Julaeni Yuhan S.P., M.Stat.', 'RB06', 'JD12', '081284050686', 'G132', 'risnij@stis.ac.id', NULL, NULL, '', '2021-02-25 12:05:01', 'nczPtcZ9ijsHSdaKDc0n2Vg1V'),
('198512122008011004', 'faridr', 'Farid Ridho, SST., M.T.', 'RB07', 'JD12', '085282012357', 'G241', 'faridr@stis.ac.id', NULL, NULL, '', '2021-06-24 08:29:20', 'D2CM2yQdlENegJmDFHd6tgBf9'),
('198512222009021002', 'ariewahyu', 'Dr. Eng. Arie Wahyu Wijayanto', 'RB05', 'JD11', '085890363680', 'G131', 'ariewahyu@stis.ac.id', NULL, NULL, '', '2021-08-30 16:35:43', 'prkeuUKMh0nIJaoS8hjElKJQu'),
('198601202008011002', 'ibnusan', 'Ibnu Santoso, SST., M.T.', 'RB07', 'JD13', '081341829968', 'G241', 'ibnu@stis.ac.id', NULL, NULL, '', '2021-07-06 10:17:53', '1Vl9A5xYVYOjXDg6pcJTryr7F'),
('198606022009022007', 'ikayuni', 'Ika Yuni Wulansari, SST,M.Stat', 'RB02', 'JD12', '081218149786', 'G131', 'ikayuni@stis.ac.id', NULL, NULL, '', '2021-03-01 07:38:25', 'MB2HyJPloh2aBoxCMpRKXPYoI'),
('198704142010121001', 'takdir', 'Takdir, SST,MT', 'RB01', 'JD12', '081389738894', 'G131', 'takdir@stis.ac.id', NULL, NULL, '', '2021-02-26 21:21:14', 'fIUYytcq4hjZjHebnpZPCv13I'),
('198708262010121001', 'dwybagus', 'Dwy Bagus Cahyono, SST, MT', 'RB06', 'JD12', '08124925919', 'G311', 'dwybagus@stis.ac.id', NULL, NULL, '', '2021-02-27 11:14:48', '238adXbY1oRgvJut3mUiVCVfF'),
('198803032010122004', 'rinisilvi', 'Rini Silvi, SST, M.Stat', 'RB06', 'JD12', '089631462161', 'G312', 'rinisilvi@stis.ac.id', NULL, NULL, '', '2021-02-28 01:00:43', '1upqABlZ6Wc48K28zz1N4mP6E'),
('198809142010122004', NULL, 'Rina Hardiyanti, SST', 'RB09', 'JD10', '082114005339', 'G312', 'rinaha@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('198810242010122001', 'mariyahsmile', 'Siti Mariyah, SST., MT', 'RB05', 'JD12', '081316601741', 'G122', 'sitimariyah@stis.ac.id', NULL, NULL, '', '2021-02-28 13:45:11', 'MO2ypXDrZC0HGlNXQlTNrjePQ'),
('198811292012112001', 'nofita@bps.go.id', 'Nofita Istiana, M.Si', 'RB03', 'JD12', '085640756067', 'G311', 'nofita@stis.ac.id', NULL, NULL, '', '2021-02-24 17:35:24', 'i4yuSX3wdTTxlfdfV22E7xDd4'),
('199001102012112001', 'wilantika', 'Nori Wilantika SST, M.T.I', 'RB05', 'JD12', '089508121345', 'G231', 'wilantika@stis.ac.id', NULL, NULL, '', '2021-04-30 10:50:53', 'wvUrwc8eAKpAqN66UCeH4DQOz'),
('199004052012112001', 'lutfirm', 'Lutfi Rahmatuti Maghfiroh, MT', 'RB07', 'JD12', '081381703898', 'G231', 'lutfirm@stis.ac.id', NULL, NULL, '', '2021-02-24 10:36:32', 'gCHQ0NwasoT8LiYa72IcsV8lj'),
('199007152013112000', 'winih', 'Winih Budiarti, SST., M.Stat.', 'RB06', 'JD12', '081314136759', 'G221', 'winih@stis.ac.id', NULL, NULL, '', '2021-02-27 18:24:44', 'LfoJ0xFAlcFaur1QkhBf6v6D2'),
('199510142019011001', NULL, 'Isfan Nur Fauzi S.Tr.Stat', 'RB03', 'JD12', '085643343439', 'G241', 'isfan@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('199606282019011001', NULL, 'Muhammad Luqman S.Tr.Stat', 'RB04', 'JD12', '082311822575', 'G241', 'luqman@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('199612212019011001', 'geri', 'Geri Yesa Ermawan S.Tr.Stat.', 'RB02', 'JD12', '085655977475', 'G312', 'geri@stis.ac.id', NULL, NULL, '', '2021-03-01 15:16:02', 'y9yXL66qvo7CpnXRTX8NGyOpy'),
('199704222019122001', NULL, 'Claudya Muna Asmarani, S.Tr. Stat', 'RB08', 'JD12', '0895331060227', 'G311', 'claudyamuna@stis.ac.id', NULL, NULL, '', '2021-02-20 19:19:19', NULL),
('199711232019011001', 'rahadi', 'Rahadi Jalu Yoga Utama S.Tr.Stat.', 'RB07', 'JD12', '083865978213', 'G241', 'rahadi@stis.ac.id', NULL, 'cc63ab28fd0696137aefc0061988f586.png', '', '2021-05-15 10:46:25', 'tgRqSXPoO2YHzVo5eVviKXq3f');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_galeri`
--

CREATE TABLE `sikoko_galeri` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jabatan`
--

CREATE TABLE `sikoko_jabatan` (
  `id_jab` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(11) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jabatan`
--

INSERT INTO `sikoko_jabatan` (`id_jab`, `nama_jabatan`) VALUES
('J001', 'KETUA'),
('J002', 'WAKIL KETUA'),
('J003', 'KOORDINATOR'),
('J004', 'SEKRETARIS'),
('J005', 'BENDAHARA'),
('J006', 'ANGGOTA');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jabatan_dosen`
--

CREATE TABLE `sikoko_jabatan_dosen` (
  `id_jab_dosen` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jabatan_dosen`
--

INSERT INTO `sikoko_jabatan_dosen` (`id_jab_dosen`, `nama_jabatan`) VALUES
('JD01', 'Pengarah'),
('JD02', 'Penanggung Jawab Bidang Akademik'),
('JD03', 'Penanggung Jawab Bidang Keuangan'),
('JD04', 'Penanggung Jawab Bidang Kemahasiswaan'),
('JD05', 'Penanggung Jawab Administrasi Akademik'),
('JD06', 'Penanggung Jawab Administrasi Umum'),
('JD07', 'Ketua Penyelenggara'),
('JD08', 'Koordinator'),
('JD09', 'Sekretaris'),
('JD10', 'Bendahara'),
('JD11', 'Ketua / Koordinator Analisis'),
('JD12', 'Anggota'),
('JD13', 'Ketua');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jabatan_lapangan`
--

CREATE TABLE `sikoko_jabatan_lapangan` (
  `id_lap` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_jabatan` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jabatan_lapangan`
--

INSERT INTO `sikoko_jabatan_lapangan` (`id_lap`, `nama_jabatan`) VALUES
('L01', 'Pengawas'),
('L02', 'Korlap'),
('L03', 'Seklap'),
('L04', 'Bendahara'),
('L05', 'KPD'),
('L06', 'Tim Monitoring'),
('L07', 'Tim Email'),
('L08', 'Inkamp'),
('L09', 'Narahubung'),
('L10', 'Kortim'),
('L11', 'PCL'),
('L12', 'PCL ONLINE');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_jenis_rapat`
--

CREATE TABLE `sikoko_jenis_rapat` (
  `id_jenis_rapat` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `jenis_rapat` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_jenis_rapat`
--

INSERT INTO `sikoko_jenis_rapat` (`id_jenis_rapat`, `jenis_rapat`) VALUES
('R01', 'Rapat BPH'),
('R02', 'Rapat Riset / Bidang'),
('R03', 'Rapat Seksi / Divisi'),
('R04', 'Rapat Subseksi / Subdivisi'),
('R05', 'Rapat Koordinasi dengan Dosen'),
('R06', 'Rapat Koordinasi Antarseksi dalam Satu Riset'),
('R07', 'Rapat Koordinasi dengan Riset Lain'),
('R08', 'Rapat Akbar'),
('R09', 'Rapat Pleno'),
('R10', 'Rapat Lainnya');

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_kehadiran_total`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_kehadiran_total` (
`nip` varchar(18)
,`nama` varchar(50)
,`presensi` decimal(13,2)
,`total_rapat` bigint(21)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_knowledge_management`
--

CREATE TABLE `sikoko_knowledge_management` (
  `id_km` int(11) NOT NULL,
  `nama_km` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_upload` datetime NOT NULL,
  `upload_by` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_dosen`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_dosen` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(18)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_mhs`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_mhs` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(9)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_laporan_rapat`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_laporan_rapat` (
`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
,`waktu_mulai` datetime
,`waktu_selesai` datetime
,`tempat` varchar(50)
,`identitas` varchar(18)
,`nama` varchar(50)
,`kehadiran` varchar(11)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_limits`
--

CREATE TABLE `sikoko_limits` (
  `id` int(11) NOT NULL,
  `uri` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `count` int(10) NOT NULL,
  `hour_started` int(11) NOT NULL,
  `api_key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_mahasiswa`
--

CREATE TABLE `sikoko_mahasiswa` (
  `nim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `kelas` char(6) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prodi` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `no_hp` varchar(16) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alamat` varchar(1000) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_subseksi` varchar(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_jab` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` char(60) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `foto` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_login` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `level` int(1) NOT NULL DEFAULT 1,
  `token` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_mahasiswa`
--

INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('21181000a', 'SEKRE SEKSI', '3SE4', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000a@stis.ac.id', 'RB01', 'S011', '001', 'J004', NULL, NULL, '2021-09-21 14:50:50', 1, '6DZpJd5tfwuDzG76sdqVWC9CE'),
('21181000b', 'SEKRE UTAMA', '3SE4', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000b@stis.ac.id', 'RB00', 'S000', '000', 'J004', NULL, NULL, '2021-09-21 14:51:01', 1, 'FaPLzZY5ggg9XdOmIuqPoTW0Y'),
('21181000c', 'WAKIL KETUA PKL', '3SD2', 'DIV STATISTIKA', '08900000000', 'Jalan', '22181000c@stis.ac.id', 'RB00', 'S000', '000', 'J002', NULL, NULL, '2021-09-21 14:53:37', 1, 'beYGj98ivkHM4t8b0CzgVzvCQ'),
('21181000d', 'ANGGOTA', '3SE3', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000d@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2021-09-21 14:51:27', 1, 'WPiiwXJPloQbZ6ldy8uG9TbcW'),
('21181000e', 'BENDAHARA RISET', '3SK3', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000e@stis.ac.id', 'RB01', 'S004', '100', 'J005', NULL, NULL, '2021-09-21 14:51:22', 1, 'wfi4FtWfX7YnU608P9LCNkniG'),
('21181000f', 'BENDAHARA SEKSI', '3SK5', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000f@stis.ac.id', 'RB01', 'S016', '001', 'J005', NULL, NULL, '2021-09-21 14:51:33', 1, 'TBlDW4KsGDfrrAkKSQ8uZz4dY'),
('21181000g', 'BENDAHARA UTAMA', '3SK2', 'DIV STATISTIKA', '08900000000', 'jalan', '21181000g@stis.ac.id', 'RB00', 'S000', '000', 'J005', NULL, NULL, '2021-09-21 14:51:39', 1, 'XiDmbc0ectWBWZLGtZLMS6l1F'),
('21181000h', 'KETUA PKL', '3SE2', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000h@stis.ac.id', 'RB00', 'S000', '000', 'J001', NULL, NULL, '2021-09-21 14:51:50', 1, 'uXlj2ldd7CmkbnKzswM7mGGEs'),
('21181000i', 'KETUA RISET/BIDANG', '3SK5', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000i@stis.ac.id', 'RB03', 'S003', '100', 'J001', NULL, NULL, '2021-09-21 14:52:05', 1, 'fcJ4Kk5HORnYtqf12nFPsJWWo'),
('21181000j', 'KOOR SEKSI', '3SE2', 'DIV STATISTIKA', '08900000000', 'Jalan', '21181000j@stis.ac.id', 'RB05', 'S020', '001', 'J003', NULL, NULL, '2021-09-21 14:52:10', 1, 'C60dvMgShrxKL7tdZBQajjPmX'),
('22181000k', 'KOOR SUBSEKSI', '3SK1', 'DIV KOMPUTASI STATISTIK', '08900000000', 'Jalan', '22181000k@stis.ac.id', 'RB08', 'S008', '807', 'J003', NULL, NULL, '2021-09-21 14:54:08', 1, '93ImvRphUygbW9yMnuk0Fb4Hi'),
('22181000l', 'SEKRE RISET/BIDANG', '3SD1', 'DIV KOMPUTASI STATISTIK', '08900000000', 'Jalan', '22181000l@stis.ac.id', 'RB01', 'S004', '100', 'J004', NULL, NULL, '2021-09-21 14:52:44', 1, 'U6kxSLlSRKX98Zalh5l2VuD1t');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_notula`
--

CREATE TABLE `sikoko_notula` (
  `id_notula` int(11) NOT NULL,
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_file` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_kirim` date NOT NULL,
  `id_sekre` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_ketua` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_ketua` enum('Disetujui','Ditolak','Menunggu') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'Menunggu',
  `komentar_ketua` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_dosen` varchar(18) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `acc_dosen` enum('Disetujui','Ditolak','Menunggu','') COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `komentar_dosen` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `batal` int(2) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Stand-in structure for view `sikoko_notula_kosong`
-- (See below for the actual view)
--
CREATE TABLE `sikoko_notula_kosong` (
`nim` varchar(9)
,`nama` varchar(50)
,`id_rapat` varchar(8)
,`nama_rapat` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_pengumuman`
--

CREATE TABLE `sikoko_pengumuman` (
  `id_pengumuman` int(11) NOT NULL,
  `title` varchar(150) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu` date NOT NULL,
  `content` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `foto` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `dibuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_penilaian`
--

CREATE TABLE `sikoko_penilaian` (
  `id_tim` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_mahasiswa` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jab_lapangan` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_dosen` varchar(18) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nilai` int(3) NOT NULL DEFAULT 60
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_progress`
--

CREATE TABLE `sikoko_progress` (
  `id_task` int(11) NOT NULL,
  `nama_task` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tanggal_mulai` date NOT NULL,
  `tanggal_selesai` date NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `keterangan` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_rapat`
--

CREATE TABLE `sikoko_rapat` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jenis_rapat` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `nama_rapat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `agenda` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `tempat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_zoom` longtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `waktu_mulai` datetime NOT NULL,
  `waktu_selesai` datetime DEFAULT NULL,
  `notulensi` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `prioritas_enum` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_ketua` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_sekretaris` varchar(9) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `email_dosen` int(1) NOT NULL DEFAULT 0,
  `email_mhs` int(1) NOT NULL DEFAULT 0,
  `email_perubahan` int(1) NOT NULL DEFAULT 0,
  `view` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL,
  `dengan_dosen` int(1) DEFAULT NULL,
  `peserta_bidang` int(11) DEFAULT NULL,
  `tipe` int(1) DEFAULT 0,
  `absensi` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_rapat_seksi`
--

CREATE TABLE `sikoko_rapat_seksi` (
  `id_rapat` varchar(8) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subseksi` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_riset_bidang`
--

CREATE TABLE `sikoko_riset_bidang` (
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_riset_bidang` varchar(30) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meeting_id` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `link_zoom` longtext COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_riset_bidang`
--

INSERT INTO `sikoko_riset_bidang` (`id_risbid`, `nama_riset_bidang`, `meeting_id`, `link_zoom`) VALUES
('RB00', 'BPH Utama', '4185812554', 'https://zoom.us/j/4185812554?pwd=K2RJRUt4SkpWUkhud3QwenVxcnltdz09'),
('RB01', 'Riset 1', '4185812554', 'https://zoom.us/j/4587533259?pwd=Sld2QjFGUklYKzViTEVOenphT2xmdz09'),
('RB02', 'Riset 2', '8327385679', 'https://zoom.us/j/8327385679?pwd=TzVoTTM0emdJSjRLc3R0QWJyaGI5Zz09'),
('RB03', 'Riset 3', '9054703024', 'https://zoom.us/j/9054703024?pwd=U3UvMi8zczVEZU5WZjR2aHJvOEdoZz0'),
('RB04', 'Riset 4', '8902274545', 'https://zoom.us/j/8902274545?pwd=a0xsbGNSVHRlTjI1aWUyaUdTVE0xdz09'),
('RB05', 'Riset 5', '6142594492', 'https://zoom.us/j/6142594492?pwd=YnhPbUNyQURNUjJtTW1iejl0dkQ3QT09'),
('RB06', 'Riset 6', '9406507799', 'https://zoom.us/j/9406507799?pwd=TzVoTTM0emdJSjRLc3R0QWJyaGI5Zz09'),
('RB07', 'Bidang IT', '5982612099', 'https://zoom.us/j/5982612099?pwd=eEVVVVpneEUxKzl4ZzgrbTNBSHB2QT09'),
('RB08', 'Bidang Umum', '7908048588', 'https://zoom.us/j/7908048588?pwd=VE83Z25QazYwVE5CZGlZV0xQdFNiZz09'),
('RB09', 'PPPM', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_ruang`
--

CREATE TABLE `sikoko_ruang` (
  `id_ruang` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ruang` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_ruang`
--

INSERT INTO `sikoko_ruang` (`id_ruang`, `nama_ruang`) VALUES
('G111', 'Gedung 1 Lt. 1'),
('G121', 'Gedung 1 Lt. 2 PPPM'),
('G122', 'Gedung 1 Lt. 2 Unit Kajian'),
('G131', 'Gedung 1 Lt. 3 Prodi'),
('G132', 'Gedung 1 Lt. 3 SPM'),
('G141', 'Gedung 1 Lt. 4'),
('G221', 'Gedung 2 Lt .2'),
('G231', 'Gedung 2 Lt. 3'),
('G232', 'Gedung 2 Lt. 3 Perpustakaan'),
('G241', 'Gedung 2 Lt. 4 Unit TI'),
('G311', 'Gedung 3 Lt. 1 BAAK'),
('G312', 'Gedung 3 Lt.1 BU');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_seksi`
--

CREATE TABLE `sikoko_seksi` (
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_seksi` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_seksi`
--

INSERT INTO `sikoko_seksi` (`id_seksi`, `nama_seksi`) VALUES
('S000', 'BPH '),
('S001', 'PVD'),
('S002', 'SIKOKO'),
('S003', 'SPD'),
('S004', 'BPH BIDANG/RISET'),
('S006', 'HUMAS'),
('S007', 'LOGISTIK'),
('S008', 'PUBDOK'),
('S009', 'ANALISIS'),
('S010', 'METODOLOGI 1'),
('S011', 'METODOLOGI 2'),
('S012', 'KUESIONER'),
('S013', 'METODOLOGI'),
('S014', 'PENGOLAHAN'),
('S015', 'DASHBOARD'),
('S016', 'METODOLOGI 3'),
('S020', 'BACK END'),
('S021', 'DATABASE'),
('S022', 'FRONT END'),
('S023', 'TIM ANALISIS DATA'),
('S024', 'TIM INFOGRAFIS DAN VIDEOGRAFIS'),
('S025', 'TIM PENYUSUNAN BUKU KNOWLEDGE MANAGEMENT'),
('S026', 'TIM PENYUSUNAN BUKU LAPORAN'),
('S027', 'TIM PARADATA'),
('S028', 'TIM PVD RISET 1'),
('S029', 'TIM VISUALISASI'),
('S030', 'TIM HPD RISET 1'),
('S031', 'TIM KML RISET 1'),
('S032', 'TIM DASHBOARD');

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_subseksi`
--

CREATE TABLE `sikoko_subseksi` (
  `id_subseksi` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_subseksi` varchar(70) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rule_denda` double DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_subseksi`
--

INSERT INTO `sikoko_subseksi` (`id_subseksi`, `nama_subseksi`, `rule_denda`) VALUES
('000', 'BPH 5', 0),
('001', 'BPH SEKSI', 0),
('100', 'BPH RISET 1', 0),
('101', 'SUBKOOR 1', 0),
('102', 'SUBKOOR 2', 0),
('103', 'SUBKOOR 3', 0),
('104', 'ANALISIS 1', 0),
('105', 'ANALISIS 2', 0),
('106', 'TREATMENT 1', 0),
('107', 'TREATMENT 2', 0),
('108', 'SUBSEKSI 1', 0),
('109', 'SUBSEKSI 2', 0),
('110', 'ANALISIS 1 KAJIAN 3', 0),
('111', 'ANALISIS 2 KAJIAN 3', 0),
('112', 'NONPROBABILITY', 0),
('113', 'PROBABILITY', 0),
('114', 'RISET 2', 0),
('115', 'RISET 3', 0),
('116', 'KAJIAN 1', 0),
('117', 'KAJIAN 2', 0),
('118', 'KAJIAN 3', 0),
('119', 'HPD RISET 1', 0),
('120', 'KML RISET 1', 0),
('121', 'PVD RISET 1', 0),
('200', 'BPH RISET 2', 0),
('201', 'BUKU PEDOMAN', 0),
('202', 'KUESIONER', 0),
('203', 'LISTING', 0),
('204', 'SP2R', 0),
('205', 'SAMPLING', 0),
('206', 'AB12', 0),
('207', 'ANALISIS DESKRIPTIF', 0),
('208', 'ANALISIS INFERENSIA', 0),
('209', 'HUBUNGAN KEPUASAN DAN PEMAHAMAN', 0),
('210', 'KAJIAN 1 ANADES', 0),
('211', 'KAJIAN 2 ANADES', 0),
('212', 'KAJIAN 3 ANADES', 0),
('213', 'PEMBUATAN INDEKS', 0),
('214', 'SEM KESELURUHAN', 0),
('215', 'SEM MILENIAL', 0),
('216', 'SEM NONMILENIAL', 0),
('217', 'EKSPLORASI DATA', 0),
('218', 'TIM DASHBOARD', 0),
('219', 'TIM PENYUSUNAN BUKU KNOWLEDGE MANAGEMENT', 0),
('220', 'TIM PENYUSUNAN BUKU LAPORAN', 0),
('221', 'TIM VIDEOGRAFIS DAN INFOGRAFIS', 0),
('300', 'BPH RISET 3', 0),
('301', 'AB12', 0),
('302', 'ANALISIS DESKRIPTIF', 0),
('303', 'ANALISIS INFERENSIA', 0),
('304', 'BACK END', 0),
('305', 'DATABASE', 0),
('306', 'FRONT END', 0),
('307', 'BUKU PEDOMAN', 0),
('308', 'PERTANYAAN', 0),
('309', 'SP2R', 0),
('310', 'LISTING', 0),
('311', 'SAMPLING', 0),
('312', 'INFOGRAFIS DAN VIDEOGRAFIS', 0),
('313', 'BUKU LAPORAN', 0),
('314', 'BUKU KNOWLEDGE MANAGEMENT', 0),
('315', 'PARADATA', 0),
('316', 'ANADES IMKB PEGAWAI', 0),
('317', 'ANADES IMKB SATKER', 0),
('318', 'ANADES GAMBARAN UMUM', 0),
('319', 'ANALISIS INFERENSIA', 0),
('320', 'ANALISIS INDEKS', 0),
('321', 'ANALISIS SUBINDEKS', 0),
('322', 'DASHBOARD', 0),
('400', 'BPH RISET 4', 0),
('401', 'AB12', 0),
('402', 'ANALISIS DESKRIPTIF', 0),
('403', 'ANALISIS INFERENSIA', 0),
('404', 'BUKU PEDOMAN', 0),
('405', 'PERTANYAAN', 0),
('406', 'SP3', 0),
('407', 'LISTING', 0),
('408', 'SAMPLING', 0),
('500', 'BPH RISET 5', 0),
('501', 'BACK END', 0),
('502', 'DATABASE', 0),
('503', 'FRONT END', 0),
('600', 'BPH RISET 6', 0),
('601', 'BUKU PEDOMAN', 0),
('602', 'KUESIONER', 0),
('603', 'PENGUMPULAN DATA', 0),
('604', 'SAMPLING', 0),
('605', 'ANALISIS', 0),
('606', 'PENGOLAHAN DATA', 0),
('607', 'VISUALISASI DAN DISEMINASI DATA', 0),
('608', 'ANALISIS DATA: ADM AKADEMIK', 0),
('609', 'ANALISIS DATA: DESKRIPTIF', 0),
('610', 'ANALISIS DATA: KEMAHASISWAAN', 0),
('611', 'ANALISIS DATA: PERKULIAHAN', 0),
('612', 'ANALISIS DATA: PERPUSTAKAAN', 0),
('613', 'ANALISIS DATA: POLSTAT STIS', 0),
('614', 'ANALISIS DATA: UMUM', 0),
('615', 'BUKU KM', 0),
('616', 'BUKU LAPORAN', 0),
('617', 'DASHBOARD', 0),
('618', 'VISUALISASI', 0),
('700', 'BPH BIDANG IT', 0),
('701', 'PVD RISET 2', 0),
('702', 'PVD RISET 3', 0),
('703', 'PVD RISET 4', 0),
('704', 'PVD RISET 6', 0),
('705', 'BACK END', 0),
('706', 'DATABASE', 0),
('707', 'FRONT END', 0),
('708', 'ONLINE DISCUSSION', 0),
('709', 'CAWI', 0),
('710', 'DBWS', 0),
('711', 'KUESIONER', 0),
('712', 'WEB MONITORING', 0),
('713', 'WEB SERVER', 0),
('800', 'BPH RISET/BIDANG UMUM', 0),
('801', 'HUMAS EKSTERNAL', 0),
('802', 'HUMAS INTERNAL', 0),
('803', 'ATK DAN SOUVENIR', 0),
('804', 'JAKET PKL', 0),
('805', 'DESAIN GRAFIS', 0),
('806', 'FOTOGRAFI', 0),
('807', 'KEPENULISAN', 0);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_tim`
--

CREATE TABLE `sikoko_tim` (
  `id_tim` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_koor_tim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_tim_pasca_lapangan`
--

CREATE TABLE `sikoko_tim_pasca_lapangan` (
  `nim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_risbid` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_seksi` char(4) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_subseksi` char(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_jab` char(4) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_absen_total`
--
DROP TABLE IF EXISTS `sikoko_absen_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_absen_total`  AS  select `a`.`id_peserta` AS `id_peserta`,`b`.`nama` AS `nama`,round(avg(`a`.`presentase_presensi`),2) AS `presensi` from ((`sikoko_absensi_rapat` `a` left join `sikoko_mahasiswa` `b` on(`b`.`nim` = `a`.`id_peserta`)) left join `sikoko_rapat` `c` on(`c`.`id_rapat` = `a`.`id_rapat`)) where `c`.`waktu_mulai` < current_timestamp() and octet_length(`a`.`id_peserta`) = 7 group by `a`.`id_peserta` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_all_rapat`
--
DROP TABLE IF EXISTS `sikoko_all_rapat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_all_rapat`  AS  select `sikoko_rapat`.`id_rapat` AS `id_rapat`,`sikoko_rapat_seksi`.`id_risbid` AS `id_risbid`,`sikoko_rapat_seksi`.`id_seksi` AS `id_seksi`,`sikoko_rapat_seksi`.`id_subseksi` AS `id_subseksi`,`sikoko_rapat`.`nama_rapat` AS `nama_rapat`,`sikoko_rapat`.`id_jenis_rapat` AS `id_jenis_rapat`,`sikoko_rapat`.`agenda` AS `agenda`,`sikoko_rapat`.`tempat` AS `tempat`,`sikoko_rapat`.`waktu_mulai` AS `waktu_mulai`,`sikoko_rapat`.`waktu_selesai` AS `waktu_selesai`,`sikoko_rapat`.`notulensi` AS `notulensi`,`sikoko_absensi_rapat`.`is_wajib` AS `is_wajib`,`sikoko_absensi_rapat`.`id_peserta` AS `id_peserta`,`sikoko_absensi_rapat`.`waktu_kedatangan` AS `waktu_kedatangan`,`sikoko_absensi_rapat`.`presentase_presensi` AS `presentase_presensi`,`sikoko_seksi`.`nama_seksi` AS `nama_seksi`,`sikoko_riset_bidang`.`nama_riset_bidang` AS `nama_riset_bidang`,`sikoko_subseksi`.`nama_subseksi` AS `nama_subseksi`,`sikoko_jenis_rapat`.`jenis_rapat` AS `jenis_rapat`,case when (current_timestamp() < `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is null) then 'Rapat Belum Dimulai' when (current_timestamp() >= `sikoko_rapat`.`waktu_mulai` and current_timestamp() < `sikoko_rapat`.`waktu_selesai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is null) then 'Rapat Telah Dimulai' when (`sikoko_absensi_rapat`.`waktu_kedatangan` <= `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is not null) then 'Hadir' when (`sikoko_absensi_rapat`.`waktu_kedatangan` > `sikoko_rapat`.`waktu_mulai` and `sikoko_absensi_rapat`.`waktu_kedatangan` is not null) then 'Terlambat' else 'Tidak Hadir' end AS `kehadiran` from ((((((`sikoko_rapat` join `sikoko_rapat_seksi` on(`sikoko_rapat`.`id_rapat` = `sikoko_rapat_seksi`.`id_rapat`)) join `sikoko_absensi_rapat` on(`sikoko_rapat`.`id_rapat` = `sikoko_absensi_rapat`.`id_rapat`)) join `sikoko_jenis_rapat` on(`sikoko_rapat`.`id_jenis_rapat` = `sikoko_jenis_rapat`.`id_jenis_rapat`)) join `sikoko_seksi` on(`sikoko_rapat_seksi`.`id_seksi` = `sikoko_seksi`.`id_seksi`)) join `sikoko_riset_bidang` on(`sikoko_rapat_seksi`.`id_risbid` = `sikoko_riset_bidang`.`id_risbid`)) join `sikoko_subseksi` on(`sikoko_rapat_seksi`.`id_subseksi` = `sikoko_subseksi`.`id_subseksi`)) ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_kehadiran_total`
--
DROP TABLE IF EXISTS `sikoko_kehadiran_total`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_kehadiran_total`  AS  select `b`.`nip` AS `nip`,`b`.`nama` AS `nama`,round(avg(`a`.`presentase_presensi`),2) AS `presensi`,count(`a`.`id_rapat`) AS `total_rapat` from ((`sikoko_absensi_rapat` `a` left join `sikoko_dosen` `b` on(`b`.`email` = `a`.`id_peserta`)) left join `sikoko_rapat` `c` on(`c`.`id_rapat` = `a`.`id_rapat`)) where `c`.`waktu_mulai` >= '2021-03-19' group by `a`.`id_peserta` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_dosen`
--
DROP TABLE IF EXISTS `sikoko_laporan_dosen`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_dosen`  AS  select `a`.`id_rapat` AS `id_rapat`,`a`.`nama_rapat` AS `nama_rapat`,`a`.`waktu_mulai` AS `waktu_mulai`,`a`.`waktu_selesai` AS `waktu_selesai`,`a`.`tempat` AS `tempat`,`c`.`nip` AS `identitas`,`c`.`nama` AS `nama`,case when `b`.`presentase_presensi` > 0 then 'Hadir' else 'Tidak Hadir' end AS `kehadiran` from ((`sikoko_rapat` `a` join `sikoko_absensi_rapat` `b` on(`b`.`id_rapat` = `a`.`id_rapat`)) join `sikoko_dosen` `c` on(`c`.`nip` = `b`.`id_peserta`)) where `a`.`dengan_dosen` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_mhs`
--
DROP TABLE IF EXISTS `sikoko_laporan_mhs`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_mhs`  AS  select `a`.`id_rapat` AS `id_rapat`,`a`.`nama_rapat` AS `nama_rapat`,`a`.`waktu_mulai` AS `waktu_mulai`,`a`.`waktu_selesai` AS `waktu_selesai`,`a`.`tempat` AS `tempat`,`c`.`nim` AS `identitas`,`c`.`nama` AS `nama`,case when `b`.`presentase_presensi` > 0 then 'Hadir' else 'Tidak Hadir' end AS `kehadiran` from ((`sikoko_rapat` `a` join `sikoko_absensi_rapat` `b` on(`b`.`id_rapat` = `a`.`id_rapat`)) join `sikoko_mahasiswa` `c` on(`c`.`nim` = `b`.`id_peserta`)) where `a`.`dengan_dosen` = 1 ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_laporan_rapat`
--
DROP TABLE IF EXISTS `sikoko_laporan_rapat`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_laporan_rapat`  AS  select `sikoko_laporan_dosen`.`id_rapat` AS `id_rapat`,`sikoko_laporan_dosen`.`nama_rapat` AS `nama_rapat`,`sikoko_laporan_dosen`.`waktu_mulai` AS `waktu_mulai`,`sikoko_laporan_dosen`.`waktu_selesai` AS `waktu_selesai`,`sikoko_laporan_dosen`.`tempat` AS `tempat`,`sikoko_laporan_dosen`.`identitas` AS `identitas`,`sikoko_laporan_dosen`.`nama` AS `nama`,`sikoko_laporan_dosen`.`kehadiran` AS `kehadiran` from `sikoko_laporan_dosen` union all select `sikoko_laporan_mhs`.`id_rapat` AS `id_rapat`,`sikoko_laporan_mhs`.`nama_rapat` AS `nama_rapat`,`sikoko_laporan_mhs`.`waktu_mulai` AS `waktu_mulai`,`sikoko_laporan_mhs`.`waktu_selesai` AS `waktu_selesai`,`sikoko_laporan_mhs`.`tempat` AS `tempat`,`sikoko_laporan_mhs`.`identitas` AS `identitas`,`sikoko_laporan_mhs`.`nama` AS `nama`,`sikoko_laporan_mhs`.`kehadiran` AS `kehadiran` from `sikoko_laporan_mhs` order by `id_rapat` desc,`identitas` ;

-- --------------------------------------------------------

--
-- Structure for view `sikoko_notula_kosong`
--
DROP TABLE IF EXISTS `sikoko_notula_kosong`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_notula_kosong`  AS  select `sikoko_mahasiswa`.`nim` AS `nim`,`sikoko_mahasiswa`.`nama` AS `nama`,`sikoko_rapat`.`id_rapat` AS `id_rapat`,`sikoko_rapat`.`nama_rapat` AS `nama_rapat` from (`sikoko_rapat` join `sikoko_mahasiswa` on(`sikoko_rapat`.`id_sekretaris` = `sikoko_mahasiswa`.`nim`)) where `sikoko_rapat`.`notulensi` is null and `sikoko_rapat`.`nama_rapat`  not like 'Piket%' and `sikoko_rapat`.`nama_rapat`  not like '%basecamp%' and `sikoko_rapat`.`nama_rapat`  not like '%kumpul nge-plot%' ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sikoko_absensi_rapat`
--
ALTER TABLE `sikoko_absensi_rapat`
  ADD PRIMARY KEY (`id_rapat`,`id_peserta`) USING BTREE,
  ADD KEY `id_rapat` (`id_rapat`,`id_peserta`) USING BTREE;

--
-- Indexes for table `sikoko_berita`
--
ALTER TABLE `sikoko_berita`
  ADD PRIMARY KEY (`id_berita`),
  ADD KEY `id_berita` (`id_berita`) USING BTREE;

--
-- Indexes for table `sikoko_dosen`
--
ALTER TABLE `sikoko_dosen`
  ADD PRIMARY KEY (`nip`),
  ADD KEY `dosen_risbid_fk` (`id_risbid`),
  ADD KEY `jab_dosen_fk` (`id_jab_dosen`),
  ADD KEY `ruang_fk` (`id_ruang`);

--
-- Indexes for table `sikoko_galeri`
--
ALTER TABLE `sikoko_galeri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikoko_jabatan`
--
ALTER TABLE `sikoko_jabatan`
  ADD PRIMARY KEY (`id_jab`);

--
-- Indexes for table `sikoko_jabatan_dosen`
--
ALTER TABLE `sikoko_jabatan_dosen`
  ADD PRIMARY KEY (`id_jab_dosen`);

--
-- Indexes for table `sikoko_jabatan_lapangan`
--
ALTER TABLE `sikoko_jabatan_lapangan`
  ADD PRIMARY KEY (`id_lap`);

--
-- Indexes for table `sikoko_jenis_rapat`
--
ALTER TABLE `sikoko_jenis_rapat`
  ADD PRIMARY KEY (`id_jenis_rapat`),
  ADD KEY `id_jenis_rapat` (`id_jenis_rapat`);

--
-- Indexes for table `sikoko_knowledge_management`
--
ALTER TABLE `sikoko_knowledge_management`
  ADD PRIMARY KEY (`id_km`);

--
-- Indexes for table `sikoko_limits`
--
ALTER TABLE `sikoko_limits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sikoko_mahasiswa`
--
ALTER TABLE `sikoko_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `sikoko_mahasiswa_ibfk_1` (`id_jab`),
  ADD KEY `sikoko_mahasiswa_ibfk_2` (`id_risbid`),
  ADD KEY `sikoko_mahasiswa_ibfk_3` (`id_seksi`),
  ADD KEY `sikoko_mahasiswa_ibfk_6` (`id_subseksi`);

--
-- Indexes for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  ADD PRIMARY KEY (`id_notula`),
  ADD KEY `ketua_notula_rapat_fk` (`id_ketua`),
  ADD KEY `dosen_notula_rapat_fk` (`id_dosen`),
  ADD KEY `rapat_notula_rapat_fk` (`id_rapat`);

--
-- Indexes for table `sikoko_pengumuman`
--
ALTER TABLE `sikoko_pengumuman`
  ADD PRIMARY KEY (`id_pengumuman`),
  ADD KEY `id_berita` (`id_pengumuman`);

--
-- Indexes for table `sikoko_penilaian`
--
ALTER TABLE `sikoko_penilaian`
  ADD PRIMARY KEY (`id_mahasiswa`),
  ADD KEY `jab_lapangan_fk` (`id_jab_lapangan`),
  ADD KEY `penilaian_dosen_fk` (`id_dosen`),
  ADD KEY `tim_fk` (`id_tim`);

--
-- Indexes for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  ADD PRIMARY KEY (`id_task`),
  ADD KEY `sikoko_progress_ibfk_1` (`id_risbid`) USING BTREE,
  ADD KEY `sikoko_progress_ibfk_2` (`id_seksi`) USING BTREE;

--
-- Indexes for table `sikoko_rapat`
--
ALTER TABLE `sikoko_rapat`
  ADD PRIMARY KEY (`id_rapat`),
  ADD KEY `id_jenis_rapat` (`id_jenis_rapat`);

--
-- Indexes for table `sikoko_rapat_seksi`
--
ALTER TABLE `sikoko_rapat_seksi`
  ADD PRIMARY KEY (`id_rapat`,`id_risbid`,`id_seksi`,`id_subseksi`) USING BTREE,
  ADD KEY `id_risbid` (`id_risbid`),
  ADD KEY `id_seksi` (`id_seksi`),
  ADD KEY `id_subseksi` (`id_subseksi`),
  ADD KEY `id_rapat` (`id_rapat`);

--
-- Indexes for table `sikoko_riset_bidang`
--
ALTER TABLE `sikoko_riset_bidang`
  ADD PRIMARY KEY (`id_risbid`);

--
-- Indexes for table `sikoko_ruang`
--
ALTER TABLE `sikoko_ruang`
  ADD PRIMARY KEY (`id_ruang`);

--
-- Indexes for table `sikoko_seksi`
--
ALTER TABLE `sikoko_seksi`
  ADD PRIMARY KEY (`id_seksi`);

--
-- Indexes for table `sikoko_subseksi`
--
ALTER TABLE `sikoko_subseksi`
  ADD PRIMARY KEY (`id_subseksi`);

--
-- Indexes for table `sikoko_tim`
--
ALTER TABLE `sikoko_tim`
  ADD PRIMARY KEY (`id_tim`),
  ADD KEY `id_koor_tim_fk` (`id_koor_tim`);

--
-- Indexes for table `sikoko_tim_pasca_lapangan`
--
ALTER TABLE `sikoko_tim_pasca_lapangan`
  ADD PRIMARY KEY (`nim`,`id_seksi`,`id_subseksi`),
  ADD KEY `nim_pasca_fk` (`nim`),
  ADD KEY `risbid_pasca_fk` (`id_risbid`),
  ADD KEY `seksi_pasca_fk` (`id_seksi`),
  ADD KEY `subseksi_pasca_fk` (`id_subseksi`),
  ADD KEY `jab_pasca_fk` (`id_jab`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sikoko_galeri`
--
ALTER TABLE `sikoko_galeri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_knowledge_management`
--
ALTER TABLE `sikoko_knowledge_management`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_limits`
--
ALTER TABLE `sikoko_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  MODIFY `id_notula` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1350;

--
-- AUTO_INCREMENT for table `sikoko_pengumuman`
--
ALTER TABLE `sikoko_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `sikoko_absensi_rapat`
--
ALTER TABLE `sikoko_absensi_rapat`
  ADD CONSTRAINT `rapat_fk` FOREIGN KEY (`id_rapat`) REFERENCES `sikoko_rapat` (`id_rapat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_dosen`
--
ALTER TABLE `sikoko_dosen`
  ADD CONSTRAINT `dosen_risbid_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `jab_dosen_fk` FOREIGN KEY (`id_jab_dosen`) REFERENCES `sikoko_jabatan_dosen` (`id_jab_dosen`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ruang_fk` FOREIGN KEY (`id_ruang`) REFERENCES `sikoko_ruang` (`id_ruang`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_mahasiswa`
--
ALTER TABLE `sikoko_mahasiswa`
  ADD CONSTRAINT `jabatan_mahasiswa_fk` FOREIGN KEY (`id_jab`) REFERENCES `sikoko_jabatan` (`id_jab`) ON UPDATE CASCADE,
  ADD CONSTRAINT `risbid_mahasiswa_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON UPDATE CASCADE,
  ADD CONSTRAINT `seksi_mahasiswa_fk` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `subseksi_mahasiswa_fk` FOREIGN KEY (`id_subseksi`) REFERENCES `sikoko_subseksi` (`id_subseksi`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  ADD CONSTRAINT `dosen_notula_rapat_fk` FOREIGN KEY (`id_dosen`) REFERENCES `sikoko_dosen` (`nip`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `ketua_notula_rapat_fk` FOREIGN KEY (`id_ketua`) REFERENCES `sikoko_mahasiswa` (`nim`) ON DELETE SET NULL ON UPDATE CASCADE,
  ADD CONSTRAINT `rapat_notula_rapat_fk` FOREIGN KEY (`id_rapat`) REFERENCES `sikoko_rapat` (`id_rapat`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_penilaian`
--
ALTER TABLE `sikoko_penilaian`
  ADD CONSTRAINT `jab_lapangan_fk` FOREIGN KEY (`id_jab_lapangan`) REFERENCES `sikoko_jabatan_lapangan` (`id_lap`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_dosen_fk` FOREIGN KEY (`id_dosen`) REFERENCES `sikoko_dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_mahasiswa_fk` FOREIGN KEY (`id_mahasiswa`) REFERENCES `sikoko_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tim_fk` FOREIGN KEY (`id_tim`) REFERENCES `sikoko_tim` (`id_tim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  ADD CONSTRAINT `progress_risbid_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `progress_seksi_fk` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_rapat`
--
ALTER TABLE `sikoko_rapat`
  ADD CONSTRAINT `jenis_rapat_fk` FOREIGN KEY (`id_jenis_rapat`) REFERENCES `sikoko_jenis_rapat` (`id_jenis_rapat`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_rapat_seksi`
--
ALTER TABLE `sikoko_rapat_seksi`
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_2` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_3` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `sikoko_rapat_seksi_ibfk_4` FOREIGN KEY (`id_subseksi`) REFERENCES `sikoko_subseksi` (`id_subseksi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_tim`
--
ALTER TABLE `sikoko_tim`
  ADD CONSTRAINT `id_koor_tim_fk` FOREIGN KEY (`id_koor_tim`) REFERENCES `sikoko_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `sikoko_tim_pasca_lapangan`
--
ALTER TABLE `sikoko_tim_pasca_lapangan`
  ADD CONSTRAINT `jab_pasca_fk` FOREIGN KEY (`id_jab`) REFERENCES `sikoko_jabatan` (`id_jab`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `nim_pasca_fk` FOREIGN KEY (`nim`) REFERENCES `sikoko_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `risbid_pasca_fk` FOREIGN KEY (`id_risbid`) REFERENCES `sikoko_riset_bidang` (`id_risbid`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `seksi_pasca_fk` FOREIGN KEY (`id_seksi`) REFERENCES `sikoko_seksi` (`id_seksi`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `subseksi_pasca_fk` FOREIGN KEY (`id_subseksi`) REFERENCES `sikoko_subseksi` (`id_subseksi`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
