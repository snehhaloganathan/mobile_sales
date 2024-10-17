-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2023 at 05:24 PM
-- Server version: 10.1.29-MariaDB
-- PHP Version: 7.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopping`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `customer_id`, `product_id`, `quantity`) VALUES
(16, 2, 16, 17),
(19, 4, 27, 3),
(22, 5, 17, 1),
(30, 40, 32, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Furniture', '', 1, 0, '2023-02-03 10:03:37', '2023-02-09 10:03:37'),
(2, 'Electronics&HomeAppliances', '', 1, 0, '2023-02-03 10:05:04', '2023-03-09 14:52:16'),
(3, 'Mobiles', '', 1, 0, '2023-02-03 10:06:13', '2023-03-09 14:51:41');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

CREATE TABLE `customer_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`id`, `firstname`, `lastname`, `gender`, `contact`, `email`, `password`, `avatar`, `date_created`, `date_updated`) VALUES
(2, 'Nivetha', 'R', 'Female', '9842860249', 'nivethar.20bsr@kongu.edu', 'bde2e6530c7c2ce731016dc021bb7f22', '', '2023-03-09 14:35:22', '2023-03-09 14:35:22'),
(3, 'sne', 'a', 'Female', '9842860249', 'snehaal.20bsr@kongu.edu', '9d3a3229172aa4fb07c45351db3db3e2', '', '2023-03-09 15:49:30', '2023-03-09 15:49:30'),
(4, 'haru', 'T', 'Female', '9842860249', 'harinid.20bsr@kongu.edu', '8ab8a929d72be990eda50beab682738d', '', '2023-03-10 14:15:51', '2023-03-10 14:15:51'),
(5, 'Nila', 'Nagesh', 'Female', '9842860249', 'ramyav.20bsr@kongu.edu', '4cf49ed737012a026800eaf4607da43a', '', '2023-03-10 15:13:43', '2023-03-10 15:13:43'),
(6, 'amirtha', 'T', 'Female', '9842969287', 'amirtha@gmail.com', 'c236236314f8a7c055e930381262bde5', '', '2023-03-10 15:26:53', '2023-03-10 15:26:53'),
(7, 'shwe', 'c', 'Female', '9842969287', 'shwethac.20bsr@kongu.edu', 'ad0167ec708075697426b942a14707d4', '', '2023-03-13 09:12:59', '2023-03-13 09:12:59'),
(8, 'reenasri', 'S', 'Female', '9944960249', 'reenasris.20bsr@kongu.edu', 'ed1d2e833c974ea3a09e5aa3cf9e49f8', '', '2023-03-13 09:28:25', '2023-03-13 09:28:25'),
(9, 'vanitha', 'M', 'Female', '9944960249', 'vanitham.20bsr@kongu.edu', '61c6dadac01e286f844f59afb2ffaab7', '', '2023-03-13 09:30:35', '2023-03-13 09:30:35'),
(10, 'siva', 's', 'Female', '9842860249', 'sivadshanuk.20bsr@kongu.edu', '707732495b39e8e9bc27f9e909186b34', '', '2023-04-25 20:36:22', '2023-04-25 20:36:22'),
(11, 'kavi', 'k', 'Female', '9842860249', 'kavi@gmail.com', 'f38cde1654b39fea2bd4f72f1ae4cdda', '', '2023-04-25 20:37:44', '2023-04-25 20:37:44'),
(12, 'mouni', 'f', 'Female', '9842860249', 'mouni@gmail.com', 'f103d9d260522a856c8e232ae72f9485', '', '2023-04-25 20:39:55', '2023-04-25 20:39:55'),
(13, 'deepthi', 'k', 'Female', '9842860249', 'deepthi@gmail.com', '712eb75b79ed567b2377b3dc3851baf8', '', '2023-04-25 20:52:41', '2023-04-25 20:52:41'),
(40, 'Ragu', 'S', 'Male', '9750746402', 'ragu@gmail.com', 'Ragu@123', 'uploads/avatars/24download.jpg', '2023-05-03 00:08:01', '2023-05-03 00:08:01');

-- --------------------------------------------------------

--
-- Table structure for table `inquiry_list`
--

CREATE TABLE `inquiry_list` (
  `id` int(30) NOT NULL,
  `fullname` varchar(25) NOT NULL,
  `contact` int(10) NOT NULL,
  `email` varchar(35) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message` varchar(255) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `inquiry_list`
--

INSERT INTO `inquiry_list` (`id`, `fullname`, `contact`, `email`, `subject`, `message`, `status`, `date_created`, `date_updated`) VALUES
(1, 'nivetha', 2147483647, 'nivethar.20bsr@kongu.edu', 'hi', 'hello', 0, '2023-03-09 14:45:53', '2023-03-09 14:45:53'),
(2, 'mouni', 2147483647, 'mouni@gmail.com', 'hii', 'hello', 0, '2023-04-25 20:40:41', '2023-04-25 20:40:41'),
(3, 'deepthi', 2147483647, 'deepthi@gmail.com', 'hii', 'hello', 0, '2023-04-25 20:53:17', '2023-04-25 20:53:17');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT '0',
  `price` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(6, 3, 1, 32290.00),
(6, 32, 2, 25000.00),
(7, 24, 2, 650.00),
(10, 31, 2, 2599.00),
(11, 1, 10, 21499.00),
(12, 1, 10, 21499.00),
(13, 9, 2, 12899.00),
(14, 29, 1, 3740.00),
(15, 15, 15, 22990.00),
(16, 10, 20, 12599.00),
(17, 30, 1, 2999.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `customer_id` int(30) NOT NULL,
  `delivery_address` text NOT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT '0.00',
  `payment_mode` varchar(20) DEFAULT NULL,
  `payment_ref` varchar(40) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending,\r\n1=packed,\r\n2=out for delivery,\r\n3=paid\r\n',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `name` varchar(30) NOT NULL,
  `mobile` int(10) NOT NULL,
  `email` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `customer_id`, `delivery_address`, `total_amount`, `payment_mode`, `payment_ref`, `status`, `date_created`, `date_updated`, `name`, `mobile`, `email`) VALUES
(6, '2023030900004', 2, 'erode', 82290.00, NULL, NULL, 2, '2023-03-09 15:20:41', '2023-03-13 09:19:28', 'nivetha', 2147483647, 'nivethar.20bsr@kongu.edu'),
(7, '2023030900001', 2, 'erode', 1300.00, NULL, NULL, 1, '2023-03-09 15:26:26', '2023-03-10 08:58:06', 'saran', 2147483647, 'snehaal.20bsr@kongu.edu'),
(10, '2023031000003', 6, 'asdfgh', 5198.00, NULL, NULL, 0, '2023-03-10 15:38:08', '2023-03-10 15:38:08', 'haru', 2147483647, 'email@gmail.com'),
(11, '2023031000001', 6, 'asdfg', 214990.00, NULL, NULL, 0, '2023-03-10 16:04:55', '2023-03-10 16:04:55', 'nivetha', 2147483647, 'ss@gmail.com'),
(12, '2023031000002', 6, 'asdfgh', 214990.00, NULL, NULL, 0, '2023-03-10 16:05:39', '2023-03-10 16:05:39', 'haru', 2147483647, 'nivethar.20bsr@kongu.edu'),
(13, '2023031400001', 3, 'erode', 25798.00, NULL, NULL, 0, '2023-03-14 10:23:54', '2023-03-14 10:23:54', 'sneha', 2147483647, 'snehaal.20bsr@kongu.edu'),
(14, '2023042400001', 9, 'erd', 3740.00, NULL, NULL, 0, '2023-04-24 20:53:45', '2023-04-24 20:53:45', 'vani', 2147483647, 'snehaal.20bsr@kongu.edu'),
(15, '2023042500001', 12, 'erode', 344850.00, NULL, NULL, 0, '2023-04-25 20:42:05', '2023-04-25 20:42:05', 'mouni', 2147483647, 'snehaal.20bsr@kongu.edu'),
(16, '2023042500002', 13, 'erode', 251980.00, NULL, NULL, 0, '2023-04-25 20:54:48', '2023-04-25 20:54:48', 'deepthi', 2147483647, 'deepthi@gmail.com'),
(17, '2023050300001', 40, 'no.10, vcv nagar', 2999.00, NULL, NULL, 0, '2023-05-03 00:11:11', '2023-05-03 20:53:05', 'Ragu', 2147483647, 'ragu@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `brand` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `price` float(12,2) NOT NULL DEFAULT '0.00',
  `image_path` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `brand`, `name`, `description`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 'Cozy', 'The Cozy Couch - Beetle Single Seater Sofa in Teal Colour for Living Room (Wood)', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Mauris vulputate vestibulum massa, eget ultricies nisi cursus quis.', 21499.00, 'uploads/70.JPG', 1, 0, '2023-02-04 10:07:54', '2023-03-09 11:45:18'),
(2, 1, 'Cozy', 'The Cozy Couch - Ibiza Solid Wood Loveseat Two Seater Sofa, Upholstered Fabric (Grey)', 'Model : Ibiza, Configuration: Two Seater Loveseat, Seating Capacity :2, Design : Traditional\r\nIncluded Component - 1 Nos. Two Seater Loveseat. Perfect unique retro modern sofa for your living room, lounge room, office, or other seating area. Product dimensions in inches for L Shape -51x34x31 (Inches). Refer Dimension Image for Individual Item. (expect an unevenness of up to 1-2 inch in the product due to differences in surfaces and floor levels).\r\nPrimary Frame Material - Solid Wood, Secondary Frame material:18 mm ply wood, Upholstery -Fabric, Colour - Grey. Seat construction : Spring and Elastic webbing belt, Seat filling material : Foam Density - 38-40.\r\nAssembly Instruction: Do it yourself (Just unpack the product & align it as per your desire). Depending on your screen settings and resolution on your device there may be a slight variance in Leatherette color and wood polish of the image and actual product.', 15499.00, 'uploads/72.jpg', 1, 0, '2023-02-04 10:08:30', '2023-03-09 11:45:35'),
(3, 1, 'Cozy', 'The Cozy Couch - Bermont Solid Wood Three Seater Upholstered Sofa in Premium Suede Fabric (Pink).', 'Model : Bermont, Configuration:Three Seater Sofa, Seating Capacity : 3, ATTRIBUTES: Upholstered, Low Profile, 3-Seat, Soft Cushions\r\nIncluded Component -Three Seater Sofa - Excellent for living room, den, lounge area or family room. Product dimensions in inches for L Shape -108x36x30 (Inches). Refer Dimension Image for Individual Item. (expect an unevenness of up to 1-2 inch in the product due to differences in surfaces and floor levels).\r\nPrimary Frame Material - Solid Wood, Secondary Frame material:18 mm ply wood, Upholstery - Suede Fabric, Colour - Pink. Seat construction : Spring and Elastic webbing belt, Seat filling material : Foam Density - 38-40.', 32290.00, 'uploads/product-featured-141.jpg', 1, 0, '2023-02-04 10:09:08', '2023-03-09 11:48:48'),
(4, 1, 'Trevi', 'Trevi BlissPlus 6 Seater RHS Sectional Sofa in Royal Grey & Blue Color', 'Product Dimensions	1.87D x 2.13W x 0.72H Meters\r\nColour	Royal Grey & Blue\r\nBrand	Trevi\r\nStyle	Royal Grey & Blue\r\nSpecial Feature	Space Saving', 26199.00, 'uploads/66.jpg', 1, 0, '2023-02-04 10:12:18', '2023-03-09 11:50:48'),
(5, 1, 'Trevi', 'Trevi Bliss Fabric 3 Seater Sofa (Finish Color - Grey & Blue)', 'Product Dimensions	77.5D x 175.3W x 36.8H Centimeters\r\nColour	Multicolour\r\nBrand	Trevi\r\nStyle	Modern\r\nSpecial Feature	Space Saving\r\nType	Standard\r\nUpholstery Fabric Type	Jute', 14999.00, 'uploads\\product-featured-138.jpg', 1, 0, '2023-02-04 10:12:53', '2023-03-09 11:52:58'),
(6, 1, 'Trevi', 'Trevi Edo 3 Seater Sofa Cum Bed (Wood & Fabric, Grey)', 'Primary Material: Wood, Upholstery Material: Fabric, Top Material: Wood\r\nColor: Green, Style: Modern, Seating Capacity: 3 seater\r\nLegs Finish : Matte Metal Legs\r\nEasy converts from sitting to lounging and sleeping\r\nProduct Dimension : W x H x D: 189.23 cm x 88.9 cm x 63.5 cm (6 ft 2 in x 2 ft 10 in x 2 ft 1 in)', 25000.00, 'uploads/63.jpg', 1, 0, '2023-02-04 10:15:09', '2023-03-09 11:55:45'),
(7, 3, 'Redmi', 'Xiaomi Redmi 10 Power (Sporty Orange, 8GB RAM, 128GB Storage) mobile', 'Brand	Xiaomi\r\nNetwork Service Provider	Unlocked for All Carriers\r\nScreen Size	6.7 Inches\r\nWireless network technology	Wi-Fi\r\nCPU Speed	2.4 GHz', 15000.00, 'uploads\\product-featured-136.jpg', 1, 0, '2023-02-04 10:15:56', '2023-03-09 11:57:58'),
(8, 3, 'Oppo', 'Oppo A57 (Glowing Green, 4GB RAM, 64 Storage) mobile', '6.56\" inch (16.66cm) HD+ Waterdrop Notch Colour Rich Display with 1612x720 pixels | Side Fingerprint Sensor + AI Face Unlock | Large Screen to Body ratio of 89.8%\r\n8MP Front Camera | 13MP +2MP Rear Dual Camera with Night Filter + AI Portrait Retouching\r\n5000 mAh Battery with 33W SUPERVOOC Charging with Optimized Night Charging', 12999.00, 'uploads\\product-featured-135.jpg', 1, 0, '2023-02-04 10:16:42', '2023-03-09 12:00:16'),
(9, 3, 'Redmi', 'Redmi Note 12 5G Mystique Blue 4GB RAM 128GB ROM mobile', 'Display: Super AMOLED (1080x2400) Display with 120Hz Refresh rate; 1200nits peak brightness; 240Hz Touch sampling rate\r\nProcessor: Snapdragon 4 Gen1 6nm Octa-core 5G processor for high performance and efficiency with Adreno 619 GPU; Up to 2.0GHz\r\nCamera: 48MP AI Triple camera setup with 8MP Ultra Wide sensor and 2MP Macro camera| 13MP Front camera\r\nBattery: 5000mAh large battery with 33W fast charger in-box and Type-C connectivity\r\nMemory, Storage & SIM: 4GB RAM | 128GB UFS 2.2 storage expandable up to 1TB | Dual SIM (nano+nano) Dual 5G (5G+5G)', 12899.00, 'uploads\\product-featured-134.jpg', 1, 0, '2023-03-09 11:26:31', '2023-03-09 12:02:27'),
(10, 3, 'Redmi', 'Redmi Note 11 (Space Black, 4GB RAM, 64GB Storage) mobile', 'Display: 90Hz FHD+ (1080x2400) AMOLED display; 16.33 centimeters (6.43 inch); 20:9 aspect ratio\r\nCamera: 50 MP Quad Rear camera with 8MP Ultra-wide, 2MP Macro and Portrait lens| 13 MP Front camera\r\nBattery: 5000 mAh large battery with 33W Pro fast charger in-box and Type-C connectivity\r\nProcessor: Qualcomm Snapdragon 680 Octa-core; 6nm processor; Up to 2.4GHz clock speed\r\nMemory, Storage & SIM: 4GB RAM | 64GB UFS 2.2 storage expandable up to 512GB with dedicated SD card slot | Dual SIM (nano+nano) dual standby (4G+4G)', 12599.00, 'uploads\\product-featured-133.jpg', 1, 0, '2023-03-09 12:03:20', '2023-03-09 12:04:08'),
(11, 3, 'Samsung', 'Samsung Galaxy S23 5G (Green, 8GB, 256GB Storage) mobile', 'More light for your night - Get ready for a Gallery full of epic night shots everyone will want. Nightography\'s enhanced AI keeps details clear, so low light photos and videos will be bright and colorful from dusk to dawn and back again.\r\nDesigned with the planet in mind - Unbox the change you want to see in the world. Crafted with recycled glass and PET film and colored with natural dyes, each phone is tucked into a box made of recycled paper and paper-based protective film.\r\nPower for those who don\'t pause - Your quest for epic mobile gaming is over. Snapdragon 8 Gen 2 Mobile Platform for Galaxy optimizes and streamlines your device for silky smooth games —without draining the battery.', 29000.00, 'uploads\\product-featured-132.jpg', 1, 0, '2023-03-09 12:04:56', '2023-03-09 12:06:01'),
(12, 3, 'Samsung', 'Samsung Galaxy M53 5G (Deep Ocean Blue, 6GB, 128GB Storage) | 108MP | sAmoled+ 120Hz | 12GB RAM mobile', 'Segment Best 108MP Quad Camera Setup, with exciting features like Single Take, Object Eraser, and Photo Remaster\r\n6.7-inch Super AMOLED Plus Display, FHD+ resolution, 1080x2400 pixels with 120Hz Refresh Rate\r\nMTK D900 Octa Core 2.4GHz 6nm Processor with 4x4 Mimo Band support for a HyperFast 5G experience\r\nMassive 5000 mAh Battery | Memory, Storage & SIM: 6GB RAM | RAM Plus upto 6GB |128GB internal memory expandable up to 1TB\r\nLatest Android v12.0, One UI 4 operating system\r\n', 25999.00, 'uploads\\product-featured-131.jpg', 1, 0, '2023-03-09 12:07:22', '2023-03-09 12:08:12'),
(13, 3, 'Samsung', 'Samsung Galaxy S21 FE 5G (Graphite, 8GB, 128GB Storage) mobile', 'Pro-grade Camera with AI Single Take, Portrait Mode, Night Mode and 30X Space zoom. Dual Recording: Film in both wide and selfie angles at the same time | 12MP F1.8 Main Camera (Dual Pixel AF & OIS) + 12MP UltraWide Camera (123° FOV) + 8MP Telephoto Camera (3x Optic Zoom, 30X Space Zoom, OIS) | 32 MP F2.2 Front Camera\r\n16.28cm (6.4-inch) Dynamic AMOLED 2X Display with120Hz Refresh rate for Smooth scrolling. Intelligent Eye Comfort Shield, New 19.5:9 Screen Ratio with thinner bezel, 1080x2340 (FHD+) Resolution\r\n5G Ready with Octa-core Exynos 2100 (5nm) Processor. Android 12 operating system. Dual Sim.\r\nIconic Contour Cut Design with 7.9 mm thickness. Gorilla Glass Victus and IP68 Water Resistant .\r\n4500 mAh battery with Super Fast Charging & Fast Wireless Charging. ', 39990.00, 'uploads\\product-featured-130.jpg', 1, 0, '2023-03-09 12:09:12', '2023-03-09 12:09:56'),
(14, 3, 'Vivo', 'Vivo Y01 (Sapphire Blue, 2GB RAM, 32GB ROM) mobile', '8MP Rear Camera | 5MP Selfie Camera\r\n16.53cm (6.51\") HD+ Display\r\nFuntouch OS\r\n5000mAh battery\r\nHelio P35 Processor', 7999.00, 'uploads\\product-featured-129.jpg', 1, 0, '2023-03-09 12:10:52', '2023-03-09 12:11:54'),
(15, 3, 'Vivo', 'Vivo Y75 5G (Glowing Galaxy, 8GB RAM, 128GB ROM) mobile', '50MP+2MP+2MP Rear Camera | 16MP Selfie Camera\r\n16.71cm (6.58\") FHD+ Display\r\nMemory & SIM: 8GB RAM | 128GB internal memory | Dual SIM (nano+nano) dual-standby.\r\nFuntouch OS 12.0\r\n18W fast charging with 5000mAh battery (Type-C).', 22990.00, 'uploads/45.jpg', 1, 0, '2023-03-09 12:12:46', '2023-03-09 12:13:47'),
(16, 3, 'Vivo', 'Vivo Y15s Mystic Blue (3GB RAM & 32GB ROM) mobile', '13MP+2MP rear camera | 8MP Selfie Camera\r\n16.55 cm (6.51\" inch) LCD Display with 1600 × 720 pixels resolution\r\nFuntouch OS 11.1 (Android 11 (Go edition))\r\nComes with Rear flashlight\r\nConnector type: 3.5mm jack', 9499.00, 'uploads/42.jpg', 1, 0, '2023-03-09 12:15:06', '2023-03-09 12:15:54'),
(17, 3, 'Vivo', 'Vivo Y16 (Drizzling Gold, 3GB RAM, 32GB Storage) mobile', '13MP+2MP Rear Camera | 5MP Selfie Camera\r\n16.55 cm (6.51\" inch) HD+ LCD Display\r\nMemory & SIM: 3GB RAM | 32GB internal memory\r\n10W fast charging with 5000mAh battery\r\n', 19999.00, 'uploads\\product-featured-125.jpg', 1, 0, '2023-03-09 12:16:51', '2023-03-09 12:17:44'),
(18, 3, 'Vivo', 'Vivo Y02 (Cosmic Grey, 3GB RAM, 32GB Storage) mobile', '8MP Rear Camera | 5MP Selfie Camera\r\n16.55 cm (6.51\" inch) HD+ LCD Display\r\nMemory & SIM: 3GB RAM | 32GB internal memory\r\n10W fast charging with 5000mAh battery', 11899.00, 'uploads\\product-featured-124.jpg', 1, 0, '2023-03-09 12:18:37', '2023-03-09 12:19:25'),
(19, 1, 'Solimo', 'Solimo Alasia Engineered Wood Queen Bed (Forest Dark & Black)', 'Material : Engineered Wood\r\nMade using European standard particle board that is sturdy and long lasting\r\nUndergone dynamic loading testing; durability tested for 100 kg\r\nCare Instructions:- Do not move or push without dismantling. Avoid using a wet cloth to wipe clean', 20000.00, 'uploads/29.jpg', 1, 0, '2023-03-09 12:20:59', '2023-03-09 12:21:48'),
(20, 1, 'Priti', 'PRITI Sheesham Solid Wood Single Size Bed in Teak Finish', 'Product Dimensions : 79.0 cm x 204.0 cm x 98.0 cm\r\nMaterial Subtype :Sheesham Wood\r\nSecondary Material :Metal\r\nNet Quantity: 1 N\r\nNote: Please avoid dragging the bed to reposition it, as this can weaken the joints over an extended period of time', 15000.00, 'uploads/28.jpg', 1, 0, '2023-03-09 12:22:43', '2023-03-09 12:23:53'),
(21, 1, 'Homdec', 'Homdec Dorado Metal Single Bed', 'Size Single\r\nMaterial Metal\r\nProduct Dimensions1 98L x 99W x 91H Centimeters\r\nColour Black\r\nFinish Type Satin', 12699.00, 'uploads/25.jpg', 1, 0, '2023-03-09 12:25:04', '2023-03-09 12:26:07'),
(22, 1, 'Arlon', 'Arlon Wooden Storage Double Bed', 'Size of Mattress: In Inch:  72”(W)*78”(L). In Feet: 6’0”(W)*6’6”(L)\r\nFrame Structure: In Inch:  76”(W)*84”(L). In Feet: 6’4”(W)*7’0”(L).\r\nMaterial: Solid Sheesham Wood.\r\nColossal storing capacity provided to keep your bedding linens, pillow and more\r\nStyled in a transitional design that also meets your modern home interior notes', 22000.00, 'uploads/23.jpg', 1, 0, '2023-03-09 12:26:54', '2023-03-09 12:27:53'),
(23, 1, 'Nilkamal', 'Nilkamal Plastic  Spinecare Armrest Chair', 'Colour	Weathered Brown\r\nBrand	Nilkamal\r\nProduct Dimensions	61D x 59W x 84.5H Centimeters\r\nStyle	Contemporary\r\nMaterial	Plastic', 900.00, 'uploads/22.jpg', 1, 0, '2023-03-09 12:31:50', '2023-03-10 15:46:27'),
(24, 1, 'Nilkamal', 'Nilkamal SOLOCANE Plastic Mid Back with Arm Chair', 'Colour	Pear Wood\r\nBrand	Nilkamal\r\nProduct Dimensions	69D x 71.5W x 76H Centimeters\r\nStyle	Contemporary\r\nMaterial	Plastic\r\nRecommended Uses For Product	Relaxing\r\nRoom Type	Living Room, Patio Garden\r\nFrame Material	Polypropylene', 650.00, 'uploads\\product-featured-114.jpg', 1, 0, '2023-03-09 12:34:10', '2023-03-10 15:46:42'),
(25, 3, 'Oppo', 'OPPO A16e mobile', 'Model Number : CPH2421\r\nModel Name:A16E\r\ncolor:Blue\r\nOperating System:Android 11\r\nProcessor Type:Mediatek Helio P22\r\nProcessor Core:Octa Cor\r\nInternal Storage:64 GB,RAM:4 GB\r\nExpandable Storage:1 TB', 15999.00, 'uploads\\product-featured-113.jpg', 1, 0, '2023-03-09 12:36:17', '2023-03-09 12:37:11'),
(26, 3, 'Oppo', 'OPPO A53 mobile', 'Model Number,Name :CPH2127 / CPH2139, A53\r\nOperating System:Android 10\r\nProcessor Type:Qualcomm Snapdragon 460\r\nProcessor Core:Octa Core\r\nPrimary Clock Speed:1.8 GHz\r\nSecondary Clock Speed:1.6 GHz\r\nInternal Storage:64 GB, 4GB RAM\r\nExpandable Storage:256\r\n', 11599.00, 'uploads/17.jpg', 1, 0, '2023-03-09 12:38:16', '2023-03-09 12:39:20'),
(27, 2, 'Whirlpool', 'Whirlpool 190 L 4 Star Inverter Single Door Refrigerator (WDE 205 PRM 4S INV, Wine Magnolia) ', 'Direct-cool refrigerator: 190 L with 4S Energy rating\r\nIntelliSense Inverter Technology, with energy efficient inverter compressors\r\nProvides upto 9 hours of cooling retention (in case of power cuts)\r\nHoney comb Lock-in to maintain optimum moisture in your vegetables\r\nManufacturer warranty: 1 year on product, 10 years on compressor\r\nShelf type: Spill proof toughened glass\r\nIncluded in the box: ‎‎1 Unit Refrigerator,1 User Manual, 1 Key & 2 removable adjustable legs', 45000.00, 'uploads\\product-featured-111.jpg', 1, 0, '2023-03-09 12:41:14', '2023-03-09 12:42:06'),
(28, 2, 'LG', 'LG 260L 3 Star Smart Inverter Frost-Free Double Door Refrigerator (GL-I292RPZX, Shiny Steel, Door Cooling+)', 'Frost free refrigerator: Auto defrost function to prevent ice-build up\r\nCapacity 260 L: Suitable for small families and bachelors I freezer capacity: 75L, fresh food capacity: 185L\r\nEnergy Rating: 3 Star\r\nWarranty: 1 year on product, 10 years on compressor\r\nSmart inverter compressor – energy efficient, less noise & more durable\r\nShelf Type: Trimless tempered Glass - no. of Shelves: 03 - TOP LED: Energy Efficient & Longer Life Span\r\nAlso included in the box: 1 Unit of Refrigerator and 1 Unit user manual', 30100.00, 'uploads\\product-featured-110.jpg', 1, 0, '2023-03-09 12:42:57', '2023-03-09 12:44:03'),
(29, 2, 'Crompton', 'Crompton Hill Briz Deco1200mm (48 inch) High Speed Designer Ceiling Fan (Ivory Gold)', 'PRODUCT: Crompton\'s Premion Aura Prime Technical Specifications: Sweep Size 1200 mm; Speed 380 RPM; Air Delivery 230 CMM; Input Power 74W; Regulator Compatible', 3740.00, 'uploads\\product-featured-109.jpg', 1, 0, '2023-03-09 12:44:55', '2023-03-09 12:46:12'),
(30, 2, 'Usha', 'Usha Mist Air ICY 400MM 55- Watt Table Fan (Blue)', 'Copper motor for longer performance;Unique pivot arrangement for easy tilting.Remote:No\r\nCorrosion protection with PP body and AS blades;Aerodynamic blade design for high air delivery\r\nAssurance of safety with fuse to auto protect during thermal overload;Sweep Size : 400MM, SPEED : 1280 RPM\r\nAir Delivery(M3/Min) : 67;Warranty: 2 Year Warranty; Power: 55 watts;Includes: 1 Fan Motor,1 Guard set, 1 blade set, 1 base,1 Instruction Manual, 1 Remote.\r\nMounting Type: Tabletop; Material Type: Plastic; Controller Type: Button Control\r\n', 2999.00, 'uploads\\product-featured-107.jpg', 1, 0, '2023-03-09 12:47:05', '2023-03-09 12:48:00'),
(31, 2, 'Bajaj', 'Bajaj Esteem 400 mm Pedestal Fan (White)', 'Sweep : 400mm, Power : 50W, Air Delivery : 70CMM, RPM: 1320;High Air Delivery : Improves the feel of air with high air delivery\r\nSilent operation : High efficiency minus the air cutting sound;High Speed : Provides high RPM\r\nOverload thermal protector : Acts as a fuse and protects the motor from damage;Full copper motor : Increases durability and provides robust performance\r\nMaterial Type: Acrylonitrile Butadiene Styrene; Mounting Type: Free Standing', 2599.00, 'uploads\\product-featured-106.jpg', 1, 0, '2023-03-09 12:48:57', '2023-03-09 12:51:04'),
(32, 2, 'Whirlpool', 'Whirlpool 8.5 Kg 5 Star Semi Automatic Top Loading Washing Machine(ACE 8.5 SPERSOAK, CORAL RED, 5YR)', 'SUPERSOAK TECHNOLOGY - Easy removal of tough dirt by continuous soaking and scrubbing action for 25 minutes\r\nNo of Wash Programs - 3 ( Delicate, Normal and Heavy)\r\nLint Filter: Available, Removes Loosened Lint from the Washtub\r\nRust Free and Corrosion Free Durable body\r\nMaximum spin speed of 1400 RPM for superior drying of clothes', 25000.00, 'uploads\\product-featured-105.jpg', 1, 0, '2023-03-09 12:54:52', '2023-03-09 12:56:14'),
(33, 2, 'Samsung', 'Samsung 8 Kg 5 Star Inverter Fully-Automatic Top Loading Washing Machine (WA80T4560BM/TL, Magnolia Plum, Activ Wash+ Technology)', 'Fully-automatic top load washing machine: Affordable with great wash quality, Easy to use\r\nCapacity 8 KG: Suitable for large families\r\n700 rpm: Higher spin speeds helps in faster drying\r\nNumber of wash program -9\r\nSpecial features: STS pulsator, STS drum type, 7 wash programs, 5 water level, digital LED, tempered glass window, Magic filter, diamond drum, water fall, built-in sink, magic dispenser, child lock, power spin, auto restart, eco tub clean', 21599.00, 'uploads/2.jpg', 1, 0, '2023-03-09 12:57:06', '2023-03-09 12:58:29');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `code` varchar(100) NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT '0.00',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `code`, `quantity`, `date_created`, `date_updated`) VALUES
(3, 3, 'ABC3', 26.00, '2023-02-03 10:25:40', '2023-03-09 14:55:18'),
(4, 4, 'ABC4', 15.00, '2023-02-03 10:26:03', '2023-03-09 14:55:30'),
(5, 5, 'ABC5', 23.00, '2023-02-03 10:26:22', '2023-03-09 14:55:42'),
(6, 6, 'ABC6', 26.00, '2023-02-03 10:26:34', '2023-03-09 14:55:58'),
(7, 7, 'ABC7', 9.00, '2023-02-03 10:26:48', '2023-03-09 14:56:13'),
(8, 8, 'ABC8', 18.00, '2023-02-03 10:27:04', '2023-03-09 14:56:34'),
(9, 2, 'ABC1', 30.00, '2023-03-09 11:42:05', '2023-03-09 11:42:05'),
(10, 1, 'ABC2', 20.00, '2023-03-09 11:44:25', '2023-03-09 11:44:25'),
(11, 9, 'ABC9', 12.00, '2023-03-09 12:01:45', '2023-03-09 12:01:45'),
(12, 10, 'ABC10', 20.00, '2023-03-09 12:03:39', '2023-03-09 12:03:39'),
(13, 11, 'ABC11', 15.00, '2023-03-09 12:05:08', '2023-03-09 12:05:17'),
(14, 12, 'ABC12', 20.00, '2023-03-09 12:07:39', '2023-03-09 12:07:39'),
(15, 13, 'ABC13', 6.00, '2023-03-09 12:09:27', '2023-03-09 12:09:27'),
(16, 14, 'ABC14', 14.00, '2023-03-09 12:11:10', '2023-03-09 12:11:10'),
(17, 15, 'ABC15', 15.00, '2023-03-09 12:13:01', '2023-03-09 12:13:01'),
(18, 16, 'ABC16', 17.00, '2023-03-09 12:15:21', '2023-03-09 12:15:21'),
(19, 17, 'ABC17', 20.00, '2023-03-09 12:17:09', '2023-03-09 12:17:09'),
(20, 18, 'ABC18', 23.00, '2023-03-09 12:18:55', '2023-03-09 12:18:55'),
(21, 19, 'ABC19', 10.00, '2023-03-09 12:21:16', '2023-03-09 12:21:16'),
(22, 20, 'ABC20', 20.00, '2023-03-09 12:23:11', '2023-03-09 12:23:11'),
(23, 21, 'ABC21', 8.00, '2023-03-09 12:25:33', '2023-03-09 12:25:33'),
(24, 22, 'ABC22', 12.00, '2023-03-09 12:27:10', '2023-03-09 12:27:10'),
(25, 23, 'ABC23', 15.00, '2023-03-09 12:32:14', '2023-03-09 12:32:14'),
(26, 24, 'ABC24', 50.00, '2023-03-09 12:34:25', '2023-03-09 12:34:25'),
(27, 25, 'ABC25', 20.00, '2023-03-09 12:36:32', '2023-03-09 12:36:32'),
(28, 26, 'ABC26', 20.00, '2023-03-09 12:38:31', '2023-03-09 12:38:31'),
(29, 27, 'ABC27', 20.00, '2023-03-09 12:41:31', '2023-03-09 12:41:31'),
(30, 28, 'ABC28', 25.00, '2023-03-09 12:43:14', '2023-03-09 12:43:14'),
(31, 29, 'ABC29', 21.00, '2023-03-09 12:45:10', '2023-03-09 12:45:10'),
(32, 30, 'ABC30', 30.00, '2023-03-09 12:47:24', '2023-03-09 12:47:24'),
(33, 31, 'ABC31', 16.00, '2023-03-09 12:49:29', '2023-03-09 12:49:29'),
(34, 32, 'ABC32', 15.00, '2023-03-09 12:55:12', '2023-03-09 12:55:12'),
(35, 33, 'ABC33', 12.00, '2023-03-09 12:57:40', '2023-03-09 12:57:40'),
(36, 1, 'ABC35', 25.00, '2023-03-13 09:34:38', '2023-03-13 09:34:38');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE `stock_out` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `stock_id` int(30) NOT NULL,
  `quantity` int(30) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Nivin Mobiles,Electronics & Furniture'),
(6, 'short_name', 'nivin mobiles'),
(11, 'logo', 'uploads/logo.png?v=1675042833'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/mob3.jpg'),
(17, 'phone', '8012520021'),
(18, 'mobile', '9944920021'),
(19, 'email', 'nivinmobiles@gmail.com'),
(20, 'address', 'Sivagiri main road,Ganapathipalayam,Erode-638153.');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', 'e6e061838856bf47e1de730719fb2609', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2023-02-04 14:02:37', '2023-05-03 14:28:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `inquiry_list`
--
ALTER TABLE `inquiry_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `stock_out`
--
ALTER TABLE `stock_out`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `customer_id_fk_cl` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_id_fk_cl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id_fk_oi` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `product_id_fk_oi` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `customer_id_fk_ol` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `product_id_fk_sl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD CONSTRAINT `order_id_fk_so` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION,
  ADD CONSTRAINT `stock_id_fk_so` FOREIGN KEY (`stock_id`) REFERENCES `stock_list` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
