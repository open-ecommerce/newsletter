-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 26, 2017 at 06:04 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `bentray-mail`
--

-- --------------------------------------------------------

--
-- Table structure for table `auth_assignment`
--

CREATE TABLE IF NOT EXISTS `auth_assignment` (
  `item_name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `user_id` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_assignment`
--

INSERT INTO `auth_assignment` (`item_name`, `user_id`, `created_at`) VALUES
('Admin', '1', 1481881016),
('Admin', '2', 1426141713),
('Admin', '30', 1426242544),
('Admin', '4', 1431410727),
('staff', '3', 1481882959),
('Super Admin', '1', 1481881032),
('Super Admin', '2', 1425627348),
('Super Admin', '29', 1426241773);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item`
--

CREATE TABLE IF NOT EXISTS `auth_item` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `type` int(11) NOT NULL,
  `description` text COLLATE utf8_unicode_ci,
  `rule_name` varchar(64) COLLATE utf8_unicode_ci DEFAULT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item`
--

INSERT INTO `auth_item` (`name`, `type`, `description`, `rule_name`, `data`, `created_at`, `updated_at`) VALUES
('/*', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/access-role-access/*', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role-access/create', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role-access/delete', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role-access/index', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role-access/update', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role-access/view', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access-role/*', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access-role/create', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access-role/delete', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access-role/index', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access-role/update', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access-role/view', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/access/*', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access/create', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access/delete', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access/index', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access/update', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/access/view', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/auditlog/*', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/auditlog/delete', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/auditlog/index', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/auditlog/update', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/auditlog/view', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/debug/*', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/debug/default/*', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/debug/default/db-explain', 2, NULL, NULL, NULL, 1441792101, 1441792101),
('/debug/default/download-mail', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/debug/default/index', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/debug/default/toolbar', 2, NULL, NULL, NULL, 1425626426, 1425626426),
('/debug/default/view', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/department/*', 2, NULL, NULL, NULL, 1425626427, 1425626427),
('/gii/*', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/*', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/action', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/diff', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/index', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/preview', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gii/default/view', 2, NULL, NULL, NULL, 1427702874, 1427702874),
('/gridview/*', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/gridview/export/*', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/gridview/export/download', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/newsletter/email-templates', 2, NULL, NULL, NULL, 1481867318, 1481867318),
('/newsletter/email-templates/*', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/email-templates/create', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/email-templates/delete', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/email-templates/index', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/email-templates/update', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/email-templates/view', 2, NULL, NULL, NULL, 1481867324, 1481867324),
('/newsletter/group', 2, NULL, NULL, NULL, 1481867148, 1481867148),
('/newsletter/group/*', 2, NULL, NULL, NULL, 1481867156, 1481867156),
('/newsletter/group/create', 2, NULL, NULL, NULL, 1481867180, 1481867180),
('/newsletter/group/delete', 2, NULL, NULL, NULL, 1481867180, 1481867180),
('/newsletter/group/index', 2, NULL, NULL, NULL, 1481867179, 1481867179),
('/newsletter/group/update', 2, NULL, NULL, NULL, 1481867180, 1481867180),
('/newsletter/group/view', 2, NULL, NULL, NULL, 1481867179, 1481867179),
('/newsletter/main/mailcreate', 2, NULL, NULL, NULL, 1481867364, 1481867364),
('/newsletter/main/sending', 2, NULL, NULL, NULL, 1481867426, 1481867426),
('/newsletter/mergefields', 2, NULL, NULL, NULL, 1481867251, 1481867251),
('/newsletter/mergefields/*', 2, NULL, NULL, NULL, 1481867257, 1481867257),
('/newsletter/mergefields/create', 2, NULL, NULL, NULL, 1481867256, 1481867256),
('/newsletter/mergefields/delete', 2, NULL, NULL, NULL, 1481867256, 1481867256),
('/newsletter/mergefields/index', 2, NULL, NULL, NULL, 1481867256, 1481867256),
('/newsletter/mergefields/update', 2, NULL, NULL, NULL, 1481867256, 1481867256),
('/newsletter/mergefields/view', 2, NULL, NULL, NULL, 1481867256, 1481867256),
('/newsletter/saved-email-templates', 2, NULL, NULL, NULL, 1485403344, 1485403344),
('/newsletter/setting/index', 2, NULL, NULL, NULL, 1483077950, 1483077950),
('/rbac/*', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/assignment/*', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/assignment/assign', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/assignment/index', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/assignment/role-search', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/assignment/view', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/default/*', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/default/index', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/*', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/create', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/delete', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/index', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/update', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/menu/view', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/permission/*', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/assign', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/create', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/delete', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/index', 2, NULL, NULL, NULL, 1425626424, 1425626424),
('/rbac/permission/role-search', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/update', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/permission/view', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/*', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/assign', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/create', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/delete', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/index', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/role-search', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/update', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/role/view', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/route/*', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/route/assign', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/route/create', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/route/index', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/route/route-search', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/*', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/create', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/delete', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/index', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/update', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/rbac/rule/view', 2, NULL, NULL, NULL, 1425626425, 1425626425),
('/setting/*', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/setting/create', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/setting/delete', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/setting/index', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/setting/update', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/setting/view', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/site/*', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/site/about', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/allmails', 2, NULL, NULL, NULL, 1482217020, 1482217020),
('/site/attchart', 2, NULL, NULL, NULL, 1460372654, 1460372654),
('/site/captcha', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/contact', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/error', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/indattchart', 2, NULL, NULL, NULL, 1460372804, 1460372804),
('/site/index', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/login', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/logout', 2, NULL, NULL, NULL, 1425626428, 1425626428),
('/site/menu-search', 2, NULL, NULL, NULL, 1465991023, 1465991023),
('/site/message', 2, NULL, NULL, NULL, 1467279819, 1467279819),
('/site/password', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/site/request-password-reset', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/site/reset-password', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/site/signup', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/timeformat/*', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/timeformat/create', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/timeformat/delete', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/timeformat/index', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/timeformat/update', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/timeformat/view', 2, NULL, NULL, NULL, 1427702875, 1427702875),
('/user', 2, NULL, NULL, NULL, 1481874191, 1481874191),
('/user-setting/update', 2, NULL, NULL, NULL, 1459835920, 1459835920),
('/user-staff/*', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user-staff/create', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user-staff/delete', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user-staff/index', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user-staff/update', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user-staff/view', 2, NULL, NULL, NULL, 1425626429, 1425626429),
('/user/*', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/bulk-action', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/create', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/delete', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/index', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/profile', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/reset-password', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/update', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('/user/view', 2, NULL, NULL, NULL, 1481874323, 1481874323),
('Admin', 1, 'Administrater', NULL, NULL, 1425627278, 1425627278),
('General Staff', 2, NULL, NULL, NULL, 1443690518, 1443690932),
('staff', 1, 'general staff', NULL, NULL, 1442140001, 1443690634),
('Super Admin', 1, 'General  User', NULL, NULL, 1425627266, 1453797977);

-- --------------------------------------------------------

--
-- Table structure for table `auth_item_child`
--

CREATE TABLE IF NOT EXISTS `auth_item_child` (
  `parent` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `child` varchar(64) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `auth_item_child`
--

INSERT INTO `auth_item_child` (`parent`, `child`) VALUES
('Super Admin', '/*'),
('Admin', '/newsletter/saved-email-templates'),
('Admin', '/site/allmails'),
('staff', '/site/index'),
('Super Admin', '/user'),
('Super Admin', '/user-setting/update'),
('Super Admin', '/user-staff/*'),
('Super Admin', '/user-staff/create'),
('Super Admin', '/user-staff/delete'),
('Super Admin', '/user-staff/index'),
('General Staff', '/user-staff/update'),
('Super Admin', '/user-staff/update'),
('Super Admin', '/user-staff/view'),
('Super Admin', '/user/*'),
('Super Admin', '/user/bulk-action'),
('Super Admin', '/user/create'),
('Super Admin', '/user/delete'),
('Super Admin', '/user/index'),
('staff', '/user/profile'),
('Super Admin', '/user/profile'),
('staff', '/user/reset-password'),
('Super Admin', '/user/reset-password'),
('staff', '/user/update'),
('Super Admin', '/user/update'),
('staff', '/user/view'),
('Super Admin', '/user/view'),
('staff', 'General Staff'),
('Admin', 'Super Admin');

-- --------------------------------------------------------

--
-- Table structure for table `auth_rule`
--

CREATE TABLE IF NOT EXISTS `auth_rule` (
  `name` varchar(64) COLLATE utf8_unicode_ci NOT NULL,
  `data` text COLLATE utf8_unicode_ci,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE IF NOT EXISTS `login` (
`user_id` int(11) NOT NULL,
  `staff_id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `auth_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `password_hash` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password_reset_token` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `role` smallint(6) NOT NULL DEFAULT '10',
  `status` smallint(6) NOT NULL DEFAULT '10',
  `created_at` int(11) NOT NULL,
  `updated_at` int(11) NOT NULL,
  `access_level` int(11) NOT NULL,
  `access_role_id` int(11) NOT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user_id`, `staff_id`, `username`, `auth_key`, `password_hash`, `password_reset_token`, `password`, `role`, `status`, `created_at`, `updated_at`, `access_level`, `access_role_id`, `email`) VALUES
(2, 229, 'admin', '', '0192023a7bbd73250516f069df18b500', NULL, '', 10, 10, 0, 1460020997, 1, 2, NULL),
(14, 326, 'tika', '2CdMXy-tEfFRmzNI82rNoG9WL0u3mCy_', '7a9c9826cf4184fa8baa132c0bf57c81', NULL, '', 10, 10, 0, 0, 0, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE IF NOT EXISTS `menu` (
`id` int(11) NOT NULL,
  `icon` varchar(50) NOT NULL,
  `rback_check` varchar(150) NOT NULL,
  `name` varchar(128) NOT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` text
) ENGINE=InnoDB AUTO_INCREMENT=69 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`id`, `icon`, `rback_check`, `name`, `parent`, `route`, `order`, `data`) VALUES
(1, 'dashboard', '', 'Dashboard', NULL, '/site/index', 1, NULL),
(7, 'gears', '', 'Setting', NULL, NULL, 8, NULL),
(36, 'cog', '', 'General Setting', 7, '/newsletter/setting/index', NULL, NULL),
(38, 'bars', '', 'Menu Management', 7, '/rbac/menu/index', 1, 'Setting'),
(56, 'certificate', '', 'Roles', 7, '/rbac/role/index', 3, NULL),
(57, 'edit', '', 'Route', 7, '/rbac/route/index', 4, NULL),
(58, 'external-link', '', 'Assignment', 7, '/rbac/assignment/index', 5, NULL),
(59, 'users', '', 'Mail Group', NULL, '/newsletter/group', 2, NULL),
(60, 'code-fork', '', 'Mail Marge Fields', NULL, '/newsletter/mergefields', 3, NULL),
(61, 'envelope', '', 'Mail Template', NULL, '/newsletter/email-templates', 4, NULL),
(62, 'envelope', '', 'Create Mail', NULL, '/newsletter/main/mailcreate', 5, NULL),
(63, 'paper-plane', '', 'Mail Send', NULL, '/newsletter/main/sending', 6, NULL),
(64, 'user', '', 'Manage Users', NULL, '/user', 8, NULL),
(65, 'users', '', 'Users', 64, '/user', 1, NULL),
(66, 'user', '', 'Profile', 64, '/user/profile', 2, NULL),
(67, 'key', '', 'Password Change', 64, '/user/reset-password', 3, NULL),
(68, 'floppy-o', '', 'Saved Email Tempalte', NULL, '/newsletter/saved-email-templates', 5, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `migration`
--

CREATE TABLE IF NOT EXISTS `migration` (
  `version` varchar(180) NOT NULL,
  `apply_time` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `migration`
--

INSERT INTO `migration` (`version`, `apply_time`) VALUES
('m000000_000000_base', 1420441824),
('m130524_201442_init', 1420441826),
('m140506_102106_rbac_init', 1425626220),
('m140602_111327_create_menu_table', 1425626136);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access`
--

CREATE TABLE IF NOT EXISTS `tbl_access` (
`access_id` int(11) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `title` varchar(255) DEFAULT NULL,
  `description` varchar(255) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access`
--

INSERT INTO `tbl_access` (`access_id`, `code`, `title`, `description`) VALUES
(1, '00123', 'creating', 'this acces is used to create the access ');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_role`
--

CREATE TABLE IF NOT EXISTS `tbl_access_role` (
`access_role_id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_access_role`
--

INSERT INTO `tbl_access_role` (`access_role_id`, `name`, `description`) VALUES
(1, 'staff', 'staff'),
(2, 'administrator', 'all access\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_access_role_access`
--

CREATE TABLE IF NOT EXISTS `tbl_access_role_access` (
`access_role_access_id` int(11) NOT NULL,
  `access_role_id` int(11) DEFAULT NULL,
  `access_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_countries`
--

CREATE TABLE IF NOT EXISTS `tbl_countries` (
`country_id` int(200) NOT NULL,
  `iso` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `country_name` varchar(100) NOT NULL,
  `iso3` varchar(200) NOT NULL,
  `numcode` varchar(20) NOT NULL,
  `phone_code` varchar(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=254 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_countries`
--

INSERT INTO `tbl_countries` (`country_id`, `iso`, `name`, `country_name`, `iso3`, `numcode`, `phone_code`) VALUES
(1, 'AF', 'AFGHANISTAN', 'Afghanistan', 'AFG', '4', '+93'),
(3, 'AL', 'ALBANIA', 'Albania', 'ALB', '8', '+355'),
(4, 'DZ', 'ALGERIA', 'Algeria', 'DZA', '12', '+213'),
(5, 'AS', 'AMERICAN SAMOA', 'American Samoa', 'ASM', '16', '+1684'),
(6, 'AD', 'ANDORRA', 'Andorra', 'AND', '20', '+376'),
(7, 'AO', 'ANGOLA', 'Angola', 'AGO', '24', '+244'),
(8, 'AI', 'ANGUILLA', 'Anguilla', 'AIA', '660', '+1264'),
(9, 'AQ', 'ANTARCTICA', 'Antarctica', '', '0', '+672'),
(10, 'AG', 'ANTIGUA AND BARBUDA', 'Antigua and Barbuda', 'ATG', '28', '+1268'),
(11, 'AR', 'ARGENTINA', 'Argentina', 'ARG', '32', '+54'),
(12, 'AM', 'ARMENIA', 'Armenia', 'ARM', '51', '+374'),
(13, 'AW', 'ARUBA', 'Aruba', 'ABW', '533', '+297'),
(14, 'AP', 'ASIA PACIFIC REGION', 'Asia / Pacific Region', '0', '0', '+0'),
(15, 'AU', 'AUSTRALIA', 'Australia', 'AUS', '36', '+61'),
(16, 'AT', 'AUSTRIA', 'Austria', 'AUT', '40', '+43'),
(17, 'AZ', 'AZERBAIJAN', 'Azerbaijan', 'AZE', '31', '+994'),
(18, 'BS', 'BAHAMAS', 'Bahamas', 'BHS', '44', '+1242'),
(19, 'BH', 'BAHRAIN', 'Bahrain', 'BHR', '48', '+973'),
(20, 'BD', 'BANGLADESH', 'Bangladesh', 'BGD', '50', '+880'),
(21, 'BB', 'BARBADOS', 'Barbados', 'BRB', '52', '+1246'),
(22, 'BY', 'BELARUS', 'Belarus', 'BLR', '112', '+375'),
(23, 'BE', 'BELGIUM', 'Belgium', 'BEL', '56', '+32'),
(24, 'BZ', 'BELIZE', 'Belize', 'BLZ', '84', '+501'),
(25, 'BJ', 'BENIN', 'Benin', 'BEN', '204', '+229'),
(26, 'BM', 'BERMUDA', 'Bermuda', 'BMU', '60', '+1441'),
(27, 'BT', 'BHUTAN', 'Bhutan', 'BTN', '64', '+975'),
(28, 'BO', 'BOLIVIA', 'Bolivia', 'BOL', '68', '+591'),
(29, 'BQ', 'BONAIRE, SINT EUSTATIUS AND SABA', 'Bonaire, Sint Eustatius and Saba', 'BES', '535', '+599'),
(30, 'BA', 'BOSNIA AND HERZEGOVINA', 'Bosnia and Herzegovina', 'BIH', '70', '+387'),
(31, 'BW', 'BOTSWANA', 'Botswana', 'BWA', '72', '+267'),
(32, 'BV', 'BOUVET ISLAND', 'Bouvet Island', '', '0', '0'),
(33, 'BR', 'BRAZIL', 'Brazil', 'BRA', '76', '+55'),
(34, 'IO', 'BRITISH INDIAN OCEAN TERRITORY', 'British Indian Ocean Territory', '', '0', '246'),
(35, 'BN', 'BRUNEI DARUSSALAM', 'Brunei Darussalam', 'BRN', '96', '+673'),
(36, 'BG', 'BULGARIA', 'Bulgaria', 'BGR', '100', '+359'),
(37, 'BF', 'BURKINA FASO', 'Burkina Faso', 'BFA', '854', '+226'),
(38, 'BI', 'BURUNDI', 'Burundi', 'BDI', '108', '+257'),
(39, 'KH', 'CAMBODIA', 'Cambodia', 'KHM', '116', '+855'),
(40, 'CM', 'CAMEROON', 'Cameroon', 'CMR', '120', '+237'),
(41, 'CA', 'CANADA', 'Canada', 'CAN', '124', '+1'),
(42, 'CV', 'CAPE VERDE', 'Cape Verde', 'CPV', '132', '+238'),
(43, 'KY', 'CAYMAN ISLANDS', 'Cayman Islands', 'CYM', '136', '+1345'),
(44, 'CF', 'CENTRAL AFRICAN REPUBLIC', 'Central African Republic', 'CAF', '140', '+236'),
(45, 'TD', 'CHAD', 'Chad', 'TCD', '148', '+235'),
(46, 'CL', 'CHILE', 'Chile', 'CHL', '152', '+56'),
(47, 'CN', 'CHINA', 'China', 'CHN', '156', '+86'),
(48, 'CX', 'CHRISTMAS ISLAND', 'Christmas Island', '', '0', '61'),
(49, 'CC', 'COCOS (KEELING) ISLANDS', 'Cocos (Keeling) Islands', '', '0', '672'),
(50, 'CO', 'COLOMBIA', 'Colombia', 'COL', '170', '+57'),
(51, 'KM', 'COMOROS', 'Comoros', 'COM', '174', '+269'),
(52, 'CG', 'CONGO', 'Congo', 'COG', '178', '+242'),
(53, 'CD', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'Congo, the Democratic Republic of the', 'COD', '180', '+242'),
(54, 'CK', 'COOK ISLANDS', 'Cook Islands', 'COK', '184', '+682'),
(55, 'CR', 'COSTA RICA', 'Costa Rica', 'CRI', '188', '+506'),
(56, 'CI', 'COTE D''IVOIRE', 'Cote D''Ivoire', 'CIV', '384', '+225'),
(57, 'HR', 'CROATIA', 'Croatia', 'HRV', '191', '+385'),
(58, 'CU', 'CUBA', 'Cuba', 'CUB', '192', '+53'),
(59, 'CW', 'CURACAO', 'Curacao', 'CUW', '531', '+599'),
(60, 'CY', 'CYPRUS', 'Cyprus', 'CYP', '196', '+357'),
(61, 'CZ', 'CZECH REPUBLIC', 'Czech Republic', 'CZE', '203', '+420'),
(62, 'DK', 'DENMARK', 'Denmark', 'DNK', '208', '+45'),
(63, 'DJ', 'DJIBOUTI', 'Djibouti', 'DJI', '262', '+253'),
(64, 'DM', 'DOMINICA', 'Dominica', 'DMA', '212', '+1767'),
(65, 'DO', 'DOMINICAN REPUBLIC', 'Dominican Republic', 'DOM', '214', '+1809'),
(66, 'EC', 'ECUADOR', 'Ecuador', 'ECU', '218', '+593'),
(67, 'EG', 'EGYPT', 'Egypt', 'EGY', '818', '+20'),
(68, 'SV', 'EL SALVADOR', 'El Salvador', 'SLV', '222', '+503'),
(69, 'GQ', 'EQUATORIAL GUINEA', 'Equatorial Guinea', 'GNQ', '226', '+240'),
(70, 'ER', 'ERITREA', 'Eritrea', 'ERI', '232', '+291'),
(71, 'EE', 'ESTONIA', 'Estonia', 'EST', '233', '+372'),
(72, 'ET', 'ETHIOPIA', 'Ethiopia', 'ETH', '231', '+251'),
(73, 'FK', 'FALKLAND ISLANDS (MALVINAS)', 'Falkland Islands (Malvinas)', 'FLK', '238', '+500'),
(74, 'FO', 'FAROE ISLANDS', 'Faroe Islands', 'FRO', '234', '+298'),
(75, 'FJ', 'FIJI', 'Fiji', 'FJI', '242', '+679'),
(76, 'FI', 'FINLAND', 'Finland', 'FIN', '246', '+358'),
(77, 'FR', 'FRANCE', 'France', 'FRA', '250', '+33'),
(78, 'GF', 'FRENCH GUIANA', 'French Guiana', 'GUF', '254', '+594'),
(79, 'PF', 'FRENCH POLYNESIA', 'French Polynesia', 'PYF', '258', '+689'),
(80, 'TF', 'FRENCH SOUTHERN TERRITORIES', 'French Southern Territories', '', '0', '0'),
(81, 'GA', 'GABON', 'Gabon', 'GAB', '266', '+241'),
(82, 'GM', 'GAMBIA', 'Gambia', 'GMB', '270', '+220'),
(83, 'GE', 'GEORGIA', 'Georgia', 'GEO', '268', '+995'),
(84, 'DE', 'GERMANY', 'Germany', 'DEU', '276', '+49'),
(85, 'GH', 'GHANA', 'Ghana', 'GHA', '288', '+233'),
(86, 'GI', 'GIBRALTAR', 'Gibraltar', 'GIB', '292', '+350'),
(87, 'GR', 'GREECE', 'Greece', 'GRC', '300', '+30'),
(88, 'GL', 'GREENLAND', 'Greenland', 'GRL', '304', '+299'),
(89, 'GD', 'GRENADA', 'Grenada', 'GRD', '308', '+1473'),
(90, 'GP', 'GUADELOUPE', 'Guadeloupe', 'GLP', '312', '+590'),
(91, 'GU', 'GUAM', 'Guam', 'GUM', '316', '+1671'),
(92, 'GT', 'GUATEMALA', 'Guatemala', 'GTM', '320', '+502'),
(93, 'GG', 'GUERNSEY', 'Guernsey', 'GGY', '831', '+44'),
(94, 'GN', 'GUINEA', 'Guinea', 'GIN', '324', '+224'),
(95, 'GW', 'GUINEA-BISSAU', 'Guinea-Bissau', 'GNB', '624', '+245'),
(96, 'GY', 'GUYANA', 'Guyana', 'GUY', '328', '+592'),
(97, 'HT', 'HAITI', 'Haiti', 'HTI', '332', '+509'),
(98, 'HM', 'HEARD ISLAND AND MCDONALD ISLANDS', 'Heard Island and Mcdonald Islands', '', '0', '0'),
(99, 'VA', 'HOLY SEE (VATICAN CITY STATE)', 'Holy See (Vatican City State)', 'VAT', '336', '+39'),
(100, 'HN', 'HONDURAS', 'Honduras', 'HND', '340', '+504'),
(101, 'HK', 'HONG KONG', 'Hong Kong', 'HKG', '344', '+852'),
(102, 'HU', 'HUNGARY', 'Hungary', 'HUN', '348', '+36'),
(103, 'IS', 'ICELAND', 'Iceland', 'ISL', '352', '+354'),
(104, 'IN', 'INDIA', 'India', 'IND', '356', '+91'),
(105, 'ID', 'INDONESIA', 'Indonesia', 'IDN', '360', '+62'),
(106, 'IR', 'IRAN, ISLAMIC REPUBLIC OF', 'Iran, Islamic Republic of', 'IRN', '364', '+98'),
(107, 'IQ', 'IRAQ', 'Iraq', 'IRQ', '368', '+964'),
(108, 'IE', 'IRELAND', 'Ireland', 'IRL', '372', '+353'),
(109, 'IM', 'ISLE OF MAN', 'Isle of Man', 'IMN', '833', '+44'),
(110, 'IL', 'ISRAEL', 'Israel', 'ISR', '376', '+972'),
(111, 'IT', 'ITALY', 'Italy', 'ITA', '380', '+39'),
(112, 'JM', 'JAMAICA', 'Jamaica', 'JAM', '388', '+1876'),
(113, 'JP', 'JAPAN', 'Japan', 'JPN', '392', '+81'),
(114, 'JE', 'JERSEY', 'Jersey', 'JEY', '832', '+44'),
(115, 'JO', 'JORDAN', 'Jordan', 'JOR', '400', '+962'),
(116, 'KZ', 'KAZAKHSTAN', 'Kazakhstan', 'KAZ', '398', '+7'),
(117, 'KE', 'KENYA', 'Kenya', 'KEN', '404', '+254'),
(118, 'KI', 'KIRIBATI', 'Kiribati', 'KIR', '296', '+686'),
(119, 'KP', 'KOREA, DEMOCRATIC PEOPLE''S REPUBLIC OF', 'Korea, Democratic People''s Republic of', 'PRK', '408', '+850'),
(120, 'KR', 'KOREA, REPUBLIC OF', 'Korea, Republic of', 'KOR', '410', '+82'),
(121, 'XK', 'KOSOVO', 'Kosovo', '---', '0', '+381'),
(122, 'KW', 'KUWAIT', 'Kuwait', 'KWT', '414', '+965'),
(123, 'KG', 'KYRGYZSTAN', 'Kyrgyzstan', 'KGZ', '417', '+996'),
(124, 'LA', 'LAO PEOPLE''S DEMOCRATIC REPUBLIC', 'Lao People''s Democratic Republic', 'LAO', '418', '+856'),
(125, 'LV', 'LATVIA', 'Latvia', 'LVA', '428', '+371'),
(126, 'LB', 'LEBANON', 'Lebanon', 'LBN', '422', '+961'),
(127, 'LS', 'LESOTHO', 'Lesotho', 'LSO', '426', '+266'),
(128, 'LR', 'LIBERIA', 'Liberia', 'LBR', '430', '+231'),
(129, 'LY', 'LIBYAN ARAB JAMAHIRIYA', 'Libyan Arab Jamahiriya', 'LBY', '434', '+218'),
(130, 'LI', 'LIECHTENSTEIN', 'Liechtenstein', 'LIE', '438', '+423'),
(131, 'LT', 'LITHUANIA', 'Lithuania', 'LTU', '440', '+370'),
(132, 'LU', 'LUXEMBOURG', 'Luxembourg', 'LUX', '442', '+352'),
(133, 'MO', 'MACAO', 'Macao', 'MAC', '446', '+853'),
(134, 'MK', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'Macedonia, the Former Yugoslav Republic of', 'MKD', '807', '+389'),
(135, 'MG', 'MADAGASCAR', 'Madagascar', 'MDG', '450', '+261'),
(136, 'MW', 'MALAWI', 'Malawi', 'MWI', '454', '+265'),
(137, 'MY', 'MALAYSIA', 'Malaysia', 'MYS', '458', '+60'),
(138, 'MV', 'MALDIVES', 'Maldives', 'MDV', '462', '+960'),
(139, 'ML', 'MALI', 'Mali', 'MLI', '466', '+223'),
(140, 'MT', 'MALTA', 'Malta', 'MLT', '470', '+356'),
(141, 'MH', 'MARSHALL ISLANDS', 'Marshall Islands', 'MHL', '584', '+692'),
(142, 'MQ', 'MARTINIQUE', 'Martinique', 'MTQ', '474', '+596'),
(143, 'MR', 'MAURITANIA', 'Mauritania', 'MRT', '478', '+222'),
(144, 'MU', 'MAURITIUS', 'Mauritius', 'MUS', '480', '+230'),
(145, 'YT', 'MAYOTTE', 'Mayotte', '', '0', '269'),
(146, 'MX', 'MEXICO', 'Mexico', 'MEX', '484', '+52'),
(147, 'FM', 'MICRONESIA, FEDERATED STATES OF', 'Micronesia, Federated States of', 'FSM', '583', '+691'),
(148, 'MD', 'MOLDOVA, REPUBLIC OF', 'Moldova, Republic of', 'MDA', '498', '+373'),
(149, 'MC', 'MONACO', 'Monaco', 'MCO', '492', '+377'),
(150, 'MN', 'MONGOLIA', 'Mongolia', 'MNG', '496', '+976'),
(151, 'ME', 'MONTENEGRO', 'Montenegro', 'MNE', '499', '+382'),
(152, 'MS', 'MONTSERRAT', 'Montserrat', 'MSR', '500', '+1664'),
(153, 'MA', 'MOROCCO', 'Morocco', 'MAR', '504', '+212'),
(154, 'MZ', 'MOZAMBIQUE', 'Mozambique', 'MOZ', '508', '+258'),
(155, 'MM', 'MYANMAR', 'Myanmar', 'MMR', '104', '+95'),
(156, 'NA', 'NAMIBIA', 'Namibia', 'NAM', '516', '+264'),
(157, 'NR', 'NAURU', 'Nauru', 'NRU', '520', '+674'),
(158, 'NP', 'NEPAL', 'Nepal', 'NPL', '524', '+977'),
(159, 'NL', 'NETHERLANDS', 'Netherlands', 'NLD', '528', '+31'),
(160, 'AN', 'NETHERLANDS ANTILLES', 'Netherlands Antilles', 'ANT', '530', '+599'),
(161, 'NC', 'NEW CALEDONIA', 'New Caledonia', 'NCL', '540', '+687'),
(162, 'NZ', 'NEW ZEALAND', 'New Zealand', 'NZL', '554', '+64'),
(163, 'NI', 'NICARAGUA', 'Nicaragua', 'NIC', '558', '+505'),
(164, 'NE', 'NIGER', 'Niger', 'NER', '562', '+227'),
(165, 'NG', 'NIGERIA', 'Nigeria', 'NGA', '566', '+234'),
(166, 'NU', 'NIUE', 'Niue', 'NIU', '570', '+683'),
(167, 'NF', 'NORFOLK ISLAND', 'Norfolk Island', 'NFK', '574', '+672'),
(168, 'MP', 'NORTHERN MARIANA ISLANDS', 'Northern Mariana Islands', 'MNP', '580', '+1670'),
(169, 'NO', 'NORWAY', 'Norway', 'NOR', '578', '+47'),
(170, 'OM', 'OMAN', 'Oman', 'OMN', '512', '+968'),
(171, 'PK', 'PAKISTAN', 'Pakistan', 'PAK', '586', '+92'),
(172, 'PW', 'PALAU', 'Palau', 'PLW', '585', '+680'),
(173, 'PS', 'PALESTINIAN TERRITORY, OCCUPIED', 'Palestinian Territory, Occupied', '', '0', '970'),
(174, 'PA', 'PANAMA', 'Panama', 'PAN', '591', '+507'),
(175, 'PG', 'PAPUA NEW GUINEA', 'Papua New Guinea', 'PNG', '598', '+675'),
(176, 'PY', 'PARAGUAY', 'Paraguay', 'PRY', '600', '+595'),
(177, 'PE', 'PERU', 'Peru', 'PER', '604', '+51'),
(178, 'PH', 'PHILIPPINES', 'Philippines', 'PHL', '608', '+63'),
(179, 'PN', 'PITCAIRN', 'Pitcairn', 'PCN', '612', '+64'),
(180, 'PL', 'POLAND', 'Poland', 'POL', '616', '+48'),
(181, 'PT', 'PORTUGAL', 'Portugal', 'PRT', '620', '+351'),
(182, 'PR', 'PUERTO RICO', 'Puerto Rico', 'PRI', '630', '+1787'),
(183, 'QA', 'QATAR', 'Qatar', 'QAT', '634', '+974'),
(184, 'RE', 'REUNION', 'Reunion', 'REU', '638', '+262'),
(185, 'RO', 'ROMANIA', 'Romania', 'ROM', '642', '+40'),
(186, 'RU', 'RUSSIAN FEDERATION', 'Russian Federation', 'RUS', '643', '+70'),
(187, 'RW', 'RWANDA', 'Rwanda', 'RWA', '646', '+250'),
(188, 'BL', 'SAINT BARTHELEMY', 'Saint Barthelemy', 'BLM', '652', '+590'),
(189, 'SH', 'SAINT HELENA', 'Saint Helena', 'SHN', '654', '+290'),
(190, 'KN', 'SAINT KITTS AND NEVIS', 'Saint Kitts and Nevis', 'KNA', '659', '+1869'),
(191, 'LC', 'SAINT LUCIA', 'Saint Lucia', 'LCA', '662', '+1758'),
(192, 'MF', 'SAINT MARTIN', 'Saint Martin', 'MAF', '663', '+590'),
(193, 'PM', 'SAINT PIERRE AND MIQUELON', 'Saint Pierre and Miquelon', 'SPM', '666', '+508'),
(194, 'VC', 'SAINT VINCENT AND THE GRENADINES', 'Saint Vincent and the Grenadines', 'VCT', '670', '+1784'),
(195, 'WS', 'SAMOA', 'Samoa', 'WSM', '882', '+684'),
(196, 'SM', 'SAN MARINO', 'San Marino', 'SMR', '674', '+378'),
(197, 'ST', 'SAO TOME AND PRINCIPE', 'Sao Tome and Principe', 'STP', '678', '+239'),
(198, 'SA', 'SAUDI ARABIA', 'Saudi Arabia', 'SAU', '682', '+966'),
(199, 'SN', 'SENEGAL', 'Senegal', 'SEN', '686', '+221'),
(200, 'RS', 'SERBIA', 'Serbia', 'SRB', '688', '+381'),
(201, 'CS', 'SERBIA AND MONTENEGRO', 'Serbia and Montenegro', '', '0', '381'),
(202, 'SC', 'SEYCHELLES', 'Seychelles', 'SYC', '690', '+248'),
(203, 'SL', 'SIERRA LEONE', 'Sierra Leone', 'SLE', '694', '+232'),
(204, 'SG', 'SINGAPORE', 'Singapore', 'SGP', '702', '+65'),
(205, 'SX', 'SINT MAARTEN', 'Sint Maarten', 'SXM', '534', '+1'),
(206, 'SK', 'SLOVAKIA', 'Slovakia', 'SVK', '703', '+421'),
(207, 'SI', 'SLOVENIA', 'Slovenia', 'SVN', '705', '+386'),
(208, 'SB', 'SOLOMON ISLANDS', 'Solomon Islands', 'SLB', '90', '+677'),
(209, 'SO', 'SOMALIA', 'Somalia', 'SOM', '706', '+252'),
(210, 'ZA', 'SOUTH AFRICA', 'South Africa', 'ZAF', '710', '+27'),
(211, 'GS', 'SOUTH GEORGIA AND THE SOUTH SANDWICH ISLANDS', 'South Georgia and the South Sandwich Islands', '', '0', '0'),
(212, 'SS', 'SOUTH SUDAN', 'South Sudan', 'SSD', '728', '+211'),
(213, 'ES', 'SPAIN', 'Spain', 'ESP', '724', '+34'),
(214, 'LK', 'SRI LANKA', 'Sri Lanka', 'LKA', '144', '+94'),
(215, 'SD', 'SUDAN', 'Sudan', 'SDN', '736', '+249'),
(216, 'SR', 'SURINAME', 'Suriname', 'SUR', '740', '+597'),
(217, 'SJ', 'SVALBARD AND JAN MAYEN', 'Svalbard and Jan Mayen', 'SJM', '744', '+47'),
(218, 'SZ', 'SWAZILAND', 'Swaziland', 'SWZ', '748', '+268'),
(219, 'SE', 'SWEDEN', 'Sweden', 'SWE', '752', '+46'),
(220, 'CH', 'SWITZERLAND', 'Switzerland', 'CHE', '756', '+41'),
(221, 'SY', 'SYRIAN ARAB REPUBLIC', 'Syrian Arab Republic', 'SYR', '760', '+963'),
(222, 'TW', 'TAIWAN, PROVINCE OF CHINA', 'Taiwan, Province of China', 'TWN', '158', '+886'),
(223, 'TJ', 'TAJIKISTAN', 'Tajikistan', 'TJK', '762', '+992'),
(224, 'TZ', 'TANZANIA, UNITED REPUBLIC OF', 'Tanzania, United Republic of', 'TZA', '834', '+255'),
(225, 'TH', 'THAILAND', 'Thailand', 'THA', '764', '+66'),
(226, 'TL', 'TIMOR-LESTE', 'Timor-Leste', '', '0', '670'),
(227, 'TG', 'TOGO', 'Togo', 'TGO', '768', '+228'),
(228, 'TK', 'TOKELAU', 'Tokelau', 'TKL', '772', '+690'),
(229, 'TO', 'TONGA', 'Tonga', 'TON', '776', '+676'),
(230, 'TT', 'TRINIDAD AND TOBAGO', 'Trinidad and Tobago', 'TTO', '780', '+1868'),
(231, 'TN', 'TUNISIA', 'Tunisia', 'TUN', '788', '+216'),
(232, 'TR', 'TURKEY', 'Turkey', 'TUR', '792', '+90'),
(233, 'TM', 'TURKMENISTAN', 'Turkmenistan', 'TKM', '795', '+7370'),
(234, 'TC', 'TURKS AND CAICOS ISLANDS', 'Turks and Caicos Islands', 'TCA', '796', '+1649'),
(235, 'TV', 'TUVALU', 'Tuvalu', 'TUV', '798', '+688'),
(236, 'UG', 'UGANDA', 'Uganda', 'UGA', '800', '+256'),
(237, 'UA', 'UKRAINE', 'Ukraine', 'UKR', '804', '+380'),
(238, 'AE', 'UNITED ARAB EMIRATES', 'United Arab Emirates', 'ARE', '784', '+971'),
(239, 'GB', 'UNITED KINGDOM', 'United Kingdom', 'GBR', '826', '+44'),
(240, 'US', 'UNITED STATES', 'United States', 'USA', '840', '+1'),
(241, 'UM', 'UNITED STATES MINOR OUTLYING ISLANDS', 'United States Minor Outlying Islands', '', '0', '1'),
(242, 'UY', 'URUGUAY', 'Uruguay', 'URY', '858', '+598'),
(243, 'UZ', 'UZBEKISTAN', 'Uzbekistan', 'UZB', '860', '+998'),
(244, 'VU', 'VANUATU', 'Vanuatu', 'VUT', '548', '+678'),
(245, 'VE', 'VENEZUELA', 'Venezuela', 'VEN', '862', '+58'),
(246, 'VN', 'VIET NAM', 'Viet Nam', 'VNM', '704', '+84'),
(247, 'VG', 'VIRGIN ISLANDS, BRITISH', 'Virgin Islands, British', 'VGB', '92', '+1284'),
(248, 'VI', 'VIRGIN ISLANDS, U.S.', 'Virgin Islands, U.s.', 'VIR', '850', '+1340'),
(249, 'WF', 'WALLIS AND FUTUNA', 'Wallis and Futuna', 'WLF', '876', '+681'),
(250, 'EH', 'WESTERN SAHARA', 'Western Sahara', 'ESH', '732', '+212'),
(251, 'YE', 'YEMEN', 'Yemen', 'YEM', '887', '+967'),
(252, 'ZM', 'ZAMBIA', 'Zambia', 'ZMB', '894', '+260'),
(253, 'ZW', 'ZIMBABWE', 'Zimbabwe', 'ZWE', '716', '+263');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_country`
--

CREATE TABLE IF NOT EXISTS `tbl_country` (
`country_id` int(5) NOT NULL,
  `name` varchar(80) NOT NULL DEFAULT '',
  `short_name` varchar(18) DEFAULT '',
  `continent` varchar(84) DEFAULT NULL,
  `language_id` int(11) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=251 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_country`
--

INSERT INTO `tbl_country` (`country_id`, `name`, `short_name`, `continent`, `language_id`) VALUES
(1, 'Afghanistan', 'AF', NULL, NULL),
(2, 'Aland Islands', '&Aring;land Island', NULL, NULL),
(3, 'Albania', 'Republic of Albani', NULL, NULL),
(4, 'Algeria', 'People''s Democrati', NULL, NULL),
(5, 'American Samoa', 'American Samoa', NULL, NULL),
(6, 'Andorra', 'Principality of An', NULL, NULL),
(7, 'Angola', 'Republic of Angola', NULL, NULL),
(8, 'Anguilla', 'Anguilla', NULL, NULL),
(9, 'Antarctica', 'Antarctica', NULL, NULL),
(10, 'Antigua and Barbuda', 'Antigua and Barbud', NULL, NULL),
(11, 'Argentina', 'Argentine Republic', NULL, NULL),
(12, 'Armenia', 'Republic of Armeni', NULL, NULL),
(13, 'Aruba', 'Aruba', NULL, NULL),
(14, 'Australia', 'Commonwealth of Au', NULL, NULL),
(15, 'Austria', 'Republic of Austri', NULL, NULL),
(16, 'Azerbaijan', 'Republic of Azerba', NULL, NULL),
(17, 'Bahamas', 'Commonwealth of Th', NULL, NULL),
(18, 'Bahrain', 'Kingdom of Bahrain', NULL, NULL),
(19, 'Bangladesh', 'People''s Republic ', NULL, NULL),
(20, 'Barbados', 'Barbados', NULL, NULL),
(21, 'Belarus', 'Republic of Belaru', NULL, NULL),
(22, 'Belgium', 'Kingdom of Belgium', NULL, NULL),
(23, 'Belize', 'Belize', NULL, NULL),
(24, 'Benin', 'Republic of Benin', NULL, NULL),
(25, 'Bermuda', 'Bermuda Islands', NULL, NULL),
(26, 'Bhutan', 'Kingdom of Bhutan', NULL, NULL),
(27, 'Bolivia', 'Plurinational Stat', NULL, NULL),
(28, 'Bonaire, Sint Eustatius and Saba', 'Bonaire, Sint Eust', NULL, NULL),
(29, 'Bosnia and Herzegovina', 'Bosnia and Herzego', NULL, NULL),
(30, 'Botswana', 'Republic of Botswa', NULL, NULL),
(31, 'Bouvet Island', 'Bouvet Island', NULL, NULL),
(32, 'Brazil', 'Federative Republi', NULL, NULL),
(33, 'British Indian Ocean Territory', 'British Indian Oce', NULL, NULL),
(34, 'Brunei', 'Brunei Darussalam', NULL, NULL),
(35, 'Bulgaria', 'Republic of Bulgar', NULL, NULL),
(36, 'Burkina Faso', 'Burkina Faso', NULL, NULL),
(37, 'Burundi', 'Republic of Burund', NULL, NULL),
(38, 'Cambodia', 'Kingdom of Cambodi', NULL, NULL),
(39, 'Cameroon', 'Republic of Camero', NULL, NULL),
(40, 'Canada', 'Canada', NULL, NULL),
(41, 'Cape Verde', 'Republic of Cape V', NULL, NULL),
(42, 'Cayman Islands', 'The Cayman Islands', NULL, NULL),
(43, 'Central African Republic', 'Central African Re', NULL, NULL),
(44, 'Chad', 'Republic of Chad', NULL, NULL),
(45, 'Chile', 'Republic of Chile', NULL, NULL),
(46, 'China', 'People''s Republic ', NULL, NULL),
(47, 'Christmas Island', 'Christmas Island', NULL, NULL),
(48, 'Cocos (Keeling) Islands', 'Cocos (Keeling) Is', NULL, NULL),
(49, 'Colombia', 'Republic of Colomb', NULL, NULL),
(50, 'Comoros', 'Union of the Comor', NULL, NULL),
(51, 'Congo', 'Republic of the Co', NULL, NULL),
(52, 'Cook Islands', 'Cook Islands', NULL, NULL),
(53, 'Costa Rica', 'Republic of Costa ', NULL, NULL),
(54, 'Cote d''ivoire (Ivory Coast)', 'Republic of C&ocir', NULL, NULL),
(55, 'Croatia', 'Republic of Croati', NULL, NULL),
(56, 'Cuba', 'Republic of Cuba', NULL, NULL),
(57, 'Curacao', 'Cura&ccedil;ao', NULL, NULL),
(58, 'Cyprus', 'Republic of Cyprus', NULL, NULL),
(59, 'Czech Republic', 'Czech Republic', NULL, NULL),
(60, 'Democratic Republic of the Congo', 'Democratic Republi', NULL, NULL),
(61, 'Denmark', 'Kingdom of Denmark', NULL, NULL),
(62, 'Djibouti', 'Republic of Djibou', NULL, NULL),
(63, 'Dominica', 'Commonwealth of Do', NULL, NULL),
(64, 'Dominican Republic', 'Dominican Republic', NULL, NULL),
(65, 'Ecuador', 'Republic of Ecuado', NULL, NULL),
(66, 'Egypt', 'Arab Republic of E', NULL, NULL),
(67, 'El Salvador', 'Republic of El Sal', NULL, NULL),
(68, 'Equatorial Guinea', 'Republic of Equato', NULL, NULL),
(69, 'Eritrea', 'State of Eritrea', NULL, NULL),
(70, 'Estonia', 'Republic of Estoni', NULL, NULL),
(71, 'Ethiopia', 'Federal Democratic', NULL, NULL),
(72, 'Falkland Islands (Malvinas)', 'The Falkland Islan', NULL, NULL),
(73, 'Faroe Islands', 'The Faroe Islands', NULL, NULL),
(74, 'Fiji', 'Republic of Fiji', NULL, NULL),
(75, 'Finland', 'Republic of Finlan', NULL, NULL),
(76, 'France', 'French Republic', NULL, NULL),
(77, 'French Guiana', 'French Guiana', NULL, NULL),
(78, 'French Polynesia', 'French Polynesia', NULL, NULL),
(79, 'French Southern Territories', 'French Southern Te', NULL, NULL),
(80, 'Gabon', 'Gabonese Republic', NULL, NULL),
(81, 'Gambia', 'Republic of The Ga', NULL, NULL),
(82, 'Georgia', 'Georgia', NULL, NULL),
(83, 'Germany', 'Federal Republic o', NULL, NULL),
(84, 'Ghana', 'Republic of Ghana', NULL, NULL),
(85, 'Gibraltar', 'Gibraltar', NULL, NULL),
(86, 'Greece', 'Hellenic Republic', NULL, NULL),
(87, 'Greenland', 'Greenland', NULL, NULL),
(88, 'Grenada', 'Grenada', NULL, NULL),
(89, 'Guadaloupe', 'Guadeloupe', NULL, NULL),
(90, 'Guam', 'Guam', NULL, NULL),
(91, 'Guatemala', 'Republic of Guatem', NULL, NULL),
(92, 'Guernsey', 'Guernsey', NULL, NULL),
(93, 'Guinea', 'Republic of Guinea', NULL, NULL),
(94, 'Guinea-Bissau', 'Republic of Guinea', NULL, NULL),
(95, 'Guyana', 'Co-operative Repub', NULL, NULL),
(96, 'Haiti', 'Republic of Haiti', NULL, NULL),
(97, 'Heard Island and McDonald Islands', 'Heard Island and M', NULL, NULL),
(98, 'Honduras', 'Republic of Hondur', NULL, NULL),
(99, 'Hong Kong', 'Hong Kong', NULL, NULL),
(100, 'Hungary', 'Hungary', NULL, NULL),
(101, 'Iceland', 'Republic of Icelan', NULL, NULL),
(102, 'India', 'Republic of India', NULL, NULL),
(103, 'Indonesia', 'Republic of Indone', NULL, NULL),
(104, 'Iran', 'Islamic Republic o', NULL, NULL),
(105, 'Iraq', 'Republic of Iraq', NULL, NULL),
(106, 'Ireland', 'Ireland', NULL, NULL),
(107, 'Isle of Man', 'Isle of Man', NULL, NULL),
(108, 'Israel', 'State of Israel', NULL, NULL),
(109, 'Italy', 'Italian Republic', NULL, NULL),
(110, 'Jamaica', 'Jamaica', NULL, NULL),
(111, 'Japan', 'Japan', NULL, NULL),
(112, 'Jersey', 'The Bailiwick of J', NULL, NULL),
(113, 'Jordan', 'Hashemite Kingdom ', NULL, NULL),
(114, 'Kazakhstan', 'Republic of Kazakh', NULL, NULL),
(115, 'Kenya', 'Republic of Kenya', NULL, NULL),
(116, 'Kiribati', 'Republic of Kiriba', NULL, NULL),
(117, 'Kosovo', 'Republic of Kosovo', NULL, NULL),
(118, 'Kuwait', 'State of Kuwait', NULL, NULL),
(119, 'Kyrgyzstan', 'Kyrgyz Republic', NULL, NULL),
(120, 'Laos', 'Lao People''s Democ', NULL, NULL),
(121, 'Latvia', 'Republic of Latvia', NULL, NULL),
(122, 'Lebanon', 'Republic of Lebano', NULL, NULL),
(123, 'Lesotho', 'Kingdom of Lesotho', NULL, NULL),
(124, 'Liberia', 'Republic of Liberi', NULL, NULL),
(125, 'Libya', 'Libya', NULL, NULL),
(126, 'Liechtenstein', 'Principality of Li', NULL, NULL),
(127, 'Lithuania', 'Republic of Lithua', NULL, NULL),
(128, 'Luxembourg', 'Grand Duchy of Lux', NULL, NULL),
(129, 'Macao', 'The Macao Special ', NULL, NULL),
(130, 'Macedonia', 'The Former Yugosla', NULL, NULL),
(131, 'Madagascar', 'Republic of Madaga', NULL, NULL),
(132, 'Malawi', 'Republic of Malawi', NULL, NULL),
(133, 'Malaysia', 'Malaysia', NULL, NULL),
(134, 'Maldives', 'Republic of Maldiv', NULL, NULL),
(135, 'Mali', 'Republic of Mali', NULL, NULL),
(136, 'Malta', 'Republic of Malta', NULL, NULL),
(137, 'Marshall Islands', 'Republic of the Ma', NULL, NULL),
(138, 'Martinique', 'Martinique', NULL, NULL),
(139, 'Mauritania', 'Islamic Republic o', NULL, NULL),
(140, 'Mauritius', 'Republic of Maurit', NULL, NULL),
(141, 'Mayotte', 'Mayotte', NULL, NULL),
(142, 'Mexico', 'United Mexican Sta', NULL, NULL),
(143, 'Micronesia', 'Federated States o', NULL, NULL),
(144, 'Moldava', 'Republic of Moldov', NULL, NULL),
(145, 'Monaco', 'Principality of Mo', NULL, NULL),
(146, 'Mongolia', 'Mongolia', NULL, NULL),
(147, 'Montenegro', 'Montenegro', NULL, NULL),
(148, 'Montserrat', 'Montserrat', NULL, NULL),
(149, 'Morocco', 'Kingdom of Morocco', NULL, NULL),
(150, 'Mozambique', 'Republic of Mozamb', NULL, NULL),
(151, 'Myanmar (Burma)', 'Republic of the Un', NULL, NULL),
(152, 'Namibia', 'Republic of Namibi', NULL, NULL),
(153, 'Nauru', 'Republic of Nauru', NULL, NULL),
(154, 'Nepal', 'Federal Democratic', NULL, NULL),
(155, 'Netherlands', 'Kingdom of the Net', NULL, NULL),
(156, 'New Caledonia', 'New Caledonia', NULL, NULL),
(157, 'New Zealand', 'New Zealand', NULL, NULL),
(158, 'Nicaragua', 'Republic of Nicara', NULL, NULL),
(159, 'Niger', 'Republic of Niger', NULL, NULL),
(160, 'Nigeria', 'Federal Republic o', NULL, NULL),
(161, 'Niue', 'Niue', NULL, NULL),
(162, 'Norfolk Island', 'Norfolk Island', NULL, NULL),
(163, 'North Korea', 'Democratic People''', NULL, NULL),
(164, 'Northern Mariana Islands', 'Northern Mariana I', NULL, NULL),
(165, 'Norway', 'Kingdom of Norway', NULL, NULL),
(166, 'Oman', 'Sultanate of Oman', NULL, NULL),
(167, 'Pakistan', 'Islamic Republic o', NULL, NULL),
(168, 'Palau', 'Republic of Palau', NULL, NULL),
(169, 'Palestine', 'State of Palestine', NULL, NULL),
(170, 'Panama', 'Republic of Panama', NULL, NULL),
(171, 'Papua New Guinea', 'Independent State ', NULL, NULL),
(172, 'Paraguay', 'Republic of Paragu', NULL, NULL),
(173, 'Peru', 'Republic of Peru', NULL, NULL),
(174, 'Phillipines', 'Republic of the Ph', NULL, NULL),
(175, 'Pitcairn', 'Pitcairn', NULL, NULL),
(176, 'Poland', 'Republic of Poland', NULL, NULL),
(177, 'Portugal', 'Portuguese Republi', NULL, NULL),
(178, 'Puerto Rico', 'Commonwealth of Pu', NULL, NULL),
(179, 'Qatar', 'State of Qatar', NULL, NULL),
(180, 'Reunion', 'R&eacute;union', NULL, NULL),
(181, 'Romania', 'Romania', NULL, NULL),
(182, 'Russia', 'Russian Federation', NULL, NULL),
(183, 'Rwanda', 'Republic of Rwanda', NULL, NULL),
(184, 'Saint Barthelemy', 'Saint Barth&eacute', NULL, NULL),
(185, 'Saint Helena', 'Saint Helena, Asce', NULL, NULL),
(186, 'Saint Kitts and Nevis', 'Federation of Sain', NULL, NULL),
(187, 'Saint Lucia', 'Saint Lucia', NULL, NULL),
(188, 'Saint Martin', 'Saint Martin', NULL, NULL),
(189, 'Saint Pierre and Miquelon', 'Saint Pierre and M', NULL, NULL),
(190, 'Saint Vincent and the Grenadines', 'Saint Vincent and ', NULL, NULL),
(191, 'Samoa', 'Independent State ', NULL, NULL),
(192, 'San Marino', 'Republic of San Ma', NULL, NULL),
(193, 'Sao Tome and Principe', 'Democratic Republi', NULL, NULL),
(194, 'Saudi Arabia', 'Kingdom of Saudi A', NULL, NULL),
(195, 'Senegal', 'Republic of Senega', NULL, NULL),
(196, 'Serbia', 'Republic of Serbia', NULL, NULL),
(197, 'Seychelles', 'Republic of Seyche', NULL, NULL),
(198, 'Sierra Leone', 'Republic of Sierra', NULL, NULL),
(199, 'Singapore', 'Republic of Singap', NULL, NULL),
(200, 'Sint Maarten', 'Sint Maarten', NULL, NULL),
(201, 'Slovakia', 'Slovak Republic', NULL, NULL),
(202, 'Slovenia', 'Republic of Sloven', NULL, NULL),
(203, 'Solomon Islands', 'Solomon Islands', NULL, NULL),
(204, 'Somalia', 'Somali Republic', NULL, NULL),
(205, 'South Africa', 'Republic of South ', NULL, NULL),
(206, 'South Georgia and the South Sandwich Islands', 'South Georgia and ', NULL, NULL),
(207, 'South Korea', 'Republic of Korea', NULL, NULL),
(208, 'South Sudan', 'Republic of South ', NULL, NULL),
(209, 'Spain', 'Kingdom of Spain', NULL, NULL),
(210, 'Sri Lanka', 'Democratic Sociali', NULL, NULL),
(211, 'Sudan', 'Republic of the Su', NULL, NULL),
(212, 'Suriname', 'Republic of Surina', NULL, NULL),
(213, 'Svalbard and Jan Mayen', 'Svalbard and Jan M', NULL, NULL),
(214, 'Swaziland', 'Kingdom of Swazila', NULL, NULL),
(215, 'Sweden', 'Kingdom of Sweden', NULL, NULL),
(216, 'Switzerland', 'Swiss Confederatio', NULL, NULL),
(217, 'Syria', 'Syrian Arab Republ', NULL, NULL),
(218, 'Taiwan', 'Republic of China ', NULL, NULL),
(219, 'Tajikistan', 'Republic of Tajiki', NULL, NULL),
(220, 'Tanzania', 'United Republic of', NULL, NULL),
(221, 'Thailand', 'Kingdom of Thailan', NULL, NULL),
(222, 'Timor-Leste (East Timor)', 'Democratic Republi', NULL, NULL),
(223, 'Togo', 'Togolese Republic', NULL, NULL),
(224, 'Tokelau', 'Tokelau', NULL, NULL),
(225, 'Tonga', 'Kingdom of Tonga', NULL, NULL),
(226, 'Trinidad and Tobago', 'Republic of Trinid', NULL, NULL),
(227, 'Tunisia', 'Republic of Tunisi', NULL, NULL),
(228, 'Turkey', 'Republic of Turkey', NULL, NULL),
(229, 'Turkmenistan', 'Turkmenistan', NULL, NULL),
(230, 'Turks and Caicos Islands', 'Turks and Caicos I', NULL, NULL),
(231, 'Tuvalu', 'Tuvalu', NULL, NULL),
(232, 'Uganda', 'Republic of Uganda', NULL, NULL),
(233, 'Ukraine', 'Ukraine', NULL, NULL),
(234, 'United Arab Emirates', 'United Arab Emirat', NULL, NULL),
(235, 'United Kingdom', 'United Kingdom of ', NULL, NULL),
(236, 'United States', 'United States of A', NULL, NULL),
(237, 'United States Minor Outlying Islands', 'United States Mino', NULL, NULL),
(238, 'Uruguay', 'Eastern Republic o', NULL, NULL),
(239, 'Uzbekistan', 'Republic of Uzbeki', NULL, NULL),
(240, 'Vanuatu', 'Republic of Vanuat', NULL, NULL),
(241, 'Vatican City', 'State of the Vatic', NULL, NULL),
(242, 'Venezuela', 'Bolivarian Republi', NULL, NULL),
(243, 'Vietnam', 'Socialist Republic', NULL, NULL),
(244, 'Virgin Islands, British', 'British Virgin Isl', NULL, NULL),
(245, 'Virgin Islands, US', 'Virgin Islands of ', NULL, NULL),
(246, 'Wallis and Futuna', 'Wallis and Futuna', NULL, NULL),
(247, 'Western Sahara', 'Western Sahara', NULL, NULL),
(248, 'Yemen', 'Republic of Yemen', NULL, NULL),
(249, 'Zambia', 'Republic of Zambia', NULL, NULL),
(250, 'Zimbabwe', 'Republic of Zimbab', NULL, NULL);

-- --------------------------------------------------------

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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

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
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_email_templates`
--

INSERT INTO `tbl_email_templates` (`template_id`, `template_name`, `template_body`, `template_description`) VALUES
(1, 'Test', '<p>Dear {{bent_stf}},</p>\r\n\r\n<p>hi hello</p>\r\n', 'test'),
(2, 'Testf', '<p>fdgdfg</p>\r\n\r\n<p>dfgdfg</p>\r\n', 'fg');

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
-- Table structure for table `tbl_language`
--

CREATE TABLE IF NOT EXISTS `tbl_language` (
`language_id` int(11) NOT NULL,
  `name` varchar(84) NOT NULL,
  `description` varchar(220) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_language`
--

INSERT INTO `tbl_language` (`language_id`, `name`, `description`) VALUES
(1, 'Nepali', NULL),
(2, 'English', NULL),
(3, 'Newari', NULL);

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
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

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
(36, 'tika.raj@bentraytech.com', 'tls', 'treterte', 'sdadfs', '', '', '', '2016-12-29', 'Sent', '14830078985864e79a78abc'),
(37, 'tika.raj@bentraytech.com', 'tls', 'Test', 'test', '', '', '', '2017-01-02', 'Sent', '14833317545869d8aadac94'),
(50, 'tika.raj@bentraytech.com', 'tls', 'test mail', '<p>Hello&nbsp;{{bent_stf}},</p>\r\n\r\n<p>dfgdfgasdas</p>\r\n', '', '', '', '2017-01-26', 'Sent', '148540601458897f3e9f835'),
(51, 'tika.raj@bentraytech.com', 'tls', 'Test', '<p>Hello&nbsp;{{bent_stf}},</p>\r\n\r\n<p>dfgdfgasdas</p>\r\n', '', '', '', '2017-01-26', 'Sent', '148540607458897f7aa0308'),
(52, 'tika.raj@bentraytech.com', 'tls', 'Test23', '<p>Dear {{bent_stf}},</p>\r\n\r\n<p>hi hello</p>\r\n', '', '', '', '2017-01-26', 'Sent', '1485406787588982433bf35');

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
-- Table structure for table `tbl_saved_email_templates`
--

CREATE TABLE IF NOT EXISTS `tbl_saved_email_templates` (
`template_id` int(11) NOT NULL,
  `template_name` varchar(80) NOT NULL,
  `template_body` text CHARACTER SET utf8 NOT NULL,
  `template_description` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_saved_email_templates`
--

INSERT INTO `tbl_saved_email_templates` (`template_id`, `template_name`, `template_body`, `template_description`) VALUES
(1, 'Test', '<p>Hello&nbsp;{{bent_stf}},</p>\r\n\r\n<p>dfgdfgasdas</p>\r\n', 'hi'),
(2, 'Test', '<p>Dear {{bent_stf}},</p>\r\n\r\n<p>hi hello</p>\r\n', 'test hello');

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
-- Table structure for table `tbl_staff`
--

CREATE TABLE IF NOT EXISTS `tbl_staff` (
`staff_id` int(11) NOT NULL,
  `first_name` varchar(84) NOT NULL,
  `last_name` varchar(84) DEFAULT NULL,
  `staff_photo` varchar(255) DEFAULT NULL,
  `mobile` varchar(84) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `email_address` varchar(255) DEFAULT NULL,
  `temporary_address_id` int(11) DEFAULT NULL,
  `permanent_address_id` int(11) NOT NULL,
  `citizenship_no` varchar(84) DEFAULT NULL,
  `gender` varchar(1) DEFAULT NULL COMMENT 'M=Male, F=Female, T=Third Gender',
  `marital_status` varchar(1) DEFAULT NULL COMMENT 'M=Married, U=Unmarried, D=Divorced, W=Widowed',
  `hire_date` date DEFAULT NULL,
  `expiry_date` date DEFAULT NULL,
  `employee_type` varchar(1) DEFAULT NULL COMMENT 'fulltime, parttime, contracted',
  `salary_period` varchar(255) DEFAULT NULL,
  `payment_type` varchar(105) DEFAULT NULL,
  `designation_id` int(11) DEFAULT NULL,
  `department_id` int(11) NOT NULL,
  `manager_id` int(11) DEFAULT NULL,
  `normal_salary_rate` double NOT NULL,
  `overtime_salary_rate` double DEFAULT NULL,
  `mobile_code` int(50) DEFAULT NULL,
  `phone_code` int(50) DEFAULT NULL,
  `remarks` varchar(240) DEFAULT NULL,
  `status` varchar(24) DEFAULT NULL COMMENT 'Active, Inactive, Resigned',
  `salary_duration` varchar(20) DEFAULT NULL,
  `middle_name` varchar(50) NOT NULL,
  `cit` int(50) DEFAULT NULL,
  `tax_included` decimal(11,2) DEFAULT NULL,
  `remaining_leave_days` decimal(11,1) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=336 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_staff`
--

INSERT INTO `tbl_staff` (`staff_id`, `first_name`, `last_name`, `staff_photo`, `mobile`, `phone`, `email_address`, `temporary_address_id`, `permanent_address_id`, `citizenship_no`, `gender`, `marital_status`, `hire_date`, `expiry_date`, `employee_type`, `salary_period`, `payment_type`, `designation_id`, `department_id`, `manager_id`, `normal_salary_rate`, `overtime_salary_rate`, `mobile_code`, `phone_code`, `remarks`, `status`, `salary_duration`, `middle_name`, `cit`, `tax_included`, `remaining_leave_days`) VALUES
(229, 'Admin', '', NULL, '+972-', '+972-', 'admin@bentraytech.com', 576, 577, '', 'M', 'U', '2016-04-01', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 45000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(326, 'Tika', 'Shrestha', 'staffPhoto/28254.jpg', '+977-98-4964', '+977-96-86', 'tika.raj@bentraytech.com', 824, 825, 'Nepali', 'M', 'U', '1959-02-04', '1960-02-12', '2', 'M', '1', 1, 1, NULL, 25000, NULL, NULL, NULL, '', NULL, NULL, 'Raj', NULL, '1.00', '3.0'),
(327, 'Tej', 'Shrestha', 'staffPhoto/26728.png', '+977-', '+977-', 'tej@bentraytech.com', 826, 827, 'Nepali', 'M', 'U', '2014-04-19', '2015-04-30', '2', 'M', '1', 1, 1, NULL, 30000, NULL, NULL, NULL, '', NULL, NULL, 'Raj', NULL, '1.00', '0.0'),
(328, 'Bipul', 'Kansakar', NULL, '+977-', '+977-', 'hari@gmail.com', 828, 829, 'Nepali', 'M', 'U', '2015-04-19', '2015-04-23', '1', 'M', '1', 1, 1, 326, 15000, NULL, NULL, NULL, '', NULL, NULL, 'Ratna', NULL, '1.00', '0.0'),
(329, 'Sunil', 'Shrestha', 'staffPhoto/10914.png', '+977-', '+977-', 'sunil@bentraytech.com', 830, 831, 'Nepali', 'M', 'U', '2016-02-01', '2016-10-01', '2', 'M', '1', 1, 1, NULL, 100000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(330, 'Samsher', 'Magar', NULL, '+977-', '+977-', 'samsher@bentraytech.com', 832, 833, 'Nepali', 'M', 'M', '2015-02-01', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 10000, NULL, NULL, NULL, '', NULL, NULL, 'Rana', 500, '1.00', '0.0'),
(331, 'Mahesh', 'Joshi', NULL, '+977-', '+977-', 'mahesh@bentraytech.com', 834, 835, 'Nepali', 'M', 'M', '2015-03-04', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 20000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(332, 'Riya', 'Gupta', NULL, '+977-', '+977-', 'riya@bentraytech.com', 836, 837, 'Nepali', 'F', 'U', '2010-09-17', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 35000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(333, 'Mina', 'Shahi', NULL, '', '', 'mina@bentraytech.com', 838, 839, 'Nepali', 'F', 'U', '2016-03-01', '2016-04-30', '2', 'M', '1', 1, 3, NULL, 15000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(334, 'Nitu', 'Baidhya', NULL, '', '', 'nitu@bentraytech.com', 840, 841, 'Nepali', 'F', 'U', '2016-03-01', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 10000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0'),
(335, 'Shyam', 'Shrestha', NULL, '', '', 'shyam@bentraytech.com', 842, 843, 'Nepali', 'M', 'U', '2016-04-01', '2016-04-30', '2', 'M', '1', 1, 1, NULL, 10000, NULL, NULL, NULL, '', NULL, NULL, '', NULL, '1.00', '0.0');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_timeformat`
--

CREATE TABLE IF NOT EXISTS `tbl_timeformat` (
`id` int(11) NOT NULL,
  `format` varchar(255) NOT NULL,
  `description` text
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_timeformat`
--

INSERT INTO `tbl_timeformat` (`id`, `format`, `description`) VALUES
(1, 'nep', 'nepali date time BS'),
(2, 'nep', 'englis');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE IF NOT EXISTS `tbl_user` (
`id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `full_name` varchar(255) DEFAULT NULL,
  `display_name` varchar(255) DEFAULT NULL,
  `password_hash` varchar(255) NOT NULL,
  `password_reset_token` varchar(255) DEFAULT NULL,
  `auth_key` varchar(32) NOT NULL,
  `status` smallint(6) NOT NULL DEFAULT '5',
  `created_at` datetime NOT NULL,
  `updated_at` datetime NOT NULL,
  `login_at` datetime DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `username`, `email`, `full_name`, `display_name`, `password_hash`, `password_reset_token`, `auth_key`, `status`, `created_at`, `updated_at`, `login_at`) VALUES
(1, 'superadmin', 'superadministrator@writesdown.com', 'Super Administrator', 'Super Admin', '$2y$13$WJIxqq6WBZUw7tyfN2oiH.WJtPntvLMjs6NG9uW0M3Lh71lImaEyu', NULL, '7QvEmdZDvaSxM1-oYoWkKso0ws6AHTX1', 10, '2016-02-05 15:06:46', '2016-02-05 15:06:46', '2016-02-05 15:06:46'),
(2, 'admin', 'tika.raj@bentraytech.com', 'Admin', 'Admin', '$2y$13$ib.OcEi5QBhvEq2RuB7MqeLSKA6Yp2aJBg4gmxsJVUQ3s/QS5f/Y6', NULL, 'hocLJMq3W0mg6E21GbqLIOlPuyC5Eixf', 10, '2016-11-15 17:30:45', '2016-11-15 17:31:18', NULL),
(3, 'test', 'test@gmail.com', 'Test', 'test', '$2y$13$GSVgvaHmOvDb9yPQ2yxGiODap529pkBT7ptSfOJT5B/YwZbxqyZyO', NULL, 'NLy0HyH6Ytj8-IwUVf1nZEbwbvpQha2r', 10, '2016-12-16 15:46:59', '2016-12-16 15:54:19', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
 ADD PRIMARY KEY (`item_name`,`user_id`);

--
-- Indexes for table `auth_item`
--
ALTER TABLE `auth_item`
 ADD PRIMARY KEY (`name`), ADD KEY `rule_name` (`rule_name`), ADD KEY `idx-auth_item-type` (`type`);

--
-- Indexes for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
 ADD PRIMARY KEY (`parent`,`child`), ADD KEY `child` (`child`);

--
-- Indexes for table `auth_rule`
--
ALTER TABLE `auth_rule`
 ADD PRIMARY KEY (`name`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
 ADD PRIMARY KEY (`user_id`), ADD KEY `staff_id` (`staff_id`), ADD KEY `access_role_id` (`access_role_id`), ADD KEY `access_role_id_2` (`access_role_id`), ADD KEY `staff_id_2` (`staff_id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
 ADD PRIMARY KEY (`id`), ADD KEY `parent` (`parent`);

--
-- Indexes for table `migration`
--
ALTER TABLE `migration`
 ADD PRIMARY KEY (`version`);

--
-- Indexes for table `tbl_access`
--
ALTER TABLE `tbl_access`
 ADD PRIMARY KEY (`access_id`);

--
-- Indexes for table `tbl_access_role`
--
ALTER TABLE `tbl_access_role`
 ADD PRIMARY KEY (`access_role_id`);

--
-- Indexes for table `tbl_access_role_access`
--
ALTER TABLE `tbl_access_role_access`
 ADD PRIMARY KEY (`access_role_access_id`);

--
-- Indexes for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
 ADD PRIMARY KEY (`country_id`);

--
-- Indexes for table `tbl_country`
--
ALTER TABLE `tbl_country`
 ADD PRIMARY KEY (`country_id`), ADD KEY `language_id` (`language_id`);

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
-- Indexes for table `tbl_language`
--
ALTER TABLE `tbl_language`
 ADD PRIMARY KEY (`language_id`);

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
-- Indexes for table `tbl_saved_email_templates`
--
ALTER TABLE `tbl_saved_email_templates`
 ADD PRIMARY KEY (`template_id`);

--
-- Indexes for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
 ADD PRIMARY KEY (`staff_id`), ADD KEY `temporary_address_id` (`temporary_address_id`), ADD KEY `permanent_address_id` (`permanent_address_id`), ADD KEY `designation_id` (`designation_id`), ADD KEY `department_id` (`department_id`), ADD KEY `manager_id` (`manager_id`);

--
-- Indexes for table `tbl_timeformat`
--
ALTER TABLE `tbl_timeformat`
 ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=69;
--
-- AUTO_INCREMENT for table `tbl_access`
--
ALTER TABLE `tbl_access`
MODIFY `access_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_access_role`
--
ALTER TABLE `tbl_access_role`
MODIFY `access_role_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_access_role_access`
--
ALTER TABLE `tbl_access_role_access`
MODIFY `access_role_access_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbl_countries`
--
ALTER TABLE `tbl_countries`
MODIFY `country_id` int(200) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=254;
--
-- AUTO_INCREMENT for table `tbl_country`
--
ALTER TABLE `tbl_country`
MODIFY `country_id` int(5) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=251;
--
-- AUTO_INCREMENT for table `tbl_email_subscribers`
--
ALTER TABLE `tbl_email_subscribers`
MODIFY `subscriber_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `tbl_email_templates`
--
ALTER TABLE `tbl_email_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_group`
--
ALTER TABLE `tbl_group`
MODIFY `group_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_language`
--
ALTER TABLE `tbl_language`
MODIFY `language_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_mailsetting`
--
ALTER TABLE `tbl_mailsetting`
MODIFY `setting_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `tbl_mail_store`
--
ALTER TABLE `tbl_mail_store`
MODIFY `mail_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=53;
--
-- AUTO_INCREMENT for table `tbl_merge_fields`
--
ALTER TABLE `tbl_merge_fields`
MODIFY `merge_field_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `tbl_saved_email_templates`
--
ALTER TABLE `tbl_saved_email_templates`
MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_setting`
--
ALTER TABLE `tbl_setting`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tbl_staff`
--
ALTER TABLE `tbl_staff`
MODIFY `staff_id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=336;
--
-- AUTO_INCREMENT for table `tbl_timeformat`
--
ALTER TABLE `tbl_timeformat`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_assignment`
--
ALTER TABLE `auth_assignment`
ADD CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `auth_item`
--
ALTER TABLE `auth_item`
ADD CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `auth_item_child`
--
ALTER TABLE `auth_item_child`
ADD CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
ADD CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `menu`
--
ALTER TABLE `menu`
ADD CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE;

--
-- Constraints for table `tbl_country`
--
ALTER TABLE `tbl_country`
ADD CONSTRAINT `tbl_country_ibfk_1` FOREIGN KEY (`language_id`) REFERENCES `tbl_language` (`language_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
