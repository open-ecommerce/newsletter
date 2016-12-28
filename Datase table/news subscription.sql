-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 28, 2015 at 10:17 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sbrtest`
--

-- --------------------------------------------------------

--
-- Table structure for table `test_automailsetting`
--

CREATE TABLE IF NOT EXISTS `test_automailsetting` (
`setting_id` int(11) NOT NULL,
  `setting_name` varchar(40) NOT NULL,
  `setting_code` varchar(40) NOT NULL,
  `setting_value` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_automailsetting`
--

INSERT INTO `test_automailsetting` (`setting_id`, `setting_name`, `setting_code`, `setting_value`) VALUES
(1, 'Page Reload Interval', 'sett_re_intval', '5'),
(2, 'Number Mail Send At A Time', 'sett_no_mail', '2'),
(3, 'Mail Type', 'sett_mail_type', 'SMTP'),
(4, 'Host', 'sett_host', 'smtp.gmail.com'),
(5, 'User Name', 'sett_uname', 'samsher@bentraytech.com'),
(6, 'Password', 'sett_pw', 'bentray123'),
(7, 'Encryption Type', 'sett_enc_type', 'ssl'),
(8, 'Server Port', 'sett_port', '465'),
(9, 'from', 'sett_from', 'samsher@bentray.com'),
(10, 'reply_to', 'sett_reply_to', 'samsher@bentray.com'),
(11, 'return_path', 'sett_return_path', 'samsher@bentray.com');

-- --------------------------------------------------------

--
-- Table structure for table `test_email_subscribers`
--

CREATE TABLE IF NOT EXISTS `test_email_subscribers` (
`subscriber_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `subscriber_email` varchar(40) NOT NULL,
  `subscriber_details` text NOT NULL,
  `group_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_email_subscribers`
--

INSERT INTO `test_email_subscribers` (`subscriber_id`, `full_name`, `subscriber_email`, `subscriber_details`, `group_id`) VALUES
(1, 'Samsher Bahadur Rana', 'samsher@bentraytech.com', 'sadfasfd', 1),
(2, 'Bimal Khadka', 'bimal@bentraytech.com', 'sdfdsf', 2),
(3, 'Mahesh Joshi', 'mahesh@bentraytech.com', 'sdfdsfds', 1),
(4, 'Ankit', 'ankit@bentraytech.com', 'php programmer', 1);

-- --------------------------------------------------------

--
-- Table structure for table `test_email_templates`
--

CREATE TABLE IF NOT EXISTS `test_email_templates` (
`template_id` int(11) NOT NULL,
  `template_name` varchar(80) NOT NULL,
  `template_body` text CHARACTER SET utf8 NOT NULL,
  `template_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_email_templates`
--

INSERT INTO `test_email_templates` (`template_id`, `template_name`, `template_body`, `template_description`) VALUES
(1, 'Dashain', '<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/SbrTest/uploads/ckeditor/1450174570_left_02.png" style="height:175px; width:200px" /></p>\r\n', 'sdfasdfsfsdf');

-- --------------------------------------------------------

--
-- Table structure for table `test_group`
--

CREATE TABLE IF NOT EXISTS `test_group` (
`group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_group`
--

INSERT INTO `test_group` (`group_id`, `group_name`, `group_description`) VALUES
(1, 'PHP programmers', 'sfsdlkfds'),
(2, '.NET Programmers', 'sdfsdfsd');

-- --------------------------------------------------------

--
-- Table structure for table `test_mail_store`
--

CREATE TABLE IF NOT EXISTS `test_mail_store` (
`mail_id` int(11) NOT NULL,
  `to` text NOT NULL,
  `from` varchar(255) NOT NULL,
  `subject` varchar(255) NOT NULL,
  `message_body` text NOT NULL,
  `cc` text NOT NULL,
  `bcc` text NOT NULL,
  `attachments` text NOT NULL,
  `created_date` date NOT NULL,
  `status` enum('Sent','Queue') NOT NULL,
  `unique_id` varchar(255) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_mail_store`
--

INSERT INTO `test_mail_store` (`mail_id`, `to`, `from`, `subject`, `message_body`, `cc`, `bcc`, `attachments`, `created_date`, `status`, `unique_id`) VALUES
(1, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'changing', 'sdfsdfs', '', '', 'a:4:{i:0;s:67:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/8617downloadcv.pdf";i:1;s:114:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG";i:2;s:124:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG3791qq.jpg";i:3;s:141:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG3791qq.jpg4188ss - Copy.jpg";}', '2015-12-28', 'Sent', '14512768135680ba0d369c1'),
(2, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'sfsd', 'sdfdss', '', '', '', '2015-12-28', 'Sent', '14512861255680de6dda7c0'),
(3, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'asda', '', '', '', 'a:2:{i:0;s:72:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/29963downloadcv (1).pdf";i:1;s:91:"D:\\xampp\\htdocs\\SbrTest\\frontend/web/EmailAttach/29963downloadcv (1).pdf24552downloadcv.pdf";}', '2015-12-28', 'Sent', '14512864655680dfc1a8561'),
(4, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'asda', '', '', '', '', '2015-12-28', 'Sent', '14512866185680e05a82cb6'),
(5, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'sdsa', 'asda', '', '', '', '2015-12-28', 'Sent', '14512871835680e28fab0ec');

-- --------------------------------------------------------

--
-- Table structure for table `test_merge_fields`
--

CREATE TABLE IF NOT EXISTS `test_merge_fields` (
`merge_field_id` int(11) NOT NULL,
  `merge_field_name` varchar(40) NOT NULL,
  `merge_field_code` varchar(255) NOT NULL,
  `merge_field_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `test_merge_fields`
--

INSERT INTO `test_merge_fields` (`merge_field_id`, `merge_field_name`, `merge_field_code`, `merge_field_description`) VALUES
(2, 'Staff', '{{bent_stf}}', 'for name of Bent Ray Staff'),
(3, 'language', '{{lan}}', 'Languages'),
(4, 'Company Name', '{{company}}', 'this is a field for company name');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `test_automailsetting`
--
ALTER TABLE `test_automailsetting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `test_email_subscribers`
--
ALTER TABLE `test_email_subscribers`
 ADD PRIMARY KEY (`subscriber_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `test_email_templates`
--
ALTER TABLE `test_email_templates`
 ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `test_group`
--
ALTER TABLE `test_group`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `test_mail_store`
--
ALTER TABLE `test_mail_store`
 ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `test_merge_fields`
--
ALTER TABLE `test_merge_fields`
 ADD PRIMARY KEY (`merge_field_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `test_automailsetting`
--
ALTER TABLE `test_automailsetting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `test_email_subscribers`
--
ALTER TABLE `test_email_subscribers`
MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `test_email_templates`
--
ALTER TABLE `test_email_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `test_group`
--
ALTER TABLE `test_group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `test_mail_store`
--
ALTER TABLE `test_mail_store`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `test_merge_fields`
--
ALTER TABLE `test_merge_fields`
MODIFY `merge_field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `test_email_subscribers`
--
ALTER TABLE `test_email_subscribers`
ADD CONSTRAINT `test_email_subscribers_ibfk_1` FOREIGN KEY (`group_id`) REFERENCES `test_group` (`group_id`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
