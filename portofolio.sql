-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 16, 2023 at 07:11 PM
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
-- Database: `portofolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(4) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `email` varchar(75) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `pesan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `nama`, `email`, `judul`, `pesan`) VALUES
(4, 'tes', 'admin@gmail.com', 'tes', 'tes');

-- --------------------------------------------------------

--
-- Table structure for table `data_diri`
--

CREATE TABLE `data_diri` (
  `id` int(11) NOT NULL,
  `nama` varchar(75) NOT NULL,
  `divisi` varchar(75) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `no_telp` varchar(75) NOT NULL,
  `domisili` varchar(75) NOT NULL,
  `usia` int(4) NOT NULL,
  `gelar` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gambar` varchar(255) NOT NULL,
  `jurusan` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `data_diri`
--

INSERT INTO `data_diri` (`id`, `nama`, `divisi`, `tanggal_lahir`, `no_telp`, `domisili`, `usia`, `gelar`, `email`, `gambar`, `jurusan`, `deskripsi`) VALUES
(1, 'Siti Mariam', 'UI/UX Designer & Frontend Developer', '2003-03-25', '+62-821-9955-9093', 'Tangerang Selatan', 20, 'Sarjana Komputer', 'sitimariam7757@gmail.com', 'mariam.jpg', 'Informatika', 'Saya merupakan mahasiswa aktif Program Studi Informatika Universitas Pembangunan Jaya Semester 5 yang memiliki minat dalam bidang UI/UX Desain dan Frontend Developer, saya memiliki kemampuan dalam pengembangan website dan aplikasi dengan fokus pada tampilan dan interaksi pengguna. Saya juga aktif dalam bidang non-akademik seperti aktif dalam kepanitian dan organisasi yang ada di lingkungan kampus.');

-- --------------------------------------------------------

--
-- Table structure for table `pendidikan`
--

CREATE TABLE `pendidikan` (
  `id` int(20) NOT NULL,
  `nama_instansi` varchar(75) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `tahun_keluar` year(4) NOT NULL,
  `jurusan` varchar(75) NOT NULL,
  `deskripsi` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pendidikan`
--

INSERT INTO `pendidikan` (`id`, `nama_instansi`, `tahun_masuk`, `tahun_keluar`, `jurusan`, `deskripsi`) VALUES
(1, 'SMP Negri 2 Tangerang Selatan', '2017', '2019', 'IPA', 'Saya menempuh pendidikan Sekolah Menengah Pertama (SMP) di SMPN 2 Tangsel, Semasa sekolah saya aktif dalam kegiatan ekstrakulikuler yaitu saman (tari aceh).'),
(2, 'SMA Dharma Karya UT', '2019', '2021', 'IPA', 'Saya menempuh pendidikan Sekolah Menengah Akhir (SMA) di SMA Dharma Karya UT, Semasa sekolah saya aktif dalam kegiatan di lingkungan sekolah, saya pernah mengikuti kegiatan OSIS dan ekstrakulikuler Saman.'),
(3, 'Universitas Pembangunan Jaya', '2021', '2024', 'Informatika', 'Pendidikan tinggi adalah bab yang menarik dan mendalam dalam perjalanan akademis saya. Saya memulai perjalanan kuliah saya di Universitas Pembangunan Jaya, tempat dimana saya meresapi pengetahuan dalam Informatika. Selama masa ini, saya terlibat secara aktif dalam pelajaran dan kegiatan di luar kurikulum untuk memperkaya pengalaman saya. Perguruan tinggi memberi saya kesempatan untuk mengeksplorasi minat khusus saya dalam bidang apapun dan merancang landasan yang solid untuk karier masa depan saya.\r\n\r\nSelama kuliah, saya tidak hanya fokus pada aspek akademis, tetapi juga mencari kesempatan untuk terlibat dalam proyek-proyek penelitian dan aktivitas ekstrakurikuler yang memperluas wawasan saya. ');

-- --------------------------------------------------------

--
-- Table structure for table `pengalaman`
--

CREATE TABLE `pengalaman` (
  `id` int(20) NOT NULL,
  `tahun_masuk` year(4) NOT NULL,
  `tahun_keluar` year(4) NOT NULL,
  `divisi` varchar(75) NOT NULL,
  `deskripsi1` text NOT NULL,
  `deskripsi2` text NOT NULL,
  `deskripsi3` text NOT NULL,
  `deskripsi4` text NOT NULL,
  `nama_instansi` varchar(75) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pengalaman`
--

INSERT INTO `pengalaman` (`id`, `tahun_masuk`, `tahun_keluar`, `divisi`, `deskripsi1`, `deskripsi2`, `deskripsi3`, `deskripsi4`, `nama_instansi`) VALUES
(1, '2021', '2022', 'OSIS', 'Anggota Acara | saya pernah menjadi anggota divisi acara dalam kegiatan pentas seni.', 'Kepala Divisi Olahraga/Non-Akademik | saya diperiode pertama pernah memegang jabatan tersebut.', 'Sekretaris | Diperiode selanjutnya saya mendapatkan jabatan sebagai sekretais di OSIS.', 'Kepala Divisi Hubungan Masyarakat (HUMAS) | Pada kegiatan festival sekolah saya menempati jabatan sebagai kepala divisi humas.', 'SMA Dharma Karya UT'),
(2, '2021', '2025', 'Student Ambassador', 'Event | Saya terlibat aktif dalam mempromosikan kampus khususnya tim Event, ketika kampus akan melaksanakan suatu event tentunya saya selalu terlibat dalam kegiatan tersebut.', 'Sosial Media Marketing | Saya terlibat dalam mengaktifkan sosial media kampus.', 'Field Internal | Pada kegiatan ini saya aktif terlibat untuk mempromosikan kampus UPJ ke sekolah-sekolah SMA/SMK di JABODETABEK.', 'Master of Ceremony | Saya terlibat dalam komunisas MC di kampus.', 'Universitas Pembangunan Jaya'),
(3, '2022', '2023', 'Himpunan Mahasiswa Informatika (HIMAFORKA)', 'Kepala Divisi Humas | Menghubngkan antara himpunan lain dengan himpunan informatika, serta menghadiri delegasi dalam setiap kegiatan.', 'Master of Ceremony | Dalam kegiatan Prodi Gathering (penyambutan mahasiswa baru infromatika tahun 2022) ', 'Anggota Acara | Terlibat dalam kepanitiaan Sumpah Pemuda.', 'Anggota Humas | Terlibat dalam kepanitiaan ForkaFest (Informatika Festival) 2022', '');

-- --------------------------------------------------------

--
-- Table structure for table `project`
--

CREATE TABLE `project` (
  `id` int(3) NOT NULL,
  `nama_project` varchar(50) NOT NULL,
  `gambar_project` varchar(255) NOT NULL,
  `deskripsi_project` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `project`
--

INSERT INTO `project` (`id`, `nama_project`, `gambar_project`, `deskripsi_project`) VALUES
(1, 'Project Pemrograman Berorientasi Objek', 'pbo.jpg', 'To'),
(2, 'Project Rekayasa Perangkat Lunak', 'rpl.jpg', 'text'),
(3, 'Project Cek CV ATS', 'cv.jpg\r\n', 'test');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `data_diri`
--
ALTER TABLE `data_diri`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pendidikan`
--
ALTER TABLE `pendidikan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pengalaman`
--
ALTER TABLE `pengalaman`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `data_diri`
--
ALTER TABLE `data_diri`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `pendidikan`
--
ALTER TABLE `pendidikan`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `pengalaman`
--
ALTER TABLE `pengalaman`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `project`
--
ALTER TABLE `project`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
