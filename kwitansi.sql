-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2016 at 11:33 PM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `kwitansi`
--

-- --------------------------------------------------------

--
-- Table structure for table `detail_kwitansi`
--

CREATE TABLE IF NOT EXISTS `detail_kwitansi` (
`no_detail` int(6) NOT NULL,
  `no_kwitansi` varchar(6) NOT NULL,
  `no_tindakan` varchar(6) NOT NULL,
  `NIK` varchar(6) NOT NULL,
  `jumlah` int(2) NOT NULL,
  `subtotal` int(11) NOT NULL,
  `flag_detail` int(1) NOT NULL
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=108 ;

--
-- Dumping data for table `detail_kwitansi`
--

INSERT INTO `detail_kwitansi` (`no_detail`, `no_kwitansi`, `no_tindakan`, `NIK`, `jumlah`, `subtotal`, `flag_detail`) VALUES
(47, '674672', '02', '168785', 1, 20000000, 0),
(48, '674672', '01', '123123', 1, 200000, 0),
(56, '987737', '03', '168785', 2, 11085000, 0),
(57, '674672', '02', '168785', 1, 20000000, 0),
(58, '454554', '02', '168785', 1, 20000000, 0),
(59, '454554', '03', '168785', 1, 5542500, 0),
(60, '232345', '01', '168785', 1, 200000, 0),
(61, '232345', '02', '123123', 1, 20000000, 0),
(62, '232345', '03', '123123', 1, 5542500, 0),
(63, '554456', '02', '168785', 1, 20000000, 0),
(64, '554456', '01', '123123', 1, 200000, 0),
(65, '565667', '01', '123123', 1, 200000, 0),
(66, '674264', '01', '123123', 1, 200000, 0),
(67, '742482', '02', '168785', 1, 20000000, 0),
(68, '742482', '02', '168785', 1, 20000000, 0),
(69, '742482', '02', '168785', 1, 20000000, 0),
(70, '424274', '01', '168785', 1, 200000, 0),
(72, '789359', '02', '168785', 1, 20000000, 0),
(73, '789359', '01', '123123', 1, 200000, 0),
(74, '893859', '01', '123123', 1, 200000, 0),
(75, '893859', '02', '168785', 1, 20000000, 0),
(76, '123456', '01', '123123', 1, 200000, 0),
(77, '123456', '01', '168785', 1, 200000, 0),
(78, '123456', '02', '123123', 1, 20000000, 0),
(79, '646462', '01', '123123', 1, 200000, 0),
(80, '646462', '01', '123123', 1, 200000, 0),
(81, '646462', '03', '168785', 1, 5542500, 0),
(82, '823732', '01', '123123', 1, 200000, 0),
(83, '823732', '02', '123123', 1, 20000000, 0),
(84, '121213', '01', '123123', 1, 200000, 0),
(85, '121213', '03', '168785', 1, 5542500, 0),
(86, '143554', '01', '123123', 1, 200000, 0),
(87, '143554', '02', '123123', 1, 20000000, 0),
(88, '743486', '01', '123123', 1, 200000, 0),
(89, '145667', '01', '123123', 1, 200000, 0),
(90, '914929', '01', '123123', 1, 200000, 0),
(91, '742484', '03', '168785', 1, 5542500, 0),
(92, '742484', '01', '123123', 1, 200000, 0),
(93, '742484', '02', '123123', 1, 20000000, 0),
(94, '742484', '04', '123123', 1, 190000, 0),
(95, '742484', '02', '168785', 1, 20000000, 0),
(96, '213132', '02', '168785', 1, 20000000, 0),
(97, '213132', '01', '168785', 1, 200000, 0),
(98, '352357', '01', '123123', 1, 200000, 0),
(99, '352357', '01', '123123', 1, 200000, 0),
(101, '174634', '01', '168785', 1, 200000, 0),
(104, '797879', '02', '123123', 1, 20000000, 0),
(105, '797879', '03', '123123', 1, 5542500, 0),
(107, '797879', '01', '123123', 1, 200000, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_dokter`
--

CREATE TABLE IF NOT EXISTS `tb_dokter` (
  `NIK` varchar(6) NOT NULL,
  `nama_dokter` varchar(30) DEFAULT NULL,
  `alamat_dokter` varchar(50) DEFAULT NULL,
  `spesialis` varchar(50) DEFAULT NULL,
  `flag_dokter` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_dokter`
--

INSERT INTO `tb_dokter` (`NIK`, `nama_dokter`, `alamat_dokter`, `spesialis`, `flag_dokter`) VALUES
('123123', 'dr.Didit,Sp.F', 'Maguwoharjo', 'Jantung', 0),
('168785', 'dr.Hola Sp.A', 'Rumah Kucing 2', 'Anak', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kwitansi`
--

CREATE TABLE IF NOT EXISTS `tb_kwitansi` (
  `no_kwitansi` varchar(6) NOT NULL,
  `tanggal` date NOT NULL,
  `total` int(9) NOT NULL,
  `no_rm` varchar(6) NOT NULL,
  `flag_kwitansi` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_kwitansi`
--

INSERT INTO `tb_kwitansi` (`no_kwitansi`, `tanggal`, `total`, `no_rm`, `flag_kwitansi`) VALUES
('121213', '2016-06-13', 5742500, '121212', 0),
('121332', '0000-00-00', 0, '123456', 0),
('123456', '2016-06-13', 20400000, '121212', 0),
('143554', '2016-06-13', 20200000, '121212', 0),
('145667', '2016-06-13', 200000, '121212', 0),
('174634', '2016-06-16', 200000, '112345', 0),
('213132', '2016-12-12', 20200000, '121212', 0),
('232345', '2016-06-08', 25742500, '121212', 0),
('352357', '2016-12-12', 400000, '123456', 0),
('424274', '2016-06-12', 200000, '121212', 0),
('454554', '2016-06-08', 25542500, '121212', 0),
('554456', '2016-06-08', 20200000, '121212', 0),
('565667', '1993-08-02', 200000, '121212', 0),
('646462', '2016-06-13', 5942500, '121212', 0),
('674264', '1993-08-02', 200000, '121212', 0),
('674672', '2016-05-29', 40200000, '112345', 0),
('742482', '2016-06-13', 60000000, '121212', 0),
('742484', '2016-06-13', 45932500, '121212', 0),
('743486', '2016-06-13', 200000, '121212', 0),
('789359', '2016-06-13', 20200000, '121212', 0),
('797879', '2016-06-16', 25742500, '123456', 0),
('823732', '2016-06-13', 20200000, '121212', 0),
('893859', '2016-06-13', 20200000, '121212', 0),
('914929', '2016-06-13', 200000, '121212', 0),
('987737', '2016-05-29', 11085000, '121212', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_pasien`
--

CREATE TABLE IF NOT EXISTS `tb_pasien` (
  `no_rm` varchar(6) NOT NULL,
  `nama_pasien` varchar(30) DEFAULT NULL,
  `alamat_pasien` varchar(30) DEFAULT NULL,
  `telepon_pasien` varchar(15) DEFAULT NULL,
  `flag_pasien` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_pasien`
--

INSERT INTO `tb_pasien` (`no_rm`, `nama_pasien`, `alamat_pasien`, `telepon_pasien`, `flag_pasien`) VALUES
('112345', 'Pulu', 'Rumah Kucing', '087851484838', 0),
('121212', 'Anggraini ', 'Ngentak ', '087851484838', 1),
('123456', 'Didit J', 'Maguwo', '087', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tb_tindakan`
--

CREATE TABLE IF NOT EXISTS `tb_tindakan` (
  `no_tindakan` varchar(6) NOT NULL,
  `nama_tindakan` varchar(30) NOT NULL,
  `tarif` int(9) NOT NULL,
  `flag_tindakan` int(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tb_tindakan`
--

INSERT INTO `tb_tindakan` (`no_tindakan`, `nama_tindakan`, `tarif`, `flag_tindakan`) VALUES
('01', 'Perawatan Luka ', 200000, 0),
('02', 'Operasi Jantung', 20000000, 0),
('03', 'Laparascopy', 5542500, 0),
('04', 'USG', 190000, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detail_kwitansi`
--
ALTER TABLE `detail_kwitansi`
 ADD PRIMARY KEY (`no_detail`), ADD KEY `no_detail` (`no_detail`,`no_kwitansi`,`no_tindakan`,`jumlah`,`flag_detail`), ADD KEY `no_kwitansi` (`no_kwitansi`), ADD KEY `no_tindakan` (`no_tindakan`), ADD KEY `no_detail_2` (`no_detail`,`no_kwitansi`,`no_tindakan`,`NIK`,`jumlah`,`subtotal`,`flag_detail`), ADD KEY `NIK` (`NIK`);

--
-- Indexes for table `tb_dokter`
--
ALTER TABLE `tb_dokter`
 ADD PRIMARY KEY (`NIK`), ADD KEY `NIK` (`NIK`,`nama_dokter`,`alamat_dokter`,`spesialis`,`flag_dokter`), ADD KEY `NIK_2` (`NIK`,`nama_dokter`,`alamat_dokter`,`spesialis`,`flag_dokter`);

--
-- Indexes for table `tb_kwitansi`
--
ALTER TABLE `tb_kwitansi`
 ADD PRIMARY KEY (`no_kwitansi`), ADD KEY `no_kwitansi` (`no_kwitansi`,`tanggal`,`total`,`no_rm`,`flag_kwitansi`), ADD KEY `no_rm` (`no_rm`);

--
-- Indexes for table `tb_pasien`
--
ALTER TABLE `tb_pasien`
 ADD PRIMARY KEY (`no_rm`), ADD KEY `no_rm` (`no_rm`,`nama_pasien`,`alamat_pasien`,`telepon_pasien`,`flag_pasien`);

--
-- Indexes for table `tb_tindakan`
--
ALTER TABLE `tb_tindakan`
 ADD PRIMARY KEY (`no_tindakan`), ADD KEY `no_tindakan` (`no_tindakan`,`nama_tindakan`,`tarif`,`flag_tindakan`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_kwitansi`
--
ALTER TABLE `detail_kwitansi`
MODIFY `no_detail` int(6) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=108;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detail_kwitansi`
--
ALTER TABLE `detail_kwitansi`
ADD CONSTRAINT `detail_kwitansi_ibfk_1` FOREIGN KEY (`no_kwitansi`) REFERENCES `tb_kwitansi` (`no_kwitansi`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `detail_kwitansi_ibfk_2` FOREIGN KEY (`no_tindakan`) REFERENCES `tb_tindakan` (`no_tindakan`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `detail_kwitansi_ibfk_3` FOREIGN KEY (`NIK`) REFERENCES `tb_dokter` (`NIK`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_kwitansi`
--
ALTER TABLE `tb_kwitansi`
ADD CONSTRAINT `tb_kwitansi_ibfk_1` FOREIGN KEY (`no_rm`) REFERENCES `tb_pasien` (`no_rm`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
