-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2016 at 12:23 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `suomidrive`
--

-- --------------------------------------------------------

--
-- Table structure for table `acc`
--

CREATE TABLE IF NOT EXISTS `acc` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '0',
  `Acc0.5` decimal(5,4) DEFAULT NULL,
  `Acc1` decimal(5,4) DEFAULT NULL,
  `Acc1.5` decimal(5,4) DEFAULT NULL,
  `Acc2` decimal(5,4) DEFAULT NULL,
  `Acc2.5` decimal(5,4) DEFAULT NULL,
  `Acc3` decimal(5,4) DEFAULT NULL,
  `Acc3.5` decimal(5,4) DEFAULT NULL,
  `Acc4` decimal(5,4) DEFAULT NULL,
  `Acc4.5` decimal(5,4) DEFAULT NULL,
  `Acc5` decimal(5,4) DEFAULT NULL,
  `Acc5.5` decimal(5,4) DEFAULT NULL,
  `Acc6` decimal(5,4) DEFAULT NULL,
  `Acc6.5` decimal(5,4) DEFAULT NULL,
  `Acc7` decimal(5,4) DEFAULT NULL,
  `Acc7.5` decimal(5,4) DEFAULT NULL,
  `Acc8` decimal(5,4) DEFAULT NULL,
  `Acc8.5` decimal(5,4) DEFAULT NULL,
  `Acc9` decimal(5,4) DEFAULT NULL,
  `Acc9.5` decimal(5,4) DEFAULT NULL,
  `Acc10` decimal(5,4) DEFAULT NULL,
  `Acc10.5` decimal(5,4) DEFAULT NULL,
  `Acc11` decimal(5,4) DEFAULT NULL,
  `Acc11.5` decimal(5,4) DEFAULT NULL,
  `Acc12` decimal(5,4) DEFAULT NULL,
  `Acc12.5` decimal(5,4) DEFAULT NULL,
  `Acc13` decimal(5,4) DEFAULT NULL,
  `Acc13.5` decimal(5,4) DEFAULT NULL,
  `Acc14` decimal(5,4) DEFAULT NULL,
  `Acc14.5` decimal(5,4) DEFAULT NULL,
  `Acc15` decimal(5,4) DEFAULT NULL,
  `Acc15.5` decimal(5,4) DEFAULT NULL,
  `Acc16` decimal(5,4) DEFAULT NULL,
  `Acc16.5` decimal(5,4) DEFAULT NULL,
  `Acc17` decimal(5,4) DEFAULT NULL,
  `Acc17.5` decimal(5,4) DEFAULT NULL,
  `Acc18` decimal(5,4) DEFAULT NULL,
  `Acc18.5` decimal(5,4) DEFAULT NULL,
  `Acc19` decimal(5,4) DEFAULT NULL,
  `Acc19.5` decimal(5,4) DEFAULT NULL,
  `Acc20` decimal(5,4) DEFAULT NULL,
  `Acc20.5` decimal(5,4) DEFAULT NULL,
  `Acc21` decimal(5,4) DEFAULT NULL,
  `Acc21.5` decimal(5,4) DEFAULT NULL,
  `Acc22` decimal(5,4) DEFAULT NULL,
  `Acc22.5` decimal(5,4) DEFAULT NULL,
  `Acc23` decimal(5,4) DEFAULT NULL,
  `Acc23.5` decimal(5,4) DEFAULT NULL,
  `Acc24` decimal(5,4) DEFAULT NULL,
  `Acc24.5` decimal(5,4) DEFAULT NULL,
  `Acc25` decimal(5,4) DEFAULT NULL,
  `Acc25.5` decimal(5,4) DEFAULT NULL,
  `Acc26` decimal(5,4) DEFAULT NULL,
  `Acc26.5` decimal(5,4) DEFAULT NULL,
  `Acc27` decimal(5,4) DEFAULT NULL,
  `Acc27.5` decimal(5,4) DEFAULT NULL,
  `Acc28` decimal(5,4) DEFAULT NULL,
  `Acc28.5` decimal(5,4) DEFAULT NULL,
  `Acc29` decimal(5,4) DEFAULT NULL,
  `Acc29.5` decimal(5,4) DEFAULT NULL,
  `Acc30` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `acc`
--

INSERT INTO `acc` (`GPS`, `ID`, `Acc0.5`, `Acc1`, `Acc1.5`, `Acc2`, `Acc2.5`, `Acc3`, `Acc3.5`, `Acc4`, `Acc4.5`, `Acc5`, `Acc5.5`, `Acc6`, `Acc6.5`, `Acc7`, `Acc7.5`, `Acc8`, `Acc8.5`, `Acc9`, `Acc9.5`, `Acc10`, `Acc10.5`, `Acc11`, `Acc11.5`, `Acc12`, `Acc12.5`, `Acc13`, `Acc13.5`, `Acc14`, `Acc14.5`, `Acc15`, `Acc15.5`, `Acc16`, `Acc16.5`, `Acc17`, `Acc17.5`, `Acc18`, `Acc18.5`, `Acc19`, `Acc19.5`, `Acc20`, `Acc20.5`, `Acc21`, `Acc21.5`, `Acc22`, `Acc22.5`, `Acc23`, `Acc23.5`, `Acc24`, `Acc24.5`, `Acc25`, `Acc25.5`, `Acc26`, `Acc26.5`, `Acc27`, `Acc27.5`, `Acc28`, `Acc28.5`, `Acc29`, `Acc29.5`, `Acc30`) VALUES
('YYZX03810', '贵C-DL884', '0.5039', '0.1318', '0.0594', '0.0594', '0.0388', '0.0310', '0.0129', '0.0155', '0.0052', '0.0181', '0.0155', '0.0026', '0.0181', '0.0026', '0.0052', '0.0078', '0.0052', '0.0052', '0.0000', '0.0129', '0.0026', '0.0155', '0.0052', '0.0000', '0.0052', '0.0000', '0.0052', '0.0026', '0.0000', '0.0026', '0.0026', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0026', '0.0000', '0.0026', '0.0000', '0.0000', '0.0000', '0.0026', '0.0000', '0.0000', '0.0000'),
('YYZX04777', '皖A-50D90', '0.4954', '0.1749', '0.0749', '0.0496', '0.0294', '0.0244', '0.0118', '0.0126', '0.0050', '0.0067', '0.0093', '0.0076', '0.0076', '0.0084', '0.0084', '0.0050', '0.0118', '0.0017', '0.0050', '0.0034', '0.0034', '0.0050', '0.0042', '0.0000', '0.0034', '0.0025', '0.0042', '0.0000', '0.0017', '0.0017', '0.0017', '0.0008', '0.0017', '0.0008', '0.0008', '0.0008', '0.0017', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0000', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0008', '0.0000', '0.0008', '0.0008', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0067', '0.0000'),
('YYZX05028', '粤B-7H4S3', '0.9063', '0.0859', '0.0000', '0.0020', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', '0.4982', '0.1577', '0.0812', '0.0488', '0.0372', '0.0234', '0.0162', '0.0141', '0.0100', '0.0100', '0.0074', '0.0076', '0.0086', '0.0045', '0.0055', '0.0031', '0.0024', '0.0036', '0.0007', '0.0043', '0.0021', '0.0043', '0.0033', '0.0021', '0.0024', '0.0012', '0.0019', '0.0019', '0.0005', '0.0024', '0.0002', '0.0017', '0.0029', '0.0012', '0.0010', '0.0012', '0.0002', '0.0002', '0.0005', '0.0007', '0.0005', '0.0002', '0.0007', '0.0007', '0.0014', '0.0007', '0.0007', '0.0007', '0.0005', '0.0000', '0.0005', '0.0000', '0.0014', '0.0002', '0.0000', '0.0002', '0.0005', '0.0000', '0.0145', '0.0000'),
('YYZZ02013', '蒙A-QZ063', '0.2778', '0.1389', '0.0556', '0.1667', '0.0833', '0.0833', '0.0556', '0.0278', '0.0000', '0.0556', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `avg`
--

CREATE TABLE IF NOT EXISTS `avg` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `CAT` varchar(6) NOT NULL DEFAULT '',
  `Value` decimal(10,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `avg`
--

INSERT INTO `avg` (`CAT`, `Value`) VALUES
('AMRush', '0.1740'),
('Dawn', '0.0461'),
('Day', '0.2815'),
('Night', '0.2633'),
('PMRush', '0.2350');

-- --------------------------------------------------------

--
-- Table structure for table `dcc`
--

CREATE TABLE IF NOT EXISTS `dcc` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `Dcc0.5` decimal(5,4) DEFAULT NULL,
  `Dcc1` decimal(5,4) DEFAULT NULL,
  `Dcc1.5` decimal(5,4) DEFAULT NULL,
  `Dcc2` decimal(5,4) DEFAULT NULL,
  `Dcc2.5` decimal(5,4) DEFAULT NULL,
  `Dcc3` decimal(5,4) DEFAULT NULL,
  `Dcc3.5` decimal(5,4) DEFAULT NULL,
  `Dcc4` decimal(5,4) DEFAULT NULL,
  `Dcc4.5` decimal(5,4) DEFAULT NULL,
  `Dcc5` decimal(5,4) DEFAULT NULL,
  `Dcc5.5` decimal(5,4) DEFAULT NULL,
  `Dcc6` decimal(5,4) DEFAULT NULL,
  `Dcc6.5` decimal(5,4) DEFAULT NULL,
  `Dcc7` decimal(5,4) DEFAULT NULL,
  `Dcc7.5` decimal(5,4) DEFAULT NULL,
  `Dcc8` decimal(5,4) DEFAULT NULL,
  `Dcc8.5` decimal(5,4) DEFAULT NULL,
  `Dcc9` decimal(5,4) DEFAULT NULL,
  `Dcc9.5` decimal(5,4) DEFAULT NULL,
  `Dcc10` decimal(5,4) DEFAULT NULL,
  `Dcc10.5` decimal(5,4) DEFAULT NULL,
  `Dcc11` decimal(5,4) DEFAULT NULL,
  `Dcc11.5` decimal(5,4) DEFAULT NULL,
  `Dcc12` decimal(5,4) DEFAULT NULL,
  `Dcc12.5` decimal(5,4) DEFAULT NULL,
  `Dcc13` decimal(5,4) DEFAULT NULL,
  `Dcc13.5` decimal(5,4) DEFAULT NULL,
  `Dcc14` decimal(5,4) DEFAULT NULL,
  `Dcc14.5` decimal(5,4) DEFAULT NULL,
  `Dcc15` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dcc`
--

INSERT INTO `dcc` (`GPS`, `ID`, `Dcc0.5`, `Dcc1`, `Dcc1.5`, `Dcc2`, `Dcc2.5`, `Dcc3`, `Dcc3.5`, `Dcc4`, `Dcc4.5`, `Dcc5`, `Dcc5.5`, `Dcc6`, `Dcc6.5`, `Dcc7`, `Dcc7.5`, `Dcc8`, `Dcc8.5`, `Dcc9`, `Dcc9.5`, `Dcc10`, `Dcc10.5`, `Dcc11`, `Dcc11.5`, `Dcc12`, `Dcc12.5`, `Dcc13`, `Dcc13.5`, `Dcc14`, `Dcc14.5`, `Dcc15`) VALUES
('YYZX03810', '贵C-DL884', '0.6765', '0.2059', '0.0294', '0.0588', '0.0000', '0.0000', '0.0294', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX04777', '皖A-50D90', '0.6520', '0.1324', '0.0637', '0.0392', '0.0441', '0.0098', '0.0147', '0.0000', '0.0000', '0.0147', '0.0049', '0.0049', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0049', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0049'),
('YYZX05028', '粤B-7H4S3', '0.7857', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', '0.4912', '0.1837', '0.0726', '0.0556', '0.0335', '0.0246', '0.0158', '0.0120', '0.0158', '0.0082', '0.0082', '0.0057', '0.0051', '0.0032', '0.0044', '0.0051', '0.0051', '0.0038', '0.0019', '0.0000', '0.0013', '0.0019', '0.0019', '0.0025', '0.0013', '0.0013', '0.0000', '0.0000', '0.0025', '0.0322'),
('YYZZ02013', '蒙A-QZ063', '0.0000', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `monthly`
--

CREATE TABLE IF NOT EXISTS `monthly` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(9) NOT NULL,
  `ID` varchar(8) DEFAULT NULL,
  `Period` int(6) DEFAULT NULL,
  `Mileage` decimal(9,4) DEFAULT NULL,
  `Time` decimal(7,4) DEFAULT NULL,
  `AvgSpeed` decimal(6,4) DEFAULT NULL,
  `AvgAcc` decimal(5,4) DEFAULT NULL,
  `AvgDcc` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `monthly`
--

INSERT INTO `monthly` (`GPS`, `ID`, `Period`, `Mileage`, `Time`, `AvgSpeed`, `AvgAcc`, `AvgDcc`) VALUES
('YYZX03810', '贵C-DL884', 201511, '306.9864', '8.0736', '38.0234', '0.4799', '0.0862'),
('YYZX03810', '贵C-DL884', 201512, '393.2698', '10.2356', '38.4219', '0.4527', '0.1023'),
('YYZX03810', '贵C-DL884', 201601, '377.9410', '9.4117', '40.1567', '0.4048', '0.0864'),
('YYZX03810', '贵C-DL884', 201602, '460.9554', '13.7294', '33.5742', '0.2983', '0.0809'),
('YYZX03810', '贵C-DL884', 201603, '493.9048', '13.9903', '35.3034', '0.3849', '0.0916'),
('YYZX03810', '贵C-DL884', 201604, '593.0594', '15.2853', '38.7994', '0.2516', '0.0807'),
('YYZX03810', '贵C-DL884', 201605, '392.1464', '10.9253', '35.8935', '0.2621', '0.0827'),
('YYZX03810', '贵C-DL884', 201606, '339.1488', '9.5647', '35.4583', '0.3290', '0.0963'),
('YYZX03810', '贵C-DL884', 201607, '386.3573', '11.6117', '33.2732', '0.2770', '0.0761'),
('YYZX03810', '贵C-DL884', 201608, '414.1056', '11.2778', '36.7187', '0.1733', '0.0652'),
('YYZX05028', '粤B-7H4S3', 201511, '1668.7631', '301.9072', '5.5274', '0.0900', '0.0603'),
('YYZX05028', '粤B-7H4S3', 201512, '1898.2174', '421.6553', '4.5018', '0.1098', '0.0712'),
('YYZX05028', '粤B-7H4S3', 201601, '1978.5952', '371.3203', '5.3285', '0.1114', '0.0743'),
('YYZX05028', '粤B-7H4S3', 201602, '897.3572', '227.0056', '3.9530', '0.1089', '0.0694'),
('YYZX05028', '粤B-7H4S3', 201603, '1580.0571', '410.1489', '3.8524', '0.1111', '0.0889'),
('YYZX05028', '粤B-7H4S3', 201604, '1525.0613', '388.3172', '3.9274', '0.1178', '0.0773'),
('YYZX05028', '粤B-7H4S3', 201605, '2067.5686', '390.2497', '5.2981', '0.1198', '0.0722'),
('YYZX05028', '粤B-7H4S3', 201606, '1559.6094', '359.3372', '4.3402', '0.1151', '0.0749'),
('YYZX05028', '粤B-7H4S3', 201607, '1754.6935', '381.8544', '4.5952', '0.0955', '0.0646'),
('YYZX05028', '粤B-7H4S3', 201608, '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX04777', '皖A-50D90', 201511, '546.6074', '28.3567', '19.2762', '0.3484', '0.0958'),
('YYZX04777', '皖A-50D90', 201512, '1573.6123', '47.0903', '33.4169', '0.3192', '0.0915'),
('YYZX04777', '皖A-50D90', 201601, '262.1171', '10.6600', '24.5889', '0.2101', '0.0957'),
('YYZX04777', '皖A-50D90', 201602, '5186.3111', '266.1889', '19.4836', '0.2133', '0.0757'),
('YYZX04777', '皖A-50D90', 201603, '811.8823', '157.9397', '5.1405', '0.3627', '0.1235'),
('YYZX04777', '皖A-50D90', 201604, '2660.5046', '56.0889', '47.4337', '0.2730', '0.0791'),
('YYZX04777', '皖A-50D90', 201605, '1330.8086', '35.8503', '37.1213', '0.3895', '0.0936'),
('YYZX04777', '皖A-50D90', 201606, '763.3587', '28.6664', '26.6291', '0.3178', '0.0966'),
('YYZX04777', '皖A-50D90', 201607, '1100.1464', '46.0056', '23.9133', '0.3041', '0.0961'),
('YYZX04777', '皖A-50D90', 201608, '518.7653', '24.0711', '21.5514', '0.2437', '0.1238'),
('YYZX05248', '闽C-M065V', 201511, '2726.0200', '121.5250', '22.4318', '0.1994', '0.1091'),
('YYZX05248', '闽C-M065V', 201512, '3277.2504', '151.4869', '21.6339', '0.2504', '1.5516'),
('YYZX05248', '闽C-M065V', 201601, '3253.1925', '105.6508', '30.7919', '0.2047', '0.1063'),
('YYZX05248', '闽C-M065V', 201602, '3530.5242', '115.1836', '30.6513', '0.2188', '0.0907'),
('YYZX05248', '闽C-M065V', 201603, '3588.7958', '162.4853', '22.0869', '0.2360', '0.1426'),
('YYZX05248', '闽C-M065V', 201604, '2388.3868', '169.5425', '14.0872', '0.3510', '0.1553'),
('YYZX05248', '闽C-M065V', 201605, '3995.9703', '182.0411', '21.9509', '0.3126', '0.2061'),
('YYZX05248', '闽C-M065V', 201606, '4126.8522', '186.5969', '22.1164', '0.3515', '0.5303'),
('YYZX05248', '闽C-M065V', 201607, '3027.1166', '162.6536', '18.6108', '0.3319', '0.1671'),
('YYZX05248', '闽C-M065V', 201608, '3239.1667', '177.7592', '18.2222', '0.3604', '0.1713'),
('YYZZ02013', '蒙A-QZ063', 201511, '11984.8548', '198.1869', '60.4725', '0.0157', '2.6595'),
('YYZZ02013', '蒙A-QZ063', 201512, '211.9031', '116.9589', '1.8118', '0.0118', '0.0817'),
('YYZZ02013', '蒙A-QZ063', 201601, '592.5381', '228.6019', '2.5920', '0.0061', '0.0029'),
('YYZZ02013', '蒙A-QZ063', 201602, '395.5483', '252.9558', '1.5637', '0.0023', '0.0016'),
('YYZZ02013', '蒙A-QZ063', 201603, '572.1234', '181.7739', '3.1474', '0.0055', '0.0020'),
('YYZZ02013', '蒙A-QZ063', 201604, '1081.1006', '309.9108', '3.4884', '0.0146', '0.2317'),
('YYZZ02013', '蒙A-QZ063', 201605, '1322.4536', '302.0939', '4.3776', '0.0082', '0.1702'),
('YYZZ02013', '蒙A-QZ063', 201606, '909.6922', '257.6928', '3.5301', '0.0144', '0.1680'),
('YYZZ02013', '蒙A-QZ063', 201607, '1257.7022', '274.9461', '4.5744', '0.0072', '1.4170'),
('YYZZ02013', '蒙A-QZ063', 201608, '1037.3776', '252.0378', '4.1160', '0.0079', '0.8320');

-- --------------------------------------------------------

--
-- Table structure for table `speed`
--

CREATE TABLE IF NOT EXISTS `speed` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `Speed0` decimal(5,4) DEFAULT NULL,
  `Speed5` decimal(5,4) DEFAULT NULL,
  `Speed10` decimal(5,4) DEFAULT NULL,
  `Speed15` decimal(5,4) DEFAULT NULL,
  `Speed20` decimal(5,4) DEFAULT NULL,
  `Speed25` decimal(5,4) DEFAULT NULL,
  `Speed30` decimal(5,4) DEFAULT NULL,
  `Speed35` decimal(5,4) DEFAULT NULL,
  `Speed40` decimal(5,4) DEFAULT NULL,
  `Speed45` decimal(5,4) DEFAULT NULL,
  `Speed50` decimal(5,4) DEFAULT NULL,
  `Speed55` decimal(5,4) DEFAULT NULL,
  `Speed60` decimal(5,4) DEFAULT NULL,
  `Speed65` decimal(5,4) DEFAULT NULL,
  `Speed70` decimal(5,4) DEFAULT NULL,
  `Speed75` decimal(5,4) DEFAULT NULL,
  `Speed80` decimal(5,4) DEFAULT NULL,
  `Speed85` decimal(5,4) DEFAULT NULL,
  `Speed90` decimal(5,4) DEFAULT NULL,
  `Speed95` decimal(5,4) DEFAULT NULL,
  `Speed100` decimal(5,4) DEFAULT NULL,
  `Speed105` decimal(5,4) DEFAULT NULL,
  `Speed110` decimal(5,4) DEFAULT NULL,
  `Speed115` decimal(5,4) DEFAULT NULL,
  `Speed120` decimal(5,4) DEFAULT NULL,
  `Speed125` decimal(5,4) DEFAULT NULL,
  `Speed130` decimal(5,4) DEFAULT NULL,
  `Speed135` decimal(5,4) DEFAULT NULL,
  `Speed140` decimal(5,4) DEFAULT NULL,
  `Speed145` decimal(5,4) DEFAULT NULL,
  `Speed150` decimal(5,4) DEFAULT NULL,
  `Speed155` decimal(5,4) DEFAULT NULL,
  `Speed160` decimal(5,4) DEFAULT NULL,
  `Speed165` decimal(5,4) DEFAULT NULL,
  `Speed170` decimal(5,4) DEFAULT NULL,
  `Speed175` decimal(5,4) DEFAULT NULL,
  `Speed180` decimal(5,4) DEFAULT NULL,
  `Speed185` decimal(5,4) DEFAULT NULL,
  `Speed190` decimal(5,4) DEFAULT NULL,
  `Speed195` decimal(5,4) DEFAULT NULL,
  `Speed200` decimal(5,4) DEFAULT NULL,
  `Speed205` decimal(5,4) DEFAULT NULL,
  `Speed210` decimal(5,4) DEFAULT NULL,
  `Speed215` decimal(5,4) DEFAULT NULL,
  `Speed220` decimal(5,4) DEFAULT NULL,
  `Speed225` decimal(5,4) DEFAULT NULL,
  `Speed230` decimal(5,4) DEFAULT NULL,
  `Speed235` decimal(5,4) DEFAULT NULL,
  `Speed240` decimal(5,4) DEFAULT NULL,
  `Speed245` decimal(5,4) DEFAULT NULL,
  `Speed250` decimal(5,4) DEFAULT NULL,
  `Speed255` decimal(5,4) DEFAULT NULL,
  `Speed260` decimal(5,4) DEFAULT NULL,
  `Speed265` decimal(5,4) DEFAULT NULL,
  `Speed270` decimal(5,4) DEFAULT NULL,
  `Speed275` decimal(5,4) DEFAULT NULL,
  `Speed280` decimal(5,4) DEFAULT NULL,
  `Speed285` decimal(5,4) DEFAULT NULL,
  `Speed290` decimal(5,4) DEFAULT NULL,
  `Speed295` decimal(5,4) DEFAULT NULL,
  `Speed300` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `speed`
--

INSERT INTO `speed` (`GPS`, `ID`, `Speed0`, `Speed5`, `Speed10`, `Speed15`, `Speed20`, `Speed25`, `Speed30`, `Speed35`, `Speed40`, `Speed45`, `Speed50`, `Speed55`, `Speed60`, `Speed65`, `Speed70`, `Speed75`, `Speed80`, `Speed85`, `Speed90`, `Speed95`, `Speed100`, `Speed105`, `Speed110`, `Speed115`, `Speed120`, `Speed125`, `Speed130`, `Speed135`, `Speed140`, `Speed145`, `Speed150`, `Speed155`, `Speed160`, `Speed165`, `Speed170`, `Speed175`, `Speed180`, `Speed185`, `Speed190`, `Speed195`, `Speed200`, `Speed205`, `Speed210`, `Speed215`, `Speed220`, `Speed225`, `Speed230`, `Speed235`, `Speed240`, `Speed245`, `Speed250`, `Speed255`, `Speed260`, `Speed265`, `Speed270`, `Speed275`, `Speed280`, `Speed285`, `Speed290`, `Speed295`, `Speed300`) VALUES
('YYZX03810', '贵C-DL884', '0.1005', '0.0818', '0.0916', '0.1068', '0.0934', '0.0749', '0.0580', '0.0457', '0.0381', '0.0326', '0.0344', '0.0332', '0.0324', '0.0332', '0.0287', '0.0269', '0.0239', '0.0184', '0.0142', '0.0095', '0.0080', '0.0055', '0.0029', '0.0021', '0.0015', '0.0011', '0.0001', '0.0003', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX04777', '皖A-50D90', '0.1682', '0.0977', '0.0935', '0.0897', '0.0778', '0.0700', '0.0558', '0.0414', '0.0329', '0.0277', '0.0226', '0.0159', '0.0094', '0.0078', '0.0071', '0.0077', '0.0084', '0.0105', '0.0122', '0.0157', '0.0202', '0.0215', '0.0287', '0.0305', '0.0162', '0.0068', '0.0025', '0.0006', '0.0002', '0.0001', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0002', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05028', '粤B-7H4S3', '0.1977', '0.0582', '0.0653', '0.0661', '0.0668', '0.0624', '0.0608', '0.0629', '0.0572', '0.0533', '0.0481', '0.0382', '0.0307', '0.0232', '0.0161', '0.0123', '0.0104', '0.0077', '0.0089', '0.0086', '0.0072', '0.0099', '0.0100', '0.0087', '0.0056', '0.0019', '0.0005', '0.0002', '0.0003', '0.0001', '0.0001', '0.0001', '0.0000', '0.0001', '0.0001', '0.0002', '0.0002', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', '0.2589', '0.1381', '0.1058', '0.0872', '0.0738', '0.0601', '0.0477', '0.0395', '0.0341', '0.0273', '0.0235', '0.0209', '0.0173', '0.0145', '0.0111', '0.0085', '0.0069', '0.0062', '0.0051', '0.0041', '0.0029', '0.0017', '0.0007', '0.0005', '0.0005', '0.0003', '0.0003', '0.0002', '0.0002', '0.0001', '0.0002', '0.0002', '0.0002', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000'),
('YYZZ02013', '蒙A-QZ063', '0.8618', '0.0368', '0.0232', '0.0173', '0.0146', '0.0113', '0.0083', '0.0058', '0.0051', '0.0036', '0.0033', '0.0019', '0.0013', '0.0009', '0.0013', '0.0009', '0.0007', '0.0006', '0.0006', '0.0002', '0.0000', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `total`
--

CREATE TABLE IF NOT EXISTS `total` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `PROV` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `AGE` varchar(2) DEFAULT NULL,
  `CAR` varchar(20) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `REGDATE` date DEFAULT NULL,
  `CARVALUE` decimal(4,2) DEFAULT NULL,
  `NoTrip` int(5) DEFAULT NULL,
  `Time` decimal(8,4) DEFAULT NULL,
  `Miles` decimal(9,4) DEFAULT NULL,
  `Rating` decimal(5,4) DEFAULT NULL,
  `RatingPerc` decimal(5,4) DEFAULT NULL,
  `InsureDiscount` decimal(5,4) DEFAULT NULL,
  `Fraud` decimal(5,4) DEFAULT NULL,
  `MAvgTime` decimal(7,4) DEFAULT NULL,
  `MAvgMiles` decimal(8,4) DEFAULT NULL,
  `Dawn` decimal(5,4) DEFAULT NULL,
  `AMRush` decimal(5,4) DEFAULT NULL,
  `Day` decimal(5,4) DEFAULT NULL,
  `PMRush` decimal(5,4) DEFAULT NULL,
  `Night` decimal(5,4) DEFAULT NULL,
  `Time1Prob` decimal(5,4) DEFAULT NULL,
  `Time2Prob` decimal(5,4) DEFAULT NULL,
  `Time3Prob` decimal(5,4) DEFAULT NULL,
  `Mile100Prob` decimal(5,4) DEFAULT NULL,
  `Mile200Prob` decimal(5,4) DEFAULT NULL,
  `Mile300Prob` decimal(5,4) DEFAULT NULL,
  `AvgSpeed` decimal(6,4) DEFAULT NULL,
  `90Speed` decimal(7,4) DEFAULT NULL,
  `95Speed` decimal(7,4) DEFAULT NULL,
  `99Speed` decimal(7,4) DEFAULT NULL,
  `999Speed` decimal(7,4) DEFAULT NULL,
  `SpeedPerc` decimal(5,4) DEFAULT NULL,
  `AvgAccSpeed` decimal(5,4) DEFAULT NULL,
  `90Acc` decimal(5,4) DEFAULT NULL,
  `95Acc` decimal(5,4) DEFAULT NULL,
  `99Acc` decimal(5,4) DEFAULT NULL,
  `999Acc` decimal(6,4) DEFAULT NULL,
  `AccPerc` decimal(5,4) DEFAULT NULL,
  `AvgDcc` decimal(6,4) DEFAULT NULL,
  `90Dcc` decimal(6,4) DEFAULT NULL,
  `95Dcc` decimal(6,4) DEFAULT NULL,
  `99Dcc` decimal(6,4) DEFAULT NULL,
  `999Dcc` decimal(7,4) DEFAULT NULL,
  `DccPerc` decimal(5,4) DEFAULT NULL,
  `TimePerc` decimal(5,4) DEFAULT NULL,
  `MilesPerc` decimal(5,4) DEFAULT NULL,
  `Fatigue` decimal(5,4) DEFAULT NULL,
  `FatiguePerc` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `total`
--

INSERT INTO `total` (`GPS`, `ID`, `PROV`, `CITY`, `GENDER`, `AGE`, `CAR`, `COLOR`, `REGDATE`, `CARVALUE`, `NoTrip`, `Time`, `Miles`, `Rating`, `RatingPerc`, `InsureDiscount`, `Fraud`, `MAvgTime`, `MAvgMiles`, `Dawn`, `AMRush`, `Day`, `PMRush`, `Night`, `Time1Prob`, `Time2Prob`, `Time3Prob`, `Mile100Prob`, `Mile200Prob`, `Mile300Prob`, `AvgSpeed`, `90Speed`, `95Speed`, `99Speed`, `999Speed`, `SpeedPerc`, `AvgAccSpeed`, `90Acc`, `95Acc`, `99Acc`, `999Acc`, `AccPerc`, `AvgDcc`, `90Dcc`, `95Dcc`, `99Dcc`, `999Dcc`, `DccPerc`, `TimePerc`, `MilesPerc`, `Fatigue`, `FatiguePerc`) VALUES
('YYZX03810', '贵C-DL884', '贵州', '遵义', '', '', '雪佛兰SGM7140AMTB轿车', '', '2013-08-08', '5.20', 1071, '126.0608', '4157.8833', '7.1478', '0.7018', '0.0895', '0.0225', '12.6061', '415.7883', '0.0190', '0.2184', '0.4031', '0.2998', '0.0596', '0.0063', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '35.1527', '77.5163', '88.4156', '107.6426', '127.4907', '0.7349', '0.3286', '0.4690', '0.9150', '6.1086', '14.1422', '0.8084', '-0.0849', '-0.1714', '-0.2485', '-0.5091', '-2.0086', '0.7588', '0.0865', '0.1438', '0.0000', '0.1711'),
('YYZX04777', '皖A-50D90', '安徽', '合肥', '', '', '东风雪铁龙DC7207LYEA轿车', '', '2015-07-23', '14.00', 3410, '495.7939', '14734.9237', '8.0859', '0.7966', '0.0610', '0.0278', '49.5794', '1473.4924', '0.0493', '0.1416', '0.2099', '0.3042', '0.2950', '0.0132', '0.0059', '0.0032', '0.0062', '0.0023', '0.0003', '36.8106', '106.5673', '116.4034', '125.6251', '139.8144', '0.7724', '0.2931', '0.4093', '0.8689', '4.8228', '18.9308', '0.7319', '-0.0927', '-0.1752', '-0.2605', '-0.7007', '-3.8072', '0.7445', '0.2686', '0.5481', '0.0054', '0.8792'),
('YYZX05028', '粤B-7H4S3', '广东', '深圳', '', '', '丰田GTM7200EEP轿车', '', '2015-08-20', '15.21', 3222, '1216.7886', '14767.3837', '4.0790', '0.3257', '0.2023', '0.0179', '121.6789', '1476.7384', '0.0705', '0.2534', '0.2267', '0.1285', '0.3209', '0.0558', '0.0306', '0.0200', '0.0019', '0.0003', '0.0000', '33.8423', '72.4663', '119.7196', '119.7196', '153.5773', '0.7031', '0.1088', '0.2853', '0.4252', '0.7240', '1.1134', '0.2428', '-0.0726', '-0.1655', '-0.2061', '-0.3109', '-0.5919', '0.7805', '0.7986', '0.5496', '0.0047', '0.8141'),
('YYZX05248', '闽C-M065V', '福建', '泉州', '男', '24', '东风雪铁龙DC7165LYGA轿车', '白', '2015-08-27', '8.78', 10179, '1309.9156', '27298.0271', '7.5091', '0.7406', '0.0778', '0.0317', '130.9916', '2729.8027', '0.0182', '0.0873', '0.3337', '0.2720', '0.2888', '0.0035', '0.0003', '0.0001', '0.0001', '0.0000', '0.0000', '22.7054', '55.9798', '70.6070', '99.3245', '202.4129', '0.3949', '0.2929', '0.3621', '0.6845', '3.7927', '29.5547', '0.7315', '-0.3348', '-0.2169', '-0.3520', '-1.7339', '-17.1649', '0.2267', '0.8472', '0.9367', '0.0000', '0.1711'),
('YYZZ02013', '蒙A-QZ063', '内蒙古', '呼和浩特', '', '', '东风雪铁龙DC7165LYGA轿车', '', '2015-05-21', '8.78', 1255, '860.6675', '7315.5745', '0.6363', '0.0602', '0.2819', '0.0085', '86.0667', '731.5575', '0.0736', '0.1693', '0.2342', '0.1707', '0.3522', '0.0506', '0.0100', '0.0038', '0.0004', '0.0000', '0.0000', '3.5710', '10.2755', '23.7315', '53.3117', '91.1786', '0.0504', '0.0090', '0.0087', '0.0200', '0.0614', '2.0717', '0.0792', '-0.4438', '-0.0104', '-0.0192', '-0.0447', '-50.7044', '0.0833', '0.5472', '0.2389', '0.0020', '0.4346');

-- --------------------------------------------------------

--
-- Table structure for table `yacc`
--

CREATE TABLE IF NOT EXISTS `yacc` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `YEAR` int(11) NOT NULL,
  `Acc0.5` decimal(5,4) DEFAULT NULL,
  `Acc1` decimal(5,4) DEFAULT NULL,
  `Acc1.5` decimal(5,4) DEFAULT NULL,
  `Acc2` decimal(5,4) DEFAULT NULL,
  `Acc2.5` decimal(5,4) DEFAULT NULL,
  `Acc3` decimal(5,4) DEFAULT NULL,
  `Acc3.5` decimal(5,4) DEFAULT NULL,
  `Acc4` decimal(5,4) DEFAULT NULL,
  `Acc4.5` decimal(5,4) DEFAULT NULL,
  `Acc5` decimal(5,4) DEFAULT NULL,
  `Acc5.5` decimal(5,4) DEFAULT NULL,
  `Acc6` decimal(5,4) DEFAULT NULL,
  `Acc6.5` decimal(5,4) DEFAULT NULL,
  `Acc7` decimal(5,4) DEFAULT NULL,
  `Acc7.5` decimal(5,4) DEFAULT NULL,
  `Acc8` decimal(5,4) DEFAULT NULL,
  `Acc8.5` decimal(5,4) DEFAULT NULL,
  `Acc9` decimal(5,4) DEFAULT NULL,
  `Acc9.5` decimal(5,4) DEFAULT NULL,
  `Acc10` decimal(5,4) DEFAULT NULL,
  `Acc10.5` decimal(5,4) DEFAULT NULL,
  `Acc11` decimal(5,4) DEFAULT NULL,
  `Acc11.5` decimal(5,4) DEFAULT NULL,
  `Acc12` decimal(5,4) DEFAULT NULL,
  `Acc12.5` decimal(5,4) DEFAULT NULL,
  `Acc13` decimal(5,4) DEFAULT NULL,
  `Acc13.5` decimal(5,4) DEFAULT NULL,
  `Acc14` decimal(5,4) DEFAULT NULL,
  `Acc14.5` decimal(5,4) DEFAULT NULL,
  `Acc15` decimal(5,4) DEFAULT NULL,
  `Acc15.5` decimal(5,4) DEFAULT NULL,
  `Acc16` decimal(5,4) DEFAULT NULL,
  `Acc16.5` decimal(5,4) DEFAULT NULL,
  `Acc17` decimal(5,4) DEFAULT NULL,
  `Acc17.5` decimal(5,4) DEFAULT NULL,
  `Acc18` decimal(5,4) DEFAULT NULL,
  `Acc18.5` decimal(5,4) DEFAULT NULL,
  `Acc19` decimal(5,4) DEFAULT NULL,
  `Acc19.5` decimal(5,4) DEFAULT NULL,
  `Acc20` decimal(5,4) DEFAULT NULL,
  `Acc20.5` decimal(5,4) DEFAULT NULL,
  `Acc21` decimal(5,4) DEFAULT NULL,
  `Acc21.5` decimal(5,4) DEFAULT NULL,
  `Acc22` decimal(5,4) DEFAULT NULL,
  `Acc22.5` decimal(5,4) DEFAULT NULL,
  `Acc23` decimal(5,4) DEFAULT NULL,
  `Acc23.5` decimal(5,4) DEFAULT NULL,
  `Acc24` decimal(5,4) DEFAULT NULL,
  `Acc24.5` decimal(5,4) DEFAULT NULL,
  `Acc25` decimal(5,4) DEFAULT NULL,
  `Acc25.5` decimal(5,4) DEFAULT NULL,
  `Acc26` decimal(5,4) DEFAULT NULL,
  `Acc26.5` decimal(5,4) DEFAULT NULL,
  `Acc27` decimal(5,4) DEFAULT NULL,
  `Acc27.5` decimal(5,4) DEFAULT NULL,
  `Acc28` decimal(5,4) DEFAULT NULL,
  `Acc28.5` decimal(5,4) DEFAULT NULL,
  `Acc29` decimal(5,4) DEFAULT NULL,
  `Acc29.5` decimal(5,4) DEFAULT NULL,
  `Acc30` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yacc`
--

INSERT INTO `yacc` (`GPS`, `ID`, `YEAR`, `Acc0.5`, `Acc1`, `Acc1.5`, `Acc2`, `Acc2.5`, `Acc3`, `Acc3.5`, `Acc4`, `Acc4.5`, `Acc5`, `Acc5.5`, `Acc6`, `Acc6.5`, `Acc7`, `Acc7.5`, `Acc8`, `Acc8.5`, `Acc9`, `Acc9.5`, `Acc10`, `Acc10.5`, `Acc11`, `Acc11.5`, `Acc12`, `Acc12.5`, `Acc13`, `Acc13.5`, `Acc14`, `Acc14.5`, `Acc15`, `Acc15.5`, `Acc16`, `Acc16.5`, `Acc17`, `Acc17.5`, `Acc18`, `Acc18.5`, `Acc19`, `Acc19.5`, `Acc20`, `Acc20.5`, `Acc21`, `Acc21.5`, `Acc22`, `Acc22.5`, `Acc23`, `Acc23.5`, `Acc24`, `Acc24.5`, `Acc25`, `Acc25.5`, `Acc26`, `Acc26.5`, `Acc27`, `Acc27.5`, `Acc28`, `Acc28.5`, `Acc29`, `Acc29.5`, `Acc30`) VALUES
('YYZX04777', '皖A-50D90', 2016, '0.4954', '0.1749', '0.0749', '0.0496', '0.0294', '0.0244', '0.0118', '0.0126', '0.0050', '0.0067', '0.0093', '0.0076', '0.0076', '0.0084', '0.0084', '0.0050', '0.0118', '0.0017', '0.0050', '0.0034', '0.0034', '0.0050', '0.0042', '0.0000', '0.0034', '0.0025', '0.0042', '0.0000', '0.0017', '0.0017', '0.0017', '0.0008', '0.0017', '0.0008', '0.0008', '0.0008', '0.0017', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0000', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0008', '0.0000', '0.0008', '0.0008', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0067', '0.0000'),
('YYZX05028', '粤B-7H4S3', 2016, '0.9063', '0.0859', '0.0000', '0.0020', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZZ02013', '蒙A-QZ063', 2016, '0.2778', '0.1389', '0.0556', '0.1667', '0.0833', '0.0833', '0.0556', '0.0278', '0.0000', '0.0556', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX03810', '贵C-DL884', 2016, '0.5039', '0.1318', '0.0594', '0.0594', '0.0388', '0.0310', '0.0129', '0.0155', '0.0052', '0.0181', '0.0155', '0.0026', '0.0181', '0.0026', '0.0052', '0.0078', '0.0052', '0.0052', '0.0000', '0.0129', '0.0026', '0.0155', '0.0052', '0.0000', '0.0052', '0.0000', '0.0052', '0.0026', '0.0000', '0.0026', '0.0026', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0026', '0.0000', '0.0026', '0.0000', '0.0000', '0.0000', '0.0026', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', 2016, '0.4982', '0.1577', '0.0812', '0.0488', '0.0372', '0.0234', '0.0162', '0.0141', '0.0100', '0.0100', '0.0074', '0.0076', '0.0086', '0.0045', '0.0055', '0.0031', '0.0024', '0.0036', '0.0007', '0.0043', '0.0021', '0.0043', '0.0033', '0.0021', '0.0024', '0.0012', '0.0019', '0.0019', '0.0005', '0.0024', '0.0002', '0.0017', '0.0029', '0.0012', '0.0010', '0.0012', '0.0002', '0.0002', '0.0005', '0.0007', '0.0005', '0.0002', '0.0007', '0.0007', '0.0014', '0.0007', '0.0007', '0.0007', '0.0005', '0.0000', '0.0005', '0.0000', '0.0014', '0.0002', '0.0000', '0.0002', '0.0005', '0.0000', '0.0145', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `ydcc`
--

CREATE TABLE IF NOT EXISTS `ydcc` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `YEAR` int(11) NOT NULL,
  `Dcc0.5` decimal(5,4) DEFAULT NULL,
  `Dcc1` decimal(5,4) DEFAULT NULL,
  `Dcc1.5` decimal(5,4) DEFAULT NULL,
  `Dcc2` decimal(5,4) DEFAULT NULL,
  `Dcc2.5` decimal(5,4) DEFAULT NULL,
  `Dcc3` decimal(5,4) DEFAULT NULL,
  `Dcc3.5` decimal(5,4) DEFAULT NULL,
  `Dcc4` decimal(5,4) DEFAULT NULL,
  `Dcc4.5` decimal(5,4) DEFAULT NULL,
  `Dcc5` decimal(5,4) DEFAULT NULL,
  `Dcc5.5` decimal(5,4) DEFAULT NULL,
  `Dcc6` decimal(5,4) DEFAULT NULL,
  `Dcc6.5` decimal(5,4) DEFAULT NULL,
  `Dcc7` decimal(5,4) DEFAULT NULL,
  `Dcc7.5` decimal(5,4) DEFAULT NULL,
  `Dcc8` decimal(5,4) DEFAULT NULL,
  `Dcc8.5` decimal(5,4) DEFAULT NULL,
  `Dcc9` decimal(5,4) DEFAULT NULL,
  `Dcc9.5` decimal(5,4) DEFAULT NULL,
  `Dcc10` decimal(5,4) DEFAULT NULL,
  `Dcc10.5` decimal(5,4) DEFAULT NULL,
  `Dcc11` decimal(5,4) DEFAULT NULL,
  `Dcc11.5` decimal(5,4) DEFAULT NULL,
  `Dcc12` decimal(5,4) DEFAULT NULL,
  `Dcc12.5` decimal(5,4) DEFAULT NULL,
  `Dcc13` decimal(5,4) DEFAULT NULL,
  `Dcc13.5` decimal(5,4) DEFAULT NULL,
  `Dcc14` decimal(5,4) DEFAULT NULL,
  `Dcc14.5` decimal(5,4) DEFAULT NULL,
  `Dcc15` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ydcc`
--

INSERT INTO `ydcc` (`GPS`, `ID`, `YEAR`, `Dcc0.5`, `Dcc1`, `Dcc1.5`, `Dcc2`, `Dcc2.5`, `Dcc3`, `Dcc3.5`, `Dcc4`, `Dcc4.5`, `Dcc5`, `Dcc5.5`, `Dcc6`, `Dcc6.5`, `Dcc7`, `Dcc7.5`, `Dcc8`, `Dcc8.5`, `Dcc9`, `Dcc9.5`, `Dcc10`, `Dcc10.5`, `Dcc11`, `Dcc11.5`, `Dcc12`, `Dcc12.5`, `Dcc13`, `Dcc13.5`, `Dcc14`, `Dcc14.5`, `Dcc15`) VALUES
('YYZX04777', '皖A-50D90', 2016, '0.6520', '0.1324', '0.0637', '0.0392', '0.0441', '0.0098', '0.0147', '0.0000', '0.0000', '0.0147', '0.0049', '0.0049', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0049', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0049'),
('YYZX05028', '粤B-7H4S3', 2016, '0.7857', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZZ02013', '蒙A-QZ063', 2016, '0.0000', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX03810', '贵C-DL884', 2016, '0.6765', '0.2059', '0.0294', '0.0588', '0.0000', '0.0000', '0.0294', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', 2016, '0.4912', '0.1837', '0.0726', '0.0556', '0.0335', '0.0246', '0.0158', '0.0120', '0.0158', '0.0082', '0.0082', '0.0057', '0.0051', '0.0032', '0.0044', '0.0051', '0.0051', '0.0038', '0.0019', '0.0000', '0.0013', '0.0019', '0.0019', '0.0025', '0.0013', '0.0013', '0.0000', '0.0000', '0.0025', '0.0322');

-- --------------------------------------------------------

--
-- Table structure for table `yspeed`
--

CREATE TABLE IF NOT EXISTS `yspeed` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `YEAR` int(11) NOT NULL,
  `Speed0` decimal(5,4) DEFAULT NULL,
  `Speed5` decimal(5,4) DEFAULT NULL,
  `Speed10` decimal(5,4) DEFAULT NULL,
  `Speed15` decimal(5,4) DEFAULT NULL,
  `Speed20` decimal(5,4) DEFAULT NULL,
  `Speed25` decimal(5,4) DEFAULT NULL,
  `Speed30` decimal(5,4) DEFAULT NULL,
  `Speed35` decimal(5,4) DEFAULT NULL,
  `Speed40` decimal(5,4) DEFAULT NULL,
  `Speed45` decimal(5,4) DEFAULT NULL,
  `Speed50` decimal(5,4) DEFAULT NULL,
  `Speed55` decimal(5,4) DEFAULT NULL,
  `Speed60` decimal(5,4) DEFAULT NULL,
  `Speed65` decimal(5,4) DEFAULT NULL,
  `Speed70` decimal(5,4) DEFAULT NULL,
  `Speed75` decimal(5,4) DEFAULT NULL,
  `Speed80` decimal(5,4) DEFAULT NULL,
  `Speed85` decimal(5,4) DEFAULT NULL,
  `Speed90` decimal(5,4) DEFAULT NULL,
  `Speed95` decimal(5,4) DEFAULT NULL,
  `Speed100` decimal(5,4) DEFAULT NULL,
  `Speed105` decimal(5,4) DEFAULT NULL,
  `Speed110` decimal(5,4) DEFAULT NULL,
  `Speed115` decimal(5,4) DEFAULT NULL,
  `Speed120` decimal(5,4) DEFAULT NULL,
  `Speed125` decimal(5,4) DEFAULT NULL,
  `Speed130` decimal(5,4) DEFAULT NULL,
  `Speed135` decimal(5,4) DEFAULT NULL,
  `Speed140` decimal(5,4) DEFAULT NULL,
  `Speed145` decimal(5,4) DEFAULT NULL,
  `Speed150` decimal(5,4) DEFAULT NULL,
  `Speed155` decimal(5,4) DEFAULT NULL,
  `Speed160` decimal(5,4) DEFAULT NULL,
  `Speed165` decimal(5,4) DEFAULT NULL,
  `Speed170` decimal(5,4) DEFAULT NULL,
  `Speed175` decimal(5,4) DEFAULT NULL,
  `Speed180` decimal(5,4) DEFAULT NULL,
  `Speed185` decimal(5,4) DEFAULT NULL,
  `Speed190` decimal(5,4) DEFAULT NULL,
  `Speed195` decimal(5,4) DEFAULT NULL,
  `Speed200` decimal(5,4) DEFAULT NULL,
  `Speed205` decimal(5,4) DEFAULT NULL,
  `Speed210` decimal(5,4) DEFAULT NULL,
  `Speed215` decimal(5,4) DEFAULT NULL,
  `Speed220` decimal(5,4) DEFAULT NULL,
  `Speed225` decimal(5,4) DEFAULT NULL,
  `Speed230` decimal(5,4) DEFAULT NULL,
  `Speed235` decimal(5,4) DEFAULT NULL,
  `Speed240` decimal(5,4) DEFAULT NULL,
  `Speed245` decimal(5,4) DEFAULT NULL,
  `Speed250` decimal(5,4) DEFAULT NULL,
  `Speed255` decimal(5,4) DEFAULT NULL,
  `Speed260` decimal(5,4) DEFAULT NULL,
  `Speed265` decimal(5,4) DEFAULT NULL,
  `Speed270` decimal(5,4) DEFAULT NULL,
  `Speed275` decimal(5,4) DEFAULT NULL,
  `Speed280` decimal(5,4) DEFAULT NULL,
  `Speed285` decimal(5,4) DEFAULT NULL,
  `Speed290` decimal(5,4) DEFAULT NULL,
  `Speed295` decimal(5,4) DEFAULT NULL,
  `Speed300` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `yspeed`
--

INSERT INTO `yspeed` (`GPS`, `ID`, `YEAR`, `Speed0`, `Speed5`, `Speed10`, `Speed15`, `Speed20`, `Speed25`, `Speed30`, `Speed35`, `Speed40`, `Speed45`, `Speed50`, `Speed55`, `Speed60`, `Speed65`, `Speed70`, `Speed75`, `Speed80`, `Speed85`, `Speed90`, `Speed95`, `Speed100`, `Speed105`, `Speed110`, `Speed115`, `Speed120`, `Speed125`, `Speed130`, `Speed135`, `Speed140`, `Speed145`, `Speed150`, `Speed155`, `Speed160`, `Speed165`, `Speed170`, `Speed175`, `Speed180`, `Speed185`, `Speed190`, `Speed195`, `Speed200`, `Speed205`, `Speed210`, `Speed215`, `Speed220`, `Speed225`, `Speed230`, `Speed235`, `Speed240`, `Speed245`, `Speed250`, `Speed255`, `Speed260`, `Speed265`, `Speed270`, `Speed275`, `Speed280`, `Speed285`, `Speed290`, `Speed295`, `Speed300`) VALUES
('YYZX04777', '皖A-50D90', 2016, '0.1682', '0.0977', '0.0935', '0.0897', '0.0778', '0.0700', '0.0558', '0.0414', '0.0329', '0.0277', '0.0226', '0.0159', '0.0094', '0.0078', '0.0071', '0.0077', '0.0084', '0.0105', '0.0122', '0.0157', '0.0202', '0.0215', '0.0287', '0.0305', '0.0162', '0.0068', '0.0025', '0.0006', '0.0002', '0.0001', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0002', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05028', '粤B-7H4S3', 2016, '0.1977', '0.0582', '0.0653', '0.0661', '0.0668', '0.0624', '0.0608', '0.0629', '0.0572', '0.0533', '0.0481', '0.0382', '0.0307', '0.0232', '0.0161', '0.0123', '0.0104', '0.0077', '0.0089', '0.0086', '0.0072', '0.0099', '0.0100', '0.0087', '0.0056', '0.0019', '0.0005', '0.0002', '0.0003', '0.0001', '0.0001', '0.0001', '0.0000', '0.0001', '0.0001', '0.0002', '0.0002', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZZ02013', '蒙A-QZ063', 2016, '0.8618', '0.0368', '0.0232', '0.0173', '0.0146', '0.0113', '0.0083', '0.0058', '0.0051', '0.0036', '0.0033', '0.0019', '0.0013', '0.0009', '0.0013', '0.0009', '0.0007', '0.0006', '0.0006', '0.0002', '0.0000', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX03810', '贵C-DL884', 2016, '0.1005', '0.0818', '0.0916', '0.1068', '0.0934', '0.0749', '0.0580', '0.0457', '0.0381', '0.0326', '0.0344', '0.0332', '0.0324', '0.0332', '0.0287', '0.0269', '0.0239', '0.0184', '0.0142', '0.0095', '0.0080', '0.0055', '0.0029', '0.0021', '0.0015', '0.0011', '0.0001', '0.0003', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000'),
('YYZX05248', '闽C-M065V', 2016, '0.2589', '0.1381', '0.1058', '0.0872', '0.0738', '0.0601', '0.0477', '0.0395', '0.0341', '0.0273', '0.0235', '0.0209', '0.0173', '0.0145', '0.0111', '0.0085', '0.0069', '0.0062', '0.0051', '0.0041', '0.0029', '0.0017', '0.0007', '0.0005', '0.0005', '0.0003', '0.0003', '0.0002', '0.0002', '0.0001', '0.0002', '0.0002', '0.0002', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000');

-- --------------------------------------------------------

--
-- Table structure for table `ytotal`
--

CREATE TABLE IF NOT EXISTS `ytotal` (
  `auto_id` bigint(12) NOT NULL AUTO_INCREMENT,
  `GPS` varchar(10) NOT NULL,
  `ID` varchar(8) NOT NULL DEFAULT '',
  `YEAR` int(11) NOT NULL,
  `PROV` varchar(10) DEFAULT NULL,
  `CITY` varchar(10) DEFAULT NULL,
  `GENDER` varchar(1) DEFAULT NULL,
  `AGE` varchar(2) DEFAULT NULL,
  `CAR` varchar(20) DEFAULT NULL,
  `COLOR` varchar(10) DEFAULT NULL,
  `REGDATE` date DEFAULT NULL,
  `CARVALUE` decimal(4,2) DEFAULT NULL,
  `NoTrip` int(5) DEFAULT NULL,
  `Time` decimal(8,4) DEFAULT NULL,
  `Miles` decimal(9,4) DEFAULT NULL,
  `Rating` decimal(5,4) DEFAULT NULL,
  `RatingPerc` decimal(5,4) DEFAULT NULL,
  `InsureDiscount` decimal(5,4) DEFAULT NULL,
  `Fraud` decimal(5,4) DEFAULT NULL,
  `MAvgTime` decimal(7,4) DEFAULT NULL,
  `MAvgMiles` decimal(8,4) DEFAULT NULL,
  `Dawn` decimal(5,4) DEFAULT NULL,
  `AMRush` decimal(5,4) DEFAULT NULL,
  `Day` decimal(5,4) DEFAULT NULL,
  `PMRush` decimal(5,4) DEFAULT NULL,
  `Night` decimal(5,4) DEFAULT NULL,
  `Time1Prob` decimal(5,4) DEFAULT NULL,
  `Time2Prob` decimal(5,4) DEFAULT NULL,
  `Time3Prob` decimal(5,4) DEFAULT NULL,
  `Mile100Prob` decimal(5,4) DEFAULT NULL,
  `Mile200Prob` decimal(5,4) DEFAULT NULL,
  `Mile300Prob` decimal(5,4) DEFAULT NULL,
  `AvgSpeed` decimal(6,4) DEFAULT NULL,
  `90Speed` decimal(7,4) DEFAULT NULL,
  `95Speed` decimal(7,4) DEFAULT NULL,
  `99Speed` decimal(7,4) DEFAULT NULL,
  `999Speed` decimal(7,4) DEFAULT NULL,
  `SpeedPerc` decimal(5,4) DEFAULT NULL,
  `AvgAccSpeed` decimal(5,4) DEFAULT NULL,
  `90Acc` decimal(5,4) DEFAULT NULL,
  `95Acc` decimal(5,4) DEFAULT NULL,
  `99Acc` decimal(5,4) DEFAULT NULL,
  `999Acc` decimal(6,4) DEFAULT NULL,
  `AccPerc` decimal(5,4) DEFAULT NULL,
  `AvgDcc` decimal(6,4) DEFAULT NULL,
  `90Dcc` decimal(6,4) DEFAULT NULL,
  `95Dcc` decimal(6,4) DEFAULT NULL,
  `99Dcc` decimal(6,4) DEFAULT NULL,
  `999Dcc` decimal(7,4) DEFAULT NULL,
  `DccPerc` decimal(5,4) DEFAULT NULL,
  `TimePerc` decimal(5,4) DEFAULT NULL,
  `MilesPerc` decimal(5,4) DEFAULT NULL,
  `Fatigue` decimal(5,4) DEFAULT NULL,
  `FatiguePerc` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `ytotal`
--

INSERT INTO `ytotal` (`GPS`, `ID`, `YEAR`, `PROV`, `CITY`, `GENDER`, `AGE`, `CAR`, `COLOR`, `REGDATE`, `CARVALUE`, `NoTrip`, `Time`, `Miles`, `Rating`, `RatingPerc`, `InsureDiscount`, `Fraud`, `MAvgTime`, `MAvgMiles`, `Dawn`, `AMRush`, `Day`, `PMRush`, `Night`, `Time1Prob`, `Time2Prob`, `Time3Prob`, `Mile100Prob`, `Mile200Prob`, `Mile300Prob`, `AvgSpeed`, `90Speed`, `95Speed`, `99Speed`, `999Speed`, `SpeedPerc`, `AvgAccSpeed`, `90Acc`, `95Acc`, `99Acc`, `999Acc`, `AccPerc`, `AvgDcc`, `90Dcc`, `95Dcc`, `99Dcc`, `999Dcc`, `DccPerc`, `TimePerc`, `MilesPerc`, `Fatigue`, `FatiguePerc`) VALUES
('YYZX04777', '皖A-50D90', 2016, '安徽', '合肥', '', '', '东风雪铁龙DC7207LYEA轿车', '', '2015-07-23', '14.00', 3410, '495.7939', '14734.9237', '8.0859', '0.7966', '0.0610', '0.0278', '49.5794', '1473.4924', '0.0493', '0.1416', '0.2099', '0.3042', '0.2950', '0.0132', '0.0059', '0.0032', '0.0062', '0.0023', '0.0003', '36.8106', '106.5673', '116.4034', '125.6251', '139.8144', '0.7724', '0.2931', '0.4093', '0.8689', '4.8228', '18.9308', '0.7319', '-0.0927', '-0.1752', '-0.2605', '-0.7007', '-3.8072', '0.7445', '0.2686', '0.5481', '0.0054', '0.8792'),
('YYZX05028', '粤B-7H4S3', 2016, '广东', '深圳', '', '', '丰田GTM7200EEP轿车', '', '2015-08-20', '15.21', 3222, '1216.7886', '14767.3837', '4.0790', '0.3257', '0.2023', '0.0179', '121.6789', '1476.7384', '0.0705', '0.2534', '0.2267', '0.1285', '0.3209', '0.0558', '0.0306', '0.0200', '0.0019', '0.0003', '0.0000', '33.8423', '72.4663', '119.7196', '119.7196', '153.5773', '0.7031', '0.1088', '0.2853', '0.4252', '0.7240', '1.1134', '0.2428', '-0.0726', '-0.1655', '-0.2061', '-0.3109', '-0.5919', '0.7805', '0.7986', '0.5496', '0.0047', '0.8141'),
('YYZZ02013', '蒙A-QZ063', 2016, '内蒙古', '呼和浩特', '', '', '东风雪铁龙DC7165LYGA轿车', '', '2015-05-21', '8.78', 1255, '860.6675', '7315.5745', '0.6363', '0.0602', '0.2819', '0.0085', '86.0667', '731.5575', '0.0736', '0.1693', '0.2342', '0.1707', '0.3522', '0.0506', '0.0100', '0.0038', '0.0004', '0.0000', '0.0000', '3.5710', '10.2755', '23.7315', '53.3117', '91.1786', '0.0504', '0.0090', '0.0087', '0.0200', '0.0614', '2.0717', '0.0792', '-0.4438', '-0.0104', '-0.0192', '-0.0447', '-50.7044', '0.0833', '0.5472', '0.2389', '0.0020', '0.4346'),
('YYZX03810', '贵C-DL884', 2016, '贵州', '遵义', '', '', '雪佛兰SGM7140AMTB轿车', '', '2013-08-08', '5.20', 1071, '126.0608', '4157.8833', '7.1478', '0.7018', '0.0895', '0.0225', '12.6061', '415.7883', '0.0190', '0.2184', '0.4031', '0.2998', '0.0596', '0.0063', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '35.1527', '77.5163', '88.4156', '107.6426', '127.4907', '0.7349', '0.3286', '0.4690', '0.9150', '6.1086', '14.1422', '0.8084', '-0.0849', '-0.1714', '-0.2485', '-0.5091', '-2.0086', '0.7588', '0.0865', '0.1438', '0.0000', '0.1711'),
('YYZX05248', '闽C-M065V', 2016, '福建', '泉州', '男', '24', '东风雪铁龙DC7165LYGA轿车', '白', '2015-08-27', '8.78', 10179, '1309.9156', '27298.0271', '7.5091', '0.7406', '0.0778', '0.0317', '130.9916', '2729.8027', '0.0182', '0.0873', '0.3337', '0.2720', '0.2888', '0.0035', '0.0003', '0.0001', '0.0001', '0.0000', '0.0000', '22.7054', '55.9798', '70.6070', '99.3245', '202.4129', '0.3949', '0.2929', '0.3621', '0.6845', '3.7927', '29.5547', '0.7315', '-0.3348', '-0.2169', '-0.3520', '-1.7339', '-17.1649', '0.2267', '0.8472', '0.9367', '0.0000', '0.1711');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
