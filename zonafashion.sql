-- phpMyAdmin SQL Dump
-- version 3.4.5
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Waktu pembuatan: 01. Januari 2018 jam 23:00
-- Versi Server: 5.5.16
-- Versi PHP: 5.3.8

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `zonafashion`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(10) NOT NULL,
  `password` varchar(10) NOT NULL,
  `nama` varchar(10) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data untuk tabel `admin`
--

INSERT INTO `admin` (`id`, `username`, `password`, `nama`) VALUES
(1, 'admin', 'admin', 'Admin ZF');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kabupaten`
--

CREATE TABLE IF NOT EXISTS `kabupaten` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kabupaten` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Struktur dari tabel `katalog`
--

CREATE TABLE IF NOT EXISTS `katalog` (
  `id_katalog` int(11) NOT NULL AUTO_INCREMENT,
  `nama_katalog` varchar(10) NOT NULL,
  PRIMARY KEY (`id_katalog`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data untuk tabel `katalog`
--

INSERT INTO `katalog` (`id_katalog`, `nama_katalog`) VALUES
(13, 'jaket'),
(14, 'sepatu'),
(15, 'kaos'),
(16, 'jam tangan'),
(17, 'celana'),
(18, 'topi'),
(19, 'Gadged');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelompok`
--

CREATE TABLE IF NOT EXISTS `kelompok` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data untuk tabel `kelompok`
--

INSERT INTO `kelompok` (`id`, `nama`) VALUES
(1, 'Elektronik & Gadged'),
(2, 'Fashion'),
(3, 'Kids'),
(4, 'Home & Furniture'),
(5, 'Sport'),
(6, 'Grocery Store'),
(7, 'Photo,Gift & Ofice'),
(8, 'Health & Beauty'),
(9, 'Automotive'),
(10, 'Book,Music & Movies');

-- --------------------------------------------------------

--
-- Struktur dari tabel `konfirmasi`
--

CREATE TABLE IF NOT EXISTS `konfirmasi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kode_pembelian` varchar(15) NOT NULL,
  `nama_bank` varchar(10) NOT NULL,
  `tgl` date NOT NULL,
  `pesan` text NOT NULL,
  `gambar` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `konfirmasi`
--

INSERT INTO `konfirmasi` (`id`, `kode_pembelian`, `nama_bank`, `tgl`, `pesan`, `gambar`) VALUES
(1, '347', 'BCA', '2016-11-29', 'admin/gambar/hider.jpg', 'Saya Sudah Ko'),
(2, '347', 'BRI', '2016-11-29', 'admin/gambar/hider.jpg', 'ND'),
(3, '347', 'BRI', '2016-11-29', 'sjsjs', 'admin/gambar/hider.jpg'),
(4, '347', 'BRI', '2016-11-29', 'sjsjs', 'admin/gambar/hider.jpg'),
(5, '347', 'BRI', '2016-11-29', 'sjsjs', 'admin/gambar/hider.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `pembeli`
--

CREATE TABLE IF NOT EXISTS `pembeli` (
  `id_pembeli` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `nama_lengkap` varchar(100) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(50) NOT NULL,
  `alamat` varchar(200) NOT NULL,
  `provinsi` varchar(50) NOT NULL,
  `kabupaten` varchar(50) NOT NULL,
  `kecamatan` varchar(50) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `no_telp` varchar(16) NOT NULL,
  `estimasi` int(11) NOT NULL,
  PRIMARY KEY (`id_pembeli`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data untuk tabel `pembeli`
--

INSERT INTO `pembeli` (`id_pembeli`, `username`, `nama_lengkap`, `email`, `password`, `alamat`, `provinsi`, `kabupaten`, `kecamatan`, `kode_pos`, `no_telp`, `estimasi`) VALUES
(1, 'afiq', '', '', '1234', 'jl jati baron nganjuk jawa timur', 'jawa timur', 'nganjuk', 'baron', '', '', 19000),
(2, 'bagus_fever', 'Bagus Dwiky Wicaksono', 'bagusbieber1922@gmail.com', 'bagusfever', 'Dusun Gebangsiwil RT 03 RW 03 ', 'Jawa Timur', 'Nganjuk', 'Nganjuk', '829222', '05608397972', 0),
(3, 'bagus_fever', 'Bagus', 'bagus@yahoo.co.id', 'bagus1922', '', '--Provinsi--', '--Kota--', '--Kecematan--', '', '', 0),
(4, 'baguspsht', 'Bagus Dwiky Wicaksono', 'bagusbieber1922@gmail.com', 'bagus1922', 'Dusun Gabangsiwil Desa Bukur RT 03 RW 03', 'Jawa Timur', 'Nganjuk', 'Patianrowo', '927272', '085608397972', 0),
(5, 'eva', 'eva', 'eva@gmail.com', 'eva1922', 'desa karang tengah rt 02 rw 08', 'Jawa Timur', 'Nganjuk', 'Patianrowo', '88373', '0833736333', 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk`
--

CREATE TABLE IF NOT EXISTS `produk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_produk` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `kelompok` varchar(50) NOT NULL,
  `katalog` varchar(10) NOT NULL,
  `diskon` varchar(10) NOT NULL,
  `ket` varchar(2000) NOT NULL,
  `qty` int(11) NOT NULL,
  `kategori` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=37 ;

--
-- Dumping data untuk tabel `produk`
--

INSERT INTO `produk` (`id`, `nama_produk`, `harga`, `gambar`, `kelompok`, `katalog`, `diskon`, `ket`, `qty`, `kategori`) VALUES
(9, 'LG led tv 20"', 3000000, 'gambar/3.jpg', 'Elektronik & Gadged', '', '', 'LG 32 inch LED TV 32LN-4900, hadir dengan desain frame dan bezelnya tipis. LED TV ini memiliki Smart Energy Saving \r\n(SES) sehingga dapat menghemat 30% energi. Smart Energy Saving (SES) memiliki beragam fungsi seperti fungsi standby \r\nmode zero membuat TV Anda tidak menggunakan listrik saat standby.', 10, 'TV'),
(10, 'LG led tv 90"', 5000000, 'gambar/6.jpg', 'Elektronik & Gadged', '', '', 'TV LED berukuran 90 inch yang memiliki resolusi Full HD 1080 (1920 x 1080) dengan rasio 16:9 serta dilengkapi \r\nDolby Digital. KLV32EX43A disupport dengan teknologi BRAVIA Engine 3, yang memiliki kemampuan menganalisis setiap \r\ngambar atau adegan, dan mengolahnya sehingga memberikan warna dan kontras yang optimal.', 53, 'TV'),
(12, 'SHARP LED TV 24 inch LC-24DC50M', 4000000, 'gambar/4.jpg', 'Elektronik & Gadged', '', '', 'SHARP LED TV 24 inch LC-24DC50M, LED TV Full HD berukuran 24 inch yang mengedepankan teknologi yang ramah lingkungan. \r\nDengan fitur OPC, konsumsi listrik dapat diatur otomatis sesuai dengan pencahayaan ruangan sehingga konsumsi \r\nlistrik SHARP AQUOS menjadi hemat. Ditunjang dengan SRS TruSurrond HD and Bass Enhancer yaitu Audio speaker \r\nberkualitas SRS TruSurround High Definition dengan suara bass yang mengagumkan.\r\n', 55, 'TV'),
(13, 'Nikon Camera Mirrorless S1 10-30 Red', 5000000, 'gambar/5.jpg', 'Elektronik & Gadged', '', '', 'Nikon Camera Mirrorless S1 10-30 adalah kamera mirrorless yang didesain compact dan stylish dan dilengkapi dengan \r\nInterchangeable Lens System 10 - 30 mm. Kamera dengan teknologi CMOS sensor Nikon CX-format ini ditunjang dengan \r\ndisplay TFT LCD 3 inch, kemampuan full HD dan resolusi 10.1 untuk memudahkan Anda berekspresi melalui hasil jepretan \r\nAnda.\r\n', 75, 'Camera DLSR'),
(15, 'Canon EOS 7D KIT 18-135mm', 6000000, 'gambar/5.jpg', 'Elektronik & Gadged', '', '', 'Canon EOS 7D KIT 18-135 mm yang didesain compact untuk kenyamanan Anda juga didukung dengan performa maksimal. \r\nKamera 18 MP ini dilengkapi layar Clear View II LCD 3 inch, Integrated Speedlite Transmitter dan fitur EOS Movie \r\nuntuk merekam Full HD movie dengan full manual control and selectable frame rates.', 65, 'Camera DLSR'),
(18, 'Samsung Galaxy Note 8.0 - N5100 Brown', 9000000, 'gambar/1f0.jpg', 'Elektronik & Gadged', 'Gadged', '', 'Samsung Galaxy Note 8.0 - N5100 Brown, hadir dengan layar sebesar 8 inch dengan resolusi 1280x800 dan tidak \r\nhanya sekedar tablet Android yang terhubung dengan jaringan internet, Samsung Galaxy Note 8.0 bahkan bisa\r\nmelakukan panggilan telepon dan SMS. Galaxy Note 8.0 diperkuat dengan prosesor Quad Core 1.6 GHz Cortex-A9, \r\nOS Android Jelly Bean V4.1.2, memori internal 16 GB, dan dual kamera (kamera depan 5 MP, dan kamera belakang 1.3 MP).\r\nUntuk konektivitas Galaxy Note 8.0 sudah didukung Wi-Fi, Wi-Fi hotspot, dan Bluetooth V4.0.', 3, 'Gadged Android'),
(19, 'Sony Xperia V LT25i White', 5300000, 'gambar/wdaw.jpg', 'Elektronik & Gadged', 'Gadged', '', 'Sony Xperia V LT25i, hadir dengan desain stylish, dan unik. Smartphone ini juga ditunjang dengan \r\nOS Android Ice Cream Sandwich v4.0 dan prosesor Dual-core 1.5 GHz Qualcomm MSM8960 Snapdragon, serta Adreno 225. \r\nDilengkapi dengan layar touchscreen 4,3 inch, kamera 13 MP dengan autofocus dan LED flash, memori internal 8 GB \r\ndengan slot kartu memori serta konektivitas Wi-Fi 802.11 b/g/n, dengan kemampuan Wi-Fi Direct, DLNA, Wi-Fi hotspot, \r\nBluetooth v4.0, dan NFC. Xperia V LT25i ini juga mampu bertahan di medan ekstrim karena memiliki fitur water proof \r\ndan water resistant, sehingga sangat cocok untuk Anda yang suka berpetualang.', 71, 'Gadged Android'),
(21, 'Kaos PSHT', 90000, 'gambar/192.jpg', 'Fashion', 'kaos', '', 'sjjsssssssssssssssssddd', 3, 'Pakaian'),
(23, 'kaos psht terate hijau', 90000, 'gambar/TERA IJO.jpg', 'Fashion', '', '', 'Kaos KaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaos', 30, 'kaos psht'),
(24, 'kaos psht tendangan t', 90000, 'gambar/10687026_538818476251791_5192189108266288028_n.jpg', 'Fashion', 'kaos', '', 'KaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaosKaos', 7, 'kaos psht'),
(26, 'jaket holding sweter  psht ', 120000, 'gambar/Alan-Walker.jpg', 'Fashion', 'jaket', '', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 30, 'jaket dj'),
(27, 'kaos silat psht terate', 120000, 'gambar/Kaos PSHT Kode SH 50 Persaudaraan setia hati Terate  Kaos Psht Kode Sh keren Persaudaraan Setia Hati Terate.jpg', 'Fashion', 'kaos', '10%', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 26, 'kaos psht'),
(29, 'kaos silat psht terate 1922', 100000, 'gambar/Kaos_PSHT_Kode_SH_43_Persaudaraan_setia_hati_Terate.jpg', 'Fashion', 'kaos', '10%', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 9, 'kaos psht'),
(30, 'sepatu nike sport', 300000, 'gambar/nav_img.jpg', 'Fashion', 'sepatu', '', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 10, 'sepatu nike'),
(31, 'sepatu nike sport', 300000, 'gambar/pic3.jpg', 'Fashion', 'sepatu', '', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 10, 'sepatu nike'),
(32, 'sepatu nike sport', 300000, 'gambar/pic5.jpg', 'Fashion', 'sepatu', '', 'jaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaketjaket', 10, 'sepatu nike'),
(33, 'iphone X', 16000000, 'gambar/iphone-x.jpg', 'Elektronik & Gadged', 'Gadged', '', 'Warna : Abu-Abu\r\n\r\nKapasitas1\r\n\r\n    64 GB\r\n    256 GB\r\n\r\nUkuran dan Berat2\r\n\r\n70,9 mm (2,79 inci)\r\n\r\n143,6 mm (5,65 inci)\r\n\r\n7,7 mm (0,30 inci)\r\n\r\nTinggi: 143,6 mm (5,65 inci)\r\n\r\nLebar: 70,9 mm (2,79 inci)\r\n\r\nTebal: 7,7 mm (0,30 inci)\r\n\r\nBerat: 174 gram (6,14 ounce)\r\nLayar\r\n\r\n    Layar Super Retina HD\r\n    Layar OLED Multi-Touch menyeluruh 5,8 inci (diagonal)\r\n    Layar HDR\r\n    Resolusi 2436 x 1125 piksel pada 458 ppi\r\n    Rasio kontras 1.000.000:1 (umum)\r\n    Layar True Tone\r\n    Layar warna luas (P3)\r\n    3D Touch\r\n    Kecerahan maks 625 cd/mÂ² (umum)\r\n    Lapisan oleophobic anti sidik jari\r\n    Mendukung tampilan berbagai bahasa dan karakter secara bersamaan\r\n\r\nLayar iPhone X memiliki sudut melengkung yang mengikuti desain lekukan yang indah, dan semua sudut ini berada di dalam bidang persegi standar. Jika diukur sebagai persegi standar, layarnya berukuran 5,85 inci secara diagonal (area tampilan berukuran lebih kecil).\r\nTahan Cipratan, Air, dan Debu3\r\n\r\n    Memiliki level IP67 menurut standar IEC 60529\r\n\r\nChip\r\n\r\n    Chip A11 Bionic dengan arsitektur 64 bit\r\n    Mesin neural\r\n    Koprosesor gerakan M11 terpasang\r\n\r\nKamera\r\n\r\n    Kamera telefoto dan wide-angle 12 MP\r\n    Wide-angle: bukaan Æ’/1.8\r\n    Telefoto: bukaan Æ’/2.4\r\n    Zoom optik; zoom digital hingga 10x\r\n    Mode Potret\r\n    Pencahayaan Potret (beta)\r\n    Penstabilan gambar optik ganda\r\n    Lensa enam elemen\r\n    Flash True Tone Quad-LED dengan Slow Sync\r\n    Panorama (hingga 63 MP)\r\n    Penutup lensa kristal safir\r\n    Sensor penerangan sisi belakang\r\n    Filter IR hibrida\r\n    Fokus otomatis dengan Focus Pixels\r\n    Ketuk untuk fokus dengan Focus Pixels\r\n    Live Photo dengan penstabilan\r\n    Pengambilan foto dan Live Photo dengan rentang warna luas\r\n    Pemetaan warna lokal yang lebih baik\r\n    Deteksi tubuh dan wajah\r\n    Kontrol eksposur\r\n    Pengurangan noise\r\n    HDR otomatis untuk foto\r\n    Penstabilan gambar otomatis\r\n    Mode beruntun\r\n    Mode timer\r\n    Penanda lokasi foto\r\n    Format ga', 20, 'Gadged Iphone'),
(34, 'Iphone 7s Plus', 10000000, 'gambar/finish_iphone7_alt_large.jpg', 'Elektronik & Gadged', 'Gadged', '', 'Warna : Emas Rose, Emas, Perak, Hitam, Hitam Legam\r\n\r\nKapasitas2\r\n32 GB\r\n128 GB\r\n32 GB\r\n128 GB\r\nUkuran dan Berat3\r\n\r\n138,3 mm (5,44 inci)\r\n\r\n67,1 mm (2,64 inci)\r\n\r\n7,1 mm (0,28 inci)\r\nBerat: 138 gram (4,87 ounce)\r\n\r\n158,2 mm (6,23 inci)\r\n\r\n77,9 mm (3,07 inci)\r\n\r\n7,3 mm (0,29 inci)\r\nBerat: 188 gram (6,63 ounce)\r\nLayar\r\n\r\n    Layar Retina HD\r\n    Layar lebar LCD Multi-Touch 4,7 inci (diagonal) dengan teknologi IPS\r\n    Resolusi 1334 x 750 piksel pada 326 ppi\r\n    Rasio kontras 1400:1 (umum)\r\n\r\n    Layar Retina HD\r\n    Layar lebar LCD Multi-Touch 5,5 inci (diagonal) dengan teknologi IPS\r\n    Resolusi 1920 x 1080 piksel pada 401 ppi\r\n    Rasio kontras 1300:1 (umum)\r\n\r\nKedua model:\r\n\r\n    Layar warna luas (P3)\r\n    Kecerahan maks 625 cd/m2 (umum)\r\n    Piksel domain-ganda untuk sudut pandang yang luas\r\n    Lapisan oleophobic anti sidik jari\r\n    Mendukung tampilan berbagai bahasa dan karakter secara bersamaan\r\n    Pembesar Tampilan\r\n    Reachability (Keterjangkauan)\r\n\r\nTahan Cipratan, Air, dan Debu4\r\n\r\n    Memiliki level IP67 menurut standar IEC 60529\r\n\r\nChip\r\n\r\n    Chip Fusion A10 dengan arsitektur 64 bit\r\n    Koprosesor gerakan M10 terpasang\r\n\r\nKamera\r\nKamera 12 MP\r\nKamera telefoto dan wide-angle 12 MP\r\n \r\nBukaan Æ’/1.8\r\nWide-angle: bukaan Æ’/1.8\r\nTelefoto: bukaan Æ’/2.8\r\n \r\nZoom digital hingga 5x\r\nZoom optik; zoom digital hingga 10x\r\n \r\n \r\nMode Potret\r\nKedua model:\r\n\r\n    Penstabilan gambar optik\r\n    Lensa enam elemen\r\n    Flash True Tone Quad LED\r\n    Panorama (hingga 63 MP)\r\n    Penutup lensa kristal safir\r\n    Sensor penerangan sisi belakang\r\n    Filter IR hibrida\r\n    Fokus otomatis dengan Focus Pixels\r\n    Ketuk untuk fokus dengan Focus Pixels\r\n    Live Photo dengan penstabilan\r\n    Pengambilan foto dan Live Photo dengan rentang warna luas\r\n    Pemetaan warna lokal yang lebih baik\r\n    Deteksi tubuh dan wajah\r\n    Kontrol eksposur\r\n    Pengurangan noise\r\n    HDR otomatis untuk foto\r\n    Penstabilan gambar otomatis\r\n    Mode beruntun\r\n    Mode timer\r\n    Penanda l', 12, 'Gadged Iphone'),
(35, 'Jaket Murah Bomber Pria Simple-HIjau Army Best Seller  ', 150000, 'gambar/bomber.jpg', 'Fashion', 'jaket', '', 'Detail produk dari Jaket Murah Bomber Pria Simple-HIjau Army Best Seller\r\n\r\nJaket ini nyaman dipakai untuk Anda yang sering beraktivitas outdoor dan harga cukup terjangkau. Bahan Mayer dapat melindungi dari tetesan air hujan sehingga nyaman digunakan ketika berkendara.Pastinya Anda sebagai pengguna menjadi lebih percaya diri di setiap kesempatan. Jangan lewatkan penawaran ini hanya ada di Zona Fashion\r\nSpesifikasi Jaket Murah Bomber Pria Simple-HIjau Army Best Seller\r\nApa yang ada di dalam kotak:\r\n\r\n    1 x Jaket Bomber Pria\r\n\r\nFitur Umum:\r\nSKU 	RA757FAAATSM2AANID-67199659\r\nBahan Pakaian 	Other Material\r\nJenis Kerah / Leher Baju 	O-Neck\r\nKategori Brand 	Fashion\r\nMotif / Detail 	Plain\r\nJenis Penutup Jaket 	Zipper\r\nTahun Terdaftar 	2016\r\nPanjang Lengan 	Full\r\nTren Fashion Pria 	Minimalist\r\nModel 	Jaket Bomber Pria\r\nKesempatan 	Suitable for all occasions\r\nWarranty period 	1 Month\r\nTipe garansi 	Local Authorized Service center warranty', 50, 'Fashion Pria'),
(36, 'Arc Jaket Bomber Pria Hitam Murah Best Seller', 160000, 'gambar/bomber2.jpg', 'Fashion', 'jaket', '', 'Detail produk dari Arc Jaket Bomber Pria Hitam Murah Best Seller\r\n\r\nInformasi Produk\r\n\r\nJaket Bomber ARC adalah jaket untuk pria yang terbuat dari bahan puma. Jenis bahan kain puma merupakan bahan kain terbaik untuk model jaket bomber. Bahan ini mirip dengan parasut tetapi lebih tebal dan permukaannya halus, tidak bersisik saat bergesekan, serta tidak mudah kusut. Dengan bahan ini, ARC jaket bomber tidak tembus air jika dipakai saat hujan. Bagian dalam jaket terbuat dari bahan polar kembung yang memberikan kenyamanan dan tidak gerah saat dipakai.\r\n\r\nTren jaket bomber semakin hari semakin digemari oleh masyarakat. Jaket bomber merupakan salah satu model jaket dengan ciri khasnya, yakni tebal. Jaket ini dibuat dengan material yang tebal dan didesain menutup rapat tubuh bagian atas melalui tarikan resleting di bagian depan. Jaket bomber ARC memiliki desain yang elegan dan memberikan kesan gagah saat dipakai.\r\n\r\nKerah jaket menggunakan model u-neck dan bagian pergelangan tangan serta pinggul menggunakan karet. Penutup jaket ini menggunakan ritsleting besi yang kuat di bagian depan. Dengan busa yang cukup tebal di bagian dalam jaket akan membuat Anda nyaman dan tetap hangat meski berkendara di cuaca dingin atau hujan.\r\n\r\nSpesifikasi Produk\r\n\r\nUkuran\r\n\r\nJaket bomber ARC tersedia ukuran mulai M, L, XL, hingga XXL.\r\n\r\nWarna\r\n\r\nHitam\r\n\r\nFitur\r\n\r\nJaket bomber ARC memiliki 3 kantong di bagian luar dan 1 kantong di bagian dalam.\r\n\r\nPelengkap\r\n\r\nJaket ini dikemas dengan menggunakan packing polybag sehingga tetap rapi dan mudah disimpan kembali.\r\nSpesifikasi Arc Jaket Bomber Pria Hitam Murah Best Seller\r\nApa yang ada di dalam kotak:\r\n\r\n    Arc Jaket Bomber Pria Hitam\r\n\r\nFitur Umum:\r\nSKU 	AR907FAAA5PQCVANID-11631786\r\nBahan Pakaian 	Other Material\r\nJenis Penutup Jaket 	Zipper\r\nModel 	airclothing-BPPH\r\nBerat (kg) 	0.65\r\nTipe garansi 	No Warranty', 10, 'Fashion Pria');

-- --------------------------------------------------------

--
-- Struktur dari tabel `produk_temp`
--

CREATE TABLE IF NOT EXISTS `produk_temp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembeli` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `nama_produk` varchar(200) NOT NULL,
  `harga` int(11) NOT NULL,
  `total_harga` int(11) NOT NULL,
  `gambar` varchar(200) NOT NULL,
  `qty_beli` int(11) NOT NULL,
  `qty_asli` int(11) NOT NULL,
  `kategori` varchar(200) NOT NULL,
  `ket` int(11) NOT NULL,
  `jasa_pengiriman` varchar(15) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=52 ;

--
-- Dumping data untuk tabel `produk_temp`
--

INSERT INTO `produk_temp` (`id`, `id_pembeli`, `id_produk`, `nama_produk`, `harga`, `total_harga`, `gambar`, `qty_beli`, `qty_asli`, `kategori`, `ket`, `jasa_pengiriman`) VALUES
(50, 0, 18, 'Samsung Galaxy Note 8.0 - N5100 Brown', 9000000, 9000000, 'gambar/1f0.jpg', 1, 6, 'Elektronik', 0, ''),
(51, 0, 33, 'sepatu nike sport', 300000, 300000, 'gambar/banner1.jpg', 1, 10, 'sepatu nike', 0, '');

-- --------------------------------------------------------

--
-- Struktur dari tabel `selesai`
--

CREATE TABLE IF NOT EXISTS `selesai` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `id_pembeli` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jumlah_barang` int(11) NOT NULL,
  `jumlah_bayar` int(11) NOT NULL,
  `tanggal_beli` varchar(50) NOT NULL,
  `alamat` varchar(100) NOT NULL,
  `kabupaten` varchar(20) NOT NULL,
  `kecamatan` varchar(20) NOT NULL,
  `provinsi` varchar(20) NOT NULL,
  `kode_pos` varchar(10) NOT NULL,
  `no_telp` varchar(15) NOT NULL,
  `jasa_pengiriman` varchar(20) NOT NULL,
  `konfir` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data untuk tabel `selesai`
--

INSERT INTO `selesai` (`id`, `id_pembeli`, `nama`, `jumlah_barang`, `jumlah_bayar`, `tanggal_beli`, `alamat`, `kabupaten`, `kecamatan`, `provinsi`, `kode_pos`, `no_telp`, `jasa_pengiriman`, `konfir`) VALUES
(14, 1, 'afiq', 1, 6000000, '29-11-2016', 'jl jati baron nganjuk jawa timur', 'nganjuk', 'baron', 'jawa timur', '', '', '', 'Y'),
(15, 1, 'afiq', 1, 5000000, '29-11-2016', 'jl jati baron nganjuk jawa timur', 'nganjuk', 'baron', 'jawa timur', '', '', '', 'Y'),
(16, 1, 'afiq', 1, 6000000, '29-11-2016', 'jl jati baron nganjuk jawa timur', 'nganjuk', 'baron', 'jawa timur', '', '', '', 'Y'),
(17, 1, 'afiq', 1, 9000000, '29-11-2016', 'jl jati baron nganjuk jawa timur', 'nganjuk', 'baron', 'jawa timur', '', '', '', 'N'),
(18, 1, 'afiq', 1, 5300000, '29-11-2016', 'jl jati baron nganjuk jawa timur', 'nganjuk', 'baron', 'jawa timur', '', '', '', 'N'),
(19, 5, 'eva', 1, 9000000, '29-11-2016', 'desa karang tengah rt 02 rw 08', 'Nganjuk', 'Patianrowo', 'Jawa Timur', '88373', '0833736333', '', 'N'),
(20, 5, 'eva', 2, 10000000, '29-11-2016', 'desa karang tengah rt 02 rw 08', 'Nganjuk', 'Patianrowo', 'Jawa Timur', '88373', '0833736333', 'POS REGULER', 'N'),
(21, 5, 'eva', 1, 8000000, '29-11-2016', 'desa karang tengah rt 02 rw 08', 'Nganjuk', 'Patianrowo', 'Jawa Timur', '88373', '0833736333', 'POS KILAT', 'N');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
