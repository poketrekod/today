-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               5.6.17-log - MySQL Community Server (GPL)
-- Server OS:                    Win32
-- HeidiSQL Version:             9.3.0.4984
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping database structure for demoapp
CREATE DATABASE IF NOT EXISTS `demoapp` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `demoapp`;


-- Dumping structure for table demoapp.customers
CREATE TABLE IF NOT EXISTS `customers` (
  `cust_id` int(11) NOT NULL AUTO_INCREMENT,
  `cust_fname` varchar(50) NOT NULL,
  `cust_lname` varchar(50) NOT NULL,
  `cust_dob` date NOT NULL,
  `cust_phone` varchar(50) NOT NULL,
  `cust_city` varchar(50) NOT NULL,
  PRIMARY KEY (`cust_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 COMMENT='This table stores the information about our customers';

-- Dumping data for table demoapp.customers: ~6 rows (approximately)
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` (`cust_id`, `cust_fname`, `cust_lname`, `cust_dob`, `cust_phone`, `cust_city`) VALUES
	(1, 'Olawole', 'Ajao', '1990-03-07', '080123456', 'Lagos'),
	(2, 'Saheed', 'Balogun', '1998-03-07', '0802345687', 'Ibadan'),
	(3, 'Abiola', 'Lawal', '2007-03-07', '0236789997', 'Lagos'),
	(4, 'Oluwole', 'Idowu', '2009-03-07', '0803467778', 'Akure'),
	(5, 'Tola', 'Oni', '1983-03-07', '0804566456', 'Ibadan'),
	(6, 'Tola', 'Oni', '2000-03-07', '0803564588', 'Ondo');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;


-- Dumping structure for table demoapp.customer_orders
CREATE TABLE IF NOT EXISTS `customer_orders` (
  `custord_id` int(11) NOT NULL AUTO_INCREMENT,
  `custord_date` timestamp NOT NULL,
  `custord_amt` float NOT NULL,
  `custord_status` tinyint(4) NOT NULL DEFAULT '0' COMMENT '=1 if paid, 0 if not paid',
  `custord_custid` int(11) NOT NULL,
  PRIMARY KEY (`custord_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1 COMMENT='This table stores the orders made by the customers';

-- Dumping data for table demoapp.customer_orders: ~9 rows (approximately)
/*!40000 ALTER TABLE `customer_orders` DISABLE KEYS */;
INSERT INTO `customer_orders` (`custord_id`, `custord_date`, `custord_amt`, `custord_status`, `custord_custid`) VALUES
	(1, '2017-01-07 11:55:05', 2000, 1, 1),
	(2, '2017-03-02 11:55:24', 1000, 1, 2),
	(3, '2017-03-04 11:55:43', 6000, 1, 1),
	(4, '2017-03-04 11:55:57', 2300, 1, 3),
	(5, '2017-03-05 11:56:09', 1500, 0, 2),
	(6, '2017-03-06 11:56:19', 600, 0, 4),
	(7, '2017-03-07 11:57:27', 4900, 1, 5),
	(8, '2017-02-07 11:57:47', 7230, 1, 3),
	(9, '2017-01-07 12:12:09', 2750, 1, 6);
/*!40000 ALTER TABLE `customer_orders` ENABLE KEYS */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
