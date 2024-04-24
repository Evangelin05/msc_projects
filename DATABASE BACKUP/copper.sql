-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 06, 2022 at 04:39 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `copper`
--
CREATE DATABASE IF NOT EXISTS `copper` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `copper`;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group`
--

CREATE TABLE IF NOT EXISTS `auth_group` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(150) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_group_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_group_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `group_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_group_permissions_group_id_permission_id_0cd325b0_uniq` (`group_id`,`permission_id`),
  KEY `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_permission`
--

CREATE TABLE IF NOT EXISTS `auth_permission` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `content_type_id` int(11) NOT NULL,
  `codename` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_permission_content_type_id_codename_01ab375a_uniq` (`content_type_id`,`codename`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=81 ;

--
-- Dumping data for table `auth_permission`
--

INSERT INTO `auth_permission` (`id`, `name`, `content_type_id`, `codename`) VALUES
(1, 'Can add log entry', 1, 'add_logentry'),
(2, 'Can change log entry', 1, 'change_logentry'),
(3, 'Can delete log entry', 1, 'delete_logentry'),
(4, 'Can view log entry', 1, 'view_logentry'),
(5, 'Can add permission', 2, 'add_permission'),
(6, 'Can change permission', 2, 'change_permission'),
(7, 'Can delete permission', 2, 'delete_permission'),
(8, 'Can view permission', 2, 'view_permission'),
(9, 'Can add group', 3, 'add_group'),
(10, 'Can change group', 3, 'change_group'),
(11, 'Can delete group', 3, 'delete_group'),
(12, 'Can view group', 3, 'view_group'),
(13, 'Can add user', 4, 'add_user'),
(14, 'Can change user', 4, 'change_user'),
(15, 'Can delete user', 4, 'delete_user'),
(16, 'Can view user', 4, 'view_user'),
(17, 'Can add content type', 5, 'add_contenttype'),
(18, 'Can change content type', 5, 'change_contenttype'),
(19, 'Can delete content type', 5, 'delete_contenttype'),
(20, 'Can view content type', 5, 'view_contenttype'),
(21, 'Can add session', 6, 'add_session'),
(22, 'Can change session', 6, 'change_session'),
(23, 'Can delete session', 6, 'delete_session'),
(24, 'Can view session', 6, 'view_session'),
(25, 'Can add adminaccess', 7, 'add_adminaccess'),
(26, 'Can change adminaccess', 7, 'change_adminaccess'),
(27, 'Can delete adminaccess', 7, 'delete_adminaccess'),
(28, 'Can view adminaccess', 7, 'view_adminaccess'),
(29, 'Can add admins', 8, 'add_admins'),
(30, 'Can change admins', 8, 'change_admins'),
(31, 'Can delete admins', 8, 'delete_admins'),
(32, 'Can view admins', 8, 'view_admins'),
(33, 'Can add alocation', 9, 'add_alocation'),
(34, 'Can change alocation', 9, 'change_alocation'),
(35, 'Can delete alocation', 9, 'delete_alocation'),
(36, 'Can view alocation', 9, 'view_alocation'),
(37, 'Can add customers', 10, 'add_customers'),
(38, 'Can change customers', 10, 'change_customers'),
(39, 'Can delete customers', 10, 'delete_customers'),
(40, 'Can view customers', 10, 'view_customers'),
(41, 'Can add datatrainers', 11, 'add_datatrainers'),
(42, 'Can change datatrainers', 11, 'change_datatrainers'),
(43, 'Can delete datatrainers', 11, 'delete_datatrainers'),
(44, 'Can view datatrainers', 11, 'view_datatrainers'),
(45, 'Can add datatrainerview', 12, 'add_datatrainerview'),
(46, 'Can change datatrainerview', 12, 'change_datatrainerview'),
(47, 'Can delete datatrainerview', 12, 'delete_datatrainerview'),
(48, 'Can view datatrainerview', 12, 'view_datatrainerview'),
(49, 'Can add employees', 13, 'add_employees'),
(50, 'Can change employees', 13, 'change_employees'),
(51, 'Can delete employees', 13, 'delete_employees'),
(52, 'Can view employees', 13, 'view_employees'),
(53, 'Can add errorupdate', 14, 'add_errorupdate'),
(54, 'Can change errorupdate', 14, 'change_errorupdate'),
(55, 'Can delete errorupdate', 14, 'delete_errorupdate'),
(56, 'Can view errorupdate', 14, 'view_errorupdate'),
(57, 'Can add productions', 15, 'add_productions'),
(58, 'Can change productions', 15, 'change_productions'),
(59, 'Can delete productions', 15, 'delete_productions'),
(60, 'Can view productions', 15, 'view_productions'),
(61, 'Can add purchaselist', 16, 'add_purchaselist'),
(62, 'Can change purchaselist', 16, 'change_purchaselist'),
(63, 'Can delete purchaselist', 16, 'delete_purchaselist'),
(64, 'Can view purchaselist', 16, 'view_purchaselist'),
(65, 'Can add requirements', 17, 'add_requirements'),
(66, 'Can change requirements', 17, 'change_requirements'),
(67, 'Can delete requirements', 17, 'delete_requirements'),
(68, 'Can view requirements', 17, 'view_requirements'),
(69, 'Can add updates', 18, 'add_updates'),
(70, 'Can change updates', 18, 'change_updates'),
(71, 'Can delete updates', 18, 'delete_updates'),
(72, 'Can view updates', 18, 'view_updates'),
(73, 'Can add productionlist', 19, 'add_productionlist'),
(74, 'Can change productionlist', 19, 'change_productionlist'),
(75, 'Can delete productionlist', 19, 'delete_productionlist'),
(76, 'Can view productionlist', 19, 'view_productionlist'),
(77, 'Can add purchasedlist', 20, 'add_purchasedlist'),
(78, 'Can change purchasedlist', 20, 'change_purchasedlist'),
(79, 'Can delete purchasedlist', 20, 'delete_purchasedlist'),
(80, 'Can view purchasedlist', 20, 'view_purchasedlist');

-- --------------------------------------------------------

--
-- Table structure for table `auth_user`
--

CREATE TABLE IF NOT EXISTS `auth_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `password` varchar(128) NOT NULL,
  `last_login` datetime(6) DEFAULT NULL,
  `is_superuser` tinyint(1) NOT NULL,
  `username` varchar(150) NOT NULL,
  `first_name` varchar(150) NOT NULL,
  `last_name` varchar(150) NOT NULL,
  `email` varchar(254) NOT NULL,
  `is_staff` tinyint(1) NOT NULL,
  `is_active` tinyint(1) NOT NULL,
  `date_joined` datetime(6) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_groups`
--

CREATE TABLE IF NOT EXISTS `auth_user_groups` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `group_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_groups_user_id_group_id_94350c0c_uniq` (`user_id`,`group_id`),
  KEY `auth_user_groups_group_id_97559544_fk_auth_group_id` (`group_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `auth_user_user_permissions`
--

CREATE TABLE IF NOT EXISTS `auth_user_user_permissions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `permission_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `auth_user_user_permissions_user_id_permission_id_14a6b632_uniq` (`user_id`,`permission_id`),
  KEY `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_admin_log`
--

CREATE TABLE IF NOT EXISTS `django_admin_log` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `action_time` datetime(6) NOT NULL,
  `object_id` longtext,
  `object_repr` varchar(200) NOT NULL,
  `action_flag` smallint(5) unsigned NOT NULL,
  `change_message` longtext NOT NULL,
  `content_type_id` int(11) DEFAULT NULL,
  `user_id` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `django_admin_log_content_type_id_c4bce8eb_fk_django_co` (`content_type_id`),
  KEY `django_admin_log_user_id_c564eba6_fk_auth_user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `django_content_type`
--

CREATE TABLE IF NOT EXISTS `django_content_type` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `app_label` varchar(100) NOT NULL,
  `model` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `django_content_type_app_label_model_76bd3d3b_uniq` (`app_label`,`model`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `django_content_type`
--

INSERT INTO `django_content_type` (`id`, `app_label`, `model`) VALUES
(1, 'admin', 'logentry'),
(3, 'auth', 'group'),
(2, 'auth', 'permission'),
(4, 'auth', 'user'),
(5, 'contenttypes', 'contenttype'),
(6, 'sessions', 'session'),
(7, 'staff', 'adminaccess'),
(8, 'staff', 'admins'),
(9, 'staff', 'alocation'),
(10, 'staff', 'customers'),
(11, 'staff', 'datatrainers'),
(12, 'staff', 'datatrainerview'),
(13, 'staff', 'employees'),
(14, 'staff', 'errorupdate'),
(19, 'staff', 'productionlist'),
(15, 'staff', 'productions'),
(20, 'staff', 'purchasedlist'),
(16, 'staff', 'purchaselist'),
(17, 'staff', 'requirements'),
(18, 'staff', 'updates');

-- --------------------------------------------------------

--
-- Table structure for table `django_migrations`
--

CREATE TABLE IF NOT EXISTS `django_migrations` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `app` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `applied` datetime(6) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=41 ;

--
-- Dumping data for table `django_migrations`
--

INSERT INTO `django_migrations` (`id`, `app`, `name`, `applied`) VALUES
(1, 'contenttypes', '0001_initial', '2022-01-24 05:03:52.353070'),
(2, 'auth', '0001_initial', '2022-01-24 05:04:00.129971'),
(3, 'admin', '0001_initial', '2022-01-24 05:04:01.947040'),
(4, 'admin', '0002_logentry_remove_auto_add', '2022-01-24 05:04:01.978271'),
(5, 'admin', '0003_logentry_add_action_flag_choices', '2022-01-24 05:04:02.017194'),
(6, 'contenttypes', '0002_remove_content_type_name', '2022-01-24 05:04:03.014033'),
(7, 'auth', '0002_alter_permission_name_max_length', '2022-01-24 05:04:03.571498'),
(8, 'auth', '0003_alter_user_email_max_length', '2022-01-24 05:04:04.147083'),
(9, 'auth', '0004_alter_user_username_opts', '2022-01-24 05:04:04.178368'),
(10, 'auth', '0005_alter_user_last_login_null', '2022-01-24 05:04:04.637933'),
(11, 'auth', '0006_require_contenttypes_0002', '2022-01-24 05:04:04.667119'),
(12, 'auth', '0007_alter_validators_add_error_messages', '2022-01-24 05:04:04.698391'),
(13, 'auth', '0008_alter_user_username_max_length', '2022-01-24 05:04:05.257807'),
(14, 'auth', '0009_alter_user_last_name_max_length', '2022-01-24 05:04:05.829002'),
(15, 'auth', '0010_alter_group_name_max_length', '2022-01-24 05:04:06.451976'),
(16, 'auth', '0011_update_proxy_permissions', '2022-01-24 05:04:06.498882'),
(17, 'auth', '0012_alter_user_first_name_max_length', '2022-01-24 05:04:07.061354'),
(18, 'sessions', '0001_initial', '2022-01-24 05:04:07.636721'),
(19, 'staff', '0001_initial', '2022-01-24 05:04:11.213614'),
(20, 'staff', '0002_auto_20210821_1913', '2022-01-24 05:04:12.540114'),
(21, 'staff', '0003_alter_adminaccess_date', '2022-01-24 05:04:13.144926'),
(22, 'staff', '0004_alter_customers_number', '2022-01-24 05:04:13.176175'),
(23, 'staff', '0005_auto_20210821_1935', '2022-01-24 05:04:14.570256'),
(24, 'staff', '0006_auto_20210823_1012', '2022-01-24 05:04:15.382793'),
(25, 'staff', '0007_purchaselist_production', '2022-01-24 05:04:15.755017'),
(26, 'staff', '0008_alter_purchaselist_production', '2022-01-24 05:04:16.239380'),
(27, 'staff', '0009_purchaselist_payment', '2022-01-24 05:04:16.629956'),
(28, 'staff', '0010_purchaselist_status', '2022-01-24 05:04:17.083073'),
(29, 'staff', '0011_productionlist', '2022-01-24 05:04:17.364378'),
(30, 'staff', '0012_remove_productionlist_name', '2022-01-24 05:04:17.754998'),
(31, 'staff', '0013_alter_adminaccess_address_and_more', '2022-02-03 06:24:43.359072'),
(32, 'staff', '0014_alter_alocation_name', '2022-02-03 12:10:05.568545'),
(33, 'staff', '0015_purchaselist_orderid', '2022-02-04 06:45:54.879344'),
(34, 'staff', '0016_alter_purchaselist_orderid', '2022-02-04 06:49:22.968754'),
(35, 'staff', '0017_errorupdate_errorid', '2022-02-04 07:22:33.857873'),
(36, 'staff', '0018_alter_errorupdate_name', '2022-02-04 09:33:14.184846'),
(37, 'staff', '0019_purchaselist_amount', '2022-02-05 04:44:40.528894'),
(38, 'staff', '0020_purchasedlist', '2022-02-05 05:54:26.402727'),
(39, 'staff', '0021_remove_purchasedlist_payment_and_more', '2022-02-05 06:13:52.901632'),
(40, 'staff', '0022_alter_productionlist_quantity', '2022-04-06 04:35:36.622541');

-- --------------------------------------------------------

--
-- Table structure for table `django_session`
--

CREATE TABLE IF NOT EXISTS `django_session` (
  `session_key` varchar(40) NOT NULL,
  `session_data` longtext NOT NULL,
  `expire_date` datetime(6) NOT NULL,
  PRIMARY KEY (`session_key`),
  KEY `django_session_expire_date_a5c62663` (`expire_date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `django_session`
--

INSERT INTO `django_session` (`session_key`, `session_data`, `expire_date`) VALUES
('a589xq11v9bipixvqbksgxmskc109zga', 'eyJjbmFtZSI6IkFSVU4iLCJlbmFtZSI6IkFEQU0ifQ:1nCEBQ:CVEHlhMrbjx_5wbSwhX9tneM-uGA802uInWCrKEwN88', '2022-02-08 05:15:56.373279'),
('blsiqn27oqcb4boeuf1p12h1v1re5ulv', 'eyJjbmFtZSI6IkFSVU4iLCJlbmFtZSI6IkFEQU0ifQ:1nFb49:wSFkkUueK5uAUkCb79n-8Imun8yo7esdhSKP0qW_MJQ', '2022-02-17 12:18:21.869289'),
('mvrvrvomtht0pl5xieh6inuwsyavu193', 'e30:1nH0Rx:n4zgTXUd5KsfreQXUmy4pfJ7M20je5EDV2MyQzDd4eU', '2022-02-21 09:36:45.348396'),
('nw9w2umognl7m3xuwdkycotrj8g5keqd', 'eyJjbmFtZSI6IkFSVU4ifQ:1nbgZl:PbdXgwIgaXRr4DKh-JvSnW0BLe-raoqyizYl7yuq5j4', '2022-04-19 10:38:17.978696'),
('pzzvx3q3o9q0uio2rm8mmv9vcnncz804', 'eyJjbmFtZSI6IkFSVU4ifQ:1nBrj7:nkf8aR4DDkenLC2eJWgvfDR6Mrc1a_RpQTcAxSQ8084', '2022-02-07 05:17:13.567859');

-- --------------------------------------------------------

--
-- Table structure for table `staff_adminaccess`
--

CREATE TABLE IF NOT EXISTS `staff_adminaccess` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `designation` varchar(50) DEFAULT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  `number` int(11) DEFAULT NULL,
  `date` varchar(50) NOT NULL,
  `address` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_admins`
--

CREATE TABLE IF NOT EXISTS `staff_admins` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff_admins`
--

INSERT INTO `staff_admins` (`id`, `name`, `email`, `password`) VALUES
(1, 'ADMIN', 'admin@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `staff_alocation`
--

CREATE TABLE IF NOT EXISTS `staff_alocation` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `machine_name` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_alocation_name_022042d4_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_customers`
--

CREATE TABLE IF NOT EXISTS `staff_customers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `date` date NOT NULL,
  `address` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_customers_name_d2322714_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_datatrainers`
--

CREATE TABLE IF NOT EXISTS `staff_datatrainers` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `address` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_datatrainers_name_36959d9d_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_datatrainerview`
--

CREATE TABLE IF NOT EXISTS `staff_datatrainerview` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `machine` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_employees`
--

CREATE TABLE IF NOT EXISTS `staff_employees` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `number` bigint(20) DEFAULT NULL,
  `date` varchar(50) DEFAULT NULL,
  `address` longtext,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_employees_name_8fb543d9_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_errorupdate`
--

CREATE TABLE IF NOT EXISTS `staff_errorupdate` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `machines` varchar(50) DEFAULT NULL,
  `error` longtext NOT NULL,
  `errorid` bigint(20) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_errorupdate_name_29080fcb_uniq` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_productionlist`
--

CREATE TABLE IF NOT EXISTS `staff_productionlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `machine` varchar(50) NOT NULL,
  `quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=4 ;

--
-- Dumping data for table `staff_productionlist`
--

INSERT INTO `staff_productionlist` (`id`, `machine`, `quantity`) VALUES
(1, 'CRUSHER', 0),
(2, 'MILLS', 0),
(3, 'GRINDER', 0);

-- --------------------------------------------------------

--
-- Table structure for table `staff_productions`
--

CREATE TABLE IF NOT EXISTS `staff_productions` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `staff_productions_name_2a79b921_uniq` (`name`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `staff_productions`
--

INSERT INTO `staff_productions` (`id`, `name`, `email`, `password`) VALUES
(1, 'PRODUCTION', 'production@gmail.com', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `staff_purchasedlist`
--

CREATE TABLE IF NOT EXISTS `staff_purchasedlist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `amount` int(10) unsigned DEFAULT NULL,
  `orderid` bigint(20) unsigned DEFAULT NULL,
  `quantity` longtext NOT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `warranty` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `time` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_purchaselist`
--

CREATE TABLE IF NOT EXISTS `staff_purchaselist` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `type` varchar(50) NOT NULL,
  `quantity` longtext NOT NULL,
  `time` longtext NOT NULL,
  `quality` varchar(50) DEFAULT NULL,
  `warranty` varchar(50) DEFAULT NULL,
  `production` tinyint(1) NOT NULL,
  `payment` tinyint(1) NOT NULL,
  `status` varchar(50) DEFAULT NULL,
  `orderid` bigint(20) unsigned DEFAULT NULL,
  `amount` int(10) unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_requirements`
--

CREATE TABLE IF NOT EXISTS `staff_requirements` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `machines` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `staff_updates`
--

CREATE TABLE IF NOT EXISTS `staff_updates` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `machines` varchar(50) DEFAULT NULL,
  `quantity` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `auth_group_permissions`
--
ALTER TABLE `auth_group_permissions`
  ADD CONSTRAINT `auth_group_permissions_group_id_b120cbf9_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_group_permissio_permission_id_84c5c92e_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `auth_permission`
--
ALTER TABLE `auth_permission`
  ADD CONSTRAINT `auth_permission_content_type_id_2f476e4b_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`);

--
-- Constraints for table `auth_user_groups`
--
ALTER TABLE `auth_user_groups`
  ADD CONSTRAINT `auth_user_groups_group_id_97559544_fk_auth_group_id` FOREIGN KEY (`group_id`) REFERENCES `auth_group` (`id`),
  ADD CONSTRAINT `auth_user_groups_user_id_6a12ed8b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

--
-- Constraints for table `auth_user_user_permissions`
--
ALTER TABLE `auth_user_user_permissions`
  ADD CONSTRAINT `auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`),
  ADD CONSTRAINT `auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm` FOREIGN KEY (`permission_id`) REFERENCES `auth_permission` (`id`);

--
-- Constraints for table `django_admin_log`
--
ALTER TABLE `django_admin_log`
  ADD CONSTRAINT `django_admin_log_content_type_id_c4bce8eb_fk_django_co` FOREIGN KEY (`content_type_id`) REFERENCES `django_content_type` (`id`),
  ADD CONSTRAINT `django_admin_log_user_id_c564eba6_fk_auth_user_id` FOREIGN KEY (`user_id`) REFERENCES `auth_user` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
