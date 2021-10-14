-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2021 at 02:05 PM
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
-- Database: `sikoko_60`
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
-- Table structure for table `sikoko_administrasi`
--

CREATE TABLE `sikoko_administrasi` (
  `id_administrasi` int(11) NOT NULL,
  `keterangan` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_file` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `waktu_upload` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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
  `dibuat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
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
('195709231980031003', NULL, 'Dr. Dedi Walujadi', 'RB04', 'JD12', '0817740245', 'G221', 'walujadi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('195806081986031005', NULL, 'Ir. Suryanto Aloysius, M.M', 'RB02', 'JD11', '08161439159', 'G231', 'suryanto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196008221985011001', NULL, 'Ir. Agus Purwoto, M.Si', 'RB09', 'JD04', '08161961364', 'G141', 'purwoto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196102191983122001', NULL, 'Dr. Budiasih, S.E., M.E.', 'RB03', 'JD12', '081510171610', 'G111', 'budiasih@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196103131986011001', NULL, 'Nurseto Wisnumurti, M.Stat', 'RB09', 'JD05', '085880399194', 'G311', 'nurseto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196105101983122001', NULL, 'Siti Haiyinah W. S.E., M.Si.', 'RB04', 'JD12', '0817888355', 'G122', 'haiyinah.wijaya@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196207221985012001', NULL, 'Ir. Ekaria, M.Si.', 'RB01', 'JD12', '081298661651', 'G122', 'ekaria@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196302081985011001', NULL, 'Drs. Waris Marsisno, M.Stat.', 'RB02', 'JD12', '082111734068', 'G132', 'waris@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196503141988021001', NULL, 'Jeffry Raja Hamonangan Sitorus, M.Si.', 'RB02', 'JD12', '081513121025', 'G221', 'jeffry@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196607191991011001', NULL, 'Yaya Setiadi, SST., M.M.', 'RB06', 'JD12', '081210187943', 'G231', 'setiadi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196703171989012001', NULL, 'Ir. Titik Harsanti, M.Si', 'RB09', 'JD03', '085885135518', 'G141', 'titik@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196703221987032002', NULL, 'Sri Widaryani, M.Si', 'RB08', 'JD12', '081380977767', 'G312', 'sisi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196704251989011002', NULL, 'Dr. Hardius Usman, M.Si', 'RB09', 'JD02', '087883750389', 'G141', 'hardius@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196706121991011001', NULL, 'Dr. Muhammad Dokhi', 'RB01', 'JD12', '081330309440', 'G221', 'dokhi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196709101991121001', NULL, 'Sri Herwanto Dwi Hatmo, S.Si, MA.', 'RB05', 'JD12', '081311130003', 'G241', 'herwanto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196710221990032002', NULL, 'Dr. Erni Tri Astuti, M.Math', 'RB09', 'JD01', '08159407324', 'G141', 'erni@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('196805031991011001', NULL, 'Dr. I Made Arcana', 'RB01', 'JD12', '082138235109', 'G131', 'arcana@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197001121991122001', NULL, 'Dr.Tiodora Hadumaon Siagian, M. Pop. Hum. Res.', 'RB03', 'JD11', '081585464795', 'G122', 'theo@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197001251998032001', NULL, 'Retnaningsih, S.Si., M.E.', 'RB06', 'JD12', '081317700686', 'G231', 'retna@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197002191992112001', NULL, 'Dr. Siti Muchlisoh, M.Si', 'RB09', 'JD08', '08128300234', 'G121', 'sitim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197005131992111001', NULL, 'Bambang Nurcahyo, SE, MM', 'RB09', 'JD06', '08128931384', 'G312', 'nurcahyo@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197006161988121001', NULL, 'Yunarso Anang Sulistiadi, M.Eng., Ph.D', 'RB05', 'JD12', '08111893616', 'G131', 'anang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197007251998032003', NULL, 'Dr. Rita Yuliana S.Si, MSE', 'RB03', 'JD12', '081363428275', 'G231', 'rita@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197009261992111001', NULL, 'Wahyudin, S.Si., M.A.P., M.P.P.', 'RB04', 'JD12', '089521049606', 'G231', 'wahyudin@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197204241994031003', NULL, 'Sukim, SST., M.Si', 'RB06', 'JD11', '08128874783', 'G132', 'sukim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197205261991121001', NULL, 'Firdaus M.B.A.', 'RB04', 'JD12', '085778382820', 'G231', 'firdaus@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197208221994121001', NULL, 'Sofyan Ayatulloh, S.ST', 'RB08', 'JD13', '0881025337948', 'G311', 'sofyan@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197211171995121001', NULL, 'Achmad Prasetyo, S.Si., M.M.', 'RB01', 'JD12', '081213448617', 'G232', 'praze@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197305281995121001', 'agungpu', 'Agung Priyo Utomo, S.Si., M.T.', 'RB06', 'JD12', '08161123675', 'G131', 'agung@stis.ac.id', NULL, NULL, '', '2020-11-20 12:33:38', 'p1AzkB9lyrEWNeS1U0uhLDrsh'),
('197310231995122001', NULL, 'Dr. Ernawati Pasaribu, S.Si, ME', 'RB04', 'JD12', '08161399240', 'G121', 'ernapasaribu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197312272000031002', NULL, 'Dr.Timbang Sirait, M.Si.', 'RB01', 'JD11', '08179719667', 'G122', 'timbang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197412101996121001', NULL, 'Dr. Nasrudin, S.Si, ME', 'RB09', 'JD07', '081219420562', 'G121', 'nasrudin@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197502041996122001', NULL, 'Anugerah Karta Monika, S.Si., M.E.', 'RB03', 'JD12', '0818138751', 'G221', 'ak.monika@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197605052000032003', NULL, 'Lia Yuliana, MT', 'RB06', 'JD12', '08129691386', 'G221', 'lia@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197608092000032001', NULL, 'Neli Agustina, M.Si', 'RB09', 'JD09', '08129644688', 'G121', 'neli@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197701042009022003', NULL, 'Liza Kurnia Sari, S.Si, M.Stat.', 'RB04', 'JD12', '081310734734', 'G221', 'lizakurnia@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197712082000121002', NULL, 'Dr. Mustaqim, SST., SE., M.Si', 'RB06', 'JD12', '085240292817', 'G131', 'mustaqim@bps.go.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197807222000121003', NULL, 'Sugiarto, SST., M.M.', 'RB02', 'JD12', '08197654699', 'G231', 'soegie@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197808022000122001', NULL, 'Atik Maratis, S.E., M.Si.', 'RB01', 'JD12', '085716750580', 'G231', 'atik@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('197907312000122001', NULL, 'Dr. Cucu Sumarni, M.Si', 'RB03', 'JD12', '081573242676', 'G131', 'cucu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198002102002121001', NULL, 'Dr. Rindang Bangun Prasetyo', 'RB01', 'JD12', '082233999801', 'G131', 'rindang@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198006242003121004', NULL, 'Budi Yuniarto, SST., M.Si', 'RB05', 'JD12', '081316655315', 'G132', 'byuniarto@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198007242002121002', NULL, 'Budyanra, SST., M.Stat.', 'RB03', 'JD12', '085375564048', 'G132', 'budy@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198007282003121004', 'madsyair', 'Dr. Achmad Syahrul Choir', 'RB05', 'JD12', '081217220615', 'G131', 'madsyair@stis.ac.id', NULL, NULL, '', '2020-11-20 13:05:56', 'EiQjGdAQYHlZnjIbiO9pUTyQn'),
('198102272004122001', NULL, 'Toza Sathia Utiyarsih, SST., M.Stat.', 'RB04', 'JD12', '08158767624', 'G312', 'toza@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198106042003121001', NULL, 'Robert Kurniawan, SST., M.Si.', 'RB03', 'JD12', '085244174711', 'G231', 'robertk@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198106122003122002', 'nucke', 'Nucke Widowati Kusumo Projo, Ph.D', 'RB04', 'JD11', '087898503251', 'G122', 'nucke@stis.ac.id', NULL, NULL, '', '2020-11-30 12:31:40', 'fo13FMjTKN52fFCNrAAH5eMfq'),
('198110142004122001', NULL, 'Krismanti Tri Wahyuni, M.Si.', 'RB02', 'JD12', '085216465162', 'G221', 'krismanti@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198111272004122001', NULL, 'Dewi Purwanti, M.Si', 'RB03', 'JD12', '08158176780', 'G221', 'dewip@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198202022003121004', NULL, 'Febri Wicaksono, SST., M.Si.', 'RB02', 'JD12', '081261117043', 'G231', 'febri@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198202072004121001', NULL, 'Dr. Azka Ubaidillah', 'RB01', 'JD12', '08129820024', 'G231', 'azka@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198301022007012007', NULL, 'Ari Wahyuni, SST', 'RB09', 'JD10', '082123295081', 'G312', 'arywahyu@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198302182004122001', NULL, 'Efri Diah Utami, SST., M.Stat.', 'RB06', 'JD12', '081341618261', 'G221', 'efridiah@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198306072007012009', NULL, 'Rani Nooraeni, SST., M.Stat.', 'RB02', 'JD12', '085280540046', 'G221', 'raninoor@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198311062010031002', NULL, 'Rifka Rahman Hakim, M.Si', 'RB08', 'JD12', '085891101088', 'G312', 'rifka.hakim@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198405022008012010', NULL, 'Tria Merina, SST', 'RB08', 'JD12', '0895390105809', 'G312', 'tria@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198410152007012001', NULL, 'Siskarosa Ika Oktora, M.Stat', 'RB05', 'JD12', '081355101520', 'G231', 'siskarossa@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198504302009022006', NULL, 'Luci Wulansari S.Si, M.S.E', 'RB08', 'JD12', '081233504001', 'G312', 'luci@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198506012007012003', NULL, 'Aisyah Fitri Yuniasih, M.Si', 'RB09', 'JD09', '081379198540', 'G131', 'aisyah.fy@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198507122011012006', NULL, 'Risni Julaeni Yuhan S.P., M.Stat.', 'RB06', 'JD12', '081284050686', 'G132', 'risnij@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198512122008011004', 'faridr', 'Farid Ridho, SST., M.T.', 'RB07', 'JD12', '085282012357', 'G241', 'faridr@stis.ac.id', NULL, NULL, '', '2020-11-20 15:02:39', '6RUqrHpdJvWaYJVcASlHZaxfT'),
('198512222009021002', 'ariewahyu', 'Dr. Eng. Arie Wahyu Wijayanto', 'RB04', 'JD12', '085890363680', 'G131', 'ariewahyu@stis.ac.id', NULL, NULL, '', '2020-11-20 13:12:08', '6OmJY1x1Q5uRhgFwEFxWV19qV'),
('198601202008011002', 'ibnusan', 'Ibnu Santoso, SST., M.T.', 'RB07', 'JD13', '081341829968', 'G241', 'ibnu@stis.ac.id', NULL, NULL, '', '2020-11-20 14:23:24', 'gaL7u0GYJOZ5X65J9WtkkQyp5'),
('198606022009022007', NULL, 'Ika Yuni Wulansari, SST,M.Stat', 'RB02', 'JD12', '081218149786', 'G131', 'ikayuni@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198704142010121001', NULL, 'Takdir, SST,MT', 'RB01', 'JD12', '081389738894', 'G131', 'takdir@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198708262010121001', NULL, 'Dwy Bagus Cahyono, SST, MT', 'RB06', 'JD12', '08124925919', 'G311', 'dwybagus@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198803032010122004', NULL, 'Rini Silvi, SST, M.Stat', 'RB06', 'JD12', '089631462161', 'G312', 'rinisilvi@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198809142010122004', NULL, 'Rina Hardiyanti, SST', 'RB09', 'JD10', '082114005339', 'G312', 'rinaha@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('198810242010122001', 'mariyahsmile', 'Siti Mariyah, SST., MT', 'RB05', 'JD11', '081316601741', 'G122', 'sitimariyah@stis.ac.id', NULL, NULL, '', '2020-11-30 07:28:17', 'A2lmyJafvBhEFa2OVK2xo8pRz'),
('198811292012112001', NULL, 'Nofita Istiana, M.Si', 'RB03', 'JD12', '085640756067', 'G311', 'nofita@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199001102012112001', NULL, 'Nori Wilantika SST, M.T.I', 'RB05', 'JD12', '089508121345', 'G231', 'wilantika@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199004052012112001', 'lutfirm', 'Lutfi Rahmatuti Maghfiroh, MT', 'RB07', 'JD12', '081381703898', 'G231', 'lutfirm@stis.ac.id', NULL, NULL, '', '2020-11-20 12:38:29', 'PRWY7ffPlkaj04cVEPPQGsdTY'),
('199007152013112000', NULL, 'Winih Budiarti, SST., M.Stat.', 'RB06', 'JD12', '081314136759', 'G221', 'winih@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199510142019011001', NULL, 'Isfan Nur Fauzi S.Tr.Stat', 'RB03', 'JD12', '085643343439', 'G241', 'isfan@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199606282019011001', NULL, 'Muhammad Luqman S.Tr.Stat', 'RB04', 'JD12', '082311822575', 'G241', 'luqman@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199612212019011001', NULL, 'Geri Yesa Ermawan S.Tr.Stat.', 'RB02', 'JD12', '085655977475', 'G312', 'geri@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199704222019122001', NULL, 'Claudya Muna Asmarani, S.Tr. Stat', 'RB08', 'JD12', '0895331060227', 'G311', 'claudyamuna@stis.ac.id', NULL, NULL, '', '2018-11-11 00:00:00', NULL),
('199711232019011001', 'rahadi', 'Rahadi Jalu Yoga Utama S.Tr.Stat.', 'RB07', 'JD12', '083865978213', 'G241', 'rahadi@stis.ac.id', NULL, 'cc63ab28fd0696137aefc0061988f586.png', '', '2020-11-23 21:41:29', 'uyAUxmH9BCxM1FPwydqiczhDp');

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
('JD05', 'Penanggung Jawav Administrasi Akademik'),
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
('L11', 'PCL');

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
`id_peserta` varchar(50)
,`nama` varchar(50)
,`presensi` decimal(13,2)
);

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_keys`
--

CREATE TABLE `sikoko_keys` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `key` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level` int(2) NOT NULL,
  `ignore_limits` tinyint(1) NOT NULL DEFAULT 0,
  `is_private_key` tinyint(1) NOT NULL DEFAULT 0,
  `ip_addresses` mediumtext COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `date_created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

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

--
-- Dumping data for table `sikoko_limits`
--

INSERT INTO `sikoko_limits` (`id`, `uri`, `count`, `hour_started`, `api_key`) VALUES
(1, 'uri:api/mahasiswa/index:get', 1, 1580567697, 'apahayoo');

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
('111709511', 'AINAYYA HILWAH SALSABILA N. LIKUR', '3D31', 'DIII STATISTIKA', '082340649024', 'Jl Penghulu No.16 A Otista Raya (Bonasut), Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur ', '111709511@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-29 03:33:16', 1, '4RkpREyEyk3mCIsBUdHUqscAH'),
('111710027', 'TADJIE RIFKY ARDANI', '3D32', 'DIII STATISTIKA', '087774142374', 'Perumnas Blok I No 9-10, Duriangkang, Sei Beduk, Kota Batam', '111710027@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-13 01:57:12', 1, NULL),
('111710070', 'YOHANES INDRA KUMANIRENG', '3D32', 'DIII STATISTIKA', '081246629962', 'Jl. Otto Iskandardinata No.58, RT 001/RW 015, Kelurahan Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta.', '111710070@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-30 02:26:26', 1, 'cJzAr2wmMEXf5GPuO8M46vgvP'),
('111810095', 'ADE SARI', '3D31', 'DIII STATISTIKA', '081271831805', 'Jl. Otista Raya  Gg. Mangga No. 31, RT. 04 RW.03, Kel. Bidara Cina  Kec. Jatinegara Kota Jakarta Timur 13330', '111810095@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-22 12:47:41', 1, '4c6HB6gbJ20dIsD75DkmK2jF9'),
('111810107', 'AFIF FATHUR REZA', '3D31', 'DIII STATISTIKA', '082187411059', 'Jl. Ayub No. 6A, RT. 15/RW. 08, Kp. Melayu, Jaktim', '111810107@stis.ac.id', 'RB06', 'S004', '600', 'J001', NULL, NULL, '2020-11-29 03:49:13', 1, 'aFH2QmQUEK0ZpOt9ghlvWIsJT'),
('111810132', 'AKMAL MAULANA AR.RIJAL', '3D32', 'DIII STATISTIKA', '085333245420', 'Jl. Ottista II No. 24', '111810132@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-30 10:43:46', 1, 'grAwFKPPRUcM8YUVXOHVfJcpD'),
('111810135', 'ALBERT SIRAY', '3D31', 'DIII STATISTIKA', '0811416944', 'Jl. Asem, Gg. Mangga No.1', '111810135@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 11:05:59', 1, 'G4ZJkCgnlpZTWAvJcYXedFJYn'),
('111810141', 'ALFIANO PETRUS SERAN NAHAK', '3D31', 'DIII STATISTIKA', '081338642505', 'Jl. Asem Gang Mangga No 11, RT/RW 03/03, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur, Jakarta', '111810141@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 10:42:26', 1, '2P7gS2URlFZVHnBV6yKCPMNv0'),
('111810146', 'ALI IMRAN MANSYUR', '3D31', 'DIII STATISTIKA', '083139635421', 'Jl. Sensus 2/ No.26/ RT.10/ RW.04/Kelurahan Bidara Cina', '111810146@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-28 00:51:42', 1, 'lJMRpRJ54Lf714sUpYG7xuK69'),
('111810160', 'AMALIA FITRIYANI', '3D32', 'DIII STATISTIKA', '085241731635', 'Jl. Sensus I No.2, RT 001 RW 04, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur , Kode Pos 13330', '111810160@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 01:42:32', 1, 'XaJv2T3J7OfiippksonToo6xp'),
('111810162', 'AMRI REZALDI', '3D32', 'DIII STATISTIKA', '089503212362', 'Gang Haji Dawel Atas No. 19, Jl. Otista II, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur, Jakarta, Indonesia', '111810162@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-30 05:34:01', 1, 'rXas1RHDJFhFqbQigNSTlzxCa'),
('111810164', 'ANANDA AYU PRATIWI MAHU', '3D32', 'DIII STATISTIKA', '082238054699', 'Jl Haji Yahya No 51D RT 012 RW 010 Kel Bidara Cina Kec Jatinegara Jakarta Timur DKI Jakarta 13330', '111810164@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, 'bf3bbe6c20f643e521dacb0e9aedcbd6.jpg', '2020-11-30 10:07:42', 1, 'OSP3MPmxc56XGyeIgdWyrdLhU'),
('111810166', 'ANDI NUR FAUZIYAH SYAFRIANY', '3D32', 'DIII STATISTIKA', '082343621588', 'Kost Putri Safira Jln. Sensus 2 No.09A, RT/RW 002/004, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta 13330', '111810166@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-30 16:31:08', 1, 'BbSX29uRKqU8n9MOFn0R78U9k'),
('111810173', 'ANINDYA TYAS WANDAWEKA', '3D31', 'DIII STATISTIKA', '0895414543395', 'Jl. Otista II, No. 4, RT 007, RW 09, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '111810173@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 09:05:28', 1, 'fjzN6aNWYXxV1sBJuU44V95o2'),
('111810174', 'ANIS ATHIRAH', '3D31', 'DIII STATISTIKA', '081918990529', 'Jl. Kebun Sayur 1 No.12 RT.06 RW.15 Kelurahan Bidara Cina', '111810174@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-30 12:44:03', 1, 'JZOpV02l6mDl2Z22b89GiK075'),
('111810197', 'ARYODENI RAIMIN AUGUSTYN', '3D32', 'DIII STATISTIKA', '081250627844', 'Jl. Asem,Gang Mangga No 11', '111810197@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 07:23:01', 1, '2k70BFTze9dQsCtFI8PnCgq6t'),
('111810205', 'AULIA RIZKIKA SYARI', '3D32', 'DIII STATISTIKA', '085246309689', 'Jl. Otista 2, Gang H. Misnen No.11', '111810205@stis.ac.id', 'RB06', 'S013', '603', 'J004', NULL, NULL, '2020-11-28 05:36:08', 1, 'oPQjmlNLvY3Clb4RWArReOTey'),
('111810223', 'CHOIRUL IKHSAN', '3D31', 'DIII STATISTIKA', '082238978408', 'Gg Sensus 1 No 21 B', '111810223@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-23 10:29:51', 1, 'nWdKjuNDuCaPkfduVMYgNoSkG'),
('111810229', 'DANIEL BUTAR BUTAR', '3D32', 'DIII STATISTIKA', '092139597337', 'Jl. Haji Hasbi I, No.14, RT.010, RW.09, Jatinegara, Jakarta Timur', '111810229@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-28 12:47:45', 1, 'UAFBR23kN28RxMh7w6MgcSS5D'),
('111810231', 'DANIEL M V MONE', '3D32', 'DIII STATISTIKA', '082144750497', 'Jln Sesawi, Oepura, Maulafa, Kota Kupang, NTT', '111810231@stis.ac.id', 'RB06', 'S013', '604', 'J003', NULL, NULL, '2020-11-30 07:31:06', 1, 'x8RyBV5VV6A7NCM1XExgQgbIn'),
('111810241', 'DHIKA AULIAH YUSRAN', '3D31', 'DIII STATISTIKA', '085292107979', 'Jl Saabun', '111810241@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 01:07:02', 1, 'Db2cSP1qa9MJuiSMUFXSpwDMx'),
('111810258', 'EKA ARINI SANGKUATI', '3D32', 'DIII STATISTIKA', '087854639759', 'Jl. Otista Raya, Gang Solihun RT 15/RW 08 No. 10, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur', '111810258@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-28 08:50:55', 1, 'EGZisTCKXkvSAAaz0mpUkxnhL'),
('111810267', 'EMNUR RAHMAT', '3D31', 'DIII STATISTIKA', '081770893346', 'Jl. Otista 2 No.25 RT 07 RW 09, Jatinegara, Jakarta Timur', '111810267@stis.ac.id', 'RB08', 'S006', '802', 'J003', NULL, NULL, '2020-11-30 05:44:14', 1, '0y1wbXUv3e8nj9HuzJl9ETOoe'),
('111810275', 'ERWIN MUSPIAN HAKIKI', '3D32', 'DIII STATISTIKA', '085936735835', 'Jln Kb Nanas Selatan 2 RT 3 RW 8 No 35 D Cipinang Cepedak Jakarta Timur ', '111810275@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-29 01:56:13', 1, '3gj3hB78z6XGTbZOEQTAq66iT'),
('111810301', 'FAURGAN HIDAYAT', '3D31', 'DIII STATISTIKA', '085237571542', 'Jln. Masjid No. 23', '111810301@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 10:03:06', 1, '8FSAj2UsLha38UgDvaSVoPOxX'),
('111810304', 'FERDIANSYAH B', '3D31', 'DIII STATISTIKA', '085240456996', 'Sinjai', '111810304@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-30 11:18:42', 1, 'SaBIhJteiIR88kXWwXkZOlKXw'),
('111810309', 'FITRAH HANIFA', '3D31', 'DIII STATISTIKA', '081354057677', 'Nania, Ambon, Maluku', '111810309@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-30 02:59:20', 1, 'CFivXa8nGnkDCh4MrR5U4Qd3Z'),
('111810325', 'HASBULLAH HAKIM', '3D32', 'DIII STATISTIKA', '081342045703', 'Jl. Kebon Sayur 1 No. 25', '111810325@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 13:14:35', 1, '0JfePqnsptZXNk2mxbakPBklm'),
('111810370', 'KARINA RIZKI NOVITA', '3D32', 'DIII STATISTIKA', '085342651202', 'Jl. Syech Yusuf. RW 001 Kelurahan Tuwung, Kecamatan Barru, Kabupaten Barru, Sulawesi Selatan', '111810370@stis.ac.id', 'RB06', 'S009', '001', 'J004', NULL, NULL, '2020-11-29 09:36:39', 1, 'vRq3JQCltLZbisTr01s8Nz0Cb'),
('111810383', 'LALU MUHAMMAD ALI FAHMI', '3D32', 'DIII STATISTIKA', '087864804681', 'Jl. Swasembada No. 121 Karang Pule', '111810383@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 00:28:48', 1, '2RHGEFy9Po1X6pcZ3nOLB9srh'),
('111810389', 'LEONITA AMARA HUSNA METANDA', '3D32', 'DIII STATISTIKA', '082298500884', 'Komplek Kehutanan Jl. Tatawana 4 No 132, Banjarbaru, Kalimantan Selatan', '111810389@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-22 07:05:44', 1, 'fkEs5B6d4gwpgeQubSDrHs0Ye'),
('111810406', 'M. CHUMAIDI RAHMAN', '3D31', 'DIII STATISTIKA', '087763309684', 'Jl. Otista II No.24, RT.004, RW.009, Kel.Bidaracina, Kec.Jatinegara, Jakarta Timur ', '111810406@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-28 12:36:43', 1, 'ZoZv0vOdZsGGy6kWCL4myjLwp'),
('111810432', 'MUH. HERI SAHAR', '3D32', 'DIII STATISTIKA', '08115234943', 'Jl. Bonasut 2 No. 23 RT 05/RW 07', '111810432@stis.ac.id', 'RB06', 'S013', '001', 'J003', NULL, NULL, '2020-11-29 16:44:19', 1, 'Vrv6iLsBY4c8p6vDj29bfdsiJ'),
('111810433', 'MUH. IKHWAN SETIAWAN', '3D31', 'DIII STATISTIKA', '089661903266', 'Jl. Merdeka, Mangempang, Kec. Barru, Kab. Barru', '111810433@stis.ac.id', 'RB06', 'S014', '607', 'J006', NULL, NULL, '2020-11-27 06:11:21', 1, 'j3kCYT9ZKVTvSzkxqTmJB9rkr'),
('111810434', 'MUH. REZA AGUNG WIRAWAN', '3D32', 'DIII STATISTIKA', '085282076615', 'Jl. Kebon Nanas Utara 2', '111810434@stis.ac.id', 'RB06', 'S013', '604', 'J006', NULL, NULL, '2020-11-30 09:11:25', 1, 'FpPCLwFI28LEXsZr1SxqeKLnP'),
('111810436', 'MUH. SANDRA YANTON', '3D31', 'DIII STATISTIKA', '081240901056', 'Jl. Sensus 3', '111810436@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-30 12:26:44', 1, 'IPGal9puSYZoIrELHqyXXNFrt'),
('111810437', 'MUH. TAUFIQ MUKHTAR', '3D31', 'DIII STATISTIKA', '0895803947981', 'Jl. Kebon Nanas Utara 2 No. 23', '111810437@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-27 19:58:32', 1, 'tXUBDeWPLsSAc7S4bUN0ZYlXp'),
('111810440', 'MUHAMAD FAHMI RAIS', '3D32', 'DIII STATISTIKA', '082399753534', 'Jl. Penggalang IV No. 25 RT 008 RW 010, Kel. Palmeriam, Kec. Matraman, Kota Jakarta Timur, DKI Jakarta 13140', '111810440@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-30 03:29:06', 1, 'Ym4DNX8SKgnwvGov5GMKECX1l'),
('111810448', 'MUHAMMAD ARY ARZAKY', '3D31', 'DIII STATISTIKA', '087865952569', 'Jl. Otista Ii, Bonasut, No. 24 RT 4 RW 9, Kel. Bidaracina, Kec. Jatinegara', '111810448@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-27 16:13:31', 1, 'VpE4jmdCwIpND0SdDyrpk1t1n'),
('111810449', 'MUHAMMAD BENNI BARAKATI', '3D32', 'DIII STATISTIKA', '085219328262', 'Gg Sholihun No. 13D, Kel. Bidaracina, Jatinegara, Jakarta Timur', '111810449@stis.ac.id', 'RB06', 'S012', '602', 'J003', NULL, NULL, '2020-11-30 11:04:32', 1, 'gtomrWe7L8y6yXIX4YfA5EKHW'),
('111810457', 'MUHAMMAD HIDAYAT', '3D32', 'DIII STATISTIKA', '083897341658', 'Jl. Kebon Sayur 1, No. 20, RT. 05, RW. 15, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur, DKI Jakarta', '111810457@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-30 05:27:26', 1, 'chNLyBDwNeiEqfsdM6lqoJCrh'),
('111810472', 'MUHAMMAD RENALDY AZIS', '3D31', 'DIII STATISTIKA', '082291886261', 'Jl. Kebon Sayur 1 No. 11', '111810472@stis.ac.id', 'RB08', 'S006', '001', 'J003', NULL, NULL, '2020-11-30 12:45:34', 1, 'UP0qFKVpPWvuCCs9D5Htbppo4'),
('111810474', 'MUHAMMAD RIFQI WARDANA', '3D32', 'DIII STATISTIKA', '085241351999', 'Jl. Sungai Tanamea Lorong 1 No. 4', '111810474@stis.ac.id', 'RB06', 'S012', '001', 'J003', NULL, NULL, '2020-11-30 10:59:22', 1, 'tkSHbMC6qJzTLfYzmubtIkVWd'),
('111810476', 'MUHAMMAD RYZKY', '3D31', 'DIII STATISTIKA', '083150533760', 'Guntung Manggis, Banjarbaru Kalimantan Selatan', '111810476@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 11:05:11', 1, '960gJPxjMah4RCNX3qtIdYwVp'),
('111810494', 'NAJMA HAYANI', '3D31', 'DIII STATISTIKA', '082155645223', 'Jl. Otista Raya Gg. Mangga No.15 RT. 001 RW. 003', '111810494@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-29 09:34:33', 1, 'bsRVQDJRtSDgNnSqALcq14EcN'),
('111810515', 'NUR ZAHRA SAHARIA', '3D31', 'DIII STATISTIKA', '0853411166666', 'Jl. Masjid', '111810515@stis.ac.id', 'RB06', 'S013', '001', 'J004', NULL, NULL, '2020-11-28 04:10:54', 1, 'KQsFuvAY2bkBdtDxvvHUxzsjs'),
('111810516', 'NURDIANA SAFITRI', '3D31', 'DIII STATISTIKA', '087849522302', 'Jl. Sensus II No.16 RT 07 RW 04, Bidaracina, Jatinegara, Jakarta Timur', '111810516@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-27 07:35:07', 1, '82hHMW3NZttZg33kTJF16sKvV'),
('111810518', 'NURUL AFRIANI', '3D32', 'DIII STATISTIKA', '082210509239', 'Jl. Sensus I No.2, RT 001 RW 04, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '111810518@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-30 14:09:58', 1, 's6gjmhWVCOGYkeLbJOQuGo2pt'),
('111810521', 'NURUL HIKMAH', '3D32', 'DIII STATISTIKA', '082292183514', 'Jl. Saleh Abud No. 19', '111810521@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-29 10:54:52', 1, 'IWELxQMVYwv0cZRpHv8TNW2kf'),
('111810525', 'ONESIMUS JANDRI SITOHANG', '3D32', 'DIII STATISTIKA', '082153833228', 'Jl. MT Haryono Nomor 40, Sintang, Kalimantan Barat', '111810525@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-23 22:35:02', 1, 'NNlNV005oMTbfGJOAfSEBe6ni'),
('111810526', 'ONNY FATIMAH', '3D31', 'DIII STATISTIKA', '082359586778', 'Jl. Sensus 2B No 16 RT 08 RW 04, Bidara Cina', '111810526@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 10:54:49', 1, 'SROPYOuLRbRNyfwESxtTog0SA'),
('111810541', 'RAFLY IRSANDI SAPUTRA', '3D31', 'DIII STATISTIKA', '082292316096', 'Jln. Kebon Nanas Utara 2 no.23 rt. 05/rw.07, DKI Jakarta, Jakarta Timur, Jatinegara', '111810541@stis.ac.id', 'RB06', 'S013', '603', 'J006', NULL, NULL, '2020-11-30 04:00:22', 1, 'Y4zgeCbkyZeseDgJJGTsF5w2x'),
('111810543', 'RAHMADATHUL WISDAWATI', '3D32', 'DIII STATISTIKA', '083183242109', 'Jl. Otista Raya, Gg Solihun, RT/RW 15/08, No. 10, Kelurahan Bidaracina, Kecamatan Jatinegara', '111810543@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-28 16:33:10', 1, 'bPcaPlK6ePmNDxKN5uMWBipUq'),
('111810546', 'RAJA MUHAMMAD ZHICKRI PRATAMA', '3D32', 'DIII STATISTIKA', '081363056211', 'Jl. Otista II, Bonasut, Nomor 25A RT6/RW9, Bidara Cina, Jatinegara', '111810546@stis.ac.id', 'RB06', 'S014', '001', 'J003', NULL, NULL, '2020-11-30 09:21:20', 1, 'LIWgANPRVMi5KcqGCDKZV2E2A'),
('111810549', 'RAMIDA ADE SAPRIYATMI', '3D31', 'DIII STATISTIKA', '083831341443', 'Jl. Saleh Abud No 19 RT 014/RW 008 Jatinegara', '111810549@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-20 06:47:00', 1, '2fWJ4CfTMUxriLEkSUwhStiOK'),
('111810565', 'RIFALDI', '3D31', 'DIII STATISTIKA', '081348170946', 'Dusun Beliung, Desa Pusaka, Kecamatan Tebas, Kabupaten Sambas, Kalimantan Barat', '111810565@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-30 12:47:04', 1, 'g9Jm5hNwpr62yFD91cferM5gC'),
('111810574', 'RISKA', '3D32', 'DIII STATISTIKA', '081775123499', 'Jl. Labuhan Lombok, Desa Batuyang RT/RW 001/001, Kecamatan Pringgabaya, Lombok Timur. (Dibelakang Puskeswan Batuyang)', '111810574@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 13:44:43', 1, 'syTzecC4WDKywAWNwPTmOiRWs'),
('111810575', 'RISMA DILLAH', '3D31', 'DIII STATISTIKA', '089691593644', 'Jl. Gg. H. Misnen RT 005 RW 09 No. 20, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur. Kode Pos : 13330', '111810575@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-30 03:50:03', 1, 'QMVehy4B9Y158eUWsmEDVhrwa'),
('111810595', 'SALSABILA MUNA SHOBIHA', '3D32', 'DIII STATISTIKA', '085820623430', 'Jl. Merak No. 17 RT/RW 016/008 Kel. Sampit, Kec. Delta Pawan, Kab. Ketapang, Kalbar', '111810595@stis.ac.id', 'RB06', 'S009', '001', 'J003', NULL, NULL, '2020-11-28 06:47:35', 1, '72RDyMqUAnmne76ylwY058ks2'),
('111810603', 'SHAFIRA CAESARI JULIANITA', '3D32', 'DIII STATISTIKA', '085242800440', 'Lorong Gipsy Koloncucu RT 016 RW 06 No 715 (Samping Pangkalan Kayu) Kel.Toboleu Kec.Kota Ternate Utara ,Kota Ternate-Provinsi Maluku Utara', '111810603@stis.ac.id', 'RB06', 'S012', '001', 'J004', NULL, 'd35b6a94d28b80704aae76e80533baa3.jpg', '2020-11-30 16:30:47', 1, 'HuK3za0md1lxj8xOHNKXg0yoq'),
('111810604', 'SHELA YULFIA HADIST', '3D31', 'DIII STATISTIKA', '081266817895', 'Jl. Otista 3 No. 44A', '111810604@stis.ac.id', 'RB06', 'S004', '600', 'J004', NULL, NULL, '2020-11-30 09:28:08', 1, 'INdkCnhMIixEZ4SP8YgF5knna'),
('111810616', 'SUCI RAMADHANTY', '3D32', 'DIII STATISTIKA', '087736979234', 'Jl. Sensus II, RT 007 RW 004, No. Rumah 16, Kelurahan Bidara Cina, Jatinegara, Jakarta Timur', '111810616@stis.ac.id', 'RB06', 'S014', '606', 'J006', NULL, NULL, '2020-11-30 11:06:53', 1, 'gvUmeIwZSZAqPnCI0SjdcZpkY'),
('111810620', 'TAMIEM DAIKY', '3D32', 'DIII STATISTIKA', '0895394482047', 'Jl. Robusta Raya No.31, RT.2/RW.7, Pd. Kopi, Kec. Duren Sawit, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13460', '111810620@stis.ac.id', 'RB06', 'S012', '601', 'J006', NULL, NULL, '2020-11-27 08:39:38', 1, '2u3WHvmES8r8QHMaC8f9AT63Z'),
('111810625', 'THEOVILUS SENFIARDUS SAMU', '3D31', 'DIII STATISTIKA', '081231079673', 'Gang Mangga', '111810625@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-24 02:48:15', 1, '3omA8j6NPjxSguqOBLahGyqyJ'),
('111810627', 'TIARA ARIRADANA', '3D31', 'DIII STATISTIKA', '082154595242', 'Jl. H. Yahya No.58 RT 14 RW 10, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '111810627@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-22 17:26:31', 1, 'XXgN5PdjkQD1zTO0AQ8g9n3Og'),
('111810631', 'TIWI NURSAFITRI', '3D31', 'DIII STATISTIKA', '087757770917', 'Jl.Penghulu No.16A Bonasut', '111810631@stis.ac.id', 'RB06', 'S014', '001', 'J004', NULL, NULL, '2020-11-30 14:01:46', 1, 'TGZ60eaug7JFW0k0f9KcFZpvx'),
('111810638', 'UMMU KALTSUM', '3D32', 'DIII STATISTIKA', '085338292302', 'Jl. Pasar Timbul No. 234 RT 19 RW 16, Kapuk, Cengkareng, Jakarta Barat. Kode Pos: 11720', '111810638@stis.ac.id', 'RB06', 'S012', '601', 'J003', NULL, NULL, '2020-11-30 16:46:37', 1, 'fg3w8fkyzxmzNkEIoffMJJRr4'),
('111810639', 'URAY ALDI RIVALDI', '3D31', 'DIII STATISTIKA', '089649338849', 'Jl. Kebon Nanas Selatan 2 No. 57, Cipinang Cempedak, Jatinegara.', '111810639@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-27 07:33:58', 1, 'U3gfChiHrA0G8X57uv9cdyJEm'),
('111810644', 'VIKI TRIA ZIANRINI', '3D31', 'DIII STATISTIKA', '081270613797', 'Jl. Kebon Nanas Selatan 3 No 47', '111810644@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-30 13:39:50', 1, '9u8tUQgaNbg2mTq5SEkIChHFq'),
('111810645', 'VINANDA SONYA PERMATASARI', '3D32', 'DIII STATISTIKA', '089698254341', 'Jl. Parit Bugis Gg Persada, Kuburaya, Kalimantan Barat', '111810645@stis.ac.id', 'RB06', 'S004', '600', 'J005', NULL, NULL, '2020-11-30 09:13:48', 1, 'tJTP7guAKPO3JkDEIXWGD8j3s'),
('111810649', 'VIVIN ADRI YANTI LIMBONG', '3D31', 'DIII STATISTIKA', '081315220291', 'Kecamatan Sungai Melayu Rayak, Kab Ketapang, Kalimantan Barat', '111810649@stis.ac.id', 'RB06', 'S009', '605', 'J006', NULL, NULL, '2020-11-24 11:55:32', 1, 'D9umeaJHP431LAMYmEPbyWcau'),
('111810654', 'WILHELMINA MARIA ROSA MYSTICA SAIK', '3D32', 'DIII STATISTIKA', '085238770409', 'Jl. Kebon Sayur, RT 001, RW 015, No. 23, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '111810654@stis.ac.id', 'RB06', 'S014', '607', 'J006', NULL, NULL, '2020-11-30 12:02:51', 1, 'G7GnHVkx74W0RwUvhhiHwcyh0'),
('111810661', 'YOANITA DWI LESTARI', '3D31', 'DIII STATISTIKA', '085347932016', 'Jl. Purna Bakti, Kota Tarakan, Kaltara', '111810661@stis.ac.id', 'RB06', 'S012', '602', 'J006', NULL, NULL, '2020-11-30 09:41:55', 1, 'i3MCVEWeEntD6bKUl0tVBPUue'),
('211709915', 'NUR HAYATI BOTUTIHE', '3SE1', 'DIV STATISTIKA', '081383191694', '-', '211709915@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-30 12:30:30', 1, '9BPHWG9nQrqYm1fUqenQ1FkYQ'),
('211709938', 'PISCHAL JUANDRA', '3SK2', 'DIV STATISTIKA', '081270891608', 'Jl. Bonsay 1 No 29', '211709938@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-28 03:25:10', 1, '4BZq6O5XXO9EkFT2iHD3WnT2p'),
('211709953', 'RAFLI ANDERSON LAPEBESI', '3SK3', 'DIV STATISTIKA', '082247819383', 'Jl. Setia No.4, RT/RW:005/02, Kampung Melayu, Jatinegara, Jakarta Timur', '211709953@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-28 12:31:52', 1, 'jOGlf5o5H80sdLofKVOLYFuTq'),
('211709988', 'ROSITA PUJASARI', '3SE1', 'DIV STATISTIKA', '081277262778', 'Jl. Kebun Sayur I No.5 ', '211709988@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-29 12:02:35', 1, 'dAkUsCtNVFBPdTVCUjBuaCu3P'),
('211810091', 'ABDURRAHMAN', '3SE1', 'DIV STATISTIKA', '081318531426', 'Jl. Ayub No 6A, Bidara Cina, Kampung Melayu, Jakarta Timur', '211810091@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-30 08:27:35', 1, 'jXQT8Sxf3hZVjtXkgloQ8nObx'),
('211810092', 'ABYAN AZISWAN', '3SK4', 'DIV STATISTIKA', '082280835053', 'Jl. Kebon Nanas Selatan II', '211810092@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-28 07:56:15', 1, 'HcX4qfpNPHaofBtaITPYqjWze'),
('211810093', 'ACH MUKHLIS SOLLAHUDDIN', '3SE1', 'DIV STATISTIKA', '083851765861', 'Jl. Otista II, Gang H. Dawel Atas No.19 RT. 04 RW.09, Kel, Rt.4/Rw.9, Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810093@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, '79297af227b9ea59c243b2cf0cdb37ea.jpg', '2020-11-30 12:33:35', 1, 'PKbZYMshVBsVJ7PJRVCWg8fvz'),
('211810094', 'ADAM NUR WAHYU WIBOWO', '3SE5', 'DIV STATISTIKA', '089602397287', 'Gg. Abdurrahman, Bidara Cina, Jatinegara, Jakarta Timur', '211810094@stis.ac.id', 'RB04', 'S012', '406', 'J003', NULL, NULL, '2020-11-29 22:31:20', 1, '45QTiRs4zv4Nhs8JFBqYRDcAL'),
('211810096', 'ADELLA SITI NURSALIYAWATI', '3SE2', 'DIV STATISTIKA', '087828118592', '-', '211810096@stis.ac.id', 'RB03', 'S013', '001', 'J004', NULL, NULL, '2020-11-30 07:01:12', 1, '0cKom4ah2tpOpGfam7Tqyplec'),
('211810098', 'ADI SAPUTRA MARBUN', '3SE2', 'DIV STATISTIKA', '089660111050', 'Jln. Jendral Sudirman No. 354, Kecamatan Tugumulyo, Kabupaten Musi Rawas', '211810098@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-28 01:10:09', 1, 'eNW7kdpFyYMgmPUMF9J5ltLa6'),
('211810099', 'ADIMA LU\'LU\'ATUN NABILA MUNAWARDANI', '3SK3', 'DIV STATISTIKA', '082298763604', 'Jl. Kebon Nanas Selatan I No.14, RT.13/RW.8, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810099@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-28 00:41:49', 1, 'v0gYJ3wCinziCtweDXCYiNOr5'),
('211810100', 'ADINDA IZZATA FIKRAT', '3SK5', 'DIV STATISTIKA', '085266069444', 'Gang Sholihun No 10 RT 15 RW 08 Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '211810100@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-29 13:00:20', 1, 'BSIpNVQy3P8TXoqOqQTBnvXP7'),
('211810101', 'ADINDA PUTRI', '3SK1', 'DIV STATISTIKA', '087876831338', 'Jl. Kebon Nanas Utara 1 No 15B RT003/RW007, Cipinang Cempedak (Kos Bening), Kota Jakarta Timur, Jatinegara, DKI Jakarta, Kode Pos. 13340', '211810101@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-28 13:06:53', 1, 'Ch5xBOiFhY2uEVgwCGjqtud7S'),
('211810102', 'ADITYA MAULANA IBRAHIM', '3SE1', 'DIV STATISTIKA', '081910269632', 'Jl. Otista II, RT 003 RW 009, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810102@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-30 16:01:22', 1, '11F5ch1p4oXC6MYIyHHvxF9SP'),
('211810103', 'ADRYAN SAPTA SETYADINATA', '3SK5', 'DIV STATISTIKA', '082122020474', 'Jl. Praja Lapangan No. 1A, RT 04 RW 01, Kebayoran Lama Selatan, Jakarta Selatan. Kode Pos 12240', '211810103@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-30 11:14:34', 1, '3flFo0w62ltqFa1x9jbbLR4xW'),
('211810108', 'AFIFAH DHEANY PUTRI', '3SK2', 'DIV STATISTIKA', '081213450015', 'Perumahan Mustika Media Residence, Blok T1 No. 34, Setu, Kab. Bekasi', '211810108@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-24 08:35:50', 1, 'TPbi2b1tNhbNwewclDUMTFzTy'),
('211810109', 'AFIFAH RAHMAH CHANIA', '3SE4', 'DIV STATISTIKA', '08995647313', 'Jl. Kebon Sayur 1 No 8A', '211810109@stis.ac.id', 'RB01', 'S011', '001', 'J004', NULL, NULL, '2020-11-30 12:36:19', 1, 'CTMbmY7MgMSpCxffqX9uDc6OU'),
('211810110', 'AFIFATU ZULFA', '3SK3', 'DIV STATISTIKA', '085225869169', 'Jl. Asem No 4C RT 001 RW 003, Kel. Bidaracina, Kec. Jatinegara.', '211810110@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-30 09:07:01', 1, '6ICi7y2kmGj9DVMFKJMvmg07m'),
('211810111', 'AGMI PURNAMA', '3SK4', 'DIV STATISTIKA', '081261004510', 'jl. H yahya no 58 RT.014/RW.10', '211810111@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-23 10:20:57', 1, 'PPsLPYBz8AHUjevBgQCZ2ThZK'),
('211810113', 'AGUS HARDIYANTO', '3SE3', 'DIV STATISTIKA', '085842072440', 'Jl. Otista II No.25, RW.9, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810113@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-30 12:39:48', 1, 'GbnUIBsTyRR8mrmdx2kihr9G5'),
('211810114', 'AGUSTIEN WAHYUNINGSIH', '3SE1', 'DIV STATISTIKA', '085814007549', 'Jl. Hasbi No.17, Jatinegara, Jakarta Timur', '211810114@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-28 05:38:54', 1, 'RHqX20FA9rOr42bZtBFkooCXo'),
('211810115', 'AHDIYATY RAHMI A. SUAIB', '3SE5', 'DIV STATISTIKA', '085256789610', 'Jl. Sensus III No.23 RT 003 RW 004, Bidaracina, Jakarta Timur', '211810115@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-30 14:17:29', 1, 'lgjLRoOqjJsMf4zLxKWI4AQA2'),
('211810118', 'AHMAD BINTANG FA\'IS ADHIBI', '3SK1', 'DIV STATISTIKA', '0895621422865', 'Jl. Kebon Nanas Selatan II RT 06/RW 05, No. 19 (Lantai 2) . Cipinang Cempedak Jatinegara Jakarta Timur.', '211810118@stis.ac.id', 'RB01', 'S010', '101', 'J003', NULL, NULL, '2020-11-29 15:32:25', 1, 'VDq1ykaI4OyLdg23AORnVfwD8'),
('211810119', 'AHMAD KAMAL', '3SK4', 'DIV STATISTIKA', '089677037507', 'Jl. Sensus 2 No.26 RT.10/RW.04, Kelurahan Bidara Cina', '211810119@stis.ac.id', 'RB03', 'S009', '303', 'J004', NULL, NULL, '2020-11-30 20:41:51', 1, 'Fwr7xUXHMrg62sH0bIJpWrxmh'),
('211810120', 'AHMAD RAMADHAN. S', '3SE2', 'DIV STATISTIKA', '089514926170', 'Kost Bu Yanti Jl.Otista Raya No.78/11, RT.3/RW.5, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta', '211810120@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 14:34:55', 1, 'kHr2lqQBYd1oSyKAV0S2bmWO9'),
('211810121', 'AHMAD RIFJAYANSYAH', '3SE2', 'DIV STATISTIKA', '089604176106', 'Jln Kebun Sayur 1 No.24', '211810121@stis.ac.id', 'RB01', 'S016', '001', 'J003', NULL, NULL, '2020-11-30 15:15:44', 1, 'P2mJVyjkBQSRufiFnABzTbWm3'),
('211810122', 'AHMAD SATRIA IRMANTO', '3SE3', 'DIV STATISTIKA', '082302044821', 'Jl Asem No 2 Kel Bidaracina', '211810122@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-28 14:51:33', 1, 'tKsKrNXEOo7qblAKaoCCvsWN5'),
('211810123', 'AHSAN ANWAR BASARI', '3SE4', 'DIV STATISTIKA', '089653714660', 'Jl Abdurahman RT 01 RW 09 No 22', '211810123@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-28 11:52:05', 1, 'JBEtRQjtNZsiXrFdZmSoggBN4'),
('211810124', 'AININDA RAHMA MAS', '3SK5', 'DIV STATISTIKA', '089650807314', 'Jl. Sensus Iib No.11B RT/RW 9/4, Bidaracina, Jatinegara', '211810124@stis.ac.id', 'RB02', 'S013', '001', 'J005', NULL, NULL, '2020-11-30 16:55:32', 1, 'NgnFzEmMExkFRNTsD34Fphu8h'),
('211810127', 'AJENG NURUL KOMARIAH', '3SK1', 'DIV STATISTIKA', '081212884487', 'Jl.Tanah Tinggi Sawah RT.001/008 No.7 Kel.Tanah Tinggi Kec.Johar Baru, Jakarta Pusat', '211810127@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-29 12:32:09', 1, 'UXrH9O9gQyNQiNnW5lC6Frcsm'),
('211810130', 'AKHMAD FARKHAN HASIM', '3SE4', 'DIV STATISTIKA', '085728859851', 'Gang KH Sabdalloh RT 03 Bonasut', '211810130@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-19 10:43:20', 1, '5P2BPF37zW71OlUUTti9YRlJB'),
('211810131', 'AKHMAD IBNU KATSIR', '3SK2', 'DIV STATISTIKA', '081231881879', 'Jl Otista II gg H Abd Rahman RT001/RW009 No 33', '211810131@stis.ac.id', 'RB04', 'S012', '404', 'J003', NULL, '8e51046393ddb64ade6b2a009d2365d5.jpeg', '2020-11-30 14:18:50', 1, 'XwSGPPxL1g2SKwQgKFVi8zSWE'),
('211810133', 'AKWILLA BAHKTI SITINDAON', '3SE3', 'DIV STATISTIKA', '082380909030', 'Jl Kebon Sayur 1 No 15, RT 1/RW 15 , Bidara Cina, Jatinegara ', '211810133@stis.ac.id', 'RB02', 'S009', '206', 'J003', NULL, NULL, '2020-11-29 15:28:11', 1, 'YxghG3yXqVVoIOz1z5DgboqpB'),
('211810134', 'ALBERT JUNIOR CHEN', '3SE5', 'DIV STATISTIKA', '087735370747', 'Bonasut 2 No 20', '211810134@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-30 06:12:54', 1, 'bBCuwMk28e2AT5xJ89edg4WDU'),
('211810136', 'ALDI ATMALQI', '3SK3', 'DIV STATISTIKA', '087789926401', 'Jl. Mini 1 RT 07/03 No.3, Bambu Apus, Cipayung, Jakarta Timur 13890', '211810136@stis.ac.id', 'RB08', 'S007', '001', 'J004', NULL, NULL, '2020-11-29 09:55:04', 1, 'HOFBkXRdZPeHwUvcBkHC2IkJB'),
('211810139', 'ALFAJRI HIDAYAT', '3SE1', 'DIV STATISTIKA', '083167693717', 'Jl. Kebon Nanas Utara No. 15 RT/RW 10/7, Vipinang Cempedak', '211810139@stis.ac.id', 'RB04', 'S013', '407', 'J003', NULL, NULL, '2020-11-29 02:25:45', 1, 'kC9S9yCW9OGLdYqZmK76o4Rtd'),
('211810142', 'ALFINA NURPIANA', '3SK2', 'DIV STATISTIKA', '089524512753', 'Jl. Pedongkelan Belakang Nomor 4, Cengkareng, Jakarta Barat', '211810142@stis.ac.id', 'RB00', 'S000', '000', 'J005', NULL, NULL, '2020-11-30 03:36:51', 1, '5vTaovemXxmb08njFEFcjw10U'),
('211810143', 'ALFIRA MEILAWIJAYA', '3SE1', 'DIV STATISTIKA', '085715827877', 'Jl. Mega No.158 RT03/07 Kp. Ciketing Selatan Ds. Ciketing Udik Kec. Bantar Gebang Kota Bekasi', '211810143@stis.ac.id', 'RB03', 'S009', '302', 'J004', NULL, NULL, '2020-11-29 05:55:39', 1, 'ntQTVJZrlWZacQQ8gRCUhe5Lm'),
('211810144', 'ALFREDO ABDUL AZIZ', '3SE2', 'DIV STATISTIKA', '081289771037', 'Komplek PU P4S Blok No 9B', '211810144@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-28 12:59:50', 1, 's70Ch18kzuanODLuosYQyqUiP'),
('211810147', 'ALICIA STEFFANNI NADEAK', '3SK4', 'DIV STATISTIKA', '087781152615', 'Jl. Otista 1 A No 18', '211810147@stis.ac.id', 'RB02', 'S009', '206', 'J004', NULL, NULL, '2020-11-29 15:29:26', 1, 'NUD8cJGEjE824FKnRoRLoEJVX'),
('211810148', 'ALIF MUHAMMAD ARRASYID', '3SK4', 'DIV STATISTIKA', '081293628867', 'Jl. Kebon Nanas Utara II No.13-14 RT.5 RW.7 Kel.Cipinang Cempedak Kec.Jatinegara, Jakarta Timur, DKI Jakarta', '211810148@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-29 06:44:47', 1, '3drnwgKEAMugmwuWbpRiu8qQt'),
('211810149', 'ALIF RIZKY RAHMAWAN', '3SK5', 'DIV STATISTIKA', '081285093212', 'Jl. Karyawan IV No. 52 RT 002 RW 01, Kel. Karang Timur, Kec. Karang Tengah, Kota Tangerang, Banten', '211810149@stis.ac.id', 'RB01', 'S010', '102', 'J003', NULL, NULL, '2020-11-29 17:24:30', 1, 'dvksdPw9XLObWll7zdutIF6ZF'),
('211810150', 'ALIFAH MUWAFIQOH', '3SE3', 'DIV STATISTIKA', '081379127799', 'Jl. Gama 1 RT 13, Kel. Pasar Baru, Kec. Kota Manna, Kab. Bengkulu Selatan, Provinsi Bengkulu', '211810150@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-28 10:37:01', 1, 'H0lVHrNdd9fxzg1ss5Rn7UtUe'),
('211810151', 'ALIFAH ZALFA AZIZAH', '3SK3', 'DIV STATISTIKA', '085786200655', 'Jl. Raya Slawi-Jatibarang Gang Antasena No. 37 RT 16/06, Desa Gumayun, Kec. Dukuhwaru, Kab. Tegal, Jawa Tengah', '211810151@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-28 13:28:15', 1, 'udh61GiDddJOVX8ypV5GRTJMO'),
('211810152', 'ALIFKA PUTRI ASHADI', '3SK4', 'DIV STATISTIKA', '085648436472', 'Graha Fialdis', '211810152@stis.ac.id', 'RB03', 'S012', '001', 'J004', NULL, NULL, '2020-11-30 11:33:47', 1, 'n3v5s8bHRwEVvJpYy5lKlyVed'),
('211810153', 'ALIVYA SEPTIRIANA PUTRI. S', '3SE2', 'DIV STATISTIKA', '0895602653066', 'Jl. Penghulu No 53 RT 013/RW 010 Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur 13330', '211810153@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-26 12:23:39', 1, 'aDJEvd4NWaqjTDcDfTBpDzBGq'),
('211810154', 'ALIYYA SALSABILA', '3SK5', 'DIV STATISTIKA', '085325103012', 'Jl Sensus 3 No. 23, Bidara Cina, Jatinegara, Jakarta Timur', '211810154@stis.ac.id', 'RB03', 'S009', '301', 'J003', NULL, NULL, '2020-11-30 12:38:14', 1, 'Y4FzWKvmajUKowYGboEH0xIJ6'),
('211810156', 'ALRIZKI PRASTAMA PUTRA', '3SK1', 'DIV STATISTIKA', '081394457378', '-', '211810156@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-28 01:04:21', 1, 'cuFLKlslSpkLcNVUyrUitsTmY'),
('211810158', 'ALYA AZZAHRA', '3SK1', 'DIV STATISTIKA', '081279725710', 'Jl. H.Yahya No.271 RT1/RW10, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur, DKI Jakarta', '211810158@stis.ac.id', 'RB03', 'S013', '310', 'J004', NULL, NULL, '2020-11-30 14:23:19', 1, 'IlVSarbkslSlg1K8IT0qv5EJW'),
('211810159', 'ALYA NUR AMALIA', '3SE3', 'DIV STATISTIKA', '081229239325', 'Jl. Otista Raya, Gang Sholihun No.15 RT 15 RW 08 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810159@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-20 03:52:49', 1, 'zt2AZnpVVcmpedtCNZKvIt0rm'),
('211810161', 'AMELIA TRI WAHYUNI', '3SK2', 'DIV STATISTIKA', '089616980175', 'Jl. Kebin Nanas Utara 1 No. 15B RT003/RW007 Cipinang Cimpedak', '211810161@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-30 18:39:49', 1, 'YqTqk7zCL1VmDkM4aSOxAdgRK'),
('211810163', 'AN NIDA FITRI AL FAUZIAH', '3SK3', 'DIV STATISTIKA', '0895390862057', 'Desa Tangkisan, Kecamatan Bayan, Kabupaten Purworejo, Jawa Tengah', '211810163@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-27 07:11:27', 1, '03dUAP6AWvQBZCyNdOj3TJgeu'),
('211810165', 'ANDI ALFITRA PUTRA FADILA', '3SE3', 'DIV STATISTIKA', '085240709724', 'Jln. Kebon Nanas Utara Gg. Ar-Rahim No. 15 RT 10/RW 07 Cipinang Cempedak Jatinegara Jakarta Timur 13340', '211810165@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, 'f3cb785dc0e4b3183510942d3df294b0.jpg', '2020-11-27 16:06:15', 1, 'X7JMiuzi9UPZ7jFnOlAaGt7g9'),
('211810167', 'ANDI RAFLI RADJASA ', '3SE5', 'DIV STATISTIKA', '087820196331', 'Jl. Masjid No 25B RT 12 RW 09 Otto Iskandardinata Raya, Jatinegara, Jakarta Timur 13330 ', '211810167@stis.ac.id', 'RB08', 'S004', '800', 'J005', NULL, NULL, '2020-11-29 03:58:41', 1, 'Ojxi52p9mUZ21Qy4yjTUt3uNZ'),
('211810168', 'ANDIKA ROY KHIAN MARSELINO', '3SE4', 'DIV STATISTIKA', '083863247240', 'Jl. H. Hasbi No 23', '211810168@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-28 16:57:09', 1, 'NP7KTkSjGufTxeskbizanislh'),
('211810169', 'ANGEL MARIANA SAGALA', '3SK4', 'DIV STATISTIKA', '082267684941', 'Jl Sensus 1 No 8 RT 004/RW 015, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur ', '211810169@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-30 06:25:16', 1, 'F2dlxGqk0aMZRtFx1qdSQRh3a'),
('211810170', 'ANGEL RIZKY SHEREN MANURUNG', '3SE2', 'DIV STATISTIKA', '082274391491', 'Jl. Kebon Sayur R I No 10A, RT 5, RW 15, Bidara Cina, Jatinegara,Kota Jakarta Timur, DKI Jakarta', '211810170@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-29 11:44:52', 1, 'AbDy4bfyymC42ssGb26rIj0cb'),
('211810171', 'ANGGI VIOLITA ILHAM HASIBUAN', '3SE4', 'DIV STATISTIKA', '085359113200', 'Jl. Kebon Nanas Selatan 1, No. 14, RT/RW 13/08, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '211810171@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-30 07:28:48', 1, '2q8qb6VAzwuZAWkmHDfI34Pc8'),
('211810172', 'ANINDYA PUTRI', '3SK5', 'DIV STATISTIKA', '082123358478', 'Jl. Cipinang Baru Bunder No.2 RT 001/01 Komplek Kehakiman Kel. Cipinang, Kota Jakarta Timur, Pulo Gadung', '211810172@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-30 22:29:40', 1, '6qe0dz6q9RO5y15mMfJps53fx'),
('211810175', 'ANIS RAHMAWATI', '3SE4', 'DIV STATISTIKA', '082198103585', 'Jl. Hj. Yahya No. 51D, Bidara Cina, Jatinegara, Jakarta Timur', '211810175@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-30 13:31:46', 1, 'u6P8gn6hQr7clfBXq4H3TeTFA'),
('211810176', 'ANISATULLAILA', '3SK3', 'DIV STATISTIKA', '089615465753', 'Jl. Otista Raya, Gang Mangga, RT 01 RW 03, No 15, Jatinegara, Jakarta Timur, 13330', '211810176@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-19 16:30:28', 1, 'kxOkcohsOyQoRWnm6eIP2oFE0'),
('211810179', 'ANNISA DEA FITRI', '3SK1', 'DIV STATISTIKA', '082385526898', 'Jl. Otista Gg. Haji Dawel No.12 ', '211810179@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-30 05:18:15', 1, 'Knmtw0cudJhtTbnzbe0Sm7sFv'),
('211810180', 'ANNISA FITRIYANI', '3SK2', 'DIV STATISTIKA', '089667543010', 'Kos Graha Fialdis Jl. Saabun', '211810180@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-26 08:11:14', 1, 'ASCz5FH0CrIv2HaljtK23U4Pq'),
('211810181', 'ANNISA KAHMILIANI', '3SK3', 'DIV STATISTIKA', '085788037490', 'Jl. H. Yahya No 271', '211810181@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-28 13:25:50', 1, 'pzlMSRd1o5fkF0QtNMcnpvSQx'),
('211810182', 'ANNISA NUR AZIZAH AHMAD', '3SK4', 'DIV STATISTIKA', '082257507356', 'Dsn. Kesamben, RT.01/RW.08, Kec. Kesamben, Kab. Blitar, Jawa Timur', '211810182@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-30 14:03:04', 1, '0PGTTzTQIVDkGGBhCdr60E6s9'),
('211810184', 'ANNISA SALSABILA AULIA', '3SK5', 'DIV STATISTIKA', '085882032644', 'Komplek RSCM Jl Delima Putih V Blok E3 No 4 Kelurahan Cilebut Barat Kabupaten Bogor', '211810184@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-27 23:51:53', 1, 'a5KFxXJFw6zQbmpPd2mLNCpjg'),
('211810185', 'ANNISA WASISTIANA', '3SK5', 'DIV STATISTIKA', '082219391836', 'Jl. Otista Raya gg. Abdulrahman RT 001 / RW 009 (Kos Sarah) ', '211810185@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-28 03:57:25', 1, 'd9USGWjIeY2tVs6s15pDqi5sB'),
('211810186', 'ANSKARIUS CHANDRA GOA', '3SE1', 'DIV STATISTIKA', '082113337083', 'Jln. Asem Gang Mangga no 11 RT/RW 003/003 Kelurahan Bidara Cina, Jatinegara', '211810186@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, 'd3ccb6dd2622e6ac4e01320e86160347.png', '2020-11-30 09:00:38', 1, 'EQgWAMSexIKqifIon53GFmGkf'),
('211810187', 'ANUGRAH R.H. MARBUN', '3SE5', 'DIV STATISTIKA', '082161002763', 'Jl. Sensus, Kbn Sayur no.47 RT 006/04, Bidara Cina, Jatinegara', '211810187@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-30 12:22:43', 1, 'ht6M9RtgxzSz3bYchcS1TVEjb'),
('211810188', 'ANWAR IBRAHIM', '3SK2', 'DIV STATISTIKA', '082233830050', 'Jl. Kebon Nanas Utara Gang Ar Rahim No. 15 Cipinang Cempedak Jatinegara Jakarta Timur DKI Jakarta 13340', '211810188@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, '0ccf53f6629a3031d31c51d1ce078f49.png', '2020-11-28 11:59:13', 1, 'EkbiSVZemuYvCuUhLXDPIlxdX'),
('211810189', 'ANZILNA LUTHFA ASYFIYA\'', '3SE3', 'DIV STATISTIKA', '082137183739', 'Krapyak Kulon RT 5 Panggungharjo  Sewon Bantul D.I.Yogyakarta 55188', '211810189@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 12:33:38', 1, 'ukb0dDC4uIXxz9ecG54AOj7ZA'),
('211810190', 'ARDELIA RARAS NISREYASA', '3SK1', 'DIV STATISTIKA', '089642369608', 'Jl. Prof. Dr. Hamka RT01/10 No. 47 Gaga, Larangan, Tangerang, Banten', '211810190@stis.ac.id', 'RB08', 'S006', '001', 'J005', NULL, NULL, '2020-11-30 17:28:43', 1, 'uHSbXL8ddoiUJC1gjrDGht3TI'),
('211810191', 'ARDHAN SETYO NUGROHO', '3SE4', 'DIV STATISTIKA', '0895338361522', 'Gg Ontoseno, Ds Ujunggede, RT/RW 01/05, Kecamatan Ampelgading, Kabupaten Pemalang', '211810191@stis.ac.id', 'RB02', 'S009', '207', 'J003', NULL, NULL, '2020-11-27 10:49:22', 1, '64zhkBIUr70PC50TsFwqh9eOo'),
('211810192', 'ARI MAHENDRA', '3SK3', 'DIV STATISTIKA', '085967011266', 'Jl. Otista 2, Jatinegara', '211810192@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-26 06:43:40', 1, 'GJgBl0TJpOpBN3yx0tmPJJGGY'),
('211810200', 'ASKAR SUBRIANDI ', '3SE1', 'DIV STATISTIKA', '082115597213', 'Gg K. H Sabdalloh No 4, Kebon Nanas Utara', '211810200@stis.ac.id', 'RB03', 'S012', '308', 'J003', NULL, NULL, '2020-11-30 09:04:27', 1, 'R1sLXWojt0V3RUQBrOWZZ5ed3'),
('211810201', 'ASSYIFA MARETTA ILMARAHMA', '3SE4', 'DIV STATISTIKA', '081324893426', 'Jl.Otista Raya Gg.Abdur-Rahman', '211810201@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-29 16:46:02', 1, 'm2D1F48LFVkOZy0xBS9peilUW'),
('211810204', 'AULIA BRILLIANY WIBOWO', '3SK2', 'DIV STATISTIKA', '082322585501', 'Jl. Mulia No. 20 RT/RW 008/008, Bidaracina, Jatinegara, Jakarta Timur 13330', '211810204@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-30 14:44:42', 1, 'Kwkd7MzX1jKDHpopOmIPj6ppb'),
('211810206', 'AYU AINA NURKHALIZA', '3SK3', 'DIV STATISTIKA', '081410231905', 'Jl. Kebon Nanas Selatan II No.36 RT 6 RW 5, Kel. Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810206@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-30 11:16:38', 1, '1tEMDbjUocLYbQ5ROyvGgbHJk'),
('211810207', 'AZMI FAISAL', '3SE2', 'DIV STATISTIKA', '082241496161', 'Jl Asem No.24A Bidaracina Jakarta Timur', '211810207@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-30 11:54:06', 1, 'MHyFc3TwlOdsBiXAmKea23kzT'),
('211810208', 'AZZAHRA SHYFA DIENI ISLAM', '3SE5', 'DIV STATISTIKA', '081222624469', 'Gang Sensus I No. 15 RT 01 RW 004 Jatinegara, Jakarta Timur', '211810208@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-30 14:31:34', 1, 'j5yiaVShFzb0graTURRAaeTZ5'),
('211810209', 'AZZAHRA ZAUZA INNISWA RAHMADHANA', '3SE1', 'DIV STATISTIKA', '089604350485', 'Kos Orange Jl. Abdul Rahman No 34a, RT 002 RW 009 , Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '211810209@stis.ac.id', 'RB08', 'S006', '001', 'J004', NULL, NULL, '2020-11-30 12:57:33', 1, '3TVCfUxPRFzs3HBE2sG1qeIaO'),
('211810210', 'AZZAM MAJDI ASYSYAHIDA', '3SK4', 'DIV STATISTIKA', '081318431104', 'Kos Aisyah, Bonasel', '211810210@stis.ac.id', 'RB01', 'S010', '103', 'J003', NULL, NULL, '2020-11-30 12:54:59', 1, 's7uqZ7do3tPQUwShI3Ji3aPhq'),
('211810211', 'BAGASKORO CAHYO LAKSONO', '3SE5', 'DIV STATISTIKA', '085939600496', 'Ds Ngablak, RT 1 RW 9, Kec Cluwak, Pati', '211810211@stis.ac.id', 'RB02', 'S004', '200', 'J001', NULL, NULL, '2020-11-30 12:42:08', 1, 'jaNeR1VowI6Vxrr7DzD6yBAmy'),
('211810212', 'BARI RIZKI PRATAMA', '3SE2', 'DIV STATISTIKA', '085691367372', 'Jl. Pondok Sari II No 26A RT 010 / RW 010 Kel. Kalisari Kec. Pasar Rebo Jakarta Timur', '211810212@stis.ac.id', 'RB02', 'S013', '203', 'J003', NULL, NULL, '2020-11-30 16:02:11', 1, 'koS9y3XaS5NITwKZgc9oAWDMH'),
('211810214', 'BINTANG ISMIARIZQI', '3SE5', 'DIV STATISTIKA', '089530027770', 'Jl. Gang H. Misnen RT 005 RW 09 No. 20 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810214@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 12:25:30', 1, 'Ee2bFRcUv7GgRfbHewMDAS4Wp'),
('211810215', 'BINTANG IZZATUL FATAH', '3SE3', 'DIV STATISTIKA', '087720779640', 'Jl Jampea Lr. 19 No. 5 Koja Jakarta Utara', '211810215@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-30 07:19:08', 1, 'OUMlTxxDrZVddoCrhEAxu5ZON'),
('211810216', 'BUDIMAN ALLER SILABAN', '3SE1', 'DIV STATISTIKA', '082387765753', 'Jl. Kebun Sayur 1', '211810216@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-30 12:57:32', 1, 'v2Pb4PyNF3kwQIBszjbvG0exK'),
('211810217', 'CANDRA KURNIAWAN', '3SE2', 'DIV STATISTIKA', '089691769188', 'Jl Kebon Nanas Utara No 15 RT/RW 10/08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810217@stis.ac.id', 'RB00', 'S000', '000', 'J001', NULL, NULL, '2020-11-30 13:58:38', 1, 'Br3hoR9NSKmS2ffXaGHGvhkjw'),
('211810218', 'CAROLINE UE HUMBLE BANUREA', '3SE2', 'DIV STATISTIKA', '089513913362', 'Jln.Otista II, Gg.H.Misnen No.05', '211810218@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-29 11:44:03', 1, 'JUk8A6aG7VzfGuQu5xXq59QrJ'),
('211810219', 'CESARIO HANIF NAUFAL', '3SE3', 'DIV STATISTIKA', '081215975803', 'Gg. H. Abd Rahman No.34, RT.4/RW.9, Kampung Melayu, Jatinegara, Jakarta Timur', '211810219@stis.ac.id', 'RB03', 'S013', '001', 'J003', NULL, NULL, '2020-11-29 07:24:55', 1, 'wioNqajeyNKh7sfAoqvdLzBeX'),
('211810221', 'CHAULA RAMADHANI PUTRI', '3SK4', 'DIV STATISTIKA', '082145587341', 'Jl. Marsma Hardadi, Mess Gelatik A-4, Halim Perdanakusuma', '211810221@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-30 15:34:21', 1, 'ey4fmdcweiKjXB9Yw33OJB46T'),
('211810222', 'CHINDI PRASTIWI', '3SK5', 'DIV STATISTIKA', '081908757992', 'Jl. Raya Hankam, Gg. Rambutan RT/RW 006/03 no. 12, Jatimurni, Pondok Melati, Kota Bekasi, Jawa Barat.', '211810222@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-29 12:32:31', 1, 'P7mNqdoIKzAU7PWgVcsnfnhE7'),
('211810225', 'CHRISTANTY JOSEPHINE', '3SK1', 'DIV STATISTIKA', '081297334221', 'Komplek Ardhini II Jl. Bima No. 60 RT 004 / RW 008', '211810225@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-29 13:19:51', 1, '7nBIwLXDg5ZTCttnWpDb7SkYC'),
('211810226', 'CLARESA AYU DYA', '3SK2', 'DIV STATISTIKA', '082284595721', 'Jl. Masjid, Bidaracina, Jatinegara', '211810226@stis.ac.id', 'RB03', 'S013', '311', 'J004', NULL, NULL, '2020-11-29 07:26:43', 1, 'sBG00Z1VTjKg0pAxWvYseLe1U'),
('211810228', 'DAFFA HENDRAWAN', '3SE3', 'DIV STATISTIKA', '08176387935', 'Jl. Raya Pisangan 14/07 No.78 Desa Satria Mekar Kec. Tambun Utara', '211810228@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-28 13:28:29', 1, 'ApJC1cvWD5Lq3DhM4DyZMyARE'),
('211810230', 'DANIEL DIAN PRATAMA SIBURIAN', '3SE4', 'DIV STATISTIKA', '081250626965', 'Jl. Amal Gg. Durian, Kab. Sintang, Kalimantan Barat', '211810230@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-28 01:10:06', 1, '6KHRvfcNKdErc7JvZ1ijQy75v'),
('211810235', 'DENA APRILIANA', '3SK3', 'DIV STATISTIKA', '081310432774', 'Jl. H. Hasbi Dalam No.9 RT12 RW09 Kel. Bidara Cina, Kec. Jatinegara', '211810235@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-29 12:01:24', 1, 'VLz1sCQUsS87GGYu0wyvZvQi2'),
('211810236', 'DENITA DWI ANDIANY', '3SK1', 'DIV STATISTIKA', '083820888402', 'Jl. Otista Raya, Gg. Abdul Rahman NO 16 RT 01 RW 09', '211810236@stis.ac.id', 'RB04', 'S012', '405', 'J004', NULL, NULL, '2020-11-30 09:00:06', 1, 'zy7pIfhFTdUS7JZpvC5ycdFF4'),
('211810238', 'DEVANI AYUNA NINGSIH', '3SE3', 'DIV STATISTIKA', '082280490771', 'Gang Sensus I No. 15 RT 01 RW 004, Kel. Bidaracina, Jatinegara, Jakarta Timur', '211810238@stis.ac.id', 'RB03', 'S012', '308', 'J004', NULL, NULL, '2020-11-29 10:46:25', 1, 'DXBdKdDLfix7ChGXWCSswniJJ'),
('211810239', 'DEVIANA SAFITRI HERLIANTI', '3SE5', 'DIV STATISTIKA', '085717828329', 'Perum. Pejuang Jaya Jl. Komando II Blok C RT 05 RW 12 No. 492 Bekasi', '211810239@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-28 01:30:00', 1, 'mtoYub6PmG5sRffja6Mhxr1UM'),
('211810240', 'DEVO RAMA', '3SK5', 'DIV STATISTIKA', '082119860771', 'Jl Asem Gang Mangga No 24A Bidaracina Jatinegara Jakarta Timur', '211810240@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-27 15:01:15', 1, 'kLZIR1eHQEnjIyCZRMePpnxHg'),
('211810242', 'DIAN ANGGRAINI JULITA', '3SE1', 'DIV STATISTIKA', '081314813094', 'Gg Mangga', '211810242@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-28 12:38:49', 1, '0w93qhYZQPkmWU5ImI6k9ga7M'),
('211810243', 'DICKI ABDUROHMAN', '3SK1', 'DIV STATISTIKA', '083813485942', 'Jl. Sensus II, No. 30, Kel. Bidaracina, Kec. Jatinegara, Kota Jakarta Timur', '211810243@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-30 03:35:30', 1, 'sHnEw5ACQt3VTAYYojCCNNQn8'),
('211810244', 'DIKI NURFAIZ', '3SE5', 'DIV STATISTIKA', '089618765585', 'Jl Sensus 2C No.16', '211810244@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-04 16:05:59', 1, NULL),
('211810246', 'DIMAS ARIO YUDANKO', '3SE4', 'DIV STATISTIKA', '082223077789', 'Jl. Sensus III RT.004 RW.014 No. 10 Bidaracina, Jatinegara, Jakarta Timur', '211810246@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-30 14:02:08', 1, 'DHPVMEYIVerkDxUKAHB5yKc4N'),
('211810247', 'DIMAS HUTOMO PUTRO', '3SK2', 'DIV STATISTIKA', '085794571883', 'Jln. Ayub no 6A RT.15/RW.8, Kp. Melayu Kecamatan Jatinegara Kota, Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810247@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-30 17:33:38', 1, 'NJETnYF444nnPH75yFBsSohDY'),
('211810248', 'DIMAS RIZQI SUGENG HUSADA', '3SE1', 'DIV STATISTIKA', '085328714704', 'Jl. Kebon Nanas Utara 2 No 25 RT 05 RW 07, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810248@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-28 00:54:33', 1, 'YgWAMYgCsIyJiixp3y7jEiIh5'),
('211810249', 'DINA ANGGRAENA', '3SK2', 'DIV STATISTIKA', '085783384942', 'Dusun II Rejo Dadi, RT 011 RW 003, Ratna Daya, Raman Utara, Lampung Timur, Lampung', '211810249@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-30 12:08:52', 1, 'urFobsWmbRQIhVSv6x5Y5enDN'),
('211810251', 'DONI SETIAWAN', '3SK3', 'DIV STATISTIKA', '085868310992', 'Jl. Kebon Nanas Utara II no. 21 RT. 005/RW. 007, Cipinang Cempedak, KOTA JAKARTA TIMUR, JATINEGARA, DKI Jakarta, ID, 13340', '211810251@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-30 14:08:33', 1, 'jctU0WQeX14X0KSE1iksSS85O'),
('211810252', 'DWI KARTIKA SARI', '3SE4', 'DIV STATISTIKA', '087734027939', 'Jl. Otista 64A Gang Sensus 1 No.13 RT.1 RW.4 Kelurahan Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '211810252@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 12:11:15', 1, 'N7dhpBYWEruApZO3fNrQWYa88'),
('211810253', 'DYAH AYU NURHAYATI', '3SK4', 'DIV STATISTIKA', '089673308242', 'Karangkembang, Alian, Kebumen, Jawa Tengah', '211810253@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-30 01:45:55', 1, 'KKgJeBSck5Hgj4PW7Pnm2okFg'),
('211810255', 'EDMUNDUS ALEXANDRO', '3SE5', 'DIV STATISTIKA', '081235342660', 'Jl. Otista II No 24', '211810255@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-29 12:25:00', 1, 'Sb9gXQVYTwobW7Su14HPyHocv');
INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('211810257', 'EDO KURNIAWAN', '3SE2', 'DIV STATISTIKA', '081933750286', 'Jl. Kebon Sayur 1 No. 20 RT 05 RW 15, Bidaracina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta 13310', '211810257@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-24 02:10:37', 1, 'vXg5LmGZFFslpJyToKIy4Vudp'),
('211810263', 'ELSA NUR ISMADITA', '3SK5', 'DIV STATISTIKA', '085655166133', 'Jl. Sensus II, No.9a, RT.02/RW.04, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta', '211810263@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-30 08:11:57', 1, 'ksxlvHZ0CTgRZfX7adTyN7QVO'),
('211810264', 'ELFIRA NUR ISLAMIYAH', '3SE1', 'DIV STATISTIKA', '085242727362', 'Jl. Otista Gg. Haji Dawel No. 12  RT 05/ RW 09  Kelurahan Bidara Cina', '211810264@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-30 09:09:03', 1, 'qAhqID02AOMBIffVQraM061IF'),
('211810265', 'ELYZA NURUL HAPSARI', '3SK1', 'DIV STATISTIKA', '082247142007', 'Jl.  Otista 2 No.16 RT 006 RW 009, Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta', '211810265@stis.ac.id', 'RB08', 'S004', '800', 'J004', NULL, NULL, '2020-11-30 15:02:00', 1, 'ISdQ1J0b2gXJ8coQh3tZCSvc9'),
('211810268', 'ENDAH CAHYA RIZKI SUHANDA', '3SE2', 'DIV STATISTIKA', '085810291931', 'Bojong Depok Baru, Jl. Sawo 1 DK 2 RT 02 RW 08, Bojong Gede, Bogor', '211810268@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-30 09:18:18', 1, 'MW89zvjoo4OIys0vxmWRsvFWL'),
('211810269', 'ENGGAR RATNA SAPUTRA', '3SK4', 'DIV STATISTIKA', '085879978398', 'Jl. Kebon Nanas Selatan II No. 21B RT 10 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur, DKI Jakarta, 13340', '211810269@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-27 00:40:34', 1, 'UEuSdzmcu5pCvX2JbLMirJ7rL'),
('211810271', 'ERISA', '3SK2', 'DIV STATISTIKA', '082278763070', 'Jl Otista, Gang H Dawel No 12, RT 05/RW 09, Bidara Cina', '211810271@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 17:50:23', 1, 'PYrqZaH5WrfDwZmFopj0Xa5OO'),
('211810272', 'ERLIANA NURUL FATIHAH', '3SK3', 'DIV STATISTIKA', '085642292303', 'Jl. Otista Raya, gg. Abdul Rahman No.16 RT 1 RW 9, Kampung Melayu, Jatinegara, Jakarta Timur', '211810272@stis.ac.id', 'RB02', 'S012', '204', 'J003', NULL, NULL, '2020-11-29 15:14:13', 1, 'Z8EOOIxuQ9qJDUbNwOtmig3fi'),
('211810273', 'ERLYNA NURHALIZA PRAMESTI', '3SK3', 'DIV STATISTIKA', '081290897184', 'Jl. Otista 2, No. 29, RT 003 RW 09, Bidara Cina, Jatinegara', '211810273@stis.ac.id', 'RB03', 'S009', '001', 'J004', NULL, NULL, '2020-11-30 15:53:09', 1, 'mEDHrTwaLgXoK2oNQFcEJac8r'),
('211810274', 'ERSA AMOZA SITA', '3SK4', 'DIV STATISTIKA', '081340236492', 'Jl. Mesjid No 20', '211810274@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-29 16:13:34', 1, 'keM4H8eIbGWOQkOBfXtbB45w5'),
('211810276', 'ETSA PRIMANDA', '3SK5', 'DIV STATISTIKA', '082243568523', 'Jl. Kebon Nanas Selatan I No. 18A, RT 6 RW 8 Kelurahan Cipinang Cempedak', '211810276@stis.ac.id', 'RB04', 'S012', '001', 'J003', NULL, NULL, '2020-11-29 13:23:30', 1, '47YP4xx0Jo7s7h8TrRyzFAlS0'),
('211810277', 'FADHEL IMAM HAICHAL TANJUNG', '3SE3', 'DIV STATISTIKA', '08811199096', 'Jl. Kebon Nanas Utara No. 43 RT 08 RW 07, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Jakarta Timur, 13340', '211810277@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-29 12:20:08', 1, 'G8zKu7c8MuAit2GwUNfVUat0W'),
('211810279', 'FADHLULLAH', '3SK5', 'DIV STATISTIKA', '081279550172', 'Jl. Otista Raya gg.mangga RT.003 RW.003 No.24 Kel.Bidara Cina Kec.Jatinegara Jakarta Timur 13330', '211810279@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-30 14:20:24', 1, 'dckWE6cJGXgrUZwvQ6x9aYrOi'),
('211810281', 'FAHRIZA RIANDA', '3SE1', 'DIV STATISTIKA', '0895613327193', 'Jl Kebun Nanas Utara No 25 RT 4 RW 7 Cipinang Cempedak Jakarta Timur', '211810281@stis.ac.id', 'RB04', 'S004', '400', 'J001', NULL, '777555c08a0b2bcfef342fbe65ba6552.jpg', '2020-11-30 06:46:34', 1, 'Ak9i8WAlHHqtADBd9TXoneMge'),
('211810282', 'FAHRUNNISA MAHARANI', '3SK4', 'DIV STATISTIKA', '085267172407', 'Jln.H.Yahya No.58 RT.14 RW.10 Kelurahan Bidara Cina', '211810282@stis.ac.id', 'RB03', 'S012', '307', 'J004', NULL, NULL, '2020-11-30 17:34:31', 1, 'UkhA7UIGYefnjcb3m327HUXhF'),
('211810283', 'FAIQ NUR HUDA', '3SE4', 'DIV STATISTIKA', '085216114162', 'Kos Sinaga, Jln. Kebon Sayur 1, dekat pos FBR', '211810283@stis.ac.id', 'RB08', 'S004', '800', 'J001', NULL, NULL, '2020-11-30 17:16:13', 1, 'FzaAJriw9x6FBRuOSH6kF958I'),
('211810284', 'FAIRUZ AFIFAH REEFANA POERI', '3SK5', 'DIV STATISTIKA', '082115068362', 'Jl. Masjid No 20', '211810284@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-30 04:37:02', 1, 'lUpKS3bySjbsbXXRn6SQZVldC'),
('211810285', 'FAISAL SIDDIQ', '3SK1', 'DIV STATISTIKA', '087838737993', 'Jl. Otista 2, RT 3 RW 9 dekat Masjid Al Kamiliyah kos kosan Haji Anang warna biru Kelurahan Bidara Cina, Jatinegara Jakarta Timur, DKI Jakarta – 13330', '211810285@stis.ac.id', 'RB04', 'S012', '405', 'J003', NULL, NULL, '2020-11-30 15:55:22', 1, 'yXiCn7wOElRrJpdeYqg7LmChh'),
('211810286', 'FAJAR AKHMAD ANSHORI', '3SE5', 'DIV STATISTIKA', '081329249520', 'Otista II ', '211810286@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-29 12:20:05', 1, '8sMH7VDtMRcBctPJ2UpAJ5yIB'),
('211810287', 'FAJAR BERLIAN', '3SE4', 'DIV STATISTIKA', '082278868876', 'Rejomulyo Palas, Kabupaten Lampung Selatan', '211810287@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-29 13:50:37', 1, 'BLFDDVuKb1QZHseO2eVE080R2'),
('211810289', 'FAKHRURRAZI HAMDANI', '3SK2', 'DIV STATISTIKA', '08239118944', 'Jl. HR Subrantas, Gg Bina Karya no.2, Kel. Tuah Karya, Kec. Tampan, Kota Pekanbaru, Riau', '211810289@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-29 06:19:39', 1, 'cDpfBxT3p15MX2I59yfvr4HM8'),
('211810290', 'FANI FAJRIANI', '3SK1', 'DIV STATISTIKA', '085763245269', 'Jl. H. Yahya No.271, RT.1/RW.10, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810290@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-30 08:41:14', 1, 'yBDeB0P32VdU8NTG165QDjNrS'),
('211810292', 'FARADILA AGUSTINA THALIA', '3SE3', 'DIV STATISTIKA', '089636083881', 'Jl. Kebon Nanas Selatan II No.12, RT.11/RW.08, Cipinang Cempedak, Jakarta Timur', '211810292@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 12:28:16', 1, 'AUuvuMgTSRS56pNoClfnjDN2N'),
('211810294', 'FARHAN REZA KUSUMA', '3SK3', 'DIV STATISTIKA', '081334387032', 'Jl. Kebun Nanas Utara 2 No. 21 RT05 RW07 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810294@stis.ac.id', 'RB02', 'S012', '201', 'J003', NULL, NULL, '2020-11-30 16:35:25', 1, 'oCXanUR4FbPtGixQOZd9v5ID6'),
('211810295', 'FARICHA ZAHARA ALCHASANAH', '3SK5', 'DIV STATISTIKA', '083840196402', 'Jl. Sensus 3 No.23', '211810295@stis.ac.id', 'RB01', 'S016', '001', 'J004', NULL, NULL, '2020-11-30 14:36:05', 1, 'ZScWocC5FCy88Xu7zS2GUe9CA'),
('211810296', 'FARID HARNANTO', '3SK1', 'DIV STATISTIKA', '082147437924', 'Otista 2', '211810296@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('211810297', 'FARIZ APRILIANZAH', '3SE5', 'DIV STATISTIKA', '081230498223', 'Jl. Kebon Nanas Selatan No 15, Cipinang Cempedak,Jatinegara,Jakarta Timur', '211810297@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 12:53:51', 1, 'atMPWGUXZBjv0BRfHiroMcIzt'),
('211810298', 'FATHANYA PUJA ANGGARESA', '3SK2', 'DIV STATISTIKA', '08179933270', 'Perumahan Kapital Raya Blok D No. 1 RT 01 RW 021, Kel. Belian, Kec. Batam Kota, Batam, Kepulauan Riau', '211810298@stis.ac.id', 'RB03', 'S009', '301', 'J004', NULL, NULL, '2020-11-29 06:31:58', 1, 'QDivoyKtL6rfuAMxQYEKTAeoW'),
('211810302', 'FAYADH ABIYYI', '3SK4', 'DIV STATISTIKA', '089683830589', 'Desa Bandung RT 01 RW 03 Kecamatan Kebumen Kabupaten Kebumen Jawa tengah', '211810302@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-30 12:39:33', 1, 'qC2kLUjDJRND5BDlwrhFAZ59w'),
('211810303', 'FEBRIYENI SUSI', '3SE4', 'DIV STATISTIKA', '087885240163', 'Jl. Semar, Bekasi', '211810303@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-30 12:25:30', 1, 'dItcYhSakmf67HgbVNDejmOaV'),
('211810305', 'FERRY MARGANDA SIREGAR', '3SE1', 'DIV STATISTIKA', '081362711331', 'Jl. Mulia No.16, RT08/RW08, Kampung Melayu, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, DKI. Jakarta, 13330', '211810305@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, 'cc9ab8013e87aa824c6e2fb670bacd4e.jpeg', '2020-11-30 11:31:30', 1, 'F0nRXpp5QbtzgOF9drj3zlUVa'),
('211810307', 'FINA FAUZIYAH ', '3SK3', 'DIV STATISTIKA', '08987865177', 'Gang H. Abdurrahman RT.01/RW.09 Jatinegara, Jakarta Timur', '211810307@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-30 14:19:37', 1, 'CmkO971S7nS7SVF28rp8CAbhf'),
('211810308', 'FIRDAYANTI AMIR', '3SE5', 'DIV STATISTIKA', '082293473154', 'Jl sensus 2c no 2 RT 003 RW 04 Bidara Cina 13330', '211810308@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-28 11:39:52', 1, 'Q7sDFqCwLkADVKMuylC6Md8yt'),
('211810310', 'FITRI NOOR HIKMAH', '3SK4', 'DIV STATISTIKA', '085211838814', 'Jl. Sensus 1 No.8', '211810310@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-29 12:00:27', 1, 'EzQZjJ5cVWd7j99UAjvdor2hd'),
('211810311', 'FIVA RENAS OKTI DEWANTI', '3SE2', 'DIV STATISTIKA', '087715206266', 'Jl. Otista Raya, Gang Sholihun No. 17 RT 13 RW 09 (Kos Bu Kiki), Kode pos 13330, Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810311@stis.ac.id', 'RB04', 'S004', '400', 'J004', NULL, NULL, '2020-11-28 17:08:01', 1, 'LDpwzUpJRMqC2OQtYUdIPqOEt'),
('211810313', 'FRANSHOLY ADE RISKI', '3SK2', 'DIV STATISTIKA', '089669466400', 'Jl Otista 3, gang Kebon Nanas Utara 1 No. 6 RT 02/07, Kelurahan Cipinang Cempedak, Jakarta Timur', '211810313@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 12:27:56', 1, '18b2wj9e8zRXqWbthFJPGL1KI'),
('211810315', 'GABRIELA NATALIE AMELIA MAHARANIE ', '3SK5', 'DIV STATISTIKA', '085271803725', 'Gg. Sholihun No. 10, Otista Raya', '211810315@stis.ac.id', 'RB08', 'S008', '001', 'J004', NULL, NULL, '2020-11-30 17:02:10', 1, 'SSv9VUoTvWKWEvbH4KCBdl0qv'),
('211810316', 'GEDE NANDA WARTAYANA', '3SE2', 'DIV STATISTIKA', '081237175537', 'Jl. Setia No. 4', '211810316@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-28 13:38:31', 1, 'm8Ic1XKjGrgGbUhZYLVgjKhAa'),
('211810317', 'GHINA ROFIFA SURAYA', '3SK1', 'DIV STATISTIKA', '082286243765', 'Jl. Wr. Supratman No. 18, Simpang Apar, Kecamatan Pariaman Utara, Kota Pariaman, Sumatera Barat', '211810317@stis.ac.id', 'RB04', 'S013', '001', 'J004', NULL, NULL, '2020-11-30 21:12:04', 1, 'FayZLMvjtiSZhP7TgTkhugfbk'),
('211810319', 'GRESTI JELITA SARI', '3SE1', 'DIV STATISTIKA', '085851757874', 'Jl. Masjid No. 35 RT 10 / RW 09, Bidara Cina, Kp. Melayu, Jatinegara, Jakarta Timur', '211810319@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-28 16:28:51', 1, 'k0WGQjr73rUcV5JVizIi4IozH'),
('211810320', 'HABEL NITALESSY', '3SK5', 'DIV STATISTIKA', '082291162528', 'Jl. Otista II No 26 RT.04/RW.09', '211810320@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 15:37:32', 1, '4kM8OOaVdIr1lwQWZHD8XfYEQ'),
('211810321', 'HABNI HAMARA AZMATIY', '3SK1', 'DIV STATISTIKA', '083838201166', '-', '211810321@stis.ac.id', 'RB02', 'S013', '001', 'J004', NULL, NULL, '2020-11-30 15:57:52', 1, 'eDtB7mx63ZvNgR1bqlKlhOTXn'),
('211810322', 'HAFIZUR RAHMAN', '3SK1', 'DIV STATISTIKA', '082389486996', 'Gg.Mangga No.20', '211810322@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-30 09:58:04', 1, 'TVUYpGWUHG1C8zNzB9q4RIkfH'),
('211810323', 'HANIFA CHOIRUNNISA', '3SE2', 'DIV STATISTIKA', '085285471162', 'Jl. KH Agus Salim RT 05 RW 07 No.50 Bekasi Jaya Bekasi Timur Kota Bekasi 17112', '211810323@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-29 19:23:10', 1, '4XDBTmJUkD9WsKEHUiDNUhquV'),
('211810324', 'HANIFAH', '3SK2', 'DIV STATISTIKA', '087872275786', 'Jl. Saabun', '211810324@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-28 11:51:13', 1, 'nbktx2hvIKx5z606GMTcsAlMH'),
('211810326', 'HASYIMUR RUSDI', '3SE1', 'DIV STATISTIKA', '085259479323', 'Jl. Kebon Nanas Utara II No.21', '211810326@stis.ac.id', 'RB01', 'S011', '001', 'J003', NULL, NULL, '2020-11-29 07:23:25', 1, 'HidBx2nUDzA0PmuncCYbam88W'),
('211810328', 'HERBIAN DWI CAHYO', '3SK2', 'DIV STATISTIKA', '081291573798', 'Jl. H.Yahya No.45', '211810328@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-30 10:31:03', 1, 'OEqsWVP8cRpzkeiphcHebbmpn'),
('211810329', 'HERIKA SOFITA PUTRI', '3SE3', 'DIV STATISTIKA', '085328984803', 'Jl Kebon Nanas Utara I No.32 Bidara Cina Jatinegara Jakarta Timur', '211810329@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-30 08:57:33', 1, 'EEAHe4cItKbF4HBIxpxfl7yEi'),
('211810330', 'HIJRIAH NUR ISTIFANI', '3SK2', 'DIV STATISTIKA', '085244749762', 'Jl. Otista 2 No 29 ', '211810330@stis.ac.id', 'RB03', 'S012', '309', 'J004', NULL, NULL, '2020-11-30 03:04:40', 1, 'jNmJL4WYaBVnjuuqiN0vFPkUj'),
('211810331', 'HUSSEIN ADI PERMANA', '3SK1', 'DIV STATISTIKA', '087700723238', 'Jl. Kebon Nanas Utara I Gg Sabdalloh No 4A RT 03 RW 07 Kelurahan Cipinang Cempedak Jakarta Timur', '211810331@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-30 09:17:13', 1, 'OfjIPC0kcFmShKawiXuNl4Xq9'),
('211810332', 'I KADEK WIJAYANTARA', '3SE2', 'DIV STATISTIKA', '085792481054', 'Jl. Otista 2', '211810332@stis.ac.id', 'RB03', 'S009', '302', 'J003', NULL, NULL, '2020-11-30 09:02:54', 1, 'm11XUm8qe4pvTPYdzCZhDZKwY'),
('211810334', 'I WAYAN GEDE ANGGA KRISMAWAN', '3SE3', 'DIV STATISTIKA', '08990113766', 'Jl. Kebon Nanas Selatan 1 No. 18, RT 6 RW 8, Cipinang Cempedak, Jatinegara, Jakarta Timur 13340 (Kos Pasaribu Hijau)', '211810334@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-30 12:23:47', 1, 'p2YcZclMu4KznjdLRutgIql0u'),
('211810337', 'IKA REHULINA OKTARI MONITA SURBAKTI', '3SK4', 'DIV STATISTIKA', '081320919536', 'Jl. Setia No 8', '211810337@stis.ac.id', 'RB02', 'S012', '201', 'J004', NULL, NULL, '2020-11-30 15:20:52', 1, 'c1bpjBwxMXqrty04fdU85BxFS'),
('211810338', 'ILHAM AMINU ROSYID ', '3SK3', 'DIV STATISTIKA', '089644086571', 'Jln Kebun Sayur 1 No. 20 RT 03 RW 15, Bidara Cina,  Jatinegara, Jakarta Timur', '211810338@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-30 12:33:32', 1, '7VNz7DeyGNV88CmipqVRhKtbG'),
('211810341', 'INDAH FATIMAH AZZAHRA', '3SE5', 'DIV STATISTIKA', '081342751791', 'Jl. Kebun Sayur I No. 13 RT/RW 002/015 ', '211810341@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-30 08:05:40', 1, 'ldKiAUWKAIKKsxyRPWYXsuwGg'),
('211810342', 'INDRI PUSPITA DEVI', '3SK3', 'DIV STATISTIKA', '089626883625', 'Jl Dawel No 8 RT 005 RW 009 Bidaracina Jatinegara Jakarta Timur ', '211810342@stis.ac.id', 'RB08', 'S008', '807', 'J006', NULL, NULL, '2020-11-30 09:42:36', 1, '6pmBhbKlQpI5bXp1IQCRNSHfb'),
('211810344', 'INTAN KHARISMAYANTI', '3SE1', 'DIV STATISTIKA', '085922196464', 'Jl Sribungur Dusun Kalirejo RT/RW 04/08 Desa Jatibaru Kecamatan Tanjung Bintang Kabupaten Lampung Selatan ', '211810344@stis.ac.id', 'RB08', 'S007', '001', 'J005', NULL, NULL, '2020-11-20 16:45:15', 1, 'mPxMIXcLnPFaRVC9ow2avaMjM'),
('211810345', 'IRAMA SUKMA FUTRIANI SIMBOLON', '3SE2', 'DIV STATISTIKA', '081395646242', 'Jl.Asem No.77', '211810345@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-28 00:23:32', 1, 'ZPR64on8EhL7Wb74tporUOSGi'),
('211810346', 'IRENE SAVIRA GABRIELLA SITANGGANG', '3SE4', 'DIV STATISTIKA', '081224181420', 'Jl. Otto Iskandardinata 64A, Gang Sensus I No 13, RT 01/RW 04, Kelurahan Bidaracina, Jatinegara, Jakarta Timur, Kode Pos 13330', '211810346@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-28 00:41:39', 1, 'VZnw6YSYyxtCPQHbGeOal1oGH'),
('211810347', 'IRFAN NURHADY', '3SK4', 'DIV STATISTIKA', '082133666247', 'Jl. Kebon Nanas Utara Ii No.25 RT 03/RW 04 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810347@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-30 13:42:00', 1, '1jWdAKCpTS5uOtxeN3xsuGEE1'),
('211810348', 'IRFAN PRASETYA KAMAJAYA', '3SE3', 'DIV STATISTIKA', '087747535594', 'Gg. H. Hasbi 2 No 14 RT 11/RW 09 Kel.Bidaracina,Kec. Jatinegara,Jakarta Timur', '211810348@stis.ac.id', 'RB08', 'S007', '804', 'J003', NULL, NULL, '2020-11-24 08:38:51', 1, 'okzUyxu2pTHzkxLgbemDdHBoo'),
('211810349', 'IRHAMNI MAULIDAH', '3SE3', 'DIV STATISTIKA', '082276228812', 'Jl. Sensus 1 No 2C, RT/RW 01/04, Bidaracina, Jatinegara, Jakarta', '211810349@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-29 12:27:27', 1, '3bDUVPtgkOjzrNZ16qiP0u027'),
('211810351', 'ISTU INDAH SETYANINGSIH', '3SE3', 'DIV STATISTIKA', '082226048320', 'Jl. Mulia No.20 (Kost Bu Icah), Bidara Cina, Jakarta Timur', '211810351@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-30 15:37:04', 1, 'ryA62lbQIMaRjVslf4qPTqxO2'),
('211810353', 'IVAN MASDUQI MAHFUDS', '3SE4', 'DIV STATISTIKA', '081216473536', 'Jl. Otista Raya Gang Mangga RT 07 / RW 03 No 5 Bidaracina Jakarta Timur', '211810353@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-28 10:29:44', 1, 'XIA0fWoJKVfoRNYr7VBSBm96o'),
('211810355', 'JASIKA LISAYOANA', '3SE5', 'DIV STATISTIKA', '085923182566', '	Graha Fialdis, No. 6A, Jl. Saabun, Kampung Melayu, KOTA JAKARTA TIMUR, JATINEGARA, DKI Jakarta, ID, 13330', '211810355@stis.ac.id', 'RB04', 'S012', '001', 'J004', NULL, NULL, '2020-11-30 09:13:02', 1, 'XTg6YrItRJuO6Xgnm1x1HnODf'),
('211810356', 'JODY', '3SE4', 'DIV STATISTIKA', '085264939798', 'Gang Mangga Nomor 20 RT 01 RW 03 Kelurahan Bidaracina Kecamatan Jatinegara Jakarta Timur', '211810356@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-29 16:39:04', 1, 'GKvBkbv5AAHjTZHubYa8YS80K'),
('211810357', 'JOFRI ARDO TIGANNA SEMBIRING', '3SE5', 'DIV STATISTIKA', '081375805747', 'Jl. Setia No. 26', '211810357@stis.ac.id', 'RB02', 'S012', '204', 'J006', NULL, NULL, '2020-11-30 12:39:25', 1, 'CE8vUGfJQZRVWrjvpF9o9LD1l'),
('211810358', 'JOHANSEN RENALDI HUTAGALUNG', '3SK5', 'DIV STATISTIKA', '081218690180', 'Jl.Bonasut II No.20 RT.01/RW.07 Kel.Cipinang Cimpedak Kec.Jatinegara, Jakarta Timur', '211810358@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-28 13:02:24', 1, 'bPTUXZ8htjNhlfurC03fdAEo0'),
('211810361', 'JONATHAN SITANGGANG', '3SE1', 'DIV STATISTIKA', '085669037082', 'Jl Kebon Nanas Selatan I No 18A', '211810361@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 02:42:33', 1, 'PZ73WQO8LOapRhAt3Kpv8Uszh'),
('211810362', 'JOSUA REGINAL NAPITUPULU', '3SK1', 'DIV STATISTIKA', '081315450569', 'Jl. Otista II No 25A', '211810362@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-26 12:52:42', 1, '5i66afrA1cytssPTd5Dbmj928'),
('211810363', 'JUANDO SIALLAGAN', '3SE2', 'DIV STATISTIKA', '085283165467', 'Jl. Melanthon Siregar Pematangsiantar', '211810363@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-28 12:57:48', 1, '0n5LAMqj5TYefEPalWFJ1gfe5'),
('211810364', 'JUDITH RIO OLOAN', '3SK3', 'DIV STATISTIKA', '087777858684', 'Jln. Kebon Baru 4 No. 25, Tebet, Jakarta Selatan', '211810364@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-30 17:31:48', 1, 'IF5b62VpBoGUcwKQwsRsv74Nn'),
('211810365', 'JULIA IFFAH SAIFULLAH', '3SK4', 'DIV STATISTIKA', '085728403180', 'Jl. H. Yahya No.271, RT.1/RW.10, Kp. Melayu, Jatinegara, Jakarta Timur', '211810365@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-30 03:09:40', 1, '5EWpK9vGHBV24U9BPejlgoaMY'),
('211810366', 'KADEK ANGGA WICAKSANA', '3SE3', 'DIV STATISTIKA', '081909011197', 'Jl. Otista II RT 03/09 (Kos Haji Anang Dekat Kali Lantai 2) Kel Bidara Cina', '211810366@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-28 13:23:25', 1, 'cUcXaC0v8FLoOs2S8fpiNgxBB'),
('211810367', 'KADEK DWI ADITYA PUTRI', '3SK5', 'DIV STATISTIKA', '085858019642', 'Jl. Otista II, RT03/RW09, Kelurahan Bidaracina, Kecamatan Jatinegara, Kota Jakarta Timur, Provinsi DKI Jakarta', '211810367@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-30 09:10:13', 1, '3djsKpV3H6aXNxvYt6HclVwsA'),
('211810368', 'KADEK DWI MAHARDIKA', '3SE4', 'DIV STATISTIKA', '089518302293', 'Jl. Otista II RT 03 RW 09 Kel Bidara Cina, Jatinegara', '211810368@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-28 12:51:26', 1, 'HqHx5P40jMTLbtzO1nyfvvVI5'),
('211810369', 'KANDITA ABDINA', '3SE1', 'DIV STATISTIKA', '082267452316', 'Jln. Otista Raya Gg Mangga No 31 RT 04 RW 03', '211810369@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-30 09:27:45', 1, 'Vtso9ofw3ZwVRl8ORE8lh5D7i'),
('211810371', 'KESZYA GRACIELLA', '3SK2', 'DIV STATISTIKA', '081310102347', 'Jl. Kenari III No. 20 RT 05 RW 05', '211810371@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-30 09:15:03', 1, 'Eb4mifj6MO4fUMsfIYIjNOcxQ'),
('211810372', 'KATRIN EDVIRGIS BERIBE', '3SK1', 'DIV STATISTIKA', '082247249782', 'Jl. Sensus 1 Nomor 8 RT/RW 004/015 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur', '211810372@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-28 00:08:35', 1, 'JADcTfI9Ki4SeezT23AEiMKnH'),
('211810373', 'KEYAT AJRIYANTO', '3SE5', 'DIV STATISTIKA', '08815651053', 'Jl. Otista Gg. Sensus 1A/20 RT/RW : 05/15 Kel. Bidaracina, Jakarta Timur.', '211810373@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-30 07:01:21', 1, 'CmIMcLNsOs0CHg41M8Z8AZtlB'),
('211810374', 'KEZIA SIBUEA', '3SK3', 'DIV STATISTIKA', '081375907912', 'Jl Setia No 4', '211810374@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-28 09:27:40', 1, 'kLVcFejuKnQxoNsfzoaooNZVQ'),
('211810375', 'KHOIRON FILSAFAT', '3SE1', 'DIV STATISTIKA', '082361646803', 'Jl. Ayub No. 17, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810375@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-30 09:24:58', 1, 'QXgqK6iFSBKDOajqO4qJ64LHH'),
('211810379', 'KURNIAWAN TRI YULIANTO', '3SK2', 'DIV STATISTIKA', '085823252854', 'Jl. Sensus IIa No.1 RT 007 RW 004 Bidaracina, Jatinegara, Jakarta Timur', '211810379@stis.ac.id', 'RB04', 'S009', '001', 'J003', NULL, '2ef2143eb9799440fd65e012a9ab6cb4.jpg', '2020-11-27 01:01:44', 1, 'erSPOGFvTZr8pvmhD7qerZikQ'),
('211810380', 'L.M.RIZAL', '3SE2', 'DIV STATISTIKA', '081283353881', 'Desa Liya Bahari Indah, Kec. Wangi-Wangi Selatan, Kab. Wakatobi, Prov. Sulawesi Tenggara, Negara Indonesia', '211810380@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-30 14:13:25', 1, 'ExW7FkTHJaxCqYBUn53xwgCEQ'),
('211810381', 'LAILA CHOIRUN NI\'MAH', '3SK4', 'DIV STATISTIKA', '085875317881', 'Jl. Mulia No 20, RT 8 RW 8, Bidaracina, Jatinegara, Jakarta Timur 13330', '211810381@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-30 14:54:05', 1, 'pL0sVGgoT3kRUbeWajLYGp5hw'),
('211810382', 'LAILY NUR INDAH SARI', '3SE4', 'DIV STATISTIKA', '082301507145', 'Jln Sensus II No 9A RT 002 RW 004 Kel. Bidaracina Jatinegara Jakarta Timur', '211810382@stis.ac.id', 'RB02', 'S009', '001', 'J005', NULL, NULL, '2020-11-29 09:17:56', 1, 'mjwzqB9mVIB2D9Jg36aKHLHED'),
('211810384', 'LANA EKA WIBAWA', '3SE2', 'DIV STATISTIKA', '0895616508544', 'Jln. Sensus II No.30 Rt/Rw 002/004 Kel. Bidaracina Kec. Jatinegara Jakarta Timur', '211810384@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-28 00:42:00', 1, 'cknPqZI2aj3MPmlKooWhABnK6'),
('211810385', 'LARA ALEVA VABIAN', '3SK5', 'DIV STATISTIKA', '089636997206', 'Jl.Gatot Subroto,Ngalau,Padang Panjang Timur,Sumatera Barat', '211810385@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-28 10:32:00', 1, 'S7SLzHyjeH6SvLl2jq0tTc4pV'),
('211810387', 'LASRO MANGIRING TUA MARBUN', '3SE3', 'DIV STATISTIKA', '082294046523', 'Jl.Mulia No.16,RT 008/RW 008,Kel.Bidara Cina', '211810387@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-30 04:31:19', 1, 'Ryz6pTBMtJr5wG4N8owD2xTzM'),
('211810388', 'LELY INDAH GURITNO', '3SE2', 'DIV STATISTIKA', '089676078606', 'Jl. Kebon Nanas Selatan 2 No.12', '211810388@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-29 12:23:27', 1, '6jQSTXwhp1w3eKAUiZ7BrksQP'),
('211810390', 'LING LYNG FITROTUN NASIHA', '3SE3', 'DIV STATISTIKA', '085745175423', 'Desa Krai, Dusun Krajan, Yosowilangun, Lumajang', '211810390@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-30 14:24:35', 1, 'UQY5IrOghp0uie9aYUygPQzuT'),
('211810391', 'LISA AGUSTINA', '3SK1', 'DIV STATISTIKA', '081937934280', 'Jl. H. Hasbi No.7, RT 10 / RW 09, Kel.Bidaracina, Kec.Jatinegara, Jakarta Timur', '211810391@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-21 06:15:10', 1, 'ELxU4WnakxNXmaCSR54cdv4wM'),
('211810393', 'M CHAIRUL MUGTI', '3SE4', 'DIV STATISTIKA', '089691941697', 'Jl. Kebon Nanas Selatan 1 No.17 RT 10 RW 08, Kelurahan Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810393@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-30 17:27:40', 1, 'EsI8wpvxYwSONtbzBMLGrB3wI'),
('211810395', 'M RIFQI JUNDULLAH', '3SE5', 'DIV STATISTIKA', '0895600525123', 'Jl. Kebon Nanas Selatan 1 No.17 RT 10 RW 08, Kelurahan Cipinang Cempedak, Jatinegara, Jakarta Timur 13340', '211810395@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-23 13:11:13', 1, 'i7S7nbUQSvKm7QUMhTHXs3vip'),
('211810399', 'MUHAMMAD RIFKY ARIYADI', '3SK5', 'DIV STATISTIKA', '082250704750', 'Jl. Asem No. 4C, RT 01/RW 03 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '211810399@stis.ac.id', 'RB03', 'S009', '303', 'J003', NULL, NULL, '2020-11-30 16:02:59', 1, '8hoCfBxVdEQOd2wxAR9p2lC8I'),
('211810401', 'MUHAMMAD SHOLAHUDDIN AL\'ISLAMI', '3SE5', 'DIV STATISTIKA', '082370298532', 'Jl. Otista II No.25, RT.7/RW.9, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta, Indonesia, 13330', '211810401@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, '0ebe065165b52b75fc56a064555699fb.jpeg', '2020-11-30 13:42:59', 1, 't7pK4NpUB8D3d47zeRme5Gqpy'),
('211810405', 'MUHAMMAD ALFARIS KURNIAWAN', '3SE3', 'DIV STATISTIKA', '085279727538', 'Jln Otista 3 Gang Kh Sabdallah Kebon Nanas Utara 1, Kontrakan Laa Tahzan, Kel. Cipinang Cempedak, Kec. Jatinegara', '211810405@stis.ac.id', 'RB03', 'S004', '300', 'J001', NULL, NULL, '2020-11-30 11:52:04', 1, 'G1L03lRCvYoEG5SUyjcx6qPn1'),
('211810408', 'M. RAJA DARUSSALAM', '3SE1', 'DIV STATISTIKA', '08814082293', 'Gg. H. Acang 03/20 No. 7 Kel. Baktijaya, Kec. Sukmajaya, Kota Depok', '211810408@stis.ac.id', 'RB01', 'S011', '106', 'J003', NULL, NULL, '2020-11-29 15:32:34', 1, 'JHJpkVgK4Zo1f7Zbe9D5nezr0'),
('211810409', 'MAHARANI IZZATURRAHMA', '3SE4', 'DIV STATISTIKA', '081330338270', 'Jl. Sensus 2B No 11A, Bidaracina', '211810409@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-30 21:57:28', 1, 'Bc8cq5q7mlSlZztr5D5IlI2wf'),
('211810410', 'MANCA SATRIA', '3SK2', 'DIV STATISTIKA', '081292525682', 'Jl Haji Yahya No 45, Bidaracina, Jatinegara, Jakarta Timur', '211810410@stis.ac.id', 'RB02', 'S012', '204', 'J006', NULL, NULL, '2020-11-30 12:07:21', 1, 'naiZwLSvwfCHxnaQTvuj8k7mq'),
('211810411', 'MARDHATILLA', '3SK2', 'DIV STATISTIKA', '082182663112', 'Jl. Hasbi Dalem Nomor 9, RT.12, RW.09, Kel. Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810411@stis.ac.id', 'RB02', 'S012', '001', 'J004', NULL, NULL, '2020-11-30 12:25:15', 1, 'aSnTkHxPqdkmT0DmaZzUI7Rcv'),
('211810413', 'MARINA TIKA SARI', '3SK3', 'DIV STATISTIKA', '089637114559', 'Jl. Sei Padang Gg Buntu No 13 Medan, Sumatera Utara', '211810413@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-29 12:23:00', 1, 'ckcoDPpB0FgrWSx2GsaB9Og3p'),
('211810415', 'MAULIA SAVANA PUTRI', '3SE5', 'DIV STATISTIKA', '087789671059', 'Jl. Otista Raya Gang Haji Dawel', '211810415@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-24 22:11:20', 1, 'EqaRvZrta4CMorFreCGYNtDb8'),
('211810416', 'MAYMANATUL MUFARROHAH', '3SK3', 'DIV STATISTIKA', '08170723421', 'Jl. Sensus IIb Nomor 11B Bidaracina, Jatinegara, Jakarta Timur', '211810416@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, 'e647e985e51e8a915df29bd992695bc6.jpg', '2020-11-26 13:55:22', 1, 'n7xCE7MZ6a1O7qrerXYgVO60G'),
('211810419', 'MIFTAHUL HUDA ARIFANDI', '3SE5', 'DIV STATISTIKA', '081217935550', 'Gg Kh Sabdallah No 4A Jl. Kebon Nanas Utara', '211810419@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-28 04:44:47', 1, 'zGJx1oBjVO9KanA3cp68oCFKG'),
('211810420', 'MILLENIA SUKMA JUNIVA PUTRI', '3SK4', 'DIV STATISTIKA', '082232486475', 'Jl. Kebon Sayur 1 No 6 RT.08 RW.15 Bidaracina', '211810420@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-30 15:06:52', 1, 'gjS32Fe9lvfhFvPfVDaENzmpz'),
('211810423', 'MOCHAMMAD NAFI\' DZAKWAN', '3SE2', 'DIV STATISTIKA', '082244995849', 'Jln. Kebon Nanas Utara Gg. Ar-Rahim No. 15 RT 10/RW 07 Cipinang Cempedak Jatinegara Jakarta Timur 13340', '211810423@stis.ac.id', 'RB04', 'S013', '001', 'J003', NULL, NULL, '2020-11-30 06:44:13', 1, 'LRz4BPlB9bQob3VbNc5csGg0k'),
('211810424', 'MOCHAMMAD YUSUF MAULANA', '3SK3', 'DIV STATISTIKA', '085786000460', 'Jl. Mulia No.21, Bidaracina, Jatinegara', '211810424@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-30 16:01:07', 1, '8dlifD50j5Est9Il2GnqkWZ8F'),
('211810425', 'MOH FAHRURROSI', '3SK4', 'DIV STATISTIKA', '087871916224', 'Jl. Kebun Nanas Utara I No.6 RT.02 RW.07 Cipinang Cempedak, Jatinegara', '211810425@stis.ac.id', 'RB04', 'S009', '401', 'J003', NULL, NULL, '2020-11-28 14:49:03', 1, '8mni0ZZszdF22eg2wBC4V31Gy'),
('211810426', 'MOHAMAD NUR ARIFIN', '3SE1', 'DIV STATISTIKA', '085720414741', 'Jl. H. Hasbi No. 5 RT009/RW009, Bidara Cina, Jatinegara, Jakarta Timur', '211810426@stis.ac.id', 'RB01', 'S010', '101', 'J006', NULL, NULL, '2020-11-29 12:27:01', 1, 'cNRncPuhfKJ84WOs40LPd14nb'),
('211810427', 'MONICA NADIA RATRI', '3SE5', 'DIV STATISTIKA', '089673909739', 'Jl. Otto Iskandardinatta II No. 23 Rt. 3 / Rw. 9 Kel.  Bidara Cina, Kec.  Jatinegara,  Kota Jakarta Timur,  DKI Jakarta. Kode Pos 13330.', '211810427@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-28 14:14:58', 1, 'DyfZruOVXxu6rbjdoxegHdtvv'),
('211810428', 'MONITA PURBA', '3SE4', 'DIV STATISTIKA', '085283191375', 'Gang Haji Dawel, No.22 RT.05, RW 09', '211810428@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-28 13:28:21', 1, 'ZpodMVXsLvnF8pvd3odi4PNdb'),
('211810435', 'MUH. RIFKY FAJRIN HASRIN', '3SK4', 'DIV STATISTIKA', '082192255385', 'Kost Bu Yanti Jl.Otista Raya 78 No.25/11, RT.3/RW.5, Kp. Melayu, Jatinegara, Kota Jakarta Timur, DKI Jakarta .', '211810435@stis.ac.id', 'RB03', 'S012', '001', 'J003', NULL, NULL, '2020-11-30 12:53:53', 1, 'kCJLMoVWL4ICdbx2S7kn5DmC7'),
('211810438', 'MUH. YUDI PRATAMA', '3SE3', 'DIV STATISTIKA', '081343632728', 'Jln Sensus 2 RT. 10  RW. 04 No. 26', '211810438@stis.ac.id', 'RB01', 'S016', '109', 'J003', NULL, NULL, '2020-11-30 15:10:44', 1, 'xMKO3W1JJbgTVLkFu5fT4xEfc'),
('211810439', 'MUH. ROBBITH DINAK', '3SK5', 'DIV STATISTIKA', '085727017237', 'Jl Kebon Nanas Utara 2 No 25 RT 5 RW 7, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810439@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-28 12:37:32', 1, 'UUqwrfHEE1A76caoT2pX78TWa'),
('211810441', 'MUHAMAD FIKRI RAMDHANI', '3SK1', 'DIV STATISTIKA', '081218609650', 'Jl. Dadap V No.23 Komplek Atsiri Permai RT.10 RW.12 Desa Ragajay, Kecamatan Bojong Gede, Kabupaten Bogor, Jawa Barat, 16920', '211810441@stis.ac.id', 'RB02', 'S012', '001', 'J003', NULL, NULL, '2020-11-30 12:56:14', 1, 'OrCvUnbMzKlgqZNwWPaMXKzJ2'),
('211810442', 'MUHAMAD RIZKIANSYAH', '3SK2', 'DIV STATISTIKA', '081563753224', 'Jl. Asem Gg. Mangga No 24A Jakarta', '211810442@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-28 12:36:56', 1, 'uyocUXy4jZlSpbdbUytUQ4tf8'),
('211810443', 'MUHAMAD TAUFIK HIDAYAT', '3SE4', 'DIV STATISTIKA', '081293794092', 'RT/RW 05/02 Desa Peusing Kecamatan Jalaksana Kabupaten Kuningan Provinsi Jawa Barat', '211810443@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-29 12:29:24', 1, 'I57KNhPZtwNJ265Ojg8OridPo'),
('211810444', 'MUHAMMAD AFIYF BESARI', '3SK5', 'DIV STATISTIKA', '082182069641', 'Jl. Kebon Nanas Selatan II No 19 RT 6 RW 5 Lt 2', '211810444@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-29 15:03:49', 1, '5IqN5yqHBzis0Nel5YRh3m1nZ'),
('211810447', 'MUHAMMAD ALIYASQI AKBAR', '3SE5', 'DIV STATISTIKA', '081281225494', 'Jl. Trikora Blok A2 RT/RW 001/005 Lingkungan Palamanis, Cirimekar, Cibinong, Bogor', '211810447@stis.ac.id', 'RB02', 'S013', '001', 'J003', NULL, NULL, '2020-11-30 16:02:26', 1, 'kUPl2hTQBAFdWn9WeVSUoOoZE'),
('211810450', 'MUHAMMAD BILAL DWI APRIYOGA', '3SK3', 'DIV STATISTIKA', '082124319532', 'Gg. K.H. Sabdalloh No.6, RT.2/RW.7, Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '211810450@stis.ac.id', 'RB03', 'S012', '307', 'J003', NULL, 'be7499f1b685641f92f10dc2b620e631.jpg', '2020-11-30 12:39:22', 1, 'jEYFswaAtcqT6pNq2KPbyQbYv'),
('211810451', 'MUHAMMAD DAFFA RASDITYA', '3SK4', 'DIV STATISTIKA', '082261644990', '-', '211810451@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-28 03:37:43', 1, 'vjZQr1DYajj0ycYamaMxt4f7x'),
('211810453', 'MUHAMMAD FADHILAH AKBAR', '3SE2', 'DIV STATISTIKA', '087781563110', 'Jl. Hasbi 2 No 14 Cipinang Cempedak, Jakarta Timur', '211810453@stis.ac.id', 'RB01', 'S011', '105', 'J006', NULL, NULL, '2020-11-29 15:32:48', 1, 'tWfNYLA52HvcEq2wCJ1OnX0QR'),
('211810455', 'MUHAMMAD GHOFUR', '3SE1', 'DIV STATISTIKA', '081294295019', 'Jl. Al-Amanah, Rt 009 Rw 10 No. 90E, Kelurahan Wijaya Kusuma, Kecamatan Grogol Petamburan, Jakarta 11460', '211810455@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-30 08:58:42', 1, 'kXt22Lw4jkXA8nWwohWr3SJN0'),
('211810456', 'MUHAMMAD HABIB RABBANI', '3SK5', 'DIV STATISTIKA', '089651506456', 'Gg Arrohim No.15 RT 10/RW 07, Jl. Kebon Nanas Utara, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta', '211810456@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-29 13:49:13', 1, 'SMwwBpbbtv9VLvtL3z4fYcIDi'),
('211810458', 'MUHAMMAD IBNU HAIDAR BASYIR', '3SE3', 'DIV STATISTIKA', '083114976726', 'Perumahan Puri Citra Blok F4 No 26 Gg. Empat, Pipitan, Walantaka, Kota Serang, Banten', '211810458@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-30 12:44:18', 1, '0DMJjgFix2QcjxFI7yedyh3Nr'),
('211810460', 'MUHAMMAD IKHWAN AGUNG PAMUJI', '3SE2', 'DIV STATISTIKA', '085392194771', 'Bonasel 3', '211810460@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-30 10:15:46', 1, 'j9yxNfVPvTVo7aHk6jXAE5Vg9'),
('211810461', 'MUHAMMAD IMAM AL-MATIN', '3SK1', 'DIV STATISTIKA', '085376731637', 'Jl. Kebon Nanas Selatan 1 No 3 RT 14 RW 8 Kota Jakarta Timur', '211810461@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-30 00:50:58', 1, 'aQwI27fpuzIhmczdmu7eQTHAH'),
('211810462', 'MUHAMMAD IQBAL', '3SE3', 'DIV STATISTIKA', '085155380112', 'Jl. Iswahyudi IV BD1/12 Bumi Dirgantara Permai Bekasi Jawa Barat', '211810462@stis.ac.id', 'RB02', 'S012', '202', 'J003', NULL, NULL, '2020-11-30 11:03:53', 1, 'fS9W8lnk5nqo5Vqe8Y9WWl7mn'),
('211810463', 'MUHAMMAD IQBAL MUHARRAM', '3SK1', 'DIV STATISTIKA', '085717497604', 'Jl. Ayub No.6A Rt 15/08, Kelurahan Kampung Melayu, Kecamatan Jatinegara, DKI Jakarta, 13330', '211810463@stis.ac.id', 'RB08', 'S006', '801', 'J003', NULL, NULL, '2020-11-30 17:31:36', 1, 'a5foWwQMJrMRodQ4kBEHtemva'),
('211810464', 'MUHAMMAD KHAIRI ALBANNA S.', '3SK2', 'DIV STATISTIKA', '081383086701', 'Jl. Kebon Nanas Selatan II, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810464@stis.ac.id', 'RB08', 'S008', '807', 'J003', NULL, NULL, '2020-11-28 13:10:57', 1, '59BE8I1VGj1lOeSb9cDASKOUa'),
('211810465', 'MUHAMMAD LATIF AL BANNA', '3SK3', 'DIV STATISTIKA', '087780875569', 'Jl Bonasut 2 No 21A Jatinegara Jaktim', '211810465@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 17:55:20', 1, 'uKdYXN71NJvK3ARVe8GVNyeGD'),
('211810466', 'MUHAMMAD MUHDLOR MUTTAQIN', '3SE4', 'DIV STATISTIKA', '082260412959', 'Jl. Ayub 6A', '211810466@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-29 04:46:15', 1, 'UWR0SF7stx7Oigpef32ZWGXYu'),
('211810467', 'MUHAMMAD MUSLIM SHODIQI', '3SK4', 'DIV STATISTIKA', '085713721220', 'Gg. H. Abd Rahman No.34, RT.4/RW.9, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810467@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-29 11:21:38', 1, 'UT9nY3PnBuzAcAxL9leepeCdW'),
('211810469', 'MUHAMMAD NOR AHYANDI', '3SK3', 'DIV STATISTIKA', '0895703687237', 'Jl. Masjid No.25B RT.12 RW.09', '211810469@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-30 12:22:04', 1, 'IT5XeyolbPz0wKy9RD57nBYv6'),
('211810470', 'MUHAMMAD NUR MEGANTORO', '3SK4', 'DIV STATISTIKA', '085717645443', 'Jl. Kebun Sayur 1 Nomor 5 RT 009 RW 015, Kebon Sayur, Bidaracina, Jatinegara, Jakarta Timur', '211810470@stis.ac.id', 'RB04', 'S009', '403', 'J003', NULL, NULL, '2020-11-28 16:13:55', 1, 'cTCvBDZdJX87ovAGk0GpTRBVy'),
('211810471', 'MUHAMMAD NURUL MAULID', '3SE5', 'DIV STATISTIKA', '082268655575', 'Jl Asem , No.26 RT 14 RW 02', '211810471@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 02:45:51', 1, 'jCumg6Ys96FVZOBUf0krWO7mZ'),
('211810475', 'MUHAMMAD RIZKY ZIDANE', '3SE4', 'DIV STATISTIKA', '081372942145', 'Jl. Labersa No. D22 Perum GTU RT/RW 003/011, Kel. Air Dingin, Kec. Bukitraya, Pekanbaru, Riau.', '211810475@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-30 09:29:12', 1, 'F47sgpNVHHBWPOk8Zt6SOyyj1'),
('211810478', 'MUHAMMAD ZIYAD AHMAD', '3SE1', 'DIV STATISTIKA', '082337548682', 'Tuban, Jawa Timur', '211810478@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-27 15:40:52', 1, 'm8edlWizLSdC2FXJwOyd25ztG'),
('211810480', 'MURSIDAH ROSMALASARI', '3SK5', 'DIV STATISTIKA', '081930902980', 'Jl. Otista II Gang Haji Dawel Nomor 11 A Jakarta Timur ', '211810480@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-28 11:55:42', 1, 'PQcv72u7r8mOhM1o7k9zcwEvs'),
('211810482', 'NABILA ANINDITA', '3SK1', 'DIV STATISTIKA', '087703142700', 'Kedensari RT.13 RW.05 Kec. Tanggulangin Kab. Sidoarjo, Jawa Timur', '211810482@stis.ac.id', 'RB02', 'S004', '200', 'J005', NULL, NULL, '2020-11-26 01:34:31', 1, 'hRO68HmV8dgNdj8rTRGqA4E2A'),
('211810483', 'NABILA ARDYANA', '3SK4', 'DIV STATISTIKA', '083852787425', 'Pekuncen, RT 01 RW 04 Kec. Sempor, Kab. Kebumen', '211810483@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-30 11:19:48', 1, 'STw4tStsCez69HtFE9STdr015'),
('211810485', 'NABILA ISNANI FARRA', '3SK5', 'DIV STATISTIKA', '082112783827', 'Jl. Abdul Rahman No 16 Kos Sarah, Bidara Cina', '211810485@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-30 08:38:59', 1, 'ffRSZ9khy6yULifZUn8FfTNoP'),
('211810486', 'NABILA KHARISMA RAMADHANI', '3SK1', 'DIV STATISTIKA', '085719180308', 'Jl Sensus II, No 9 Bidara Cina', '211810486@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-30 11:55:11', 1, 'QGLxuBcsxdXlXTHWWzOh53a2g'),
('211810487', 'NABILA WARDASAKINA', '3SE5', 'DIV STATISTIKA', '082231512156', 'Jln. Kebon Nanas Selatan II, No.12, RT.11/RW.08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810487@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-29 06:20:17', 1, 'DeHhtH5wsCIvp0eQPXBOGJNG7'),
('211810488', 'NADIA ARISKA', '3SE1', 'DIV STATISTIKA', '08997453597', 'Jln. H.Yahya No.271 RT/RW 01/010 Bidaracina Jatinegara Jakarta Timur, DKI Jakarta', '211810488@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-30 09:27:58', 1, '5D5xbVsc9xCC854ftnIZv4aLK'),
('211810489', 'NADIDAH PANGESTIKA', '3SK2', 'DIV STATISTIKA', '082327306546', 'Jl. Sensus 1 No. 2C RT/RW 001/04 Kelurahan Bidara Cina, Jatinegara', '211810489@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 08:53:37', 1, 'XsCKVXehNTMKWmYzW5kj7jilM'),
('211810490', 'NADIYAH HANIFAH', '3SK2', 'DIV STATISTIKA', '085211540731', 'Komplek DKI, Jl. Tegal Agus 1 Blok E Bawah RT 002/008 No.36. Joglo, Kembangan, Jakarta Barat, DKI Jakarta', '211810490@stis.ac.id', 'RB03', 'S012', '307', 'J006', NULL, NULL, '2020-11-28 11:05:46', 1, 'dw08qYixzC3AT4FC1DqIw7l7K'),
('211810491', 'NADIYAH RIZQI JIHAN NABILAH', '3SE2', 'DIV STATISTIKA', '082123579370', 'Gang Sensus I No 15, RT01/RW04, Kel. Bidaracina, Jatinegara, Jakarta Timur', '211810491@stis.ac.id', 'RB04', 'S012', '404', 'J004', NULL, NULL, '2020-11-30 11:47:47', 1, 'l9j4NgSrnaFQbgDAuArzuFSB3'),
('211810492', 'NADYA NAMIRASEPTI EFENDI', '3SK3', 'DIV STATISTIKA', '085648527377', 'Jl. Kebon Nanas Selatan II No 36 RW 06 RW 05, Kel Cipinang Cempedak, Kec Jatinegara, Jaktim', '211810492@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-19 10:48:03', 1, 'rem1E5mLsveqxDeYrB961BRT4'),
('211810493', 'NAFISA QURROTUL A\'YUNI', '3SE3', 'DIV STATISTIKA', '085741791742', 'Jl. Otista II gg. H. Misnen No. 11 RT 007 / RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '211810493@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 16:10:56', 1, 'N35HuIhMS3DkIhk8FaDmycPPs'),
('211810495', 'NARWASTU NINGTHIAS', '3SK4', 'DIV STATISTIKA', '085381155268', 'Jln Kebon Sayur No.10 A RT 005/ RW 0015 Jakarta Timur, Jatinegara', '211810495@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-29 05:12:07', 1, 'iJ0nGtIk9KdF8MiDo7rIEP4L0'),
('211810498', 'NAUFAL ABDUL RAFI ZAQI', '3SK1', 'DIV STATISTIKA', '081220211965', 'Jl. Pengadegan Timur II No. 20, Pancoran, Jakarta Timur', '211810498@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-30 16:15:50', 1, 'eFBsUrtdJWuvYiUDsUjfKbufY'),
('211810500', 'NI MADE SINDU PADMAYONI', '3SE1', 'DIV STATISTIKA', '085792107997', 'Jl. Otista II RT 003 RW 009 Kos Pak Haji Anang', '211810500@stis.ac.id', 'RB02', 'S004', '200', 'J004', NULL, NULL, '2020-11-28 12:34:09', 1, 'oDO0AOJU4cwIFTBZSjonuNrSB'),
('211810501', 'NI NYOMAN RIA SUGIANDEWI', '3SK5', 'DIV STATISTIKA', '08978246304', 'Jl. Otto Iskandardinatta II No 9', '211810501@stis.ac.id', 'RB01', 'S004', '100', 'J001', NULL, NULL, '2020-11-29 12:09:02', 1, 'GOzDnVoWVQtzNSaGivWlXJTpm'),
('211810503', 'NOCA RAHMATULLAH', '3SE4', 'DIV STATISTIKA', '085363563027', 'Jl. H. Yahya, No. 271, RT 01/RW 10, Kelurahan Bidara Cina', '211810503@stis.ac.id', 'RB02', 'S009', '208', 'J004', NULL, NULL, '2020-11-30 07:16:58', 1, 'UnkLfrJFQHOQSUohLx3ezfRFh'),
('211810504', 'NOLA RAMASENTIA', '3SK1', 'DIV STATISTIKA', '087881064233', 'Gang Sensus 2B No.11A RT.09 RW.04 Bidaracina, Jatinegara, Jakarta Timur', '211810504@stis.ac.id', 'RB02', 'S012', '204', 'J004', NULL, NULL, '2020-11-30 18:02:22', 1, 'uyNarsO9NHHVOGbaDVOuhWXl6'),
('211810505', 'NOVALIANISA PERMATA SARI', '3SK2', 'DIV STATISTIKA', '082380683637', 'Jl Kebon Sayur 1 No 18 RT 006 RW 015, Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810505@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-29 03:07:34', 1, 's1CX3Rtsx1Tcc7hfmCeYp59wm'),
('211810506', 'NOVIA AKHLAQUL KARIMAH', '3SE5', 'DIV STATISTIKA', '083896386814', 'Gg. Hj. Dawel No. 12', '211810506@stis.ac.id', 'RB04', 'S009', '001', 'J004', NULL, NULL, '2020-11-30 12:29:12', 1, 'LHsePdYvtRTApr27pYHlUG0hk'),
('211810507', 'NOVITRA SAPUTRA', '3SK5', 'DIV STATISTIKA', '081276921301', 'Jl H Hasbi I No 8 RT 10 RW 09', '211810507@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-30 12:37:41', 1, 'L9IpuN2JzWqi5Ou2NtoQPqWXn'),
('211810508', 'NUGRAHENI PUTRI ISTIQOMAH', '3SE2', 'DIV STATISTIKA', '081578594978', 'Ngiri RT/RW 002/003 Ngemplak, Karangpandan, Karanganyar, Jawa Tengah', '211810508@stis.ac.id', 'RB02', 'S009', '001', 'J003', NULL, NULL, '2020-11-30 09:33:04', 1, 'Sj8nRR2yUH6j1vRmqwGAZMntl'),
('211810511', 'NUR AFNI EKA SAPITRI', '3SE3', 'DIV STATISTIKA', '085351552683', 'RT03/RW02 Kp. Cihanjuang, Ds. Sukaratu, Kec. Sukaresik, Kab. Tasikmalaya, Jawa Barat', '211810511@stis.ac.id', 'RB04', 'S009', '401', 'J006', NULL, NULL, '2020-11-30 11:35:25', 1, 'h4UMqzqu9WNwg5iz6HOVlBVnB'),
('211810512', 'NUR MAHARANI PUTRI UNISI', '3SK3', 'DIV STATISTIKA', '081362917485', 'Jl. Otista Raya Gg. Mangga RT 001 RW 003', '211810512@stis.ac.id', 'RB01', 'S010', '103', 'J006', NULL, NULL, '2020-11-29 12:40:29', 1, 'tzEsR3RnSZDfHOKgVwJfKAPmJ'),
('211810513', 'NUR MEILIZA', '3SK3', 'DIV STATISTIKA', '085282698169', 'Jl. Otista Raya, Gang Sholihun No. 15 RT. 15 RW. 08 Bidara Cina', '211810513@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-30 11:41:48', 1, 'PBoNwiJKjwv8JmogGEchqYKbW'),
('211810517', 'NURICHA INDAR DAMAYANTI', '3SK4', 'DIV STATISTIKA', '083834223484', 'Jl. Otista Raya Gg. Abdul Rahman ', '211810517@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-28 00:41:06', 1, '6rp7RD3ZLm98Fmr2xTD78yEYO'),
('211810519', 'NURUL AULIA RAHMI', '3SK5', 'DIV STATISTIKA', '085833507279', 'Jl H Yahya No 271 RT 1 RW 10 Jatinegara', '211810519@stis.ac.id', 'RB08', 'S006', '802', 'J004', NULL, NULL, '2020-11-30 05:30:16', 1, 'LfeYtchszAyMYMguD49cypR8d'),
('211810520', 'NURUL DWI AFIFAH', '3SE1', 'DIV STATISTIKA', '081228552547', 'Dusun Wangi RT 04 RW 09 Desa Sumberejo Kec. Pandaan Kab. Pasuruan, Jawa Timur', '211810520@stis.ac.id', 'RB03', 'S004', '300', 'J004', NULL, NULL, '2020-11-30 09:00:57', 1, 'V5BIqG0ZlJl8s2EtCwgyCldyl'),
('211810523', 'NURYANTI NURDIN ABDULLAH', '3SE2', 'DIV STATISTIKA', '085325498151', 'Jl Sensus 3, No.3, RT 06 RW 04, Bidara Cina, Jakarta Timur', '211810523@stis.ac.id', 'RB08', 'S007', '803', 'J006', NULL, NULL, '2020-11-28 03:13:54', 1, 'BwN3ecGERPN3A8UikHojXnHIJ'),
('211810524', 'OLVIEA RAHMAYANTI', '3SK1', 'DIV STATISTIKA', '085366528446', 'Jl. Sa\'Abun No.06 RT.10 RW.02, Bidararacina, Jatinegara, Jakarta Timur', '211810524@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-28 01:04:08', 1, 'jgd4i7rUzKAqVb9PyNHN6e4lI'),
('211810529', 'PINKY AULIA VIRADINA', '3SK2', 'DIV STATISTIKA', '085234961048', 'Jalan bonasel 2 no 14', '211810529@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-30 16:33:54', 1, 'GlqzWHkNLGsSSaDutqHDSyuUr'),
('211810530', 'POPY CHAFIFAH', '3SE2', 'DIV STATISTIKA', '083847849394', 'Jl. Letjen. Panjaitan II No 2 Jember', '211810530@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-29 15:11:46', 1, 'm0k2JSbrdzvDUqmjH56XwqBMv'),
('211810531', 'PRATITIS NANDIASOKA ANNISAWATI', '3SK3', 'DIV STATISTIKA', '082313280519', 'Jl. Otista 2, No. 29, RT 003 RW 09, Bidara Cina, Jatinegara', '211810531@stis.ac.id', 'RB01', 'S004', '100', 'J005', NULL, NULL, '2020-11-28 16:33:43', 1, 'KKnfgAVGuli3RJNmLrYI5fewO'),
('211810532', 'PRAWIRA YUDA HUSADA', '3SK3', 'DIV STATISTIKA', '082191022959', 'Jl. Bendungan Hilir Gang 11 No. 7 ', '211810532@stis.ac.id', 'RB01', 'S011', '107', 'J003', NULL, NULL, '2020-11-29 12:26:07', 1, 'Y1PyMtf2YmUbQB1epZk11TIv5'),
('211810533', 'PRETTY ANGELICA LEWAHERILLA', '3SE3', 'DIV STATISTIKA', '082366775521', 'Jl. Semarang No.44 RT 15 RW 06 Krincing, Secang, Kabupaten Magelang, Jawa Tengah', '211810533@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-26 19:41:31', 1, 'cM51aiGT9Nw9eY8RU7YRirdOH'),
('211810534', 'PRIDO PUTRA SINAGA', '3SK1', 'DIV STATISTIKA', '085275068340', 'Jl. Asem No 24', '211810534@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 16:31:14', 1, 'M4GxTpbpRfRbAaDIvJjMsAtEx'),
('211810535', 'PRISCILIA ERVINA SIHOMBING', '3SK4', 'DIV STATISTIKA', '082346700273', 'Jl.  Sensus III No 7 RT/RW 003/004', '211810535@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-30 11:17:59', 1, 'Oc8atxZGLv8R3BE5mqpPLdced'),
('211810536', 'PRISILYA WULANDARI', '3SK5', 'DIV STATISTIKA', '089507500356', 'Jl H Hasbi No 12A ', '211810536@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-27 10:53:05', 1, 'Tw1Nl2wBiiSSN19EICuTDdFbD'),
('211810537', 'PRISKA CLAUDIA WREDANI', '3SK1', 'DIV STATISTIKA', '085884426204', 'Jl. Kerja Bakti No. 17 RT 006/RW 004 Kec. Makasar Jakarta Timur 13570', '211810537@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-28 00:54:28', 1, 'r2NmEVd6NQkUQLIR85HTHnCbT'),
('211810538', 'PUTU ADI MYARSITHAWAN', '3SK2', 'DIV STATISTIKA', '081338772652', 'Banjar Dinas Tumbu Kelod, Desa Tumbu, Kecamatan Karangasem, Kabupaten Karangasem, Bali', '211810538@stis.ac.id', 'RB02', 'S012', '202', 'J004', NULL, NULL, '2020-11-28 14:02:59', 1, 'B99GplRd6PSxrEX7ZV0VkmI71'),
('211810539', 'RADHIKA ARHANI SIREGAR ', '3SK2', 'DIV STATISTIKA', '082274678277', 'Gang Sholihun, Bidara Cina, Otista Raya', '211810539@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-30 16:33:27', 1, 'FoTjAmSjUycUX3g22GnVY56Ao'),
('211810542', 'RAFQI ARDIANSYAH SURYA', '3SE1', 'DIV STATISTIKA', '082390516715', 'Jl. H Yahya, Nomor 16, RT 007, RW 008, Kelurahan Cipinang Cempedak, Jakarta Timur', '211810542@stis.ac.id', 'RB03', 'S012', '309', 'J003', NULL, NULL, '2020-11-30 22:21:27', 1, 'MPaLu0jh6I92Ww5JIhOO6IOZ6'),
('211810544', 'RAHMAH ZAHIDAH', '3SE3', 'DIV STATISTIKA', '082376225428', 'Jl Jembatan 2, Kec Kaur Selatan, Kab Kaur, Prov Bengkulu.', '211810544@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-28 05:45:56', 1, 'E7kVXc37si5rsjfmI0HAkvgCE'),
('211810545', 'RAHMAT AGUNG PASARIBU', '3SK4', 'DIV STATISTIKA', '085334851540', 'Jl. Kebon Sayur I', '211810545@stis.ac.id', 'RB01', 'S010', '001', 'J003', NULL, NULL, '2020-11-28 23:43:22', 1, 'E32ReYiNZB1Yfx2RMB9EvxA5F'),
('211810550', 'RANGGA AJI WIJAKSONO', '3SE4', 'DIV STATISTIKA', '081385717643', 'Puri Nirwana 3 Jln Anggur 1 Blok DB No.38, Karadenan - Cibinong', '211810550@stis.ac.id', 'RB02', 'S009', '208', 'J003', NULL, NULL, '2020-11-30 01:33:39', 1, 'ozUgUr9hKhTdD0f14iF4GEit7'),
('211810551', 'RANI APRILIA PUTRI', '3SK4', 'DIV STATISTIKA', '081385230705', 'Jl. Kebun Sayur I No13', '211810551@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-30 11:41:04', 1, 'LDJ8X0o18iFhydY95lwRIqyf7');
INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('211810552', 'RD. DAFFA IVAN FEBRIO', '3SK4', 'DIV STATISTIKA', '085711080537', 'Jl.Kemang Buntu No.113 RT 002/004 Kel. Jatibening Baru, Kec. Pondok Gede, Kota Bekasi, Jawa Barat', '211810552@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-30 03:01:10', 1, 'ZwVqKQWvVMIQ0bHvrM2yM7xW8'),
('211810553', 'REKAYATI CAHYA ADI', '3SK3', 'DIV STATISTIKA', '08978586352', 'Perum Tingkir Indah E/46 RT/RW 001/008, Tingkir Lor, Tingkir, Salatiga, Jawa Tengah', '211810553@stis.ac.id', 'RB03', 'S013', '310', 'J003', NULL, NULL, '2020-11-29 07:43:28', 1, '070jEkTY1YEjV4FYPflDgxcFO'),
('211810554', 'RENISA MAULINDA AYUDIAH', '3SE4', 'DIV STATISTIKA', '08976669794', 'Jl. Gg H Misnen No.11 Otista 2', '211810554@stis.ac.id', 'RB02', 'S009', '207', 'J004', NULL, NULL, '2020-11-29 06:48:42', 1, 'yiX2QH58FftRQcAHFX8VPQxd3'),
('211810555', 'RESTIJATI SUSANTRI', '3SK4', 'DIV STATISTIKA', '081259054677', 'Jl.Kebon Nanas Utara I No.15B RT.003/07', '211810555@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-28 13:01:46', 1, '867mETqLRpSCdrEEy52qLuwTh'),
('211810556', 'REYHAN GESANG ALMUAZAM', '3SE2', 'DIV STATISTIKA', '082269323230', 'Jl. H Yahya, Kebon Nanas Utara', '211810556@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-30 09:46:33', 1, 'EE8vUAxYPWJFpxUAr45NgXzln'),
('211810559', 'REZKY YAYANG YAKHAMID', '3SK2', 'DIV STATISTIKA', '083808893838', 'Jl. Pengayoman 2, Desa Babakan RT.02/RW.01, No 52, Kecamatan Kramat, Kabupaten Tegal, Jawa Tengah. Kode Pos : 52181.', '211810559@stis.ac.id', 'RB03', 'S013', '311', 'J003', NULL, '74d24cd6d85421baedc15b62d0ac727f.jpg', '2020-11-29 05:21:50', 1, 'budeMUFtd9oAtXG8kitiHqm0e'),
('211810561', 'RICHARDO VIERY TARIGAN', '3SK5', 'DIV STATISTIKA', '082273686217', 'Jl Sensus 3 No 10 RT 4 RW 14 Bidara Cina, Jatinegara, Jakarta Timur', '211810561@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-30 08:51:53', 1, 'yDeXEENvypX2dhK7GVDfm0KZY'),
('211810562', 'RIDHA HANINDYA WITARI', '3SK5', 'DIV STATISTIKA', '085746698181', 'Jl. Otista 2 No 23', '211810562@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-30 14:08:01', 1, 'gZcHyFTvAOAmw0HsMClJQsqCo'),
('211810563', 'RIDHO ILLAHI', '3SK1', 'DIV STATISTIKA', '081315725716', 'Jl. Bonasel 1', '211810563@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-29 04:47:18', 1, 'GGEdnvDJcamm8q6a6NnyIdgtA'),
('211810564', 'RIF\'ATUL MINA', '3SK5', 'DIV STATISTIKA', '087888221062', 'Jl. Gg. Berkah 1 No. 7 RT. 11 RW. 09 Kel. Sunter Jaya, Jakarta Utara', '211810564@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-30 12:24:19', 1, 'YvyXWv12zYuGWfOSHgmpiNlo4'),
('211810566', 'RIFKA FAKHIRAH DARMAWAN', '3SE5', 'DIV STATISTIKA', '081317945644', 'Jl. Masjid No.20 RT 14 RW 9, Bidara Cina, Jatinegara, Jakarta Timur', '211810566@stis.ac.id', 'RB02', 'S013', '205', 'J004', NULL, NULL, '2020-11-30 16:08:15', 1, 'jfbAmRAokKsRFIQZ7EFQucc03'),
('211810567', 'RIFKI GUSTIAWAN', '3SE3', 'DIV STATISTIKA', '081213584104', 'Jl. Taruna Jaya II, Gg. Teratai I RT 001 RW 002 Kel. Serdang Kec. Kemayoran Jakarta Pusat, DKI Jakarta 10650', '211810567@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('211810570', 'RIMA MAYYADAH', '3SK1', 'DIV STATISTIKA', '081327531577', 'Gang Sensus 1 RT 1 RW 4 No. 13', '211810570@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-29 05:03:35', 1, 'wEXXNolTzdfGigOBdrpE7TyPH'),
('211810571', 'RINA DWI OCTAVIANTI ', '3SE4', 'DIV STATISTIKA', '081317259756', 'Jl. Kebon Nanas Selatan I No.14 RT 10 RW 9 ', '211810571@stis.ac.id', 'RB08', 'S007', '803', 'J003', NULL, NULL, '2020-11-21 06:37:40', 1, 'GW8gXq4WalhLhe84KFSqgALKQ'),
('211810572', 'RINDU TRIMARTA NAFRI', '3SK2', 'DIV STATISTIKA', '082388145830', 'Jl. Otto Iskandar Dinata Raya, Gg Haji Yahya No 6 ( Griya Firamita ) RT 01 RW 09, Kelurahan Bidara China, Jatinegara, Jakarta Timur 13330.', '211810572@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-30 14:07:30', 1, 'IMMMf2S5bSlJiR53lszn8Jjse'),
('211810573', 'RIRIS JUITA SILALAHI', '3SE5', 'DIV STATISTIKA', '082262196889', 'Jln. Kebon Sayur, RT005/RW0015 No.10A, Jakarta Timur, Jatinegara', '211810573@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-30 08:02:51', 1, '3jCttkD0UfLIjPgU49GqqxNd4'),
('211810579', 'RIZLAN AHMAD FAUZAN', '3SE4', 'DIV STATISTIKA', '085390178009', 'Jl. Asem No.4D RT/RW 001/03, Kelurahan Bidara Cina', '211810579@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-30 13:16:42', 1, 'Bfl4vXGLx7lqnNjBD35jfSu65'),
('211810580', 'RIZQ TAUFIQ BAHTIAR RAZENDRYA', '3SK5', 'DIV STATISTIKA', '085748233432', 'Jl. Hasbi I No. 7 RT009/RW009 Kel. Bidaracina', '211810580@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 01:38:29', 1, 'x7ZEDMsXLiUQ2FK4wAWobhqMb'),
('211810582', 'RIZQI MUZAKKI', '3SE5', 'DIV STATISTIKA', '082168433579', 'Desa Sikara-Kara IV RT 007/002, Kec. Natal, Kab. Mandailing Natal, Sumatera Utara', '211810582@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-30 16:21:35', 1, '4vSONVSfgcrzZkdX1gO823j46'),
('211810584', 'ROFI ADNANDI', '3SK2', 'DIV STATISTIKA', '085272319942', 'Jl. Kebon Sayur 1 No. 24 RT/RW 007/015 Bidara Cina, Jatinegara, Jakarta Timur', '211810584@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-29 19:57:15', 1, 'PlrYQwiOq0q4061Huux0mzQ6m'),
('211810585', 'ROFIN SUMARANI BOMBANG', '3SK1', 'DIV STATISTIKA', '082325271272', 'Selobentar, RT31, Trimurti, Srandakan, Bantul', '211810585@stis.ac.id', 'RB08', 'S008', '807', 'J006', NULL, NULL, '2020-11-25 12:23:05', 1, 'hfe5DMOpl0M5AYswx2CSd0MM4'),
('211810586', 'ROHMAH DINI AYUNDA MUSTOFA', '3SE1', 'DIV STATISTIKA', '083169033687', 'Jl. Otista III 17A', '211810586@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-26 13:43:27', 1, 'vcIr2iNPRGjyjEBKTFs35Lf1a'),
('211810587', 'ROULI NAPITUPULU', '3SE2', 'DIV STATISTIKA', '085282084059', 'Jl. DI. Panjaitan No. 15 Balige, Toba Samosir, Sumatera Utara', '211810587@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-26 11:23:51', 1, 'eBaMIF9bvHiZ3zOHlfTfk0e6I'),
('211810588', 'RUSMAN FAHRI', '3SK2', 'DIV STATISTIKA', '081295112891', 'Logandeng, RT27/RW05, Logandeng, Playen, Gunungkidul, yogyakarta', '211810588@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-28 01:18:43', 1, 'jCkIf24bpcakNn0x7gIBEMjmr'),
('211810590', 'RUTI TRYANA TELAUMBANUA', '3SK1', 'DIV STATISTIKA', '082277063040', 'Jl. Sensus IVd No.20', '211810590@stis.ac.id', 'RB02', 'S012', '202', 'J006', NULL, NULL, '2020-11-28 12:55:52', 1, 'z1vzFX598ewViDITjw4KcHFJj'),
('211810591', 'RYAN ZULYENDRI', '3SE5', 'DIV STATISTIKA', '081266466138', 'Jl. Masjid No.25B', '211810591@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-26 08:10:07', 1, 'n3D2Zm2dFfDNfr0hWqnWdTShZ'),
('211810593', 'SALMA', '3SE3', 'DIV STATISTIKA', '083836067929', 'Jl. H. Hasbi no 7 Bidara Cina, Jatinegara', '211810593@stis.ac.id', 'RB08', 'S006', '801', 'J006', NULL, NULL, '2020-11-30 08:08:51', 1, 'DAHDrLfLjcIR3WaCsjsTys0cS'),
('211810594', 'SALSABILA LATIFAH PUTRI', '3SE2', 'DIV STATISTIKA', '089503681867', '(Kos Sarah) Jl. Otista Raya, Gg. Abdul Rahman No 16 RT1 RW9, Kampung Melayu, Jatinegara, Koya Jakarta Timur, DKI Jakarta, 13330', '211810594@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-30 14:15:53', 1, 'XZL4i6DLxvZsS0z4D0lhZLgCS'),
('211810598', 'SANTI MAUDILA PUTRI', '3SE3', 'DIV STATISTIKA', '087841023038', 'Jl. H. Yahya No. 271 RT 001/010 Bidaracina', '211810598@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-24 17:26:58', 1, 'AchhZb5iVSj3q17YAcCB0Gfnc'),
('211810599', 'SAYYIDAH FADHILA LATORUMO', '3SE4', 'DIV STATISTIKA', '085397869644', 'Jl. Saabun No.7 RT.11/RW.2, Kampung Melayu, Jatinegara, Jakarta Timur', '211810599@stis.ac.id', 'RB00', 'S000', '000', 'J004', NULL, NULL, '2020-11-29 12:41:22', 1, '7hs4Fy645O5DdfGHlJE6AXSqI'),
('211810600', 'SELVI AGUSTINA', '3SE5', 'DIV STATISTIKA', '082273587157', 'Jln. Kebon Sayur No. 8, RT.3/RW.15, Bidara Cina', '211810600@stis.ac.id', 'RB04', 'S013', '408', 'J006', NULL, NULL, '2020-11-27 08:48:40', 1, 'EVqXnyT8muPLPDwN4dQzzjqf0'),
('211810601', 'SETIAWAN OSI RUBIANTO', '3SE2', 'DIV STATISTIKA', '082232368112', 'Jl. Kebon Sayur 1 No 7 RT 10 RW 3 Kelurahan Bidara Cina, Jakarta Timur ', '211810601@stis.ac.id', 'RB01', 'S011', '104', 'J006', NULL, NULL, '2020-11-29 12:27:42', 1, '3kNJtlOUk3RKf8EjYiRBixaS9'),
('211810602', 'SEVY DYAHARTANTI', '3SK3', 'DIV STATISTIKA', '081932434125', 'Jl. Sensus 2B RT 09 RW 04 No. 11A, Bidaracina, Jatinegara, Jakarta Timur, 13330', '211810602@stis.ac.id', 'RB03', 'S009', '301', 'J006', NULL, NULL, '2020-11-29 09:05:13', 1, 'I3UAEeqm7sjXlyvuFquZ8yuY8'),
('211810605', 'SILVIRA BERLIANA', '3SK4', 'DIV STATISTIKA', '085262138442', 'KEBON SAYUR no.5A', '211810605@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, NULL, '2020-11-26 09:18:53', 1, 'bkYY8JfNb3Ig4UNxnJF69Y8to'),
('211810606', 'SINTYA DWI LESTARI', '3SE1', 'DIV STATISTIKA', '081334337955', 'Jl. Penghulu No 53 RT 013/RW 010 Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur 13330', '211810606@stis.ac.id', 'RB03', 'S004', '300', 'J005', NULL, NULL, '2020-11-29 03:54:44', 1, 'ItBmBD9vphpDC8m3Qfe8yHPhT'),
('211810607', 'SISHILIA MARESTHA', '3SE2', 'DIV STATISTIKA', '083803666783', 'Jl. Kebun Sayur 1 No.37 RT.04 RW.03 Kel. Bidara Cina Kec. Jatinegara, Jakarta Timur', '211810607@stis.ac.id', 'RB02', 'S013', '203', 'J004', NULL, NULL, '2020-11-30 16:03:18', 1, 'K7xHX5gtRjXBI7cGnMO8WJenj'),
('211810609', 'SITI AINIA HIDAYATI', '3SE3', 'DIV STATISTIKA', '081333551976', 'Jl. Kebon Nanas Selatan I No. 14 RT 13 RW 08, Cipinang Cempedak, Jakarta Timur', '211810609@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-28 11:32:33', 1, 'YCWIEfN9f38fQy9o42SqivjTd'),
('211810610', 'SITI SABRINA YUNIARTI', '3SK5', 'DIV STATISTIKA', '085921202309', 'Taman Alamanda 2 Jl. Bougenvile 6 ED 5/11 RT 009 RW 010 Kel. Mustikasari Kec. Mustikajaya Kota Bekasi Provinsi Jawa Barat', '211810610@stis.ac.id', 'RB03', 'S013', '311', 'J006', NULL, NULL, '2020-11-29 21:49:40', 1, '7isLouzgEyPCkpl2Sf1pHowrJ'),
('211810612', 'SOPO SIAHAAN', '3SE3', 'DIV STATISTIKA', '085939405011', 'Jl. Kebun Nanas Utara II No.24', '211810612@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-29 04:35:13', 1, 'UvlczMqWnJuQCiX9737Gs1gtw'),
('211810613', 'SITI HAJAR', '3SE4', 'DIV STATISTIKA', '082343741256', 'Jl. Otista Raya  Gg. Mangga No. 31, RT. 04 RW.03, Kel. Bidara Cina  Kec. Jatinegara Kota Jakarta Timur 13330', '211810613@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 11:18:36', 1, 'QJcETJzpUK0C4PmTgYUbScCIf'),
('211810614', 'STEPHANIE VIRGINIA ISKANDAR', '3SE4', 'DIV STATISTIKA', '089636745565', 'Gang Sensus 1 No. 13 RT 01/RW 04 Bidaracina', '211810614@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-29 12:39:48', 1, 'qpyLQqlo8R2pFKP13B1BQAveZ'),
('211810615', 'SUCI HUSNAWATI', '3SK1', 'DIV STATISTIKA', '081285838447', ' Jl. H. Naning No.8C RT 002/08 Kel. Tengah Kec. Kramat Jati Jakarta Timur', '211810615@stis.ac.id', 'RB08', 'S007', '001', 'J003', NULL, NULL, '2020-11-26 16:33:03', 1, 'O2fygj84dwd3Olao8I4iS2rfP'),
('211810617', 'SUKMA MAULANA', '3SE1', 'DIV STATISTIKA', '085885626564', 'Kampung Kandang Sapi RT 03/03 No. 16 Kel. Pakualam, Kec. Serpong Utara, Kota Tangerang Selatan', '211810617@stis.ac.id', 'RB02', 'S012', '201', 'J006', NULL, NULL, '2020-11-30 10:25:05', 1, 'bTKVHViAPKUuyME1Up1XjbgJc'),
('211810621', 'TASYA AGUILERA PRASETIA MULYANA', '3SK2', 'DIV STATISTIKA', '085624438284', '-', '211810621@stis.ac.id', 'RB02', 'S012', '001', 'J005', NULL, NULL, '2020-11-28 11:38:35', 1, 'ZX6nOaYbMHyOiSaJmm7UR10of'),
('211810623', 'TAUPIQ HIDAYA TULLAH NASUTION', '3SE2', 'DIV STATISTIKA', '088218418599', 'DISLAIKAD, Jl. Manunggal Raya No.99, RT.07 RW.12, Kelurahan Cibubur, Kecamatan Ciracas, Jakarta Timur', '211810623@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 07:45:03', 1, '7RKG739ucBMmc7vzBC8eX6BdG'),
('211810624', 'THALITA SILMI AZRANI', '3SE5', 'DIV STATISTIKA', '081363183949', 'Kos Sarah Jl. Otista Raya gg Abdurrahman 01/09', '211810624@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-28 08:52:48', 1, '8Gx13OibrF3jdeZNhhsACH9Of'),
('211810628', 'TIARA REZA SUKMANA', '3SK3', 'DIV STATISTIKA', '085777595273', 'Jl. Kebon Sayur 1 No 5A RT 02 RW 15 Bidaracina, Jatinegara, Jakarta Timur', '211810628@stis.ac.id', 'RB04', 'S012', '406', 'J006', NULL, NULL, '2020-11-30 14:29:22', 1, 'ZR1J7uOfj9pSDil7AjHy1emO4'),
('211810629', 'TIFFANI AYUNDITA AULIANNISA', '3SE5', 'DIV STATISTIKA', '081228224104', 'Jl. Kebon Nanas Selatan I No.14, RT.13/RW.8, Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810629@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 12:03:47', 1, 'e9cumADmbLX5mJt2DYZwfnqW3'),
('211810632', 'TOGAR HASBALAH', '3SK3', 'DIV STATISTIKA', '081272004997', 'Jl. Kebon Nanas Selatan 1 No 30B', '211810632@stis.ac.id', 'RB03', 'S009', '302', 'J006', NULL, NULL, '2020-11-30 09:08:04', 1, 'ib7mUfny6VlCDavIWACFHuymR'),
('211810633', 'TRINANDA YULIA PUTRI', '3SK4', 'DIV STATISTIKA', '081292587992', 'Jl. Otista 2 No. 4 RT7/RW9, Kel. Bidara Cina, Kec. Jatinegara (Depan Hotel Mega Bayu Utama) ', '211810633@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-30 09:55:50', 1, '4YCg3n3AW3t7Wh1QpHPPJMm1Y'),
('211810635', 'TULUS FRENGKY MANULLANG', '3SK3', 'DIV STATISTIKA', '089514785443', 'Gg. Mangga No 27 A', '211810635@stis.ac.id', 'RB02', 'S013', '203', 'J006', NULL, NULL, '2020-11-30 16:07:58', 1, '0RDFj84L2epMrag7FZ1ta3wVf'),
('211810636', 'UBAIDILLAH DHIYA \'ULHAQ', '3SK4', 'DIV STATISTIKA', '088996777761', 'Jln. Raya Penambangan,RT 01/RW 01, Desa Penambangan, Kecamatan Semanding, Kabupaten Tuban, Jawa Timur', '211810636@stis.ac.id', 'RB01', 'S011', '106', 'J006', NULL, NULL, '2020-11-29 15:13:44', 1, 'fz0BCCyqrg2DxVKO5EFuBbUe8'),
('211810643', 'VICTOR ROBERT GUSTA', '3SE4', 'DIV STATISTIKA', '087732547224', 'Jl. Sensus 3 No 10 RT 004 RW 014', '211810643@stis.ac.id', 'RB02', 'S009', '207', 'J006', NULL, NULL, '2020-11-30 14:56:34', 1, 'BAuP4J5af8jKuphHaDQ16ojma'),
('211810646', 'VINCENTIUS AGRA ANANTA GUNITO', '3SE3', 'DIV STATISTIKA', '089698411858', 'Jl Otista 2 No 67A', '211810646@stis.ac.id', 'RB04', 'S013', '407', 'J006', NULL, NULL, '2020-11-29 04:06:12', 1, 'rrYdMOadLR3RoAuSm9MPlWsZS'),
('211810648', 'VIONA RAHMA AGUSTIN', '3SK2', 'DIV STATISTIKA', '0895373546154', 'Jl.Otista 2 No.29 RT 003/RW 09, Bidara Cina, Jatinegara', '211810648@stis.ac.id', 'RB03', 'S009', '001', 'J003', NULL, NULL, '2020-11-29 01:53:50', 1, 'bbW8ysm3g2OACKNn724OHUZ7P'),
('211810651', 'WAHYU KARTIKA', '3SK5', 'DIV STATISTIKA', '081259685911', 'Jl. Otista II gg. Haji Misnen No 11, RT 007 RW 009', '211810651@stis.ac.id', 'RB04', 'S004', '400', 'J005', NULL, NULL, '2020-11-28 06:15:42', 1, 'Wx0CdAdy6xRuWe3PXCdeOsktj'),
('211810653', 'WIDIA SARI', '3SE4', 'DIV STATISTIKA', '085739685210', 'Jl. Sri Kaya 2 Jatimakmur, Pondokgede, Bekasi, Jawa Barat', '211810653@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-30 11:33:56', 1, '4MOKIaNtk4lgshN5H1JyLJvDb'),
('211810655', 'WILLY PRADANA PUTRA', '3SK5', 'DIV STATISTIKA', '082144879987', 'Jln. Hasbi 1 No.7 ', '211810655@stis.ac.id', 'RB04', 'S012', '405', 'J006', NULL, NULL, '2020-11-27 02:54:59', 1, 'HIkj663e5WjnuwKLEdSan5WPZ'),
('211810656', 'WIMMISRI', '3SE1', 'DIV STATISTIKA', '082361577633', 'Jln Marzuki II penggilingan,cakung,Jakarta Timur', '211810656@stis.ac.id', 'RB08', 'S007', '804', 'J006', NULL, NULL, '2020-11-26 12:33:34', 1, 'ac0Cu6omKIILQrxvMhx3ERC3S'),
('211810657', 'WIRASETYA PUTRA HUTAMA', '3SE4', 'DIV STATISTIKA', '089602598839', 'Jl. Kebon Nanas Selatan 1 RT2 RW8 No 15, Cipinang Cempedak', '211810657@stis.ac.id', 'RB01', 'S010', '102', 'J006', NULL, NULL, '2020-11-29 12:17:33', 1, '5Xmu1PiQZqx8xkUdwqh9olSRL'),
('211810658', 'WITRIA DASNI', '3SE1', 'DIV STATISTIKA', '082175708277', 'Kos Graha Fialdis, Jl. Saabun No 02, RT.11 RW.6A, Kampung Melayu, Kec. Jatinegara.', '211810658@stis.ac.id', 'RB01', 'S010', '001', 'J004', NULL, NULL, '2020-11-29 12:33:23', 1, 'uVvWxDqbRxmybA39rs9mJhOI8'),
('211810663', 'YOGI RESMANA BARUS', '3SE5', 'DIV STATISTIKA', '08992170511', 'Jl.Kebon Nanas Utara 2 No.20 RT 001 / RW 007', '211810663@stis.ac.id', 'RB03', 'S013', '310', 'J006', NULL, NULL, '2020-11-30 12:16:26', 1, 'bpVC9pGg5vkQH74WziawKMUar'),
('211810664', 'YOHANA MADAME HUTAHAEAN', '3SK3', 'DIV STATISTIKA', '081264762119', 'Jl. Kebon Sayur I No.66A RT 008/ RW 003 Kel. Bidara Cina', '211810664@stis.ac.id', 'RB01', 'S011', '107', 'J006', NULL, NULL, '2020-11-30 14:18:54', 1, 't5gVgyAsGkQtu024A3wuL5Y5J'),
('211810665', 'YOLANDA ALMA FITROTUNNISA', '3SE2', 'DIV STATISTIKA', '082126269174', 'Jl. Penghulu No.12', '211810665@stis.ac.id', 'RB03', 'S012', '308', 'J006', NULL, NULL, '2020-11-28 10:09:06', 1, 'l4nu4wlTMI7Y1Fbs6YK56FOPy'),
('211810666', 'YOSUA WIRADIPUTRA PANGARIBUAN', '3SE5', 'DIV STATISTIKA', '082360393086', 'Gg. Mangga No.24 Kelurahan Bidara Cina, Kecamatan Jatinegara, Kota Jakarta Timur', '211810666@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-19 12:54:44', 1, '7rAYk47ls7PhPZCf3gww5Kapd'),
('211810667', 'YUANA RISA PRASTIKA', '3SK4', 'DIV STATISTIKA', '085731897914', 'Jl. Kebon Nanas Utara 1 No. 15', '211810667@stis.ac.id', 'RB02', 'S009', '206', 'J006', NULL, NULL, '2020-11-28 13:16:37', 1, 'eA814RJ2GCX6OsGXBcJWxOoal'),
('211810668', 'YUDA FIRMANSYAH', '3SE1', 'DIV STATISTIKA', '081223392565', 'Jl. Masjid No 23 RT/RW 012/009 Kelurahan Bidara Cina, Kecamatan Jatinegara, Jakarta Timur 13330', '211810668@stis.ac.id', 'RB02', 'S013', '205', 'J003', NULL, NULL, '2020-11-30 15:42:57', 1, 'eiG4b2g9cWaHol1FGf9JVF872'),
('211810669', 'YUDHISTIRA', '3SK1', 'DIV STATISTIKA', '08199504007', 'Jl. Kebon Nanas Selatan 1 No.3 RT 14/ RW 8 Cipinang Cempedak, Jatinegara, Jakarta Timur', '211810669@stis.ac.id', 'RB04', 'S012', '404', 'J006', NULL, NULL, '2020-11-27 03:41:52', 1, 'xHjzffj7ebzHfYPCTwSEvZ32n'),
('211810671', 'YULI BAGUS ADRIYATNA', '3SK2', 'DIV STATISTIKA', '0895701893614', 'Jl. Kebon Nanas Selatan 2, No.57, RT.01 RW.08, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur, DKI Jakarta, 13340', '211810671@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-30 16:30:53', 1, 'AkxLdqdzUkFOFFRz4H1SGRrEd'),
('211810674', 'YUNELA TANIA SARI ', '3SE3', 'DIV STATISTIKA', '082385365218', '(Kos Ungu) Gg Solihun, Otista Raya, Jakarta Timur', '211810674@stis.ac.id', 'RB02', 'S013', '205', 'J006', NULL, NULL, '2020-11-30 12:56:53', 1, 'ZmO3QjtgCBfArASfsTePKuFcN'),
('211810675', 'YUSUF RIPANI SIREGAR', '3SE2', 'DIV STATISTIKA', '081906657434', 'Jl. Kebon Nanas Utara No 22B', '211810675@stis.ac.id', 'RB02', 'S009', '208', 'J006', NULL, NULL, '2020-11-29 10:06:17', 1, 'n0S8IZtgHr67uQtJAHAlkxvrW'),
('211810677', 'ZAHRA FATIN TANALA', '3SK5', 'DIV STATISTIKA', '085791498384', 'Jl. Abdul Rahman Nomor 34A, RT 002 RW 009, Kelurahan Bidaracina, Kecamatan Jatinegara, Jakarta Timur', '211810677@stis.ac.id', 'RB02', 'S009', '001', 'J004', NULL, NULL, '2020-11-30 15:05:10', 1, '5efn2BNTdsC9E3hVIji61yrGE'),
('211810678', 'ZAHRA RAHMATIKA FADILLA', '3SK1', 'DIV STATISTIKA', '085946274087', 'Jl. Hasbi No.12A', '211810678@stis.ac.id', 'RB01', 'S011', '104', 'J003', NULL, NULL, '2020-11-29 16:51:22', 1, 'LQfrlCK7ej0SfuebSlC3KNVX6'),
('211810679', 'ZAKIAH RAHMAH', '3SK2', 'DIV STATISTIKA', '081377573187', 'Jl. Otista Gang Mangga No.15 (Belakang Bonansa Wisata, Kos Wanita Haji Ayub) RT/RW.01/04, Bidara Cina, Jatinegara, Jaktim', '211810679@stis.ac.id', 'RB03', 'S012', '309', 'J006', NULL, NULL, '2020-11-30 12:47:18', 1, 'SHb71fJKFdaAXsPNzqPR9ZF5c'),
('211810680', 'ZAKY IMADUDIN SALAM', '3SE3', 'DIV STATISTIKA', '081312315895', 'Jl Sensus 2 No 16 Kel. Bidaracina, Jatinegara', '211810680@stis.ac.id', 'RB04', 'S009', '403', 'J006', NULL, NULL, '2020-11-28 00:45:16', 1, 'vPPXaLTgISa8jlddTlPsRfYZh'),
('211810681', 'ZIDAN FAKHRI ZHAFIRI', '3SE4', 'DIV STATISTIKA', '085648423485', 'Gg. Mangga, RT.2/RW.3, Kp. Melayu, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '211810681@stis.ac.id', 'RB04', 'S013', '408', 'J003', NULL, NULL, '2020-11-30 08:34:11', 1, 'dj37uC9jlaeZ5GuzeoUlmJLgB'),
('211810683', 'ZULKIFLI', '3SK3', 'DIV STATISTIKA', '085255582935', 'Jl Kebon Sayur I No 25, RT 002, RW 015, Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta 13330', '211810683@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-21 12:52:33', 1, 'C9vPL1rLmcR4YQsujRUhYxB0w'),
('221709573', 'ARIEF RAHMAN FAUZI', '3SD1', 'DIV KOMPUTASI STATISTIK', '081213744293', 'Jl. Raya Inpres No. 29B', '221709573@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-04 15:33:08', 1, NULL),
('221709729', 'HANIF MUHAMMAD SOFI', '3SD2', 'DIV STATISTIKA', '', '', '221709729@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-10 08:38:55', 1, NULL),
('221709732', 'HASRAN NAWIRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '083135340631', 'Bonasel 1', '221709732@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-30 21:09:59', 1, 'Q5CwCM1WpMIoyU2NuDY5khYoY'),
('221810097', 'ADI HABIBI HARAHAP', '3SD1', 'DIV KOMPUTASI STATISTIK', '081318534065', 'Jln Ayub No.17 RT05/RW08 Bidara Cina', '221810097@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-27 01:07:31', 1, '13QvNjPct4UJEAsVz27IsBekc'),
('221810104', 'ADYASTI NINGRUM', '3SI2', 'DIV KOMPUTASI STATISTIK', '081219758987', 'Jln. Masjid No.4', '221810104@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 15:05:42', 1, 'kEVxxEcXzzfZzztPKsrcvS90b'),
('221810112', 'AGNES SEPTI DWICAHAYANIAWAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '082240506326', 'Jl.Masjid No.20 ', '221810112@stis.ac.id', 'RB07', 'S004', '700', 'J005', NULL, NULL, '2020-11-30 12:48:36', 1, 'uGMmzLlPEVsw2NM8Q10aBAn8v'),
('221810116', 'AHMAD ARFAN ARSYAD', '3SI1', 'DIV KOMPUTASI STATISTIK', '085211772862', 'Jl. H.Yahya Cipinang Cimpedak No.19 RT09/RW07 Jatinegara Jakarta Timur, Jatinegara, Jakarta Timur, DKI Jakarta, 13330', '221810116@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-29 00:55:30', 1, 'GaOd82Vjvaf0uctZhqbTyPH6t'),
('221810117', 'AHMAD AZAM IZUDIN', '3D32', 'DIV KOMPUTASI STATISTIK', '085234665991', 'Jl. Kebon Nanas Selatan I No. 4 RT.011/RW. 008 Rumah Warna Abu -Abu Lantai 2, Kec. Jatinegara - Jakarta Timur, 13340', '221810117@stis.ac.id', 'RB05', 'S004', '500', 'J001', NULL, NULL, '2020-11-29 14:06:53', 1, '47wrIXLnOc3W5YoBM3vJuao6X'),
('221810125', 'AINUR RAHMA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081216692408', 'Jl. Otista 2 No. 23, Jakarta Timur', '221810125@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-28 14:02:16', 1, 'epP47GXZ43e3AvAabIFqf56WF'),
('221810126', 'AISYAH NUR FAHIRA', '3SD2', 'DIV KOMPUTASI STATISTIK', '087700348880', 'Jl. Kebun Sayur 1 No. 37, RT 004, RW 03', '221810126@stis.ac.id', 'RB07', 'S003', '709', 'J006', NULL, NULL, '2020-11-28 04:16:40', 1, 'qoj0O0JFLVwd6uKh8JkXrl75X'),
('221810128', 'AJENG WAHYU TRI YULINDA', '3SI2', 'DIV KOMPUTASI STATISTIK', '085155437439', 'Pundung Sari RT 3 RW 2, Mranggen, Polokarto, Sukoharjo, 57555.', '221810128@stis.ac.id', 'RB08', 'S008', '001', 'J003', NULL, NULL, '2020-11-30 13:37:44', 1, '7ymQvQKH94b9MXdNUNR7jqINg'),
('221810129', 'AKHMAD FADIL MUBAROK', '3SI2', 'DIV KOMPUTASI STATISTIK', '082226602929', 'Jl. Otista 3 No.4 RT.4/RW.2, Cipinang Cempedak, Kecamatan Jatinegara', '221810129@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 15:29:57', 1, '0KmBZ7YSR9SodDkqvR3YgvhFP'),
('221810137', 'ALDI HAMIDI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081260383277', 'Jl. Otista II, Bidara Cina, Jatinegara, Jaktim', '221810137@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-28 13:13:43', 1, '3pe3NnrfNx6rvoxQHszeg5QWb'),
('221810138', 'ALDIAS IRVAN NUGRAHA', '3SD1', 'DIV KOMPUTASI STATISTIK', '08999339379', 'Jl. Kebon Sayur 1 No. 5, RT 9/RW 15', '221810138@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 04:16:08', 1, 'DI829UcdJFvg7Kzr2hqvOdPCU'),
('221810140', 'ALFI NURRAHMAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '081807912843', 'Jl. Unkris (Bulak Baru) RT 08/09 No.84 Jaticempaka, Pondok Gede, Kota Bekasi, Jawa Barat 17416', '221810140@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 15:25:06', 1, 'N7q4wOaVKOgNlRyBBS4J3pDGf'),
('221810145', 'ALI AKBAR CHAMPIONA', '3SI2', 'DIV KOMPUTASI STATISTIK', '088290238778', 'Perumahan Graha Kalimas Blok B2, Tambun Selatan', '221810145@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-28 00:48:24', 1, 'WUMtqaM3ho8HemGaPUepavDgN'),
('221810155', 'ALMIRA DIVA SANYA', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895616199398', 'Jl. Banda Rajang, No. 88 RT 06/RW 02, Gulai Bancah Kota Bukittinggi - Mandiangin Koto Selayan,  Sumatera Barat Kode Pos : 2612', '221810155@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-30 15:36:14', 1, 'sX1tVnZ6JfVfpDrpq6h94tBsM'),
('221810157', 'ALWAN HAZIM', '3SI1', 'DIV KOMPUTASI STATISTIK', '081381479223', 'Jl. Kiruntag No.14 RT 002/RW 01 Kelapa Dua, Kebon Jeruk', '221810157@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-28 13:27:18', 1, '71cDM6hzHOmBLAPVH7nBABzga'),
('221810177', 'ANLISA ARMARYAMA R', '3SI2', 'DIV KOMPUTASI STATISTIK', '081259397075', 'Jl. Sensus 1 No 2 RT 01 RW 04, Bidara Cina, Jatinegara, Jakarta Timur', '221810177@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-29 09:57:12', 1, '0guqWRoPyBFxxpVoLQKchAeVg'),
('221810178', 'ANNISA ADYTIA PUTRI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081351380912', 'Bassura City, Jakarta Timur', '221810178@stis.ac.id', 'RB05', 'S004', '500', 'J005', NULL, NULL, '2020-11-26 13:35:48', 1, 'rdD3r2EPXxMGG05HKtYPliRMr'),
('221810183', 'ANNISA PUTRI ANGGRAINI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082239614214', 'Jl. Kebon Nanas Selatan I', '221810183@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-21 12:29:31', 1, 'xIjaDsdVLqF2DPljtHsVWQT46'),
('221810193', 'ARIF IKHWAN HENDRA', '3SI2', 'DIV KOMPUTASI STATISTIK', '082285163994', 'Jl. Masjid 25B', '221810193@stis.ac.id', 'RB03', 'S015', '305', 'J006', NULL, NULL, '2020-11-30 07:03:09', 1, 'KrFFBswpTog50xkxPosuepKbz'),
('221810195', 'ARINA MANA SIKANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '08111277194', 'Jl. Kebon Nanas Selatan Ii No. 23 RT 011 RW 008, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810195@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-30 14:12:50', 1, 'zVONtQUObRHUniZrUF1hz0pIl'),
('221810196', 'ARIQ RIZALDI FADHLURRAHMAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085866364943', 'Jl. Kebon Nanas Utara No 2 RT 05 RW 07 Cipinang Cempedak Jatinegara', '221810196@stis.ac.id', 'RB07', 'S001', '703', 'J003', NULL, NULL, '2020-11-28 12:28:05', 1, 'qvrKFMGLNYr1H9V3EnTHWLOyJ'),
('221810198', 'ASHABUL KAHFI SIPAHUTAR', '3SI2', 'DIV KOMPUTASI STATISTIK', '082383004989', 'Bengkel Sipahutar, Desa Bukit Martajam/Sigama, Kec. Padang Bolak, Kab.Padang Lawas Utara, Prov. Sumatera Utara', '221810198@stis.ac.id', 'RB07', 'S003', '713', 'J003', NULL, NULL, '2020-11-27 15:15:59', 1, 'yhwxeHtOwXNjjoqT4M6w3U6aW'),
('221810202', 'ASTI DESMARIA SAMOSIR', '3SD2', 'DIV KOMPUTASI STATISTIK', '082366773946', 'Jl Otista Raya Gg Mangga No 15 ', '221810202@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-29 21:59:24', 1, 'RbDw56L1KSQoztgYGfOsPpEdW'),
('221810213', 'BERNALDO NAPITUPULU', '3SD2', 'DIV KOMPUTASI STATISTIK', '082360054904', 'Jl. H Hasbi No 16, Bidara Cina', '221810213@stis.ac.id', 'RB07', 'S003', '712', 'J003', NULL, NULL, '2020-11-24 01:51:39', 1, 'uNAb2BNd2Wtexx74eB33kM9hq'),
('221810220', 'CHAIRUNNISA FAUZIA SAMU', '3SI1', 'DIV KOMPUTASI STATISTIK', '0895708368300', 'Jl. Otto Iskandardinata Gang Sensus I No. 8B RT 01/RW 04 Kost Wanita Sinaga Bidara Cina, Jatinegara, Jakarta Timur 13330', '221810220@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-30 15:41:22', 1, 'B52l3QzCVOY81vmjgGgRPeoSi'),
('221810224', 'CHORY AYU ZULFAIDA', '3SI2', 'DIV KOMPUTASI STATISTIK', '085640045334', 'Jl. Otista III No.44A', '221810224@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 14:40:24', 1, 'WuUOSvd74UBv0Y0vtqE3Qf1YG'),
('221810227', 'CYNTHIA AS BAHRI', '3SD1', 'DIV KOMPUTASI STATISTIK', '082284020582', 'No 23 RT 11 RW 8, Kebon Nanas Selatan II, Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '221810227@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 15:32:52', 1, 'hFSkD9QVOF0O8UQ5OCoknPP17'),
('221810232', 'DANIEL NOVENDRI SITUMORANG', '3SD1', 'DIV KOMPUTASI STATISTIK', '081282491321', 'Jl Hasbi No 16', '221810232@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-27 01:43:17', 1, 'pd2mZBsV0c1lUlL7MZGGM6H9d'),
('221810233', 'DARIS AZHAR', '3SD2', 'DIV KOMPUTASI STATISTIK', '081573241806', 'Jl. Kebon Nanas Selatan I No.4, RT 11 RW 8, Cipinang Cimpedak, Rumah Warna Abu-Abu Lantai 2', '221810233@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 15:27:13', 1, 'UUTAFhWDsp2Hoe7ibltVVwd6b'),
('221810234', 'DEDY SAPUTRA SIREGAR', '3SI1', 'DIV KOMPUTASI STATISTIK', '085373183410', 'Jl.Ayub No.17 ', '221810234@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-29 22:57:37', 1, 'dSDiC0Xo0wuJ16wIZMdlVcKm4'),
('221810237', 'DESI KRISTIYANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '085225875087', 'Jl. H.Misnen No 05A (Kosan Harmony)', '221810237@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 14:38:55', 1, 'XY8PgoWKRmrqFtu7AF9ynNm1G'),
('221810245', 'DIMAS AL-KHUSUUFI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081911553317', 'Jl. Kebon Sayur 1 No 20 RT 5 RW 15, Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810245@stis.ac.id', 'RB03', 'S015', '001', 'J003', NULL, '0d7e3c9021ec79f2a2464ac055b7bc79.jpeg', '2020-11-29 15:44:14', 1, 'nCwOAjxdaOPq1m5WHjTBEtNas'),
('221810256', 'EDO FINMANSYAH AKBAR', '3SI1', 'DIV KOMPUTASI STATISTIK', '081225808545', 'Perum Patra Kencana Residence Blok I 15, Kel Ngijo, Kab Karang Ploso, Malang, Jawa Timur', '221810256@stis.ac.id', 'RB07', 'S003', '709', 'J003', NULL, NULL, '2020-11-28 06:19:19', 1, 'Bhzs9jfJDp5YlSR3b6LerIzgm'),
('221810259', 'EKO PUTRA WAHYUDDIN', '3SD1', 'DIV KOMPUTASI STATISTIK', '081241285758', 'Jl. Kebon Sayur 1 No 12, RT 010, RW 015, Bidaracina, Jatinegara, Jakarta Timur, DKI Jakarta', '221810259@stis.ac.id', 'RB07', 'S001', '001', 'J003', NULL, NULL, '2020-11-30 15:15:17', 1, 'hi1owFLNiFhKbIE7js8CU8cun'),
('221810260', 'ELA NUZUL RAHMAWATI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081381119950', 'Jln. Otista Raya Gg. Solihun No. 17 RT/RW 13/09 Kosan Ungu Bu Kiki Jatinegara, Jakarta Timur', '221810260@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 14:30:47', 1, 'vgLqmDbrIXwIczc9L4iRqdMrs'),
('221810261', 'ELISA IMANIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081292175591', 'Jl. Otista gg.Abdurrahman No.16 RT.01 RW.09 Kec.Jatinegara', '221810261@stis.ac.id', 'RB07', 'S003', '712', 'J006', NULL, NULL, '2020-11-21 09:31:15', 1, 'ZbnjrTDPpobj9qBQtakhu26AT'),
('221810262', 'ELSA KARTIKA VITRIANI MARPAUNG', '3SD1', 'DIV KOMPUTASI STATISTIK', '081375700485', 'Jl. Kebon Sayur I No.10A RT/RW 05/15 Bidara Cina, Jatinegara, Jakarta Timur', '221810262@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 14:45:35', 1, 'NFJaGXjIw9P2Z8DwzSrw4cbZF'),
('221810266', 'EMIR LUTHFI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082391777500', 'Jl. Otto Iskandar Dinata gg. Mangga No. 20, RT 01/RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810266@stis.ac.id', 'RB07', 'S004', '700', 'J001', NULL, 'fbca7c65c65417e535ed678d8babf7cc.jpg', '2020-11-30 12:50:29', 1, 'jnN0EeK0JPq80sRKpcAKfW7Bm'),
('221810270', 'ERIK RIHENDRI CANDRA ADIFA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081332311261', 'Jl Haji Dowel No 16 Kebon Nanas Utara', '221810270@stis.ac.id', 'RB03', 'S015', '304', 'J003', NULL, NULL, '2020-11-30 11:41:44', 1, 'rS6VfzqjTldRJGPu1MD198H1q'),
('221810278', 'FADILA AHMAD', '3SD2', 'DIV KOMPUTASI STATISTIK', '082257075942', 'Gg Arrohim No.15 RT 10/RW 07, Jl. Kebon Nanas Utara, Kelurahan Cipinang Cempedak, Kecamatan Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810278@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-28 12:26:17', 1, 'ocm7q6oGrKFTtnpjM0RTfidwe'),
('221810280', 'FAHMI REZA NUGRAHA', '3SD1', 'DIV KOMPUTASI STATISTIK', '082124319531', '-', '221810280@stis.ac.id', 'RB07', 'S002', '706', 'J006', NULL, NULL, '2020-11-28 04:35:34', 1, 'vRe6G5bj7f7PVHK0hTCkmc236'),
('221810288', 'FAKHRI HIDAYAT', '3SD2', 'DIV KOMPUTASI STATISTIK', '085369776799', 'Jl. Nias, No. 105 RT 005 RW 002, Kel. Gunung Ibul, 31113', '221810288@stis.ac.id', 'RB08', 'S008', '806', 'J003', NULL, NULL, '2020-11-28 14:36:16', 1, 'bTUJPBgG003rzEzPPdDXLVy0N'),
('221810291', 'FANI VISARA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081314196576', 'Jl. Masjid, No.25 RT 12 RW 09, Kel. Bidara Cina, Kec. Jatinegara', '221810291@stis.ac.id', 'RB05', 'S021', '001', 'J004', NULL, NULL, '2020-11-30 16:28:11', 1, 'Y4tQ1BpNI6fvDbvm8yLFgoAEy'),
('221810293', 'FARADILLA ANASTASYA', '3SD1', 'DIV KOMPUTASI STATISTIK', '081802538125', 'Jl. H. Yahya, No.51D RT 12 RW 10, Kampung Melayu, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810293@stis.ac.id', 'RB04', 'S009', '402', 'J006', NULL, NULL, '2020-11-28 04:48:22', 1, '0yWSXcq4RZmsgDvmbnbj0VRLK'),
('221810299', 'FATKHUL MUKHLISH AL-HAQ', '3SI1', 'DIV KOMPUTASI STATISTIK', '085540560014', 'Jl. Kebon Nanas Selatan No. 36B, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810299@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, '728164566cc5ce631761ac5a036b27ec.jpg', '2020-11-30 14:47:25', 1, 'd6AkZmlwPokiA0M7jJAri8Eg4'),
('221810300', 'FATURROKHMAN', '3SI2', 'DIV KOMPUTASI STATISTIK', '082337671877', 'Gg. Mangga, RT 2 RW 3, Kp. Melayu, Kec. Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13330', '221810300@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 14:43:52', 1, 'ltaKQN1OK8R6e31TOL2kH3X0c'),
('221810306', 'FIKRI SEPTRIAN ANGGARA', '3SI1', 'DIV KOMPUTASI STATISTIK', '085283076606', 'Jl. Kebon Nanas Utara, No.25 RT 05 RW 07, Kel. Cipinang Cempedak', '221810306@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 14:35:57', 1, 'jkfJjs0UOuzEp2UUop2q7zXIx'),
('221810314', 'GABERIEL', '3SI2', 'DIV KOMPUTASI STATISTIK', '082274136756', 'Taman Elang Blok E No.34, Kec. Periuk,  Kota Tangerang', '221810314@stis.ac.id', 'RB03', 'S015', '305', 'J003', NULL, NULL, '2020-11-28 16:40:09', 1, 'PuA1aHsj49nUF8ywlzDXZb5QJ'),
('221810318', 'GHITHA NURFALAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082122750511', 'Jl. Otista II, Gg. H. Misnen, No.20 RT 5 RW 9, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810318@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-22 04:38:48', 1, 'lf1BKzJjEDC6DJVWKPV6HZYU3'),
('221810327', 'HAYUN', '3SD1', 'DIV KOMPUTASI STATISTIK', '082296801636', 'Jl.Kebon Nanas Selatan 2, No.25 RT 10 RW 08, Kel. Cipinang Cempedak, Kec. Jatinegara, Kota Jakarta Timur, Daerah Khusus Ibukota Jakarta 13340', '221810327@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-29 12:34:08', 1, 'NWkP9hAX2CUq1Ngs2c9mcJxaN'),
('221810333', 'I PUTU JUNI ADI WIDIANATA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087860926574', 'Jl. Otto Iskandardinata 2, Kebon Nanas Utara,  RT 03  RW 09', '221810333@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 14:44:43', 1, '43jNbM6H3kUNUY3NOoKldBlDW'),
('221810335', 'IFFATI UZMA', '3SD2', 'DIV KOMPUTASI STATISTIK', '083180234011', 'Jl. H.Hasbi, No.24 RT 09 RW 09', '221810335@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-28 12:26:48', 1, 'MGtZpeGUwMWbvimUVhPDKWlHH'),
('221810336', 'IHZA FIKRI ZAKI KARUNIA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089625345646', 'Jl. K. H. Abdurrahman Wahid, Gg. Kuala Dua, No.B32 RT 01 RW 01, Desa Kuala Dua, Kec. Sungai Raya, Kab. Kubu Raya, Kalimantan Barat 78391', '221810336@stis.ac.id', 'RB05', 'S020', '001', 'J003', NULL, NULL, '2020-11-25 05:34:46', 1, 'jzuswqMNnqA0KNJo5FzesMqO3'),
('221810340', 'INAS ZAIZAFUN SATIRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087863545325', 'Jl. Otista Raya, Gang Solihun, No.10 RT 15 RW 08, Kel.Bidara Cina, Kec.Jatinegara, Jakarta Timur', '221810340@stis.ac.id', 'RB08', 'S008', '805', 'J003', NULL, NULL, '2020-11-30 14:24:25', 1, 'gb8OkiMM75SQ0okX71eNmDGrH'),
('221810343', 'INTAN KEMALA', '3SD2', 'DIV KOMPUTASI STATISTIK', '085208960987', 'Jl. Kebon Sayur 1, No.37 RT 004 RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810343@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-28 14:33:01', 1, '9mm188e2LpZIEHSmwywRcPqql'),
('221810350', 'IRVAN PERMANA BUSTAMI', '3SD1', 'DIV KOMPUTASI STATISTIK', '081380552118', 'Jl. Kramat Asem, No.14 RT 001 RW 004, Utan Kayu Selatan, Matraman, Jakarta Timur', '221810350@stis.ac.id', 'RB04', 'S009', '402', 'J003', NULL, NULL, '2020-11-30 10:46:11', 1, 'xQlfyjN2F6AXZV8YCYGImwehP'),
('221810354', 'JAFAR HUSAINI AZIZ', '3SI1', 'DIV KOMPUTASI STATISTIKA', '082186400561', 'Jl. Kebon Sayur 1 No. 24', '221810354@stis.ac.id', 'RB07', 'S002', '705', 'J003', NULL, NULL, '2020-11-28 10:11:00', 1, 'S6jf6gOdCUPcC2vKbIpYOYBOT'),
('221810359', 'JOICE EVANGELISTA LASE', '3SD2', 'DIV KOMPUTASI STATISTIK', '081319418183', 'Jl. Sensus I, No. 37  RT 006 RW 004, Kel. Bidara Cina', '221810359@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-28 13:17:30', 1, 'wsV23r9axwmgRI3ORie4VUqrK'),
('221810360', 'JONA P A SIREGAR', '3SI2', 'DIV KOMPUTASI STATISTIK', '081380798568', 'Pearung, Kec. Paranginan, Kab. Humbanghasundutan', '221810360@stis.ac.id', 'RB07', 'S003', '711', 'J003', NULL, NULL, '2020-11-30 04:26:07', 1, 'zlHHumjpaKZL6HYSIOqEuIqCK'),
('221810376', 'KIRAN ALDI PANGUMBANAN HASIBUAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '082276095296', 'Jl. Otista II No.20 (Samping Warung Bg Oeddin)', '221810376@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 15:26:24', 1, 'cLwK9gUn2jkq2JJGtXCV3KIgm'),
('221810377', 'KOMANG UNING SARI DEVI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085789411701', 'Jl. H. Yahya No.58, Kel. Bidara Cina', '221810377@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810378', 'KRISBANA TOGAR SIANTURI', '3SI1', 'DIV STATISTIKA', '085830713205', 'Jalan Otista II No.25 RT 6/RW 9, Bidaracina, Jatinegara, Jaktim.', '221810378@stis.ac.id', 'RB08', 'S006', '802', 'J006', NULL, '25b3e842a4fae57e61fe1e3fdef23daf.jpg', '2020-11-19 17:24:27', 1, 'QcBHLjicW460z06Zp4FXhRy8G'),
('221810386', 'LARA AYU CAHYANINGTYAS', '3SD1', 'DIV KOMPUTASI STATISTIK', '089698627655', 'Gang Solihun No.31A, Bidaracina, Jatinegara, Jakarta Timur', '221810386@stis.ac.id', 'RB07', 'S001', '001', 'J004', NULL, NULL, '2020-11-29 14:13:36', 1, 'rLvaZto3qbPmu51Cy5cpnKHCb'),
('221810392', 'LUKMAN DARY ILYASA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089626749424', 'Jl.Sensus 3, No.6 RT 003 RW 14, Kel. Bidara Cina, Jakarta Timur (Rumah warna pink tingkat 3)', '221810392@stis.ac.id', 'RB07', 'S002', '707', 'J003', NULL, NULL, '2020-11-29 09:14:17', 1, '64z2OXpU7spplj7o5SevOXdVj'),
('221810394', 'M NABIL SYUKRI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081266075794', 'Gang Mangga No.19, Kel. Bidara Cina', '221810394@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-29 00:06:17', 1, 'ZLTZAUJAHi6ElLaNGxymaGsZA'),
('221810396', 'M. ARIS MUNANDAR', '3SD2', 'DIV KOMPUTASI STATISTIK', '081373350636', 'Jl. Kebun Nanas Selatan I, No.15 RT 02 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur, DKI Jakarta, Indonesia', '221810396@stis.ac.id', 'RB07', 'S003', '709', 'J006', NULL, NULL, '2020-11-28 04:14:01', 1, 'kyrgJ4GcuNtJwSnSdjhVQWfPb'),
('221810397', 'M. BAITAL SALSABIL', '3SD1', 'DIV KOMPUTASI STATISTIK', '082330400444', 'Jl. Sensus 3 No.6', '221810397@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-30 05:49:08', 1, 'XDg5hY0ePA441aTsHBjYQziQo'),
('221810398', 'M. IRSYAD HADI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081369748308', 'Gang Mangga. No.20 RT 001 RW 003, Kel. Bidara Cina Kec. Jatinegara, Jakarta Timur', '221810398@stis.ac.id', 'RB07', 'S003', '713', 'J006', NULL, NULL, '2020-11-19 16:05:55', 1, 'zAJ3hOp2YyH57OnHRO6tInpmk'),
('221810400', 'M. RIJALUS SHOLIHIN', '3SD2', 'DIV KOMPUTASI STATISTIK', '089624985891', 'Jl. Asem, No. 4D RT 001 RW 03 , Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810400@stis.ac.id', 'RB07', 'S001', '704', 'J006', NULL, NULL, '2020-11-28 00:07:21', 1, 'c6P4Td4DqQeHXOUQLDQaFgGlz'),
('221810402', 'M.THARIF ARKANDANA', '3SD1', 'DIV KOMPUTASI STATISTIK', '089670045026', 'Perumahan Bukit Kemling Permai Blok Y No.131, Kec. Kemiling Permai, Kota Bandar Lampung, Provinsi Lampung', '221810402@stis.ac.id', 'RB07', 'S001', '701', 'J003', NULL, '366d2cfcab7cb28f6c151348eaa28674.jpg', '2020-11-29 15:13:13', 1, 'mBcxSu92jCNgECPP4Af7afwH5'),
('221810403', 'MUHAMMAD YASQI IMANDA', '3SD2', 'DIV KOMPUTASI STATISTIK', '085775712783', 'Jl. Kebon Nanas Utara, No.15 RT 10 RW 07, Kel. Cipinang Cempedak, Kec. Jatinegara, Kota Jakarta Timur', '221810403@stis.ac.id', 'RB00', 'S000', '000', 'J002', NULL, NULL, '2020-11-30 15:03:37', 1, 'Hb5eU6IFSWXP9s802OA5chNlq'),
('221810404', 'M ZIKRI', '3SI2', 'DIV KOMPUTASI STATISTIK', '085365986892', 'Jl. Kebon Nanas Selatan 1, No.3 RT 14 RW 08', '221810404@stis.ac.id', 'RB07', 'S003', '710', 'J003', NULL, NULL, '2020-11-28 12:49:20', 1, 'sbfoJKpbgWRyj9L00onL94tn1'),
('221810407', 'M. HAFIZ AL IHSAN', '3SI2', 'DIV KOMPUTASI STATISTIK', '082161709532', 'Jl. Bojong Datar Dusun VIII, Desa Sei Putih, Kec. Galang, Kab. Deli Serdang, Sumatera Utara', '221810407@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, '3f8bfed4ffdfa750b39ca209e09d6a4c.jpg', '2020-11-26 11:06:55', 1, '38Et5PF0MSkgwwxVY96QRWLd0'),
('221810412', 'MARDININGTYAS BAYU SULTHANI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081212333748', 'Jl. Kebon Nanas Selatan I, No.4 RT 11 RW 8, Cipinang Cimpedak(Rumah Warna Abu-Abu Lantai 2)', '221810412@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 15:24:09', 1, 'dnblXewaXRHb8MUxuEK150vN7'),
('221810414', 'MAUDY INSAN TANIA', '3SI1', 'DIV KOMPUTASI STATISTIK', '083874996957', 'Jl. Danau Ranau 7 No.77, Depok', '221810414@stis.ac.id', 'RB07', 'S002', '706', 'J003', NULL, NULL, '2020-11-29 12:48:35', 1, 'ESvCCr5TaGKCBjYM4DAwFqot5'),
('221810417', 'MEYTRY PETRONELLA PURBA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081362754025', 'Jl. Sensus 1 No.08 (Kost Pak Butar-Butar)', '221810417@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 14:38:43', 1, 'Tua5du5OrJT82fn7Go6jTEGeM'),
('221810418', 'MIFTAHUDDIN', '3SI1', 'DIV KOMPUTASI STATISTIK', '082293364360', 'Desa Tarailu, Kec. Sampaga, Kab. Mamuju, Prov. Sulawesi Barat', '221810418@stis.ac.id', 'RB07', 'S002', '708', 'J003', NULL, 'b58993d7eaa379b3d987b00dffbd69ff.jpg', '2020-11-30 16:32:46', 1, '74fUSmhjAjZUdXTXPNEcszIyF'),
('221810421', 'MOCHAMAD DIAZ ILYASA', '3SI2', 'DIV KOMPUTASI STATISTIK', '083830842722', 'Jl. Sensus IVA, No. 10 RT 01 RW 14, Bidara Cina, Jatinegara, Jakarta Timur(Kosan Bapak Mulyono)', '221810421@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-21 04:06:18', 1, 'LVQL3Mm6ku5gnNjCsOuNmOBWp'),
('221810422', 'MOCHAMAD IZZA ZULFIKAR SYA\'RONI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081299594151', 'Jl. Kebon Nanas Selatan I, No.4 RT 11 RW 8, Cipinang Cimpedak(Rumah Warna Abu-Abu Lantai 2)', '221810422@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 03:55:06', 1, 'EEzPdvidIRHq43Uu7jq5rcXWE'),
('221810429', 'MUCHAMMAD GAGAH AGUM FANANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082232490100', 'Jl.Ayub, No.6A RT 15  RW 8, Kampung Melayu, Jatinegara, Jakarta Timur', '221810429@stis.ac.id', 'RB07', 'S002', '707', 'J006', NULL, NULL, '2020-11-29 07:20:34', 1, 'PPXuecnCzO4AcOtcEJVTsn5az'),
('221810430', 'MUFTI RIZKI ABDILLAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '081272929742', 'Jl.Kebon Nanas Selatan 2 No.7C, Kec.Jatinegara, Kel.Cipinang Cempedak', '221810430@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-21 06:09:10', 1, 'zb2UBmp1ehaN6Qyl0RC9uj3HJ'),
('221810431', 'MUH. ADRIANSYAH', '3SI1', 'DIV KOMPUTASI STATISTIK', '082291143654', 'Jl. Kebon Sayur No. 18', '221810431@stis.ac.id', 'RB01', 'S016', '109', 'J006', NULL, NULL, '2020-11-28 00:54:11', 1, 'vHnhjrrLdSVIhR9UhAhpTXNLi'),
('221810445', 'MUHAMMAD AL FATAH', '3SD2', 'DIV KOMPUTASI STATISTIK', '082299705366', 'Jl. Johar Baru V, No. 2 RT 008 RW 011', '221810445@stis.ac.id', 'RB05', 'S021', '001', 'J003', NULL, NULL, '2020-11-30 14:49:19', 1, 'HhaVdIG3kncMZooEoX1tOFWMM'),
('221810452', 'MUHAMMAD FACHRY NAZULI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085358341387', 'Jl. Kebon Nanas Selatan 2, No. 17 RT 10 RW 8', '221810452@stis.ac.id', 'RB07', 'S001', '702', 'J003', NULL, NULL, '2020-11-29 14:28:10', 1, 'LJAdqQ4ALmT9KSPsuTLqMq33R'),
('221810454', 'MUHAMMAD FERDI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082256480465', 'Jl. Kebon Nanas Utara II, No. 32 RT 03 RW 07, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '221810454@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-28 00:57:04', 1, '81pVy2AeVHO4PgH2igZfKC1rp'),
('221810459', 'MUHAMMAD IBRAH REYNALDI TANJUNG', '3SD2', 'DIV KOMPUTASI STATISTIK', '082297138389', 'Jl. Masjid, No.8A RT 013 RW 009, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur 13330', '221810459@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 15:24:32', 1, 'AmskfDYxmPoxhT3Isa7LGf34k'),
('221810468', 'MUHAMMAD NIRWANSYAH ADI EKA PUTRA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081220725811', 'Jl. H.Asan Ari, No.D11 RT 006 RW 03, Kec. Pondok Aren, Kota Tangerang Selatan, Provinsi  Banten', '221810468@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 03:42:14', 1, '7YJPfI1ul4rzprHyEOG5v002c'),
('221810473', 'M. RIFKY NARATAMA SUSANTO', '3SI1', 'DIV KOMPUTASI STATISTIK', '082119031449', 'Jl. Kapten A. Anwar Arsyad, Gg Famili 2 No. 1546, Sumsel, Palembang', '221810473@stis.ac.id', 'RB07', 'S003', '001', 'J003', NULL, NULL, '2020-11-30 14:54:52', 1, 'rMEHWpqRvT6o9IjTihFq9qSwi'),
('221810477', 'MUHAMMAD YASIN VIDIAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085943174081', 'Jl. Kebon Sayur, No.18 RT 3 RW 15, Bidaracina, Jatinegara, Kota Jakarta Timur, DKI Jakarta 13330', '221810477@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-04 16:46:59', 1, NULL),
('221810479', 'MUHAMMAD ZULKARNAIN', '3SD1', 'DIV KOMPUTASI STATISTIK', '082132245551', 'Jl. Kebon Nanas Selatan 2, No 35 RT 003 RW 008, Cipinang Cepedak', '221810479@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-30 05:51:58', 1, 'YbaDdbafV8TivsSmwNHTw64hS'),
('221810481', 'MUTIA SORAYA ADILA', '3SD1', 'DIV KOMPUTASI STATISTIK', '085668398796', 'Jl. H. Yahya No. 271, Bidara Cina', '221810481@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-30 14:42:51', 1, 'QSNLs6l1naP3HlAmKGmOgHrsG'),
('221810484', 'NABILA BIANCA PUTRI', '3SD2', 'DIV KOMPUTASI STATISTIK', '085781051055', 'Jl. Kebon Nanas Selatan 1, No. 2 RT 13 RW 08, Cipinang Cempedak, Jatinegara, Jakarta Timur', '221810484@stis.ac.id', 'RB07', 'S001', '701', 'J006', NULL, NULL, '2020-11-27 04:43:48', 1, 'Dpc3QvjuT6aGe3SvZWILawhvl'),
('221810496', 'NASIYA ALIFAH UTAMI', '3SD1', 'DIV KOMPUTASI STATISTIK', '089635957354', 'Jl. Kebon Sayur I', '221810496@stis.ac.id', 'RB01', 'S004', '100', 'J004', NULL, NULL, '2020-11-28 01:14:39', 1, 'rZgOGcg2ai8pNylLUKnaTMW7t'),
('221810497', 'NATASYA AFIRA', '3SD2', 'DIV KOMPUTASI STATISTIK', '082286887100', 'Gang Sholihun ', '221810497@stis.ac.id', 'RB03', 'S015', '305', 'J004', NULL, NULL, '2020-11-30 10:58:29', 1, '49BNVOrbqxO0OT8APTJu65rY5'),
('221810499', 'NENSI FITRIANI', '3SD1', 'DIV KOMPUTASI STATISTIK', '082296429119', 'Jl. Otista III No. 44A, Cipinang Cempedak', '221810499@stis.ac.id', 'RB01', 'S011', '105', 'J003', NULL, NULL, '2020-11-30 11:35:06', 1, 'FN3ulujMlQxxoviTRy5xbV3vT'),
('221810502', 'NISSA SILVIANNA DEVI NUR AFNI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082337010331', 'Jl. Kebon Sayur I No.5A RT 02 RW 15, Kel.Bidara Cina', '221810502@stis.ac.id', 'RB05', 'S020', '001', 'J004', NULL, NULL, '2020-11-30 13:35:08', 1, 'LtNsK66H9iLyVcKReARnK6oos'),
('221810509', 'NUGROHO ADI SUDANTOKO', '3SI2', 'DIV KOMPUTASI STATISTIK', '085727120905', 'Jl. H. Yahya No.45 , Kebon Nanas Utara', '221810509@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-30 05:40:38', 1, 'InINNwl0greKojpySgwZPesVH'),
('221810510', 'NUGROHO PURNOMO AJI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081229705338', 'Jl. Timur, No.13 RT 36 RW 10, Grasak Gondang, Sragen', '221810510@stis.ac.id', 'RB03', 'S015', '304', 'J006', NULL, NULL, '2020-11-28 12:28:57', 1, 'KzeBrCrkYPtSH84AONLnC2cvR'),
('221810514', 'NUR ULUM RAHMANULLOH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082234132926', 'Jl. Otista II, Gg. H. Dawel Atas, No. 19 RT 04 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810514@stis.ac.id', 'RB07', 'S001', '704', 'J003', NULL, NULL, '2020-11-28 14:02:27', 1, '2dgytgRLl8TzgTHnX2sdB9Qwd'),
('221810522', 'NURUL SYIFA AMALIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081274265665', 'Jl. H. Hasbi, No. 24, RT 09 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810522@stis.ac.id', 'RB07', 'S004', '700', 'J004', NULL, NULL, '2020-11-30 12:56:06', 1, 'bpqDxxi0eOdJxRBCzcnpwx4VP'),
('221810527', 'PARAMITHA MADELIN ALBRIGHT', '3SI1', 'DIV KOMPUTASI STATISTIK', '082194416271', 'Jl. Otto Iskandardinata, Gg H. Dawel, No.22 RT 005 RW 009, Kel. Bidaracina, Kec. Jatinegara, Jakarta Timur', '221810527@stis.ac.id', 'RB03', 'S015', '306', 'J006', NULL, NULL, '2020-11-24 14:57:21', 1, 'ZZqOOAX0l2pbAancacJhjcs4I'),
('221810528', 'PAULINA SIALLAGAN', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895414293579', 'Jl. Kebon Sayur 1, No.66 RT 008 RW 006, Kel.Bidara Cina, Kec.Jatinegara, Jakarta Timur', '221810528@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-28 12:32:39', 1, 'GdEbqFlXuvFqB8LaOsxj9hZvF');
INSERT INTO `sikoko_mahasiswa` (`nim`, `nama`, `kelas`, `prodi`, `no_hp`, `alamat`, `email`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`, `password`, `foto`, `last_login`, `level`, `token`) VALUES
('221810540', 'RAFLY AMANATULLA', '3SI1', 'DIV KOMPUTASI STATISTIK', '082282554218', 'Jl. Sensus Iia, Kel. Bidara Cina', '221810540@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-28 01:04:48', 1, 'T7ZCVB7QJsY44kSEKDktC1zmY'),
('221810547', 'RAKA ARTIAN PRAWARDANA', '3SI2', 'DIV KOMPUTASI STATISTIK', '089652679919', 'Jl. Kebon Nanas Selatan 2 No.18', '221810547@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 14:36:49', 1, 'DtGgpD1b8f6FhXAOJABU3Poy5'),
('221810548', 'RAKA IKMANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '089653669653', 'Jl. Salemba Utan Barat,No. 7 RT 002 RW 007, Kel. Pal Meriam, Kec. Matraman, Jakarta Timur', '221810548@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 14:37:31', 1, 'uWJ2YXpN2wOA5MaDCMVzS1Lhh'),
('221810557', 'REYHAN SAADI', '3SD1', 'DIV KOMPUTASI STATISTIK', '085867871759', 'Jl. Otista II No.26, Bidaracina, Jatinegara, Jakarta Timur', '221810557@stis.ac.id', 'RB03', 'S009', '303', 'J006', NULL, NULL, '2020-11-30 15:07:35', 1, 'HWId1yZ3t4sAgNQl3XexzDU6N'),
('221810558', 'REZKY ANGGA PRADANA', '3SI1', 'DIV KOMPUTASI STATISTIK', '087734623487', 'Gg.Abdurrahman, No.34Pa RT 04 RW 09,Kel. Bidara Cina,Kec. Jatinegara, Jaktim', '221810558@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-29 05:49:54', 1, 'XbNlthnyaPtDg0L6Z6Gyv9P4l'),
('221810560', 'RIAN ALFA NURFALAH', '3SI2', 'DIV KOMPUTASI STATISTIK', '083180405022', 'Jl. Ayub, No. 40 RT 1 RW 3, Kel. Bidara Cina, Kec. Jatinegara, Kota Jakarta Timur, DKI Jakarta', '221810560@stis.ac.id', 'RB07', 'S002', '001', 'J003', NULL, NULL, '2020-11-29 02:57:06', 1, 'WfkwJ9xQrNKisfvxWPzHStnCc'),
('221810568', 'RIHADATULAISY SALSABILA NURUDIN', '3SI1', 'DIV KOMPUTASI STATISTIK', '089653407911', 'Jl. Swadarma Utara 5, RT 002 RW 01, Jakarta Selatan', '221810568@stis.ac.id', 'RB05', 'S004', '500', 'J004', NULL, NULL, '2020-11-30 02:09:07', 1, 'SgS7NrSCcQQhRc8Hf3fDfs5NB'),
('221810576', 'RIVA ADLI DZIL IKRAM', '3SI1', 'DIV KOMPUTASI STATISTIK', '082390406016', 'Jl. Otista II No.25D', '221810576@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 14:46:36', 1, 'OgQkfsv9m9twDwZ29FOtdMWYR'),
('221810577', 'RIZKA INDAH PRISTANIA', '3SI2', 'DIV KOMPUTASI STATISTIK', '081225465226', 'Jl. H. Yahya No.51D ', '221810577@stis.ac.id', 'RB08', 'S008', '806', 'J006', NULL, NULL, '2020-11-30 21:40:53', 1, 'qd9cS7Ho9OqPIur0kMHJ1rVLO'),
('221810578', 'RIZKI NAZHIF NUR', '3SD1', 'DIV KOMPUTASI STATISTIK', '089503435064', 'Tidak Ada Kos', '221810578@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-22 15:38:02', 1, 'OIQ5mByPqfVXaebnGvmmYMUCL'),
('221810583', 'RIZQINA RAHMATI', '3D32', 'DIV KOMPUTASI STATISTIK', '082217651385', 'Jl. Kebon Nanas Selatan II, No.23 RT 11 RW 8', '221810583@stis.ac.id', 'RB03', 'S015', '305', 'J006', NULL, NULL, '2020-11-30 09:25:25', 1, 'xehyjfSSVichZxKytWionCJ52'),
('221810589', 'RUTH MADELINE', '3SI2', 'DIV KOMPUTASI STATISTIK', '081927106649', 'Jl. Otista 2', '221810589@stis.ac.id', 'RB07', 'S002', '706', 'J006', NULL, NULL, '2020-11-28 14:35:56', 1, 'hbvjWzqsSmcfnZFfq5Xg2b1r0'),
('221810592', 'SABRIELLA HAFIFAH', '3SD1', 'DIV KOMPUTASI STATISTIK', '082170812115', 'Jl. Kebon Nanas Utara I, No.15 RT02 RW07', '221810592@stis.ac.id', 'RB07', 'S001', '702', 'J006', NULL, NULL, '2020-11-29 16:13:37', 1, 'fvv8azcsb5sqEgOsyJEEBjYLo'),
('221810596', 'SALWA RIZQINA PUTRI', '3SD1', 'DIV KOMPUTASI STATISTIK', '0859180721872', 'Jl. Kebon Nanas Selatan II No. 6A', '221810596@stis.ac.id', 'RB00', 'S000', '000', 'J004', NULL, NULL, '2020-11-29 14:32:56', 1, 'BxW9QjtQYAFwHZtB7pPEJnYDJ'),
('221810597', 'SANDRO E. IRWANSYAH PASARIBU', '3SD2', 'DIV KOMPUTASI STATISTIK', '081375729438', 'Jl. Mulia, No 16 RT 8 RW 8,Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810597@stis.ac.id', 'RB07', 'S003', '713', 'J006', NULL, NULL, '2020-11-28 07:03:29', 1, 'hS6HQdluxP54EyB9DJTZWjGtf'),
('221810608', 'SITA DIAN MARETNA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081387943973', 'Jl. Cendrawasih 1, RT 05 RW 02, Sawah Baru, Ciputat, Tangsel', '221810608@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-30 14:42:02', 1, 'xIBeVLFR3iTMuV9AOrYbXEEJZ'),
('221810618', 'SULTAN ACHMAD RIZALDI', '3SI2', 'DIV KOMPUTASI STATISTIK', '082257452787', 'Jl. Kebon Nanas Utara 2, No.29A RT 05 RW 04 (Kosan Bapak Yanto)', '221810618@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-28 14:20:33', 1, '5aSzC3m6lqmld1o6ftYI7LzSd'),
('221810619', 'TALITHA NABILA SAIFANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '081932081971', 'Jl. H. Yahya No.58 RT 014 RW 010, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810619@stis.ac.id', 'RB07', 'S002', '001', 'J004', NULL, NULL, '2020-11-30 16:06:33', 1, 'VAHeXkH56HDiwCxqUfy8OvHkI'),
('221810622', 'TASYA MINA ALIFIA', '3SI1', 'DIV KOMPUTASI STATISTIK', '081931466389', 'Jl. Penghulu No 16A RT 011 RW 10, Kel Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810622@stis.ac.id', 'RB05', 'S020', '501', 'J006', NULL, NULL, '2020-11-30 14:41:10', 1, 'V5j03uBeOhjJsoCDYYfdoHIQ8'),
('221810626', 'THORIQ IBADURROHMAN', '3SI1', 'DIV KOMPUTASI STATISTIK', '085155133925', 'Jl. Bintara 8 No 31 RT 003 RW 003, Kel. Bintara, Kec. Bekasi Barat, Kota Bekasi', '221810626@stis.ac.id', 'RB07', 'S002', '705', 'J006', NULL, NULL, '2020-11-29 13:08:53', 1, 'tYqFgAuENNvkM3ZZM0oDstiC1'),
('221810630', 'TIMOTIUS VINCENT GUNAWAN', '3SD2', 'DIV KOMPUTASI STATISTIK', '081233733346', 'Jl. H. Hasbi No.16', '221810630@stis.ac.id', 'RB05', 'S022', '503', 'J006', NULL, NULL, '2020-11-28 23:13:27', 1, 'WNbDW28CSHlRqYY7ec66n8Fy9'),
('221810634', 'TUBAGUS LANGLANG PURWASASMITA', '3SD1', 'DIV KOMPUTASI STATISTIK', '0895405504545', 'Jl. Kebon Sayur 1 No 8 RT 5 RW 15 ', '221810634@stis.ac.id', 'RB01', 'S016', '108', 'J006', NULL, NULL, '2020-11-10 07:06:06', 1, NULL),
('221810637', 'ULYA ADIWENA', '3SI2', 'DIV KOMPUTASI STATISTIK', '082327360683', 'Jl. Otista Raya, Gg. Abdul Rahman No 16 RT 1 RW 9, Kampung Melayu, Jatinegara, Jakarta Timur, DKI Jakarta 13330 (Kos Sarah)', '221810637@stis.ac.id', 'RB07', 'S003', '711', 'J006', NULL, NULL, '2020-11-28 15:48:31', 1, 'TSfGyRcCOK7muQJ7sT7pdwH3K'),
('221810640', 'VANIA RIZKI OKTAVIASARI', '3SI2', 'DIV KOMPUTASI STATISTIK', '081287651793', 'Jl. Kebon Sayur I No.3', '221810640@stis.ac.id', 'RB07', 'S003', '001', 'J004', NULL, NULL, '2020-11-30 15:12:05', 1, 'S5P0U8LrhnNToxczsCDlX3AYJ'),
('221810641', 'VARADINYA SHOLAITA', '3SD1', 'DIV KOMPUTASI STATISTIK', '087896416745', 'Jl. H. Yahya No 58 RT 014 RW 010, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810641@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-28 15:28:08', 1, 'czbtiNxjRXCOJlFUaYKXD0fp4'),
('221810642', 'VELIA TRI MARLIANA', '3SD2', 'DIV KOMPUTASI STATISTIK', '083863856590', 'Jl. Otista 2, Gg. H. Misnen No. 20 RT 005 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810642@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-28 22:16:16', 1, 'sDzhssbQKleP8olDNa1rmI2FW'),
('221810647', 'VIONA FEBRIANA', '3SI1', 'DIV KOMPUTASI STATISTIK', '082139646961', 'Lawang, Malang', '221810647@stis.ac.id', 'RB07', 'S002', '708', 'J006', NULL, NULL, '2020-11-23 13:02:12', 1, 'zVcTy1S0raBaF3Pd3Qa4zKCrx'),
('221810650', 'WAHIDYA NURKARIM', '3SD1', 'DIV KOMPUTASI STATISTIK', '081213334998', 'Jl. Kebon Nanas Selatan II, RT 002 RW 011', '221810650@stis.ac.id', 'RB07', 'S001', '703', 'J006', NULL, NULL, '2020-11-29 12:39:51', 1, 'NiMILbBBp7ZtqKLm4DRexqndd'),
('221810652', 'WASILAH NUR ASTUTI', '3SD2', 'DIV KOMPUTASI STATISTIK', '089618927527', 'Jl. Raya Jakarta Km 6. Perumahan Persada Banten Blok TC1 No. 33 RT 08 RW 06, Kel. Teritih, Kec. Walantaka, Kota Serang-Banten 42183', '221810652@stis.ac.id', 'RB08', 'S008', '805', 'J006', NULL, NULL, '2020-11-04 15:34:52', 1, NULL),
('221810659', 'XAFRILLAH AGNES NALA AYULIA WASA HARDIANA', '3D31', 'DIV KOMPUTASI STATISTIK', '085234800487', 'Jl. Sensus IVd No.20 RT 01 RW 14, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810659@stis.ac.id', 'RB07', 'S001', '704', 'J006', NULL, NULL, '2020-11-22 11:09:01', 1, 'CF4Ap9zFQ4AWW259GypnLPn0p'),
('221810660', 'YENITA AMELIA IKA PUTRI', '3SI2', 'DIV KOMPUTASI STATISTIK', '085888603781', 'Jl. Masjid No.32', '221810660@stis.ac.id', 'RB05', 'S022', '001', 'J004', NULL, NULL, '2020-11-28 07:26:28', 1, '5j5OpliKBxQnqIbJvKHJ3qHxZ'),
('221810662', 'YOGA CAHYA PUTRA', '3SD1', 'DIV KOMPUTASI STATISTIK', '081227733747', 'Jl. Abimanyu RT 02 RW 06 Wonorawi, Dukuh, Sukoharjo, Jawa Tengah', '221810662@stis.ac.id', 'RB01', 'S016', '108', 'J003', NULL, NULL, '2020-11-30 14:55:23', 1, 'mPMzHmf6xvEXDAxloSFkWylf1'),
('221810670', 'YUDISTIRA ELTON JHON', '3SI2', 'DIV KOMPUTASI STATISTIK', '082231010399', 'Jl. Kebon Nanas Utara 1, Gg K.H Sabdalloh No. 4 RT 3 RW 7, Kel. Cipinang Cempedak, Kec. Jatinegara, Jakarta Timur', '221810670@stis.ac.id', 'RB03', 'S015', '306', 'J003', NULL, NULL, '2020-11-30 15:23:39', 1, 'eW92wVadafHIElcp1NfFdpZyU'),
('221810672', 'YULIA ARYANI', '3SD2', 'DIV KOMPUTASI STATISTIK', '082386517216', 'Jl. Otto Iskandardinata Raya, Gg H.Yahya No 6 (Griya Firamita) RT 01 RW 09, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur 13330', '221810672@stis.ac.id', 'RB07', 'S003', '712', 'J006', NULL, NULL, '2020-11-29 15:20:01', 1, 'vfsxe1Kg4gvc9dWfoySpa7dHK'),
('221810673', 'YULLY SEPTIA PERTIWI', '3SI1', 'DIV KOMPUTASI STATISTIK', '081268327252', 'Jl. Mulia, No.21 RT 9 RW 8, Kp. Melayu, Kec. Jatinegara, DKI Jakarta 13330', '221810673@stis.ac.id', 'RB05', 'S021', '502', 'J006', NULL, NULL, '2020-11-24 13:22:22', 1, 'GUXAhEsotTuboMSsuvN2UgYo7'),
('221810676', 'ZAHLUL FUADI', '3SI1', 'DIV KOMPUTASI STATISTIK', '08979846945', 'Jl. K. Inong Balee No.B34 Dusun Sederhana, Kopelma Darussalam, Syiah Kuala, Banda Aceh, Aceh', '221810676@stis.ac.id', 'RB05', 'S022', '001', 'J003', NULL, NULL, '2020-11-30 14:12:58', 1, '60CNEYg5BLoiszmT3gpBwnH9u'),
('221810682', 'ZUHROTUR ROFIAH', '3SD2', 'DIV KOMPUTASI STATISTIK', '085216613593', 'Jl. Otista Raya, Gg. Mangga No.31 RT 04 RW 03, Kel. Bidara Cina, Kec. Jatinegara, Jakarta Timur', '221810682@stis.ac.id', 'RB07', 'S003', '710', 'J006', NULL, NULL, '2020-11-28 22:09:25', 1, 'zsyNuSwKUIRwAYAwlXSlCg8sH');

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

--
-- Dumping data for table `sikoko_penilaian`
--

INSERT INTO `sikoko_penilaian` (`id_tim`, `id_mahasiswa`, `id_jab_lapangan`, `id_dosen`, `nilai`) VALUES
('T01', '211810091', 'L11', '197412101996121001', 60),
('T01', '211810123', 'L11', '197412101996121001', 60),
('T01', '211810136', 'L11', '197412101996121001', 60),
('T01', '211810143', 'L11', '197412101996121001', 60),
('T01', '211810144', 'L10', '197412101996121001', 60),
('T01', '211810190', 'L11', '197412101996121001', 60),
('T01', '221810145', 'L11', '197412101996121001', 60),
('T01', '221810157', 'L11', '197412101996121001', 60),
('T02', '211810142', 'L04', '197412101996121001', 60),
('T02', '211810217', 'L01', '197412101996121001', 60),
('T02', '211810599', 'L03', '197412101996121001', 60),
('T02', '221810403', 'L02', '197412101996121001', 60),
('T02', '221810596', 'L03', '197412101996121001', 60),
('T03', '111810197', 'L11', '197002191992112001', 60),
('T03', '111810223', 'L11', '197002191992112001', 60),
('T03', '211810200', 'L11', '197002191992112001', 60),
('T03', '211810215', 'L11', '197002191992112001', 60),
('T03', '211810225', 'L11', '197002191992112001', 60),
('T03', '211810228', 'L11', '197002191992112001', 60),
('T03', '211810239', 'L10', '197002191992112001', 60),
('T03', '221810213', 'L11', '197002191992112001', 60),
('T03', '221810245', 'L11', '197002191992112001', 60),
('T04', '211810152', 'L08', '197002191992112001', 60),
('T04', '211810181', 'L08', '197002191992112001', 60),
('T04', '211810249', 'L08', '197002191992112001', 60),
('T04', '211810257', 'L08', '197002191992112001', 60),
('T04', '211810282', 'L08', '197002191992112001', 60),
('T04', '211810298', 'L08', '197002191992112001', 60),
('T04', '211810332', 'L08', '197002191992112001', 60),
('T04', '211810334', 'L08', '197002191992112001', 60),
('T04', '211810367', 'L08', '197002191992112001', 60),
('T04', '211810399', 'L08', '197002191992112001', 60),
('T04', '211810435', 'L08', '197002191992112001', 60),
('T04', '211810478', 'L08', '197002191992112001', 60),
('T04', '211810552', 'L08', '197002191992112001', 60),
('T04', '211810610', 'L08', '197002191992112001', 60),
('T04', '211810648', 'L08', '197002191992112001', 60),
('T05', '211810393', 'L11', '197608092000032001', 60),
('T05', '211810395', 'L10', '197608092000032001', 60),
('T05', '211810605', 'L11', '197608092000032001', 60),
('T05', '221810452', 'L11', '197608092000032001', 60),
('T05', '221810583', 'L11', '197608092000032001', 60),
('T05', '221810676', 'L11', '197608092000032001', 60),
('T06', '211810242', 'L11', '197608092000032001', 60),
('T06', '211810315', 'L11', '197608092000032001', 60),
('T06', '211810475', 'L11', '197608092000032001', 60),
('T06', '211810512', 'L11', '197608092000032001', 60),
('T06', '221810592', 'L11', '197608092000032001', 60),
('T06', '221810650', 'L10', '197608092000032001', 60),
('T07', '111810474', 'L11', '198506012007012003', 60),
('T07', '111810521', 'L11', '198506012007012003', 60),
('T07', '211810451', 'L11', '198506012007012003', 60),
('T07', '211810455', 'L11', '198506012007012003', 60),
('T07', '211810463', 'L10', '198506012007012003', 60),
('T07', '211810466', 'L11', '198506012007012003', 60),
('T07', '211810490', 'L11', '198506012007012003', 60),
('T07', '211810505', 'L11', '198506012007012003', 60),
('T07', '221810445', 'L11', '198506012007012003', 60),
('T07', '221810468', 'L11', '198506012007012003', 60),
('T08', '111710070', 'L11', '197312272000031002', 60),
('T08', '211810564', 'L11', '197312272000031002', 60),
('T08', '211810617', 'L11', '197312272000031002', 60),
('T08', '211810632', 'L11', '197312272000031002', 60),
('T08', '211810653', 'L11', '197312272000031002', 60),
('T08', '211810671', 'L11', '197312272000031002', 60),
('T08', '221810568', 'L11', '197312272000031002', 60),
('T08', '221810662', 'L10', '197312272000031002', 60),
('T09', '111810440', 'L11', '196207221985012001', 60),
('T09', '111810457', 'L11', '196207221985012001', 60),
('T09', '211810208', 'L10', '196207221985012001', 60),
('T09', '211810222', 'L11', '196207221985012001', 60),
('T09', '211810344', 'L11', '196207221985012001', 60),
('T09', '211810523', 'L11', '196207221985012001', 60),
('T09', '211810587', 'L11', '196207221985012001', 60),
('T09', '221810414', 'L11', '196207221985012001', 60),
('T10', '111810304', 'L11', '196805031991011001', 60),
('T10', '211810247', 'L11', '196805031991011001', 60),
('T10', '211810283', 'L11', '196805031991011001', 60),
('T10', '211810305', 'L11', '196805031991011001', 60),
('T10', '211810323', 'L11', '196805031991011001', 60),
('T10', '211810364', 'L11', '196805031991011001', 60),
('T10', '221709732', 'L11', '196805031991011001', 60),
('T10', '221810350', 'L11', '196805031991011001', 60),
('T10', '221810392', 'L10', '196805031991011001', 60),
('T10', '221810394', 'L11', '196805031991011001', 60),
('T11', '211810170', 'L10', '197211171995121001', 60),
('T11', '211810358', 'L11', '197211171995121001', 60),
('T11', '211810387', 'L11', '197211171995121001', 60),
('T11', '211810413', 'L11', '197211171995121001', 60),
('T11', '211810533', 'L11', '197211171995121001', 60),
('T11', '211810534', 'L11', '197211171995121001', 60),
('T11', '211810675', 'L11', '197211171995121001', 60),
('T11', '221810291', 'L11', '197211171995121001', 60),
('T11', '221810359', 'L11', '197211171995121001', 60),
('T11', '221810527', 'L11', '197211171995121001', 60),
('T12', '211810101', 'L11', '198002102002121001', 60),
('T12', '211810286', 'L11', '198002102002121001', 60),
('T12', '211810310', 'L11', '198002102002121001', 60),
('T12', '211810345', 'L11', '198002102002121001', 60),
('T12', '211810369', 'L11', '198002102002121001', 60),
('T12', '211810375', 'L11', '198002102002121001', 60),
('T12', '211810545', 'L10', '198002102002121001', 60),
('T12', '211810582', 'L11', '198002102002121001', 60),
('T12', '221810137', 'L11', '198002102002121001', 60),
('T12', '221810378', 'L11', '198002102002121001', 60),
('T13', '211810169', 'L11', '197808022000122001', 60),
('T13', '211810363', 'L11', '197808022000122001', 60),
('T13', '211810464', 'L10', '197808022000122001', 60),
('T13', '211810539', 'L11', '197808022000122001', 60),
('T13', '211810573', 'L11', '197808022000122001', 60),
('T13', '211810612', 'L11', '197808022000122001', 60),
('T13', '211810666', 'L11', '197808022000122001', 60),
('T13', '221810232', 'L11', '197808022000122001', 60),
('T13', '221810407', 'L11', '197808022000122001', 60),
('T13', '221810417', 'L11', '197808022000122001', 60),
('T14', '211810171', 'L10', '198202072004121001', 60),
('T14', '211810361', 'L11', '198202072004121001', 60),
('T14', '211810428', 'L11', '198202072004121001', 60),
('T14', '211810600', 'L11', '198202072004121001', 60),
('T14', '211810635', 'L11', '198202072004121001', 60),
('T14', '221810097', 'L11', '198202072004121001', 60),
('T14', '221810234', 'L11', '198202072004121001', 60),
('T14', '221810360', 'L11', '198202072004121001', 60),
('T14', '221810376', 'L11', '198202072004121001', 60),
('T14', '221810459', 'L11', '198202072004121001', 60),
('T15', '211810187', 'L11', '196706121991011001', 60),
('T15', '211810281', 'L11', '196706121991011001', 60),
('T15', '211810374', 'L11', '196706121991011001', 60),
('T15', '211810535', 'L11', '196706121991011001', 60),
('T15', '211810590', 'L10', '196706121991011001', 60),
('T15', '221810262', 'L11', '196706121991011001', 60),
('T16', '111810132', 'L09', '198704142010121001', 60),
('T16', '111810162', 'L09', '198704142010121001', 60),
('T16', '111810476', 'L09', '198704142010121001', 60),
('T16', '111810574', 'L09', '198704142010121001', 60),
('T16', '111810661', 'L09', '198704142010121001', 60),
('T16', '211810094', 'L09', '198704142010121001', 60),
('T16', '211810154', 'L09', '198704142010121001', 60),
('T16', '211810185', 'L09', '198704142010121001', 60),
('T16', '211810272', 'L09', '198704142010121001', 60),
('T16', '211810294', 'L09', '198704142010121001', 60),
('T16', '211810328', 'L09', '198704142010121001', 60),
('T16', '211810357', 'L09', '198704142010121001', 60),
('T16', '211810439', 'L09', '198704142010121001', 60),
('T16', '211810456', 'L09', '198704142010121001', 60),
('T16', '211810462', 'L09', '198704142010121001', 60),
('T16', '211810536', 'L09', '198704142010121001', 60),
('T16', '211810542', 'L09', '198704142010121001', 60),
('T16', '211810624', 'L09', '198704142010121001', 60),
('T16', '211810628', 'L09', '198704142010121001', 60),
('T16', '211810665', 'L09', '198704142010121001', 60),
('T16', '211810677', 'L09', '198704142010121001', 60),
('T16', '211810679', 'L09', '198704142010121001', 60),
('T17', '211810148', 'L11', '195806081986031005', 60),
('T17', '211810226', 'L11', '195806081986031005', 60),
('T17', '211810274', 'L10', '195806081986031005', 60),
('T17', '211810322', 'L11', '195806081986031005', 60),
('T17', '211810598', 'L11', '195806081986031005', 60),
('T17', '211810674', 'L11', '195806081986031005', 60),
('T17', '211810678', 'L11', '195806081986031005', 60),
('T17', '221810673', 'L11', '195806081986031005', 60),
('T18', '211810153', 'L11', '198202022003121004', 60),
('T18', '211810290', 'L11', '198202022003121004', 60),
('T18', '211810385', 'L11', '198202022003121004', 60),
('T18', '211810461', 'L11', '198202022003121004', 60),
('T18', '211810488', 'L11', '198202022003121004', 60),
('T18', '211810503', 'L11', '198202022003121004', 60),
('T18', '211810519', 'L11', '198202022003121004', 60),
('T18', '211810563', 'L11', '198202022003121004', 60),
('T18', '211810572', 'L11', '198202022003121004', 60),
('T18', '211810633', 'L11', '198202022003121004', 60),
('T18', '221810155', 'L11', '198202022003121004', 60),
('T18', '221810335', 'L11', '198202022003121004', 60),
('T18', '221810576', 'L10', '198202022003121004', 60),
('T18', '221810672', 'L11', '198202022003121004', 60),
('T19', '111810160', 'L11', '196302081985011001', 60),
('T19', '111810164', 'L11', '196302081985011001', 60),
('T19', '111810229', 'L11', '196302081985011001', 60),
('T19', '111810309', 'L11', '196302081985011001', 60),
('T19', '111810436', 'L10', '196302081985011001', 60),
('T19', '111810518', 'L11', '196302081985011001', 60),
('T19', '111810603', 'L11', '196302081985011001', 60),
('T19', '211810175', 'L11', '196302081985011001', 60),
('T19', '211810320', 'L11', '196302081985011001', 60),
('T20', '211810179', 'L11', '198606022009022007', 60),
('T20', '211810216', 'L10', '198606022009022007', 60),
('T20', '211810289', 'L11', '198606022009022007', 60),
('T20', '211810324', 'L11', '198606022009022007', 60),
('T20', '211810401', 'L11', '198606022009022007', 60),
('T20', '211810480', 'L11', '198606022009022007', 60),
('T20', '221810499', 'L11', '198606022009022007', 60),
('T20', '221810619', 'L11', '198606022009022007', 60),
('T21', '211810111', 'L11', '196503141988021001', 60),
('T21', '211810139', 'L10', '196503141988021001', 60),
('T21', '211810277', 'L11', '196503141988021001', 60),
('T21', '211810356', 'L11', '196503141988021001', 60),
('T21', '211810471', 'L11', '196503141988021001', 60),
('T21', '211810507', 'L11', '196503141988021001', 60),
('T21', '211810591', 'L11', '196503141988021001', 60),
('T21', '221810193', 'L11', '196503141988021001', 60),
('T22', '211810092', 'L11', '198110142004122001', 60),
('T22', '211810100', 'L11', '198110142004122001', 60),
('T22', '211810180', 'L11', '198110142004122001', 60),
('T22', '211810271', 'L11', '198110142004122001', 60),
('T22', '211810504', 'L11', '198110142004122001', 60),
('T22', '221810104', 'L11', '198110142004122001', 60),
('T22', '221810306', 'L11', '198110142004122001', 60),
('T22', '221810430', 'L11', '198110142004122001', 60),
('T22', '221810522', 'L10', '198110142004122001', 60),
('T23', '211709938', 'L11', '198306072007012009', 60),
('T23', '211810098', 'L11', '198306072007012009', 60),
('T23', '211810118', 'L10', '198306072007012009', 60),
('T23', '211810405', 'L11', '198306072007012009', 60),
('T23', '211810444', 'L11', '198306072007012009', 60),
('T23', '211810524', 'L11', '198306072007012009', 60),
('T23', '211810607', 'L11', '198306072007012009', 60),
('T23', '221810343', 'L11', '198306072007012009', 60),
('T24', '211810158', 'L11', '197807222000121003', 60),
('T24', '211810210', 'L11', '197807222000121003', 60),
('T24', '211810279', 'L11', '197807222000121003', 60),
('T24', '211810513', 'L11', '197807222000121003', 60),
('T24', '211810551', 'L11', '197807222000121003', 60),
('T24', '221810126', 'L11', '197807222000121003', 60),
('T24', '221810288', 'L11', '197807222000121003', 60),
('T24', '221810396', 'L11', '197807222000121003', 60),
('T24', '221810400', 'L10', '197807222000121003', 60),
('T25', '211810150', 'L11', '197001121991122001', 60),
('T25', '211810235', 'L11', '197001121991122001', 60),
('T25', '211810313', 'L11', '197001121991122001', 60),
('T25', '211810411', 'L10', '197001121991122001', 60),
('T25', '211810544', 'L11', '197001121991122001', 60),
('T25', '221810280', 'L11', '197001121991122001', 60),
('T25', '221810540', 'L11', '197001121991122001', 60),
('T26', '211810121', 'L11', '197007251998032003', 60),
('T26', '211810133', 'L11', '197007251998032003', 60),
('T26', '211810284', 'L11', '197007251998032003', 60),
('T26', '211810287', 'L11', '197007251998032003', 60),
('T26', '211810450', 'L11', '197007251998032003', 60),
('T26', '211810495', 'L11', '197007251998032003', 60),
('T26', '211810556', 'L11', '197007251998032003', 60),
('T26', '211810584', 'L11', '197007251998032003', 60),
('T26', '221810377', 'L11', '197007251998032003', 60),
('T26', '221810402', 'L10', '197007251998032003', 60),
('T26', '221810484', 'L11', '197007251998032003', 60),
('T26', '221810578', 'L11', '197007251998032003', 60),
('T27', '111810095', 'L11', '196102191983122001', 60),
('T27', '111810174', 'L11', '196102191983122001', 60),
('T27', '111810575', 'L11', '196102191983122001', 60),
('T27', '211810669', 'L10', '196102191983122001', 60),
('T27', '221810641', 'L11', '196102191983122001', 60),
('T28', '111710027', 'L11', '197502041996122001', 60),
('T28', '111810267', 'L11', '197502041996122001', 60),
('T28', '111810543', 'L11', '197502041996122001', 60),
('T28', '111810604', 'L10', '197502041996122001', 60),
('T28', '111810644', 'L11', '197502041996122001', 60),
('T28', '211709988', 'L11', '197502041996122001', 60),
('T28', '211810109', 'L11', '197502041996122001', 60),
('T28', '211810362', 'L11', '197502041996122001', 60),
('T29', '111810370', 'L11', '198007242002121002', 60),
('T29', '211810103', 'L11', '198007242002121002', 60),
('T29', '211810149', 'L11', '198007242002121002', 60),
('T29', '211810212', 'L10', '198007242002121002', 60),
('T29', '211810346', 'L11', '198007242002121002', 60),
('T29', '211810371', 'L11', '198007242002121002', 60),
('T29', '211810567', 'L11', '198007242002121002', 60),
('T29', '211810656', 'L11', '198007242002121002', 60),
('T29', '221810140', 'L11', '198007242002121002', 60),
('T29', '221810183', 'L11', '198007242002121002', 60),
('T29', '221810640', 'L11', '198007242002121002', 60),
('T30', '211810184', 'L11', '198106042003121001', 60),
('T30', '211810206', 'L11', '198106042003121001', 60),
('T30', '211810268', 'L11', '198106042003121001', 60),
('T30', '211810337', 'L11', '198106042003121001', 60),
('T30', '211810426', 'L11', '198106042003121001', 60),
('T30', '211810447', 'L11', '198106042003121001', 60),
('T30', '211810453', 'L10', '198106042003121001', 60),
('T30', '211810550', 'L11', '198106042003121001', 60),
('T30', '211810623', 'L11', '198106042003121001', 60),
('T30', '221810626', 'L11', '198106042003121001', 60),
('T31', '211810236', 'L11', '198111272004122001', 60),
('T31', '211810244', 'L11', '198111272004122001', 60),
('T31', '211810285', 'L11', '198111272004122001', 60),
('T31', '211810307', 'L11', '198111272004122001', 60),
('T31', '211810355', 'L11', '198111272004122001', 60),
('T31', '211810442', 'L10', '198111272004122001', 60),
('T31', '211810443', 'L11', '198111272004122001', 60),
('T31', '211810498', 'L11', '198111272004122001', 60),
('T31', '221810233', 'L11', '198111272004122001', 60),
('T31', '221810318', 'L11', '198111272004122001', 60),
('T31', '221810548', 'L11', '198111272004122001', 60),
('T32', '211810102', 'L11', '197907312000122001', 60),
('T32', '211810147', 'L11', '197907312000122001', 60),
('T32', '211810156', 'L11', '197907312000122001', 60),
('T32', '211810201', 'L11', '197907312000122001', 60),
('T32', '211810348', 'L11', '197907312000122001', 60),
('T32', '211810614', 'L11', '197907312000122001', 60),
('T32', '211810680', 'L11', '197907312000122001', 60),
('T32', '221810260', 'L10', '197907312000122001', 60),
('T32', '221810622', 'L11', '197907312000122001', 60),
('T33', '211810096', 'L11', '198811292012112001', 60),
('T33', '211810167', 'L10', '198811292012112001', 60),
('T33', '211810172', 'L11', '198811292012112001', 60),
('T33', '211810240', 'L11', '198811292012112001', 60),
('T33', '211810273', 'L11', '198811292012112001', 60),
('T33', '211810303', 'L11', '198811292012112001', 60),
('T33', '211810511', 'L11', '198811292012112001', 60),
('T33', '211810668', 'L11', '198811292012112001', 60),
('T34', '211810124', 'L11', '198106122003122002', 60),
('T34', '211810159', 'L11', '198106122003122002', 60),
('T34', '211810207', 'L11', '198106122003122002', 60),
('T34', '211810276', 'L11', '198106122003122002', 60),
('T34', '211810483', 'L11', '198106122003122002', 60),
('T34', '211810531', 'L10', '198106122003122002', 60),
('T34', '221810224', 'L11', '198106122003122002', 60),
('T34', '221810558', 'L11', '198106122003122002', 60),
('T35', '211810163', 'L11', '197701042009022003', 60),
('T35', '211810168', 'L11', '197701042009022003', 60),
('T35', '211810253', 'L11', '197701042009022003', 60),
('T35', '211810269', 'L11', '197701042009022003', 60),
('T35', '211810302', 'L11', '197701042009022003', 60),
('T35', '211810311', 'L10', '197701042009022003', 60),
('T35', '211810485', 'L11', '197701042009022003', 60),
('T35', '221810129', 'L11', '197701042009022003', 60),
('T35', '221810299', 'L11', '197701042009022003', 60),
('T35', '221810642', 'L11', '197701042009022003', 60),
('T36', '211810099', 'L11', '195709231980031003', 60),
('T36', '211810114', 'L11', '195709231980031003', 60),
('T36', '211810176', 'L11', '195709231980031003', 60),
('T36', '211810248', 'L10', '195709231980031003', 60),
('T36', '211810321', 'L11', '195709231980031003', 60),
('T36', '211810351', 'L11', '195709231980031003', 60),
('T36', '211810381', 'L11', '195709231980031003', 60),
('T37', '211810204', 'L11', '197310231995122001', 60),
('T37', '211810338', 'L11', '197310231995122001', 60),
('T37', '211810347', 'L11', '197310231995122001', 60),
('T37', '211810365', 'L11', '197310231995122001', 60),
('T37', '211810427', 'L11', '197310231995122001', 60),
('T37', '211810508', 'L10', '197310231995122001', 60),
('T37', '211810570', 'L11', '197310231995122001', 60),
('T37', '211810571', 'L11', '197310231995122001', 60),
('T37', '221810128', 'L11', '197310231995122001', 60),
('T37', '221810177', 'L11', '197310231995122001', 60),
('T37', '221810293', 'L11', '197310231995122001', 60),
('T38', '211810211', 'L11', '198512222009021002', 60),
('T38', '211810218', 'L11', '198512222009021002', 60),
('T38', '211810246', 'L11', '198512222009021002', 60),
('T38', '211810416', 'L11', '198512222009021002', 60),
('T38', '211810460', 'L11', '198512222009021002', 60),
('T38', '211810467', 'L10', '198512222009021002', 60),
('T38', '211810529', 'L11', '198512222009021002', 60),
('T38', '211810593', 'L11', '198512222009021002', 60),
('T38', '221810509', 'L11', '198512222009021002', 60),
('T38', '221810510', 'L11', '198512222009021002', 60),
('T39', '211810110', 'L11', '197009261992111001', 60),
('T39', '211810151', 'L11', '197009261992111001', 60),
('T39', '211810191', 'L11', '197009261992111001', 60),
('T39', '211810214', 'L11', '197009261992111001', 60),
('T39', '211810251', 'L10', '197009261992111001', 60),
('T39', '211810329', 'L11', '197009261992111001', 60),
('T39', '211810424', 'L11', '197009261992111001', 60),
('T39', '211810486', 'L11', '197009261992111001', 60),
('T39', '211810489', 'L11', '197009261992111001', 60),
('T39', '221810547', 'L11', '197009261992111001', 60),
('T40', '211810317', 'L11', '198102272004122001', 60),
('T40', '211810658', 'L11', '198102272004122001', 60),
('T40', '221810227', 'L11', '198102272004122001', 60),
('T40', '221810404', 'L10', '198102272004122001', 60),
('T40', '221810481', 'L11', '198102272004122001', 60),
('T41', '211810219', 'L11', '196105101983122001', 60),
('T41', '211810331', 'L10', '196105101983122001', 60),
('T41', '211810493', 'L11', '196105101983122001', 60),
('T41', '211810553', 'L11', '196105101983122001', 60),
('T41', '211810554', 'L11', '196105101983122001', 60),
('T41', '211810559', 'L11', '196105101983122001', 60),
('T41', '221810300', 'L11', '196105101983122001', 60),
('T42', '211810113', 'L11', '197205261991121001', 60),
('T42', '211810130', 'L11', '197205261991121001', 60),
('T42', '211810189', 'L11', '197205261991121001', 60),
('T42', '211810342', 'L11', '197205261991121001', 60),
('T42', '211810585', 'L11', '197205261991121001', 60),
('T42', '211810629', 'L11', '197205261991121001', 60),
('T42', '211810643', 'L10', '197205261991121001', 60),
('T42', '221810138', 'L11', '197205261991121001', 60),
('T42', '221810237', 'L11', '197205261991121001', 60),
('T42', '221810557', 'L11', '197205261991121001', 60),
('T43', '211810209', 'L11', '198810242010122001', 60),
('T43', '211810252', 'L11', '198810242010122001', 60),
('T43', '211810537', 'L11', '198810242010122001', 60),
('T43', '211810588', 'L11', '198810242010122001', 60),
('T43', '211810602', 'L11', '198810242010122001', 60),
('T43', '211810646', 'L11', '198810242010122001', 60),
('T43', '221810196', 'L10', '198810242010122001', 60),
('T43', '221810386', 'L11', '198810242010122001', 60),
('T44', '111810620', 'L11', '197006161988121001', 60),
('T44', '211810221', 'L11', '197006161988121001', 60),
('T44', '211810415', 'L11', '197006161988121001', 60),
('T44', '211810420', 'L11', '197006161988121001', 60),
('T44', '211810506', 'L11', '197006161988121001', 60),
('T44', '211810655', 'L10', '197006161988121001', 60),
('T44', '211810681', 'L11', '197006161988121001', 60),
('T44', '221810112', 'L11', '197006161988121001', 60),
('T44', '221810618', 'L11', '197006161988121001', 60),
('T45', '111810546', 'L05', '197006161988121001', 60),
('T45', '111810631', 'L05', '197006161988121001', 60),
('T45', '211810131', 'L05', '197006161988121001', 60),
('T45', '211810441', 'L05', '197006161988121001', 60),
('T45', '211810621', 'L05', '197006161988121001', 60),
('T45', '221810497', 'L05', '197006161988121001', 60),
('T46', '211810122', 'L11', '198007282003121004', 60),
('T46', '211810182', 'L11', '198007282003121004', 60),
('T46', '211810188', 'L11', '198007282003121004', 60),
('T46', '211810263', 'L11', '198007282003121004', 60),
('T46', '211810319', 'L11', '198007282003121004', 60),
('T46', '211810391', 'L11', '198007282003121004', 60),
('T46', '211810580', 'L11', '198007282003121004', 60),
('T46', '221810278', 'L11', '198007282003121004', 60),
('T46', '221810421', 'L11', '198007282003121004', 60),
('T46', '221810429', 'L10', '198007282003121004', 60),
('T47', '211810292', 'L11', '198006242003121004', 60),
('T47', '211810388', 'L11', '198006242003121004', 60),
('T47', '211810390', 'L11', '198006242003121004', 60),
('T47', '211810487', 'L11', '198006242003121004', 60),
('T47', '211810530', 'L10', '198006242003121004', 60),
('T47', '211810562', 'L11', '198006242003121004', 60),
('T47', '221810116', 'L11', '198006242003121004', 60),
('T47', '221810125', 'L11', '198006242003121004', 60),
('T47', '221810397', 'L11', '198006242003121004', 60),
('T48', '211810297', 'L11', '196709101991121001', 60),
('T48', '211810326', 'L11', '196709101991121001', 60),
('T48', '211810382', 'L11', '196709101991121001', 60),
('T48', '211810419', 'L11', '196709101991121001', 60),
('T48', '211810423', 'L11', '196709101991121001', 60),
('T48', '211810657', 'L11', '196709101991121001', 60),
('T48', '221810659', 'L11', '196709101991121001', 60),
('T48', '221810670', 'L10', '196709101991121001', 60),
('T48', '221810682', 'L11', '196709101991121001', 60),
('T49', '211810161', 'L11', '198410152007012001', 60),
('T49', '211810482', 'L10', '198410152007012001', 60),
('T49', '211810491', 'L11', '198410152007012001', 60),
('T49', '211810555', 'L11', '198410152007012001', 60),
('T49', '211810601', 'L11', '198410152007012001', 60),
('T49', '211810609', 'L11', '198410152007012001', 60),
('T49', '211810667', 'L11', '198410152007012001', 60),
('T49', '221810479', 'L11', '198410152007012001', 60),
('T50', '211810409', 'L11', '199001102012112001', 60),
('T50', '211810425', 'L11', '199001102012112001', 60),
('T50', '211810492', 'L11', '199001102012112001', 60),
('T50', '211810636', 'L10', '199001102012112001', 60),
('T50', '221810117', 'L11', '199001102012112001', 60),
('T50', '221810422', 'L11', '199001102012112001', 60),
('T50', '221810502', 'L11', '199001102012112001', 60),
('T50', '221810660', 'L11', '199001102012112001', 60),
('T51', '211810296', 'L11', '197204241994031003', 60),
('T51', '211810353', 'L11', '197204241994031003', 60),
('T51', '211810517', 'L11', '197204241994031003', 60),
('T51', '221810270', 'L11', '197204241994031003', 60),
('T51', '221810514', 'L11', '197204241994031003', 60),
('T51', '221810577', 'L11', '197204241994031003', 60),
('T51', '221810630', 'L10', '197204241994031003', 60),
('T51', '221810647', 'L11', '197204241994031003', 60),
('T52', '211810093', 'L11', '197305281995121001', 60),
('T52', '211810192', 'L11', '197305281995121001', 60),
('T52', '211810379', 'L11', '197305281995121001', 60),
('T52', '211810465', 'L11', '197305281995121001', 60),
('T52', '211810586', 'L11', '197305281995121001', 60),
('T52', '221810256', 'L10', '197305281995121001', 60),
('T53', '211810243', 'L11', '197712082000121002', 60),
('T53', '211810384', 'L11', '197712082000121002', 60),
('T53', '211810410', 'L11', '197712082000121002', 60),
('T53', '211810458', 'L11', '197712082000121002', 60),
('T53', '211810470', 'L10', '197712082000121002', 60),
('T53', '221810314', 'L11', '197712082000121002', 60),
('T53', '221810412', 'L11', '197712082000121002', 60),
('T53', '221810496', 'L11', '197712082000121002', 60),
('T53', '221810608', 'L11', '197712082000121002', 60),
('T53', '221810652', 'L11', '197712082000121002', 60),
('T54', '211810316', 'L11', '198708262010121001', 60),
('T54', '211810366', 'L11', '198708262010121001', 60),
('T54', '211810368', 'L11', '198708262010121001', 60),
('T54', '211810501', 'L11', '198708262010121001', 60),
('T54', '211810538', 'L11', '198708262010121001', 60),
('T54', '221810333', 'L10', '198708262010121001', 60),
('T55', '111810258', 'L11', '198302182004122001', 60),
('T55', '111810275', 'L11', '198302182004122001', 60),
('T55', '111810301', 'L11', '198302182004122001', 60),
('T55', '111810383', 'L11', '198302182004122001', 60),
('T55', '111810406', 'L10', '198302182004122001', 60),
('T55', '111810448', 'L11', '198302182004122001', 60),
('T55', '111810516', 'L11', '198302182004122001', 60),
('T55', '111810549', 'L11', '198302182004122001', 60),
('T55', '111810616', 'L11', '198302182004122001', 60),
('T55', '111810638', 'L11', '198302182004122001', 60),
('T55', '211810265', 'L11', '198302182004122001', 60),
('T55', '221810340', 'L11', '198302182004122001', 60),
('T56', '111709511', 'L11', '196607191991011001', 60),
('T56', '111810141', 'L11', '196607191991011001', 60),
('T56', '111810231', 'L11', '196607191991011001', 60),
('T56', '111810526', 'L11', '196607191991011001', 60),
('T56', '111810625', 'L11', '196607191991011001', 60),
('T56', '211709953', 'L11', '196607191991011001', 60),
('T56', '211810186', 'L11', '196607191991011001', 60),
('T56', '211810372', 'L10', '196607191991011001', 60),
('T57', '111810525', 'L11', '197605052000032003', 60),
('T57', '111810565', 'L11', '197605052000032003', 60),
('T57', '111810595', 'L11', '197605052000032003', 60),
('T57', '111810639', 'L11', '197605052000032003', 60),
('T57', '111810649', 'L11', '197605052000032003', 60),
('T57', '211810134', 'L11', '197605052000032003', 60),
('T57', '221810336', 'L11', '197605052000032003', 60),
('T57', '221810454', 'L10', '197605052000032003', 60),
('T58', '111810173', 'L11', '199007152013112000', 60),
('T58', '111810205', 'L11', '199007152013112000', 60),
('T58', '111810389', 'L11', '199007152013112000', 60),
('T58', '111810494', 'L11', '199007152013112000', 60),
('T58', '111810627', 'L11', '199007152013112000', 60),
('T58', '211810469', 'L11', '199007152013112000', 60),
('T58', '211810532', 'L10', '199007152013112000', 60),
('T58', '211810566', 'L11', '199007152013112000', 60),
('T58', '211810579', 'L11', '199007152013112000', 60),
('T58', '221810178', 'L11', '199007152013112000', 60),
('T59', '111810135', 'L11', '198507122011012006', 60),
('T59', '111810434', 'L11', '198507122011012006', 60),
('T59', '111810515', 'L11', '198507122011012006', 60),
('T59', '211810119', 'L11', '198507122011012006', 60),
('T59', '211810330', 'L10', '198507122011012006', 60),
('T59', '211810438', 'L11', '198507122011012006', 60),
('T59', '221810259', 'L11', '198507122011012006', 60),
('T60', '111810146', 'L10', '197001251998032001', 60),
('T60', '111810325', 'L11', '197001251998032001', 60),
('T60', '111810432', 'L11', '197001251998032001', 60),
('T60', '111810433', 'L11', '197001251998032001', 60),
('T60', '111810541', 'L11', '197001251998032001', 60),
('T60', '211810120', 'L11', '197001251998032001', 60),
('T60', '211810683', 'L11', '197001251998032001', 60),
('T61', '111810166', 'L11', '198803032010122004', 60),
('T61', '111810241', 'L11', '198803032010122004', 60),
('T61', '111810437', 'L11', '198803032010122004', 60),
('T61', '111810449', 'L11', '198803032010122004', 60),
('T61', '211810165', 'L10', '198803032010122004', 60),
('T61', '211810308', 'L11', '198803032010122004', 60),
('T61', '211810380', 'L11', '198803032010122004', 60),
('T61', '211810613', 'L11', '198803032010122004', 60),
('T61', '221810327', 'L11', '198803032010122004', 60),
('T62', '111810107', 'L11', '198601202008011002', 60),
('T62', '111810472', 'L10', '198601202008011002', 60),
('T62', '211709915', 'L11', '198601202008011002', 60),
('T62', '211810115', 'L11', '198601202008011002', 60),
('T62', '211810341', 'L11', '198601202008011002', 60),
('T62', '221810220', 'L11', '198601202008011002', 60),
('T63', '221810198', 'L06', '198601202008011002', 60),
('T63', '221810266', 'L06', '198601202008011002', 60),
('T63', '221810398', 'L06', '198601202008011002', 60),
('T63', '221810418', 'L06', '198601202008011002', 60),
('T63', '221810473', 'L06', '198601202008011002', 60),
('T63', '221810560', 'L06', '198601202008011002', 60),
('T63', '221810597', 'L06', '198601202008011002', 60),
('T64', '111810645', 'L07', '198512122008011004', 60),
('T64', '211810108', 'L07', '198512122008011004', 60),
('T64', '211810127', 'L07', '198512122008011004', 60),
('T64', '211810230', 'L07', '198512122008011004', 60),
('T64', '211810255', 'L07', '198512122008011004', 60),
('T64', '211810264', 'L07', '198512122008011004', 60),
('T64', '211810349', 'L07', '198512122008011004', 60),
('T64', '211810373', 'L07', '198512122008011004', 60),
('T64', '211810408', 'L07', '198512122008011004', 60),
('T64', '211810500', 'L07', '198512122008011004', 60),
('T64', '211810520', 'L07', '198512122008011004', 60),
('T64', '211810561', 'L07', '198512122008011004', 60),
('T64', '211810606', 'L07', '198512122008011004', 60),
('T64', '211810651', 'L07', '198512122008011004', 60),
('T64', '211810664', 'L07', '198512122008011004', 60),
('T64', '221810431', 'L07', '198512122008011004', 60),
('T64', '221810634', 'L07', '198512122008011004', 60),
('T65', '111810654', 'L11', '199004052012112001', 60),
('T65', '211810238', 'L11', '199004052012112001', 60),
('T65', '211810295', 'L11', '199004052012112001', 60),
('T65', '211810594', 'L10', '199004052012112001', 60),
('T65', '211810615', 'L11', '199004052012112001', 60),
('T65', '211810663', 'L11', '199004052012112001', 60),
('T65', '221810195', 'L11', '199004052012112001', 60),
('T65', '221810202', 'L11', '199004052012112001', 60),
('T65', '221810261', 'L11', '199004052012112001', 60),
('T65', '221810354', 'L11', '199004052012112001', 60),
('T65', '221810477', 'L11', '199004052012112001', 60),
('T65', '221810528', 'L11', '199004052012112001', 60),
('T65', '221810589', 'L11', '199004052012112001', 60),
('T65', '221810637', 'L11', '199004052012112001', 60);

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

--
-- Dumping data for table `sikoko_progress`
--

INSERT INTO `sikoko_progress` (`id_task`, `nama_task`, `tanggal_mulai`, `tanggal_selesai`, `id_risbid`, `id_seksi`, `keterangan`) VALUES
(136, 'Pengembangan SIKOKO', '2020-10-29', '2020-11-11', 'RB07', 'S002', 'Pengembangan Website SIKOKO PKL 2020/2021'),
(137, 'Uji Coba SIKOKO', '2020-11-12', '2020-11-12', 'RB07', 'S002', 'Uji Coba Website SIKOKO PKL 2020/2021'),
(138, 'Launching SIKOKO', '2020-11-13', '2020-11-13', 'RB07', 'S002', 'Launching Website SIKOKO PKL 2020/2021'),
(139, 'Pengembangan Forum', '2020-10-29', '2020-11-11', 'RB07', 'S002', 'Pengembangan Forum PKL 2020/2021'),
(140, 'Pengembangan Web PKL', '2020-11-13', '2020-11-27', 'RB07', 'S002', 'Pengembangan Web PKL 2020/2021'),
(141, 'Uji Coba Web PKL', '2020-11-28', '2020-11-28', 'RB07', 'S002', 'Uji Coba Website PKL 2020/2021'),
(142, 'Launching Web PKL', '2020-11-29', '2020-11-29', 'RB07', 'S002', 'Launching Website PKL 2020/2021'),
(143, 'Perencanaan Web Survey', '2020-11-01', '2020-11-03', 'RB07', 'S003', 'Perencanaan Web Survey PKL 2020/2021'),
(144, 'Perencanaan Web Monitoring', '2020-11-01', '2020-11-03', 'RB07', 'S003', 'Perencanaan Web Monitoring PKL 2020/2021'),
(145, 'Pembangunan Web Survey (CAWI)', '2020-11-04', '2020-11-17', 'RB07', 'S003', 'Pembangunan Web Survey (CAWI) PKL 2020/2021'),
(146, 'Pembangunan Web Monitoring', '2020-11-04', '2020-11-17', 'RB07', 'S003', 'Pembangunan Web Monitoring PKL 2020/2021'),
(147, 'Implementasi Kuesioner ke Web', '2020-11-18', '2020-11-20', 'RB07', 'S003', 'Implementasi Kuesioner ke Web'),
(148, 'Evaluasi Web Survey', '2020-11-19', '2020-11-23', 'RB07', 'S003', 'Evaluasi Web Survey PKL 2020/2021'),
(149, 'Evaluasi Web Monitoring', '2020-11-24', '2020-11-30', 'RB07', 'S003', 'Evaluasi Web MonitoringPKL 2020/2021'),
(150, 'Rapat Rutin Bidang Umum', '2020-11-12', '2020-11-12', 'RB08', 'S004', 'Rapat Rutin Bidang Umum PKL 2020/2021'),
(151, 'Rapat Rutin Bidang Umum', '2020-11-26', '2020-11-26', 'RB08', 'S004', 'Rapat Rutin Bidang Umum PKL 2020/2021'),
(152, 'Rapat Rutin Divisi Humas', '2020-11-03', '2020-11-03', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(153, 'Rapat Rutin Divisi Humas', '2020-11-10', '2020-11-10', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(154, 'Rapat Rutin Divisi Humas', '2020-11-17', '2020-11-17', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(155, 'Rapat Rutin Divisi Humas', '2020-11-24', '2020-11-24', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(156, 'Rapat Rutin Divisi Logistik', '2020-11-06', '2020-11-06', 'RB08', 'S007', 'Rapat Rutin Divisi Logistik PKL 2020/2021'),
(157, 'Rapat Rutin Divisi Logistik', '2020-11-20', '2020-11-20', 'RB08', 'S007', 'Rapat Rutin Divisi Logistik PKL 2020/2021'),
(158, 'Rapat Rutin Divisi Pubdok', '2020-11-07', '2020-11-07', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(159, 'Rapat Rutin Divisi Pubdok', '2020-11-14', '2020-11-14', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(160, 'Rapat Rutin Divisi Pubdok', '2020-11-21', '2020-11-21', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(161, 'Rapat Rutin Divisi Pubdok', '2020-11-28', '2020-11-28', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(162, 'Launching Instagram PKL', '2020-11-01', '2020-11-01', 'RB08', 'S008', 'Launching Instagram PKL 2020/2021'),
(163, 'Publikasi Kegiatan Besar', '2020-11-01', '2020-11-01', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(164, 'Publikasi Kegiatan Besar', '2020-11-02', '2020-11-02', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(165, 'Publikasi Kegiatan Besar', '2020-11-16', '2020-11-16', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(166, 'Publikasi Kegiatan Besar', '2020-11-30', '2020-11-30', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(167, 'Sayembara Desain Jaket PKL', '2020-11-02', '2020-11-15', 'RB08', 'S007', 'Sayembara Desain Jaket PKL 2020/2021'),
(168, 'Rapat Bidang Umum dan Dosen Pembimbing I', '2020-11-06', '2020-11-06', 'RB08', 'S004', 'Rapat Bidang Umum dan Dosen Pembimbing I PKL 2020/2021'),
(169, 'Deadline Sayembara', '2020-10-07', '2020-10-07', 'RB08', 'S007', 'Deadline Sayembara PKL 2020/2021'),
(170, 'Template Rapat Masing-Masing Riset/Bidang', '2020-11-10', '2020-11-10', 'RB08', 'S008', 'Template Rapat Masing-Masing Riset/Bidang PKL 2020/2021'),
(171, 'PKL FunFact', '2020-11-10', '2020-11-10', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(172, 'PKL FunFact', '2020-11-16', '2020-11-16', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(173, 'PKL FunFact', '2020-11-23', '2020-11-23', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(174, 'PKL FunFact', '2020-11-30', '2020-11-30', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(175, 'Pengenalan Maskot PKL', '2020-11-13', '2020-11-13', 'RB08', 'S008', 'Pengenalan Maskot PKL 2020/2021'),
(176, 'Games', '2020-11-14', '2020-11-14', 'RB08', 'S008', 'Games PKL 2020/2021'),
(177, 'Games', '2020-11-28', '2020-11-28', 'RB08', 'S008', 'Games PKL 2020/2021'),
(178, 'Publikasi Progress Riset', '2020-11-15', '2020-11-15', 'RB08', 'S008', 'Publikasi Progress Riset PKL 2020/2021'),
(179, 'Publikasi Progress Riset', '2020-11-29', '2020-11-29', 'RB08', 'S008', 'Publikasi Progress Riset PKL 2020/2021'),
(180, 'Rapat Akbar 2', '2020-11-20', '2020-11-20', 'RB08', 'S004', 'Rapat Akbar 2 PKL 2020/2021'),
(181, 'Pelatihan Pembuatan Kuesioner', '2020-11-21', '2020-11-21', 'RB08', 'S006', 'Pelatihan Pembuatan Kuesioner PKL 2020/2021'),
(182, 'Pelatihan Kesekretariatan 2', '2020-11-23', '2020-11-23', 'RB08', 'S004', 'Pelatihan Kesekretariatan 2 PKL 2020/2021'),
(183, 'Remainder Kegiatan Besar', '2020-11-27', '2020-11-27', 'RB08', 'S008', 'Remainder Kegiatan Besar PKL 2020/2021'),
(184, 'Batas List Calon Vendor Jaket', '2020-11-29', '2020-11-29', 'RB08', 'S007', 'Batas List Calon Vendor Jaket PKL 2020/2021'),
(185, 'Pengenalan Website SIKOKO', '2020-11-21', '2020-11-21', 'RB08', 'S008', 'Pengenalan Website SIKOKO PKL 2020/2021'),
(186, 'Rapat Rutin Bidang Umum', '2020-12-10', '2020-12-10', 'RB08', 'S004', 'Rapat Rutin Bidang Umum PKL 2020/2021'),
(187, 'Rapat Rutin Bidang Umum', '2020-12-24', '2020-12-24', 'RB08', 'S004', 'Rapat Rutin Bidang Umum PKL 2020/2021'),
(188, 'Rapat Rutin Divisi Humas', '2020-12-01', '2020-12-01', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(189, 'Rapat Rutin Divisi Humas', '2020-12-08', '2020-12-08', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(190, 'Rapat Rutin Divisi Humas', '2020-12-15', '2020-12-15', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(191, 'Rapat Rutin Divisi Humas', '2020-12-22', '2020-12-22', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(192, 'Rapat Rutin Divisi Humas', '2020-12-29', '2020-12-29', 'RB08', 'S006', 'Rapat Rutin Divisi Humas PKL 2020/2021'),
(193, 'Rapat Rutin Divisi Logistik', '2020-12-04', '2020-12-04', 'RB08', 'S007', 'Rapat Rutin Divisi Logistik PKL 2020/2021'),
(194, 'Rapat Rutin Divisi Logistik', '2020-12-18', '2020-12-18', 'RB08', 'S007', 'Rapat Rutin Divisi Logistik PKL 2020/2021'),
(195, 'Rapat Rutin Divisi Pubdok', '2020-12-05', '2020-12-05', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(196, 'Rapat Rutin Divisi Pubdok', '2020-12-12', '2020-12-12', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(197, 'Rapat Rutin Divisi Pubdok', '2020-12-19', '2020-12-19', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(198, 'Rapat Rutin Divisi Pubdok', '2020-12-26', '2020-12-26', 'RB08', 'S008', 'Rapat Rutin Divisi Pubdok PKL 2020/2021'),
(199, 'Diskusi Vendor Jaket', '2020-11-30', '2020-12-03', 'RB08', 'S007', 'Diskusi Vendor Jaket PKL 2020/2021'),
(200, 'Publikasi Kegiatan Besar', '2020-12-01', '2020-12-01', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(201, 'Publikasi Kegiatan Besar', '2020-12-07', '2020-12-07', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(202, 'Publikasi Kegiatan Besar', '2020-12-14', '2020-12-14', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(203, 'Publikasi Kegiatan Besar', '2020-12-21', '2020-12-21', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(204, 'Publikasi Kegiatan Besar', '2020-12-27', '2020-12-27', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(205, 'Memastikan Vendor Jaket yg akan digunakan', '2020-12-04', '2020-12-04', 'RB08', 'S007', 'Memastikan Vendor Jaket yg akan digunakan PKL 2020/2021'),
(206, 'PKL FunFact', '2020-12-07', '2020-12-07', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(207, 'PKL FunFact', '2020-12-15', '2020-12-15', 'RB08', 'S008', 'FunFact PKL 2020/2021'),
(208, 'Rapat Bidang Umum & Dosen Pembimbing II', '2020-12-11', '2020-12-11', 'RB08', 'S004', 'Rapat Bidang Umum & Dosen Pembimbing II PKL 2020/2021'),
(209, 'Games', '2020-12-11', '2020-12-11', 'RB08', 'S008', 'Games PKL 2020/2021'),
(210, 'Sosialisasi PKL', '2020-12-12', '2020-12-12', 'RB08', 'S006', 'Sosialisasi PKL 2020/2021'),
(211, 'Pengumuman Sayembara', '2020-12-16', '2020-12-16', 'RB08', 'S008', 'Pengumuman Sayembara PKL 2020/2021'),
(212, 'Remainder Kegiatan Besar', '2020-12-17', '2020-12-17', 'RB08', 'S008', 'Remainder Kegiatan Besar PKL 2020/2021'),
(213, 'Remainder Kegiatan Besar', '2020-12-21', '2020-12-21', 'RB08', 'S008', 'Remainder Kegiatan Besar PKL 2020/2021'),
(214, 'Rapat Pleno 2', '2020-11-18', '2020-11-18', 'RB08', 'S004', 'Rapat Pleno 2 PKL STIS 2020/2021'),
(215, 'Pelatihan Etika Berkomunikasi dan Wawancara', '2020-12-19', '2020-12-19', 'RB08', 'S006', 'Pelatihan Etika Berkomunikasi dan Wawancara PKL 2020/2021'),
(216, 'Rapat Akbar 3', '2020-11-24', '2020-11-24', 'RB08', 'S004', 'Rapat Akbar 3 PKL STIS 2020/2021'),
(217, 'Batas List Calon Vendor Souvenir', '2020-12-25', '2020-12-25', 'RB08', 'S007', 'Batas List Calon Vendor Souvenir PKL 2020/2021'),
(218, 'Diskusi Vendor Souvenir', '2020-12-26', '2020-12-29', 'RB08', 'S007', 'Diskusi Vendor Souvenir PKL 2020/2021'),
(219, 'Memastikan Vendor Souvenir yg akan digunakan', '2020-11-30', '2020-11-30', 'RB08', 'S007', 'Memastikan Vendor Souvenir yg akan digunakan PKL 2020/2021'),
(220, 'Kajian Kerohanian', '2021-01-01', '2021-01-01', 'RB08', 'S006', 'Kajian Kerohanian PKL 2020/2021'),
(221, 'Rapat Akbar 4', '2021-01-02', '2021-01-02', 'RB08', 'S004', 'Rapat Akbar 4 PKL STIS 2020/2021'),
(222, 'Remainder Kegiatan Besar', '2021-01-02', '2021-01-03', 'RB08', 'S008', 'Remainder Kegiatan Besar PKL 2020/2021'),
(223, 'Rapat Rutin Pubdok', '2021-01-02', '2021-01-02', 'RB08', 'S008', 'Rapat Rutin Pubdok PKL 2020/2021'),
(224, 'Rapat Rutin Pubdok', '2021-01-09', '2021-01-09', 'RB08', 'S008', 'Rapat Rutin Pubdok PKL 2020/2021'),
(225, 'Rapat Rutin Pubdok', '2021-01-16', '2021-01-16', 'RB08', 'S008', 'Rapat Rutin Pubdok PKL 2020/2021'),
(226, 'Rapat Rutin Pubdok', '2021-01-23', '2021-01-23', 'RB08', 'S008', 'Rapat Rutin Pubdok PKL 2020/2021'),
(227, 'Publikasi Kegiatan Besar', '2021-01-06', '2021-01-06', 'RB08', 'S008', 'Publikasi Kegiatan Besar PKL 2020/2021'),
(228, 'Countdown Grand Opening', '2021-01-15', '2021-01-17', 'RB08', 'S008', 'Countdown Grand Opening PKL 2020/2021'),
(229, 'Grand Opening', '2021-01-18', '2021-01-18', 'RB08', 'S006', 'Grand Opening PKL 2020/2021'),
(230, 'Rapat Rutin Bidang Umum', '2021-01-21', '2021-01-21', 'RB08', 'S004', 'Rapat Rutin Bidang Umum PKL 2020/2021'),
(231, 'Pengumpulan Data PKL', '2021-01-19', '2021-01-31', 'RB08', 'S004', 'Pengumpulan Data PKL 2020/2021'),
(232, 'Rapat Sie Metodologi', '2020-11-22', '2020-11-22', 'RB03', 'S013', 'Rapat Sie Metodologi Riset 3 PKL 2020/2021'),
(233, 'Rapat Subseksi Sampling', '2020-11-06', '2020-11-06', 'RB03', 'S013', 'Menentukan 2 Metode Sampling Riset 3 PKL 2020/2021'),
(234, 'Rapat Subseksi Sampling', '2020-11-13', '2020-11-13', 'RB03', 'S013', 'Menentukan 1 Metode Sampling yang Akan Digunakan Riset 3 PKL 2020/2021'),
(235, 'Rapat Subseksi Sampling', '2020-11-20', '2020-11-20', 'RB03', 'S013', 'Membahas lebih lanjut terkait dengan metode sampling terpilih'),
(236, 'Rapat Subseksi Sampling', '2020-11-27', '2020-11-27', 'RB03', 'S013', 'Melakukan kajian lanjutan mengenai pembahasan minggu ke-3'),
(237, 'Rapat Subseksi Sampling', '2020-12-04', '2020-12-04', 'RB03', 'S013', 'Revisi dari BPH riset dan dosen'),
(238, 'Rapat Subseksi Sampling', '2020-12-11', '2020-12-11', 'RB03', 'S013', 'Revisi dari BPH riset dan dosen'),
(239, 'Rapat Subseksi Sampling', '2020-12-18', '2020-12-18', 'RB03', 'S013', 'Revisi dari BPH riset dan dosen'),
(240, 'Rapat Subseksi Listing', '2020-11-07', '2020-11-07', 'RB03', 'S013', 'Melakukan kajian mengenai atribut-atribut yang diperlukan untuk membentuk kerangka sampel'),
(241, 'Rapat Subseksi Listing', '2020-11-14', '2020-11-14', 'RB03', 'S013', 'Mengirimkan list atribut ke Hanif untuk diajukan ke bagian umum'),
(242, 'Rapat Subseksi Listing', '2020-11-21', '2020-11-21', 'RB03', 'S013', 'Evaluasi internal'),
(243, 'Rapat Subseksi Listing', '2020-11-28', '2020-11-28', 'RB03', 'S013', 'Evaluasi internal'),
(244, 'Rapat Subseksi Listing', '2020-12-05', '2020-12-05', 'RB03', 'S013', 'Evaluasi eksternal dan follow up ke kantor BPS'),
(245, 'Rapat Subseksi Listing', '2020-12-12', '2020-12-12', 'RB03', 'S013', 'Evaluasi eksternal dan follow up ke kantor BPS'),
(246, 'Rapat Subseksi Listing', '2020-12-19', '2020-12-19', 'RB03', 'S013', 'Evaluasi eksternal dan follow up ke kantor BPS'),
(247, 'Penyusunan Buku Pedoman', '2020-11-02', '2020-11-02', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(248, 'Penyusunan Buku Pedoman', '2020-11-09', '2020-11-09', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(249, 'Penyusunan Buku Pedoman', '2020-11-16', '2020-11-16', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(250, 'Penyusunan Buku Pedoman', '2020-11-23', '2020-11-23', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(251, 'Penyusunan Buku Pedoman', '2020-11-30', '2020-11-30', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(252, 'Penyusunan Buku Pedoman', '2020-12-07', '2020-12-07', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(253, 'Penyusunan Buku Pedoman', '2020-12-14', '2020-12-14', 'RB03', 'S012', 'Penyusunan Buku Pedoman Riset 3 PKL STIS 2020/2021'),
(254, 'Perancangan Kuesioner', '2020-11-07', '2020-11-07', 'RB03', 'S012', 'Perancangan Kuesioner Riset 3 PKL STIS 2020/2021'),
(255, 'Perancangan Kuesioner', '2020-11-14', '2020-11-14', 'RB03', 'S012', 'Perancangan Kuesioner Riset 3 PKL STIS 2020/2021'),
(256, 'Perancangan Kuesioner', '2020-11-21', '2020-11-21', 'RB03', 'S012', 'Perancangan Kuesioner Riset 3 PKL STIS 2020/2021'),
(257, 'Perancangan Kuesioner', '2020-11-28', '2020-11-28', 'RB03', 'S012', 'Perancangan Kuesioner Riset 3 PKL STIS 2020/2021'),
(258, 'Rapat Seksi Riset 3', '2020-11-05', '2020-11-05', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(259, 'Rapat Seksi Riset 3', '2020-11-19', '2020-11-19', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(260, 'Rapat Seksi Riset 3', '2020-11-26', '2020-11-26', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(261, 'Rapat Seksi Riset 3', '2020-12-06', '2020-12-06', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(262, 'Rapat Seksi Riset 3', '2020-12-13', '2020-12-13', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(263, 'Rapat Seksi Riset 3', '2020-12-20', '2020-12-20', 'RB03', 'S012', 'Rapat Seksi Riset 3 PKL STIS 2020/2021'),
(264, 'Rapat SP2R dan Rapat Koordinasi Riset 3', '2020-11-06', '2020-11-06', 'RB03', 'S012', 'Rapat SP2R dan Rapat Koordinasi Riset 3 PKL STIS 2020/2021'),
(265, 'Rapat SP2R dan Rapat Koordinasi Riset 3', '2020-11-13', '2020-11-13', 'RB03', 'S012', 'Rapat SP2R dan Rapat Koordinasi Riset 3 PKL STIS 2020/2021'),
(266, 'Rapat SP2R dan Rapat Koordinasi Riset 3', '2020-11-27', '2020-11-27', 'RB03', 'S012', 'Rapat SP2R dan Rapat Koordinasi Riset 3 PKL STIS 2020/2021'),
(267, 'Rapat SP2R dan Rapat Koordinasi Riset 3', '2020-12-04', '2020-12-04', 'RB03', 'S012', 'Rapat SP2R dan Rapat Koordinasi Riset 3 PKL STIS 2020/2021'),
(268, 'Rapat SP2R dan Rapat Koordinasi Riset 3', '2020-12-11', '2020-12-11', 'RB03', 'S012', 'Rapat SP2R dan Rapat Koordinasi Riset 3 PKL STIS 2020/2021'),
(269, 'Pengerjaan Layout Kuesioner', '2020-12-05', '2020-12-05', 'RB03', 'S012', 'Pengerjaan Layout Kuesioner Riset 3 PKL STIS 2020/2021'),
(270, 'Pengerjaan Layout Kuesioner', '2020-12-12', '2020-12-12', 'RB03', 'S012', 'Pengerjaan Layout Kuesioner Riset 3 PKL STIS 2020/2021'),
(271, 'Pelaksanaan SP1', '2020-12-15', '2020-12-17', 'RB03', 'S012', 'Pelaksanaan SP1 Riset 3 PKL STIS 2020/2021'),
(272, 'Pelaksanaan SP1', '2020-12-19', '2020-12-19', 'RB03', 'S012', 'Pelaksanaan SP1 Riset 3 PKL STIS 2020/2021'),
(273, 'Pelaksanaan SP2 (Jika memungkinkan)', '2020-12-25', '2020-12-30', 'RB03', 'S012', 'Pelaksanaan SP2 Riset 3 PKL STIS 2020/2021 (jika memungkinkan)'),
(274, 'Rapat Rutin Subseksi Inferensia', '2020-11-02', '2020-11-02', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(275, 'Rapat Rutin Subseksi Inferensia', '2020-11-09', '2020-11-09', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(276, 'Rapat Rutin Subseksi Inferensia', '2020-11-16', '2020-11-16', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(277, 'Rapat Rutin Subseksi Inferensia', '2020-11-23', '2020-11-23', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(278, 'Rapat Rutin Subseksi Inferensia', '2020-11-30', '2020-11-30', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(279, 'Rapat Rutin Subseksi Inferensia', '2020-12-07', '2020-12-07', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(280, 'Rapat Rutin Subseksi Inferensia', '2020-12-14', '2020-12-14', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(281, 'Rapat Rutin Subseksi Inferensia', '2020-12-21', '2020-12-21', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(282, 'Rapat Rutin Subseksi Inferensia', '2020-12-28', '2020-12-28', 'RB03', 'S009', 'Rapat Rutin Subseksi Inferensia Riset 3 PKL STIS 2020/2021'),
(283, 'Rapat Rutin Subseksi AB12', '2020-11-03', '2020-11-03', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(284, 'Rapat Rutin Subseksi AB12', '2020-11-10', '2020-11-10', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(285, 'Rapat Rutin Subseksi AB12', '2020-11-17', '2020-11-17', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(286, 'Rapat Rutin Subseksi AB12', '2020-11-24', '2020-11-24', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(287, 'Rapat Rutin Subseksi AB12', '2020-12-01', '2020-12-01', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(288, 'Rapat Rutin Subseksi AB12', '2020-12-08', '2020-12-08', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(289, 'Rapat Rutin Subseksi AB12', '2020-12-15', '2020-12-15', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(290, 'Rapat Rutin Subseksi AB12', '2020-12-22', '2020-12-22', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(291, 'Rapat Rutin Subseksi AB12', '2020-12-29', '2020-12-29', 'RB03', 'S009', 'Rapat Rutin Subseksi AB12 Riset 3 PKL STIS 2020/2021'),
(292, 'Rapat Rutin Subseksi Deskriptif', '2020-11-04', '2020-11-04', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(293, 'Rapat Rutin Subseksi Deskriptif', '2020-11-11', '2020-11-11', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(294, 'Rapat Rutin Subseksi Deskriptif', '2020-11-18', '2020-11-18', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(295, 'Rapat Rutin Subseksi Deskriptif', '2020-11-25', '2020-11-25', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(296, 'Rapat Rutin Subseksi Deskriptif', '2020-12-02', '2020-12-02', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(297, 'Rapat Rutin Subseksi Deskriptif', '2020-12-09', '2020-12-09', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(298, 'Rapat Rutin Subseksi Deskriptif', '2020-12-16', '2020-12-16', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(299, 'Rapat Rutin Subseksi Deskriptif', '2020-12-23', '2020-12-23', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(300, 'Rapat Rutin Subseksi Deskriptif', '2020-12-30', '2020-12-30', 'RB03', 'S009', 'Rapat Rutin Subseksi Deskriptif Riset 3 PKL STIS 2020/2021'),
(301, 'Latar Belakang (AB12)', '2020-11-10', '2020-11-10', 'RB03', 'S009', 'Latar Belakang (AB12) Riset 3 PKL STIS 2020/2021'),
(302, 'Variabel-Variabel Fix', '2020-11-14', '2020-11-14', 'RB03', 'S009', 'Variabel-Variabel Fix Riset 3 PKL STIS 2020/2021'),
(303, 'Ide Fix Untuk Pengujian Hipotesis', '2020-11-14', '2020-11-14', 'RB03', 'S009', 'Ide Fix Untuk Pengujian Hipotesis Riset 3 PKL STIS 2020/2021'),
(304, 'Bab 1 dan 2 Selesai', '2020-11-30', '2020-11-30', 'RB03', 'S009', 'Bab 1 dan 2 Riset 3 PKL STIS 2020/2021 Selesai'),
(305, 'Rapat Mingguan Seksi Dashboard', '2020-11-07', '2020-11-07', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(306, 'Rapat Mingguan Seksi Dashboard', '2020-11-14', '2020-11-14', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(307, 'Rapat Mingguan Seksi Dashboard', '2020-11-21', '2020-11-21', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(308, 'Rapat Mingguan Seksi Dashboard', '2020-11-28', '2020-11-28', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(309, 'Rapat Mingguan Seksi Dashboard', '2020-12-05', '2020-12-05', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(310, 'Rapat Mingguan Seksi Dashboard', '2020-12-12', '2020-12-12', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(311, 'Rapat Mingguan Seksi Dashboard', '2020-12-19', '2020-12-19', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(312, 'Rapat Mingguan Seksi Dashboard', '2020-12-26', '2020-12-26', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(313, 'Rapat Mingguan Seksi Dashboard', '2021-01-03', '2021-01-03', 'RB03', 'S015', 'Rapat Mingguan Seksi Dashboard Riset 3 PKL 2020/2021'),
(314, 'Rapat Subsie Front End', '2020-11-04', '2020-11-04', 'RB03', 'S015', 'Rapat Subsie Front End Riset 3 PKL 2020/2021'),
(315, 'Rapat Subsie Front End', '2020-11-18', '2020-11-18', 'RB03', 'S015', 'Rapat Subsie Front End Riset 3 PKL 2020/2021'),
(316, 'Rapat Subsie Front End', '2020-12-02', '2020-12-02', 'RB03', 'S015', 'Rapat Subsie Front End Riset 3 PKL 2020/2021'),
(317, 'Rapat Subsie Front End', '2020-12-16', '2020-12-16', 'RB03', 'S015', 'Rapat Subsie Front End Riset 3 PKL 2020/2021'),
(318, 'Rapat Subsie Database', '2020-11-11', '2020-11-11', 'RB03', 'S015', 'Rapat Subsie Database Riset 3 PKL 2020/2021'),
(319, 'Rapat Subsie Database', '2020-11-25', '2020-11-25', 'RB03', 'S015', 'Rapat Subsie Database Riset 3 PKL 2020/2021'),
(320, 'Rapat Subsie Database', '2020-12-09', '2020-12-09', 'RB03', 'S015', 'Rapat Subsie Database Riset 3 PKL 2020/2021'),
(321, 'Rapat Subsie Back End', '2020-11-12', '2020-11-12', 'RB03', 'S015', 'Rapat Subsie Back End Riset 3 PKL 2020/2021'),
(322, 'Rapat Subsie Back End', '2020-11-26', '2020-11-26', 'RB03', 'S015', 'Rapat Subsie Back End Riset 3 PKL 2020/2021'),
(323, 'Rapat Subsie Back End', '2020-12-10', '2020-12-10', 'RB03', 'S015', 'Rapat Subsie Back End Riset 3 PKL 2020/2021'),
(324, 'Presentasi Latar Belakang (AB12)', '2020-11-11', '2020-11-11', 'RB03', 'S009', 'Presentasi Latar Belakang (AB12) Riset 3 PKL 2020/2021'),
(325, 'Presentasi Bab 1 dan 2 (AB12)', '2020-12-01', '2020-12-01', 'RB03', 'S009', 'Presentasi Bab 1 dan 2 (AB12) Riset 3 PKL 2020/2021'),
(326, 'Pelatihan Kesekbend', '2020-11-06', '2020-11-06', 'RB03', 'S004', 'Pelatihan Kesekbend PKL 2020/2021'),
(327, 'Pelatihan Kesekbend', '2020-11-23', '2020-11-23', 'RB03', 'S004', 'Pelatihan Kesekbend PKL 2020/2021'),
(328, 'Rapat Koordinasi', '2020-11-06', '2020-11-06', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(329, 'Rapat Koordinasi', '2020-11-13', '2020-11-13', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(330, 'Rapat Koordinasi', '2020-11-20', '2020-11-20', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(331, 'Rapat Koordinasi', '2020-11-27', '2020-11-27', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(332, 'Rapat Koordinasi', '2020-12-04', '2020-12-04', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(333, 'Rapat Koordinasi', '2020-12-11', '2020-12-11', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(334, 'Rapat Koordinasi', '2020-12-18', '2020-12-18', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(335, 'Rapat Koordinasi', '2020-12-25', '2020-12-25', 'RB03', 'S004', 'Rapat Koordinasi PKL 2020/2021'),
(336, 'Rapat Akbar', '2020-11-26', '2020-11-26', 'RB03', 'S004', 'Rapat Akbar PKL 2020/2021'),
(337, 'Rapat Akbar', '2020-12-24', '2020-12-24', 'RB03', 'S004', 'Rapat Akbar PKL 2020/2021'),
(338, 'Rapat Akbar', '2021-01-02', '2021-01-02', 'RB03', 'S004', 'Rapat Akbar PKL 2020/2021'),
(339, 'Pengumpulan Proposal', '2020-11-26', '2020-11-26', 'RB03', 'S004', 'Pengumpulan Proposal PKL 2020/2021'),
(340, 'Mulai Perizinan', '2020-12-01', '2020-12-01', 'RB03', 'S004', 'Mulai Perizinan PKL 2020/2021'),
(341, 'Presentasi dengan Subject Matter', '2020-12-04', '2020-12-04', 'RB03', 'S004', 'Presentasi dengan Subject Matter PKL STIS 2020/2021'),
(342, 'Pembuatan Kuesioner dan Buku Pedoman', '2020-12-02', '2020-12-10', 'RB03', 'S004', 'Pembuatan Kuesioner dan Buku Pedoman PKL STIS 2020/2021'),
(343, 'Presentasi dengan Dewan Penyantun', '2020-12-11', '2020-12-11', 'RB03', 'S004', 'Presentasi dengan Dewan Penyantun PKL STIS 2020/2021'),
(344, 'Rapat Pleno 2', '2020-12-18', '2020-12-18', 'RB03', 'S004', 'Rapat Pleno 2 PKL STIS 2020/2021'),
(345, 'Uji Coba Kuesioner dan Evaluasi', '2020-12-21', '2020-12-31', 'RB03', 'S004', 'Uji Coba Kuesioner dan Evaluasi Riset 3 PKL STIS 2020/2021'),
(346, 'Rapat Pleno 1', '2020-10-02', '2020-10-02', 'RB06', 'S004', 'Rapat Pleno 1 PKL STIS 2020/2021'),
(347, 'Tinjauan Pustaka', '2020-10-03', '2020-10-15', 'RB06', 'S004', 'Tinjauan Pustaka Riset 6 PKL STIS 2020/2021'),
(348, 'Pembekalan Materi', '2020-10-16', '2020-10-16', 'RB06', 'S004', 'Pembekalan Materi Riset 6 PKL STIS 2020/2021'),
(349, 'Rapat Akbar 1', '2020-10-17', '2020-10-17', 'RB06', 'S004', 'Rapat Akbar 1 PKL STIS 2020/2021'),
(350, 'Rapat Koordinasi 1', '2020-10-30', '2020-10-30', 'RB06', 'S004', 'Rapat Koordinasi 1'),
(351, 'Penentuan Tujuan Riset dan Variabel', '2020-11-01', '2020-11-08', 'RB06', 'S004', 'Penentuan Tujuan Riset dan Variabel Riset 6 PKL STIS 2020/2021'),
(352, 'Penentuan Metode (Survei/Sensus/Keduanya)', '2020-11-05', '2020-11-08', 'RB06', 'S004', 'Penentuan Metode (Survei/Sensus/Keduanya) Riset 6 PKL STIS 2020/2021'),
(353, 'Rapat Riset 1 dan Rapat Koordinasi 2', '2020-11-09', '2020-11-09', 'RB06', 'S004', 'Rapat Riset 1 dan Rapat Koordinasi 2'),
(354, 'Perancangan Kuesioner', '2020-11-09', '2020-11-22', 'RB06', 'S004', 'Perancangan Kuesioner Riset 6 PKL STIS 2020/2021'),
(355, 'Perancangan Desain Sampling', '2020-11-16', '2020-11-22', 'RB06', 'S004', 'Perancangan Desain Sampling Riset 6 PKL STIS 2020/2021'),
(356, 'Penentuan Sistem Pengumpulan Data', '2020-11-23', '2020-11-26', 'RB06', 'S004', 'Penentuan Sistem Pengumpulan Data Riset 6 PKL STIS 2020/2021'),
(357, 'Rapat Riset 2 dan Rapat Koordinasi 3', '2020-11-27', '2020-11-27', 'RB06', 'S004', 'Rapat Riset 2 dan Rapat Koordinasi 3'),
(358, 'Pembuatan Sistem Pengumpulan Data', '2020-11-28', '2020-12-06', 'RB06', 'S004', 'Pembuatan Sistem Pengumpulan Data Riset 6 PKL STIS 2020/2021'),
(359, 'Pilot Survei dan Pengujian Sistem Pengumpulan Data', '2020-12-07', '2020-12-13', 'RB06', 'S004', 'Pilot Survei dan Pengujian Sistem Pengumpulan Data Riset 6 PKL STIS 2020/2021'),
(360, 'Penulisan Proposal', '2020-12-07', '2020-12-07', 'RB06', 'S004', 'Penulisan Proposal Riset 6 PKL STIS 2020/2021'),
(361, 'Penulisan Buku Pedoman', '2020-12-14', '2020-12-24', 'RB06', 'S004', 'Penulisan Buku Pedoman Riset 6 PKL STIS 2020/2021'),
(362, 'Finalisasi Kuesioner, Sistem Pengumpulan Data, dan Buku Pedoman', '2020-12-26', '2020-12-29', 'RB06', 'S004', 'Finalisasi Kuesioner, Sistem Pengumpulan Data, dan Buku Pedoman Riset 6 PKL STIS 2020/2021'),
(363, 'Rapat Koordinasi 4', '2020-12-30', '2020-12-30', 'RB06', 'S004', 'Rapat Koordinasi 4 PKL STIS 2020/2021'),
(364, 'Pemaparan Kepada Dewan Penyantun', '2021-01-01', '2021-01-01', 'RB06', 'S004', 'Pemaparan kepada dewan penyantun PKL STIS 2020/2021'),
(365, 'Rapat Pleno 1', '2020-10-02', '2020-10-02', 'RB00', 'S000', 'Rapat Pleno 1 PKL 2020/2021'),
(366, 'Pembentukan Koor Seksi, Sekbend Bidang/Riset', '2020-10-03', '2020-10-05', 'RB00', 'S000', 'Pembentukan Koor Seksi, Sekbend Bidang/Riset PKL 2020/2021'),
(367, 'Penyebaran Formulir Pendaftaran Seksi Bidang/Riset', '2020-10-10', '2020-10-11', 'RB00', 'S000', 'Penyebaran Formulir Pendaftaran Seksi Bidang/Riset PKL 2020/2021'),
(368, 'Pembentukan struktur organisasi pelaksana PKL', '2020-10-12', '2020-10-15', 'RB00', 'S000', 'Pembentukan struktur organisasi pelaksana PKL 2020/2021'),
(369, 'Kuliah Pembekalan', '2020-10-16', '2020-10-16', 'RB00', 'S000', 'Kuliah Pembekalan'),
(370, 'Rapat Akbar 1', '2020-10-17', '2020-10-17', 'RB00', 'S000', 'Rapat Akbar 1 PKL 2020/2021'),
(371, 'Pembentukan Timeline Umum', '2020-10-18', '2020-10-18', 'RB00', 'S000', 'Pembentukan Timeline Umum PKL 2020/2021'),
(372, 'Pelatihan Kesekbend 1', '2020-11-03', '2020-11-03', 'RB00', 'S000', 'Pelatihan Kesekbend 1 PKL 2020/2021'),
(373, 'Deadline Sayembara', '2020-11-07', '2020-11-07', 'RB00', 'S000', 'Deadline Sayembara PKL 2020/2021'),
(374, 'Rapat Koordinasi 1', '2020-11-13', '2020-11-13', 'RB00', 'S000', 'Rapat Koordinasi 1 PKL 2020/2021'),
(375, 'Penentuan Cakupan Survei dan Perancangan Survei', '2020-11-14', '2020-11-28', 'RB00', 'S000', 'Penentuan Cakupan Survei dan Perancangan Survei PKL 2020/2021'),
(376, 'Launching Sikoko', '2020-11-19', '2020-11-19', 'RB00', 'S000', 'Launching Sikoko PKL 2020/2021'),
(377, 'Rapat Akbar 2', '2020-11-20', '2020-11-20', 'RB00', 'S000', 'Rapat Akbar 2 PKL 2020/2021'),
(378, 'Pelatihan Kesekbend 2', '2020-11-23', '2020-11-23', 'RB00', 'S000', 'Pelatihan Kesekbend 2 PKL 2020/2021'),
(379, 'Pengumpulan Proposal', '2020-11-26', '2020-11-26', 'RB00', 'S000', 'Pengumpulan ProposalPKL 2020/2021'),
(380, 'Rapat Koordinasi 2', '2020-11-27', '2020-11-27', 'RB00', 'S000', 'Rapat Koordinasi 2PKL 2020/2021'),
(381, 'Mulai Perizinan', '2020-12-01', '2020-12-01', 'RB00', 'S000', 'Mulai Perizinan PKL 2020/2021'),
(382, 'Pembuatan Kuesioner dan Buku Pedoman', '2020-12-02', '2020-12-10', 'RB00', 'S000', 'Pembuatan Kuesioner dan Buku Pedoman PKL 2020/2021'),
(383, 'Presentasi dengan Subject Matter', '2020-12-04', '2020-12-04', 'RB00', 'S000', 'Presentasi dengan Subject Matter PKL 2020/2021'),
(384, 'Presentasi dengan Dewan Penyantun', '2020-12-11', '2020-12-11', 'RB00', 'S000', 'Presentasi dengan Dewan Penyantun PKL 2020/2021'),
(385, 'Rapat Pleno 2', '2020-12-18', '2020-12-18', 'RB00', 'S000', 'Rapat Pleno 2 PKL 2020/2021'),
(386, 'Rapat Akbar 3', '2020-12-24', '2020-12-24', 'RB00', 'S000', 'Rapat Akbar 3 PKL 2020/2021'),
(387, 'Uji Coba Kuesioner', '2020-12-21', '2020-12-31', 'RB00', 'S000', 'Uji Coba Kuesioner PKL 2020/2021'),
(388, 'Rapat Akbar 4', '2021-01-02', '2021-01-02', 'RB00', 'S000', 'Rapat Akbar 4 PKL 2020/2021'),
(389, 'Grand Opening', '2021-01-18', '2021-01-18', 'RB00', 'S000', 'Grand Opening PKL 2020/2021'),
(390, 'Pengumpulan data', '2021-01-19', '2021-01-31', 'RB00', 'S000', 'Pengumpulan data PKL 2020/2021'),
(391, 'Rapat BPH-KOOR Riset 1', '2020-10-06', '2020-10-06', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(392, 'Rapat BPH-KOOR Riset 1', '2020-10-08', '2020-10-08', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(393, 'Rapat BPH-KOOR Riset 1', '2020-11-03', '2020-11-03', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(394, 'Rapat BPH-KOOR Riset 1', '2020-11-10', '2020-11-10', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(395, 'Rapat BPH-KOOR Riset 1', '2020-11-14', '2020-11-14', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(396, 'Rapat BPH-KOOR Riset 1', '2020-11-21', '2020-11-21', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(397, 'Rapat BPH-KOOR Riset 1', '2020-11-28', '2020-11-28', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(398, 'Rapat BPH-KOOR Riset 1', '2020-12-05', '2020-12-05', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(399, 'Rapat BPH-KOOR Riset 1', '2020-12-12', '2020-12-12', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(400, 'Rapat BPH-KOOR Riset 1', '2020-12-19', '2020-12-19', 'RB01', 'S004', 'Rapat BPH-KOOR Riset 1 PKL 2020/2021'),
(401, 'Rapat Bersama Dosen Pembimbing', '2020-10-09', '2020-10-09', 'RB01', 'S004', 'Rapat Bersama Dosen Pembimbing Riset 1 PKL 2020/2021'),
(402, 'Pengumpulan TOR', '2020-10-12', '2020-10-12', 'RB01', 'S004', 'Pengumpulan TOR PKL 2020/2021'),
(403, 'Rapat Pengarahan Dengan BPS', '2020-10-16', '2020-10-16', 'RB01', 'S004', 'Rapat Pengarahan Dengan BPS PKL 2020/2021'),
(404, 'Estimasi Sebar Form Anggota Riset Oleh BPH 5 PKL', '2020-10-23', '2020-10-25', 'RB01', 'S004', 'Estimasi Sebar Form Anggota Riset Oleh BPH 5 PKL STIS 2020/2021'),
(405, 'Plotting Anggota Riset 1', '2020-10-31', '2020-10-31', 'RB01', 'S004', 'Plotting Anggota Riset 1 PKL 2020/2021'),
(406, 'Pemaparan Riset 1 Kepada Anggota Terpilih Riset 1', '2020-11-06', '2020-11-06', 'RB01', 'S004', 'Pemaparan Riset 1 Kepada Anggota Terpilih Riset 1 PKL 2020/2021'),
(407, 'Rapat Gabungan Riset 1', '2020-11-19', '2020-11-19', 'RB01', 'S004', 'Rapat Gabungan Riset 1 PKL 2020/2021'),
(408, 'Rapat Gabungan Riset 1', '2020-11-26', '2020-11-26', 'RB01', 'S004', 'Rapat Gabungan Riset 1 PKL 2020/2021'),
(409, 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing', '2020-11-20', '2020-11-20', 'RB01', 'S004', 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing (Opsional) PKL 2020/2021'),
(410, 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing', '2020-11-27', '2020-11-27', 'RB01', 'S004', 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing (Opsional) PKL 2020/2021'),
(411, 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing', '2020-12-04', '2020-12-04', 'RB01', 'S004', 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing (Opsional) PKL 2020/2021'),
(412, 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing', '2020-12-11', '2020-12-11', 'RB01', 'S004', 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing (Opsional) PKL 2020/2021'),
(413, 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing', '2020-12-18', '2020-12-18', 'RB01', 'S004', 'Rapat Pleno + Rapat Koordinasi dengan Dosen Pembimbing (Opsional) PKL 2020/2021'),
(414, 'Deadline Pengumpulan Review Jurnal', '2020-11-13', '2020-11-13', 'RB01', 'S004', 'Deadline Pengumpulan Review Jurnal Anggota Riset 1 PKL 2020/2021'),
(415, 'Rapat Subseksi Riset 1', '2020-11-15', '2020-11-15', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(416, 'Rapat Subseksi Riset 1', '2020-11-22', '2020-11-22', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(417, 'Rapat Subseksi Riset 1', '2020-11-29', '2020-11-29', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(418, 'Rapat Subseksi Riset 1', '2020-12-06', '2020-12-06', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(419, 'Rapat Subseksi Riset 1', '2020-12-13', '2020-12-13', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(420, 'Rapat Subseksi Riset 1', '2020-12-20', '2020-12-20', 'RB01', 'S004', 'Rapat Subseksi Riset 1 PKL 2020/2021'),
(421, 'Uji Coba Metodologi dan Sistem Survei Online', '2020-12-21', '2020-12-30', 'RB01', 'S004', 'Uji Coba Metodologi dan Sistem Survei Online PKL 2020/2021'),
(422, 'Rapat BPH Koor Riset 2', '2020-10-23', '2020-10-23', 'RB02', 'S004', 'Rapat BPH Koor Riset 2 PKL 2020/2021'),
(423, 'Rapat Perdana Riset 2', '2020-10-26', '2020-10-26', 'RB02', 'S004', 'Rapat Perdana Riset 2 PKL 2020/2021'),
(424, 'Penugasan Jurnal', '2020-10-26', '2020-10-30', 'RB02', 'S009', 'Penugasan Jurnal Riset 2 PKL 2020/2021'),
(425, 'Rapat Analisis 1', '2020-10-27', '2020-10-27', 'RB02', 'S009', 'Rapat Analisis 1 Riset 2 PKL 2020/2021'),
(426, 'Rapat Perdana Metodologi Riset 2', '2020-10-27', '2020-10-27', 'RB02', 'S013', 'Rapat Perdana Metodologi Riset 2 PKL 2020/2021'),
(427, 'Perencanaan Awal Desain Sampling dan Survei', '2020-10-27', '2020-11-01', 'RB02', 'S013', 'Perancangan Awal Desain Sampling dan Survei PKL 2020/2021'),
(428, 'Pengajuan Permintaan Kerangka Sampel ke Bidang Umum', '2020-10-28', '2020-11-03', 'RB02', 'S013', 'Pengajuan Permintaan Kerangka Sampel ke Bidang Umum PKL 2020/2021'),
(429, 'Rapat Koordinasi Metodologi Riset 1, 2 dan 3', '2020-10-29', '2020-10-29', 'RB02', 'S013', 'Rapat Koordinasi Metodologi Riset 1, 2 dan 3 PKL 2020/2021'),
(430, 'Deadline & Rapat Kondef', '2020-10-30', '2020-10-30', 'RB02', 'S004', 'Deadline & Rapat Kondef PKL 2020/2021'),
(431, 'Rapat Timeline Umum Riset 2', '2020-10-31', '2020-10-31', 'RB02', 'S004', 'Rapat Timeline Umum Riset 2 PKL 2020/2021'),
(432, 'Fiksasi Masalah, Tujuan, dan Jumlah Kajian', '2020-10-31', '2020-11-02', 'RB02', 'S009', 'Fiksasi Masalah, Tujuan, dan Jumlah Kajian PKL 2020/2021'),
(433, 'KSM Per Subseksi', '2020-11-02', '2020-11-05', 'RB02', 'S012', 'KSM Per Subseksi Koor & Kating PKL 2020/2021'),
(434, 'Pembahasan Metodologi Analisis Deskriptif', '2020-11-02', '2020-11-05', 'RB02', 'S009', 'Pembahasan Metodologi Analisis Deskriptif PKL 2020/2021'),
(435, 'Pembahasan Metodologi Analisis Inferensia', '2020-11-02', '2020-11-05', 'RB02', 'S009', 'Pembahasan Metodologi Analisis Inferensia PKL 2020/2021'),
(436, 'Rapat Desain Sampling', '2020-11-02', '2020-11-02', 'RB02', 'S013', 'Rapat Desain Sampling PKL 2020/2021'),
(437, 'Permintaan Kerangka Sampel', '2020-11-04', '2020-11-06', 'RB02', 'S013', 'Permintaan Kerangka Sampel PKL 2020/2021'),
(438, 'Rapat Persiapan Bahan Rapat Koordinasi I', '2020-11-04', '2020-11-04', 'RB02', 'S004', 'Rapat Persiapan Bahan Rapat Koordinasi 1 PKL 2020/2021'),
(439, 'Rapat Koordinasi I', '2020-11-06', '2020-11-06', 'RB02', 'S004', 'Rapat Koordinasi I PKL 2020/2021'),
(440, 'Pelatihan Kesekben', '2020-11-06', '2020-11-06', 'RB02', 'S004', 'Pelatihan Kesekbend PKL 2020/2021'),
(441, 'Rapat Koordinasi II', '2020-11-06', '2020-11-06', 'RB02', 'S004', 'Rapat Koordinasi II Bersama Dosen PKL 2020/2021'),
(442, 'Fiksasi Bab 1', '2020-11-07', '2020-11-10', 'RB02', 'S009', 'Fiksasi Bab 1 PKL 2020/2021'),
(443, 'Perancangan Metodologi Sampling', '2020-11-07', '2020-11-15', 'RB02', 'S013', 'Perancangan Metodologi Sampling PKL 2020/2021'),
(444, 'Merancang Tata Cara Listing', '2020-11-07', '2020-11-11', 'RB02', 'S013', 'Merancang Tata Cara Listing PKL 2020/2021'),
(445, 'Pelatihan Penyusunan Layout', '2020-11-07', '2020-11-07', 'RB02', 'S012', 'Pelatihan Penyusunan Layout PKL 2020/2021'),
(446, 'Proposal PKL Bab 1 dan 2', '2020-11-07', '2020-11-25', 'RB02', 'S009', 'Proposal PKL Bab 1 dan 2 PKL 2020/2021'),
(447, 'Pembagian Anggota ke Dalam Kajian', '2020-11-09', '2020-11-09', 'RB02', 'S009', 'Pembagian Anggota ke Dalam Kajian PKL 2020/2021'),
(448, 'Fiksasi Metode Analisis Deskriptif', '2020-11-09', '2020-11-18', 'RB02', 'S009', 'Fiksasi Metode Analisis Deskriptif PKL 2020/2021'),
(449, 'Fiksasi Metode Analisis Inferensia', '2020-11-09', '2020-11-18', 'RB02', 'S009', 'Fiksasi Metode Analisis Inferensia PKL 2020/2021'),
(450, 'Membahas Variabel Umum', '2020-11-11', '2020-11-15', 'RB02', 'S009', 'Membahas Variabel Umum PKL 2020/2021'),
(451, 'Penyusunan Kuesioner Listing', '2020-11-12', '2020-11-15', 'RB02', 'S013', 'Penyusunan Kuesioner Listing PKL 2020/2021'),
(452, 'Fiksasi Bab 2', '2020-11-13', '2020-11-19', 'RB02', 'S009', 'Fiksasi Bab 2 PKL 2020/2021'),
(453, 'Rapat Desain Sampling dan Survei', '2020-11-16', '2020-11-16', 'RB02', 'S013', 'Rapat Desain Sampling dan Survei PKL 2020/2021'),
(454, 'Perancangan dan Penyusunan Kuesioner Draft 1', '2020-11-16', '2020-11-20', 'RB02', 'S012', 'Perancangan dan Penyusunan Kuesioner Draft 1 PKL 2020/2021'),
(455, 'Pengerjaan Kuesioner Draft 1', '2020-11-16', '2020-11-20', 'RB02', 'S012', 'Pengerjaan Kuesioner Draft 1 PKL 2020/2021'),
(456, 'Menentukan Jumlah Sampel dan Memilih Sampel', '2020-11-17', '2020-11-22', 'RB02', 'S013', 'Fenentukan Jumlah Sampel dan Memilih Sampel PKL 2020/2021'),
(457, 'Mengumpulkan Informasi Proposal Bab 3 dari Analisis dan Kuesioner', '2020-11-17', '2020-11-19', 'RB02', 'S013', 'Mengumpulkan Informasi Proposal Bab 3 dari Analisis dan Kuesioner PKL 2020/2021'),
(458, 'Pembuatan Bab 1 dan 2 Buku Pedoman', '2020-11-09', '2020-11-23', 'RB02', 'S012', 'Pembuatan Bab 1 dan 2 Buku Pedoman PKL 2020/2021'),
(459, 'Pengerjaan Layout Buku Pedoman Draft 1', '2020-11-09', '2020-11-23', 'RB02', 'S012', 'Pengerjaan Layout Buku Pedoman Draft 1 PKL 2020/2021'),
(460, 'Pengerjaan Layout Buku Pedoman Draft 2', '2020-11-09', '2020-11-23', 'RB02', 'S012', 'Pengerjaan Layout Buku Pedoman Draft 2 PKL 2020/2021'),
(461, 'Penyusunan Proposal Bab 3', '2020-11-19', '2020-11-22', 'RB02', 'S013', 'Penyusunan Proposal Bab 3 PKL 2020/2021'),
(462, 'Pelatihan Kesekbend 2', '2020-11-23', '2020-11-23', 'RB02', 'S004', 'Pelatihan Kesekbend 2 PKL 2020/2021'),
(463, 'Rapat Desain Sampling dan Survei Akhir', '2020-11-23', '2020-11-23', 'RB02', 'S013', 'Rapat Desain Sampling dan Survei Akhir PKL 2020/2021'),
(464, 'Kuesioner Draft 2', '2020-11-23', '2020-11-27', 'RB02', 'S012', 'Kuesioner Draft 2 PKL 2020/2021'),
(465, 'Layout kuesioner Draft 2', '2020-11-23', '2020-11-27', 'RB02', 'S012', 'Layout kuesioner Draft 2 PKL 2020/2021'),
(466, 'Fiksasi Proposal Bab 3', '2020-11-24', '2020-11-26', 'RB02', 'S013', 'Fiksasi Proposal Bab 3 PKL 2020/2021'),
(467, 'Pengumpulan Proposal', '2020-11-26', '2020-11-26', 'RB02', 'S009', 'Pengumpulan Proposal PKL 2020/2021'),
(468, 'Rapat Koordinasi II', '2020-11-27', '2020-11-27', 'RB02', 'S004', 'Rapat Koordinasi II PKL 2020/2021'),
(469, 'Rapat Koordinasi III bersama Dosen', '2020-11-27', '2020-11-27', 'RB02', 'S004', 'Rapat Koordinasi III bersama Dosen PKL 2020/2021'),
(470, 'Perbaikan Proposal 1 AB12, Anades, Anafer ', '2020-11-27', '2020-12-03', 'RB02', 'S009', 'Perbaikan Proposal 1 AB12, Anades, Anafer PKL 2020/2021'),
(471, 'Rapat Akbar 2', '2020-11-28', '2020-11-28', 'RB02', 'S004', 'Rapat Akbar 2 PKL 2020/2021'),
(472, 'Penyempurnaan dan Revisi Metode Sampling', '2020-11-29', '2020-12-03', 'RB02', 'S013', 'Penyempurnaan dan Revisi Metode Sampling PKL 2020/2021'),
(473, 'Revisi Proposal', '2020-11-29', '2020-12-03', 'RB02', 'S013', 'Revisi Proposal PKL 2020/2021'),
(474, 'Pembangunan Sistem CAWI', '2020-11-29', '2020-12-07', 'RB02', 'S013', 'Pembangunan Sistem CAWI PKL 2020/2021'),
(475, 'Kuisioner dan layout draft 3', '2020-11-30', '2020-12-02', 'RB02', 'S012', 'Kuisioner dan layout draft 3 PKL 2020/2021'),
(476, 'Layout kuesioner draft 3', '2020-11-30', '2020-12-02', 'RB02', 'S012', 'Layout kuesioner draft 3 PKL 2020/2021'),
(477, 'Pembuatan Bab 3 buku pedoman BPH & Umum', '2020-11-30', '2020-12-04', 'RB02', 'S012', 'Pembuatan Bab 3 buku pedoman BPH & Umum PKL 2020/2021'),
(478, 'Pembuatan Bab 4 buku pedoman KONDEF', '2020-11-09', '2020-12-04', 'RB02', 'S012', 'Pembuatan Bab 4 buku pedoman KONDEF PKL 2020/2021'),
(479, 'Pembuatan Bab 5 buku pedoman Aturan pencacah', '2020-11-30', '2020-11-04', 'RB02', 'S012', 'Pembuatan Bab 5 buku pedoman Aturan pencacah PKL 2020/2021'),
(480, 'Pleno Analisis', '2020-12-01', '2020-12-02', 'RB02', 'S009', 'Pleno Analisis PKL 2020/2021'),
(481, 'Kuesioner dan layout draft 4', '2020-12-03', '2020-12-05', 'RB02', 'S012', 'Kuisioner dan layout draft 4 PKL 2020/2021'),
(482, 'Revisi Kuisioner draft 4', '2020-12-03', '2020-12-05', 'RB02', 'S012', 'Revisi Kuisioner draft 4 PKL 2020/2021'),
(483, 'Presentasi Subject Matter', '2020-12-04', '2020-12-04', 'RB02', 'S004', 'Presentasi Subject Matter PKL 2020/2021'),
(484, 'Perbaikan Proposal 2 AB12, Anades, Anafer', '2020-12-05', '2020-12-10', 'RB02', 'S009', 'Perbaikan Proposal 2 AB12, Anades, Anafer PKL 2020/2021'),
(485, 'Perbaikan Proposal', '2020-12-05', '2020-12-10', 'RB02', 'S013', 'Perbaikan Proposal PKL 2020/2021'),
(486, 'Penyusunan Buku Pedoman dan Penyempurnaan Kuisioner Listing', '2020-12-05', '2020-12-10', 'RB02', 'S013', 'Penyusunan Buku Pedoman dan Penyempurnaan Kuisioner Listing PKL 2020/2021'),
(487, 'Merancang Teknik Estimasi Parameter Point dan Interval', '2020-12-05', '2020-12-10', 'RB02', 'S013', 'Merancang Teknik Estimasi Parameter Point dan Interval PKL 2020/2021'),
(488, 'Revisi Kuesioner Final', '2020-12-06', '2020-12-08', 'RB02', 'S012', 'Revisi Kuisioner Final PKL 2020/2021'),
(489, 'Finalisasi dengan CAWI', '2020-12-09', '2020-12-11', 'RB02', 'S012', 'Finalisasi dengan CAWI PKL 2020/2021'),
(490, 'Presentasi Dewan Penyantun', '2020-12-11', '2020-12-11', 'RB02', 'S004', 'Presentasi Dewan Penyantun PKL 2020/2021'),
(491, 'Finalisasi Desain Sampling, Buku Pedoman, dan Kuisioner Listing', '2020-12-12', '2020-12-20', 'RB02', 'S013', 'Finalisasi Desain Sampling, Buku Pedoman, dan Kuisioner Listing PKL 2020/2021'),
(492, 'Pelaksanaan SP1', '2020-12-14', '2020-12-19', 'RB02', 'S012', 'Pelaksanaan SP1 PKL 2020/2021'),
(493, 'Rapat Pleno 2', '2020-12-18', '2020-12-18', 'RB02', 'S004', 'Rapat Pleno 2 PKL 2020/2021'),
(494, 'Analisis SP, Penyempurnaan dan Revisi buku pedoman serta kuesioner', '2020-12-20', '2020-12-25', 'RB02', 'S012', 'Analisis SP, Penyempurnaan dan Revisi buku pedoman serta kuesioner PKL 2020/2021'),
(495, 'Uji Coba Kuesioner', '2020-12-21', '2020-12-31', 'RB02', 'S004', 'Uji Coba Kuesioner PKL 2020/2021'),
(496, 'Rapat Akbar 3', '2020-12-24', '2020-12-24', 'RB02', 'S004', 'Rapat Akbar 3 PKL 2020/2021'),
(497, 'Penyerahan Kuesioner dan Buku Pedoman Final', '2020-12-26', '2020-12-26', 'RB02', 'S012', 'Penyerahan Kuesioner dan Buku Pedoman Final PKL 2020/2021'),
(498, 'Distribusi Buku Pedoman', '2020-12-26', '2020-12-26', 'RB02', 'S012', 'Distribusi Buku Pedoman PKL 2020/2021'),
(499, 'Rapat Akbar 4', '2021-01-02', '2021-01-02', 'RB02', 'S004', 'Rapat Akbar 4 PKL 2020/2021'),
(500, 'Grand Opening', '2021-01-18', '2021-01-18', 'RB02', 'S004', 'Grand Opening PKL 2020/2021'),
(501, 'Pengumpulan Data', '2021-01-19', '2021-01-31', 'RB02', 'S009', 'Pengumpulan Data PKL 2020/2021'),
(502, 'Rapat Pleno PKL', '2020-10-02', '2020-10-02', 'RB04', 'S004', 'Rapat Pleno PKL STIS 2020/2021'),
(503, 'Rapat BPH-Koor Riset 4', '2020-10-03', '2020-10-03', 'RB04', 'S004', 'Rapat BPH-Koor Riset 4 PKL 2020/2021'),
(504, 'Rapat BPH-Koor Riset 4', '2020-10-08', '2020-10-08', 'RB04', 'S004', 'Rapat BPH-Koor Riset 4 PKL 2020/2021'),
(505, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-10-09', '2020-10-09', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(506, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-10-23', '2020-10-23', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(507, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-11-06', '2020-11-06', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(508, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-11-13', '2020-11-13', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(509, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-11-20', '2020-11-20', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(510, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-11-27', '2020-11-27', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(511, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-12-04', '2020-12-04', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(512, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-12-11', '2020-12-11', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(513, 'Rapat Koordinasi Bersama Dosen Pembimbing', '2020-12-18', '2020-12-18', 'RB04', 'S004', 'Rapat Koordinasi Riset 4 bersama Dosen Pembimbing PKL 2020/2021'),
(514, 'Plotting Anggota Riset 4', '2020-10-17', '2020-10-18', 'RB04', 'S004', 'Plotting Anggota Riset 4 PKL 2020/2021'),
(515, 'Rapat Internal Tanpa Dosen', '2020-10-09', '2020-10-09', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(516, 'Rapat Internal Tanpa Dosen', '2020-10-23', '2020-10-23', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(517, 'Rapat Internal Tanpa Dosen', '2020-11-06', '2020-11-06', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(518, 'Rapat Internal Tanpa Dosen', '2020-11-13', '2020-11-13', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(519, 'Rapat Internal Tanpa Dosen', '2020-11-20', '2020-11-20', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(520, 'Rapat Internal Tanpa Dosen', '2020-11-27', '2020-11-27', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(521, 'Rapat Internal Tanpa Dosen', '2020-12-04', '2020-12-04', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(522, 'Rapat Internal Tanpa Dosen', '2020-12-11', '2020-12-11', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(523, 'Rapat Internal Tanpa Dosen', '2020-12-18', '2020-12-18', 'RB04', 'S004', 'Rapat Koordinasi Internal Riset 4 tanpa Dosen Pembimbing PKL 2020/2021'),
(524, 'Penjelasan JobDesc Metodologi', '2020-10-18', '2020-10-18', 'RB04', 'S013', 'Penjelasan JobDesc Metodologi Riset 4 PKL 2020/2021'),
(525, 'Kajian Literatur', '2020-10-27', '2020-10-30', 'RB04', 'S013', 'Kajian Literatur Riset 4 PKL 2020/2021'),
(526, 'Perancangan Metodologi Sampling dan Kerangka Sampel', '2020-11-01', '2020-11-01', 'RB04', 'S013', 'Perancangan Metodologi Sampling dan Kerangka Sampling Riset 4 PKL 2020/2021'),
(527, 'Revisi Metodologi dan Buku Pedoman', '2020-11-06', '2020-11-11', 'RB04', 'S013', 'Revisi Metodologi dan Buku Pedoman Riset 4 PKL 2020/2021');
INSERT INTO `sikoko_progress` (`id_task`, `nama_task`, `tanggal_mulai`, `tanggal_selesai`, `id_risbid`, `id_seksi`, `keterangan`) VALUES
(528, 'Penentuan Masalah, Target Populasi, dan Level Analisis', '2020-10-19', '2020-10-23', 'RB04', 'S009', 'Penentuan Masalah, Target Populasi, dan Level Analisis Riset 4 PKL 2020/2021'),
(529, 'Penyusunan Bab 1', '2020-10-19', '2020-10-27', 'RB04', 'S009', 'Penyusunan Bab 1 Riset 4 PKL 2020/2021'),
(530, 'Penyusunan Bab 1', '2020-10-31', '2020-11-03', 'RB04', 'S009', 'Penyusunan Bab 1 Riset 4 PKL 2020/2021'),
(531, 'Penyusunan Bab 2', '2020-10-19', '2020-10-27', 'RB04', 'S009', 'Penyusunan Bab 2 Riset 4 PKL 2020/2021'),
(532, 'Penyusunan Bab 2', '2020-10-31', '2020-11-03', 'RB04', 'S009', 'Penyusunan Bab 2 Riset 4 PKL 2020/2021'),
(533, 'Penentuan Metode Analisis Deskriptif', '2020-10-19', '2020-10-27', 'RB04', 'S009', 'Penentuan Metode Analisis Deskriptif Riset 4 PKL 2020/2021'),
(534, 'Penentuan Metode Analisis Deskriptif', '2020-10-31', '2020-11-03', 'RB04', 'S009', 'Penentuan Metode Analisis Deskriptif Riset 4 PKL 2020/2021'),
(535, 'Penentuan Metode Analisis Inferensia', '2020-10-19', '2020-10-27', 'RB04', 'S009', 'Penentuan Metode Analisis Inferensia Riset 4 PKL 2020/2021'),
(536, 'Penentuan Metode Analisis Inferensia', '2020-10-31', '2020-11-03', 'RB04', 'S009', 'Penentuan Metode Analisis Inferensia Riset 4 PKL 2020/2021'),
(537, 'Rapat Seksi Analisis', '2020-11-04', '2020-11-04', 'RB04', 'S009', 'Rapat Seksi Analisis Riset 4 PKL 2020/2021'),
(538, 'Penjelasan JobDesc Anggota Seksi Kuesioner', '2020-10-18', '2020-10-18', 'RB04', 'S012', 'Penjelasan JobDesc Anggota Seksi Kuesioner Riset 4 PKL 2020/2021'),
(539, 'Pembahasan Variabel bersama Seksi Analisis', '2020-11-03', '2020-11-08', 'RB04', 'S012', 'Pembahasan Variabel bersama Seksi Analisis Riset 4 PKL 2020/2021'),
(540, 'Perancangan Kuesioner (Pertanyaan)', '2020-11-09', '2020-11-11', 'RB04', 'S012', 'Perancangan Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(541, 'Perancangan Kuesioner (Pertanyaan)', '2020-11-16', '2020-11-18', 'RB04', 'S012', 'Perancangan Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(542, 'Penetapan Alur Kuesioner (Grouping, Ordering, dan Formatting)', '2020-11-11', '2020-11-12', 'RB04', 'S012', 'Penetapan Alur Kuesioner (Grouping, Ordering, dan Formatting) Riset 4 PKL 2020/2021'),
(543, 'Penetapan Alur Kuesioner (Grouping, Ordering, dan Formatting)', '2020-11-18', '2020-11-19', 'RB04', 'S012', 'Penetapan Alur Kuesioner (Grouping, Ordering, dan Formatting) Riset 4 PKL 2020/2021'),
(544, 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan)', '2020-11-13', '2020-11-13', 'RB04', 'S012', 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan) Riset 4 PKL 2020/2021'),
(545, 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan)', '2020-11-20', '2020-11-20', 'RB04', 'S012', 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan) Riset 4 PKL 2020/2021'),
(546, 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan)', '2020-12-04', '2020-12-04', 'RB04', 'S012', 'Konsultasi Kuesioner dengan Dosen Pembimbing (Pertanyaan) Riset 4 PKL 2020/2021'),
(547, 'Revisi Kuesioner (Pertanyaan)', '2020-11-14', '2020-11-15', 'RB04', 'S012', 'Revisi Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(548, 'Revisi Kuesioner (Pertanyaan)', '2020-11-21', '2020-11-22', 'RB04', 'S012', 'Revisi Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(549, 'Revisi Kuesioner (Pertanyaan)', '2020-11-30', '2020-12-01', 'RB04', 'S012', 'Revisi Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(550, 'Revisi Kuesioner (Pertanyaan)', '2020-12-14', '2020-12-15', 'RB04', 'S012', 'Revisi Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(551, 'Rule Validasi (Pertanyaan)', '2020-11-09', '2020-11-11', 'RB04', 'S012', 'Rule Validasi (Pertanyaan) Riset 4 PKL 2020/2021'),
(552, 'Rule Validasi (Pertanyaan)', '2020-11-14', '2020-11-19', 'RB04', 'S012', 'Rule Validasi (Pertanyaan) Riset 4 PKL 2020/2021'),
(553, 'Rule Validasi (Pertanyaan)', '2020-11-21', '2020-11-22', 'RB04', 'S012', 'Rule Validasi (Pertanyaan) Riset 4 PKL 2020/2021'),
(554, 'Fiksasi Kuesioner (Pertanyaan)', '2020-12-16', '2020-12-17', 'RB04', 'S012', 'Fiksasi Kuesioner (Pertanyaan) Riset 4 PKL 2020/2021'),
(555, 'Integrasi Kuesioner dengan CAWI (Pertanyaan dan IT)', '2020-12-18', '2020-12-20', 'RB04', 'S012', 'Integrasi Kuesioner dengan CAWI (Pertanyaan dan IT) oleh Riset 4 PKL 2020/2021'),
(556, '80% Buku Pedoman Pengisian Kuesioner untuk Responden Jadi (Buku Pedoman)', '2020-11-09', '2020-11-19', 'RB04', 'S012', '80% Buku Pedoman Pengisian Kuesioner untuk Responden Jadi (Buku Pedoman) oleh Riset 4 PKL 2020/2021'),
(557, '80% Buku Pedoman Pelaksanaan Survei Jadi (Buku Pedoman)', '2020-11-09', '2020-11-19', 'RB04', 'S012', '80% Buku Pedoman Pelaksanaan Survei Jadi (Buku Pedoman) oleh Riset 4 PKL 2020/2021'),
(558, 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman)', '2020-11-20', '2020-11-20', 'RB04', 'S012', 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman) Riset 4 PKL 2020/2021'),
(559, 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman)', '2020-12-04', '2020-12-04', 'RB04', 'S012', 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman) Riset 4 PKL 2020/2021'),
(560, 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman)', '2020-12-14', '2020-12-15', 'RB04', 'S012', 'Konsultasi Buku Pedoman dengan Dosen Pembimbing (Buku Pedoman) Riset 4 PKL 2020/2021'),
(561, 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman)', '2020-11-21', '2020-11-24', 'RB04', 'S012', 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman) Riset 4 PKL 2020/2021'),
(562, 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman)', '2020-11-30', '2020-12-01', 'RB04', 'S012', 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman) Riset 4 PKL 2020/2021'),
(563, 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman)', '2020-12-14', '2020-12-15', 'RB04', 'S012', 'Revisi Buku Pedoman Pelaksanaan Survei (Buku Pedoman) Riset 4 PKL 2020/2021'),
(564, 'Revisi Buku Pedoman Pengisian Kuesioner untuk Responden (Buku Pedoman)', '2020-11-21', '2020-11-24', 'RB04', 'S012', 'Revisi Buku Pedoman Pengisian Kuesioner untuk Responden (Buku Pedoman) Riset 4 PKL 2020/2021'),
(565, 'Revisi Buku Pedoman Pengisian Kuesioner untuk Responden (Buku Pedoman)', '2020-11-30', '2020-12-01', 'RB04', 'S012', 'Revisi Buku Pedoman Pengisian Kuesioner untuk Responden (Buku Pedoman) Riset 4 PKL 2020/2021'),
(566, 'Fiksasi Buku Pedoman (Buku Pedoman)', '2020-12-16', '2020-12-17', 'RB04', 'S012', 'Fiksasi Buku Pedoman (Buku Pedoman) Riset 4 PKL 2020/2021'),
(567, 'Rapat Koordinasi Perencanaan Survei Pendahuluan 1 (Survei Pendahuluan)', '2020-11-16', '2020-11-19', 'RB04', 'S012', 'Rapat Koordinasi Perencanaan Survei Pendahuluan 1 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(568, 'Konsultasi Perencanaan Survei Pendahuluan 1 dengan Dosen Pembimbing (Survei Pendahuluan)', '2020-11-20', '2020-11-20', 'RB04', 'S012', 'Konsultasi Perencanaan Survei Pendahuluan 1 dengan Dosen Pembimbing (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(569, 'Rapat Koordinasi Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan)', '2020-11-23', '2020-11-24', 'RB04', 'S012', 'Rapat Koordinasi Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(570, 'Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan)', '2020-11-26', '2020-11-29', 'RB04', 'S012', 'Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(571, 'Revisi dan Evaluasi Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan)', '2020-11-30', '2020-12-01', 'RB04', 'S012', 'Revisi dan Evaluasi Pelaksanaan Survei Pendahuluan 1 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(572, 'Rapat Koordinasi Perencanaan Survei Pendahuluan 2 (Survei Pendahuluan)', '2020-12-02', '2020-12-03', 'RB04', 'S012', 'Rapat Koordinasi Perencanaan Survei Pendahuluan 2 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(573, 'Konsultasi Perencanaan Survei Pendahuluan 2 (Survei Pendahuluan)', '2020-12-04', '2020-12-04', 'RB04', 'S012', 'Konsultasi Perencanaan Survei Pendahuluan 2 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(574, 'Rapat Koordinasi Pelaksanaan Survei Pendahuluan 2 (Survei Pendahuluan)', '2020-12-07', '2020-12-08', 'RB04', 'S012', 'Rapat Koordinasi Pelaksanaan Survei Pendahuluan 2 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(575, 'Pelaksanaan Survei Pendahuluan 2 (Survei Pendahuluan)', '2020-12-10', '2020-12-13', 'RB04', 'S012', 'Pelaksanaan Survei Pendahuluan 2 (Survei Pendahuluan) Riset 4 PKL 2020/2021'),
(576, 'Proses Tim APSI Awal dan Tim Database', '2020-11-01', '2020-11-06', 'RB05', 'S004', 'Proses Tim APSI Awal dan Tim Database Riset 5 PKL STIS 2020/2021'),
(577, 'Deadline Tim APSI dan Tim Database', '2020-11-07', '2020-11-07', 'RB05', 'S004', 'Deadline Tim APSI dan Tim Database Riset 5 PKL STIS 2020/2021'),
(578, 'Pembuatan Dokumen APSI', '2020-11-08', '2020-11-11', 'RB05', 'S004', 'Pembuatan Dokumen APSI Riset 5 PKL STIS 2020/2021'),
(579, 'Rapat Final Tim APSI', '2020-11-11', '2020-11-11', 'RB05', 'S004', 'Rapat Final Tim APSI Riset 5 PKL STIS 2020/2021'),
(580, 'Rapat Internal 2 Riset 5', '2020-11-12', '2020-11-12', 'RB05', 'S004', 'Rapat Internal 2 Riset 5 PKL STIS 2020/2021'),
(581, 'Rapat Internal 4 Riset 5', '2020-11-28', '2020-11-28', 'RB05', 'S004', 'Rapat Internal 4 Riset 5 PKL STIS 2020/2021'),
(582, 'Rapat Riset 5 bersama Dosen Pembimbing 2', '2020-11-13', '2020-11-13', 'RB05', 'S004', 'Rapat Riset 5 bersama Dosen Pembimbing 2 PKL STIS 2020/2021'),
(583, 'Rapat Koordinasi 7', '2020-11-13', '2020-11-13', 'RB05', 'S004', 'Rapat Koordinasi 7 Riset 5 PKL STIS 2020/2021'),
(584, 'Rapat Internal 3 Riset 5', '2020-11-14', '2020-11-14', 'RB05', 'S004', 'Rapat Internal 3 Riset 5 PKL STIS 2020/2021'),
(585, 'Pengerjaan Tugas Masing-Masing Tim', '2020-11-16', '2020-11-30', 'RB05', 'S004', 'Pengerjaan Tugas Masing-Masing Tim Riset 5 PKL STIS 2020/2021'),
(586, 'Rapat Koordinasi 8', '2020-11-20', '2020-11-20', 'RB05', 'S004', 'Rapat Koordinasi 8 Riset 5 PKL STIS 2020/2021'),
(587, 'Rapat Koordinasi 9', '2020-11-27', '2020-11-27', 'RB05', 'S004', 'Rapat Koordinasi 9 Riset 5 PKL STIS 2020/2021'),
(588, 'Pengerjaan Tugas Masing-Masing Tim', '2020-12-01', '2020-12-20', 'RB05', 'S004', 'Pengerjaan Tugas Masing-Masing Tim Riset 5 PKL STIS 2020/2021'),
(589, 'Rapat Koordinasi 10', '2020-12-03', '2020-12-03', 'RB05', 'S004', 'Rapat Koordinasi 10 Riset 5 PKL STIS 2020/2021'),
(590, 'Rapat Koordinasi 12', '2020-12-11', '2020-12-11', 'RB05', 'S004', 'Rapat Koordinasi 12 Riset 5 PKL STIS 2020/2021'),
(591, 'Rapat Koordinasi 13', '2020-12-17', '2020-12-17', 'RB05', 'S004', 'Rapat Koordinasi 13 Riset 5 PKL STIS 2020/2021'),
(592, 'Rapat Koordinasi 14', '2020-12-25', '2020-12-25', 'RB05', 'S004', 'Rapat Koordinasi 14 Riset 5 PKL STIS 2020/2021'),
(593, 'Rapat Koordinasi 15', '2020-12-29', '2020-12-29', 'RB05', 'S004', 'Rapat Koordinasi 15 Riset 5 PKL STIS 2020/2021'),
(594, 'Rapat Koordinasi 11', '2020-12-18', '2020-12-18', 'RB05', 'S004', 'Rapat Koordinasi 11 Riset 5 PKL STIS 2020/2021'),
(595, 'Rapat Riset 5 bersama Dosen Pembimbing 3', '2020-12-04', '2020-12-04', 'RB05', 'S004', 'Rapat Riset 5 bersama Dosen Pembimbing 3 PKL STIS 2020/2021'),
(596, 'Rapat Internal 5 Riset 5', '2020-12-05', '2020-12-19', 'RB05', 'S004', 'Rapat Internal 5 Riset 5 PKL STIS 2020/2021'),
(597, 'Rapat Internal 6 Riset 5', '2020-12-19', '2020-12-19', 'RB05', 'S004', 'Rapat Internal 6 Riset 5 PKL STIS 2020/2021'),
(598, 'Fase Implementasi', '2020-12-21', '2020-12-30', 'RB05', 'S004', 'Fase Implementasi Riset 5 PKL STIS 2020/2021'),
(599, 'Rapat Internal 7 Riset 5', '2020-12-30', '2020-12-30', 'RB05', 'S004', 'Rapat Internal 7 Riset 5 PKL STIS 2020/2021'),
(600, 'Deadline Web', '2020-12-30', '2020-12-30', 'RB05', 'S004', 'Deadline Web Riset 5 PKL STIS 2020/2021'),
(601, 'Rapat Koordinasi 16', '2021-01-16', '2021-01-16', 'RB05', 'S004', 'Rapat Koordinasi 16 Riset 5 PKL STIS 2020/2021'),
(602, 'Rapat Internal 8 Riset 5', '2021-01-17', '2021-01-17', 'RB05', 'S004', 'Rapat Internal 8 Riset 5 PKL STIS 2020/2021'),
(603, 'Fase Maintenance dan Registrasi Mandiri', '2021-01-18', '2021-01-29', 'RB05', 'S004', 'Fase Maintenance dan Registrasi Mandiri Riset 5 PKL STIS 2020/2021'),
(604, 'Rapat Koordinasi 17', '2021-01-22', '2021-01-22', 'RB05', 'S004', 'Rapat Koordinasi 17 Riset 5 PKL STIS 2020/2021'),
(605, 'Rapat Koordinasi 18', '2021-01-28', '2021-01-28', 'RB05', 'S004', 'Rapat Koordinasi 18 Riset 5 PKL STIS 2020/2021'),
(606, 'Rapat Riset 5 bersama Dosen Pembimbing 4', '2021-01-29', '2021-01-29', 'RB05', 'S004', 'Rapat Riset 5 bersama Dosen Pembimbing 4 PKL STIS 2020/2021'),
(607, 'Rapat Koordinasi 19', '2021-01-29', '2021-01-29', 'RB05', 'S004', 'Rapat Koordinasi 19 Riset 5 PKL STIS 2020/2021'),
(608, 'Rapat Internal 9 Riset 5', '2021-01-23', '2021-01-23', 'RB05', 'S004', 'Rapat Internal 9 Riset 5 PKL STIS 2020/2021'),
(609, 'Laporan Hasil', '2021-01-23', '2021-01-23', 'RB05', 'S004', 'Laporan Hasil Riset 5 PKL STIS 2020/2021');

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
-- Table structure for table `sikoko_surat`
--

CREATE TABLE `sikoko_surat` (
  `id_surat` int(11) NOT NULL,
  `nama_surat` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('0','1') COLLATE utf8mb4_unicode_ci NOT NULL COMMENT '0 = sekre; 1 = semua',
  `upload_by` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `sikoko_tim`
--

CREATE TABLE `sikoko_tim` (
  `id_tim` varchar(3) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_tim` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `id_koor_tim` varchar(9) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sikoko_tim`
--

INSERT INTO `sikoko_tim` (`id_tim`, `nama_tim`, `id_koor_tim`) VALUES
('T01', 'Tim Pusat 1', '211810144'),
('T02', 'Tim BPH', '211810217'),
('T03', 'Tim Pusat 2', '211810239'),
('T04', 'Tim Inkamp', '211810334'),
('T05', 'Tim Aceh', '211810395'),
('T06', 'Tim Riau 2', '221810650'),
('T07', 'Tim Pusat 4', '211810463'),
('T08', 'Tim Pusat 5', '221810662'),
('T09', 'Tim Pusat 6', '211810208'),
('T10', 'Tim Pusat 3', '221810392'),
('T11', 'Tim Sumut 1', '211810170'),
('T12', 'Tim Sumut 2', '211810545'),
('T13', 'Tim Sumut 3', '211810464'),
('T14', 'Tim Sumut 4', '211810171'),
('T15', 'Tim Sumut 5', '211810590'),
('T16', 'Tim Narahubung', '211810357'),
('T17', 'Tim Sumbar 2', '211810274'),
('T18', 'Tim Sumbar 3', '221810576'),
('T19', 'Tim Maluku Papua', '111810436'),
('T20', 'Tim Riau 1', '211810216'),
('T21', 'Tim Sumbar 1', '211810139'),
('T22', 'Tim Jambi', '221810522'),
('T23', 'Tim Sumsel 1', '211810118'),
('T24', 'Tim Sumsel 2', '221810400'),
('T25', 'Tim Bengkulu', '211810411'),
('T26', 'Tim Lampung', '211810121'),
('T27', 'Tim Bangka Belitung', '211810669'),
('T28', 'Tim Kepri', '111810604'),
('T29', 'Tim Jakarta', '211810212'),
('T30', 'Tim Jabar 1', '211810453'),
('T31', 'Tim Jabar 2', '211810442'),
('T32', 'Tim Jabar 3', '221810260'),
('T33', 'Tim Jabar 4', '211810167'),
('T34', 'Tim Jateng 1', '211810531'),
('T35', 'Tim Jateng 2', '211810311'),
('T36', 'Tim Jateng 3', '211810248'),
('T37', 'Tim Jateng 4', '211810508'),
('T38', 'Tim Jateng 5', '211810467'),
('T39', 'Tim Jateng 6', '211810251'),
('T40', 'Tim Sumbar 4', '221810404'),
('T41', 'Tim Jateng 7', '211810331'),
('T42', 'Tim Jogja 1', '211810643'),
('T43', 'Tim Jogja 2', '221810196'),
('T44', 'Tim Jatim 1', '211810655'),
('T45', 'Tim KPD', '221810497'),
('T46', 'Tim Jatim 2', '221810429'),
('T47', 'Tim Jatim 3', '211810530'),
('T48', 'Tim Jatim 4', '221810670'),
('T49', 'Tim Jatim 5', '211810482'),
('T50', 'Tim Jatim 6', '211810636'),
('T51', 'Tim Jatim 7', '221810630'),
('T52', 'Tim Jatim 8', '221810256'),
('T53', 'Tim Banten', '211810470'),
('T54', 'Tim Bali', '221810333'),
('T55', 'Tim NTB', '111810406'),
('T56', 'Tim NTT', '211810372'),
('T57', 'Tim Kalimantan 1', '221810454'),
('T58', 'Tim Kalimantan 2', '211810532'),
('T59', 'Tim Sulawesi 1', '211810330'),
('T60', 'Tim Sulawesi 2', '111810146'),
('T61', 'Tim Sulawesi 3', '211810165'),
('T62', 'Tim Sulawesi 4', '111810472'),
('T63', 'Tim Monitoring', '221810266'),
('T64', 'Tim Email', '211810108'),
('T65', 'Tim 59', '211810594');

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

--
-- Dumping data for table `sikoko_tim_pasca_lapangan`
--

INSERT INTO `sikoko_tim_pasca_lapangan` (`nim`, `id_risbid`, `id_seksi`, `id_subseksi`, `id_jab`) VALUES
('111709511', 'RB06', 'S013', '604', 'J006'),
('111710027', 'RB06', 'S014', '606', 'J006'),
('111710070', 'RB06', 'S013', '603', 'J006'),
('111810095', 'RB06', 'S009', '605', 'J006'),
('111810107', 'RB06', 'S004', '600', 'J001'),
('111810132', 'RB06', 'S012', '601', 'J006'),
('111810135', 'RB06', 'S012', '602', 'J006'),
('111810141', 'RB06', 'S012', '602', 'J006'),
('111810146', 'RB06', 'S013', '604', 'J006'),
('111810160', 'RB06', 'S009', '605', 'J006'),
('111810162', 'RB06', 'S012', '601', 'J006'),
('111810164', 'RB06', 'S012', '602', 'J006'),
('111810166', 'RB06', 'S009', '605', 'J006'),
('111810173', 'RB06', 'S012', '602', 'J006'),
('111810174', 'RB06', 'S009', '605', 'J006'),
('111810197', 'RB06', 'S009', '605', 'J006'),
('111810205', 'RB06', 'S013', '603', 'J004'),
('111810223', 'RB06', 'S009', '605', 'J006'),
('111810229', 'RB06', 'S013', '604', 'J006'),
('111810231', 'RB06', 'S013', '604', 'J003'),
('111810241', 'RB06', 'S009', '605', 'J006'),
('111810258', 'RB08', 'S008', '806', 'J006'),
('111810267', 'RB08', 'S006', '802', 'J003'),
('111810275', 'RB06', 'S014', '606', 'J006'),
('111810301', 'RB06', 'S009', '605', 'J006'),
('111810304', 'RB06', 'S009', '605', 'J006'),
('111810309', 'RB06', 'S009', '605', 'J006'),
('111810325', 'RB06', 'S009', '605', 'J006'),
('111810370', 'RB06', 'S009', '001', 'J004'),
('111810383', 'RB06', 'S012', '602', 'J006'),
('111810389', 'RB06', 'S009', '605', 'J006'),
('111810406', 'RB06', 'S013', '603', 'J006'),
('111810432', 'RB06', 'S013', '001', 'J003'),
('111810433', 'RB06', 'S014', '607', 'J006'),
('111810434', 'RB06', 'S013', '604', 'J006'),
('111810436', 'RB06', 'S014', '606', 'J006'),
('111810437', 'RB06', 'S014', '606', 'J006'),
('111810440', 'RB08', 'S007', '803', 'J006'),
('111810448', 'RB06', 'S012', '602', 'J006'),
('111810449', 'RB06', 'S012', '602', 'J003'),
('111810457', 'RB06', 'S013', '603', 'J006'),
('111810472', 'RB08', 'S006', '001', 'J003'),
('111810474', 'RB06', 'S012', '001', 'J003'),
('111810476', 'RB06', 'S012', '602', 'J006'),
('111810494', 'RB06', 'S009', '605', 'J006'),
('111810515', 'RB06', 'S013', '001', 'J004'),
('111810516', 'RB06', 'S009', '605', 'J006'),
('111810518', 'RB06', 'S012', '601', 'J006'),
('111810521', 'RB06', 'S009', '605', 'J006'),
('111810525', 'RB06', 'S009', '605', 'J006'),
('111810526', 'RB06', 'S012', '602', 'J006'),
('111810541', 'RB06', 'S013', '603', 'J003'),
('111810543', 'RB06', 'S009', '605', 'J006'),
('111810546', 'RB06', 'S014', '001', 'J003'),
('111810549', 'RB06', 'S009', '605', 'J006'),
('111810565', 'RB06', 'S012', '601', 'J006'),
('111810574', 'RB06', 'S012', '602', 'J006'),
('111810575', 'RB06', 'S009', '605', 'J006'),
('111810595', 'RB06', 'S009', '001', 'J003'),
('111810603', 'RB06', 'S012', '001', 'J004'),
('111810604', 'RB06', 'S004', '600', 'J004'),
('111810616', 'RB06', 'S014', '606', 'J006'),
('111810620', 'RB06', 'S012', '601', 'J006'),
('111810625', 'RB08', 'S006', '802', 'J006'),
('111810627', 'RB08', 'S007', '804', 'J006'),
('111810631', 'RB06', 'S014', '001', 'J004'),
('111810638', 'RB06', 'S012', '601', 'J003'),
('111810639', 'RB06', 'S009', '605', 'J006'),
('111810644', 'RB08', 'S008', '805', 'J006'),
('111810645', 'RB06', 'S004', '600', 'J005'),
('111810649', 'RB06', 'S009', '605', 'J006'),
('111810654', 'RB06', 'S014', '607', 'J006'),
('111810661', 'RB06', 'S012', '602', 'J006'),
('211709915', 'RB01', 'S016', '109', 'J006'),
('211709938', 'RB08', 'S007', '803', 'J006'),
('211709953', 'RB01', 'S011', '105', 'J006'),
('211709988', 'RB01', 'S010', '101', 'J006'),
('211810091', 'RB08', 'S006', '801', 'J006'),
('211810092', 'RB04', 'S012', '404', 'J006'),
('211810093', 'RB03', 'S012', '307', 'J006'),
('211810094', 'RB04', 'S012', '406', 'J003'),
('211810096', 'RB03', 'S013', '001', 'J004'),
('211810098', 'RB03', 'S013', '311', 'J006'),
('211810099', 'RB04', 'S009', '403', 'J006'),
('211810100', 'RB04', 'S009', '402', 'J006'),
('211810101', 'RB04', 'S009', '402', 'J006'),
('211810102', 'RB02', 'S013', '203', 'J006'),
('211810103', 'RB04', 'S009', '402', 'J006'),
('211810108', 'RB01', 'S016', '108', 'J006'),
('211810109', 'RB01', 'S011', '001', 'J004'),
('211810110', 'RB04', 'S012', '405', 'J006'),
('211810111', 'RB02', 'S009', '207', 'J006'),
('211810113', 'RB03', 'S009', '301', 'J006'),
('211810114', 'RB08', 'S007', '803', 'J006'),
('211810115', 'RB08', 'S008', '805', 'J006'),
('211810118', 'RB01', 'S010', '101', 'J003'),
('211810119', 'RB03', 'S009', '303', 'J004'),
('211810120', 'RB03', 'S009', '303', 'J006'),
('211810121', 'RB01', 'S016', '001', 'J003'),
('211810122', 'RB03', 'S009', '301', 'J006'),
('211810123', 'RB04', 'S009', '403', 'J006'),
('211810124', 'RB02', 'S013', '001', 'J005'),
('211810127', 'RB01', 'S011', '106', 'J006'),
('211810130', 'RB05', 'S021', '502', 'J006'),
('211810131', 'RB04', 'S012', '404', 'J003'),
('211810133', 'RB02', 'S009', '206', 'J003'),
('211810134', 'RB03', 'S012', '309', 'J006'),
('211810136', 'RB08', 'S007', '001', 'J004'),
('211810139', 'RB04', 'S013', '407', 'J003'),
('211810142', 'RB00', 'S000', '000', 'J005'),
('211810143', 'RB03', 'S009', '302', 'J004'),
('211810144', 'RB04', 'S009', '401', 'J006'),
('211810147', 'RB02', 'S009', '206', 'J004'),
('211810148', 'RB03', 'S009', '303', 'J006'),
('211810149', 'RB01', 'S010', '102', 'J003'),
('211810150', 'RB03', 'S009', '303', 'J006'),
('211810151', 'RB05', 'S021', '502', 'J006'),
('211810152', 'RB03', 'S012', '001', 'J004'),
('211810153', 'RB08', 'S008', '805', 'J006'),
('211810154', 'RB03', 'S009', '301', 'J003'),
('211810156', 'RB08', 'S007', '804', 'J006'),
('211810158', 'RB03', 'S013', '310', 'J004'),
('211810159', 'RB04', 'S013', '407', 'J006'),
('211810161', 'RB02', 'S009', '207', 'J006'),
('211810163', 'RB04', 'S013', '407', 'J006'),
('211810165', 'RB04', 'S013', '407', 'J006'),
('211810167', 'RB08', 'S004', '800', 'J005'),
('211810168', 'RB04', 'S013', '408', 'J006'),
('211810169', 'RB03', 'S013', '310', 'J006'),
('211810170', 'RB04', 'S009', '403', 'J006'),
('211810171', 'RB01', 'S010', '101', 'J006'),
('211810172', 'RB08', 'S006', '802', 'J006'),
('211810175', 'RB03', 'S009', '302', 'J006'),
('211810176', 'RB04', 'S013', '408', 'J006'),
('211810179', 'RB01', 'S010', '103', 'J006'),
('211810180', 'RB03', 'S009', '301', 'J006'),
('211810181', 'RB03', 'S009', '302', 'J006'),
('211810182', 'RB03', 'S013', '311', 'J006'),
('211810184', 'RB02', 'S009', '208', 'J006'),
('211810185', 'RB04', 'S012', '406', 'J006'),
('211810186', 'RB01', 'S016', '108', 'J006'),
('211810187', 'RB04', 'S013', '407', 'J006'),
('211810188', 'RB04', 'S013', '407', 'J006'),
('211810189', 'RB04', 'S009', '401', 'J006'),
('211810190', 'RB08', 'S006', '001', 'J005'),
('211810191', 'RB02', 'S009', '207', 'J003'),
('211810192', 'RB01', 'S016', '108', 'J006'),
('211810200', 'RB03', 'S012', '308', 'J003'),
('211810201', 'RB03', 'S009', '303', 'J006'),
('211810204', 'RB03', 'S013', '311', 'J006'),
('211810206', 'RB03', 'S012', '308', 'J006'),
('211810207', 'RB01', 'S011', '105', 'J006'),
('211810208', 'RB03', 'S012', '307', 'J006'),
('211810209', 'RB08', 'S006', '001', 'J004'),
('211810210', 'RB01', 'S010', '103', 'J003'),
('211810211', 'RB02', 'S004', '200', 'J001'),
('211810212', 'RB02', 'S013', '203', 'J003'),
('211810214', 'RB04', 'S009', '401', 'J006'),
('211810215', 'RB02', 'S009', '206', 'J006'),
('211810216', 'RB01', 'S016', '108', 'J006'),
('211810217', 'RB00', 'S000', '000', 'J001'),
('211810218', 'RB01', 'S016', '109', 'J006'),
('211810219', 'RB03', 'S013', '001', 'J003'),
('211810221', 'RB01', 'S011', '104', 'J006'),
('211810222', 'RB01', 'S011', '105', 'J006'),
('211810225', 'RB08', 'S006', '801', 'J006'),
('211810226', 'RB03', 'S013', '311', 'J004'),
('211810228', 'RB03', 'S009', '303', 'J006'),
('211810230', 'RB01', 'S016', '109', 'J006'),
('211810235', 'RB02', 'S009', '207', 'J006'),
('211810236', 'RB04', 'S012', '405', 'J004'),
('211810238', 'RB03', 'S012', '308', 'J004'),
('211810239', 'RB03', 'S012', '307', 'J006'),
('211810240', 'RB02', 'S009', '207', 'J006'),
('211810242', 'RB04', 'S009', '402', 'J006'),
('211810243', 'RB01', 'S016', '108', 'J006'),
('211810244', 'RB02', 'S009', '208', 'J006'),
('211810246', 'RB03', 'S013', '310', 'J006'),
('211810247', 'RB08', 'S006', '801', 'J006'),
('211810248', 'RB04', 'S009', '403', 'J006'),
('211810249', 'RB03', 'S009', '302', 'J006'),
('211810251', 'RB04', 'S009', '402', 'J006'),
('211810252', 'RB04', 'S009', '401', 'J006'),
('211810253', 'RB04', 'S012', '404', 'J006'),
('211810255', 'RB01', 'S011', '106', 'J006'),
('211810257', 'RB02', 'S009', '206', 'J006'),
('211810263', 'RB02', 'S009', '206', 'J006'),
('211810264', 'RB01', 'S011', '106', 'J006'),
('211810265', 'RB08', 'S004', '800', 'J004'),
('211810268', 'RB02', 'S012', '201', 'J006'),
('211810269', 'RB04', 'S009', '403', 'J006'),
('211810271', 'RB03', 'S009', '303', 'J006'),
('211810272', 'RB02', 'S012', '204', 'J003'),
('211810273', 'RB03', 'S009', '001', 'J004'),
('211810274', 'RB02', 'S009', '206', 'J006'),
('211810276', 'RB04', 'S012', '001', 'J003'),
('211810277', 'RB02', 'S009', '206', 'J006'),
('211810279', 'RB02', 'S012', '202', 'J006'),
('211810281', 'RB04', 'S004', '400', 'J001'),
('211810282', 'RB03', 'S012', '307', 'J004'),
('211810283', 'RB08', 'S004', '800', 'J001'),
('211810284', 'RB04', 'S013', '408', 'J006'),
('211810285', 'RB04', 'S012', '405', 'J003'),
('211810286', 'RB01', 'S010', '103', 'J006'),
('211810287', 'RB04', 'S009', '402', 'J006'),
('211810289', 'RB01', 'S016', '109', 'J006'),
('211810290', 'RB02', 'S009', '208', 'J006'),
('211810292', 'RB04', 'S009', '401', 'J006'),
('211810294', 'RB02', 'S012', '201', 'J003'),
('211810295', 'RB01', 'S016', '001', 'J004'),
('211810296', 'RB08', 'S007', '803', 'J006'),
('211810297', 'RB05', 'S021', '502', 'J006'),
('211810298', 'RB03', 'S009', '301', 'J004'),
('211810302', 'RB02', 'S009', '207', 'J006'),
('211810303', 'RB03', 'S009', '301', 'J006'),
('211810305', 'RB08', 'S008', '805', 'J006'),
('211810307', 'RB08', 'S008', '805', 'J006'),
('211810308', 'RB02', 'S009', '206', 'J006'),
('211810310', 'RB01', 'S010', '102', 'J006'),
('211810311', 'RB04', 'S004', '400', 'J004'),
('211810313', 'RB04', 'S009', '401', 'J006'),
('211810315', 'RB08', 'S008', '001', 'J004'),
('211810316', 'RB04', 'S009', '401', 'J006'),
('211810317', 'RB04', 'S013', '001', 'J004'),
('211810319', 'RB04', 'S013', '408', 'J006'),
('211810320', 'RB04', 'S009', '401', 'J006'),
('211810321', 'RB02', 'S013', '001', 'J004'),
('211810322', 'RB03', 'S013', '311', 'J006'),
('211810323', 'RB03', 'S013', '310', 'J006'),
('211810324', 'RB03', 'S009', '301', 'J006'),
('211810326', 'RB01', 'S011', '001', 'J003'),
('211810328', 'RB04', 'S012', '406', 'J006'),
('211810329', 'RB02', 'S012', '202', 'J006'),
('211810330', 'RB03', 'S012', '309', 'J004'),
('211810331', 'RB04', 'S013', '407', 'J006'),
('211810332', 'RB03', 'S009', '302', 'J003'),
('211810334', 'RB02', 'S013', '203', 'J006'),
('211810337', 'RB02', 'S012', '201', 'J004'),
('211810338', 'RB04', 'S009', '403', 'J006'),
('211810341', 'RB03', 'S013', '311', 'J006'),
('211810342', 'RB08', 'S008', '807', 'J006'),
('211810344', 'RB08', 'S007', '001', 'J005'),
('211810345', 'RB01', 'S016', '109', 'J006'),
('211810346', 'RB05', 'S022', '503', 'J006'),
('211810347', 'RB04', 'S009', '403', 'J006'),
('211810348', 'RB08', 'S007', '804', 'J003'),
('211810349', 'RB01', 'S011', '106', 'J006'),
('211810351', 'RB03', 'S012', '307', 'J006'),
('211810353', 'RB07', 'S002', '707', 'J006'),
('211810355', 'RB04', 'S012', '001', 'J004'),
('211810356', 'RB01', 'S010', '103', 'J006'),
('211810357', 'RB02', 'S012', '204', 'J006'),
('211810358', 'RB01', 'S016', '108', 'J006'),
('211810361', 'RB02', 'S009', '208', 'J006'),
('211810362', 'RB08', 'S007', '804', 'J006'),
('211810363', 'RB02', 'S012', '201', 'J006'),
('211810364', 'RB08', 'S006', '801', 'J006'),
('211810365', 'RB04', 'S009', '402', 'J006'),
('211810366', 'RB03', 'S009', '302', 'J006'),
('211810367', 'RB02', 'S012', '202', 'J006'),
('211810368', 'RB03', 'S013', '311', 'J006'),
('211810369', 'RB01', 'S010', '102', 'J006'),
('211810371', 'RB04', 'S012', '405', 'J006'),
('211810372', 'RB03', 'S012', '308', 'J006'),
('211810373', 'RB01', 'S011', '106', 'J006'),
('211810374', 'RB04', 'S009', '401', 'J006'),
('211810375', 'RB08', 'S006', '802', 'J006'),
('211810379', 'RB04', 'S009', '001', 'J003'),
('211810380', 'RB04', 'S013', '408', 'J006'),
('211810381', 'RB04', 'S009', '402', 'J006'),
('211810382', 'RB02', 'S009', '001', 'J005'),
('211810384', 'RB03', 'S009', '301', 'J006'),
('211810385', 'RB04', 'S012', '404', 'J006'),
('211810387', 'RB01', 'S011', '105', 'J006'),
('211810388', 'RB01', 'S011', '104', 'J006'),
('211810390', 'RB04', 'S013', '408', 'J006'),
('211810391', 'RB03', 'S012', '307', 'J006'),
('211810393', 'RB08', 'S006', '801', 'J006'),
('211810395', 'RB07', 'S002', '708', 'J006'),
('211810399', 'RB03', 'S009', '303', 'J003'),
('211810401', 'RB02', 'S013', '203', 'J006'),
('211810405', 'RB03', 'S004', '300', 'J001'),
('211810408', 'RB01', 'S011', '106', 'J003'),
('211810409', 'RB08', 'S008', '806', 'J006'),
('211810410', 'RB02', 'S012', '204', 'J006'),
('211810411', 'RB02', 'S012', '001', 'J004'),
('211810413', 'RB01', 'S011', '105', 'J006'),
('211810415', 'RB02', 'S009', '207', 'J006'),
('211810416', 'RB04', 'S009', '403', 'J006'),
('211810419', 'RB04', 'S012', '404', 'J006'),
('211810420', 'RB02', 'S009', '207', 'J006'),
('211810423', 'RB04', 'S013', '001', 'J003'),
('211810424', 'RB02', 'S013', '205', 'J006'),
('211810425', 'RB04', 'S009', '401', 'J003'),
('211810426', 'RB01', 'S010', '101', 'J006'),
('211810427', 'RB03', 'S012', '308', 'J006'),
('211810428', 'RB02', 'S012', '202', 'J006'),
('211810435', 'RB03', 'S012', '001', 'J003'),
('211810438', 'RB01', 'S016', '109', 'J003'),
('211810439', 'RB03', 'S009', '302', 'J006'),
('211810441', 'RB02', 'S012', '001', 'J003'),
('211810442', 'RB02', 'S013', '205', 'J006'),
('211810443', 'RB01', 'S011', '107', 'J006'),
('211810444', 'RB01', 'S011', '104', 'J006'),
('211810447', 'RB02', 'S013', '001', 'J003'),
('211810450', 'RB03', 'S012', '307', 'J003'),
('211810451', 'RB02', 'S009', '206', 'J006'),
('211810453', 'RB01', 'S011', '105', 'J006'),
('211810455', 'RB02', 'S012', '202', 'J006'),
('211810456', 'RB04', 'S012', '406', 'J006'),
('211810458', 'RB01', 'S016', '108', 'J006'),
('211810460', 'RB04', 'S009', '402', 'J006'),
('211810461', 'RB04', 'S012', '405', 'J006'),
('211810462', 'RB02', 'S012', '202', 'J003'),
('211810463', 'RB08', 'S006', '801', 'J003'),
('211810464', 'RB08', 'S008', '807', 'J003'),
('211810465', 'RB03', 'S009', '303', 'J006'),
('211810466', 'RB01', 'S016', '109', 'J006'),
('211810467', 'RB04', 'S009', '401', 'J006'),
('211810469', 'RB02', 'S009', '208', 'J006'),
('211810470', 'RB04', 'S009', '403', 'J003'),
('211810471', 'RB02', 'S009', '208', 'J006'),
('211810475', 'RB03', 'S012', '308', 'J006'),
('211810478', 'RB02', 'S009', '207', 'J006'),
('211810480', 'RB03', 'S009', '302', 'J006'),
('211810482', 'RB02', 'S004', '200', 'J005'),
('211810483', 'RB02', 'S009', '207', 'J006'),
('211810485', 'RB04', 'S012', '404', 'J006'),
('211810486', 'RB03', 'S009', '302', 'J006'),
('211810487', 'RB01', 'S016', '108', 'J006'),
('211810488', 'RB03', 'S009', '302', 'J006'),
('211810489', 'RB02', 'S009', '208', 'J006'),
('211810490', 'RB03', 'S012', '307', 'J006'),
('211810491', 'RB04', 'S012', '404', 'J004'),
('211810492', 'RB02', 'S009', '207', 'J006'),
('211810493', 'RB03', 'S009', '303', 'J006'),
('211810495', 'RB03', 'S012', '308', 'J006'),
('211810498', 'RB02', 'S013', '205', 'J006'),
('211810500', 'RB02', 'S004', '200', 'J004'),
('211810501', 'RB01', 'S004', '100', 'J001'),
('211810503', 'RB02', 'S009', '208', 'J004'),
('211810504', 'RB02', 'S012', '204', 'J004'),
('211810505', 'RB03', 'S009', '301', 'J006'),
('211810506', 'RB04', 'S009', '001', 'J004'),
('211810507', 'RB04', 'S009', '403', 'J006'),
('211810508', 'RB02', 'S009', '001', 'J003'),
('211810511', 'RB04', 'S009', '401', 'J006'),
('211810512', 'RB01', 'S010', '103', 'J006'),
('211810513', 'RB02', 'S009', '206', 'J006'),
('211810517', 'RB04', 'S013', '408', 'J006'),
('211810519', 'RB08', 'S006', '802', 'J004'),
('211810520', 'RB03', 'S004', '300', 'J004'),
('211810523', 'RB08', 'S007', '803', 'J006'),
('211810524', 'RB02', 'S012', '201', 'J006'),
('211810529', 'RB02', 'S013', '205', 'J006'),
('211810530', 'RB01', 'S011', '107', 'J006'),
('211810531', 'RB01', 'S004', '100', 'J005'),
('211810532', 'RB01', 'S011', '107', 'J003'),
('211810533', 'RB03', 'S009', '301', 'J006'),
('211810534', 'RB05', 'S021', '502', 'J006'),
('211810535', 'RB01', 'S016', '108', 'J006'),
('211810536', 'RB02', 'S009', '206', 'J006'),
('211810537', 'RB08', 'S006', '801', 'J006'),
('211810538', 'RB02', 'S012', '202', 'J004'),
('211810539', 'RB03', 'S009', '301', 'J006'),
('211810542', 'RB03', 'S012', '309', 'J003'),
('211810544', 'RB02', 'S009', '206', 'J006'),
('211810545', 'RB01', 'S010', '001', 'J003'),
('211810550', 'RB02', 'S009', '208', 'J003'),
('211810551', 'RB01', 'S011', '107', 'J006'),
('211810552', 'RB02', 'S012', '201', 'J006'),
('211810553', 'RB03', 'S013', '310', 'J003'),
('211810554', 'RB02', 'S009', '207', 'J004'),
('211810555', 'RB04', 'S009', '402', 'J006'),
('211810556', 'RB02', 'S009', '208', 'J006'),
('211810559', 'RB03', 'S013', '311', 'J003'),
('211810561', 'RB01', 'S011', '107', 'J006'),
('211810562', 'RB01', 'S011', '104', 'J006'),
('211810563', 'RB01', 'S016', '108', 'J006'),
('211810564', 'RB01', 'S016', '109', 'J006'),
('211810566', 'RB02', 'S013', '205', 'J004'),
('211810567', 'RB05', 'S020', '501', 'J006'),
('211810570', 'RB03', 'S009', '302', 'J006'),
('211810571', 'RB08', 'S007', '803', 'J003'),
('211810572', 'RB04', 'S012', '405', 'J006'),
('211810573', 'RB02', 'S013', '205', 'J006'),
('211810579', 'RB04', 'S009', '403', 'J006'),
('211810580', 'RB03', 'S009', '303', 'J006'),
('211810582', 'RB01', 'S011', '104', 'J006'),
('211810584', 'RB03', 'S009', '302', 'J006'),
('211810585', 'RB08', 'S008', '807', 'J006'),
('211810586', 'RB08', 'S006', '801', 'J006'),
('211810587', 'RB08', 'S007', '804', 'J006'),
('211810588', 'RB01', 'S016', '109', 'J006'),
('211810590', 'RB02', 'S012', '202', 'J006'),
('211810591', 'RB01', 'S016', '109', 'J006'),
('211810593', 'RB08', 'S006', '801', 'J006'),
('211810594', 'RB08', 'S008', '805', 'J006'),
('211810598', 'RB03', 'S009', '301', 'J006'),
('211810599', 'RB00', 'S000', '000', 'J004'),
('211810600', 'RB04', 'S013', '408', 'J006'),
('211810601', 'RB01', 'S011', '104', 'J006'),
('211810602', 'RB03', 'S009', '301', 'J006'),
('211810605', 'RB08', 'S006', '802', 'J006'),
('211810606', 'RB03', 'S004', '300', 'J005'),
('211810607', 'RB02', 'S013', '203', 'J004'),
('211810609', 'RB02', 'S009', '207', 'J006'),
('211810610', 'RB03', 'S013', '311', 'J006'),
('211810612', 'RB04', 'S013', '407', 'J006'),
('211810613', 'RB02', 'S009', '208', 'J006'),
('211810614', 'RB01', 'S010', '102', 'J006'),
('211810615', 'RB08', 'S007', '001', 'J003'),
('211810617', 'RB02', 'S012', '201', 'J006'),
('211810621', 'RB02', 'S012', '001', 'J005'),
('211810623', 'RB02', 'S009', '208', 'J006'),
('211810624', 'RB04', 'S012', '406', 'J006'),
('211810628', 'RB04', 'S012', '406', 'J006'),
('211810629', 'RB03', 'S009', '303', 'J006'),
('211810632', 'RB03', 'S009', '302', 'J006'),
('211810633', 'RB04', 'S013', '407', 'J006'),
('211810635', 'RB02', 'S013', '203', 'J006'),
('211810636', 'RB01', 'S011', '106', 'J006'),
('211810643', 'RB02', 'S009', '207', 'J006'),
('211810646', 'RB04', 'S013', '407', 'J006'),
('211810648', 'RB03', 'S009', '001', 'J003'),
('211810651', 'RB04', 'S004', '400', 'J005'),
('211810653', 'RB02', 'S009', '208', 'J006'),
('211810655', 'RB04', 'S012', '405', 'J006'),
('211810656', 'RB08', 'S007', '804', 'J006'),
('211810657', 'RB01', 'S010', '102', 'J006'),
('211810658', 'RB01', 'S010', '001', 'J004'),
('211810663', 'RB03', 'S013', '310', 'J006'),
('211810664', 'RB01', 'S011', '107', 'J006'),
('211810665', 'RB03', 'S012', '308', 'J006'),
('211810666', 'RB03', 'S012', '309', 'J006'),
('211810667', 'RB02', 'S009', '206', 'J006'),
('211810668', 'RB02', 'S013', '205', 'J003'),
('211810669', 'RB04', 'S012', '404', 'J006'),
('211810671', 'RB01', 'S016', '109', 'J006'),
('211810674', 'RB02', 'S013', '205', 'J006'),
('211810675', 'RB02', 'S009', '208', 'J006'),
('211810677', 'RB02', 'S009', '001', 'J004'),
('211810678', 'RB01', 'S011', '104', 'J003'),
('211810679', 'RB03', 'S012', '309', 'J006'),
('211810680', 'RB04', 'S009', '403', 'J006'),
('211810681', 'RB04', 'S013', '408', 'J003'),
('211810683', 'RB07', 'S001', '702', 'J006'),
('221709573', 'RB07', 'S002', '705', 'J006'),
('221709729', 'RB05', 'S020', '501', 'J006'),
('221709732', 'RB07', 'S002', '708', 'J006'),
('221810097', 'RB05', 'S021', '502', 'J006'),
('221810104', 'RB05', 'S021', '502', 'J006'),
('221810112', 'RB07', 'S004', '700', 'J005'),
('221810116', 'RB05', 'S020', '501', 'J006'),
('221810117', 'RB05', 'S004', '500', 'J001'),
('221810125', 'RB05', 'S021', '502', 'J006'),
('221810126', 'RB07', 'S003', '709', 'J006'),
('221810128', 'RB08', 'S008', '001', 'J003'),
('221810129', 'RB05', 'S020', '501', 'J006'),
('221810137', 'RB05', 'S022', '503', 'J006'),
('221810138', 'RB05', 'S022', '503', 'J006'),
('221810140', 'RB05', 'S021', '502', 'J006'),
('221810145', 'RB07', 'S003', '710', 'J006'),
('221810155', 'RB01', 'S016', '109', 'J006'),
('221810157', 'RB05', 'S022', '503', 'J006'),
('221810177', 'RB05', 'S021', '502', 'J006'),
('221810178', 'RB05', 'S004', '500', 'J005'),
('221810183', 'RB07', 'S003', '710', 'J006'),
('221810193', 'RB03', 'S015', '305', 'J006'),
('221810195', 'RB01', 'S016', '108', 'J006'),
('221810196', 'RB07', 'S001', '703', 'J003'),
('221810198', 'RB07', 'S003', '713', 'J003'),
('221810202', 'RB05', 'S022', '503', 'J006'),
('221810213', 'RB07', 'S003', '712', 'J003'),
('221810220', 'RB08', 'S008', '805', 'J006'),
('221810224', 'RB05', 'S022', '503', 'J006'),
('221810227', 'RB05', 'S021', '502', 'J006'),
('221810232', 'RB05', 'S020', '501', 'J006'),
('221810233', 'RB05', 'S022', '503', 'J006'),
('221810234', 'RB07', 'S002', '707', 'J006'),
('221810237', 'RB05', 'S021', '502', 'J006'),
('221810245', 'RB03', 'S015', '001', 'J003'),
('221810256', 'RB07', 'S003', '709', 'J003'),
('221810259', 'RB07', 'S001', '001', 'J003'),
('221810260', 'RB05', 'S020', '501', 'J006'),
('221810261', 'RB07', 'S003', '712', 'J006'),
('221810262', 'RB05', 'S022', '503', 'J006'),
('221810266', 'RB07', 'S004', '700', 'J001'),
('221810270', 'RB03', 'S015', '304', 'J003'),
('221810278', 'RB03', 'S015', '304', 'J006'),
('221810280', 'RB07', 'S002', '706', 'J006'),
('221810288', 'RB08', 'S008', '806', 'J003'),
('221810291', 'RB05', 'S021', '001', 'J004'),
('221810293', 'RB04', 'S009', '402', 'J006'),
('221810299', 'RB05', 'S020', '501', 'J006'),
('221810300', 'RB05', 'S022', '503', 'J006'),
('221810306', 'RB05', 'S021', '502', 'J006'),
('221810314', 'RB03', 'S015', '305', 'J003'),
('221810318', 'RB03', 'S015', '304', 'J006'),
('221810327', 'RB07', 'S001', '702', 'J006'),
('221810333', 'RB05', 'S021', '502', 'J006'),
('221810335', 'RB07', 'S003', '711', 'J006'),
('221810336', 'RB05', 'S020', '001', 'J003'),
('221810340', 'RB08', 'S008', '805', 'J003'),
('221810343', 'RB05', 'S021', '502', 'J006'),
('221810350', 'RB04', 'S009', '402', 'J003'),
('221810354', 'RB07', 'S002', '705', 'J003'),
('221810359', 'RB05', 'S021', '502', 'J006'),
('221810360', 'RB07', 'S003', '711', 'J003'),
('221810376', 'RB05', 'S020', '501', 'J006'),
('221810377', 'RB05', 'S022', '503', 'J006'),
('221810378', 'RB08', 'S006', '802', 'J006'),
('221810386', 'RB07', 'S001', '001', 'J004'),
('221810392', 'RB07', 'S002', '707', 'J003'),
('221810394', 'RB05', 'S020', '501', 'J006'),
('221810396', 'RB07', 'S003', '709', 'J006'),
('221810397', 'RB07', 'S001', '701', 'J006'),
('221810398', 'RB07', 'S003', '713', 'J006'),
('221810400', 'RB07', 'S001', '704', 'J006'),
('221810402', 'RB07', 'S001', '701', 'J003'),
('221810403', 'RB00', 'S000', '000', 'J002'),
('221810404', 'RB07', 'S003', '710', 'J003'),
('221810407', 'RB05', 'S021', '502', 'J006'),
('221810412', 'RB05', 'S021', '502', 'J006'),
('221810414', 'RB07', 'S002', '706', 'J003'),
('221810417', 'RB05', 'S020', '501', 'J006'),
('221810418', 'RB07', 'S002', '708', 'J003'),
('221810421', 'RB05', 'S022', '503', 'J006'),
('221810422', 'RB05', 'S020', '501', 'J006'),
('221810429', 'RB07', 'S002', '707', 'J006'),
('221810430', 'RB05', 'S021', '502', 'J006'),
('221810431', 'RB01', 'S016', '109', 'J006'),
('221810445', 'RB05', 'S021', '001', 'J003'),
('221810452', 'RB07', 'S001', '702', 'J003'),
('221810454', 'RB05', 'S022', '503', 'J006'),
('221810459', 'RB05', 'S021', '502', 'J006'),
('221810468', 'RB05', 'S021', '502', 'J006'),
('221810473', 'RB07', 'S003', '001', 'J003'),
('221810477', 'RB05', 'S020', '501', 'J006'),
('221810479', 'RB07', 'S001', '701', 'J006'),
('221810481', 'RB05', 'S022', '503', 'J006'),
('221810484', 'RB07', 'S001', '701', 'J006'),
('221810496', 'RB01', 'S004', '100', 'J004'),
('221810497', 'RB03', 'S015', '305', 'J004'),
('221810499', 'RB01', 'S011', '105', 'J003'),
('221810502', 'RB05', 'S020', '001', 'J004'),
('221810509', 'RB07', 'S002', '708', 'J006'),
('221810510', 'RB03', 'S015', '304', 'J006'),
('221810514', 'RB07', 'S001', '704', 'J003'),
('221810522', 'RB07', 'S004', '700', 'J004'),
('221810527', 'RB03', 'S015', '306', 'J006'),
('221810528', 'RB07', 'S002', '708', 'J006'),
('221810540', 'RB07', 'S002', '705', 'J006'),
('221810547', 'RB05', 'S020', '501', 'J006'),
('221810548', 'RB05', 'S021', '502', 'J006'),
('221810557', 'RB03', 'S009', '303', 'J006'),
('221810558', 'RB05', 'S020', '501', 'J006'),
('221810560', 'RB07', 'S002', '001', 'J003'),
('221810568', 'RB05', 'S004', '500', 'J004'),
('221810576', 'RB05', 'S020', '501', 'J006'),
('221810577', 'RB08', 'S008', '806', 'J006'),
('221810578', 'RB07', 'S001', '703', 'J006'),
('221810583', 'RB03', 'S015', '305', 'J006'),
('221810589', 'RB07', 'S002', '706', 'J006'),
('221810592', 'RB07', 'S001', '702', 'J006'),
('221810596', 'RB00', 'S000', '000', 'J004'),
('221810597', 'RB07', 'S003', '713', 'J006'),
('221810608', 'RB05', 'S021', '502', 'J006'),
('221810618', 'RB07', 'S003', '711', 'J006'),
('221810619', 'RB07', 'S002', '001', 'J004'),
('221810622', 'RB05', 'S020', '501', 'J006'),
('221810626', 'RB07', 'S002', '705', 'J006'),
('221810630', 'RB05', 'S022', '503', 'J006'),
('221810634', 'RB01', 'S016', '108', 'J006'),
('221810637', 'RB07', 'S003', '711', 'J006'),
('221810640', 'RB07', 'S003', '001', 'J004'),
('221810641', 'RB05', 'S021', '502', 'J006'),
('221810642', 'RB07', 'S001', '703', 'J006'),
('221810647', 'RB07', 'S002', '708', 'J006'),
('221810650', 'RB07', 'S001', '703', 'J006'),
('221810652', 'RB08', 'S008', '805', 'J006'),
('221810659', 'RB07', 'S001', '704', 'J006'),
('221810660', 'RB05', 'S022', '001', 'J004'),
('221810662', 'RB01', 'S016', '108', 'J003'),
('221810670', 'RB03', 'S015', '306', 'J003'),
('221810672', 'RB07', 'S003', '712', 'J006'),
('221810673', 'RB05', 'S021', '502', 'J006'),
('221810676', 'RB05', 'S022', '001', 'J003'),
('221810682', 'RB07', 'S003', '710', 'J006'),
('211810330', 'RB03', 'S024', '001', 'J003'),
('211810226', 'RB03', 'S024', '001', 'J004'),
('211810093', 'RB03', 'S024', '312', 'J006'),
('211810158', 'RB03', 'S024', '312', 'J006'),
('211810490', 'RB03', 'S024', '312', 'J006'),
('211810505', 'RB03', 'S024', '312', 'J006'),
('211810666', 'RB03', 'S024', '312', 'J006'),
('211810679', 'RB03', 'S024', '312', 'J006'),
('211810154', 'RB03', 'S026', '001', 'J003'),
('211810298', 'RB03', 'S026', '001', 'J004'),
('211810324', 'RB03', 'S026', '313', 'J006'),
('211810182', 'RB03', 'S026', '313', 'J006'),
('211810200', 'RB03', 'S026', '313', 'J006'),
('211810219', 'RB03', 'S026', '313', 'J006'),
('211810539', 'RB03', 'S026', '313', 'J006'),
('211810559', 'RB03', 'S026', '313', 'J006'),
('211810602', 'RB03', 'S026', '313', 'J006'),
('211810096', 'RB03', 'S025', '001', 'J003'),
('211810238', 'RB03', 'S025', '001', 'J004'),
('211810322', 'RB03', 'S025', '314', 'J006'),
('211810351', 'RB03', 'S025', '314', 'J006'),
('211810427', 'RB03', 'S025', '314', 'J006'),
('211810475', 'RB03', 'S025', '314', 'J006'),
('211810495', 'RB03', 'S025', '314', 'J006'),
('211810665', 'RB03', 'S025', '314', 'J006'),
('211810435', 'RB03', 'S027', '001', 'J003'),
('211810152', 'RB03', 'S027', '001', 'J004'),
('211810134', 'RB03', 'S027', '315', 'J006'),
('211810208', 'RB03', 'S027', '315', 'J006'),
('211810239', 'RB03', 'S027', '315', 'J006'),
('211810282', 'RB03', 'S027', '315', 'J006'),
('211810372', 'RB03', 'S027', '315', 'J006'),
('211810450', 'RB03', 'S027', '315', 'J006'),
('211810542', 'RB03', 'S027', '315', 'J006'),
('211810610', 'RB03', 'S027', '315', 'J006'),
('211810648', 'RB03', 'S023', '001', 'J003'),
('211810273', 'RB03', 'S023', '001', 'J004'),
('211810332', 'RB03', 'S023', '316', 'J003'),
('211810598', 'RB03', 'S023', '316', 'J004'),
('211810122', 'RB03', 'S023', '316', 'J006'),
('211810303', 'RB03', 'S023', '316', 'J006'),
('211810366', 'RB03', 'S023', '316', 'J006'),
('211810368', 'RB03', 'S023', '316', 'J006'),
('211810391', 'RB03', 'S023', '316', 'J006'),
('211810533', 'RB03', 'S023', '316', 'J006'),
('211810143', 'RB03', 'S023', '317', 'J003'),
('211810175', 'RB03', 'S023', '317', 'J004'),
('211810181', 'RB03', 'S023', '317', 'J006'),
('211810204', 'RB03', 'S023', '317', 'J006'),
('211810249', 'RB03', 'S023', '317', 'J006'),
('211810553', 'RB03', 'S023', '317', 'J006'),
('211810570', 'RB03', 'S023', '317', 'J006'),
('211810584', 'RB03', 'S023', '317', 'J006'),
('211810439', 'RB03', 'S023', '318', 'J003'),
('211810486', 'RB03', 'S023', '318', 'J004'),
('211810098', 'RB03', 'S023', '318', 'J006'),
('211810169', 'RB03', 'S023', '318', 'J006'),
('211810341', 'RB03', 'S023', '318', 'J006'),
('211810480', 'RB03', 'S023', '318', 'J006'),
('211810488', 'RB03', 'S023', '318', 'J006'),
('211810632', 'RB03', 'S023', '318', 'J006'),
('211810465', 'RB03', 'S023', '319', 'J003'),
('211810629', 'RB03', 'S023', '319', 'J004'),
('211810120', 'RB03', 'S023', '319', 'J006'),
('211810180', 'RB03', 'S023', '319', 'J006'),
('211810228', 'RB03', 'S023', '319', 'J006'),
('221810557', 'RB03', 'S023', '319', 'J006'),
('211810580', 'RB03', 'S023', '320', 'J003'),
('211810113', 'RB03', 'S023', '320', 'J004'),
('211810148', 'RB03', 'S023', '320', 'J006'),
('211810150', 'RB03', 'S023', '320', 'J006'),
('211810206', 'RB03', 'S023', '320', 'J006'),
('211810323', 'RB03', 'S023', '320', 'J006'),
('211810663', 'RB03', 'S023', '320', 'J006'),
('211810399', 'RB03', 'S023', '321', 'J003'),
('211810119', 'RB03', 'S023', '321', 'J004'),
('211810201', 'RB03', 'S023', '321', 'J006'),
('211810246', 'RB03', 'S023', '321', 'J006'),
('211810271', 'RB03', 'S023', '321', 'J006'),
('211810384', 'RB03', 'S023', '321', 'J006'),
('211810493', 'RB03', 'S023', '321', 'J006'),
('221810245', 'RB03', 'S032', '001', 'J003'),
('221810497', 'RB03', 'S032', '001', 'J004'),
('221810270', 'RB03', 'S032', '322', 'J006'),
('221810510', 'RB03', 'S032', '322', 'J006'),
('221810318', 'RB03', 'S032', '322', 'J006'),
('221810278', 'RB03', 'S032', '322', 'J006'),
('221810314', 'RB03', 'S032', '322', 'J006'),
('221810583', 'RB03', 'S032', '322', 'J006'),
('221810193', 'RB03', 'S032', '322', 'J006'),
('221810670', 'RB03', 'S032', '322', 'J006'),
('221810527', 'RB03', 'S032', '322', 'J006'),
('211709915', 'RB01', 'S023', '113', 'J006'),
('211709953', 'RB01', 'S023', '115', 'J006'),
('211709988', 'RB01', 'S023', '113', 'J006'),
('211810108', 'RB01', 'S028', '001', 'J004'),
('211810109', 'RB01', 'S031', '001', 'J004'),
('211810118', 'RB01', 'S023', '113', 'J003'),
('211810121', 'RB01', 'S026', '118', 'J003'),
('211810127', 'RB01', 'S023', '114', 'J006'),
('211810149', 'RB01', 'S023', '112', 'J006'),
('211810171', 'RB01', 'S026', '116', 'J006'),
('211810179', 'RB01', 'S023', '112', 'J006'),
('211810186', 'RB01', 'S028', '121', 'J006'),
('211810192', 'RB01', 'S026', '118', 'J006'),
('211810207', 'RB01', 'S023', '115', 'J006'),
('211810210', 'RB01', 'S023', '112', 'J003'),
('211810216', 'RB01', 'S023', '110', 'J006'),
('211810218', 'RB01', 'S023', '111', 'J006'),
('211810221', 'RB01', 'S023', '114', 'J006'),
('211810222', 'RB01', 'S023', '115', 'J006'),
('211810230', 'RB01', 'S030', '119', 'J006'),
('211810243', 'RB01', 'S023', '110', 'J006'),
('211810255', 'RB01', 'S026', '117', 'J006'),
('211810264', 'RB01', 'S026', '117', 'J006'),
('211810286', 'RB01', 'S023', '112', 'J006'),
('211810289', 'RB01', 'S023', '112', 'J006'),
('211810295', 'RB01', 'S031', '120', 'J006'),
('211810310', 'RB01', 'S023', '113', 'J006'),
('211810326', 'RB01', 'S026', '117', 'J003'),
('211810345', 'RB01', 'S030', '119', 'J006'),
('211810349', 'RB01', 'S026', '117', 'J006'),
('211810356', 'RB01', 'S028', '121', 'J006'),
('211810358', 'RB01', 'S023', '110', 'J006'),
('211810369', 'RB01', 'S023', '113', 'J006'),
('211810373', 'RB01', 'S028', '121', 'J006'),
('211810387', 'RB01', 'S023', '115', 'J006'),
('211810388', 'RB01', 'S023', '114', 'J006'),
('211810408', 'RB01', 'S028', '001', 'J003'),
('211810413', 'RB01', 'S023', '115', 'J006'),
('211810426', 'RB01', 'S030', '119', 'J006'),
('211810438', 'RB01', 'S023', '111', 'J003'),
('211810443', 'RB01', 'S030', '119', 'J006'),
('211810444', 'RB01', 'S023', '114', 'J006'),
('211810453', 'RB01', 'S023', '115', 'J006'),
('211810458', 'RB01', 'S023', '110', 'J006'),
('211810466', 'RB01', 'S028', '121', 'J006'),
('211810487', 'RB01', 'S030', '001', 'J004'),
('211810501', 'RB01', 'S026', '001', 'J003'),
('211810512', 'RB01', 'S026', '116', 'J006'),
('211810530', 'RB01', 'S026', '001', 'J004'),
('211810531', 'RB01', 'S023', '001', 'J003'),
('211810532', 'RB01', 'S030', '001', 'J003'),
('211810535', 'RB01', 'S023', '110', 'J006'),
('211810545', 'RB01', 'S026', '116', 'J003'),
('211810551', 'RB01', 'S023', '115', 'J006'),
('211810561', 'RB01', 'S028', '121', 'J006'),
('211810562', 'RB01', 'S023', '114', 'J006'),
('211810563', 'RB01', 'S023', '110', 'J006'),
('211810564', 'RB01', 'S023', '111', 'J006'),
('211810582', 'RB01', 'S023', '114', 'J006'),
('211810588', 'RB01', 'S023', '111', 'J006'),
('211810591', 'RB01', 'S023', '111', 'J006'),
('211810601', 'RB01', 'S023', '114', 'J006'),
('211810614', 'RB01', 'S023', '112', 'J006'),
('211810636', 'RB01', 'S030', '119', 'J006'),
('211810657', 'RB01', 'S023', '113', 'J006'),
('211810658', 'RB01', 'S031', '120', 'J006'),
('211810664', 'RB01', 'S028', '121', 'J006'),
('211810671', 'RB01', 'S023', '112', 'J006'),
('211810678', 'RB01', 'S023', '114', 'J003'),
('221810155', 'RB01', 'S026', '118', 'J006'),
('221810195', 'RB01', 'S023', '001', 'J004'),
('221810431', 'RB01', 'S030', '119', 'J006'),
('221810496', 'RB01', 'S031', '001', 'J003'),
('221810499', 'RB01', 'S023', '115', 'J003'),
('221810634', 'RB01', 'S028', '121', 'J006'),
('221810662', 'RB01', 'S023', '110', 'J003'),
('211810244', 'RB02', 'S023', '209', 'J006'),
('211810268', 'RB02', 'S023', '209', 'J006'),
('211810556', 'RB02', 'S023', '209', 'J006'),
('211810566', 'RB02', 'S023', '209', 'J004'),
('211810623', 'RB02', 'S023', '209', 'J003'),
('211810653', 'RB02', 'S023', '209', 'J006'),
('211810235', 'RB02', 'S023', '210', 'J006'),
('211810277', 'RB02', 'S023', '210', 'J006'),
('211810334', 'RB02', 'S023', '210', 'J006'),
('211810420', 'RB02', 'S023', '210', 'J006'),
('211810462', 'RB02', 'S023', '210', 'J006'),
('211810478', 'RB02', 'S023', '210', 'J003'),
('211810609', 'RB02', 'S023', '210', 'J004'),
('211810621', 'RB02', 'S023', '210', 'J006'),
('211810124', 'RB02', 'S023', '211', 'J006'),
('211810191', 'RB02', 'S023', '211', 'J003'),
('211810240', 'RB02', 'S023', '211', 'J006'),
('211810483', 'RB02', 'S023', '211', 'J004'),
('211810536', 'RB02', 'S023', '211', 'J006'),
('211810538', 'RB02', 'S023', '211', 'J006'),
('211810635', 'RB02', 'S023', '211', 'J006'),
('211810161', 'RB02', 'S023', '212', 'J003'),
('211810294', 'RB02', 'S023', '212', 'J006'),
('211810415', 'RB02', 'S023', '212', 'J006'),
('211810442', 'RB02', 'S023', '212', 'J006'),
('211810504', 'RB02', 'S023', '212', 'J006'),
('211810513', 'RB02', 'S023', '212', 'J006'),
('211810554', 'RB02', 'S023', '212', 'J004'),
('211810643', 'RB02', 'S023', '212', 'J006'),
('211810290', 'RB02', 'S023', '213', 'J006'),
('211810361', 'RB02', 'S023', '213', 'J006'),
('211810363', 'RB02', 'S023', '213', 'J006'),
('211810471', 'RB02', 'S023', '213', 'J006'),
('211810498', 'RB02', 'S023', '213', 'J006'),
('211810503', 'RB02', 'S023', '213', 'J004'),
('211810550', 'RB02', 'S023', '213', 'J003'),
('211810102', 'RB02', 'S023', '214', 'J006'),
('211810263', 'RB02', 'S023', '214', 'J006'),
('211810337', 'RB02', 'S023', '214', 'J006'),
('211810410', 'RB02', 'S023', '214', 'J006'),
('211810424', 'RB02', 'S023', '214', 'J006'),
('211810489', 'RB02', 'S023', '214', 'J003'),
('211810524', 'RB02', 'S023', '214', 'J006'),
('211810544', 'RB02', 'S023', '214', 'J004'),
('211810667', 'RB02', 'S023', '214', 'J006'),
('211810184', 'RB02', 'S023', '215', 'J003'),
('211810215', 'RB02', 'S023', '215', 'J006'),
('211810257', 'RB02', 'S023', '215', 'J006'),
('211810279', 'RB02', 'S023', '215', 'J006'),
('211810357', 'RB02', 'S023', '215', 'J006'),
('211810401', 'RB02', 'S023', '215', 'J006'),
('211810607', 'RB02', 'S023', '215', 'J004'),
('211810674', 'RB02', 'S023', '215', 'J006'),
('211810675', 'RB02', 'S023', '215', 'J006'),
('211810274', 'RB02', 'S023', '216', 'J006'),
('211810367', 'RB02', 'S023', '216', 'J006'),
('211810428', 'RB02', 'S023', '216', 'J006'),
('211810451', 'RB02', 'S023', '216', 'J006'),
('211810455', 'RB02', 'S023', '216', 'J006'),
('211810469', 'RB02', 'S023', '216', 'J004'),
('211810529', 'RB02', 'S023', '216', 'J006'),
('211810613', 'RB02', 'S023', '216', 'J003'),
('211810617', 'RB02', 'S023', '216', 'J006'),
('211810133', 'RB02', 'S023', '217', 'J006'),
('211810191', 'RB02', 'S023', '217', 'J006'),
('211810382', 'RB02', 'S023', '217', 'J006'),
('211810508', 'RB02', 'S023', '217', 'J003'),
('211810550', 'RB02', 'S023', '217', 'J006'),
('211810677', 'RB02', 'S023', '217', 'J004'),
('211810111', 'RB02', 'S032', '218', 'J006'),
('211810302', 'RB02', 'S032', '218', 'J006'),
('211810492', 'RB02', 'S032', '218', 'J003'),
('211810590', 'RB02', 'S032', '218', 'J004'),
('211810411', 'RB02', 'S025', '219', 'J006'),
('211810441', 'RB02', 'S025', '219', 'J006'),
('211810447', 'RB02', 'S025', '219', 'J006'),
('211810482', 'RB02', 'S025', '219', 'J006'),
('211810508', 'RB02', 'S025', '219', 'J006'),
('211810677', 'RB02', 'S025', '219', 'J006'),
('211810133', 'RB02', 'S026', '220', 'J006'),
('211810212', 'RB02', 'S026', '220', 'J006'),
('211810272', 'RB02', 'S026', '220', 'J006'),
('211810308', 'RB02', 'S026', '220', 'J006'),
('211810508', 'RB02', 'S026', '220', 'J006'),
('211810552', 'RB02', 'S026', '220', 'J006'),
('211810668', 'RB02', 'S026', '220', 'J006'),
('211810677', 'RB02', 'S026', '220', 'J006'),
('211810329', 'RB02', 'S024', '221', 'J006'),
('211810573', 'RB02', 'S024', '221', 'J006'),
('211810147', 'RB02', 'S026', '001', 'J004'),
('211810321', 'RB02', 'S025', '001', 'J004'),
('211810382', 'RB02', 'S026', '001', 'J003'),
('211810500', 'RB02', 'S025', '001', 'J003'),
('211810508', 'RB02', 'S023', '001', 'J003'),
('211810677', 'RB02', 'S023', '001', 'J004'),
('111810370', 'RB06', 'S023', '001', 'J004'),
('111810389', 'RB06', 'S023', '001', 'J003'),
('111710027', 'RB06', 'S023', '608', 'J006'),
('111710070', 'RB06', 'S023', '608', 'J006'),
('111810095', 'RB06', 'S023', '608', 'J003'),
('111810162', 'RB06', 'S023', '608', 'J006'),
('111810526', 'RB06', 'S023', '608', 'J006'),
('111810543', 'RB06', 'S023', '608', 'J004'),
('111810223', 'RB06', 'S023', '609', 'J003'),
('111810449', 'RB06', 'S023', '609', 'J006'),
('111810457', 'RB06', 'S023', '609', 'J006'),
('111810515', 'RB06', 'S023', '609', 'J004'),
('111810620', 'RB06', 'S023', '609', 'J006'),
('111810661', 'RB06', 'S023', '609', 'J006'),
('111810229', 'RB06', 'S023', '610', 'J006'),
('111810275', 'RB06', 'S023', '610', 'J006'),
('111810304', 'RB06', 'S023', '610', 'J006'),
('111810518', 'RB06', 'S023', '610', 'J004'),
('111810521', 'RB06', 'S023', '610', 'J003'),
('111810574', 'RB06', 'S023', '610', 'J006'),
('111810383', 'RB06', 'S023', '611', 'J006'),
('111810436', 'RB06', 'S023', '611', 'J006'),
('111810565', 'RB06', 'S023', '611', 'J006'),
('111810575', 'RB06', 'S023', '611', 'J003'),
('111810603', 'RB06', 'S023', '611', 'J004'),
('111810639', 'RB06', 'S023', '611', 'J006'),
('111810164', 'RB06', 'S023', '612', 'J006'),
('111810205', 'RB06', 'S023', '612', 'J006'),
('111810241', 'RB06', 'S023', '612', 'J003'),
('111810437', 'RB06', 'S023', '612', 'J006'),
('111810448', 'RB06', 'S023', '612', 'J006'),
('111810649', 'RB06', 'S023', '612', 'J004'),
('111709511', 'RB06', 'S023', '613', 'J006'),
('111810141', 'RB06', 'S023', '613', 'J006'),
('111810173', 'RB06', 'S023', '613', 'J004'),
('111810174', 'RB06', 'S023', '613', 'J003'),
('111810231', 'RB06', 'S023', '613', 'J006'),
('111810525', 'RB06', 'S023', '613', 'J006'),
('111810132', 'RB06', 'S023', '614', 'J006'),
('111810135', 'RB06', 'S023', '614', 'J006'),
('111810160', 'RB06', 'S023', '614', 'J004'),
('111810197', 'RB06', 'S023', '614', 'J003'),
('111810434', 'RB06', 'S023', '614', 'J006'),
('111810616', 'RB06', 'S023', '614', 'J006'),
('111810432', 'RB06', 'S025', '615', 'J006'),
('111810474', 'RB06', 'S025', '615', 'J006'),
('111810546', 'RB06', 'S025', '615', 'J006'),
('111810595', 'RB06', 'S025', '615', 'J006'),
('111810166', 'RB06', 'S026', '616', 'J006'),
('111810301', 'RB06', 'S026', '001', 'J004'),
('111810309', 'RB06', 'S026', '616', 'J006'),
('111810325', 'RB06', 'S026', '616', 'J006'),
('111810476', 'RB06', 'S026', '616', 'J006'),
('111810494', 'RB06', 'S026', '616', 'J006'),
('111810516', 'RB06', 'S026', '001', 'J003'),
('111810541', 'RB06', 'S026', '616', 'J006'),
('111810549', 'RB06', 'S026', '616', 'J006'),
('111810638', 'RB06', 'S026', '616', 'J006'),
('111810433', 'RB06', 'S029', '618', 'J003'),
('111810654', 'RB06', 'S029', '618', 'J006'),
('111810146', 'RB06', 'S032', '617', 'J006'),
('111810406', 'RB06', 'S032', '001', 'J003'),
('111810631', 'RB06', 'S032', '001', 'J004');

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

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `sikoko_kehadiran_total`  AS  select `a`.`id_peserta` AS `id_peserta`,`b`.`nama` AS `nama`,round(avg(`a`.`presentase_presensi`),2) AS `presensi` from ((`sikoko_absensi_rapat` `a` left join `sikoko_mahasiswa` `b` on(`b`.`nim` = `a`.`id_peserta`)) left join `sikoko_rapat` `c` on(`c`.`id_rapat` = `a`.`id_rapat`)) where `c`.`waktu_mulai` < current_timestamp() and octet_length(`a`.`id_peserta`) = 9 group by `a`.`id_peserta` ;

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
-- Indexes for table `sikoko_administrasi`
--
ALTER TABLE `sikoko_administrasi`
  ADD PRIMARY KEY (`id_administrasi`);

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
-- Indexes for table `sikoko_keys`
--
ALTER TABLE `sikoko_keys`
  ADD PRIMARY KEY (`id`);

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
  ADD PRIMARY KEY (`id_tim`,`id_mahasiswa`),
  ADD KEY `penilaian_mahasiswa_fk` (`id_mahasiswa`),
  ADD KEY `penilaian_dosen_fk` (`id_dosen`),
  ADD KEY `jab_lapangan_fk` (`id_jab_lapangan`);

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
-- Indexes for table `sikoko_surat`
--
ALTER TABLE `sikoko_surat`
  ADD PRIMARY KEY (`id_surat`),
  ADD KEY `id_surat` (`id_surat`) USING BTREE;

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
  ADD KEY `nim_pasca_fk` (`nim`),
  ADD KEY `risbid_pasca_fk` (`id_risbid`),
  ADD KEY `seksi_pasca_fk` (`id_seksi`),
  ADD KEY `subseksi_pasca_fk` (`id_subseksi`),
  ADD KEY `jab_pasca_fk` (`id_jab`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sikoko_keys`
--
ALTER TABLE `sikoko_keys`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `sikoko_knowledge_management`
--
ALTER TABLE `sikoko_knowledge_management`
  MODIFY `id_km` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_limits`
--
ALTER TABLE `sikoko_limits`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `sikoko_notula`
--
ALTER TABLE `sikoko_notula`
  MODIFY `id_notula` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_pengumuman`
--
ALTER TABLE `sikoko_pengumuman`
  MODIFY `id_pengumuman` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `sikoko_progress`
--
ALTER TABLE `sikoko_progress`
  MODIFY `id_task` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=610;

--
-- AUTO_INCREMENT for table `sikoko_surat`
--
ALTER TABLE `sikoko_surat`
  MODIFY `id_surat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

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
  ADD CONSTRAINT `jab_lapangan_fk` FOREIGN KEY (`id_jab_lapangan`) REFERENCES `sikoko_jabatan_lapangan` (`id_lap`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `penilaian_dosen_fk` FOREIGN KEY (`id_dosen`) REFERENCES `sikoko60`.`sikoko_dosen` (`nip`) ON DELETE CASCADE ON UPDATE CASCADE,
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
  ADD CONSTRAINT `id_koor_tim_fk` FOREIGN KEY (`id_koor_tim`) REFERENCES `sikoko_mahasiswa` (`nim`) ON UPDATE CASCADE;

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
