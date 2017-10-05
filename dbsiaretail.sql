-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 05, 2017 at 02:53 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbsiaretail`
--
CREATE DATABASE IF NOT EXISTS `dbsiaretail` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `dbsiaretail`;

-- --------------------------------------------------------

--
-- Table structure for table `akun`
--

DROP TABLE IF EXISTS `akun`;
CREATE TABLE `akun` (
  `KodeAkun` char(6) NOT NULL,
  `NamaAkun` varchar(30) NOT NULL,
  `SaldoAwal` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `akun`
--

INSERT INTO `akun` (`KodeAkun`, `NamaAkun`, `SaldoAwal`) VALUES
('111001', 'KAS ', '100000000.0000'),
('111002', 'KAS BCA', '0.0000'),
('112001', 'PIUTANG DAGANG', '0.0000'),
('113001', 'PERSEDIAAN BARANG DAGANG', '0.0000'),
('114001', 'PERLENGKAPAN KANTOR', '0.0000'),
('121001', 'KENDARAAN', '0.0000'),
('121002', 'AKUM.PENYUT.KENDARAAN', '0.0000'),
('122001', 'INVENTARIS KANTOR', '0.0000'),
('122002', 'AKUM.PENYUT.INV.KANTOR', '0.0000'),
('211001', 'HUTANG USAHA', '0.0000'),
('311001', 'MODAL', '100000000.0000'),
('312001', 'PRIVE', '0.0000'),
('313001', 'LABA DI TAHAN', '0.0000'),
('411001', 'PENJUALAN', '0.0000'),
('411003', 'POT. PENJUALAN', '0.0000'),
('421002', 'PENDAPATAN LAIN-LAIN', '0.0000'),
('431002', 'PENDAPATAN BUNGA BANK', '0.0000'),
('511001', 'PEMBELIAN ', '0.0000'),
('511002', 'HARGA POKOK PENJUALAN', '0.0000'),
('511003', 'RETUR PEMBEILAN', '0.0000'),
('511004', 'POT. PEMBELIAN', '0.0000'),
('521001', 'GAJI KARYAWAN', '0.0000'),
('531001', 'LISTRIK,AIR,TELEPON', '0.0000'),
('541001', 'BY ADMINT. BANK', '0.0000'),
('551001', 'BY TRANSPORT DAN AKOMODAS', '0.0000'),
('561001', 'BY. SUPPLIES KANTOR', '0.0000'),
('571001', 'BY.PENYT.INV.KANTOR', '0.0000'),
('581001', 'BY. SEWA GEDUNG', '0.0000'),
('591001', 'BY. KEAMANAN', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

DROP TABLE IF EXISTS `barang`;
CREATE TABLE `barang` (
  `Kd_Barang` char(8) NOT NULL,
  `NamaBarang` varchar(25) NOT NULL,
  `Ukuran` varchar(20) DEFAULT NULL,
  `Satuan` varchar(10) DEFAULT NULL,
  `HargaJualBarang` decimal(19,4) NOT NULL,
  `StockAwal` int(11) DEFAULT NULL,
  `StockMin` int(11) DEFAULT NULL,
  `StockMax` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detailjurnal`
--

DROP TABLE IF EXISTS `detailjurnal`;
CREATE TABLE `detailjurnal` (
  `NoJurnal` char(8) NOT NULL,
  `KodeAkun` char(6) NOT NULL,
  `Debet` decimal(19,4) NOT NULL,
  `Kredit` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detailjurnal`
--

INSERT INTO `detailjurnal` (`NoJurnal`, `KodeAkun`, `Debet`, `Kredit`) VALUES
('JU000037', '111001', '35000.0000', '0.0000'),
('JU000037', '411001', '0.0000', '35000.0000'),
('JU000038', '111001', '0.0000', '90000.0000'),
('JU000038', '511001', '90000.0000', '0.0000'),
('JU000039', '111001', '0.0000', '2400000.0000'),
('JU000039', '511001', '2400000.0000', '0.0000'),
('JU000040', '111001', '0.0000', '600000.0000'),
('JU000040', '511001', '600000.0000', '0.0000'),
('JU000041', '111001', '0.0000', '760000.0000'),
('JU000041', '531001', '760000.0000', '0.0000'),
('JU000042', '111001', '0.0000', '0.0000'),
('JU000042', '211001', '0.0000', '550000.0000'),
('JU000042', '511001', '550000.0000', '0.0000'),
('JU000043', '111001', '210000.0000', '0.0000'),
('JU000043', '411001', '0.0000', '210000.0000'),
('JU000044', '111001', '50000.0000', '0.0000'),
('JU000044', '112001', '100000.0000', '0.0000'),
('JU000044', '411001', '0.0000', '150000.0000'),
('JU000045', '111001', '100000.0000', '0.0000'),
('JU000045', '112001', '50000.0000', '0.0000'),
('JU000045', '411001', '0.0000', '150000.0000'),
('JU000046', '111001', '100000.0000', '0.0000'),
('JU000046', '112001', '50000.0000', '0.0000'),
('JU000046', '411001', '0.0000', '150000.0000'),
('JU000047', '111001', '100000.0000', '0.0000'),
('JU000047', '112001', '50000.0000', '0.0000'),
('JU000047', '411001', '0.0000', '150000.0000'),
('JU000048', '111001', '75000.0000', '0.0000'),
('JU000048', '112001', '75000.0000', '0.0000'),
('JU000048', '411001', '0.0000', '150000.0000'),
('JU000049', '111001', '75000.0000', '0.0000'),
('JU000049', '112001', '75000.0000', '0.0000'),
('JU000049', '411001', '0.0000', '150000.0000'),
('JU000050', '521001', '6000000.0000', '0.0000'),
('JU000050', '111001', '0.0000', '6000000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `detail_pembelian`
--

DROP TABLE IF EXISTS `detail_pembelian`;
CREATE TABLE `detail_pembelian` (
  `NoNotaBeli` char(7) NOT NULL,
  `Kd_Barang` char(8) NOT NULL,
  `HargaBeliBarang` decimal(19,4) NOT NULL,
  `jumlahBarang` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_pembelian`
--

INSERT INTO `detail_pembelian` (`NoNotaBeli`, `Kd_Barang`, `HargaBeliBarang`, `jumlahBarang`) VALUES
('12390', 'VN001', '12000.0000', 50),
('N0032', 'VN002', '12000.0000', 50),
('NB00001', 'VN001', '12000.0000', 25),
('NB00001', 'VN003', '12500.0000', 20),
('PB00001', 'A0001', '30000.0000', 13),
('PB00001', 'AOOOO1', '250000.0000', 10),
('PB00002', 'B00001', '60000.0000', 13),
('PB00003', 'A0001', '30000.0000', 3),
('PB00004', 'A0001', '30000.0000', 3),
('PB0001', 'VN002', '17000.0000', 90),
('PB00015', 'MB001', '80000.0000', 30),
('PB0003', 'PR001', '50000.0000', 5);

-- --------------------------------------------------------

--
-- Table structure for table `detail_penjualan`
--

DROP TABLE IF EXISTS `detail_penjualan`;
CREATE TABLE `detail_penjualan` (
  `NoNotaJual` char(7) NOT NULL,
  `Kd_Barang` char(8) NOT NULL,
  `jumlahBarang` int(11) NOT NULL,
  `hargaJualBarang` decimal(19,4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `detail_penjualan`
--

INSERT INTO `detail_penjualan` (`NoNotaJual`, `Kd_Barang`, `jumlahBarang`, `hargaJualBarang`) VALUES
('JK00001', 'A0001', 5, '35000.0000'),
('JK00002', 'MB001', 10, '86000.0000'),
('JK00003', 'SP000001', 4, '450000.0000'),
('JK00005', 'A0001', 10, '35000.0000'),
('JK00006', 'CS001', 6, '125000.0000'),
('JK00007', 'A0001', 2, '35000.0000'),
('JK00008', 'A0001', 1, '35000.0000'),
('JK00010', 'VN002', 10, '21000.0000'),
('JK00011', 'VN003', 10, '15000.0000'),
('JK00012', 'VN003', 10, '15000.0000'),
('JK00013', 'VN001', 10, '15000.0000'),
('JK00014', 'VN001', 10, '15000.0000'),
('JK00015', 'VN001', 10, '15000.0000'),
('JK00016', 'VN003', 10, '15000.0000');

-- --------------------------------------------------------

--
-- Table structure for table `jurnal`
--

DROP TABLE IF EXISTS `jurnal`;
CREATE TABLE `jurnal` (
  `NoJurnal` char(8) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `NoBukti` char(8) NOT NULL,
  `Uraian` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jurnal`
--

INSERT INTO `jurnal` (`NoJurnal`, `Tanggal`, `NoBukti`, `Uraian`) VALUES
('JU000001', '2016-03-01 00:00:00', '001', 'PENJUALAN TUNAI CREATIVE T-SHIRT'),
('JU000002', '2016-03-01 00:00:00', '002', 'PENJUALAN TUNAI STAR BLOUSE'),
('JU000003', '2016-03-02 00:00:00', '0003', 'PENJUALAN TUNAI XOXO FASHION'),
('JU000004', '2016-03-03 00:00:00', '0004', 'PENJUALAN KREDIT RAJAWALI'),
('JU000005', '2016-03-04 00:00:00', '05', ''),
('JU000006', '2016-03-05 00:00:00', '005', 'PENJUALAN KREDIT MAWAR DISTRO'),
('JU000007', '2016-03-06 00:00:00', '006', 'PENJUALAN KREDIT SATELIT'),
('JU000008', '2016-05-13 00:00:00', 'JK00001', 'Penjualan  TUNAI  STAR BLOUSE '),
('JU000009', '2016-05-13 00:00:00', 'INV0001', 'Pembelian Barang  TUNAI  PT. NUSANTARA '),
('JU000010', '2016-05-13 00:00:00', 'JK00002', 'Penjualan  TUNAI  DINASTY BUTIQ '),
('JU000011', '2016-05-14 00:00:00', 'JK00003', 'Penjualan  TUNAI  SATELIT '),
('JU000012', '2016-05-14 00:00:00', 'JK00004', 'Penjualan  TUNAI  MAWAR DISTRO '),
('JU000013', '2016-05-23 00:00:00', 'Z100003', 'Pembelian Barang  TUNAI  INDOMEDIA '),
('JU000014', '2016-05-23 00:00:00', 'JK00005', 'Penjualan  TUNAI  TOKO BARU '),
('JU000015', '2016-05-23 00:00:00', '1234', 'PENJUALAN TUNAI RAJAWALI'),
('JU000016', '2016-05-23 00:00:00', 'A0002', 'Pembelian Barang  TUNAI  PT. NUSANTARA '),
('JU000017', '2016-05-23 00:00:00', 'JK00006', 'Penjualan  TUNAI  TOKO BARU '),
('JU000018', '2016-05-23 00:00:00', 'A0001', ''),
('JU000019', '2016-05-23 00:00:00', 'A0002', 'PEMBAYARAN LISTRIK'),
('JU000020', '2016-05-23 00:00:00', 'A0002', 'SEWA GEDUNG'),
('JU000021', '2016-11-19 00:00:00', 'PB00001', 'Pembelian Barang  TUNAI  PT. NUSANTARA '),
('JU000022', '2016-11-19 00:00:00', 'PB00001', 'Pembelian Barang  TUNAI  INDOMEDIA '),
('JU000023', '2016-11-19 00:00:00', 'PB00001', 'Pembelian Barang  TUNAI  INDOMEDIA '),
('JU000024', '2016-11-20 00:00:00', 'JK00001', 'Penjualan  TUNAI  TOKO BARU '),
('JU000025', '2016-11-20 00:00:00', 'JK00001', 'Penjualan  TUNAI  TOKO BARU '),
('JU000026', '2016-11-20 00:00:00', 'JK00001', 'Penjualan  TUNAI  TOKO BARU '),
('JU000027', '2016-11-10 00:00:00', '001', 'PENJUALAN'),
('JU000028', '2016-11-11 00:00:00', '002', 'PENJUALAN'),
('JU000029', '2016-11-12 00:00:00', '003', 'PEMBELIAN'),
('JU000030', '2016-11-13 00:00:00', '003', 'P'),
('JU000031', '2016-11-18 00:00:00', 'PB00002', 'Pembelian Barang  TUNAI  SME '),
('JU000032', '2016-11-19 00:00:00', 'JK00003', 'Penjualan  TUNAI  NAVIRI FASHION '),
('JU000033', '2016-11-19 00:00:00', 'JK00005', 'Penjualan  TUNAI  SATELIT '),
('JU000034', '2016-11-18 00:00:00', 'JK00006', 'Penjualan  TUNAI  MAWAR DISTRO '),
('JU000035', '2016-11-13 00:00:00', 'PB0003', 'Pembelian Barang  TUNAI  ALFA ARTAHANDAYA '),
('JU000036', '2016-11-23 00:00:00', 'JK00007', 'Penjualan  TUNAI  TOKO BARU '),
('JU000037', '2016-11-23 00:00:00', 'JK00008', 'Penjualan  TUNAI  TOKO BARU '),
('JU000038', '2016-11-23 00:00:00', 'PB00004', 'Pembelian Barang  TUNAI  INDOMEDIA '),
('JU000039', '2016-12-03 00:00:00', 'PB00015', 'Pembelian Barang  TUNAI  PT. NUSANTARA '),
('JU000040', '2016-10-01 00:00:00', '12390', 'Pembelian Barang  TUNAI  ROYAL JAYA '),
('JU000041', '2016-12-04 00:00:00', 'N0023', 'PEMBAYARAN LISTRIK'),
('JU000042', '2017-01-31 00:00:00', 'NB00001', 'Pembelian Barang  KREDIT  ALFA ARTAHANDAYA '),
('JU000043', '2017-03-20 00:00:00', 'JK00010', 'Penjualan  TUNAI  DINASTY BUTIQ '),
('JU000044', '2017-03-21 00:00:00', 'JK00011', 'Penjualan  KREDIT  NAVIRI FASHION '),
('JU000045', '2017-03-21 00:00:00', 'JK00012', 'Penjualan  KREDIT  XOXO FASHION '),
('JU000046', '2017-03-21 00:00:00', 'JK00013', 'Penjualan  KREDIT  CREATIVE T-SHIRT '),
('JU000047', '2017-03-21 00:00:00', 'JK00014', 'Penjualan  KREDIT  NAVIRI FASHION '),
('JU000048', '2017-03-21 00:00:00', 'JK00015', 'Penjualan  KREDIT  MAWAR DISTRO '),
('JU000049', '2017-03-21 00:00:00', 'JK00016', 'Penjualan  KREDIT  PT. WOODPOINT '),
('JU000050', '2017-03-30 00:00:00', 'B01', 'GAJI KARYAWAN');

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

DROP TABLE IF EXISTS `pelanggan`;
CREATE TABLE `pelanggan` (
  `Kd_Pelanggan` char(6) NOT NULL,
  `NamaPelanggan` varchar(25) NOT NULL,
  `C_Person` varchar(12) DEFAULT NULL,
  `AlamatPelanggan` varchar(30) NOT NULL,
  `TeleponPelanggan` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`Kd_Pelanggan`, `NamaPelanggan`, `C_Person`, `AlamatPelanggan`, `TeleponPelanggan`) VALUES
('A00001', 'TOKO BARU', 'SUSI', 'JL. ABIMANYU', '024 8678543'),
('B00001', 'RAJAWALI', 'AGUS', 'JL.MAWAR N0.5', '024-788899'),
('C00001', 'STAR BLOUSE', 'DONI', 'JL. PAHLAWAN NO.3 SEMARANG', '024-8678888'),
('C00002', 'NAVIRI FASHION', 'YULIUS', 'JL.KELUD RAYA NO.17 SEMARANG', '024-8769999'),
('C00003', 'DINASTY BUTIQ', 'INDRA', 'JL.KELUT RAYA NO.1 SEMARANG', '024-888888'),
('C00005', 'CREATIVE T-SHIRT', 'CHANDRA', 'JL.KOALA MAS SALATIGA', '028-8866669'),
('C00006', 'SATELIT', 'LILIK', 'JL. RADEN PATAH NO.5 PATI', '028-76688777'),
('C00007', 'XOXO FASHION', 'RIVI', 'JL. FATMAWATI N0.9 PEKALONGAN', '029-899997766'),
('CS0101', 'PT. WOODPOINT', 'YANTO', 'KIC BLOK 27A', '098484375'),
('S00001', 'MAWAR DISTRO', 'IKA', 'JL. MAWAR ', '0246788888');

-- --------------------------------------------------------

--
-- Table structure for table `pemasok`
--

DROP TABLE IF EXISTS `pemasok`;
CREATE TABLE `pemasok` (
  `Kd_Pemasok` char(6) NOT NULL,
  `NamaPemasok` varchar(25) NOT NULL,
  `C_Person` varchar(12) DEFAULT NULL,
  `AlamatPemasok` varchar(30) NOT NULL,
  `TeleponPemasok` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemasok`
--

INSERT INTO `pemasok` (`Kd_Pemasok`, `NamaPemasok`, `C_Person`, `AlamatPemasok`, `TeleponPemasok`) VALUES
('A00001', 'INDOMEDIA', 'EKI', 'JL. SRI REJEKI', '024 35624'),
('B00001', 'PT. NUSANTARA', 'DIDIN', 'JL. HASANUDIN N0 7', '024-7888888'),
('P00001', 'PRINCE ', 'DINO', 'JL. MANGGALA NO.2 JAKARTA', '021-678567'),
('P00002', 'SME', 'RINA', 'JL.RADEN PATAH NO.6 JOGJA', '028-8889999'),
('P00003', 'MSI', 'DIDIN', 'JL. GAJAH MADA RAYA  JAKARTA', '021-8443339'),
('P00004', 'ALFA ARTAHANDAYA', 'FIFI', 'JL. PAHLAWAN NO.9 SURABAYA', '029-8555599'),
('P00005', 'HQ MILENIA', 'FITRI', 'JL. FATMAWATI 5 JAKARTA ', '021-9999999'),
('RJ1001', 'ROYAL JAYA', 'YULIANTO', 'JL. KUSUMA SIDOARJO', '0877374755'),
('SP0003', 'PT. KREASI', 'YUDI', 'SIDOARJO', '087698767');

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

DROP TABLE IF EXISTS `pembelian`;
CREATE TABLE `pembelian` (
  `NoNotaBeli` char(7) NOT NULL,
  `Tanggal` datetime NOT NULL,
  `Kd_Pemasok` char(6) DEFAULT NULL,
  `CaraBayar` varchar(6) NOT NULL,
  `JthTempo` datetime DEFAULT NULL,
  `DiscontBeli` decimal(19,4) DEFAULT NULL,
  `UangMuka` decimal(19,4) NOT NULL,
  `JmlHutang` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`NoNotaBeli`, `Tanggal`, `Kd_Pemasok`, `CaraBayar`, `JthTempo`, `DiscontBeli`, `UangMuka`, `JmlHutang`) VALUES
('12390', '2016-10-01 00:00:00', 'RJ1001', 'TUNAI', '2016-12-04 00:00:00', '0.0000', '0.0000', '0.0000'),
('N0032', '2016-10-18 00:00:00', 'RJ1001', 'TUNAI', '2016-12-07 00:00:00', '0.0000', '0.0000', '0.0000'),
('NB00001', '2017-01-31 00:00:00', 'P00004', 'KREDIT', '2017-02-28 00:00:00', '0.0000', '0.0000', '550000.0000'),
('PB00001', '2016-11-19 00:00:00', 'A00001', 'TUNAI', '2014-11-19 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB00002', '2016-11-18 00:00:00', 'P00002', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB00003', '2016-11-23 00:00:00', 'A00001', 'TUNAI', '2014-11-23 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB00004', '2016-11-23 00:00:00', 'A00001', 'TUNAI', '2014-11-23 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB0001', '2016-10-13 00:00:00', 'RJ1001', 'TUNAI', '2016-12-04 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB00015', '2016-12-03 00:00:00', 'B00001', 'TUNAI', '2016-12-03 00:00:00', '0.0000', '0.0000', '0.0000'),
('PB0003', '2016-11-13 00:00:00', 'P00004', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

DROP TABLE IF EXISTS `penjualan`;
CREATE TABLE `penjualan` (
  `NoNotaJual` char(7) NOT NULL,
  `TglJual` datetime DEFAULT NULL,
  `Kd_Pelanggan` char(6) NOT NULL,
  `TglOrder` datetime DEFAULT NULL,
  `CaraBayar` varchar(6) NOT NULL,
  `JthTempo` datetime DEFAULT NULL,
  `UangMuka` decimal(19,4) NOT NULL,
  `JmlPiutang` decimal(19,4) DEFAULT NULL,
  `DiscontJual` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`NoNotaJual`, `TglJual`, `Kd_Pelanggan`, `TglOrder`, `CaraBayar`, `JthTempo`, `UangMuka`, `JmlPiutang`, `DiscontJual`) VALUES
('JK00001', '2016-11-20 00:00:00', 'A00001', '2014-11-19 00:00:00', 'TUNAI', '2014-11-19 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00002', '2016-11-16 00:00:00', 'B00001', '2014-11-16 00:00:00', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00003', '2016-11-19 00:00:00', 'C00002', '2014-11-19 00:00:00', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00004', '2016-11-20 00:00:00', 'C00006', '2014-11-20 00:00:00', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00005', '2016-11-19 00:00:00', 'C00006', '2014-11-19 00:00:00', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00006', '2016-11-18 00:00:00', 'S00001', '2014-11-18 00:00:00', 'TUNAI', '2014-11-21 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00007', '2016-11-23 00:00:00', 'A00001', '2014-11-23 00:00:00', 'TUNAI', '2014-11-23 00:00:00', '0.0000', '5000.0000', '0.0000'),
('JK00008', '2016-11-23 00:00:00', 'A00001', '2014-11-23 00:00:00', 'TUNAI', '2014-11-23 00:00:00', '0.0000', '5000.0000', '0.0000'),
('JK00009', '2016-11-01 00:00:00', 'CS0101', '2016-12-07 00:00:00', 'TUNAI', '2016-12-07 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00010', '2017-03-20 00:00:00', 'C00003', '2017-03-20 00:00:00', 'TUNAI', '2017-03-20 00:00:00', '0.0000', '0.0000', '0.0000'),
('JK00011', '2017-03-21 00:00:00', 'C00002', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '50000.0000', '100000.0000', '0.0000'),
('JK00012', '2017-03-21 00:00:00', 'C00007', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '100000.0000', '50000.0000', '0.0000'),
('JK00013', '2017-03-21 00:00:00', 'C00005', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '100000.0000', '50000.0000', '0.0000'),
('JK00014', '2017-03-21 00:00:00', 'C00002', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '100000.0000', '50000.0000', '0.0000'),
('JK00015', '2017-03-21 00:00:00', 'S00001', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '75000.0000', '75000.0000', '0.0000'),
('JK00016', '2017-03-21 00:00:00', 'CS0101', '2017-03-21 00:00:00', 'KREDIT', '2017-04-21 00:00:00', '75000.0000', '75000.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `stok_opname`
--

DROP TABLE IF EXISTS `stok_opname`;
CREATE TABLE `stok_opname` (
  `Tanggal` datetime NOT NULL,
  `Kd_Barang` varchar(8) NOT NULL,
  `Qty_Masuk` decimal(5,0) DEFAULT NULL,
  `Harga_Beli` decimal(19,4) DEFAULT NULL,
  `Qty_Keluar` decimal(5,0) DEFAULT NULL,
  `Harga_Jual` decimal(19,4) DEFAULT NULL,
  `Qty_Saldo` decimal(18,0) DEFAULT NULL,
  `Harga_Saldo` decimal(19,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stok_opname`
--

INSERT INTO `stok_opname` (`Tanggal`, `Kd_Barang`, `Qty_Masuk`, `Harga_Beli`, `Qty_Keluar`, `Harga_Jual`, `Qty_Saldo`, `Harga_Saldo`) VALUES
('2014-11-19 00:00:00', 'A0001   ', '13', '30000.0000', '0', '0.0000', '0', '0.0000'),
('2014-11-19 00:00:00', 'AOOOO1  ', '10', '250000.0000', '0', '0.0000', '0', '0.0000'),
('2014-11-20 00:00:00', 'A0001   ', '0', '0.0000', '5', '35000.0000', '0', '0.0000'),
('2014-11-18 00:00:00', 'B00001  ', '13', '60000.0000', '0', '0.0000', '0', '0.0000'),
('2014-11-19 00:00:00', 'SP000001', '0', '0.0000', '4', '450000.0000', '0', '0.0000'),
('2014-11-19 00:00:00', 'A0001   ', '0', '0.0000', '10', '35000.0000', '0', '0.0000'),
('2014-11-18 00:00:00', 'CS001   ', '0', '0.0000', '6', '125000.0000', '0', '0.0000'),
('2014-11-13 00:00:00', 'PR001   ', '5', '50000.0000', '0', '0.0000', '0', '0.0000'),
('2014-11-23 00:00:00', 'A0001   ', '0', '0.0000', '2', '35000.0000', '0', '0.0000'),
('2014-11-23 00:00:00', 'A0001   ', '0', '0.0000', '1', '35000.0000', '0', '0.0000'),
('2014-11-23 00:00:00', 'A0001   ', '3', '30000.0000', '0', '0.0000', '0', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `temp`
--

DROP TABLE IF EXISTS `temp`;
CREATE TABLE `temp` (
  `NOMOR` int(11) NOT NULL,
  `SATU` varchar(50) DEFAULT NULL,
  `DUA` varchar(50) DEFAULT NULL,
  `TIGA` int(11) DEFAULT NULL,
  `EMPAT` int(11) DEFAULT NULL,
  `LIMA` int(11) DEFAULT NULL,
  `ENAM` varchar(50) DEFAULT NULL,
  `TUJUH` varchar(50) DEFAULT NULL,
  `DELAPAN` varchar(50) DEFAULT NULL,
  `SEMBILAN` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `temp`
--

INSERT INTO `temp` (`NOMOR`, `SATU`, `DUA`, `TIGA`, `EMPAT`, `LIMA`, `ENAM`, `TUJUH`, `DELAPAN`, `SEMBILAN`) VALUES
(12, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, '121001', 'KENDARAAN', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(14, '121002', 'AKUM.PENYUT.KENDARAAN', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(15, '122001', 'INVENTARIS KANTOR', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(16, '122002', 'AKUM.PENYUT.INV.KANTOR', 0, NULL, NULL, NULL, NULL, NULL, NULL),
(17, '', '', NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `UserName` varchar(15) NOT NULL,
  `Password` varchar(15) NOT NULL,
  `StatusUser` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`UserName`, `Password`, `StatusUser`) VALUES
('ADMIN', 'admin', 'ADMIN'),
('GUDANG', 'gudang', 'GUDANG'),
('ROHMADI', 'rohmadi', 'PIMPINAN');

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_bayarhutangpiutang`
--
DROP VIEW IF EXISTS `v_bayarhutangpiutang`;
CREATE TABLE `v_bayarhutangpiutang` (
`NoJurnal` char(8)
,`tanggal` datetime
,`nobukti` char(8)
,`uraian` varchar(50)
,`kodeakun` char(6)
,`namaakun` varchar(30)
,`DEBET` decimal(19,4)
,`Kredit` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_beli`
--
DROP VIEW IF EXISTS `v_beli`;
CREATE TABLE `v_beli` (
`NoNotaBeli` char(7)
,`Tanggal` datetime
,`NamaPemasok` varchar(25)
,`NamaBarang` varchar(25)
,`HargaBeliBarang` decimal(19,4)
,`jumlahBarang` int(11)
,`CaraBayar` varchar(6)
,`JthTempo` datetime
,`DiscontBeli` decimal(19,4)
,`UangMuka` decimal(19,4)
,`JmlHutang` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_hutang`
--
DROP VIEW IF EXISTS `v_hutang`;
CREATE TABLE `v_hutang` (
`NONOTA` char(7)
,`TANGGAL` datetime
,`PEMASOK` varchar(25)
,`JTHTEMPO` datetime
,`JMLHUTANG` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_jual`
--
DROP VIEW IF EXISTS `v_jual`;
CREATE TABLE `v_jual` (
`NoNotaJual` char(7)
,`TglJual` datetime
,`NamaPelanggan` varchar(25)
,`NamaBarang` varchar(25)
,`HargaJualBarang` decimal(19,4)
,`jumlahBarang` int(11)
,`TglOrder` datetime
,`CaraBayar` varchar(6)
,`JthTempo` datetime
,`UangMuka` decimal(19,4)
,`JmlPiutang` decimal(19,4)
,`DiscontJual` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kas_d`
--
DROP VIEW IF EXISTS `v_kas_d`;
CREATE TABLE `v_kas_d` (
`uraian` varchar(50)
,`debet` decimal(19,4)
,`kredit` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kas_k`
--
DROP VIEW IF EXISTS `v_kas_k`;
CREATE TABLE `v_kas_k` (
`uraian` varchar(50)
,`debet` decimal(19,4)
,`kredit` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kas_sumd`
--
DROP VIEW IF EXISTS `v_kas_sumd`;
CREATE TABLE `v_kas_sumd` (
`SumD` decimal(41,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_kas_sumk`
--
DROP VIEW IF EXISTS `v_kas_sumk`;
CREATE TABLE `v_kas_sumk` (
`SumK` decimal(41,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lap_bayar_hutang`
--
DROP VIEW IF EXISTS `v_lap_bayar_hutang`;
CREATE TABLE `v_lap_bayar_hutang` (
`nobukti` char(8)
,`uraian` varchar(50)
,`tanggal` datetime
,`Jumlah` decimal(41,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_lap_bayar_piutang`
--
DROP VIEW IF EXISTS `v_lap_bayar_piutang`;
CREATE TABLE `v_lap_bayar_piutang` (
`nobukti` char(8)
,`uraian` varchar(50)
,`tanggal` datetime
,`Jumlah` decimal(41,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_piutang`
--
DROP VIEW IF EXISTS `v_piutang`;
CREATE TABLE `v_piutang` (
`NONOTA` char(7)
,`TglJual` datetime
,`PELANGGAN` varchar(25)
,`JTHTEMPO` datetime
,`JMLPIUTANG` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stockopname`
--
DROP VIEW IF EXISTS `v_stockopname`;
CREATE TABLE `v_stockopname` (
`KODE` char(8)
,`NAMABRG` double
,`JUMLAHSTOCK` int(11)
,`HARGA` decimal(19,4)
,`TOTAL` decimal(29,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_stockosong`
--
DROP VIEW IF EXISTS `v_stockosong`;
CREATE TABLE `v_stockosong` (
`KODE` char(8)
,`NAMABRG` double
,`JUMLAH_STOCK` int(11)
,`HARGA` decimal(19,4)
,`TOTAL` decimal(29,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_tampiljurnal`
--
DROP VIEW IF EXISTS `v_tampiljurnal`;
CREATE TABLE `v_tampiljurnal` (
`NoJurnal` char(8)
,`tanggal` datetime
,`nobukti` char(8)
,`uraian` varchar(50)
,`kodeakun` char(6)
,`namaakun` varchar(30)
,`DEBET` decimal(19,4)
,`Kredit` decimal(19,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_totalbeli`
--
DROP VIEW IF EXISTS `v_totalbeli`;
CREATE TABLE `v_totalbeli` (
`NoNotaBeli` char(7)
,`TOTAL` decimal(51,4)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `v_totaljual`
--
DROP VIEW IF EXISTS `v_totaljual`;
CREATE TABLE `v_totaljual` (
`NoNotaJual` char(7)
,`TOTAL` decimal(51,4)
);

-- --------------------------------------------------------

--
-- Structure for view `v_bayarhutangpiutang`
--
DROP TABLE IF EXISTS `v_bayarhutangpiutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_bayarhutangpiutang`  AS  select `d`.`NoJurnal` AS `NoJurnal`,`j`.`Tanggal` AS `tanggal`,`j`.`NoBukti` AS `nobukti`,`j`.`Uraian` AS `uraian`,`a`.`KodeAkun` AS `kodeakun`,`a`.`NamaAkun` AS `namaakun`,`d`.`Debet` AS `DEBET`,`d`.`Kredit` AS `Kredit` from ((`akun` `a` join `jurnal` `j`) join `detailjurnal` `d`) where ((`a`.`KodeAkun` = `d`.`KodeAkun`) and (`d`.`NoJurnal` = `j`.`NoJurnal`) and (`d`.`KodeAkun` = '111002')) group by `d`.`NoJurnal`,`j`.`Tanggal`,`j`.`NoBukti`,`j`.`Uraian`,`a`.`KodeAkun`,`a`.`NamaAkun`,`d`.`Debet`,`d`.`Kredit` ;

-- --------------------------------------------------------

--
-- Structure for view `v_beli`
--
DROP TABLE IF EXISTS `v_beli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_beli`  AS  select `pb`.`NoNotaBeli` AS `NoNotaBeli`,`pb`.`Tanggal` AS `Tanggal`,`p`.`NamaPemasok` AS `NamaPemasok`,`b`.`NamaBarang` AS `NamaBarang`,`dpb`.`HargaBeliBarang` AS `HargaBeliBarang`,`dpb`.`jumlahBarang` AS `jumlahBarang`,`pb`.`CaraBayar` AS `CaraBayar`,`pb`.`JthTempo` AS `JthTempo`,`pb`.`DiscontBeli` AS `DiscontBeli`,`pb`.`UangMuka` AS `UangMuka`,`pb`.`JmlHutang` AS `JmlHutang` from (((`pemasok` `p` join `pembelian` `pb` on((`p`.`Kd_Pemasok` = `pb`.`Kd_Pemasok`))) join `detail_pembelian` `dpb` on((`pb`.`NoNotaBeli` = `dpb`.`NoNotaBeli`))) join `barang` `b` on((`dpb`.`Kd_Barang` = `b`.`Kd_Barang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_hutang`
--
DROP TABLE IF EXISTS `v_hutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_hutang`  AS  select `pb`.`NoNotaBeli` AS `NONOTA`,`pb`.`Tanggal` AS `TANGGAL`,`ps`.`NamaPemasok` AS `PEMASOK`,`pb`.`JthTempo` AS `JTHTEMPO`,`pb`.`JmlHutang` AS `JMLHUTANG` from (`pembelian` `pb` join `pemasok` `ps` on((`pb`.`Kd_Pemasok` = `ps`.`Kd_Pemasok`))) where (`pb`.`JmlHutang` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_jual`
--
DROP TABLE IF EXISTS `v_jual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_jual`  AS  select `pj`.`NoNotaJual` AS `NoNotaJual`,`pj`.`TglJual` AS `TglJual`,`pl`.`NamaPelanggan` AS `NamaPelanggan`,`b`.`NamaBarang` AS `NamaBarang`,`b`.`HargaJualBarang` AS `HargaJualBarang`,`dpj`.`jumlahBarang` AS `jumlahBarang`,`pj`.`TglOrder` AS `TglOrder`,`pj`.`CaraBayar` AS `CaraBayar`,`pj`.`JthTempo` AS `JthTempo`,`pj`.`UangMuka` AS `UangMuka`,`pj`.`JmlPiutang` AS `JmlPiutang`,`pj`.`DiscontJual` AS `DiscontJual` from (((`pelanggan` `pl` join `penjualan` `pj` on((`pl`.`Kd_Pelanggan` = `pj`.`Kd_Pelanggan`))) join `detail_penjualan` `dpj` on((`pj`.`NoNotaJual` = `dpj`.`NoNotaJual`))) join `barang` `b` on((`dpj`.`Kd_Barang` = `b`.`Kd_Barang`))) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kas_d`
--
DROP TABLE IF EXISTS `v_kas_d`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kas_d`  AS  select `j`.`Uraian` AS `uraian`,`d`.`Debet` AS `debet`,`d`.`Kredit` AS `kredit` from (`detailjurnal` `d` join `jurnal` `j` on((`d`.`NoJurnal` = `j`.`NoJurnal`))) where ((`d`.`KodeAkun` like '111%') and (`d`.`Debet` > 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kas_k`
--
DROP TABLE IF EXISTS `v_kas_k`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kas_k`  AS  select `j`.`Uraian` AS `uraian`,`d`.`Debet` AS `debet`,`d`.`Kredit` AS `kredit` from (`detailjurnal` `d` join `jurnal` `j` on((`d`.`NoJurnal` = `j`.`NoJurnal`))) where ((`d`.`KodeAkun` like '111%') and (`d`.`Kredit` > 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kas_sumd`
--
DROP TABLE IF EXISTS `v_kas_sumd`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kas_sumd`  AS  select sum(`d`.`Debet`) AS `SumD` from (`detailjurnal` `d` join `jurnal` `j` on((`d`.`NoJurnal` = `j`.`NoJurnal`))) where ((`d`.`KodeAkun` like '111%') and (`d`.`Debet` > 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_kas_sumk`
--
DROP TABLE IF EXISTS `v_kas_sumk`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_kas_sumk`  AS  select sum(`d`.`Kredit`) AS `SumK` from (`detailjurnal` `d` join `jurnal` `j` on((`d`.`NoJurnal` = `j`.`NoJurnal`))) where ((`d`.`KodeAkun` like '111%') and (`d`.`Kredit` > 0)) ;

-- --------------------------------------------------------

--
-- Structure for view `v_lap_bayar_hutang`
--
DROP TABLE IF EXISTS `v_lap_bayar_hutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lap_bayar_hutang`  AS  select `v_tampiljurnal`.`nobukti` AS `nobukti`,`v_tampiljurnal`.`uraian` AS `uraian`,`v_tampiljurnal`.`tanggal` AS `tanggal`,sum(`v_tampiljurnal`.`Kredit`) AS `Jumlah` from `v_tampiljurnal` where (`v_tampiljurnal`.`uraian` like '%pembayaran hutang%') group by `v_tampiljurnal`.`uraian`,`v_tampiljurnal`.`nobukti`,`v_tampiljurnal`.`tanggal` ;

-- --------------------------------------------------------

--
-- Structure for view `v_lap_bayar_piutang`
--
DROP TABLE IF EXISTS `v_lap_bayar_piutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_lap_bayar_piutang`  AS  select `v_tampiljurnal`.`nobukti` AS `nobukti`,`v_tampiljurnal`.`uraian` AS `uraian`,`v_tampiljurnal`.`tanggal` AS `tanggal`,sum(`v_tampiljurnal`.`DEBET`) AS `Jumlah` from `v_tampiljurnal` where (`v_tampiljurnal`.`uraian` like '%pembayaran piutang%') group by `v_tampiljurnal`.`uraian`,`v_tampiljurnal`.`nobukti`,`v_tampiljurnal`.`tanggal` ;

-- --------------------------------------------------------

--
-- Structure for view `v_piutang`
--
DROP TABLE IF EXISTS `v_piutang`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_piutang`  AS  select `pj`.`NoNotaJual` AS `NONOTA`,`pj`.`TglJual` AS `TglJual`,`pl`.`NamaPelanggan` AS `PELANGGAN`,`pj`.`JthTempo` AS `JTHTEMPO`,`pj`.`JmlPiutang` AS `JMLPIUTANG` from (`penjualan` `pj` join `pelanggan` `pl` on((`pj`.`Kd_Pelanggan` = `pl`.`Kd_Pelanggan`))) where (`pj`.`JmlPiutang` > 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_stockopname`
--
DROP TABLE IF EXISTS `v_stockopname`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockopname`  AS  select `b`.`Kd_Barang` AS `KODE`,((`b`.`NamaBarang` + ' ') + `b`.`Ukuran`) AS `NAMABRG`,`b`.`StockAwal` AS `JUMLAHSTOCK`,`b`.`HargaJualBarang` AS `HARGA`,(`b`.`StockAwal` * `b`.`HargaJualBarang`) AS `TOTAL` from `barang` `b` ;

-- --------------------------------------------------------

--
-- Structure for view `v_stockosong`
--
DROP TABLE IF EXISTS `v_stockosong`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_stockosong`  AS  select `b`.`Kd_Barang` AS `KODE`,((`b`.`NamaBarang` + ' ') + `b`.`Ukuran`) AS `NAMABRG`,`b`.`StockAwal` AS `JUMLAH_STOCK`,`b`.`HargaJualBarang` AS `HARGA`,(`b`.`StockAwal` * `b`.`HargaJualBarang`) AS `TOTAL` from `barang` `b` where (`b`.`StockAwal` = 0) ;

-- --------------------------------------------------------

--
-- Structure for view `v_tampiljurnal`
--
DROP TABLE IF EXISTS `v_tampiljurnal`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_tampiljurnal`  AS  select `d`.`NoJurnal` AS `NoJurnal`,`j`.`Tanggal` AS `tanggal`,`j`.`NoBukti` AS `nobukti`,`j`.`Uraian` AS `uraian`,`a`.`KodeAkun` AS `kodeakun`,`a`.`NamaAkun` AS `namaakun`,`d`.`Debet` AS `DEBET`,`d`.`Kredit` AS `Kredit` from ((`akun` `a` join `jurnal` `j`) join `detailjurnal` `d`) where ((`a`.`KodeAkun` = `d`.`KodeAkun`) and (`d`.`NoJurnal` = `j`.`NoJurnal`)) group by `d`.`NoJurnal`,`j`.`Tanggal`,`j`.`NoBukti`,`j`.`Uraian`,`a`.`KodeAkun`,`a`.`NamaAkun`,`d`.`Debet`,`d`.`Kredit` ;

-- --------------------------------------------------------

--
-- Structure for view `v_totalbeli`
--
DROP TABLE IF EXISTS `v_totalbeli`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_totalbeli`  AS  select `dp`.`NoNotaBeli` AS `NoNotaBeli`,sum((`dp`.`jumlahBarang` * `dp`.`HargaBeliBarang`)) AS `TOTAL` from ((`pemasok` `p` join `pembelian` `pb` on((`p`.`Kd_Pemasok` = `pb`.`Kd_Pemasok`))) join `detail_pembelian` `dp` on((`pb`.`NoNotaBeli` = `dp`.`NoNotaBeli`))) group by `dp`.`NoNotaBeli` ;

-- --------------------------------------------------------

--
-- Structure for view `v_totaljual`
--
DROP TABLE IF EXISTS `v_totaljual`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `v_totaljual`  AS  select `dpj`.`NoNotaJual` AS `NoNotaJual`,sum((`dpj`.`jumlahBarang` * `bb`.`HargaJualBarang`)) AS `TOTAL` from (((`pelanggan` `pl` join `penjualan` `pj` on((`pl`.`Kd_Pelanggan` = `pj`.`Kd_Pelanggan`))) join `detail_penjualan` `dpj` on((`pj`.`NoNotaJual` = `dpj`.`NoNotaJual`))) join `barang` `bb` on((`dpj`.`Kd_Barang` = `bb`.`Kd_Barang`))) group by `dpj`.`NoNotaJual` ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `akun`
--
ALTER TABLE `akun`
  ADD PRIMARY KEY (`KodeAkun`);

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kd_Barang`);

--
-- Indexes for table `jurnal`
--
ALTER TABLE `jurnal`
  ADD PRIMARY KEY (`NoJurnal`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`Kd_Pelanggan`);

--
-- Indexes for table `pemasok`
--
ALTER TABLE `pemasok`
  ADD PRIMARY KEY (`Kd_Pemasok`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`NoNotaBeli`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`NoNotaJual`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`UserName`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
