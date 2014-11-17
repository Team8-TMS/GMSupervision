-- phpMyAdmin SQL Dump
-- version 4.2.7.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Nov 17, 2014 at 11:35 AM
-- Server version: 5.6.20
-- PHP Version: 5.5.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tms`
--

-- --------------------------------------------------------

--
-- Table structure for table `report`
--

CREATE TABLE IF NOT EXISTS `report` (
  `REPORTID` int(11) NOT NULL DEFAULT '0',
  `TID` int(11) NOT NULL,
  `ACTION` varchar(100) NOT NULL,
  `PERFORMED_BY` int(11) NOT NULL,
  `PERFORMED_NAME` varchar(30) NOT NULL,
  `PERFORMED_DATE` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `report`
--

INSERT INTO `report` (`REPORTID`, `TID`, `ACTION`, `PERFORMED_BY`, `PERFORMED_NAME`, `PERFORMED_DATE`) VALUES
(1, 3, 'action', 4, 'DBAdmin', '2112-09-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `report`
--
ALTER TABLE `report`
 ADD PRIMARY KEY (`REPORTID`), ADD KEY `USERID_idx` (`PERFORMED_BY`), ADD KEY `TID_idx` (`TID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `report`
--
ALTER TABLE `report`
ADD CONSTRAINT `TID` FOREIGN KEY (`TID`) REFERENCES `tournament` (`TID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
ADD CONSTRAINT `USERID` FOREIGN KEY (`PERFORMED_BY`) REFERENCES `user` (`USERID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
