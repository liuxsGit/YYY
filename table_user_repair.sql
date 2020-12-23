-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- 主机： localhost
-- 生成日期： 2020-12-23 13:26:06
-- 服务器版本： 5.7.26
-- PHP 版本： 7.3.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 数据库： `pro`
--

-- --------------------------------------------------------

--
-- 表的结构 `table_user_repair`
--

CREATE TABLE `table_user_repair` (
  `repairID` int(11) NOT NULL,
  `repairType` int(40) NOT NULL,
  `roomID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `repairItem` varchar(1000) COLLATE utf8_unicode_ci NOT NULL,
  `repair_userID` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `repairDate` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `repairState` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- 转存表中的数据 `table_user_repair`
--

INSERT INTO `table_user_repair` (`repairID`, `repairType`, `roomID`, `repairItem`, `repair_userID`, `repairDate`, `repairState`) VALUES
(3, 1, '654', '年久失修', '36250', '2020-12-12', 1);

--
-- 转储表的索引
--

--
-- 表的索引 `table_user_repair`
--
ALTER TABLE `table_user_repair`
  ADD PRIMARY KEY (`repairID`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
