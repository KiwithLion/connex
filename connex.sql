-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 31, 2023 at 07:34 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `connex`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin_login`
--

CREATE TABLE `admin_login` (
  `admin_ID` int(11) NOT NULL,
  `admin_Fname` varchar(255) NOT NULL,
  `admin_Type` varchar(10) NOT NULL,
  `admin_Email` varchar(100) NOT NULL,
  `admin_Phone` int(10) NOT NULL,
  `admin_Pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admin_login`
--

INSERT INTO `admin_login` (`admin_ID`, `admin_Fname`, `admin_Type`, `admin_Email`, `admin_Phone`, `admin_Pwd`) VALUES
(1, 'admin admin', 'Admin', 'admin@connex.com', 123456789, 'b3f654719b87291bb02722453bfe97ad'),
(2, 'Kyos Sensation', 'Admin', 'Kyossensation@connex.com', 113364300, '237a748373c38248eb25d90e8d339e38'),
(3, 'Kyos Sensation', 'Admin', 'Kyossensation@connex.com', 113364300, '237a748373c38248eb25d90e8d339e38'),
(4, 'Edwin Moloi', 'Admin', 'Edwinmoloi@gmail.com', 123456789, '52e2f193f187f3d46903f2b80a6096d7');

-- --------------------------------------------------------

--
-- Table structure for table `cart_order`
--

CREATE TABLE `cart_order` (
  `item_ID` int(11) NOT NULL,
  `user_Fname` varchar(255) NOT NULL,
  `item_itemID` varchar(100) NOT NULL,
  `item_Name` varchar(255) NOT NULL,
  `item_Price` varchar(100) NOT NULL,
  `item_Des` varchar(200) NOT NULL,
  `item_Image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `getnewpass`
--

CREATE TABLE `getnewpass` (
  `u_ID` int(11) NOT NULL,
  `user_Email` varchar(255) NOT NULL,
  `user_Newpass` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `getnewpass`
--

INSERT INTO `getnewpass` (`u_ID`, `user_Email`, `user_Newpass`) VALUES
(1, 'timbanks@gmail.com', 'oDtk9q0P9Y');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` varchar(200) NOT NULL,
  `price` varchar(200) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `stock` int(2) DEFAULT NULL,
  `status` varchar(200) DEFAULT NULL,
  `name` varchar(200) DEFAULT NULL,
  `img` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `price`, `description`, `stock`, `status`, `name`, `img`) VALUES
('424426', '1200.00', 'Need For Speed Play Station 5 Game', 6, 'Old', 'NEED FOR SPEED', 'need-for-speed-unbound-ps5.jpg'),
('446220', '21500.00', 'Dell Latitude,  Intel Core i7 1270p 12 Core 32GB Ram 512GB', 4, 'NEW', 'Dell Quad Core', 'dell-latitude-7430-14-fhd-ag-300-nits-intel-core-i7-1270p-12-core-32gb-ram-512gb-ssd-4-years-prosupport-win11-pro.jpg'),
('462315', '29900.00', 'ACER H7550ST PROJECTOR WITH 1080P RESOLUTION.', 2, 'New-Old', 'Acer Projector', 'acer-h7550st-projector-with-1080p-resolution-3000-ansi-brightness-vgahdmimhl-white.jpg'),
('462351', '13500.00', 'PICO 4 ALL-IN-ONE VR HEADSET 256GB - 6 FREE GAME BUNDLE', 3, 'New-Old', 'PICO 4', 'pico-4-all-in-one-vr-256gb-headset.jpg'),
('462589', '35000.00', 'ACER P6200 PROJECTOR, XGA RESOLUTION', 3, 'New-Old', 'ACER P6200', 'acer-p6200-projector-xga-resolution-vgamhl-connection-brightness-5000-ansi-contrast-200001-black.jpg'),
('463524', '8450.00', 'ACER C120 PROJECTOR, 480P RESOLUTION, 100 ANSI BRIGHTNESS, USB CONNECTION, LED, LAMP LIFE 20,000 H, BLACK', 3, 'New-Old', 'ACER C120 PROJECTOR', 'acer-c120-projector-480p-resolution-100-ansi-brightness-usb-connection-led-lamp-life-20000-h-black.jpg'),
('478965', '1790.00', 'Smatree META QUEST 2 OCULUS HEADSET AND CONTROLLER ', 2, 'Old', 'SMATREE META', 'smatree-meta-quest-2-oculus-quest-2-charging-dock-charge-oculus-quest-2-vr-headset-and-touch-controller.jpg'),
('526428', '5100.00', 'WAHOO FITNESS ELEMNT BOLT BIKE COMPUTER, UNISEX ADULT, BLACK', 3, 'New-Old', 'WAHOO Brand', 'wahoo-fitness-elemnt-bolt-bike-computer-unisex-adult-black.jpg'),
('562315', '34500.00', 'Canon EF 75-300mm F4-56 iii Telephoto Zoom Lens for CANON SLR Cameras', 3, 'New-Old', 'CANON Lens', 'canon-ef-75-300mm-f4-56-iii-telephoto-zoom-lens-for-canon-slr-cameras-.jpg'),
('596846', '39900.00', 'ACER PREDATOR GD711', 3, 'New-Old', 'ACER PREDATOR', 'acer-predator-gd711-projector-1450-ansi-dlp-2160p-3840x2160-3d-black.jpg'),
('636528', '30000.00', 'ACER COMPATIBLE PL1520I DLP 1080P P-4000m', 3, 'Old', 'ACER PL1520I PROJECTOR', 'acer-compatible-pl1520i-dlp-1080p-4000lm.jpg'),
('645289', '8450.00', 'BOSE SMART SOUNDBAR 900 WITH DOLBY ATMOS AND ALEXA VOICE ASSISTANT, BLACK', 3, 'New-Old', 'BOSE SMART', 'bose-smart-soundbar-900-with-dolby-atmos-and-alexa-voice-assistant-black.jpg'),
('708659', '13900.00', 'PICO 4 ALL-IN-ONE VR HEADSET 128GB - 6 FREE GAME BUNDLE', 3, 'New-Old', 'PICO 4', 'pico-4-all-in-one-vr-128gb-headset.jpg'),
('798659', '13900.00', 'PICO 4 ALL-IN-ONE VR HEADSET 128GB - 6 FREE GAME BUNDLE', 3, 'New-Old', 'PICO 4', 'pico-4-all-in-one-vr-128gb-headset.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `purchase_order`
--

CREATE TABLE `purchase_order` (
  `pur_ID` int(11) NOT NULL,
  `user_Name` varchar(255) NOT NULL,
  `pur_Totamount` varchar(100) NOT NULL,
  `pur_Address` varchar(200) NOT NULL,
  `pur_Slip` varchar(200) NOT NULL,
  `pur_orderID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `purchase_order`
--

INSERT INTO `purchase_order` (`pur_ID`, `user_Name`, `pur_Totamount`, `pur_Address`, `pur_Slip`, `pur_orderID`) VALUES
(1, 'Timothy Banks', '21500', 'Riaad Moosa Street', '============ CONNEX ============<br><br>Dell Latitude,  Intel Core i7 1270p 12 Core 32GB Ram 512GB ========= 21500.00 <br><br><br>Total R21500<br><br>=============<br>', 'yvchHSogYv');

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `user_ID` int(11) NOT NULL,
  `user_Fname` varchar(255) NOT NULL,
  `user_Email` varchar(100) NOT NULL,
  `user_Phone` int(10) NOT NULL,
  `user_Pwd` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`user_ID`, `user_Fname`, `user_Email`, `user_Phone`, `user_Pwd`) VALUES
(1, 'Kiwith Phetla', 'kiwithphetla@gmail.com', 847323617, 'a14136f43c192605ebd73a4652c5207e'),
(2, 'Timothy Banks', 'timbanks@gmail.com', 671012073, 'a24c296125c483d761cccfdfd0353cc7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin_login`
--
ALTER TABLE `admin_login`
  ADD PRIMARY KEY (`admin_ID`);

--
-- Indexes for table `cart_order`
--
ALTER TABLE `cart_order`
  ADD PRIMARY KEY (`item_ID`);

--
-- Indexes for table `getnewpass`
--
ALTER TABLE `getnewpass`
  ADD PRIMARY KEY (`u_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `purchase_order`
--
ALTER TABLE `purchase_order`
  ADD PRIMARY KEY (`pur_ID`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`user_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin_login`
--
ALTER TABLE `admin_login`
  MODIFY `admin_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `cart_order`
--
ALTER TABLE `cart_order`
  MODIFY `item_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `getnewpass`
--
ALTER TABLE `getnewpass`
  MODIFY `u_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `purchase_order`
--
ALTER TABLE `purchase_order`
  MODIFY `pur_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `user_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
