-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Sep 22, 2020 at 11:22 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wbperusahaanv1`
--

-- --------------------------------------------------------

--
-- Table structure for table `agenda`
--

CREATE TABLE `agenda` (
  `id_agenda` int(5) NOT NULL,
  `tema` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tema_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_agenda` text COLLATE latin1_general_ci NOT NULL,
  `tempat` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pengirim` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_mulai` date NOT NULL,
  `tgl_selesai` date NOT NULL,
  `tgl_posting` date NOT NULL,
  `jam` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `agenda`
--

INSERT INTO `agenda` (`id_agenda`, `tema`, `tema_seo`, `isi_agenda`, `tempat`, `pengirim`, `gambar`, `tgl_mulai`, `tgl_selesai`, `tgl_posting`, `jam`, `dibaca`, `username`) VALUES
(64, 'Rapat Membahas Tentang Opps', 'rapat-membahas-tentang-opps', '<p>Assalamualaikum warohmatullahi wabarokatuh</p>\r\n\r\n<p>Diingatkan untuk seluruh anggota Bem universitas bumigora&nbsp;Untuk datang ke acara rapat kerja&nbsp;Besok jam 08.00 WITA&nbsp;Di wajibkan untuk hadir.. Dengan memakai almamater&nbsp;Dan ruangannya di aula GB&nbsp;Sekian&nbsp;&nbsp;Assalamualaikum warohmatullahi wabarokatuh<br />\r\n&nbsp;<strong>Nb: membawa uang dp untuk baju pdh</strong></p>\r\n', 'Sentul International Convention Center', '', 'meet.jpg', '2020-09-15', '2020-09-18', '2012-08-20', '08.30 - 12.00 WITA', 98, 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

CREATE TABLE `album` (
  `id_album` int(5) NOT NULL,
  `jdl_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `album_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_album` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `hits_album` int(5) NOT NULL DEFAULT 1,
  `tgl_posting` date NOT NULL,
  `jam` time NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`id_album`, `jdl_album`, `album_seo`, `keterangan`, `gbr_album`, `aktif`, `hits_album`, `tgl_posting`, `jam`, `hari`, `username`) VALUES
(28, 'Penyaluran Air Bersih Di Kecamatan Jerowaru Kabupaten Lombok Timur', 'penyaluran-air-bersih-di-kecamatan-jerowaru-kabupaten-lombok-timur', '<p>Assalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nTerima kasih sebesar-besarnya untuk semua pihak atas donasinya kepada saudara-saudara kita yang terdampak kekeringan di Kecamatan Jerowaru Kabupaten Lombok Timur.</p>\r\n', 'Web_Photo_Editor.jpg', 'Y', 51, '2012-08-18', '23:14:05', 'Sabtu', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `background`
--

CREATE TABLE `background` (
  `id_background` int(5) NOT NULL,
  `gambar` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `background`
--

INSERT INTO `background` (`id_background`, `gambar`) VALUES
(1, 'blue');

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `deskripsi` text COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `judul`, `url`, `gambar`, `tgl_posting`, `deskripsi`) VALUES
(21, 'LEMBAGA', 'http://www.lokomedia.web.id', 'UNIVERSITAS_BUMOGORA_MATARAM.png', '2020-09-18', 'BEM adalah lembaga tertinggi mahasiswa dalam sebuah kampus dan memiliki wewenang dan otoritas dan sebgai penyalur aspirasi mahasiswa'),
(22, 'KABINET', 'http://www.lokomedia.web.id', 'Desain_tanpa_judul_(11)2.png', '2020-09-16', 'Selamat datang Kabinet sinergi Perjuangan Mahasiswa yang besar adalah mereka yang menghormati organisasinya. Membesarkannya sepenuh hati. dan bersama memberikan yang terbaik untuk bangsa & negara'),
(25, 'PEDULI', '', 'Desain_tanpa_judul_(11)3.png', '2020-09-16', 'Membantu  dan berkomitmen untuk memberikan bantuan kepada masyarakat yang membutuhkan atau yang tertimpah musibah.');

-- --------------------------------------------------------

--
-- Table structure for table `berita`
--

CREATE TABLE `berita` (
  `id_berita` int(5) NOT NULL,
  `id_kategori` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `sub_judul` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `judul_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `headline` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `utama` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `isi_berita` longtext CHARACTER SET latin1 NOT NULL,
  `keterangan_gambar` text COLLATE latin1_general_ci NOT NULL,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `berita`
--

INSERT INTO `berita` (`id_berita`, `id_kategori`, `username`, `judul`, `sub_judul`, `youtube`, `judul_seo`, `headline`, `aktif`, `utama`, `isi_berita`, `keterangan_gambar`, `hari`, `tanggal`, `jam`, `gambar`, `dibaca`, `tag`, `status`) VALUES
(691, 2, 'admin', 'Barcelona Vs Bayern: Lewandowski Cs Permalukan Barca 8-2', '', 'https://www.youtube.com/watch?v=vtNKf8vQKwY', 'barcelona-vs-bayern-lewandowski-cs-permalukan-barca-82', 'Y', 'Y', 'Y', '<p><a href=\"https://www.detik.com/tag/bayern-munich\">Bayern Munich</a>&nbsp;melenggang ke semifinal&nbsp;<a href=\"https://www.detik.com/tag/liga-champions\">Liga Champions</a>.&nbsp;<a href=\"https://www.detik.com/tag/robert-lewandowski\">Robert Lewandowski&nbsp;</a>cs mempermalukan&nbsp;<a href=\"https://www.detik.com/tag/barcelona\">Barcelona&nbsp;</a>dengan skor telak 8-2.</p>\r\n\r\n<p>Laga&nbsp;<a href=\"https://www.detik.com/tag/barcelona-vs-bayern-munich\">Barcelona Vs Bayern Munich</a>&nbsp;pada babak perempatfinal Liga Champions digelar di Estadio Da Luz, Sabtu (15/8/2020) dini hari WIB. Bayern sudah unggul 4-1 di periode ini, berkat dua gol Thomas Mueller dan masing-masing satu gol Ivan Perisic dan Serge Gnabry.</p>\r\n\r\n<p>Barcelona cuma membalas satu kali melalui gol bunuh diri David Alaba. Barcelona lantas sempat menghidupkan peluang di menit ke-57, saat Suarez memperkecil selisih menjadi 2-4.</p>\r\n\r\n<p>Tapi Bayern tanpa ampun mencetak empat gol lainnya, berturut-turut dari Joshua Kimmich, Robert Lewandowski, dan Philippe Coutinho (2 gol). Dengan kemenangan besar ini, Bayern melenggang ke semifinal dan akan menghadapi pemenang duel Manchester City Vs Lyon.</p>\r\n\r\n<p><strong>Jalannya Pertandingan</strong></p>\r\n\r\n<p>Pertandingan berjalan tiga menit ketika Sergi Roberto merangsek di kanan dan mengirimkan umpan silang mendatar. Jerome Boateng memotong operan tersebut agar tak mencapai Luis Suarez.</p>\r\n\r\n<p>GOL! Bayern memimpin di menit keempat. Menerima bola dari Ivan Perisic di kiri, Thomas Mueller memainkan umpan satu-dua dengan Robert Lewandowski dan menaklukkan Marc-Andre ter Stegen dengan sepakan kaki kirinya.</p>\r\n\r\n<p>Gol balasan dari Barcelona! Keunggulan Bayern hanya bertahan tiga menit saja. Jordi Alba lolos dari jebakan offside di sisi kiri dan dengan leluasa mengirim umpan silang ke Suarez di tengah.</p>\r\n\r\n<p>David Alaba bermaksud memotong operan itu, tapi sepakannya malah meluncur ke atas Manuel Neuer dan masuk ke gawang. Gol bunuh diri yang cantik dari Alaba.</p>\r\n\r\n<p>Peluang bagus dari Barcelona di menit ke-9. Nelson Semedo meneruskan umpan dari Messi ke Suarez yang merangsek di tengah. Tinggal menghadapi kiper, sontekan Suarez masih bisa ditepis.</p>\r\n\r\n<p>Nyaris Barcelona membalikkan keadaan semenit berselang. Berawal dari sepak pojok di sisi kanan, Messi mengirim umpan silang yang gagal disambar dengan sempurna oleh Sergio Busquets. Bola meluncur dan mengenai tiang.</p>\r\n\r\n<p>Bayern merespons. Sepakan voli Lewandowski masih melambung, demikian halnya dengan sundulan Leon Goretzka.</p>\r\n\r\n<p>Messi membuang peluang apik di menit ke-20. Bintang asal Argentina itu menusuk dari kanan dan mendapatkan celah untuk menembak, hanya saja penyelesaiannya kurang tajam. Tembakan Messi bisa diamankan oleh Neuer.</p>\r\n\r\n<p>Semenit kemudian, Bayern mencetak gol. Barcelona kehilangan bola di lini tengah dan bola bergulir ke Serge Gnabry. Ia menyodorkannya ke Ivan Perisic, yang menuntaskan kesempatan tanpa ampun.</p>\r\n\r\n<p>Bayern terus menekan Barcelona. Ter Stegen gagal menghalau umpan silang Perisic dengan sempurna di menit ke-27 dan bola malah jatuh ke kaki Lewandowski. Tapi kiper Barcelona itu masih mampu bereaksi dan melakukan blok.</p>\r\n\r\n<p>Namun tak lama berselang Bayern mendapatkan gol ketiga, usai merebut penguasaan dari Barcelona. Umpan terobosan cantik dari Goretzka diselesaikan dengan sepakan voli Gnabry.</p>\r\n\r\n<p>Robert Lewandowski hampir mencetak gol di menit ke-29, memanfaatkan kesalahan lain dari Barcelona. Umpan ceroboh Ter Stegen diserobot Lewandowski, tapi beruntung buat kiper Barcelona itu karena masih bisa membelokkan bola ke luar lapangan.</p>\r\n\r\n<p>GOL! Bayern mendapatkan gol keempat di menit ke-31. Umpan silang Joshua Kimmich dari kanan disontek Thomas Mueller di tiang dekat.</p>\r\n\r\n<p>Sebuah peluang dari Lewandowski masih mengarah tepat ke Ter Stegen di menit ke-39. Barcelona mencoba merespons, namun peluang Suarez di menit ke-45 belum cukup untuk menaklukkan Neuer. Babak pertama berakhir.</p>\r\n\r\n<p>Tiga menit babak kedua berjalan, Bayern sudah menciptakan peluang bagus. Muller menerima bola di depan kotak penalti dan menahannya, sebelum kemudian mengoper ke Perisic. Tembakan keras Perisic masih bisa dibendung Ter Stegen.</p>\r\n\r\n<p>Berjarak dua menit kemudian, Bayern mendapatkan kesempatan lain. Umpan terobosan Kimmich diterima Goretzka, tapi penyelesaiannya masih melambung.</p>\r\n\r\n<p>GOL! Barcelona menipiskan ketertinggalan di menit ke-57. Alba menerima bola di sisi kiri dan mengopernya ke Suarez di tengah. Suarez lantas mengecoh Boateng dan dengan dingin menaklukkan Neuer dengan sepakan mendatar ke pojok kanan bawah.</p>\r\n\r\n<p>Bayern membalas di menit ke-63. Alphonso Davies menusuk dari kiri, melewati adangan Nelson Semedo, lalu melepaskan umpan tarik yang disambar Kimmich di depan gawang.</p>\r\n\r\n<p>Tak lama setelah masuk ke lapangan di menit ke-67, Kingsley Coman sudah mendapatkan kesempatan mencetak gol. Tembakannya diblok Alba yang datang di momen terakhir.</p>\r\n\r\n<p>Kerja sama apik Barcelona berujung peluang untuk Messi di menit ke-77. Akan tetapi tembakannya masih mudah dibaca oleh Neuer.</p>\r\n\r\n<p>Bayern mencetak gol keenam di menit ke-82. Tusukan Philippe Coutinho di sisi kiri diakhiri dengan umpan silang yang disambar Lewandowski di tiang jauh. Video Assistant Referee (VAR) sempat meninjau gol ini atas potensi adanya offside, tapi diputuskan sah.</p>\r\n\r\n<p>Bayern belum berhenti! Coutinho mencetak gol ketujuh Bayern di laga ini pada menit ke-85, menuntaskan umpan Mueller.</p>\r\n\r\n<p>Coutinho! Pemain pinjaman Barcelona ini mengubah skor menjadi 8-2 di menit ke-89 usai menyambar bola liar hasil dari umpan Lucas Hernandez yang membentur kaki Semedo.</p>\r\n\r\n<p>Tak ada gol lain tercipta sampai pertandingan usai. Bayern menang 8-2 atas Barcelona.</p>\r\n\r\n<p><strong>Susunan pemain:</strong></p>\r\n\r\n<p>Barcelona: Marc-Andre ter Stegen; Nelson Semedo, Gerard Pique, Clement Lenglet, Jordi Alba; Sergi Roberto (Antoine Griezmann 46&#39;), Sergio Busquets (Ansu Fati 70&#39;), Frenkie de Jong, Arturo Vidal; Lionel Messi, Luis Suarez</p>\r\n\r\n<p>Bayern Munich: Manuel Neuer; Joshua Kimmich, Jerome Boateng (Nicklas Suele 76&#39;), David Alaba, Alphonso Davies (Lucas Hernandez 84&#39;); Thiago Leon Goretzka (Corentin Tolisso 84&#39;); Serge Gnabry (Philippe Coutinho 75&#39;), Thomas Muller, Ivan Perisic (Kingsley Coman 67&#39;); Robert Lewandowski</p>\r\n', '', 'Senin', '2020-09-21', '12:57:11', 'maxresdefault.jpg', 0, 'bola', 'Y'),
(692, 2, 'admin', 'Ketika Arsenal Remuk Redam, Kalah 8-2 dari Manchester United di Old Trafford', '', '', 'ketika-arsenal-remuk-redam-kalah-82-dari-manchester-united-di-old-trafford', 'Y', 'Y', 'Y', '<p><a href=\"https://www.bola.net/tag/arsenal/\">Arsenal</a>&nbsp;awal tahun 2010-an bukanlah Arsenal yang sama dengan awal 2000-an. The Gunners acap kali kesulitan. Salah satunya ketika kalah dengan skor 8-2 dari&nbsp;<a href=\"https://www.bola.net/tag/manchester-united/\">Manchester United</a>&nbsp;pada laga yang digelar di Old Trafford.</p>\r\n\r\n<p>Pada musim tersebut, Arsenal masih dilatih Arsene Wenger. Sudah tidak ada Thierry Henry, Robert Pires, dan kawan-kawannya di skuad. Wenger juga kehilangan Cesc Fabregas yang memilih pindah ke Barcelona.</p>\r\n\r\n<p>Namun, Wenger masih punya skuad yang kompetitif. Wojciech Szczesny [22] menjadi tumpuan di bawah mistar. Lalu, ada duet Laurent Koscielny [26] dan Thomas Vermaelen [26] di posisi bek tengah. Per Mertesacker [27] juga bisa diandalkan.</p>\r\n\r\n<p>Di lini tengah, Mikel Arteta [30] menjadi andalan dengan duetnya bersama Tomas Rosiscky [31]. Theo Walcott [23], Gervinho [24], dan Andrey Arshavin menjadi pilar di sisi sayap. Robin van Persie [28] menjadi mesin gol utama The Gunners.</p>\r\n\r\n<h2>Old Trafford, 28 Agustus 2011</h2>\r\n\r\n<p>Arsenal menjalani laga tandang di pekan ke-3 Premier League musim 2011/2012. Lawan yang dihadapi adalah Manchester United, di mana laga di gelar di Old Trafford.</p>\r\n\r\n<p>Pada lawatan kali ini, Arsene Wenger harus kehilangan sejumlah pemain kunci. Vermaelen mengalami cedera, begitu juga Jack Wilshare, dan Abou Diaby. Gervinho dan Alex Song juga tak bisa bermain karena akumulasi kartu.</p>\r\n\r\n<p>Di kubu Manchester United, Sir Alex Ferguson tidak bisa memainkan Rio Ferdinand dan Nemanja Vidic karena cedera. United juga kehilangan Rafael Da Silva. Tiga dari empat pemain kunci United di lini belakang harus absen.</p>\r\n\r\n<p>Arsenal tampil buruk. Koscielny tampil gugup di lini belakang. Pada babak pertama, tiga gol bersarang di gawang Szczesny. Danny Welbeck, Ashley Young, dan Wayne Rooney silih berganti membobol gawang Szczesny.</p>\r\n\r\n<p>Arsenal mendapat gol hiburan dari aksi The Walcott pada menit 45+3.</p>\r\n\r\n<h2>Arsenal Merana Babak Kedua</h2>\r\n\r\n<p>Arsene Wenger melakukan pergantian pada menit ke-62 untuk mengubah situasi. Alex Oxlade-Chamberlain masuk menggantikan Francis Coquelin. Namun, pergantian gelandang bertahan ini menjadi awal merananya Arsenal di babak kedua.</p>\r\n\r\n<p>Hanya lima menit setelah Coquelin keluar, Arsenal kebobolan dua gol lewat aksi Wayne Rooney dan Nani.</p>\r\n\r\n<p>Tidak sampai di situ, Park Ji-sung kemudian menambah derita Arsenal pada menit ke-70. Skor menjadi 6-1. Arsenal tidak menyerang dengan Robin van Persie memberi sedikit harapan lewat golnya pada menit ke-75.</p>\r\n\r\n<p>Ya, sedikit saja harapan bagi Arsenal. Sebab, pada menit ke-87, United kembali mencetak gol. Wayne Ronney mencetak hattrick lewat eksekusi penalti. Pesta gol United ditutup oleh aksi Ashley Young pada menit 90+2. Arsenal remuk redam dengan skor 8-2.</p>\r\n\r\n<h2>Susunan Pemain</h2>\r\n\r\n<p>Manchester United: David de Gea, Smalling, Jones, Evans, Evra, Nani (68&#39; Park), Anderson (68&#39; Giggs), Cleverley, Young, Rooney, Welbeck (35 &#39;Hernandez).</p>\r\n\r\n<p>Arsenal: Szczesny, Jenkinson, Djourou, Koscielny, Traore, Coquelin (61&#39; Chamberlain), Ramsey, Rosicky, Walcott (83&#39; Chamakh), Van Persie (83&#39; Lansbury), Arshavin</p>\r\n\r\n<p>&nbsp;</p>\r\n', '', 'Senin', '2020-09-21', '13:01:33', 'manchester-united_b12ef1b.jpg', 0, 'bola', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `download`
--

CREATE TABLE `download` (
  `id_download` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `nama_file` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `hits` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `download`
--

INSERT INTO `download` (`id_download`, `judul`, `nama_file`, `tgl_posting`, `hits`) VALUES
(11, 'Total Biaya Pembuatan Aplikasi Simpeg', 'Contoh_File_Download_1.txt', '2014-09-23', 8),
(12, 'Type atau Jenis Join di MySQL', 'Contoh_File_Download_1.txt', '2014-09-23', 68),
(13, 'Kegiatan Monev Tgl. 14-17 Oktober 2014 (SAKPA)', 'Contoh_File_Download_1.txt', '2014-09-23', 34),
(14, 'Pembayaran Tunjangan Remunerasi', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(15, 'Target PNBP Umum & PNBP Fungsional TA.2015', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(16, 'Pelaksanaan Disiplin Pasca Idul Fitri 1435', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(17, 'Kegiatan Akurasi Data Semester I TA. 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 14),
(18, 'Rapat Koordinasi dan Konsultasi', 'Contoh_File_Download_1.txt', '2014-09-23', 5),
(19, 'Lomba dan Penilaian SIMPEG dan E-DOCu', 'Contoh_File_Download_1.txt', '2014-09-23', 90),
(20, 'Pemanggilan Peserta Bimtek Hakim Tahun 2014', 'Contoh_File_Download_1.txt', '2014-09-23', 33),
(21, 'Penyusunan PAGU Indikatif Tahun Anggaran 2015', 'Contoh_File_Download_1.txt', '2014-09-23', 57),
(22, 'Revisi Tata Cara Restore Backup SAKPA13 Audited', 'Contoh_File_Download_1.txt', '2014-09-23', 44),
(23, 'Penyusunan RKAKL Alokasi Anggaran DIPA (04)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(24, 'Tindaklanjut Temuan Pemeriksaan BPK RI', 'Contoh_File_Download_1.txt', '2014-09-23', 12),
(25, 'Verifikasi Kewajaran Nilai Tanah SIMAK-BMN', 'Contoh_File_Download_1.txt', '2014-09-23', 3),
(26, 'Instruksi Ketua Umum IPASPI Pusat (new)', 'Contoh_File_Download_1.txt', '2014-09-23', 24),
(27, 'Relaas Perkara No.0081/Pdt.G/2013/PA.Stg', 'Contoh_File_Download_1.txt', '2014-09-23', 6),
(31, 'sdfdfsdf', 'lndex.php', '2017-01-27', 7),
(32, 'xxxx', 'lndex.php', '2017-10-11', 0);

-- --------------------------------------------------------

--
-- Table structure for table `gallery`
--

CREATE TABLE `gallery` (
  `id_gallery` int(5) NOT NULL,
  `id_album` int(5) NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `jdl_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gallery_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_gallery` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `gallery`
--

INSERT INTO `gallery` (`id_gallery`, `id_album`, `username`, `jdl_gallery`, `gallery_seo`, `keterangan`, `gbr_gallery`) VALUES
(238, 30, 'admin', 'Lautan Penonton', 'lautan-penonton', 'Lebih kurang dari 50.000 penonton yang memadati Stadion Gelora Bung Karno menyaksikan aksi Kantata Barock.\r\n', '7kantata3.jpg'),
(237, 30, 'admin', 'Mengenang WS. Rendra', 'mengenang-ws-rendra', 'Konser didedikasikan buat salah satu anggota Kantata Takwa, WS. Rendra. Suasana kemeriahan para artis pendukung.\r\n', '44kantata4.jpg'),
(240, 31, 'admin', 'Doa Bersamaaa', 'doa-bersamaaa', '<p>Mengingat agresi yang militer yang dilancarkan Israel merupakan pelanggaran hukum humaniter internasional. Menyusul banyak warga sipil yang telah menjadi korban akibat pertempuran yang dilakukan Israel dan Hamas. Sebelumnya, Sekretaris Jendral Perserikatan Bangsa - Bangsa (PBB) Ban Ki-moon dan Menteri Luar Negeri Amerika Serikat (AS) John Kerry melakukan pertemuan di Kairo, Mesir. Pertemuan di bertujuan untuk mendesak agar konflik yang terjadi di Gaza segera dihentikan.cbcvb</p>\r\n', '38kantata1.jpg'),
(239, 30, 'admin', 'Semangat Kantata', 'semangat-kantata', 'Semangat para macan-macan tua Kantata, seolah mmemberi penyadaran baru dan bagai api yang tak pernah padam.\r\n', '7kantata2.jpg'),
(236, 30, 'admin', 'Iwan Fals', 'iwan-fals', 'Iwan Fals yang tergabung dalam Kantata Barock bersama Setiawan Djodi dan Sawong Jabo menghibur penggemarnya di GBK.\r\n', '85kantata5.jpg'),
(235, 30, 'admin', 'Iwan dan Oemar Bakrie', 'iwan-dan-oemar-bakrie', 'Aksi penonton yang mirip dengan Iwan Fals dan sang guru Oemar Bakrie\r\n', '95kantata6.jpg'),
(234, 30, 'admin', 'Bento...Bento..!!', 'bentobento', 'Bento...Bento...Bentok...!! ....Asyikkk... begitu teriak Setiawan Djody dan Sawung Jabo yang ikuti ribuan penonton.\r\n', '32kantata7.jpg'),
(232, 29, 'admin', 'Karpet Raksasa dari Bunga 008', 'karpet-raksasa-dari-bunga-008', '', '45bungaraksasa8.jpg'),
(233, 30, 'admin', 'Sujud Syukur', 'sujud-syukur', 'Seluruh awak Kantata Barock melakukan sujud syukur di penghujung acara.<br />\r\n', '32kantata8.jpg'),
(231, 29, 'admin', 'Karpet Raksasa dari Bunga 007', 'karpet-raksasa-dari-bunga-007', '', '89bungaraksasa7.jpg'),
(230, 29, 'admin', 'Karpet Raksasa dari Bunga 006', 'karpet-raksasa-dari-bunga-006', '', '17bungaraksasa6.JPG'),
(229, 29, 'admin', 'Karpet Raksasa dari Bunga 005', 'karpet-raksasa-dari-bunga-005', '', '74bungaraksasa5.JPG'),
(228, 29, 'admin', 'Karpet Raksasa dari Bunga 004', 'karpet-raksasa-dari-bunga-004', '', '22bungaraksasa4.JPG'),
(227, 29, 'admin', 'Karpet Raksasa dari Bunga 003', 'karpet-raksasa-dari-bunga-003', '', '78bungaraksasa3.JPG'),
(225, 29, 'admin', 'Karpet Raksasa dari Bunga 001', 'karpet-raksasa-dari-bunga-001', '', '17bungaraksasa1.JPG'),
(226, 29, 'admin', 'Karpet Raksasa dari Bunga 002', 'karpet-raksasa-dari-bunga-002', '', '22bungaraksasa2.JPG'),
(262, 28, 'admin', 'PENYALURAN AIR BERSIH', 'penyaluran-air-bersih', '<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nKunjungan ke Desa Sekaroh Ujung Ketangga Kec. jerowaru Kab. Lombok Timur yang terdampak kekeringan.<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', '4.jpg'),
(263, 28, 'admin', 'PENYALURAN AIR BERSIH', 'penyaluran-air-bersih', '<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nKunjungan ke Desa Sekaroh Ujung Ketangga Kec. jerowaru Kab. Lombok Timur yang terdampak kekeringan.<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', '2.jpg'),
(260, 28, 'admin', 'PENYALURAN AIR BERSIH ', 'penyaluran-air-bersih-', '<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nKunjungan ke Desa Sekaroh Ujung Ketangga Kec. jerowaru Kab. Lombok Timur yang terdampak kekeringan.<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', 'baba.jpg'),
(261, 28, 'admin', 'PENYALURAN AIR BERSIH', 'penyaluran-air-bersih', '<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nKunjungan ke Desa Sekaroh Ujung Ketangga Kec. jerowaru Kab. Lombok Timur yang terdampak kekeringan.<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', '8.jpg'),
(259, 28, 'admin', 'PENYALURAN AIR BERSIH ', 'penyaluran-air-bersih-', '<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nKunjungan ke Desa Sekaroh Ujung Ketangga Kec. jerowaru Kab. Lombok Timur yang terdampak kekeringan.<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', '5.jpg'),
(254, 1, 'admin', 'Screenshot 1 ', 'screenshot-1-', 'Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 Screenshot 1 ', '911.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `halamanstatis`
--

CREATE TABLE `halamanstatis` (
  `id_halaman` int(5) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `judul_seo` varchar(100) NOT NULL,
  `isi_halaman` text NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `dibaca` int(5) NOT NULL DEFAULT 1,
  `jam` time NOT NULL,
  `hari` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `halamanstatis`
--

INSERT INTO `halamanstatis` (`id_halaman`, `judul`, `judul_seo`, `isi_halaman`, `tgl_posting`, `gambar`, `username`, `dibaca`, `jam`, `hari`) VALUES
(59, 'Kenali Kami', 'kenali-kami', '<p style=\"text-align:center\"><u><span style=\"font-size:16px\">BEM UNIVERSITA BUMIGORA MATARAM</span></u></p>\r\n\r\n<p style=\"text-align:justify\">BEM adalah organisasi mahasiswa intra kampus yang merupakan lembaga eksekutif di tingkat Universitas atau Institut. Dalam melaksanakan program-programnya, umumnya BEM memiliki beberapa departemen. Dengan semangat mahasiswa sebagai agent of change (agen pengubah) , BEM mencoba menjadi sebuah lembaga yang bisa mewadahi aspirasi mahasiswa yang memiliki semangat untuk melakukan perubahan, dalam paradigma, emosional, intelektual sekaligus nilai-nilai religius. BEM mempunyai 4 fungsi yaitu pengabdian, pergerakan, minat dan bakat serta kesejahteraan.</p>\r\n\r\n<p style=\"text-align:justify\">&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:left; height:100px; width:100px\" /><strong>DEDY KURNIAWAN</strong></p>\r\n\r\n<p>S1 ILMU KOMPUTE</p>\r\n\r\n<p><strong>PRESIDEN MAHASISWA</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"text-align:right\"><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:right; height:100px; width:100px\" /></strong><strong>HENDRI JAYADI</strong></p>\r\n\r\n<p style=\"text-align:right\">S1 ILMUKOMPUTER</p>\r\n\r\n<p style=\"text-align:right\"><strong>WAKIL PRESIDEN MAHASISWA</strong></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:left; height:100px; width:100px\" /><strong>DINA AULIA</strong></p>\r\n\r\n<p>S1 ILMU KOMPUTER</p>\r\n\r\n<p><strong>MENTRI SKERTARI KABINET</strong></p>\r\n\r\n<p style=\"text-align:right\"><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:right; height:100px; width:100px\" /></strong><strong>EKA SAFITRI</strong></p>\r\n\r\n<p style=\"text-align:right\">S1 ILMU KOMPUTER</p>\r\n\r\n<p style=\"text-align:right\"><strong>MENTRI KEUANGAN</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:left; height:100px; width:100px\" /></strong><strong>LALU WIRE SUMEKAR MAULIDIN</strong></p>\r\n\r\n<p>S1 ILMU KOMPUTE</p>\r\n\r\n<p><strong>MENGKO PERGERAKAN &amp; EKSTERNAL</strong></p>\r\n\r\n<p style=\"text-align:right\"><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:right; height:100px; width:100px\" /></strong><strong>KHALIQUL WAFIQ</strong></p>\r\n\r\n<p style=\"text-align:right\">D3 REKAYASA PERANGKAT LUNAK</p>\r\n\r\n<p style=\"text-align:right\"><strong>MENTRI LUAR NEGRI</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:left; height:100px; width:100px\" /></strong><strong>LALU SATYA IMAM RIZKY</strong></p>\r\n\r\n<p>S1&nbsp;SASTRA INGGRIS</p>\r\n\r\n<p><strong>MENTRI DALAM NEGRI</strong></p>\r\n\r\n<p style=\"text-align:right\"><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:right; height:100px; width:100px\" /><strong>DENA DWI SEPTIANA</strong></p>\r\n\r\n<p style=\"text-align:right\">S1 ILMU KOMPUTER</p>\r\n\r\n<p style=\"text-align:right\"><strong>MENTRI PSDM</strong></p>\r\n\r\n<p><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:left; height:100px; width:100px\" /></strong><strong>HERI BUDIMAN</strong></p>\r\n\r\n<p>S1 ILMU KOMPUTER</p>\r\n\r\n<p><strong>MENTRI SOSMAS</strong></p>\r\n\r\n<p style=\"text-align:right\"><strong><img alt=\"\" src=\"/BEM_ubg/asset/kcfinder/upload/files/Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-512.png\" style=\"float:right; height:100px; width:100px\" />M. HASRIN NIZAM</strong></p>\r\n\r\n<p style=\"text-align:right\">S1 ILMU KOMPUTER</p>\r\n\r\n<p style=\"text-align:right\"><strong>MENTRI KOMINFO</strong></p>\r\n', '2020-09-21', 'gou.png', 'admin', 7, '13:44:43', 'Senin'),
(58, 'Struktur BEM', 'struktur-bem', '<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Ketua BEM</strong> : Dedy Kurniawan</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Wakil Ketua</strong> : Hendri Jayadi</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri Sekretaris Kabinet :</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : Dina Aulia</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekretaris : Risma Lovia</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anggota : Zahira Irhamna</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri Keuangan </strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : Eka Safitri</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekretaris : Baiq Indah Gita Putri Cahyani</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anggota : Nurul Indah Haliah</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menko Pergerakan dan Eksternal</strong></span></span>&nbsp;:&nbsp;<span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Lalu Wire Sumekar Maulidin</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri Luar Negeri </strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : Khaliqul Wafiq</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekretaris : Erna Yuliani</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anggota : Regina Aprilia Riberu</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Vergi Rezki Amalya</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Ayu Nadhia Delina</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Adzan Naufal Azkari</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Muhrim Afandi</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Imam Makbul</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri Dalam Negeri</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : Lalu Satya Imam </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekreratis : Afif Al Hafiz</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anggota : Baiq Nina Aprilia</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Komsatun Nova Riani</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Vany Dwi Febriana</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Pramana Arya Dwi Putra</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anwar Sadat Arsi</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">I Gede Yuda Pratama</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Abdul Aziz</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri PSDM</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinatoor : Dena Dwi Septiana</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekretaris : Baiq Salsa Apriliska</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Anggota : Wawan Indrawan</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">M. Ziad Alfian </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">L. Husni Hawari</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Yusman Murohayadi </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">M. Pirman Hartadi</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">M. Riyandana Putra</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Menteri SOSMAS</strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : Heri Budiman </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekertaris : -</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">M. Taufik </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">M. Rizky Fahly -</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Silvia Hanya </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Kintun Nandini N P</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Octa Travelian Purnomo</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">L. Herpandi </span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\"><strong>Mentri KOMINFO </strong></span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Koordinator : M. Hasrin Hizam</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Sekretaris : A. Robiul Iman</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Dafa Arya M.</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Gilbian Nanda</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Wahyu Putra Yuda Dirgantoro</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Abi Mas&#39;ud</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Alif Rizky Iskandar</span></span></p>\r\n\r\n<p><span style=\"font-family:Times New Roman,serif\"><span style=\"font-size:medium\">Surya Maulana</span></span></p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p>&nbsp;</p>\r\n\r\n<p style=\"margin-left:0.5in\"><br />\r\n&nbsp;</p>\r\n\r\n<p style=\"margin-left:0.5in\"><br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n\r\n<p><br />\r\n&nbsp;</p>\r\n', '2020-09-16', 'fikg.png', 'admin', 34, '16:02:25', 'Rabu');

-- --------------------------------------------------------

--
-- Table structure for table `header`
--

CREATE TABLE `header` (
  `id_header` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `header`
--

INSERT INTO `header` (`id_header`, `judul`, `url`, `gambar`, `tgl_posting`) VALUES
(31, 'Header3', '', 'header3.jpg', '2011-04-06'),
(32, 'Header2', '', 'header1.jpg', '2011-04-06'),
(33, 'Header1', '', 'header2.jpg', '2011-04-06');

-- --------------------------------------------------------

--
-- Table structure for table `hubungi`
--

CREATE TABLE `hubungi` (
  `id_hubungi` int(5) NOT NULL,
  `nama` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `subjek` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `pesan` text COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `dibaca` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `identitas`
--

CREATE TABLE `identitas` (
  `id_identitas` int(5) NOT NULL,
  `nama_website` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `url` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `facebook` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `rekening` varchar(100) NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `meta_deskripsi` varchar(250) NOT NULL,
  `meta_keyword` varchar(250) NOT NULL,
  `favicon` varchar(50) NOT NULL,
  `maps` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `identitas`
--

INSERT INTO `identitas` (`id_identitas`, `nama_website`, `email`, `url`, `facebook`, `rekening`, `no_telp`, `meta_deskripsi`, `meta_keyword`, `favicon`, `maps`) VALUES
(1, 'BEM-UBG ', 'robbishimozuki@gmail.com', 'http://localhost/company', 'https://www.facebook.com/Badan-Eksekuti-Mahasiswa-Universitas-Bumigora-106404007697155/, https://twitter.com/dankrez48, https://plus.google.com/u/0/110715315782423039586, https://www.instagram.com/bemubgofficial/ https://youtube.com', '9000019999805', '1500000', 'Berita NTB terkini terpercaya, dan terpopuler, politik, ekonomi, tekno, otomotif, dan olahraga ditulis lengkap dan akurat.', 'berita, internasional, nasional, daerah, olahraga, otomotif, teknologi, news, hiburan, entertainment, indonesia, swarakalibata, lokomedia', 'lSmGp1UB-removebg-preview-removebg-preview.png', 'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3945.0513798742827!2d116.1145077142053!3d-8.591058793825367!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x2dcdbf5c2462a5ed%3A0xbc0f44d683d529b1!2sBumigora%20University!5e0!3m2!1sen!2sid!4v1600175799121!5m2!1sen!2sid');

-- --------------------------------------------------------

--
-- Table structure for table `iklanatas`
--

CREATE TABLE `iklanatas` (
  `id_iklanatas` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklanatas`
--

INSERT INTO `iklanatas` (`id_iklanatas`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'Jasa Pembuatan Website murah', 'admin', 'http://www.lokomedia.web.id', 'banner_asiangames.jpg', '2018-08-31');

-- --------------------------------------------------------

--
-- Table structure for table `iklantengah`
--

CREATE TABLE `iklantengah` (
  `id_iklantengah` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `iklantengah`
--

INSERT INTO `iklantengah` (`id_iklantengah`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(35, 'Coloran Bersama UBG', 'admin', 'https://www1.chester.ac.uk/study/undergraduate/events-management', 'Desain_tanpa_judul_(13).png', '2020-09-20'),
(34, 'Tahun Baru Islam', 'admin', 'https://www.canva.com/', 'Desain_tanpa_judul_(14).png', '2020-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `katajelek`
--

CREATE TABLE `katajelek` (
  `id_jelek` int(11) NOT NULL,
  `kata` varchar(60) COLLATE latin1_general_ci DEFAULT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ganti` varchar(60) COLLATE latin1_general_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `katajelek`
--

INSERT INTO `katajelek` (`id_jelek`, `kata`, `username`, `ganti`) VALUES
(4, 'sex', '', 's**'),
(2, 'bajingan', '', 'b*******'),
(3, 'bangsat', '', 'b******'),
(5, 'fuck', 'admin', 'f**k'),
(6, 'pantat', 'admin', 'p****t'),
(9, 'Anjay', 'admin', 'A***y');

-- --------------------------------------------------------

--
-- Table structure for table `kategori`
--

CREATE TABLE `kategori` (
  `id_kategori` int(5) NOT NULL,
  `nama_kategori` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `kategori_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `sidebar` int(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `kategori`
--

INSERT INTO `kategori` (`id_kategori`, `nama_kategori`, `username`, `kategori_seo`, `aktif`, `sidebar`) VALUES
(19, 'Teknologi', '', 'teknologi', 'Y', 2),
(2, 'Olahraga', '', 'olahraga', 'Y', 4),
(21, 'Ekonomi', '', 'ekonomi', 'N', 7),
(22, 'Politik', '', 'politik', 'N', 0),
(23, 'Hiburan', '', 'hiburan', 'Y', 3),
(31, 'Kesehatan', 'admin', 'kesehatan', 'Y', 5),
(36, 'Komunitas', '', 'komunitas', 'N', 0),
(34, 'Seni & Budaya', '', 'seni--budaya', 'N', 0),
(37, 'Sekitar Kita', '', 'sekitar-kita', 'N', 0),
(39, 'Internasional', '', 'internasional', 'Y', 1),
(40, 'Kuliner', '', 'kuliner', 'Y', 0),
(41, 'Metropolitan', '', 'metropolitan', 'N', 6),
(42, 'Dunia Islam', '', 'dunia-islam', 'N', 0),
(44, 'Wisata', '', 'wisata', 'N', 0),
(46, 'Daerah', '', 'daerah', 'N', 0),
(47, 'Gaya Hidup', '', 'gaya-hidup', 'N', 0),
(48, 'Hukum', '', 'hukum', 'N', 0),
(52, 'Sejarah Indonesia', 'admin', 'sejarah-indonesia', 'N', 0),
(53, 'Tokoh', 'admin', 'tokoh', 'N', 0),
(54, 'Tutorial', 'admin', 'tutorial', 'Y', 0);

-- --------------------------------------------------------

--
-- Table structure for table `komentar`
--

CREATE TABLE `komentar` (
  `id_komentar` int(5) NOT NULL,
  `id_berita` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `email` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentar`
--

INSERT INTO `komentar` (`id_komentar`, `id_berita`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`, `email`) VALUES
(84, 650, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Nice  story, Roy suryo dan Susilo bambang yudhoyono memang cucak rowo. :)   ', '2012-01-05', '00:15:45', 'N', 'dankrez48@gmail.com'),
(88, 650, 'Udin Sedunia', 'www.belajarkonseling.com', ' hm...  kae.x  perlu  juga  ne  bantuan  dari  para  konselor...:)		   ', '2012-01-13', '20:09:07', 'Y', 'www.belajarkonseling.com'),
(90, 650, 'Rizal Faizal', 'www.rizal-online.co.cc', ' asyik  aja  dehh...   ', '2012-02-25', '15:01:40', 'Y', 'www.rizal-online.co.cc'),
(91, 645, 'Eka Praja W', 'komputerkampus.com', ' makin  parah  aja  nih  ...\r\nmudah2n  bisa  berbenah  negeri  ku  yg  q  banggakan   ', '2012-03-08', '20:06:07', 'Y', 'komputerkampus.com'),
(137, 650, 'Lukmanul Hakim', '', ' saya  yakin  PHP  juga  bisa  bertahan  sampai  2030   ', '2013-01-19', '18:56:25', 'Y', 'lukmanul.haskim@gmai;.com'),
(146, 645, 'Tommy Utama', 'tommy.utama@gmail.com', ' Calon  hakim  agung  Muhammad  Daming  Sanusi  menyatakan,  hukuman  mati  tidak  layak  diberlakukan  bagi  pelaku  pemerkosaan.   ', '2014-07-21', '21:03:04', 'Y', 'tommy.utama@gmail.com'),
(147, 655, 'Agung Wicaksana', 'dankrez48@gmail.com', 'Mudah-mudahan  windows  8.2  tampilannya  lebih  keren  lagi  dari  windows  8.1 sebelumnya  yang  kurang  enak  di gunakan.  heheheee   ', '2014-07-22', '08:33:04', 'Y', 'dankrez48@gmail.com'),
(144, 650, 'Tommy Utama', 'tommy.utama@gmail.com', 'Pengamat  politik  dari  Charta  Politika,  Yunarto  Wijaya  mempertanyakan  dasar  keputusan  SBY  menunjuk  Roy  Suryo  sebagai  Menpora.   ', '2014-07-21', '20:59:16', 'Y', 'tommy.utama@gmail.com'),
(143, 650, 'Udin Sedunia', 'udin.sedunia@gmail.com', 'Menurut  Yunarto,  Roy  selama  ini  lebih  dikenal  sebagai  pakar  foto  digital  dan  video  serta  dosen  di  sebuah  perguruan  tinggi  negeri.   ', '2014-07-21', '20:57:52', 'Y', 'udin.sedunia@gmail.com'),
(148, 662, 'Agung Wicaksana', 'dankrez48@gmail.com', 'pantat negara yahudi yang sangat perlu untuk dihancurkan /  musnahkan  dan  bantai  seluruh  warga israel..!!!   ', '2014-07-24', '09:29:20', 'Y', 'dankrez48@gmail.com'),
(149, 662, 'Edo Ikfianda', 'edomuhammad90@gmail.com', 'Setelah membentuk Timnas, PSSI versi KLB pimpinan La Nyalla Mahmud Matalitti menunjuk Alfred Riedl sebagai pelatihnya.', '2014-08-09', '17:34:35', 'Y', 'edomuhammad90@gmail.com'),
(152, 650, 'Dewi Safitriir', 'dewi_safitri@gmail.com', 'Peremimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei  menyampaikan  pernyataan  kontroversial  terkait  ketegangan  di  Gaza.Israele.   ', '2014-08-17', '17:46:28', 'N', 'dewi_safitri@gmail.com'),
(153, 662, 'Agung Wicaksana', 'ww.phpmu.com', 'Anda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.\r\n\r\nAnda penyuka Transformer? Tentu hal yang paling menarik saat menonton film Transformer salah satunya adalah saat adegan transformasi yang begitu keren dari sebuah mobil atau truk menjadi robot yang gagah.', '2015-03-25', '06:10:12', 'Y', 'dankrez48@gmail.com'),
(154, 642, 'Tommy Utama', 'tommyutama.com', ' Para  pengunjuk  rasa  membawa  bendera-bendera  Palestina  dan  foro-foto  pemimpin  tertinggi  Iran,  Ayatollah  Ali  Khamenei.   ', '2016-11-24', '10:24:15', 'Y', 'tommy.utama@gmail.com'),
(162, 687, 'mas marno', '', 'maju terus indonesia', '2017-10-04', '14:32:56', 'Y', 'marnosudrajat@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `komentarvid`
--

CREATE TABLE `komentarvid` (
  `id_komentar` int(5) NOT NULL,
  `id_video` int(5) NOT NULL,
  `nama_komentar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `isi_komentar` text COLLATE latin1_general_ci NOT NULL,
  `tgl` date NOT NULL,
  `jam_komentar` time NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `komentarvid`
--

INSERT INTO `komentarvid` (`id_komentar`, `id_video`, `nama_komentar`, `url`, `isi_komentar`, `tgl`, `jam_komentar`, `aktif`) VALUES
(107, 160, 'Prabowo Subianto', 'Prabowo@gmail.com', ' Your  email  address  will  not  be  published.  Required  fields  are  marked', '2014-07-21', '13:29:29', 'N'),
(108, 163, 'Lukman Hakim', 'dankrez48@gmail.com', ' Kita  memang  harus  selamatkan  hutan  indonesia,  walau  apapun  yang  terjadi.   ', '2014-07-21', '13:31:10', 'Y'),
(109, 160, 'Lukman Hakim', 'dankrez48@gmail.com', ' Swarakalibata  V.3 sekarang  hadir  dengan  tampilan  baru  yang  pastinya  sudah  jauh  lebih  maju  dari  versi  sebelumnya.', '2014-07-21', '21:09:31', 'Y'),
(112, 166, 'Lukman Hakim', 'dankrez48@gmail.com', 'Exclusive Di IDAFF Acedemy - &quot;Social Blogging Mastery 2&quot; - Workshop 2 Hari Yang Akan Merubah Hidup Anda Di Tahun 2017. Di Bongkar Oleh Ahlinya Cara Paling Mudah Memiliki Penghasillan Sampingan Lewat Internet Hingga Jutaan Rupiah Setiap Bulannya.', '2017-01-25', '09:40:01', 'Y'),
(113, 166, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'Pemimpin tertinggi Iran, Ayatollah Ali Khamenei menyampaikan pernyataan kontroversial terkait ketegangan di Gaza. Khamenei mendorong agar Palestina terus melawan Israel. &quot;Salah satu cara untuk menghentikan rezim kurang ajar ini adalah melanjutkan perlawanan dan dan perjuangan bersenjata harus diperluas ke Tepi Barat,&quot; sebut Khamenei, seperti dikutip dari IRNA.', '2017-01-25', '09:40:55', 'Y'),
(116, 162, 'bandug atmawijaya', 'bandung_api@yahoo.com', 'tidak berprikemanusiaan', '2017-10-04', '10:56:44', 'Y'),
(118, 162, 'maskomen', 'maskomen@ojolali.com', 'komentar testing', '2017-10-04', '13:13:55', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `link`
--

CREATE TABLE `link` (
  `id_link` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) DEFAULT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `groupname` varchar(20) DEFAULT NULL,
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL,
  `gambar` varchar(30) DEFAULT NULL,
  `icon` varchar(30) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `link`
--

INSERT INTO `link` (`id_link`, `id_parent`, `nama_menu`, `link`, `aktif`, `groupname`, `urutan`, `deskripsi`, `gambar`, `icon`) VALUES
(1, 0, 'SEKILAS TENTANG KAMI', '', 'Ya', 'satu', 1, '', NULL, NULL),
(2, 1, 'TUGAS ', '#', 'Ya', '', 2, 'Badan eksekutif mahasiswa (disingkat BEM) adalah organisasi mahasiswa intra kampus yang merupakan lembaga eksekutif di tingkat pendidikan tinggi. Dalam melaksanakan program-programnya, umumnya BEM memiliki beberapa kementerian dan departemen.', 'SINERGI_PERJUANGAN2.png', NULL),
(5, 1, 'MISI', '', 'Ya', '', 4, 'Membangun internal berlandaskan kekeluargaan, merangkul himpunan jurusan dan lembaga kemahasiswaan Universitas Bumigora,  meguatkan media aspirasi untuk melayani mahasiswa, memfasilitasi minat bakat, keilmuan dan karakter UBG, dan membagun kerja sama antar lembaga kampus', 'SINERGI_PERJUANGAN1.png', ''),
(4, 1, 'VISI', '', 'Ya', '', 3, 'Menjadikan BEM Universitas Bumigora sebagai lembaga yang interaktif kepada mahasiswa dan masyarakat untuk bersinergi dalam menciptakan inovasi.', 'SINERGI_PERJUANGAN.png', '');

-- --------------------------------------------------------

--
-- Table structure for table `logo`
--

CREATE TABLE `logo` (
  `id_logo` int(5) NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `logo`
--

INSERT INTO `logo` (`id_logo`, `gambar`) VALUES
(15, 'WhatsApp_Image_2020-03-10_at_04_18_39-removebg-preview_(1)2.png');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `id_menu` int(5) NOT NULL,
  `id_parent` int(5) NOT NULL DEFAULT 0,
  `nama_menu` varchar(30) NOT NULL,
  `link` varchar(100) NOT NULL,
  `aktif` enum('Ya','Tidak') NOT NULL DEFAULT 'Ya',
  `position` enum('Top','Bottom') DEFAULT 'Bottom',
  `urutan` int(3) NOT NULL,
  `deskripsi` text DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id_menu`, `id_parent`, `nama_menu`, `link`, `aktif`, `position`, `urutan`, `deskripsi`) VALUES
(129, 0, 'Tentang Kami', '#', 'Ya', 'Bottom', 1, 'BEM sebagai organisasi mahasiswa untuk tingkat Universitas ataupun institute. Tugas Dari BEM tersebut pun melingkupi banyak hal. Mulai melaksanakan program kerja (proker) yang ada di kampus hingga menjadi perwakilan aspirasi mahasiswa.'),
(131, 134, 'Sejarah Perusahaan', 'halaman/detail/sejarah-perusahaan', 'Ya', 'Bottom', 2, ''),
(169, 168, 'Kenali Kami', 'halaman/detail/kenali-kami', 'Ya', '', 0, ''),
(151, 0, 'Kepengurusan', '#', 'Ya', 'Bottom', 1, 'Struktur Kepengurusan Badan Eksekuti Mahasiswa Bumigora Matram Kabinet Sinergi Perjuangan beserta program kerja para mentri'),
(168, 129, 'Info Kami', '#', 'Ya', 'Bottom', 1, ''),
(153, 151, 'Stuktur Kepengurusan ', '#', 'Ya', 'Bottom', 1, ''),
(154, 153, 'Struktur BEM', 'halaman/detail/struktur-bem', 'Ya', 'Bottom', 1, ''),
(142, 0, 'MEDIA & INFORMASI', '#', 'Ya', 'Bottom', 3, 'Dalam memenuhi kebutuhan informasi bagi mahasiswa, anggota BEM dan masyarakat, Bem bumigora memberikan akses yang luas untuk dapat mencari informasi seputar indonesia dan kegiatan Bem UBG.'),
(143, 142, 'Berita & Artikel', '#', 'Ya', 'Bottom', 1, ''),
(144, 142, 'AGENDA', '#', 'Ya', 'Bottom', 2, ''),
(145, 144, 'Agenda Kegiatan', 'agenda', 'Ya', 'Bottom', 1, ''),
(146, 143, 'Berita', 'berita', 'Ya', 'Bottom', 1, ''),
(147, 143, 'Galeri', 'albums', 'Ya', 'Bottom', 2, ''),
(148, 143, 'Video', 'playlist', 'Ya', 'Bottom', 3, '');

-- --------------------------------------------------------

--
-- Table structure for table `modul`
--

CREATE TABLE `modul` (
  `id_modul` int(5) NOT NULL,
  `nama_modul` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `link` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `static_content` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `publish` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `status` enum('user','admin') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'Y',
  `urutan` int(5) NOT NULL,
  `link_seo` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `modul`
--

INSERT INTO `modul` (`id_modul`, `nama_modul`, `username`, `link`, `static_content`, `gambar`, `publish`, `status`, `aktif`, `urutan`, `link_seo`) VALUES
(2, 'Manajemen User', 'admin', 'manajemenuser', '', '', 'Y', 'user', 'Y', 0, ''),
(18, 'Berita', 'admin', 'listberita', '', '', 'Y', 'user', 'Y', 0, ''),
(71, 'Background Website', 'admin', 'background', '', '', 'N', 'admin', 'N', 0, ''),
(10, 'Manajemen Modul', 'admin', 'manajemenmodul', '', '', 'Y', 'user', 'Y', 0, ''),
(31, 'Kategori Berita ', 'admin', 'kategorikategori', '', '', 'Y', 'user', 'Y', 0, ''),
(33, 'Jajak Pendapat', 'admin', 'jajakpendapat', '', '', 'Y', 'user', 'Y', 0, ''),
(34, 'Tag Berita', 'admin', 'tagberita', '', '', 'Y', 'user', 'Y', 0, ''),
(35, 'Komentar Berita', 'admin', 'komentarberita', '', '', 'Y', 'user', 'Y', 0, ''),
(41, 'Agenda', 'admin', 'agenda', '', '', 'Y', 'user', 'Y', 0, ''),
(43, 'Berita Foto', 'admin', 'album', '', '', 'Y', 'user', 'Y', 0, ''),
(44, 'Galeri Berita Foto', 'admin', 'gallery', '', '', 'Y', 'user', 'Y', 0, ''),
(45, 'Template Website', 'admin', 'templatewebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(46, 'Sensor Kata', 'admin', 'sensorkomentar', '', '', 'Y', 'user', 'Y', 0, ''),
(61, 'Identitas Website', 'admin', 'identitaswebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(57, 'Menu Website', 'admin', 'menuwebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(59, 'Halaman Baru', 'admin', 'halamanbaru', '', '', 'Y', 'user', 'Y', 0, ''),
(62, 'Video', 'admin', 'video', '', '', 'Y', 'user', 'Y', 0, ''),
(63, 'Playlist Video', 'admin', 'playlist', '', '', 'Y', 'user', 'Y', 0, ''),
(64, 'Tag Video', 'admin', 'tagvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(65, 'Komentar Video', 'admin', 'komentarvideo', '', '', 'Y', 'user', 'Y', 0, ''),
(66, 'Logo Website', 'admin', 'logowebsite', '', '', 'Y', 'user', 'Y', 0, ''),
(67, 'Iklan Sidebar', 'admin', 'iklansidebar', '', '', 'N', 'admin', 'N', 0, ''),
(68, 'Iklan Home', 'admin', 'iklanhome', '', '', 'N', 'admin', 'N', 0, ''),
(69, 'Iklan Atas', 'admin', 'iklanatas', '', '', 'N', 'admin', 'N', 0, ''),
(70, 'Pesan Masuk', 'admin', 'pesanmasuk', '', '', 'Y', 'user', 'Y', 0, ''),
(72, 'Sekilas Info', 'admin', 'sekilasinfo', '', '', 'N', 'admin', 'N', 0, ''),
(73, 'Yahoo Messanger', 'admin', 'ym', '', '', 'N', 'admin', 'N', 0, ''),
(74, 'Download Area', 'admin', 'download', '', '', 'Y', 'admin', 'Y', 0, ''),
(75, 'Alamat Kontak', 'admin', 'alamat', '', '', 'Y', 'admin', 'Y', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `mod_alamat`
--

CREATE TABLE `mod_alamat` (
  `id_alamat` int(5) NOT NULL,
  `alamat` text CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `mod_alamat`
--

INSERT INTO `mod_alamat` (`id_alamat`, `alamat`) VALUES
(1, '<p><strong>Alamat&nbsp; :&nbsp;</strong>Jl. Ismail Marzuki No.22, Cilinaya, Kec. Cakranegara, Kota Mataram, Nusa Tenggara Bar. 83127</p>\r\n\r\n<p><strong>Telpon :</strong> +62370634498</p>\r\n\r\n<p><strong>Fax :</strong> 021 88339740</p>\r\n\r\n<p><strong>email : </strong>robbishimozuki@gmail.com</p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `mod_ym`
--

CREATE TABLE `mod_ym` (
  `id` int(11) NOT NULL,
  `nama` varchar(255) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `ym_icon` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pasangiklan`
--

CREATE TABLE `pasangiklan` (
  `id_pasangiklan` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `url` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `pasangiklan`
--

INSERT INTO `pasangiklan` (`id_pasangiklan`, `judul`, `username`, `url`, `gambar`, `tgl_posting`) VALUES
(1, 'PMB Universitas Bumigora Mataram', 'admin', 'http://pmb.universitasbumigora.ac.id/v.2019/#/', 'lokomedia.png', '2020-09-20'),
(2, 'Universitas Bumigora Mataram', 'admin', 'https://universitasbumigora.ac.id/', 'lawan-korupsi.png', '2020-09-20');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

CREATE TABLE `playlist` (
  `id_playlist` int(5) NOT NULL,
  `jdl_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `playlist_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `gbr_playlist` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id_playlist`, `jdl_playlist`, `username`, `playlist_seo`, `gbr_playlist`, `aktif`) VALUES
(57, 'Penyaluran Air Bersih Di Kecamatan Jerowaru Kabupaten Lombok Timur', 'admin', 'penyaluran-air-bersih-di-kecamatan-jerowaru-kabupaten-lombok-timur', 'Web_Photo_Editor.jpg', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `poling`
--

CREATE TABLE `poling` (
  `id_poling` int(5) NOT NULL,
  `pilihan` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `status` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `rating` int(5) NOT NULL DEFAULT 0,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `poling`
--

INSERT INTO `poling` (`id_poling`, `pilihan`, `status`, `username`, `rating`, `aktif`) VALUES
(18, 'Siapa yang layak jadi juara Liga Champions 2017-2018 ', 'Pertanyaan', 'admin', 0, 'Y'),
(25, 'Real Madrid', 'Jawaban', 'admin', 25, 'Y'),
(31, 'Juventus', 'Jawaban', 'admin', 1, 'Y'),
(32, 'Manchester City', 'Jawaban', 'admin', 5, 'Y'),
(33, 'Paris Saint Germain', 'Jawaban', 'admin', 10, 'Y'),
(35, 'Manchester United', 'Jawaban', 'admin', 6, 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `sekilasinfo`
--

CREATE TABLE `sekilasinfo` (
  `id_sekilas` int(5) NOT NULL,
  `info` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `tgl_posting` date NOT NULL,
  `gambar` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'Y'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `sekilasinfo`
--

INSERT INTO `sekilasinfo` (`id_sekilas`, `info`, `tgl_posting`, `gambar`, `aktif`) VALUES
(1, 'Anak yang mengalami gangguan tidur, cenderung memakai obat2an dan alkohol berlebih saat dewasa.', '2015-04-11', '', 'Y'),
(2, 'WHO merilis, 30 persen anak di dunia kecanduan komputer dan menonton televisi.', '2015-03-16', '', 'Y'),
(3, 'Menurut peneliti di Detroit, orang yang selalu tersenyum lebar cenderung hidup lama.', '2015-04-17', '', 'Y'),
(4, 'Menurut United Stated Trade Representatives, 25% obat yang beredar di adalah palsu.', '2015-04-17', '', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `statistik`
--

CREATE TABLE `statistik` (
  `ip` varchar(20) NOT NULL DEFAULT '',
  `tanggal` date NOT NULL,
  `hits` int(10) NOT NULL DEFAULT 1,
  `online` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `statistik`
--

INSERT INTO `statistik` (`ip`, `tanggal`, `hits`, `online`) VALUES
('223.255.231.148', '2014-05-06', 1, '1399357334'),
('223.255.231.147', '2014-05-15', 3, '1400119147'),
('223.255.224.73', '2014-05-15', 12, '1400123797'),
('223.255.224.69', '2014-05-16', 2, '1400215103'),
('118.96.51.231', '2014-05-16', 19, '1400233044'),
('223.255.231.146', '2014-05-16', 2, '1400228049'),
('::1', '2014-06-20', 2, '1403230579'),
('::1', '2014-06-22', 8, '1403436591'),
('223.255.231.154', '2014-06-26', 1, '1403739948'),
('223.255.231.148', '2014-06-26', 6, '1403745715'),
('223.255.224.74', '2014-06-26', 1, '1403748060'),
('223.255.224.69', '2014-06-26', 1, '1403753239'),
('223.255.224.77', '2014-06-29', 1, '1404039342'),
('::1', '2014-07-02', 6, '1404277263'),
('127.0.0.1', '2014-07-17', 2, '1405582494'),
('127.0.0.1', '2014-07-21', 1, '1405929828'),
('36.76.60.43', '2014-07-21', 1, '1405951864'),
('223.255.231.154', '2014-07-21', 2, '1405957200'),
('223.255.227.21', '2014-07-22', 1, '1405995171'),
('223.255.231.146', '2014-07-22', 1, '1405997152'),
('223.255.227.21', '2014-07-23', 1, '1406100212'),
('223.255.227.17', '2014-07-23', 1, '1406104552'),
('223.255.227.23', '2014-07-24', 1, '1406168095'),
('223.255.231.153', '2014-07-24', 1, '1406204439'),
('223.255.231.146', '2014-07-25', 1, '1406268985'),
('180.76.5.193', '2014-08-06', 1, '1407302738'),
('180.76.5.23', '2014-08-06', 1, '1407304739'),
('202.67.36.241', '2014-08-06', 1, '1407305643'),
('198.148.27.22', '2014-08-06', 1, '1407306703'),
('180.251.170.42', '2014-08-06', 7, '1407310167'),
('128.199.171.191', '2014-08-06', 3, '1407323435'),
('223.255.231.149', '2014-08-06', 2, '1407309879'),
('223.255.227.28', '2014-08-06', 8, '1407311801'),
('103.24.49.242', '2014-08-06', 1, '1407312326'),
('223.255.231.146', '2014-08-06', 1, '1407313297'),
('180.214.233.34', '2014-08-06', 1, '1407321063'),
('66.249.77.87', '2014-08-06', 1, '1407323509'),
('223.255.227.30', '2014-08-06', 1, '1407325862'),
('180.254.207.13', '2014-08-06', 5, '1407330687'),
('114.79.13.199', '2014-08-06', 1, '1407336900'),
('202.152.199.34', '2014-08-06', 7, '1407337100'),
('180.76.6.21', '2014-08-07', 1, '1407347753'),
('114.79.13.55', '2014-08-07', 3, '1407354277'),
('114.125.41.136', '2014-08-07', 1, '1407352625'),
('180.76.6.147', '2014-08-07', 1, '1407355344'),
('180.76.6.64', '2014-08-07', 1, '1407367237'),
('69.171.247.116', '2014-08-07', 1, '1407379834'),
('69.171.247.119', '2014-08-07', 1, '1407379834'),
('69.171.247.114', '2014-08-07', 1, '1407379834'),
('69.171.247.115', '2014-08-07', 1, '1407379834'),
('202.67.34.29', '2014-08-07', 2, '1407380415'),
('36.76.52.112', '2014-08-07', 1, '1407380496'),
('223.255.231.145', '2014-08-07', 5, '1407387045'),
('223.255.231.153', '2014-08-07', 2, '1407388883'),
('223.255.227.27', '2014-08-07', 1, '1407393087'),
('180.76.5.25', '2014-08-07', 1, '1407394749'),
('223.255.231.146', '2014-08-07', 1, '1407397183'),
('157.55.39.248', '2014-08-07', 1, '1407397231'),
('180.254.200.55', '2014-08-07', 2, '1407399466'),
('110.139.67.15', '2014-08-07', 8, '1407399221'),
('180.242.17.64', '2014-08-07', 11, '1407414373'),
('141.0.8.59', '2014-08-07', 1, '1407412384'),
('110.76.149.91', '2014-08-07', 1, '1407422367'),
('223.255.231.151', '2014-08-07', 3, '1407426943'),
('82.145.209.206', '2014-08-07', 1, '1407430369'),
('223.255.227.28', '2014-08-08', 3, '1407469589'),
('66.93.156.50', '2014-08-08', 1, '1407472340'),
('202.62.17.47', '2014-08-08', 1, '1407484393'),
('36.70.135.163', '2014-08-08', 6, '1407485987'),
('173.252.74.115', '2014-08-08', 1, '1407485153'),
('118.96.58.136', '2014-08-08', 2, '1407486347'),
('114.79.29.68', '2014-08-08', 1, '1407502537'),
('66.220.156.113', '2014-08-08', 1, '1407503375'),
('112.215.66.79', '2014-08-08', 1, '1407503381'),
('125.163.113.156', '2014-08-08', 9, '1407508824'),
('180.76.5.94', '2014-08-08', 1, '1407508624'),
('120.172.9.192', '2014-08-08', 1, '1407515634'),
('202.67.41.51', '2014-08-08', 1, '1407515702'),
('180.253.243.222', '2014-08-09', 1, '1407542724'),
('36.75.224.20', '2014-08-09', 1, '1407548005'),
('180.76.5.65', '2014-08-09', 1, '1407548865'),
('66.249.77.77', '2014-08-09', 2, '1407582711'),
('180.76.6.137', '2014-08-09', 1, '1407553037'),
('66.249.77.87', '2014-08-09', 1, '1407554836'),
('66.249.77.97', '2014-08-09', 2, '1407562640'),
('120.177.44.126', '2014-08-09', 2, '1407558625'),
('223.255.231.145', '2014-08-09', 3, '1407558663'),
('36.73.64.113', '2014-08-09', 1, '1407558640'),
('36.72.187.12', '2014-08-09', 1, '1407560351'),
('202.67.41.51', '2014-08-09', 1, '1407561096'),
('114.125.60.68', '2014-08-09', 4, '1407561514'),
('202.67.40.50', '2014-08-09', 1, '1407562007'),
('180.76.6.136', '2014-08-09', 1, '1407562581'),
('110.232.81.2', '2014-08-09', 5, '1407563275'),
('146.185.28.59', '2014-08-09', 1, '1407564768'),
('120.174.157.139', '2014-08-09', 1, '1407568139'),
('223.255.227.23', '2014-08-09', 2, '1407570163'),
('193.105.210.119', '2014-08-09', 1, '1407577518'),
('125.162.57.66', '2014-08-09', 2, '1407579822'),
('180.241.163.1', '2014-08-09', 8, '1407580493'),
('36.76.44.163', '2014-08-09', 6, '1407603574'),
('180.76.5.144', '2014-08-09', 1, '1407582757'),
('107.167.103.40', '2014-08-09', 1, '1407586189'),
('36.68.48.23', '2014-08-09', 1, '1407586974'),
('192.99.218.151', '2014-08-09', 4, '1407587574'),
('36.74.55.24', '2014-08-09', 3, '1407589161'),
('118.97.212.184', '2014-08-09', 8, '1407595169'),
('36.72.114.118', '2014-08-09', 2, '1407597684'),
('180.76.5.153', '2014-08-09', 1, '1407602870'),
('180.76.5.59', '2014-08-09', 1, '1407603153'),
('180.76.5.18', '2014-08-10', 1, '1407606581'),
('180.254.155.156', '2014-08-10', 2, '1407607003'),
('180.76.6.42', '2014-08-10', 1, '1407608363'),
('36.68.242.217', '2014-08-10', 5, '1407627100'),
('66.249.77.77', '2014-08-10', 2, '1407633623'),
('202.67.44.64', '2014-08-10', 1, '1407629598'),
('180.76.6.43', '2014-08-10', 1, '1407631270'),
('118.97.212.182', '2014-08-10', 4, '1407632228'),
('139.0.102.140', '2014-08-10', 1, '1407633944'),
('66.249.77.87', '2014-08-10', 1, '1407636902'),
('66.249.77.97', '2014-08-10', 1, '1407639983'),
('180.76.6.159', '2014-08-10', 1, '1407640798'),
('118.97.212.181', '2014-08-10', 3, '1407642556'),
('36.68.46.37', '2014-08-10', 2, '1407642940'),
('180.76.5.69', '2014-08-10', 1, '1407645158'),
('180.76.5.80', '2014-08-10', 1, '1407648268'),
('180.76.5.143', '2014-08-10', 1, '1407650068'),
('223.255.231.145', '2014-08-10', 1, '1407650216'),
('180.76.6.149', '2014-08-10', 1, '1407657020'),
('36.77.183.218', '2014-08-10', 2, '1407657119'),
('127.0.0.1', '2014-08-10', 2, '1407660057'),
('127.0.0.1', '2014-08-11', 2, '1407725194'),
('127.0.0.1', '2014-08-12', 1, '1407862185'),
('127.0.0.1', '2014-08-13', 1, '1407899819'),
('127.0.0.1', '2014-08-17', 44, '1408287630'),
('127.0.0.1', '2014-08-18', 253, '1408372590'),
('127.0.0.1', '2014-08-19', 4, '1408413702'),
('::1', '2014-08-19', 90, '1408433250'),
('::1', '2014-08-31', 1, '1409487043'),
('::1', '2015-03-11', 11, '1426061663'),
('::1', '2015-03-12', 1, '1426114982'),
('::1', '2015-03-15', 32, '1426430637'),
('::1', '2015-03-18', 137, '1426666506'),
('::1', '2015-03-19', 143, '1426751746'),
('::1', '2015-03-21', 198, '1426912294'),
('::1', '2015-03-22', 554, '1427039069'),
('127.0.0.1', '2015-03-22', 1, '1427030317'),
('::1', '2015-03-23', 275, '1427093113'),
('::1', '2015-03-24', 42, '1427179474'),
('::1', '2015-03-25', 45, '1427251499'),
('39.225.164.2', '2015-05-14', 7, '1431584409'),
('119.110.72.130', '2015-05-14', 30, '1431595368'),
('89.145.95.2', '2015-05-14', 1, '1431582645'),
('66.220.158.118', '2015-05-14', 1, '1431582842'),
('66.220.158.115', '2015-05-14', 1, '1431582852'),
('66.220.158.112', '2015-05-14', 3, '1431595371'),
('66.220.158.119', '2015-05-14', 1, '1431582942'),
('114.125.43.185', '2015-05-14', 5, '1431602132'),
('119.110.72.130', '2015-05-15', 1, '1431673658'),
('114.125.45.206', '2015-05-16', 18, '1431741581'),
('66.220.158.116', '2015-05-16', 1, '1431741049'),
('66.220.158.118', '2015-05-16', 1, '1431741224'),
('66.220.158.114', '2015-05-16', 1, '1431741233'),
('39.229.6.148', '2015-05-16', 11, '1431791037'),
('39.225.236.155', '2015-05-17', 8, '1431862096'),
('119.110.72.130', '2015-05-19', 6, '1432006569'),
('89.145.95.42', '2015-05-19', 2, '1432006661'),
('114.121.133.117', '2015-05-19', 3, '1432046663'),
('124.195.114.65', '2015-05-28', 16, '1432832381'),
('66.220.158.119', '2015-05-28', 1, '1432831000'),
('66.220.158.115', '2015-05-28', 1, '1432831013'),
('66.220.158.116', '2015-05-28', 1, '1432832385'),
('124.195.114.65', '2015-05-29', 77, '1432836214'),
('66.220.158.113', '2015-05-29', 1, '1432835961'),
('66.249.84.178', '2015-05-29', 1, '1432836220'),
('103.246.200.14', '2015-05-29', 1, '1432851867'),
('103.246.200.59', '2015-05-29', 1, '1432851916'),
('114.124.5.250', '2015-05-29', 6, '1432852876'),
('173.252.105.114', '2015-05-29', 1, '1432852770'),
('120.180.175.150', '2015-05-29', 36, '1432864082'),
('103.246.200.50', '2015-05-29', 1, '1432863615'),
('103.246.200.1', '2015-05-29', 1, '1432863650'),
('103.246.200.33', '2015-05-29', 1, '1432863711'),
('103.246.200.44', '2015-05-29', 1, '1432863795'),
('120.174.144.115', '2015-05-29', 1, '1432908445'),
('119.110.72.130', '2015-05-29', 27, '1432912022'),
('173.252.90.117', '2015-05-29', 1, '1432910852'),
('173.252.90.116', '2015-05-29', 1, '1432910873'),
('173.252.90.118', '2015-05-29', 1, '1432911344'),
('173.252.90.122', '2015-05-29', 1, '1432911470'),
('66.249.84.190', '2015-05-30', 1, '1432945579'),
('39.254.117.222', '2015-05-30', 1, '1432991226'),
('66.249.84.178', '2015-05-31', 1, '1433037242'),
('120.176.92.190', '2015-06-01', 3, '1433128955'),
('66.102.6.210', '2015-06-01', 1, '1433134430'),
('120.164.44.28', '2015-06-01', 13, '1433149419'),
('124.195.118.227', '2015-06-01', 1, '1433170960'),
('120.177.28.244', '2015-06-02', 8, '1433220043'),
('66.249.84.190', '2015-06-02', 1, '1433247837'),
('120.190.75.179', '2015-06-03', 7, '1433302768'),
('119.110.72.130', '2015-06-03', 4, '1433302761'),
('89.145.95.2', '2015-06-03', 1, '1433302690'),
('66.249.71.147', '2015-06-07', 46, '1433696370'),
('66.249.71.130', '2015-06-07', 30, '1433696150'),
('66.249.71.164', '2015-06-07', 37, '1433696154'),
('173.252.74.113', '2015-06-07', 8, '1433694061'),
('173.252.74.117', '2015-06-07', 3, '1433676319'),
('66.249.64.57', '2015-06-07', 1, '1433674283'),
('173.252.88.89', '2015-06-07', 5, '1433677999'),
('173.252.88.86', '2015-06-07', 2, '1433677597'),
('173.252.74.119', '2015-06-07', 7, '1433694862'),
('66.249.79.117', '2015-06-07', 1, '1433674983'),
('173.252.88.84', '2015-06-07', 2, '1433676738'),
('173.252.74.115', '2015-06-07', 3, '1433676460'),
('173.252.74.114', '2015-06-07', 2, '1433694204'),
('173.252.74.118', '2015-06-07', 3, '1433676180'),
('173.252.74.112', '2015-06-07', 5, '1433695314'),
('173.252.88.85', '2015-06-07', 2, '1433677804'),
('173.252.88.90', '2015-06-07', 1, '1433676251'),
('173.252.74.116', '2015-06-07', 5, '1433695249'),
('173.252.88.87', '2015-06-07', 2, '1433677488'),
('173.252.88.88', '2015-06-07', 1, '1433677370'),
('66.249.79.130', '2015-06-07', 1, '1433694848'),
('66.220.156.116', '2015-06-07', 2, '1433696197'),
('66.249.67.104', '2015-06-07', 1, '1433696147'),
('66.220.156.112', '2015-06-07', 2, '1433696173'),
('66.220.146.22', '2015-06-07', 1, '1433696162'),
('66.249.67.117', '2015-06-07', 1, '1433696288'),
('66.220.156.114', '2015-06-07', 1, '1433696309'),
('66.220.156.117', '2015-06-08', 3, '1433711204'),
('66.249.71.164', '2015-06-08', 32, '1433779112'),
('66.220.146.25', '2015-06-08', 2, '1433736854'),
('66.220.156.116', '2015-06-08', 2, '1433709422'),
('66.249.71.147', '2015-06-08', 29, '1433748751'),
('66.220.156.112', '2015-06-08', 4, '1433715007'),
('66.220.146.20', '2015-06-08', 1, '1433696744'),
('66.249.71.130', '2015-06-08', 38, '1433777391'),
('66.220.156.118', '2015-06-08', 2, '1433712628'),
('66.220.146.27', '2015-06-08', 1, '1433712556'),
('66.220.146.26', '2015-06-08', 1, '1433712746'),
('66.249.67.104', '2015-06-08', 4, '1433746797'),
('66.220.146.22', '2015-06-08', 1, '1433714244'),
('66.220.156.115', '2015-06-08', 2, '1433714821'),
('66.249.67.117', '2015-06-08', 2, '1433780504'),
('120.176.251.49', '2015-06-08', 2, '1433737104'),
('66.220.156.119', '2015-06-08', 1, '1433737457'),
('66.249.71.147', '2015-06-09', 3, '1433836081'),
('66.249.71.130', '2015-06-09', 4, '1433835126'),
('66.249.67.104', '2015-06-09', 1, '1433788622'),
('66.249.71.164', '2015-06-09', 1, '1433823064'),
('66.249.71.130', '2015-06-10', 5, '1433953790'),
('66.249.67.117', '2015-06-10', 1, '1433911605'),
('66.249.71.164', '2015-06-10', 3, '1433954890'),
('66.249.71.147', '2015-06-10', 2, '1433953573'),
('66.249.71.147', '2015-06-11', 1, '1433957808'),
('66.249.71.164', '2015-06-11', 2, '1433990805'),
('68.180.228.104', '2015-06-11', 1, '1433975257'),
('66.249.71.130', '2015-06-11', 1, '1433991891'),
('36.68.28.19', '2015-06-14', 5, '1434224041'),
('120.164.46.127', '2015-06-14', 2, '1434239557'),
('66.249.67.248', '2015-06-15', 1, '1434362861'),
('104.193.10.50', '2015-06-15', 3, '1434372762'),
('104.193.10.50', '2015-06-16', 2, '1434454308'),
('36.80.234.114', '2015-06-16', 4, '1434443273'),
('173.252.74.115', '2015-06-16', 1, '1434443264'),
('173.252.74.114', '2015-06-16', 1, '1434443279'),
('119.110.72.130', '2015-06-16', 1, '1434467216'),
('124.195.116.71', '2015-06-17', 3, '1434551738'),
('120.184.130.21', '2015-06-27', 1, '1435386862'),
('66.249.84.246', '2015-06-27', 1, '1435387150'),
('120.176.176.106', '2015-06-28', 7, '1435461088'),
('66.220.158.114', '2015-06-28', 1, '1435461007'),
('66.249.84.129', '2015-06-28', 1, '1435466083'),
('66.249.84.246', '2015-06-29', 2, '1435563211'),
('66.249.84.252', '2015-06-29', 1, '1435563206'),
('66.249.84.246', '2015-06-30', 3, '1435677685'),
('66.249.84.252', '2015-06-30', 1, '1435645799'),
('66.249.84.252', '2015-07-01', 1, '1435710707'),
('66.249.84.129', '2015-07-01', 1, '1435711780'),
('120.177.18.200', '2015-07-02', 1, '1435824891'),
('::1', '2015-11-25', 15, '1448407930'),
('::1', '2015-12-01', 12, '1448944568'),
('::1', '2015-12-03', 9, '1449138520'),
('::1', '2015-12-05', 26, '1449279360'),
('::1', '2015-12-07', 4, '1449442678'),
('::1', '2015-12-08', 8, '1449532582'),
('::1', '2015-12-13', 31, '1449974628'),
('::1', '2015-12-18', 9, '1450418535'),
('::1', '2015-12-21', 10, '1450654644'),
('::1', '2015-12-24', 3, '1450917714'),
('::1', '2015-12-25', 4, '1451037761'),
('::1', '2015-12-26', 5, '1451086546'),
('::1', '2016-01-01', 1, '1451626224'),
('::1', '2016-01-12', 2, '1452564572'),
('::1', '2016-01-16', 7, '1452913899'),
('::1', '2016-01-17', 150, '1453036730'),
('::1', '2016-07-24', 24, '1469318037'),
('::1', '2016-07-29', 1, '1469767572'),
('::1', '2016-07-31', 1, '1469936872'),
('::1', '2016-08-01', 14, '1470019073'),
('::1', '2016-08-12', 4, '1470940786'),
('::1', '2016-08-14', 3, '1471191885'),
('::1', '2016-08-22', 5, '1471851644'),
('::1', '2016-08-26', 4, '1472207940'),
('::1', '2016-08-29', 9, '1472475500'),
('::1', '2016-08-30', 1, '1472531831'),
('::1', '2016-09-13', 4, '1473760584'),
('::1', '2016-09-16', 7, '1473998550'),
('::1', '2016-09-17', 3, '1474076080'),
('::1', '2016-09-20', 4, '1474335445'),
('::1', '2016-09-21', 5, '1474470987'),
('::1', '2016-09-26', 8, '1474866854'),
('::1', '2016-11-21', 20, '1479719811'),
('::1', '2016-11-22', 26, '1479795839'),
('::1', '2016-12-24', 1, '1482592503'),
('::1', '2016-12-23', 2, '1482451494'),
('::1', '2016-12-20', 7, '1482205377'),
('::1', '2016-12-14', 4, '1481717872'),
('::1', '2016-12-13', 24, '1481593512'),
('::1', '2016-12-09', 1, '1481243159'),
('::1', '2016-12-03', 3, '1480741491'),
('::1', '2016-11-28', 32, '1480303392'),
('::1', '2016-11-27', 2, '1480224412'),
('::1', '2016-11-24', 403, '1479984680'),
('::1', '2016-11-23', 2, '1479913316'),
('::1', '2017-01-03', 9, '1483421812'),
('::1', '2017-01-04', 2, '1483534977'),
('::1', '2017-01-05', 3, '1483627230'),
('::1', '2017-01-14', 1, '1484352852'),
('::1', '2017-01-17', 3, '1484663823'),
('::1', '2017-01-25', 12, '1485359750'),
('::1', '2017-01-26', 37, '1485414680'),
('::1', '2017-01-27', 70, '1485508785'),
('::1', '2017-01-28', 1, '1485567010'),
('::1', '2017-02-04', 1, '1486213804'),
('::1', '2017-02-09', 14, '1486659480'),
('::1', '2017-02-10', 3, '1486684650'),
('::1', '2017-02-11', 11, '1486773431'),
('::1', '2017-02-12', 6, '1486869838'),
('::1', '2017-02-13', 5, '1486995163'),
('::1', '2017-02-15', 3, '1487123924'),
('::1', '2017-02-21', 1, '1487659967'),
('::1', '2017-02-23', 7, '1487832476'),
('::1', '2017-02-26', 4, '1488064851'),
('::1', '2017-03-13', 44, '1489366890'),
('::1', '2017-03-17', 24, '1489744337'),
('::1', '2017-03-20', 1, '1489988038'),
('::1', '2017-03-25', 1, '1490413626'),
('::1', '2017-03-29', 7, '1490744633'),
('::1', '2017-04-02', 1, '1491122695'),
('::1', '2017-04-06', 56, '1491462329'),
('::1', '2017-04-07', 59, '1491524075'),
('::1', '2017-04-09', 20, '1491711058'),
('::1', '2017-04-11', 9, '1491877995'),
('::1', '2017-04-12', 124, '1492006218'),
('::1', '2017-04-13', 53, '1492088580'),
('::1', '2017-05-14', 133, '1494767093'),
('::1', '2017-05-20', 167, '1495299592'),
('::1', '2017-05-21', 234, '1495359950'),
('::1', '2017-05-29', 1, '1496031966'),
('::1', '2017-08-04', 2, '1501862778'),
('::1', '2017-08-05', 3, '1501890677'),
('::1', '2017-09-13', 5, '1505272460'),
('::1', '2017-09-22', 5, '1506065936'),
('::1', '2017-09-24', 6, '1506263121'),
('::1', '2017-09-27', 1, '1506491577'),
('::1', '2017-09-28', 20, '1506614988'),
('::1', '2017-09-29', 308, '1506696202'),
('::1', '2017-09-30', 495, '1506783608'),
('::1', '2017-10-01', 77, '1506868529'),
('::1', '2017-10-02', 353, '1506962237'),
('::1', '2017-10-03', 16, '1507035971'),
('::1', '2017-10-04', 159, '1507123395'),
('::1', '2017-10-05', 38, '1507218119'),
('::1', '2017-10-06', 68, '1507275289'),
('::1', '2017-10-07', 1, '1507361033'),
('::1', '2017-10-08', 1, '1507413903'),
('::1', '2017-10-11', 4, '1507704206'),
('::1', '2017-10-31', 8, '1509435169'),
('::1', '2017-11-11', 1, '1510417532'),
('::1', '2017-11-12', 45, '1510481123'),
('::1', '2017-11-13', 38, '1510568837'),
('::1', '2018-08-25', 30, '1535191969'),
('::1', '2018-08-26', 2, '1535246562'),
('::1', '2018-08-27', 7, '1535378738'),
('::1', '2018-08-30', 1, '1535576820'),
('::1', '2018-08-31', 9, '1535732014'),
('110.138.150.110', '2018-12-03', 2, '1543855812'),
('110.138.150.110', '2018-12-04', 11, '1543857572'),
('115.178.251.153', '2018-12-08', 1, '1544231764'),
('141.8.142.101', '2018-12-13', 1, '1544651736'),
('::1', '2018-12-15', 3, '1544864222'),
('::1', '2019-11-08', 87, '1573232172'),
('::1', '2019-11-09', 54, '1573240236'),
('::1', '2020-06-25', 26, '1593029525'),
('::1', '2020-09-15', 126, '1600184066'),
('::1', '2020-09-16', 194, '1600255927'),
('::1', '2020-09-17', 753, '1600351021'),
('::1', '2020-09-18', 29, '1600446986'),
('::1', '2020-09-20', 76, '1600584069'),
('::1', '2020-09-21', 213, '1600693065');

-- --------------------------------------------------------

--
-- Table structure for table `tag`
--

CREATE TABLE `tag` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tag`
--

INSERT INTO `tag` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(22, 'Hiburan', '', 'hiburan', 19),
(28, 'Teknologi', '', 'teknologi', 12),
(27, 'Metropolitan', '', 'metropolitan', 32),
(26, 'Nasional', '', 'nasional', 42),
(25, 'Kesehatan', '', 'kesehatan', 16),
(24, 'Olahraga', '', 'olahraga', 11),
(34, 'Wisata', '', 'wisata', 4),
(36, 'Hukum', '', 'hukum', 16),
(37, 'Film', '', 'film', 25),
(40, 'Internasional', '', 'internasional', 28),
(41, 'Bola', '', 'bola', 21),
(43, 'Selebritis', '', 'selebritis', 9),
(49, 'Palestina', 'admin', 'palestina', 6),
(55, 'Asian Games', 'admin', 'asian-games', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tagvid`
--

CREATE TABLE `tagvid` (
  `id_tag` int(5) NOT NULL,
  `nama_tag` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `tag_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `count` int(5) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `tagvid`
--

INSERT INTO `tagvid` (`id_tag`, `nama_tag`, `username`, `tag_seo`, `count`) VALUES
(34, 'perang', 'admin', 'perang', 2),
(35, 'Teknologi', 'admin', 'teknologi', 0),
(36, 'Nasional', 'admin', 'nasional', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_comment`
--

CREATE TABLE `tbl_comment` (
  `id_komentar` int(5) NOT NULL,
  `reply` int(5) NOT NULL,
  `nama_lengkap` varchar(150) NOT NULL,
  `alamat_email` varchar(150) NOT NULL,
  `isi_pesan` text NOT NULL,
  `tanggal_komentar` date NOT NULL,
  `jam_komentar` time NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_comment`
--

INSERT INTO `tbl_comment` (`id_komentar`, `reply`, `nama_lengkap`, `alamat_email`, `isi_pesan`, `tanggal_komentar`, `jam_komentar`) VALUES
(1, 0, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman, membuat perlunya dilakukan perubahan secara komprehensif mengenai Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan Kehakiman.								', '2014-11-19', '00:00:00'),
(2, 1, 'si anu', 'anu@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-19', '00:00:00'),
(3, 0, 'Rio Saputra', 'rio.saputra@gmail.com', 'Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut. Perubahan UUD 1945 yang membawa perubahan mendasar mengenai penyelengaraan kekuasaan kehakiman.								', '2014-11-21', '00:00:00'),
(4, 1, 'Anggun Pratiwi', 'angun@gmail.com', 'itu benar bro, kalau ndak pacayo tanyo lah ka baruak.Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(5, 3, 'Dewi Safitri', 'dewi.safitri@gmail.com', 'Oii, ang kareh bana mah, den ambuang ang ka lauik beko,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(6, 0, 'Ahmad Hunaldi', 'ahmad@gmail.com', 'badan-badan peradilan penyelenggara kekuasaan kehakiman, asas-asas penyelengaraan kekuasaan kehakiman Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.								', '2014-11-21', '00:00:00'),
(7, 6, 'Prasmana Enru', 'prasmana@gmail.com', 'Undang-Undang Ketentuan-ketentuan Pokok Kekuasaan	Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2014-11-21', '00:00:00'),
(9, 3, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Untuk itulah penulis memberikan solusi menggunakan program Dreamweaver,.. Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-01-22', '00:00:00'),
(14, 0, 'Udin Sedunia', 'udin.sedubia@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:54:31'),
(15, 6, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Perlahan tapi pasti, sosok TM yang merupakan artis dan berprofesi sebagai Pekerja Seks Komersial (PSK) akhirnya mulai terungkap Video bocah melakukan hubungan intim layaknya suami istri membuat geger. Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut.', '2015-05-29', '00:59:50'),
(17, 3, 'hari ke 2', 'hay.smart,solusindo@gmail.com', 'Tesssss', '2015-05-29', '05:41:12'),
(19, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Testing untuk Berikan jawaban,....', '2015-06-01', '15:44:10'),
(20, 0, 'Dewiit Safitri', 'dewiit.safitri@gmail.com', 'I absolutely love image or text sliders written using pure css code. Likewise, i always hated slow loading sliders using jquery or javascript to use in my wordpress themes or html websites. I have compiled some cool css sliders from codepen/github for use in your website or in themes, many are responsive too. A word of advise: Please make sure to test all sliders in Safari, Chrome and FF before deployment.', '2017-01-24', '16:27:59'),
(23, 20, 'Admin Lokomedia', 'dankrez48@gmail.com', 'I spent almost a day searching for this. And found &#039;CSS3 Thumbnail Slider&#039; on this site. Thanks a lot. If the slideIndex is higher than the number of elements (x.length), the slideIndex is set to zero.', '2017-01-24', '16:31:47'),
(24, 14, 'Admin Lokomedia', 'dankrez48@gmail.com', 'Guna mencegah hal-hal yang tidak diinginkan, polisi pun sudah melakukan penelusuran siapa orang di balik pembuatan video cabul tersebut', '2017-04-09', '11:07:23'),
(25, 0, 'BangToyyib', 'toyyib@gmail.com', 'saya ingin bertanya, berapa 1 + 1?', '2017-10-06', '08:19:33'),
(26, 25, 'Admin Lokomedia', 'admin@lokomedia.web.id', '1+1 adalah 2', '2017-10-06', '08:26:20');

-- --------------------------------------------------------

--
-- Table structure for table `templates`
--

CREATE TABLE `templates` (
  `id_templates` int(5) NOT NULL,
  `judul` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `username` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `pembuat` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `folder` varchar(50) COLLATE latin1_general_ci NOT NULL,
  `aktif` enum('Y','N') COLLATE latin1_general_ci NOT NULL DEFAULT 'N'
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `templates`
--

INSERT INTO `templates` (`id_templates`, `judul`, `username`, `pembuat`, `folder`, `aktif`) VALUES
(17, 'loko-tiga - Swarakalibata Template', 'admin', 'Admin', 'loko-tiga', 'N'),
(22, 'loko-dua - Swarakalibata Template', 'admin', 'Admin', 'loko-dua', 'N'),
(24, 'simple news', 'admin', 'wildan', 'simple-news', 'N'),
(25, 'easy news', 'admin', 'wildan', 'easy-news', 'N'),
(26, 'NewsMag', 'admin', 'admin lokomedia', 'newsmag', 'N'),
(27, 'Company-1', 'admin', 'Admin Lokomedia', 'company-satu', 'Y');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `username` varchar(50) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `password` varchar(255) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `nama_lengkap` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `email` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `no_telp` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `foto` varchar(100) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL,
  `level` varchar(20) CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'user',
  `blokir` enum('Y','N') CHARACTER SET latin1 COLLATE latin1_general_ci NOT NULL DEFAULT 'N',
  `id_session` varchar(255) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`username`, `password`, `nama_lengkap`, `email`, `no_telp`, `foto`, `level`, `blokir`, `id_session`) VALUES
('admin', '$2y$10$/j5xDQFxTXdpP8aj832LPO1c3P/KMUM52dXXXTrz7bDRkZ2/8rZpi', 'BEM UBG', 'admin@samawatec.devolop.com', '6281913650556', 'Ninja-Warrior-Assassin-Japan-Fighter-Avatar-Martial_arts-5121.png', 'admin', 'N', 'q173s8hs1jl04st35169ccl8o7');

-- --------------------------------------------------------

--
-- Table structure for table `users_modul`
--

CREATE TABLE `users_modul` (
  `id_umod` int(11) NOT NULL,
  `id_session` varchar(255) NOT NULL,
  `id_modul` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_modul`
--

INSERT INTO `users_modul` (`id_umod`, `id_session`, `id_modul`) VALUES
(1, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 70),
(2, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 65),
(3, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 63),
(4, 'f76ad5ee772ac196cbc09824e24859ee', 70),
(5, 'f76ad5ee772ac196cbc09824e24859ee', 65),
(6, 'f76ad5ee772ac196cbc09824e24859ee', 63),
(7, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 18),
(8, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 66),
(9, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 33),
(10, '3460d81e02faa3559f9e02c9a766fcbd-20170124215625', 18),
(11, 'ed1d859c50262701d92e5cbf39652792-20170120090507', 41),
(12, '6bec9c852847242e384a4d5ac0962ba0-20170406140423', 18),
(13, 'fa7688658d8b38aae731826ea1daebb5-20170521103501', 18);

-- --------------------------------------------------------

--
-- Table structure for table `video`
--

CREATE TABLE `video` (
  `id_video` int(5) NOT NULL,
  `id_playlist` int(5) NOT NULL,
  `username` varchar(30) COLLATE latin1_general_ci NOT NULL,
  `jdl_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video_seo` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `keterangan` text COLLATE latin1_general_ci NOT NULL,
  `gbr_video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `video` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `youtube` varchar(100) COLLATE latin1_general_ci NOT NULL,
  `dilihat` int(7) NOT NULL DEFAULT 1,
  `hari` varchar(20) COLLATE latin1_general_ci NOT NULL,
  `tanggal` date NOT NULL,
  `jam` time NOT NULL,
  `tagvid` varchar(100) COLLATE latin1_general_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

--
-- Dumping data for table `video`
--

INSERT INTO `video` (`id_video`, `id_playlist`, `username`, `jdl_video`, `video_seo`, `keterangan`, `gbr_video`, `video`, `youtube`, `dilihat`, `hari`, `tanggal`, `jam`, `tagvid`) VALUES
(160, 56, 'admin', 'Selamatkan Hutan di Indonesia', 'selamatkan-hutan-di-indonesia', 'Pengamat politik dari Charta Politika, Yunarto Wijaya mempertanyakan dasar keputusan SBY menunjuk Roy Suryo sebagai Menpora. Apalagi, kata Yunarto, ada pernyataan SBY yang menegaskan Roy cakap untuk mengemban tugas sebagai Menpora.\r\n\r\nMenurut Yunarto, Roy selama ini lebih dikenal sebagai pakar foto digital dan video serta dosen di sebuah perguruan tinggi negeri. \"Namun, belum terdengar kiprahnya di bidang kepemudaan dan olahraga,\" kata Yunarto. Sementara, tugas Menpora yang berat dan masa tugasnya relatif singkat idealnya mengutamakan figur yang kompetensinya teruji di bidang kepemudaan dan olahraga.\r\n\r\nKarena itu, Yunarto menduga penunjukan Roy bukan karena kompetensi, melainkan representasi politik. \"Ditunjuknya kader Partai Demokrat Roy Suryo sebagai Menpora menunjukkan faktor politisnya sangat kuat,\" katanya.', '', '', 'http://www.youtube.com/embed/hkzpLJjZQbA', 41, 'Rabu', '2014-07-02', '07:30:12', ''),
(161, 56, 'admin', 'Hutan Hujan Tropis Indonesia', 'hutan-hujan-tropis-indonesia', 'Pihak Partai Liberal Demokrat pun langsung melontarkan kecaman atas tulisan dari Ward. Juru bicara partai mengatakan bahwa pihak partainya akan menerapkan sanksi terhadap Ward.\r\n\r\nSementara pihak Partai Konservatif yang menguasai koalisi pemerintahan bersama Liberal Demokrat menyatakan Ward harus menarik komentarnya.\r\n\r\n\"Tidak seharusnya seorang anggota parlemen menulis tindakan yang memicu kekerasan. Tindakannya tidak bertanggung jawab,\" ucap pihak Konservatif.\r\n\r\nIni bukan pertama kalinya Ward mengecam tindakan Israel. Pada Juli 2013 lalu, Ward menyebut pihak Zionis diambang kekalahan dalam perang. Dirinya pun mempertanyakan sampai kapan negara apartheid seperti Israel bisa bertahan.', '', '', 'http://www.youtube.com/embed/5biK_PcT7S0', 25, 'Rabu', '2014-07-02', '07:31:23', ''),
(176, 57, 'admin', 'PENYALURAN AIR BERSIH ', 'penyaluran-air-bersih-', '<p>&nbsp;</p>\r\n\r\n<p>.<br />\r\n.<br />\r\nAssalamualaikum warahmatullahi Wabarakatuh<br />\r\n<br />\r\nHidup Mahasiswa!<br />\r\nHidup Rakyat Indonesia!<br />\r\nHidup Perempuan-Perempuan Indonesia!<br />\r\n.<br />\r\n.<br />\r\nPenggalan dana untuk warga yang terdampak kekeringan di Desa Sekaroh Ujung Ketangge, Kec. Jerowaru, Kab. Lombok Timur.<br />\r\nMari donasikan sedikit rezeki anda untuk menyalurkan air bersih ke saudara kita yang terdampak kekeringan.<br />\r\nDan kirimkan donasi terbaikmu melalui Bank BRI<br />\r\nNo. Rek. 005201018756539 atas nama Eka Safitri.<br />\r\nKonfirmasi Transfer: 082339620537<br />\r\n.<br />\r\n.<br />\r\n<a href=\"https://www.instagram.com/explore/tags/bemubg/\" tabindex=\"0\">#BemUBG</a><br />\r\n<a href=\"https://www.instagram.com/explore/tags/kabinetsinergiperjuangan/\" tabindex=\"0\">#KabinetSinergiPerjuangan</a></p>\r\n', '4.jpg', '', 'https://www.youtube.com/watch?v=u5X8_mVvqIU', 3, 'Senin', '2020-09-21', '12:16:12', 'nasional');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `agenda`
--
ALTER TABLE `agenda`
  ADD PRIMARY KEY (`id_agenda`);

--
-- Indexes for table `album`
--
ALTER TABLE `album`
  ADD PRIMARY KEY (`id_album`);

--
-- Indexes for table `background`
--
ALTER TABLE `background`
  ADD PRIMARY KEY (`id_background`);

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `berita`
--
ALTER TABLE `berita`
  ADD PRIMARY KEY (`id_berita`);

--
-- Indexes for table `download`
--
ALTER TABLE `download`
  ADD PRIMARY KEY (`id_download`);

--
-- Indexes for table `gallery`
--
ALTER TABLE `gallery`
  ADD PRIMARY KEY (`id_gallery`);

--
-- Indexes for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  ADD PRIMARY KEY (`id_halaman`);

--
-- Indexes for table `header`
--
ALTER TABLE `header`
  ADD PRIMARY KEY (`id_header`);

--
-- Indexes for table `hubungi`
--
ALTER TABLE `hubungi`
  ADD PRIMARY KEY (`id_hubungi`);

--
-- Indexes for table `identitas`
--
ALTER TABLE `identitas`
  ADD PRIMARY KEY (`id_identitas`);

--
-- Indexes for table `iklanatas`
--
ALTER TABLE `iklanatas`
  ADD PRIMARY KEY (`id_iklanatas`);

--
-- Indexes for table `iklantengah`
--
ALTER TABLE `iklantengah`
  ADD PRIMARY KEY (`id_iklantengah`);

--
-- Indexes for table `katajelek`
--
ALTER TABLE `katajelek`
  ADD PRIMARY KEY (`id_jelek`);

--
-- Indexes for table `kategori`
--
ALTER TABLE `kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `komentar`
--
ALTER TABLE `komentar`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `komentarvid`
--
ALTER TABLE `komentarvid`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `link`
--
ALTER TABLE `link`
  ADD PRIMARY KEY (`id_link`);

--
-- Indexes for table `logo`
--
ALTER TABLE `logo`
  ADD PRIMARY KEY (`id_logo`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`id_menu`);

--
-- Indexes for table `modul`
--
ALTER TABLE `modul`
  ADD PRIMARY KEY (`id_modul`);

--
-- Indexes for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  ADD PRIMARY KEY (`id_alamat`);

--
-- Indexes for table `mod_ym`
--
ALTER TABLE `mod_ym`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  ADD PRIMARY KEY (`id_pasangiklan`);

--
-- Indexes for table `playlist`
--
ALTER TABLE `playlist`
  ADD PRIMARY KEY (`id_playlist`);

--
-- Indexes for table `poling`
--
ALTER TABLE `poling`
  ADD PRIMARY KEY (`id_poling`);

--
-- Indexes for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  ADD PRIMARY KEY (`id_sekilas`);

--
-- Indexes for table `tag`
--
ALTER TABLE `tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tagvid`
--
ALTER TABLE `tagvid`
  ADD PRIMARY KEY (`id_tag`);

--
-- Indexes for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  ADD PRIMARY KEY (`id_komentar`);

--
-- Indexes for table `templates`
--
ALTER TABLE `templates`
  ADD PRIMARY KEY (`id_templates`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `users_modul`
--
ALTER TABLE `users_modul`
  ADD PRIMARY KEY (`id_umod`);

--
-- Indexes for table `video`
--
ALTER TABLE `video`
  ADD PRIMARY KEY (`id_video`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `agenda`
--
ALTER TABLE `agenda`
  MODIFY `id_agenda` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `album`
--
ALTER TABLE `album`
  MODIFY `id_album` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;

--
-- AUTO_INCREMENT for table `background`
--
ALTER TABLE `background`
  MODIFY `id_background` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `berita`
--
ALTER TABLE `berita`
  MODIFY `id_berita` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=693;

--
-- AUTO_INCREMENT for table `download`
--
ALTER TABLE `download`
  MODIFY `id_download` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `gallery`
--
ALTER TABLE `gallery`
  MODIFY `id_gallery` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=264;

--
-- AUTO_INCREMENT for table `halamanstatis`
--
ALTER TABLE `halamanstatis`
  MODIFY `id_halaman` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `header`
--
ALTER TABLE `header`
  MODIFY `id_header` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `hubungi`
--
ALTER TABLE `hubungi`
  MODIFY `id_hubungi` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `identitas`
--
ALTER TABLE `identitas`
  MODIFY `id_identitas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iklanatas`
--
ALTER TABLE `iklanatas`
  MODIFY `id_iklanatas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT for table `iklantengah`
--
ALTER TABLE `iklantengah`
  MODIFY `id_iklantengah` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `katajelek`
--
ALTER TABLE `katajelek`
  MODIFY `id_jelek` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `kategori`
--
ALTER TABLE `kategori`
  MODIFY `id_kategori` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `komentar`
--
ALTER TABLE `komentar`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=164;

--
-- AUTO_INCREMENT for table `komentarvid`
--
ALTER TABLE `komentarvid`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `link`
--
ALTER TABLE `link`
  MODIFY `id_link` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `logo`
--
ALTER TABLE `logo`
  MODIFY `id_logo` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `id_menu` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT for table `modul`
--
ALTER TABLE `modul`
  MODIFY `id_modul` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT for table `mod_alamat`
--
ALTER TABLE `mod_alamat`
  MODIFY `id_alamat` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `mod_ym`
--
ALTER TABLE `mod_ym`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pasangiklan`
--
ALTER TABLE `pasangiklan`
  MODIFY `id_pasangiklan` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `playlist`
--
ALTER TABLE `playlist`
  MODIFY `id_playlist` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `poling`
--
ALTER TABLE `poling`
  MODIFY `id_poling` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `sekilasinfo`
--
ALTER TABLE `sekilasinfo`
  MODIFY `id_sekilas` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag`
--
ALTER TABLE `tag`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `tagvid`
--
ALTER TABLE `tagvid`
  MODIFY `id_tag` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `tbl_comment`
--
ALTER TABLE `tbl_comment`
  MODIFY `id_komentar` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `templates`
--
ALTER TABLE `templates`
  MODIFY `id_templates` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users_modul`
--
ALTER TABLE `users_modul`
  MODIFY `id_umod` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `video`
--
ALTER TABLE `video`
  MODIFY `id_video` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=177;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
