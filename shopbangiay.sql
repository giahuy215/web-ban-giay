-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 12, 2022 at 05:54 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopbangiay`
--

-- --------------------------------------------------------

--
-- Table structure for table `chitietdonhang`
--

CREATE TABLE `chitietdonhang` (
  `idCTHD` int(11) NOT NULL,
  `idHD` int(11) NOT NULL,
  `idSP` int(11) NOT NULL,
  `Soluong` int(11) NOT NULL,
  `Dongia` float NOT NULL,
  `Thanhtien` float NOT NULL,
  `khuyenmai` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `chitietdonhang`
--

INSERT INTO `chitietdonhang` (`idCTHD`, `idHD`, `idSP`, `Soluong`, `Dongia`, `Thanhtien`, `khuyenmai`) VALUES
(19, 27, 80, 1, 340000, 340000, 0),
(20, 27, 74, 1, 350000, 350000, 0),
(21, 28, 58, 1, 500000, 500000, 0),
(22, 28, 61, 1, 280000, 280000, 0),
(23, 29, 66, 1, 430000, 430000, 0),
(24, 30, 64, 1, 430000, 430000, 0),
(25, 30, 61, 1, 280000, 280000, 0),
(26, 31, 75, 1, 330000, 330000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

CREATE TABLE `donhang` (
  `idHD` int(11) NOT NULL,
  `idUser` int(11) NOT NULL,
  `hoten_user` varchar(255) NOT NULL,
  `Gmail_user` varchar(255) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `Diachi` varchar(255) NOT NULL,
  `Tongtien` float NOT NULL,
  `payment` varchar(255) NOT NULL,
  `Ngaytao` varchar(11) NOT NULL,
  `trangthai` tinyint(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`idHD`, `idUser`, `hoten_user`, `Gmail_user`, `phone`, `Diachi`, `Tongtien`, `payment`, `Ngaytao`, `trangthai`) VALUES
(27, 7, 'Gia Huy', 'huy@gmail.com', '0123494123', 'An Dương Vương - Quận 5 - TP.Hồ chí minh', 690000, 'Tiền mặt', '12-05-2022', 1),
(28, 7, 'Gia Huy', 'huy@gmail.com', '0123494123', 'An Dương Vương - Quận 5 - TP.Hồ chí minh', 780000, 'Qua thẻ', '12-05-2022', 1),
(29, 7, 'Gia Huy', 'huy@gmail.com', '0123494123', 'An Dương Vương - Quận 5 - TP.Hồ chí minh', 430000, 'Tiền mặt', '12-05-2022', 0),
(30, 8, 'Nguyễn Nhựt Trường', 'nhuttruong@gmail.com', '0123456789', '273 An Dương Vương', 710000, 'Tiền mặt', '12-05-2022', 1),
(31, 10, 'Tuấn Kiệt', 'kiet@gmail.com', '0987654321', 'Tphcm', 330000, 'Tiền mặt', '12-05-2022', 1);

-- --------------------------------------------------------

--
-- Table structure for table `lienhe`
--

CREATE TABLE `lienhe` (
  `idLH` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_gmail` varchar(100) NOT NULL,
  `Noidung` text NOT NULL,
  `Create` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `idLSP` int(3) NOT NULL,
  `tenloai` varchar(50) NOT NULL,
  `maloai` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `loaisanpham`
--

INSERT INTO `loaisanpham` (`idLSP`, `tenloai`, `maloai`) VALUES
(1, 'Nike', 'NI'),
(2, 'Adidas', 'AD'),
(3, 'Converse', 'CO'),
(4, 'Vans', 'VA');

-- --------------------------------------------------------

--
-- Table structure for table `nhanvien`
--

CREATE TABLE `nhanvien` (
  `STT` int(11) NOT NULL,
  `MaNV` varchar(10) NOT NULL,
  `Ten` varchar(40) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(12) NOT NULL,
  `DiaChi` varchar(200) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NgaySinh` date NOT NULL,
  `GioiTinh` varchar(4) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `Luong` int(11) NOT NULL,
  `Pass` varchar(20) NOT NULL,
  `Trangthai` varchar(10) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PhanQuyen` varchar(10) CHARACTER SET utf8 COLLATE utf8_vietnamese_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `nhanvien`
--

INSERT INTO `nhanvien` (`STT`, `MaNV`, `Ten`, `SDT`, `DiaChi`, `NgaySinh`, `GioiTinh`, `Luong`, `Pass`, `Trangthai`, `PhanQuyen`) VALUES
(1, 'Admin', 'Gia Huy', '0987654321', 'Q.Tân Phú, TPHCM', '2000-05-21', 'Nam', 500, '123456', 'Mở khóa', 'Admin'),
(2, 'Manager01', 'Huy', '0837060928', '20, Quang Trung,P.10,Gò Vấp,HCM', '1999-05-26', 'Nam', 350, '123456', 'Mở khóa', 'Manager'),
(3, 'Manager02', 'Trường', '0123456789', '18 Bùi thị xuân,P3,Tân Bình,HCM', '1999-05-12', 'Nam', 350, '123456', 'Mở khóa', 'Manager'),
(4, 'Manager03', 'Khoa', '0123123123', 'Tphcm', '2001-05-04', 'Nam', 350, '123456', 'Mở khóa', 'Manager');

-- --------------------------------------------------------

--
-- Table structure for table `sanpham`
--

CREATE TABLE `sanpham` (
  `idSP` int(11) NOT NULL,
  `idLSP` int(11) NOT NULL,
  `tensp` varchar(100) NOT NULL,
  `gia` float NOT NULL,
  `mota` varchar(200) NOT NULL,
  `hinhanh` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `sanpham`
--

INSERT INTO `sanpham` (`idSP`, `idLSP`, `tensp`, `gia`, `mota`, `hinhanh`) VALUES
(1, 1, 'Giày Nike 1', 300000, 'Giày Nike', '3ca0e8ff-9564-46b0-a808-072cc0e8053a.jpg'),
(2, 1, 'Giày Nike 2', 350000, 'Giày Nike', '4bbb737c-f63e-4170-8aae-c7fd0b272dba.jpg'),
(58, 1, 'Giày Nike 3', 500000, 'Giày Nike', 'fe91a12e-4477-490a-9298-f9f2fc8bd344.jpg'),
(59, 1, 'Giày Nike 4', 430000, 'Giày Nike', '168bf233-3dc3-4db5-b32b-2eb6a943b1dd.jpg'),
(60, 1, 'Giày Nike 5', 450000, 'Giày Nike', '555b5975-4ff1-4583-aef5-693c9ace95f6.jpg'),
(61, 1, 'Giày Nike 6', 280000, 'Giày Nike', '70f4cf27-e5a7-4fbb-95a7-d17a1230ebd5.jpg'),
(62, 1, 'Giày Nike 7', 480000, 'giày nike', '58903c0b-0afe-400e-8ac6-9bf3ccf940ba.jpg'),
(63, 1, 'Giày Nike 8', 500000, 'Giày Nike', 'f8250c82-9c01-4866-8679-bbb1dc6ce02b.jpg'),
(64, 1, 'Giày Nike 9', 430000, 'Giày Nike', 'e3b69ad8-2435-4730-9713-7ad17595865d.jpg'),
(65, 1, 'Giày Nike 10', 410000, 'Giày Nike', 'd63aa669-5f42-4704-be08-bde80b6092e4.jpg'),
(66, 2, 'Giày Adidas 1', 430000, 'Giày Adidas', 'AnyConv.com__6e9400c0834444fcb77aadf800cb1651_9366.png'),
(67, 2, 'Giày Adidas 2', 460000, 'Giày Adidas', 'AnyConv.com__8df5ab4346d7475ebb08a91500a047d3_9366.png'),
(68, 2, 'Giày Adidas 3', 370000, 'Giày Adidas', 'AnyConv.com__15f901c90a9549d29104aae700d27efb_9366.png'),
(69, 2, 'Giày Adidas 4', 380000, 'Giày Adidas', 'AnyConv.com__67f720759d434872b998ad6b007abe42_9366.png'),
(70, 2, 'Giày Adidas 5', 420000, 'Giày Adidas', 'AnyConv.com__763aac638a2e4c68964eadfd00d75936_9366.png'),
(71, 3, 'Giày Converse 1', 270000, 'Giày Converse', 'AnyConv.com__121186-1.png'),
(72, 3, 'Giày Converse 2', 310000, 'Giày Converse', 'AnyConv.com__162056-5.png'),
(73, 3, 'Giày Converse 3', 300000, 'Giày Converse', 'AnyConv.com__166800v-6.png'),
(74, 3, 'Giày Converse 4', 350000, 'Giày Converse', 'AnyConv.com__1211784.png'),
(75, 3, 'Giày Converse 5', 330000, 'Giày Converse', 'AnyConv.com__06259812_5.png'),
(76, 4, 'Giày Vans 1', 450000, 'Giày Vans', 'vans-authentic-classic-black-vn000ee3blk-1.png'),
(77, 4, 'Giày Vans 2', 380000, 'Giày Vans', 'vans-old-skool-classic-black-black-vn000d3hbka-1.jpg'),
(78, 4, 'Giày Vans 3', 350000, 'Giày Vans', 'vans-sk8-hi-classic-black-white-vn000d5ib8c-1.jpg'),
(79, 4, 'Giày Vans 4', 290000, 'Giày Vans', 'vans-slip-on-checkerboard-black-off-white-vn000eyebww-1.png'),
(80, 4, 'Giày Vans 5', 340000, 'Giày Vans', 'vans-viet-nam-vans-vault-old-skool-lx-black-vn0a4p3xoiu.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `idUser` int(10) NOT NULL,
  `tendangnhap` varchar(50) NOT NULL,
  `matkhau` varchar(50) NOT NULL,
  `hoten` varchar(255) NOT NULL,
  `Gmail` varchar(100) NOT NULL,
  `SDT` varchar(11) NOT NULL,
  `Diachi` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`idUser`, `tendangnhap`, `matkhau`, `hoten`, `Gmail`, `SDT`, `Diachi`) VALUES
(7, 'huy', 'e10adc3949ba59abbe56e057f20f883e', 'Gia Huy', 'huy@gmail.com', '0123494123', 'An Dương Vương - Quận 5 - TP.Hồ chí minh'),
(8, 'truong', 'e10adc3949ba59abbe56e057f20f883e', 'Nguyễn Nhựt Trường', 'nhuttruong@gmail.com', '0123456789', '273 An Dương Vương'),
(9, 'khoavo', 'e10adc3949ba59abbe56e057f20f883e', 'Khoa Võ', 'khoa@gmail.com', '0123123123', 'tphcm'),
(10, 'tuankiet', 'e10adc3949ba59abbe56e057f20f883e', 'Tuấn Kiệt', 'kiet@gmail.com', '0987654321', 'Tphcm');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD PRIMARY KEY (`idCTHD`),
  ADD KEY `idHD` (`idHD`),
  ADD KEY `idSP` (`idSP`);

--
-- Indexes for table `donhang`
--
ALTER TABLE `donhang`
  ADD PRIMARY KEY (`idHD`),
  ADD KEY `idUser` (`idUser`);

--
-- Indexes for table `lienhe`
--
ALTER TABLE `lienhe`
  ADD PRIMARY KEY (`idLH`);

--
-- Indexes for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`idLSP`);

--
-- Indexes for table `nhanvien`
--
ALTER TABLE `nhanvien`
  ADD PRIMARY KEY (`STT`);

--
-- Indexes for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`idSP`),
  ADD KEY `idLSP` (`idLSP`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`idUser`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  MODIFY `idCTHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `donhang`
--
ALTER TABLE `donhang`
  MODIFY `idHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `lienhe`
--
ALTER TABLE `lienhe`
  MODIFY `idLH` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `loaisanpham`
--
ALTER TABLE `loaisanpham`
  MODIFY `idLSP` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `nhanvien`
--
ALTER TABLE `nhanvien`
  MODIFY `STT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `sanpham`
--
ALTER TABLE `sanpham`
  MODIFY `idSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `idUser` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `chitietdonhang`
--
ALTER TABLE `chitietdonhang`
  ADD CONSTRAINT `chitietdonhang_ibfk_1` FOREIGN KEY (`idSP`) REFERENCES `sanpham` (`idSP`),
  ADD CONSTRAINT `chitietdonhang_ibfk_2` FOREIGN KEY (`idHD`) REFERENCES `donhang` (`idHD`);

--
-- Constraints for table `donhang`
--
ALTER TABLE `donhang`
  ADD CONSTRAINT `donhang_ibfk_1` FOREIGN KEY (`idUser`) REFERENCES `user` (`idUser`);

--
-- Constraints for table `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`idLSP`) REFERENCES `loaisanpham` (`idLSP`) ON DELETE NO ACTION ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
