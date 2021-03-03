-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 13, 2021 at 05:51 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tc_assets_management`
--

-- --------------------------------------------------------

--
-- Table structure for table `am_assets`
--

CREATE TABLE `am_assets` (
  `asset_id` varchar(50) NOT NULL,
  `asset_type` int(11) NOT NULL,
  `asset_brand` varchar(50) NOT NULL,
  `asset_serialnumber` varchar(50) NOT NULL,
  `MAC_address` varchar(50) NOT NULL,
  `asset_configuration` varchar(255) NOT NULL,
  `asset_description` varchar(255) NOT NULL,
  `asset_count` int(11) NOT NULL,
  `asset_warranty_start` date NOT NULL,
  `asset_warranty_end` date NOT NULL,
  `image` varchar(255) NOT NULL,
  `asset_cost` int(11) NOT NULL,
  `asset_amc` varchar(5) NOT NULL,
  `asset_amc_provider` varchar(50) NOT NULL,
  `asset_cat` int(11) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `del_reason` varchar(100) NOT NULL,
  `del_description` varchar(255) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_assets`
--

INSERT INTO `am_assets` (`asset_id`, `asset_type`, `asset_brand`, `asset_serialnumber`, `MAC_address`, `asset_configuration`, `asset_description`, `asset_count`, `asset_warranty_start`, `asset_warranty_end`, `image`, `asset_cost`, `asset_amc`, `asset_amc_provider`, `asset_cat`, `L_del`, `del_reason`, `del_description`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(' SVM-IN-2021-0014', 2, '17', '', '', '', 'Employee Chairs', 8, '1970-01-01', '1970-01-01', 'chair.jpg', 5000, '', '', 2, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:29:39', '2021-01-12 15:29:39'),
(' SVM-IT-2021-0001', 1, '7', 'PF2DN38A  ', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500SSD	8GB RAM	I5	10G', 'Ideapad 3', 0, '1970-01-01', '1970-01-01', 'srikanth.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:10:52', '2021-01-12 15:10:52'),
(' SVM-IT-2021-0002', 1, '7', 'PF252Z2E', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500 SSD	8GB RAM	I5	10G', 'Ideapad 3', 0, '1970-01-01', '1970-01-01', 'VL Prasanna CH.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:12:27', '2021-01-12 15:12:27'),
(' SVM-IT-2021-0003', 1, '7', 'R90Z97Z9', '5E-3A-45-E4-81-BB ', 'LENOVO  Ideapad Flex 5	256 SSD	4GB RAM	I3	10G', 'Ideapad', 0, '1970-01-01', '1970-01-01', 'veeresh CH.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:13:41', '2021-01-12 15:13:41'),
(' SVM-IT-2021-0004', 1, '7', 'PF2432WZ5', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500 SSD	8GB RAM	I5	10G', 'Idepad', 0, '1970-01-01', '1970-01-01', 't sai.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:14:53', '2021-01-12 15:14:53'),
(' SVM-IT-2021-0005', 1, '7', 'PF2444H7', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500 SSD	8GB RAM	I5	10G', 'Ideapad', 0, '1970-01-01', '1970-01-01', 'shabbir (1).jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:15:35', '2021-01-12 15:15:35'),
(' SVM-IT-2021-0006', 1, '7', 'PF19CPG0', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500 SSD	8GB RAM	I5	10G', 'Ideapad', 0, '1970-01-01', '1970-01-01', 'saikrishna.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:16:18', '2021-01-12 15:16:18'),
(' SVM-IT-2021-0007', 1, '8', 'PF19CPG0', '1234.4567.6789 ', 'DELL	500 SSD	8GB RAM	I3	10G', 'DELL', 0, '1970-01-01', '1970-01-01', 'sai ramarao.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:16:58', '2021-01-12 15:16:58'),
(' SVM-IT-2021-0008', 1, '8', 'DCNS863', '1234.4567.6789 ', 'DELL INSPIRON 5502	500SSD	16GB RAM	I5	11G', 'INSPIRON', 0, '1970-01-01', '1970-01-01', 'kishan.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:17:45', '2021-01-12 15:17:45'),
(' SVM-IT-2021-0009', 1, '7', 'PF22JM7X', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500SSD	8GB RAM	I5	10G', 'Ideapad', 0, '1970-01-01', '1970-01-01', 'Phanilakshman CH.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:18:32', '2021-01-12 15:18:32'),
(' SVM-IT-2021-0010', 1, '7', 'PF22JVLA', '1234.4567.6789 ', 'LENOVO  Ideapad 3	500SSD	8GB RAM	IG	10G', 'Ideapad', 0, '1970-01-01', '1970-01-01', 'madhavi.jpg', 50000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:19:12', '2021-01-12 15:19:12'),
(' SVM-IT-2021-0011', 4, '9', 'VNC4B00187', '84-2a-fd-77-74-86 ', 'HP Laser Jet Pro MFP M183fe', 'COLOR PRINT', 0, '1970-01-01', '1970-01-01', '', 15000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:21:06', '2021-01-12 15:21:06'),
(' SVM-IT-2021-0012', 4, '9', 'CNDKN6T0XY', 'b0:5c:da:6b:2d:d1 ', 'HP Laser Jet Pro MFP M521dn', 'BLACK & WHITE', 0, '1970-01-01', '1970-01-01', '', 25000, '', '', 1, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:22:55', '2021-01-12 15:22:55'),
(' SVM-IT-2021-0013', 5, '10', '2209489004651', 'E4-C3-2A-47-BD-69 ', 'TP LINK AC 1200', 'TP LINK AC 1200', 0, '1970-01-01', '1970-01-01', '', 25000, '', '', 1, '', '1', 'boken', 'admin@gmail.com', '', '2021-01-12 15:25:32', '2021-01-12 15:25:32'),
('SVM-OT-2021-0015', 3, '15', '', '', '', 'Employee Pen', 10, '1970-01-01', '1970-01-01', 'pen.jpg', 10, '', '', 3, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:30:15', '2021-01-12 15:30:15'),
('SVM-OT-2021-0016', 6, '14', '', '', '', 'Notepads', 10, '1970-01-01', '1970-01-01', 'notepad.jpg', 20, '', '', 3, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:34:32', '2021-01-12 15:34:32'),
('SVM-OT-2021-0017', 7, '18', '', '', '', 'Water bottles', 20, '1970-01-01', '1970-01-01', 'bottles.jpg', 19, '', '', 3, '', '', '', 'admin@gmail.com', '', '2021-01-12 15:40:15', '2021-01-12 15:40:15');

-- --------------------------------------------------------

--
-- Table structure for table `am_asset_types`
--

CREATE TABLE `am_asset_types` (
  `id` int(11) NOT NULL,
  `asset_type` varchar(50) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_asset_types`
--

INSERT INTO `am_asset_types` (`id`, `asset_type`, `cat_name`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Laptop', 'IT', '', '', '', '2021-01-12 14:35:45', '2021-01-12 14:35:45'),
(2, 'Chair', 'Infrastructure', '', '', '', '2021-01-12 14:36:01', '2021-01-12 14:36:01'),
(3, 'Pen', 'Other', '', '', '', '2021-01-12 14:36:24', '2021-01-12 14:36:24'),
(4, 'Printer', 'IT', '', '', '', '2021-01-12 15:20:08', '2021-01-12 15:20:08'),
(5, 'WIFI-ROUTER', 'IT', '', '', '', '2021-01-12 15:24:06', '2021-01-12 15:24:06'),
(6, 'Notepad', 'Other', '', '', '', '2021-01-12 15:28:00', '2021-01-12 15:28:00'),
(7, 'Water Bottle', 'Other', '', '', '', '2021-01-12 15:39:42', '2021-01-12 15:39:42'),
(8, '', 'IT', 'Y', '', '', '2021-01-12 16:49:57', '2021-01-12 16:49:57'),
(9, 'Mouse', 'IT', '', '', '', '2021-01-12 16:50:09', '2021-01-12 16:50:09');

-- --------------------------------------------------------

--
-- Table structure for table `am_assign`
--

CREATE TABLE `am_assign` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `asset_id` varchar(50) NOT NULL,
  `asset_type` int(11) NOT NULL,
  `asset_cat` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_assign`
--

INSERT INTO `am_assign` (`id`, `emp_id`, `asset_id`, `asset_type`, `asset_cat`, `description`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(2, 'S0002 ', ' SVM-IT-2021-0002', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:42:18', '2021-01-12 15:42:18'),
(3, 'S0003 ', ' SVM-IT-2021-0003', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:42:26', '2021-01-12 15:42:26'),
(4, 'S0004 ', ' SVM-IT-2021-0004', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:42:33', '2021-01-12 15:42:33'),
(5, 'S0005 ', ' SVM-IT-2021-0005', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:42:41', '2021-01-12 15:42:41'),
(6, 'S0006 ', ' SVM-IT-2021-0006', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:42:50', '2021-01-12 15:42:50'),
(7, 'S0007 ', ' SVM-IT-2021-0007', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:43:03', '2021-01-12 15:43:03'),
(8, 'S0008 ', ' SVM-IT-2021-0008', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:43:14', '2021-01-12 15:43:14'),
(9, 'S0009 ', ' SVM-IT-2021-0009', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:43:24', '2021-01-12 15:43:24'),
(10, 'S0010 ', ' SVM-IT-2021-0010', 1, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:43:34', '2021-01-12 15:43:34'),
(11, 'S0003 ', ' SVM-IT-2021-0011', 4, 1, '', '', 'admin@gmail.com', '', '2021-01-12 15:44:08', '2021-01-12 15:44:08'),
(13, 'S0003 ', ' SVM-IT-2021-0012', 4, 1, '', '', 'admin@gmail.com', '', '2021-01-12 17:05:25', '2021-01-12 17:05:25'),
(19, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(20, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(21, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(22, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(23, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(24, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(25, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(26, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(27, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(28, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(29, '', 'SVM-OT-2021-0015', 3, 3, 'in', '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `am_assign_history`
--

CREATE TABLE `am_assign_history` (
  `id` int(11) NOT NULL,
  `emp_id` varchar(255) NOT NULL,
  `asset_id` varchar(50) NOT NULL,
  `asset_type` int(11) NOT NULL,
  `asset_cat` int(11) NOT NULL,
  `description` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_assign_history`
--

INSERT INTO `am_assign_history` (`id`, `emp_id`, `asset_id`, `asset_type`, `asset_cat`, `description`, `status`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'S0001 ', ' SVM-IT-2021-0001', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:41:56', '2021-01-12 15:41:56'),
(2, 'S0002 ', ' SVM-IT-2021-0002', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:42:18', '2021-01-12 15:42:18'),
(3, 'S0003 ', ' SVM-IT-2021-0003', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:42:26', '2021-01-12 15:42:26'),
(4, 'S0004 ', ' SVM-IT-2021-0004', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:42:33', '2021-01-12 15:42:33'),
(5, 'S0005 ', ' SVM-IT-2021-0005', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:42:41', '2021-01-12 15:42:41'),
(6, 'S0006 ', ' SVM-IT-2021-0006', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:42:50', '2021-01-12 15:42:50'),
(7, 'S0007 ', ' SVM-IT-2021-0007', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:43:03', '2021-01-12 15:43:03'),
(8, 'S0008 ', ' SVM-IT-2021-0008', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:43:14', '2021-01-12 15:43:14'),
(9, 'S0009 ', ' SVM-IT-2021-0009', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:43:24', '2021-01-12 15:43:24'),
(10, 'S0010 ', ' SVM-IT-2021-0010', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:43:34', '2021-01-12 15:43:34'),
(11, 'S0003 ', ' SVM-IT-2021-0011', 4, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 15:44:08', '2021-01-12 15:44:08'),
(12, 'S0001', ' SVM-IT-2021-0001 ', 1, 1, '', 0, '', 'admin@gmail.com', '', '2021-01-12 16:54:52', '2021-01-12 16:54:52'),
(13, 'S0001 ', ' SVM-IT-2021-0001', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 17:03:23', '2021-01-12 17:03:23'),
(14, 'S0003 ', ' SVM-IT-2021-0012', 4, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 17:05:25', '2021-01-12 17:05:25'),
(15, 'S0001', ' SVM-IT-2021-0001 ', 1, 1, '', 0, '', 'admin@gmail.com', '', '2021-01-12 17:08:59', '2021-01-12 17:08:59'),
(16, 'S0002 ', ' SVM-IT-2021-0001', 1, 1, '', 1, '', 'admin@gmail.com', '', '2021-01-12 17:09:26', '2021-01-12 17:09:26'),
(17, 'S0002', ' SVM-IT-2021-0001 ', 1, 1, '', 0, '', 'admin@gmail.com', '', '2021-01-12 17:11:38', '2021-01-12 17:11:38'),
(18, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', 1, '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(19, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', 1, '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(20, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', 1, '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(21, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', 1, '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(22, '', ' SVM-IN-2021-0014', 2, 2, 'new chairs', 1, '', 'admin@gmail.com', '', '2021-01-12 17:12:32', '2021-01-12 17:12:32'),
(23, '', ' SVM-IN-2021-0014', 2, 2, 'unassign', 0, '', 'admin@gmail.com', '', '2021-01-12 17:21:44', '2021-01-12 17:21:44'),
(24, '', ' SVM-IN-2021-0014', 2, 2, 'unassign', 0, '', 'admin@gmail.com', '', '2021-01-12 17:21:44', '2021-01-12 17:21:44'),
(25, '', ' SVM-IN-2021-0014', 2, 2, 'unassign', 0, '', 'admin@gmail.com', '', '2021-01-12 17:21:44', '2021-01-12 17:21:44'),
(26, '', ' SVM-IN-2021-0014', 2, 2, 'chair damaged', 2, '', 'admin@gmail.com', '', '2021-01-12 17:22:42', '2021-01-12 17:22:42'),
(27, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(28, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(29, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(30, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(31, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(32, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(33, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(34, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(35, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14'),
(36, '', 'SVM-OT-2021-0015', 3, 3, 'in', 1, '', 'admin@gmail.com', '', '2021-01-12 17:27:14', '2021-01-12 17:27:14');

-- --------------------------------------------------------

--
-- Table structure for table `am_brand`
--

CREATE TABLE `am_brand` (
  `id` int(11) NOT NULL,
  `brand` text NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp(),
  `cat_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_brand`
--

INSERT INTO `am_brand` (`id`, `brand`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`, `cat_name`) VALUES
(1, 'lenovo', 'Y', '', '', '2021-01-12 14:36:54', '2021-01-12 14:36:54', 'IT'),
(2, 'dell', 'Y', '', '', '2021-01-12 14:37:00', '2021-01-12 14:37:00', 'IT'),
(3, 'NEELKAMAL', 'Y', '', '', '2021-01-12 14:37:14', '2021-01-12 14:37:14', 'Infrastructure'),
(4, 'IKEA', 'Y', '', '', '2021-01-12 14:37:26', '2021-01-12 14:37:26', 'IT'),
(5, 'CELLO', 'Y', '', '', '2021-01-12 14:37:42', '2021-01-12 14:37:42', 'Other'),
(6, 'techo tip', 'Y', '', '', '2021-01-12 14:38:08', '2021-01-12 14:38:08', 'IT'),
(7, 'Lenovo', '', '', '', '2021-01-12 15:04:20', '2021-01-12 15:04:20', 'IT'),
(8, 'Dell', '', '', '', '2021-01-12 15:04:23', '2021-01-12 15:04:23', 'IT'),
(9, 'HP', '', '', '', '2021-01-12 15:20:26', '2021-01-12 15:20:26', 'IT'),
(10, 'TP-LINK', '', '', '', '2021-01-12 15:23:46', '2021-01-12 15:23:46', 'IT'),
(11, 'IKEA', 'Y', '', '', '2021-01-12 15:26:07', '2021-01-12 15:26:07', 'Infrastructure'),
(12, 'NEELKAMAL', 'Y', '', '', '2021-01-12 15:26:17', '2021-01-12 15:26:17', 'Infrastructure'),
(13, 'CELLO', 'Y', '', '', '2021-01-12 15:26:31', '2021-01-12 15:26:31', 'Other'),
(14, 'Komal', '', '', '', '2021-01-12 15:26:39', '2021-01-12 15:26:39', 'Other'),
(15, 'Cello', '', '', '', '2021-01-12 15:27:07', '2021-01-12 15:27:07', 'Other'),
(16, 'Nilkamal', '', '', '', '2021-01-12 15:27:22', '2021-01-12 15:27:22', 'Infrastructure'),
(17, 'Ikea', '', '', '', '2021-01-12 15:27:30', '2021-01-12 15:27:30', 'Infrastructure'),
(18, 'Jolly', '', '', '', '2021-01-12 15:39:27', '2021-01-12 15:39:27', 'Other'),
(19, 'Voltas', '', '', '', '2021-01-12 16:51:20', '2021-01-12 16:51:20', 'Infrastructure');

-- --------------------------------------------------------

--
-- Table structure for table `am_categories`
--

CREATE TABLE `am_categories` (
  `id` int(11) NOT NULL,
  `cat_name` varchar(255) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_categories`
--

INSERT INTO `am_categories` (`id`, `cat_name`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'IT', '', 'admin@gmail.com', '', '2021-01-12 14:40:13', '2021-01-12 14:40:13'),
(2, 'Infrastructure', '', 'admin@gmail.com', '', '2021-01-12 14:40:13', '2021-01-12 14:40:13'),
(3, 'Other', '', 'admin@gmail.com', '', '2021-01-12 14:40:13', '2021-01-12 14:40:13');

-- --------------------------------------------------------

--
-- Table structure for table `am_delete_reason`
--

CREATE TABLE `am_delete_reason` (
  `id` int(11) NOT NULL,
  `delete_reason` varchar(255) NOT NULL,
  `delete_description` varchar(255) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `am_delete_reason`
--

INSERT INTO `am_delete_reason` (`id`, `delete_reason`, `delete_description`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'Damaged', '', '', '', '', '2021-01-12 14:44:08', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `am_login`
--

CREATE TABLE `am_login` (
  `id` int(11) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `am_login`
--

INSERT INTO `am_login` (`id`, `email`, `password`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
(1, 'admin@gmail.com', '$2y$10$Etm/uNZJtgzLoQ4kP4ecpeZOoBPvChoGs1SbEQmouroJe7D2572/O', '', '', '', '2021-01-12 13:17:47', '2021-01-12 13:17:47'),
(2, 'invoker@gmail.com', '$2y$10$g64lwFvW2ul/DwkKaWOBZOP2HQOBTHKPKFmO23e0SxG62mEzvDsk2', '', '', '', '2021-01-12 16:06:40', '2021-01-12 16:06:40'),
(3, 'storm@gmail.com', '$2y$10$wIIRU2YjDgTMpvDW9EQDdOuDWPJcX0U7J.76hpnxq7l49o8XM/NDO', '', '', '', '2021-01-12 16:31:28', '2021-01-12 16:31:28');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `emp_id` varchar(50) NOT NULL,
  `first_name` varchar(50) NOT NULL,
  `middle_name` varchar(50) NOT NULL,
  `last_name` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `DOB` date NOT NULL,
  `phone_number` bigint(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `image` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `nationality` varchar(20) NOT NULL,
  `blood_group` varchar(10) NOT NULL,
  `designation` varchar(50) NOT NULL,
  `DOJ` date NOT NULL,
  `experience` varchar(25) NOT NULL,
  `skills` varchar(255) NOT NULL,
  `emp_status` varchar(50) NOT NULL,
  `L_del` varchar(5) NOT NULL,
  `created_by` varchar(50) NOT NULL,
  `updated_by` varchar(50) NOT NULL,
  `created_at` datetime NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`emp_id`, `first_name`, `middle_name`, `last_name`, `gender`, `DOB`, `phone_number`, `email`, `image`, `address`, `nationality`, `blood_group`, `designation`, `DOJ`, `experience`, `skills`, `emp_status`, `L_del`, `created_by`, `updated_by`, `created_at`, `updated_at`) VALUES
('S0001', 'SRIKANTH', '', 'TIRUMALA KANDURI', 'Male', '1977-12-31', 8639146613, 'srikanth@sreenivasaminfotech.com', 'Srikanth_pic.jpg', 'Hari Hara Hanuma Apartments,Flat No:206,Sai Krishna Colony Plot No 59-64,Pragathi Nagar,Bachupally,Hyderabad-500090', 'INDIAN', 'B+', 'DIRECTOR OPERATIONS', '2020-12-01', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 14:43:47', '2021-01-12 14:43:47'),
('S0002', 'LAKSHMI PRASANNA', '', 'VALLURI', 'Female', '1967-04-09', 8897976666, 'vlprasanna@sreenivasaminfotech.com', 'VL Prasanna_pic.jpg', 'Plot No-160 Mythry Nilayam,kalyan nagar phase 3,hyderabad-500018.', 'INDIAN', 'AB+', 'DIRECTOR CORPORATE SERVICES', '2020-12-01', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 14:49:48', '2021-01-12 14:49:48'),
('S0003', 'VEERESH', '', 'BESTHA', 'Male', '1991-06-20', 9959133637, 'veeresh.b@sreenivasaminfotech.com', 'Veeresh_pic.jpg', 'Plot No-160 Mythry Nilayam,kalyan nagar phase 3,hyderabad-500018.', 'INDIAN', 'O+', 'SYSTEM ADMIN ', '2020-12-01', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 14:52:45', '2021-01-12 14:52:45'),
('S0004', 'VENKATASAI ', 'MOHANKRISHNA', 'THATAVARTI', 'Male', '1996-07-29', 9704138080, 'sai.t@sreenivasaminfotech.com', 'T Sai_pic.jpg', 'S.U.M MENS PG,ROAD NUMBER-4,AYYAPPA SOCIETY,MADHAPUR,HYDERABAD', 'INDIAN', 'O+', 'SOFTWARE ENGINEER', '2020-12-01', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 14:55:35', '2021-01-12 14:55:35'),
('S0005', 'SHABBIR', 'KHAZI MD', 'HUSSAIN', 'Male', '1997-01-21', 8919665330, 'shabbir.hussain@sreenivasaminfotech.com', 'Shabbir_pic.jpg', 'H.No:12-2-828/A/8, Amba Gardens, Mehdipatnam, Hyderabad-500028', 'INDIAN', 'O+', 'SOFTWARE ENGINEER', '2020-12-01', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:03:36', '2021-01-12 15:03:36'),
('S0006', 'SAI KRISHNA', '', 'CHILLALE', 'Male', '1995-08-27', 9701538389, 'saikrishna.c@sreenivasaminfotech.com', 'sai krishna_pic.jpg', 'H NO: 2-1-557 FIRST FLOOR. STREET NO 10, HYDERABAD- 500044', 'INDIAN', 'O-', 'SOFTWARE ENGINEER', '2020-12-04', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:06:57', '2021-01-12 15:06:57'),
('S0007', 'SAI RAMA RAO', '', 'PENDYALA', 'Male', '1998-08-13', 7093266174, 'sairamarao.p@sreenivasaminfotech.com', 'Sai Ramarao_pic.jpg', 'S.U.M MENS PG,ROAD NUMBER-4,AYYAPPA SOCIETY,MADHAPUR,HYDERABAD', 'INDIAN', 'AB+', 'SOFTWARE ENGINEER', '2020-12-07', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:10:23', '2021-01-12 15:10:23'),
('S0008', 'SRINIVAS', 'KISHAN', 'ANNAPU', 'Male', '1967-12-21', 9959955077, 'kishan.a@sreenivasaminfotech.com', 'A Srinivas Kishan_pic.jpg', 'FLAT 601,5K LANE,PANCHAVATI COLONY,HYDERABAD-500081', 'INDIAN', 'A+', 'CHIEF TECHNOLOGY OFFICER', '2020-12-17', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:15:58', '2021-01-12 15:15:58'),
('S0009', 'PHANILAKSHMAN ', '', 'BANDARU', 'Male', '1995-10-21', 9490354925, 'phanilakshman1995@gmail.com', 'Phanilakshman_pic.jpg', 'gayathri nagar  near hariharadi temple,hyderabad-500081', 'INDIAN', 'AB-', 'SOFTWARE ENGINEER', '2020-12-21', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:20:06', '2021-01-12 15:20:06'),
('S0010', 'MADHAVI', '', 'DANTULURI', 'Female', '1983-06-19', 7993901991, 'madhavi.d@sreenivasaminfotech.com', 'Madhavi_pic.jpg', 'New Prashanth Nagar,Miyapur,Hyderabad-500049', 'INDIAN', 'O+', 'DEVELOPMENT LEAD', '2020-12-21', '', '', 'Working', '', 'admin@gmail.com', '', '2021-01-12 15:24:13', '2021-01-12 15:24:13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `am_assets`
--
ALTER TABLE `am_assets`
  ADD PRIMARY KEY (`asset_id`);

--
-- Indexes for table `am_asset_types`
--
ALTER TABLE `am_asset_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_assign`
--
ALTER TABLE `am_assign`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_id` (`asset_id`),
  ADD KEY `asset_cat` (`asset_cat`),
  ADD KEY `asset_type` (`asset_type`);

--
-- Indexes for table `am_assign_history`
--
ALTER TABLE `am_assign_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `asset_id` (`asset_id`),
  ADD KEY `asset_type` (`asset_type`),
  ADD KEY `asset_cat` (`asset_cat`);

--
-- Indexes for table `am_brand`
--
ALTER TABLE `am_brand`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_categories`
--
ALTER TABLE `am_categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_delete_reason`
--
ALTER TABLE `am_delete_reason`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `am_login`
--
ALTER TABLE `am_login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`emp_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `am_asset_types`
--
ALTER TABLE `am_asset_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `am_assign`
--
ALTER TABLE `am_assign`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `am_assign_history`
--
ALTER TABLE `am_assign_history`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `am_brand`
--
ALTER TABLE `am_brand`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `am_categories`
--
ALTER TABLE `am_categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `am_delete_reason`
--
ALTER TABLE `am_delete_reason`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `am_login`
--
ALTER TABLE `am_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `am_assign`
--
ALTER TABLE `am_assign`
  ADD CONSTRAINT `am_assign_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `am_assets` (`asset_id`),
  ADD CONSTRAINT `am_assign_ibfk_2` FOREIGN KEY (`asset_cat`) REFERENCES `am_categories` (`id`),
  ADD CONSTRAINT `am_assign_ibfk_3` FOREIGN KEY (`asset_type`) REFERENCES `am_asset_types` (`id`);

--
-- Constraints for table `am_assign_history`
--
ALTER TABLE `am_assign_history`
  ADD CONSTRAINT `am_assign_history_ibfk_1` FOREIGN KEY (`asset_id`) REFERENCES `am_assets` (`asset_id`),
  ADD CONSTRAINT `am_assign_history_ibfk_2` FOREIGN KEY (`asset_type`) REFERENCES `am_asset_types` (`id`),
  ADD CONSTRAINT `am_assign_history_ibfk_3` FOREIGN KEY (`asset_cat`) REFERENCES `am_categories` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
