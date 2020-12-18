-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Waktu pembuatan: 03 Des 2020 pada 08.39
-- Versi server: 10.4.14-MariaDB
-- Versi PHP: 7.2.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_sig_rest`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_admin`
--

CREATE TABLE `tb_admin` (
  `admin_id` int(10) NOT NULL,
  `admin_username` varchar(255) DEFAULT NULL,
  `admin_password` varchar(255) DEFAULT NULL,
  `admin_nama` varchar(255) DEFAULT NULL,
  `admin_alamat` varchar(255) DEFAULT NULL,
  `admin_bidang` varchar(255) DEFAULT NULL,
  `admin_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_admin`
--

INSERT INTO `tb_admin` (`admin_id`, `admin_username`, `admin_password`, `admin_nama`, `admin_alamat`, `admin_bidang`, `admin_foto`) VALUES
(2, 'username', 'username', 'ab', 'ab', '1', 'download1.jpeg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_bidang`
--

CREATE TABLE `tb_bidang` (
  `bidang_id` int(3) NOT NULL,
  `bidang_nama` varchar(20) DEFAULT NULL,
  `bidang_role` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_bidang`
--

INSERT INTO `tb_bidang` (`bidang_id`, `bidang_nama`, `bidang_role`) VALUES
(1, 'Inmas', 1),
(2, 'Bimas islam', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_jenis`
--

CREATE TABLE `tb_jenis` (
  `jenis_id` int(10) NOT NULL,
  `jenis_nama` varchar(20) DEFAULT NULL,
  `mapicon` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_jenis`
--

INSERT INTO `tb_jenis` (`jenis_id`, `jenis_nama`, `mapicon`) VALUES
(1, 'Masjid', 'masjid.png'),
(2, 'Pura', 'pura.png'),
(3, 'Gereja', 'gereja.png'),
(4, 'Vihara', 'vihara.png'),
(5, 'Klenteng', 'klenteng.png');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kabupaten`
--

CREATE TABLE `tb_kabupaten` (
  `kab_id` int(3) NOT NULL,
  `kab_nama` varchar(20) DEFAULT NULL,
  `kab_latitude` varchar(255) DEFAULT NULL,
  `kab_longitude` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kabupaten`
--

INSERT INTO `tb_kabupaten` (`kab_id`, `kab_nama`, `kab_latitude`, `kab_longitude`) VALUES
(1, 'Bima', '-8.464077', '118.745660'),
(2, 'Dompu', '-8.516701', '118.270444'),
(3, 'Lombok Barat', '-8.655397', '116.136263'),
(4, 'Lombok Tengah', '-8.725635', '116.295111'),
(5, 'Lombok Timur', '-8.569771', '116.539796'),
(6, 'Lombok Utara', '-8.312794', '116.266500'),
(7, 'Sumbawa', '-8.769387', '117.519818'),
(8, 'Sumbawa Barat', '-8.746402', '116.855213'),
(9, 'Kota Bima', '-8.464841', '118.745402'),
(10, 'Kota Mataram', '-8.577669', '116.100659');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `kec_id` int(3) NOT NULL,
  `kec_nama` varchar(20) NOT NULL,
  `id_kab` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`kec_id`, `kec_nama`, `id_kab`) VALUES
(1, 'Ampenan', 10),
(2, 'Cakranegara', 10),
(3, 'Mataram', 10),
(4, 'Sandubaya', 10),
(5, 'Sekarbela', 10),
(6, 'Selaparang', 10),
(7, 'Asakota', 9),
(8, 'Mpunda', 9),
(9, 'Raba', 9),
(10, 'Rasanae Barat', 9),
(11, 'Rasanae Timur', 9),
(12, 'Jereweh', 8),
(13, 'Taliwang', 8),
(14, 'Seteluk', 8),
(15, 'Sekongkang', 8),
(16, 'Brang Rea', 8),
(17, 'Poto Tano', 8),
(18, 'Brang Ene', 8),
(19, 'Maluk', 8),
(20, 'Alas', 7),
(21, 'Alas Barat', 7),
(22, 'Batu Lanteh', 7),
(23, 'Buer', 7),
(24, 'Empang', 7),
(25, 'Labangka', 7),
(26, 'Labuhan Badas', 7),
(27, 'Luntung', 7),
(28, 'Lape', 7),
(29, 'Lenangguar', 7),
(30, 'Lunyuk', 7),
(31, 'Lopok', 7),
(32, 'Maronge', 7),
(33, 'Moyo Hilir', 7),
(34, 'Moyo Hulu', 7),
(35, 'Moyo Utara', 7),
(36, 'Orong Telu', 7),
(37, 'Plampang', 7),
(38, 'Rhee', 7),
(39, 'Ropang', 7),
(40, 'Sumbawa', 7),
(41, 'Unter Iwes', 7),
(42, 'Utan', 7),
(43, 'Tarano', 7),
(44, 'Bayan', 6),
(45, 'Gangga', 6),
(46, 'Kayangan', 6),
(47, 'Pemenang', 6),
(48, 'Tanjung', 6),
(49, 'Aikmel', 5),
(50, 'Jerowaru', 5),
(51, 'Keruak', 5),
(52, 'Labuhan Haji', 5),
(53, 'Masbagik', 5),
(54, 'Montong Gading', 5),
(55, 'Pringgabaya', 5),
(56, 'Pringgasela', 5),
(57, 'Sakra Barat', 5),
(58, 'Sakra Timur', 5),
(59, 'Sakra', 5),
(60, 'Sambelia', 5),
(61, 'Selong', 5),
(62, 'Sembalun', 5),
(63, 'Sikur', 5),
(64, 'Suela', 5),
(65, 'Sukamulia', 5),
(66, 'Suralaga', 5),
(67, 'Terara', 5),
(68, 'Wanasaba', 5),
(69, 'Batukliang', 4),
(70, 'Batukliang Utara', 4),
(71, 'Janapria', 4),
(72, 'Jonggat', 4),
(73, 'Kopang', 4),
(74, 'Praya', 4),
(75, 'Praya Barat', 4),
(76, 'Praya Barat Daya', 4),
(77, 'Praya Tengah', 4),
(78, 'Praya Timur', 4),
(79, 'Pringgarata', 4),
(80, 'Pujut', 4),
(81, 'Batu Layar', 3),
(82, 'Gerung', 3),
(83, 'Gunung Sari', 3),
(84, 'Kediri', 3),
(85, 'Kuripan', 3),
(86, 'Labu Api', 3),
(87, 'Lembar', 3),
(88, 'Lingsar', 3),
(89, 'Narmada', 3),
(90, 'Sekotong', 3),
(91, 'Dompu', 2),
(92, 'Huu', 2),
(93, 'Kempo', 2),
(94, 'Kilo', 2),
(95, 'Manggelewa', 2),
(96, 'Pajo', 2),
(97, 'Pekat', 2),
(98, 'Woja', 2),
(99, 'Ambalawi', 1),
(100, 'Belo', 1),
(101, 'Bolo', 1),
(102, 'Donggo', 1),
(103, 'Lambitu', 1),
(104, 'Lambu', 1),
(105, 'Langgudu', 1),
(106, 'Mada Pangga', 1),
(107, 'Monta', 1),
(108, 'Palibelo', 1),
(109, 'Parado', 1),
(110, 'Sanggar', 1),
(111, 'Sape', 1),
(112, 'Soromandi', 1),
(113, 'Tambora', 1),
(114, 'Wawo', 1),
(115, 'Wera', 1),
(116, 'Woha', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_ti`
--

CREATE TABLE `tb_ti` (
  `ti_id` int(15) NOT NULL,
  `ti_jenis` varchar(255) DEFAULT NULL,
  `ti_tipologi` varchar(255) DEFAULT NULL,
  `ti_nama` varchar(255) DEFAULT NULL,
  `ti_alamat` varchar(255) DEFAULT NULL,
  `ti_kabupaten` varchar(255) DEFAULT NULL,
  `ti_kecamatan` varchar(255) DEFAULT NULL,
  `ti_luas_tanah` varchar(255) DEFAULT NULL,
  `ti_status_tanah` varchar(255) DEFAULT NULL,
  `ti_luas_bangunan` varchar(255) DEFAULT NULL,
  `ti_tahun_berdiri` varchar(255) DEFAULT NULL,
  `ti_jamaah` varchar(255) DEFAULT NULL,
  `ti_imam` int(10) DEFAULT NULL,
  `ti_khatib` int(10) DEFAULT NULL,
  `ti_remaja` int(10) DEFAULT NULL,
  `ti_ketua` varchar(255) DEFAULT NULL,
  `ti_keterangan` varchar(100) DEFAULT NULL,
  `ti_binaan_majelis` varchar(255) DEFAULT NULL,
  `ti_kondisi` varchar(255) DEFAULT NULL,
  `ti_telepon` varchar(255) DEFAULT NULL,
  `latitude` varchar(255) DEFAULT NULL,
  `longitude` varchar(255) DEFAULT NULL,
  `ti_foto` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_ti`
--

INSERT INTO `tb_ti` (`ti_id`, `ti_jenis`, `ti_tipologi`, `ti_nama`, `ti_alamat`, `ti_kabupaten`, `ti_kecamatan`, `ti_luas_tanah`, `ti_status_tanah`, `ti_luas_bangunan`, `ti_tahun_berdiri`, `ti_jamaah`, `ti_imam`, `ti_khatib`, `ti_remaja`, `ti_ketua`, `ti_keterangan`, `ti_binaan_majelis`, `ti_kondisi`, `ti_telepon`, `latitude`, `longitude`, `ti_foto`) VALUES
(372, '1', 'Masjid Raya', 'Hubbul Wathan Islamic Centre', 'Jln. Udayana No. 1 Kota Mataram', '10', '6', '10.000 m2', 'Wakaf', '1.500 m2', '2014', '150 - 200', 4, 10, 0, NULL, NULL, NULL, NULL, NULL, '-8.580181', '116.100741', 'masjid.png'),
(373, '1', 'Masjid Jami', 'Masjid Baiturrahman', 'Kapitan Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1992', '50 - 100', 4, 4, 25, NULL, NULL, NULL, NULL, NULL, '-8.569207', '116.094195', 'masjid.png'),
(374, '1', 'Masjid Jami', 'Masjid Al-Falah', 'Gatep Permai Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1992', '50 - 100', 3, 3, 20, NULL, NULL, NULL, NULL, NULL, '-8.584436', '116.080499', 'masjid.png'),
(375, '1', 'Masjid Jami', 'Masjid Al-Furqon', 'Taman Sari Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1952', '50 - 100', 3, 4, 25, NULL, NULL, NULL, NULL, NULL, '-8.582908', '116.083887', 'masjid.png'),
(376, '1', 'Masjid Jami', 'Masjid Khairul Huda', 'Irigasi Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1979', '50 - 100', 4, 4, 20, NULL, NULL, NULL, NULL, NULL, '-8.587559', '116.0827', 'masjid.png'),
(377, '1', 'Masjid Jami', 'Masjid Baitul Salam', 'Taman Gajah Mada Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1966', '50 - 100', 3, 3, 25, NULL, NULL, NULL, NULL, NULL, '-8.578163', '116.084588', 'masjid.png'),
(378, '1', 'Masjid Jami', 'Masjid Baitul Hikmah', 'Taman Gajah Mada Ampenan', '10', '1', '-', 'Wakaf', '40 m2', '1966', '50 - 100', 4, 4, 20, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'masjid.png'),
(379, '1', 'Masjid Jami', 'Masjid Hayatul Abyan', 'Pejeruk Abyan Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1986', '50 - 100', 3, 4, 20, NULL, NULL, NULL, NULL, NULL, '-8.57468', '116.08565', 'masjid.png'),
(380, '1', 'Masjid Jami', 'Masjid Nurul Ikhlas', 'Pejeruk Bangket Ampenan', '10', '1', '-', 'Wakaf', '30 m2', '1961', '50 - 100', 4, 4, 20, NULL, NULL, NULL, NULL, NULL, '-8.572563', '116.089749', 'masjid.png'),
(381, '2', NULL, 'Pura Prajapati', 'Mataram Selatan', '10', '3', '89', NULL, '13', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.587643', '116.107421', 'pura.jpg'),
(382, '2', NULL, 'Pura Pancaka', 'Jalan Pramuka', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.584885', '116.10158', 'pura.jpg'),
(383, '2', NULL, 'Pura Dalem Siwa Pranata', 'Kr. Medain Selatan', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pura.jpg'),
(384, '2', NULL, 'Pura Muter Majeluk', 'Majeluk Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.580774', '116.117715', 'pura.jpg'),
(385, '2', NULL, 'Pura Menataran Kr. Monjok', 'Kr. Monjok Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.584688', '116.114016', 'pura.jpg'),
(386, '2', NULL, 'Pura Lingkuk Buni', 'Gomong Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.58692', '116.098158', 'pura.jpg'),
(387, '2', NULL, 'Pura Penataran', 'Seraya Pagesangan', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.595009', '116.101198', 'pura.jpg'),
(388, '2', NULL, 'Pura Pemaksan', 'Kr. Timbal Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pura.jpg'),
(389, '2', NULL, 'Pura Penataran Mumbul', 'Mumbul Pagesangan', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, '-8.594995', '116.101163', 'pura.jpg'),
(390, '2', NULL, 'Pura Pemaksan Pajang', 'Pajang Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'pura.jpg'),
(391, '3', NULL, 'GBI Glow Mataram', 'Jl. Sriwijaya No. 83 Mataram', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Wayan Pasek', 'PGLII', NULL, NULL, NULL, '-8.593997', '116.123841', 'gereja.jpg'),
(392, '3', NULL, 'GBI Rock Ministry Mataram', 'Jl. IGK Jelantik Gosa 23 Gebang Mataram-NTB', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Yosua Gunawan', 'PGI/PGLII', NULL, NULL, NULL, '-8.597439', '116.124517', 'gereja.jpg'),
(393, '3', NULL, 'GKII Bethel Cakranegara', 'Jl. Tumpang Sari 43 Cakranegara', '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Idris, S. Th', 'PGI/PGLII', NULL, NULL, NULL, '-8.59035', '116.138978', 'gereja.jpg'),
(394, '3', NULL, 'GKII Kalvari Ampenan', 'Jl. Panjitilar No. 211 Ampenan', '10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Marga', 'PGI/PGLII', NULL, NULL, NULL, '-8.598188', '116.085642', 'gereja.jpg'),
(395, '3', NULL, 'GKII Rhema Cakranegara', 'Jl. Tumpang Sari No. 43a Cakranegara', '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Jafar Silasko', 'PGI/PGLII', NULL, NULL, NULL, '-8.590227', '116.13891', 'gereja.jpg'),
(396, '3', NULL, 'GKPB \'Masa Depan Cerah\' Mataram', 'Jl. Brawijaya No. 111 Sweta', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Yohanes Sugiartha', 'PGLII', NULL, NULL, NULL, NULL, NULL, 'gereja.jpg'),
(397, '3', NULL, 'GKT Gloria Cakranegara', 'Jl. Subak II No. 15 Cakranegara', '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Linus', 'PGI ', NULL, NULL, NULL, '-8.589002', '116.124757', 'gereja.jpg'),
(398, '3', NULL, 'GKT Jemaat Ampenan', 'JL Majapahit No.47', '10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Suhartoyo', 'PGI', NULL, NULL, NULL, '-8.581645', '116.084545', 'gereja.jpg'),
(399, '3', NULL, 'GMAHK \'Isa Almasih\' Ampenan', 'Jl. Yos Sudarso No. 16 Ampenan', '10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Rudolf Tambunan', 'GMAHK', NULL, NULL, NULL, '-8.574941', '116.079789', 'gereja.jpg'),
(400, '3', NULL, 'GP Anugerah Ampenan', 'Jl. Yos Sudarso No. 139 Ampenan', '10', '1', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'Pdt. Joner S. Simanjuntak', 'PGLII', NULL, NULL, NULL, '-8.57074', '116.076372', 'gereja.jpg'),
(410, '4', NULL, 'DHAMMA SUSENA', 'JL. AMERTAPURA NO.12 CAKRANEGARA, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'HENDI KANG PABOWO', NULL, 'MBI', NULL, NULL, '-8.589219', '116.134982', 'vihara.png'),
(411, '4', NULL, 'AVALOKITESVARA', 'JL. A.YANI NO.9 SWETA, CAKRANEGARA, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'RONNY ABDIKESUMA, SE', NULL, 'MBI', NULL, NULL, '-8.587989', '116.147509', 'vihara.png'),
(412, '4', NULL, 'PRAJNA DHARMA MAITREYA', 'JL. YOS SUDARSO AMPENAN, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'WIDI WINARTO', NULL, 'MAPANBUMI', NULL, NULL, '-8.570685', '116.075927', 'vihara.png'),
(413, '4', NULL, 'SANATHA DHARMA MAITREYA', 'JL. RAJAWALI II/16 TELP.0370-632941, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'PDT. SELAMET', NULL, 'MAPANBUMI', NULL, NULL, '-8.583574', '116.127997', 'vihara.png'),
(414, '4', NULL, 'VIMALA KIRTI', 'JL. LALU MESIR CAKRANEGARA, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'I WAYAN SIANTO', NULL, 'BDI', NULL, NULL, '-8.601601', '116.132168', 'vihara.png'),
(415, '4', NULL, 'BODHI DHARMA', 'JL. YOS SUDARSO AMPENAN, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'S. WIDJANARKO', NULL, 'TRIDHARMA', NULL, NULL, '-8.570527', '116.073507', 'vihara.png'),
(416, '4', NULL, 'KONG TEK', 'Jl. KENARI CAKRANEGARA, MATARAM', '10', '3', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'GO PING SIOE', NULL, 'MABIKTI', NULL, NULL, NULL, NULL, 'vihara.png'),
(417, '4', NULL, 'WISMA STI MATARAM', 'JL. TUMPANG SARI CAKRANEGARA', '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'VICTOR WIBOWO L.', NULL, 'MAGABUDHI', NULL, NULL, '-8.592419', '116.135038', 'vihara.png'),
(418, '4', NULL, 'CETYA DHARMA CAKRA', 'JL. TUMPANG SARI CAKRANEGARA', '10', '2', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 'EDI DHARMA', NULL, 'MAGABUDHI', NULL, NULL, '-8.590009', '116.1340935', 'vihara.png');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indeks untuk tabel `tb_bidang`
--
ALTER TABLE `tb_bidang`
  ADD PRIMARY KEY (`bidang_id`);

--
-- Indeks untuk tabel `tb_jenis`
--
ALTER TABLE `tb_jenis`
  ADD PRIMARY KEY (`jenis_id`);

--
-- Indeks untuk tabel `tb_kabupaten`
--
ALTER TABLE `tb_kabupaten`
  ADD PRIMARY KEY (`kab_id`);

--
-- Indeks untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`kec_id`);

--
-- Indeks untuk tabel `tb_ti`
--
ALTER TABLE `tb_ti`
  ADD PRIMARY KEY (`ti_id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_admin`
--
ALTER TABLE `tb_admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT untuk tabel `tb_bidang`
--
ALTER TABLE `tb_bidang`
  MODIFY `bidang_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `kec_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT untuk tabel `tb_ti`
--
ALTER TABLE `tb_ti`
  MODIFY `ti_id` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=428;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
