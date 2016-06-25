-- phpMyAdmin SQL Dump
-- version 4.4.13.1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 06, 2016 at 12:40 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `okoapesadb`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_devices`
--

CREATE TABLE IF NOT EXISTS `assigned_devices` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `devices_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `assigned_devices`
--

INSERT INTO `assigned_devices` (`id`, `user_id`, `devices_id`) VALUES
(1, 1, 1),
(2, 7, 2),
(3, 8, 3),
(4, 9, 4),
(5, 11, 5),
(6, 12, 6),
(7, 13, 7),
(8, 14, 8),
(9, 4, 2);

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE IF NOT EXISTS `assigned_roles` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(2, 4, 1),
(3, 2, 4),
(4, 4, 2),
(5, 3, 5),
(6, 5, 6),
(7, 7, 3),
(8, 8, 3),
(9, 9, 3),
(10, 10, 4),
(11, 11, 3),
(12, 12, 3),
(13, 13, 3),
(14, 14, 3),
(15, 15, 5),
(16, 16, 2),
(17, 4, 3),
(21, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `compInfo`
--

CREATE TABLE IF NOT EXISTS `compInfo` (
  `id` int(11) NOT NULL,
  `title` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `date` datetime NOT NULL,
  `address` varchar(45) NOT NULL,
  `telphone` varchar(45) NOT NULL,
  `website` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `compInfo`
--

INSERT INTO `compInfo` (`id`, `title`, `email`, `date`, `address`, `telphone`, `website`) VALUES
(1, 'OKOA MUDA LTD', 'okoamudaltd@gmail.com', '2016-04-14 00:00:00', 'P.O.BOX 23456', '+255 768 123456', 'www.okoamuda.com');

-- --------------------------------------------------------

--
-- Table structure for table `devices`
--

CREATE TABLE IF NOT EXISTS `devices` (
  `id` int(11) NOT NULL,
  `device_name` varchar(100) DEFAULT NULL,
  `uniqueId` varchar(45) NOT NULL,
  `description` varchar(450) NOT NULL,
  `key` varchar(45) NOT NULL,
  `location` varchar(45) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `devices`
--

INSERT INTO `devices` (`id`, `device_name`, `uniqueId`, `description`, `key`, `location`) VALUES
(1, 'POS-1-Vijibweni', 'uniqueId', 'descrip', 'key-0', 'latitute Long '),
(2, 'POS-2-Vijibwen', 'uniqueld', 'desc', 'key', 'lati long'),
(3, 'POS-3-Vijibwen', 'uniqueld', 'desc', 'key', 'lati long'),
(4, 'POS-4-Vijibwen', 'uniqueld', 'desc', 'key', 'lati long'),
(5, 'POS-1-Ilala', 'uniqueId', 'desc', 'key', 'lati long'),
(6, 'POS-2-Ilala', 'uniqueld', 'desc', 'key', 'lati long'),
(7, 'POS-3-Ilala', 'uniqueld', 'desc', 'key', 'lati long'),
(8, 'POS-4-Ilala', 'uniqueld', 'desc', 'key', 'lati long'),
(9, 'POS-1-Temeke', 'uniqueId', 'desc', 'key0', 'latitute long'),
(10, 'POS-2-Temeke', 'uniqueId', 'desc', 'key', 'lati long'),
(11, 'POS-3-Temeke', 'uniqueId', 'desc', 'key', 'locate'),
(12, 'POS-4-Temeke', 'uniqueId', 'desc', 'key', 'locate'),
(14, 'POS-1-Kinondoni', 'uniqueId', 'desc', 'key', 'locate'),
(15, 'POS-2-Kinondoni', 'uniqueId', 'desc', 'key', 'locate');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE IF NOT EXISTS `migrations` (
  `migration` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`migration`, `batch`) VALUES
('2014_10_12_000000_create_users_table', 1),
('2014_10_12_100000_create_password_resets_table', 1),
('2015_04_27_022849_create_user_providers_table', 1),
('2015_04_30_170442_setup_access_tables', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE IF NOT EXISTS `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE IF NOT EXISTS `permissions` (
  `id` int(10) unsigned NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permissions`
--

INSERT INTO `permissions` (`id`, `group_id`, `name`, `display_name`, `system`, `sort`, `created_at`, `updated_at`) VALUES
(1, 1, 'view-backend', 'View Backend', 1, 1, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(2, 1, 'view-access-management', 'View Access Management', 1, 2, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(3, 2, 'create-users', 'Create Users', 1, 5, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(4, 2, 'edit-users', 'Edit Users', 1, 6, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(5, 2, 'delete-users', 'Delete Users', 1, 7, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(6, 2, 'change-user-password', 'Change User Password', 1, 8, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(7, 2, 'deactivate-users', 'Deactivate Users', 1, 9, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(8, 2, 'ban-users', 'Ban Users', 1, 10, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(9, 2, 'reactivate-users', 'Re-Activate Users', 1, 11, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(10, 2, 'unban-users', 'Un-Ban Users', 1, 12, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(11, 2, 'undelete-users', 'Restore Users', 1, 13, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(12, 2, 'permanently-delete-users', 'Permanently Delete Users', 1, 14, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(13, 2, 'resend-user-confirmation-email', 'Resend Confirmation E-mail', 1, 15, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(14, 3, 'create-roles', 'Create Roles', 1, 2, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(15, 3, 'edit-roles', 'Edit Roles', 1, 3, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(16, 3, 'delete-roles', 'Delete Roles', 1, 4, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(17, 4, 'create-permission-groups', 'Create Permission Groups', 1, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(18, 4, 'edit-permission-groups', 'Edit Permission Groups', 1, 2, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(19, 4, 'delete-permission-groups', 'Delete Permission Groups', 1, 3, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(20, 4, 'sort-permission-groups', 'Sort Permission Groups', 1, 4, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(21, 4, 'create-permissions', 'Create Permissions', 1, 5, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(22, 4, 'edit-permissions', 'Edit Permissions', 1, 6, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(23, 4, 'delete-permissions', 'Delete Permissions', 1, 7, '2015-10-06 09:39:49', '2015-10-06 09:39:49');

-- --------------------------------------------------------

--
-- Table structure for table `permission_dependencies`
--

CREATE TABLE IF NOT EXISTS `permission_dependencies` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `dependency_id` int(10) unsigned NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_dependencies`
--

INSERT INTO `permission_dependencies` (`id`, `permission_id`, `dependency_id`, `created_at`, `updated_at`) VALUES
(1, 2, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(2, 3, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(3, 3, 2, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(4, 4, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(5, 4, 2, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(6, 5, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(7, 5, 2, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(8, 6, 1, '2015-10-06 09:39:49', '2015-10-06 09:39:49'),
(9, 6, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(10, 7, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(11, 7, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(12, 8, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(13, 8, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(14, 9, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(15, 9, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(16, 10, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(17, 10, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(18, 11, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(19, 11, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(20, 12, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(21, 12, 2, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(22, 13, 1, '2015-10-06 09:39:50', '2015-10-06 09:39:50'),
(23, 13, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(24, 14, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(25, 14, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(26, 15, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(27, 15, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(28, 16, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(29, 16, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(30, 17, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(31, 17, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(32, 18, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(33, 18, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(34, 19, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(35, 19, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(36, 20, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(37, 20, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(38, 21, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(39, 21, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(40, 22, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(41, 22, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(42, 23, 1, '2015-10-06 09:39:51', '2015-10-06 09:39:51'),
(43, 23, 2, '2015-10-06 09:39:51', '2015-10-06 09:39:51');

-- --------------------------------------------------------

--
-- Table structure for table `permission_groups`
--

CREATE TABLE IF NOT EXISTS `permission_groups` (
  `id` int(10) unsigned NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `permission_groups`
--

INSERT INTO `permission_groups` (`id`, `parent_id`, `name`, `sort`, `created_at`, `updated_at`) VALUES
(1, NULL, 'Access', 1, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(2, 1, 'User', 1, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(3, 1, 'Role', 2, '2015-10-06 09:39:48', '2015-10-06 09:39:48'),
(4, 1, 'Permission', 3, '2015-10-06 09:39:48', '2015-10-06 09:39:48');

-- --------------------------------------------------------

--
-- Table structure for table `permission_role`
--

CREATE TABLE IF NOT EXISTS `permission_role` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `role_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE IF NOT EXISTS `permission_user` (
  `id` int(10) unsigned NOT NULL,
  `permission_id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE IF NOT EXISTS `prices` (
  `id` int(11) NOT NULL,
  `service_criteria` varchar(45) NOT NULL,
  `kipimo` varchar(45) NOT NULL,
  `price_per_kipimo` varchar(250) NOT NULL,
  `services_id` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `prices`
--

INSERT INTO `prices` (`id`, `service_criteria`, `kipimo`, `price_per_kipimo`, `services_id`) VALUES
(1, 'MAHINDI', 'kg', '100', 1),
(2, 'MCHELE', 'kg', '50', 1),
(3, 'KARANGA', 'kg', '25', 1),
(4, 'ASALI', 'Litre', '20', 1),
(5, 'CHOROKO', 'kg', '35', 1),
(6, 'ALZET', 'Kg', '200', 1),
(7, 'MAFUTA YA ALZET', 'Litre', '67', 1);

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, 1, '2015-10-06 09:39:47', '2015-10-06 09:39:47'),
(2, 'User', 0, 2, '2015-10-06 09:39:47', '2015-10-06 09:39:47'),
(3, 'Wakala-Pos', 1, 0, '2016-04-24 06:16:34', '2016-04-24 06:16:34'),
(4, 'Office-Manager', 1, 0, '2016-04-24 06:16:56', '2016-04-24 06:16:56'),
(5, 'Main-Branch', 1, 0, '2016-04-24 06:17:11', '2016-04-24 06:17:11'),
(6, 'Bank-Officer', 1, 0, '2016-04-24 06:17:46', '2016-04-24 16:04:20');

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE IF NOT EXISTS `services` (
  `id` int(11) NOT NULL,
  `type_services` varchar(45) NOT NULL,
  `description` varchar(3000) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`id`, `type_services`, `description`) VALUES
(1, 'KODI-MAZAO1', 'KODI-MAZAO:Ni Kido inayotozwa kwa wafanya biashara na wanunuzi wa mazao katika sehemu husika.Kodi hiyo inazozwa pesa kulingana na Aina ya mazao na uzito husika. Mfano kiasi cha pesa katika zao la mahindi ni tofauti na kiasi cha pesa katika zao la mpunga vile vile tofauti katika uzito pia gharama huwatofauti'),
(3, 'KODI-MAZAO', 'desc2');

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE IF NOT EXISTS `staff` (
  `id` int(11) NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `role_id` int(10) unsigned NOT NULL,
  `profile_pic` varchar(100) NOT NULL,
  `visibility` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE IF NOT EXISTS `supervisors` (
  `id` int(11) NOT NULL,
  `supervised` int(10) NOT NULL,
  `superviser` int(10) NOT NULL,
  `priority` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `supervisors`
--

INSERT INTO `supervisors` (`id`, `supervised`, `superviser`, `priority`) VALUES
(1, 1, 2, 1),
(2, 7, 2, 1),
(3, 8, 2, 1),
(4, 9, 2, 1),
(5, 11, 10, 1),
(6, 12, 10, 1),
(7, 13, 10, 1),
(8, 14, 10, 1),
(9, 2, 3, 1),
(10, 10, 15, 1),
(11, 3, 5, 1),
(12, 15, 5, 1);

-- --------------------------------------------------------

--
-- Table structure for table `transaction`
--

CREATE TABLE IF NOT EXISTS `transaction` (
  `id` int(11) NOT NULL,
  `amount_paid` double NOT NULL,
  `bar_code` varchar(45) DEFAULT NULL,
  `devices_id` int(11) DEFAULT NULL,
  `quantity` varchar(45) DEFAULT NULL,
  `prices_id` int(11) DEFAULT NULL,
  `from` int(10) unsigned DEFAULT NULL,
  `updated_at` datetime NOT NULL,
  `created_at` datetime NOT NULL,
  `to` int(10) unsigned DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=61 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `transaction`
--

INSERT INTO `transaction` (`id`, `amount_paid`, `bar_code`, `devices_id`, `quantity`, `prices_id`, `from`, `updated_at`, `created_at`, `to`) VALUES
(4, 2001000, NULL, NULL, NULL, NULL, 2, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 3),
(5, 2001000, NULL, NULL, NULL, NULL, 3, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 5),
(6, 35000, '94978585505095858', 1, '1000', 5, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13),
(7, 100000, '345677890765432', 1, '2000', 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13),
(8, 100000, '345677890765432', 1, '2000', 2, NULL, '0000-00-00 00:00:00', '0000-00-00 00:00:00', 13);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(10) unsigned NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(60) COLLATE utf8_unicode_ci DEFAULT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '1',
  `confirmation_code` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `confirmed` tinyint(1) NOT NULL DEFAULT '0',
  `remember_token` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Issa Nasoro Bonge', 'wakala-pos-1-vijibwen@vijibwen.co.tz', '$2y$10$dRclEyduTYjmTR9qkZXhBuMkEWAgJroCwX11qnkXS0vemVGuJGRMy', 1, '4a41bd173dd0cfb1881a64fb1cd0095b', 1, '8bwXqbD2u36flQybo7Y5e7mOj0HoUecmtVvatAiIXvFh8zGZErwvKGmW0ME0', '2015-10-06 09:39:47', '2016-05-06 02:15:26', NULL),
(2, 'Yusufu', 'Office-Manager-vijibwen@vijibwen.co.tz', '$2y$10$W37xyZlA1ee1nCEttSrMIOeeF8196ueFMMMOv9CSoYNL.IB9xXbTW', 1, '9a46b9c35ac1bc8b5758d6a4ed0d1c07', 1, NULL, '2015-10-06 09:39:47', '2015-10-06 09:39:47', NULL),
(3, 'Masoud', 'main-branch-vijibwen@vijibwen.co.tz', '$2y$10$.poXL9Uzd7VxmXLA2a0o1ebXHP8CVjTiRCxY5EJb5nAgpoxaXsyJa', 1, '183cc0a5b58912ccc48bc0a5c9210ba3', 1, '8prEsuAJxYCX2yTYnHVP7BYXa6LurnVTl7PogwBvtJPIzJ6tVbWV82wCmGMo', '2015-10-06 11:17:18', '2015-10-06 11:26:28', NULL),
(4, 'Administrators', 'ferroxyllsitta@gmail.com', '$2y$10$nzzNhLHyL3OtGI3OBfEdRujy8zcsGMR/kDvoNJcLUvn15c6JF3e6.', 1, 'fdc5c19c6d627987875f33dc02ba3c95', 1, 'ztFchtRD7dhR0x237Kh5A6Su8ih8PdWbpSM2fdxFCzaIWWS6bziigcMItO88', '2016-04-24 05:56:49', '2016-05-06 06:17:27', NULL),
(5, 'Muhd Said', 'bank-officer@p4se.co.tz', '$2y$10$fwDXx5wUwstGgFeodyl8U.HC/RBsGYGDueu8QzOeKmDObNgTFehyy', 0, '1b427163f6cce88351d6b946ef5cde7e', 1, 'DMUOjvZP9nPlRnr6FkhErnPmSKlS0ItAa78NFpkORVSCX2N0DP3QGDk4rBK9', '2016-04-24 06:53:32', '2016-04-24 16:01:54', NULL),
(6, 'Default-User', 'public@p4se.co.tz', '$2y$10$J/NPwwGuxLaUjutJmwBJluvHIU49r3b9BfGvv05xFnFWxcuCPwdCK', 1, '6b164f911be78868632d283ff6c60b66', 1, NULL, '2016-04-24 06:56:28', '2016-04-24 06:56:41', NULL),
(7, 'Muhammad-Yusuph', 'wakala-pos-2-vijibwen@vijibwen.co.tz', '$2y$10$1eLfDnKrGJnsTZxPX9u6x.N52Rp/PM18wP71foP5rZuaydzgASxSa', 1, 'db583ed65b86865ec126b58fc58a3806', 1, 'kEyHsb9dizAj2Q2230vnAEVxeMSsXoH7uGgaS3quWifrPpDBioBnmYehUhop', '2016-04-26 04:48:29', '2016-04-26 04:50:22', NULL),
(8, 'Fauzan-Manyama', 'wakala-pos-3-vijibwen@vijibwen.co.tz', '$2y$10$pMkgZbN0yeTorqCs4O1o4uVrIztVX45..PjnkYQZzoGoSj2PmL/4y', 1, '99be52ec165ce65c316610ffac3170cb', 1, 'LT6UqYxXVxmYG3gnJ13VIolGTBu4GqJZY7dnWYcwHlU99DFNGs3rpmlUefkB', '2016-04-26 04:51:00', '2016-04-26 04:51:45', NULL),
(9, 'Mayamba-Zakaria', 'wakala-pos-4-vijibwen@vijibwen.co.tz', '$2y$10$.FYANAoNJ9ukoa.ubgg6r.UXAEyNFnwP4.eeKZ2FQKVh/JXpaqk4K', 1, 'c6f0a9ef10b93ae3fe5af181dfbce54c', 1, 'U6eUuPlhyX9CjIYsE2pXg5kITsQfGclJYU6zpfWTmwSODnjlRdkT1vPhIDjS', '2016-04-26 04:52:45', '2016-04-26 04:59:45', NULL),
(10, 'Rajabu-Yusuph', 'Office-Manager-ilala@ilala.co.tz', '$2y$10$fE4.mhG1iAxEQSubGpN9puA9VYujnIzfQFfy2BNv/R9l0r6kmhPcS', 1, '20f0ee5442df7e728e9c8911c845562d', 1, '470T6ArmqIEKaofiV9o2s2Sqtv0CrSNecPISFuGOihNj7cCat3QP0RxSDvvH', '2016-04-26 05:00:35', '2016-04-26 05:01:01', NULL),
(11, 'Daud-Suleiman', 'wakala-pos-1-ilala@ilala.co.tz', '$2y$10$mK0Y.ZrBqoOk2YnoD0zqkuuRo25dsHrDtmNhHCrwyBKoQFOecnsXW', 1, '932acefc6fb96caba3558f88151ef6de', 1, 'xlPlEUT0SmxjVglJjY9ZGHFnrizclDYFJCHt11D5vcrJUUHGSoolsCbGkmoi', '2016-04-26 05:02:53', '2016-04-26 05:03:20', NULL),
(12, 'Yunus-Zaman', 'wakala-pos-2-ilala@ilala.co.tz', '$2y$10$Any3jwM8vi8VpJJ8rOpcKOT9oo3etGBvLjafndTHqBIxRaKQf2PFe', 1, 'c62043bc429350be63d8c9ae4363808a', 1, 'wZNvqf17mgwSIV7csPM98LdQZ2hN7xlLGgALnAsOSDh2dB574EVFYs78udez', '2016-04-26 05:04:47', '2016-04-26 05:05:17', NULL),
(13, 'Zarina-Ally', 'wakala-pos-3-ilala@ilala.co.tz', '$2y$10$Z/VVjNW4rdtBDDLVJGCzReBQO2GfTlr3JBuYNUFsd3PXZvCsRFYo2', 1, '42e015d308fa911399e5dfe6bd888638', 1, 'SSPDI4LITO7enW3FwH7j5mKPhVHW0e7QzKqBVHEOcOiHG8InSIdAlDMeJAdu', '2016-04-26 05:06:27', '2016-04-26 05:06:51', NULL),
(14, 'Malikia-Mufa', 'wakala-pos-4-ilala@ilala.co.tz', '$2y$10$CPNMXq6OTEMhHqjapLvKou2zyKxYRR4ZgRNNG08/pj6AFoSOdEYcq', 1, '1a0fa5e71915bb5dc3566a5940afa3dc', 1, 'oAijrn0O3EqovtlJaUbFCchfithGyPbzwLc36WTEraIAhnqv2Cmbhq4Ut3PN', '2016-04-26 05:07:51', '2016-04-26 05:08:13', NULL),
(15, 'Bruno- Mass', 'main-branch-ilala@ilala.co.tz', '$2y$10$R.yVIv956/X8zu1MyzpIlO45fayoASvqBu2zF1MnoULrunHI/qdOm', 1, '5dded1fc33bd5c3cc09a111e1a7864b7', 1, 'mnkAqMic7VD9cC5uy7GgQX4eUAvSqSgzbXDOpE9QrFWOhZ4SeuUspNzFZHtj', '2016-04-26 05:20:56', '2016-04-26 05:33:11', NULL),
(16, 'Test-Info', 'chumasitta@gmail.com', '$2y$10$5vddtiaUUQWlAoKt.iVHxuHgKEx68SOuWh2M7QBp7gM0vbsNuEhDK', 1, 'bc7f27849889df8554f14b1f4c9920eb', 1, 'uXdG4exBbL4s9Uwfrm5fU5Tex5oxBZOFKJslJUaETnCtgJ7sVqFpOyJUyBAH', '2016-04-26 08:08:42', '2016-04-29 05:33:41', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE IF NOT EXISTS `user_providers` (
  `id` int(10) unsigned NOT NULL,
  `user_id` int(10) unsigned NOT NULL,
  `provider` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `provider_id` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `assigned_devices`
--
ALTER TABLE `assigned_devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

--
-- Indexes for table `compInfo`
--
ALTER TABLE `compInfo`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `devices`
--
ALTER TABLE `devices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`),
  ADD KEY `password_resets_token_index` (`token`);

--
-- Indexes for table `permissions`
--
ALTER TABLE `permissions`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `permissions_name_unique` (`name`);

--
-- Indexes for table `permission_dependencies`
--
ALTER TABLE `permission_dependencies`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_dependencies_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_dependencies_dependency_id_foreign` (`dependency_id`);

--
-- Indexes for table `permission_groups`
--
ALTER TABLE `permission_groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_role_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_role_role_id_foreign` (`role_id`);

--
-- Indexes for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `permission_user_permission_id_foreign` (`permission_id`),
  ADD KEY `permission_user_user_id_foreign` (`user_id`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaction`
--
ALTER TABLE `transaction`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_providers_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `assigned_devices`
--
ALTER TABLE `assigned_devices`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=22;
--
-- AUTO_INCREMENT for table `compInfo`
--
ALTER TABLE `compInfo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `devices`
--
ALTER TABLE `devices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `permission_dependencies`
--
ALTER TABLE `permission_dependencies`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `prices`
--
ALTER TABLE `prices`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `services`
--
ALTER TABLE `services`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `staff`
--
ALTER TABLE `staff`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `supervisors`
--
ALTER TABLE `supervisors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `transaction`
--
ALTER TABLE `transaction`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=61;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` int(10) unsigned NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD CONSTRAINT `assigned_roles_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`),
  ADD CONSTRAINT `assigned_roles_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `permission_dependencies`
--
ALTER TABLE `permission_dependencies`
  ADD CONSTRAINT `permission_dependencies_dependency_id_foreign` FOREIGN KEY (`dependency_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_dependencies_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`);

--
-- Constraints for table `permission_role`
--
ALTER TABLE `permission_role`
  ADD CONSTRAINT `permission_role_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_role_role_id_foreign` FOREIGN KEY (`role_id`) REFERENCES `roles` (`id`);

--
-- Constraints for table `permission_user`
--
ALTER TABLE `permission_user`
  ADD CONSTRAINT `permission_user_permission_id_foreign` FOREIGN KEY (`permission_id`) REFERENCES `permissions` (`id`),
  ADD CONSTRAINT `permission_user_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `user_providers`
--
ALTER TABLE `user_providers`
  ADD CONSTRAINT `user_providers_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
