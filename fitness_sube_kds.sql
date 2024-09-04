-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Anamakine: 127.0.0.1:3306
-- Üretim Zamanı: 04 Oca 2022, 16:35:13
-- Sunucu sürümü: 5.7.31
-- PHP Sürümü: 7.3.21

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Veritabanı: `fitness_sube_kds`
--

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `adminx`
--

DROP TABLE IF EXISTS `adminx`;
CREATE TABLE IF NOT EXISTS `adminx` (
  `admin_id` int(11) NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `admin_password` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`admin_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `adminx`
--

INSERT INTO `adminx` (`admin_id`, `admin_username`, `admin_password`) VALUES
(1, 'admin', '1234');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `aylik_gelir1`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `aylik_gelir1`;
CREATE TABLE IF NOT EXISTS `aylik_gelir1` (
`sube_ad` varchar(255)
,`net_gelir` int(7)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `aylik_gelir2`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `aylik_gelir2`;
CREATE TABLE IF NOT EXISTS `aylik_gelir2` (
`sube_ad` varchar(255)
,`net_gelir2` int(7)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `aylik_gelir3`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `aylik_gelir3`;
CREATE TABLE IF NOT EXISTS `aylik_gelir3` (
`sube_ad` varchar(255)
,`net_gelir3` int(7)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `balcova_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `balcova_musterileri`;
CREATE TABLE IF NOT EXISTS `balcova_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `bayrakli_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `bayrakli_musterileri`;
CREATE TABLE IF NOT EXISTS `bayrakli_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `cinsiyet`
--

DROP TABLE IF EXISTS `cinsiyet`;
CREATE TABLE IF NOT EXISTS `cinsiyet` (
  `c_id` int(11) NOT NULL,
  `c_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `cinsiyet`
--

INSERT INTO `cinsiyet` (`c_id`, `c_ad`) VALUES
(1, 'Erkek'),
(2, 'Kadın');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekipman`
--

DROP TABLE IF EXISTS `ekipman`;
CREATE TABLE IF NOT EXISTS `ekipman` (
  `ekipman_id` int(11) NOT NULL AUTO_INCREMENT,
  `ekipman_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ekipman_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ekipman`
--

INSERT INTO `ekipman` (`ekipman_id`, `ekipman_ad`) VALUES
(1, 'Koşu Bandı'),
(2, 'Kondisyon Bisiklet'),
(3, 'Serbest Alet(Dambıl)'),
(4, 'Ağırlık Plakası'),
(5, 'Seated Chest Press'),
(6, 'Butterfly'),
(7, 'Shoulder Press'),
(8, 'Seated Row'),
(9, 'Biceps Curl'),
(10, 'Triceps Press'),
(11, 'Lower Back'),
(12, 'Abdominal Machine'),
(13, 'Seated Leg Curl'),
(14, 'Horizonal Leg Curl'),
(15, 'Leg Extension'),
(16, 'Leg Press'),
(17, 'Multi Hip'),
(18, 'Seated Calf'),
(19, 'Abdtuctor'),
(20, 'Addtuctor');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_balcova`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_balcova`;
CREATE TABLE IF NOT EXISTS `ekipman_balcova` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_bayrakli`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_bayrakli`;
CREATE TABLE IF NOT EXISTS `ekipman_bayrakli` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_gaziemir`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_gaziemir`;
CREATE TABLE IF NOT EXISTS `ekipman_gaziemir` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_guzelbahce`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_guzelbahce`;
CREATE TABLE IF NOT EXISTS `ekipman_guzelbahce` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_karabaglar`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_karabaglar`;
CREATE TABLE IF NOT EXISTS `ekipman_karabaglar` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_karsiyaka`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_karsiyaka`;
CREATE TABLE IF NOT EXISTS `ekipman_karsiyaka` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_konak`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_konak`;
CREATE TABLE IF NOT EXISTS `ekipman_konak` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `ekipman_narlidere`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `ekipman_narlidere`;
CREATE TABLE IF NOT EXISTS `ekipman_narlidere` (
`sube_id` int(11)
,`ekipman_id` int(11)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ekipman_sube`
--

DROP TABLE IF EXISTS `ekipman_sube`;
CREATE TABLE IF NOT EXISTS `ekipman_sube` (
  `ekipman_id` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  KEY `ekipman_id` (`ekipman_id`),
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ekipman_sube`
--

INSERT INTO `ekipman_sube` (`ekipman_id`, `sube_id`) VALUES
(1, 11),
(2, 11),
(3, 11),
(4, 11),
(5, 11),
(6, 11),
(7, 11),
(8, 11),
(9, 11),
(10, 11),
(11, 11),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(1, 21),
(2, 21),
(3, 21),
(4, 21),
(5, 21),
(6, 21),
(7, 21),
(8, 21),
(9, 21),
(10, 21),
(11, 21),
(12, 21),
(13, 21),
(14, 21),
(15, 21),
(16, 21),
(17, 21),
(18, 21),
(19, 21),
(1, 31),
(2, 31),
(3, 31),
(4, 31),
(5, 31),
(6, 31),
(7, 31),
(8, 31),
(9, 31),
(10, 31),
(11, 31),
(12, 31),
(13, 31),
(14, 31),
(17, 31),
(1, 41),
(2, 41),
(3, 41),
(4, 41),
(5, 41),
(6, 41),
(7, 41),
(8, 41),
(9, 41),
(10, 41),
(12, 41),
(13, 41),
(18, 41),
(19, 41),
(20, 41),
(1, 51),
(2, 51),
(3, 51),
(4, 51),
(5, 51),
(6, 51),
(7, 51),
(8, 51),
(9, 51),
(10, 51),
(11, 51),
(13, 51),
(14, 51),
(16, 51),
(17, 51),
(19, 51),
(1, 61),
(2, 61),
(3, 61),
(4, 61),
(5, 61),
(6, 61),
(7, 61),
(8, 61),
(9, 61),
(10, 61),
(10, 61),
(13, 61),
(14, 61),
(16, 61),
(17, 61),
(19, 61),
(20, 61),
(1, 71),
(2, 71),
(3, 71),
(4, 71),
(5, 71),
(6, 71),
(7, 71),
(8, 71),
(9, 71),
(10, 71),
(11, 71),
(12, 71),
(13, 71),
(14, 71),
(15, 71),
(16, 71),
(17, 71),
(18, 71),
(19, 71),
(20, 71),
(1, 81),
(2, 81),
(3, 81),
(4, 81),
(5, 81),
(6, 81),
(7, 81),
(8, 81),
(9, 81),
(10, 81),
(11, 81),
(13, 81),
(14, 81),
(15, 81),
(16, 81),
(17, 81),
(16, 11);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `gaziemir_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `gaziemir_musterileri`;
CREATE TABLE IF NOT EXISTS `gaziemir_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir`
--

DROP TABLE IF EXISTS `gelir`;
CREATE TABLE IF NOT EXISTS `gelir` (
  `gelir_id` int(11) NOT NULL AUTO_INCREMENT,
  `net_gelir` int(7) NOT NULL,
  PRIMARY KEY (`gelir_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir`
--

INSERT INTO `gelir` (`gelir_id`, `net_gelir`) VALUES
(1, 10000),
(2, 14000),
(3, 15000),
(4, 12500),
(5, 10500),
(6, 14500),
(7, 11500),
(8, 12500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir2`
--

DROP TABLE IF EXISTS `gelir2`;
CREATE TABLE IF NOT EXISTS `gelir2` (
  `gelir_id2` int(11) NOT NULL AUTO_INCREMENT,
  `net_gelir2` int(7) NOT NULL,
  PRIMARY KEY (`gelir_id2`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir2`
--

INSERT INTO `gelir2` (`gelir_id2`, `net_gelir2`) VALUES
(1, 14500),
(2, 17500),
(3, 13000),
(4, 11500),
(5, 16000),
(6, 13500),
(7, 13000),
(8, 12500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir3`
--

DROP TABLE IF EXISTS `gelir3`;
CREATE TABLE IF NOT EXISTS `gelir3` (
  `gelir_id3` int(11) NOT NULL AUTO_INCREMENT,
  `net_gelir3` int(7) NOT NULL,
  PRIMARY KEY (`gelir_id3`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir3`
--

INSERT INTO `gelir3` (`gelir_id3`, `net_gelir3`) VALUES
(1, 14500),
(2, 15000),
(3, 11000),
(4, 10500),
(5, 12000),
(6, 13000),
(7, 12500),
(8, 13500);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir_sube`
--

DROP TABLE IF EXISTS `gelir_sube`;
CREATE TABLE IF NOT EXISTS `gelir_sube` (
  `gelir_id` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  KEY `gelir_id` (`gelir_id`),
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir_sube`
--

INSERT INTO `gelir_sube` (`gelir_id`, `sube_id`) VALUES
(1, 81),
(2, 71),
(3, 61),
(4, 51),
(5, 11),
(6, 21),
(7, 31),
(8, 41);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir_sube2`
--

DROP TABLE IF EXISTS `gelir_sube2`;
CREATE TABLE IF NOT EXISTS `gelir_sube2` (
  `gelir_id2` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  KEY `gelir_id2` (`gelir_id2`),
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir_sube2`
--

INSERT INTO `gelir_sube2` (`gelir_id2`, `sube_id`) VALUES
(8, 21),
(7, 31),
(6, 11),
(5, 81),
(4, 51),
(3, 41),
(2, 71),
(1, 61);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `gelir_sube3`
--

DROP TABLE IF EXISTS `gelir_sube3`;
CREATE TABLE IF NOT EXISTS `gelir_sube3` (
  `gelir_id3` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  KEY `gelir_id3` (`gelir_id3`),
  KEY `sube_id` (`sube_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `gelir_sube3`
--

INSERT INTO `gelir_sube3` (`gelir_id3`, `sube_id`) VALUES
(1, 51),
(2, 61),
(3, 31),
(4, 41),
(5, 11),
(6, 21),
(7, 81),
(8, 71);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `guzelbahce_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `guzelbahce_musterileri`;
CREATE TABLE IF NOT EXISTS `guzelbahce_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `ilce`
--

DROP TABLE IF EXISTS `ilce`;
CREATE TABLE IF NOT EXISTS `ilce` (
  `sehir_id` int(11) NOT NULL,
  `ilce_id` int(11) NOT NULL,
  `ilce_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`ilce_id`),
  KEY `sehir_id` (`sehir_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `ilce`
--

INSERT INTO `ilce` (`sehir_id`, `ilce_id`, `ilce_ad`) VALUES
(35, 1, 'Balçova'),
(35, 2, 'Bayraklı'),
(35, 3, 'Gaziemir'),
(35, 4, 'Güzelbahçe'),
(35, 5, 'Karabağlar'),
(35, 6, 'Karşıyaka'),
(35, 7, 'Konak'),
(35, 8, 'Narlıdere');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `karabaglar_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `karabaglar_musterileri`;
CREATE TABLE IF NOT EXISTS `karabaglar_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `karsiyaka_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `karsiyaka_musterileri`;
CREATE TABLE IF NOT EXISTS `karsiyaka_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `konak_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `konak_musterileri`;
CREATE TABLE IF NOT EXISTS `konak_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `mt`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `mt`;
CREATE TABLE IF NOT EXISTS `mt` (
`Erkek` bigint(21)
,`Kadin` bigint(21)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri`
--

DROP TABLE IF EXISTS `musteri`;
CREATE TABLE IF NOT EXISTS `musteri` (
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `m_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `m_soyad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  `m_tcno` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `m_telno` varchar(11) COLLATE utf8_turkish_ci NOT NULL,
  `m_dogum_tarihi` date NOT NULL,
  `m_adres` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`m_id`),
  KEY `c_id` (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri`
--

INSERT INTO `musteri` (`m_id`, `c_id`, `m_ad`, `m_soyad`, `m_tcno`, `m_telno`, `m_dogum_tarihi`, `m_adres`) VALUES
(1, 1, 'Tarık', 'Kum', '53005247464', '05539893800', '1998-07-02', '1912.sokak no:12 Karşıyaka'),
(2, 1, 'Yusuf', 'Çavdar', '12345678912', '05246359658', '2000-05-21', '1712.sokak no:9 Karşıyaka'),
(3, 1, 'Yılmaz', 'Çavdar', '12415365294', '05539656585', '1994-06-27', '1918.sokak no:7 Karşıyaka'),
(4, 1, 'Ömer', 'Demir', '23652415985', '05447859686', '2001-06-14', '1744.sokak no:! Karşıyaka'),
(5, 1, 'Emre', 'Demirel', '36524174587', '05369584574', '1998-05-26', '1877.sokak no:3 Karşıyaka'),
(6, 2, 'Julide', 'Taşdemir', '52413659241', '05524587485', '1995-04-04', '1842.sokak no:4 Karşıyaka'),
(7, 2, 'Melahat', 'Kurnazlık', '15625462472', '05536958745', '1996-02-08', '1954.sokak no:66 Karşıyaka'),
(8, 2, 'Ecenaz', 'Kırpak', '54125412541', '05524515636', '2002-05-09', '1182.sokak no:4 Karşıyaka'),
(9, 2, 'İlayda', 'Özkürt', '21541258745', '05521425689', '1994-05-22', '1245.sokak no:53 Karşıyaka'),
(10, 2, 'Ajda', 'Hanım', '12345678977', '05326254748', '2001-04-09', '1918. sokak no:4 Karşıyaka'),
(11, 2, 'Nejla', 'Duran', '12345678988', '05243652461', '1998-07-02', '525/34 sokak no:4 Balçova'),
(12, 2, 'Hamide', 'Akçağdağ', '52452657895', '05216359584', '1992-05-07', '241/43 sokak no:52 Balçova'),
(13, 2, 'Nilin', 'Muhtar', '12415263595', '05263659485', '1975-05-04', '394/23 sokak no:31 Balçova'),
(14, 2, 'Ayşe', 'Konur', '14215216395', '05213659854', '1950-05-05', '213/32 sokak no:41 Balçova'),
(15, 2, 'Sudenaz', 'Mahmudiye', '14215216958', '05415849685', '1988-05-09', '456/46 sokak no:33 Baalçova'),
(16, 2, 'Beyza', 'Neşerlier', '15425463584', '05236569558', '1989-05-07', '468/54 sokak no:77 Balçova'),
(17, 2, 'Gamze', 'Madik', '53625485796', '05246359563', '1999-05-07', '654/54 sokak no:22 Balçova'),
(18, 1, 'Ali', 'Akman', '14253647586', '05214574578', '1998-06-01', '4.sokak no:1 Bayraklı'),
(19, 1, 'Ayhan', 'Alihan', '15422653654', '05236354215', '1987-01-01', '5.sokak no:22 Bayraklı'),
(20, 1, 'Koray', 'Avcı', '36532512542', '05263659484', '2004-02-03', '4.sokak no:6 Bayraklı'),
(21, 1, 'Şamil', 'Bastırey', '65325421987', '05248759652', '1983-06-07', '4.sokak no:99 Bayraklı'),
(22, 1, 'Bahadır', 'Dalmaz', '36251496857', '05236545221', '1991-02-05', '43.sokak no:4 Bayraklı'),
(23, 1, 'Vahti', 'Merci', '52463621251', '05236568457', '1995-03-02', '34.sokak no:11 Bayraklı'),
(24, 1, 'Maradona Necip', 'Buybum', '36251474856', '05236356545', '1965-02-03', '45.sokak no:14 Bayraklı'),
(25, 1, 'Melih', 'Gökçek', '14225336254', '05441423625', '2000-01-01', '1.sokak no:1 Bayraklı'),
(26, 1, 'Tayyar', 'Tekci', '52142563588', '05214526352', '2001-12-12', '12. sokak no:12 Bayraklı'),
(27, 2, 'Aliye', 'Hakyer', '12546523262', '05214124122', '2000-05-21', '34.sokak no:8 Bayraklı'),
(28, 2, 'Beyzacan', 'Hakkıdır', '51246393754', '05539893300', '2000-05-21', '34.sokak no:22 Bayraklı'),
(29, 2, 'Helaliye', 'Komser', '36251474859', '05366526562', '1996-08-03', '8.sokak no:3 Bayraklı'),
(30, 2, 'Hakimiye', 'Kuvaiye', '54263595685', '05369854512', '1995-06-07', '34.sokak no:2 Bayraklı'),
(31, 2, 'Nazlıcan', 'Kolsuz', '56235421754', '05219687455', '1998-05-08', '23.sokak no:4 Bayraklı'),
(32, 2, 'Şengül', 'Satıcı', '54868536925', '05214758545', '2002-05-04', '14.sokak no:12 Bayraklı'),
(33, 2, 'Cemile', 'Naşıbus', '56336556336', '05366355363', '1995-06-06', '6.sokak no:6 Bayraklı'),
(34, 2, 'Fadimiye', 'Fakıdır', '54285496535', '05215412512', '2001-09-09', '43.sokak no:43 Bayraklı'),
(35, 2, 'Necmiye', 'Yeter', '51263258565', '05369584578', '1998-05-06', '5.sokak no:6 Bayraklı'),
(36, 1, 'Galip', 'Derviş', '52363241252', '05425468596', '1996-05-04', '5. sokak no:22 Gaziemir'),
(37, 1, 'Mahmut', 'Tekdemir', '41542642396', '05447859685', '1996-04-08', '412/54 sokak no:34 Gaziemir'),
(38, 1, 'Arda', 'Turan', '52361533262', '05241521425', '1995-06-05', '23.sokak no:32 Gaziemir'),
(39, 1, 'Lokman', 'Utsda', '63251474856', '05325235233', '1944-07-02', '34.sokak no:32 Gaziemir'),
(40, 2, 'Nagehan', 'Atıcı', '41552369552', '05369568547', '1988-02-07', '12.sokak no:32 Gaziemir'),
(41, 2, 'Kibariye', 'Altın', '96547585123', '05214784585', '1966-04-12', '432.sokak no:421 Gaziemir'),
(42, 2, 'Yasemin', 'Yoncagül', '41552296584', '05345486636', '1983-04-08', '32. sokak no:32 Gaziemir'),
(43, 1, 'Kemal', 'Kumaş', '52412196585', '05526589896', '1997-05-07', '202/53 sokak no:4 Güzelbahçe'),
(44, 1, 'Derya', 'Deniz', '54212485963', '05325788963', '1985-07-03', '23/334 sokak no:32 Güzelbahçe'),
(45, 1, 'Bartuğ', 'Yılmaz', '52451251616', '05321459585', '2001-03-09', '201/23 sokak no:4 Güzelbahçe'),
(46, 2, 'Pınar', 'Altuğ', '14215216396', '05325139598', '1985-04-09', '201/2 sokak no:77 Güzelbahçe'),
(47, 2, 'Birgül', 'Sarıçiçek', '36251463524', '05336359545', '2001-08-07', '201/88 sokak no:42 Güzelbahçe'),
(48, 1, 'Mesut', 'Ozmen', '53695675414', '05446983636', '2001-05-12', '201.sokak no:45 Karabağlar'),
(49, 1, 'Kazım', 'Bekir', '52363241258', '05539546366', '1999-02-01', '101.sokak no:9 Karabağlar'),
(50, 1, 'Veli', 'Kurtuluş', '21423658978', '05351313623', '1996-05-07', '101.sokak no:55 Karabağlar'),
(51, 2, 'Mahmure', 'Konuskan', '14257485965', '05356595454', '1979-01-09', '102/3 sokak no:5 Karabağlar'),
(52, 2, 'Canan', 'Güzel', '74585452363', '05569684512', '1989-06-07', '100.sokak no:9 Karabağlar'),
(53, 2, 'Öncel', 'Uğur', '36251463524', '05549658574', '1987-03-12', '101.sokak no:32 Karabağlar'),
(54, 1, 'Bekir', 'Yücel', '12345698785', '05521254154', '1996-03-06', '123.sokak no:5 Konak'),
(55, 1, 'Bilal', 'Gürses', '52636524541', '05526394544', '1985-07-03', '200.sokak no:4 Konak'),
(56, 1, 'İsmail', 'Kürek', '12415263594', '05241521424', '1996-05-07', '101.sokak no:32 Konak'),
(57, 1, 'Merih', 'Demir', '14215216397', '05325139592', '1985-04-09', '13.sokak no:42 Konak'),
(58, 2, 'Buse', 'Daşgale', '24153659247', '05569684522', '1989-06-07', '23.sokak no:42 Konak'),
(59, 2, 'Canangül', 'Korkmaz', '96547585124', '05214784581', '1966-04-14', '12.sokak no:42 Konak'),
(60, 2, 'Gülin', 'Nazlıcan', '12345684952', '05524523636', '1969-12-12', '12.sokak no:32 Konak'),
(61, 2, 'Şembil', 'Erdoğan', '36251496851', '05526965989', '1999-06-04', '12.sokak no:23 Konak'),
(62, 1, 'Kerim', 'Durur', '12345698787', '05539893801', '2000-05-14', '12.sokak no:32 Narlıdere'),
(63, 1, 'Çağdaş', 'Ekin', '52452657897', '05539546399', '1992-05-17', '101.sokak no:44 Narlıdere'),
(64, 1, 'Süreyya', 'Kum', '21423658954', '05351313653', '1975-05-14', '108/78 sokak no:65 Narlıdere'),
(65, 1, 'Ömür', 'Gökkurt', '14215216347', '05325139574', '1944-07-12', '45.sokak no:1 Narlıdere'),
(66, 1, 'Yusuf Ali', 'Çavdar', '54214252636', '05523652541', '1999-02-07', '132.sokak no:35 Narlıdere'),
(67, 1, 'Yavuz', 'Çandarlı', '36251463524', '05549658555', '1989-05-17', '12.sokak no:3 Narlıdere'),
(68, 2, 'Nermin', 'Tokgöz', '12345689222', '05524143625', '1999-03-03', '12.sokak no:2 Narlıdere'),
(69, 2, 'Berivan', 'Barvan', '69365825471', '05526695544', '1989-05-02', '43.sokak no:59 Narlıdere'),
(70, 2, 'Rabia', 'Tuğdaş', '12532696585', '00546539656', '1979-06-12', '6.sokak no:12 Narlıdere'),
(71, 2, 'Ömren', 'Genç', '15461615466', '05526958956', '1996-03-07', '41.sokak no:7 Narlıdere'),
(72, 2, 'Yağmur', 'Yağan', '14252163295', '05536955874', '1995-06-07', '34.sokak no:5 Narlıdere'),
(73, 2, 'Tuğçe', 'Dürbün', '25416396854', '05521541232', '1992-05-07', '101.sokak no:4 Narlıdere'),
(74, 2, 'Ümran', 'Sonkur', '25414556396', '05529653655', '2000-12-15', '32.sokak no:2 Narlıdere'),
(75, 2, 'Gülnihar', 'Karnıbahar', '53005247464', '05539893800', '1996-05-04', '121.sokak no:2 Narlıdere'),
(76, 2, 'Ekin', 'Alus', '52416352141', '05441088721', '2000-10-23', '121.sokak no:54 Konak'),
(77, 2, 'Özer', 'Hurmacı', '12345678998', '05534563636', '1999-05-02', '132.sokak no:61 Konak'),
(78, 1, 'Haktan', 'İnancık', '14214215841', '05521425848', '1994-05-06', '141.sokak no:21 Konak'),
(79, 2, 'Firdevs', 'Çakışlı', '12542343895', '05539093300', '1996-05-02', '121.sokak no:51 Konak'),
(80, 2, 'Ülküm', 'Kocalı', '36251496857', '05569595862', '1993-01-01', '131.sokak no:12 Konak'),
(81, 2, 'Şebnem', 'Lokmacı', '52451255616', '05351312562', '1994-05-09', '141.sokak no:51 Konak'),
(82, 2, 'Pelin', 'Pelikan', '14215216696', '05356564354', '1996-05-04', '120.sokak no:63 Konak'),
(83, 2, 'İşil', 'Işık', '21541615665', '05524524147', '1998-06-07', '121.sokak no:43 Konak'),
(84, 2, 'Çisem', 'Nihale', '36251452419', '05526365965', '1994-04-06', '121.sokak no:32 Konak'),
(85, 2, 'Işık', 'Kokrmaz', '14251415126', '05529659548', '1996-04-07', '44.sokak no:43 Balçova'),
(86, 2, 'İğdem', 'Miğde', '53005123464', '05454545123', '1995-12-21', '12.sokak no:31 Balçova'),
(87, 2, 'Neris', 'Kum', '21423658328', '05351366623', '2000-01-15', '36. sokak no:55 Balçova'),
(88, 2, 'Simaze', 'Kum', '53005241164', '05243651461', '2000-07-11', '141. sokak no:43 Güzelbahçe'),
(89, 2, 'İzem', 'Kum', '54212487643', '05216352344', '2001-04-09', '44.sokak no:30 Güzelbahçe'),
(90, 2, 'çiğdem', 'Korkulu', '52361523262', '05241523424', '2001-09-28', '41. sokak no:41 Güzelbahçe'),
(91, 1, 'Çağrıcan', 'Potuklu', '51246142575', '42342342342', '1989-06-25', '21. sokak no:43 Güzelbahçe'),
(92, 1, 'Alper', 'Öçüm', '36251495622', '05569959621', '1996-04-30', '212.sokak no:1 Güzelbahçe'),
(93, 2, 'Hayriye', 'Güzel', '54216762563', '05243653261', '2001-04-24', '141.sokak no:132 Gaziemir'),
(94, 2, 'Gülem', 'Gülenç', '41542644396', '05447123485', '1999-02-21', '252.sokak no:41 Gaziemir'),
(95, 2, 'Mahmuriye', 'Kocatürk', '21121241978', '05342332432', '1975-05-13', '11.sokak no:51 Gaziemir'),
(96, 2, 'Zeynep', 'Kum', '54212349563', '05243632461', '1995-09-21', '41.sokak no:432 Karabağlar'),
(97, 2, 'Nagehan', 'Develi', '41542642336', '05325781963', '1997-01-27', '43.sokak no:472 Karabağlar'),
(98, 2, 'Yurdagül', 'Gonca', '21423433284', '05241423434', '1979-05-04', '41.sokak no:43 Karabağlar'),
(99, 2, 'Esma', 'Elmas', '14215216426', '05325235339', '1983-05-25', '49.sokak no:32 Karabağlar'),
(100, 1, 'Tayyar', 'Tekel', '36222235240', '05369108547', '1988-06-09', '11.sokak no:432 Karabağlar');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `musteri_sube`
--

DROP TABLE IF EXISTS `musteri_sube`;
CREATE TABLE IF NOT EXISTS `musteri_sube` (
  `m_id` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  KEY `sube_id` (`sube_id`),
  KEY `m_id` (`m_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `musteri_sube`
--

INSERT INTO `musteri_sube` (`m_id`, `sube_id`) VALUES
(1, 61),
(2, 61),
(3, 61),
(4, 61),
(5, 61),
(6, 61),
(7, 61),
(8, 61),
(9, 61),
(11, 11),
(12, 11),
(13, 11),
(14, 11),
(15, 11),
(16, 11),
(17, 11),
(10, 61),
(18, 21),
(19, 21),
(20, 21),
(21, 21),
(22, 21),
(23, 21),
(24, 21),
(25, 21),
(26, 21),
(29, 21),
(30, 21),
(31, 21),
(32, 21),
(33, 21),
(34, 21),
(35, 21),
(28, 21),
(27, 21),
(36, 31),
(37, 31),
(38, 31),
(39, 31),
(40, 31),
(41, 31),
(42, 31),
(43, 41),
(44, 41),
(45, 41),
(46, 41),
(47, 41),
(48, 51),
(49, 51),
(50, 51),
(51, 51),
(52, 51),
(53, 51),
(54, 71),
(55, 71),
(56, 71),
(57, 71),
(58, 71),
(59, 71),
(60, 71),
(61, 71),
(62, 81),
(63, 81),
(64, 81),
(65, 81),
(66, 81),
(67, 81),
(68, 81),
(69, 81),
(70, 81),
(71, 81),
(72, 81),
(73, 81),
(74, 81),
(75, 81),
(76, 71),
(77, 71),
(78, 71),
(79, 71),
(80, 71),
(81, 71),
(82, 71),
(83, 71),
(84, 71),
(85, 11),
(87, 11),
(86, 11),
(88, 41),
(89, 41),
(90, 41),
(91, 41),
(92, 41),
(93, 31),
(94, 31),
(95, 31),
(96, 51),
(97, 51),
(98, 51),
(99, 51),
(100, 51);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `narlidere_musterileri`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `narlidere_musterileri`;
CREATE TABLE IF NOT EXISTS `narlidere_musterileri` (
`m_ad` varchar(255)
,`m_soyad` varchar(255)
,`sube_ad` varchar(255)
);

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sehir`
--

DROP TABLE IF EXISTS `sehir`;
CREATE TABLE IF NOT EXISTS `sehir` (
  `sehir_id` int(11) NOT NULL,
  `sehir_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sehir_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sehir`
--

INSERT INTO `sehir` (`sehir_id`, `sehir_ad`) VALUES
(35, 'İzmir');

-- --------------------------------------------------------

--
-- Tablo için tablo yapısı `sube`
--

DROP TABLE IF EXISTS `sube`;
CREATE TABLE IF NOT EXISTS `sube` (
  `ilce_id` int(11) NOT NULL,
  `sube_id` int(11) NOT NULL,
  `sube_ad` varchar(255) COLLATE utf8_turkish_ci NOT NULL,
  PRIMARY KEY (`sube_id`),
  KEY `ilce_id` (`ilce_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_turkish_ci;

--
-- Tablo döküm verisi `sube`
--

INSERT INTO `sube` (`ilce_id`, `sube_id`, `sube_ad`) VALUES
(1, 11, 'Balçova Fitness Club'),
(2, 21, 'Bayraklı Fitness Club'),
(3, 31, 'Gaziemir Fitness Club'),
(4, 41, 'Güzelbahçe Fitness Club'),
(5, 51, 'Karabağlar Fitness Club'),
(6, 61, 'Karşıyaka Fitness Club'),
(7, 71, 'Konak Fitness Club'),
(8, 81, 'Narlıdere Fitness Club');

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `toplam_gelir`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `toplam_gelir`;
CREATE TABLE IF NOT EXISTS `toplam_gelir` (
`sube_ad` varchar(255)
,`birinci_ay_gelir` int(7)
,`ikinci_ay_gelir` int(7)
,`ucuncu_ay_gelir` int(7)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı durumu `t_musteri_sayisi`
-- (Asıl görünüm için aşağıya bakın)
--
DROP VIEW IF EXISTS `t_musteri_sayisi`;
CREATE TABLE IF NOT EXISTS `t_musteri_sayisi` (
`sube_ad` varchar(255)
,`musteri_sayisi` bigint(21)
);

-- --------------------------------------------------------

--
-- Görünüm yapısı `aylik_gelir1`
--
DROP TABLE IF EXISTS `aylik_gelir1`;

DROP VIEW IF EXISTS `aylik_gelir1`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aylik_gelir1`  AS  select `sube`.`sube_ad` AS `sube_ad`,`gelir`.`net_gelir` AS `net_gelir` from ((`sube` join `gelir`) join `gelir_sube`) where ((`sube`.`sube_id` = `gelir_sube`.`sube_id`) and (`gelir`.`gelir_id` = `gelir_sube`.`gelir_id`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `aylik_gelir2`
--
DROP TABLE IF EXISTS `aylik_gelir2`;

DROP VIEW IF EXISTS `aylik_gelir2`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aylik_gelir2`  AS  select `sube`.`sube_ad` AS `sube_ad`,`gelir2`.`net_gelir2` AS `net_gelir2` from ((`sube` join `gelir2`) join `gelir_sube2`) where ((`sube`.`sube_id` = `gelir_sube2`.`sube_id`) and (`gelir2`.`gelir_id2` = `gelir_sube2`.`gelir_id2`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `aylik_gelir3`
--
DROP TABLE IF EXISTS `aylik_gelir3`;

DROP VIEW IF EXISTS `aylik_gelir3`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `aylik_gelir3`  AS  select `sube`.`sube_ad` AS `sube_ad`,`gelir3`.`net_gelir3` AS `net_gelir3` from ((`sube` join `gelir3`) join `gelir_sube3`) where ((`sube`.`sube_id` = `gelir_sube3`.`sube_id`) and (`gelir3`.`gelir_id3` = `gelir_sube3`.`gelir_id3`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `balcova_musterileri`
--
DROP TABLE IF EXISTS `balcova_musterileri`;

DROP VIEW IF EXISTS `balcova_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `balcova_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '11')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `bayrakli_musterileri`
--
DROP TABLE IF EXISTS `bayrakli_musterileri`;

DROP VIEW IF EXISTS `bayrakli_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `bayrakli_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '21')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_balcova`
--
DROP TABLE IF EXISTS `ekipman_balcova`;

DROP VIEW IF EXISTS `ekipman_balcova`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_balcova`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '11')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_bayrakli`
--
DROP TABLE IF EXISTS `ekipman_bayrakli`;

DROP VIEW IF EXISTS `ekipman_bayrakli`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_bayrakli`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '21')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_gaziemir`
--
DROP TABLE IF EXISTS `ekipman_gaziemir`;

DROP VIEW IF EXISTS `ekipman_gaziemir`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_gaziemir`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '31')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_guzelbahce`
--
DROP TABLE IF EXISTS `ekipman_guzelbahce`;

DROP VIEW IF EXISTS `ekipman_guzelbahce`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_guzelbahce`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '41')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_karabaglar`
--
DROP TABLE IF EXISTS `ekipman_karabaglar`;

DROP VIEW IF EXISTS `ekipman_karabaglar`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_karabaglar`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '51')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_karsiyaka`
--
DROP TABLE IF EXISTS `ekipman_karsiyaka`;

DROP VIEW IF EXISTS `ekipman_karsiyaka`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_karsiyaka`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '61')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_konak`
--
DROP TABLE IF EXISTS `ekipman_konak`;

DROP VIEW IF EXISTS `ekipman_konak`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_konak`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '71')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `ekipman_narlidere`
--
DROP TABLE IF EXISTS `ekipman_narlidere`;

DROP VIEW IF EXISTS `ekipman_narlidere`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ekipman_narlidere`  AS  select `sube`.`sube_id` AS `sube_id`,`ekipman`.`ekipman_id` AS `ekipman_id` from ((`ekipman` join `sube`) join `ekipman_sube`) where ((`ekipman`.`ekipman_id` = `ekipman_sube`.`ekipman_id`) and (`sube`.`sube_id` = `ekipman_sube`.`sube_id`) and (`ekipman_sube`.`sube_id` = '81')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `gaziemir_musterileri`
--
DROP TABLE IF EXISTS `gaziemir_musterileri`;

DROP VIEW IF EXISTS `gaziemir_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `gaziemir_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '31')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `guzelbahce_musterileri`
--
DROP TABLE IF EXISTS `guzelbahce_musterileri`;

DROP VIEW IF EXISTS `guzelbahce_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `guzelbahce_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '41')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `karabaglar_musterileri`
--
DROP TABLE IF EXISTS `karabaglar_musterileri`;

DROP VIEW IF EXISTS `karabaglar_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `karabaglar_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '51')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `karsiyaka_musterileri`
--
DROP TABLE IF EXISTS `karsiyaka_musterileri`;

DROP VIEW IF EXISTS `karsiyaka_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `karsiyaka_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '61')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `konak_musterileri`
--
DROP TABLE IF EXISTS `konak_musterileri`;

DROP VIEW IF EXISTS `konak_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `konak_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '71')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `mt`
--
DROP TABLE IF EXISTS `mt`;

DROP VIEW IF EXISTS `mt`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `mt`  AS  select count(`musteri`.`c_id`) AS `Erkek`,(select count(`musteri`.`c_id`) from `musteri` where (`musteri`.`c_id` = '2')) AS `Kadin` from `musteri` where (`musteri`.`c_id` = '1') ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `narlidere_musterileri`
--
DROP TABLE IF EXISTS `narlidere_musterileri`;

DROP VIEW IF EXISTS `narlidere_musterileri`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `narlidere_musterileri`  AS  select `musteri`.`m_ad` AS `m_ad`,`musteri`.`m_soyad` AS `m_soyad`,`sube`.`sube_ad` AS `sube_ad` from ((`musteri` join `sube`) join `musteri_sube`) where ((`musteri`.`m_id` = `musteri_sube`.`m_id`) and (`sube`.`sube_id` = `musteri_sube`.`sube_id`) and (`musteri_sube`.`sube_id` = '81')) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `toplam_gelir`
--
DROP TABLE IF EXISTS `toplam_gelir`;

DROP VIEW IF EXISTS `toplam_gelir`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `toplam_gelir`  AS  select `sube`.`sube_ad` AS `sube_ad`,`aylik_gelir1`.`net_gelir` AS `birinci_ay_gelir`,`aylik_gelir2`.`net_gelir2` AS `ikinci_ay_gelir`,`aylik_gelir3`.`net_gelir3` AS `ucuncu_ay_gelir` from ((((`aylik_gelir1` join `gelir_sube`) join `sube`) join `aylik_gelir2`) join `aylik_gelir3`) where ((`aylik_gelir1`.`sube_ad` = `sube`.`sube_ad`) and (`gelir_sube`.`sube_id` = `sube`.`sube_id`) and (`aylik_gelir2`.`sube_ad` = `sube`.`sube_ad`) and (`aylik_gelir3`.`sube_ad` = `sube`.`sube_ad`)) ;

-- --------------------------------------------------------

--
-- Görünüm yapısı `t_musteri_sayisi`
--
DROP TABLE IF EXISTS `t_musteri_sayisi`;

DROP VIEW IF EXISTS `t_musteri_sayisi`;
CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `t_musteri_sayisi`  AS  select `sube`.`sube_ad` AS `sube_ad`,count(`musteri_sube`.`m_id`) AS `musteri_sayisi` from (`sube` join `musteri_sube`) where (`sube`.`sube_id` = `musteri_sube`.`sube_id`) group by `sube`.`sube_id` ;

--
-- Dökümü yapılmış tablolar için kısıtlamalar
--

--
-- Tablo kısıtlamaları `ekipman_sube`
--
ALTER TABLE `ekipman_sube`
  ADD CONSTRAINT `ekipman_sube_ibfk_1` FOREIGN KEY (`ekipman_id`) REFERENCES `ekipman` (`ekipman_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ekipman_sube_ibfk_2` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `gelir_sube`
--
ALTER TABLE `gelir_sube`
  ADD CONSTRAINT `gelir_sube_ibfk_1` FOREIGN KEY (`gelir_id`) REFERENCES `gelir` (`gelir_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gelir_sube_ibfk_2` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `gelir_sube2`
--
ALTER TABLE `gelir_sube2`
  ADD CONSTRAINT `gelir_sube2_ibfk_1` FOREIGN KEY (`gelir_id2`) REFERENCES `gelir2` (`gelir_id2`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gelir_sube2_ibfk_2` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `gelir_sube3`
--
ALTER TABLE `gelir_sube3`
  ADD CONSTRAINT `gelir_sube3_ibfk_1` FOREIGN KEY (`gelir_id3`) REFERENCES `gelir3` (`gelir_id3`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `gelir_sube3_ibfk_2` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `ilce`
--
ALTER TABLE `ilce`
  ADD CONSTRAINT `ilce_ibfk_1` FOREIGN KEY (`sehir_id`) REFERENCES `sehir` (`sehir_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `musteri`
--
ALTER TABLE `musteri`
  ADD CONSTRAINT `musteri_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `cinsiyet` (`c_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `musteri_sube`
--
ALTER TABLE `musteri_sube`
  ADD CONSTRAINT `musteri_sube_ibfk_1` FOREIGN KEY (`m_id`) REFERENCES `musteri` (`m_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `musteri_sube_ibfk_2` FOREIGN KEY (`sube_id`) REFERENCES `sube` (`sube_id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Tablo kısıtlamaları `sube`
--
ALTER TABLE `sube`
  ADD CONSTRAINT `sube_ibfk_1` FOREIGN KEY (`ilce_id`) REFERENCES `ilce` (`ilce_id`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
