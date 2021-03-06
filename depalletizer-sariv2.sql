-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 11:25 AM
-- Server version: 10.1.10-MariaDB
-- PHP Version: 5.6.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `depalletizer-sariv2`
--

-- --------------------------------------------------------

--
-- Table structure for table `datacamera`
--

CREATE TABLE `datacamera` (
  `id` int(3) NOT NULL,
  `idCamera` varchar(255) NOT NULL,
  `timestamp` datetime DEFAULT NULL,
  `status` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `operation_task`
--

CREATE TABLE `operation_task` (
  `PrO` varchar(30) NOT NULL,
  `Operation` varchar(30) NOT NULL,
  `LOTRUN` varchar(30) NOT NULL,
  `LOTqty` varchar(30) NOT NULL,
  `SKUID` varchar(30) NOT NULL,
  `SKUName` varchar(30) NOT NULL,
  `PrOStatus` int(11) NOT NULL,
  `JobStatus` int(11) NOT NULL,
  `LotRunStatus` int(11) NOT NULL,
  `PreCheckStatus` int(11) NOT NULL,
  `DumpingProcess` int(11) NOT NULL,
  `MatId` int(11) NOT NULL,
  `Quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printer_job`
--

CREATE TABLE `printer_job` (
  `PrinterIP` varchar(15) DEFAULT NULL,
  `JobID` varchar(20) DEFAULT NULL,
  `Operation` varchar(50) DEFAULT NULL,
  `Template` varchar(50) DEFAULT NULL,
  `SKUDesc` varchar(50) DEFAULT NULL,
  `SKUId` int(11) DEFAULT NULL,
  `SSCC` varchar(50) DEFAULT NULL,
  `MaterialNumber` int(11) DEFAULT NULL,
  `MaterialDescription` varchar(50) DEFAULT NULL,
  `Batch` varchar(50) DEFAULT NULL,
  `UoM` varchar(50) DEFAULT NULL,
  `ExpiryDate` varchar(10) DEFAULT NULL,
  `MaterialSeqNo` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Variant` varchar(50) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Layers` varchar(50) DEFAULT NULL,
  `ProductionDate` varchar(10) DEFAULT NULL,
  `LotRun` varchar(50) DEFAULT NULL,
  `LineNo` int(11) DEFAULT NULL,
  `EAN13` varchar(13) DEFAULT NULL,
  `LOT` varchar(10) DEFAULT NULL,
  `LOTSequence` varchar(10) DEFAULT NULL,
  `PalletIdentifier` varchar(30) DEFAULT NULL,
  `TargetLocation` varchar(50) DEFAULT NULL,
  `OperId` varchar(30) DEFAULT NULL,
  `CreatedDateTime` varchar(30) DEFAULT NULL,
  `BagSequence` varchar(10) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `ProgressStatus` int(11) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `printer_job`
--

INSERT INTO `printer_job` (`PrinterIP`, `JobID`, `Operation`, `Template`, `SKUDesc`, `SKUId`, `SSCC`, `MaterialNumber`, `MaterialDescription`, `Batch`, `UoM`, `ExpiryDate`, `MaterialSeqNo`, `Quantity`, `Variant`, `Count`, `Layers`, `ProductionDate`, `LotRun`, `LineNo`, `EAN13`, `LOT`, `LOTSequence`, `PalletIdentifier`, `TargetLocation`, `OperId`, `CreatedDateTime`, `BagSequence`, `Status`, `Reason`, `Comments`, `ProgressStatus`) VALUES
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 1),
('10.6.255.11', '62729017_prep', 'LiquidsAssignBlending', 'BatchCompleteTemplate', 'Rooaxan A', 300084, '', 0, '', '', '', '', 0, 0, '', 0, '', '', '', 0, '', '1', '', '', 'PreBlendingMCA', 'sesa214355', '02-Nov-2017', '', 'Minor Completed', '', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbackup`
--

CREATE TABLE `tbackup` (
  `backupid` int(5) NOT NULL,
  `backupname` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `backuppath` varchar(100) NOT NULL,
  `userid` int(5) NOT NULL DEFAULT '0',
  `is_active` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Untuk Menyimpan LOG data Backup';

--
-- Dumping data for table `tbackup`
--

INSERT INTO `tbackup` (`backupid`, `backupname`, `create_date`, `backuppath`, `userid`, `is_active`) VALUES
(1, 'test backup', '2018-03-15 15:57:09', 'test', 1, 0),
(2, 'Backup 2', '2018-03-15 15:57:09', 'test', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_print`
--

CREATE TABLE `tbl_print` (
  `id` int(8) NOT NULL,
  `PrO` varchar(35) DEFAULT NULL,
  `LotSeq` varchar(5) DEFAULT NULL,
  `Number` varchar(10) DEFAULT NULL,
  `qty` varchar(6) DEFAULT NULL,
  `Batch` varchar(12) DEFAULT NULL,
  `productionDate` date DEFAULT NULL,
  `dataBarcode` varchar(20) DEFAULT NULL,
  `operationId` varchar(8) DEFAULT NULL,
  `expDate` date DEFAULT NULL,
  `BagSeq` varchar(10) DEFAULT NULL,
  `Linder` varchar(5) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Flag` int(2) DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_print`
--

INSERT INTO `tbl_print` (`id`, `PrO`, `LotSeq`, `Number`, `qty`, `Batch`, `productionDate`, `dataBarcode`, `operationId`, `expDate`, `BagSeq`, `Linder`, `Status`, `Flag`) VALUES
(1, '0001', '01/08', '301370', '25.00', '0000012345', '2018-01-09', '00123456789012345678', 'User01', '2018-01-09', '02/05', 'H', 'Good', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tconfig`
--

CREATE TABLE `tconfig` (
  `device_id` int(10) NOT NULL,
  `device_names` varchar(50) NOT NULL,
  `device_type` varchar(50) NOT NULL,
  `status` int(1) NOT NULL DEFAULT '0',
  `ip_address` varchar(50) NOT NULL,
  `port_number` varchar(20) NOT NULL,
  `serial_number` int(20) NOT NULL,
  `line_id` int(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tconfig`
--

INSERT INTO `tconfig` (`device_id`, `device_names`, `device_type`, `status`, `ip_address`, `port_number`, `serial_number`, `line_id`) VALUES
(1, 'Printer PALLETE', 'Label Printer', 1, '', '6101', 0, NULL),
(2, 'Printer BAG', 'Label Printer', 1, '192.168.0.102', '9100', 0, NULL),
(3, 'Camera VERIFICATION', 'Camera', 1, '192.168.0.103', '5106', 0, NULL),
(4, 'Printer BAG', 'Label Printer', 0, '192.168.26.101', '9100', 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tjob_101`
--

CREATE TABLE `tjob_101` (
  `PrinterIP` varchar(15) DEFAULT NULL,
  `JobID` varchar(20) DEFAULT NULL,
  `Operation` varchar(50) DEFAULT NULL,
  `Template` varchar(50) DEFAULT NULL,
  `SKUDesc` varchar(50) DEFAULT NULL,
  `SKUId` int(11) DEFAULT NULL,
  `SSCC` varchar(50) DEFAULT NULL,
  `MaterialNumber` int(11) DEFAULT NULL,
  `MaterialDescription` varchar(50) DEFAULT NULL,
  `Batch` varchar(50) DEFAULT NULL,
  `UoM` varchar(50) DEFAULT NULL,
  `ExpiryDate` varchar(10) DEFAULT NULL,
  `MaterialSeqNo` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  `Variant` varchar(50) DEFAULT NULL,
  `Count` int(11) DEFAULT NULL,
  `Layers` varchar(50) DEFAULT NULL,
  `ProductionDate` varchar(10) DEFAULT NULL,
  `LotRun` varchar(50) DEFAULT NULL,
  `LineNo` int(11) DEFAULT NULL,
  `EAN13` varchar(13) DEFAULT NULL,
  `LOT` varchar(10) DEFAULT NULL,
  `LOTSequence` varchar(10) DEFAULT NULL,
  `PalletIdentifier` varchar(30) DEFAULT NULL,
  `TargetLocation` varchar(50) DEFAULT NULL,
  `OperId` varchar(30) DEFAULT NULL,
  `CreatedDateTime` varchar(30) DEFAULT NULL,
  `BagSequence` varchar(10) DEFAULT NULL,
  `Status` varchar(50) DEFAULT NULL,
  `Reason` varchar(50) DEFAULT NULL,
  `Comments` varchar(50) DEFAULT NULL,
  `ProgressStatus` int(11) DEFAULT '0',
  `UpdateDate` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tjob_list`
--

CREATE TABLE `tjob_list` (
  `job_id` int(11) NOT NULL,
  `job_name` varchar(50) NOT NULL,
  `create_date` datetime NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `job_desc` varchar(255) DEFAULT NULL,
  `job_status` int(1) NOT NULL DEFAULT '0',
  `deleted_job` char(1) NOT NULL DEFAULT 'f'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tjob_list`
--

INSERT INTO `tjob_list` (`job_id`, `job_name`, `create_date`, `update_date`, `job_desc`, `job_status`, `deleted_job`) VALUES
(101, 'Job Coba 1', '2018-03-19 04:44:14', '2018-03-19 04:44:14', 'Job saat ini digunakan untuk melakukan depalletizer line 1 Susu', 0, 'f');

-- --------------------------------------------------------

--
-- Table structure for table `tpallete`
--

CREATE TABLE `tpallete` (
  `pallete_id` int(15) NOT NULL,
  `pallete_number` int(1) NOT NULL DEFAULT '0',
  `create_date` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_date` datetime DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `line_id` int(1) NOT NULL,
  `job_id` int(1) NOT NULL,
  `qty` int(5) NOT NULL DEFAULT '0',
  `pallete_status` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tpallete`
--

INSERT INTO `tpallete` (`pallete_id`, `pallete_number`, `create_date`, `update_date`, `line_id`, `job_id`, `qty`, `pallete_status`) VALUES
(122226789, 4, '0000-00-00 00:00:00', NULL, 0, 101, 0, 0),
(122256789, 3, '2018-03-08 17:57:41', '2018-03-08 17:57:41', 0, 101, 0, 0),
(122456789, 2, '2018-03-08 17:57:27', '2018-03-08 17:57:27', 0, 101, 0, 0),
(123456789, 1, '0000-00-00 00:00:00', NULL, 0, 101, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `trole`
--

CREATE TABLE `trole` (
  `roleid` int(5) NOT NULL,
  `rolename` varchar(50) NOT NULL,
  `is_active` int(50) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Untuk Menyimpan Data Role';

--
-- Dumping data for table `trole`
--

INSERT INTO `trole` (`roleid`, `rolename`, `is_active`) VALUES
(801, 'Manager', 0),
(802, 'Supervisor', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tuser`
--

CREATE TABLE `tuser` (
  `userid` int(5) NOT NULL,
  `username` varchar(50) NOT NULL,
  `pin` int(8) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `roleid` int(5) NOT NULL,
  `contact` bigint(13) DEFAULT NULL,
  `is_active` int(1) NOT NULL DEFAULT '0',
  `is_login` int(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COMMENT='Untuk Menyimpan Data User';

--
-- Dumping data for table `tuser`
--

INSERT INTO `tuser` (`userid`, `username`, `pin`, `firstname`, `lastname`, `roleid`, `contact`, `is_active`, `is_login`) VALUES
(1, 'risa', 12345678, 'Risa', 'Aprilia', 801, 6281573071855, 0, 1),
(2, 'galih', 87654321, 'Galih Ayu', 'Kinanti', 802, 6282117051958, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `datacamera`
--
ALTER TABLE `datacamera`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbackup`
--
ALTER TABLE `tbackup`
  ADD PRIMARY KEY (`backupid`);

--
-- Indexes for table `tbl_print`
--
ALTER TABLE `tbl_print`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tconfig`
--
ALTER TABLE `tconfig`
  ADD PRIMARY KEY (`device_id`,`serial_number`);

--
-- Indexes for table `tjob_list`
--
ALTER TABLE `tjob_list`
  ADD PRIMARY KEY (`job_id`);

--
-- Indexes for table `tpallete`
--
ALTER TABLE `tpallete`
  ADD PRIMARY KEY (`pallete_id`);

--
-- Indexes for table `trole`
--
ALTER TABLE `trole`
  ADD PRIMARY KEY (`roleid`,`rolename`);

--
-- Indexes for table `tuser`
--
ALTER TABLE `tuser`
  ADD PRIMARY KEY (`userid`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `datacamera`
--
ALTER TABLE `datacamera`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbackup`
--
ALTER TABLE `tbackup`
  MODIFY `backupid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_print`
--
ALTER TABLE `tbl_print`
  MODIFY `id` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tjob_list`
--
ALTER TABLE `tjob_list`
  MODIFY `job_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=156;
--
-- AUTO_INCREMENT for table `trole`
--
ALTER TABLE `trole`
  MODIFY `roleid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=803;
--
-- AUTO_INCREMENT for table `tuser`
--
ALTER TABLE `tuser`
  MODIFY `userid` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
