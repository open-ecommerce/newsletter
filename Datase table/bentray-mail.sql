
--
-- Table structure for table `tbl_email_subscribers`
--

CREATE TABLE IF NOT EXISTS `tbl_email_subscribers` (
`subscriber_id` int(11) NOT NULL,
  `full_name` varchar(100) NOT NULL,
  `subscriber_email` varchar(40) NOT NULL,
  `subscriber_details` text NOT NULL,
  `group_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_subscribers`
--

INSERT INTO `tbl_email_subscribers` (`subscriber_id`, `full_name`, `subscriber_email`, `subscriber_details`, `group_id`, `staff_id`) VALUES
(11, 'Janak  Bistha', 'janak@gmail.com', '', 9, 509),
(13, 'Tika raj ', 'tika.raj@bentraytech.com', 'tika', 7, 0),
(14, 'Tika raj G', 'tikaraj42@gmail.com', 'tika', 10, 0),
(15, 'Anish', 'anish@bentraytech.com', 'anish', 11, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_email_templates`
--

CREATE TABLE IF NOT EXISTS `tbl_email_templates` (
`template_id` int(11) NOT NULL,
  `template_name` varchar(80) NOT NULL,
  `template_body` text CHARACTER SET utf8 NOT NULL,
  `template_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`template_id`, `template_name`, `template_body`, `template_description`) VALUES
(1, 'Test', '<p>Dear {{bent_stf}},</p>\r\n\r\n<p>hi hello</p>\r\n', 'test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_group`
--

CREATE TABLE IF NOT EXISTS `tbl_group` (
`group_id` int(11) NOT NULL,
  `group_name` varchar(50) NOT NULL,
  `group_description` text NOT NULL,
  `designation_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_group`
--

INSERT INTO `tbl_group` (`group_id`, `group_name`, `group_description`, `designation_id`) VALUES
(7, 'PHP Programmer', 'Description of PHP Programmer', 9),
(9, '.net programmer', 'Description of .net programmer', 11),
(10, 'client', 'client', 0),
(11, 'Android', 'Android', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mailsetting`
--

CREATE TABLE IF NOT EXISTS `tbl_mailsetting` (
`setting_id` int(11) NOT NULL,
  `setting_name` varchar(40) NOT NULL,
  `setting_code` varchar(40) NOT NULL,
  `setting_value` varchar(90) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mailsetting`
--

INSERT INTO `tbl_mailsetting` (`setting_id`, `setting_name`, `setting_code`, `setting_value`) VALUES
(1, 'Mail Type', 'GE_MAIL_TYPE', 'SMTP'),
(2, 'Page Reload Interval', 'GE_RELOAD_INTERVAL', '10'),
(3, 'Number Mail Send At A Time', 'GE_MAIL_NO', '20'),
(4, 'Mail Encode Bit', 'GE_MAIL_ENCODE_BIT', '8-bit'),
(5, 'imap_path', 'GE_IMAP_PATH', '{imap.gmail.com:993/imap/ssl}INBOX'),
(6, 'Host', 'GE_SERVER_HOST', 'smtp.gmail.com'),
(7, 'User Name', 'GE_SERVER_USERNAME', 'tika.raj@bentraytech.com'),
(8, 'Password', 'GE_SERVER_PASSWORD', 'WLparmZISYbjVKTW2qL9kmft9BI6KIQAZrVyDB6i7Vk='),
(9, 'Encryption Type', 'GE_SERVER_ENC_TYPE', 'tls'),
(10, 'Server Port', 'GE_SERVER_PORT', '587'),
(11, 'from', 'GE_PHP_FROM', 'test@flexyear.com'),
(12, 'reply_to', 'GE_PHP_REPLY_TO', 'test@flexyear.com'),
(13, 'return_path', 'GE_PHP_RETURN_PATH', 'test@flexyear.com'),
(14, 'manager_email', 'GE_PHP_MANAGER_EMAIL', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_mail_store`
--

CREATE TABLE IF NOT EXISTS `tbl_mail_store` (
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
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_mail_store`
--

INSERT INTO `tbl_mail_store` (`mail_id`, `to`, `from`, `subject`, `message_body`, `cc`, `bcc`, `attachments`, `created_date`, `status`, `unique_id`) VALUES
(1, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'changing', 'sdfsdfs', '', '', 'a:4:{i:0;s:67:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/8617downloadcv.pdf";i:1;s:114:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG";i:2;s:124:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG3791qq.jpg";i:3;s:141:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/8617downloadcv.pdf814Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG3791qq.jpg4188ss - Copy.jpg";}', '2015-12-28', 'Sent', '14512768135680ba0d369c1'),
(2, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'sfsd', 'sdfdss', '', '', '', '2015-12-28', 'Sent', '14512861255680de6dda7c0'),
(3, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'asda', '', '', '', 'a:2:{i:0;s:72:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/29963downloadcv (1).pdf";i:1;s:91:"D:\\xampp\\htdocs\\Sbrtbl\\frontend/web/EmailAttach/29963downloadcv (1).pdf24552downloadcv.pdf";}', '2015-12-28', 'Sent', '14512864655680dfc1a8561'),
(4, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'asda', '', '', '', '', '2015-12-28', 'Sent', '14512866185680e05a82cb6'),
(5, 'samsher@bentraytech.com', 'samsher@bentraytech.com', 'sdsa', 'asda', '', '', '', '2015-12-28', 'Sent', '14512871835680e28fab0ec'),
(6, 'samsher@bentraytech.com', '465', 'sdsda', 'asdsa', '', '', '', '2016-01-25', 'Sent', '145370257056a5bdaab9dd1'),
(7, 'samsher@bentraytech.com', '465', 'asdasdsa', 'asdcasdasd<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/flexyear_v2/Uploads/ckeditor/1453704283_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:4:{i:0;s:76:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf";i:1;s:95:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf";i:2;s:112:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg";i:3;s:122:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg5275qq.jpg";}', '2016-01-25', 'Sent', '145370962456a5d938c96e6'),
(8, 'mahesh@bentraytech.com', '465', 'asdasdsa', 'asdcasdasd<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/flexyear_v2/Uploads/ckeditor/1453704283_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:4:{i:0;s:76:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf";i:1;s:95:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf";i:2;s:112:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg";i:3;s:122:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg5275qq.jpg";}', '2016-01-25', 'Sent', '145370962456a5d938c96e6'),
(9, 'ankit@bentraytech.com', '465', 'asdasdsa', 'asdcasdasd<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/flexyear_v2/Uploads/ckeditor/1453704283_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:4:{i:0;s:76:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf";i:1;s:95:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf";i:2;s:112:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg";i:3;s:122:"D:\\xampp\\htdocs\\flexyear_v2\\frontend/web/EmailAttach/11084downloadcv (1).pdf18325downloadcv.pdf4266qq - Copy.jpg5275qq.jpg";}', '2016-01-25', 'Sent', '145370962456a5d938c96e6'),
(10, 'samsher@bentraytech.com', '465', 'sdfdsfs', 'dsfsdfs', '', '', '', '2016-01-26', 'Sent', '145378740456a7090c55907'),
(11, 'samsher@bentraytech.com', '465', 'php mail test', 'asdasdas<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/flexyear_v2/Uploads/ckeditor/1453704283_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:3:{i:0;s:88:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1956894442downloadcv.pdf";i:1;s:110:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1956894442downloadcv.pdf163294682qq - Copy.jpg";i:2;s:126:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1956894442downloadcv.pdf163294682qq - Copy.jpg1675756983qq.jpg";}', '2016-01-28', 'Sent', '145398072456a9fc3401c4f'),
(12, 'samsher@bentraytech.com', '465', 'zczcx', 'zczxcxzcxz', '', '', '', '2016-01-28', 'Sent', '145398151756a9ff4d8462e'),
(13, 'samsher@bentraytech.com', '465', 'sdfsf', 'sdfdsfds', '', '', 'a:1:{i:0;s:108:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1548570106natural-wallpaper-for-desktop.jpeg";}', '2016-01-28', 'Sent', '145398157856a9ff8ab5cb0'),
(14, 'samsher@bentraytech.com', '465', 'dasdsa', 'dasdasdsa', '', '', '', '2016-01-28', 'Sent', '145398174656aa0032725dd'),
(17, 'samsher@bentraytech.com', '465', 'asdad', 'asdsada', '', '', '', '2016-01-29', 'Sent', '145403969356aae28d0f396'),
(18, 'samsher@bentraytech.com', '465', 'asdsad', 'asdasdsa', '', '', 'a:2:{i:0;s:83:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/190062544images.jpg";i:1;s:127:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/190062544images.jpg1805401034natural-wallpaper-for-desktop.jpeg";}', '2016-01-29', 'Sent', '145404037656aae538a66db'),
(19, 'samsher@bentraytech.com', '465', 'php mail testing', 'message body', '', '', 'a:7:{i:0;s:118:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG";i:1;s:165:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG";i:2;s:185:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg";i:3;s:229:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg";i:4;s:251:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg";i:5;s:267:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg1648560691qq.jpg";i:6;s:290:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg1648560691qq.jpg1248860246ss - Copy.jpg";}', '2016-01-29', 'Sent', '145404081856aae6f2de998'),
(20, 'ankit@bentraytech.com', '465', 'php mail testing', 'message body', '', '', 'a:7:{i:0;s:118:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG";i:1;s:165:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG";i:2;s:185:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg";i:3;s:229:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg";i:4;s:251:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg";i:5;s:267:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg1648560691qq.jpg";i:6;s:290:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1042258260Dr_Sulyman_A_Iyanda_PassportSize2 - Copy.JPG1513935625Dr_Sulyman_A_Iyanda_PassportSize2.JPG1600300176images.jpg2063624309natural-wallpaper-for-desktop.jpeg601035253qq - Copy.jpg1648560691qq.jpg1248860246ss - Copy.jpg";}', '2016-01-29', 'Sent', '145404081856aae6f2de998'),
(21, 'samsher@bentraytech.com', '465', 'php mail testing2', 'sdfafdsa<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://localhost/flexyear_v2/Uploads/ckeditor/1453704283_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:2:{i:0;s:87:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1966471685qq - Copy.jpg";i:1;s:110:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1966471685qq - Copy.jpg1172953065ss - Copy.jpg";}', '2016-01-29', 'Sent', '145405600956ab2249150ea'),
(22, 'samsher@bentraytech.com', '465', 'asdad', 'sadasdas<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', '', '2016-01-29', 'Sent', '145405650656ab243a272df'),
(23, 'samsher@bentraytech.com', '465', 'php mail testing2', 'jpt mesgss<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', '', '2016-01-29', 'Sent', '145405653556ab2457716f4'),
(24, 'ankit@bentraytech.com', '465', 'php mail testing2', 'jpt mesgss<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', '', '2016-01-29', 'Sent', '145405653556ab2457716f4'),
(25, 'sbr.mgr1@hotmail.com', '465', 'sdfds', 'sdfds<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:1:{i:0;s:87:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1422066510ss - Copy.jpg";}', '2016-01-29', 'Sent', '145406535456ab46ca82c06'),
(26, 'sbr_mgr1@yahoo.com', '465', 'sdfdsf', 'sdfsdfds<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', 'a:1:{i:0;s:87:"/home/bentraywork/public_html/flexyear/frontend/web/EmailAttach/1665628291ss - Copy.jpg";}', '2016-01-29', 'Sent', '145406588256ab48dab61d4'),
(28, 'tika.raj@bentraytech.com', 'ssl', 'Happy New year', 'sa<p>Dear&nbsp;{{bent_stf}},</p>\r\n\r\n<p><img alt="" src="http://bentray.work/flexyear/Uploads/ckeditor/1454056476_images.jpg" style="height:168px; width:300px" /></p>\r\n', '', '', '', '2016-05-25', 'Sent', '14641481045745208835b62'),
(29, 'anish@bentraytech.com', 'tls', 'test', 'fd', '', '', '', '2016-12-26', 'Sent', '14827313175860af3538b58'),
(30, 'janak@gmail.com', 'tls', 'Test', 'tyu', '', '', '', '2016-12-26', 'Sent', '14827323355860b32f30d8e'),
(31, 'tika.raj@bentraytech.com', 'tls', 'Test', 'test', '', '', '', '2016-12-26', 'Sent', '14827333615860b731b0a70'),
(32, 'tika.raj@bentraytech.com', 'tls', 'Test', 'test', '', '', '', '2016-12-28', 'Sent', '1482909166586365ee34f71'),
(33, 'tika.raj@bentraytech.com', 'tls', 'Test', 'test', '', '', '', '2016-12-28', 'Sent', '1482909426586366f26cb87'),
(34, 'tika.raj@bentraytech.com', 'tls', 'Test', 'test', '', '', '', '2016-12-29', 'Sent', '14829926525864ac0c21364'),
(35, 'tika.raj@bentraytech.com', 'tls', 'Test23', 'dsfgsd', '', '', '', '2016-12-29', 'Sent', '14830078465864e7669a761'),
(36, 'tika.raj@bentraytech.com', 'tls', 'treterte', 'sdadfs', '', '', '', '2016-12-29', 'Queue', '14830078985864e79a78abc');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_merge_fields`
--

CREATE TABLE IF NOT EXISTS `tbl_merge_fields` (
`merge_field_id` int(11) NOT NULL,
  `merge_field_name` varchar(40) NOT NULL,
  `merge_field_code` varchar(255) NOT NULL,
  `merge_field_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_merge_fields`
--

INSERT INTO `tbl_merge_fields` (`merge_field_id`, `merge_field_name`, `merge_field_code`, `merge_field_description`) VALUES
(2, 'Staff', '{{bent_stf}}', 'for name of Bent Ray Staff'),
(3, 'language', '{{lan}}', 'Languages'),
(4, 'Company Name', '{{company}}', 'this is a field for company name');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_setting`
--

CREATE TABLE IF NOT EXISTS `tbl_setting` (
`id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `code` varchar(45) NOT NULL,
  `value` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_setting`
--

INSERT INTO `tbl_setting` (`id`, `title`, `code`, `value`, `description`) VALUES
(1, 'Company Name', 'COMP_NAME', 'Bent Ray Technology', 'some text'),
(2, 'Address', 'COMP_ADDR', 'Jwagal', 'some address'),
(3, 'Country', 'COMP_COUNTRY', '158', 'some info'),
(4, 'Phone', 'COMP_PHONE', '01893453234', 'some text'),
(5, 'Date', 'GS_DATE', 'E', NULL),
(6, 'Date Format', 'GS_DT_FORMAT', '0', NULL),
(7, 'Set Time Zone', 'GS_TIME_ZONE', 'Asia/Kathmandu', NULL),
(8, 'Sunday', 'D_SUNDAY', '0', 'sunday is holiday.'),
(9, 'Monday', 'D_MONDAY', '0', 'working day.'),
(10, 'Tuesday', 'D_TUESDAY', '0', 'working day.'),
(11, 'Wednesday', 'D_WEDNESDAY', '0', 'working day.'),
(12, 'Thursday', 'D_THURSDAY', '0', 'working day.'),
(13, 'Friday', 'D_FRIDAY', '0', 'working day.'),
(14, 'Saturday', 'D_SATURDAY', '0', 'holiday.'),
(15, 'Set Admin Email', 'GS_SEND_ATTN_EMAIL', '0', NULL),
(16, 'Set Admin Email', 'GS_SEND_LEAVE_RQ_MAIL', '0', NULL),
(17, 'attendance_correctn_opt', 'GM_ATTENDANCE_CORRECTN_OPTION', '0', 'attendance correctn opt'),
(19, 'manager_email_address', 'GS_MANAGER_EMAIL', 'tika.raj@bentraytech.com', NULL),
(20, 'staff_present', 'GM_STAFF_PRESENT', '0', 'setting for present staff'),
(21, 'attendance_alert_message', 'GM_ATT_ALERT', '0', 'Attendance Alert Message'),
(22, 'Leave Review Month', 'GS_LEAVE_REVIEW_MONTH', '01', 'This is a setting for leave review month'),
(23, 'allowed chekin Ips', 'GS_CHECKIN_IPS', 'GS_CHECKIN_IPS', 'allowed chekin Ips');

-- --------------------------------------------------------

--
-- Indexes for table `tbl_email_subscribers`
--
ALTER TABLE `tbl_email_subscribers`
 ADD PRIMARY KEY (`subscriber_id`), ADD KEY `group_id` (`group_id`);

--
-- Indexes for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
 ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `tbl_group`
--
ALTER TABLE `tbl_group`
 ADD PRIMARY KEY (`group_id`);

--
-- Indexes for table `tbl_mailsetting`
--
ALTER TABLE `tbl_mailsetting`
 ADD PRIMARY KEY (`setting_id`);

--
-- Indexes for table `tbl_mail_store`
--
ALTER TABLE `tbl_mail_store`
 ADD PRIMARY KEY (`mail_id`);

--
-- Indexes for table `tbl_merge_fields`
--
ALTER TABLE `tbl_merge_fields`
 ADD PRIMARY KEY (`merge_field_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for table `tbl_email_subscribers`
--
ALTER TABLE `tbl_email_subscribers`
MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_mailsetting`
--
ALTER TABLE `tbl_mailsetting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_mail_store`
--
ALTER TABLE `tbl_mail_store`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `tbl_merge_fields`
--
ALTER TABLE `tbl_merge_fields`
MODIFY `merge_field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
