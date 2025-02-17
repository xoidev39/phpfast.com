-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: localhost
-- Thời gian đã tạo: Th1 26, 2025 lúc 05:09 AM
-- Phiên bản máy phục vụ: 8.0.30
-- Phiên bản PHP: 8.3.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `cms.vn`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_comments`
--

CREATE TABLE `fast_comments` (
  `id` int UNSIGNED NOT NULL,
  `user_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `posttype` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `lang` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip_address` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `parent` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `user_info` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_comments`
--

INSERT INTO `fast_comments` (`id`, `user_id`, `post_id`, `posttype`, `lang`, `content`, `ip_address`, `parent`, `created_at`, `updated_at`, `user_info`) VALUES
(1, 1, 20, 'movie', 'vi', 'Hay', '127.0.0.1', 0, '2025-01-01 21:05:03', '2025-01-01 21:05:03', NULL),
(2, 1, 20, 'movie', 'vi', 'Hay &lt;scprit&gt; sleep(500)&lt;/script&gt;', '127.0.0.1', 0, '2025-01-01 21:05:34', '2025-01-01 21:05:34', NULL),
(3, 1, 20, 'movie', 'vi', 'Hay &lt;scprit&gt; sleep(500)&lt;/script&gt;', '127.0.0.1', 0, '2025-01-01 21:05:36', '2025-01-01 21:05:36', NULL),
(4, 1, 20, 'movie', 'vi', 'Hay &lt;scprit&gt;11 sleep(500)&lt;/script&gt;', '127.0.0.1', 0, '2025-01-01 21:05:52', '2025-01-01 21:05:52', NULL),
(5, 1, 20, 'movie', 'vi', 'Hay &lt;scprit&gt;11 sleep(500)&lt;/script&gt;', '127.0.0.1', 0, '2025-01-01 21:05:52', '2025-01-01 21:05:52', NULL),
(6, 1, 20, 'movie', 'vi', 'Hay &lt;scprit&gt;11 sleep(500)&lt;/script&gt;1212312312331212312321', '127.0.0.1', 0, '2025-01-01 21:06:06', '2025-01-01 21:06:06', NULL),
(7, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:11', '2025-01-07 12:26:11', NULL),
(8, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:12', '2025-01-07 12:26:12', NULL),
(9, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:13', '2025-01-07 12:26:13', NULL),
(10, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:14', '2025-01-07 12:26:14', NULL),
(11, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:15', '2025-01-07 12:26:15', NULL),
(12, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:17', '2025-01-07 12:26:17', NULL),
(13, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:18', '2025-01-07 12:26:18', NULL),
(14, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:19', '2025-01-07 12:26:19', NULL),
(15, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:21', '2025-01-07 12:26:21', NULL),
(16, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:22', '2025-01-07 12:26:22', NULL),
(17, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 12:26:23', '2025-01-07 12:26:23', NULL),
(18, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 13:05:39', '2025-01-07 13:05:39', NULL),
(19, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 13:05:57', '2025-01-07 13:05:57', NULL),
(20, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-07 13:06:25', '2025-01-07 13:06:25', NULL),
(21, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:31:35', '2025-01-08 13:31:35', NULL),
(22, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:31:37', '2025-01-08 13:31:37', NULL),
(23, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:32:01', '2025-01-08 13:32:01', NULL),
(24, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:32:27', '2025-01-08 13:32:27', NULL),
(25, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:32:28', '2025-01-08 13:32:28', NULL),
(26, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:32:30', '2025-01-08 13:32:30', NULL),
(27, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:32:31', '2025-01-08 13:32:31', NULL),
(28, 1, 1, 'movie', 'vi', 'phim quá tệ', '127.0.0.1', 0, '2025-01-08 13:36:40', '2025-01-08 13:36:40', NULL),
(29, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:05:55', '2025-01-08 23:05:55', NULL),
(30, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:06:19', '2025-01-08 23:06:19', NULL),
(31, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:06:53', '2025-01-08 23:06:53', NULL),
(32, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:06:54', '2025-01-08 23:06:54', NULL),
(33, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:06:55', '2025-01-08 23:06:55', NULL),
(34, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:07:51', '2025-01-08 23:07:51', NULL),
(35, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:11:19', '2025-01-08 23:11:19', '{\"fullname\":\"FDR XOI CUTE\",\"email\":\"xoiu@gmail.com\"}'),
(36, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:11:34', '2025-01-08 23:11:34', '{\"fullname\":\"FDR XOI CUTE\",\"email\":\"xoiu@gmail.com\"}'),
(37, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:11:35', '2025-01-08 23:11:35', '{\"fullname\":\"FDR XOI CUTE\",\"email\":\"xoiu@gmail.com\"}'),
(38, NULL, 1, 'movie', 'vi', 'aaaa', '127.0.0.1', 0, '2025-01-08 23:11:37', '2025-01-08 23:11:37', '{\"fullname\":\"FDR XOI CUTE\",\"email\":\"xoiu@gmail.com\"}'),
(39, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 05:19:41', '2025-01-09 05:19:41', NULL),
(40, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 05:19:43', '2025-01-09 05:19:43', NULL),
(41, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 05:19:51', '2025-01-09 05:19:51', NULL),
(42, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 11:35:35', '2025-01-09 11:35:35', NULL),
(43, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 11:39:37', '2025-01-09 11:39:37', NULL),
(44, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 11:40:52', '2025-01-09 11:40:52', NULL),
(45, NULL, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:02:01', '2025-01-09 12:02:01', NULL),
(46, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:05:34', '2025-01-09 12:05:34', NULL),
(47, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:05:53', '2025-01-09 12:05:53', NULL),
(48, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:05:54', '2025-01-09 12:05:54', NULL),
(49, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:06:03', '2025-01-09 12:06:03', NULL),
(50, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:06:15', '2025-01-09 12:06:15', NULL),
(51, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:06:17', '2025-01-09 12:06:17', NULL),
(52, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:07:28', '2025-01-09 12:07:28', NULL),
(53, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:07:43', '2025-01-09 12:07:43', NULL),
(54, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:07:58', '2025-01-09 12:07:58', NULL),
(55, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:08:28', '2025-01-09 12:08:28', NULL),
(56, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:08:37', '2025-01-09 12:08:37', NULL),
(57, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:09:06', '2025-01-09 12:09:06', NULL),
(58, 1, 1, 'movie', 'vi', 'phim quá tệ', '45.64.124.92', 0, '2025-01-09 12:09:07', '2025-01-09 12:09:07', NULL),
(59, NULL, 1, 'movie', 'vi', 'phim quá tệ', '54.86.50.139', 0, '2025-01-09 12:12:58', '2025-01-09 12:12:58', NULL),
(60, 1, 1, 'movie', 'vi', 'phim quá tệ', '54.86.50.139', 0, '2025-01-09 12:13:19', '2025-01-09 12:13:19', NULL),
(61, 1, 21, 'movie', 'vi', '', '45.133.176.86', 0, '2025-01-09 12:14:56', '2025-01-09 12:14:56', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_conversations`
--

CREATE TABLE `fast_conversations` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `user_id` int UNSIGNED NOT NULL,
  `other_user_id` int UNSIGNED NOT NULL,
  `last_message` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `last_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci
PARTITION BY HASH (`user_id`)
PARTITIONS 50;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_files`
--

CREATE TABLE `fast_files` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `path` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `size` bigint NOT NULL DEFAULT '0',
  `resize` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `autoclean` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_files`
--

INSERT INTO `fast_files` (`id`, `name`, `path`, `type`, `size`, `resize`, `autoclean`, `created_at`, `updated_at`) VALUES
(183, 'feature-1.jpg', '2024/12/31/feature-1.jpg', 'jpg', 14312, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:28'),
(184, 'feature-2.jpg', '2024/12/31/feature-2.jpg', 'jpg', 13102, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:30'),
(185, 'feature-3.jpg', '2024/12/31/feature-3.jpg', 'jpg', 12598, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:32'),
(186, 'feature-4.jpg', '2024/12/31/feature-4.jpg', 'jpg', 16982, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:34'),
(187, 'feature-5.jpg', '2024/12/31/feature-5.jpg', 'jpg', 15447, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:35'),
(188, 'feature-6.jpg', '2024/12/31/feature-6.jpg', 'jpg', 15089, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:37'),
(189, 'feature-7.jpg', '2024/12/31/feature-7.jpg', 'jpg', 17161, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:38'),
(190, 'poster-1.jpg', '2024/12/31/poster-1.jpg', 'jpg', 27755, NULL, 0, '2024-12-31 14:12:46', '2024-12-31 18:39:06'),
(191, 'poster-2.jpg', '2024/12/31/poster-2.jpg', 'jpg', 25465, NULL, 0, '2024-12-31 14:12:46', '2024-12-31 14:12:46'),
(192, 'poster-3.jpg', '2024/12/31/poster-3.jpg', 'jpg', 21700, NULL, 0, '2024-12-31 14:12:46', '2024-12-31 14:12:46'),
(193, 'poster-4.jpg', '2024/12/31/poster-4.jpg', 'jpg', 32728, NULL, 0, '2024-12-31 14:12:52', '2024-12-31 14:12:52'),
(194, 'poster-5.jpg', '2024/12/31/poster-5.jpg', 'jpg', 28655, NULL, 0, '2024-12-31 14:12:52', '2024-12-31 14:12:52'),
(195, 'poster-6.jpg', '2024/12/31/poster-6.jpg', 'jpg', 26671, NULL, 0, '2024-12-31 14:12:52', '2024-12-31 14:12:52'),
(196, 'poster-7.jpg', '2024/12/31/poster-7.jpg', 'jpg', 34876, NULL, 0, '2024-12-31 14:12:52', '2024-12-31 14:12:52'),
(197, 'slide-1.png', '2024/12/31/slide-1.png', 'png', 219706, NULL, 0, '2024-12-31 16:01:57', '2024-12-31 16:01:57'),
(198, 'feature-8.jpg', '2024/12/31/feature-8.jpg', 'jpg', 17161, '150x150;333x500', 0, '2024-12-31 14:12:46', '2024-12-31 19:36:38'),
(199, 'poster-8.jpg', '2024/12/31/poster-8.jpg', 'jpg', 34876, NULL, 0, '2024-12-31 14:12:52', '2024-12-31 14:12:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_languages`
--

CREATE TABLE `fast_languages` (
  `id` int UNSIGNED NOT NULL,
  `code` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT '0',
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_languages`
--

INSERT INTO `fast_languages` (`id`, `code`, `name`, `is_default`, `status`, `created_at`, `updated_at`) VALUES
(1, 'en', 'English (US)', 0, 'active', '2024-10-02 04:26:52', '2025-01-17 08:21:27'),
(3, 'vi', 'Tiếng Việt', 0, 'active', '2024-11-15 17:50:33', '2025-01-17 08:21:37'),
(4, 'cn', 'China', 1, 'active', '2024-11-15 17:50:45', '2025-01-17 08:21:27');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_messages`
--

CREATE TABLE `fast_messages` (
  `id` bigint UNSIGNED NOT NULL,
  `conversation_id` bigint UNSIGNED NOT NULL,
  `sender_id` int UNSIGNED NOT NULL,
  `recipient_id` int UNSIGNED NOT NULL,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `is_read` tinyint(1) NOT NULL DEFAULT '0',
  `is_delivered` tinyint(1) NOT NULL DEFAULT '0',
  `is_sent` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_options`
--

CREATE TABLE `fast_options` (
  `id` int UNSIGNED NOT NULL,
  `label` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `value` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `valuelang` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `optional` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_options`
--

INSERT INTO `fast_options` (`id`, `label`, `type`, `name`, `description`, `status`, `value`, `valuelang`, `optional`, `created_at`, `updated_at`) VALUES
(1, 'Option Groups', 'Select', 'option_groups', '', 'active', '', '', '{\"id\":1,\"type\":\"Select\",\"label\":\"Option Groups\",\"name\":\"option_groups\",\"description\":\"\",\"status\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[{\"value\":\"general\",\"label\":\"General\",\"is_group\":false},{\"value\":\"seo\",\"label\":\"SEO\",\"is_group\":false},{\"value\":\"menu\",\"label\":\"Menu\",\"is_group\":false},{\"value\":\"account\",\"label\":\" Auth Social, SMTP\",\"is_group\":false},{\"value\":\"scripts-styles\",\"label\":\"Scripts & Styles\",\"is_group\":false},{\"value\":\"watermark\",\"label\":\"Watermark\",\"is_group\":false},{\"value\":\"api-config\",\"label\":\"API Config\",\"is_group\":false},{\"value\":\"frontend-config\",\"label\":\"Frontend Config\",\"is_group\":false},{\"value\":\"movie\",\"label\":\"Movie\",\"is_group\":false},{\"value\":\"comic\",\"label\":\"Comic\",\"is_group\":false},{\"value\":\"game\",\"label\":\"Game\",\"is_group\":false},{\"value\":\"dating\",\"label\":\"Dating\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2024-12-30 23:03:51\",\"updated_at\":\"2025-01-15 22:42:49\"}', '2024-12-30 23:03:51', '2025-01-16 15:51:53'),
(21, 'Brand Name', 'Text', 'site_brand', '', 'active', '1', '{\"cn\":\"123\",\"vi\":\"123123\"}', '{\"id\":21,\"type\":\"Text\",\"label\":\"Brand Name\",\"option_group\":\"general\",\"name\":\"site_brand\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":false,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:43:32\",\"updated_at\":\"2025-01-15 22:43:53\"}', '2025-01-15 22:43:32', '2025-01-19 12:28:42'),
(22, 'Site Title', 'Text', 'site_title', '', 'active', '2', '{\"cn\":\"123\",\"vi\":\"123123\"}', '{\"id\":22,\"type\":\"Text\",\"label\":\"Site Title\",\"option_group\":\"general\",\"name\":\"site_title\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":false,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:44:09\",\"updated_at\":\"2025-01-15 22:44:09\"}', '2025-01-15 22:44:09', '2025-01-19 12:28:42'),
(23, 'Site Desc', 'Textarea', 'site_desc', '', 'active', '3', '{\"cn\":\"123\",\"vi\":\"123123\"}', '{\"id\":23,\"type\":\"Textarea\",\"label\":\"Site Desc\",\"option_group\":\"general\",\"name\":\"site_desc\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":false,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:44:25\",\"updated_at\":\"2025-01-15 22:44:25\"}', '2025-01-15 22:44:25', '2025-01-19 12:28:42'),
(24, 'Site URL', 'Text', 'site_url', '', 'active', '', '', '{\"id\":24,\"type\":\"Text\",\"label\":\"Site URL\",\"option_group\":\"general\",\"name\":\"site_url\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":false,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:45:05\",\"updated_at\":\"2025-01-15 22:45:05\"}', '2025-01-15 22:45:05', '2025-01-15 22:47:21'),
(25, 'Site Logo', 'Image', 'site_logo', '', 'active', '', '', '{\"id\":25,\"type\":\"Image\",\"label\":\"Site Logo\",\"option_group\":\"general\",\"name\":\"site_logo\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[\"webp\",\"png\",\"jpeg\",\"jpg\"],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:45:29\",\"updated_at\":\"2025-01-15 22:47:27\"}', '2025-01-15 22:45:29', '2025-01-15 22:47:43'),
(26, 'Favicon', 'Image', 'favicon', '', 'active', '', '', '{\"id\":26,\"type\":\"Image\",\"label\":\"Favicon\",\"option_group\":\"general\",\"name\":\"favicon\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[\"jpg\",\"webp\",\"jpeg\",\"png\"],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"{\\\"vi\\\":\\\"\\\",\\\"cn\\\":\\\"\\\"}\",\"created_at\":\"2025-01-15 22:45:51\",\"updated_at\":\"2025-01-18 21:25:31\"}', '2025-01-15 22:45:51', '2025-01-19 12:27:57'),
(27, 'Date Format & Time Format', 'Text', 'site_date_format', '', 'active', '', '', '{\"id\":27,\"type\":\"Text\",\"label\":\"Date Format & Time Format\",\"option_group\":\"general\",\"name\":\"site_date_format\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:46:46\",\"updated_at\":\"2025-01-15 22:46:46\"}', '2025-01-15 22:46:46', '2025-01-19 12:27:47'),
(28, 'Search Engine Visibility', 'Radio', 'site_index', '', 'active', 'true', '', '{\"id\":28,\"type\":\"Radio\",\"label\":\"Search Engine Visibility\",\"option_group\":\"general\",\"name\":\"site_index\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[{\"value\":\"true\",\"label\":\"True\",\"is_group\":false},{\"value\":\"false\",\"label\":\"False\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-15 22:49:57\",\"updated_at\":\"2025-01-15 22:49:57\"}', '2025-01-15 22:49:57', '2025-01-19 12:28:53'),
(30, 'Default Limit', 'Number', 'default_limit', '', 'active', '10', '', '{\"id\":30,\"type\":\"Number\",\"label\":\"Default Limit\",\"option_group\":\"api-config\",\"name\":\"default_limit\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":1,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-16 12:29:07\",\"updated_at\":\"2025-01-16 12:29:26\"}', '2025-01-16 12:29:07', '2025-01-25 14:57:17'),
(31, 'Movie Sortby', 'Repeater', 'movie_sortby', '', 'active', '[{\"name\":\"\",\"sortby\":\"\"}]', '{\"cn\":\"[{\\\"name\\\":\\\"\\\",\\\"sortby\\\":\\\"\\\"}]\",\"vi\":\"[{\\\"name\\\":\\\"\\\",\\\"sortby\\\":\\\"\\\"}]\"}', '{\"id\":1737005441280,\"type\":\"Repeater\",\"label\":\"Movie Sortby\",\"option_group\":\"movie\",\"name\":\"movie_sortby\",\"description\":\"\",\"status\":true,\"save_file\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":false,\"fields\":[{\"id\":1737005478687,\"type\":\"Text\",\"label\":\"Name\",\"name\":\"name\",\"description\":\"\",\"status\":true,\"save_file\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737005535879,\"type\":\"Text\",\"label\":\"Sortby\",\"name\":\"sortby\",\"description\":\"\",\"status\":true,\"save_file\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":2,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"}],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"}', '2025-01-16 12:33:09', '2025-01-19 12:28:42'),
(32, 'User Limit', 'Number', 'user_limit', '', 'active', '1', '', '{\"id\":32,\"type\":\"Number\",\"label\":\"User Limit\",\"option_group\":\"dating\",\"name\":\"user_limit\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":0,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\",\"value\":\"\",\"valuelang\":\"\",\"created_at\":\"2025-01-16 15:52:24\",\"updated_at\":\"2025-01-16 15:52:24\"}', '2025-01-16 15:52:24', '2025-01-25 14:57:17'),
(33, '1213123', 'Text', '123213123123', '', 'active', '', '', '{\"id\":1737101625510,\"type\":\"Text\",\"label\":\"1213123\",\"option_group\":\"general\",\"name\":\"123213123123\",\"description\":\"\",\"status\":true,\"save_file\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":1,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"}', '2025-01-17 08:13:52', '2025-01-17 08:13:52');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_actor_cn`
--

CREATE TABLE `fast_posts_actor_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_actor_cn`
--

INSERT INTO `fast_posts_actor_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `birth_date`, `birth_place`, `gender`, `original_name`, `height`, `weight`, `death_date`, `social_media`) VALUES
(1, 'Leonardo DiCaprio', 'leonardo-dicaprio', NULL, 'active', '2024-12-18 20:09:35', '2024-12-31 15:21:10', 'Leonardo DiCaprio - Hollywood\'s Leading Actor and Environmentalist', 'Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic,', '{\"time\":1735633264159,\"blocks\":[{\"id\":\"MxyFjLxBUH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic, Inception, and The Revenant. Discover his contributions to cinema and environmental activism.Leonardo Wilhelm DiCaprio, born on November 11, 1974, in Los Angeles, California, USA, is a celebrated actor and producer. He has earned numerous accolades, including an Academy Award, for his versatile and compelling roles.&nbsp;&nbsp;\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', '1', 0, 0, 0, 0, 0, '11/11/1974', 'Los Angeles, California, USA', 'men', 'Leonardo DiCaprio', 183, 75, '', '[{\"url_social\": \"https://twitter.com/\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/\", \"name_social\": \"Instagram\"}]'),
(2, '布拉德·皮特', 'bu-la-de-pi-te', NULL, 'active', '2024-12-31 16:00:00', '2024-12-31 16:00:00', '布拉德·皮特 - 好莱坞演员及制片人', '了解布拉德·皮特，这位备受赞誉的演员，以其在《搏击俱乐部》、《十一罗汉》和《好莱坞往事》中的角色而闻名。', '{\"time\":1735621964802,\"blocks\":[{\"id\":\"Kc5RKI5PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"布拉德·皮特是美国著名演员和制片人，以其在《搏击俱乐部》、《十一罗汉》和《好莱坞往事》中的多样化角色而闻名。他获得了多个奖项，包括最佳男配角奥斯卡奖。\"}}],\"version\":\"2.30.7\"}', 'bu-la-de-pi-te-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '18/12/1963', '俄克拉荷马州肖尼市，美国', '男', 'William Bradley Pitt', 180, 75, '', '[{\"url_social\": \"https://twitter.com/bradpitt\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/bradpitt\", \"name_social\": \"Instagram\"}]'),
(3, '梅丽尔·斯特里普', 'meili-er-siteli-pu', NULL, 'active', '2024-12-31 16:30:00', '2024-12-31 16:30:00', '梅丽尔·斯特里普 - 备受赞誉的演员及慈善家', '了解梅丽尔·斯特里普，这位传奇女演员，以其在《穿普拉达的女王》、《索菲的抉择》和《铁娘子》中的表演而闻名。', '{\"time\":1735621965803,\"blocks\":[{\"id\":\"Kc5RKI6PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"梅丽尔·斯特里普是美国著名演员，被广泛认为是其世代最伟大的演员之一。凭借其多样化的表演和口音适应能力，她主演了《穿普拉达的女王》、《索菲的抉择》和《铁娘子》等电影，赢得了包括三次奥斯卡奖在内的多项奖项。\"}}],\"version\":\"2.30.7\"}', 'meili-er-siteli-pu-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/06/1949', '新泽西州萨默特市，美国', '女', 'Mary Louise Streep', 168, 60, '', '[{\"url_social\": \"https://twitter.com/merylstreep\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/merylstreep\", \"name_social\": \"Instagram\"}]'),
(4, '汤姆·汉克斯', 'tangmu-hanksi', NULL, 'active', '2024-12-31 17:00:00', '2024-12-31 17:00:00', '汤姆·汉克斯 - 著名演员及导演', '了解汤姆·汉克斯，这位备受喜爱的演员，以其在《阿甘正传》、《拯救私人瑞恩》和《荒岛余生》中的角色而闻名。', '{\"time\":1735621966804,\"blocks\":[{\"id\":\"Kc5RKI7PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"汤姆·汉克斯是美国著名演员和导演，以其在《阿甘正传》、《拯救私人瑞恩》和《荒岛余生》中的角色而闻名。他获得了多个奖项，包括两次最佳男主角奥斯卡奖。\"}}],\"version\":\"2.30.7\"}', 'tangmu-hanksi-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '09/07/1956', '康科德，加利福尼亚州，美国', '男', 'Thomas Jeffrey Hanks', 183, 75, '', '[{\"url_social\": \"https://twitter.com/tomhanks\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/tomhanks\", \"name_social\": \"Instagram\"}]'),
(5, '斯嘉丽·约翰逊', 'sijialie-yuehanxun', NULL, 'active', '2024-12-31 17:30:00', '2024-12-31 17:30:00', '斯嘉丽·约翰逊 - 备受赞誉的演员及歌手', '探索斯嘉丽·约翰逊在《迷失东京》、《复仇者联盟》和《婚姻故事》等电影中的辉煌职业生涯。', '{\"time\":1735621967805,\"blocks\":[{\"id\":\"Kc5RKI8PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"斯嘉丽·约翰逊是美国著名演员和歌手，以其在《迷失东京》、《复仇者联盟》和《婚姻故事》中的角色而闻名。她获得了多个奖项和提名，包括一座托尼奖和一座英国电影学院奖。\"}}],\"version\":\"2.30.7\"}', 'sijialie-yuehanxun-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/11/1984', '纽约市，纽约州，美国', '女', 'Scarlett Ingrid Johansson', 160, 55, '', '[{\"url_social\": \"https://twitter.com/scarlettjohansson\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/scarlettjohansson\", \"name_social\": \"Instagram\"}]'),
(6, '丹泽尔·华盛顿', 'danzeler-huashengdun', NULL, 'active', '2024-12-31 18:00:00', '2024-12-31 18:00:00', '丹泽尔·华盛顿 - 备受尊敬的演员及导演', '了解丹泽尔·华盛顿，这位因在《训练日》、《马尔科姆X》和《飞行》中的表演而闻名的演员。', '{\"time\":1735621968806,\"blocks\":[{\"id\":\"Kc5RKI9PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"丹泽尔·华盛顿是美国著名演员、导演及制片人，以其在《训练日》、《马尔科姆X》和《飞行》中的角色而闻名。他获得了多个奖项，包括两次奥斯卡奖和三次金球奖。\"}}],\"version\":\"2.30.7\"}', 'danzeler-huashengdun-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '28/12/1954', '纽约州蒙特弗农，美国', '男', 'Denzel Hayes Washington Jr.', 185, 80, '', '[{\"url_social\": \"https://twitter.com/denzelwashington\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/denzelwashington\", \"name_social\": \"Instagram\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_actor_en`
--

CREATE TABLE `fast_posts_actor_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_actor_en`
--

INSERT INTO `fast_posts_actor_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `birth_date`, `birth_place`, `gender`, `original_name`, `height`, `weight`, `death_date`, `social_media`) VALUES
(1, 'Leonardo DiCaprio', 'leonardo-dicaprio', NULL, 'active', '2024-12-18 20:09:35', '2024-12-31 15:20:47', 'Leonardo DiCaprio - Hollywood\'s Leading Actor and Environmentalist', 'Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic,', '{\"time\":1735633236361,\"blocks\":[{\"id\":\"MxyFjLxBUH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic, Inception, and The Revenant. Discover his contributions to cinema and environmental activism.Leonardo Wilhelm DiCaprio, born on November 11, 1974, in Los Angeles, California, USA, is a celebrated actor and producer. He has earned numerous accolades, including an Academy Award, for his versatile and compelling roles.&nbsp;&nbsp;\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', '1', 0, 0, 0, 0, 0, '11/11/1974', 'Los Angeles, California, USA', 'men', 'Leonardo DiCaprio', 183, 75, '', '[{\"url_social\": \"https://twitter.com/\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/\", \"name_social\": \"Instagram\"}]'),
(2, 'Brad Pitt', 'brad-pitt', NULL, 'active', '2024-12-31 16:00:00', '2024-12-31 15:21:49', 'Brad Pitt - Hollywood Actor and Producer', 'Learn about Brad Pitt, the acclaimed actor known for his roles in Fight Club, Ocean\'s Eleven, and Once Upon a Time in Hollywood.', '{\"time\":1735633275260,\"blocks\":[{\"id\":\"Kc5RKI5PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"Brad Pitt is an American actor and producer known for his versatile roles in films such as Fight Club, Ocean\'s Eleven, and Once Upon a Time in Hollywood. He has received multiple awards and nominations, including an Academy Award for Best Supporting Actor.\"}}],\"version\":\"2.30.7\"}', 'brad-pitt-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '18/12/1963', 'Shawnee, Oklahoma, USA', 'men', 'William Bradley Pitt', 180, 75, '', '[{\"url_social\": \"https://twitter.com/bradpitt\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/bradpitt\", \"name_social\": \"Instagram\"}]'),
(3, 'Meryl Streep', 'meryl-streep', NULL, 'active', '2024-12-31 16:30:00', '2024-12-31 15:21:43', 'Meryl Streep - Acclaimed Actress and Philanthropist', 'Discover Meryl Streep, the legendary actress known for her performances in The Devil Wears Prada, Sophie\'s Choice, and The Iron Lady.', '{\"time\":1735633275748,\"blocks\":[{\"id\":\"Kc5RKI6PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Meryl Streep is an American actress widely regarded as one of the greatest actresses of her generation. Known for her versatility and accent adaptation, she has starred in films like The Devil Wears Prada, Sophie\'s Choice, and The Iron Lady, earning multiple awards including three Academy Awards.\"}}],\"version\":\"2.30.7\"}', 'meryl-streep-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/06/1949', 'Summit, New Jersey, USA', 'men', 'Mary Louise Streep', 168, 60, '', '[{\"url_social\": \"https://twitter.com/merylstreep\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/merylstreep\", \"name_social\": \"Instagram\"}]'),
(4, 'Tom Hanks', 'tom-hanks', NULL, 'active', '2024-12-31 17:00:00', '2024-12-31 15:21:59', 'Tom Hanks - Renowned Actor and Filmmaker', 'Learn about Tom Hanks, beloved for his roles in Forrest Gump, Saving Private Ryan, and Cast Away.', '{\"time\":1735633278275,\"blocks\":[{\"id\":\"Kc5RKI7PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tom Hanks is an American actor and filmmaker known for his roles in Forrest Gump, Saving Private Ryan, and Cast Away. He has received numerous awards, including two Academy Awards for Best Actor.\"}}],\"version\":\"2.30.7\"}', 'tom-hanks-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '09/07/1956', 'Concord, California, USA', 'men', 'Thomas Jeffrey Hanks', 183, 75, '', '[{\"url_social\": \"https://twitter.com/tomhanks\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/tomhanks\", \"name_social\": \"Instagram\"}]'),
(5, 'Scarlett Johansson', 'scarlett-johansson', NULL, 'active', '2024-12-31 17:30:00', '2024-12-31 15:22:15', 'Scarlett Johansson - Acclaimed Actress and Singer', 'Explore Scarlett Johansson\'s illustrious career in movies like Lost in Translation, The Avengers, and Marriage Story.', '{\"time\":1735633276797,\"blocks\":[{\"id\":\"Kc5RKI8PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"Scarlett Johansson is an American actress and singer known for her roles in Lost in Translation, The Avengers series, and Marriage Story. She has received multiple awards and nominations, including a Tony Award and a BAFTA Award.\"}}],\"version\":\"2.30.7\"}', 'scarlett-johansson-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/11/1984', 'New York City, New York, USA', 'men', 'Scarlett Ingrid Johansson', 160, 55, '', '[{\"url_social\": \"https://twitter.com/scarlettjohansson\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/scarlettjohansson\", \"name_social\": \"Instagram\"}]'),
(6, 'Denzel Washington', 'denzel-washington', NULL, 'active', '2024-12-31 18:00:00', '2024-12-31 15:22:25', 'Denzel Washington - Esteemed Actor and Director', 'Learn about Denzel Washington, renowned for his performances in Training Day, Malcolm X, and Flight.', '{\"time\":1735633277556,\"blocks\":[{\"id\":\"Kc5RKI9PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Denzel Washington is an American actor, director, and producer known for his roles in Training Day, Malcolm X, and Flight. He has received multiple awards, including two Academy Awards and three Golden Globe Awards.\"}}],\"version\":\"2.30.7\"}', 'denzel-washington-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '28/12/1954', 'Mount Vernon, New York, USA', 'men', 'Denzel Hayes Washington Jr.', 185, 80, '', '[{\"url_social\": \"https://twitter.com/denzelwashington\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/denzelwashington\", \"name_social\": \"Instagram\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_actor_rel`
--

CREATE TABLE `fast_posts_actor_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `field_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_actor_rel`
--

INSERT INTO `fast_posts_actor_rel` (`id`, `term_id`, `post_id`, `lang`, `created_at`, `updated_at`, `postype_slug`, `post_rel_id`, `field_id`) VALUES
(44, NULL, 1, 'all', '2024-12-19 15:39:50', '2024-12-19 15:39:50', 'movie', 1, 1734524753027),
(46, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 20, 1734524753027),
(47, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 21, 1734524753027),
(48, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 22, 1734524753027),
(49, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 23, 1734524753027),
(50, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 24, 1734524753027),
(51, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 25, 1734524753027),
(52, NULL, 1, 'all', '2024-12-31 15:20:47', '2024-12-31 15:20:47', 'movie', 26, 1734524753027),
(53, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 1, 1734524753027),
(54, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 20, 1734524753027),
(55, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 21, 1734524753027),
(56, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 22, 1734524753027),
(57, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 23, 1734524753027),
(58, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 24, 1734524753027),
(59, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 25, 1734524753027),
(60, NULL, 3, 'all', '2024-12-31 15:21:43', '2024-12-31 15:21:43', 'movie', 26, 1734524753027),
(61, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 1, 1734524753027),
(62, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 20, 1734524753027),
(63, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 21, 1734524753027),
(64, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 22, 1734524753027),
(65, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 23, 1734524753027),
(66, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 24, 1734524753027),
(67, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 25, 1734524753027),
(68, NULL, 2, 'all', '2024-12-31 15:21:49', '2024-12-31 15:21:49', 'movie', 26, 1734524753027),
(69, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 1, 1734524753027),
(70, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 20, 1734524753027),
(71, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 21, 1734524753027),
(72, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 22, 1734524753027),
(73, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 23, 1734524753027),
(74, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 24, 1734524753027),
(75, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 25, 1734524753027),
(76, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 26, 1734524753027),
(77, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 1, 1734524753027),
(78, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 20, 1734524753027),
(79, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 21, 1734524753027),
(80, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 22, 1734524753027),
(81, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 23, 1734524753027),
(82, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 24, 1734524753027),
(83, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 25, 1734524753027),
(84, NULL, 5, 'all', '2024-12-31 15:22:15', '2024-12-31 15:22:15', 'movie', 26, 1734524753027),
(85, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 1, 1734524753027),
(86, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 20, 1734524753027),
(87, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 21, 1734524753027),
(88, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 22, 1734524753027),
(89, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 23, 1734524753027),
(90, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 24, 1734524753027),
(91, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 25, 1734524753027),
(92, NULL, 6, 'all', '2024-12-31 15:22:25', '2024-12-31 15:22:25', 'movie', 26, 1734524753027),
(93, NULL, 4, 'all', '2024-12-31 15:21:59', '2024-12-31 15:21:59', 'movie', 4, 1734524753027);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_actor_vi`
--

CREATE TABLE `fast_posts_actor_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_actor_vi`
--

INSERT INTO `fast_posts_actor_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `birth_date`, `birth_place`, `gender`, `original_name`, `height`, `weight`, `death_date`, `social_media`) VALUES
(1, 'Leonardo DiCaprio', 'leonardo-dicaprio', NULL, 'active', '2024-12-18 20:09:35', '2024-12-31 15:21:01', 'Leonardo DiCaprio - Hollywood\'s Leading Actor and Environmentalist', 'Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic,', '{\"time\":1735633258877,\"blocks\":[{\"id\":\"MxyFjLxBUH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Learn about Leonardo DiCaprio, the acclaimed actor known for his powerful performances in Titanic, Inception, and The Revenant. Discover his contributions to cinema and environmental activism.Leonardo Wilhelm DiCaprio, born on November 11, 1974, in Los Angeles, California, USA, is a celebrated actor and producer. He has earned numerous accolades, including an Academy Award, for his versatile and compelling roles.&nbsp;&nbsp;\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', '1', 0, 0, 0, 0, 0, '11/11/1974', 'Los Angeles, California, USA', 'men', 'Leonardo DiCaprio', 183, 75, '', '[{\"url_social\": \"https://twitter.com/\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/\", \"name_social\": \"Instagram\"}]'),
(2, 'Brad Pitt', 'brad-pitt', NULL, 'active', '2024-12-31 16:00:00', '2024-12-31 16:00:00', 'Brad Pitt - Diễn viên và Nhà sản xuất Hollywood', 'Tìm hiểu về Brad Pitt, diễn viên nổi tiếng được biết đến với vai diễn trong Fight Club, Ocean\'s Eleven, và Once Upon a Time in Hollywood.', '{\"time\":1735621964802,\"blocks\":[{\"id\":\"Kc5RKI5PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"Brad Pitt là một diễn viên và nhà sản xuất người Mỹ nổi tiếng với các vai diễn trong Fight Club, Ocean\'s Eleven và Once Upon a Time in Hollywood. Anh đã nhận được nhiều giải thưởng, bao gồm một giải Oscar cho Nam diễn viên phụ xuất sắc nhất.\"}}],\"version\":\"2.30.7\"}', 'brad-pitt-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '18/12/1963', 'Shawnee, Oklahoma, USA', 'nam', 'William Bradley Pitt', 180, 75, '', '[{\"url_social\": \"https://twitter.com/bradpitt\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/bradpitt\", \"name_social\": \"Instagram\"}]'),
(3, 'Meryl Streep', 'meryl-streep', NULL, 'active', '2024-12-31 16:30:00', '2024-12-31 16:30:00', 'Meryl Streep - Diễn viên và Nhà từ thiện nổi tiếng', 'Khám phá Meryl Streep, nữ diễn viên huyền thoại được biết đến với các vai diễn trong The Devil Wears Prada, Sophie\'s Choice và The Iron Lady.', '{\"time\":1735621965803,\"blocks\":[{\"id\":\"Kc5RKI6PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Meryl Streep là một diễn viên người Mỹ được coi là một trong những diễn viên vĩ đại nhất của thế hệ mình. Được biết đến với sự linh hoạt và khả năng thích nghi với giọng nói, cô đã xuất hiện trong các bộ phim như The Devil Wears Prada, Sophie\'s Choice và The Iron Lady, giành được nhiều giải thưởng bao gồm ba giải Oscar.\"}}],\"version\":\"2.30.7\"}', 'meryl-streep-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/06/1949', 'Summit, New Jersey, USA', 'nữ', 'Mary Louise Streep', 168, 60, '', '[{\"url_social\": \"https://twitter.com/merylstreep\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/merylstreep\", \"name_social\": \"Instagram\"}]'),
(4, 'Tom Hanks', 'tom-hanks', NULL, 'active', '2024-12-31 17:00:00', '2024-12-31 17:00:00', 'Tom Hanks - Diễn viên và Đạo diễn nổi tiếng', 'Khám phá sự nghiệp của Tom Hanks, được yêu thích với các vai diễn trong Forrest Gump, Saving Private Ryan và Cast Away.', '{\"time\":1735621966804,\"blocks\":[{\"id\":\"Kc5RKI7PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tom Hanks là một diễn viên và đạo diễn người Mỹ nổi tiếng với các vai diễn trong Forrest Gump, Saving Private Ryan và Cast Away. Ông đã nhận được nhiều giải thưởng, bao gồm hai giải Oscar cho Nam diễn viên xuất sắc nhất.\"}}],\"version\":\"2.30.7\"}', 'tom-hanks-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '09/07/1956', 'Concord, California, USA', 'nam', 'Thomas Jeffrey Hanks', 183, 75, '', '[{\"url_social\": \"https://twitter.com/tomhanks\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/tomhanks\", \"name_social\": \"Instagram\"}]'),
(5, 'Scarlett Johansson', 'scarlett-johansson', NULL, 'active', '2024-12-31 17:30:00', '2024-12-31 17:30:00', 'Scarlett Johansson - Diễn viên và Ca sĩ được khen ngợi', 'Khám phá sự nghiệp lẫy lừng của Scarlett Johansson trong các bộ phim như Lost in Translation, The Avengers và Marriage Story.', '{\"time\":1735621967805,\"blocks\":[{\"id\":\"Kc5RKI8PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"Scarlett Johansson là một diễn viên và ca sĩ người Mỹ nổi tiếng với các vai diễn trong Lost in Translation, The Avengers và Marriage Story. Cô đã nhận được nhiều giải thưởng và đề cử, bao gồm một giải Tony và một giải BAFTA.\"}}],\"version\":\"2.30.7\"}', 'scarlett-johansson-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '22/11/1984', 'New York City, New York, USA', 'nữ', 'Scarlett Ingrid Johansson', 160, 55, '', '[{\"url_social\": \"https://twitter.com/scarlettjohansson\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/scarlettjohansson\", \"name_social\": \"Instagram\"}]'),
(6, 'Denzel Washington', 'denzel-washington', NULL, 'active', '2024-12-31 18:00:00', '2024-12-31 18:00:00', 'Denzel Washington - Diễn viên và Đạo diễn được kính trọng', 'Tìm hiểu về Denzel Washington, nổi tiếng với các vai diễn trong Training Day, Malcolm X và Flight.', '{\"time\":1735621968806,\"blocks\":[{\"id\":\"Kc5RKI9PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Denzel Washington là một diễn viên, đạo diễn và nhà sản xuất người Mỹ nổi tiếng với các vai diễn trong Training Day, Malcolm X và Flight. Ông đã nhận được nhiều giải thưởng, bao gồm hai giải Oscar và ba giải Golden Globe.\"}}],\"version\":\"2.30.7\"}', 'denzel-washington-thumbnail.jpg', '1', 0, 0, 0, 0, 0, '28/12/1954', 'Mount Vernon, New York, USA', 'nam', 'Denzel Hayes Washington Jr.', 185, 80, '', '[{\"url_social\": \"https://twitter.com/denzelwashington\", \"name_social\": \"Twitter\"}, {\"url_social\": \"https://instagram.com/denzelwashington\", \"name_social\": \"Instagram\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_chapter_cn`
--

CREATE TABLE `fast_posts_comic_chapter_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_chapter_cn`
--

INSERT INTO `fast_posts_comic_chapter_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `index`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`) VALUES
(1, '第1话', 'di-1-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第1话', '描述第1话', '1', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(2, '第2话', 'di-2-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第2话', '描述第2话', '2', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(3, '第3话', 'di-3-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第3话', '描述第3话', '3', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(4, '第4话', 'di-4-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第4话', '描述第4话', '4', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(5, '第5话', 'di-5-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第5话', '描述第5话', '5', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(6, '第6话', 'di-6-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第6话', '描述第6话', '6', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(7, '第7话', 'di-7-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第7话', '描述第7话', '7', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(8, '第8话', 'di-8-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第8话', '描述第8话', '8', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(9, '第9话', 'di-9-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第9话', '描述第9话', '9', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(10, '第10话', 'di-10-hua', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', '标题第10话', '描述第10话', '10', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_chapter_en`
--

CREATE TABLE `fast_posts_comic_chapter_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_chapter_en`
--

INSERT INTO `fast_posts_comic_chapter_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `index`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`) VALUES
(1, 'Episode 1', 'episode-1', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:14:41', 'SEO title episode 1', 'SEO description episode 1', '1', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(2, 'Episode 2', 'episode-2', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:14:54', 'SEO title episode 2', 'SEO description episode 2', '2', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(3, 'Episode 3', 'episode-3', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:15:06', 'SEO title episode 3', 'SEO description episode 3', '3', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(4, 'Episode 4', 'episode-4', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:15:17', 'SEO title episode 4', 'SEO description episode 4', '4', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(5, 'Episode 5', 'episode-5', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:15:30', 'SEO title episode 5', 'SEO description episode 5', '5', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(6, 'Episode 6', 'episode-6', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:15:41', 'SEO title episode 6', 'SEO description episode 6', '6', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(7, 'Episode 7', 'episode-7', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:16:06', 'SEO title episode 7', 'SEO description episode 7', '7', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(8, 'Episode 8', 'episode-8', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:16:17', 'SEO title episode 8', 'SEO description episode 8', '8', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(9, 'Episode 9', 'episode-9', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:16:27', 'SEO title episode 9', 'SEO description episode 9', '9', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(10, 'Episode 10', 'episode-10', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:16:40', 'SEO title episode 10', 'SEO description episode 10', '10', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_chapter_rel`
--

CREATE TABLE `fast_posts_comic_chapter_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_chapter_rel`
--

INSERT INTO `fast_posts_comic_chapter_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(2, NULL, 1, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(3, NULL, 1, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(4, NULL, 1, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(5, NULL, 1, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(6, NULL, 1, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(7, NULL, 1, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(8, NULL, 1, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(9, NULL, 1, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(10, NULL, 1, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(11, NULL, 1, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(12, NULL, 1, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(13, NULL, 1, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(14, NULL, 1, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:14:41', '2024-12-31 15:14:41'),
(15, NULL, 2, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(16, NULL, 2, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(17, NULL, 2, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(18, NULL, 2, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(19, NULL, 2, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(20, NULL, 2, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(21, NULL, 2, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(22, NULL, 2, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(23, NULL, 2, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(24, NULL, 2, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(25, NULL, 2, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(26, NULL, 2, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(27, NULL, 2, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:14:54', '2024-12-31 15:14:54'),
(28, NULL, 3, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(29, NULL, 3, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(30, NULL, 3, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(31, NULL, 3, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(32, NULL, 3, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(33, NULL, 3, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(34, NULL, 3, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(35, NULL, 3, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(36, NULL, 3, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(37, NULL, 3, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(38, NULL, 3, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(39, NULL, 3, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(40, NULL, 3, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:15:06', '2024-12-31 15:15:06'),
(41, NULL, 4, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(42, NULL, 4, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(43, NULL, 4, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(44, NULL, 4, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(45, NULL, 4, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(46, NULL, 4, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(47, NULL, 4, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(48, NULL, 4, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(49, NULL, 4, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(50, NULL, 4, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(51, NULL, 4, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(52, NULL, 4, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(53, NULL, 4, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:15:17', '2024-12-31 15:15:17'),
(54, NULL, 5, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(55, NULL, 5, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(56, NULL, 5, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(57, NULL, 5, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(58, NULL, 5, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(59, NULL, 5, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(60, NULL, 5, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(61, NULL, 5, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(62, NULL, 5, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(63, NULL, 5, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(64, NULL, 5, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(65, NULL, 5, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(66, NULL, 5, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:15:30', '2024-12-31 15:15:30'),
(67, NULL, 6, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(68, NULL, 6, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(69, NULL, 6, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(70, NULL, 6, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(71, NULL, 6, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(72, NULL, 6, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(73, NULL, 6, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(74, NULL, 6, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(75, NULL, 6, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(76, NULL, 6, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(77, NULL, 6, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(78, NULL, 6, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(79, NULL, 6, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:15:41', '2024-12-31 15:15:41'),
(80, NULL, 7, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(81, NULL, 7, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(82, NULL, 7, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(83, NULL, 7, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(84, NULL, 7, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(85, NULL, 7, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(86, NULL, 7, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(87, NULL, 7, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(88, NULL, 7, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(89, NULL, 7, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(90, NULL, 7, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(91, NULL, 7, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(92, NULL, 7, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:15:53', '2024-12-31 15:15:53'),
(93, NULL, 8, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(94, NULL, 8, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(95, NULL, 8, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(96, NULL, 8, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(97, NULL, 8, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(98, NULL, 8, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(99, NULL, 8, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(100, NULL, 8, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(101, NULL, 8, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(102, NULL, 8, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(103, NULL, 8, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(104, NULL, 8, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(105, NULL, 8, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:16:17', '2024-12-31 15:16:17'),
(106, NULL, 9, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(107, NULL, 9, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(108, NULL, 9, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(109, NULL, 9, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(110, NULL, 9, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(111, NULL, 9, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(112, NULL, 9, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(113, NULL, 9, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(114, NULL, 9, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(115, NULL, 9, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(116, NULL, 9, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(117, NULL, 9, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(118, NULL, 9, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:16:27', '2024-12-31 15:16:27'),
(119, NULL, 10, 'all', 'comic', 1735193164783, 2, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(120, NULL, 10, 'all', 'comic', 1735193164783, 20, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(121, NULL, 10, 'all', 'comic', 1735193164783, 21, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(122, NULL, 10, 'all', 'comic', 1735193164783, 22, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(123, NULL, 10, 'all', 'comic', 1735193164783, 23, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(124, NULL, 10, 'all', 'comic', 1735193164783, 24, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(125, NULL, 10, 'all', 'comic', 1735193164783, 25, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(126, NULL, 10, 'all', 'comic', 1735193164783, 26, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(127, NULL, 10, 'all', 'comic', 1735193164783, 27, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(128, NULL, 10, 'all', 'comic', 1735193164783, 28, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(129, NULL, 10, 'all', 'comic', 1735193164783, 29, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(130, NULL, 10, 'all', 'comic', 1735193164783, 30, '2024-12-31 15:16:40', '2024-12-31 15:16:40'),
(131, NULL, 10, 'all', 'comic', 1735193164783, 31, '2024-12-31 15:16:40', '2024-12-31 15:16:40');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_chapter_vi`
--

CREATE TABLE `fast_posts_comic_chapter_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `index` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '0',
  `content` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_chapter_vi`
--

INSERT INTO `fast_posts_comic_chapter_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `index`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`) VALUES
(1, 'Tập 1', 'tap-1', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 1', 'Mô tả seo tập 1', '1', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(2, 'Tập 2', 'tap-2', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 2', 'Mô tả seo tập 2', '2', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(3, 'Tập 3', 'tap-3', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 3', 'Mô tả seo tập 3', '3', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(4, 'Tập 4', 'tap-4', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 4', 'Mô tả seo tập 4', '4', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(5, 'Tập 5', 'tap-5', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 5', 'Mô tả seo tập 5', '5', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(6, 'Tập 6', 'tap-6', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 6', 'Mô tả seo tập 6', '6', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(7, 'Tập 7', 'tap-7', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 7', 'Mô tả seo tập 7', '7', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(8, 'Tập 8', 'tap-8', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 8', 'Mô tả seo tập 8', '8', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(9, 'Tập 9', 'tap-9', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 9', 'Mô tả seo tập 9', '9', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0),
(10, 'Tập 10', 'tap-10', NULL, 'active', '2024-12-26 13:07:36', '2024-12-31 15:08:21', 'Tiêu đề seo tập 10', 'Mô tả seo tập 10', '10', '[{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}, {\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}, {\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}, {\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}, {\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}, {\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}, {\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}]', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_cn`
--

CREATE TABLE `fast_posts_comic_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_cn`
--

INSERT INTO `fast_posts_comic_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(2, 'Hành Trình Vô Tận', 'hanh-trinh-vo-tan', NULL, 'active', '2024-12-25 13:09:24', '2024-12-31 19:35:16', 'Hành Trình Vô Tận - Truyện Phiêu Lưu', 'Hành Trình Vô Tận kể về hành trình của nhân vật chính vượt qua thử thách và khám phá thế giới.', '{\"time\":1735631192289,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đêm đã buông xuống tự bao giờ. Ánh trăng mờ nhạt bị che khuất bởi những tầng mây dày đặc, tạo nên một không gian tĩnh lặng đến lạnh lùng. Những cơn gió nhẹ thổi qua khu rừng già, mang theo mùi ẩm mốc của rêu phong và đất đai, hòa quyện với tiếng côn trùng rỉ rả như một bản nhạc u buồn vang lên không dứt.\"}},{\"id\":\"EWBLj7qg92\",\"type\":\"paragraph\",\"data\":{\"text\":\"Trong khu rừng rậm rạp ấy, một chàng trai với mái tóc đen rối bù, đôi mắt sâu thẳm như chứa cả một bầu trời đau thương, đang lê bước trên con đường mòn nhỏ hẹp. Arlen, tên của anh, một cái tên không còn xa lạ với những truyền thuyết được kể trong các quán trọ và làng mạc gần xa. Người ta gọi anh là \\\"Kẻ lữ hành bất tận\\\" – một cái tên mang cả sự kính nể lẫn e sợ.\"}},{\"id\":\"5CMvwpJyQ5\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Vì sao ngươi không dừng lại?\\\" – giọng nói ma mị vang lên từ sâu trong tâm trí, như tiếng gọi vọng lại từ một thế giới xa xăm. Arlen dừng bước, bàn tay siết chặt chuôi thanh kiếm cũ kỹ bên hông, ánh mắt ánh lên tia nhìn cảnh giác.\"}},{\"id\":\"571NlX67HS\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ta không thể.\\\" – Anh đáp, giọng nói trầm khàn nhưng chắc nịch. \\\"Chỉ cần dừng lại, mọi thứ ta bảo vệ sẽ tan biến, mọi người ta yêu thương sẽ mãi mãi bị bóng tối nuốt chửng.\\\"\"}},{\"id\":\"Dun7VulSVp\",\"type\":\"paragraph\",\"data\":{\"text\":\"Hơn hai mươi năm trước, ngôi làng nhỏ nơi Arlen sinh ra từng là một chốn bình yên. Nhưng điều đó đã kết thúc vào cái ngày mà Thảm họa Hắc Ám giáng xuống. Một thế lực tà ác, chưa từng được đặt tên, đã xuất hiện và gieo rắc nỗi kinh hoàng khắp các vùng đất. Chỉ trong một đêm, ngọn lửa thiêu rụi làng mạc, tiếng khóc than lẫn tiếng kêu cứu vang vọng khắp nơi. Chính trong cái đêm định mệnh ấy, Arlen đã mất đi tất cả: gia đình, bạn bè, và cả tuổi thơ của mình.\"}},{\"id\":\"AEBO67ixz3\",\"type\":\"paragraph\",\"data\":{\"text\":\"Anh thề sẽ không bao giờ để bất kỳ ai phải chịu đựng nỗi đau tương tự. Với lời thề đó, Arlen bắt đầu hành trình tìm kiếm cách tiêu diệt bóng tối. Thế nhưng, thứ anh đối mặt không chỉ là những kẻ thù ngoài đời thực mà còn là những ký ức và nỗi ám ảnh luôn bủa vây tâm trí anh mỗi khi đêm xuống.\"}},{\"id\":\"52y0vARHnl\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Bóng tối không thể bị tiêu diệt.\\\" – Một giọng nói khác, đầy uy quyền và lạnh lùng, vang lên từ phía trước. Từ trong màn sương dày đặc, một bóng người cao lớn xuất hiện. Đôi mắt đỏ rực của hắn ánh lên sự nguy hiểm, tay cầm một cây trượng gỗ kỳ lạ.\"}},{\"id\":\"Z0sk41Knlx\",\"type\":\"paragraph\",\"data\":{\"text\":\"Arlen nhận ra ngay kẻ đứng trước mặt mình: Dạ Vương, kẻ đứng đầu thế lực tà ác đã phá hủy thế giới của anh.\"}},{\"id\":\"6eu4ZrvIBM\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ngươi sẽ chỉ mãi chạy trốn trong tuyệt vọng thôi, Arlen.\\\" – Hắn cười nhạt, giọng nói như đâm vào tim anh. \\\"Chạy đi. Vì mỗi bước ngươi đi, bóng tối chỉ càng trở nên mạnh mẽ hơn.\\\"\"}},{\"id\":\"16zewoDRnG\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nhưng lần này, Arlen không còn ý định chạy trốn. Anh nắm lấy thanh kiếm bên hông, thanh kiếm đã theo anh suốt bao năm qua, dù đã gỉ sét và sứt mẻ. Nhưng nó là biểu tượng cho lời thề của anh, cho những gì anh đã mất và những gì anh vẫn còn chiến đấu để bảo vệ.\"}},{\"id\":\"6LNFHMTCBJ\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ngươi đã phá hủy cuộc đời ta.\\\" – Anh nói, ánh mắt kiên định. \\\"Nhưng ngươi sẽ không thể phá hủy hy vọng của thế giới này.\\\"\"}},{\"id\":\"Q1ZnSuijWf\",\"type\":\"paragraph\",\"data\":{\"text\":\"Arlen lao tới, thanh kiếm rực sáng trong tay anh như ngọn lửa cháy sáng trong màn đêm. Trận chiến giữa ánh sáng và bóng tối bắt đầu, không chỉ trên chiến trường, mà còn trong lòng của mỗi người...\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 0, 0, 0, 500, '1', '2/12/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(20, '无限的旅程', 'wuxian-de-lücheng', NULL, 'active', '2024-12-25 13:09:24', '2024-12-31 19:35:16', '无限的旅程 - 冒险漫画', '无限的旅程讲述了主角克服挑战并探索世界的故事。', '{\"time\":1735631070425,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"夜幕已经降临，像往常一样。微弱的月光被厚厚的云层遮挡，营造出宁静而寒冷的氛围。轻柔的微风吹过古老的森林，带来了苔藓和泥土的潮湿气息，与虫鸣声交织成一曲忧郁的旋律，久久不息。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 0, 0, 0, 500, '1', '02/01/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(21, '时间的阴影', 'shijian-de-yinying', NULL, 'active', '2024-12-26 10:00:00', '2024-12-31 19:35:16', '时间的阴影 - 神秘漫画', '时间的阴影通过神秘事件探索过去与现在之间模糊的界限。', '{\"time\":1735631068524,\"blocks\":[{\"id\":\"GM1NWt-4eP\",\"type\":\"paragraph\",\"data\":{\"text\":\"古老的钟楼在暮色的天空中高高耸立，钟表的指针以只有它能理解的节奏移动。下面，街道空无一人，只有在昏暗的街灯下跳舞的阴影显得诡异。似曾相识的感觉充满空气，仿佛被遗忘的瞬间记忆毫无预兆地浮现出来。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '1', '10/1/2024', '时间的阴影深入探讨那些模糊过去与现在界限的神秘事件。'),
(22, '永恒的回声', 'yongheng-de-hui-sheng', NULL, 'active', '2024-12-27 11:00:00', '2024-12-31 19:35:16', '永恒的回声 - 奇幻漫画', '永恒的回声通过神秘的回声交织过去与未来，塑造命运。', '{\"time\":1735631067122,\"blocks\":[{\"id\":\"GM1NWt-5eQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"在古老城市的心脏，逝去时代的回声在大理石大厅中回荡。时间似乎静止，过去的幻象与现在交替闪现，创造出记忆与未来交织的画卷。主人公Elara发现自己在穿越这些回声，寻求跨越永恒的谜团的答案。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 0, 0, 0, 700, '1', '20/1/2024', '永恒的回声通过神秘的回声交织过去与未来，塑造命运。'),
(23, '神秘的地平线', 'shenmi-de-dipingxian', NULL, 'active', '2024-12-28 12:00:00', '2024-12-31 19:35:16', 'Mystic Horizons - 超自然漫画', '神秘的地平线探索现实与超自然相遇的神秘边界。', '{\"time\":1735631065624,\"blocks\":[{\"id\":\"GM1NWt-6eR\",\"type\":\"paragraph\",\"data\":{\"text\":\"浓雾从东部山脉滚滚而来，将村庄笼罩在厚厚的、虚幻的毯子中。灯笼闪烁，阴影在鹅卵石街道上舞动，低语着古老魔法和被遗忘的传说的秘密。一个孤独的身影站在森林边缘，目光凝视着未知，准备踏上超越地平线的旅程。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '1', '25/1/2024', 'Mystic Horizons探索现实与超自然相遇的神秘边界。'),
(24, '天体边界', 'tiantai-bianjie', NULL, 'active', '2024-12-29 13:00:00', '2024-12-31 19:35:16', 'Celestial Boundaries - 科幻漫画', '天体边界探索那些未知领域，天体定义了存在的边界。', '{\"time\":1735631063790,\"blocks\":[{\"id\":\"GM1NWt-7eS\",\"type\":\"paragraph\",\"data\":{\"text\":\"星星在广袤的宇宙中闪烁，每一颗星星都标志着一个新边疆的边缘。宇宙飞船在它们之间静静滑行，导航宇宙中掌控命运的天体力量的微妙平衡。Aria船长站在驾驶室，目光注视着银河交织的地平线，寻找隐藏在远方的秘密。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 0, 0, 0, 900, '1', '10/2/2024', '天体边界探索那些未知领域，天体定义了存在的边界。'),
(25, '隐蔽的谜团', 'yinbi-de-mimutuan', NULL, 'active', '2024-12-30 14:00:00', '2024-12-31 19:35:16', 'Veiled Mysteries - 神秘漫画', '隐蔽的谜团深入探讨了日常生活表面下隐藏的谜团。', '{\"time\":1735631062284,\"blocks\":[{\"id\":\"GM1NWt-7eT\",\"type\":\"paragraph\",\"data\":{\"text\":\"浓雾厚重，夜幕笼罩着小镇。街灯闪烁，在鹅卵石街道上投下诡异的阴影。在远处，一个孤独的身影悄无声息地移动，携带着多年来被埋藏的秘密。隐蔽的谜团即将展开。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '0', '05/2/2024', '一个神秘的故事，揭示了一个普通小镇下隐藏的秘密。'),
(26, '被遗忘的传说', 'beiyiwang-de-chuanshuo', NULL, 'active', '2024-12-31 11:00:00', '2024-12-31 19:35:16', 'Forgotten Legends - 奇幻漫画', '被遗忘的传说带你踏上一个通过被时间和记忆遗忘的故事的史诗般旅程。', '{\"time\":1735631059502,\"blocks\":[{\"id\":\"GM1NWt-8eU\",\"type\":\"paragraph\",\"data\":{\"text\":\"古老的遗迹在月光下静静地矗立，低语着关于早已消逝英雄的故事。当主角深入被遗忘的领域的心脏时，传奇战斗和神话生物的回声指引着他们的道路。被遗忘的传说即将被重新发现。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 0, 0, 0, 650, '0', '10/2/2024', '一个通过被时间和记忆遗忘的故事的史诗般旅程。'),
(27, '沉默的守护者', 'chenmo-de-shouhuozhe', NULL, 'active', '2024-12-31 12:00:00', '2024-12-31 19:35:16', 'Silent Guardians - 超自然漫画', '沉默的守护者跟随那些神秘的保护者，他们守护着自然世界与超自然世界之间的平衡。', '{\"time\":1735631058055,\"blocks\":[{\"id\":\"GM1NWt-9eV\",\"type\":\"paragraph\",\"data\":{\"text\":\"在黑暗的掩护下，沉默的守护者在城市中隐秘地移动，确保世界之间的屏障保持完好。每个守护者都拥有独特的能力，从古老的仪式和神秘的神器中汲取力量。随着超自然干扰的出现，沉默的守护者准备面对新兴的威胁。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 0, 0, 0, 700, '0', '20/2/2024', '沉默的守护者跟随那些神秘的保护者，他们守护着自然世界与超自然世界之间的平衡。'),
(28, '暮光回声', 'muguang-huisheng', NULL, 'active', '2024-12-31 13:00:00', '2024-12-31 19:35:16', 'Twilight Echoes - 超自然漫画', '暮光回声捕捉了白天过渡到夜晚时出现的令人毛骨悚然的反思。', '{\"time\":1735631056626,\"blocks\":[{\"id\":\"GM1NWt-0eW\",\"type\":\"paragraph\",\"data\":{\"text\":\"当太阳沉入地平线下，天空变成了一幅充满生机色彩的画布。阴影拉长，第一颗星星开始闪烁。在白天与夜晚之间的这个边界空间，神秘力量觉醒，为暮光回声的事件铺平了道路。主角必须在这个迷人的暮光中导航，以揭开隐藏的真相。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 0, 0, 0, 750, '0', '25/2/2024', '暮光回声捕捉了白天过渡到夜晚时出现的令人毛骨悚然的反思。'),
(29, '魔法之旅', 'mofa-zhi-lv', NULL, 'active', '2024-12-31 14:00:00', '2024-12-31 19:35:16', 'Enchanted Journeys - 魔法漫画', '魔法之旅将读者带入充满奇迹和冒险的魔法领域。', '{\"time\":1735631054941,\"blocks\":[{\"id\":\"GM1NWt-1eX\",\"type\":\"paragraph\",\"data\":{\"text\":\"在星光璀璨的天空下，魔法森林闪烁着，每一片叶子和树枝都散发着神秘的气息。魔法生物自由漫游，古老的咒语在空气中低语。主人公，年轻的女巫Lyra，踏上了一段探索自己真实命运的旅程，在每一个转角处都有魔法之旅等待着她的指引。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '0', '05/3/2024', '魔法之旅将读者带入充满奇迹和冒险的魔法领域。'),
(30, '天体边界', 'tiantai-bianjie-2', NULL, 'active', '2024-12-31 15:00:00', '2024-12-31 19:35:16', 'Celestial Boundaries - 科幻漫画', '天体边界探索那些未知领域，天体定义了存在的边界。', '{\"time\":1735631053300,\"blocks\":[{\"id\":\"GM1NWt-2eY\",\"type\":\"paragraph\",\"data\":{\"text\":\"夜空是一幅满天星斗的挂毯，每颗星星都标志着一个新边疆的边缘。宇宙飞船在天体边界间航行，探索银河系并遇到未知现象。Aria船长凝视着浩瀚的宇宙，决心揭开地平线之外的秘密。Celestial Boundaries是一个关于在宇宙中探索和发现的史诗故事。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 0, 0, 0, 850, '0', '10/3/2024', '天体边界探索那些未知领域，天体定义了存在的边界。'),
(31, '永恒的回声', 'yongheng-de-hui-sheng-2', NULL, 'active', '2024-12-31 16:00:00', '2024-12-31 19:35:16', 'Echoes of Eternity - 奇幻漫画', '永恒的回声通过神秘的回声交织过去与未来，塑造命运。', '{\"time\":1735631051570,\"blocks\":[{\"id\":\"GM1NWt-3eZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"在古老城市的心脏，逝去时代的回声在大理石大厅中回荡。时间似乎静止，过去的幻象与现在交替闪现，创造出记忆与未来交织的画卷。主人公Elara发现自己在穿越这些回声，寻求跨越永恒的谜团的答案。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 0, 0, 0, 750, '0', '20/3/2024', '永恒的回声通过神秘的回声交织过去与未来，塑造命运。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_en`
--

CREATE TABLE `fast_posts_comic_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_en`
--

INSERT INTO `fast_posts_comic_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(2, 'Hành Trình Vô Tận', 'hanh-trinh-vo-tan', NULL, 'active', '2024-12-25 13:09:24', '2025-01-04 22:25:46', 'Hành Trình Vô Tận - Truyện Phiêu Lưu', 'Hành Trình Vô Tận kể về hành trình của nhân vật chính vượt qua thử thách và khám phá thế giới.', '{\"time\":1735631071320,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đêm đã buông xuống tự bao giờ. Ánh trăng mờ nhạt bị che khuất bởi những tầng mây dày đặc, tạo nên một không gian tĩnh lặng đến lạnh lùng. Những cơn gió nhẹ thổi qua khu rừng già, mang theo mùi ẩm mốc của rêu phong và đất đai, hòa quyện với tiếng côn trùng rỉ rả như một bản nhạc u buồn vang lên không dứt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 0, 0, 0, 500, '1', '2/12/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(20, 'The Infinite Journey', 'the-infinite-journey', NULL, 'active', '2024-12-25 13:09:24', '2025-01-04 22:25:42', 'The Infinite Journey - Adventure Comic', 'The Infinite Journey tells the story of the protagonist overcoming challenges and exploring the world.', '{\"time\":1735631069090,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"Night has fallen as it always does. The faint moonlight is obscured by thick clouds, creating a serene yet cold atmosphere. Gentle breezes pass through the old forest, carrying the damp scent of moss and earth, blending with the sound of rustling insects like a melancholic melody.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 0, 0, 0, 500, '1', '02/01/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(21, 'Shadows of Time', 'shadows-of-time', NULL, 'active', '2024-12-26 10:00:00', '2025-01-04 22:25:39', 'Shadows of Time - Mystery Comic', 'Shadows of Time explores the blurred lines between past and present through mysterious events.', '{\"time\":1735631067603,\"blocks\":[{\"id\":\"GM1NWt-4eP\",\"type\":\"paragraph\",\"data\":{\"text\":\"The old clock tower stood tall against the twilight sky, its hands moving in a rhythm only it could understand. Below, the streets were empty, save for the shadows that danced eerily under the dim streetlights. A sense of déjà vu filled the air as memories of forgotten moments resurfaced without warning.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '1', '10/1/2024', 'Shadows of Time delves into the mysterious events that blur the lines between past and present.'),
(22, 'Echoes of Eternity', 'echoes-of-eternity', NULL, 'active', '2024-12-27 11:00:00', '2025-01-04 22:25:35', 'Echoes of Eternity - Fantasy Comic', 'Echoes of Eternity intertwines past and future through mystical echoes shaping destinies.', '{\"time\":1735631066365,\"blocks\":[{\"id\":\"GM1NWt-5eQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"In the heart of the ancient city, the echoes of bygone eras reverberated through the marble halls. Time seemed to stand still as visions of the past flickered alongside the present, creating a tapestry of memories and futures intertwined. The protagonist, Elara, finds herself navigating through these echoes, seeking answers to mysteries that span eternity.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 0, 0, 0, 700, '1', '20/1/2024', 'Echoes of Eternity intertwines past and future through mystical echoes shaping destinies.'),
(23, 'Mystic Horizons', 'mystic-horizons', NULL, 'active', '2024-12-28 12:00:00', '2025-01-04 22:25:32', 'Mystic Horizons - Supernatural Comic', 'Mystic Horizons explores the mystical boundaries where reality meets the supernatural.', '{\"time\":1735631064301,\"blocks\":[{\"id\":\"GM1NWt-6eR\",\"type\":\"paragraph\",\"data\":{\"text\":\"The fog rolled in from the eastern mountains, enveloping the village in a thick, ethereal blanket. Lanterns flickered as shadows danced on the cobblestone streets, whispering secrets of ancient magic and forgotten lore. A lone figure stood at the edge of the forest, eyes gazing into the unknown, ready to embark on a journey beyond the horizon.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '1', '25/1/2024', 'Mystic Horizons explores the mystical boundaries where reality meets the supernatural.'),
(24, 'Celestial Boundaries', 'celestial-boundaries', NULL, 'active', '2024-12-29 13:00:00', '2025-01-04 22:25:28', 'Celestial Boundaries - Sci-Fi Comic', 'Celestial Boundaries explores the unknown realms where celestial bodies define the boundaries of existence.', '{\"time\":1735631063023,\"blocks\":[{\"id\":\"GM1NWt-7eS\",\"type\":\"paragraph\",\"data\":{\"text\":\"Stars shimmered in the vast expanse of the cosmos, each one marking the edge of a new frontier. Spaceships glided silently between them, navigating the delicate balance of celestial forces that governed the universe. Captain Aria stood on the bridge, her gaze fixed on the horizon where galaxies intertwined, seeking the secrets that lay beyond.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 0, 0, 0, 900, '1', '10/2/2024', 'Celestial Boundaries explores the unknown realms where celestial bodies define the boundaries of existence.'),
(25, 'Veiled Mysteries', 'veiled-mysteries', NULL, 'active', '2024-12-30 14:00:00', '2025-01-04 22:25:25', 'Veiled Mysteries - Mystery Comic', 'Veiled Mysteries delves into the hidden enigmas that lie beneath the surface of everyday life.', '{\"time\":1735631061196,\"blocks\":[{\"id\":\"GM1NWt-7eT\",\"type\":\"paragraph\",\"data\":{\"text\":\"The fog was thick as night enveloped the small town. Streetlights flickered, casting eerie shadows on the cobblestone streets. In the distance, a lone figure moved silently, carrying secrets that had been buried for years. The mysteries of Veiled Mysteries were about to unfold.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '0', '05/2/2024', 'A mysterious tale uncovering the secrets hidden within an ordinary town.'),
(26, 'Forgotten Legends', 'forgotten-legends', NULL, 'active', '2024-12-31 11:00:00', '2025-01-04 22:25:22', 'Forgotten Legends - Fantasy Comic', 'Forgotten Legends takes you on an epic journey through tales lost to time and memory.', '{\"time\":1735631058818,\"blocks\":[{\"id\":\"GM1NWt-8eU\",\"type\":\"paragraph\",\"data\":{\"text\":\"Ancient ruins stood silent under the moonlit sky, whispering stories of heroes long gone. As the protagonist ventures deeper into the heart of the forgotten realm, echoes of legendary battles and mythical creatures guide their path. The Forgotten Legends are about to be rediscovered.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 0, 0, 0, 650, '0', '10/2/2024', 'An epic journey through tales lost to time and memory.'),
(27, 'Silent Guardians', 'silent-guardians', NULL, 'active', '2024-12-31 12:00:00', '2025-01-04 22:25:18', 'Silent Guardians - Supernatural Comic', 'Silent Guardians follows the enigmatic protectors who watch over the balance between the natural and supernatural worlds.', '{\"time\":1735631057327,\"blocks\":[{\"id\":\"GM1NWt-9eV\",\"type\":\"paragraph\",\"data\":{\"text\":\"Under the cover of darkness, the Silent Guardians moved unseen through the city, ensuring that the veil between worlds remained intact. Each guardian possessed unique abilities, drawing strength from ancient rituals and mystical artifacts. As supernatural disturbances began to surface, the Silent Guardians prepared to confront the emerging threats.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 0, 0, 0, 700, '0', '20/2/2024', 'Follow the enigmatic protectors who maintain the balance between the natural and supernatural worlds.'),
(28, 'Twilight Echoes', 'twilight-echoes', NULL, 'active', '2024-12-31 13:00:00', '2025-01-04 22:25:14', 'Twilight Echoes - Supernatural Comic', 'Twilight Echoes captures the haunting reflections that emerge as day transitions to night.', '{\"time\":1735631055735,\"blocks\":[{\"id\":\"GM1NWt-0eW\",\"type\":\"paragraph\",\"data\":{\"text\":\"As the sun dipped below the horizon, the sky transformed into a canvas of vibrant hues. Shadows lengthened, and the first stars began to twinkle. In this liminal space between day and night, mysterious forces awakened, setting the stage for the events of Twilight Echoes. The protagonist must navigate this enchanted twilight to uncover hidden truths.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 0, 0, 0, 750, '0', '25/2/2024', 'Twilight Echoes captures the haunting reflections that emerge as day transitions to night.'),
(29, 'Enchanted Journeys', 'enchanted-journeys', NULL, 'active', '2024-12-31 14:00:00', '2025-01-04 22:25:12', 'Enchanted Journeys - Magical Comic', 'Enchanted Journeys transports readers to magical realms filled with wonder and adventure.', '{\"time\":1735631053798,\"blocks\":[{\"id\":\"GM1NWt-1eX\",\"type\":\"paragraph\",\"data\":{\"text\":\"The enchanted forest shimmered under the starlit sky, with every leaf and branch exuding a mystical aura. Magical creatures roamed freely, and ancient spells whispered through the air. The protagonist, a young sorceress named Lyra, embarks on a quest to discover her true destiny, guided by the enchanted journeys that await her at every turn.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '0', '05/3/2024', 'Enchanted Journeys transports readers to magical realms filled with wonder and adventure.'),
(30, 'Celestial Boundaries', 'celestial-boundaries-2', NULL, 'active', '2024-12-31 15:00:00', '2025-01-04 22:25:08', 'Celestial Boundaries - Sci-Fi Comic', 'Celestial Boundaries explores the unknown realms where celestial bodies define the boundaries of existence.', '{\"time\":1735631052340,\"blocks\":[{\"id\":\"GM1NWt-2eY\",\"type\":\"paragraph\",\"data\":{\"text\":\"The night sky was a tapestry of stars, each one marking the edge of a new frontier. Spaceships navigated through the celestial boundaries, exploring galaxies and encountering unknown phenomena. Captain Aria gazed into the vastness, determined to uncover the secrets that lay beyond the horizon. Celestial Boundaries is an epic tale of exploration and discovery in the cosmos.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 0, 0, 0, 850, '0', '10/3/2024', 'Celestial Boundaries explores the unknown realms where celestial bodies define the boundaries of existence.'),
(31, 'Echoes of Eternity', 'echoes-of-eternity-2', NULL, 'active', '2024-12-31 16:00:00', '2025-01-04 22:24:55', 'Echoes of Eternity - Fantasy Comic', 'Echoes of Eternity intertwines past and future through mystical echoes shaping destinies.', '{\"time\":1735631075349,\"blocks\":[{\"id\":\"GM1NWt-3eZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"In the heart of the ancient city, the echoes of bygone eras reverberated through the marble halls. Time seemed to stand still as visions of the past flickered alongside the present, creating a tapestry of memories and futures intertwined. The protagonist, Elara, finds herself navigating through these echoes, seeking answers to mysteries that span eternity.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 0, 0, 0, 750, '0', '20/3/2024', 'Echoes of Eternity intertwines past and future through mystical echoes shaping destinies.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_rel`
--

CREATE TABLE `fast_posts_comic_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_rel`
--

INSERT INTO `fast_posts_comic_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(49, 61, 31, 'all', NULL, NULL, NULL, '2025-01-04 21:53:51', '2025-01-04 22:06:34'),
(50, 76, 31, 'all', NULL, NULL, NULL, '2025-01-04 21:53:51', '2025-01-04 22:06:34'),
(51, 85, 31, 'all', NULL, NULL, NULL, '2025-01-04 21:53:51', '2025-01-04 22:06:34'),
(52, 61, 30, 'all', NULL, NULL, NULL, '2025-01-04 21:53:55', '2025-01-04 22:06:34'),
(53, 76, 30, 'all', NULL, NULL, NULL, '2025-01-04 21:53:55', '2025-01-04 22:06:34'),
(54, 88, 30, 'all', NULL, NULL, NULL, '2025-01-04 21:53:55', '2025-01-04 22:06:34'),
(55, 67, 29, 'all', NULL, NULL, NULL, '2025-01-04 21:53:59', '2025-01-04 22:06:34'),
(56, 73, 29, 'all', NULL, NULL, NULL, '2025-01-04 21:53:59', '2025-01-04 22:06:34'),
(57, 79, 29, 'all', NULL, NULL, NULL, '2025-01-04 21:53:59', '2025-01-04 22:06:34'),
(58, 61, 28, 'all', NULL, NULL, NULL, '2025-01-04 21:54:02', '2025-01-04 22:06:34'),
(59, 67, 28, 'all', NULL, NULL, NULL, '2025-01-04 21:54:02', '2025-01-04 22:06:34'),
(60, 76, 28, 'all', NULL, NULL, NULL, '2025-01-04 21:54:02', '2025-01-04 22:06:34'),
(61, 64, 27, 'all', NULL, NULL, NULL, '2025-01-04 21:54:06', '2025-01-04 22:06:34'),
(62, 70, 27, 'all', NULL, NULL, NULL, '2025-01-04 21:54:06', '2025-01-04 22:06:34'),
(63, 76, 27, 'all', NULL, NULL, NULL, '2025-01-04 21:54:06', '2025-01-04 22:06:34'),
(64, 79, 26, 'all', NULL, NULL, NULL, '2025-01-04 21:54:11', '2025-01-04 22:06:34'),
(65, 82, 26, 'all', NULL, NULL, NULL, '2025-01-04 21:54:11', '2025-01-04 22:06:34'),
(66, 88, 26, 'all', NULL, NULL, NULL, '2025-01-04 21:54:11', '2025-01-04 22:06:34'),
(67, 64, 25, 'all', NULL, NULL, NULL, '2025-01-04 21:54:15', '2025-01-04 22:06:34'),
(68, 70, 25, 'all', NULL, NULL, NULL, '2025-01-04 21:54:15', '2025-01-04 22:06:34'),
(69, 79, 25, 'all', NULL, NULL, NULL, '2025-01-04 21:54:15', '2025-01-04 22:06:34'),
(70, 64, 24, 'all', NULL, NULL, NULL, '2025-01-04 21:54:19', '2025-01-04 22:06:34'),
(71, 67, 24, 'all', NULL, NULL, NULL, '2025-01-04 21:54:19', '2025-01-04 22:06:34'),
(72, 79, 24, 'all', NULL, NULL, NULL, '2025-01-04 21:54:19', '2025-01-04 22:06:34'),
(73, 64, 23, 'all', NULL, NULL, NULL, '2025-01-04 21:54:25', '2025-01-04 22:06:34'),
(74, 70, 23, 'all', NULL, NULL, NULL, '2025-01-04 21:54:25', '2025-01-04 22:06:34'),
(75, 79, 23, 'all', NULL, NULL, NULL, '2025-01-04 21:54:25', '2025-01-04 22:06:34'),
(76, 61, 22, 'all', NULL, NULL, NULL, '2025-01-04 21:54:28', '2025-01-04 22:06:34'),
(77, 64, 22, 'all', NULL, NULL, NULL, '2025-01-04 21:54:28', '2025-01-04 22:06:34'),
(78, 79, 22, 'all', NULL, NULL, NULL, '2025-01-04 21:54:28', '2025-01-04 22:06:34'),
(79, 64, 21, 'all', NULL, NULL, NULL, '2025-01-04 21:54:32', '2025-01-04 22:06:34'),
(80, 70, 21, 'all', NULL, NULL, NULL, '2025-01-04 21:54:32', '2025-01-04 22:06:34'),
(81, 79, 21, 'all', NULL, NULL, NULL, '2025-01-04 21:54:32', '2025-01-04 22:06:34'),
(82, 61, 20, 'all', NULL, NULL, NULL, '2025-01-04 21:54:36', '2025-01-04 22:06:34'),
(83, 67, 20, 'all', NULL, NULL, NULL, '2025-01-04 21:54:36', '2025-01-04 22:06:34'),
(84, 76, 20, 'all', NULL, NULL, NULL, '2025-01-04 21:54:36', '2025-01-04 22:06:34'),
(85, 70, 2, 'all', NULL, NULL, NULL, '2025-01-04 21:54:40', '2025-01-04 22:06:34'),
(86, 79, 2, 'all', NULL, NULL, NULL, '2025-01-04 21:54:40', '2025-01-04 22:06:34'),
(87, 85, 2, 'all', NULL, NULL, NULL, '2025-01-04 21:54:40', '2025-01-04 22:06:34'),
(88, 262, 31, 'all', NULL, NULL, NULL, '2025-01-04 22:24:55', '2025-01-04 22:24:55'),
(89, 265, 31, 'all', NULL, NULL, NULL, '2025-01-04 22:24:55', '2025-01-04 22:24:55'),
(90, 259, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:25:08', '2025-01-04 22:25:08'),
(91, 268, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:25:08', '2025-01-04 22:25:08'),
(92, 259, 29, 'all', NULL, NULL, NULL, '2025-01-04 22:25:12', '2025-01-04 22:25:12'),
(93, 262, 29, 'all', NULL, NULL, NULL, '2025-01-04 22:25:12', '2025-01-04 22:25:12'),
(94, 265, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:25:14', '2025-01-04 22:25:14'),
(95, 268, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:25:14', '2025-01-04 22:25:14'),
(96, 256, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:25:18', '2025-01-04 22:25:18'),
(97, 268, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:25:18', '2025-01-04 22:25:18'),
(98, 256, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:25:22', '2025-01-04 22:25:22'),
(99, 262, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:25:22', '2025-01-04 22:25:22'),
(100, 259, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:25:25', '2025-01-04 22:25:25'),
(101, 262, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:25:25', '2025-01-04 22:25:25'),
(102, 256, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:25:28', '2025-01-04 22:25:28'),
(103, 268, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:25:28', '2025-01-04 22:25:28'),
(104, 259, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:25:32', '2025-01-04 22:25:32'),
(105, 262, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:25:32', '2025-01-04 22:25:32'),
(106, 262, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:25:35', '2025-01-04 22:25:35'),
(107, 265, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:25:35', '2025-01-04 22:25:35'),
(108, 268, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:25:35', '2025-01-04 22:25:35'),
(109, 256, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:25:39', '2025-01-04 22:25:39'),
(110, 259, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:25:39', '2025-01-04 22:25:39'),
(111, 262, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:25:39', '2025-01-04 22:25:39'),
(112, 262, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:25:42', '2025-01-04 22:25:42'),
(113, 265, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:25:42', '2025-01-04 22:25:42'),
(114, 268, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:25:42', '2025-01-04 22:25:42'),
(115, 256, 2, 'all', NULL, NULL, NULL, '2025-01-04 22:25:46', '2025-01-04 22:25:46'),
(116, 262, 2, 'all', NULL, NULL, NULL, '2025-01-04 22:25:46', '2025-01-04 22:25:46'),
(117, 265, 2, 'all', NULL, NULL, NULL, '2025-01-04 22:25:46', '2025-01-04 22:25:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_comic_vi`
--

CREATE TABLE `fast_posts_comic_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_comic_vi`
--

INSERT INTO `fast_posts_comic_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(2, 'Hành Trình Vô Tận', 'hanh-trinh-vo-tan', NULL, 'active', '2024-12-25 13:09:24', '2025-01-15 11:04:01', 'Hành Trình Vô Tận - Truyện Phiêu Lưu', 'Hành Trình Vô Tận kể về hành trình của nhân vật chính vượt qua thử thách và khám phá thế giới.', '{\"time\":1735631185711,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đêm đã buông xuống tự bao giờ. Ánh trăng mờ nhạt bị che khuất bởi những tầng mây dày đặc, tạo nên một không gian tĩnh lặng đến lạnh lùng. Những cơn gió nhẹ thổi qua khu rừng già, mang theo mùi ẩm mốc của rêu phong và đất đai, hòa quyện với tiếng côn trùng rỉ rả như một bản nhạc u buồn vang lên không dứt.\"}},{\"id\":\"EWBLj7qg92\",\"type\":\"paragraph\",\"data\":{\"text\":\"Trong khu rừng rậm rạp ấy, một chàng trai với mái tóc đen rối bù, đôi mắt sâu thẳm như chứa cả một bầu trời đau thương, đang lê bước trên con đường mòn nhỏ hẹp. Arlen, tên của anh, một cái tên không còn xa lạ với những truyền thuyết được kể trong các quán trọ và làng mạc gần xa. Người ta gọi anh là \\\"Kẻ lữ hành bất tận\\\" – một cái tên mang cả sự kính nể lẫn e sợ.\"}},{\"id\":\"5CMvwpJyQ5\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Vì sao ngươi không dừng lại?\\\" – giọng nói ma mị vang lên từ sâu trong tâm trí, như tiếng gọi vọng lại từ một thế giới xa xăm. Arlen dừng bước, bàn tay siết chặt chuôi thanh kiếm cũ kỹ bên hông, ánh mắt ánh lên tia nhìn cảnh giác.\"}},{\"id\":\"571NlX67HS\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ta không thể.\\\" – Anh đáp, giọng nói trầm khàn nhưng chắc nịch. \\\"Chỉ cần dừng lại, mọi thứ ta bảo vệ sẽ tan biến, mọi người ta yêu thương sẽ mãi mãi bị bóng tối nuốt chửng.\\\"\"}},{\"id\":\"Dun7VulSVp\",\"type\":\"paragraph\",\"data\":{\"text\":\"Hơn hai mươi năm trước, ngôi làng nhỏ nơi Arlen sinh ra từng là một chốn bình yên. Nhưng điều đó đã kết thúc vào cái ngày mà Thảm họa Hắc Ám giáng xuống. Một thế lực tà ác, chưa từng được đặt tên, đã xuất hiện và gieo rắc nỗi kinh hoàng khắp các vùng đất. Chỉ trong một đêm, ngọn lửa thiêu rụi làng mạc, tiếng khóc than lẫn tiếng kêu cứu vang vọng khắp nơi. Chính trong cái đêm định mệnh ấy, Arlen đã mất đi tất cả: gia đình, bạn bè, và cả tuổi thơ của mình.\"}},{\"id\":\"AEBO67ixz3\",\"type\":\"paragraph\",\"data\":{\"text\":\"Anh thề sẽ không bao giờ để bất kỳ ai phải chịu đựng nỗi đau tương tự. Với lời thề đó, Arlen bắt đầu hành trình tìm kiếm cách tiêu diệt bóng tối. Thế nhưng, thứ anh đối mặt không chỉ là những kẻ thù ngoài đời thực mà còn là những ký ức và nỗi ám ảnh luôn bủa vây tâm trí anh mỗi khi đêm xuống.\"}},{\"id\":\"52y0vARHnl\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Bóng tối không thể bị tiêu diệt.\\\" – Một giọng nói khác, đầy uy quyền và lạnh lùng, vang lên từ phía trước. Từ trong màn sương dày đặc, một bóng người cao lớn xuất hiện. Đôi mắt đỏ rực của hắn ánh lên sự nguy hiểm, tay cầm một cây trượng gỗ kỳ lạ.\"}},{\"id\":\"Z0sk41Knlx\",\"type\":\"paragraph\",\"data\":{\"text\":\"Arlen nhận ra ngay kẻ đứng trước mặt mình: Dạ Vương, kẻ đứng đầu thế lực tà ác đã phá hủy thế giới của anh.\"}},{\"id\":\"6eu4ZrvIBM\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ngươi sẽ chỉ mãi chạy trốn trong tuyệt vọng thôi, Arlen.\\\" – Hắn cười nhạt, giọng nói như đâm vào tim anh. \\\"Chạy đi. Vì mỗi bước ngươi đi, bóng tối chỉ càng trở nên mạnh mẽ hơn.\\\"\"}},{\"id\":\"16zewoDRnG\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nhưng lần này, Arlen không còn ý định chạy trốn. Anh nắm lấy thanh kiếm bên hông, thanh kiếm đã theo anh suốt bao năm qua, dù đã gỉ sét và sứt mẻ. Nhưng nó là biểu tượng cho lời thề của anh, cho những gì anh đã mất và những gì anh vẫn còn chiến đấu để bảo vệ.\"}},{\"id\":\"6LNFHMTCBJ\",\"type\":\"paragraph\",\"data\":{\"text\":\"\\\"Ngươi đã phá hủy cuộc đời ta.\\\" – Anh nói, ánh mắt kiên định. \\\"Nhưng ngươi sẽ không thể phá hủy hy vọng của thế giới này.\\\"\"}},{\"id\":\"Q1ZnSuijWf\",\"type\":\"paragraph\",\"data\":{\"text\":\"Arlen lao tới, thanh kiếm rực sáng trong tay anh như ngọn lửa cháy sáng trong màn đêm. Trận chiến giữa ánh sáng và bóng tối bắt đầu, không chỉ trên chiến trường, mà còn trong lòng của mỗi người...\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 2, 2, 2, 500, '1', '2/12/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(20, 'Hành Trình Vô Tận', 'hanh-trinh-vo-tan-2', NULL, 'active', '2024-12-25 13:09:24', '2025-01-13 18:38:43', 'Hành Trình Vô Tận - Truyện Phiêu Lưu', 'Hành Trình Vô Tận kể về hành trình của nhân vật chính vượt qua thử thách và khám phá thế giới.', '{\"time\":1735631069580,\"blocks\":[{\"id\":\"GM1NWt-3eO\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đêm đã buông xuống tự bao giờ. Ánh trăng mờ nhạt bị che khuất bởi những tầng mây dày đặc, tạo nên một không gian tĩnh lặng đến lạnh lùng. Những cơn gió nhẹ thổi qua khu rừng già, mang theo mùi ẩm mốc của rêu phong và đất đai, hòa quyện với tiếng côn trùng rỉ rả như một bản nhạc u buồn vang lên không dứt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 1, 1, 1, 504, '1', '02/01/2024', 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.'),
(21, 'Bóng tối của thời gian', 'bong-toi-cua-thoi-gian', NULL, 'active', '2024-12-26 10:00:00', '2024-12-31 19:35:26', 'Shadows of Time - Truyện Bí Ẩn', 'Shadows of Time khám phá những ranh giới mờ nhạt giữa quá khứ và hiện tại qua những sự kiện bí ẩn.', '{\"time\":1735631068093,\"blocks\":[{\"id\":\"GM1NWt-4eP\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tháp đồng hồ cũ đứng cao trên bầu trời hoàng hôn, kim đồng hồ di chuyển theo nhịp điệu chỉ nó hiểu được. Dưới đó, các con phố trống rỗng, ngoại trừ những bóng tối nhảy múa rùng rợn dưới ánh đèn đường mờ. Cảm giác déjà vu lan tỏa trong không khí khi những ký ức của những khoảnh khắc đã bị lãng quên bất ngờ xuất hiện lại.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '1', '10/1/2024', 'Shadows of Time khám phá những sự kiện bí ẩn làm mờ ranh giới giữa quá khứ và hiện tại.'),
(22, 'Âm vang của vĩnh cửu', 'am-vang-cua-vinh-cuu', NULL, 'active', '2024-12-27 11:00:00', '2025-01-16 05:07:13', 'Echoes of Eternity - Truyện Giả Tưởng', 'Âm vang của vĩnh cửu kết hợp quá khứ và tương lai thông qua những âm vang huyền bí định hình số phận.', '{\"time\":1735631066560,\"blocks\":[{\"id\":\"GM1NWt-5eQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"Trong trái tim của thành phố cổ đại, những âm vang của các thời đại đã qua vang vọng qua những hành lang cẩm thạch. Thời gian dường như đứng yên khi những hình ảnh của quá khứ nhấp nháy bên cạnh hiện tại, tạo nên một bức tranh ký ức và tương lai đan xen. Nhân vật chính, Elara, thấy mình đang điều hướng qua những âm vang này, tìm kiếm câu trả lời cho những bí ẩn kéo dài suốt vĩnh cửu.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 3, 3, 3, 700, '1', '20/1/2024', 'Âm vang của vĩnh cửu kết hợp quá khứ và tương lai thông qua những âm vang huyền bí định hình số phận.'),
(23, 'Chân trời huyền bí', 'chan-troi-huyen-bi', NULL, 'active', '2024-12-28 12:00:00', '2024-12-31 19:35:26', 'Mystic Horizons - Truyện Siêu nhiên', 'Chân trời huyền bí khám phá những ranh giới huyền bí nơi thực tại gặp gỡ siêu nhiên.', '{\"time\":1735631064832,\"blocks\":[{\"id\":\"GM1NWt-6eR\",\"type\":\"paragraph\",\"data\":{\"text\":\"Sương mù lăn vào từ dãy núi phía đông, bao phủ ngôi làng trong một tấm chăn dày, huyền ảo. Những chiếc đèn lồng nhấp nháy khi bóng tối nhảy múa trên các con đường lát đá, thì thầm những bí mật của ma thuật cổ xưa và những kiến thức đã bị lãng quên. Một hình bóng cô đơn đứng ở rìa rừng, mắt nhìn vào điều không biết, sẵn sàng bắt đầu một hành trình vượt ra ngoài chân trời.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '1', '25/1/2024', 'Mystic Horizons khám phá những ranh giới huyền bí nơi thực tại gặp gỡ siêu nhiên.'),
(24, 'Ranh giới thiên thể', 'rahn-gioi-thien-the', NULL, 'active', '2024-12-29 13:00:00', '2024-12-31 19:35:26', 'Celestial Boundaries - Truyện Khoa Học Viễn Tưởng', 'Ranh giới thiên thể khám phá những vùng đất chưa biết nơi các thiên thể xác định ranh giới của sự tồn tại.', '{\"time\":1735631063516,\"blocks\":[{\"id\":\"GM1NWt-7eS\",\"type\":\"paragraph\",\"data\":{\"text\":\"Những vì sao lấp lánh trong không gian bao la của vũ trụ, mỗi ngôi sao đánh dấu ranh giới của một miền mới. Các tàu vũ trụ lướt nhẹ nhàng giữa chúng, điều hướng sự cân bằng tinh tế của các lực thiên thể điều khiển vũ trụ. Thuyền trưởng Aria đứng trên boong tàu, ánh mắt cô hướng về chân trời nơi các thiên hà đan xen, tìm kiếm những bí mật nằm ở phía xa.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 0, 0, 0, 900, '1', '10/2/2024', 'Ranh giới thiên thể khám phá những vùng đất chưa biết nơi các thiên thể xác định ranh giới của sự tồn tại.'),
(25, 'Những Bí Ẩn Che Giấu', 'nhung-bi-an-che-giau', NULL, 'active', '2024-12-30 14:00:00', '2024-12-31 19:35:26', 'Veiled Mysteries - Truyện Bí Ẩn', 'Những Bí Ẩn Che Giấu đào sâu vào những điều bí ẩn nằm dưới bề mặt của cuộc sống hàng ngày.', '{\"time\":1735631061817,\"blocks\":[{\"id\":\"GM1NWt-7eT\",\"type\":\"paragraph\",\"data\":{\"text\":\"Sương mù dày đặc như đêm đen bao phủ ngôi làng nhỏ. Đèn đường nhấp nháy, tạo ra những bóng tối rùng rợn trên những con đường lát đá cuội. Ở xa, một hình bóng cô đơn di chuyển im lặng, mang theo những bí mật đã được chôn vùi trong nhiều năm. Những bí ẩn của Những Bí Ẩn Che Giấu sắp được hé lộ.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 1, 0, 0, 0, 0, 0, 600, '0', '05/2/2024', 'Một câu chuyện bí ẩn hé lộ những bí mật ẩn giấu trong một ngôi làng bình thường.'),
(26, 'Những Huyền Thoại Bị Lãng Quên', 'nhung-huyen-thoai-bi-lang-quen', NULL, 'active', '2024-12-31 11:00:00', '2024-12-31 19:35:26', 'Forgotten Legends - Truyện Giả Tưởng', 'Những Huyền Thoại Bị Lãng Quên đưa bạn vào một hành trình sử thi qua những câu chuyện đã bị thời gian và ký ức lãng quên.', '{\"time\":1735631059166,\"blocks\":[{\"id\":\"GM1NWt-8eU\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tàn tích cổ đại lặng lẽ dưới bầu trời trăng sáng, thì thầm những câu chuyện về những anh hùng đã khuất. Khi nhân vật chính tiến sâu hơn vào trái tim của vùng đất bị lãng quên, những âm vang của những trận chiến huyền thoại và sinh vật thần thoại dẫn đường cho họ. Những Huyền Thoại Bị Lãng Quên sắp được khám phá lại.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 1, 0, 0, 0, 0, 0, 650, '0', '10/2/2024', 'Một hành trình sử thi qua những câu chuyện đã bị thời gian và ký ức lãng quên.'),
(27, 'Những Người Bảo Vệ Im Lặng', 'nhung-nguoi-bao-ve-im-lang', NULL, 'active', '2024-12-31 12:00:00', '2024-12-31 19:35:26', 'Silent Guardians - Truyện Siêu nhiên', 'Những Người Bảo Vệ Im Lặng theo dõi những người bảo vệ bí ẩn giám sát sự cân bằng giữa thế giới tự nhiên và siêu nhiên.', '{\"time\":1735631057653,\"blocks\":[{\"id\":\"GM1NWt-9eV\",\"type\":\"paragraph\",\"data\":{\"text\":\"Trong bóng tối của đêm, Những Người Bảo Vệ Im Lặng di chuyển lặng lẽ qua thành phố, đảm bảo rằng hàng rào giữa các thế giới vẫn được giữ vững. Mỗi người bảo vệ sở hữu khả năng độc đáo, lấy sức mạnh từ các nghi lễ cổ xưa và vật phẩm huyền bí. Khi những sự rối loạn siêu nhiên bắt đầu xuất hiện, Những Người Bảo Vệ Im Lặng chuẩn bị đối mặt với các mối đe dọa mới nổi.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 1, 0, 0, 0, 0, 0, 700, '0', '20/2/2024', 'Theo dõi những người bảo vệ bí ẩn duy trì sự cân bằng giữa thế giới tự nhiên và siêu nhiên.'),
(28, 'Âm vang hoàng hôn', 'am-vang-hoang-hon', NULL, 'active', '2024-12-31 13:00:00', '2025-01-16 05:07:20', 'Twilight Echoes - Truyện Siêu nhiên', 'Âm vang hoàng hôn ghi lại những phản chiếu rùng rợn xuất hiện khi ngày chuyển sang đêm.', '{\"time\":1735631056168,\"blocks\":[{\"id\":\"GM1NWt-0eW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Khi mặt trời lặn dưới chân trời, bầu trời biến thành một bức tranh đầy màu sắc rực rỡ. Những bóng tối dài hơn, và những ngôi sao đầu tiên bắt đầu lấp lánh. Trong khoảng không gian giữa ngày và đêm này, những lực lượng bí ẩn thức tỉnh, tạo nền tảng cho các sự kiện của Âm vang hoàng hôn. Nhân vật chính phải điều hướng qua hoàng hôn mê hoặc này để khám phá những sự thật ẩn giấu.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 192, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 1, 0, 0, 4, 4, 4, 750, '0', '25/2/2024', 'Âm vang hoàng hôn ghi lại những phản chiếu rùng rợn xuất hiện khi ngày chuyển sang đêm.'),
(29, 'Chuyến đi huyền diệu', 'chuyen-di-huyen-dieu', NULL, 'active', '2024-12-31 14:00:00', '2024-12-31 19:35:26', 'Enchanted Journeys - Truyện Kỳ Ảo', 'Chuyến đi huyền diệu đưa độc giả đến những vương quốc kỳ diệu đầy sự ngạc nhiên và phiêu lưu.', '{\"time\":1735631054194,\"blocks\":[{\"id\":\"GM1NWt-1eX\",\"type\":\"paragraph\",\"data\":{\"text\":\"Rừng rậm huyền diệu lấp lánh dưới bầu trời đầy sao, với mỗi chiếc lá và cành cây tỏa ra một hào quang huyền bí. Những sinh vật thần kỳ đi lang thang tự do, và những câu thần chú cổ xưa thì thầm trong không khí. Nhân vật chính, một pháp sư trẻ tên Lyra, bắt đầu một cuộc hành trình để khám phá định mệnh thật sự của mình, được dẫn dắt bởi những chuyến đi huyền diệu chờ đợi cô ở mọi ngã rẽ.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 1, 0, 0, 0, 0, 0, 800, '0', '05/3/2024', 'Chuyến đi huyền diệu đưa độc giả đến những vương quốc kỳ diệu đầy sự ngạc nhiên và phiêu lưu.'),
(30, 'Ranh giới thiên thể', 'rahn-gioi-thien-the-2', NULL, 'active', '2024-12-31 15:00:00', '2025-01-15 09:08:00', 'Celestial Boundaries - Truyện Khoa Học Viễn Tưởng', 'Ranh giới thiên thể khám phá những vùng đất chưa biết nơi các thiên thể xác định ranh giới của sự tồn tại.', '{\"time\":1735631052838,\"blocks\":[{\"id\":\"GM1NWt-2eY\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bầu trời đêm là một tấm thảm đầy sao, mỗi ngôi sao đánh dấu ranh giới của một miền mới. Các tàu vũ trụ điều hướng qua các ranh giới thiên thể, khám phá các thiên hà và gặp phải các hiện tượng chưa biết. Thuyền trưởng Aria nhìn vào vũ trụ bao la, quyết tâm khám phá những bí mật nằm ngoài chân trời. Celestial Boundaries là một câu chuyện sử thi về khám phá và phát hiện trong vũ trụ.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 194, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 1, 0, 0, 4, 4, 4, 850, '0', '10/3/2024', 'Ranh giới thiên thể khám phá những vùng đất chưa biết nơi các thiên thể xác định ranh giới của sự tồn tại.'),
(31, 'Âm vang của vĩnh cửu', 'am-vang-cua-vinh-cuu-2', NULL, 'active', '2024-12-31 16:00:00', '2025-01-16 05:07:07', 'Echoes of Eternity - Truyện Giả Tưởng', 'Âm vang của vĩnh cửu kết hợp quá khứ và tương lai thông qua những âm vang huyền bí định hình số phận.', '{\"time\":1735631051227,\"blocks\":[{\"id\":\"GM1NWt-3eZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"Trong trái tim của thành phố cổ đại, những âm vang của các thời đại đã qua vang vọng qua những hành lang cẩm thạch. Thời gian dường như đứng yên khi những hình ảnh của quá khứ nhấp nháy bên cạnh hiện tại, tạo nên một bức tranh ký ức và tương lai đan xen. Nhân vật chính, Elara, thấy mình đang điều hướng qua những âm vang này, tìm kiếm câu trả lời cho những bí ẩn kéo dài suốt vĩnh cửu.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', '{\"id\": 195, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 1, 0, 0, 20, 20, 20, 750, '0', '20/3/2024', 'Âm vang của vĩnh cửu kết hợp quá khứ và tương lai thông qua những âm vang huyền bí định hình số phận.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_creator_cn`
--

CREATE TABLE `fast_posts_creator_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `social_media` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_creator_cn`
--

INSERT INTO `fast_posts_creator_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`, `description`) VALUES
(10, 'J.K. Rowling', 'jk-rowling', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:19:27', '《哈利波特》系列的作者', '例如，J.K. Rowling，著有《哈利波特》系列小说。', '{\"time\":1735633163594,\"blocks\":[{\"id\":\"drOlYNW_mQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"她在1990年乘坐从曼彻斯特到伦敦的火车时开始写作《哈利波特》。\"}},{\"id\":\"bSJhSww77O\",\"type\":\"paragraph\",\"data\":{\"text\":\"笔名“J.K.”是Joanne（她的真实姓名）和Kathleen（她祖母的名字）的缩写。\"}},{\"id\":\"NkWyM4muaU\",\"type\":\"paragraph\",\"data\":{\"text\":\"最初，《哈利波特与魔法石》的手稿被12家出版社拒绝，之后才被接受。\"}},{\"id\":\"-kt66LP8Q9\",\"type\":\"paragraph\",\"data\":{\"text\":\"J.K. Rowling是世界上最富有的作家之一，同时也积极参与慈善活动。\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', 1, 0, 0, 0, 0, 0, 'Joanne Rowling', '1965-07-31', 'UK', '', '1', 165, 55, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/jkrowling\"}]', '她在1990年乘坐从曼彻斯特到伦敦的火车时开始写作《哈利波特》。'),
(11, '乔治·R·R·马丁', 'george-rr-martin', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:18:44', '的作者', '乔治·R·R·马丁以其史诗奇幻系列《冰与火之歌》而闻名。', '{\"time\":1735633119601,\"blocks\":[{\"id\":\"a1\",\"type\":\"paragraph\",\"data\":{\"text\":\"乔治·R·R·马丁于1991年开始撰写《冰与火之歌》。\"}},{\"id\":\"a2\",\"type\":\"paragraph\",\"data\":{\"text\":\"他以复杂的人物和精细的政治情节著称。\"}},{\"id\":\"a3\",\"type\":\"paragraph\",\"data\":{\"text\":\"该系列小说启发了热门电视剧《权力的游戏》。\"}},{\"id\":\"a4\",\"type\":\"paragraph\",\"data\":{\"text\":\"马丁还积极参与各种慈善活动和电视制作。\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', 1, 0, 0, 0, 0, 0, '乔治·雷蒙德·理查德·马丁', '1948-09-20', 'USA', '', '1', 180, 75, '[{\"name_social\":\"twitter\",\"url_social\":\"https://twitter.com/GRRM\"}]', '乔治·R·R·马丁于1991年开始撰写《冰与火之歌》。'),
(12, '阿加莎·克里斯蒂', 'agatha-christie', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:18:24', '《赫丘勒·波洛》和《简·马普尔》系列的作者', '阿加莎·克里斯蒂以其侦探小说《赫丘勒·波洛》和《简·马普尔》而闻名。', '{\"time\":1735633099609,\"blocks\":[{\"id\":\"b1\",\"type\":\"paragraph\",\"data\":{\"text\":\"阿加莎·克里斯蒂于1920年代初开始她的写作生涯。\"}},{\"id\":\"b2\",\"type\":\"paragraph\",\"data\":{\"text\":\"她创造了一些文学中最著名的侦探，包括赫丘勒·波洛和简·马普尔。\"}},{\"id\":\"b3\",\"type\":\"paragraph\",\"data\":{\"text\":\"克里斯蒂常被称为“侦探小说女王”。\"}},{\"id\":\"b4\",\"type\":\"paragraph\",\"data\":{\"text\":\"她的作品被改编成了众多电影、电视剧和戏剧。\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, 0, 0, 0, 0, 0, '阿加莎·玛丽·克拉丽莎·克里斯蒂', '1890-09-15', 'UK', '1976-01-12', '1', 170, 60, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/agathachristie\"}]', '阿加莎·克里斯蒂于1920年代初开始她的写作生涯。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_creator_en`
--

CREATE TABLE `fast_posts_creator_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `social_media` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_creator_en`
--

INSERT INTO `fast_posts_creator_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`, `description`) VALUES
(10, 'J.K. Rowling', 'jk-rowling', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:19:16', 'Author of Harry Potter Series', 'For example, J.K. Rowling, author of the Harry Potter series.', '{\"time\":1735633030787,\"blocks\":[{\"id\":\"drOlYNW_mQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"She began writing Harry Potter while on a train from Manchester to London in 1990.\"}},{\"id\":\"bSJhSww77O\",\"type\":\"paragraph\",\"data\":{\"text\":\"The pen name “J.K.” stands for Joanne (her real name) and Kathleen (her grandmother’s name).\"}},{\"id\":\"NkWyM4muaU\",\"type\":\"paragraph\",\"data\":{\"text\":\"Initially, the manuscript for Harry Potter and the Philosopher\'s Stone was rejected by 12 publishers before being accepted.\"}},{\"id\":\"-kt66LP8Q9\",\"type\":\"paragraph\",\"data\":{\"text\":\"J.K. Rowling is one of the richest authors in the world and is also actively involved in charitable activities.\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', 1, 0, 0, 0, 0, 0, 'Joanne Rowling', '1965-07-31', 'UK', '', '1', 165, 55, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/jkrowling\"}]', 'She began writing Harry Potter while on a train from Manchester to London in 1990.'),
(11, 'George R.R. Martin', 'george-rr-martin', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:17:57', 'Author of A Song of Ice and Fire Series', 'George R.R. Martin is best known for his epic fantasy series, A Song of Ice and Fire.', '{\"time\":1735633030138,\"blocks\":[{\"id\":\"a1\",\"type\":\"paragraph\",\"data\":{\"text\":\"George R.R. Martin began writing A Song of Ice and Fire in 1991.\"}},{\"id\":\"a2\",\"type\":\"paragraph\",\"data\":{\"text\":\"He is renowned for his complex characters and intricate political plots.\"}},{\"id\":\"a3\",\"type\":\"paragraph\",\"data\":{\"text\":\"The series inspired the hit TV show Game of Thrones.\"}},{\"id\":\"a4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Martin is also involved in various charitable activities and television production.\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, 0, 0, 0, 0, 0, 'George Raymond Richard Martin', '1948-09-20', 'USA', '', '1', 180, 75, '[{\"name_social\":\"twitter\",\"url_social\":\"https://twitter.com/GRRM\"}]', 'George R.R. Martin began writing A Song of Ice and Fire in 1991.'),
(12, 'Agatha Christie', 'agatha-christie', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:18:06', 'Author of Hercule Poirot and Miss Marple Series', 'Agatha Christie is renowned for her detective novels featuring Hercule Poirot and Miss Marple.', '{    \"time\":1735625583518,    \"blocks\":[        {\"id\":\"b1\",\"type\":\"paragraph\",\"data\":{\"text\":\"Agatha Christie began her writing career in the early 1920s.\"}},        {\"id\":\"b2\",\"type\":\"paragraph\",\"data\":{\"text\":\"She created some of the most famous detectives in literature, including Hercule Poirot and Miss Marple.\"}},        {\"id\":\"b3\",\"type\":\"paragraph\",\"data\":{\"text\":\"Christie is often referred to as the \"Queen of Mystery\".\"}},        {\"id\":\"b4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Her works have been adapted into numerous films, television series, and plays.\"}}    ],    \"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, 0, 0, 0, 0, 0, 'Agatha Mary Clarissa Christie', '1890-09-15', 'UK', '1976-01-12', '1', 170, 60, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/agathachristie\"}]', 'Agatha Christie began her writing career in the early 1920s.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_creator_rel`
--

CREATE TABLE `fast_posts_creator_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_creator_rel`
--

INSERT INTO `fast_posts_creator_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(3, NULL, 12, 'all', 'comic', 1735105418223, 2, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(4, NULL, 12, 'all', 'comic', 1735105418223, 20, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(5, NULL, 12, 'all', 'comic', 1735105418223, 21, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(6, NULL, 12, 'all', 'comic', 1735105418223, 22, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(7, NULL, 12, 'all', 'comic', 1735105418223, 23, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(8, NULL, 12, 'all', 'comic', 1735105418223, 24, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(9, NULL, 12, 'all', 'comic', 1735105418223, 25, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(10, NULL, 12, 'all', 'comic', 1735105418223, 26, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(11, NULL, 12, 'all', 'comic', 1735105418223, 27, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(12, NULL, 12, 'all', 'comic', 1735105418223, 28, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(13, NULL, 12, 'all', 'comic', 1735105418223, 29, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(14, NULL, 12, 'all', 'comic', 1735105418223, 30, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(15, NULL, 12, 'all', 'comic', 1735105418223, 31, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(16, NULL, 12, 'all', 'novel', 1735191996306, 20, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(17, NULL, 12, 'all', 'novel', 1735191996306, 21, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(18, NULL, 12, 'all', 'novel', 1735191996306, 22, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(19, NULL, 12, 'all', 'novel', 1735191996306, 23, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(20, NULL, 12, 'all', 'novel', 1735191996306, 24, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(21, NULL, 12, 'all', 'novel', 1735191996306, 25, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(22, NULL, 12, 'all', 'novel', 1735191996306, 26, '2024-12-31 15:17:29', '2024-12-31 15:17:29'),
(23, NULL, 12, 'all', 'novel', 1735191996306, 27, '2024-12-31 15:17:30', '2024-12-31 15:17:30'),
(24, NULL, 12, 'all', 'novel', 1735191996306, 28, '2024-12-31 15:17:30', '2024-12-31 15:17:30'),
(25, NULL, 12, 'all', 'novel', 1735191996306, 30, '2024-12-31 15:17:30', '2024-12-31 15:17:30'),
(26, NULL, 11, 'all', 'comic', 1735105418223, 2, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(27, NULL, 11, 'all', 'comic', 1735105418223, 20, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(28, NULL, 11, 'all', 'comic', 1735105418223, 21, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(29, NULL, 11, 'all', 'comic', 1735105418223, 22, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(30, NULL, 11, 'all', 'comic', 1735105418223, 23, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(31, NULL, 11, 'all', 'comic', 1735105418223, 24, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(32, NULL, 11, 'all', 'comic', 1735105418223, 25, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(33, NULL, 11, 'all', 'comic', 1735105418223, 26, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(34, NULL, 11, 'all', 'comic', 1735105418223, 27, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(35, NULL, 11, 'all', 'comic', 1735105418223, 28, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(36, NULL, 11, 'all', 'comic', 1735105418223, 29, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(37, NULL, 11, 'all', 'comic', 1735105418223, 30, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(38, NULL, 11, 'all', 'comic', 1735105418223, 31, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(39, NULL, 11, 'all', 'novel', 1735191996306, 20, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(40, NULL, 11, 'all', 'novel', 1735191996306, 21, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(41, NULL, 11, 'all', 'novel', 1735191996306, 22, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(42, NULL, 11, 'all', 'novel', 1735191996306, 23, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(43, NULL, 11, 'all', 'novel', 1735191996306, 24, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(44, NULL, 11, 'all', 'novel', 1735191996306, 25, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(45, NULL, 11, 'all', 'novel', 1735191996306, 26, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(46, NULL, 11, 'all', 'novel', 1735191996306, 27, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(47, NULL, 11, 'all', 'novel', 1735191996306, 28, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(48, NULL, 11, 'all', 'novel', 1735191996306, 30, '2024-12-31 15:17:57', '2024-12-31 15:17:57'),
(49, NULL, 10, 'all', 'comic', 1735105418223, 2, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(50, NULL, 10, 'all', 'comic', 1735105418223, 20, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(51, NULL, 10, 'all', 'comic', 1735105418223, 21, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(52, NULL, 10, 'all', 'comic', 1735105418223, 22, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(53, NULL, 10, 'all', 'comic', 1735105418223, 23, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(54, NULL, 10, 'all', 'comic', 1735105418223, 24, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(55, NULL, 10, 'all', 'comic', 1735105418223, 25, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(56, NULL, 10, 'all', 'comic', 1735105418223, 26, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(57, NULL, 10, 'all', 'comic', 1735105418223, 27, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(58, NULL, 10, 'all', 'comic', 1735105418223, 28, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(59, NULL, 10, 'all', 'comic', 1735105418223, 29, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(60, NULL, 10, 'all', 'comic', 1735105418223, 30, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(61, NULL, 10, 'all', 'comic', 1735105418223, 31, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(62, NULL, 10, 'all', 'novel', 1735191996306, 20, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(63, NULL, 10, 'all', 'novel', 1735191996306, 21, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(64, NULL, 10, 'all', 'novel', 1735191996306, 22, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(65, NULL, 10, 'all', 'novel', 1735191996306, 23, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(66, NULL, 10, 'all', 'novel', 1735191996306, 24, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(67, NULL, 10, 'all', 'novel', 1735191996306, 25, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(68, NULL, 10, 'all', 'novel', 1735191996306, 26, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(69, NULL, 10, 'all', 'novel', 1735191996306, 27, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(70, NULL, 10, 'all', 'novel', 1735191996306, 28, '2024-12-31 15:19:16', '2024-12-31 15:19:16'),
(71, NULL, 10, 'all', 'novel', 1735191996306, 30, '2024-12-31 15:19:16', '2024-12-31 15:19:16');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_creator_vi`
--

CREATE TABLE `fast_posts_creator_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `height` int DEFAULT '0',
  `weight` int DEFAULT '0',
  `social_media` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_creator_vi`
--

INSERT INTO `fast_posts_creator_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`, `description`) VALUES
(10, 'J.K. Rowling', 'jk-rowling', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:19:22', 'Tác giả của bộ tiểu thuyết Harry Potter', 'Chẳng hạn như J.K. Rowling, tác giả của bộ tiểu thuyết Harry Potter', '{\"time\":1735633157839,\"blocks\":[{\"id\":\"drOlYNW_mQ\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bà bắt đầu viết Harry Potter khi đang đi trên một chuyến tàu từ Manchester đến London vào năm 1990.\"}},{\"id\":\"bSJhSww77O\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tên bút danh “J.K.” là viết tắt từ Joanne (tên thật) và Kathleen (tên bà ngoại).\"}},{\"id\":\"NkWyM4muaU\",\"type\":\"paragraph\",\"data\":{\"text\":\"Ban đầu, bản thảo Harry Potter và Hòn đá Phù thủy bị từ chối bởi 12 nhà xuất bản trước khi được chấp nhận.\"}},{\"id\":\"-kt66LP8Q9\",\"type\":\"paragraph\",\"data\":{\"text\":\"J.K. Rowling là một trong những tác giả giàu nhất thế giới và cũng tích cực tham gia vào các hoạt động từ thiện.\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"}', 1, 0, 0, 0, 0, 0, 'Joanne Rowling', '31/07/1965', 'UK', '', '1', 165, 55, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/jkrowling\"}]', 'Bà bắt đầu viết Harry Potter khi đang đi trên một chuyến tàu từ Manchester đến London vào năm 1990.'),
(11, 'George R.R. Martin', 'george-rr-martin', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:19:43', 'Tác giả của loạt truyện A Song of Ice and Fire', 'George R.R. Martin nổi tiếng với loạt truyện kỳ ảo A Song of Ice and Fire.', '{\"time\":1735633131508,\"blocks\":[{\"id\":\"a1\",\"type\":\"paragraph\",\"data\":{\"text\":\"George R.R. Martin bắt đầu viết A Song of Ice and Fire vào năm 1991.\"}},{\"id\":\"a2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Ông nổi tiếng với các nhân vật phức tạp và cốt truyện chính trị tinh vi.\"}},{\"id\":\"a3\",\"type\":\"paragraph\",\"data\":{\"text\":\"Loạt truyện đã truyền cảm hứng cho loạt phim nổi tiếng Game of Thrones.\"}},{\"id\":\"a4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Martin cũng tham gia vào các hoạt động từ thiện và sản xuất truyền hình.\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, 0, 0, 0, 0, 0, 'George Raymond Richard Martin', '20/09/1948', 'USA', '', '1', 180, 75, '[{\"name_social\":\"twitter\",\"url_social\":\"https://twitter.com/GRRM\"}]', 'George R.R. Martin bắt đầu viết A Song of Ice and Fire vào năm 1991.'),
(12, 'Agatha Christie', 'agatha-christie', NULL, 'active', '2024-12-31 13:14:06', '2024-12-31 15:18:17', 'Tác giả của loạt truyện Hercule Poirot và Miss Marple', 'Agatha Christie nổi tiếng với các tiểu thuyết trinh thám có nhân vật Hercule Poirot và Miss Marple.', '{    \"time\":1735625583518,    \"blocks\":[        {\"id\":\"b1\",\"type\":\"paragraph\",\"data\":{\"text\":\"Agatha Christie bắt đầu sự nghiệp viết lách vào đầu những năm 1920.\"}},        {\"id\":\"b2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bà đã tạo ra một số thám tử nổi tiếng nhất trong văn học, bao gồm Hercule Poirot và Miss Marple.\"}},        {\"id\":\"b3\",\"type\":\"paragraph\",\"data\":{\"text\":\"Christie thường được gọi là \"Nữ hoàng của thể loại trinh thám\".\"}},        {\"id\":\"b4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tác phẩm của bà đã được chuyển thể thành nhiều bộ phim, loạt phim truyền hình và vở kịch.\"}}    ],    \"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, 0, 0, 0, 0, 0, 'Agatha Mary Clarissa Christie', '15/09/1890', 'UK', '12/01/1976', '1', 170, 60, '[{\"name_social\":\"facebook\",\"url_social\":\"https://facebook.com/agathachristie\"}]', 'Agatha Christie bắt đầu sự nghiệp viết lách vào đầu những năm 1920.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_director_cn`
--

CREATE TABLE `fast_posts_director_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_director_cn`
--

INSERT INTO `fast_posts_director_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`) VALUES
(1, '克里斯托弗·爱德华·诺兰', 'keli-si-tuofu-aidehua-nuolan', NULL, 'active', '2024-12-18 20:06:15', '2024-12-31 15:31:55', '克里斯托弗·爱德华·诺兰 - 远见卓识的导演简介', '探索克里斯托弗·爱德华·诺兰，这位标志性的导演，以其在《盗梦空间》、《蝙蝠侠三部曲》和《星际穿越》等电影中的作品闻名。', '{\"time\":1735633886967,\"blocks\":[{\"id\":\"YviysCTSfB\",\"type\":\"paragraph\",\"data\":{\"text\":\"克里斯托弗·爱德华·诺兰，1970年7月30日出生于英国伦敦，是一位著名的导演、编剧和制片人。他以在《记忆碎片》、《盗梦空间》、《蝙蝠侠三部曲》和《敦刻尔克》等电影中的创新叙事和复杂剧情而闻名。诺兰因其作品获得了众多奖项和荣誉，确立了他在现代电影界的领导地位。\"}}],\"version\":\"2.30.7\"}', 'keli-si-tuofu-aidehua-nuolan-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Christopher Edward Nolan', '30/07/1970', '伦敦，英格兰', '', 'men', 180, '75', '[{\"url_social\": \"https://twitter.com/chrisnolan\", \"name_social\": \"Twitter\"}]'),
(2, '史蒂文·斯皮尔伯格', 'shidifen-sipeierboge', NULL, 'active', '2024-12-19 10:15:30', '2024-12-31 15:31:47', '史蒂文·斯皮尔伯格 - 传奇电影制作人', '探索史蒂文·斯皮尔伯格辉煌的职业生涯，这位幕后大师以《侏罗纪公园》、《辛德勒的名单》和《E.T.》等大片闻名。', '{\"time\":1735633884808,\"blocks\":[{\"id\":\"AviysCTSfC\",\"type\":\"paragraph\",\"data\":{\"text\":\"史蒂文·斯皮尔伯格，1946年12月18日出生于美国俄亥俄州辛辛那提，是一位传奇导演、制片人和编剧。他被广泛认为是电影史上最伟大的电影制作人之一，拥有《大白鲨》、《E.T. 外星人》、《印第安纳·琼斯系列》、《侏罗纪公园》和《辛德勒的名单》等标志性电影。斯皮尔伯格因其作品获得了众多奖项，包括多个奥斯卡奖，巩固了他在电影界的地位。\"}}],\"version\":\"2.30.7\"}', 'shidiwen-sipeierboge-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Steven Spielberg', '18/12/1946', '辛辛那提，俄亥俄州，美国', '', 'men', 180, '75', '[{\"url_social\": \"https://twitter.com/Spielberg\", \"name_social\": \"Twitter\"}]'),
(3, '昆汀·塔伦蒂诺', 'kunting-talentinuo', NULL, 'active', '2024-12-20 14:25:45', '2024-12-31 14:55:30', '昆汀·塔伦蒂诺 - 现代电影大师', '深入了解昆汀·塔伦蒂诺独特的风格，这位导演以《低俗小说》、《杀死比尔》和《好莱坞往事》等电影闻名。', '{\"time\":1735623500896,\"blocks\":[{\"id\":\"BviysCTSfD\",\"type\":\"paragraph\",\"data\":{\"text\":\"昆汀·塔伦蒂诺，1963年3月27日出生于美国田纳西州诺克斯维尔，是一位著名的导演、编剧和制片人。他以其独特的叙事风格、犀利的对白和风格化的暴力场面而闻名，创作了《落水狗》、《低俗小说》、《杀死比尔》系列、《无耻混蛋》和《被解救的姜戈》等经典电影。塔伦蒂诺因其作品多次获得奥斯卡奖项，被誉为现代电影界的重要人物。\"}}],\"version\":\"2.30.7\"}', 'kunting-talentinuo-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Quentin Tarantino', '27/03/1963', '诺克斯维尔，田纳西州，美国', '', 'male', 175, '70', '[{\"url_social\": \"https://twitter.com/QTarantino\", \"name_social\": \"Twitter\"}]'),
(4, '马丁·斯科塞斯', 'matin-sikoseis', NULL, 'active', '2024-12-21 09:35:50', '2024-12-31 15:31:41', '马丁·斯科塞斯 - 标志性的美国导演', '了解马丁·斯科塞斯对电影的深远影响，通过《好家伙》、《出租车司机》和《爱尔兰人》等电影。', '{\"time\":1735633883070,\"blocks\":[{\"id\":\"CviysCTSfE\",\"type\":\"paragraph\",\"data\":{\"text\":\"马丁·斯科塞斯，1942年11月17日出生于美国纽约市皇后区，是一位著名的导演、制片人和编剧。他以在犯罪类型电影中的杰出贡献以及对身份认同、救赎和人类状况等主题的深刻探索而闻名。斯科塞斯执导了《街头之王》、《出租车司机》、《愤怒的公牛》、《好家伙》、《无间道》和《爱尔兰人》等经典影片，并因其作品获得了众多奖项，包括多个奥斯卡奖和金球奖。\"}}],\"version\":\"2.30.7\"}', 'martin-sikoseis-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Martin Scorsese', '17/11/1942', '皇后区，纽约市，美国', '', 'men', 175, '70', '[{\"url_social\": \"https://twitter.com/Scorsese\", \"name_social\": \"Twitter\"}]'),
(5, '詹姆斯·卡梅隆', 'james-cameilang', NULL, 'active', '2024-12-22 11:45:55', '2024-12-31 16:15:50', '詹姆斯·卡梅隆 - 先锋电影制作人', '探索詹姆斯·卡梅隆在《泰坦尼克号》、《阿凡达》和《终结者》系列等电影中的开创性作品。', '{\"time\":1735623700898,\"blocks\":[{\"id\":\"DviysCTSfF\",\"type\":\"paragraph\",\"data\":{\"text\":\"詹姆斯·卡梅隆，1954年8月16日出生于加拿大安大略省卡普斯肯辛，是一位具有远见的导演、制片人和编剧。他以在视觉特效和深海探索方面的创新，以及创作了一些史上票房最高的电影，如《终结者》系列、《异形》、《泰坦尼克号》和《阿凡达》等而闻名。卡梅隆因其作品获得了众多奖项，包括奥斯卡奖最佳影片和最佳导演奖。\"}}],\"version\":\"2.30.7\"}', 'james-cameilang-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'James Cameron', '16/08/1954', '卡普斯肯辛，安大略省，加拿大', '', 'male', 185, '80', '[{\"url_social\": \"https://twitter.com/jamescameron\", \"name_social\": \"Twitter\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_director_en`
--

CREATE TABLE `fast_posts_director_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_director_en`
--

INSERT INTO `fast_posts_director_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`) VALUES
(1, 'Christopher Edward Nolan', 'christopher-edward-nolan', NULL, 'active', '2024-12-18 20:06:15', '2024-12-31 15:31:11', 'Christopher Edward Nolan - Profile of a Visionary Director', 'Discover Christopher Edward Nolan, the iconic director known for his work on films like Inception, The Dark Knight Trilogy, and Interstellar.', '{\"time\":1735633822286,\"blocks\":[{\"id\":\"YviysCTSfB\",\"type\":\"paragraph\",\"data\":{\"text\":\"Christopher Edward Nolan, born on July 30, 1970, in London, England, is a renowned director, screenwriter, and producer. He is best known for his innovative storytelling and complex narratives in films such as Memento, Inception, The Dark Knight Trilogy, and Dunkirk. Nolan has received numerous awards and accolades for his work, establishing himself as one of the leading figures in modern cinema.\"}}],\"version\":\"2.30.7\"}', 'christopher-nolan-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Christopher Edward Nolan', '30/07/1970', 'London, England', '', 'men', 180, '75', '[{\"url_social\": \"https://twitter.com/chrisnolan\", \"name_social\": \"Twitter\"}]'),
(2, 'Steven Spielberg', 'steven-spielberg', NULL, 'active', '2024-12-19 10:15:30', '2024-12-31 15:31:02', 'Steven Spielberg - Legendary Filmmaker', 'Explore the illustrious career of Steven Spielberg, the mastermind behind blockbuster hits like Jurassic Park, Schindler\'s List, and E.T.', '{\"time\":1735633821743,\"blocks\":[{\"id\":\"AviysCTSfC\",\"type\":\"paragraph\",\"data\":{\"text\":\"Steven Spielberg, born on December 18, 1946, in Cincinnati, Ohio, USA, is a legendary director, producer, and screenwriter. He is widely regarded as one of the greatest filmmakers in the history of cinema, with iconic films such as Jaws, E.T. the Extra-Terrestrial, Indiana Jones series, Jurassic Park, and Schindler\'s List. Spielberg has received numerous awards, including multiple Academy Awards, solidifying his impact on the film industry.\"}}],\"version\":\"2.30.7\"}', 'steven-spielberg-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Steven Spielberg', '18/12/1946', 'Cincinnati, Ohio, USA', '', 'men', 180, '75', '[{\"url_social\": \"https://twitter.com/Spielberg\", \"name_social\": \"Twitter\"}]'),
(3, 'Quentin Tarantino', 'quentin-tarantino', NULL, 'active', '2024-12-20 14:25:45', '2024-12-31 15:30:53', 'Quentin Tarantino - Master of Modern Cinema', 'Dive into the unique style of Quentin Tarantino, renowned for his films like Pulp Fiction, Kill Bill, and Once Upon a Time in Hollywood.', '{\"time\":1735633821444,\"blocks\":[{\"id\":\"BviysCTSfD\",\"type\":\"paragraph\",\"data\":{\"text\":\"Quentin Tarantino, born on March 27, 1963, in Knoxville, Tennessee, USA, is a celebrated director, screenwriter, and producer. Known for his distinctive storytelling, sharp dialogue, and stylized violence, Tarantino has created iconic films such as Reservoir Dogs, Pulp Fiction, Kill Bill Volumes 1 &amp; 2, Inglourious Basterds, Django Unchained, and Once Upon a Time in Hollywood. He has received numerous awards, including Academy Awards for Best Original Screenplay.\"}}],\"version\":\"2.30.7\"}', 'quentin-tarantino-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Quentin Tarantino', '27/03/1963', 'Knoxville, Tennessee, USA', '', 'men', 175, '70', '[{\"url_social\": \"https://twitter.com/QTarantino\", \"name_social\": \"Twitter\"}]'),
(4, 'Martin Scorsese', 'martin-scorsese', NULL, 'active', '2024-12-21 09:35:50', '2024-12-31 15:30:43', 'Martin Scorsese - Iconic American Director', 'Learn about Martin Scorsese\'s profound impact on cinema through films like Goodfellas, Taxi Driver, and The Irishman.', '{\"time\":1735633821292,\"blocks\":[{\"id\":\"CviysCTSfE\",\"type\":\"paragraph\",\"data\":{\"text\":\"Martin Scorsese, born on November 17, 1942, in Queens, New York City, USA, is an acclaimed director, producer, and screenwriter. He is renowned for his contributions to the crime genre and his deep exploration of themes like identity, redemption, and the human condition. Scorsese has directed masterpieces such as Mean Streets, Taxi Driver, Raging Bull, Goodfellas, The Departed, and The Irishman. He has received numerous accolades, including multiple Academy Awards and a Golden Globe Award.\"}}],\"version\":\"2.30.7\"}', 'martin-scorsese-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Martin Scorsese', '17/11/1942', 'Queens, New York City, USA', '', 'men', 175, '70', '[{\"url_social\": \"https://twitter.com/Scorsese\", \"name_social\": \"Twitter\"}]'),
(5, 'James Cameron', 'james-cameron', NULL, 'active', '2024-12-22 11:45:55', '2024-12-31 15:30:29', 'James Cameron - Pioneering Filmmaker', 'Explore James Cameron\'s groundbreaking work in films like Titanic, Avatar, and The Terminator series.', '{\"time\":1735633821242,\"blocks\":[{\"id\":\"DviysCTSfF\",\"type\":\"paragraph\",\"data\":{\"text\":\"James Cameron, born on August 16, 1954, in Kapuskasing, Ontario, Canada, is a visionary director, producer, and screenwriter. He is celebrated for his innovations in visual effects and deep-sea exploration, as well as his creation of some of the highest-grossing films of all time, including The Terminator series, Aliens, Titanic, and Avatar. Cameron has received numerous awards, including Academy Awards for Best Picture and Best Director.\"}}],\"version\":\"2.30.7\"}', 'james-cameron-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'James Cameron', '16/08/1954', 'Kapuskasing, Ontario, Canada', '', 'men', 185, '80', '[{\"url_social\": \"https://twitter.com/jamescameron\", \"name_social\": \"Twitter\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_director_rel`
--

CREATE TABLE `fast_posts_director_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_director_rel`
--

INSERT INTO `fast_posts_director_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(19, NULL, 1, 'all', 'movie', 1734524779347, 1, '2024-12-19 15:39:50', '2024-12-19 15:39:50'),
(20, NULL, 2, 'all', 'movie', 1734524779347, 1, '2024-12-19 15:39:50', '2024-12-19 15:39:50'),
(23, NULL, 5, 'all', 'movie', 1735633754761, 1, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(24, NULL, 5, 'all', 'movie', 1735633754761, 20, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(25, NULL, 5, 'all', 'movie', 1735633754761, 21, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(26, NULL, 5, 'all', 'movie', 1735633754761, 22, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(27, NULL, 5, 'all', 'movie', 1735633754761, 23, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(28, NULL, 5, 'all', 'movie', 1735633754761, 24, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(29, NULL, 5, 'all', 'movie', 1735633754761, 25, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(30, NULL, 5, 'all', 'movie', 1735633754761, 26, '2024-12-31 15:30:29', '2024-12-31 15:30:29'),
(31, NULL, 4, 'all', 'movie', 1735633754761, 1, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(32, NULL, 4, 'all', 'movie', 1735633754761, 20, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(33, NULL, 4, 'all', 'movie', 1735633754761, 21, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(34, NULL, 4, 'all', 'movie', 1735633754761, 22, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(35, NULL, 4, 'all', 'movie', 1735633754761, 23, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(36, NULL, 4, 'all', 'movie', 1735633754761, 24, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(37, NULL, 4, 'all', 'movie', 1735633754761, 25, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(38, NULL, 4, 'all', 'movie', 1735633754761, 26, '2024-12-31 15:30:43', '2024-12-31 15:30:43'),
(39, NULL, 3, 'all', 'movie', 1735633754761, 1, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(40, NULL, 3, 'all', 'movie', 1735633754761, 20, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(41, NULL, 3, 'all', 'movie', 1735633754761, 21, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(42, NULL, 3, 'all', 'movie', 1735633754761, 22, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(43, NULL, 3, 'all', 'movie', 1735633754761, 23, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(44, NULL, 3, 'all', 'movie', 1735633754761, 24, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(45, NULL, 3, 'all', 'movie', 1735633754761, 25, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(46, NULL, 3, 'all', 'movie', 1735633754761, 26, '2024-12-31 15:30:53', '2024-12-31 15:30:53'),
(47, NULL, 2, 'all', 'movie', 1735633754761, 1, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(48, NULL, 2, 'all', 'movie', 1735633754761, 20, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(49, NULL, 2, 'all', 'movie', 1735633754761, 21, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(50, NULL, 2, 'all', 'movie', 1735633754761, 22, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(51, NULL, 2, 'all', 'movie', 1735633754761, 23, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(52, NULL, 2, 'all', 'movie', 1735633754761, 24, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(53, NULL, 2, 'all', 'movie', 1735633754761, 25, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(54, NULL, 2, 'all', 'movie', 1735633754761, 26, '2024-12-31 15:31:02', '2024-12-31 15:31:02'),
(55, NULL, 1, 'all', 'movie', 1735633754761, 1, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(56, NULL, 1, 'all', 'movie', 1735633754761, 20, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(57, NULL, 1, 'all', 'movie', 1735633754761, 21, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(58, NULL, 1, 'all', 'movie', 1735633754761, 22, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(59, NULL, 1, 'all', 'movie', 1735633754761, 23, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(60, NULL, 1, 'all', 'movie', 1735633754761, 24, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(61, NULL, 1, 'all', 'movie', 1735633754761, 25, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(62, NULL, 1, 'all', 'movie', 1735633754761, 26, '2024-12-31 15:31:11', '2024-12-31 15:31:11'),
(63, NULL, 3, 'all', 'movie', 1735633754761, 4, '2024-12-31 15:30:53', '2024-12-31 15:30:53');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_director_vi`
--

CREATE TABLE `fast_posts_director_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `original_name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birth_place` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `death_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `height` int DEFAULT '0',
  `weight` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `social_media` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_director_vi`
--

INSERT INTO `fast_posts_director_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `original_name`, `birth_date`, `birth_place`, `death_date`, `gender`, `height`, `weight`, `social_media`) VALUES
(1, 'Christopher Edward Nolan', 'christopher-edward-nolan', NULL, 'active', '2024-12-18 20:06:15', '2024-12-31 15:31:53', 'Christopher Edward Nolan - Profile of a Visionary Director', 'Discover Christopher Edward Nolan, the iconic director known for his work on films like Inception, The Dark Knight Trilogy, and Interstellar.', '{\"time\":1735633886361,\"blocks\":[{\"id\":\"YviysCTSfB\",\"type\":\"paragraph\",\"data\":{\"text\":\"Christopher Edward Nolan, sinh ngày 30/07/1970 tại London, Anh, là một đạo diễn, nhà biên kịch và nhà sản xuất phim người Anh. Ông nổi tiếng với các bộ phim như Mắt Biếc, Inception, The Dark Knight và Dunkirk. Nolan được biết đến với phong cách kể chuyện phức tạp và các yếu tố tâm lý sâu sắc trong phim của mình.\"}}],\"version\":\"2.30.7\"}', 'christopher-nolan-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Christopher Edward Nolan', '30/07/1970', 'London, England', '', 'men', 180, '75', '[{\"url_social\": \"https://twitter.com/chrisnolan\", \"name_social\": \"Twitter\"}]'),
(2, 'Steven Spielberg', 'steven-spielberg', NULL, 'active', '2024-12-19 10:15:30', '2024-12-31 13:45:20', 'Steven Spielberg - Legendary Filmmaker', 'Explore the illustrious career of Steven Spielberg, the mastermind behind blockbuster hits like Jurassic Park, Schindler\'s List, and E.T.', '{\"time\":1735623400895,\"blocks\":[{\"id\":\"AviysCTSfC\",\"type\":\"paragraph\",\"data\":{\"text\":\"Steven Spielberg, sinh ngày 18/12/1946 tại Cincinnati, Ohio, USA, là một đạo diễn, nhà sản xuất và nhà biên kịch phim người Mỹ. Ông được coi là một trong những đạo diễn vĩ đại nhất trong lịch sử điện ảnh, với các tác phẩm nổi tiếng như Jaws, E.T. the Extra-Terrestrial, và Schindler\'s List.\"}}],\"version\":\"2.30.7\"}', 'steven-spielberg-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Steven Spielberg', '18/12/1946', 'Cincinnati, Ohio, USA', '', 'male', 180, '75', '[{\"url_social\": \"https://twitter.com/Spielberg\", \"name_social\": \"Twitter\"}]'),
(3, 'Quentin Tarantino', 'quentin-tarantino', NULL, 'active', '2024-12-20 14:25:45', '2024-12-31 15:31:45', 'Quentin Tarantino - Master of Modern Cinema', 'Dive into the unique style of Quentin Tarantino, renowned for his films like Pulp Fiction, Kill Bill, and Once Upon a Time in Hollywood.', '{\"time\":1735633884411,\"blocks\":[{\"id\":\"BviysCTSfD\",\"type\":\"paragraph\",\"data\":{\"text\":\"Quentin Tarantino, sinh ngày 27/03/1963 tại Knoxville, Tennessee, USA, là một đạo diễn, nhà biên kịch và nhà sản xuất phim người Mỹ. Ông nổi tiếng với phong cách kể chuyện độc đáo, ngôn ngữ sắc bén và các yếu tố bạo lực trong các bộ phim như Reservoir Dogs, Pulp Fiction và Django Unchained.\"}}],\"version\":\"2.30.7\"}', 'quentin-tarantino-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Quentin Tarantino', '27/03/1963', 'Knoxville, Tennessee, USA', '', 'men', 175, '70', '[{\"url_social\": \"https://twitter.com/QTarantino\", \"name_social\": \"Twitter\"}]'),
(4, 'Martin Scorsese', 'martin-scorsese', NULL, 'active', '2024-12-21 09:35:50', '2024-12-31 15:31:37', 'Martin Scorsese - Iconic American Director', 'Learn about Martin Scorsese\'s profound impact on cinema through films like Goodfellas, Taxi Driver, and The Irishman.', '{\"time\":1735633882787,\"blocks\":[{\"id\":\"CviysCTSfE\",\"type\":\"paragraph\",\"data\":{\"text\":\"Martin Scorsese, sinh ngày 17/11/1942 tại Queens, New York City, USA, là một đạo diễn, nhà sản xuất và nhà biên kịch phim người Mỹ. Ông được biết đến với các tác phẩm như Mean Streets, Taxi Driver, Raging Bull, và The Departed, đóng góp to lớn vào thể loại phim tội phạm và phân tích xã hội.\"}}],\"version\":\"2.30.7\"}', 'martin-scorsese-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'Martin Scorsese', '17/11/1942', 'Queens, New York City, USA', '', 'men', 175, '70', '[{\"url_social\": \"https://twitter.com/Scorsese\", \"name_social\": \"Twitter\"}]'),
(5, 'James Cameron', 'james-cameron', NULL, 'active', '2024-12-22 11:45:55', '2024-12-31 16:15:50', 'James Cameron - Pioneering Filmmaker', 'Explore James Cameron\'s groundbreaking work in films like Titanic, Avatar, and The Terminator series.', '{\"time\":1735623700898,\"blocks\":[{\"id\":\"DviysCTSfF\",\"type\":\"paragraph\",\"data\":{\"text\":\"James Cameron, sinh ngày 16/08/1954 tại Kapuskasing, Ontario, Canada, là một đạo diễn, nhà sản xuất và nhà biên kịch phim người Canada. Ông nổi tiếng với các bộ phim khoa học viễn tưởng và bom tấn như The Terminator, Titanic, và Avatar, đã đạt được thành công lớn về mặt thương mại và công chúng.\"}}],\"version\":\"2.30.7\"}', 'james-cameron-thumbnail.jpg', 'admin', 0, 0, 0, 0, 0, 'James Cameron', '16/08/1954', 'Kapuskasing, Ontario, Canada', '', 'male', 185, '80', '[{\"url_social\": \"https://twitter.com/jamescameron\", \"name_social\": \"Twitter\"}]');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_finder`
--

CREATE TABLE `fast_posts_finder` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` enum('active','inactive') COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `feature` text COLLATE utf8mb4_unicode_ci,
  `user_id` int NOT NULL DEFAULT '0',
  `phone` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` date DEFAULT NULL,
  `gender` text COLLATE utf8mb4_unicode_ci,
  `about_me` text COLLATE utf8mb4_unicode_ci,
  `coin` int DEFAULT '0',
  `package_name` text COLLATE utf8mb4_unicode_ci,
  `package_exp` datetime DEFAULT NULL,
  `online` text COLLATE utf8mb4_unicode_ci,
  `galleries` text COLLATE utf8mb4_unicode_ci,
  `job` text COLLATE utf8mb4_unicode_ci,
  `favorites` text COLLATE utf8mb4_unicode_ci,
  `display` text COLLATE utf8mb4_unicode_ci,
  `location` point DEFAULT NULL,
  `facebook` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `zalo` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `instagram` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_finder`
--

INSERT INTO `fast_posts_finder` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `feature`, `user_id`, `phone`, `birthday`, `gender`, `about_me`, `coin`, `package_name`, `package_exp`, `online`, `galleries`, `job`, `favorites`, `display`, `location`, `facebook`, `zalo`, `instagram`) VALUES
(1, 'FDR XOI', 'fdrxoi', NULL, 'active', '2025-01-19 22:03:25', '2025-01-25 15:29:48', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"}', 1, '8468686868', '2000-01-29', 'male', '{\"time\":1737793786874,\"blocks\":[],\"version\":\"2.30.7\"}', 999, 'membership', NULL, '1', '[{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\"},{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\"},{\"id\":185,\"name\":\"feature-3.jpg\",\"path\":\"2024/12/31/feature-3.jpg\"}]', '2', '[\"1\",\"3\",\"4\",\"5\",\"11\",\"12\"]', '1', 0x000000000101000000000000000000f03f000000000000f03f, '', '', ''),
(2, '123', '123', NULL, 'active', '2025-01-20 22:41:04', '2025-01-25 15:36:55', NULL, 26, NULL, '2000-01-01', 'male', '{\"time\":1737794213399,\"blocks\":[],\"version\":\"2.30.7\"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', 0x0000000001010000009a9999999999f13f9a9999999999f13f, NULL, NULL, NULL),
(3, '123', '123-2', NULL, 'active', '2025-01-20 22:43:59', '2025-01-25 15:36:58', NULL, 1, NULL, '2000-01-01', 'male', '{\"time\":1737794217701,\"blocks\":[],\"version\":\"2.30.7\"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', 0x000000000101000000333333333333f33f9a9999999999f13f, NULL, NULL, NULL),
(4, '123', '3122', NULL, 'active', '2025-01-20 22:46:18', '2025-01-25 15:29:30', NULL, 27, NULL, '2000-01-01', 'male', '{\"time\":1737793769670,\"blocks\":[],\"version\":\"2.30.7\"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', 0x000000000101000000cdccccccccccf43f9a9999999999f13f, NULL, NULL, NULL),
(5, '123', '321', NULL, 'active', '2025-01-20 22:54:07', '2025-01-25 15:36:43', NULL, 1, '12', '2000-02-22', 'male', '{\"time\":1737794177733,\"blocks\":[],\"version\":\"2.30.7\"}', NULL, NULL, NULL, '1', NULL, NULL, NULL, '1', 0x0000000001010000009a9999999999f13f666666666666f63f, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_finder_rel`
--

CREATE TABLE `fast_posts_finder_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_game_cn`
--

CREATE TABLE `fast_posts_game_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `iframe_game` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_game_cn`
--

INSERT INTO `fast_posts_game_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `iframe_game`, `description`, `feature`, `release_date`) VALUES
(4, '使命召唤手游', 'call-of-duty-mobile-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '使命召唤手游 - 在移动设备上体验战争', '使命召唤手游在移动设备上提供最逼真的战争体验，具有高质量的图形和多样的游戏模式。', '{\"time\":1735631399875,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是使命召唤手游？\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"使命召唤手游是一款为移动设备开发的第一人称射击游戏（FPS），由天美工作室开发，动视发布。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', '使命召唤手游在移动设备上提供最逼真的战争体验，具有高质量的图形和多样的游戏模式。', '{\"id\":183,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(5, 'PUBG Mobile', 'pubg-mobile-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'PUBG Mobile - 在移动设备上体验战场', 'PUBG Mobile在移动设备上提供最逼真的战场体验，拥有多种游戏模式和多样的地图。', '{\"time\":1735631396556,\"blocks\":[{\"id\":\"abc123\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是PUBG Mobile？\",\"level\":3}},{\"id\":\"def456\",\"type\":\"paragraph\",\"data\":{\"text\":\"PUBG Mobile是一款移动设备上的大逃杀游戏，由PUBG公司开发，让玩家参与激动人心的生存比赛。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'PUBG Mobile在移动设备上提供最逼真的战场体验，拥有多种游戏模式和多样的地图。', '{\"id\":184,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(6, 'Mobile Legends: Bang Bang', 'mobile-legends-bang-bang-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Mobile Legends: Bang Bang - 移动设备上的终极MOBA', 'Mobile Legends: Bang Bang在移动设备上提供激烈的战略战斗，拥有多种英雄和多样的技能。', '{\"time\":1735631395257,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Mobile Legends: Bang Bang？\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mobile Legends: Bang Bang是一款由Moonton开发的移动多人在线战术竞技游戏（MOBA），玩家控制英雄击败对方团队。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Mobile Legends: Bang Bang在移动设备上提供激烈的战略战斗，拥有多种英雄和多样的技能。', '{\"id\":185,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(7, 'Genshin Impact', 'genshin-impact-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Genshin Impact - 探索迷人的开放世界', 'Genshin Impact提供丰富的开放世界体验，拥有令人惊叹的图形和多样的战斗系统。', '{\"time\":1735631393597,\"blocks\":[{\"id\":\"mno345\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Genshin Impact？\",\"level\":3}},{\"id\":\"pqr678\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genshin Impact是一款由miHoYo开发的开放世界动作角色扮演游戏，玩家在游戏中探索提瓦特大陆，并收集具有独特能力的角色。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Genshin Impact提供丰富的开放世界体验，拥有令人惊叹的图形和多样的战斗系统。', '{\"id\":186,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(8, 'Among Us', 'among-us-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Among Us - 吸引人的社交推理游戏', 'Among Us是一款在线社交游戏，玩家必须在船员中识别冒名顶替者。', '{\"time\":1735631389279,\"blocks\":[{\"id\":\"stu901\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Among Us？\",\"level\":3}},{\"id\":\"vwx234\",\"type\":\"paragraph\",\"data\":{\"text\":\"Among Us是一款由InnerSloth开发的在线社交游戏，玩家在太空船上共同工作，同时试图识别船员中的冒名顶替者。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Among Us是一款在线社交游戏，玩家必须在船员中识别冒名顶替者。', '{\"id\":187,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(9, 'Minecraft: Pocket Edition', 'minecraft-pocket-edition-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Minecraft: Pocket Edition - 在移动设备上无限创意', 'Minecraft: Pocket Edition 允许玩家在移动设备上构建和探索广阔的开放世界。', '{\"time\":1735631387770,\"blocks\":[{\"id\":\"yz1234\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Minecraft: Pocket Edition？\",\"level\":3}},{\"id\":\"abc567\",\"type\":\"paragraph\",\"data\":{\"text\":\"Minecraft: Pocket Edition是流行的沙盒游戏Minecraft的移动版本，允许玩家在广阔的体素世界中构建、探索和生存。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Minecraft: Pocket Edition 允许玩家在移动设备上构建和探索广阔的开放世界。', '{\"id\":188,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(10, 'Free Fire', 'free-fire-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Free Fire - 移动设备上的激动人心的生存战斗', 'Free Fire在移动设备上提供激动人心的生存战斗体验，拥有多种游戏模式和多样的角色。', '{\"time\":1735631385112,\"blocks\":[{\"id\":\"free1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Free Fire？\",\"level\":3}},{\"id\":\"free2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Free Fire是由Garena开发的移动生存游戏，玩家参与50人对战，成为最后的幸存者。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Free Fire在移动设备上提供激动人心的生存战斗体验，拥有多种游戏模式和多样的角色。', '{\"id\":189,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(11, 'Clash of Clans', 'clash-of-clans-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Clash of Clans - 在移动设备上建造与战斗', 'Clash of Clans 允许玩家建造村庄，训练军队并参与战略战斗。', '{\"time\":1735631493309,\"blocks\":[{\"id\":\"clash1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Clash of Clans？\",\"level\":3}},{\"id\":\"clash2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash of Clans 是由Supercell开发的一款实时战略移动游戏，玩家在游戏中建造村庄、收集资源并与其他村庄进行战斗。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash of Clans 允许玩家建造村庄，训练军队并参与战略战斗。', '{\"id\":190,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(12, 'Roblox', 'roblox-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Roblox - 创建与探索虚拟世界', 'Roblox允许玩家创建自己的游戏并探索由社区创建的数百万虚拟世界。', '{\"time\":1735631381296,\"blocks\":[{\"id\":\"roblox1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Roblox？\",\"level\":3}},{\"id\":\"roblox2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Roblox是一个在线游戏平台，玩家可以创建并玩由其他用户创建的游戏。由Roblox公司开发，它提供了一个无限的创意环境。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Roblox允许玩家创建自己的游戏并探索由社区创建的数百万虚拟世界。', '{\"id\":191,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(13, 'Pokémon GO', 'pokemon-go-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Pokémon GO - 在移动设备上探索与捕捉宝可梦', 'Pokémon GO 提供增强现实体验，玩家可以探索现实世界来捕捉和收集宝可梦。', '{\"time\":1735631379974,\"blocks\":[{\"id\":\"poke1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Pokémon GO？\",\"level\":3}},{\"id\":\"poke2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pokémon GO 是由Niantic开发的增强现实移动游戏，允许玩家探索现实世界来捕捉和收集宝可梦。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Pokémon GO 提供增强现实体验，玩家可以探索现实世界来捕捉和收集宝可梦。', '{\"id\":192,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(14, 'Fortnite', 'fortnite-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Fortnite - 移动设备上的建造与生存战斗 royale', 'Fortnite 提供独特的 battle royale 体验，融合了建造策略元素和在充满挑战的环境中生存。', '{\"time\":1735631377947,\"blocks\":[{\"id\":\"fort1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Fortnite？\",\"level\":3}},{\"id\":\"fort2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fortnite 是由Epic Games开发的一款移动battle royale游戏，玩家在开放的环境中竞争成为最后的幸存者，同时可以建造结构。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Fortnite 提供独特的 battle royale 体验，融合了建造策略元素和在充满挑战的环境中生存。', '{\"id\":193,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(15, 'Candy Crush Saga', 'candy-crush-saga-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Candy Crush Saga - 移动设备上的甜蜜解谜挑战', 'Candy Crush Saga 提供引人入胜的解谜挑战，拥有丰富多彩的图形和多样化的关卡。', '{\"time\":1735631376820,\"blocks\":[{\"id\":\"candy1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Candy Crush Saga？\",\"level\":3}},{\"id\":\"candy2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Candy Crush Saga 是由King开发的一款移动解谜游戏，玩家需要匹配相同颜色的糖果以通过具有挑战性的关卡。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Candy Crush Saga 提供引人入胜的解谜挑战，拥有丰富多彩的图形和多样化的关卡。', '{\"id\":194,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(16, 'Clash Royale', 'clash-royale-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Clash Royale - 移动设备上的实时战略', 'Clash Royale 结合了卡牌元素和实时战略，玩家在激动人心的战斗中对决。', '{\"time\":1735631375388,\"blocks\":[{\"id\":\"royale1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Clash Royale？\",\"level\":3}},{\"id\":\"royale2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash Royale 是由Supercell开发的一款实时战略移动游戏，玩家使用卡牌部署军队并在激动人心的比赛中与对手战斗。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash Royale 结合了卡牌元素和实时战略，玩家在激动人心的战斗中对决。', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(17, 'Subway Surfers', 'subway-surfers-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Subway Surfers - 地铁中的无尽奔跑', 'Subway Surfers 是一款移动设备上的无尽奔跑游戏，玩家必须躲避障碍并收集硬币。', '{\"time\":1735631373840,\"blocks\":[{\"id\":\"subway1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Subway Surfers？\",\"level\":3}},{\"id\":\"subway2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Subway Surfers 是由Kiloo开发的一款移动无尽奔跑游戏，玩家控制角色在地铁轨道上逃离警察，躲避障碍并收集硬币。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Subway Surfers 是一款移动设备上的无尽奔跑游戏，玩家必须躲避障碍并收集硬币。', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(18, 'Apex Legends Mobile', 'apex-legends-mobile-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Apex Legends Mobile - 移动设备上的战斗 royale', 'Apex Legends Mobile 提供高质量的战斗 royale 体验，拥有独特的角色和多样的策略。', '{\"time\":1735631371505,\"blocks\":[{\"id\":\"apex1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是Apex Legends Mobile？\",\"level\":3}},{\"id\":\"apex2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Apex Legends Mobile 是著名战斗 royale 游戏 Apex Legends 的移动版本，由Respawn Entertainment开发，玩家以团队形式竞争，争夺成为最后的幸存者。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Apex Legends Mobile 提供高质量的战斗 royale 体验，拥有独特的角色和多样的策略。', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(19, 'League of Legends: Wild Rift', 'league-of-legends-wild-rift-cn', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'League of Legends: Wild Rift - 移动设备上的MOBA', 'League of Legends: Wild Rift 在移动设备上提供高质量的MOBA体验，具有快节奏的游戏玩法和多样化的英雄。', '{\"time\":1735631370230,\"blocks\":[{\"id\":\"lol1\",\"type\":\"header\",\"data\":{\"text\":\"I. 什么是League of Legends: Wild Rift？\",\"level\":3}},{\"id\":\"lol2\",\"type\":\"paragraph\",\"data\":{\"text\":\"League of Legends: Wild Rift 是著名MOBA游戏League of Legends 的移动版本，由Riot Games开发，玩家控制英雄在快节奏和竞争激烈的比赛中击败对手团队。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'League of Legends: Wild Rift 在移动设备上提供高质量的MOBA体验，具有快节奏的游戏玩法和多样化的英雄。', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_game_en`
--

CREATE TABLE `fast_posts_game_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `iframe_game` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_game_en`
--

INSERT INTO `fast_posts_game_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `iframe_game`, `description`, `feature`, `release_date`) VALUES
(4, 'Call of Duty: Mobile', 'call-of-duty-mobile-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Call of Duty: Mobile - Experience Warfare on Mobile', 'Call of Duty: Mobile delivers the most realistic warfare experience on mobile with high-quality graphics and diverse game modes.', '{\"time\":1735634355040,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Call of Duty: Mobile?\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"Call of Duty: Mobile is a first-person shooter (FPS) game for mobile devices, developed by TiMi Studios and published by Activision.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Call of Duty: Mobile delivers the most realistic warfare experience on mobile with high-quality graphics and diverse game modes.', '{\"id\":183,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(5, 'PUBG Mobile', 'pubg-mobile-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'PUBG Mobile - Experience the Battlefield on Mobile', 'PUBG Mobile offers the most realistic battlefield experience on mobile with various game modes and diverse maps.', '{\"time\":1735631395640,\"blocks\":[{\"id\":\"abc123\",\"type\":\"header\",\"data\":{\"text\":\"I. What is PUBG Mobile?\",\"level\":3}},{\"id\":\"def456\",\"type\":\"paragraph\",\"data\":{\"text\":\"PUBG Mobile is a battle royale game on mobile, developed by PUBG Corporation, allowing players to engage in exciting survival matches.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'PUBG Mobile offers the most realistic battlefield experience on mobile with various game modes and diverse maps.', '{\"id\":184,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(6, 'Mobile Legends: Bang Bang', 'mobile-legends-bang-bang-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Mobile Legends: Bang Bang - The Ultimate MOBA on Mobile', 'Mobile Legends: Bang Bang delivers intense strategic battles on mobile with a variety of heroes and diverse skills.', '{\"time\":1735631394129,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Mobile Legends: Bang Bang?\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mobile Legends: Bang Bang is a mobile Multiplayer Online Battle Arena (MOBA) game developed by Moonton, where players control heroes to defeat the opposing team.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Mobile Legends: Bang Bang delivers intense strategic battles on mobile with a variety of heroes and diverse skills.', '{\"id\":185,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(7, 'Genshin Impact', 'genshin-impact-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Genshin Impact - Explore the Enchanting Open World', 'Genshin Impact offers a rich open-world experience with stunning graphics and diverse combat systems.', '{\"time\":1735631389935,\"blocks\":[{\"id\":\"mno345\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Genshin Impact?\",\"level\":3}},{\"id\":\"pqr678\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genshin Impact is an open-world action role-playing game developed by miHoYo, where players explore Teyvat and collect characters with unique abilities.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Genshin Impact offers a rich open-world experience with stunning graphics and diverse combat systems.', '{\"id\":186,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(8, 'Among Us', 'among-us-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Among Us - Engaging Social Deduction Game', 'Among Us is an online social game where players must identify impostors within their crew.', '{\"time\":1735631388516,\"blocks\":[{\"id\":\"stu901\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Among Us?\",\"level\":3}},{\"id\":\"vwx234\",\"type\":\"paragraph\",\"data\":{\"text\":\"Among Us is an online social game developed by InnerSloth, where players work together on a spaceship while trying to identify the impostors among the crew.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Among Us is an online social game where players must identify impostors within their crew.', '{\"id\":187,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(9, 'Minecraft: Pocket Edition', 'minecraft-pocket-edition-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Minecraft: Pocket Edition - Unlimited Creativity on Mobile', 'Minecraft: Pocket Edition allows players to build and explore expansive open worlds on mobile devices.', '{\"time\":1735631386946,\"blocks\":[{\"id\":\"yz1234\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Minecraft: Pocket Edition?\",\"level\":3}},{\"id\":\"abc567\",\"type\":\"paragraph\",\"data\":{\"text\":\"Minecraft: Pocket Edition is the mobile version of the popular sandbox game Minecraft, allowing players to build, explore, and survive in expansive voxel worlds.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Minecraft: Pocket Edition allows players to build and explore expansive open worlds on mobile devices.', '{\"id\":188,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(10, 'Free Fire', 'free-fire-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Free Fire - Thrilling Survival Battles on Mobile', 'Free Fire offers an intense survival battle experience on mobile with various game modes and diverse characters.', '{\"time\":1735631384226,\"blocks\":[{\"id\":\"free1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Free Fire?\",\"level\":3}},{\"id\":\"free2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Free Fire is a mobile survival game developed by Garena, where players participate in 50-player matches to become the last survivor.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Free Fire offers an intense survival battle experience on mobile with various game modes and diverse characters.', '{\"id\":189,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(11, 'Clash of Clans', 'clash-of-clans-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Clash of Clans - Build and Battle on Mobile', 'Clash of Clans allows players to build their village, train troops, and engage in strategic battles.', '{\"time\":1735631381915,\"blocks\":[{\"id\":\"clash1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Clash of Clans?\",\"level\":3}},{\"id\":\"clash2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash of Clans is a real-time strategy game on mobile developed by Supercell, where players build their village, gather resources, and battle against other villages.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash of Clans allows players to build their village, train troops, and engage in strategic battles.', '{\"id\":190,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(12, 'Roblox', 'roblox-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Roblox - Create and Explore Virtual Worlds', 'Roblox allows players to create their own games and explore millions of user-generated virtual worlds.', '{\"time\":1735631380436,\"blocks\":[{\"id\":\"roblox1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Roblox?\",\"level\":3}},{\"id\":\"roblox2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Roblox is an online gaming platform where players can create and play games created by other users. Developed by Roblox Corporation, it provides an unlimited creative environment.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Roblox allows players to create their own games and explore millions of user-generated virtual worlds.', '{\"id\":191,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(13, 'Pokémon GO', 'pokemon-go-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Pokémon GO - Explore and Catch Pokémon on Mobile', 'Pokémon GO offers an augmented reality experience where players can explore the real world to catch and collect Pokémon.', '{\"time\":1735631378633,\"blocks\":[{\"id\":\"poke1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Pokémon GO?\",\"level\":3}},{\"id\":\"poke2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pokémon GO is an augmented reality mobile game developed by Niantic, allowing players to explore the real world to catch and collect Pokémon.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Pokémon GO offers an augmented reality experience where players can explore the real world to catch and collect Pokémon.', '{\"id\":192,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(14, 'Fortnite', 'fortnite-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Fortnite - Building and Survival Battle Royale on Mobile', 'Fortnite offers a unique battle royale experience with building strategy elements and survival in a challenging environment.', '{\"time\":1735631377150,\"blocks\":[{\"id\":\"fort1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Fortnite?\",\"level\":3}},{\"id\":\"fort2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fortnite is a mobile battle royale game developed by Epic Games, where players compete to be the last survivor in an open environment with building structures.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Fortnite offers a unique battle royale experience with building strategy elements and survival in a challenging environment.', '{\"id\":193,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(15, 'Candy Crush Saga', 'candy-crush-saga-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Candy Crush Saga - Sweet Puzzle Challenges on Mobile', 'Candy Crush Saga offers engaging puzzle challenges with colorful graphics and diverse levels.', '{\"time\":1735631375839,\"blocks\":[{\"id\":\"candy1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Candy Crush Saga?\",\"level\":3}},{\"id\":\"candy2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Candy Crush Saga is a mobile puzzle game developed by King, where players must match candies of the same color to overcome challenging levels.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Candy Crush Saga offers engaging puzzle challenges with colorful graphics and diverse levels.', '{\"id\":194,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(16, 'Clash Royale', 'clash-royale-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Clash Royale - Real-Time Strategy on Mobile', 'Clash Royale combines card elements and real-time strategy, where players face off in exciting battles.', '{\"time\":1735631374358,\"blocks\":[{\"id\":\"royale1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Clash Royale?\",\"level\":3}},{\"id\":\"royale2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash Royale is a real-time strategy mobile game developed by Supercell, where players use cards to deploy troops and battle opponents in exciting matches.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash Royale combines card elements and real-time strategy, where players face off in exciting battles.', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(17, 'Subway Surfers', 'subway-surfers-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Subway Surfers - Endless Running in the Subway', 'Subway Surfers is an endless runner mobile game where players must dodge obstacles and collect coins.', '{\"time\":1735631372704,\"blocks\":[{\"id\":\"subway1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Subway Surfers?\",\"level\":3}},{\"id\":\"subway2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Subway Surfers is an endless runner mobile game developed by Kiloo, where players control a character running from the police through subway tracks, dodging obstacles and collecting coins.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Subway Surfers is an endless runner mobile game where players must dodge obstacles and collect coins.', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(18, 'Apex Legends Mobile', 'apex-legends-mobile-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Apex Legends Mobile - Battle Royale on Mobile', 'Apex Legends Mobile offers a high-quality battle royale experience with unique characters and diverse strategies.', '{\"time\":1735631370779,\"blocks\":[{\"id\":\"apex1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is Apex Legends Mobile?\",\"level\":3}},{\"id\":\"apex2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Apex Legends Mobile is the mobile version of the popular battle royale game Apex Legends, developed by Respawn Entertainment, where players compete in teams to be the last ones standing.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Apex Legends Mobile offers a high-quality battle royale experience with unique characters and diverse strategies.', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(19, 'League of Legends: Wild Rift', 'league-of-legends-wild-rift-en', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'League of Legends: Wild Rift - MOBA on Mobile', 'League of Legends: Wild Rift delivers a high-quality MOBA experience on mobile with fast-paced gameplay and diverse champions.', '{\"time\":1735630413743,\"blocks\":[{\"id\":\"lol1\",\"type\":\"header\",\"data\":{\"text\":\"I. What is League of Legends: Wild Rift?\",\"level\":3}},{\"id\":\"lol2\",\"type\":\"paragraph\",\"data\":{\"text\":\"League of Legends: Wild Rift is the mobile version of the popular MOBA game League of Legends, developed by Riot Games, where players control champions to defeat the opposing team in fast-paced and competitive matches.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 0, 'https://www.jopi.com/embed.php?game=temple-run-2', 'League of Legends: Wild Rift delivers a high-quality MOBA experience on mobile with fast-paced gameplay and diverse champions.', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_game_rel`
--

CREATE TABLE `fast_posts_game_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_game_rel`
--

INSERT INTO `fast_posts_game_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(129, 1, 19, 'all', NULL, NULL, NULL, '2025-01-04 22:10:47', '2025-01-04 22:10:47'),
(130, 16, 19, 'all', NULL, NULL, NULL, '2025-01-04 22:10:47', '2025-01-04 22:10:47'),
(131, 7, 18, 'all', NULL, NULL, NULL, '2025-01-04 22:10:52', '2025-01-04 22:10:52'),
(132, 19, 18, 'all', NULL, NULL, NULL, '2025-01-04 22:10:52', '2025-01-04 22:10:52'),
(133, 28, 18, 'all', NULL, NULL, NULL, '2025-01-04 22:10:52', '2025-01-04 22:10:52'),
(134, 10, 17, 'all', NULL, NULL, NULL, '2025-01-04 22:10:55', '2025-01-04 22:10:55'),
(135, 19, 17, 'all', NULL, NULL, NULL, '2025-01-04 22:10:55', '2025-01-04 22:10:55'),
(136, 25, 17, 'all', NULL, NULL, NULL, '2025-01-04 22:10:55', '2025-01-04 22:10:55'),
(137, 10, 16, 'all', NULL, NULL, NULL, '2025-01-04 22:10:59', '2025-01-04 22:10:59'),
(138, 19, 16, 'all', NULL, NULL, NULL, '2025-01-04 22:10:59', '2025-01-04 22:10:59'),
(139, 28, 16, 'all', NULL, NULL, NULL, '2025-01-04 22:10:59', '2025-01-04 22:10:59'),
(140, 10, 15, 'all', NULL, NULL, NULL, '2025-01-04 22:11:02', '2025-01-04 22:11:02'),
(141, 16, 15, 'all', NULL, NULL, NULL, '2025-01-04 22:11:02', '2025-01-04 22:11:02'),
(142, 28, 15, 'all', NULL, NULL, NULL, '2025-01-04 22:11:02', '2025-01-04 22:11:02'),
(143, 13, 14, 'all', NULL, NULL, NULL, '2025-01-04 22:11:06', '2025-01-04 22:11:06'),
(144, 16, 14, 'all', NULL, NULL, NULL, '2025-01-04 22:11:06', '2025-01-04 22:11:06'),
(145, 28, 14, 'all', NULL, NULL, NULL, '2025-01-04 22:11:06', '2025-01-04 22:11:06'),
(146, 10, 13, 'all', NULL, NULL, NULL, '2025-01-04 22:11:10', '2025-01-04 22:11:10'),
(147, 16, 13, 'all', NULL, NULL, NULL, '2025-01-04 22:11:10', '2025-01-04 22:11:10'),
(148, 4, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:11:15', '2025-01-04 22:11:15'),
(149, 13, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:11:15', '2025-01-04 22:11:15'),
(150, 19, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:11:15', '2025-01-04 22:11:15'),
(151, 28, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:11:15', '2025-01-04 22:11:15'),
(152, 1, 11, 'all', NULL, NULL, NULL, '2025-01-04 22:11:19', '2025-01-04 22:11:19'),
(153, 4, 11, 'all', NULL, NULL, NULL, '2025-01-04 22:11:19', '2025-01-04 22:11:19'),
(154, 13, 11, 'all', NULL, NULL, NULL, '2025-01-04 22:11:19', '2025-01-04 22:11:19'),
(155, 1, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:11:25', '2025-01-04 22:11:25'),
(156, 4, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:11:25', '2025-01-04 22:11:25'),
(157, 19, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:11:25', '2025-01-04 22:11:25'),
(158, 28, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:11:25', '2025-01-04 22:11:25'),
(159, 1, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:11:29', '2025-01-04 22:11:29'),
(160, 4, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:11:29', '2025-01-04 22:11:29'),
(161, 7, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:11:29', '2025-01-04 22:11:29'),
(162, 13, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:11:29', '2025-01-04 22:11:29'),
(163, 271, 18, 'all', NULL, NULL, NULL, '2025-01-04 22:23:29', '2025-01-04 22:23:29'),
(164, 277, 18, 'all', NULL, NULL, NULL, '2025-01-04 22:23:29', '2025-01-04 22:23:29'),
(165, 274, 17, 'all', NULL, NULL, NULL, '2025-01-04 22:23:34', '2025-01-04 22:23:34'),
(166, 280, 17, 'all', NULL, NULL, NULL, '2025-01-04 22:23:34', '2025-01-04 22:23:34'),
(167, 277, 16, 'all', NULL, NULL, NULL, '2025-01-04 22:23:39', '2025-01-04 22:23:39'),
(168, 280, 16, 'all', NULL, NULL, NULL, '2025-01-04 22:23:39', '2025-01-04 22:23:39'),
(169, 271, 15, 'all', NULL, NULL, NULL, '2025-01-04 22:23:44', '2025-01-04 22:23:44'),
(170, 274, 15, 'all', NULL, NULL, NULL, '2025-01-04 22:23:44', '2025-01-04 22:23:44'),
(171, 274, 14, 'all', NULL, NULL, NULL, '2025-01-04 22:23:48', '2025-01-04 22:23:48'),
(172, 283, 14, 'all', NULL, NULL, NULL, '2025-01-04 22:23:48', '2025-01-04 22:23:48'),
(173, 274, 13, 'all', NULL, NULL, NULL, '2025-01-04 22:23:55', '2025-01-04 22:23:55'),
(174, 280, 13, 'all', NULL, NULL, NULL, '2025-01-04 22:23:55', '2025-01-04 22:23:55'),
(175, 280, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:24:00', '2025-01-04 22:24:00'),
(176, 283, 12, 'all', NULL, NULL, NULL, '2025-01-04 22:24:00', '2025-01-04 22:24:00'),
(177, 277, 11, 'all', NULL, NULL, NULL, '2025-01-04 22:24:04', '2025-01-04 22:24:04'),
(178, 283, 11, 'all', NULL, NULL, NULL, '2025-01-04 22:24:04', '2025-01-04 22:24:04'),
(179, 277, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:24:08', '2025-01-04 22:24:08'),
(180, 283, 10, 'all', NULL, NULL, NULL, '2025-01-04 22:24:08', '2025-01-04 22:24:08'),
(181, 274, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:24:11', '2025-01-04 22:24:11'),
(182, 280, 9, 'all', NULL, NULL, NULL, '2025-01-04 22:24:11', '2025-01-04 22:24:11'),
(183, 7, 8, 'all', NULL, NULL, NULL, '2025-01-04 22:24:17', '2025-01-04 22:24:17'),
(184, 13, 8, 'all', NULL, NULL, NULL, '2025-01-04 22:24:17', '2025-01-04 22:24:17'),
(185, 274, 8, 'all', NULL, NULL, NULL, '2025-01-04 22:24:17', '2025-01-04 22:24:17'),
(186, 277, 8, 'all', NULL, NULL, NULL, '2025-01-04 22:24:17', '2025-01-04 22:24:17'),
(187, 16, 7, 'all', NULL, NULL, NULL, '2025-01-04 22:24:27', '2025-01-04 22:24:27'),
(188, 28, 7, 'all', NULL, NULL, NULL, '2025-01-04 22:24:27', '2025-01-04 22:24:27'),
(189, 274, 7, 'all', NULL, NULL, NULL, '2025-01-04 22:24:27', '2025-01-04 22:24:27'),
(190, 283, 7, 'all', NULL, NULL, NULL, '2025-01-04 22:24:27', '2025-01-04 22:24:27'),
(191, 4, 6, 'all', NULL, NULL, NULL, '2025-01-04 22:24:32', '2025-01-04 22:24:32'),
(192, 16, 6, 'all', NULL, NULL, NULL, '2025-01-04 22:24:32', '2025-01-04 22:24:32'),
(193, 277, 6, 'all', NULL, NULL, NULL, '2025-01-04 22:24:32', '2025-01-04 22:24:32'),
(194, 283, 6, 'all', NULL, NULL, NULL, '2025-01-04 22:24:32', '2025-01-04 22:24:32'),
(195, 7, 5, 'all', NULL, NULL, NULL, '2025-01-04 22:24:39', '2025-01-04 22:24:39'),
(196, 16, 5, 'all', NULL, NULL, NULL, '2025-01-04 22:24:39', '2025-01-04 22:24:39'),
(197, 274, 5, 'all', NULL, NULL, NULL, '2025-01-04 22:24:39', '2025-01-04 22:24:39'),
(198, 13, 4, 'all', NULL, NULL, NULL, '2025-01-04 22:24:46', '2025-01-04 22:24:46'),
(199, 19, 4, 'all', NULL, NULL, NULL, '2025-01-04 22:24:46', '2025-01-04 22:24:46'),
(200, 280, 4, 'all', NULL, NULL, NULL, '2025-01-04 22:24:46', '2025-01-04 22:24:46'),
(201, 283, 4, 'all', NULL, NULL, NULL, '2025-01-04 22:24:46', '2025-01-04 22:24:46');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_game_vi`
--

CREATE TABLE `fast_posts_game_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `like_count` int DEFAULT '0',
  `iframe_game` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_game_vi`
--

INSERT INTO `fast_posts_game_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `like_count`, `iframe_game`, `description`, `feature`, `release_date`) VALUES
(4, 'Call of Duty: Mobile', 'call-of-duty-mobile', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:09', 'Call of Duty: Mobile - Trải nghiệm chiến tranh trên di động', 'Call of Duty: Mobile mang đến trải nghiệm chiến tranh chân thực nhất trên di động với đồ họa chất lượng cao và nhiều chế độ chơi đa dạng.', '{\"time\":1735631399452,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. Call of Duty: Mobile là gì?\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"Call of Duty: Mobile là một tựa game bắn súng góc nhìn thứ nhất (FPS) dành cho di động, phát triển bởi TiMi Studios và được phát hành bởi Activision.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 12, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Call of Duty: Mobile mang đến trải nghiệm chiến tranh chân thực nhất trên di động với đồ họa chất lượng cao và nhiều chế độ chơi đa dạng.', '{\"id\":183,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(5, 'PUBG Mobile', 'pubg-mobile', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:12', 'PUBG Mobile - Trải nghiệm chiến trường trên di động', 'PUBG Mobile mang đến trải nghiệm chiến trường chân thực nhất trên di động với nhiều chế độ chơi và bản đồ đa dạng.', '{\"time\":1735631396155,\"blocks\":[{\"id\":\"abc123\",\"type\":\"header\",\"data\":{\"text\":\"I. PUBG Mobile là gì?\",\"level\":3}},{\"id\":\"def456\",\"type\":\"paragraph\",\"data\":{\"text\":\"PUBG Mobile là một trò chơi battle royale trên di động, phát triển bởi PUBG Corporation và cho phép người chơi tham gia vào các trận đấu sinh tồn hấp dẫn.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'PUBG Mobile mang đến trải nghiệm chiến trường chân thực nhất trên di động với nhiều chế độ chơi và bản đồ đa dạng.', '{\"id\":184,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(6, 'Mobile Legends: Bang Bang', 'mobile-legends-bang-bang', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:14', 'Mobile Legends: Bang Bang - Trận chiến Liên Minh trên di động', 'Mobile Legends: Bang Bang mang đến những trận đấu chiến thuật gay cấn trên di động với nhiều tướng và kỹ năng đa dạng.', '{\"time\":1735631394820,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"header\",\"data\":{\"text\":\"I. Mobile Legends: Bang Bang là gì?\",\"level\":3}},{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mobile Legends: Bang Bang là một trò chơi đấu trường trực tuyến nhiều người chơi (MOBA) trên di động, phát triển bởi Moonton, nơi người chơi điều khiển các tướng để chiến thắng đội đối phương.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Mobile Legends: Bang Bang mang đến những trận đấu chiến thuật gay cấn trên di động với nhiều tướng và kỹ năng đa dạng.', '{\"id\":185,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(7, 'Genshin Impact', 'genshin-impact', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:17', 'Genshin Impact - Khám phá thế giới mở kỳ diệu', 'Genshin Impact mang đến trải nghiệm thế giới mở phong phú với đồ họa tuyệt đẹp và hệ thống chiến đấu đa dạng.', '{\"time\":1735631392726,\"blocks\":[{\"id\":\"mno345\",\"type\":\"header\",\"data\":{\"text\":\"I. Genshin Impact là gì?\",\"level\":3}},{\"id\":\"pqr678\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genshin Impact là một trò chơi hành động nhập vai thế giới mở, phát triển bởi miHoYo, nơi người chơi khám phá Teyvat và thu thập các nhân vật với khả năng độc đáo.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Genshin Impact mang đến trải nghiệm thế giới mở phong phú với đồ họa tuyệt đẹp và hệ thống chiến đấu đa dạng.', '{\"id\":186,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(8, 'Among Us', 'among-us', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:19', 'Among Us - Trò chơi xã hội hấp dẫn', 'Among Us là một trò chơi xã hội trực tuyến nơi người chơi phải phát hiện kẻ gian trong đội của mình.', '{\"time\":1735631388912,\"blocks\":[{\"id\":\"stu901\",\"type\":\"header\",\"data\":{\"text\":\"I. Among Us là gì?\",\"level\":3}},{\"id\":\"vwx234\",\"type\":\"paragraph\",\"data\":{\"text\":\"Among Us là một trò chơi xã hội trực tuyến phát triển bởi InnerSloth, nơi người chơi làm việc cùng nhau trên tàu không gian, trong khi cố gắng phát hiện ai là kẻ gian trong đội.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 12, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Among Us là một trò chơi xã hội trực tuyến nơi người chơi phải phát hiện kẻ gian trong đội của mình.', '{\"id\":187,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(9, 'Minecraft: Pocket Edition', 'minecraft-pocket-edition', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:20', 'Minecraft: Pocket Edition - Sáng tạo không giới hạn trên di động', 'Minecraft: Pocket Edition cho phép người chơi xây dựng và khám phá thế giới mở rộng lớn trên thiết bị di động.', '{\"time\":1735631387355,\"blocks\":[{\"id\":\"yz1234\",\"type\":\"header\",\"data\":{\"text\":\"I. Minecraft: Pocket Edition là gì?\",\"level\":3}},{\"id\":\"abc567\",\"type\":\"paragraph\",\"data\":{\"text\":\"Minecraft: Pocket Edition là phiên bản di động của trò chơi sandbox nổi tiếng Minecraft, cho phép người chơi xây dựng, khám phá và sinh tồn trong thế giới voxel mở rộng.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Minecraft: Pocket Edition cho phép người chơi xây dựng và khám phá thế giới mở rộng lớn trên thiết bị di động.', '{\"id\":188,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(10, 'Free Fire', 'free-fire', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:22', 'Free Fire - Trận chiến sinh tồn trên di động', 'Free Fire mang đến trải nghiệm chiến đấu sinh tồn kịch tính trên di động với nhiều chế độ chơi và nhân vật đa dạng.', '{\"time\":1735631384855,\"blocks\":[{\"id\":\"free1\",\"type\":\"header\",\"data\":{\"text\":\"I. Free Fire là gì?\",\"level\":3}},{\"id\":\"free2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Free Fire là một trò chơi sinh tồn trên di động, phát triển bởi Garena, nơi người chơi tham gia vào các trận đấu với 50 người để trở thành người sống sót cuối cùng.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Free Fire mang đến trải nghiệm chiến đấu sinh tồn kịch tính trên di động với nhiều chế độ chơi và nhân vật đa dạng.', '{\"id\":189,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(11, 'Clash of Clans', 'clash-of-clans', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:23', 'Clash of Clans - Xây dựng và chiến đấu trên di động', 'Clash of Clans cho phép người chơi xây dựng làng, huấn luyện quân đội và tham gia vào các trận chiến chiến thuật.', '{\"time\":1735631382486,\"blocks\":[{\"id\":\"clash1\",\"type\":\"header\",\"data\":{\"text\":\"I. Clash of Clans là gì?\",\"level\":3}},{\"id\":\"clash2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash of Clans là một trò chơi chiến thuật thời gian thực trên di động, phát triển bởi Supercell, nơi người chơi xây dựng làng, thu thập tài nguyên và chiến đấu với các làng khác.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash of Clans cho phép người chơi xây dựng làng, huấn luyện quân đội và tham gia vào các trận chiến chiến thuật.', '{\"id\":190,\"name\":\"poster-1.jpg\",\"path\":\"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(12, 'Roblox', 'roblox', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:24', 'Roblox - Sáng tạo và khám phá thế giới ảo', 'Roblox cho phép người chơi tạo ra các trò chơi riêng của mình và khám phá hàng triệu thế giới ảo do cộng đồng tạo ra.', '{\"time\":1735631380782,\"blocks\":[{\"id\":\"roblox1\",\"type\":\"header\",\"data\":{\"text\":\"I. Roblox là gì?\",\"level\":3}},{\"id\":\"roblox2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Roblox là một nền tảng trò chơi trực tuyến, nơi người chơi có thể tạo và chơi các trò chơi do người dùng khác tạo ra. Được phát triển bởi Roblox Corporation, nó cung cấp một môi trường sáng tạo không giới hạn.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Roblox cho phép người chơi tạo ra các trò chơi riêng của mình và khám phá hàng triệu thế giới ảo do cộng đồng tạo ra.', '{\"id\":191,\"name\":\"poster-2.jpg\",\"path\":\"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(13, 'Pokémon GO', 'pokemon-go', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:26', 'Pokémon GO - Khám phá và săn bắt Pokémon trên di động', 'Pokémon GO mang đến trải nghiệm thực tế tăng cường, nơi người chơi có thể khám phá thế giới thực để săn bắt và thu thập Pokémon.', '{\"time\":1735631379297,\"blocks\":[{\"id\":\"poke1\",\"type\":\"header\",\"data\":{\"text\":\"I. Pokémon GO là gì?\",\"level\":3}},{\"id\":\"poke2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Pokémon GO là một trò chơi thực tế tăng cường trên di động, phát triển bởi Niantic, cho phép người chơi khám phá thế giới thực để săn bắt và thu thập Pokémon.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 192, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Pokémon GO mang đến trải nghiệm thực tế tăng cường, nơi người chơi có thể khám phá thế giới thực để săn bắt và thu thập Pokémon.', '{\"id\":192,\"name\":\"poster-3.jpg\",\"path\":\"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(14, 'Fortnite', 'fortnite', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:27', 'Fortnite - Trận chiến xây dựng và sinh tồn trên di động', 'Fortnite mang đến trải nghiệm battle royale độc đáo với yếu tố xây dựng chiến lược và sinh tồn trong môi trường đầy thách thức.', '{\"time\":1735631377607,\"blocks\":[{\"id\":\"fort1\",\"type\":\"header\",\"data\":{\"text\":\"I. Fortnite là gì?\",\"level\":3}},{\"id\":\"fort2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Fortnite là một trò chơi battle royale trên di động, phát triển bởi Epic Games, nơi người chơi cạnh tranh để trở thành người sống sót cuối cùng trong một môi trường mở và có thể xây dựng cấu trúc.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Fortnite mang đến trải nghiệm battle royale độc đáo với yếu tố xây dựng chiến lược và sinh tồn trong môi trường đầy thách thức.', '{\"id\":193,\"name\":\"poster-4.jpg\",\"path\":\"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(15, 'Candy Crush Saga', 'candy-crush-saga', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:29', 'Candy Crush Saga - Thử thách giải đố ngọt ngào trên di động', 'Candy Crush Saga mang đến những thử thách giải đố hấp dẫn với đồ họa màu sắc và các cấp độ phong phú.', '{\"time\":1735631376251,\"blocks\":[{\"id\":\"candy1\",\"type\":\"header\",\"data\":{\"text\":\"I. Candy Crush Saga là gì?\",\"level\":3}},{\"id\":\"candy2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Candy Crush Saga là một trò chơi giải đố trên di động, phát triển bởi King, nơi người chơi phải kết hợp các viên kẹo cùng màu để vượt qua các cấp độ khó khăn.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 194, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 123, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Candy Crush Saga mang đến những thử thách giải đố hấp dẫn với đồ họa màu sắc và các cấp độ phong phú.', '{\"id\":194,\"name\":\"poster-5.jpg\",\"path\":\"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(16, 'Clash Royale', 'clash-royale', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:31', 'Clash Royale - Chiến thuật thời gian thực trên di động', 'Clash Royale kết hợp yếu tố thẻ bài và chiến thuật thời gian thực, nơi người chơi đối đầu với nhau trong các trận đấu hấp dẫn.', '{\"time\":1735631374805,\"blocks\":[{\"id\":\"royale1\",\"type\":\"header\",\"data\":{\"text\":\"I. Clash Royale là gì?\",\"level\":3}},{\"id\":\"royale2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Clash Royale là một trò chơi chiến thuật thời gian thực trên di động, phát triển bởi Supercell, nơi người chơi sử dụng thẻ bài để triển khai quân đội và chiến đấu với đối thủ trong các trận đấu hấp dẫn.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 12, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Clash Royale kết hợp yếu tố thẻ bài và chiến thuật thời gian thực, nơi người chơi đối đầu với nhau trong các trận đấu hấp dẫn.', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(17, 'Subway Surfers', 'subway-surfers', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:38', 'Subway Surfers - Trốn chạy trong tàu điện ngầm', 'Subway Surfers là trò chơi chạy vô tận trên di động, nơi người chơi phải tránh chướng ngại và thu thập tiền xu.', '{\"time\":1735631373173,\"blocks\":[{\"id\":\"subway1\",\"type\":\"header\",\"data\":{\"text\":\"I. Subway Surfers là gì?\",\"level\":3}},{\"id\":\"subway2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Subway Surfers là một trò chơi chạy vô tận trên di động, phát triển bởi Kiloo, nơi người chơi điều khiển nhân vật trốn khỏi cảnh sát bằng cách chạy qua các đường ray tàu điện ngầm, tránh chướng ngại và thu thập tiền xu.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 512, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Subway Surfers là trò chơi chạy vô tận trên di động, nơi người chơi phải tránh chướng ngại và thu thập tiền xu.', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(18, 'Apex Legends Mobile', 'apex-legends-mobile', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:40', 'Apex Legends Mobile - Trận chiến battle royale trên di động', 'Apex Legends Mobile mang đến trải nghiệm battle royale chất lượng cao với các nhân vật độc đáo và chiến thuật đa dạng.', '{\"time\":1735631371163,\"blocks\":[{\"id\":\"apex1\",\"type\":\"header\",\"data\":{\"text\":\"I. Apex Legends Mobile là gì?\",\"level\":3}},{\"id\":\"apex2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Apex Legends Mobile là phiên bản di động của trò chơi battle royale nổi tiếng Apex Legends, phát triển bởi Respawn Entertainment, nơi người chơi chiến đấu trong các đội để trở thành người chiến thắng cuối cùng.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 195, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 42, 'https://www.jopi.com/embed.php?game=temple-run-2', 'Apex Legends Mobile mang đến trải nghiệm battle royale chất lượng cao với các nhân vật độc đáo và chiến thuật đa dạng.', '{\"id\":195,\"name\":\"poster-6.jpg\",\"path\":\"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(19, 'League of Legends: Wild Rift', 'league-of-legends-wild-rift', NULL, 'active', '2024-12-30 22:40:00', '2025-01-12 19:02:41', 'League of Legends: Wild Rift - MOBA trên di động', 'League of Legends: Wild Rift mang đến trải nghiệm MOBA chất lượng cao trên di động với lối chơi nhanh và các vị tướng đa dạng.', '{\"time\":1735631369735,\"blocks\":[{\"id\":\"lol1\",\"type\":\"header\",\"data\":{\"text\":\"I. League of Legends: Wild Rift là gì?\",\"level\":3}},{\"id\":\"lol2\",\"type\":\"paragraph\",\"data\":{\"text\":\"League of Legends: Wild Rift là phiên bản di động của trò chơi MOBA nổi tiếng League of Legends, phát triển bởi Riot Games, nơi người chơi điều khiển các vị tướng để chiến thắng đội đối phương trong các trận đấu nhanh chóng và cạnh tranh.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 196, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 19, 0, 0, 0, 0, 0, 52, 'https://www.jopi.com/embed.php?game=temple-run-2', 'League of Legends: Wild Rift mang đến trải nghiệm MOBA chất lượng cao trên di động với lối chơi nhanh và các vị tướng đa dạng.', '{\"id\":196,\"name\":\"poster-7.jpg\",\"path\":\"2024/12/31/poster-7.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_chapter_cn`
--

CREATE TABLE `fast_posts_movie_chapter_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `movie` int UNSIGNED DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `index` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_chapter_cn`
--

INSERT INTO `fast_posts_movie_chapter_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `movie`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `source`, `suburl`, `index`) VALUES
(3, '第1集', 'di-1-ji', NULL, 'active', '2025-01-01 10:00:00', '2025-01-04 22:48:37', 0, '隐蔽的谜团 - 第1集 SEO', '隐蔽的谜团第1集 SEO描述', '{\"time\":1735621954801,\"blocks\":[{\"id\":\"Kc5RKI5PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"第1集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'yinbi-de-mimutuan-ep1-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 1),
(4, '第2集', 'di-2-ji', NULL, 'active', '2025-01-02 11:00:00', '2025-01-04 22:48:41', 0, '被遗忘的传说 - 第2集 SEO', '被遗忘的传说第2集 SEO描述', '{\"time\":1735621955802,\"blocks\":[{\"id\":\"Kc5RKI6PZa\",\"type\":\"paragraph\",\"data\":{\"text\":\"第2集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'beiyiwang-de-chuanshuo-ep2-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 2),
(5, '第3集', 'di-3-ji', NULL, 'active', '2025-01-03 12:00:00', '2025-01-04 22:48:44', 0, '沉默的守护者 - 第3集 SEO', '沉默的守护者第3集 SEO描述', '{\"time\":1735621956803,\"blocks\":[{\"id\":\"Kc5RKI7PZb\",\"type\":\"paragraph\",\"data\":{\"text\":\"第3集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'shenmo-de-shouhuozhe-ep3-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 3),
(6, '第4集', 'di-4-ji', NULL, 'active', '2025-01-04 13:00:00', '2025-01-04 22:48:46', 0, '暮光回声 - 第4集 SEO', '暮光回声第4集 SEO描述', '{\"time\":1735621957804,\"blocks\":[{\"id\":\"Kc5RKI8PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"第4集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'muguang-huisheng-ep4-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 4),
(7, '第5集', 'di-5-ji', NULL, 'active', '2025-01-05 14:00:00', '2025-01-04 22:48:49', 0, '魔法之旅 - 第5集 SEO', '魔法之旅第5集 SEO描述', '{\"time\":1735621958805,\"blocks\":[{\"id\":\"Kc5RKI9PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"第5集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'mofa-zhi-lv-ep5-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 5),
(8, '第6集', 'di-6-ji', NULL, 'active', '2025-01-06 15:00:00', '2025-01-04 22:48:52', 0, '天体边界 - 第6集 SEO', '天体边界第6集 SEO描述', '{\"time\":1735621959806,\"blocks\":[{\"id\":\"Kc5RKI0PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"第6集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'tiantai-bianjie-ep6-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 6),
(9, '第7集', 'di-7-ji', NULL, 'active', '2025-01-07 16:00:00', '2025-01-04 22:48:55', 0, '永恒的回声 - 第7集 SEO', '永恒的回声第7集 SEO描述', '{\"time\":1735621960807,\"blocks\":[{\"id\":\"Kc5RKI1PZf\",\"type\":\"paragraph\",\"data\":{\"text\":\"第7集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'yongheng-de-hui-sheng-ep7-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 7),
(10, '第8集', 'di-8-ji', NULL, 'active', '2025-01-08 17:00:00', '2025-01-04 22:48:59', 0, '魔法之旅 - 第8集 SEO', '魔法之旅第8集 SEO描述', '{\"time\":1735621961808,\"blocks\":[{\"id\":\"Kc5RKI2PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"第8集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'mofa-zhi-lv-ep8-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 8),
(11, '第9集', 'di-9-ji', NULL, 'active', '2025-01-09 18:00:00', '2025-01-04 22:49:01', 0, '天体边界 - 第9集 SEO', '天体边界第9集 SEO描述', '{\"time\":1735621962809,\"blocks\":[{\"id\":\"Kc5RKI3PZh\",\"type\":\"paragraph\",\"data\":{\"text\":\"第9集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'tiantai-bianjie-ep9-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 9),
(12, '第10集', 'di-10-ji', NULL, 'active', '2025-01-10 19:00:00', '2025-01-04 22:49:03', 0, '永恒的回声 - 第10集 SEO', '永恒的回声第10集 SEO描述', '{\"time\":1735621963800,\"blocks\":[{\"id\":\"Kc5RKI4PZi\",\"type\":\"paragraph\",\"data\":{\"text\":\"第10集的中文内容。\"}}],\"version\":\"2.30.7\"}', 'yongheng-de-hui-sheng-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 10),
(13, '狮子王完整版', 'shi-zi-wang-wan-zheng-ban', NULL, 'active', '2025-01-10 19:00:00', '2025-01-06 12:41:40', 0, '永恒回声 - 第10集 SEO', '永恒回声 第10集描述 SEO', '{    \"time\":1735632713846,    \"blocks\":[      {        \"id\":\"Kc5RKI4PZi\",        \"type\":\"paragraph\",        \"data\":{          \"text\":\"这是第10集的中文内容。\"        }      }    ],    \"version\":\"2.30.7\"  }', 'echoes-of-eternity-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s4.phim1280.tv/20250105/EDLpgU3M/index.m3u8', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_chapter_en`
--

CREATE TABLE `fast_posts_movie_chapter_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `movie` int UNSIGNED DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `index` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_chapter_en`
--

INSERT INTO `fast_posts_movie_chapter_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `movie`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `source`, `suburl`, `index`) VALUES
(3, 'Episode 1', 'episode-1', NULL, 'active', '2025-01-01 10:00:00', '2025-01-04 22:47:51', 0, 'Veiled Mysteries - Episode 1 SEO', 'Veiled Mysteries Episode 1 Description SEO', '{\"time\":1735632720181,\"blocks\":[{\"id\":\"Kc5RKI5PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 1 in English.\"}}],\"version\":\"2.30.7\"}', 'veiled-mysteries-ep1-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 1),
(4, 'Episode 2', 'episode-2', NULL, 'active', '2025-01-02 11:00:00', '2025-01-04 22:47:55', 0, 'Forgotten Legends - Episode 2 SEO', 'Forgotten Legends Episode 2 Description SEO', '{\"time\":1735632718704,\"blocks\":[{\"id\":\"Kc5RKI6PZa\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 2 in English.\"}}],\"version\":\"2.30.7\"}', 'forgotten-legends-ep2-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 2),
(5, 'Episode 3', 'episode-3', NULL, 'active', '2025-01-03 12:00:00', '2025-01-04 22:48:05', 0, 'Silent Guardians - Episode 3 SEO', 'Silent Guardians Episode 3 Description SEO', '{\"time\":1735632718490,\"blocks\":[{\"id\":\"Kc5RKI7PZb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 3 in English.\"}}],\"version\":\"2.30.7\"}', 'silent-guardians-ep3-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 3),
(6, 'Episode 4', 'episode-4', NULL, 'active', '2025-01-04 13:00:00', '2025-01-04 22:48:01', 0, 'Twilight Echoes - Episode 4 SEO', 'Twilight Echoes Episode 4 Description SEO', '{\"time\":1735632718111,\"blocks\":[{\"id\":\"Kc5RKI8PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 4 in English.\"}}],\"version\":\"2.30.7\"}', 'twilight-echoes-ep4-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 4),
(7, 'Episode 5', 'episode-5', NULL, 'active', '2025-01-05 14:00:00', '2025-01-04 22:48:08', 0, 'Enchanted Journeys - Episode 5 SEO', 'Enchanted Journeys Episode 5 Description SEO', '{\"time\":1735632717326,\"blocks\":[{\"id\":\"Kc5RKI9PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 5 in English.\"}}],\"version\":\"2.30.7\"}', 'enchanted-journeys-ep5-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 5),
(8, 'Episode 6', 'episode-6', NULL, 'active', '2025-01-06 15:00:00', '2025-01-04 22:48:12', 0, 'Celestial Boundaries - Episode 6 SEO', 'Celestial Boundaries Episode 6 Description SEO', '{\"time\":1735632716681,\"blocks\":[{\"id\":\"Kc5RKI0PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 6 in English.\"}}],\"version\":\"2.30.7\"}', 'celestial-boundaries-ep6-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 6),
(9, 'Episode 7', 'episode-7', NULL, 'active', '2025-01-07 16:00:00', '2025-01-04 22:48:15', 0, 'Echoes of Eternity - Episode 7 SEO', 'Echoes of Eternity Episode 7 Description SEO', '{\"time\":1735632716076,\"blocks\":[{\"id\":\"Kc5RKI1PZf\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 7 in English.\"}}],\"version\":\"2.30.7\"}', 'echoes-of-eternity-ep7-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 7),
(10, 'Episode 8', 'episode-8', NULL, 'active', '2025-01-08 17:00:00', '2025-01-04 22:48:17', 0, 'Enchanted Journeys - Episode 8 SEO', 'Enchanted Journeys Episode 8 Description SEO', '{\"time\":1735632715496,\"blocks\":[{\"id\":\"Kc5RKI2PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 8 in English.\"}}],\"version\":\"2.30.7\"}', 'enchanted-journeys-ep8-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 8),
(11, 'Episode 9', 'episode-9', NULL, 'active', '2025-01-09 18:00:00', '2025-01-04 22:48:21', 0, 'Celestial Boundaries - Episode 9 SEO', 'Celestial Boundaries Episode 9 Description SEO', '{\"time\":1735632714931,\"blocks\":[{\"id\":\"Kc5RKI3PZh\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 9 in English.\"}}],\"version\":\"2.30.7\"}', 'celestial-boundaries-ep9-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 9),
(12, 'Episode 10', 'episode-10', NULL, 'active', '2025-01-10 19:00:00', '2025-01-04 22:48:25', 0, 'Echoes of Eternity - Episode 10 SEO', 'Echoes of Eternity Episode 10 Description SEO', '{\"time\":1735632713846,\"blocks\":[{\"id\":\"Kc5RKI4PZi\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 10 in English.\"}}],\"version\":\"2.30.7\"}', 'echoes-of-eternity-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 10),
(13, 'King Lion Full', 'king-lion-full', NULL, 'active', '2025-01-10 19:00:00', '2025-01-06 12:41:25', 0, 'Echoes of Eternity - Episode 10 SEO', 'Echoes of Eternity Episode 10 Description SEO', '{\"time\":1735632713846,\"blocks\":[{\"id\":\"Kc5RKI4PZi\",\"type\":\"paragraph\",\"data\":{\"text\":\"Content of Episode 10 in English.\"}}],\"version\":\"2.30.7\"}', 'echoes-of-eternity-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s4.phim1280.tv/20250105/EDLpgU3M/index.m3u8', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_chapter_rel`
--

CREATE TABLE `fast_posts_movie_chapter_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `field_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_chapter_rel`
--

INSERT INTO `fast_posts_movie_chapter_rel` (`id`, `term_id`, `post_id`, `lang`, `created_at`, `updated_at`, `postype_slug`, `post_rel_id`, `field_id`) VALUES
(10, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 1, 1734524047631),
(13, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 22, 1734524047631),
(14, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 23, 1734524047631),
(15, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 24, 1734524047631),
(16, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 25, 1734524047631),
(17, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 26, 1734524047631),
(18, NULL, 11, 'all', '2024-12-31 15:12:13', '2024-12-31 15:12:13', 'movie', 1, 1734524047631),
(22, NULL, 11, 'all', '2024-12-31 15:12:13', '2024-12-31 15:12:13', 'movie', 23, 1734524047631),
(23, NULL, 11, 'all', '2024-12-31 15:12:13', '2024-12-31 15:12:13', 'movie', 24, 1734524047631),
(24, NULL, 11, 'all', '2024-12-31 15:12:13', '2024-12-31 15:12:13', 'movie', 25, 1734524047631),
(25, NULL, 11, 'all', '2024-12-31 15:12:13', '2024-12-31 15:12:13', 'movie', 26, 1734524047631),
(26, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 1, 1734524047631),
(29, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 22, 1734524047631),
(30, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 23, 1734524047631),
(31, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 24, 1734524047631),
(32, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 25, 1734524047631),
(33, NULL, 10, 'all', '2024-12-31 15:12:23', '2024-12-31 15:12:23', 'movie', 26, 1734524047631),
(34, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 1, 1734524047631),
(37, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 22, 1734524047631),
(38, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 23, 1734524047631),
(39, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 24, 1734524047631),
(40, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 25, 1734524047631),
(41, NULL, 9, 'all', '2024-12-31 15:12:31', '2024-12-31 15:12:31', 'movie', 26, 1734524047631),
(42, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 1, 1734524047631),
(45, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 22, 1734524047631),
(46, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 23, 1734524047631),
(47, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 24, 1734524047631),
(48, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 25, 1734524047631),
(49, NULL, 8, 'all', '2024-12-31 15:12:40', '2024-12-31 15:12:40', 'movie', 26, 1734524047631),
(50, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 1, 1734524047631),
(53, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 22, 1734524047631),
(54, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 23, 1734524047631),
(55, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 24, 1734524047631),
(56, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 25, 1734524047631),
(57, NULL, 7, 'all', '2024-12-31 15:12:49', '2024-12-31 15:12:49', 'movie', 26, 1734524047631),
(58, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 1, 1734524047631),
(61, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 22, 1734524047631),
(62, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 23, 1734524047631),
(63, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 24, 1734524047631),
(64, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 25, 1734524047631),
(65, NULL, 6, 'all', '2024-12-31 15:12:57', '2024-12-31 15:12:57', 'movie', 26, 1734524047631),
(66, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 1, 1734524047631),
(69, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 22, 1734524047631),
(70, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 23, 1734524047631),
(71, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 24, 1734524047631),
(72, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 25, 1734524047631),
(73, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 26, 1734524047631),
(74, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 1, 1734524047631),
(77, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 22, 1734524047631),
(78, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 23, 1734524047631),
(79, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 24, 1734524047631),
(80, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 25, 1734524047631),
(81, NULL, 4, 'all', '2024-12-31 15:13:15', '2024-12-31 15:13:15', 'movie', 26, 1734524047631),
(82, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 1, 1734524047631),
(85, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 22, 1734524047631),
(86, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 23, 1734524047631),
(87, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 24, 1734524047631),
(88, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 25, 1734524047631),
(89, NULL, 3, 'all', '2024-12-31 15:13:23', '2024-12-31 15:13:23', 'movie', 26, 1734524047631),
(90, NULL, 12, 'all', '2024-12-31 15:12:06', '2024-12-31 15:12:06', 'movie', 21, 1734524047631),
(91, NULL, 5, 'all', '2024-12-31 15:13:06', '2024-12-31 15:13:06', 'movie', 20, 1734524047631),
(93, NULL, 13, 'all', '2025-01-06 12:41:25', '2025-01-06 12:42:02', 'movie', 4, 1734524047631);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_chapter_vi`
--

CREATE TABLE `fast_posts_movie_chapter_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `movie` int UNSIGNED DEFAULT '0',
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `source` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `suburl` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `index` int DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_chapter_vi`
--

INSERT INTO `fast_posts_movie_chapter_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `movie`, `seo_title`, `seo_desc`, `content`, `thumbnail`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `source`, `suburl`, `index`) VALUES
(3, 'Tập 1', 'tap-1', NULL, 'active', '2025-01-01 10:00:00', '2025-01-04 22:49:12', 0, 'Những Bí Ẩn Che Giấu - Tập 1 SEO', 'Những Bí Ẩn Che Giấu Tập 1 Mô tả SEO', '{\"time\":1735621954801,\"blocks\":[{\"id\":\"Kc5RKI5PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 1 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'nhung-bi-an-che-giau-ep1-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 1),
(4, 'Tập 2', 'tap-2', NULL, 'active', '2025-01-02 11:00:00', '2025-01-04 22:49:15', 0, 'Những Huyền Thoại Bị Lãng Quên - Tập 2 SEO', 'Những Huyền Thoại Bị Lãng Quên Tập 2 Mô tả SEO', '{\"time\":1735621955802,\"blocks\":[{\"id\":\"Kc5RKI6PZa\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 2 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'nhung-huyen-thoai-bi-lang-quen-ep2-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 2),
(5, 'Tập 3', 'tap-3', NULL, 'active', '2025-01-03 12:00:00', '2025-01-04 22:49:17', 0, 'Những Người Bảo Vệ Im Lặng - Tập 3 SEO', 'Những Người Bảo Vệ Im Lặng Tập 3 Mô tả SEO', '{\"time\":1735621956803,\"blocks\":[{\"id\":\"Kc5RKI7PZb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 3 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'nhung-nguoi-bao-ve-im-lang-ep3-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 3),
(6, 'Tập 4', 'tap-4', NULL, 'active', '2025-01-04 13:00:00', '2025-01-04 22:49:19', 0, 'Âm vang hoàng hôn - Tập 4 SEO', 'Âm vang hoàng hôn Tập 4 Mô tả SEO', '{\"time\":1735621957804,\"blocks\":[{\"id\":\"Kc5RKI8PZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 4 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'am-vang-hoang-hon-ep4-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 4),
(7, 'Tập 5', 'tap-5', NULL, 'active', '2025-01-05 14:00:00', '2025-01-04 22:49:21', 0, 'Enchanted Journeys - Tập 5 SEO', 'Enchanted Journeys Tập 5 Mô tả SEO', '{\"time\":1735621958805,\"blocks\":[{\"id\":\"Kc5RKI9PZd\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 5 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'enchanted-journeys-ep5-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 5),
(8, 'Tập 6', 'tap-6', NULL, 'active', '2025-01-06 15:00:00', '2025-01-04 22:49:24', 0, 'Ranh giới thiên thể - Tập 6 SEO', 'Ranh giới thiên thể Tập 6 Mô tả SEO', '{\"time\":1735621959806,\"blocks\":[{\"id\":\"Kc5RKI0PZe\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 6 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'rahn-gioi-thien-the-ep6-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 6),
(9, 'Tập 7', 'tap-7', NULL, 'active', '2025-01-07 16:00:00', '2025-01-04 22:49:26', 0, 'Âm vang của vĩnh cửu - Tập 7 SEO', 'Âm vang của vĩnh cửu Tập 7 Mô tả SEO', '{\"time\":1735621960807,\"blocks\":[{\"id\":\"Kc5RKI1PZf\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 7 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'am-vang-cua-vinh-cuu-ep7-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 7),
(10, 'Tập 8', 'tap-8', NULL, 'active', '2025-01-08 17:00:00', '2025-01-04 22:49:29', 0, 'Chuyến đi huyền diệu - Tập 8 SEO', 'Chuyến đi huyền diệu Tập 8 Mô tả SEO', '{\"time\":1735621961808,\"blocks\":[{\"id\":\"Kc5RKI2PZg\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 8 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'chuyen-di-huyen-dieu-ep8-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 8),
(11, 'Tập 9', 'tap-9', NULL, 'active', '2025-01-09 18:00:00', '2025-01-04 22:49:32', 0, 'Ranh giới thiên thể - Tập 9 SEO', 'Ranh giới thiên thể Tập 9 Mô tả SEO', '{\"time\":1735621962809,\"blocks\":[{\"id\":\"Kc5RKI3PZh\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 9 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'rahn-gioi-thien-the-ep9-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 9),
(12, 'Tập 10', 'tap-10', NULL, 'active', '2025-01-10 19:00:00', '2025-01-04 22:49:34', 0, 'Âm vang của vĩnh cửu - Tập 10 SEO', 'Âm vang của vĩnh cửu Tập 10 Mô tả SEO', '{\"time\":1735621963800,\"blocks\":[{\"id\":\"Kc5RKI4PZi\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nội dung của Tập 10 bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', 'am-vang-cua-vinh-cuu-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s5.phim1280.tv/20241201/6PcUG5VR/index.m3u8\nhttps://s5.phim1280.tv/20241202/jCU1qP4v/index.m3u8\nhttps://s4.phim1280.tv/20241209/vABJnHuZ/index.m3u8\nhttps://s4.phim1280.tv/20241215/Ws0om6V8/index.m3u8\nhttps://s5.phim1280.tv/20241221/0XNz2MTy/index.m3u8', '', 10),
(13, 'Vua Sư Tử (Bản Đầy Đủ)', 'vua-su-tu-ban-day-du', NULL, 'active', '2025-01-10 19:00:00', '2025-01-06 12:41:33', 0, 'Tiếng Vang Vĩnh Hằng - Tập 10 SEO', 'Mô tả Tập 10 - Tiếng Vang Vĩnh Hằng SEO', '{    \"time\":1735632713846,    \"blocks\":[      {        \"id\":\"Kc5RKI4PZi\",        \"type\":\"paragraph\",        \"data\":{          \"text\":\"Nội dung Tập 10 bằng tiếng Việt.\"        }      }    ],    \"version\":\"2.30.7\"  }', 'echoes-of-eternity-ep10-thumbnail.jpg', 1, 0, 0, 0, 0, 0, 'https://s4.phim1280.tv/20250105/EDLpgU3M/index.m3u8', '', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_cn`
--

CREATE TABLE `fast_posts_movie_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` int DEFAULT '0',
  `movie_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imdb_id` int DEFAULT '0',
  `adult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `original_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cinema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `movie_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chapter_total` int DEFAULT '0',
  `quality` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `showtimes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `like_count` int DEFAULT '0',
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_cn`
--

INSERT INTO `fast_posts_movie_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `description`, `duration`, `movie_status`, `imdb_id`, `adult`, `original_language`, `trailer`, `cinema`, `movie_type`, `chapter_total`, `quality`, `showtimes`, `like_count`, `banner`, `release_date`) VALUES
(1, '开端', 'inception', NULL, 'active', '2024-12-18 20:18:25', '2025-01-05 00:01:11', ' Inception - A Masterpiece by Christopher Nolan', ' Discover Inception, Christopher Nolan\'s groundbreaking sci-fi thriller exploring dreams within dreams, starring Leonardo DiCaprio.', '{\"time\":1735630787856,\"blocks\":[{\"id\":\"fv-s-Dm55C\",\"type\":\"paragraph\",\"data\":{\"text\":\"A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\"}},{\"id\":\"rPwl_Vc5jj\",\"type\":\"paragraph\",\"data\":{\"text\":\"A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\"}},{\"id\":\"DlPeO8LXZc\",\"type\":\"paragraph\",\"data\":{\"text\":\"A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\"}},{\"id\":\"29RtFaoeWZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\r\n\r\n', 148, 'Showing', 1375666, '0', 'English', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'no', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 0, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(4, '穆法沙：狮子王 (2024)', 'mu-fa-sha-shi-zi-wang-2024', NULL, 'active', '2025-01-05 22:58:34', '2025-01-06 13:17:48', '《穆法沙：狮子王 (2024)》是一部备受期待的电影', '穆法沙, 狮子王, Scar, 迪士尼, 前传, Barry Jenkins, 家庭电影, 辛巴\r\n', '{\"time\":1736144268040,\"blocks\":[{\"id\":\"AGR1-m34IZ\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mufasa: The Lion King (2024) is the highly anticipated prequel to Disney’s classic The Lion King, exploring Mufasa’s origins as an orphaned cub and his rise to become the legendary King of the Pride Lands. The film also unveils the past and motives of Scar.\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-8.jpg\",\"path\":\"2024/12/31/feature-8.jpg\",\"resize\":\"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '《穆法沙：狮子王 (2024)》是迪士尼经典《狮子王》的前传作品，讲述穆法沙从一只孤儿幼狮成长为荣耀王国传奇国王的历程，并揭示了刀疤的过去与动机。\r\n', 118, 'Showing', 1231115, '0', 'Mufasa: The Lion King (2024)', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'yes', 'movie', 1, 'fhd', '118', 0, '{\"id\": 183, \"name\": \"poster-8.jpg\", \"path\": \"2024/12/31/poster-8.jpg\"}', '10/12/2024'),
(20, '谜题代码', 'mi-ti-dai-ma', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '谜题代码 - James Lockwood 的杰作', '探索谜题代码，James Lockwood 的开创性科幻惊悚片，探讨加密与背叛，由Emily Carter主演。', '{\"time\":1735644015731,\"blocks\":[{\"id\":\"f3NLuNgh7s\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"谜题代码\\\"的刺激\",\"level\":2}},{\"id\":\"0s3_uTXg0a\",\"type\":\"paragraph\",\"data\":{\"text\":\"如果你是心跳加速的神秘故事和紧张惊悚片的粉丝，谜题代码是你不能错过的电影杰作。凭借引人入胜的故事情节、出色的表演和发人深省的主题，这部电影为全球观众带来了难忘的体验。\"}},{\"id\":\"P76laP6cDC\",\"type\":\"header\",\"data\":{\"text\":\"\\\"谜题代码\\\"概述\",\"level\":3}},{\"id\":\"OXGzIhwuOb\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 神秘, 惊悚, 剧情导演: James Lockwood上映日期: 2024年3月22日评级: PG-13\"}},{\"id\":\"D7b_7z7to4\",\"type\":\"paragraph\",\"data\":{\"text\":\"谜题代码将观众带入一个高风险的加密、情报和背叛世界。故事的中心是Elena Hayes博士，一位出色的密码学家，负责破解一个神秘的代码，这可能会改变历史的进程。\"}},{\"id\":\"BPa5eSDlub\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/24//photo_2024-12-15_22-07-09_1.jpg\",\"caption\":\"photo_2024-12-15_22-07-09_1.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"7feeAgjJkK\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"zJRW63Uv7P\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"引人入胜的情节:谜题代码的故事情节是一个充满秘密、谜题和意外转折的迷宫。每一次揭示都将你更深地卷入一个探索信任边界和技术滥用后果的叙事中。\"},{\"content\":\"出色的演员阵容:电影拥有一群经验丰富的演员，他们以细腻和强度赋予角色生命：Emily Carter 饰演 Elena Hayes博士，一位被过去困扰的天才密码学家。Liam Turner 饰演 Jack Monroe 特工，一位拥有个人使命的叛逆情报官。Sophia Nguyen 饰演 Mira Tanaka，动机不明的黑客。\"},{\"content\":\"视觉与音乐的卓越:凭借Michael Grant的惊人摄影和Olivia Hart创作的感人配乐，谜题代码将观众沉浸在其充满氛围和悬念的世界中。\"}]}},{\"id\":\"mFF-CjNjuE\",\"type\":\"quote\",\"data\":{\"text\":\"谜题代码的故事情节是一个充满秘密、谜题和意外转折的迷宫。每一次揭示都将你更深地卷入一个探索信任边界和技术滥用后果的叙事中。\",\"caption\":\"引人入胜的情节:\",\"alignment\":\"left\"}},{\"id\":\"xdNN4vXOSq\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"6_QDKKv24B\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场惊险冒险中的角色:\"}},{\"id\":\"247raSwexw\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Elena Hayes博士\",\"Emily Carter\",\"解码谜题的密码学家\"],[\"Jack Monroe特工\",\"Liam Turner\",\"叛逆的情报官\"],[\"Mira Tanaka\",\"Sophia Nguyen\",\"有隐藏议程的黑客\"],[\"Daniel Clarke教授\",\"Richard Hawkins\",\"拥有黑暗过去的导师\"]]}},{\"id\":\"4hOJGkPUbS\",\"type\":\"header\",\"data\":{\"text\":\"\\\"谜题代码\\\"的独特之处\",\"level\":4}},{\"id\":\"EsZJez4gO_\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合神秘爱好者:如果你喜欢《盗梦空间》或《达芬奇密码》这样的电影，这部电影绝对适合你。\",\"meta\":{},\"items\":[]},{\"content\":\"发人深省的主题:它深入探讨了围绕技术、监控和人类信任的伦理困境。\",\"meta\":{},\"items\":[]},{\"content\":\"紧张刺激的动作:从高速追逐到令人费解的谜题，谜题代码让肾上腺素不断上升。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"xT8GOVwcLI\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"lZ99zw9ZtW\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"gZjYoYYerr\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一个让你猜到最后一刻的精彩惊悚片。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的电影体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"悬念、情感与动作的完美平衡。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"b5d81ZiL5l\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"3E-r98hGsU\",\"type\":\"paragraph\",\"data\":{\"text\":\"谜题代码不仅仅是一部电影——它是一场未知之旅，充满了悬念、剧情和启示。请在2024年3月22日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是神秘爱好者、动作迷，还是只是寻找一个刺激的夜晚外出，谜题代码都有适合每个人的内容。\"}},{\"id\":\"th3ffFcr9a\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A brilliant cryptographer, Dr. Elena Hayes (played by Emily Carter), is given the chance to decode a mystery that could alter history.', 148, 'Showing', 1375669, '1', 'English', 'https://www.youtube.com/watch?v=example20', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(21, '阴影领域', 'yin-ying-lingyu', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '阴影领域 - James Lockwood 的杰作', '探索阴影领域，James Lockwood 的超自然恐怖电影，灵魂与现实交织，由Emily Carter主演。', '{\"time\":1735630784594,\"blocks\":[{\"id\":\"shadow1\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"阴影领域\\\"的恐怖\",\"level\":2}},{\"id\":\"shadow2\",\"type\":\"paragraph\",\"data\":{\"text\":\"阴影领域是一部超自然恐怖电影，主角必须面对不安的灵魂和黑暗的谜团，以从这个被鬼魂缠绕的土地上解脱出来。凭借引人入胜的故事情节和出色的表演，这部电影将让你无法移开视线。\"}},{\"id\":\"shadow3\",\"type\":\"header\",\"data\":{\"text\":\"\\\"阴影领域\\\"概述\",\"level\":3}},{\"id\":\"shadow4\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 恐怖, 超自然导演: James Lockwood上映日期: 2024年4月15日评级: R\"}},{\"id\":\"shadow5\",\"type\":\"paragraph\",\"data\":{\"text\":\"阴影领域将观众带入一个高风险的加密、情报和背叛世界。故事的中心是Sarah Mitchell博士，一位出色的心理学家，必须面对她的黑暗过去，当不安的灵魂开始侵入她的日常生活。\"}},{\"id\":\"shadow6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_shadow_realm.jpg\",\"caption\":\"photo_shadow_realm.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"shadow7\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"shadow8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"引人入胜的情节:阴影领域呈现了一个充满秘密、谜题和意外转折的惊悚恐怖故事，让你时刻保持紧张状态。\"},{\"content\":\"出色的演员阵容:电影拥有一群才华横溢的演员，他们赋予角色深度和强度：Emily Carter 饰演 Sarah Mitchell博士，一位面对自己过去的心理学家。Liam Turner 饰演 Daniel Brooks，协助Sarah的超自然专家。Sophia Nguyen 饰演 Lily Nguyen，帮助解码谜团的黑客。Richard Hawkins 饰演 Prof. Alan Smith，拥有黑暗过去的导师。\"},{\"content\":\"视觉与音乐的卓越:凭借Michael Grant的惊人摄影和Olivia Hart创作的令人毛骨悚然的配乐，阴影领域营造了一个沉浸式和悬念十足的氛围。\"}]}},{\"id\":\"shadow9\",\"type\":\"quote\",\"data\":{\"text\":\"阴影领域呈现了一个充满秘密、谜题和意外转折的惊悚恐怖故事，让你时刻保持紧张状态。\",\"caption\":\"引人入胜的情节:\",\"alignment\":\"left\"}},{\"id\":\"shadow10\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"shadow11\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场惊险冒险中的角色:\"}},{\"id\":\"shadow12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Sarah Mitchell博士\",\"Emily Carter\",\"面对黑暗过去的心理学家\"],[\"Daniel Brooks\",\"Liam Turner\",\"协助Sarah的超自然专家\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"帮助解码谜团的黑客\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"拥有黑暗过去的导师\"]]}},{\"id\":\"shadow13\",\"type\":\"header\",\"data\":{\"text\":\"\\\"阴影领域\\\"的独特之处\",\"level\":4}},{\"id\":\"shadow14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合恐怖爱好者:如果你喜欢《招魂》或《驱魔人》这样的电影，阴影领域将是你的理想选择。\",\"meta\":{},\"items\":[]},{\"content\":\"发人深省的主题:电影深入探讨了围绕技术、监控和人类信任的伦理困境。\",\"meta\":{},\"items\":[]},{\"content\":\"紧张刺激的悬念:从高速追逐到超自然遭遇，阴影领域让肾上腺素不断上升。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow15\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"shadow16\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"shadow17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一部精心制作的恐怖片，让你猜到最后一刻。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的恐怖体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"悬念与情感的完美结合。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"shadow19\",\"type\":\"paragraph\",\"data\":{\"text\":\"阴影领域不仅仅是一部电影——它是一场未知之旅，充满了悬念、剧情和启示。请在2024年4月15日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是恐怖爱好者、神秘迷，还是只是寻找一个刺激的夜晚外出，阴影领域都有适合每个人的内容。\"}},{\"id\":\"shadow20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":185,\"name\":\"feature-3.jpg\",\"path\":\"2024/12/31/feature-3.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A brilliant psychologist, Sarah Mitchell (played by Emily Carter), is given the chance to confront restless spirits that invade her life.', 150, 'Showing', 1375673, '1', 'English', 'https://www.youtube.com/watch?v=example21', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(22, '永恒地平线', 'yongheng-dipingxian', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '永恒地平线 - James Lockwood 的杰作', '探索永恒地平线，James Lockwood 的奇幻冒险电影，角色必须面对跨越时间的挑战，由Emily Carter主演。', '{\"time\":1735630782674,\"blocks\":[{\"id\":\"horizon1\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"永恒地平线\\\"的冒险\",\"level\":2}},{\"id\":\"horizon2\",\"type\":\"paragraph\",\"data\":{\"text\":\"永恒地平线是一部奇幻冒险电影，主角必须克服跨越时间的挑战，寻找新的地平线。凭借鼓舞人心的故事情节和壮观的摄影，这部电影为观众带来了难忘的体验。\"}},{\"id\":\"horizon3\",\"type\":\"header\",\"data\":{\"text\":\"\\\"永恒地平线\\\"概述\",\"level\":3}},{\"id\":\"horizon4\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 冒险, 科幻导演: James Lockwood上映日期: 2024年5月10日评级: PG\"}},{\"id\":\"horizon5\",\"type\":\"paragraph\",\"data\":{\"text\":\"永恒地平线将观众带入一个跨越时间的高风险世界，角色必须合作破解谜团，找到新的定居点。故事围绕Alex Turner博士展开，一位杰出的科学家，领导一支宇航员团队执行寻找新行星的任务。\"}},{\"id\":\"horizon6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_eternal_horizon.jpg\",\"caption\":\"photo_eternal_horizon.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"horizon7\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"horizon8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"一个引人入胜的情节:永恒地平线呈现了一个充满灵感的冒险故事，关于探索和团结，保持你整个电影过程中的兴趣。\"},{\"content\":\"出色的演员阵容:Emily Carter 和 Liam Turner 带来了出色的表演，使角色生动起来，增加了电影的吸引力。\"},{\"content\":\"卓越的视觉和音乐:凭借Michael Grant的壮观摄影和Olivia Hart创作的情感配乐，永恒地平线创造了一个视觉和听觉上完美的体验。\"}]}},{\"id\":\"horizon9\",\"type\":\"quote\",\"data\":{\"text\":\"永恒地平线呈现了一个充满灵感的冒险故事，关于探索和团结，保持你整个电影过程中的兴趣。\",\"caption\":\"一个引人入胜的情节:\",\"alignment\":\"left\"}},{\"id\":\"horizon10\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"horizon11\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场奇幻冒险中的角色:\"}},{\"id\":\"horizon12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Alex Turner博士\",\"Emily Carter\",\"领导探索新地平线的科学家\"],[\"Liam Davis\",\"Liam Turner\",\"协助Alex的宇航员\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"系统专家工程师\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"指导研究的教授\"]]}},{\"id\":\"horizon13\",\"type\":\"header\",\"data\":{\"text\":\"\\\"永恒地平线\\\"的独特之处\",\"level\":4}},{\"id\":\"horizon14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合冒险爱好者:如果你喜欢《星际穿越》或《火星救援》这样的电影，永恒地平线将是你的理想选择。\",\"meta\":{},\"items\":[]},{\"content\":\"深刻的主题:电影探讨了关于探索、团结和人类在克服挑战中的力量的主题。\",\"meta\":{},\"items\":[]},{\"content\":\"持续的悬念:从紧张的动作场面到奇幻的发现，永恒地平线让你始终保持兴奋和紧张。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon15\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"horizon16\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"horizon17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一部鼓舞人心的冒险电影，拥有引人入胜的故事情节和出色的表演。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的冒险体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"动作与情感的完美结合。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"horizon19\",\"type\":\"paragraph\",\"data\":{\"text\":\"永恒地平线不仅仅是一部电影——它是一场未知之旅，充满了灵感、紧张和发现。请在2024年5月10日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是冒险爱好者、科幻迷，还是只是寻找一次感情丰富的电影体验，永恒地平线都有适合每个人的内容。\"}},{\"id\":\"horizon20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":186,\"name\":\"feature-4.jpg\",\"path\":\"2024/12/31/feature-4.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A brilliant scientist, Alex Turner (played by Emily Carter), is given the chance to lead a mission that could discover a new horizon.', 150, 'Showing', 1375675, '1', 'English', 'https://www.youtube.com/watch?v=example22', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(23, '寂静回声', 'ji-jing-hui-sheng', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '寂静回声 - James Lockwood 的杰作', '探索寂静回声，James Lockwood 的超自然恐怖电影，灵魂与现实交织，由Emily Carter主演。', '{\"time\":1735657142039,\"blocks\":[{\"id\":\"silent1\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"寂静回声\\\"的恐怖\",\"level\":2}},{\"id\":\"silent2\",\"type\":\"paragraph\",\"data\":{\"text\":\"寂静回声是一部超自然恐怖电影，主角必须面对不安的灵魂并解开黑暗的谜团，以解脱自己脱离这片被鬼魂缠绕的土地。凭借引人入胜的故事情节和出色的表演，这部电影将让你无法移开视线。\"}},{\"id\":\"silent3\",\"type\":\"header\",\"data\":{\"text\":\"\\\"寂静回声\\\"概述\",\"level\":3}},{\"id\":\"silent4\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 恐怖, 超自然导演: James Lockwood上映日期: 2024年6月5日评级: R\"}},{\"id\":\"silent5\",\"type\":\"paragraph\",\"data\":{\"text\":\"寂静回声将观众带入一个现实与灵魂交织的世界。故事围绕Sarah Mitchell博士展开，她是一位年轻的心理学家，必须面对自己黑暗的过去，当不安的灵魂开始侵入她的日常生活时。\"}},{\"id\":\"silent6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_silent_echoes.jpg\",\"caption\":\"photo_silent_echoes.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"silent7\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"silent8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"一个紧张刺激的恐怖情节:寂静回声呈现了一个充满悬念和意外转折的惊悚恐怖故事，让你时刻保持紧张状态。\"},{\"content\":\"出色的演员表现:Emily Carter 和 Liam Turner 带来了强有力的表演，为角色赋予深度和强度，增强了电影的吸引力。\"},{\"content\":\"顶级视觉与音效:凭借黑暗的影像和有力的音乐，寂静回声营造了完美的恐怖氛围。\"}]}},{\"id\":\"silent9\",\"type\":\"quote\",\"data\":{\"text\":\"寂静回声呈现了一个充满悬念和意外转折的惊悚恐怖故事，让你时刻保持紧张状态。\",\"caption\":\"一个紧张刺激的恐怖情节:\",\"alignment\":\"left\"}},{\"id\":\"silent10\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"silent11\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场惊险冒险中的角色:\"}},{\"id\":\"silent12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Sarah Mitchell\",\"Emily Carter\",\"面对黑暗过去的心理学家\"],[\"Daniel Brooks\",\"Liam Turner\",\"协助Sarah的超自然专家\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"帮助解码谜团的黑客\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"拥有深厚超自然知识的学者\"]]}},{\"id\":\"silent13\",\"type\":\"header\",\"data\":{\"text\":\"\\\"寂静回声\\\"的独特之处\",\"level\":4}},{\"id\":\"silent14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合恐怖爱好者:如果你喜欢《招魂》或《驱魔人》这样的电影，寂静回声将是你的理想选择。\",\"meta\":{},\"items\":[]},{\"content\":\"发人深省的主题:电影探讨了关于心理学、信任和灵魂存在的主题。\",\"meta\":{},\"items\":[]},{\"content\":\"持续的悬念:从紧张的追逐到超自然遭遇，寂静回声让你的肾上腺素不断上升。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent15\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"silent16\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"silent17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一部精心制作的恐怖片，拥有引人入胜的故事情节和出色的表演。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的恐怖体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"悬念与情感的完美结合。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"silent19\",\"type\":\"paragraph\",\"data\":{\"text\":\"寂静回声不仅仅是一部电影——它是一场未知之旅，充满了悬念、剧情和启示。请在2024年6月5日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是恐怖爱好者、超自然迷，还是只是寻找一个刺激的夜晚外出，寂静回声都有适合每个人的内容。\"}},{\"id\":\"silent20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":187,\"name\":\"feature-5.jpg\",\"path\":\"2024/12/31/feature-5.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Sarah Mitchell (Emily Carter) must confront restless spirits to decode mysteries and free herself from this haunted land.', 135, 'Showing', 1375679, '1', 'English', 'https://www.youtube.com/watch?v=example23', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(24, '量子漂移', 'liangzi-piaoyi', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '量子漂移 - James Lockwood 的杰作', '探索量子漂移，James Lockwood 的惊心动魄科幻冒险电影，角色必须面对时间旅行现象，由Emily Carter主演。', '{\"time\":1735630779223,\"blocks\":[{\"id\":\"quantum1\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"量子漂移\\\"的科学\",\"level\":2}},{\"id\":\"quantum2\",\"type\":\"paragraph\",\"data\":{\"text\":\"量子漂移是一部惊心动魄的科幻冒险电影，主角们必须克服时间旅行的挑战，揭开量子谜团。凭借鼓舞人心的故事情节和惊人的视觉效果，这部电影为观众带来了难忘的体验。\"}},{\"id\":\"quantum3\",\"type\":\"header\",\"data\":{\"text\":\"\\\"量子漂移\\\"概述\",\"level\":3}},{\"id\":\"quantum4\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 科幻, 冒险导演: James Lockwood上映日期: 2024年7月20日评级: PG\"}},{\"id\":\"quantum5\",\"type\":\"paragraph\",\"data\":{\"text\":\"量子漂移将观众带入一个充满探索和团队合作的高风险世界。故事围绕Ethan Miles博士展开，他是一位杰出的量子物理学家，领导一个研究团队执行任务，探索可能彻底改变我们对宇宙理解的异常量子现象。\"}},{\"id\":\"quantum6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_quantum_drift.jpg\",\"caption\":\"photo_quantum_drift.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"quantum7\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"quantum8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"一个紧张刺激的科幻情节:量子漂移呈现了一个鼓舞人心且充满刺激的科幻冒险故事，让你在整部电影中保持参与感。\"},{\"content\":\"出色的演员表现:Emily Carter 和 Liam Turner 带来了出色的表演，为角色赋予深度和强度，增强了电影的吸引力。\"},{\"content\":\"视觉与音效卓越:凭借惊人的视觉效果和情感丰富的配乐，量子漂移创造了一个完美的视觉与听觉体验。\"}]}},{\"id\":\"quantum9\",\"type\":\"quote\",\"data\":{\"text\":\"量子漂移呈现了一个鼓舞人心且充满刺激的科幻冒险故事，让你在整部电影中保持参与感。\",\"caption\":\"一个紧张刺激的科幻情节:\",\"alignment\":\"left\"}},{\"id\":\"quantum10\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"quantum11\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场惊心动魄的冒险中的角色:\"}},{\"id\":\"quantum12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Dr. Ethan Miles\",\"Emily Carter\",\"领导探索任务的量子物理学家\"],[\"Liam Turner\",\"Liam Turner\",\"系统工程专家\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"数据分析科学家\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"拥有深厚研究知识的导师\"]]}},{\"id\":\"quantum13\",\"type\":\"header\",\"data\":{\"text\":\"\\\"量子漂移\\\"的独特之处\",\"level\":4}},{\"id\":\"quantum14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合科幻爱好者:如果你喜欢《星际穿越》或《火星救援》这样的电影，量子漂移将是你的理想选择。\",\"meta\":{},\"items\":[]},{\"content\":\"深刻的主题:电影探讨了探索、团队合作和人类精神在克服挑战中的力量。\",\"meta\":{},\"items\":[]},{\"content\":\"持续的悬念:从紧张的动作场面到迷人的发现，量子漂移让你在整部电影中保持兴奋和参与感。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum15\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"quantum16\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"quantum17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一个鼓舞人心的科幻冒险电影，拥有引人入胜的故事情节和出色的表演。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的冒险体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"动作与情感的完美结合。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"quantum19\",\"type\":\"paragraph\",\"data\":{\"text\":\"量子漂移不仅仅是一部电影——它是一场未知之旅，充满了灵感、兴奋和发现。请在2024年7月20日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是科幻爱好者、冒险迷，还是只是寻找一次情感丰富的电影体验，量子漂移都有适合每个人的内容。\"}},{\"id\":\"quantum20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":188,\"name\":\"feature-6.jpg\",\"path\":\"2024/12/31/feature-6.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Dr. Ethan Miles (Emily Carter) leads a team of scientists on a mission to uncover quantum anomalies that could revolutionize our understanding of the universe.', 140, 'Showing', 1375682, '1', 'English', 'https://www.youtube.com/watch?v=example24', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(25, 'Celestial Wars', 'celestial-wars', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Celestial Wars - A Masterpiece by James Lockwood', 'Discover Celestial Wars, James Lockwood\'s action-packed sci-fi film where characters battle in space, starring Emily Carter.', '{\"time\":1735657064874,\"blocks\":[{\"id\":\"celestial1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Science of \\\"Celestial Wars\\\"\",\"level\":2}},{\"id\":\"celestial2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars is an action-packed sci-fi film where the main characters must face space battles to protect Earth from dark forces. With a thrilling storyline and spectacular action scenes, this movie offers an unforgettable experience for the audience.\"}},{\"id\":\"celestial3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Celestial Wars\\\"\",\"level\":3}},{\"id\":\"celestial4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Action, Sci-FiDirector: James LockwoodRelease Date: August 12, 2024Rating: PG-13\"}},{\"id\":\"celestial5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars immerses viewers into a world where science and warfare collide. The story centers around Captain Leo Anderson, a brave soldier, leading a team on a mission to defend Earth against invading dark forces from distant galaxies.\"}},{\"id\":\"celestial6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_celestial_wars.jpg\",\"caption\":\"photo_celestial_wars.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"celestial7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"celestial8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"A Thrilling Action Plot: Celestial Wars delivers an inspiring and thrilling sci-fi action story, keeping you engaged throughout the movie.\"},{\"content\":\"Stellar Performances: Emily Carter and Liam Turner deliver outstanding performances, bringing depth and intensity to their characters and enhancing the film\'s appeal.\"},{\"content\":\"Visual and Sound Excellence: With stunning visual effects and an emotional score, Celestial Wars creates a perfect visual and auditory experience.\"}]}},{\"id\":\"celestial9\",\"type\":\"quote\",\"data\":{\"text\":\"Celestial Wars delivers an inspiring and thrilling sci-fi action story, keeping you engaged throughout the movie.\",\"caption\":\"A Thrilling Action Plot:\",\"alignment\":\"left\"}},{\"id\":\"celestial10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"celestial11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling sci-fi adventure:\"}},{\"id\":\"celestial12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Captain Leo Anderson\",\"Emily Carter\",\"Brave soldier leading the mission to defend Earth\"],[\"Liam Turner\",\"Liam Turner\",\"Expert weapons engineer\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Research scientist developing new technologies\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Research mentor with deep scientific knowledge\"]]}},{\"id\":\"celestial13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Celestial Wars\\\" Special?\",\"level\":4}},{\"id\":\"celestial14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Sci-Fi Enthusiasts: If you enjoyed movies like The Matrix or Star Wars, Celestial Wars is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: The film explores themes of science, warfare, and the human spirit in protecting Earth.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense action scenes to fascinating space battles, Celestial Wars keeps you excited and engaged throughout the film.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"celestial16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"celestial17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An excellently crafted sci-fi action film with a captivating storyline and powerful performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable adventure experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of action and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"celestial19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars is more than just a movie—it\'s a journey into the unknown, filled with inspiration, excitement, and discoveries. Mark your calendars for August 12, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a sci-fi enthusiast, an adventure lover, or simply looking for an emotionally rich cinematic experience, Celestial Wars has something for everyone.\"}},{\"id\":\"celestial20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":189,\"name\":\"feature-7.jpg\",\"path\":\"2024/12/31/feature-7.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Captain Leo Anderson (Emily Carter) leads a team of soldiers to protect Earth from dark forces invading from distant galaxies.', 145, 'Showing', 1375684, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', '12/12/2003'),
(26, '无限循环', 'wuxian-xunhuan', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', '无限循环 - James Lockwood 的杰作', '探索无限循环，James Lockwood 的迷人科幻电影，角色被困在时间循环中，由Emily Carter主演。', '{\"time\":1735630750249,\"blocks\":[{\"id\":\"infinity1\",\"type\":\"header\",\"data\":{\"text\":\"探索\\\"无限循环\\\"的复杂性\",\"level\":2}},{\"id\":\"infinity2\",\"type\":\"paragraph\",\"data\":{\"text\":\"无限循环是一部迷人的科幻电影，主角们被困在时间循环中，努力寻找出路。凭借复杂的故事情节和惊险的摄影，这部电影为观众带来了难忘的电影体验。\"}},{\"id\":\"infinity3\",\"type\":\"header\",\"data\":{\"text\":\"\\\"无限循环\\\"概述\",\"level\":3}},{\"id\":\"infinity4\",\"type\":\"paragraph\",\"data\":{\"text\":\"类型: 科幻, 心理导演: James Lockwood上映日期: 2024年9月18日评级: PG-13\"}},{\"id\":\"infinity5\",\"type\":\"paragraph\",\"data\":{\"text\":\"无限循环将观众带入一个时间不遵循规则的世界，迫使角色面对艰难的决定并探索自我。故事围绕Olivia Hart博士展开，她是一位时间物理学家，试图解码时间循环的原因并找到逃脱的方法，以拯救自己和所爱之人。\"}},{\"id\":\"infinity6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_infinity_loop.jpg\",\"caption\":\"photo_infinity_loop.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"infinity7\",\"type\":\"header\",\"data\":{\"text\":\"观看的顶级理由\",\"level\":2}},{\"id\":\"infinity8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"一个复杂的科幻情节:无限循环呈现了一个鼓舞人心且复杂的科幻故事，让你在整部电影中保持参与感。\"},{\"content\":\"出色的演员表现:Emily Carter 和 Liam Turner 带来了出色的表演，为角色赋予深度和强度，增强了电影的吸引力。\"},{\"content\":\"视觉与音效卓越:凭借惊人的视觉效果和情感丰富的配乐，无限循环创造了一个完美的视觉与听觉体验。\"}]}},{\"id\":\"infinity9\",\"type\":\"quote\",\"data\":{\"text\":\"无限循环呈现了一个鼓舞人心且复杂的科幻故事，让你在整部电影中保持参与感。\",\"caption\":\"一个复杂的科幻情节:\",\"alignment\":\"left\"}},{\"id\":\"infinity10\",\"type\":\"header\",\"data\":{\"text\":\"认识角色\",\"level\":2}},{\"id\":\"infinity11\",\"type\":\"paragraph\",\"data\":{\"text\":\"下表介绍了主要角色及其在这场惊心动魄的科幻冒险中的角色:\"}},{\"id\":\"infinity12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"角色\",\"演员\",\"角色\"],[\"Dr. Olivia Hart\",\"Emily Carter\",\"试图解码时间循环的时间物理学家\"],[\"Liam Turner\",\"Liam Turner\",\"支持Olivia的技术工程师\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"数据分析科学家\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"拥有深厚科学知识的研究导师\"]]}},{\"id\":\"infinity13\",\"type\":\"header\",\"data\":{\"text\":\"\\\"无限循环\\\"的独特之处\",\"level\":4}},{\"id\":\"infinity14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"完美适合科幻爱好者:如果你喜欢《盗梦空间》或《星际穿越》这样的电影，无限循环将是你的理想选择。\",\"meta\":{},\"items\":[]},{\"content\":\"发人深省的主题:电影探讨了探索、团队合作和人类精神在克服挑战中的力量。\",\"meta\":{},\"items\":[]},{\"content\":\"持续的悬念:从紧张的动作场面到迷人的科学发现，无限循环让你在整部电影中保持兴奋和参与感。\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity15\",\"type\":\"header\",\"data\":{\"text\":\"专业评价\",\"level\":2}},{\"id\":\"infinity16\",\"type\":\"paragraph\",\"data\":{\"text\":\"评论家们已经对这部电影赞不绝口:\"}},{\"id\":\"infinity17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"一部鼓舞人心的科幻冒险电影，拥有引人入胜的故事情节和出色的表演。\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"一次难忘的冒险体验。\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"科幻与情感的完美结合。\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"infinity19\",\"type\":\"paragraph\",\"data\":{\"text\":\"无限循环不仅仅是一部电影——它是一场未知之旅，充满了灵感、兴奋和发现。请在2024年9月18日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是科幻爱好者、冒险迷，还是只是寻找一次情感丰富的电影体验，无限循环都有适合每个人的内容。\"}},{\"id\":\"infinity20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":190,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Dr. Olivia Hart (Emily Carter) is trapped in a time loop and must unravel the mystery to escape and save herself and her loved ones.', 150, 'Showing', 1375686, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_en`
--

CREATE TABLE `fast_posts_movie_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` int DEFAULT '0',
  `movie_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imdb_id` int DEFAULT '0',
  `adult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `original_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cinema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `movie_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chapter_total` int DEFAULT '0',
  `quality` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `showtimes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `like_count` int DEFAULT '0',
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_en`
--

INSERT INTO `fast_posts_movie_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `description`, `duration`, `movie_status`, `imdb_id`, `adult`, `original_language`, `trailer`, `cinema`, `movie_type`, `chapter_total`, `quality`, `showtimes`, `like_count`, `banner`, `release_date`) VALUES
(1, 'Inception', 'inception', NULL, 'active', '2024-12-18 20:18:25', '2025-01-05 00:01:11', ' Inception - A Masterpiece by Christopher Nolan', ' Discover Inception, Christopher Nolan\'s groundbreaking sci-fi thriller exploring dreams within dreams, starring Leonardo DiCaprio.', '{\"time\":1735630786828,\"blocks\":[{\"id\":\"f3NLuNgh7s\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Thrill of \\\"The Enigma Code\\\"\",\"level\":2}},{\"id\":\"0s3_uTXg0a\",\"type\":\"paragraph\",\"data\":{\"text\":\"If you\'re a fan of heart-pounding mysteries and edge-of-your-seat thrillers, The Enigma Code is the cinematic masterpiece you can\'t afford to miss. With a gripping storyline, exceptional performances, and thought-provoking themes, this movie delivers an unforgettable experience for audiences worldwide.\"}},{\"id\":\"P76laP6cDC\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"The Enigma Code\\\"\",\"level\":3}},{\"id\":\"OXGzIhwuOb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Mystery, Thriller, DramaDirector: James LockwoodRelease Date: March 22, 2024Rating: PG-13\"}},{\"id\":\"D7b_7z7to4\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code takes viewers into a high-stakes world of cryptography, intelligence, and betrayal. At the center of the story is Dr. Elena Hayes, a brilliant cryptographer tasked with unraveling a mysterious code that could change the course of history.\"}},{\"id\":\"BPa5eSDlub\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/24//photo_2024-12-15_22-07-09_1.jpg\",\"caption\":\"photo_2024-12-15_22-07-09_1.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"7feeAgjJkK\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"zJRW63Uv7P\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"An Intriguing Plot:The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\",\"meta\":{},\"items\":[]},{\"content\":\"A Stellar Cast:The movie features a cast of seasoned actors who bring their characters to life with nuance and intensity:Emily Carter as Dr. Elena Hayes, a genius cryptographer haunted by her past.Liam Turner as Agent Jack Monroe, a rogue intelligence officer with a personal mission.Sophia Nguyen as Mira Tanaka, a hacker whose motives remain unclear.\",\"meta\":{},\"items\":[]},{\"content\":\"Visual and Musical Excellence:With breathtaking cinematography by Michael Grant and an evocative score composed by Olivia Hart, The Enigma Code immerses viewers in its atmospheric and suspenseful world.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"mFF-CjNjuE\",\"type\":\"quote\",\"data\":{\"text\":\"The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\",\"caption\":\"An Intriguing Plot:\",\"alignment\":\"left\"}},{\"id\":\"xdNN4vXOSq\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"6_QDKKv24B\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"247raSwexw\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Dr. Elena Hayes\",\"Emily Carter\",\"Cryptographer decoding the mystery\"],[\"Agent Jack Monroe\",\"Liam Turner\",\"Rogue intelligence officer\"],[\"Mira Tanaka\",\"Sophia Nguyen\",\"Hacker with a hidden agenda\"],[\"Prof. Daniel Clarke\",\"Richard Hawkins\",\"Mentor with a dark past\"]]}},{\"id\":\"4hOJGkPUbS\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"The Enigma Code\\\" Special?\",\"level\":4}},{\"id\":\"EsZJez4gO_\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Mystery Enthusiasts: If you enjoyed movies like Inception or The Da Vinci Code, this film is right up your alley.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: It delves into the ethical dilemmas surrounding technology, surveillance, and human trust.\",\"meta\":{},\"items\":[]},{\"content\":\"Edge-of-Your-Seat Action: From high-speed chases to mind-bending puzzles, The Enigma Code keeps the adrenaline pumping.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"xT8GOVwcLI\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"lZ99zw9ZtW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"gZjYoYYerr\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"A brilliant thriller that keeps you guessing until the very end.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable cinematic experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect balance of suspense, emotion, and action.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"b5d81ZiL5l\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"3E-r98hGsU\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code is more than just a movie—it\'s a journey into the unknown, filled with suspense, drama, and revelations. Mark your calendars for March 22, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a mystery lover, an action enthusiast, or simply someone looking for a thrilling night out, The Enigma Code has something for everyone.\"}},{\"id\":\"th3ffFcr9a\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\r\n\r\n', 148, 'Showing', 1375666, '1', 'English', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'no', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(4, 'Mufasa: The Lion King (2024)', 'the-lion-king-2024', NULL, 'active', '2025-01-05 22:58:34', '2025-01-06 13:17:39', 'Mufasa: The Lion King (2024) is the highly anticipated', 'Mufasa, The Lion King, Scar, Disney, prequel, Barry Jenkins, family film, Simba\r\n', '{\"time\":1736144256927,\"blocks\":[{\"id\":\"g3qDbdc-Eh\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mufasa: The Lion King (2024) is the highly anticipated prequel to Disney’s classic The Lion King, exploring Mufasa’s origins as an orphaned cub and his rise to become the legendary King of the Pride Lands. The film also unveils the past and motives of Scar.&nbsp;\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-8.jpg\",\"path\":\"2024/12/31/feature-8.jpg\",\"resize\":\"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, 'Mufasa: The Lion King (2024) is the highly anticipated prequel to Disney’s classic The Lion King, exploring Mufasa’s origins as an orphaned cub and his rise to become the legendary King of the Pride Lands. The film also unveils the past and motives of Scar.\r\n', 118, 'Showing', 1231115, '0', 'Mufasa: The Lion King (2024)', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'yes', 'movie', 1, 'fhd', '118', 12, '{\"id\": 183, \"name\": \"poster-8.jpg\", \"path\": \"2024/12/31/poster-8.jpg\"}', '10/12/2024'),
(20, 'The Enigma Code', 'the-enigma-code', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'The Enigma Code - A Masterpiece by James Lockwood', 'Discover The Enigma Code, James Lockwood\'s groundbreaking sci-fi thriller exploring cryptography and betrayal, starring Emily Carter.', '{\"time\":1735643978794,\"blocks\":[{\"id\":\"f3NLuNgh7s\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Thrill of \\\"The Enigma Code\\\"\",\"level\":2}},{\"id\":\"0s3_uTXg0a\",\"type\":\"paragraph\",\"data\":{\"text\":\"If you\'re a fan of heart-pounding mysteries and edge-of-your-seat thrillers, The Enigma Code is the cinematic masterpiece you can\'t afford to miss. With a gripping storyline, exceptional performances, and thought-provoking themes, this movie delivers an unforgettable experience for audiences worldwide.\"}},{\"id\":\"P76laP6cDC\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"The Enigma Code\\\"\",\"level\":3}},{\"id\":\"OXGzIhwuOb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Mystery, Thriller, DramaDirector: James LockwoodRelease Date: March 22, 2024Rating: PG-13\"}},{\"id\":\"D7b_7z7to4\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code takes viewers into a high-stakes world of cryptography, intelligence, and betrayal. At the center of the story is Dr. Elena Hayes, a brilliant cryptographer tasked with unraveling a mysterious code that could change the course of history.\"}},{\"id\":\"BPa5eSDlub\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/24//photo_2024-12-15_22-07-09_1.jpg\",\"caption\":\"photo_2024-12-15_22-07-09_1.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"7feeAgjJkK\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"zJRW63Uv7P\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"An Intriguing Plot:The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\"},{\"content\":\"A Stellar Cast:The movie features a cast of seasoned actors who bring their characters to life with nuance and intensity:Emily Carter as Dr. Elena Hayes, a genius cryptographer haunted by her past.Liam Turner as Agent Jack Monroe, a rogue intelligence officer with a personal mission.Sophia Nguyen as Mira Tanaka, a hacker whose motives remain unclear.\"},{\"content\":\"Visual and Musical Excellence:With breathtaking cinematography by Michael Grant and an evocative score composed by Olivia Hart, The Enigma Code immerses viewers in its atmospheric and suspenseful world.\"}]}},{\"id\":\"mFF-CjNjuE\",\"type\":\"quote\",\"data\":{\"text\":\"The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\",\"caption\":\"An Intriguing Plot:\",\"alignment\":\"left\"}},{\"id\":\"xdNN4vXOSq\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"6_QDKKv24B\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"247raSwexw\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Dr. Elena Hayes\",\"Emily Carter\",\"Cryptographer decoding the mystery\"],[\"Agent Jack Monroe\",\"Liam Turner\",\"Rogue intelligence officer\"],[\"Mira Tanaka\",\"Sophia Nguyen\",\"Hacker with a hidden agenda\"],[\"Prof. Daniel Clarke\",\"Richard Hawkins\",\"Mentor with a dark past\"]]}},{\"id\":\"4hOJGkPUbS\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"The Enigma Code\\\" Special?\",\"level\":4}},{\"id\":\"EsZJez4gO_\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Mystery Enthusiasts: If you enjoyed movies like Inception or The Da Vinci Code, this film is right up your alley.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: It delves into the ethical dilemmas surrounding technology, surveillance, and human trust.\",\"meta\":{},\"items\":[]},{\"content\":\"Edge-of-Your-Seat Action: From high-speed chases to mind-bending puzzles, The Enigma Code keeps the adrenaline pumping.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"xT8GOVwcLI\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"lZ99zw9ZtW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"gZjYoYYerr\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"A brilliant thriller that keeps you guessing until the very end.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable cinematic experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect balance of suspense, emotion, and action.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"b5d81ZiL5l\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"3E-r98hGsU\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code is more than just a movie—it\'s a journey into the unknown, filled with suspense, drama, and revelations. Mark your calendars for March 22, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a mystery lover, an action enthusiast, or simply someone looking for a thrilling night out, The Enigma Code has something for everyone.\"}},{\"id\":\"th3ffFcr9a\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A brilliant cryptographer, Dr. Elena Hayes (played by Emily Carter), is given the chance to decode a mystery that could alter history.', 148, 'Showing', 1375668, '1', 'English', 'https://www.youtube.com/watch?v=example20', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(21, 'Shadow Realm', 'shadow-realm', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Shadow Realm - A Masterpiece by James Lockwood', 'Discover Shadow Realm, James Lockwood\'s supernatural horror film where spirits and reality intertwine, starring Emily Carter.', '{\"time\":1735630940646,\"blocks\":[{\"id\":\"shadow1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Horror of \\\"Shadow Realm\\\"\",\"level\":2}},{\"id\":\"shadow2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Shadow Realm is a supernatural horror film where the protagonist faces restless spirits and dark mysteries to free herself from this haunted land. With a compelling storyline and outstanding performances, this movie will keep you glued to the screen.\"}},{\"id\":\"shadow3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Shadow Realm\\\"\",\"level\":3}},{\"id\":\"shadow4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Horror, SupernaturalDirector: James LockwoodRelease Date: April 15, 2024Rating: R\"}},{\"id\":\"shadow5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Shadow Realm immerses viewers into a high-stakes world of cryptography, intelligence, and betrayal. The story centers around Sarah Mitchell, a brilliant psychologist who must confront her dark past as restless spirits begin to invade her daily life.\"}},{\"id\":\"shadow7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"shadow8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"An Intriguing Plot:Shadow Realm presents a thrilling horror story filled with secrets, puzzles, and unexpected twists, keeping you on the edge of your seat.\"},{\"content\":\"A Stellar Cast:The movie features a talented cast that brings depth and intensity to their characters:Emily Carter as Sarah Mitchell, a psychologist confronting her past.Liam Turner as Daniel Brooks, a paranormal expert assisting Sarah.Sophia Nguyen as Lily Nguyen, a hacker helping to decode mysteries.Richard Hawkins as Prof. Alan Smith, a mentor with a dark past.\"},{\"content\":\"Visual and Musical Excellence:With stunning cinematography by Michael Grant and a haunting score by Olivia Hart, Shadow Realm creates an immersive and suspenseful atmosphere.\"}]}},{\"id\":\"shadow9\",\"type\":\"quote\",\"data\":{\"text\":\"Shadow Realm presents a thrilling horror story filled with secrets, puzzles, and unexpected twists, keeping you on the edge of your seat.\",\"caption\":\"An Intriguing Plot:\",\"alignment\":\"left\"}},{\"id\":\"shadow10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"shadow11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"shadow12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Sarah Mitchell\",\"Emily Carter\",\"Psychologist confronting her dark past\"],[\"Daniel Brooks\",\"Liam Turner\",\"Paranormal expert assisting Sarah\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"Hacker helping decode mysteries\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Mentor with a dark past\"]]}},{\"id\":\"shadow13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Shadow Realm\\\" Special?\",\"level\":4}},{\"id\":\"shadow14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Horror Enthusiasts: If you enjoyed movies like The Conjuring or Insidious, this film is right up your alley.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: It delves into the ethical dilemmas surrounding technology, surveillance, and human trust.\",\"meta\":{},\"items\":[]},{\"content\":\"Edge-of-Your-Seat Suspense: From high-speed chases to supernatural encounters, Shadow Realm keeps the adrenaline pumping.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"shadow16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"shadow17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"A brilliantly crafted horror that keeps you guessing until the very end.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable horror experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of suspense, emotion, and horror.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"shadow19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Shadow Realm is more than just a movie—it\'s a journey into the unknown, filled with suspense, drama, and revelations. Mark your calendars for April 15, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a horror lover, a mystery enthusiast, or simply someone looking for a thrilling night out, Shadow Realm has something for everyone.\"}},{\"id\":\"shadow20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":185,\"name\":\"feature-3.jpg\",\"path\":\"2024/12/31/feature-3.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'A brilliant psychologist, Sarah Mitchell (played by Emily Carter), is given the chance to confront restless spirits that invade her life.', 150, 'Showing', 1375672, '1', 'English', 'https://www.youtube.com/watch?v=example21', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(22, 'Eternal Horizon', 'eternal-horizon', NULL, 'active', '2024-12-30 22:40:00', '2025-01-15 10:45:49', 'Eternal Horizon - A Masterpiece by James Lockwood', 'Discover Eternal Horizon, James Lockwood\'s thrilling adventure film where characters face time-travel challenges, starring Emily Carter.', '{\"time\":1735630781611,\"blocks\":[{\"id\":\"horizon1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Adventure of \\\"Eternal Horizon\\\"\",\"level\":2}},{\"id\":\"horizon2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Eternal Horizon is a thrilling adventure film where the main characters must overcome time-travel challenges to discover new horizons. With an inspiring storyline and spectacular cinematography, this movie offers an unforgettable experience for the audience.\"}},{\"id\":\"horizon3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Eternal Horizon\\\"\",\"level\":3}},{\"id\":\"horizon4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Adventure, Sci-FiDirector: James LockwoodRelease Date: May 10, 2024Rating: PG\"}},{\"id\":\"horizon5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Eternal Horizon immerses viewers into a high-stakes world of exploration and teamwork. The story revolves around Dr. Alex Turner, a brilliant scientist, leading a team of astronauts on a mission to discover a new planet for colonization.\"}},{\"id\":\"horizon6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_eternal_horizon.jpg\",\"caption\":\"photo_eternal_horizon.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"horizon7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"horizon8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"An Intriguing Plot:Eternal Horizon presents an inspiring adventure story about exploration and teamwork, keeping you engaged throughout the movie.\"},{\"content\":\"A Stellar Cast:The movie features a talented cast that brings depth and intensity to their characters:Emily Carter as Dr. Alex Turner, a scientist leading the mission.Liam Turner as Liam Davis, an astronaut assisting Alex.Sophia Nguyen as Mia Nguyen, the systems engineer.Richard Hawkins as Prof. Alan Smith, the research mentor.\"},{\"content\":\"Visual and Musical Excellence:With stunning cinematography by Michael Grant and an emotional score by Olivia Hart, Eternal Horizon creates a perfect visual and auditory experience.\"}]}},{\"id\":\"horizon9\",\"type\":\"quote\",\"data\":{\"text\":\"Eternal Horizon presents an inspiring adventure story about exploration and teamwork, keeping you engaged throughout the movie.\",\"caption\":\"An Intriguing Plot:\",\"alignment\":\"left\"}},{\"id\":\"horizon10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"horizon11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"horizon12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Alex Turner\",\"Emily Carter\",\"Scientist leading the exploration mission\"],[\"Liam Davis\",\"Liam Turner\",\"Astronaut assisting Alex\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Systems engineer expert\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Research mentor with a dark past\"]]}},{\"id\":\"horizon13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Eternal Horizon\\\" Special?\",\"level\":4}},{\"id\":\"horizon14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Adventure Enthusiasts: If you enjoyed movies like Interstellar or The Martian, Eternal Horizon is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: It explores themes of exploration, teamwork, and the human spirit in overcoming challenges.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense action scenes to fascinating discoveries, Eternal Horizon keeps you excited and engaged throughout the film.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"horizon16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"horizon17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An inspiring adventure film with a captivating storyline and outstanding performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable adventure experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of action and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"horizon19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Eternal Horizon is more than just a movie—it\'s a journey into the unknown, filled with inspiration, excitement, and discoveries. Mark your calendars for May 10, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re an adventure enthusiast, a sci-fi fan, or simply looking for an emotionally rich cinematic experience, Eternal Horizon has something for everyone.\"}},{\"id\":\"horizon20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":186,\"name\":\"feature-4.jpg\",\"path\":\"2024/12/31/feature-4.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 1, 1, 1, 'A brilliant scientist, Alex Turner (played by Emily Carter), is given the chance to lead a mission that could discover a new horizon.', 150, 'Showing', 1375676, '1', 'English', 'https://www.youtube.com/watch?v=example22', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(23, 'Silent Echoes', 'silent-echoes', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Silent Echoes - A Masterpiece by James Lockwood', 'Discover Silent Echoes, James Lockwood\'s supernatural horror film where spirits and reality intertwine, starring Emily Carter.', '{\"time\":1735643956327,\"blocks\":[{\"id\":\"silent1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Horror of \\\"Silent Echoes\\\"\",\"level\":2}},{\"id\":\"silent2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Silent Echoes is a supernatural horror film where the protagonist must confront restless spirits and unravel dark mysteries to free herself from this haunted land. With a compelling storyline and outstanding performances, this movie will keep you glued to the screen.\"}},{\"id\":\"silent3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Silent Echoes\\\"\",\"level\":3}},{\"id\":\"silent4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Horror, SupernaturalDirector: James LockwoodRelease Date: June 5, 2024Rating: R\"}},{\"id\":\"silent5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Silent Echoes immerses viewers into a world where reality and spirits collide. The story revolves around Sarah Mitchell, a young psychologist who must face her dark past as restless spirits begin to invade her daily life.\"}},{\"id\":\"silent6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_silent_echoes.jpg\",\"caption\":\"photo_silent_echoes.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"silent7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"silent8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"A Thrilling Horror Plot: Silent Echoes presents a gripping horror story filled with suspense and unexpected twists, keeping you on the edge of your seat.\"},{\"content\":\"Stellar Performances: Emily Carter and Liam Turner deliver powerful performances, bringing depth and intensity to their characters and enhancing the film\'s appeal.\"},{\"content\":\"Top-Notch Visuals and Sound: With dark imagery and impactful music, Silent Echoes creates a perfect horror atmosphere.\"}]}},{\"id\":\"silent9\",\"type\":\"quote\",\"data\":{\"text\":\"Silent Echoes presents a gripping horror story filled with suspense and unexpected twists, keeping you on the edge of your seat.\",\"caption\":\"A Thrilling Horror Plot:\",\"alignment\":\"left\"}},{\"id\":\"silent10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"silent11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"silent12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Sarah Mitchell\",\"Emily Carter\",\"Psychologist confronting her dark past\"],[\"Daniel Brooks\",\"Liam Turner\",\"Paranormal expert assisting Sarah\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"Hacker helping decode mysteries\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Supernatural scholar with deep knowledge\"]]}},{\"id\":\"silent13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Silent Echoes\\\" Special?\",\"level\":4}},{\"id\":\"silent14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Horror Enthusiasts: If you enjoyed movies like The Conjuring or Insidious, Silent Echoes is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: The film explores themes of psychology, trust, and the existence of spirits.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense chases to supernatural encounters, Silent Echoes keeps your adrenaline pumping.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"silent16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"silent17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An excellently crafted horror film with a gripping story and fantastic performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable horror experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of suspense and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"silent19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Silent Echoes is more than just a movie—it\'s a journey into the unknown, filled with suspense, drama, and revelations. Mark your calendars for June 5, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a horror lover, a supernatural enthusiast, or simply someone looking for a thrilling night out, Silent Echoes has something for everyone.\"}},{\"id\":\"silent20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":187,\"name\":\"feature-5.jpg\",\"path\":\"2024/12/31/feature-5.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Sarah Mitchell (Emily Carter) must confront restless spirits to decode mysteries and free herself from this haunted land.', 130, 'Showing', 1375678, '1', 'English', 'https://www.youtube.com/watch?v=example23', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(24, 'Quantum Drift', 'quantum-drift', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Quantum Drift - A Masterpiece by James Lockwood', 'Discover Quantum Drift, James Lockwood\'s thrilling sci-fi adventure film where characters face time-travel phenomena, starring Emily Carter.', '{\"time\":1735630778282,\"blocks\":[{\"id\":\"quantum1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Science of \\\"Quantum Drift\\\"\",\"level\":2}},{\"id\":\"quantum2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Quantum Drift is a thrilling sci-fi adventure film where the main characters must overcome time-travel challenges to uncover quantum mysteries. With an inspiring storyline and stunning visual effects, this movie offers an unforgettable experience for the audience.\"}},{\"id\":\"quantum3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Quantum Drift\\\"\",\"level\":3}},{\"id\":\"quantum4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Sci-Fi, AdventureDirector: James LockwoodRelease Date: July 20, 2024Rating: PG\"}},{\"id\":\"quantum5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Quantum Drift immerses viewers into a high-stakes world of exploration and teamwork. The story revolves around Dr. Ethan Miles, a brilliant quantum physicist, leading a research team on a mission to explore abnormal quantum phenomena that could revolutionize our understanding of the universe.\"}},{\"id\":\"quantum6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_quantum_drift.jpg\",\"caption\":\"photo_quantum_drift.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"quantum7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"quantum8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"A Thrilling Sci-Fi Plot: Quantum Drift presents an inspiring and thrilling sci-fi adventure story, keeping you engaged throughout the movie.\"},{\"content\":\"Stellar Performances: Emily Carter and Liam Turner deliver outstanding performances, bringing depth and intensity to their characters and enhancing the film\'s appeal.\"},{\"content\":\"Visual and Sound Excellence: With stunning visual effects and an emotional score, Quantum Drift creates a perfect visual and auditory experience.\"}]}},{\"id\":\"quantum9\",\"type\":\"quote\",\"data\":{\"text\":\"Quantum Drift presents an inspiring and thrilling sci-fi adventure story, keeping you engaged throughout the movie.\",\"caption\":\"A Thrilling Sci-Fi Plot:\",\"alignment\":\"left\"}},{\"id\":\"quantum10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"quantum11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"quantum12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Dr. Ethan Miles\",\"Emily Carter\",\"Quantum physicist leading the research mission\"],[\"Liam Turner\",\"Liam Turner\",\"Systems engineer expert\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Data analysis scientist\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Research mentor with a dark past\"]]}},{\"id\":\"quantum13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Quantum Drift\\\" Special?\",\"level\":4}},{\"id\":\"quantum14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Sci-Fi Enthusiasts: If you enjoyed movies like Interstellar or The Martian, Quantum Drift is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: The film explores themes of exploration, teamwork, and the human spirit in overcoming challenges.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense action scenes to fascinating discoveries, Quantum Drift keeps you excited and engaged throughout the film.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"quantum16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"quantum17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An inspiring sci-fi adventure with a captivating storyline and outstanding performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable adventure experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of action and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"quantum19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Quantum Drift is more than just a movie—it\'s a journey into the unknown, filled with inspiration, excitement, and discoveries. Mark your calendars for July 20, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a sci-fi enthusiast, an adventure lover, or simply looking for an emotionally rich cinematic experience, Quantum Drift has something for everyone.\"}},{\"id\":\"quantum20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":188,\"name\":\"feature-6.jpg\",\"path\":\"2024/12/31/feature-6.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Dr. Ethan Miles (Emily Carter) leads a team of scientists on a mission to uncover quantum anomalies that could revolutionize our understanding of the universe.', 140, 'Showing', 1375681, '1', 'English', 'https://www.youtube.com/watch?v=example24', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(25, 'Celestial Wars', 'celestial-wars', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Celestial Wars - A Masterpiece by James Lockwood', 'Discover Celestial Wars, James Lockwood\'s action-packed sci-fi film where characters battle in space, starring Emily Carter.', '{\"time\":1735657044083,\"blocks\":[{\"id\":\"celestial1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Science of \\\"Celestial Wars\\\"\",\"level\":2}},{\"id\":\"celestial2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars is an action-packed sci-fi film where the main characters must face space battles to protect Earth from dark forces. With a thrilling storyline and spectacular action scenes, this movie offers an unforgettable experience for the audience.\"}},{\"id\":\"celestial3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Celestial Wars\\\"\",\"level\":3}},{\"id\":\"celestial4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Action, Sci-FiDirector: James LockwoodRelease Date: August 12, 2024Rating: PG-13\"}},{\"id\":\"celestial5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars immerses viewers into a world where science and warfare collide. The story centers around Captain Leo Anderson, a brave soldier, leading a team on a mission to defend Earth against invading dark forces from distant galaxies.\"}},{\"id\":\"celestial6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_celestial_wars.jpg\",\"caption\":\"photo_celestial_wars.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"celestial7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"celestial8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"A Thrilling Action Plot: Celestial Wars delivers an inspiring and thrilling sci-fi action story, keeping you engaged throughout the movie.\"},{\"content\":\"Stellar Performances: Emily Carter and Liam Turner deliver outstanding performances, bringing depth and intensity to their characters and enhancing the film\'s appeal.\"},{\"content\":\"Visual and Sound Excellence: With stunning visual effects and an emotional score, Celestial Wars creates a perfect visual and auditory experience.\"}]}},{\"id\":\"celestial9\",\"type\":\"quote\",\"data\":{\"text\":\"Celestial Wars delivers an inspiring and thrilling sci-fi action story, keeping you engaged throughout the movie.\",\"caption\":\"A Thrilling Action Plot:\",\"alignment\":\"left\"}},{\"id\":\"celestial10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"celestial11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling sci-fi adventure:\"}},{\"id\":\"celestial12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Captain Leo Anderson\",\"Emily Carter\",\"Brave soldier leading the mission to defend Earth\"],[\"Liam Turner\",\"Liam Turner\",\"Expert weapons engineer\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Research scientist developing new technologies\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Research mentor with deep scientific knowledge\"]]}},{\"id\":\"celestial13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Celestial Wars\\\" Special?\",\"level\":4}},{\"id\":\"celestial14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Sci-Fi Enthusiasts: If you enjoyed movies like The Matrix or Star Wars, Celestial Wars is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: The film explores themes of science, warfare, and the human spirit in protecting Earth.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense action scenes to fascinating space battles, Celestial Wars keeps you excited and engaged throughout the film.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"celestial16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"celestial17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An excellently crafted sci-fi action film with a captivating storyline and powerful performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable adventure experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of action and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"celestial19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Celestial Wars is more than just a movie—it\'s a journey into the unknown, filled with inspiration, excitement, and discoveries. Mark your calendars for August 12, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a sci-fi enthusiast, an adventure lover, or simply looking for an emotionally rich cinematic experience, Celestial Wars has something for everyone.\"}},{\"id\":\"celestial20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":189,\"name\":\"feature-7.jpg\",\"path\":\"2024/12/31/feature-7.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Captain Leo Anderson (Emily Carter) leads a team of soldiers to protect Earth from dark forces invading from distant galaxies.', 145, 'Showing', 1375684, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', '12/12/2003');
INSERT INTO `fast_posts_movie_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `description`, `duration`, `movie_status`, `imdb_id`, `adult`, `original_language`, `trailer`, `cinema`, `movie_type`, `chapter_total`, `quality`, `showtimes`, `like_count`, `banner`, `release_date`) VALUES
(26, 'Infinity Loop', 'infinity-loop', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Infinity Loop - A Masterpiece by James Lockwood', 'Discover Infinity Loop, James Lockwood\'s captivating sci-fi film where characters are trapped in a time loop, starring Emily Carter.', '{\"time\":1735635815892,\"blocks\":[{\"id\":\"infinity1\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Complexity of \\\"Infinity Loop\\\"\",\"level\":2}},{\"id\":\"infinity2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Infinity Loop is a captivating sci-fi film where the main characters are trapped in a time loop, striving to find a way out. With a complex storyline and thrilling cinematography, this movie offers an unforgettable cinematic experience for the audience.\"}},{\"id\":\"infinity3\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"Infinity Loop\\\"\",\"level\":3}},{\"id\":\"infinity4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Sci-Fi, PsychologicalDirector: James LockwoodRelease Date: September 18, 2024Rating: PG-13\"}},{\"id\":\"infinity5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Infinity Loop immerses viewers into a world where time does not follow the rules, forcing characters to face tough decisions and explore their own selves. The story centers around Dr. Olivia Hart, a time physicist, who is trying to decode the cause of the time loop and find a way to escape it to save herself and her loved ones.\"}},{\"id\":\"infinity6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_infinity_loop.jpg\",\"caption\":\"photo_infinity_loop.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"infinity7\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"infinity8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"A Complex Sci-Fi Plot: Infinity Loop delivers an inspiring and complex sci-fi story, keeping you engaged throughout the movie.\"},{\"content\":\"Stellar Performances: Emily Carter and Liam Turner deliver outstanding performances, bringing depth and intensity to their characters and enhancing the film\'s appeal.\"},{\"content\":\"Visual and Sound Excellence: With stunning visual effects and an emotional score, Infinity Loop creates a perfect visual and auditory experience.\"}]}},{\"id\":\"infinity9\",\"type\":\"quote\",\"data\":{\"text\":\"Infinity Loop delivers an inspiring and complex sci-fi story, keeping you engaged throughout the movie.\",\"caption\":\"A Complex Sci-Fi Plot:\",\"alignment\":\"left\"}},{\"id\":\"infinity10\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"infinity11\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling sci-fi adventure:\"}},{\"id\":\"infinity12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Dr. Olivia Hart\",\"Emily Carter\",\"Time physicist trying to decode the time loop\"],[\"Liam Turner\",\"Liam Turner\",\"Technology engineer supporting Olivia\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Data analysis scientist\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Research mentor with deep scientific knowledge\"]]}},{\"id\":\"infinity13\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"Infinity Loop\\\" Special?\",\"level\":4}},{\"id\":\"infinity14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Sci-Fi Enthusiasts: If you enjoyed movies like Inception or Interstellar, Infinity Loop is the perfect choice for you.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: The film explores themes of exploration, teamwork, and the human spirit in overcoming challenges.\",\"meta\":{},\"items\":[]},{\"content\":\"Non-Stop Suspense: From intense action scenes to fascinating scientific discoveries, Infinity Loop keeps you excited and engaged throughout the film.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity15\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"infinity16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"infinity17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"An inspiring sci-fi adventure film with a captivating storyline and outstanding performances.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable adventure experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect blend of science and emotion.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity18\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"infinity19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Infinity Loop is more than just a movie—it\'s a journey into the unknown, filled with inspiration, excitement, and discoveries. Mark your calendars for September 18, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a sci-fi enthusiast, an adventure lover, or simply looking for an emotionally rich cinematic experience, Infinity Loop has something for everyone.\"}},{\"id\":\"infinity20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":190,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Dr. Olivia Hart (Emily Carter) is trapped in a time loop and must unravel the mystery to escape and save herself and her loved ones.', 150, 'Showing', 1375686, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_rel`
--

CREATE TABLE `fast_posts_movie_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int UNSIGNED NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `field_id` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_rel`
--

INSERT INTO `fast_posts_movie_rel` (`id`, `term_id`, `post_id`, `lang`, `created_at`, `updated_at`, `postype_slug`, `post_rel_id`, `field_id`) VALUES
(158, 169, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(159, 169, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(160, 124, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(161, 169, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(162, 154, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(163, 169, 25, 'all', '2024-12-31 14:38:59', '2024-12-31 14:38:59', NULL, NULL, NULL),
(164, 130, 26, 'all', '2024-12-31 14:39:08', '2024-12-31 14:39:08', NULL, NULL, NULL),
(166, 151, 26, 'all', '2024-12-31 14:39:08', '2024-12-31 14:39:08', NULL, NULL, NULL),
(167, 151, 26, 'all', '2024-12-31 14:39:14', '2024-12-31 14:39:14', NULL, NULL, NULL),
(248, 169, 25, 'all', '2024-12-31 14:39:57', '2024-12-31 14:39:57', NULL, NULL, NULL),
(249, 169, 25, 'all', '2024-12-31 14:39:57', '2024-12-31 14:39:57', NULL, NULL, NULL),
(250, 169, 25, 'all', '2024-12-31 14:39:57', '2024-12-31 14:39:57', NULL, NULL, NULL),
(251, 169, 25, 'all', '2024-12-31 14:40:07', '2024-12-31 14:40:07', NULL, NULL, NULL),
(252, 169, 25, 'all', '2024-12-31 14:40:07', '2024-12-31 14:40:07', NULL, NULL, NULL),
(253, 169, 25, 'all', '2024-12-31 14:40:07', '2024-12-31 14:40:07', NULL, NULL, NULL),
(254, 169, 25, 'all', '2024-12-31 14:40:07', '2024-12-31 14:40:07', NULL, NULL, NULL),
(255, 169, 25, 'all', '2024-12-31 14:40:15', '2024-12-31 14:40:15', NULL, NULL, NULL),
(261, 127, 24, 'all', '2024-12-31 14:40:32', '2024-12-31 14:40:32', NULL, NULL, NULL),
(276, 133, 24, 'all', '2024-12-31 14:40:56', '2024-12-31 14:40:56', NULL, NULL, NULL),
(277, 139, 24, 'all', '2024-12-31 14:40:56', '2024-12-31 14:40:56', NULL, NULL, NULL),
(281, 151, 24, 'all', '2024-12-31 14:40:56', '2024-12-31 14:40:56', NULL, NULL, NULL),
(282, 157, 24, 'all', '2024-12-31 14:40:56', '2024-12-31 14:40:56', NULL, NULL, NULL),
(292, 121, 23, 'all', '2024-12-31 14:41:29', '2024-12-31 14:41:29', NULL, NULL, NULL),
(294, 169, 23, 'all', '2024-12-31 14:41:29', '2024-12-31 14:41:29', NULL, NULL, NULL),
(295, 169, 23, 'all', '2024-12-31 14:41:39', '2024-12-31 14:41:39', NULL, NULL, NULL),
(296, 169, 23, 'all', '2024-12-31 14:41:39', '2024-12-31 14:41:39', NULL, NULL, NULL),
(297, 169, 23, 'all', '2024-12-31 14:41:39', '2024-12-31 14:41:39', NULL, NULL, NULL),
(307, 127, 22, 'all', '2024-12-31 14:42:06', '2024-12-31 14:42:06', NULL, NULL, NULL),
(309, 151, 22, 'all', '2024-12-31 14:42:06', '2024-12-31 14:42:06', NULL, NULL, NULL),
(314, 121, 21, 'all', '2024-12-31 14:42:41', '2024-12-31 14:42:41', NULL, NULL, NULL),
(319, 157, 21, 'all', '2024-12-31 14:42:51', '2024-12-31 14:42:51', NULL, NULL, NULL),
(320, 166, 21, 'all', '2024-12-31 14:42:51', '2024-12-31 14:42:51', NULL, NULL, NULL),
(323, 121, 20, 'all', '2024-12-31 14:43:04', '2024-12-31 14:43:04', NULL, NULL, NULL),
(332, 169, 20, 'all', '2024-12-31 14:43:24', '2024-12-31 14:43:24', NULL, NULL, NULL),
(343, 130, 1, 'all', '2024-12-31 14:43:52', '2024-12-31 14:43:52', NULL, NULL, NULL),
(345, 151, 1, 'all', '2024-12-31 14:43:52', '2024-12-31 14:43:52', NULL, NULL, NULL),
(346, 151, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(347, 151, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(348, 151, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(349, 151, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(350, 151, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(351, 181, 26, 'all', '2024-12-31 16:04:45', '2024-12-31 16:04:45', NULL, NULL, NULL),
(452, 169, 25, 'all', '2024-12-31 21:57:18', '2024-12-31 21:57:18', NULL, NULL, NULL),
(453, 169, 25, 'all', '2024-12-31 21:57:22', '2024-12-31 21:57:22', NULL, NULL, NULL),
(454, 169, 25, 'all', '2024-12-31 21:57:26', '2024-12-31 21:57:26', NULL, NULL, NULL),
(455, 169, 25, 'all', '2024-12-31 21:57:26', '2024-12-31 21:57:26', NULL, NULL, NULL),
(556, 169, 23, 'all', '2024-12-31 21:59:11', '2024-12-31 21:59:11', NULL, NULL, NULL),
(557, 169, 23, 'all', '2024-12-31 21:59:11', '2024-12-31 21:59:11', NULL, NULL, NULL),
(618, 211, 26, 'all', '2025-01-04 21:45:54', '2025-01-04 21:45:54', NULL, NULL, NULL),
(619, 91, 26, 'all', '2025-01-04 21:48:32', '2025-01-04 21:48:32', NULL, NULL, NULL),
(620, 94, 26, 'all', '2025-01-04 21:48:49', '2025-01-04 21:48:49', NULL, NULL, NULL),
(621, 91, 25, 'all', '2025-01-04 21:49:00', '2025-01-04 21:49:00', NULL, NULL, NULL),
(622, 103, 25, 'all', '2025-01-04 21:49:00', '2025-01-04 21:49:00', NULL, NULL, NULL),
(623, 109, 25, 'all', '2025-01-04 21:49:00', '2025-01-04 21:49:00', NULL, NULL, NULL),
(624, 91, 24, 'all', '2025-01-04 21:49:04', '2025-01-04 21:49:04', NULL, NULL, NULL),
(625, 94, 24, 'all', '2025-01-04 21:49:04', '2025-01-04 21:49:04', NULL, NULL, NULL),
(626, 97, 24, 'all', '2025-01-04 21:49:04', '2025-01-04 21:49:04', NULL, NULL, NULL),
(627, 106, 23, 'all', '2025-01-04 21:49:08', '2025-01-04 21:49:08', NULL, NULL, NULL),
(628, 109, 23, 'all', '2025-01-04 21:49:08', '2025-01-04 21:49:08', NULL, NULL, NULL),
(629, 91, 21, 'all', '2025-01-04 21:49:13', '2025-01-04 21:49:13', NULL, NULL, NULL),
(630, 97, 21, 'all', '2025-01-04 21:49:13', '2025-01-04 21:49:13', NULL, NULL, NULL),
(631, 103, 21, 'all', '2025-01-04 21:49:13', '2025-01-04 21:49:13', NULL, NULL, NULL),
(632, 106, 20, 'all', '2025-01-04 21:49:16', '2025-01-04 21:49:16', NULL, NULL, NULL),
(633, 109, 20, 'all', '2025-01-04 21:49:16', '2025-01-04 21:49:16', NULL, NULL, NULL),
(634, 100, 1, 'all', '2025-01-04 21:49:20', '2025-01-04 21:49:20', NULL, NULL, NULL),
(635, 109, 1, 'all', '2025-01-04 21:49:20', '2025-01-04 21:49:20', NULL, NULL, NULL),
(636, 118, 22, 'all', '2025-01-04 21:49:36', '2025-01-04 21:49:36', NULL, NULL, NULL),
(644, 106, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL),
(645, 118, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL),
(646, 121, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL),
(647, 211, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL),
(648, 217, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL),
(649, 151, 4, 'all', '2025-01-05 22:58:34', '2025-01-05 22:58:34', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_movie_vi`
--

CREATE TABLE `fast_posts_movie_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `duration` int DEFAULT '0',
  `movie_status` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `imdb_id` int DEFAULT '0',
  `adult` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `original_language` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `trailer` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `cinema` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `movie_type` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `chapter_total` int DEFAULT '0',
  `quality` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `showtimes` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `like_count` int DEFAULT '0',
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_movie_vi`
--

INSERT INTO `fast_posts_movie_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `description`, `duration`, `movie_status`, `imdb_id`, `adult`, `original_language`, `trailer`, `cinema`, `movie_type`, `chapter_total`, `quality`, `showtimes`, `like_count`, `banner`, `release_date`) VALUES
(1, 'Sự khởi đầu', 'inception', NULL, 'active', '2024-12-18 20:18:25', '2025-01-15 12:31:07', ' Inception - A Masterpiece by Christopher Nolan', ' Discover Inception, Christopher Nolan\'s groundbreaking sci-fi thriller exploring dreams within dreams, starring Leonardo DiCaprio.', '{\"time\":1735630787225,\"blocks\":[{\"id\":\"f3NLuNgh7s\",\"type\":\"header\",\"data\":{\"text\":\"Discover the Thrill of \\\"The Enigma Code\\\"\",\"level\":2}},{\"id\":\"0s3_uTXg0a\",\"type\":\"paragraph\",\"data\":{\"text\":\"If you\'re a fan of heart-pounding mysteries and edge-of-your-seat thrillers, The Enigma Code is the cinematic masterpiece you can\'t afford to miss. With a gripping storyline, exceptional performances, and thought-provoking themes, this movie delivers an unforgettable experience for audiences worldwide.\"}},{\"id\":\"P76laP6cDC\",\"type\":\"header\",\"data\":{\"text\":\"Overview of \\\"The Enigma Code\\\"\",\"level\":3}},{\"id\":\"OXGzIhwuOb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Genre: Mystery, Thriller, DramaDirector: James LockwoodRelease Date: March 22, 2024Rating: PG-13\"}},{\"id\":\"D7b_7z7to4\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code takes viewers into a high-stakes world of cryptography, intelligence, and betrayal. At the center of the story is Dr. Elena Hayes, a brilliant cryptographer tasked with unraveling a mysterious code that could change the course of history.\"}},{\"id\":\"7feeAgjJkK\",\"type\":\"header\",\"data\":{\"text\":\"Top Reasons to Watch\",\"level\":2}},{\"id\":\"zJRW63Uv7P\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"An Intriguing Plot:The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\",\"meta\":{},\"items\":[]},{\"content\":\"A Stellar Cast:The movie features a cast of seasoned actors who bring their characters to life with nuance and intensity:Emily Carter as Dr. Elena Hayes, a genius cryptographer haunted by her past.Liam Turner as Agent Jack Monroe, a rogue intelligence officer with a personal mission.Sophia Nguyen as Mira Tanaka, a hacker whose motives remain unclear.\",\"meta\":{},\"items\":[]},{\"content\":\"Visual and Musical Excellence:With breathtaking cinematography by Michael Grant and an evocative score composed by Olivia Hart, The Enigma Code immerses viewers in its atmospheric and suspenseful world.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"mFF-CjNjuE\",\"type\":\"quote\",\"data\":{\"text\":\"The storyline of The Enigma Code is a labyrinth of secrets, puzzles, and unexpected twists. Each revelation pulls you deeper into a narrative that explores the boundaries of trust and the consequences of technology in the wrong hands.\",\"caption\":\"An Intriguing Plot:\",\"alignment\":\"left\"}},{\"id\":\"xdNN4vXOSq\",\"type\":\"header\",\"data\":{\"text\":\"Meet the Characters\",\"level\":2}},{\"id\":\"6_QDKKv24B\",\"type\":\"paragraph\",\"data\":{\"text\":\"The table below introduces the main characters and their roles in this thrilling adventure:\"}},{\"id\":\"247raSwexw\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Character\",\"Actor\",\"Role\"],[\"Dr. Elena Hayes\",\"Emily Carter\",\"Cryptographer decoding the mystery\"],[\"Agent Jack Monroe\",\"Liam Turner\",\"Rogue intelligence officer\"],[\"Mira Tanaka\",\"Sophia Nguyen\",\"Hacker with a hidden agenda\"],[\"Prof. Daniel Clarke\",\"Richard Hawkins\",\"Mentor with a dark past\"]]}},{\"id\":\"4hOJGkPUbS\",\"type\":\"header\",\"data\":{\"text\":\"What Makes \\\"The Enigma Code\\\" Special?\",\"level\":4}},{\"id\":\"EsZJez4gO_\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Perfect for Mystery Enthusiasts: If you enjoyed movies like Inception or The Da Vinci Code, this film is right up your alley.\",\"meta\":{},\"items\":[]},{\"content\":\"Thought-Provoking Themes: It delves into the ethical dilemmas surrounding technology, surveillance, and human trust.\",\"meta\":{},\"items\":[]},{\"content\":\"Edge-of-Your-Seat Action: From high-speed chases to mind-bending puzzles, The Enigma Code keeps the adrenaline pumping.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"xT8GOVwcLI\",\"type\":\"header\",\"data\":{\"text\":\"Critical Acclaim\",\"level\":2}},{\"id\":\"lZ99zw9ZtW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Critics are already raving about the movie:\"}},{\"id\":\"gZjYoYYerr\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"A brilliant thriller that keeps you guessing until the very end.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"An unforgettable cinematic experience.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"The perfect balance of suspense, emotion, and action.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"b5d81ZiL5l\",\"type\":\"header\",\"data\":{\"text\":\"Conclusion\",\"level\":3}},{\"id\":\"3E-r98hGsU\",\"type\":\"paragraph\",\"data\":{\"text\":\"The Enigma Code is more than just a movie—it\'s a journey into the unknown, filled with suspense, drama, and revelations. Mark your calendars for March 22, 2024, and prepare to be captivated by one of the most exciting films of the year. Whether you\'re a mystery lover, an action enthusiast, or simply someone looking for a thrilling night out, The Enigma Code has something for everyone.\"}},{\"id\":\"th3ffFcr9a\",\"type\":\"paragraph\",\"data\":{\"text\":\"Don’t miss it!\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 63, 597, 36, 44, 36, 'A skilled thief, Dom Cobb (played by Leonardo DiCaprio), is given a chance at redemption if he can successfully plant an idea into a target\'s subconscious through a technique known as inception.\r\n\r\n', 148, 'Showing', 1375666, '1', 'English', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'no', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 62, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003'),
(4, 'Mufasa: Vua Sư Tử (2024)', 'mufasa-vua-su-tu-2024', NULL, 'active', '2025-01-05 22:58:34', '2025-01-16 07:13:58', 'Mufasa: Vua Sư Tử (2024) là bộ phim rất được mong đợi', 'Mufasa, Vua Sư Tử, Scar, Disney, tiền truyện', '{\"time\":1736144263952,\"blocks\":[{\"id\":\"A8tVjIHntd\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mufasa: The Lion King (2024) is the highly anticipated prequel to Disney’s classic The Lion King, exploring Mufasa’s origins as an orphaned cub and his rise to become the legendary King of the Pride Lands. The film also unveils the past and motives of Scar.\"}}],\"version\":\"2.30.7\"}', '{\"id\":183,\"name\":\"feature-8.jpg\",\"path\":\"2024/12/31/feature-8.jpg\",\"resize\":\"150x150;333x500\"}', 1, 0, 0, 27, 27, 27, 'Mufasa: Vua Sư Tử (2024) là phần tiền truyện rất được mong đợi của tác phẩm kinh điển The Lion King từ Disney, khám phá hành trình Mufasa khi còn là một chú sư tử mồ côi và cách cậu trở thành Vua huyền thoại của Vùng Đất Kiêu Hãnh. Bộ phim cũng tiết lộ quá khứ và động cơ của Scar.\r\n', 118, 'Showing', 1231115, '0', 'Mufasa: The Lion King (2024)', 'https://www.youtube.com/watch?v=YoHD9XEInc0', 'yes', 'movie', 1, 'fhd', '118', 9, '{\"id\": 183, \"name\": \"poster-8.jpg\", \"path\": \"2024/12/31/poster-8.jpg\"}', '10/12/2024'),
(20, 'Mã Bí Ẩn', 'ma-bi-an', NULL, 'active', '2024-12-30 22:40:00', '2025-01-09 10:42:43', 'Mã Bí Ẩn - Một Kiệt Tác của James Lockwood', 'Khám phá Mã Bí Ẩn, bộ phim khoa học viễn tưởng đột phá của James Lockwood khám phá những giấc mơ trong giấc mơ, với sự tham gia của Emily Carter.', '{\"time\":1735644007216,\"blocks\":[{\"id\":\"f3NLuNgh7s\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Kích Thích của \\\"Mã Bí Ẩn\\\"\",\"level\":2}},{\"id\":\"0s3_uTXg0a\",\"type\":\"paragraph\",\"data\":{\"text\":\"Nếu bạn là người hâm mộ những câu chuyện bí ẩn nghẹt thở và những bộ phim gây cấn, Mã Bí Ẩn là kiệt tác điện ảnh bạn không thể bỏ lỡ. Với cốt truyện hấp dẫn, diễn xuất xuất sắc và những chủ đề kích thích tư duy, bộ phim này mang đến trải nghiệm không thể quên cho khán giả toàn cầu.\"}},{\"id\":\"P76laP6cDC\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Mã Bí Ẩn\\\"\",\"level\":3}},{\"id\":\"OXGzIhwuOb\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Bí Ẩn, Kinh Dị, Tâm LýĐạo diễn: James LockwoodNgày phát hành: 22 Tháng Ba 2024Đánh giá: PG-13\"}},{\"id\":\"D7b_7z7to4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mã Bí Ẩn đưa người xem vào thế giới cao cấp của mật mã, tình báo và sự phản bội. Trung tâm của câu chuyện là Tiến sĩ Elena Hayes, một nhà mật mã học xuất sắc được giao nhiệm vụ giải mã một mã bí ẩn có thể thay đổi cục diện lịch sử.\"}},{\"id\":\"BPa5eSDlub\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/24//photo_2024-12-15_22-07-09_1.jpg\",\"caption\":\"photo_2024-12-15_22-07-09_1.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"7feeAgjJkK\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"zJRW63Uv7P\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Hấp Dẫn: Cốt truyện của Mã Bí Ẩn là một mê cung của bí mật, câu đố và những cú twist bất ngờ. Mỗi tiết lộ kéo bạn sâu hơn vào một câu chuyện khám phá ranh giới của niềm tin và hậu quả của công nghệ trong tay sai.\"},{\"content\":\"Diễn Viên Xuất Sắc: Bộ phim có sự góp mặt của dàn diễn viên giàu kinh nghiệm mang đến sự sống động và mãnh liệt cho các nhân vật: Emily Carter vai Tiến sĩ Elena Hayes, một nhà mật mã học thiên tài bị ám ảnh bởi quá khứ.Liam Turner vai Đại lý Jack Monroe, một sĩ quan tình báo mạo hiểm với nhiệm vụ cá nhân.Sophia Nguyen vai Mira Tanaka, một hacker với động cơ không rõ ràng.\"},{\"content\":\"Sự Xuất Sắc về Hình Ảnh và Âm Nhạc: Với hình ảnh tuyệt đẹp của Michael Grant và bản nhạc cảm xúc do Olivia Hart sáng tác, Mã Bí Ẩn đem lại cho khán giả một thế giới đầy khí hậu và hồi hộp.\"}]}},{\"id\":\"mFF-CjNjuE\",\"type\":\"quote\",\"data\":{\"text\":\"Cốt truyện của Mã Bí Ẩn là một mê cung của bí mật, câu đố và những cú twist bất ngờ. Mỗi tiết lộ kéo bạn sâu hơn vào một câu chuyện khám phá ranh giới của niềm tin và hậu quả của công nghệ trong tay sai.\",\"caption\":\"Một Cốt Truyện Hấp Dẫn:\",\"alignment\":\"left\"}},{\"id\":\"xdNN4vXOSq\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"6_QDKKv24B\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu ly kỳ này:\"}},{\"id\":\"247raSwexw\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Tiến sĩ Elena Hayes\",\"Emily Carter\",\"Nhà mật mã học giải mã bí ẩn\"],[\"Đại lý Jack Monroe\",\"Liam Turner\",\"Sĩ quan tình báo mạo hiểm\"],[\"Mira Tanaka\",\"Sophia Nguyen\",\"Hacker với kế hoạch ẩn giấu\"],[\"Prof. Daniel Clarke\",\"Richard Hawkins\",\"Người hướng dẫn với quá khứ đen tối\"]]}},{\"id\":\"4hOJGkPUbS\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Mã Bí Ẩn\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"EsZJez4gO_\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Bí Ẩn: Nếu bạn thích các bộ phim như Inception hoặc The Da Vinci Code, bộ phim này là dành cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Các Chủ Đề Kích Thích Tư Duy: Nó đào sâu vào các vấn đề đạo đức xung quanh công nghệ, giám sát và niềm tin con người.\",\"meta\":{},\"items\":[]},{\"content\":\"Hành Động Hồi Hộp: Từ các cuộc rượt đuổi tốc độ cao đến các câu đố làm bạn bối rối, Mã Bí Ẩn giữ nhịp tim bạn luôn đập mạnh.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"xT8GOVwcLI\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"lZ99zw9ZtW\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"gZjYoYYerr\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim kinh dị tuyệt vời giữ bạn đoán đến phút cuối cùng.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm điện ảnh không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Cân bằng hoàn hảo giữa hồi hộp, cảm xúc và hành động.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"b5d81ZiL5l\",\"type\":\"header\",\"data\":{\"text\":\"Kết Luận\",\"level\":3}},{\"id\":\"3E-r98hGsU\",\"type\":\"paragraph\",\"data\":{\"text\":\"Mã Bí Ẩn không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy hồi hộp, kịch tính và những tiết lộ. Hãy ghi chú ngày 22 Tháng Ba 2024 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích bí ẩn, đam mê hành động, hay đơn giản là tìm kiếm một đêm giải trí hồi hộp, Mã Bí Ẩn đều có thứ dành cho mọi người.\"}},{\"id\":\"th3ffFcr9a\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đừng bỏ lỡ!\"}}],\"version\":\"2.30.7\"}', '{\"id\":184,\"name\":\"feature-2.jpg\",\"path\":\"2024/12/31/feature-2.jpg\",\"resize\":\"150x150;333x500\"}', 1, 13, 91, 1, 1, 1, 'Một nhà mật mã học xuất sắc, Dr. Elena Hayes (do Emily Carter thủ vai), được trao cơ hội giải mã một bí ẩn có thể thay đổi lịch sử.', 148, 'Showing', 1375667, '1', 'Vietnamese', 'https://www.youtube.com/watch?v=example20', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', '12/12/2003'),
(21, 'Vùng Bóng Tối', 'vung-bong-toi', NULL, 'active', '2024-12-30 22:40:00', '2025-01-15 11:34:12', 'Vùng Bóng Tối - Một Kiệt Tác của James Lockwood', 'Khám phá Vùng Bóng Tối, bộ phim kinh dị siêu nhiên của James Lockwood, nơi các linh hồn và thực tại giao thoa, với sự tham gia của Emily Carter.', '{\"time\":1735643996954,\"blocks\":[{\"id\":\"shadow1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Kinh Dị của \\\"Vùng Bóng Tối\\\"\",\"level\":2}},{\"id\":\"shadow2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vùng Bóng Tối là một bộ phim kinh dị siêu nhiên, nơi nhân vật chính phải đối mặt với các linh hồn bất ổn và giải mã những bí ẩn đen tối để giải thoát mình khỏi vùng đất này. Với cốt truyện hấp dẫn và diễn xuất xuất sắc, bộ phim này sẽ khiến bạn không thể rời mắt khỏi màn hình.\"}},{\"id\":\"shadow3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Vùng Bóng Tối\\\"\",\"level\":3}},{\"id\":\"shadow4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Kinh Dị, Siêu NhiênDirector: James LockwoodRelease Date: April 15, 2024Rating: R\"}},{\"id\":\"shadow5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vùng Bóng Tối dẫn dắt người xem vào một thế giới nơi thực tại và linh hồn giao thoa. Câu chuyện xoay quanh Sarah Mitchell, một nhà tâm lý học trẻ tuổi, người phải đối mặt với quá khứ đen tối của mình khi những linh hồn không yên bình bắt đầu xuất hiện trong cuộc sống hàng ngày của cô.\"}},{\"id\":\"shadow7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"shadow8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Kinh Dị: Vùng Bóng Tối mang đến một câu chuyện kinh dị đầy kịch tính và các cú twist bất ngờ, giữ cho bạn luôn hồi hộp.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất mạnh mẽ, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Đỉnh Cao: Với hình ảnh tối tăm và âm nhạc gây ấn tượng, Vùng Bóng Tối tạo nên một bầu không khí kinh dị hoàn hảo.\"}]}},{\"id\":\"shadow9\",\"type\":\"quote\",\"data\":{\"text\":\"Vùng Bóng Tối mang đến một câu chuyện kinh dị đầy kịch tính và các cú twist bất ngờ, giữ cho bạn luôn hồi hộp.\",\"caption\":\"Một Cốt Truyện Kinh Dị:\",\"alignment\":\"left\"}},{\"id\":\"shadow10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"shadow11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu kinh dị này:\"}},{\"id\":\"shadow12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Sarah Mitchell\",\"Emily Carter\",\"Nhà tâm lý học đối mặt với quá khứ đen tối\"],[\"Daniel Brooks\",\"Liam Turner\",\"Chuyên gia paranormal hỗ trợ Sarah\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"Nữ hacker giúp đỡ trong việc giải mã bí ẩn\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Giáo sư có kiến thức sâu về siêu nhiên\"]]}},{\"id\":\"shadow13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Vùng Bóng Tối\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"shadow14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Kinh Dị: Nếu bạn yêu thích những bộ phim như The Conjuring hoặc Insidious, Vùng Bóng Tối sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về tâm lý, niềm tin và sự tồn tại của linh hồn.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những cảnh rượt đuổi đến những cuộc gặp gỡ siêu nhiên, Vùng Bóng Tối giữ cho bạn luôn trong trạng thái hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"shadow16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"shadow17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim kinh dị xuất sắc với câu chuyện hấp dẫn và các diễn viên tuyệt vời.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm kinh dị không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa hồi hộp và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"shadow18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"shadow19\",\"type\":\"paragraph\",\"data\":{\"text\":\"谜题代码不仅仅是一部电影——它是一场未知之旅，充满了悬念、剧情和启示。请在2024年3月22日标记您的日历，准备好被今年最令人兴奋的电影之一所吸引。无论您是神秘爱好者、动作迷，还是只是寻找一个刺激的夜晚外出，谜题代码都有适合每个人的内容。\"}},{\"id\":\"shadow20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":185,\"name\":\"feature-3.jpg\",\"path\":\"2024/12/31/feature-3.jpg\",\"resize\":\"150x150;333x500\"}', 1, 7, 33, 81, 81, 81, 'A brilliant cryptographer, Dr. Elena Hayes (played by Emily Carter), is given the chance to decode a mystery that could alter history.', 148, 'Showing', 1375671, '1', 'English', 'https://www.youtube.com/watch?v=example20', 'no', 'movie', 1, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', '12/12/2003'),
(22, 'Chân Trời Vĩnh Cửu', 'chan-troi-vinh-cuu', NULL, 'active', '2024-12-30 22:40:00', '2025-01-15 07:05:44', 'Chân Trời Vĩnh Cửu - Một Kiệt Tác của James Lockwood', 'Khám phá Chân Trời Vĩnh Cửu, bộ phim phiêu lưu kỳ thú của James Lockwood, nơi các nhân vật phải đối mặt với những thử thách vượt thời gian, với sự tham gia của Emily Carter.', '{\"time\":1735630782234,\"blocks\":[{\"id\":\"horizon1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Phiêu Lưu của \\\"Chân Trời Vĩnh Cửu\\\"\",\"level\":2}},{\"id\":\"horizon2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Chân Trời Vĩnh Cửu là một bộ phim phiêu lưu kỳ thú, nơi các nhân vật chính phải vượt qua những thử thách vượt thời gian để tìm kiếm chân trời mới. Với cốt truyện đầy cảm hứng và những cảnh quay ngoạn mục, bộ phim này mang đến một trải nghiệm không thể quên cho khán giả.\"}},{\"id\":\"horizon3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Chân Trời Vĩnh Cửu\\\"\",\"level\":3}},{\"id\":\"horizon4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Phiêu Lưu, Khoa Học Viễn TưởngDirector: James LockwoodRelease Date: May 10, 2024Rating: PG\"}},{\"id\":\"horizon5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Chân Trời Vĩnh Cửu đưa người xem vào một cuộc hành trình xuyên thời gian, nơi các nhân vật phải hợp tác để giải mã những bí ẩn của vũ trụ. Câu chuyện tập trung vào Alex Turner, một nhà khoa học tài ba, người dẫn đầu một nhóm phi hành gia trong nhiệm vụ tìm kiếm một hành tinh mới để định cư.\"}},{\"id\":\"horizon6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_eternal_horizon.jpg\",\"caption\":\"photo_eternal_horizon.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"horizon7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"horizon8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Kỳ Thú: Chân Trời Vĩnh Cửu mang đến một câu chuyện đầy cảm hứng về sự khám phá và đoàn kết, giữ cho bạn luôn hứng thú suốt bộ phim.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất xuất sắc, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Tuyệt Vời: Với những cảnh quay ngoạn mục và bản nhạc cảm xúc, Chân Trời Vĩnh Cửu tạo nên một trải nghiệm thị giác và âm thanh tuyệt hảo.\"}]}},{\"id\":\"horizon9\",\"type\":\"quote\",\"data\":{\"text\":\"Chân Trời Vĩnh Cửu mang đến một câu chuyện đầy cảm hứng về sự khám phá và đoàn kết, giữ cho bạn luôn hứng thú suốt bộ phim.\",\"caption\":\"Một Cốt Truyện Kỳ Thú:\",\"alignment\":\"left\"}},{\"id\":\"horizon10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"horizon11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu kỳ thú này:\"}},{\"id\":\"horizon12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Alex Turner\",\"Emily Carter\",\"Nhà khoa học dẫn đầu nhiệm vụ\"],[\"Liam Davis\",\"Liam Turner\",\"Phi hành gia hỗ trợ Alex\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Kỹ sư chuyên gia hệ thống\"],[\"Prof. Daniel Clarke\",\"Richard Hawkins\",\"Giáo sư hướng dẫn nghiên cứu\"]]}},{\"id\":\"horizon13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Chân Trời Vĩnh Cửu\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"horizon14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Phiêu Lưu: Nếu bạn yêu thích những bộ phim như Interstellar hoặc The Martian, Chân Trời Vĩnh Cửu sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về sự khám phá, đoàn kết và sức mạnh của con người trong việc vượt qua thử thách.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những pha hành động căng thẳng đến những khám phá kỳ thú, Chân Trời Vĩnh Cửu giữ cho bạn luôn trong trạng thái hứng thú và hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"horizon16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"horizon17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim phiêu lưu tuyệt vời với cốt truyện đầy cảm hứng và diễn xuất xuất sắc.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm phiêu lưu không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa hành động và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"horizon18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"horizon19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Chân Trời Vĩnh Cửu không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy cảm hứng, kịch tính và những khám phá. Hãy ghi chú ngày 2024年5月10日 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích phiêu lưu, một người đam mê khoa học viễn tưởng, hay đơn giản là tìm kiếm một trải nghiệm điện ảnh đầy cảm xúc, Chân Trời Vĩnh Cửu đều có thứ dành cho mọi người.\"}},{\"id\":\"horizon20\",\"type\":\"paragraph\",\"data\":{\"text\":\"不要错过！\"}}],\"version\":\"2.30.7\"}', '{\"id\":186,\"name\":\"feature-4.jpg\",\"path\":\"2024/12/31/feature-4.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 1, 1, 1, 'A brilliant scientist, Alex Turner (played by Emily Carter), is given the chance to lead a mission that could discover a new horizon.', 150, 'Showing', 1375674, '1', 'English', 'https://www.youtube.com/watch?v=example22', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', '12/12/2003'),
(23, 'Âm Vang Im Lặng', 'am-vang-im-lang', NULL, 'active', '2024-12-30 22:40:00', '2025-01-05 00:01:11', 'Âm Vang Im Lặng - Một Kiệt Tác của James Lockwood', 'Khám phá Âm Vang Im Lặng, bộ phim kinh dị siêu nhiên của James Lockwood, nơi những linh hồn và hiện thực giao thoa, với sự tham gia của Emily Carter.', '{\"time\":1735630780395,\"blocks\":[{\"id\":\"silent1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Kinh Dị của \\\"Âm Vang Im Lặng\\\"\",\"level\":2}},{\"id\":\"silent2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Âm Vang Im Lặng là một bộ phim kinh dị siêu nhiên, nơi nhân vật chính phải đối mặt với những linh hồn bất ổn và giải mã những bí ẩn đen tối để giải thoát mình khỏi vùng đất này. Với cốt truyện hấp dẫn và diễn xuất xuất sắc, bộ phim này sẽ khiến bạn không thể rời mắt khỏi màn hình.\"}},{\"id\":\"silent3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Âm Vang Im Lặng\\\"\",\"level\":3}},{\"id\":\"silent4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Kinh Dị, Siêu NhiênDirector: James LockwoodNgày phát hành: June 5, 2024Đánh giá: R\"}},{\"id\":\"silent5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Âm Vang Im Lặng dẫn dắt người xem vào một thế giới nơi hiện thực và linh hồn giao thoa. Câu chuyện xoay quanh Sarah Mitchell, một nhà tâm lý học trẻ tuổi, người phải đối mặt với quá khứ đen tối của mình khi những linh hồn không yên bình bắt đầu xuất hiện trong cuộc sống hàng ngày của cô.\"}},{\"id\":\"silent6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_silent_echoes.jpg\",\"caption\":\"photo_silent_echoes.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"silent7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"silent8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Kinh Dị: Âm Vang Im Lặng mang đến một câu chuyện kinh dị đầy kịch tính và các cú twist bất ngờ, giữ cho bạn luôn hồi hộp.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất mạnh mẽ, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Đỉnh Cao: Với hình ảnh tối tăm và âm nhạc gây ấn tượng, Âm Vang Im Lặng tạo nên một bầu không khí kinh dị hoàn hảo.\"}]}},{\"id\":\"silent9\",\"type\":\"quote\",\"data\":{\"text\":\"Âm Vang Im Lặng mang đến một câu chuyện kinh dị đầy kịch tính và các cú twist bất ngờ, giữ cho bạn luôn hồi hộp.\",\"caption\":\"Một Cốt Truyện Kinh Dị:\",\"alignment\":\"left\"}},{\"id\":\"silent10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"silent11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu kinh dị này:\"}},{\"id\":\"silent12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Sarah Mitchell\",\"Emily Carter\",\"Nhà tâm lý học đối mặt với quá khứ đen tối\"],[\"Daniel Brooks\",\"Liam Turner\",\"Chuyên gia paranormal hỗ trợ Sarah\"],[\"Lily Nguyen\",\"Sophia Nguyen\",\"Nữ hacker giúp đỡ trong việc giải mã bí ẩn\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Giáo sư có kiến thức sâu về siêu nhiên\"]]}},{\"id\":\"silent13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Âm Vang Im Lặng\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"silent14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Kinh Dị: Nếu bạn yêu thích những bộ phim như The Conjuring hoặc Insidious, Âm Vang Im Lặng sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về tâm lý, niềm tin và sự tồn tại của linh hồn.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những cảnh rượt đuổi đến những cuộc gặp gỡ siêu nhiên, Âm Vang Im Lặng giữ cho bạn luôn trong trạng thái hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"silent16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"silent17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim kinh dị xuất sắc với câu chuyện hấp dẫn và các diễn viên tuyệt vời.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm kinh dị không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa hồi hộp và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"silent18\",\"type\":\"header\",\"data\":{\"text\":\"Kết Luận\",\"level\":3}},{\"id\":\"silent19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Âm Vang Im Lặng không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy hồi hộp, kịch tính và những tiết lộ. Hãy ghi chú ngày June 5, 2024 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích kinh dị, một người đam mê siêu nhiên, hay chỉ đơn giản là tìm kiếm một đêm giải trí hồi hộp, Âm Vang Im Lặng đều có thứ dành cho mọi người.\"}},{\"id\":\"silent20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đừng bỏ lỡ!\"}}],\"version\":\"2.30.7\"}', '{\"id\":187,\"name\":\"feature-5.jpg\",\"path\":\"2024/12/31/feature-5.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 0, 0, 0, 'Sarah Mitchell (Emily Carter) phải đối mặt với những linh hồn bất ổn để giải mã bí ẩn và giải thoát mình khỏi vùng đất này.', 135, 'Showing', 1375677, '1', 'English', 'https://www.youtube.com/watch?v=example23', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', '12/12/2003'),
(24, 'Lũy Trụ Lượng Tử', 'luy-tru-luong-tu', NULL, 'active', '2024-12-30 22:40:00', '2025-01-15 11:00:06', 'Lũy Trụ Lượng Tử - Một Kiệt Tác của James Lockwood', 'Khám phá Lũy Trụ Lượng Tử, bộ phim khoa học viễn tưởng đầy kịch tính của James Lockwood, nơi các nhân vật phải đối mặt với những hiện tượng vượt thời gian, với sự tham gia của Emily Carter.', '{\"time\":1735630778711,\"blocks\":[{\"id\":\"quantum1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Khoa Học của \\\"Lũy Trụ Lượng Tử\\\"\",\"level\":2}},{\"id\":\"quantum2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lũy Trụ Lượng Tử là một bộ phim khoa học viễn tưởng đầy kịch tính, nơi các nhân vật chính phải vượt qua những thử thách vượt thời gian để khám phá bí ẩn của lượng tử. Với cốt truyện đầy cảm hứng và hiệu ứng hình ảnh tuyệt vời, bộ phim này mang đến một trải nghiệm không thể quên cho khán giả.\"}},{\"id\":\"quantum3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Lũy Trụ Lượng Tử\\\"\",\"level\":3}},{\"id\":\"quantum4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Khoa Học Viễn Tưởng, Phiêu LưuDirector: James LockwoodNgày phát hành: July 20, 2024Đánh giá: PG\"}},{\"id\":\"quantum5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lũy Trụ Lượng Tử đưa người xem vào một thế giới nơi khoa học và phiêu lưu giao thoa. Câu chuyện tập trung vào Dr. Ethan Miles, một nhà vật lý lượng tử, người dẫn đầu một nhóm nghiên cứu trong nhiệm vụ khám phá các hiện tượng lượng tử bất thường có thể thay đổi hiểu biết của chúng ta về vũ trụ.\"}},{\"id\":\"quantum6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_quantum_drift.jpg\",\"caption\":\"photo_quantum_drift.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"quantum7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"quantum8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Khoa Học Viễn Tưởng Đầy Kịch Tính: Lũy Trụ Lượng Tử mang đến một câu chuyện khoa học viễn tưởng đầy cảm hứng và kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất xuất sắc, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Tuyệt Vời: Với những hiệu ứng hình ảnh tuyệt đẹp và bản nhạc cảm xúc, Lũy Trụ Lượng Tử tạo nên một trải nghiệm thị giác và âm thanh hoàn hảo.\"}]}},{\"id\":\"quantum9\",\"type\":\"quote\",\"data\":{\"text\":\"Lũy Trụ Lượng Tử mang đến một câu chuyện khoa học viễn tưởng đầy cảm hứng và kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\",\"caption\":\"Một Cốt Truyện Khoa Học Viễn Tưởng Đầy Kịch Tính:\",\"alignment\":\"left\"}},{\"id\":\"quantum10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"quantum11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu khoa học viễn tưởng này:\"}},{\"id\":\"quantum12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Dr. Ethan Miles\",\"Emily Carter\",\"Nhà vật lý lượng tử dẫn đầu nghiên cứu\"],[\"Liam Turner\",\"Liam Turner\",\"Kỹ sư chuyên gia hệ thống\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Nhà khoa học hỗ trợ phân tích dữ liệu\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Giáo sư hướng dẫn nghiên cứu\"]]}},{\"id\":\"quantum13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Lũy Trụ Lượng Tử\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"quantum14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Khoa Học Viễn Tưởng: Nếu bạn yêu thích những bộ phim như Interstellar hoặc The Martian, Lũy Trụ Lượng Tử sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về khám phá, đoàn kết và tinh thần con người trong việc vượt qua thử thách.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những pha hành động căng thẳng đến những khám phá kỳ thú, Lũy Trụ Lượng Tử giữ cho bạn luôn trong trạng thái hứng thú và hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"quantum16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"quantum17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim khoa học viễn tưởng truyền cảm hứng với cốt truyện hấp dẫn và diễn xuất xuất sắc.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm phiêu lưu không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa hành động và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"quantum18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"quantum19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Lũy Trụ Lượng Tử không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy cảm hứng, kịch tính và những khám phá. Hãy ghi chú ngày July 20, 2024 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích khoa học viễn tưởng, một người đam mê phiêu lưu, hay chỉ đơn giản là tìm kiếm một trải nghiệm điện ảnh đầy cảm xúc, Lũy Trụ Lượng Tử đều có thứ dành cho mọi người.\"}},{\"id\":\"quantum20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đừng bỏ lỡ!\"}}],\"version\":\"2.30.7\"}', '{\"id\":188,\"name\":\"feature-6.jpg\",\"path\":\"2024/12/31/feature-6.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 8, 8, 8, 'Dr. Ethan Miles (Emily Carter) leads a team of scientists on a mission to uncover quantum anomalies that could revolutionize our understanding of the universe.', 140, 'Showing', 1375680, '1', 'English', 'https://www.youtube.com/watch?v=example24', 'yes', 'tvseries', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', '12/12/2003'),
(25, 'Cuộc Chiến Thiên Hà', 'cuoc-chien-thien-ha', NULL, 'active', '2024-12-30 22:40:00', '2025-01-15 11:03:47', 'Cuộc Chiến Thiên Hà - Một Kiệt Tác của James Lockwood', 'Khám phá Cuộc Chiến Thiên Hà, bộ phim hành động khoa học viễn tưởng của James Lockwood, nơi các nhân vật chiến đấu trên không gian, với sự tham gia của Emily Carter.', '{\"time\":1735657040915,\"blocks\":[{\"id\":\"celestial1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Khoa Học của \\\"Cuộc Chiến Thiên Hà\\\"\",\"level\":2}},{\"id\":\"celestial2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Cuộc Chiến Thiên Hà là một bộ phim hành động khoa học viễn tưởng, nơi các nhân vật chính phải đối mặt với những cuộc chiến tranh trên không gian để bảo vệ Trái Đất khỏi các thế lực đen tối. Với cốt truyện đầy kịch tính và những pha hành động ngoạn mục, bộ phim này mang đến một trải nghiệm không thể quên cho khán giả.\"}},{\"id\":\"celestial3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Cuộc Chiến Thiên Hà\\\"\",\"level\":3}},{\"id\":\"celestial4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Hành Động, Khoa Học Viễn TưởngDirector: James LockwoodNgày phát hành: August 12, 2024Đánh giá: PG-13\"}},{\"id\":\"celestial5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Cuộc Chiến Thiên Hà đưa người xem vào một thế giới nơi khoa học và chiến tranh giao thoa. Câu chuyện tập trung vào Captain Leo Anderson, một binh sĩ dũng cảm, người dẫn đầu một đội ngũ trong nhiệm vụ bảo vệ Trái Đất khỏi sự xâm lược của các thế lực đen tối từ thiên hà xa xôi.\"}},{\"id\":\"celestial6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_celestial_wars.jpg\",\"caption\":\"photo_celestial_wars.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"celestial7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"celestial8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Hành Động Đầy Kịch Tính: Cuộc Chiến Thiên Hà mang đến một câu chuyện hành động khoa học viễn tưởng đầy cảm hứng và kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất xuất sắc, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Tuyệt Vời: Với những hiệu ứng hình ảnh ngoạn mục và bản nhạc cảm xúc, Cuộc Chiến Thiên Hà tạo nên một trải nghiệm thị giác và âm thanh hoàn hảo.\"}]}},{\"id\":\"celestial9\",\"type\":\"quote\",\"data\":{\"text\":\"Cuộc Chiến Thiên Hà mang đến một câu chuyện hành động khoa học viễn tưởng đầy cảm hứng và kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\",\"caption\":\"Một Cốt Truyện Hành Động Đầy Kịch Tính:\",\"alignment\":\"left\"}},{\"id\":\"celestial10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"celestial11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu hành động khoa học viễn tưởng này:\"}},{\"id\":\"celestial12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Captain Leo Anderson\",\"Emily Carter\",\"Binh sĩ dũng cảm dẫn đầu nhiệm vụ bảo vệ Trái Đất\"],[\"Liam Turner\",\"Liam Turner\",\"Kỹ sư vũ khí chuyên gia\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Nhà khoa học nghiên cứu công nghệ mới\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Giáo sư hướng dẫn nghiên cứu\"]]}},{\"id\":\"celestial13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Cuộc Chiến Thiên Hà\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"celestial14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Hành Động: Nếu bạn yêu thích những bộ phim như The Matrix hoặc Star Wars, Cuộc Chiến Thiên Hà sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về khoa học, chiến tranh và tinh thần con người trong việc bảo vệ Trái Đất.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những pha hành động căng thẳng đến những cuộc chiến trên không gian, Cuộc Chiến Thiên Hà giữ cho bạn luôn trong trạng thái hứng thú và hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"celestial16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"celestial17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim hành động khoa học viễn tưởng xuất sắc với câu chuyện hấp dẫn và diễn xuất mạnh mẽ.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm hành động không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa hành động và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"celestial18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"celestial19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Cuộc Chiến Thiên Hà không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy cảm hứng, kịch tính và những khám phá. Hãy ghi chú ngày July 20, 2024 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích khoa học viễn tưởng, một người đam mê hành động, hay chỉ đơn giản là tìm kiếm một trải nghiệm điện ảnh đầy cảm xúc, Cuộc Chiến Thiên Hà đều có thứ dành cho mọi người.\"}},{\"id\":\"celestial20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đừng bỏ lỡ!\"}}],\"version\":\"2.30.7\"}', '{\"id\":189,\"name\":\"feature-7.jpg\",\"path\":\"2024/12/31/feature-7.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 3, 3, 3, 'Captain Leo Anderson (Emily Carter) leads a team of soldiers to protect Earth from dark forces invading from distant galaxies.', 145, 'Showing', 1375683, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', '12/12/2003');
INSERT INTO `fast_posts_movie_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `description`, `duration`, `movie_status`, `imdb_id`, `adult`, `original_language`, `trailer`, `cinema`, `movie_type`, `chapter_total`, `quality`, `showtimes`, `like_count`, `banner`, `release_date`) VALUES
(26, 'Vòng Lặp Vô Hạn', 'vong-lap-vo-han', NULL, 'active', '2024-12-30 22:40:00', '2025-01-13 18:02:46', 'Vòng Lặp Vô Hạn - Một Kiệt Tác của James Lockwood', 'Khám phá Vòng Lặp Vô Hạn, bộ phim khoa học viễn tưởng hấp dẫn của James Lockwood, nơi các nhân vật bị mắc kẹt trong một vòng lặp thời gian, với sự tham gia của Emily Carter.', '{\"time\":1735630741557,\"blocks\":[{\"id\":\"infinity1\",\"type\":\"header\",\"data\":{\"text\":\"Khám Phá Sự Phức Tạp của \\\"Vòng Lặp Vô Hạn\\\"\",\"level\":2}},{\"id\":\"infinity2\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vòng Lặp Vô Hạn là một bộ phim khoa học viễn tưởng hấp dẫn, nơi các nhân vật chính bị mắc kẹt trong một vòng lặp thời gian, cố gắng tìm cách thoát khỏi nó. Với cốt truyện phức tạp và các pha quay phim đầy kịch tính, bộ phim này mang đến một trải nghiệm điện ảnh không thể quên cho khán giả.\"}},{\"id\":\"infinity3\",\"type\":\"header\",\"data\":{\"text\":\"Tổng Quan về \\\"Vòng Lặp Vô Hạn\\\"\",\"level\":3}},{\"id\":\"infinity4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Thể loại: Khoa Học Viễn Tưởng, Tâm LýDirector: James LockwoodNgày phát hành: September 18, 2024Đánh giá: PG-13\"}},{\"id\":\"infinity5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vòng Lặp Vô Hạn đưa người xem vào một thế giới nơi thời gian không tuân theo quy luật, buộc các nhân vật phải đối mặt với những quyết định khó khăn và khám phá bản thân. Câu chuyện tập trung vào Dr. Olivia Hart, một nhà vật lý thời gian, người cố gắng giải mã nguyên nhân của vòng lặp và tìm cách thoát khỏi nó để cứu lấy bản thân và những người thân yêu.\"}},{\"id\":\"infinity6\",\"type\":\"customImage\",\"data\":{\"url\":\"https://cms.vn/uploads/2024/12/25//photo_infinity_loop.jpg\",\"caption\":\"photo_infinity_loop.jpg\",\"withBorder\":false,\"withBackground\":false,\"stretched\":false}},{\"id\":\"infinity7\",\"type\":\"header\",\"data\":{\"text\":\"Lý Do Hàng Đầu Để Xem\",\"level\":2}},{\"id\":\"infinity8\",\"type\":\"list\",\"data\":{\"style\":\"ordered\",\"meta\":{\"counterType\":\"numeric\"},\"items\":[{\"content\":\"Một Cốt Truyện Phức Tạp: Vòng Lặp Vô Hạn mang đến một câu chuyện khoa học viễn tưởng phức tạp và đầy kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\"},{\"content\":\"Diễn Xuất Đỉnh Cao: Emily Carter và Liam Turner mang đến những màn diễn xuất xuất sắc, làm sống động các nhân vật và tăng thêm sự hấp dẫn cho bộ phim.\"},{\"content\":\"Hình Ảnh và Âm Thanh Tuyệt Vời: Với những hiệu ứng hình ảnh tuyệt đẹp và bản nhạc cảm xúc, Vòng Lặp Vô Hạn tạo nên một trải nghiệm thị giác và âm thanh hoàn hảo.\"}]}},{\"id\":\"infinity9\",\"type\":\"quote\",\"data\":{\"text\":\"Vòng Lặp Vô Hạn mang đến một câu chuyện khoa học viễn tưởng phức tạp và đầy kịch tính, giữ cho bạn luôn hứng thú suốt bộ phim.\",\"caption\":\"Một Cốt Truyện Phức Tạp:\",\"alignment\":\"left\"}},{\"id\":\"infinity10\",\"type\":\"header\",\"data\":{\"text\":\"Gặp Gỡ Các Nhân Vật\",\"level\":2}},{\"id\":\"infinity11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Bảng dưới đây giới thiệu các nhân vật chính và vai trò của họ trong cuộc phiêu lưu khoa học viễn tưởng này:\"}},{\"id\":\"infinity12\",\"type\":\"table\",\"data\":{\"withHeadings\":true,\"stretched\":false,\"content\":[[\"Nhân Vật\",\"Diễn Viên\",\"Vai Trò\"],[\"Dr. Olivia Hart\",\"Emily Carter\",\"Nhà vật lý thời gian cố gắng giải mã vòng lặp\"],[\"Liam Turner\",\"Liam Turner\",\"Kỹ sư công nghệ hỗ trợ Olivia\"],[\"Mia Nguyen\",\"Sophia Nguyen\",\"Nhà nghiên cứu phân tích dữ liệu\"],[\"Prof. Alan Smith\",\"Richard Hawkins\",\"Giáo sư hướng dẫn nghiên cứu\"]]}},{\"id\":\"infinity13\",\"type\":\"header\",\"data\":{\"text\":\"Điều Gì Làm Cho \\\"Vòng Lặp Vô Hạn\\\" Đặc Biệt?\",\"level\":4}},{\"id\":\"infinity14\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"Hoàn Hảo Cho Người Yêu Khoa Học Viễn Tưởng: Nếu bạn yêu thích những bộ phim như Inception hoặc Interstellar, Vòng Lặp Vô Hạn sẽ là lựa chọn tuyệt vời cho bạn.\",\"meta\":{},\"items\":[]},{\"content\":\"Chủ Đề Sâu Sắc: Bộ phim khám phá những chủ đề về khoa học, thời gian và tinh thần con người trong việc vượt qua thử thách.\",\"meta\":{},\"items\":[]},{\"content\":\"Hồi Hộp Không Ngừng: Từ những pha hành động căng thẳng đến những khám phá khoa học thú vị, Vòng Lặp Vô Hạn giữ cho bạn luôn trong trạng thái hứng thú và hồi hộp.\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity15\",\"type\":\"header\",\"data\":{\"text\":\"Đánh Giá Từ Chuyên Gia\",\"level\":2}},{\"id\":\"infinity16\",\"type\":\"paragraph\",\"data\":{\"text\":\"Các nhà phê bình đã ca ngợi bộ phim:\"}},{\"id\":\"infinity17\",\"type\":\"list\",\"data\":{\"style\":\"unordered\",\"meta\":{},\"items\":[{\"content\":\"\\\"Một bộ phim khoa học viễn tưởng truyền cảm hứng với cốt truyện hấp dẫn và diễn xuất xuất sắc.\\\" - Film Critic Today\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Một trải nghiệm phiêu lưu không thể quên.\\\" - Hollywood Buzz\",\"meta\":{},\"items\":[]},{\"content\":\"\\\"Sự kết hợp hoàn hảo giữa khoa học và cảm xúc.\\\" - Movie Insider\",\"meta\":{},\"items\":[]}]}},{\"id\":\"infinity18\",\"type\":\"header\",\"data\":{\"text\":\"结论\",\"level\":3}},{\"id\":\"infinity19\",\"type\":\"paragraph\",\"data\":{\"text\":\"Vòng Lặp Vô Hạn không chỉ là một bộ phim—nó là một hành trình vào vùng đất không biết, đầy cảm hứng, kịch tính và những khám phá. Hãy ghi chú ngày September 18, 2024 vào lịch trình của bạn và chuẩn bị bị cuốn hút bởi một trong những bộ phim thú vị nhất của năm. Dù bạn là người yêu thích khoa học viễn tưởng, một người đam mê hành động, hay chỉ đơn giản là tìm kiếm một trải nghiệm điện ảnh đầy cảm xúc, Vòng Lặp Vô Hạn đều có thứ dành cho mọi người.\"}},{\"id\":\"infinity20\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đừng bỏ lỡ!\"}}],\"version\":\"2.30.7\"}', '{\"id\":190,\"name\":\"feature-1.jpg\",\"path\":\"2024/12/31/feature-1.jpg\",\"resize\":\"150x150;333x500\"}', 1, 6, 27, 2, 2, 2, 'Dr. Olivia Hart (Emily Carter) is trapped in a time loop and must unravel the mystery to escape and save herself and her loved ones.', 150, 'Showing', 1375685, '1', 'English', 'https://www.youtube.com/watch?v=example25', 'yes', 'tvshow', 10, 'fhd', 'Available in selected theaters.', 1, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', '12/12/2003');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_chapter_cn`
--

CREATE TABLE `fast_posts_novel_chapter_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `index` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_chapter_cn`
--

INSERT INTO `fast_posts_novel_chapter_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `index`) VALUES
(1, '小说章节 1', 'xiao-shuo-jie-ji-1', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 1', 'SEO 描述', '{\"time\":1735631662594,\"blocks\":[{\"id\":\"e81zIAvVE8\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 她正在休假，无事可做，于是决定阅读，见证了配角白明秋悲惨的一生。\"}},{\"id\":\"fTO58sn2B4\",\"type\":\"paragraph\",\"data\":{\"text\":\"从她三个月前搬进来到现在，她一次也没有让朱林触碰自己。朱林喜欢这位来自城市的受过教育的年轻人白明秋，作为原主人，总是努力满足原主人的所有要求，尽管晚上必须独自躺在摇晃的地床上翻来覆去，但从未动过原主人的一根手指。\"}},{\"id\":\"Kibd3CGBnU\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 1),
(2, '小说章节 2', 'xiao-shuo-jie-ji-2', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 2', 'SEO 描述', '{\"time\":1735631662595,\"blocks\":[{\"id\":\"e81zIAvVE9\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 2。\"}},{\"id\":\"fTO58sn2B5\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 2 的故事延续。朱林继续欣赏白明秋，努力满足原主人的所有要求，尽管面临许多挑战.\'}},{\"id\":\"Kibd3CGBnV\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 2\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 2),
(3, '小说章节 3', 'xiao-shuo-jie-ji-3', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 3', 'SEO 描述', '{\"time\":1735631662596,\"blocks\":[{\"id\":\"e81zIAvVEA\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 3。\"}},{\"id\":\"fTO58sn2B6\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 3 的故事延续。朱林面对新的挑战，努力满足原主人的要求.\'}},{\"id\":\"Kibd3CGBnW\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 3\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 3),
(4, '小说章节 4', 'xiao-shuo-jie-ji-4', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 4', 'SEO 描述', '{\"time\":1735631662597,\"blocks\":[{\"id\":\"e81zIAvVEB\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 4。\"}},{\"id\":\"fTO58sn2B7\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 4 的故事延续。朱林探索白明秋角色的新方面.\'}},{\"id\":\"Kibd3CGBnX\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 4\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 4),
(5, '小说章节 5', 'xiao-shuo-jie-ji-5', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 5', 'SEO 描述', '{\"time\":1735631662598,\"blocks\":[{\"id\":\"e81zIAvVEC\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 5。\"}},{\"id\":\"fTO58sn2B8\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 5 的故事延续。朱林与原主人的关系在不断增加的紧张中加深.\'}},{\"id\":\"Kibd3CGBnY\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 5\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 5),
(6, '小说章节 6', 'xiao-shuo-jie-ji-6', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 6', 'SEO 描述', '{\"time\":1735631662599,\"blocks\":[{\"id\":\"e81zIAvVED\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 6。\"}},{\"id\":\"fTO58sn2B9\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 6 的故事延续。朱林面对无法预见的挑战，测试了他的决心和忠诚.\'}},{\"id\":\"Kibd3CGBnZ\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 6\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 6),
(7, '小说章节 7', 'xiao-shuo-jie-ji-7', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 7', 'SEO 描述', '{\"time\":1735631662600,\"blocks\":[{\"id\":\"e81zIAvVEE\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 7。\"}},{\"id\":\"fTO58sn2B10\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 7 的故事延续。朱林遇到无法预见的障碍，挑战了他对原主人的请求的奉献精神.\'}},{\"id\":\"Kibd3CGBnAA\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 7\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 7),
(8, '小说章节 8', 'xiao-shuo-jie-ji-8', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 8', 'SEO 描述', '{\"time\":1735631662601,\"blocks\":[{\"id\":\"e81zIAvVEF\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 8。\"}},{\"id\":\"fTO58sn2B11\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 8 的故事延续。朱林的韧性在新的联盟形成和旧的冲突重新出现时受到考验.\'}},{\"id\":\"Kibd3CGBnAB\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 8\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 8),
(9, '小说章节 9', 'xiao-shuo-jie-ji-9', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 9', 'SEO 描述', '{\"time\":1735631662602,\"blocks\":[{\"id\":\"e81zIAvVEG\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 9。\"}},{\"id\":\"fTO58sn2B12\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 9 的故事延续。朱林的战略思维引导到关键时刻，重塑了角色之间的动态.\'}},{\"id\":\"Kibd3CGBnAC\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 9\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 9),
(10, '小说章节 10', 'xiao-shuo-jie-ji-10', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', '小说章节 10', 'SEO 描述', '{\"time\":1735631662603,\"blocks\":[{\"id\":\"e81zIAvVEH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; 内容为小说章节 10。\"}},{\"id\":\"fTO58sn2B13\",\"type\":\"paragraph\",\"data\":{\"text\":\"小说章节 10 的故事延续。朱林面临迄今为止最大的挑战，推动他到极限并迫使他做出艰难的决定.\'}},{\"id\":\"Kibd3CGBnAD\",\"type\":\"paragraph\",\"data\":{\"text\":\".... 小说内容章节 10\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_chapter_en`
--

CREATE TABLE `fast_posts_novel_chapter_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `index` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_chapter_en`
--

INSERT INTO `fast_posts_novel_chapter_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `index`) VALUES
(1, 'Novel Chapter 1', 'novel-chapter-1', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Novel Chapter 1', 'SEO description', '{\"time\":1735631662594,\"blocks\":[{\"id\":\"e81zIAvVE8\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; She is on vacation, idle without anything to do, so she decides to read, and sees the tragic life of the supporting female character Bạch Minh Châu.\"}},{\"id\":\"fTO58sn2B4\",\"type\":\"paragraph\",\"data\":{\"text\":\"From the time she moved in three months ago until now, she has not allowed Chu Lam to touch her even once. Chu Lam likes the white swan, an educated young man from the city who is the original owner, always trying to meet all the original owner\'s requests, even though he has to lie alone on a moving earth bed at night, rolling over but never touching the original owner\'s finger.\"}},{\"id\":\"Kibd3CGBnU\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 1),
(2, 'Novel Chapter 2', 'novel-chapter-2', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:59', 'Novel Chapter 2', 'SEO description', '{\"time\":1735632284426,\"blocks\":[{\"id\":\"e81zIAvVE9\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 2.\"}},{\"id\":\"fTO58sn2B5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 2. Chu Lam continues to admire the white swan, striving to meet all the original owner\'s requests despite the challenges.\"}},{\"id\":\"Kibd3CGBnV\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 2\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 2),
(3, 'Novel Chapter 3', 'novel-chapter-3', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:50', 'Novel Chapter 3', 'SEO description', '{\"time\":1735632283535,\"blocks\":[{\"id\":\"e81zIAvVEA\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 3.\"}},{\"id\":\"fTO58sn2B6\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 3. Chu Lam faces new challenges while maintaining his dedication to the original owner\'s requests.\"}},{\"id\":\"Kibd3CGBnW\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 3\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 3),
(4, 'Novel Chapter 4', 'novel-chapter-4', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:42', 'Novel Chapter 4', 'SEO description', '{\"time\":1735632282989,\"blocks\":[{\"id\":\"e81zIAvVEB\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 4.\"}},{\"id\":\"fTO58sn2B7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 4. Chu Lam discovers new aspects of the white swan\'s character.\"}},{\"id\":\"Kibd3CGBnX\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 4\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 4),
(5, 'Novel Chapter 5', 'novel-chapter-5', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:34', 'Novel Chapter 5', 'SEO description', '{\"time\":1735632282150,\"blocks\":[{\"id\":\"e81zIAvVEC\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 5.\"}},{\"id\":\"fTO58sn2B8\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 5. Chu Lam\'s relationship with the original owner deepens amidst growing tensions.\"}},{\"id\":\"Kibd3CGBnY\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 5\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 5),
(6, 'Novel Chapter 6', 'novel-chapter-6', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:27', 'Novel Chapter 6', 'SEO description', '{\"time\":1735632281166,\"blocks\":[{\"id\":\"e81zIAvVED\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 6.\"}},{\"id\":\"fTO58sn2B9\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 6. Chu Lam confronts unforeseen challenges that test his resolve and loyalty.\"}},{\"id\":\"Kibd3CGBnZ\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 6\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 6),
(7, 'Novel Chapter 7', 'novel-chapter-7', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:19', 'Novel Chapter 7', 'SEO description', '{\"time\":1735632280702,\"blocks\":[{\"id\":\"e81zIAvVEE\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 7.\"}},{\"id\":\"fTO58sn2B10\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 7. Chu Lam encounters unforeseen obstacles that challenge his dedication to the original owner\'s requests.\"}},{\"id\":\"Kibd3CGBnAA\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 7\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 7),
(8, 'Novel Chapter 8', 'novel-chapter-8', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:10', 'Novel Chapter 8', 'SEO description', '{\"time\":1735632280015,\"blocks\":[{\"id\":\"e81zIAvVEF\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 8.\"}},{\"id\":\"fTO58sn2B11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 8. Chu Lam\'s resilience is put to the test as new alliances form and old conflicts resurface.\"}},{\"id\":\"Kibd3CGBnAB\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 8\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 8),
(9, 'Novel Chapter 9', 'novel-chapter-9', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:05:03', 'Novel Chapter 9', 'SEO description', '{\"time\":1735632279342,\"blocks\":[{\"id\":\"e81zIAvVEG\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 9.\"}},{\"id\":\"fTO58sn2B12\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 9. Chu Lam\'s strategic thinking leads to pivotal moments that reshape the dynamics between the characters.\"}},{\"id\":\"Kibd3CGBnAC\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 9\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 9),
(10, 'Novel Chapter 10', 'novel-chapter-10', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:04:52', 'Novel Chapter 10', 'SEO description', '{\"time\":1735631662603,\"blocks\":[{\"id\":\"e81zIAvVEH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Content for Novel Chapter 10.\"}},{\"id\":\"fTO58sn2B13\",\"type\":\"paragraph\",\"data\":{\"text\":\"Continuation of the story in Chapter 10. Chu Lam faces his greatest challenge yet, pushing him to his limits and forcing him to make difficult decisions.\'}},{\"id\":\"Kibd3CGBnAD\",\"type\":\"paragraph\",\"data\":{\"text\":\".... story content chapter 10\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_chapter_rel`
--

CREATE TABLE `fast_posts_novel_chapter_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_chapter_rel`
--

INSERT INTO `fast_posts_novel_chapter_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(1, NULL, 1, 'all', 'novel', 1735192193913, 1, '2024-12-26 13:13:51', '2024-12-26 13:13:51'),
(3, NULL, 1, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(4, NULL, 1, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(5, NULL, 1, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(6, NULL, 1, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(7, NULL, 1, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(8, NULL, 1, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(9, NULL, 1, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(10, NULL, 1, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(11, NULL, 1, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(12, NULL, 1, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:01:47', '2024-12-31 15:01:47'),
(13, NULL, 10, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(14, NULL, 10, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(15, NULL, 10, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(16, NULL, 10, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(17, NULL, 10, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(18, NULL, 10, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(19, NULL, 10, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(20, NULL, 10, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(21, NULL, 10, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(22, NULL, 10, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:04:52', '2024-12-31 15:04:52'),
(23, NULL, 9, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(24, NULL, 9, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(25, NULL, 9, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(26, NULL, 9, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(27, NULL, 9, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(28, NULL, 9, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(29, NULL, 9, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(30, NULL, 9, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(31, NULL, 9, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(32, NULL, 9, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:03', '2024-12-31 15:05:03'),
(33, NULL, 8, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:10', '2024-12-31 15:05:10'),
(34, NULL, 8, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:10', '2024-12-31 15:05:10'),
(35, NULL, 8, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:10', '2024-12-31 15:05:10'),
(36, NULL, 8, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:10', '2024-12-31 15:05:10'),
(37, NULL, 8, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:10', '2024-12-31 15:05:10'),
(38, NULL, 8, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:11', '2024-12-31 15:05:11'),
(39, NULL, 8, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:11', '2024-12-31 15:05:11'),
(40, NULL, 8, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:11', '2024-12-31 15:05:11'),
(41, NULL, 8, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:11', '2024-12-31 15:05:11'),
(42, NULL, 8, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:11', '2024-12-31 15:05:11'),
(43, NULL, 7, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(44, NULL, 7, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(45, NULL, 7, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(46, NULL, 7, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(47, NULL, 7, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(48, NULL, 7, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(49, NULL, 7, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(50, NULL, 7, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(51, NULL, 7, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(52, NULL, 7, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:19', '2024-12-31 15:05:19'),
(53, NULL, 6, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(54, NULL, 6, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(55, NULL, 6, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(56, NULL, 6, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(57, NULL, 6, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(58, NULL, 6, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(59, NULL, 6, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(60, NULL, 6, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(61, NULL, 6, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(62, NULL, 6, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:27', '2024-12-31 15:05:27'),
(63, NULL, 5, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(64, NULL, 5, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(65, NULL, 5, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(66, NULL, 5, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(67, NULL, 5, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(68, NULL, 5, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(69, NULL, 5, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(70, NULL, 5, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(71, NULL, 5, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:34', '2024-12-31 15:05:34'),
(72, NULL, 4, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(73, NULL, 4, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(74, NULL, 4, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(75, NULL, 4, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(76, NULL, 4, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(77, NULL, 4, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(78, NULL, 4, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(79, NULL, 4, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(80, NULL, 4, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(81, NULL, 4, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:42', '2024-12-31 15:05:42'),
(82, NULL, 3, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(83, NULL, 3, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(84, NULL, 3, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(85, NULL, 3, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(86, NULL, 3, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(87, NULL, 3, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(88, NULL, 3, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(89, NULL, 3, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(90, NULL, 3, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(91, NULL, 3, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:50', '2024-12-31 15:05:50'),
(92, NULL, 2, 'all', 'novel', 1735562557596, 20, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(93, NULL, 2, 'all', 'novel', 1735562557596, 21, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(94, NULL, 2, 'all', 'novel', 1735562557596, 22, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(95, NULL, 2, 'all', 'novel', 1735562557596, 23, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(96, NULL, 2, 'all', 'novel', 1735562557596, 24, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(97, NULL, 2, 'all', 'novel', 1735562557596, 25, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(98, NULL, 2, 'all', 'novel', 1735562557596, 26, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(99, NULL, 2, 'all', 'novel', 1735562557596, 27, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(100, NULL, 2, 'all', 'novel', 1735562557596, 28, '2024-12-31 15:05:59', '2024-12-31 15:05:59'),
(101, NULL, 2, 'all', 'novel', 1735562557596, 30, '2024-12-31 15:05:59', '2024-12-31 15:05:59');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_chapter_vi`
--

CREATE TABLE `fast_posts_novel_chapter_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `feature` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `index` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_chapter_vi`
--

INSERT INTO `fast_posts_novel_chapter_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `feature`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `index`) VALUES
(1, 'Truyện chữ chương 1', 'truyen-chu-truong-1', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 15:01:47', 'Truyện chữ chương 1', 'Mô tả SEO', '{\"time\":1735632063884,\"blocks\":[{\"id\":\"e81zIAvVE8\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Cô đang được nghỉ phép, nhàn rỗi không có chuyện gì liền đi đọc thử, cũng nhìn thấy cả đời đầy bi kịch của nữ phụ Bạch Minh Châu.\"}},{\"id\":\"fTO58sn2B4\",\"type\":\"paragraph\",\"data\":{\"text\":\"Từ lần động phòng ở ba tháng trước cho tới nay liền không cho Chu Lâm chạm vào mình lần nào nữa. Chu Lâm thích con thiên nga trắng thanh niên trí thức từ trong thành tới là nguyên chủ, luôn cố gắng đáp ứng mọi yêu cầu của nguyên chủ, mặc dù ban đêm phải nằm một mình ở trên giường đất xao động tới lăn qua lộn lại thì cũng chưa từng động vào một đầu ngón tay của nguyên chủ.\"}},{\"id\":\"Kibd3CGBnU\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 1),
(2, 'Truyện chữ chương 2', 'truyen-chu-truong-2', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 2', 'Mô tả SEO', '{\"time\":1735631662595,\"blocks\":[{\"id\":\"e81zIAvVE9\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 2.\"}},{\"id\":\"fTO58sn2B5\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 2. Chu Lâm tiếp tục ngưỡng mộ con thiên nga trắng, nỗ lực đáp ứng mọi yêu cầu của nguyên chủ dù gặp nhiều thách thức.\"}},{\"id\":\"Kibd3CGBnV\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 2\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 2),
(3, 'Truyện chữ chương 3', 'truyen-chu-truong-3', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 3', 'Mô tả SEO', '{\"time\":1735631662596,\"blocks\":[{\"id\":\"e81zIAvVEA\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 3.\"}},{\"id\":\"fTO58sn2B6\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 3. Chu Lâm đối mặt với những thách thức mới trong nỗ lực đáp ứng yêu cầu của nguyên chủ.\'}},{\"id\":\"Kibd3CGBnW\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 3\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 3),
(4, 'Truyện chữ chương 4', 'truyen-chu-truong-4', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 4', 'Mô tả SEO', '{\"time\":1735631662597,\"blocks\":[{\"id\":\"e81zIAvVEB\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 4.\"}},{\"id\":\"fTO58sn2B7\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 4. Chu Lâm khám phá các khía cạnh mới của nhân vật con thiên nga trắng.\'}},{\"id\":\"Kibd3CGBnX\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 4\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 4),
(5, 'Truyện chữ chương 5', 'truyen-chu-truong-5', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 5', 'Mô tả SEO', '{\"time\":1735631662598,\"blocks\":[{\"id\":\"e81zIAvVEC\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 5.\"}},{\"id\":\"fTO58sn2B8\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 5. Chu Lâm\'s mối quan hệ với nguyên chủ trở nên sâu sắc hơn giữa những căng thẳng gia tăng.\'}},{\"id\":\"Kibd3CGBnY\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 5\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 5),
(6, 'Truyện chữ chương 6', 'truyen-chu-truong-6', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 6', 'Mô tả SEO', '{\"time\":1735631662599,\"blocks\":[{\"id\":\"e81zIAvVED\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 6.\"}},{\"id\":\"fTO58sn2B9\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 6. Chu Lâm đối mặt với những thách thức không lường trước được, thử thách quyết tâm và lòng trung thành của mình.\'}},{\"id\":\"Kibd3CGBnZ\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 6\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 6),
(7, 'Truyện chữ chương 7', 'truyen-chu-truong-7', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 7', 'Mô tả SEO', '{\"time\":1735631662600,\"blocks\":[{\"id\":\"e81zIAvVEE\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 7.\"}},{\"id\":\"fTO58sn2B10\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 7. Chu Lâm gặp phải những chướng ngại không lường trước được, thử thách sự cống hiến của anh đối với yêu cầu của nguyên chủ.\'}},{\"id\":\"Kibd3CGBnAA\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 7\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 7),
(8, 'Truyện chữ chương 8', 'truyen-chu-truong-8', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 8', 'Mô tả SEO', '{\"time\":1735631662601,\"blocks\":[{\"id\":\"e81zIAvVEF\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 8.\"}},{\"id\":\"fTO58sn2B11\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 8. Sự kiên cường của Chu Lâm được kiểm tra khi các liên minh mới hình thành và các xung đột cũ tái xuất.\'}},{\"id\":\"Kibd3CGBnAB\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 8\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 8),
(9, 'Truyện chữ chương 9', 'truyen-chu-truong-9', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 9', 'Mô tả SEO', '{\"time\":1735631662602,\"blocks\":[{\"id\":\"e81zIAvVEG\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 9.\"}},{\"id\":\"fTO58sn2B12\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 9. Tư duy chiến lược của Chu Lâm dẫn đến những khoảnh khắc then chốt thay đổi động lực giữa các nhân vật.\'}},{\"id\":\"Kibd3CGBnAC\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 9\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 9),
(10, 'Truyện chữ chương 10', 'truyen-chu-truong-10', NULL, 'active', '2024-12-26 13:13:51', '2024-12-31 14:54:30', 'Truyện chữ chương 10', 'Mô tả SEO', '{\"time\":1735631662603,\"blocks\":[{\"id\":\"e81zIAvVEH\",\"type\":\"paragraph\",\"data\":{\"text\":\"&nbsp; Nội dung cho Truyện chữ chương 10.\"}},{\"id\":\"fTO58sn2B13\",\"type\":\"paragraph\",\"data\":{\"text\":\"Tiếp nối câu chuyện ở Chương 10. Chu Lâm đối mặt với thách thức lớn nhất đến nay, đẩy anh đến giới hạn và buộc anh phải đưa ra những quyết định khó khăn.\'}},{\"id\":\"Kibd3CGBnAD\",\"type\":\"paragraph\",\"data\":{\"text\":\".... nội dung truyện chương 10\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\"}', 0, 0, 0, 0, 0, 10);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_cn`
--

CREATE TABLE `fast_posts_novel_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_cn`
--

INSERT INTO `fast_posts_novel_cn` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `feature`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(20, '静默森林', 'jingmo-senlin', NULL, 'active', '2024-12-30 10:00:00', '2024-12-31 19:36:10', '静默森林的SEO', '静默森林的SEO描述', '{\"time\":1735631257797,\"blocks\":[{\"id\":\"ghi789\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是静默森林的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '1/1/2024', '一个扣人心弦的故事，讲述了静默森林中的神秘与自然。'),
(21, '时间的阴影', 'shijian-de-yinying', NULL, 'active', '2024-12-30 10:30:00', '2024-12-31 19:36:10', '时间的阴影的SEO', '时间的阴影的SEO描述', '{\"time\":1735631255872,\"blocks\":[{\"id\":\"pqr678\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是时间的阴影的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '15/1/2024', '一个扣人心弦的故事，讲述了时间的阴影中的神秘与自然。'),
(22, '永恒的回声', 'yongheng-de-hui-sheng', NULL, 'active', '2024-12-30 11:00:00', '2024-12-31 19:36:10', '永恒的回声的SEO', '永恒的回声的SEO描述', '{\"time\":1735631254152,\"blocks\":[{\"id\":\"xyz567\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是永恒的回声的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 0, '0', '20/1/2024', '一个迷人的故事，通过永恒的回声交织过去与未来。'),
(23, '低语的阴影', 'diyu-de-yinying', NULL, 'active', '2024-12-30 12:00:00', '2024-12-31 19:36:10', '低语的阴影的SEO', '低语的阴影的SEO描述', '{\"time\":1735631252610,\"blocks\":[{\"id\":\"xyz890\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是低语的阴影的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '30/1/2024', '一个令人毛骨悚然的叙事，探索引导主角穿越黑暗时期的神秘低语。'),
(24, '天体边界', 'tiantai-bianjie', NULL, 'active', '2024-12-30 13:00:00', '2024-12-31 19:36:10', '天体边界的SEO', '天体边界的SEO描述', '{\"time\":1735631250705,\"blocks\":[{\"id\":\"xyz012\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是天体边界的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 0, '0', '10/2/2024', '探索那些未知领域的故事，天体定义了存在的边界。'),
(25, '时间的阴影', 'shijian-de-yinying-2', NULL, 'active', '2024-12-30 14:00:00', '2024-12-31 19:36:10', '时间的阴影的SEO', '时间的阴影的SEO描述', '{\"time\":1735631248814,\"blocks\":[{\"id\":\"pqr678\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是时间的阴影的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 0, '0', '15/1/2024', '一个扣人心弦的故事，讲述了时间的阴影中的神秘与自然。'),
(26, '永恒的回声', 'yongheng-de-hui-sheng-2', NULL, 'active', '2024-12-30 15:00:00', '2024-12-31 19:36:10', '永恒的回声的SEO', '永恒的回声的SEO描述', '{\"time\":1735631247043,\"blocks\":[{\"id\":\"xyz567\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是永恒的回声的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 0, '0', '20/1/2024', '一个迷人的故事，通过永恒的回声交织过去与未来。'),
(27, '神秘的地平线', 'shenmi-de-dipingxian', NULL, 'active', '2024-12-30 16:00:00', '2024-12-31 19:36:10', '神秘的地平线的SEO', '神秘的地平线的SEO描述', '{\"time\":1735631245235,\"blocks\":[{\"id\":\"xyz890\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是神秘的地平线的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '25/1/2024', '一个迷人的旅程，探索那些神秘的地平线，现实与超自然相遇。'),
(28, '天体边界', 'tiantai-bianjie-2', NULL, 'active', '2024-12-30 17:00:00', '2024-12-31 19:36:10', '天体边界的SEO', '天体边界的SEO描述', '{\"time\":1735631243573,\"blocks\":[{\"id\":\"xyz012\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是天体边界的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '10/2/2024', '探索那些未知领域的故事，天体定义了存在的边界。'),
(30, '隐秘的秘密', 'yinmi-de-mimi', NULL, 'active', '2024-12-30 14:00:00', '2024-12-31 19:36:10', '隐秘的秘密的SEO', '隐秘的秘密的SEO描述', '{\"time\":1735631241780,\"blocks\":[{\"id\":\"xyz012\",\"type\":\"paragraph\",\"data\":{\"text\":\"这是隐秘的秘密的中文内容。\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '05/2/2024', '隐秘的秘密揭示了一个普通小镇表面下隐藏的神秘。');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_en`
--

CREATE TABLE `fast_posts_novel_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_en`
--

INSERT INTO `fast_posts_novel_en` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `feature`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(20, 'The Silent Forest', 'the-silent-forest', NULL, 'active', '2024-12-30 10:00:00', '2025-01-04 22:20:32', 'SEO for The Silent Forest', 'Description for The Silent Forest SEO', '{\"time\":1735631258091,\"blocks\":[{\"id\":\"abc123\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of The Silent Forest in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '1/1/2024', 'A gripping tale of mystery and nature in The Silent Forest.'),
(21, 'Shadows of Time', 'shadows-of-time', NULL, 'active', '2024-12-30 10:30:00', '2025-01-04 22:20:26', 'SEO for Shadows of Time', 'Description for Shadows of Time SEO', '{\"time\":1735631256527,\"blocks\":[{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Shadows of Time in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '15/1/2024', 'A journey through the mysterious events that blur the lines between past and present.'),
(22, 'Echoes of Eternity', 'echoes-of-eternity', NULL, 'active', '2024-12-30 11:00:00', '2025-01-04 22:20:22', 'SEO for Echoes of Eternity', 'Description for Echoes of Eternity SEO', '{\"time\":1735631254521,\"blocks\":[{\"id\":\"stu901\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Echoes of Eternity in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 0, '0', '20/1/2024', 'A mesmerizing story that intertwines past and future through the echoes of eternity.'),
(23, 'Whispering Shadows', 'whispering-shadows', NULL, 'active', '2024-12-30 12:00:00', '2025-01-04 22:20:18', 'SEO for Whispering Shadows', 'Description for Whispering Shadows SEO', '{\"time\":1735631252978,\"blocks\":[{\"id\":\"stu234\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Whispering Shadows in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '30/1/2024', 'A haunting narrative exploring the mysterious whispers that guide the protagonist through dark times.'),
(24, 'Celestial Boundaries', 'celestial-boundaries', NULL, 'active', '2024-12-30 13:00:00', '2025-01-04 22:20:15', 'SEO for Celestial Boundaries', 'Description for Celestial Boundaries SEO', '{\"time\":1735631251058,\"blocks\":[{\"id\":\"stu345\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Celestial Boundaries in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 0, '0', '10/2/2024', 'An exploration of the unknown realms where celestial bodies define the boundaries of existence.'),
(25, 'Shadows of Time', 'shadows-of-time-2', NULL, 'active', '2024-12-30 14:00:00', '2025-01-04 22:20:11', 'SEO for Shadows of Time', 'Description for Shadows of Time SEO', '{\"time\":1735631249567,\"blocks\":[{\"id\":\"jkl012\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Shadows of Time in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 0, '0', '15/1/2024', 'A journey through the mysterious events that blur the lines between past and present.'),
(26, 'Echoes of Eternity', 'echoes-of-eternity-2', NULL, 'active', '2024-12-30 15:00:00', '2025-01-04 22:20:06', 'SEO for Echoes of Eternity', 'Description for Echoes of Eternity SEO', '{\"time\":1735631247679,\"blocks\":[{\"id\":\"stu901\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Echoes of Eternity in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 0, '0', '20/1/2024', 'A mesmerizing story that intertwines past and future through the echoes of eternity.'),
(27, 'Mystic Horizons', 'mystic-horizons', NULL, 'active', '2024-12-30 16:00:00', '2025-01-04 22:20:03', 'SEO for Mystic Horizons', 'Description for Mystic Horizons SEO', '{\"time\":1735631246005,\"blocks\":[{\"id\":\"stu678\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Mystic Horizons in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '25/1/2024', 'An enchanting journey exploring the mystical horizons where reality meets the supernatural.'),
(28, 'Celestial Boundaries', 'celestial-boundaries-2', NULL, 'active', '2024-12-30 17:00:00', '2025-01-04 22:19:59', 'SEO for Celestial Boundaries', 'Description for Celestial Boundaries SEO', '{\"time\":1735631244036,\"blocks\":[{\"id\":\"stu456\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Celestial Boundaries in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '10/2/2024', 'An exploration of the unknown realms where celestial bodies define the boundaries of existence.'),
(30, 'Veiled Secrets', 'veiled-secrets', NULL, 'active', '2024-12-30 14:00:00', '2025-01-04 22:19:56', 'SEO for Veiled Secrets', 'Description for Veiled Secrets SEO', '{\"time\":1735631242361,\"blocks\":[{\"id\":\"stu456\",\"type\":\"paragraph\",\"data\":{\"text\":\"This is the content of Veiled Secrets in English.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '05/2/2024', 'Veiled Secrets unfolds the hidden mysteries that lie beneath the surface of an ordinary town.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_rel`
--

CREATE TABLE `fast_posts_novel_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_rel`
--

INSERT INTO `fast_posts_novel_rel` (`id`, `term_id`, `post_id`, `lang`, `postype_slug`, `field_id`, `post_rel_id`, `created_at`, `updated_at`) VALUES
(92, 31, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:10:11', '2025-01-04 22:10:11'),
(93, 37, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:10:11', '2025-01-04 22:10:11'),
(94, 37, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:10:15', '2025-01-04 22:10:15'),
(95, 46, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:10:15', '2025-01-04 22:10:15'),
(96, 43, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:10:17', '2025-01-04 22:10:17'),
(97, 49, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:10:17', '2025-01-04 22:10:17'),
(98, 34, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:10:21', '2025-01-04 22:10:21'),
(99, 49, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:10:21', '2025-01-04 22:10:21'),
(100, 58, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:10:21', '2025-01-04 22:10:21'),
(101, 34, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:10:24', '2025-01-04 22:10:24'),
(102, 40, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:10:24', '2025-01-04 22:10:24'),
(103, 49, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:10:24', '2025-01-04 22:10:24'),
(104, 34, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:10:28', '2025-01-04 22:10:28'),
(105, 40, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:10:28', '2025-01-04 22:10:28'),
(106, 49, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:10:28', '2025-01-04 22:10:28'),
(107, 31, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:10:31', '2025-01-04 22:10:31'),
(108, 40, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:10:31', '2025-01-04 22:10:31'),
(109, 49, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:10:31', '2025-01-04 22:10:31'),
(110, 52, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:10:34', '2025-01-04 22:10:34'),
(111, 55, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:10:34', '2025-01-04 22:10:34'),
(112, 58, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:10:34', '2025-01-04 22:10:34'),
(113, 40, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:10:37', '2025-01-04 22:10:37'),
(114, 43, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:10:37', '2025-01-04 22:10:37'),
(115, 34, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:10:40', '2025-01-04 22:10:40'),
(116, 49, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:10:40', '2025-01-04 22:10:40'),
(117, 247, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:19:56', '2025-01-04 22:19:56'),
(118, 253, 30, 'all', NULL, NULL, NULL, '2025-01-04 22:19:56', '2025-01-04 22:19:56'),
(119, 241, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:19:59', '2025-01-04 22:19:59'),
(120, 244, 28, 'all', NULL, NULL, NULL, '2025-01-04 22:19:59', '2025-01-04 22:19:59'),
(121, 247, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:20:03', '2025-01-04 22:20:03'),
(122, 250, 27, 'all', NULL, NULL, NULL, '2025-01-04 22:20:03', '2025-01-04 22:20:03'),
(123, 250, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:20:06', '2025-01-04 22:20:06'),
(124, 253, 26, 'all', NULL, NULL, NULL, '2025-01-04 22:20:06', '2025-01-04 22:20:06'),
(125, 247, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:20:11', '2025-01-04 22:20:11'),
(126, 250, 25, 'all', NULL, NULL, NULL, '2025-01-04 22:20:11', '2025-01-04 22:20:11'),
(127, 241, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:20:15', '2025-01-04 22:20:15'),
(128, 253, 24, 'all', NULL, NULL, NULL, '2025-01-04 22:20:15', '2025-01-04 22:20:15'),
(129, 241, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:20:18', '2025-01-04 22:20:18'),
(130, 244, 23, 'all', NULL, NULL, NULL, '2025-01-04 22:20:18', '2025-01-04 22:20:18'),
(131, 244, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:20:22', '2025-01-04 22:20:22'),
(132, 250, 22, 'all', NULL, NULL, NULL, '2025-01-04 22:20:22', '2025-01-04 22:20:22'),
(133, 241, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:20:26', '2025-01-04 22:20:26'),
(134, 247, 21, 'all', NULL, NULL, NULL, '2025-01-04 22:20:26', '2025-01-04 22:20:26'),
(135, 244, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:20:32', '2025-01-04 22:20:32'),
(136, 247, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:20:32', '2025-01-04 22:20:32'),
(137, 253, 20, 'all', NULL, NULL, NULL, '2025-01-04 22:20:32', '2025-01-04 22:20:32');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_novel_vi`
--

CREATE TABLE `fast_posts_novel_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `banner` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `author` int NOT NULL DEFAULT '0',
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0',
  `feature` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `like_count` int DEFAULT '0',
  `public_status` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `release_date` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posts_novel_vi`
--

INSERT INTO `fast_posts_novel_vi` (`id`, `title`, `slug`, `lang_slug`, `status`, `created_at`, `updated_at`, `seo_title`, `seo_desc`, `content`, `banner`, `author`, `rating_count`, `rating_total`, `views_day`, `views_week`, `views`, `feature`, `like_count`, `public_status`, `release_date`, `description`) VALUES
(20, 'Rừng im lặng', 'rung-im-lang', NULL, 'active', '2024-12-30 10:00:00', '2025-01-15 10:27:39', 'SEO cho Rừng im lặng', 'Mô tả SEO cho Rừng im lặng', '{\"time\":1735631259649,\"blocks\":[{\"id\":\"def456\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Rừng im lặng bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 183, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 2, 2, 2, '{\"id\": 183, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '1/1/2024', 'Một câu chuyện hấp dẫn về bí ẩn và thiên nhiên trong Rừng im lặng.'),
(21, 'Bóng tối của thời gian', 'bong-toi-cua-thoi-gian', NULL, 'active', '2024-12-30 10:30:00', '2024-12-31 19:35:59', 'SEO cho Bóng tối của thời gian', 'Mô tả SEO cho Bóng tối của thời gian', '{\"time\":1735631257182,\"blocks\":[{\"id\":\"mno345\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Bóng tối của thời gian bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 184, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 184, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '15/1/2024', 'Một hành trình qua những sự kiện bí ẩn làm mờ ranh giới giữa quá khứ và hiện tại.'),
(22, 'Âm vang của vĩnh cửu', 'am-vang-cua-vinh-cuu', NULL, 'active', '2024-12-30 11:00:00', '2024-12-31 19:35:59', 'SEO cho Âm vang của vĩnh cửu', 'Mô tả SEO cho Âm vang của vĩnh cửu', '{\"time\":1735631255233,\"blocks\":[{\"id\":\"vwx234\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Âm vang của vĩnh cửu bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 185, \"name\": \"feature-3.jpg\", \"path\": \"2024/12/31/feature-3.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 185, \"name\": \"poster-3.jpg\", \"path\": \"2024/12/31/poster-3.jpg\"}', 0, '0', '20/1/2024', 'Một hành trình mê hoặc kết nối quá khứ và tương lai qua những âm vang của vĩnh cửu.'),
(23, 'Bóng ma thì thầm', 'bong-ma-thi-tham', NULL, 'active', '2024-12-30 12:00:00', '2024-12-31 19:35:59', 'SEO cho Bóng ma thì thầm', 'Mô tả SEO cho Bóng ma thì thầm', '{\"time\":1735631253502,\"blocks\":[{\"id\":\"vwx567\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Bóng ma thì thầm bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 186, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 186, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '30/1/2024', 'Một câu chuyện ám ảnh khám phá những lời thì thầm bí ẩn dẫn dắt nhân vật chính qua những thời khắc đen tối.'),
(24, 'Ranh giới thiên thể', 'rahn-gioi-thien-the', NULL, 'active', '2024-12-30 13:00:00', '2024-12-31 19:35:59', 'SEO cho Ranh giới thiên thể', 'Mô tả SEO cho Ranh giới thiên thể', '{\"time\":1735631251787,\"blocks\":[{\"id\":\"vwx890\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Ranh giới thiên thể bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 187, \"name\": \"feature-5.jpg\", \"path\": \"2024/12/31/feature-5.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 187, \"name\": \"poster-5.jpg\", \"path\": \"2024/12/31/poster-5.jpg\"}', 0, '0', '10/2/2024', 'Một cuộc khám phá những vùng đất chưa biết, nơi các thiên thể xác định ranh giới của sự tồn tại.'),
(25, 'Bóng tối của thời gian', 'bong-toi-cua-thoi-gian-2', NULL, 'active', '2024-12-30 14:00:00', '2024-12-31 19:35:59', 'SEO cho Bóng tối của thời gian', 'Mô tả SEO cho Bóng tối của thời gian', '{\"time\":1735631250199,\"blocks\":[{\"id\":\"mno345\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Bóng tối của thời gian bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 188, \"name\": \"feature-6.jpg\", \"path\": \"2024/12/31/feature-6.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 188, \"name\": \"poster-6.jpg\", \"path\": \"2024/12/31/poster-6.jpg\"}', 0, '0', '15/1/2024', 'Một hành trình qua những sự kiện bí ẩn làm mờ ranh giới giữa quá khứ và hiện tại.'),
(26, 'Âm vang của vĩnh cửu', 'am-vang-cua-vinh-cuu-2', NULL, 'active', '2024-12-30 15:00:00', '2024-12-31 19:35:59', 'SEO cho Âm vang của vĩnh cửu', 'Mô tả SEO cho Âm vang của vĩnh cửu', '{\"time\":1735631248177,\"blocks\":[{\"id\":\"vwx234\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Âm vang của vĩnh cửu bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 189, \"name\": \"feature-7.jpg\", \"path\": \"2024/12/31/feature-7.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 0, 0, 0, '{\"id\": 189, \"name\": \"poster-7.jpg\", \"path\": \"2024/12/31/poster-7.jpg\"}', 0, '0', '20/1/2024', 'Một hành trình mê hoặc kết nối quá khứ và tương lai qua những âm vang của vĩnh cửu.'),
(27, 'Chân trời huyền bí', 'chan-troi-huyen-bi', NULL, 'active', '2024-12-30 16:00:00', '2025-01-16 07:06:33', 'SEO cho Chân trời huyền bí', 'Mô tả SEO cho Chân trời huyền bí', '{\"time\":1735631246416,\"blocks\":[{\"id\":\"vwx890\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Chân trời huyền bí bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 190, \"name\": \"feature-1.jpg\", \"path\": \"2024/12/31/feature-1.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 1, 1, 1, '{\"id\": 190, \"name\": \"poster-1.jpg\", \"path\": \"2024/12/31/poster-1.jpg\"}', 0, '0', '25/1/2024', 'Một cuộc hành trình mê hoặc khám phá những chân trời huyền bí nơi thực tại gặp gỡ siêu nhiên.'),
(28, 'Ranh giới thiên thể', 'rahn-gioi-thien-the-2', NULL, 'active', '2024-12-30 17:00:00', '2025-01-16 07:06:11', 'SEO cho Ranh giới thiên thể', 'Mô tả SEO cho Ranh giới thiên thể', '{\"time\":1735631244541,\"blocks\":[{\"id\":\"vwx890\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Ranh giới thiên thể bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 191, \"name\": \"feature-2.jpg\", \"path\": \"2024/12/31/feature-2.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 14, 14, 14, '{\"id\": 191, \"name\": \"poster-2.jpg\", \"path\": \"2024/12/31/poster-2.jpg\"}', 0, '0', '10/2/2024', 'Một cuộc khám phá những vùng đất chưa biết, nơi các thiên thể xác định ranh giới của sự tồn tại.'),
(30, 'Bí mật che giấu', 'bi-mat-che-giau', NULL, 'active', '2024-12-30 14:00:00', '2025-01-16 06:23:20', 'SEO cho Bí mật che giấu', 'Mô tả SEO cho Bí mật che giấu', '{\"time\":1735631242806,\"blocks\":[{\"id\":\"vwx890\",\"type\":\"paragraph\",\"data\":{\"text\":\"Đây là nội dung của Bí mật che giấu bằng tiếng Việt.\"}}],\"version\":\"2.30.7\"}', '{\"id\": 193, \"name\": \"feature-4.jpg\", \"path\": \"2024/12/31/feature-4.jpg\", \"resize\": \"150x150;333x500\"}', 1, 0, 0, 4, 4, 4, '{\"id\": 193, \"name\": \"poster-4.jpg\", \"path\": \"2024/12/31/poster-4.jpg\"}', 0, '0', '05/2/2024', 'Bí mật che giấu hé lộ những bí ẩn ẩn sâu dưới bề mặt của một thị trấn bình thường.');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_post_cn`
--

CREATE TABLE `fast_posts_post_cn` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_post_en`
--

CREATE TABLE `fast_posts_post_en` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_post_rel`
--

CREATE TABLE `fast_posts_post_rel` (
  `id` int UNSIGNED NOT NULL,
  `term_id` int DEFAULT NULL,
  `post_id` int NOT NULL,
  `lang` char(3) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postype_slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `field_id` bigint DEFAULT NULL,
  `post_rel_id` int DEFAULT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posts_post_vi`
--

CREATE TABLE `fast_posts_post_vi` (
  `id` int UNSIGNED NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `lang_slug` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `seo_title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `seo_desc` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `content` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `author` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `rating_count` int DEFAULT '0',
  `rating_total` int DEFAULT '0',
  `views_day` int DEFAULT '0',
  `views_week` int DEFAULT '0',
  `views` int DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_posttype`
--

CREATE TABLE `fast_posttype` (
  `id` int UNSIGNED NOT NULL,
  `current_id` int UNSIGNED DEFAULT '0',
  `name` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fields` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `languages` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `terms` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive') CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'active',
  `menu` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_posttype`
--

INSERT INTO `fast_posttype` (`id`, `current_id`, `name`, `slug`, `fields`, `created_at`, `updated_at`, `languages`, `terms`, `status`, `menu`) VALUES
(24, 4, 'Movie', 'movie', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":3,\"type\":\"Textarea\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"Usually it will be the same as Overview\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1734239487725,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Textarea\",\"label\":\"Description\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"description\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"Usually it will be the same as SEO Description\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Feature Image\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"feature\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"user\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":\"0\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1734239758421,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Number\",\"label\":\"Duration\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"duration\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734239867029,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Select\",\"label\":\"Movie Status\",\"order\":13,\"fields\":[],\"options\":[{\"label\":\"showing\",\"value\":\"Showing\",\"is_group\":false},{\"label\":\"coming-soon\",\"value\":\"Coming Soon\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"movie_status\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734240106229,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Number\",\"label\":\"IMDB ID\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"imdb_id\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734240140893,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Radio\",\"label\":\"Adult?\",\"order\":15,\"fields\":[],\"options\":[{\"label\":\"True\",\"value\":\"1\",\"is_group\":false},{\"label\":\"False\",\"value\":\"0\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"adult\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"Movie for content 18+\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"0\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734240224693,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Original Language\",\"order\":16,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"original_language\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734240316285,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Trailer\",\"order\":17,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"trailer\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"URL video trailler\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734240579341,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Radio\",\"label\":\"Cinema?\",\"order\":18,\"fields\":[],\"options\":[{\"label\":\"Yes\",\"value\":\"yes\",\"is_group\":false},{\"label\":\"No\",\"value\":\"no\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"cinema\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"Movie cinema\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734241135695,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Radio\",\"label\":\"Movie Type\",\"order\":19,\"fields\":[],\"options\":[{\"label\":\"Movie\",\"value\":\"movie\",\"is_group\":false},{\"label\":\"TV Show\",\"value\":\"tvshow\",\"is_group\":false},{\"label\":\"tvseries\",\"value\":\"tvseries\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"movie_type\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734241243438,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Number\",\"label\":\"Chapter total\",\"order\":20,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":false,\"css_class\":\"\",\"field_name\":\"chapter_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734241268317,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Radio\",\"label\":\"Quality\",\"order\":21,\"fields\":[],\"options\":[{\"label\":\"SD\",\"value\":\"sd\",\"is_group\":false},{\"label\":\"HD\",\"value\":\"hd\",\"is_group\":false},{\"label\":\"Full HD\",\"value\":\"fhd\",\"is_group\":false},{\"label\":\"2K\",\"value\":\"2k\",\"is_group\":false},{\"label\":\"4K\",\"value\":\"4k\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"quality\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734241396479,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Showtimes\",\"order\":22,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"showtimes\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"Schedules for TV Series and Multi-Episode TV Shows\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"post_status_filter\":\"all\",\"post_type_reference\":null},{\"id\":1734524047631,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Chapters\",\"order\":23,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"chapters\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"movie_chapter\",\"table_save_data_reference\":0},{\"id\":1734524753027,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Actors\",\"order\":24,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"actors\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"actor\",\"table_save_data_reference\":0},{\"id\":1735108161210,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Banner Image\",\"order\":26,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"banner\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735633754761,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Directors\",\"order\":26,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"directors\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"director\",\"table_save_data_reference\":0},{\"id\":1736009868416,\"type\":\"Text\",\"label\":\"Release Date\",\"field_name\":\"release_date\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":27,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"}]', '2024-12-14 15:01:30', '2025-01-07 16:04:24', '[\"en\", \"vi\", \"cn\"]', '[{\"id\":1734239784205,\"name\":\"Categories Movie\",\"type\":\"categories\",\"hierarchical\":false,\"synchronous_init\":\"true\"},{\"id\":1734239794125,\"name\":\"Release Year\",\"type\":\"release_year\",\"hierarchical\":false,\"synchronous_init\":\"true\"},{\"id\":1734239813853,\"name\":\"Tags\",\"type\":\"tags\",\"hierarchical\":false,\"synchronous_init\":\"true\"},{\"id\":1734241683637,\"name\":\"Country\",\"type\":\"country\",\"hierarchical\":false,\"synchronous_init\":\"true\"}]', 'active', 'movie'),
(29, 2, 'Movie Chapter', 'movie_chapter', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Thumbnail\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"thumbnail\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"user\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1734522650801,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Textarea\",\"label\":\"Source\",\"order\":12,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"source\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1734522693559,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Textarea\",\"label\":\"Suburl\",\"order\":13,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"suburl\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1734524047631,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Movie Episode\",\"order\":23,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"movie_episode\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"movie\",\"table_save_data_reference\":1},{\"id\":1735622425472,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Index\",\"order\":14,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":false,\"css_class\":\"\",\"field_name\":\"index\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"1\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0}]', '2024-12-15 19:16:40', '2025-01-16 13:48:20', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'movie'),
(30, 7, 'Actor', 'actor', '[{\"id\": 1, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Title\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"seo_title\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 2, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Description\", \"order\": 2, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"seo_desc\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 3, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"WYSIWYG\", \"label\": \"Content\", \"order\": 3, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"content\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 4, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Thumbnail\", \"order\": 4, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"thumbnail\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"webp\", \"png\", \"jpeg\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": 5, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 5, \"max\": 100, \"min\": null, \"rows\": null, \"type\": \"User\", \"label\": \"Author\", \"order\": 5, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": true, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"author\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": \"user\"}, {\"id\": 11, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Count\", \"order\": 11, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"rating_count\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 12, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Total\", \"order\": 12, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"rating_total\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng điểm đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 13, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Day\", \"order\": 13, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"views_day\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong ngày\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 14, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Week\", \"order\": 14, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"views_week\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong tuần\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 15, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views\", \"order\": 15, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"views\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng số lượt xem\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1734265073826, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Date\", \"order\": 11, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"birth_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"Format (DD/MM/YYY)\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265094138, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Place\", \"order\": 12, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"birth_place\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"Country\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265108250, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Radio\", \"label\": \"Gender\", \"order\": 13, \"fields\": [], \"unique\": false, \"options\": [{\"label\": \"Men\", \"value\": \"men\", \"is_group\": false}, {\"label\": \"Women\", \"value\": \"women\", \"is_group\": false}], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"gender\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265155298, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Original Name\", \"order\": 14, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"original_name\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265165642, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Number\", \"label\": \"Height\", \"order\": 15, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"height\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"Unit cm\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265181986, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Number\", \"label\": \"Weight\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"weight\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"Unit kg\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265198530, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Death Date\", \"order\": 17, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"death_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"Format (DD/MM/YYY)\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265215890, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Repeater\", \"label\": \"Social Media\", \"order\": 18, \"fields\": [{\"id\": 1734265249802, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Name Social\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"name_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734265264746, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"URL Social\", \"order\": 2, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"url_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"social_media\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"post_status_filter\": \"all\", \"post_type_reference\": null}, {\"id\": 1734524753027, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Movie Actor\", \"order\": 24, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"movie_actor\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"movie\", \"table_save_data_reference\": \"1\"}]', '2024-12-15 19:22:59', '2024-12-25 19:59:56', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'movie'),
(49, 0, 'Post', 'post', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Thumbnail\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"thumbnail\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":false,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"user\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null}]', '2024-12-16 20:41:12', '2025-01-07 15:53:28', '[\"en\", \"vi\", \"cn\"]', '[{\"id\":1734356454187,\"name\":\"Categories\",\"type\":\"categories\",\"hierarchical\":true,\"synchronous_init\":\"first\"},{\"id\":1734356460675,\"name\":\"Tags\",\"type\":\"tags\",\"hierarchical\":false,\"synchronous_init\":\"first\"}]', 'active', 'post');
INSERT INTO `fast_posttype` (`id`, `current_id`, `name`, `slug`, `fields`, `created_at`, `updated_at`, `languages`, `terms`, `status`, `menu`) VALUES
(63, 2, 'Director', 'director', '[{\"id\": 1, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Title\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_title\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 2, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Description\", \"order\": 2, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_desc\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 3, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"WYSIWYG\", \"label\": \"Content\", \"order\": 3, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"content\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 4, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Thumbnail\", \"order\": 4, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"thumbnail\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"webp\", \"png\", \"jpeg\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": 5, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 5, \"max\": 100, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Author\", \"order\": 5, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"author\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Người viết bài\", \"placeholder\": \"Nhập tên tác giả\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": \"user\"}, {\"id\": 11, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Count\", \"order\": 11, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_count\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 12, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Total\", \"order\": 12, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_total\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng điểm đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 13, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Day\", \"order\": 13, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_day\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong ngày\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 14, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Week\", \"order\": 14, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_week\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong tuần\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 15, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views\", \"order\": 15, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng số lượt xem\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1734525627505, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Original Name\", \"order\": 12, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"original_name\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525531033, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Date\", \"order\": 11, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"birth_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525662849, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Place\", \"order\": 13, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"birth_place\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525679049, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Death Date\", \"order\": 14, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"death_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525743456, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Radio\", \"label\": \"Gender\", \"order\": 15, \"fields\": [], \"unique\": false, \"options\": [{\"label\": \"Men\", \"value\": \"men\", \"is_group\": false}, {\"label\": \"Women\", \"value\": \"women\", \"is_group\": false}], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"gender\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525771937, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Number\", \"label\": \"Height\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"height\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525784312, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Weight\", \"order\": 17, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"weight\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 33, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525799785, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Repeater\", \"label\": \"Social Media\", \"order\": 18, \"fields\": [{\"id\": 1734525823177, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Name Social\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"name_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1734525837037, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"URL Social\", \"order\": 2, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"url_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"social_media\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735633754761, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Movie Director\", \"order\": 26, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"movie_director\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"movie\", \"table_save_data_reference\": 1}]', '2024-12-18 19:44:28', '2024-12-31 15:29:45', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'movie'),
(72, 2, 'Comic', 'comic', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Feature Image\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"feature\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1735104189121,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Banner Image\",\"order\":13,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"banner\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1735104156370,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Like Count\",\"order\":11,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"like_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"0\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735104175897,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Select\",\"label\":\"Public Status\",\"order\":12,\"fields\":[],\"unique\":false,\"options\":[{\"label\":\"\\u0110ang ph\\u00e1t h\\u00e0nh \",\"value\":\"0\",\"is_group\":false},{\"label\":\"\\u0110\\u00e3 ho\\u00e0n th\\u00e0nh\",\"value\":\"1\",\"is_group\":false},{\"label\":\"T\\u1ea1m ng\\u01b0ng\",\"value\":\"2\",\"is_group\":false}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"public_status\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735104414153,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Release Date\",\"order\":14,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"release_date\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735105418223,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Creators\",\"order\":16,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"creators\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"creator\",\"table_save_data_reference\":0},{\"id\":1735193164783,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Chapters\",\"order\":16,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"chapters\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"comic_chapter\",\"table_save_data_reference\":0},{\"id\":1735569557493,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Textarea\",\"label\":\"Description\",\"order\":17,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"description\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0}]', '2024-12-25 12:29:27', '2025-01-07 16:05:11', '[\"en\", \"vi\", \"cn\"]', '[{\"id\":1735104531984,\"name\":\"Category Comic\",\"type\":\"categories\",\"hierarchical\":true,\"synchronous_init\":\"true\"},{\"id\":1736002283139,\"name\":\"Tags\",\"type\":\"tags\",\"synchronous_init\":\"true\",\"hierarchical\":true}]', 'active', 'comic'),
(74, 2, 'Creator', 'creator', '[{\"id\": 1, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Title\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_title\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 2, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Description\", \"order\": 2, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_desc\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 3, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"WYSIWYG\", \"label\": \"Content\", \"order\": 3, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"content\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 4, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Feature Image\", \"order\": 4, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"feature\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"webp\", \"png\", \"jpeg\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": 5, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 5, \"max\": 100, \"min\": null, \"rows\": null, \"type\": \"User\", \"label\": \"Author\", \"order\": 5, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"author\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": \"\"}, {\"id\": 11, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Count\", \"order\": 11, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_count\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 12, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Total\", \"order\": 12, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_total\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng điểm đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 13, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Day\", \"order\": 13, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"views_day\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong ngày\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 14, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Week\", \"order\": 14, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_week\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong tuần\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 15, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views\", \"order\": 15, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng số lượt xem\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1735104649433, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Original Name\", \"order\": 11, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"original_name\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104660072, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Date\", \"order\": 12, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"birth_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104676800, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Birth Place\", \"order\": 13, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"birth_place\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104692080, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Death Date\", \"order\": 14, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"death_date\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104707336, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Radio\", \"label\": \"Gender\", \"order\": 15, \"fields\": [], \"unique\": false, \"options\": [{\"label\": \"Men\", \"value\": \"1\", \"is_group\": false}, {\"label\": \"Women\", \"value\": \"0\", \"is_group\": false}], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"gender\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104889192, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Number\", \"label\": \"Height\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"height\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104913288, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Number\", \"label\": \"Weight\", \"order\": 18, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"weight\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735104988471, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Repeater\", \"label\": \"Social Media\", \"order\": 19, \"fields\": [{\"id\": 1735104998416, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"Name Social\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"name_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735105010280, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"URL Social\", \"order\": 2, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"url_social\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"social_media\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 1735105418223, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Comic Creator\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"comic_creator\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"comic\", \"table_save_data_reference\": 1}, {\"id\": 1735191996306, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Novel Creator\", \"order\": 15, \"fields\": [], \"unique\": false, \"options\": [], \"servers\": [{\"url\": \"\", \"token\": \"\"}], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"novel_creator\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"novel\", \"table_save_data_reference\": 1}, {\"id\": 1735569577407, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Textarea\", \"label\": \"Description\", \"order\": 21, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"description\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}]', '2024-12-25 12:37:35', '2024-12-31 13:21:52', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'comic');
INSERT INTO `fast_posttype` (`id`, `current_id`, `name`, `slug`, `fields`, `created_at`, `updated_at`, `languages`, `terms`, `status`, `menu`) VALUES
(81, 1, 'Novel', 'novel', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Banner Image\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"banner\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1735191563547,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Feature Image\",\"order\":11,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"feature\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735191594347,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Like Count\",\"order\":12,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"like_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"0\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735191612379,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Select\",\"label\":\"Public Status\",\"order\":13,\"fields\":[],\"unique\":false,\"options\":[{\"label\":\"\\u0110ang ph\\u00e1t h\\u00e0nh \",\"value\":\"0\",\"is_group\":false},{\"label\":\"\\u0110\\u00e3 ho\\u00e0n th\\u00e0nh\",\"value\":\"1\",\"is_group\":false},{\"label\":\"T\\u1ea1m ng\\u01b0ng\",\"value\":\"2\",\"is_group\":false}],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"public_status\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735191652259,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Release Date\",\"order\":14,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"release_date\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735191996306,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Creators\",\"order\":15,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"creators\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"creator\",\"table_save_data_reference\":0},{\"id\":1735562557596,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Reference\",\"label\":\"Chapters\",\"order\":16,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"chapters\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":\"novel_chapter\",\"table_save_data_reference\":0},{\"id\":1735569589270,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Textarea\",\"label\":\"Description\",\"order\":17,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"description\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0}]', '2024-12-26 12:39:10', '2025-01-07 16:05:00', '[\"cn\", \"en\", \"vi\"]', '[{\"id\":1735191554435,\"name\":\"Categories novel\",\"type\":\"categories\",\"hierarchical\":true,\"synchronous_init\":\"true\"},{\"id\":1736002299667,\"name\":\"Tags\",\"type\":\"tags\",\"synchronous_init\":\"true\",\"hierarchical\":true}]', 'active', 'novel'),
(82, 1, 'Novel Chapter', 'novel_chapter', '[{\"id\": 1, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Title\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_title\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 2, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Description\", \"order\": 2, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_desc\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1735192240649, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Index\", \"order\": 11, \"fields\": [], \"unique\": false, \"options\": [], \"servers\": [{\"url\": \"\", \"token\": \"\"}], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"index\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"0\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 3, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"WYSIWYG\", \"label\": \"Content\", \"order\": 3, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"content\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 4, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Feature Image\", \"order\": 4, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"feature\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"webp\", \"png\", \"jpeg\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": 5, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 11, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Count\", \"order\": 11, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_count\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 12, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Total\", \"order\": 12, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_total\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng điểm đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 13, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Day\", \"order\": 13, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_day\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong ngày\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 14, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Week\", \"order\": 14, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_week\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong tuần\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 15, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views\", \"order\": 15, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng số lượt xem\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1735562557596, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Novel Chapter\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"novel_chapter\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"novel\", \"table_save_data_reference\": 1}]', '2024-12-26 12:49:34', '2025-01-05 21:19:34', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'novel'),
(85, 1, 'Comic Chapter ', 'comic_chapter', '[{\"id\": 1, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Title\", \"order\": 1, \"fields\": [], \"unique\": false, \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_title\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 2, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Text\", \"label\": \"SEO Description\", \"order\": 2, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"seo_desc\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1735193023008, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Text\", \"label\": \"Inedx\", \"order\": 10, \"fields\": [], \"unique\": false, \"options\": [], \"servers\": [{\"url\": \"\", \"token\": \"\"}], \"multiple\": false, \"position\": \"left\", \"required\": true, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"index\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"0\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": null, \"table_save_data_reference\": 0}, {\"id\": 3, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Content\", \"order\": 3, \"fields\": [], \"options\": [], \"multiple\": true, \"position\": \"left\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"content\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"png\", \"jpeg\", \"webp\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 4, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Image\", \"label\": \"Feature Image\", \"order\": 4, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"feature\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [\"jpg\", \"webp\", \"png\", \"jpeg\"], \"description\": \"\", \"placeholder\": \"\", \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": 5, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 11, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Count\", \"order\": 11, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_count\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 12, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Rating Total\", \"order\": 12, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"rating_total\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng điểm đánh giá\", \"placeholder\": \"0\", \"width_value\": 50, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 13, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Day\", \"order\": 13, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_day\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong ngày\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 14, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views Week\", \"order\": 14, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views_week\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Số lượt xem trong tuần\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 15, \"max\": null, \"min\": 0, \"rows\": null, \"type\": \"Number\", \"label\": \"Views\", \"order\": 15, \"fields\": [], \"options\": [], \"multiple\": false, \"position\": \"right\", \"required\": false, \"collapsed\": true, \"css_class\": \"\", \"field_name\": \"views\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"Tổng số lượt xem\", \"placeholder\": \"0\", \"width_value\": 33, \"default_value\": 0, \"max_file_size\": null, \"post_status_filter\": \"\", \"post_type_reference\": null}, {\"id\": 1735193164783, \"max\": null, \"min\": null, \"rows\": null, \"type\": \"Reference\", \"label\": \"Comic Chapter\", \"order\": 16, \"fields\": [], \"unique\": false, \"options\": [], \"servers\": [{\"url\": \"\", \"token\": \"\"}], \"multiple\": false, \"position\": \"left\", \"required\": false, \"collapsed\": false, \"css_class\": \"\", \"field_name\": \"comic_chapter\", \"visibility\": true, \"width_unit\": \"%\", \"allow_types\": [], \"description\": \"\", \"placeholder\": \"\", \"synchronous\": true, \"width_value\": 100, \"default_value\": \"\", \"max_file_size\": null, \"multiple_server\": false, \"post_query_sort\": \"\", \"post_query_filter\": \"\", \"bidirectional_sync\": 1, \"post_status_filter\": \"all\", \"post_type_reference\": \"comic\", \"table_save_data_reference\": 1}]', '2024-12-26 13:04:45', '2025-01-05 21:19:39', '[\"en\", \"vi\", \"cn\"]', '[]', 'active', 'comic'),
(86, 2, 'Game', 'game', '[{\"id\":1,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Title\",\"order\":1,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_title\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":2,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"SEO Description\",\"order\":2,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"seo_desc\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":3,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"WYSIWYG\",\"label\":\"Content\",\"order\":3,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"content\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":4,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Banner\",\"order\":4,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"banner\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":5,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":5,\"max\":100,\"min\":null,\"rows\":null,\"type\":\"User\",\"label\":\"Author\",\"order\":5,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":true,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"author\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":\"\"},{\"id\":11,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Count\",\"order\":11,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":12,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Rating Total\",\"order\":12,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"rating_total\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng \\u0111i\\u1ec3m \\u0111\\u00e1nh gi\\u00e1\",\"placeholder\":\"0\",\"width_value\":50,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":13,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Day\",\"order\":13,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_day\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong ng\\u00e0y\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":14,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views Week\",\"order\":14,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views_week\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"S\\u1ed1 l\\u01b0\\u1ee3t xem trong tu\\u1ea7n\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":15,\"max\":null,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Views\",\"order\":15,\"fields\":[],\"options\":[],\"multiple\":false,\"position\":\"right\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"views\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"T\\u1ed5ng s\\u1ed1 l\\u01b0\\u1ee3t xem\",\"placeholder\":\"0\",\"width_value\":33,\"default_value\":0,\"max_file_size\":null,\"post_status_filter\":\"\",\"post_type_reference\":null},{\"id\":1735194875604,\"max\":0,\"min\":0,\"rows\":null,\"type\":\"Number\",\"label\":\"Like\",\"order\":11,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"like_count\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"0\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735194901860,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Iframe Game\",\"order\":12,\"fields\":[],\"unique\":false,\"options\":[],\"servers\":[{\"url\":\"\",\"token\":\"\"}],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"iframe_game\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735569608582,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Text\",\"label\":\"Description\",\"order\":13,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"description\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1735630028641,\"max\":null,\"min\":null,\"rows\":null,\"type\":\"Image\",\"label\":\"Feature Image\",\"order\":14,\"fields\":[],\"unique\":false,\"options\":[],\"multiple\":false,\"position\":\"left\",\"required\":false,\"collapsed\":true,\"css_class\":\"\",\"field_name\":\"feature\",\"visibility\":true,\"width_unit\":\"%\",\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"description\":\"\",\"placeholder\":\"\",\"synchronous\":true,\"width_value\":100,\"default_value\":\"\",\"max_file_size\":null,\"multiple_server\":false,\"post_query_sort\":\"\",\"post_query_filter\":\"\",\"bidirectional_sync\":1,\"post_status_filter\":\"all\",\"post_type_reference\":null,\"table_save_data_reference\":0},{\"id\":1736009933808,\"type\":\"Text\",\"label\":\"Release Date\",\"field_name\":\"release_date\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":15,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"}]', '2024-12-26 13:42:11', '2025-01-07 16:05:29', '[\"en\", \"vi\", \"cn\"]', '[{\"id\":1735195340451,\"name\":\"Categories Game\",\"type\":\"categories\",\"hierarchical\":true,\"synchronous_init\":\"true\"},{\"id\":1736002312577,\"name\":\"Tags\",\"type\":\"tags\",\"synchronous_init\":\"true\",\"hierarchical\":true}]', 'active', 'game'),
(111, 5, 'Finder', 'finder', '[{\"id\":4,\"type\":\"Image\",\"label\":\"Feature Image\",\"field_name\":\"feature\",\"description\":\"\",\"required\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":4,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"max_file_size\":5,\"multiple\":false,\"post_type_reference\":null,\"post_status_filter\":\"\",\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"right\"},{\"id\":5,\"type\":\"User\",\"label\":\"UserId Author\",\"field_name\":\"user_id\",\"description\":\"\",\"required\":true,\"unique\":true,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":5,\"min\":null,\"max\":100,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"post_type_reference\":\"\",\"post_status_filter\":\"\",\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"right\"},{\"id\":1737293238234,\"type\":\"Text\",\"label\":\"Phone\",\"field_name\":\"phone\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":4,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293464706,\"type\":\"Date\",\"label\":\"Birthday\",\"field_name\":\"birthday\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"2000-01-01\",\"order\":6,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293500063,\"type\":\"Select\",\"label\":\"Gender\",\"field_name\":\"gender\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"other\",\"order\":7,\"min\":null,\"max\":null,\"options\":[{\"value\":\"male\",\"label\":\"Male\",\"is_group\":false},{\"value\":\"female\",\"label\":\"Female\",\"is_group\":false},{\"value\":\"other\",\"label\":\"Other\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":3,\"type\":\"WYSIWYG\",\"label\":\"About me\",\"field_name\":\"about_me\",\"description\":\"\",\"required\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":3,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"post_type_reference\":null,\"post_status_filter\":\"\",\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293754850,\"type\":\"Radio\",\"label\":\"Online\",\"field_name\":\"online\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":11,\"min\":null,\"max\":null,\"options\":[{\"value\":\"1\",\"label\":\"Online\",\"is_group\":false},{\"value\":\"0\",\"label\":\"Offline\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":50,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737302757290,\"type\":\"Radio\",\"label\":\"Display\",\"field_name\":\"display\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":16,\"min\":null,\"max\":null,\"options\":[{\"value\":\"1\",\"label\":\"Display\",\"is_group\":false},{\"value\":\"0\",\"label\":\"Hidden\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":50,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293618052,\"type\":\"Number\",\"label\":\"Coin\",\"field_name\":\"coin\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"0\",\"order\":8,\"min\":0,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":false,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293636277,\"type\":\"Radio\",\"label\":\"Package Name\",\"field_name\":\"package_name\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":9,\"min\":null,\"max\":null,\"options\":[{\"value\":\"membership\",\"label\":\"Membership\",\"is_group\":false},{\"value\":\"gold\",\"label\":\"Gold\",\"is_group\":false},{\"value\":\"diamond\",\"label\":\"Diamond\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293740141,\"type\":\"DateTime\",\"label\":\"Package Exp\",\"field_name\":\"package_exp\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":10,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293806099,\"type\":\"Image\",\"label\":\"Galleries\",\"field_name\":\"galleries\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":12,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[\"jpg\",\"webp\",\"png\",\"jpeg\"],\"max_file_size\":null,\"multiple\":true,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737303059986,\"type\":\"Point\",\"label\":\"Location\",\"field_name\":\"location\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":16,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":100,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737362839890,\"type\":\"Text\",\"label\":\"Facebook\",\"field_name\":\"facebook\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":16,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737362885204,\"type\":\"Text\",\"label\":\"Zalo\",\"field_name\":\"zalo\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":18,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737362858626,\"type\":\"Text\",\"label\":\"Instagram\",\"field_name\":\"instagram\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":17,\"min\":null,\"max\":null,\"options\":[],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":33,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293878354,\"type\":\"Radio\",\"label\":\"Job\",\"field_name\":\"job\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":13,\"min\":null,\"max\":null,\"options\":[{\"value\":\"1\",\"label\":\"Ba\\u0301c si\\u0303\",\"is_group\":false},{\"value\":\"2\",\"label\":\"IT\",\"is_group\":false},{\"value\":\"3\",\"label\":\"\\u0110\\u00e2\\u0300u b\\u00ea\\u0301p\",\"is_group\":false},{\"value\":\"4\",\"label\":\"Ca si\\u0303\",\"is_group\":false},{\"value\":\"6\",\"label\":\"Di\\u00ea\\u0303n vi\\u00ean\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":false,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":50,\"width_unit\":\"%\",\"position\":\"left\"},{\"id\":1737293973282,\"type\":\"Select\",\"label\":\"Favorites\",\"field_name\":\"favorites\",\"description\":\"\",\"required\":false,\"unique\":false,\"visibility\":true,\"css_class\":\"\",\"placeholder\":\"\",\"default_value\":\"\",\"order\":14,\"min\":null,\"max\":null,\"options\":[{\"value\":\"1\",\"label\":\"Photography\",\"is_group\":false},{\"value\":\"2\",\"label\":\"Shopping\",\"is_group\":false},{\"value\":\"3\",\"label\":\"Karaoke\",\"is_group\":false},{\"value\":\"4\",\"label\":\"Yoga\",\"is_group\":false},{\"value\":\"5\",\"label\":\"Cooking\",\"is_group\":false},{\"value\":\"6\",\"label\":\"Tennis\",\"is_group\":false},{\"value\":\"7\",\"label\":\"Run\",\"is_group\":false},{\"value\":\"8\",\"label\":\"Swimming\",\"is_group\":false},{\"value\":\"9\",\"label\":\"Art\",\"is_group\":false},{\"value\":\"10\",\"label\":\"Traveling\",\"is_group\":false},{\"value\":\"11\",\"label\":\"Extreme\",\"is_group\":false},{\"value\":\"12\",\"label\":\"Music\",\"is_group\":false},{\"value\":\"13\",\"label\":\"Drink\",\"is_group\":false},{\"value\":\"14\",\"label\":\"Video Games\",\"is_group\":false}],\"rows\":null,\"allow_types\":[],\"max_file_size\":null,\"multiple\":true,\"multiple_server\":false,\"post_type_reference\":null,\"bidirectional_sync\":1,\"table_save_data_reference\":0,\"post_status_filter\":\"all\",\"post_query_filter\":\"\",\"post_query_sort\":\"\",\"synchronous\":true,\"fields\":[],\"collapsed\":true,\"width_value\":50,\"width_unit\":\"%\",\"position\":\"left\"}]', '2025-01-19 21:59:18', '2025-01-20 22:54:07', '[\"all\"]', '[]', 'active', 'finder');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_terms`
--

CREATE TABLE `fast_terms` (
  `id` int UNSIGNED NOT NULL,
  `name` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT '',
  `slug` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `posttype` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_title` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `seo_desc` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci,
  `type` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'category',
  `parent` int UNSIGNED DEFAULT NULL,
  `lang` varchar(2) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `id_main` int UNSIGNED DEFAULT '0',
  `created_at` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `fast_terms`
--

INSERT INTO `fast_terms` (`id`, `name`, `slug`, `description`, `posttype`, `seo_title`, `seo_desc`, `type`, `parent`, `lang`, `id_main`, `created_at`, `updated_at`) VALUES
(1, 'Action', 'action', 'Fast-paced games focusing on physical challenges.', 'game', '', '', 'categories', NULL, 'en', 1, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(2, 'Hành động', 'hanh-dong', 'Các trò chơi nhanh nhẹn tập trung vào thử thách vật lý.', 'game', '', '', 'categories', NULL, 'vi', 1, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(3, '动作', 'dongzuo', '以物理挑战为主的快节奏游戏。', 'game', '', '', 'categories', NULL, 'cn', 1, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(4, 'Adventure', 'adventure', 'Games that emphasize exploration and narrative.', 'game', '', '', 'categories', NULL, 'en', 4, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(5, 'Phiêu lưu', 'phieu-luu', 'Các trò chơi nhấn mạnh vào khám phá và cốt truyện.', 'game', '', '', 'categories', NULL, 'vi', 4, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(6, '冒险', 'maoxian', '强调探索和叙事的游戏。', 'game', '', '', 'categories', NULL, 'cn', 4, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(7, 'Role-Playing', 'role-playing', 'Games where players assume the roles of characters.', 'game', '', '', 'categories', NULL, 'en', 7, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(8, 'Nhập vai', 'nhap-vai', 'Các trò chơi mà người chơi nhập vai vào các nhân vật.', 'game', '', '', 'categories', NULL, 'vi', 7, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(9, '角色扮演', 'jiaose-banyan', '玩家扮演角色的游戏。', 'game', '', '', 'categories', NULL, 'cn', 7, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(10, 'Simulation', 'simulation', 'Games that mimic real-world activities.', 'game', '', '', 'categories', NULL, 'en', 10, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(11, 'Mô phỏng', 'mo-phong', 'Các trò chơi mô phỏng các hoạt động trong thế giới thực.', 'game', '', '', 'categories', NULL, 'vi', 10, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(12, '模拟', 'moni', '模仿现实世界活动的游戏。', 'game', '', '', 'categories', NULL, 'cn', 10, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(13, 'Strategy', 'strategy', 'Games that require planning and tactical thinking.', 'game', '', '', 'categories', NULL, 'en', 13, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(14, 'Chiến lược', 'chien-luoc', 'Các trò chơi yêu cầu lập kế hoạch và tư duy chiến thuật.', 'game', '', '', 'categories', NULL, 'vi', 13, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(15, '策略', 'celue', '需要规划和战术思维的游戏。', 'game', '', '', 'categories', NULL, 'cn', 13, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(16, 'Sports', 'sports', 'Games that simulate playing sports.', 'game', '', '', 'categories', NULL, 'en', 16, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(17, 'Thể thao', 'the-thao', 'Các trò chơi mô phỏng việc chơi thể thao.', 'game', '', '', 'categories', NULL, 'vi', 16, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(18, '体育', 'tiyu', '模拟体育运动的游戏。', 'game', '', '', 'categories', NULL, 'cn', 16, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(19, 'Puzzle', 'puzzle', 'Games that challenge problem-solving skills.', 'game', '', '', 'categories', NULL, 'en', 19, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(20, 'Trò chơi ghép hình', 'tro-choi-ghep-hinh', 'Các trò chơi thách thức kỹ năng giải quyết vấn đề.', 'game', '', '', 'categories', NULL, 'vi', 19, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(21, '益智', 'yizhi', '挑战解决问题技能的游戏。', 'game', '', '', 'categories', NULL, 'cn', 19, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(22, 'Racing', 'racing', 'Games focused on racing competitions.', 'game', '', '', 'categories', NULL, 'en', 22, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(23, 'Đua xe', 'dua-xe', 'Các trò chơi tập trung vào các cuộc thi đua xe.', 'game', '', '', 'categories', NULL, 'vi', 22, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(24, '竞速', 'jingsu', '专注于竞速比赛的游戏。', 'game', '', '', 'categories', NULL, 'cn', 22, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(25, 'Horror', 'horror', 'Games designed to scare and thrill players.', 'game', '', '', 'categories', NULL, 'en', 25, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(26, 'Kinh dị', 'kinh-di', 'Các trò chơi được thiết kế để làm sợ và kích thích người chơi.', 'game', '', '', 'categories', NULL, 'vi', 25, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(27, '恐怖', 'kongbu', '旨在吓唬和刺激玩家的游戏。', 'game', '', '', 'categories', NULL, 'cn', 25, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(28, 'Sandbox', 'sandbox', 'Games that offer open-world exploration and creativity.', 'game', '', '', 'categories', NULL, 'en', 28, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(29, 'Hộp cát', 'hop-cat', 'Các trò chơi cung cấp khám phá thế giới mở và sự sáng tạo.', 'game', '', '', 'categories', NULL, 'vi', 28, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(30, '沙盒', 'shaho', '提供开放世界探索和创造力的游戏。', 'game', '', '', 'categories', NULL, 'cn', 28, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(31, 'Fantasy', 'fantasy', 'Imaginative novels with magical elements.', 'novel', '', '', 'categories', NULL, 'en', 31, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(32, 'Tiên Hiệp', 'tien-hiep', 'Các tiểu thuyết tưởng tượng với yếu tố ma thuật.', 'novel', '', '', 'categories', NULL, 'vi', 31, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(33, '奇幻', 'qihuan', '具有魔法元素的富有想象力的小说。', 'novel', '', '', 'categories', NULL, 'cn', 31, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(34, 'Mystery', 'mystery', 'Novels that involve solving crimes or uncovering secrets.', 'novel', '', '', 'categories', NULL, 'en', 34, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(35, 'Trinh Thám', 'trinh-tham', 'Các tiểu thuyết liên quan đến việc giải quyết tội ác hoặc khám phá bí mật.', 'novel', '', '', 'categories', NULL, 'vi', 34, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(36, '神秘', 'shenmi', '涉及解决犯罪或揭露秘密的小说。', 'novel', '', '', 'categories', NULL, 'cn', 34, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(37, 'Romance', 'romance', 'Novels that focus on romantic relationships.', 'novel', '', '', 'categories', NULL, 'en', 37, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(38, 'Lãng Mạn', 'lang-man', 'Các tiểu thuyết tập trung vào các mối quan hệ lãng mạn.', 'novel', '', '', 'categories', NULL, 'vi', 37, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(39, '爱情', 'aiqing', '专注于浪漫关系的小说。', 'novel', '', '', 'categories', NULL, 'cn', 37, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(40, 'Science Fiction', 'science-fiction', 'Novels that explore futuristic concepts and advanced technology.', 'novel', '', '', 'categories', NULL, 'en', 40, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(41, 'Khoa Học Viễn Tưởng', 'khoa-hoc-vien-tuong', 'Các tiểu thuyết khám phá các khái niệm tương lai và công nghệ tiên tiến.', 'novel', '', '', 'categories', NULL, 'vi', 40, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(42, '科幻', 'kehuan', '探索未来概念和先进技术的小说。', 'novel', '', '', 'categories', NULL, 'cn', 40, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(43, 'Horror', 'horror', 'Novels designed to scare and thrill readers.', 'novel', '', '', 'categories', NULL, 'en', 43, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(44, 'Kinh Dị', 'kinh-di', 'Các tiểu thuyết được thiết kế để làm sợ và kích thích độc giả.', 'novel', '', '', 'categories', NULL, 'vi', 43, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(45, '恐怖', 'kongbu', '旨在吓唬和刺激读者的小说。', 'novel', '', '', 'categories', NULL, 'cn', 43, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(46, 'Thriller', 'thriller', 'Novels that create suspense and excitement.', 'novel', '', '', 'categories', NULL, 'en', 46, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(47, 'Kinh Dị', 'kinh-di', 'Các tiểu thuyết tạo ra sự hồi hộp và hứng thú.', 'novel', '', '', 'categories', NULL, 'vi', 46, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(48, '惊悚', 'jingsong', '制造悬念和兴奋的小说。', 'novel', '', '', 'categories', NULL, 'cn', 46, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(49, 'Historical', 'historical', 'Novels set in historical periods.', 'novel', '', '', 'categories', NULL, 'en', 49, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(50, 'Lịch Sử', 'lich-su', 'Các tiểu thuyết đặt trong các thời kỳ lịch sử.', 'novel', '', '', 'categories', NULL, 'vi', 49, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(51, '历史', 'lishi', '设定在历史时期的小说。', 'novel', '', '', 'categories', NULL, 'cn', 49, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(52, 'Young Adult', 'young-adult', 'Novels targeted towards young adult readers.', 'novel', '', '', 'categories', NULL, 'en', 52, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(53, 'Thanh Thiếu Niên', 'thanh-thieu-nien', 'Các tiểu thuyết dành cho độc giả thanh thiếu niên.', 'novel', '', '', 'categories', NULL, 'vi', 52, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(54, '青少年', 'qingshaonian', '针对青少年读者的小说。', 'novel', '', '', 'categories', NULL, 'cn', 52, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(55, 'Adventure', 'adventure', 'Novels that emphasize exploration and exciting journeys.', 'novel', '', '', 'categories', NULL, 'en', 55, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(56, 'Phiêu Lưu', 'phieu-luu', 'Các tiểu thuyết nhấn mạnh vào khám phá và những chuyến đi đầy thú vị.', 'novel', '', '', 'categories', NULL, 'vi', 55, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(57, '冒险', 'maoxian', '强调探索和激动人心的旅程的小说。', 'novel', '', '', 'categories', NULL, 'cn', 55, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(58, 'Crime', 'crime', 'Novels that revolve around criminal activities and investigations.', 'novel', '', '', 'categories', NULL, 'en', 58, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(59, 'Tội Phạm', 'toi-pham', 'Các tiểu thuyết xoay quanh hoạt động tội phạm và điều tra.', 'novel', '', '', 'categories', NULL, 'vi', 58, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(60, '犯罪', 'fanzui', '围绕犯罪活动和调查的小说。', 'novel', '', '', 'categories', NULL, 'cn', 58, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(61, 'Superhero', 'superhero', 'Comics featuring heroes with extraordinary abilities.', 'comic', '', '', 'categories', NULL, 'en', 61, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(62, 'Siêu Anh Hùng', 'sieuanhhung', 'Truyện tranh về những anh hùng có khả năng phi thường.', 'comic', '', '', 'categories', NULL, 'vi', 61, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(63, '超级英雄', 'chaojiyingxiong', '拥有非凡能力的英雄漫画。', 'comic', '', '', 'categories', NULL, 'cn', 61, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(64, 'Fantasy', 'fantasy', 'Comics set in magical and mythical worlds.', 'comic', '', '', 'categories', NULL, 'en', 64, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(65, 'Thần Thoại', 'than-thoai', 'Truyện tranh đặt trong các thế giới ma thuật và thần thoại.', 'comic', '', '', 'categories', NULL, 'vi', 64, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(66, '奇幻', 'qihuan', '设定在魔法和神话世界的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 64, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(67, 'Science Fiction', 'science-fiction', 'Comics exploring futuristic and technological themes.', 'comic', '', '', 'categories', NULL, 'en', 67, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(68, 'Khoa Học Viễn Tưởng', 'khoa-hoc-vien-tuong', 'Truyện tranh khám phá các chủ đề tương lai và công nghệ.', 'comic', '', '', 'categories', NULL, 'vi', 67, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(69, '科幻', 'kehuan', '探索未来和科技主题的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 67, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(70, 'Horror', 'horror', 'Comics designed to scare and thrill readers.', 'comic', '', '', 'categories', NULL, 'en', 70, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(71, 'Kinh Dị', 'kinh-di', 'Truyện tranh được thiết kế để làm sợ và kích thích độc giả.', 'comic', '', '', 'categories', NULL, 'vi', 70, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(72, '恐怖', 'kongbu', '旨在吓唬和刺激读者的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 70, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(73, 'Mystery', 'mystery', 'Comics that involve solving crimes or uncovering secrets.', 'comic', '', '', 'categories', NULL, 'en', 73, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(74, 'Trinh Thám', 'trinh-tham', 'Truyện tranh liên quan đến việc giải quyết tội ác hoặc khám phá bí mật.', 'comic', '', '', 'categories', NULL, 'vi', 73, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(75, '神秘', 'shenmi', '涉及解决犯罪或揭露秘密的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 73, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(76, 'Romance', 'romance', 'Comics that focus on romantic relationships.', 'comic', '', '', 'categories', NULL, 'en', 76, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(77, 'Lãng Mạn', 'lang-man', 'Truyện tranh tập trung vào các mối quan hệ lãng mạn.', 'comic', '', '', 'categories', NULL, 'vi', 76, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(78, '爱情', 'aiqing', '聚焦于浪漫关系的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 76, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(79, 'Slice of Life', 'slice-of-life', 'Comics depicting everyday experiences and personal stories.', 'comic', '', '', 'categories', NULL, 'en', 79, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(80, 'Hình Thức', 'hinh-thuc', 'Truyện tranh miêu tả những trải nghiệm hàng ngày và câu chuyện cá nhân.', 'comic', '', '', 'categories', NULL, 'vi', 79, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(81, '生活片段', 'shenghuo-pianduan', '描绘日常经历和个人故事的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 79, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(82, 'Supernatural', 'supernatural', 'Comics involving paranormal and magical phenomena.', 'comic', '', '', 'categories', NULL, 'en', 82, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(83, 'Siêu Năng', 'sieunang', 'Truyện tranh liên quan đến hiện tượng siêu nhiên và ma thuật.', 'comic', '', '', 'categories', NULL, 'vi', 82, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(84, '超自然', 'chaoshengran', '涉及超自然和魔法现象的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 82, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(85, 'Comedy', 'comedy', 'Comics designed to amuse and entertain.', 'comic', '', '', 'categories', NULL, 'en', 85, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(86, 'Hài Hước', 'hai-huoc', 'Truyện tranh được thiết kế để gây cười và giải trí.', 'comic', '', '', 'categories', NULL, 'vi', 85, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(87, '喜剧', 'xiju', '旨在取悦和娱乐的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 85, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(88, 'Slice of Adventure', 'slice-of-adventure', 'Comics featuring short adventures and exciting stories.', 'comic', '', '', 'categories', NULL, 'en', 88, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(89, 'Mảnh Phiêu Lưu', 'manh-phieu-luu', 'Truyện tranh về những cuộc phiêu lưu ngắn và câu chuyện thú vị.', 'comic', '', '', 'categories', NULL, 'vi', 88, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(90, '冒险片段', 'maoxian-pianduan', '包含短暂冒险和激动人心故事的漫画。', 'comic', '', '', 'categories', NULL, 'cn', 88, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(91, 'Action', 'action', 'Movies with intense physical activities and stunts.', 'movie', '', '', 'categories', NULL, 'en', 91, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(92, 'Hành động', 'hanh-dong', 'Phim với các hoạt động vật lý và pha hành động mãn nhãn.', 'movie', '', '', 'categories', NULL, 'vi', 91, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(93, '动作', 'dongzuo', '包含紧张的物理活动和特技的电影。', 'movie', '', '', 'categories', NULL, 'cn', 91, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(94, 'Comedy', 'comedy', 'Movies designed to amuse and entertain.', 'movie', '', '', 'categories', NULL, 'en', 94, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(95, 'Hài Hước', 'hai-huoc', 'Phim được thiết kế để gây cười và giải trí.', 'movie', '', '', 'categories', NULL, 'vi', 94, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(96, '喜剧', 'xiju', '旨在取悦和娱乐的电影。', 'movie', '', '', 'categories', NULL, 'cn', 94, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(97, 'Drama', 'drama', 'Movies that focus on emotional and relational development.', 'movie', '', '', 'categories', NULL, 'en', 97, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(98, 'Kịch tính', 'kich-tinh', 'Phim tập trung vào sự phát triển cảm xúc và mối quan hệ.', 'movie', '', '', 'categories', NULL, 'vi', 97, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(99, '剧情', 'juqing', '关注情感和人际关系发展的电影。', 'movie', '', '', 'categories', NULL, 'cn', 97, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(100, 'Horror', 'horror', 'Movies designed to scare and thrill audiences.', 'movie', '', '', 'categories', NULL, 'en', 100, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(101, 'Kinh Dị', 'kinh-di', 'Phim được thiết kế để làm sợ và kích thích khán giả.', 'movie', '', '', 'categories', NULL, 'vi', 100, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(102, '恐怖', 'kongbu', '旨在吓唬和刺激观众的电影。', 'movie', '', '', 'categories', NULL, 'cn', 100, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(103, 'Science Fiction', 'science-fiction', 'Movies exploring futuristic and technological themes.', 'movie', '', '', 'categories', NULL, 'en', 103, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(104, 'Khoa Học Viễn Tưởng', 'khoa-hoc-vien-tuong', 'Phim khám phá các chủ đề tương lai và công nghệ.', 'movie', '', '', 'categories', NULL, 'vi', 103, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(105, '科幻', 'kehuan', '探索未来和科技主题的电影。', 'movie', '', '', 'categories', NULL, 'cn', 103, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(106, 'Fantasy', 'fantasy', 'Movies set in magical and mythical worlds.', 'movie', '', '', 'categories', NULL, 'en', 106, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(107, 'Thần Thoại', 'than-thoai', 'Phim đặt trong các thế giới ma thuật và thần thoại.', 'movie', '', '', 'categories', NULL, 'vi', 106, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(108, '奇幻', 'qihuan', '设定在魔法和神话世界的电影。', 'movie', '', '', 'categories', NULL, 'cn', 106, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(109, 'Romance', 'romance', 'Movies that focus on romantic relationships.', 'movie', '', '', 'categories', NULL, 'en', 109, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(110, 'Lãng Mạn', 'lang-man', 'Phim tập trung vào các mối quan hệ lãng mạn.', 'movie', '', '', 'categories', NULL, 'vi', 109, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(111, '爱情', 'aiqing', '聚焦于浪漫关系的电影。', 'movie', '', '', 'categories', NULL, 'cn', 109, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(112, 'Thriller', 'thriller', 'Movies that create suspense and excitement.', 'movie', '', '', 'categories', NULL, 'en', 112, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(113, 'Kinh Dị', 'kinh-di', 'Phim tạo ra sự hồi hộp và hứng thú.', 'movie', '', '', 'categories', NULL, 'vi', 112, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(114, '惊悚', 'jingsong', '制造悬念和兴奋的电影。', 'movie', '', '', 'categories', NULL, 'cn', 112, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(115, 'Documentary', 'documentary', 'Movies that document reality and factual information.', 'movie', '', '', 'categories', NULL, 'en', 115, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(116, 'Tài Liệu', 'tai-lieu', 'Phim ghi lại hiện thực và thông tin sự kiện.', 'movie', '', '', 'categories', NULL, 'vi', 115, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(117, '纪录片', 'jilupian', '记录现实和事实信息的电影。', 'movie', '', '', 'categories', NULL, 'cn', 115, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(118, 'Animation', 'animation', 'Movies created using animation techniques.', 'movie', '', '', 'categories', NULL, 'en', 118, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(119, 'Hoạt Hình', 'hoat-hinh', 'Phim được tạo ra bằng kỹ thuật hoạt hình.', 'movie', '', '', 'categories', NULL, 'vi', 118, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(120, '动画', 'donghua', '使用动画技术制作的电影。', 'movie', '', '', 'categories', NULL, 'cn', 118, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(121, '2024', '2024', 'Movies released in 2024.', 'movie', '', '', 'release_year', NULL, 'en', 121, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(122, '2024', '2024', 'Phim phát hành vào năm 2024.', 'movie', '', '', 'release_year', NULL, 'vi', 121, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(123, '2024', '2024', '2024年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 121, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(124, '2023', '2023', 'Movies released in 2023.', 'movie', '', '', 'release_year', NULL, 'en', 124, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(125, '2023', '2023', 'Phim phát hành vào năm 2023.', 'movie', '', '', 'release_year', NULL, 'vi', 124, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(126, '2023', '2023', '2023年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 124, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(127, '2022', '2022', 'Movies released in 2022.', 'movie', '', '', 'release_year', NULL, 'en', 127, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(128, '2022', '2022', 'Phim phát hành vào năm 2022.', 'movie', '', '', 'release_year', NULL, 'vi', 127, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(129, '2022', '2022', '2022年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 127, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(130, '2021', '2021', 'Movies released in 2021.', 'movie', '', '', 'release_year', NULL, 'en', 130, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(131, '2021', '2021', 'Phim phát hành vào năm 2021.', 'movie', '', '', 'release_year', NULL, 'vi', 130, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(132, '2021', '2021', '2021年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 130, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(133, '2020', '2020', 'Movies released in 2020.', 'movie', '', '', 'release_year', NULL, 'en', 133, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(134, '2020', '2020', 'Phim phát hành vào năm 2020.', 'movie', '', '', 'release_year', NULL, 'vi', 133, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(135, '2020', '2020', '2020年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 133, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(136, '2019', '2019', 'Movies released in 2019.', 'movie', '', '', 'release_year', NULL, 'en', 136, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(137, '2019', '2019', 'Phim phát hành vào năm 2019.', 'movie', '', '', 'release_year', NULL, 'vi', 136, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(138, '2019', '2019', '2019年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 136, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(139, '2018', '2018', 'Movies released in 2018.', 'movie', '', '', 'release_year', NULL, 'en', 139, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(140, '2018', '2018', 'Phim phát hành vào năm 2018.', 'movie', '', '', 'release_year', NULL, 'vi', 139, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(141, '2018', '2018', '2018年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 139, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(142, '2017', '2017', 'Movies released in 2017.', 'movie', '', '', 'release_year', NULL, 'en', 142, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(143, '2017', '2017', 'Phim phát hành vào năm 2017.', 'movie', '', '', 'release_year', NULL, 'vi', 142, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(144, '2017', '2017', '2017年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 142, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(145, '2016', '2016', 'Movies released in 2016.', 'movie', '', '', 'release_year', NULL, 'en', 145, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(146, '2016', '2016', 'Phim phát hành vào năm 2016.', 'movie', '', '', 'release_year', NULL, 'vi', 145, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(147, '2016', '2016', '2016年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 145, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(148, '2015', '2015', 'Movies released in 2015.', 'movie', '', '', 'release_year', NULL, 'en', 148, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(149, '2015', '2015', 'Phim phát hành vào năm 2015.', 'movie', '', '', 'release_year', NULL, 'vi', 148, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(150, '2015', '2015', '2015年上映的电影。', 'movie', '', '', 'release_year', NULL, 'cn', 148, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(151, 'United States', 'united-states', 'Movies produced in the United States.', 'movie', '', '', 'country', NULL, 'en', 151, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(152, 'Hoa Kỳ', 'hoa-ky', 'Phim sản xuất tại Hoa Kỳ.', 'movie', '', '', 'country', NULL, 'vi', 151, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(153, '美国', 'meiguo', '美国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 151, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(154, 'United Kingdom', 'united-kingdom', 'Movies produced in the United Kingdom.', 'movie', '', '', 'country', NULL, 'en', 154, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(155, 'Vương quốc Anh', 'vuong-quoc-anh', 'Phim sản xuất tại Vương quốc Anh.', 'movie', '', '', 'country', NULL, 'vi', 154, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(156, '英国', 'yingguo', '英国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 154, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(157, 'France', 'france', 'Movies produced in France.', 'movie', '', '', 'country', NULL, 'en', 157, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(158, 'Pháp', 'phap', 'Phim sản xuất tại Pháp.', 'movie', '', '', 'country', NULL, 'vi', 157, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(159, '法国', 'faguo', '法国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 157, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(160, 'Japan', 'japan', 'Movies produced in Japan.', 'movie', '', '', 'country', NULL, 'en', 160, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(161, 'Nhật Bản', 'nhat-ban', 'Phim sản xuất tại Nhật Bản.', 'movie', '', '', 'country', NULL, 'vi', 160, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(162, '日本', 'riben', '日本制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 160, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(163, 'South Korea', 'south-korea', 'Movies produced in South Korea.', 'movie', '', '', 'country', NULL, 'en', 163, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(164, 'Hàn Quốc', 'han-quoc', 'Phim sản xuất tại Hàn Quốc.', 'movie', '', '', 'country', NULL, 'vi', 163, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(165, '韩国', 'hanguo', '韩国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 163, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(166, 'Italy', 'italy', 'Movies produced in Italy.', 'movie', '', '', 'country', NULL, 'en', 166, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(167, 'Ý', 'y', 'Phim sản xuất tại Ý.', 'movie', '', '', 'country', NULL, 'vi', 166, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(168, '意大利', 'yidali', '意大利制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 166, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(169, 'India', 'india', 'Movies produced in India.', 'movie', '', '', 'country', NULL, 'en', 169, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(170, 'Ấn Độ', 'an-do', 'Phim sản xuất tại Ấn Độ.', 'movie', '', '', 'country', NULL, 'vi', 169, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(171, '印度', 'yindu', '印度制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 169, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(172, 'China', 'china', 'Movies produced in China.', 'movie', '', '', 'country', NULL, 'en', 172, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(173, 'Trung Quốc', 'trung-quoc', 'Phim sản xuất tại Trung Quốc.', 'movie', '', '', 'country', NULL, 'vi', 172, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(174, '中国', 'zhongguo', '中国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 172, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(175, 'Germany', 'germany', 'Movies produced in Germany.', 'movie', '', '', 'country', NULL, 'en', 175, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(176, 'Đức', 'duc', 'Phim sản xuất tại Đức.', 'movie', '', '', 'country', NULL, 'vi', 175, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(177, '德国', 'deguo', '德国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 175, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(178, 'Canada', 'canada', 'Movies produced in Canada.', 'movie', '', '', 'country', NULL, 'en', 178, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(179, 'Canada', 'canada', 'Phim sản xuất tại Canada.', 'movie', '', '', 'country', NULL, 'vi', 178, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(180, '加拿大', 'jianada', '加拿大制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 178, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(181, 'Vietnam', 'vietnam', 'Movies produced in Vietnam.', 'movie', '', '', 'country', NULL, 'en', 181, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(182, 'Việt Nam', 'viet-nam', 'Phim sản xuất tại Việt Nam.', 'movie', '', '', 'country', NULL, 'vi', 181, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(183, '越南', 'yuènán', '越南制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 181, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(184, 'Thailand', 'thailand', 'Movies produced in Thailand.', 'movie', '', '', 'country', NULL, 'en', 184, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(185, 'Thái Lan', 'thai-lan', 'Phim sản xuất tại Thái Lan.', 'movie', '', '', 'country', NULL, 'vi', 184, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(186, '泰国', 'taiguo', '泰国制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 184, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(187, 'Singapore', 'singapore', 'Movies produced in Singapore.', 'movie', '', '', 'country', NULL, 'en', 187, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(188, 'Singapore', 'singapore', 'Phim sản xuất tại Singapore.', 'movie', '', '', 'country', NULL, 'vi', 187, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(189, '新加坡', 'xinjiaapo', '新加坡制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 187, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(190, 'Malaysia', 'malaysia', 'Movies produced in Malaysia.', 'movie', '', '', 'country', NULL, 'en', 190, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(191, 'Malaysia', 'malaysia', 'Phim sản xuất tại Malaysia.', 'movie', '', '', 'country', NULL, 'vi', 190, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(192, '马来西亚', 'malaixiya', '马来西亚制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 190, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(193, 'Indonesia', 'indonesia', 'Movies produced in Indonesia.', 'movie', '', '', 'country', NULL, 'en', 193, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(194, 'Indonesia', 'indonesia', 'Phim sản xuất tại Indonesia.', 'movie', '', '', 'country', NULL, 'vi', 193, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(195, '印度尼西亚', 'yinnunixiya', '印度尼西亚制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 193, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(196, 'Philippines', 'philippines', 'Movies produced in the Philippines.', 'movie', '', '', 'country', NULL, 'en', 196, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(197, 'Philippines', 'philippines', 'Phim sản xuất tại Philippines.', 'movie', '', '', 'country', NULL, 'vi', 196, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(198, '菲律宾', 'feilvbin', '菲律宾制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 196, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(199, 'Taiwan', 'taiwan', 'Movies produced in Taiwan.', 'movie', '', '', 'country', NULL, 'en', 199, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(200, 'Taiwan', 'taiwan', 'Phim sản xuất tại Taiwan.', 'movie', '', '', 'country', NULL, 'vi', 199, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(201, '台湾', 'taiwan', '台湾制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 199, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(202, 'Hong Kong', 'hong-kong', 'Movies produced in Hong Kong.', 'movie', '', '', 'country', NULL, 'en', 202, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(203, 'Hong Kong', 'hong-kong', 'Phim sản xuất tại Hong Kong.', 'movie', '', '', 'country', NULL, 'vi', 202, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(204, '香港', 'xianggang', '香港制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 202, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(205, 'Iran', 'iran', 'Movies produced in Iran.', 'movie', '', '', 'country', NULL, 'en', 205, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(206, 'Iran', 'iran', 'Phim sản xuất tại Iran.', 'movie', '', '', 'country', NULL, 'vi', 205, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(207, '伊朗', 'yilang', '伊朗制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 205, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(208, 'Turkey', 'turkey', 'Movies produced in Turkey.', 'movie', '', '', 'country', NULL, 'en', 208, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(209, 'Turkey', 'turkey', 'Phim sản xuất tại Turkey.', 'movie', '', '', 'country', NULL, 'vi', 208, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(210, '土耳其', 'tuerqi', '土耳其制作的电影。', 'movie', '', '', 'country', NULL, 'cn', 208, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(211, 'Trending', 'trending', 'Popular and currently trending movies.', 'movie', '', '', 'tags', NULL, 'en', 211, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(212, 'Trending', 'trending', 'Các phim đang phổ biến và thịnh hành.', 'movie', '', '', 'tags', NULL, 'vi', 211, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(213, 'Trending', 'trending', '热门和当前流行的电影。', 'movie', '', '', 'tags', NULL, 'cn', 211, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(214, 'Free', 'free', 'Movies available for free streaming.', 'movie', '', '', 'tags', NULL, 'en', 214, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(215, 'Free', 'free', 'Các phim có sẵn để xem miễn phí.', 'movie', '', '', 'tags', NULL, 'vi', 214, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(216, 'Free', 'free', '可免费观看的电影。', 'movie', '', '', 'tags', NULL, 'cn', 214, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(217, 'New Release', 'new-release', 'Recently released movies.', 'movie', '', '', 'tags', NULL, 'en', 217, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(218, 'New Release', 'new-release', 'Các phim mới phát hành gần đây.', 'movie', '', '', 'tags', NULL, 'vi', 217, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(219, 'New Release', 'new-release', '最近上映的电影。', 'movie', '', '', 'tags', NULL, 'cn', 217, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(220, 'Classic', 'classic', 'Timeless and classic movies.', 'movie', '', '', 'tags', NULL, 'en', 220, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(221, 'Classic', 'classic', 'Các phim vượt thời gian và cổ điển.', 'movie', '', '', 'tags', NULL, 'vi', 220, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(222, 'Classic', 'classic', '经典和永恒的电影。', 'movie', '', '', 'tags', NULL, 'cn', 220, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(223, 'Top Rated', 'top-rated', 'Highly rated and acclaimed movies.', 'movie', '', '', 'tags', NULL, 'en', 223, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(224, 'Top Rated', 'top-rated', 'Các phim được đánh giá cao và được khen ngợi.', 'movie', '', '', 'tags', NULL, 'vi', 223, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(225, 'Top Rated', 'top-rated', '高度评价和赞誉的电影。', 'movie', '', '', 'tags', NULL, 'cn', 223, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(226, 'Award Winning', 'award-winning', 'Movies that have won awards.', 'movie', '', '', 'tags', NULL, 'en', 226, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(227, 'Award Winning', 'award-winning', 'Các phim đã giành giải thưởng.', 'movie', '', '', 'tags', NULL, 'vi', 226, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(228, 'Award Winning', 'award-winning', '获奖的电影。', 'movie', '', '', 'tags', NULL, 'cn', 226, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(229, 'Action', 'action', 'Movies with intense physical activities and stunts.', 'movie', '', '', 'tags', NULL, 'en', 229, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(230, 'Action', 'action', 'Phim với các hoạt động vật lý và pha hành động mãn nhãn.', 'movie', '', '', 'tags', NULL, 'vi', 229, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(231, 'Action', 'action', '动作类电影，包含紧张的物理活动和特技。', 'movie', '', '', 'tags', NULL, 'cn', 229, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(232, 'Comedy', 'comedy', 'Movies designed to amuse and entertain.', 'movie', '', '', 'tags', NULL, 'en', 232, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(233, 'Comedy', 'comedy', 'Các phim được thiết kế để gây cười và giải trí.', 'movie', '', '', 'tags', NULL, 'vi', 232, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(234, 'Comedy', 'comedy', '喜剧类电影，旨在取悦和娱乐。', 'movie', '', '', 'tags', NULL, 'cn', 232, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(235, 'Drama', 'drama', 'Movies that focus on emotional and relational development.', 'movie', '', '', 'tags', NULL, 'en', 235, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(236, 'Drama', 'drama', 'Các phim tập trung vào sự phát triển cảm xúc và mối quan hệ.', 'movie', '', '', 'tags', NULL, 'vi', 235, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(237, 'Drama', 'drama', '剧情类电影，关注情感和人际关系的发展。', 'movie', '', '', 'tags', NULL, 'cn', 235, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(238, 'Horror', 'horror', 'Movies designed to scare and thrill audiences.', 'movie', '', '', 'tags', NULL, 'en', 238, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(239, 'Horror', 'horror', 'Các phim được thiết kế để làm sợ và kích thích khán giả.', 'movie', '', '', 'tags', NULL, 'vi', 238, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(240, 'Horror', 'horror', '恐怖类电影，旨在吓唬和刺激观众。', 'movie', '', '', 'tags', NULL, 'cn', 238, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(241, 'Featured', 'featured', 'Highlighting the best novels.', 'novel', '', '', 'tags', NULL, 'en', 241, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(242, 'Nổi bật', 'noi-bat', 'Nổi bật những cuốn tiểu thuyết hay nhất.', 'novel', '', '', 'tags', NULL, 'vi', 241, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(243, '精选', 'jingxuan', '精选最佳小说。', 'novel', '', '', 'tags', NULL, 'cn', 241, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(244, 'Bestseller', 'bestseller', 'Top-selling novels.', 'novel', '', '', 'tags', NULL, 'en', 244, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(245, 'Bán chạy', 'ban-chay', 'Những tiểu thuyết bán chạy nhất.', 'novel', '', '', 'tags', NULL, 'vi', 244, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(246, '畅销', 'changxiao', '畅销小说。', 'novel', '', '', 'tags', NULL, 'cn', 244, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(247, 'New Arrival', 'new-arrival', 'Recently added novels.', 'novel', '', '', 'tags', NULL, 'en', 247, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(248, 'Mới về', 'moi-ve', 'Những tiểu thuyết mới được thêm vào.', 'novel', '', '', 'tags', NULL, 'vi', 247, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(249, '新到', 'xinda', '最近添加的小说。', 'novel', '', '', 'tags', NULL, 'cn', 247, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(250, 'Recommended', 'recommended', 'Handpicked novels for you.', 'novel', '', '', 'tags', NULL, 'en', 250, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(251, 'Được đề xuất', 'duoc-de-xuat', 'Những tiểu thuyết được chọn lựa cho bạn.', 'novel', '', '', 'tags', NULL, 'vi', 250, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(252, '推荐', 'tuijian', '为您精选的小说。', 'novel', '', '', 'tags', NULL, 'cn', 250, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(253, 'Popular', 'popular', 'Most popular novels.', 'novel', '', '', 'tags', NULL, 'en', 253, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(254, 'Phổ biến', 'pho-bien', 'Những tiểu thuyết phổ biến nhất.', 'novel', '', '', 'tags', NULL, 'vi', 253, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(255, '热门', 'remen', '最受欢迎的小说。', 'novel', '', '', 'tags', NULL, 'cn', 253, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(256, 'Featured', 'featured', 'Highlighting the best comics.', 'comic', '', '', 'tags', NULL, 'en', 256, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(257, 'Nổi bật', 'noi-bat', 'Nổi bật những truyện tranh hay nhất.', 'comic', '', '', 'tags', NULL, 'vi', 256, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(258, '精选', 'jingxuan', '精选最佳漫画。', 'comic', '', '', 'tags', NULL, 'cn', 256, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(259, 'Bestseller', 'bestseller', 'Top-selling comics.', 'comic', '', '', 'tags', NULL, 'en', 259, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(260, 'Bán chạy', 'ban-chay', 'Những truyện tranh bán chạy nhất.', 'comic', '', '', 'tags', NULL, 'vi', 259, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(261, '畅销', 'changxiao', '畅销漫画。', 'comic', '', '', 'tags', NULL, 'cn', 259, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(262, 'New Arrival', 'new-arrival', 'Recently added comics.', 'comic', '', '', 'tags', NULL, 'en', 262, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(263, 'Mới về', 'moi-ve', 'Những truyện tranh mới được thêm vào.', 'comic', '', '', 'tags', NULL, 'vi', 262, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(264, '新到', 'xinda', '最近添加的漫画。', 'comic', '', '', 'tags', NULL, 'cn', 262, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(265, 'Recommended', 'recommended', 'Handpicked comics for you.', 'comic', '', '', 'tags', NULL, 'en', 265, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(266, 'Được đề xuất', 'duoc-de-xuat', 'Những truyện tranh được chọn lựa cho bạn.', 'comic', '', '', 'tags', NULL, 'vi', 265, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(267, '推荐', 'tuijian', '为您精选的漫画。', 'comic', '', '', 'tags', NULL, 'cn', 265, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(268, 'Popular', 'popular', 'Most popular comics.', 'comic', '', '', 'tags', NULL, 'en', 268, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(269, 'Phổ biến', 'pho-bien', 'Những truyện tranh phổ biến nhất.', 'comic', '', '', 'tags', NULL, 'vi', 268, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(270, '热门', 'remen', '最受欢迎的漫画。', 'comic', '', '', 'tags', NULL, 'cn', 268, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(271, 'Featured', 'featured', 'Highlighting the best games.', 'game', '', '', 'tags', NULL, 'en', 271, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(272, 'Nổi bật', 'noi-bat', 'Nổi bật những trò chơi hay nhất.', 'game', '', '', 'tags', NULL, 'vi', 271, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(273, '精选', 'jingxuan', '精选最佳游戏。', 'game', '', '', 'tags', NULL, 'cn', 271, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(274, 'Top Rated', 'top-rated', 'Highest-rated games.', 'game', '', '', 'tags', NULL, 'en', 274, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(275, 'Xếp hạng cao', 'xep-hang-cao', 'Những trò chơi được xếp hạng cao nhất.', 'game', '', '', 'tags', NULL, 'vi', 274, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(276, '高评分', 'gaopingfen', '评分最高的游戏。', 'game', '', '', 'tags', NULL, 'cn', 274, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(277, 'New Release', 'new-release', 'Latest released games.', 'game', '', '', 'tags', NULL, 'en', 277, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(278, 'Phát hành mới', 'phat-hanh-moi', 'Những trò chơi mới được phát hành.', 'game', '', '', 'tags', NULL, 'vi', 277, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(279, '新发布', 'xinfa-bu', '最新发布的游戏。', 'game', '', '', 'tags', NULL, 'cn', 277, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(280, 'Popular', 'popular', 'Most popular games.', 'game', '', '', 'tags', NULL, 'en', 280, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(281, 'Phổ biến', 'pho-bien', 'Những trò chơi phổ biến nhất.', 'game', '', '', 'tags', NULL, 'vi', 280, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(282, '热门', 'remen', '最受欢迎的游戏。', 'game', '', '', 'tags', NULL, 'cn', 280, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(283, 'Trending', 'trending', 'Currently trending games.', 'game', '', '', 'tags', NULL, 'en', 283, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(284, 'Đang thịnh hành', 'dang-thinh-hanh', 'Những trò chơi đang thịnh hành.', 'game', '', '', 'tags', NULL, 'vi', 283, '2024-01-01 00:00:00', '2024-01-01 00:00:00'),
(285, '趋势', 'qushi', '当前趋势的游戏。', 'game', '', '', 'tags', NULL, 'cn', 283, '2024-01-01 00:00:00', '2024-01-01 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_users`
--

CREATE TABLE `fast_users` (
  `id` int UNSIGNED NOT NULL,
  `username` varchar(40) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `fullname` varchar(150) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `avatar` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `role` enum('admin','moderator','author','member') NOT NULL,
  `permissions` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `optional` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `status` enum('active','inactive','banned') DEFAULT 'active',
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `phone` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `telegram` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `whatsapp` varchar(30) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `skype` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci DEFAULT '',
  `birthday` date DEFAULT NULL,
  `gender` enum('male','female','other') DEFAULT 'male',
  `about_me` text,
  `location` point DEFAULT NULL,
  `display` tinyint(1) NOT NULL DEFAULT '0',
  `coin` decimal(10,3) DEFAULT NULL,
  `package_name` enum('membership','gold','diamond') NOT NULL DEFAULT 'membership',
  `package_exp` datetime DEFAULT NULL,
  `personal` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin,
  `online` tinyint(1) NOT NULL DEFAULT '0'
) ;

--
-- Đang đổ dữ liệu cho bảng `fast_users`
--

INSERT INTO `fast_users` (`id`, `username`, `email`, `password`, `fullname`, `avatar`, `role`, `permissions`, `optional`, `status`, `created_at`, `updated_at`, `phone`, `telegram`, `whatsapp`, `skype`, `birthday`, `gender`, `about_me`, `location`, `display`, `coin`, `package_name`, `package_exp`, `personal`, `online`) VALUES
(1, 'sadmin', 'admin@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'mít', NULL, 'admin', '{\"Backend\\\\Home\":[\"index\"],\"Backend\\\\Files\":[\"index\",\"add\",\"edit\",\"delete\",\"manage\"],\"Backend\\\\Posttype\":[\"index\",\"edit\",\"add\",\"delete\",\"copy\"],\"Backend\\\\Posts\":[\"index\",\"edit\",\"add\",\"delete\",\"clone\",\"copy\"],\"Backend\\\\Terms\":[\"index\",\"edit\",\"add\",\"delete\"],\"Backend\\\\Users\":[\"index\",\"edit\",\"add\",\"delete\",\"profile\"],\"Backend\\\\Options\":[\"index\",\"add\",\"edit\"],\"Backend\\\\Languages\":[\"index\",\"add\",\"edit\",\"setdefault\",\"changestatus\"],\"Api\\\\Files\":[\"index\",\"add\",\"edit\",\"delete\",\"move\",\"copy\",\"rename\"]}', NULL, 'active', '2024-09-30 10:08:16', '2025-01-18 16:11:48', '8468686868', 'https://t.me/tranvana', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x000000000101000000d656ec2fbb9f5bc0e86a2bf697354b40, 1, NULL, 'membership', NULL, '{\"galleries\":[\"/uploads/users/1/1/download-_1__1736856705_6786548176338.webp\"],\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(17, 'tranvanb', 'phpswoole@gmail.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvanb', '/uploads/users/1/17/avatar.webp', 'admin', '{\"Backend\\\\Posts\": [\"index\", \"view\", \"edit\", \"create\", \"delete\"], \"Backend\\\\Users\": [\"view\", \"edit\", \"create\", \"delete\"], \"Backend\\\\Options\": [\"view\", \"edit\"], \"Backend\\\\Dashboard\": [\"index\", \"edit\", \"delete\"]}', NULL, 'active', '2024-10-02 03:17:57', '2025-01-14 12:27:50', '8468686868', 'https://t.me/tranvanb', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/17\\/download-_1__1736856771_678654c37a6a8.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(18, 'tranvanc', 'newuser@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvanc\n', '/uploads/users/1/18/avatar.webp', 'member', '[]', '{\"activation_no\": \"KXZIIA\", \"activation_code\": \"gk6vdyuewoqkqpur4vjy\", \"activation_expires\": 1734620671}', 'active', '2024-12-18 22:04:31', '2025-01-14 12:27:53', '8468686868', 'https://t.me/tranvanc', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"/uploads/users/1/18/download-_1__1736856981_67865595d45d8.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(19, 'tranvand', 'newuser2@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvand', '/uploads/users/1/19/avatar.webp', 'member', '[]', '{\"activation_no\": \"3VZ9JP\", \"activation_code\": \"9v2vnorzrx1o0oqnme2z\", \"activation_expires\": 1734620765}', 'active', '2024-12-18 22:06:05', '2025-01-14 12:27:56', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/19\\/download-_1__1736857044_678655d4b91eb.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(20, 'tranvann', 'newuser22@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvann', '/uploads/users/1/20/avatar.webp', 'member', '[]', '{\"activation_no\": \"CBZYOV\", \"activation_code\": \"ukaqmcf9gemt0c4dltvx\", \"activation_expires\": 1734622423}', 'active', '2024-12-18 22:33:43', '2025-01-14 12:27:59', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/20\\/download-_1__1736857346_67865702b9f61.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(21, 'tranvanm', 'member@gmail.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvanm\n', '/uploads/users/1/21/avatar.webp', 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', NULL, 'active', '2024-12-21 18:38:56', '2025-01-14 12:26:24', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'other', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/21\\/download-_1__1736857365_6786571570482.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(22, 'tranvang', '123123123213213213@gmail.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvang', '/uploads/users/1/22/avatar.webp', 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', '{\"activation_no\": \"VYEF5H\", \"activation_code\": \"bnadaf5awbyljkmibshr\", \"activation_expires\": 1735651365}', 'active', '2024-12-30 20:22:45', '2025-01-14 12:28:04', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/22\\/download-_1__1736857385_6786572923f68.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(23, 'tranvanh', '1231213123213213213@gmail.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvanh', '/uploads/users/1/23/avatar.webp', 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', '{\"activation_no\": \"BIYMJP\", \"activation_code\": \"1qg9srobgn37pwiemlff\", \"activation_expires\": 1735651665}', 'active', '2024-12-30 20:27:45', '2025-01-14 12:28:07', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'female', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/23\\/download-_1__1736857437_6786575d1ccdf.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(24, 'tranvanj', 'html.html@gmail.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'tranvanj', '/uploads/users/1/24/avatar.webp', 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', '{\"activation_no\": \"2ODH4E\", \"activation_code\": \"ica4hz62ikvoilof2uxa\", \"activation_expires\": 1735653042}', 'active', '2024-12-30 20:50:42', '2025-01-14 12:28:11', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'female', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/24\\/download-_1__1736857479_678657870d970.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 0),
(25, 'tranvank', 'csqaavsd@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'TRANVANC', NULL, 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', '{\"activation_no\": \"IBULGH\", \"activation_code\": \"0l0jajvwl9niofxxvdbg\", \"activation_expires\": 1736229195}', 'active', '2025-01-06 12:53:15', '2025-01-17 08:03:01', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/25\\/download-_1__1737027914_6788f14ad54fb.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\"]}', 0),
(26, 'tranvanp', 'scsvsdvdsvd@example.com', '$2y$10$jJzcVXtMuqC3LKSjtX2I0ulknNZCZmJuP8lIlKBq0vaTWAJYFZamu', 'TRANVAND', '/uploads/users/1/26/avatar.webp', 'member', '{\"Backend\\\\Home\": [\"index\"], \"Backend\\\\Users\": [\"profile\"]}', '{\"activation_no\": \"EXQD48\", \"activation_code\": \"0c3klygefnxmatwyiiks\", \"activation_expires\": 1736600916}', 'active', '2025-01-10 13:08:36', '2025-01-16 06:55:42', '8468686868', 'https://t.me/tranvanD', '', '', '2000-10-20', 'male', 'Mô tả về công việc và cuộc sống của user sở thích này nọ đồ đó,..............', 0x0000000001010000000000000000805a400000000000002640, 1, NULL, 'membership', NULL, '{\"galleries\":[\"/uploads/users/1/26/download-_1__1736858086_678659e6491fc.webp\"],\"job\":\"CA\",\"favorites\":[\"3\",\"3\",\"2\",\"1\",\"4\"]}', 1),
(27, 'user1234', 'user@example.com', '$2y$10$vmyRME6flzQ2RhtyDXmXU.73z6tfM4BTIYpO4ahgQe5AV4Vd7DSha', 'user 1  12321321', '/uploads/users/1/27/avatar.webp', 'member', '{\"Backend\\\\Home\":[\"index\"],\"Backend\\\\Users\":[\"profile\"]}', '{\"activation_no\":\"ICSGR9\",\"activation_code\":\"xewldevo62jjac8p0qkh\",\"activation_expires\":1737098116}', 'active', '2025-01-16 07:15:16', '2025-01-16 12:10:22', '84367626244', '', '', '', '1997-01-16', 'other', '2342424', NULL, 0, NULL, 'membership', NULL, '{\"galleries\":[\"\\/uploads\\/users\\/1\\/27\\/galleries0_1737019572_6788d0b4ad8b8.webp\",\"\\/uploads\\/users\\/1\\/27\\/galleries1_1737019573_6788d0b51d251.webp\",\"\\/uploads\\/users\\/1\\/27\\/galleries2_1737019573_6788d0b57952c.webp\",\"\\/uploads\\/users\\/1\\/27\\/galleries2_1737029227_6788f66bdca7a.webp\"],\"job\":\"3\",\"favorites\":[\"3\",\"1\",\"5\",\"7\",\"9\"]}', 0);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `fast_user_relations`
--

CREATE TABLE `fast_user_relations` (
  `id` int NOT NULL,
  `user_id` int NOT NULL,
  `target_user_id` int NOT NULL,
  `relation_type` enum('like','dislike','super_like','action3','action4','action5','action6','action7','action8','action9','action10') NOT NULL,
  `created_at` datetime DEFAULT CURRENT_TIMESTAMP,
  `updated_at` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;

--
-- Đang đổ dữ liệu cho bảng `fast_user_relations`
--

INSERT INTO `fast_user_relations` (`id`, `user_id`, `target_user_id`, `relation_type`, `created_at`, `updated_at`) VALUES
(1, 17, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(2, 18, 1, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(3, 19, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(4, 20, 1, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(5, 21, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(6, 22, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(7, 23, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(8, 24, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(9, 25, 1, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(10, 26, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(11, 27, 1, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(12, 1, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(13, 18, 17, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(14, 19, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(15, 20, 17, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(16, 21, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(17, 22, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(18, 23, 17, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(19, 24, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(20, 25, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(21, 26, 17, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(22, 27, 17, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(23, 1, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(24, 17, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(25, 19, 18, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(26, 20, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(27, 21, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(28, 22, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(29, 23, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(30, 24, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(31, 25, 18, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(32, 26, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(33, 27, 18, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(34, 1, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(35, 17, 19, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(36, 18, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(37, 20, 19, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(38, 21, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(39, 22, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(40, 23, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(41, 24, 19, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(42, 25, 19, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(43, 26, 19, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(44, 27, 19, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(45, 1, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(46, 17, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(47, 18, 20, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(48, 19, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(49, 21, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(50, 22, 20, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(51, 23, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(52, 24, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(53, 25, 20, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(54, 26, 20, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(55, 27, 20, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(56, 1, 21, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(57, 17, 21, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(58, 18, 21, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(59, 19, 21, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(60, 20, 21, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(61, 22, 21, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(62, 23, 21, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(63, 24, 21, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(64, 25, 21, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(65, 26, 21, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(66, 27, 21, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(67, 1, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(68, 17, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(69, 18, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(70, 19, 22, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(71, 20, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(72, 21, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(73, 23, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(74, 24, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(75, 25, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(76, 26, 22, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(77, 27, 22, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(78, 1, 23, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(79, 17, 23, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(80, 18, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(81, 19, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(82, 20, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(83, 21, 23, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(84, 22, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(85, 24, 23, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(86, 25, 23, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(87, 26, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(88, 27, 23, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(89, 1, 24, 'super_like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(90, 17, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(91, 18, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(92, 19, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(93, 20, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(94, 21, 24, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(95, 22, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(96, 23, 24, 'dislike', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(97, 25, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(98, 26, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(99, 27, 24, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(100, 1, 25, 'like', '2025-01-16 15:04:17', '2025-01-16 15:04:17'),
(128, 17, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(129, 18, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(130, 19, 25, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(131, 20, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(132, 21, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(133, 22, 25, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(134, 23, 25, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(135, 24, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(136, 26, 25, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(137, 27, 25, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(138, 1, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(139, 17, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(140, 18, 26, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(141, 19, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(142, 20, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(143, 21, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(144, 22, 26, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(145, 23, 26, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(146, 24, 26, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(147, 25, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(148, 27, 26, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(149, 1, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(150, 17, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(151, 18, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(152, 19, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(153, 20, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(154, 21, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(155, 22, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(156, 23, 27, 'dislike', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(157, 24, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(158, 25, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39'),
(159, 26, 27, 'like', '2025-01-16 15:04:39', '2025-01-16 15:04:39');

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `fast_comments`
--
ALTER TABLE `fast_comments`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_conversations`
--
ALTER TABLE `fast_conversations`
  ADD PRIMARY KEY (`id`,`user_id`),
  ADD UNIQUE KEY `unique_conversation_user` (`conversation_id`,`user_id`);

--
-- Chỉ mục cho bảng `fast_files`
--
ALTER TABLE `fast_files`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_languages`
--
ALTER TABLE `fast_languages`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `code` (`code`);

--
-- Chỉ mục cho bảng `fast_messages`
--
ALTER TABLE `fast_messages`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_options`
--
ALTER TABLE `fast_options`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_actor_cn`
--
ALTER TABLE `fast_posts_actor_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_actor_en`
--
ALTER TABLE `fast_posts_actor_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_actor_rel`
--
ALTER TABLE `fast_posts_actor_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_actor_vi`
--
ALTER TABLE `fast_posts_actor_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_chapter_cn`
--
ALTER TABLE `fast_posts_comic_chapter_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_chapter_en`
--
ALTER TABLE `fast_posts_comic_chapter_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_chapter_rel`
--
ALTER TABLE `fast_posts_comic_chapter_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_chapter_vi`
--
ALTER TABLE `fast_posts_comic_chapter_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_cn`
--
ALTER TABLE `fast_posts_comic_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_en`
--
ALTER TABLE `fast_posts_comic_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_rel`
--
ALTER TABLE `fast_posts_comic_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_comic_vi`
--
ALTER TABLE `fast_posts_comic_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_creator_cn`
--
ALTER TABLE `fast_posts_creator_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_creator_en`
--
ALTER TABLE `fast_posts_creator_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_creator_rel`
--
ALTER TABLE `fast_posts_creator_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_creator_vi`
--
ALTER TABLE `fast_posts_creator_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_director_cn`
--
ALTER TABLE `fast_posts_director_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_director_en`
--
ALTER TABLE `fast_posts_director_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_director_rel`
--
ALTER TABLE `fast_posts_director_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_director_vi`
--
ALTER TABLE `fast_posts_director_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_finder`
--
ALTER TABLE `fast_posts_finder`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_finder_rel`
--
ALTER TABLE `fast_posts_finder_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_game_cn`
--
ALTER TABLE `fast_posts_game_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_game_en`
--
ALTER TABLE `fast_posts_game_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_game_rel`
--
ALTER TABLE `fast_posts_game_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_game_vi`
--
ALTER TABLE `fast_posts_game_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_chapter_cn`
--
ALTER TABLE `fast_posts_movie_chapter_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_chapter_en`
--
ALTER TABLE `fast_posts_movie_chapter_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_chapter_rel`
--
ALTER TABLE `fast_posts_movie_chapter_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_chapter_vi`
--
ALTER TABLE `fast_posts_movie_chapter_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_cn`
--
ALTER TABLE `fast_posts_movie_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_en`
--
ALTER TABLE `fast_posts_movie_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_rel`
--
ALTER TABLE `fast_posts_movie_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_movie_vi`
--
ALTER TABLE `fast_posts_movie_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_chapter_cn`
--
ALTER TABLE `fast_posts_novel_chapter_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_chapter_en`
--
ALTER TABLE `fast_posts_novel_chapter_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_chapter_rel`
--
ALTER TABLE `fast_posts_novel_chapter_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_chapter_vi`
--
ALTER TABLE `fast_posts_novel_chapter_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_cn`
--
ALTER TABLE `fast_posts_novel_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_en`
--
ALTER TABLE `fast_posts_novel_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_rel`
--
ALTER TABLE `fast_posts_novel_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_novel_vi`
--
ALTER TABLE `fast_posts_novel_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_post_cn`
--
ALTER TABLE `fast_posts_post_cn`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_post_en`
--
ALTER TABLE `fast_posts_post_en`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posts_post_rel`
--
ALTER TABLE `fast_posts_post_rel`
  ADD PRIMARY KEY (`id`),
  ADD KEY `term_id` (`term_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Chỉ mục cho bảng `fast_posts_post_vi`
--
ALTER TABLE `fast_posts_post_vi`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_posttype`
--
ALTER TABLE `fast_posttype`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slug` (`slug`);

--
-- Chỉ mục cho bảng `fast_terms`
--
ALTER TABLE `fast_terms`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `fast_users`
--
ALTER TABLE `fast_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Chỉ mục cho bảng `fast_user_relations`
--
ALTER TABLE `fast_user_relations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_relation` (`user_id`,`target_user_id`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `fast_comments`
--
ALTER TABLE `fast_comments`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;

--
-- AUTO_INCREMENT cho bảng `fast_conversations`
--
ALTER TABLE `fast_conversations`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_files`
--
ALTER TABLE `fast_files`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=203;

--
-- AUTO_INCREMENT cho bảng `fast_languages`
--
ALTER TABLE `fast_languages`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `fast_messages`
--
ALTER TABLE `fast_messages`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=186;

--
-- AUTO_INCREMENT cho bảng `fast_options`
--
ALTER TABLE `fast_options`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT cho bảng `fast_posts_actor_cn`
--
ALTER TABLE `fast_posts_actor_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `fast_posts_actor_en`
--
ALTER TABLE `fast_posts_actor_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `fast_posts_actor_rel`
--
ALTER TABLE `fast_posts_actor_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT cho bảng `fast_posts_actor_vi`
--
ALTER TABLE `fast_posts_actor_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_chapter_cn`
--
ALTER TABLE `fast_posts_comic_chapter_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_chapter_en`
--
ALTER TABLE `fast_posts_comic_chapter_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_chapter_rel`
--
ALTER TABLE `fast_posts_comic_chapter_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=132;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_chapter_vi`
--
ALTER TABLE `fast_posts_comic_chapter_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_cn`
--
ALTER TABLE `fast_posts_comic_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_en`
--
ALTER TABLE `fast_posts_comic_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_rel`
--
ALTER TABLE `fast_posts_comic_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `fast_posts_comic_vi`
--
ALTER TABLE `fast_posts_comic_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT cho bảng `fast_posts_creator_cn`
--
ALTER TABLE `fast_posts_creator_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `fast_posts_creator_en`
--
ALTER TABLE `fast_posts_creator_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `fast_posts_creator_rel`
--
ALTER TABLE `fast_posts_creator_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;

--
-- AUTO_INCREMENT cho bảng `fast_posts_creator_vi`
--
ALTER TABLE `fast_posts_creator_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT cho bảng `fast_posts_director_cn`
--
ALTER TABLE `fast_posts_director_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `fast_posts_director_en`
--
ALTER TABLE `fast_posts_director_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `fast_posts_director_rel`
--
ALTER TABLE `fast_posts_director_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT cho bảng `fast_posts_director_vi`
--
ALTER TABLE `fast_posts_director_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `fast_posts_finder`
--
ALTER TABLE `fast_posts_finder`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `fast_posts_finder_rel`
--
ALTER TABLE `fast_posts_finder_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_posts_game_cn`
--
ALTER TABLE `fast_posts_game_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `fast_posts_game_en`
--
ALTER TABLE `fast_posts_game_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `fast_posts_game_rel`
--
ALTER TABLE `fast_posts_game_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202;

--
-- AUTO_INCREMENT cho bảng `fast_posts_game_vi`
--
ALTER TABLE `fast_posts_game_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_chapter_cn`
--
ALTER TABLE `fast_posts_movie_chapter_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_chapter_en`
--
ALTER TABLE `fast_posts_movie_chapter_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_chapter_rel`
--
ALTER TABLE `fast_posts_movie_chapter_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_chapter_vi`
--
ALTER TABLE `fast_posts_movie_chapter_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_cn`
--
ALTER TABLE `fast_posts_movie_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_en`
--
ALTER TABLE `fast_posts_movie_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_rel`
--
ALTER TABLE `fast_posts_movie_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=650;

--
-- AUTO_INCREMENT cho bảng `fast_posts_movie_vi`
--
ALTER TABLE `fast_posts_movie_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_chapter_cn`
--
ALTER TABLE `fast_posts_novel_chapter_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_chapter_en`
--
ALTER TABLE `fast_posts_novel_chapter_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_chapter_rel`
--
ALTER TABLE `fast_posts_novel_chapter_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_chapter_vi`
--
ALTER TABLE `fast_posts_novel_chapter_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_cn`
--
ALTER TABLE `fast_posts_novel_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_en`
--
ALTER TABLE `fast_posts_novel_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_rel`
--
ALTER TABLE `fast_posts_novel_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=138;

--
-- AUTO_INCREMENT cho bảng `fast_posts_novel_vi`
--
ALTER TABLE `fast_posts_novel_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `fast_posts_post_cn`
--
ALTER TABLE `fast_posts_post_cn`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_posts_post_en`
--
ALTER TABLE `fast_posts_post_en`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_posts_post_rel`
--
ALTER TABLE `fast_posts_post_rel`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_posts_post_vi`
--
ALTER TABLE `fast_posts_post_vi`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_posttype`
--
ALTER TABLE `fast_posttype`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=118;

--
-- AUTO_INCREMENT cho bảng `fast_terms`
--
ALTER TABLE `fast_terms`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=286;

--
-- AUTO_INCREMENT cho bảng `fast_users`
--
ALTER TABLE `fast_users`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `fast_user_relations`
--
ALTER TABLE `fast_user_relations`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=191;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
