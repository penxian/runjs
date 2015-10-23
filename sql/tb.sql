-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2015-10-23 10:55:55
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tb`
--

-- --------------------------------------------------------

--
-- 表的结构 `code`
--

CREATE TABLE IF NOT EXISTS `code` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `codeName` varchar(50) NOT NULL COMMENT '代码名称',
  `code` text NOT NULL COMMENT '代码详细',
  `upVote` int(11) NOT NULL COMMENT '赞',
  `description` varchar(2000) NOT NULL COMMENT '代码表述',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `customers`
--

CREATE TABLE IF NOT EXISTS `customers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(11) NOT NULL,
  `email` varchar(11) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=11 ;

--
-- 转存表中的数据 `customers`
--

INSERT INTO `customers` (`id`, `name`, `email`, `mobile`) VALUES
(1, '1', '2', '3'),
(2, 'b', 'blueskyred2', 'b'),
(3, 'bbb', 'blueskyred2', 'blueskyred2'),
(4, 'b', 'bb', 'b\nb\nb\nb\nb\nb'),
(5, 'b', 'bb', '1\n2\n3\n4\n5\n6'),
(6, 'b', 'blueskyred2', 'b'),
(7, '1', '2', '3'),
(8, '', '', ''),
(9, '', '', ''),
(10, '1', '2', '3');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
