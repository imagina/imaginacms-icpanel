-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 28, 2019 at 12:39 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `appimagi_demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `activations`
--

CREATE TABLE `activations` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `activations`
--

INSERT INTO `activations` (`id`, `user_id`, `code`, `completed`, `completed_at`, `created_at`, `updated_at`) VALUES
(1, 1, 'tiK4XxlRN6N09dXIQ2v0V75Jzs1z63PP', 1, '2019-04-16 21:21:49', '2019-04-16 21:21:49', '2019-04-16 21:21:49'),
(2, 2, 'w3UggxxVrSWUX7BzVUPLq0QmmLkimmnS', 1, '2019-05-06 20:03:25', '2019-05-06 20:03:25', '2019-05-06 20:03:25'),
(3, 3, 'YIQTjBuJ4sCrdmw662I58KVzHrWew62B', 1, '2019-05-08 04:49:03', '2019-05-08 04:49:03', '2019-05-08 04:49:03'),
(4, 4, 'wlvoxgeuiTI4xUfJn2BIyqnn6LslUqqg', 1, '2019-06-14 23:45:11', '2019-06-14 23:45:11', '2019-06-14 23:45:11'),
(5, 5, '1HacTadtusbyQN9E5qBYPe8gcHewszaZ', 1, '2019-08-03 15:35:04', '2019-08-03 15:35:04', '2019-08-03 15:35:04'),
(6, 6, '2Fl7nwsTln3dvzT76YxVj6zyoT0RdD3U', 1, '2019-08-03 15:38:19', '2019-08-03 15:38:19', '2019-08-03 15:38:19'),
(7, 7, '43LD6RisQMJydyKRmxdA3hTmJ2chE1yS', 1, '2019-08-12 14:50:42', '2019-08-12 14:50:42', '2019-08-12 14:50:42'),
(8, 8, '9UBugBMMijeR1lmV9O3AD8Yu9iTGj6Hn', 1, '2019-08-15 22:37:44', '2019-08-15 22:37:44', '2019-08-15 22:37:44'),
(19, 11, 'ZRJxZNAeZkduSYkj4GwPjQQggJaaPROj', 1, '2019-09-25 15:09:03', '2019-09-25 15:09:03', '2019-09-25 15:09:03');

-- --------------------------------------------------------

--
-- Table structure for table `dashboard__widgets`
--

CREATE TABLE `dashboard__widgets` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `widgets` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ibanners__banners`
--

CREATE TABLE `ibanners__banners` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `code` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ibanners__banner__category`
--

CREATE TABLE `ibanners__banner__category` (
  `id` int(10) UNSIGNED NOT NULL,
  `banner_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ibanners__categories`
--

CREATE TABLE `ibanners__categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iblog__categories`
--

CREATE TABLE `iblog__categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iblog__categories`
--

INSERT INTO `iblog__categories` (`id`, `parent_id`, `lft`, `rgt`, `depth`, `options`, `created_at`, `updated_at`) VALUES
(1, 0, NULL, NULL, NULL, '{\"masterRecord\":\"1\"}', '2019-07-23 21:56:44', '2019-10-28 16:47:37'),
(3, 0, NULL, NULL, NULL, '{\"masterRecord\":\"1\"}', '2019-10-28 17:34:43', '2019-10-28 17:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `iblog__category_translations`
--

CREATE TABLE `iblog__category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `translatable_options` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iblog__category_translations`
--

INSERT INTO `iblog__category_translations` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_description`, `meta_keywords`, `translatable_options`, `category_id`, `locale`) VALUES
(1, 'De interes', 'de-interes', 'De interes', 'De interes', 'De interes', NULL, NULL, 1, 'es'),
(4, 'De interes', 'de-interes', 'De interes', 'De interes', 'De interes', NULL, NULL, 1, 'en'),
(5, 'servicios', 'servicios', 'servicios', NULL, NULL, NULL, NULL, 3, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iblog__posts`
--

CREATE TABLE `iblog__posts` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `category_id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iblog__posts`
--

INSERT INTO `iblog__posts` (`id`, `options`, `status`, `category_id`, `user_id`, `created_at`, `updated_at`) VALUES
(1, '{\"masterRecord\":1}', 3, 1, 1, '2019-07-23 21:57:01', '2019-10-22 16:56:06'),
(2, '{\"masterRecord\":0}', 2, 1, 1, '2019-07-23 22:00:57', '2019-10-16 17:28:53'),
(4, '{\"masterRecord\":0}', 2, 1, 1, '2019-09-10 15:01:52', '2019-10-10 19:48:43'),
(8, '{\"masterRecord\":\"0\"}', 2, 3, 1, '2019-10-28 17:35:24', '2019-10-28 17:35:24'),
(9, '{\"masterRecord\":\"0\"}', 2, 3, 1, '2019-10-28 17:35:51', '2019-10-28 17:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `iblog__post_translations`
--

CREATE TABLE `iblog__post_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `translatable_options` text COLLATE utf8mb4_unicode_ci,
  `post_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iblog__post_translations`
--

INSERT INTO `iblog__post_translations` (`id`, `title`, `slug`, `description`, `summary`, `meta_title`, `meta_description`, `meta_keywords`, `translatable_options`, `post_id`, `locale`) VALUES
(1, 'Tu Negocio', 'acerca-de', '<div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\">Puedes tener tu Negocio en la red en cuestión&nbsp;de minutos y contar con Aplicativo&nbsp;para Android por tan solo $89.900 mensuales&nbsp;</span></font></div><div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\"><br></span></font></div><div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\">Únete&nbsp;a nosotros y has parte de la red de negocio&nbsp;mas grande de Ibague</span></font></div>', 'Puedes tener tu Negocio en la red en cuestión de minutos y contar con Aplicativo para Android por tan solo $89.900 mensuales   Únete a nosotros y has parte de la red de negocio mas grande de Ibague', 'Tu Negocio', 'Puedes tener tu Negocio en la red en cuestión de minutos y contar con Aplicativo para Android por tan solo $89.900 mensuales   Únete a nosotros y has parte de la red de negocio mas grande de Ibague', NULL, NULL, 1, 'es'),
(2, 'Post N°1', 'post-n1', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.<br>', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.', 'AL VAPOR', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.', NULL, NULL, 2, 'es'),
(4, 'Post N°2', 'post-n2', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', 'LAS FRITURAS', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', NULL, NULL, 4, 'es'),
(11, 'Tu Negocio', 'acerca-de', '<div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\">Puedes tener tu Negocio en la red en cuestión&nbsp;de minutos y contar con Aplicativo&nbsp;para Android por tan solo $89.900 mensuales&nbsp;</span></font></div><div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\"><br></span></font></div><div style=\"text-align: justify;\"><font color=\"#777777\" face=\"Open Sans, Helvetica Neue, Helvetica, Arial, sans-serif\"><span style=\"font-size: 13px;\">Únete&nbsp;a nosotros y has parte de la red de negocio&nbsp;mas grande de Ibague</span></font></div>', 'IMAGINA COLOMBIA', 'Tu Negocio', 'IMAGINA COLOMBIA', NULL, NULL, 1, 'en'),
(12, 'AL VAPOR', 'vapor-flavor', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.<br>', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.', 'AL VAPOR', 'Cocinar los alimentos al vapor ayuda a mantener una dieta balanceada y baja en calorías. Sirtori comenta que esta es la forma ideal para preparar los vegetales porque se conservan todas las sustancias nutritivas. Afirma que las verduras no se deben recocinar porque pierden sus vitaminas y minerales.', NULL, NULL, 2, 'en'),
(13, 'LAS FRITURAS', 'las-frituras', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', 'LAS FRITURAS', 'Fritar los alimentos es la forma preferida de muchos para preparar alimentos, ya que de esta manera que se obtiene una textura crocante y de manera rápida. No obstante, se deben tener ciertos cuidados al hacerlo; agregar poco aceite, ponerlo a una temperatura alta pero que no se queme y la sal, dejarla para el final.', NULL, NULL, 4, 'en'),
(14, 'Servicio N°1', 'servicio-n°1', 'servicio-n°1', 'servicio-n°1', NULL, NULL, NULL, NULL, 8, 'es'),
(15, 'Servicio N°2', 'servicio-n°2', 'servicio-n°2', 'servicio-n°2', NULL, NULL, NULL, NULL, 9, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iblog__post__category`
--

CREATE TABLE `iblog__post__category` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iblog__post__category`
--

INSERT INTO `iblog__post__category` (`id`, `post_id`, `category_id`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 1),
(5, 7, 1),
(6, 8, 3),
(7, 9, 3);

-- --------------------------------------------------------

--
-- Table structure for table `iblog__post__tag`
--

CREATE TABLE `iblog__post__tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `post_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iblog__tags`
--

CREATE TABLE `iblog__tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__carts`
--

CREATE TABLE `icommerce__carts` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `total` double(50,2) NOT NULL DEFAULT '0.00',
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__cart_product`
--

CREATE TABLE `icommerce__cart_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_id` int(10) UNSIGNED DEFAULT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `quantity` int(11) NOT NULL DEFAULT '1',
  `price` double(50,2) NOT NULL DEFAULT '0.00',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__cart_product_options`
--

CREATE TABLE `icommerce__cart_product_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `cart_product_id` int(10) UNSIGNED NOT NULL,
  `product_option_id` int(10) UNSIGNED DEFAULT NULL,
  `product_option_value_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__categories`
--

CREATE TABLE `icommerce__categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `show_menu` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__category_translations`
--

CREATE TABLE `icommerce__category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__coupons`
--

CREATE TABLE `icommerce__coupons` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` char(1) COLLATE utf8mb4_unicode_ci NOT NULL,
  `discount` double(8,2) NOT NULL,
  `logged` tinyint(3) UNSIGNED NOT NULL,
  `shipping` tinyint(3) UNSIGNED NOT NULL,
  `total` double(8,2) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `uses_total` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__coupon_category`
--

CREATE TABLE `icommerce__coupon_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__coupon_order_history`
--

CREATE TABLE `icommerce__coupon_order_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED NOT NULL,
  `amount` double(8,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__coupon_product`
--

CREATE TABLE `icommerce__coupon_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__coupon_translations`
--

CREATE TABLE `icommerce__coupon_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `coupon_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__currencies`
--

CREATE TABLE `icommerce__currencies` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `symbol_left` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `symbol_right` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `decimal_place` char(1) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` double(15,8) NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__currency_translations`
--

CREATE TABLE `icommerce__currency_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__item_types`
--

CREATE TABLE `icommerce__item_types` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__item_type_translations`
--

CREATE TABLE `icommerce__item_type_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `item_type_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__manufacturers`
--

CREATE TABLE `icommerce__manufacturers` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__manufacturer_trans`
--

CREATE TABLE `icommerce__manufacturer_trans` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `manufacturer_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__mapareas`
--

CREATE TABLE `icommerce__mapareas` (
  `id` int(10) UNSIGNED NOT NULL,
  `polygon` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` double(30,2) NOT NULL DEFAULT '0.00',
  `minimum` int(11) NOT NULL DEFAULT '0',
  `store_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__options`
--

CREATE TABLE `icommerce__options` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__option_translations`
--

CREATE TABLE `icommerce__option_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__option_values`
--

CREATE TABLE `icommerce__option_values` (
  `id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED DEFAULT NULL,
  `sort_order` int(11) NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__option_value_trans`
--

CREATE TABLE `icommerce__option_value_trans` (
  `id` int(10) UNSIGNED NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__orders`
--

CREATE TABLE `icommerce__orders` (
  `id` int(10) UNSIGNED NOT NULL,
  `invoice_nro` int(10) UNSIGNED DEFAULT NULL,
  `invoice_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `total` double(50,2) NOT NULL,
  `status_id` int(10) UNSIGNED NOT NULL,
  `customer_id` int(10) UNSIGNED DEFAULT NULL,
  `added_by_id` int(10) UNSIGNED DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `telephone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_nit` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_address_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_address_2` text COLLATE utf8mb4_unicode_ci,
  `payment_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `payment_address_format` text COLLATE utf8mb4_unicode_ci,
  `payment_custom_field` text COLLATE utf8mb4_unicode_ci,
  `payment_method` int(11) NOT NULL,
  `payment_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_address_2` text COLLATE utf8mb4_unicode_ci,
  `shipping_city` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zip_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_country` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_zone` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `shipping_address_format` text COLLATE utf8mb4_unicode_ci,
  `shipping_custom_field` text COLLATE utf8mb4_unicode_ci,
  `shipping_method` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_amount` double(15,8) NOT NULL DEFAULT '0.00000000',
  `store_id` int(11) NOT NULL,
  `store_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `store_phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_amount` double(15,8) DEFAULT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `tracking` text COLLATE utf8mb4_unicode_ci,
  `currency_id` int(10) UNSIGNED NOT NULL,
  `currency_code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_value` double(15,8) NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_agent` text COLLATE utf8mb4_unicode_ci,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` longtext COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__order_item`
--

CREATE TABLE `icommerce__order_item` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `item_type_id` int(10) UNSIGNED DEFAULT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `price` double(30,2) NOT NULL,
  `total` double(30,2) NOT NULL,
  `tax` double(30,2) NOT NULL,
  `reward` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__order_options`
--

CREATE TABLE `icommerce__order_options` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `order_item_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `option_value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `price` double(50,2) DEFAULT NULL,
  `price_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `points` int(10) UNSIGNED DEFAULT NULL,
  `points_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `weight_prefix` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__order_statuses`
--

CREATE TABLE `icommerce__order_statuses` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__order_status_history`
--

CREATE TABLE `icommerce__order_status_history` (
  `id` int(10) UNSIGNED NOT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `notify` int(10) UNSIGNED NOT NULL,
  `comment` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__order_status_trans`
--

CREATE TABLE `icommerce__order_status_trans` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order_status_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__payment_methods`
--

CREATE TABLE `icommerce__payment_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__payment_methods_geozones`
--

CREATE TABLE `icommerce__payment_methods_geozones` (
  `id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `geozone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__payment_method_translations`
--

CREATE TABLE `icommerce__payment_method_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__price_lists`
--

CREATE TABLE `icommerce__price_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(11) NOT NULL DEFAULT '1',
  `criteria` enum('percentage','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `related_id` int(11) DEFAULT NULL,
  `related_entity` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__price_list_translations`
--

CREATE TABLE `icommerce__price_list_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `price_list_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__products`
--

CREATE TABLE `icommerce__products` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `added_by_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED DEFAULT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `related_ids` text COLLATE utf8mb4_unicode_ci,
  `tax_class_id` int(10) UNSIGNED DEFAULT NULL,
  `sku` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `stock_status` tinyint(3) UNSIGNED NOT NULL DEFAULT '0',
  `manufacturer_id` int(10) UNSIGNED DEFAULT NULL,
  `shipping` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `price` double(30,2) NOT NULL DEFAULT '0.00',
  `points` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `date_available` date DEFAULT NULL,
  `weight` double(8,2) DEFAULT NULL,
  `length` double(8,2) DEFAULT NULL,
  `width` double(8,2) DEFAULT NULL,
  `height` double(8,2) DEFAULT NULL,
  `subtract` tinyint(3) UNSIGNED NOT NULL DEFAULT '1',
  `minimum` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `reference` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `rating` text COLLATE utf8mb4_unicode_ci,
  `order_weight` int(11) DEFAULT NULL,
  `freeshipping` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_category`
--

CREATE TABLE `icommerce__product_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_discounts`
--

CREATE TABLE `icommerce__product_discounts` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `product_option_value_id` int(10) UNSIGNED DEFAULT NULL,
  `product_option_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `priority` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `discount` double(20,2) NOT NULL,
  `criteria` enum('percentage','fixed') COLLATE utf8mb4_unicode_ci NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_lists`
--

CREATE TABLE `icommerce__product_lists` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `price_list_id` int(10) UNSIGNED NOT NULL,
  `price` decimal(20,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_option`
--

CREATE TABLE `icommerce__product_option` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `parent_option_value_id` int(10) UNSIGNED DEFAULT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_option_value`
--

CREATE TABLE `icommerce__product_option_value` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_option_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `option_id` int(10) UNSIGNED NOT NULL,
  `option_value_id` int(10) UNSIGNED NOT NULL,
  `parent_option_value_id` int(10) UNSIGNED DEFAULT NULL,
  `quantity` int(10) UNSIGNED NOT NULL,
  `subtract` tinyint(3) UNSIGNED NOT NULL,
  `price` double(50,2) NOT NULL,
  `price_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `points` int(10) UNSIGNED NOT NULL,
  `points_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `weight` double(8,2) NOT NULL,
  `weight_prefix` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_tag`
--

CREATE TABLE `icommerce__product_tag` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__product_translations`
--

CREATE TABLE `icommerce__product_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `product_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__related_product`
--

CREATE TABLE `icommerce__related_product` (
  `id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `related_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__shipping_methods`
--

CREATE TABLE `icommerce__shipping_methods` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__shipping_methods_geozones`
--

CREATE TABLE `icommerce__shipping_methods_geozones` (
  `id` int(10) UNSIGNED NOT NULL,
  `shipping_method_id` int(10) UNSIGNED NOT NULL,
  `geozone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__shipping_method_translations`
--

CREATE TABLE `icommerce__shipping_method_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `shipping_method_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__stores`
--

CREATE TABLE `icommerce__stores` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `address` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tags`
--

CREATE TABLE `icommerce__tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tag_translations`
--

CREATE TABLE `icommerce__tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tax_classes`
--

CREATE TABLE `icommerce__tax_classes` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tax_class_rate`
--

CREATE TABLE `icommerce__tax_class_rate` (
  `id` int(10) UNSIGNED NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `based` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `priority` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tax_class_translations`
--

CREATE TABLE `icommerce__tax_class_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_class_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tax_rates`
--

CREATE TABLE `icommerce__tax_rates` (
  `id` int(10) UNSIGNED NOT NULL,
  `rate` decimal(50,2) NOT NULL,
  `type` varchar(2) COLLATE utf8mb4_unicode_ci NOT NULL,
  `geozone_id` int(10) UNSIGNED NOT NULL,
  `customer` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__tax_rate_translations`
--

CREATE TABLE `icommerce__tax_rate_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tax_rate_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__transactions`
--

CREATE TABLE `icommerce__transactions` (
  `id` int(10) UNSIGNED NOT NULL,
  `external_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `order_id` int(10) UNSIGNED NOT NULL,
  `payment_method_id` int(10) UNSIGNED NOT NULL,
  `amount` decimal(20,2) NOT NULL,
  `status` int(10) UNSIGNED NOT NULL,
  `external_status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icommerce__wishlists`
--

CREATE TABLE `icommerce__wishlists` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `product_id` int(10) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `icustom__tasks`
--

CREATE TABLE `icustom__tasks` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `duration` int(11) DEFAULT NULL,
  `dependencies` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `icustom__tasks`
--

INSERT INTO `icustom__tasks` (`id`, `title`, `description`, `duration`, `dependencies`, `created_at`, `updated_at`) VALUES
(1, 'Compra Boletos', 'comprar los boletos mas economicos posible', 3, '5', '2019-05-13 10:00:00', '2019-05-13 10:00:00'),
(2, 'Armar Maletas', 'reunir todos los objetos para llevar en el viaje', 2, '', '2019-05-13 10:00:00', '2019-05-13 10:00:00'),
(3, 'Vacaciones', 'solicitar las vacaciones al jefe', 4, '', '2019-05-13 10:00:00', '2019-05-13 10:00:00'),
(4, 'Viajar', 'tomar el vuelo a la playa, por fin!', 9, '1,2,3', '2019-05-13 10:00:00', '2019-05-13 10:00:00'),
(5, 'Prestamo', 'pedir prestamo al banco', 7, '6', '2019-05-13 10:00:00', '2019-05-13 10:00:00'),
(6, 'Papeles', 'reunir los papeles completos para el prestamo', 9, '', '2019-05-13 10:00:00', '2019-05-13 10:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `iforms__fields`
--

CREATE TABLE `iforms__fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `required` tinyint(1) DEFAULT '0',
  `selectable` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `order` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `form_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iforms__fields`
--

INSERT INTO `iforms__fields` (`id`, `type`, `name`, `required`, `selectable`, `order`, `form_id`, `created_at`, `updated_at`) VALUES
(2, '1', 'name', 1, '\"[]\"', 0, 2, '2019-10-24 20:30:33', '2019-10-25 15:34:24'),
(4, '10', 'telefono', 1, '\"[]\"', 1, 2, '2019-10-24 22:08:37', '2019-10-25 15:34:24'),
(5, '4', 'email', 1, '\"[]\"', 2, 2, '2019-10-24 22:08:56', '2019-10-25 15:34:22'),
(6, '2', 'message', 1, '\"[]\"', 3, 2, '2019-10-24 22:10:01', '2019-10-25 15:34:22'),
(7, '1', 'nombre', 1, '\"[]\"', 0, 4, '2019-10-25 16:02:33', '2019-10-25 16:02:33'),
(9, '10', 'telefono', 1, '\"[]\"', 2, 4, '2019-10-25 16:03:24', '2019-10-25 17:10:06'),
(11, '1', 'email', 0, '\"[]\"', 4, 4, '2019-10-25 16:05:57', '2019-10-25 17:10:06'),
(12, '2', 'comentarios', 0, '\"[]\"', 6, 4, '2019-10-25 16:06:17', '2019-10-25 17:10:06');

-- --------------------------------------------------------

--
-- Table structure for table `iforms__field_translations`
--

CREATE TABLE `iforms__field_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `label` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `placeholder` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `field_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iforms__field_translations`
--

INSERT INTO `iforms__field_translations` (`id`, `label`, `placeholder`, `description`, `field_id`, `locale`) VALUES
(2, 'Nombre', 'Nombre Completo', 'Nombre Completo', 2, 'es'),
(4, 'telefono', 'telefono', 'telefono', 4, 'es'),
(5, 'correo', 'correo', 'correo', 5, 'es'),
(6, 'mensaje', 'mensaje', 'mensaje', 6, 'es'),
(7, 'nombre', 'nombre', 'nombre', 7, 'es'),
(9, 'telefono', 'telefono', 'telefono', 9, 'es'),
(11, 'email', 'email', 'email', 11, 'es'),
(12, 'comentarios', 'comentarios', 'comentarios', 12, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iforms__forms`
--

CREATE TABLE `iforms__forms` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `system_name` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` int(11) DEFAULT NULL,
  `destination_email` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iforms__forms`
--

INSERT INTO `iforms__forms` (`id`, `user_id`, `options`, `system_name`, `active`, `destination_email`, `created_at`, `updated_at`) VALUES
(2, 1, NULL, 'contacto', 1, '[\"msolano@imaginacolombia.com\"]', '2019-10-24 20:30:00', '2019-10-25 16:48:22'),
(4, NULL, NULL, 'home', 1, '[\"msolano@imaginacolombia.com\"]', '2019-10-25 16:01:59', '2019-10-25 16:52:09');

-- --------------------------------------------------------

--
-- Table structure for table `iforms__form_translations`
--

CREATE TABLE `iforms__form_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iforms__form_translations`
--

INSERT INTO `iforms__form_translations` (`id`, `title`, `form_id`, `locale`) VALUES
(2, 'Contacto', 2, 'es'),
(4, 'contáctenos', 4, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iforms__leads`
--

CREATE TABLE `iforms__leads` (
  `id` int(10) UNSIGNED NOT NULL,
  `form_id` int(10) UNSIGNED NOT NULL,
  `values` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iforms__leads`
--

INSERT INTO `iforms__leads` (`id`, `form_id`, `values`, `created_at`, `updated_at`) VALUES
(3, 2, NULL, '2019-10-25 15:25:48', '2019-10-25 15:25:48'),
(4, 2, NULL, '2019-10-25 15:56:21', '2019-10-25 15:56:21'),
(5, 2, NULL, '2019-10-25 15:57:05', '2019-10-25 15:57:05'),
(6, 2, NULL, '2019-10-25 15:58:22', '2019-10-25 15:58:22'),
(7, 2, NULL, '2019-10-25 16:50:59', '2019-10-25 16:50:59'),
(8, 2, NULL, '2019-10-25 17:23:00', '2019-10-25 17:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__cities`
--

CREATE TABLE `ilocations__cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__cities`
--

INSERT INTO `ilocations__cities` (`id`, `code`, `country_id`, `province_id`, `created_at`, `updated_at`) VALUES
(1, '730001', 1, 1, '2019-05-01 02:43:57', '2019-05-01 02:43:57');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__city_translations`
--

CREATE TABLE `ilocations__city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__city_translations`
--

INSERT INTO `ilocations__city_translations` (`id`, `name`, `city_id`, `locale`) VALUES
(1, 'Ibagué', 1, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__countries`
--

CREATE TABLE `ilocations__countries` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `currency` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_symbol` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `currency_sub_unit` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `region_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `sub_region_code` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_code` int(10) UNSIGNED NOT NULL,
  `iso_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `iso_3` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `calling_code` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__countries`
--

INSERT INTO `ilocations__countries` (`id`, `status`, `currency`, `currency_symbol`, `currency_code`, `currency_sub_unit`, `region_code`, `sub_region_code`, `country_code`, `iso_2`, `iso_3`, `calling_code`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', '', '', '', '', 0, 'CO', '', 0, '2019-05-01 02:29:10', '2019-05-01 02:29:10');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__country_translations`
--

CREATE TABLE `ilocations__country_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `full_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__country_translations`
--

INSERT INTO `ilocations__country_translations` (`id`, `name`, `full_name`, `country_id`, `locale`) VALUES
(1, 'Colombia', 'Colombia', 1, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__geozones`
--

CREATE TABLE `ilocations__geozones` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__geozones`
--

INSERT INTO `ilocations__geozones` (`id`, `name`, `description`, `created_at`, `updated_at`) VALUES
(1, 'Ibague', 'Ibague', '2019-05-01 02:49:50', '2019-05-01 02:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__geozones_countries_provinces`
--

CREATE TABLE `ilocations__geozones_countries_provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `geozone_id` int(10) UNSIGNED NOT NULL,
  `country_id` int(10) UNSIGNED DEFAULT NULL,
  `province_id` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__geozones_countries_provinces`
--

INSERT INTO `ilocations__geozones_countries_provinces` (`id`, `geozone_id`, `country_id`, `province_id`, `created_at`, `updated_at`) VALUES
(2, 1, 1, NULL, '2019-05-01 02:49:52', '2019-05-01 02:49:52');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__provinces`
--

CREATE TABLE `ilocations__provinces` (
  `id` int(10) UNSIGNED NOT NULL,
  `iso_2` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `country_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__provinces`
--

INSERT INTO `ilocations__provinces` (`id`, `iso_2`, `country_id`, `created_at`, `updated_at`) VALUES
(1, '', 1, '2019-05-01 02:37:58', '2019-05-01 02:37:58');

-- --------------------------------------------------------

--
-- Table structure for table `ilocations__province_translations`
--

CREATE TABLE `ilocations__province_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `ilocations__province_translations`
--

INSERT INTO `ilocations__province_translations` (`id`, `name`, `province_id`, `locale`) VALUES
(1, 'Tolima', 1, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__categories`
--

CREATE TABLE `iplaces__categories` (
  `id` int(10) UNSIGNED NOT NULL,
  `parent_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL,
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__categories`
--

INSERT INTO `iplaces__categories` (`id`, `parent_id`, `status`, `lft`, `rgt`, `depth`, `options`, `created_at`, `updated_at`) VALUES
(4, 0, 1, NULL, NULL, NULL, '{\"masterRecord\":1}', '2019-05-22 15:51:14', '2019-10-28 16:45:20');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__category_translations`
--

CREATE TABLE `iplaces__category_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__category_translations`
--

INSERT INTO `iplaces__category_translations` (`id`, `title`, `slug`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `category_id`, `locale`) VALUES
(13, 'test', 'test', 'test', 'test', '', 'test', 4, 'ace'),
(14, 'test', 'test', 'test', 'test', '', 'test', 4, 'af'),
(15, 'Sucursales', 'sucursales', 'Sucursales', 'sucursales', '', 'sucursales', 4, 'en'),
(16, 'Sucursales', 'sucursales', 'Sucursales', 'sucursales', '', 'sucursales', 4, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__cities`
--

CREATE TABLE `iplaces__cities` (
  `id` int(10) UNSIGNED NOT NULL,
  `province_id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__city_translations`
--

CREATE TABLE `iplaces__city_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `city_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__places`
--

CREATE TABLE `iplaces__places` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `schedules` text COLLATE utf8mb4_unicode_ci,
  `city_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `province_id` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `user_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `address` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `phone_1` int(10) UNSIGNED NOT NULL,
  `phone_2` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `phone_3` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `range_id` int(10) UNSIGNED NOT NULL,
  `gama` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `quantity_person` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `weather` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `housing` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `transport` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `rating` double(3,2) NOT NULL DEFAULT '3.00',
  `validated` tinyint(1) NOT NULL DEFAULT '0',
  `site_id` int(10) UNSIGNED NOT NULL,
  `order` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__places`
--

INSERT INTO `iplaces__places` (`id`, `options`, `schedules`, `city_id`, `province_id`, `status`, `user_id`, `category_id`, `zone_id`, `service_id`, `schedule_id`, `address`, `phone_1`, `phone_2`, `phone_3`, `range_id`, `gama`, `quantity_person`, `weather`, `housing`, `transport`, `created_at`, `updated_at`, `rating`, `validated`, `site_id`, `order`) VALUES
(4, '{\"phone1\":2664999,\"phone2\":3163961295,\"phone3\":null}', '[{\"name\":\"monday\",\"iso\":1,\"schedules\":\"1\"},{\"name\":\"tuesday\",\"iso\":2,\"schedules\":\"1\"},{\"name\":\"wednesday\",\"iso\":3,\"schedules\":\"1\"},{\"name\":\"thursday\",\"iso\":4,\"schedules\":[{\"from\":\"2019-07-16T08:00:00.000-05:00\",\"to\":\"2019-07-16T20:00:00.000-05:00\"}]},{\"name\":\"friday\",\"iso\":5,\"schedules\":\"1\"},{\"name\":\"saturday\",\"iso\":6,\"schedules\":\"1\"},{\"name\":\"sunday\",\"iso\":7,\"schedules\":\"1\"}]', 0, 0, 0, 1, 4, 0, 0, 0, '{\"address\":\"Cl. 29 #7-54, Ibagu\\u00e9, Tolima\",\"longitude\":-75.2061764000000039231963455677032470703125,\"latitude\":4.4371644999999997338591128936968743801116943359375}', 345345345, 54645645, 546456, 0, 0, 0, 0, 0, 0, '2019-05-20 20:56:05', '2019-10-10 19:45:29', 3.00, 0, 0, 0),
(8, '{\"mainimage\":null}', '[{\"name\":\"monday\",\"iso\":1,\"schedules\":\"1\"},{\"name\":\"tuesday\",\"iso\":2,\"schedules\":[{\"from\":\"2019-07-16T08:00:00.000-05:00\",\"to\":\"2019-07-16T20:00:00.000-05:00\"},{\"from\":\"2019-08-15T01:00:00.000-05:00\",\"to\":\"2019-08-15T05:00:00.000-05:00\"}]},{\"name\":\"wednesday\",\"iso\":3,\"schedules\":\"1\"},{\"name\":\"thursday\",\"iso\":4,\"schedules\":\"1\"},{\"name\":\"friday\",\"iso\":5,\"schedules\":\"1\"},{\"name\":\"saturday\",\"iso\":6,\"schedules\":\"1\"},{\"name\":\"sunday\",\"iso\":7,\"schedules\":\"1\"}]', 0, 0, 0, 1, 4, 0, 0, 0, '{\"address\":\"Carrera 36 #25-72 oficina 202 Bogot\\u00e1\",\"latitude\":null,\"longitude\":null}', 0, 0, 0, 0, 0, 0, 0, 0, 0, '2019-06-29 16:30:28', '2019-10-10 19:45:36', 3.00, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_category`
--

CREATE TABLE `iplaces__place_category` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `category_id` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__place_category`
--

INSERT INTO `iplaces__place_category` (`id`, `place_id`, `category_id`) VALUES
(1, 4, 4),
(2, 8, 4),
(3, 9, 4);

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_schedule`
--

CREATE TABLE `iplaces__place_schedule` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__place_schedule`
--

INSERT INTO `iplaces__place_schedule` (`id`, `place_id`, `schedule_id`, `created_at`, `updated_at`) VALUES
(1, 4, 4, NULL, NULL),
(4, 5, 7, NULL, NULL),
(7, 8, 4, NULL, NULL),
(5, 5, 8, NULL, NULL),
(6, 5, 9, NULL, NULL),
(8, 8, 5, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_service`
--

CREATE TABLE `iplaces__place_service` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `service_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_space`
--

CREATE TABLE `iplaces__place_space` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `space_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_translations`
--

CREATE TABLE `iplaces__place_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `summary` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci,
  `meta_description` text COLLATE utf8mb4_unicode_ci,
  `place_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__place_translations`
--

INSERT INTO `iplaces__place_translations` (`id`, `title`, `slug`, `summary`, `description`, `meta_title`, `meta_keywords`, `meta_description`, `place_id`, `locale`) VALUES
(5, 'RINCON DE PIEDRAPINTADA', '', '.', '.', 'test', NULL, 'test', 4, 'ace'),
(6, 'RINCON DE PIEDRAPINTADA', '', '.', '.', 'tes', NULL, 'test', 4, 'af'),
(7, 'Imagina Colombia', 'imagina-colombia', '.', '.', 'test', NULL, 'test', 4, 'en'),
(8, 'Sucursal N°1', 'sucursal-n1', '.', '.', 'test', NULL, 'test', 4, 'es'),
(13, 'Sucursal N°2', 'sucursal-n2', 'Imagina', 'Imagina<br>', 'gkjhkhj', NULL, 'jkhjkhjkhj', 8, 'es'),
(14, 'Imagina Colombia', 'Imagina', 'Imagina', 'Imagina<br>', 'gkjhkhj', NULL, 'jkhjkhjkhj', 8, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__place_zone`
--

CREATE TABLE `iplaces__place_zone` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__related_place`
--

CREATE TABLE `iplaces__related_place` (
  `id` int(10) UNSIGNED NOT NULL,
  `place_id` int(10) UNSIGNED NOT NULL,
  `related_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__schedules`
--

CREATE TABLE `iplaces__schedules` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__schedules`
--

INSERT INTO `iplaces__schedules` (`id`, `options`, `created_at`, `updated_at`) VALUES
(4, '[{\"from\":\"2019-05-20T11:00:00.000-05:00\",\"to\":\"2019-05-20T22:00:00.000-05:00\"}]', '2019-05-20 23:34:49', '2019-05-21 22:59:26'),
(5, '[{\"from\":\"2019-05-20T11:00:00.000-05:00\",\"to\":\"2019-05-20T20:00:00.000-05:00\"}]', '2019-05-20 23:46:38', '2019-05-21 23:00:02'),
(7, '[{\"from\":\"2019-05-21T11:00:00.000-05:00\",\"to\":\"2019-05-21T21:00:00.000-05:00\"}]', '2019-05-21 23:01:05', '2019-05-21 23:01:05'),
(8, '[{\"from\":\"2019-05-21T11:00:00.000-05:00\",\"to\":\"2019-05-21T21:00:00.000-05:00\"}]', '2019-05-21 23:01:38', '2019-05-21 23:01:38'),
(9, '[{\"from\":\"2019-05-21T11:00:00.000-05:00\",\"to\":\"2019-05-21T20:00:00.000-05:00\"}]', '2019-05-21 23:02:08', '2019-05-21 23:02:08');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__schedule_translations`
--

CREATE TABLE `iplaces__schedule_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `schedule_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iplaces__schedule_translations`
--

INSERT INTO `iplaces__schedule_translations` (`id`, `title`, `schedule_id`, `locale`) VALUES
(9, 'Lunes a Sabado', 4, 'ace'),
(10, 'Lunes a Sabado', 4, 'af'),
(11, 'Lunes a Sabado', 4, 'en'),
(12, 'Lunes a Sabado', 4, 'es'),
(13, 'Domingo y Festivos', 5, 'ace'),
(14, 'Domingo y Festivos', 5, 'af'),
(15, 'Domingo y Festivos', 5, 'en'),
(16, 'Domingo y Festivos', 5, 'es'),
(21, 'Lunes a Jueves', 7, 'ace'),
(22, 'Lunes a Jueves', 7, 'af'),
(23, 'Lunes a Jueves', 7, 'en'),
(24, 'Lunes a Jueves', 7, 'es'),
(25, 'Viernes y Sabado', 8, 'ace'),
(26, 'Viernes y Sabado', 8, 'af'),
(27, 'Viernes y Sabado', 8, 'en'),
(28, 'Viernes y Sabado', 8, 'es'),
(29, 'Domingo', 9, 'ace'),
(30, 'Domingo', 9, 'af'),
(31, 'Domingo', 9, 'en'),
(32, 'Domingo', 9, 'es');

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__services`
--

CREATE TABLE `iplaces__services` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `serv_type` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__service_translations`
--

CREATE TABLE `iplaces__service_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `service_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__spaces`
--

CREATE TABLE `iplaces__spaces` (
  `id` int(10) UNSIGNED NOT NULL,
  `status` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__space_translations`
--

CREATE TABLE `iplaces__space_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_keywords` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `meta_description` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `space_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__zones`
--

CREATE TABLE `iplaces__zones` (
  `id` int(10) UNSIGNED NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iplaces__zone_translations`
--

CREATE TABLE `iplaces__zone_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text COLLATE utf8mb4_unicode_ci,
  `zone_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `iprofile__addresses`
--

CREATE TABLE `iprofile__addresses` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `company` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address_1` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `address_2` text COLLATE utf8mb4_unicode_ci,
  `city` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `zip_code` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `state` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `app_suit` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iprofile__addresses`
--

INSERT INTO `iprofile__addresses` (`id`, `user_id`, `first_name`, `last_name`, `company`, `address_1`, `address_2`, `city`, `zip_code`, `country`, `state`, `type`, `app_suit`, `created_at`, `updated_at`) VALUES
(1, 1, '', '', NULL, 'Calle 29 #7-54', NULL, 'Ibagué', '57', NULL, 'Tolima', NULL, 0, '2019-08-09 19:58:42', '2019-08-09 19:59:14');

-- --------------------------------------------------------

--
-- Table structure for table `iprofile__departments`
--

CREATE TABLE `iprofile__departments` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `parent_id` int(11) NOT NULL DEFAULT '0',
  `lft` int(10) UNSIGNED DEFAULT NULL,
  `rgt` int(10) UNSIGNED DEFAULT NULL,
  `depth` int(10) UNSIGNED DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iprofile__departments`
--

INSERT INTO `iprofile__departments` (`id`, `title`, `options`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`) VALUES
(1, 'Users', NULL, 0, NULL, NULL, NULL, '2019-04-30 02:42:37', '2019-04-30 02:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `iprofile__fields`
--

CREATE TABLE `iprofile__fields` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iprofile__fields`
--

INSERT INTO `iprofile__fields` (`id`, `user_id`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(14, 1, 'cellularPhone', '\"(038) 266-4999\"', NULL, '2019-08-06 15:21:41', '2019-08-09 19:55:42'),
(15, 1, 'birthday', '\"2019-09-24T00:00:00.000-05:00\"', NULL, '2019-08-06 15:21:41', '2019-08-06 15:21:41'),
(26, 1, 'mainImage', '\"assets\\/iprofiles\\/1.jpg\"', NULL, '2019-08-09 19:58:05', '2019-08-09 19:58:05'),
(27, 1, 'socialNetworks', '[{\"options\":[],\"id\":null,\"user_id\":1,\"type\":\"Facebook\",\"value\":\"\\/imaginacolombia\",\"es\":[]},{\"options\":[],\"id\":null,\"user_id\":1,\"type\":\"Google+\",\"value\":\"\\/imaginacolombia\",\"es\":[]}]', NULL, '2019-08-09 19:58:53', '2019-08-09 19:59:06');

-- --------------------------------------------------------

--
-- Table structure for table `iprofile__settings`
--

CREATE TABLE `iprofile__settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `related_id` int(10) UNSIGNED NOT NULL,
  `entity_name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `value` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iprofile__settings`
--

INSERT INTO `iprofile__settings` (`id`, `related_id`, `entity_name`, `name`, `value`, `type`, `created_at`, `updated_at`) VALUES
(5, 3, 'role', 'assignedSettings', '[\"core::site-name\",\"core::site-name-mini\",\"core::site-description\",\"icommerce::form-emails\",\"iforms::from-email\",\"isite::logo1\",\"isite::logo2\",\"isite::favicon\",\"isite::phones\",\"isite::addresses\",\"isite::emails\",\"isite::socialNetworks\"]', NULL, '2019-05-08 04:47:56', '2019-05-08 04:47:56');

-- --------------------------------------------------------

--
-- Table structure for table `iprofile__user_department`
--

CREATE TABLE `iprofile__user_department` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `department_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `iprofile__user_department`
--

INSERT INTO `iprofile__user_department` (`id`, `user_id`, `department_id`, `created_at`, `updated_at`) VALUES
(1, 1, 1, '2019-04-30 02:42:37', '2019-04-30 02:42:37');

-- --------------------------------------------------------

--
-- Table structure for table `media__files`
--

CREATE TABLE `media__files` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_folder` tinyint(1) NOT NULL DEFAULT '0',
  `filename` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `path` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `extension` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mimetype` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `filesize` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `folder_id` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media__files`
--

INSERT INTO `media__files` (`id`, `is_folder`, `filename`, `path`, `extension`, `mimetype`, `filesize`, `folder_id`, `created_at`, `updated_at`) VALUES
(104, 0, 'img1.jpg', '/assets/media/img1.jpg', 'jpg', 'image/jpeg', '428543', '0', '2019-06-19 19:26:51', '2019-06-19 19:26:51'),
(105, 0, 'img2.jpg', '/assets/media/img2.jpg', 'jpg', 'image/jpeg', '459572', '0', '2019-06-19 19:27:17', '2019-06-19 19:27:17'),
(106, 0, 'img3.jpg', '/assets/media/img3.jpg', 'jpg', 'image/jpeg', '845079', '0', '2019-06-19 19:28:29', '2019-06-19 19:28:29'),
(107, 0, 'img4.jpg', '/assets/media/img4.jpg', 'jpg', 'image/jpeg', '1092716', '0', '2019-06-19 19:28:48', '2019-06-19 19:28:48'),
(108, 0, 'img5.jpg', '/assets/media/img5.jpg', 'jpg', 'image/jpeg', '755582', '0', '2019-06-19 19:33:03', '2019-06-19 19:33:03'),
(109, 0, 'img6.jpg', '/assets/media/img6.jpg', 'jpg', 'image/jpeg', '303692', '0', '2019-06-19 19:33:21', '2019-06-19 19:33:21'),
(110, 0, 'img7.jpg', '/assets/media/img7.jpg', 'jpg', 'image/jpeg', '373363', '0', '2019-06-19 19:37:55', '2019-06-19 19:37:55'),
(111, 0, 'img8.jpg', '/assets/media/img8.jpg', 'jpg', 'image/jpeg', '180539', '0', '2019-06-19 19:38:13', '2019-06-19 19:38:13'),
(115, 0, 'parallax-sucursales.jpg', '/assets/media/parallax-sucursales.jpg', 'jpg', 'image/jpeg', '287918', '0', '2019-06-27 16:18:40', '2019-06-27 16:18:40'),
(117, 0, 'banner3-m2.jpg', '/assets/media/banner3-m2.jpg', 'jpg', 'image/jpeg', '51220', '0', '2019-06-29 16:14:53', '2019-06-29 16:14:53'),
(121, 0, 'favicon-16x16.png', '/assets/media/favicon-16x16.png', 'png', 'image/png', '1210', '0', '2019-08-02 16:00:05', '2019-08-02 16:00:05'),
(123, 0, 'bebida-1.jpg', '/assets/media/bebida-1.jpg', 'jpg', 'image/jpeg', '11550', '0', '2019-08-02 18:11:05', '2019-08-02 18:11:05'),
(124, 0, 'bebida-2.jpg', '/assets/media/bebida-2.jpg', 'jpg', 'image/jpeg', '53851', '0', '2019-08-02 18:11:21', '2019-08-02 18:11:21'),
(131, 0, '04135700-360.jpg', '/assets/media/04135700-360.jpg', 'jpg', 'image/jpeg', '235511', '0', '2019-08-15 16:44:48', '2019-08-15 16:44:48'),
(132, 0, 'slider.jpg', '/assets/media/slider.jpg', 'jpg', 'image/jpeg', '373164', '0', '2019-09-10 14:42:25', '2019-09-10 14:42:25'),
(158, 0, 'logo-imagina.png', '/assets/media/logo-imagina.png', 'png', 'image/png', '49995', '0', '2019-10-22 21:54:17', '2019-10-22 21:54:17');

-- --------------------------------------------------------

--
-- Table structure for table `media__file_translations`
--

CREATE TABLE `media__file_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `alt_attribute` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `keywords` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `media__imageables`
--

CREATE TABLE `media__imageables` (
  `id` int(10) UNSIGNED NOT NULL,
  `file_id` int(11) NOT NULL,
  `imageable_id` int(11) NOT NULL,
  `imageable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `zone` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `order` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `media__imageables`
--

INSERT INTO `media__imageables` (`id`, `file_id`, `imageable_id`, `imageable_type`, `zone`, `order`, `created_at`, `updated_at`) VALUES
(1, 11, 2, 'Modules\\Page\\Entities\\Page', 'image', NULL, '2019-05-01 01:46:03', '2019-05-01 01:46:03'),
(2, 11, 2, 'Modules\\Page\\Entities\\Page', 'image', NULL, NULL, NULL),
(27, 64, 137, 'Modules\\Setting\\Entities\\Setting', 'isite::favicon', NULL, '2019-05-08 01:32:26', '2019-05-08 01:32:26'),
(29, 59, 136, 'Modules\\Setting\\Entities\\Setting', 'isite::logo3', NULL, '2019-05-08 01:34:46', '2019-05-08 01:34:46'),
(32, 70, 134, 'Modules\\Setting\\Entities\\Setting', 'isite::logo1', NULL, '2019-05-08 03:25:03', '2019-05-17 17:17:04'),
(72, 83, 24, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-11 01:59:37', '2019-05-11 01:59:46'),
(79, 89, 26, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-05-11 02:27:37', '2019-05-11 02:27:37'),
(139, 88, 1, 'Modules\\Iblog\\Entities\\Category', 'secondaryimage', NULL, '2019-05-21 18:50:37', '2019-06-29 16:05:16'),
(144, 89, 2, 'Modules\\Iblog\\Entities\\Post', 'slideimage', NULL, '2019-05-21 19:01:01', '2019-05-21 19:01:01'),
(150, 94, 1, 'Modules\\Iblog\\Entities\\Category', 'mainimage', NULL, '2019-05-21 19:34:02', '2019-06-29 16:05:16'),
(170, 105, 27, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:27:25', '2019-06-19 19:30:25'),
(172, 106, 28, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:28:34', '2019-06-19 19:30:38'),
(173, 107, 29, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:28:55', '2019-06-19 19:30:31'),
(174, 108, 30, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:33:08', '2019-06-19 19:33:40'),
(175, 109, 31, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:33:29', '2019-06-19 19:33:36'),
(176, 110, 32, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:38:02', '2019-06-19 19:38:02'),
(177, 111, 33, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-06-19 19:38:22', '2019-06-19 19:38:22'),
(201, 115, 35, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 16:19:59', '2019-08-03 16:19:59'),
(209, 125, 38, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 16:54:52', '2019-08-03 16:54:52'),
(210, 123, 39, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 16:56:37', '2019-08-03 16:56:37'),
(213, 107, 23, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-03 17:01:45', '2019-08-03 17:01:45'),
(219, 105, 2, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-08-03 17:16:13', '2019-10-16 17:28:31'),
(223, 115, 4, 'Modules\\Iplaces\\Entities\\Category', 'mainimage', NULL, '2019-08-03 17:36:41', '2019-08-03 17:36:41'),
(226, 121, 158, 'Modules\\Setting\\Entities\\Setting', 'isite::favicon', NULL, '2019-08-05 19:55:50', '2019-10-25 14:57:38'),
(228, 104, 2, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:09', '2019-08-14 14:41:09'),
(229, 105, 3, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:17', '2019-08-14 14:41:17'),
(230, 106, 4, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:23', '2019-08-14 14:41:23'),
(231, 107, 5, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:31', '2019-08-14 14:41:31'),
(232, 108, 6, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:38', '2019-08-14 14:41:38'),
(233, 109, 7, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:48', '2019-08-14 14:41:48'),
(234, 110, 8, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:41:57', '2019-08-14 14:41:57'),
(235, 111, 9, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-14 14:42:03', '2019-08-14 14:42:03'),
(237, 131, 11, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:44:56', '2019-08-15 16:44:56'),
(238, 104, 12, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:46:39', '2019-08-15 16:46:39'),
(239, 105, 13, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:46:45', '2019-08-15 16:46:45'),
(240, 106, 14, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:46:50', '2019-08-15 16:46:50'),
(241, 107, 15, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:47:01', '2019-08-15 16:47:01'),
(242, 108, 16, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:47:07', '2019-08-15 16:47:07'),
(243, 111, 17, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-08-15 16:47:16', '2019-08-15 16:47:16'),
(246, 111, 4, 'Modules\\Iblog\\Entities\\Post', 'gallery', 0, '2019-09-10 15:01:52', '2019-09-10 15:01:52'),
(247, 106, 4, 'Modules\\Iblog\\Entities\\Post', 'gallery', 1, '2019-09-10 15:01:52', '2019-09-10 15:01:52'),
(248, 107, 4, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-09-10 15:01:52', '2019-09-10 15:01:52'),
(262, 117, 18, 'Modules\\Slider\\Entities\\Slide', 'slideimage', NULL, '2019-10-22 16:52:58', '2019-10-22 16:52:58'),
(268, 158, 164, 'Modules\\Setting\\Entities\\Setting', 'isite::logo1', NULL, '2019-10-22 21:54:28', '2019-10-25 14:57:38'),
(269, 158, 1, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-10-22 21:55:16', '2019-10-22 21:55:16'),
(270, 111, 8, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-10-28 17:35:24', '2019-10-28 17:35:24'),
(271, 111, 9, 'Modules\\Iblog\\Entities\\Post', 'mainimage', NULL, '2019-10-28 17:35:51', '2019-10-28 17:35:51');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitems`
--

CREATE TABLE `menu__menuitems` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `link_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL DEFAULT 'page',
  `class` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '',
  `module_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `lft` int(11) DEFAULT NULL,
  `rgt` int(11) DEFAULT NULL,
  `depth` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `is_root` tinyint(1) NOT NULL DEFAULT '0',
  `icon` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitems`
--

INSERT INTO `menu__menuitems` (`id`, `menu_id`, `page_id`, `position`, `target`, `link_type`, `class`, `module_name`, `parent_id`, `lft`, `rgt`, `depth`, `created_at`, `updated_at`, `is_root`, `icon`) VALUES
(6, 3, NULL, 0, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 14:51:38', '2019-10-24 20:54:46', 0, NULL),
(7, 3, NULL, 1, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 14:55:00', '2019-10-24 20:01:44', 0, NULL),
(10, 3, NULL, 4, '_self', 'internal', '', NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:02:50', '2019-10-24 14:46:32', 0, NULL),
(11, 3, NULL, 5, '_self', 'internal', '', NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:03:15', '2019-10-24 14:46:32', 0, NULL),
(12, 3, NULL, 6, '_self', 'internal', '', NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:03:49', '2019-10-24 14:46:32', 0, NULL),
(14, 4, NULL, 7, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:05:31', '2019-10-28 17:15:53', 0, 'fas fa-home'),
(15, 4, NULL, 8, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:06:21', '2019-10-28 17:14:56', 0, 'fas fa-clipboard-list'),
(16, 4, NULL, 9, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:10:32', '2019-10-24 22:04:25', 0, 'fas fa-map-marker-alt'),
(17, 4, NULL, 10, '_self', 'internal', NULL, NULL, NULL, NULL, NULL, NULL, '2019-10-22 15:10:58', '2019-10-28 17:14:17', 0, 'fas fa-file-signature');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menuitem_translations`
--

CREATE TABLE `menu__menuitem_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menuitem_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menuitem_translations`
--

INSERT INTO `menu__menuitem_translations` (`id`, `menuitem_id`, `locale`, `status`, `title`, `url`, `uri`, `created_at`, `updated_at`) VALUES
(11, 6, 'en', 1, 'home', NULL, 'app.home', '2019-10-22 14:51:38', '2019-10-22 14:51:38'),
(12, 6, 'es', 1, 'inicio', NULL, 'app.home', '2019-10-22 14:51:38', '2019-10-24 20:54:46'),
(13, 7, 'en', 1, 'menu', NULL, 'products.index', '2019-10-22 14:55:00', '2019-10-22 14:55:00'),
(14, 7, 'es', 1, 'servicios', NULL, 'app.services', '2019-10-22 14:55:00', '2019-10-28 17:13:37'),
(19, 10, 'en', 1, 'branch offices', NULL, 'app.branchOffices', '2019-10-22 15:02:50', '2019-10-22 15:02:50'),
(20, 10, 'es', 1, 'sucursales', NULL, 'app.branchOffices', '2019-10-22 15:02:50', '2019-10-22 15:02:50'),
(21, 11, 'en', 1, 'gallery', NULL, 'app.gallery', '2019-10-22 15:03:15', '2019-10-22 15:03:15'),
(22, 11, 'es', 1, 'galería', NULL, 'app.gallery', '2019-10-22 15:03:15', '2019-10-22 15:03:15'),
(23, 12, 'en', 1, 'contact', NULL, 'app.contact', '2019-10-22 15:03:49', '2019-10-22 15:03:49'),
(24, 12, 'es', 1, 'contacto', NULL, 'app.contact', '2019-10-22 15:03:49', '2019-10-22 15:03:49'),
(27, 14, 'en', 1, 'home', NULL, 'app.home', '2019-10-22 15:05:31', '2019-10-22 15:05:31'),
(28, 14, 'es', 0, 'inicio', NULL, 'app.home', '2019-10-22 15:05:31', '2019-10-22 15:08:45'),
(29, 15, 'en', 1, 'reservations', NULL, 'app.reservations', '2019-10-22 15:06:21', '2019-10-22 15:06:21'),
(30, 15, 'es', 1, 'servicios', NULL, 'app.services', '2019-10-22 15:06:21', '2019-10-28 17:14:56'),
(31, 16, 'en', 1, 'branch offices', NULL, 'app.branchOffices', '2019-10-22 15:10:32', '2019-10-22 15:10:32'),
(32, 16, 'es', 1, 'sucursales', NULL, 'app.branchOffices', '2019-10-22 15:10:32', '2019-10-24 22:06:06'),
(33, 17, 'en', 1, 'gallery', NULL, 'app.gallery', '2019-10-22 15:10:58', '2019-10-22 15:10:58'),
(34, 17, 'es', 1, 'contacto', NULL, 'app.contact', '2019-10-22 15:10:58', '2019-10-28 17:14:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menus`
--

CREATE TABLE `menu__menus` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `primary` tinyint(4) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menus`
--

INSERT INTO `menu__menus` (`id`, `name`, `primary`, `created_at`, `updated_at`) VALUES
(3, 'main', 0, '2019-10-21 23:31:50', '2019-10-21 23:31:50'),
(4, 'footer', 0, '2019-10-22 15:05:26', '2019-10-22 15:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `menu__menu_translations`
--

CREATE TABLE `menu__menu_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `menu_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT '0',
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `menu__menu_translations`
--

INSERT INTO `menu__menu_translations` (`id`, `menu_id`, `locale`, `status`, `title`, `created_at`, `updated_at`) VALUES
(5, 3, 'en', 1, 'main', '2019-10-21 23:31:50', '2019-10-21 23:31:50'),
(6, 3, 'es', 1, 'main', '2019-10-21 23:31:50', '2019-10-21 23:31:50'),
(7, 4, 'en', 1, 'footer', '2019-10-22 15:05:26', '2019-10-22 15:05:26'),
(8, 4, 'es', 1, 'footer', '2019-10-22 15:05:26', '2019-10-22 15:05:26');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(174, '2018_10_16_150957100878_create_iplaces_service_translations_table', 1),
(211, '2019_04_24_204621_create_iblog_post_translations_table', 3),
(210, '2019_04_24_204509_create_iblog_category_translations_table', 3),
(204, '2017_01_25_1485443910_add_category_id_posts_table', 2),
(209, '2016_11_30_202600_create_iblog_tags_table', 3),
(208, '2016_11_20_130507_create_iblog_post_tag_table', 3),
(207, '2016_11_20_130507_create_iblog_post_category_table', 3),
(206, '2016_11_15_153610755530_create_iblog_posts_table', 3),
(205, '2016_11_15_153610147495_create_iblog_categories_table', 3),
(190, '2018_12_27_192720_add__order_place_table', 1),
(189, '2018_12_26_223705_add__sites_place_table', 1),
(188, '2018_12_21_155700920932_create_iplaces_city_translations_table', 1),
(187, '2018_12_21_155700670202_create_iplaces_cities_table', 1),
(186, '2018_12_21_154154_add_rating_place_table', 1),
(185, '2018_12_21_153739_create_related_place_table', 1),
(184, '2018_12_20_221555882860_create_iplaces_place_space_table', 1),
(183, '2018_12_20_221555882858_create_iplaces_space_translations_table', 1),
(182, '2018_12_20_221555542146_create_iplaces_spaces_table', 1),
(181, '2018_11_08_211921_create_iplaces_place_schedule_table', 1),
(180, '2018_11_08_200747038135_create_iplaces_schedule_translations_table', 1),
(179, '2018_11_08_200746780128_create_iplaces_schedules_table', 1),
(178, '2018_10_22_141719_create_iplaces_place_zone_table', 1),
(177, '2018_10_19_220450_create_iplaces_place_service_table', 1),
(176, '2018_10_16_155237392556_create_iplaces_zone_translations_table', 1),
(175, '2018_10_16_155237131804_create_iplaces_zones_table', 1),
(173, '2018_10_16_150956833200_create_iplaces_services_table', 1),
(172, '2018_09_19_213758_create_iplaces_place_category_table', 1),
(171, '2018_09_19_210300763722_create_iplaces_category_translations_table', 1),
(170, '2018_09_19_210300513459_create_iplaces_categories_table', 1),
(169, '2018_09_19_210300225321_create_iplaces_place_translations_table', 1),
(168, '2018_09_19_210259974884_create_iplaces_places_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `oauth_access_tokens`
--

CREATE TABLE `oauth_access_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `client_id` int(11) NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_access_tokens`
--

INSERT INTO `oauth_access_tokens` (`id`, `user_id`, `client_id`, `name`, `scopes`, `revoked`, `created_at`, `updated_at`, `expires_at`) VALUES
('024b3c278cd9adcc80ee100b5024ccb205188bef0710a82e0196201fc49fc899c1692b3e87e1998c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-25 15:08:46', '2019-09-25 15:08:46', '2020-09-25 10:08:46'),
('3462af051431a5dffef08c631fe507b45984d7ac3fd5d2f6ab096072a347e520c2382f50dbd0b1dc', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-25 22:02:00', '2019-09-25 22:02:00', '2020-09-25 17:02:00'),
('3029726ba9cbb3a883bf5e47555947f304a11b0a1b4391b3e081400c5e907b4a16a4a3cac43e6847', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-27 15:20:11', '2019-09-27 15:20:11', '2020-09-27 10:20:11'),
('4b0efcbe4253efd01707c0a46407f4af3bc3354c8251630fb2eeb51777a1131b2415c227c57bdab1', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-27 15:27:12', '2019-09-27 15:27:12', '2020-09-27 10:27:12'),
('919c5b9f299482930b343326900a60f71caf591971333746dd6951c201345318862913e703409571', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-27 15:35:31', '2019-09-27 15:35:31', '2020-09-27 10:35:31'),
('9d3c29c636537ecea53ad8f44e43b65e4d01c7290edec692c2d8d7612c425cb1fd97b12624907e19', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 16:40:09', '2019-10-22 16:40:09', '2020-10-22 11:40:09'),
('716d3f11f0da8468fbdaff66be6dbcac0c2e2e963f6be7f945abf215474dfb740f97edde19465d4c', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-09-27 17:25:24', '2019-09-27 17:25:24', '2020-09-27 12:25:24'),
('296d1e43c8eb7153cdb1b877b24682717d7ce85ddfd64df884639a421ef4039d456d38da821969df', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-02 15:56:32', '2019-10-02 15:56:32', '2020-10-02 10:56:32'),
('20aa5a6e33032b1506763cabe19673406cf9f7057e9b8ed4431c4f9e9efb891d88f376e631948883', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-02 15:57:49', '2019-10-02 15:57:49', '2020-10-02 10:57:49'),
('bfbd30e315d38629a7d41db6216015e04aa6ede64dbe468481afe7d87ce3b14287f102c3793c4517', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-03 21:55:44', '2019-10-03 21:55:44', '2020-10-03 16:55:44'),
('b286f715ca330dec226e3ad20eb2a106a258b4c89715ef1cd96895622daea5910aab649f4a1bb2e6', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-05 18:08:22', '2019-10-05 18:08:22', '2020-10-05 13:08:22'),
('77332ecc736e8889b9087f93ddd5551ec334cccd791faa403af6d67775412429f9b282bdbf3995f8', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-05 18:35:10', '2019-10-05 18:35:10', '2020-10-05 13:35:10'),
('e82a9607398d016f06a5b3421a2dac007c88d318a334999b4e6f8fa29866c396a8edd6233db9dbf8', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-07 16:18:18', '2019-10-07 16:18:18', '2020-10-07 11:18:18'),
('8ccbdcc7b2bfb3dfb97200700975f683e5ecb2a953d8803b8a069e2c2f187cbc784c4d4cde413c16', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-07 16:24:37', '2019-10-07 16:24:37', '2020-10-07 11:24:37'),
('8fa05f6c6a300c6f52efa1f8739212e8e6e30cfcc994598e3d1683039f7877c0098add586694b7f7', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-07 20:47:38', '2019-10-07 20:47:38', '2020-10-07 15:47:38'),
('575a4fb42d1cf95414de3a7ca8d7bcbf24ff611a5ca437522e5b1de7b579b6327fadfe14c85ff30d', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-07 22:22:18', '2019-10-07 22:22:18', '2020-10-07 17:22:18'),
('b8c2aad6e7f112b695b519eae2f42b920126a69691d7c718b4c7a4304d1c408f0e1ed6a9cc9654f7', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-07 22:55:29', '2019-10-07 22:55:29', '2020-10-07 17:55:29'),
('83dc723fd9a6a4f3d7248da4d68cbc09a66178adbcf73d7d24f8985848cd118c5903f23ac9a44e32', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-10 15:28:00', '2019-10-10 15:28:00', '2020-10-10 10:28:00'),
('b1f07e35ce7bc3b08495d6fb85c47b5f80f7faf6e0878768d3f0450216c2f89d6a82bfac03e07cd8', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 20:58:22', '2019-10-22 20:58:22', '2020-10-22 15:58:22'),
('e65a8295149ddf0df953b7a1acbb7a19228c71401dadc2d3783b14b13b06bf25a6a6975a2438a526', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-10 19:40:57', '2019-10-10 19:40:57', '2020-10-10 14:40:57'),
('f4c6dddc1282eacabc1dd3327a0c2b71e2ad8bf326268c22e27c0ccedb3a9e360bdbe6ef0fed27f3', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-24 21:06:10', '2019-10-24 21:06:10', '2020-10-24 16:06:10'),
('eb10a9dfc3c951a244752f9e4e7b26c2fa91465916d4cf63b9640c4be4f8e33cbd748d61f3b73125', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-10 21:28:19', '2019-10-10 21:28:19', '2020-10-10 16:28:19'),
('1813c77bd14f2ee9eaaad0b3f196757b4e21fe271b3b723d25a63a701ea6065b3cd2bb27d090886a', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-11 13:59:56', '2019-10-11 13:59:56', '2020-10-11 08:59:56'),
('f2bc6c0b9ba92692668be4269ea63d81401d1081a28ee9ec3fe32cab05ce10e6388adcf62a618e12', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-11 15:08:00', '2019-10-11 15:08:00', '2020-10-11 10:08:00'),
('2cfea408984cbfc9709d98025c8dc076612858578f48916c64dabbd264d952e785c36df2c1556c13', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-11 20:55:24', '2019-10-11 20:55:24', '2020-10-11 15:55:24'),
('9f93f2957d6a6befa44ea4155b6f3a07fe77307137ddc6d1a40fb0fbcc42d2e8d69dcd42995756e5', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-16 17:26:36', '2019-10-16 17:26:36', '2020-10-16 12:26:36'),
('1f73efb74f5ad3cfa63830aa2a68f86712c3cbed3daa8f7b0e850fab6d64b2ae04217a254e8525e0', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-17 16:24:27', '2019-10-17 16:24:27', '2020-10-17 11:24:27'),
('c707fc9b926a1ec444e3aead43c0d1a950f61fd640baff90dc8cb793046dfa7abaabb59472fded71', 11, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-21 21:15:29', '2019-10-21 21:15:29', '2020-10-21 16:15:29'),
('55f952e8ee4a26528f00df7d2145590bdaba42462e26067e52c6aa1d08e5e9f262d789c91bb774fc', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 17:17:29', '2019-10-22 17:17:29', '2020-10-22 12:17:29'),
('89df0c24e84836f79f1f595e4daa98405f0093e3f2d491876d47296b7dd866ab5e15fee99b0087ca', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 20:59:38', '2019-10-22 20:59:38', '2020-10-22 15:59:38'),
('958caf25e882fd2c72fd9aabc28ac64e0a17b341e3238ea9f18a794d0d616229d1b8f70e458a65e5', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-22 23:16:22', '2019-10-22 23:16:22', '2020-10-22 18:16:22'),
('655932d4aff891f8a55d61be9b5beaffd7f85d198dd50cab0759c64d3155ffb8a7b54a48ae1d9ed0', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-28 16:42:42', '2019-10-28 16:42:42', '2020-10-28 11:42:42'),
('e4880c06147e19a588c3b5a2a720fcbb1bcc5c9b90bad1f63145ac1a8129188a98c1d54feeed957c', 1, 1, 'Laravel Password Grant Client', '[]', 0, '2019-10-24 20:28:19', '2019-10-24 20:28:19', '2020-10-24 15:28:19');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_auth_codes`
--

CREATE TABLE `oauth_auth_codes` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `user_id` int(11) NOT NULL,
  `client_id` int(11) NOT NULL,
  `scopes` text COLLATE utf8mb4_unicode_ci,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `oauth_clients`
--

CREATE TABLE `oauth_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `secret` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `redirect` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `personal_access_client` tinyint(1) NOT NULL,
  `password_client` tinyint(1) NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_clients`
--

INSERT INTO `oauth_clients` (`id`, `user_id`, `name`, `secret`, `redirect`, `personal_access_client`, `password_client`, `revoked`, `created_at`, `updated_at`) VALUES
(1, NULL, 'My Application Personal Access Client', 'l5qt4WvtBnj6NMxXZquf7YDr377rXaSzBD6wbGcV', 'http://localhost', 1, 0, 0, '2019-04-16 22:09:09', '2019-04-16 22:09:09'),
(2, NULL, 'My Application Password Grant Client', 'nroAjqYnultjwDkUOxap8GPsEk0wwiehDvyeJlrY', 'http://localhost', 0, 1, 0, '2019-04-16 22:09:09', '2019-04-16 22:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_personal_access_clients`
--

CREATE TABLE `oauth_personal_access_clients` (
  `id` int(10) UNSIGNED NOT NULL,
  `client_id` int(11) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `oauth_personal_access_clients`
--

INSERT INTO `oauth_personal_access_clients` (`id`, `client_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-04-16 22:09:09', '2019-04-16 22:09:09');

-- --------------------------------------------------------

--
-- Table structure for table `oauth_refresh_tokens`
--

CREATE TABLE `oauth_refresh_tokens` (
  `id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `access_token_id` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revoked` tinyint(1) NOT NULL,
  `expires_at` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `page__pages`
--

CREATE TABLE `page__pages` (
  `id` int(10) UNSIGNED NOT NULL,
  `is_home` tinyint(1) NOT NULL DEFAULT '0',
  `template` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__pages`
--

INSERT INTO `page__pages` (`id`, `is_home`, `template`, `created_at`, `updated_at`) VALUES
(1, 1, 'home', '2019-04-16 21:21:51', '2019-04-16 21:21:51'),
(2, 0, 'default', '2019-05-01 01:45:24', '2019-05-01 01:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `page__page_translations`
--

CREATE TABLE `page__page_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT '1',
  `body` text COLLATE utf8mb4_unicode_ci,
  `meta_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `meta_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_description` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_image` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `og_type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `page__page_translations`
--

INSERT INTO `page__page_translations` (`id`, `page_id`, `locale`, `title`, `slug`, `status`, `body`, `meta_title`, `meta_description`, `og_title`, `og_description`, `og_image`, `og_type`, `created_at`, `updated_at`) VALUES
(1, 1, 'en', 'Home page', 'home', '1', '<p><strong>You made it!</strong></p>\n<p>You&#39;ve installed AsgardCMS and are ready to proceed to the <a href=\"/en/backend\">administration area</a>.</p>\n<h2>What&#39;s next ?</h2>\n<p>Learn how you can develop modules for AsgardCMS by reading our <a href=\"https://github.com/AsgardCms/Documentation\">documentation</a>.</p>\n', 'Home page', NULL, NULL, NULL, NULL, NULL, '2019-04-16 21:21:51', '2019-04-16 21:21:51'),
(2, 2, 'es', 'teert', 'teert', '1', '<p>dfdgfdgf</p>', NULL, NULL, NULL, NULL, NULL, NULL, '2019-05-01 01:45:24', '2019-05-01 01:45:24');

-- --------------------------------------------------------

--
-- Table structure for table `persistences`
--

CREATE TABLE `persistences` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `persistences`
--

INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1, 1, 'jkeDliGX6dLIBQtVFjEsSDKbkLvoK4RX', '2019-05-21 19:00:22', '2019-05-21 19:00:22'),
(2, 1, '47FHMgxFObuVUauK5vTo2PgWNUkiAfbi', '2019-05-21 19:00:23', '2019-05-21 19:00:23'),
(3, 1, 'oIImIhMYhMfSbtC4hiSfQstrqzLAqH9J', '2019-05-21 19:04:33', '2019-05-21 19:04:33'),
(4, 1, 'ltZjP2lYhz7WXi5j4rmagUuqTvCLMySz', '2019-05-21 19:04:34', '2019-05-21 19:04:34'),
(5, 2, 'sFfAEgFcuG5LuatZtiMrbDqsnkhzhl37', '2019-05-21 19:22:25', '2019-05-21 19:22:25'),
(6, 1, '8LFOlyucwCOnieTFFUwwfEh1P8t4CrCi', '2019-05-21 19:32:10', '2019-05-21 19:32:10'),
(7, 1, 'ruRFzaWImJrirayvgUIcdvovImgf9gtq', '2019-05-21 19:32:11', '2019-05-21 19:32:11'),
(8, 1, 'JA7pTYkfXUihixR8rUXsDKZyCAgCooel', '2019-05-21 19:32:32', '2019-05-21 19:32:32'),
(9, 1, 'SNHhHIUtuUNpq3qWkbxqM1ErIkD0CYEJ', '2019-05-21 19:32:32', '2019-05-21 19:32:32'),
(10, 1, 'kp68OsU621cYCwT3Ol1pIJ1KGldrQG68', '2019-05-21 19:33:35', '2019-05-21 19:33:35'),
(11, 1, 'tnDwBY49t9mCST0qlOiHqeWeqncS2YJL', '2019-05-21 19:33:35', '2019-05-21 19:33:35'),
(12, 1, 'H6FwcEkordbdXJSjWb93RRxpZnGipIae', '2019-05-21 19:34:09', '2019-05-21 19:34:09'),
(13, 1, 'vW0yZiWvM5hYecpRzp56h8lXHWd7OvuJ', '2019-05-21 19:34:09', '2019-05-21 19:34:09'),
(14, 1, 'WftMbwr3TKfgaRpeQFlUXYh5o1gwR5ej', '2019-05-21 19:35:06', '2019-05-21 19:35:06'),
(15, 1, 'wacQ4GvP1u09yT9iSLyMLpstVy73Eacc', '2019-05-21 19:35:07', '2019-05-21 19:35:07'),
(16, 1, 'OdGxWHoGCbcIOYEBVJZYYor7ZRcRH5PD', '2019-05-21 19:35:08', '2019-05-21 19:35:08'),
(17, 1, 'kYPLH2UywKB5hu1QrXaAR7cNEq2HIfVH', '2019-05-21 19:35:08', '2019-05-21 19:35:08'),
(18, 1, 'gtl569dGIaJ4W0JJrJLHVyZC7AU0cv55', '2019-05-21 19:36:07', '2019-05-21 19:36:07'),
(19, 1, '8ngkVVNyvybynXR38PtGuyrfhkBtt0Vq', '2019-05-21 19:36:07', '2019-05-21 19:36:07'),
(20, 1, 'Z3LyOzNwk3YwLrs1DLNT11IOozanvlkL', '2019-05-21 19:36:07', '2019-05-21 19:36:07'),
(21, 1, '3debeytbU4sBYuA3MyZxpUiw4UeLngUO', '2019-05-21 19:36:08', '2019-05-21 19:36:08'),
(22, 2, 'jIuWd62vxbJoAGpxBoC5InnXIVDlI9ok', '2019-05-21 19:38:09', '2019-05-21 19:38:09'),
(23, 1, 'ODibTwSISDCakIVL5ZtvUnn3MSFuHrSD', '2019-05-21 19:41:07', '2019-05-21 19:41:07'),
(24, 1, 'W7T1vLqYDKoK4A7ox6YGo2PRu8YwzZk3', '2019-05-21 19:41:10', '2019-05-21 19:41:10'),
(25, 1, 'fEmfrQZtmi2RFosMlrq9TfUxnz6a71dS', '2019-05-21 19:41:37', '2019-05-21 19:41:37'),
(26, 1, 'nr1sbKQtGrmY2Fd4TyhKvb7fuz6Vr5aV', '2019-05-21 19:54:10', '2019-05-21 19:54:10'),
(27, 1, 'gsoRa5DAYWdCMb4xzLXwy2i7M0yG8yQw', '2019-05-21 19:54:10', '2019-05-21 19:54:10'),
(28, 1, 'uVkjm33GkonPXqHiY1cfuvLCMuYVKHvB', '2019-05-21 19:55:26', '2019-05-21 19:55:26'),
(29, 1, '3WYRu7IzC3bz7b3sxj2bJW5npOsdOlo9', '2019-05-21 19:55:26', '2019-05-21 19:55:26'),
(30, 1, 'qEjOLB8431X8pMMbG0EvkUMGQaGihfEg', '2019-05-21 19:55:26', '2019-05-21 19:55:26'),
(31, 1, 'ylxqXHnxfWqXgpa6gU6WqLv68AXS3W9L', '2019-05-21 19:55:27', '2019-05-21 19:55:27'),
(32, 1, '48dPrG0YmqqEYTawJ03HUtWTOJZIAEXn', '2019-05-21 20:02:29', '2019-05-21 20:02:29'),
(33, 1, 'CGuHzLgj4lJIv2ft13jB4QQekSie5llE', '2019-05-21 20:02:29', '2019-05-21 20:02:29'),
(34, 1, 'Q7uIMXF5JwlR6hfctYEEZGRDGqiUyFQR', '2019-05-21 20:04:56', '2019-05-21 20:04:56'),
(35, 1, 'nqBIQdvZ00toTOlo3dwzHthlgayBIMIK', '2019-05-21 20:04:57', '2019-05-21 20:04:57'),
(36, 1, 'dNssa63yYbUA3f3BsTS5T6SvDBInvwsn', '2019-05-21 20:04:57', '2019-05-21 20:04:57'),
(37, 1, 'AsnH6sd4MhAYjaRdqN069diO08cV7E2W', '2019-05-21 20:04:57', '2019-05-21 20:04:57'),
(38, 1, '63MyWoppjxLBt1UADMvxH6yOwdhdmvnp', '2019-05-21 20:04:59', '2019-05-21 20:04:59'),
(39, 1, '9ytPkDA7w9jEe3olgyraLkSzVmbA6xWd', '2019-05-21 20:04:59', '2019-05-21 20:04:59'),
(40, 1, 'C55MypEpZhPLERZQJh7YjqW7iWPUs6Oz', '2019-05-21 20:05:04', '2019-05-21 20:05:04'),
(41, 1, 'GNHzD5GdNvpXExE3lGp43jnOQQXoRilr', '2019-05-21 20:05:04', '2019-05-21 20:05:04'),
(42, 1, '4EMlwq6t8VJVpXOw4WD2TIBWDkvNT1cH', '2019-05-21 20:13:29', '2019-05-21 20:13:29'),
(43, 1, 'bTk4eI7gW03SGKovzL4F2nike6zgTHdO', '2019-05-21 20:13:29', '2019-05-21 20:13:29'),
(44, 1, 'TR4LeX1gjSRg9rdNtpXuKAUfUkLicfRc', '2019-05-21 20:16:22', '2019-05-21 20:16:22'),
(45, 1, '6qWBMPwPDPesFS04rkh0hU5lJ9tGO0Hd', '2019-05-21 20:16:22', '2019-05-21 20:16:22'),
(46, 1, 'Jjx1rLo3oc3n4ay2KmDnb0lm2n4sOo94', '2019-05-21 20:18:13', '2019-05-21 20:18:13'),
(47, 1, 'gJ6YG9VHGw5bT3LOWbiQQMUZ1AwfqNSe', '2019-05-21 20:18:13', '2019-05-21 20:18:13'),
(48, 1, 'd6b5GgoswDk3zBk420KOOj0xzWmipMud', '2019-05-21 20:18:13', '2019-05-21 20:18:13'),
(49, 1, '8s8TJzXz600lF552xxeJXCqzOpZ8Gd6m', '2019-05-21 20:18:14', '2019-05-21 20:18:14'),
(50, 1, 'mLGQ8mxv1z5EM4xW5684vVqB1URv19gm', '2019-05-21 20:18:15', '2019-05-21 20:18:15'),
(51, 1, 'v7pjGloWVxOHxjFVea0MqA2fn3B2nch3', '2019-05-21 20:18:15', '2019-05-21 20:18:15'),
(52, 1, 'bz2vaR3HAB1uZuMSbgkEintkUy7ccwYR', '2019-05-21 20:18:18', '2019-05-21 20:18:18'),
(53, 1, 'AdG5REuaMpSJNZ4elkUSOxuuYEkPWEhf', '2019-05-21 20:18:18', '2019-05-21 20:18:18'),
(54, 1, 'vAT86msjFWLXgpEmE699T8jz9GO9ze9t', '2019-05-21 20:27:25', '2019-05-21 20:27:25'),
(55, 1, 'LjBR3GjnPY71jDMDgvcwsKk40hH0HuxR', '2019-05-21 20:27:25', '2019-05-21 20:27:25'),
(56, 1, 'rYGgAtrz99QpLY4zXHPTXNrC5F8rf5cp', '2019-05-21 20:29:29', '2019-05-21 20:29:29'),
(57, 1, 'K5i9faNo5LXT1dAesFKssjVIMAHRN6pD', '2019-05-21 20:29:29', '2019-05-21 20:29:29'),
(58, 1, 'Bx3eJ0l6yTklLmBgpZ4ExPdF0HkeaOc9', '2019-05-21 20:29:30', '2019-05-21 20:29:30'),
(59, 1, 'Ga8NmqkYr6k8YJUV2Jmg9Z9vfy1yrykA', '2019-05-21 20:29:30', '2019-05-21 20:29:30'),
(60, 1, 'GBcH6RpzFwaaL21hG0I5z4GiboDGLkST', '2019-05-21 20:29:32', '2019-05-21 20:29:32'),
(61, 1, '17vPjUkdl1JqZJqX3fttgIbs54Zrf7iz', '2019-05-21 20:29:32', '2019-05-21 20:29:32'),
(62, 1, 'vrFlHpQh7hEMIJ6KDnjhpsxmkfYot4Hh', '2019-05-21 20:37:44', '2019-05-21 20:37:44'),
(63, 1, 'Xa43w4Gzg8ZSnKEZWNSzZxIdG54hz9Kr', '2019-05-21 20:37:44', '2019-05-21 20:37:44'),
(64, 1, 'b4b31hYRh9JYYq6HtZ7VHep4r3vWpf24', '2019-05-21 20:37:50', '2019-05-21 20:37:50'),
(65, 1, 'UfCDLI5qc7t0Ij72wFzvbOn1yJG2v8vN', '2019-05-21 20:37:50', '2019-05-21 20:37:50'),
(66, 1, 'HzYVkPGUygH9q65fNW9CXMjwgMAZy3RK', '2019-05-21 20:40:05', '2019-05-21 20:40:05'),
(67, 1, 'dgBj7e8YUMTzFaqZv3KluJFNQwrN6hOZ', '2019-05-21 20:40:05', '2019-05-21 20:40:05'),
(68, 1, 'DjxAmPWNCQw5mNNBf3hbH5ue87Mk05y6', '2019-05-21 20:40:06', '2019-05-21 20:40:06'),
(69, 1, 'QmWpnqWw5H7nDCmKuykqN5Fmf7XxPGfZ', '2019-05-21 20:40:06', '2019-05-21 20:40:06'),
(70, 1, 'V11uAyHzVuGxxbxGaIHmzO162AtAeXiQ', '2019-05-21 20:40:08', '2019-05-21 20:40:08'),
(71, 1, '535akJCUNwkOdEMXVK40lG7p1bCWA0nb', '2019-05-21 20:40:08', '2019-05-21 20:40:08'),
(72, 1, 'Jd9XgNMqRbxjyopgZ6GGCKOazTky2mWn', '2019-05-21 20:43:56', '2019-05-21 20:43:56'),
(73, 1, 'hKXRBqSahwDxPb4AmPH6GEXHBhXYVkld', '2019-05-21 20:43:56', '2019-05-21 20:43:56'),
(74, 1, 'e8aKs0TEZAtGwFGew9DtoAblO4RUl6A9', '2019-05-21 20:43:57', '2019-05-21 20:43:57'),
(75, 1, 'jhJDCL5imUUk4jaqfkPLbIHWxa8j77q6', '2019-05-21 20:43:57', '2019-05-21 20:43:57'),
(76, 1, '34NUtvwayj84GkTpuminJgg7hCl2eEow', '2019-05-21 20:44:05', '2019-05-21 20:44:05'),
(77, 1, 'wl8MWunGInywIoZ6gxOAaNYjbTN7p9xS', '2019-05-21 20:44:05', '2019-05-21 20:44:05'),
(78, 1, 'FDNNiTVxORnToCbJAH0F4AFGRGslx9De', '2019-05-21 20:48:09', '2019-05-21 20:48:09'),
(79, 1, 'pZmWHbLjR2g6WxybSiqVranFYu5EhSY8', '2019-05-21 20:48:10', '2019-05-21 20:48:10'),
(80, 1, 'vSA543vmBAg2fSBU1H0mAEs6ZW6rE8zR', '2019-05-21 20:48:10', '2019-05-21 20:48:10'),
(81, 1, '9hp71vJ6lTDix4tLuWSX2FbzSqKsVRpF', '2019-05-21 20:48:10', '2019-05-21 20:48:10'),
(82, 1, 'CRC4eXwa2BoB0u6EjMNJJUeK0xinhg1M', '2019-05-21 20:48:11', '2019-05-21 20:48:11'),
(83, 1, 'CmB8yckN49ghseSemWqscqszzBlxIAGA', '2019-05-21 20:48:11', '2019-05-21 20:48:11'),
(84, 1, 'VK75MeBvxWzn0CoEXfN244q4BHKIvqws', '2019-05-21 20:48:55', '2019-05-21 20:48:55'),
(85, 1, 'v4ZsNYt831d9satA0Lw94zP4QE0RvUDV', '2019-05-21 20:48:55', '2019-05-21 20:48:55'),
(86, 1, 'wJJsq71m0OjeIgHQXJNzs0F58Ae2sz0I', '2019-05-21 20:48:55', '2019-05-21 20:48:55'),
(87, 1, 'bxyFhURqN3Z1dAE9A6eOMgRSTmNIhVTq', '2019-05-21 20:48:55', '2019-05-21 20:48:55'),
(88, 1, 'VLeUvmwTngkFP0fPGtRzwmenZd4aWkAV', '2019-05-21 20:48:57', '2019-05-21 20:48:57'),
(89, 1, 'VYz2pW39YMraNOkjnd7qiAhLPlSKrQkK', '2019-05-21 20:48:57', '2019-05-21 20:48:57'),
(90, 1, '6KCoPOunSzlnLDhg1tQ1a7UsMZgfrn9W', '2019-05-21 20:49:24', '2019-05-21 20:49:24'),
(91, 1, 'g1Vk2l9VRoIP7oVHMDN37szVPUWoZgkh', '2019-05-21 20:49:25', '2019-05-21 20:49:25'),
(92, 1, 'ekcOPXKYzbBFtrc72nr4r5FBgmHaF2wk', '2019-05-21 20:49:25', '2019-05-21 20:49:25'),
(93, 1, 'b4RZyu6PYtabGz8ei2Qp2XQaqfAEGGTR', '2019-05-21 20:49:25', '2019-05-21 20:49:25'),
(94, 1, 'PNiZfHKQdUjkZ9E8FzMtkBolBYDcNeXg', '2019-05-21 20:50:32', '2019-05-21 20:50:32'),
(95, 1, '7u6BEohWpZeCuYvcin0oKf3rAZf3Movc', '2019-05-21 20:50:32', '2019-05-21 20:50:32'),
(96, 1, 'XrLdCmLUsNc5bGD259IvKqBR3y4KVPj0', '2019-05-21 20:50:32', '2019-05-21 20:50:32'),
(97, 1, 'Bsppw3AVcGgIhIBu236NrrrXkjdEZbLH', '2019-05-21 20:50:33', '2019-05-21 20:50:33'),
(98, 1, 'VkNx4EDN1tWv9qHjyw0c4K7lFP9MqXCx', '2019-05-21 20:50:34', '2019-05-21 20:50:34'),
(99, 1, 'y5Fn7PAQRu9RB61IubQOacQoDeaauPvX', '2019-05-21 20:50:34', '2019-05-21 20:50:34'),
(100, 1, 'F2dq1mdjWiMrBYRQJ7PfSDd7FVTzk0EJ', '2019-05-21 20:51:27', '2019-05-21 20:51:27'),
(101, 1, 'NggUarnxMjT7bAcu9boWUXNReLPn5MAl', '2019-05-21 20:51:27', '2019-05-21 20:51:27'),
(102, 1, 'C2EuvibjxYMqJqYWARyMzUkrQnmclPMx', '2019-05-21 20:51:27', '2019-05-21 20:51:27'),
(103, 1, 'dHiWomROiVsTdXwTQJ2gbS2K7T7Q8H6Z', '2019-05-21 20:51:28', '2019-05-21 20:51:28'),
(104, 1, 'CMRZprxB0Km95zKDaOOS75mW71iitKAm', '2019-05-21 20:51:30', '2019-05-21 20:51:30'),
(105, 1, '6OZfnW1kLPZAaoUBhRiiiYbTOYSuxGNT', '2019-05-21 20:51:30', '2019-05-21 20:51:30'),
(106, 1, 'jC2UzgaYs4OA5AF988jN2MeRMNnkxExT', '2019-05-21 20:53:19', '2019-05-21 20:53:19'),
(107, 1, 'b7gWFDHv4Y30q6EKJdKiYN5ipZCuSDC1', '2019-05-21 20:53:19', '2019-05-21 20:53:19'),
(108, 1, 'Tz5YCdQwVVEqOuNt0yijPJ6vmEgFBhHB', '2019-05-21 20:53:19', '2019-05-21 20:53:19'),
(109, 1, 'towM4gXpy1GyDNPQb0AtPphdWAmWg9eb', '2019-05-21 20:53:19', '2019-05-21 20:53:19'),
(110, 1, '9YGGypZZVWC9IqsJtC7nhZ6dmriPJ6tg', '2019-05-21 20:53:30', '2019-05-21 20:53:30'),
(111, 1, 'DZ57jRvn1227vETUUAbCtZVpVltOnlcA', '2019-05-21 20:53:30', '2019-05-21 20:53:30'),
(112, 1, '4VFdcNkUrNgQQQtHKtqOpSxYGbcd3Zfd', '2019-05-21 20:53:30', '2019-05-21 20:53:30'),
(113, 1, 'yMtkYIVQEchsSKPyTAxYDf9uxEl8om0p', '2019-05-21 20:53:30', '2019-05-21 20:53:30'),
(114, 1, 'A8LNVHCLYWJUxb6eYAhykFC8mbHpm1iO', '2019-05-21 20:55:55', '2019-05-21 20:55:55'),
(115, 1, 'FO2Wwim83hyQBOqBlOQjNGn0RFrymTQH', '2019-05-21 20:55:55', '2019-05-21 20:55:55'),
(116, 1, 'OeWtgm031YCKJz10NIEiqkMHUmX8IQDj', '2019-05-21 20:55:55', '2019-05-21 20:55:55'),
(117, 1, 'c2KUoIzFQIJFVmQZDFy6JEfdZJ1FWpIs', '2019-05-21 20:55:55', '2019-05-21 20:55:55'),
(118, 1, '3qsYCcqB3JWlSca2FLNV4Vx0V0LO081e', '2019-05-21 20:55:57', '2019-05-21 20:55:57'),
(119, 1, 'WWomoAkR31anrisGGknDiA8BUEti35SU', '2019-05-21 20:55:57', '2019-05-21 20:55:57'),
(120, 1, 'JQSN9Tnueb8lV0RKlKk7jbNTH5WmOYYf', '2019-05-21 20:56:45', '2019-05-21 20:56:45'),
(121, 1, 'XF49QgUUPnt6gaqby6V8BFcKs5U89r75', '2019-05-21 20:56:45', '2019-05-21 20:56:45'),
(122, 1, 'o5NKpzRdJZsNHBh6SGwj6LpN8omcYfr0', '2019-05-21 20:56:45', '2019-05-21 20:56:45'),
(123, 1, 'HmpLtdcpnWBIdWSrn9JPzXKcc2PzgnxS', '2019-05-21 20:56:45', '2019-05-21 20:56:45'),
(124, 1, 'zCvmZkeqtOdclYHkOXNJIdgGPamBzTnJ', '2019-05-21 20:56:46', '2019-05-21 20:56:46'),
(125, 1, 'uIA2tGor1SZ4QZyRXcIgfsYtV1gst1PF', '2019-05-21 20:56:46', '2019-05-21 20:56:46'),
(126, 1, 'kXXdprgFDp2hFNAheq5mXRllPGhmsGZC', '2019-05-21 20:58:07', '2019-05-21 20:58:07'),
(127, 1, 'MiOzzLU8rdzTX6D5kfR6kMujmlQ69MhU', '2019-05-21 20:58:07', '2019-05-21 20:58:07'),
(128, 1, 'd2D0WsEULHSku4GfiXpj0mCkjVLjkAqi', '2019-05-21 20:58:07', '2019-05-21 20:58:07'),
(129, 1, 'd0yNWKKyRnkJOfepdO7O5SZbeRhQvsf2', '2019-05-21 20:58:08', '2019-05-21 20:58:08'),
(130, 1, 'Cih7C6ajFFQTvG6jy7AjagWhbhkuKsvk', '2019-05-21 20:58:08', '2019-05-21 20:58:08'),
(131, 1, '1NsGb8OFWryWzr7EAaOk8QW5jMJ94eNm', '2019-05-21 20:58:08', '2019-05-21 20:58:08'),
(132, 1, 'w0zDK2iqPWQjmSEm05aOuyVLTEqTbaPw', '2019-05-21 20:58:33', '2019-05-21 20:58:33'),
(133, 1, '3bcxpD9n2jp8kZxXUHDDLXDLmoeF99H7', '2019-05-21 20:58:33', '2019-05-21 20:58:33'),
(134, 1, 'yObMwaNkHy88hWYL4K14hWcLz8Xi7C6j', '2019-05-21 20:58:33', '2019-05-21 20:58:33'),
(135, 1, 'JRCq8FGiVj53h2Q0SIvF2GLOUN9n64NI', '2019-05-21 20:58:38', '2019-05-21 20:58:38'),
(136, 1, 'dG2kvuBFqfynRRsJtqpmawNApU0UJIoJ', '2019-05-21 20:58:39', '2019-05-21 20:58:39'),
(137, 1, 'IjzrRzEwYNKO53My9OcxLeQImVMTgPeS', '2019-05-21 20:58:39', '2019-05-21 20:58:39'),
(138, 1, 'RlnNeDR1qgwz2DRbv46yENTepgFZ2puP', '2019-05-21 20:58:39', '2019-05-21 20:58:39'),
(139, 1, 'mYVX3UGYOlIyL4iiGvA5bWuNb7MASx3v', '2019-05-21 20:58:41', '2019-05-21 20:58:41'),
(140, 1, 'pzzkwDwmQcktuyUy53Laa4PwtjhLUCJV', '2019-05-21 20:58:41', '2019-05-21 20:58:41'),
(141, 1, 'ioPYSXIPAIHHBajeQMmq1vS1qXkxVgg1', '2019-05-21 21:00:14', '2019-05-21 21:00:14'),
(142, 1, '21XgPNjbsEhKzLO2mg5eH0kVg6EcMR5v', '2019-05-21 21:00:14', '2019-05-21 21:00:14'),
(143, 1, 'ngyBGJ7gcVvZejZrGoRRBywDOy9OnmSz', '2019-05-21 21:00:14', '2019-05-21 21:00:14'),
(144, 1, '4CKmFJgM4P6UWRf2TnLY8YxUpyUnRm62', '2019-05-21 21:00:14', '2019-05-21 21:00:14'),
(145, 1, 'r4233b0vS2cT0hb17NQEe30r22rJBoqh', '2019-05-21 21:00:39', '2019-05-21 21:00:39'),
(146, 1, 'IvyrWHWxH6rNvMB2GH9MQuoCIrLtSHwY', '2019-05-21 21:00:39', '2019-05-21 21:00:39'),
(147, 1, 'MzOczdxie7QO2KKOBOKOkcpNTcgPa8Lc', '2019-05-21 21:00:39', '2019-05-21 21:00:39'),
(148, 1, 'tS2pvxIkksnglC1K8kdKMAvrf8MpAVLn', '2019-05-21 21:00:39', '2019-05-21 21:00:39'),
(149, 1, '0Vrzc8iqG5wCO073pwhH6WfmA5SBgaV3', '2019-05-21 21:00:45', '2019-05-21 21:00:45'),
(150, 1, '1F16LtosSp9k8PXh6PpD7eCzwhpZYvHl', '2019-05-21 21:00:45', '2019-05-21 21:00:45'),
(151, 1, '0QJPyi9yHkuTFohxss08W6tgkjMHrZbc', '2019-05-21 21:01:36', '2019-05-21 21:01:36'),
(152, 1, 'LVK3kxSvgugcrExY9bmzwdNakDezHVyW', '2019-05-21 21:01:36', '2019-05-21 21:01:36'),
(153, 1, '9K8W4w2YLLVxCfnf7jl9srL4aMD57PoU', '2019-05-21 21:01:36', '2019-05-21 21:01:36'),
(154, 1, 'VFpWpej0Wp6knxNja5pg1ISpXUP6eb7N', '2019-05-21 21:01:37', '2019-05-21 21:01:37'),
(155, 1, 'pzebY8bl351xKsL517H3G6IHfltD8MN9', '2019-05-21 21:02:21', '2019-05-21 21:02:21'),
(156, 1, 'JkDSSGs02OwzVAnLpNLQAiyYxnMFZbhE', '2019-05-21 21:02:21', '2019-05-21 21:02:21'),
(157, 1, '7qOAUHlKqbvBCwuVxcey2QIPOkuiZaM0', '2019-05-21 21:02:21', '2019-05-21 21:02:21'),
(158, 1, 'WoUlWKfFqaXiqtp7EhuZHnXT8KrIHnZC', '2019-05-21 21:02:21', '2019-05-21 21:02:21'),
(159, 1, 'PMhXOZt8WLQ6fNilBlfrUtiTQIoNd7Wt', '2019-05-21 21:02:34', '2019-05-21 21:02:34'),
(160, 1, 'gmGzVt4ev6n3x1aS1yJXiWVFODYCSQeh', '2019-05-21 21:02:34', '2019-05-21 21:02:34'),
(161, 1, 'IokNZ964r1u4Dul8HVynEsRIEfJJ5BJd', '2019-05-21 21:02:34', '2019-05-21 21:02:34'),
(162, 1, '9kXknqjPJhnzbcQfmPVqKHZMo4hHrW79', '2019-05-21 21:02:34', '2019-05-21 21:02:34'),
(163, 1, '0tROoItdGWos75VfzvlbGGG60po25ziu', '2019-05-21 21:03:51', '2019-05-21 21:03:51'),
(164, 1, '9JRiLQBe5b2eDaS5kI9HsjXuPLc2XzSQ', '2019-05-21 21:03:51', '2019-05-21 21:03:51'),
(165, 1, 'piX5MdS5yTg1iiIErFBMgZMYyPlKU8i3', '2019-05-21 21:03:51', '2019-05-21 21:03:51'),
(166, 1, 'moSdWygB0nPPpsCPsz36L45zEvONFYnO', '2019-05-21 21:03:58', '2019-05-21 21:03:58'),
(167, 1, 'N1Y5a3sISmK3pKPnpsMLKtssawUZ02Ty', '2019-05-21 21:03:58', '2019-05-21 21:03:58'),
(168, 1, 'AAIInJhU6GN05s8pIFtaHihBodZAdexb', '2019-05-21 21:03:58', '2019-05-21 21:03:58'),
(169, 1, 'H55LLFrRAHbQY9XpKOfz5xt1OOWY6aPR', '2019-05-21 21:03:59', '2019-05-21 21:03:59'),
(170, 1, 'cmgblhBhGxOz8P9fE3zayefONbzXngo1', '2019-05-21 21:04:42', '2019-05-21 21:04:42'),
(171, 1, 'p4vINC9tiVmRa6dayTJ7u3njgCCQPmCc', '2019-05-21 21:04:42', '2019-05-21 21:04:42'),
(172, 1, 'r1LrMV2KR33BcKsF4j6bTuDrJ5l74Hrf', '2019-05-21 21:04:42', '2019-05-21 21:04:42'),
(173, 1, 'JH6gGEQl7YPXsseqWNMe76pqKqAlOW7J', '2019-05-21 21:04:42', '2019-05-21 21:04:42'),
(174, 1, 'p3Dr9j8uegZNXgVxxaUK6HWFAL1y5GRe', '2019-05-21 21:04:50', '2019-05-21 21:04:50'),
(175, 1, 'N7H5f3zDoGQYwdeThHb0pLxyhvyk5va6', '2019-05-21 21:04:50', '2019-05-21 21:04:50'),
(176, 1, 'rmsjoDKu873yMlpG67IXFLvI0iG2WSnD', '2019-05-21 21:05:33', '2019-05-21 21:05:33'),
(177, 1, 'd4TTuUsmB9n3IB9JvzqYGyqUK0X73utr', '2019-05-21 21:05:33', '2019-05-21 21:05:33'),
(178, 1, '5abUr7bGefIQZZagTnASm2VVHVDqq6Ci', '2019-05-21 21:05:33', '2019-05-21 21:05:33'),
(179, 1, 'vefJehikSNuEnpmpDKvchmNyyrdwm6qz', '2019-05-21 21:05:34', '2019-05-21 21:05:34'),
(180, 1, '7G967faWHVvHb0mXoweGA6Gxg9gHzuIA', '2019-05-21 21:05:35', '2019-05-21 21:05:35'),
(181, 1, '49iHCab62ytJEaV6HpgTnfRCBhvkvexK', '2019-05-21 21:05:35', '2019-05-21 21:05:35'),
(182, 1, 'LwKGpyxnZl7v6T0JgDI5hIQJAxE3KnaK', '2019-05-21 21:05:58', '2019-05-21 21:05:58'),
(183, 1, 'Ph107G3yDp9LgyWU5iyxz9bMnl4ok2r2', '2019-05-21 21:05:58', '2019-05-21 21:05:58'),
(184, 1, 'hXOGoLzTpYdjun6FeYM11twk5X7uQwXD', '2019-05-21 21:05:58', '2019-05-21 21:05:58'),
(185, 1, 'fKRpQ7lxhYmvd1MsVxNFgcWIUW22MBwT', '2019-05-21 21:05:58', '2019-05-21 21:05:58'),
(186, 1, 'FhReiQ5OY6DZBcHctG1ofUCVntvoMd8t', '2019-05-21 21:06:02', '2019-05-21 21:06:02'),
(187, 1, '4EiaJP5BqgQ6ci3FeYdnVGY50g7DHAfs', '2019-05-21 21:06:02', '2019-05-21 21:06:02'),
(188, 1, 'ipvFkDEufxtSMq0BoNJn6Rr2GuoBqajq', '2019-05-21 21:06:02', '2019-05-21 21:06:02'),
(189, 1, 'yxz0h8Xghq4xV3RP0PM47YCikuby9Vbs', '2019-05-21 21:06:03', '2019-05-21 21:06:03'),
(190, 1, 'UWV3pBdxZMmOLOZvs6gNYielxDa5HPan', '2019-05-21 21:06:05', '2019-05-21 21:06:05'),
(191, 1, 'kL1vPoTqcpv7JDkKOB6wkpMYTHvwOjEg', '2019-05-21 21:06:05', '2019-05-21 21:06:05'),
(192, 1, 'w8qt98DfQ1IQnxXcby6zyv5nEzkJqphi', '2019-05-21 21:07:03', '2019-05-21 21:07:03'),
(193, 1, 'nesdNmZxCOjWHiHQ4x5mwnD7DTlJE07a', '2019-05-21 21:07:03', '2019-05-21 21:07:03'),
(194, 1, 'DmIMDHuekWxzo5vTitvkbnaeIAs2CJCU', '2019-05-21 21:07:03', '2019-05-21 21:07:03'),
(195, 1, 'f08dlh5kloHvpO1rbd4lIAqnTr7CIHby', '2019-05-21 21:07:03', '2019-05-21 21:07:03'),
(196, 1, 'SjJzkrxggxBHkCeZANrHNzYqIzsAjeu8', '2019-05-21 21:07:30', '2019-05-21 21:07:30'),
(197, 1, 'AqN4eibaMq4RBDkkl4glxMxNJave4xa5', '2019-05-21 21:07:30', '2019-05-21 21:07:30'),
(198, 1, 'WcHLz8W6nfwCMgVpERAeNz653wy7eQfa', '2019-05-21 21:07:30', '2019-05-21 21:07:30'),
(199, 1, 'C81SGLmp00KGdT38RyeFZfc1yup7n7xg', '2019-05-21 21:07:30', '2019-05-21 21:07:30'),
(200, 1, 'Ml8kG1fAgFMzfEgaTEYaX7VyJKeeQx4i', '2019-05-21 21:07:32', '2019-05-21 21:07:32'),
(201, 1, '7tUBLG3wKb0ZEe5weNLxxP6CQriPEuQL', '2019-05-21 21:07:32', '2019-05-21 21:07:32'),
(202, 1, 'D9p5UrvQ6D1aDjqgdxURVl6Y0mhxCRIl', '2019-05-21 21:07:48', '2019-05-21 21:07:48'),
(203, 1, 'f79nyCo8J5WqjQOUJVNl1mS6TS9cuPA4', '2019-05-21 21:07:48', '2019-05-21 21:07:48'),
(204, 1, '0Gq2rJhiGAp7hsL3gr2GRtpasaHVUBw7', '2019-05-21 21:07:48', '2019-05-21 21:07:48'),
(205, 1, 'eAyYtMVShxKXHhVDeEBW3z1lff5jfroJ', '2019-05-21 21:07:49', '2019-05-21 21:07:49'),
(206, 1, '6mzQlkG9Oxwsj6bYehnRJNgPMmr3GYma', '2019-05-21 21:07:52', '2019-05-21 21:07:52'),
(207, 1, 'pkBovrYl9fi7LxYwPWY5zfloQ2X3K6AO', '2019-05-21 21:07:52', '2019-05-21 21:07:52'),
(208, 1, '7X9J7UMtKzBEhXhMKIBvf5sIRKJE3b9s', '2019-05-21 21:08:50', '2019-05-21 21:08:50'),
(209, 1, 'WJ24O1AwkYlP3ujMvhh13Qi4fYjRLqQN', '2019-05-21 21:08:50', '2019-05-21 21:08:50'),
(210, 1, 'I0e2aMLGrt2yGVnHcowAcd0fW0HebT1F', '2019-05-21 21:08:50', '2019-05-21 21:08:50'),
(211, 1, '9blrCAz6UsRS4OFAIBl93rF3JljuihdJ', '2019-05-21 21:08:51', '2019-05-21 21:08:51'),
(212, 1, 'HpYMpONX8LadexteIMTWfIMtg17bN3VL', '2019-05-21 21:08:51', '2019-05-21 21:08:51'),
(213, 1, 'YcXxioyhpOXToZV6GOMEGGFHwFGnrRGP', '2019-05-21 21:08:52', '2019-05-21 21:08:52'),
(214, 1, 'JWlj9YFDLovSbdBOBakjRzE4sCJpAkxb', '2019-05-21 21:10:11', '2019-05-21 21:10:11'),
(215, 1, 'qnarhZeLFgrYA3AATRYxBosx3G8APOME', '2019-05-21 21:10:11', '2019-05-21 21:10:11'),
(216, 1, '6M90sIDiHguR0grXvQHubhHA8LGc9Ru6', '2019-05-21 21:10:12', '2019-05-21 21:10:12'),
(217, 1, 'F3OHo1KX1tAQksUdMypZ6x8sdDZ2TUpe', '2019-05-21 21:10:12', '2019-05-21 21:10:12'),
(218, 1, 'LpRgWgFsO3V5TLQg5p6thVfuxf85WNIL', '2019-05-21 21:10:28', '2019-05-21 21:10:28'),
(219, 1, 'NMGhGH8F9HNn3RwlAlCMxEiqtLnjzRcX', '2019-05-21 21:10:28', '2019-05-21 21:10:28'),
(220, 1, 'rDUWr3FxUoygOY3jKzxLO0cuAoVHZnUu', '2019-05-21 21:10:29', '2019-05-21 21:10:29'),
(221, 1, 'bXBTyiRAIDqm0zEN9iwxx65mCvoJesIu', '2019-05-21 21:10:29', '2019-05-21 21:10:29'),
(222, 1, 'zQUGHttifboSXwLMWXwnMBSI0f8lJuIm', '2019-05-21 21:10:32', '2019-05-21 21:10:32'),
(223, 1, 'aNDxBCf9cuRdaja8KXMW6l9wvm3D85U3', '2019-05-21 21:10:32', '2019-05-21 21:10:32'),
(224, 1, 'J09BfdDXulYl4S5wdnnQu3NZwcqQUXMu', '2019-05-21 21:10:33', '2019-05-21 21:10:33'),
(225, 1, 'ovQw2qmik5l5MDga786rVGza92HwQ2MU', '2019-05-21 21:10:33', '2019-05-21 21:10:33'),
(226, 1, 'vIEevrJIF7teF48zqEJNWGoj4hlgPaMZ', '2019-05-21 21:10:35', '2019-05-21 21:10:35'),
(227, 1, 'fxo4tgsipLgocQ7C9OFegz4opOKZuB6m', '2019-05-21 21:10:35', '2019-05-21 21:10:35'),
(228, 1, '9WVSZIDMu4fmvJUSMlNkQCnyA75B7OCp', '2019-05-21 21:11:06', '2019-05-21 21:11:06'),
(229, 1, 'SH49blX662jvXU1qEUW8szp1o6D4DVk9', '2019-05-21 21:11:06', '2019-05-21 21:11:06'),
(230, 1, 'xdxXO2b8pKgb2jcQZ0OajOcjtzyWfZDY', '2019-05-21 21:11:06', '2019-05-21 21:11:06'),
(231, 1, 'tWsMDQMIyEgONyBZJJqgttU909Dh9XGz', '2019-05-21 21:11:07', '2019-05-21 21:11:07'),
(232, 1, 'oACHvRCCB2gTnvHdCcYujs6CScgjUipC', '2019-05-21 21:11:10', '2019-05-21 21:11:10'),
(233, 1, 'q4ujD5CT4YuoSp1gyNDIYiERofHAZJz0', '2019-05-21 21:11:10', '2019-05-21 21:11:10'),
(234, 1, 'auGEpSm1AmBZy555DJEashz2YMKJU0an', '2019-05-21 21:11:48', '2019-05-21 21:11:48'),
(235, 1, '4o6pVHNISwxgR1t3yRhtoML9F5KGXBGR', '2019-05-21 21:11:48', '2019-05-21 21:11:48'),
(236, 1, 'fCGleDvLTQWQ9qmL05gZb4LOFP36JSti', '2019-05-21 21:11:48', '2019-05-21 21:11:48'),
(237, 1, 'yZeI6CC3feC1uVV79Zexm4RtxGmwzv9u', '2019-05-21 21:11:49', '2019-05-21 21:11:49'),
(238, 1, 'N04cBiPSS2YGsWNxSGXcN9szRIZDARfs', '2019-05-21 21:11:50', '2019-05-21 21:11:50'),
(239, 1, 'uuUWhGO2rm1SsRSzUcogmY7pUlgJAYQ6', '2019-05-21 21:11:50', '2019-05-21 21:11:50'),
(240, 1, '4yk2x8sns0rAE4uImhIzvWCQHYO1qo0Y', '2019-05-21 21:12:39', '2019-05-21 21:12:39'),
(241, 1, '7tfEfonvxmL5WG7Jf1l5iCWgPv8jaPvo', '2019-05-21 21:12:39', '2019-05-21 21:12:39'),
(242, 1, 'I6QOmo1sjrTOAYmtLSjMRxqC02K19q3H', '2019-05-21 21:12:39', '2019-05-21 21:12:39'),
(243, 1, 'CPbXzwHSPIvb2q5g1uWNjr33gTdTM1jN', '2019-05-21 21:12:39', '2019-05-21 21:12:39'),
(244, 1, 'UegLLSwlwj8oeSrCZnfYywOeBRXgbeVs', '2019-05-21 21:12:42', '2019-05-21 21:12:42'),
(245, 1, 'GjKzS9zpfbvc7lOVwzfoJv0bITJgwqey', '2019-05-21 21:12:43', '2019-05-21 21:12:43'),
(246, 1, 'y8HuO3mZeiPgIilyBIXmCVur7hV5vzOH', '2019-05-21 21:13:15', '2019-05-21 21:13:15'),
(247, 1, '1X5XXZjAWYjKqbu3tXb2FmYwKLr3L8m2', '2019-05-21 21:13:15', '2019-05-21 21:13:15'),
(248, 1, 'LnGVUNg3fP80nKKylseY2OFlWBvkzMDF', '2019-05-21 21:13:16', '2019-05-21 21:13:16'),
(249, 1, '2lAik4oXtZOUWkIF2afW8wtXCg5RUYta', '2019-05-21 21:13:16', '2019-05-21 21:13:16'),
(250, 1, 'IUcE2Wdr2b8sfQHzk339sNWPubc7YWA2', '2019-05-21 21:13:18', '2019-05-21 21:13:18'),
(251, 1, 'tVmwJWSQs8oab3xlxzyb9IqmyBobiKP8', '2019-05-21 21:13:18', '2019-05-21 21:13:18'),
(252, 1, 'ZTCb3I9QysEOFXpuSaRJn6gNS1eb5EGK', '2019-05-21 21:14:03', '2019-05-21 21:14:03'),
(253, 1, 'rwRdyS67Kgtn4mDHPfmNFYVGYTzjuQMg', '2019-05-21 21:14:03', '2019-05-21 21:14:03'),
(254, 1, 'aNZHXf0chUG5iFUJYCxybqbTpPSoJcYw', '2019-05-21 21:14:03', '2019-05-21 21:14:03'),
(255, 1, 'FZzYwUlgthK41dEUCMwfUOXraZzFryNt', '2019-05-21 21:14:03', '2019-05-21 21:14:03'),
(256, 1, '9W5dCoU3iTb9qFC539ibSwth7dALncWR', '2019-05-21 21:14:06', '2019-05-21 21:14:06'),
(257, 1, 'jL84kmfioWzTBvm3325wDwXBIOk6pGBH', '2019-05-21 21:14:06', '2019-05-21 21:14:06'),
(258, 1, '17WGyKJcZXsKFxWtzTZBrLqcbviUTv40', '2019-05-21 21:14:41', '2019-05-21 21:14:41'),
(259, 1, '4Bd4IObJdHkaV8V5zTrlpqvTnDOmh326', '2019-05-21 21:14:41', '2019-05-21 21:14:41'),
(260, 1, 'FMKW1vsXDrRiRju70vyFmK7JtWcSEl0K', '2019-05-21 21:14:41', '2019-05-21 21:14:41'),
(261, 1, 'DliRkaObkLgbcje3nHoqkHw1VG2VZ7Ab', '2019-05-21 21:14:42', '2019-05-21 21:14:42'),
(262, 1, 'RVKcDd6bggzxtcsQ2OCDdgdSLJd7ADoe', '2019-05-21 21:14:45', '2019-05-21 21:14:45'),
(263, 1, 'oR93C9MqbFzi2HjSK4x8HxOzZF1xFAZX', '2019-05-21 21:14:45', '2019-05-21 21:14:45'),
(264, 1, 'q5Ac5jSJrQjy7e83bdYIKDPWdnmQIDXu', '2019-05-21 21:15:57', '2019-05-21 21:15:57'),
(265, 1, 'TDEuo7j8QHfcykVg5AQEbtA22yPkiyCb', '2019-05-21 21:15:58', '2019-05-21 21:15:58'),
(266, 1, 'Lq5Bxs3sQ8LHBXCR9iTQma3mtpT1amhq', '2019-05-21 21:15:58', '2019-05-21 21:15:58'),
(267, 1, 'xz8RtIklOWAqwmTvNqeALBb1U5d9CAcS', '2019-05-21 21:15:58', '2019-05-21 21:15:58'),
(268, 1, 'kmBsrulq2iL7K8lb3c6UaJ7L56e3PukH', '2019-05-21 21:15:59', '2019-05-21 21:15:59'),
(269, 1, '95zvJKc3zFlnIigksAtFSj2FXEGNndcg', '2019-05-21 21:16:00', '2019-05-21 21:16:00'),
(270, 1, '0vTgvGNV1OF2JYqql5CWZxB6ny4IejgK', '2019-05-21 21:16:59', '2019-05-21 21:16:59'),
(271, 1, 'ReTjmyqsyfaWMlxA5g97LQ6L9vxDq0T2', '2019-05-21 21:16:59', '2019-05-21 21:16:59'),
(272, 1, '9X3jRa8TNLCQS342pLSQLpcDxqD5mdIZ', '2019-05-21 21:17:00', '2019-05-21 21:17:00'),
(273, 1, 'TpSuSny7xK6kbYVhA6WR4jw9fSiWwOc5', '2019-05-21 21:17:00', '2019-05-21 21:17:00'),
(274, 1, 'sh0oTGzHl98dPrF6nanPJcC5axrvWPWT', '2019-05-21 21:17:05', '2019-05-21 21:17:05'),
(275, 1, 'iWgA7ILev2qVcFNCPi3qKuZLyRTgndCE', '2019-05-21 21:17:05', '2019-05-21 21:17:05'),
(276, 1, '59IJOVK473En7xWz1b56GBBOEG6VGAa8', '2019-05-21 21:17:43', '2019-05-21 21:17:43'),
(277, 1, 'oDJJktUZHoPFWhoLAR0XqeXIE9MnCJhq', '2019-05-21 21:17:43', '2019-05-21 21:17:43'),
(278, 1, '9Uji0MZcUdQhOBNCH8bQWZazuZNd37FH', '2019-05-21 21:17:43', '2019-05-21 21:17:43'),
(279, 1, 'pcQ0tWfnBQkfkCnYo1JlJYNXZbYlpuy3', '2019-05-21 21:17:43', '2019-05-21 21:17:43'),
(280, 1, 'cspRTXcmlmpfvyjWjnw59qE0n1gH5bnM', '2019-05-21 21:17:47', '2019-05-21 21:17:47'),
(281, 1, 'I4qrQp6xovbTFLwrqxf5opu9Xp0Aou3k', '2019-05-21 21:17:47', '2019-05-21 21:17:47'),
(282, 1, 'bhlPLq8FcSpbpE76aGztngfeMXeUCnCj', '2019-05-21 21:18:48', '2019-05-21 21:18:48'),
(283, 1, '7PkiqcBtweKb4rXvr0kVQojgxHoTPrdy', '2019-05-21 21:18:48', '2019-05-21 21:18:48'),
(284, 1, 'CHVNQH9zu13b0fd7qjSWyLfk4nGEhSy4', '2019-05-21 21:18:48', '2019-05-21 21:18:48'),
(285, 1, 'MwpjXB0P1REdTgCnoONy2xlFie55qDuH', '2019-05-21 21:18:48', '2019-05-21 21:18:48'),
(286, 1, 'ttsFXyMoKjCRew1l8wDaxFZAH27kleKj', '2019-05-21 21:18:49', '2019-05-21 21:18:49'),
(287, 1, '6h7AefngcSUJEor4ohHkQo8a6FXjJuTO', '2019-05-21 21:18:49', '2019-05-21 21:18:49'),
(288, 1, '4vxiBVQ3vJ75rZD4LMAXborIXEdbrAmb', '2019-05-21 21:21:16', '2019-05-21 21:21:16'),
(289, 1, 'WuTtmlDV0giMGRZwNvoKhc8LO6tSFniW', '2019-05-21 21:21:16', '2019-05-21 21:21:16'),
(290, 1, 'L6Yhd6nAMTuHwRqPQlWaIGwTMdyhdXzv', '2019-05-21 21:21:16', '2019-05-21 21:21:16'),
(291, 1, '1VVPtokVrTUxiLEbGzHAaic5RgKuwJdY', '2019-05-21 21:21:16', '2019-05-21 21:21:16'),
(292, 1, 'ozYsTLRqhOnztCGVHk5pSArhk99YdAPi', '2019-05-21 21:21:30', '2019-05-21 21:21:30'),
(293, 1, 'M4Pd0htgN4HmsNpLFlHJDXcPl7G8FlFy', '2019-05-21 21:21:30', '2019-05-21 21:21:30'),
(294, 1, '0QVYg10Isp5Uqrw5jypP88gT8WibDt6n', '2019-05-21 21:39:20', '2019-05-21 21:39:20'),
(295, 1, 'KoXrxgU9WjOsqt2VhtULjUwlLDRpQezx', '2019-05-21 21:39:20', '2019-05-21 21:39:20'),
(296, 1, 'vrVVP8snExLjGUHPLfXxTBGwh4XG2fMQ', '2019-05-21 21:42:46', '2019-05-21 21:42:46'),
(297, 1, '3ZyD0v2jIqfLitEY0BcE2vfbLsW16Rgu', '2019-05-21 21:42:46', '2019-05-21 21:42:46'),
(298, 1, '2bTBb8fdPeTneLwDimWGH3le2FpZ9hW4', '2019-05-21 21:42:46', '2019-05-21 21:42:46'),
(299, 1, 'mRKHz1hlHQWZHSTFzoEdDRuqmsdanRqj', '2019-05-21 21:42:47', '2019-05-21 21:42:47'),
(300, 1, 'LuZERxzZCo1JF4EOP5aBODrbXdXlVQgv', '2019-05-21 21:49:23', '2019-05-21 21:49:23'),
(301, 1, '8IK3BILcwVTVt5t6YRWaLxwpW4qHneq2', '2019-05-21 21:49:23', '2019-05-21 21:49:23'),
(302, 1, 'mrH6MSL7tK8N8XaDtmPWMaMl1DeAXqoK', '2019-05-21 21:53:43', '2019-05-21 21:53:43'),
(303, 1, 'Q6gTYa4Um92dSgbGLgAaIcZcXTz3INzh', '2019-05-21 21:53:43', '2019-05-21 21:53:43'),
(304, 1, 'ppZ3FiUrRWXErsXfSsKVU7eEIa4qALg5', '2019-05-21 21:53:43', '2019-05-21 21:53:43'),
(305, 1, 'zP9Xp9dObWrQWZfrujnhm3zNxjBEtsPA', '2019-05-21 21:53:43', '2019-05-21 21:53:43'),
(306, 1, 'MfGg8Njh9BJmJSw6hP0trXq4RtGtBOWP', '2019-05-21 21:54:08', '2019-05-21 21:54:08'),
(307, 1, 'hn0WmRYy9XM3id0TB1eVu2TjDDHPeL8a', '2019-05-21 21:54:08', '2019-05-21 21:54:08'),
(308, 1, 'yhiFJpT0nVR33m6HBfXvaJFBLN9E3O1P', '2019-05-21 21:54:08', '2019-05-21 21:54:08'),
(309, 1, 'PqWZjHBiTtofbLvAZtZBFEZ60KdNhMib', '2019-05-21 21:54:08', '2019-05-21 21:54:08'),
(310, 1, 'aWRRXL0Wopks9Kr57jSc562jQ2R3bCvj', '2019-05-21 21:54:11', '2019-05-21 21:54:11'),
(311, 1, 'NJh6Jmfhn3TK2TlsdFWr2Q5tVNdceJNf', '2019-05-21 21:54:11', '2019-05-21 21:54:11'),
(312, 1, 'gwfxM7PPJvEIcRDsXPMBbZpMGUw8e9Z2', '2019-05-21 21:56:04', '2019-05-21 21:56:04'),
(313, 1, 'W9PCSl9p5R3s51u2QpcchcfDofU95jmN', '2019-05-21 21:56:04', '2019-05-21 21:56:04'),
(314, 1, 'bvDMyDAfUEA6y7c87tKVQmoSX15ZsVAH', '2019-05-21 21:56:04', '2019-05-21 21:56:04'),
(315, 1, '2RATKUkV1EpvVSUCCUPZZO1Dzl2D2NHj', '2019-05-21 21:56:04', '2019-05-21 21:56:04'),
(316, 1, 'T3vTPMI12SrKWXvFkYLxirhlyjNQQZFK', '2019-05-21 21:56:05', '2019-05-21 21:56:05'),
(317, 1, 'DbkbizydvP7NWmfZrk7IdBdwGp6WB8dq', '2019-05-21 21:56:05', '2019-05-21 21:56:05'),
(318, 1, 'Cj2UXMlqqNZr2gqWdAE8bmsW6O4xRdHG', '2019-05-21 21:57:51', '2019-05-21 21:57:51'),
(319, 1, 'SraDmpuZm74VOBs1uYfPNUMeHxnxGgP1', '2019-05-21 21:57:51', '2019-05-21 21:57:51'),
(320, 1, 'jT6ftk626ZL7CmnT8fPmyz7PmmkAh3xV', '2019-05-21 21:57:51', '2019-05-21 21:57:51'),
(321, 1, 'sQa9SWH6sdlLQzmTf7ywfPCDB91OMM4P', '2019-05-21 21:57:52', '2019-05-21 21:57:52'),
(322, 1, '96A4VZwgYjPj7PaDsdsRtb4S5oOMi1mk', '2019-05-21 21:58:25', '2019-05-21 21:58:25'),
(323, 1, 'ZdUzGrFw8jlcGz37KR63zqmd4VahLRT4', '2019-05-21 21:58:25', '2019-05-21 21:58:25'),
(324, 1, 'sypPeQb4z0Y0jX8scav0L8j5K7LEFg3i', '2019-05-21 21:58:25', '2019-05-21 21:58:25'),
(325, 1, '4fOkl44GjV0t7svS08yFGTNPZTYOyziQ', '2019-05-21 21:58:25', '2019-05-21 21:58:25'),
(326, 1, 'wGOUWvW8NwVfcEGnhPP3pu5l3wI2ussW', '2019-05-21 21:58:25', '2019-05-21 21:58:25'),
(327, 1, 'FThE518rajxkmZiWI0TGgoiGp5hIJGcC', '2019-05-21 21:58:26', '2019-05-21 21:58:26'),
(328, 1, 'RHbvnIi0MbB3hMcthmZaaqgqBqYI8C7T', '2019-05-21 22:02:27', '2019-05-21 22:02:27'),
(329, 1, 'K1PNQFNSwJ6LoUgdGmFYvTfNWHOimzl7', '2019-05-21 22:02:27', '2019-05-21 22:02:27'),
(330, 1, 'zqdHruff5a9GogSh4BvrRFON5Nm7wuRc', '2019-05-21 22:10:05', '2019-05-21 22:10:05'),
(331, 1, 'rfmajHHgM4RoHc6Jmr3JxyjFtArLn48Q', '2019-05-21 22:10:05', '2019-05-21 22:10:05'),
(332, 1, 'sRc4h9rGYq3spGUIkRvTGMsJKvAeISvl', '2019-05-21 22:16:35', '2019-05-21 22:16:35'),
(333, 1, '1FRzNco0HPaYrT7Bk60Zrv1EjKk676hP', '2019-05-21 22:16:36', '2019-05-21 22:16:36'),
(334, 1, 'lHfSGNhqoQ7QJE2iFcgnOwiq8q3pdSWG', '2019-05-21 22:18:47', '2019-05-21 22:18:47'),
(335, 1, 'WIRhFhZLe4NyIpcCuY1ilWBpUmROl1vB', '2019-05-21 22:24:02', '2019-05-21 22:24:02'),
(336, 1, 'igFwBrBlmqzAgzjPbL2K1JAW4T80OsPb', '2019-05-21 22:24:03', '2019-05-21 22:24:03'),
(337, 1, 'VFLxj5NiM9MJDI3qIsGYM2mAT2WBdaLB', '2019-05-21 22:24:03', '2019-05-21 22:24:03'),
(338, 1, 'JthX9q4p9nVMe98gYDVlDXTdGTELarJo', '2019-05-21 22:24:03', '2019-05-21 22:24:03'),
(339, 1, 'NBfmhPDY455sXhz4vWvTQ630HBpcDTf7', '2019-05-21 22:24:05', '2019-05-21 22:24:05'),
(340, 1, 'aKjaNRt7P4yndC9EY8HZnme0l7JsuSNy', '2019-05-21 22:24:05', '2019-05-21 22:24:05'),
(341, 1, 'OPE6m6KbpzAcMq0F653odd0AEESO8AhI', '2019-05-21 22:25:29', '2019-05-21 22:25:29'),
(342, 1, 'OOchhli7qTTBOkuHGXrXbRbq8hqlZDlP', '2019-05-21 22:25:29', '2019-05-21 22:25:29'),
(343, 1, '3Nsj8SEfkDtSGHnWPThb9ycZqkTQYCUl', '2019-05-21 22:25:29', '2019-05-21 22:25:29'),
(344, 1, 'xThrXtpJiJbFudYTq3IdMWPC8fP1APbd', '2019-05-21 22:25:30', '2019-05-21 22:25:30'),
(345, 1, 'LMAbYuV8LUpWfjSBPA51JDQYglqSP4rI', '2019-05-21 22:25:57', '2019-05-21 22:25:57'),
(346, 1, '4gmpylOG1bv6sSIG8nZ5Y2jTeJhtYHNy', '2019-05-21 22:25:58', '2019-05-21 22:25:58'),
(347, 1, '65ZafeaYdJ1R8X7Z1p2TFSOTtqQgKAaH', '2019-05-21 22:34:37', '2019-05-21 22:34:37'),
(348, 2, 'Pv5jX5QJA7lzAhVZg4ayu0paDBxf0fxz', '2019-05-21 22:37:08', '2019-05-21 22:37:08'),
(349, 2, 'txHgmou8tBxOyZ9K0DvnduSNFls7UbLQ', '2019-05-21 22:37:33', '2019-05-21 22:37:33'),
(350, 1, 'PL6jTzcUcFuS4XOBqsxz7UVBI7wJWYZx', '2019-05-21 22:54:23', '2019-05-21 22:54:23'),
(351, 1, 'EdJC2mljsjGvoCjza0ETdvZfPBxNk8xj', '2019-05-21 22:54:23', '2019-05-21 22:54:23'),
(352, 1, 'vvxoHKUoYtNmYahWRe95XQzxzoE7ZBfu', '2019-05-21 22:54:26', '2019-05-21 22:54:26'),
(353, 1, 'ByD0iaQyIFca9itwspFk7jOkBRX3ZxZn', '2019-05-21 22:54:27', '2019-05-21 22:54:27'),
(354, 1, 'Wsg4H6M51zCOFn26Fz9qFO5i11XU9QcE', '2019-05-21 22:54:36', '2019-05-21 22:54:36'),
(355, 1, 'FkmSMkr3aFFmPpOW7q8hupykOpuSqsr1', '2019-05-21 22:54:36', '2019-05-21 22:54:36'),
(356, 2, 'UeOc3KFTU7uvVoTHjkxa1JZR8wlvR9eY', '2019-05-21 22:55:13', '2019-05-21 22:55:13'),
(357, 2, '4lLix9y4am8ojNb1lu6cCFirLvWWGJOt', '2019-05-21 22:55:22', '2019-05-21 22:55:22'),
(358, 2, 'lxyLIo3tHd6We6PThTbOHENsdjZ9EkxY', '2019-05-21 22:58:08', '2019-05-21 22:58:08'),
(359, 2, 'nu1EBcDkyHyanhdkMOsViNDLiCbuzze3', '2019-05-21 23:01:46', '2019-05-21 23:01:46'),
(360, 1, 'j2QYBWRyLVpuHGD1o8oUn0mbXYRQrnyr', '2019-05-21 23:02:20', '2019-05-21 23:02:20'),
(361, 1, 'cdJmiLEA27yVGCSjOeEKqRdzO62bJBwr', '2019-05-21 23:02:20', '2019-05-21 23:02:20'),
(362, 1, 'oC1GJ617pTOTiUkMaUCLUFm6S33yKmT8', '2019-05-21 23:02:22', '2019-05-21 23:02:22'),
(363, 1, 'bmIEndZPQP5Y4uh3cFto5IIWGfGQAUV1', '2019-05-21 23:02:22', '2019-05-21 23:02:22'),
(364, 2, 'vXAcoySWcfU7aFzfEU0XqcnIfUlUm7vP', '2019-05-21 23:02:51', '2019-05-21 23:02:51'),
(365, 2, 'DuZmJtiiPxWi7u2aRBYaAqmwrKILmIaY', '2019-05-21 23:03:23', '2019-05-21 23:03:23'),
(366, 2, 'P2ZnyVxmHwo6W1HJoyjWLP1l4LQke7R3', '2019-05-21 23:04:17', '2019-05-21 23:04:17'),
(367, 1, 'QuC9ami1PMkiZESXF2Jc5O8jxkuqelmZ', '2019-05-21 23:06:04', '2019-05-21 23:06:04'),
(368, 1, 'JEVScaiO0WgghWIbovJWZQbvMiuGkdtL', '2019-05-21 23:08:28', '2019-05-21 23:08:28'),
(369, 1, 'Y5PHPmdiC96ImaPAD5OWRUg0uTx9204D', '2019-05-21 23:08:28', '2019-05-21 23:08:28'),
(370, 2, 'qXbYszyA0gZhOwdguNWjkeiyGWuNJieT', '2019-05-21 23:16:53', '2019-05-21 23:16:53'),
(371, 2, 'wXbb1cnF2CLYykbTd0P6Jf3QvIMVIFNi', '2019-05-21 23:23:36', '2019-05-21 23:23:36'),
(372, 2, '1EZoAmZpLtwasoFBZbySUWzpZWrREUC2', '2019-05-21 23:24:08', '2019-05-21 23:24:08'),
(373, 1, '7mp7V6nTr7D1FJgTABWHTk6Wo4ybwDc0', '2019-05-21 23:27:34', '2019-05-21 23:27:34'),
(374, 1, 'Fj8ClGvbm63UvmP641dh12qyLoMMy98a', '2019-05-21 23:27:34', '2019-05-21 23:27:34'),
(375, 1, 'pfQ84mCbmg9pINygZ7FQK3O0n11IhyD6', '2019-05-21 23:27:34', '2019-05-21 23:27:34'),
(376, 1, '1kMqO3IJayBgUcKjKFe19KNuz8ufqH1n', '2019-05-21 23:27:34', '2019-05-21 23:27:34'),
(377, 2, 'HAovD7rRfLycINbMtaFeRoIv3xLh5fz1', '2019-05-21 23:30:29', '2019-05-21 23:30:29'),
(378, 2, 'fItV4p8KYvd9URpSnUbOB3S5z6UdcQBe', '2019-05-21 23:30:29', '2019-05-21 23:30:29'),
(379, 2, '2QBjpnyUXiggbqlTi9yZgP15XiYR9yhn', '2019-05-21 23:31:10', '2019-05-21 23:31:10'),
(380, 2, 'CAnWaAKPmcFb31f81U22esh6JE15tHcm', '2019-05-21 23:31:12', '2019-05-21 23:31:12'),
(381, 2, 'bQfSlzH1wc4Szfk6xGeuo1ACn0hO6GSR', '2019-05-21 23:31:13', '2019-05-21 23:31:13'),
(382, 2, 'qX3iLSF7lNoyd2SdYW6DpskHR8xQxi89', '2019-05-21 23:31:37', '2019-05-21 23:31:37'),
(383, 2, 'njtpa8N58eLD1SoE6eBDObyFWLXqAzjd', '2019-05-21 23:34:58', '2019-05-21 23:34:58'),
(384, 2, 'yBf2FIqWzZvY3FFlvCNnIJkvUMAh1Ccy', '2019-05-21 23:36:00', '2019-05-21 23:36:00'),
(385, 2, 'TmSQCtxxfW1OFfWqb7hkZVYrCt6O7hBK', '2019-05-21 23:42:40', '2019-05-21 23:42:40'),
(386, 2, '5y9hb26SUegTBlAzBvNOblJSIt6fmpAH', '2019-05-21 23:42:57', '2019-05-21 23:42:57'),
(387, 2, 'ptPnDzV6DGCfBuHKIwyynf5XcY7RLDOz', '2019-05-21 23:43:16', '2019-05-21 23:43:16'),
(388, 2, '85aD1P6FNbSgHT7ofxe9E1Yd1t2zwSVF', '2019-05-21 23:43:41', '2019-05-21 23:43:41'),
(389, 2, 'p80sn068nXTLEo54y2ia3uIfgtOCZG54', '2019-05-21 23:45:35', '2019-05-21 23:45:35'),
(390, 2, 'uipi1ARg8FpkTfPmGN24fa4tkDT9qjlR', '2019-05-21 23:45:36', '2019-05-21 23:45:36'),
(391, 2, 'g7aptjd2X6sKpajYkT0nnvzrrz4BGmyM', '2019-05-21 23:46:21', '2019-05-21 23:46:21'),
(392, 1, 'UthMkMm0NeEa66KnM9v4SSWTCn7mjbER', '2019-05-21 23:59:01', '2019-05-21 23:59:01'),
(393, 1, 'R1trtxlJ8JyMZWgGkoWKhS2lZKHSnfd3', '2019-05-21 23:59:01', '2019-05-21 23:59:01'),
(394, 2, 'KEjrTgruFAYdY5riXzpi2RfAHebLj1E6', '2019-05-21 23:59:40', '2019-05-21 23:59:40'),
(395, 2, 'DD9k05qF6CFCjydW5fVitdreUt5SledG', '2019-05-21 23:59:40', '2019-05-21 23:59:40'),
(396, 2, '13alKkwtEEqnaPT6kZNQFSf51y7FmFGw', '2019-05-22 00:00:29', '2019-05-22 00:00:29'),
(397, 2, 'LUnHZXteAnYtg7qDnvNXWxRPbR2G4Vkx', '2019-05-22 00:00:30', '2019-05-22 00:00:30'),
(398, 2, 'dRvuNrabsuJerGcMnAlohFXddPizTN32', '2019-05-22 00:16:19', '2019-05-22 00:16:19'),
(399, 2, 'oI1sTSkorWOPsGWbk351Io0TTmpN1Xfp', '2019-05-22 00:17:50', '2019-05-22 00:17:50'),
(400, 2, 'PRNaHg06e0lwzRttWVjBw1qG4Ki3Qpen', '2019-05-22 00:18:14', '2019-05-22 00:18:14'),
(401, 2, '5DKaJfZ025FryyGDHgkXnKScUxojnyjj', '2019-05-22 00:18:17', '2019-05-22 00:18:17'),
(402, 2, 'VvHg3w7IFCbJrq3sCVy1Z07LncR5cSKv', '2019-05-22 00:18:28', '2019-05-22 00:18:28'),
(403, 2, 'rryrJikprrfTn7shdDiHNfk5GNG7ieyr', '2019-05-22 00:25:21', '2019-05-22 00:25:21'),
(404, 2, 'jVrizMIVU0JYuJkMlwvXUUqULI1c6TPM', '2019-05-22 00:25:21', '2019-05-22 00:25:21'),
(405, 2, 'Kw4dILjAbRr40lXdHopn1addc2VGaN2F', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(406, 2, 'oYCfNnRZjc45nBU3pnrElXERpDVoogIO', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(407, 2, '8vFss3EogQaidopUSdB3ZnekGn45UpHy', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(408, 2, 'swvnWRnqs79viTG6uICi6XJJ3njEeLml', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(409, 2, 'w6bQQnjeYzt4knSy0PYpYscryvpw20bE', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(410, 2, 'R5WZxep6GfQ8RPE2KOFIjQyx6Mk753Qa', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(411, 2, 'KOnkjkVJ9gguXD15KIKxucWCHWrdmFya', '2019-05-22 00:25:22', '2019-05-22 00:25:22'),
(412, 2, '7YL1elT7eZ9DT7s9bvJMJjIfFuPyeb23', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(413, 2, 'H7bVIke4ZEnM7MBTL0BLUapw43j64pJT', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(414, 2, 'Ag0qj6k2hdzvGBjWBjMltGdPmBrULxfQ', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(415, 2, 'u3zeJuH21iBft7nXiVsHEHmK4PHcWOt6', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(416, 2, 'dkayCTs8e2ODNr6LB8DTFXn8NjmkV3MQ', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(417, 2, 'pNUvU3sgiiR9fXCbELk650vjke8MH1VD', '2019-05-22 00:25:23', '2019-05-22 00:25:23'),
(418, 2, 'fQaA4IK9UPi0GC78MD8bk5Q0ku0jaGPU', '2019-05-22 00:25:24', '2019-05-22 00:25:24'),
(419, 2, 'Da1MxwEgZEA53iIrIj8K4JIoVq6LHzJj', '2019-05-22 00:25:24', '2019-05-22 00:25:24'),
(420, 2, 'C2OJf8f4v8cDQhFrtunYxoaB1DRnZkZe', '2019-05-22 00:25:24', '2019-05-22 00:25:24'),
(421, 2, 'hgMuUEoU5dUlUacZlqHVse1hNsZJ1dD9', '2019-05-22 13:55:28', '2019-05-22 13:55:28'),
(422, 2, 'lPFPnokQXiUPK2xezGlrxeC8b6ki3383', '2019-05-22 13:56:08', '2019-05-22 13:56:08'),
(423, 2, 'WDsqiueFlBlZgfwcIOed3FYkd21c8cbC', '2019-05-22 14:08:25', '2019-05-22 14:08:25'),
(424, 2, 't68vetQlJSEXTRLM2vPDPnvRrYY7YuDp', '2019-05-22 14:08:25', '2019-05-22 14:08:25'),
(425, 2, 'gzAaLZzAA5W5HEviFSNKO7HASkHZqkQO', '2019-05-22 14:08:34', '2019-05-22 14:08:34'),
(426, 2, '76Mfs4JowbOUiyxXPO79OM5Y4eHUzbub', '2019-05-22 14:08:38', '2019-05-22 14:08:38'),
(427, 2, 'maVncfMyHvjzSOAo8xaWjWmuLkx7aJz0', '2019-05-22 14:08:41', '2019-05-22 14:08:41'),
(428, 2, 'LORYGW7ujDpb4SCw0HxAbPOptOMx3We1', '2019-05-22 14:08:54', '2019-05-22 14:08:54'),
(429, 2, '25GkskNzzX6ip4fSmLQpFtjEGgVaOCm0', '2019-05-22 14:09:00', '2019-05-22 14:09:00'),
(430, 2, 'weunrbNAgywJuRHfDncrHFpO71z4XEw7', '2019-05-22 14:09:40', '2019-05-22 14:09:40'),
(431, 2, '0KMhj1ZuF7kjOAyKezrGdCcSYKMmsRwY', '2019-05-22 14:10:05', '2019-05-22 14:10:05'),
(432, 2, 'un5rCbrpzaAJOMF3FfXgLX49P9eaTk6D', '2019-05-22 14:10:06', '2019-05-22 14:10:06'),
(433, 2, 'IhKEPh12EeezqmUObG0GjrySsQJBaRar', '2019-05-22 14:12:13', '2019-05-22 14:12:13'),
(434, 2, 'W1cf3nkhL0GRf8cf06kWjZubu0mfZCPn', '2019-05-22 14:12:41', '2019-05-22 14:12:41'),
(435, 2, 'FgEznRH03B4XrZo89dqaAajgcAEFheQJ', '2019-05-22 14:15:00', '2019-05-22 14:15:00'),
(436, 2, 'laUUght7Cj5zcbw2G0NOy5ksjCgxSdVE', '2019-05-22 14:15:00', '2019-05-22 14:15:00'),
(437, 2, 'gYjKlg2vQ2N5tPKf6TxBCD36Gz6NJRAu', '2019-05-22 14:15:04', '2019-05-22 14:15:04'),
(438, 2, 'vis0c7zgKBRe9J7dGVwKOShlSUjxsZaH', '2019-05-22 14:15:04', '2019-05-22 14:15:04'),
(439, 2, 'sXWFMdmianjtG3HOZDhmkcaaaTkaIiIO', '2019-05-22 14:19:09', '2019-05-22 14:19:09'),
(440, 2, 'mb6cMXXX8FaBplbcLLUb147B65BmFDVb', '2019-05-22 14:19:09', '2019-05-22 14:19:09'),
(441, 2, 'qmips0CMauhfz9HkTZEAH0hRbSTKtdBA', '2019-05-22 14:19:09', '2019-05-22 14:19:09'),
(442, 2, 'venOO0Fdhd3R6Vm5SHcyUibnsK7zTj6G', '2019-05-22 14:19:09', '2019-05-22 14:19:09'),
(443, 2, 'Y9m2CzXLAThUSdnSmmDUTqxTcamFu6Ul', '2019-05-22 14:19:09', '2019-05-22 14:19:09'),
(444, 2, 'POKLIdATEAYSKdMJMTBNzqyjdmOZDEvo', '2019-05-22 14:19:10', '2019-05-22 14:19:10'),
(445, 2, 'vzoGF04S6ZBcz6ELcePU3BJrlgJHYxWo', '2019-05-22 14:19:10', '2019-05-22 14:19:10'),
(446, 2, 't7tH2NxgSFmpMkZtBGCL79R5uGO6Y9z5', '2019-05-22 14:19:10', '2019-05-22 14:19:10'),
(447, 2, 'kRToLPdRNVjAaEm8VB2pyqgEcqLM0is1', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(448, 2, 'C7TwiYccEqAqhTfKHr1WITdOHfMpf9jp', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(449, 2, 'LdqVaSjzLfoEuVfOO35sbC0YmQTtjThr', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(450, 2, 'B3Au5bRvt5VcNGLW6WrXJthFDnCy5jtF', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(451, 2, 'iTNYS0k6SuFV81Tw9F4YaDItWdUMmT0q', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(452, 2, 'rNxIOJGnruwuNw8aq51uEKOC835Fh500', '2019-05-22 14:21:13', '2019-05-22 14:21:13'),
(453, 2, '2zwZcI2Ma0jJgaS2sE4vb9T3TnycSjLF', '2019-05-22 14:21:14', '2019-05-22 14:21:14'),
(454, 2, 'C467o5vuuffeOxQtmvNyuPlKbxkP6qab', '2019-05-22 14:21:14', '2019-05-22 14:21:14'),
(455, 2, 'wqYnVr6mq67edUeY5EwJOL5ObdwYQBWn', '2019-05-22 14:21:14', '2019-05-22 14:21:14'),
(456, 2, '2oBMsJkdlwXX9JkkxjIeJ2iBSCObGtN9', '2019-05-22 14:26:30', '2019-05-22 14:26:30'),
(457, 2, '9GNhcQkfu1xgvfaGeWkn4rXzKzGtJRz2', '2019-05-22 14:30:56', '2019-05-22 14:30:56'),
(458, 2, 'GMCxgTzcCgPYfCfxU5R9wLmm5HFCbej7', '2019-05-22 14:30:57', '2019-05-22 14:30:57'),
(459, 2, 'nEEcNN9JO4zcPse7s3g9enFpWfRWklzp', '2019-05-22 14:36:29', '2019-05-22 14:36:29'),
(460, 2, 'pvWXudT1nLmtkI11cbGvqmsjTIVAbmA5', '2019-05-22 14:36:30', '2019-05-22 14:36:30'),
(461, 1, 'Jh50nELpqMWxydqbxy5vIhyeta36aKcO', '2019-05-22 15:18:57', '2019-05-22 15:18:57'),
(462, 1, 'BkEIwv1Xvin5L6kVZILceEOGrc96SzIK', '2019-05-22 15:18:57', '2019-05-22 15:18:57'),
(463, 1, 'Aacyer7RYSzpd6RVnBlrkgjtDZetvPwb', '2019-05-22 15:18:57', '2019-05-22 15:18:57'),
(464, 1, 'rPp3OmjR4uUtGwNsEHH4OfdvacT6fjll', '2019-05-22 15:18:57', '2019-05-22 15:18:57'),
(465, 1, 'r3APMnXdKnKjAG1VrNoDgJaGhmOXmwqt', '2019-05-22 15:18:57', '2019-05-22 15:18:57'),
(466, 1, 'hslH6Dq1FUOGf9WVmByndZyk6HIWFN4T', '2019-05-22 15:18:58', '2019-05-22 15:18:58'),
(467, 1, 'J26AHGmORD3yavi9BX1xqNjPqLRD05iD', '2019-05-22 15:18:59', '2019-05-22 15:18:59'),
(468, 1, 'CbyI26apxULcueD8SbkGIO9npWkjalcd', '2019-05-22 15:18:59', '2019-05-22 15:18:59'),
(469, 1, 'UZDk5OeNg4CHD2VFC6OMNGzyBGFhN9iB', '2019-05-22 15:19:42', '2019-05-22 15:19:42'),
(470, 1, 'kTaGZ2S49K27jcgNdCbOcJ2ZkE3LzcIu', '2019-05-22 15:19:42', '2019-05-22 15:19:42'),
(471, 1, '7OYJ8imOeYownRuVsgT42fP6wEjyGW9P', '2019-05-22 15:19:49', '2019-05-22 15:19:49'),
(472, 1, 'HGsvg58lAQDfazUL3G9KRiGLkcxIi1SC', '2019-05-22 15:19:49', '2019-05-22 15:19:49'),
(473, 1, 'Op8vhRo1CCxa3mFpvkH6hV3QhTdZaB8d', '2019-05-22 15:22:36', '2019-05-22 15:22:36'),
(474, 1, 'bUk1k8ZlS0vjwwyNnEAHsLs9VjhQEQ73', '2019-05-22 15:22:39', '2019-05-22 15:22:39'),
(475, 1, 'M54XreGcaQoYPqMIWETlggm51ghvjecd', '2019-05-22 15:22:55', '2019-05-22 15:22:55'),
(476, 1, 'uQB5NpiwVV1NnFMmEzgPR4Hq8GbPEDUr', '2019-05-22 15:23:00', '2019-05-22 15:23:00'),
(477, 1, '6XTpneb2YSfIRTmaKQsm3PCIlCuq0A0o', '2019-05-22 15:23:09', '2019-05-22 15:23:09'),
(478, 1, 'cn6nRHi3HAttuupIHwqI2RQgpQl8apqS', '2019-05-22 15:23:20', '2019-05-22 15:23:20'),
(479, 1, 'YlWAd7KQjaJqvHTeXSmh03L7yQcy8TFl', '2019-05-22 15:23:24', '2019-05-22 15:23:24'),
(480, 1, 'CkJ5eEr8NAQWPMcF6dyJwceyb1uai62b', '2019-05-22 15:23:28', '2019-05-22 15:23:28'),
(481, 1, 'O3eMCTFCb347A6O9noJ1uAhf4RfB4o1M', '2019-05-22 15:23:32', '2019-05-22 15:23:32'),
(482, 1, 'tnSB8Rc2EX9D86jp9i52Kvfl7amJSgt4', '2019-05-22 15:23:52', '2019-05-22 15:23:52'),
(483, 1, 'zMouqSBQFSILFAZKujygbSxYmOx3FbQD', '2019-05-22 15:23:54', '2019-05-22 15:23:54'),
(484, 1, 'bIVqW8IbRTML9vGhM7bmvzcj7HfVJhav', '2019-05-22 15:24:22', '2019-05-22 15:24:22'),
(485, 1, '95zErRJSi06euSlBBCnJhW7t1ccyHc9P', '2019-05-22 15:24:31', '2019-05-22 15:24:31'),
(486, 1, '6eFnFgZusw2GIlz1qydPszlkLtaVNya9', '2019-05-22 15:24:31', '2019-05-22 15:24:31'),
(487, 1, '1JnGVciaS6WirQn9fVkIFT40zXubVoGS', '2019-05-22 15:24:35', '2019-05-22 15:24:35'),
(488, 1, 'GoAtQlRnTqC5e63UsEeZ91drXms0DnG6', '2019-05-22 15:24:35', '2019-05-22 15:24:35'),
(489, 1, 'P6xtvYVKAJMcBkWALCNpcxWDNO1cFgtJ', '2019-05-22 15:24:57', '2019-05-22 15:24:57'),
(490, 1, 'IkyWIvJ34XvVrUKlVXJGztJkn8GBigZ1', '2019-05-22 15:25:18', '2019-05-22 15:25:18'),
(491, 1, 'pFDFDM5q4ZEFOkNMQyuDYnRUvjkAiRDj', '2019-05-22 15:25:18', '2019-05-22 15:25:18'),
(492, 1, '5RpPD0Dat8mwWvQpohpwYTjln13SrXKI', '2019-05-22 15:25:21', '2019-05-22 15:25:21'),
(493, 1, 'MqapC6fZ0q7pix7gfe5uDXVOtpDY7oE8', '2019-05-22 15:25:22', '2019-05-22 15:25:22'),
(494, 1, 'IkxEliLD28cLEBAGKsg8IEjX0xqnK44H', '2019-05-22 15:25:24', '2019-05-22 15:25:24'),
(495, 1, 'l4aUZdfqiA6gZswsloAlt3KdCclJ340R', '2019-05-22 15:25:25', '2019-05-22 15:25:25'),
(496, 1, 'u7t2kwkt5b4RuWGPGF1By0NYHZYSIzWA', '2019-05-22 15:25:32', '2019-05-22 15:25:32'),
(497, 1, 'RSobaK5vCKrdVgIE9EyPWNqSvGOMoo8B', '2019-05-22 15:25:34', '2019-05-22 15:25:34'),
(498, 1, 'GH9PFCmJEoof22PO2XN3eOlyePLOmUSi', '2019-05-22 15:25:35', '2019-05-22 15:25:35'),
(499, 1, 'HD2kl4k8oe9xtvTJMwadQocFcQ74HAwk', '2019-05-22 15:25:38', '2019-05-22 15:25:38'),
(500, 1, 'uZxRuzy9GCA85aBF4xrlWYPKWtsqmV1R', '2019-05-22 15:25:38', '2019-05-22 15:25:38'),
(501, 1, 'jCWocF4DIB1racPcNTHKVd329IvTh81K', '2019-05-22 15:25:40', '2019-05-22 15:25:40'),
(502, 1, 'lhNxIikqpdTc0nBlKbknCQK57lhJkasZ', '2019-05-22 15:25:41', '2019-05-22 15:25:41'),
(503, 1, 'zu0tnU6Cp4aYH09FhvMQTQZcpgMy3n90', '2019-05-22 15:25:47', '2019-05-22 15:25:47'),
(504, 1, 'TP1znxWxPxs6ZcxNOlFNCFdrLPHzr3Vu', '2019-05-22 15:25:51', '2019-05-22 15:25:51'),
(505, 2, 'q7C1WdPt3QTsAq1ScR89Dlx25HKE4GR4', '2019-05-22 15:32:01', '2019-05-22 15:32:01'),
(506, 2, 'D07KSDL1DlMccNIu4W07vHVVlPXaY2ll', '2019-05-22 15:32:05', '2019-05-22 15:32:05'),
(507, 2, '2790KEzN8OgQZhXl7QH9okrbnyBFB3Gd', '2019-05-22 15:32:05', '2019-05-22 15:32:05'),
(508, 1, 'A6U1w477cZpMluLMOmiezrKmjHAM18KO', '2019-05-22 15:34:05', '2019-05-22 15:34:05'),
(509, 2, 'BGkASGk4AY3JSJmO8cGoe2p22oEBNbx9', '2019-05-22 15:38:05', '2019-05-22 15:38:05'),
(510, 2, 'MpL2QWeSv3kbwFlmrgFIOE3NrkQ7m2MX', '2019-05-22 15:38:08', '2019-05-22 15:38:08'),
(511, 2, 'PePnxiXt2VBHSWxocaffLlKuEGejABAL', '2019-05-22 15:38:08', '2019-05-22 15:38:08'),
(512, 2, 'wbKix2DFlVRVi2kraWoamz0aDcyNwfO9', '2019-05-22 15:40:01', '2019-05-22 15:40:01'),
(513, 1, 'BWB91l1OmSiAn4Y6P69y6FhnnAW5b2Uq', '2019-05-22 15:40:46', '2019-05-22 15:40:46'),
(514, 1, 'uE4whvsSg5lNsIXVuuk2J1Y4bqf0XGa2', '2019-05-22 15:41:02', '2019-05-22 15:41:02'),
(515, 1, 'B5UKSZDhmG5kTzNcAfRxO3hDBXikAlFd', '2019-05-22 15:42:34', '2019-05-22 15:42:34'),
(516, 1, 'gaYDWgArOe5Is9xhOe6rxtaoBb2tdUHH', '2019-05-22 15:42:44', '2019-05-22 15:42:44'),
(517, 1, 'GX7gft0TRM8YYVZ4EWixNxqw5nW8voIG', '2019-05-22 15:42:44', '2019-05-22 15:42:44'),
(518, 1, 'kBZOpye3148BqAckqQ7wdMYNnwj5zwfH', '2019-05-22 15:42:44', '2019-05-22 15:42:44'),
(519, 1, '6rHcZFGxR2wA27Lu0i23ePgaCzslNKOh', '2019-05-22 15:42:44', '2019-05-22 15:42:44'),
(520, 1, 'OYINiYKp31Oc056n4tKC92mXNGAKoOuv', '2019-05-22 15:42:45', '2019-05-22 15:42:45'),
(521, 1, 'DxUoIfzoc3HB8qFAAGuu8Wphyfwhbker', '2019-05-22 15:42:45', '2019-05-22 15:42:45'),
(522, 1, 'JBO7JdRETOPfhDpEiMRq63MVLLjtJ8sD', '2019-05-22 15:42:45', '2019-05-22 15:42:45'),
(523, 1, '6ESULC9HiuFvWJU6BRv0cE71y8FGBzDG', '2019-05-22 15:42:46', '2019-05-22 15:42:46'),
(524, 2, '0WoXnOlVKQGS67UgM0dIb38QdxfCQ2jv', '2019-05-22 15:43:54', '2019-05-22 15:43:54'),
(525, 2, 'sIMNJ8swvkDDxYArMlmF1Ln78ct2F7Jv', '2019-05-22 15:44:10', '2019-05-22 15:44:10'),
(526, 2, 'TpQ6u9n5Z0zr7EjSMpuT8zJTBCcvxpqk', '2019-05-22 15:45:04', '2019-05-22 15:45:04'),
(527, 1, 'm0z66eaUJMP3CnAgaLXxL3XuXB0wa0Nc', '2019-05-22 15:47:51', '2019-05-22 15:47:51'),
(528, 1, 'YyngBPvRV60yhJgu757lEmGvkyHhdBSn', '2019-05-22 15:47:52', '2019-05-22 15:47:52'),
(529, 2, '01rbXbtRL8D0LfayCX7b2gIiojs73N3L', '2019-05-22 15:49:04', '2019-05-22 15:49:04'),
(530, 2, 'KkCvSs4JDLY7t2NIP5obxLfgTvEvTFiZ', '2019-05-22 15:49:41', '2019-05-22 15:49:41'),
(531, 2, '64B8mYXy2sEHiPKJwEOT7d2p2XQT5v8i', '2019-05-22 15:49:53', '2019-05-22 15:49:53'),
(532, 2, 'fuJkKk9okMg7FZ6dcOU65cvbmvS7Lcpf', '2019-05-22 15:49:53', '2019-05-22 15:49:53'),
(533, 2, 'aVRPunU4bhMA1W1HwD0j4lJeTX8VoLL2', '2019-05-22 15:50:54', '2019-05-22 15:50:54'),
(534, 2, 'aXuvwbbTCUnC4Q0bCz9MLlzaQdmDbbK1', '2019-05-22 15:51:20', '2019-05-22 15:51:20'),
(535, 2, 'Ia5ksELBT6n5pHw4ygZrNUQrVJ04Po9Z', '2019-05-22 15:51:21', '2019-05-22 15:51:21'),
(536, 1, 'cQPBa2wQzAealL5fi2toaNMmKPkvxfA2', '2019-05-22 15:53:05', '2019-05-22 15:53:05'),
(537, 1, '7RPe8tYsFrUiKwKIa6eePFqnPp3eVp9a', '2019-05-22 15:53:06', '2019-05-22 15:53:06'),
(538, 1, 'i4unAqpYI3L0YnhW1UDl8xMShPDfYNfd', '2019-05-22 15:53:06', '2019-05-22 15:53:06'),
(539, 1, 'rTWw6ZF37FqSpjLxNK1FKcsRjIys3jcg', '2019-05-22 15:53:06', '2019-05-22 15:53:06'),
(540, 2, 'qWCoSE409rGJGXrOKS6URpI1VDU1Hz6u', '2019-05-22 15:53:41', '2019-05-22 15:53:41'),
(541, 2, '0PmEKAWFwkaN77NvSNhDOvWHSmgim7N3', '2019-05-22 15:53:41', '2019-05-22 15:53:41'),
(542, 2, 'i0saRO5XO54JysUn9G7xzyoXGhO1zkPm', '2019-05-22 15:53:41', '2019-05-22 15:53:41'),
(543, 2, 'u3DXtB7LJCNkh1CvbMBLwZiISNi3KvpY', '2019-05-22 15:53:42', '2019-05-22 15:53:42'),
(544, 2, 'cFXTgu13H92AR3cIWhYxs7rjVJx0UHfX', '2019-05-22 15:54:28', '2019-05-22 15:54:28'),
(545, 2, 'GZhrIRhb7ch2JZOyQHdzsbHB3XmeEFNe', '2019-05-22 15:54:28', '2019-05-22 15:54:28'),
(546, 2, 'nP4v7k5cBWE9bdx8VVc2nCs2dY3qXW2i', '2019-05-22 15:54:55', '2019-05-22 15:54:55'),
(547, 2, 'a78WazDQdOWrBqb8Qwr6iWCXoR4W8iNz', '2019-05-22 15:55:46', '2019-05-22 15:55:46'),
(548, 2, 'xZxNUFDgqaYsv8Jobg9r2LxNyG4SVcTs', '2019-05-22 15:55:49', '2019-05-22 15:55:49'),
(549, 2, 'VsRMcoj1VGyA8rnTwrJ0CQJH8TavJPxe', '2019-05-22 15:55:50', '2019-05-22 15:55:50'),
(550, 2, 'W85Yltvc1Hug2FZ4viwkTbXF7XmCIjVb', '2019-05-22 15:56:47', '2019-05-22 15:56:47'),
(551, 2, 'AtiOtNY4i5jOJe3gRv5f3nhkwDyc0nFd', '2019-05-22 15:56:47', '2019-05-22 15:56:47'),
(552, 2, 'JiUlvijsP3HaJuiKkCLZ1Lur9uOPM38I', '2019-05-22 15:58:06', '2019-05-22 15:58:06'),
(553, 2, 'YHNKPXCgPNKR7NKrJmBuRWxbbmDaYUyn', '2019-05-22 15:58:06', '2019-05-22 15:58:06'),
(554, 2, '0sxyAqpScW9fkiB8CeRbypjtV1zCoyiF', '2019-05-22 15:58:10', '2019-05-22 15:58:10'),
(555, 2, 'fdmxiiGdZlL0g3RDA4eVmJn5IIS9xq30', '2019-05-22 15:58:10', '2019-05-22 15:58:10');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(556, 1, 'PXOTilPs3EEQXFHuZsLq7Zj0NtFl3lqU', '2019-05-22 15:58:51', '2019-05-22 15:58:51'),
(557, 1, 'G9h0OcOZaMUBA5S12eOmDxtWqRET0qDy', '2019-05-22 15:58:52', '2019-05-22 15:58:52'),
(558, 2, '25CUUARLjOFFb8cAbCCmoFPEcyEKahY3', '2019-05-22 15:58:57', '2019-05-22 15:58:57'),
(559, 2, 'Na4vZfaOVKRaMMMimE6mndXsGlCAIyHV', '2019-05-22 15:58:58', '2019-05-22 15:58:58'),
(560, 2, '2IuViiuj4bSsjpzDToaYRi1CsJ7g7mno', '2019-05-22 15:58:59', '2019-05-22 15:58:59'),
(561, 2, 'z00NG9peBo7eNZYj3ZNMLfWq3U5c0dtm', '2019-05-22 15:58:59', '2019-05-22 15:58:59'),
(562, 2, 'aaP821CUfiaOn5It0jODBaHKYBDp2CQW', '2019-05-22 15:58:59', '2019-05-22 15:58:59'),
(563, 2, 'QKRFJjhArfG8l8O04GdyjHRdcWEcAl6X', '2019-05-22 15:59:00', '2019-05-22 15:59:00'),
(564, 1, 'A9Qeept7ayqW1EnEE9oSU54ZqbRTIjuB', '2019-05-22 15:59:20', '2019-05-22 15:59:20'),
(565, 2, '4nQx5BHmXE9LbecvitdJtZjyMlPRJMA9', '2019-05-22 15:59:30', '2019-05-22 15:59:30'),
(566, 2, 'pnYfCoHZyww6yVtAI5XBUDXvi2wMiKnq', '2019-05-22 15:59:31', '2019-05-22 15:59:31'),
(567, 2, 'B0D2LtJ72zlxMam2ES5i2kS6DNg51CPr', '2019-05-22 15:59:32', '2019-05-22 15:59:32'),
(568, 2, 'rnfEiMGIniErFdhpa1dmEOZ6QUJ6JHH0', '2019-05-22 15:59:32', '2019-05-22 15:59:32'),
(569, 2, 'TSrpmMwCZOCTlSAyio1a90pmrODF6sJH', '2019-05-22 15:59:44', '2019-05-22 15:59:44'),
(570, 2, 'tGtaiMectL2YbtqwufNITM7tfV8SvwFK', '2019-05-22 15:59:46', '2019-05-22 15:59:46'),
(571, 2, '4DlmQZIeTK7ihvKkAtlJPsFt9JrOXyVy', '2019-05-22 15:59:46', '2019-05-22 15:59:46'),
(572, 2, 'pYG9UPSV5d4MzdwjKF0GtMN4gY3cfiTY', '2019-05-22 15:59:47', '2019-05-22 15:59:47'),
(573, 2, 'kWEXGEwq53dfVzMHVVHkjGu9libtq3Jb', '2019-05-22 15:59:47', '2019-05-22 15:59:47'),
(574, 2, 'HxQTLH3YyvXL3kMRJdkAPBCiANcLJ3aA', '2019-05-22 15:59:47', '2019-05-22 15:59:47'),
(575, 2, 'c2ctEfzZPdPdtcWxvfXEqD8A5TixG2Eb', '2019-05-22 15:59:50', '2019-05-22 15:59:50'),
(576, 2, 'X9TnuMaRkQCu6Yt5dSr2sVqY3NHFvCfX', '2019-05-22 16:00:20', '2019-05-22 16:00:20'),
(577, 2, '9cnODNykVdhymlyBPsk57eUaWp2VriOZ', '2019-05-22 16:00:22', '2019-05-22 16:00:22'),
(578, 2, 'HgIRMhDuQ9vsXzdfRShHrlyhQZm1JkLU', '2019-05-22 16:00:23', '2019-05-22 16:00:23'),
(579, 2, 'hYUS2HZAVn30z96Xkce8wImxBHaDuHQa', '2019-05-22 16:00:23', '2019-05-22 16:00:23'),
(580, 2, 'BwkE57lXFC40sPimke5OwCbI5SToi6rq', '2019-05-22 16:00:27', '2019-05-22 16:00:27'),
(581, 2, 'rElqBRfzadISzsjsshuTmdyoRoe7IeXJ', '2019-05-22 16:00:27', '2019-05-22 16:00:27'),
(582, 2, 'ifItQrazQPAbUFOz41FXGfnFH2oKgvyJ', '2019-05-22 16:00:27', '2019-05-22 16:00:27'),
(583, 2, '9K43BpuHcjHYmDJs0Ms4b5BCNxXT25iH', '2019-05-22 16:00:28', '2019-05-22 16:00:28'),
(584, 2, 'fZpxpguKSKpCPg5BpoPWmYHuUIs1k6uz', '2019-05-22 16:00:32', '2019-05-22 16:00:32'),
(585, 2, 'hLNyDo0tVtiE1GfKvWC4lPzcnV6rvAla', '2019-05-22 16:00:33', '2019-05-22 16:00:33'),
(586, 2, 'GijYyOmdnWw6JJ3fyBFVWVH07XeQ6vWs', '2019-05-22 16:00:36', '2019-05-22 16:00:36'),
(587, 2, 'GB4y85ibK1QWLCFftU2VbvVU49T2tgBc', '2019-05-22 16:00:40', '2019-05-22 16:00:40'),
(588, 2, 'MHzV95lYUc5405T3jWIfxHdJXBe4Bv2i', '2019-05-22 16:00:41', '2019-05-22 16:00:41'),
(589, 2, 'Gy9THoAJo2Y0m5cWxktIES8MF5aT7pnV', '2019-05-22 16:00:48', '2019-05-22 16:00:48'),
(590, 2, 'TSonKfB0NPs5FgyoWUfvXWwV18uc3GNa', '2019-05-22 16:00:49', '2019-05-22 16:00:49'),
(591, 2, 'pcrSHq4ZSDjInzFOZ63MpLkzhVsNThvO', '2019-05-22 16:01:09', '2019-05-22 16:01:09'),
(592, 2, 'xBVXTqpSri0YoLmwETpLRkIkzuQr9WX4', '2019-05-22 16:01:10', '2019-05-22 16:01:10'),
(593, 2, 'vbRC5dgLtC1R9W0o0ngc2AgsBCz1Tea9', '2019-05-22 16:02:11', '2019-05-22 16:02:11'),
(594, 2, '7Ui0daLFtP4NXGdibD7m1zONzPyTOYIk', '2019-05-22 16:02:11', '2019-05-22 16:02:11'),
(595, 2, '9psnwoH371vEhw4iDFgkQJ4JLMoG0umM', '2019-05-22 16:02:13', '2019-05-22 16:02:13'),
(596, 2, 'Uhe8cV8wazmf1dGNJK0atHYuFjzRf60q', '2019-05-22 16:02:14', '2019-05-22 16:02:14'),
(597, 2, 'CDkt4MGrmFtZiUY8wkItHwu9i6LYSjQQ', '2019-05-22 16:02:15', '2019-05-22 16:02:15'),
(598, 2, 'nFVBsAhdPm45p3H50ByZiqC5uN3EQJVt', '2019-05-22 16:02:15', '2019-05-22 16:02:15'),
(599, 2, 'Pjmc0whLo2IyMhgcY3D7cj5JL4tQmalD', '2019-05-22 16:03:35', '2019-05-22 16:03:35'),
(600, 2, 'auUFlGE3fxwJdSt4g27D7IVlUxGKBf66', '2019-05-22 16:03:35', '2019-05-22 16:03:35'),
(601, 2, 'QENRVSsJzOl3TQInc2vqArK0q60SSPoL', '2019-05-22 16:03:36', '2019-05-22 16:03:36'),
(602, 2, 'oIIApmqHk9iWUk7VrG3wrcGL0Y4u3cyo', '2019-05-22 16:03:36', '2019-05-22 16:03:36'),
(603, 1, 'aTXt2Zcd1I07LgTAj1wSGJ1J1djLatzd', '2019-05-22 16:04:41', '2019-05-22 16:04:41'),
(604, 1, 'EHHaF6ZMOHE9SuEFq92Fpp0YdjVIUSVT', '2019-05-22 16:04:41', '2019-05-22 16:04:41'),
(605, 1, 'DEv05D1Qc7XzggFO0bYDDRnDX9cW3HHz', '2019-05-22 16:04:43', '2019-05-22 16:04:43'),
(606, 1, 'jNXA8WBZujyTxh0LrPvytsqWVpZ2YVR7', '2019-05-22 16:04:51', '2019-05-22 16:04:51'),
(607, 1, 'U79GQTkYPsa8Wi9Bqr9g8Gy1gkeFzV1z', '2019-05-22 16:05:32', '2019-05-22 16:05:32'),
(608, 1, '9JgyuxVMdSWzZ5h29oU0FUpBJDVeZ92o', '2019-05-22 16:05:40', '2019-05-22 16:05:40'),
(609, 1, '9TbuBeJT0JL1zTwFLSRuuKkkYU4ppLIp', '2019-05-22 16:05:51', '2019-05-22 16:05:51'),
(610, 1, '8kdsIj9PqUhFCryzQ9kqkL8L9C3Kbw5s', '2019-05-22 16:05:52', '2019-05-22 16:05:52'),
(611, 1, 'lRt1ovYgv8Bnc3v8hjsMVYMRpVw7GXjh', '2019-05-22 16:08:19', '2019-05-22 16:08:19'),
(612, 1, 'krY9IgYYYM2dsTOjw2QHVGv8jSbvV0X4', '2019-05-22 16:08:33', '2019-05-22 16:08:33'),
(613, 1, '2l7KvSxvlBAc5PzUltrPGFF6Qh48Ho52', '2019-05-22 16:08:35', '2019-05-22 16:08:35'),
(614, 1, 'hxddVdij35SHaukGeCt8pZkAewhFbWXE', '2019-05-22 16:11:30', '2019-05-22 16:11:30'),
(615, 1, 'oDMhxMoLNj1uewNn2uwDn8nZ3YLrmLD3', '2019-05-22 16:11:30', '2019-05-22 16:11:30'),
(616, 1, 'I2hImkuYF3RjaeZTpanfUJL2Vsq7jWPS', '2019-05-22 16:12:08', '2019-05-22 16:12:08'),
(617, 1, 'ROPY896vaXrqswkPkq85rbREQ1fP1FUg', '2019-05-22 16:12:08', '2019-05-22 16:12:08'),
(618, 1, 'v1ZBNyaAZLza2AX3mXOAkovhX7QdNurX', '2019-05-22 16:12:47', '2019-05-22 16:12:47'),
(619, 1, 'dGG60zU1Hrn1VtsrJq2gSRaeouPKhCZj', '2019-05-22 16:12:47', '2019-05-22 16:12:47'),
(620, 1, 'mB47pr8hMhR7WhvcmKtqGaI2okX1iDBG', '2019-05-22 16:14:27', '2019-05-22 16:14:27'),
(621, 1, 'Q15qgysAjBYyVw0RdS10D0DNjlcqmrpK', '2019-05-22 16:14:28', '2019-05-22 16:14:28'),
(622, 1, 'ikoXDl4x78xTpk6BjqgdfpoqJafYu7RR', '2019-05-22 16:26:06', '2019-05-22 16:26:06'),
(623, 1, 'BN751WHQxvK4i0DuldwI405KEBXT7uj4', '2019-05-22 16:26:07', '2019-05-22 16:26:07'),
(624, 1, '46LnkbYXIy3K91Vgh4WAl2fkc7M09gLf', '2019-05-22 16:27:23', '2019-05-22 16:27:23'),
(625, 1, 'kSZ8KIGm5UidvoEe6kPLIiR17BksKCSU', '2019-05-22 16:30:21', '2019-05-22 16:30:21'),
(626, 1, '5A7pEu9N4CsRd8D6IBd1ypQZgsZ2i6Fq', '2019-05-22 16:30:24', '2019-05-22 16:30:24'),
(627, 1, 'qyyno3Ysnb9tAxBdo8sb60s1Ok0uWrjH', '2019-05-22 16:30:44', '2019-05-22 16:30:44'),
(628, 1, 'W1aHTli31C5vUetNZM5M0ODAXS4XQ8sK', '2019-05-22 16:30:45', '2019-05-22 16:30:45'),
(629, 1, '4w8waNZO0z9C3S0QPCYxNOsDNTiXUaWp', '2019-05-22 16:33:52', '2019-05-22 16:33:52'),
(630, 1, 'SBB5sbAWMtvqaL4A6WdRMNj07ZVVgCDH', '2019-05-22 16:34:16', '2019-05-22 16:34:16'),
(631, 1, '07G0NG87K1WTvnqokgpEYI2OBDYckV28', '2019-05-22 16:34:42', '2019-05-22 16:34:42'),
(632, 1, 'LihqZfOTtYEDgEtJqcU31kDl9BJ1c4XN', '2019-05-22 16:35:03', '2019-05-22 16:35:03'),
(633, 1, 'MZVqeVGmNEqNU5Wd8KULqDALmsM8GSuj', '2019-05-22 16:35:27', '2019-05-22 16:35:27'),
(634, 1, 'jZfEElAtG9zwPJzSkwtciowh1lxf9Mzq', '2019-05-22 16:35:52', '2019-05-22 16:35:52'),
(635, 1, 'V1OKe9qxKXoTyY7h3Pl1UYwvxE0mnVrp', '2019-05-22 16:35:55', '2019-05-22 16:35:55'),
(636, 1, 'k4rQzCjh1cG6l0TTJFWBipZ8bI8h8Mms', '2019-05-22 16:36:02', '2019-05-22 16:36:02'),
(637, 1, 'JgnYwiq29Pt8ozsVN7sWtl0bno0ohpvK', '2019-05-22 16:36:02', '2019-05-22 16:36:02'),
(638, 1, 'fG6gVeplA4WipKvasXtFWvMquHNJYzdT', '2019-05-22 16:36:38', '2019-05-22 16:36:38'),
(639, 1, 'xopgeZeOUef2Po5YsVxZhiAAahJ15QWQ', '2019-05-22 16:36:40', '2019-05-22 16:36:40'),
(640, 1, 'QJn8Y7VzDGmhao09AzIFQLd6JeN7PcJp', '2019-05-22 16:37:03', '2019-05-22 16:37:03'),
(641, 1, 'ESdNoV8EDFsnz2vXmLeLG1xSMkzYmKdT', '2019-05-22 16:37:03', '2019-05-22 16:37:03'),
(642, 1, 'uzS7Se4P6IAGLMZQM0knjyP29IJFcmf3', '2019-05-22 16:37:11', '2019-05-22 16:37:11'),
(643, 1, 'etefc2UehmAMdsN4zVHCmx5bQUEbUOQN', '2019-05-22 16:37:14', '2019-05-22 16:37:14'),
(644, 1, 'pWonprLNqgkhmh4zmbzZam4BqHWRarYR', '2019-05-22 16:38:12', '2019-05-22 16:38:12'),
(645, 1, 'iGMISNUi1Fwf1Nlwx9AZ11TVe9SSC15K', '2019-05-22 16:38:21', '2019-05-22 16:38:21'),
(646, 1, 'o1wBtGR00QU9VAq0Nwoqi9kJbLKFPQ3f', '2019-05-22 16:38:21', '2019-05-22 16:38:21'),
(647, 1, '4pPz1NAW1EOW97EXCid6JatisKe7pAhV', '2019-05-22 16:38:41', '2019-05-22 16:38:41'),
(648, 1, 'RE6rHeUBm5FgmqxHwVe8zpywd9q8aLut', '2019-05-22 16:38:41', '2019-05-22 16:38:41'),
(649, 1, 'UPUeZQt4K9e2aePKvVDFXezjkbdTx4DQ', '2019-05-22 16:38:46', '2019-05-22 16:38:46'),
(650, 1, 'hsyVMrChwURXQPUGqCZfakgmvQ1hmvbV', '2019-05-22 16:38:46', '2019-05-22 16:38:46'),
(651, 1, 'WcDQQtg5TYxXMsTSYQnbXME4RJhZqoA7', '2019-05-22 16:38:52', '2019-05-22 16:38:52'),
(652, 1, '7j9G18MkTLee5dNLXfdQ8Jnyf6rjcrgw', '2019-05-22 16:38:52', '2019-05-22 16:38:52'),
(653, 1, 'dEoStpNyQWv6DMfJDUcFR48lmQXQQx56', '2019-05-22 16:39:24', '2019-05-22 16:39:24'),
(654, 1, 'oJJycG9ZIkk0KogtK3AH0quOAmglDAz3', '2019-05-22 16:40:30', '2019-05-22 16:40:30'),
(655, 1, 'uqk5wxf2ivvV1zDX2723AZyjY5aYDdZB', '2019-05-22 16:42:15', '2019-05-22 16:42:15'),
(656, 1, 'Ul1UxwgHjlNJ1Zyy0epL5E0lz3l288S8', '2019-05-22 16:42:44', '2019-05-22 16:42:44'),
(657, 1, 'rVlXP40ucx7CBcwz8463ocOUK1OF4KgN', '2019-05-22 17:06:40', '2019-05-22 17:06:40'),
(658, 1, 'rNL3BAdlMs5SCXoHfOyZqpE1uxTX2cCx', '2019-05-22 17:06:44', '2019-05-22 17:06:44'),
(659, 1, 'nA9yL0YRllqSmMmGo9WkoOkGc0LD2rUL', '2019-05-22 17:06:45', '2019-05-22 17:06:45'),
(660, 1, '4hxTlgL67bu0UNd05Zt7uftOMxCzdtyr', '2019-05-22 17:07:08', '2019-05-22 17:07:08'),
(661, 1, 'zs7D43R3yQVsaoPSQ1IMNFlPnqNBZvtW', '2019-05-22 17:07:10', '2019-05-22 17:07:10'),
(662, 1, 'EZdqPk2B4cnpX4WTaJLuw7GbyfDvVcwJ', '2019-05-22 17:07:11', '2019-05-22 17:07:11'),
(663, 1, '32GYm9qhMSIIPY7UmnBH2nDQfOhdc1fF', '2019-05-22 17:16:31', '2019-05-22 17:16:31'),
(664, 1, 'kmpYCqA74XOZRuu0JnmHQbiWRYoyuwqd', '2019-05-22 17:16:32', '2019-05-22 17:16:32'),
(665, 1, 'l67awZ9IvV7h4xA2EF3io1piCabGO2ph', '2019-05-22 17:17:52', '2019-05-22 17:17:52'),
(666, 1, 'HpNRFnb7t2dLzDFqlvmVNHF2MMg8sULO', '2019-05-22 17:17:53', '2019-05-22 17:17:53'),
(667, 1, '2wrFGpzV7al0YeSDV7RtjngGhjFtevu4', '2019-05-22 17:22:40', '2019-05-22 17:22:40'),
(668, 1, 'O2ZjHjouPUQmBZzDyS6fbS4wqz4hiJaT', '2019-05-22 17:22:58', '2019-05-22 17:22:58'),
(669, 1, 'luUX2Ya6CH2CF6zO57wV1RwfMCFt6q3I', '2019-05-22 17:23:04', '2019-05-22 17:23:04'),
(670, 1, 'CRomyWVpMDOfPG0Vt2Czq2nHH1LXyOv2', '2019-05-22 17:23:32', '2019-05-22 17:23:32'),
(671, 2, 'ZEvyHkvECmOhYuWPhxUow1cwLKIv5Wu9', '2019-05-22 17:25:07', '2019-05-22 17:25:07'),
(672, 1, 'E4o2QjqcYumwP8Vdb8OY9fxw6DaTHyqE', '2019-05-22 17:25:39', '2019-05-22 17:25:39'),
(673, 1, '9uA6KznfodUXmhrFPcQdY6k8GvYjqtcB', '2019-05-22 17:26:08', '2019-05-22 17:26:08'),
(674, 2, 'uqKUwTlkPRGkIVN2CRlULagBKGz3iC7k', '2019-05-22 17:27:00', '2019-05-22 17:27:00'),
(675, 2, 'lgJMdLdvGwvSfsKlNmw9P1i559NLn7ee', '2019-05-22 17:27:50', '2019-05-22 17:27:50'),
(676, 2, '8ZuJ3HM7FEupH6iqaIEPpdGyD9VfMQli', '2019-05-22 17:29:57', '2019-05-22 17:29:57'),
(677, 1, 'FqLj1VJRiubksQKd84uZRM7FHk8EIIXj', '2019-05-22 17:30:15', '2019-05-22 17:30:15'),
(678, 1, '9sWoacrAcNItTQSp1xbDNnBNys8YSGV2', '2019-05-22 17:30:16', '2019-05-22 17:30:16'),
(679, 2, 'FOVbB40uEn6PxyK3omMKbbigAi79nQAt', '2019-05-22 17:30:37', '2019-05-22 17:30:37'),
(680, 1, 'xXANnW6pxex6beaqOkq7rwttBAP9tzsh', '2019-05-22 17:31:17', '2019-05-22 17:31:17'),
(681, 1, 'vnEQYzYUBLlyP7KkUFl9EYvgAjNrcuQh', '2019-05-22 17:31:18', '2019-05-22 17:31:18'),
(682, 2, 'uQbHf9tbft7GZgW8DZ9DnFH710a4MBcj', '2019-05-22 17:31:19', '2019-05-22 17:31:19'),
(683, 2, '6KkeH5rIjhlWlbUwhckmwHBvb474HHlr', '2019-05-22 17:31:39', '2019-05-22 17:31:39'),
(684, 2, '4twJPJEIrMGYppO3UYcYxaXIMQJqigKH', '2019-05-22 17:32:26', '2019-05-22 17:32:26'),
(685, 2, 'uGdcTPzZBGe85oPHx5SBmYMXkPWfstyJ', '2019-05-22 17:32:44', '2019-05-22 17:32:44'),
(686, 2, 'p9RtXs37fyx1CXuw2Uk1AgEkx9Hymd1C', '2019-05-22 17:33:37', '2019-05-22 17:33:37'),
(687, 2, 'Va1EHZ5Lj8pgPS2FeUk3HAgjsjrf4G4s', '2019-05-22 17:35:03', '2019-05-22 17:35:03'),
(688, 1, '4vvWFAMOwOrtxzaAtPTYd0p3I0aInwJw', '2019-05-22 17:35:45', '2019-05-22 17:35:45'),
(689, 1, 'pdIgc3Fz4EVmNM6RdoNETNOYg9SKJLhc', '2019-05-22 17:35:47', '2019-05-22 17:35:47'),
(690, 2, 'IxHPS8AVAfJxiDE0CqOPpvUQIohPlZpL', '2019-05-22 17:36:33', '2019-05-22 17:36:33'),
(691, 1, 'cFb37F5u9GfGoJdEveRsMUB2P8PcGB7T', '2019-05-22 17:37:20', '2019-05-22 17:37:20'),
(692, 1, 'CHqyxivOaEfS5uMEReYssxhFAljaoQSi', '2019-05-22 17:37:20', '2019-05-22 17:37:20'),
(693, 2, 'QA4KJO75VwMAb2hYRjVmSSWhn78sohPO', '2019-05-22 17:37:24', '2019-05-22 17:37:24'),
(694, 2, 'pemmlrrYcJQFhVTTV0SR2uFXm04j3rgM', '2019-05-22 17:37:50', '2019-05-22 17:37:50'),
(695, 2, 'qxDOEgBaAAwLSgvCUVQpqpJzRXXA73jg', '2019-05-22 17:38:46', '2019-05-22 17:38:46'),
(696, 2, '0oiBr7VJIlnGtcq3IZd2AiwF4IRlF4jT', '2019-05-22 17:38:54', '2019-05-22 17:38:54'),
(697, 2, 'FXITqdHartjFK2hOEELQzdtnWkGvdV8U', '2019-05-22 17:38:58', '2019-05-22 17:38:58'),
(698, 2, 'yTiyjju0l1Ya4k85kcFNiiaV54AWgI4h', '2019-05-22 17:39:03', '2019-05-22 17:39:03'),
(699, 1, 'tfCl3gcr7vhpmGNOQ3Jiii30sF26bCEe', '2019-05-22 17:39:10', '2019-05-22 17:39:10'),
(700, 1, 'v1r3W69jJOqDscsaegToK534FGLkoEWG', '2019-05-22 17:39:11', '2019-05-22 17:39:11'),
(701, 1, 'oq3ydWB9FEJy7ZYxCuCg8QgOyVwD2NVc', '2019-05-22 17:40:25', '2019-05-22 17:40:25'),
(702, 1, 'QxvdropMpjP5Bq7xBafbHALa2Q3DkqLF', '2019-05-22 17:40:26', '2019-05-22 17:40:26'),
(703, 1, '39eKwODKMBDroC5cq3Vf53k54MQeqqGp', '2019-05-22 18:02:08', '2019-05-22 18:02:08'),
(704, 1, 'LHidAdwp7KzdIInGjHWqwmRsjDPPZqkH', '2019-05-22 18:02:12', '2019-05-22 18:02:12'),
(705, 1, 'wF8YsJVVSqfqbImwJycikVO6uqZpSU07', '2019-05-22 18:02:26', '2019-05-22 18:02:26'),
(706, 1, 'NR1P5u3bWsh3q8lhwNToqiZACP5BqXHj', '2019-05-22 18:02:29', '2019-05-22 18:02:29'),
(707, 1, '7h2LFXzWMLN5YTixhWjzei9MdH2hz5og', '2019-05-22 18:02:50', '2019-05-22 18:02:50'),
(708, 1, 'lTwuqxD6aeMJH8oI9kVhzn8MIyVRB9qk', '2019-05-22 18:02:51', '2019-05-22 18:02:51'),
(709, 1, 'KKYHXAYpE8taxMYQAZrWUwz2w5J9gkxQ', '2019-05-22 18:03:12', '2019-05-22 18:03:12'),
(710, 1, '9AC1qDnldD7Galmd7xonkHA7ja1OPtHn', '2019-05-22 18:03:15', '2019-05-22 18:03:15'),
(711, 1, 'aEKWQbsGyw7yWqaUACXmWt5V0vyvqpmp', '2019-05-22 18:03:23', '2019-05-22 18:03:23'),
(712, 1, 'g3MCT71DQiuBoiv2Znrq9Fq9PUqfROz8', '2019-05-22 18:03:23', '2019-05-22 18:03:23'),
(713, 1, 'EKRBWEkdg7xjklnNHK20Gqgb9pdmm9pM', '2019-05-22 18:03:26', '2019-05-22 18:03:26'),
(714, 1, '0dSdva3GSHZ1ojsykIywGXZEdUKP2Ww2', '2019-05-22 18:03:26', '2019-05-22 18:03:26'),
(715, 2, 'DpLuQvKTRxl62iEXwSSpyns7mfVkIhCy', '2019-05-22 19:09:53', '2019-05-22 19:09:53'),
(716, 2, 'cgj60vFn5RMTZXUTVnlF34geaLZOlO07', '2019-05-22 19:18:02', '2019-05-22 19:18:02'),
(717, 2, '1RFNMgLVZgioybdrEEyxuEwppWQ7fr5S', '2019-05-22 19:19:20', '2019-05-22 19:19:20'),
(718, 2, 'RDTgngwONnzFbCgHGwz4YhsdMI95HkWX', '2019-05-22 19:20:54', '2019-05-22 19:20:54'),
(719, 2, 'UghEZarflPUvnXhMUDWoXfhMQCyk2vB1', '2019-05-22 19:25:32', '2019-05-22 19:25:32'),
(720, 2, 'rrikX7nJFasGzZqbFpqtNVfBQCIA6ac0', '2019-05-22 19:26:19', '2019-05-22 19:26:19'),
(721, 2, 'or1v6lS0XMFLc9q8EoLziifjxBgTGNLm', '2019-05-22 19:27:11', '2019-05-22 19:27:11'),
(722, 1, 'FDh9I0Ca1gCSewqBwKV1cGZFXCeadXhh', '2019-05-22 19:31:38', '2019-05-22 19:31:38'),
(723, 1, 'DKUiPVizV2lPCD6NUGAfEMHrwzNGAkKi', '2019-05-22 19:31:38', '2019-05-22 19:31:38'),
(724, 1, 'XANKXaeouLIKlGsHjJJO3ogwtRx8E00X', '2019-05-22 19:31:38', '2019-05-22 19:31:38'),
(725, 1, 'yawaSNpEohhUDHnoNHLfT9nZQlUI5CzI', '2019-05-22 19:31:39', '2019-05-22 19:31:39'),
(726, 2, 'nl84k7iZdw97fNSPFIgWVNILitDgWDdW', '2019-05-22 19:32:48', '2019-05-22 19:32:48'),
(727, 2, 'R4MJfpztspNmh7gqKVI8l9npXrRHsDpM', '2019-05-22 19:34:32', '2019-05-22 19:34:32'),
(728, 2, '9XXYCmMaxtJ7fb3XS1EqXgROskA5sVxr', '2019-05-22 19:35:33', '2019-05-22 19:35:33'),
(729, 1, 'dg1zn8DERG3QiJ4piybQJeeYf1ES3Zw4', '2019-05-22 19:35:40', '2019-05-22 19:35:40'),
(730, 1, 'wR6dXxhJ7hUW949eC3xmQ2QjTygZHzli', '2019-05-22 19:35:40', '2019-05-22 19:35:40'),
(731, 1, 'U5LEz7iL9cKa82txN7Qc6dS6CzzsZm1b', '2019-05-22 19:35:40', '2019-05-22 19:35:40'),
(732, 1, 'bEwNH9vBtfuJhQaAP67tiDFfWB67EkHR', '2019-05-22 19:35:40', '2019-05-22 19:35:40'),
(733, 2, '69wLc423c9jrbUOiYKwfp6PIP2fLGSzu', '2019-05-22 19:36:42', '2019-05-22 19:36:42'),
(734, 2, 'yXbTjffgb2z7TG4KaHVQp2BUveM2CaEH', '2019-05-22 19:50:29', '2019-05-22 19:50:29'),
(735, 1, 'gVLTzk05HqNi6VYTwOHuelyzdUtHIIg2', '2019-05-22 20:00:27', '2019-05-22 20:00:27'),
(736, 3, 'aNTsMbVSkyjImjWCIXwM6Og38kkKNK4w', '2019-05-22 20:01:31', '2019-05-22 20:01:31'),
(737, 1, 'z1kPHv7FHml2gfpsaROvqlnyRcT1WGha', '2019-05-22 20:02:18', '2019-05-22 20:02:18'),
(738, 1, 'RKExNlAhWVDsmu4XChSG3jixsSG6U88l', '2019-05-22 20:02:18', '2019-05-22 20:02:18'),
(739, 2, '97fQ9NKiYLVnQ62tP6n3ZVUZpinL3KWq', '2019-05-22 20:04:32', '2019-05-22 20:04:32'),
(740, 1, 'P6daXk5DlGSRKSoHxFYSxX6ZOA7XGXQg', '2019-05-22 20:04:40', '2019-05-22 20:04:40'),
(741, 1, 'nQf9iJYmV14HfrqxP9LD8ojidCU0EWjR', '2019-05-22 20:04:42', '2019-05-22 20:04:42'),
(742, 1, 'jHjHURzn5Z041Bc7ZlUfDc0Em9wvje8B', '2019-05-22 20:07:26', '2019-05-22 20:07:26'),
(743, 1, 'bvcFtP9vcRf6ahS7QGMdMQLkwk9x6KI8', '2019-05-22 20:07:26', '2019-05-22 20:07:26'),
(744, 1, 'GAL2o8DPaqcCYV7b8FE0LEBHAZgMsEUV', '2019-05-22 20:08:34', '2019-05-22 20:08:34'),
(745, 1, 'ktECSusnj0wr0eroVRxVwtHOjaHqsgk8', '2019-05-22 20:08:35', '2019-05-22 20:08:35'),
(746, 1, '1vxX3WlE3h9XMPtl7l2iotYoprRPTcVV', '2019-05-22 20:23:50', '2019-05-22 20:23:50'),
(747, 1, 'iS4OBewvSiiVgdmzZLFFqfwdWcNutBqT', '2019-05-22 20:27:21', '2019-05-22 20:27:21'),
(748, 1, 'EFBtGEeaz2W8kNPO1A5F9kF6J6Slzg2Y', '2019-05-22 20:31:06', '2019-05-22 20:31:06'),
(749, 1, 'MuusmKpJcjSNAbJa7hvTZlWKv6Z73Kgz', '2019-05-22 20:31:06', '2019-05-22 20:31:06'),
(750, 3, 'sVpkPjezETfUP9886JaWBw5gWMptJYN1', '2019-05-22 20:41:05', '2019-05-22 20:41:05'),
(751, 3, 'awxsrSPzyYXu2xOcmXEIRlGX5LtCnWIW', '2019-05-22 20:41:05', '2019-05-22 20:41:05'),
(752, 1, 'fdUOCWToywNkCzbe7YUnHJ3NWMHfos2Y', '2019-05-22 20:41:54', '2019-05-22 20:41:54'),
(753, 1, 'FDwFl4MtClMA0uCtBC9d4OOg9WEZL5Ta', '2019-05-22 20:41:55', '2019-05-22 20:41:55'),
(754, 1, 'LYwSD1H0rOvK5FCnSyWMivJ0TrTaqTPJ', '2019-05-22 20:43:50', '2019-05-22 20:43:50'),
(755, 1, 'vGlZnf3E6auiog3clftABa4ShJKvQwLF', '2019-05-22 20:43:50', '2019-05-22 20:43:50'),
(756, 1, 'Uhvs87ONtBpx0GGFxkAWCKbjRdY1TO3t', '2019-05-22 20:43:50', '2019-05-22 20:43:50'),
(757, 1, 'Fuo2JbaQX7RvpNOqCMGGfAxAMukmfBms', '2019-05-22 20:43:51', '2019-05-22 20:43:51'),
(758, 1, 'jP8FIWXnICqFM3eU65JuFFuTRFHH2Wlp', '2019-05-22 20:51:16', '2019-05-22 20:51:16'),
(759, 1, '3ehCz1fZnH43P9of4QroL87mE9TIuByU', '2019-05-22 20:51:27', '2019-05-22 20:51:27'),
(760, 1, 'j1501gkMhu88ElIYIOkSIq6yJPqPZWbx', '2019-05-22 20:51:28', '2019-05-22 20:51:28'),
(761, 2, 'wzkOsJKxvcvaKVwSkfLJYOOQtckdkVjl', '2019-05-22 21:09:49', '2019-05-22 21:09:49'),
(762, 2, 'FgcN84TLQ3IEF9RrXM8OuiIgwlbgF2FX', '2019-05-22 21:10:33', '2019-05-22 21:10:33'),
(763, 2, 'h01bzKDakxieECHaU1kk4gTNeB6OEw27', '2019-05-22 21:28:09', '2019-05-22 21:28:09'),
(764, 2, 'aVkUOirvgwTuX1aKtU9SEFuCwhLwKsyf', '2019-05-22 21:35:22', '2019-05-22 21:35:22'),
(765, 2, 'XXe55CIL7uqAmy7r2FW0bymqXgh6sPF8', '2019-05-22 21:55:08', '2019-05-22 21:55:08'),
(766, 2, '3bGdC74oMo5MlOJliuw3PqGPzIZb0rrz', '2019-05-22 21:55:11', '2019-05-22 21:55:11'),
(767, 2, 'YcezUldOBhckRRLG29HrWoaIv3U7MSuE', '2019-05-22 21:56:30', '2019-05-22 21:56:30'),
(768, 2, 'XtHDuDlyVBz8VLzlY3uAnOto71Ju1IYr', '2019-05-22 21:58:26', '2019-05-22 21:58:26'),
(769, 2, 'gjdozPoPhpdLidk1XjwBQ8lrhLCOHWkd', '2019-05-22 21:59:03', '2019-05-22 21:59:03'),
(770, 2, '4RU9TVEKfI5uDgy9B8fNuF126PDJP0Ym', '2019-05-22 21:59:51', '2019-05-22 21:59:51'),
(771, 2, 'JYZiIIHsUGJt7m35JkxVXDhHCeXWHeVU', '2019-05-22 22:11:03', '2019-05-22 22:11:03'),
(772, 2, 'uFNJuDwrNrENL7mOZLP08UNk7wwY8gAo', '2019-05-22 22:11:45', '2019-05-22 22:11:45'),
(773, 2, 'v5APrRUncvLZSxs9XE6NCZuTPoixJLN5', '2019-05-22 22:12:35', '2019-05-22 22:12:35'),
(774, 1, 'czauSxWQN84y9c0q5BRZmCP6kX8eCQYI', '2019-05-22 22:15:12', '2019-05-22 22:15:12'),
(775, 1, 'Asy5Ud4DPb5r4nC8k1ILTHJWhdofVZuE', '2019-05-22 22:15:14', '2019-05-22 22:15:14'),
(776, 1, 'lhzNAtPgaDIYnwFIXduH2msWKbpyKtRZ', '2019-05-22 22:15:35', '2019-05-22 22:15:35'),
(777, 1, '5JJrhOPhEXeguqepoEDDO1fwF8BX4fci', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(778, 1, 'ndh08RylmXNTN04K5jiCEjxQ0erVDoG0', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(779, 1, 'Ur4aHXGQoxz3p8UJwFUT24Vi40VWzupU', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(780, 1, 'Si11Cx7bN12bng4vjJW7uxKIW7887BhK', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(781, 1, 'uKrhbGLDoXwhvWSTVx3rt76LEC9bpgs7', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(782, 1, '6M2jxT2A5tcAOgplNWxBmDePgPSow1jS', '2019-05-22 22:18:05', '2019-05-22 22:18:05'),
(783, 1, 'D5svdGtlm1WcXt0NDxdZZghecnaglD4E', '2019-05-22 22:18:06', '2019-05-22 22:18:06'),
(784, 1, 'aRKNONy5joVqlUnzq27giL4IeaW2z656', '2019-05-22 22:18:06', '2019-05-22 22:18:06'),
(785, 2, 'lf78vKPPfEl70V8K1pvcA88aO9WrRpu5', '2019-05-22 22:18:57', '2019-05-22 22:18:57'),
(786, 2, 'Hz9Bk26plKnrxp0Ntd7i1VkC3uhTrSyh', '2019-05-22 22:19:27', '2019-05-22 22:19:27'),
(787, 2, 'HlXfVX1qFwazcGp7OB74o3hLeKlsRyVc', '2019-05-22 22:23:47', '2019-05-22 22:23:47'),
(788, 2, 'ofCbP8lGcUjpYTOEi9ex7slp8yV5WZKS', '2019-05-22 22:24:50', '2019-05-22 22:24:50'),
(789, 1, '1vhoGXx1PxswwkMDgFBNpAZpxsmB41AN', '2019-05-22 22:50:07', '2019-05-22 22:50:07'),
(790, 2, 'agLhUGSdefjs8pp2BWOftoCtFlppFkoQ', '2019-05-22 22:54:30', '2019-05-22 22:54:30'),
(791, 2, 'WPfcuNOHQFYI4FYPHTOuUHdwGUKgjizS', '2019-05-22 22:55:39', '2019-05-22 22:55:39'),
(792, 2, 'jcbtTAIyw9TLvfCq2q3DBOBJWEnG1YJM', '2019-05-22 22:58:52', '2019-05-22 22:58:52'),
(793, 2, '0hEAbQid9DmJ2IOd8UxGUvYJmN43rIcm', '2019-05-22 22:58:55', '2019-05-22 22:58:55'),
(794, 2, 'pxG3Pd9OVHVr2HmXmqwugRi2xdW5Zcs4', '2019-05-22 22:58:55', '2019-05-22 22:58:55'),
(795, 2, 'd2vckSSUAGji7kZOS2ylB6KsbzG0AomR', '2019-05-22 22:59:41', '2019-05-22 22:59:41'),
(796, 2, '9jmRQf5FRiVrBrcsfGfuDwELB9mLqFt3', '2019-05-22 23:24:57', '2019-05-22 23:24:57'),
(797, 2, 'dZA56SD5i4GUFTV45S4qhnXDgTLnNgGy', '2019-05-22 23:24:57', '2019-05-22 23:24:57'),
(798, 2, 'WwqQT1oWnhJ5F4mP20lGPFlkkr68ufLU', '2019-05-22 23:24:59', '2019-05-22 23:24:59'),
(799, 2, 'KbmPbROYEaSFbPUana1gDzSfMrx5m1AN', '2019-05-22 23:24:59', '2019-05-22 23:24:59'),
(800, 2, '1wajBpkzU4M9oF4DIG5LKQpyeDO6vaEq', '2019-05-22 23:25:13', '2019-05-22 23:25:13'),
(801, 2, 'h4VSCqqBM3OlqCitNCWZbnqfTlqwWPT3', '2019-05-22 23:25:13', '2019-05-22 23:25:13'),
(802, 2, '40Hg2NEFZhhkwObJAOFWj1Sit4TsDtH7', '2019-05-22 23:32:13', '2019-05-22 23:32:13'),
(803, 2, 'lxdLKrXEsr42Otc25wEK7l8lUT1Jdd3x', '2019-05-22 23:32:14', '2019-05-22 23:32:14'),
(804, 2, 'tic52VI5gg33DShD1QMfwZRXvKrf83Dw', '2019-05-22 23:32:17', '2019-05-22 23:32:17'),
(805, 2, 'o5vl7lAoTcxevzsUJ6M20NwErIhtBdM6', '2019-05-22 23:32:17', '2019-05-22 23:32:17'),
(806, 2, 'NxSl5O70oCTqqMhgcPWxCT6D9ByfgkGt', '2019-05-22 23:32:21', '2019-05-22 23:32:21'),
(807, 2, 'yOQMA9s2OldfvySVyVRPqjoJjt7yS4Pj', '2019-05-22 23:32:29', '2019-05-22 23:32:29'),
(808, 2, 'ibsQWc6kgrnfSCmglEMChtkxLDmnjYxF', '2019-05-22 23:32:29', '2019-05-22 23:32:29'),
(809, 1, 'sPvHstIi1dzk4HtAyfOK2152F56Uzmw0', '2019-05-22 23:32:49', '2019-05-22 23:32:49'),
(810, 1, '1kV0yzD1XZdXNfyyFr63qNKcv6ImtibA', '2019-05-22 23:32:50', '2019-05-22 23:32:50'),
(811, 1, 'tLGlrUtYvGU4SmxbDPSTCfknmW39CUHN', '2019-05-22 23:33:09', '2019-05-22 23:33:09'),
(812, 1, '1e2PsW45PKuTrUg79kPeWncZRD0wKGbh', '2019-05-22 23:33:10', '2019-05-22 23:33:10'),
(813, 1, 'SOu5gY0BXvkD1R8TL7KbRYZ9SWrqiR0u', '2019-05-22 23:33:10', '2019-05-22 23:33:10'),
(814, 2, 'PkRIIFEy6Bnculul6oN1GIxv5HnAsLpG', '2019-05-22 23:33:17', '2019-05-22 23:33:17'),
(815, 2, 'fNz70JCnDmhTyeeJQsQorEuTBDTmQ3I3', '2019-05-22 23:33:17', '2019-05-22 23:33:17'),
(816, 1, 'hg4rprShDmVyhdN0Upvm2mbBf2tCzCZI', '2019-05-22 23:33:25', '2019-05-22 23:33:25'),
(817, 1, 'NhDnXYPkdekYVaIHzraOpndoVgWxFjIB', '2019-05-22 23:33:25', '2019-05-22 23:33:25'),
(818, 1, 'MYUXjvatX5oXMBDIaSOlraB1vu5kpLbP', '2019-05-22 23:33:28', '2019-05-22 23:33:28'),
(819, 1, 'TszCBLdy9siD3s7IB9Tu7VInFZaOdtba', '2019-05-22 23:33:28', '2019-05-22 23:33:28'),
(820, 1, 'py7xX2u1chHySzUwTCXf7aPINuVysaI7', '2019-05-22 23:33:34', '2019-05-22 23:33:34'),
(821, 1, '3IlA37S3Nk0PrZKW2ipwVO7wPwpywjvQ', '2019-05-22 23:33:34', '2019-05-22 23:33:34'),
(822, 1, 'ru7jW93RU7oxlRmmN9gq5oChQHOG3XVI', '2019-05-22 23:33:50', '2019-05-22 23:33:50'),
(823, 1, 'Zqr9XGyVazkYK23fgV8fbIqU7zIz623A', '2019-05-22 23:33:51', '2019-05-22 23:33:51'),
(824, 1, 'Kqzx9tLhthSApy8wF0MULHvJwQlurzCO', '2019-05-22 23:33:52', '2019-05-22 23:33:52'),
(825, 1, '8UW9tnVpdN302lVaxeshyvAWVjUimKKm', '2019-05-22 23:33:52', '2019-05-22 23:33:52'),
(826, 1, 'Cj8JdQDclBXMCDylHSWH7Xpnr6WaNe9I', '2019-05-22 23:34:00', '2019-05-22 23:34:00'),
(827, 1, 'Bs7IcKjIfhH6Y6lbBUMN5JFJwnttD8zC', '2019-05-22 23:34:00', '2019-05-22 23:34:00'),
(828, 1, '0JfUSe3SjJRH1FtJnqjq942oCC53pWdo', '2019-05-22 23:35:09', '2019-05-22 23:35:09'),
(829, 1, 'wzuY19SngBLgnzoaRMh7F8oBAw6rvAi7', '2019-05-22 23:35:09', '2019-05-22 23:35:09'),
(830, 1, 'XN7zRDsBxgX2nuq8s8NN5mQFdvRxG8xJ', '2019-05-22 23:35:11', '2019-05-22 23:35:11'),
(831, 1, 'CWVirihsFREyBXyIzzK79MJT1QOhMQtD', '2019-05-22 23:35:11', '2019-05-22 23:35:11'),
(832, 1, 'OAUunkA7Lu7T65sssvETzGunpOyq7Xeg', '2019-05-22 23:35:16', '2019-05-22 23:35:16'),
(833, 1, 'PtNTRFDXPDQrSOGxDfxxMznNPbE8UukL', '2019-05-22 23:35:16', '2019-05-22 23:35:16'),
(834, 1, 'A5SddCdRb6O3jJwG0XYAvILFeRBKryXo', '2019-05-22 23:37:27', '2019-05-22 23:37:27'),
(835, 2, 'sOO6Vt6pAurFu8eTgoXswsayvwRtcTpZ', '2019-05-22 23:37:27', '2019-05-22 23:37:27'),
(836, 2, 'amCn5x4Ru78epXVLsI5imDHyif0MbmH5', '2019-05-22 23:37:28', '2019-05-22 23:37:28'),
(837, 1, 'drSh73TFq1RRWNaV6aJOJtct7itJIhUQ', '2019-05-22 23:37:28', '2019-05-22 23:37:28'),
(838, 2, 'Us1CshWwTpmeRkKTuuILj2C1DMssUI7l', '2019-05-22 23:37:30', '2019-05-22 23:37:30'),
(839, 1, 'ijyamvtrtZjP3ePMJ2FyqdaBchxsThOz', '2019-05-22 23:37:30', '2019-05-22 23:37:30'),
(840, 2, 'kidkeB0mHr7pPXQLlkJq7bMtS7LmMP7g', '2019-05-22 23:37:31', '2019-05-22 23:37:31'),
(841, 1, 'iJdzjrrZ3ye1FQCDQfqBcT9r68EAIOug', '2019-05-22 23:37:31', '2019-05-22 23:37:31'),
(842, 1, 'miFLoOVvuPxm49UhsMKfKQrporxXvxwV', '2019-05-22 23:38:49', '2019-05-22 23:38:49'),
(843, 2, '1hk9KCubw68diERRe9sLqDJt846TDZGv', '2019-05-22 23:38:49', '2019-05-22 23:38:49'),
(844, 1, 'wWBAPx4mxlLD682u2DQlvvemBOslZ5ON', '2019-05-22 23:38:50', '2019-05-22 23:38:50'),
(845, 2, 'p6sg1wsXo8fEov8YmfVEQEsAO40b8jNY', '2019-05-22 23:38:50', '2019-05-22 23:38:50'),
(846, 1, 'wy7TibCOUwWt7j7BpRsjatjDAU2SQAHi', '2019-05-22 23:39:25', '2019-05-22 23:39:25'),
(847, 2, 'Vl0O7vN3IWuOh11ZChICvTEhszpK1FzN', '2019-05-22 23:39:25', '2019-05-22 23:39:25'),
(848, 2, 'nMl4mMxiHGXuEo6fMHJSMRJ6LSt9CPPd', '2019-05-22 23:39:25', '2019-05-22 23:39:25'),
(849, 1, 'vGdv140xmNZh3m42hWRDTNVoXNnfIM8a', '2019-05-22 23:39:25', '2019-05-22 23:39:25'),
(850, 1, 'qPfkQ3EyMoHp3XzSwh8wJQjAjLiQXH7X', '2019-05-22 23:44:12', '2019-05-22 23:44:12'),
(851, 2, 'X26jAfwsOewkURTrzSiRyBLMBqEtG0bN', '2019-05-22 23:44:12', '2019-05-22 23:44:12'),
(852, 1, 'dUrCWIqU2RYnq6ohCe9nDKXXNRPsLSXF', '2019-05-22 23:44:12', '2019-05-22 23:44:12'),
(853, 2, 'QH5ODWozJA5r2rlhvluDntXfjanio9F1', '2019-05-22 23:44:12', '2019-05-22 23:44:12'),
(854, 2, 'jykM53XIdqEOgMFUAAxzei1p3aRnXRpm', '2019-05-22 23:49:02', '2019-05-22 23:49:02'),
(855, 1, 'PO3aZVvVmxnfuAN8QFxzDF9Smw29IIEQ', '2019-05-22 23:49:02', '2019-05-22 23:49:02'),
(856, 1, '393TDdbSz1h4eTo9HzfHPVTuKr8RPwoc', '2019-05-22 23:49:02', '2019-05-22 23:49:02'),
(857, 2, 'UC2dvQbmgBCbkvZsjmpoqfM5m1YGA4Jh', '2019-05-22 23:49:03', '2019-05-22 23:49:03'),
(858, 2, 'Q3R6BMvd6CuzQZ5k6fzC4eVArOBH4Ipp', '2019-05-22 23:49:36', '2019-05-22 23:49:36'),
(859, 1, 'czdO5k8OgnwnUrd2nR0mMsdD7WkDghlx', '2019-05-22 23:49:36', '2019-05-22 23:49:36'),
(860, 1, 'iKcsq4gcU5VkzN7CgmEaGY9P5DU2wYNs', '2019-05-22 23:49:37', '2019-05-22 23:49:37'),
(861, 2, 'XynS0ShNwwbDL9JymbHpHVCre22XxL25', '2019-05-22 23:49:37', '2019-05-22 23:49:37'),
(862, 2, 'Z1d5Tsc2gTwJ9ZGUKL5HLx1DpE6C1bxQ', '2019-05-22 23:49:59', '2019-05-22 23:49:59'),
(863, 2, 'Olxd8xcL5H0eYmW3pYWknsq2p3Qkmcvm', '2019-05-22 23:50:00', '2019-05-22 23:50:00'),
(864, 2, 'EsHlPcesNz0qUoQ5LSSuDBhiIxaRhxAo', '2019-05-22 23:51:46', '2019-05-22 23:51:46'),
(865, 2, 'MIcMBQufOShQNXtAQc7UbQp1k4BIajMP', '2019-05-22 23:51:47', '2019-05-22 23:51:47'),
(866, 2, 'cMAGxlcv6rQL0z4sdTuJllQ0hxZq6chi', '2019-05-22 23:52:37', '2019-05-22 23:52:37'),
(867, 2, 'wcOqw6a4BgiESHBZaEW7psvv89B2z5U8', '2019-05-22 23:52:38', '2019-05-22 23:52:38'),
(868, 1, '3wdhcC4sDsq1HhlUQAjshCVVBAUrHFQb', '2019-05-23 14:10:16', '2019-05-23 14:10:16'),
(869, 1, 'RfAcDzzfiUo0oukyQrXRBWOUBZxOTbSV', '2019-05-23 14:10:17', '2019-05-23 14:10:17'),
(870, 1, 'b0Z6lb5gCTG0vK4ht4ry6bOtYsGOBflY', '2019-05-23 14:25:14', '2019-05-23 14:25:14'),
(871, 1, 'r4vs87PSvPudC2FCuUiJ0O5lEFVrpmOh', '2019-05-23 14:25:15', '2019-05-23 14:25:15'),
(872, 2, '38G4SqVP3GdK07dZebPieYIN1YPBXr6p', '2019-05-23 14:25:22', '2019-05-23 14:25:22'),
(873, 2, 'dqLNoXDYk5HFzQevVJYeoxkOanPXS8f7', '2019-05-23 14:25:22', '2019-05-23 14:25:22'),
(874, 2, 'ZtA0IDTzK1PMdDwhTqkpYwMTnmt5blYa', '2019-05-23 14:25:27', '2019-05-23 14:25:27'),
(875, 2, 'ydS7v5B1quqrMKbtJmNfqrVY8ivhZSrx', '2019-05-23 14:25:39', '2019-05-23 14:25:39'),
(876, 2, '3iD7t61RGKPsEgVZwiOju5ESjUhaa9TU', '2019-05-23 14:25:39', '2019-05-23 14:25:39'),
(877, 2, 'NuwERfjHIdR7vWZd6w10NzClrVdX0fsC', '2019-05-23 14:31:08', '2019-05-23 14:31:08'),
(878, 2, 'lH925zO8ZrruxAdsDFc7AD21HO6u79zG', '2019-05-23 14:31:09', '2019-05-23 14:31:09'),
(879, 2, 'wr1c2eTcd3TrEuOwDSHrgKDBhw0Q8Lj8', '2019-05-23 14:32:11', '2019-05-23 14:32:11'),
(880, 2, 'gQ7Fx87izCFFx8Wb92lkB5h8VTxCLhd3', '2019-05-23 14:32:11', '2019-05-23 14:32:11'),
(881, 2, 'Lu0kpa5st28Sk5E3rnFIfLFlqDLFsZ2q', '2019-05-23 14:32:23', '2019-05-23 14:32:23'),
(882, 2, 'QSnM3HeltxZyQ8L8gD8qCKcM3Ve2d4xt', '2019-05-23 14:32:24', '2019-05-23 14:32:24'),
(883, 2, 'TVYDtBUfgoNewT1OWboFlpKKuQGRpYfF', '2019-05-23 14:51:27', '2019-05-23 14:51:27'),
(884, 2, 'o6vfdEd4a0zDqvO8ID0aY2WX18GGBUay', '2019-05-23 14:51:27', '2019-05-23 14:51:27'),
(885, 2, '2hwdKtZX9sNtD2rlofpKjzOH1iKoQ5c9', '2019-05-23 14:51:40', '2019-05-23 14:51:40'),
(886, 2, 'CThR0TO4X1TFLXS0rSSRH0e2lgWNsfYu', '2019-05-23 14:51:40', '2019-05-23 14:51:40'),
(887, 2, '0TIF6ZboEiWDIzqRIeygorNCirkYOSm5', '2019-05-23 14:52:13', '2019-05-23 14:52:13'),
(888, 2, 'dAz3PBnf6WcRVcT90Z7SCR2gI2Su254H', '2019-05-23 14:52:14', '2019-05-23 14:52:14'),
(889, 2, 'aXAqIPL4XaSe8AE3A0hcKWTW5s7UZVxd', '2019-05-23 14:53:21', '2019-05-23 14:53:21'),
(890, 2, 'rgPm2s9imig2j3bALnXpzIqEj7iEIPmW', '2019-05-23 14:53:22', '2019-05-23 14:53:22'),
(891, 1, '4IpATKd4Q8mjK3kXnnBRbuVFL6QDoFxz', '2019-05-28 13:33:27', '2019-05-28 13:33:27'),
(892, 1, 'RpTWRmwn10GQ8YmOExPPYr85pUwpKfxW', '2019-05-28 13:33:31', '2019-05-28 13:33:31'),
(893, 1, 'jhT0GdxFDx0bRamj7V562Kh1mi06DFKo', '2019-05-28 13:33:31', '2019-05-28 13:33:31'),
(894, 1, 'sNSHmI33KZyCAR5YCuHczn0KFJK2TFGY', '2019-05-28 13:33:56', '2019-05-28 13:33:56'),
(895, 1, 'qhDAucfGPaBCnSrdZhWRyaFB3Dc8fieQ', '2019-05-28 13:47:19', '2019-05-28 13:47:19'),
(896, 1, 'Wl1ChcRZozPd7JitaV9DCmntSqhKmtuv', '2019-05-28 13:47:30', '2019-05-28 13:47:30'),
(897, 1, 'gRsGMnvdFcm4NHmoA7GZocRGIZY6Qcky', '2019-05-28 13:47:40', '2019-05-28 13:47:40'),
(898, 2, 'hAHI0KR9KCdFEnXAqs15SSpVaejSjFwk', '2019-05-28 13:55:52', '2019-05-28 13:55:52'),
(899, 2, '8Zl9LIfQNQWwafHJoFpxuVlskR9HFIwy', '2019-05-28 14:01:28', '2019-05-28 14:01:28'),
(900, 2, 'fv3HCBea1vkqXidXHrPdMpIxWGNSJsSX', '2019-05-28 14:01:28', '2019-05-28 14:01:28'),
(901, 2, 'xGOjh8qO0cpGP4JG8pp9R0JJejhi659g', '2019-05-28 14:01:28', '2019-05-28 14:01:28'),
(902, 2, 'p7WI8tGsiIwP0oTXHJTGl2CWypsiSS5z', '2019-05-28 14:01:29', '2019-05-28 14:01:29'),
(903, 2, 'w0dSiJNmH2A9HR52TdDVW898kULScIMx', '2019-05-28 14:05:27', '2019-05-28 14:05:27'),
(904, 2, 'k7qvyn6VkaEhT3ZiaBSh27SR3qHV6Tul', '2019-05-28 14:05:36', '2019-05-28 14:05:36'),
(905, 2, 'zxgHbxCnQhuo4Y37lo47R0Dp3suO8Neq', '2019-05-28 14:05:36', '2019-05-28 14:05:36'),
(906, 2, '5bPqWv91RXBrXtcYMvpNliGzUykieDRC', '2019-05-28 14:05:55', '2019-05-28 14:05:55'),
(907, 2, 'iGSaK6nVIs7rikqUY63wiOSKa2aPQfsz', '2019-05-28 14:24:19', '2019-05-28 14:24:19'),
(908, 2, 'PxD6DnyloLSsEZ2lxIxwPq8nFmwN3DTU', '2019-05-28 14:25:29', '2019-05-28 14:25:29'),
(909, 2, 'cdc8lTYvQs5L137D9lUG9ZhsqxW0ip6t', '2019-05-28 14:25:54', '2019-05-28 14:25:54'),
(910, 2, 'Tq07yZbfG4NfS9wQ1TUilDnE3GQDLDNA', '2019-05-28 14:25:54', '2019-05-28 14:25:54'),
(911, 2, 'E0BzjPHLatzztPcHWUUeBZBBYXs5CBd0', '2019-05-28 14:26:09', '2019-05-28 14:26:09'),
(912, 2, 'PglCONsHIOmFtXO9ltlCXNWJCrr6uhNX', '2019-05-28 14:26:25', '2019-05-28 14:26:25'),
(913, 2, 'KUc8XW0trt03NVHapMLCm4o5bdqRcrmy', '2019-05-28 14:26:53', '2019-05-28 14:26:53'),
(914, 2, 'CRBGFaltbcXqVFLIJj4HdjaDDlp43pFw', '2019-05-28 14:27:17', '2019-05-28 14:27:17'),
(915, 2, 'F0rchBsZposKHl6BkIEgjqPi3DC2EDWa', '2019-05-28 14:27:18', '2019-05-28 14:27:18'),
(916, 2, 'sEJzTKL0rkGQfwdYmlY7ZyoWajAQyu0F', '2019-05-28 14:28:40', '2019-05-28 14:28:40'),
(917, 2, 'l0eT0XLhM5BliqA6jp6jo0az4LS4mXqC', '2019-05-28 14:28:44', '2019-05-28 14:28:44'),
(918, 2, 'HN1MudUnrPwuW5v3hkEvVmRywAiLi2Ia', '2019-05-28 14:28:44', '2019-05-28 14:28:44'),
(919, 1, 'xPVi9oWT0hxDMVdl0Aaw0PMzEHMY6rmo', '2019-05-28 15:28:51', '2019-05-28 15:28:51'),
(920, 1, 'vmIfIstDt2IQRnpaggYMBBWzqjoGeVL0', '2019-05-28 15:28:51', '2019-05-28 15:28:51'),
(921, 1, 'XGgL9VW3Vnz0E0m7yhsQzdN7Hjaf4Tmd', '2019-05-28 15:29:07', '2019-05-28 15:29:07'),
(922, 1, '4oZkx5La2pukV0vIFwNmc6148qD3Hwj2', '2019-05-28 15:29:14', '2019-05-28 15:29:14'),
(923, 1, 'rglL9Kh9jEF5KlQj7nejGetLDLidWuyW', '2019-05-28 15:29:27', '2019-05-28 15:29:27'),
(924, 1, 'ZLEKghHq6hOhqfwNNiSI6J1cxPIvTQUt', '2019-05-28 15:29:27', '2019-05-28 15:29:27'),
(925, 1, 'WZnklx9MsMqKK7OfUTwYy0OcUsOriRHn', '2019-05-28 15:29:33', '2019-05-28 15:29:33'),
(926, 1, 'Tmj1uobccgyNuE6Fi5LB5mQkV5wi5WXI', '2019-05-28 15:29:33', '2019-05-28 15:29:33'),
(927, 1, 'SW4aPmUbTauzjpEJn6jTWQ6pDCtwF0jO', '2019-05-28 21:06:20', '2019-05-28 21:06:20'),
(928, 1, 'iK7BkdNxhpbZgYsdgaKvkhvc0KoHGzmu', '2019-05-28 21:06:20', '2019-05-28 21:06:20'),
(929, 1, 'Ac4uaOuHpX9GX9j2uYTYeUUcklwo7aLV', '2019-05-28 21:06:20', '2019-05-28 21:06:20'),
(930, 1, 'SyaizOQrM6fYiYhpCSiAEnsg1rbOCwKo', '2019-05-28 21:06:21', '2019-05-28 21:06:21'),
(931, 1, 'j1k67dR200uB9R3V7BB7o1FN0yLmVJV0', '2019-05-28 21:06:40', '2019-05-28 21:06:40'),
(932, 1, 'EKamDVHp4FWVMxseSAW9orqaTh8cJGz7', '2019-05-28 21:06:40', '2019-05-28 21:06:40'),
(933, 1, 'ce2RtGET1LZzAd3MLGhZMaCXPZWrVu7B', '2019-05-28 21:06:40', '2019-05-28 21:06:40'),
(934, 1, 'Gtrp16uUHpIdrsWCtnfdypJIUpsTlUF2', '2019-05-28 21:06:41', '2019-05-28 21:06:41'),
(935, 1, 'R1ZOGWPqgQBMkdAPkNjtEyNuDTGR91bA', '2019-05-28 21:09:21', '2019-05-28 21:09:21'),
(936, 1, 'Nzt6VfGhr2WjKD5E7Fs4x1nBlhUIPzxX', '2019-05-28 21:09:21', '2019-05-28 21:09:21'),
(937, 1, 'FCbquXZzBJiFIHHkD9pZnfOeJdK7tdVG', '2019-05-28 21:09:21', '2019-05-28 21:09:21'),
(938, 1, 'FMs2g32nA7on1aPTv6ndG1M5nB45DPwY', '2019-05-28 21:09:24', '2019-05-28 21:09:24'),
(939, 1, '2aIBOmMAbTwF4o8euT6dMJ0gFrAdx9CG', '2019-05-28 21:53:44', '2019-05-28 21:53:44'),
(940, 1, 'CXRsgwz3hnQcvy0YwPARlpaDeCDl4RcK', '2019-05-28 21:53:44', '2019-05-28 21:53:44'),
(941, 1, '8979iKMxrWzpQ2udvOWUSV7dLyXbX1tW', '2019-05-28 21:53:44', '2019-05-28 21:53:44'),
(942, 1, 'k8E5NtUHEyEd5qXF6zhcQmJk9fk6QP0m', '2019-05-28 21:53:45', '2019-05-28 21:53:45'),
(943, 1, 'amOwiAxqtzkhGehysAlfUA2KbZGyYHcO', '2019-05-28 23:03:34', '2019-05-28 23:03:34'),
(944, 1, 'P6aXZhDweIuomFONEtVJIPpsFjG2YtBF', '2019-05-28 23:03:34', '2019-05-28 23:03:34'),
(945, 1, 'eE2D1HyqcGX1pxAtLK2nt39jf8giPPCW', '2019-05-28 23:03:34', '2019-05-28 23:03:34'),
(946, 1, '3guP4Kjb5xzGpT0yReZnuxH8UPXyS6yS', '2019-05-28 23:03:34', '2019-05-28 23:03:34'),
(947, 1, 'rtTgSzAiJUZnlgMkrYpPqUha08dWYBVH', '2019-05-28 23:03:34', '2019-05-28 23:03:34'),
(948, 1, '537u9SJEUaRZnUy2STS893moQpnaoG4k', '2019-05-28 23:03:35', '2019-05-28 23:03:35'),
(949, 1, 'wgHkDQvqnU4lVlvryvGuylHpKVliWQ7C', '2019-05-28 23:03:36', '2019-05-28 23:03:36'),
(950, 1, 'uC96haJLXjwY4S2BpwlUs8AoQbMrSjYh', '2019-05-28 23:03:36', '2019-05-28 23:03:36'),
(951, 1, '9Th2RAFWlkCvnyKPzizzdYtAvGF5d7Gg', '2019-05-28 23:04:21', '2019-05-28 23:04:21'),
(952, 1, 'HHu46MIC3YgEIIOaAiXauAUmEdWpoZ7e', '2019-05-28 23:04:21', '2019-05-28 23:04:21'),
(953, 1, 'jVXiYZn5faLEVlmSTFZYSg3rHo2FR4ME', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(954, 1, '8X3YRKbWAc9KN9BG9V9bF2Pl8z9f65j3', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(955, 1, 'olraieuD5IwZu8Ivl6kIWlxWsmjaxh4d', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(956, 1, 'k6fEZqkVqzcSol0lu3AXkUSiEVkYxgZW', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(957, 1, 'tFCrv4K1pAaTvU8dGCjO2seruIpWsYH0', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(958, 1, 'i5fCDg0iIqsHQsKvY4vhc3CSeis3JZFW', '2019-05-28 23:04:22', '2019-05-28 23:04:22'),
(959, 2, 'CQUgLPQrcGogttikuPxTbiRS8GlDObFY', '2019-06-04 15:42:20', '2019-06-04 15:42:20'),
(960, 1, 'AQW9Xx3On4fIp7r2rjHebnpIrU9wCXoU', '2019-06-06 14:16:50', '2019-06-06 14:16:50'),
(961, 1, 'IRmz0OhxxDopR08mr9ZXp7o1MDj296sM', '2019-06-06 14:16:50', '2019-06-06 14:16:50'),
(962, 1, 'llnhGHAaJv90GyHFFvfbnIlyh69t8l8i', '2019-06-06 14:16:50', '2019-06-06 14:16:50'),
(963, 1, 'BVbzkd18Mj2FJrgOMvSQAdBCJThJrHfQ', '2019-06-06 14:16:52', '2019-06-06 14:16:52'),
(964, 1, 'ipYNumRQfWkjBrS7RLaU5Ez8N0IlhtNH', '2019-06-06 14:17:36', '2019-06-06 14:17:36'),
(965, 1, 'Q6FvwWDV3IpRBUEPWxgoeAPN6hAmynqH', '2019-06-06 14:17:36', '2019-06-06 14:17:36'),
(966, 1, '0hJ9T9B7ikyC9PTRtmUy4UJO8wvsBxSQ', '2019-06-06 14:17:36', '2019-06-06 14:17:36'),
(967, 1, 'YpJXvAeNY6BJISkyIrxLqBIz3WNLraPt', '2019-06-06 14:17:37', '2019-06-06 14:17:37'),
(968, 1, 'ij8vUHEWUJTDVqnGkqBkE3NwgDdTm49K', '2019-06-06 14:39:23', '2019-06-06 14:39:23'),
(969, 1, 'JXLIEBS5RlUFYhfgE7DTfxjGmMk19vHD', '2019-06-06 14:39:23', '2019-06-06 14:39:23'),
(970, 1, 'A3Js2pN4a4FPIVVsMlTJwpNu3lwufxpG', '2019-06-06 14:39:23', '2019-06-06 14:39:23'),
(971, 1, 'qJpT6XoCm9JQYmWG0QjA91y2VjNfRdxO', '2019-06-06 14:39:23', '2019-06-06 14:39:23'),
(972, 1, 'ktrpuqbbnsOyNR7HSfr93lbR3ijT1Ivf', '2019-06-06 14:39:23', '2019-06-06 14:39:23'),
(973, 1, 'fYHAqrgzuWokzlKsSWYqZl76iZnoKffW', '2019-06-06 14:39:24', '2019-06-06 14:39:24'),
(974, 1, '21ePOeHfpLSn1tyYqltDuCDUCXerzdh3', '2019-06-06 14:39:24', '2019-06-06 14:39:24'),
(975, 1, 'eZRVA722dLfbEweCDiSq5oj2mcxibzLe', '2019-06-06 14:39:25', '2019-06-06 14:39:25'),
(976, 1, 'iLBWQF2DSxU4D2FgsM0rztEqZgQZD91y', '2019-06-06 14:39:37', '2019-06-06 14:39:37'),
(977, 1, 'rKS7Lk8O8E48RrEzCPn5KN98QK7y0s6i', '2019-06-06 14:39:37', '2019-06-06 14:39:37'),
(978, 1, '6SvKmVn8DLTKCqbhYTSnA4IgJRJNPaJA', '2019-06-06 14:39:37', '2019-06-06 14:39:37'),
(979, 1, 'xEXRwqPeImKitYfryIsH2qmk79n0FWU1', '2019-06-06 14:39:37', '2019-06-06 14:39:37'),
(980, 1, 'VUlENLwMyuu2O4HBnHv9Hx3uBXW4Jiot', '2019-06-06 14:39:37', '2019-06-06 14:39:37'),
(981, 1, 'pFC2QcsjSv9gLHgbhCuarKZTdau5mhIf', '2019-06-06 14:39:39', '2019-06-06 14:39:39'),
(982, 1, 'Z2TYa8YuMEnddPR6A89NvI0EvpxTSQM0', '2019-06-06 14:39:39', '2019-06-06 14:39:39'),
(983, 1, 'd3t8gNZtQTCRSIKWaKrr1He1AnFiwweK', '2019-06-06 14:39:40', '2019-06-06 14:39:40'),
(984, 1, 'v0Q93ARRgNpTXQvnnunAkOTMwLSyM2eR', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(985, 1, 'IgZ0oFiPudbtMsQy9L7j5CbR2YpjwOH6', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(986, 1, 'GSLiPA0HcDfezGQd1yK6T6nN8vjJFHfv', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(987, 1, 'J2Cgq3YIlz1RrOJ6QA3NKLfEZmBq9lqh', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(988, 1, '0rkX3qN6CXpzvQa1IP1NdOIGOsgJZLQO', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(989, 1, 'qiSrwOIBgFedxVGytZMB61ay3IP2O47t', '2019-06-06 14:52:34', '2019-06-06 14:52:34'),
(990, 1, 'v3m9PnWP0VNheEuGJI9ZA0kP7T63iKcp', '2019-06-06 14:52:35', '2019-06-06 14:52:35'),
(991, 1, 'eOWIH6zMPq7l5tJ20fVMZ0n8qjA2MMFr', '2019-06-06 14:52:35', '2019-06-06 14:52:35'),
(992, 1, 'sEiELN6bTiED5DfgIrTgrdeHvmAEjxFy', '2019-06-06 15:05:40', '2019-06-06 15:05:40'),
(993, 1, 'HIY7vgHbpLtSF6BdVQoJjE4xzuChJefh', '2019-06-06 15:05:40', '2019-06-06 15:05:40'),
(994, 1, 'kHpu7SFT2WveCWZJkzeGAMUd7uYnh5sT', '2019-06-06 15:05:40', '2019-06-06 15:05:40'),
(995, 1, 'xSTFTdfjEVbyCJQrHotfFnebGDT5FKMQ', '2019-06-06 15:05:41', '2019-06-06 15:05:41'),
(996, 1, 'TBtx4MuR2kCHyzVoK626LTB7zGr4D6es', '2019-06-06 18:02:07', '2019-06-06 18:02:07'),
(997, 1, 'BWor4d0Fkksb3S8VfmRbkYv3K7osuTAk', '2019-06-06 18:10:54', '2019-06-06 18:10:54'),
(998, 1, 'KW9lqWR79iJ6H7JyCFaRoUyrT25Ygpqe', '2019-06-06 18:10:54', '2019-06-06 18:10:54'),
(999, 1, '0VDs5sBoIi9ArM0CgdjuVd8WSxNBkFw6', '2019-06-06 18:12:31', '2019-06-06 18:12:31'),
(1000, 1, '1NRv09Vit5TvYnhd9PodTLifv42VeE5p', '2019-06-06 18:12:31', '2019-06-06 18:12:31'),
(1001, 1, 'Ifu4iW7mq6sR7wCff50hZtQriiscWLSQ', '2019-06-06 18:48:31', '2019-06-06 18:48:31'),
(1002, 1, '8reHCfLzGuR9F1ua4HS9qSXeDjD5BXif', '2019-06-06 18:48:31', '2019-06-06 18:48:31'),
(1003, 1, 'uSQRvTYpqGAHl0H4VeKPWkRUCVXYrQZC', '2019-06-06 18:56:35', '2019-06-06 18:56:35'),
(1004, 1, 'hHaw3Yo2WM3qM46Ru1mL6yihkdBWpgPK', '2019-06-06 18:56:35', '2019-06-06 18:56:35'),
(1005, 1, 'e3sevUKWJk7Hr1rHet3CJJIoaszpxuCa', '2019-06-07 23:58:06', '2019-06-07 23:58:06'),
(1006, 1, 'IjnuQI3uW2H6nZVfpuke4oxiaUvir7iF', '2019-06-07 23:58:16', '2019-06-07 23:58:16'),
(1007, 1, 'MXNnYM9TnQj5xhZkgWk8gpEhAMWiQQ82', '2019-06-07 23:58:18', '2019-06-07 23:58:18'),
(1008, 1, 'P7WBgwx9bxa2NRfHOkRMCE4YTwYcuVcF', '2019-06-07 23:58:18', '2019-06-07 23:58:18'),
(1009, 1, 'IwM0aHRKBIAIxmgbn3aCfCfHu9WcjUp9', '2019-06-07 23:58:26', '2019-06-07 23:58:26'),
(1010, 1, 'FCEsVXKQfNJXHX4qCI7MFmPr9470xdGP', '2019-06-07 23:58:26', '2019-06-07 23:58:26'),
(1011, 1, 'BzlpakiUqB9h2DisSIAT5m1W0KremxEd', '2019-06-08 00:02:38', '2019-06-08 00:02:38'),
(1012, 1, 'znMspf5PUgdWCcakxEyrYk7yfEnU8bm9', '2019-06-08 00:02:40', '2019-06-08 00:02:40'),
(1013, 1, 'EmjXoeHHaJzsgeQqDymsOCMNZ8CwXa4q', '2019-06-08 00:02:40', '2019-06-08 00:02:40'),
(1014, 1, 'pTjAmoCRJw5FzXQ6kkurQJ69M8ihzTGF', '2019-06-08 00:02:47', '2019-06-08 00:02:47'),
(1015, 1, 'xAwd7aYMdcHnA8wFwWLi5T7UnBjOT5i9', '2019-06-08 00:02:47', '2019-06-08 00:02:47'),
(1016, 1, 'xUMFwTWaYfekjqlTnVioU7UMbePRGjd8', '2019-06-08 00:02:50', '2019-06-08 00:02:50'),
(1017, 1, 'twrln9oBDjD73pOzBjRBlponIcyz2XbP', '2019-06-08 00:02:50', '2019-06-08 00:02:50'),
(1018, 1, 'ImTEadtHTpJOa45T0WUjEve5rwqmShP4', '2019-06-08 00:03:05', '2019-06-08 00:03:05'),
(1019, 1, 'AnbAUbdT03RRhzp8DAbiGUv5MhzB7Eao', '2019-06-08 00:03:11', '2019-06-08 00:03:11'),
(1020, 1, 'pWOnJUmLmB39BCJIPJF3xrvufWMk7qGB', '2019-06-08 00:03:12', '2019-06-08 00:03:12'),
(1021, 1, 'NW1Z8n6da8jZlZtMFqogXSTfJButEC4L', '2019-06-08 00:03:12', '2019-06-08 00:03:12'),
(1022, 1, 'sVpKEKxHPDUwUUCBrqVj0HzRVvyFrRJY', '2019-06-08 00:03:25', '2019-06-08 00:03:25'),
(1023, 1, 'H9fljaOmCn0rVZuFUeJ0lVbkcYgoPIQq', '2019-06-08 00:03:26', '2019-06-08 00:03:26'),
(1024, 1, '18jy1Gafvlz5i9wCgciIfWmRz1nKpIdV', '2019-06-08 18:14:39', '2019-06-08 18:14:39'),
(1025, 1, 'Kempa5kQdM7uIGxIjOmd7rnueQpxOiUi', '2019-06-08 18:14:53', '2019-06-08 18:14:53'),
(1026, 1, 'pRSmTpiTYdk5B9k21GW5YgPU1z7PfSqq', '2019-06-08 18:15:01', '2019-06-08 18:15:01'),
(1027, 1, 'x2a8sBOoHiE04oze6DwQOP4rMvCvpKfE', '2019-06-08 18:15:11', '2019-06-08 18:15:11'),
(1028, 1, '6psmOkItSeABIVGd0VzGZkpwfhtmal7z', '2019-06-08 19:01:06', '2019-06-08 19:01:06'),
(1029, 1, 'EHAQyTFqFpFy3UZ3pSu8nvtQ2fgdYMD8', '2019-06-08 19:01:06', '2019-06-08 19:01:06'),
(1030, 1, 'qttl1LEf3wJzp185XqjsYpnYljc9Zro4', '2019-06-08 19:01:13', '2019-06-08 19:01:13'),
(1031, 1, 'wNJNZslIenHl1vrXsEsv7AZ5b2SqvaDl', '2019-06-08 19:01:13', '2019-06-08 19:01:13'),
(1032, 1, 'ZchFbAw3J2d8b8QgbuBQaTgKVlBv3sOu', '2019-06-08 20:40:33', '2019-06-08 20:40:33'),
(1033, 1, '4xDggixIYaGagOjmOf4vJ3B3kp5bJ5Ou', '2019-06-08 20:40:42', '2019-06-08 20:40:42'),
(1034, 1, 'v7x5dWdAwtWGohkvidPBMxhs3dBif9MO', '2019-06-08 20:40:52', '2019-06-08 20:40:52'),
(1035, 1, 'C2tihSC7wXayHvzp4khB4NHnYAzWm39Z', '2019-06-10 19:59:24', '2019-06-10 19:59:24'),
(1036, 1, 'hWKo20DjWCDIo7pSaJWKVgTdHmMzqYrY', '2019-06-10 19:59:24', '2019-06-10 19:59:24'),
(1037, 1, 'phxy6KajQPWnEpXI5HyEiNKWtaWTCbKo', '2019-06-10 20:03:14', '2019-06-10 20:03:14'),
(1038, 1, 'zPsf6ztxZ52azwCeHafV7I43GuLxcmY7', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1039, 1, 'glNL3f3YSsoZ7WIXgEWWi8IXCn4XZE4Y', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1040, 1, 'SeyF9AC4mLqyN0p1TqKMFo8OnZjDFnDN', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1041, 1, '2txcP39rmweofpkq2lRAUlWCgAPqYmkk', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1042, 1, 'o0snWZ6bM1E6pe7hw5hAMAxa1LEdwiTQ', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1043, 1, 'OpJ4XKDo57WEcknr5kYOkwN4kyCOiilr', '2019-06-10 20:25:53', '2019-06-10 20:25:53'),
(1044, 1, 'OHwtJpKwJuRwoUKQGIkpkT1KpBiAUcqR', '2019-06-10 20:25:54', '2019-06-10 20:25:54'),
(1045, 1, 'uXQOzTXUYWHWH6LSe3rZuFxYNlMf4FH9', '2019-06-10 20:25:54', '2019-06-10 20:25:54'),
(1046, 1, 'yACI3kLUCyL6NiPoLmhAPHkgedekJGn2', '2019-06-10 20:29:34', '2019-06-10 20:29:34'),
(1047, 1, 'cUR3UoFUBWW5tRZan7XncgVW20LmbeQN', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1048, 1, '9RvOfLJGhnXqerjNbQLVEvsw4Cmk5PFq', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1049, 1, 'wNRVtP8XfsiEm8d04tdVQ2PKk4KnrsUC', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1050, 1, '87eTkjU5lqcbVkovba69il75HQTmPH01', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1051, 1, 'fjXmQrGARRQuAoZHe7Br2ofMN3uuhyE9', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1052, 1, 'qV5iUV2IXqVhd3Nf5wpezFV5cxc2hDin', '2019-06-10 20:29:35', '2019-06-10 20:29:35'),
(1053, 1, 'QwQMNpMXQRr1zJKqRwm1kncsNQl1jaM7', '2019-06-10 20:29:36', '2019-06-10 20:29:36'),
(1054, 1, 'bQy6W8RUexc0vZUh4lib2PH3NM8F5aVT', '2019-06-14 15:23:50', '2019-06-14 15:23:50'),
(1055, 1, 'P8akJvpiMhM5U5KXKYpoxQUAkp9mz3er', '2019-06-14 15:24:43', '2019-06-14 15:24:43'),
(1056, 1, 'bDVpoy2ztdm9tISOwEWtkAnFxTNIk07l', '2019-06-14 15:24:43', '2019-06-14 15:24:43'),
(1057, 1, '3n3VNgsnTKcHolbfRjmnYUVkKmBRu0uc', '2019-06-14 15:24:43', '2019-06-14 15:24:43'),
(1058, 1, 'AmRCt9NRaFNa2dnWMqwPfKlPE5mjYP9I', '2019-06-14 15:24:43', '2019-06-14 15:24:43'),
(1059, 1, 'ZQZ5TjrlagLfXpaA7UsCOepssDGIRVfg', '2019-06-14 15:24:44', '2019-06-14 15:24:44'),
(1060, 1, '5JgT1rJKzPUoLy1toS9Be8jdpXyyGfBO', '2019-06-14 15:24:44', '2019-06-14 15:24:44'),
(1061, 1, 'XJ0Y73iHEDhT8BBST2n47XANdOQUg2CH', '2019-06-14 15:24:44', '2019-06-14 15:24:44'),
(1062, 1, 'bhob5MzQ7irAnTnpEDom7lRqONj23jp9', '2019-06-14 15:24:45', '2019-06-14 15:24:45'),
(1063, 1, '4Cl2fwF56CQQQ1S3R7UpbG39njWhkqwS', '2019-06-14 15:32:12', '2019-06-14 15:32:12'),
(1064, 1, 'NbW3IeZ7kjm1mxQWpdtBRoi6ZfxxXmQI', '2019-06-14 15:32:12', '2019-06-14 15:32:12'),
(1065, 1, 'OXe5vWrda5WanKj34WN3YPbDcGGixSck', '2019-06-14 15:32:12', '2019-06-14 15:32:12'),
(1066, 1, 'nhwRgf5cVYEDbyEUrvGhknkTZbhu8bEz', '2019-06-14 15:32:13', '2019-06-14 15:32:13'),
(1067, 1, 'IeHMuneRlPqLMa86e30B7S8oeRQ0V5Ul', '2019-06-14 23:36:08', '2019-06-14 23:36:08'),
(1068, 1, 'hnnv8MA0z3gqymcDptNdAxrKEfYfoopF', '2019-06-14 23:36:57', '2019-06-14 23:36:57'),
(1069, 1, 'jmAYW239GbL3Lswc1OVezi5XIkEtteYj', '2019-06-14 23:36:57', '2019-06-14 23:36:57'),
(1070, 4, 'o4ugsy1emUvpBSleCQFf8e4lpySAYzWN', '2019-06-14 23:45:41', '2019-06-14 23:45:41'),
(1071, 1, 'r1lmdxFG6tYMG0mZuSZnIY4CBg2yr7pU', '2019-06-14 23:46:23', '2019-06-14 23:46:23'),
(1072, 4, 'teVuTWEkoaoc5GQcOe2WLdc6ayPEsd7F', '2019-06-14 23:48:17', '2019-06-14 23:48:17'),
(1073, 4, 'Gi6eR6tzlWcc3Bbqq0AQIoCEcnbsSbCp', '2019-06-14 23:48:29', '2019-06-14 23:48:29'),
(1074, 4, 'YZEp57s96Eonlqj6aZWfB8aHB8nwDlkS', '2019-06-14 23:48:31', '2019-06-14 23:48:31'),
(1075, 1, 'sfcEh58VZxdWNmQJH3TY9RqFsbs46H1Q', '2019-06-14 23:49:12', '2019-06-14 23:49:12'),
(1076, 4, 'VGkUD2YCnRjIdgBF5KVOg2VQ8yqcsHH0', '2019-06-14 23:52:20', '2019-06-14 23:52:20'),
(1077, 4, 'U7PStcIxBhOo8JJHIBkKg6kClQ2YGYBN', '2019-06-14 23:52:52', '2019-06-14 23:52:52'),
(1078, 4, 'Vi0wy1hi4fDavmZITCnREHHchgNQW3Q8', '2019-06-14 23:52:52', '2019-06-14 23:52:52'),
(1079, 4, 'heOWtI7GF2M4LE5vdnwaJqoolKHGynJJ', '2019-06-14 23:57:34', '2019-06-14 23:57:34'),
(1080, 4, '62FWgiSLBJtSkS2EAf8A3XvABCzII8gt', '2019-06-15 14:21:49', '2019-06-15 14:21:49'),
(1081, 4, 'RBLIM0JrwzMamUbDM2wpzBLBuTB3Roiw', '2019-06-15 14:26:33', '2019-06-15 14:26:33'),
(1082, 1, 'x9Wc49eX0hEy3vulvM1U5lnr1AQqcLWY', '2019-06-15 14:27:15', '2019-06-15 14:27:15'),
(1083, 1, 'VSPDMNiEA2pSXoTLL01TckhJ79Fp9502', '2019-06-15 14:27:24', '2019-06-15 14:27:24'),
(1084, 1, '94euZeUi1liLY03q0HNwcBbrJX93yMX4', '2019-06-15 14:27:30', '2019-06-15 14:27:30'),
(1085, 1, 'Gd74gRQpSPCU400wFWuJkuQYqnpkjS2S', '2019-06-15 14:27:31', '2019-06-15 14:27:31'),
(1086, 4, 'xCBei62vvuqy5XTENp4L2MJQbir8lPi1', '2019-06-15 14:30:38', '2019-06-15 14:30:38'),
(1087, 4, 'pkh3aqrLg5Rfc8JxfFO6VJ4bc3Tmsd8f', '2019-06-15 14:30:46', '2019-06-15 14:30:46'),
(1088, 4, 'KMkLqghVFkSeJzEXBXACAUuLc8uxqNRz', '2019-06-15 14:30:50', '2019-06-15 14:30:50'),
(1089, 4, 'zV5gzOwGVDK91qQDl3HpfyCAmAYo2tO3', '2019-06-15 14:31:03', '2019-06-15 14:31:03'),
(1090, 4, 'Fon75AazQQyrKTE1mioruTludP0YwBsG', '2019-06-15 14:31:03', '2019-06-15 14:31:03'),
(1091, 4, 'zbWpaMulx4LkcLP66oHXh9v8rSdb3p1y', '2019-06-15 14:31:36', '2019-06-15 14:31:36'),
(1092, 4, '3oGRA2flSIDUsV947fu0ITW9C9Ca0a9n', '2019-06-15 14:31:38', '2019-06-15 14:31:38'),
(1093, 4, '4v9X1LCGPsvkqkkCMzaHkxyJKLKjhmyp', '2019-06-15 14:31:50', '2019-06-15 14:31:50'),
(1094, 4, '6q7emq3VsO91tAnJdVe9Z632S61GMQqU', '2019-06-15 14:31:51', '2019-06-15 14:31:51'),
(1095, 4, '8BV0PYoIJCrHxvf58Y72pvqaJm5LzKR1', '2019-06-15 16:43:59', '2019-06-15 16:43:59'),
(1096, 4, 'MNUMqYaEVL1dSB6wXroDhzmfVzPW8Aqg', '2019-06-15 16:48:25', '2019-06-15 16:48:25'),
(1097, 2, 'oPatmUc8ULukWacq9JqiNj7qn7pcDGa6', '2019-06-19 16:32:00', '2019-06-19 16:32:00'),
(1098, 2, '5l2UcqZjYDA9D8rFhtW0MW6eBYjnI79P', '2019-06-19 16:32:00', '2019-06-19 16:32:00'),
(1099, 2, 'S3f5C6dtblswbJiIgXAdKkPIod1M5wt6', '2019-06-19 16:32:00', '2019-06-19 16:32:00'),
(1100, 2, '1s70N8KCidBh3BhsDhQvbSJg0hZULX8S', '2019-06-19 16:32:00', '2019-06-19 16:32:00'),
(1101, 2, 'HVCOVK75QZ4wIofPrX3tdMvbEVGWtbzZ', '2019-06-19 16:32:00', '2019-06-19 16:32:00'),
(1102, 2, 'pc2fU1otnRX6VVyRbFmngNbnYfKh1GtA', '2019-06-19 16:32:01', '2019-06-19 16:32:01'),
(1103, 2, '91yqHL6NHZNynov1OG6mvAUmgbMXHy2i', '2019-06-19 16:32:01', '2019-06-19 16:32:01'),
(1104, 2, 'VUa9SM1V26jtqLwKAsj1Gpbi8ONCfrT2', '2019-06-19 16:32:02', '2019-06-19 16:32:02'),
(1105, 2, '4XU5K5vd8TeaROnosLSYg1l0dPOtrjX1', '2019-06-19 16:33:37', '2019-06-19 16:33:37'),
(1106, 2, 'zLSjjuwnZhsEFv5WaqpSOPLhR7KqvFxU', '2019-06-19 16:33:37', '2019-06-19 16:33:37'),
(1107, 2, 'x2mujrXZztPBhVqswuaQccnyboPR98aS', '2019-06-19 16:33:37', '2019-06-19 16:33:37'),
(1108, 2, '0vkSFXWMcmCBKXT0VgFEWU845Z21SdxK', '2019-06-19 16:33:37', '2019-06-19 16:33:37');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1109, 2, 'tqshUpUw2kv3UNH4K8wnTQLKSKTy7sVz', '2019-06-19 16:33:37', '2019-06-19 16:33:37'),
(1110, 2, 'opWivSTbcmIvF3uJwnmxL0jeJOZSfYyL', '2019-06-19 16:33:37', '2019-06-19 16:33:37'),
(1111, 2, 'DplMSj59rNZvdJACNqRpsP8Ri8eXXRNc', '2019-06-19 16:33:38', '2019-06-19 16:33:38'),
(1112, 2, 'jrgeeujitprkVh4t2Q7u3YOkXABF1AMG', '2019-06-19 16:33:38', '2019-06-19 16:33:38'),
(1113, 2, 'Oyiyo6vLmm5wbGU3w2FnwSquGCTQZp3Z', '2019-06-19 16:35:15', '2019-06-19 16:35:15'),
(1114, 2, 'mCorIQ6tI2TLe6lBMm4rToeApNk0LU7h', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1115, 2, 'ZLiFFXqjXTOwW45skVuEqWgch4nksKrP', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1116, 2, 'DXvm3emxg0ApqOleaNHPzu1dI1VcGrp3', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1117, 2, 'b0bcMvamCiaGnUNf7F9MWxJCnXPkbSLZ', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1118, 2, 'JRE6XtukEPQj31F9lWfQEbubz5AbnCWS', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1119, 2, 'UupKhvyLe6FptTnSYo7tyz8Pwrqo3TB7', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1120, 2, 'fU7huJPiAEwJ2B35N8Sl2epgEcLMsiUw', '2019-06-19 16:35:16', '2019-06-19 16:35:16'),
(1121, 2, 'TYKaatGRVFRWzij5I4v4k8QMMUOHA8YQ', '2019-06-19 16:37:52', '2019-06-19 16:37:52'),
(1122, 2, 'rlBzrxearTiRWWi3SsBruNYdkRqmyudO', '2019-06-19 16:37:52', '2019-06-19 16:37:52'),
(1123, 2, 'x5a6BmMJbbi3f8epT1cYYGUxDXTPlxKB', '2019-06-19 16:37:52', '2019-06-19 16:37:52'),
(1124, 2, 'WzBSkekwZ1em1TVFKvOIRwRUkkRm96xI', '2019-06-19 16:37:52', '2019-06-19 16:37:52'),
(1125, 2, 'JK6qDKygq9xi9LUwbwFHSy5qFAZQDdCz', '2019-06-19 16:37:52', '2019-06-19 16:37:52'),
(1126, 2, 'DlD2vKeN4j7uQWHVWCwdpplZuovfOGKd', '2019-06-19 16:37:53', '2019-06-19 16:37:53'),
(1127, 2, '4PAolAYEqsaCoiMLCiDs2HUeG1yflm0H', '2019-06-19 16:37:53', '2019-06-19 16:37:53'),
(1128, 2, 'gtkj7hpkewyj7KHjOLdAMTXj0S3xE3y0', '2019-06-19 16:37:53', '2019-06-19 16:37:53'),
(1129, 1, 'HYExJ5daPeTwRUjHiCRAvqOIoUHAajwN', '2019-06-19 17:10:36', '2019-06-19 17:10:36'),
(1130, 1, 'gjoF8GY4iUACDgD2h2cvv5023tevSVul', '2019-06-19 17:10:36', '2019-06-19 17:10:36'),
(1131, 1, 'w5M1YSnSgxRqTB0CGXWoklMED7xYfqls', '2019-06-19 17:10:36', '2019-06-19 17:10:36'),
(1132, 1, 'my0lRlROU36BzTsqLtIS6ERw1qNP1jKx', '2019-06-19 17:10:37', '2019-06-19 17:10:37'),
(1133, 1, 'PkNqtG2E7e5v7gXNQ5pftEyKpMWvLmeo', '2019-06-19 19:24:14', '2019-06-19 19:24:14'),
(1134, 1, '5XMem5JbkKXKVWRsr5fEX07OlYZkXGf3', '2019-06-19 19:25:30', '2019-06-19 19:25:30'),
(1135, 1, 'T5Mflr88qgKfVvsCwIpd1cnI4ADtEwQF', '2019-06-19 19:26:01', '2019-06-19 19:26:01'),
(1136, 1, 'cl0OIN7jgX8lwYeo0aptZvhCM48BYSnI', '2019-06-19 19:26:02', '2019-06-19 19:26:02'),
(1137, 1, 'w0Gf4xitPfOPqFsLSzbJkdc1D92h0TKg', '2019-06-19 19:26:50', '2019-06-19 19:26:50'),
(1138, 1, 'ZxZQ7TkJLt2bCXd3eBaTVW9Hwpksw8nJ', '2019-06-19 19:26:52', '2019-06-19 19:26:52'),
(1139, 1, 'A2VSmuGVB8jPLbsghYr7joe69Y8Tn4NP', '2019-06-19 19:27:03', '2019-06-19 19:27:03'),
(1140, 1, 'DkDuDpQbDYMJfQFStIZBdKAGyqdR5pAl', '2019-06-19 19:27:17', '2019-06-19 19:27:17'),
(1141, 1, 'YUWvsELJ4ZceJhPaLKG3bqmSErsZj8YB', '2019-06-19 19:27:18', '2019-06-19 19:27:18'),
(1142, 1, 'KL4r2oLY9QwtKh9y0U9fFrpFTRv2hgPz', '2019-06-19 19:27:30', '2019-06-19 19:27:30'),
(1143, 1, 'Gp1iCbrFhaz7zIMjimGgDa941L5c2Eaz', '2019-06-19 19:27:30', '2019-06-19 19:27:30'),
(1144, 1, 'bQTgycrUCQ9qEWkaulOVjuunPBhmMIEF', '2019-06-19 19:27:49', '2019-06-19 19:27:49'),
(1145, 1, 'KngV1JORE7qAlmQXOF08nCb7gEYJlMKe', '2019-06-19 19:27:49', '2019-06-19 19:27:49'),
(1146, 1, 'hipeQJRsW5wzyZYvp1skmcQ8kGV8l4Wm', '2019-06-19 19:28:08', '2019-06-19 19:28:08'),
(1147, 1, 'sKa7C1giBkhDcfxwEwXDzHPfWRsef1n7', '2019-06-19 19:28:08', '2019-06-19 19:28:08'),
(1148, 1, 'DgTqCiehEz2bj3IBRhEpo4pDVzvelEPl', '2019-06-19 19:28:14', '2019-06-19 19:28:14'),
(1149, 1, 'INETL4eG0QP7hMLB2KRMqpUnjedfJ58c', '2019-06-19 19:28:29', '2019-06-19 19:28:29'),
(1150, 1, 'cEOfQrlPHpcD7s2ZEuzDtLoE4fvGffv0', '2019-06-19 19:28:29', '2019-06-19 19:28:29'),
(1151, 1, 'mnVh7rNF8B7eaNSvbsIrmuufuFRiQhrr', '2019-06-19 19:28:39', '2019-06-19 19:28:39'),
(1152, 1, 'r5PP3LJddJhOf5IRQCisCLgZlHDXWxfu', '2019-06-19 19:28:48', '2019-06-19 19:28:48'),
(1153, 1, 'VwriftuCki0qKxSHLG7KXMeB1jkNxkot', '2019-06-19 19:28:50', '2019-06-19 19:28:50'),
(1154, 1, 's771jfJUvxYheer21ZnB6sMOCYc4QqVz', '2019-06-19 19:30:16', '2019-06-19 19:30:16'),
(1155, 1, 'A3JLGR6CqdpdmI5rV9X2ts22qjc7p3iD', '2019-06-19 19:30:16', '2019-06-19 19:30:16'),
(1156, 1, 'IxkfhGiaTAIN9Gaw3GYz4FOUDRlJIyGn', '2019-06-19 19:30:22', '2019-06-19 19:30:22'),
(1157, 1, '5jMZOwd6BayUGA7lUtmUF7JTNFgbS1Pc', '2019-06-19 19:30:22', '2019-06-19 19:30:22'),
(1158, 1, 'IMTDL256r08Zu2Xq1cZRPCJpPLMj3AVj', '2019-06-19 19:30:27', '2019-06-19 19:30:27'),
(1159, 1, '9XRBhbkUDMhBXpnFdcvk4BvANG8MkKXE', '2019-06-19 19:30:27', '2019-06-19 19:30:27'),
(1160, 1, 'ZbWIII080nchtdDcEI4WTdNP3pVvLvPH', '2019-06-19 19:30:34', '2019-06-19 19:30:34'),
(1161, 1, 'ytDfMj7W7nlXaCoYCttYSWak6SI1tnbj', '2019-06-19 19:30:34', '2019-06-19 19:30:34'),
(1162, 1, 'P3QZQPnjW9PahKh8JbW4s4aGkUti6W9H', '2019-06-19 19:32:46', '2019-06-19 19:32:46'),
(1163, 1, 'WQZbzfzsVy9xdBY4SIDLnDQq1wDqX6yI', '2019-06-19 19:33:03', '2019-06-19 19:33:03'),
(1164, 1, 'ronIngwemdt1hWEkyyif08TGhXRfxpE5', '2019-06-19 19:33:04', '2019-06-19 19:33:04'),
(1165, 1, 'ouVuTpenzW0itpQagKYw1aXh6U2Hff7a', '2019-06-19 19:33:13', '2019-06-19 19:33:13'),
(1166, 1, 'h9f65UjS081MrbT6wWc2IZayRUlSnUDs', '2019-06-19 19:33:21', '2019-06-19 19:33:21'),
(1167, 1, 'SeElXlgZyRCJ0slBJLJpAYdepvtSynO6', '2019-06-19 19:33:24', '2019-06-19 19:33:24'),
(1168, 1, 'EQSyyZ1kb91AXsDz6mfaaXibALNSnfke', '2019-06-19 19:33:32', '2019-06-19 19:33:32'),
(1169, 1, 'pbcE9RNlMTIiCigpVHUcZEr5YSRQZTAI', '2019-06-19 19:33:32', '2019-06-19 19:33:32'),
(1170, 1, 'w63tZHdB0TsyIcr2MbpTUCOS9DL9wTWZ', '2019-06-19 19:33:38', '2019-06-19 19:33:38'),
(1171, 1, 'eRx1RjBTlLvgRSjwZFMRKBsU96i4BTxo', '2019-06-19 19:33:38', '2019-06-19 19:33:38'),
(1172, 1, 'Ds63kL3nEVrwJtkJhUCzNrtVycHH41gz', '2019-06-19 19:33:43', '2019-06-19 19:33:43'),
(1173, 1, 'CSutcY07iL0svJ5T2xvJVvPsmLOiidRj', '2019-06-19 19:35:25', '2019-06-19 19:35:25'),
(1174, 1, 'fpgY927Bj8u9tYSOF54m78Vkfnp9afNh', '2019-06-19 19:37:44', '2019-06-19 19:37:44'),
(1175, 1, 'duDfRuCsDkI1EM76xEpnt8TkUnsDXOEs', '2019-06-19 19:37:54', '2019-06-19 19:37:54'),
(1176, 1, '2V71uO6SXZUaqt9ahQl16tMq0I1jfqZI', '2019-06-19 19:37:55', '2019-06-19 19:37:55'),
(1177, 1, 'kT5VJC2LmID7jWKpAPOuoHm3DMYRXRMG', '2019-06-19 19:38:05', '2019-06-19 19:38:05'),
(1178, 1, 'PmIKKFYi0JoNewLmcY6GrHQjUWuXa7Gh', '2019-06-19 19:38:13', '2019-06-19 19:38:13'),
(1179, 1, 'Kx21c6YXId0lIVoZpSs9xJzzubsx5Jii', '2019-06-19 19:38:14', '2019-06-19 19:38:14'),
(1180, 1, 'MvxAijvtaXqyNkF0kFnY9CEpIG8UFUMl', '2019-06-19 23:32:14', '2019-06-19 23:32:14'),
(1181, 1, 'DUfGMJHQrR2XLopg54VWtobzzhuHwGOj', '2019-06-19 23:32:14', '2019-06-19 23:32:14'),
(1182, 1, 'EQ0Lfxys02UsXX3RCBlG5sw2R0VfySpe', '2019-06-19 23:32:14', '2019-06-19 23:32:14'),
(1183, 1, '8iRJp0ozaKLqZFnp9ZBw2TumHf1ldsRg', '2019-06-19 23:32:14', '2019-06-19 23:32:14'),
(1184, 1, 'Bvyxkeqprvs59Y1sBbqoRojC8c6rpBSk', '2019-06-19 23:32:14', '2019-06-19 23:32:14'),
(1185, 1, 'ImawQMdI8HoTNHWQwYKVXsis8wANv7dT', '2019-06-19 23:32:15', '2019-06-19 23:32:15'),
(1186, 1, 'WaXC4OhHWT3MzlJ2ce4OYCBzaZrPGwIq', '2019-06-19 23:32:15', '2019-06-19 23:32:15'),
(1187, 1, 'IcOvehz80l8H3lnBGdrySelhE9KhP8MX', '2019-06-19 23:32:16', '2019-06-19 23:32:16'),
(1188, 1, 'KUdgll5X0pIjmgI6tQECbCRLpKb4YADD', '2019-06-19 23:32:46', '2019-06-19 23:32:46'),
(1189, 1, 'fNDhzGtOpTNtikv7H3aHacpJJeW5GHnZ', '2019-06-19 23:32:46', '2019-06-19 23:32:46'),
(1190, 1, 'IR0C2BFbJA8nR9Q5a4Qi7LzOUKoETwjR', '2019-06-19 23:32:46', '2019-06-19 23:32:46'),
(1191, 1, '7GrHfr87BEUWC0j4HQo4LaN3eygH4JCI', '2019-06-19 23:32:46', '2019-06-19 23:32:46'),
(1192, 1, 'KEscHLQqaXrtnHiCryx5uhX8E3xiwZsn', '2019-06-19 23:32:46', '2019-06-19 23:32:46'),
(1193, 1, 'mGyEZIOwTU2NVQDFaeyTZmdW1DG7PaxR', '2019-06-19 23:32:47', '2019-06-19 23:32:47'),
(1194, 1, 'YC4ED0iPNesLTIDsysbcmyJXFPtJBhnA', '2019-06-19 23:32:48', '2019-06-19 23:32:48'),
(1195, 1, 'jqWcCiV0yyhk0p3CGEwrSREVoKMRlSyh', '2019-06-19 23:32:48', '2019-06-19 23:32:48'),
(1196, 1, 'RHHy0eguDA01xZzKVF0jiulz6QglDWkH', '2019-06-20 19:13:31', '2019-06-20 19:13:31'),
(1197, 1, '9BxJcylhTJ6JNwzcmnGJGhYgX34bTet1', '2019-06-20 19:13:31', '2019-06-20 19:13:31'),
(1198, 1, 'sck728yrcQ4zDCOaxOHV0JTac96m6zNW', '2019-06-20 19:13:31', '2019-06-20 19:13:31'),
(1199, 1, 'tlFWqxUHyBLQcaxIbzwM1xcZ8929bpuF', '2019-06-20 19:13:31', '2019-06-20 19:13:31'),
(1200, 1, '9JRpQdthIO9YhjL3dgjz8mkJ6LcBAoUX', '2019-06-20 19:13:31', '2019-06-20 19:13:31'),
(1201, 1, '4dZ3UTMw3TTr3LMLH6Q796cRUVhn1jct', '2019-06-20 19:13:32', '2019-06-20 19:13:32'),
(1202, 1, 'sbEEXluebZoJufIn2O0cegESe6UsVsQu', '2019-06-20 19:13:32', '2019-06-20 19:13:32'),
(1203, 1, 'oMKQzhFsEuNfyiBu3Kh8zzQqFPTDQaYu', '2019-06-20 19:13:33', '2019-06-20 19:13:33'),
(1204, 1, '1uHJ81tWHW9wDwYVUfAxOqGVuLTBcGrj', '2019-06-20 19:16:24', '2019-06-20 19:16:24'),
(1205, 1, 'TUqtDrA8GahOG8yICNTRasI3ed1ybEuD', '2019-06-20 19:16:39', '2019-06-20 19:16:39'),
(1206, 1, 'jLU0MC8cyLbujvJabkI4vG3baK1y2Uia', '2019-06-20 19:16:54', '2019-06-20 19:16:54'),
(1207, 1, 'e2UnSdVu0xbMVLLVUwc5kKnm4pskubfx', '2019-06-20 19:17:17', '2019-06-20 19:17:17'),
(1208, 1, '77sML8KBmia6s9FUlFltTKDNQ5Vi0Ua3', '2019-06-20 19:19:34', '2019-06-20 19:19:34'),
(1209, 1, 'G8NG4AVp7JVePSWozDIwsC0gKGRrXVGH', '2019-06-20 19:19:34', '2019-06-20 19:19:34'),
(1210, 1, 'u3BAXPB8d2FYC1O6HtlYv973saitUMke', '2019-06-20 19:20:26', '2019-06-20 19:20:26'),
(1211, 1, '8XVZv3gXF0zbvyq6yimkFXH8bhNSn0a7', '2019-06-20 19:20:26', '2019-06-20 19:20:26'),
(1212, 1, 'JljZiwhCWPzhoHFm87RnDXDJPOzO3npf', '2019-06-20 19:20:26', '2019-06-20 19:20:26'),
(1213, 1, 'BmUV98sOVd0SmkgGcx1uNndNlhbMxDJV', '2019-06-20 19:20:27', '2019-06-20 19:20:27'),
(1214, 1, 'r5IVVZK5DtCBzhS3M9ekrPsI42RvLV83', '2019-06-20 19:32:54', '2019-06-20 19:32:54'),
(1215, 1, 'kxDBFPTmOGDx1A8XCqnCqtww6qMfCpmr', '2019-06-20 19:32:58', '2019-06-20 19:32:58'),
(1216, 1, 'enepqA5gwkCrtbYo0MKv1PUsj5OPwwg4', '2019-06-20 19:32:59', '2019-06-20 19:32:59'),
(1217, 1, 'Ofgiu3rIdlh1nzYS1XZwKlJwFq5WQykh', '2019-06-20 19:33:21', '2019-06-20 19:33:21'),
(1218, 1, 'DWJuEjhRaofBCzI9ihF68Hvr6zCZMPbN', '2019-06-20 19:33:25', '2019-06-20 19:33:25'),
(1219, 1, 'L4YBS0oTH3TqLWmT5SLHfB8DGrfXVrVu', '2019-06-20 19:34:34', '2019-06-20 19:34:34'),
(1220, 1, 'Rn4sL07rlXyIv2j2CGkFjcGDAibOdSwn', '2019-06-20 19:34:34', '2019-06-20 19:34:34'),
(1221, 1, 'ryjCmsa2wvHoxQBvlRpW9BBXCiVbvdTI', '2019-06-20 20:15:54', '2019-06-20 20:15:54'),
(1222, 1, '3AI2TDkZefwuygEvn3XAIl7TCjwobBCe', '2019-06-20 20:30:30', '2019-06-20 20:30:30'),
(1223, 1, '7TYG6yQUfXxUerm4FsgH9uUJgXXtdIgl', '2019-06-20 20:30:30', '2019-06-20 20:30:30'),
(1224, 1, 'CtmY8X9jQxkHb2aezv7MB4nz7CJtcyFX', '2019-06-20 20:30:33', '2019-06-20 20:30:33'),
(1225, 1, 'mInLJNJaQmlowa0sGrd2voYa1JmZu9fu', '2019-06-20 20:30:33', '2019-06-20 20:30:33'),
(1226, 1, 'XF2JxJBlv2cEET4XILWblaVh9qtudtQ4', '2019-06-20 22:37:00', '2019-06-20 22:37:00'),
(1227, 1, 'F8hD17jeDO0GbnievocuklnI4wJJhXaJ', '2019-06-20 22:37:00', '2019-06-20 22:37:00'),
(1228, 1, 'd6V8bJoN2r2AIc4XLzmfxEfpuOzNamPX', '2019-06-20 22:41:07', '2019-06-20 22:41:07'),
(1229, 1, 'r8lix90X8a9liY8o4u0tUnbqfsuEpqE0', '2019-06-20 22:41:08', '2019-06-20 22:41:08'),
(1230, 1, 'ibCBMB9tH5iShgEPFU1CGArgcxOAdIm9', '2019-06-20 22:41:44', '2019-06-20 22:41:44'),
(1231, 1, 'xbqE0DNZgJdOipG81v4ua84pvbmkSknQ', '2019-06-20 22:41:44', '2019-06-20 22:41:44'),
(1232, 1, 'RE8QTvUU94LzrxZSMiqQuR1LAJKaY4cb', '2019-06-20 22:41:51', '2019-06-20 22:41:51'),
(1233, 1, 'O7AOWovaz7cVnjhq9bxZ74zhem7E10sP', '2019-06-20 22:41:51', '2019-06-20 22:41:51'),
(1234, 1, 'tZ3FjH5F9RqjTUsSpTHOdFk6g25EyYPR', '2019-06-20 22:42:25', '2019-06-20 22:42:25'),
(1235, 1, '3XY6gZZCVjsREuitTQd06C63K3rAUPdL', '2019-06-20 22:42:26', '2019-06-20 22:42:26'),
(1236, 1, 'H0daPxtZD1JpkaOe1Hm41hKMFHpcYrXH', '2019-06-20 22:42:29', '2019-06-20 22:42:29'),
(1237, 1, 'xDWG9B4ob8z0uzmW8vJ2vQeDPCykUbsI', '2019-06-20 22:42:29', '2019-06-20 22:42:29'),
(1238, 1, 'gwLnli0invA7x81mq5QuxUYaNUBiFHJh', '2019-06-20 22:47:55', '2019-06-20 22:47:55'),
(1239, 1, 'Di2icTIZarGwHj7oKnUcPvtE2HAXJ5fa', '2019-06-20 22:47:55', '2019-06-20 22:47:55'),
(1240, 1, 'urHqw7WeBiM1ZTptm1ZIuFB6Ls6ttDGs', '2019-06-20 22:53:09', '2019-06-20 22:53:09'),
(1241, 1, 'c7wodU1DjVa56EpSXJuU7QO4mwrXGfJg', '2019-06-20 22:53:10', '2019-06-20 22:53:10'),
(1242, 1, 'wPr3iVdlRj85V2M3YSAJJpEQagiFJsE4', '2019-06-20 22:53:11', '2019-06-20 22:53:11'),
(1243, 1, 'era3zwoipxDgFV2v8vDs7TXRXiWm3wLJ', '2019-06-20 22:53:11', '2019-06-20 22:53:11'),
(1244, 1, '44zi6Qip4vcvkNGbx0NjJlg3HVgaeJiE', '2019-06-20 22:53:19', '2019-06-20 22:53:19'),
(1245, 1, 'kbjj6dJRYHjOOLijCkWWWUm47BZy0L6d', '2019-06-20 22:53:22', '2019-06-20 22:53:22'),
(1246, 1, 'rBNvSfnD1QRx8rKwio5wJ7LUWp8azL3R', '2019-06-20 22:58:52', '2019-06-20 22:58:52'),
(1247, 1, 'mliGGrlOmlaAmwJYr6KDB9gurRV0nUTD', '2019-06-20 22:58:53', '2019-06-20 22:58:53'),
(1248, 1, 'nwssX2XxnDAlTJ3jiYcb0EAwnjEK2Kb8', '2019-06-20 22:58:54', '2019-06-20 22:58:54'),
(1249, 1, '7Wgn6KdOEc1VaVHkrUeJg10dbczAepvP', '2019-06-20 22:58:54', '2019-06-20 22:58:54'),
(1250, 1, 'er1qYh7z3uGRcsf1fSQFn9OZPSiML4ON', '2019-06-20 23:03:30', '2019-06-20 23:03:30'),
(1251, 1, 'mrAknzwgND43jTrtLKbZrQCnqphbLqhh', '2019-06-20 23:03:30', '2019-06-20 23:03:30'),
(1252, 1, 'P4sLo73KKmJEv7JDmffUU7r2o0rTpHfL', '2019-06-20 23:03:49', '2019-06-20 23:03:49'),
(1253, 1, 'hygO3CEJvnbdbKpTW9zpRYquhdGBWqpx', '2019-06-20 23:03:50', '2019-06-20 23:03:50'),
(1254, 1, 'PH51YUGBKfTMOaY9DUfJBZVVLoqYnUFN', '2019-06-21 14:09:50', '2019-06-21 14:09:50'),
(1255, 1, '9g24HwYEwIIGSlxgQ9q6t3lZfCoOF002', '2019-06-21 14:09:51', '2019-06-21 14:09:51'),
(1256, 1, 'oJ9UKMFJIY5gmGHmohssCM53kcJcCGCX', '2019-06-21 23:38:44', '2019-06-21 23:38:44'),
(1257, 1, 'GwoVQF1W5tk3a5Gfzy9BXpPxn79dSApJ', '2019-06-21 23:38:44', '2019-06-21 23:38:44'),
(1258, 1, 'Aodx6IjaH4NTG4vjMXDFZlYt8UYiHB2N', '2019-06-21 23:38:45', '2019-06-21 23:38:45'),
(1259, 1, 'E6fenm1LpOTo6dsEZAN9bW2lPzf6b9YA', '2019-06-21 23:38:46', '2019-06-21 23:38:46'),
(1260, 1, 'WRXz0tx2gnmsQXRfG4bZtdiVqHifdouQ', '2019-06-22 14:43:45', '2019-06-22 14:43:45'),
(1261, 1, 'rq7qod0GiLFKMEe57OiXWZ6BEp5lxVAA', '2019-06-22 14:43:47', '2019-06-22 14:43:47'),
(1262, 1, 'rz4FBdr5K9t5h0cOqsdtDvzBuwRBi4jk', '2019-06-22 15:04:05', '2019-06-22 15:04:05'),
(1263, 1, 'lBJmyjzx8OoAJbNv3Uo0hNK4xnP0p1Nm', '2019-06-22 15:04:05', '2019-06-22 15:04:05'),
(1264, 1, 'p9ZutUy5kClDP95FZBiYWkElt4xt3wss', '2019-06-22 15:43:07', '2019-06-22 15:43:07'),
(1265, 1, 'wz0CY8DQUtqDUeDhPMXc9IRMUkoW3Wcv', '2019-06-22 15:49:59', '2019-06-22 15:49:59'),
(1266, 1, 'kUcXKTHhwSH1gKXIg7hDwBtslaBtzIcU', '2019-06-22 15:50:15', '2019-06-22 15:50:15'),
(1267, 1, 'VYDdqmTE8aVyWMBpVs2zxJjpWH6eAgii', '2019-06-22 15:50:32', '2019-06-22 15:50:32'),
(1268, 1, '4jMCBDqfr2sbjSTqBbVElmrZKs9VHSvD', '2019-06-22 15:51:30', '2019-06-22 15:51:30'),
(1269, 1, 'zq2suCKwVeLhPKypsdQPgBjf3Zxd6bOj', '2019-06-22 15:51:43', '2019-06-22 15:51:43'),
(1270, 1, 'eZUAhpbW9VGuqF7AKhxy1bs4DEAVegkr', '2019-06-22 15:51:43', '2019-06-22 15:51:43'),
(1271, 1, '48zNYDE2g5yaFdyAEFRkMYjJZ6eCYphH', '2019-06-22 15:51:51', '2019-06-22 15:51:51'),
(1272, 1, 'SYW62d3ToriUYWKrFLdnGVt1tX6XnuK7', '2019-06-22 15:51:51', '2019-06-22 15:51:51'),
(1273, 1, 'U49Iguqsa07rgr6cS4GOmveuYNnN5OBh', '2019-06-22 15:52:19', '2019-06-22 15:52:19'),
(1274, 1, 'abxp1v5yH095KPLEgn24EerpGnoCEAC6', '2019-06-22 15:52:19', '2019-06-22 15:52:19'),
(1275, 1, 'Yxcfm3T5zlqIPG7vgPi76sXObH86ePIn', '2019-06-22 15:52:40', '2019-06-22 15:52:40'),
(1276, 1, '2DMvFQffvhI1K6XFUCquVHzayKVtAiP4', '2019-06-22 15:52:40', '2019-06-22 15:52:40'),
(1277, 1, 'iUkEQDPXchhMEiaJjS5Vzk648Y21OYl7', '2019-06-22 15:52:49', '2019-06-22 15:52:49'),
(1278, 1, 'AthXj2t1ZXK4sm0NdcPhpxuqDVa2F5z2', '2019-06-22 15:52:49', '2019-06-22 15:52:49'),
(1279, 1, 'tGLRyhEqQOuzXUWYj715v3P1N3XduzaQ', '2019-06-22 15:53:43', '2019-06-22 15:53:43'),
(1280, 1, 'CjzovcthytrwoX3Elhn9TfBHu9Gh7RW3', '2019-06-22 15:53:44', '2019-06-22 15:53:44'),
(1281, 1, 'LrvXyTtBDshOzQ40BixAPsqPdJp6nkbs', '2019-06-22 15:53:45', '2019-06-22 15:53:45'),
(1282, 1, 'aj15zvPI6EYVBiZwAwF6vxHjCn1kznwC', '2019-06-22 15:53:46', '2019-06-22 15:53:46'),
(1283, 1, 'UW1I73Kv71VyyUw8O6V5jn6EwOz3NaQC', '2019-06-22 15:58:14', '2019-06-22 15:58:14'),
(1284, 1, 'l68RrTMJmHtabxBXdsd1dbazStHm0zFx', '2019-06-22 15:58:15', '2019-06-22 15:58:15'),
(1285, 1, 'ciQPTEMTFvon9LwDJRCHg2aW2kzK4ZYB', '2019-06-22 15:58:17', '2019-06-22 15:58:17'),
(1286, 1, 'NuPMgS2WaOAzmmBqm8fRrSq6I2h2WgFq', '2019-06-22 15:58:17', '2019-06-22 15:58:17'),
(1287, 1, 'aMC4oFQhUkpDDjorCuTcoggXF805FYiC', '2019-06-22 16:04:50', '2019-06-22 16:04:50'),
(1288, 1, 'DDiUQK9xll7d3bOJhKfMELEZ1Gct5w49', '2019-06-22 16:04:50', '2019-06-22 16:04:50'),
(1289, 1, '9PoYrv9v1vykCecxmI6zxGIzlc646mT9', '2019-06-22 16:04:52', '2019-06-22 16:04:52'),
(1290, 1, 'TAPHxjInwsDPonTvDp8zb1PINVWBj9NN', '2019-06-22 16:04:52', '2019-06-22 16:04:52'),
(1291, 1, 'LbxP4vdcthG4X9zRCsrfsIhXLsuyy82u', '2019-06-22 16:06:39', '2019-06-22 16:06:39'),
(1292, 1, 'xQAAx8iBTpTCRabHK8y6gdGWQBhQh4cg', '2019-06-22 16:06:41', '2019-06-22 16:06:41'),
(1293, 1, 'w63LGi8XGpPSuapXgrVNqdij5sJAdFyT', '2019-06-22 16:06:41', '2019-06-22 16:06:41'),
(1294, 1, 'HhPGk0kPgdaSPtFHeekDsYgcFAOAAFFy', '2019-06-22 16:07:50', '2019-06-22 16:07:50'),
(1295, 1, 't0SvgaWQZj0KaRZDQLIXT0sVqdN8D36L', '2019-06-22 16:07:51', '2019-06-22 16:07:51'),
(1296, 1, 'Nxg5c7AFk0rvgfVCg2ODkV6ZXwoPV4ay', '2019-06-22 16:07:52', '2019-06-22 16:07:52'),
(1297, 1, 'tzTzwu3ik8b5CzxVTDEVx1DyFwnxRtsX', '2019-06-22 16:07:52', '2019-06-22 16:07:52'),
(1298, 1, '0O0IpPs1ofvKFJ1VXZ0SOiMDRRAVAgaZ', '2019-06-22 16:08:22', '2019-06-22 16:08:22'),
(1299, 1, '7cGlPvdgQ31rtIusey4nqNjDNpcrKtcH', '2019-06-22 16:08:23', '2019-06-22 16:08:23'),
(1300, 1, 'dsN9se0QZaqZZPDIBtid7WsYHvMrWAKl', '2019-06-22 16:08:24', '2019-06-22 16:08:24'),
(1301, 1, 'kBQDFamWdPN0tJR8LuHz8e3S4cxsplSW', '2019-06-22 16:08:24', '2019-06-22 16:08:24'),
(1302, 1, '6f9LCsSfdhoxseMxe3nedGF73iZvpQmj', '2019-06-22 16:08:45', '2019-06-22 16:08:45'),
(1303, 1, 'ckqXW2pwPcy7BmyAQiAotNuIvbCT8P1H', '2019-06-22 16:08:45', '2019-06-22 16:08:45'),
(1304, 1, 'WPJluLAvnjeNAY5KAEtPzpBa9hM8AERS', '2019-06-22 16:08:45', '2019-06-22 16:08:45'),
(1305, 1, 'eZUrTyS2TOutUeSBKkS3hFlfAnERIItP', '2019-06-22 16:08:46', '2019-06-22 16:08:46'),
(1306, 1, '4yweRqX93C5dZ5n4d8kw30G6foYbKLMT', '2019-06-22 16:09:01', '2019-06-22 16:09:01'),
(1307, 1, 'k6BMEa4wwu7et3cW0DMmOVlOnvczFsxk', '2019-06-22 16:09:01', '2019-06-22 16:09:01'),
(1308, 1, 'Ycgj2MlslNg0WNU2XqXREEqvTixEHYp3', '2019-06-22 16:09:01', '2019-06-22 16:09:01'),
(1309, 1, 'B0j0Q61iPrRDEhMhZUmzY4TdvMd4lllR', '2019-06-22 16:09:01', '2019-06-22 16:09:01'),
(1310, 1, 'YHdDJHxDSXNqqndUMrxRJKLsy0NG8tGj', '2019-06-22 16:09:14', '2019-06-22 16:09:14'),
(1311, 1, '2DfF2NBk34I8XIz5qifza7zhU9fhnHZK', '2019-06-22 16:09:14', '2019-06-22 16:09:14'),
(1312, 1, 'zQY7lFoh4aDMbWXBjWqnHZDAxlTvIIdi', '2019-06-22 16:09:35', '2019-06-22 16:09:35'),
(1313, 1, 'C39yF9xOdUftwnjrmIljRGiHSScgnP24', '2019-06-22 16:09:35', '2019-06-22 16:09:35'),
(1314, 1, '8lxD0Yvu8W8AQE3J8gvtzzhqJwtxFPAp', '2019-06-22 16:10:10', '2019-06-22 16:10:10'),
(1315, 1, 'zdtBTbZS7ZAsfvRRyN2scrrj4qSEHth4', '2019-06-22 16:10:10', '2019-06-22 16:10:10'),
(1316, 1, 'zh93C19CtJLUOiQMO3yTAm4aF3v7Ujzd', '2019-06-22 16:10:13', '2019-06-22 16:10:13'),
(1317, 1, '3jhWTJogXxe0fQOcdmanpbt4vQzuQeQq', '2019-06-22 16:10:13', '2019-06-22 16:10:13'),
(1318, 1, 'i2ofp1l4PoUBCCP2vgovbMzyF73FeeLK', '2019-06-22 16:25:53', '2019-06-22 16:25:53'),
(1319, 1, 'JKfhGtwtSllUvgGnNP6vZ7Eq5BSahsyk', '2019-06-22 16:25:54', '2019-06-22 16:25:54'),
(1320, 1, 'G2kD0sSsRUsJLEXO8vrr1X8pBOm7MNRS', '2019-06-22 16:25:55', '2019-06-22 16:25:55'),
(1321, 1, 'dUIZH2TnPpi58AMMoeSndm8oPmTFEk9Y', '2019-06-22 16:25:55', '2019-06-22 16:25:55'),
(1322, 1, 'XtKkdbZhtzmB3YA5PPi7GpkqUcrxl04P', '2019-06-22 16:50:42', '2019-06-22 16:50:42'),
(1323, 1, 'CPfJIYnZ827ye9LVbQv9jArFrwaHkghO', '2019-06-22 16:50:49', '2019-06-22 16:50:49'),
(1324, 1, '1bUyojzfIYNwMoPX68Sv5bnvsVgAnLz1', '2019-06-22 16:50:49', '2019-06-22 16:50:49'),
(1325, 1, 'pTf21ohU838Sl2JfFF4znL0QPFm45k1g', '2019-06-22 17:00:10', '2019-06-22 17:00:10'),
(1326, 1, '8vsoeItKRGJ2yqPoCOQuJyROotbkOfzf', '2019-06-22 17:00:11', '2019-06-22 17:00:11'),
(1327, 1, 'Pnjqhqoe7WF1csAsSeLEvRNY4NvYKnLk', '2019-06-22 17:46:59', '2019-06-22 17:46:59'),
(1328, 1, 'j71Igvn2n9Yz6zxr0KpMOtFE8UNjZ552', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1329, 1, 'LQE1xXQlnVs0lPwCtcwbcC3yHsJh6fCp', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1330, 1, '52rzrmadAGhNfhgV8fzaPowwEXRa2o9f', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1331, 1, '9gQRmthJms57jGaIESpuJXJMarUcK3hZ', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1332, 1, 'EYzQo1ryrgBHNEnvwtLoTU1iPos66Ijt', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1333, 1, 'N0siLQNpSfLPs4Vl8suCSXUkmZVfn5RU', '2019-06-22 18:09:34', '2019-06-22 18:09:34'),
(1334, 1, '8oQQ8cJJ0fxDPO6rtoqcn02dwmUxF6kO', '2019-06-22 18:09:35', '2019-06-22 18:09:35'),
(1335, 1, 'tNTjnGGEIhnH2WhmewkRqeW1UiCdcdiU', '2019-06-22 18:09:35', '2019-06-22 18:09:35'),
(1336, 1, 'GO1lpmo6rPq4TDMnvWI3jBYGMeQ8C3nC', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1337, 1, '1I6kX6WVZj6uGqeFR7kCI8Z2HQPekAxJ', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1338, 1, 'mWXzPsCWWrmvLuIJap2tSCLUM9kaLC21', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1339, 1, 'DuglPwPzADHEL6KhwRdo6vsza51XAjnt', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1340, 1, 'vb3yUmSAmm2iWsklpBbqJ49nDb61wzvM', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1341, 1, '2878U74aX7rJF3DvmmKZrtM23iKBcN6V', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1342, 1, 'KnscD0MSwVSiO39FhCEHDiNCfHdUWOhd', '2019-06-22 18:29:10', '2019-06-22 18:29:10'),
(1343, 1, 'CqhCegBK8Li9MKnkL4mH2VOwVPZeK7uC', '2019-06-22 18:29:11', '2019-06-22 18:29:11'),
(1344, 1, 'vtIn37av04wK5gJ4Civ4fFbcd5i0CGR6', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1345, 1, 'FJRQaK0k3Bm1UUYGdfT2HeCpTGuqA5S4', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1346, 1, '0NCfVWFRneqUhTosjjQPKvTLBA5bmSpZ', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1347, 1, 'Ck1OLXDsffURendilCEyNVluFznawHes', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1348, 1, 'klObsIJTgJ4XIGoZLzUHwt1M6vS8nRAM', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1349, 1, 'JP7b6OYVabaWi3DZ0b1n1miv3v2QouHR', '2019-06-22 18:29:29', '2019-06-22 18:29:29'),
(1350, 1, 'erTSoLG9P4vdwDfoF4g1OTDMASO2GRnJ', '2019-06-22 18:29:30', '2019-06-22 18:29:30'),
(1351, 1, 'fUptCOGcPgwJdRJ68IoIb5ihqJIBz3iZ', '2019-06-22 18:29:30', '2019-06-22 18:29:30'),
(1352, 1, 'uzxfwpfpxjt6PWw2nCEZlIrsH7qWA071', '2019-06-22 18:49:35', '2019-06-22 18:49:35'),
(1353, 1, 'Kd7fjN6eGcDt76Yg08De8mv3TOWMWqhc', '2019-06-22 18:49:35', '2019-06-22 18:49:35'),
(1354, 1, 'pPRoCoPgyGrXBr5FIWY9ciA4LN3ZQ5fS', '2019-06-22 18:49:35', '2019-06-22 18:49:35'),
(1355, 1, 'azu0SybNB66PqxnNMVgTQO3u9PkzBl4s', '2019-06-22 18:49:35', '2019-06-22 18:49:35'),
(1356, 1, '4DkvdFEp0KRsq8IJ4DW80gRlWhEckw3N', '2019-06-22 18:49:35', '2019-06-22 18:49:35'),
(1357, 1, 'tmqXUuyu1ivuA0ze8pKOhEZgv2sX1MpB', '2019-06-22 18:49:36', '2019-06-22 18:49:36'),
(1358, 1, 'XVHIVZRMIuE9uqG3a0pTspmw08077B0B', '2019-06-22 18:49:36', '2019-06-22 18:49:36'),
(1359, 1, 'vdRB4MV08bqB2sigM5vqDU9lOTep0x2F', '2019-06-22 18:49:36', '2019-06-22 18:49:36'),
(1360, 1, 'pyH630JVb5gjTBEIavKhLuxXungSVfZB', '2019-06-22 20:03:34', '2019-06-22 20:03:34'),
(1361, 1, 'YVx8t1xp9atyvXBRuQGStYarzDss7sDq', '2019-06-22 20:03:35', '2019-06-22 20:03:35'),
(1362, 1, 'hj4n43Lga20xiEjnDy4VAZRrrjN39Jpu', '2019-06-22 20:03:37', '2019-06-22 20:03:37'),
(1363, 1, 'oNDZot9hDNX2OTF5CwHVHcP9NrnworhE', '2019-06-22 20:03:37', '2019-06-22 20:03:37'),
(1364, 4, 'fWQAWqJhF3wOGahkT8RElBd1DTHbUVpB', '2019-06-24 00:45:10', '2019-06-24 00:45:10'),
(1365, 1, 'hxNfb6XriPCRiTCHNra5633GY8M5tXxV', '2019-06-25 14:01:54', '2019-06-25 14:01:54'),
(1366, 1, 'XTM8Bh5YD6LBcS4XYUKbLFSIoLIP7dfP', '2019-06-25 14:01:55', '2019-06-25 14:01:55'),
(1367, 1, 'b9iVBPV39HOJOTLW2y4OBJL1ARRD09nQ', '2019-06-25 14:13:57', '2019-06-25 14:13:57'),
(1368, 1, 'ausbTdvV1C9KRwU5EdAvag2VdfoLDdZe', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1369, 1, 'wPqUVrU5z5KRqh4CQHrPLMbj0RYyihak', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1370, 1, 'IwCJNq2cYd9ksGg4nzPpI6NDH8shE8H5', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1371, 1, 'YWtKEW738KBhshuUdmznAB0lppdk4HKm', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1372, 1, '7huIE2YcPT1sQqVMP1o6ZFa4J6Ylf9eq', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1373, 1, 'gM15HdZ1ycrFYiUOKB2jWzmlB7eRaEPr', '2019-06-25 14:14:53', '2019-06-25 14:14:53'),
(1374, 1, 'pq1P6PWmWa9LdSDtZk0bvACL9Lf6QdvP', '2019-06-25 14:14:54', '2019-06-25 14:14:54'),
(1375, 1, 'QnzwiJZt18VIWbQ8pfpPvSxGg0vPyyxp', '2019-06-25 14:14:54', '2019-06-25 14:14:54'),
(1376, 1, '0k9VHWM64BGkgqQLJrv7bLAMlS0LVNEb', '2019-06-25 14:15:06', '2019-06-25 14:15:06'),
(1377, 1, 'VxSExBo3O0D1i2GZAAcd1861oamFK1ho', '2019-06-25 14:15:06', '2019-06-25 14:15:06'),
(1378, 1, '1BWmwGJ9q2SDyafeTPDJ2oRdpouUnPBY', '2019-06-25 14:15:06', '2019-06-25 14:15:06'),
(1379, 1, 'IgdYDRu6ucjcbyA04TX6oW5SaZpVORoK', '2019-06-25 14:15:06', '2019-06-25 14:15:06'),
(1380, 1, 'hZZnt2l47WOK7EN0caYL2Q8uFQHZ9bA0', '2019-06-25 14:15:06', '2019-06-25 14:15:06'),
(1381, 1, 'pZ2y8IWlUj9oCIMgAtHNaYOCstqyVYb1', '2019-06-25 14:15:07', '2019-06-25 14:15:07'),
(1382, 1, '1CHftv7gcWNKQylqIpJW7n0x7sIW9hyp', '2019-06-25 14:15:07', '2019-06-25 14:15:07'),
(1383, 1, '58uhwA57XVUDtEpelZdde5dz4xpSwZhr', '2019-06-25 14:15:08', '2019-06-25 14:15:08'),
(1384, 1, 'QRrPK1vr6w5cyQHuFzEHLRXTBaByarBF', '2019-06-25 14:31:53', '2019-06-25 14:31:53'),
(1385, 1, '1qYjmBIFMCH3HiubXBMg8haAnzFAIYuR', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1386, 1, 'bLzUqpthdbuGv9iHiVQQWSNoVlohzuTV', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1387, 1, 'nnv3OnIXakAvipIUvy2hdjDQc8ZCG2UF', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1388, 1, 'DquOAmTN48vPEKqaHjfZWJSdHjFjsAG8', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1389, 1, 'Q91atEiruQQ90bkT4bw9lPKF5CRMwc93', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1390, 1, 'WrVmUSfiOzKNAMGTTLy9AT0UhjyNA2zi', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1391, 1, '2oQsoSTVnMPBKRn9JOiZIWoURp43FM4P', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1392, 1, 'p8yy5Ua8HL8MmJQDQ2CKlwLxFVrsZidQ', '2019-06-25 14:42:48', '2019-06-25 14:42:48'),
(1393, 1, 'KCr1jRaqp9SQyVXK7r7v6BKhgWkOy5Kh', '2019-06-25 14:43:10', '2019-06-25 14:43:10'),
(1394, 1, '36ZHY9RF7SapmoSDIFFhmfbpmpu907wz', '2019-06-25 14:43:10', '2019-06-25 14:43:10'),
(1395, 1, 'OPvkSoPMQtg4Uq8T4Ao6mk0rvGf3k3Ab', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1396, 1, 'KsynQGFYOENG4nIeNgRW8T7P20XWdyP4', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1397, 1, 'VZCyfqo9c49rMiE5DH8AOayfZhmpkNzq', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1398, 1, 'UkPkySeKUFNdx5OBQnovq5AwlyhjxG8S', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1399, 1, 'SQAVJdeij40nv6MsOcmP5JQBUnlkqXuJ', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1400, 1, 'tkOoznhsHIbnTap6XlXsKrL25oCJJULK', '2019-06-25 14:43:11', '2019-06-25 14:43:11'),
(1401, 1, 'WAsmKoSXOyt5jm3UcVLR5x2RJmuStX7f', '2019-06-25 19:38:16', '2019-06-25 19:38:16'),
(1402, 1, 'KwyczOpvJKVe64GbP8UcnTcd7ycHhpif', '2019-06-25 19:38:17', '2019-06-25 19:38:17'),
(1403, 1, '0yZkfTDNcUjGnMeawz9a4CwNcL6n4UVE', '2019-06-25 22:18:43', '2019-06-25 22:18:43'),
(1404, 1, 'nWDjGCdacKq292QlMU3L5Dnu31Fi3eSu', '2019-06-26 19:42:03', '2019-06-26 19:42:03'),
(1405, 1, 'qYCE18Zzl4DcUn1tbmxgGWJ11I7yRrJC', '2019-06-26 20:04:00', '2019-06-26 20:04:00'),
(1406, 1, 'KhSzPjC3O60E4ZEdkRCxTCrq8qqxe6hz', '2019-06-26 20:04:01', '2019-06-26 20:04:01'),
(1407, 1, 'TIy8pkJnjoP0UcXKeJkGeD6WKgwWUWj6', '2019-06-26 20:04:05', '2019-06-26 20:04:05'),
(1408, 1, 'FUDosJaa0ZHtfQtFVCvGoSntW93ucHo3', '2019-06-26 20:04:06', '2019-06-26 20:04:06'),
(1409, 1, 'MajIPznatnyKsoaLgGMFcBm53r1G8HnZ', '2019-06-26 20:04:08', '2019-06-26 20:04:08'),
(1410, 1, 'Xufet3EZzb0aXssS2oH63dFh6WihYKpu', '2019-06-26 20:04:08', '2019-06-26 20:04:08'),
(1411, 1, 'YKCmWJFu956m2ThkyGezdrvc5zHjdoFg', '2019-06-26 20:07:41', '2019-06-26 20:07:41'),
(1412, 1, 'A0pVxCx5D7N40Puwmt63RqWBfuRRy4BH', '2019-06-26 20:07:42', '2019-06-26 20:07:42'),
(1413, 1, 'h6seyqQcirewnreFtYpAfH1byZkyxb7A', '2019-06-26 20:08:01', '2019-06-26 20:08:01'),
(1414, 1, 'jVPA7EWuVwSG1GIWN4jjOcYeg32bHq2o', '2019-06-26 20:08:01', '2019-06-26 20:08:01'),
(1415, 1, 'wf4bgRFLQnNzxs44A8s2r6fzHfeTNWSE', '2019-06-26 20:09:05', '2019-06-26 20:09:05'),
(1416, 1, '1JEsoe7wCixYDgJptzTyycaNQYuUI1Zp', '2019-06-26 20:09:06', '2019-06-26 20:09:06'),
(1417, 1, 'pyn5JRz3LrrBRTPOHsLOrMDq1FAtleLG', '2019-06-26 20:09:33', '2019-06-26 20:09:33'),
(1418, 1, 'YDnteS9yl3m57PKLSbJ9Yc6DMNtPaqsG', '2019-06-26 20:09:34', '2019-06-26 20:09:34'),
(1419, 1, 'jiv5GUKJdEaXv2ZNjnZJtBik6PGZ4zCV', '2019-06-26 20:11:49', '2019-06-26 20:11:49'),
(1420, 1, '22ZixxWmZ0RjV6y2A3kA74Wpzp0xBjh6', '2019-06-26 20:11:49', '2019-06-26 20:11:49'),
(1421, 1, 'HnlmIvuMDjEjpkqz2BYCUEglKuvAf4Td', '2019-06-26 20:15:14', '2019-06-26 20:15:14'),
(1422, 1, 'LDnqt3pjL8ydeC1fuI1UQVQAYx30LVOY', '2019-06-26 20:15:14', '2019-06-26 20:15:14'),
(1423, 1, 'ElG34TzNkDCBOGOuDHqRURCdG3z8veCb', '2019-06-26 20:16:51', '2019-06-26 20:16:51'),
(1424, 1, 'uXSVbWirHCdUDetvN9p8SyrWgmRI6PSt', '2019-06-26 20:16:51', '2019-06-26 20:16:51'),
(1425, 1, 'YFVHIrvPQUnPGGaASC3W4qwoyyWj0QSA', '2019-06-26 20:17:32', '2019-06-26 20:17:32'),
(1426, 1, 'wJDs3l9KCHIfzSrYZBvwxpexBGNbSZ1i', '2019-06-26 20:17:32', '2019-06-26 20:17:32'),
(1427, 1, '4mi49dBVLWrQUvOq0Saoyb73e5MqiGRk', '2019-06-26 20:28:19', '2019-06-26 20:28:19'),
(1428, 1, 'LFZ7JBwE20ofKfpuafPCY0VzvbK2F5AU', '2019-06-26 20:28:19', '2019-06-26 20:28:19'),
(1429, 1, 'iOgnzPs1ay3LYGlDdNMb1lmtTd7Cgcpj', '2019-06-26 20:28:35', '2019-06-26 20:28:35'),
(1430, 1, 'B1OwCSKx6qT7OeFd0Mh9ePmU6ZlggaDb', '2019-06-26 20:28:35', '2019-06-26 20:28:35'),
(1431, 1, 'Ft0BRfCcjA16AxkN7AHTtcOa9oGTw7B2', '2019-06-26 20:30:24', '2019-06-26 20:30:24'),
(1432, 1, '4zbtAdTULAOow56z7c6ZYz4LZfAJHIVH', '2019-06-26 20:30:24', '2019-06-26 20:30:24'),
(1433, 1, 'L5KawqZFLDNcwIIE9XcUEoVaWxjFJfSl', '2019-06-26 20:34:34', '2019-06-26 20:34:34'),
(1434, 1, 'kpiRzlUSrbEjHEvCeNv0kdmNuhKeVYdQ', '2019-06-26 20:34:34', '2019-06-26 20:34:34'),
(1435, 1, 'rexKUuAmkxEglpKghdhqsBMH5GUrr3C5', '2019-06-26 21:47:45', '2019-06-26 21:47:45'),
(1436, 1, 'fWyZbDmliNz4SwtwGAMtwW6TdId39OsR', '2019-06-26 21:48:37', '2019-06-26 21:48:37'),
(1437, 1, 'OqqQ0HUHlYHC03miDT3cdXgY2TJwpSSo', '2019-06-26 21:48:37', '2019-06-26 21:48:37'),
(1438, 1, 'MkOPTP9lD1lFNkyGlNJm1vCPqJBHOb8H', '2019-06-26 21:48:40', '2019-06-26 21:48:40'),
(1439, 1, 'GUciPiHnYXedVnbazsggHendQlw7sKhJ', '2019-06-26 21:48:40', '2019-06-26 21:48:40'),
(1440, 1, 'qH2zI6kWQ1l1mazzFnX28WnCvK7MgC5T', '2019-06-26 21:49:44', '2019-06-26 21:49:44'),
(1441, 1, '7WyDljXq1LOJTxl4gVIr1bmAyS1tYwZd', '2019-06-26 21:49:44', '2019-06-26 21:49:44'),
(1442, 1, 'G47gwi9yUqzCaJbxh5U5tpqcjlhzG6AG', '2019-06-26 21:49:47', '2019-06-26 21:49:47'),
(1443, 1, 'HMNffbF17sjBA9KSY2lPjfaAcgaMS8I8', '2019-06-26 21:49:47', '2019-06-26 21:49:47'),
(1444, 1, 'YcmLJEyPwfMKYsEg3mBxPBbVZwG0c7yj', '2019-06-26 21:51:56', '2019-06-26 21:51:56'),
(1445, 1, 'uvX8mmLwELSAmp4urfAckrmQriTSSurQ', '2019-06-26 21:51:56', '2019-06-26 21:51:56'),
(1446, 1, '3iE8bo5F3j6jrZtZJyIB6zouz97nVDf8', '2019-06-26 22:20:16', '2019-06-26 22:20:16'),
(1447, 1, 'RAtzoayh7cHs3Qi613Kn2VviaYwliezW', '2019-06-26 22:20:16', '2019-06-26 22:20:16'),
(1448, 1, 'TO3CAxiKHeuVCo0MONclg3F5TUu09vbZ', '2019-06-26 22:20:16', '2019-06-26 22:20:16'),
(1449, 1, 'A9Aawug2JyGsKf0mVeO0bOnGRVsmSPtr', '2019-06-26 22:20:17', '2019-06-26 22:20:17'),
(1450, 1, 'xqFdXe82Kkq8UuoJArVf17B9RjaPa8IU', '2019-06-26 22:20:23', '2019-06-26 22:20:23'),
(1451, 1, 'D8c3XtqdF8KeavqADGq0IA2beYSEmsgG', '2019-06-26 22:20:23', '2019-06-26 22:20:23'),
(1452, 1, 'dIGFAcmInj9JCZl6WHDRBLJ595yqobSb', '2019-06-26 22:20:23', '2019-06-26 22:20:23'),
(1453, 1, 'FHBE24wMtkSwNRzL7MxKQPQsMmQFQs6A', '2019-06-26 22:20:23', '2019-06-26 22:20:23'),
(1454, 1, 'HWDt4WRvas9TLg7pqkmZeJKNG5yVjNvm', '2019-06-26 22:27:13', '2019-06-26 22:27:13'),
(1455, 1, 'g5cEXXB4SJMMBzEmYKRf1JD5FJPYDKNi', '2019-06-26 22:27:13', '2019-06-26 22:27:13'),
(1456, 1, 'QeugaiXsSNuafvVxzaANVdVTPDBCKtvW', '2019-06-26 22:27:13', '2019-06-26 22:27:13'),
(1457, 1, 'oKkOYr7G0fPE6ght4fRMGk8FxiCJCjzX', '2019-06-26 22:27:13', '2019-06-26 22:27:13'),
(1458, 1, 'NRSOqgahIgD2ZJTj4lr4qHpsG1aSoYlL', '2019-06-26 22:27:20', '2019-06-26 22:27:20'),
(1459, 1, 'Gw81o3coXHHSPM2sKAF830x2wCXzNU9N', '2019-06-26 22:27:20', '2019-06-26 22:27:20'),
(1460, 1, 'y15fwBkQ1k4tNtoYQiHChrvwOLv74Yae', '2019-06-26 22:27:20', '2019-06-26 22:27:20'),
(1461, 1, 'CJUIFqjto6dXdkSdSGYJT4pR09QBmf6B', '2019-06-26 22:27:21', '2019-06-26 22:27:21'),
(1462, 1, 'EQt656rQuSFPFCgloZJNPwB53S8Bgi8K', '2019-06-26 22:27:45', '2019-06-26 22:27:45'),
(1463, 1, 'CofnCCwB9wKHTjfUnxObOBBFLB4zkDNO', '2019-06-26 22:27:46', '2019-06-26 22:27:46'),
(1464, 1, 'fFxS1rrr6hJ4BEHWWQUmClgFBissbHUJ', '2019-06-26 22:27:46', '2019-06-26 22:27:46'),
(1465, 1, 'VvwZmv7Io0pDDhM2mPy0nJsLtc3MlRCN', '2019-06-26 22:27:46', '2019-06-26 22:27:46'),
(1466, 1, 'wdAleMlXgMYfYpTnbDgmFMQQkMBDNNaE', '2019-06-26 22:27:58', '2019-06-26 22:27:58'),
(1467, 1, 'QTwWqtYni7dOJ8se1RNkse0DeH0GC8ox', '2019-06-26 22:27:58', '2019-06-26 22:27:58'),
(1468, 1, 'cWVIeyWACn77vrDp5tmpx2Ejwz4Owd8N', '2019-06-26 22:28:00', '2019-06-26 22:28:00'),
(1469, 1, 'u7NpRCEmcGWlaZI17wfm6imAeQrUWEtz', '2019-06-26 22:28:00', '2019-06-26 22:28:00'),
(1470, 1, 'cMJmcM1TjBzlb4PaI61B6Sr0qQQtNcyf', '2019-06-26 22:28:47', '2019-06-26 22:28:47'),
(1471, 1, 'WEKZINGKgllRe2uqw8nMOPfEBqE2hlr2', '2019-06-26 22:28:47', '2019-06-26 22:28:47'),
(1472, 1, 'rpEAZltKcSftLsmi9pHrQ2i3nfLulnq0', '2019-06-26 22:28:48', '2019-06-26 22:28:48'),
(1473, 1, 'CAaqT2PsYIFvmzewLahoAKBCnv5f3HuK', '2019-06-26 22:28:48', '2019-06-26 22:28:48'),
(1474, 1, 'p1CjMPad121W9z6oiMjhsBOiAv8rVE7c', '2019-06-26 22:29:28', '2019-06-26 22:29:28'),
(1475, 1, 'HL52TKTh6Com6is2CsLyBK5ikbbcWe2l', '2019-06-26 22:29:28', '2019-06-26 22:29:28'),
(1476, 1, 'wBt8Xjy76B8XT0FnGScmHzkn3gKjVcrU', '2019-06-26 22:29:28', '2019-06-26 22:29:28'),
(1477, 1, 'FPj0MD5Ljj7dBt07llMOpZ4NQtzhsVzi', '2019-06-26 22:29:29', '2019-06-26 22:29:29'),
(1478, 1, '0RKULobH1AiY5hBv2TlLcncdOKmC50Dz', '2019-06-26 22:32:01', '2019-06-26 22:32:01'),
(1479, 1, 'Pir62bg9DdJf6KpbWos6ytBiZYSyJvwF', '2019-06-26 22:32:01', '2019-06-26 22:32:01'),
(1480, 1, 'UhnmJ9HcPeXHd750vmY8NfOuQM6ARRjf', '2019-06-26 22:32:01', '2019-06-26 22:32:01'),
(1481, 1, 'LCOpLXklcyIBQOKFyQSyUxnbgURuILYP', '2019-06-26 22:32:01', '2019-06-26 22:32:01'),
(1482, 1, 'MZ08l1UD6nXsjdV7JRwwaK0OKEICM98m', '2019-06-26 22:34:19', '2019-06-26 22:34:19'),
(1483, 1, 'Mq7IztW43Ydj4IZh6N7Jxvsw5cNvyIrd', '2019-06-26 22:34:19', '2019-06-26 22:34:19'),
(1484, 1, 'jfsdXVybMMRaoAQ034Qvdp55S76SQCrq', '2019-06-26 22:34:19', '2019-06-26 22:34:19'),
(1485, 1, 'OKSS2ncpsgvmxImKvrIbZk7Vc6drlx5C', '2019-06-26 22:34:20', '2019-06-26 22:34:20'),
(1486, 1, 'V2LlXirMK5ht7sXot4oQbSOoCNVzfugd', '2019-06-26 22:35:38', '2019-06-26 22:35:38'),
(1487, 1, '2Y95dxng5YXPPEj8CwlZpgafgrtwzyfk', '2019-06-26 22:35:38', '2019-06-26 22:35:38'),
(1488, 1, 'pLPZGKlSAc8riDRLV3xMihTxFrVo8EJh', '2019-06-26 22:35:38', '2019-06-26 22:35:38'),
(1489, 1, 'j2b1mj1ksGUt8mf4Ox8S8jdNibFcs4ml', '2019-06-26 22:35:38', '2019-06-26 22:35:38'),
(1490, 1, 'COxyHklkM5BfzcTbSb8RNGgfThCJk9nr', '2019-06-26 22:38:48', '2019-06-26 22:38:48'),
(1491, 1, 'jYJrDw9TreFYwRRdF0fWeFpNzxZy9K1A', '2019-06-26 22:38:48', '2019-06-26 22:38:48'),
(1492, 1, 'S49uU2I3Dp2ziTdZyzVbhR9BJG3HTRTh', '2019-06-26 22:38:49', '2019-06-26 22:38:49'),
(1493, 1, 'kxqxOHzEdAhRuIOwUTlzTL7BNIKKkhbb', '2019-06-26 22:38:49', '2019-06-26 22:38:49'),
(1494, 1, 'nVM6zWh4xGYOQDlSxLweFmCF0qko3JNR', '2019-06-26 22:40:42', '2019-06-26 22:40:42'),
(1495, 1, 'EL8ymSkpxTLFNtZLMm1YhAPqk8NTfeof', '2019-06-26 22:40:43', '2019-06-26 22:40:43'),
(1496, 1, 'LJF67u8CRXp1QxuYOS6v62ez0x0oZBm6', '2019-06-26 22:40:43', '2019-06-26 22:40:43'),
(1497, 1, '214MdiVqIRVNY4Maiky4hvVubm9YxMKc', '2019-06-26 22:40:43', '2019-06-26 22:40:43'),
(1498, 1, 'LApLppXKAOyG2qL00S7xGRYDmucOMWkA', '2019-06-26 22:40:57', '2019-06-26 22:40:57'),
(1499, 1, 'Y4v2CuYGCqRjXTPtgXLVJVCbK3cySSEI', '2019-06-26 22:40:57', '2019-06-26 22:40:57'),
(1500, 1, 'RCdJ8BPim0Xzsx3eJQvikTGYF3loPQ4I', '2019-06-26 22:40:58', '2019-06-26 22:40:58'),
(1501, 1, 'XxjxHnT6N88D6dgUob7wnKXYnRWVKxmP', '2019-06-26 22:40:58', '2019-06-26 22:40:58'),
(1502, 1, '4NgNyIUJ0nkecs0BY8zu4NAMO1wSBdki', '2019-06-26 22:46:35', '2019-06-26 22:46:35'),
(1503, 1, 'Tp3lRdU1ABuq2z7sAKhWmqfvlgTsEzQ9', '2019-06-26 22:46:35', '2019-06-26 22:46:35'),
(1504, 1, 'Op3hCD2b7MRadrdaGt4l95fm4FZfttGV', '2019-06-26 22:46:35', '2019-06-26 22:46:35'),
(1505, 1, 'ZzuMx3GiJN1Jg2SwSZaisaM20hrk55Zr', '2019-06-26 22:46:35', '2019-06-26 22:46:35'),
(1506, 1, 'joO5HAVNuragQCIt82niRqFy132q72Hs', '2019-06-26 22:48:57', '2019-06-26 22:48:57'),
(1507, 1, 'nlUfwMEbs1CsOocJWupJTElrOLiY1QZ8', '2019-06-26 22:48:57', '2019-06-26 22:48:57'),
(1508, 1, 'u8vVgym2GlTr6hB72SvD8iCVhPT6NI9j', '2019-06-26 22:48:57', '2019-06-26 22:48:57'),
(1509, 1, 'RbTVyr5hdXnOKEbPsrDZ5IfK2HviBiOr', '2019-06-26 22:48:57', '2019-06-26 22:48:57'),
(1510, 1, '1gSRhujHu7JoAfQz5xHVEW8mbOL596sa', '2019-06-26 22:49:06', '2019-06-26 22:49:06'),
(1511, 1, 'yFz1phSQJs38dZ5oApHXsu8qoGAcUodc', '2019-06-26 22:49:06', '2019-06-26 22:49:06'),
(1512, 1, 'JfTzwxiN0NDQXDQEaRPf0xMcPDIcPf7p', '2019-06-26 22:55:45', '2019-06-26 22:55:45'),
(1513, 1, 'wh3vhAfVnKN76aSf4cKX50ctWfwOcoKV', '2019-06-26 22:55:45', '2019-06-26 22:55:45'),
(1514, 1, 'L4xyzIXxFxvAm56cBLnCSe79qAlT6Liu', '2019-06-26 22:56:22', '2019-06-26 22:56:22'),
(1515, 1, 'e271bwDzljueirQUOoCBkJ0h3ar5DkwF', '2019-06-26 22:56:22', '2019-06-26 22:56:22'),
(1516, 1, 'PdJmoeBYb1f2SGy6YXaCq6xSKnQuOTBj', '2019-06-26 22:56:22', '2019-06-26 22:56:22'),
(1517, 1, 'A7ecuDYmmu9q0WLq7ZZiFnsmEdwJvMYt', '2019-06-26 22:56:23', '2019-06-26 22:56:23'),
(1518, 1, 'pNeZpM5tIfRfy7CUsech5mX6XSm4NSl2', '2019-06-26 23:14:39', '2019-06-26 23:14:39'),
(1519, 1, 'WKZZtK3QWPMDeXfQ6mV4NNLTqXzjhLkH', '2019-06-26 23:14:40', '2019-06-26 23:14:40'),
(1520, 1, 'gWs9bGazRftkFkQLpodkot39BZDPczcv', '2019-06-26 23:14:40', '2019-06-26 23:14:40'),
(1521, 1, 'V324zkJ0GzucqeDENkGNQKukoeIo6GC5', '2019-06-26 23:14:41', '2019-06-26 23:14:41'),
(1522, 1, '2GeI6jcsW7OM625zynKZ7rsKh41dpb4T', '2019-06-26 23:14:50', '2019-06-26 23:14:50'),
(1523, 1, 'f1wgU2PDc5xPIhYFmeGKiTcFkbM4Pt2K', '2019-06-26 23:14:50', '2019-06-26 23:14:50'),
(1524, 1, 'rSMg7LjzAcUinKbo0IcoruylcAzvavJz', '2019-06-26 23:57:01', '2019-06-26 23:57:01'),
(1525, 1, 'PqC1o6ogXG6fDh9GWaRX3edx4xWio8gm', '2019-06-26 23:57:01', '2019-06-26 23:57:01'),
(1526, 1, 'YrDvhNlZW5BrluGEFMREqgWNSBqVct7X', '2019-06-27 16:17:33', '2019-06-27 16:17:33'),
(1527, 1, 'qVdWSQ7l1jeksf1AIEyMBKfjd7lQFCXn', '2019-06-27 16:17:33', '2019-06-27 16:17:33'),
(1528, 1, '065ZPNnIgiT49IIiiFMJMTqjTG4P7rZq', '2019-06-27 16:17:33', '2019-06-27 16:17:33'),
(1529, 1, 'M2P29iKYSJ6eQH5gCcj3L7qNuqnJLGqB', '2019-06-27 16:17:33', '2019-06-27 16:17:33'),
(1530, 1, 'WL73JmBthFPPEyIM2ajLcDcmGxV3CtxC', '2019-06-27 16:17:33', '2019-06-27 16:17:33'),
(1531, 1, 'oST1m7MAlyMVsi2LoNJMSPHlyynFdGsA', '2019-06-27 16:17:34', '2019-06-27 16:17:34'),
(1532, 1, 'diShtCOwN2WFlZ1NnUBYTCCklnkWErRj', '2019-06-27 16:17:34', '2019-06-27 16:17:34'),
(1533, 1, 'sGRGoKSZqVKkbrvvNDr6hw1VlrU1Dr1o', '2019-06-27 16:17:34', '2019-06-27 16:17:34'),
(1534, 1, 'gROZA4phUsmPhITIOxZ6D6ws6NXDhlQ5', '2019-06-27 16:18:38', '2019-06-27 16:18:38'),
(1535, 1, 'zGrODIADtuPwl2p4BEeDoO8Rsbb3B77x', '2019-06-27 16:18:41', '2019-06-27 16:18:41'),
(1536, 1, 'tyKuYYFiqoalf5EOCOC3miRw2nKOPWCg', '2019-06-27 16:18:50', '2019-06-27 16:18:50'),
(1537, 1, 'nm6haCbQfNwUZPnxgeLd4OrbCkY880Fj', '2019-06-27 16:18:50', '2019-06-27 16:18:50'),
(1538, 1, 'lsiuj7FJPDEusYi0KGWNJCYXP8hshiTr', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1539, 1, 'n8h3PhADFXblrUDmfdL3NiMGaOkFcbsB', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1540, 1, 'zGjzzbG999U4uV82ZVZmG7E6eUeaaWQT', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1541, 1, 'oWPMoHogaBO3moq0LMv4RI61PN3wmO4G', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1542, 1, 't3G0M2sh2DDCR3C3H3THq2Jmq0ugo8RN', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1543, 1, 'Gz55k80rDnPXcNr3sbJZAh3mux7FOrA6', '2019-06-27 16:18:51', '2019-06-27 16:18:51'),
(1544, 1, 'xqA5NJnXDW7p3ZL16ljfbxzq6K1lkP0z', '2019-06-28 16:10:50', '2019-06-28 16:10:50'),
(1545, 1, 'X372jzO5XzojjiqPEjXbWyzwGu6op6iQ', '2019-06-28 16:10:51', '2019-06-28 16:10:51'),
(1546, 1, 'WYdH6jeCCcuTQG9c92K5fVbpqj4VxnFx', '2019-06-28 16:10:52', '2019-06-28 16:10:52'),
(1547, 1, 'TSj2nJOH6D9wKcZwVAtlwJcD00z88NIw', '2019-06-28 16:10:52', '2019-06-28 16:10:52'),
(1548, 1, 'EGlcekcwZjKbx8pdfBzYtnmY8JCxfsUe', '2019-06-28 16:11:04', '2019-06-28 16:11:04'),
(1549, 1, '4kpcY88aCNkLaCJgBzxnKGTBmbpd8aZN', '2019-06-28 16:11:04', '2019-06-28 16:11:04'),
(1550, 1, 'aBsX61wGyDI75gLi0NAaIhRVDNKvMXiP', '2019-06-28 16:11:13', '2019-06-28 16:11:13'),
(1551, 1, '3ZxWiGT2PLjDz4lxf7rKdTvOTAzeTJv2', '2019-06-28 16:11:13', '2019-06-28 16:11:13'),
(1552, 1, 'HAxPv9grpchfYCuOzNBZhGjOiJZjJGdm', '2019-06-28 16:11:59', '2019-06-28 16:11:59'),
(1553, 1, 'CR0rWrZ8m6TTbDh05qINjfTbg0bBZY5H', '2019-06-28 16:11:59', '2019-06-28 16:11:59'),
(1554, 1, 'VwFdBCa4UBG9i0n71peRU4Yzmoplq69Q', '2019-06-28 16:12:22', '2019-06-28 16:12:22'),
(1555, 1, 'CjJoG5sXigk9mMtiJNE2pYgRPl1vBRyI', '2019-06-28 16:12:22', '2019-06-28 16:12:22'),
(1556, 1, 'k11J3bGfDwgYhfLU78fYxchfpxl1p4dH', '2019-06-28 16:24:31', '2019-06-28 16:24:31'),
(1557, 1, 'bfUojdsxBCykLRubmnG4gQq5hMzgO4oy', '2019-06-28 16:24:32', '2019-06-28 16:24:32'),
(1558, 1, 'I4hDMDVCQ9OeOGPsI7JRlajoa274VSE5', '2019-06-28 16:40:56', '2019-06-28 16:40:56'),
(1559, 1, 'j16SPsDhmOVs4x84JsiSTL7KdiyAINwA', '2019-06-28 16:40:56', '2019-06-28 16:40:56'),
(1560, 1, '93aN72RiLoceTt075IlXpMkqRZPZZfcJ', '2019-06-28 16:40:59', '2019-06-28 16:40:59'),
(1561, 1, 'dkOv635os49CDU7MY97Ztsmz0PaSBhnx', '2019-06-28 16:40:59', '2019-06-28 16:40:59'),
(1562, 1, 'La7ssYYRVyEFLqcjNc8upZ1qbOUi7Fsl', '2019-06-28 16:41:07', '2019-06-28 16:41:07'),
(1563, 1, 'KbaxeZMtsnB3PUMr8XdUe98v5iGI1Guh', '2019-06-28 16:41:07', '2019-06-28 16:41:07'),
(1564, 1, 'TIzKPtdhI2rN4FbUwE21fDeOtCp0HpCw', '2019-06-28 16:41:16', '2019-06-28 16:41:16'),
(1565, 1, 'nQxx6i2TNLcdp4nD1SgL15yGGJ2bFbbu', '2019-06-28 16:41:16', '2019-06-28 16:41:16'),
(1566, 1, 'pw7glomIbhRHTmL8QspYuwzBJ2hvT1pp', '2019-06-28 16:41:25', '2019-06-28 16:41:25'),
(1567, 1, 'oZuOVI3CakKLOepovgbMfWTz7kSa8iYy', '2019-06-28 16:41:25', '2019-06-28 16:41:25'),
(1568, 1, 'IpRuwbJukT0HSw7PpaMhDPPPvd7tDt8N', '2019-06-28 17:05:44', '2019-06-28 17:05:44'),
(1569, 1, 'Zywr9hOtGrBKFp5vWi192Yem2clBRp1o', '2019-06-28 17:05:44', '2019-06-28 17:05:44'),
(1570, 1, '4BtytByBA6gCcdG1ph2C5OakuOolDHrb', '2019-06-29 14:14:10', '2019-06-29 14:14:10'),
(1571, 1, 'HToNDYZai632IbacSlahMMDAiXdwnM2T', '2019-06-29 14:14:12', '2019-06-29 14:14:12'),
(1572, 1, 'c2gAckznFvN9heZKP9XWfH01WwZnw7cy', '2019-06-29 15:40:18', '2019-06-29 15:40:18'),
(1573, 1, 'xfvZbnndUvGbyxWiuT0m7kOT5EFvwGYF', '2019-06-29 15:41:35', '2019-06-29 15:41:35'),
(1574, 1, 'gYDLYBgWrczo9nZYHPedhfzGC0iw2s5x', '2019-06-29 15:42:10', '2019-06-29 15:42:10'),
(1575, 1, 'wAaHUyMxil6JRN28bHk6JG4F4vSugFeM', '2019-06-29 15:42:10', '2019-06-29 15:42:10'),
(1576, 1, 'E8p3MftP3wNnTB6sOtTmK0yoWTkvh7gF', '2019-06-29 15:42:10', '2019-06-29 15:42:10'),
(1577, 1, 'PWgppwsycfY9UovAPOl48g69REBEbjRZ', '2019-06-29 15:42:10', '2019-06-29 15:42:10'),
(1578, 1, 'eQwlr5OjoH139MYKTn8OcYu4Wdhu15mI', '2019-06-29 15:42:10', '2019-06-29 15:42:10'),
(1579, 1, 'kmSmlN6id8kAIGNNtiN0Y45DeoumePCF', '2019-06-29 15:42:11', '2019-06-29 15:42:11'),
(1580, 1, 'wYcAvTcZzkJzeYQSHQvaCoFYDAoSFDRw', '2019-06-29 15:42:11', '2019-06-29 15:42:11'),
(1581, 1, 'gJNrsnY1HuSvIc7Vsxh6iaBIDxoaRZdC', '2019-06-29 15:42:11', '2019-06-29 15:42:11'),
(1582, 1, 'H0ZhgNwKFB33oQrFBZW84eRW98nE07Y9', '2019-06-29 15:44:53', '2019-06-29 15:44:53'),
(1583, 1, 'P3Q1aFUTjdqBsqMKGLKjQ14cfCI9wZBl', '2019-06-29 15:44:54', '2019-06-29 15:44:54'),
(1584, 1, 'DoaWXroO9XGuY8AqKctUdQesmDHKOOXh', '2019-06-29 15:45:16', '2019-06-29 15:45:16'),
(1585, 1, 'Gn2xQPfkPYzOONjKtHLEetHiYAuBZ8tV', '2019-06-29 15:45:16', '2019-06-29 15:45:16'),
(1586, 1, 'FmmXdrSyLlY8XwwtngtkJjr0JYVqjR1j', '2019-06-29 15:45:16', '2019-06-29 15:45:16'),
(1587, 1, '1BCCfBgfLuxclu0N8Jo4z9NoOT8ttVUp', '2019-06-29 15:45:16', '2019-06-29 15:45:16'),
(1588, 1, 'U63xXeGb78oBLM3XNq6hs3p3vbwR2JFU', '2019-06-29 15:45:17', '2019-06-29 15:45:17'),
(1589, 1, 'QTDfYg84v4oYSgbCTBBq7wfm6ez2D0h9', '2019-06-29 15:45:17', '2019-06-29 15:45:17'),
(1590, 1, '8sy0qICFL9QPxBtiKcMvtrbhTBWd089d', '2019-06-29 15:45:17', '2019-06-29 15:45:17'),
(1591, 1, 'koXUY7ZlLvWoC1oYGwVaA545o8FwWV8v', '2019-06-29 15:45:17', '2019-06-29 15:45:17'),
(1592, 1, 'yEVmO7Xm0PMfA7fGsId7TeEAHTEdtdCS', '2019-06-29 15:45:33', '2019-06-29 15:45:33'),
(1593, 1, 'Pf3baaccEZuV8dFtAh7XLjF8ZQ72lbxT', '2019-06-29 15:45:33', '2019-06-29 15:45:33'),
(1594, 1, 'BsKGCqn3HsNdXneLoXcXiuv95hXN20m8', '2019-06-29 15:51:16', '2019-06-29 15:51:16'),
(1595, 1, 'CJiEw1yUCRXervsh5DvOS2wGT4NzdYmw', '2019-06-29 15:51:17', '2019-06-29 15:51:17'),
(1596, 1, 'asg6GmEZtfbL9TdZ752GzWq4d93B22pP', '2019-06-29 15:57:32', '2019-06-29 15:57:32'),
(1597, 1, 'k8esI9Y8H3kaN5irPRAbS1W50NMtz6eC', '2019-06-29 15:57:32', '2019-06-29 15:57:32'),
(1598, 1, '1oQZIlxe4Cb5coWeCixtDQz9EPgw8h7V', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1599, 1, 'tvUXhI7iJ3F9CG3R2fZqcj6Bf0blzY7G', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1600, 1, 'XSN3rKAZHZllkVunM07UKS093gCEvhSX', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1601, 1, 'RaJgPge5v60mUANxpuUYoNfiRxfERxFi', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1602, 1, 'vH9VT2DzNAKTxQVZKCa2r9jFdCoUMvO3', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1603, 1, 'h6dExTDNZVA1eSj3dJr2CvL9FydodsqU', '2019-06-29 16:02:32', '2019-06-29 16:02:32'),
(1604, 1, 'sSKvVdbHWsDQPybYSarYGbjFpFKfuOh8', '2019-06-29 16:02:33', '2019-06-29 16:02:33'),
(1605, 1, 'P6AtbBOpmB5reABPauRoxsZWdhsuh1wy', '2019-06-29 16:02:33', '2019-06-29 16:02:33'),
(1606, 1, 'xJi0WNHO39P8nn38qzfpMagQvp7ckwPj', '2019-06-29 16:03:19', '2019-06-29 16:03:19'),
(1607, 1, '6cEAxuH0DS2rYQhS4UqoY8lR3ee6RTqV', '2019-06-29 16:03:19', '2019-06-29 16:03:19'),
(1608, 1, 'OwUeIJXUsyxO0TUzNvv4GVQSPnQfVxS4', '2019-06-29 16:03:19', '2019-06-29 16:03:19'),
(1609, 1, '2w7Mgev7CcOghkGJ1YWxVzDOPTk464Bg', '2019-06-29 16:03:19', '2019-06-29 16:03:19'),
(1610, 1, 'Isdalaq5EQdMI8IJa5DJvs1lRelpH2us', '2019-06-29 16:03:19', '2019-06-29 16:03:19'),
(1611, 1, '62xU2KWukGf2A8WioEFCdjz7LshhBPHj', '2019-06-29 16:03:20', '2019-06-29 16:03:20'),
(1612, 1, 'ju5MzmZI0yP7azYU7ntPKp0LGollIwBq', '2019-06-29 16:03:20', '2019-06-29 16:03:20'),
(1613, 1, '13CQ0leG0viPIjcHSG2QleSOXI88inIE', '2019-06-29 16:03:20', '2019-06-29 16:03:20'),
(1614, 1, 'X47GxFM29kyHU4KUxcEVTEIM3nyVcu3S', '2019-06-29 16:03:21', '2019-06-29 16:03:21'),
(1615, 1, '7SXDk2lRWrtdIa6mdrOIpCasaM84WuxK', '2019-06-29 16:03:21', '2019-06-29 16:03:21'),
(1616, 1, '6uXUBPAL2gR2rbWGN9SMNFnH1PXeURf8', '2019-06-29 16:03:31', '2019-06-29 16:03:31'),
(1617, 1, 'Uuh9PJKb9yvajbp2wieEeZYqVEL4pp0A', '2019-06-29 16:03:31', '2019-06-29 16:03:31'),
(1618, 1, 'WXhHGsOWlNFIGkNivm363YVAhQNdizTF', '2019-06-29 16:04:29', '2019-06-29 16:04:29'),
(1619, 1, '8tDu9XxBmgGhj53fDI7Ifm3cW03bsMRs', '2019-06-29 16:04:29', '2019-06-29 16:04:29'),
(1620, 1, '0N2uydSYRch1jkAeACiHkOSv9UCXTmiu', '2019-06-29 16:04:29', '2019-06-29 16:04:29'),
(1621, 1, '1JLLfuP3QBbwIjsZZ5bV1DrQPhppuEEV', '2019-06-29 16:04:30', '2019-06-29 16:04:30'),
(1622, 1, 'qW8wksd5bWm0PMuB0J1xj6wWD2LH6yi4', '2019-06-29 16:05:20', '2019-06-29 16:05:20'),
(1623, 1, 'a2eyRDI1ZAKBz1X8uEMfGuq4tRZ6dBDr', '2019-06-29 16:05:20', '2019-06-29 16:05:20'),
(1624, 1, '23QWT1ZkoEVQE11FWRhKcIJtCwXcMq68', '2019-06-29 16:05:23', '2019-06-29 16:05:23'),
(1625, 1, 'L2eW2hdDPv9HWwcEdiT2jskAMvyt98Ws', '2019-06-29 16:05:23', '2019-06-29 16:05:23'),
(1626, 1, 'L2g5d3XQhKnZIPPu9P8IEy3Nd1ZVpDrM', '2019-06-29 16:06:04', '2019-06-29 16:06:04'),
(1627, 1, '9XBOadCJL1yHLwz3fHVeHKFEYAuhNY1K', '2019-06-29 16:06:04', '2019-06-29 16:06:04'),
(1628, 1, 'M6AX3bysL53XsYJxLdfvM5PVzXaVbGKf', '2019-06-29 16:06:24', '2019-06-29 16:06:24'),
(1629, 1, 'CLxdmEMuNvRlRX2idl2TSdbemdAw66Uq', '2019-06-29 16:06:43', '2019-06-29 16:06:43'),
(1630, 1, 'wRvPr7nwc8L8KpFyhHP6PQ8AHKGjDhVO', '2019-06-29 16:06:43', '2019-06-29 16:06:43'),
(1631, 1, 'SReaXEOX6K329oV2GeTeoNp7dWNCsCF7', '2019-06-29 16:08:46', '2019-06-29 16:08:46'),
(1632, 1, 'j3mPya5ACbr1LrfWUQtw12ecXi1LB8rG', '2019-06-29 16:10:45', '2019-06-29 16:10:45'),
(1633, 1, 'w9KIzGoaGyWBaYmrH39r0Smf898F25S2', '2019-06-29 16:10:45', '2019-06-29 16:10:45'),
(1634, 1, 'uXofgosq2H3nWmRmzkssmXASIJuEhBLR', '2019-06-29 16:10:55', '2019-06-29 16:10:55'),
(1635, 1, 'TyUoz7N2PXJrtW92lbH01iy0Dwe4SWQf', '2019-06-29 16:11:23', '2019-06-29 16:11:23'),
(1636, 1, 'oY3N9Caz61vpRUIQisIezvgF9oGCAcTh', '2019-06-29 16:11:25', '2019-06-29 16:11:25'),
(1637, 1, 'RhYukfeOfi44m83NKfiKdyItzxDY1iJQ', '2019-06-29 16:11:25', '2019-06-29 16:11:25'),
(1638, 1, '4webZ341kG43JainrPl0up7F6RqJedom', '2019-06-29 16:11:40', '2019-06-29 16:11:40'),
(1639, 1, 'T9YeKv1ULzKp2fyUQoL9weKoXCA1C2wI', '2019-06-29 16:12:31', '2019-06-29 16:12:31'),
(1640, 1, 'dhzDMepYPPBuLeqEYTZKFvUuifVNdhkc', '2019-06-29 16:13:07', '2019-06-29 16:13:07'),
(1641, 1, 'Hgc5u1DLkRRyIP4fTMgPp0TNrsqpMzj8', '2019-06-29 16:13:22', '2019-06-29 16:13:22'),
(1642, 1, 'Rhqoh8LkOQH34bk5CzhQXGLCdRvWtEif', '2019-06-29 16:13:22', '2019-06-29 16:13:22'),
(1643, 1, 'bqqoICUtuUjCleNbTYPaiSzP35T7MjSG', '2019-06-29 16:13:30', '2019-06-29 16:13:30'),
(1644, 1, 'yebUoRqSlVqij8Hsp9iU8DFJOpofPdm5', '2019-06-29 16:14:17', '2019-06-29 16:14:17'),
(1645, 1, 'mjtVQwdehpZHdkCkWDRs9wbxjQALRSBU', '2019-06-29 16:14:17', '2019-06-29 16:14:17'),
(1646, 1, '9krxscrM2vfxFtByoFpH0aMT6nUPfX7T', '2019-06-29 16:14:53', '2019-06-29 16:14:53'),
(1647, 1, 'kMeuAiP4ewPckSkjTwfjCPSVlUKGoLPG', '2019-06-29 16:14:54', '2019-06-29 16:14:54'),
(1648, 1, 'Uhk4qkqCmqQnNtIcWYxoBWGrh92KnGDI', '2019-06-29 16:16:03', '2019-06-29 16:16:03'),
(1649, 1, 'uZOnotI0oYiIb9cdIyfK7ANF4GBlUaNi', '2019-06-29 16:16:03', '2019-06-29 16:16:03'),
(1650, 1, 'y1Rt0x02KikhXF3fOitpVKnxOGf59JWB', '2019-06-29 16:16:59', '2019-06-29 16:16:59'),
(1651, 1, 'avshNuaOFddIU7KGccwQIo2DrInpn8qo', '2019-06-29 16:17:00', '2019-06-29 16:17:00'),
(1652, 1, 'LZRh4Lsflwh8KqxBN1ZIUkLUT0PkKxXu', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1653, 1, 'mFv2ZyPTjHJsb4kSYMg34UWlmgjnYOoW', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1654, 1, 'oJCWVDm5aB6G8KocdCfFX0jMDyY6Js8s', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1655, 1, 'FrmPwobX03n1ixPkNPew6Li4R6jaUu3F', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1656, 1, 'uQeLV63nOiE7a4DMZFePFkLsCsT6Qq1J', '2019-06-29 16:17:37', '2019-06-29 16:17:37');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(1657, 1, 'H9ExMTOePLBzjqqhGeZ8i8rmjYnnGGMc', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1658, 1, 'vFolKUuOvkTu1UB1IthkVg8eAI0SdQsz', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1659, 1, 'RObrSHje01VxG1vwXzheDaRXqPDASUIG', '2019-06-29 16:17:37', '2019-06-29 16:17:37'),
(1660, 1, 'hSS3leEnv8KHd67lAddUoeQHWvBEaJPB', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1661, 1, 'e9aDpJrfaNxcXSzaD4x84kvqAknlxp2n', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1662, 1, '9IGwchQ6SV987tEsZbPcJZM8bXcu3arn', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1663, 1, 'qumgSGkO65wsuT8IDkeG4pZO4hAhxdr3', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1664, 1, 'ewDKU0sS8ZgF2zb6sI3vJqDUXPbnwykH', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1665, 1, 'kQ5Yp1kQQ1ULY04lYB8YGHT0CkmE65g6', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1666, 1, 'HsJwypEBZaHQaaIHCrnTMMM8f5CqEp4b', '2019-06-29 16:18:30', '2019-06-29 16:18:30'),
(1667, 1, 'pvEwMbhpdyFhmX1RI76Q52z5E6TtTsuV', '2019-06-29 16:18:31', '2019-06-29 16:18:31'),
(1668, 1, 'Uucu3j48u3lkzGY6ZXioWPWXObhJATTl', '2019-06-29 16:19:21', '2019-06-29 16:19:21'),
(1669, 1, 'By05Df2DXI2v50ZQQ6yG6oUrUoMMUIwG', '2019-06-29 16:20:02', '2019-06-29 16:20:02'),
(1670, 1, 'xvnZeayXRTQgEzCBkbEU3Fyr4RAh3mjL', '2019-06-29 16:20:07', '2019-06-29 16:20:07'),
(1671, 1, '2T1sdmeQwnPrnvbD0YCzWgRLJITrB5Yg', '2019-06-29 16:20:14', '2019-06-29 16:20:14'),
(1672, 1, '6aZK1xBkLVh6U7Dwq8bVmoI04HNm123y', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1673, 1, '4eB00N8XQhhAgJv6XS0SzzYaUT7LiyIA', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1674, 1, '8pFwtiGCwqX2zg8i3me0FblgrQJRrREm', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1675, 1, 'QgiQH8x9dguBgEt463Cw5WWkQRCtCNhX', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1676, 1, 'JDXej75uPDsYUoe5hyD9zSrt4nXO6gdK', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1677, 1, 'Pwuy55gtRt0ucgSaCF5E0534Hnjw6VSb', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1678, 1, 'qNQsrQfqDrminNlvZRxDTDfzORmsXgkf', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1679, 1, '6l5RGUqZXCWqzEZmqi6trwRC0YTZv7yF', '2019-06-29 16:23:19', '2019-06-29 16:23:19'),
(1680, 1, 'Nu7Vk9lJgOvbPITypl3oo5i90zyMYL7e', '2019-06-29 16:23:35', '2019-06-29 16:23:35'),
(1681, 1, 'tugbD98IGXY6fSK8WdfFCnW8pSSyOGw8', '2019-06-29 16:23:41', '2019-06-29 16:23:41'),
(1682, 1, 'H05NH9pMjoDt48Rbpi8mqv6AquCdRebn', '2019-06-29 16:23:41', '2019-06-29 16:23:41'),
(1683, 1, 'bqQJlw4JigK5cYXgiyFvHx6r6H6ACyWj', '2019-06-29 16:24:30', '2019-06-29 16:24:30'),
(1684, 1, 'FCWN880e7fJBVjW6sJtDaqxCs3MG74le', '2019-06-29 16:24:32', '2019-06-29 16:24:32'),
(1685, 1, 'QWicQWISk1dtyXsoHqCnOD9SU6q5CBQm', '2019-06-29 16:24:32', '2019-06-29 16:24:32'),
(1686, 1, 'ZXtXYw9fxZ0idwRtAKj7dl8xTOpl9l1C', '2019-06-29 16:24:42', '2019-06-29 16:24:42'),
(1687, 1, 'hSV1KSTTNPx7QoTzh93BwHP3zeXrCmyf', '2019-06-29 16:25:07', '2019-06-29 16:25:07'),
(1688, 1, 'bOE3EeUD4SHZ0Qx82zpLEkqaHBeNKXK2', '2019-06-29 16:25:18', '2019-06-29 16:25:18'),
(1689, 1, 'K1ev9i5Jwv73m2w1OqKXq1iSIRDmyWi0', '2019-06-29 16:25:23', '2019-06-29 16:25:23'),
(1690, 1, 'Y54vewoEvUP4470HZN6WPDLklg91QIir', '2019-06-29 16:25:32', '2019-06-29 16:25:32'),
(1691, 1, 'P8ujLeX56vy2bFijOaZ1etgR0ltgGsrM', '2019-06-29 16:25:32', '2019-06-29 16:25:32'),
(1692, 1, 'm9aYencqcr3Ax5y0HGZdparFXTih059r', '2019-06-29 16:25:34', '2019-06-29 16:25:34'),
(1693, 1, '2oxuYqMzj74nY8T2O4vrq1tu2ya3jdIx', '2019-06-29 16:25:34', '2019-06-29 16:25:34'),
(1694, 1, 'P8OFQKsYmlFrEYrabwAShMNB6b9w1KX7', '2019-06-29 16:25:41', '2019-06-29 16:25:41'),
(1695, 1, 'O2z9wN2H8uVAmGlxyCfGxmYMQPI895b4', '2019-06-29 16:25:46', '2019-06-29 16:25:46'),
(1696, 1, 'dYuOqGPkOIXK69Nho3T8cBTWU16NpV2E', '2019-06-29 16:25:53', '2019-06-29 16:25:53'),
(1697, 1, 'cyoldVDBoWR3rOUKMxwLcpIdEdTPNGRb', '2019-06-29 16:25:54', '2019-06-29 16:25:54'),
(1698, 1, 'K37iMsJMu48phZylj5ukkEd9WE5rKkpU', '2019-06-29 16:25:55', '2019-06-29 16:25:55'),
(1699, 1, 'roDZ5cobtlUdnV01wRlU2xv4raSvJKzI', '2019-06-29 16:25:55', '2019-06-29 16:25:55'),
(1700, 1, 'Ona0ygU0loUign10nKjgiFEGrQpQML1s', '2019-06-29 16:26:09', '2019-06-29 16:26:09'),
(1701, 1, 'Syw3a2Dtqk6AUDhimqlev7kuVIAyegGi', '2019-06-29 16:26:17', '2019-06-29 16:26:17'),
(1702, 1, '3jPnywEr3kmoMFeoSwCuYB4swQHKODPO', '2019-06-29 16:26:18', '2019-06-29 16:26:18'),
(1703, 1, '8T1OqLDWku8pK5uwdV8yCeYYVsU99fTu', '2019-06-29 16:26:21', '2019-06-29 16:26:21'),
(1704, 1, 'yXjAZ5Kb8L26YKEMSLMR4PsxncHeL04c', '2019-06-29 16:26:22', '2019-06-29 16:26:22'),
(1705, 1, '85q8ctOu3IPvwcI8Xs2x9a4Pi1lH0usl', '2019-06-29 16:26:25', '2019-06-29 16:26:25'),
(1706, 1, 'QOivpvCTCohTfR9skvbTOirJ1XJnxFBc', '2019-06-29 16:26:26', '2019-06-29 16:26:26'),
(1707, 1, 'nPtKwHFchK5fX7rBEDZgGOJJ5cLRQGKa', '2019-06-29 16:26:29', '2019-06-29 16:26:29'),
(1708, 1, '2537T15XFlnL9vtbV9cHd5tCMQzVPD3a', '2019-06-29 16:26:29', '2019-06-29 16:26:29'),
(1709, 1, 'fMDx5YDYNG1lRgGpLSeg1cZN3S0mOmx3', '2019-06-29 16:26:32', '2019-06-29 16:26:32'),
(1710, 1, 'TXL9FLyydhAq1jvbKFIa1aAF5v6aMV0N', '2019-06-29 16:26:32', '2019-06-29 16:26:32'),
(1711, 1, 'pDBNFZPNU3wBJlTdygQE34bY6Wlst6gs', '2019-06-29 16:26:34', '2019-06-29 16:26:34'),
(1712, 1, 'pwcnQT097YN6Uka4GEJXrGrVMRPpZgW7', '2019-06-29 16:26:34', '2019-06-29 16:26:34'),
(1713, 1, '7Lq6B3DpsDX3oy9mHxvHXKQzClTaJqEV', '2019-06-29 16:29:16', '2019-06-29 16:29:16'),
(1714, 1, 'Zuuhs8YLiph4uqPEOnExelG9oI0CtOO9', '2019-06-29 16:29:17', '2019-06-29 16:29:17'),
(1715, 1, 'AIdvV1eZ8gTFOyaHnsxo8UU1rXDsR2km', '2019-06-29 16:30:32', '2019-06-29 16:30:32'),
(1716, 1, '2M8nVHjZbJuBZXS7aaIA0WPt2Sx06sYM', '2019-06-29 16:30:32', '2019-06-29 16:30:32'),
(1717, 1, 'SjRCHvCFzT5TNeN6wuGcXJtex5er11ql', '2019-06-29 16:31:53', '2019-06-29 16:31:53'),
(1718, 1, 'LHbV7yBfNjTYK4J7jB9ycRsq8cl9vRAi', '2019-06-29 16:31:53', '2019-06-29 16:31:53'),
(1719, 1, 'HYxxDBnYZWdpIn5r7sIqhjK37X3QwJJK', '2019-06-29 16:43:33', '2019-06-29 16:43:33'),
(1720, 1, 'tEmpLziEenJn8mIMueIPKrpliInZ0MNa', '2019-06-29 16:43:33', '2019-06-29 16:43:33'),
(1721, 1, 'vgFkjvl4Ruou6k4tlNbfFSZurYCWCiA2', '2019-06-29 16:43:37', '2019-06-29 16:43:37'),
(1722, 1, 'YOZbrH9VRUrhvEmW9BAK6LvZXiwk7LoW', '2019-06-29 16:44:29', '2019-06-29 16:44:29'),
(1723, 1, 'jbRG8uQO69cByjG36A2dyPEtQmeDkXRn', '2019-06-29 16:44:34', '2019-06-29 16:44:34'),
(1724, 1, 'O3WSvU1w6QRdpz9dspOzpJmFlGBXJ7PF', '2019-06-29 16:44:34', '2019-06-29 16:44:34'),
(1725, 1, 'l58tLEl22xQEFHFP5nvQfTjSfxIuvBWE', '2019-06-29 16:46:25', '2019-06-29 16:46:25'),
(1726, 1, 'ShhZkgMAH1mYIQSFqhYJK1V6jB1azEVp', '2019-06-29 16:46:27', '2019-06-29 16:46:27'),
(1727, 1, 'W8phc2cVtSrspOsIw418X9IZzE1gyXcW', '2019-06-29 16:46:27', '2019-06-29 16:46:27'),
(1728, 1, 'vYvh7PFiPeXbLo1Qi0aIG5VJuACpoKkF', '2019-06-29 16:47:58', '2019-06-29 16:47:58'),
(1729, 1, '3XtjK2shEjsj88asyVoRzMAfMLLIMcDp', '2019-06-29 16:47:58', '2019-06-29 16:47:58'),
(1730, 1, 'TmAgoUZpUbR2dR6yqXAO4z2wZTMUsx2r', '2019-06-29 16:48:21', '2019-06-29 16:48:21'),
(1731, 1, 'BwzHNE2MbyZCVF5NptthLVp97zKAZwSx', '2019-06-29 16:48:37', '2019-06-29 16:48:37'),
(1732, 1, 'ormj0GbpJvW1vmdhHFlBo6DrVqDABGK4', '2019-06-29 16:48:37', '2019-06-29 16:48:37'),
(1733, 1, 'U54O0o7wDi7Y6SO3CmQoIhbIDhts21Xm', '2019-06-29 16:49:20', '2019-06-29 16:49:20'),
(1734, 1, 'Uf119hp1LbodnKU3wpqSNuwXUcFl58U0', '2019-06-29 16:49:22', '2019-06-29 16:49:22'),
(1735, 1, 'mRzuJdsFA7Ct2dqwgiqrn3V8Q7u6P0k5', '2019-06-29 16:49:22', '2019-06-29 16:49:22'),
(1736, 1, 'lpt6hCQVrkEpxRctCMwkQdDs8RVdFzvI', '2019-06-29 17:04:45', '2019-06-29 17:04:45'),
(1737, 1, 'eHZnKnwmVb4IY2J3PsMFyrdmMVBlvQic', '2019-06-29 17:04:48', '2019-06-29 17:04:48'),
(1738, 1, 'uIFfiUz57mOW49O6cvaO7pbSY6gsnHyf', '2019-06-29 17:04:48', '2019-06-29 17:04:48'),
(1739, 1, 'RZ3I2k1JruUHDlCMP42QUSGAHVWoY8zi', '2019-06-29 17:06:55', '2019-06-29 17:06:55'),
(1740, 1, 'zoc2KRwEMuQTK0FmhHLFwzjFW0lRInzS', '2019-06-29 17:07:10', '2019-06-29 17:07:10'),
(1741, 1, 'dg5OKFGuQItu3KMpmc8d785FemfQ20HT', '2019-06-29 17:07:12', '2019-06-29 17:07:12'),
(1742, 1, 'NpQ8W9duaKBy1W73N3QDSqBUjKnbTsSI', '2019-06-29 17:07:12', '2019-06-29 17:07:12'),
(1743, 1, 'G2boIrA41sswAsyg1rXGFr4E5WV8QdI6', '2019-06-29 17:07:31', '2019-06-29 17:07:31'),
(1744, 1, 'rQhkdPxt4OH5RrQilC23sVudObBb7Rdb', '2019-06-29 17:07:32', '2019-06-29 17:07:32'),
(1745, 1, 'U8cxyftptuEQ5H0H4jYecZHmri9Dfkti', '2019-06-29 17:09:59', '2019-06-29 17:09:59'),
(1746, 1, '5nJgsue6J7PD5IFDNxFXA5gINKaKEjqj', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1747, 1, '7cCums1lfrXUaJvuAG53k8vQuE1J6UV0', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1748, 1, '1QXNuVyVFQAq5n5jzS9TKcaJRBDVtDv8', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1749, 1, 'PNMqRQAHz6Bv7QBk9nTanA8nH3R5SISj', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1750, 1, 'sb9Myw0VnpPTyWjcfiUeknHhdkwKM0tk', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1751, 1, 'AFX743wOJCVGsciLvJri2JZqv3ZpP5zG', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1752, 1, 'dH3oPw0NfWXsVGcM2Eow3VFraqAG9iF9', '2019-06-29 17:10:06', '2019-06-29 17:10:06'),
(1753, 1, '6QGcDelOXaV3lpZtDyMfCKcMQQ6GZuWm', '2019-06-29 17:10:07', '2019-06-29 17:10:07'),
(1754, 1, 'HRj5iogz8fHLnubbkmdViqc9CdeqFdqf', '2019-06-29 17:10:20', '2019-06-29 17:10:20'),
(1755, 1, 'GACqpO5XANdFpgIzJTT4WvrG4NNyLgGX', '2019-06-29 17:10:21', '2019-06-29 17:10:21'),
(1756, 1, 'dEvRFrEuRIbaeHlbEKyZyTAr3rIK92uS', '2019-06-29 17:11:17', '2019-06-29 17:11:17'),
(1757, 1, 'P9oFtQEN1AXXijQT5f1XIKvLr3aJEYYW', '2019-06-29 17:11:17', '2019-06-29 17:11:17'),
(1758, 1, 'VNHC33rKdtx7zasYphy8yeBONu1SF3Lu', '2019-06-29 17:11:34', '2019-06-29 17:11:34'),
(1759, 1, 'vhGNwBZVRG9P6rpwpO5Y3jVsQBlDYDvZ', '2019-06-29 17:11:40', '2019-06-29 17:11:40'),
(1760, 1, '7DPwWDGKQZfukOChZHt16PnEzJlqjlRb', '2019-06-29 17:11:44', '2019-06-29 17:11:44'),
(1761, 1, 'CYtCUGF7PU3m77CH9gN9ZowY9iNix8TI', '2019-06-29 17:12:01', '2019-06-29 17:12:01'),
(1762, 1, 'bw1ujUCzcOlhF4wEtXqENtvBkbvhA8CB', '2019-06-29 17:12:01', '2019-06-29 17:12:01'),
(1763, 1, 'yj9BRENkWbBBSyL4nvFZ5nrsztI0Zwqm', '2019-06-29 17:12:06', '2019-06-29 17:12:06'),
(1764, 1, 'cfSJDa2EodX8EzpoSbydhQ3lLZ6WtInu', '2019-06-29 17:12:11', '2019-06-29 17:12:11'),
(1765, 1, 'yrWLbHvRd4oFyy9rLvuNBRxbwtNzY90D', '2019-06-29 17:12:24', '2019-06-29 17:12:24'),
(1766, 1, '8tA4ZCRhcxWP7gvz7igmCC9aQJisob6W', '2019-06-29 17:12:24', '2019-06-29 17:12:24'),
(1767, 1, '8wzhb9SRZs0l7AVyozZMQmhC5R3CVazU', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1768, 1, 'P4vBDaAPR8bJPm0wLYNGVTVTAiAgEKky', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1769, 1, '3c4qKJNMbjlcbicJFtSBBIsiMPO8zzxu', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1770, 1, '0aPXTxutik8TCnKjRwyC5Q2iFLYIVp7A', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1771, 1, 'Fsazp2X01U4fCg6p4oLz08cn0yMOGp3K', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1772, 1, 'nNEIbvJwQjcqtalUZ35TUeZYlDa2qRUD', '2019-06-29 17:12:25', '2019-06-29 17:12:25'),
(1773, 1, 'Om9SkGaNjVkDXJhKKIlBSVUJAHPcz2Ek', '2019-06-29 17:15:39', '2019-06-29 17:15:39'),
(1774, 1, 'Vd6SxQLDUJaFKrmx78FaLTWEXd25A5QH', '2019-06-29 17:15:44', '2019-06-29 17:15:44'),
(1775, 1, 'bQxBaJQ8LyShEjMtvaOo6bCvVKxp5Hh9', '2019-06-29 17:15:46', '2019-06-29 17:15:46'),
(1776, 1, 'mtWPe7dzKGpWLhC3k2y4AHH3un6CXu76', '2019-06-29 17:17:09', '2019-06-29 17:17:09'),
(1777, 1, 'yxQR1CKXGmWyQa3FZFP5EJCyT258MINS', '2019-06-29 17:18:13', '2019-06-29 17:18:13'),
(1778, 1, 'fjkfurd5jkAUhCqldPMnnzkg9LKqAlzX', '2019-06-29 17:18:21', '2019-06-29 17:18:21'),
(1779, 1, 'mFGne0r7ShCF5acnpnSJoP2C1KSrGtGK', '2019-06-29 17:18:24', '2019-06-29 17:18:24'),
(1780, 1, 'GQlOvR1Fxdy7UzV5oZM3uWcYvR0H07bq', '2019-06-29 17:18:32', '2019-06-29 17:18:32'),
(1781, 1, 'wexYYqSywZm4erB9TKj9DiHaSpRcmANG', '2019-06-29 17:18:34', '2019-06-29 17:18:34'),
(1782, 1, 'wlZfi3s6aPdbf1aJKBe90YWKTvJs3PBK', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1783, 1, 'cB9u5Pw8UZ3fu7U7f0VmdjqglT85FXsw', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1784, 1, 'Gp3ErHRXRAqYdhjjQLxs5TZ80hFKPna3', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1785, 1, 'bg8EpWtx3AeVQpgxsX22zslwdXx3JDpV', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1786, 1, 'xklZ7IjrMVX7wDyQKfa0c2pVYEqw6cxu', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1787, 1, 'UypcSSeOM9jDIiZs4ZReQWIdV3sGHLaX', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1788, 1, 'rkFTh6O6Bg36f6quxR2BZgmFg3FiNPu2', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1789, 1, 'i9DNCSmCvgCtPsgEVtxw6QoYYyICKM9F', '2019-06-29 17:19:25', '2019-06-29 17:19:25'),
(1790, 1, 'rc1QDIFfatIpyVH0iDBSYXEdbJtRNEqO', '2019-06-29 19:17:19', '2019-06-29 19:17:19'),
(1791, 1, 'hjGehGukRNrBS36ERTgmBnJmqPHNt8NK', '2019-06-29 19:17:19', '2019-06-29 19:17:19'),
(1792, 1, 'UTQFVijIpgvPrZy9cWSwUK1psDWMBCun', '2019-07-02 13:13:05', '2019-07-02 13:13:05'),
(1793, 1, 'Bz91Z964M1SqdjpzZJPbvdlSMH961Ff5', '2019-07-02 13:13:09', '2019-07-02 13:13:09'),
(1794, 1, 'C3nSB6J6pJq7qhmot63YeQA7s3mjG6XT', '2019-07-23 20:25:28', '2019-07-23 20:25:28'),
(1795, 1, 'mWsuMbMsGDxrzAW8YqFLmPQwDmUjEboc', '2019-07-23 20:25:58', '2019-07-23 20:25:58'),
(1796, 1, 'Zr7hHgSElkXe4gzrkbIAUUCWHvuYPmC2', '2019-07-23 20:25:58', '2019-07-23 20:25:58'),
(1797, 1, 'cTd1IwGHo3IuEl3RjXQcmMGCQeOtrcii', '2019-07-23 20:46:20', '2019-07-23 20:46:20'),
(1798, 1, 'ZEZTMrxAoGtvda4e2jj0YEizdKvI51sm', '2019-07-23 21:47:29', '2019-07-23 21:47:29'),
(1799, 1, 'VLtZXPylX4gmQ6D8GIsJwWxrnwjvVXPi', '2019-07-23 21:47:44', '2019-07-23 21:47:44'),
(1800, 1, '6QxxkmN6fC6AF0el7kyZJkVq2DG0KnSB', '2019-07-23 21:47:44', '2019-07-23 21:47:44'),
(1801, 1, 'nQhDFWx6gkNlEDK2WMfMKJc34PCtR479', '2019-07-23 21:47:44', '2019-07-23 21:47:44'),
(1802, 1, 'K6TQZZUbgcB3lgVav9FsWmWPCw8M9Xsw', '2019-07-23 21:47:44', '2019-07-23 21:47:44'),
(1803, 1, '3DPwY9pxTsqII2gfewsJ8711Lze1ffLs', '2019-07-23 21:47:44', '2019-07-23 21:47:44'),
(1804, 1, 'fpHDBZyriJxb07yaEV1vRenmugmsUHJz', '2019-07-23 21:47:45', '2019-07-23 21:47:45'),
(1805, 1, 'IQFhEg1t9g6oemKWIRSmqtWjCgbJA2IU', '2019-07-23 21:47:46', '2019-07-23 21:47:46'),
(1806, 1, 'dPAzQBaoqaZdE4McAik4R5sRvGDBuIm2', '2019-07-23 21:47:46', '2019-07-23 21:47:46'),
(1807, 1, 'K4KEKoJ4dD1e48MeeDErhIw5Vvp6aPrA', '2019-07-23 21:47:53', '2019-07-23 21:47:53'),
(1808, 1, 'v7I5CXX1HWf8khNqUMA46EhiNJm7yOvW', '2019-07-23 21:56:35', '2019-07-23 21:56:35'),
(1809, 1, 'o6VTxx0XUBvykBBmbwgbbXilPpDSeRvB', '2019-07-23 21:56:35', '2019-07-23 21:56:35'),
(1810, 1, '4SjAFdffwR5TO9EngkKu9T51U3JGvvz3', '2019-07-23 21:56:49', '2019-07-23 21:56:49'),
(1811, 1, '4gnfo0QdyXsfvHb2aNDhvBtt7Jh1EKsj', '2019-07-23 21:56:49', '2019-07-23 21:56:49'),
(1812, 1, 'Q3OQQZLgMkae34PIOHAwtpP7mTnXpeTA', '2019-07-23 21:57:39', '2019-07-23 21:57:39'),
(1813, 1, 'wGD2JaxLfv3GSUnXorlpjFXkbGs8Jwnu', '2019-07-23 21:57:39', '2019-07-23 21:57:39'),
(1814, 1, 'k2N0BxfAUPIEGSpW2FFAvnfAqMphIVJ8', '2019-07-23 21:57:39', '2019-07-23 21:57:39'),
(1815, 1, 'StVTl5O4oy1dGy6VpGe04lXanDdhfMGC', '2019-07-23 21:57:39', '2019-07-23 21:57:39'),
(1816, 1, 'iX5QDM8OT13w9zBEtnPhWuTlBtfqsnnt', '2019-07-23 21:58:37', '2019-07-23 21:58:37'),
(1817, 1, '26nrxikSU2rSLdqgyskp3BNrVW84Yjtv', '2019-07-23 21:58:37', '2019-07-23 21:58:37'),
(1818, 1, 'JjSOBXJpAWsweKJIzca06hmDIIwXRXqq', '2019-07-23 21:58:37', '2019-07-23 21:58:37'),
(1819, 1, 'tQtUlqSyPkH0YmRW3SZV5PdRF6ZULXVH', '2019-07-23 21:58:38', '2019-07-23 21:58:38'),
(1820, 1, 'EHDJ9TQ1nIPDUm0XlppQzwYNwzLYxUQt', '2019-07-23 21:59:58', '2019-07-23 21:59:58'),
(1821, 1, 'qY5HYtkyWPMnqJi0D8885nQKEfdf2z7S', '2019-07-23 21:59:59', '2019-07-23 21:59:59'),
(1822, 1, 'GvUvjgrFGJyeOdH30BFP0qsXyfdhQsbZ', '2019-07-23 22:01:00', '2019-07-23 22:01:00'),
(1823, 1, 'OO9SVKFUrHlgnUevTjv3Soo07YFLtQq0', '2019-07-23 22:01:00', '2019-07-23 22:01:00'),
(1824, 1, 'wgEapoptf7A4ZoCgXwnxHkITiUu98WsH', '2019-07-23 22:01:01', '2019-07-23 22:01:01'),
(1825, 1, '6nD9OCE4oVAqYMGfinVpnkuvN73xp65C', '2019-07-23 22:01:01', '2019-07-23 22:01:01'),
(1826, 1, '3gUjGcFkHqmXRNeVA3N9ypATJlCCgKD2', '2019-07-23 22:01:13', '2019-07-23 22:01:13'),
(1827, 1, 'wQbGoAlHPLmWzEjhmd2EbaVTQqv1tRWF', '2019-07-23 22:01:13', '2019-07-23 22:01:13'),
(1828, 1, 'IdZNzljthruamMs2SvAQBteMt8b0fBmH', '2019-07-23 22:01:14', '2019-07-23 22:01:14'),
(1829, 1, 'G24yRDr3Sa7yiRYXLePifQuqmJZZZpZ6', '2019-07-23 22:01:14', '2019-07-23 22:01:14'),
(1830, 1, 'lzQcslnXstr6sOv6sRkahQpWhCtyuYcS', '2019-07-23 22:01:25', '2019-07-23 22:01:25'),
(1831, 1, 'TdjduVopQlibz0dJNqZPTgLiaQmn4Td7', '2019-07-23 22:01:25', '2019-07-23 22:01:25'),
(1832, 1, 'H253xvKmp2Mu0JyZJS6SRjwlutP4K6Io', '2019-07-23 22:01:26', '2019-07-23 22:01:26'),
(1833, 1, '8uYxLKPVEGPPbCsY69wCxF9RoTfxwprh', '2019-07-23 22:01:26', '2019-07-23 22:01:26'),
(1834, 1, 'DekTiSSiSIkGyepevPdPzp0JZFm8qu4I', '2019-07-23 22:01:29', '2019-07-23 22:01:29'),
(1835, 1, 'MoiWotB20kKfMDGYm4ElHnOP1lCBCgQy', '2019-07-23 22:01:30', '2019-07-23 22:01:30'),
(1836, 1, 'C1PUTjYksfQvzRToOW7FA9v3ovMn33Uq', '2019-07-23 22:01:30', '2019-07-23 22:01:30'),
(1837, 1, 'E5nP6bOj4usQly8FmuMaMOCPM0gzAusr', '2019-07-23 22:01:30', '2019-07-23 22:01:30'),
(1838, 1, 'tPJSbfJmBoLx9QSLHse5Tc1XL0RRcE0j', '2019-07-23 23:22:27', '2019-07-23 23:22:27'),
(1839, 1, '65yEGlCodv3RnLUyagatCSkbyZUFjWxT', '2019-07-23 23:22:27', '2019-07-23 23:22:27'),
(1840, 1, 'IwOGk8Fa6XlLwd2NtCESutkPwjDXjHIT', '2019-07-23 23:22:28', '2019-07-23 23:22:28'),
(1841, 1, 'fJat2sw5D7oAA7TzU45LkHIdcEkdHDGc', '2019-07-23 23:22:29', '2019-07-23 23:22:29'),
(1842, 1, 'VZ3HwVm057WrxT1kaI1wtL2FtnOoM43y', '2019-07-23 23:22:51', '2019-07-23 23:22:51'),
(1843, 1, 'qFBiEvb6zUo0oB329klrnKAiDPaFFgOV', '2019-07-23 23:22:51', '2019-07-23 23:22:51'),
(1844, 1, 'iFK5D1b9sUQJGvj6oVlyfDDPRCkzKHS4', '2019-07-23 23:22:52', '2019-07-23 23:22:52'),
(1845, 1, 'I3S1L7Ga1xB3rCrqBoIep0VJpOLlFaCE', '2019-07-23 23:22:52', '2019-07-23 23:22:52'),
(1846, 1, '33gpZU7DxZsVKFEtQu4EbSVWSYrQEDuQ', '2019-07-27 16:20:09', '2019-07-27 16:20:09'),
(1847, 1, 'g0bJypznJ0lpDHNdT8XrZFKoxoVfRWFZ', '2019-07-29 16:01:42', '2019-07-29 16:01:42'),
(1848, 1, 'kMqJiQgcsK0ZUFyAv8GZMdGqXw0lyzkb', '2019-07-29 16:01:42', '2019-07-29 16:01:42'),
(1849, 1, 'PNHgJMryXoDvaeHQiITZJKsubwpCLOj3', '2019-07-29 16:01:42', '2019-07-29 16:01:42'),
(1850, 1, 'tyPBELMyz2zh1xR0bYqljtvuBrYqoAGv', '2019-07-29 16:01:43', '2019-07-29 16:01:43'),
(1851, 1, 'Wy8Ol5aU52LXwoQvLVEAmOYVtaNUrjLw', '2019-07-29 16:01:53', '2019-07-29 16:01:53'),
(1852, 1, 'msRKcMtzezvmmWJ6gqdyx8eRqFOUQ9xp', '2019-07-29 16:01:53', '2019-07-29 16:01:53'),
(1853, 1, 'OAFdT6UjmpUPS92ulBOf75M1Ttopa85l', '2019-07-29 16:01:54', '2019-07-29 16:01:54'),
(1854, 1, 'ryLT0fcxnVKboNHhfRw3biVZtxN9qV9t', '2019-07-29 16:01:55', '2019-07-29 16:01:55'),
(1855, 1, 'HCyHpUFJ1xm4Rm71qNZf3T1NbwlrLNcB', '2019-07-29 16:06:09', '2019-07-29 16:06:09'),
(1856, 1, 'K8gzdf4mTniWrPGN4Pkflj1RXDDN49Sp', '2019-07-29 16:06:09', '2019-07-29 16:06:09'),
(1857, 1, 'wesPo0rhkOyw07tA8m1RpEudEdjAC80I', '2019-07-29 16:06:09', '2019-07-29 16:06:09'),
(1858, 1, 'flKJkq7ySgtRelRfGLibEm8eZC98q4EJ', '2019-07-29 16:06:09', '2019-07-29 16:06:09'),
(1859, 1, 'vVHguCTjXF8LOfGCJUO43POTjtdik93F', '2019-07-31 16:10:36', '2019-07-31 16:10:36'),
(1860, 1, 'gpGihJF7IVeqXMHaQJPy0UJbcrgmtn0l', '2019-08-01 23:14:52', '2019-08-01 23:14:52'),
(1861, 1, 'OL3ewqEQU1v0eqEfolxwyj21sJkdr5BZ', '2019-08-01 23:14:59', '2019-08-01 23:14:59'),
(1862, 1, 'FJVT5OFvnDpBVAlLRVLPwFdrFDfOkqDk', '2019-08-01 23:15:06', '2019-08-01 23:15:06'),
(1863, 1, 'e1xzlc3aJfDk9Q1FDrNV2aaftQ3AdlWr', '2019-08-01 23:15:06', '2019-08-01 23:15:06'),
(1864, 1, 'KC5fEtEcOUA02SoXh3uC1N0ZNDlHAdFv', '2019-08-01 23:15:12', '2019-08-01 23:15:12'),
(1865, 1, 'x3Zk9JfV7HCTuKv4dsXEslK49I4dQnVQ', '2019-08-01 23:16:38', '2019-08-01 23:16:38'),
(1866, 1, 'gXJwjb2pJXbdHNKoV7B7wpwHnBSoh39X', '2019-08-01 23:16:40', '2019-08-01 23:16:40'),
(1867, 1, 'jO9QnJXH0gVjf3QGRNIAWaExUY1oM82v', '2019-08-01 23:16:56', '2019-08-01 23:16:56'),
(1868, 1, '9W5VmuVTTAz2bxoxM5XS1xAgew9EDVzZ', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1869, 1, '3xOf4eU7brWuRAne0syuVZ9iGXnAvXX6', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1870, 1, 'AF5xrgRoaUb4SkEiyXXHJ8tL1bEuWehd', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1871, 1, 'idLs343rtrXOedjpvf60swplxtnU1ON7', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1872, 1, '96N2AYsfi5lPLaKGomJploVmHIncvZjE', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1873, 1, 'QilAl5LYpKMmd818lJZHcuDVUzn0V1SZ', '2019-08-01 23:17:03', '2019-08-01 23:17:03'),
(1874, 1, 'lPwhx61sITtmdNj1d5kW5zqm8bvP570L', '2019-08-01 23:17:04', '2019-08-01 23:17:04'),
(1875, 1, '41JMosAWUG4viQwYVTS984feZISEYTrn', '2019-08-01 23:17:04', '2019-08-01 23:17:04'),
(1876, 2, 'RsUwQmzEazVyQ6A8GfgkGemrZfTUfdtK', '2019-08-01 23:23:29', '2019-08-01 23:23:29'),
(1877, 1, 'Yu0dVqwLPJmMMQ26q3i4BgZ1srL0nGYg', '2019-08-02 15:24:24', '2019-08-02 15:24:24'),
(1878, 1, '3IjmGVAcMUoJJUEtHbfLxvBkBYr2Cq6D', '2019-08-02 15:34:16', '2019-08-02 15:34:16'),
(1879, 1, 'byJRNPE5KZcf3fa3gkaTYDcM9EXgVHGN', '2019-08-02 15:36:20', '2019-08-02 15:36:20'),
(1880, 1, 'pUMOE0DSMNQHSYPHmKucmJdai5PiFAey', '2019-08-02 15:36:22', '2019-08-02 15:36:22'),
(1881, 1, 'Tfqnzj1WqiEC0MR0Nzf7qacy7fm0pNBt', '2019-08-02 15:36:48', '2019-08-02 15:36:48'),
(1882, 1, 'MeJg1y4rCImzo4JgixMmcMCY0qzMKsx5', '2019-08-02 15:36:52', '2019-08-02 15:36:52'),
(1883, 1, 'Eb5lQfL0zhR0dSeduoxmAfFZqVxP4tPh', '2019-08-02 15:36:55', '2019-08-02 15:36:55'),
(1884, 1, 'qBm4JtFpeKZrDxROB9gkRN0ZrAl10qMk', '2019-08-02 15:37:07', '2019-08-02 15:37:07'),
(1885, 1, '6Nb1eOtz2qHVVrBIZrAnAuUknhlq72DF', '2019-08-02 15:37:07', '2019-08-02 15:37:07'),
(1886, 1, 'MmpMqTBCJVMDIsBWvU7gZKlymCpjOeJz', '2019-08-02 15:37:07', '2019-08-02 15:37:07'),
(1887, 1, '34QZrJkakNCa4dNLyY8x0EEgMzTnsNBk', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1888, 1, 'Sp1WF4fslcmB4wkchzJ2Rvp9mPMVDT1k', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1889, 1, '0T9Q88AfGSYiDD8k1HuybkvkMDUWcf8U', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1890, 1, 'Qw7EMCG1nWS9fkwk31jntolUekyYOEv5', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1891, 1, 'sTHZookeU83nWIR9EkqNEOi6pf87i4Q7', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1892, 1, '0tvEKZAkQwNceWB5ySwWEZVr4Azg9lRc', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1893, 1, 'E5sUfiVAkb8hplCVYL8pJTk1Frw7KYUq', '2019-08-02 15:37:20', '2019-08-02 15:37:20'),
(1894, 1, 'cIMMvvpFZMg7Y1pz9SGFIitND2si5qe9', '2019-08-02 15:37:21', '2019-08-02 15:37:21'),
(1895, 1, 'jd4bq9Qjt90iMZCCMosa6pTKUXj8XBZT', '2019-08-02 15:37:27', '2019-08-02 15:37:27'),
(1896, 1, '3hNODNTpipNnaOswPeVJguEdI8cGdVAd', '2019-08-02 15:37:27', '2019-08-02 15:37:27'),
(1897, 1, 'CZFL7zyWgWDD9b0cCjMGzMpgoMhu5wYK', '2019-08-02 15:37:27', '2019-08-02 15:37:27'),
(1898, 1, 'ImiCEJWoTsA7cZJxpZagMT0vCUQEo4z2', '2019-08-02 15:37:27', '2019-08-02 15:37:27'),
(1899, 1, 'pluf206zueEboFL5mYAAvLf5VhsmuJed', '2019-08-02 15:37:28', '2019-08-02 15:37:28'),
(1900, 1, '2aeRrJLGuCLHWROrhPpZHb5ZjETIyAsU', '2019-08-02 15:37:28', '2019-08-02 15:37:28'),
(1901, 1, 'JTYA6iaiOU6Hi3N2QQB9L4DEBJf9QeoP', '2019-08-02 15:37:28', '2019-08-02 15:37:28'),
(1902, 1, 'Wo3g0dhyKo4bU2QUVbwNyApgHHejCMb0', '2019-08-02 15:37:28', '2019-08-02 15:37:28'),
(1903, 1, 'lDLM4wtPUcSTk8E5K4913bAWb6xPGXBu', '2019-08-02 15:59:03', '2019-08-02 15:59:03'),
(1904, 1, 'SVlXO8drQ87cUd1XqVGXcSKJNJy5voP1', '2019-08-02 15:59:03', '2019-08-02 15:59:03'),
(1905, 1, 'FdL3ORk1We9igCQbnPMyNPKHpgBstsL5', '2019-08-02 15:59:03', '2019-08-02 15:59:03'),
(1906, 1, 'Qkb2oC9UihnZn46fuX8w7J3HwrNHa0NW', '2019-08-02 15:59:03', '2019-08-02 15:59:03'),
(1907, 1, 'pgGP6HHKiC51uiR3JPZxPP3l20sMUpAz', '2019-08-02 15:59:03', '2019-08-02 15:59:03'),
(1908, 1, 'TJ6j6NvIJy6LD418STzixTG8K88zZrbQ', '2019-08-02 15:59:04', '2019-08-02 15:59:04'),
(1909, 1, 'OshwwGJpNOylmPDbt8L3D9pUYyWefiZs', '2019-08-02 15:59:04', '2019-08-02 15:59:04'),
(1910, 1, 'PR0iKAvfY85OGFYen97MghBNKy55VtSc', '2019-08-02 15:59:04', '2019-08-02 15:59:04'),
(1911, 1, 'x9CB29p2u0NSzBSRgoeC2E6zA6zjC9W8', '2019-08-02 15:59:15', '2019-08-02 15:59:15'),
(1912, 1, 'EtKQJ9SoaoKqa0EEEcYX9eG2bvmyqirq', '2019-08-02 15:59:35', '2019-08-02 15:59:35'),
(1913, 1, 'r3kxLjfnwoNjpHstOLzNBePSnNzrtwrG', '2019-08-02 15:59:39', '2019-08-02 15:59:39'),
(1914, 1, '1mczc5FXh2XdbzuCODIP8Gz84lvZRRqY', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1915, 1, 'sn2ha5t8Rb4u9STNOdh7DTCWm0eED8bg', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1916, 1, 'FySsmoTGfQXMMnElYklDqel9OE3o0hn1', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1917, 1, 'MwXgVnkxXAmDCtFfLeOp62YvZmMC257T', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1918, 1, '0Sj6iUhDX0rdqKEVjo5O3bdNCjgbf8Nh', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1919, 1, 'LbbkN8SNDIBSRJrgKd5fMMWU15R0HaD5', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1920, 1, 'uUyxmrcxweGU8reOzEcBm381n4IrQCBh', '2019-08-02 15:59:40', '2019-08-02 15:59:40'),
(1921, 1, 'HSWyR9G7CLCiSIV8aRhaaeI2Ferhgn9x', '2019-08-02 16:00:05', '2019-08-02 16:00:05'),
(1922, 1, 'Yj8KVbAX2RvFfygwuNe9nT0JrPRovTMk', '2019-08-02 16:00:06', '2019-08-02 16:00:06'),
(1923, 1, '8ieRoBP0qA3Zk4xDiGGKVvGZVaTDm5s6', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1924, 1, 'uTQScfjQA0v0XM6QskUih7MYV4vwx1yr', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1925, 1, 'qXS577ea9AmCjLQvkt22RR2PbFMF1VLi', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1926, 1, 'g46sVNZAR8VdGkhEytnZar36jfRicsLX', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1927, 1, 'jTkoTo0C40hzCHRG0J4tTv4AZOwXg2bm', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1928, 1, 'aZGi0sumMDUln0T0K1pq9UbxPMUvvBt2', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1929, 1, 'uOYH0tGMotMIRJfWyRElBHu8nbvsREWN', '2019-08-02 16:00:16', '2019-08-02 16:00:16'),
(1930, 1, 'oH2aSbtj6GwVDloxzmcsCN7fxp8Umfrw', '2019-08-02 16:00:17', '2019-08-02 16:00:17'),
(1931, 1, 'VDJxAJ8AELVMphPlPfV7HB9LbOuJq2DB', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1932, 1, 'RnWjJsScCQUnWGpSBw0DAK4KyQm63GZp', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1933, 1, '5NKPSRH8GUDVwz9Np3zXePLyway4Kgoi', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1934, 1, '3WC6OeAFEPN2ZwlHsD6wOKJblYIPYeAy', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1935, 1, '6jVkDpYoEaL8THeIhhD8zDkn0ogkqT9l', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1936, 1, 'Eikv3MR51P2IRmdSSZDUTWUgTOA78sJe', '2019-08-02 16:00:29', '2019-08-02 16:00:29'),
(1937, 1, 'JqM9SVifMZEPpwvnmCPaY8IjXjnOOwg1', '2019-08-02 16:00:30', '2019-08-02 16:00:30'),
(1938, 1, 'y6Di5WL9lgTrEFZ2ms9SQgVHz40FV4YR', '2019-08-02 16:00:30', '2019-08-02 16:00:30'),
(1939, 1, 'F9Y3UCNRVHtoE16WONngdM3Wfn3XbGAO', '2019-08-02 16:00:35', '2019-08-02 16:00:35'),
(1940, 1, 'DcLZE3awYgj1iexNDdeoDEhqgHLFLnHT', '2019-08-02 16:00:35', '2019-08-02 16:00:35'),
(1941, 1, 'dbKATr4xX4fTix4wstpa4DFfONVM1CqJ', '2019-08-02 16:00:38', '2019-08-02 16:00:38'),
(1942, 1, 'nlmOpgP6l9zHFhYjSASVlrdKCs5XTMsY', '2019-08-02 16:00:38', '2019-08-02 16:00:38'),
(1943, 1, 'rEHDq25Lyvnv8H9xLscttHH2yKapeOdf', '2019-08-02 16:00:50', '2019-08-02 16:00:50'),
(1944, 1, '6pzAduOnnIveH5hKjPuq4xMuFNoNqnl3', '2019-08-02 16:00:51', '2019-08-02 16:00:51'),
(1945, 1, 'vZDgM88obyFnj48GHZKCNF9xVVKDF5oU', '2019-08-02 16:01:13', '2019-08-02 16:01:13'),
(1946, 1, 'KzmmHiY6L1OloOvNjCiOrZFbh9DMOcqs', '2019-08-02 16:01:19', '2019-08-02 16:01:19'),
(1947, 1, 'gLKdw8ttGeEOvQ9dvMimWv2WJAl7jY1u', '2019-08-02 16:01:19', '2019-08-02 16:01:19'),
(1948, 1, '6kwY20bWIb24UZePIUl8C74MhcQ02Dul', '2019-08-02 16:01:22', '2019-08-02 16:01:22'),
(1949, 1, 'M59sb2FeaQmKbd0Io0VzrYdf0VearefO', '2019-08-02 16:01:23', '2019-08-02 16:01:23'),
(1950, 1, 'wI2vMPzPXKDc6YtIqnPtlS8YjkL7O3qS', '2019-08-02 16:01:25', '2019-08-02 16:01:25'),
(1951, 1, 'OpcCAHa2zlA4WfVTOJgs2W78hzbET2QX', '2019-08-02 16:01:26', '2019-08-02 16:01:26'),
(1952, 1, 'V4w31vPV8azL0YMsHpG3y5YChesTGSaf', '2019-08-02 16:01:37', '2019-08-02 16:01:37'),
(1953, 1, '1QD0eDuAe9tjeVL7cjG7F9WW66mpLkuz', '2019-08-02 16:01:37', '2019-08-02 16:01:37'),
(1954, 1, 'bsTaHXCwR0RKHb3Lg7oAJ7Yfj0CCTGXF', '2019-08-02 16:01:38', '2019-08-02 16:01:38'),
(1955, 1, 'hl7M6OAubDWHTlT0PohAYtbTY871yvuH', '2019-08-02 16:01:43', '2019-08-02 16:01:43'),
(1956, 1, 'o9fbiUiWohfNbQeBbicuX2wDD77XuWYm', '2019-08-02 16:01:44', '2019-08-02 16:01:44'),
(1957, 1, 'YJtLwzrlQcFcLk1kIhR4KU0BQUwBUlZD', '2019-08-02 16:01:47', '2019-08-02 16:01:47'),
(1958, 1, 'AAZ347fFYZqgVkH45K2EaIM2qLUBljhT', '2019-08-02 16:01:48', '2019-08-02 16:01:48'),
(1959, 1, 'XENe0ZGnNpdM1kAENDFglUf3cIJHfd2M', '2019-08-02 16:02:48', '2019-08-02 16:02:48'),
(1960, 1, 'ImbqiVrvlgsrXquwnfDnDinZr4Xzho1w', '2019-08-02 16:02:52', '2019-08-02 16:02:52'),
(1961, 1, 'kAGq9Qy2eI317LE9ywoYNuPxibnFpi4N', '2019-08-02 16:02:52', '2019-08-02 16:02:52'),
(1962, 1, 'nJM54KqshtBsAnnr5MeKbtzCUGVw2lWD', '2019-08-02 16:02:56', '2019-08-02 16:02:56'),
(1963, 1, '5Zr0jEmLGGikkanQxdaYJpGv3DPkYVWM', '2019-08-02 16:02:56', '2019-08-02 16:02:56'),
(1964, 1, 'Re6E0JJnYN25l6IpvRLdz61Il6pRC9ae', '2019-08-02 16:02:58', '2019-08-02 16:02:58'),
(1965, 1, 'wBOl1fgRN5kfDc8ssnPXz6YZgJPPjJSL', '2019-08-02 16:02:59', '2019-08-02 16:02:59'),
(1966, 1, 'IZ2BM4PpxiBlbHUsOVW16xH430idIxTl', '2019-08-02 16:03:00', '2019-08-02 16:03:00'),
(1967, 1, 'wlEbgkPvvB9VARuSXyQSih75MqwMdPaD', '2019-08-02 16:03:08', '2019-08-02 16:03:08'),
(1968, 1, 'WynxUAXZgcRiZnL2CstTaG9uFx74oHiD', '2019-08-02 16:03:08', '2019-08-02 16:03:08'),
(1969, 1, 'HW4mfJz1PztDRgaLN9sOZvhoRsz5SmnS', '2019-08-02 16:03:58', '2019-08-02 16:03:58'),
(1970, 1, 'I0FnhR1i1q9QRPWE6cl7yN1z3NwqNRjT', '2019-08-02 16:04:00', '2019-08-02 16:04:00'),
(1971, 1, 'wSN0haMYcBcjQbLvcmApHDHII9T3VDIO', '2019-08-02 16:04:03', '2019-08-02 16:04:03'),
(1972, 1, 'ixchX2rSpSVSda58pOCKjmJqbpgdTYvR', '2019-08-02 16:06:32', '2019-08-02 16:06:32'),
(1973, 1, 'JBcHVAGAXrT1O0l1drLZAnDM1HQbVPxQ', '2019-08-02 16:06:33', '2019-08-02 16:06:33'),
(1974, 1, 'ImT64T8f6aRqgT7rapuwShINlZN6h045', '2019-08-02 16:06:34', '2019-08-02 16:06:34'),
(1975, 1, 'Lb4LFeM7LWe0zV7Ci1tYFUB9iuMw8eKu', '2019-08-02 16:08:19', '2019-08-02 16:08:19'),
(1976, 1, 'bXFoOlGlHlTvOVkU4s0cDmwblOs0Edfe', '2019-08-02 16:08:20', '2019-08-02 16:08:20'),
(1977, 1, 'N6muzD6lFa37GH3gZ5vQIysguSm46bxn', '2019-08-02 16:10:51', '2019-08-02 16:10:51'),
(1978, 1, 'iqIZN6ydOa8xI1YFWFg0og9tHMViswVX', '2019-08-02 16:11:19', '2019-08-02 16:11:19'),
(1979, 1, 'miwSePd4J4vYQvTzyFNf9mA4Cdoqsmje', '2019-08-02 16:12:02', '2019-08-02 16:12:02'),
(1980, 1, 'QT0A7dYJrz8KfVMXPY2UHSWNaJZK8cAj', '2019-08-02 16:12:03', '2019-08-02 16:12:03'),
(1981, 1, '13rhYsvZkDM71wwHrVTvcjTCdId18ICI', '2019-08-02 16:12:43', '2019-08-02 16:12:43'),
(1982, 1, 'PWrSdnwzGHR1FmdaqR5Wb8GkMjWtbHte', '2019-08-02 16:12:43', '2019-08-02 16:12:43'),
(1983, 1, 'JLLKNdBMzAt77ABI8YWaMn7AsYmPcRfV', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1984, 1, '4RcjQmhi7P3YBOZjmt6IQfn9tOrkku3z', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1985, 1, 'wTaNHJUVk5LfstLLWJkVD6UBG8NrCkFP', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1986, 1, 'io3930yNULk4KW3ryA61LAn240EKMiGM', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1987, 1, 'erB70ChFRAb2PLLlEK0d8wQmyr0TzLAK', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1988, 1, 'A9BMOqie4H3OM6B0fkVhShslQCRHymuQ', '2019-08-02 16:12:44', '2019-08-02 16:12:44'),
(1989, 1, 'ZFVP8i8RgFpQ4bHTEtJ79mKFih5iH1sC', '2019-08-02 16:12:56', '2019-08-02 16:12:56'),
(1990, 1, 'WDVm8TCm8rPXFZfYdHQK7cdg8TCkX9GS', '2019-08-02 16:12:56', '2019-08-02 16:12:56'),
(1991, 1, 'evDlG23EBDAjPujBxxyoWIx4xaRkl5Xp', '2019-08-02 16:12:56', '2019-08-02 16:12:56'),
(1992, 1, '79v7Da3UBANsKQ3N1z9nPpwI7gPOu2xj', '2019-08-02 16:12:56', '2019-08-02 16:12:56'),
(1993, 1, '73wmCRRIFPuqSJLdDBZub86j2Ja6xwvx', '2019-08-02 16:12:57', '2019-08-02 16:12:57'),
(1994, 1, 'dUdVYchPipjv0HpKfNpPVrpgtheUwzPG', '2019-08-02 16:12:57', '2019-08-02 16:12:57'),
(1995, 1, 'ZD5l2QNN0GM5xAWqaM8zBo8dO9EKVJZD', '2019-08-02 16:12:57', '2019-08-02 16:12:57'),
(1996, 1, 'sh0au7tczXZHzS6gkPtZzCC0VIBzGQt2', '2019-08-02 16:12:57', '2019-08-02 16:12:57'),
(1997, 1, 'CkNjxIXTW7d1znEu58rOYvuUTD2DVu0Q', '2019-08-02 16:13:13', '2019-08-02 16:13:13'),
(1998, 1, 'Cvc0m6yVAljBjizaNJU1T2c9uT088aUq', '2019-08-02 16:13:13', '2019-08-02 16:13:13'),
(1999, 1, 'U2yMk08Mg8BNiMRIquia9CLIdc9l7CvH', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2000, 1, '83ZOTj5uxCSl7LIHqHZonMpXlsf9v4Ts', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2001, 1, 'j9gFysVpNSqQjznnNMQsSemorHlUsAPP', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2002, 1, 'P4cim4kYFZ8tX2GvpsNuOmtZ73RVoHMj', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2003, 1, 'Q6BhOcXWa6n69T0WMqXRuf5qvrQiHJKo', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2004, 1, 'R5KlfLGBdibmjyPPRPXEjB5JKcnorYlJ', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2005, 1, 'bs2mlKnyMThESdzbHbEWYsuJhWugesJb', '2019-08-02 16:13:22', '2019-08-02 16:13:22'),
(2006, 1, 'stTzMTtDaNqdD8wEhNE96h2lkknwx2Mn', '2019-08-02 16:13:23', '2019-08-02 16:13:23'),
(2007, 1, 'cjAItNJd5nvWTxVlb6pxpEzrdmcYOhHh', '2019-08-02 16:13:32', '2019-08-02 16:13:32'),
(2008, 1, 'vKRBnnwDMi7CLdw0o85OvLqOOe0ERgAe', '2019-08-02 16:13:32', '2019-08-02 16:13:32'),
(2009, 1, 'ObtmI49ir1UoR8PyGlY1m0Ub8Rrqhzxp', '2019-08-02 16:13:41', '2019-08-02 16:13:41'),
(2010, 1, 'WawHFDQLdkksctNStSKrJDluzecnEggZ', '2019-08-02 16:13:41', '2019-08-02 16:13:41'),
(2011, 1, 'xancXiUXpWAF9xeoUrCLoCVovWXP4KaB', '2019-08-02 16:13:41', '2019-08-02 16:13:41'),
(2012, 1, 'wJkcBr2MUPMvXUX6UE2lL3oSsGBcmuDr', '2019-08-02 16:13:41', '2019-08-02 16:13:41'),
(2013, 1, '514MP0MLezyM5tiqNv5N7p9eVZBAWJwN', '2019-08-02 16:13:42', '2019-08-02 16:13:42'),
(2014, 1, 'fBz794n5bcmji5pUN3ritTk8pC1eSBlO', '2019-08-02 16:13:42', '2019-08-02 16:13:42'),
(2015, 1, 'QeshbtHnvlyxuFea9zqx3NUAp3joui5c', '2019-08-02 16:13:42', '2019-08-02 16:13:42'),
(2016, 1, 'dJyQ2cIa7JbPP38bskNdMwJCG1LnvC5T', '2019-08-02 16:13:42', '2019-08-02 16:13:42'),
(2017, 1, 'aMlRsKziZBYiUED5PKF4nhaobcPOuqV1', '2019-08-02 16:18:21', '2019-08-02 16:18:21'),
(2018, 1, 'bSffOrf0OWxonzV2njIKIy2g5iOra2YP', '2019-08-02 16:18:32', '2019-08-02 16:18:32'),
(2019, 1, 'oS3V7s9UGs9RXkMZgOhlwxYUCWyWnLHa', '2019-08-02 16:22:44', '2019-08-02 16:22:44'),
(2020, 1, 'dtgaQEODAB5FZBiZMgvJinuroN4V92yi', '2019-08-02 16:22:44', '2019-08-02 16:22:44'),
(2021, 1, 'i0TFacgfnT3oKK18oBnSDu9vKY5UudWT', '2019-08-02 16:22:44', '2019-08-02 16:22:44'),
(2022, 1, 'niWGIk5I66gxH1P2zLwndl74BhAnPGYY', '2019-08-02 16:22:45', '2019-08-02 16:22:45'),
(2023, 1, '0DXogn9MKF8JOy78UnBQOB4SXVoR9A6E', '2019-08-02 16:23:13', '2019-08-02 16:23:13'),
(2024, 1, 'JgapJi96hiTQfWuBiHiLJLbE6ZLJXG5F', '2019-08-02 16:23:13', '2019-08-02 16:23:13'),
(2025, 1, 'qMwr6l9NTsqlHvoKlXvHn8VaZo3cU7tS', '2019-08-02 16:23:13', '2019-08-02 16:23:13'),
(2026, 1, 'cY5Kb2Orf7uXn0JmN6taeDFDXz8SAffN', '2019-08-02 16:23:14', '2019-08-02 16:23:14'),
(2027, 1, 'YGZD6E2tGNsLwr7BXhJGegJKaXr6zXH4', '2019-08-02 16:24:34', '2019-08-02 16:24:34'),
(2028, 1, 'r9p5hmANUxmicmtbw61e57TVkmKCQhA2', '2019-08-02 16:26:40', '2019-08-02 16:26:40'),
(2029, 1, 'On09Kug0GRshlVWmGVHK44ZlfHWF3226', '2019-08-02 16:27:02', '2019-08-02 16:27:02'),
(2030, 1, 'Pd98Jh4muzI9CfylYDaMT5yai7eEU4AA', '2019-08-02 16:27:04', '2019-08-02 16:27:04'),
(2031, 1, 'Qn5OuFx9jJboopUYUImO4rycrtX4YlzN', '2019-08-02 16:27:05', '2019-08-02 16:27:05'),
(2032, 1, '945iP2XGxCoY2s8pH1IP9V8NGPsje6iO', '2019-08-02 16:27:06', '2019-08-02 16:27:06'),
(2033, 1, '31Pv71pggN640gsvLlvGiAFD5jHvL2S1', '2019-08-02 16:27:07', '2019-08-02 16:27:07'),
(2034, 1, 'ItDv4tuS6rpIJZEwVqAdYiKjqSraWBl5', '2019-08-02 16:27:08', '2019-08-02 16:27:08'),
(2035, 1, 'zvJMRe2vS4sBqULLTyyLcsTJcHW9sTgC', '2019-08-02 16:27:10', '2019-08-02 16:27:10'),
(2036, 1, 'RCYal1C5Fi5kBJPQjiznilPDMOSuibB6', '2019-08-02 16:27:12', '2019-08-02 16:27:12'),
(2037, 1, 'TUfrlo1NLH3xwWGioFR11TV7rA7nMDOc', '2019-08-02 16:27:15', '2019-08-02 16:27:15'),
(2038, 1, '8IJkpESo5OYsFQsaNn01RlKe6CHjOGHu', '2019-08-02 16:27:24', '2019-08-02 16:27:24'),
(2039, 1, '3Nb3ebgL43cSdV5MW9tsIsO9ZQBdb9Sh', '2019-08-02 16:28:01', '2019-08-02 16:28:01'),
(2040, 1, 'KMoOCCHiNhcCnlEsgNKi9AIbsd761QaM', '2019-08-02 16:28:06', '2019-08-02 16:28:06'),
(2041, 1, 'oodrol9JqoTSGjmyY5p3FJ8idwVeLI8h', '2019-08-02 16:28:11', '2019-08-02 16:28:11'),
(2042, 1, 'wmB6MCmhnMdvgEAuaU8fDCY6y7kkYgZ3', '2019-08-02 16:28:15', '2019-08-02 16:28:15'),
(2043, 1, 'QGIIHJS9M7c6pGfF7lyf6Oczd2Z2jFmO', '2019-08-02 16:30:51', '2019-08-02 16:30:51'),
(2044, 1, 'SrlzV7t9jLKLVN6q2vucU01LYagQbnsq', '2019-08-02 16:36:20', '2019-08-02 16:36:20'),
(2045, 1, 'N7d0zsmh1ExrYBwuop8gmTcAOQdx4mQZ', '2019-08-02 16:36:23', '2019-08-02 16:36:23'),
(2046, 1, 'ILGTBvo1wbIhLej4Bd59x5dD2eR2FM2t', '2019-08-02 16:44:16', '2019-08-02 16:44:16'),
(2047, 1, 'AKw2UWmdYRZhD9QlqbMgq1iJW29vspHG', '2019-08-02 16:44:16', '2019-08-02 16:44:16'),
(2048, 1, 'vuJqgyBfc2MnZaiikgdva5WW6q3wfzE6', '2019-08-02 16:45:59', '2019-08-02 16:45:59'),
(2049, 1, 'bJesQ7SyjsKxfa5VW2k8sb3jQsFM6kcs', '2019-08-02 16:46:03', '2019-08-02 16:46:03'),
(2050, 1, 'b6ic0c58eaE5yAoKByvJIYJoGDAdXoGC', '2019-08-02 16:46:27', '2019-08-02 16:46:27'),
(2051, 1, 'xQS79a7Uz5w3lw0PkEVeFmCX15ntaCiB', '2019-08-02 16:46:28', '2019-08-02 16:46:28'),
(2052, 1, 'cYMh5aeMzV93tZiMyFAX9W3hwSbhmIHW', '2019-08-02 16:46:44', '2019-08-02 16:46:44'),
(2053, 1, 'dV6eZZf4koMjznnhW9GFBrtgKA0f9PGJ', '2019-08-02 16:46:44', '2019-08-02 16:46:44'),
(2054, 1, 'J5AjHRK6TB54gHVhLN5OB7LpWDxmfncu', '2019-08-02 16:46:45', '2019-08-02 16:46:45'),
(2055, 1, 'cSveQWaToeqnEysKqhCUoXIMGvP72aHu', '2019-08-02 17:24:31', '2019-08-02 17:24:31'),
(2056, 1, 'lonNx8AAJdwRRDY1sJ0V83LMN6Lzxqnc', '2019-08-02 17:27:30', '2019-08-02 17:27:30'),
(2057, 1, 'gn5lPGWY7K7wzRmsh6rYcLsaAeqvMZc2', '2019-08-02 17:38:43', '2019-08-02 17:38:43'),
(2058, 1, 'vJlxjYHgRyLH0V4Wp2k7WieTFy8c5jhv', '2019-08-02 17:46:23', '2019-08-02 17:46:23'),
(2059, 1, 'gEADsIIWKGLkvkufYt9Rg6YkxoSkLFjB', '2019-08-02 17:50:07', '2019-08-02 17:50:07'),
(2060, 1, 'A7wXi5E7lMoE6XvhTUMbF7NmeJeYmSEr', '2019-08-02 17:52:12', '2019-08-02 17:52:12'),
(2061, 1, 'zVOvKEgjFXsvNiDwOcHcUhYFPceuGZD9', '2019-08-02 17:52:12', '2019-08-02 17:52:12'),
(2062, 1, 'daSuvQap7PjVNLlhEy8BbG5fyjUSsIio', '2019-08-02 17:52:13', '2019-08-02 17:52:13'),
(2063, 1, '1LdYJ2rZZkYcmidteBt7uYHLFhbjcT47', '2019-08-02 17:52:13', '2019-08-02 17:52:13'),
(2064, 1, 'Hqy43x9uR06m3VAL5Mt9lXVHu6CRPQAQ', '2019-08-02 17:54:20', '2019-08-02 17:54:20'),
(2065, 1, 'ROXjsFFlLoQuI0v28uQS0KWk4OEPNyTH', '2019-08-02 17:54:20', '2019-08-02 17:54:20'),
(2066, 1, 'PWQejLUNHwU6BhEZAtCFJsfIKKmrlY4y', '2019-08-02 17:54:23', '2019-08-02 17:54:23'),
(2067, 1, '7oV8NWeqnhsxY1PFNRQ4PMBh9xHEQUpA', '2019-08-02 17:54:23', '2019-08-02 17:54:23'),
(2068, 1, 'MsXfFkQKVkU0Qir7TGZyZuqHVXBI9CDm', '2019-08-02 17:57:54', '2019-08-02 17:57:54'),
(2069, 1, 'QAz4cnlCoHSWkuN3jBhFINWrGg6eXUID', '2019-08-02 17:57:54', '2019-08-02 17:57:54'),
(2070, 1, '5defOJ6oou2ZglLnH0sInqv1YhJoYvzl', '2019-08-02 17:57:57', '2019-08-02 17:57:57'),
(2071, 1, 'TmMfnnmXXDdiCTMPLML1SgxYUKqK5o05', '2019-08-02 17:57:57', '2019-08-02 17:57:57'),
(2072, 1, 'CVYh9gb7MZlLySMvqQ2ULPWm5OuR1a2T', '2019-08-02 17:58:07', '2019-08-02 17:58:07'),
(2073, 1, 'fibqLi0p5zDOJdsYQIDzuL8FvAxWk2Rl', '2019-08-02 17:58:07', '2019-08-02 17:58:07'),
(2074, 1, '0vFZxHzXWGY7efZDjSQkmSbQr3xDjpZh', '2019-08-02 18:06:37', '2019-08-02 18:06:37'),
(2075, 1, 't6pCCvPsaKlKKqcLrvzHdJ1JwKhGUVL4', '2019-08-02 18:07:01', '2019-08-02 18:07:01'),
(2076, 1, 'xS1J8EdBUnn2CgxAyiw97IDuuSkdiiZV', '2019-08-02 18:07:01', '2019-08-02 18:07:01'),
(2077, 1, 'DNwulx3y3eiTDoADakMinAAhYJGHq9XJ', '2019-08-02 18:07:05', '2019-08-02 18:07:05'),
(2078, 1, 'WDccy4szbyoBhPO3cbzDcNCkL5rEBQn7', '2019-08-02 18:07:06', '2019-08-02 18:07:06'),
(2079, 1, '3Qv8AVRgsbigGnWzF6sMiTBCfopnjafn', '2019-08-02 18:07:25', '2019-08-02 18:07:25'),
(2080, 1, 'UEkhwFZFu5naHbhVW5WL2nv2Cdlw4m8z', '2019-08-02 18:07:25', '2019-08-02 18:07:25'),
(2081, 1, 'xy9G4UJiewiOlyX8AYjRJCQ9T2C9h89o', '2019-08-02 18:08:16', '2019-08-02 18:08:16'),
(2082, 1, 'b3AhVZo6PFn9fzJa1vuRAz7nHFNISPmo', '2019-08-02 18:08:16', '2019-08-02 18:08:16'),
(2083, 1, 'Fq8rzIwr12dXDmfNXNByvwOoLDZ9yBUP', '2019-08-02 18:08:16', '2019-08-02 18:08:16'),
(2084, 1, 'JZ3hMbAmhnh3dIEXb2giW55rQ7EIpy4N', '2019-08-02 18:08:16', '2019-08-02 18:08:16'),
(2085, 1, 'ICO4umX4em5DQoV9jaWX4kTB0OG1Ukrv', '2019-08-02 18:08:28', '2019-08-02 18:08:28'),
(2086, 1, 'xVTEqglVlc0mR7m254RZvkGhWybZ7Qxk', '2019-08-02 18:08:28', '2019-08-02 18:08:28'),
(2087, 1, 'ETIY2opR8FDmsikweSjDuvyy3NnUMT59', '2019-08-02 18:08:28', '2019-08-02 18:08:28'),
(2088, 1, 'ZLmXT6yO7dB3RVai0Aq9IOW1g7keSSaM', '2019-08-02 18:08:28', '2019-08-02 18:08:28'),
(2089, 1, '13Kc80svOXakg26KOrWWZQu6U3jFnbJi', '2019-08-02 18:08:44', '2019-08-02 18:08:44'),
(2090, 1, 'K3xppLEIdirSG2zUboAulZFGEVtxzmse', '2019-08-02 18:08:44', '2019-08-02 18:08:44'),
(2091, 1, 'dWjmu22UdCqW4mzDfIbZVU2PaJrKNVbG', '2019-08-02 18:08:44', '2019-08-02 18:08:44'),
(2092, 1, 'L4d08I1QzwK2aulTutQZ15bAbJFkb5lY', '2019-08-02 18:08:45', '2019-08-02 18:08:45'),
(2093, 1, 'rrvdNusKRGn2D5aGmciNAfGDsoXZLeBt', '2019-08-02 18:08:57', '2019-08-02 18:08:57'),
(2094, 1, 'JdL8WhccBp0EwesegPcI3maEEqA0ohun', '2019-08-02 18:08:57', '2019-08-02 18:08:57'),
(2095, 1, 'q4UBI2hmUBt8cG1obpnhNq15kJcxzY6K', '2019-08-02 18:08:57', '2019-08-02 18:08:57'),
(2096, 1, '9hscTg79jm05nfGpfQCb8dA4XRicwmwS', '2019-08-02 18:08:58', '2019-08-02 18:08:58'),
(2097, 1, '1yxXiF3frKyi3kGrzVTB4NVZpp6WGHGH', '2019-08-02 18:09:32', '2019-08-02 18:09:32'),
(2098, 1, 'gA8Gdjv808yqNYDcf3VETdM7TB4wGTX0', '2019-08-02 18:09:32', '2019-08-02 18:09:32'),
(2099, 1, '8Q2DqCg60IP4YpisT2WlONl6PpQN13xg', '2019-08-02 18:09:33', '2019-08-02 18:09:33'),
(2100, 1, '3jg4Ugx56Itila8aYFfTK7D8Is8DTPi9', '2019-08-02 18:09:33', '2019-08-02 18:09:33'),
(2101, 1, 'cnzxGTMQE8sNxL1T5JeLEgqGbF7UjYss', '2019-08-02 18:09:52', '2019-08-02 18:09:52'),
(2102, 1, 'jrJJdtbsLKQ6w0LTqosWS7SE7aMmSt2J', '2019-08-02 18:09:52', '2019-08-02 18:09:52'),
(2103, 1, 'w4T4Ri4spwnpdc7F0ruJbXHeO4qgQtp0', '2019-08-02 18:09:52', '2019-08-02 18:09:52'),
(2104, 1, '8h5MbfZgxxBV0nyqpCWEHxgHkM218Y7U', '2019-08-02 18:09:52', '2019-08-02 18:09:52'),
(2105, 1, '9qzbtH4HXC2vB9ijl4vWaaVtJqMGSvG6', '2019-08-02 18:10:04', '2019-08-02 18:10:04'),
(2106, 1, '05v00PjIcwbDbik9hbkz8M3MU9xeawSV', '2019-08-02 18:10:05', '2019-08-02 18:10:05'),
(2107, 1, 'TL3euHOxb8LbDC65CdEv9zKir5fNg0EL', '2019-08-02 18:10:05', '2019-08-02 18:10:05'),
(2108, 1, 'sQA0U5GOqa3LmIOwlZcUJvmmGSXcTdEU', '2019-08-02 18:10:05', '2019-08-02 18:10:05'),
(2109, 1, 'pB6yRDoClQZ7VqXjCPJG4uQeoqlayLcN', '2019-08-02 18:10:14', '2019-08-02 18:10:14'),
(2110, 1, '0yJxg4brQzBwIVsxiGCPDYKsHNLXHT9A', '2019-08-02 18:10:14', '2019-08-02 18:10:14'),
(2111, 1, '4S1jYIbiel6Q1BF9wnziUUpNn1WPAuUr', '2019-08-02 18:10:14', '2019-08-02 18:10:14'),
(2112, 1, 'uxPZ84O58vdJaIhyfT22r6yCzX3Dvr3G', '2019-08-02 18:10:14', '2019-08-02 18:10:14'),
(2113, 1, '3dEoMaW6lovOXbawx0ijNuPmmKSrvuNV', '2019-08-02 18:11:00', '2019-08-02 18:11:00'),
(2114, 1, 'LXYrAQUTHCORQs6vLKb8tzkFEpWtxwiC', '2019-08-02 18:11:00', '2019-08-02 18:11:00'),
(2115, 1, 'dAxMOriy4mlNurTvXjM0gydunvJgEmTE', '2019-08-02 18:11:00', '2019-08-02 18:11:00'),
(2116, 1, 'MxK4U7X2PPRRRL4i8WbKiBPFWTrClOVx', '2019-08-02 18:11:00', '2019-08-02 18:11:00'),
(2117, 1, 'vUU9ZdzfqSxHxCiiyi1G171oJEqV6uyF', '2019-08-02 18:11:05', '2019-08-02 18:11:05'),
(2118, 1, 'qdvLpHfdXZUkCWmvUosNOusAkKAxalyA', '2019-08-02 18:11:06', '2019-08-02 18:11:06'),
(2119, 1, 'eP3nsPLfagTB2hzFlk2RWyAIWhkSBGEj', '2019-08-02 18:11:17', '2019-08-02 18:11:17'),
(2120, 1, 'hHaFJsTHT9OmawNPiBcffIx64Fix8J8j', '2019-08-02 18:11:17', '2019-08-02 18:11:17'),
(2121, 1, 'HGPQkfh8ZEVT9J8dAKbqAPWyhV7AX5tb', '2019-08-02 18:11:18', '2019-08-02 18:11:18'),
(2122, 1, 'lpHynBwShRf4GlkVbTtSN7UACYrP6yG1', '2019-08-02 18:11:18', '2019-08-02 18:11:18'),
(2123, 1, 'JNmvB9ItIbq7RYFTZC7mmZvd4UC5yzZQ', '2019-08-02 18:11:21', '2019-08-02 18:11:21'),
(2124, 1, 'wix7FJIZzCmDPpXYzB5LKgywaImAmzJV', '2019-08-02 18:11:22', '2019-08-02 18:11:22'),
(2125, 1, 'NkfpLkCUbb69n8yDPMabX1f3KVGafDyO', '2019-08-02 18:11:50', '2019-08-02 18:11:50'),
(2126, 1, 'sq4KOW1AlmheeNrYCojbFDsBDH9bb1J9', '2019-08-02 18:11:55', '2019-08-02 18:11:55'),
(2127, 1, 'yHVr7GkS3MAiSyWonkR2vcQxyWxUsAbb', '2019-08-02 18:12:26', '2019-08-02 18:12:26'),
(2128, 1, 'V5s6JXPrCLAMJNTBJcfy2Dcoa7UjmFWO', '2019-08-02 18:12:39', '2019-08-02 18:12:39'),
(2129, 1, 'GUrdAwTbhUAbllnAfRIAgnTJhOC8SDOq', '2019-08-02 18:13:19', '2019-08-02 18:13:19'),
(2130, 1, 'MJuAgFutcHINzsJNtSpjqrsbhnlqNRLL', '2019-08-02 18:13:20', '2019-08-02 18:13:20'),
(2131, 1, 'DYXCJvUMtCdCEPpLc2YN8eY92wEJ6qLE', '2019-08-02 18:13:31', '2019-08-02 18:13:31'),
(2132, 1, 'hZNc9FVhWyh3nyo1wCYaKT1WsDnPbE6F', '2019-08-02 18:13:52', '2019-08-02 18:13:52'),
(2133, 1, 'WEoKulYBEwCh5bcRHaILQYpoLKii44ID', '2019-08-02 18:15:50', '2019-08-02 18:15:50'),
(2134, 5, 'Sa4lCgfkcNLNmicPYrTRP2PIt5vmlFfd', '2019-08-03 15:35:34', '2019-08-03 15:35:34'),
(2135, 5, 'GjfMytIKZ4whIGEQOHibcRjMR5WbbE49', '2019-08-03 15:37:24', '2019-08-03 15:37:24'),
(2136, 5, 'p4Pwv0lCoW0073HGRyJM7vkGhV149NzE', '2019-08-03 15:38:05', '2019-08-03 15:38:05'),
(2137, 1, 'MUh2BqzZzG7mP1aSTrXgwyZSijeXY3zi', '2019-08-03 15:39:49', '2019-08-03 15:39:49'),
(2138, 6, 'W7EbRlbhpBEOXlj8n520G8xsMrAx8ehh', '2019-08-03 15:40:00', '2019-08-03 15:40:00'),
(2139, 5, 'og3zkCoykvzqIHuChZEgdJRQus6IrqwD', '2019-08-03 15:40:52', '2019-08-03 15:40:52'),
(2140, 5, 'xmdA5w2xXC6LffbQTyYDEYsBWH2861Ku', '2019-08-03 15:41:13', '2019-08-03 15:41:13'),
(2141, 5, 'wbyeQGSG1EiuqVC81Yg52aK0VHkN8Eap', '2019-08-03 15:42:20', '2019-08-03 15:42:20'),
(2142, 5, 'Yshh5y8kyAjdtzsfBtQWPGYKaIBbn9i2', '2019-08-03 15:42:26', '2019-08-03 15:42:26'),
(2143, 5, '5QHHfUSUl1J4TKXSayIA9UnT97nbPSUe', '2019-08-03 15:43:03', '2019-08-03 15:43:03'),
(2144, 5, 'bSMdyDOLDxoaOT0DWzf2mvZiXBJ5nwyY', '2019-08-03 15:43:07', '2019-08-03 15:43:07'),
(2145, 5, 'TP5j7s3F9crkArahmm4Zr04m0ryjqv3s', '2019-08-03 15:43:21', '2019-08-03 15:43:21'),
(2146, 5, 'w9nfFzGOP8b2sDYRYhpFGfEdJJ2bFxfY', '2019-08-03 15:43:23', '2019-08-03 15:43:23'),
(2147, 5, 'njyRHF41DcBeogIT0ibBSnmxe2mGszsN', '2019-08-03 15:43:39', '2019-08-03 15:43:39'),
(2148, 5, '7nst4LFOQGJA2t4FaJFMJUlOgGMXndtc', '2019-08-03 15:44:00', '2019-08-03 15:44:00'),
(2149, 5, '214zNtUMLWr6flBhnSsYXGKatgNITVKW', '2019-08-03 15:44:04', '2019-08-03 15:44:04'),
(2150, 5, 'c8XcCWS27Zx7ETGxW9wKyvImnUOCkoqn', '2019-08-03 15:44:05', '2019-08-03 15:44:05'),
(2151, 5, 'oa2MM2WROVa37y1xuqT2ioMeOTYC5bw2', '2019-08-03 15:44:07', '2019-08-03 15:44:07'),
(2152, 5, 'WheLg1brZamLqxKlRPd8cbXkxCJhpZrm', '2019-08-03 15:44:08', '2019-08-03 15:44:08'),
(2153, 5, 'ObsmZNiVuItTR1II4SXA9QGFZuFGDNBA', '2019-08-03 15:44:17', '2019-08-03 15:44:17'),
(2154, 5, 'Bygyp8jwJH7atlgwOXYyQgmmhzFzh07k', '2019-08-03 15:45:05', '2019-08-03 15:45:05'),
(2155, 5, 'rcAoENAXDspuwUDymSUTBorEFkzupt9S', '2019-08-03 15:45:21', '2019-08-03 15:45:21'),
(2156, 5, 'Z9bTXYy87FNz7rIvcyNEeR5gfGf4Mkm9', '2019-08-03 15:45:28', '2019-08-03 15:45:28'),
(2157, 5, '48eKlKCFwJwvKVEAmk2Q71Ywf4U5WEhk', '2019-08-03 15:45:35', '2019-08-03 15:45:35'),
(2158, 5, '09Bu4TFtZ9FmGxx7emJncuvtCcZcLza5', '2019-08-03 15:46:11', '2019-08-03 15:46:11'),
(2159, 5, 'T6uhnRELxMUldoD8oyJYaClghlhjzP4w', '2019-08-03 15:46:26', '2019-08-03 15:46:26'),
(2160, 5, 'dumMvHr2eydY1GuH5gxcEj23AAS485tU', '2019-08-03 15:46:57', '2019-08-03 15:46:57'),
(2161, 5, '7HwlqjJUoMYsWw4wL1jJHZEkbEeimvJ0', '2019-08-03 15:47:10', '2019-08-03 15:47:10'),
(2162, 5, 'Cn6AWZPKRc4QpOlDUebbuWMpe2xvw64r', '2019-08-03 15:47:32', '2019-08-03 15:47:32'),
(2163, 5, 'hLudkivieWaabq61VUA8g05wkW8c28YG', '2019-08-03 15:48:08', '2019-08-03 15:48:08'),
(2164, 5, 'PbPSK4ntutDHVBK224pS4W6LY9dBzPMM', '2019-08-03 15:48:26', '2019-08-03 15:48:26'),
(2165, 5, 'CwwCWNQPuqU6dTeusnbSPqflKxfXuU8R', '2019-08-03 15:48:26', '2019-08-03 15:48:26'),
(2166, 5, 'A7NaSPs3GOM2gbxyU7hHiUkfIv5C4cs7', '2019-08-03 15:48:44', '2019-08-03 15:48:44'),
(2167, 5, 'OLw0706wnhRYn8YuR2Xy1GXBaOJGd1MG', '2019-08-03 15:49:11', '2019-08-03 15:49:11'),
(2168, 5, 'Dti3dgy8rWI5HoGNDighkYQYt8174Co4', '2019-08-03 15:50:41', '2019-08-03 15:50:41'),
(2169, 5, 'E1HwcJ8vbpcBc65Afe99Z9zwTYHeMrfn', '2019-08-03 15:51:00', '2019-08-03 15:51:00'),
(2170, 5, 'T0m4XR8MQBFddSeyHDPYbp0tNIeyNykZ', '2019-08-03 15:51:19', '2019-08-03 15:51:19'),
(2171, 5, 'B1Fkvdd0REZqLyxfrpdScOKP2eLepyyh', '2019-08-03 15:51:20', '2019-08-03 15:51:20'),
(2172, 5, 'bfXOcx0n1MbUCMWf5CsOslWddKA7N6GB', '2019-08-03 15:52:07', '2019-08-03 15:52:07'),
(2173, 5, '7C3bAewsebSNvtulgIluqBvZN21Nz3ao', '2019-08-03 15:52:23', '2019-08-03 15:52:23'),
(2174, 5, 'e54DZaE6zYpWxtOSJj4rFxE04XkdCkT2', '2019-08-03 15:52:31', '2019-08-03 15:52:31'),
(2175, 5, 'jKwlQw7BCNAnttcE7sw9d5zcLlzvMvXJ', '2019-08-03 15:52:33', '2019-08-03 15:52:33'),
(2176, 5, 'SntCOwAk51vT4wC2bAZD1CvJuPZlkrHa', '2019-08-03 15:53:03', '2019-08-03 15:53:03'),
(2177, 5, 'LE6hCh4FtG7SycvY5jd8Ao1ri7KotJjm', '2019-08-03 15:53:38', '2019-08-03 15:53:38'),
(2178, 5, 'YRmoekyVf2bDnZ54UlorOorA3xSOyJ64', '2019-08-03 15:53:58', '2019-08-03 15:53:58'),
(2179, 5, 'CaE1ebMMxlOtnqWiMk5DkMm925AEyRTa', '2019-08-03 15:54:03', '2019-08-03 15:54:03'),
(2180, 5, 'RtmJx2WvTzXmlgIhz1GEmpqXhyqS39Ta', '2019-08-03 15:54:08', '2019-08-03 15:54:08'),
(2181, 5, '6z3W7dAQ8jw4b8Qj3QDvn2XJCeVh64Yb', '2019-08-03 15:54:09', '2019-08-03 15:54:09'),
(2182, 5, 'npN6FAK7HKthSUUVpIEdnl58JjNykS2A', '2019-08-03 15:54:24', '2019-08-03 15:54:24'),
(2183, 5, 'phQ29T6yfE1s0an5wcqCpaZ2SOLHQUfD', '2019-08-03 15:54:31', '2019-08-03 15:54:31'),
(2184, 5, 'g7JNlLFeTXStZFDVcsSKB74I1OISmQ7m', '2019-08-03 15:54:37', '2019-08-03 15:54:37'),
(2185, 5, 'ftBUFeM0Y4qbYClcl9TrYC1N9UM5Vbsg', '2019-08-03 15:54:50', '2019-08-03 15:54:50'),
(2186, 5, 'VHnqJFPfAm6mQZFYnMkMQCJRSC6OYyiE', '2019-08-03 15:54:56', '2019-08-03 15:54:56'),
(2187, 5, 'Ehg76fqjItvkIAAGtQLAm7qg08x0oXvM', '2019-08-03 15:54:59', '2019-08-03 15:54:59'),
(2188, 5, 'xOm3VqgO1KWktcdbm8GwBq90GVBFyS6M', '2019-08-03 15:55:00', '2019-08-03 15:55:00'),
(2189, 5, 'tLXTFhh1Inzmvsmng7oy3jgS7dfs0yAI', '2019-08-03 15:56:03', '2019-08-03 15:56:03'),
(2190, 5, 'WULiBhuuLALgit0VP5HlVptJ9GftGNNv', '2019-08-03 15:56:11', '2019-08-03 15:56:11'),
(2191, 5, 'S9q1LoN3qwWqAnQtOILYq8QxkXs8ob5I', '2019-08-03 15:56:12', '2019-08-03 15:56:12'),
(2192, 5, 'JFY6BeWLUVaG8GPyDRfrBK3pQ2O5y0mi', '2019-08-03 15:56:36', '2019-08-03 15:56:36'),
(2193, 5, '5zez4UL1zGFp0cy90qduq0AhAIXUiFhK', '2019-08-03 15:56:50', '2019-08-03 15:56:50'),
(2194, 5, 'v7b1L7yLsPGZpIk9fB2NrqCwwaXFQ7MQ', '2019-08-03 15:57:40', '2019-08-03 15:57:40'),
(2195, 5, 'pnHdxROWs2kwqdIvEKCY8FnII4xQq3VC', '2019-08-03 15:58:12', '2019-08-03 15:58:12'),
(2196, 5, '66IipuhSQ0Oq4q7oGlppa5z60179BvzQ', '2019-08-03 15:58:58', '2019-08-03 15:58:58'),
(2197, 5, 'SD1H2JmAWKEvw7DGgLJmqGje4NL759mt', '2019-08-03 15:59:25', '2019-08-03 15:59:25'),
(2198, 5, 'Gxr8rBVpRjvGGEcqywRkWssq8y0fQcud', '2019-08-03 15:59:46', '2019-08-03 15:59:46'),
(2199, 5, 'fkQf6CjYzcUV8rndurjO42zDFXUbz5oW', '2019-08-03 16:00:14', '2019-08-03 16:00:14'),
(2200, 5, '3Y452pDQMGH0xhsepCFO9Z8fbW6fj4M8', '2019-08-03 16:00:18', '2019-08-03 16:00:18'),
(2201, 5, '6TzNOI0QLCXP6A1JDzWAwt9D2dwz413v', '2019-08-03 16:00:19', '2019-08-03 16:00:19'),
(2202, 5, 'KkS9VDjsxiVrHUwpvkLVdho3qdvHbXFc', '2019-08-03 16:00:40', '2019-08-03 16:00:40'),
(2203, 5, '2vd47mjV2I7ulg4xCbEl1bcK2m6xHU0A', '2019-08-03 16:00:42', '2019-08-03 16:00:42'),
(2204, 5, '1ywyq65PkU6UPBQE3yH90sbXQ2VKL0oT', '2019-08-03 16:00:43', '2019-08-03 16:00:43');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2205, 5, 'XGCZCBBLiamdpHph7dgtmKPeB9mfbaz3', '2019-08-03 16:02:02', '2019-08-03 16:02:02'),
(2206, 5, 'QaRmg2Lg11bWAsdgBIxA57NvSBFRBYQA', '2019-08-03 16:02:43', '2019-08-03 16:02:43'),
(2207, 5, '4V7I8HdUm4x9SzdcQJy2rwWmQFbY8sUC', '2019-08-03 16:02:58', '2019-08-03 16:02:58'),
(2208, 5, '53TYm5uEIGoPX89P3Yq6kinhjMij1uKk', '2019-08-03 16:03:02', '2019-08-03 16:03:02'),
(2209, 5, 'uDnsHZUIIkKZ6yVD8ntRoGH6EIK9BxwO', '2019-08-03 16:03:02', '2019-08-03 16:03:02'),
(2210, 5, 'kOdqSOUb8bEGAaRUrF8rZO9nZv9GMRBC', '2019-08-03 16:03:32', '2019-08-03 16:03:32'),
(2211, 5, 'CfGjw1mwRCt6Rc9wRzs521X9Mh4WISyx', '2019-08-03 16:03:39', '2019-08-03 16:03:39'),
(2212, 5, '4CtfowaoL7MpDyMq4A520xMWpSX5krNv', '2019-08-03 16:03:39', '2019-08-03 16:03:39'),
(2213, 5, '52p4yzCsg1toNGs9nh3gnrSQLnEzOj05', '2019-08-03 16:04:54', '2019-08-03 16:04:54'),
(2214, 1, 'iXDpI4AFSU93Un1nUsOvtGrojE5mHdBN', '2019-08-03 16:05:57', '2019-08-03 16:05:57'),
(2215, 1, 'srIat7tpXyYbJkaQjppfyKqCZLDhvbrY', '2019-08-03 16:06:06', '2019-08-03 16:06:06'),
(2216, 1, 'bkg1afd2gxF7xCWAWIJ7p2sbXjmczWU0', '2019-08-03 16:06:50', '2019-08-03 16:06:50'),
(2217, 1, 'yxc5zqUVjU3rv5ledUORAcB8tFryYdmx', '2019-08-03 16:06:54', '2019-08-03 16:06:54'),
(2218, 1, '3jjwpQ05yUiaHW4rz97YUsHFl5f6aBn4', '2019-08-03 16:06:54', '2019-08-03 16:06:54'),
(2219, 1, 'zWCMcWUHk8CHrm13CZVXR4g1r9yg3BRu', '2019-08-03 16:07:00', '2019-08-03 16:07:00'),
(2220, 1, 'pdnNrXVfGiNMcwUWtrA7BahDSHKoTWbG', '2019-08-03 16:07:00', '2019-08-03 16:07:00'),
(2221, 5, 'eKgMGNSqisCN1LIDBCTXpvnze6NmXydf', '2019-08-03 16:07:24', '2019-08-03 16:07:24'),
(2222, 1, 'pcwiMshsXtl8qahDfLuSLrbLhGpJK46H', '2019-08-03 16:07:33', '2019-08-03 16:07:33'),
(2223, 1, 'GjggMzJDYGDKXwoS6x01b23BfTOay5Cc', '2019-08-03 16:07:33', '2019-08-03 16:07:33'),
(2224, 5, 'oYCtXGRaNak8gixMrsvor83hFgzMsIGY', '2019-08-03 16:08:44', '2019-08-03 16:08:44'),
(2225, 1, 'LFUYQONnMxiWpOSwpwDGMmGv7oLJ5Wi3', '2019-08-03 16:08:48', '2019-08-03 16:08:48'),
(2226, 1, 'zx9cO1wKL4fgptyNtE4tT26erJwVgw2n', '2019-08-03 16:08:48', '2019-08-03 16:08:48'),
(2227, 1, '2qyMgPGYFjo5nPiuLKWwtCgCAcImKp4q', '2019-08-03 16:09:03', '2019-08-03 16:09:03'),
(2228, 1, 'V87drtANziphsupgqBmyIZJzBYSEH27v', '2019-08-03 16:09:53', '2019-08-03 16:09:53'),
(2229, 1, 'DTwEWOixWrfQwVUCkOzu7yT2YGsr34Zv', '2019-08-03 16:09:58', '2019-08-03 16:09:58'),
(2230, 1, '2UEs5lR0uRB0kA4udsGTtUkFdCowOJZB', '2019-08-03 16:09:58', '2019-08-03 16:09:58'),
(2231, 1, 'KQ6VNWWw09BwY0533ePyvT9tyV1ELnJL', '2019-08-03 16:10:20', '2019-08-03 16:10:20'),
(2232, 1, '2v4Rk359Rxop0OYFqNPipoLnrZgSQpFU', '2019-08-03 16:10:20', '2019-08-03 16:10:20'),
(2233, 1, 'I58WQdz60dydzk70wy86iYUZOrdsYHo0', '2019-08-03 16:10:23', '2019-08-03 16:10:23'),
(2234, 1, 'vrfZ4fpOPX251XICc6RoLRX0v6kFwoG1', '2019-08-03 16:10:24', '2019-08-03 16:10:24'),
(2235, 1, 'aDK24imYezwHtppgi5btrlnnF6Wo21bo', '2019-08-03 16:10:28', '2019-08-03 16:10:28'),
(2236, 1, '2tA9fMEcqRPHnYHiJO4yNpsGJmt4PFQ8', '2019-08-03 16:10:28', '2019-08-03 16:10:28'),
(2237, 1, 'Ui9K0PLyfZfibCh8GBTqZF9P2pIT0se4', '2019-08-03 16:10:38', '2019-08-03 16:10:38'),
(2238, 1, 'P3Krayqhvipv2esNpqjZUsZ37ujirTLo', '2019-08-03 16:10:45', '2019-08-03 16:10:45'),
(2239, 1, 'tRaorDKSWj8JtKDFhQVaK1XX2Dwdm5TL', '2019-08-03 16:10:45', '2019-08-03 16:10:45'),
(2240, 1, '5YlnAjHYcNFNi79tSZekpVREX1CRWD9W', '2019-08-03 16:10:56', '2019-08-03 16:10:56'),
(2241, 1, '15LvjLTiRx8XnnQqJXDWGG0POpPz5WVt', '2019-08-03 16:11:21', '2019-08-03 16:11:21'),
(2242, 1, 'GSXicfL2jPAiSlqNz7zAlegLCSMhQ8cs', '2019-08-03 16:12:47', '2019-08-03 16:12:47'),
(2243, 1, 'LSMphqj5UfNTHZKFF4EquTngmgBZ5eAT', '2019-08-03 16:13:17', '2019-08-03 16:13:17'),
(2244, 1, 'UvqSamJFMDqlYH5fI6L3wZWAGd92yTSy', '2019-08-03 16:13:17', '2019-08-03 16:13:17'),
(2245, 1, 'tvfU6iLpcVbOYgurH0AaPl3ZpLjp4r37', '2019-08-03 16:14:08', '2019-08-03 16:14:08'),
(2246, 1, 'oWpcYiqM74cxpiR74IHwW0H5901emKJ0', '2019-08-03 16:16:09', '2019-08-03 16:16:09'),
(2247, 1, 'OCyZIjWzElFDzATJvrH0R3uszaMqBUi0', '2019-08-03 16:17:30', '2019-08-03 16:17:30'),
(2248, 1, 'MaZYkvqdVv0sYw3mCt0MMsRtNo1TO1zR', '2019-08-03 16:17:38', '2019-08-03 16:17:38'),
(2249, 1, '9LQ2XzPUWxYRoQGJ8ewj4nSqXP6cCWuE', '2019-08-03 16:17:38', '2019-08-03 16:17:38'),
(2250, 1, 'nXWwi7q2TspQyFAr1E4i73PPDWA4x2jV', '2019-08-03 16:18:32', '2019-08-03 16:18:32'),
(2251, 1, 'l8JVVU80jmpm4jKpvc8J75AzRHmRqrg8', '2019-08-03 16:18:46', '2019-08-03 16:18:46'),
(2252, 1, 'XG2Iuy5R7wkiHFppBfRlzk8L2x7ya0QI', '2019-08-03 16:19:20', '2019-08-03 16:19:20'),
(2253, 1, 'jGCD79dcnICZQlamA17AqKyoKMGi1hJt', '2019-08-03 16:19:20', '2019-08-03 16:19:20'),
(2254, 1, 'RSuKaU8nmPtdVACt3r1XVf7qWaSObCiA', '2019-08-03 16:19:43', '2019-08-03 16:19:43'),
(2255, 1, 'OzTJXTWeHxYhkFkeLXoN8gd83Xy4KCjA', '2019-08-03 16:19:43', '2019-08-03 16:19:43'),
(2256, 1, 'a7xRlGkqYQQhZHcZfCuv3MvEFC10Mi23', '2019-08-03 16:21:32', '2019-08-03 16:21:32'),
(2257, 1, 'r6ha5nEilTDGjaynn6ZKwHKYykozTwBl', '2019-08-03 16:22:07', '2019-08-03 16:22:07'),
(2258, 1, 'Q6e8z5CGcgwZhlYBqfeH0BZXJ8scQ426', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2259, 1, 'xQduMCGZqOmqXfVWCaMC5JKxSDsWYlB8', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2260, 1, 'j9KrhpEAc7e3s7z2ktzpIBZ7dUQA0DoP', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2261, 1, 'ByA3mVCzEnhT79JxegPjUj3vMBdoaxpm', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2262, 1, 'x4xd1Tp41RBEmqdzGb8c1T1AwCOXDeAk', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2263, 1, 'rcl9VcwW1bp8AhiUHDpUcNo1ZHav5mYa', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2264, 1, 'EshkDAkXuj2cf6hMvmwZcyqJ0kRXnvSt', '2019-08-03 16:22:08', '2019-08-03 16:22:08'),
(2265, 1, 'uKJw9nHtElh1Hdyw7MUmCbImAi9qAFQR', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2266, 1, '4PUzTWAmnHhLWH2Me315oAHr1mOh6ijN', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2267, 1, 'fU8XwcgUzccgz9kv4PmOKHu32drMB98H', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2268, 1, 'YIMmElRbo9KZqPajnzQgKQjvSS16RoUu', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2269, 1, 'hn0ElmD3FfZEPtg3JRb1IA59iBqB3XMN', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2270, 1, 'ZtU3QclKIG7zwxGRNu6sut5AuAtTc9IN', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2271, 1, 'wqZeomTF7Hw4jRlWHY538mCxomzgzXfa', '2019-08-03 16:22:45', '2019-08-03 16:22:45'),
(2272, 1, 'r2mO3eepDsmAJMk9TxRBYAVP5LImEUZh', '2019-08-03 16:22:46', '2019-08-03 16:22:46'),
(2273, 1, '2uAokQPwiwNjOU8UHcLZ3FNXdcje14xD', '2019-08-03 16:23:03', '2019-08-03 16:23:03'),
(2274, 1, 'vUxvOrCY2waV7GCRscuMneY4RpfZWyz8', '2019-08-03 16:23:42', '2019-08-03 16:23:42'),
(2275, 1, 'IPJYUzz7HDQAOLog2oBs5Zti2INpl0B7', '2019-08-03 16:23:42', '2019-08-03 16:23:42'),
(2276, 1, '4bgyPccNTILLCbhQiuCUfQzSVITh3SXx', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2277, 1, 'gs8WP41W2D4eoZYTWCSd5TLkqHCEx0Uf', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2278, 1, 'PTR1DW7G3LHVHBywXy10Uspjan3ObpSY', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2279, 1, 'NSXO1lm1GGdwsJNsgvjkR8MiKyKis3k0', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2280, 1, 'wGTpUaedR6bWjubsc1zrGMDalPYX95lL', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2281, 1, 'BjuhYGiLFwQKoNGzXcLkU7sqmT8nqImq', '2019-08-03 16:23:43', '2019-08-03 16:23:43'),
(2282, 1, 'bz1YdanW09QcFWcngug8HhLaHfOY1HIk', '2019-08-03 16:24:07', '2019-08-03 16:24:07'),
(2283, 1, 'VWpvUpCKTQGSkD1d7IUvNwlxMIsRG1TL', '2019-08-03 16:24:07', '2019-08-03 16:24:07'),
(2284, 1, 'RJQjlqdYlzA21g0Kz3iMLCmUH9u9ErA7', '2019-08-03 16:24:07', '2019-08-03 16:24:07'),
(2285, 1, 'hQ5muFznn8fmrwMc0fryschsVpGTvA7M', '2019-08-03 16:24:07', '2019-08-03 16:24:07'),
(2286, 1, '5XNo5DMBEw8WNncjYZ6meBGiWCkHhrWB', '2019-08-03 16:24:07', '2019-08-03 16:24:07'),
(2287, 1, 'WcIVZ2Cn1OiCDQLuTI6rlgofhh9blYoN', '2019-08-03 16:24:09', '2019-08-03 16:24:09'),
(2288, 1, 'Fvb7pZI9gvO23z15KjJR7ZmV6cugHiYM', '2019-08-03 16:24:09', '2019-08-03 16:24:09'),
(2289, 1, 'bttGg5g2Njzmf4Hkdsp9cSPQ75fPdBIK', '2019-08-03 16:24:10', '2019-08-03 16:24:10'),
(2290, 1, 'XZsvXmBItbD1piGm5MJ5jeXRIj4Cmm4X', '2019-08-03 16:25:09', '2019-08-03 16:25:09'),
(2291, 1, 'XN7PYUP5dnMzrgV2ki2UID7kpD51sedf', '2019-08-03 16:25:27', '2019-08-03 16:25:27'),
(2292, 1, 'U0n80gvDmYmyGL3NJ1pueyiiJ6s6TPFC', '2019-08-03 16:25:27', '2019-08-03 16:25:27'),
(2293, 1, 'KhZ74kg3UWehQe1JtWVe5t3eixlH35NO', '2019-08-03 16:29:15', '2019-08-03 16:29:15'),
(2294, 1, 'cSsGiGQWNlD05TY9QHitnlIRcEXL0Qlt', '2019-08-03 16:29:45', '2019-08-03 16:29:45'),
(2295, 6, 'CynfL3pDAdN9P9K13CxQ3UfvsT0hbyCM', '2019-08-03 16:32:39', '2019-08-03 16:32:39'),
(2296, 6, 'yuFXiQqJLWdbjyVPGVje9VodPcvfBZlF', '2019-08-03 16:33:32', '2019-08-03 16:33:32'),
(2297, 1, 'uk68lOpsN3QIQnyeGhGMJAwgln9hezUd', '2019-08-03 16:35:32', '2019-08-03 16:35:32'),
(2298, 1, '7PkiPNgYnPRzsYcubC8loToynWMhN1D9', '2019-08-03 16:35:35', '2019-08-03 16:35:35'),
(2299, 1, 'Ee5vgPueUDliSqE99BDQuBj6ylKhwXyr', '2019-08-03 16:35:41', '2019-08-03 16:35:41'),
(2300, 1, 'Y6QbzUgDVvkOci1sKRW3ec5ucNnM4x0U', '2019-08-03 16:35:50', '2019-08-03 16:35:50'),
(2301, 1, 'I8UBS4Z5SPOcTp5W8fwdRmSkTIgoPNrr', '2019-08-03 16:35:59', '2019-08-03 16:35:59'),
(2302, 1, 'DpOkmjcM7snhSAi7fu5uegZ8GhuiEl7W', '2019-08-03 16:36:11', '2019-08-03 16:36:11'),
(2303, 1, 'J4Bselo1Xwms97m28Jm3qBDyAi00teVg', '2019-08-03 16:36:31', '2019-08-03 16:36:31'),
(2304, 1, 'isPgUYD0c0PJ683FOIT1uAjcHtnpVfSo', '2019-08-03 16:36:40', '2019-08-03 16:36:40'),
(2305, 1, 'nLvMktY1P4GPJjPAl84gXL6nrerPspVq', '2019-08-03 16:36:40', '2019-08-03 16:36:40'),
(2306, 1, 'rs1ofNeVxRszmM4K3yHOicWQF9YXd80v', '2019-08-03 16:36:51', '2019-08-03 16:36:51'),
(2307, 1, 'LdiZBkh4RCHEDe5jA3iaCEXPUZQEhh0V', '2019-08-03 16:36:51', '2019-08-03 16:36:51'),
(2308, 1, 'POzkJOZYEKc7ab4gbCip6wxazc4JAQFj', '2019-08-03 16:36:57', '2019-08-03 16:36:57'),
(2309, 1, 'zD2Vz2qrjhQhUSjtg6NHnfHIf9WNMDnz', '2019-08-03 16:36:57', '2019-08-03 16:36:57'),
(2310, 1, '0WhguRFn5MnjBG74a4QEFowcIFL4VQ5p', '2019-08-03 16:36:59', '2019-08-03 16:36:59'),
(2311, 1, '2uzRiYrFLbDyccq51l64LD4sI5LnBQgD', '2019-08-03 16:36:59', '2019-08-03 16:36:59'),
(2312, 1, 'VQsbsDH7uw9dyCfIZcShhmMa9JeE9YO8', '2019-08-03 16:37:04', '2019-08-03 16:37:04'),
(2313, 1, 'tj8jhz37pWYtsHeCCJftRsA5ITfkmR1y', '2019-08-03 16:37:04', '2019-08-03 16:37:04'),
(2314, 1, '4VHxs6DPnS1Fb3BOMYG3HOCqhLFUJAcQ', '2019-08-03 16:37:50', '2019-08-03 16:37:50'),
(2315, 1, '6S9EMqcwyywI7q3vtyDTU9BCFJkHtGM6', '2019-08-03 16:38:02', '2019-08-03 16:38:02'),
(2316, 1, '7PLUDPz9lvfXsMmpPp9mwtJv9TBFpzFe', '2019-08-03 16:38:02', '2019-08-03 16:38:02'),
(2317, 1, 'njBL44gUrQDvwuLkUGkSrTAF66z9T9V6', '2019-08-03 16:38:05', '2019-08-03 16:38:05'),
(2318, 1, 'gJO4rkQsSXkHJZkzIERHHcZs35ki1mhp', '2019-08-03 16:38:20', '2019-08-03 16:38:20'),
(2319, 1, 'rICaFenO5MrD6v5OfWErlQzDQ2tispSZ', '2019-08-03 16:38:27', '2019-08-03 16:38:27'),
(2320, 1, 'H1lCOVAnMcvHKJEAEDsC43plWXLIaY1N', '2019-08-03 16:38:27', '2019-08-03 16:38:27'),
(2321, 1, 'CnmCekspES4In8lLH74xslKDY1U1Kto4', '2019-08-03 16:38:39', '2019-08-03 16:38:39'),
(2322, 1, '4agd0iGt9Q98DNILyskGAxEds7b0BlzU', '2019-08-03 16:38:39', '2019-08-03 16:38:39'),
(2323, 1, 'zZZuI2iusSFSXw9lnaReDoxc81JkyvYg', '2019-08-03 16:38:41', '2019-08-03 16:38:41'),
(2324, 1, 'QAofDPoooqycC159TZeSpkD95oDheD4G', '2019-08-03 16:38:47', '2019-08-03 16:38:47'),
(2325, 1, 'ep9tlRGhiXoqK171T0cHysmtk1srfQuN', '2019-08-03 16:38:56', '2019-08-03 16:38:56'),
(2326, 6, 'N3y0q091rFJqX43BhaQLwAuj6s3uevaS', '2019-08-03 16:39:06', '2019-08-03 16:39:06'),
(2327, 1, 'ax3m2f9w2BXCnZWksk0YhjZxrvxUpvXl', '2019-08-03 16:39:09', '2019-08-03 16:39:09'),
(2328, 6, 'oQOSTTFvtKR2mu5O6IOalWE4yJSfU1za', '2019-08-03 16:39:32', '2019-08-03 16:39:32'),
(2329, 6, 'pVnoFR6YxAuQ6f2jYGJtJDiqpd1tAM6l', '2019-08-03 16:39:32', '2019-08-03 16:39:32'),
(2330, 6, 'mzkbmhwbBHYvy2GkqlVHwOzah3DFp4du', '2019-08-03 16:39:32', '2019-08-03 16:39:32'),
(2331, 6, 'EsBTQOQatngfnMyxnnBIKEOAgymIgP91', '2019-08-03 16:39:32', '2019-08-03 16:39:32'),
(2332, 6, 'hanfM0WNDfY8azND2tAscma69ONRD3i8', '2019-08-03 16:39:32', '2019-08-03 16:39:32'),
(2333, 6, 'ulbSZv5dd2XN1pS5SM4cAkAPmCPAa7c7', '2019-08-03 16:39:33', '2019-08-03 16:39:33'),
(2334, 6, 'q3JD3SzaBmqGcyVXaTYKsZVW1SvSykGd', '2019-08-03 16:39:33', '2019-08-03 16:39:33'),
(2335, 6, 'DTuIR7b1jdLTOSp4tg9stPIK5REZVp1D', '2019-08-03 16:39:33', '2019-08-03 16:39:33'),
(2336, 6, 'gBq3X71chlsdL1Iuzy6E3tFyBNPfRJUm', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2337, 6, 'MuRItK58rVNDeyHMs6t525xUsZUwKW21', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2338, 6, 'YuwBH14Ttzk4HssaTSDzel2oV9mQR8Kn', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2339, 6, 'VDlv40VM7q9m7oRk7Fidbs8cg7iTP4vh', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2340, 6, 'Y93mvVVFyFuyp1jvam7fBp6h22HzXKdE', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2341, 6, 'uONShEq58vL8emVZU8KpxkwFm3TzGt3a', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2342, 6, 'VDhDQWnU616GNO2j2psfXKc3Z59sorKB', '2019-08-03 16:39:58', '2019-08-03 16:39:58'),
(2343, 6, 'LQyAvqqITFp0UhIbDAtzvOlIAQW3tNAl', '2019-08-03 16:39:59', '2019-08-03 16:39:59'),
(2344, 6, 'rgVSSBimZBEdDIRsZPXuSZuvjtXJZpSn', '2019-08-03 16:40:07', '2019-08-03 16:40:07'),
(2345, 6, 'PDcP5t9rtbGsdIE2BajNJQc1I2nsRL0I', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2346, 6, 'JKXcZcv63FI06NXMdmI4XPcBAvymzrbf', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2347, 6, 'e0Zv40ShuQSmq12XIMpuBCrCDyOoNiGR', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2348, 6, '1W31uD25W1JnJuFWWtAKNiU8m2F4fXfm', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2349, 6, 'qFlUEthWCBnOuqlmVNtSNSeE31VRWvGl', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2350, 6, 'rA73a3Ocu6dCE88uRgaa20gHWLFWnMyN', '2019-08-03 16:40:08', '2019-08-03 16:40:08'),
(2351, 6, 'lSIaAtQhj46zj89dlyFleExrTFDOfE7X', '2019-08-03 16:40:09', '2019-08-03 16:40:09'),
(2352, 1, 'CbGItpZKstXaPfWfbdeooBk4BabQcE3Z', '2019-08-03 16:40:14', '2019-08-03 16:40:14'),
(2353, 1, 'gnOzSM3gPiS4boDQdi8djxHXplikCVzv', '2019-08-03 16:40:14', '2019-08-03 16:40:14'),
(2354, 1, 'D6ubEAnjcVZ9uHfXoYzZb1tVt4uaXkpj', '2019-08-03 16:40:18', '2019-08-03 16:40:18'),
(2355, 1, 'OEZ4PMKH0L8YGgzDdUP0nv90Rvw5BIcL', '2019-08-03 16:40:18', '2019-08-03 16:40:18'),
(2356, 6, 'uYzjeiUFTWSh8JJSak0nIujbaJ7Ush3d', '2019-08-03 16:40:24', '2019-08-03 16:40:24'),
(2357, 6, 'lu2gf8i2ZjhdfSaAjFRLDzauVt52egAc', '2019-08-03 16:40:35', '2019-08-03 16:40:35'),
(2358, 6, 'ueapWfUJC0T7qXeh04mM3JGeAYQEJEWF', '2019-08-03 16:40:35', '2019-08-03 16:40:35'),
(2359, 1, 'UkDl2Xr9Y7coPx9ooZTRYb9HfUWY8TwK', '2019-08-03 16:40:44', '2019-08-03 16:40:44'),
(2360, 1, 'fHbPnU3T6mS66OwDu9TIdl1ABPUzLiLQ', '2019-08-03 16:40:44', '2019-08-03 16:40:44'),
(2361, 6, 'LJIeZtCIJJ7lMp6XsZy8n29e8PRaY9oG', '2019-08-03 16:41:33', '2019-08-03 16:41:33'),
(2362, 6, 'A3knufoPKLFalKMa09G3EEWiGSFnoM0C', '2019-08-03 16:41:57', '2019-08-03 16:41:57'),
(2363, 5, '6PIY1K9mbVYhOTG9qCxHVo8z6h0aoVYh', '2019-08-03 16:43:00', '2019-08-03 16:43:00'),
(2364, 1, 'HcWDH0pgXS337qX5Mrs8L0rZIZrYOSaL', '2019-08-03 16:43:04', '2019-08-03 16:43:04'),
(2365, 1, 'Cvn2nkv5EeNWM6l0iIssjv4JeoB65bDs', '2019-08-03 16:43:04', '2019-08-03 16:43:04'),
(2366, 1, '7xKl6CHSfIzj7x0Jn9Vct5UGcruhvU4i', '2019-08-03 16:43:28', '2019-08-03 16:43:28'),
(2367, 1, 'GukcnA23TjyWEWcaxI7PlzvxlWNx2huQ', '2019-08-03 16:43:28', '2019-08-03 16:43:28'),
(2368, 5, 'qy24NZeDXkuIhuMaXe4iG0kXbIOpD9T5', '2019-08-03 16:43:29', '2019-08-03 16:43:29'),
(2369, 5, 'u09ydKLh8i2CakA0O6OlBYEqqTi3cLYN', '2019-08-03 16:43:59', '2019-08-03 16:43:59'),
(2370, 1, 'HyebMGTWulp2WCfK4Wlasm1xX82kKs6w', '2019-08-03 16:44:16', '2019-08-03 16:44:16'),
(2371, 1, 'Oevosy3qcJPXlZOe3budmAQAhHuwDIXT', '2019-08-03 16:44:19', '2019-08-03 16:44:19'),
(2372, 1, 'YTXFf9KRXnfxEeQZTdHzJIBMhmoVOUHH', '2019-08-03 16:45:48', '2019-08-03 16:45:48'),
(2373, 6, 'mSLzt3OTZt8BukRPzQgBt4HQZGVgsqfj', '2019-08-03 16:49:25', '2019-08-03 16:49:25'),
(2374, 6, '1vKFDdKgSKqC91YbIEUvpKLI2KWcw7EN', '2019-08-03 16:49:37', '2019-08-03 16:49:37'),
(2375, 6, 'KYY9QaKGK1UWJyzwbLXzvA8EbmfLfc9z', '2019-08-03 16:49:37', '2019-08-03 16:49:37'),
(2376, 6, 'oU0LKgXJxVbSCZ2qxOETrT3enL7hMQUf', '2019-08-03 16:50:34', '2019-08-03 16:50:34'),
(2377, 6, 'YRh4Zxp8eT7Gf0zHXhMuVThDeyK559r8', '2019-08-03 16:50:34', '2019-08-03 16:50:34'),
(2378, 6, 'Xf8tuo59HKA3jyRacyX8VTluMJanMsAu', '2019-08-03 16:50:34', '2019-08-03 16:50:34'),
(2379, 6, 'qKKnx4wFb9g5H2fh0FPXSg1cH7A5vgnX', '2019-08-03 16:50:34', '2019-08-03 16:50:34'),
(2380, 6, 'NpnTeCWkm6g0tZIiTKCNFC2GFASUhjFE', '2019-08-03 16:50:35', '2019-08-03 16:50:35'),
(2381, 6, 'sVHnjGqzk67x1GUGLaplCvc2IktUwUuk', '2019-08-03 16:50:35', '2019-08-03 16:50:35'),
(2382, 6, 'vANdBDQdeNGruG0EoaTcyiLp0AHFI5oR', '2019-08-03 16:50:35', '2019-08-03 16:50:35'),
(2383, 6, 'T1jAOl49t95P2htGgAEYLpQrDl8EI1BQ', '2019-08-03 16:50:35', '2019-08-03 16:50:35'),
(2384, 1, 'Ul5A4NzRKBA1WXXjjrsCnQg3Dz6BIzkA', '2019-08-03 16:50:45', '2019-08-03 16:50:45'),
(2385, 1, 'KMkPdwSxdKY8Co8EkbEiig90QnhynVsK', '2019-08-03 16:50:45', '2019-08-03 16:50:45'),
(2386, 6, 'Dgm9p33wEcuW25lePJe5ZViwclhtJIbR', '2019-08-03 16:51:00', '2019-08-03 16:51:00'),
(2387, 6, 'nDt3pT9tREwS55ElcREO4vYhe2tIvsde', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2388, 6, 'UXHu5KxvXbJo7w3TU08pLgkUCSXWgOWE', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2389, 6, 'skSWrn7TC85GqaXawZJ0ZGhWbf6XQvSd', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2390, 6, 'a4SUKriJl3qeDUos00sz1rLfuJqIYfR4', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2391, 6, 'gZ4ELLmI6QHPPP34jTn0xlkIcQZRZ5Uu', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2392, 6, 'E3DvrjnRVoB79P1gvYAtQKgI9Eoa0g6h', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2393, 6, 'AYc0WlgBJwc5PfSIIZEqGA7YqYz8jHeN', '2019-08-03 16:51:01', '2019-08-03 16:51:01'),
(2394, 6, 'DbEuwtTUJbgayapzd8P2Fe07Hw87WgGy', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2395, 6, 'ipLWYp6lmCitmCNklkcnaHAI2N4qQkss', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2396, 6, 'BRBCKrJf5uCYJ3FsBYV3qYvOGmjpvBvo', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2397, 6, 'xpz3FH3iFOj54ZAR6u8mYshYNMAnH16t', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2398, 6, 'YujNN62xozxvo0PmPwIdr9PZYYjCkaIb', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2399, 6, 'KuIx3EqngH73kJidB8arK9RH733zyh2c', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2400, 6, 'maozT5uReFKWBm1bnwRngC4MWRb1WHgF', '2019-08-03 16:52:42', '2019-08-03 16:52:42'),
(2401, 6, 'Vm5ZZnA4USav4Nt5ropbIxLGMtoqMG3m', '2019-08-03 16:52:43', '2019-08-03 16:52:43'),
(2402, 6, 'DkckIVuKls0aw3X4mpI10AeW25WXNPt4', '2019-08-03 16:52:48', '2019-08-03 16:52:48'),
(2403, 6, 'FjYlurhwhC2KcsQADCqnGugnf4WF8aIV', '2019-08-03 16:53:14', '2019-08-03 16:53:14'),
(2404, 6, 'Qzp2Z2MkDoJaK5RDze6sc5RhnNSaNI9l', '2019-08-03 16:53:14', '2019-08-03 16:53:14'),
(2405, 1, 'cNUbKX3OCE0nQqBrsHotForfrRRLia2F', '2019-08-03 16:54:05', '2019-08-03 16:54:05'),
(2406, 6, '8dz4fBPeP5EHuVj65C7Jtdg99v5r5RJI', '2019-08-03 16:54:47', '2019-08-03 16:54:47'),
(2407, 6, 'iWGx4rzdyknBFDUNAp62eewWmNprlNy3', '2019-08-03 16:56:21', '2019-08-03 16:56:21'),
(2408, 1, 'uul7SgNojImVlg4jowjFq2h9xqc7cdDo', '2019-08-03 16:56:30', '2019-08-03 16:56:30'),
(2409, 1, 'QxkaKmUzVds6r2xigssFS64g5PunWM8U', '2019-08-03 16:56:45', '2019-08-03 16:56:45'),
(2410, 6, 'luJr5J97D1g5HuoGCL0TmjTVxjY4zH5K', '2019-08-03 16:58:26', '2019-08-03 16:58:26'),
(2411, 6, 'QAff4ZgCGhtGxz2YYrwmP8hOk2ui0U3r', '2019-08-03 16:58:26', '2019-08-03 16:58:26'),
(2412, 6, 'hoUu68YEvsYn0K1lyRJ7m1rm7tra7eKe', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2413, 6, 'TXgWDm6pqfpm0Tjeg4XJI8jqG03cbvRO', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2414, 6, 'xTNtDkR3MsvbiecZSMCBnZqwQN2IuPqu', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2415, 6, 'IcK2p64lYiZXGcG5cbINFoiyFaknvcPN', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2416, 6, 'DmIzbxroHIj4kfIp7VGILww2Wxhdv7nR', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2417, 6, 'PXvONnf32TfMs6Jync5842EV3LSKMrpY', '2019-08-03 16:58:27', '2019-08-03 16:58:27'),
(2418, 6, 'XQGntUG2NiNfHKuQlIHkeudQbWpUOGKy', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2419, 6, 'JZ8PAcmC0v5CdtK9dHnWxaDZTo2lNx7n', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2420, 6, 'M5Bv9W2xQSu00YqPzsEx4NnBr945djDC', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2421, 6, 'vqMuXPYRBXgFedSlsYEWgTYXVE8VaALs', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2422, 6, 'RHygP71eurWjSSWv8EVnKDLB3SHeeZLi', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2423, 6, 'OkIAfnzlVNqtQbEEUd3evaEVjy64x3M0', '2019-08-03 16:59:47', '2019-08-03 16:59:47'),
(2424, 6, 'jXFtgYQHmKeDFgYEbIRuYbw0cAaI3fYu', '2019-08-03 16:59:48', '2019-08-03 16:59:48'),
(2425, 6, 'GpkPNuth8Vj0PfLM8Kr2UGwe6TFtOeQ4', '2019-08-03 16:59:48', '2019-08-03 16:59:48'),
(2426, 6, 'WERAa50ZrjLOQBxoqtcl3JED5OgOa5QC', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2427, 6, 'By8W7Ufw3zsvmfQsOShEpDiROBuUvHhv', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2428, 6, 'I7VEKc6OY84b17hH0KDzTwJQmqj2XQ3a', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2429, 6, 'J2j25RSoTBzJwsrc3hwbFUABhqw4mKvh', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2430, 6, 'qYGd59TLpDUTp2DuwmpPEpjhZWj59bE7', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2431, 6, '6n0IeulPM3dQXa2Zp88CT2pEFPldQc50', '2019-08-03 17:00:01', '2019-08-03 17:00:01'),
(2432, 6, 'mGwGC8yc4pBKRtfb3Sh5wBJTTZoTfk7D', '2019-08-03 17:00:02', '2019-08-03 17:00:02'),
(2433, 6, 'LVXNMKusEJAAwksph8B8GKQmiW5UZRl8', '2019-08-03 17:00:02', '2019-08-03 17:00:02'),
(2434, 6, '8NxMBQSnF9cJ111jmAh3ECnpFXwzdaTO', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2435, 6, 'OLoo5nXYifBEdp2O48bZ2JxuEOwXkLF3', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2436, 6, '88AslkOwIlwbbCPdeEaE2FBeFNsvpe9o', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2437, 6, 'x46yYMUvMHyjjvaHPxwsRHkciYobMgwg', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2438, 6, '8LEJSPdKLbHuI4C3uLgYkLoKZDh4zYT3', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2439, 6, 'M1hBYsDUa7T6eXX9kkvZ26eaG2wgJg70', '2019-08-03 17:00:45', '2019-08-03 17:00:45'),
(2440, 6, 'E1aTIFhASTSjm1Ii0TzCi38VkWxVFCof', '2019-08-03 17:00:46', '2019-08-03 17:00:46'),
(2441, 6, 'l21KdVeGErWIwBtGAJiuwYf1gUfC9rAM', '2019-08-03 17:00:46', '2019-08-03 17:00:46'),
(2442, 6, 'sWdTnO2WZx19O9gnYQIkf7ybBPPRRaIY', '2019-08-03 17:01:06', '2019-08-03 17:01:06'),
(2443, 1, 'U4Y4PKdF10EzyVa5UVCcyDxa8hiC5NuU', '2019-08-03 17:01:07', '2019-08-03 17:01:07'),
(2444, 1, 'OEdQyh0B9y2fwrNFXjtbmrdSvrwXWwWM', '2019-08-03 17:01:07', '2019-08-03 17:01:07'),
(2445, 6, 'mF4GE9FnVPfq9oDzLNQnyQYln1wdWdQT', '2019-08-03 17:01:16', '2019-08-03 17:01:16'),
(2446, 6, 'CafkiLVg40znaslBrOJJihPYtEZFhXww', '2019-08-03 17:01:16', '2019-08-03 17:01:16'),
(2447, 1, 'UTRZJnYvBpgcnI5kNgrtfavVjdHUdrXF', '2019-08-03 17:02:38', '2019-08-03 17:02:38'),
(2448, 1, 'lpEDVvnycWnWeOfYGZoh5kMsdOnJofOm', '2019-08-03 17:03:26', '2019-08-03 17:03:26'),
(2449, 1, 'ZvN6yIGXgjXHMFzpHFk6cpLj9vcwQqkq', '2019-08-03 17:03:26', '2019-08-03 17:03:26'),
(2450, 1, 'EWf5JWkDk4fej8zx5SiKrxVmqgqHEOWn', '2019-08-03 17:03:35', '2019-08-03 17:03:35'),
(2451, 1, 'mtcx4ExMG829WD6Im9uiJUXIMny6pBVd', '2019-08-03 17:03:43', '2019-08-03 17:03:43'),
(2452, 1, 'f7oyuag24TfAWHzdBbDaTFCndEHzbED7', '2019-08-03 17:06:11', '2019-08-03 17:06:11'),
(2453, 6, 'pzENJ2MkQHKGlN8PS0qgTy78UTsYIEwc', '2019-08-03 17:06:43', '2019-08-03 17:06:43'),
(2454, 6, 'mOYIPgY0tq69CWdGdw5JPdwQF08f2ESe', '2019-08-03 17:06:43', '2019-08-03 17:06:43'),
(2455, 6, 'ITFfEu2uMaYTcNYNdI1jCtrD8Eu5y0R6', '2019-08-03 17:06:43', '2019-08-03 17:06:43'),
(2456, 6, 'wgxWpfKSlOY1ZRHxjIUMFjjX4WHjx0n0', '2019-08-03 17:06:43', '2019-08-03 17:06:43'),
(2457, 6, 'Kna2hytf9ZJpmcf87OnmBVTCVX2lZUjL', '2019-08-03 17:07:55', '2019-08-03 17:07:55'),
(2458, 6, 'R7OKqbNeP0V0cHE9uSA7UhRjvWQ7rYSf', '2019-08-03 17:10:41', '2019-08-03 17:10:41'),
(2459, 6, 'Maa6uRssZ3axLh08VEx7WbMpcgW9ayE0', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2460, 6, 'R3Vy1ZKZXlyWRMoPy76m3zGrzXa5ZT8b', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2461, 6, 'dNn4T8UoPV8oskZaSxc3vrmICA9Uvbvt', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2462, 6, 'zwl8XborwsTfOyyhes2hW7HYGWCBBdLM', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2463, 6, '9FUuvSYHqvLL7KJuTQ3QcohTEIoTGUvI', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2464, 6, 'WXFsWXVi6dqSUWd8oGabZdPpSm2vsGE8', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2465, 6, 'ToeiayUMJtJSKpru27tTzD2A6GYX9YSH', '2019-08-03 17:10:46', '2019-08-03 17:10:46'),
(2466, 6, '5EIDC7kXNC1jU78o69rQ7hVZBwXpMFxo', '2019-08-03 17:10:47', '2019-08-03 17:10:47'),
(2467, 6, 'TcAOEEscY1mxbt2QFC7VBegdEJACogW5', '2019-08-03 17:11:01', '2019-08-03 17:11:01'),
(2468, 6, 'HgI7Xxeyn9Hi41dxIqxu9RCxoaV0TTRq', '2019-08-03 17:11:01', '2019-08-03 17:11:01'),
(2469, 6, 'vjlsN74wjizeXRiQjlZCiHkkVFz3Xq8p', '2019-08-03 17:11:01', '2019-08-03 17:11:01'),
(2470, 6, 'iJps9DMk0NKZxqytrprLvRRwtaSsctCG', '2019-08-03 17:11:01', '2019-08-03 17:11:01'),
(2471, 6, 'VWokIqqBlEtySajPYYWebHCsLU2dty0C', '2019-08-03 17:11:01', '2019-08-03 17:11:01'),
(2472, 6, 'n2XhWOj4oLd6Fmai1rfTSqkBNtLNggPj', '2019-08-03 17:11:02', '2019-08-03 17:11:02'),
(2473, 6, 'LErb7TTOxftYRWEGfcAUF7COI2KSqkPT', '2019-08-03 17:11:02', '2019-08-03 17:11:02'),
(2474, 6, 'AGiEV09NPQgve2WDRxuVMsdFiML9fhar', '2019-08-03 17:11:02', '2019-08-03 17:11:02'),
(2475, 6, 'aBJoCvZPX6Ayq4Kp62CyUkL7xdRqepvR', '2019-08-03 17:11:45', '2019-08-03 17:11:45'),
(2476, 6, 'D70FRTFNV3Exadnnxk2rlWduCN2HX2u5', '2019-08-03 17:11:45', '2019-08-03 17:11:45'),
(2477, 6, 'jEF2GVHc2AGsM6WhtQl3OMwAdpOjPSYW', '2019-08-03 17:11:45', '2019-08-03 17:11:45'),
(2478, 6, 'oT9Fb9ZaiqlFd5zfIINWs1iixMoETdld', '2019-08-03 17:11:45', '2019-08-03 17:11:45'),
(2479, 6, 'JQJqzrdeD6jU7ybXMvp8tBqUqj3nkAJT', '2019-08-03 17:11:45', '2019-08-03 17:11:45'),
(2480, 6, 'lFcu5Bl5FRh68CwStAbwqS5Awq23Rv1I', '2019-08-03 17:11:46', '2019-08-03 17:11:46'),
(2481, 6, 'zOdiI3A33TmPEi8UEuh0zkEhY8mpnQtM', '2019-08-03 17:11:46', '2019-08-03 17:11:46'),
(2482, 6, '05VxTvnIR31Ci4jQYnpG9Ld5tu8LYo4H', '2019-08-03 17:11:46', '2019-08-03 17:11:46'),
(2483, 1, 'ejRwIkm0VYjvHCb5v5DJHYKUL9QgMSuG', '2019-08-03 17:14:02', '2019-08-03 17:14:02'),
(2484, 1, 'Lce4bC0F0c3IZ9m4UhUMDJ0F3GiqQUMf', '2019-08-03 17:14:03', '2019-08-03 17:14:03'),
(2485, 1, 'VaSQvylEZiOF5VjXa6Uc4XrzOssaevqc', '2019-08-03 17:15:23', '2019-08-03 17:15:23'),
(2486, 1, '0gElyqEmXftm7PUvzcOCiWfMfG3jD9jE', '2019-08-03 17:15:23', '2019-08-03 17:15:23'),
(2487, 6, 'T3gdX8L0cX0jAGEfm2yA7LqrsynxeD2v', '2019-08-03 17:15:44', '2019-08-03 17:15:44'),
(2488, 6, 'ol4ibBSt8m3y1rKL2rb6vd9AdZDoSmAF', '2019-08-03 17:15:45', '2019-08-03 17:15:45'),
(2489, 6, 'kHF1x98425Ax0JrGP2U8tMBkDlcKgCDH', '2019-08-03 17:15:45', '2019-08-03 17:15:45'),
(2490, 6, 'D5dK3nzy8dZnw0Z7QCSaJnPEpqURdLyy', '2019-08-03 17:15:45', '2019-08-03 17:15:45'),
(2491, 1, 'kH5qMysd1L1GtnPGj7NP7rlRei99Kd66', '2019-08-03 17:15:53', '2019-08-03 17:15:53'),
(2492, 1, 'oYs3FSDcWlwWQ7fjczSjiS8CT59O9hMX', '2019-08-03 17:15:53', '2019-08-03 17:15:53'),
(2493, 6, 'B78DyjsYsn9QXKQacfylslbm9LkCN4mN', '2019-08-03 17:16:03', '2019-08-03 17:16:03'),
(2494, 6, 'Acb7sFH0xiX9ak9vw5Af1dH0GECQVFAm', '2019-08-03 17:16:03', '2019-08-03 17:16:03'),
(2495, 6, 'qzQrflACNczcLKzruAxoPFnvMoEu6m8j', '2019-08-03 17:16:03', '2019-08-03 17:16:03'),
(2496, 6, 'L5Xa2WQTyDFXBFE4BAnR7Af8VI7hb1zx', '2019-08-03 17:16:04', '2019-08-03 17:16:04'),
(2497, 1, 'Xb3aeWYma97nckgNg2UsReA7IBRm9Mqy', '2019-08-03 17:16:16', '2019-08-03 17:16:16'),
(2498, 1, 'HJq9MeM4qJHqncHeVjbwHOxtnnKdHdQ2', '2019-08-03 17:16:16', '2019-08-03 17:16:16'),
(2499, 1, 'namvTFnNeskOfQHf8Z5HYdb1TovrJ83K', '2019-08-03 17:16:26', '2019-08-03 17:16:26'),
(2500, 1, 'lsgCa7ISdDCWPLRtIMHCpKFDk1pcmZNL', '2019-08-03 17:16:27', '2019-08-03 17:16:27'),
(2501, 6, 'JjJIqDxeIJJK60qhOzefQ5IQkHBLSddj', '2019-08-03 17:16:51', '2019-08-03 17:16:51'),
(2502, 6, 'UFPoLOQeBftsdfY6Wr91oPOq3OaxQeSU', '2019-08-03 17:16:51', '2019-08-03 17:16:51'),
(2503, 6, 'g0s0JrmPaZlsKukwgml8DkqThEwG5lDk', '2019-08-03 17:16:52', '2019-08-03 17:16:52'),
(2504, 6, '9xirpLkJOJa44ObU1aYvrOUe52IqIa8D', '2019-08-03 17:16:52', '2019-08-03 17:16:52'),
(2505, 1, 'Jc0LQpymRqvuvTyYQip80xx5u9hzCZRB', '2019-08-03 17:16:58', '2019-08-03 17:16:58'),
(2506, 1, 'szzk7a5IVOnRRkhqo9hAeuLSbtL2F3qb', '2019-08-03 17:17:04', '2019-08-03 17:17:04'),
(2507, 1, 'Tf7HJFjZ7UPrxvKYOynSQcrrGfj75T1E', '2019-08-03 17:17:05', '2019-08-03 17:17:05'),
(2508, 6, '99YJjfiWbB100VDFxUlzi6QphhMYRnGt', '2019-08-03 17:18:30', '2019-08-03 17:18:30'),
(2509, 6, '4I3BvPhu34HmCLhj2SOfmx3d31uQAub0', '2019-08-03 17:18:30', '2019-08-03 17:18:30'),
(2510, 6, 'zbsCP2KjzXdI1O0wn7uoMX6Z8Dwgac9E', '2019-08-03 17:20:41', '2019-08-03 17:20:41'),
(2511, 6, 'vNX8EVXil3cHkh42f38wOmOMCX1ovkrT', '2019-08-03 17:20:41', '2019-08-03 17:20:41'),
(2512, 6, 'rpuTvKgDijhGxdhSwl0oyexbGgdPzO0x', '2019-08-03 17:20:41', '2019-08-03 17:20:41'),
(2513, 6, 'k6vDoCiSMqIT40W6TLgHkxlEDDfvbWwR', '2019-08-03 17:20:41', '2019-08-03 17:20:41'),
(2514, 6, 'NPwz7D5j6vkIe93U5gPyRMJpzWVSkCeF', '2019-08-03 17:20:44', '2019-08-03 17:20:44'),
(2515, 6, 'VJvU5gc3Mo8RUZVrKVUZCb0OFAh59xlD', '2019-08-03 17:20:44', '2019-08-03 17:20:44'),
(2516, 6, 'X3D88dpRJNkpFsmY5uXcjEIE70Dh6KDA', '2019-08-03 17:20:44', '2019-08-03 17:20:44'),
(2517, 6, 'viAmaeiQTF7Ji4WiIOQ7Jp6Qqvh2pJ4f', '2019-08-03 17:20:44', '2019-08-03 17:20:44'),
(2518, 6, 'zXmz4OLikvR0mk38FyupfRck0PjINdGv', '2019-08-03 17:20:51', '2019-08-03 17:20:51'),
(2519, 6, 'mGNOlozJVI7puPQOZS8Ei1FSQOpeblgB', '2019-08-03 17:20:51', '2019-08-03 17:20:51'),
(2520, 6, 'lAxhGwy4H2iaktp60YLo7DFjaehGxQvN', '2019-08-03 17:20:51', '2019-08-03 17:20:51'),
(2521, 6, 'HzoRuks87ThgHe3umKDeXotSMSNvqK6J', '2019-08-03 17:20:52', '2019-08-03 17:20:52'),
(2522, 6, 'W6DeiPaSepcbGN7fQC6FBsZPaHGizFJX', '2019-08-03 17:20:56', '2019-08-03 17:20:56'),
(2523, 6, 'dpcAUqP6DN2VGDbiGr069LBOwUfvhu73', '2019-08-03 17:20:56', '2019-08-03 17:20:56'),
(2524, 6, 'WtzwmuQ7PWCZlwYoZioVEQdWIt0pOom9', '2019-08-03 17:20:57', '2019-08-03 17:20:57'),
(2525, 6, 'fHdzDneFCEyfU4kGuotl84WMjcveLZtE', '2019-08-03 17:20:57', '2019-08-03 17:20:57'),
(2526, 6, 'Xsxy85PPtq39bObfMa3NWDXFiGokfLgO', '2019-08-03 17:21:22', '2019-08-03 17:21:22'),
(2527, 6, 'oZSejSk1ms3J7OBLu7D7GolJfzIWqfYq', '2019-08-03 17:21:22', '2019-08-03 17:21:22'),
(2528, 6, 'hGUFDM8mqtilxtCbt1Fl20pfXMoRQxdW', '2019-08-03 17:21:23', '2019-08-03 17:21:23'),
(2529, 6, 'gfcS8Sk4LWEwTaSuYSPEcitPORKXQmxZ', '2019-08-03 17:21:23', '2019-08-03 17:21:23'),
(2530, 6, 'IWGXgj3kaH8Z6iOa2yxpU0gKGRuaKxo2', '2019-08-03 17:21:41', '2019-08-03 17:21:41'),
(2531, 6, 'KnEj58BBVosBqoMm0EDdkaBChi1dWIzs', '2019-08-03 17:21:41', '2019-08-03 17:21:41'),
(2532, 6, '23Ae0DJdUS4ONxQ6uVSAEqcR4CqrctVk', '2019-08-03 17:21:41', '2019-08-03 17:21:41'),
(2533, 6, 'IwIARuNLbLmtcoqaDaNVO2avwXAdrbuM', '2019-08-03 17:21:41', '2019-08-03 17:21:41'),
(2534, 6, 'uUrCZZVBpg4ndG7muDjROBQMbRobbO7t', '2019-08-03 17:21:58', '2019-08-03 17:21:58'),
(2535, 6, '7z6cxSh0s8vyadRxjpIyBVt8OcRE70cc', '2019-08-03 17:21:58', '2019-08-03 17:21:58'),
(2536, 6, 'UGoNTevBdrfpBoHoIhfIgB91cfphW7Zh', '2019-08-03 17:21:58', '2019-08-03 17:21:58'),
(2537, 6, 'Y8N1g1nrEb3Uq16aWuKovmcML400lTGV', '2019-08-03 17:21:58', '2019-08-03 17:21:58'),
(2538, 6, 'NmGDnKzZ1fUA3yzdBFJVgRIPyhcXOcr0', '2019-08-03 17:22:28', '2019-08-03 17:22:28'),
(2539, 6, 'FNYR4Y89cewAtHa7NVkk79naLCN5olrX', '2019-08-03 17:22:28', '2019-08-03 17:22:28'),
(2540, 6, 'xBKoXfRhQLI31PYT0arjlSgcaF7y240k', '2019-08-03 17:22:28', '2019-08-03 17:22:28'),
(2541, 6, 'Wr9lWCYaBdiU5EFVRFu9XY1VjCBRbMxX', '2019-08-03 17:22:29', '2019-08-03 17:22:29'),
(2542, 6, '6d2jSjfgnDxBr4zMCoXwZ9x0Gcr1vQfi', '2019-08-03 17:23:54', '2019-08-03 17:23:54'),
(2543, 6, 'yBsthxzF54khUW54cz7fkTQpVBynAVma', '2019-08-03 17:23:55', '2019-08-03 17:23:55'),
(2544, 6, 'VHhNxCe9aWFbyN5GKt547miF1gkcE2ms', '2019-08-03 17:24:49', '2019-08-03 17:24:49'),
(2545, 6, 'b4MdHUHpu4hreM5OC8nZ1KmrgXfH0IW2', '2019-08-03 17:27:32', '2019-08-03 17:27:32'),
(2546, 5, 'k536RtGzUyUlt5oUAdh9SuaYYOdkmxnY', '2019-08-03 17:28:26', '2019-08-03 17:28:26'),
(2547, 5, 's0uID02r3MM6UjBjrmQpLU4V5iHJZPR7', '2019-08-03 17:29:04', '2019-08-03 17:29:04'),
(2548, 5, 'cnH27UIePvf0PzuFa8r7mWOZryD2qN74', '2019-08-03 17:29:37', '2019-08-03 17:29:37'),
(2549, 5, 'XO30k07KgEzoJylkA2AORbi6arIaf6To', '2019-08-03 17:29:37', '2019-08-03 17:29:37'),
(2550, 5, '4qtfAMAf2maEgs5AUzFybhT4lFOuXLsv', '2019-08-03 17:29:38', '2019-08-03 17:29:38'),
(2551, 5, '7uxfNghjnobG94sdVvTkj4o8z527zXnX', '2019-08-03 17:29:38', '2019-08-03 17:29:38'),
(2552, 5, 'YDyexdD3EqcA2SuGU0Pe2RF0mH0AtJ20', '2019-08-03 17:29:38', '2019-08-03 17:29:38'),
(2553, 5, 'aBUiPlFuwSUW49sV0iC6BBXQonWQsGdm', '2019-08-03 17:29:38', '2019-08-03 17:29:38'),
(2554, 5, 'WXucSt2oseXWusVemu2o5xnfPSUiWJX5', '2019-08-03 17:29:38', '2019-08-03 17:29:38'),
(2555, 5, 'J3ijEJca5Wmn5l0UfCoSxD4WrnBO12a0', '2019-08-03 17:29:39', '2019-08-03 17:29:39'),
(2556, 6, 'mYCcik3huR44UNetuGec9VaaYCfEK8DB', '2019-08-03 17:29:49', '2019-08-03 17:29:49'),
(2557, 6, 'ORvNQk9b0oFKAvTw9Gj2eQ0ySuYPBPVS', '2019-08-03 17:29:49', '2019-08-03 17:29:49'),
(2558, 6, 'Vy67lCr8gMrcaeAYsdyStDdfikQKJD24', '2019-08-03 17:29:49', '2019-08-03 17:29:49'),
(2559, 6, 'SkkWXMCxTXre7NljhCghqcPkEL258NcU', '2019-08-03 17:29:50', '2019-08-03 17:29:50'),
(2560, 6, '3rlZ8VgOWw6v04t418e0lTt8QlT9Mr8x', '2019-08-03 17:29:50', '2019-08-03 17:29:50'),
(2561, 6, 'BeMQy80zxTdI0djVLVZa0UXq4lM6REwj', '2019-08-03 17:29:50', '2019-08-03 17:29:50'),
(2562, 6, 'uwygV3mpootL5vx4AgKdBiRZJaidudqp', '2019-08-03 17:29:50', '2019-08-03 17:29:50'),
(2563, 6, 'UnoUwO7NuKxvXMsB52TWyH60XsOFg2UA', '2019-08-03 17:29:50', '2019-08-03 17:29:50'),
(2564, 5, 'Tkk0VAFRAolzSXWsEJaM8SeBAkgWralm', '2019-08-03 17:31:18', '2019-08-03 17:31:18'),
(2565, 5, 'BepyQ2vIMgFYAsKYlibOnGIaWADrNmDi', '2019-08-03 17:31:18', '2019-08-03 17:31:18'),
(2566, 5, 'dKvqjOpeZlj8pfUTzYZ8Z2K0axYwtH1B', '2019-08-03 17:31:18', '2019-08-03 17:31:18'),
(2567, 5, '9gb0ueIP00eqUjsZnrORl7AOgwASBuN3', '2019-08-03 17:31:19', '2019-08-03 17:31:19'),
(2568, 5, 'qbvK5bXFOIuxV2OVYV2LRX4Bph3yGbzi', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2569, 5, 'pdzNvF5ZH8LpGqHqGSIppdkDecmHakeM', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2570, 5, 'VUBk8daObeiexZyPbUoFXCTzJqjTzYRQ', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2571, 5, 'A2xVLU1C0OZASIQHNLsUtuSgDNxKO8R8', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2572, 5, 'e4qbJCrXkF5pS8QQy4BPZzTWy6g8qLyz', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2573, 5, 'hx5eVlkU5Bktuk5DodGbcUdVQyl0l0nF', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2574, 5, 'GeKjSyz9IAtHhK00ij01SJMVDdpymXY8', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2575, 5, 'ZKWHqsYgjbvuFCnkU7kU1HrW8zVO12Mi', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2576, 5, 'TMX359IrzmriPTupERrUkVd7dWiR9jOr', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2577, 5, 'tLuuJ91lw9rWTS5SGTQxACptEaK2ItsG', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2578, 5, 'TSLj6jYp3e8YhXX4YD34x5q9FmiLKYuW', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2579, 5, 'WnxNjnyWoTEMNk6ruMZ9cW9KSIFcEl0F', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2580, 5, 'PrSFHTbWdWSx44paE0XAm0mIM9zMKujS', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2581, 5, 'Di8QQZwMRxhYQJUNcWBzFfm31XKNsLwZ', '2019-08-03 17:31:20', '2019-08-03 17:31:20'),
(2582, 5, 'LYgP4w0hVgzEieruMBtqUr7YMWTmBa8e', '2019-08-03 17:31:21', '2019-08-03 17:31:21'),
(2583, 5, '3noAGq7Ym96qNptZbe3Dua6DOW5zMOwL', '2019-08-03 17:31:21', '2019-08-03 17:31:21'),
(2584, 5, 'Xur9X27J8fdmYgSMDHG4wxAnP7thfdpm', '2019-08-03 17:31:21', '2019-08-03 17:31:21'),
(2585, 5, '7ttErf0Tcwf8kvB143KecDtKKAqX5c1z', '2019-08-03 17:31:21', '2019-08-03 17:31:21'),
(2586, 5, '3uPI5TG0y8WeH4zJHneeCPEyX4ALFrnC', '2019-08-03 17:31:21', '2019-08-03 17:31:21'),
(2587, 5, '7LFM4Kd6T0CrmtHFeek7bEYm6r5uT8JH', '2019-08-03 17:31:22', '2019-08-03 17:31:22'),
(2588, 5, 'oFCompomnXwkFhEQJGCbZPOqYdAzBnLO', '2019-08-03 17:31:22', '2019-08-03 17:31:22'),
(2589, 5, 'qn3DzVPJEwYI9ajTMxIOl57UOG6Uu8tO', '2019-08-03 17:31:22', '2019-08-03 17:31:22'),
(2590, 5, 'qxdboRt9b2qzWpbC9LoT8Tj0M9BowKQb', '2019-08-03 17:31:22', '2019-08-03 17:31:22'),
(2591, 5, 'lBN3JVvBFc7Z6eLOTK8yFG1aab9yDuE8', '2019-08-03 17:31:23', '2019-08-03 17:31:23'),
(2592, 5, '3NTCROuRmCcxYBEzmjFW9bAzXerlAdk1', '2019-08-03 17:31:23', '2019-08-03 17:31:23'),
(2593, 5, 'yJUEdaxsOVhaLUbNfcNsfhXa9jiYgyRK', '2019-08-03 17:31:23', '2019-08-03 17:31:23'),
(2594, 5, 'Y0dRBJZoP62qwoem0tKrNbEqWMGgKSg6', '2019-08-03 17:31:23', '2019-08-03 17:31:23'),
(2595, 5, 'ha8YvX5cyH9ZUGDBacDw56JjrC1Palu7', '2019-08-03 17:31:24', '2019-08-03 17:31:24'),
(2596, 6, 'uk3jB0YmGGtmVWkbEZEwsfrp76J5eU1Z', '2019-08-03 17:31:39', '2019-08-03 17:31:39'),
(2597, 5, 'woaEf1iFVPCdj6n4otdK8BrV1tKh5Nq4', '2019-08-03 17:32:09', '2019-08-03 17:32:09'),
(2598, 5, 'D8o9pCHRH1H6pI8UwnE4Y9Ezqv8cbYIW', '2019-08-03 17:32:11', '2019-08-03 17:32:11'),
(2599, 6, 'sbUaKhkzKdl6dG3bvUqG9YXA2SNV1YlQ', '2019-08-03 17:32:40', '2019-08-03 17:32:40'),
(2600, 5, 'nCy518aiNO34JECqgm7RllIuCvUwDnUZ', '2019-08-03 17:34:29', '2019-08-03 17:34:29'),
(2601, 5, 'A4SMTIygdd4J1yJdkCtCU9t3xRu6qgMX', '2019-08-03 17:34:30', '2019-08-03 17:34:30'),
(2602, 5, 'EWGma8d0gmBc31XpdhGmD7KiyAFUMKeS', '2019-08-03 17:34:49', '2019-08-03 17:34:49'),
(2603, 5, 'q4pwvNoqIz88eel4VFk5btNiwcE8PAMl', '2019-08-03 17:34:49', '2019-08-03 17:34:49'),
(2604, 5, 'a5gm7ID20yRclIcxICE3AcGMm32Q0V7d', '2019-08-03 17:34:49', '2019-08-03 17:34:49'),
(2605, 5, '28xFEe0Fr9Lqoa5FrYydZfHh2eUYo2EH', '2019-08-03 17:34:49', '2019-08-03 17:34:49'),
(2606, 5, 'QGKA95jGuu91aDocFZ8fUGPD6i9QWVGD', '2019-08-03 17:34:50', '2019-08-03 17:34:50'),
(2607, 5, 'Skuw9J2xcX4ZTOCi3eZCOjNT9k3h6HCW', '2019-08-03 17:34:50', '2019-08-03 17:34:50'),
(2608, 5, '6PWAy5YWVa1Dru1jB6pR3aHFJRmW5Oi2', '2019-08-03 17:34:50', '2019-08-03 17:34:50'),
(2609, 5, '1PnM2tXz0ag44jJGnHWAEBjngSyHWDy3', '2019-08-03 17:34:50', '2019-08-03 17:34:50'),
(2610, 5, 'BIyimdpOAyuZuVk5apZUHbVGaQejTVGt', '2019-08-03 17:35:33', '2019-08-03 17:35:33'),
(2611, 5, 'nnPtmEylxO3hWsqKPKuw7RjAhjPjcuAH', '2019-08-03 17:35:39', '2019-08-03 17:35:39'),
(2612, 5, 'pZBcCJdfiZjkhoE6EfgaoB4Nr40Spz9g', '2019-08-03 17:35:53', '2019-08-03 17:35:53'),
(2613, 5, '5Ncfoj2a4k8xQRgzikeUzFFppISaQkeA', '2019-08-03 17:35:53', '2019-08-03 17:35:53'),
(2614, 5, 'KUmR949keVZuxdzmxdphnOstX4ji8KP4', '2019-08-03 17:35:53', '2019-08-03 17:35:53'),
(2615, 5, 'O7pyfIDg1rUQ7iBotWpcxnCd18HkRlRF', '2019-08-03 17:35:53', '2019-08-03 17:35:53'),
(2616, 5, 'pm0uZe3qenfbEpIHLXMUeBPR0iiZbRjJ', '2019-08-03 17:35:53', '2019-08-03 17:35:53'),
(2617, 5, '3LdUCzhzd3iHanR32SUppZU1AHwFAGTQ', '2019-08-03 17:35:54', '2019-08-03 17:35:54'),
(2618, 5, 'vW9qNlyTvQk3WpNvxcHWhkLNf58pBtyo', '2019-08-03 17:35:54', '2019-08-03 17:35:54'),
(2619, 5, 'H48g8RJ5kGByFNpQkOSQ37pF3HpGBLY0', '2019-08-03 17:35:54', '2019-08-03 17:35:54'),
(2620, 1, 'FTQgGnA75x8lmHlASg4jJssyIoIy4uqN', '2019-08-03 17:36:35', '2019-08-03 17:36:35'),
(2621, 1, 'MycHwFLRkDQXCdlChjEYk2EkQ8p3xY0S', '2019-08-03 17:36:35', '2019-08-03 17:36:35'),
(2622, 5, 'VlFoKfKalrTKjpULJXtiOB7PYD1L6QIG', '2019-08-03 17:36:48', '2019-08-03 17:36:48'),
(2623, 5, 'l8nmEWdtrTRBDSAmQ5TzjRXA29dWXw3f', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2624, 5, 'PcBWBav0rKMC7Ez9o8sqYkmaiNGNoLVY', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2625, 5, 'q9no2PAnbhB3XwoDiAsgUO3skjCVpL3J', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2626, 5, 'WWtzWT1HiUmGJ0jcI6TeBB9KhHlLerS5', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2627, 5, 'C3QGfYmvfRIg1cLJVtA20N8FlavnTgN2', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2628, 5, 'JqOD3kBrEi7JG8FzOytR6szR1W8BvQzZ', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2629, 5, 'f9k0v9uW2LxHQFU0rvGxVmOmSUKbdj3V', '2019-08-03 17:36:49', '2019-08-03 17:36:49'),
(2630, 5, 'WKr0A8Jgc01vrI4QnMEUGEhZ8wk3xfTu', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2631, 5, 'BNmDqAzCZsdiH3EHtnSTVIDoLPR1Ea6Q', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2632, 5, 'xRvTdBwcWjMK7REMxhCAWk7UzT9sz56E', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2633, 5, 'u7jLIWhc8DvN8ZilJpulK2FCCOevkjFC', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2634, 5, '00yZANvXwcABtGvVvmhYqoLNqpGw4KoA', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2635, 5, 'OpciaswWOsLvikAsO0AoGxonZ9P7UwzW', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2636, 5, 'PEROB0KAMGE3T0hSvCETjmPiQ6o86llD', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2637, 5, 'BJwDJiFhgtN59AC5ZLnBqCvYjRliCEYP', '2019-08-03 17:36:50', '2019-08-03 17:36:50'),
(2638, 5, 'wn6vwdGQ98awUiXMuDqu8G7U8nBWzVfw', '2019-08-03 17:36:51', '2019-08-03 17:36:51'),
(2639, 5, '2i2oC7pxT7Nj3p0mDyldlFxegCrypY1h', '2019-08-03 17:36:51', '2019-08-03 17:36:51'),
(2640, 5, '6TVXnY8C1UXVWWNcQ0eqdCvJxndTlmMp', '2019-08-03 17:36:51', '2019-08-03 17:36:51'),
(2641, 5, 'FyephldHVH7KPfeqSBkBcPNm4y3O7OKv', '2019-08-03 17:36:52', '2019-08-03 17:36:52'),
(2642, 5, 'HaH3NqquAPtrY4CawS0d4N5bR9cFUPnc', '2019-08-03 17:36:52', '2019-08-03 17:36:52'),
(2643, 5, 'aCGn7taf3eTpFlc9INvxXILOixcxq2mb', '2019-08-03 17:36:52', '2019-08-03 17:36:52'),
(2644, 5, 'FYVLUYRa52QmlEFhSdDTJsBGJZgMrxMF', '2019-08-03 17:36:52', '2019-08-03 17:36:52'),
(2645, 5, 'RAUE5k2E5fkunHjlIz8rzEjlpXsQXleV', '2019-08-03 17:36:53', '2019-08-03 17:36:53'),
(2646, 5, 'Zzp3W4Tr257Ko6wAL7xK02dRsdxifVVN', '2019-08-03 17:38:22', '2019-08-03 17:38:22'),
(2647, 5, 'GMuzV9kqdZ5E6hb38ll1ZG5LNKxeIWc0', '2019-08-03 17:38:22', '2019-08-03 17:38:22'),
(2648, 5, 'lyujlSsRjPLcQoXKTHrmZSOISzFrZxxD', '2019-08-03 17:38:22', '2019-08-03 17:38:22'),
(2649, 5, 'wR0PgAZP5h5yR1jjCcHMuUZONH2TeADk', '2019-08-03 17:38:22', '2019-08-03 17:38:22'),
(2650, 5, 'TJLsMH30Cyo3AdRgdPU0rCGJfS1OpJ0Z', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2651, 5, 'ebZ9ljeFNt2sn7zfmLeetmIsyQf0YslQ', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2652, 5, '9vbZGUFZkNidKQHPQurwgruvF3I5EY15', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2653, 5, 'sYm6HQZiDIiq7gdpqRMzyYMitBdrtJCR', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2654, 5, 'blAmZLibIgQriBFmAmpTDH2ZbBFM1RZ0', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2655, 5, 'rBFQPcLcz9luucY2K0d24fZLXXvfMtAb', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2656, 5, 'vQet8rYvyY4Tw46SpWKmoPWgBfZloWZZ', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2657, 5, 'j2U7CNURDDQgquGFd2NIgf2tthLqjAz8', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2658, 5, 'cD4WXt8oPda4Vg8grnYBGS20b6KjgEwJ', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2659, 5, 'nXxX9poNfrwxANTE0kNKeRN4unm353nb', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2660, 5, '2CnenkUNANylQ56PQBmIYZija87lhsTY', '2019-08-03 17:38:23', '2019-08-03 17:38:23'),
(2661, 5, 'omYIAGjhJLCTugNoeZMl4z5YSsdvZtQe', '2019-08-03 17:38:24', '2019-08-03 17:38:24'),
(2662, 5, 'VK7DjZ7Nac8dkfZs3Hc73v2miGfqpR4U', '2019-08-03 17:38:24', '2019-08-03 17:38:24'),
(2663, 5, '95rOyAve9WyCK6TsNLrhSS6iMdUenhMk', '2019-08-03 17:38:24', '2019-08-03 17:38:24'),
(2664, 5, '02m8eEXb1xj9XKAaclC8AppjoHW17gQK', '2019-08-03 17:38:24', '2019-08-03 17:38:24'),
(2665, 5, 'gcsDRuKbrvyRD0TGjSDX7TX0BKEYoNZw', '2019-08-03 17:38:25', '2019-08-03 17:38:25'),
(2666, 5, '3NihmAuvLrpYNcZOx9gCsb6quQ8Om2KW', '2019-08-03 17:38:25', '2019-08-03 17:38:25'),
(2667, 5, 'CTzS1csxOMk3sGTk5q08TNbazDXKs0XE', '2019-08-03 17:38:25', '2019-08-03 17:38:25'),
(2668, 5, 'yxvUPp994YqnVxTiB24LSM8xuYt9IZG9', '2019-08-03 17:38:25', '2019-08-03 17:38:25'),
(2669, 5, 'hOTQauIapsG2DgvY3xNmM2VfEKdcVUL7', '2019-08-03 17:38:26', '2019-08-03 17:38:26'),
(2670, 5, 'iyh6dlme6oE43IKIaSQMuFTveqoUZyMu', '2019-08-03 17:39:11', '2019-08-03 17:39:11'),
(2671, 5, 'ZEywiVosG3gVh0CXzr4ME1bCs3I2mMGO', '2019-08-03 17:39:14', '2019-08-03 17:39:14'),
(2672, 5, 'DkVQ0f1sAj19r7ZzDIs2s37K3LDNDAMx', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2673, 5, 'knUWZcDel8GtsafhuJSizgLA2LYT5UA8', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2674, 5, 'Q8adperYD5CUDCZM0KwCEfou4W9EFKjp', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2675, 5, 'selNSj72ueHC5ysBrngAJnFuuTYBrlXA', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2676, 5, 'ZKDdSqMuqAba1ptGHzOzZe08a5Djdboj', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2677, 5, 'e06oUQzLcAW6CfWd8fkWPjH9JddxhDEQ', '2019-08-03 17:39:52', '2019-08-03 17:39:52'),
(2678, 5, 'BeC8Rns7A311IaL8BEO585rVADJkVKO6', '2019-08-03 17:39:53', '2019-08-03 17:39:53'),
(2679, 5, 'vEzT1siIXtQJoXC6beg0SDa34isgzeTV', '2019-08-03 17:39:53', '2019-08-03 17:39:53'),
(2680, 6, 'wOm4nmRolGSXcpQGAI8W3xs0mdcLfIIj', '2019-08-03 17:40:34', '2019-08-03 17:40:34'),
(2681, 1, 'zhJZcyxJMOWH4uwebx9eBT5uTWvUTSsN', '2019-08-03 17:51:10', '2019-08-03 17:51:10'),
(2682, 1, '8LLonqpSlsvyt2YiXpwwNpWopOBQVLMv', '2019-08-03 17:51:10', '2019-08-03 17:51:10'),
(2683, 1, 'jRPWt73MS91PX1dcOJI6iL4uqAtIQZio', '2019-08-03 17:51:20', '2019-08-03 17:51:20'),
(2684, 1, 'xOGSDvTZx9jE28aTyMwCVhYrlbZeaypZ', '2019-08-03 17:51:20', '2019-08-03 17:51:20'),
(2685, 1, 'WjdUntd5T9sM7jHdq8z1vr1O1IRluIVA', '2019-08-03 17:51:25', '2019-08-03 17:51:25'),
(2686, 1, 'QQ2M2AAueoQwmlFwzHurS8EYQ66lwQ5T', '2019-08-03 17:51:25', '2019-08-03 17:51:25'),
(2687, 1, '8pTo4dvEEhtpVnffrG5mXtE1AZqhbVo8', '2019-08-03 17:51:31', '2019-08-03 17:51:31'),
(2688, 1, 'YvBdCD5S7CfAxJiarVKmJE1GJuPeRxx7', '2019-08-03 17:51:31', '2019-08-03 17:51:31'),
(2689, 1, 'XQB4AISRJtk8r0V5Ljlu7a3QumU2dhtF', '2019-08-03 17:54:55', '2019-08-03 17:54:55'),
(2690, 1, 'WfvM2aSovNMLN9Ijby8vr6sCNUB1XiZb', '2019-08-03 17:54:56', '2019-08-03 17:54:56'),
(2691, 1, 'x9UMCU2WDVPy30T5xcdhaJVDUWVsquq8', '2019-08-05 14:50:17', '2019-08-05 14:50:17'),
(2692, 1, 'l7pwM0vlj1xTDbOnPPEGiQnFKPxQ0MM7', '2019-08-05 14:51:28', '2019-08-05 14:51:28'),
(2693, 1, 'fnAKbJIe6KbGj5ovM5h6yg9dkExTZAfp', '2019-08-05 14:51:35', '2019-08-05 14:51:35'),
(2694, 1, 'pVVe1lpAl06TWpM8Ztu5fv4UeojEfcXl', '2019-08-05 14:51:35', '2019-08-05 14:51:35'),
(2695, 1, 'irXEUB7k6Lcjb5Vqc4kMNnTxhiRf5MjL', '2019-08-05 14:51:38', '2019-08-05 14:51:38'),
(2696, 1, '08bGMj8GYWaGYJcY7vviIWPOtXIfCYuM', '2019-08-05 14:51:38', '2019-08-05 14:51:38'),
(2697, 1, 'fOB6xI99X6AT9lCZ04DZCc77ImvMjVVt', '2019-08-05 14:52:54', '2019-08-05 14:52:54'),
(2698, 1, '1cmUn10k4X0boYFmDrnI4Hg7UGocawCS', '2019-08-05 14:53:32', '2019-08-05 14:53:32'),
(2699, 1, 'Ws2TShR3Tz9OVKtFyqT71wGg5dgrGPeV', '2019-08-05 14:54:58', '2019-08-05 14:54:58'),
(2700, 1, '5YPKf4nCAoqCdLFIuQ60nJ20pGNP32I3', '2019-08-05 14:54:58', '2019-08-05 14:54:58'),
(2701, 1, 'UYZhn0uNFQpfrBh4BBp9xg7gTI4jo0Bh', '2019-08-05 14:55:05', '2019-08-05 14:55:05'),
(2702, 1, 'r3a4LARM1ymYrc08XjT7MCacrdCdKbUf', '2019-08-05 14:55:05', '2019-08-05 14:55:05'),
(2703, 1, 'RCDbsBRNAyhaPDJtMWAJDZlVNuvDrrgL', '2019-08-05 14:55:05', '2019-08-05 14:55:05'),
(2704, 1, 'PzkQ9vp1cShDA0asZognQ1MgULcOY2G1', '2019-08-05 14:55:06', '2019-08-05 14:55:06'),
(2705, 1, '4E2aHawBNpmHre8zd3ARbNw8pbsNrFUj', '2019-08-05 14:55:06', '2019-08-05 14:55:06'),
(2706, 1, 'y6TlpTQo8mETbwT2GY34ZmQk9o2Y6sc5', '2019-08-05 14:55:06', '2019-08-05 14:55:06'),
(2707, 1, 'DiD7rIickZMlN25pxjn8iyDjMgLejqDZ', '2019-08-05 14:55:09', '2019-08-05 14:55:09'),
(2708, 1, 'xeLLdDPkUGLWw8SGTLo2N5Vkn58GxYQa', '2019-08-05 14:55:09', '2019-08-05 14:55:09'),
(2709, 1, 'ajtkcjW3aD63GIeWHbNdGIzEHuPhmMql', '2019-08-05 14:55:18', '2019-08-05 14:55:18'),
(2710, 1, 'jzrjz32BpHnZrd4hXVf9jVNTnsMyeLt1', '2019-08-05 14:59:17', '2019-08-05 14:59:17'),
(2711, 1, 'tNlxhTB7cnMk47UKHxDwAvJHvzaR52q9', '2019-08-05 14:59:17', '2019-08-05 14:59:17'),
(2712, 1, '6ZSaE3oUp0RnGENAcxpnCRlSRX3ZPl2K', '2019-08-05 15:09:15', '2019-08-05 15:09:15'),
(2713, 1, 'VgnQ0i3tDeODhQYFgRkwkKtvnT1oVU6s', '2019-08-05 15:10:38', '2019-08-05 15:10:38'),
(2714, 1, '0sg9j8nf2tZIcbxFO50DB0GN0yEBF8wR', '2019-08-05 15:11:43', '2019-08-05 15:11:43'),
(2715, 1, 'ZJOuRL0f3tpeRTWnTahPGJ4H1RPD5X8X', '2019-08-05 15:11:45', '2019-08-05 15:11:45'),
(2716, 1, 'ij88cGH0oowlfC8SWxtMhLwl8W6ctoXq', '2019-08-05 15:11:45', '2019-08-05 15:11:45'),
(2717, 1, 'WtMCAWXVpU0fbIjFy0DyPN3MJuX4kjod', '2019-08-05 15:28:28', '2019-08-05 15:28:28'),
(2718, 1, 'vBItyxMCMyIaFU57Xqh2qOqcUvDS57Tr', '2019-08-05 15:28:29', '2019-08-05 15:28:29'),
(2719, 1, 'HtkApfE7Qx0hpGvUMrML6Sd9pt8HtulJ', '2019-08-05 15:28:46', '2019-08-05 15:28:46'),
(2720, 1, 'UDxj3sQiT8HFKj6Wmn9WkNLcImgyhHX6', '2019-08-05 15:28:46', '2019-08-05 15:28:46'),
(2721, 1, 'BvJGvghWTN5MsM5K9jJX9PiBDvZEPg6d', '2019-08-05 15:28:57', '2019-08-05 15:28:57'),
(2722, 1, 'UTLXI4GdtYeNH8xAxJnelaNoEA8MCyt7', '2019-08-05 15:31:24', '2019-08-05 15:31:24'),
(2723, 1, 'ijUN0luW5V5MkSfxQ3HnohROFxSnqTqC', '2019-08-05 16:21:58', '2019-08-05 16:21:58'),
(2724, 1, 'ZBPNinHbjgdXUbHuwDrxsVzlg1FlO9zD', '2019-08-05 16:21:58', '2019-08-05 16:21:58'),
(2725, 1, 'xhsGdDzWPnRkXwc8ct1ZUs9XLxfZB2ES', '2019-08-05 16:22:07', '2019-08-05 16:22:07'),
(2726, 1, 'wa2gBhVpPKhukl1IUHtZDqEoUOI9W9TX', '2019-08-05 16:26:07', '2019-08-05 16:26:07'),
(2727, 1, 'OUJ5FnHGfcqHu4WEOJqbuRp0xU9cnf5j', '2019-08-05 16:26:07', '2019-08-05 16:26:07'),
(2728, 1, 'hLO1uGXFD9SEkR1M7TOT7BJQ7kJ19J7F', '2019-08-05 16:26:09', '2019-08-05 16:26:09'),
(2729, 1, '8mV63NBANcxkcGnnxxGV8RDMNZjgP7ES', '2019-08-05 16:26:09', '2019-08-05 16:26:09'),
(2730, 1, '6ttxwODg7l4Pokkw3XHaI7wfy0TISH7d', '2019-08-05 16:28:20', '2019-08-05 16:28:20'),
(2731, 1, 'EkXJk4PJSAvKYqMD0NAyF2Z3Z307NDwq', '2019-08-05 16:28:20', '2019-08-05 16:28:20'),
(2732, 1, '9aheq6K76qMVesBxaCBhmfUjntT0NdcS', '2019-08-05 16:29:05', '2019-08-05 16:29:05'),
(2733, 1, 'AogVhGj4hgoDJmXwLApms8LozEZB4d5q', '2019-08-05 16:29:15', '2019-08-05 16:29:15'),
(2734, 1, 'Lp2Cn9dLiSmbh1Mv8xpxMxeLbvSxN81e', '2019-08-05 16:29:15', '2019-08-05 16:29:15'),
(2735, 1, 'lOQJ8hLwuU73ANme2dKQWqZxcRmSbTlj', '2019-08-05 16:29:32', '2019-08-05 16:29:32'),
(2736, 1, 'BrjmAd1INljxvd4SnfUmZx4pilw4jtiT', '2019-08-05 16:29:32', '2019-08-05 16:29:32'),
(2737, 1, 'xW8QgCbfbnpg1RAMveQsz7OMsKstbdEa', '2019-08-05 16:29:41', '2019-08-05 16:29:41'),
(2738, 1, 'I35GfyX4EXAzYTadzC6JItt8vzIQY4Lm', '2019-08-05 16:29:42', '2019-08-05 16:29:42'),
(2739, 1, 'itJYVYbPthEr02SIZCfO3uB2j5HBcH0G', '2019-08-05 16:37:14', '2019-08-05 16:37:14'),
(2740, 1, 'pRXhrEx9qF4D1BApvU9pn5KP6IhQeZfV', '2019-08-05 16:37:14', '2019-08-05 16:37:14'),
(2741, 1, 'z0o7mW9VcGNA0lVgH4MbXuP923sAGp3N', '2019-08-05 16:37:20', '2019-08-05 16:37:20'),
(2742, 1, '2WPfosDVm2V3D9VZS7KARsXSzGXrewiP', '2019-08-05 16:37:30', '2019-08-05 16:37:30'),
(2743, 1, 'CbhHyHVjpK0iwBE9EMfnecmY2J0KkPLW', '2019-08-05 16:38:04', '2019-08-05 16:38:04'),
(2744, 1, 'mjrDUIsPjHX3l6QFU5N1wB1YZTETtGk1', '2019-08-05 16:38:07', '2019-08-05 16:38:07'),
(2745, 1, 'pX7xAJ10qPURK0T6vdDMQrnxvaIkTycs', '2019-08-05 16:38:08', '2019-08-05 16:38:08'),
(2746, 1, 'vchR9eAmoaTQEA0fwzyZu3Kvieoh93wQ', '2019-08-05 17:32:04', '2019-08-05 17:32:04'),
(2747, 1, 'pSRSEyogF9m47COfoy1H9l8ygPsllN16', '2019-08-05 17:32:26', '2019-08-05 17:32:26'),
(2748, 1, 'xNKVjZcPIgr1219ES02BkFo4XdDS5ZaS', '2019-08-05 17:33:26', '2019-08-05 17:33:26'),
(2749, 1, 'IyzSlkzfM5OQN6rSM78gaRuNuWgwuwE6', '2019-08-05 17:34:09', '2019-08-05 17:34:09'),
(2750, 1, '3tulqGbxK4zMBeDjBLi05hlMzXgTpvY2', '2019-08-05 17:34:34', '2019-08-05 17:34:34'),
(2751, 1, 'nyKBiyHJ2SRbZ4TBrL4Ds4GhoXSN3Jex', '2019-08-05 17:35:22', '2019-08-05 17:35:22'),
(2752, 1, 'ecCj3OR16ydwpNugpmGOi635kIru0IP3', '2019-08-05 17:35:37', '2019-08-05 17:35:37');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(2753, 1, 'vT2gz3UWCKyo7FGZLeMpcOkezmzFZ49c', '2019-08-05 19:11:11', '2019-08-05 19:11:11'),
(2754, 1, 'Paf8QEVkX4mZtf5XjDxuG1CpukMkMY8o', '2019-08-05 19:12:08', '2019-08-05 19:12:08'),
(2755, 1, 'ExVJ2K0gxIHfXBU9jpZYOaYr1agZznWg', '2019-08-05 19:12:33', '2019-08-05 19:12:33'),
(2756, 1, 'i2Ltw81xtf2Zux5IK6UrsjVI7E1xpST2', '2019-08-05 19:12:52', '2019-08-05 19:12:52'),
(2757, 1, 'fE0mTIu9MFRx10A0FG9ExreC7ZLer5XW', '2019-08-05 19:20:15', '2019-08-05 19:20:15'),
(2758, 1, '7fVUWrlig0k4xdjPst4yGzcnAQioE1gN', '2019-08-05 19:20:37', '2019-08-05 19:20:37'),
(2759, 1, 'VKvl9IohtCbm40kAlmQGYv8JzshPiR2s', '2019-08-05 19:21:02', '2019-08-05 19:21:02'),
(2760, 1, 'y8N9qdLdfGzK6eUbhcamdijkiLzMoLTN', '2019-08-05 19:21:03', '2019-08-05 19:21:03'),
(2761, 1, 'ZWSiPiCAs5vOd9Mbq19oLt8fSBOMzirB', '2019-08-05 19:26:11', '2019-08-05 19:26:11'),
(2762, 1, 'FL9ooq0Dl0YRrMeBSbqqAC4IVgEn5E3q', '2019-08-05 19:26:17', '2019-08-05 19:26:17'),
(2763, 1, '6MhuB2Yi5M3uZAR1vR0PZbKbU3jW8z1d', '2019-08-05 19:26:17', '2019-08-05 19:26:17'),
(2764, 1, 'GthRKpuP3LTcoQ5FJWjJGBlSKQ5zIq79', '2019-08-05 19:37:25', '2019-08-05 19:37:25'),
(2765, 1, 'yiIR7xN5SgWcfoJPIg0WGxnjAzOPj991', '2019-08-05 19:37:25', '2019-08-05 19:37:25'),
(2766, 1, 'y26mHVHFTCGjhR9XEAMRgTfm8YdnAVbs', '2019-08-05 19:37:25', '2019-08-05 19:37:25'),
(2767, 1, 'iY2QfHGM6Aai0sCbXiAf1mg2jGHXZ2uT', '2019-08-05 19:37:26', '2019-08-05 19:37:26'),
(2768, 1, 'sXRHraIyXLVgX8mpuDYxJNKBnXoZlpmt', '2019-08-05 19:37:32', '2019-08-05 19:37:32'),
(2769, 1, 'wGuIQ6744AiqpzVLn8mctfhi9u25qWug', '2019-08-05 19:37:32', '2019-08-05 19:37:32'),
(2770, 1, 'fzzOEbYUMqjQyMgtXSC0YtlfxP4HoR7C', '2019-08-05 19:37:32', '2019-08-05 19:37:32'),
(2771, 1, 'hG5TvK2UI9j9SY5GJENLIsFT9XQqecmJ', '2019-08-05 19:37:33', '2019-08-05 19:37:33'),
(2772, 1, 'LJ7fbNiEgL7buAznbhawTjSLhxSV3Zak', '2019-08-05 19:51:14', '2019-08-05 19:51:14'),
(2773, 1, 'EASj5W4TXhnRGdFXqAv88CvXHYffdexr', '2019-08-05 19:51:16', '2019-08-05 19:51:16'),
(2774, 1, 'bGpZZ4BQoi6cErxx8Po3pPgVaLFspR8P', '2019-08-05 19:53:22', '2019-08-05 19:53:22'),
(2775, 1, 'j3z6EloswEARxY8rRl7js4jbqIHwf92y', '2019-08-05 19:54:33', '2019-08-05 19:54:33'),
(2776, 1, '0C3PH2PbLgscZghPvka8GTTCJICllQ0J', '2019-08-05 19:54:59', '2019-08-05 19:54:59'),
(2777, 1, 'B8oWb3OfYegFDzUR0fRbjzxuGQRqLe4l', '2019-08-05 19:55:00', '2019-08-05 19:55:00'),
(2778, 1, '2IoHNFsS3pJYgPOaKva3bCkHg8asIqHk', '2019-08-05 19:55:16', '2019-08-05 19:55:16'),
(2779, 1, 'w63RHP8ASmAWDB76ZLPGGQSHiLuXKZBP', '2019-08-05 19:55:30', '2019-08-05 19:55:30'),
(2780, 1, 'WPnzCCVCPdizo2wNypgbQ4ynV12nA2vk', '2019-08-05 19:55:30', '2019-08-05 19:55:30'),
(2781, 1, 'ms7uk653xDoOCshU1swvCjBG8dJotmuU', '2019-08-05 19:55:30', '2019-08-05 19:55:30'),
(2782, 1, 'BYtt9Q4aYKbrBEBzqzDG7eTZjPEKLGx3', '2019-08-05 19:55:30', '2019-08-05 19:55:30'),
(2783, 1, '2VFz5vK7Hpzxo8RzgrbjCNdALf1bZzCP', '2019-08-05 19:55:30', '2019-08-05 19:55:30'),
(2784, 1, 'YJT18Nt5OW6RSEky5eXTJLMjMbxOmTjm', '2019-08-05 19:55:31', '2019-08-05 19:55:31'),
(2785, 1, 'RoNCJNd1CZqX4gCeVH2I1p9nJuJqEbiX', '2019-08-05 19:55:31', '2019-08-05 19:55:31'),
(2786, 1, 'C819nKeK27qyv3lg3D1pkVZDoq0HmVFj', '2019-08-05 19:55:31', '2019-08-05 19:55:31'),
(2787, 1, 'AHacqqniyzKJM2f9qQ7GJLcrHmkGEJnT', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2788, 1, 'uB3UN9VAo1C7SZf3mHgMtoAqorz3lhFO', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2789, 1, 'PiW0lPtJNv2KKcTK60E7L5oC2yFs8hXl', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2790, 1, 'KCBe9t94eo5ns1789aO8nYQ2ttRzqfn5', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2791, 1, 'NaKojNp1WNTd2vdq0aJVP7T0JEFa5TEb', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2792, 1, 'kfEznnH2wGqhpqcTB32aNP3HHDlOpqW4', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2793, 1, 'aiZS9FfiW5TcNaoWOXI4Tu9EnMAMRWn4', '2019-08-05 19:55:52', '2019-08-05 19:55:52'),
(2794, 1, 'OCZrRZm7h9SIc6TJLluoqvVN3Ekeo5Ss', '2019-08-05 19:55:53', '2019-08-05 19:55:53'),
(2795, 1, 'YRVlwfVbkqZkkakPSOEkJYSVppDnLt5w', '2019-08-05 20:44:12', '2019-08-05 20:44:12'),
(2796, 1, 'XSJaaB61ke3Z6gEPMZJigqwJlD7k4YM0', '2019-08-05 21:53:05', '2019-08-05 21:53:05'),
(2797, 1, 'KzbxY1wUkoc3ZvyG18ZvNcOkrMgRcnra', '2019-08-05 23:59:26', '2019-08-05 23:59:26'),
(2798, 1, 'HvD6CZaKfO35hgUP4ixOrkVxRbFciNHe', '2019-08-06 14:11:44', '2019-08-06 14:11:44'),
(2799, 1, 'tuYautnPWsj2JxOfyJgJ2rWRbODREzWB', '2019-08-06 15:43:27', '2019-08-06 15:43:27'),
(2800, 1, 'CcpkgEt9llOtCJK9aywPrsV1pe9LhS1u', '2019-08-06 15:57:21', '2019-08-06 15:57:21'),
(2801, 1, 'QfrYtQuBMxBfJxItqK14cxjUilGTs7XG', '2019-08-06 16:13:43', '2019-08-06 16:13:43'),
(2802, 1, 'Z9xVw9vGAPPWVbPS3FGi0l1rJ4pJMkeI', '2019-08-06 16:35:20', '2019-08-06 16:35:20'),
(2803, 1, 'ctOX9Kkq7Mfb7dKNonkUR0xC8aq88b8c', '2019-08-06 16:36:26', '2019-08-06 16:36:26'),
(2804, 1, 'ipPJvHPirA6GgfqaWW0BzQJpnFSMJYJ3', '2019-08-06 16:38:49', '2019-08-06 16:38:49'),
(2805, 1, '8acIu8bQwRo9zqwfTXhEin6eoxvGyJhy', '2019-08-06 16:42:21', '2019-08-06 16:42:21'),
(2806, 1, 'TTajavGZ7bbJAbXdBJr7IUr8iQC50iJO', '2019-08-06 16:51:06', '2019-08-06 16:51:06'),
(2807, 1, 'Vn5Rq1YVTQ3kV95tL7bBgNepEw84ZirA', '2019-08-06 17:18:51', '2019-08-06 17:18:51'),
(2808, 1, 'HS8Jt9NWv3VtEHC8JtJQnHQ07TUgQ9PV', '2019-08-06 20:04:06', '2019-08-06 20:04:06'),
(2809, 1, 'aVJKTTdLF8XNSJTu3gV5NknKx8tiA0Bp', '2019-08-09 19:59:55', '2019-08-09 19:59:55'),
(2810, 1, 'wP3GHw6iq9BcYPr0dJOofkTmwNvflssg', '2019-08-09 19:59:57', '2019-08-09 19:59:57'),
(2811, 1, '5CcsbaAivWqZ2JaKrI4UPrEDrL0j9GPz', '2019-08-09 20:08:09', '2019-08-09 20:08:09'),
(2812, 1, 'H42ZZXwLHqxxoIQmaiEaroaumWFrUNqN', '2019-08-09 20:08:09', '2019-08-09 20:08:09'),
(2813, 1, 'EK9AZZqWhJpmZcvrmN4oYkZFkAMRUoJG', '2019-08-09 20:08:09', '2019-08-09 20:08:09'),
(2814, 1, 'jTCMespcnXyGSL4G7H7GDvSegpjioCol', '2019-08-09 20:08:10', '2019-08-09 20:08:10'),
(2815, 1, 'iLGCUThuQ9BDvdMGD3SVLqdd9W27yoIh', '2019-08-09 20:08:14', '2019-08-09 20:08:14'),
(2816, 1, 'XQGp75FrDN9wamS6vObpvTkOeA1VE8M6', '2019-08-09 20:08:14', '2019-08-09 20:08:14'),
(2817, 1, 'uzacjenFSIs6q3Zkp8CKOxu8xQ4wvTuF', '2019-08-09 20:08:15', '2019-08-09 20:08:15'),
(2818, 1, '0LOEUBWisoQSAXLPYNKb8Q22NtjJMfc0', '2019-08-09 20:08:15', '2019-08-09 20:08:15'),
(2819, 1, 'kny4W4cWuqqbuXjSstwOkpdXfHSVQ1yp', '2019-08-09 20:26:21', '2019-08-09 20:26:21'),
(2820, 1, 'oT9T1Xsiph4N0RLCKv8346BZuJrIXaEV', '2019-08-09 20:26:25', '2019-08-09 20:26:25'),
(2821, 1, 'nDOjPZg2a85M0uDaY17xXkAPF4dp0uUf', '2019-08-09 20:27:05', '2019-08-09 20:27:05'),
(2822, 1, 'rqNBuBRS1Py79BOHXJFA6Ij7ETwgwjW5', '2019-08-09 20:27:05', '2019-08-09 20:27:05'),
(2823, 1, 'OVwZakJx1BbxGxTFnu3uO4GvRnb5kMSk', '2019-08-09 20:27:05', '2019-08-09 20:27:05'),
(2824, 1, 'FViG9kZzVNVSjAPFuXwvUdUDDraDmtFP', '2019-08-09 20:27:05', '2019-08-09 20:27:05'),
(2825, 1, 'dRVnDUaIeGiMKUTPnaFX29ifa6Eaq9ho', '2019-08-09 20:27:05', '2019-08-09 20:27:05'),
(2826, 1, 'QaSC9FQgaVQRpLfbNOaLntbD0eZonW2z', '2019-08-09 20:27:06', '2019-08-09 20:27:06'),
(2827, 1, 'KzRjywqYTOcoOq5a5372oy0MyylGWoJ7', '2019-08-09 20:27:06', '2019-08-09 20:27:06'),
(2828, 1, '3PID8A1rfpCFjc1RZEQuC7wqJahh66gR', '2019-08-09 20:27:06', '2019-08-09 20:27:06'),
(2829, 1, 'c7JAGDYgjWhaqdwT5WexU9iwshUS6upq', '2019-08-09 20:27:51', '2019-08-09 20:27:51'),
(2830, 1, 'Wtd1kuKm7A9MRlHKSXcfG7QFsKvYyjNq', '2019-08-09 20:29:15', '2019-08-09 20:29:15'),
(2831, 1, 'ACNXDuTlHJy2MBUYt8mmSKMW1tx1uXXQ', '2019-08-09 20:31:26', '2019-08-09 20:31:26'),
(2832, 1, 'IdT3GIjrqrShX8vDPKdp3tifXNtGVTSU', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2833, 1, 'nyGSJNea0yFtE8D368z8LXq2BO637pCO', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2834, 1, 'zYtdxWBjSxvbXjSU2npktUOriDculzxE', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2835, 1, '4KeTo7qzbA2NpabNWaL2QkXWPtRIadtl', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2836, 1, 'fKjVRBKlKzO1NlEreRnXoriLndEP5VZe', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2837, 1, 'btonEsxCq5fdwMh4U3exEOWxUvyu8rN3', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2838, 1, 'lxMixoh9JxpNoTzbyicYD5psKMfDJqA6', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2839, 1, 'c5Vbd1bazaAwb2MyyIX8rke4yEL2KPmm', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2840, 1, 'QFkKyB7OtLI8WspUxohv4nAZVsavdGwI', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2841, 1, 'wv6QkOkCpWPlIOmHPL8THWI5PCpkf8qn', '2019-08-09 20:32:37', '2019-08-09 20:32:37'),
(2842, 1, 'i8fYMseBmlgELQrKurkOWxwY2ecKSu4h', '2019-08-09 20:32:38', '2019-08-09 20:32:38'),
(2843, 1, 'MDw8UlE9ZxT7j0u00XmecU1DrNHCXnNJ', '2019-08-09 20:32:38', '2019-08-09 20:32:38'),
(2844, 1, 'zy1P4wkSXVKcnQze8H6adPdSLNVHBSVh', '2019-08-09 20:32:38', '2019-08-09 20:32:38'),
(2845, 1, 'gre83zNLvlj6fyFXHsuHT8OLVVGbUhOI', '2019-08-09 20:32:38', '2019-08-09 20:32:38'),
(2846, 1, 'nm0Cr2y8Oh0yn4cEoMuGZYro2Rz0p8tG', '2019-08-09 20:32:39', '2019-08-09 20:32:39'),
(2847, 1, 'DaFfqOr3p6D7HIJ94xs3vT11LM0pp1pt', '2019-08-09 20:32:39', '2019-08-09 20:32:39'),
(2848, 1, 'RyM9k2qX3Uozon99LccUwX6YdrgFZjoI', '2019-08-09 21:33:07', '2019-08-09 21:33:07'),
(2849, 1, 'GtVB0VSdQcYPtJlv6np6N3F9Q1QpAKhd', '2019-08-09 21:33:16', '2019-08-09 21:33:16'),
(2850, 1, 'XJPLJgPAzYVqThHqOE7N8Jdl9VfVQ2VA', '2019-08-09 21:33:16', '2019-08-09 21:33:16'),
(2851, 1, 'BwelBoSy1MiEkyb9Paj7XyKT0qThLb11', '2019-08-09 21:33:16', '2019-08-09 21:33:16'),
(2852, 1, 'eNIRcM42NQc8rwasHlA7FXqzG6bDFAvJ', '2019-08-09 21:33:17', '2019-08-09 21:33:17'),
(2853, 1, 'CZoBuMLihfVrrTRfji7mPk4HoYJB4575', '2019-08-09 21:33:17', '2019-08-09 21:33:17'),
(2854, 1, '1Q39rPgZVP7FC3f3HS5kxrxlfZi6Am1I', '2019-08-09 21:33:17', '2019-08-09 21:33:17'),
(2855, 1, 'ImiLLzHBHbHV9vCqW55m15J8R1h9FIZo', '2019-08-09 21:33:17', '2019-08-09 21:33:17'),
(2856, 1, 'qGHSIybr6I1nNm3PIdWvK0HyZHxmMldw', '2019-08-09 21:33:17', '2019-08-09 21:33:17'),
(2857, 1, 'ch0WtlkVGFYUM6sInleVyShJYEbM5xfc', '2019-08-09 21:33:22', '2019-08-09 21:33:22'),
(2858, 1, 'uInKpTsrL19Lw76OHxLxJevrpIhepVAp', '2019-08-09 21:33:22', '2019-08-09 21:33:22'),
(2859, 1, 'x4RJEWJQWDCTrw4DnOVtxj2Cfv7gRN74', '2019-08-09 21:33:22', '2019-08-09 21:33:22'),
(2860, 1, 'rWHFDVg67i7RxXXBidoWAPZsZBldAroq', '2019-08-09 21:33:22', '2019-08-09 21:33:22'),
(2861, 1, 'gNo9N1VPeboVEExsdPQgFySswliQbTsW', '2019-08-09 21:33:22', '2019-08-09 21:33:22'),
(2862, 1, 'G3I0vWBxis5nIBnom3WA1JTNLpXPlFxx', '2019-08-09 21:33:23', '2019-08-09 21:33:23'),
(2863, 1, 'SBKdSv1wlT57Fczv6EiwqiyA97w9hYXk', '2019-08-09 21:33:23', '2019-08-09 21:33:23'),
(2864, 1, 'tX4IGDBulgzvA8HAgiPmbDL4Khwq2RkW', '2019-08-09 21:33:23', '2019-08-09 21:33:23'),
(2865, 1, 'r5KwICsmsMiRIq1GJPAa9y3pPrhvFuu8', '2019-08-09 23:08:36', '2019-08-09 23:08:36'),
(2866, 1, 'mfYSTqB0xZl5eP9vOVjmTzomxFqkXO9g', '2019-08-09 23:08:38', '2019-08-09 23:08:38'),
(2867, 1, 'Spu3oey7ZpXLp0f26PS6ePZndhHuJE7P', '2019-08-12 14:51:31', '2019-08-12 14:51:31'),
(2868, 1, 'mLXl5WZO3LHtj9qhwSU5uZVoxBu01cnH', '2019-08-12 14:52:25', '2019-08-12 14:52:25'),
(2869, 1, 'gXPfXKnIibcPm7ZdvVEMeyJNkpxaLR3m', '2019-08-12 14:52:28', '2019-08-12 14:52:28'),
(2870, 1, 'Y30FT50Vvphabnrx7aj1Y1v920vT7xiY', '2019-08-13 13:34:41', '2019-08-13 13:34:41'),
(2871, 1, 'JtGA6EGrzPxV0XHCv0HuLR6kuQRGS4Li', '2019-08-13 13:36:24', '2019-08-13 13:36:24'),
(2872, 1, '6TY0FF6a5PSOV87Uoon39QLEzNcGVwkB', '2019-08-13 14:06:52', '2019-08-13 14:06:52'),
(2873, 1, 'vhyDighFLudeHUSZgBDkohrbLVs5qDDs', '2019-08-13 14:06:52', '2019-08-13 14:06:52'),
(2874, 1, 'UaULLO2knZTHCGlb7Rw3RA34SRQut8ev', '2019-08-13 14:06:52', '2019-08-13 14:06:52'),
(2875, 1, 'WHvKalYhOLFaa5huKsL0gG6GYuzuYrfX', '2019-08-13 14:06:52', '2019-08-13 14:06:52'),
(2876, 1, 'NQCTXecTp7uXpTQK9qC1tPHXmDFB9uw5', '2019-08-13 14:06:52', '2019-08-13 14:06:52'),
(2877, 1, 'DDh47T2VQmzwISKVTJfAASvO9a0YObai', '2019-08-13 14:06:53', '2019-08-13 14:06:53'),
(2878, 1, 'f0GyOyeXzQmsAwxJpzn9k0Eq5qrxx9cQ', '2019-08-13 14:06:53', '2019-08-13 14:06:53'),
(2879, 1, 'j1sKrwYTnbArCU2LDHGhr3voVE5YS4x4', '2019-08-13 14:06:53', '2019-08-13 14:06:53'),
(2880, 1, 'ZWjiW8RTwZ6HJ5F52ja7hY32p4Pfo29E', '2019-08-13 21:13:15', '2019-08-13 21:13:15'),
(2881, 1, 'mXcRL8j3KwTiT5JlBkaXKt9fOgeU5gUn', '2019-08-13 21:13:15', '2019-08-13 21:13:15'),
(2882, 1, 'ZtMmxleapnNcKCQiJS1IPA9bKHnWZTxs', '2019-08-13 21:13:15', '2019-08-13 21:13:15'),
(2883, 1, 'ismqhuppJauAGvhmZUesVwwy3o6izFei', '2019-08-13 21:13:16', '2019-08-13 21:13:16'),
(2884, 1, 'H6RQp3cLYZiQ2R0tSCRVjZpAAkMwwax7', '2019-08-13 21:14:46', '2019-08-13 21:14:46'),
(2885, 1, 'ELedl1HbAaYhvxlXfj7HkRBwzQ7ZGbxg', '2019-08-13 21:14:46', '2019-08-13 21:14:46'),
(2886, 1, 'jcGM2wg1FTxoX8O75rS1DbhsNLONCMU4', '2019-08-13 21:14:46', '2019-08-13 21:14:46'),
(2887, 1, 'N1bUOJUND2FsvgUCkINuVv79bQhcsqg5', '2019-08-13 21:14:46', '2019-08-13 21:14:46'),
(2888, 1, '9FtfI9x6LlbFfLvkBUid323N6kxgoHmZ', '2019-08-13 21:15:50', '2019-08-13 21:15:50'),
(2889, 1, 'w4FDNC1T7rMuG1vdmZoYyRH8odIsQKPR', '2019-08-13 21:15:50', '2019-08-13 21:15:50'),
(2890, 1, 'iihak92KJa2A23ir0gecUd5218VbMqhq', '2019-08-13 21:15:50', '2019-08-13 21:15:50'),
(2891, 1, 'tPEqhoCZHaDLo7EXaVBDuFovKlXo5go1', '2019-08-13 21:15:50', '2019-08-13 21:15:50'),
(2892, 1, '0QMjLwj960vBYKA6MlsD4STgBkLc10mm', '2019-08-13 22:41:28', '2019-08-13 22:41:28'),
(2893, 1, '8whHSp0uEAQue9ZqGj3ggk4lRsa86RWR', '2019-08-13 22:42:40', '2019-08-13 22:42:40'),
(2894, 1, 'vL7EcjjFhN5Xph3N5LZVx3HL1pZI0DUU', '2019-08-13 22:42:40', '2019-08-13 22:42:40'),
(2895, 1, '2O6Uyu4vQNoZlYkYpM6aNps2B8UdiiGV', '2019-08-13 22:58:58', '2019-08-13 22:58:58'),
(2896, 1, 'OYHAcc9iyu0MfvmSTK79QBQCwgRMnsU0', '2019-08-13 22:58:58', '2019-08-13 22:58:58'),
(2897, 1, 'sjHJWewUik7dkBnL7EyHtAkm5UBYgZ0D', '2019-08-13 22:58:59', '2019-08-13 22:58:59'),
(2898, 1, 'x306zYF6ibWuxWRwitGMJ8v8YKgzby6l', '2019-08-13 22:58:59', '2019-08-13 22:58:59'),
(2899, 1, 'iMI2ppqtVPiYyNG7UbjgwybnXRwPDy6E', '2019-08-14 14:36:37', '2019-08-14 14:36:37'),
(2900, 1, 'rW5WPxUTMKLj9NArBg1qPYr8cYCu4A9u', '2019-08-14 14:40:41', '2019-08-14 14:40:41'),
(2901, 1, 'dV3rIhkhwNAfp6SYi6iHMx3wQ3bsWfNW', '2019-08-14 14:41:12', '2019-08-14 14:41:12'),
(2902, 1, '8qBy9kdlYiYTTjbkwhXco5XVGFRAbZYE', '2019-08-14 14:41:18', '2019-08-14 14:41:18'),
(2903, 1, 'aXmdyJ0zwJqBiCHWBqxH2vybL5OTMhoZ', '2019-08-14 14:41:25', '2019-08-14 14:41:25'),
(2904, 1, 'tUdkblM8nvBuW7t9QdGQyHLZG1S8z53Z', '2019-08-14 14:41:33', '2019-08-14 14:41:33'),
(2905, 1, '97YFzzibQmgyC5Ptwqb6WfAxK1nvSeDh', '2019-08-14 14:41:41', '2019-08-14 14:41:41'),
(2906, 1, 'xbQgcxh1M93SPfiPwgvOrJzSekCFSuI0', '2019-08-14 14:41:49', '2019-08-14 14:41:49'),
(2907, 1, 'GYq9zCxzJDmD9IDkwfZoFiZ7PjuG33iF', '2019-08-14 14:41:58', '2019-08-14 14:41:58'),
(2908, 1, '2eHIA42LmpKpTCVPLMLy0TRT2GY8KQ0N', '2019-08-14 15:11:14', '2019-08-14 15:11:14'),
(2909, 1, 'xJ3tg8IYoh9LOniKC6psw9Y4AGTE3jrK', '2019-08-14 15:11:14', '2019-08-14 15:11:14'),
(2910, 1, 'WKXlOiJep5nazoUqmIMGL0h21zeTCOD4', '2019-08-14 15:15:15', '2019-08-14 15:15:15'),
(2911, 1, 'FRpHd57VQLq7yNeacbKZYY7OkKX979ZG', '2019-08-14 15:15:15', '2019-08-14 15:15:15'),
(2912, 1, 'CrGfmFR8Zf76UBTeKBpF23VfjgWGAZCX', '2019-08-15 14:28:59', '2019-08-15 14:28:59'),
(2913, 1, 'uFGbTcgIcn3hQnw0ae2DZR61OOsgrjwN', '2019-08-15 15:18:07', '2019-08-15 15:18:07'),
(2914, 1, 'UosT48TnSDyMubVU3CnLw8v8td3wEd5j', '2019-08-15 15:18:07', '2019-08-15 15:18:07'),
(2915, 1, 'mllsoNcupo3sMl1TyrgHMn6faspZ5yvd', '2019-08-15 15:18:11', '2019-08-15 15:18:11'),
(2916, 1, 'kDyDC8inyqDAE4r8TfrcurOQKzt4Jpd4', '2019-08-15 15:18:11', '2019-08-15 15:18:11'),
(2917, 1, 'wlCurisDgaCrPXCElFhfD5LPh6G6wOHI', '2019-08-15 15:18:20', '2019-08-15 15:18:20'),
(2918, 1, 'KE6ddZZ1eQotUf1BGckl0FvDAtvR6Nho', '2019-08-15 15:18:20', '2019-08-15 15:18:20'),
(2919, 1, 'kwx2DGCYTwEYixHypw6k2zBDUb4wRnRP', '2019-08-15 15:33:30', '2019-08-15 15:33:30'),
(2920, 1, 'GXBRh7s7ZoOCG1Q6yfSG6aOK2LXvaJLt', '2019-08-15 15:33:30', '2019-08-15 15:33:30'),
(2921, 1, 'NOqkeOP3P8BE9pqTUwCggkjSpSpZ8uzo', '2019-08-15 16:35:01', '2019-08-15 16:35:01'),
(2922, 1, 'SlMOTJ1xS939ce3cbMSedvLEkYBWVhth', '2019-08-15 16:35:01', '2019-08-15 16:35:01'),
(2923, 1, 'AxQh6YS6Gwc7V2QVYhCU3BCmyQ0poeYu', '2019-08-15 16:35:31', '2019-08-15 16:35:31'),
(2924, 1, 'aOjo2n4deXu8rBVO7wQzQKjPPXZqpntm', '2019-08-15 16:35:31', '2019-08-15 16:35:31'),
(2925, 1, 'SnKmPcWg4PpIleW0UmKNYpax0be05HzE', '2019-08-15 16:35:53', '2019-08-15 16:35:53'),
(2926, 1, 'vLqI0wPRPjqk7MC8pGpiJXRPqqncr9zf', '2019-08-15 16:35:53', '2019-08-15 16:35:53'),
(2927, 1, 'Gku0QJtYlEmLIHLyLUAjBGks5wPQMDcY', '2019-08-15 16:39:54', '2019-08-15 16:39:54'),
(2928, 1, 'ekZXsRM1X118TYizDpNY8gykX8gpcKwm', '2019-08-15 16:42:04', '2019-08-15 16:42:04'),
(2929, 1, 'FMnjfSbJ2a8S0X69NHm5SR3h8Q5TjxtD', '2019-08-15 16:44:07', '2019-08-15 16:44:07'),
(2930, 1, 'qxC2CI98XYvX8hCGmleKuaIGubGjmFnA', '2019-08-15 16:44:15', '2019-08-15 16:44:15'),
(2931, 1, 'jq5asP9qYkAz434MnRz1JRJwwy5kJaWo', '2019-08-15 16:44:22', '2019-08-15 16:44:22'),
(2932, 1, 'seTPYNUK4t8ToAN3VX76XQo9gkUCjSc4', '2019-08-15 16:44:48', '2019-08-15 16:44:48'),
(2933, 1, '3WdAAFSUJ5lyGmzFTtz37o07NWK5iKbJ', '2019-08-15 16:44:49', '2019-08-15 16:44:49'),
(2934, 1, '9FI2ooVSDiWzQZZkDN6MoCUd9R7xNsmq', '2019-08-15 16:46:34', '2019-08-15 16:46:34'),
(2935, 1, '0WU2u6UNHfwVQ5PFINCKdrUYEnv8cwKa', '2019-08-15 16:46:41', '2019-08-15 16:46:41'),
(2936, 1, 'mkF8XSbRrpwElcXuzUVTOPYyS14YjCXK', '2019-08-15 16:46:46', '2019-08-15 16:46:46'),
(2937, 1, 'S4NwyFiy4iUVZWqA1YrlrRrYZHMqKVZp', '2019-08-15 16:46:56', '2019-08-15 16:46:56'),
(2938, 1, 'YfhvtPP1E36FGKAiQSsP70HPZ2ckMbzX', '2019-08-15 16:47:02', '2019-08-15 16:47:02'),
(2939, 1, '7j9bhwYgjnGAuMJF35VqRr5o64SGJcgu', '2019-08-15 16:47:09', '2019-08-15 16:47:09'),
(2940, 1, 'kpwRdZ0FmBR3DK6MmwbekWzLgFZAiQfe', '2019-08-15 17:09:24', '2019-08-15 17:09:24'),
(2941, 1, 'bseG1Dvhgdk5W0VYQcewVgBe6BHrFOBN', '2019-08-15 17:09:24', '2019-08-15 17:09:24'),
(2942, 1, 'RRiG9xvkL7g8F6K4WEa6PahcaaqJ9z0Q', '2019-08-15 17:09:25', '2019-08-15 17:09:25'),
(2943, 1, 'PFBo17X2ZfYpPcRKAqb152aKN4z2R80N', '2019-08-15 17:09:25', '2019-08-15 17:09:25'),
(2944, 1, 'QHO0oVFmQ1I858sMgRi39iC3qkixBHip', '2019-08-15 17:09:25', '2019-08-15 17:09:25'),
(2945, 1, 'x7W56vLrFAGBH35dSm4EbjPcuEYeKgjn', '2019-08-15 17:09:25', '2019-08-15 17:09:25'),
(2946, 1, 'kkMVRNNYcrXM5hMqkuQs4Hk2SLyaXtEg', '2019-08-15 17:09:25', '2019-08-15 17:09:25'),
(2947, 1, 'cCnDFOfj5p5zDx3zWjc2BV9TwsKwiCo6', '2019-08-15 17:09:26', '2019-08-15 17:09:26'),
(2948, 1, 'noreuEH66CMYU9q4wCjz1VvNcydVZt8Y', '2019-08-15 17:19:31', '2019-08-15 17:19:31'),
(2949, 1, 'hB1qhtILrgvyVxDmyPvLzKWMer3Afq19', '2019-08-15 17:27:42', '2019-08-15 17:27:42'),
(2950, 1, 'X6ijcOwug2JR7s7adJRadYXUIOWqxVe7', '2019-08-15 19:45:06', '2019-08-15 19:45:06'),
(2951, 1, 'levcbicaE30XrcG0zOmBBS6OP3X96gUU', '2019-08-15 19:45:24', '2019-08-15 19:45:24'),
(2952, 1, 'CSiuTgBWuTrArizsF3YrH5XUJ2GL3shw', '2019-08-15 19:46:04', '2019-08-15 19:46:04'),
(2953, 1, 'Ti4NFPlJHNaaizVuA8A95pYwBgRIzd6L', '2019-08-15 19:46:04', '2019-08-15 19:46:04'),
(2954, 1, '3JXfEz5HjY78rJVTT5tAoiDiKYpgQUYi', '2019-08-15 19:46:42', '2019-08-15 19:46:42'),
(2955, 1, 'GrcXLDYyVeHydpcPvEFFrKWk49xNyDGn', '2019-08-15 19:46:42', '2019-08-15 19:46:42'),
(2956, 1, 'cWdKB13wmM0s3wrITeW3WrzbJlwFWgHR', '2019-08-15 19:47:06', '2019-08-15 19:47:06'),
(2957, 1, 'I3IsT507FmfjMLBoy8Mtoq9LRdq0ttxO', '2019-08-15 20:08:35', '2019-08-15 20:08:35'),
(2958, 1, 'Yd8tL2zBpcsjzEDjA3OUfnzGCGaDZXxY', '2019-08-15 22:10:59', '2019-08-15 22:10:59'),
(2959, 1, 'dRUVciyXlLJMModRbZiqT1KrYuPKtR4r', '2019-08-15 22:12:36', '2019-08-15 22:12:36'),
(2960, 1, '97B0ZQicKIMxCKxPjRPtBwcKRT6VwyvM', '2019-08-15 22:12:38', '2019-08-15 22:12:38'),
(2961, 1, 'xWhzvJmWriwqqKpG26Cma4oBAxpT9HbA', '2019-08-15 22:12:44', '2019-08-15 22:12:44'),
(2962, 1, 'xbxIjswZD51dlfmqz56d4BrOWO9RhcpF', '2019-08-15 22:12:50', '2019-08-15 22:12:50'),
(2963, 1, 'm8VAOzIrrlgZQzWJi8GD9Ecf8Am0dUpq', '2019-08-15 22:13:17', '2019-08-15 22:13:17'),
(2964, 1, 'dw5cDmedxU6RAcPuA1QvBf7PxecUxyv7', '2019-08-15 22:13:22', '2019-08-15 22:13:22'),
(2965, 1, 'KbK7evWjjkAJvfbKdUVhu3GbD9ZSyIbQ', '2019-08-15 22:13:46', '2019-08-15 22:13:46'),
(2966, 1, 'gY8CHfTJVOLaiwJQxNpBDY6QUdwPNzn3', '2019-08-15 22:14:56', '2019-08-15 22:14:56'),
(2967, 1, 'KvPluKPyBWDiV75Iv497LrfKaXpCWtmX', '2019-08-15 22:15:31', '2019-08-15 22:15:31'),
(2968, 1, 'O6HOioYND6UWNRNbiG4LRoUlCUTafVls', '2019-08-15 22:15:34', '2019-08-15 22:15:34'),
(2969, 1, 'PseGBlVmaeruX7IjahIGuRKSoi3NL8vs', '2019-08-15 22:40:25', '2019-08-15 22:40:25'),
(2970, 1, 'UM07iGi5CV5NeP6zNntWAmz5kPwcuqJ3', '2019-08-15 22:40:25', '2019-08-15 22:40:25'),
(2971, 1, 'Z8pcNKS2zH3B5XR9eQlv4VwWrPDj0FfQ', '2019-08-15 22:40:25', '2019-08-15 22:40:25'),
(2972, 1, 'TTPFD9oayiRu9iTGzXTtNqOwDJygdN3s', '2019-08-15 22:40:25', '2019-08-15 22:40:25'),
(2973, 1, 'E13ZNNGFPe9lc4gZpR9EYR1NpykrPLPA', '2019-08-15 22:40:25', '2019-08-15 22:40:25'),
(2974, 1, 'vZayffpibBC9FuFDXuKyv7HhJsTB2d8y', '2019-08-15 22:40:26', '2019-08-15 22:40:26'),
(2975, 1, '3tASTWHIuQqKOt89lkoTjoCMsdKYAzx4', '2019-08-15 22:40:26', '2019-08-15 22:40:26'),
(2976, 1, 'gHG4HTpiOt6l717D58CScqvVbzn60Vkg', '2019-08-15 22:40:26', '2019-08-15 22:40:26'),
(2977, 1, '5w0IeGrkbjx5oWDRZYTi7opLPTpor8dy', '2019-08-15 23:10:03', '2019-08-15 23:10:03'),
(2978, 1, 'pep2u7a1pBGZLNPS9cQfOePcaf6ZjRcK', '2019-08-15 23:10:03', '2019-08-15 23:10:03'),
(2979, 1, '1stj5UImfZcPgsBsvekeceU629Ep4jMC', '2019-08-15 23:10:07', '2019-08-15 23:10:07'),
(2980, 1, 'lABuT0JLvNsKpeBPGuc6dit3kcpkpJ93', '2019-08-15 23:10:07', '2019-08-15 23:10:07'),
(2981, 1, 'V4Tv9lji9JzeFxHGG4siz1xOkKGHrm4O', '2019-08-15 23:21:06', '2019-08-15 23:21:06'),
(2982, 1, 'wGtOCkcGPTGKGOPcVzuW4QmwMs8IaAFz', '2019-08-15 23:21:06', '2019-08-15 23:21:06'),
(2983, 1, 'C6CMbSj621NPNm7jh5ZjE31fPogW68I0', '2019-08-15 23:21:22', '2019-08-15 23:21:22'),
(2984, 1, 'zvociGxMHmU214ps7Urau8cOmkivVyoD', '2019-08-15 23:21:22', '2019-08-15 23:21:22'),
(2985, 1, 'qJq7m833TXOqoLmBAg6fJFjG7gXVGLd4', '2019-08-16 17:22:11', '2019-08-16 17:22:11'),
(2986, 1, 'RCycbyip5HLKHE5XRQooVPBXSbuwcZjB', '2019-09-03 17:21:59', '2019-09-03 17:21:59'),
(2987, 1, 'LHHTniVDfmEZDDrz2KVbKUBhb9Z4yPHG', '2019-09-03 17:28:21', '2019-09-03 17:28:21'),
(2988, 1, 'eUD6rATGmOGmCXG5buu6Kqks5xN0UtX7', '2019-09-10 14:40:21', '2019-09-10 14:40:21'),
(2989, 1, 'NhxiNDZA3c8omaymCLZ7A7s9vN7U7PDW', '2019-09-10 14:40:21', '2019-09-10 14:40:21'),
(2990, 1, 'WU1KbwNUvbqMq6XvWimYBKpr8kdkgAET', '2019-09-10 14:40:21', '2019-09-10 14:40:21'),
(2991, 1, 'aA2Xa3P86UjL1gDVpKsupebK8h0LhBQv', '2019-09-10 14:40:21', '2019-09-10 14:40:21'),
(2992, 1, 'hKjdme0yzhjQI7iZpgpHPkdUelpJAXbw', '2019-09-10 14:40:21', '2019-09-10 14:40:21'),
(2993, 1, 'OffyJrijnnszETmEyeH2E3lEmdIOTXfe', '2019-09-10 14:40:22', '2019-09-10 14:40:22'),
(2994, 1, 'A20e6c9xQDKOcR8i44E2EH3onmtR3ggY', '2019-09-10 14:40:22', '2019-09-10 14:40:22'),
(2995, 1, 'NDK4csn8DeGFeJqPU6V6QnXa3UBGSUL4', '2019-09-10 14:40:23', '2019-09-10 14:40:23'),
(2996, 1, 'SCBZP2sboFL3JuRJYy5ywzgK0HKUPPb2', '2019-09-10 14:40:33', '2019-09-10 14:40:33'),
(2997, 1, 'jHESCIWPFQzscZUJOmYrsoakoOi4Le0W', '2019-09-10 14:41:10', '2019-09-10 14:41:10'),
(2998, 1, 'yhPOtPNemtNiDhmiUBTabBKi0ElUwjXI', '2019-09-10 14:41:29', '2019-09-10 14:41:29'),
(2999, 1, 'ra4G35BFp4Tleyt8y3CnSRySCK365uXD', '2019-09-10 14:41:45', '2019-09-10 14:41:45'),
(3000, 1, 'DFqJlvNrjUR38t7XSI0jNtal1ZS0Qflf', '2019-09-10 14:42:01', '2019-09-10 14:42:01'),
(3001, 1, 'RMMHRjjFTe7rzJ8nPU5yUBS2L0mXsfVt', '2019-09-10 14:42:25', '2019-09-10 14:42:25'),
(3002, 1, 'g73OEr4L23hi9STsq86VJUxG0Jyulfs4', '2019-09-10 14:42:27', '2019-09-10 14:42:27'),
(3003, 1, 'pphoyVLEZ4k0etDtsWujMbomyCAazCpJ', '2019-09-10 14:44:47', '2019-09-10 14:44:47'),
(3004, 1, '3cc5IrkKFz4tgA08Njx0CCUSrk7W35Mo', '2019-09-10 14:44:47', '2019-09-10 14:44:47'),
(3005, 1, '6F0mD2bqZtxhs5uF7OzFvh2YHeSZCNeS', '2019-09-10 14:47:49', '2019-09-10 14:47:49'),
(3006, 1, 'Ds9Yk9bCtsoJ2cfAgXF0cETUER3BCeaP', '2019-09-10 14:49:24', '2019-09-10 14:49:24'),
(3007, 1, 'Q38e1aXFYkHY9fDPsHwERuQZEJP2sUxD', '2019-09-10 14:49:29', '2019-09-10 14:49:29'),
(3008, 1, 'hOVoBkTBCFskZHPYfOdNfVixEzJmBHb5', '2019-09-10 14:49:29', '2019-09-10 14:49:29'),
(3009, 1, 'JlPENTjBIFKCjbEkTS7hJQeTHSZdGkqa', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3010, 1, 'K8bkZgXi6fABgGoUteS2njem0UDD7c0d', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3011, 1, '0f9j7euyaqzjKT8o3gpB6bIpR4dXcR3h', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3012, 1, 'SxAdaGeV6IwJTRvejyHG1cTRdBUuWMus', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3013, 1, 'll08GAToxkKTz163bjfMmh59QThlbthG', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3014, 1, 'XcfweCFBM8QQq5UUggPExPLjoQThUSrD', '2019-09-10 14:50:21', '2019-09-10 14:50:21'),
(3015, 1, 'nwBF6PHnjbIdDgFuME5m1mtaGLANapRy', '2019-09-10 14:50:22', '2019-09-10 14:50:22'),
(3016, 1, 'fmT9ZbhUDjesx3LztaFrzaKQIk8JUxTI', '2019-09-10 14:50:22', '2019-09-10 14:50:22'),
(3017, 1, '0KXoXgXqCMr95SsuGJbWWvmVeum5BQpJ', '2019-09-10 14:51:06', '2019-09-10 14:51:06'),
(3018, 1, 'nq6VW5YuLcQB0FdVP6w14O0pvyB5l9ah', '2019-09-10 14:51:06', '2019-09-10 14:51:06'),
(3019, 1, 'ytXXyyLIFI349lXjMkljQtcVm9SPCnpZ', '2019-09-10 14:51:14', '2019-09-10 14:51:14'),
(3020, 1, 'DE91zVMSO8CElzQwkI72qLXeM4IkJyxd', '2019-09-10 14:51:14', '2019-09-10 14:51:14'),
(3021, 1, 'WQ8Ni2TpBgzgsYRe4ZRIRtmgPrAUcAP0', '2019-09-10 14:51:23', '2019-09-10 14:51:23'),
(3022, 1, 'xuG2sHafC9O4YyejjPSpC1pFmVAxLTS6', '2019-09-10 14:51:23', '2019-09-10 14:51:23'),
(3023, 1, 'vfKrHdtmxm8qQVe7FJLRzh67dPw6YRtR', '2019-09-10 14:51:34', '2019-09-10 14:51:34'),
(3024, 1, 'SLdAvlikd9ilaYJATUErjRhzicSDXM0X', '2019-09-10 14:51:34', '2019-09-10 14:51:34'),
(3025, 1, 'Du9xI0zXu6xNb6tiUTSqLLm8pGeYIsyc', '2019-09-10 14:51:34', '2019-09-10 14:51:34'),
(3026, 1, '4yp7FcbrDWJNhgL5Y3W6H3aymSPoBLje', '2019-09-10 14:51:34', '2019-09-10 14:51:34'),
(3027, 1, '4K3nbsXUjiUzJ1CWV4Yk7t8katLhGSZN', '2019-09-10 14:51:34', '2019-09-10 14:51:34'),
(3028, 1, 'Tq1dgvo1Z2ATHoYo8aZPkD6Tf8jz18wt', '2019-09-10 14:51:35', '2019-09-10 14:51:35'),
(3029, 1, 'qqZQkbfUjdGEpblXzDfaR4tnvqK2NI7E', '2019-09-10 14:51:35', '2019-09-10 14:51:35'),
(3030, 1, 'awhWKZWOkd9FBoGdzoxoCMV4pRrrTtid', '2019-09-10 14:51:35', '2019-09-10 14:51:35'),
(3031, 1, 'yrBSGtMQRvLNfZe7mhWsPySJJCT2gMXB', '2019-09-10 14:51:41', '2019-09-10 14:51:41'),
(3032, 1, 'x5ISLmPdIwSVxRm6bx02OEOrfi5g3I6r', '2019-09-10 14:51:41', '2019-09-10 14:51:41'),
(3033, 1, '8FEzDkKdHeHHBY2dI7O2RURjxOvOf29i', '2019-09-10 14:52:06', '2019-09-10 14:52:06'),
(3034, 1, 'NMIhjQpaoHkFHDefbjn8BrPtCCxbPfDD', '2019-09-10 14:52:06', '2019-09-10 14:52:06'),
(3035, 1, '63HupJq7GI55kZfqQoI7nuXw3c8xF0iX', '2019-09-10 14:52:21', '2019-09-10 14:52:21'),
(3036, 1, 'jtrVEoPV71oaPPJSxGCIAJAT0V2gg35Z', '2019-09-10 14:52:21', '2019-09-10 14:52:21'),
(3037, 1, 'lzLJCkIReFNeR5MrhGOMQ3uexD9KcLjq', '2019-09-10 14:52:22', '2019-09-10 14:52:22'),
(3038, 1, 'hg7vWxGrUiL17mBMV3JoKh02V32o4OA2', '2019-09-10 14:52:22', '2019-09-10 14:52:22'),
(3039, 1, 'S0OSyt7OTM2OO4qKPTkQMxnj0VubzJxc', '2019-09-10 14:52:22', '2019-09-10 14:52:22'),
(3040, 1, '0srgNTVxx911gdnuYWgzWrjMmGE79ZMn', '2019-09-10 14:52:22', '2019-09-10 14:52:22'),
(3041, 1, '3r9hkjFdnB24xW8USTTqZPL6sUuPovCj', '2019-09-10 14:52:22', '2019-09-10 14:52:22'),
(3042, 1, 'MUpPR7NPwKRzVQxSHZqYW87TlsUlR8AJ', '2019-09-10 14:52:23', '2019-09-10 14:52:23'),
(3043, 1, 'WdT2AlP4KuumNxW0tmnCb0EFoC6DYn0e', '2019-09-10 14:52:32', '2019-09-10 14:52:32'),
(3044, 1, 'gQQP1kgUioFST5YEXbR0aK3WdUzfC4IJ', '2019-09-10 14:52:32', '2019-09-10 14:52:32'),
(3045, 1, 'VqYfwbTNcAAffhgzriMRIgRtyxgY5c4B', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3046, 1, 'pJuo5BKl2fyVGCBqMDJ0xlqokTTZmPxs', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3047, 1, '5jskUH4MepkHeSQ0XYoywHY4PNttV3f9', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3048, 1, 'njOW9BnoGIKgo583zYK7vzqOzAMAitjB', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3049, 1, 'paYOPciUnYUS6lbvurGKkUzTnkMMspFn', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3050, 1, 'UsEPxhhMHTYRdKBwUhM4U3jAC7njxd3H', '2019-09-10 14:52:42', '2019-09-10 14:52:42'),
(3051, 1, 'cyi3ygaoExTGhjAxlK4X3Mo1GWUd6e6X', '2019-09-10 14:52:43', '2019-09-10 14:52:43'),
(3052, 1, 'VgVCPeH36060YxLDTvjJB6wobx8hAkLK', '2019-09-10 14:52:43', '2019-09-10 14:52:43'),
(3053, 1, 'FXQ8uOUWUeVimucJCpd7f6Fqf5mNqqTA', '2019-09-10 14:53:24', '2019-09-10 14:53:24'),
(3054, 1, 'prl0iig6MiwpQ3CFPTeVclyQP4IW0dzx', '2019-09-10 14:53:28', '2019-09-10 14:53:28'),
(3055, 1, 'ZyOSRfM5ZCIClh0sLhmRCC2uQhXrTKHx', '2019-09-10 14:53:28', '2019-09-10 14:53:28'),
(3056, 1, 'qiWOWtSX2kK0e6tsEB4ee5ZUlzntQYvS', '2019-09-10 14:53:28', '2019-09-10 14:53:28'),
(3057, 1, 'DlHnRs8F26TIhch8dIrxkHlOgsUfswNh', '2019-09-10 14:53:28', '2019-09-10 14:53:28'),
(3058, 1, 'LvKuA5hy7uKDm2knNDeGoRXWdtFWthhW', '2019-09-10 14:53:28', '2019-09-10 14:53:28'),
(3059, 1, 'lTjjXrGZ0ltshmYsI3ubb0YyC70HhLUc', '2019-09-10 14:53:29', '2019-09-10 14:53:29'),
(3060, 1, '5aGlGZMSciXEikrCCAe7zStw5teJjDlo', '2019-09-10 14:53:29', '2019-09-10 14:53:29'),
(3061, 1, 'zrJWxgrZ96tkb2oUU0lX4qGizlVDKr0E', '2019-09-10 14:53:29', '2019-09-10 14:53:29'),
(3062, 1, 'lKZJHxnpbuxCikWz8sXOzZUrebeBGhl4', '2019-09-10 14:55:58', '2019-09-10 14:55:58'),
(3063, 1, 'GoPwnotqqo4MVxLnqAyzZS29C9TCw84d', '2019-09-10 14:59:02', '2019-09-10 14:59:02'),
(3064, 1, 'bjVZZqZLfw3ro6SkXzuWVSDGqwiYI4Kn', '2019-09-10 14:59:02', '2019-09-10 14:59:02'),
(3065, 1, 'ZR5AlD7hYMpHftT6uQM7ti5UimbUlEU0', '2019-09-10 14:59:03', '2019-09-10 14:59:03'),
(3066, 1, 'Phcll4vEcqcUbWTfAbCRGAG20SHjOCxg', '2019-09-10 14:59:04', '2019-09-10 14:59:04'),
(3067, 1, 'jVEg8LoLSoGiJrxdl390Cja8gA3LR4Sd', '2019-09-10 14:59:42', '2019-09-10 14:59:42'),
(3068, 1, 'LnAZiZeWC9vZXWxaUCuP1XkBwqv89AKL', '2019-09-10 14:59:42', '2019-09-10 14:59:42'),
(3069, 1, 'gxVrWKoUr1aO0TA6kPKfjDfn2b5U9rfJ', '2019-09-10 14:59:42', '2019-09-10 14:59:42'),
(3070, 1, '0Q04MhT8g7UaXRwkpDOF33rDz8GriWCm', '2019-09-10 14:59:43', '2019-09-10 14:59:43'),
(3071, 1, 'VGpfHJ6fDUCnjJAFeBBIPkWA2wVbnrXJ', '2019-09-10 15:00:36', '2019-09-10 15:00:36'),
(3072, 1, 'NaaU7PxWOXCQE4OmUfvuPTAxOWRsWkVA', '2019-09-10 15:00:37', '2019-09-10 15:00:37'),
(3073, 1, 'mxqrA5ctnFoIcLPfOwiQSNFnkDLjdrXQ', '2019-09-10 15:02:36', '2019-09-10 15:02:36'),
(3074, 1, 'rvZCRODeWv1fz0kUQy8LQbcor9QdrBaq', '2019-09-10 15:02:36', '2019-09-10 15:02:36'),
(3075, 1, 'OIsQVXeZc0P6Dj9ChjBlf25rbBLzHXqw', '2019-09-10 15:02:36', '2019-09-10 15:02:36'),
(3076, 1, 'yPOocixDWSTxeQsXAcAZrhU9z3cUGMKL', '2019-09-10 15:02:36', '2019-09-10 15:02:36'),
(3077, 1, 'wqJ0Zf5U9VU7QLd2sRAepecQcf8bMuAP', '2019-09-10 15:03:29', '2019-09-10 15:03:29'),
(3078, 1, '4ZvFGMD33MbsjEgXsID87vrkoDgOAGAA', '2019-09-10 15:03:29', '2019-09-10 15:03:29'),
(3079, 1, 'I28b07PidsEuOrjmr2BbjKr0tp5P2WRo', '2019-09-10 15:03:29', '2019-09-10 15:03:29'),
(3080, 1, 'Fn8dV32lUAQwzig8B6k2ZwaJab0IIh9q', '2019-09-10 15:03:29', '2019-09-10 15:03:29'),
(3081, 1, '4oNw27Qas1mMXjEYnUWbWGP8jHI8Fnf8', '2019-09-10 15:03:29', '2019-09-10 15:03:29'),
(3082, 1, 'jeOiurGJsZO2v7YLC5ec7PYvyvP2SMOp', '2019-09-10 15:03:30', '2019-09-10 15:03:30'),
(3083, 1, 'VpaVTTiPivqFPGbfsqHXTKgbuyKk12Eb', '2019-09-10 15:03:30', '2019-09-10 15:03:30'),
(3084, 1, 'CBmWFsJ84UgKCLRCdWPZ6x2O75i3TWVK', '2019-09-10 15:03:30', '2019-09-10 15:03:30'),
(3085, 1, 'SsVDOFtp6CO6uS3q2ne2cGT62Y2dUt6E', '2019-09-10 15:04:30', '2019-09-10 15:04:30'),
(3086, 1, 'bGOyqsd2aidbWHvBtMqwoXQdqZOQ8AzR', '2019-09-10 15:04:30', '2019-09-10 15:04:30'),
(3087, 1, 'Zum36A73IXL6dCnfHqFprOPe8fLctSJX', '2019-09-10 15:04:30', '2019-09-10 15:04:30'),
(3088, 1, 'rFUe5d1XPYkPvlx9XnZ74qRMIfIYQ1zD', '2019-09-10 15:04:30', '2019-09-10 15:04:30'),
(3089, 1, 'b0ghscfcNVRZn7frWCa7rUw1ZLlr0LyO', '2019-09-10 15:04:30', '2019-09-10 15:04:30'),
(3090, 1, 'uOISVs5kp3njpd0lXJRlQIUz52sHwIVE', '2019-09-10 15:04:31', '2019-09-10 15:04:31'),
(3091, 1, 'WPKoDJ8ErelXg1MrFWifO3gvqiae5kv5', '2019-09-10 15:04:31', '2019-09-10 15:04:31'),
(3092, 1, '2Ju0H87KwiNCO3eo6TPAx6CHU65byMlX', '2019-09-10 15:04:31', '2019-09-10 15:04:31'),
(3093, 1, 'ebIQkKN4tWHxzd8864Hd9hvzHqAhQEuj', '2019-09-10 15:05:04', '2019-09-10 15:05:04'),
(3094, 1, 'iRbNLzm3zhBrkGXbQqrSMiA4HNEYYDTb', '2019-09-10 15:05:04', '2019-09-10 15:05:04'),
(3095, 1, 'xFF4Dktfu4bUfjAVensFNrigk1SAp4YT', '2019-09-10 15:05:26', '2019-09-10 15:05:26'),
(3096, 1, 'GvfncB6AgLLettfSeKp94FpPz8HHgHIe', '2019-09-10 15:05:26', '2019-09-10 15:05:26'),
(3097, 1, 'BiXs5PlLvWbHgDdom7eOgEG8m9fTTTOx', '2019-09-10 15:06:32', '2019-09-10 15:06:32'),
(3098, 1, 'lrwAWbY9cvDt61TS3uSBVF1Tns95DMi0', '2019-09-10 15:06:32', '2019-09-10 15:06:32'),
(3099, 1, 'iuQBxouMdWqmCYl9KbnzpnI1ajp7oUc6', '2019-09-10 15:07:11', '2019-09-10 15:07:11'),
(3100, 1, 'lD1o8mTi42fNXjS4sbwwgMgYX6jbnhkb', '2019-09-10 15:07:12', '2019-09-10 15:07:12'),
(3101, 1, 'DiJ37mUj27NrI64zpyEaKF4ApKChkROi', '2019-09-10 15:08:04', '2019-09-10 15:08:04'),
(3102, 1, '7bbwZRQHOTUqOLCGJ0ewLX2Emz0BYQLN', '2019-09-10 15:08:04', '2019-09-10 15:08:04'),
(3103, 1, 'sItkxL49XgIaFYEjNNzai4rzksI710Sz', '2019-09-10 15:08:04', '2019-09-10 15:08:04'),
(3104, 1, 'TQNnR7rQrSmfFI1mhOuTrcVwg77Yy3sd', '2019-09-10 15:08:05', '2019-09-10 15:08:05'),
(3105, 1, '8TbfU5ni7UNFmQoKwShWGZfLPFQ77hvs', '2019-09-10 15:13:55', '2019-09-10 15:13:55'),
(3106, 1, 'EVIyl4rnIoOrcfXAnpDlm504mN4CW9Uy', '2019-09-10 15:13:59', '2019-09-10 15:13:59'),
(3107, 1, '77G695NqWcXCiGnSgPzzs5923lqk6QX8', '2019-09-10 15:14:00', '2019-09-10 15:14:00'),
(3108, 1, 'vpqpGz7FrSmbip4Nh3VOceow89PxGyzB', '2019-09-10 15:15:17', '2019-09-10 15:15:17'),
(3109, 1, 'VivudbdzKwaxuaWsR37Im8o7DU82QoYN', '2019-09-10 15:15:17', '2019-09-10 15:15:17'),
(3110, 1, 'mn8js6ba64WiXvFL7LSOk3nwSryrgJdj', '2019-09-10 15:15:29', '2019-09-10 15:15:29'),
(3111, 1, 'VCXVAo3xYsM7BIwGlcYpv4u07ml57WlG', '2019-09-10 15:15:29', '2019-09-10 15:15:29'),
(3112, 1, '088MN2h8IXdcGsa7lYbtHpfmHzfcGZPs', '2019-09-10 15:16:18', '2019-09-10 15:16:18'),
(3113, 1, '63sn1ptpzh1v1nC5pmN05nohvlXTpiFN', '2019-09-10 15:17:26', '2019-09-10 15:17:26'),
(3114, 1, '65reEvZOqel0hprK86aPnAxtR46cmpHA', '2019-09-10 15:17:31', '2019-09-10 15:17:31'),
(3115, 1, 'JvjF1z2sBPivXtfLGWmYfgKpyb5E1M9r', '2019-09-10 15:18:08', '2019-09-10 15:18:08'),
(3116, 1, 'CvoThX6IFfgB1N8NMiufSpXPdJivaxds', '2019-09-10 15:18:08', '2019-09-10 15:18:08'),
(3117, 1, 'AYqKD0XQKL8j1OpZQa7LU3AWWfdMzTLn', '2019-09-10 15:19:13', '2019-09-10 15:19:13'),
(3118, 1, '9ncAgJn0jtKAS9Qo4Hd5nHwJj20RLuyt', '2019-09-10 15:19:13', '2019-09-10 15:19:13'),
(3119, 1, 'X1B28LXsGDlD5ccV5k9pHtR8v93UyUZn', '2019-09-10 15:20:21', '2019-09-10 15:20:21'),
(3120, 1, 'Z9z9gEnGE23IaNgF3lQkVeWJExOrteUp', '2019-09-10 15:20:21', '2019-09-10 15:20:21'),
(3121, 1, '0SzecYJWn1H2HVSLeOpXj3i8VCr5826V', '2019-09-10 15:20:51', '2019-09-10 15:20:51'),
(3122, 1, 'cJjua8CBYJOYeGfsbEBSGeg5LpHZcNWV', '2019-09-10 15:20:51', '2019-09-10 15:20:51'),
(3123, 1, 'LjGxBAGTqnVVC2PQMttvB9rD6qfCGbWu', '2019-09-10 15:21:00', '2019-09-10 15:21:00'),
(3124, 1, 'V3kmfDYaNyxfhzK7BnxMprzJUq2owKej', '2019-09-10 15:24:33', '2019-09-10 15:24:33'),
(3125, 1, 'REtw0jZECmDyzNK62b4swW4UG1lVzbsd', '2019-09-10 15:26:06', '2019-09-10 15:26:06'),
(3126, 1, 'DdEGFQCbVOsHxIPAsFm6LYdts0Xn4Wc1', '2019-09-10 15:26:11', '2019-09-10 15:26:11'),
(3127, 1, 'HvBY23NSJRTX49PASj9r7ttyVmfRbfmO', '2019-09-10 15:26:22', '2019-09-10 15:26:22'),
(3128, 1, 'UwFNfVLIN8OSbVAytM4PZnbHapbp2fsO', '2019-09-10 15:26:22', '2019-09-10 15:26:22'),
(3129, 1, 'aMiBgycfX2EgrZuyizH1CIO3G7JsGBVK', '2019-09-10 15:26:37', '2019-09-10 15:26:37'),
(3130, 1, 'FQsd2GVxa5FrnCuDcDQT90rVOVaSSOtA', '2019-09-10 15:26:38', '2019-09-10 15:26:38'),
(3131, 1, 'qjMacld0ua7Q31dQjyg0FKJGtx9PUy6W', '2019-09-10 15:26:50', '2019-09-10 15:26:50'),
(3132, 1, 'TYT6UcsGks1kq4XKxXpTkL269LldOCx2', '2019-09-10 15:26:59', '2019-09-10 15:26:59'),
(3133, 1, 'BwTyEd6gO6NTESXd1ZgTU91d3fURB7xW', '2019-09-10 15:26:59', '2019-09-10 15:26:59'),
(3134, 1, 'FvINgmen2AVk6ufaIyTdv2ETNhdgzgh9', '2019-09-10 15:27:02', '2019-09-10 15:27:02'),
(3135, 1, 'l02QkmwcoHZvfouiV2QxDXYzTySJoEoE', '2019-09-10 15:27:03', '2019-09-10 15:27:03'),
(3136, 1, '9ZmTeNxrhZ1IvJAsn5EZDdyyu3zSVlS5', '2019-09-10 15:27:36', '2019-09-10 15:27:36'),
(3137, 1, '6rYQ2Jfu12UUSXmjQLQlhuimL5ku7KGu', '2019-09-10 15:27:37', '2019-09-10 15:27:37'),
(3138, 1, 'BlAVrKcZrOMOruFPJMg5RfporOMAJBVx', '2019-09-10 15:27:42', '2019-09-10 15:27:42'),
(3139, 1, 'YMj9XEgRkWwD8lJ3x9mIrzQTAdAkgtp5', '2019-09-10 15:27:43', '2019-09-10 15:27:43'),
(3140, 1, 'aQ4F6QNEJiVBiKWWVABeyw90n0YeTGUz', '2019-09-10 15:30:56', '2019-09-10 15:30:56'),
(3141, 1, 'dDvLBRIkr7LQDKDTFGFWp6G0xYSFT8Aj', '2019-09-10 15:30:57', '2019-09-10 15:30:57'),
(3142, 1, 'KADqAXgm10QBSnVJBeC9RhbYggs0aoAG', '2019-09-10 15:31:11', '2019-09-10 15:31:11'),
(3143, 1, 'tTMeCeajaDyzWFiJYc98SHeXi8bFqTEY', '2019-09-10 15:31:14', '2019-09-10 15:31:14'),
(3144, 1, 'YTgHuKmUTkbydBV2Z7akCU14MFKKqhpk', '2019-09-10 15:31:15', '2019-09-10 15:31:15'),
(3145, 1, 'Z3wf3Lv6U7XtHIguLqlz414Tc6jHgmv0', '2019-09-10 15:32:13', '2019-09-10 15:32:13'),
(3146, 1, 'Yb5AkVfJhaAfhIjX7TRmEiGV4h88JWiA', '2019-09-10 15:32:14', '2019-09-10 15:32:14'),
(3147, 1, 'l4QdSWjzOVa0qtJEsItEVADX2O7pmOod', '2019-09-10 23:32:34', '2019-09-10 23:32:34'),
(3148, 1, 'HMPEReJPpigqmQfL8QYzfvvXYAHHaH4H', '2019-09-10 23:32:34', '2019-09-10 23:32:34'),
(3149, 1, 'zTv7mDu5N7h3mRE6rUeI5dSua2QXA6HR', '2019-09-10 23:32:34', '2019-09-10 23:32:34'),
(3150, 1, '5TB5nxKsyNAPAS4xI2noXZCIB1DrUVAf', '2019-09-10 23:32:35', '2019-09-10 23:32:35'),
(3151, 1, 'Th6lBmKEGPTKLBVP128YAmSu6dzNpF14', '2019-09-10 23:37:19', '2019-09-10 23:37:19'),
(3152, 1, 'xVtkFD6KH74KW1p70cNEafEZ0xus95zz', '2019-09-10 23:37:19', '2019-09-10 23:37:19'),
(3153, 1, 'D5X9J6YTk0yGvFp8SuHl8YD2BDCVHsfZ', '2019-09-10 23:37:19', '2019-09-10 23:37:19'),
(3154, 1, '5YzJdxnU29z7V7OY6M962EsWU4E8sqUP', '2019-09-10 23:37:19', '2019-09-10 23:37:19'),
(3155, 1, 'nj6288pUiUWBvVkyNZvl1I5s6JulZ6Dx', '2019-09-10 23:38:17', '2019-09-10 23:38:17'),
(3156, 1, 'qhLKk21fnJZ7UHt0L1g7DjzO6WUTWxQ9', '2019-09-10 23:38:17', '2019-09-10 23:38:17'),
(3157, 1, 'J1m89K7CQXVKyPIviLxhUMUJhaE0YOpK', '2019-09-10 23:38:17', '2019-09-10 23:38:17'),
(3158, 1, 'SbYNI9JkxSxBgK1bEqcNTm1J7y4irGxZ', '2019-09-10 23:38:17', '2019-09-10 23:38:17'),
(3159, 1, 'CJZjFqH2J9idvBOpqmUkf02UnXoaBHcw', '2019-09-10 23:40:42', '2019-09-10 23:40:42'),
(3160, 1, 'RbUPUya4U0sPDHwuH9AEaqS920daJqXT', '2019-09-10 23:40:42', '2019-09-10 23:40:42'),
(3161, 1, 'J97hJzwdtdIAVKfr7tm3gjoiT1Tji9RT', '2019-09-10 23:40:43', '2019-09-10 23:40:43'),
(3162, 1, 'mJogNOzoYJOYXTg8o42MbAKRXFEb4ra2', '2019-09-10 23:40:43', '2019-09-10 23:40:43'),
(3163, 1, 'DDRrSYMYf6OcwBlzdd8xwj1e2Tlme3OE', '2019-09-10 23:41:07', '2019-09-10 23:41:07'),
(3164, 1, 'Gvm2tpecCsQNVRumCxQnb3Wep5H1mpiC', '2019-09-10 23:41:07', '2019-09-10 23:41:07'),
(3165, 1, 'FZOfVfpJTw0zuAYnudBMkeLvPTG9xcIi', '2019-09-10 23:41:07', '2019-09-10 23:41:07'),
(3166, 1, 'nd1p9a4kWjQn8rGbRT9gl7gRC1167fKs', '2019-09-10 23:41:08', '2019-09-10 23:41:08'),
(3167, 1, 'EC72DFw0e9MSzb3uGMYO6Xm8Lqr5inu6', '2019-09-10 23:45:01', '2019-09-10 23:45:01'),
(3168, 1, 'yqAHViKZehgl5N5QTaKxyUngdFcrhLKH', '2019-09-10 23:45:01', '2019-09-10 23:45:01'),
(3169, 1, 'IqgnV5sf2BQtLBg0IsquKu98fzAXgV92', '2019-09-10 23:45:01', '2019-09-10 23:45:01'),
(3170, 1, 'FEPlCAJ5au3UgkUXN0GaJfEHaR3AKj3b', '2019-09-10 23:45:02', '2019-09-10 23:45:02'),
(3171, 1, 'z0k8GktHm87tL5LFq1gjjUlO0wmhXxKo', '2019-09-10 23:45:07', '2019-09-10 23:45:07'),
(3172, 1, 'axpgZQGfeokdkSoYaUDudW8fV8SjIzol', '2019-09-10 23:45:07', '2019-09-10 23:45:07'),
(3173, 1, '9qKYH74HPcQ1vwjq0vHBOvUxvqtV2qxy', '2019-09-10 23:45:08', '2019-09-10 23:45:08'),
(3174, 1, '38G9sDeKcwRlitqlae8EnNR1MKDTidUl', '2019-09-10 23:45:08', '2019-09-10 23:45:08'),
(3175, 1, 'b93xfFbZxnec0EzRRE7gNbFW4ClciDRh', '2019-09-10 23:45:44', '2019-09-10 23:45:44'),
(3176, 1, 'ESrgGfqSqVg0hVsBqcgO4sIv6AmZLjuX', '2019-09-10 23:45:44', '2019-09-10 23:45:44'),
(3177, 1, 'qRUfNP91dyye7HGCNc9kat5tJ6iyXNte', '2019-09-10 23:45:45', '2019-09-10 23:45:45'),
(3178, 1, '3GeR3SdzowCr6HtjTVHGNmQY4Ebaue5S', '2019-09-10 23:45:45', '2019-09-10 23:45:45'),
(3179, 1, 'AjPb9k9pmXuneLktEn11R7ijYXdoqs1s', '2019-09-11 22:29:20', '2019-09-11 22:29:20'),
(3180, 1, 'Sbk1FWCkbbdTsg3x7gSJMZsco97nKkcs', '2019-09-11 22:29:56', '2019-09-11 22:29:56'),
(3181, 1, 't3zthxbGUhV5W2kafgMiaWJQHQ0pgMkH', '2019-09-11 22:30:11', '2019-09-11 22:30:11'),
(3182, 1, 'tPdShFeas3EnrUgXdGOBvXIKJaWGwSfG', '2019-09-11 22:30:31', '2019-09-11 22:30:31'),
(3183, 1, 'lYnlUVP2Nqlhf6uT5K659PRA2xmyn0O9', '2019-09-11 22:31:00', '2019-09-11 22:31:00'),
(3184, 1, 'wyrHjN2TqPzUVugIh4T4jbAdj5Jp9xBY', '2019-09-11 22:32:01', '2019-09-11 22:32:01'),
(3185, 1, '0f7lpDSUmk3RGtFy9umGelWSzC0fFT4i', '2019-09-11 22:35:30', '2019-09-11 22:35:30'),
(3186, 1, 'TZRxCDIMGAI1oNWo9qpcJRmPwkuvjcP3', '2019-09-11 22:36:05', '2019-09-11 22:36:05'),
(3187, 1, 'YnzefIUXMv29Vm8CfVjxBLpuNj2BDxvA', '2019-09-11 23:31:56', '2019-09-11 23:31:56'),
(3188, 1, 'FiGuvEWUYyDFfPdBEib2a5eaELrC2NcU', '2019-09-11 23:32:02', '2019-09-11 23:32:02'),
(3189, 1, 'HVinlVJAXUZTVyIz8ln9zMUSRFernR7l', '2019-09-11 23:32:02', '2019-09-11 23:32:02'),
(3190, 1, 'TZRBpQCZl6uCXbSzwG2DoDIOWKyUglK8', '2019-09-11 23:33:42', '2019-09-11 23:33:42'),
(3191, 1, 'zPyUXvZJ6Hi21jntBi5oM9TpSime0aLs', '2019-09-11 23:33:47', '2019-09-11 23:33:47'),
(3192, 1, 'M8Ctz2BHYEIkE1yTiOBDEPVrDGiWK7AH', '2019-09-11 23:34:32', '2019-09-11 23:34:32'),
(3193, 1, 'HFrhDB45hPqyJ7JdZeRxUBrNszxVhBa5', '2019-09-11 23:34:32', '2019-09-11 23:34:32'),
(3194, 1, 'JRPZ1zbfcMNmS8cboEEFncESYL6XJWvJ', '2019-09-12 13:52:59', '2019-09-12 13:52:59'),
(3195, 1, 'sxAxFwGodC8cHPZW7dcQ0HNKIy0bVhkL', '2019-09-12 14:40:54', '2019-09-12 14:40:54'),
(3196, 1, 'nHP6DQCdolwgllYB1VkpjPKZoyUhker8', '2019-09-12 15:58:38', '2019-09-12 15:58:38'),
(3197, 1, 'k2fBIwrFsCr6ALXsVOMN19BZhCNAgUuh', '2019-09-12 15:59:17', '2019-09-12 15:59:17'),
(3198, 1, 'nMHt7apAu3EjIj8tK68OftszjosB6Ork', '2019-09-12 15:59:45', '2019-09-12 15:59:45'),
(3199, 1, 'Fgk1956pEdt8Nhe8ZAtZWRqTfq5HJakt', '2019-09-12 15:59:45', '2019-09-12 15:59:45'),
(3200, 1, 'QjEG55nk7vd94CaBqbcDjJjUv5NBz1j6', '2019-09-12 16:01:35', '2019-09-12 16:01:35'),
(3201, 1, 'rBWeYLPnQlrVGefo7Tw7TDBCl6Wyw6qi', '2019-09-12 16:01:44', '2019-09-12 16:01:44'),
(3202, 1, 'lSfhofVMxy0dJa126RXwHlnrWd4xPmw1', '2019-09-12 16:01:50', '2019-09-12 16:01:50'),
(3203, 1, 'aWqEBdnmvuKdRBhM81nueXuImFlbyewN', '2019-09-12 16:01:50', '2019-09-12 16:01:50'),
(3204, 1, 'blQ8oph4VfIyu2ZGSaDeO7n7ixzaQm0Q', '2019-09-12 16:02:10', '2019-09-12 16:02:10'),
(3205, 1, 'DmWRd01pKOE0DGgZwoEyec757UNnBYqw', '2019-09-12 16:02:10', '2019-09-12 16:02:10'),
(3206, 1, '0xztiKUW3kNDqEsy3LxtNt9Tj6jrFsIY', '2019-09-12 16:08:47', '2019-09-12 16:08:47'),
(3207, 1, 'vdxazJrgAjzkSDuPvldI4SGObZ2qhjNL', '2019-09-12 16:08:47', '2019-09-12 16:08:47'),
(3208, 1, '16gytOZvApT2Ig9mYaaqF9SwZCWmtZXj', '2019-09-12 16:09:42', '2019-09-12 16:09:42'),
(3209, 1, 's1AtP2JenGixS1pCRTJ2wfiiioSiNhPN', '2019-09-12 16:09:50', '2019-09-12 16:09:50'),
(3210, 1, 'OgdTRhbYo7eSPRPdwhoxmOySMrmA3ceW', '2019-09-12 16:10:17', '2019-09-12 16:10:17'),
(3211, 1, '9AwFsupFGGGUGIZrPBh5h4LkqZCLKqdS', '2019-09-12 16:10:17', '2019-09-12 16:10:17'),
(3212, 1, '79Zh8gCvSS2fvhGR6oLU5IErVht8k3Xf', '2019-09-12 16:10:23', '2019-09-12 16:10:23'),
(3213, 1, 'tlN9VVOQWKYwmn0EqdrMSWvuls6YlppY', '2019-09-12 16:10:23', '2019-09-12 16:10:23'),
(3214, 1, 'T58BtJw7BFkgYkOOo699CRwlz1xUm2a5', '2019-09-12 16:10:50', '2019-09-12 16:10:50'),
(3215, 1, 'zQ6rWm2PNMOWsTDmI7ezF0rEW4XeK6IE', '2019-09-12 16:10:50', '2019-09-12 16:10:50'),
(3216, 1, 'udDZRiGYD3VLz8hfR8EMziT6aotdPldM', '2019-09-12 16:11:00', '2019-09-12 16:11:00'),
(3217, 1, 'NMVwgu3jzifFrT7Wgwufj7f2q3nMzew1', '2019-09-12 16:11:09', '2019-09-12 16:11:09'),
(3218, 1, 'H0mLhFiDyu2xq5NkA5T2zry0niTBIhZ1', '2019-09-12 16:11:26', '2019-09-12 16:11:26'),
(3219, 1, 'BbRaC8wtqZrEl3VM6VCnRS4MmLVYvS02', '2019-09-12 16:11:26', '2019-09-12 16:11:26'),
(3220, 1, 'THTxJdKaRvB5gULAoaExk3hVHZ147Kdr', '2019-09-12 16:15:17', '2019-09-12 16:15:17'),
(3221, 1, 'DCNokaxvi7m5YDsGJKaRCokhRGDXU1nN', '2019-09-12 16:15:21', '2019-09-12 16:15:21'),
(3222, 1, 'jOFGO1rNTztnAxuy7aLqhSe1UgZ8b1dA', '2019-09-12 16:15:21', '2019-09-12 16:15:21'),
(3223, 1, 'z1DMgag4XxUOc8Jc5izCwtDXc0IZ6jSB', '2019-09-12 16:16:15', '2019-09-12 16:16:15'),
(3224, 1, '6Y5F9elWjNBC6ZFpuyYakgAclkI399if', '2019-09-12 16:16:16', '2019-09-12 16:16:16'),
(3225, 1, 'bRAfW4Qnzxd1SLkgGJmdCi2hpuldXGmm', '2019-09-12 16:18:13', '2019-09-12 16:18:13'),
(3226, 1, 'pjhDFxAU6chUJcWB8nyP962LOqJxjGga', '2019-09-12 16:18:31', '2019-09-12 16:18:31'),
(3227, 1, 'tIU2OMl1bZ2QSqEbVKld9PwrLvqCxDVC', '2019-09-12 16:18:31', '2019-09-12 16:18:31'),
(3228, 1, 'gPzTW3Zqsgp2PNerL5hCIgejugGiXHsB', '2019-09-12 16:21:33', '2019-09-12 16:21:33'),
(3229, 1, 'qOaKXWhroxsugWRpRgYIMWWyIRScazOA', '2019-09-12 16:21:38', '2019-09-12 16:21:38'),
(3230, 1, '4Gx4wqYKPJU0gNx2rrMBWy0PrUIGrvCi', '2019-09-12 16:21:38', '2019-09-12 16:21:38'),
(3231, 1, 'DyqhuPgortP1XIQE7eqgceHMNw50BGGW', '2019-09-12 16:28:34', '2019-09-12 16:28:34'),
(3232, 1, 'HfvlAQWQUtZ8mYthBJzaBCBRE5EkNl07', '2019-09-12 16:28:34', '2019-09-12 16:28:34'),
(3233, 1, 'UHSFHm4uAOmPqG8Amt2p0l7R87RibNWs', '2019-09-12 16:30:13', '2019-09-12 16:30:13'),
(3234, 1, 'imJqT152hPKIzsixxIYEReJgWV8ZFUh0', '2019-09-12 16:30:28', '2019-09-12 16:30:28'),
(3235, 1, 'bG8cm5a7LmkjGRs2AvOWiu276Wgi2gUS', '2019-09-12 16:30:29', '2019-09-12 16:30:29'),
(3236, 1, 'kAVCTxrz6i5Qkh8AIac1e0WgHP2Nx5bm', '2019-09-12 16:30:29', '2019-09-12 16:30:29'),
(3237, 1, '1rM72ZeB6i7HAWTzHep1dCWoauIeu8qX', '2019-09-12 16:30:33', '2019-09-12 16:30:33'),
(3238, 1, 'z772YNBJOoYHVMQWNgb1Sgzw1MrkdDcv', '2019-09-12 16:30:33', '2019-09-12 16:30:33'),
(3239, 1, 'NOAGs41Jj8FuzTgoY2eVX9Jr02FPR1z6', '2019-09-12 16:30:47', '2019-09-12 16:30:47'),
(3240, 1, 'T0X8FLf9nTwGIaH8Yc0XQScCDLJiaBTc', '2019-09-12 16:30:50', '2019-09-12 16:30:50'),
(3241, 1, 'yurMYs6nbspUYsP9QACGWjPohfB642U5', '2019-09-12 16:30:50', '2019-09-12 16:30:50'),
(3242, 1, 'wRI8jfWPj4bNFLzXzwDxccJ4dJrVlOiV', '2019-09-12 16:32:50', '2019-09-12 16:32:50'),
(3243, 1, '8qLQZIn326lYjE4UlLa29pXABVogd2wp', '2019-09-12 16:32:50', '2019-09-12 16:32:50'),
(3244, 1, 'H6ZAliBHbTcQl6mD2XZ4JwRfBuSVPhw7', '2019-09-12 16:33:14', '2019-09-12 16:33:14'),
(3245, 1, '6djoMq2TvzEs6fQkNPlFuH1DJk9vLDAi', '2019-09-12 16:33:25', '2019-09-12 16:33:25'),
(3246, 1, 'SmZ10zhCTRrA6pYO1jtufX9PHAIUq5vQ', '2019-09-12 16:34:30', '2019-09-12 16:34:30'),
(3247, 1, 'HFrLlPzY0RBP0eZqqBzQCxYCAPFscxOK', '2019-09-12 16:34:44', '2019-09-12 16:34:44'),
(3248, 1, '1QgRLCqMM4jgzOm4xKc7CZotk9XTC3g7', '2019-09-12 16:34:44', '2019-09-12 16:34:44'),
(3249, 1, 'RosCb6SQaju3cidqxdoxG10ukKDTCOwh', '2019-09-12 16:34:45', '2019-09-12 16:34:45'),
(3250, 1, 'VrvhH6G38xlraYR5bHsEE7WluiWWUWba', '2019-09-12 16:34:46', '2019-09-12 16:34:46'),
(3251, 1, 'r3LoCvLlX6wwQ2Xb7MAg4eR7oB0K5bMg', '2019-09-12 16:34:56', '2019-09-12 16:34:56'),
(3252, 1, 'zTUL5Dmp9gASlwvr3nt4q0KkIZnLaQp4', '2019-09-12 16:35:09', '2019-09-12 16:35:09'),
(3253, 1, 'GpmNUvPqnwYbiqv2F3fYRCfARcjLVr8U', '2019-09-12 16:35:10', '2019-09-12 16:35:10'),
(3254, 1, 'hS9vxs7Hi5fcCIXbvts1a4Evw6jJ2rfJ', '2019-09-12 16:35:21', '2019-09-12 16:35:21'),
(3255, 1, 'VaymikS44TUaapAcUu5ezDRulUtppKRo', '2019-09-12 16:35:21', '2019-09-12 16:35:21'),
(3256, 1, 'CVgsrWnmi9daq8bWLYEkxLEpSAyIfAYW', '2019-09-12 16:36:27', '2019-09-12 16:36:27'),
(3257, 1, 'lbhs55N8ghd542zyjsKPVBLW0kcZ6Ou1', '2019-09-12 16:36:27', '2019-09-12 16:36:27'),
(3258, 1, 'M9NWS7nhVB1uQdQNjpHShLaaJJRRX4v6', '2019-09-12 16:36:34', '2019-09-12 16:36:34'),
(3259, 1, 'fyzqHP73evD9zhQxchu4cIdLAIkKlSNV', '2019-09-12 16:36:34', '2019-09-12 16:36:34'),
(3260, 1, 'rqWYiruoIdQhrSzXwD2KGE7SbNBXzfIq', '2019-09-12 16:37:14', '2019-09-12 16:37:14'),
(3261, 1, 'phQMy8e7L9R4oW6v0oCR32w1z562cVbO', '2019-09-12 16:37:18', '2019-09-12 16:37:18'),
(3262, 1, 'F6Znqh5lA4tW9duGD0jfU7RlYBoSYX9T', '2019-09-12 16:37:18', '2019-09-12 16:37:18'),
(3263, 1, 'viqRQljMcpKWKOfUS770eIqX643vwRvn', '2019-09-12 16:37:23', '2019-09-12 16:37:23'),
(3264, 1, 'ugfsbqjKxKyWf2Mx117raLkLF2M63fM6', '2019-09-12 16:37:23', '2019-09-12 16:37:23'),
(3265, 1, '63V8GI4Zc6Ox0tydnw2VjZLx8BBF75n5', '2019-09-12 16:37:58', '2019-09-12 16:37:58'),
(3266, 1, 'yDAuviuyQVBfKxxOI8bmmlVSb4qO0dwj', '2019-09-12 16:37:58', '2019-09-12 16:37:58'),
(3267, 1, 'lPt9DpAgNUWhWXrQxwisrsc8iAuPJgd5', '2019-09-12 16:42:45', '2019-09-12 16:42:45'),
(3268, 1, 'szJwUDgRAV8ef7DMhgwx8XY0gzBFxSga', '2019-09-12 16:42:45', '2019-09-12 16:42:45'),
(3269, 1, 'jaK5YqwcyXgSPXLH6b4Hzamf4TXMx8Ql', '2019-09-12 16:43:18', '2019-09-12 16:43:18'),
(3270, 1, 'Hix1pkt2L5vNSBZVsfwJT4XPIef5pLp3', '2019-09-12 16:43:18', '2019-09-12 16:43:18'),
(3271, 1, 'AzhCRdbljhcICNnGloHb5L7ZTQNfhUGD', '2019-09-12 22:53:26', '2019-09-12 22:53:26'),
(3272, 1, 'LWp9WksUzgJbaZVKWoSitzGQfSwwwWxH', '2019-09-12 22:54:20', '2019-09-12 22:54:20'),
(3273, 1, 'HsiZMzmiSEC71kvrOZyNnj1aDUm3y2FF', '2019-09-12 22:54:20', '2019-09-12 22:54:20'),
(3274, 1, 'gHgvBeUbBeuW2MNqtCRsYqqwaeb3qIOk', '2019-09-12 22:54:20', '2019-09-12 22:54:20'),
(3275, 1, 'JnrO2JtRvHlcT6lk6xHUXd88OWwKlhl0', '2019-09-12 22:54:20', '2019-09-12 22:54:20'),
(3276, 1, 'xSbEdavvHrheZbr9ChcBZbKbZBpKoZjM', '2019-09-12 22:54:23', '2019-09-12 22:54:23'),
(3277, 1, 'jHptaKDiHGKAvfubK987QPajwwdZHnnj', '2019-09-12 22:54:23', '2019-09-12 22:54:23'),
(3278, 1, 'AkXgivfA8Q8isoe3Sxnty9cqoTB3AWlu', '2019-09-12 22:54:23', '2019-09-12 22:54:23'),
(3279, 1, 'lSL82jY9p0YelqNaBCoOM8704xn6ofxr', '2019-09-12 22:54:23', '2019-09-12 22:54:23'),
(3280, 1, 'XF7d5yCWHfICNcUbyhK3UQ88vJgOVcta', '2019-09-12 22:54:23', '2019-09-12 22:54:23'),
(3281, 1, 'mJRdS48RzdPfwjJiDPevQqReoqeYgpqh', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3282, 1, '1HP1YXIULYT7POk0sPxbhKven55tiXI7', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3283, 1, 'ycG4slQmUnG6iiSm9jakuD0YwkV6YUS7', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3284, 1, '1ee2tbEi8qpKj6tghR19vMJPjkttuPkl', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3285, 1, 'fQ6O70SGJTSHtli1oWtXuMKxVqPlJ5np', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3286, 1, 'yjq3kBEwBlg7vZPJkHOCytmm6cCVis46', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3287, 1, 'LlaldkXRALCI7PtYWIMAt1OKzHcOXAd6', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3288, 1, '4TJaNhQZ2YOieECfMadlCqFplRZgyihP', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3289, 1, 'UbLcoXR7PPuDgkddnshknImCpY2ZOJkN', '2019-09-12 22:54:24', '2019-09-12 22:54:24'),
(3290, 1, '7US0rEYQdykTG3N4Zgh8V75FXKgjdaDk', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3291, 1, 'Fodcy0K1TNDt2gENqwBgLBzuUOmIU8gk', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3292, 1, 'vk50pdtETW55KLK8kdh8odw45H7Y7bvl', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3293, 1, 'uElhVXocNz6MC5ipf73nPiRSm2JDgRqt', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3294, 1, 'A4mNOhvCBZ4Urmv6AZxlU5NQVDU9b7nA', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3295, 1, 'NXWturCIzCS5vV5VbCeVxtRVaXmii6PE', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3296, 1, 'oKio9xfPvu5ULvd6MtSHTEpyIG5cJ8QI', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3297, 1, 'uptBeRYhL74fv0IKN7e9ma3HpFn4Dczv', '2019-09-12 22:54:25', '2019-09-12 22:54:25'),
(3298, 1, 'zaDjcI9IoDH7upgeRkIQzT2L0LtJhwGf', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3299, 1, '7PVJowb1Cyzr71tFXcWEsM6Bkl67SHCg', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3300, 1, 'N9qVTC18u6ztCBamc14neY0NPfQiwAZX', '2019-09-12 22:54:26', '2019-09-12 22:54:26');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(3301, 1, '9L2VkylEja5DYH7oMAAEg63RWcuUdz3r', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3302, 1, 'zyN6cw7D3XXaJW7cIDVBVp41urL9nu4G', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3303, 1, '3XWlTwP66TaKDthLSdQfr5MwukPStToJ', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3304, 1, 'GHpPFDeJqhPhQjpwLJNTbMxEKwqSSfi3', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3305, 1, 'NguTRkAM7duWYfXTd3aZQixIZ7erMT4f', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3306, 1, '0VGu9XvP5KP22fJw3rEFiRHIpnjGww0z', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3307, 1, 'b2ZgxImzmXdUAXzveqlV3ZuOGL8RjU9L', '2019-09-12 22:54:26', '2019-09-12 22:54:26'),
(3308, 1, 'dHArZ1mJZy0vcJjp1qdxdUwe3lUMIV97', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3309, 1, 'cOSi8o7tpCNlNxog0hNmetxjtzBptUeC', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3310, 1, 'Cweg9p6kYT2TUzpsH4RoFE90eDp8hp0J', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3311, 1, 'aBtgrU5z8FEQJuVtkp9MXb7cMMkuOsS1', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3312, 1, 'z7I6tQgL1mvGHyCpeJalwWTS8GWzcd4g', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3313, 1, 'VVskdRZ6suuOEd8slRQ1wQsf2A58gg9T', '2019-09-12 22:54:27', '2019-09-12 22:54:27'),
(3314, 1, 'pZ5cVXguLl5Gl3V1CFMBPJzdTHNnT65q', '2019-09-12 22:54:28', '2019-09-12 22:54:28'),
(3315, 1, 'FjxHpEfq6HGX0PHHEJMcO308XDGvHyv3', '2019-09-12 22:54:28', '2019-09-12 22:54:28'),
(3316, 1, 'T6oqxcnJN6sE9nKBnLNZzM64iP0oAuRh', '2019-09-12 22:54:28', '2019-09-12 22:54:28'),
(3317, 1, '21ED29QOTlRobXES7E5kguZUVMYKYy4g', '2019-09-12 22:54:29', '2019-09-12 22:54:29'),
(3318, 1, 'f1A9kgWJOimt7duYjwYC2y5CdbMeZ8jh', '2019-09-12 22:54:29', '2019-09-12 22:54:29'),
(3319, 1, 'Ax6X2dK8vXB2UMk87Tp1AmZrNuVcMV72', '2019-09-12 22:54:30', '2019-09-12 22:54:30'),
(3320, 1, 'nmGgRQGOaQ9o8SNHewsfwGf0fbZNp0nE', '2019-09-12 22:54:30', '2019-09-12 22:54:30'),
(3321, 1, 'foBbO8CYQ6XXHlbYA31Q0xN4wgrgTaOr', '2019-09-12 22:54:31', '2019-09-12 22:54:31'),
(3322, 1, 'a6eejojlgJP1GK5U7BHKMsdAa2gFtudP', '2019-09-12 22:54:31', '2019-09-12 22:54:31'),
(3323, 1, '1TbG6ECSvRPpTBZoSkOu9VKKiY36flpx', '2019-09-12 22:54:31', '2019-09-12 22:54:31'),
(3324, 1, 'IZzYzcZ9JkgXZj732y8AbivQgPdnTWKe', '2019-09-12 22:54:32', '2019-09-12 22:54:32'),
(3325, 1, 'VMlN2aHwUuvSK09xBHJHL8pQKUQxNbRY', '2019-09-12 22:54:32', '2019-09-12 22:54:32'),
(3326, 1, 'p6f7KNImH1U7IwuGzvox2hpDzuMrO3ip', '2019-09-12 22:54:32', '2019-09-12 22:54:32'),
(3327, 1, '6fS8kUFxdfLxPMHltUBRRQeHAEweBE86', '2019-09-12 22:54:33', '2019-09-12 22:54:33'),
(3328, 1, 'Izxdb3kYAT1SeGTKpw9mHmo4AvAnzbw7', '2019-09-12 22:54:33', '2019-09-12 22:54:33'),
(3329, 1, '8qo126GBk2QSJwnVOxvnDV1NJ1Y7i7mj', '2019-09-12 22:54:33', '2019-09-12 22:54:33'),
(3330, 1, 'dGYzKBZlnNyoQ0bsoO6xGCL9pmVJU8Jl', '2019-09-12 22:54:33', '2019-09-12 22:54:33'),
(3331, 1, 'qDMvbI8ccCK0PEWNMtghiT6v1zIcEs94', '2019-09-12 22:54:45', '2019-09-12 22:54:45'),
(3332, 1, 'xhIFSr4vTDn7BDP87fQ9bNbapiwCDSYB', '2019-09-12 22:54:45', '2019-09-12 22:54:45'),
(3333, 1, 'FO9qyuzmwNuHogdTRQe1LYkiZpqta2iH', '2019-09-12 22:54:45', '2019-09-12 22:54:45'),
(3334, 1, 'KNa08YmJiQXJQpkd4ckbDh9XXG6aQdnx', '2019-09-12 22:54:45', '2019-09-12 22:54:45'),
(3335, 1, 'ssmDNonxD2dagGAjWl2XfoAYfJfWDMk0', '2019-09-12 22:54:45', '2019-09-12 22:54:45'),
(3336, 1, 'ffaH0Gbfh2xqLkuOafXoJNdw7jZrdTGT', '2019-09-12 22:54:46', '2019-09-12 22:54:46'),
(3337, 1, 'qJGPN3Vg0j9QYwRKyCCxewKFh9CN2XVp', '2019-09-12 22:54:46', '2019-09-12 22:54:46'),
(3338, 1, 'Knuzq0gQXYqDn259yGNJzJYuJb5I69uF', '2019-09-12 22:54:46', '2019-09-12 22:54:46'),
(3339, 1, 'a3O6Y7Kn4bW941KANaaBZX6kp2IGsznb', '2019-09-12 22:54:58', '2019-09-12 22:54:58'),
(3340, 1, 'UvktRYpNoVAqXbWZorP9aO41McOXMd0X', '2019-09-12 22:54:58', '2019-09-12 22:54:58'),
(3341, 1, 'Idgxc4emAHOEQY2dtJaboudgGxTQBgia', '2019-09-12 22:54:58', '2019-09-12 22:54:58'),
(3342, 1, 'yNMATlYgnvBDXyUDCSkPGxH31sxJwWMo', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3343, 1, 'JqSF0SiAzdqJYQ7hkqODYC3QTmLNvmo9', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3344, 1, '067zs4rRGVbJiZufeo4CK8YhT4JlZeZX', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3345, 1, 'ydznQZr6OLxe443NFgRC1KNg92kZtWO0', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3346, 1, 'JLZM03e5uQv2KoBc4UWElcT63JJYRkmS', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3347, 1, 'YOzx0qfNjuk0y60z3kL7C8PCD7bNvqAV', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3348, 1, 'cOafzBUBaIibabehVR4bsCm9yh3OEuzg', '2019-09-12 22:54:59', '2019-09-12 22:54:59'),
(3349, 1, '5Kiiz4ElqF6F6skK30pCx9fvsoWA7jGZ', '2019-09-12 22:55:00', '2019-09-12 22:55:00'),
(3350, 1, 'OD5bssGoaVljZoaHbZHXYCA54djeDk2w', '2019-09-12 22:55:00', '2019-09-12 22:55:00'),
(3351, 1, 'Vq5DFwfR623g7WiLqO31svjI8205tpMR', '2019-09-12 22:55:00', '2019-09-12 22:55:00'),
(3352, 1, 'QJrmZUXfHGTCckUDTv53gTJ9YSGnH6CB', '2019-09-12 22:55:01', '2019-09-12 22:55:01'),
(3353, 1, '11XjnfXpKHHlUvJxGzRRpMOInDJ4hkxU', '2019-09-12 22:55:01', '2019-09-12 22:55:01'),
(3354, 1, 'H4vE42Pkh0UcrRIhV1MJP1mtQUtqs2Sq', '2019-09-12 22:55:02', '2019-09-12 22:55:02'),
(3355, 1, 'iur5uC5hqjZkKjmquIGfSi6JFLTiL2zr', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3356, 1, 'pu1mAkYhJCF2v4CcaaTWZAuWIaGPHdYB', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3357, 1, 'sW0A4Cg1Y1xfUIsg2JWXJCFMmFianUWF', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3358, 1, 'FBvjhDx0VyeLCWE6aDt1gjmZ64UaoNT8', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3359, 1, 'OZIngl49CbNUr4Moe7QvWefRFkrFytMz', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3360, 1, 'DS3mORvdinLoU7or9scn8tRDtJC5NQfi', '2019-09-12 22:55:49', '2019-09-12 22:55:49'),
(3361, 1, 'vhoavPc56UBgVh3kFxwrMPCqDzlCXJSU', '2019-09-12 22:55:50', '2019-09-12 22:55:50'),
(3362, 1, 'qYzzOV3FjZ15Wf3DkWFcgEElOyt5c1Ft', '2019-09-12 22:55:50', '2019-09-12 22:55:50'),
(3363, 1, 'TqFn5msZxrHong8ygrNsYPazyh4taBav', '2019-09-12 22:57:12', '2019-09-12 22:57:12'),
(3364, 1, 'l7Bsjiybeywnyq3S6VxkWkV7vAzWn5qn', '2019-09-12 22:57:27', '2019-09-12 22:57:27'),
(3365, 1, '0iL4UgJi6bKhIU70zbsCx3qGMQ5AUI7i', '2019-09-12 22:57:28', '2019-09-12 22:57:28'),
(3366, 1, '8IgAhGaPm1LUSSujtDVihwH0vhcw0yda', '2019-09-12 22:57:28', '2019-09-12 22:57:28'),
(3367, 1, 'HkmDaUXurDCo3e5J0Z1BJuyEpkSVt3vQ', '2019-09-12 22:57:28', '2019-09-12 22:57:28'),
(3368, 1, 'jj3kJx4fNWqMPWONDfUnbfzN77Anhowl', '2019-09-12 22:57:28', '2019-09-12 22:57:28'),
(3369, 1, 'Pwv8OzRl16cR7uFV3hWYpfmUNJSu4Ikg', '2019-09-12 22:57:29', '2019-09-12 22:57:29'),
(3370, 1, 'hnIRKWtBvtprkFVSKoiCqBFFoz7AlecF', '2019-09-12 22:57:29', '2019-09-12 22:57:29'),
(3371, 1, 'wseMp7keKnHXZ6XCSRlpORYBQX7kqcj9', '2019-09-12 22:57:29', '2019-09-12 22:57:29'),
(3372, 1, 'CuK62hYhtuFyuy1R1w7vJfa9ELzXfQKO', '2019-09-12 22:59:00', '2019-09-12 22:59:00'),
(3373, 1, 'gyPSAOdW5KNrXgj3oUEj09JJIFFwprH4', '2019-09-12 22:59:08', '2019-09-12 22:59:08'),
(3374, 1, 'gXoFnZO3m5e5V1MuL6BW71JXY8U8gOUu', '2019-09-12 23:00:07', '2019-09-12 23:00:07'),
(3375, 1, 'aNg5HXhs6LNvyPZBCzDtLgX9aIWk0YGh', '2019-09-12 23:00:08', '2019-09-12 23:00:08'),
(3376, 1, 'ceEQrqQeDpkZJ3ws5bPoWZtHyQ3SQOs1', '2019-09-12 23:00:08', '2019-09-12 23:00:08'),
(3377, 1, 'Sgvd9Yh4vcY4fTErVwPXM7z8OL8l8Ued', '2019-09-12 23:00:08', '2019-09-12 23:00:08'),
(3378, 1, 'BmCoEgru4AZXhX4pvcOxmlgpPMlroxDv', '2019-09-12 23:00:11', '2019-09-12 23:00:11'),
(3379, 1, 'z9DAZCY4sTMZsWKhQZuAaoqzbTaMBvIy', '2019-09-12 23:00:11', '2019-09-12 23:00:11'),
(3380, 1, 'O1ZGntTAkKbNKX1GsnDKKQSlMbl5tpFP', '2019-09-12 23:00:11', '2019-09-12 23:00:11'),
(3381, 1, 'O6QDqx9h2bD05zMGA6aaLuX4zpkWpoPN', '2019-09-12 23:00:11', '2019-09-12 23:00:11'),
(3382, 1, 'ou9aDQGryoG9FZb2uLaTSaAJZcleelxq', '2019-09-12 23:00:14', '2019-09-12 23:00:14'),
(3383, 1, 'oiPA5Agp9gduCVofktCIranaCIER8kAG', '2019-09-12 23:00:15', '2019-09-12 23:00:15'),
(3384, 1, 'yZotIBTA2dhjlwNHntnAIi4f5bnTwPD6', '2019-09-12 23:00:15', '2019-09-12 23:00:15'),
(3385, 1, 'j1sTU2pOkhY8wefzK5wSLkaBqEHQPsds', '2019-09-12 23:00:15', '2019-09-12 23:00:15'),
(3386, 1, 'dAKw94J97Yoeoxvu7pdkmXxar7gcm7S3', '2019-09-12 23:00:18', '2019-09-12 23:00:18'),
(3387, 1, 'Tk5yJBwtfQQTAvKrDk1E4ro0psWLZ3fk', '2019-09-12 23:00:18', '2019-09-12 23:00:18'),
(3388, 1, 'D7HK8EtxomRoOEi8p9rutoSzoYrdIUAd', '2019-09-12 23:00:18', '2019-09-12 23:00:18'),
(3389, 1, 'fZMDBNVAgPKBjErDDNazt5LxQFuKG9ku', '2019-09-12 23:00:18', '2019-09-12 23:00:18'),
(3390, 1, 'u2vBJ5QM4KgFKILtKaVX38k6fI3L5EGU', '2019-09-12 23:00:22', '2019-09-12 23:00:22'),
(3391, 1, 'ddt9deNRz0KAqjApt1x7Jc8H5uIeHl8k', '2019-09-12 23:00:22', '2019-09-12 23:00:22'),
(3392, 1, 'KDdN18qBU4yD8AvCMcTQTim1UyZVGaS2', '2019-09-12 23:00:22', '2019-09-12 23:00:22'),
(3393, 1, 'HX1OMdjAmU2l8cJL4T55aLosJqODhFyC', '2019-09-12 23:00:22', '2019-09-12 23:00:22'),
(3394, 1, 't9fkUpiWZLsFzw5TyrsGbLIwXnxKKZlS', '2019-09-12 23:00:23', '2019-09-12 23:00:23'),
(3395, 1, 'yAclgNEp93oLLX2R9RIagHTUpWiS2gxM', '2019-09-12 23:00:23', '2019-09-12 23:00:23'),
(3396, 1, 'pgMutWFeHgvzmiPtlmRE382i1WzAlKAr', '2019-09-12 23:00:24', '2019-09-12 23:00:24'),
(3397, 1, '1NoJq6wiZwGYpqthr2BocX4FUe9IyXGc', '2019-09-12 23:00:25', '2019-09-12 23:00:25'),
(3398, 1, 'bp4y82sDLw1V21E4A0Dr30fJ76FZgFRb', '2019-09-12 23:00:25', '2019-09-12 23:00:25'),
(3399, 1, 'QoV5e47K0P0N0biT4yPx6BuOo2SgFelv', '2019-09-12 23:00:25', '2019-09-12 23:00:25'),
(3400, 1, 'nZz8cw8KnOtjBrfD75ss9uSKO65z4ofD', '2019-09-12 23:00:26', '2019-09-12 23:00:26'),
(3401, 1, '4iAdgQNuSW8U4uOit30RQx7Sy77BtqF2', '2019-09-12 23:00:26', '2019-09-12 23:00:26'),
(3402, 1, '1p1jY3qkiWWriqLnsFWtznxVbt4IFJvw', '2019-09-12 23:00:26', '2019-09-12 23:00:26'),
(3403, 1, 'RJBWF0zQUJXO5DkCHlCM1yz4hbEaMytf', '2019-09-12 23:00:27', '2019-09-12 23:00:27'),
(3404, 1, 'awNeqOBJlMvTaFgjkru8Z6c145l8uavN', '2019-09-12 23:00:27', '2019-09-12 23:00:27'),
(3405, 1, 'TqK72OUI2cBW6loMl0wrcb4jJQJTq9yp', '2019-09-12 23:00:27', '2019-09-12 23:00:27'),
(3406, 1, 'HEUSvzdeBErNN4C8NbiuGglv4OEZAsfN', '2019-09-12 23:00:28', '2019-09-12 23:00:28'),
(3407, 1, 'a5attxfdIszZtSLJP2rHpZPQcKAXKou0', '2019-09-12 23:00:28', '2019-09-12 23:00:28'),
(3408, 1, 'vev8uZmf9h6A8Xn69SbnJksJXX2a4KEX', '2019-09-12 23:00:28', '2019-09-12 23:00:28'),
(3409, 1, 'xv5uwyZ7dCBvn6jgGpgzKLJYxzI4aaPN', '2019-09-12 23:00:29', '2019-09-12 23:00:29'),
(3410, 1, 'yYOaZNhxfbeijl02tbVCpkxFZzu8VfHq', '2019-09-12 23:00:29', '2019-09-12 23:00:29'),
(3411, 1, '8azbY8LS8ekeoP8HkeQ3skrAvK9pplq7', '2019-09-12 23:00:29', '2019-09-12 23:00:29'),
(3412, 1, '0ZLGQ9sHbOSWt5S5bzRZe3f98OHYNqZa', '2019-09-12 23:00:30', '2019-09-12 23:00:30'),
(3413, 1, 'tDtez6lADdwSTMcsUaexsSGjNbOD6Hp2', '2019-09-12 23:00:30', '2019-09-12 23:00:30'),
(3414, 1, 'AJ2USIXJYyHE3CDlKzPSdfqL0Ej9FHY5', '2019-09-12 23:00:46', '2019-09-12 23:00:46'),
(3415, 1, 'O1ilVFmyLtPDsf816NLtVo50I8wK0Vz9', '2019-09-12 23:00:46', '2019-09-12 23:00:46'),
(3416, 1, 'ombiB0lS80wxqiSOwZW9xgjMiSTimP9a', '2019-09-12 23:00:47', '2019-09-12 23:00:47'),
(3417, 1, 'nwzbEuNSyzhhDQGg8F7Ji9YBVr1vZAoM', '2019-09-12 23:00:47', '2019-09-12 23:00:47'),
(3418, 1, 'h56nuwBedOeEIqI76GYQ1kVrcwHl21DI', '2019-09-12 23:00:47', '2019-09-12 23:00:47'),
(3419, 1, 'mFLJnShWjZ05iHJLqgLQUMJHQzK6GYaq', '2019-09-12 23:00:47', '2019-09-12 23:00:47'),
(3420, 1, 'KJMFiWTRZyxErkoce5TH1eQrZl9rTZ1e', '2019-09-12 23:00:48', '2019-09-12 23:00:48'),
(3421, 1, 'XuVSAagk92FD806qApOoad1j8y7E1igG', '2019-09-12 23:00:48', '2019-09-12 23:00:48'),
(3422, 1, 'HtcG9wFHF3QdQg81SAv4YRrXrqepeNuA', '2019-09-13 13:16:20', '2019-09-13 13:16:20'),
(3423, 1, 'oPZOKq68dc4rSkWcxM4Lj2N9PFz4KS5F', '2019-09-13 14:21:43', '2019-09-13 14:21:43'),
(3424, 1, 'eX9305flZCDlXmC0uA614qIPFzTY8O7L', '2019-09-13 14:21:43', '2019-09-13 14:21:43'),
(3425, 1, 'lURl1EuQJrVhX6m7NQanqgVAbIKdd8wK', '2019-09-13 14:21:43', '2019-09-13 14:21:43'),
(3426, 1, '65K2BcXOYVdVtqAsAx2iZkaOIjvIhJGY', '2019-09-13 14:21:43', '2019-09-13 14:21:43'),
(3427, 1, 'nS6hnyqVzjwPtF3o07MpulZYklUiVpLt', '2019-09-13 14:21:43', '2019-09-13 14:21:43'),
(3428, 1, 'Oi2kJ1EdviDS70yMr5HNEwMHRnPG3WO2', '2019-09-13 14:21:44', '2019-09-13 14:21:44'),
(3429, 1, 'TpYjTVBKKkbDBhXD6NxVDwnoIjezaOM2', '2019-09-13 14:21:44', '2019-09-13 14:21:44'),
(3430, 1, 'B7QmlXsO4yYck7kk7tZt7odlADRbYkhH', '2019-09-13 14:21:45', '2019-09-13 14:21:45'),
(3431, 1, 'txmnHhLpfceOu1QvDf6iqZ2oOi0M5cd3', '2019-09-13 14:21:58', '2019-09-13 14:21:58'),
(3432, 1, 'HvjKPI7y6A6GwLIJUWjMYtIh4E2EajJ7', '2019-09-13 14:21:58', '2019-09-13 14:21:58'),
(3433, 1, 'Ft0FIGj0VPstkLmveFgS0llUk9gnbWJU', '2019-09-13 14:21:58', '2019-09-13 14:21:58'),
(3434, 1, 'UJgOXaqWwIeKfyzKNI2FR8olHesLQCqt', '2019-09-13 14:21:58', '2019-09-13 14:21:58'),
(3435, 1, 'G01tp2kiNENpH2agPLf2XU6zbI4zODeT', '2019-09-13 14:21:58', '2019-09-13 14:21:58'),
(3436, 1, 'cVJ4MTIDfKevUi88qMiZFsNA4wigQD7Z', '2019-09-13 14:21:59', '2019-09-13 14:21:59'),
(3437, 1, '5TOQI2KaqOHOf8rrFVSN2cKq6peoCUyz', '2019-09-13 14:21:59', '2019-09-13 14:21:59'),
(3438, 1, 'TOLxkMW7qiwe95rkRHGRMSqMoIlhJyXe', '2019-09-13 14:21:59', '2019-09-13 14:21:59'),
(3439, 1, 'HecEKa4Up1ajvYzWpixXeHd59nHfP2l7', '2019-09-13 18:31:17', '2019-09-13 18:31:17'),
(3440, 1, 'vNRP5QVPtd7lbNEkArMZlmCiyORKoiPI', '2019-09-13 18:31:41', '2019-09-13 18:31:41'),
(3441, 1, 'WhZesEWSA3322EWTfYEc2BFZNRtSKRRX', '2019-09-13 18:31:41', '2019-09-13 18:31:41'),
(3442, 1, 'eotqjFbxbk1DBZeuSlOzQnWLEsZeiIHH', '2019-09-13 18:31:41', '2019-09-13 18:31:41'),
(3443, 1, 'vpNAPBIbUla16IvmYPDHcdqwUsGrBmV8', '2019-09-13 18:31:41', '2019-09-13 18:31:41'),
(3444, 1, '9lnajHyCPdD6uoJAan4xtCcFF0r0Mz1c', '2019-09-13 18:31:41', '2019-09-13 18:31:41'),
(3445, 1, 'phzMvCVYpuroXLY0T0HmO9BsyCzrg0NZ', '2019-09-13 18:31:42', '2019-09-13 18:31:42'),
(3446, 1, 'xkOtYbqn2HPy3L5jCgSD43ZNOZE6IZEQ', '2019-09-13 18:31:43', '2019-09-13 18:31:43'),
(3447, 1, 'Gt6olxBNdEfVnQMX5XvYBQHxVLomfn4Z', '2019-09-13 18:31:43', '2019-09-13 18:31:43'),
(3448, 1, 'qzHmfepHCnDxklftwxhjLIEzzeyXpl6Z', '2019-09-13 18:42:22', '2019-09-13 18:42:22'),
(3449, 1, 'CLxlWWdVvyQUO5pYjSv9ZHsbeBQtA29M', '2019-09-13 18:42:22', '2019-09-13 18:42:22'),
(3450, 1, 'EkrLoyNXzPUVaVxxDuWq7FU47jgOS3fZ', '2019-09-13 18:42:22', '2019-09-13 18:42:22'),
(3451, 1, 'FjWeTYDLFGLcQMeWuhCYhjxBH5mqAIBD', '2019-09-13 18:42:22', '2019-09-13 18:42:22'),
(3452, 1, 'V6fEybO2E1KBxB0N0vlY9ZudLA3SfoKE', '2019-09-13 18:43:42', '2019-09-13 18:43:42'),
(3453, 1, 'DH5YGD937ksFJUdgX0o0IPUNWTGbCpdA', '2019-09-13 19:02:26', '2019-09-13 19:02:26'),
(3454, 1, 'G6vbAdC6CMv5OFDCh5WZgB09MEMn66wi', '2019-09-13 19:02:27', '2019-09-13 19:02:27'),
(3455, 1, '8NCEo9F1rji6ZX1YV6B2awhKGkKa0CF6', '2019-09-13 19:02:42', '2019-09-13 19:02:42'),
(3456, 1, 'cx6IV0eGaQUmdLdU78Q7cxAvnKUrpTt7', '2019-09-13 19:02:42', '2019-09-13 19:02:42'),
(3457, 1, '2QMPYeAfKZhpkHqCcBrZBX1RcWUaBARf', '2019-09-13 19:02:42', '2019-09-13 19:02:42'),
(3458, 1, 'oTzGtcKp0TsXGpCOMqzGcs4BaDPknEH6', '2019-09-13 19:02:42', '2019-09-13 19:02:42'),
(3459, 1, 'Q2v5B0qzLFHUmPCvAFBhEHOCVibCzV9Q', '2019-09-13 19:02:42', '2019-09-13 19:02:42'),
(3460, 1, 'UJz02bhCTlMI8KI2c8atCNL0GArmtRAV', '2019-09-13 19:02:43', '2019-09-13 19:02:43'),
(3461, 1, 'QAKs5kJLgqBGBVwbiK2iYn54MA0GfNQU', '2019-09-13 19:02:43', '2019-09-13 19:02:43'),
(3462, 1, 'rUI6TIQUqdj6fA6y6LpODy0J6I9FEYk0', '2019-09-13 19:02:44', '2019-09-13 19:02:44'),
(3463, 1, '8DIu8WQOSVHHKq9mn2FQpjh2thvOJujo', '2019-09-13 19:03:23', '2019-09-13 19:03:23'),
(3464, 1, 'z6IDIevlFzXu6wdef1X6KuW3O3fETOQb', '2019-09-13 19:03:23', '2019-09-13 19:03:23'),
(3465, 1, 'AfzbWjJogwVB7qSBeJ6gBaWY3V1YqVF0', '2019-09-13 19:03:24', '2019-09-13 19:03:24'),
(3466, 1, 'Wgo461AYwMxOpKIolHKEXhwqJPdVf6wX', '2019-09-13 19:03:24', '2019-09-13 19:03:24'),
(3467, 1, '08mdNAU8fLvm7Cvi0fUjVvgxAnteVrJB', '2019-09-13 19:14:22', '2019-09-13 19:14:22'),
(3468, 1, 'RcNtCaIwoF8vo0NYgRtKYFcwPObSY3vw', '2019-09-13 19:15:09', '2019-09-13 19:15:09'),
(3469, 1, 'ioTK7fpADk0RR1Exfht9puYadHGiIAy0', '2019-09-13 19:18:22', '2019-09-13 19:18:22'),
(3470, 1, 'OZsZdEWlxcfuRl8XfCNP2svA7bRz6Cwt', '2019-09-13 19:18:33', '2019-09-13 19:18:33'),
(3471, 1, '7T97jxUlcwsxkMZ47lb0ZasRoqXJQik0', '2019-09-13 19:18:33', '2019-09-13 19:18:33'),
(3472, 1, 'zI8fAOpHKrsdwxaZa4awNKzzDPPsUoTJ', '2019-09-16 16:42:36', '2019-09-16 16:42:36'),
(3473, 1, 'VhB7osZUUOlkXSrYjhieshtjUvtRyY66', '2019-09-19 21:30:07', '2019-09-19 21:30:07'),
(3474, 1, 'QFiDC5xFfpkp3rK4rotFj3KY874MTPkV', '2019-09-19 21:30:08', '2019-09-19 21:30:08'),
(3475, 1, 'FAUUbWgTibh4XtNQANgungnQ3xAqICVW', '2019-09-19 21:30:22', '2019-09-19 21:30:22'),
(3476, 1, 'qUmuwftrLLNQiWyyCWgQH352DqOAc0Ky', '2019-09-19 21:30:23', '2019-09-19 21:30:23'),
(3477, 1, 'Pf8wrbsGmVnBkbvfuqANgtcgaQJ2mAxO', '2019-09-19 21:30:32', '2019-09-19 21:30:32'),
(3478, 1, 'o57qSUNjtQPnOsW42yyamjLYwEMthDMZ', '2019-09-19 21:30:32', '2019-09-19 21:30:32'),
(3479, 1, 'WPpmcy5R9FxrNaeuCyfLDAUz1lDP2U0i', '2019-09-23 13:26:22', '2019-09-23 13:26:22'),
(3480, 1, 'Jc6RI6NWyGF3XBMLalifT6hkrUH6Mo7Q', '2019-09-23 16:28:06', '2019-09-23 16:28:06'),
(3481, 1, 'Iur3RLGalOMnOu7ZIqgB4eyfxJ7NuHyS', '2019-09-23 17:00:49', '2019-09-23 17:00:49'),
(3482, 1, 'ecHdoDshtiJ2WIeaL7nmBDlqDA00pGAp', '2019-09-23 17:02:22', '2019-09-23 17:02:22'),
(3483, 1, 'jqZWBsDJhIXGaGUERjZxLs7CbJs8SLmv', '2019-09-23 17:02:44', '2019-09-23 17:02:44'),
(3484, 1, 'KH2ehexVuh5hEs47p4Gjaxc2uJ7NAoTe', '2019-09-23 17:06:46', '2019-09-23 17:06:46'),
(3485, 1, 'gdOpiQMULr6GRG81GAw6OW7pRY5DNPja', '2019-09-23 17:08:05', '2019-09-23 17:08:05'),
(3486, 1, 'kk5YZjrVlwqUKELJMMyI79omMqhIyv0e', '2019-09-23 17:16:01', '2019-09-23 17:16:01'),
(3487, 1, 'brM3ZhvZq95cIbHqZeRlwTnTx1nuIQ35', '2019-09-23 17:28:10', '2019-09-23 17:28:10'),
(3488, 1, 'Ib28BsDwuifJRQiLoKrfE2Ajez5W6sFd', '2019-09-23 17:33:04', '2019-09-23 17:33:04'),
(3489, 1, 'SMZ3qyQ5YAMMVmeVu9VOzzKlQcfasgMk', '2019-09-23 17:35:22', '2019-09-23 17:35:22'),
(3490, 1, 'bpWRZquoyDS69Oyx6RuBuiHZ2qIx3sZK', '2019-09-23 17:37:12', '2019-09-23 17:37:12'),
(3491, 1, 'iyxnzZGqti1jaOPQQ11D1xEUSfpx3zNN', '2019-09-23 17:37:34', '2019-09-23 17:37:34'),
(3492, 1, 'qBJPw38BhfjvL3Tm4bvXILruE1gO2cBE', '2019-09-23 17:37:57', '2019-09-23 17:37:57'),
(3493, 1, 'LNJiihO4yq3QYaE5dSIpPxPYhG2nsVlO', '2019-09-23 17:38:45', '2019-09-23 17:38:45'),
(3494, 1, 'Qq5tFe23x7oniYNrQ1N81qzc0CwtTU2F', '2019-09-23 17:41:22', '2019-09-23 17:41:22'),
(3495, 1, 'oJFYP3VGnBrYlbNiOK3IgRA3VTagBHrT', '2019-09-23 17:41:40', '2019-09-23 17:41:40'),
(3496, 1, '90WSkC9EtV9ofAsQCgHkuIFPd8CPoUtG', '2019-09-23 17:56:35', '2019-09-23 17:56:35'),
(3497, 1, 'Uh5aQk6LcQxnV4J5F9kfKvkZGF7aCBaC', '2019-09-23 17:56:40', '2019-09-23 17:56:40'),
(3498, 1, 'tkge6HgZ9VjU355JMaDlaTP18p2mcZHI', '2019-09-23 17:57:18', '2019-09-23 17:57:18'),
(3499, 1, 'ef38TERm9jen46wybI0QUQsGQlkkQ1Xj', '2019-09-23 17:58:01', '2019-09-23 17:58:01'),
(3500, 1, 'uFZelVibnC3D6P3eYKXc3TmkYtnQxs1r', '2019-09-23 17:59:18', '2019-09-23 17:59:18'),
(3501, 1, '6Jjci4cT8yXV9rpcUek1MLdMYf4fxfBp', '2019-09-23 17:59:34', '2019-09-23 17:59:34'),
(3502, 1, 'jA9bKDRHW0ufaAU2Ol7jhJxLFRWR8eXb', '2019-09-23 18:04:12', '2019-09-23 18:04:12'),
(3503, 1, 'ZT7waNpIfJm6SsYiQzT28gYnTKo7dcxF', '2019-09-23 18:05:37', '2019-09-23 18:05:37'),
(3504, 1, '3KJRLqZBCaiZLF6fBTggxMuLkjcyTaGn', '2019-09-23 18:06:06', '2019-09-23 18:06:06'),
(3505, 1, 'ijxr2mfMOibZssdPXa2bCsLJ36VymMy7', '2019-09-23 18:07:44', '2019-09-23 18:07:44'),
(3506, 1, 'hHyhaKqPkvyTazl7Lf9wFuqdLFf2IcRo', '2019-09-23 18:12:52', '2019-09-23 18:12:52'),
(3507, 1, '4wNrnm6z8fWtIcJ6rncvDOsXtM9Wtbcs', '2019-09-23 18:13:46', '2019-09-23 18:13:46'),
(3508, 1, 'dsN04rI56VLnRMrn2oK9OROYo7TI3HTt', '2019-09-23 18:14:34', '2019-09-23 18:14:34'),
(3509, 1, 'ybWq7ZphMVqmMhzNXwn8s7Dzwf7lDSf2', '2019-09-23 18:15:13', '2019-09-23 18:15:13'),
(3510, 1, '7YvdwR2LJqrCY0IftjpNJQfOVpqThYFK', '2019-09-23 18:15:50', '2019-09-23 18:15:50'),
(3511, 1, 'Itj3QIdRimMBY5O5olLoCgswe9KwzdIG', '2019-09-23 19:38:42', '2019-09-23 19:38:42'),
(3512, 1, '5GD3o1z3rkO6ngEWPq8RrFrlApmJwKU0', '2019-09-23 19:39:39', '2019-09-23 19:39:39'),
(3513, 1, '5jWw2EryEWJEA9zUaCR5hylxQ9bJZHH5', '2019-09-23 19:40:08', '2019-09-23 19:40:08'),
(3514, 1, 'jWAS17O6sUaUBWLo6NXUFySwDgyJwE4v', '2019-09-23 19:40:43', '2019-09-23 19:40:43'),
(3515, 1, 'IjAfQowWyXHnVn29P2JT1HPtzOnQzxdq', '2019-09-23 19:41:16', '2019-09-23 19:41:16'),
(3516, 1, '77R9p3gRC7uLspsu2HDIXklCLGfUXbF1', '2019-09-23 19:44:27', '2019-09-23 19:44:27'),
(3517, 1, 'ps0TNODS1kWJteLDNnpFaWaR45r3rvFh', '2019-09-23 19:45:07', '2019-09-23 19:45:07'),
(3518, 1, 'SL4RxxDg1hseRZigLu9kJs0AL04AIBpP', '2019-09-23 19:45:31', '2019-09-23 19:45:31'),
(3519, 1, 'Rkzl4876M5UnNvVO8MJFFitaZtDXtAjG', '2019-09-23 19:46:08', '2019-09-23 19:46:08'),
(3520, 1, 'NkphuSw4jefuEM5mk2L5gGXMOtbBDVTT', '2019-09-23 19:46:27', '2019-09-23 19:46:27'),
(3521, 1, '20iUg2PJrKtVsohys9rtACVpdLv3g3Vw', '2019-09-23 20:47:59', '2019-09-23 20:47:59'),
(3522, 1, 'HXl9cJKsml3gACkAhknbiC8OFwblvBoS', '2019-09-23 20:48:23', '2019-09-23 20:48:23'),
(3523, 1, 'RxR31SRRpjq6ACXEgd2bdXdezkHCOy8B', '2019-09-23 20:48:58', '2019-09-23 20:48:58'),
(3524, 1, 'xpaXjTae6TezfLowYhU2qYFpEveMrCxH', '2019-09-23 20:55:34', '2019-09-23 20:55:34'),
(3525, 1, 'HJZ2t4vDAvqe0rg62gLI4UG8wcrmK43w', '2019-09-23 20:58:27', '2019-09-23 20:58:27'),
(3526, 1, 'YsjP1xdrTdu5QCiy7Y22CnIAy3Vpa41H', '2019-09-23 20:59:09', '2019-09-23 20:59:09'),
(3527, 1, '9Vb2n3gXxYxIIvwdreclKNDZNicfMaw2', '2019-09-23 20:59:34', '2019-09-23 20:59:34'),
(3528, 1, 'nebb5wBfO4FLbl0VqOpBgkx6CQki5u8h', '2019-09-23 21:00:22', '2019-09-23 21:00:22'),
(3529, 1, 'FqYVi0VsE1vfOTXjdiDQHdHAtTvv4dLX', '2019-09-23 21:03:46', '2019-09-23 21:03:46'),
(3530, 1, '6fK07VwrEzWQg6uFV2L5mU0WdnP40w8x', '2019-09-23 21:18:39', '2019-09-23 21:18:39'),
(3531, 1, 'uJktovyFZiIbAGpnbNdSSraJ2BTjeByQ', '2019-09-23 21:28:29', '2019-09-23 21:28:29'),
(3532, 1, 'N6rQsbojDXfxsOLKNqY3IgZ9abcHwZPk', '2019-09-23 21:29:44', '2019-09-23 21:29:44'),
(3533, 1, 'MZkbWcGZWLXr1kgiFfcVVuIqCkJA2nfg', '2019-09-23 21:30:42', '2019-09-23 21:30:42'),
(3534, 1, 'adhqjCXEiussi62L3aBoOEPvKZ6X50jY', '2019-09-23 21:32:34', '2019-09-23 21:32:34'),
(3535, 1, 'tUptH50jU29pWe2xFm0gSelZtPBlnXAQ', '2019-09-23 21:32:50', '2019-09-23 21:32:50'),
(3536, 1, 'tcxTiVTDEQFBURdsWO0kzbEhWgd0afx9', '2019-09-23 21:36:41', '2019-09-23 21:36:41'),
(3537, 1, '6OAc3XJbZ35ujfz1Q56sLKHDet4wNwIP', '2019-09-23 21:53:25', '2019-09-23 21:53:25'),
(3538, 1, 'PbYIOuPGiYtZvhEweLC7OOGfGuG3vHGk', '2019-09-23 21:56:51', '2019-09-23 21:56:51'),
(3539, 1, 'KdA5Lq8p7arKOOWNa85cvklNVOYU3smV', '2019-09-23 22:08:27', '2019-09-23 22:08:27'),
(3540, 1, 'Oqm2JOnKbcqifmnxyjj0cfPT1Qq5aPlH', '2019-09-23 23:12:35', '2019-09-23 23:12:35'),
(3541, 1, 'lij4LWixp37RIBH8DhXMhfNl7cKLH32x', '2019-09-23 23:23:08', '2019-09-23 23:23:08'),
(3542, 1, 'i1fgPSTTzPTGagZS9FQ1lw260Zxzsv88', '2019-09-23 23:23:08', '2019-09-23 23:23:08'),
(3543, 1, 'Dn0EjKoGuI4puzyjd2xeeH5jo2ZkGfNf', '2019-09-23 23:23:08', '2019-09-23 23:23:08'),
(3544, 1, 'x3SGIwnIUtHqNyIhE8JSGeK022QBBON6', '2019-09-23 23:23:08', '2019-09-23 23:23:08'),
(3545, 1, 'trX0B2MXKu12yRpdTM1ettINhbL8Kiz0', '2019-09-23 23:23:08', '2019-09-23 23:23:08'),
(3546, 1, 'MsSQMPEfe5Rw7Mk9mvXO4mvjOrHlHhy4', '2019-09-23 23:23:09', '2019-09-23 23:23:09'),
(3547, 1, 'Q4pRJT0jvK3sOLOBtF0oo1rfXbY7FUsG', '2019-09-23 23:23:10', '2019-09-23 23:23:10'),
(3548, 1, 'Vvz6MUI1QAZHLhmjurrpF9sp9kBp1705', '2019-09-23 23:23:10', '2019-09-23 23:23:10'),
(3549, 1, 'VMLCf31jHkUE426S4dMD7sPzEMXil9Ib', '2019-09-24 20:38:14', '2019-09-24 20:38:14'),
(3550, 1, 'SCFWtaa83D6H15BZyJ36J7JiEFK8H0bD', '2019-09-24 20:38:14', '2019-09-24 20:38:14'),
(3551, 1, 'F0Ruv8btSCQ1Swzeu9VwoAIFCDH7IEtc', '2019-09-24 20:38:14', '2019-09-24 20:38:14'),
(3552, 1, 'WTxfOhSrAsJXv7hHUJDMROkuF3yyhy7g', '2019-09-24 20:38:14', '2019-09-24 20:38:14'),
(3553, 1, 'ZAY6U5lZvlURzKxHGAOfO5ch4ffJvCE9', '2019-09-24 20:38:14', '2019-09-24 20:38:14'),
(3554, 1, 'v8jYfThKGEvv3RKmCfbD2RATiNWYRiDr', '2019-09-24 20:38:15', '2019-09-24 20:38:15'),
(3555, 1, 'iTJreql4wK1YSj9TF60kmsiMHQ5Cija5', '2019-09-24 20:38:15', '2019-09-24 20:38:15'),
(3556, 1, 'mKjP219zgASQRoUJt4TPKAxqusghAz2A', '2019-09-24 20:38:15', '2019-09-24 20:38:15'),
(3557, 1, 'Tiqej8PMRVaQiXFxl7taTgYitW094FhF', '2019-09-24 21:35:11', '2019-09-24 21:35:11'),
(3558, 1, 'YCVfR5ftlDELHyeBTprJ78ojAtb0iEko', '2019-09-24 23:32:49', '2019-09-24 23:32:49'),
(3559, 1, '8WM9XgQI2LEvJ5pAXve3GDb58WGbLnrX', '2019-09-25 14:44:44', '2019-09-25 14:44:44'),
(3560, 1, 'XxJwbleR0N7t5xlJ1KIrGUM2ksf0wvYk', '2019-09-25 14:51:31', '2019-09-25 14:51:31'),
(3561, 1, 'O4lhCsEFtQ5tkx8yp6e2QFYDbeDnIbX5', '2019-09-25 14:56:28', '2019-09-25 14:56:28'),
(3562, 1, 'U4JqZXylghbRgtS4lSIbtU6igX1oWpfc', '2019-09-25 15:08:46', '2019-09-25 15:08:46'),
(3563, 11, '32xoyg1egflujCguEXlCSi1qxHpXXsXl', '2019-09-25 15:09:13', '2019-09-25 15:09:13'),
(3564, 11, 'LH3BkAFUWvO5JvfaDIDKxWBXiHvxqMCy', '2019-09-25 16:15:42', '2019-09-25 16:15:42'),
(3565, 11, 'FyXUVCFXtxx9ECj7RUD4b6Cn2cQxtzKW', '2019-09-25 16:16:30', '2019-09-25 16:16:30'),
(3566, 11, 'KgY0b4SeONqTCLb2qzQxdzVqekp36NNf', '2019-09-25 16:19:55', '2019-09-25 16:19:55'),
(3567, 11, 'v2JAQKwbI59bsjwjzasZnxqXCSdwPJ71', '2019-09-25 16:27:54', '2019-09-25 16:27:54'),
(3568, 11, 'Dra4yARRijQ3ELwnaFi8agMz17AT2FnO', '2019-09-25 16:28:40', '2019-09-25 16:28:40'),
(3569, 11, 'MS8V2VQv84VFveoh99FA0nYHjwXcy8LG', '2019-09-25 16:30:21', '2019-09-25 16:30:21'),
(3570, 11, '23TbAc9LxFgOxy4DRzyWnssRtmLiQr0G', '2019-09-25 16:32:07', '2019-09-25 16:32:07'),
(3571, 11, '26aKWLCRnbEHmTp0Q0Wy7NMyNSsqSvR2', '2019-09-25 16:43:32', '2019-09-25 16:43:32'),
(3572, 11, 'RdB6DYIQ7B0qEibLdacmrjZrP11Cs35d', '2019-09-25 16:46:53', '2019-09-25 16:46:53'),
(3573, 11, 'W3NkkxegQPr6ovE6gcGE7THIWyRsAJjn', '2019-09-25 16:49:24', '2019-09-25 16:49:24'),
(3574, 11, 'Lc03BkQNad2gs1am2C5Q4uCJ2ZUQFEXn', '2019-09-25 16:50:08', '2019-09-25 16:50:08'),
(3575, 11, 'sHPISV94UTP1YwkHJdOK9A4dZumnml7C', '2019-09-25 21:28:09', '2019-09-25 21:28:09'),
(3576, 11, 'OedlxxLFzHz4gHKZo2SQVrD1xc4MDRmY', '2019-09-25 21:58:20', '2019-09-25 21:58:20'),
(3577, 11, '2hghltA4AViOw9huXjn0yRcPo5C11vMc', '2019-09-25 22:02:00', '2019-09-25 22:02:00'),
(3578, 11, '0Ft20sGwIiunQEcYMwYaEXJ4XechJiRb', '2019-09-27 15:20:11', '2019-09-27 15:20:11'),
(3579, 11, 'oNbaMrOtBSPACNoQlWL2Ro1V7N3gJWpB', '2019-09-27 15:27:12', '2019-09-27 15:27:12'),
(3580, 11, 'qsa5bn29ui8Ce4VkSeRSR4jRwPysBThX', '2019-09-27 15:35:31', '2019-09-27 15:35:31'),
(3581, 1, 'nEBiWvwaulww5LT2sSj9zh1bOU9jBhb1', '2019-09-27 16:12:52', '2019-09-27 16:12:52'),
(3582, 11, 'HreJYxkrsIklZSN5trQjl0m1dNmhRun4', '2019-09-27 17:20:16', '2019-09-27 17:20:16'),
(3583, 11, 'aIIQWtODa2YXpFVvYmXchyrn15SzV0D7', '2019-09-27 17:25:24', '2019-09-27 17:25:24'),
(3585, 1, 'LBNBrBQ01GTggh79cDE8hLTcjuSF957D', '2019-09-27 17:31:05', '2019-09-27 17:31:05'),
(3586, 11, 'fwqYiMtWDGuVDcwjtjsVjYfVVvQGWvK7', '2019-09-27 17:39:02', '2019-09-27 17:39:02'),
(3587, 11, 'gWY9lIbuFLO8klH843uAXqshhk940jXH', '2019-09-27 21:17:05', '2019-09-27 21:17:05'),
(3588, 11, 'xHXj7KGRw7MQX0Wk6SQlaigbBCzYqGjp', '2019-09-30 17:24:11', '2019-09-30 17:24:11'),
(3589, 11, '4Pj73LEVkyJsNzhcY4Mta4KCW0N90aKJ', '2019-09-30 17:24:12', '2019-09-30 17:24:12'),
(3590, 11, 'nut4gTAPr2fbvcroeovBuuRlKW0mKElP', '2019-09-30 17:33:28', '2019-09-30 17:33:28'),
(3591, 11, 'yWPfru8Ro96uSNptaPdRbieXuQ68JIRr', '2019-09-30 17:33:29', '2019-09-30 17:33:29'),
(3592, 11, 'VhWYU58vOlXTjWCPFALmWyC6jEWR2EGh', '2019-09-30 19:34:35', '2019-09-30 19:34:35'),
(3593, 11, 'DBkX2KEklz66l7IJAt34gEFGNyTaXfgW', '2019-09-30 19:35:18', '2019-09-30 19:35:18'),
(3594, 11, '0jobwG6AB0Xk3uWykWqnxSmbwjpjXbIC', '2019-09-30 19:53:05', '2019-09-30 19:53:05'),
(3595, 11, 'KL1TIdUJCoZoWm2H8nIZDfGyWcG2hHBK', '2019-09-30 20:01:09', '2019-09-30 20:01:09'),
(3596, 11, 'VVbV8ZR7Q4MOes2wB1C95fIKk1B6FYn1', '2019-09-30 20:02:58', '2019-09-30 20:02:58'),
(3597, 11, 'NuGvAgnMCOhO0ChZcta9cIYa30hZjwmB', '2019-09-30 20:05:39', '2019-09-30 20:05:39'),
(3598, 11, 'MlbD9ynXpit5hNiDCnUXFvxEVoV1SM5M', '2019-09-30 20:07:02', '2019-09-30 20:07:02'),
(3599, 11, 'OWpPGbgncT89IG6qYPMiu5fUBM0Rso8Q', '2019-09-30 20:10:04', '2019-09-30 20:10:04'),
(3600, 11, 'A968N4kD8N1e0EIyOXEj3gTo1rLjzD6s', '2019-09-30 20:10:42', '2019-09-30 20:10:42'),
(3601, 11, 'MwMaw0DKXViJ3r8RzMbOabpmP2LG81pL', '2019-09-30 20:12:11', '2019-09-30 20:12:11'),
(3602, 11, 'c10uFH3rjmxSB0m6mPvcZrgLS20QXKHH', '2019-09-30 20:13:13', '2019-09-30 20:13:13'),
(3603, 11, 'ybQuO1EEtAZVmvgcVHr4TDQ8fqKLJLog', '2019-09-30 20:49:53', '2019-09-30 20:49:53'),
(3604, 11, 'yzQgDf072EudxU5aPiVecc2C9tSK068M', '2019-09-30 20:58:14', '2019-09-30 20:58:14'),
(3605, 11, 'U95cUOLfylfnEERseQ9kADLc3QmEsFba', '2019-09-30 20:58:15', '2019-09-30 20:58:15'),
(3606, 11, '5PTksUSndLMYKsZsvw8TJhcMUorMnwFe', '2019-09-30 21:00:40', '2019-09-30 21:00:40'),
(3607, 11, 'EQbjKQnRHMkpm7C595uygdHUcEuY7lQ7', '2019-09-30 21:00:40', '2019-09-30 21:00:40'),
(3608, 1, 'mxV2YoexSEjy1NOX9QNkiI7Cj3SZO2Wk', '2019-09-30 21:02:37', '2019-09-30 21:02:37'),
(3609, 1, 'YJvtwYtbljDZCNXeDJL2DR0DzJNchwU4', '2019-09-30 21:02:37', '2019-09-30 21:02:37'),
(3610, 11, 'BqfdQagSwSAXybY0jKG1zaoRV2dG8pJH', '2019-09-30 21:17:15', '2019-09-30 21:17:15'),
(3611, 11, 'hLIllJzcbEdJfUzh8abv5FLg0Z1E9jx3', '2019-09-30 21:19:47', '2019-09-30 21:19:47'),
(3612, 11, 'Av0Nsji4C1q5w0AeEc922hpcM9oR3gGu', '2019-09-30 21:19:47', '2019-09-30 21:19:47'),
(3613, 1, 'lPj3ohoyneaXex9yhtXVPNWOzA1UE7Hz', '2019-09-30 21:28:25', '2019-09-30 21:28:25'),
(3614, 1, 'aA6POMS70YpJ7kbuFnh38Twpc8FUL4zI', '2019-09-30 21:28:27', '2019-09-30 21:28:27'),
(3615, 11, 'KVkhLL64RlbHkqpydgtrwb4LCuiU0Ptq', '2019-09-30 21:44:08', '2019-09-30 21:44:08'),
(3616, 11, 'xcKHANoXc5zD2qTO13NGvkwdenEClHTY', '2019-09-30 21:45:33', '2019-09-30 21:45:33'),
(3617, 11, 'zFMMcMASChGS1NrEbQzVB70Iw19WFOdq', '2019-09-30 21:45:36', '2019-09-30 21:45:36'),
(3618, 11, 'fSk2cAFDiYRViOoI47CyOf18dPfnQNFD', '2019-09-30 21:46:03', '2019-09-30 21:46:03'),
(3619, 11, 'yb9o9AUG1v7Fgzc6RSPpFfKrXXozhGst', '2019-09-30 21:46:49', '2019-09-30 21:46:49'),
(3620, 11, 'oE41GjghoBXNqU2hMsxSlVBE5lvR8hq1', '2019-09-30 21:47:13', '2019-09-30 21:47:13'),
(3621, 11, 'Vh0C9nv4IzruxPklUSdZ5kxCaptQvkfR', '2019-09-30 21:48:52', '2019-09-30 21:48:52'),
(3622, 11, 'GkiopT3Nrk2uLoKvATbXGLPwgJvCZKcH', '2019-09-30 21:49:17', '2019-09-30 21:49:17'),
(3623, 11, 'MCSYteJaG31PPpdtKSjqm9XBGNEUV8If', '2019-09-30 21:53:52', '2019-09-30 21:53:52'),
(3624, 11, 'IGiQCAye2u8BDodPf4vkM6ygOSuIZrfl', '2019-09-30 21:54:45', '2019-09-30 21:54:45'),
(3625, 11, 'XdbWhxQYCqoZldHMOS3wIHI5wqFE7hRj', '2019-09-30 21:58:07', '2019-09-30 21:58:07'),
(3626, 11, 'G0o7m8wt62mFfMitvsLKZZSqY11diIOY', '2019-09-30 21:59:04', '2019-09-30 21:59:04'),
(3627, 11, 'U4EiT1P7jsBdXJMvGGg06Ctv6pt2bGNP', '2019-09-30 22:00:58', '2019-09-30 22:00:58'),
(3628, 11, 'lq3qZqTxn9UatFBKsaJANYPG5tsl7j0M', '2019-09-30 22:01:04', '2019-09-30 22:01:04'),
(3629, 11, '8NgWXxOdsjEr03nwaYLpDpmoxdfG2CX1', '2019-09-30 22:01:12', '2019-09-30 22:01:12'),
(3630, 11, 's5VeSqN0b4e8IwXcyfnJvkQdh4xo5fuC', '2019-09-30 22:01:17', '2019-09-30 22:01:17'),
(3631, 11, 'D0tKziHFmFkVIPUhx47Z2GmnTFFJFieR', '2019-09-30 22:01:19', '2019-09-30 22:01:19'),
(3632, 11, 'TPfN9AvThdL7SZgMgk8nqtHfoBFo7eS6', '2019-09-30 22:04:41', '2019-09-30 22:04:41'),
(3633, 11, 'Lh2s2407lGVmAka6rBlB9xOMbBGvlo5d', '2019-09-30 22:05:08', '2019-09-30 22:05:08'),
(3634, 11, 'A3MMnAeGen80D91K8K1kJpUZO4gLEnB5', '2019-09-30 22:05:55', '2019-09-30 22:05:55'),
(3635, 11, 'eBzaiI7lM37unSmXsxO3nodF9anwME8A', '2019-09-30 22:06:14', '2019-09-30 22:06:14'),
(3636, 11, 'IXMR7pcOJ1ICJgUKvnFlJu8WOg6MKjD1', '2019-09-30 22:06:20', '2019-09-30 22:06:20'),
(3637, 11, 'QvjKuc5v9WIvr8f93L3Dc9O1nxZTL5MI', '2019-09-30 22:06:21', '2019-09-30 22:06:21'),
(3638, 11, 'C1mbIMM3F2f5W0Dv3UDW1DkKd2VG3FyG', '2019-09-30 22:06:24', '2019-09-30 22:06:24'),
(3639, 11, 'YLumMHKiP5xcCzxralvpIOMvXBNy1ARU', '2019-09-30 22:06:35', '2019-09-30 22:06:35'),
(3640, 11, 'nwl97Cql3Y1USsM7nPvueu0xLKNFJHWi', '2019-09-30 22:06:35', '2019-09-30 22:06:35'),
(3641, 1, '4tJvcphW1Ts1QAjGEFtE4uuIMzjk8wR1', '2019-09-30 22:14:51', '2019-09-30 22:14:51'),
(3642, 1, '22dlhOOrctVHBC2AsnSMT2fTi6q2rDew', '2019-09-30 22:14:51', '2019-09-30 22:14:51'),
(3643, 1, 'OrXlUKPlL8mM7A60VztDMDpMVn6qczqX', '2019-09-30 22:15:01', '2019-09-30 22:15:01'),
(3644, 1, 'rzA4lKx5MtWBO456EcdimBgsdYimatkY', '2019-09-30 22:15:01', '2019-09-30 22:15:01'),
(3645, 11, 'EXwWfpPUG31wddQyNL96eMOisxXCd8IG', '2019-09-30 22:35:06', '2019-09-30 22:35:06'),
(3646, 1, 'D45kq8NxQQdmvRkAfU5tz7vIGvfGOkuk', '2019-09-30 22:39:38', '2019-09-30 22:39:38'),
(3647, 1, 'GryMPdyzPnp7zHi5DfAVsHCqJFNaSjXn', '2019-09-30 22:39:39', '2019-09-30 22:39:39'),
(3648, 1, 'oGEsvPzypyolA0aMpZiGMtVs42B9GnGu', '2019-09-30 22:39:39', '2019-09-30 22:39:39'),
(3649, 1, '2rHgMWHvIzmBZgmpBNUyoSKQpapYpDuC', '2019-09-30 22:39:39', '2019-09-30 22:39:39'),
(3650, 1, 'oSOeDxOpdM6UyWHSdB3hgnMawIi0y5Xk', '2019-09-30 22:39:39', '2019-09-30 22:39:39'),
(3651, 1, 'KqjC3RIp8JvqqY6TEZmpj2y1v3rl5sQ1', '2019-09-30 22:39:39', '2019-09-30 22:39:39'),
(3652, 1, 'FChmTFOYKlV2ljnJliq8ha6JJLQMRMAW', '2019-09-30 22:39:40', '2019-09-30 22:39:40'),
(3653, 1, 'F0Y2keJL24ZoezwHUS7xpYVSFfayUhKY', '2019-09-30 22:39:40', '2019-09-30 22:39:40'),
(3654, 11, '8s1vIRqXBIwX9K4lYAxHTNNQgZrF5k6R', '2019-09-30 23:33:51', '2019-09-30 23:33:51'),
(3655, 11, 'fvVroxbxFjnceKBffUM9GgNWLocV1BN1', '2019-10-01 00:02:47', '2019-10-01 00:02:47'),
(3656, 11, '7Jdm0bf97Xp9HtSJlU0zuACSSS6UtfgD', '2019-10-01 19:15:11', '2019-10-01 19:15:11'),
(3657, 11, 'bugz3gyfyTA1XIh8rhRzOI3Uzpr5104J', '2019-10-01 20:01:36', '2019-10-01 20:01:36'),
(3658, 11, 'RyJQGVbf1lFb1Py9ufXeuGASLYqrORLn', '2019-10-01 20:03:30', '2019-10-01 20:03:30'),
(3659, 11, 'wIFcdx9xQVTnR1cD0G3y4VZ2O3NMjHKQ', '2019-10-01 20:11:19', '2019-10-01 20:11:19'),
(3660, 1, 'ppsSRc7N5sWRh1j5vo5CCksWyPz8t1I3', '2019-10-01 20:39:20', '2019-10-01 20:39:20'),
(3661, 1, 'XsLzx9M58ic439wgFgKXfkaMrTfG2hBX', '2019-10-01 20:39:20', '2019-10-01 20:39:20'),
(3662, 1, '1c6NFR3IInec9rvgxMaLZnqrNekcRzrm', '2019-10-01 20:39:20', '2019-10-01 20:39:20'),
(3663, 1, 'PiYN6CqyQSVcQhr3Mqg9Ysg5VukKcjDN', '2019-10-01 20:39:20', '2019-10-01 20:39:20'),
(3664, 1, 'PcLf2Q2arviXibj5rdvBGUo7q86HRlbx', '2019-10-01 20:39:20', '2019-10-01 20:39:20'),
(3665, 1, 'bND7coLEUxWvwCacR2tGhBXMH866MMUi', '2019-10-01 20:39:21', '2019-10-01 20:39:21'),
(3666, 1, 'm8blwohA8LwuLDvn673tChMrJF27l98v', '2019-10-01 20:39:21', '2019-10-01 20:39:21'),
(3667, 1, 'dvQTqlsskAB8yTpqDE11EoD5wF5uueJ2', '2019-10-01 20:39:22', '2019-10-01 20:39:22'),
(3668, 11, 'MRPx0VjGAjBcwCVh8mDLAQb6RQnhWEuh', '2019-10-01 20:42:12', '2019-10-01 20:42:12'),
(3669, 11, 'AgswdghNAdlkzeV1G7rtveOBQv7wOMlD', '2019-10-01 20:42:15', '2019-10-01 20:42:15'),
(3670, 11, 'sV01Pcr7brDvVDqs01anM7cLJYc5wk8X', '2019-10-01 20:42:23', '2019-10-01 20:42:23'),
(3671, 11, 'qTglzMEzxZBGZ3zPNRgyKMyRaeKVUdxP', '2019-10-01 20:42:23', '2019-10-01 20:42:23'),
(3672, 1, 'uGNyswdeIvrkW3WFtQe2MOF1wbkGEIKr', '2019-10-01 23:02:22', '2019-10-01 23:02:22'),
(3673, 1, 'Ul8neC6IkYBB6pozpx9TT3Nj9lhcYqNy', '2019-10-01 23:02:23', '2019-10-01 23:02:23'),
(3674, 11, 'GSYL6DhlPGmXkUAuP6ebfhk6NMi27R9d', '2019-10-01 23:02:43', '2019-10-01 23:02:43'),
(3675, 11, 'cTlac3gDfUfl5wUjksXSiKOxlg0UT4tW', '2019-10-01 23:02:43', '2019-10-01 23:02:43'),
(3676, 11, 'eVbfskHdoSux6ONBxk96KBewSA5JPDkE', '2019-10-02 15:53:16', '2019-10-02 15:53:16'),
(3677, 11, 'r4C0rtOxLB8FiiAhQuUtDBTf6JkfI4S4', '2019-10-02 15:56:32', '2019-10-02 15:56:32'),
(3678, 11, 'hlY2edumoglU3P6YI8HR7nblaJiaQNkG', '2019-10-02 15:57:49', '2019-10-02 15:57:49'),
(3679, 1, 'Ne78ynaqL6J8YmHPDpkYivx62l3UP3Rz', '2019-10-03 21:55:02', '2019-10-03 21:55:02'),
(3680, 1, 'KmQHXQlVl8xvGQpvdcoB4taMajdMbti9', '2019-10-03 21:55:02', '2019-10-03 21:55:02'),
(3681, 1, 'DHU6OBF3A8m70YlZbeAKBiL0tfuRJuLG', '2019-10-03 21:55:02', '2019-10-03 21:55:02'),
(3682, 1, 'mlqAd3QWng4lrWB3yeVvkguXu8Px7yfJ', '2019-10-03 21:55:02', '2019-10-03 21:55:02'),
(3683, 1, 'C8MmuRsctNmO3qrEWZ0eH3WgdxVF3zJW', '2019-10-03 21:55:02', '2019-10-03 21:55:02'),
(3684, 1, 'yyu4FxUxUwnKK0jElGkLR4niCgJSKOJp', '2019-10-03 21:55:03', '2019-10-03 21:55:03'),
(3685, 1, 'R4XtJluFGLftqbFN9CkycSi0yXLKfArP', '2019-10-03 21:55:03', '2019-10-03 21:55:03'),
(3686, 1, 'Z4hq52qJ7lP8AlWzJzsQqTiChvf5kwKs', '2019-10-03 21:55:04', '2019-10-03 21:55:04'),
(3687, 1, 'CSGV9AThPUQCh2HVXqOKNeJgFDierp8q', '2019-10-03 21:55:16', '2019-10-03 21:55:16'),
(3688, 1, 'pfQW6JL6EYyV286dGhUnhT3nc3HLBwma', '2019-10-03 21:55:17', '2019-10-03 21:55:17'),
(3689, 1, 'sQNn722BopftD188GK4LTa8oSLXlfzIi', '2019-10-03 21:55:17', '2019-10-03 21:55:17'),
(3690, 1, 'lnd7UBskP42uvofWq0HpvC5AnY6Dtsjo', '2019-10-03 21:55:17', '2019-10-03 21:55:17'),
(3691, 1, 'CINCXkOZVqLVemdWmTIti9aDZmW2HVtw', '2019-10-03 21:55:17', '2019-10-03 21:55:17'),
(3692, 1, 'xCmlTbVaF4Am7PATYrID6U0leQn5B4Uy', '2019-10-03 21:55:18', '2019-10-03 21:55:18'),
(3693, 1, 'MLxYMxebeF1Kt6HWpC3Inrx1ePc6Mfqo', '2019-10-03 21:55:18', '2019-10-03 21:55:18'),
(3694, 1, 'y0moVsYAfkFsSD0Av53MSrsbw1kznLpr', '2019-10-03 21:55:18', '2019-10-03 21:55:18'),
(3695, 11, '9c5cSLcxLuLcXd3rbJTQWILL0cGuYLEx', '2019-10-03 21:55:44', '2019-10-03 21:55:44'),
(3696, 1, '1WNYVXs8LXFXTtBmLtxkj2220ausmZB1', '2019-10-04 20:48:56', '2019-10-04 20:48:56'),
(3697, 1, 'GNDnayYMeeFrCJHpsSSDPOOa06QPoyyv', '2019-10-04 23:34:27', '2019-10-04 23:34:27'),
(3698, 1, '1f2H7Uq9186FOlvnFPh7S2F4wz8jZual', '2019-10-05 05:32:35', '2019-10-05 05:32:35'),
(3699, 1, 'eJWwJUjMzeg3FIJXoEVJfoOUA8gKoQ0C', '2019-10-05 16:08:24', '2019-10-05 16:08:24'),
(3700, 1, 'WUg12xu6i77s3amcl4WfcLtUA7Q8SMQ6', '2019-10-05 17:30:24', '2019-10-05 17:30:24'),
(3701, 1, 'zzHjaIbeDPnGwmkEzLNY9KjjwvDUj4Xc', '2019-10-05 17:30:25', '2019-10-05 17:30:25'),
(3702, 1, 'Z7pmWZUsy8OpVZfY1Efoo1lIugg8U6gR', '2019-10-05 17:30:31', '2019-10-05 17:30:31'),
(3703, 1, 'iH12ZvMMcrexgigxnDo7547GH0k2UopL', '2019-10-05 17:30:31', '2019-10-05 17:30:31'),
(3704, 1, 'aAsCczFjobXLnX6YGWJkNvEaDmA3p1k7', '2019-10-05 17:30:35', '2019-10-05 17:30:35'),
(3705, 1, 'DFUuDjbjwLlufVxp6UQ29ld6uqRWx9zu', '2019-10-05 17:30:36', '2019-10-05 17:30:36'),
(3706, 1, 'EL4jRHe3WIErs5LW3nitU32JlZMOXbfN', '2019-10-05 17:45:02', '2019-10-05 17:45:02'),
(3707, 1, 'XMjkAbeCk2WXwJG0LMPcYIOO1FywYqVy', '2019-10-05 17:45:03', '2019-10-05 17:45:03'),
(3708, 1, 'jANW7hIfQF5k8zUAJ4LlvLO8205Ve1wv', '2019-10-05 17:45:15', '2019-10-05 17:45:15'),
(3709, 1, 'HblCY7qpnCaDEkM6YCPsponFqG2PSrys', '2019-10-05 17:45:16', '2019-10-05 17:45:16'),
(3710, 1, 'KjKs6kTSnEyC6aIvaOmPuwwaznz5e7od', '2019-10-05 17:49:33', '2019-10-05 17:49:33'),
(3711, 1, 'vwaF4IUTWBE5JxEMwCKHyDveHJzglgNq', '2019-10-05 17:49:33', '2019-10-05 17:49:33'),
(3712, 1, 'vmTmrx1j33u6qoBLs1ItUjZssfHtAFzr', '2019-10-05 17:49:34', '2019-10-05 17:49:34'),
(3713, 1, 'RpERiyIzjqk4tvmbDP3GgZeG6487Gkzh', '2019-10-05 17:49:35', '2019-10-05 17:49:35'),
(3714, 1, 'oznpwhWqKL56Fn0XhBxFfxpxBOcZQrde', '2019-10-05 17:49:52', '2019-10-05 17:49:52'),
(3715, 1, 'QsIpnhOzgxuJIa6FSlqZSOCi4SYrW8Lk', '2019-10-05 17:49:52', '2019-10-05 17:49:52'),
(3716, 11, '4KiXt9daiyiBue7Jpp6PyOh0YQHs2h9E', '2019-10-05 18:08:22', '2019-10-05 18:08:22'),
(3717, 11, 'qfWMV0XYoCjMIWjk929mp9iPa4j3sr6c', '2019-10-05 18:08:39', '2019-10-05 18:08:39'),
(3718, 11, 'ppIHA5XIx8HpZ17gDQcxTqETVaORFquA', '2019-10-05 18:08:48', '2019-10-05 18:08:48'),
(3719, 11, 'LbB5NBaOmCuhqrBa8VEgLpdXlzCRscw6', '2019-10-05 18:09:35', '2019-10-05 18:09:35'),
(3720, 11, 'y4voN9rME5HoXPLKZaNorNeqJlp8jYFj', '2019-10-05 18:14:57', '2019-10-05 18:14:57'),
(3721, 11, 'SEej5vZA5vrjlRWKiT6dsKStL5dlMkGl', '2019-10-05 18:15:12', '2019-10-05 18:15:12'),
(3722, 11, 'm0aL3jF3sOqgcWbFVLGbv8ll9cP6kcKz', '2019-10-05 18:15:22', '2019-10-05 18:15:22'),
(3723, 11, 'i22dypR4PBelpjL5mZjqRaNwiPt6qaer', '2019-10-05 18:23:35', '2019-10-05 18:23:35'),
(3724, 11, 'Kd2tFxyx8csqqfgFKU6kmsqNBai3Nu8D', '2019-10-05 18:23:41', '2019-10-05 18:23:41'),
(3725, 11, 'hTFKg3c6T6p0W9njEWRCVz9hkVw3PX8V', '2019-10-05 18:23:46', '2019-10-05 18:23:46'),
(3726, 11, '3aMYDheHuCrNuqADIYCSQw5aFxq0jgRL', '2019-10-05 18:24:33', '2019-10-05 18:24:33'),
(3727, 11, 'kWgnLwlFv85CoyqJMgVbvZSpR6G8yEwy', '2019-10-05 18:24:37', '2019-10-05 18:24:37'),
(3728, 11, 'taZS9fvZPdzNh18p5V1M1XsTFKNefm58', '2019-10-05 18:25:01', '2019-10-05 18:25:01'),
(3729, 11, 'XcQHqU5A4pFkYg82j4jKB4Dq6AAK4Rjq', '2019-10-05 18:25:25', '2019-10-05 18:25:25'),
(3730, 11, 'kKWuhTnewLXqmkM7rt4y0FLjNAsMxUXW', '2019-10-05 18:25:31', '2019-10-05 18:25:31'),
(3731, 11, 'zE0JMj2QHVLXf1KHKIhqGeKwRJueWrUV', '2019-10-05 18:27:03', '2019-10-05 18:27:03'),
(3732, 11, 'wLiAVomCgdb0yHJXxyky3SJN64BdbSoU', '2019-10-05 18:27:23', '2019-10-05 18:27:23'),
(3733, 1, 'mDJGtjdOjG7PRNJt499i7rXpn8hphWzx', '2019-10-05 18:29:49', '2019-10-05 18:29:49'),
(3734, 1, 'aMXARqskWHoTVwsd3eQW6nAlXm3xO1jm', '2019-10-05 18:29:50', '2019-10-05 18:29:50'),
(3735, 1, 'fWArUyz1Xhs1Wvu7hhYvAsSxGQGvuxgv', '2019-10-05 18:30:10', '2019-10-05 18:30:10'),
(3736, 1, 'ME0IHebbYTqCtAlHxWXXDxF0kNGtI8Ww', '2019-10-05 18:30:11', '2019-10-05 18:30:11'),
(3737, 1, 'ZuKETPmkTiz1BVhz1xSktNbjtPyKWBuL', '2019-10-05 18:33:47', '2019-10-05 18:33:47'),
(3738, 11, 'WZow97248vMNgVrUqIkrGvm9t8P7WLFe', '2019-10-05 18:35:10', '2019-10-05 18:35:10'),
(3739, 11, '8jFdaDLb1D352JU3picCbWGqbvcbp3cO', '2019-10-05 18:35:17', '2019-10-05 18:35:17'),
(3740, 11, 'jHxhRGQnUKw4phq8Ojk1U5WiuxRCk21i', '2019-10-05 18:35:24', '2019-10-05 18:35:24'),
(3741, 1, 'VZFAHovwXpCtKQIjdp8fNBlS2cJTNUE2', '2019-10-07 13:25:30', '2019-10-07 13:25:30'),
(3742, 11, 'hk394F3ia1fcTscV2PTFcHc9kjNY61CI', '2019-10-07 14:28:12', '2019-10-07 14:28:12'),
(3743, 1, 'pmTemJEGiLhAJjhTxELqfEPOrBH8kimi', '2019-10-07 14:41:10', '2019-10-07 14:41:10'),
(3744, 1, 'I7iyDXxin4PM4MOA5xjE2jLAaoZHehWO', '2019-10-07 14:41:11', '2019-10-07 14:41:11'),
(3745, 1, '7dRXxZcblLYWAreZa5ZjuBR6OmS33rlW', '2019-10-07 14:41:13', '2019-10-07 14:41:13'),
(3746, 1, 'y7Kl46dufKJ6csF3c7imsgacB4eFo4Cg', '2019-10-07 16:17:02', '2019-10-07 16:17:02'),
(3747, 1, 'axbwBov8YAtsnonL5GNNZ3UX42i0egfR', '2019-10-07 16:17:10', '2019-10-07 16:17:10'),
(3748, 11, 'z2vFQiQ7UNX7mXFCDi8CGc1SSe66kudm', '2019-10-07 16:18:17', '2019-10-07 16:18:17'),
(3749, 11, '98t9SCuU2VdygdzjyR0cYel94HXbzkW4', '2019-10-07 16:24:37', '2019-10-07 16:24:37'),
(3750, 1, 'MF3PauCG5R3981xnfeZm3ng5bHr2e2yU', '2019-10-07 17:36:32', '2019-10-07 17:36:32'),
(3751, 1, 'SjpP65zEvRYka8qoKqbxYsCVSEJo6QRo', '2019-10-07 17:36:39', '2019-10-07 17:36:39'),
(3752, 1, 'EUTQjpqKkSaWy4fL1hasX7Gu3ZjP76CT', '2019-10-07 17:36:49', '2019-10-07 17:36:49'),
(3753, 11, 'UlO1Son8sUrsvQwgtVZjYBTAwltINGFp', '2019-10-07 17:37:57', '2019-10-07 17:37:57'),
(3754, 11, '3uVIAJfkNF4jYTFnUSP6viELkSToEShX', '2019-10-07 17:38:06', '2019-10-07 17:38:06'),
(3755, 11, 'GeITLkWZWHncS8LNb2DysYeAdYvF6u7Y', '2019-10-07 17:38:11', '2019-10-07 17:38:11'),
(3756, 11, '0X1EEb1gABJmuBgZxfZZMAEJCPkMv8LZ', '2019-10-07 17:38:17', '2019-10-07 17:38:17'),
(3757, 11, 'aXcAXxjEfM4zM6JgdB44BRyzgnRDPJpQ', '2019-10-07 17:54:28', '2019-10-07 17:54:28'),
(3758, 11, '5vAmLmHfdWO26TuKNJftH5MsKhrtfFyG', '2019-10-07 17:54:28', '2019-10-07 17:54:28'),
(3759, 11, 'UB4Tb1MkpKFO8hXcrPrI9M4lGMVpot29', '2019-10-07 17:54:28', '2019-10-07 17:54:28'),
(3760, 11, 'WzRCzVb7s5NaasIQ3hTL0jLg81KG1GeQ', '2019-10-07 17:54:28', '2019-10-07 17:54:28'),
(3761, 11, 'EtMaZoeZKfOK9QOkVZGOVTZpn0wQ3kVT', '2019-10-07 17:57:48', '2019-10-07 17:57:48'),
(3762, 11, 'NOrAu74qeeKQ5IS6YsjpE0TYLSe03vcy', '2019-10-07 17:57:48', '2019-10-07 17:57:48'),
(3763, 11, 'YPXwAugyzjZr0yvUlKxEPCNQaivxJgJn', '2019-10-07 17:57:48', '2019-10-07 17:57:48'),
(3764, 11, 'snbksO8sgaV1rndBybF0jTkvsP65im13', '2019-10-07 17:57:48', '2019-10-07 17:57:48'),
(3765, 11, 'weCpHihVqesEI0XYoKFWjxInbgHYTaVG', '2019-10-07 17:58:09', '2019-10-07 17:58:09'),
(3766, 11, 'E5C6QvnKgDuGtM6MfmRanV4zQsw4ZJIQ', '2019-10-07 17:58:09', '2019-10-07 17:58:09'),
(3767, 11, 'UzYAX7ZCny6fYWf5G9cOyLCY3C2qbd7k', '2019-10-07 17:58:09', '2019-10-07 17:58:09'),
(3768, 11, 'bG15TIOfL71Slaad6EMmKnZClwlts9H5', '2019-10-07 17:58:09', '2019-10-07 17:58:09'),
(3769, 11, 'WB2e3sfI4LxHF6RLArfqfjQG0Czy3yxU', '2019-10-07 18:00:10', '2019-10-07 18:00:10'),
(3770, 11, 'IhzXdpUqAEOiOA7TPofLot2quZtCCt0O', '2019-10-07 18:00:10', '2019-10-07 18:00:10'),
(3771, 11, '1dzgpXoi2xqT0wXxBr8B2qOBnkNTSKKV', '2019-10-07 18:00:10', '2019-10-07 18:00:10'),
(3772, 11, 'uS1ynANQNVbjqzwzqa6H33XPLGfhCJOT', '2019-10-07 18:00:10', '2019-10-07 18:00:10'),
(3773, 11, '2Ub2t0GVEzvYVIw0DZjfQlquPFwresXC', '2019-10-07 19:06:10', '2019-10-07 19:06:10'),
(3774, 11, 'OZzwJDCuk0W4qnQ5Dlpm9MZ7vFRAMH7r', '2019-10-07 19:06:10', '2019-10-07 19:06:10'),
(3775, 11, '0S586CEMleizUM1X8KjSrJWZ4qInriIu', '2019-10-07 19:06:10', '2019-10-07 19:06:10'),
(3776, 11, 'sFkGjyUgI5c7t0YRkc9YhmxHXqtY3Pta', '2019-10-07 19:06:10', '2019-10-07 19:06:10'),
(3777, 1, 'mvwSbrqkATgEmEZEgXCgyYiaQcyd979n', '2019-10-07 19:06:41', '2019-10-07 19:06:41'),
(3778, 1, 'wPbFhnEUZK3pB2K9EqitLcivGoQFY64t', '2019-10-07 19:06:42', '2019-10-07 19:06:42'),
(3779, 1, 'RHA1eEhgj1DxhtVF6QWXvLohupwQp1Xj', '2019-10-07 19:06:42', '2019-10-07 19:06:42'),
(3780, 1, 'Gj125dSnI7arX7vh1rqHQBOn8SkX7uZW', '2019-10-07 19:06:42', '2019-10-07 19:06:42'),
(3781, 1, 'tgY2oHuKwdTxA3Nulg43A57IPFCUttK7', '2019-10-07 19:06:42', '2019-10-07 19:06:42'),
(3782, 1, '8vgESabFyjCxWjUylmS9pLhBHMdYGf5T', '2019-10-07 19:06:42', '2019-10-07 19:06:42'),
(3783, 1, 'LHdQcXpnFh2wzEbhDpSjElPxh6MkvPLu', '2019-10-07 19:06:43', '2019-10-07 19:06:43'),
(3784, 1, 'ZgEmOD54sce427iWzhkXdM1m85HZ91k9', '2019-10-07 19:06:43', '2019-10-07 19:06:43'),
(3785, 11, '1XbjPljRJiDVtpHEz4dCSxtwOB7co14O', '2019-10-07 19:08:06', '2019-10-07 19:08:06'),
(3786, 11, 'DahtU8zn0rF2B29g2GKG7YNPm5YaUTOb', '2019-10-07 19:08:06', '2019-10-07 19:08:06'),
(3787, 11, 'wTNfhLArD5gvMCTMelZNHFiy2HlCjt0n', '2019-10-07 19:08:06', '2019-10-07 19:08:06'),
(3788, 11, '5OGIMrdpMGhwZejql3bckCXK0R3qt0Fz', '2019-10-07 19:08:06', '2019-10-07 19:08:06'),
(3789, 11, '7YlzX5Tldnkvp1yUQNOmTafgEm3QbPu8', '2019-10-07 19:12:10', '2019-10-07 19:12:10'),
(3790, 11, 'eqpmtxnVE1GcUp3C4vjpo70cGfVRL3Z6', '2019-10-07 19:12:10', '2019-10-07 19:12:10'),
(3791, 11, 'fUkPd5ktFymAtVO4gHxxRDayMZVS3jIm', '2019-10-07 19:12:10', '2019-10-07 19:12:10'),
(3792, 11, 'kE8nFkhCDrd7TjRG9f0LlaXpKo5YLb7v', '2019-10-07 19:12:10', '2019-10-07 19:12:10'),
(3793, 11, 'RDay6o5LNNhU5PdHvbhICjqXqcSiFaCB', '2019-10-07 19:15:24', '2019-10-07 19:15:24'),
(3794, 11, '7Cl33aeIeohNMC9JIfARRmG47gKBzaat', '2019-10-07 19:15:24', '2019-10-07 19:15:24'),
(3795, 11, 'xGeusE5aH1cFgUmZPnYcDylm4HMmp7Z4', '2019-10-07 19:15:25', '2019-10-07 19:15:25'),
(3796, 11, 'QB3m4CRIO3FVdKeAV6O3cJy5lY871huO', '2019-10-07 19:15:25', '2019-10-07 19:15:25'),
(3797, 11, 'kvdL64rN2tvK17ti9XGqZLQmVn2nEiBy', '2019-10-07 19:16:08', '2019-10-07 19:16:08'),
(3798, 11, '8HEeh4lutxDEDvKQqC4wTftlcj8HaHTq', '2019-10-07 19:16:08', '2019-10-07 19:16:08'),
(3799, 11, 'csGyxsbTM0vTplfWQ4uJx3GfpHp6kUYt', '2019-10-07 19:16:08', '2019-10-07 19:16:08'),
(3800, 11, '719I8naKNDsIkwMCvSRsBhDvG1rmm65J', '2019-10-07 19:16:09', '2019-10-07 19:16:09'),
(3801, 11, 'WBoiKHaJ8hncVOonL7hfabsWAjCLPepd', '2019-10-07 19:16:21', '2019-10-07 19:16:21'),
(3802, 11, 'fSuPc2pNxjZeECW3ntWpIQpMAv8PxUyt', '2019-10-07 19:16:21', '2019-10-07 19:16:21'),
(3803, 11, '4NylyQnUYjuYqR23zn3FikfHJgCLotx7', '2019-10-07 19:16:21', '2019-10-07 19:16:21'),
(3804, 11, 'sVCF6OmWKRjiYkNFlS7OAOwlDMuNXCT2', '2019-10-07 19:16:21', '2019-10-07 19:16:21'),
(3805, 11, 'tXuboNi4IyUvMUUnDO5BxYTJH6dh1KLJ', '2019-10-07 19:26:48', '2019-10-07 19:26:48'),
(3806, 11, 'cHFSO4xD0Z51NlOmviBMmqqupJ23xh2V', '2019-10-07 19:48:42', '2019-10-07 19:48:42'),
(3807, 11, 'WoUuhRV6xjqkLcGlgTUpJ2XMZn7yqiUq', '2019-10-07 19:49:08', '2019-10-07 19:49:08'),
(3808, 11, 'hy7i2TZLBNl8kuD8ausSsdAWSpHv4Wb6', '2019-10-07 19:51:58', '2019-10-07 19:51:58'),
(3810, 1, 'COFpUnkwqCE4ZopbjKEuFuxw5dA5eoVd', '2019-10-07 20:33:53', '2019-10-07 20:33:53'),
(3811, 1, '2ug0EH14eLT8SZEoyRUrPKEZVLLIZGBT', '2019-10-07 20:35:16', '2019-10-07 20:35:16'),
(3812, 1, 'Q3YNfJoxuwYkriUylvDGxBrCyZ9FWtWf', '2019-10-07 20:37:17', '2019-10-07 20:37:17'),
(3813, 1, 'rggdE9Xf9qd67iRFKQ18L4Jg6uEAKCAI', '2019-10-07 20:39:15', '2019-10-07 20:39:15'),
(3814, 1, '4u7WGE8C99DOmAF0GasAwuX62LhkLh8T', '2019-10-07 20:39:33', '2019-10-07 20:39:33'),
(3815, 1, '9Hdc0iR29e1Xs9mX5lMtwuJb1s10qGtm', '2019-10-07 20:39:51', '2019-10-07 20:39:51'),
(3816, 11, 'zuBpq1yQu2bKjCNqoKugnZhhDWo9866P', '2019-10-07 20:47:38', '2019-10-07 20:47:38'),
(3819, 1, 'QCn3gUP9ODAyTv6HILOjX3qtcMZPchxi', '2019-10-07 20:55:01', '2019-10-07 20:55:01'),
(3820, 11, 'z85iuV3FxC0qFfJpE6jH4u0ODiS4dXrT', '2019-10-07 20:56:01', '2019-10-07 20:56:01'),
(3822, 1, 'gVNjTZ5TGq2Rpbjb6QiLl7Ivcj3xMYHE', '2019-10-07 21:08:32', '2019-10-07 21:08:32'),
(3824, 1, 'lXfXyeDcsEZNe6i4qOMuPrFOpcQB6fTl', '2019-10-07 21:09:45', '2019-10-07 21:09:45'),
(3826, 1, '3YIQnUi0lHvta1SoCJckp29dQ4Swxkba', '2019-10-07 21:20:02', '2019-10-07 21:20:02'),
(3828, 1, 'HlW97nzUZ3fflVfBzXCPfBl7OcbScsha', '2019-10-07 21:21:37', '2019-10-07 21:21:37'),
(3830, 19, 'S1UcwjKsXS4rUCg8PPzUXYdgwomTw4YP', '2019-10-07 21:22:15', '2019-10-07 21:22:15'),
(3831, 11, 'GgN7wK0fbkkcZOG4CtbrV8C7Yeeh3HCT', '2019-10-07 21:25:58', '2019-10-07 21:25:58'),
(3832, 11, 'BReS8KqS98PFmQsFSqMwddXMFupVIO7Q', '2019-10-07 21:26:08', '2019-10-07 21:26:08'),
(3833, 11, '1Stp71XyuDuEZ7YpxSQ4qlyegSj1jMoZ', '2019-10-07 21:27:51', '2019-10-07 21:27:51'),
(3834, 11, 'HjSpAG7qWnf28eg51cJdah9y7C0Kd4y7', '2019-10-07 21:27:59', '2019-10-07 21:27:59'),
(3835, 11, 'X4G8OZ50LPWeRfT7iCtvqK4OJHefad4L', '2019-10-07 21:29:15', '2019-10-07 21:29:15'),
(3837, 1, '94Uh0Kg1NLRHUjpyjcLNKYMkngpahw7i', '2019-10-07 21:29:22', '2019-10-07 21:29:22'),
(3838, 1, '64bS9ipxVrl17IjQA6odhGFsGqgPd6dy', '2019-10-07 21:29:23', '2019-10-07 21:29:23'),
(3840, 19, 'QbZi5eLaZwYhGXs3HvlbDAcZTtd9OhOq', '2019-10-07 21:32:11', '2019-10-07 21:32:11'),
(3842, 8, 'auqapi4WJ8tI0ZREJEyyIg4EwwEOeB3O', '2019-10-07 21:33:17', '2019-10-07 21:33:17'),
(3843, 11, 'xgGa3pQZgjDVc3aOs2tWWkYgCyCDqtmg', '2019-10-07 22:08:50', '2019-10-07 22:08:50'),
(3844, 11, 'ySAp58rerKtr5y3dNboVmaeKjyl7wELh', '2019-10-07 22:08:57', '2019-10-07 22:08:57'),
(3845, 11, '3yu98wlasmq7CEZ3O1qKPdieUQKaI0KT', '2019-10-07 22:10:27', '2019-10-07 22:10:27'),
(3846, 11, 'bRhKWh39cc6XCNGsOzvRwo3lOGrLWZ3x', '2019-10-07 22:11:07', '2019-10-07 22:11:07'),
(3847, 11, 'zAse64hSivN4eufvmodmSuqMbuRPNRVj', '2019-10-07 22:11:11', '2019-10-07 22:11:11'),
(3848, 11, 'nGhtliD2QWEzrbIevKMhynGLkXizDTWu', '2019-10-07 22:12:52', '2019-10-07 22:12:52'),
(3849, 11, 'pBQhvGc5INFiZOKLlBflSLW4WHyg9dTh', '2019-10-07 22:13:06', '2019-10-07 22:13:06'),
(3850, 11, '7jCJqiGu6EB81KbrgBqnPneTC86RP5Gi', '2019-10-07 22:13:17', '2019-10-07 22:13:17'),
(3851, 11, 'RQN6KzkCPHOoJgDGvs23v2bx11peZyhh', '2019-10-07 22:15:00', '2019-10-07 22:15:00'),
(3852, 11, '3DPqvcnw9CfcTUYm0hpyZZxSJBxE0AQ7', '2019-10-07 22:15:21', '2019-10-07 22:15:21'),
(3853, 11, 'JjLMhsMro802etMciJYjND59B7nzS7l0', '2019-10-07 22:18:12', '2019-10-07 22:18:12'),
(3854, 11, 'FtucvwvopaFFDwJ1W6924oHeqNnSCnOH', '2019-10-07 22:18:21', '2019-10-07 22:18:21'),
(3855, 11, 'lfakxV23f6mh00TPUboskbE7qqT6TaWK', '2019-10-07 22:19:06', '2019-10-07 22:19:06'),
(3856, 11, 'J91llJlrUqBMAoomfH4czIS12zK7aXEb', '2019-10-07 22:20:07', '2019-10-07 22:20:07'),
(3857, 11, 'CZ4c02DFODZkyOEQVACtGlQLklo8fuc8', '2019-10-07 22:22:17', '2019-10-07 22:22:17'),
(3858, 11, 'zcWYGZAHtuYEuaJUME0ALqbGmQ5QbYyT', '2019-10-07 22:25:38', '2019-10-07 22:25:38');
INSERT INTO `persistences` (`id`, `user_id`, `code`, `created_at`, `updated_at`) VALUES
(3859, 11, 'm9reGXgKkDYn0QaU7d36ifqIn6PXoUhV', '2019-10-07 22:41:50', '2019-10-07 22:41:50'),
(3860, 11, 'zxC0iTUYtE5NAaE41CTDznDhMNeMzlK1', '2019-10-07 22:55:29', '2019-10-07 22:55:29'),
(3861, 11, 'vVogVJ6l8SjT7qTqDIeXMCoXdFt3BRWT', '2019-10-07 22:56:44', '2019-10-07 22:56:44'),
(3863, 1, 'Z8X8QK1Nru6VGq0SiL8MynD2mSbcnHdm', '2019-10-08 23:56:45', '2019-10-08 23:56:45'),
(3864, 1, 'M8j9r4ce8qiuEMqGgFKPN5CoQrnlUrBk', '2019-10-09 22:55:10', '2019-10-09 22:55:10'),
(3865, 1, 'xjffYupbsynu8yIumIpHUSoWGo3WWzXJ', '2019-10-09 22:55:10', '2019-10-09 22:55:10'),
(3866, 1, 'CfwaAhktnaq8OKzACO9N6sotUDjXoa1R', '2019-10-09 22:55:10', '2019-10-09 22:55:10'),
(3867, 1, 'BaURqkLgFh3hjOl4WrU52mbQI5tdK6NC', '2019-10-09 22:55:11', '2019-10-09 22:55:11'),
(3868, 11, 'LF6zACfau0MZJEZbrvyAUFvownRkicBr', '2019-10-10 15:27:58', '2019-10-10 15:27:58'),
(3869, 11, 'fHqxB7EGfk9ztXKevScy1tNuINoi22jM', '2019-10-10 15:28:17', '2019-10-10 15:28:17'),
(3870, 11, 'WWiFq0vK2vNsBpAzBqQSm9L9XWrX6FX8', '2019-10-10 15:28:17', '2019-10-10 15:28:17'),
(3871, 11, 'vZQl7jHxWfAiZXkO3e9Kv7QdlHjrnfww', '2019-10-10 15:28:17', '2019-10-10 15:28:17'),
(3872, 11, 'IiW3T0Eg887ZuqNJHeyXEUoTIAzs9Tr1', '2019-10-10 15:28:18', '2019-10-10 15:28:18'),
(3873, 11, 'mbt47S8BBN7AopzZJsFKZ4QtE1iUxPUn', '2019-10-10 15:28:28', '2019-10-10 15:28:28'),
(3874, 11, 'cm9Jbkm7dNJZnnNiVKsccvIcsEKalDue', '2019-10-10 15:28:29', '2019-10-10 15:28:29'),
(3875, 11, 'ifqsB7ik4dLOY0UE4FHy68641bJudH5Q', '2019-10-10 15:28:38', '2019-10-10 15:28:38'),
(3876, 11, 'v8ofY6hEWXzSoZzyX1I4qGvOepTPdl3q', '2019-10-10 15:28:38', '2019-10-10 15:28:38'),
(3877, 11, 'cGN5AOB4EiQ1rUb3uhaullGJY9Rmpdfw', '2019-10-10 15:28:45', '2019-10-10 15:28:45'),
(3878, 11, '6SGj9OSsge2BW5gjcaoakN7Y2Q8uo1sK', '2019-10-10 15:28:45', '2019-10-10 15:28:45'),
(3879, 11, 'b35civnTEkjCWOQMTH3Ya4Iwj05RgxKD', '2019-10-10 15:28:50', '2019-10-10 15:28:50'),
(3880, 11, 'IfUrwfZwlRaBjdOnk0fx8iDuobgylZIx', '2019-10-10 15:28:50', '2019-10-10 15:28:50'),
(3881, 11, 'bqHRGUnQtUgpy1Ubz7fzQ95hVXvrzITG', '2019-10-10 15:53:17', '2019-10-10 15:53:17'),
(3882, 11, 'fNfK7JMUwpVzE4AuLFgQtiEgoQCfsTge', '2019-10-10 15:53:18', '2019-10-10 15:53:18'),
(3883, 11, 'qAGikuK1Bx64RCdIVUJxsISp3WbYHpyp', '2019-10-10 15:53:18', '2019-10-10 15:53:18'),
(3884, 11, 'x7uWzggoaivBwDngyJE2MXlhzuKDWNnF', '2019-10-10 15:53:18', '2019-10-10 15:53:18'),
(3885, 11, 'qBGFUOtZtWsnZuXxQoTPluAyRL3GQV8N', '2019-10-10 17:33:52', '2019-10-10 17:33:52'),
(3886, 11, 'swfa8iwSE8VdKjLa3jhipGiy2sXiUPS9', '2019-10-10 19:33:38', '2019-10-10 19:33:38'),
(3887, 11, 'aRhI2DLKTCkXyJLwAJDN7GwHDXXzSDye', '2019-10-10 19:33:42', '2019-10-10 19:33:42'),
(3888, 11, 'OByhqfTKgs2vOBmAuSoWPK4RUpOAu7Fr', '2019-10-10 19:35:46', '2019-10-10 19:35:46'),
(3889, 11, 'yIBWRdUULawINdcdmhPAAFhbI0Xpi1y3', '2019-10-10 19:35:46', '2019-10-10 19:35:46'),
(3890, 11, 'p4WXQDkLFSqM4J2rCq5OJQZMEXxXlWlf', '2019-10-10 19:35:46', '2019-10-10 19:35:46'),
(3891, 11, 'vw35b9EXwrf9sOOF65ul2FlhIYXHOX4y', '2019-10-10 19:35:47', '2019-10-10 19:35:47'),
(3892, 11, 'cYEYbv5zdntvfIjzNH4KR5QH0VOsDnt8', '2019-10-10 19:38:00', '2019-10-10 19:38:00'),
(3893, 11, 'RpLtRjduAhS5dZnFbcuJB4O0JfTGSH1c', '2019-10-10 19:38:00', '2019-10-10 19:38:00'),
(3894, 11, 'b2w9utesI8Nd83xmf3LROOyQVZiwB9Se', '2019-10-10 19:40:57', '2019-10-10 19:40:57'),
(3895, 11, 'yare0zkbVDGFaeJBva9terA8ytalO4C8', '2019-10-10 19:41:58', '2019-10-10 19:41:58'),
(3896, 11, 'ovG3kSf6D2XPibGeixoZsGEJij9l7qPf', '2019-10-10 19:41:58', '2019-10-10 19:41:58'),
(3897, 11, 'qVvYHuKRLaM8FmAoN4pfQoVDB8pjmn8B', '2019-10-10 19:45:21', '2019-10-10 19:45:21'),
(3898, 11, 'yExhFoR24uGN8faaanKADZj0hhYwF2mk', '2019-10-10 19:45:21', '2019-10-10 19:45:21'),
(3899, 11, 'fUueyOZxbS7sMcdT8zjoPQF6E3l4XZFK', '2019-10-10 19:45:31', '2019-10-10 19:45:31'),
(3900, 11, 'FJ86xF2h4wxTViIQOGjHNmF9ZV9SJixw', '2019-10-10 19:45:32', '2019-10-10 19:45:32'),
(3901, 11, 'RCQGtNVglZH3JqDtGyyMHakDronLHkak', '2019-10-10 19:48:25', '2019-10-10 19:48:25'),
(3902, 11, 'gtucc80sjDV7Ki0E7rcgiCN1h1uwhOUH', '2019-10-10 19:48:25', '2019-10-10 19:48:25'),
(3903, 11, 'uwE5syAXbiMOlIfkdHb4tf3vcw2DkgfM', '2019-10-10 19:48:25', '2019-10-10 19:48:25'),
(3904, 11, 'S0GJEM78CpiWv4MJFN9ZdnJrK6cATjXi', '2019-10-10 19:48:26', '2019-10-10 19:48:26'),
(3905, 11, 'Bm08QbGjlR6QHPjGsquEWFRUUnVL83rx', '2019-10-10 19:48:33', '2019-10-10 19:48:33'),
(3906, 11, 'i4w2ywqGZeZaQXJ5K3uptkkSojGPwnhl', '2019-10-10 19:48:33', '2019-10-10 19:48:33'),
(3907, 11, 'tDLN64vaobluI7fn1HbCGDnq6RyLwZup', '2019-10-10 19:48:33', '2019-10-10 19:48:33'),
(3908, 11, 'v6Ilv1F9UUg7RcxhXYf29zPVY7YkbwRw', '2019-10-10 19:48:33', '2019-10-10 19:48:33'),
(3909, 11, '0GwovAXPXqbp0nHVznZ9S6G5IGZnFwaC', '2019-10-10 19:48:39', '2019-10-10 19:48:39'),
(3910, 11, 'MUVFQFfg2BkOxoo25U71gNDStaxG7N0i', '2019-10-10 19:48:39', '2019-10-10 19:48:39'),
(3911, 11, 'Wgt0d3JcyFeIrimMQZ1EkUYTCRxhcvqT', '2019-10-10 19:48:40', '2019-10-10 19:48:40'),
(3912, 11, 'Y0ZVh4ThCZ2Z0gJwUv7mno22Y4SLkxNQ', '2019-10-10 19:48:40', '2019-10-10 19:48:40'),
(3913, 11, 'CGhehfhQafkp0z8Vvtx7kUFPAfxlORN1', '2019-10-10 19:48:46', '2019-10-10 19:48:46'),
(3914, 11, 'Lva1dgzLQJ3GkHDIyS5xNwFKGdYfk0wz', '2019-10-10 19:48:46', '2019-10-10 19:48:46'),
(3915, 11, 'OEGdFYFFns7MQmv5R4EvOayRtw1UlSW5', '2019-10-10 19:48:47', '2019-10-10 19:48:47'),
(3916, 11, '3xuOKxNhK9pvl341xuko6ULQrPRaD06Q', '2019-10-10 19:48:47', '2019-10-10 19:48:47'),
(3917, 11, 'OVrezXgefM1fwYqq2uyN94PfqLF7O23H', '2019-10-10 20:58:47', '2019-10-10 20:58:47'),
(3918, 11, 'xuYHHLqfoYmM3uCWdlleheGpigh0duXf', '2019-10-10 21:27:40', '2019-10-10 21:27:40'),
(3919, 11, 'jZ28wwB5lrvf1fUZIbrWntc5lce4agj9', '2019-10-10 21:27:40', '2019-10-10 21:27:40'),
(3920, 11, 'KpmKlGuN1q7N8aXLQRy46NbVOzbJXPXL', '2019-10-10 21:27:40', '2019-10-10 21:27:40'),
(3921, 11, 'EQgs9apSFY8K7uK3JBnYHZcaWBVEHQfX', '2019-10-10 21:27:40', '2019-10-10 21:27:40'),
(3922, 11, 'L7koyX09XqSpM2A8DTgQLW52gtA0lyg1', '2019-10-10 21:27:44', '2019-10-10 21:27:44'),
(3923, 11, 'xzhR00JhK1nhb6vzMkTJwLf52LygPraP', '2019-10-10 21:27:44', '2019-10-10 21:27:44'),
(3924, 11, 'dxQr9SJ51MXfTcUkfzMxZ1qGj96KQ2sX', '2019-10-10 21:27:44', '2019-10-10 21:27:44'),
(3925, 11, 'x5uZ97zH7hmZq1bNQRk8pV5Y7rMOqNTu', '2019-10-10 21:27:44', '2019-10-10 21:27:44'),
(3926, 11, 'xPMvku2JtXRWFJx08zAf6EhPwFtS8Es2', '2019-10-10 21:27:48', '2019-10-10 21:27:48'),
(3927, 11, 'C0G4cKKHu3c8FHBSrCJ56WdqZuaDX1rE', '2019-10-10 21:27:48', '2019-10-10 21:27:48'),
(3928, 11, 'qNYfHWSA4AcY5QlSA9vxAKr6E4ElWj4I', '2019-10-10 21:27:49', '2019-10-10 21:27:49'),
(3929, 11, '93PQbZBvXipcy9AgEKcSVcRNBJwk8T3I', '2019-10-10 21:27:49', '2019-10-10 21:27:49'),
(3930, 11, 'sM6iONP5A3N8TGvIWjwFhI8vpa2niQqY', '2019-10-10 21:27:53', '2019-10-10 21:27:53'),
(3931, 11, '3D6jl3OnOEhgEcKXUyh5n70g994urZTz', '2019-10-10 21:27:53', '2019-10-10 21:27:53'),
(3932, 11, 'AVrUu7mSvGQr5VeKJfAmZ3NfMTea7TnF', '2019-10-10 21:27:53', '2019-10-10 21:27:53'),
(3933, 11, 'd5Q05kaav7SVm4tlCDqV6srl7eBbyjru', '2019-10-10 21:27:53', '2019-10-10 21:27:53'),
(3934, 11, 'cdbPFaTrbznFfbZ6hwT6YSZLUDRuPddO', '2019-10-10 21:27:59', '2019-10-10 21:27:59'),
(3935, 11, 'uxhzWDrbNAmJvqw3uUD0KhJbenlzoorG', '2019-10-10 21:27:59', '2019-10-10 21:27:59'),
(3936, 11, 'lZldl7XLsLfqHQ534HaRVDbaG1IazjyD', '2019-10-10 21:27:59', '2019-10-10 21:27:59'),
(3937, 11, 'FtNVd9M1n6EJGuCmFz4278pDT5TPVXfS', '2019-10-10 21:27:59', '2019-10-10 21:27:59'),
(3938, 11, 'ZXLB3VN6FayHayROt5oyB4a2dlV1RJUw', '2019-10-10 21:28:19', '2019-10-10 21:28:19'),
(3939, 11, '1s56TVooox2aMnrKc3gxzP750jzNYCkl', '2019-10-10 21:40:21', '2019-10-10 21:40:21'),
(3940, 11, 'gpSXeOROkKuS5IjgDDFFCACDK6QrndZs', '2019-10-10 21:40:27', '2019-10-10 21:40:27'),
(3941, 11, 'LGv7xCHh2HEf1KMCg4vsQFUZnAUFzwMO', '2019-10-10 21:40:27', '2019-10-10 21:40:27'),
(3942, 11, 'd3WmMxfh24SoafbgaO5byzG2Jw3rSIln', '2019-10-10 21:40:35', '2019-10-10 21:40:35'),
(3943, 11, 'YWWAE8HVOL3CywtmBhwsDYSZ1G06a1bo', '2019-10-10 21:40:35', '2019-10-10 21:40:35'),
(3944, 11, 'MU2fcd7srTdSjLdUA7xFeNVIcaTmpVok', '2019-10-11 13:59:56', '2019-10-11 13:59:56'),
(3945, 11, 'D8N1PCqof42qp2QKfhV9Sxq1r1JvgvRz', '2019-10-11 15:07:59', '2019-10-11 15:07:59'),
(3946, 11, 'HkeehHdMOBqO1ClsIzcUhny04tzylW3N', '2019-10-11 15:26:58', '2019-10-11 15:26:58'),
(3947, 11, 'TLEWJSD7SVxaEpuZg8K0ztVSZfqTgt80', '2019-10-11 15:26:58', '2019-10-11 15:26:58'),
(3948, 11, 'iTukQ7C7hUQJZHgF3NF7byzSlb4IAYCo', '2019-10-11 15:26:59', '2019-10-11 15:26:59'),
(3949, 11, 'QZ3L2VpGC8JR52g8tErFLIGZOrC131dh', '2019-10-11 15:27:00', '2019-10-11 15:27:00'),
(3950, 11, '8XiebyLvMEefC3YWh6k5n7g4xOwcJ295', '2019-10-11 15:27:28', '2019-10-11 15:27:28'),
(3951, 11, 'WnY8gH09MJ2fsQQTpKSdLoF13kWmLPrO', '2019-10-11 15:27:28', '2019-10-11 15:27:28'),
(3952, 11, 'EAA9VAyhCEuoJp6shCgs3ayfia0l8Wym', '2019-10-11 15:27:28', '2019-10-11 15:27:28'),
(3953, 11, 'wtegCTWevQuBT93XhISbc0F8TCnNiCvL', '2019-10-11 15:27:28', '2019-10-11 15:27:28'),
(3954, 11, 'lcvhA5Xz8NBh13teXzEGojx46nlkaXSB', '2019-10-11 16:08:09', '2019-10-11 16:08:09'),
(3955, 11, '90ApOKpRovspwlM1AxKYXtB5nDUM3ccT', '2019-10-11 16:08:09', '2019-10-11 16:08:09'),
(3956, 11, 'pBzBToCNHqx9hrb0ObWjDU89A2pPQ0ow', '2019-10-11 16:08:09', '2019-10-11 16:08:09'),
(3957, 11, 'GEwVuwfbfPabnAPoATbVuC4YqvvhVWmM', '2019-10-11 16:08:10', '2019-10-11 16:08:10'),
(3958, 11, 'pPzlfq3YEdzuukbCmmXZxZYwaqeyJqFU', '2019-10-11 17:12:41', '2019-10-11 17:12:41'),
(3959, 11, 'XHsXuKQ6kKGrTryKgjLGE5Gjv55F2yd4', '2019-10-11 17:12:41', '2019-10-11 17:12:41'),
(3960, 11, '6Nx8HnLYZaEbVMcvPSDeEAWF55Mf8Rcf', '2019-10-11 17:12:45', '2019-10-11 17:12:45'),
(3961, 11, 'lZXeyRli08PpBOFjQr9MdMJMO78a0b4s', '2019-10-11 17:12:46', '2019-10-11 17:12:46'),
(3962, 11, 'rAg6tDW51J2UfywsLOXpjzwev4VW2Zyy', '2019-10-11 17:12:49', '2019-10-11 17:12:49'),
(3963, 11, 'oKJWPD62yD0GHvZwRGdbRdUF3SBt7301', '2019-10-11 17:12:50', '2019-10-11 17:12:50'),
(3964, 11, 'Pi4YEH7ebxfj9R5umFPoypQrSyDVasSd', '2019-10-11 17:12:53', '2019-10-11 17:12:53'),
(3965, 11, 'RNfCAXV9BCI1TtkZbpp2aqRXCTGRK5FM', '2019-10-11 17:12:53', '2019-10-11 17:12:53'),
(3966, 11, 'qBprRD53d5zeexi5Ha3SEERFvbIGLUEk', '2019-10-11 17:12:57', '2019-10-11 17:12:57'),
(3967, 11, '74ZysGMvEYctEHkQ3sXVbvYq4xAAJhIb', '2019-10-11 17:12:57', '2019-10-11 17:12:57'),
(3968, 11, 'cR77Gn2Us8XXHu2R0ryJ3vuv7LSvZEcB', '2019-10-11 17:29:38', '2019-10-11 17:29:38'),
(3969, 11, '7s3OpzvUOyRZ8fRbHZvjo2ObOt7uUgF5', '2019-10-11 17:29:38', '2019-10-11 17:29:38'),
(3971, 1, '2p1KOyIOYBdGWu5B8ypckm0viqlU6shT', '2019-10-11 20:09:14', '2019-10-11 20:09:14'),
(3972, 11, '2DZ9iCejAYR4K9yrsXI0Eco5oOYNdrXD', '2019-10-11 20:55:24', '2019-10-11 20:55:24'),
(3973, 11, 'BDsQ8xUZXNcaTPSYP4ewqDAftOp945id', '2019-10-11 20:55:43', '2019-10-11 20:55:43'),
(3974, 11, 'H32e6JrAYKcG5WipnOTUZYc74ZJd0v97', '2019-10-11 20:55:51', '2019-10-11 20:55:51'),
(3975, 11, 'iImO8BXeLKXxCYVOnx9M9m0PhewcvMNm', '2019-10-11 21:03:45', '2019-10-11 21:03:45'),
(3976, 11, 'Tr6x5k7lPQjo91w26xPSihQxLhUqCfzk', '2019-10-11 21:04:05', '2019-10-11 21:04:05'),
(3977, 11, 'DNkNAjS6lApzKgMeUaILv3gxcMwUlx4Z', '2019-10-11 21:04:40', '2019-10-11 21:04:40'),
(3978, 11, 'llCykA9d4ahuQMU64OjL61yM9UqaEabu', '2019-10-11 21:05:01', '2019-10-11 21:05:01'),
(3979, 11, 'FqL2ovLFfqBfE7FzDyiIPanbFWujtqvO', '2019-10-11 21:05:09', '2019-10-11 21:05:09'),
(3980, 11, '2pMlhg60fN5HD2NjYdv2fyk3pMYxYp5l', '2019-10-11 21:05:12', '2019-10-11 21:05:12'),
(3981, 11, 'ruRuqOU862jLc2oN68q6LWT5nUja9CoH', '2019-10-11 21:07:00', '2019-10-11 21:07:00'),
(3982, 11, 'maXuzaYLrjAokpOMuWBEwheOqf4h9DGi', '2019-10-11 21:07:05', '2019-10-11 21:07:05'),
(3983, 11, 'Y7Y10j99a9qv4KnekooTuM0SVMeoxQfj', '2019-10-11 21:07:20', '2019-10-11 21:07:20'),
(3984, 11, 'Em01ndxAfLvaxEm2Yb44hB8uhRr1SlZb', '2019-10-11 21:07:20', '2019-10-11 21:07:20'),
(3985, 11, '2O5XRqkHJDynPk8BMtzj2RiZ7Jxwinon', '2019-10-11 21:07:41', '2019-10-11 21:07:41'),
(3986, 11, 'MnFtdrAxRevPSVzPIrMFH3VvMiTBfE2B', '2019-10-11 21:07:42', '2019-10-11 21:07:42'),
(3987, 11, 'eTPh4XQfZWJjN9do3pxKQpV1MMCF4uzE', '2019-10-11 21:07:48', '2019-10-11 21:07:48'),
(3988, 11, 'LpLbcRJpEGwPFtWRO1ceHuxJZugnrCGu', '2019-10-11 21:07:49', '2019-10-11 21:07:49'),
(3989, 11, 'ikQgTxHUYY7Uz4O0OaKYC5D3T7W7Zxai', '2019-10-11 21:07:52', '2019-10-11 21:07:52'),
(3990, 11, 'IXUBo8CsgrQWpKI8AEkyOaBtAhUELG3Z', '2019-10-11 21:07:53', '2019-10-11 21:07:53'),
(3991, 11, 'c8eDba1DaTBTgpEAyvCUeEJn6gMN0mXX', '2019-10-11 21:36:30', '2019-10-11 21:36:30'),
(3992, 11, '8R97Jbiq7aNM8eb9ITPJVFTVFSmE8PNX', '2019-10-11 21:47:43', '2019-10-11 21:47:43'),
(3993, 11, 'MtsqAr2hKHPJmDt7MSO9x45m6KsjxKU1', '2019-10-11 23:20:06', '2019-10-11 23:20:06'),
(3994, 11, 'eBKB7LINPWzpOLND2VZ8pH2F2qNHVpxn', '2019-10-11 23:22:06', '2019-10-11 23:22:06'),
(3995, 11, 'rqwpvBLGvlif3eZ5gIBUj9Znsxma1ec3', '2019-10-16 17:26:35', '2019-10-16 17:26:35'),
(3996, 11, 'bFP7uvSbUYsQD0rzWUkfXcZyXYqrgKTw', '2019-10-16 17:26:50', '2019-10-16 17:26:50'),
(3997, 11, 'hFRV9dsrYxsQZL0e74ECPajmTOR5viuI', '2019-10-16 17:26:50', '2019-10-16 17:26:50'),
(3998, 11, 'WG0dG6r3Q4ZHXnzcSCi64v8466gQISd6', '2019-10-16 17:26:50', '2019-10-16 17:26:50'),
(3999, 11, '8dSATMuZtUGtLxymD2IKTrOzfXBAXyRV', '2019-10-16 17:26:52', '2019-10-16 17:26:52'),
(4000, 11, 'or2UeDWtWyRXxHDpVOoaKKVM8MgVRGDe', '2019-10-16 17:28:42', '2019-10-16 17:28:42'),
(4001, 11, 'pWcaZS15LyCVoloxOzlaDU8n4VnZ2IQj', '2019-10-16 17:28:42', '2019-10-16 17:28:42'),
(4002, 11, 'fg2biWDjEenyWMtUABkPMkcijf2BM9Yf', '2019-10-16 17:28:42', '2019-10-16 17:28:42'),
(4003, 11, 'Yd9zg4c2PzErt8wGnDocN6ZPq6gTZ9T5', '2019-10-16 17:28:43', '2019-10-16 17:28:43'),
(4004, 11, 'cB1MH875G7TXuCV7OiiqGi13VEovhMwK', '2019-10-17 16:22:42', '2019-10-17 16:22:42'),
(4005, 11, '3kRiN8FPxZtSWZ0xgVcKirH0ZNDKZwhv', '2019-10-17 16:22:54', '2019-10-17 16:22:54'),
(4006, 11, 'HKsdkpgUaiS2q6dS7cyfh0enW5Q7erUu', '2019-10-17 16:22:56', '2019-10-17 16:22:56'),
(4007, 11, '0YDBaZAHJn9x90fvhQ9SoBAbrlXABt6b', '2019-10-17 16:23:03', '2019-10-17 16:23:03'),
(4008, 11, 'rsHOiuHfAFUhOqiQM7nduNT8BXCdmfei', '2019-10-17 16:23:04', '2019-10-17 16:23:04'),
(4009, 11, 'eNuB6frslJbGIGhOzAnjeT7PvJ8OCNqr', '2019-10-17 16:24:27', '2019-10-17 16:24:27'),
(4010, 11, '9xpeI3K81MNEIhTXKjFeMdeDwuhMNtMx', '2019-10-17 17:30:13', '2019-10-17 17:30:13'),
(4011, 11, '8NghJ6tgYxeIKlRCJf3bQ8fWsIMOphIA', '2019-10-17 17:30:13', '2019-10-17 17:30:13'),
(4012, 11, 'PC6cUevysvgdRj08canxJPtFkoaQFMDc', '2019-10-17 17:30:13', '2019-10-17 17:30:13'),
(4013, 11, 'WOkhcQv8pz9DKrhSURWYIEQ4kYJ6AWqr', '2019-10-17 17:30:14', '2019-10-17 17:30:14'),
(4014, 11, 'cmkwLgXeRyIcC9qlXYBIMZTP6Qyechsy', '2019-10-17 20:44:59', '2019-10-17 20:44:59'),
(4015, 11, 'q2SLDOIGUjwL378sISbO3yrSlutn9LKz', '2019-10-17 20:44:59', '2019-10-17 20:44:59'),
(4016, 11, 'TFCyqWunsW0UJvm9SFryFsLQQokKIzP0', '2019-10-21 21:15:28', '2019-10-21 21:15:28'),
(4017, 11, 'eL9A9qjEG8t9xI7Suk0P2PmvjUwkw8y1', '2019-10-21 21:16:26', '2019-10-21 21:16:26'),
(4018, 11, 'FIPAS2IkbA3miIcp6UToBWLLCwosUqKG', '2019-10-21 21:16:26', '2019-10-21 21:16:26'),
(4019, 11, 'ArR2Mze6GGZoyv6wAYuPaV6UeVm09kPl', '2019-10-21 21:19:02', '2019-10-21 21:19:02'),
(4020, 11, 'XM52sDLoZIFKcEMZcSe2TJBCo7b7Qgbh', '2019-10-21 21:19:03', '2019-10-21 21:19:03'),
(4021, 11, '2ICWKBTi5kFpMa5jS3vH7KfjnWB3JLK8', '2019-10-21 21:19:12', '2019-10-21 21:19:12'),
(4022, 11, 'kJQRf4t1MKJZ3SSyXeoYqCDRqQphcirh', '2019-10-21 21:20:02', '2019-10-21 21:20:02'),
(4023, 11, '6bVyFok2C6GujnVK4W7I3zVNuFFJSfL6', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4024, 11, 'xILb5TEitBVBvUSHPPyxIemGAIMHWpLB', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4025, 11, '2w7MtUwZiSwtOLPAyXxnqrKqKLU4fUjv', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4026, 11, 'Q4eQs9hTnlrJAvv8LpVRFSezGD7Z93xS', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4027, 11, 'nemFNHJbJqQEFmsH6fcAUwlfXSTqT2VO', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4028, 11, 'axUEPAsZMnVjS78Kp7pcDAVOCmNe2jwp', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4029, 11, 'wjatARveYO6sbsp5arZap57oLennrMIR', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4030, 11, 'DxurhJWLR2S5TGjLEaglblQ7mSeymoe9', '2019-10-21 21:20:03', '2019-10-21 21:20:03'),
(4031, 11, 'FmloLTb0Phw7MqYMBXRSJ68IfdCdUT14', '2019-10-21 21:20:04', '2019-10-21 21:20:04'),
(4032, 11, 'SVFuxpIGP2ZYBsSJMMNU2T4UhppIHAjZ', '2019-10-21 21:20:04', '2019-10-21 21:20:04'),
(4033, 11, 'cSxfIjVluQgGLCvSVeo4jAd1qzw5N3KZ', '2019-10-21 21:20:05', '2019-10-21 21:20:05'),
(4034, 11, 'whwb9AWftMOS9uvpz60sLEQdPHo8v4tS', '2019-10-21 22:00:15', '2019-10-21 22:00:15'),
(4035, 11, 'NrEPDsK69MPEKvNAoIcmJs4kpCXOgwd7', '2019-10-21 22:00:15', '2019-10-21 22:00:15'),
(4036, 11, 'm5CljeuXMqdOSzR9tiu5SZ1iIL9LJGDY', '2019-10-21 22:57:46', '2019-10-21 22:57:46'),
(4037, 11, 'Uz3WxavZLRY1uT9fYVmTfiNSBrRJLjBi', '2019-10-22 14:00:43', '2019-10-22 14:00:43'),
(4038, 11, 'fKIUfghLv2jn2ShGL1DOFSgKg0zAnflE', '2019-10-22 14:00:43', '2019-10-22 14:00:43'),
(4039, 11, '4yUcs86uHcp3ykH846BEFrAGumX8YnFn', '2019-10-22 14:00:43', '2019-10-22 14:00:43'),
(4040, 11, 'lCnVM0c6N2igav0WiTRPomfRjIcRcrw4', '2019-10-22 14:00:43', '2019-10-22 14:00:43'),
(4041, 11, 'p7n6HLaij0YdoonqamNKEn5xDRk4yV8k', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4042, 11, 'QEgD97hpgHNq3nYPj7cMjgfQUolrEiXR', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4043, 11, 'HZD0jMnOhMqalQmTgwJUP3igrHtUbGp5', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4044, 11, 'qqKO3w6NkAZjhSmIbPvEu3sAMaM0gSD0', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4045, 11, 'rgJRfZv6cGF5o1PPlQoJ1YjTXVt2z1g1', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4046, 11, 'fErISddFOHix6RQMo3vY9RbCC5O9luyo', '2019-10-22 16:27:15', '2019-10-22 16:27:15'),
(4047, 11, 'ao5U458Np42zotejCkvCZHqFe44tcEDx', '2019-10-22 16:27:16', '2019-10-22 16:27:16'),
(4048, 11, 'Dwd3xx3TfXLxC4o4ugYRRoVIRsbjKEWG', '2019-10-22 16:27:16', '2019-10-22 16:27:16'),
(4049, 11, 'VfIx9BZQa5p2kyC8IvNYNaoWFEpfx1Bp', '2019-10-22 16:27:25', '2019-10-22 16:27:25'),
(4050, 11, 'gca1vsTFNwEvohCBqShrJrVT79NYHYXp', '2019-10-22 16:27:25', '2019-10-22 16:27:25'),
(4051, 11, 'ZRBxnNGOZilyX9cmHfceQIM3KYlDrSZz', '2019-10-22 16:27:25', '2019-10-22 16:27:25'),
(4052, 11, 'cAt4w9ydOdkMNq6FPJhIktR4TXawjRuZ', '2019-10-22 16:27:25', '2019-10-22 16:27:25'),
(4053, 11, 'q4XGxzRlmT6vyhHBMwFaDY3sFXwJ1TcG', '2019-10-22 16:27:25', '2019-10-22 16:27:25'),
(4054, 11, 'BWBrhQd4Vgb5DARDj4ShPxYFZQ5G5yeL', '2019-10-22 16:27:26', '2019-10-22 16:27:26'),
(4055, 11, 'T5rM4o7ie6gRZ1DTT47XK8bFXXtROr9r', '2019-10-22 16:27:26', '2019-10-22 16:27:26'),
(4056, 11, '9w3bsgZguytSC7aCmWkRnayICg8dao16', '2019-10-22 16:27:26', '2019-10-22 16:27:26'),
(4057, 11, 'e2PmSQeBmHX9O29pu1NaEljpgMhzKkQ5', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4058, 11, 'IMkHW858UFBY2Ni8bj4QXMjRIewPAXix', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4059, 11, 'COX6Y5Q83r67jZvByKLjDb3crZ4UOqL0', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4060, 11, 'RwWHeaMd4E3RjISaU3xHt5c9cYRXOseO', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4061, 11, 'OtzM4BqlYaDwR6OXFUj3rTLov2E48iwE', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4062, 11, 'PBYARoBcJdpW858ikPOWv9B3RlqeosjM', '2019-10-22 16:27:53', '2019-10-22 16:27:53'),
(4063, 11, 'QtBWWXT3xFaRiuD2oNMNi9w0WByg7G9w', '2019-10-22 16:27:54', '2019-10-22 16:27:54'),
(4064, 11, '7RucnvQlcNmkC5eVICsbZZ6gABi2q7jm', '2019-10-22 16:27:54', '2019-10-22 16:27:54'),
(4065, 1, 'HZ5XvvBHRwTZskBJ2lTxf2YFfxnndwB4', '2019-10-22 16:39:22', '2019-10-22 16:39:22'),
(4066, 1, 'ZJg3kpglU5nKHFOCpI2VgMGaVLbFM2Q0', '2019-10-22 16:40:09', '2019-10-22 16:40:09'),
(4067, 1, 'FpJouScBY8oP2IrkJEUiHUWczMpRfs9C', '2019-10-22 16:41:24', '2019-10-22 16:41:24'),
(4068, 1, 'COhndpOAM3yzulQp2wRcdi0mfu7q7qhM', '2019-10-22 16:41:24', '2019-10-22 16:41:24'),
(4069, 1, 'JWDyB34XDlVYfK5U3fzZvolSZiU0UiJp', '2019-10-22 16:41:25', '2019-10-22 16:41:25'),
(4070, 1, 'NZQG8y6eapSnDkmRwFV4M0cxw7jH9dND', '2019-10-22 16:41:26', '2019-10-22 16:41:26'),
(4071, 1, 'YbJ4w8qgpQDjYAs8cF8oPjRP5NijsFFv', '2019-10-22 16:41:53', '2019-10-22 16:41:53'),
(4072, 1, 'cGr8cuDaVbP2MIsgdZ35RbCFLQMv6zQs', '2019-10-22 16:41:53', '2019-10-22 16:41:53'),
(4073, 1, 'dZbB1uMRopBNRp5uierwxl85fJrKkZFb', '2019-10-22 16:41:53', '2019-10-22 16:41:53'),
(4074, 1, 'Cyoeu6zbcQyccM7oqi2RbH4fLFN6BsLT', '2019-10-22 16:41:54', '2019-10-22 16:41:54'),
(4075, 1, 'NrMFpSHBdlb7NkFtuTnyYwL6JafvGQrC', '2019-10-22 16:42:30', '2019-10-22 16:42:30'),
(4076, 1, 'nJ4VSc7C27M4QBZOJ7JX8RBW982RJWcL', '2019-10-22 16:42:30', '2019-10-22 16:42:30'),
(4077, 1, 'GZ5efyd3Lh7BhCV7McEKsoJX30SjAQjR', '2019-10-22 16:42:31', '2019-10-22 16:42:31'),
(4078, 1, 'zYTljf8U0DXzUpUlqSvSSDQdnbNqHdSw', '2019-10-22 16:42:31', '2019-10-22 16:42:31'),
(4079, 1, 'n9m4wQgQjJeRkh6yCyNsituf9tA0kSFC', '2019-10-22 16:43:03', '2019-10-22 16:43:03'),
(4080, 1, 'qhMQZpUp0I2qYfBr78P09natwpxV9Bm1', '2019-10-22 16:43:10', '2019-10-22 16:43:10'),
(4081, 1, 'pMHcxQJaJVLVIyWWZPgVBvyrQdM1VnP1', '2019-10-22 16:43:45', '2019-10-22 16:43:45'),
(4082, 1, 'Mep7RXrnrziyDWfq0pH8C4qtJeTLHrhX', '2019-10-22 16:43:45', '2019-10-22 16:43:45'),
(4083, 1, 'snroWcYwEvIghOViDSBQ835RL3JkCOaN', '2019-10-22 16:43:46', '2019-10-22 16:43:46'),
(4084, 1, 'azUiE5ZmYci3JTqkI5iH2dn06brbTseg', '2019-10-22 16:43:46', '2019-10-22 16:43:46'),
(4085, 1, 'Kg2TZGitWJAPYb9RvQS27ohEQ6yV2ODm', '2019-10-22 16:44:17', '2019-10-22 16:44:17'),
(4086, 1, 'Yh2XljCj1yZhbnHwctcPOT2eYo8tziYF', '2019-10-22 16:44:17', '2019-10-22 16:44:17'),
(4087, 1, 'saubKcw0NitA5sJkSauT2J2W7smJXQgr', '2019-10-22 16:44:17', '2019-10-22 16:44:17'),
(4088, 1, 'LB8lEVyMXJZ8szPMKvqAmYzybNTgfPvJ', '2019-10-22 16:44:18', '2019-10-22 16:44:18'),
(4089, 1, '7odss2yqgAXI7qMTUSW7vjDUuCBDNaud', '2019-10-22 16:50:52', '2019-10-22 16:50:52'),
(4090, 1, 'K53fSOyKcPhDez18eKo9kKh0e36IObH7', '2019-10-22 16:50:53', '2019-10-22 16:50:53'),
(4091, 1, 'HEpR2kohhfLV77HuOWkx5otMyIqvP4aw', '2019-10-22 16:51:15', '2019-10-22 16:51:15'),
(4092, 1, 'QMCdVgSshRC4HNxX4Mp6IS2lqelHgojQ', '2019-10-22 16:51:15', '2019-10-22 16:51:15'),
(4093, 1, 'pql5rm24lfYpEd6p8g1nPuDOo1XdIEI8', '2019-10-22 16:51:33', '2019-10-22 16:51:33'),
(4094, 1, 'DGvO94O2xZEai8hZXVTJ8nbHzWyKvFk7', '2019-10-22 16:51:42', '2019-10-22 16:51:42'),
(4095, 1, 'uPqhY948d7M1cEX84WaIXJ8hpSwBR2Dx', '2019-10-22 16:51:43', '2019-10-22 16:51:43'),
(4096, 1, 'TyBAPGUuGfxqlY5xbGC0HkPbm4BdEu41', '2019-10-22 16:51:56', '2019-10-22 16:51:56'),
(4097, 1, 'FQoWvowrM3RwuHOfWSsPX9omJogcguEB', '2019-10-22 16:51:58', '2019-10-22 16:51:58'),
(4098, 1, 'hnmE1htrCZPE21gqPnu3hyUppUVvTGBY', '2019-10-22 16:52:11', '2019-10-22 16:52:11'),
(4099, 1, 'NwuOcE8i1SY4MzVJpXU8fzzsq6d5Hs87', '2019-10-22 16:52:12', '2019-10-22 16:52:12'),
(4100, 1, 'Ges9bDbipqiFJMfPgW82UEcOaXugWR7Q', '2019-10-22 16:52:20', '2019-10-22 16:52:20'),
(4101, 1, 'eWuXsKKe1sYtlQzbfyGuf4cK1kFqMwZx', '2019-10-22 16:52:21', '2019-10-22 16:52:21'),
(4102, 1, 'xxPoWVkU5yRPWysP0jmF9gTD1Qy7sqYG', '2019-10-22 16:52:33', '2019-10-22 16:52:33'),
(4103, 1, 'y69yuaHT4p4GmAU6av0TGjJsMoYDBebl', '2019-10-22 16:52:41', '2019-10-22 16:52:41'),
(4104, 1, 'LVTiBaCJpYPxu4V0dtwMmpDEKhJibW9C', '2019-10-22 16:52:42', '2019-10-22 16:52:42'),
(4105, 1, 'HeXhT6NUqkPeDIwVpF6ovYbzxkRt0bai', '2019-10-22 16:52:50', '2019-10-22 16:52:50'),
(4106, 1, 'jmPIm6LQOIH1sskfIwAogbBb9V9nTrzq', '2019-10-22 16:52:50', '2019-10-22 16:52:50'),
(4107, 1, 'TF0Nljbu6JR5ndwyOGcOiW88QZHwv3r7', '2019-10-22 16:53:57', '2019-10-22 16:53:57'),
(4108, 1, 'q5151mcvWZuSHHKf8qLLYAhB2Q3ShtMo', '2019-10-22 16:54:05', '2019-10-22 16:54:05'),
(4109, 1, 'pGPKPyXgU0XoCXaKzhDB2yeadIB5GMXL', '2019-10-22 16:54:17', '2019-10-22 16:54:17'),
(4110, 1, 'JRNzEBSEqyQsu25YMrn6hk5UU7vXARap', '2019-10-22 16:54:17', '2019-10-22 16:54:17'),
(4111, 1, 'uVnHv5eQ0bCDntoYzpf2xb2qcHfKlng9', '2019-10-22 16:54:17', '2019-10-22 16:54:17'),
(4112, 1, 'jnTdVVhpKabSdmnQ4Xeaf8nu9mVqlr9T', '2019-10-22 16:54:17', '2019-10-22 16:54:17'),
(4113, 1, 'eFxMDthTml3y8hwzff0LQKugvrVdLOqB', '2019-10-22 16:54:17', '2019-10-22 16:54:17'),
(4114, 1, 'ZuPSnXwuSFxPfuCxHcJ2ZXkaG9NJPfih', '2019-10-22 16:54:18', '2019-10-22 16:54:18'),
(4115, 1, 'oOblweiQH9XeSMdDofpJjkdSvUoI9Ich', '2019-10-22 16:54:18', '2019-10-22 16:54:18'),
(4116, 1, 'VGmOTs8HSEsuiUSXS7uvFRxqBhnYjyb2', '2019-10-22 16:54:18', '2019-10-22 16:54:18'),
(4117, 1, 'jVVMPeISumsuNIxZ9K0PCV6hv7xlRDNj', '2019-10-22 16:54:28', '2019-10-22 16:54:28'),
(4118, 1, 'GdyG1TjuU6iSfVlvDcXT7lgyeb3CarSX', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4119, 1, 'qDFYJa2iEl01e7R6nA3IPXr571kWQlVq', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4120, 1, 'tKRJrzLxG0gTB6Xz7YRcaH8OHxoGUTqa', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4121, 1, 'DO9KxEk8ED2vwye453cxKxUNsX7iAUAm', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4122, 1, 'Zcpa7mikLsndzuBPXQiSC8Fwp8AUKpLt', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4123, 1, 'jgY7NyvwbLowMRR9z2Gaw5euYngSILFj', '2019-10-22 16:54:29', '2019-10-22 16:54:29'),
(4124, 1, '8w9yCHBDdVTVyxA5rQIVvaSoK6yd0xpl', '2019-10-22 16:54:30', '2019-10-22 16:54:30'),
(4125, 1, 'AVeLJdLRfmeCKqHIUYqq5fTG0xhIxH26', '2019-10-22 16:54:44', '2019-10-22 16:54:44'),
(4126, 1, '3BCB3n34daw3jdJY1v63aSx1s3x2J6GU', '2019-10-22 16:54:49', '2019-10-22 16:54:49'),
(4127, 1, '3yO2YBgCUCIngBAzFFoS7HpwuwqAxH4n', '2019-10-22 16:54:49', '2019-10-22 16:54:49'),
(4128, 1, 'nRK5FVYEXuQWeSQYnDHbo48MZc49ArBH', '2019-10-22 16:54:54', '2019-10-22 16:54:54'),
(4129, 1, 'CxKYbGJYHhwjy143R8zQJUeyAWz2hFD5', '2019-10-22 16:54:55', '2019-10-22 16:54:55'),
(4130, 1, 'Ie7EYbQuqhO6IHe8jWqF4KkXnxytJuOQ', '2019-10-22 16:55:00', '2019-10-22 16:55:00'),
(4131, 1, 'uUt38znDT9f3olOsCa6jWnx7TIZGd0B4', '2019-10-22 16:55:00', '2019-10-22 16:55:00'),
(4132, 1, 'RSAss5dNpUq4mW84sFud0tBEPAssx0kh', '2019-10-22 16:55:00', '2019-10-22 16:55:00'),
(4133, 1, 'gpKGMb5ZDGsekEhjamagfsDPNkXybcuv', '2019-10-22 16:55:00', '2019-10-22 16:55:00'),
(4134, 1, '4xDghdSn5wo0GcYpT3NrBJA1ygTqdmf1', '2019-10-22 16:55:01', '2019-10-22 16:55:01'),
(4135, 1, 'NuuQIZa2wSkx27ZDuuv3HU6WM748ATnv', '2019-10-22 16:55:01', '2019-10-22 16:55:01'),
(4136, 1, 'ut6nIWP6xWOYrPmMzjqyYMMztiUl3jEu', '2019-10-22 16:55:01', '2019-10-22 16:55:01'),
(4137, 1, 'fEMq3DCruGI2G5EANLxMa1x3FBgEvilk', '2019-10-22 16:55:02', '2019-10-22 16:55:02'),
(4138, 1, 'X7q6oLKekUYsPUtrb9CHyLf8vTzPsAUP', '2019-10-22 16:55:09', '2019-10-22 16:55:09'),
(4139, 1, 'PRzFdYgwO8f7K04crewOlwot3v4JAv64', '2019-10-22 16:55:09', '2019-10-22 16:55:09'),
(4140, 1, '3wUVKwThT9KTSVLwf5N1nCCqqz2jDYUB', '2019-10-22 16:55:09', '2019-10-22 16:55:09'),
(4141, 1, 'eQjMzMxV5G4WrCwblbRCeJ8KpMMhfIsQ', '2019-10-22 16:55:09', '2019-10-22 16:55:09'),
(4142, 1, '959ZmXlitiZFxHLxg0ppHBjTm5UJtRkL', '2019-10-22 16:55:09', '2019-10-22 16:55:09'),
(4143, 1, 'JqEhqBpM3dchliPW8LFK97TuKE51JiL7', '2019-10-22 16:55:10', '2019-10-22 16:55:10'),
(4144, 1, 'YAvKBVNu9PrwlHiigm4eTFT9RThK10C5', '2019-10-22 16:55:10', '2019-10-22 16:55:10'),
(4145, 1, 'vF3FjradRclbhKNqr31zbzfv94CSCpBF', '2019-10-22 16:55:10', '2019-10-22 16:55:10'),
(4146, 1, 'a3gLjBF80W1ym0MLuwKMaIFOy96vc7x4', '2019-10-22 16:55:23', '2019-10-22 16:55:23'),
(4147, 1, 'YW2WjYvD6ctJjlgN6HiABwMU3heDb773', '2019-10-22 16:55:24', '2019-10-22 16:55:24'),
(4148, 1, 'gxYR9ZhzPNAmRcXUqXKMKNlqZ8KQx0by', '2019-10-22 16:55:27', '2019-10-22 16:55:27'),
(4149, 1, 'om0p75xM0ZDdEBzrZkZ0lVZRxdL1Cy1d', '2019-10-22 16:55:28', '2019-10-22 16:55:28'),
(4150, 1, '35QAIc2TbFUaiYr6Zx5hAqdMkMXQBK2Q', '2019-10-22 16:55:35', '2019-10-22 16:55:35'),
(4151, 1, '9j6YJ4uf2QEQrHuWwFTXklDHKP9KRCYh', '2019-10-22 16:55:35', '2019-10-22 16:55:35'),
(4152, 1, 'BL2Ee5ljeQgKqCTO9oQyxJEjVNsbpIDN', '2019-10-22 16:55:35', '2019-10-22 16:55:35'),
(4153, 1, 'rYJujlISklOahtnvjMjBKsUNet6iYH3p', '2019-10-22 16:55:35', '2019-10-22 16:55:35'),
(4154, 1, 'fugJItWPBxoUkOaHcxndyWaKxXzvsVOB', '2019-10-22 16:55:35', '2019-10-22 16:55:35'),
(4155, 1, 'Fb7TJFmusoT0aAZR2gaynKQSTy09PVBv', '2019-10-22 16:55:36', '2019-10-22 16:55:36'),
(4156, 1, '9JZVZ4QD5WSl7CGPHj3jdjSJRejtbihK', '2019-10-22 16:55:36', '2019-10-22 16:55:36'),
(4157, 1, 'A13txys3Ii5RKXlym2cNTVlTnvzqVreP', '2019-10-22 16:55:36', '2019-10-22 16:55:36'),
(4158, 1, 'YprGgjtOoXLD92lwlH6RgfFTj4Z2dfDU', '2019-10-22 16:55:53', '2019-10-22 16:55:53'),
(4159, 1, 'rx3SJt94TrAiWnMyWiElQQeBLoseDXsM', '2019-10-22 16:55:53', '2019-10-22 16:55:53'),
(4160, 1, 'OnChKhKzyhWPe1y7u4PvhZMsJHqwVuQP', '2019-10-22 16:55:53', '2019-10-22 16:55:53'),
(4161, 1, 'dlO8sT0Y5fZ8UT6NodvOUGoHOCFbtMZW', '2019-10-22 16:55:54', '2019-10-22 16:55:54'),
(4162, 1, 'dGOewrEQXp6kMOt9xoQKyxszUwzrNxxU', '2019-10-22 16:56:18', '2019-10-22 16:56:18'),
(4163, 1, 'DscZXRS19PGzFoph49Atn7KB17NcyrVs', '2019-10-22 16:56:18', '2019-10-22 16:56:18'),
(4164, 1, 'vELPHHgmTqxIItbw3PBQOZtnKVWIsme6', '2019-10-22 17:17:29', '2019-10-22 17:17:29'),
(4165, 1, 'nJ7HudNFXAl1CfbvBNZlUZpdEx43a8lK', '2019-10-22 20:58:21', '2019-10-22 20:58:21'),
(4166, 1, 'pOUiqApTrexGzwb04YkrArpulU3AXDba', '2019-10-22 20:59:38', '2019-10-22 20:59:38'),
(4167, 1, 'x3ZOTHn1q8yIxkPS7DZE4YOaBXNFWcf2', '2019-10-22 21:53:12', '2019-10-22 21:53:12'),
(4168, 1, 'hRvbaynyreJ2djx1a3DQTMYFDtYc4J2N', '2019-10-22 21:53:12', '2019-10-22 21:53:12'),
(4169, 1, 'e4FcHf4zbcO2kuQT2GYaVNA375eZDEkQ', '2019-10-22 21:53:12', '2019-10-22 21:53:12'),
(4170, 1, 'EgZzUMO8RtILuchhy2i6e9AI85PJLFlb', '2019-10-22 21:53:12', '2019-10-22 21:53:12'),
(4171, 1, '23qQxZN0nvOds7ypgX2HEGSOE5ZwSpAK', '2019-10-22 21:53:14', '2019-10-22 21:53:14'),
(4172, 1, 'vOF7eEDmuRMCbMn5vHDryk1CQmUGqnMB', '2019-10-22 21:53:21', '2019-10-22 21:53:21'),
(4173, 1, 'jklQOhKM1ZjkMOVqbG9YlInUHwbPLacp', '2019-10-22 21:53:22', '2019-10-22 21:53:22'),
(4174, 1, 'QxWm6TIdXhekgxwc62n2eQL4abelcvCx', '2019-10-22 21:53:28', '2019-10-22 21:53:28'),
(4175, 1, 'wt2W71tjZc0KN5nU0W6oHsYXAGhxWU0w', '2019-10-22 21:53:32', '2019-10-22 21:53:32'),
(4176, 1, '30e6YXCCMDIWpxyzjFmWruRIo7KAi7na', '2019-10-22 21:53:42', '2019-10-22 21:53:42'),
(4177, 1, 'raMKoWXngm1gNmqZh3V857Mrf0bkul7x', '2019-10-22 21:53:42', '2019-10-22 21:53:42'),
(4178, 1, 'DIi2FXJS3C0ZezMKOKJHQEcPSTOZVCyO', '2019-10-22 21:53:42', '2019-10-22 21:53:42'),
(4179, 1, 'TwkWuQFtLJeq5gLpbp3Z6Gipladwlekq', '2019-10-22 21:53:42', '2019-10-22 21:53:42'),
(4180, 1, 'uvCdqELGFlqxV3qEv4QvdMU17Kpcms79', '2019-10-22 21:53:50', '2019-10-22 21:53:50'),
(4181, 1, 'XfxFvMrHP4pylAILACjJe4OrpXY7OmvB', '2019-10-22 21:53:50', '2019-10-22 21:53:50'),
(4182, 1, '7VZms9OZYoc0IjqGIK2jzNvuwlcrIwhV', '2019-10-22 21:53:50', '2019-10-22 21:53:50'),
(4183, 1, 'GpqNkycXxLbjwnEvqDdV3e6eMqUPHk1D', '2019-10-22 21:53:50', '2019-10-22 21:53:50'),
(4184, 1, 'r52U0vkHI9dB8VNaVXv1D3ZCxrZAdvfH', '2019-10-22 21:53:54', '2019-10-22 21:53:54'),
(4185, 1, 'go13yQCzvMGkdQb3gflOxNcvCc1bjB3a', '2019-10-22 21:54:17', '2019-10-22 21:54:17'),
(4186, 1, '9zV0EPQWqfTKYmfLtD6UIX1aCBU3zgBm', '2019-10-22 21:54:19', '2019-10-22 21:54:19'),
(4187, 1, 'gN6dp2yw5s0cbJAs5Sk75QjlE2ssh6oj', '2019-10-22 21:54:23', '2019-10-22 21:54:23'),
(4188, 1, '9bufFkM4J4wJWRc3YqjiJNOwkR8OrNrQ', '2019-10-22 21:54:23', '2019-10-22 21:54:23'),
(4189, 1, 'rtuJwaelCX8MZIlexXVxQpF6iaRQOHaq', '2019-10-22 21:54:30', '2019-10-22 21:54:30'),
(4190, 1, 'ia2YPssT4XOh3SpR3wi3lQmRQvPFpp6I', '2019-10-22 21:54:30', '2019-10-22 21:54:30'),
(4191, 1, 'uCkttU5zgjp5W3jpf37AftMw7wvq147d', '2019-10-22 21:54:30', '2019-10-22 21:54:30'),
(4192, 1, 'JWD8mqDJp6nKv9ymLN1eNYZgb1n4AdAg', '2019-10-22 21:54:30', '2019-10-22 21:54:30'),
(4193, 1, 'x7ghsPzM0aHPMoFZ5uqNXh80ma5Ubg3v', '2019-10-22 21:55:10', '2019-10-22 21:55:10'),
(4194, 1, '3ZMMP5FPeittdkxz4rhSBjp8IzIrqKZv', '2019-10-22 21:55:10', '2019-10-22 21:55:10'),
(4195, 1, 'zfUPnbnBf62lVymYheg2z7vpt5fb34bm', '2019-10-22 21:55:12', '2019-10-22 21:55:12'),
(4196, 1, 'A36zI1tRpOnaWIOtvvbxhCkC9fNUG0Yx', '2019-10-22 23:01:08', '2019-10-22 23:01:08'),
(4197, 1, 'pLjAoPr2VKXLcWBdAtmerE6aw5RoLU4c', '2019-10-22 23:16:22', '2019-10-22 23:16:22'),
(4198, 1, 'A5Xkvad7P7LvMhJMPtVhGCtv37FoHE7P', '2019-10-22 23:18:23', '2019-10-22 23:18:23'),
(4199, 1, 'hOtZJDSjewXjB6wtBLRxpwGhJeBlopJu', '2019-10-22 23:18:45', '2019-10-22 23:18:45'),
(4200, 1, 'bJHySgRUqYYHWy4amMS2TsFabdm4YNpS', '2019-10-22 23:19:41', '2019-10-22 23:19:41'),
(4201, 1, 'BNKmbTtjDEKZYgjFo3AxQXrRRmwVcqiQ', '2019-10-24 14:42:30', '2019-10-24 14:42:30'),
(4202, 1, 'xY847TR8MKMswnTRVoHgCcWBr5D0ug5Y', '2019-10-24 15:21:14', '2019-10-24 15:21:14'),
(4203, 1, 'W2mIqn30IJ4SPPbiZWgkOf4nHE4bvbIr', '2019-10-24 15:21:14', '2019-10-24 15:21:14'),
(4204, 1, 'vqsEIZtyqXYwtWvK9xNmqPtgpeUtZ2TQ', '2019-10-24 15:21:14', '2019-10-24 15:21:14'),
(4205, 1, 'PRFAevewmOkyVOGb7vrAJQL2UHqGpIpe', '2019-10-24 15:21:14', '2019-10-24 15:21:14'),
(4206, 1, '8d9NTLvrPipV7uY4xxIlqL3wSheK5xUs', '2019-10-24 15:21:37', '2019-10-24 15:21:37'),
(4207, 1, 'perloKWUhuPyBqxuYKRbT2Flkg33jJ2j', '2019-10-24 15:21:37', '2019-10-24 15:21:37'),
(4208, 1, 'AWRrLu37F5CxYDIEJdwvHupJCQjhvlT7', '2019-10-24 15:21:38', '2019-10-24 15:21:38'),
(4209, 1, 'x8fOm9eQ1XYb763aXADxNLIH6eLAKiik', '2019-10-24 15:21:38', '2019-10-24 15:21:38'),
(4210, 1, '6e0R8cZ9Ma2M7HILXMzRDqgXPXsnK9sR', '2019-10-24 15:21:47', '2019-10-24 15:21:47'),
(4211, 1, 'BPnoWthTP0GNAKp3RpNs2MTnMjqQnqCs', '2019-10-24 15:21:47', '2019-10-24 15:21:47'),
(4212, 1, 'FRp9Tc0MGc4PiEnmQ5MatKPs9oilUmY1', '2019-10-24 15:21:47', '2019-10-24 15:21:47'),
(4213, 1, 'KCK3OPOjWMV3o7QNdbFxem7gAxdU5WWP', '2019-10-24 15:21:47', '2019-10-24 15:21:47'),
(4214, 1, 'AaJU2esucOJuGI1l1oVby6hWl4g1j2yN', '2019-10-24 15:23:33', '2019-10-24 15:23:33'),
(4215, 1, 'btdMxCcPcdlo8XuFak2ei3mOLIG9ferf', '2019-10-24 15:23:33', '2019-10-24 15:23:33'),
(4216, 1, 'OsRWJGPl4vtslcDvZjMYGIgcuqbPfgUO', '2019-10-24 15:23:33', '2019-10-24 15:23:33'),
(4217, 1, 'c1nPcNMWkX2HJHPHVHwrg0CECj6TO6AX', '2019-10-24 15:23:33', '2019-10-24 15:23:33'),
(4218, 1, '9SjV32PKz12LwasfXGbpOxA6gSPWfhic', '2019-10-24 15:23:43', '2019-10-24 15:23:43'),
(4219, 1, 'vtoQUD8SkYSq7ajWykxmhN0QAgpLzUU1', '2019-10-24 15:23:43', '2019-10-24 15:23:43'),
(4220, 1, 'q3cKk8xCDRtIY24ZLmm87YRzvrO5OBUA', '2019-10-24 15:23:43', '2019-10-24 15:23:43'),
(4221, 1, 'sX9EaBwA1wlmPHSkYyULWwEaFCQE4RAf', '2019-10-24 15:23:43', '2019-10-24 15:23:43'),
(4222, 1, 'NxjghROkGpTTD4G40aZRBQrNoji5Q7Me', '2019-10-24 15:23:48', '2019-10-24 15:23:48'),
(4223, 1, 'PBDixkdnqa3JhmKz1hBwBG78O23OO94n', '2019-10-24 15:23:48', '2019-10-24 15:23:48'),
(4224, 1, 'to9wRLPizKpX8fAGuznP6a2JYUHlmh1C', '2019-10-24 15:23:48', '2019-10-24 15:23:48'),
(4225, 1, 'pZJsZdXP0y76tU9hnWMhP82dgv7slC5g', '2019-10-24 15:23:48', '2019-10-24 15:23:48'),
(4226, 1, 'tQGPidZsRNVQt2zrJRZSyCFG0IUv6KYn', '2019-10-24 15:23:51', '2019-10-24 15:23:51'),
(4227, 1, 'BiUPjKcip4ROHdNQLyAhmXMK3N7PZbjy', '2019-10-24 15:23:51', '2019-10-24 15:23:51'),
(4228, 1, 'QEaH5rmJ6ba1Az58XeQYfwc0rDz8M8GR', '2019-10-24 15:23:51', '2019-10-24 15:23:51'),
(4229, 1, 'h989ttNFzC8rWaHOcnkJtQhh7Q1CRGmy', '2019-10-24 15:23:51', '2019-10-24 15:23:51'),
(4230, 1, 'ktJq1M7Lq9UA9MAC5X1gXB9TwlFjqqFt', '2019-10-24 15:24:04', '2019-10-24 15:24:04'),
(4231, 1, '0B5Bdg6UogKPsLSV4KwOh32s6DvWQacr', '2019-10-24 15:24:04', '2019-10-24 15:24:04'),
(4232, 1, 'kzfwrE2PLw5vqoNdz5LrX1z4LX0Ihvx4', '2019-10-24 15:24:04', '2019-10-24 15:24:04'),
(4233, 1, 'JytJ825VBRc0G2R4fZYzqoYUhpYgODMb', '2019-10-24 15:24:04', '2019-10-24 15:24:04'),
(4234, 1, 'sXVNomBygvpHLnA10I9EY0RvGH8dLH5p', '2019-10-24 15:24:49', '2019-10-24 15:24:49'),
(4235, 1, '4A7rMDUtKw37muITcfAX8hPIjQ5PfQv0', '2019-10-24 15:24:49', '2019-10-24 15:24:49'),
(4236, 1, 'g2a4vP9fkRvd7aVS3sdkhKdR4n1EVopb', '2019-10-24 15:24:49', '2019-10-24 15:24:49'),
(4237, 1, 'ZxKr4KbLUBlVife1Fkru3FRBfAv58lgG', '2019-10-24 15:24:49', '2019-10-24 15:24:49'),
(4238, 1, 'hWPsQXqcQWVvKvbho2e4X918Lx7QgBty', '2019-10-24 15:24:50', '2019-10-24 15:24:50'),
(4239, 1, '14OUdZMwFsAy1BphG5vsFFPRG2YBpEaW', '2019-10-24 15:24:51', '2019-10-24 15:24:51'),
(4240, 1, '18ym6MuRt5h8WnDv8J12U1hfMENd1sHq', '2019-10-24 15:24:51', '2019-10-24 15:24:51'),
(4241, 1, 'rO0S4pfzg0kTW3IEjkLWOR7tDSV6z6PJ', '2019-10-24 15:24:51', '2019-10-24 15:24:51'),
(4242, 1, '3i3bcRZUmt7c637ymwoBq5UYJei4K1D3', '2019-10-24 15:24:59', '2019-10-24 15:24:59'),
(4243, 1, 'wFdiME0bGBdufcVT7YcFJXOBS3flQqWd', '2019-10-24 15:24:59', '2019-10-24 15:24:59'),
(4244, 1, 'lhGG5xOaaRc7yWeLdFS0NhmxhCTQdCIg', '2019-10-24 15:25:00', '2019-10-24 15:25:00'),
(4245, 1, '7lbTPmTjStyIknOZbgmlg04Md4iXhobU', '2019-10-24 15:25:00', '2019-10-24 15:25:00'),
(4246, 1, 'jNpXlnkGR8QoIws1iqt5ToFcrcBRbKbZ', '2019-10-24 15:25:00', '2019-10-24 15:25:00'),
(4247, 1, 'el1fLyqjVeGAvQoAYRwwDjpbBtvCemgX', '2019-10-24 15:25:00', '2019-10-24 15:25:00'),
(4248, 1, '2cKf9IBMKV5g3AmHutxfCqviwfA3NYjr', '2019-10-24 15:25:00', '2019-10-24 15:25:00'),
(4249, 1, 'BykNvqewIlXxmrhwCPM3aUcbp21NcLlR', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4250, 1, 'T30zCamhCBohL8Q3ZeKpWWcrkBQkiG13', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4251, 1, 'KGal4IqR2q5DUSD4Y5IwMLgh9tmGYxBi', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4252, 1, 'whdwXUKFFpG48rC4QpaZHizgtHNzvEH5', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4253, 1, 'rCVy0DPrMHWtpqq6jUJalOMJJS254sO5', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4254, 1, 'u249tlbR9X120pE7wkjounn2oxrte8YJ', '2019-10-24 15:25:01', '2019-10-24 15:25:01'),
(4255, 1, 'jeO56zzsCYgNsG2dzjdCvKlZzokvW2jj', '2019-10-24 15:25:02', '2019-10-24 15:25:02'),
(4256, 1, 'E3tarOI3Zw6JZ8wX3w23amYHAWN6Zuy1', '2019-10-24 15:25:02', '2019-10-24 15:25:02'),
(4257, 1, 'D1BfoqmuNEoQDLDpPitrRBo221QoOZLG', '2019-10-24 15:25:02', '2019-10-24 15:25:02'),
(4258, 1, 'oZAUPPIodVhmHmPuvCcXvVshyf68u35v', '2019-10-24 15:25:04', '2019-10-24 15:25:04'),
(4259, 1, 'Jt6z9R9yrgMViFwiMGSkE7xmleuFviTg', '2019-10-24 15:25:04', '2019-10-24 15:25:04'),
(4260, 1, 'tCkI51NWfteTvOCxdxJQoufEupv3TXpG', '2019-10-24 15:25:04', '2019-10-24 15:25:04'),
(4261, 1, 'OJFN5C1jC44IlwgSWCbpfx46ludcZxK0', '2019-10-24 15:25:04', '2019-10-24 15:25:04'),
(4262, 1, 'qf4R6T0CkyY8ZgZhToqG7MYyDolmyRWi', '2019-10-24 15:25:06', '2019-10-24 15:25:06'),
(4263, 1, 'NOqjZMDHImMVpdLJVJ28WCK3iNl89QJ0', '2019-10-24 15:25:06', '2019-10-24 15:25:06'),
(4264, 1, '3iac520aELw1DvQ7WIHhlOQbqodbuwV9', '2019-10-24 15:25:06', '2019-10-24 15:25:06'),
(4265, 1, 'zATziDDtzuxSKiYLnShvPkFi8CDECcYT', '2019-10-24 15:25:06', '2019-10-24 15:25:06'),
(4266, 1, 'YtkQZO5ZxEvibMLGxGnxBnfLnWcQTik1', '2019-10-24 15:25:28', '2019-10-24 15:25:28'),
(4267, 1, 'rUicKWVEFvSG77ZGVC2KvH1Xq2HOj0Qc', '2019-10-24 15:25:28', '2019-10-24 15:25:28'),
(4268, 1, 'Mk7E1qJroE2qoTi2ZNo2J9lUOzscqjwZ', '2019-10-24 15:25:28', '2019-10-24 15:25:28'),
(4269, 1, '9tD1UbCjvGiYAi0PirPKmD81x2bpsHui', '2019-10-24 15:25:28', '2019-10-24 15:25:28'),
(4270, 1, 'KXeN2Ic4V2v6MZPFtZ5BaK6l69BXmfyi', '2019-10-24 15:25:28', '2019-10-24 15:25:28'),
(4271, 1, 'YdhsvvLgGbBJRVqx6XaupSqlltSgqNma', '2019-10-24 15:25:29', '2019-10-24 15:25:29'),
(4272, 1, 'S0jt07qJZeEs5kVGcwqRSOJaSfneHUwy', '2019-10-24 15:25:29', '2019-10-24 15:25:29'),
(4273, 1, 'gi4vy9MdTPBxxuIpZbt1Z86fFi9Kjr1G', '2019-10-24 15:25:30', '2019-10-24 15:25:30'),
(4274, 1, 'oWfyyszhlsT2dsA5kiCAIaV9ewgNmLV4', '2019-10-24 20:28:18', '2019-10-24 20:28:18'),
(4275, 1, 'ehfpncZmECuSv58uRKZc2iy7hwHSkyhJ', '2019-10-24 21:06:09', '2019-10-24 21:06:09'),
(4276, 1, 'jAKMbDs1rK9lt4wK58QG2Oi53bJ1kHSy', '2019-10-25 14:52:16', '2019-10-25 14:52:16'),
(4277, 1, 'oIAoRvyhEmp7PecwnJMjBO8OQYO6BoB8', '2019-10-25 14:52:16', '2019-10-25 14:52:16'),
(4278, 1, 'pfPaKGRDsaf5CuYGMAS2LovTt5DTY5gJ', '2019-10-25 14:52:16', '2019-10-25 14:52:16'),
(4279, 1, 'tEu9KZJ3yOHMzrqyly3vml8H9ij8bKCB', '2019-10-25 14:52:16', '2019-10-25 14:52:16'),
(4280, 1, 'UKA2a7oB1kBBFvycSY10aqhofl1PogVk', '2019-10-25 14:57:40', '2019-10-25 14:57:40'),
(4281, 1, 'o7HZLiady4uBcIXs8x5zXkHTL6RMNLVy', '2019-10-25 14:57:40', '2019-10-25 14:57:40'),
(4282, 1, '4ekGvZmdWPNA1zlhjZsdOYyFAJ0YbCsP', '2019-10-25 14:57:40', '2019-10-25 14:57:40'),
(4283, 1, 'TgpUQM0N7blvFHB0y4anVD47GzbXyN7u', '2019-10-25 14:57:40', '2019-10-25 14:57:40'),
(4284, 1, 'lFae2wV1serWiULXPjNxWPIQADfb8Rk1', '2019-10-25 14:57:44', '2019-10-25 14:57:44'),
(4285, 1, '1N2YvJAbMZVMZeCXuEkEa4JwaR6HKkkw', '2019-10-25 14:57:45', '2019-10-25 14:57:45'),
(4286, 1, 'nXOPRXuMT40kSkyX0R6hCmxppSF2sqlV', '2019-10-25 14:57:45', '2019-10-25 14:57:45'),
(4287, 1, 'Qo8tk9U5feo64tLO1h7552VgpCfOoClL', '2019-10-25 14:57:45', '2019-10-25 14:57:45'),
(4288, 1, 'HRNzwNwlMAT82PUWVxZBfienpPSZa43a', '2019-10-25 16:39:04', '2019-10-25 16:39:04'),
(4289, 1, 'qM1YMNxWM9wO83fuzzW7VVQeLAjmN4Tx', '2019-10-25 16:39:24', '2019-10-25 16:39:24'),
(4290, 1, '2DweUrk3GPVASkFUbP0KjWgtoh92E1Qk', '2019-10-27 02:10:11', '2019-10-27 02:10:11'),
(4291, 1, 'Becg4zZxwkjWKJYuXe5A0ZQCjHBJBrMY', '2019-10-27 02:10:11', '2019-10-27 02:10:11'),
(4292, 1, 'FTpVoQeltk1mCyOCEX4wM4TQfcugHSvS', '2019-10-28 15:35:36', '2019-10-28 15:35:36'),
(4293, 1, 'uiIymAnle9qxIrMHYLkG8h99SmwpdsB8', '2019-10-28 16:42:41', '2019-10-28 16:42:41'),
(4294, 1, 'tkyVRlakU9zAZWVQRxMSChGb3VwyE9nL', '2019-10-28 16:45:16', '2019-10-28 16:45:16'),
(4295, 1, 'gtHOsjGSbCxPqseADJAyotXMH66hdOiY', '2019-10-28 16:45:22', '2019-10-28 16:45:22'),
(4296, 1, 'JStxAQpJXiFoR2eXpvFkj1SaLSdw5XRW', '2019-10-28 16:45:33', '2019-10-28 16:45:33'),
(4297, 1, 'b3l34yHgMDiqf8wm8dinwDNZNVN4E9b7', '2019-10-28 16:45:33', '2019-10-28 16:45:33'),
(4298, 1, 'Zh663sTFy18c1IkTm8yRHGYKVOIIvgQO', '2019-10-28 16:46:38', '2019-10-28 16:46:38'),
(4299, 1, 'LgSgDywPp3lpK7tmo8hDUmkcWtuCwajj', '2019-10-28 16:46:38', '2019-10-28 16:46:38'),
(4300, 1, 'hhqrJkFXoqr4OMcR5OHQKt89f5cHKcig', '2019-10-28 16:47:31', '2019-10-28 16:47:31'),
(4301, 1, 'r7fAi0lXEgH908C1GbZWi6mKp5ejzYOf', '2019-10-28 16:47:31', '2019-10-28 16:47:31'),
(4302, 1, 'nLsMRCkwboYLgkOcBiDtra6AKxfOfRJJ', '2019-10-28 16:47:46', '2019-10-28 16:47:46'),
(4303, 1, 'Ct3FncZ9Ot4iVMcdVCs5ATKKi2WUIXkb', '2019-10-28 16:47:46', '2019-10-28 16:47:46'),
(4304, 1, 'Nmigo2WwFRCHE31Wo8dce7a5oLBQyb2T', '2019-10-28 16:48:41', '2019-10-28 16:48:41'),
(4305, 1, 'g6sEQO5uJFdXJzMyQtGfqoLa30rVJcWU', '2019-10-28 16:48:41', '2019-10-28 16:48:41'),
(4306, 1, '3r0tEWRsRmqeoMAL95bviZ05iAlp8fhk', '2019-10-28 16:49:52', '2019-10-28 16:49:52'),
(4307, 1, 'cR7Q5fgAb1ztlhlyo11HMrcIbdvsBQkH', '2019-10-28 16:49:52', '2019-10-28 16:49:52'),
(4308, 1, 'Dz6VKN6jPfZDxJPL2nUA33UhYO9adQgp', '2019-10-28 16:50:23', '2019-10-28 16:50:23'),
(4309, 1, 'JkATUrbR2dPpFV49YgzTgdnXtpm9I4UC', '2019-10-28 16:50:23', '2019-10-28 16:50:23'),
(4310, 1, 'Z4DB80L9qpQqVZPmFydVQ4DM2j7tvYCF', '2019-10-28 16:51:55', '2019-10-28 16:51:55'),
(4311, 1, 'JBLzOsVX11R2JssVrcRUGdvFxUsHS8PE', '2019-10-28 16:52:01', '2019-10-28 16:52:01'),
(4312, 1, 'uqejZyj4g5YE4xaAqU6vRkXPCkrrsWEX', '2019-10-28 16:52:47', '2019-10-28 16:52:47'),
(4313, 1, 'TpsUfJb412Yx3TDo3lDJZFcRno8cxjF8', '2019-10-28 16:53:05', '2019-10-28 16:53:05'),
(4314, 1, 'd5xe4XexLFDHXdencTCuCim59l01Vd7t', '2019-10-28 16:53:11', '2019-10-28 16:53:11'),
(4315, 1, 'dJ3AFzBROi3XFXdVecZr85Q0e77Zv0n7', '2019-10-28 16:54:27', '2019-10-28 16:54:27'),
(4316, 1, 'OMLe7jOecg1wWVwBTh22jPfdS2YNkhhO', '2019-10-28 16:54:34', '2019-10-28 16:54:34'),
(4317, 1, 'Hho0gVDEXhO21zLfYQ68XoRjDuWB9QlE', '2019-10-28 16:55:07', '2019-10-28 16:55:07'),
(4318, 1, '3jhMSE8Ry3nSozTk0sc68rXkO0xCyPO8', '2019-10-28 16:57:03', '2019-10-28 16:57:03'),
(4319, 1, 'jUQwX7m9m7L5ctOwaDOEPTL3jRiUHUF6', '2019-10-28 17:14:29', '2019-10-28 17:14:29'),
(4320, 1, 'My6oMd20MBqszdxy4JK1OMPi3L4ix8ps', '2019-10-28 17:35:18', '2019-10-28 17:35:18'),
(4321, 1, '2Dlxw8uuWIRGOmv1C26XNKH9MvYD1Nwc', '2019-10-28 17:35:40', '2019-10-28 17:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `reminders`
--

CREATE TABLE `reminders` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `code` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `completed` tinyint(1) NOT NULL DEFAULT '0',
  `completed_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `revisions`
--

CREATE TABLE `revisions` (
  `id` int(10) UNSIGNED NOT NULL,
  `revisionable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `revisionable_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `old_value` text COLLATE utf8mb4_unicode_ci,
  `new_value` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `roles`
--

CREATE TABLE `roles` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `roles`
--

INSERT INTO `roles` (`id`, `slug`, `name`, `permissions`, `created_at`, `updated_at`) VALUES
(1, 'superadmin', 'Superadmin', '{\"isite.settings.manage\":true,\"isite.settings.index\":true,\"isite.settings.edit\":true,\"isite.settings.create\":true,\"isite.master.records.manage\":true,\"isite.master.records.index\":true,\"isite.master.records.edit\":true,\"isite.master.records.create\":true,\"isite.master.records.destroy\":true,\"iblog.categories.manage\":true,\"iblog.categories.index\":true,\"iblog.categories.create\":true,\"iblog.categories.edit\":true,\"iblog.categories.destroy\":true,\"iblog.posts.manage\":true,\"iblog.posts.index\":true,\"iblog.posts.create\":true,\"iblog.posts.edit\":true,\"iblog.posts.destroy\":true,\"profile.api.login\":true,\"profile.user.manage\":true,\"profile.user.index\":true,\"profile.user.index-by-department\":true,\"profile.user.create\":true,\"profile.user.edit\":true,\"profile.user.destroy\":true,\"profile.user.department\":true,\"profile.user.impersonate\":true,\"profile.permissions.manage\":true,\"profile.fields.index\":true,\"profile.fields.create\":true,\"profile.fields.edit\":true,\"profile.fields.destroy\":true,\"profile.addresses.index\":true,\"profile.addresses.create\":true,\"profile.addresses.edit\":true,\"profile.addresses.destroy\":true,\"profile.departments.manage\":true,\"profile.departments.index\":true,\"profile.departments.create\":true,\"profile.departments.edit\":true,\"profile.departments.destroy\":true,\"profile.settings.index\":true,\"profile.settings.create\":true,\"profile.settings.edit\":true,\"profile.settings.destroy\":true,\"profile.user-departments.index\":true,\"profile.user-departments.create\":true,\"profile.user-departments.edit\":true,\"profile.user-departments.destroy\":true,\"profile.role.manage\":true,\"profile.role.index\":true,\"profile.role.create\":true,\"profile.role.edit\":true,\"profile.role.destroy\":true,\"iplaces.places.manage\":true,\"iplaces.places.index\":true,\"iplaces.places.create\":true,\"iplaces.places.edit\":true,\"iplaces.places.destroy\":true,\"iplaces.categories.manage\":true,\"iplaces.categories.index\":true,\"iplaces.categories.create\":true,\"iplaces.categories.edit\":true,\"iplaces.categories.destroy\":true,\"iplaces.services.manage\":true,\"iplaces.services.index\":true,\"iplaces.services.create\":true,\"iplaces.services.edit\":true,\"iplaces.services.destroy\":true,\"iplaces.zones.manage\":true,\"iplaces.zones.index\":true,\"iplaces.zones.create\":true,\"iplaces.zones.edit\":true,\"iplaces.zones.destroy\":true,\"iplaces.schedules.manage\":true,\"iplaces.schedules.index\":true,\"iplaces.schedules.create\":true,\"iplaces.schedules.edit\":true,\"iplaces.schedules.destroy\":true,\"iplaces.spaces.manage\":true,\"iplaces.spaces.index\":true,\"iplaces.spaces.create\":true,\"iplaces.spaces.edit\":true,\"iplaces.spaces.destroy\":true,\"iplaces.cities.manage\":true,\"iplaces.cities.index\":true,\"iplaces.cities.create\":true,\"iplaces.cities.edit\":true,\"iplaces.cities.destroy\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"slider.sliders.manage\":true,\"slider.sliders.index\":true,\"slider.sliders.create\":true,\"slider.sliders.edit\":true,\"slider.sliders.edit-system-name\":true,\"slider.sliders.destroy\":true,\"slider.sliders.update\":true,\"slider.slides.manage\":true,\"slider.slides.index\":true,\"slider.slides.create\":true,\"slider.slides.edit\":true,\"slider.slides.destroy\":true,\"slider.slides.update\":true,\"core.sidebar.group\":true,\"iforms.forms.index\":true,\"iforms.forms.create\":true,\"iforms.forms.edit\":true,\"iforms.forms.destroy\":true,\"iforms.fields.index\":true,\"iforms.fields.create\":true,\"iforms.fields.edit\":true,\"iforms.fields.destroy\":true,\"iforms.leads.index\":true,\"iforms.leads.create\":true,\"iforms.leads.edit\":true,\"iforms.leads.destroy\":true,\"page.pages.index\":true,\"page.pages.create\":true,\"page.pages.edit\":true,\"page.pages.destroy\":true,\"setting.settings.index\":true,\"setting.settings.edit\":true,\"menu.menus.index\":true,\"menu.menus.create\":true,\"menu.menus.edit\":true,\"menu.menus.destroy\":true,\"menu.menuitems.index\":true,\"menu.menuitems.create\":true,\"menu.menuitems.edit\":true,\"menu.menuitems.destroy\":true,\"tag.tags.index\":true,\"tag.tags.create\":true,\"tag.tags.edit\":true,\"tag.tags.destroy\":true,\"workshop.sidebar.group\":true,\"workshop.modules.index\":true,\"workshop.modules.show\":true,\"workshop.modules.update\":true,\"workshop.modules.disable\":true,\"workshop.modules.enable\":true,\"workshop.modules.publish\":true,\"workshop.themes.index\":true,\"workshop.themes.show\":true,\"workshop.themes.publish\":true,\"user.users.index\":true,\"user.users.create\":true,\"user.users.edit\":true,\"user.users.destroy\":true,\"user.roles.index\":true,\"user.roles.create\":true,\"user.roles.edit\":true,\"user.roles.destroy\":true,\"account.api-keys.index\":true,\"account.api-keys.create\":true,\"account.api-keys.destroy\":true,\"dashboard.index\":true,\"dashboard.update\":true,\"dashboard.reset\":true}', '2019-04-16 21:21:18', '2019-10-28 17:22:28'),
(2, 'user', 'User', '{\"profile.api.login\":true}', '2019-04-16 21:21:18', '2019-05-07 20:42:19'),
(3, 'admin', 'Admin', '{\"isite.settings.manage\":true,\"isite.settings.index\":true,\"isite.settings.edit\":true,\"profile.api.login\":true,\"profile.user.manage\":true,\"profile.user.index\":true,\"profile.user.index-by-department\":true,\"profile.user.create\":true,\"profile.user.edit\":true,\"profile.user.destroy\":true,\"profile.user.department\":true,\"profile.departments.index\":true,\"profile.settings.index\":true,\"profile.user-departments.index\":true,\"iplaces.places.manage\":true,\"iplaces.places.index\":true,\"iplaces.places.create\":true,\"iplaces.places.edit\":true,\"iplaces.places.destroy\":true,\"iplaces.categories.manage\":true,\"iplaces.categories.index\":true,\"iplaces.categories.create\":true,\"iplaces.categories.edit\":true,\"iplaces.categories.destroy\":true,\"iplaces.schedules.manage\":true,\"iplaces.schedules.index\":true,\"iplaces.schedules.create\":true,\"iplaces.schedules.edit\":true,\"iplaces.schedules.destroy\":true,\"media.medias.index\":true,\"media.medias.create\":true,\"media.medias.edit\":true,\"media.medias.destroy\":true,\"media.folders.index\":true,\"media.folders.create\":true,\"media.folders.edit\":true,\"media.folders.destroy\":true,\"slider.sliders.manage\":true,\"slider.sliders.index\":true,\"slider.sliders.edit\":true,\"slider.sliders.update\":true,\"slider.slides.manage\":true,\"slider.slides.index\":true,\"slider.slides.create\":true,\"slider.slides.edit\":true,\"slider.slides.destroy\":true,\"slider.slides.update\":true}', '2019-04-16 22:03:02', '2019-10-28 17:22:16'),
(4, 'editor', 'Editor', '{\"iblog.categories.manage\":true,\"iblog.categories.index\":true,\"iblog.categories.create\":true,\"iblog.categories.edit\":true,\"iblog.categories.destroy\":true,\"iblog.posts.manage\":true,\"iblog.posts.index\":true,\"iblog.posts.create\":true,\"iblog.posts.edit\":true,\"iblog.posts.destroy\":true,\"profile.api.login\":true,\"profile.user.index\":true}', '2019-08-02 15:35:27', '2019-08-02 17:55:40'),
(5, 'author', 'Author', '{\"iblog.posts.manage\":true,\"iblog.posts.index\":true,\"iblog.posts.create\":true,\"iblog.posts.edit\":true,\"profile.api.login\":true,\"profile.user.index\":true}', '2019-08-02 15:35:30', '2019-08-02 17:55:51');

-- --------------------------------------------------------

--
-- Table structure for table `role_users`
--

CREATE TABLE `role_users` (
  `user_id` int(10) UNSIGNED NOT NULL,
  `role_id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `role_users`
--

INSERT INTO `role_users` (`user_id`, `role_id`, `created_at`, `updated_at`) VALUES
(1, 1, '2019-04-16 21:21:49', '2019-04-16 21:21:49'),
(1, 2, '2019-10-22 16:40:46', '2019-10-22 16:40:46'),
(1, 3, '2019-10-22 16:40:46', '2019-10-22 16:40:46'),
(1, 4, '2019-08-02 15:34:37', '2019-08-02 15:34:37'),
(1, 5, '2019-08-02 15:34:38', '2019-08-02 15:34:39');

-- --------------------------------------------------------

--
-- Table structure for table `setting__settings`
--

CREATE TABLE `setting__settings` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `plainValue` text COLLATE utf8mb4_unicode_ci,
  `isTranslatable` tinyint(1) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__settings`
--

INSERT INTO `setting__settings` (`id`, `name`, `plainValue`, `isTranslatable`, `created_at`, `updated_at`) VALUES
(59, 'core::site-name', NULL, 1, '2019-05-07 05:23:26', '2019-05-07 05:23:26'),
(60, 'core::site-name-mini', NULL, 1, '2019-05-07 05:23:26', '2019-05-07 05:23:26'),
(61, 'core::site-description', NULL, 1, '2019-05-07 05:23:26', '2019-05-07 05:23:26'),
(62, 'core::template', 'Imagina2018', 0, '2019-05-07 05:23:26', '2019-05-07 05:23:26'),
(63, 'core::analytics-script', NULL, 0, '2019-05-07 05:23:26', '2019-08-15 17:10:12'),
(64, 'core::locales', '[\"es\"]', 0, '2019-05-07 05:23:26', '2019-10-22 16:21:14'),
(135, 'isite::logo2', '{\"medias_single\":{\"isite::logo2\":null}}', 0, '2019-05-08 01:16:23', '2019-08-05 19:55:50'),
(138, 'isite::brandPrimary', '#8a2c2c', 0, '2019-05-08 01:16:23', '2019-10-24 15:25:26'),
(139, 'isite::brandSecondary', '#26a69a', 0, '2019-05-08 01:16:23', '2019-08-02 15:59:01'),
(140, 'isite::brandTertiary', '#555555', 0, '2019-05-08 01:16:23', '2019-08-02 15:59:01'),
(141, 'isite::brandNeutral', '#e0e1e2', 0, '2019-05-08 01:16:23', '2019-05-08 03:25:03'),
(142, 'isite::brandPositive', '#21ba45', 0, '2019-05-08 01:16:23', '2019-05-08 03:25:03'),
(143, 'isite::brandInfo', '#31ccec', 0, '2019-05-08 01:16:23', '2019-05-08 03:25:03'),
(144, 'isite::brandWarning', '#f2c037', 0, '2019-05-08 01:16:23', '2019-05-08 03:25:03'),
(145, 'isite::brandLight', '#bdbdbd', 0, '2019-05-08 01:16:23', '2019-08-02 15:59:01'),
(146, 'isite::brandDark', '#424242', 0, '2019-05-08 01:16:23', '2019-08-02 15:59:01'),
(153, 'isite::phones', '[{\"value\":3163961295},{\"value\":3202012003}]', 0, '2019-05-08 01:16:23', '2019-06-29 16:18:28'),
(154, 'isite::addresses', '[{\"value\":\"Carrera 36 #25-72 oficina 202 Bogot\\u00e1\"},{\"value\":\"Calle 29 #7-54, Belalcazar Ibagu\\u00e9\"}]', 0, '2019-05-08 01:16:23', '2019-09-10 15:04:28'),
(155, 'isite::emails', '[{\"label\":null,\"value\":\"soporte@imaginacolombia.com\"},{\"label\":null,\"value\":\"ventas@imaginacolombia.com\"}]', 0, '2019-05-08 01:16:23', '2019-05-14 15:28:41'),
(156, 'isite::socialNetworks', '[{\"label\":\"facebook\",\"value\":\"imaginacolombia\"},{\"label\":\"twitter\",\"value\":\"@imaginacolombia\"},{\"label\":\"linkedin\",\"value\":\"imagina colombia\"},{\"label\":\"skype\",\"value\":\"imaginadw\"},{\"label\":\"instagram\",\"value\":\"imaginacolombia\"}]', 0, '2019-05-08 01:16:23', '2019-06-29 15:45:15'),
(157, 'isite::logo3', '{\"medias_single\":{\"isite::logo3\":null}}', 0, '2019-05-08 01:53:10', '2019-08-05 19:55:50'),
(158, 'isite::favicon', '{\"medias_single\":{\"isite::favicon\":121}}', 0, '2019-05-08 01:53:10', '2019-08-05 19:55:50'),
(159, 'isite::brandNegative', '#db2828', 0, '2019-05-16 20:43:12', '2019-08-02 15:59:01'),
(160, 'isite::brandFaded', '#777777', 0, '2019-05-16 20:43:12', '2019-05-16 20:43:12'),
(161, 'isite::branchOffices', '[]', 0, '2019-05-16 20:43:12', '2019-08-02 15:59:01'),
(162, 'iplaces::api-maps', 'AIzaSyBntWHoJz0Q1aR_qpGH8dN1Oi2Q0pgf9Kw', 0, '2019-05-17 19:40:05', '2019-06-29 17:04:37'),
(164, 'isite::logo1', '{\"medias_single\":{\"isite::logo1\":158}}', 0, '2019-05-17 20:04:17', '2019-10-22 21:54:28'),
(165, 'iforms::from-email', 'info@app.imagina.com.co', 0, '2019-06-10 19:55:39', '2019-06-29 16:03:10'),
(166, 'iforms::form-emails', 'juanab@imaginacolombia.com', 0, '2019-06-10 19:55:40', '2019-06-26 19:46:23'),
(167, 'iforms::captcha', '0', 0, '2019-06-10 19:55:40', '2019-06-10 19:55:40'),
(168, 'iforms::api', NULL, 0, '2019-06-10 19:55:40', '2019-06-10 19:55:40'),
(169, 'iforms::trans', '0', 0, '2019-06-10 19:55:40', '2019-06-10 19:55:40'),
(170, 'isite::reCaptchaV2Secret', '6Leyhb8UAAAAAOZT3v2s5SikrWqbE1TW8YgDX0yZ', 0, '2019-08-02 15:59:01', '2019-10-25 14:57:38'),
(171, 'isite::reCaptchaV2Site', '6Leyhb8UAAAAABNJePkByZFzZGDHXo_s6vASCpFW', 0, '2019-08-02 15:59:01', '2019-10-25 14:57:38'),
(172, 'isite::reCaptchaV3Secret', '6LeXhb8UAAAAAJynnrx_zWmO2l_FGNbNAevE2mFq', 0, '2019-08-02 15:59:01', '2019-10-25 14:57:38'),
(173, 'isite::reCaptchaV3Site', '6LeXhb8UAAAAAND64CNSBzFQwYhPrGQzA6_mJga4', 0, '2019-08-02 15:59:01', '2019-10-25 14:57:38'),
(174, 'isite::api-maps', NULL, 0, '2019-08-02 15:59:01', '2019-08-02 15:59:01'),
(175, 'iprofile::registerUsers', '1', 0, '2019-08-13 13:35:52', '2019-09-24 21:34:14'),
(176, 'iprofile::validateRegisterWithEmail', '1', 0, '2019-08-13 13:35:52', '2019-09-24 21:34:14'),
(177, 'iprofile::registerExtraFields', '[{\"active\":true,\"field\":\"cellularPhone\",\"required\":true},{\"active\":true,\"field\":\"birthday\",\"required\":false},{\"active\":true,\"field\":\"identification\",\"required\":true},{\"active\":true,\"field\":\"mainImage\",\"required\":false}]', 0, '2019-08-13 13:35:52', '2019-09-24 21:34:14'),
(178, 'iprofile::userAddressesExtraFields', '[]', 0, '2019-08-13 13:35:52', '2019-08-13 13:35:52'),
(179, 'isite::disableMenuLink', '0', 0, '2019-10-03 21:55:14', '2019-10-25 14:57:38');

-- --------------------------------------------------------

--
-- Table structure for table `setting__setting_translations`
--

CREATE TABLE `setting__setting_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `setting_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `value` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `setting__setting_translations`
--

INSERT INTO `setting__setting_translations` (`id`, `setting_id`, `locale`, `value`, `description`) VALUES
(19, 59, 'en', 'Imagina Colombia', NULL),
(20, 60, 'en', NULL, NULL),
(21, 61, 'en', NULL, NULL),
(22, 59, 'ace', NULL, NULL),
(23, 59, 'af', NULL, NULL),
(24, 59, 'es', 'Imagina Colombia', NULL),
(25, 60, 'ace', NULL, NULL),
(26, 60, 'af', NULL, NULL),
(27, 60, 'es', NULL, NULL),
(28, 61, 'ace', NULL, NULL),
(29, 61, 'af', NULL, NULL),
(30, 61, 'es', NULL, NULL),
(31, 59, 'gn', NULL, NULL),
(32, 60, 'gn', NULL, NULL),
(33, 61, 'gn', NULL, NULL),
(34, 59, 'ca', NULL, NULL),
(35, 60, 'ca', NULL, NULL),
(36, 61, 'ca', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `slider__sliders`
--

CREATE TABLE `slider__sliders` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `system_name` varchar(40) COLLATE utf8mb4_unicode_ci NOT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider__sliders`
--

INSERT INTO `slider__sliders` (`id`, `name`, `system_name`, `options`, `active`, `created_at`, `updated_at`) VALUES
(1, 'Home', 'home', '{\"masterRecord\":1}', 1, '2019-08-09 20:29:11', '2019-10-07 17:38:44'),
(2, 'Products', 'products', '{\"masterRecord\":1}', 1, '2019-08-14 14:40:37', '2019-10-07 17:21:26'),
(3, 'Galería', 'galeria', '{\"masterRecord\":1}', 1, '2019-08-15 16:41:52', '2019-09-12 16:10:08');

-- --------------------------------------------------------

--
-- Table structure for table `slider__slides`
--

CREATE TABLE `slider__slides` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slider_id` int(10) UNSIGNED NOT NULL,
  `page_id` int(10) UNSIGNED DEFAULT NULL,
  `position` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `target` varchar(10) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `options` text COLLATE utf8mb4_unicode_ci,
  `external_image_url` text COLLATE utf8mb4_unicode_ci,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT 'auto'
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider__slides`
--

INSERT INTO `slider__slides` (`id`, `created_at`, `updated_at`, `slider_id`, `page_id`, `position`, `target`, `options`, `external_image_url`, `type`) VALUES
(2, '2019-08-14 14:41:09', '2019-08-14 14:41:09', 2, NULL, 0, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(3, '2019-08-14 14:41:17', '2019-08-14 14:41:17', 2, NULL, 1, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(4, '2019-08-14 14:41:23', '2019-08-14 14:41:23', 2, NULL, 2, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(5, '2019-08-14 14:41:31', '2019-08-14 14:41:31', 2, NULL, 3, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(6, '2019-08-14 14:41:38', '2019-08-14 14:41:38', 2, NULL, 4, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(7, '2019-08-14 14:41:48', '2019-08-14 14:41:48', 2, NULL, 5, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(8, '2019-08-14 14:41:57', '2019-08-14 14:41:57', 2, NULL, 6, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(9, '2019-08-14 14:42:03', '2019-08-14 14:42:03', 2, NULL, 7, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(11, '2019-08-15 16:44:56', '2019-08-15 16:44:56', 3, NULL, 0, NULL, '{\"masterRecord\":0}', NULL, '360'),
(12, '2019-08-15 16:46:39', '2019-08-15 16:46:39', 3, NULL, 1, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(13, '2019-08-15 16:46:45', '2019-08-15 16:46:45', 3, NULL, 2, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(14, '2019-08-15 16:46:50', '2019-08-15 16:46:50', 3, NULL, 3, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(15, '2019-08-15 16:47:01', '2019-08-15 16:47:01', 3, NULL, 4, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(16, '2019-08-15 16:47:07', '2019-08-15 16:47:07', 3, NULL, 5, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(17, '2019-08-15 16:47:16', '2019-08-15 16:47:16', 3, NULL, 6, NULL, '{\"masterRecord\":0}', NULL, 'auto'),
(18, '2019-09-10 14:43:34', '2019-09-10 14:50:14', 1, NULL, 0, NULL, '{\"masterRecord\":0}', NULL, 'auto');

-- --------------------------------------------------------

--
-- Table structure for table `slider__slide_translations`
--

CREATE TABLE `slider__slide_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `slide_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `title` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `caption` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `url` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `uri` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `active` tinyint(1) NOT NULL DEFAULT '0',
  `custom_html` text COLLATE utf8mb4_unicode_ci
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `slider__slide_translations`
--

INSERT INTO `slider__slide_translations` (`id`, `created_at`, `updated_at`, `slide_id`, `locale`, `title`, `caption`, `url`, `uri`, `active`, `custom_html`) VALUES
(1, '2019-08-09 20:31:42', '2019-08-13 22:43:30', 1, 'es', 'Imagina colombia', 'Imagina colombia', NULL, NULL, 1, 'imagina las posibilidades'),
(2, '2019-08-14 14:41:09', '2019-08-14 14:41:09', 2, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(3, '2019-08-14 14:41:17', '2019-08-14 14:41:17', 3, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(4, '2019-08-14 14:41:23', '2019-08-14 14:41:23', 4, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(5, '2019-08-14 14:41:31', '2019-08-14 14:41:31', 5, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(6, '2019-08-14 14:41:38', '2019-08-14 14:41:38', 6, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(7, '2019-08-14 14:41:48', '2019-08-14 14:41:48', 7, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(8, '2019-08-14 14:41:57', '2019-08-14 14:41:57', 8, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(9, '2019-08-14 14:42:03', '2019-08-14 14:42:03', 9, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(10, '2019-08-15 16:42:40', '2019-08-15 16:42:40', 10, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(11, '2019-08-15 16:44:56', '2019-08-15 16:44:56', 11, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(12, '2019-08-15 16:46:39', '2019-08-15 16:46:39', 12, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(13, '2019-08-15 16:46:45', '2019-08-15 16:46:45', 13, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(14, '2019-08-15 16:46:50', '2019-08-15 16:46:50', 14, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(15, '2019-08-15 16:47:01', '2019-08-15 16:47:01', 15, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(16, '2019-08-15 16:47:07', '2019-08-15 16:47:07', 16, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(17, '2019-08-15 16:47:16', '2019-08-15 16:47:16', 17, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(18, '2019-09-10 14:43:34', '2019-10-22 16:52:58', 18, 'es', 'Tu Negocio', NULL, NULL, NULL, 1, '<div style=\"text-align: center;\">Tu Trayectoria</div><div style=\"text-align: center;\">Tu Historia</div>'),
(20, '2019-10-07 17:35:30', '2019-10-07 17:35:30', 20, 'en', 'wewe', NULL, NULL, NULL, 1, NULL),
(21, '2019-10-07 17:35:30', '2019-10-07 17:35:30', 20, 'es', 'wewe', NULL, NULL, NULL, 1, NULL),
(19, '2019-09-10 15:17:38', '2019-09-12 16:43:32', 19, 'es', NULL, NULL, NULL, NULL, 1, '<p class=\"MsoNormal\" style=\"margin-bottom:10.0pt;line-height:115%\">NO EXISTE <b>AMOR</b>\nTAN SINCERO COMO EL AMOR A LA COMIDA...<o:p></o:p></p>'),
(22, '2019-10-07 17:36:34', '2019-10-07 17:36:34', 21, 'en', NULL, NULL, NULL, NULL, 1, NULL),
(23, '2019-10-07 17:36:34', '2019-10-07 17:36:34', 21, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(24, '2019-10-07 17:36:40', '2019-10-07 17:36:40', 22, 'en', NULL, NULL, NULL, NULL, 1, NULL),
(25, '2019-10-07 17:36:40', '2019-10-07 17:36:40', 22, 'es', NULL, NULL, NULL, NULL, 1, NULL),
(26, '2019-10-10 21:40:33', '2019-10-10 21:40:33', 18, 'en', 'Tu Negocio', NULL, NULL, NULL, 1, '<div style=\"text-align: center;\">Tu Trayectoria</div><div style=\"text-align: center;\">Tu Historia</div>');

-- --------------------------------------------------------

--
-- Table structure for table `tag__tagged`
--

CREATE TABLE `tag__tagged` (
  `id` int(10) UNSIGNED NOT NULL,
  `taggable_type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `taggable_id` int(10) UNSIGNED NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tagged`
--

INSERT INTO `tag__tagged` (`id`, `taggable_type`, `taggable_id`, `tag_id`) VALUES
(1, 'Modules\\Media\\Entities\\File', 36, 1),
(2, 'Modules\\Media\\Entities\\File', 36, 2),
(8, 'Modules\\Iblog\\Entities\\Post', 3, 7),
(7, 'Modules\\Iblog\\Entities\\Post', 2, 7),
(6, 'Modules\\Media\\Entities\\File', 83, 6),
(9, 'Modules\\Media\\Entities\\File', 94, 8),
(10, 'Modules\\Iblog\\Entities\\Post', 4, 9),
(11, 'Modules\\Iblog\\Entities\\Post', 4, 10);

-- --------------------------------------------------------

--
-- Table structure for table `tag__tags`
--

CREATE TABLE `tag__tags` (
  `id` int(10) UNSIGNED NOT NULL,
  `namespace` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tags`
--

INSERT INTO `tag__tags` (`id`, `namespace`, `created_at`, `updated_at`) VALUES
(1, 'asgardcms/media', '2019-05-01 22:09:44', '2019-05-01 22:09:44'),
(2, 'asgardcms/media', '2019-05-01 22:09:44', '2019-05-01 22:09:44'),
(3, 'asgardcms/media', '2019-05-10 22:16:51', '2019-05-10 22:16:51'),
(4, 'asgardcms/media', '2019-05-10 22:16:51', '2019-05-10 22:16:51'),
(5, 'asgardcms/media', '2019-05-10 22:16:51', '2019-05-10 22:16:51'),
(6, 'asgardcms/media', '2019-05-11 00:52:08', '2019-05-11 00:52:08'),
(7, 'asgardcms/post', '2019-05-21 19:01:01', '2019-05-21 19:01:01'),
(8, 'asgardcms/media', '2019-05-21 22:16:35', '2019-05-21 22:16:35'),
(9, 'asgardcms/post', '2019-05-21 22:26:22', '2019-05-21 22:26:22'),
(10, 'asgardcms/post', '2019-05-21 22:26:22', '2019-05-21 22:26:22');

-- --------------------------------------------------------

--
-- Table structure for table `tag__tag_translations`
--

CREATE TABLE `tag__tag_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `slug` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tag_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `tag__tag_translations`
--

INSERT INTO `tag__tag_translations` (`id`, `slug`, `name`, `tag_id`, `locale`) VALUES
(1, 'attemp', 'attemp', 1, 'es'),
(2, 'hola-mundo', 'hola mundo', 2, 'es'),
(3, 'sasdas', 'sasdas', 3, 'en'),
(4, 'sdasda', 'sdasda', 4, 'en'),
(5, 'sdasd', 'sdasd', 5, 'en'),
(6, 'aaa', 'aaa', 6, 'en'),
(7, 'holas', 'holas', 7, 'en'),
(8, 'asdqwe', 'asdqwe', 8, 'en'),
(9, 'hello', 'hello', 9, 'en'),
(10, 'holla', 'holla', 10, 'en');

-- --------------------------------------------------------

--
-- Table structure for table `throttle`
--

CREATE TABLE `throttle` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED DEFAULT NULL,
  `type` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `ip` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `throttle`
--

INSERT INTO `throttle` (`id`, `user_id`, `type`, `ip`, `created_at`, `updated_at`) VALUES
(1, NULL, 'global', NULL, '2019-04-18 01:18:24', '2019-04-18 01:18:24'),
(2, NULL, 'ip', '181.56.253.64', '2019-04-18 01:18:24', '2019-04-18 01:18:24'),
(3, NULL, 'global', NULL, '2019-04-22 19:38:35', '2019-04-22 19:38:35'),
(4, NULL, 'ip', '181.56.253.64', '2019-04-22 19:38:35', '2019-04-22 19:38:35'),
(5, 1, 'user', NULL, '2019-04-22 19:38:35', '2019-04-22 19:38:35'),
(6, NULL, 'global', NULL, '2019-04-26 02:04:08', '2019-04-26 02:04:08'),
(7, NULL, 'ip', '181.56.253.64', '2019-04-26 02:04:08', '2019-04-26 02:04:08'),
(8, NULL, 'global', NULL, '2019-04-26 02:04:21', '2019-04-26 02:04:21'),
(9, NULL, 'ip', '181.56.253.64', '2019-04-26 02:04:21', '2019-04-26 02:04:21'),
(10, NULL, 'global', NULL, '2019-04-26 02:04:44', '2019-04-26 02:04:44'),
(11, NULL, 'ip', '181.56.253.64', '2019-04-26 02:04:44', '2019-04-26 02:04:44'),
(12, NULL, 'global', NULL, '2019-04-26 02:04:47', '2019-04-26 02:04:47'),
(13, NULL, 'ip', '181.56.253.64', '2019-04-26 02:04:47', '2019-04-26 02:04:47'),
(14, NULL, 'global', NULL, '2019-04-26 02:33:58', '2019-04-26 02:33:58'),
(15, NULL, 'ip', '181.56.253.64', '2019-04-26 02:33:58', '2019-04-26 02:33:58'),
(16, NULL, 'global', NULL, '2019-04-26 02:40:42', '2019-04-26 02:40:42'),
(17, NULL, 'ip', '181.56.253.64', '2019-04-26 02:40:42', '2019-04-26 02:40:42'),
(18, NULL, 'global', NULL, '2019-04-26 02:42:27', '2019-04-26 02:42:27'),
(19, NULL, 'ip', '181.56.253.64', '2019-04-26 02:42:27', '2019-04-26 02:42:27'),
(20, NULL, 'global', NULL, '2019-04-30 19:08:51', '2019-04-30 19:08:51'),
(21, NULL, 'ip', '181.56.253.64', '2019-04-30 19:08:51', '2019-04-30 19:08:51'),
(22, 1, 'user', NULL, '2019-04-30 19:08:51', '2019-04-30 19:08:51'),
(23, NULL, 'global', NULL, '2019-05-01 01:44:10', '2019-05-01 01:44:10'),
(24, NULL, 'ip', '181.56.253.64', '2019-05-01 01:44:10', '2019-05-01 01:44:10'),
(25, 1, 'user', NULL, '2019-05-01 01:44:10', '2019-05-01 01:44:10'),
(26, NULL, 'global', NULL, '2019-05-01 20:14:59', '2019-05-01 20:14:59'),
(27, NULL, 'ip', '181.56.253.64', '2019-05-01 20:14:59', '2019-05-01 20:14:59'),
(28, 1, 'user', NULL, '2019-05-01 20:14:59', '2019-05-01 20:14:59');

-- --------------------------------------------------------

--
-- Table structure for table `translation__translations`
--

CREATE TABLE `translation__translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `key` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `deleted_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `translation__translation_translations`
--

CREATE TABLE `translation__translation_translations` (
  `id` int(10) UNSIGNED NOT NULL,
  `value` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `translation_id` int(10) UNSIGNED NOT NULL,
  `locale` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `email` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `permissions` text COLLATE utf8mb4_unicode_ci,
  `last_login` timestamp NULL DEFAULT NULL,
  `first_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_name` varchar(191) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `permissions`, `last_login`, `first_name`, `last_name`, `created_at`, `updated_at`) VALUES
(1, 'soporte@imaginacolombia.com', '$2y$10$D10NNYaQvkQJix3l1KRPGuqWNRJj76aBP2FVRfD.WwLpwsRruaAA.', NULL, '2019-10-28 17:35:40', 'Imagina', 'Colombia', '2019-04-16 21:21:49', '2019-10-28 17:35:40');

-- --------------------------------------------------------

--
-- Table structure for table `user_tokens`
--

CREATE TABLE `user_tokens` (
  `id` int(10) UNSIGNED NOT NULL,
  `user_id` int(10) UNSIGNED NOT NULL,
  `access_token` varchar(191) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user_tokens`
--

INSERT INTO `user_tokens` (`id`, `user_id`, `access_token`, `created_at`, `updated_at`) VALUES
(1, 1, '4fcbd7a1-0817-482c-8d58-91df263b36af', '2019-04-16 21:21:50', '2019-04-16 21:21:50'),
(8, 8, '3f89d91a-11f9-4207-b062-3b2f05934f7f', '2019-08-15 22:37:44', '2019-08-15 22:37:44'),
(9, 19, '6c62d6fe-f624-47a2-8bed-26c266b74bae', '2019-09-30 17:08:52', '2019-09-30 17:08:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activations`
--
ALTER TABLE `activations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  ADD PRIMARY KEY (`id`),
  ADD KEY `dashboard__widgets_user_id_foreign` (`user_id`);

--
-- Indexes for table `ibanners__banners`
--
ALTER TABLE `ibanners__banners`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibanners__banner__category`
--
ALTER TABLE `ibanners__banner__category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ibanners__categories`
--
ALTER TABLE `ibanners__categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ibanners__categories_slug_unique` (`slug`);

--
-- Indexes for table `iblog__categories`
--
ALTER TABLE `iblog__categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iblog__category_translations`
--
ALTER TABLE `iblog__category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iblog__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `iblog__category_translations_slug_index` (`slug`),
  ADD KEY `iblog__category_translations_locale_index` (`locale`);

--
-- Indexes for table `iblog__posts`
--
ALTER TABLE `iblog__posts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iblog__posts_category_id_foreign` (`category_id`),
  ADD KEY `iblog__posts_user_id_foreign` (`user_id`);

--
-- Indexes for table `iblog__post_translations`
--
ALTER TABLE `iblog__post_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iblog__post_translations_post_id_locale_unique` (`post_id`,`locale`),
  ADD KEY `iblog__post_translations_slug_index` (`slug`),
  ADD KEY `iblog__post_translations_locale_index` (`locale`);

--
-- Indexes for table `iblog__post__category`
--
ALTER TABLE `iblog__post__category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iblog__post__tag`
--
ALTER TABLE `iblog__post__tag`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iblog__tags`
--
ALTER TABLE `iblog__tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__carts`
--
ALTER TABLE `icommerce__carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__carts_user_id_foreign` (`user_id`);

--
-- Indexes for table `icommerce__cart_product`
--
ALTER TABLE `icommerce__cart_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__cart_product_cart_id_foreign` (`cart_id`),
  ADD KEY `icommerce__cart_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `icommerce__cart_product_options`
--
ALTER TABLE `icommerce__cart_product_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__cart_product_options_cart_product_id_foreign` (`cart_product_id`),
  ADD KEY `icommerce__cart_product_options_product_option_id_foreign` (`product_option_id`),
  ADD KEY `icommerce__cart_product_options_product_option_value_id_foreign` (`product_option_value_id`);

--
-- Indexes for table `icommerce__categories`
--
ALTER TABLE `icommerce__categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__category_translations`
--
ALTER TABLE `icommerce__category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `icommerce__category_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__coupons`
--
ALTER TABLE `icommerce__coupons`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__coupons_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `icommerce__coupon_category`
--
ALTER TABLE `icommerce__coupon_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__coupon_category_coupon_id_foreign` (`coupon_id`),
  ADD KEY `icommerce__coupon_category_category_id_foreign` (`category_id`);

--
-- Indexes for table `icommerce__coupon_order_history`
--
ALTER TABLE `icommerce__coupon_order_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__coupon_order_history_coupon_id_foreign` (`coupon_id`),
  ADD KEY `icommerce__coupon_order_history_order_id_foreign` (`order_id`),
  ADD KEY `icommerce__coupon_order_history_customer_id_foreign` (`customer_id`);

--
-- Indexes for table `icommerce__coupon_product`
--
ALTER TABLE `icommerce__coupon_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__coupon_product_coupon_id_foreign` (`coupon_id`),
  ADD KEY `icommerce__coupon_product_product_id_foreign` (`product_id`);

--
-- Indexes for table `icommerce__coupon_translations`
--
ALTER TABLE `icommerce__coupon_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__coupon_translations_coupon_id_locale_unique` (`coupon_id`,`locale`),
  ADD KEY `icommerce__coupon_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__currencies`
--
ALTER TABLE `icommerce__currencies`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__currency_translations`
--
ALTER TABLE `icommerce__currency_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__currency_translations_currency_id_locale_unique` (`currency_id`,`locale`),
  ADD KEY `icommerce__currency_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__item_types`
--
ALTER TABLE `icommerce__item_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__item_type_translations`
--
ALTER TABLE `icommerce__item_type_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__item_type_translations_item_type_id_locale_unique` (`item_type_id`,`locale`),
  ADD KEY `icommerce__item_type_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__manufacturers`
--
ALTER TABLE `icommerce__manufacturers`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__manufacturer_trans`
--
ALTER TABLE `icommerce__manufacturer_trans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__manufacturer_trans_manufacturer_id_locale_unique` (`manufacturer_id`,`locale`),
  ADD KEY `icommerce__manufacturer_trans_locale_index` (`locale`);

--
-- Indexes for table `icommerce__mapareas`
--
ALTER TABLE `icommerce__mapareas`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__mapareas_store_id_foreign` (`store_id`);

--
-- Indexes for table `icommerce__options`
--
ALTER TABLE `icommerce__options`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__option_translations`
--
ALTER TABLE `icommerce__option_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__option_translations_option_id_locale_unique` (`option_id`,`locale`),
  ADD KEY `icommerce__option_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__option_values`
--
ALTER TABLE `icommerce__option_values`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__option_values_option_id_foreign` (`option_id`);

--
-- Indexes for table `icommerce__option_value_trans`
--
ALTER TABLE `icommerce__option_value_trans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__option_value_trans_option_value_id_locale_unique` (`option_value_id`,`locale`),
  ADD KEY `icommerce__option_value_trans_locale_index` (`locale`);

--
-- Indexes for table `icommerce__orders`
--
ALTER TABLE `icommerce__orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__orders_status_id_foreign` (`status_id`),
  ADD KEY `icommerce__orders_customer_id_foreign` (`customer_id`),
  ADD KEY `icommerce__orders_added_by_id_foreign` (`added_by_id`),
  ADD KEY `icommerce__orders_currency_id_foreign` (`currency_id`);

--
-- Indexes for table `icommerce__order_item`
--
ALTER TABLE `icommerce__order_item`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__order_item_order_id_foreign` (`order_id`),
  ADD KEY `icommerce__order_item_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__order_item_item_type_id_foreign` (`item_type_id`);

--
-- Indexes for table `icommerce__order_options`
--
ALTER TABLE `icommerce__order_options`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__order_options_order_id_foreign` (`order_id`),
  ADD KEY `icommerce__order_options_order_item_id_foreign` (`order_item_id`);

--
-- Indexes for table `icommerce__order_statuses`
--
ALTER TABLE `icommerce__order_statuses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__order_status_history`
--
ALTER TABLE `icommerce__order_status_history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__order_status_history_order_id_foreign` (`order_id`);

--
-- Indexes for table `icommerce__order_status_trans`
--
ALTER TABLE `icommerce__order_status_trans`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__order_status_trans_order_status_id_locale_unique` (`order_status_id`,`locale`),
  ADD KEY `icommerce__order_status_trans_locale_index` (`locale`);

--
-- Indexes for table `icommerce__payment_methods`
--
ALTER TABLE `icommerce__payment_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__payment_methods_geozones`
--
ALTER TABLE `icommerce__payment_methods_geozones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__payment_methods_geozones_payment_method_id_foreign` (`payment_method_id`),
  ADD KEY `icommerce__payment_methods_geozones_geozone_id_foreign` (`geozone_id`);

--
-- Indexes for table `icommerce__payment_method_translations`
--
ALTER TABLE `icommerce__payment_method_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_payment_method_id` (`payment_method_id`,`locale`),
  ADD KEY `icommerce__payment_method_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__price_lists`
--
ALTER TABLE `icommerce__price_lists`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__price_list_translations`
--
ALTER TABLE `icommerce__price_list_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__price_list_translations_price_list_id_locale_unique` (`price_list_id`,`locale`),
  ADD KEY `icommerce__price_list_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__products`
--
ALTER TABLE `icommerce__products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__products_added_by_id_foreign` (`added_by_id`),
  ADD KEY `icommerce__products_category_id_foreign` (`category_id`),
  ADD KEY `icommerce__products_tax_class_id_foreign` (`tax_class_id`),
  ADD KEY `icommerce__products_manufacturer_id_foreign` (`manufacturer_id`);

--
-- Indexes for table `icommerce__product_category`
--
ALTER TABLE `icommerce__product_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_category_category_id_foreign` (`category_id`),
  ADD KEY `icommerce__product_category_product_id_foreign` (`product_id`);

--
-- Indexes for table `icommerce__product_discounts`
--
ALTER TABLE `icommerce__product_discounts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_discounts_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__product_discounts_product_option_value_id_foreign` (`product_option_value_id`),
  ADD KEY `icommerce__product_discounts_product_option_id_foreign` (`product_option_id`);

--
-- Indexes for table `icommerce__product_lists`
--
ALTER TABLE `icommerce__product_lists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_lists_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__product_lists_price_list_id_foreign` (`price_list_id`);

--
-- Indexes for table `icommerce__product_option`
--
ALTER TABLE `icommerce__product_option`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_option_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__product_option_option_id_foreign` (`option_id`),
  ADD KEY `icommerce__product_option_parent_option_value_id_foreign` (`parent_option_value_id`);

--
-- Indexes for table `icommerce__product_option_value`
--
ALTER TABLE `icommerce__product_option_value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_option_value_product_option_id_foreign` (`product_option_id`),
  ADD KEY `icommerce__product_option_value_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__product_option_value_option_id_foreign` (`option_id`),
  ADD KEY `icommerce__product_option_value_option_value_id_foreign` (`option_value_id`),
  ADD KEY `icommerce__product_option_value_parent_option_value_id_foreign` (`parent_option_value_id`);

--
-- Indexes for table `icommerce__product_tag`
--
ALTER TABLE `icommerce__product_tag`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__product_tag_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__product_tag_tag_id_foreign` (`tag_id`);

--
-- Indexes for table `icommerce__product_translations`
--
ALTER TABLE `icommerce__product_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__product_translations_product_id_locale_unique` (`product_id`,`locale`),
  ADD KEY `icommerce__product_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__related_product`
--
ALTER TABLE `icommerce__related_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__related_product_product_id_foreign` (`product_id`),
  ADD KEY `icommerce__related_product_related_id_foreign` (`related_id`);

--
-- Indexes for table `icommerce__shipping_methods`
--
ALTER TABLE `icommerce__shipping_methods`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__shipping_methods_geozones`
--
ALTER TABLE `icommerce__shipping_methods_geozones`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__shipping_methods_geozones_shipping_method_id_foreign` (`shipping_method_id`),
  ADD KEY `icommerce__shipping_methods_geozones_geozone_id_foreign` (`geozone_id`);

--
-- Indexes for table `icommerce__shipping_method_translations`
--
ALTER TABLE `icommerce__shipping_method_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_shipping_method_id` (`shipping_method_id`,`locale`),
  ADD KEY `icommerce__shipping_method_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__stores`
--
ALTER TABLE `icommerce__stores`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__tags`
--
ALTER TABLE `icommerce__tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__tag_translations`
--
ALTER TABLE `icommerce__tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `icommerce__tag_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__tax_classes`
--
ALTER TABLE `icommerce__tax_classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `icommerce__tax_class_rate`
--
ALTER TABLE `icommerce__tax_class_rate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__tax_class_rate_tax_class_id_foreign` (`tax_class_id`),
  ADD KEY `icommerce__tax_class_rate_tax_rate_id_foreign` (`tax_rate_id`);

--
-- Indexes for table `icommerce__tax_class_translations`
--
ALTER TABLE `icommerce__tax_class_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__tax_class_translations_tax_class_id_locale_unique` (`tax_class_id`,`locale`),
  ADD KEY `icommerce__tax_class_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__tax_rates`
--
ALTER TABLE `icommerce__tax_rates`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__tax_rates_geozone_id_foreign` (`geozone_id`);

--
-- Indexes for table `icommerce__tax_rate_translations`
--
ALTER TABLE `icommerce__tax_rate_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `icommerce__tax_rate_translations_tax_rate_id_locale_unique` (`tax_rate_id`,`locale`),
  ADD KEY `icommerce__tax_rate_translations_locale_index` (`locale`);

--
-- Indexes for table `icommerce__transactions`
--
ALTER TABLE `icommerce__transactions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__transactions_order_id_foreign` (`order_id`),
  ADD KEY `icommerce__transactions_payment_method_id_foreign` (`payment_method_id`);

--
-- Indexes for table `icommerce__wishlists`
--
ALTER TABLE `icommerce__wishlists`
  ADD PRIMARY KEY (`id`),
  ADD KEY `icommerce__wishlists_user_id_foreign` (`user_id`),
  ADD KEY `icommerce__wishlists_product_id_foreign` (`product_id`);

--
-- Indexes for table `icustom__tasks`
--
ALTER TABLE `icustom__tasks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iforms__fields`
--
ALTER TABLE `iforms__fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iforms__fields_form_id_foreign` (`form_id`),
  ADD KEY `iforms__fields_type_index` (`type`);

--
-- Indexes for table `iforms__field_translations`
--
ALTER TABLE `iforms__field_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iforms__field_translations_field_id_locale_unique` (`field_id`,`locale`),
  ADD KEY `iforms__field_translations_label_index` (`label`),
  ADD KEY `iforms__field_translations_locale_index` (`locale`);

--
-- Indexes for table `iforms__forms`
--
ALTER TABLE `iforms__forms`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iforms__forms_user_id_foreign` (`user_id`);

--
-- Indexes for table `iforms__form_translations`
--
ALTER TABLE `iforms__form_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iforms__form_translations_form_id_locale_unique` (`form_id`,`locale`),
  ADD KEY `iforms__form_translations_locale_index` (`locale`);

--
-- Indexes for table `iforms__leads`
--
ALTER TABLE `iforms__leads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iforms__leads_form_id_foreign` (`form_id`);

--
-- Indexes for table `ilocations__cities`
--
ALTER TABLE `ilocations__cities`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ilocations__cities_country_id_foreign` (`country_id`),
  ADD KEY `ilocations__cities_province_id_foreign` (`province_id`);

--
-- Indexes for table `ilocations__city_translations`
--
ALTER TABLE `ilocations__city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ilocations__city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `ilocations__city_translations_locale_index` (`locale`);

--
-- Indexes for table `ilocations__countries`
--
ALTER TABLE `ilocations__countries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ilocations__country_translations`
--
ALTER TABLE `ilocations__country_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ilocations__country_translations_country_id_locale_unique` (`country_id`,`locale`),
  ADD KEY `ilocations__country_translations_locale_index` (`locale`);

--
-- Indexes for table `ilocations__geozones`
--
ALTER TABLE `ilocations__geozones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ilocations__geozones_countries_provinces`
--
ALTER TABLE `ilocations__geozones_countries_provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ilocations__geozones_countries_provinces_geozone_id_foreign` (`geozone_id`),
  ADD KEY `ilocations__geozones_countries_provinces_country_id_foreign` (`country_id`),
  ADD KEY `ilocations__geozones_countries_provinces_province_id_foreign` (`province_id`);

--
-- Indexes for table `ilocations__provinces`
--
ALTER TABLE `ilocations__provinces`
  ADD PRIMARY KEY (`id`),
  ADD KEY `ilocations__provinces_country_id_foreign` (`country_id`);

--
-- Indexes for table `ilocations__province_translations`
--
ALTER TABLE `ilocations__province_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `ilocations__province_translations_province_id_locale_unique` (`province_id`,`locale`),
  ADD KEY `ilocations__province_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__categories`
--
ALTER TABLE `iplaces__categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__category_translations`
--
ALTER TABLE `iplaces__category_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__category_translations_category_id_locale_unique` (`category_id`,`locale`),
  ADD KEY `iplaces__category_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__cities`
--
ALTER TABLE `iplaces__cities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__city_translations`
--
ALTER TABLE `iplaces__city_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__city_translations_city_id_locale_unique` (`city_id`,`locale`),
  ADD KEY `iplaces__city_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__places`
--
ALTER TABLE `iplaces__places`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iplaces__places_user_id_foreign` (`user_id`);

--
-- Indexes for table `iplaces__place_category`
--
ALTER TABLE `iplaces__place_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__place_schedule`
--
ALTER TABLE `iplaces__place_schedule`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__place_service`
--
ALTER TABLE `iplaces__place_service`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__place_space`
--
ALTER TABLE `iplaces__place_space`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__place_translations`
--
ALTER TABLE `iplaces__place_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__place_translations_place_id_locale_unique` (`place_id`,`locale`),
  ADD KEY `iplaces__place_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__place_zone`
--
ALTER TABLE `iplaces__place_zone`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__related_place`
--
ALTER TABLE `iplaces__related_place`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__schedules`
--
ALTER TABLE `iplaces__schedules`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__schedule_translations`
--
ALTER TABLE `iplaces__schedule_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__schedule_translations_schedule_id_locale_unique` (`schedule_id`,`locale`),
  ADD KEY `iplaces__schedule_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__services`
--
ALTER TABLE `iplaces__services`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__service_translations`
--
ALTER TABLE `iplaces__service_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__service_translations_service_id_locale_unique` (`service_id`,`locale`),
  ADD KEY `iplaces__service_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__spaces`
--
ALTER TABLE `iplaces__spaces`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__space_translations`
--
ALTER TABLE `iplaces__space_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__space_translations_space_id_locale_unique` (`space_id`,`locale`),
  ADD KEY `iplaces__space_translations_locale_index` (`locale`);

--
-- Indexes for table `iplaces__zones`
--
ALTER TABLE `iplaces__zones`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iplaces__zone_translations`
--
ALTER TABLE `iplaces__zone_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `iplaces__zone_translations_zone_id_locale_unique` (`zone_id`,`locale`),
  ADD KEY `iplaces__zone_translations_locale_index` (`locale`);

--
-- Indexes for table `iprofile__addresses`
--
ALTER TABLE `iprofile__addresses`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iprofile__addresses_user_id_foreign` (`user_id`);

--
-- Indexes for table `iprofile__departments`
--
ALTER TABLE `iprofile__departments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iprofile__fields`
--
ALTER TABLE `iprofile__fields`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iprofile__fields_user_id_foreign` (`user_id`);

--
-- Indexes for table `iprofile__settings`
--
ALTER TABLE `iprofile__settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `iprofile__user_department`
--
ALTER TABLE `iprofile__user_department`
  ADD PRIMARY KEY (`id`),
  ADD KEY `iprofile__user_department_user_id_foreign` (`user_id`),
  ADD KEY `iprofile__user_department_department_id_foreign` (`department_id`);

--
-- Indexes for table `media__files`
--
ALTER TABLE `media__files`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `media__file_translations_file_id_locale_unique` (`file_id`,`locale`),
  ADD KEY `media__file_translations_locale_index` (`locale`);

--
-- Indexes for table `media__imageables`
--
ALTER TABLE `media__imageables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  ADD PRIMARY KEY (`id`),
  ADD KEY `menu__menuitems_menu_id_foreign` (`menu_id`);

--
-- Indexes for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu__menuitem_translations_menuitem_id_locale_unique` (`menuitem_id`,`locale`),
  ADD KEY `menu__menuitem_translations_locale_index` (`locale`);

--
-- Indexes for table `menu__menus`
--
ALTER TABLE `menu__menus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `menu__menu_translations_menu_id_locale_unique` (`menu_id`,`locale`),
  ADD KEY `menu__menu_translations_locale_index` (`locale`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_access_tokens`
--
ALTER TABLE `oauth_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_access_tokens_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_auth_codes`
--
ALTER TABLE `oauth_auth_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_clients_user_id_index` (`user_id`);

--
-- Indexes for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_personal_access_clients_client_id_index` (`client_id`);

--
-- Indexes for table `oauth_refresh_tokens`
--
ALTER TABLE `oauth_refresh_tokens`
  ADD PRIMARY KEY (`id`),
  ADD KEY `oauth_refresh_tokens_access_token_id_index` (`access_token_id`);

--
-- Indexes for table `page__pages`
--
ALTER TABLE `page__pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `page__page_translations_page_id_locale_unique` (`page_id`,`locale`),
  ADD KEY `page__page_translations_locale_index` (`locale`);

--
-- Indexes for table `persistences`
--
ALTER TABLE `persistences`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `persistences_code_unique` (`code`);

--
-- Indexes for table `reminders`
--
ALTER TABLE `reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `revisions`
--
ALTER TABLE `revisions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `revisions_revisionable_id_revisionable_type_index` (`revisionable_id`,`revisionable_type`);

--
-- Indexes for table `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `roles_slug_unique` (`slug`);

--
-- Indexes for table `role_users`
--
ALTER TABLE `role_users`
  ADD PRIMARY KEY (`user_id`,`role_id`);

--
-- Indexes for table `setting__settings`
--
ALTER TABLE `setting__settings`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting__settings_name_unique` (`name`),
  ADD KEY `setting__settings_name_index` (`name`);

--
-- Indexes for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `setting__setting_translations_setting_id_locale_unique` (`setting_id`,`locale`),
  ADD KEY `setting__setting_translations_locale_index` (`locale`);

--
-- Indexes for table `slider__sliders`
--
ALTER TABLE `slider__sliders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `slider__slides`
--
ALTER TABLE `slider__slides`
  ADD PRIMARY KEY (`id`),
  ADD KEY `slider__slides_slider_id_foreign` (`slider_id`);

--
-- Indexes for table `slider__slide_translations`
--
ALTER TABLE `slider__slide_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `slider__slide_translations_slide_id_locale_unique` (`slide_id`,`locale`),
  ADD KEY `slider__slide_translations_locale_index` (`locale`);

--
-- Indexes for table `tag__tagged`
--
ALTER TABLE `tag__tagged`
  ADD PRIMARY KEY (`id`),
  ADD KEY `tag__tagged_taggable_type_taggable_id_index` (`taggable_type`,`taggable_id`);

--
-- Indexes for table `tag__tags`
--
ALTER TABLE `tag__tags`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `tag__tag_translations_tag_id_locale_unique` (`tag_id`,`locale`),
  ADD KEY `tag__tag_translations_locale_index` (`locale`);

--
-- Indexes for table `throttle`
--
ALTER TABLE `throttle`
  ADD PRIMARY KEY (`id`),
  ADD KEY `throttle_user_id_index` (`user_id`);

--
-- Indexes for table `translation__translations`
--
ALTER TABLE `translation__translations`
  ADD PRIMARY KEY (`id`),
  ADD KEY `translation__translations_key_index` (`key`);

--
-- Indexes for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `translations_trans_id_locale_unique` (`translation_id`,`locale`),
  ADD KEY `translation__translation_translations_locale_index` (`locale`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `user_tokens`
--
ALTER TABLE `user_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `user_tokens_access_token_unique` (`access_token`),
  ADD KEY `user_tokens_user_id_foreign` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activations`
--
ALTER TABLE `activations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ibanners__banners`
--
ALTER TABLE `ibanners__banners`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ibanners__banner__category`
--
ALTER TABLE `ibanners__banner__category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `ibanners__categories`
--
ALTER TABLE `ibanners__categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iblog__categories`
--
ALTER TABLE `iblog__categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iblog__category_translations`
--
ALTER TABLE `iblog__category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iblog__posts`
--
ALTER TABLE `iblog__posts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `iblog__post_translations`
--
ALTER TABLE `iblog__post_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `iblog__post__category`
--
ALTER TABLE `iblog__post__category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `iblog__post__tag`
--
ALTER TABLE `iblog__post__tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iblog__tags`
--
ALTER TABLE `iblog__tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__carts`
--
ALTER TABLE `icommerce__carts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__cart_product`
--
ALTER TABLE `icommerce__cart_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__cart_product_options`
--
ALTER TABLE `icommerce__cart_product_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__categories`
--
ALTER TABLE `icommerce__categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `icommerce__category_translations`
--
ALTER TABLE `icommerce__category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `icommerce__coupons`
--
ALTER TABLE `icommerce__coupons`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__coupon_category`
--
ALTER TABLE `icommerce__coupon_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__coupon_order_history`
--
ALTER TABLE `icommerce__coupon_order_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__coupon_product`
--
ALTER TABLE `icommerce__coupon_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__coupon_translations`
--
ALTER TABLE `icommerce__coupon_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__currencies`
--
ALTER TABLE `icommerce__currencies`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__currency_translations`
--
ALTER TABLE `icommerce__currency_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__item_types`
--
ALTER TABLE `icommerce__item_types`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__item_type_translations`
--
ALTER TABLE `icommerce__item_type_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__manufacturers`
--
ALTER TABLE `icommerce__manufacturers`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__manufacturer_trans`
--
ALTER TABLE `icommerce__manufacturer_trans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__mapareas`
--
ALTER TABLE `icommerce__mapareas`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__options`
--
ALTER TABLE `icommerce__options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `icommerce__option_translations`
--
ALTER TABLE `icommerce__option_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `icommerce__option_values`
--
ALTER TABLE `icommerce__option_values`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT for table `icommerce__option_value_trans`
--
ALTER TABLE `icommerce__option_value_trans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=81;

--
-- AUTO_INCREMENT for table `icommerce__orders`
--
ALTER TABLE `icommerce__orders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__order_item`
--
ALTER TABLE `icommerce__order_item`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__order_options`
--
ALTER TABLE `icommerce__order_options`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__order_statuses`
--
ALTER TABLE `icommerce__order_statuses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__order_status_history`
--
ALTER TABLE `icommerce__order_status_history`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__order_status_trans`
--
ALTER TABLE `icommerce__order_status_trans`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__payment_methods`
--
ALTER TABLE `icommerce__payment_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__payment_methods_geozones`
--
ALTER TABLE `icommerce__payment_methods_geozones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__payment_method_translations`
--
ALTER TABLE `icommerce__payment_method_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__price_lists`
--
ALTER TABLE `icommerce__price_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__price_list_translations`
--
ALTER TABLE `icommerce__price_list_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__products`
--
ALTER TABLE `icommerce__products`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;

--
-- AUTO_INCREMENT for table `icommerce__product_category`
--
ALTER TABLE `icommerce__product_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `icommerce__product_discounts`
--
ALTER TABLE `icommerce__product_discounts`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__product_lists`
--
ALTER TABLE `icommerce__product_lists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__product_option`
--
ALTER TABLE `icommerce__product_option`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `icommerce__product_option_value`
--
ALTER TABLE `icommerce__product_option_value`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `icommerce__product_tag`
--
ALTER TABLE `icommerce__product_tag`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__product_translations`
--
ALTER TABLE `icommerce__product_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=249;

--
-- AUTO_INCREMENT for table `icommerce__related_product`
--
ALTER TABLE `icommerce__related_product`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__shipping_methods`
--
ALTER TABLE `icommerce__shipping_methods`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__shipping_methods_geozones`
--
ALTER TABLE `icommerce__shipping_methods_geozones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__shipping_method_translations`
--
ALTER TABLE `icommerce__shipping_method_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__stores`
--
ALTER TABLE `icommerce__stores`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tags`
--
ALTER TABLE `icommerce__tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tag_translations`
--
ALTER TABLE `icommerce__tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tax_classes`
--
ALTER TABLE `icommerce__tax_classes`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tax_class_rate`
--
ALTER TABLE `icommerce__tax_class_rate`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tax_class_translations`
--
ALTER TABLE `icommerce__tax_class_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tax_rates`
--
ALTER TABLE `icommerce__tax_rates`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__tax_rate_translations`
--
ALTER TABLE `icommerce__tax_rate_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__transactions`
--
ALTER TABLE `icommerce__transactions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icommerce__wishlists`
--
ALTER TABLE `icommerce__wishlists`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `icustom__tasks`
--
ALTER TABLE `icustom__tasks`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `iforms__fields`
--
ALTER TABLE `iforms__fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `iforms__field_translations`
--
ALTER TABLE `iforms__field_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `iforms__forms`
--
ALTER TABLE `iforms__forms`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iforms__form_translations`
--
ALTER TABLE `iforms__form_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iforms__leads`
--
ALTER TABLE `iforms__leads`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `ilocations__cities`
--
ALTER TABLE `ilocations__cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__city_translations`
--
ALTER TABLE `ilocations__city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__countries`
--
ALTER TABLE `ilocations__countries`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__country_translations`
--
ALTER TABLE `ilocations__country_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__geozones`
--
ALTER TABLE `ilocations__geozones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__geozones_countries_provinces`
--
ALTER TABLE `ilocations__geozones_countries_provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `ilocations__provinces`
--
ALTER TABLE `ilocations__provinces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `ilocations__province_translations`
--
ALTER TABLE `ilocations__province_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `iplaces__categories`
--
ALTER TABLE `iplaces__categories`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `iplaces__category_translations`
--
ALTER TABLE `iplaces__category_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `iplaces__cities`
--
ALTER TABLE `iplaces__cities`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__city_translations`
--
ALTER TABLE `iplaces__city_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__places`
--
ALTER TABLE `iplaces__places`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `iplaces__place_category`
--
ALTER TABLE `iplaces__place_category`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iplaces__place_schedule`
--
ALTER TABLE `iplaces__place_schedule`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `iplaces__place_service`
--
ALTER TABLE `iplaces__place_service`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__place_space`
--
ALTER TABLE `iplaces__place_space`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__place_translations`
--
ALTER TABLE `iplaces__place_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `iplaces__place_zone`
--
ALTER TABLE `iplaces__place_zone`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__related_place`
--
ALTER TABLE `iplaces__related_place`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__schedules`
--
ALTER TABLE `iplaces__schedules`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `iplaces__schedule_translations`
--
ALTER TABLE `iplaces__schedule_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `iplaces__services`
--
ALTER TABLE `iplaces__services`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__service_translations`
--
ALTER TABLE `iplaces__service_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__spaces`
--
ALTER TABLE `iplaces__spaces`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__space_translations`
--
ALTER TABLE `iplaces__space_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__zones`
--
ALTER TABLE `iplaces__zones`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iplaces__zone_translations`
--
ALTER TABLE `iplaces__zone_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `iprofile__addresses`
--
ALTER TABLE `iprofile__addresses`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iprofile__departments`
--
ALTER TABLE `iprofile__departments`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `iprofile__fields`
--
ALTER TABLE `iprofile__fields`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=70;

--
-- AUTO_INCREMENT for table `iprofile__settings`
--
ALTER TABLE `iprofile__settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `iprofile__user_department`
--
ALTER TABLE `iprofile__user_department`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `media__files`
--
ALTER TABLE `media__files`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `media__imageables`
--
ALTER TABLE `media__imageables`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=272;

--
-- AUTO_INCREMENT for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;

--
-- AUTO_INCREMENT for table `menu__menus`
--
ALTER TABLE `menu__menus`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=212;

--
-- AUTO_INCREMENT for table `oauth_clients`
--
ALTER TABLE `oauth_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `oauth_personal_access_clients`
--
ALTER TABLE `oauth_personal_access_clients`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `page__pages`
--
ALTER TABLE `page__pages`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `persistences`
--
ALTER TABLE `persistences`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4322;

--
-- AUTO_INCREMENT for table `reminders`
--
ALTER TABLE `reminders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `revisions`
--
ALTER TABLE `revisions`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `roles`
--
ALTER TABLE `roles`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `setting__settings`
--
ALTER TABLE `setting__settings`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=180;

--
-- AUTO_INCREMENT for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `slider__sliders`
--
ALTER TABLE `slider__sliders`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `slider__slides`
--
ALTER TABLE `slider__slides`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `slider__slide_translations`
--
ALTER TABLE `slider__slide_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tag__tagged`
--
ALTER TABLE `tag__tagged`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tag__tags`
--
ALTER TABLE `tag__tags`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `throttle`
--
ALTER TABLE `throttle`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=100;

--
-- AUTO_INCREMENT for table `translation__translations`
--
ALTER TABLE `translation__translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `user_tokens`
--
ALTER TABLE `user_tokens`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `dashboard__widgets`
--
ALTER TABLE `dashboard__widgets`
  ADD CONSTRAINT `dashboard__widgets_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iblog__category_translations`
--
ALTER TABLE `iblog__category_translations`
  ADD CONSTRAINT `iblog__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iblog__categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iblog__posts`
--
ALTER TABLE `iblog__posts`
  ADD CONSTRAINT `iblog__posts_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iblog__categories` (`id`),
  ADD CONSTRAINT `iblog__posts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `iblog__post_translations`
--
ALTER TABLE `iblog__post_translations`
  ADD CONSTRAINT `iblog__post_translations_post_id_foreign` FOREIGN KEY (`post_id`) REFERENCES `iblog__posts` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__carts`
--
ALTER TABLE `icommerce__carts`
  ADD CONSTRAINT `icommerce__carts_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `icommerce__cart_product`
--
ALTER TABLE `icommerce__cart_product`
  ADD CONSTRAINT `icommerce__cart_product_cart_id_foreign` FOREIGN KEY (`cart_id`) REFERENCES `icommerce__carts` (`id`),
  ADD CONSTRAINT `icommerce__cart_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`);

--
-- Constraints for table `icommerce__cart_product_options`
--
ALTER TABLE `icommerce__cart_product_options`
  ADD CONSTRAINT `icommerce__cart_product_options_cart_product_id_foreign` FOREIGN KEY (`cart_product_id`) REFERENCES `icommerce__cart_product` (`id`),
  ADD CONSTRAINT `icommerce__cart_product_options_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`),
  ADD CONSTRAINT `icommerce__cart_product_options_product_option_value_id_foreign` FOREIGN KEY (`product_option_value_id`) REFERENCES `icommerce__product_option_value` (`id`);

--
-- Constraints for table `icommerce__category_translations`
--
ALTER TABLE `icommerce__category_translations`
  ADD CONSTRAINT `icommerce__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__coupons`
--
ALTER TABLE `icommerce__coupons`
  ADD CONSTRAINT `icommerce__coupons_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `icommerce__coupon_category`
--
ALTER TABLE `icommerce__coupon_category`
  ADD CONSTRAINT `icommerce__coupon_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`),
  ADD CONSTRAINT `icommerce__coupon_category_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`);

--
-- Constraints for table `icommerce__coupon_order_history`
--
ALTER TABLE `icommerce__coupon_order_history`
  ADD CONSTRAINT `icommerce__coupon_order_history_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`),
  ADD CONSTRAINT `icommerce__coupon_order_history_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `icommerce__coupon_order_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`);

--
-- Constraints for table `icommerce__coupon_product`
--
ALTER TABLE `icommerce__coupon_product`
  ADD CONSTRAINT `icommerce__coupon_product_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`),
  ADD CONSTRAINT `icommerce__coupon_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`);

--
-- Constraints for table `icommerce__coupon_translations`
--
ALTER TABLE `icommerce__coupon_translations`
  ADD CONSTRAINT `icommerce__coupon_translations_coupon_id_foreign` FOREIGN KEY (`coupon_id`) REFERENCES `icommerce__coupons` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__currency_translations`
--
ALTER TABLE `icommerce__currency_translations`
  ADD CONSTRAINT `icommerce__currency_translations_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `icommerce__currencies` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__item_type_translations`
--
ALTER TABLE `icommerce__item_type_translations`
  ADD CONSTRAINT `icommerce__item_type_translations_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `icommerce__item_types` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__manufacturer_trans`
--
ALTER TABLE `icommerce__manufacturer_trans`
  ADD CONSTRAINT `icommerce__manufacturer_trans_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `icommerce__manufacturers` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__option_translations`
--
ALTER TABLE `icommerce__option_translations`
  ADD CONSTRAINT `icommerce__option_translations_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__option_values`
--
ALTER TABLE `icommerce__option_values`
  ADD CONSTRAINT `icommerce__option_values_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__option_value_trans`
--
ALTER TABLE `icommerce__option_value_trans`
  ADD CONSTRAINT `icommerce__option_value_trans_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__orders`
--
ALTER TABLE `icommerce__orders`
  ADD CONSTRAINT `icommerce__orders_added_by_id_foreign` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `icommerce__orders_currency_id_foreign` FOREIGN KEY (`currency_id`) REFERENCES `icommerce__currencies` (`id`),
  ADD CONSTRAINT `icommerce__orders_customer_id_foreign` FOREIGN KEY (`customer_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `icommerce__orders_status_id_foreign` FOREIGN KEY (`status_id`) REFERENCES `icommerce__order_statuses` (`id`);

--
-- Constraints for table `icommerce__order_item`
--
ALTER TABLE `icommerce__order_item`
  ADD CONSTRAINT `icommerce__order_item_item_type_id_foreign` FOREIGN KEY (`item_type_id`) REFERENCES `icommerce__item_types` (`id`),
  ADD CONSTRAINT `icommerce__order_item_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  ADD CONSTRAINT `icommerce__order_item_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`);

--
-- Constraints for table `icommerce__order_options`
--
ALTER TABLE `icommerce__order_options`
  ADD CONSTRAINT `icommerce__order_options_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  ADD CONSTRAINT `icommerce__order_options_order_item_id_foreign` FOREIGN KEY (`order_item_id`) REFERENCES `icommerce__order_item` (`id`);

--
-- Constraints for table `icommerce__order_status_history`
--
ALTER TABLE `icommerce__order_status_history`
  ADD CONSTRAINT `icommerce__order_status_history_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`);

--
-- Constraints for table `icommerce__order_status_trans`
--
ALTER TABLE `icommerce__order_status_trans`
  ADD CONSTRAINT `icommerce__order_status_trans_order_status_id_foreign` FOREIGN KEY (`order_status_id`) REFERENCES `icommerce__order_statuses` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__payment_methods_geozones`
--
ALTER TABLE `icommerce__payment_methods_geozones`
  ADD CONSTRAINT `icommerce__payment_methods_geozones_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`),
  ADD CONSTRAINT `icommerce__payment_methods_geozones_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`);

--
-- Constraints for table `icommerce__payment_method_translations`
--
ALTER TABLE `icommerce__payment_method_translations`
  ADD CONSTRAINT `icommerce__payment_method_translations_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__price_list_translations`
--
ALTER TABLE `icommerce__price_list_translations`
  ADD CONSTRAINT `icommerce__price_list_translations_price_list_id_foreign` FOREIGN KEY (`price_list_id`) REFERENCES `icommerce__price_lists` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__products`
--
ALTER TABLE `icommerce__products`
  ADD CONSTRAINT `icommerce__products_added_by_id_foreign` FOREIGN KEY (`added_by_id`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `icommerce__products_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`),
  ADD CONSTRAINT `icommerce__products_manufacturer_id_foreign` FOREIGN KEY (`manufacturer_id`) REFERENCES `icommerce__manufacturers` (`id`),
  ADD CONSTRAINT `icommerce__products_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`);

--
-- Constraints for table `icommerce__product_category`
--
ALTER TABLE `icommerce__product_category`
  ADD CONSTRAINT `icommerce__product_category_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `icommerce__categories` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `icommerce__product_category_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `icommerce__product_discounts`
--
ALTER TABLE `icommerce__product_discounts`
  ADD CONSTRAINT `icommerce__product_discounts_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_discounts_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_discounts_product_option_value_id_foreign` FOREIGN KEY (`product_option_value_id`) REFERENCES `icommerce__product_option_value` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__product_lists`
--
ALTER TABLE `icommerce__product_lists`
  ADD CONSTRAINT `icommerce__product_lists_price_list_id_foreign` FOREIGN KEY (`price_list_id`) REFERENCES `icommerce__price_lists` (`id`),
  ADD CONSTRAINT `icommerce__product_lists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`);

--
-- Constraints for table `icommerce__product_option`
--
ALTER TABLE `icommerce__product_option`
  ADD CONSTRAINT `icommerce__product_option_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_option_parent_option_value_id_foreign` FOREIGN KEY (`parent_option_value_id`) REFERENCES `icommerce__option_values` (`id`),
  ADD CONSTRAINT `icommerce__product_option_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__product_option_value`
--
ALTER TABLE `icommerce__product_option_value`
  ADD CONSTRAINT `icommerce__product_option_value_option_id_foreign` FOREIGN KEY (`option_id`) REFERENCES `icommerce__options` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_option_value_option_value_id_foreign` FOREIGN KEY (`option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_option_value_parent_option_value_id_foreign` FOREIGN KEY (`parent_option_value_id`) REFERENCES `icommerce__option_values` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_option_value_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `icommerce__product_option_value_product_option_id_foreign` FOREIGN KEY (`product_option_id`) REFERENCES `icommerce__product_option` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__product_tag`
--
ALTER TABLE `icommerce__product_tag`
  ADD CONSTRAINT `icommerce__product_tag_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`),
  ADD CONSTRAINT `icommerce__product_tag_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `icommerce__tags` (`id`);

--
-- Constraints for table `icommerce__product_translations`
--
ALTER TABLE `icommerce__product_translations`
  ADD CONSTRAINT `icommerce__product_translations_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__related_product`
--
ALTER TABLE `icommerce__related_product`
  ADD CONSTRAINT `icommerce__related_product_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `icommerce__related_product_related_id_foreign` FOREIGN KEY (`related_id`) REFERENCES `icommerce__products` (`id`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `icommerce__shipping_methods_geozones`
--
ALTER TABLE `icommerce__shipping_methods_geozones`
  ADD CONSTRAINT `icommerce__shipping_methods_geozones_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`),
  ADD CONSTRAINT `icommerce__shipping_methods_geozones_shipping_method_id_foreign` FOREIGN KEY (`shipping_method_id`) REFERENCES `icommerce__shipping_methods` (`id`);

--
-- Constraints for table `icommerce__shipping_method_translations`
--
ALTER TABLE `icommerce__shipping_method_translations`
  ADD CONSTRAINT `sm_id_foreing` FOREIGN KEY (`shipping_method_id`) REFERENCES `icommerce__shipping_methods` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__tag_translations`
--
ALTER TABLE `icommerce__tag_translations`
  ADD CONSTRAINT `icommerce__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `icommerce__tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__tax_class_rate`
--
ALTER TABLE `icommerce__tax_class_rate`
  ADD CONSTRAINT `icommerce__tax_class_rate_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`),
  ADD CONSTRAINT `icommerce__tax_class_rate_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `icommerce__tax_rates` (`id`);

--
-- Constraints for table `icommerce__tax_class_translations`
--
ALTER TABLE `icommerce__tax_class_translations`
  ADD CONSTRAINT `icommerce__tax_class_translations_tax_class_id_foreign` FOREIGN KEY (`tax_class_id`) REFERENCES `icommerce__tax_classes` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__tax_rates`
--
ALTER TABLE `icommerce__tax_rates`
  ADD CONSTRAINT `icommerce__tax_rates_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`);

--
-- Constraints for table `icommerce__tax_rate_translations`
--
ALTER TABLE `icommerce__tax_rate_translations`
  ADD CONSTRAINT `icommerce__tax_rate_translations_tax_rate_id_foreign` FOREIGN KEY (`tax_rate_id`) REFERENCES `icommerce__tax_rates` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `icommerce__transactions`
--
ALTER TABLE `icommerce__transactions`
  ADD CONSTRAINT `icommerce__transactions_order_id_foreign` FOREIGN KEY (`order_id`) REFERENCES `icommerce__orders` (`id`),
  ADD CONSTRAINT `icommerce__transactions_payment_method_id_foreign` FOREIGN KEY (`payment_method_id`) REFERENCES `icommerce__payment_methods` (`id`);

--
-- Constraints for table `icommerce__wishlists`
--
ALTER TABLE `icommerce__wishlists`
  ADD CONSTRAINT `icommerce__wishlists_product_id_foreign` FOREIGN KEY (`product_id`) REFERENCES `icommerce__products` (`id`),
  ADD CONSTRAINT `icommerce__wishlists_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `iforms__fields`
--
ALTER TABLE `iforms__fields`
  ADD CONSTRAINT `iforms__fields_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `iforms__forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iforms__field_translations`
--
ALTER TABLE `iforms__field_translations`
  ADD CONSTRAINT `iforms__field_translations_field_id_foreign` FOREIGN KEY (`field_id`) REFERENCES `iforms__fields` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iforms__forms`
--
ALTER TABLE `iforms__forms`
  ADD CONSTRAINT `iforms__forms_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iforms__form_translations`
--
ALTER TABLE `iforms__form_translations`
  ADD CONSTRAINT `iforms__form_translations_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `iforms__forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iforms__leads`
--
ALTER TABLE `iforms__leads`
  ADD CONSTRAINT `iforms__leads_form_id_foreign` FOREIGN KEY (`form_id`) REFERENCES `iforms__forms` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__cities`
--
ALTER TABLE `ilocations__cities`
  ADD CONSTRAINT `ilocations__cities_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ilocations__cities_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__city_translations`
--
ALTER TABLE `ilocations__city_translations`
  ADD CONSTRAINT `ilocations__city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `ilocations__cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__country_translations`
--
ALTER TABLE `ilocations__country_translations`
  ADD CONSTRAINT `ilocations__country_translations_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__geozones_countries_provinces`
--
ALTER TABLE `ilocations__geozones_countries_provinces`
  ADD CONSTRAINT `ilocations__geozones_countries_provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ilocations__geozones_countries_provinces_geozone_id_foreign` FOREIGN KEY (`geozone_id`) REFERENCES `ilocations__geozones` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `ilocations__geozones_countries_provinces_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__provinces`
--
ALTER TABLE `ilocations__provinces`
  ADD CONSTRAINT `ilocations__provinces_country_id_foreign` FOREIGN KEY (`country_id`) REFERENCES `ilocations__countries` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `ilocations__province_translations`
--
ALTER TABLE `ilocations__province_translations`
  ADD CONSTRAINT `ilocations__province_translations_province_id_foreign` FOREIGN KEY (`province_id`) REFERENCES `ilocations__provinces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__category_translations`
--
ALTER TABLE `iplaces__category_translations`
  ADD CONSTRAINT `iplaces__category_translations_category_id_foreign` FOREIGN KEY (`category_id`) REFERENCES `iplaces__categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__city_translations`
--
ALTER TABLE `iplaces__city_translations`
  ADD CONSTRAINT `iplaces__city_translations_city_id_foreign` FOREIGN KEY (`city_id`) REFERENCES `iplaces__cities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__places`
--
ALTER TABLE `iplaces__places`
  ADD CONSTRAINT `iplaces__places_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`);

--
-- Constraints for table `iplaces__place_translations`
--
ALTER TABLE `iplaces__place_translations`
  ADD CONSTRAINT `iplaces__place_translations_place_id_foreign` FOREIGN KEY (`place_id`) REFERENCES `iplaces__places` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__schedule_translations`
--
ALTER TABLE `iplaces__schedule_translations`
  ADD CONSTRAINT `iplaces__schedule_translations_schedule_id_foreign` FOREIGN KEY (`schedule_id`) REFERENCES `iplaces__schedules` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__service_translations`
--
ALTER TABLE `iplaces__service_translations`
  ADD CONSTRAINT `iplaces__service_translations_service_id_foreign` FOREIGN KEY (`service_id`) REFERENCES `iplaces__services` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__space_translations`
--
ALTER TABLE `iplaces__space_translations`
  ADD CONSTRAINT `iplaces__space_translations_space_id_foreign` FOREIGN KEY (`space_id`) REFERENCES `iplaces__spaces` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iplaces__zone_translations`
--
ALTER TABLE `iplaces__zone_translations`
  ADD CONSTRAINT `iplaces__zone_translations_zone_id_foreign` FOREIGN KEY (`zone_id`) REFERENCES `iplaces__zones` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iprofile__addresses`
--
ALTER TABLE `iprofile__addresses`
  ADD CONSTRAINT `iprofile__addresses_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iprofile__fields`
--
ALTER TABLE `iprofile__fields`
  ADD CONSTRAINT `iprofile__fields_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `iprofile__user_department`
--
ALTER TABLE `iprofile__user_department`
  ADD CONSTRAINT `iprofile__user_department_department_id_foreign` FOREIGN KEY (`department_id`) REFERENCES `iprofile__departments` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `iprofile__user_department_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `media__file_translations`
--
ALTER TABLE `media__file_translations`
  ADD CONSTRAINT `media__file_translations_file_id_foreign` FOREIGN KEY (`file_id`) REFERENCES `media__files` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitems`
--
ALTER TABLE `menu__menuitems`
  ADD CONSTRAINT `menu__menuitems_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menuitem_translations`
--
ALTER TABLE `menu__menuitem_translations`
  ADD CONSTRAINT `menu__menuitem_translations_menuitem_id_foreign` FOREIGN KEY (`menuitem_id`) REFERENCES `menu__menuitems` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `menu__menu_translations`
--
ALTER TABLE `menu__menu_translations`
  ADD CONSTRAINT `menu__menu_translations_menu_id_foreign` FOREIGN KEY (`menu_id`) REFERENCES `menu__menus` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `page__page_translations`
--
ALTER TABLE `page__page_translations`
  ADD CONSTRAINT `page__page_translations_page_id_foreign` FOREIGN KEY (`page_id`) REFERENCES `page__pages` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `setting__setting_translations`
--
ALTER TABLE `setting__setting_translations`
  ADD CONSTRAINT `setting__setting_translations_setting_id_foreign` FOREIGN KEY (`setting_id`) REFERENCES `setting__settings` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `tag__tag_translations`
--
ALTER TABLE `tag__tag_translations`
  ADD CONSTRAINT `tag__tag_translations_tag_id_foreign` FOREIGN KEY (`tag_id`) REFERENCES `tag__tags` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `translation__translation_translations`
--
ALTER TABLE `translation__translation_translations`
  ADD CONSTRAINT `translation__translation_translations_translation_id_foreign` FOREIGN KEY (`translation_id`) REFERENCES `translation__translations` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
