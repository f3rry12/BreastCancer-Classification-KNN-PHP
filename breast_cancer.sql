-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 25, 2018 at 01:31 PM
-- Server version: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pengpol`
--

-- --------------------------------------------------------

--
-- Table structure for table `breast_cancer`
--

CREATE TABLE `breast_cancer` (
  `Age` int(11) NOT NULL,
  `BMI` decimal(11,8) NOT NULL,
  `Glucose` int(11) NOT NULL,
  `Insulin` decimal(6,3) NOT NULL,
  `HOMA` decimal(11,9) NOT NULL,
  `Leptin` decimal(7,4) NOT NULL,
  `Adiponectin` decimal(9,6) NOT NULL,
  `Resistin` decimal(8,5) NOT NULL,
  `MCP1` decimal(8,3) NOT NULL,
  `Classification` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `breast_cancer`
--

INSERT INTO `breast_cancer` (`Age`, `BMI`, `Glucose`, `Insulin`, `HOMA`, `Leptin`, `Adiponectin`, `Resistin`, `MCP1`, `Classification`) VALUES
(48, '23.50000000', 70, '2.707', '0.467408667', '8.8071', '9.702400', '7.99585', '417.114', 1),
(83, '20.69049454', 92, '3.115', '0.706897333', '8.8438', '5.429285', '4.06405', '468.786', 1),
(82, '23.12467037', 91, '4.498', '1.009651067', '17.9393', '22.432040', '9.27715', '554.697', 1),
(68, '21.36752137', 77, '3.226', '0.612724933', '9.8827', '7.169560', '12.76600', '928.220', 1),
(86, '21.11111111', 92, '3.549', '0.805386400', '6.6994', '4.819240', '10.57635', '773.920', 1),
(49, '22.85445769', 92, '3.226', '0.732086933', '6.8317', '13.679750', '10.31760', '530.410', 1),
(89, '22.70000000', 77, '4.690', '0.890787333', '6.9640', '5.589865', '12.93610', '1256.083', 1),
(76, '23.80000000', 118, '6.470', '1.883201333', '4.3110', '13.251320', '5.10420', '280.694', 1),
(73, '22.00000000', 97, '3.350', '0.801543333', '4.4700', '10.358725', '6.28445', '136.855', 1),
(75, '23.00000000', 83, '4.952', '1.013839467', '17.1270', '11.578990', '7.09130', '318.302', 1),
(34, '21.47000000', 78, '3.469', '0.667435600', '14.5700', '13.110000', '6.92000', '354.600', 1),
(29, '23.01000000', 82, '5.663', '1.145436133', '35.5900', '26.720000', '4.58000', '174.800', 1),
(25, '22.86000000', 82, '4.090', '0.827270667', '20.4500', '23.670000', '5.14000', '313.730', 1),
(24, '18.67000000', 88, '6.107', '1.330000000', '8.8800', '36.060000', '6.85000', '632.220', 1),
(38, '23.34000000', 75, '5.782', '1.069670000', '15.2600', '17.950000', '9.35000', '165.020', 1),
(44, '20.76000000', 86, '7.553', '1.600000000', '14.0900', '20.320000', '7.64000', '63.610', 1),
(47, '22.03000000', 84, '2.869', '0.590000000', '26.6500', '38.040000', '3.32000', '191.720', 1),
(61, '32.03895937', 85, '18.077', '3.790144333', '30.7729', '7.780255', '13.68392', '444.395', 1),
(64, '34.52972280', 95, '4.427', '1.037393667', '21.2117', '5.462620', '6.70188', '252.449', 1),
(32, '36.51263743', 87, '14.026', '3.009979600', '49.3727', '5.100000', '17.10223', '588.460', 1),
(36, '28.57667585', 86, '4.345', '0.921719333', '15.1248', '8.600000', '9.15390', '534.224', 1),
(34, '31.97501487', 87, '4.530', '0.972138000', '28.7502', '7.642760', '5.62592', '572.783', 1),
(29, '32.27078777', 84, '5.810', '1.203832000', '45.6196', '6.209635', '24.60330', '904.981', 1),
(35, '30.27681661', 84, '4.376', '0.906707200', '39.2134', '9.048185', '16.43706', '733.797', 1),
(54, '30.48315806', 90, '5.537', '1.229214000', '12.3310', '9.731380', '10.19299', '1227.910', 1),
(45, '37.03560819', 83, '6.760', '1.383997333', '39.9802', '4.617125', '8.70448', '586.173', 1),
(50, '38.57875854', 106, '6.703', '1.752611067', '46.6401', '4.667645', '11.78388', '887.160', 1),
(66, '31.44654088', 90, '9.245', '2.052390000', '45.9624', '10.355260', '23.38190', '1102.110', 1),
(35, '35.25076110', 90, '6.817', '1.513374000', '50.6094', '6.966895', '22.03703', '667.928', 1),
(36, '34.17489000', 80, '6.590', '1.300426667', '10.2809', '5.065915', '15.72187', '581.313', 1),
(66, '36.21227888', 101, '15.533', '3.869788067', '74.7069', '7.539550', '22.32024', '864.968', 1),
(53, '36.79016620', 101, '10.175', '2.534931667', '27.1841', '20.030000', '10.26309', '695.754', 1),
(28, '35.85581466', 87, '8.576', '1.840409600', '68.5102', '4.794200', '21.44366', '358.624', 1),
(43, '34.42217362', 89, '23.194', '5.091856133', '31.2128', '8.300955', '6.71026', '960.246', 1),
(51, '27.68877813', 77, '3.855', '0.732193000', '20.0920', '3.192090', '10.37518', '473.859', 1),
(67, '29.60676726', 79, '5.819', '1.133929133', '21.9033', '2.194280', '4.20750', '585.307', 1),
(66, '31.23858980', 82, '4.181', '0.845676933', '16.2247', '4.267105', '3.29175', '634.602', 1),
(69, '35.09270153', 101, '5.646', '1.406606800', '83.4821', '6.796985', '82.10000', '263.499', 1),
(60, '26.34929208', 103, '5.138', '1.305394533', '24.2998', '2.194280', '20.25350', '378.996', 1),
(77, '35.58792924', 76, '3.881', '0.727558133', '21.7863', '8.125550', '17.26150', '618.272', 1),
(76, '29.21840760', 83, '5.376', '1.100646400', '28.5620', '7.369960', '8.04375', '698.789', 1),
(76, '27.20000000', 94, '14.070', '3.262364000', '35.8910', '9.346630', '8.41560', '377.227', 1),
(75, '27.30000000', 85, '5.197', '1.089637667', '10.3900', '9.000805', '7.57670', '335.393', 1),
(69, '32.50000000', 93, '5.430', '1.245642000', '15.1450', '11.787960', '11.78796', '270.142', 1),
(71, '30.30000000', 102, '8.340', '2.098344000', '56.5020', '8.130000', '4.29890', '200.976', 1),
(66, '27.70000000', 90, '6.042', '1.341324000', '24.8460', '7.652055', '6.70520', '225.880', 1),
(75, '25.70000000', 94, '8.079', '1.873250800', '65.9260', '3.741220', '4.49685', '206.802', 1),
(78, '25.30000000', 60, '3.508', '0.519184000', '6.6330', '10.567295', '4.66380', '209.749', 1),
(69, '29.40000000', 89, '10.704', '2.349884800', '45.2720', '8.286300', '4.53000', '215.769', 1),
(85, '26.60000000', 96, '4.462', '1.056601600', '7.8500', '7.931700', '9.61350', '232.006', 1),
(76, '27.10000000', 110, '26.211', '7.111918000', '21.7780', '4.935635', '8.49395', '45.843', 1),
(77, '25.90000000', 85, '4.580', '0.960273333', '13.7400', '9.753260', '11.77400', '488.829', 1),
(45, '21.30394858', 102, '13.852', '3.485163200', '7.6476', '21.056625', '23.03408', '552.444', 2),
(45, '20.82999519', 74, '4.560', '0.832352000', '7.7529', '8.237405', '28.03230', '382.955', 2),
(49, '20.95660750', 94, '12.305', '2.853119333', '11.2406', '8.412175', '23.11770', '573.630', 2),
(34, '24.24242424', 92, '21.699', '4.924226400', '16.7353', '21.823745', '12.06534', '481.949', 2),
(42, '21.35991456', 93, '2.999', '0.687970600', '19.0826', '8.462915', '17.37615', '321.919', 2),
(68, '21.08281329', 102, '6.200', '1.559920000', '9.6994', '8.574655', '13.74244', '448.799', 2),
(51, '19.13265306', 93, '4.364', '1.001101600', '11.0816', '5.807620', '5.57055', '90.600', 2),
(62, '22.65625000', 92, '3.482', '0.790181867', '9.8648', '11.236235', '10.69548', '703.973', 2),
(38, '22.49963710', 95, '5.261', '1.232827667', '8.4380', '4.771920', '15.73606', '199.055', 2),
(69, '21.51385851', 112, '6.683', '1.846290133', '32.5800', '4.138025', '15.69876', '713.239', 2),
(49, '21.36752137', 78, '2.640', '0.507936000', '6.3339', '3.886145', '22.94254', '737.672', 2),
(51, '22.89281998', 103, '2.740', '0.696142667', '8.0163', '9.349775', '11.55492', '359.232', 2),
(59, '22.83287935', 98, '6.862', '1.658774133', '14.9037', '4.230105', '8.20490', '355.310', 2),
(45, '23.14049587', 116, '4.902', '1.402625600', '17.9973', '4.294705', '5.26330', '518.586', 2),
(54, '24.21875000', 86, '3.730', '0.791257333', '8.6874', '3.705230', '10.34455', '635.049', 2),
(64, '22.22222222', 98, '5.700', '1.377880000', '12.1905', '4.783985', '13.91245', '395.976', 2),
(46, '20.83000000', 88, '3.420', '0.742368000', '12.8700', '18.550000', '13.56000', '301.210', 2),
(44, '19.56000000', 114, '15.890', '4.468268000', '13.0800', '20.370000', '4.62000', '220.660', 2),
(45, '20.26000000', 92, '3.440', '0.780650667', '7.6500', '16.670000', '7.84000', '193.870', 2),
(44, '24.74000000', 106, '58.460', '15.285341330', '18.1600', '16.100000', '5.31000', '244.750', 2),
(51, '18.37000000', 105, '6.030', '1.561770000', '9.6200', '12.760000', '3.21000', '513.660', 2),
(72, '23.62000000', 105, '4.420', '1.144780000', '21.7800', '17.860000', '4.82000', '195.940', 2),
(46, '22.21000000', 86, '36.940', '7.836205333', '10.1600', '9.760000', '5.68000', '312.000', 2),
(43, '26.56250000', 101, '10.555', '2.629602333', '9.8000', '6.420295', '16.10000', '806.724', 2),
(55, '31.97501487', 92, '16.635', '3.775036000', '37.2234', '11.018455', '7.16514', '483.377', 2),
(43, '31.25000000', 103, '4.328', '1.099600533', '25.7816', '12.718960', '38.65310', '775.322', 2),
(86, '26.66666667', 201, '41.611', '20.630733800', '47.6470', '5.357135', '24.37010', '1698.440', 2),
(41, '26.67276330', 97, '22.033', '5.271762467', '44.7059', '13.494865', '27.83250', '783.796', 2),
(59, '28.67262608', 77, '3.188', '0.605507467', '17.0220', '16.440480', '31.69040', '910.489', 2),
(81, '31.64036818', 100, '9.669', '2.385020000', '38.8066', '10.636525', '29.55830', '426.175', 2),
(48, '32.46191136', 99, '28.677', '7.002923400', '46.0760', '21.570000', '10.15726', '738.034', 2),
(71, '25.51020408', 112, '10.395', '2.871792000', '19.0653', '5.486100', '42.74470', '799.898', 2),
(42, '29.29687500', 98, '4.172', '1.008511467', '12.2617', '6.695585', '53.67170', '1041.843', 2),
(65, '29.66654800', 85, '14.649', '3.071407000', '26.5166', '7.282870', '19.46324', '1698.440', 2),
(48, '28.12500000', 90, '2.540', '0.563880000', '15.5325', '10.222310', '16.11032', '1698.440', 2),
(85, '27.68877813', 196, '51.814', '25.050341870', '70.8824', '7.901685', '55.21530', '1078.359', 2),
(48, '31.25000000', 199, '12.162', '5.969920400', '18.1314', '4.104105', '53.63080', '1698.440', 2),
(58, '29.15451895', 139, '16.582', '5.685415067', '22.8884', '10.262660', '13.97399', '923.886', 2),
(40, '30.83653053', 128, '41.894', '13.227332270', '31.0385', '6.160995', '17.55503', '638.261', 2),
(82, '31.21748179', 100, '18.077', '4.458993333', '31.6453', '9.923650', '19.94687', '994.316', 2),
(52, '30.80124870', 87, '30.212', '6.483495200', '29.2739', '6.268540', '24.24591', '764.667', 2),
(49, '32.46191136', 134, '24.887', '8.225983067', '42.3914', '10.793940', '5.76800', '656.393', 2),
(60, '31.23140988', 131, '30.130', '9.736007333', '37.8430', '8.404430', '11.50005', '396.021', 2),
(49, '29.77777778', 70, '8.396', '1.449709333', '51.3387', '10.731740', '20.76801', '602.486', 2),
(44, '27.88761707', 99, '9.208', '2.248593600', '12.6757', '5.478170', '23.03306', '407.206', 2),
(40, '27.63605442', 103, '2.432', '0.617890133', '14.3224', '6.783870', '26.01360', '293.123', 2),
(71, '27.91551882', 104, '18.200', '4.668906667', '53.4997', '1.656020', '49.24184', '256.001', 2);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
