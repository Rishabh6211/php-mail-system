-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 14, 2016 at 04:10 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `10am`
--

-- --------------------------------------------------------

--
-- Table structure for table `draft`
--

CREATE TABLE IF NOT EXISTS `draft` (
`draft_id` int(11) NOT NULL,
  `user_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `attach` varchar(200) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `draft`
--

INSERT INTO `draft` (`draft_id`, `user_id`, `sub`, `attach`, `msg`, `date`) VALUES
(1, 'hema', 'hiiiiiii', 'Winter.jpg', 'hiiiiiiiiiiii', '0000-00-00'),
(2, 'hema', 'my pics', 'Sunset.jpg', 'this is my pics', '0000-00-00'),
(3, 'hema', 'my pics', 'Sunset.jpg', 'this is my pics', '0000-00-00'),
(4, 'hema', 'abhi', 'Water lilies.jpg', 'hhhhhhhhhhhhh', '2013-06-09'),
(5, 'abhishek', 'my resume ', '', 'this is my resume format..........', '2013-06-13'),
(6, 'hema', 'hy', 'food3.png', 'oiu', '2016-02-29'),
(7, 'mehak', 'jj', 'Deer-Photos-Free-download-800x450.jpg', 'm', '2016-03-18'),
(8, 'raja', 'ff', 'bed.jpg', 'l', '2016-04-19');

-- --------------------------------------------------------

--
-- Table structure for table `image`
--

CREATE TABLE IF NOT EXISTS `image` (
`img_id` int(11) NOT NULL,
  `imagepath` varchar(200) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

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
-- Table structure for table `latestupd`
--

CREATE TABLE IF NOT EXISTS `latestupd` (
`upd_id` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `content` text NOT NULL,
  `image` varchar(200) NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `latestupd`
--

INSERT INTO `latestupd` (`upd_id`, `title`, `content`, `image`, `date`) VALUES
(1, 'resul', 'mca result is declared.....', 'AboutPlugin.dll', '2013-06-13'),
(2, 'resul', 'mca result is declared.....', 'AboutPlugin.dll', '2013-06-13'),
(3, 'resue', 'resume......', 'Winter.jpg', '2013-06-13'),
(4, 'lkjlj', 'khkjhkh', '', '2013-06-13'),
(5, 'jjjjjjjjj', 'kkkkkkkkkkk', 'Water lilies.jpg', '2013-06-13'),
(6, 'i am hero', 'party di mardi', 'IMG_1458968075148.jpg', '2016-04-20'),
(7, 'I AM HERO', 'I AMSUBKUCH', '12993600_10154390937763455_2350601866515142363_n.jpg', '2016-04-20');

-- --------------------------------------------------------

--
-- Table structure for table `mails`
--

CREATE TABLE IF NOT EXISTS `mails` (
`mail_id` int(11) NOT NULL,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` char(50) NOT NULL,
  `msg` text NOT NULL,
  `draft` text NOT NULL,
  `trash` text NOT NULL,
  `attachement` varchar(200) NOT NULL,
  `msgdate` varchar(50) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `trash`
--

CREATE TABLE IF NOT EXISTS `trash` (
`trash_id` int(11) NOT NULL,
  `rec_id` varchar(50) NOT NULL,
  `sen_id` varchar(50) NOT NULL,
  `sub` varchar(50) NOT NULL,
  `msg` text NOT NULL,
  `date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `userinfo`
--

CREATE TABLE IF NOT EXISTS `userinfo` (
`user_jd` int(11) NOT NULL,
  `user_name` char(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `mobile` bigint(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `gender` enum('m','f') NOT NULL,
  `dob` date NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=36 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `userinfo`
--

INSERT INTO `userinfo` (`user_jd`, `user_name`, `password`, `mobile`, `email`, `gender`, `dob`, `image`) VALUES
(34, 'raja14', '123456', 12345, 'raja123@gmail.com', 'm', '1915-02-17', ''),
(35, '', '', 0, '', '', '0000-00-00', ''),
(33, 'raja14', '123456', 123456, 'raja123@gmail.com', 'm', '1915-08-17', 'IMG_1328.JPG'),
(32, 'rajaji', '1234567', 123456, 'raja123@gmail.com', 'm', '1913-04-14', 'IMG_1329.JPG'),
(30, 'raja', 'raja123', 123456, 'raja123@gmail.com', 'm', '1900-01-18', 'bed2.jpg'),
(31, 'rish', 'rish123', 123456, 'rish123@gmail.com', 'm', '1918-01-18', 'bed.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `usermail`
--

CREATE TABLE IF NOT EXISTS `usermail` (
`mail_id` int(11) NOT NULL,
  `rec_id` varchar(30) NOT NULL,
  `sen_id` varchar(30) NOT NULL,
  `sub` char(30) NOT NULL,
  `msg` text NOT NULL,
  `attachement` text NOT NULL,
  `recDT` date NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usermail`
--

INSERT INTO `usermail` (`mail_id`, `rec_id`, `sen_id`, `sub`, `msg`, `attachement`, `recDT`) VALUES
(39, 'rish', '', 'eeee', 'ddd', 'IMG_1323.JPG', '2016-05-13'),
(35, 'rish', 'raja', 'aaj lab h', 'haaa', 'bed.jpg', '2016-04-19'),
(31, 'rish', 'raja', 'information', 'hi darling ,how are you', 'corners.gif', '2016-04-19'),
(37, 'ris', 'raja', 'project', 'fkhkh', 'family.jpg', '2016-04-28'),
(38, 'raja', 'rish', 'pp', 'nitin', 'family.jpg', '2016-04-28'),
(33, 'rish', 'raja', 'hi jaan', 'i m fine', 'button_edit.png', '2016-04-19'),
(34, 'rish', 'raja', 'hi jaan', 'i m fine', 'button_edit.png', '2016-04-19'),
(28, 'rish', 'rish', '123', 'ggg', 'bed2.jpg', '2016-04-19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `draft`
--
ALTER TABLE `draft`
 ADD PRIMARY KEY (`draft_id`);

--
-- Indexes for table `image`
--
ALTER TABLE `image`
 ADD PRIMARY KEY (`img_id`);

--
-- Indexes for table `latestupd`
--
ALTER TABLE `latestupd`
 ADD PRIMARY KEY (`upd_id`);

--
-- Indexes for table `mails`
--
ALTER TABLE `mails`
 ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `trash`
--
ALTER TABLE `trash`
 ADD PRIMARY KEY (`trash_id`);

--
-- Indexes for table `userinfo`
--
ALTER TABLE `userinfo`
 ADD PRIMARY KEY (`user_jd`), ADD UNIQUE KEY `user_name` (`user_name`,`mobile`,`email`), ADD KEY `gender` (`gender`,`dob`);

--
-- Indexes for table `usermail`
--
ALTER TABLE `usermail`
 ADD PRIMARY KEY (`mail_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `draft`
--
ALTER TABLE `draft`
MODIFY `draft_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `image`
--
ALTER TABLE `image`
MODIFY `img_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `latestupd`
--
ALTER TABLE `latestupd`
MODIFY `upd_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `mails`
--
ALTER TABLE `mails`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `trash`
--
ALTER TABLE `trash`
MODIFY `trash_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `userinfo`
--
ALTER TABLE `userinfo`
MODIFY `user_jd` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `usermail`
--
ALTER TABLE `usermail`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=40;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
