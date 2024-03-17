-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 17 Mar 2024 pada 07.43
-- Versi server: 10.4.28-MariaDB
-- Versi PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_aplikasiedukasi`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `beritas`
--

CREATE TABLE `beritas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `title` varchar(255) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `beritas`
--

INSERT INTO `beritas` (`id`, `title`, `content`, `image`, `created_at`, `updated_at`) VALUES
(25, 'Jokowi: Harga Beras Turun Dimarahi Petani, Tapi Kalau Naik Dimarahi Ibu-ibu', 'Presiden Joko Widodo (Jokowi) meninjau stok beras di Gudang Bakalan Batu, Sumatera Utara, pada Jumat (15/3). Dalam sambutannya, Jokowi mengungkap tantangan pemerintah menjaga keseimbangan harga beras.', 'uploads/1710568884.jpeg', '2024-03-15 23:01:24', '2024-03-15 23:01:24'),
(26, 'Kepergok Curi Motor Saat Sahur, Maling Bawa Pisau Terkapar Diamuk Massa', 'Mojokerto - Ali Zainal Abidin (26) tepergok warga ketika mencuri sepeda motor pada jam sahur di tempat kos Gang Kontrak, Desa/Kecamatan Ngoro, Mojokerto. Ia nekat mengancam warga dengan pisau saat ditangkap. Ali akhirnya terkapar setelah diamuk massa.\r\nKanit Reskrim Polsek Ngoro Iptu Yunus Fahrizal menjelaskan Ali mencuri sepeda motor di tempat kos milik Munir dini hari tadi sekitar pukul 02.30 WIB. Sedangkan komplotannya menunggu di dekat lokasi mengendarai mobil Suzuki Ertiga warna silver.\r\n\r\nSialnya, aksi warga Kelurahan Tanjung Perak, Pabean Cantian, Surabaya itu tepergok pemilik kos. Ketika itu, Munir memantau aksi pelaku melalui monitor CCTV. Ketika Ali menuntun sepeda motor Honda BeAT nopol S 4889 NBI sekitar 10 meter dari kos, Munir berteriak maling.\r\n\"Saat itu juga pelaku berusaha kabur, sedangkan pelaku lain yang berada di dalam mobil Ertiga kabur ke arah utara,\" terangnya kepada wartawan, Rabu (13/3/2024).\r\n\r\nTeriakan Munir, lanjut Yunus, membuat warga sekitar yang sedang makan sahur langsung berdatangan ke lokasi. Ali yang merasa sudah terkepung oleh warga, berusaha kabur dengan mengeluarkan pisau. Ia mengancam warga menggunakan senjata tajam tersebut.\r\n\r\n\"Namun, warga berhasil mengamankan pelaku,\" jelasnya.\r\nWarga yang geram akhirnya mengamuk Ali. Ia dipukuli massa hingga terkapar tak berdaya. Selain luka-luka lebam, maling motor ini juga menderita luka robek di tangan dan kepalanya. Beruntung sejumlah anggota Unit Reskrim Polsek Ngoro segara datang mengamankannya.\r\n\r\n\"Pelaku kami evakuasi ke RS Bhayangkara Pusdik Brimob Watukosek untuk menjalani perawatan dan visum,\" ungkap Yunus.\r\n\r\nHingga saat ini, Ali masih menjalani perawatan di rumah sakit. Setelah pulih, ia akan dijebloskan ke Rutan Polsek Ngoro karena melakukan pencurian sepeda motor. Polisi telah melakukan olah TKP dan menggali keterangan dari para saksi di lokasi.', 'uploads/1710600149.jpeg', '2024-03-16 07:42:29', '2024-03-16 07:42:29'),
(27, 'BMKG: Ini Wilayah yang Berpotensi Hujan Lebat dan Angin Kencang pada 17-18 Maret 2024', 'KOMPAS.com - Badan Meteorologi, Klimatologi, dan Geofisika (BMKG) mengeluarkan peringatan dini cuaca ekstrem berupa hujan lebat, petir, dan angin kencang yang akan melanda sejumlah wilayah Indonesia pada Minggu (17/3/2024) hingga Senin (18/3/2024).\r\n\r\nBMKG menjelaskan, potensi cuaca ekstrem tersebut terjadi karena adanya dua bibit siklon tropis di sekitar Indonesia, yakni 91S dan 94S.\r\n\r\nBibit Siklon Tropis 91S terpantau di Samudra Hindia bagian tenggara, selatan Bali, dengan kecepatan angin maksimum 30 knot dan tekanan udara 998 hPa serta bergerak ke arah Barat-Barat Daya.\r\n\r\nAdapun potensi menjadi siklon tropis dalam 24 jam ke depan dalam kategori rendah-sedang.\r\n\r\nKemudian, Bibit Siklon Tropis 94S terpantau di Teluk Carpentaria dengan kecepatan angin maksimum 40 knot dan tekanan udara 992 hPa serta bergerak ke arah Selatan-Barat Daya.\r\n\r\nPotensinya untuk menjadi siklon tropis dalam 24 jam ke depan dalam kategori tinggi.\r\n“Sistem ini menginduksi daerah peningkatan kecepatan angin lebih dari 25 knot (low level jet) di Jawa Tengah, Jawa Timur, DIY, Bali, NTB, NTT, Laut Jawa utara Jawa Timur hingga Laut Bali, perairan selatan Jawa-NTT, Papua bagian tengah, dan Laut Arafuru, yang mampu meningkatkan tinggi gelombang di sekitar bibit siklon tropis tersebut,” bunyi keterangan BMKG.\r\n\r\nSelain itu, kedua bibit siklon tropis tersebut juga membentuk daerah konvergensi dan konfluensi yang memanjang dari Samudra Hindia barat Lampung hingga Jawa Tengah, dan Laut Bali hingga Laut Timor.\r\n\r\nDaerah konvergensi lain juga terpantau memanjang dari Riau hingga Lampung, Laut Jawa hingga Laut Bali, Kalimantan bagian utara, Teluk Bone hingga perairan utara NTT, Laut Banda, Teluk Cendrawasih hingga Papua bagian Tengah, dan Laut Arafuru.\r\n\r\nDaerah konfluensi lain juga terpantau di Laut Natuna, Samudra Hindia barat daya Lampung hingga Banten, Selat Makassar, dan Laut Maluku.\r\n\r\n“Kondisi tersebut mampu meningkatkan potensi pertumbuhan awan hujan di sekitar siklon tropis/sirkulasi siklonik dan di sepanjang daerah low level jet/konvergensi/konfluensi tersebut,” ungkap BMKG.\r\nWilayah berpotensi hujan lebat, petir, dan angin kencang\r\nBerikut prakiraan BMKG mengenai wilayah berpotensi hujan lebat, petir, dan angin kencang pada 17-18 Maret 2024:\r\n\r\nMinggu, 17 Maret 2024\r\nWilayah berpotensi hujan lebat, petir, dan angin kencang:\r\n\r\nBengkulu\r\nJambi\r\nSumatera Selatan\r\nKepulauan Bangka Belitung\r\nLampung\r\nBanten\r\nJawa Barat\r\nJawa Tengah\r\nDI Yogyakarta\r\nJawa Timur\r\nBali\r\nNusa Tenggara Barat\r\nNusa Tenggara Timur\r\nKalimantan Tengah\r\nKalimantan Utara\r\nKalimantan Timur\r\nKalimantan Selatan\r\nSulawesi Tengah\r\nMaluku\r\nPapua.\r\nWilayah berpotensi hujan, petir, dan angin kencang:\r\n\r\nSumatera Barat\r\nRiau\r\nDKI Jakarta\r\nSulawesi Tenggara.\r\nWilayah berpotensi angin kencang:\r\n\r\nSulawesi Barat.\r\nBaca juga: Ramai soal Tak Ada Badai yang Melintasi Garis Khatulistiwa, Ini Kata BMKG\r\n\r\nSenin, 18 Maret 2024\r\nWilayah berpotensi hujan lebat, petir, dan angin kencang:\r\n\r\nAceh\r\nSumatera Selatan\r\nKepulauan Bangka Belitung\r\nLampung\r\nJawa Timur\r\nNusa Tenggara Barat\r\nNusa Tenggara Timur\r\nKalimantan Tengah\r\nKalimantan Utara\r\nKalimantan Timur\r\nKalimantan Selatan\r\nSulawesi Tengah\r\nSulawesi Barat\r\nSulawesi Selatan\r\nSulawesi Tenggara\r\nMaluku\r\nPapua.\r\nWilayah berpotensi hujan, petir, dan angin kencang:\r\n\r\nSumatera Barat\r\nJambi\r\nBanten\r\nJawa Barat\r\nJawa Tengah\r\nDI Yogyakarta\r\nBali\r\nPapua Barat.', 'uploads/1710651651.jpg', '2024-03-16 22:00:51', '2024-03-16 22:00:51'),
(28, '15 Pegawai KPK Jadi Tersangka Pungli Rutan, Pukat UGM: Korupsi Sistemik!', 'Jakarta - Sebanyak 15 pegawai KPK telah ditetapkan sebagai tersangka pungutan liar atau pungli di Rutan KPK. Pusat Kajian Antikorupsi (Pukat) UGM menilai kasus itu sebagai ironi dalam pemberantasan korupsi di Indonesia.\r\n\"Ini satu hal yang sangat ironis, kenapa? Karena tindak pidana korupsi diduga terjadi di institusi pemberantasan korupsi dan ini berarti para petugas rutan akan menghuni rutan, akan berada di dalam rutan dulu mereka bertugas menjaga. Jadi dulu mereka bertugas menjaga rutan, sekarang mereka masuk ke dalam rutan dan dijaga oleh petugas lainnya,\" kata peneliti dari Pukat UGM, Zaenur Rohman, saat dihubungi, Minggu (17/3/2024).\r\n\r\nZaenur mengatakan kasus pungli rutan itu juga menunjukkan adanya kegagalan sistem di KPK. Puluhan pegawai yang terlibat dan 15 di antaranya menjadi tersangka menjadi bukti ada korupsi yang bersifat sistemik di tubuh KPK.\r\n\"Ironi ini menunjukkan betapa problem di KPK sangat serius. Saya lihat korupsi di KPK sistemik,\" katanya.\r\n\r\n\"Karena kan berarti dari level para pimpinan misalnya terlihat dari eks Ketua KPK Firli Bahuri jadi tersangka juga sampai level paling bawah di level pegawai itu rusak. Ini menunjukkan kerusakan yang merata, ini sistemik dari level atas sampai level bawah,\" sambung Zaenur.\r\n\r\nPukat UGM juga menyoroti adanya tersangka pungli rutan dari institusi lain yang diperbantukan di KPK. Zaenur mengatakan kasus tersebut harus menjadi alarm agar pegawai KPK tidak diisi dari pihak eksternal.\r\n\r\n\"PNS-PNS dari luar KPK yang ditempatkan di KPK saya melihat ini mereka membawa penyakit dari luar. Kemudian, ketika bekerja di KPK, penyakit itu tetap lestari karena penyakit itu sudah menjadi kebiasaan bertahun-tahun,\" tutur Zaenur.', 'uploads/1710651722.jpeg', '2024-03-16 22:02:02', '2024-03-16 22:02:02'),
(29, 'Ramadan, Petugas Gabungan Gencarkan Razia Miras di Bekasi', 'Bekasi - Petugas gabungan menggelar razia minuman keras di Bekasi, Jawa Barat. Razia itu dalam rangka menjaga kondisi keamanan dan kenyamanan selama Ramadan.\r\nPetugas gabungan dari Polri, TNI, dan Satpol PP menggelar razia minuman keras di Bekasi, Minggu (17/3/2024) dini hari.', 'uploads/1710651803.jpeg', '2024-03-16 22:03:23', '2024-03-16 22:03:23'),
(30, 'Semangat Pluralisme Menjaga Kebhinekaan di Kehidupan yang Harmonis', 'Jakarta - Sekolah Tinggi Agama Budha Nalanda menggelar talkshow bertajuk Semangat Pluralisme Untuk Merawat Bhineka Tunggul Ika dengan pembicara Said Aqil Siroj.\r\nKetua Umum Pengurus Nahdlatul Ulama (PBNU) 2010-2021 Prof KH Said Aqil Siroj hadir sebagai narasumber di Talk Show bertajuk: Semangat Pluralisme Untuk Merawat Bhineka Tunggul Ika. Ia menekankan pentingnya menjaga kebhinekaan dalam kehidupan yang harmonis. Salah satu keindahan Indonesia karena adanya kebhinekaan yang harus terus dipertahankan.', 'uploads/1710651869.jpeg', '2024-03-16 22:04:29', '2024-03-16 22:04:29');

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `karyawans`
--

CREATE TABLE `karyawans` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `no_bp` varchar(255) NOT NULL,
  `no_hp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `input_date` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `karyawans`
--

INSERT INTO `karyawans` (`id`, `name`, `no_bp`, `no_hp`, `email`, `input_date`, `created_at`, `updated_at`) VALUES
(2, 'Elfrieda Schinner', '43857130', '847-796-2521', 'bernier.monique@example.org', '2023-09-29 08:51:02', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(3, 'Unique Hagenes', '59698060', '+1.217.858.7298', 'anderson.verla@example.net', '2023-03-12 12:08:22', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(4, 'Mr. Cyrus Bashirian', '70483092', '986.494.4595', 'osinski.alberta@example.net', '2023-11-16 14:37:30', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(5, 'Stephania Mayer', '59373675', '+1-678-324-9108', 'weber.kennedy@example.net', '2023-12-25 09:13:13', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(6, 'Vallie Daugherty', '86743828', '+1.219.249.4393', 'hilario.corwin@example.com', '2023-09-03 15:24:26', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(7, 'Prof. Hailee King', '47335867', '364.765.0670', 'vladimir.schultz@example.net', '2024-01-23 02:06:55', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(8, 'Ms. Danika Harber', '61074627', '+12706962528', 'aaron06@example.net', '2023-09-24 16:04:39', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(9, 'Alexanne McLaughlin', '55526977', '857.348.1765', 'frederique.schmidt@example.org', '2023-05-17 11:50:15', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(10, 'Ms. Destinee Boyle MD', '13599960', '+1-563-713-0293', 'wyatt49@example.org', '2023-04-09 06:23:40', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(11, 'Newell Kub', '65911817', '+18439177003', 'lourdes06@example.com', '2023-10-14 09:13:01', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(12, 'Glenda Lind', '42772126', '(231) 818-6734', 'percival.sporer@example.org', '2023-10-16 01:09:55', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(13, 'Zoila Bayer', '11501233', '+1.657.236.0674', 'csenger@example.org', '2023-04-13 09:03:33', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(14, 'Lance Leuschke', '32748444', '+13464953582', 'lkemmer@example.net', '2023-12-26 17:40:53', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(15, 'Audra Pollich', '80647516', '+1 (586) 213-7667', 'adeline.kassulke@example.net', '2023-03-16 09:07:45', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(16, 'Dr. Elton Blick DVM', '86758232', '+1-386-397-9913', 'marisa.mckenzie@example.org', '2023-12-21 11:03:56', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(17, 'Geovanni Bruen', '19027418', '1-657-460-1032', 'sheridan.bergnaum@example.net', '2023-10-13 05:16:38', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(18, 'Catharine Torphy', '87834487', '+1 (813) 857-6358', 'torphy.autumn@example.org', '2023-06-07 13:38:01', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(19, 'Murl Schoen', '11312821', '+1-430-244-8566', 'uwehner@example.net', '2024-01-04 06:46:04', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(20, 'Eva Konopelski', '30505338', '+1.415.670.5927', 'gerry.schneider@example.net', '2023-08-27 13:44:03', '2024-03-11 00:08:33', '2024-03-11 00:08:33'),
(21, 'Jacky', '1234534212', '085678762513', 'jacky@email.com', '2024-03-11 22:51:00', '2024-03-11 08:53:44', '2024-03-11 08:53:44');

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2024_03_11_064508_create_beritas_table', 1),
(6, '2024_03_11_064856_create_karyawans_table', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
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
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Admin1', 'admin@email.com', NULL, '$2y$12$gyEWJBc6H6.0I4A6wxhB9.AYpEdde91Vvy2s8A7IVmx15z5KH58UC', NULL, '2024-03-11 02:13:58', '2024-03-16 21:08:13'),
(3, 'Budi', 'budi@email.com', NULL, '$2y$12$ZKtSsaZ07Cb4Y4/Gmxpkd.pXkQjkyK9m5XDybaz/KG6hQ17y/RKIq', NULL, '2024-03-11 07:41:18', '2024-03-11 07:41:18'),
(4, 'Hagi1', 'admin1@email.com', NULL, '$2y$12$jaO8KnpiKJosCNu6LP0FceNhlc25LlimPXl9vDjjkyObzm5hxGTmS', NULL, '2024-03-11 09:35:56', '2024-03-11 09:35:56'),
(5, 'Hagi2', 'admin2@email.com', NULL, '$2y$12$2P.kUIuiTQ3ZLkYDzkqwVeXghFj3vnd2OkCwTbk4eQQB9/UpWjp4C', NULL, '2024-03-12 05:49:23', '2024-03-12 05:49:23'),
(7, 'Hagi3', 'admin3@email.com', NULL, '$2y$12$an8rmjaXNW4uQigSb8b2FORw1Bxip/q5nqVaH3lPU6hYRZjUrEntK', NULL, '2024-03-12 09:35:35', '2024-03-12 09:35:35'),
(9, 'Baharudin', 'baharudin@email.com', NULL, '$2y$12$tVTRAi6UK/3KBXAhfPsnEerD/H5kF.R5pptVJBD84mQGrUCqO.k..', NULL, '2024-03-12 09:42:14', '2024-03-12 09:42:14'),
(10, 'Hagi4', 'hagi4@email.com', NULL, '$2y$12$zIRvP7Z8HN8tJVjHvHYKcuSh1EIHQv4iu3t0/ykE9l7C2hmEKTH1O', NULL, '2024-03-12 09:47:04', '2024-03-12 09:47:04'),
(11, 'Hagi5', 'admin5@email.com', NULL, '$2y$12$xmWkO/qsjg0ms.3mi4OXE.ZZAewtA0xgA1a4jykkHu5qWaONpz51G', NULL, '2024-03-12 09:53:05', '2024-03-12 09:53:05'),
(12, 'Burhanudin', 'burhanudin@email.com', NULL, '$2y$12$mWIVLWiwPMx.7ThSm/g5bezAyR6eRhJIuruni8jeog1ny/Y2W9cfS', NULL, '2024-03-12 09:58:54', '2024-03-12 09:58:54'),
(13, 'Hagi8', 'admin8@email.com', NULL, '$2y$12$UzdJCwkrU4ZiFWyC4.5BV.jH9z9usc6QCFB8vl0PxwQJa3olGTe2W', NULL, '2024-03-13 21:59:56', '2024-03-13 23:31:01'),
(14, 'judy1', 'judy@email.com', NULL, '$2y$12$9qNdperKlKTd.EsKRt5Ideyp3yoI7eJWNWiiV9xOgVGwOlbgYH3E.', NULL, '2024-03-14 03:28:07', '2024-03-16 08:25:05'),
(15, 'surotno', 'surotno@email.com', NULL, '$2y$12$zW1naSuuQyxFSh9RPnhjgu1irpXZZibVENtM7PHfP804hJ8MJg2hW', NULL, '2024-03-14 03:46:11', '2024-03-14 03:46:11'),
(17, 'Budika1', 'budika@email.com', NULL, '$2y$12$4M1DbL0ewktNQwVaJ0idMe7rrNq0YdCCzdrMjBes2gBJaoI8IQTqy', NULL, '2024-03-14 03:47:31', '2024-03-14 03:48:27'),
(18, 'Ahmadun', 'ahmadun@email.com', NULL, '$2y$12$04weveVP11bCSqq4yq24F.sg6KyB7/hE4qNQGpVlRClwFFUm6eBq2', NULL, '2024-03-14 03:50:04', '2024-03-14 03:50:04'),
(19, 'Suranto', 'suranto@email.com', NULL, '$2y$12$Pr.2a44kjHIWBn9JqpTYtuBe8pkDwt3DfY/s6WQBBm9yfc.rBiNv2', NULL, '2024-03-14 05:51:55', '2024-03-14 05:51:55'),
(20, 'Josua', 'josua@email.com', NULL, '$2y$12$NM8xxxgisQAYGWEBCFpLS.fn6auHavjbaVuo9wINuXgAAyKplbIf6', NULL, '2024-03-14 07:51:49', '2024-03-14 07:51:49'),
(21, 'Juardin', 'juardin@email.com', NULL, '$2y$12$FpypXW3NuRODQK7r99zk.e8pPwZQcEqc/4ljq3IyGxBqoIB6.j0QS', NULL, '2024-03-15 01:10:31', '2024-03-15 01:10:31'),
(24, 'Korokos', 'korokos@email.com', NULL, '$2y$12$uucX9WF9/C/sL4sjgfG0d./WoSfTHxjuofXliYKVrOIWcSVjoQ4Zi', NULL, '2024-03-16 06:58:17', '2024-03-16 06:58:17'),
(25, 'Jasper1', 'jasper@email.com', NULL, '$2y$12$4fuHw2gSKzeSo9i8bOWUUeGsD2294LWh4vPkEwj1cFwuiJuAq0gPe', NULL, '2024-03-16 07:48:33', '2024-03-16 07:49:24');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `beritas`
--
ALTER TABLE `beritas`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `beritas`
--
ALTER TABLE `beritas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `karyawans`
--
ALTER TABLE `karyawans`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
