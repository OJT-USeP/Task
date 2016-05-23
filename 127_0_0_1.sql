-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 23, 2016 at 09:45 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `dadadsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tblaccount`
--

CREATE TABLE IF NOT EXISTS `tblaccount` (
  `account_no` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`account_no`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblaccount`
--

INSERT INTO `tblaccount` (`account_no`, `user_id`, `username`, `password`) VALUES
(1, 444, 's', 's'),
(2, 111, 'we', 'we'),
(3, 555, 'x', 'y'),
(4, 123, 'csoriben', 'csoriben');

-- --------------------------------------------------------

--
-- Table structure for table `tblproduct`
--

CREATE TABLE IF NOT EXISTS `tblproduct` (
  `prod_no` int(10) NOT NULL AUTO_INCREMENT,
  `prod_id` int(15) NOT NULL,
  `prod_name` varchar(100) NOT NULL,
  `prod_descr` text NOT NULL,
  `prod_cat` varchar(100) NOT NULL,
  `prod_price` float NOT NULL,
  `prod_quan` int(10) NOT NULL,
  `date_added` datetime NOT NULL,
  PRIMARY KEY (`prod_no`),
  UNIQUE KEY `prod_id` (`prod_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `tblproduct`
--

INSERT INTO `tblproduct` (`prod_no`, `prod_id`, `prod_name`, `prod_descr`, `prod_cat`, `prod_price`, `prod_quan`, `date_added`) VALUES
(3, 333, 'Popcorn', 'asadsasdasdasd', 'Dessert Sprinkler', 100, 50, '2014-02-05 00:28:15'),
(4, 111, 'Pandan Juice', 'sdsfsfsfsm,fns,nf', 'Juice', 150, 100, '2014-02-05 02:20:54'),
(5, 222, 'Candy', 'asda,dmaksdadmklj', 'Dessert Sprinkler', 35, 100, '2014-02-05 02:21:28'),
(6, 444, 'Kape', 'asdasfsdf', 'Juice', 15, 144, '2014-02-05 02:46:23'),
(7, 777, 'poto', 'asdasdasd', 'JunkFood', 40, 50, '2014-02-06 14:50:25'),
(8, 555, 'Orange Juice', 'sjdfsjdfjsdfjsdhfjsdfjsdgfjshgfjhsdfsbdfhsbdfhjsbdfjhsdbfjhsbdfjhsbdfhsdbfhsdbfsjdbfsdhjbfsdbfshjdbfjshdbfhsdbfjshdbfjsdhbfjhdsbfjshdbfsdhf\r\nskjdhfjksdhfsdhfskdhfsdkjhfksdjhfskdjhfsdjhfsdkjhfskjdhfdskjhfskdjhfskdjhfksdjhfksjdhfsdkjhfskf', 'Juice', 69.9, 60, '2014-02-06 21:17:37'),
(9, 700, 'fingers', '2 finger', 'Juice', 300, 10, '2016-03-05 18:01:05'),
(10, 900, 'nigga', 'this is a cute baby', 'JunkFood', 10, 50, '2016-03-05 18:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `user_no` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(15) NOT NULL,
  `fname` varchar(50) NOT NULL,
  `mname` varchar(50) NOT NULL,
  `lname` varchar(50) NOT NULL,
  `no_street` varchar(50) NOT NULL,
  `city` varchar(50) NOT NULL,
  `contact_no` bigint(15) NOT NULL,
  `dob` date NOT NULL,
  `age` int(3) NOT NULL,
  `gender` varchar(6) NOT NULL,
  `user_type` varchar(50) NOT NULL,
  PRIMARY KEY (`user_no`),
  UNIQUE KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`user_no`, `user_id`, `fname`, `mname`, `lname`, `no_street`, `city`, `contact_no`, `dob`, `age`, `gender`, `user_type`) VALUES
(3, 222, 'wawx', 'wowx', 'asdx', 'www', 'sss', 1231231, '2002-02-03', 20, '', ''),
(4, 333, 'waw', 'wow', 'asd', 'www', 'xxxxxx', 1231231, '2002-02-03', 20, 'Male', ''),
(6, 111, 'asd', 'Gwapo', 'ss', '123 Magallanes Street', 'Surigao City', 1111111111, '2002-02-03', 14, 'Female', ''),
(7, 555, 'we', 'we', 'we', 'asd', 'asd', 123, '2002-12-12', 12, 'Female', 'Clerk'),
(8, 123, 'kyle', 'aseoche', 'soriben', '#100', 'Davao City', 12345, '0000-00-00', 18, 'Male', 'Clerk');
--
-- Database: `data_justin`
--

-- --------------------------------------------------------

--
-- Table structure for table `my_table`
--

CREATE TABLE IF NOT EXISTS `my_table` (
  `name` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `db_apparel`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `date`, `date_updated`) VALUES
(1, 'Men', '2016-05-10 02:49:17', '2016-05-10 02:49:17'),
(2, 'Women', '2016-05-10 02:49:17', '2016-05-10 02:49:17'),
(3, 'Kids', '2016-05-10 02:49:17', '2016-05-10 02:49:17');

-- --------------------------------------------------------

--
-- Table structure for table `categories_type`
--

CREATE TABLE IF NOT EXISTS `categories_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `categories_type`
--

INSERT INTO `categories_type` (`id`, `name`, `date`, `date_updated`, `category_id`) VALUES
(1, 'Bottoms', '2016-05-10 02:52:21', '2016-05-10 02:52:21', 1),
(2, 'Footwear', '2016-05-10 02:52:21', '2016-05-10 02:52:21', 1),
(3, 'Tops', '2016-05-10 03:28:19', '2016-05-10 03:28:19', 1),
(4, 'Bottoms', '2016-05-10 07:39:47', '2016-05-10 07:39:47', 2),
(5, 'Footwear', '2016-05-10 07:39:47', '2016-05-10 07:39:47', 2),
(6, 'Tops', '2016-05-10 07:40:06', '2016-05-10 07:40:06', 2),
(7, 'Bottoms', '2016-05-10 07:40:55', '2016-05-10 07:40:55', 3),
(8, 'Footwear', '2016-05-10 07:40:55', '2016-05-10 07:40:55', 3),
(9, 'Tops', '2016-05-10 07:40:55', '2016-05-10 07:40:55', 3);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_item_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `quantiy` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `orders_detail`
--

CREATE TABLE IF NOT EXISTS `orders_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `category_type_id` int(11) NOT NULL,
  `product_type_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `total_amount` int(11) NOT NULL,
  `total_tax` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `products_item`
--

CREATE TABLE IF NOT EXISTS `products_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `product_type_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL DEFAULT '10',
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=82 ;

--
-- Dumping data for table `products_item`
--

INSERT INTO `products_item` (`id`, `product_type_id`, `name`, `price`, `tax`, `date`, `date_updated`) VALUES
(1, 1, 'Skinny Fit Jeans', 1567, 10, '2016-05-10 05:01:02', '2016-05-10 05:01:02'),
(2, 1, 'Slim White Jeans', 1267, 9, '2016-05-10 05:01:02', '2016-05-10 05:01:02'),
(3, 1, 'Tack Slim Jeans ', 1667, 10, '2016-05-10 05:01:02', '2016-05-10 05:01:02'),
(4, 2, 'Athletic Fit Pants 			', 2546, 16, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(5, 2, 'Slim Fit Trousers', 2553, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(6, 2, 'Straight Fit Pants ', 2543, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(7, 3, '7th-Avenue-Design-Studio-Pant-Modern-Fit-Straight-Leg', 1239, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(8, 3, 'Palazzo-Pant-Stripe	', 1453, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(9, 3, 'Palazzo-Pant-Stripe		', 1530, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(10, 4, '''Peace'' Sweatpants', 1009, 12, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(11, 4, 'Star Print Organic Cotton Capri Pants', 1233, 10, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(12, 4, '''Ballet Bunny'' Cotton Pants (2-Pack)', 1005, 11, '2016-05-10 05:06:51', '2016-05-10 05:06:51'),
(13, 5, 'CT Shorts', 1314, 10, '2016-05-10 05:13:08', '2016-05-10 05:13:08'),
(14, 5, 'Knit Track Shorts ', 1324, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(15, 5, 'Slim fit cut off Shorts ', 1334, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(16, 6, 'Lounge-Linen-Short-Stripe', 1120, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(17, 6, 'Soho-Jeans-Bowery-4-High-Waist-Short-Highland-Blue-Wash', 1022, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(18, 6, 'Soho-Jeans-Bowery-4-Patchwork-Short-Fearless-Blue-Wash	', 1339, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(19, 7, '''Eliminator'' HeatGear® Shorts ', 1230, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(20, 7, '''Finn'' Rolled Cuff Denim Shorts ', 1682, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(21, 7, '''Short ''n'' Sweet'' Floral Print Linen & Cotton Shorts', 1345, 10, '2016-05-10 05:17:36', '2016-05-10 05:17:36'),
(22, 3, '7th-Avenue-Design-Studio-Modern-Fit-Zip-Accent-Mini-Skirt-Optic', 1256, 10, '2016-05-10 05:21:52', '2016-05-10 05:21:52'),
(23, 0, '''Citizen'' Woven Chambray Skirt', 1653, 10, '2016-05-10 05:21:52', '2016-05-10 05:21:52'),
(24, 4, '7th-Avenue-Design-Studio-Pencil-Skirt-Modern-Fit', 1320, 10, '2016-05-10 05:24:31', '2016-05-10 05:24:31'),
(25, 4, '7th-Avenue-Design-Studio-Pencil-Skirt-Modern-Fit-Optic', 1566, 10, '2016-05-10 05:24:31', '2016-05-10 05:24:31'),
(26, 4, 'Birthday Tutu	', 1345, 10, '2016-05-10 05:24:31', '2016-05-10 05:24:31'),
(27, 4, 'Playa'' Skirt', 1234, 10, '2016-05-10 05:24:31', '2016-05-10 05:24:31'),
(29, 5, 'Birkenstock Essentials Arizona', 1770, 10, '2016-05-10 05:33:08', '2016-05-10 05:33:08'),
(30, 5, 'Rainbow 301Alts Sandal', 2581, 10, '2016-05-10 05:33:08', '2016-05-10 05:33:08'),
(31, 5, 'Givenchy Slide Sandal', 14948, 10, '2016-05-10 05:33:08', '2016-05-10 05:33:08'),
(32, 6, 'star wars flip flops', 1500, 10, '2016-05-10 05:33:08', '2016-05-10 05:33:08'),
(33, 6, 'top flip flops	', 1200, 10, '2016-05-10 05:33:08', '2016-05-10 05:33:08'),
(34, 6, 'top mix flip flops', 1280, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(35, 7, 'stefan janoski', 6577, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(36, 7, 'adidas stan smith luxe cork', 8769, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(37, 7, 'adidas yeezy boost	', 12100, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(38, 7, 'chuck taylor shoreline sneaker ', 5013, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(39, 7, 'chuck taylor shoreline sneaker (grey)', 5450, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(40, 7, 'ans authentic sneakers  	', 2480, 10, '2016-05-10 05:37:37', '2016-05-10 05:37:37'),
(41, 8, '''Elivait'' Sandal (Women)	', 6789, 10, '2016-05-10 05:41:12', '2016-05-10 05:41:12'),
(42, 8, 'sam edelman "gigi" sandal', 7344, 10, '2016-05-10 05:41:12', '2016-05-10 05:41:12'),
(43, 9, '''Roma'' Sandal	', 1567, 10, '2016-05-10 05:41:12', '2016-05-10 05:41:12'),
(44, 9, '''Crocband'' Slip-On	', 1577, 10, '2016-05-10 05:41:12', '2016-05-10 05:41:12'),
(45, 9, 'Minnie'' Sandal		', 979, 10, '2016-05-10 05:41:12', '2016-05-10 05:41:12'),
(46, 10, '''Sweetheart'' Sandal	', 1079, 10, '2016-05-10 05:42:20', '2016-05-10 05:42:20'),
(47, 10, '''Surfer'' Sandal	', 1179, 10, '2016-05-10 05:42:20', '2016-05-10 05:42:20'),
(48, 10, '''Minnie'' Sandal', 979, 10, '2016-05-10 05:42:20', '2016-05-10 05:42:20'),
(49, 11, 'Jack 26 Jones Grey Solid Slim Fit Casual Shirt 	', 1124, 10, '2016-05-10 05:46:31', '2016-05-10 05:46:31'),
(50, 11, 'Jack-26-Jones-Navy-Blue-Printed-Slim-Fit-Casual ', 1224, 10, '2016-05-10 05:46:31', '2016-05-10 05:46:31'),
(51, 11, 'Tommy-Hilfiger-Navy-Blue-Solid-Slim-Fit-Casual-Shirt ', 1024, 10, '2016-05-10 05:46:31', '2016-05-10 05:46:31'),
(52, 12, '''Pineapple Me'' Graphic T-Shirt 	', 999, 10, '2016-05-10 05:46:31', '2016-05-10 05:46:31'),
(53, 12, '''Match Play'' HeatGear® Polo		', 1265, 10, '2016-05-10 05:46:31', '2016-05-10 05:46:31'),
(54, 12, 'Lace Trim Crinkle Top	', 1200, 10, '2016-05-10 05:47:03', '2016-05-10 05:47:03'),
(55, 12, 'Tom-Tailor-Grey-Solid-Henley-Neck-T-Shirt 	', 999, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(56, 12, 'Tom-Tailor-Grey-Solid-V-Neck-T-Shirt', 899, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(57, 12, 'United-Colors-of-Benetton-White-Printed-Round ', 1099, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(58, 12, 'Lace-Up-Shirt-Dark-Marble-Wash', 1899, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(59, 12, 'Soho-Soft-Shirt-One-Pocket-Popover-Grand-Sapphire ', 1099, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(60, 12, 'Soho-Soft-Shirt-Short-Sleeve-Pinstripe', 1299, 10, '2016-05-10 05:51:12', '2016-05-10 05:51:12'),
(61, 13, 'Volcom ''Plasm'' Graphic Muscle Tank', 1621, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(62, 13, 'WeSC ''Nero'' Print Tank', 2128, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(63, 13, 'Vans ''Barnum'' Graphic Tank', 1417, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(64, 13, 'Onzie Mesh Inset Muscle Tee', 1976, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(65, 13, 'Ten Sixty Sherman ''Cancel My Subscription'' Tank', 1421, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(66, 13, 'O'' Neill ''America'' Glitter Graphic Tank', 1317, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(67, 13, 'Open Back Tee', 546, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(68, 13, 'Flutter Sleeve Graphic Tee', 587, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(69, 13, '''Movement'' Tank', 678, 10, '2016-05-10 05:54:22', '2016-05-10 05:54:22'),
(70, 14, 'IVY PARK Seamless Crop top 	', 1773, 10, '2016-05-10 05:55:53', '2016-05-10 05:55:53'),
(71, 14, 'Eliza J Scuba Crop Top', 4469, 10, '2016-05-10 05:55:53', '2016-05-10 05:55:53'),
(72, 14, 'BP Mock Neck Crop Tank', 810, 10, '2016-05-10 05:55:53', '2016-05-10 05:55:53'),
(73, 15, 'Embroidered Skater Dress ', 2314, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(74, 15, '''Mary Jane'' Fishnet Dress', 2651, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(75, 15, 'Sequin Bodice Dress', 3458, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(76, 16, 'BP Summers wedge sandal	', 2445, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(77, 16, 'Toms calypso canvas wedge', 2658, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(78, 16, '''Rianna'' Wedge Sandal (Women)', 4051, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(79, 17, '''Jefferson - Marbled'' Perforated Slip-On', 1980, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(80, 17, '''Marin'' Canvas Slip-On Sneaker', 1465, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12'),
(81, 17, 'Chuck Taylor® Low Top Sneaker', 1517, 10, '2016-05-10 06:00:12', '2016-05-10 06:00:12');

-- --------------------------------------------------------

--
-- Table structure for table `products_type`
--

CREATE TABLE IF NOT EXISTS `products_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(1000) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_type_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=24 ;

--
-- Dumping data for table `products_type`
--

INSERT INTO `products_type` (`id`, `category_id`, `name`, `date`, `date_updated`, `category_type_id`) VALUES
(1, 1, 'Jeans', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 1),
(2, 1, 'Pants', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 1),
(3, 2, 'Pants', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 4),
(4, 3, 'Pants', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 7),
(5, 1, 'Shorts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 1),
(6, 2, 'Shorts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 4),
(7, 3, 'Shorts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 7),
(8, 2, 'Skirts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 4),
(9, 1, 'Mandals', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 2),
(10, 1, 'Slippers', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 2),
(11, 1, 'Sneakers', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 2),
(12, 2, 'Sneakers', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 5),
(13, 2, 'Sandals', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 5),
(14, 3, 'Sandals', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 8),
(15, 1, 'Casual Shirts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 3),
(16, 1, 'Shirts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 3),
(17, 2, 'Shirts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 6),
(18, 3, 'Shirts', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 9),
(19, 1, 'Tank and Tees', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 3),
(20, 2, 'Cropped Tops', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 6),
(21, 3, 'Dresses', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 9),
(22, 2, 'Wedges', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 5),
(23, 3, 'Shoes', '2016-05-10 08:05:02', '2016-05-10 08:05:02', 8);
--
-- Database: `db_menuordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `menu_categories`
--

CREATE TABLE IF NOT EXISTS `menu_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `menu_name` varchar(1000) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `menu_categories`
--

INSERT INTO `menu_categories` (`id`, `menu_name`) VALUES
(1, 'Burgers'),
(2, 'Beverages'),
(3, 'Combo Meal');

-- --------------------------------------------------------

--
-- Table structure for table `menu_list`
--

CREATE TABLE IF NOT EXISTS `menu_list` (
  `id` int(11) DEFAULT NULL,
  `list_name` varchar(1000) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `menu_list`
--

INSERT INTO `menu_list` (`id`, `list_name`, `tax`, `price`) VALUES
(1, 'Hotdog', 10, 87),
(1, 'Cheese Burger', 11, 99),
(1, 'Fries', 6, 45),
(2, 'Coke', 4, 21),
(2, 'Sprite', 5, 25),
(2, 'Tea', 2, 15),
(3, 'Chicken Combo Meal', 14, 199),
(3, 'Pork Combo Meal', 15, 200),
(3, 'Fish Combo Meal', 13, 196);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `list_item` varchar(1000) DEFAULT NULL,
  `total` int(11) DEFAULT NULL,
  `name` varchar(1000) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
--
-- Database: `db_online`
--

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id`, `name`, `date_created`) VALUES
(1, 'Breakfast', '2016-05-11 14:55:55'),
(2, 'Lunch', '2016-05-11 14:55:55'),
(3, 'Dinner', '2016-05-11 14:56:18');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=23 ;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `category_id`, `name`, `price`, `tax`, `date_created`) VALUES
(1, 1, 'Belgian Waffles', 150, 10, '2016-05-11 15:02:59'),
(2, 1, 'Nectarine Scones', 110, 10, '2016-05-11 15:02:59'),
(3, 1, 'Homemade Biscuits and Gravy', 120, 10, '2016-05-11 15:02:59'),
(4, 1, 'Pancakes', 100, 10, '2016-05-11 15:02:59'),
(5, 1, 'Maple Bacon Donut', 112, 10, '2016-05-11 15:02:59'),
(6, 1, 'Huevos Rancheros with Pulled Pork and Pico de Gallo', 160, 10, '2016-05-11 15:02:59'),
(7, 1, 'Grits and Grilades', 130, 10, '2016-05-11 15:02:59'),
(8, 1, 'House - Cured Ham with Redeye Gravy', 165, 10, '2016-05-11 15:02:59'),
(9, 2, 'Bone Marrow and Parsley Salad', 199, 10, '2016-05-11 15:10:39'),
(10, 2, 'Carne Seca', 220, 10, '2016-05-11 15:10:39'),
(11, 2, 'Chargrilled Quail', 165, 10, '2016-05-11 15:10:39'),
(12, 2, 'Fish Tacos', 75, 10, '2016-05-11 15:10:39'),
(13, 2, 'Killen''s Barbeque', 145, 10, '2016-05-11 15:10:39'),
(14, 2, 'Slow - Cooked Pork Burrito', 220, 10, '2016-05-11 15:10:39'),
(15, 2, 'Sonoran Hot Dog', 110, 10, '2016-05-11 15:10:39'),
(16, 2, 'Sunday Roast', 230, 10, '2016-05-11 15:10:39'),
(17, 3, 'Baked Cod with Feta and Tomatoes', 230, 10, '2016-05-11 14:08:33'),
(18, 3, 'Bruschetta Burgers', 250, 10, '2016-05-11 14:08:33'),
(19, 3, 'Chicken Stir - Fry with Peanut', 230, 10, '2016-05-11 14:08:33'),
(20, 3, 'Chipotle Bean Burritos', 200, 10, '2016-05-11 14:08:33'),
(21, 3, 'Cincinnati Turkey Chili', 150, 10, '2016-05-11 14:08:33'),
(22, 3, 'Dijon Croque Monsieur', 110, 10, '2016-05-11 14:09:07');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE IF NOT EXISTS `order_detail` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) NOT NULL,
  `menu_id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `date_created` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=46 ;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `menu_id`, `name`, `price`, `tax`, `quantity`, `date_created`) VALUES
(1, 46, 10, 'Carne Seca', 220, 10, 1, 0),
(2, 47, 20, 'Chipotle Bean Burritos', 200, 10, 1, 0),
(3, 47, 11, 'Chargrilled Quail', 165, 10, 2, 0),
(4, 47, 1, 'Belgian Waffles', 150, 10, 3, 0),
(5, 48, 1, 'Belgian Waffles', 150, 10, 1, 0),
(6, 49, 1, 'Belgian Waffles', 150, 10, 1, 0),
(7, 50, 1, 'Belgian Waffles', 150, 10, 1, 0),
(8, 51, 1, 'Belgian Waffles', 150, 10, 1, 0),
(9, 52, 1, 'Belgian Waffles', 150, 10, 1, 0),
(10, 53, 1, 'Belgian Waffles', 150, 10, 1, 0),
(11, 54, 1, 'Belgian Waffles', 150, 10, 1, 0),
(12, 55, 1, 'Belgian Waffles', 150, 10, 1, 0),
(13, 56, 1, 'Belgian Waffles', 150, 10, 1, 0),
(14, 57, 1, 'Belgian Waffles', 150, 10, 2, 0),
(15, 57, 2, 'Nectarine Scones', 110, 10, 4, 0),
(16, 57, 3, 'Homemade Biscuits and Gravy', 120, 10, 5, 0),
(17, 57, 4, 'Pancakes', 100, 10, 6, 0),
(18, 57, 5, 'Maple Bacon Donut', 112, 10, 7, 0),
(19, 57, 6, 'Huevos Rancheros with Pulled Pork and Pico de Gallo', 160, 10, 9, 0),
(20, 57, 7, 'Grits and Grilades', 130, 10, 10, 0),
(21, 57, 8, 'House - Cured Ham with Redeye Gravy', 165, 10, 11, 0),
(22, 58, 2, 'Nectarine Scones', 110, 10, 12, 0),
(23, 58, 6, 'Huevos Rancheros with Pulled Pork and Pico de Gallo', 160, 10, 2, 0),
(24, 59, 14, 'Slow - Cooked Pork Burrito', 220, 10, 12, 0),
(25, 59, 10, 'Carne Seca', 220, 10, 1, 0),
(26, 60, 2, 'Nectarine Scones', 110, 10, 2, 0),
(27, 61, 10, 'Carne Seca', 220, 10, 2, 0),
(28, 62, 9, 'Bone Marrow and Parsley Salad', 199, 10, 2, 0),
(29, 63, 10, 'Carne Seca', 220, 10, 2, 0),
(30, 101, 2, 'Nectarine Scones', 110, 10, 2, 0),
(31, 101, 1, 'Belgian Waffles', 150, 10, 3, 0),
(32, 102, 1, 'Belgian Waffles', 150, 10, 2, 0),
(33, 102, 2, 'Nectarine Scones', 110, 10, 3, 0),
(34, 103, 10, 'Carne Seca', 220, 10, 2, 0),
(35, 103, 9, 'Bone Marrow and Parsley Salad', 199, 10, 2, 0),
(36, 104, 10, 'Carne Seca', 220, 10, 2, 0),
(37, 105, 11, 'Chargrilled Quail', 165, 10, 1, 0),
(38, 105, 10, 'Carne Seca', 220, 10, 2, 0),
(39, 106, 10, 'Carne Seca', 220, 10, 2, 0),
(40, 107, 10, 'Carne Seca', 220, 10, 2, 0),
(41, 108, 10, 'Carne Seca', 220, 10, 2, 0),
(42, 109, 10, 'Carne Seca', 220, 10, 2, 0),
(43, 109, 11, 'Chargrilled Quail', 165, 10, 3, 0),
(44, 110, 11, 'Chargrilled Quail', 165, 10, 2, 0),
(45, 110, 10, 'Carne Seca', 220, 10, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_amount` int(11) NOT NULL,
  `total_quantity` int(11) NOT NULL,
  `total_tax` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=111 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_amount`, `total_quantity`, `total_tax`, `date_created`) VALUES
(1, 439, 2, 20, '2016-05-11 04:08:06'),
(2, 920, 6, 20, '2016-05-11 04:29:57'),
(3, 209, 1, 10, '2016-05-11 04:35:26'),
(4, 350, 2, 10, '2016-05-11 04:36:13'),
(5, 350, 2, 10, '2016-05-11 04:36:13'),
(6, 175, 1, 10, '2016-05-11 04:37:35'),
(7, 175, 1, 10, '2016-05-11 04:37:51'),
(8, 175, 1, 10, '2016-05-11 04:41:13'),
(9, 0, 0, 10, '2016-05-11 04:41:53'),
(10, 364, 3, 20, '2016-05-11 04:42:43'),
(11, 485, 3, 20, '2016-05-11 04:43:17'),
(12, 120, 1, 10, '2016-05-11 04:45:21'),
(13, 175, 1, 10, '2016-05-11 04:46:42'),
(14, 130, 1, 10, '2016-05-11 04:48:26'),
(15, 175, 1, 10, '2016-05-11 04:48:46'),
(16, 210, 1, 10, '2016-05-11 04:50:08'),
(17, 210, 1, 10, '2016-05-11 04:50:22'),
(18, 350, 2, 10, '2016-05-11 04:50:37'),
(19, 175, 1, 10, '2016-05-11 04:55:33'),
(20, 175, 1, 10, '2016-05-11 04:55:35'),
(21, 425, 5, 10, '2016-05-11 04:55:48'),
(22, 175, 1, 10, '2016-05-11 05:12:55'),
(23, 2300, 10, 10, '2016-05-11 05:13:11'),
(24, 2300, 10, 10, '2016-05-11 05:13:11'),
(25, 2300, 10, 10, '2016-05-11 05:13:21'),
(26, 2090, 10, 10, '2016-05-11 05:13:57'),
(27, 2090, 10, 100, '2016-05-11 05:15:37'),
(28, 350, 2, 20, '2016-05-11 05:18:52'),
(29, 350, 2, 10, '2016-05-11 05:19:27'),
(30, 350, 2, 20, '2016-05-11 05:20:42'),
(31, 1890, 9, 90, '2016-05-11 05:21:12'),
(32, 710, 3, 30, '2016-05-11 05:24:27'),
(33, 210, 1, 10, '2016-05-11 05:25:54'),
(34, 210, 1, 10, '2016-05-11 05:25:56'),
(35, 175, 1, 10, '2016-05-11 05:27:22'),
(36, 240, 2, 20, '2016-05-11 05:29:20'),
(37, 240, 2, 20, '2016-05-11 05:29:50'),
(38, 240, 2, 20, '2016-05-11 05:29:50'),
(39, 160, 1, 10, '2016-05-11 05:31:11'),
(40, 160, 1, 10, '2016-05-11 05:31:53'),
(41, 120, 1, 10, '2016-05-11 05:32:54'),
(42, 160, 1, 10, '2016-05-11 05:34:36'),
(43, 120, 1, 10, '2016-05-11 05:35:31'),
(44, 230, 1, 10, '2016-05-11 05:35:48'),
(45, 120, 1, 10, '2016-05-11 05:36:30'),
(46, 230, 1, 10, '2016-05-11 05:36:48'),
(47, 1040, 6, 60, '2016-05-11 05:37:09'),
(48, 160, 1, 10, '2016-05-11 05:54:51'),
(49, 160, 1, 10, '2016-05-11 05:55:27'),
(50, 160, 1, 10, '2016-05-11 05:55:27'),
(51, 160, 1, 10, '2016-05-11 05:55:59'),
(52, 160, 1, 10, '2016-05-11 05:56:41'),
(53, 160, 1, 10, '2016-05-11 05:57:35'),
(54, 160, 1, 10, '2016-05-11 05:57:49'),
(55, 160, 1, 10, '2016-05-11 05:58:14'),
(56, 160, 1, 10, '2016-05-11 05:58:36'),
(57, 7819, 54, 540, '2016-05-11 06:47:22'),
(58, 1780, 14, 140, '2016-05-11 06:50:28'),
(59, 2990, 13, 130, '2016-05-11 06:51:22'),
(60, 240, 2, 20, '2016-05-11 06:52:26'),
(61, 460, 2, 20, '2016-05-11 06:53:32'),
(62, 418, 2, 20, '2016-05-11 06:57:16'),
(63, 460, 2, 20, '2016-05-11 06:57:30'),
(64, 0, 0, 0, '2016-05-11 06:58:38'),
(65, 0, 0, 0, '2016-05-11 06:58:38'),
(66, 0, 0, 0, '2016-05-11 07:02:25'),
(67, 0, 0, 0, '2016-05-11 07:02:26'),
(68, 0, 0, 0, '2016-05-11 07:02:27'),
(69, 0, 0, 0, '2016-05-11 07:02:27'),
(70, 0, 0, 0, '2016-05-11 07:02:27'),
(71, 0, 0, 0, '2016-05-11 07:02:28'),
(72, 0, 0, 0, '2016-05-11 07:02:28'),
(73, 0, 0, 0, '2016-05-11 07:04:55'),
(74, 0, 0, 0, '2016-05-11 07:04:55'),
(75, 0, 0, 0, '2016-05-11 07:04:55'),
(76, 0, 0, 0, '2016-05-11 07:04:56'),
(77, 0, 0, 0, '2016-05-11 07:04:56'),
(78, 0, 0, 0, '2016-05-11 07:04:56'),
(79, 0, 0, 0, '2016-05-11 07:04:56'),
(80, 0, 0, 0, '2016-05-11 07:04:57'),
(81, 0, 0, 0, '2016-05-11 07:04:57'),
(82, 0, 0, 0, '2016-05-11 07:05:09'),
(83, 0, 0, 0, '2016-05-11 07:05:10'),
(84, 0, 0, 0, '2016-05-11 07:05:10'),
(85, 0, 0, 0, '2016-05-11 07:05:10'),
(86, 0, 0, 0, '2016-05-11 07:06:17'),
(87, 0, 0, 0, '2016-05-11 07:06:17'),
(88, 0, 0, 0, '2016-05-11 07:06:18'),
(89, 0, 0, 0, '2016-05-11 07:06:18'),
(90, 0, 0, 0, '2016-05-11 07:06:18'),
(91, 0, 0, 0, '2016-05-11 07:06:18'),
(92, 0, 0, 0, '2016-05-11 07:06:59'),
(93, 0, 0, 0, '2016-05-11 07:07:14'),
(94, 0, 0, 0, '2016-05-11 07:08:45'),
(95, 0, 0, 0, '2016-05-11 07:09:44'),
(96, 0, 0, 0, '2016-05-11 07:09:54'),
(97, 0, 0, 0, '2016-05-11 07:10:25'),
(98, 0, 0, 0, '2016-05-11 07:11:41'),
(99, 0, 0, 0, '2016-05-11 07:12:41'),
(100, 0, 0, 0, '2016-05-11 07:13:12'),
(101, 720, 5, 50, '2016-05-11 07:14:38'),
(102, 680, 5, 50, '2016-05-11 07:15:10'),
(103, 878, 4, 40, '2016-05-11 07:16:47'),
(104, 460, 2, 20, '2016-05-11 07:18:22'),
(105, 635, 3, 30, '2016-05-11 07:18:46'),
(106, 460, 2, 20, '2016-05-11 07:19:36'),
(107, 460, 2, 20, '2016-05-11 07:21:01'),
(108, 460, 2, 20, '2016-05-11 07:21:23'),
(109, 985, 5, 50, '2016-05-11 07:22:36'),
(110, 1040, 5, 50, '2016-05-11 07:23:15');
--
-- Database: `db_ordering`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'BFF Bundles'),
(2, 'Burgers'),
(3, 'Chicken & Spaghetti'),
(4, 'Breakfast'),
(5, 'Happy Meal'),
(6, 'Dessert'),
(7, 'Drinks');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE IF NOT EXISTS `menus` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `category_id` int(11) DEFAULT NULL,
  `name` varchar(150) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `description` text,
  `date_created` datetime DEFAULT NULL,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=74 ;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`id`, `category_id`, `name`, `price`, `tax`, `description`, `date_created`, `date_updated`) VALUES
(1, 1, 'BFF Mix Bundle', 330, 10, NULL, '2016-05-03 13:20:14', NULL),
(2, 1, '1pc Chicken McDo', 75, 5, NULL, NULL, NULL),
(3, 2, 'Smoky Cheeseburger', 122, 10, NULL, NULL, NULL),
(4, 2, 'BFF Mix Bundle', 330, 10, NULL, NULL, NULL),
(5, 2, 'Double Cheeseburger', 155, 10, NULL, NULL, NULL),
(6, 2, 'Big Mac', 165, 10, NULL, NULL, NULL),
(7, 2, 'Big ''N Tasty', 165, 10, NULL, NULL, NULL),
(8, 2, 'Quarter Pounder', 165, 10, NULL, NULL, NULL),
(9, 2, 'McDouble Deluxe', 175, 10, NULL, NULL, NULL),
(10, 2, 'Fillet - O - Fish', 150, 10, NULL, NULL, NULL),
(11, 2, 'Cheeseburger Deluxe', 170, 10, NULL, NULL, NULL),
(12, 2, 'Cheeseburger', 125, 10, NULL, NULL, NULL),
(13, 2, 'Burger McDo', 120, 10, NULL, NULL, NULL),
(14, 2, 'Crispy Chicken Sandwich', 75, 10, NULL, NULL, NULL),
(15, 3, 'Chicken Fillet Ala King with Corn Cup', 89, 8, NULL, NULL, NULL),
(16, 3, '1pc Chicken McDo with Mushroom Soup', 89, 8, NULL, NULL, NULL),
(17, 3, 'BFF Mic Bundle ', 300, 10, NULL, NULL, NULL),
(18, 3, '1pc Chicken McDo with Rice and Fries', 110, 10, NULL, NULL, NULL),
(19, 3, '2pc Chicken McDo ', 99, 8, NULL, NULL, NULL),
(20, 3, '1pc Chicken McDo with McSpaghetti', 150, 10, NULL, NULL, NULL),
(21, 3, '1pc Chicken McDo', 75, 8, NULL, NULL, NULL),
(22, 3, '6pc McNuggets with Rice', 99, 8, NULL, NULL, NULL),
(23, 3, 'McChicken Sandwich', 120, 10, NULL, NULL, NULL),
(24, 3, '6pc McNuggets with Fries', 99, 8, NULL, NULL, NULL),
(25, 3, 'Crispy Chicken Fillet w/ Rice and Fries', 120, 10, NULL, NULL, NULL),
(26, 3, 'Crispy Chicken Sandwich', 85, 8, NULL, NULL, NULL),
(27, 3, 'McSpaghetti', 85, 8, NULL, NULL, NULL),
(28, 4, 'Cheesy Eggdesal with Tomato and Onion', 110, 10, NULL, NULL, NULL),
(29, 4, 'Cheesy Eggdesal with Ham', 100, 8, NULL, NULL, NULL),
(30, 4, 'Cheesy Eggdesal with Sausage', 100, 8, NULL, NULL, NULL),
(31, 4, 'Cheesy Eggdesal', 75, 6, NULL, NULL, NULL),
(32, 4, 'Big Breakfast', 133, 10, NULL, NULL, NULL),
(33, 4, 'Sausage Platter w/ Rice', 99, 8, NULL, NULL, NULL),
(34, 4, 'Longanisa w/ Rice', 85, 8, NULL, NULL, NULL),
(35, 4, '3pc Hotcake w/ Sausage', 85, 8, NULL, NULL, NULL),
(36, 4, '3pc HOtcake', 75, 8, NULL, NULL, NULL),
(37, 4, '2pc Hotcake and Sausage', 85, 8, NULL, NULL, NULL),
(38, 4, '2pc Hotcake', 50, 6, NULL, NULL, NULL),
(39, 4, 'Sausage McMuffin w/ Egg', 99, 8, NULL, NULL, NULL),
(40, 4, 'Sausage McMuffin', 85, 8, NULL, NULL, NULL),
(41, 4, 'Egg McMuffin', 85, 8, NULL, NULL, NULL),
(42, 4, '2pc Chicken McDo', 150, 10, NULL, NULL, NULL),
(43, 4, '1pc Chicken McDo', 75, 8, NULL, NULL, NULL),
(44, 4, 'Crispy Chicken Fillet w/ Rice', 75, 8, NULL, NULL, NULL),
(45, 4, 'Crispy Chicken Sandwich', 75, 8, NULL, NULL, NULL),
(46, 5, 'Chicken Mcdo', 130, 10, NULL, NULL, NULL),
(47, 5, 'Chicken McNuggets', 150, 10, NULL, NULL, NULL),
(48, 5, 'Burger Mcdo', 110, 10, NULL, NULL, NULL),
(49, 5, 'McSpaghetti', 110, 10, NULL, NULL, NULL),
(50, 5, '4pc Mini Hotcakes', 120, 10, NULL, NULL, NULL),
(51, 5, 'Cheesy Eggdesal', 110, 10, NULL, NULL, NULL),
(52, 6, 'Piggies ''Oreo Matcha Mc Flurry', 50, 6, NULL, NULL, NULL),
(53, 6, 'Red''s Cotton Candy McFlurry', 50, 6, NULL, NULL, NULL),
(54, 6, 'McFlurry w/ Oreo', 50, 6, NULL, NULL, NULL),
(55, 6, 'Coke McFloat', 30, 6, NULL, NULL, NULL),
(56, 6, 'Green Apple Sprite McFloat', 30, 6, NULL, NULL, NULL),
(57, 6, 'McCafe Coffee Float', 30, 6, NULL, NULL, NULL),
(58, 6, 'Hot Fudge Sundae', 35, 6, NULL, NULL, NULL),
(59, 6, 'Caramel Sundae ', 35, 6, NULL, NULL, NULL),
(60, 6, 'Apple Pie', 28, 6, NULL, NULL, NULL),
(61, 7, 'Coke', 36, 6, NULL, NULL, NULL),
(62, 7, 'Coke Zero', 36, 6, NULL, NULL, NULL),
(63, 7, 'Sprite', 36, 6, NULL, NULL, NULL),
(64, 7, 'Coke McFloat', 30, 6, NULL, NULL, NULL),
(65, 7, 'Green Apple Sprite McFloat', 30, 6, NULL, NULL, NULL),
(66, 7, 'McCafe Coffee Float', 30, 6, NULL, NULL, NULL),
(67, 7, 'Iced Premium Roast Coffee Vanilla', 51, 6, NULL, NULL, NULL),
(68, 7, 'Iced Premium Roast Coffee Plain', 51, 6, NULL, NULL, NULL),
(69, 7, 'McCafe Premium Roast Coffee', 25, 6, NULL, NULL, NULL),
(70, 7, 'Hot Chocolate', 43, 6, NULL, NULL, NULL),
(71, 7, 'Iced Tea', 43, 6, NULL, NULL, NULL),
(72, 7, 'Orange Juice', 43, 6, NULL, NULL, NULL),
(73, 7, 'Pineapple Juice', 43, 6, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `order_details`
--

CREATE TABLE IF NOT EXISTS `order_details` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `order_id` int(11) DEFAULT NULL,
  `menu_id` int(11) DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `tax` int(11) DEFAULT NULL,
  `quantity` int(11) DEFAULT NULL,
  `total_amount` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=11 ;

--
-- Dumping data for table `order_details`
--

INSERT INTO `order_details` (`id`, `order_id`, `menu_id`, `price`, `tax`, `quantity`, `total_amount`, `date_created`, `date_updated`) VALUES
(1, 1, 1, 75, 5, 1, 80, '2016-05-06 17:26:56', NULL),
(2, 1, 2, 330, 10, 1, 340, '2016-05-06 17:26:56', NULL),
(3, 2, 48, 100, 8, 1, 108, '2016-05-06 17:27:30', NULL),
(4, 2, 1, 330, 10, 1, 340, '2016-05-06 17:27:30', NULL),
(5, 2, 30, 300, 10, 1, 310, '2016-05-06 17:27:30', NULL),
(6, 2, 54, 50, 6, 1, 56, '2016-05-06 17:27:30', NULL),
(7, 2, 17, 36, 6, 1, 42, '2016-05-06 17:27:30', NULL),
(8, 2, 3, 122, 10, 1, 132, '2016-05-06 17:27:30', NULL),
(9, 2, 62, 110, 10, 1, 120, '2016-05-06 17:27:30', NULL),
(10, 3, 1, 330, 10, 1, 340, '2016-05-06 17:46:46', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE IF NOT EXISTS `orders` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `total_price` int(11) DEFAULT NULL,
  `total_quantity` int(11) DEFAULT NULL,
  `total_tax` int(11) DEFAULT NULL,
  `date_created` datetime DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `total_price`, `total_quantity`, `total_tax`, `date_created`, `date_updated`) VALUES
(1, 420, 2, 15, '2016-05-06 17:26:56', '0000-00-00 00:00:00'),
(2, 1108, 7, 60, '2016-05-06 17:27:30', '0000-00-00 00:00:00'),
(3, 340, 1, 10, '2016-05-06 17:46:46', '0000-00-00 00:00:00');
--
-- Database: `order_pizza`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `date_created`, `date_updated`) VALUES
(1, 'Pizza', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(2, 'Pasta', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(3, 'Chicken', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(4, 'Appetizer', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(5, 'Beverages', '2016-05-23 07:38:08', '2016-05-23 07:38:08'),
(6, 'Promo', '2016-05-23 07:38:08', '2016-05-23 07:38:08');

-- --------------------------------------------------------

--
-- Table structure for table `food_item`
--

CREATE TABLE IF NOT EXISTS `food_item` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `price` int(11) NOT NULL,
  `tax` int(11) NOT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `category_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
