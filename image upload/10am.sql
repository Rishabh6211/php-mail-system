-- phpMyAdmin SQL Dump
-- version 3.3.9
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Feb 23, 2013 at 10:55 AM
-- Server version: 5.5.8
-- PHP Version: 5.3.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `10am`
--

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
  `img_id` int(11) NOT NULL AUTO_INCREMENT,
  `imagepath` varchar(200) NOT NULL,
  PRIMARY KEY (`img_id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `image`
--

INSERT INTO `image` (`img_id`, `imagepath`) VALUES
(1, 'Winter.jpg'),
(2, 'Winter.jpg'),
(3, 'Blue hills.jpg'),
(4, 'Winter.jpg'),
(5, ''),
(6, 'Winter.jpg'),
(7, 'Winter.jpg'),
(8, 'Winter.jpg'),
(9, 'Winter.jpg'),
(10, 'Sunset.jpg'),
(11, 'Water lilies.jpg'),
(12, 'Sunset.jpg'),
(13, 'Sunset.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `stuinfo`
--

CREATE TABLE IF NOT EXISTS `stuinfo` (
  `stu_id` bigint(20) unsigned NOT NULL AUTO_INCREMENT,
  `userName` varchar(50) NOT NULL,
  `pass` varchar(30) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `eid` varchar(30) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `hobbies` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  PRIMARY KEY (`stu_id`),
  UNIQUE KEY `userName` (`userName`,`mobile`,`eid`),
  UNIQUE KEY `userName_2` (`userName`),
  KEY `gender` (`gender`,`dob`),
  FULLTEXT KEY `userName_3` (`userName`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `stuinfo`
--

INSERT INTO `stuinfo` (`stu_id`, `userName`, `pass`, `mobile`, `eid`, `gender`, `hobbies`, `dob`) VALUES
(1, 'ravi', '*41657701EFC7B6BA66139A624B3A5', 0, 'ranjan@yahoo.co.in', 'm', '', '1952-02-03'),
(2, 'ranjan', '*AD972EFA64986DB5CE1B1BCD8A658', 5555555, 'ranjan@yahoo.co.in', 'm', '', '1952-03-03'),
(3, 'dfdf', 'dfdf', 223, 'dfd', 'f', 'dfd', '2013-02-26'),
(4, 'kkk', 'kkk2222', 111111, 'kkkk@yahoo.com', 'm', 'dlfjl', '2013-02-20'),
(5, 'dfrd', 'fdf', 0, 'dfdf', 'm', 'dfd', '2013-02-20'),
(6, '', '', 0, '', '', 'cricket,football,singing', '0000-00-00'),
(7, 'deepak@gmail.com', 'deepak', 0, '', '', 'cricket,football', '1902-03-03'),
(8, 'neeraj', 'neeraj', 0, '', '', 'cricket', '1901-04-03'),
(9, 'rexx@gmail.com', 'rexx', 0, '', '', 'cricket', '1901-03-03');
