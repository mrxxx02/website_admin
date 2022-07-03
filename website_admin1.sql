-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 03 Jul 2022 pada 18.16
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `website_admin1`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`) VALUES
(1, 'ryanprayyy', '7f95b733f4210c71482904eb422143f8');

-- --------------------------------------------------------

--
-- Struktur dari tabel `halaman`
--

CREATE TABLE `halaman` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `kutipan` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `halaman`
--

INSERT INTO `halaman` (`id`, `judul`, `kutipan`, `isi`, `tgl_isi`) VALUES
(8, 'HOPE FLAKES', 'Band Pop Punk From Medan', '<p><img src=\"../gambar/58a2fc6ed39fd083f55d4182bf88826d.jpg\" style=\"width: 696px;\"></p><p>\"HOPE FLAKES\" Merupakan band Pop Punk Indonesia yang berasal dari Medan. Terbentuk pada 10 September 2021 oleh Ryanpray &amp; Dibswoden.&nbsp;<br></p>', '2022-07-03 16:14:05'),
(9, 'Berkembangnya Band Local Medan', '#makepoppunkgreatagain', '<p><img src=\"../gambar/7ef605fc8dba5425d6965fbd4c8fbe1f.jpg\" style=\"width: 559px;\">Hope Flakes sudah memiliki 1 EP (Mini Album) yang terdiri dari 2 lagu, yang berjudul \"Tak Tentu Arah\" &amp; \"Tawa Berakhir Duka\". Kedua lagu tersebut memiliki nuansa percintaan anak remaja yang memiliki pasang surut dalam hubungan, dan berharap bisa memotivasi anak - anak remaja sekarang untuk bisa membuat karya lainnya juga.</p><p><span style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem;\">Dengan terbentuknya Hope Flakes dan beberapa band local lainnya membuat beberapa event organizer juga semangat untuk mengembalikan event konser band seperti dulu, yang sebagaimana sudah 2 tahun tidak berjalan karena adanya COVID-19.</span><br></p>', '2022-07-03 15:20:56');

-- --------------------------------------------------------

--
-- Struktur dari tabel `info`
--

CREATE TABLE `info` (
  `id` int(11) NOT NULL,
  `judul` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `info`
--

INSERT INTO `info` (`id`, `judul`, `isi`, `tgl_isi`) VALUES
(1, 'House Of Hope Flakes', '<p><br></p>', '2022-07-03 15:38:28'),
(2, 'About', '<p>For more information please check the Contact Person</p>', '2022-07-03 15:38:09'),
(3, 'Contact Person', '<p><span style=\"font-size: 18px;\">H</span>P / WA : </p><p><b>+62 882-6480-3873\r\n</b></p><p>\r\nGmail : <b>hopeflakes1009@gmail.com</b></p><p></p>', '2022-07-03 15:41:14'),
(4, 'Social Media', '<p><b>Youtube </b>:<b> </b>Hope Flakes (<a href=\"https://www.youtube.com/channel/UCSxtw7XYRK8TCaVyb3Zmi6g/featured\" style=\"font-family: var(--bs-font-sans-serif); font-size: 1rem;\">Hope Flakes - YouTube</a>)</p><p><b>Instagram</b> : @HOPEFLAKES.ID</p>', '2022-07-03 15:22:34');

-- --------------------------------------------------------

--
-- Struktur dari tabel `members`
--

CREATE TABLE `members` (
  `id` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `password` text NOT NULL,
  `status` text NOT NULL,
  `token_ganti_password` text DEFAULT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `members`
--

INSERT INTO `members` (`id`, `email`, `nama_lengkap`, `password`, `status`, `token_ganti_password`, `tgl_isi`) VALUES
(2, 'ryanprayogi@gmail.com', 'Muhammad Ryan Prayogi', 'ac43724f16e9241d990427ab7c8f4228', '1', '', '2022-06-23 00:00:58');

-- --------------------------------------------------------

--
-- Struktur dari tabel `partners`
--

CREATE TABLE `partners` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `partners`
--

INSERT INTO `partners` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(3, 'AWTS Punk', 'partners_1656862399_awts.jpg', '<p>AWTS (<span style=\"background-color: rgb(250, 250, 250); color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; font-size: 1rem;\">Another Way To Survive) Band Pop Punk Medan</span></p>', '2022-07-03 15:33:19'),
(4, 'Bad Culture', 'partners_1656862232_bad culture.jpg', '<p>Band Rock &amp; Roll from Medan</p>', '2022-07-03 15:30:33'),
(5, 'Snot Sound', 'partners_1656862114_snotsound.jpg', '<p><span style=\"color: rgb(38, 38, 38); font-family: -apple-system, BlinkMacSystemFont, &quot;Segoe UI&quot;, Roboto, Helvetica, Arial, sans-serif; background-color: rgb(250, 250, 250);\">Music Performer Management&nbsp;</span><br></p>', '2022-07-03 15:28:34'),
(7, 'Youth Not Wasted', 'partners_1656861984_ynw.jpg', '<p>Band Hardcore/Pop Punk</p>', '2022-07-03 15:26:24');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tutors`
--

CREATE TABLE `tutors` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` varchar(255) NOT NULL,
  `isi` text NOT NULL,
  `tgl_isi` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tutors`
--

INSERT INTO `tutors` (`id`, `nama`, `foto`, `isi`, `tgl_isi`) VALUES
(4, 'Rayyanza', 'tutors_1656860476_rayyan.jpg', '<p>Rayyan Azfa atau biasa disebut \"Rayyanza\". Merupakan personil baru di Hope Flakes yang memiliki kedudukan sebagai vokalis dan gitaris</p>', '2022-07-03 15:01:16'),
(5, 'Dibswoden', 'tutors_1656863528_adibb.jpeg', 'Muhammad Al Adib atau biasa dipanggil Adib. Lahir di Medan pada tanggal 7 Desember 2001. Merupakan salah satu personil band Hope Flakes yang berposisi di gitaris  ', '2022-07-03 15:52:08'),
(6, 'Ryanprayy', 'tutors_1656863600_ryann.jpg', '<p>Muhammad Ryan Prayogi atau biasa dipanggil ryanprayy. Lahir di Medan pada tanggal 29 Juli 2002. Memiliki kedudukan sebagai vokalis dan bassis di Hope Flakes</p>', '2022-07-03 15:53:20');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `halaman`
--
ALTER TABLE `halaman`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `members`
--
ALTER TABLE `members`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `partners`
--
ALTER TABLE `partners`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tutors`
--
ALTER TABLE `tutors`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT untuk tabel `halaman`
--
ALTER TABLE `halaman`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `info`
--
ALTER TABLE `info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT untuk tabel `members`
--
ALTER TABLE `members`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT untuk tabel `partners`
--
ALTER TABLE `partners`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT untuk tabel `tutors`
--
ALTER TABLE `tutors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
