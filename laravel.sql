-- phpMyAdmin SQL Dump
-- version 4.5.0.2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 07, 2015 at 05:01 PM
-- Server version: 5.6.19-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `assigned_roles`
--

CREATE TABLE `assigned_roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `assigned_roles`
--

INSERT INTO `assigned_roles` (`id`, `user_id`, `role_id`) VALUES
(1, 1, 1),
(2, 2, 2),
(3, 3, 2);

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
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

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permissions`
--

CREATE TABLE `permissions` (
  `id` int(10) UNSIGNED NOT NULL,
  `group_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `display_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `system` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `permission_dependencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `dependency_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `permission_groups` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

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

CREATE TABLE `permission_role` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `permission_user`
--

CREATE TABLE `permission_user` (
  `id` int(10) UNSIGNED NOT NULL,
  `permission_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `all` tinyint(1) NOT NULL DEFAULT '0',
  `sort` smallint(6) NOT NULL DEFAULT '0',
  `created_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updated_at` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `name`, `all`, `sort`, `created_at`, `updated_at`) VALUES
(1, 'Administrator', 1, 1, '2015-10-06 09:39:47', '2015-10-06 09:39:47'),
(2, 'User', 0, 2, '2015-10-06 09:39:47', '2015-10-06 09:39:47');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `confirmation_code`, `confirmed`, `remember_token`, `created_at`, `updated_at`, `deleted_at`) VALUES
(1, 'Admin Istrator', 'admin@admin.com', '$2y$10$QVr2aa8F4P9mSy6jka0BreOjO9bWXJvUqehO86VEHPa1obNcVHCTq', 1, '4a41bd173dd0cfb1881a64fb1cd0095b', 1, 'KJwY2ALay5BW8dykcZg5wqozKuGM1zdNWTiG6axTBrohaAxQNYgMhe4Oa2Kk', '2015-10-06 09:39:47', '2015-10-06 11:28:03', NULL),
(2, 'Default User', 'user@user.com', '$2y$10$W37xyZlA1ee1nCEttSrMIOeeF8196ueFMMMOv9CSoYNL.IB9xXbTW', 1, '9a46b9c35ac1bc8b5758d6a4ed0d1c07', 1, NULL, '2015-10-06 09:39:47', '2015-10-06 09:39:47', NULL),
(3, 'Masoud', 'bobmasoud@gmail.com', '$2y$10$.poXL9Uzd7VxmXLA2a0o1ebXHP8CVjTiRCxY5EJb5nAgpoxaXsyJa', 1, '183cc0a5b58912ccc48bc0a5c9210ba3', 1, '8prEsuAJxYCX2yTYnHVP7BYXa6LurnVTl7PogwBvtJPIzJ6tVbWV82wCmGMo', '2015-10-06 11:17:18', '2015-10-06 11:26:28', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_providers`
--

CREATE TABLE `user_providers` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
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
-- Indexes for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  ADD PRIMARY KEY (`id`),
  ADD KEY `assigned_roles_user_id_foreign` (`user_id`),
  ADD KEY `assigned_roles_role_id_foreign` (`role_id`);

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
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_name_unique` (`name`);

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
-- AUTO_INCREMENT for table `assigned_roles`
--
ALTER TABLE `assigned_roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `permissions`
--
ALTER TABLE `permissions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `permission_dependencies`
--
ALTER TABLE `permission_dependencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;
--
-- AUTO_INCREMENT for table `permission_groups`
--
ALTER TABLE `permission_groups`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `permission_role`
--
ALTER TABLE `permission_role`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `permission_user`
--
ALTER TABLE `permission_user`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_providers`
--
ALTER TABLE `user_providers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
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
