/*
Navicat MySQL Data Transfer

Source Server         : smkj
Source Server Version : 50148
Source Host           : 223.4.246.130:3306
Source Database       : smkj

Target Server Type    : MYSQL
Target Server Version : 50148
File Encoding         : 65001

Date: 2016-10-18 05:34:40
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `monthlydata`
-- ----------------------------
DROP TABLE IF EXISTS `monthlydata`;
CREATE TABLE `monthlydata` (
  `auto_id` bigint(20) NOT NULL AUTO_INCREMENT,
  `ID` varchar(9) DEFAULT NULL,
  `Month` varchar(6) DEFAULT NULL,
  `Miles` decimal(9,4) DEFAULT NULL,
  `Time` decimal(7,4) DEFAULT NULL,
  `AvgSpeed` decimal(6,4) DEFAULT NULL,
  `AvgAcc` decimal(5,4) DEFAULT NULL,
  `AvgDcc` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`auto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of monthlydata
-- ----------------------------
INSERT INTO `monthlydata` VALUES ('1', 'YYZX03810', '15-Nov', '306.9864', '8.0736', '38.0234', '0.4799', '0.0862');
INSERT INTO `monthlydata` VALUES ('2', 'YYZX03810', '15-Dec', '393.2698', '10.2356', '38.4219', '0.4527', '0.1023');
INSERT INTO `monthlydata` VALUES ('3', 'YYZX03810', '16-Jan', '377.9410', '9.4117', '40.1567', '0.4048', '0.0864');
INSERT INTO `monthlydata` VALUES ('4', 'YYZX03810', '16-Feb', '460.9554', '13.7294', '33.5742', '0.2983', '0.0809');
INSERT INTO `monthlydata` VALUES ('5', 'YYZX03810', '16-Mar', '493.9048', '13.9903', '35.3034', '0.3849', '0.0916');
INSERT INTO `monthlydata` VALUES ('6', 'YYZX03810', '16-Apr', '593.0594', '15.2853', '38.7994', '0.2516', '0.0807');
INSERT INTO `monthlydata` VALUES ('7', 'YYZX03810', '16-May', '392.1464', '10.9253', '35.8935', '0.2621', '0.0827');
INSERT INTO `monthlydata` VALUES ('8', 'YYZX03810', '16-Jun', '339.1488', '9.5647', '35.4583', '0.3290', '0.0963');
INSERT INTO `monthlydata` VALUES ('9', 'YYZX03810', '16-Jul', '386.3573', '11.6117', '33.2732', '0.2770', '0.0761');
INSERT INTO `monthlydata` VALUES ('10', 'YYZX03810', '16-Aug', '414.1056', '11.2778', '36.7187', '0.1733', '0.0652');
INSERT INTO `monthlydata` VALUES ('11', 'YYZX05028', '15-Nov', '1668.7631', '301.9072', '5.5274', '0.0900', '0.0603');
INSERT INTO `monthlydata` VALUES ('12', 'YYZX05028', '15-Dec', '1898.2174', '421.6553', '4.5018', '0.1098', '0.0712');
INSERT INTO `monthlydata` VALUES ('13', 'YYZX05028', '16-Jan', '1978.5952', '371.3203', '5.3285', '0.1114', '0.0743');
INSERT INTO `monthlydata` VALUES ('14', 'YYZX05028', '16-Feb', '897.3572', '227.0056', '3.9530', '0.1089', '0.0694');
INSERT INTO `monthlydata` VALUES ('15', 'YYZX05028', '16-Mar', '1580.0571', '410.1489', '3.8524', '0.1111', '0.0889');
INSERT INTO `monthlydata` VALUES ('16', 'YYZX05028', '16-Apr', '1525.0613', '388.3172', '3.9274', '0.1178', '0.0773');
INSERT INTO `monthlydata` VALUES ('17', 'YYZX05028', '16-May', '2067.5686', '390.2497', '5.2981', '0.1198', '0.0722');
INSERT INTO `monthlydata` VALUES ('18', 'YYZX05028', '16-Jun', '1559.6094', '359.3372', '4.3402', '0.1151', '0.0749');
INSERT INTO `monthlydata` VALUES ('19', 'YYZX05028', '16-Jul', '1754.6935', '381.8544', '4.5952', '0.0955', '0.0646');
INSERT INTO `monthlydata` VALUES ('20', 'YYZX05028', '16-Aug', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000');
INSERT INTO `monthlydata` VALUES ('21', 'YYZX04777', '15-Nov', '546.6074', '28.3567', '19.2762', '0.3484', '0.0958');
INSERT INTO `monthlydata` VALUES ('22', 'YYZX04777', '15-Dec', '1573.6123', '47.0903', '33.4169', '0.3192', '0.0915');
INSERT INTO `monthlydata` VALUES ('23', 'YYZX04777', '16-Jan', '262.1171', '10.6600', '24.5889', '0.2101', '0.0957');
INSERT INTO `monthlydata` VALUES ('24', 'YYZX04777', '16-Feb', '5186.3111', '266.1889', '19.4836', '0.2133', '0.0757');
INSERT INTO `monthlydata` VALUES ('25', 'YYZX04777', '16-Mar', '811.8823', '157.9397', '5.1405', '0.3627', '0.1235');
INSERT INTO `monthlydata` VALUES ('26', 'YYZX04777', '16-Apr', '2660.5046', '56.0889', '47.4337', '0.2730', '0.0791');
INSERT INTO `monthlydata` VALUES ('27', 'YYZX04777', '16-May', '1330.8086', '35.8503', '37.1213', '0.3895', '0.0936');
INSERT INTO `monthlydata` VALUES ('28', 'YYZX04777', '16-Jun', '763.3587', '28.6664', '26.6291', '0.3178', '0.0966');
INSERT INTO `monthlydata` VALUES ('29', 'YYZX04777', '16-Jul', '1100.1464', '46.0056', '23.9133', '0.3041', '0.0961');
INSERT INTO `monthlydata` VALUES ('30', 'YYZX04777', '16-Aug', '518.7653', '24.0711', '21.5514', '0.2437', '0.1238');
INSERT INTO `monthlydata` VALUES ('31', 'YYZX05248', '15-Nov', '2726.0200', '121.5250', '22.4318', '0.1994', '0.1091');
INSERT INTO `monthlydata` VALUES ('32', 'YYZX05248', '15-Dec', '3277.2504', '151.4869', '21.6339', '0.2504', '1.5516');
INSERT INTO `monthlydata` VALUES ('33', 'YYZX05248', '16-Jan', '3253.1925', '105.6508', '30.7919', '0.2047', '0.1063');
INSERT INTO `monthlydata` VALUES ('34', 'YYZX05248', '16-Feb', '3530.5242', '115.1836', '30.6513', '0.2188', '0.0907');
INSERT INTO `monthlydata` VALUES ('35', 'YYZX05248', '16-Mar', '3588.7958', '162.4853', '22.0869', '0.2360', '0.1426');
INSERT INTO `monthlydata` VALUES ('36', 'YYZX05248', '16-Apr', '2388.3868', '169.5425', '14.0872', '0.3510', '0.1553');
INSERT INTO `monthlydata` VALUES ('37', 'YYZX05248', '16-May', '3995.9703', '182.0411', '21.9509', '0.3126', '0.2061');
INSERT INTO `monthlydata` VALUES ('38', 'YYZX05248', '16-Jun', '4126.8522', '186.5969', '22.1164', '0.3515', '0.5303');
INSERT INTO `monthlydata` VALUES ('39', 'YYZX05248', '16-Jul', '3027.1166', '162.6536', '18.6108', '0.3319', '0.1671');
INSERT INTO `monthlydata` VALUES ('40', 'YYZX05248', '16-Aug', '3239.1667', '177.7592', '18.2222', '0.3604', '0.1713');
INSERT INTO `monthlydata` VALUES ('41', 'YYZZ02013', '15-Nov', '11984.8548', '198.1869', '60.4725', '0.0157', '2.6595');
INSERT INTO `monthlydata` VALUES ('42', 'YYZZ02013', '15-Dec', '211.9031', '116.9589', '1.8118', '0.0118', '0.0817');
INSERT INTO `monthlydata` VALUES ('43', 'YYZZ02013', '16-Jan', '592.5381', '228.6019', '2.5920', '0.0061', '0.0029');
INSERT INTO `monthlydata` VALUES ('44', 'YYZZ02013', '16-Feb', '395.5483', '252.9558', '1.5637', '0.0023', '0.0016');
INSERT INTO `monthlydata` VALUES ('45', 'YYZZ02013', '16-Mar', '572.1234', '181.7739', '3.1474', '0.0055', '0.0020');
INSERT INTO `monthlydata` VALUES ('46', 'YYZZ02013', '16-Apr', '1081.1006', '309.9108', '3.4884', '0.0146', '0.2317');
INSERT INTO `monthlydata` VALUES ('47', 'YYZZ02013', '16-May', '1322.4536', '302.0939', '4.3776', '0.0082', '0.1702');
INSERT INTO `monthlydata` VALUES ('48', 'YYZZ02013', '16-Jun', '909.6922', '257.6928', '3.5301', '0.0144', '0.1680');
INSERT INTO `monthlydata` VALUES ('49', 'YYZZ02013', '16-Jul', '1257.7022', '274.9461', '4.5744', '0.0072', '1.4170');
INSERT INTO `monthlydata` VALUES ('50', 'YYZZ02013', '16-Aug', '1037.3776', '252.0378', '4.1160', '0.0079', '0.8320');

-- ----------------------------
-- Table structure for `totaldata`
-- ----------------------------
DROP TABLE IF EXISTS `totaldata`;
CREATE TABLE `totaldata` (
  `ID` varchar(9) DEFAULT NULL,
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
  `Speed210` int(1) DEFAULT NULL,
  `Speed215` decimal(5,4) DEFAULT NULL,
  `Speed220` decimal(5,4) DEFAULT NULL,
  `Speed225` decimal(5,4) DEFAULT NULL,
  `Speed230` decimal(5,4) DEFAULT NULL,
  `Speed235` decimal(5,4) DEFAULT NULL,
  `Speed240` decimal(5,4) DEFAULT NULL,
  `Speed245` decimal(5,4) DEFAULT NULL,
  `Speed250` int(1) DEFAULT NULL,
  `Speed255` int(1) DEFAULT NULL,
  `Speed260` int(1) DEFAULT NULL,
  `Speed265` int(1) DEFAULT NULL,
  `Speed270` decimal(5,4) DEFAULT NULL,
  `Speed275` int(1) DEFAULT NULL,
  `Speed280` int(1) DEFAULT NULL,
  `Speed285` decimal(5,4) DEFAULT NULL,
  `Speed290` int(1) DEFAULT NULL,
  `Speed295` int(1) DEFAULT NULL,
  `Speed300` int(1) DEFAULT NULL,
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
  `Acc25` int(1) DEFAULT NULL,
  `Acc25.5` decimal(5,4) DEFAULT NULL,
  `Acc26` decimal(5,4) DEFAULT NULL,
  `Acc26.5` decimal(5,4) DEFAULT NULL,
  `Acc27` decimal(5,4) DEFAULT NULL,
  `Acc27.5` int(1) DEFAULT NULL,
  `Acc28` decimal(5,4) DEFAULT NULL,
  `Acc28.5` decimal(5,4) DEFAULT NULL,
  `Acc29` int(1) DEFAULT NULL,
  `Acc29.5` decimal(5,4) DEFAULT NULL,
  `Acc30` int(1) DEFAULT NULL,
  `Dcc0.5` decimal(5,4) DEFAULT NULL,
  `Dcc1` decimal(5,4) DEFAULT NULL,
  `Dcc1.5` decimal(5,4) DEFAULT NULL,
  `Dcc2` decimal(5,4) DEFAULT NULL,
  `Dcc2.5` decimal(5,4) DEFAULT NULL,
  `Dcc3` decimal(5,4) DEFAULT NULL,
  `Dcc3.5` decimal(5,4) DEFAULT NULL,
  `Dcc4` decimal(4,3) DEFAULT NULL,
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
  `Dcc10` int(1) DEFAULT NULL,
  `Dcc10.5` decimal(5,4) DEFAULT NULL,
  `Dcc11` decimal(5,4) DEFAULT NULL,
  `Dcc11.5` decimal(5,4) DEFAULT NULL,
  `Dcc12` decimal(5,4) DEFAULT NULL,
  `Dcc12.5` decimal(5,4) DEFAULT NULL,
  `Dcc13` decimal(5,4) DEFAULT NULL,
  `Dcc13.5` int(1) DEFAULT NULL,
  `Dcc14` int(1) DEFAULT NULL,
  `Dcc14.5` decimal(5,4) DEFAULT NULL,
  `Dcc15` decimal(5,4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of totaldata
-- ----------------------------
INSERT INTO `totaldata` VALUES ('YYZX03810', '1071', '126.0608', '4157.8833', '7.1478', '0.7018', '0.0895', '0.0225', '12.6061', '415.7883', '0.0190', '0.2184', '0.4031', '0.2998', '0.0596', '0.0063', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '35.1527', '77.5163', '88.4156', '107.6426', '127.4907', '0.7349', '0.3286', '0.4690', '0.9150', '6.1086', '14.1422', '0.8084', '-0.0849', '-0.1714', '-0.2485', '-0.5091', '-2.0086', '0.7588', '0.0865', '0.1438', '0.0000', '0.1711', '0.1005', '0.0818', '0.0916', '0.1068', '0.0934', '0.0749', '0.0580', '0.0457', '0.0381', '0.0326', '0.0344', '0.0332', '0.0324', '0.0332', '0.0287', '0.0269', '0.0239', '0.0184', '0.0142', '0.0095', '0.0080', '0.0055', '0.0029', '0.0021', '0.0015', '0.0011', '0.0001', '0.0003', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0.0000', '0', '0', '0.0000', '0', '0', '0', '0.5039', '0.1318', '0.0594', '0.0594', '0.0388', '0.0310', '0.0129', '0.0155', '0.0052', '0.0181', '0.0155', '0.0026', '0.0181', '0.0026', '0.0052', '0.0078', '0.0052', '0.0052', '0.0000', '0.0129', '0.0026', '0.0155', '0.0052', '0.0000', '0.0052', '0.0000', '0.0052', '0.0026', '0.0000', '0.0026', '0.0026', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0026', '0.0000', '0.0026', '0.0000', '0', '0.0000', '0.0026', '0', '0.0000', '0', '0.6765', '0.2059', '0.0294', '0.0588', '0.0000', '0.0000', '0.0294', '0.000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '0.0000');
INSERT INTO `totaldata` VALUES ('YYZX05028', '3222', '1216.7886', '14767.3837', '4.0790', '0.3257', '0.2023', '0.0179', '121.6789', '1476.7384', '0.0705', '0.2534', '0.2267', '0.1285', '0.3209', '0.0558', '0.0306', '0.0200', '0.0019', '0.0003', '0.0000', '33.8423', '72.4663', '119.7196', '119.7196', '153.5773', '0.7031', '0.1088', '0.2853', '0.4252', '0.7240', '1.1134', '0.2428', '-0.0726', '-0.1655', '-0.2061', '-0.3109', '-0.5919', '0.7805', '0.7986', '0.5496', '0.0047', '0.8141', '0.1977', '0.0582', '0.0653', '0.0661', '0.0668', '0.0624', '0.0608', '0.0629', '0.0572', '0.0533', '0.0481', '0.0382', '0.0307', '0.0232', '0.0161', '0.0123', '0.0104', '0.0077', '0.0089', '0.0086', '0.0072', '0.0099', '0.0100', '0.0087', '0.0056', '0.0019', '0.0005', '0.0002', '0.0003', '0.0001', '0.0001', '0.0001', '0.0000', '0.0001', '0.0001', '0.0002', '0.0002', '0.0000', '0.0000', '0.0000', '0.0001', '0.0000', '0', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0.0000', '0', '0', '0.0000', '0', '0', '0', '0.9063', '0.0859', '0.0000', '0.0020', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0020', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0', '0.0000', '0', '0.7857', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0714', '0.0000', '0.0000', '0', '0', '0.0000', '0.0000');
INSERT INTO `totaldata` VALUES ('YYZX04777', '3410', '495.7939', '14734.9237', '8.0859', '0.7966', '0.0610', '0.0278', '49.5794', '1473.4924', '0.0493', '0.1416', '0.2099', '0.3042', '0.2950', '0.0132', '0.0059', '0.0032', '0.0062', '0.0023', '0.0003', '36.8106', '106.5673', '116.4034', '125.6251', '139.8144', '0.7724', '0.2931', '0.4093', '0.8689', '4.8228', '18.9308', '0.7319', '-0.0927', '-0.1752', '-0.2605', '-0.7007', '-3.8072', '0.7445', '0.2686', '0.5481', '0.0054', '0.8792', '0.1682', '0.0977', '0.0935', '0.0897', '0.0778', '0.0700', '0.0558', '0.0414', '0.0329', '0.0277', '0.0226', '0.0159', '0.0094', '0.0078', '0.0071', '0.0077', '0.0084', '0.0105', '0.0122', '0.0157', '0.0202', '0.0215', '0.0287', '0.0305', '0.0162', '0.0068', '0.0025', '0.0006', '0.0002', '0.0001', '0.0000', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0002', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0.0001', '0', '0', '0.0000', '0', '0', '0', '0.4954', '0.1749', '0.0749', '0.0496', '0.0294', '0.0244', '0.0118', '0.0126', '0.0050', '0.0067', '0.0093', '0.0076', '0.0076', '0.0084', '0.0084', '0.0050', '0.0118', '0.0017', '0.0050', '0.0034', '0.0034', '0.0050', '0.0042', '0.0000', '0.0034', '0.0025', '0.0042', '0.0000', '0.0017', '0.0017', '0.0017', '0.0008', '0.0017', '0.0008', '0.0008', '0.0008', '0.0017', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0000', '0.0000', '0.0000', '0.0008', '0.0008', '0.0000', '0.0008', '0', '0.0008', '0.0008', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0', '0.0067', '0', '0.6520', '0.1324', '0.0637', '0.0392', '0.0441', '0.0098', '0.0147', '0.000', '0.0000', '0.0147', '0.0049', '0.0049', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0049', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0049', '0.0000', '0.0000', '0', '0', '0.0000', '0.0049');
INSERT INTO `totaldata` VALUES ('YYZX05248', '10179', '1309.9156', '27298.0271', '7.5091', '0.7406', '0.0778', '0.0317', '130.9916', '2729.8027', '0.0182', '0.0873', '0.3337', '0.2720', '0.2888', '0.0035', '0.0003', '0.0001', '0.0001', '0.0000', '0.0000', '22.7054', '55.9798', '70.6070', '99.3245', '202.4129', '0.3949', '0.2929', '0.3621', '0.6845', '3.7927', '29.5547', '0.7315', '-0.3348', '-0.2169', '-0.3520', '-1.7339', '-17.1649', '0.2267', '0.8472', '0.9367', '0.0000', '0.1711', '0.2589', '0.1381', '0.1058', '0.0872', '0.0738', '0.0601', '0.0477', '0.0395', '0.0341', '0.0273', '0.0235', '0.0209', '0.0173', '0.0145', '0.0111', '0.0085', '0.0069', '0.0062', '0.0051', '0.0041', '0.0029', '0.0017', '0.0007', '0.0005', '0.0005', '0.0003', '0.0003', '0.0002', '0.0002', '0.0001', '0.0002', '0.0002', '0.0002', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0', '0.0000', '0.0000', '0.0001', '0.0001', '0.0001', '0.0001', '0.0001', '0', '0', '0', '0', '0.0000', '0', '0', '0.0001', '0', '0', '0', '0.4982', '0.1577', '0.0812', '0.0488', '0.0372', '0.0234', '0.0162', '0.0141', '0.0100', '0.0100', '0.0074', '0.0076', '0.0086', '0.0045', '0.0055', '0.0031', '0.0024', '0.0036', '0.0007', '0.0043', '0.0021', '0.0043', '0.0033', '0.0021', '0.0024', '0.0012', '0.0019', '0.0019', '0.0005', '0.0024', '0.0002', '0.0017', '0.0029', '0.0012', '0.0010', '0.0012', '0.0002', '0.0002', '0.0005', '0.0007', '0.0005', '0.0002', '0.0007', '0.0007', '0.0014', '0.0007', '0.0007', '0.0007', '0.0005', '0', '0.0005', '0.0000', '0.0014', '0.0002', '0', '0.0002', '0.0005', '0', '0.0145', '0', '0.4912', '0.1837', '0.0726', '0.0556', '0.0335', '0.0246', '0.0158', '0.012', '0.0158', '0.0082', '0.0082', '0.0057', '0.0051', '0.0032', '0.0044', '0.0051', '0.0051', '0.0038', '0.0019', '0', '0.0013', '0.0019', '0.0019', '0.0025', '0.0013', '0.0013', '0', '0', '0.0025', '0.0322');
INSERT INTO `totaldata` VALUES ('YYZZ02013', '1255', '860.6675', '7315.5745', '0.6363', '0.0602', '0.2819', '0.0085', '86.0667', '731.5575', '0.0736', '0.1693', '0.2342', '0.1707', '0.3522', '0.0506', '0.0100', '0.0038', '0.0004', '0.0000', '0.0000', '3.5710', '10.2755', '23.7315', '53.3117', '91.1786', '0.0504', '0.0090', '0.0087', '0.0200', '0.0614', '2.0717', '0.0792', '-0.4438', '-0.0104', '-0.0192', '-0.0447', '-50.7044', '0.0833', '0.5472', '0.2389', '0.0020', '0.4346', '0.8618', '0.0368', '0.0232', '0.0173', '0.0146', '0.0113', '0.0083', '0.0058', '0.0051', '0.0036', '0.0033', '0.0019', '0.0013', '0.0009', '0.0013', '0.0009', '0.0007', '0.0006', '0.0006', '0.0002', '0.0000', '0.0001', '0.0001', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0', '0', '0.0000', '0', '0', '0.0000', '0', '0', '0', '0.2778', '0.1389', '0.0556', '0.1667', '0.0833', '0.0833', '0.0556', '0.0278', '0.0000', '0.0556', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0278', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0', '0.0000', '0', '0.0000', '1.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0.0000', '0', '0', '0.0000', '0.0000');
