-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 04, 2023 at 11:56 AM
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
-- Database: `database_pbo`
--

-- --------------------------------------------------------

--
-- Table structure for table `kas`
--

CREATE TABLE `kas` (
  `id_referensi` int(11) NOT NULL,
  `kas_masuk` int(11) NOT NULL DEFAULT 0,
  `kas_keluar` int(11) NOT NULL DEFAULT 0,
  `tanggal_transaksi` date NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `kas`
--

INSERT INTO `kas` (`id_referensi`, `kas_masuk`, `kas_keluar`, `tanggal_transaksi`) VALUES
(6, 120000, 0, '2023-12-04'),
(7, 30000, 0, '2023-12-04'),
(8, 135000, 0, '2023-12-04'),
(9, 36000, 0, '2023-12-04');

-- --------------------------------------------------------

--
-- Table structure for table `makanan`
--

CREATE TABLE `makanan` (
  `IDMakanan` int(11) NOT NULL,
  `namaMakanan` varchar(30) NOT NULL,
  `stok` int(11) NOT NULL,
  `hargaMakanan` int(11) DEFAULT NULL,
  `deskripsi` varchar(750) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `makanan`
--

INSERT INTO `makanan` (`IDMakanan`, `namaMakanan`, `stok`, `hargaMakanan`, `deskripsi`) VALUES
(1, 'Nasi Goreng Special', 50, 35000, 'Nasi goreng yang lezat dengan campuran daging ayam, udang, telur, dan sayuran, disajikan dengan irisan mentimun dan kerupuk'),
(2, 'Sate Ayam Madura', 100, 25000, 'Sate ayam yang dibumbui dengan rempah khas Madura, disajikan dengan bumbu kacang dan lontong.'),
(3, 'Rendang Daging', 46, 50000, 'Daging sapi yang dimasak dalam santan dan bumbu rempah-rempah kaya rasa, disajikan dengan nasi putih.'),
(4, 'Gado-Gado', 38, 30000, 'Sayuran segar seperti kubis, tauge, kentang, dan telur rebus yang disajikan dengan bumbu kacang khas gado-gado.'),
(5, 'Soto Ayam', 67, 40000, 'Sup ayam dengan kuah bening, disajikan dengan mie, potongan ayam, telur rebus, seledri, dan bawang goreng.'),
(6, 'Pecel Lele', 43, 35000, 'Lele goreng yang renyah disajikan dengan sambal pecel, lalapan, dan nasi.'),
(7, 'Nasi Padang', 64, 60000, 'Beberapa hidangan Padang seperti rendang, gulai ayam, sambal ijo, dan telur balado, disajikan dengan nasi.'),
(8, 'Bakso Malang', 90, 25000, 'Bakso yang lezat dengan tambahan mie, tahu, pangsit, dan kuah kaldu sapi.'),
(9, 'Ayam Goreng Kalasan', 120, 45000, 'Bakso yang lezat dengan tambahan mie, tahu, pangsit, dan kuah kaldu sapi.'),
(10, 'Lontong Sayur Betawi', 34, 30000, 'Sayur lodeh dengan tahu, tempe, dan telur rebus, disajikan dengan lontong dan sambal.');

-- --------------------------------------------------------

--
-- Table structure for table `minuman`
--

CREATE TABLE `minuman` (
  `IDMinuman` int(11) NOT NULL,
  `namaMakanan` varchar(50) NOT NULL,
  `stok` int(11) NOT NULL,
  `hargaMinuman` int(11) DEFAULT NULL,
  `deskripsi` varchar(750) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `minuman`
--

INSERT INTO `minuman` (`IDMinuman`, `namaMakanan`, `stok`, `hargaMinuman`, `deskripsi`) VALUES
(1, 'Es Teh Manis', 520, 5000, 'Teh manis yang disajikan dingin dengan es batu.'),
(2, 'Es Jeruk Segar', 350, 8000, 'Jeruk segar yang diperas dengan gula dan es, menyegarkan.'),
(3, 'Wedang Jahe', 120, 10000, 'Minuman jahe hangat dengan tambahan gula dan rempah, cocok untuk menghangatkan tubuh.'),
(4, 'Es Cincau Hijau', 120, 15000, 'Minuman segar dengan cincau hijau, santan kelapa, dan sirup gula merah.'),
(5, 'Sekoteng', 120, 12000, 'Minuman tradisional dengan campuran jahe, kacang hijau, pacar cina, dan biji salak.'),
(6, 'Bandrek', 120, 10000, 'Minuman hangat dengan campuran jahe, kelapa parut, dan gula aren.'),
(7, 'Es Doger', 200, 20000, 'Minuman es campur dengan campuran kelapa muda, alpukat, nangka, dan es serut.'),
(8, 'Bir Pletok', 300, 25000, 'Minuman tradisional beralkohol dengan campuran rempah-rempah khas Betawi.'),
(9, 'Es Cendol', 120, 18000, 'Minuman segar dengan campuran cendol, kelapa muda, santan, dan gula merah.'),
(10, 'Teh Tarik', 500, 12000, 'Teh susu yang dihasilkan dengan cara tarik yang memberikan tekstur yang lembut.');

-- --------------------------------------------------------

--
-- Table structure for table `pembeli`
--

CREATE TABLE `pembeli` (
  `id_pembeli` int(11) NOT NULL,
  `nama_pembeli` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatmakanan`
--

CREATE TABLE `riwayatmakanan` (
  `id_pesananMakanan` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IDMakanan` int(3) NOT NULL,
  `jumlahMakanan` int(3) NOT NULL,
  `tanggalPesananMakanan` date NOT NULL,
  `totalHargaMakanan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayatmakanan`
--

INSERT INTO `riwayatmakanan` (`id_pesananMakanan`, `IDMakanan`, `jumlahMakanan`, `tanggalPesananMakanan`, `totalHargaMakanan`) VALUES
('1701684814329', 2, 7, '2023-12-04', 175000),
('1701684856311', 2, 7, '2023-12-04', 175000),
('1701685293690', 7, 2, '2023-12-04', 120000),
('1701686731709', 9, 3, '2023-12-04', 135000);

--
-- Triggers `riwayatmakanan`
--
DELIMITER $$
CREATE TRIGGER `after_insert_riwayatMakanan` AFTER INSERT ON `riwayatmakanan` FOR EACH ROW BEGIN
    DECLARE totalHargaMakanan INT;

    -- Menghitung total harga dari riwayatMakanan untuk baris yang baru diinsert
    SET totalHargaMakanan = NEW.jumlahMakanan * (SELECT hargaMakanan FROM makanan WHERE IDMakanan = NEW.IDMakanan); -- Sesuaikan kolom untuk koneksi antara tabel riwayatMakanan dan makanan
    
    -- Memasukkan nilai total harga makanan dari baris yang baru ke dalam tabel kas
    INSERT INTO kas (kas_masuk) VALUES (totalHargaMakanan);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hitung_total_hargaMakanan` BEFORE INSERT ON `riwayatmakanan` FOR EACH ROW BEGIN
DECLARE harga_makanan INT;
	SELECT hargaMakanan INTO harga_makanan FROM makanan WHERE IDMakanan = NEW.IDMakanan;
	SET NEW.totalHargaMakanan = (harga_makanan * NEW.jumlahMakanan);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `riwayatminuman`
--

CREATE TABLE `riwayatminuman` (
  `id_pesananMinuman` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `IDMinuman` int(11) NOT NULL,
  `jumlahMinuman` int(11) NOT NULL,
  `tanggalPesananMinuman` date NOT NULL,
  `totalHargaMinuman` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `riwayatminuman`
--

INSERT INTO `riwayatminuman` (`id_pesananMinuman`, `IDMinuman`, `jumlahMinuman`, `tanggalPesananMinuman`, `totalHargaMinuman`) VALUES
('1701681059061', 1, 6, '2023-12-04', 30000),
('1701681068096', 4, 3, '2023-12-04', 45000),
('1701686502547', 1, 6, '2023-12-04', 30000),
('1701686844990', 5, 3, '2023-12-04', 36000);

--
-- Triggers `riwayatminuman`
--
DELIMITER $$
CREATE TRIGGER `after_insert_riwayatMinuman` AFTER INSERT ON `riwayatminuman` FOR EACH ROW BEGIN
    DECLARE totalHargaMinuman INT;

    -- Menghitung total harga dari riwayatMinuman untuk baris yang baru diinsert
    SET totalHargaMinuman = NEW.jumlahMinuman * (SELECT hargaMinuman FROM minuman WHERE IDMinuman = NEW.IDMinuman); -- Sesuaikan kolom untuk koneksi antara tabel riwayatMinuman dan minuman
    
    -- Memasukkan nilai total harga minuman dari baris yang baru ke dalam tabel kas
    INSERT INTO kas (kas_masuk) VALUES (totalHargaMinuman);
END
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `hitung_total_hargaMinuman` BEFORE INSERT ON `riwayatminuman` FOR EACH ROW BEGIN
DECLARE harga_minuman INT;
	SELECT hargaMinuman INTO harga_minuman FROM minuman WHERE IDMinuman = NEW.IDMinuman;
	SET NEW.totalHargaMinuman = (harga_minuman * NEW.jumlahMinuman);
END
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `IDStaff` int(11) NOT NULL,
  `namaStaff` varchar(50) DEFAULT NULL,
  `username` varchar(30) DEFAULT NULL,
  `pass` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`IDStaff`, `namaStaff`, `username`, `pass`) VALUES
(1, 'Muhammad Ilham Wahyudi', 'user1', 'password1'),
(2, 'Muhammad Henry Aditya', 'user2', 'password2'),
(3, 'Maulana Ansari', 'user3', 'password3'),
(4, 'Nila Yoga Tama Nurwati', 'user4', 'password4'),
(5, 'Rahmad Tri Prayoga', 'user4', 'password4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kas`
--
ALTER TABLE `kas`
  ADD PRIMARY KEY (`id_referensi`);

--
-- Indexes for table `makanan`
--
ALTER TABLE `makanan`
  ADD PRIMARY KEY (`IDMakanan`);

--
-- Indexes for table `minuman`
--
ALTER TABLE `minuman`
  ADD PRIMARY KEY (`IDMinuman`);

--
-- Indexes for table `pembeli`
--
ALTER TABLE `pembeli`
  ADD PRIMARY KEY (`id_pembeli`);

--
-- Indexes for table `riwayatmakanan`
--
ALTER TABLE `riwayatmakanan`
  ADD PRIMARY KEY (`id_pesananMakanan`);

--
-- Indexes for table `riwayatminuman`
--
ALTER TABLE `riwayatminuman`
  ADD PRIMARY KEY (`id_pesananMinuman`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`IDStaff`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kas`
--
ALTER TABLE `kas`
  MODIFY `id_referensi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `makanan`
--
ALTER TABLE `makanan`
  MODIFY `IDMakanan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `minuman`
--
ALTER TABLE `minuman`
  MODIFY `IDMinuman` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembeli`
--
ALTER TABLE `pembeli`
  MODIFY `id_pembeli` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `IDStaff` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
